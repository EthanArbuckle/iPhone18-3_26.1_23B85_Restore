uint64_t playercoordinator_RemoveFromPlayQueue(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    v5 = DerivedStorage;
    if (*DerivedStorage)
    {
      playercoordinator_RemoveFromPlayQueue_cold_1(&v9);
      return v9;
    }

    else
    {
      v6 = *(DerivedStorage + 8);
      if (v6)
      {
        if (a2)
        {
          a2 = *(CMBaseObjectGetDerivedStorage() + 8);
          v6 = *(v5 + 8);
        }

        v7 = *(*(CMBaseObjectGetVTable() + 16) + 24);
        if (v7)
        {

          return v7(v6, a2);
        }

        else
        {
          return 4294954514;
        }
      }

      else
      {
        playercoordinator_RemoveFromPlayQueue_cold_2(&v10);
        return v10;
      }
    }
  }

  else
  {
    playercoordinator_RemoveFromPlayQueue_cold_3(&v11);
    return v11;
  }
}

uint64_t playercoordinator_CopyPlayQueueItem(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (!a1)
  {
    playercoordinator_CopyPlayQueueItem_cold_4(&v15);
    return v15;
  }

  v7 = DerivedStorage;
  if (*DerivedStorage)
  {
    playercoordinator_CopyPlayQueueItem_cold_1(&v15);
    goto LABEL_20;
  }

  v8 = *(DerivedStorage + 8);
  if (!v8)
  {
    playercoordinator_CopyPlayQueueItem_cold_3(&v15);
    goto LABEL_20;
  }

  if (a2)
  {
    a2 = *(CMBaseObjectGetDerivedStorage() + 8);
    v8 = *(v7 + 8);
  }

  v9 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v9)
  {
    v12 = 4294954514;
    goto LABEL_14;
  }

  v10 = v9(v8, a2, &cf);
  if (!v10)
  {
    if (cf)
    {
      v11 = FigCFWeakReferenceTableCopyValue();
      if (!v11)
      {
        playercoordinator_CopyPlayQueueItem_cold_2(&v15);
LABEL_20:
        v12 = v15;
        goto LABEL_14;
      }
    }

    else
    {
      v11 = 0;
    }

    v12 = 0;
    *a3 = v11;
    goto LABEL_14;
  }

  v12 = v10;
LABEL_14:
  if (cf)
  {
    CFRelease(cf);
  }

  return v12;
}

uint64_t playercoordinator_SetRate(uint64_t a1, float a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    if (*DerivedStorage)
    {
      playercoordinator_SetRate_cold_1(&v9);
      return v9;
    }

    else
    {
      v5 = *(DerivedStorage + 8);
      if (v5)
      {
        v6 = *(*(CMBaseObjectGetVTable() + 16) + 40);
        if (v6)
        {
          v7.n128_f32[0] = a2;

          return v6(v5, v7);
        }

        else
        {
          return 4294954514;
        }
      }

      else
      {
        playercoordinator_SetRate_cold_2(&v10);
        return v10;
      }
    }
  }

  else
  {
    playercoordinator_SetRate_cold_3(&v11);
    return v11;
  }
}

uint64_t playercoordinator_GetRate(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    if (*DerivedStorage)
    {
      playercoordinator_GetRate_cold_1(&v8);
      return v8;
    }

    else
    {
      v5 = *(DerivedStorage + 8);
      if (v5)
      {
        v6 = *(*(CMBaseObjectGetVTable() + 16) + 48);
        if (v6)
        {

          return v6(v5, a2);
        }

        else
        {
          return 4294954514;
        }
      }

      else
      {
        playercoordinator_GetRate_cold_2(&v9);
        return v9;
      }
    }
  }

  else
  {
    playercoordinator_GetRate_cold_3(&v10);
    return v10;
  }
}

uint64_t playercoordinator_SetRateWithFade(uint64_t a1, __int128 *a2, float a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a1)
  {
    playercoordinator_SetRateWithFade_cold_3(&v12);
    return v12;
  }

  if (*DerivedStorage)
  {
    playercoordinator_SetRateWithFade_cold_1(&v12);
    return v12;
  }

  v7 = *(DerivedStorage + 8);
  if (!v7)
  {
    playercoordinator_SetRateWithFade_cold_2(&v12);
    return v12;
  }

  v10 = *a2;
  v11 = *(a2 + 2);
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v8)
  {
    return 4294954514;
  }

  v12 = v10;
  v13 = v11;
  return v8(v7, &v12, a3);
}

uint64_t playercoordinator_StartPreroll(uint64_t a1, uint64_t a2, float a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    if (*DerivedStorage)
    {
      playercoordinator_StartPreroll_cold_1(&v11);
      return v11;
    }

    else
    {
      v7 = *(DerivedStorage + 8);
      if (v7)
      {
        v8 = *(*(CMBaseObjectGetVTable() + 16) + 64);
        if (v8)
        {
          v9.n128_f32[0] = a3;

          return v8(v7, a2, v9);
        }

        else
        {
          return 4294954514;
        }
      }

      else
      {
        playercoordinator_StartPreroll_cold_2(&v12);
        return v12;
      }
    }
  }

  else
  {
    playercoordinator_StartPreroll_cold_3(&v13);
    return v13;
  }
}

uint64_t playercoordinator_StepByCount(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    if (*DerivedStorage)
    {
      playercoordinator_StepByCount_cold_1(&v8);
      return v8;
    }

    else
    {
      v5 = *(DerivedStorage + 8);
      if (v5)
      {
        v6 = *(*(CMBaseObjectGetVTable() + 16) + 72);
        if (v6)
        {

          return v6(v5, a2);
        }

        else
        {
          return 4294954514;
        }
      }

      else
      {
        playercoordinator_StepByCount_cold_2(&v9);
        return v9;
      }
    }
  }

  else
  {
    playercoordinator_StepByCount_cold_3(&v10);
    return v10;
  }
}

uint64_t playercoordinator_SetRateAndAnchorTime(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4, float a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a1)
  {
    playercoordinator_SetRateAndAnchorTime_cold_3(&v20);
    return v20;
  }

  if (*DerivedStorage)
  {
    playercoordinator_SetRateAndAnchorTime_cold_1(&v20);
    return v20;
  }

  v11 = *(DerivedStorage + 8);
  if (!v11)
  {
    playercoordinator_SetRateAndAnchorTime_cold_2(&v20);
    return v20;
  }

  v16 = *a2;
  v17 = *(a2 + 2);
  v14 = *a3;
  v15 = *(a3 + 2);
  v12 = *(*(CMBaseObjectGetVTable() + 16) + 88);
  if (!v12)
  {
    return 4294954514;
  }

  v20 = v16;
  v21 = v17;
  v18 = v14;
  v19 = v15;
  return v12(v11, &v20, &v18, a4, a5);
}

uint64_t playercoordinator_SetRateWithOptions(uint64_t a1, uint64_t a2, float a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    if (*DerivedStorage)
    {
      playercoordinator_SetRateWithOptions_cold_1(&v11);
      return v11;
    }

    else
    {
      v7 = *(DerivedStorage + 8);
      if (v7)
      {
        v8 = *(*(CMBaseObjectGetVTable() + 16) + 104);
        if (v8)
        {
          v9.n128_f32[0] = a3;

          return v8(v7, a2, v9);
        }

        else
        {
          return 4294954514;
        }
      }

      else
      {
        playercoordinator_SetRateWithOptions_cold_2(&v12);
        return v12;
      }
    }
  }

  else
  {
    playercoordinator_SetRateWithOptions_cold_3(&v13);
    return v13;
  }
}

uint64_t playercoordinator_SetProperties(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    if (*DerivedStorage)
    {
      playercoordinator_SetProperties_cold_1(&v9);
      return v9;
    }

    else
    {
      v7 = *(DerivedStorage + 8);
      if (v7)
      {

        return FPSupport_HandlePlayerSetPropertiesAndForwardToSubPlayer(a1, v7, 0, playercoordinator_handleSetProperty, a2, a3);
      }

      else
      {
        playercoordinator_SetProperties_cold_2(&v10);
        return v10;
      }
    }
  }

  else
  {
    playercoordinator_SetProperties_cold_3(&v11);
    return v11;
  }
}

uint64_t playercoordinator_ReevaluateRouteConfiguration(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    if (*DerivedStorage)
    {
      playercoordinator_ReevaluateRouteConfiguration_cold_1(&v7);
      return v7;
    }

    else
    {
      v5 = *(DerivedStorage + 8);
      if (v5)
      {

        return FigPlayerReevaluateRouteConfigurationForReason(v5, a2, @" -> coordinated sub-player");
      }

      else
      {
        playercoordinator_ReevaluateRouteConfiguration_cold_2(&v8);
        return v8;
      }
    }
  }

  else
  {
    playercoordinator_ReevaluateRouteConfiguration_cold_3(&v9);
    return v9;
  }
}

uint64_t playercoordinator_AddExternalStartupTask(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    if (*DerivedStorage)
    {
      playercoordinator_AddExternalStartupTask_cold_1(&v8);
      return v8;
    }

    else
    {
      v5 = *(DerivedStorage + 8);
      if (v5)
      {
        v6 = *(*(CMBaseObjectGetVTable() + 16) + 128);
        if (v6)
        {

          return v6(v5, a2);
        }

        else
        {
          return 4294954514;
        }
      }

      else
      {
        playercoordinator_AddExternalStartupTask_cold_2(&v9);
        return v9;
      }
    }
  }

  else
  {
    playercoordinator_AddExternalStartupTask_cold_3(&v10);
    return v10;
  }
}

uint64_t playercoordinator_RemoveExternalStartupTask(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    if (*DerivedStorage)
    {
      playercoordinator_RemoveExternalStartupTask_cold_1(&v8);
      return v8;
    }

    else
    {
      v5 = *(DerivedStorage + 8);
      if (v5)
      {
        v6 = *(*(CMBaseObjectGetVTable() + 16) + 136);
        if (v6)
        {

          return v6(v5, a2);
        }

        else
        {
          return 4294954514;
        }
      }

      else
      {
        playercoordinator_RemoveExternalStartupTask_cold_2(&v9);
        return v9;
      }
    }
  }

  else
  {
    playercoordinator_RemoveExternalStartupTask_cold_3(&v10);
    return v10;
  }
}

uint64_t playercoordinator_CopyDisplayedCVPixelBuffer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    if (*DerivedStorage)
    {
      playercoordinator_CopyDisplayedCVPixelBuffer_cold_1(&v10);
      return v10;
    }

    else
    {
      v7 = *(DerivedStorage + 8);
      if (v7)
      {
        v8 = *(*(CMBaseObjectGetVTable() + 16) + 152);
        if (v8)
        {

          return v8(v7, a2, a3);
        }

        else
        {
          return 4294954514;
        }
      }

      else
      {
        playercoordinator_CopyDisplayedCVPixelBuffer_cold_2(&v11);
        return v11;
      }
    }
  }

  else
  {
    playercoordinator_CopyDisplayedCVPixelBuffer_cold_3(&v12);
    return v12;
  }
}

uint64_t playercoordinator_BeginInterruption(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    if (*DerivedStorage)
    {
      playercoordinator_BeginInterruption_cold_1(&v7);
      return v7;
    }

    else
    {
      v3 = *(DerivedStorage + 8);
      if (v3)
      {
        v4 = *(CMBaseObjectGetVTable() + 24);
        if (v4 && (v5 = *(v4 + 8)) != 0)
        {

          return v5(v3);
        }

        else
        {
          return 4294954514;
        }
      }

      else
      {
        playercoordinator_BeginInterruption_cold_2(&v8);
        return v8;
      }
    }
  }

  else
  {
    playercoordinator_BeginInterruption_cold_3(&v9);
    return v9;
  }
}

uint64_t playercoordinator_EndInterruption(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    if (*DerivedStorage)
    {
      playercoordinator_EndInterruption_cold_1(&v9);
      return v9;
    }

    else
    {
      v5 = *(DerivedStorage + 8);
      if (v5)
      {
        v6 = *(CMBaseObjectGetVTable() + 24);
        if (v6 && (v7 = *(v6 + 16)) != 0)
        {

          return v7(v5, a2);
        }

        else
        {
          return 4294954514;
        }
      }

      else
      {
        playercoordinator_EndInterruption_cold_2(&v10);
        return v10;
      }
    }
  }

  else
  {
    playercoordinator_EndInterruption_cold_3(&v11);
    return v11;
  }
}

uint64_t playercoordinator_SetConnectionActive(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    if (*DerivedStorage)
    {
      playercoordinator_SetConnectionActive_cold_1(&v9);
      return v9;
    }

    else
    {
      v5 = *(DerivedStorage + 8);
      if (v5)
      {
        v6 = *(CMBaseObjectGetVTable() + 24);
        if (v6 && (v7 = *(v6 + 24)) != 0)
        {

          return v7(v5, a2);
        }

        else
        {
          return 4294954514;
        }
      }

      else
      {
        playercoordinator_SetConnectionActive_cold_2(&v10);
        return v10;
      }
    }
  }

  else
  {
    playercoordinator_SetConnectionActive_cold_3(&v11);
    return v11;
  }
}

uint64_t FigMediaRequestCreate(int a1, const void *a2, uint64_t a3, uint64_t a4, const void *a5, const void *a6, const void *a7, const void *a8, CFTypeRef a9, int a10, uint64_t a11, const void *a12, uint64_t a13, const void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19)
{
  v43 = *MEMORY[0x1E69E9840];
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (!a19)
  {
    FigMediaRequestCreate_cold_4(v42);
    return v42[0];
  }

  if (sRegisterFigMediaRequestClassIDOnce != -1)
  {
    FigMediaRequestCreate_cold_1();
  }

  v23 = CMDerivedObjectCreate();
  if (v23)
  {
    return v23;
  }

  Storage = mr_getStorage(0);
  if (a2)
  {
    v25 = CFRetain(a2);
  }

  else
  {
    v25 = 0;
  }

  *(Storage + 16) = v25;
  if (a5)
  {
    v26 = CFRetain(a5);
  }

  else
  {
    v26 = 0;
  }

  *(Storage + 24) = v26;
  if (a6)
  {
    v27 = CFRetain(a6);
  }

  else
  {
    v27 = 0;
  }

  *(Storage + 32) = v27;
  if (a7)
  {
    v28 = CFRetain(a7);
  }

  else
  {
    v28 = 0;
  }

  *(Storage + 40) = v28;
  v29 = a8;
  if (a8)
  {
    v29 = CFRetain(a8);
  }

  *(Storage + 56) = v29;
  if (a9)
  {
    v30 = CFRetain(a9);
  }

  else
  {
    v30 = 0;
  }

  *(Storage + 64) = v30;
  if (a12)
  {
    v31 = CFRetain(a12);
  }

  else
  {
    v31 = 0;
  }

  *(Storage + 72) = v31;
  *(Storage + 80) = a3;
  *(Storage + 88) = a4;
  if (a14)
  {
    v32 = CFRetain(a14);
  }

  else
  {
    v32 = 0;
  }

  *(Storage + 104) = a16;
  *(Storage + 112) = a17;
  *(Storage + 48) = a10;
  *(Storage + 168) = a11;
  *(Storage + 192) = a13;
  *Storage = a15;
  *(Storage + 96) = v32;
  *(Storage + 148) = a18 & 4;
  *(Storage + 149) = a18 & 1;
  *(Storage + 150) = a18 & 2;
  AllocatorForMedia = FigGetAllocatorForMedia();
  Mutable = CFArrayCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9C0]);
  *(Storage + 128) = Mutable;
  if (!Mutable)
  {
    FigMediaRequestCreate_cold_3(v42);
    return v42[0];
  }

  v23 = FigRetainProxyCreate();
  if (v23)
  {
    return v23;
  }

  mr_updateNetworkRequestType(0);
  v35 = FigHTTPSchedulerRetain(0);
  *(Storage + 8) = v35;
  if (!v35)
  {
    FigMediaRequestCreate_cold_2(v42);
    return v42[0];
  }

  if (dword_1EAF17308)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v37 = 0;
  *a19 = 0;
  return v37;
}

uint64_t mr_getStorage(uint64_t a1)
{
  if (!a1 || CMBaseObjectGetVTable() != &kMediaRequest_VTable)
  {
    return 0;
  }

  return CMBaseObjectGetDerivedStorage();
}

uint64_t mr_updateNetworkRequestType(uint64_t a1)
{
  result = mr_getStorage(a1);
  v2 = result;
  if (*(result + 150))
  {
    v3 = 2;
  }

  else
  {
    result = FigCFHTTPIsHTTPBasedURL(*(result + 16));
    if (result)
    {
      v3 = 1;
    }

    else
    {
      result = FigCFHTTPIsDataURL(*(v2 + 16));
      v3 = 1;
      if (!result)
      {
        v3 = 2;
      }
    }
  }

  *(v2 + 152) = v3;
  return result;
}

uint64_t FigMediaRequestDeliverOnceWithCacheCreate(int a1, const void *a2, const void *a3, const void *a4, uint64_t a5, uint64_t a6, const void *a7, const void *a8, const void *a9, uint64_t a10, CFTypeRef a11, int a12, uint64_t a13, const void *a14, const void *a15, const void *a16, uint64_t a17, uint64_t a18, NSObject *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24)
{
  v43 = *MEMORY[0x1E69E9840];
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (a24)
  {
    if (sRegisterFigMediaRequestClassIDOnce != -1)
    {
      FigMediaRequestCreate_cold_1();
    }

    v28 = CMDerivedObjectCreate();
    if (v28)
    {
      return v28;
    }

    Storage = mrdowc_getStorage(0);
    if (a2)
    {
      v30 = CFRetain(a2);
    }

    else
    {
      v30 = 0;
    }

    *(Storage + 8) = v30;
    if (a3)
    {
      v31 = CFRetain(a3);
    }

    else
    {
      v31 = 0;
    }

    *(Storage + 16) = v31;
    if (a4)
    {
      v32 = CFRetain(a4);
    }

    else
    {
      v32 = 0;
    }

    *(Storage + 24) = v32;
    *(Storage + 104) = FigCFWeakReferenceHolderCreateWithReferencedObject();
    *(Storage + 112) = a18;
    *(Storage + 120) = a19;
    if (a19)
    {
      dispatch_retain(a19);
    }

    if (qword_1ED4CAC98 != -1)
    {
      FigMediaRequestDeliverOnceWithCacheCreate_cold_2();
    }

    v33 = _MergedGlobals_66;
    *(Storage + 128) = _MergedGlobals_66;
    if (v33)
    {
      dispatch_retain(v33);
    }

    *Storage = FigReentrantMutexCreate();
    *(Storage + 56) = a23;
    *(Storage + 64) = a6;
    *(Storage + 72) = a21 & 8;
    v34 = a16 ? CFRetain(a16) : 0;
    *(Storage + 80) = v34;
    *(Storage + 32) = a5;
    if (a6 == 2)
    {
      CMNotificationCenterGetDefaultLocalCenter();
      v28 = FigNotificationCenterAddWeakListener();
      if (v28)
      {
        return v28;
      }
    }

    v28 = FigMediaRequestCreate(a1, a2, 0, 0x1FFFFFFFFFFFFFLL, a7, a8, a9, 0, a11, a12, 0, a14, 3, a15, *Storage, a22, a20, a21, (Storage + 40));
    if (v28)
    {
      return v28;
    }

    else
    {
      if (dword_1EAF17308)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v36 = 0;
      *a24 = 0;
    }
  }

  else
  {
    FigMediaRequestDeliverOnceWithCacheCreate_cold_3(v42);
    return v42[0];
  }

  return v36;
}

uint64_t mrdowc_getStorage(uint64_t a1)
{
  if (!a1 || CMBaseObjectGetVTable() != &kMediaRequestDeliverOnceWithCache_VTable)
  {
    return 0;
  }

  return CMBaseObjectGetDerivedStorage();
}

__CFDictionary *FigMediaRequestCreateErrorLogEntry(uint64_t a1, __CFError *a2, int a3, int a4)
{
  Storage = mrdowc_getStorage(a1);
  v8 = mr_getStorage(*(Storage + 40));
  Code = CFErrorGetCode(a2);
  Domain = CFErrorGetDomain(a2);
  v11 = CFErrorCopyDescription(a2);
  v12 = CFErrorCopyUserInfo(a2);
  if (v8)
  {
    AllocatorForMedia = FigGetAllocatorForMedia();
    Entry = FigErrorLogCreateEntry(AllocatorForMedia, *(v8 + 208), *(Storage + 8), 0, Code, Domain, v11, v12, 0, 0, a3, a4, *(v8 + 40));
    if (!v11)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  Entry = 0;
  if (v11)
  {
LABEL_3:
    CFRelease(v11);
  }

LABEL_4:
  if (v12)
  {
    CFRelease(v12);
  }

  return Entry;
}

uint64_t FigMediaRequestCreateForPlaylist(int a1, const void *a2, const void *a3, const void *a4, uint64_t a5, uint64_t a6, const void *a7, const void *a8, const void *a9, uint64_t a10, CFTypeRef a11, int a12, uint64_t a13, const void *a14, const void *a15, const void *a16, uint64_t a17, uint64_t a18, uint64_t a19, NSObject *a20, void *a21)
{
  v34 = *MEMORY[0x1E69E9840];
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (a21)
  {
    result = FigMediaRequestDeliverOnceWithCacheCreate(a1, a2, a3, a4, a5, a6, a7, a8, a9, v27, a11, a12, v28, a14, a15, a16, a17, a19, a20, 20000000000, a18, FigStreamingNetworkErrorGetActionForIndexFileNetworkError, FigMediaRequestCreateForPlaylist_cacheCallbacks, a21);
    if (!result)
    {
      if (dword_1EAF17308)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        return 0;
      }
    }
  }

  else
  {
    FigMediaRequestCreateForPlaylist_cold_1(v33);
    return v33[0];
  }

  return result;
}

BOOL mrp_CopyFromCacheHandler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, unint64_t a6)
{
  if (a4 == 1)
  {
    FigStreamingCacheCopyMasterPlaylist(a2, a5, a6);
  }

  else if (a3 && a4 == 2)
  {
    FigStreamingCacheMediaStreamCopyPlaylist(a2, a3, a5, a6);
  }

  return *a5 != 0;
}

uint64_t mrp_storeInCacheHandler(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, const void *a5, const void *a6)
{
  if (a4 == 1)
  {
    return FigStreamingCacheSetMasterPlaylist(a2, a5, a6);
  }

  if (a3)
  {
    if (a4 == 2)
    {
      return FigStreamingCacheMediaStreamSetPlaylist(a2, a3, a5, a6);
    }
  }

  return result;
}

uint64_t FigMediaRequestCreateForSessionData(int a1, uint64_t a2, const void *a3, uint64_t a4, const void *a5, const void *a6, const void *a7, uint64_t a8, const void *a9, int a10, uint64_t a11, const void *a12, const void *a13, uint64_t a14, uint64_t a15, uint64_t a16, NSObject *a17, void *a18)
{
  v32 = *MEMORY[0x1E69E9840];
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (a18)
  {
    URL = FigSessionDataSpecifierGetURL(a2);
    v23 = FigSessionDataSpecifierGetURL(a2);
    result = FigMediaRequestDeliverOnceWithCacheCreate(a1, URL, v23, a3, 0, a4, a5, a6, a7, v26, a9, a10, v27, a12, a13, 0, a14, a16, a17, 30000000000, a15, FigStreamingNetworkErrorGetActionForSessionDataNetworkError, FigMediaRequestCreateForSessionData_cacheCallbacks, a18);
    if (!result)
    {
      if (dword_1EAF17308)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        return 0;
      }
    }
  }

  else
  {
    FigMediaRequestCreateForSessionData_cold_1(v31);
    return v31[0];
  }

  return result;
}

uint64_t mr_invalidate(const void *a1)
{
  Storage = mr_getStorage(a1);
  if (dword_1EAF17308)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  if (*(Storage + 144) <= 1u)
  {
    *(Storage + 144) = 3;
    mr_clearNetworkRequestState(a1);
    mr_issueDidFailCallback(a1, 0, 8);
  }

  FigSimpleMutexUnlock();
  return 0;
}

uint64_t mr_finalize(uint64_t a1)
{
  Storage = mr_getStorage(a1);
  FigRetainProxyInvalidate();
  v2 = *(Storage + 16);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(Storage + 24);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(Storage + 32);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(Storage + 40);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(Storage + 56);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(Storage + 128);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(Storage + 208);
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = *(Storage + 200);
  if (v9)
  {
    v10 = *(Storage + 72);
    v11 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v11)
    {
      v11(v10, v9);
    }
  }

  v12 = *(Storage + 72);
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = *(Storage + 224);
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = *(Storage + 96);
  if (v14)
  {
    CFRelease(v14);
  }

  v15 = *(Storage + 64);
  if (v15)
  {
    CFRelease(v15);
  }

  v16 = *(Storage + 176);
  if (v16)
  {
    CFRelease(v16);
  }

  v17 = *(Storage + 184);
  if (v17)
  {
    CFRelease(v17);
  }

  ckbutil_cancelAndReleaseTimer((Storage + 136));
  v18 = *(Storage + 232);
  if (v18)
  {
    CFRelease(v18);
  }

  v19 = *(Storage + 8);
  if (v19)
  {
    dispatch_release(v19);
  }

  return FigSimpleMutexDestroy();
}

void mr_issueDidFailCallbackOnCallbackQueue(void *a1)
{
  v2 = *(a1[3] + 8);
  if (v2)
  {
    v2(*a1, a1[1], a1[7], a1[5], a1[6]);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  v3 = a1[1];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[7];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[5];
  if (v5)
  {
    CFRelease(v5);
  }

  MallocZoneForMedia = FigGetMallocZoneForMedia();

  malloc_zone_free(MallocZoneForMedia, a1);
}

uint64_t mr_start(const void *a1)
{
  v43 = *MEMORY[0x1E69E9840];
  Storage = mr_getStorage(a1);
  FigSimpleMutexLock();
  v3 = *(Storage + 152);
  if (v3 != 2)
  {
    if (v3 != 1 || (*(Storage + 192) & 1) == 0)
    {
      goto LABEL_60;
    }

    v4 = &dword_1EAF17000;
    if (a1)
    {
      CMBaseObjectGetVTable();
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v6 = DerivedStorage;
      if (*(DerivedStorage + 88) == 0x1FFFFFFFFFFFFFLL)
      {
        v34 = 0;
        v35 = 0;
      }

      else
      {
        v34 = *(DerivedStorage + 80);
        v35 = *(DerivedStorage + 88);
      }

      *(DerivedStorage + 144) = 1;
      if (dword_1EAF17308)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v14 = *(v6 + 208);
      if (v14)
      {
        CFRelease(v14);
        *(v6 + 208) = 0;
      }

      v15 = *(v6 + 24);
      v16 = CFGetAllocator(a1);
      v17 = *(v6 + 56);
      v18 = *(v6 + 16);
      v32 = *(v6 + 32);
      v33 = *(v6 + 40);
      v19 = *(v6 + 48);
      v20 = *(v6 + 232);
      v21 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v21)
      {
        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        *cf = 0u;
        v22 = v21(v15, v16, v17, v18, 0, v33, v32, v19, cf, v34, v35, mr_memoryRequestCallback, mr_httpReadCallback, v20, v6 + 208, v6 + 216);
        if (!v22)
        {
          v4 = &dword_1EAF17000;
          if (*(v6 + 112) >= 1)
          {
            mr_startTimer(a1);
          }

          v23 = 0;
          goto LABEL_40;
        }

        v23 = v22;
      }

      else
      {
        v23 = 4294954514;
      }

      v4 = &dword_1EAF17000;
    }

    else
    {
      mr_start_cold_1(cf);
      v23 = LODWORD(cf[0]);
    }

LABEL_40:
    if (v4[194])
    {
      v24 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (v23)
    {
      cf[0] = 0;
      FigCreateErrorForOSStatus(v23, cf);
      mr_handleCommonNetworkError(a1, cf[0]);
      if (cf[0])
      {
        CFRelease(cf[0]);
      }
    }

    goto LABEL_60;
  }

  if ((*(Storage + 192) & 2) == 0)
  {
    goto LABEL_60;
  }

  v7 = mr_getStorage(a1);
  *(v7 + 144) = 1;
  FigGetAllocatorForMedia();
  Mutable = FigCustomURLRequestInfoCreateMutable();
  if (Mutable || (Mutable = FigCustomURLRequestInfoSetHTTPHeaders(), Mutable) || (Mutable = FigCustomURLRequestInfoSetNetworkHistory(), Mutable) || (Mutable = FigCustomURLRequestInfoSetExpectedToBlock(), Mutable) || (Mutable = FigCustomURLRequestInfoSetIsSecureStopSupported(), Mutable) || (Mutable = FigCustomURLRequestInfoSetIsRenewalRequest(), Mutable) || (Mutable = FigCustomURLRequestInfoSetIsPingRequest(), Mutable) || (Mutable = FigCustomURLRequestInfoSetAllowedUniversalTypeIdentifiers(), Mutable) || (*(v7 + 49) & 4) != 0 && *(v7 + 168) && (Mutable = FigCustomURLRequestInfoSetDefaultLatency(), Mutable))
  {
    v29 = Mutable;
    v9 = 0;
    goto LABEL_51;
  }

  v9 = FigCFHTTPCreateUserAgent();
  v10 = FigCustomURLRequestInfoSetUserAgent();
  if (!v10)
  {
    if ((*(v7 + 48) & 4) == 0 || (v10 = FigCustomURLRequestInfoSetAcceptEncoding(), !v10))
    {
      if ((v11 = *(v7 + 88), *(v7 + 80) <= 0) && (v11 < 1 || v11 == 0x1FFFFFFFFFFFFFLL) || (v10 = FigCustomURLRequestInfoSetByteRange(), !v10))
      {
        if (dword_1EAF17308)
        {
          v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        if (*(v7 + 112) >= 1)
        {
          mr_startTimer(a1);
        }

        v25 = *(v7 + 72);
        v26 = *(v7 + 232);
        v27 = *(v7 + 8);
        v28 = *(*(CMBaseObjectGetVTable() + 16) + 24);
        if (!v28)
        {
          v29 = 4294954514;
          goto LABEL_51;
        }

        v10 = v28(v25, 0, v26, v27, mr_customURLReadCallback, v7 + 200);
      }
    }
  }

  v29 = v10;
LABEL_51:
  if (dword_1EAF17308)
  {
    v30 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v29)
  {
    cf[0] = 0;
    FigCreateErrorForOSStatus(v29, cf);
    mr_handleCommonNetworkError(a1, cf[0]);
    if (cf[0])
    {
      CFRelease(cf[0]);
    }
  }

  if (v9)
  {
    CFRelease(v9);
  }

LABEL_60:
  FigSimpleMutexUnlock();
  return 0;
}

uint64_t mr_cancel(uint64_t a1, _BYTE *a2)
{
  Storage = mr_getStorage(a1);
  FigSimpleMutexLock();
  if (*(Storage + 144) <= 1u)
  {
    mr_clearNetworkRequestState(a1);
    if (a2)
    {
      *a2 = 1;
    }
  }

  FigSimpleMutexUnlock();
  return 0;
}

uint64_t mr_subscribeToOutput(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, NSObject *a6)
{
  Storage = mr_getStorage(a1);
  FigSimpleMutexLock();
  FigGetAllocatorForMedia();
  v17 = xmmword_1E748B9A0;
  if (mr_outputCallbackDataGetTypeID_once != -1)
  {
    dispatch_once_f(&mr_outputCallbackDataGetTypeID_once, &v17, mrutil_registerClass);
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    Instance[2] = FigCFWeakReferenceHolderCreateWithReferencedObject();
    Instance[3] = a5;
    Instance[4] = a6;
    Instance[5] = a2;
    Instance[6] = a3;
    if (a6)
    {
      dispatch_retain(a6);
    }
  }

  else if ((mr_subscribeToOutput_cold_1(Storage, &v17) & 1) == 0)
  {
    return v17;
  }

  v13 = mr_getStorage(a1);
  LOBYTE(v17) = 0;
  v14 = *(v13 + 224);
  if (!v14 || !CMBlockBufferGetDataLength(v14) || (DataLength = CMBlockBufferGetDataLength(*(v13 + 224)), mr_issueDataOutputCallbackGuts(a1, 0, DataLength, Instance, &v17), !v17))
  {
    CFArrayAppendValue(*(v13 + 128), Instance);
  }

  FigSimpleMutexUnlock();
  if (Instance)
  {
    CFRelease(Instance);
  }

  return 0;
}

void mr_startTimer(uint64_t a1)
{
  v13[16] = *MEMORY[0x1E69E9840];
  Storage = mr_getStorage(a1);
  if (!a1)
  {
    mr_startTimer_cold_3();
    return;
  }

  v3 = Storage;
  ckbutil_cancelAndReleaseTimer((Storage + 136));
  v4 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  v5 = v3[14];
  v6 = v3[1];
  v13[0] = 0;
  if (v6)
  {
    v7 = v4;
    v8 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v6);
    v13[0] = v8;
    if (v8)
    {
      v9 = v8;
      if (v7)
      {
        dispatch_set_context(v8, v7);
      }

      dispatch_source_set_event_handler_f(v9, mr_timerEventHandler);
      dispatch_set_finalizer_f(v9, mr_timerFinalizer);
      v10 = dispatch_time(0, v5);
      dispatch_source_set_timer(v9, v10, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
      dispatch_resume(v9);
      v3[17] = v9;
      goto LABEL_7;
    }

    mr_startTimer_cold_1(&v12);
  }

  else
  {
    mr_startTimer_cold_2(&v12);
  }

  if (v12)
  {
    ckbutil_cancelAndReleaseTimer(v13);
    return;
  }

LABEL_7:
  if (dword_1EAF17308)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

void mr_handleCommonNetworkError(const void *a1, const void *a2)
{
  Storage = mr_getStorage(a1);
  v9 = 0;
  v10 = 0;
  if (*(Storage + 122))
  {
    v7 = 7;
LABEL_15:
    v10 = v7;
LABEL_19:
    mr_issueDidFailCallback(a1, a2, v7);
    return;
  }

  v5 = Storage;
  v6 = *(Storage + 104);
  if (!v6)
  {
    return;
  }

  v6(a2, (*(Storage + 149) != 0) | (2 * (*(Storage + 152) == 2)) | (4 * (*(Storage + 148) != 0)), &v10, &v9);
  if (FigCFHTTPIsDataURL(*(v5 + 16)) && *(v5 + 152) == 1)
  {
    v10 = 1;
LABEL_11:
    *(v5 + 152) = 2;
    goto LABEL_12;
  }

  v7 = v10;
  if (v10 == 1)
  {
    goto LABEL_11;
  }

  if (v10 != 3)
  {
    *(v5 + 144) = 3;
    if (v7 != 2)
    {
      goto LABEL_19;
    }

    v7 = 6;
    goto LABEL_15;
  }

  if (*(v5 + 120) || (v8 = *(v5 + 160), *(v5 + 160) = v8 + 1, v8 > 2))
  {
    v7 = 3;
    *(v5 + 144) = 3;
    goto LABEL_19;
  }

  mr_updateNetworkRequestType(a1);
LABEL_12:
  mr_retryRequest(a1);
}

uint64_t mr_copyRequestFromRetainProxy(uint64_t a1, void *a2)
{
  if (a1)
  {
    if (a2)
    {
      FigRetainProxyLockMutex();
      if (FigRetainProxyIsInvalidated())
      {
        mr_copyRequestFromRetainProxy_cold_1(&v6);
        v4 = v6;
      }

      else
      {
        Owner = FigRetainProxyGetOwner();
        if (Owner)
        {
          Owner = CFRetain(Owner);
        }

        v4 = 0;
        *a2 = Owner;
      }
    }

    else
    {
      mr_copyRequestFromRetainProxy_cold_2(&v7);
      v4 = v7;
    }
  }

  else
  {
    mr_copyRequestFromRetainProxy_cold_3(&v8);
    v4 = v8;
  }

  FigRetainProxyUnlockMutex();
  return v4;
}

void mr_issueDataOutputCallbackAsync(const void *a1, const void *a2, const void *a3, uint64_t a4, char a5, char a6, const void *a7, const void *a8, const void *a9, NSObject *a10)
{
  MallocZoneForMedia = FigGetMallocZoneForMedia();
  v19 = malloc_type_zone_calloc(MallocZoneForMedia, 1uLL, 0x50uLL, 0x10E0040CBF5CB4EuLL);
  if (v19)
  {
    v20 = v19;
    if (a1)
    {
      v21 = CFRetain(a1);
    }

    else
    {
      v21 = 0;
    }

    *v20 = v21;
    if (a2)
    {
      v22 = CFRetain(a2);
    }

    else
    {
      v22 = 0;
    }

    v20[1] = v22;
    if (a3)
    {
      v23 = CFRetain(a3);
    }

    else
    {
      v23 = 0;
    }

    v20[2] = v23;
    v20[3] = a4;
    *(v20 + 32) = a5;
    *(v20 + 33) = a6;
    if (a7)
    {
      v24 = CFRetain(a7);
    }

    else
    {
      v24 = 0;
    }

    v20[7] = v24;
    if (a8)
    {
      v25 = CFRetain(a8);
    }

    else
    {
      v25 = 0;
    }

    v20[8] = v25;
    if (a9)
    {
      v26 = CFRetain(a9);
    }

    else
    {
      v26 = 0;
    }

    v20[9] = v26;

    dispatch_async_f(a10, v20, mr_issueDataOutputCallbackOnCallbackQueue);
  }

  else
  {
    mr_issueDataOutputCallbackAsync_cold_1();
  }
}

void mr_issueDataOutputCallbackOnCallbackQueue(uint64_t a1)
{
  v2 = **(a1 + 24);
  if (v2)
  {
    v2(*a1, *(a1 + 8), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 16), *(a1 + 32), *(a1 + 33));
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 56);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(a1 + 64);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(a1 + 72);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    CFRelease(v8);
  }

  MallocZoneForMedia = FigGetMallocZoneForMedia();

  malloc_zone_free(MallocZoneForMedia, a1);
}

void mr_timerFinalizer(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t mr_retryRequest(uint64_t a1)
{
  Storage = mr_getStorage(a1);
  *(Storage + 216) = 0;
  v3 = *(Storage + 208);
  if (v3)
  {
    CFRelease(v3);
    *(Storage + 208) = 0;
  }

  *(Storage + 200) = 0;
  *(Storage + 144) = 0;
  DataLength = CMBlockBufferGetDataLength(*(Storage + 224));
  v5 = mr_getStorage(a1);
  v6 = *(v5 + 88);
  if (v6 == 0x1FFFFFFFFFFFFFLL)
  {
    v7 = 0x1FFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v6 - DataLength;
  }

  *(v5 + 88) = v7;

  return mr_start(a1);
}

void mr_outputCallbackDataFinalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {

    dispatch_release(v3);
  }
}

uint64_t mrutil_registerClass(uint64_t a1)
{
  result = _CFRuntimeRegisterClass();
  **(a1 + 8) = result;
  return result;
}

uint64_t RegisterFigMediaRequestSource()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t mrdowc_invalidate(uint64_t a1)
{
  Storage = mrdowc_getStorage(a1);
  if (dword_1EAF17308)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  if (*(Storage + 96) <= 1u)
  {
    *(Storage + 96) = 3;
    v3 = *(Storage + 40);
    if (v3)
    {
      v4 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v4)
      {
        v4(v3);
      }
    }
  }

  FigSimpleMutexUnlock();
  return 0;
}

void mrdowc_finalize(uint64_t a1)
{
  Storage = mrdowc_getStorage(a1);
  if (Storage[8] == 2)
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
  }

  v2 = Storage[5];
  if (v2)
  {
    CFRelease(v2);
    Storage[5] = 0;
  }

  v3 = Storage[3];
  if (v3)
  {
    CFRelease(v3);
    Storage[3] = 0;
  }

  v4 = Storage[1];
  if (v4)
  {
    CFRelease(v4);
    Storage[1] = 0;
  }

  v5 = Storage[2];
  if (v5)
  {
    CFRelease(v5);
    Storage[2] = 0;
  }

  v6 = Storage[6];
  if (v6)
  {
    CFRelease(v6);
    Storage[6] = 0;
  }

  v7 = Storage[13];
  if (v7)
  {
    CFRelease(v7);
    Storage[13] = 0;
  }

  v8 = Storage[10];
  if (v8)
  {
    CFRelease(v8);
    Storage[10] = 0;
  }

  v9 = Storage[11];
  if (v9)
  {
    CFRelease(v9);
    Storage[11] = 0;
  }

  v10 = Storage[15];
  if (v10)
  {
    dispatch_release(v10);
    Storage[15] = 0;
  }

  v11 = Storage[16];
  if (v11)
  {
    dispatch_release(v11);
    Storage[16] = 0;
  }
}

CFStringRef mrdowc_copyDebugDesc(uint64_t a1)
{
  Storage = mrdowc_getStorage(a1);
  AllocatorForMedia = FigGetAllocatorForMedia();
  return CFStringCreateWithFormat(AllocatorForMedia, 0, @"[FigMediaRequestDeliverOnceWithCache %p %@]", a1, *(Storage + 8));
}

uint64_t mrdowc_initializeHandlerQueue(uint64_t *a1)
{
  result = FigDispatchQueueCreateWithPriority();
  *a1 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_75()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_10_36()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

BOOL OUTLINED_FUNCTION_15_30(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int16 a11, char a12, os_log_type_t type, int a14)
{

  return os_log_type_enabled(a1, type);
}

uint64_t FigStreamingAssetDownloaderCreateWithURL(const __CFAllocator *a1, uint64_t a2, const void *a3, const void *a4, CFTypeRef *a5)
{
  cf = 0;
  if (!a2)
  {
    FigStreamingAssetDownloaderCreateWithURL_cold_4(&v17);
    return v17;
  }

  if (!a3)
  {
    FigStreamingAssetDownloaderCreateWithURL_cold_3(&v17);
    return v17;
  }

  if (!a5)
  {
    FigStreamingAssetDownloaderCreateWithURL_cold_2(&v17);
    return v17;
  }

  Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    FigStreamingAssetDownloaderCreateWithURL_cold_1(&v17);
    return v17;
  }

  v11 = Mutable;
  CFDictionarySetValue(Mutable, @"assetOption_DownloadDestinationURL", a3);
  v12 = FigAssetCreateWithURL(a1, a2, 0, v11, &cf);
  v13 = cf;
  if (v12)
  {
    v14 = v12;
    if (!cf)
    {
      return v14;
    }

    goto LABEL_7;
  }

  v14 = FigStreamingAssetDownloaderCreateWithAsset(a1, cf, a3, a4, a5);
  v13 = cf;
  if (cf)
  {
LABEL_7:
    CFRelease(v13);
  }

  return v14;
}

uint64_t FigStreamingAssetDownloaderCreateWithAsset(const void *a1, const void *a2, const void *a3, const void *a4, CFTypeRef *a5)
{
  v67 = *MEMORY[0x1E69E9840];
  v54 = 0;
  v55 = 0;
  cf = 0;
  v53 = 0;
  v51 = 0;
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (!a2 || (TypeID = FigAssetGetTypeID(), TypeID != CFGetTypeID(a2)))
  {
    FigStreamingAssetDownloaderCreateWithAsset_cold_6(&v66);
    goto LABEL_89;
  }

  if (a4)
  {
    v11 = CFDictionaryGetTypeID();
    if (v11 != CFGetTypeID(a4))
    {
      FigStreamingAssetDownloaderCreateWithAsset_cold_1(&v66);
      goto LABEL_89;
    }
  }

  if (!a5)
  {
    FigStreamingAssetDownloaderCreateWithAsset_cold_5(&v66);
    goto LABEL_89;
  }

  CMBaseObject = FigAssetGetCMBaseObject(a2);
  v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v13)
  {
    goto LABEL_16;
  }

  v14 = v13(CMBaseObject, @"assetProperty_AssetType", a1, &v55);
  if (v14)
  {
LABEL_91:
    value_low = v14;
    goto LABEL_17;
  }

  if (!FigCFEqual())
  {
    value_low = 4294950644;
LABEL_17:
    v21 = cf;
    if (!cf)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v15 = FigAssetGetCMBaseObject(a2);
  v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v16)
  {
LABEL_16:
    value_low = 4294954514;
    goto LABEL_17;
  }

  v14 = v16(v15, @"assetProperty_CreationOptionsDictionary", a1, &v54);
  if (v14)
  {
    goto LABEL_91;
  }

  if (v54)
  {
    URLValue = FigCFDictionaryGetURLValue();
    v18 = URLValue;
    v19 = URLValue != 0;
    if (a3 && URLValue)
    {
      if (!CFEqual(a3, URLValue))
      {
        FigStreamingAssetDownloaderCreateWithAsset_cold_2(&v66);
        goto LABEL_89;
      }

      goto LABEL_34;
    }
  }

  else
  {
    v19 = 0;
    v18 = 0;
  }

  if (a3)
  {
    v23 = a3;
  }

  else
  {
    v23 = v18;
  }

  if (a3)
  {
    a3 = v23;
  }

  else
  {
    a3 = v23;
    if (!v19)
    {
      FigStreamingAssetDownloaderCreateWithAsset_cold_3(&v66);
      goto LABEL_89;
    }
  }

LABEL_34:
  v24 = CFURLGetTypeID();
  if (v24 != CFGetTypeID(a3))
  {
    FigStreamingAssetDownloaderCreateWithAsset_cold_4(&v66);
LABEL_89:
    value_low = LODWORD(v66.start.value);
    if (!LODWORD(v66.start.value))
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  v14 = FigCFURLCreateWithSuffixedExtension();
  if (v14)
  {
    goto LABEL_91;
  }

  FigAssetDownloaderGetClassID();
  v14 = CMDerivedObjectCreate();
  if (v14)
  {
    goto LABEL_91;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 125) = 1;
  *(DerivedStorage + 369) = 1;
  start = **&MEMORY[0x1E6960CC0];
  duration = **&MEMORY[0x1E6960C70];
  CMTimeRangeMake(&v66, &start, &duration);
  v26 = *&v66.start.epoch;
  *(DerivedStorage + 128) = *&v66.start.value;
  *(DerivedStorage + 144) = v26;
  *(DerivedStorage + 160) = *&v66.duration.timescale;
  if (a4)
  {
    Value = CFDictionaryGetValue(a4, @"AssetDownloaderCreateOption_MediaSelectionCriteria");
    v47 = CFDictionaryGetValue(a4, @"AssetDownloaderCreateOption_ClientBundleIdentifier");
    v45 = CFDictionaryGetValue(a4, @"AssetDownloaderCreateOption_DebugIdentifier");
    v48 = CFDictionaryGetValue(a4, @"AssetDownloaderCreateOption_AssetName");
    v49 = CFDictionaryGetValue(a4, @"AssetDownloaderCreateOption_AssetImage");
    v27 = CFDictionaryGetValue(a4, @"AssetDownloaderCreateOption_PlaylistCache");
    v28 = CFDictionaryGetValue(a4, @"AssetDownloaderCreateOption_NetworkHistory");
    v29 = *MEMORY[0x1E695E4D0];
    if (v29 == CFDictionaryGetValue(a4, @"AssetDownloaderCreateOption_DeleteDownloadWhenAssetFinalizes"))
    {
      *(DerivedStorage + 122) = 1;
    }

    if (v29 == CFDictionaryGetValue(a4, @"AssetDownloaderCreateOption_LinkAssetURLToDestinationURL"))
    {
      *(DerivedStorage + 123) = 1;
    }

    if (v29 == CFDictionaryGetValue(a4, @"AssetDownloaderCreateOption_StoreCryptKeys"))
    {
      *(DerivedStorage + 124) = 1;
    }

    v30 = v45;
    if (FigCFDictionaryGetInt64IfPresent())
    {
      *(DerivedStorage + 120) = 1;
    }

    if (FigCFDictionaryGetCGSizeIfPresent())
    {
      *(DerivedStorage + 121) = 1;
    }

    FigCFDictionaryGetBooleanIfPresent();
    FigCFDictionaryGetBooleanIfPresent();
    FigCFDictionaryGetBooleanIfPresent();
    FigCFDictionaryGetBooleanIfPresent();
    v31 = CFDictionaryGetValue(a4, @"AssetDownloaderCreateOption_SelectedAlternate");
    FigCFDictionaryGetBooleanIfPresent();
    FigCFDictionaryGetBooleanIfPresent();
    FigCFDictionaryGetBooleanIfPresent();
    FigCFDictionaryGetValueIfPresent();
    FigCFDictionaryGetCMTimeRangeIfPresent();
    if (a1)
    {
      goto LABEL_49;
    }
  }

  else
  {
    v48 = 0;
    v49 = 0;
    v31 = 0;
    v27 = 0;
    v28 = 0;
    Value = 0;
    v47 = 0;
    v30 = 0;
    if (a1)
    {
LABEL_49:
      v32 = CFRetain(a1);
      goto LABEL_52;
    }
  }

  v32 = 0;
LABEL_52:
  *(DerivedStorage + 8) = v32;
  *(DerivedStorage + 16) = CFRetain(a2);
  *(DerivedStorage + 72) = CFRetain(v53);
  v33 = Value;
  if (Value)
  {
    v33 = CFRetain(Value);
  }

  *(DerivedStorage + 280) = v33;
  v34 = v47;
  if (v47)
  {
    v34 = CFRetain(v47);
  }

  *(DerivedStorage + 264) = v34;
  if (v30)
  {
    v35 = CFRetain(v30);
  }

  else
  {
    v35 = 0;
  }

  *(DerivedStorage + 272) = v35;
  v36 = v48;
  if (v48)
  {
    v36 = CFRetain(v48);
  }

  *(DerivedStorage + 320) = v36;
  v37 = v49;
  if (v49)
  {
    v37 = CFRetain(v49);
  }

  *(DerivedStorage + 336) = v37;
  if (v27)
  {
    v38 = CFRetain(v27);
  }

  else
  {
    v38 = 0;
  }

  *(DerivedStorage + 56) = v38;
  *DerivedStorage = dispatch_queue_create("com.apple.coremedia.streamingAssetDownloader.state", 0);
  *(DerivedStorage + 472) = dispatch_queue_create("com.apple.coremedia.streamingAssetDownloader.notification", 0);
  if (v31)
  {
    v39 = CFRetain(v31);
  }

  else
  {
    v39 = 0;
  }

  *(DerivedStorage + 312) = v39;
  if (v28)
  {
    v40 = CFRetain(v28);
  }

  else
  {
    v40 = 0;
  }

  *(DerivedStorage + 376) = v40;
  v41 = v51;
  if (v51)
  {
    v41 = CFRetain(v51);
  }

  *(DerivedStorage + 392) = v41;
  if (*(DerivedStorage + 368))
  {
    *(DerivedStorage + 184) = -1;
  }

  v14 = FigRetainProxyCreate();
  if (v14)
  {
    goto LABEL_91;
  }

  v21 = FigCFCopyCompactDescription();
  if (dword_1EAF17328)
  {
    LODWORD(duration.value) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v43 = duration.value;
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT))
    {
      v44 = v43;
    }

    else
    {
      v44 = v43 & 0xFFFFFFFE;
    }

    if (v44)
    {
      LODWORD(start.value) = 136316674;
      *(&start.value + 4) = "FigStreamingAssetDownloaderCreateWithAsset";
      LOWORD(start.flags) = 2048;
      *(&start.flags + 2) = DerivedStorage;
      HIWORD(start.epoch) = 2114;
      v57 = v30;
      v58 = 2048;
      v59 = a2;
      v60 = 2112;
      v61 = a2;
      v62 = 2112;
      v63 = v21;
      v64 = 2112;
      v65 = a3;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  value_low = 0;
  *a5 = cf;
  if (v21)
  {
LABEL_18:
    CFRelease(v21);
  }

LABEL_19:
  if (v55)
  {
    CFRelease(v55);
  }

  if (v53)
  {
    CFRelease(v53);
  }

  if (v54)
  {
    CFRelease(v54);
  }

  return value_low;
}

uint64_t sad_invalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = a1;
  v5 = 0;
  dispatch_sync_f(*DerivedStorage, &v4, sad_invalidateDispatch);
  return v5;
}

void sad_finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  sad_invalidateGuts(a1);
  v3 = *(DerivedStorage + 48);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 48) = 0;
  }

  if (*DerivedStorage)
  {
    dispatch_release(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

uint64_t sad_copyProperty(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = 0;
  v11 = 0;
  v12 = 0;
  context[0] = a1;
  context[1] = a2;
  dispatch_sync_f(*DerivedStorage, context, sad_copyPropertyDispatch);
  result = v12;
  if (!v12)
  {
    *a4 = v10;
  }

  return result;
}

uint64_t sad_setProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  context[3] = 0;
  v9 = 0;
  context[0] = a1;
  context[1] = a2;
  context[2] = a3;
  dispatch_sync_f(*DerivedStorage, context, sad_setPropertyDispatch);
  return v9;
}

void sad_cleanupDownloadWithOSStatus(uint64_t a1, uint64_t a2)
{
  cf = 0;
  FigCreateErrorForOSStatus(a2, &cf);
  sad_cleanupDownload(a1, cf);
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t sad_ensureDuration(uint64_t a1, const void *a2)
{
  v2 = a2;
  v14 = a2;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = DerivedStorage;
  if (v2)
  {
    CFRetain(v2);
    if (*(v4 + 356))
    {
      v5 = 0;
      goto LABEL_5;
    }

    goto LABEL_3;
  }

  if (*(DerivedStorage + 356))
  {
    v5 = 0;
  }

  else
  {
    v6 = *(DerivedStorage + 32);
    if (!v6)
    {
      sad_ensureDuration_cold_1(&v13);
      return LODWORD(v13.value);
    }

    v7 = *(v4 + 8);
    FigBytePumpGetFigBaseObject(v6);
    v9 = v8;
    v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v10)
    {
      return 4294954514;
    }

    v11 = v10(v9, @"FBP_Duration", v7, &v14);
    v2 = v14;
    if (!v11)
    {
LABEL_3:
      CMTimeMakeFromDictionary(&v13, v2);
      v5 = 0;
      *(v4 + 344) = *&v13.value;
      v2 = v14;
      *(v4 + 360) = v13.epoch;
      goto LABEL_4;
    }

    v5 = v11;
  }

LABEL_4:
  if (v2)
  {
LABEL_5:
    CFRelease(v2);
  }

  return v5;
}

uint64_t sad_cleanupDownload(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v24 = **&MEMORY[0x1E6960CC0];
  if (!*(DerivedStorage + 64))
  {
    v4 = DerivedStorage;
    if (*(DerivedStorage + 416))
    {
      v5 = *(DerivedStorage + 32);
      if (!v5)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (a2)
      {
        v6 = CFRetain(a2);
      }

      else
      {
        v6 = 0;
      }

      *(v4 + 416) = v6;
      v5 = *(v4 + 32);
      if (!v5)
      {
        goto LABEL_15;
      }

      if (!v6)
      {
        goto LABEL_12;
      }
    }

    FigBytePumpGetFigBaseObject(v5);
    v8 = v7;
    v9 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v9)
    {
      v9(v8, 0x1F0B1F3D8, *MEMORY[0x1E695E4C0]);
    }

LABEL_12:
    v10 = *(v4 + 424);
    if (v10)
    {
      CFRelease(v10);
      *(v4 + 424) = 0;
    }

    sad_copyLoadedTimeRanges(v4, (v4 + 424));
LABEL_15:
    if (!a2)
    {
      sad_getSumOfTimeDurationFromTimeRanges(*(v4 + 424), &v24);
      v11 = *(v4 + 384);
      v12 = *(v4 + 312);
      v13 = *(v4 + 288);
      v14 = *(v4 + 208);
      cf = v24;
      FigStreamingAssetProgressMarkAlternateAndMediaSelectionComplete(v11, v12, v13, v14, &cf.value);
    }

    if (*(v4 + 456))
    {
      return 0;
    }

    v15 = CMBaseObjectGetDerivedStorage();
    cf.value = 0;
    v16 = v15[4];
    if (!v16 || v15[57])
    {
      if (sad_cleanupDownload_cold_2())
      {
LABEL_24:
        if (cf.value)
        {
          CFRelease(cf.value);
        }

        return 0;
      }
    }

    else
    {
      v17 = v15[1];
      FigBytePumpGetFigBaseObject(v16);
      v19 = v18;
      v20 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v20)
      {
        if (!v20(v19, 0x1F0B1F098, v17, &cf))
        {
          CMNotificationCenterGetDefaultLocalCenter();
          if (!FigNotificationCenterAddWeakListener())
          {
            value = cf.value;
            v15[58] = cf.value;
            if (!FigStreamingCacheFlushIO(value, v15 + 57))
            {
              goto LABEL_24;
            }

            CMNotificationCenterGetDefaultLocalCenter();
            FigNotificationCenterRemoveWeakListener();
          }
        }
      }
    }

    v15[57] = 0;
    v15[58] = 0;
    sad_finishDownloadAfterStreamingCacheFlush();
    goto LABEL_24;
  }

  sad_cleanupDownload_cold_1(&cf);
  return LODWORD(cf.value);
}

uint64_t sad_copyLoadedTimeRanges(uint64_t a1, CFTypeRef *a2)
{
  cf = 0;
  if (a2)
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      v5 = *(a1 + 8);
      FigBytePumpGetFigBaseObject(v4);
      v7 = v6;
      v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v8)
      {
        v8(v7, 0x1F0B1F2B8, v5, &cf);
        v9 = cf;
        if (cf)
        {
          goto LABEL_10;
        }
      }
    }

    v10 = *(a1 + 424);
    if (v10)
    {
      v9 = CFRetain(v10);
      cf = v9;
      if (v9)
      {
LABEL_10:
        v11 = 0;
        *a2 = CFRetain(v9);
        goto LABEL_11;
      }
    }

    else
    {
      cf = 0;
    }

    v9 = CFArrayCreate(*(a1 + 8), 0, 0, MEMORY[0x1E695E9C0]);
    cf = v9;
    if (v9)
    {
      goto LABEL_10;
    }

    sad_copyLoadedTimeRanges_cold_1(&v14);
  }

  else
  {
    sad_copyLoadedTimeRanges_cold_2(&v14);
  }

  v11 = v14;
LABEL_11:
  if (cf)
  {
    CFRelease(cf);
  }

  return v11;
}

CMTime *sad_getSumOfTimeDurationFromTimeRanges@<X0>(const __CFArray *a1@<X0>, CMTime *a2@<X8>)
{
  v3 = *(MEMORY[0x1E6960C98] + 16);
  *&v12.start.value = *MEMORY[0x1E6960C98];
  *&v12.start.epoch = v3;
  *&v12.duration.timescale = *(MEMORY[0x1E6960C98] + 32);
  if (a1 && (Count = CFArrayGetCount(a1), Count >= 1))
  {
    v6 = Count;
    v7 = 0;
    v8 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v7);
      CMTimeRangeMakeFromDictionary(&v12, ValueAtIndex);
      duration = v12.duration;
      v8 = (CMTimeGetSeconds(&duration) + v8);
      ++v7;
    }

    while (v6 != v7);
  }

  else
  {
    v8 = 0;
  }

  return CMTimeMake(a2, v8, 1);
}

void sad_ticklePumpChapterDataLoadDispatch(const void *a1)
{
  cf = 0;
  FigBytePumpGetFigBaseObject(a1);
  v3 = v2;
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v4)
  {
    v4(v3, @"FBSP_Chapters", *MEMORY[0x1E695E480], &cf);
    if (cf)
    {
      CFRelease(cf);
    }
  }

  if (a1)
  {
    CFRelease(a1);
  }
}

void sad_openPumpSchedulerCallback(const void *a1, int a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = CFGetTypeID(a1);
  if (v7 != FigAssetDownloaderGetTypeID())
  {
    sad_openPumpSchedulerCallback_cold_1(&v11);
    v10 = v11;
    goto LABEL_15;
  }

  if (!a2)
  {
    sad_openPumpSchedulerCallback_cold_3(&v13);
    v10 = v13;
    goto LABEL_15;
  }

  *(DerivedStorage + 184) = a3;
  if (*(DerivedStorage + 64))
  {
    sad_openPumpSchedulerCallback_cold_2(&v12);
    v10 = v12;
LABEL_15:
    if (v10)
    {
      sad_relinquishAccessToDestinationURL(a1, 0);

      sad_cleanupDownloadWithOSStatus(a1, v10);
    }

    return;
  }

  v8 = *(DerivedStorage + 24);
  if ((v8 - 6) >= 0xFFFFFFFD)
  {
    v9 = sad_relinquishAccessToDestinationURL(a1, 0);
LABEL_14:
    v10 = v9;
    goto LABEL_15;
  }

  if (v8 != 2)
  {
    if (v8 != 1)
    {
      return;
    }

    if (*(DerivedStorage + 92) == 4)
    {
      v9 = sad_registerAssetForDownloadAndOpenPump(a1);
    }

    else
    {
      v9 = sad_startOrResumeDownload(a1);
    }

    goto LABEL_14;
  }

  sad_stopDownloading(a1);
}

uint64_t sad_stopDownloading(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  if (*(result + 32))
  {
    return sad_stopDownloading_cold_1(result, a1);
  }

  return result;
}

void sad_pumpTransferCallback(uint64_t a1, const void *a2, const void *a3)
{
  v5 = a1;
  v13 = 0;
  if (!sad_copyAssetDownloaderFromRetainProxy(a1, &v13))
  {
    v6 = v13;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v8 = malloc_type_calloc(1uLL, 0x18uLL, 0x20040960023A9uLL);
    if (!v8)
    {
      v12 = sad_pumpTransferCallback_cold_1(v5, v6);
      v5 = v6;
      if (v12)
      {
        return;
      }

      goto LABEL_11;
    }

    v9 = v8;
    *v8 = v6;
    if (a2)
    {
      v10 = CFRetain(a2);
    }

    else
    {
      v10 = 0;
    }

    v9[1] = v10;
    if (a3)
    {
      v11 = CFRetain(a3);
    }

    else
    {
      v11 = 0;
    }

    v9[2] = v11;
    dispatch_async_f(*DerivedStorage, v9, sad_pumpTransferCallbackDispatch);
  }

  if (!v5)
  {
    return;
  }

LABEL_11:

  CFRelease(v5);
}

uint64_t sad_copyAssetDownloaderFromRetainProxy(uint64_t a1, void *a2)
{
  FigRetainProxyLockMutex();
  if (FigRetainProxyIsInvalidated())
  {
    sad_copyAssetDownloaderFromRetainProxy_cold_1(&v6);
    v4 = v6;
  }

  else
  {
    Owner = FigRetainProxyGetOwner();
    if (Owner)
    {
      Owner = CFRetain(Owner);
    }

    v4 = 0;
    *a2 = Owner;
  }

  FigRetainProxyUnlockMutex();
  return v4;
}

void sad_pumpTransferCallbackDispatch(const void **a1)
{
  cf[16] = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 64))
  {
    sad_pumpTransferCallbackDispatch_cold_1(cf);
    v17 = LODWORD(cf[0]);
    goto LABEL_110;
  }

  v6 = DerivedStorage;
  if (*(DerivedStorage + 176))
  {
    v17 = 0;
    *(DerivedStorage + 92) = 0;
    goto LABEL_110;
  }

  if (v3)
  {
    v7 = CFRetain(v3);
  }

  else
  {
    v7 = 0;
  }

  *(v6 + 32) = v7;
  if (dword_1EAF17328)
  {
    v54 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v4)
  {
    goto LABEL_111;
  }

  v9 = *(v6 + 32);
  if (!v9)
  {
    sad_pumpTransferCallbackDispatch_cold_6(cf);
LABEL_125:
    v17 = LODWORD(cf[0]);
    goto LABEL_126;
  }

  v10 = *(v6 + 392);
  FigBytePumpGetFigBaseObject(v9);
  v12 = v11;
  v13 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v13)
  {
    v17 = 4294954514;
LABEL_15:
    sad_cleanupDownloadWithOSStatus(v2, v17);
    goto LABEL_112;
  }

  v14 = v13(v12, 0x1F0B1F7F8, v10);
  if (v14)
  {
    goto LABEL_118;
  }

  v15 = CMBaseObjectGetDerivedStorage();
  if (*(v15 + 179))
  {
    v16 = *(v15 + 178) == 0;
  }

  else
  {
    v16 = 0;
  }

  if (!*(v15 + 32))
  {
    sad_pumpTransferCallbackDispatch_cold_5(cf);
    goto LABEL_125;
  }

  v18 = *(v15 + 184);
  if (!v18)
  {
    v14 = FigAssetDownloadCoordinatorScheduleAccessToURL(v2, *(v15 + 72), *v15, v16, sad_getPumpReadySchedulerCallback);
    if (!v14)
    {
      goto LABEL_20;
    }

LABEL_118:
    v17 = v14;
    goto LABEL_15;
  }

  sad_getPumpReadySchedulerCallback(v2, 1, v18);
LABEL_20:
  v19 = CMBaseObjectGetDerivedStorage();
  if (!*(v19 + 32))
  {
    sad_pumpTransferCallbackDispatch_cold_4(cf);
    goto LABEL_125;
  }

  v20 = v19;
  if (*(v19 + 40))
  {
    sad_pumpTransferCallbackDispatch_cold_2(cf);
    goto LABEL_125;
  }

  v53 = (v19 + 40);
  v14 = FigAlternateSelectionBossCreate(*(v19 + 8), (v19 + 40));
  if (v14)
  {
    goto LABEL_118;
  }

  v52 = v20;
  v21 = CMBaseObjectGetDerivedStorage();
  v22 = v21;
  v23 = 0;
  cf[0] = 0;
  *v55 = 0;
  if (*(v21 + 126))
  {
    v24 = -1;
  }

  else
  {
    v24 = 2;
  }

  v51 = v24;
  v25 = *(v21 + 296);
  if (!v25)
  {
    goto LABEL_28;
  }

LABEL_27:
  for (i = CFArrayGetCount(v25); v23 < i; i = 0)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v25, v23);
    if (CFDictionaryGetValue(ValueAtIndex, @"MediaSelectionGroupMediaType"))
    {
      v54 = 0;
      FigCFStringGetOSTypeValue();
    }

    ++v23;
    if (v25)
    {
      goto LABEL_27;
    }

LABEL_28:
    ;
  }

  if (!*(v22 + 40))
  {
    sad_pumpTransferCallbackDispatch_cold_3(&v54);
    v17 = v54;
    goto LABEL_90;
  }

  v28 = *(v22 + 312);
  if (v28)
  {
    if (*(v22 + 392))
    {
      StableStreamIdentifier = FigAlternateGetStableStreamIdentifier(v28);
      v30 = v52;
      if (StableStreamIdentifier)
      {
        v31 = FigAlternateAllowListWithStableVariantIDFilterCreate(*(v22 + 8), StableStreamIdentifier, 0x374u, cf);
        if (!v31)
        {
          v31 = FigAlternateSelectionBossAddFilter(*(v22 + 40), cf[0]);
          if (!v31)
          {
            if (cf[0])
            {
              CFRelease(cf[0]);
              cf[0] = 0;
            }

            v31 = sad_addStableRenditionIDFilterForMediaType(v2, 0x736F756Eu);
            if (!v31)
            {
              v31 = sad_addStableRenditionIDFilterForMediaType(v2, 0x76696465u);
              if (!v31)
              {
                v31 = sad_addStableRenditionIDFilterForMediaType(v2, 0x7362746Cu);
              }
            }
          }
        }

        goto LABEL_45;
      }

LABEL_88:
      v17 = 0;
      goto LABEL_91;
    }

    v17 = 0;
LABEL_90:
    v30 = v52;
    goto LABEL_91;
  }

  v32 = FigAlternateContinuousFramesOnlyFilterCreate(*(v22 + 8), cf);
  if (v32)
  {
    v17 = v32;
    goto LABEL_90;
  }

  v31 = FigAlternateSelectionBossAddFilter(*(v22 + 40), cf[0]);
  v30 = v52;
  if (v31)
  {
    goto LABEL_45;
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
    cf[0] = 0;
  }

  v31 = FigAlternateMediaValidationFilterCreate(*(v22 + 8), 0, cf);
  if (v31)
  {
    goto LABEL_45;
  }

  v31 = FigAlternateSelectionBossAddFilter(*(v22 + 40), cf[0]);
  if (v31)
  {
    goto LABEL_45;
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
    cf[0] = 0;
  }

  v33 = *(v22 + 8);
  v54 = 0;
  FPSupport_GetMainDisplayVideoRangeAndSizeAndFrameRate(&v54, 0, 0);
  v31 = FigAlternateSupportedVideoRangeFilterCreate(v33, v54, cf);
  if (v31)
  {
    goto LABEL_45;
  }

  v31 = FigAlternateSelectionBossAddFilter(*(v22 + 40), cf[0]);
  if (v31)
  {
    goto LABEL_45;
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
    cf[0] = 0;
  }

  v34 = *(v22 + 8);
  v35 = *(CMBaseObjectGetDerivedStorage() + 125) ? 4 : 1;
  v31 = FigAlternatePreferredVideoRangeFilterCreate(v34, v35, cf);
  if (v31)
  {
    goto LABEL_45;
  }

  v31 = FigAlternateSelectionBossAddFilter(*(v22 + 40), cf[0]);
  if (v31)
  {
    goto LABEL_45;
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
    cf[0] = 0;
  }

  if (!PKDGetSystemCPC(v55))
  {
    v31 = FigAlternateAllowedCPCFilterCreate(*(v22 + 8), *v55, cf);
    if (v31)
    {
      goto LABEL_45;
    }

    v31 = FigAlternateSelectionBossAddFilter(*(v22 + 40), cf[0]);
    if (v31)
    {
      goto LABEL_45;
    }

    if (cf[0])
    {
      CFRelease(cf[0]);
      cf[0] = 0;
    }
  }

  v31 = FigAlternateSuppressAudioOnlyFilterCreate(*(v22 + 8), cf);
  if (v31)
  {
    goto LABEL_45;
  }

  v31 = FigAlternateSelectionBossAddFilter(*(v22 + 40), cf[0]);
  if (v31)
  {
    goto LABEL_45;
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
    cf[0] = 0;
  }

  if (*(v22 + 121))
  {
    v31 = FigAlternateResolutionCapFilterCreate(*(v22 + 8), @"ResolutionCap", 700, cf, *(v22 + 104), *(v22 + 112));
    if (v31)
    {
      goto LABEL_45;
    }

    v31 = FigAlternateSelectionBossAddFilter(*(v22 + 40), cf[0]);
    if (v31)
    {
      goto LABEL_45;
    }

    if (cf[0])
    {
      CFRelease(cf[0]);
      cf[0] = 0;
    }
  }

  v31 = FigAlternatePreferredAudioFormatFilterCreate(*(v22 + 8), 0, v51, 0, 0, 0, 0, cf);
  if (v31)
  {
    goto LABEL_45;
  }

  v31 = FigAlternateSelectionBossAddFilter(*(v22 + 40), cf[0]);
  if (v31)
  {
    goto LABEL_45;
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
    cf[0] = 0;
  }

  if (!*(v22 + 120))
  {
    goto LABEL_88;
  }

  v31 = FigAlternateNormalizedPeakBitRateCapFilterCreate(*(v22 + 8), *(v22 + 96), 0, cf);
  if (v31)
  {
LABEL_45:
    v17 = v31;
LABEL_91:
    v36 = cf[0];
    goto LABEL_92;
  }

  v17 = FigAlternateSelectionBossAddFilter(*(v22 + 40), cf[0]);
  v36 = cf[0];
  if (v17 || !cf[0])
  {
LABEL_92:
    if (!v36)
    {
      goto LABEL_94;
    }

    goto LABEL_93;
  }

  v17 = 0;
LABEL_93:
  CFRelease(v36);
LABEL_94:
  if (v17)
  {
    goto LABEL_110;
  }

  v37 = *(v30 + 392);
  if (v37)
  {
    v38 = FigAlternateSelectionBossAddMonitor(*v53, v37);
    if (v38)
    {
LABEL_108:
      v17 = v38;
      goto LABEL_110;
    }

    if (dword_1EAF17328)
    {
      v54 = 0;
      v39 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v40 = v54;
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        v41 = v40;
      }

      else
      {
        v41 = v40 & 0xFFFFFFFE;
      }

      if (v41)
      {
        v42 = *(v30 + 272);
        v43 = *(v30 + 392);
        v44 = *(v30 + 40);
        *v55 = 136316162;
        *&v55[4] = "sad_setupAlternateSelectionBoss";
        v56 = 2048;
        v57 = v30;
        v58 = 2114;
        v59 = v42;
        v60 = 2048;
        v61 = v43;
        v62 = 2048;
        v63 = v44;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  v45 = *(v30 + 40);
  __copy_constructor_8_8_pa0_38126_0_pa0_35993_8_pa0_4849_16(cf, sad_setupAlternateSelectionBoss_kSadAlternateSelectionBossCallbacks);
  v38 = FigAlternateSelectionBossAddDelegate(v45, v2, cf, *v30);
  if (v38)
  {
    goto LABEL_108;
  }

  v46 = *(v30 + 32);
  v47 = *(v30 + 40);
  FigBytePumpGetFigBaseObject(v46);
  v49 = v48;
  v50 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v50)
  {
    v38 = v50(v49, 0x1F0B1F878, v47);
    if (!v38)
    {
      v38 = FigAlternateSelectionBossApplyFilters(*v53);
    }

    goto LABEL_108;
  }

  v17 = 4294954514;
LABEL_110:
  if (v4)
  {
LABEL_111:
    sad_cleanupDownload(v2, v4);
    CFRelease(v4);
    goto LABEL_112;
  }

LABEL_126:
  if (v17)
  {
    goto LABEL_15;
  }

LABEL_112:
  if (v3)
  {
    CFRelease(v3);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  free(a1);
}

uint64_t sad_getCFIndexForKeyFromPumpStoreBag(uint64_t a1, __CFString *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  *a4 = a3;
  if (*(DerivedStorage + 32))
  {
    v8 = *(DerivedStorage + 8);
    FigBytePumpGetFigBaseObject(*(DerivedStorage + 32));
    v10 = v9;
    v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v11 && !v11(v10, 0x1F0B1F2D8, v8, &cf))
    {
      if (!cf)
      {
        return 0;
      }

      *a4 = FigRCLGetNumberWithDefault(cf, a2);
      v12 = cf;
      v13 = CMBaseObjectGetDerivedStorage();
      if (*(v13 + 480))
      {
        v14 = v13;
        v15 = FigRCLCopyConfigurationGroupName(v12);
        if (v15)
        {
          sad_getCFIndexForKeyFromPumpStoreBag_cold_1((v14 + 480), v15);
        }
      }

      else
      {
        sad_getCFIndexForKeyFromPumpStoreBag_cold_2();
      }
    }

    v16 = 0;
  }

  else
  {
    sad_getCFIndexForKeyFromPumpStoreBag_cold_3(&v19);
    v16 = v19;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v16;
}

uint64_t sad_getMaxBandwidthAlternateApplierFunc(uint64_t result, uint64_t *a2)
{
  v3 = result;
  if (!a2 || *a2)
  {
    PeakBitRate = FigAlternateGetPeakBitRate(result);
    result = FigAlternateGetPeakBitRate(*a2);
    if (PeakBitRate <= result)
    {
      v3 = *a2;
    }
  }

  *a2 = v3;
  return result;
}

void sad_setPropertyDispatch(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 64))
  {
    sad_setPropertyDispatch_cold_1(&v25);
    goto LABEL_53;
  }

  v5 = DerivedStorage;
  if (CFEqual(@"AssetDownloaderProperty_SelectedMediaArray", v3))
  {
    TypeID = CFArrayGetTypeID();
    if (TypeID == CFGetTypeID(v2))
    {
      if (*(v5 + 92) >= 2u)
      {
        sad_setPropertyDispatch_cold_5(&v25);
      }

      else
      {
        v7 = *(v5 + 288);
        v8 = *(v5 + 8);
        if (v7)
        {
          MutableCopy = CFArrayCreateMutableCopy(v8, 0, v7);
        }

        else
        {
          MutableCopy = CFArrayCreateMutable(v8, 0, MEMORY[0x1E695E9C0]);
        }

        v14 = MutableCopy;
        if (MutableCopy)
        {
          v15 = FigAutomaticMediaSelectionCoalesceSelectedMediaArrays(MutableCopy, v2, 1);
          if (v15)
          {
            v13 = v15;
          }

          else
          {
            Copy = CFArrayCreateCopy(*(v5 + 8), v14);
            if (Copy)
            {
              v17 = Copy;
              v18 = *(v5 + 288);
              *(v5 + 288) = Copy;
              CFRetain(Copy);
              if (v18)
              {
                CFRelease(v18);
              }

              CFRelease(v17);
              v13 = 0;
            }

            else
            {
              sad_setPropertyDispatch_cold_3(&v25);
              v13 = v25;
            }
          }

          CFRelease(v14);
          goto LABEL_21;
        }

        sad_setPropertyDispatch_cold_4(&v25);
      }
    }

    else
    {
      sad_setPropertyDispatch_cold_2(&v25);
    }

LABEL_53:
    v13 = v25;
    goto LABEL_21;
  }

  if (!CFEqual(@"AssetDownloaderProperty_MediaSelectionArray", v3))
  {
    if (CFEqual(@"AssetDownloaderProperty_ProgressMonitor", v3))
    {
      v19 = CFGetTypeID(v2);
      if (v19 != FigStreamingAssetDownloadProgressMonitorGetTypeID())
      {
        sad_setPropertyDispatch_cold_8(&v25);
        goto LABEL_53;
      }

      v20 = *(v5 + 384);
      *(v5 + 384) = v2;
      if (!v2)
      {
        goto LABEL_26;
      }
    }

    else
    {
      if (!CFEqual(@"AssetDownloaderProperty_ReportingAgent", v3))
      {
        if (!CFEqual(@"AssetDownloaderProperty_MetricEventTimeline", v3))
        {
          v13 = -12784;
          goto LABEL_21;
        }

        v22 = CFGetTypeID(v2);
        if (v22 != FigMetricEventTimelineGetTypeID())
        {
          sad_setPropertyDispatch_cold_10(&v25);
          goto LABEL_53;
        }

        v23 = *(v5 + 400);
        *(v5 + 400) = v2;
        if (v2)
        {
          CFRetain(v2);
        }

        if (v23)
        {
          CFRelease(v23);
        }

        v24 = *(v5 + 32);
        if (v24)
        {
          v13 = FigAirPlayRouteSetProperty(v24, 0x1F0B1F538, v2);
          goto LABEL_21;
        }

LABEL_28:
        v13 = 0;
        goto LABEL_21;
      }

      v21 = CFGetTypeID(v2);
      if (v21 != FigReportingAgentGetTypeID())
      {
        sad_setPropertyDispatch_cold_9(&v25);
        goto LABEL_53;
      }

      v20 = *(v5 + 480);
      *(v5 + 480) = v2;
      if (!v2)
      {
LABEL_26:
        if (v20)
        {
          CFRelease(v20);
        }

        goto LABEL_28;
      }
    }

    CFRetain(v2);
    goto LABEL_26;
  }

  v10 = CFArrayGetTypeID();
  if (v10 != CFGetTypeID(v2))
  {
    sad_setPropertyDispatch_cold_6(&v25);
    goto LABEL_53;
  }

  if (*(v5 + 92) >= 2u)
  {
    sad_setPropertyDispatch_cold_7(&v25);
    goto LABEL_53;
  }

  v11 = *(v5 + 304);
  if (v11)
  {
    CFRelease(v11);
    *(v5 + 304) = 0;
  }

  v12 = CFArrayCreateMutableCopy(*(v5 + 8), 0, v2);
  v13 = 0;
  *(v5 + 304) = v12;
LABEL_21:
  *(a1 + 32) = v13;
}

uint64_t sad_start(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = a1;
  v5 = 0;
  dispatch_sync_f(*DerivedStorage, &v4, sad_startDispatch);
  return v5;
}

uint64_t sad_pause(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = a1;
  v5 = 0;
  dispatch_sync_f(*DerivedStorage, &v4, sad_pauseDispatch);
  return v5;
}

uint64_t sad_stop(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = a1;
  v5 = 0;
  dispatch_sync_f(*DerivedStorage, &v4, sad_stopDispatch);
  return v5;
}

uint64_t sad_pauseForPlayback(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = a1;
  v5 = 0;
  dispatch_sync_f(*DerivedStorage, &v4, sad_pauseForPlaybackDispatch);
  return v5;
}

uint64_t sad_resumeAfterPlayback(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = a1;
  v5 = 0;
  dispatch_sync_f(*DerivedStorage, &v4, sad_resumeAfterPlaybackDispatch);
  return v5;
}

uint64_t sad_loadMetadata(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = a1;
  v5 = 0;
  dispatch_sync_f(*DerivedStorage, &v4, sad_loadMetadataDispatch);
  return v5;
}

void sad_stopDownloadingAfterDelayDispatch(const void **a1)
{
  v2 = *a1;
  v3 = a1[1];
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 24) == 2 && (v3 - 1000000000) < UpTimeNanoseconds - *(DerivedStorage + 448))
  {
    sad_stopDownloading(v2);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  free(a1);
}

void sad_stopDispatch(uint64_t a1)
{
  v2 = *a1;
  if (*(CMBaseObjectGetDerivedStorage() + 64))
  {
    v5 = FigSignalErrorAtGM();
    if (v5)
    {
      sad_cleanupDownloadWithOSStatus(v2, v5);
    }
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *(DerivedStorage + 176) = 0;
    if ((*(DerivedStorage + 24) - 6) > 0xFFFFFFFC)
    {
      LODWORD(v5) = 0;
    }

    else
    {
      v4 = DerivedStorage;
      sad_stopDownloading(v2);
      LODWORD(v5) = 0;
      *(v4 + 24) = 5;
    }
  }

  *(a1 + 8) = v5;
}

void sad_loadMetadataDispatch(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 64))
  {
    v3 = FigSignalErrorAtGM();
    if (v3)
    {
      sad_cleanupDownloadWithOSStatus(*a1, v3);
    }
  }

  else
  {
    *(DerivedStorage + 179) = 1;
    sad_loadMetadataGuts();
    LODWORD(v3) = 0;
  }

  *(a1 + 8) = v3;
}

uint64_t OUTLINED_FUNCTION_10_37()
{

  return CMBaseObjectGetDerivedStorage();
}

uint64_t OUTLINED_FUNCTION_14_31(uint64_t a1, __CFString *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  a15 = 0;

  return sad_getCFIndexForKeyFromPumpStoreBag(v15, a2, 1, &a15);
}

uint64_t figCSSParserNodeRegisterFigCSSParserNode()
{
  result = _CFRuntimeRegisterClass();
  sFigCSSParserNodeID = result;
  return result;
}

uint64_t FigCSSParserNodeCreate(const __CFAllocator *a1, int a2, void *a3)
{
  if (a3)
  {
    MEMORY[0x19A8D3660](&FigCSSParserNodeGetTypeID_sRegisterFigCSSParserNodeOnce, figCSSParserNodeRegisterFigCSSParserNode);
    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v7 = Instance;
      *(Instance + 16) = a2;
      Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v7[3] = Mutable;
      if (Mutable)
      {
        result = 0;
        *a3 = v7;
      }

      else
      {
        FigCSSParserNodeCreate_cold_1(v7, &v10);
        return v10;
      }
    }

    else
    {
      FigCSSParserNodeCreate_cold_2(&v11);
      return v11;
    }
  }

  else
  {
    FigCSSParserNodeCreate_cold_3(&v12);
    return v12;
  }

  return result;
}

uint64_t FigCSSParserNodeGetNodeType(uint64_t a1, _DWORD *a2)
{
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *a2 = *(a1 + 16);
    }

    else
    {
      FigCSSParserNodeGetNodeType_cold_1(&v4);
      return v4;
    }
  }

  else
  {
    FigCSSParserNodeGetNodeType_cold_2(&v5);
    return v5;
  }

  return result;
}

uint64_t FigCSSAtRuleParserNodeCreate(const __CFAllocator *a1, CFTypeRef *a2)
{
  cf = 0;
  v3 = FigCSSParserNodeCreate(a1, 1, &cf);
  if (v3)
  {
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    *a2 = cf;
  }

  return v3;
}

uint64_t FigCSSAtRuleParserNodeSetName(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    FigCSSAtRuleParserNodeSetName_cold_3(&v6);
    return v6;
  }

  if (*(a1 + 16) != 1)
  {
    FigCSSAtRuleParserNodeSetName_cold_1(&v4);
    return v4;
  }

  if (cf)
  {
    v2 = CFGetTypeID(cf);
    if (v2 != FigCSSTokenGetTypeID())
    {
      FigCSSAtRuleParserNodeSetName_cold_2(&v5);
      return v5;
    }

    FigCFDictionarySetValue();
  }

  else
  {
    CFDictionaryRemoveValue(*(a1 + 24), @"name");
  }

  return 0;
}

uint64_t FigCSSAtRuleParserNodeSetPrelude(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    FigCSSAtRuleParserNodeSetPrelude_cold_3(&v6);
    return v6;
  }

  if (*(a1 + 16) != 1)
  {
    FigCSSAtRuleParserNodeSetPrelude_cold_1(&v4);
    return v4;
  }

  if (cf)
  {
    v2 = CFGetTypeID(cf);
    if (v2 != CFArrayGetTypeID())
    {
      FigCSSAtRuleParserNodeSetPrelude_cold_2(&v5);
      return v5;
    }

    FigCFDictionarySetValue();
  }

  else
  {
    CFDictionaryRemoveValue(*(a1 + 24), @"prelude");
  }

  return 0;
}

uint64_t FigCSSAtRuleParserNodeSetSimpleBlock(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    FigCSSAtRuleParserNodeSetSimpleBlock_cold_4(&v5);
    return v5;
  }

  if (*(a1 + 16) != 1)
  {
    FigCSSAtRuleParserNodeSetSimpleBlock_cold_1(&v5);
    return v5;
  }

  if (!cf)
  {
    CFDictionaryRemoveValue(*(a1 + 24), @"simple_block");
    return 0;
  }

  v3 = CFGetTypeID(cf);
  MEMORY[0x19A8D3660](&FigCSSParserNodeGetTypeID_sRegisterFigCSSParserNodeOnce, figCSSParserNodeRegisterFigCSSParserNode);
  if (v3 != sFigCSSParserNodeID)
  {
    FigCSSAtRuleParserNodeSetSimpleBlock_cold_2(&v5);
    return v5;
  }

  if (*(cf + 4) != 6)
  {
    FigCSSAtRuleParserNodeSetSimpleBlock_cold_3(&v5);
    return v5;
  }

  FigCFDictionarySetValue();
  return 0;
}

uint64_t FigCSSQualifiedRuleParserNodeCreate(const __CFAllocator *a1, CFTypeRef *a2)
{
  cf = 0;
  v3 = FigCSSParserNodeCreate(a1, 2, &cf);
  if (v3)
  {
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    *a2 = cf;
  }

  return v3;
}

uint64_t FigCSSQualifiedRuleParserNodeCopyPrelude(uint64_t a1, void *a2)
{
  cf = 0;
  if (!a1)
  {
    FigCSSTokenCreateSerializationString_cold_1(&v7);
    return v7;
  }

  if (!a2)
  {
    FigCSSTokenCreateSerializationString_cold_2(&v7);
    return v7;
  }

  if (*(a1 + 16) != 2)
  {
    FigCSSQualifiedRuleParserNodeCopyPrelude_cold_1(&v7);
    return v7;
  }

  if (!CFDictionaryGetValueIfPresent(*(a1 + 24), @"prelude", &cf))
  {
LABEL_9:
    v4 = 0;
    goto LABEL_10;
  }

  if (!cf || (v3 = CFGetTypeID(cf), v3 != CFArrayGetTypeID()))
  {
    FigCSSQualifiedRuleParserNodeCopyPrelude_cold_2(&v7);
    return v7;
  }

  if (!cf)
  {
    goto LABEL_9;
  }

  v4 = CFRetain(cf);
LABEL_10:
  result = 0;
  *a2 = v4;
  return result;
}

uint64_t FigCSSQualifiedRuleParserNodeSetPrelude(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    FigCSSQualifiedRuleParserNodeSetPrelude_cold_3(&v6);
    return v6;
  }

  if (*(a1 + 16) != 2)
  {
    FigCSSQualifiedRuleParserNodeSetPrelude_cold_1(&v4);
    return v4;
  }

  if (cf)
  {
    v2 = CFGetTypeID(cf);
    if (v2 != CFArrayGetTypeID())
    {
      FigCSSQualifiedRuleParserNodeSetPrelude_cold_2(&v5);
      return v5;
    }

    FigCFDictionarySetValue();
  }

  else
  {
    CFDictionaryRemoveValue(*(a1 + 24), @"prelude");
  }

  return 0;
}

uint64_t FigCSSQualifiedRuleParserNodeCopySimpleBlock(uint64_t a1, void *a2)
{
  cf = 0;
  if (!a1)
  {
    FigCSSQualifiedRuleParserNodeCopySimpleBlock_cold_4(&v7);
    return v7;
  }

  if (!a2)
  {
    FigCSSQualifiedRuleParserNodeCopySimpleBlock_cold_3(&v7);
    return v7;
  }

  if (*(a1 + 16) != 2)
  {
    FigCSSQualifiedRuleParserNodeCopySimpleBlock_cold_1(&v7);
    return v7;
  }

  if (!CFDictionaryGetValueIfPresent(*(a1 + 24), @"simple_block", &cf))
  {
    v4 = 0;
    goto LABEL_11;
  }

  if (!cf || (v3 = CFGetTypeID(cf), MEMORY[0x19A8D3660](&FigCSSParserNodeGetTypeID_sRegisterFigCSSParserNodeOnce, figCSSParserNodeRegisterFigCSSParserNode), v3 != sFigCSSParserNodeID))
  {
    FigCSSQualifiedRuleParserNodeCopySimpleBlock_cold_2(&v7);
    return v7;
  }

  if (cf)
  {
    if (*(cf + 4) == 6)
    {
      v4 = CFRetain(cf);
LABEL_11:
      result = 0;
      *a2 = v4;
      return result;
    }

    return FigSignalErrorAtGM();
  }

  result = FigSignalErrorAtGM();
  if (!result)
  {
    return FigSignalErrorAtGM();
  }

  return result;
}

uint64_t FigCSSQualifiedRuleParserNodeSetSimpleBlock(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    FigCSSQualifiedRuleParserNodeSetSimpleBlock_cold_4(&v5);
    return v5;
  }

  if (*(a1 + 16) != 2)
  {
    FigCSSQualifiedRuleParserNodeSetSimpleBlock_cold_1(&v5);
    return v5;
  }

  if (!cf)
  {
    CFDictionaryRemoveValue(*(a1 + 24), @"simple_block");
    return 0;
  }

  v3 = CFGetTypeID(cf);
  MEMORY[0x19A8D3660](&FigCSSParserNodeGetTypeID_sRegisterFigCSSParserNodeOnce, figCSSParserNodeRegisterFigCSSParserNode);
  if (v3 != sFigCSSParserNodeID)
  {
    FigCSSQualifiedRuleParserNodeSetSimpleBlock_cold_2(&v5);
    return v5;
  }

  if (*(cf + 4) != 6)
  {
    FigCSSQualifiedRuleParserNodeSetSimpleBlock_cold_3(&v5);
    return v5;
  }

  FigCFDictionarySetValue();
  return 0;
}

uint64_t FigCSSDeclarationParserNodeCreate(const __CFAllocator *a1, CFTypeRef *a2)
{
  cf = 0;
  v3 = FigCSSParserNodeCreate(a1, 3, &cf);
  if (v3)
  {
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    *a2 = cf;
  }

  return v3;
}

uint64_t FigCSSDeclarationParserNodeCopyName(uint64_t a1, void *a2)
{
  cf = 0;
  if (!a1)
  {
    FigCSSDeclarationParserNodeCopyName_cold_4(&v7);
    return v7;
  }

  if (!a2)
  {
    FigCSSDeclarationParserNodeCopyName_cold_3(&v7);
    return v7;
  }

  if (*(a1 + 16) != 3)
  {
    FigCSSDeclarationParserNodeCopyName_cold_1(&v7);
    return v7;
  }

  if (!CFDictionaryGetValueIfPresent(*(a1 + 24), @"name", &cf))
  {
LABEL_9:
    v4 = 0;
    goto LABEL_10;
  }

  if (!cf || (v3 = CFGetTypeID(cf), v3 != FigCSSTokenGetTypeID()))
  {
    FigCSSDeclarationParserNodeCopyName_cold_2(&v7);
    return v7;
  }

  if (!cf)
  {
    goto LABEL_9;
  }

  v4 = CFRetain(cf);
LABEL_10:
  result = 0;
  *a2 = v4;
  return result;
}

uint64_t FigCSSDeclarationParserNodeSetName(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    FigCSSDeclarationParserNodeSetName_cold_3(&v6);
    return v6;
  }

  if (*(a1 + 16) != 3)
  {
    FigCSSDeclarationParserNodeSetName_cold_1(&v4);
    return v4;
  }

  if (cf)
  {
    v2 = CFGetTypeID(cf);
    if (v2 != FigCSSTokenGetTypeID())
    {
      FigCSSDeclarationParserNodeSetName_cold_2(&v5);
      return v5;
    }

    FigCFDictionarySetValue();
  }

  else
  {
    CFDictionaryRemoveValue(*(a1 + 24), @"name");
  }

  return 0;
}

uint64_t FigCSSDeclarationParserNodeCopyValue(uint64_t a1, void *a2)
{
  cf = 0;
  if (!a1)
  {
    FigCSSDeclarationParserNodeCopyValue_cold_4(&v7);
    return v7;
  }

  if (!a2)
  {
    FigCSSDeclarationParserNodeCopyValue_cold_3(&v7);
    return v7;
  }

  if (*(a1 + 16) != 3)
  {
    FigCSSDeclarationParserNodeCopyValue_cold_1(&v7);
    return v7;
  }

  if (!CFDictionaryGetValueIfPresent(*(a1 + 24), @"value", &cf))
  {
LABEL_9:
    v4 = 0;
    goto LABEL_10;
  }

  if (!cf || (v3 = CFGetTypeID(cf), v3 != CFArrayGetTypeID()))
  {
    FigCSSDeclarationParserNodeCopyValue_cold_2(&v7);
    return v7;
  }

  if (!cf)
  {
    goto LABEL_9;
  }

  v4 = CFRetain(cf);
LABEL_10:
  result = 0;
  *a2 = v4;
  return result;
}

uint64_t FigCSSDeclarationParserNodeSetValue(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    FigCSSDeclarationParserNodeSetValue_cold_3(&v6);
    return v6;
  }

  if (*(a1 + 16) != 3)
  {
    FigCSSDeclarationParserNodeSetValue_cold_1(&v4);
    return v4;
  }

  if (cf)
  {
    v2 = CFGetTypeID(cf);
    if (v2 != CFArrayGetTypeID())
    {
      FigCSSDeclarationParserNodeSetValue_cold_2(&v5);
      return v5;
    }

    FigCFDictionarySetValue();
  }

  else
  {
    CFDictionaryRemoveValue(*(a1 + 24), @"value");
  }

  return 0;
}

uint64_t FigCSSComponentValueParserNodeCreate(const __CFAllocator *a1, CFTypeRef *a2)
{
  cf = 0;
  v3 = FigCSSParserNodeCreate(a1, 4, &cf);
  if (v3)
  {
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    *a2 = cf;
  }

  return v3;
}

uint64_t FigCSSComponentValueParserNodeGetType(uint64_t a1, int *a2)
{
  cf1 = 0;
  if (!a1)
  {
    FigCSSComponentValueParserNodeGetType_cold_3(&v6);
    return v6;
  }

  if (!a2)
  {
    FigCSSComponentValueParserNodeGetType_cold_2(&v6);
    return v6;
  }

  if (*(a1 + 16) != 4)
  {
    FigCSSComponentValueParserNodeGetType_cold_1(&v6);
    return v6;
  }

  if (CFDictionaryGetValueIfPresent(*(a1 + 24), @"component_value_type", &cf1))
  {
    if (CFEqual(cf1, @"component_value_type_preserved_token"))
    {
      v3 = 1;
    }

    else if (CFEqual(cf1, @"component_value_type_function"))
    {
      v3 = 2;
    }

    else if (CFEqual(cf1, @"component_value_type_simple_block"))
    {
      v3 = 3;
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

  result = 0;
  *a2 = v3;
  return result;
}

uint64_t FigCSSComponentValueParserNodeCopyPreservedToken(uint64_t a1, void *a2)
{
  cf = 0;
  if (!a1)
  {
    FigCSSComponentValueParserNodeCopyPreservedToken_cold_5(&v9);
    return v9;
  }

  if (!a2)
  {
    FigCSSComponentValueParserNodeCopyPreservedToken_cold_4(&v9);
    return v9;
  }

  if (*(a1 + 16) != 4)
  {
    FigCSSComponentValueParserNodeCopyPreservedToken_cold_1(&v9);
    return v9;
  }

  if (!CFDictionaryGetValueIfPresent(*(a1 + 24), @"component_value_type", &cf))
  {
LABEL_13:
    v6 = 0;
    goto LABEL_14;
  }

  if (!cf || (v4 = CFGetTypeID(cf), v4 != CFStringGetTypeID()) || !CFEqual(cf, @"component_value_type_preserved_token"))
  {
    FigCSSComponentValueParserNodeCopyPreservedToken_cold_3(&v9);
    return v9;
  }

  if (!CFDictionaryGetValueIfPresent(*(a1 + 24), @"preserved_token", &cf))
  {
    goto LABEL_13;
  }

  if (!cf || (v5 = CFGetTypeID(cf), v5 != FigCSSTokenGetTypeID()))
  {
    FigCSSComponentValueParserNodeCopyPreservedToken_cold_2(&v9);
    return v9;
  }

  if (!cf)
  {
    goto LABEL_13;
  }

  v6 = CFRetain(cf);
LABEL_14:
  result = 0;
  *a2 = v6;
  return result;
}

uint64_t FigCSSComponentValueParserNodeSetPreservedToken(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    FigCSSComponentValueParserNodeSetPreservedToken_cold_3(&v7);
    return v7;
  }

  if (*(a1 + 16) != 4)
  {
    FigCSSComponentValueParserNodeSetPreservedToken_cold_1(&v5);
    return v5;
  }

  if (cf)
  {
    v3 = CFGetTypeID(cf);
    if (v3 != FigCSSTokenGetTypeID())
    {
      FigCSSComponentValueParserNodeSetPreservedToken_cold_2(&v6);
      return v6;
    }

    FigCFDictionarySetValue();
    FigCFDictionarySetValue();
  }

  else
  {
    CFDictionaryRemoveValue(*(a1 + 24), @"preserved_token");
    CFDictionaryRemoveValue(*(a1 + 24), @"component_value_type");
  }

  return 0;
}

uint64_t FigCSSComponentValueParserNodeCopyFunctionNode(uint64_t a1, void *a2)
{
  cf = 0;
  if (!a1)
  {
    FigCSSComponentValueParserNodeCopyFunctionNode_cold_5(&v9);
    return v9;
  }

  if (!a2)
  {
    FigCSSComponentValueParserNodeCopyFunctionNode_cold_4(&v9);
    return v9;
  }

  if (*(a1 + 16) != 4)
  {
    FigCSSComponentValueParserNodeCopyFunctionNode_cold_1(&v9);
    return v9;
  }

  if (!CFDictionaryGetValueIfPresent(*(a1 + 24), @"component_value_type", &cf))
  {
LABEL_14:
    v6 = 0;
    goto LABEL_15;
  }

  if (!cf || (v4 = CFGetTypeID(cf), v4 != CFStringGetTypeID()) || !CFEqual(cf, @"component_value_type_function"))
  {
    FigCSSComponentValueParserNodeCopyFunctionNode_cold_3(&v9);
    return v9;
  }

  if (!CFDictionaryGetValueIfPresent(*(a1 + 24), @"function", &cf))
  {
    goto LABEL_14;
  }

  if (!cf || (v5 = CFGetTypeID(cf), MEMORY[0x19A8D3660](&FigCSSParserNodeGetTypeID_sRegisterFigCSSParserNodeOnce, figCSSParserNodeRegisterFigCSSParserNode), v5 != sFigCSSParserNodeID))
  {
    FigCSSComponentValueParserNodeCopyFunctionNode_cold_2(&v9);
    return v9;
  }

  if (cf)
  {
    if (*(cf + 4) == 5)
    {
      v6 = CFRetain(cf);
LABEL_15:
      result = 0;
      *a2 = v6;
      return result;
    }

    return FigSignalErrorAtGM();
  }

  result = FigSignalErrorAtGM();
  if (!result)
  {
    return FigSignalErrorAtGM();
  }

  return result;
}

uint64_t FigCSSComponentValueParserNodeSetFunctionNode(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    FigCSSComponentValueParserNodeSetFunctionNode_cold_3(&v7);
    return v7;
  }

  if (*(a1 + 16) != 4)
  {
    FigCSSComponentValueParserNodeSetFunctionNode_cold_1(&v5);
    return v5;
  }

  if (cf)
  {
    v3 = CFGetTypeID(cf);
    MEMORY[0x19A8D3660](&FigCSSParserNodeGetTypeID_sRegisterFigCSSParserNodeOnce, figCSSParserNodeRegisterFigCSSParserNode);
    if (v3 != sFigCSSParserNodeID)
    {
      FigCSSComponentValueParserNodeSetFunctionNode_cold_2(&v6);
      return v6;
    }

    FigCFDictionarySetValue();
    FigCFDictionarySetValue();
  }

  else
  {
    CFDictionaryRemoveValue(*(a1 + 24), @"function");
    CFDictionaryRemoveValue(*(a1 + 24), @"component_value_type");
  }

  return 0;
}

uint64_t FigCSSComponentValueParserNodeCopySimpleBlock(uint64_t a1, void *a2)
{
  cf = 0;
  if (!a1)
  {
    FigCSSComponentValueParserNodeCopySimpleBlock_cold_5(&v9);
    return v9;
  }

  if (!a2)
  {
    FigCSSComponentValueParserNodeCopySimpleBlock_cold_4(&v9);
    return v9;
  }

  if (*(a1 + 16) != 4)
  {
    FigCSSComponentValueParserNodeCopySimpleBlock_cold_1(&v9);
    return v9;
  }

  if (!CFDictionaryGetValueIfPresent(*(a1 + 24), @"component_value_type", &cf))
  {
LABEL_14:
    v6 = 0;
    goto LABEL_15;
  }

  if (!cf || (v4 = CFGetTypeID(cf), v4 != CFStringGetTypeID()) || !CFEqual(cf, @"component_value_type_simple_block"))
  {
    FigCSSComponentValueParserNodeCopySimpleBlock_cold_3(&v9);
    return v9;
  }

  if (!CFDictionaryGetValueIfPresent(*(a1 + 24), @"simple_block", &cf))
  {
    goto LABEL_14;
  }

  if (!cf || (v5 = CFGetTypeID(cf), MEMORY[0x19A8D3660](&FigCSSParserNodeGetTypeID_sRegisterFigCSSParserNodeOnce, figCSSParserNodeRegisterFigCSSParserNode), v5 != sFigCSSParserNodeID))
  {
    FigCSSComponentValueParserNodeCopySimpleBlock_cold_2(&v9);
    return v9;
  }

  if (cf)
  {
    if (*(cf + 4) == 6)
    {
      v6 = CFRetain(cf);
LABEL_15:
      result = 0;
      *a2 = v6;
      return result;
    }

    return FigSignalErrorAtGM();
  }

  result = FigSignalErrorAtGM();
  if (!result)
  {
    return FigSignalErrorAtGM();
  }

  return result;
}

uint64_t FigCSSComponentValueParserNodeSetSimpleBlock(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    FigCSSComponentValueParserNodeSetSimpleBlock_cold_4(&v6);
    return v6;
  }

  if (*(a1 + 16) != 4)
  {
    FigCSSComponentValueParserNodeSetSimpleBlock_cold_1(&v6);
    return v6;
  }

  if (!cf)
  {
    CFDictionaryRemoveValue(*(a1 + 24), @"simple_block");
    CFDictionaryRemoveValue(*(a1 + 24), @"component_value_type");
    return 0;
  }

  v4 = CFGetTypeID(cf);
  MEMORY[0x19A8D3660](&FigCSSParserNodeGetTypeID_sRegisterFigCSSParserNodeOnce, figCSSParserNodeRegisterFigCSSParserNode);
  if (v4 != sFigCSSParserNodeID)
  {
    FigCSSComponentValueParserNodeSetSimpleBlock_cold_2(&v6);
    return v6;
  }

  if (*(cf + 4) != 6)
  {
    FigCSSComponentValueParserNodeSetSimpleBlock_cold_3(&v6);
    return v6;
  }

  FigCFDictionarySetValue();
  FigCFDictionarySetValue();
  return 0;
}

uint64_t FigCSSFunctionParserNodeCreate(const __CFAllocator *a1, CFTypeRef *a2)
{
  cf = 0;
  v3 = FigCSSParserNodeCreate(a1, 5, &cf);
  if (v3)
  {
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    *a2 = cf;
  }

  return v3;
}

uint64_t FigCSSFunctionParserNodeCopyName(uint64_t a1, void *a2)
{
  cf = 0;
  if (!a1)
  {
    FigCSSFunctionParserNodeCopyName_cold_4(&v7);
    return v7;
  }

  if (!a2)
  {
    FigCSSFunctionParserNodeCopyName_cold_3(&v7);
    return v7;
  }

  if (*(a1 + 16) != 5)
  {
    FigCSSFunctionParserNodeCopyName_cold_1(&v7);
    return v7;
  }

  if (!CFDictionaryGetValueIfPresent(*(a1 + 24), @"name", &cf))
  {
LABEL_9:
    v4 = 0;
    goto LABEL_10;
  }

  if (!cf || (v3 = CFGetTypeID(cf), v3 != FigCSSTokenGetTypeID()))
  {
    FigCSSFunctionParserNodeCopyName_cold_2(&v7);
    return v7;
  }

  if (!cf)
  {
    goto LABEL_9;
  }

  v4 = CFRetain(cf);
LABEL_10:
  result = 0;
  *a2 = v4;
  return result;
}

uint64_t FigCSSFunctionParserNodeSetName(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    FigCSSFunctionParserNodeSetName_cold_3(&v6);
    return v6;
  }

  if (*(a1 + 16) != 5)
  {
    FigCSSFunctionParserNodeSetName_cold_1(&v4);
    return v4;
  }

  if (cf)
  {
    v2 = CFGetTypeID(cf);
    if (v2 != FigCSSTokenGetTypeID())
    {
      FigCSSFunctionParserNodeSetName_cold_2(&v5);
      return v5;
    }

    FigCFDictionarySetValue();
  }

  else
  {
    CFDictionaryRemoveValue(*(a1 + 24), @"name");
  }

  return 0;
}

uint64_t FigCSSFunctionParserNodeCopyValue(uint64_t a1, void *a2)
{
  cf = 0;
  if (!a1)
  {
    FigCSSFunctionParserNodeCopyValue_cold_4(&v7);
    return v7;
  }

  if (!a2)
  {
    FigCSSFunctionParserNodeCopyValue_cold_3(&v7);
    return v7;
  }

  if (*(a1 + 16) != 5)
  {
    FigCSSFunctionParserNodeCopyValue_cold_1(&v7);
    return v7;
  }

  if (!CFDictionaryGetValueIfPresent(*(a1 + 24), @"value", &cf))
  {
LABEL_9:
    v4 = 0;
    goto LABEL_10;
  }

  if (!cf || (v3 = CFGetTypeID(cf), v3 != CFArrayGetTypeID()))
  {
    FigCSSFunctionParserNodeCopyValue_cold_2(&v7);
    return v7;
  }

  if (!cf)
  {
    goto LABEL_9;
  }

  v4 = CFRetain(cf);
LABEL_10:
  result = 0;
  *a2 = v4;
  return result;
}

uint64_t FigCSSFunctionParserNodeSetValue(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    FigCSSFunctionParserNodeSetValue_cold_3(&v6);
    return v6;
  }

  if (*(a1 + 16) != 5)
  {
    FigCSSFunctionParserNodeSetValue_cold_1(&v4);
    return v4;
  }

  if (cf)
  {
    v2 = CFGetTypeID(cf);
    if (v2 != CFArrayGetTypeID())
    {
      FigCSSFunctionParserNodeSetValue_cold_2(&v5);
      return v5;
    }

    FigCFDictionarySetValue();
  }

  else
  {
    CFDictionaryRemoveValue(*(a1 + 24), @"value");
  }

  return 0;
}

uint64_t FigCSSSimpleBlockParserNodeCreate(const __CFAllocator *a1, CFTypeRef *a2)
{
  cf = 0;
  v3 = FigCSSParserNodeCreate(a1, 6, &cf);
  if (v3)
  {
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    *a2 = cf;
  }

  return v3;
}

uint64_t FigCSSSimpleBlockParserNodeCopyAssociatedToken(uint64_t a1, void *a2)
{
  cf = 0;
  if (!a1)
  {
    FigCSSSimpleBlockParserNodeCopyAssociatedToken_cold_4(&v7);
    return v7;
  }

  if (!a2)
  {
    FigCSSSimpleBlockParserNodeCopyAssociatedToken_cold_3(&v7);
    return v7;
  }

  if (*(a1 + 16) != 6)
  {
    FigCSSSimpleBlockParserNodeCopyAssociatedToken_cold_1(&v7);
    return v7;
  }

  if (!CFDictionaryGetValueIfPresent(*(a1 + 24), @"associated_token", &cf))
  {
LABEL_9:
    v4 = 0;
    goto LABEL_10;
  }

  if (!cf || (v3 = CFGetTypeID(cf), v3 != FigCSSTokenGetTypeID()))
  {
    FigCSSSimpleBlockParserNodeCopyAssociatedToken_cold_2(&v7);
    return v7;
  }

  if (!cf)
  {
    goto LABEL_9;
  }

  v4 = CFRetain(cf);
LABEL_10:
  result = 0;
  *a2 = v4;
  return result;
}

uint64_t FigCSSSimpleBlockParserNodeSetAssociatedToken(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    FigCSSSimpleBlockParserNodeSetAssociatedToken_cold_3(&v6);
    return v6;
  }

  if (*(a1 + 16) != 6)
  {
    FigCSSSimpleBlockParserNodeSetAssociatedToken_cold_1(&v4);
    return v4;
  }

  if (cf)
  {
    v2 = CFGetTypeID(cf);
    if (v2 != FigCSSTokenGetTypeID())
    {
      FigCSSSimpleBlockParserNodeSetAssociatedToken_cold_2(&v5);
      return v5;
    }

    FigCFDictionarySetValue();
  }

  else
  {
    CFDictionaryRemoveValue(*(a1 + 24), @"associated_token");
  }

  return 0;
}

uint64_t FigCSSSimpleBlockParserNodeCopyValue(uint64_t a1, void *a2)
{
  cf = 0;
  if (!a1)
  {
    FigCSSSimpleBlockParserNodeCopyValue_cold_4(&v7);
    return v7;
  }

  if (!a2)
  {
    FigCSSSimpleBlockParserNodeCopyValue_cold_3(&v7);
    return v7;
  }

  if (*(a1 + 16) != 6)
  {
    FigCSSSimpleBlockParserNodeCopyValue_cold_1(&v7);
    return v7;
  }

  if (!CFDictionaryGetValueIfPresent(*(a1 + 24), @"value", &cf))
  {
LABEL_9:
    v4 = 0;
    goto LABEL_10;
  }

  if (!cf || (v3 = CFGetTypeID(cf), v3 != CFArrayGetTypeID()))
  {
    FigCSSSimpleBlockParserNodeCopyValue_cold_2(&v7);
    return v7;
  }

  if (!cf)
  {
    goto LABEL_9;
  }

  v4 = CFRetain(cf);
LABEL_10:
  result = 0;
  *a2 = v4;
  return result;
}

uint64_t FigCSSSimpleBlockParserNodeSetValue(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    FigCSSSimpleBlockParserNodeSetValue_cold_3(&v6);
    return v6;
  }

  if (*(a1 + 16) != 6)
  {
    FigCSSSimpleBlockParserNodeSetValue_cold_1(&v4);
    return v4;
  }

  if (cf)
  {
    v2 = CFGetTypeID(cf);
    if (v2 != CFArrayGetTypeID())
    {
      FigCSSSimpleBlockParserNodeSetValue_cold_2(&v5);
      return v5;
    }

    FigCFDictionarySetValue();
  }

  else
  {
    CFDictionaryRemoveValue(*(a1 + 24), @"value");
  }

  return 0;
}

uint64_t figCSSParserNode_Init(uint64_t result)
{
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

void figCSSParserNode_Finalize(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 24) = 0;
  }
}

CFStringRef figCSSParserNode_CopyFormattingDesc(uint64_t a1)
{
  v2 = FigCSSParserNodeMapNodeTypeToName(*(a1 + 16));
  if (FigCFDictionaryGetCount() < 1)
  {
    return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"FigCSSParserNode: node = <%p> nodeType = %@", a1, v2);
  }

  v3 = FigCFCopyCompactDescription();
  if (!v3)
  {
    return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"FigCSSParserNode: node = <%p> nodeType = %@", a1, v2);
  }

  v4 = v3;
  v5 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"FigCSSParserNode: node = <%p> nodeType = %@ attributes = { %@ }", a1, v2, v3);
  CFRelease(v4);
  return v5;
}

CFStringRef figCSSParserNode_CopyDebugDesc(uint64_t a1)
{
  if (FigCFDictionaryGetCount() <= 0)
  {
    v3 = FigCSSParserNodeMapNodeTypeToName(*(a1 + 16));
  }

  else
  {
    v2 = FigCFCopyCompactDescription();
    v3 = FigCSSParserNodeMapNodeTypeToName(*(a1 + 16));
    if (v2)
    {
      v4 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"FigCSSParserNode: node = <%p> nodeType = %@ attributes = { %@ } attributesDict = <%p>", a1, v3, v2, *(a1 + 24));
      CFRelease(v2);
      return v4;
    }
  }

  return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"FigCSSParserNode: node = <%p> nodeType = %@  attributesDict = <%p>", a1, v3, *(a1 + 24));
}

__CFString *FigCSSParserNodeMapNodeTypeToName(unsigned int a1)
{
  if (a1 < 7)
  {
    return off_1E748B9B0[a1];
  }

  FigSignalErrorAtGM();
  return @"invalid";
}

uint64_t FigByteStreamRemoteGetObjectID(uint64_t a1, void *a2)
{
  if (a1)
  {
    v4 = *(CMBaseObjectGetVTable() + 16);
    if (v4 && v4 == &kRemoteByteStream_Class)
    {
      if (a2)
      {

        return frbs_GetObjectID(a1, a2);
      }

      else
      {
        FigByteStreamRemoteGetObjectID_cold_1(&v6);
        return v6;
      }
    }

    else
    {
      FigByteStreamRemoteGetObjectID_cold_2(&v7);
      return v7;
    }
  }

  else
  {
    FigByteStreamRemoteGetObjectID_cold_3(&v8);
    return v8;
  }
}

uint64_t frbs_GetObjectID(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 170))
  {
    frbs_GetObjectID_cold_1(&v6);
    return v6;
  }

  else
  {
    v4 = DerivedStorage;
    result = 0;
    *a2 = *v4;
  }

  return result;
}

uint64_t frbs_DeadObjectCallback()
{
  result = CMBaseObjectGetDerivedStorage();
  *(result + 170) = 1;
  return result;
}

uint64_t remoteByteStream_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 16);
  if (v1)
  {
    CFRelease(v1);
  }

  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  v2 = *(DerivedStorage + 24);
  if (v2)
  {
    CFRelease(v2);
  }

  if (*(DerivedStorage + 72))
  {
    FigSimpleMutexDestroy();
    v3 = *(DerivedStorage + 32);
    if (v3)
    {
      CFRelease(v3);
      *(DerivedStorage + 32) = 0;
    }

    *(DerivedStorage + 72) = 0;
    *(DerivedStorage + 80) = 0;
  }

  FigByteStreamStatsTeardownWorker();
  if (*(DerivedStorage + 8))
  {
    FigXPCConnectionDisassociateObject();
    if (!*(DerivedStorage + 170) && !FigXPCCreateBasicMessage())
    {
      FigXPCConnectionSendSyncMessage();
    }

    CFRelease(*(DerivedStorage + 8));
  }

  v4 = *(DerivedStorage + 152);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 152) = 0;
  }

  return FigXPCRelease();
}

__CFString *remoteByteStream_CopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v4 = CFCopyDescription(*(DerivedStorage + 16));
  CFStringAppendFormat(Mutable, 0, @"<RemoteByteStream %p/%016llx>{%@} entireLength %lld", a1, *DerivedStorage, v4, *(DerivedStorage + 160));
  if (*(DerivedStorage + 8))
  {
    CFStringAppendFormat(Mutable, 0, @" connection: {%@}}", *(DerivedStorage + 8));
  }

  if (*(DerivedStorage + 24))
  {
    CFStringAppendFormat(Mutable, 0, @" localByteStream: {%@}}", *(DerivedStorage + 24));
  }

  if (*(DerivedStorage + 168))
  {
    CFStringAppendFormat(Mutable, 0, @" EntireLengthAvailable");
  }

  if (*(DerivedStorage + 169))
  {
    CFStringAppendFormat(Mutable, 0, @" Writable");
  }

  if (*(DerivedStorage + 170))
  {
    CFStringAppendFormat(Mutable, 0, @" SERVER DIED");
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return Mutable;
}

uint64_t MPEG2PSInitialize(void *a1)
{
  a1[21] = MPEG2PSInject;
  a1[22] = MPEG2PSReset;
  v2 = malloc_type_calloc(1uLL, 0x60uLL, 0x10A0040A345989DuLL);
  if (!v2)
  {
    return 12;
  }

  *v2 = a1;
  v2[10] = 1;
  *(v2 + 3) = 0;
  *(v2 + 4) = v2 + 6;
  v5 = a1[2];
  v4 = a1 + 2;
  v3 = v5;
  *(v2 + 1) = v5;
  if (v5)
  {
    *(v3 + 16) = v2 + 2;
  }

  v6 = 0;
  *v4 = v2;
  *(v2 + 2) = v4;
  return v6;
}

void MPEG2PSReset(uint64_t a1)
{
  v2 = *(a1 + 416);
  if (v2)
  {
    CFRelease(v2);
  }

  *(a1 + 416) = 0;
  *(a1 + 408) = 0;
}

void MPEG2PSCleanVideoSearch(uint64_t a1)
{
  v1 = *(a1 + 48);
  PesPacketListClean(v1);
  *(v1 + 16) = 0;
  *(v1 + 24) = -1;
}

void MPEG2PSDeleteVideoSearchPrivateData(uint64_t a1)
{
  v2 = *(a1 + 48);
  PesPacketListClean(v2);
  *(v2 + 16) = 0;
  *(v2 + 24) = -1;
  free(*(a1 + 48));
  *(a1 + 48) = 0;
}

void *MPEG2PSVideoSearchProcessHeader(void *result, int a2)
{
  if ((a2 & 0xFFFFFF00) != 0x100)
  {
    return result;
  }

  ++result[4];
  if (a2 == 182 || a2 > 0xB8u || (a2 & 0xFE) == 0xB0)
  {
    ++result[5];
    v2 = 6;
    goto LABEL_12;
  }

  v2 = 5;
  if (a2 > 0x7Fu || a2 - 64 <= 0xC && ((1 << (a2 - 64)) & 0x1E41) != 0 || a2 <= 8u && ((1 << a2) & 0x1A1) != 0)
  {
LABEL_12:
    ++result[v2];
    if (a2 - 179 <= 5 && ((1 << (a2 + 77)) & 0x25) != 0 || !a2)
    {
      ++result[7];
    }
  }

  if ((a2 & 0x3Fu) <= 9 && ((1 << (a2 & 0x3F)) & 0x2E0) != 0)
  {
    ++result[8];
  }

  return result;
}

uint64_t MPEG2PSVideoSearchSetType(uint64_t a1, void **a2, uint64_t a3)
{
  v5 = *a2;
  v6 = (a1 + 840);
  *a2 = 0u;
  *(a1 + 856) = 0;
  *(a1 + 840) = 0u;
  v7 = *(a1 + 48);
  PesPacketListClean(v7);
  *(v7 + 16) = 0;
  *(v7 + 24) = -1;
  free(*(a1 + 48));
  *(a1 + 48) = 0;
  *(a1 + 56) = a3;
  v8 = *(a1 + 8);
  v9 = v8[7];
  if (v9)
  {
    v9(*v8, v8[9], *(*a1 + 40), *(a1 + 60), a3);
  }

  v10 = 0;
  if (v5)
  {
    do
    {
      if (!v10)
      {
        v11 = *v6;
        if (*v6)
        {
          v12 = v5[1];
          DataLength = CMBlockBufferGetDataLength(v12);
          v10 = v11(a1, v12, 0, 0, DataLength, v5 + 2);
        }

        else
        {
          v10 = 0;
        }
      }

      v14 = v5[1];
      if (v14)
      {
        CFRelease(v14);
      }

      v15 = *v5;
      free(v5);
      v5 = v15;
    }

    while (v15);
  }

  return v10;
}

uint64_t RegisterFigAlternateFilterMonitorType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigAlternateFilterMonitorGetTypeID()
{
  MEMORY[0x19A8D3660](&FigAlternateFilterMonitorGetClassID_sRegisterFigAlternateFilterMonitorTypeOnce, RegisterFigAlternateFilterMonitorType);

  return CMBaseClassGetCFTypeID();
}

uint64_t fam_postStateChangedNotification(const void *a1, uint64_t a2, const void *a3, uint64_t a4, const void *a5)
{
  v7 = CFGetAllocator(a1);
  Mutable = CFDictionaryCreateMutable(v7, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v9 = Mutable;
    FigCFDictionarySetInt64();
    FigCFDictionarySetInt64();
    if (a3)
    {
      CFDictionarySetValue(v9, @"AlternateFilterMonitorParameter_OldFilter", a3);
    }

    if (a5)
    {
      CFDictionarySetValue(v9, @"AlternateFilterMonitorParameter_NewFilter", a5);
    }

    CMNotificationCenterGetDefaultLocalCenter();
    v10 = CMNotificationCenterPostNotification();
    CFRelease(v9);
    return v10;
  }

  else
  {
    fam_postStateChangedNotification_cold_1(&v12);
    return v12;
  }
}

uint64_t FigAlternateFilterMonitorUtilityPostExpandersAddedNotification()
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

uint64_t FigAlternateFilterMonitorCreateForNotification(const __CFAllocator *a1, __int128 *a2, const void *a3, const void *a4, const void *a5, void *a6)
{
  if (!a6)
  {
    FigAlternateFilterMonitorCreateForNotification_cold_2(&v21);
    return v21;
  }

  if (!a3)
  {
    FigAlternateFilterMonitorCreateForNotification_cold_1(&v21);
    return v21;
  }

  MEMORY[0x19A8D3660](&FigAlternateFilterMonitorGetClassID_sRegisterFigAlternateFilterMonitorTypeOnce, RegisterFigAlternateFilterMonitorType);
  v12 = CMDerivedObjectCreate();
  if (v12)
  {
    return v12;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v14 = FigReentrantMutexCreate();
  *DerivedStorage = v14;
  if (!v14)
  {
    return FigSignalErrorAtGM();
  }

  v15 = *a2;
  *(DerivedStorage + 24) = *(a2 + 2);
  *(DerivedStorage + 8) = v15;
  *(DerivedStorage + 32) = CFRetain(a3);
  v16 = a4 ? CFRetain(a4) : 0;
  *(DerivedStorage + 40) = v16;
  v17 = a5 ? CFRetain(a5) : 0;
  *(DerivedStorage + 48) = v17;
  v18 = MEMORY[0x1E695E9E8];
  *(DerivedStorage + 64) = CFDictionaryCreateMutable(a1, 0, 0, MEMORY[0x1E695E9E8]);
  *(DerivedStorage + 56) = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], v18);
  v12 = FigAlternateFilterMonitorTriggerCreateForNotification(a1, a3, a4, (DerivedStorage + 72));
  if (v12)
  {
    return v12;
  }

  v19 = FigAlternateFilterMonitorTriggerAddObserver(*(DerivedStorage + 72), 0, famfon_triggerCallback, 0);
  if (!v19)
  {
    *a6 = 0;
  }

  return v19;
}

uint64_t famfon_triggerCallback(uint64_t a1, const void *a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = (*(DerivedStorage + 8))(a2, *(DerivedStorage + 40), a3, *(DerivedStorage + 48));

  return famfon_setState(a2, v6);
}

uint64_t FigAlternateFilterMonitorCreateForPreferredVideoFormat(const __CFAllocator *a1, CFTypeRef *a2)
{
  cf = 0;
  v18 = 0;
  DisplayVideoRangeNotificationSingleton = FPSupport_GetDisplayVideoRangeNotificationSingleton();
  v5 = FigAlternateFilterMonitorCreateForNotification(a1, FigAlternateFilterMonitorCreateForPreferredVideoFormat_callbacks, @"DisplayVideoRangeChanged", DisplayVideoRangeNotificationSingleton, 0, &v18);
  if (!v5)
  {
    v6 = 0;
    while (1)
    {
      v7 = FPSupportVideoRangeToAlternateVideoRange(v6);
      v8 = v6 == 3 ? 5 : 9;
      v5 = FigAlternatePreferredVideoFormatFilterCreate(a1, v7, v8, &cf);
      if (v5)
      {
        break;
      }

      v10 = cf;
      v9 = v18;
      v11 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (!v11)
      {
        goto LABEL_15;
      }

      v5 = v11(v9, v10, v6);
      if (v5)
      {
        break;
      }

      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      if (++v6 == 6)
      {
        v12 = v18;
        BestSupportedVideoRangeFromDisplayList = famvr_getBestSupportedVideoRangeFromDisplayList(v18, 0);
        v14 = *(*(CMBaseObjectGetVTable() + 16) + 16);
        if (!v14)
        {
LABEL_15:
          v15 = 4294954514;
          goto LABEL_16;
        }

        v15 = v14(v12, BestSupportedVideoRangeFromDisplayList);
        if (v15)
        {
          goto LABEL_16;
        }

        *a2 = v18;
        v18 = 0;
        goto LABEL_18;
      }
    }
  }

  v15 = v5;
LABEL_16:
  if (v18)
  {
    CFRelease(v18);
  }

LABEL_18:
  if (cf)
  {
    CFRelease(cf);
  }

  return v15;
}

uint64_t fampvr_handleTriggerInvocationForPreferredVideoFormat(const void *a1, uint64_t a2, const __CFArray *a3)
{
  number = 0;
  valuePtr = -1;
  v5 = CFGetAllocator(a1);
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v6 && (v6(a1, @"AlternateFilterMonitorProperty_PreferredVideoRange", v5, &number), number) && (CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr), valuePtr < 4))
  {
    if (valuePtr - 1 > 2)
    {
      BestSupportedVideoRangeFromDisplayList = 0;
    }

    else
    {
      BestSupportedVideoRangeFromDisplayList = qword_196E777E0[valuePtr - 1];
    }
  }

  else
  {
    BestSupportedVideoRangeFromDisplayList = famvr_getBestSupportedVideoRangeFromDisplayList(a1, a3);
  }

  if (number)
  {
    CFRelease(number);
  }

  return BestSupportedVideoRangeFromDisplayList;
}

uint64_t fampvr_didSetPropertyCallbackForPreferredVideoFormat(const void *a1, uint64_t a2, const __CFNumber *a3)
{
  if (!FigCFEqual())
  {
    if (!FigCFEqual())
    {
      if (FigCFEqual())
      {
        valuePtr = -1;
        if (a3)
        {
          CFNumberGetValue(a3, kCFNumberSInt32Type, &valuePtr);
          if (valuePtr >= 4)
          {
            fampvr_didSetPropertyCallbackForPreferredVideoFormat_cold_1(&v18);
            return v18;
          }

          v10 = 0;
          if (valuePtr - 1 > 2)
          {
            BestSupportedVideoRangeFromDisplayList = 0;
          }

          else
          {
            BestSupportedVideoRangeFromDisplayList = qword_196E777E0[valuePtr - 1];
          }
        }

        else
        {
          v18 = 0;
          v14 = CFGetAllocator(a1);
          v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v15)
          {
            v15(a1, @"AlternateFilterMonitorProperty_DisplayList", v14, &v18);
            v10 = v18;
          }

          else
          {
            v10 = 0;
          }

          BestSupportedVideoRangeFromDisplayList = famvr_getBestSupportedVideoRangeFromDisplayList(a1, v10);
        }

        v16 = *(*(CMBaseObjectGetVTable() + 16) + 16);
        if (v16)
        {
          v12 = v16(a1, BestSupportedVideoRangeFromDisplayList);
LABEL_27:
          v7 = v12;
          if (!v10)
          {
            return v7;
          }

          goto LABEL_30;
        }

LABEL_29:
        v7 = 4294954514;
        if (!v10)
        {
          return v7;
        }

LABEL_30:
        CFRelease(v10);
        return v7;
      }

      if (!FigCFEqual())
      {
        return 0;
      }
    }

    v18 = 0;
    v8 = CFGetAllocator(a1);
    v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v9)
    {
      v9(a1, @"AlternateFilterMonitorProperty_DisplayList", v8, &v18);
      v10 = v18;
    }

    else
    {
      v10 = 0;
    }

    v11 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v11)
    {
      v12 = v11(a1, v10);
      goto LABEL_27;
    }

    goto LABEL_29;
  }

  v5 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v5)
  {
    return 4294954514;
  }

  return v5(a1, a3);
}

uint64_t famvr_getBestSupportedVideoRangeFromDisplayList(const void *a1, const __CFArray *a2)
{
  number = 0;
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v4)
  {
    v4(a1, @"AlternateFilterMonitorProperty_OverrideVideoRange", *MEMORY[0x1E695E480], &number);
    if (number)
    {
      valuePtr = 0;
      CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr);
      v5 = valuePtr;
      if (valuePtr >= 6)
      {
        FigSignalErrorAtGM();
      }

      else if (valuePtr)
      {
        goto LABEL_8;
      }
    }
  }

  MaxContentFrameRate = fafm_getMaxContentFrameRate(a1);
  fafm_getBestSupportedDisplayFromDisplayList(a2, v8, MaxContentFrameRate);
  v5 = v8[0];
LABEL_8:
  if (number)
  {
    CFRelease(number);
  }

  return v5;
}

uint64_t FigAlternateFilterMonitorCreateForSupportedVideoRange(const __CFAllocator *a1, CFTypeRef *a2)
{
  cf = 0;
  v20 = 0;
  DisplayVideoRangeNotificationSingleton = FPSupport_GetDisplayVideoRangeNotificationSingleton();
  v5 = FigAlternateFilterMonitorCreateForNotification(a1, FigAlternateFilterMonitorCreateForSupportedVideoRange_callbacks, @"DisplayVideoRangeChanged", DisplayVideoRangeNotificationSingleton, 0, &v20);
  if (!v5)
  {
    v6 = 0;
    while (1)
    {
      v5 = FigAlternateSupportedVideoRangeFilterCreate(a1, v6, &cf);
      if (v5)
      {
        break;
      }

      v8 = cf;
      v7 = v20;
      v9 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (!v9)
      {
        goto LABEL_15;
      }

      v5 = v9(v7, v8, v6);
      if (v5)
      {
        break;
      }

      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      if (++v6 == 6)
      {
        BestSupportedVideoRangeFromDisplayList = famvr_getBestSupportedVideoRangeFromDisplayList(v20, 0);
        v11 = v20;
        v12 = *(*(CMBaseObjectGetVTable() + 16) + 16);
        if (!v12)
        {
LABEL_15:
          v17 = 4294954514;
          goto LABEL_16;
        }

        v5 = v12(v11, BestSupportedVideoRangeFromDisplayList);
        if (v5)
        {
          break;
        }

        SInt32 = FigCFNumberCreateSInt32();
        v14 = v20;
        if (SInt32)
        {
          v15 = SInt32;
          v16 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v16)
          {
            v16(v14, @"AlternateFilterMonitorProperty_CurrentDisplayVideoRange", v15);
          }

          *a2 = v20;
          v20 = 0;
          CFRelease(v15);
          v17 = 0;
        }

        else
        {
          v17 = 0;
          *a2 = v20;
          v20 = 0;
        }

        goto LABEL_18;
      }
    }
  }

  v17 = v5;
LABEL_16:
  if (v20)
  {
    CFRelease(v20);
  }

LABEL_18:
  if (cf)
  {
    CFRelease(cf);
  }

  return v17;
}

uint64_t famsvr_handleTriggerInvocationForSupportedVideoRange(const void *a1, uint64_t a2, const __CFArray *a3)
{
  BestSupportedVideoRangeFromDisplayList = famvr_getBestSupportedVideoRangeFromDisplayList(a1, a3);
  SInt32 = FigCFNumberCreateSInt32();
  if (SInt32)
  {
    v6 = SInt32;
    v7 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v7)
    {
      v7(a1, @"AlternateFilterMonitorProperty_CurrentDisplayVideoRange", v6);
    }

    CFRelease(v6);
  }

  return BestSupportedVideoRangeFromDisplayList;
}

uint64_t famsvr_didSetPropertyCallbackForSupportedVideoRange(const void *a1, uint64_t a2, uint64_t a3)
{
  if (!FigCFEqual())
  {
    if (!FigCFEqual())
    {
      return 0;
    }

    v12 = 0;
    v8 = CFGetAllocator(a1);
    v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v9)
    {
      v9(a1, @"AlternateFilterMonitorProperty_DisplayList", v8, &v12);
      v10 = v12;
    }

    else
    {
      v10 = 0;
    }

    v11 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v11)
    {
      v7 = v11(a1, v10);
      if (!v10)
      {
        return v7;
      }
    }

    else
    {
      v7 = 4294954514;
      if (!v10)
      {
        return v7;
      }
    }

    CFRelease(v10);
    return v7;
  }

  v5 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v5)
  {
    return 4294954514;
  }

  return v5(a1, a3);
}

uint64_t FigAlternateFilterMonitorCreateForSupportedFramerateBucketCap(const __CFAllocator *a1, CFTypeRef *a2)
{
  cf = 0;
  v16 = 0;
  DisplayVideoRangeNotificationSingleton = FPSupport_GetDisplayVideoRangeNotificationSingleton();
  v5 = FigAlternateFilterMonitorCreateForNotification(a1, FigAlternateFilterMonitorCreateForSupportedFramerateBucketCap_callbacks, @"DisplayVideoRangeChanged", DisplayVideoRangeNotificationSingleton, 0, &v16);
  if (!v5)
  {
    v6 = 0;
    while (1)
    {
      v5 = FigAlternateFramerateBucketCapFilterCreate(a1, v6, &cf);
      if (v5)
      {
        break;
      }

      v8 = cf;
      v7 = v16;
      v9 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (!v9)
      {
        goto LABEL_12;
      }

      v5 = v9(v7, v8, v6);
      if (v5)
      {
        break;
      }

      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      if (++v6 == 3)
      {
        fafm_getMaxContentFrameRate(v16);
        v17 = 0u;
        v18 = 0u;
        FPSupport_GetMainDisplayVideoRangeAndSizeAndFrameRate(&v17, &v17 + 1, &v18 + 1);
        v10 = FigFrameRateToFrameRateBucket(*(&v18 + 1));
        v11 = v16;
        v12 = *(*(CMBaseObjectGetVTable() + 16) + 16);
        if (!v12)
        {
LABEL_12:
          v13 = 4294954514;
          goto LABEL_13;
        }

        v13 = v12(v11, v10);
        if (v13)
        {
          goto LABEL_13;
        }

        *a2 = v16;
        v16 = 0;
        goto LABEL_15;
      }
    }
  }

  v13 = v5;
LABEL_13:
  if (v16)
  {
    CFRelease(v16);
  }

LABEL_15:
  if (cf)
  {
    CFRelease(cf);
  }

  return v13;
}

uint64_t fampfr_handleTriggerInvocationForSupportedFramerateBucketCap(const void *a1, uint64_t a2, const __CFArray *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  cf[0] = 0;
  v5 = CFGetAllocator(a1);
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v6)
  {
    v7 = v6(a1, @"AlternateFilterMonitorProperty_PreferredFrameRate", v5, cf);
    v8 = cf[0];
    if (v7)
    {
      v10 = 0.0;
      if (!cf[0])
      {
LABEL_5:
        if (v10 != 0.0)
        {
          goto LABEL_7;
        }

        goto LABEL_6;
      }
    }

    else
    {
      FigGetDoubleFromCFTypeWithDefault();
      v10 = v9;
      v8 = cf[0];
      if (!cf[0])
      {
        goto LABEL_5;
      }
    }

    CFRelease(v8);
    goto LABEL_5;
  }

LABEL_6:
  *cf = 0u;
  v15 = 0u;
  MaxContentFrameRate = fafm_getMaxContentFrameRate(a1);
  fafm_getBestSupportedDisplayFromDisplayList(a3, cf, MaxContentFrameRate);
  v10 = *(&v15 + 1);
LABEL_7:
  if (dword_1EAF17490)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return FigFrameRateToFrameRateBucket(v10);
}

uint64_t fampfr_didSetPropertyCallbackForSupportedFramerateBucketCap(const void *a1, uint64_t a2, uint64_t a3)
{
  if (FigCFEqual())
  {
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v5)
    {

      return v5(a1, a3);
    }

    else
    {
      return 4294954514;
    }
  }

  else
  {
    result = FigCFEqual();
    if (result)
    {
      fampfr_didSetPropertyCallbackForSupportedFramerateBucketCap_cold_1(a1, &v7);
      return v7;
    }
  }

  return result;
}

uint64_t FigAlternateFilterMonitorCreateForLowPowerMode(const __CFAllocator *a1, CFTypeRef *a2)
{
  v14 = 0;
  cf = 0;
  PowerStateNotificationSingleton = FPSupport_GetPowerStateNotificationSingleton();
  v5 = FigAlternateFilterMonitorCreateForNotification(a1, off_1F0AE8958, @"PowerStateChanged", PowerStateNotificationSingleton, 0, &cf);
  if (v5)
  {
    goto LABEL_14;
  }

  v5 = FigAlternateLowPowerModeFilterCreate(a1, &v14);
  if (v5)
  {
    goto LABEL_14;
  }

  v7 = v14;
  v6 = cf;
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v8)
  {
LABEL_8:
    v12 = 4294954514;
    goto LABEL_9;
  }

  v5 = v8(v6, v7, 1);
  if (v5)
  {
LABEL_14:
    v12 = v5;
    goto LABEL_9;
  }

  v9 = cf;
  v10 = FPSupport_IsInLowPowerMode();
  v11 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v11)
  {
    goto LABEL_8;
  }

  v12 = v11(v9, v10);
  if (!v12)
  {
    *a2 = cf;
    cf = 0;
    goto LABEL_11;
  }

LABEL_9:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_11:
  if (v14)
  {
    CFRelease(v14);
  }

  return v12;
}

uint64_t FigAlternateFilterMonitorCreateForVideoRangeFramerateCap(const __CFAllocator *a1, uint64_t a2, CFTypeRef *a3)
{
  v16 = 0;
  cf = 0;
  v6 = CFDataCreate(a1, a2, 32);
  if (v6)
  {
    DisplayVideoRangeNotificationSingleton = FPSupport_GetDisplayVideoRangeNotificationSingleton();
    v8 = FigAlternateFilterMonitorCreateForNotification(a1, off_1F0AE8970, @"DisplayVideoRangeChanged", DisplayVideoRangeNotificationSingleton, v6, &cf);
    if (v8 || (v9 = FPSupportVideoRangeToAlternateVideoRange(*a2), v10 = FigFrameRateToFrameRateBucket(*(a2 + 24)), v8 = FigAlternateVideoRangeAndFrameRateBucketFilterCreate(a1, v9, v10, &v16), v8))
    {
      v14 = v8;
    }

    else
    {
      v12 = v16;
      v11 = cf;
      v13 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v13)
      {
        v14 = v13(v11, v12, 1);
        if (!v14)
        {
          *a3 = cf;
          cf = 0;
          goto LABEL_10;
        }
      }

      else
      {
        v14 = 4294954514;
      }
    }
  }

  else
  {
    FigAlternateFilterMonitorCreateForVideoRangeFramerateCap_cold_1(&v18);
    v14 = v18;
  }

  if (cf)
  {
    CFRelease(cf);
  }

LABEL_10:
  if (v16)
  {
    CFRelease(v16);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return v14;
}

BOOL famfrc_handleTriggerInvocationForFramerateCap(const void *a1, uint64_t a2, const __CFArray *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = 0u;
  v10 = 0u;
  MaxContentFrameRate = fafm_getMaxContentFrameRate(a1);
  fafm_getBestSupportedDisplayFromDisplayList(a3, &v9, MaxContentFrameRate);
  BytePtr = CFDataGetBytePtr(*(DerivedStorage + 48));
  return *&v10 > *(BytePtr + 2) && *(&v9 + 1) > *(BytePtr + 1) && v9 > *BytePtr;
}

uint64_t famfrc_didSetPropertyCallbackForFrameRateCap(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = FigCFEqual();
  if (result)
  {
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v6)
    {

      return v6(a1, a3);
    }

    else
    {
      return 4294954514;
    }
  }

  return result;
}

uint64_t FigAlternateFilterMonitorCreateForRenditionDenyList(uint64_t a1, Boolean (__cdecl *a2)(const void *, const void *), CFTypeRef *a3)
{
  cf = 0;
  v3 = *(MEMORY[0x1E695E9C0] + 16);
  *&v12.version = *MEMORY[0x1E695E9C0];
  *&v12.release = v3;
  if (!a3)
  {
    FigAlternateFilterMonitorCreateForRenditionDenyList_cold_1(&v14);
    return v14;
  }

  MEMORY[0x19A8D3660](&FigAlternateFilterMonitorGetClassID_sRegisterFigAlternateFilterMonitorTypeOnce, RegisterFigAlternateFilterMonitorType);
  v6 = CMDerivedObjectCreate();
  v7 = cf;
  if (!v6)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v9 = FigSimpleMutexCreate();
    *DerivedStorage = v9;
    if (v9)
    {
      if (a2)
      {
        v10 = a2;
      }

      else
      {
        v10 = MEMORY[0x1E695D780];
      }

      DerivedStorage[1] = v10;
      v12.equal = v10;
      v6 = 0;
      DerivedStorage[3] = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, &v12);
      *a3 = cf;
      return v6;
    }

    v6 = FigSignalErrorAtGM();
    v7 = cf;
  }

  if (v7)
  {
    CFRelease(v7);
  }

  return v6;
}

uint64_t FigAlternateFilterMonitorCreateForExpensiveNetwork(const __CFAllocator *a1, const void *a2, CFTypeRef *a3)
{
  cf = 0;
  v4 = FigAlternateFilterMonitorCreateForNotification(a1, off_1F0AE89A0, @"NetworkIsExpensiveChanged", a2, 0, &cf);
  if (v4)
  {
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    *a3 = cf;
  }

  return v4;
}

uint64_t FigAlternateFilterMonitorCreateForStreamingRestrictions(const __CFAllocator *a1, CFTypeRef *a2)
{
  v15 = 0;
  v12 = 0;
  cf = 0;
  v11 = 0;
  *bytes = FigSimpleMutexCreate();
  if (!*bytes)
  {
    FigAlternateFilterMonitorCreateForStreamingRestrictions_cold_2(&v16);
    v4 = 0;
LABEL_17:
    v9 = v16;
    goto LABEL_10;
  }

  v15 = 0;
  v4 = CFDataCreate(a1, bytes, 16);
  if (!v4)
  {
    FigAlternateFilterMonitorCreateForStreamingRestrictions_cold_1(&v16);
    goto LABEL_17;
  }

  FigSimpleMutexLock();
  v5 = FigAlternateFilterMonitorCreateForNotification(a1, off_1F0AE89B8, @"StreamingRestrictions_RestrictionsChanged", 0, v4, &cf);
  if (v5)
  {
    v9 = v5;
  }

  else
  {
    FigStreamingRestrictionsGetLatestRestrictions(&v12 + 1, &v12, &v11);
    FilterIfNecessary = famu_getNewStateAndCreateFilterIfNecessary(cf, SHIDWORD(v12), v12, v11);
    v7 = cf;
    v8 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v8)
    {
      v9 = v8(v7, FilterIfNecessary);
      if (!v9)
      {
        FigSimpleMutexUnlock();
        *a2 = cf;
        cf = 0;
        *bytes = 0;
        goto LABEL_10;
      }
    }

    else
    {
      v9 = 4294954514;
    }
  }

  if (*bytes)
  {
    FigSimpleMutexUnlock();
  }

LABEL_10:
  FigSimpleMutexDestroy();
  if (cf)
  {
    CFRelease(cf);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return v9;
}

BOOL famu_getNewStateAndCreateFilterIfNecessary(uint64_t a1, int a2, int a3, unsigned int a4)
{
  if (!(a3 | a2 | a4))
  {
    return 0;
  }

  v4 = a4;
  v20 = 0;
  v21 = 0;
  v18 = 0;
  v19 = 0;
  cf = 0;
  AllocatorForMedia = FigGetAllocatorForMedia();
  if (FigAlternateFilterTreeCreate(AllocatorForMedia, &v20))
  {
    goto LABEL_47;
  }

  v9 = MEMORY[0x1E695E480];
  if (a2 > 1)
  {
    if (a2 == 3)
    {
      v10 = 1440.0;
      goto LABEL_13;
    }

    if (a2 == 2)
    {
      v10 = 1080.0;
      goto LABEL_13;
    }

LABEL_11:
    v10 = 2147483650.0;
    goto LABEL_13;
  }

  if (!a2)
  {
    goto LABEL_15;
  }

  if (a2 != 1)
  {
    goto LABEL_11;
  }

  v10 = 720.0;
LABEL_13:
  if (FigAlternateResolutionCapFilterCreate(*MEMORY[0x1E695E480], @"ResolutionCap", 700, &v19, 2147483650.0, v10) || FigAlternateFilterTreeInsertLeaf(v20, v19, 700))
  {
LABEL_47:
    v13 = 0;
    v14 = 0;
    goto LABEL_30;
  }

LABEL_15:
  if (a3)
  {
    if (a3 == 1)
    {
      v12 = 30.0;
    }

    else
    {
      v12 = a3 == 2 ? 60.0 : 2147483650.0;
    }

    if (FigAlternateFrameRateCapFilterCreate(*v9, &v18, v12) || FigAlternateFilterTreeInsertLeaf(v20, v18, 700))
    {
      goto LABEL_47;
    }
  }

  if (v4)
  {
    if (v4 != 1)
    {
      v4 = 4;
    }

    if (FigAlternatePreferredVideoRangeFilterCreate(*v9, v4, &cf) || FigAlternateFilterTreeInsertLeaf(v20, cf, 700))
    {
      goto LABEL_47;
    }
  }

  if (FigAlternateFilterTreeCreateFilter(v20, @"StreamingRestrictions", 851, &v21))
  {
    goto LABEL_47;
  }

  v13 = v21;
  v21 = 0;
  v14 = 1;
LABEL_30:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (v14)
  {
    v15 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v15)
    {
      v11 = v15(a1, v13, 1) == 0;
      if (!v13)
      {
        return v11;
      }

      goto LABEL_45;
    }
  }

  v11 = 0;
  if (v13)
  {
LABEL_45:
    CFRelease(v13);
  }

  return v11;
}

uint64_t famfon_finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = DerivedStorage;
  v4 = *(DerivedStorage + 24);
  if (v4)
  {
    v4(a1, *(DerivedStorage + 48));
  }

  if (v3[9])
  {
    FigAlternateFilterMonitorTriggerRemoveObserver();
  }

  v5 = v3[4];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = v3[9];
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = v3[5];
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = v3[6];
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = v3[7];
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = v3[8];
  if (v10)
  {
    CFRelease(v10);
  }

  return FigSimpleMutexDestroy();
}

CFStringRef famfon_copyDebugDesc(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v3 = *(DerivedStorage + 80);
  v4 = CMBaseObjectGetDerivedStorage();
  Value = CFDictionaryGetValue(*(v4 + 64), v3);
  v6 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"[FigAlternateFilterMonitorForNotification<%p> %@ state:%lu currentFilter:%@]", a1, *(DerivedStorage + 32), *(DerivedStorage + 80), Value);
  FigSimpleMutexUnlock();
  return v6;
}

uint64_t famfon_copyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    if (a4)
    {
      v7 = DerivedStorage;
      FigSimpleMutexLock();
      if (FigCFEqual())
      {
        v8 = *(CMBaseObjectGetDerivedStorage() + 72);
        if (v8)
        {
          v9 = CFRetain(v8);
        }

        else
        {
          v9 = 0;
        }
      }

      else
      {
        Value = CFDictionaryGetValue(*(v7 + 56), a2);
        v9 = Value;
        if (Value)
        {
          CFRetain(Value);
        }
      }

      *a4 = v9;
      FigSimpleMutexUnlock();
      return 0;
    }

    else
    {
      famfon_copyProperty_cold_1(&v12);
      return v12;
    }
  }

  else
  {
    famfon_copyProperty_cold_2(&v13);
    return v13;
  }
}

uint64_t famfon_setProperty(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    FigSimpleMutexLock();
    if (FigCFEqual())
    {
      v7 = CMBaseObjectGetDerivedStorage();
      v8 = FigAlternateFilterMonitorTriggerRemoveObserver();
      if (v8 || (v8 = FigAlternateFilterMonitorTriggerAddObserver(a3, a1, famfon_triggerCallback, 0), v8))
      {
        v9 = v8;
      }

      else
      {
        v9 = *(v7 + 72);
        *(v7 + 72) = a3;
        if (a3)
        {
          CFRetain(a3);
        }

        if (v9)
        {
          CFRelease(v9);
LABEL_12:
          v9 = 0;
        }
      }

      FigSimpleMutexUnlock();
      if (v9)
      {
        return v9;
      }

      goto LABEL_14;
    }

    v10 = *(DerivedStorage + 56);
    if (a3)
    {
      CFDictionarySetValue(v10, a2, a3);
    }

    else
    {
      CFDictionaryRemoveValue(v10, a2);
    }

    goto LABEL_12;
  }

  famfon_setProperty_cold_1(&v13);
  v9 = v13;
  if (v13)
  {
    return v9;
  }

LABEL_14:
  v11 = *(DerivedStorage + 16);
  if (v11)
  {
    v11(a1, a2, a3);
  }

  return v9;
}

uint64_t famfon_copyFilterForCurrentState(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = DerivedStorage;
    FigSimpleMutexLock();
    v5 = *(v4 + 80);
    v6 = CMBaseObjectGetDerivedStorage();
    Value = CFDictionaryGetValue(*(v6 + 64), v5);
    *a2 = Value;
    if (Value)
    {
      CFRetain(Value);
    }

    FigSimpleMutexUnlock();
    return 0;
  }

  else
  {
    famfon_copyFilterForCurrentState_cold_1(&v9);
    return v9;
  }
}

uint64_t famfon_invokeTrigger(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v4 = *(DerivedStorage + 72);
  if (v4)
  {
    v5 = CFRetain(v4);
    FigSimpleMutexUnlock();
    if (v5)
    {
      v6 = FigAlternateFilterMonitorTriggerInvoke(v5, a2);
      CFRelease(v5);
      return v6;
    }
  }

  else
  {
    FigSimpleMutexUnlock();
  }

  return 0;
}

void fafm_getBestSupportedDisplayFromDisplayList(const __CFArray *a1@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  v11 = *MEMORY[0x1E69E9840];
  *a2 = 0u;
  *(a2 + 16) = 0u;
  if (a1 && CFArrayGetCount(a1))
  {
    memset(&v10[2], 0, 28);
    if (CFArrayGetCount(a1) < 1)
    {
      v7 = 6;
    }

    else
    {
      v6 = 0;
      v7 = 6;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1, v6);
        memset(v10, 0, 32);
        FPSupport_GetBestDisplayInfoForDisplay(ValueAtIndex, v10, a3);
        if (SLODWORD(v10[0]) < v7 && SLODWORD(v10[0]) >= 1)
        {
          v10[2] = *(v10 + 4);
          *(&v10[2] + 12) = v10[1];
          v7 = v10[0];
        }

        ++v6;
      }

      while (v6 < CFArrayGetCount(a1));
    }

    *a2 = v7;
    *(a2 + 4) = v10[2];
    *(a2 + 16) = *(&v10[2] + 12);
  }

  else
  {

    FPSupport_GetMainDisplayVideoRangeAndSizeAndFrameRate(a2, (a2 + 8), (a2 + 24));
  }
}

float fafm_getMaxContentFrameRate(const void *a1)
{
  valuePtr = 0.0;
  number = 0;
  v2 = CFGetAllocator(a1);
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v3)
  {
    v4 = v3(a1, @"AlternateFilterMonitorProperty_MaxContentFrameRate", v2, &number);
    v5 = number;
    if (v4)
    {
      v6 = 1;
    }

    else
    {
      v6 = number == 0;
    }

    if (!v6)
    {
      CFNumberGetValue(number, kCFNumberFloatType, &valuePtr);
      v5 = number;
    }

    if (v5)
    {
      CFRelease(v5);
    }
  }

  return valuePtr;
}

uint64_t famrbl_finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = DerivedStorage[3];
  if (v1)
  {
    CFRelease(v1);
  }

  v2 = DerivedStorage[4];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = DerivedStorage[5];
  if (v3)
  {
    CFRelease(v3);
  }

  return FigSimpleMutexDestroy();
}

CFStringRef famrbl_copyDebugDesc(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v3 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"[FigAlternateFilterMonitorForRenditionDenyList<%p> state:%lu currentFilter:%@]", a1, *(DerivedStorage + 16), *(DerivedStorage + 40));
  FigSimpleMutexUnlock();
  return v3;
}

uint64_t famrbl_setProperty(const void *a1, uint64_t a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v7 = DerivedStorage;
    FigSimpleMutexLock();
    v8 = *(v7 + 16);
    if (FigCFEqual())
    {
      if (a3 && (TypeID = CFArrayGetTypeID(), TypeID != CFGetTypeID(a3)))
      {
        v10 = FigSignalErrorAtGM();
      }

      else if (FigCFEqual())
      {
        v10 = 0;
      }

      else
      {
        v11 = *(v7 + 32);
        *(v7 + 32) = a3;
        if (a3)
        {
          CFRetain(a3);
        }

        if (v11)
        {
          CFRelease(v11);
        }

        v10 = 0;
        ++v8;
      }
    }

    else
    {
      v10 = 4294951681;
    }

    famrbl_updateFilterUnlockAndNotify(a1, v8);
  }

  else
  {
    famrbl_setProperty_cold_1(&v13);
    return v13;
  }

  return v10;
}

uint64_t famrbl_updateFilterUnlockAndNotify(const void *a1, uint64_t a2)
{
  cf = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *(DerivedStorage + 16);
  if (v5 == a2)
  {
    FigSimpleMutexUnlock();
    v6 = 0;
  }

  else
  {
    v7 = CFGetAllocator(a1);
    if (FigAlternateURLDependencyDenyListFilterCreate(v7, *(DerivedStorage + 24), *(DerivedStorage + 32), 0, &cf))
    {
      v8 = 0;
    }

    else
    {
      v8 = *(DerivedStorage + 40);
      v9 = cf;
      if (cf)
      {
        v9 = CFRetain(cf);
      }

      *(DerivedStorage + 40) = v9;
      *(DerivedStorage + 16) = a2;
    }

    FigSimpleMutexUnlock();
    v6 = fam_postStateChangedNotification(a1, v5, v8, a2, cf);
    if (v8)
    {
      CFRelease(v8);
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

uint64_t famrbl_copyFilterForCurrentState(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = DerivedStorage;
    FigSimpleMutexLock();
    v5 = *(v4 + 40);
    if (v5)
    {
      v5 = CFRetain(v5);
    }

    *a2 = v5;
    FigSimpleMutexUnlock();
    return 0;
  }

  else
  {
    famrbl_copyFilterForCurrentState_cold_1(&v7);
    return v7;
  }
}

uint64_t famrbl_invokeTrigger(const void *a1, const __CFArray *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (a2)
  {
    Count = CFArrayGetCount(a2);
  }

  else
  {
    Count = 0;
  }

  v6 = *(DerivedStorage + 24);
  if (v6)
  {
    v7 = CFArrayGetCount(v6);
    v8 = *(DerivedStorage + 16);
    if (v7 < 1)
    {
      v10 = 0;
    }

    else
    {
      v9 = v7;
      v23 = *(DerivedStorage + 16);
      v24 = a1;
      v10 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 24), v9 - 1);
        if (a2 && (v12 = ValueAtIndex, v13 = *(DerivedStorage + 8), v14 = CFArrayGetCount(a2), v14 >= 1))
        {
          v15 = v14;
          v16 = 0;
          while (1)
          {
            v17 = CFArrayGetValueAtIndex(a2, v16);
            if (v13(v17, v12))
            {
              break;
            }

            if (v15 == ++v16)
            {
              goto LABEL_12;
            }
          }
        }

        else
        {
LABEL_12:
          CFArrayRemoveValueAtIndex(*(DerivedStorage + 24), v9 - 1);
          v10 = 1;
        }
      }

      while (v9-- > 1);
      v8 = v23;
      a1 = v24;
    }
  }

  else
  {
    v10 = 0;
    v8 = *(DerivedStorage + 16);
  }

  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      v20 = CFArrayGetValueAtIndex(a2, i);
      if (!FigCFArrayContainsValue())
      {
        CFArrayAppendValue(*(DerivedStorage + 24), v20);
        v10 = 1;
      }
    }
  }

  if (v10)
  {
    v21 = v8 + 1;
  }

  else
  {
    v21 = v8;
  }

  return famrbl_updateFilterUnlockAndNotify(a1, v21);
}

uint64_t FigShareAndAirPlayHelperGetClassID()
{
  if (_MergedGlobals_68 != -1)
  {
    FigShareAndAirPlayHelperGetClassID_cold_1();
  }

  return qword_1ED4CACC0;
}

uint64_t helper_registerBaseClass()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigShareAndAirPlayHelperGetTypeID()
{
  if (_MergedGlobals_68 != -1)
  {
    FigShareAndAirPlayHelperGetClassID_cold_1();
  }

  return CMBaseClassGetCFTypeID();
}

uint64_t FigMLBandwidthPredictorCreate(const void *a1, void *a2)
{
  v4 = objc_autoreleasePoolPush();
  FigGetUpTimeNanoseconds();
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (!a2)
  {
    FigMLBandwidthPredictorCreate_cold_4(&v22);
    v18 = v22;
    goto LABEL_16;
  }

  FigNetworkPredictorGetClassID();
  v5 = CMDerivedObjectCreate();
  if (v5)
  {
    v18 = v5;
    goto LABEL_16;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage || ((v7 = DerivedStorage, !a1) ? (v8 = 0) : (v8 = CFRetain(a1)), v7[5] = v8, v9 = FigSimpleMutexCreate(), (v7[1] = v9) == 0))
  {
    v18 = 4294948286;
    goto LABEL_16;
  }

  GlobalNetworkBufferingLowPriorityQueue = FigThreadGetGlobalNetworkBufferingLowPriorityQueue();
  if (GlobalNetworkBufferingLowPriorityQueue)
  {
    v11 = GlobalNetworkBufferingLowPriorityQueue;
    v12 = FigCFWeakReferenceHolderCreateWithReferencedObject();
    if (v12)
    {
      v13 = v12;
      v14 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v11);
      if (v14)
      {
        v15 = v14;
        v16 = dispatch_time(0, 10000000000);
        dispatch_source_set_timer(v15, v16, 0x2540BE400uLL, 0x3B9ACA00uLL);
        v17 = CFRetain(v13);
        dispatch_set_context(v15, v17);
        dispatch_source_set_event_handler_f(v15, fmlbp_timerCallback);
        dispatch_set_finalizer_f(v15, FigCFRelease_6);
        dispatch_resume(v15);
        v18 = 0;
        *v7 = v15;
      }

      else
      {
        FigMLBandwidthPredictorCreate_cold_1(&v22);
        v18 = v22;
      }

      CFRelease(v13);
      if (v18)
      {
        goto LABEL_16;
      }

      goto LABEL_13;
    }

    FigMLBandwidthPredictorCreate_cold_2(&v22);
  }

  else
  {
    FigMLBandwidthPredictorCreate_cold_3(&v22);
  }

  v18 = v22;
  if (v22)
  {
    goto LABEL_16;
  }

LABEL_13:
  v7[3] = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3052000000;
  v25 = __Block_byref_object_copy__7;
  v19 = getMLServiceClass_softClass;
  v26 = __Block_byref_object_dispose__7;
  v27 = getMLServiceClass_softClass;
  if (!getMLServiceClass_softClass)
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __getMLServiceClass_block_invoke;
    v21[3] = &unk_1E7486A28;
    v21[4] = &v22;
    __getMLServiceClass_block_invoke(v21);
    v19 = v23[5];
  }

  _Block_object_dispose(&v22, 8);
  v18 = 0;
  v7[6] = [[v19 alloc] initWithNameOfModel:@"HLSMLBandwidthPredictor"];
  v7[12] = 0;
  *a2 = 0;
LABEL_16:
  objc_autoreleasePoolPop(v4);
  return v18;
}

void sub_196645078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void FigCFRelease_6(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t fmlbp_finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  fmlbp_stopTraining();
  v1 = *(DerivedStorage + 40);
  if (v1)
  {
    CFRelease(v1);
  }

  v2 = *(DerivedStorage + 16);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(DerivedStorage + 64);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(DerivedStorage + 56);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(DerivedStorage + 72);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(DerivedStorage + 96);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v7);

  return FigSimpleMutexDestroy();
}

uint64_t fmlbp_setProperty(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (CFEqual(a2, @"NetworkPredictorProperty_EnableMLTraining"))
  {
    if (*MEMORY[0x1E695E4D0] != a3)
    {
      fmlbp_stopTraining();
    }

    goto LABEL_15;
  }

  if (CFEqual(a2, @"NetworkPredictorProperty_CMSessionID"))
  {
    if (a3)
    {
      v6 = CFGetTypeID(a3);
      if (v6 == CFStringGetTypeID())
      {
        v7 = DerivedStorage[7];
        DerivedStorage[7] = a3;
        goto LABEL_12;
      }
    }

    fmlbp_setProperty_cold_1(&v12);
    goto LABEL_31;
  }

  if (CFEqual(a2, @"NetworkPredictorProperty_ClientBundleIdentifier"))
  {
    if (a3)
    {
      v8 = CFGetTypeID(a3);
      if (v8 == CFStringGetTypeID())
      {
        v7 = DerivedStorage[8];
        DerivedStorage[8] = a3;
        goto LABEL_12;
      }
    }

    fmlbp_setProperty_cold_2(&v12);
    goto LABEL_31;
  }

  if (!CFEqual(a2, @"NetworkPredictorProperty_InterfaceType"))
  {
    if (CFEqual(a2, *MEMORY[0x1E6962A18]))
    {
      v7 = DerivedStorage[9];
      DerivedStorage[9] = a3;
      if (!a3)
      {
LABEL_13:
        if (v7)
        {
          CFRelease(v7);
        }

        goto LABEL_15;
      }

LABEL_12:
      CFRetain(a3);
      goto LABEL_13;
    }

    if (!CFEqual(a2, @"NetworkPredictorProperty_ReportingAgent"))
    {
      v9 = FigSignalErrorAtGM();
      goto LABEL_16;
    }

    if (a3)
    {
      v7 = DerivedStorage[12];
      DerivedStorage[12] = a3;
      goto LABEL_12;
    }

    fmlbp_setProperty_cold_4(&v12);
LABEL_31:
    v9 = v12;
    goto LABEL_16;
  }

  if (!a3 || (v11 = CFGetTypeID(a3), v11 != CFNumberGetTypeID()))
  {
    fmlbp_setProperty_cold_3(&v12);
    goto LABEL_31;
  }

  CFNumberGetValue(a3, kCFNumberIntType, DerivedStorage + 10);
LABEL_15:
  v9 = 0;
LABEL_16:
  FigSimpleMutexUnlock();
  return v9;
}

void fmlbp_stopTraining()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    dispatch_source_cancel(*DerivedStorage);
    if (*DerivedStorage)
    {
      dispatch_release(*DerivedStorage);
      *DerivedStorage = 0;
    }
  }
}

uint64_t fmlbp_makePrediction(uint64_t a1, uint64_t a2, uint64_t a3, double *a4)
{
  v6 = objc_autoreleasePoolPush();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a4)
  {
    fmlbp_makePrediction_cold_1(&v22);
    v12 = v22;
    goto LABEL_30;
  }

  v8 = DerivedStorage;
  FigSimpleMutexLock();
  cf = 0;
  v9 = *(v8 + 80);
  if (v9 == 3)
  {
    v10 = FigNetworkWirelessReportingInterfaceCopyWifiStats(&cf);
    if (!v10)
    {
LABEL_5:
      MutableCopy = FigCFDictionaryCreateMutableCopy();
      if (MutableCopy)
      {
        FigCFDictionarySetInt();
        FigCFDictionarySetValue();
        FigCFDictionarySetValue();
        v12 = 0;
      }

      else
      {
        v12 = 4294954510;
      }

LABEL_7:
      if (cf)
      {
        CFRelease(cf);
      }

      if (v12)
      {
        goto LABEL_28;
      }

      goto LABEL_14;
    }

LABEL_12:
    v12 = v10;
    MutableCopy = 0;
    goto LABEL_7;
  }

  if (v9 == 5)
  {
    v10 = FigNetworkWirelessReportingInterfaceCopyCellStats(&cf);
    if (!v10)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

  MutableCopy = 0;
LABEL_14:
  if (*(a3 + 176))
  {
    v13 = objc_autoreleasePoolPush();
    FigGetUpTimeNanoseconds();
    if (FigCFEqual())
    {
      v14 = *(v8 + 32);
      *a4 = *(v8 + 24);
      *(a4 + 1) = v14;
    }

    else
    {
      v16 = [*(v8 + 48) getPredictionDictionaryWithInputFeatures:MutableCopy];
      [objc_msgSend(v16 objectForKey:{@"predVal", "doubleValue"}];
      *a4 = v17;
      [objc_msgSend(v16 objectForKey:{@"predStdDev", "doubleValue"}];
      a4[1] = v18;
      fmlbp_setCachedPrediction(v8, MutableCopy, *a4, v18);
    }

    FigGetUpTimeNanoseconds();
    objc_autoreleasePoolPop(v13);
    if (*a4 >= 1)
    {
      v12 = 0;
    }

    else
    {
      v12 = 4294948281;
    }
  }

  else
  {
    FigGetUpTimeNanoseconds();
    if (FigCFEqual())
    {
      v15 = *(v8 + 24);
    }

    else
    {
      [*(v8 + 48) getPredictionWithInputFeatures:MutableCopy];
      v15 = v19;
      fmlbp_setCachedPrediction(v8, MutableCopy, v19, 0.0);
    }

    FigGetUpTimeNanoseconds();
    if (v15 >= 2.22044605e-16)
    {
      v12 = 0;
    }

    else
    {
      v12 = 4294948281;
    }

    *a4 = v15;
  }

LABEL_28:
  FigSimpleMutexUnlock();
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

LABEL_30:
  objc_autoreleasePoolPop(v6);
  return v12;
}

void fmlbp_setCachedPrediction(uint64_t a1, CFTypeRef cf, double a3, double a4)
{
  *(a1 + 24) = a3;
  *(a1 + 32) = a4;
  v4 = *(a1 + 16);
  *(a1 + 16) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v4)
  {

    CFRelease(v4);
  }
}

void fmlbp_timerCallback()
{
  v0 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v0)
  {
    fmlbp_timerCallback_cold_2();
    return;
  }

  v1 = v0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v22 = 0;
  cf = 0;
  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  if (*(DerivedStorage + 72))
  {
    v4 = UpTimeNanoseconds;
    v5 = *(DerivedStorage + 80);
    if (v5 == 5)
    {
      if (FigNetworkWirelessReportingInterfaceCopyCellStats(&cf))
      {
        goto LABEL_29;
      }
    }

    else if (v5 == 3 && FigNetworkWirelessReportingInterfaceCopyWifiStats(&cf))
    {
      goto LABEL_29;
    }

    if (!FigNetworkHistoryCopySharedPredictor())
    {
      v6 = *(DerivedStorage + 88);
      v7 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v7)
      {
        v24[0] = 0;
        v24[1] = 0;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v24[2] = v4 - v6;
        v34 = 9;
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v7(v22, v4, v24, &v16);
      }

      *(DerivedStorage + 88) = v4;
      MutableCopy = FigCFDictionaryCreateMutableCopy();
      if (!MutableCopy)
      {
        fmlbp_timerCallback_cold_1(v24);
        v10 = 0;
        v12 = LOBYTE(v24[0]);
        goto LABEL_17;
      }

      FigCFDictionarySetDouble();
      FigCFDictionarySetValue();
      FigCFDictionarySetValue();
      FigCFDictionarySetInt();
      v9 = *(DerivedStorage + 16);
      if (v9)
      {
        v10 = CFRetain(v9);
        v11 = *(DerivedStorage + 16);
        *(DerivedStorage + 16) = MutableCopy;
        CFRetain(MutableCopy);
        if (v11)
        {
          CFRelease(v11);
        }
      }

      else
      {
        *(DerivedStorage + 16) = MutableCopy;
        CFRetain(MutableCopy);
        v10 = 0;
      }

      goto LABEL_16;
    }

LABEL_29:
    v10 = 0;
    MutableCopy = 0;
    v12 = 0;
    goto LABEL_17;
  }

  v10 = 0;
  MutableCopy = 0;
LABEL_16:
  v12 = 1;
LABEL_17:
  if (cf)
  {
    CFRelease(cf);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (v12)
  {
    v13 = CMBaseObjectGetDerivedStorage();
    if (v10)
    {
      v14 = v13;
      v15 = objc_autoreleasePoolPush();
      [*(v14 + 48) writeWithData:{v10, v16, v17, v18, v19, v20, v21}];
      objc_autoreleasePoolPop(v15);
    }
  }

  FigSimpleMutexUnlock();
  CFRelease(v1);
  if (v10)
  {
    CFRelease(v10);
  }
}

Class __getMLServiceClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!MediaMLServicesLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __MediaMLServicesLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E748BAA8;
    v5 = 0;
    MediaMLServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!MediaMLServicesLibraryCore_frameworkLibrary)
  {
    __getMLServiceClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("MLService");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getMLServiceClass_block_invoke_cold_1();
  }

  getMLServiceClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t __MediaMLServicesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  MediaMLServicesLibraryCore_frameworkLibrary = result;
  return result;
}

void FigCaptionRendererOutputNodeFinalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 16);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 16) = 0;
  }

  v2 = *(DerivedStorage + 80);

  CGImageRelease(v2);
}

__CFString *FigCaptionRendererOutputNodeCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"\tFigCaptionRendererOutputNode: <%p>", a1);
  return Mutable;
}

__CFString *FigCaptionRendererOutputNode_FigCaptionRendererOutputNodeProtocol_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"\tFigCaptionRendererOutputNode <FigCaptionRendererOutputNodeProtocol> on <%p>", a1);
  return Mutable;
}

uint64_t FigCaptionRendererOutputNode_FigCaptionRendererOutputNodeProtocol_SetParentNode(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = DerivedStorage;
  v5 = DerivedStorage[1];
  if (v5)
  {
    v6 = *DerivedStorage;
    FigCaptionRendererOutputNodeProtocolGetProtocolID();
    ProtocolVTable = CMBaseObjectGetProtocolVTable();
    if (ProtocolVTable)
    {
      v8 = *(ProtocolVTable + 16);
      if (v8)
      {
        v9 = *(v8 + 32);
        if (v9)
        {
          v9(v5, v6);
        }
      }
    }
  }

  if (a2)
  {
    v10 = *v4;
    FigCaptionRendererOutputNodeProtocolGetProtocolID();
    v11 = CMBaseObjectGetProtocolVTable();
    if (v11)
    {
      v12 = *(v11 + 16);
      if (v12)
      {
        v13 = *(v12 + 24);
        if (v13)
        {
          v13(a2, v10);
        }
      }
    }
  }

  v4[1] = a2;
  return 0;
}

uint64_t FigCaptionRendererOutputNode_FigCaptionRendererOutputNodeProtocol_AddChildNode(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 16);
  v10.length = CFArrayGetCount(v4);
  v10.location = 0;
  if (CFArrayGetFirstIndexOfValue(v4, v10, a2) == -1)
  {
    CFArrayAppendValue(*(DerivedStorage + 16), a2);
    v6 = *DerivedStorage;
    FigCaptionRendererOutputNodeProtocolGetProtocolID();
    ProtocolVTable = CMBaseObjectGetProtocolVTable();
    if (ProtocolVTable)
    {
      v8 = *(ProtocolVTable + 16);
      if (v8)
      {
        v9 = *(v8 + 16);
        if (v9)
        {
          v9(a2, v6);
        }
      }
    }
  }

  return 0;
}

uint64_t FigCaptionRendererOutputNode_FigCaptionRendererOutputNodeProtocol_RemoveChildNode(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 16);
  v10.length = CFArrayGetCount(v4);
  v10.location = 0;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v4, v10, a2);
  if (FirstIndexOfValue != -1)
  {
    CFArrayRemoveValueAtIndex(*(DerivedStorage + 16), FirstIndexOfValue);
    FigCaptionRendererOutputNodeProtocolGetProtocolID();
    ProtocolVTable = CMBaseObjectGetProtocolVTable();
    if (ProtocolVTable)
    {
      v7 = *(ProtocolVTable + 16);
      if (v7)
      {
        v8 = *(v7 + 16);
        if (v8)
        {
          v8(a2, 0);
        }
      }
    }
  }

  return 0;
}

uint64_t FigCaptionRendererOutputNode_FigCaptionRendererOutputNodeProtocol_HasChildNode(uint64_t a1, const void *a2, BOOL *a3)
{
  v5 = *(CMBaseObjectGetDerivedStorage() + 16);
  v7.length = CFArrayGetCount(v5);
  v7.location = 0;
  *a3 = CFArrayGetFirstIndexOfValue(v5, v7, a2) != -1;
  return 0;
}

uint64_t FigCaptionRendererOutputNode_FigCaptionRendererOutputNodeProtocol_RemovelAllChildNodes()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFArrayGetCount(*(DerivedStorage + 16)) >= 1)
  {
    v1 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 16), v1);
      FigCaptionRendererOutputNodeProtocolGetProtocolID();
      ProtocolVTable = CMBaseObjectGetProtocolVTable();
      if (ProtocolVTable)
      {
        v4 = *(ProtocolVTable + 16);
        if (v4)
        {
          v5 = *(v4 + 16);
          if (v5)
          {
            v5(ValueAtIndex, 0);
          }
        }
      }

      ++v1;
    }

    while (v1 < CFArrayGetCount(*(DerivedStorage + 16)));
  }

  CFArrayRemoveAllValues(*(DerivedStorage + 16));
  return 0;
}

uint64_t FigCaptionRendererOutputNode_FigCaptionRendererOutputNodeProtocol_SetPosition(double a1, double a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 24) = a1;
  *(DerivedStorage + 32) = a2;
  return 0;
}

uint64_t FigCaptionRendererOutputNode_FigCaptionRendererOutputNodeProtocol_SetSize(double a1, double a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 40) = a1;
  *(DerivedStorage + 48) = a2;
  return 0;
}

uint64_t FigCaptionRendererOutputNode_FigCaptionRendererOutputNodeProtocol_SetContent(uint64_t a1, CGImage *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 80);
  *(DerivedStorage + 80) = CGImageRetain(a2);
  CGImageRelease(v4);
  return 0;
}

uint64_t FigCaptionRendererOutputNode_FigCaptionRendererOutputNodeProtocol_DumpInfo()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFArrayGetCount(*(DerivedStorage + 16)) >= 1)
  {
    v1 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 16), v1);
      FigCaptionRendererOutputNodeProtocolGetProtocolID();
      ProtocolVTable = CMBaseObjectGetProtocolVTable();
      if (ProtocolVTable)
      {
        v4 = *(ProtocolVTable + 16);
        if (v4)
        {
          v5 = *(v4 + 216);
          if (v5)
          {
            v5(ValueAtIndex);
          }
        }
      }

      ++v1;
    }

    while (v1 < CFArrayGetCount(*(DerivedStorage + 16)));
  }

  return 0;
}

uint64_t RegisterFigCaptionRendererOutputNodeBaseType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigCaptionRendererCALayerOutputCreate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  if (a2 && a3 && a4)
  {
    if (a8)
    {
      *a8 = 0;
      FigCaptionRendererOutputGetClassID();
      CMDerivedObjectCreate();
      FigCaptionRendererCALayerOutputCreate_cold_1(&v9);
    }

    else
    {
      FigCaptionRendererCALayerOutputCreate_cold_2(&v9);
    }
  }

  else
  {
    FigCaptionRendererCALayerOutputCreate_cold_3(&v9);
  }

  return v9;
}

double FigCaptionRendererCALayerOutputGetOverscan()
{
  v0 = [*CMBaseObjectGetDerivedStorage() getLayerDisplay];
  v1 = [v0 isOverscanned];
  result = 1.0;
  if (v1)
  {
    [v0 overscanAmounts];
    return v3;
  }

  return result;
}

uint64_t FigCaptionRendererCALayerOutputGetDisplayScale()
{
  v0 = *CMBaseObjectGetDerivedStorage();
  if (!v0)
  {
    return 1;
  }

  [v0 getDisplayScale];
  return v1;
}

void FigCaptionRendererCALayerOutput_Finalize()
{
  v0 = *CMBaseObjectGetDerivedStorage();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __FigCaptionRendererCALayerOutput_Finalize_block_invoke;
  block[3] = &unk_1E7482608;
  block[4] = v0;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

__CFString *FigCaptionRendererCALayerOutput_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigCaptionRendererCALayerOutput %p>", a1);
  return Mutable;
}

uint64_t fcrCALayerOutputTransactionBegin()
{
  [MEMORY[0x1E6979518] begin];
  if (!pthread_main_np())
  {
    [MEMORY[0x1E6979518] activateBackground:1];
  }

  [MEMORY[0x1E6979518] setDisableActions:1];
  return 0;
}

uint64_t fcrCALayerOutputGetBounds()
{
  v0 = *CMBaseObjectGetDerivedStorage();

  return [v0 bounds];
}

uint64_t fcrCALayerOutputSetBounds(const void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  [*DerivedStorage position];
  v12 = v11;
  [*DerivedStorage bounds];
  v14 = v12 - v13 * 0.5;
  [*DerivedStorage position];
  v16 = v15;
  [*DerivedStorage bounds];
  v18 = v16 - v17 * 0.5;
  [*DerivedStorage bounds];
  v20 = v19;
  [*DerivedStorage bounds];
  v23.origin.x = v14;
  v23.origin.y = v18;
  v23.size.width = v20;
  v24.origin.x = a2;
  v24.origin.y = a3;
  v24.size.width = a4;
  v24.size.height = a5;
  if (!CGRectEqualToRect(v23, v24))
  {
    if (a1)
    {
      CFRetain(a1);
    }

    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __fcrCALayerOutputSetBounds_block_invoke;
    v22[3] = &__block_descriptor_80_e5_v8__0l;
    v22[4] = DerivedStorage;
    *&v22[5] = a2;
    *&v22[6] = a3;
    *&v22[7] = a4;
    *&v22[8] = a5;
    v22[9] = a1;
    dispatch_async(MEMORY[0x1E69E96A0], v22);
  }

  return 0;
}

void __fcrCALayerOutputSetBounds_block_invoke(uint64_t a1)
{
  [MEMORY[0x1E6979518] begin];
  if (!pthread_main_np())
  {
    [MEMORY[0x1E6979518] activateBackground:1];
  }

  [MEMORY[0x1E6979518] setDisableActions:1];
  [**(a1 + 32) setBounds:{0.0, 0.0, *(a1 + 56), *(a1 + 64)}];
  __asm { FMOV            V1.2D, #0.5 }

  [**(a1 + 32) setPosition:{vmulq_f64(*(a1 + 56), _Q1)}];
  [**(a1 + 32) setNeedsLayout];
  [MEMORY[0x1E6979518] commit];
  v7 = *(a1 + 72);
  if (v7)
  {

    CFRelease(v7);
  }
}

uint64_t FigMPEG2SampleGeneratorPushFrame(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4, uint64_t a5)
{
  v5 = *(a1 + 48);
  if (!v5)
  {
    return 4294954514;
  }

  v9 = *a3;
  v10 = *(a3 + 2);
  v7 = *a4;
  v8 = *(a4 + 2);
  return v5(a1, a2, &v9, &v7, a5);
}

uint64_t FigMPEG2SampleGeneratorFlush(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 4294954514;
  }
}

uint64_t FigMPEG2SampleGeneratorResync(uint64_t result)
{
  v1 = *(result + 64);
  if (v1)
  {
    return v1();
  }

  return result;
}

void FigMPEG2SampleGeneratorDestroy(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 72);
    if (v2)
    {
      v2(a1);
    }

    FigFormatDescriptionRelease();
    *(a1 + 40) = 0;
    v3 = *(a1 + 8);
    if (v3)
    {
      CFRelease(v3);
      *(a1 + 8) = 0;
    }

    free(*(a1 + 104));

    free(a1);
  }
}

uint64_t FigMPEG2SampleGeneratorSetMaxFramesPerSampleBuffer(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 96) = a2;
  }

  return result;
}

uint64_t FigMPEG2SampleGeneratorGetTrackBitRate(uint64_t a1)
{
  if (!a1)
  {
    return 4294954326;
  }

  v1 = *(a1 + 80);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 4294954318;
  }
}

uint64_t FigMPEG2SampleGeneratorSetAudioConfiguration(uint64_t a1, const void *a2, size_t a3)
{
  result = 4294954326;
  if (a1 && a2 && a3)
  {
    free(*(a1 + 104));
    v7 = malloc_type_malloc(a3, 0x100004077774924uLL);
    *(a1 + 104) = v7;
    if (v7)
    {
      memcpy(v7, a2, a3);
      result = 0;
      *(a1 + 112) = a3;
    }

    else
    {
      return 4294954510;
    }
  }

  return result;
}

uint64_t ADTSResyncForType(uint64_t a1)
{
  v2 = *(a1 + 88);
  v3 = *(v2 + 16);
  if (v3)
  {
    CFRelease(v3);
  }

  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  ADTSFlushStartupQueue(v2);
  *(v2 + 2961) = 0;
  result = FigFormatDescriptionRelease();
  *(a1 + 40) = 0;
  *(v2 + 2968) = 0;
  *(v2 + 2976) = 0;
  return result;
}

void ADTSDestroyForType(uint64_t a1)
{
  if (*(a1 + 88))
  {
    ADTSResyncForType(a1);
    free(*(a1 + 88));
    *(a1 + 88) = 0;
  }
}

uint64_t ADTSReadBitRate(uint64_t a1, void *a2)
{
  v2 = *(a1 + 88);
  v3 = *(v2 + 2976);
  if (!v3 || !*v2)
  {
    return 4294954513;
  }

  result = 0;
  *a2 = ((8 * *(v2 + 2968)) / ((v3 << 10) / *v2));
  return result;
}

uint64_t ADTSAddFrameToStartup(uint64_t *a1, void *cf, __int128 *a3, int a4, uint64_t a5)
{
  v10 = a1[11];
  if (a4)
  {
    ADTSFlushStartupQueue(a1[11]);
  }

  v11 = *(v10 + 2864);
  if (v11 < 50)
  {
    if (cf)
    {
      v12 = CFRetain(cf);
      v11 = *(v10 + 2864);
    }

    else
    {
      v12 = 0;
    }

    v13 = v10 + 48 * v11;
    *(v13 + 464) = v12;
    *(v13 + 504) = a5;
    v14 = *a3;
    *(v13 + 488) = *(a3 + 2);
    *(v13 + 472) = v14;
    *(v13 + 496) = a4;
    *(v10 + 2864) = v11 + 1;
    if (*(v10 + 2880))
    {
      v15 = 0;
    }

    else
    {
      v15 = AudioFileStreamOpen(a1, ADTSPropertyListener, ADTSPacketProc, 0x61647473u, (v10 + 2880));
    }

    DataLength = CMBlockBufferGetDataLength(cf);
    if (!DataLength || *(v10 + 2961))
    {
LABEL_18:
      if (*(v10 + 2961))
      {
        v15 = ADTSCreateFormatDescriptionAndSend(a1);
        if (!v15)
        {
          return v15;
        }
      }

      else if (!v15)
      {
        return v15;
      }
    }

    else
    {
      v17 = DataLength;
      v18 = 0;
      while (1)
      {
        inData = 0;
        lengthAtOffsetOut = 0;
        DataPointer = CMBlockBufferGetDataPointer(cf, v18, &lengthAtOffsetOut, 0, &inData);
        if (DataPointer)
        {
          break;
        }

        DataPointer = AudioFileStreamParseBytes(*(v10 + 2880), lengthAtOffsetOut, inData, 0);
        if (DataPointer)
        {
          break;
        }

        v17 -= lengthAtOffsetOut;
        if (v17)
        {
          v18 += lengthAtOffsetOut;
          if (!*(v10 + 2961))
          {
            continue;
          }
        }

        v15 = 0;
        goto LABEL_18;
      }

      v15 = DataPointer;
    }

    ADTSFlushStartupQueue(v10);
    return v15;
  }

  return ADTSCreateFormatDescriptionAndSend(a1);
}

OpaqueAudioFileStreamID *ADTSFlushStartupQueue(uint64_t a1)
{
  v2 = *(a1 + 2864);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = (a1 + 464);
    do
    {
      if (*v4)
      {
        CFRelease(*v4);
        v2 = *(a1 + 2864);
      }

      *v4 = 0;
      v4 += 6;
      ++v3;
    }

    while (v3 < v2);
  }

  *(a1 + 2864) = 0;
  result = *(a1 + 2880);
  if (result)
  {
    result = AudioFileStreamClose(result);
    *(a1 + 2880) = 0;
  }

  return result;
}

uint64_t ADTSPropertyListener(uint64_t result, uint64_t a2, int a3)
{
  v3 = *(result + 88);
  if (a3 == 1684434292)
  {
    ioPropertyDataSize = 40;
    result = AudioFileStreamGetProperty(*(v3 + 2880), 0x64666D74u, &ioPropertyDataSize, (v3 + 2920));
    if (result || *(v3 + 2920) == 0.0 || !*(v3 + 2928) || !*(v3 + 2948))
    {
      *(v3 + 2960) = 256;
    }

    else
    {
      *(v3 + 2960) = 1;
    }
  }

  else if (a3 == 1717988724)
  {
    ioPropertyDataSize = 4;
    return AudioFileStreamGetProperty(*(v3 + 2880), 0x66666D74u, &ioPropertyDataSize, (v3 + 2872));
  }

  return result;
}

void *OUTLINED_FUNCTION_1_96(size_t a1)
{

  return malloc_type_malloc(a1, 0x100004077774924uLL);
}

uint64_t DolbyPushForType(uint64_t a1, CMBlockBufferRef theBuffer, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v50 = *MEMORY[0x1E69E9840];
  v11 = *(a1 + 88);
  layout = 0;
  returnedPointerOut = 0;
  layoutSize = 0;
  memset(v48, 0, sizeof(v48));
  if (a5)
  {
    v20 = DolbyFlushForType(a1);
    if (v20)
    {
      goto LABEL_48;
    }
  }

  SampleInfo = DolbyGetSampleInfo(v48, theBuffer);
  if (*v48 == 1633889587)
  {
    v13 = 0;
  }

  else if (v48[18] == *(v11 + 18))
  {
    v14 = bswap64(*&v48[19]);
    v15 = bswap64(*(v11 + 19));
    v16 = v14 >= v15;
    v17 = v14 > v15;
    v18 = !v16;
    v13 = (v17 - v18) != 0;
  }

  else
  {
    v13 = 1;
  }

  if (!*&v48[4])
  {
    goto LABEL_49;
  }

  v19 = (a1 + 40);
  if (*(a1 + 40) && *v48 == *v11 && *&v48[12] == *(v11 + 12) && !v13 && *&v48[4] == *(v11 + 4))
  {
    goto LABEL_31;
  }

  v20 = CMBlockBufferAccessDataBytes(theBuffer, 0, 0xAuLL, temporaryBlock, &returnedPointerOut);
  if (v20)
  {
    goto LABEL_48;
  }

  DolbyFlushForType(a1);
  SamplesPerFrame = DolbyGetSamplesPerFrame();
  v20 = DolbyCreateChannelLayout(v48, &layout, &layoutSize);
  if (v20)
  {
    goto LABEL_48;
  }

  if (!*(a1 + 104) || !*(a1 + 112))
  {
    memset(&asbd.mFormatID, 0, 32);
    v42 = 0;
    v43 = 0;
    v20 = DolbyCreateMagicCookie(v48, returnedPointerOut, theBuffer, &v43, &v42);
    if (!v20)
    {
      LODWORD(v22) = *&v48[4];
      asbd.mSampleRate = v22;
      asbd.mFormatID = *v48;
      asbd.mBytesPerPacket = 0;
      v23 = layout;
      mChannelLayoutTag_low = LOWORD(layout->mChannelLayoutTag);
      asbd.mFramesPerPacket = SamplesPerFrame;
      asbd.mChannelsPerFrame = mChannelLayoutTag_low;
      if (*v19)
      {
        CFRelease(*v19);
        *v19 = 0;
        v23 = layout;
      }

      SampleInfo = CMAudioFormatDescriptionCreate(*(a1 + 8), &asbd, layoutSize, v23, v42, v43, 0, (a1 + 40));
      free(v43);
      goto LABEL_24;
    }

LABEL_48:
    SampleInfo = v20;
    goto LABEL_49;
  }

  SampleInfo = MPEG2SampleGeneratorCreateFormatDescriptionFromAudioConfiguration(a1, *v48, *&v48[4], layout, layoutSize, 0);
LABEL_24:
  if (SampleInfo)
  {
    goto LABEL_44;
  }

  v25 = *&v48[12];
  *v11 = *v48;
  *(v11 + 12) = v25;
  v26 = (*(v11 + 4) >> 1) / SamplesPerFrame;
  if (v26 >= 0x18)
  {
    v26 = 24;
  }

  *(v11 + 32) = v26;
  v27 = *(a1 + 16);
  if (v27)
  {
    SampleInfo = v27(a1, *(a1 + 32), *(a1 + 40));
    if (SampleInfo)
    {
      goto LABEL_49;
    }
  }

  else
  {
    SampleInfo = 0;
  }

LABEL_31:
  DataLength = CMBlockBufferGetDataLength(theBuffer);
  v29 = *(a1 + 96);
  if (!v29)
  {
    v29 = *(v11 + 32);
  }

  if (v29 == 1)
  {
    if (theBuffer)
    {
      v30 = CFRetain(theBuffer);
    }

    else
    {
      v30 = 0;
    }

    v35 = 0;
    v34 = 0;
    *(v11 + 40) = v30;
    *(v11 + 48) = 0;
    *(v11 + 56) = 0;
    v36 = *(a3 + 16);
    *(v11 + 64) = *a3;
    *(v11 + 36) = a5;
    *(v11 + 80) = v36;
    *(v11 + 88) = a6;
  }

  else
  {
    v31 = *(v11 + 40);
    if (!v31)
    {
      Empty = CMBlockBufferCreateEmpty(*(a1 + 8), *(v11 + 32), 0, (v11 + 40));
      if (Empty)
      {
        goto LABEL_55;
      }

      *(v11 + 48) = 0;
      *(v11 + 56) = 0;
      v33 = *(a3 + 16);
      *(v11 + 64) = *a3;
      *(v11 + 36) = a5;
      *(v11 + 80) = v33;
      *(v11 + 88) = a6;
      v31 = *(v11 + 40);
    }

    SampleInfo = CMBlockBufferAppendBufferReference(v31, theBuffer, 0, DataLength, 0);
    if (SampleInfo)
    {
LABEL_49:
      if (layout)
      {
        free(layout);
      }

      v40 = *(a1 + 88);
      v41 = *(v40 + 40);
      if (v41)
      {
        CFRelease(v41);
      }

      *(v40 + 40) = 0;
      *(v40 + 48) = 0;
      *(v40 + 56) = 0;
      return SampleInfo;
    }

    v34 = *(v11 + 48);
    v35 = *(v11 + 56);
  }

  v37 = v11 + 16 * v34;
  *(v37 + 96) = v35;
  *(v37 + 104) = 1;
  *(v37 + 108) = DataLength;
  v38 = v34 + 1;
  *(v11 + 48) = v38;
  *(v11 + 56) = v35 + DataLength;
  if (v29 > v38)
  {
    goto LABEL_44;
  }

  Empty = DolbyFlushForType(a1);
LABEL_55:
  SampleInfo = Empty;
LABEL_44:
  if (layout)
  {
    free(layout);
  }

  return SampleInfo;
}

void DolbyResyncForType(uint64_t a1)
{
  v1 = *(a1 + 88);
  v2 = *(v1 + 40);
  if (v2)
  {
    CFRelease(v2);
  }

  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
}

void DolbyDestroyForType(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1)
  {
    v3 = *(a1 + 88);
    if (*(v1 + 40))
    {
      CFRelease(*(v1 + 40));
      v3 = *(a1 + 88);
    }

    *(v1 + 40) = 0;
    *(v1 + 48) = 0;
    *(v1 + 56) = 0;
    free(v3);
    *(a1 + 88) = 0;
  }
}

uint64_t DolbyReadBitRate(uint64_t a1, void *a2)
{
  if (!*(a1 + 40))
  {
    return 4294954323;
  }

  if (!a2)
  {
    return 4294954516;
  }

  result = 0;
  *a2 = *(*(a1 + 88) + 8);
  return result;
}

uint64_t H264GetSPSFromPPSId(uint64_t *a1, int a2, void *a3, void *a4)
{
  v4 = a1 + 2;
  while (1)
  {
    v4 = *v4;
    if (!v4)
    {
      break;
    }

    if (*(v4 + 6) == a2)
    {
      while (1)
      {
        a1 = *a1;
        if (!a1)
        {
          break;
        }

        if (*(a1 + 6) == *(v4 + 7))
        {
          if (a3)
          {
            *a3 = a1;
          }

          result = 0;
          if (a4)
          {
            *a4 = v4;
          }

          return result;
        }
      }

      return 4294954325;
    }
  }

  return 4294954325;
}

void *H264InitializeSPS_PPS_List(void *result)
{
  *result = 0;
  result[1] = result;
  result[2] = 0;
  result[3] = result + 2;
  return result;
}

void H264DestroySPS_PPS_List(uint64_t a1)
{
  H264DestroyParamSetList(a1 + 16);

  H264DestroyParamSetList(a1);
}

void H264DestroyParamSetList(uint64_t a1)
{
  for (i = *a1; *a1; i = *a1)
  {
    v3 = *i;
    *a1 = *i;
    if (!v3)
    {
      *(a1 + 8) = a1;
    }

    v4 = i[1];
    if (i + 4 != v4)
    {
      free(v4);
    }

    free(i);
  }
}

void *H264AddParamSetToList(uint64_t a1, const void *a2, size_t a3, int a4, int a5)
{
  v10 = malloc_type_calloc(1uLL, a3 + 32, 0x103004057E7F81CuLL);
  v11 = v10;
  if (v10)
  {
    v10[1] = v10 + 4;
    memcpy(v10 + 4, a2, a3);
    v11[2] = a3;
    *(v11 + 6) = a4;
    *(v11 + 7) = a5;
    *v11 = 0;
    **(a1 + 8) = v11;
    *(a1 + 8) = v11;
  }

  return v11;
}

__n128 H264ResyncForType(uint64_t a1)
{
  v1 = *(a1 + 88);
  v2 = *(v1 + 48);
  if (v2)
  {
    CFRelease(v2);
  }

  *(v1 + 48) = 0;
  v3 = *(v1 + 56);
  if (v3)
  {
    CFRelease(v3);
  }

  *(v1 + 56) = 0;
  *(v1 + 152) = 0;
  *(v1 + 160) = 0;
  v4 = MEMORY[0x1E6960CC0];
  result = *MEMORY[0x1E6960CC0];
  *(v1 + 164) = *MEMORY[0x1E6960CC0];
  *(v1 + 180) = *(v4 + 16);
  return result;
}

void H264DestroyForType(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1)
  {
    *(a1 + 88) = 0;
    H264DestroyParamSetList((v1 + 2));
    H264DestroyParamSetList(v1);
    v2 = v1[6];
    if (v2)
    {
      CFRelease(v2);
    }

    v1[6] = 0;
    v3 = v1[7];
    if (v3)
    {
      CFRelease(v3);
    }

    free(v1);
  }
}

Float64 H264ReadBitRate(uint64_t a1, void *a2)
{
  v3 = *(a1 + 88);
  v5 = *(v3 + 164);
  result = CMTimeGetSeconds(&v5);
  if (*(v3 + 160))
  {
    if (result != 0.0)
    {
      result = (8 * *(v3 + 152)) / result;
      *a2 = result;
    }
  }

  return result;
}

uint64_t PushH264Frame(uint64_t a1, CMTime *a2, int a3)
{
  v4 = *(a1 + 88);
  v5 = *(v4 + 48);
  if (!v5)
  {
    return 0;
  }

  sbuf = 0;
  sampleSizeArray = CMBlockBufferGetDataLength(v5);
  if (a3)
  {
    lhs = *a2;
    rhs = *(v4 + 88);
    CMTimeSubtract(&sampleTimingArray.duration, &lhs, &rhs);
    *(v4 + 112) = *&sampleTimingArray.duration.value;
    *(v4 + 128) = sampleTimingArray.duration.epoch;
    lhs = *(v4 + 164);
    rhs = *(v4 + 112);
    CMTimeAdd(&sampleTimingArray.duration, &lhs, &rhs);
    *(v4 + 164) = *&sampleTimingArray.duration.value;
    *(v4 + 180) = sampleTimingArray.duration.epoch;
  }

  sampleTimingArray.decodeTimeStamp = *(v4 + 88);
  *&sampleTimingArray.duration.value = *(v4 + 112);
  sampleTimingArray.duration.epoch = *(v4 + 128);
  sampleTimingArray.presentationTimeStamp = *(v4 + 64);
  v8 = CMSampleBufferCreate(*(a1 + 8), *(v4 + 48), 1u, 0, 0, *(v4 + 56), 1, 1, &sampleTimingArray, 1, &sampleSizeArray, &sbuf);
  if (!v8)
  {
    SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(sbuf, 1u);
    if (SampleAttachmentsArray)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(SampleAttachmentsArray, 0);
      v11 = ValueAtIndex;
      v12 = *MEMORY[0x1E695E4C0];
      v13 = *MEMORY[0x1E695E4D0];
      if ((*(v4 + 136) & 0x10) != 0)
      {
        v14 = *MEMORY[0x1E695E4C0];
      }

      else
      {
        v14 = *MEMORY[0x1E695E4D0];
      }

      CFDictionarySetValue(ValueAtIndex, *MEMORY[0x1E6960400], v14);
      v15 = *(v4 + 136);
      if ((v15 & 0x10) == 0)
      {
        CFDictionarySetValue(v11, *MEMORY[0x1E6960458], v13);
        v15 = *(v4 + 136);
      }

      if ((v15 & 8) != 0)
      {
        CFDictionarySetValue(v11, *MEMORY[0x1E6960460], v13);
        v15 = *(v4 + 136);
      }

      if ((v15 & 0x100) != 0)
      {
        v16 = v13;
      }

      else
      {
        v16 = v12;
      }

      CFDictionarySetValue(v11, *MEMORY[0x1E6960450], v16);
    }

    v8 = (*(a1 + 24))(a1, *(a1 + 32), sbuf, *(v4 + 144), *(v4 + 136));
    if (sbuf)
    {
      CFRelease(sbuf);
    }
  }

  *(v4 + 152) += CMBlockBufferGetDataLength(*(v4 + 48));
  ++*(v4 + 160);
  v17 = *(v4 + 48);
  if (v17)
  {
    CFRelease(v17);
  }

  *(v4 + 48) = 0;
  v18 = *(v4 + 56);
  if (v18)
  {
    CFRelease(v18);
  }

  *(v4 + 56) = 0;
  return v8;
}

void MP3ResyncForType(uint64_t a1)
{
  v1 = *(a1 + 88);
  v2 = *(v1 + 32);
  if (v2)
  {
    CFRelease(v2);
  }

  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
}

void MP3DestroyForType(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1)
  {
    v3 = *(a1 + 88);
    if (*(v1 + 32))
    {
      CFRelease(*(v1 + 32));
      v3 = *(a1 + 88);
    }

    *(v1 + 40) = 0;
    *(v1 + 48) = 0;
    free(v3);
    *(a1 + 88) = 0;
  }
}

uint64_t MP3ReadBitRate(uint64_t a1, void *a2)
{
  if (!*(a1 + 40))
  {
    return 4294954323;
  }

  if (!a2)
  {
    return 4294954516;
  }

  result = 0;
  *a2 = *(*(a1 + 88) + 12);
  return result;
}

uint64_t urlProcessor_registerBaseClass()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigAirPlayURLProcessorUtilDoesItemRequestSecureStop(uint64_t a1)
{
  v1 = a1;
  v10 = 0;
  cf = 0;
  v9 = *MEMORY[0x1E695E4C0];
  if (a1)
  {
    v2 = *(*(CMBaseObjectGetVTable() + 16) + 152);
    if (v2 && (v2(v1, &v10), v10))
    {
      CMBaseObject = FigAssetGetCMBaseObject(v10);
      v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v4 || (v5 = *MEMORY[0x1E695E480], v4(CMBaseObject, @"assetProperty_DefaultContentKeySession", *MEMORY[0x1E695E480], &cf)))
      {
        FigAirPlayURLProcessorUtilDoesItemRequestSecureStop_cold_2();
      }

      else
      {
        v6 = cf;
        v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v7 && !v7(v6, 0x1F0B20398, v5, &v9))
        {
          v1 = FigCFEqual();
          goto LABEL_13;
        }

        FigAirPlayURLProcessorUtilDoesItemRequestSecureStop_cold_1();
      }
    }

    else
    {
      FigAirPlayURLProcessorUtilDoesItemRequestSecureStop_cold_3();
    }

    v1 = 0;
  }

  else
  {
    FigAirPlayURLProcessorUtilDoesItemRequestSecureStop_cold_4();
  }

LABEL_13:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  return v1;
}

uint64_t FigAirPlayURLProcessorCreate(uint64_t a1, uint64_t a2, const void *a3, void *a4)
{
  cf[16] = *MEMORY[0x1E69E9840];
  if (FigAirPlayURLProcessorCreate_initFigAirPlayTracOnceCheck != -1)
  {
    FigAirPlayURLProcessorCreate_cold_1();
  }

  if (_MergedGlobals_69 != -1)
  {
    FigAirPlayURLProcessorCreate_cold_2();
  }

  v7 = CMDerivedObjectCreate();
  if (v7)
  {
    return v7;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = FigReadWriteLockCreate();
  *(DerivedStorage + 40) = v9;
  if (!v9)
  {
    return 0;
  }

  v10 = FigSimpleMutexCreate();
  *(DerivedStorage + 80) = v10;
  if (!v10)
  {
    FigAirPlayURLProcessorCreate_cold_8(cf);
    return LODWORD(cf[0]);
  }

  v11 = FigSimpleMutexCreate();
  *(DerivedStorage + 16) = v11;
  if (!v11)
  {
    FigAirPlayURLProcessorCreate_cold_7(cf);
    return LODWORD(cf[0]);
  }

  v12 = *MEMORY[0x1E695E480];
  v13 = MEMORY[0x1E695E9D8];
  v14 = MEMORY[0x1E695E9E8];
  *(DerivedStorage + 8) = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  *(DerivedStorage + 64) = CFDictionaryCreateMutable(v12, 0, v13, 0);
  *(DerivedStorage + 72) = CFDictionaryCreateMutable(v12, 0, v13, v14);
  if (a2)
  {
    v15 = CMBaseObjectGetDerivedStorage();
    cf[0] = 0;
    v30 = *MEMORY[0x1E695E4C0];
    *(v15 + 96) = 0;
    CMBaseObject = FigAssetGetCMBaseObject(a2);
    v17 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v17 || v17(CMBaseObject, @"assetProperty_DefaultContentKeySession", v12, cf))
    {
      FigAirPlayURLProcessorCreate_cold_4();
    }

    else
    {
      v18 = cf[0];
      v19 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v19 || v19(v18, 0x1F0B20398, v12, &v30))
      {
        FigAirPlayURLProcessorCreate_cold_3();
      }

      else if (FigCFEqual())
      {
        v20 = *(v15 + 104);
        *(v15 + 96) = 1;
        if (v20)
        {
          CFRelease(v20);
          *(v15 + 104) = 0;
        }

        FigAirPlaySecureStopRouterCreateSecureStopUUID(*(v15 + 88), (v15 + 104));
      }
    }

    if (cf[0])
    {
      CFRelease(cf[0]);
    }

    if (v30)
    {
      CFRelease(v30);
    }

    v21 = FigAssetGetCMBaseObject(a2);
    v22 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v22)
    {
      v23 = v22(v21, @"assetProperty_StorageSession", v12, DerivedStorage + 160);
    }

    else
    {
      v23 = 4294954514;
    }

    if (!*(DerivedStorage + 160))
    {
      FigAirPlayURLProcessorCreate_cold_5(cf);
      return LODWORD(cf[0]);
    }

    if (a3)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v23 = 0;
    if (a3)
    {
LABEL_27:
      v24 = CFRetain(a3);
      goto LABEL_30;
    }
  }

  v24 = 0;
LABEL_30:
  *(DerivedStorage + 144) = v24;
  v25 = FigDispatchQueueCreateWithPriority();
  *(DerivedStorage + 120) = v25;
  if (!v25)
  {
    FigAirPlayURLProcessorCreate_cold_6(cf);
    return LODWORD(cf[0]);
  }

  if (FigCFDictionaryGetValueIfPresent())
  {
    v26 = *(DerivedStorage + 88);
    if (v26)
    {
      CFRetain(v26);
    }
  }

  *(DerivedStorage + 128) = 0;
  v27 = (DerivedStorage + 128);
  if (FigCFDictionaryGetStringIfPresent())
  {
    CFStringGetCString(0, v27, 10, 0x600u);
  }

  if (dword_1EAF17368)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  *a4 = 0;
  return v23;
}

uint64_t __FigAirPlayURLProcessorCreate_block_invoke()
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();

  return fig_note_initialize_category_with_default_work_cf();
}