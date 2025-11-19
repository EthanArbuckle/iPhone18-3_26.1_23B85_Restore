void segPumpFreeSavedEntry(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 360);
  if (v3 == a2)
  {
    v4 = (a1 + 360);
  }

  else
  {
    do
    {
      v4 = v3;
      v3 = *v3;
    }

    while (v3 != a2);
  }

  v5 = *v3;
  *v4 = v5;
  if (!v5)
  {
    *(a1 + 368) = v4;
  }

  CFRelease(*(a2 + 8));
  v6 = *(a2 + 16);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(a2 + 40);
  if (v7)
  {
    CFRelease(v7);
  }

  free(*(a2 + 48));

  free(a2);
}

double segPumpResetConnection(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *(a2 + 16);
    if (v4)
    {
      v5 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v5)
      {
        v5(v4);
      }
    }

    FigHTTPStopAndReleaseTimer((a2 + 96));
    v6 = *(a2 + 16);
    if (v6)
    {
      CFRelease(v6);
      *(a2 + 16) = 0;
    }

    v7 = *(a2 + 8);
    if (v7)
    {
      CFRelease(v7);
      *(a2 + 8) = 0;
    }

    if (*(a2 + 88))
    {
      segPumpCustomURLLoaderCancelRequest(a1);
      *(a2 + 88) = 0;
    }

    if (*a2)
    {
      CFRelease(*a2);
      *a2 = 0;
    }

    v8 = *(a2 + 112);
    if (v8)
    {
      CFRelease(v8);
      *(a2 + 112) = 0;
    }

    v9 = *(a2 + 72);
    if (v9)
    {
      CFRelease(v9);
      *(a2 + 72) = 0;
    }

    *(a2 + 120) = 0;
    *(a2 + 128) = 0;
    *(a2 + 104) = 0;
    *(a2 + 80) = 0;
    result = 0.0;
    *(a2 + 24) = 0u;
    *(a2 + 40) = 0u;
    *(a2 + 52) = 0u;
  }

  return result;
}

void segPumpCancelMediaFileReadAndResetData(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if (*(a2 + 776) >= 1)
  {
    v8 = 0;
    do
    {
      segPumpStreamCancelReadAheadAndResetDataAtIndex(a1, a2, 0);
      ++v8;
    }

    while (v8 < *(a2 + 776));
  }

  segPumpStreamCancelPreloadReadAndResetData(a1, a2);
  segPumpStreamCancelPreloadMapReadAndResetData(a1, a2);
  v9 = *(a2 + 840);
  if (v9)
  {
    CFRelease(v9);
    *(a2 + 840) = 0;
  }

  v10 = *(a2 + 680);
  if (v10)
  {
    while (1)
    {
      v28 = *(v10 + 56);
      v29 = *(v10 + 40);
      v11 = *(v10 + 72);
      v12 = *(v10 + 80);
      v13 = *(v10 + 88);
      v14 = v13 ? CFRetain(v13) : 0;
      v15 = *(v10 + 8);
      if (v15)
      {
        break;
      }

LABEL_20:
      segPumpResetMediaConnection(a1, v10, a3);
      if (a4)
      {
        *(v10 + 40) = v29;
        *(v10 + 56) = v28;
        *(v10 + 72) = v11;
        *(v10 + 80) = v12;
        if (v14)
        {
          v21 = CFRetain(v14);
        }

        else
        {
          v21 = 0;
        }

        *(v10 + 88) = v21;
      }

      if (v14)
      {
        CFRelease(v14);
      }

      v10 = *v10;
      if (!v10)
      {
        goto LABEL_28;
      }
    }

    MediaFilePrivateData = segPumpGetMediaFilePrivateData(v15);
    v17 = *(v10 + 8);
    if (v17)
    {
      if (FigMediaSegmentSpecifierGetType(v17) == 1)
      {
        v18 = *(a2 + 288);
        if (v18)
        {
          CFRelease(v18);
          *(a2 + 288) = 0;
          *(a2 + 320) = -1;
        }

LABEL_18:
        MediaFilePrivateData[13] = 0;
        MediaFilePrivateData[14] = 0;
        MediaFilePrivateData[15] = 0;
        v20 = *(v10 + 8);
        if (v20)
        {
          CFRelease(v20);
          *(v10 + 8) = 0;
        }

        goto LABEL_20;
      }

      v17 = *(v10 + 8);
    }

    if (*(segPumpGetMediaFilePrivateData(v17) + 2))
    {
      v19 = segPumpGetMediaFilePrivateData(*(v10 + 8));
      CFRelease(v19[2]);
      *(segPumpGetMediaFilePrivateData(*(v10 + 8)) + 2) = 0;
    }

    goto LABEL_18;
  }

LABEL_28:
  v22 = *(a2 + 760);
  if (v22 >= 1)
  {
    bzero((a2 + 696), 8 * v22);
  }

  *(a2 + 696) = *(a2 + 680);
  v23 = *(a2 + 256);
  if (v23)
  {
    CFRelease(v23);
    *(a2 + 256) = 0;
  }

  v24 = *(a2 + 264);
  if (v24)
  {
    CFRelease(v24);
    *(a2 + 264) = 0;
  }

  v25 = *(a2 + 840);
  if (v25)
  {
    CFRelease(v25);
    *(a2 + 840) = 0;
  }

  v26 = *(a2 + 832);
  if (v26)
  {
    CFRelease(v26);
    *(a2 + 832) = 0;
  }

  *(a2 + 848) = 0;
  *(a2 + 403) = 0;
  if (!*(a2 + 870))
  {
    *(a2 + 869) = 0;
  }

  *(a2 + 871) = 0;
  *(a2 + 1152) = 0;
  v27 = *(a2 + 1160);
  if (v27)
  {
    CFRelease(v27);
    *(a2 + 1160) = 0;
  }
}

void segPumpResetMediaConnection(uint64_t a1, uint64_t a2, int a3)
{
  segPumpResetConnection(a1, a2 + 16);
  if (!a3)
  {
    segPumpStreamDontReuseHTTPRequest(a1, a2);
  }

  *(a2 + 240) = 0;
  *(a2 + 248) = 0;
  v6 = *(a2 + 272);
  if (v6)
  {
    CFRelease(v6);
    *(a2 + 272) = 0;
  }

  v7 = *(a2 + 168);
  if (v7)
  {
    CFRelease(v7);
    *(a2 + 168) = 0;
  }

  *(a2 + 216) = 0;
  *(a2 + 224) = 0;
  *(a2 + 232) = 0;
  v8 = *(a2 + 8);
  if (v8)
  {
    CFRelease(v8);
    *(a2 + 8) = 0;
  }

  *(a2 + 209) = 0;
  *(a2 + 288) = 0;
  *(a2 + 296) = 0;
}

void segPumpCompleteNWAlternateForStream(uint64_t a1)
{
  if (*(a1 + 1208))
  {
    nw_activity_complete_with_reason();
    v2 = *(a1 + 1208);
    if (v2)
    {
      CFRelease(v2);
      *(a1 + 1208) = 0;
    }
  }

  if (*(a1 + 1200))
  {
    nw_activity_complete_with_reason();
    v3 = *(a1 + 1200);
    if (v3)
    {
      CFRelease(v3);
      *(a1 + 1200) = 0;
    }
  }
}

void segPumpStreamCancelPreloadReadAndResetData(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 792);
  if (v3)
  {
    if (v3[4] || v3[13])
    {
      segPumpResetMediaConnection(a1, v3, 0);
    }

    else
    {
      v4 = v3[34];
      if (v4)
      {
        CFRelease(v4);
        v3 = *(a2 + 792);
        v3[34] = 0;
      }

      v5 = v3[1];
      if (v5)
      {
        CFRelease(v5);
        *(*(a2 + 792) + 8) = 0;
      }
    }

    *(a2 + 792) = 0;
  }
}

void segPumpStreamCancelPreloadMapReadAndResetData(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 800);
  if (v3)
  {
    if (v3[4] || v3[13])
    {
      segPumpResetMediaConnection(a1, v3, 0);
    }

    else
    {
      v4 = v3[34];
      if (v4)
      {
        CFRelease(v4);
        v3 = *(a2 + 800);
        v3[34] = 0;
      }

      v5 = v3[1];
      if (v5)
      {
        CFRelease(v5);
        *(*(a2 + 800) + 8) = 0;
      }
    }

    *(a2 + 800) = 0;
  }
}

const void *segPumpGetMediaFilePrivateData(const void *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    segPumpGetMediaFilePrivateData_cold_2();
    return 0;
  }

  Instance = CMGetAttachment(a1, @"SegPumpMediaFilePrivateData", 0);
  if (!Instance)
  {
    FigGetAllocatorForMedia();
    context[0] = xmmword_1E7476B70;
    if (segPumpMediaFilePrivateDataGetTypeID_once != -1)
    {
      dispatch_once_f(&segPumpMediaFilePrivateDataGetTypeID_once, context, segPumpRegisterClassUtil);
    }

    Instance = _CFRuntimeCreateInstance();
    if (!Instance)
    {
      segPumpGetMediaFilePrivateData_cold_1();
      return Instance;
    }

    CMSetAttachment(a1, @"SegPumpMediaFilePrivateData", Instance, 0);
    if (CFGetRetainCount(Instance) <= 1)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      CFRelease(Instance);
      return 0;
    }

    CFRelease(Instance);
  }

  return Instance;
}

void segPumpStreamCancelReadAheadAndResetDataAtIndex(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a2 + 768) + 8 * a3);
  if (v4)
  {
    v5 = a3;
    if (v4[4] || v4[13])
    {
      segPumpResetMediaConnection(a1, v4, 0);
    }

    else
    {
      v8 = v4[34];
      if (v8)
      {
        CFRelease(v8);
        v9 = *(a2 + 768);
        *(*(v9 + 8 * v5) + 272) = 0;
        v4 = *(v9 + 8 * v5);
      }

      v10 = v4[1];
      if (v10)
      {
        CFRelease(v10);
        *(*(*(a2 + 768) + 8 * v5) + 8) = 0;
      }
    }

    v6 = *(a2 + 776);
    if (v6 > v5)
    {
      v7 = v6 - 1;
      if (v7 > v5)
      {
        do
        {
          *(*(a2 + 768) + 8 * v5) = *(*(a2 + 768) + 8 * v5 + 8);
          ++v5;
        }

        while (v7 != v5);
      }

      *(*(a2 + 768) + 8 * v7) = 0;
    }
  }
}

void segPumpMediaFilePrivateDataFinalize(void *a1)
{
  v2 = a1[16];
  if (v2)
  {
    CFRelease(v2);
    a1[16] = 0;
  }

  v3 = a1[26];
  if (v3)
  {
    CFRelease(v3);
    a1[26] = 0;
  }

  v4 = a1[27];
  if (v4)
  {
    CFRelease(v4);
    a1[27] = 0;
  }

  v5 = a1[2];
  if (v5)
  {
    CFRelease(v5);
    a1[2] = 0;
  }

  v6 = a1[3];
  if (v6)
  {
    CFRelease(v6);
    a1[3] = 0;
  }
}

uint64_t segPumpRegisterClassUtil(uint64_t a1)
{
  result = _CFRuntimeRegisterClass();
  **(a1 + 8) = result;
  return result;
}

void segPumpStreamUpdateIndexExpectedArrival(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 9760) && *(a1 + 337) && *(a1 + 392) == a2)
  {
    SInt64 = FigCFNumberCreateSInt64();
    v4 = *(a1 + 9760);
    v5 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v5)
    {
      v5(v4, @"AfmfpbProperty_MainPlaylistExpectedUpdateTime", SInt64);
    }

    if (SInt64)
    {

      CFRelease(SInt64);
    }
  }
}

void segPumpStreamDontReuseHTTPRequest(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 160);
  if (v4)
  {
    CFRelease(v4);
    *(a2 + 160) = 0;
  }

  v5 = *(a2 + 152);
  if (v5)
  {
    CFRelease(v5);
    *(a2 + 152) = 0;
  }

  v6 = *(a2 + 32);
  if (v6)
  {
    v7 = *(*(CMBaseObjectGetVTable() + 8) + 24);
    if (v7)
    {
      v7(v6);
    }

    v8 = *(a2 + 32);
    if (v8)
    {
      CFRelease(v8);
      *(a2 + 32) = 0;
    }
  }

  v9 = *(a2 + 24);
  if (v9)
  {
    CFRelease(v9);
    *(a2 + 24) = 0;
  }

  v10 = *(a2 + 88);
  if (v10)
  {
    CFRelease(v10);
    *(a2 + 88) = 0;
  }

  *(a2 + 145) = 0;
  *(a2 + 192) = 0;
  *(a2 + 80) = 0;
  if (*(a2 + 104))
  {
    segPumpCustomURLLoaderCancelRequest(a1);
    *(a2 + 104) = 0;
  }
}

void segPumpUnlockAndSendAllPendingNotifications()
{
  if (FigRetainProxyIsInvalidated())
  {

    FigRetainProxyUnlockMutex();
    return;
  }

  Owner = FigRetainProxyGetOwner();
  CFRetain(Owner);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (FigRetainProxyGetLockCount() < 2)
  {
    v2 = *(DerivedStorage + 9144);
    *(DerivedStorage + 9144) = 0;
    v3 = *(DerivedStorage + 9152);
    v4 = *(DerivedStorage + 9160);
    *(DerivedStorage + 9152) = 0u;
    v5 = *(DerivedStorage + 9168);
    v6 = *(DerivedStorage + 9176);
    *(DerivedStorage + 9168) = 0u;
    v7 = *(DerivedStorage + 9184);
    v8 = *(DerivedStorage + 9192);
    *(DerivedStorage + 9184) = 0u;
    FigRetainProxyUnlockMutex();
    if (!v2)
    {
      goto LABEL_28;
    }

    if ((v2 & 0x20) != 0)
    {
      goto LABEL_27;
    }

    if ((v2 & 2) != 0)
    {
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();
      if ((v2 & 0x10) == 0)
      {
LABEL_10:
        if ((v2 & 0x40) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_21;
      }
    }

    else if ((v2 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    if ((v2 & 0x40) == 0)
    {
LABEL_11:
      if ((v2 & 1) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_22;
    }

LABEL_21:
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    if ((v2 & 1) == 0)
    {
LABEL_12:
      if ((v2 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_23;
    }

LABEL_22:
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    if ((v2 & 0x80) == 0)
    {
LABEL_13:
      if ((v2 & 0x100) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_24;
    }

LABEL_23:
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    if ((v2 & 0x100) == 0)
    {
LABEL_14:
      if ((v2 & 0x200) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_25;
    }

LABEL_24:
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    if ((v2 & 0x200) == 0)
    {
LABEL_15:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_26;
    }

LABEL_25:
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    if ((v2 & 0x400) == 0)
    {
LABEL_16:
      if ((v2 & 0x800) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_27;
    }

LABEL_26:
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    if ((v2 & 0x800) != 0)
    {
LABEL_27:
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();
    }

LABEL_28:
    if (v3)
    {
      CFRelease(v3);
    }

    if (v4)
    {
      CFRelease(v4);
    }

    if (v5)
    {
      CFRelease(v5);
    }

    if (v6)
    {
      CFRelease(v6);
    }

    if (v7)
    {
      CFRelease(v7);
    }

    if (v8)
    {
      CFRelease(v8);
    }

    goto LABEL_40;
  }

  FigRetainProxyUnlockMutex();
LABEL_40:

  CFRelease(Owner);
}

void segPumpReadyNotification(uint64_t a1, __CFString *a2, CFTypeRef cf)
{
  if (a2 == @"FBPAL_AlternateListChanged")
  {
    v6 = *(a1 + 9144) | 1;
    goto LABEL_20;
  }

  if (a2 == @"FBPAL_SeekableTimeRangeChanged")
  {
    v6 = *(a1 + 9144) | 2;
    goto LABEL_20;
  }

  if (a2 == @"FBP_DurationChanged")
  {
    v6 = *(a1 + 9144) | 0x10;
    goto LABEL_20;
  }

  if (@"FBP_FatalErrorOccurred" == a2)
  {
    v7 = *(a1 + 9152);
    if (v7)
    {
      CFRelease(v7);
      *(a1 + 9152) = 0;
    }

    if (cf)
    {
      v8 = CFRetain(cf);
    }

    else
    {
      v8 = 0;
    }

    *(a1 + 9152) = v8;
    *(a1 + 9144) |= 0x20u;
    *(a1 + 9704) = 1;
  }

  else if (a2 == @"FBP_NewErrorLogEntry")
  {
    v9 = *(a1 + 9176);
    if (v9)
    {
      CFRelease(v9);
      *(a1 + 9176) = 0;
    }

    *(a1 + 9144) |= 0x40u;
    if (cf)
    {
      v10 = CFRetain(cf);
    }

    else
    {
      v10 = 0;
    }

    *(a1 + 9176) = v10;
  }

  else
  {
    if (a2 != @"FBP_SuggestedAlternate")
    {
      if (a2 == @"FBP_TaggedRangeMetadataChanged")
      {
        v6 = *(a1 + 9144) | 0x100;
      }

      else if (a2 == @"FBP_PrefersConcurrentSwitchChanged")
      {
        v6 = *(a1 + 9144) | 0x200;
      }

      else
      {
        if (a2 != @"FBP_RecommendedPrebufferReservationChanged")
        {
          if (@"FBP_PlaylistUpdateNotification" == a2)
          {
            *(a1 + 9144) |= 0x800u;
            v5 = *(a1 + 9192);
            *(a1 + 9192) = cf;
            if (cf)
            {
              CFRetain(cf);
            }

            if (v5)
            {

              CFRelease(v5);
            }
          }

          return;
        }

        v6 = *(a1 + 9144) | 0x400;
      }

LABEL_20:
      *(a1 + 9144) = v6;
      return;
    }

    *(a1 + 9144) |= 0x80u;
    v11 = *(a1 + 9168);
    if (v11)
    {
      CFRelease(v11);
      *(a1 + 9168) = 0;
    }

    if (cf)
    {
      v12 = CFRetain(cf);
    }

    else
    {
      v12 = 0;
    }

    *(a1 + 9168) = v12;
  }
}

void segPumpSendEndCallbackForActiveStream(uint64_t a1, uint64_t a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = DerivedStorage;
  v8 = *(DerivedStorage + 392 + 16 * *a2 + 8);
  if (v8 != a2)
  {
    v8 = *(DerivedStorage + 392 + 16 * *a2);
  }

  if (*(v8 + 16) && !*(a2 + 1152))
  {
    segPumpMakeDataCallback(a1, a2, *(DerivedStorage + 176), 0, 2u, *(a2 + 304), MEMORY[0x1E6960C70], 0, 0, a3, 0, 0);
    segPumpStopStream(v7, a2, 0);
    *(a2 + 1152) = 1;
    v9 = *(a2 + 1160);
    *(a2 + 1160) = a3;
    if (a3)
    {
      CFRetain(a3);
    }

    if (v9)
    {

      CFRelease(v9);
    }
  }
}

uint64_t segPumpSentEndCallbackForAnyStream(uint64_t a1)
{
  if (a1)
  {
    v2 = 0;
    for (i = a1 + 392; *i; i += 16)
    {
      if (*(*i + 1152))
      {
        return 1;
      }

      if (++v2 == 3)
      {
        return 0;
      }
    }

    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  else
  {
    segPumpSentEndCallbackForAnyStream_cold_1();
  }

  segPumpSentEndCallbackForAnyStreamHandleTTR(a1);
  return 0;
}

uint64_t segPumpSentEndCallbackForAnyStreamHandleTTR(uint64_t a1)
{
  if (!a1)
  {
    return segPumpSentEndCallbackForAnyStreamHandleTTR_cold_2();
  }

  v1 = *(a1 + 9320);
  if (!v1)
  {
    return segPumpSentEndCallbackForAnyStreamHandleTTR_cold_1();
  }

  return FigRCLGetNumberWithDefault(v1, @"radar_153096490_TTREnabled");
}

uint64_t segPumpMakeDataCallback(uint64_t a1, uint64_t *a2, const void *a3, uint64_t a4, unsigned int a5, uint64_t a6, __int128 *a7, uint64_t a8, int a9, uint64_t a10, uint64_t a11, _DWORD *a12)
{
  v20 = *(CMBaseObjectGetDerivedStorage() + 160);
  v21 = *a2;
  v22 = *(a2 + 18);
  v28 = 0;
  if (!v20)
  {
    goto LABEL_9;
  }

  v25 = v22;
  v24 = a2[110];
  if (a3)
  {
    CFRetain(a3);
  }

  FigRetainProxyUnlockAll();
  v26 = *a7;
  v27 = *(a7 + 2);
  v20(a1, a3, a4, a5, v21, v25, 0, &v26, a8, a9, a6, a10, a11, &v28);
  if (a3)
  {
    CFRelease(a3);
  }

  FigRetainProxyRelock();
  if (FigRetainProxyIsInvalidated())
  {
    return 4294954413;
  }

  if (v24 != a2[110])
  {
    return 4294951670;
  }

LABEL_9:
  result = 0;
  if (a12)
  {
    *a12 = v28;
  }

  return result;
}

void segPumpSetStreamDiscontinuityDomain(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2[38];
  if (a3)
  {
    a2[38] = FigMediaPlaylistUtilityGetDiscontinuityDomainForSegment(a2[39], a3);
    MediaSequence = FigMediaSegmentSpecifierGetMediaSequence(a3);
  }

  else
  {
    MediaSequence = 0;
    a2[38] = 0;
  }

  a2[41] = MediaSequence;
  if (*(a1 + 392) == a2 && *(a1 + 9760))
  {
    v10 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberCFIndexType, a2 + 38);
    v11 = *(a1 + 9760);
    v12 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v12)
    {
      v12(v11, @"AfmfpbProperty_MainStreamDiscontinuityDomain", v10);
    }

    if (v10)
    {
      CFRelease(v10);
    }
  }

  if (v5 != a2[38] && dword_1EAF16A30 != 0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

void segPumpStreamDisposeStorage(uint64_t a1)
{
  segPumpFreeDiscoQueue((a1 + 336));
  v2 = *(a1 + 280);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 280) = 0;
  }

  v3 = *(a1 + 272);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 272) = 0;
  }

  v4 = *(a1 + 232);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 232) = 0;
  }

  v5 = *(a1 + 240);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 240) = 0;
  }

  segPumpStreamUpdateIndexFile(a1, 0, 0, 0, 0, 0);
}

void segPumpDestroyMediaConnection(uint64_t a1, void *a2, uint64_t a3)
{
  --a2[93];
  v4 = a2[85];
  if (v4 == a3)
  {
    v5 = a2 + 85;
  }

  else
  {
    do
    {
      v5 = v4;
      v4 = *v4;
    }

    while (v4 != a3);
  }

  v6 = *v4;
  *v5 = v6;
  if (!v6)
  {
    a2[86] = v5;
  }

  segPumpResetMediaConnection(a1, a3, 0);
  FigHTTPStopAndReleaseTimer((a3 + 112));
  v7 = *(a3 + 16);
  if (v7)
  {
    CFRelease(v7);
    *(a3 + 16) = 0;
  }

  v8 = *(a3 + 168);
  if (v8)
  {
    CFRelease(v8);
    *(a3 + 168) = 0;
  }

  v9 = *(a3 + 176);
  if (v9)
  {
    CFRelease(v9);
    *(a3 + 176) = 0;
  }

  v10 = *(a3 + 24);
  if (v10)
  {
    CFRelease(v10);
    *(a3 + 24) = 0;
  }

  v11 = *(a3 + 32);
  if (v11)
  {
    CFRelease(v11);
    *(a3 + 32) = 0;
  }

  v12 = *(a3 + 88);
  if (v12)
  {
    CFRelease(v12);
    *(a3 + 88) = 0;
  }

  v13 = *(a3 + 152);
  if (v13)
  {
    CFRelease(v13);
    *(a3 + 152) = 0;
  }

  v14 = *(a3 + 160);
  if (v14)
  {
    CFRelease(v14);
  }

  free(a3);
}

uint64_t *AlternateQueueFree(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    do
    {
      v3 = *result;
      *a1 = *result;
      if (!v3)
      {
        *(a1 + 8) = a1;
      }

      AlternateEntryFree(result);
      result = *a1;
    }

    while (*a1);
  }

  return result;
}

void *segPumpFreeDiscoQueue(void **a1)
{
  result = *a1;
  if (result)
  {
    do
    {
      v3 = *result;
      v4 = result[1];
      if (*result)
      {
        v5 = *result;
      }

      else
      {
        v5 = a1;
      }

      v5[1] = v4;
      *v4 = v3;
      free(result);
      result = *a1;
    }

    while (*a1);
  }

  return result;
}

void segPumpStreamUpdateIndexFile(void *a1, CFTypeRef cf, CFTypeRef a3, CFTypeRef a4, CFTypeRef a5, CFTypeRef a6)
{
  v11 = a1[2];
  a1[2] = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  v12 = a1[1];
  a1[1] = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  v13 = a1[3];
  a1[3] = a4;
  if (a4)
  {
    CFRetain(a4);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  v14 = a1[4];
  a1[4] = a5;
  if (a5)
  {
    CFRetain(a5);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  v15 = a1[5];
  a1[5] = a6;
  if (a6)
  {
    CFRetain(a6);
  }

  if (v15)
  {

    CFRelease(v15);
  }
}

void AlternateEntryFree(void *a1)
{
  if (a1)
  {
    v2 = a1[1];
    if (v2)
    {
      CFRelease(v2);
    }
  }

  free(a1);
}

double segPumpGetMinTime(uint64_t *a1)
{
  v2 = a1[1075];
  v3 = a1 + 49;
  v4 = *(a1[2 * v2 + 49] + 88);
  if (v2 == 1 && (v5 = *(*v3 + 56)) != 0 && (MediaSegmentSpecifiers = FigMediaPlaylistGetMediaSegmentSpecifiers(v5)) != 0 && CFArrayGetCount(MediaSegmentSpecifiers) >= 1 && (v7 = *v3, *(*v3 + 16)) || !a1[1075] && (v9 = *(a1[51] + 56)) != 0 && (v10 = FigMediaPlaylistGetMediaSegmentSpecifiers(v9)) != 0 && CFArrayGetCount(v10) >= 1 && (v7 = a1[51], *(v7 + 16)))
  {
    if (v4 <= *(v7 + 88))
    {
      return *(v7 + 88);
    }
  }

  return v4;
}

double segPumpGetMaxTime(void *a1)
{
  v1 = a1[1075];
  v2 = a1[2 * v1 + 49];
  result = -1.0;
  if (*(v2 + 16))
  {
    v4 = *(v2 + 96);
    if (v4 > 0.0)
    {
      result = v4 + *(v2 + 88);
    }
  }

  if (v1)
  {
    if (v1 != 1)
    {
LABEL_11:
      v7 = result;
      goto LABEL_12;
    }

    v5 = a1[49];
  }

  else
  {
    v5 = a1[51];
  }

  if (!*(v5 + 16))
  {
    goto LABEL_11;
  }

  v6 = *(v5 + 96);
  if (v6 <= 0.0)
  {
    goto LABEL_11;
  }

  v7 = v6 + *(v5 + 88);
  if (v7 < 0.0)
  {
    goto LABEL_11;
  }

  if (result < 0.0)
  {
    result = v7;
  }

LABEL_12:
  if (result >= v7)
  {
    result = v7;
  }

  if (result < 0.0)
  {
    return 0.0;
  }

  return result;
}

uint64_t segPumpGetObservedNetworkStats(uint64_t a1, uint64_t a2, uint64_t a3)
{
  memset(&v10[8], 0, 216);
  segPumpMakeNetworkPredictionInput(a1, v10);
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  *&v10[16] = UpTimeNanoseconds - a2;
  *v10 = 0;
  *&v10[56] = 0uLL;
  *&v10[168] = 9;
  v7 = *(a1 + 96);
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v8)
  {
    v11[10] = *&v10[160];
    v11[11] = *&v10[176];
    v11[12] = *&v10[192];
    v11[13] = *&v10[208];
    v11[6] = *&v10[96];
    v11[7] = *&v10[112];
    v11[8] = *&v10[128];
    v11[9] = *&v10[144];
    v11[2] = *&v10[32];
    v11[3] = *&v10[48];
    v11[4] = *&v10[64];
    v11[5] = *&v10[80];
    v11[0] = *v10;
    v11[1] = *&v10[16];
    LODWORD(result) = v8(v7, UpTimeNanoseconds, v11, a3);
  }

  else
  {
    LODWORD(result) = -12782;
  }

  if (result >> 1 == 2147474779)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t segPumpGetAverageEstimatedMediaBitrate(uint64_t a1, int a2, _DWORD *a3, double *a4)
{
  v4 = 0;
  v5 = (a1 + 400);
  v6 = 0.0;
  v7 = 3;
  while (!*(*(v5 - 1) + 16))
  {
LABEL_11:
    v5 += 2;
    if (!--v7)
    {
      *a3 = v4;
      *a4 = v6;
      return 1;
    }
  }

  if (!a2 || (v8 = *v5) == 0)
  {
    v8 = *(v5 - 1);
  }

  v9 = *(v8 + 1096);
  if (v9)
  {
    v4 += v9;
    if (v6 == 0.0)
    {
      v6 = *(v8 + 1104);
    }

    else if (v6 >= *(v8 + 1104))
    {
      v6 = *(v8 + 1104);
    }

    goto LABEL_11;
  }

  return 0;
}

uint64_t segPumpGetSafeNetworkBandwidth(uint64_t a1, double *a2, int a3, int a4)
{
  v39 = *MEMORY[0x1E69E9840];
  v28 = 0;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  segPumpMakeNetworkPrediction(a1, &v23);
  v9 = v8;
  v10 = 0.0;
  if (!v8)
  {
    v10 = *(&v24 + 1) * v23;
    if (v10 != 0.0)
    {
      v9 = 0;
      if (!a2)
      {
        return v9;
      }

      goto LABEL_26;
    }
  }

  if (!(a4 | a3) || *(a1 + 8896))
  {
    goto LABEL_25;
  }

  if (!segPumpSentEndCallbackForAllActiveStreams(a1))
  {
    v11 = 0;
    v12 = 1;
    do
    {
      v13 = *(a1 + 392 + v11);
      if (*(v13 + 16))
      {
        v12 = (*(v13 + 869) & v12);
      }

      v11 += 16;
    }

    while (v11 != 48);
    if (!(v12 | a4))
    {
      goto LABEL_25;
    }
  }

  number = 0;
  v14 = *(a1 + 9760);
  if (!v14 || (AllocatorForMedia = FigGetAllocatorForMedia(), (v16 = *(*(CMBaseObjectGetVTable() + 8) + 48)) == 0) || (v16(v14, @"AfmfpbProperty_PredictedBitrate", AllocatorForMedia, &number), !number))
  {
    v10 = 0.0;
LABEL_25:
    if (!a2)
    {
      return v9;
    }

LABEL_26:
    *a2 = v10;
    return v9;
  }

  valuePtr = 0;
  CFNumberGetValue(number, kCFNumberSInt64Type, &valuePtr);
  v17 = valuePtr;
  if (dword_1EAF16A30)
  {
    v30 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v19 = v30;
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
    {
      v20 = v19;
    }

    else
    {
      v20 = v19 & 0xFFFFFFFE;
    }

    if (v20)
    {
      v21 = *(a1 + 8944);
      if (!v21)
      {
        v21 = &stru_1F0B1AFB8;
      }

      v33 = 136315650;
      v34 = "segPumpGetNetworkBandwidthFromMonitor";
      v35 = 2114;
      v36 = v21;
      v37 = 2048;
      v38 = valuePtr;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (number)
  {
    CFRelease(number);
  }

  v9 = 0;
  v10 = v17;
  if (a2)
  {
    goto LABEL_26;
  }

  return v9;
}

void segPumpCanContinueWithoutGap(uint64_t a1, int *a2)
{
  if (!*(a1 + 8218) && *(a1 + 24) != 1 && (v4 = a1 + 392, (v5 = *(*(a1 + 392 + 16 * *(a1 + 8600)) + 56)) != 0) && (v6 = FigMediaPlaylistGetMediaSegmentSpecifiers(v5)) != 0 && CFArrayGetCount(v6) >= 1 && (v7 = *(v4 + 16 * *(a1 + 8600)), *(v7 + 1112)))
  {
    if (*(v7 + 1185))
    {
      v8 = 0;
    }

    else
    {
      v8 = 7;
      UpTimeNanoseconds = FigGetUpTimeNanoseconds();
      v10 = 0;
      v30 = UpTimeNanoseconds;
      v31 = v4;
      do
      {
        v11 = *(v4 + 16 * v10);
        if (*(v11 + 16))
        {
          if (*(v11 + 56))
          {
            if (*(v11 + 862))
            {
              v12 = fmax(*(v11 + 912) + (UpTimeNanoseconds - *(v11 + 896)) / -1000000000.0 + 0.0, 0.0);
            }

            else
            {
              v14 = 0;
              v12 = 0.0;
              while (1)
              {
                MediaSegmentSpecifiers = FigMediaPlaylistGetMediaSegmentSpecifiers(*(v11 + 56));
                if (MediaSegmentSpecifiers)
                {
                  MediaSegmentSpecifiers = CFArrayGetCount(MediaSegmentSpecifiers);
                }

                if (v14 >= MediaSegmentSpecifiers)
                {
                  break;
                }

                v16 = FigMediaPlaylistGetMediaSegmentSpecifiers(*(v11 + 56));
                ValueAtIndex = CFArrayGetValueAtIndex(v16, v14);
                MediaFilePrivateData = segPumpGetMediaFilePrivateData(ValueAtIndex);
                v19 = MediaFilePrivateData;
                if (!MediaFilePrivateData[96])
                {
                  if (MediaFilePrivateData[73] || MediaFilePrivateData[74])
                  {
                    v12 = v12 + FigMediaSegmentSpecifierGetTimeInSeconds(ValueAtIndex);
                  }

                  else
                  {
                    PartialSegments = FigMediaSegmentSpecifierGetPartialSegments(ValueAtIndex);
                    if (PartialSegments && CFArrayGetCount(PartialSegments) >= 1)
                    {
                      v21 = FigMediaSegmentSpecifierGetPartialSegments(ValueAtIndex);
                      v22 = 0;
                      if (v21)
                      {
LABEL_32:
                        Count = CFArrayGetCount(v21);
                        goto LABEL_34;
                      }

                      while (1)
                      {
                        Count = 0;
LABEL_34:
                        if (v22 >= Count)
                        {
                          break;
                        }

                        v24 = CFArrayGetValueAtIndex(v21, v22);
                        v25 = segPumpGetMediaFilePrivateData(v24);
                        if (v25[73] || v25[74])
                        {
                          v12 = v12 + FigMediaSegmentSpecifierGetTimeInSeconds(v24);
                        }

                        ++v22;
                        if (v21)
                        {
                          goto LABEL_32;
                        }
                      }

                      UpTimeNanoseconds = v30;
                      v4 = v31;
                    }
                  }
                }

                ++v14;
                if (!v19[73])
                {
                  if (ValueAtIndex)
                  {
                    v26 = *(v11 + 376) + 1;
                    if (v26 != FigMediaSegmentSpecifierGetMediaSequence(ValueAtIndex))
                    {
                      v8 += -1 << v10;
                    }
                  }

                  break;
                }
              }
            }

            v27 = *(v11 + 1056);
            v28 = *(v11 + 1064);
            v29 = v27 + v12 * 1000000000.0;
            if (v27 >= v28)
            {
              v29 = v28 + v12 * 1000000000.0;
            }

            if (UpTimeNanoseconds <= v29)
            {
              v13 = 0;
            }

            else
            {
              v13 = -1 << v10;
            }
          }

          else
          {
            v13 = -1 << v10;
          }

          v8 += v13;
        }

        ++v10;
      }

      while (v10 != 3);
    }
  }

  else
  {
    v8 = 7;
  }

  if (a2)
  {
    *a2 = v8;
  }
}

uint64_t segPumpConnectedInterfaceIsWWAN(uint64_t a1)
{
  v1 = *(a1 + 8648);
  if (v1)
  {
    return FigNetworkInterfaceIsCellular(v1);
  }

  v1 = *(a1 + 8644);
  if (v1)
  {
    return FigNetworkInterfaceIsCellular(v1);
  }

  result = *(a1 + 8632);
  if (result)
  {
    return FigNetworkPathInformationDoesUseCellular();
  }

  return result;
}

CMTimeRange *segPumpGetLiveEdge@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *a4 = 0u;
  if (*(a1 + 8218))
  {
    goto LABEL_22;
  }

  v8 = 0;
  v9 = a1 + 392;
  v10 = 1;
  v11 = 1.79769313e308;
  do
  {
    v12 = v10;
    v13 = *(v9 + 16 * v8);
    if (*(v13 + 16) && ((a2 >> v8) & 1) != 0)
    {
      v14 = *(v13 + 88);
      v15 = *(v13 + 96);
      v16 = segPumpGetMinimumPrebufferReservation(a1, *(v13 + 56)) + *(a1 + 8176);
      if (*(v13 + 1064) >= 1 && *(a1 + 342))
      {
        UpTimeNanoseconds = FigGetUpTimeNanoseconds();
        v18 = *(a1 + 16);
        if (v18 <= 0.0)
        {
          LODWORD(v18) = *(a1 + 8);
          v18 = *&v18;
        }

        v19 = UpTimeNanoseconds - *(v13 + 1064);
        if (v19 / 1000000000.0 < v18)
        {
          v18 = v19 / 1000000000.0;
        }

        v16 = v16 - v18;
      }

      if (v11 > v14 + v15 - v16)
      {
        v11 = v14 + v15 - v16;
      }
    }

    v10 = 0;
    v8 = 1;
  }

  while ((v12 & 1) != 0);
  if (v11 >= 1.79769313e308)
  {
LABEL_22:
    start = **&MEMORY[0x1E6960C70];
    v23 = start;
    return CMTimeRangeMake(a4, &start, &v23);
  }

  else
  {
    v20 = *(a1 + 16);
    if (v20 <= 0.0)
    {
      LODWORD(v20) = *(a1 + 8);
      v20 = *&v20;
    }

    if (a3)
    {
      v21 = v20 * 1.5;
    }

    else
    {
      v21 = v20;
    }

    CMTimeMakeWithSeconds(a4, v11, 90000);
    result = CMTimeMakeWithSeconds(&start, v21, 90000);
    *(a4 + 24) = start;
  }

  return result;
}

CFTypeRef segPumpCopyRecoveryAlternateIfViable(uint64_t a1)
{
  if (!*(a1 + 8432))
  {
    return 0;
  }

  v2 = a1 + 8280;
  do
  {
    v2 = *v2;
    if (!v2)
    {
      return 0;
    }
  }

  while (!CFEqual(*(v2 + 8), *(a1 + 8432)));
  v6 = 0.0;
  if (*(a1 + 9088) <= 0.0)
  {
    AverageBitRate = FigAlternateGetAverageBitRate(*(a1 + 8432));
    if (!AverageBitRate)
    {
      AverageBitRate = FigAlternateGetPeakBitRate(*(v2 + 8));
    }

    v3 = AverageBitRate;
  }

  else
  {
    v3 = (*(a1 + 9088) * FigAlternateGetPeakBitRate(*(v2 + 8)));
  }

  if (segPumpGetSafeNetworkBandwidth(a1, &v6, 0, 0) || v6 < v3)
  {
    return 0;
  }

  return CFRetain(*(a1 + 8432));
}

uint64_t segPumpCreateCPECryptorsSessionCryptKeysDict(uint64_t a1, CFTypeRef *a2)
{
  if (!a2)
  {
    segPumpCreateCPECryptorsSessionCryptKeysDict_cold_3(&v21);
    return v21;
  }

  AllocatorForMedia = FigGetAllocatorForMedia();
  Mutable = CFDictionaryCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    segPumpCreateCPECryptorsSessionCryptKeysDict_cold_2(&v20);
    return v20;
  }

  v6 = Mutable;
  for (i = 0; ; ++i)
  {
    Count = *(a1 + 7888);
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    if (i >= Count)
    {
      v17 = 0;
      *a2 = CFRetain(v6);
      goto LABEL_22;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 7888), i);
    if (ValueAtIndex[2])
    {
      v10 = ValueAtIndex;
      v11 = ValueAtIndex[9];
      if (v11)
      {
        if (*(v10 + 155) && *(v10 + 152) && segPumpIsCryptorReadyToDecrypt(v11))
        {
          break;
        }
      }
    }

LABEL_20:
    ;
  }

  v12 = FigGetAllocatorForMedia();
  v13 = CFDictionaryCreateMutable(v12, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v13)
  {
    v14 = v13;
    v15 = v10[9];
    if (v15 && segPumpIsCryptorReadyToDecrypt(v15))
    {
      CFDictionarySetValue(v14, @"FPBCPECryptorsKey_Video", v10[9]);
    }

    v16 = v10[14];
    if (v16)
    {
      if (segPumpIsCryptorReadyToDecrypt(v16))
      {
        CFDictionarySetValue(v14, @"FPBCPECryptorsKey_Audio", v10[14]);
      }
    }

    FigCFDictionarySetInt32();
    FigCFDictionarySetInt32();
    CFDictionarySetValue(v6, v10[2], v14);
    CFRelease(v14);
    goto LABEL_20;
  }

  segPumpCreateCPECryptorsSessionCryptKeysDict_cold_1(&v19);
  v17 = v19;
LABEL_22:
  CFRelease(v6);
  return v17;
}

uint64_t segPumpCopyAlternatesInPenaltyBox(uint64_t a1, __CFArray **a2)
{
  if (*(a1 + 8360))
  {
    AllocatorForMedia = FigGetAllocatorForMedia();
    Mutable = CFArrayCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9C0]);
    if (Mutable)
    {
      v6 = Mutable;
      for (i = *(a1 + 8296); i; i = *i)
      {
        CFArrayAppendValue(v6, i[1]);
      }

      if (a2)
      {
        result = 0;
        *a2 = v6;
      }

      else
      {
        CFRelease(v6);
        return 0;
      }
    }

    else
    {
      segPumpCopyAlternatesInPenaltyBox_cold_1(&v9);
      return v9;
    }
  }

  else
  {
    segPumpCopyAlternatesInPenaltyBox_cold_2(&v10);
    return v10;
  }

  return result;
}

CFNumberRef segPumpCopyNominalVideoFrameRate(uint64_t a1, CFNumberRef *a2)
{
  if (!a2)
  {
    return segPumpCopyNominalVideoFrameRate_cold_3();
  }

  if (!a1)
  {
    return segPumpCopyNominalVideoFrameRate_cold_2();
  }

  v3 = *(a1 + 8280);
  if (v3)
  {
    v4 = 0.0;
    while (1)
    {
      FrameRate = FigAlternateGetFrameRate(v3[1]);
      v6 = FrameRate;
      if (v6 == 0.0)
      {
        goto LABEL_18;
      }

      if (v4 != 0.0)
      {
        break;
      }

      v7 = FrameRate;
LABEL_19:
      v3 = *v3;
      v4 = v7;
      if (!v3)
      {
        goto LABEL_22;
      }
    }

    if (vabds_f32(v4, v6) > 0.01)
    {
      if (v4 <= v6)
      {
        v7 = FrameRate;
      }

      else
      {
        v7 = v4;
      }

      if (v4 < v6)
      {
        v6 = v4;
      }

      if (fabsf(v7 + (v6 * -2.0)) >= 0.01 && fabsf(v7 + (v6 * -3.0)) >= 0.01 && fabsf(v7 + (v6 * -4.0)) >= 0.01)
      {
        v7 = 0.0;
      }

      goto LABEL_19;
    }

LABEL_18:
    v7 = v4;
    goto LABEL_19;
  }

  v7 = 0.0;
LABEL_22:
  valuePtr = v7;
  result = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, &valuePtr);
  if (!result)
  {
    return segPumpCopyNominalVideoFrameRate_cold_1();
  }

  *a2 = result;
  return result;
}

uint64_t segPumpCopySessionKeys(uint64_t a1, __CFArray **a2)
{
  AllocatorForMedia = FigGetAllocatorForMedia();
  Mutable = CFArrayCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v6 = Mutable;
    v7 = *(a1 + 392);
    v8 = *(v7 + 48);
    if (v8)
    {
      for (i = 0; ; ++i)
      {
        ContentKeySpecifiers = FigMultivariantPlaylistGetContentKeySpecifiers(v8);
        if (ContentKeySpecifiers)
        {
          ContentKeySpecifiers = CFArrayGetCount(ContentKeySpecifiers);
        }

        if (i >= ContentKeySpecifiers)
        {
          break;
        }

        v11 = FigMultivariantPlaylistGetContentKeySpecifiers(*(v7 + 48));
        ValueAtIndex = CFArrayGetValueAtIndex(v11, i);
        if (FigContentKeySpecifierGetIsPrefetchKey(ValueAtIndex))
        {
          CFArrayAppendValue(v6, ValueAtIndex);
        }

        v8 = *(v7 + 48);
      }
    }

    result = 0;
    *a2 = v6;
  }

  else
  {
    segPumpCopySessionKeys_cold_1(&v14);
    return v14;
  }

  return result;
}

uint64_t *segPumpMainSegmentBytesInTransit(uint64_t a1)
{
  v2 = *(a1 + 16 * *(a1 + 8600) + 392);
  result = segPumpGetBytesInTransit(*(v2 + 696), *(a1 + 8328));
  if (!result)
  {
    v4 = *(v2 + 792);
    v5 = *(a1 + 8328);

    return segPumpGetBytesInTransit(v4, v5);
  }

  return result;
}

uint64_t segPumpCopyOfflineInterstitialURLs(uint64_t a1, uint64_t a2, void *a3)
{
  cf = 0;
  v4 = *(a1 + 296);
  if (v4 && (v5 = FigStreamingCacheCopyProperty(v4, @"FSC_OfflineInterstitialURLs", a2, &cf), v4 = cf, v5))
  {
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    v5 = 0;
    *a3 = v4;
  }

  return v5;
}

uint64_t segPumpCopyOfflineInterstitialListJSONs(uint64_t a1, uint64_t a2, void *a3)
{
  cf = 0;
  v4 = *(a1 + 296);
  if (v4 && (v5 = FigStreamingCacheCopyProperty(v4, @"FSC_OfflineInterstitialListJSONs", a2, &cf), v4 = cf, v5))
  {
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    v5 = 0;
    *a3 = v4;
  }

  return v5;
}

uint64_t segPumpCreateFigAlternatesArray(uint64_t a1, __CFArray **a2)
{
  if (a2)
  {
    AllocatorForMedia = FigGetAllocatorForMedia();
    Mutable = CFArrayCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9C0]);
    if (Mutable)
    {
      v6 = Mutable;
      for (i = *(a1 + 8280); i; i = *i)
      {
        CFArrayAppendValue(v6, i[1]);
      }

      for (j = *(a1 + 8296); j; j = *j)
      {
        CFArrayAppendValue(v6, j[1]);
      }

      result = 0;
      *a2 = v6;
    }

    else
    {
      segPumpCreateFigAlternatesArray_cold_1(&v10);
      return v10;
    }
  }

  else
  {
    segPumpCreateFigAlternatesArray_cold_2(&v11);
    return v11;
  }

  return result;
}

const __CFArray *segPumpStreamHasMediaFiles(uint64_t a1)
{
  result = *(a1 + 56);
  if (result)
  {
    result = FigMediaPlaylistGetMediaSegmentSpecifiers(result);
    if (result)
    {
      return (CFArrayGetCount(result) > 0);
    }
  }

  return result;
}

double segPumpGetMinimumPrebufferReservation(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 336) && (v3 = *(a1 + 16), v3 > 0.0))
  {
    result = v3 + v3;
    if (*(a1 + 8168) > result)
    {
      return *(a1 + 8168);
    }
  }

  else
  {
    result = segPumpGetDurationOfLastMediaSegment(a2);
    v5 = *(a1 + 8160);
    if (result == 0.0)
    {
      result = (*(a1 + 8) * v5);
    }

    else if (v5 >= 2)
    {
      result = result + (*(a1 + 8) * (v5 - 1));
    }

    if (result < *(a1 + 8168))
    {
      return *(a1 + 8168);
    }
  }

  return result;
}

double segPumpGetDurationOfLastMediaSegment(uint64_t a1)
{
  if (!a1)
  {
    return 0.0;
  }

  MediaSegmentSpecifiers = FigMediaPlaylistGetMediaSegmentSpecifiers(a1);
  if (!MediaSegmentSpecifiers || CFArrayGetCount(MediaSegmentSpecifiers) < 1)
  {
    return 0.0;
  }

  FigMediaPlaylistGetMediaSegmentSpecifiers(a1);
  LastValue = FigCFArrayGetLastValue();

  return FigMediaSegmentSpecifierGetTimeInSeconds(LastValue);
}

double segPumpMakeNetworkPrediction(uint64_t a1, uint64_t a2)
{
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  memset(v24, 0, sizeof(v24));
  segPumpMakeNetworkPredictionInput(a1, v24);
  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  v4 = *(a1 + 16 * *(a1 + 8600) + 392);
  v5 = 104;
  if (!*(a1 + 337))
  {
    v5 = 112;
  }

  v6 = *(a1 + 16);
  if (v6 <= 0.0)
  {
    v6 = *(a1 + 8);
  }

  v7 = *(a1 + v5);
  v8 = *(v4 + 256);
  if (v8 && FigMediaSegmentSpecifierGetBytesToRead(v8))
  {
    v9 = FigMediaSegmentSpecifierGetBytesToRead(*(v4 + 256));
LABEL_14:
    *&v24[2] = v9;
    goto LABEL_15;
  }

  v10 = *(a1 + 8328);
  if (v10)
  {
    AverageBitRate = FigAlternateGetAverageBitRate(*(v10 + 8));
    if (!AverageBitRate)
    {
      AverageBitRate = FigAlternateGetPeakBitRate(*(*(a1 + 8328) + 8));
    }

    if (AverageBitRate && v6 != 0.0)
    {
      v9 = (v6 * AverageBitRate * 0.125);
      goto LABEL_14;
    }
  }

LABEL_15:
  *&v24[1] = 60000000000;
  if (*(a1 + 337))
  {
    *(&v24[2] + 8) = xmmword_196E72850;
    *(v24 + 8) = xmmword_196E72860;
    *(&v24[1] + 1) = 10000000000;
    if (*(a1 + 342))
    {
      *(&v30 + 1) = 0x3FEEB851EB851EB8;
      LOBYTE(v31) = 1;
    }
  }

  *&v24[0] = v7;
  *(&v31 + 1) |= 8uLL;
  v12 = *(a1 + 96);
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  v14 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v14)
  {
    v35[10] = v31;
    v35[11] = v32;
    v35[12] = v33;
    v35[13] = v34;
    v35[6] = v27;
    v35[7] = v28;
    v35[8] = v29;
    v35[9] = v30;
    v35[2] = v24[2];
    v35[3] = v24[3];
    v35[4] = v25;
    v35[5] = v26;
    v35[0] = v24[0];
    v35[1] = v24[1];
    v14(v12, UpTimeNanoseconds, v35, &v18);
  }

  v15 = v21;
  *(a2 + 32) = v20;
  *(a2 + 48) = v15;
  *(a2 + 64) = v22;
  *(a2 + 80) = v23;
  result = *&v18;
  v17 = v19;
  *a2 = v18;
  *(a2 + 16) = v17;
  return result;
}

const void *segPumpEnsureAndGetSessionDataPrivateData(const void *a1)
{
  if (a1)
  {
    Instance = CMGetAttachment(a1, @"SegPumpSessionDataPrivateData", 0);
    if (!Instance)
    {
      FigGetAllocatorForMedia();
      v4 = xmmword_1E7476B80;
      if (segPumpSessionDataPrivateDataGetTypeID_once != -1)
      {
        dispatch_once_f(&segPumpSessionDataPrivateDataGetTypeID_once, &v4, segPumpRegisterClassUtil);
      }

      Instance = _CFRuntimeCreateInstance();
      if (Instance)
      {
        CMSetAttachment(a1, @"SegPumpSessionDataPrivateData", Instance, 0);
        CFRelease(Instance);
      }

      else
      {
        segPumpEnsureAndGetSessionDataPrivateData_cold_1();
      }
    }
  }

  else
  {
    segPumpEnsureAndGetSessionDataPrivateData_cold_2();
    return 0;
  }

  return Instance;
}

void segPumpFreeChapterArtworkQueue(void **a1)
{
  for (i = *a1; *a1; i = *a1)
  {
    v3 = *i;
    v4 = i[1];
    if (*i)
    {
      v5 = *i;
    }

    else
    {
      v5 = a1;
    }

    v5[1] = v4;
    *v4 = v3;
    v6 = i[2];
    if (v6)
    {
      CFRelease(v6);
    }

    v7 = i[4];
    if (v7)
    {
      CFRelease(v7);
    }

    free(i);
  }
}

BOOL segPumpShouldRequestURLAsHTTPURL(uint64_t a1, const __CFURL *a2)
{
  if (!a2 || *(a1 + 335))
  {
    return 0;
  }

  if (FigCFHTTPIsHTTPBasedURL(a2))
  {
    return 1;
  }

  return FigCFHTTPIsDataURL(a2);
}

void segPumpSessionDataPrivateDataFinalize(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 32) = 0;
  }

  segPumpFreeChapterArtworkQueue((a1 + 184));
}

uint64_t segPumpCreateURLAndString(const void *a1, CFTypeRef *a2, CFTypeRef *a3)
{
  if (a1 && (v5 = CFRetain(a1)) != 0)
  {
    v6 = v5;
    if (a2)
    {
      *a2 = CFRetain(v5);
    }

    if (a3)
    {
      *a3 = FigCFHTTPCreateURLString(v6);
    }

    CFRelease(v6);
    return 0;
  }

  else
  {
    segPumpCreateURLAndString_cold_1(&v8);
    return v8;
  }
}

uint64_t segPumpIsConnectedWithHighSpeedHighPower(uint64_t a1, BOOL *a2)
{
  v2 = *(a1 + 8656);
  if (!v2)
  {
    return 4294954513;
  }

  cf = 0;
  AllocatorForMedia = FigGetAllocatorForMedia();
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v5)
  {
    return 4294954514;
  }

  v6 = v5(v2, 0x1F0B5F6B8, AllocatorForMedia, &cf);
  v7 = cf;
  if (!v6)
  {
    *a2 = cf == *MEMORY[0x1E695E4D0];
  }

  if (v7)
  {
    CFRelease(v7);
  }

  return v6;
}

uint64_t segPumpCreateURLWithQueryParams(uint64_t a1, CFTypeRef cf, const __CFArray *a3, const __CFURL **a4)
{
  v5 = a3;
  if (cf)
  {
    v8 = CFRetain(cf);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_25:
    v28 = 0;
LABEL_43:
    *a4 = v8;
    return v28;
  }

  v8 = 0;
  if (!a3)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!*(a1 + 336))
  {
    v11 = 0;
    goto LABEL_27;
  }

  AllocatorForMedia = FigGetAllocatorForMedia();
  MutableCopy = CFArrayCreateMutableCopy(AllocatorForMedia, 0, v5);
  if (!MutableCopy)
  {
    segPumpCreateURLWithQueryParams_cold_3(&cfa);
    v28 = cfa;
    goto LABEL_43;
  }

  v11 = MutableCopy;
  v12 = FigGetAllocatorForMedia();
  Mutable = CFArrayCreateMutable(v12, 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v14 = Mutable;
    if (CFArrayGetCount(v11) <= 1)
    {
LABEL_10:
      v44.length = CFArrayGetCount(v14);
      v44.location = 0;
      CFArraySortValues(v14, v44, segPumpQueryParamsCFComparator, 0);
      CFArrayRemoveAllValues(v11);
      if (CFArrayGetCount(v14) >= 1)
      {
        v23 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v14, v23);
          v25 = CFArrayGetValueAtIndex(ValueAtIndex, 0);
          CFArrayAppendValue(v11, v25);
          v26 = CFArrayGetValueAtIndex(v14, v23);
          v27 = CFArrayGetValueAtIndex(v26, 1);
          CFArrayAppendValue(v11, v27);
          ++v23;
        }

        while (v23 < CFArrayGetCount(v14));
      }

      v28 = 0;
    }

    else
    {
      v15 = 0;
      v16 = 1;
      v17 = MEMORY[0x1E695E9C0];
      while (1)
      {
        v18 = FigGetAllocatorForMedia();
        v19 = CFArrayCreateMutable(v18, 0, v17);
        if (!v19)
        {
          break;
        }

        v20 = v19;
        v21 = CFArrayGetValueAtIndex(v11, v16 - 1);
        CFArraySetValueAtIndex(v20, 0, v21);
        v22 = CFArrayGetValueAtIndex(v11, v16);
        CFArraySetValueAtIndex(v20, 1, v22);
        CFArraySetValueAtIndex(v14, v15, v20);
        CFRelease(v20);
        ++v15;
        v16 += 2;
        if (v15 >= CFArrayGetCount(v11) / 2)
        {
          goto LABEL_10;
        }
      }

      segPumpCreateURLWithQueryParams_cold_1(&cfa);
      v28 = cfa;
    }

    CFRelease(v14);
    if (v28)
    {
      goto LABEL_38;
    }

    goto LABEL_15;
  }

  segPumpCreateURLWithQueryParams_cold_2(&cfa);
  v28 = cfa;
  if (!cfa)
  {
LABEL_15:
    Params = FigCFHTTPCopyQueryParams(cf);
    if (CFArrayGetCount(Params) >= 1 && CFArrayGetCount(Params) >= 2)
    {
      v30 = 0;
      v31 = 1;
      do
      {
        v32 = CFArrayGetValueAtIndex(Params, v31 - 1);
        if (!CFStringHasPrefix(v32, @"_HLS"))
        {
          CFArrayAppendValue(v11, v32);
          v33 = CFArrayGetValueAtIndex(Params, v31);
          CFArrayAppendValue(v11, v33);
        }

        ++v30;
        v31 += 2;
      }

      while (v30 < CFArrayGetCount(Params) / 2);
    }

    if (Params)
    {
      CFRelease(Params);
    }

    v5 = v11;
LABEL_27:
    Count = CFArrayGetCount(v5);
    if (Count < 1)
    {
      v28 = 0;
    }

    else
    {
      v35 = Count;
      v36 = 0;
      while (1)
      {
        cfa = 0;
        v37 = CFArrayGetValueAtIndex(v5, v36);
        v38 = v36 + 1;
        v39 = CFArrayGetValueAtIndex(v5, v36 + 1);
        Param = FigCFHTTPCreateURLWithQueryParam(v8, v37, v39, &cfa);
        if (Param)
        {
          break;
        }

        v41 = cfa;
        if (cfa)
        {
          CFRetain(cfa);
        }

        if (v8)
        {
          CFRelease(v8);
        }

        CFRelease(cfa);
        v36 += 2;
        v8 = v41;
        if (v38 + 1 >= v35)
        {
          v28 = 0;
          v8 = v41;
          goto LABEL_38;
        }
      }

      v28 = Param;
    }
  }

LABEL_38:
  *a4 = v8;
  if (v11)
  {
    CFRelease(v11);
  }

  return v28;
}

uint64_t segPumpAmendHTTPRequestFlags(_BYTE *a1, _DWORD *a2)
{
  if (a2)
  {
    if (a1[332])
    {
      *a2 |= 0x80u;
    }

    if (a1[333])
    {
      *a2 |= 0x800u;
    }

    if (a1[334])
    {
      *a2 |= 0x1000u;
    }

    if (a1[336])
    {
      *a2 |= 0x4000u;
    }

    if (a1[9784])
    {
      *a2 |= 0x8000u;
    }

    if (a1[9833])
    {
      result = 0;
      *a2 |= 0x10000u;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v6 = v2;
    v7 = v3;
    segPumpAmendHTTPRequestFlags_cold_1(&v5);
    return v5;
  }

  return result;
}

__CFDictionary *segPumpCopyHTTPRequestCreationsOptionsAndSetNWActivityAndStuff(float a1, uint64_t a2, uint64_t a3, void *a4, int a5, const void *a6)
{
  FigGetAllocatorForMedia();
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  if (!a3)
  {
    segPumpCopyHTTPRequestCreationsOptionsAndSetNWActivityAndStuff_cold_2();
    return MutableCopy;
  }

  if (!a5)
  {
    v12 = 0;
    if (!a6)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  cf = 0;
  if (segPumpCopyParentNWActivity(a3, a4, &cf))
  {
    v12 = 0;
    v13 = 0;
  }

  else
  {
    v12 = nw_activity_create();
    if (v12)
    {
      if (!cf)
      {
LABEL_10:
        FigCFDictionarySetValue();
        goto LABEL_11;
      }

      nw_activity_set_parent_activity();
      v13 = 1;
    }

    else
    {
      segPumpCopyHTTPRequestCreationsOptionsAndSetNWActivityAndStuff_cold_1(&v17);
      v13 = v17;
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v13)
  {
    goto LABEL_10;
  }

LABEL_11:
  if (a6)
  {
LABEL_12:
    CFDictionarySetValue(MutableCopy, @"FHRP_DependentPipelinePrecursor", a6);
  }

LABEL_13:
  if (a1 != 0.5)
  {
    FigCFDictionarySetDouble();
  }

  if (*(a3 + 336))
  {
    v14 = 0;
  }

  else
  {
    v14 = FigNetworkUrgencyMonitorCopyExpectedProgressTarget(*(a3 + 9712));
    if (v14)
    {
      CFDictionarySetValue(MutableCopy, @"FHRP_CreateExpectedProgressTarget", v14);
    }
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  return MutableCopy;
}

uint64_t segPumpGetCurrentRTT(void *a1)
{
  v1 = (a1[1096] + 2 * a1[1097]) / 3;
  if (a1[1098] <= a1[1099])
  {
    v2 = 0;
  }

  else
  {
    v2 = FigGetUpTimeNanoseconds() - a1[1098];
  }

  if (v2 > v1)
  {
    v3 = ((v2 + 2 * v1) * 0x5555555555555556) >> 64;
    v1 = v3 + (v3 >> 63);
  }

  if (v1 <= 0)
  {
    return 100000;
  }

  else
  {
    return v1;
  }
}

CFComparisonResult segPumpQueryParamsCFComparator(const __CFArray *a1, const __CFArray *a2)
{
  ValueAtIndex = CFArrayGetValueAtIndex(a1, 0);
  v5 = CFArrayGetValueAtIndex(a2, 0);
  result = CFStringCompare(ValueAtIndex, v5, 0);
  if (result == kCFCompareEqualTo)
  {
    v7 = CFArrayGetValueAtIndex(a1, 1);
    v8 = CFArrayGetValueAtIndex(a2, 1);

    return CFStringCompare(v7, v8, 0);
  }

  return result;
}

uint64_t segPumpCopyParentNWActivity(uint64_t a1, void *a2, void *a3)
{
  if (!a1)
  {
    segPumpCopyParentNWActivity_cold_4(&v12);
    return v12;
  }

  if (!a3)
  {
    segPumpCopyParentNWActivity_cold_3(&v12);
    return v12;
  }

  if (!a2 || (v5 = a2[150]) == 0 && (v5 = *(*(a1 + 16 * *a2 + 392) + 1192)) == 0 || (v6 = CFRetain(v5)) == 0)
  {
    v7 = *(a1 + 9696);
    if (!v7 || (v6 = CFRetain(v7)) == 0)
    {
      segPumpCopyParentNWActivity_cold_2(&v12);
      return v12;
    }
  }

  v8 = v6;
  if (FigCFEqual())
  {
    v9 = nw_activity_create();
    if (v9)
    {
      v10 = v9;
      nw_activity_set_parent_activity();
      CFRelease(v8);
      v8 = v10;
      goto LABEL_12;
    }

    segPumpCopyParentNWActivity_cold_1();
    return v12;
  }

LABEL_12:
  result = 0;
  *a3 = v8;
  return result;
}

uint64_t segPumpSetWiFiStatsOnNetworkPredictor(uint64_t a1, uint64_t a2)
{
  valuePtr[0] = segPumpGetInterfaceTypeEnum(a1, a2);
  v3 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, valuePtr);
  if (v3)
  {
    v4 = v3;
    v5 = *(a1 + 96);
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v6)
    {
      v6(v5, 0x1F0B635D8, v4);
    }

    if (FigRCLGetNumberWithDefault(*(a1 + 9320), @"useAdaptiveBayesianNetworkPrediction"))
    {
      segPumpSetWiFiStatsOnNetworkPredictor_cold_1();
      v7 = valuePtr[1];
    }

    else
    {
      v7 = 0;
    }

    CFRelease(v4);
  }

  else
  {
    segPumpSetWiFiStatsOnNetworkPredictor_cold_2(&v10);
    return v10;
  }

  return v7;
}

void segPumpAppendErrorLogEntryWithCFError(uint64_t a1, uint64_t a2, const __CFURL **a3, CFErrorRef err, int a5, int a6)
{
  Code = CFErrorGetCode(err);
  Domain = CFErrorGetDomain(err);
  v14 = CFErrorCopyDescription(err);
  v15 = CFErrorCopyUserInfo(err);
  segPumpAppendErrorLogEntry(a1, a2, a3, Code, Domain, v14, v15, 1, a5, a6);
  if (v14)
  {
    CFRelease(v14);
  }

  if (v15)
  {

    CFRelease(v15);
  }
}

uint64_t segPumpAttemptToRetryRequest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a3)
  {
    v10 = *(a3 + 24);
    v31 = *(a3 + 32);
  }

  else
  {
    v10 = 0;
    v31 = 0;
  }

  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  v30 = a5;
  v12 = (a5 >> 2) & 1;
  IsAlternateLastValidAlternate = segPumpIsAlternateLastValidAlternate(DerivedStorage, a2, *(DerivedStorage + 8328), v12);
  if (a3)
  {
    v14 = *(a3 + 16);
    if (v14)
    {
      v15 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v15)
      {
        v15(v14);
      }

      v16 = *(a3 + 16);
      if (v16)
      {
        CFRelease(v16);
        *(a3 + 16) = 0;
      }
    }

    v17 = *(a3 + 64);
  }

  else
  {
    v17 = 0;
  }

  if (*(DerivedStorage + 8362))
  {
    v18 = *(DerivedStorage + 8368);
  }

  else
  {
    if (a4 == 7 && *(DerivedStorage + 8280) && !IsAlternateLastValidAlternate)
    {
      if (UpTimeNanoseconds - v10 < 15000000000)
      {
LABEL_15:
        if (a3)
        {
          if (a2 + 408 == a3)
          {
            v17 += *(a2 + 384);
          }

          else if (a2 + 544 != a3 && DerivedStorage + 7976 != a3)
          {
            v19 = *(DerivedStorage + 8112);
            v20 = v31;
            if (v19)
            {
              segPumpEnsureAndGetSessionDataPrivateData(v19);
            }

            goto LABEL_44;
          }
        }

        v20 = v31;
LABEL_44:
        if (v17 >= 5)
        {
          v26 = 5;
        }

        else
        {
          v26 = v17;
        }

        v27 = 1000000000 * v26;
        if (UpTimeNanoseconds - v20 >= v27)
        {
          v27 = 1000000000;
        }

        *(a2 + 400) = 1;
        v28 = *DerivedStorage;
        v29 = *(DerivedStorage + 64);

        return FigHTTPCreateTimer(v28, segPumpRetryTimerCallback, v29, (a2 + 392), v27 / 1000000000.0);
      }

      v21 = 1;
      goto LABEL_23;
    }

    v18 = 30000000000;
    if (*(DerivedStorage + 8624))
    {
      v23 = *(DerivedStorage + 8632);
      if (v23)
      {
        if (!FigNetworkPathInformationIsHostReachable(v23, 1))
        {
          v18 = 120000000000;
        }
      }
    }
  }

  if (UpTimeNanoseconds - v10 < v18)
  {
    goto LABEL_15;
  }

  if (IsAlternateLastValidAlternate)
  {
    goto LABEL_52;
  }

  v21 = *(DerivedStorage + 8280) != 0;
LABEL_23:
  if (a4 == 7 && v21)
  {
    if (v12)
    {
      v24 = *(a2 + 16);
      v25 = *(a2 + 40);

      return segPumpMoveAlternatesMatchingHostAndPathwayToPenaltyBox(a1, v24, v25, v30 & 1);
    }

    else
    {

      return segPumpMoveStreamAlternateToPenaltyBox(a1, a2, 0);
    }
  }

LABEL_52:

  return segPumpSendEndCallbackForAllActiveStreams();
}

uint64_t MoveAlternateFromValidList(uint64_t a1, uint64_t a2, int a3, char a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = MoveAlternateFromListWithNoNotification(DerivedStorage, (DerivedStorage + 8280), a2, a3, a4);
  v9 = v8;
  if (v8)
  {
    MoveAlternateFromValidList_cold_1(v8, DerivedStorage);
  }

  else
  {
    segPumpInformCurrentAlternateNoLongerValid(DerivedStorage);
  }

  return v9;
}

uint64_t MoveAlternateFromListWithNoNotification(uint64_t a1, void *a2, uint64_t a3, int a4, char a5)
{
  v10 = *(a1 + 8328);
  if (v10 == a3)
  {
    segPumpUpdateCurrentAlternate(a1, 0);
  }

  if (*(a1 + 7880) == a3)
  {
    *(a1 + 7880) = 0;
  }

  v11 = a2;
  do
  {
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_27;
    }
  }

  while (!FigCFEqual());
  if (!a4)
  {
    v13 = (a1 + 8280);
    if ((a1 + 8280) != a2)
    {
      goto LABEL_27;
    }

    Mutable = *(a1 + 8320);
    if (Mutable || (AllocatorForMedia = FigGetAllocatorForMedia(), Mutable = CFArrayCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9C0]), (*(a1 + 8320) = Mutable) != 0))
    {
      v31.length = CFArrayGetCount(Mutable);
      v31.location = 0;
      FirstIndexOfValue = CFArrayGetFirstIndexOfValue(Mutable, v31, *(a3 + 8));
      if ((FirstIndexOfValue & 0x8000000000000000) == 0)
      {
        CFArrayRemoveValueAtIndex(*(a1 + 8320), FirstIndexOfValue);
      }

      v17 = *(a1 + 8320);
      if (v10 == a3)
      {
        CFArrayAppendValue(v17, *(a3 + 8));
      }

      else
      {
        CFArrayInsertValueAtIndex(v17, 0, *(a3 + 8));
      }
    }

    else if (!MoveAlternateFromListWithNoNotification_cold_2())
    {
      return v30;
    }

    v25 = *(a1 + 8296);
    for (i = *(a1 + 8280); i != a3; i = *i)
    {
      v13 = i;
    }

    v27 = *i;
    *v13 = v27;
    if (!v27)
    {
      *(a1 + 8288) = v13;
    }

    *a3 = 0;
    **(a1 + 8304) = a3;
    *(a1 + 8304) = a3;
    if (*(a1 + 8280))
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      *(a3 + 16) = FigGetUpTimeNanoseconds() + 120000000000;
      *(a3 + 32) = a5;
      v29 = *(a1 + 8352);
      if (v29)
      {
        if (!v25)
        {
          FigHTTPRescheduleTimer(120.0, *(a1 + 64), v29);
        }

        goto LABEL_27;
      }

      result = FigHTTPCreateTimer(*a1, &HandlePenaltyBoxTimer, *(a1 + 64), (a1 + 8352), 120.0);
    }

    else
    {
      result = FigSignalErrorAtGM();
    }

    if (result)
    {
      return result;
    }

    goto LABEL_27;
  }

  v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  v18 = *a2;
  if (*a2 == a3)
  {
    v24 = *v18;
    *a2 = v24;
    v19 = a2;
    if (v24)
    {
      goto LABEL_21;
    }
  }

  else
  {
    do
    {
      v19 = v18;
      v18 = *v18;
    }

    while (v18 != a3);
    v20 = *v18;
    *v19 = v20;
    if (v20)
    {
      goto LABEL_21;
    }
  }

  a2[1] = v19;
LABEL_21:
  if (*(a1 + 9728))
  {
    if (*(a1 + 8312) || (v21 = FigGetAllocatorForMedia(), v22 = CFArrayCreateMutable(v21, 0, MEMORY[0x1E695E9C0]), (*(a1 + 8312) = v22) != 0))
    {
      if (!FigCFArrayContainsValue())
      {
        CFArrayAppendValue(*(a1 + 8312), *(a3 + 8));
      }

      goto LABEL_26;
    }

    if (!MoveAlternateFromListWithNoNotification_cold_1())
    {
      return v30;
    }
  }

LABEL_26:
  AlternateEntryFree(a3);
LABEL_27:
  if (*(a1 + 8280))
  {
    return 0;
  }

  else
  {
    return FigSignalErrorAtGM();
  }
}

void segPumpInformCurrentAlternateNoLongerValid(uint64_t a1)
{
  segPumpReadyNotification(a1, @"FBPAL_AlternateListChanged", 0);
  v2 = *(a1 + 9760);
  if (v2)
  {
    FigAlternateFilterMonitorPrimeForSwitch(v2);
  }

  segPumpDispatchAsyncAlternateSelectionApplyFilter(a1);
}

void StopAllActiveStreams(uint64_t a1)
{
  v2 = *(a1 + 8352);
  if (v2)
  {
    FigHTTPRescheduleTimer(0.0, *(a1 + 64), v2);
  }

  for (i = 392; i != 440; i += 16)
  {
    v4 = *(a1 + i);
    if (*(v4 + 16))
    {
      segPumpStopStream(a1, v4, 0);
    }
  }
}

void segPumpResetPenaltyBoxTimer(void *a1)
{
  v1 = a1[1044];
  if (v1)
  {
    v3 = a1[1037];
    if (v3)
    {
      v4 = *(v3 + 16);
      v5 = (v4 - FigGetUpTimeNanoseconds()) / 1000000000.0;
      v1 = a1[1044];
    }

    else
    {
      v5 = 0.0;
    }

    v6 = a1[8];

    FigHTTPRescheduleTimer(v5, v6, v1);
  }
}

void segPumpDispatchAsyncAlternateSelectionBossApplyFilterFunc(const void *a1)
{
  FigAlternateSelectionBossApplyFilters(a1);
  if (a1)
  {

    CFRelease(a1);
  }
}

uint64_t segPumGetGroupIDString(uint64_t a1, uint64_t a2)
{
  if (a2 == 2)
  {
    return FigAlternateGetSubtitleGroupIDString(a1);
  }

  if (a2 == 1)
  {
    return FigAlternateGetAudioGroupIDString(a1);
  }

  if (a2)
  {
    return 0;
  }

  return FigAlternateGetVideoGroupIDString(a1);
}

uint64_t segPumpRestartStreamReads(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  *&v25 = 0;
  SessionDataRequest = segPumpReadOrScheduleIndexFileRead();
  if (SessionDataRequest)
  {
    goto LABEL_13;
  }

  MediaForSingleStream = segPumpDeliverNextMediaForSingleStream(a1, a2, a3);
  if (MediaForSingleStream == -15626)
  {
    SessionDataRequest = 4294951670;
    goto LABEL_13;
  }

  SessionDataRequest = MediaForSingleStream;
  if (a3[31] && !a3[70])
  {
    AllocatorForMedia = FigGetAllocatorForMedia();
    Identifier = FigContentKeySpecifierGetIdentifier(a3[31]);
    v11 = CFURLCreateWithString(AllocatorForMedia, Identifier, 0);
    if (!v11)
    {
      segPumpRestartStreamReads_cold_1(&v25 + 3);
      SessionDataRequest = HIDWORD(v25);
      goto LABEL_12;
    }

    v8 = v11;
    if (segPumpShouldRequestURLAsHTTPURL(a2, v11))
    {
      v18 = a3[31];
      segPumpGetCryptKeyCommonData(v18, 0, &v25, v12, v13, v14, v15, v16, v25, v26, v27, v28, v29, v30, v31, vars0, vars8);
      if (v19)
      {
        SessionDataRequest = v19;
        goto LABEL_11;
      }

      if (*(v25 + 153))
      {
        segPumpCancelCryptReadAndResetData(a2);
      }

      v24 = a3[31];
      a3[31] = v18;
      if (v18)
      {
        CFRetain(v18);
      }

      if (v24)
      {
        CFRelease(v24);
      }

      SessionDataRequest = segPumpSendCryptKeyRequest(a1, a2, a3, a3[31], v20, v21, v22, v23);
      if (SessionDataRequest)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  if (*a3 || !a2[1014])
  {
    if (!v8)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  SessionDataRequest = segPumpSendNextSessionDataRequest(a2, a3, 0);
  if (v8)
  {
LABEL_11:
    CFRelease(v8);
  }

LABEL_12:
  if (SessionDataRequest)
  {
LABEL_13:
    segPumpSendEndCallbackForAllActiveStreamsWithOSStatus(*a2, SessionDataRequest);
  }

  return SessionDataRequest;
}

void segPumpGetIndexFileRefreshTimestamp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = a3;
  v13 = a3;
  v7 = *(a2 + 56);
  if (v7)
  {
    if (!*(a2 + 1184))
    {
      MediaSegmentSpecifiers = FigMediaPlaylistGetMediaSegmentSpecifiers(v7);
      if (MediaSegmentSpecifiers)
      {
        if (CFArrayGetCount(MediaSegmentSpecifiers) >= 1)
        {
          if (FigMediaPlaylistHasEndTag(*(a2 + 56)))
          {
            v10 = *(a1 + 8);
            v11 = *(a1 + 352) - v10;
            v12 = *(a1 + 8160) * v10;
            if (v11 > v12)
            {
              v12 = v11;
            }

            v5 = *(a2 + 1056) + 1000000000 * v12;
          }

          else if ((*(a2 + 160) & 0xFFFFFFFE) != 2 && !*(a1 + 336))
          {
            segPumpGetLiveIndexRefreshTimestamp(a1, a2, &v13);
            v5 = v13;
          }
        }
      }
    }
  }

  *a4 = v5;
}

void segPumpGetLiveIndexRefreshTimestamp(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 8);
  v6 = (segPumpGetDurationOfLastMediaSegment(*(a2 + 56)) * 1000000000.0);
  if (dword_1EAF16A30 >= 2)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v8 = 500000000 * v5;
  if (*(a2 + 384))
  {
    v9 = *(a2 + 1056);
  }

  else
  {
    v9 = *(a2 + 1056);
    if (v8 < v6)
    {
      v8 = 1000000000 * v5;
    }
  }

  *a3 = v9 + v8;
}

uint64_t segPumpPostIndexFileRequest(uint64_t a1, uint64_t a2, const __CFArray *a3, int a4)
{
  v6 = a1;
  v14[0] = 0;
  *(a2 + 859) = 1;
  URLWithQueryParams = segPumpCreateURLWithQueryParams(a1, *(a2 + 16), a3, v14);
  v8 = v14[0];
  if (URLWithQueryParams || (LOBYTE(v12) = 1, URLWithQueryParams = segPumpCustomURLLoaderGetURLGuts(v6, v14[0], 0, 0, 0, 0, a4, 0, v12, 0, 0, a2 + 496, v13, v14[0], v14[1], v14[2], v14[3], v14[4], v14[5], v14[6]), URLWithQueryParams))
  {
    v10 = URLWithQueryParams;
    *(a2 + 859) = 0;
    if (!v8)
    {
      return v10;
    }

    goto LABEL_8;
  }

  v9 = *(a2 + 408);
  *(a2 + 408) = v8;
  if (v8)
  {
    CFRetain(v8);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  v10 = 0;
  if (v8)
  {
LABEL_8:
    CFRelease(v8);
  }

  return v10;
}

void segPumpScheduleIndexFileLongDownloadTimer(uint64_t a1, uint64_t a2)
{
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  v5 = *(a1 + 16);
  if (v5 <= 0.0)
  {
    v6 = *(a1 + 8200);
  }

  else
  {
    v6 = v5 * 0.5;
  }

  v7 = 2.0;
  if (!*(a2 + 538))
  {
    if (*(a1 + 337))
    {
      v7 = v5 + (3 * segPumpGetCurrentRTT(a1)) / 1000000000.0;
    }

    else if (*(*(a1 + 392) + 56))
    {
      v13 = *(a1 + 8);
      if (v13)
      {
        v7 = (2 * v13);
      }

      else
      {
        v7 = 20.0;
      }
    }

    else
    {
      v7 = *(a1 + 8384);
    }
  }

  if (v7 > v6)
  {
    v6 = v7;
  }

  if (*(a1 + 336) && *(a1 + 48))
  {
    v8 = *(a1 + 392);
    if (*(v8 + 16))
    {
      PendingMediaDeadline = segPumpConnectionGetPendingMediaDeadline(*(v8 + 696));
    }

    else
    {
      PendingMediaDeadline = 0;
    }

    v10 = *(a1 + 408);
    if (*(v10 + 16))
    {
      v11 = segPumpConnectionGetPendingMediaDeadline(*(v10 + 696));
      if (v11 >= PendingMediaDeadline)
      {
        v12 = PendingMediaDeadline;
      }

      else
      {
        v12 = v11;
      }

      if (!PendingMediaDeadline)
      {
        v12 = v11;
      }

      if (v11)
      {
        PendingMediaDeadline = v12;
      }
    }

    if (PendingMediaDeadline >= 1 && v6 < (PendingMediaDeadline - UpTimeNanoseconds) / 1000000000.0)
    {
      v6 = (PendingMediaDeadline - UpTimeNanoseconds) / 1000000000.0;
    }
  }

  FigHTTPCreateTimer(*a1, IndexFileHandleLongDownloadTimer, *(a1 + 64), (a2 + 504), v6);

  segPumpStreamUpdateIndexExpectedArrival(a1, a2);
}

uint64_t segPumpHandleLowLatencySetupError(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 <= -15414)
  {
    if (a3 > -15416)
    {
      if (a3 == -15415)
      {
        segPumpHandleLowLatencySetupError_cold_4();
      }

      else
      {
        segPumpHandleLowLatencySetupError_cold_3();
      }

      goto LABEL_16;
    }

    if (a3 == -15418)
    {
      segPumpHandleLowLatencySetupError_cold_1();
      goto LABEL_16;
    }

    if (a3 == -15417)
    {
      segPumpHandleLowLatencySetupError_cold_2();
LABEL_16:
      result = 0;
      goto LABEL_17;
    }
  }

  else
  {
    if (a3 < -15412)
    {
      if (dword_1EAF16A30)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      goto LABEL_16;
    }

    switch(a3)
    {
      case -15412:
        segPumpHandleLowLatencySetupError_cold_5();
        goto LABEL_16;
      case -15411:
        segPumpHandleLowLatencySetupError_cold_6();
        goto LABEL_16;
      case -15410:
        segPumpHandleLowLatencySetupError_cold_7();
        goto LABEL_16;
    }
  }

  result = FigSignalErrorAtGM();
LABEL_17:
  v6 = a1 + 400;
  v7 = 3;
  do
  {
    v8 = *(v6 - 8);
    if (*(v8 + 160) != 5)
    {
      *(v8 + 160) = 5;
    }

    if (*(*v6 + 160) != 5)
    {
      *(*v6 + 160) = 5;
    }

    v6 += 16;
    --v7;
  }

  while (v7);
  return result;
}

uint64_t segPumpStreamHasPreloadHint(uint64_t a1)
{
  result = *(a1 + 56);
  if (result)
  {
    result = FigMediaPlaylistGetPreloadHint(result);
    if (result)
    {
      PreloadHint = FigMediaPlaylistGetPreloadHint(*(a1 + 56));
      return FigMediaSegmentSpecifierIsReadInCurrent(PreloadHint) != 0;
    }
  }

  return result;
}

void segPumpUpdateNetworkCostHasHighSpeedHighPower(uint64_t a1)
{
  if (*(a1 + 8656))
  {
    if (!*(a1 + 8648) && !*(a1 + 8644) && *(a1 + 8632))
    {
      FigNetworkPathInformationGetInterfaceType();
    }

    UInt64 = FigCFNumberCreateUInt64();
    if (UInt64)
    {
      v3 = UInt64;
      v4 = *(a1 + 8656);
      v5 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v5)
      {
        v5(v4, 0x1F0B5F6F8, v3);
      }

      CFRelease(v3);
    }

    else
    {
      segPumpUpdateNetworkCostHasHighSpeedHighPower_cold_1();
    }
  }
}

void segPumpStreamUpdateIndexFileURLWithResponse(uint64_t a1, uint64_t a2, const void *a3)
{
  v3 = a3;
  v6 = *(a1 + 8328);
  if (v6)
  {
    PathwayID = FigAlternateGetPathwayID(*(v6 + 8));
    if (!v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  PathwayID = @".";
  if (a3)
  {
LABEL_3:
    CFRetain(v3);
  }

LABEL_4:
  if (*(a2 + 876))
  {
    cf = 0;
    if (FigCFHTTPCreateURLMinusQueryParam(v3, @"_HLS_skip=", &cf))
    {
      v8 = v3;
    }

    else
    {
      v8 = cf;
      if (cf)
      {
        CFRetain(cf);
      }

      if (v3)
      {
        CFRelease(v3);
      }

      if (cf)
      {
        CFRelease(cf);
      }
    }

    v3 = v8;
  }

  if (*(a1 + 336))
  {
    v10 = 0;
    cf = 0;
    if (FigCFHTTPCreateURLMinusQueryParam(v3, @"_HLS_msn=", &cf) || FigCFHTTPCreateURLMinusQueryParam(cf, @"_HLS_part=", &v10))
    {
      v9 = v3;
    }

    else
    {
      v9 = v10;
      if (v10)
      {
        CFRetain(v10);
      }

      if (v3)
      {
        CFRelease(v3);
      }
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (v10)
    {
      CFRelease(v10);
    }
  }

  else
  {
    v9 = v3;
  }

  segPumpStreamUpdateIndexFile(a2, v9, *(a2 + 8), *(a2 + 24), *(a2 + 32), PathwayID);
  if (v9)
  {
    CFRelease(v9);
  }
}

uint64_t segPumpVerifyM3UPlaylist(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v4 = FigStreamingPlaylistVerifyM3UPlaylist(*(a2 + 520), &v7);
  result = 0;
  if (!v4 && v7 != 0)
  {
    segPumpVerifyM3UPlaylist_cold_1(a2, a1);
    return 4294954650;
  }

  return result;
}

void segPumpSendPlaylistUpdateNotification(uint64_t a1)
{
  AllocatorForMedia = FigGetAllocatorForMedia();
  Mutable = CFDictionaryCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetCMTime();
  FigCFDictionarySetCMTime();
  segPumpReadyNotification(a1, @"FBP_PlaylistUpdateNotification", Mutable);
  CFRelease(Mutable);
}

uint64_t segPumpModifyErrorActionIfCurrentAlternateIsLastValidAlternate(uint64_t result, uint64_t a2, uint64_t *a3, unsigned __int8 *a4)
{
  if ((*a3 - 7) <= 1)
  {
    if (!*(result + 8280) || (result = segPumpModifyErrorActionIfCurrentAlternateIsLastValidAlternate_cold_1(result, a4, a2), (result & 1) == 0))
    {
      v6 = 3;
      if ((*a4 & 3) == 1)
      {
        v6 = 6;
      }

      *a3 = v6;
    }
  }

  return result;
}

uint64_t segPumpGetNextMediaFileWithDate(uint64_t a1, double *a2)
{
  FigMediaPlaylistGetMediaSegmentSpecifiers(a1);
  FirstValue = FigCFArrayGetFirstValue();
  for (i = 0.0; FirstValue; FirstValue = FigMediaSegmentSpecifierGetNextSegment(FirstValue))
  {
    if (FigMediaSegmentSpecifierGetDateStamp(FirstValue) && FigMediaSegmentSpecifierIsReadInCurrent(FirstValue))
    {
      break;
    }

    i = i + FigMediaSegmentSpecifierGetTimeInSeconds(FirstValue);
  }

  if (a2)
  {
    *a2 = i;
  }

  return FirstValue;
}

void segPumpSetMediaFileExpireTimer(uint64_t a1, double a2)
{
  v2 = a2;
  v4 = *(a1 + 8152);
  if (v4)
  {
    if (a2 == 8073216000.0)
    {
      FigHTTPRescheduleTimer(0.0, *(a1 + 64), v4);
      v2 = 8073216000.0;
    }

    else
    {
      Current = CFAbsoluteTimeGetCurrent();
      FigHTTPRescheduleTimer(v2 - Current, *(a1 + 64), *(a1 + 8152));
    }
  }

  else
  {
    v5 = CFAbsoluteTimeGetCurrent();
    FigHTTPCreateTimer(*a1, segPumpMediaExpiryTimerCallback, *(a1 + 64), (a1 + 8152), v2 - v5);
  }

  *(a1 + 8144) = v2;
}

uint64_t segPumpAddFigAlternate(uint64_t a1, const void *a2)
{
  v4 = malloc_type_calloc(1uLL, 0x28uLL, 0x102004000B479F3uLL);
  if (v4)
  {
    v5 = v4;
    if (a2)
    {
      v6 = CFRetain(a2);
    }

    else
    {
      v6 = 0;
    }

    v5[1] = v6;
    PeakBitRate = FigAlternateGetPeakBitRate(a2);
    *(v5 + 6) = PeakBitRate;
    *(v5 + 7) = PeakBitRate;
    PathwayID = FigAlternateGetPathwayID(v5[1]);
    Mutable = *(a1 + 8128);
    if (Mutable || (AllocatorForMedia = FigGetAllocatorForMedia(), Mutable = CFSetCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9F8]), (*(a1 + 8128) = Mutable) != 0))
    {
      CFSetAddValue(Mutable, PathwayID);
      result = 0;
      *v5 = 0;
      **(a1 + 8288) = v5;
      *(a1 + 8288) = v5;
    }

    else
    {
      segPumpAddFigAlternate_cold_1();
      return v12;
    }
  }

  else
  {
    segPumpAddFigAlternate_cold_2(&v13);
    return v13;
  }

  return result;
}

uint64_t segPumpInitAlternateSelectionBoss(uint64_t a1)
{
  v83[16] = *MEMORY[0x1E69E9840];
  v73 = 0;
  theArray = 0;
  v72 = 0uLL;
  *v70 = 0;
  v71 = 0;
  if (!*(a1 + 9728))
  {
    goto LABEL_10;
  }

  if (!*(a1 + 9736))
  {
    *(a1 + 9736) = FigHTTPSchedulerRetain(*(a1 + 64));
  }

  updated = segPumpCreateFigAlternatesArray(a1, &theArray);
  if (updated)
  {
    goto LABEL_93;
  }

  if (!theArray)
  {
    v5 = 0;
    goto LABEL_96;
  }

  if (CFArrayGetCount(theArray) < 1)
  {
LABEL_10:
    v5 = 0;
    goto LABEL_94;
  }

  v3 = *(a1 + 9752);
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = segPumpContentSteeringAlternateListChangedCallback;
  }

  *v70 = v4;
  *&v72 = segPumpContentSteeringAlternatesAddedCallback;
  v78 = 0;
  HIDWORD(v77) = 0;
  cf = 0;
  if (v3)
  {
    goto LABEL_65;
  }

  if (!*(a1 + 9728))
  {
    if (dword_1EAF16A30)
    {
      HIDWORD(v75) = 0;
      BYTE3(v75) = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v57 = HIDWORD(v75);
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, BYTE3(v75)))
      {
        v58 = v57;
      }

      else
      {
        v58 = v57 & 0xFFFFFFFE;
      }

      if (v58)
      {
        v59 = &stru_1F0B1AFB8;
        if (*(a1 + 8944))
        {
          v59 = *(a1 + 8944);
        }

        *v79 = 136315394;
        *&v79[4] = "segPumpInitContentSteeringMonitor";
        *&v79[12] = 2114;
        *&v79[14] = v59;
        LODWORD(v66) = 22;
        v65 = v79;
        _os_log_send_and_compose_impl();
      }

      goto LABEL_122;
    }

LABEL_123:
    v13 = 0;
    v24 = 0;
    v7 = 0;
    goto LABEL_52;
  }

  v6 = *(a1 + 392);
  if (!v6)
  {
    segPumpInitAlternateSelectionBoss_cold_2(v83);
    v13 = 0;
    v24 = 0;
    v7 = 0;
    v5 = LODWORD(v83[0]);
    goto LABEL_53;
  }

  v7 = v6[6];
  if (!v7)
  {
    v13 = 0;
    v24 = 0;
LABEL_52:
    v5 = 0;
    goto LABEL_53;
  }

  if (!FigMultivariantPlaylistGetContentSteeringServerURL(v6[6]) || !*(a1 + 8128) || *(a1 + 9752))
  {
    goto LABEL_123;
  }

  if (!*(a1 + 8120))
  {
    if (dword_1EAF16A30)
    {
      HIDWORD(v75) = 0;
      BYTE3(v75) = 0;
      v60 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v61 = HIDWORD(v75);
      if (os_log_type_enabled(v60, BYTE3(v75)))
      {
        v62 = v61;
      }

      else
      {
        v62 = v61 & 0xFFFFFFFE;
      }

      if (v62)
      {
        v63 = *(a1 + 8944);
        if (!v63)
        {
          v63 = &stru_1F0B1AFB8;
        }

        v64 = *v6;
        *v79 = 136315650;
        *&v79[4] = "segPumpInitContentSteeringMonitor";
        *&v79[12] = 2114;
        *&v79[14] = v63;
        *&v79[22] = 2048;
        v80 = v64;
        LODWORD(v66) = 32;
        v65 = v79;
        _os_log_send_and_compose_impl();
      }

LABEL_122:
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      goto LABEL_123;
    }

    goto LABEL_123;
  }

  Alternates = FigMultivariantPlaylistGetAlternates(v7);
  if (FigPathwayValidateStableVariantAndRenditionIDs(Alternates))
  {
    segPumpInitAlternateSelectionBoss_cold_1(v6, a1);
    goto LABEL_123;
  }

  v9 = *(a1 + 9232);
  if (v9)
  {
    v10 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (v10)
    {
      v10(v9, 0x1F0B64538, 0x1F0B435D8, 1, 0);
    }
  }

  if (*(a1 + 335))
  {
    v11 = 2;
  }

  else
  {
    v11 = 3;
  }

  v12 = segPumpAmendHTTPRequestFlags(a1, &v77 + 1);
  if (v12)
  {
    v5 = v12;
    v13 = 0;
    goto LABEL_121;
  }

  v13 = segPumpCopyHTTPRequestCreationsOptionsAndSetNWActivityAndStuff(0.5, *(a1 + 240), a1, v6, 0, 0);
  segPumpCopyParentNWActivity(a1, v6, &cf);
  if (!*(a1 + 40))
  {
    v19 = *(a1 + 32);
    v20 = *(a1 + 64);
    v21 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (!v21)
    {
      v24 = 0;
      v7 = 0;
      v5 = 4294954514;
      goto LABEL_53;
    }

    v17 = v21(v19, v20, 0, a1 + 40);
    if (v17)
    {
      goto LABEL_34;
    }
  }

  AllocatorForMedia = FigGetAllocatorForMedia();
  ContentSteeringServerURL = FigMultivariantPlaylistGetContentSteeringServerURL(v7);
  ContentSteeringInitPathwayID = FigMultivariantPlaylistGetContentSteeringInitPathwayID(v7);
  v17 = FigAlternateFilterMonitorCreateForContentSteering(AllocatorForMedia, ContentSteeringServerURL, ContentSteeringInitPathwayID, *(a1 + 8128), *(a1 + 88), v11, SHIDWORD(v77), *(a1 + 216), v13, cf, *(a1 + 40), *(a1 + 80), *(a1 + 347), &v78);
  if (v17)
  {
LABEL_34:
    v5 = v17;
LABEL_121:
    v24 = 0;
    v7 = 0;
    goto LABEL_53;
  }

  segPumpSetContentSteeringMonitor(a1, v78);
  if (CFSetGetCount(*(a1 + 8128)) < 1)
  {
    v7 = 0;
  }

  else
  {
    Count = CFSetGetCount(*(a1 + 8128));
    v7 = malloc_type_malloc(8 * Count, 0xC0040B8AA526DuLL);
    CFSetGetValues(*(a1 + 8128), v7);
  }

  v22 = FigGetAllocatorForMedia();
  v23 = CFSetGetCount(*(a1 + 8128));
  v24 = CFArrayCreate(v22, v7, v23, MEMORY[0x1E695E9C0]);
  v25 = *(a1 + 9232);
  if (v25)
  {
    v26 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (v26)
    {
      v26(v25, 0x1F0B64538, 0x1F0B435F8, v24, 0);
    }
  }

  v27 = *(a1 + 9752);
  v28 = *(a1 + 9232);
  v29 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v29)
  {
    v29(v27, @"AlternateFilterMonitorProperty_ReportingAgent", v28);
  }

  v5 = FigAlternateSelectionBossAddMonitor(*(a1 + 9728), *(a1 + 9752));
  if (!v5 && dword_1EAF16A30)
  {
    HIDWORD(v75) = 0;
    BYTE3(v75) = 0;
    v30 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v31 = HIDWORD(v75);
    if (os_log_type_enabled(v30, BYTE3(v75)))
    {
      v32 = v31;
    }

    else
    {
      v32 = v31 & 0xFFFFFFFE;
    }

    if (v32)
    {
      v33 = *(a1 + 8944);
      if (!v33)
      {
        v33 = &stru_1F0B1AFB8;
      }

      v34 = *v6;
      v35 = *(a1 + 9752);
      *v79 = 136315906;
      *&v79[4] = "segPumpInitContentSteeringMonitor";
      *&v79[12] = 2114;
      *&v79[14] = v33;
      *&v79[22] = 2048;
      v80 = v34;
      *v81 = 2048;
      *&v81[2] = v35;
      LODWORD(v66) = 42;
      v65 = v79;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_52;
  }

LABEL_53:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v78)
  {
    CFRelease(v78);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  if (v7)
  {
    free(v7);
  }

  if (v5)
  {
    goto LABEL_94;
  }

  v3 = *(a1 + 9752);
  if (!v3)
  {
LABEL_68:
    updated = segPumpUpdateBytesRequiredForNetworkPrediction(a1);
    if (!updated)
    {
      updated = FigAlternateSelectionBossInitializeAlternateList(*(a1 + 9728), theArray, *(a1 + 8560), *(&v72 + 1), &v73);
      if (!updated)
      {
        if (dword_1EAF16A30)
        {
          LODWORD(v78) = 0;
          LOBYTE(cf) = 0;
          v40 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v41 = v78;
          if (os_log_type_enabled(v40, cf))
          {
            v42 = v41;
          }

          else
          {
            v42 = v41 & 0xFFFFFFFE;
          }

          if (v42)
          {
            if (*(a1 + 8944))
            {
              v43 = *(a1 + 8944);
            }

            else
            {
              v43 = &stru_1F0B1AFB8;
            }

            v44 = *(a1 + 9728);
            if (theArray)
            {
              v45 = CFArrayGetCount(theArray);
            }

            else
            {
              v45 = 0;
            }

            v46 = v73;
            if (v73)
            {
              v46 = CFArrayGetCount(v73);
            }

            *v79 = 136316162;
            *&v79[4] = "segPumpInitAlternateSelectionBoss";
            *&v79[12] = 2114;
            *&v79[14] = v43;
            *&v79[22] = 2048;
            v80 = v44;
            *v81 = 2048;
            *&v81[2] = v45;
            *&v81[10] = 2048;
            *&v81[12] = v46;
            LODWORD(v66) = 52;
            v65 = v79;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v47 = *(a1 + 9768);
        if (v47)
        {
          CFRelease(v47);
          *(a1 + 9768) = 0;
        }

        v48 = FigGetAllocatorForMedia();
        updated = FigAlternatePassthroughFilterCreate(v48, @"EligibleCandidatesForPlaybackPassThrough", 877, (a1 + 9768));
        if (!updated)
        {
          updated = FigAlternateSelectionBossAddFilter(*(a1 + 9728), *(a1 + 9768));
          if (!updated)
          {
            segPumpUpdateAlternateSelectionBossNetworkErrorFilter(a1, 0, v49, v50, v51, v52, v53, v54, v65, v66, v67, SBYTE2(v67), BYTE3(v67), SHIDWORD(v67), v68, v69, *v70, v70[2], v70[3], v71, v72, v73, theArray, v75, cf, v77, v78, *v79, *&v79[8], *&v79[16], v80, *v81, *&v81[8], *&v81[16], v82, v83[0], v83[1], v83[2], v83[3], v83[4], v83[5], v83[6], v83[7], v83[8], v83[9], v83[10], v83[11], v83[12], v83[13], v83[14], v83[15]);
            if (!updated)
            {
              updated = segPumpAddNewAlternatesToValidAlternatesQueue(a1, v73);
            }
          }
        }
      }
    }

    goto LABEL_93;
  }

LABEL_65:
  v36 = FigGetAllocatorForMedia();
  v37 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v37)
  {
    v5 = 4294954514;
    goto LABEL_94;
  }

  updated = v37(v3, @"AlternateFilterMonitorProperty_Expanders", v36, &v72 + 8);
  if (!updated)
  {
    v38 = *(a1 + 9728);
    v39 = *a1;
    __copy_constructor_8_8_pa0_38126_0_pa0_35993_8_pa0_4849_16(v83, v70);
    updated = FigAlternateSelectionBossAddDelegate(v38, v39, v83, 0);
    if (!updated)
    {
      goto LABEL_68;
    }
  }

LABEL_93:
  v5 = updated;
LABEL_94:
  if (theArray)
  {
    CFRelease(theArray);
  }

LABEL_96:
  if (v73)
  {
    CFRelease(v73);
  }

  if (*(&v72 + 1))
  {
    CFRelease(*(&v72 + 1));
  }

  return v5;
}

double segPumpSetTargetDurationAndType(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4 != FigMediaPlaylistGetTargetDuration(a2))
  {
    TargetDuration = FigMediaPlaylistGetTargetDuration(a2);
    *(a1 + 8) = TargetDuration;
    if (*(a1 + 9760))
    {
      valuePtr = (2 * TargetDuration);
      v7 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberDoubleType, &valuePtr);
      v8 = *(a1 + 9760);
      v9 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v9)
      {
        v9(v8, @"AfmfpbProperty_SwitchMinDuration", v7);
      }

      if (v7)
      {
        CFRelease(v7);
      }
    }

    *(a1 + 24) = FigMediaPlaylistGetPlaylistType(a2);
    v10 = *(a1 + 8184);
    if (v10 == 0.0)
    {
      v11 = (*(a1 + 8) * *(a1 + 8160));
      if (v10 != v11)
      {
        *(a1 + 8184) = v11;
        segPumpReadyNotification(a1, @"FBP_RecommendedPrebufferReservationChanged", 0);
      }
    }

    result = *(a1 + 8176);
    if (result > 0.0)
    {
      return segPumpSetExtraHoldbackFromClient(a1, result);
    }
  }

  return result;
}

uint64_t segPumpCalculateDiscoDomainOffset(uint64_t a1, void *a2, void *a3)
{
  v12[0] = 0;
  v12[1] = v12;
  if (a2[44] >= 1 && a2[42])
  {
    segPumpCreateDiscoInfoList();
    if (v6)
    {
      v7 = v6;
      segPumpFreeDiscoQueue(v12);
      return v7;
    }

    *a3 = 0;
    *a3 = *(**(a2[43] + 8) + 32) + 1;
    segPumpFreeDiscoQueue(v12);
  }

  else if (!segPumpCalculateDiscoDomainOffset_cold_1())
  {
    return v13;
  }

  if (*(a1 + 392) == a2)
  {
    v8 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberCFIndexType, a2 + 39);
    v9 = *(a1 + 9760);
    v10 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v10)
    {
      v7 = v10(v9, @"AfmfpbProperty_MainStreamDiscoDomainOffset", v8);
      if (!v8)
      {
        return v7;
      }
    }

    else
    {
      v7 = 4294954514;
      if (!v8)
      {
        return v7;
      }
    }

    CFRelease(v8);
    return v7;
  }

  return 0;
}

void segPumpSetStartingOffset(const void *a1, uint64_t a2, uint64_t a3)
{
  v76 = *MEMORY[0x1E69E9840];
  MinimumPrebufferReservation = segPumpGetMinimumPrebufferReservation(a2, *(a3 + 56));
  v7 = *(a2 + 8176);
  v8 = *(a3 + 232);
  if (v8)
  {
    v9 = CFRetain(v8);
  }

  else
  {
    v9 = 0;
  }

  *(a3 + 866) = 0;
  segPumpUpdateCMCDStreamType(a2);
  if (*(a3 + 864))
  {
    v10 = *(a3 + 920);
    if (v10 != 0.0)
    {
      if (v9)
      {
        CFRelease(v9);
        v10 = *(a3 + 920);
      }

      v9 = CFDateCreate(*(a2 + 56), v10);
    }
  }

  v11 = MinimumPrebufferReservation + v7;
  if (v9)
  {
    memset(&v63, 0, sizeof(v63));
    memset(&type, 0, sizeof(type));
    v61 = 0.0;
    if (!segPumpGetTimeRangeForDateWithSegmentOffset(a1, *(a3 + 56), v9, &v63, &type, &v61))
    {
      *(a3 + 120) = v61 - *(a3 + 88);
      segPumpSyncTimeRolledPastToExistingStream(a1, a2, a3, v9);
      if (dword_1EAF16A30)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
LABEL_31:
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }
  }

  else if (*(a3 + 240) && !*(a2 + 8218))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v13 = MEMORY[0x19A8CCD90](*(a3 + 240));
    if (dword_1EAF16A30)
    {
      LODWORD(v63.value) = 0;
      LOBYTE(type.value) = 0;
      v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (Current <= v13)
    {
      goto LABEL_30;
    }

    v16 = Current - v13;
    v17 = *(a3 + 96);
    if (v16 > v17)
    {
      LODWORD(v63.value) = 0;
      LOBYTE(type.value) = 0;
      v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      *(a3 + 120) = 0x3F847AE147AE147BLL;
      goto LABEL_32;
    }

    v19 = dword_1EAF16A30;
    if (!*(a3 + 857) && v16 < v11)
    {
      if (v11 >= v17)
      {
        v16 = *(a3 + 96);
      }

      else
      {
        v16 = v11;
      }

      if (!dword_1EAF16A30)
      {
        *(a3 + 120) = v17 - v16;
        goto LABEL_32;
      }

      LODWORD(v63.value) = 0;
      LOBYTE(type.value) = 0;
      v20 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v19 = dword_1EAF16A30;
      v17 = *(a3 + 96);
    }

    *(a3 + 120) = v17 - v16;
    if (v19)
    {
LABEL_30:
      LODWORD(v63.value) = 0;
      LOBYTE(type.value) = 0;
      v21 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
      goto LABEL_31;
    }
  }

LABEL_32:
  if (*(a3 + 120) < 0.0)
  {
    if (!*(a2 + 8869) || *(a2 + 8870))
    {
      if (!*(a2 + 8218))
      {
        *(a3 + 112) = 1;
      }

      goto LABEL_48;
    }

    v28 = *(a2 + 8872);
    *(a3 + 120) = v28;
    if (v28 >= 0.0)
    {
      if (fabs(v28) >= 0.00000011920929)
      {
LABEL_90:
        if (!*(a2 + 8218) && v28 > *(a3 + 96) - v11)
        {
          segPumpSetStartingOffset_cold_1(a3);
        }

        goto LABEL_48;
      }

      v28 = 0.01;
    }

    else
    {
      v28 = v28 + *(a3 + 96);
    }

    *(a3 + 120) = v28;
    goto LABEL_90;
  }

  if (dword_1EAF16A30)
  {
    LODWORD(v63.value) = 0;
    LOBYTE(type.value) = 0;
    v22 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    value = v63.value;
    if (os_log_type_enabled(v22, type.value))
    {
      v24 = value;
    }

    else
    {
      v24 = value & 0xFFFFFFFE;
    }

    if (v24)
    {
      v25 = *(a2 + 8944);
      if (!v25)
      {
        v25 = &stru_1F0B1AFB8;
      }

      v26 = *a3;
      v27 = *(a3 + 120);
      v64 = 136315906;
      v65 = "segPumpSetStartingOffset";
      v66 = 2114;
      v67 = v25;
      v68 = 2048;
      v69 = v26;
      v70 = 2048;
      v71 = v27;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_48:
  if (*(a3 + 112) && (*(a3 + 160) & 0xFFFFFFFE) == 4)
  {
    if (v11 * 0.95 >= FigMediaPlaylistGetPlaylistActiveDurationSecs(*(a3 + 56)))
    {
      *(a3 + 120) = 0;
      if (dword_1EAF16A30)
      {
        LODWORD(v63.value) = 0;
        LOBYTE(type.value) = 0;
        v36 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v37 = v63.value;
        if (os_log_type_enabled(v36, type.value))
        {
          v38 = v37;
        }

        else
        {
          v38 = v37 & 0xFFFFFFFE;
        }

        if (!v38)
        {
          goto LABEL_70;
        }

        if (*(a2 + 8944))
        {
          v39 = *(a2 + 8944);
        }

        else
        {
          v39 = &stru_1F0B1AFB8;
        }

        v40 = *a3;
        v41 = *(a3 + 120);
        PlaylistActiveDurationSecs = FigMediaPlaylistGetPlaylistActiveDurationSecs(*(a3 + 56));
        v64 = 136316418;
        v65 = "segPumpSetStartingOffset";
        v66 = 2114;
        v67 = v39;
        v68 = 2048;
        v69 = v40;
        v70 = 2048;
        v71 = v41;
        v72 = 2048;
        v73 = v11 * 0.95;
        v74 = 2048;
        v75 = PlaylistActiveDurationSecs;
        goto LABEL_69;
      }
    }

    else
    {
      *(a3 + 120) = FigMediaPlaylistGetPlaylistActiveDurationSecs(*(a3 + 56)) - v11 * 0.95;
      if (dword_1EAF16A30)
      {
        LODWORD(v63.value) = 0;
        LOBYTE(type.value) = 0;
        v29 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v30 = v63.value;
        if (os_log_type_enabled(v29, type.value))
        {
          v31 = v30;
        }

        else
        {
          v31 = v30 & 0xFFFFFFFE;
        }

        if (!v31)
        {
          goto LABEL_70;
        }

        if (*(a2 + 8944))
        {
          v32 = *(a2 + 8944);
        }

        else
        {
          v32 = &stru_1F0B1AFB8;
        }

        v33 = *a3;
        v34 = *(a3 + 120);
        v35 = FigMediaPlaylistGetPlaylistActiveDurationSecs(*(a3 + 56));
        v64 = 136316162;
        v65 = "segPumpSetStartingOffset";
        v66 = 2114;
        v67 = v32;
        v68 = 2048;
        v69 = v33;
        v70 = 2048;
        v71 = v34;
        v72 = 2048;
        v73 = v35;
LABEL_69:
        _os_log_send_and_compose_impl();
LABEL_70:
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    *(a3 + 856) = 1;
    *(a3 + 112) = 0;
  }

  if (FigMediaPlaylistGetDateStampCount(*(a3 + 56)) >= 1 && (*(a3 + 160) & 0xFFFFFFFE) == 4)
  {
    DateStamp = 0;
    v44 = 0;
    v45 = *(a3 + 120) + *(a3 + 88);
    v46 = 0.0;
    while (1)
    {
      MediaSegmentSpecifiers = FigMediaPlaylistGetMediaSegmentSpecifiers(*(a3 + 56));
      if (MediaSegmentSpecifiers)
      {
        MediaSegmentSpecifiers = CFArrayGetCount(MediaSegmentSpecifiers);
      }

      if (v44 >= MediaSegmentSpecifiers)
      {
        break;
      }

      v48 = FigMediaPlaylistGetMediaSegmentSpecifiers(*(a3 + 56));
      ValueAtIndex = CFArrayGetValueAtIndex(v48, v44);
      MediaFilePrivateData = segPumpGetMediaFilePrivateData(ValueAtIndex);
      v51 = MediaFilePrivateData;
      if (DateStamp && MediaFilePrivateData[4] >= v45)
      {
        goto LABEL_84;
      }

      if (FigMediaSegmentSpecifierGetDateStamp(ValueAtIndex))
      {
        DateStamp = FigMediaSegmentSpecifierGetDateStamp(ValueAtIndex);
        v46 = v51[4];
      }

      ++v44;
    }

    if (!DateStamp)
    {
      goto LABEL_105;
    }

LABEL_84:
    AllocatorForMedia = FigGetAllocatorForMedia();
    v53 = MEMORY[0x19A8CCD90](DateStamp);
    v54 = CFDateCreate(AllocatorForMedia, v45 + v53 - v46);
    v55 = v54;
    if (!*(a3 + 232))
    {
      if (v54)
      {
        v56 = CFRetain(v54);
      }

      else
      {
        v56 = 0;
      }

      *(a3 + 232) = v56;
    }

    v57 = 0;
    v58 = a2 + 392;
    do
    {
      v59 = *(v58 + v57);
      if (*(v59 + 120) < 0.0 && !*(v59 + 232))
      {
        if (v55)
        {
          v60 = CFRetain(v55);
          v59 = *(v58 + v57);
        }

        else
        {
          v60 = 0;
        }

        *(v59 + 232) = v60;
      }

      v57 += 16;
    }

    while (v57 != 48);
    if (v55)
    {
      CFRelease(v55);
    }
  }

LABEL_105:
  *(a3 + 128) = 0xBFF0000000000000;
  if (v9)
  {
    CFRelease(v9);
  }
}

uint64_t segPumpStreamHasPreloadMapHint(uint64_t a1)
{
  result = *(a1 + 56);
  if (result)
  {
    result = FigMediaPlaylistGetPreloadMapHint(result);
    if (result)
    {
      PreloadMapHint = FigMediaPlaylistGetPreloadMapHint(*(a1 + 56));
      return FigMediaSegmentSpecifierIsReadInCurrent(PreloadMapHint) != 0;
    }
  }

  return result;
}

uint64_t segPumpRealizeMapPreload(_BYTE *a1, uint64_t *a2)
{
  if (segPumpShouldDoSegmentReadAheads(a1))
  {
    v3 = 0;
    do
    {
      MapSegmentSpecifiers = FigMediaPlaylistGetMapSegmentSpecifiers(a2[7]);
      if (MapSegmentSpecifiers)
      {
        MapSegmentSpecifiers = CFArrayGetCount(MapSegmentSpecifiers);
      }

      if (v3 >= MapSegmentSpecifiers)
      {
        return 0;
      }

      v5 = FigMediaPlaylistGetMapSegmentSpecifiers(a2[7]);
      ValueAtIndex = CFArrayGetValueAtIndex(v5, v3++);
    }

    while (!segPumpStreamHasPreloadConnectionForMap(a2, ValueAtIndex));
    if (!ValueAtIndex)
    {
      return 0;
    }

    v7 = a2[97];
    if (v7 < 1)
    {
      return 0;
    }

    v8 = 0;
    while (*(a2[96] + 8 * v8))
    {
      result = 0;
      if (v7 == ++v8)
      {
        return result;
      }
    }

    v10 = a2[100];
    v11 = *(v10 + 8);
    *(v10 + 8) = ValueAtIndex;
    CFRetain(ValueAtIndex);
    if (v11)
    {
      CFRelease(v11);
    }

    result = 0;
    *(a2[96] + 8 * v8) = a2[100];
    a2[100] = 0;
  }

  else
  {
    segPumpRealizeMapPreload_cold_1(&v12);
    return v12;
  }

  return result;
}

void segPumpReconcileGapRenditionReports(uint64_t a1, CFArrayRef theArray)
{
  v4 = 0;
  v5 = 0;
  v6 = MEMORY[0x1E695E9C0];
  if (!theArray)
  {
    goto LABEL_3;
  }

LABEL_2:
  for (i = CFArrayGetCount(theArray); v5 < i; i = 0)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v5);
    if (FigRenditionReportSpecifierIsGapAtLive(ValueAtIndex))
    {
      if (!v4)
      {
        v9 = v6[1];
        *&v19.version = *v6;
        *&v19.release = v9;
        v19.equal = segPumpRenditionReportURLsAreEqual;
        AllocatorForMedia = FigGetAllocatorForMedia();
        v4 = CFArrayCreateMutable(AllocatorForMedia, 0, &v19);
      }

      URL = FigRenditionReportSpecifierGetURL(ValueAtIndex);
      CFArrayAppendValue(v4, URL);
    }

    ++v5;
    if (theArray)
    {
      goto LABEL_2;
    }

LABEL_3:
    ;
  }

  if (v4 && !*(a1 + 9744))
  {
    v12 = FigGetAllocatorForMedia();
    if (!FigAlternateFilterMonitorCreateForRenditionDenyList(v12, segPumpRenditionReportURLsAreEqual, (a1 + 9744)))
    {
      v13 = *(a1 + 9744);
      v14 = *(a1 + 8336);
      v15 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v15)
      {
        v15(v13, @"AlternateFilterMonitorProperty_SelectedMedia", v14);
      }

      v16 = *(a1 + 9728);
      if (v16)
      {
        if (!FigAlternateSelectionBossAddMonitor(v16, *(a1 + 9744)))
        {
          goto LABEL_18;
        }
      }

      else
      {
        segPumpReconcileGapRenditionReports_cold_1();
      }
    }

LABEL_22:
    CFRelease(v4);
    return;
  }

LABEL_18:
  v17 = *(a1 + 9744);
  if (v17)
  {
    v18 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v18)
    {
      v18(v17, v4);
    }
  }

  if (v4)
  {
    goto LABEL_22;
  }
}

uint64_t segPumpSetEstimatedGOPInterval(uint64_t a1)
{
  if (!*(a1 + 9760))
  {
    return 0;
  }

  if (!*(a1 + 337))
  {
    return 0;
  }

  EstIndependentInterval = segPumpGetEstIndependentInterval(a1);
  v2 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberDoubleType, &EstIndependentInterval);
  if (v2)
  {
    v3 = v2;
    v4 = *(a1 + 9760);
    v5 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v5)
    {
      v5(v4, @"AfmfpbProperty_EstimatedGOPInterval", v3);
    }

    CFRelease(v3);
    return 0;
  }

  segPumpSetEstimatedGOPInterval_cold_1(&v8);
  return v8;
}

uint64_t segPumpSendDateMapping(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  DateStampCount = FigMediaPlaylistGetDateStampCount(*(a3 + 7));
  if (DateStampCount)
  {
    if (DateStampCount > 0x666666666666666)
    {
      return 0;
    }

    DateStampCount *= 40;
  }

  v7 = malloc_type_malloc(DateStampCount, 0x1060040E10E8238uLL);
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = *(a3 + 11);
  FigMediaPlaylistGetMediaSegmentSpecifiers(*(a3 + 7));
  FirstValue = FigCFArrayGetFirstValue();
  if (FirstValue)
  {
    NextSegment = FirstValue;
    v12 = 0;
    do
    {
      if (v12 >= FigMediaPlaylistGetDateStampCount(*(a3 + 7)))
      {
        break;
      }

      if (FigMediaSegmentSpecifierGetDateStamp(NextSegment))
      {
        DateStamp = FigMediaSegmentSpecifierGetDateStamp(NextSegment);
        v14 = &v8[5 * v12];
        v14[3] = CFRetain(DateStamp);
        CMTimeMakeWithSeconds(&v26, v9, 90000);
        v15 = *&v26.value;
        v14[2] = v26.epoch;
        *v14 = v15;
        v14[4] = FigMediaPlaylistUtilityGetDiscontinuityDomainForSegment(*(a3 + 39), NextSegment);
        ++v12;
      }

      v9 = v9 + FigMediaSegmentSpecifierGetTimeInSeconds(NextSegment);
      NextSegment = FigMediaSegmentSpecifierGetNextSegment(NextSegment);
    }

    while (NextSegment);
  }

  else
  {
    v12 = 0;
  }

  v17 = *(a2 + 176);
  v18 = *a3;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v20 = *(DerivedStorage + 168);
  if (!v20)
  {
LABEL_22:
    v16 = 0;
    v23 = 1;
    goto LABEL_23;
  }

  v21 = *(DerivedStorage + 16 * v18 + 392);
  v22 = *(v21 + 880);
  if (v17)
  {
    CFRetain(v17);
  }

  FigRetainProxyUnlockAll();
  v20(a1, v17, 0, v12, v8);
  if (v17)
  {
    CFRelease(v17);
  }

  FigRetainProxyRelock();
  if (!FigRetainProxyIsInvalidated())
  {
    if (v22 != *(v21 + 880))
    {
      v23 = 0;
      v16 = 4294951670;
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v23 = 0;
  v16 = 4294954413;
LABEL_23:
  if (v12 >= 1)
  {
    v24 = v8 + 3;
    do
    {
      if (*v24)
      {
        CFRelease(*v24);
      }

      v24 += 5;
      --v12;
    }

    while (v12);
  }

  free(v8);
  if (v23)
  {
    v16 = 0;
    *(a2 + 8221) = 1;
  }

  return v16;
}

uint64_t segPumpUpdateNetworkCostHasEndTag(uint64_t result)
{
  v1 = *(result + 8656);
  if (v1)
  {
    v2 = (*(result + 8218) ? MEMORY[0x1E695E4D0] : MEMORY[0x1E695E4C0]);
    VTable = CMBaseObjectGetVTable();
    v4 = *(VTable + 8);
    result = VTable + 8;
    v5 = *(v4 + 56);
    if (v5)
    {
      v6 = *v2;

      return v5(v1, 0x1F0B5F7B8, v6);
    }
  }

  return result;
}

uint64_t segPumpEnsureMediaSegmentURLs(const void *a1, const __CFURL *a2, const __CFURL *a3)
{
  MediaFilePrivateData = segPumpGetMediaFilePrivateData(a1);
  URLString = FigMediaSegmentSpecifierGetURLString(a1);

  return FigStreamingPlaylistEnsureMediaURL(URLString, a2, a3, MediaFilePrivateData + 2, MediaFilePrivateData + 3);
}

uint64_t segPumpMediaConnectionIncludesMedia(uint64_t a1, uint64_t a2, const void *a3)
{
  result = segPumpMediaConnectionIsActive(a2);
  if (result)
  {
    v8 = *(a1 + 16);
    v7 = *(a1 + 24);
    MediaFilePrivateData = segPumpGetMediaFilePrivateData(a3);
    segPumpEnsureMediaSegmentURLs(a3, v8, v7);
    result = FigCFHTTPCompareURLs(MediaFilePrivateData[2], *(a2 + 168));
    if (result)
    {
      return segPumpMediaConnectionRangeIncludesMedia(a2, a3);
    }
  }

  return result;
}

uint64_t segPumpMediaConnectionIsActive(uint64_t result)
{
  if (result)
  {
    if (*(result + 32) || *(result + 104))
    {
      return 1;
    }

    else
    {
      result = *(result + 272);
      if (result)
      {
        return CMBlockBufferGetDataLength(result) != 0;
      }
    }
  }

  return result;
}

BOOL segPumpMediaConnectionRangeIncludesMedia(void *a1, uint64_t a2)
{
  v4 = a1[37] + a1[30];
  result = 0;
  if (v4 <= FigMediaSegmentSpecifierGetStartOffset(a2))
  {
    v5 = a1[31];
    if (v5 < 1)
    {
      return 1;
    }

    v6 = a1[30] + v5;
    StartOffset = FigMediaSegmentSpecifierGetStartOffset(a2);
    if (v6 >= FigMediaSegmentSpecifierGetBytesToRead(a2) + StartOffset)
    {
      return 1;
    }
  }

  return result;
}

CFIndex segPumpSetDeliveryStatusForMediaFileAndParts(const void *a1, char a2)
{
  *(segPumpGetMediaFilePrivateData(a1) + 73) = a2;
  PartialSegments = FigMediaSegmentSpecifierGetPartialSegments(a1);
  v5 = 0;
  if (!PartialSegments)
  {
    goto LABEL_3;
  }

LABEL_2:
  for (result = CFArrayGetCount(PartialSegments); v5 < result; result = 0)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(PartialSegments, v5);
    *(segPumpGetMediaFilePrivateData(ValueAtIndex) + 73) = a2;
    ++v5;
    if (PartialSegments)
    {
      goto LABEL_2;
    }

LABEL_3:
    ;
  }

  return result;
}

uint64_t segPumpUpdateBufferingDoneState(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = 0;
  v4 = result + 392;
  do
  {
    v5 = *v4;
    if (*(*v4 + 16))
    {
      if (!*(v5 + 869))
      {
        result = *(v5 + 56);
        if (result)
        {
          result = FigMediaPlaylistGetMediaSegmentSpecifiers(result);
          if (result)
          {
            result = CFArrayGetCount(result);
            v6 = result - 1;
            if (result >= 1)
            {
              MediaSegmentSpecifiers = FigMediaPlaylistGetMediaSegmentSpecifiers(*(v5 + 56));
              ValueAtIndex = CFArrayGetValueAtIndex(MediaSegmentSpecifiers, v6);
              result = segPumpGetMediaFilePrivateData(ValueAtIndex);
              if (!*(result + 73))
              {
                break;
              }
            }
          }
        }
      }
    }

    v2 = v3 > 1;
    v4 += 16;
    ++v3;
  }

  while (v3 != 3);
  v9 = *(v1 + 9760);
  if (v9)
  {
    v10 = (v2 ? MEMORY[0x1E695E4D0] : MEMORY[0x1E695E4C0]);
    VTable = CMBaseObjectGetVTable();
    v12 = *(VTable + 8);
    result = VTable + 8;
    v13 = *(v12 + 56);
    if (v13)
    {
      v14 = *v10;

      return v13(v9, @"AfmfpbProperty_IsBufferFull", v14);
    }
  }

  return result;
}

const void *segPumpFindCryptKeyCommonData(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  for (i = 0; ; ++i)
  {
    Count = *(a1 + 7888);
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    if (i >= Count)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 7888), i);
    FigContentKeySpecifierGetIdentifier(a2);
    if (FigCFEqual())
    {
      v4 = ValueAtIndex;
    }
  }

  return v4;
}

const void *segPumpCreateCryptKeyCommonData(uint64_t a1)
{
  FigGetAllocatorForMedia();
  v6 = xmmword_1E7476B90;
  if (segPumpCryptKeyCommonDataGetTypeID_once != -1)
  {
    dispatch_once_f(&segPumpCryptKeyCommonDataGetTypeID_once, &v6, segPumpRegisterClassUtil);
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    Mutable = *(a1 + 7888);
    if (Mutable || (AllocatorForMedia = FigGetAllocatorForMedia(), Mutable = CFArrayCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9C0]), (*(a1 + 7888) = Mutable) != 0))
    {
      CFArrayAppendValue(Mutable, Instance);
    }

    else
    {
      segPumpCreateCryptKeyCommonData_cold_1();
    }
  }

  else
  {
    segPumpCreateCryptKeyCommonData_cold_2();
  }

  return Instance;
}

void segPumpCryptKeyCommonDataFinalize(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
    a1[2] = 0;
  }

  v3 = a1[7];
  if (v3)
  {
    CFRelease(v3);
    a1[7] = 0;
  }

  v4 = a1[8];
  if (v4)
  {
    CFRelease(v4);
    a1[8] = 0;
  }

  v5 = a1[6];
  if (v5)
  {
    CFRelease(v5);
    a1[6] = 0;
  }

  CryptKeyReleaseAndClearVideoDecryptor(a1);

  CryptKeyReleaseAndClearAudioDecryptor(a1);
}

void CryptKeyReleaseAndClearVideoDecryptor(uint64_t a1)
{
  CMNotificationCenterGetDefaultLocalCenter();
  if (*(a1 + 72))
  {
    FigNotificationCenterRemoveWeakListener();
    FigNotificationCenterRemoveWeakListener();
    FigNotificationCenterRemoveWeakListener();
    FigNotificationCenterRemoveWeakListener();
    v2 = *(a1 + 72);
    if (v2)
    {
      CFRelease(v2);
      *(a1 + 72) = 0;
    }
  }

  *(a1 + 80) = 0;
}

void CryptKeyReleaseAndClearAudioDecryptor(uint64_t a1)
{
  CMNotificationCenterGetDefaultLocalCenter();
  if (*(a1 + 112))
  {
    FigNotificationCenterRemoveWeakListener();
    FigNotificationCenterRemoveWeakListener();
    FigNotificationCenterRemoveWeakListener();
    v2 = *(a1 + 112);
    if (v2)
    {
      CFRelease(v2);
      *(a1 + 112) = 0;
    }
  }

  *(a1 + 120) = 0;
}

uint64_t segPumpContinueIfCryptKeyResponseWasAlreadySet(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a5 + 72);
  if (!v10)
  {
    if (!*(a5 + 112))
    {
      return 0;
    }

    v11 = 0;
    goto LABEL_6;
  }

  if (segPumpGetDecryptorState(v10) == 3)
  {
    v11 = *(a5 + 72);
LABEL_6:
    v12 = 1;
    goto LABEL_8;
  }

  v12 = 0;
  v11 = 0;
LABEL_8:
  v13 = *(a5 + 112);
  if (v13)
  {
    if (segPumpGetDecryptorState(v13) != 3)
    {
      goto LABEL_21;
    }

    v14 = *(a5 + 112);
  }

  else
  {
    v14 = 0;
  }

  if (v14)
  {
    v11 = v14;
  }

  if (v12)
  {
    *(a5 + 152) = 1;
    if (*(a2 + 330))
    {
      if (segPumpCryptKeyIsLowValueFairPlayStreamingKey(a4))
      {
        AllocatorForMedia = FigGetAllocatorForMedia();
        v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (!v16 || v16(v11, *MEMORY[0x1E69610D8], AllocatorForMedia, a5 + 56) || (v17 = FigGetAllocatorForMedia(), (v18 = *(*(CMBaseObjectGetVTable() + 8) + 48)) == 0) || v18(v11, *MEMORY[0x1E69610C8], v17, a5 + 64))
        {

          return FigSignalErrorAtGM();
        }
      }
    }
  }

LABEL_21:
  if (!*(a5 + 152))
  {
    return 0;
  }

  FigHTTPStopAndReleaseTimer((a3 + 640));

  return segPumpContinueAfterKeyFetched(a1, a2, a3, a4);
}

uint64_t segPumpGetDecryptorState(uint64_t a1)
{
  number = 0;
  valuePtr = 0;
  AllocatorForMedia = FigGetAllocatorForMedia();
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v3)
  {
    return 0;
  }

  v4 = v3(a1, *MEMORY[0x1E69610E8], AllocatorForMedia, &number);
  v5 = number;
  if (v4)
  {
    v6 = 0;
    if (!number)
    {
      return v6;
    }

    goto LABEL_4;
  }

  CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr);
  v6 = valuePtr;
  v5 = number;
  if (number)
  {
LABEL_4:
    CFRelease(v5);
  }

  return v6;
}

void segPumpStreamProceedAfterMediaAndKeyArrival(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, int a5, int a6)
{
  if (!a4)
  {
    segPumpStreamProceedAfterMediaAndKeyArrival_cold_2();
  }

  Type = FigMediaSegmentSpecifierGetType(a4);
  MediaFilePrivateData = segPumpGetMediaFilePrivateData(a4);
  if (Type != 1)
  {
    v13 = MediaFilePrivateData;
    v14 = MediaFilePrivateData[2];
    if (!v14)
    {
      if (!a5)
      {
        goto LABEL_6;
      }

      goto LABEL_9;
    }

    CFRelease(v14);
    v13[2] = 0;
  }

  if (!a5)
  {
    goto LABEL_6;
  }

LABEL_9:
  if (*(a3 + 264) == a4 && (v15 = *(a3 + 256)) != 0 && (FigMediaSegmentSpecifierIsFragment(v15) || (FigMediaSegmentSpecifierGetPartialSegments(*(a3 + 256)), FigCFArrayGetLastValue() != a4)))
  {
    segPumpMarkMediaFileAsDelivered(a2, a3, a4);
  }

  else
  {
    segPumpStreamProceedAfterMediaAndKeyArrival_cold_1();
  }

  if (*(a2 + 392 + 16 * *a3) == a3)
  {
    v16 = *(a2 + 392 + 16 * *a3 + 8);
    if (*(v16 + 861))
    {
      if (FigMediaSegmentSpecifierGetImputedDate(a4) != 0.0)
      {
        ImputedDate = FigMediaSegmentSpecifierGetImputedDate(a4);
        *(v16 + 920) = ImputedDate + FigMediaSegmentSpecifierGetTimeInSeconds(a4) * 0.5;
      }

      PlaylistActiveDurationSecs = FigMediaPlaylistGetPlaylistActiveDurationSecs(*(a3 + 56));
      v19 = *(segPumpGetMediaFilePrivateData(a4) + 4) - *(a3 + 88);
      *(v16 + 904) = PlaylistActiveDurationSecs - (v19 + FigMediaSegmentSpecifierGetTimeInSeconds(a4));
    }
  }

LABEL_6:
  if (a6)
  {

    segPumpMoveToNextMedia();
  }
}

uint64_t segPumpShouldPadByteCountForMediaSegment(uint64_t a1, uint64_t a2)
{
  result = FigMediaSegmentSpecifierGetContentKeySpecifier(a2);
  if (result)
  {
    ContentKeySpecifier = FigMediaSegmentSpecifierGetContentKeySpecifier(a2);
    if (FigContentKeySpecifierGetEncryptionMethod(ContentKeySpecifier) != 3)
    {
      return 0;
    }

    v6 = FigMediaSegmentSpecifierGetContentKeySpecifier(a2);
    if (FigContentKeySpecifierGetEncryptionMethod(v6) == 4)
    {
      return 0;
    }

    result = 0;
    if (a2 && *(a1 + 8896))
    {
      if (!FigMediaSegmentSpecifierGetType(a2))
      {
        return FigMediaSegmentSpecifierGetBytesToRead(a2) > 0;
      }

      return 0;
    }
  }

  return result;
}

uint64_t segPumpAppendBytesToCache(uint64_t a1, uint64_t a2, const void *a3, OpaqueCMBlockBuffer *a4, size_t a5, size_t a6, int a7)
{
  MediaFilePrivateData = segPumpGetMediaFilePrivateData(a3);
  result = *(a1 + 296);
  if (result)
  {
    v16 = *(a2 + 64);
    if (v16)
    {
      v18 = (MediaFilePrivateData + 104);
      v17 = *(MediaFilePrivateData + 13);
      if (v17)
      {
        if (a6)
        {
          result = FigStreamingCacheMediaSegmentAppendBytes(result, v16, v17, *(MediaFilePrivateData + 15), a4, a5, a6);
          if (result)
          {
            goto LABEL_12;
          }
        }

        *(MediaFilePrivateData + 15) += a6;
        if (a7)
        {
          v20 = 0;
          FigStreamingCacheMediaSegmentGetLength(*(a1 + 296), *(a2 + 64), *v18, 0, &v20);
          if (FigMediaSegmentSpecifierGetBytesToRead(a3) && (v19 = FigMediaSegmentSpecifierGetBytesToRead(a3), v19 != v20))
          {
            result = 4294951672;
          }

          else
          {
            result = FigStreamingCacheMediaSegmentMarkComplete(*(a1 + 296), *(a2 + 64), *v18);
            *v18 = 0;
          }

LABEL_12:
          if (result > -16244)
          {
            if (result != -15641)
            {
              if (result != -16243)
              {
                return result;
              }

              result = 0;
              *(MediaFilePrivateData + 6) = 0;
              *(MediaFilePrivateData + 7) = 0;
              *(MediaFilePrivateData + 71) = 0;
              *(MediaFilePrivateData + 8) = 0;
              *(MediaFilePrivateData + 14) = 0;
              *(MediaFilePrivateData + 15) = 0;
              goto LABEL_20;
            }
          }

          else if ((result + 16246) >= 2 && result != -16249)
          {
            return result;
          }

          result = 0;
LABEL_20:
          *v18 = 0;
          return result;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t segPumpMediaFileHandleCryptData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, OpaqueCMBlockBuffer *a5, size_t a6, size_t a7, uint64_t a8)
{
  v55 = *MEMORY[0x1E69E9840];
  blockBufferOut = 0;
  v48 = 0;
  ContentKeySpecifier = FigMediaSegmentSpecifierGetContentKeySpecifier(a4);
  EncryptionMethod = FigContentKeySpecifierGetEncryptionMethod(ContentKeySpecifier);
  if (!*(a2 + 330))
  {
    segPumpMediaFileHandleCryptData_cold_1(lengthAtOffsetOut);
    v32 = LODWORD(lengthAtOffsetOut[0]);
LABEL_19:
    if (blockBufferOut)
    {
      CFRelease(blockBufferOut);
    }

    return v32;
  }

  v18 = EncryptionMethod;
  v19 = FigMediaSegmentSpecifierGetContentKeySpecifier(a4);
  segPumpGetCryptKeyCommonData(v19, 0, &v48, v20, v21, v22, v23, v24, v41, a1, v45, blockBufferOut, v48, v49, v50, v51, v52);
  if (DecryptedData)
  {
    goto LABEL_33;
  }

  v26 = v18 - 3;
  if (*(v48 + 152))
  {
    if (v26 < 0xFFFFFFFE)
    {
      AllocatorForMedia = FigGetAllocatorForMedia();
      DecryptedData = CMBlockBufferCreateEmpty(AllocatorForMedia, 0, 0, &blockBufferOut);
      if (!DecryptedData)
      {
        if (!a7 && (a8 & 1) != 0)
        {
          DecryptedData = segPumpMediaFileCreateDecryptedData(a2, a3, a4, a5, a6, 0, 1, blockBufferOut);
          if (DecryptedData)
          {
            goto LABEL_33;
          }
        }

        else if (a7)
        {
          v28 = a7 + a6;
          do
          {
            lengthAtOffsetOut[0] = 0;
            DecryptedData = CMBlockBufferGetDataPointer(a5, a6, lengthAtOffsetOut, 0, 0);
            if (DecryptedData)
            {
              goto LABEL_33;
            }

            v29 = lengthAtOffsetOut[0] >= a7 ? a7 : lengthAtOffsetOut[0];
            DecryptedData = segPumpMediaFileCreateDecryptedData(a2, a3, a4, a5, a6, v29, a8 & (lengthAtOffsetOut[0] + a6 >= v28), blockBufferOut);
            if (DecryptedData)
            {
              goto LABEL_33;
            }

            a6 += lengthAtOffsetOut[0];
            a7 -= v29;
          }

          while (a7);
        }

        DataLength = CMBlockBufferGetDataLength(blockBufferOut);
        v31 = DataLength;
        if ((a8 & 1) == 0 && !DataLength)
        {
          v32 = 0;
          goto LABEL_19;
        }

        v39 = blockBufferOut;
        LODWORD(v42) = 0;
        v35 = v44;
        v36 = a2;
        v37 = a3;
        v38 = a4;
        v40 = 0;
        goto LABEL_32;
      }

LABEL_33:
      v32 = DecryptedData;
      goto LABEL_19;
    }

LABEL_28:
    LODWORD(v42) = 0;
    v35 = v44;
    v36 = a2;
    v37 = a3;
    v38 = a4;
    v39 = a5;
    v40 = a6;
    v31 = a7;
LABEL_32:
    segPumpSendMediaCallback(v35, v36, v37, v38, v39, v40, v31, a8, v42, v43, v44, v46, blockBufferOut, v48, v49, v50, v51, v52, lengthAtOffsetOut[0], lengthAtOffsetOut[1], lengthAtOffsetOut[2], lengthAtOffsetOut[3], v54);
    goto LABEL_33;
  }

  if (a4 && v26 >= 0xFFFFFFFE && FigMediaSegmentSpecifierGetType(a4) == 1)
  {
    goto LABEL_28;
  }

  if (dword_1EAF16A30)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return FigSignalErrorAtGM();
}

BOOL segPumpIsLastMediaFileDelivering(uint64_t a1, uint64_t a2)
{
  NextSegment = FigMediaSegmentSpecifierGetNextSegment(a2);
  HasEndTag = FigMediaPlaylistHasEndTag(*(a1 + 56));
  result = 0;
  if (a2 && HasEndTag)
  {
    if (!FigMediaSegmentSpecifierGetType(a2))
    {
      if (!NextSegment)
      {
        return 1;
      }

      if ((*(a1 + 220) & 0x1D) == 1)
      {
        MediaFilePrivateData = segPumpGetMediaFilePrivateData(NextSegment);
        v8 = *(a1 + 208);
        return CMTimeGetSeconds(&v8) <= MediaFilePrivateData[4];
      }
    }

    return 0;
  }

  return result;
}

uint64_t segPumpSetMediaConnectionIsDormant(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = *(a2 + 32);
    if (v4)
    {
      if (a3)
      {
        v5 = MEMORY[0x1E695E4D0];
      }

      else
      {
        v5 = MEMORY[0x1E695E4C0];
      }

      VTable = CMBaseObjectGetVTable();
      v7 = *(VTable + 8);
      result = VTable + 8;
      v8 = *(v7 + 56);
      if (v8)
      {
        v9 = @"FHRP_IsDormant";
        v10 = *v5;
        v11 = v4;

        return v8(v11, v9, v10);
      }
    }

    else
    {
      v12 = *(a2 + 104);
      if (v12)
      {
        v13 = *(result + 80);
        v14 = CMBaseObjectGetVTable();
        v15 = *(v14 + 16);
        result = v14 + 16;
        v8 = *(v15 + 40);
        if (v8)
        {
          v11 = v13;
          v9 = v12;
          v10 = a3;

          return v8(v11, v9, v10);
        }
      }
    }
  }

  return result;
}

uint64_t segPumpShouldDoSegmentReadAheads(_BYTE *a1)
{
  if (a1[337])
  {
    return 1;
  }

  if (a1[8393] && (a1[8214] || !segPumpIsCacheDiskBacked(a1)))
  {
    if (a1[338])
    {
      return 1;
    }

    v3 = 0;
    v4 = a1 + 392;
    TimeDeliveredFromBeginningForVOD = 1.79769313e308;
    do
    {
      v6 = *&v4[v3];
      if (*(v6 + 16) && !*(v6 + 1152) && TimeDeliveredFromBeginningForVOD >= segPumpStreamGetTimeDeliveredFromBeginningForVOD(*&v4[v3]))
      {
        TimeDeliveredFromBeginningForVOD = segPumpStreamGetTimeDeliveredFromBeginningForVOD(v6);
      }

      v3 += 16;
    }

    while (v3 != 48);
    if (TimeDeliveredFromBeginningForVOD > 120.0)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t segPumpStreamGetFuturePreloadCount(uint64_t a1, void *a2)
{
  if (segPumpStreamShouldYieldToTrialSwitch(a1, a2))
  {
    return 0;
  }

  result = a2[7];
  if (result)
  {
    FigMediaPlaylistGetMediaSegmentSpecifiers(result);
    result = FigCFArrayGetLastValue();
    if (result)
    {
      LastValue = result;
      PartialSegments = FigMediaSegmentSpecifierGetPartialSegments(result);
      if (PartialSegments && CFArrayGetCount(PartialSegments) >= 1)
      {
        LastValue = FigCFArrayGetLastValue();
      }

      IsFragment = FigMediaSegmentSpecifierIsFragment(LastValue);
      v7 = 33;
      if (!IsFragment)
      {
        v7 = 32;
      }

      return LastValue == a2[v7] || *(segPumpGetMediaFilePrivateData(LastValue) + 73);
    }
  }

  return result;
}

BOOL segPumpIsCacheDiskBacked(uint64_t a1)
{
  cf = *MEMORY[0x1E695E4C0];
  v1 = *(a1 + 296);
  AllocatorForMedia = FigGetAllocatorForMedia();
  FigStreamingCacheCopyProperty(v1, @"FSC_IsDiskBacked", AllocatorForMedia, &cf);
  v3 = *MEMORY[0x1E695E4D0];
  v4 = cf;
  if (cf)
  {
    CFRelease(cf);
  }

  return v3 == v4;
}

BOOL segPumpStreamShouldYieldToTrialSwitch(uint64_t a1, void *a2)
{
  v2 = *(a1 + 7880);
  if (!v2)
  {
    return 0;
  }

  if (*(a1 + 16 * *a2 + 392) != a2)
  {
    return 0;
  }

  if (!*(a1 + 8328))
  {
    return 0;
  }

  PeakBitRate = FigAlternateGetPeakBitRate(*(v2 + 8));
  if (PeakBitRate >= FigAlternateGetPeakBitRate(*(*(a1 + 8328) + 8)))
  {
    return 0;
  }

  v9 = 0;
  v10 = 0;
  v7 = *a2 > 2uLL ? 0 : dword_196E7291C[*a2];
  if (FigAlternateGetRenditionInfoForMediaType(*(*(a1 + 7880) + 8), v7, *(a1 + 8576), *(a1 + 8584), *(a1 + 8592), 1, 0, &v9, 0))
  {
    return 0;
  }

  v8 = *a2 > 2uLL ? 0 : dword_196E7291C[*a2];
  if (FigAlternateGetRenditionInfoForMediaType(*(*(a1 + 8328) + 8), v8, *(a1 + 8576), *(a1 + 8584), *(a1 + 8592), 1, 0, &v10, 0))
  {
    return 0;
  }

  return FigCFEqual() == 0;
}

uint64_t segPumpCreateMediaConnection(uint64_t a1)
{
  v2 = malloc_type_calloc(1uLL, 0x130uLL, 0x106004050414A1CuLL);
  if (!v2)
  {
    return 4294954510;
  }

  v3 = v2;
  result = 0;
  v5 = *(a1 + 744);
  v3[23] = v5;
  *(a1 + 744) = v5 + 1;
  *v3 = 0;
  **(a1 + 688) = v3;
  *(a1 + 688) = v3;
  return result;
}

double segPumpGetDownloadTimerIntervalForMedia(double *a1, uint64_t a2)
{
  TimeInSeconds = FigMediaSegmentSpecifierGetTimeInSeconds(a2);
  if (TimeInSeconds >= 0.25 || FigMediaSegmentSpecifierIsFragment(a2))
  {
    if (FigMediaSegmentSpecifierIsFragment(a2))
    {
      v5 = a1[2] * 0.5;
    }

    else
    {
      v5 = a1[1025];
    }

    if (TimeInSeconds / a1[1111] > v5)
    {
      v5 = TimeInSeconds / a1[1111];
    }
  }

  else
  {
    v5 = 0.25 / a1[1111];
  }

  return fmin(v5, 30.0);
}

void segPumpRTCReportingUpdateMediaTimerStats(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 776);
  if (v3 < 1)
  {
LABEL_5:
    segPumpRTCReportingUpdateMediaTimerStats_cold_1();
  }

  else
  {
    v4 = *(a2 + 768);
    while (*v4 != a3)
    {
      ++v4;
      if (!--v3)
      {
        goto LABEL_5;
      }
    }
  }
}

OpaqueCMBlockBuffer *segPumpAccumConnCompletesMediaRange(uint64_t a1, const void *a2)
{
  result = *(a1 + 272);
  if (result)
  {
    DataLength = CMBlockBufferGetDataLength(result);
    return (segPumpReadCompletesMediaRange(a2, DataLength) != 0);
  }

  return result;
}

void segPumpSetMediaFileForMediaConnection(uint64_t a1, void *a2, void *a3, const void *a4, CFTypeRef cf)
{
  v9 = a2[2];
  a2[2] = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  v10 = a2[21];
  v11 = a3[2];
  v12 = a3[3];
  MediaFilePrivateData = segPumpGetMediaFilePrivateData(a4);
  segPumpEnsureMediaSegmentURLs(a4, v11, v12);
  v14 = MediaFilePrivateData[2];
  a2[21] = v14;
  if (v14)
  {
    CFRetain(v14);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  v15 = a2[1];
  a2[1] = a4;
  if (a4)
  {
    CFRetain(a4);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  v16 = segPumpGetMediaFilePrivateData(a4);
  if (*(a1 + 296))
  {
    if (a3[8])
    {
      v17 = v16;
      if ((!a4 || FigMediaSegmentSpecifierGetType(a4) != 1) && !v17[13] && segPumpCanAddSegmentToCache(a1, a3, a4, 0))
      {
        cfa = 0;
        v18 = segPumpGetMediaFilePrivateData(a4);
        if ((*(a1 + 8214) || !segPumpIsCacheDiskBacked(a1)) && !segPumpCreateCacheNameFromSegment(a3, a4, 0, &cfa))
        {
          v19 = *(a1 + 296);
          v20 = a3[8];
          v21 = cfa;
          StartOffset = FigMediaSegmentSpecifierGetStartOffset(a4);
          v23 = v18[4];
          TimeInSeconds = FigMediaSegmentSpecifierGetTimeInSeconds(a4);
          MediaSequence = FigMediaSegmentSpecifierGetMediaSequence(a4);
          if (!FigStreamingCacheMediaStreamCreateMediaSegment(v19, v20, v21, StartOffset, MediaSequence, v18 + 13, v23, TimeInSeconds))
          {
            segPumpSetMediaFilePumpTimeOffsetsArray(a1, a3, a4);
          }
        }

        if (cfa)
        {
          CFRelease(cfa);
        }

        if (!v17[13])
        {
          FigSignalErrorAtGM();
        }
      }
    }
  }
}

const void *segPumpReadCompletesMediaRange(const void *result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    if (FigMediaSegmentSpecifierGetBytesToRead(result) < 1)
    {
      return 0;
    }

    else
    {
      result = segPumpGetMediaFilePrivateData(v3);
      if (result)
      {
        v4 = *(result + 6) + a2;
        return (v4 >= FigMediaSegmentSpecifierGetBytesToRead(v3));
      }
    }
  }

  return result;
}

uint64_t segPumpCanAddSegmentToCache(uint64_t *a1, void *a2, const void *a3, _BYTE *a4)
{
  v19 = 0;
  v20 = 0;
  if (a4)
  {
    *a4 = 0;
  }

  if (!a1[37] || !a2[8])
  {
    return 0;
  }

  segPumpSeeIfMediaFileIsInCache();
  v10 = v9;
  if (a4)
  {
    *a4 = 1;
  }

  MediaFilePrivateData = segPumpGetMediaFilePrivateData(a3);
  v12 = MediaFilePrivateData;
  if (v10)
  {
    v13 = v20;
    MediaFilePrivateData[13] = v20;
    if (MediaFilePrivateData[5])
    {
      FigStreamingCacheMediaSegmentGetLength(a1[37], a2[8], v13, 0, &v19);
      v14 = v12[5] - v19;
LABEL_11:
      v19 = v14;
      goto LABEL_15;
    }

    v14 = 0;
  }

  else if (FigMediaSegmentSpecifierGetBytesToRead(a3))
  {
    v14 = FigMediaSegmentSpecifierGetBytesToRead(a3);
    v19 = v14;
  }

  else
  {
    v14 = v12[5];
    if (v14)
    {
      goto LABEL_11;
    }
  }

LABEL_15:
  v15 = segPumpGetMediaFilePrivateData(a3);
  if (a1[37] && a2[8])
  {
    v16 = v15;
    if (!v14)
    {
      if (FigMediaSegmentSpecifierGetBytesToRead(a3))
      {
        v14 = FigMediaSegmentSpecifierGetBytesToRead(a3);
      }

      else
      {
        v14 = 1000000;
        v17 = a1[1041];
        if (v17)
        {
          if (*a2 == a1[1075])
          {
            v18 = *(v17 + 24);
            v14 = (FigMediaSegmentSpecifierGetTimeInSeconds(a3) * v18 * 0.125);
          }
        }
      }
    }

    if (FigStreamingCacheMediaStreamReserveSpaceForByteSize(a1[37], a2[8], v14, v16[4]))
    {
      return 0;
    }
  }

  v12[13] = v20;
  return 1;
}

uint64_t segPumpCreateCacheNameFromSegment(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v15 = 0;
  cf = 0;
  AllocatorForMedia = FigGetAllocatorForMedia();
  URLString = FigMediaSegmentSpecifierGetURLString(a2);
  v10 = CFURLCreateWithString(AllocatorForMedia, URLString, *(a1 + 24));
  if (v10 || segPumpCreateCacheNameFromSegment_cold_1())
  {
    v11 = segPumpCreateURLAndString(v10, &cf, &v15);
    if (!v11)
    {
      if (a3)
      {
        v12 = cf;
        if (cf)
        {
          v12 = CFRetain(cf);
        }

        *a3 = v12;
      }

      if (a4)
      {
        v13 = v15;
        if (v15)
        {
          v13 = CFRetain(v15);
        }

        *a4 = v13;
      }
    }

    if (v10)
    {
      CFRelease(v10);
    }
  }

  else
  {
    v11 = v17;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  return v11;
}

uint64_t segPumpSetMediaFilePumpTimeOffsetsArray(uint64_t a1, uint64_t a2, const void *a3)
{
  MediaFilePrivateData = segPumpGetMediaFilePrivateData(a3);
  v6 = *(MediaFilePrivateData + 16);
  if (!v6 || CFArrayGetCount(v6) < 2)
  {
    return 0;
  }

  v7 = *(a1 + 296);
  v8 = *(a2 + 64);
  v9 = *(MediaFilePrivateData + 13);
  v10 = *(MediaFilePrivateData + 16);

  return FigStreamingCacheMediaSegmentSetDuplicateSegments(v7, v8, v9, v10);
}

uint64_t segPumpGetStreamFromMediaHTTPRequest(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v4 = 0;
  v5 = a1 + 392;
  while (1)
  {
    result = *(v5 + 16 * v4);
    v7 = *(result + 680);
    if (v7)
    {
      break;
    }

LABEL_6:
    result = *(v5 + 16 * v4 + 8);
    v7 = *(result + 680);
    if (v7)
    {
      while (v7[4] != a2 || *(v7 + 24) != a3)
      {
        v7 = *v7;
        if (!v7)
        {
          goto LABEL_10;
        }
      }

      goto LABEL_13;
    }

LABEL_10:
    if (++v4 == 3)
    {
      return 0;
    }
  }

  while (v7[4] != a2 || *(v7 + 24) != a3)
  {
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_6;
    }
  }

LABEL_13:
  if (a4)
  {
    *a4 = v7;
  }

  return result;
}

uint64_t segPumpGetMediaDataMemoryPool(uint64_t a1)
{
  result = *(a1 + 8136);
  if (!result)
  {
    AllocatorForMedia = FigGetAllocatorForMedia();
    Mutable = CFDictionaryCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v5 = Mutable;
      v6 = FigGetAllocatorForMedia();
      v7 = CFStringCreateWithFormat(v6, 0, @"BytePumpHTTPSegment-%p", a1);
      if (v7)
      {
        segPumpGetMediaDataMemoryPool_cold_1(v5, v7, a1, (a1 + 8136));
      }

      CFRelease(v5);
    }

    return *(a1 + 8136);
  }

  return result;
}

uint64_t segPumpUpdateNetworkCostIsExpensive(uint64_t result)
{
  v1 = *(result + 8656);
  if (v1)
  {
    v2 = (*(result + 8652) ? MEMORY[0x1E695E4D0] : MEMORY[0x1E695E4C0]);
    VTable = CMBaseObjectGetVTable();
    v4 = *(VTable + 8);
    result = VTable + 8;
    v5 = *(v4 + 56);
    if (v5)
    {
      v6 = *v2;

      return v5(v1, 0x1F0B5F718, v6);
    }
  }

  return result;
}

void segPumpRTCReportingLogAndUpdateStats(uint64_t a1, CFHTTPMessageRef message, CFStringRef headerField, int a4, int a5)
{
  v8 = CFHTTPMessageCopyHeaderFieldValue(message, headerField);
  if (v8)
  {
    segPumpRTCReportingLogAndUpdateStats_cold_1(a1, a4, a5, v8);
  }
}

double segPumpGetElapsedTimeForConnectionOnMedia(uint64_t a1, uint64_t a2)
{
  v2 = 64;
  if (!*(a2 + 211))
  {
    v2 = 40;
  }

  v3 = *(a2 + v2);
  if (*(a2 + 288) <= 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = *(a2 + 288);
  }

  return *(a1 + 808) + (FigGetUpTimeNanoseconds() - v4) / 1000000000.0;
}

void segPumpAddMediaSegmentNoResponseErrorIfNecessary(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 && !*(a3 + 210) && !*(a3 + 224))
  {
    segPumpAddMediaSegmentNoResponseErrorIfNecessary_cold_1();
  }
}

uint64_t segPumpStreamBitRateRequiredForStream(uint64_t a1, void *a2)
{
  v2 = *(a1 + 7880);
  if (v2 && *(a1 + 16 * *a2 + 400) == a2)
  {
    return FigAlternateGetPeakBitRate(*(v2 + 8));
  }

  v2 = *(a1 + 8328);
  if (v2)
  {
    return FigAlternateGetPeakBitRate(*(v2 + 8));
  }

  else
  {
    return 0;
  }
}

uint64_t segPumpGetFragmentNumber(uint64_t a1, const void *a2)
{
  PartialSegments = FigMediaSegmentSpecifierGetPartialSegments(a1);
  v4 = 0;
  while (1)
  {
    v5 = PartialSegments ? CFArrayGetCount(PartialSegments) : 0;
    if (v4 >= v5)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(PartialSegments, v4++);
    if (ValueAtIndex == a2)
    {
      goto LABEL_9;
    }
  }

  a2 = 0;
LABEL_9:
  if (a2)
  {
    return v4 - 1;
  }

  else
  {
    return -1;
  }
}

uint64_t segPumpStreamGetMapNumber(void *a1)
{
  for (i = 0; ; ++i)
  {
    MapSegmentSpecifiers = FigMediaPlaylistGetMapSegmentSpecifiers(a1[7]);
    if (MapSegmentSpecifiers)
    {
      MapSegmentSpecifiers = CFArrayGetCount(MapSegmentSpecifiers);
    }

    if (i >= MapSegmentSpecifiers)
    {
      break;
    }

    v4 = FigMediaPlaylistGetMapSegmentSpecifiers(a1[7]);
    ValueAtIndex = CFArrayGetValueAtIndex(v4, i);
    v6 = a1[2];
    v7 = a1[3];
    segPumpGetMediaFilePrivateData(ValueAtIndex);
    segPumpEnsureMediaSegmentURLs(ValueAtIndex, v6, v7);
    if (FigCFEqual())
    {
      goto LABEL_8;
    }
  }

  ValueAtIndex = 0;
LABEL_8:
  if (ValueAtIndex)
  {
    return i;
  }

  else
  {
    return -1;
  }
}

const void *segPumpGetMediaEntryForMediaSequence(uint64_t a1, unint64_t a2)
{
  if (!a1)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    FigLogBacktrace();
  }

  v5 = 0;
  do
  {
    MediaSegmentSpecifiers = FigMediaPlaylistGetMediaSegmentSpecifiers(a1);
    if (MediaSegmentSpecifiers)
    {
      MediaSegmentSpecifiers = CFArrayGetCount(MediaSegmentSpecifiers);
    }

    if (v5 >= MediaSegmentSpecifiers)
    {
      break;
    }

    v7 = FigMediaPlaylistGetMediaSegmentSpecifiers(a1);
    ValueAtIndex = CFArrayGetValueAtIndex(v7, v5);
    if (FigMediaSegmentSpecifierGetMediaSequence(ValueAtIndex) == a2)
    {
      return ValueAtIndex;
    }

    ++v5;
  }

  while (FigMediaSegmentSpecifierGetMediaSequence(ValueAtIndex) <= a2);
  return 0;
}

uint64_t segPumpShouldIssueVerboseEvent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  IsFragment = FigMediaSegmentSpecifierIsFragment(a3);
  v7 = *(a2 + 256);
  if (v7)
  {
    FigMediaSegmentSpecifierGetPartialSegments(v7);
    v8 = FigCFArrayGetFirstValue() == a3;
  }

  else
  {
    v8 = 0;
  }

  if (!IsFragment)
  {
    v8 = 1;
  }

  return *(a1 + 9252) == 3 || v8;
}

void segPumpRTCReportingSetCurrentAlternateIndexAndBitRate(uint64_t a1)
{
  v1 = *(a1 + 8328);
  if (v1)
  {
    AverageBitRate = FigAlternateGetAverageBitRate(*(v1 + 8));
    valuePtr = FigAlternateGetDeclaredPeakBitRate(*(*(a1 + 8328) + 8));
    AlternateIndex = FigAlternateGetAlternateIndex(*(*(a1 + 8328) + 8));
    v4 = *MEMORY[0x1E695E480];
    v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
    v6 = *(a1 + 9232);
    if (v6)
    {
      v7 = *(*(CMBaseObjectGetVTable() + 16) + 48);
      if (v7)
      {
        v7(v6, 0x1F0B64538, 0x1F0B65098, v5, 0);
      }
    }

    v8 = CFNumberCreate(v4, kCFNumberIntType, &AverageBitRate);
    v9 = *(a1 + 9232);
    if (v9)
    {
      v10 = *(*(CMBaseObjectGetVTable() + 16) + 48);
      if (v10)
      {
        v10(v9, 0x1F0B64538, 0x1F0B650B8, v8, 0);
      }

      v11 = *(a1 + 9232);
      if (v11)
      {
        v12 = *(*(CMBaseObjectGetVTable() + 16) + 56);
        if (v12)
        {
          v12(v11, 0x1F0B64538, 0x1F0B42358, AlternateIndex, 0);
        }
      }
    }

    if (v8)
    {
      CFRelease(v8);
    }

    if (v5)
    {
      CFRelease(v5);
    }
  }
}

void *segPumpFindCryptKeyCommonDataForRequestID(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  while (1)
  {
    Count = *(a1 + 7888);
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    if (v4 >= Count)
    {
      break;
    }

    result = CFArrayGetValueAtIndex(*(a1 + 7888), v4);
    if (result[11] != a2)
    {
      ++v4;
      if (result[16] != a2)
      {
        continue;
      }
    }

    return result;
  }

  return 0;
}

const void *segPumpFindSessionDataEntryForRequestID(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48))
  {
    v4 = 0;
    while (1)
    {
      SessionDataSpecifiers = FigMultivariantPlaylistGetSessionDataSpecifiers(*(a1 + 48));
      if (SessionDataSpecifiers)
      {
        SessionDataSpecifiers = CFArrayGetCount(SessionDataSpecifiers);
      }

      if (v4 >= SessionDataSpecifiers)
      {
        break;
      }

      v6 = FigMultivariantPlaylistGetSessionDataSpecifiers(*(a1 + 48));
      ValueAtIndex = CFArrayGetValueAtIndex(v6, v4++);
      if (*(segPumpEnsureAndGetSessionDataPrivateData(ValueAtIndex) + 3) == a2)
      {
        return ValueAtIndex;
      }
    }
  }

  return 0;
}

uint64_t segPumpSaveCryptKeyToCache(uint64_t a1, const void *a2)
{
  if (!*(a1 + 296))
  {
    segPumpSaveCryptKeyToCache_cold_2(&v7);
    return v7;
  }

  if (!*(a1 + 329))
  {
    segPumpSaveCryptKeyToCache_cold_1(&v7);
    return v7;
  }

  FigGetAllocatorForMedia();
  BlockBufferWithCFDataNoCopy = FigCreateBlockBufferWithCFDataNoCopy();
  if (BlockBufferWithCFDataNoCopy)
  {
    return BlockBufferWithCFDataNoCopy;
  }

  else
  {
    return FigStreamingCacheSetCryptKey(*(a1 + 296), a2, 0);
  }
}

uint64_t findConnectionFromMediaDownloadTimer(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v5 = a1[94];
  if (v5 < 1)
  {
LABEL_7:
    v9 = a1[97];
    if (v9 < 1)
    {
      return 0;
    }

    v6 = 0;
    while (1)
    {
      v10 = *(a1[96] + 8 * v6);
      if (v10)
      {
        if (*(v10 + 112) == a2 && *(v10 + 16))
        {
          break;
        }
      }

      if (v9 == ++v6)
      {
        return 0;
      }
    }

    *a3 = v10;
    v7 = a1[96];
  }

  else
  {
    v6 = 0;
    v7 = a1 + 87;
    while (1)
    {
      v8 = v7[v6];
      if (v8)
      {
        if (*(v8 + 112) == a2 && *(v8 + 16))
        {
          break;
        }
      }

      if (v5 == ++v6)
      {
        goto LABEL_7;
      }
    }

    *a3 = v8;
  }

  *a4 = v7;
  *a5 = v6;
  return 1;
}

void segPumpDispatchAsyncMediaDeliveryFunc(void *a1)
{
  v2 = a1[8];
  if (v2)
  {
    v2(*a1, a1[1], a1[2], a1[3], a1[4], a1[5], a1[7]);
  }

  FigRetainProxyRelease();
  v3 = a1[7];
  if (v3)
  {
    CFRelease(v3);
  }

  free(a1);
}

uint64_t segPumpCreateMapMediaBBuf()
{
  blockBufferOut = 0;
  segPumpCopyMapEntryFromCache();
  if (v0)
  {
    return v0;
  }

  segPumpCreateMapMediaBBuf_cold_1(&v4);
  return v4;
}

uint64_t FigCPEProtectorCreateCryptor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 104);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(a1, a2, 1, a3, a4);
}

void segPumpGetCryptorInfoFromBBuf(const void *a1, const __CFString *a2, void *a3, _DWORD *a4)
{
  *a4 = 0;
  v6 = CMGetAttachment(a1, a2, 0);
  *a3 = v6;
  if (v6)
  {
    v7 = v6;
    cf = 0;
    AllocatorForMedia = FigGetAllocatorForMedia();
    v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v9)
    {
      v10 = v9(v7, *MEMORY[0x1E69610E8], AllocatorForMedia, &cf);
      v11 = cf;
      if (!v10)
      {
        *a4 = FigCFNumberGetSInt64();
        v11 = cf;
      }

      if (v11)
      {
        CFRelease(v11);
      }
    }
  }
}

uint64_t segPumpMakeDataCallbackWithOSStatus(uint64_t a1, uint64_t *a2, const void *a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, unsigned int a10, uint64_t a11, _DWORD *a12)
{
  cf = 0;
  FigCreateErrorForOSStatus(a10, &cf);
  v22 = *a7;
  v23 = *(a7 + 16);
  DataCallback = segPumpMakeDataCallback(a1, a2, a3, a4, a5, a6, &v22, a8, a9, cf, a11, a12);
  if (cf)
  {
    CFRelease(cf);
  }

  return DataCallback;
}

uint64_t segPumpFindSavedEntry(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 360);
  if (v4)
  {
    while (*(v4 + 24) != a3 || *(v4 + 32) != a4 || !FigCFHTTPCompareURLs(a2, *(v4 + 8)))
    {
      v4 = *v4;
      if (!v4)
      {
        return v4;
      }
    }

    if (*(v4 + 80))
    {
      v10 = FigGetUpTimeNanoseconds() - *(v4 + 72);
      v11 = *(a1 + 8);
      v12 = *(a1 + 352) - v11;
      v13 = *(a1 + 8160) * v11;
      if (v12 > v13)
      {
        v13 = v12;
      }

      if (v10 >= 1000000000 * v13)
      {
        segPumpFreeSavedEntry(a1, v4);
        return 0;
      }
    }
  }

  return v4;
}

uint64_t segPumpRetrieveNextIFrame(uint64_t a1, uint64_t a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 392);
  v5 = *(a2 + 8904);
  v27 = 0.0;
  MediaEntryForTimeFromEnd = segPumpGetMediaEntryForTimeFromEnd(v4[7], 0, &v27, v5);
  v7 = 0;
  if (MediaEntryForTimeFromEnd)
  {
    while (1)
    {
      v8 = v27;
      v9 = *(a2 + 8968);
      if (v27 == v9)
      {
        goto LABEL_24;
      }

      if (v27 < v9)
      {
        v7 = MediaEntryForTimeFromEnd;
      }

      if (v8 + FigMediaSegmentSpecifierGetTimeInSeconds(MediaEntryForTimeFromEnd) > *(a2 + 8968))
      {
        break;
      }

      TimeInSeconds = FigMediaSegmentSpecifierGetTimeInSeconds(MediaEntryForTimeFromEnd);
      v27 = TimeInSeconds + v27;
      MediaEntryForTimeFromEnd = FigMediaSegmentSpecifierGetNextSegment(MediaEntryForTimeFromEnd);
      if (!MediaEntryForTimeFromEnd)
      {
        if (!v7)
        {
          goto LABEL_12;
        }

        goto LABEL_10;
      }
    }

    MediaEntryForTimeFromEnd = FigMediaSegmentSpecifierGetNextSegment(MediaEntryForTimeFromEnd);
    if (!v7)
    {
LABEL_12:
      if (MediaEntryForTimeFromEnd && v27 > *(a2 + 8984))
      {
        MediaEntryForTimeFromEnd = 0;
      }

      goto LABEL_15;
    }

LABEL_10:
    v11 = v27;
    if (v11 - FigMediaSegmentSpecifierGetTimeInSeconds(v7) < *(a2 + 8976))
    {
      v7 = 0;
    }

    goto LABEL_12;
  }

LABEL_15:
  v12 = *(a2 + 8960);
  if (v12 != 1)
  {
    if (v12 == 2)
    {
      v7 = MediaEntryForTimeFromEnd;
    }

    else if (MediaEntryForTimeFromEnd)
    {
      if (v7)
      {
        v13 = v27;
        v14 = v27 - *(a2 + 8968);
        if (v13 - FigMediaSegmentSpecifierGetTimeInSeconds(v7) - *(a2 + 8968) < v14)
        {
          MediaEntryForTimeFromEnd = v7;
        }
      }

      goto LABEL_24;
    }
  }

  MediaEntryForTimeFromEnd = v7;
  if (!v7)
  {
    segPumpRetrieveNextIFrame_cold_1(v28);
    return *v28;
  }

LABEL_24:
  if (FigMediaSegmentSpecifierGetMapSegmentSpecifier(MediaEntryForTimeFromEnd))
  {
    v28[0] = 0;
    MapSegmentSpecifier = FigMediaSegmentSpecifierGetMapSegmentSpecifier(MediaEntryForTimeFromEnd);
    result = segPumpIsMapEntryCached(a2, v4, MapSegmentSpecifier, v28);
    if (result)
    {
      return result;
    }

    if (!v28[0])
    {
      *(a2 + 8952) = 1;
    }
  }

  if (dword_1EAF16A30)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  ++v4[110];
  MediaFilePrivateData = segPumpGetMediaFilePrivateData(MediaEntryForTimeFromEnd);
  MediaFilePrivateData[6] = 0;
  MediaFilePrivateData[7] = 0;
  v19 = v4[32];
  if (v19)
  {
    CFRelease(v19);
    v4[32] = 0;
  }

  result = segPumpFetchOrDispatchMediaSegment(a1, a2, v4, MediaEntryForTimeFromEnd, 0, 0, 0);
  if (!result)
  {
    if (v4[31])
    {
      return 0;
    }

    else
    {
      result = FigMediaSegmentSpecifierGetContentKeySpecifier(MediaEntryForTimeFromEnd);
      if (result)
      {
        ContentKeySpecifier = FigMediaSegmentSpecifierGetContentKeySpecifier(MediaEntryForTimeFromEnd);
        result = segPumpDoesCryptKeyRequireFetch(ContentKeySpecifier);
        if (result)
        {
          v21 = v4[31];
          v22 = FigMediaSegmentSpecifierGetContentKeySpecifier(MediaEntryForTimeFromEnd);
          v4[31] = v22;
          if (v22)
          {
            CFRetain(v22);
          }

          if (v21)
          {
            CFRelease(v21);
          }

          return segPumpSendCryptKeyRequest(a1, a2, v4, v4[31], v23, v24, v25, v26);
        }
      }
    }
  }

  return result;
}

const void *segPumpGetMediaEntryForTimeFromEnd(uint64_t a1, int a2, void *a3, double a4)
{
  if (FigMediaPlaylistGetPlaylistActiveDurationSecs(a1) < a4)
  {
    FigMediaPlaylistGetMediaSegmentSpecifiers(a1);
    FirstValue = FigCFArrayGetFirstValue();
LABEL_11:
    ValueAtIndex = FirstValue;
    goto LABEL_12;
  }

  if (a4 <= 0.0)
  {
    FigMediaPlaylistGetMediaSegmentSpecifiers(a1);
    FirstValue = FigCFArrayGetLastValue();
    goto LABEL_11;
  }

  v9 = 0;
  v10 = FigMediaPlaylistGetPlaylistActiveDurationSecs(a1) - a4;
  v11 = 0.0;
  while (1)
  {
    MediaSegmentSpecifiers = FigMediaPlaylistGetMediaSegmentSpecifiers(a1);
    if (MediaSegmentSpecifiers)
    {
      MediaSegmentSpecifiers = CFArrayGetCount(MediaSegmentSpecifiers);
    }

    if (v9 >= MediaSegmentSpecifiers)
    {
      return 0;
    }

    v13 = FigMediaPlaylistGetMediaSegmentSpecifiers(a1);
    ValueAtIndex = CFArrayGetValueAtIndex(v13, v9);
    if (v11 + FigMediaSegmentSpecifierGetTimeInSeconds(ValueAtIndex) > v10)
    {
      break;
    }

    v11 = v11 + FigMediaSegmentSpecifierGetTimeInSeconds(ValueAtIndex);
    ++v9;
  }

  if (a2 && v11 < v10)
  {
    FirstValue = FigMediaSegmentSpecifierGetNextSegment(ValueAtIndex);
    goto LABEL_11;
  }

LABEL_12:
  if (a3 && ValueAtIndex)
  {
    *a3 = *(segPumpGetMediaFilePrivateData(ValueAtIndex) + 4);
  }

  return ValueAtIndex;
}

uint64_t segPumpIsMapEntryCached(uint64_t a1, uint64_t a2, const void *a3, char *a4)
{
  MediaFilePrivateData = segPumpGetMediaFilePrivateData(a3);
  if (MediaFilePrivateData[98])
  {
    v6 = 0;
    v7 = 1;
  }

  else
  {
    v9 = MediaFilePrivateData;
    segPumpCopyMapEntryFromCache();
    v6 = v10;
    v7 = 0;
    v9[98] = 0;
  }

  *a4 = v7;
  return v6;
}

double segPumpGetLiveBoundary(uint64_t a1, uint64_t a2)
{
  MinimumPrebufferReservation = segPumpGetMinimumPrebufferReservation(a1, a2);
  v4 = *(a1 + 8176);
  result = MinimumPrebufferReservation + v4;
  if (*(a1 + 8160) >= 2)
  {
    LODWORD(v4) = *(a1 + 8);
    v6 = *&v4;
    if (result > v6)
    {
      result = result - v6;
    }
  }

  v7 = *(a1 + 8168);
  if (v7 > 0.0 && (v7 > result || *(a1 + 336)))
  {
    v8 = *(a1 + 16);
    if (v8 <= 0.0)
    {
      LODWORD(v8) = *(a1 + 8);
      v8 = *&v8;
    }

    return v7 - v8;
  }

  return result;
}

void segPumpSetContentSteeringMonitor(uint64_t a1, CFTypeRef cf)
{
  v2 = *(a1 + 9752);
  *(a1 + 9752) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v2)
  {

    CFRelease(v2);
  }
}

double segPumpSetExtraHoldbackFromClient(uint64_t a1, double a2)
{
  MinimumPrebufferReservation = segPumpGetMinimumPrebufferReservation(a1, 0);
  if (MinimumPrebufferReservation > a2)
  {
    segPumpSetExtraHoldbackFromClient_cold_1();
    a2 = MinimumPrebufferReservation;
  }

  result = a2 - MinimumPrebufferReservation;
  *(a1 + 8176) = a2 - MinimumPrebufferReservation;
  return result;
}

uint64_t segPumpAPIUnlockAndSendNotificationThenCheckAPIStatus(const void *a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = segPumpAPICheckStatus(DerivedStorage, a2);
  segPumpUnlockAndSendAllPendingNotifications();
  if (!v5)
  {
    if (!FigRetainProxyIsInvalidated())
    {
      CFRelease(a1);
      return 0;
    }

    segPumpAPIUnlockAndSendNotificationThenCheckAPIStatus_cold_1(&v7);
    v5 = v7;
  }

  CFRelease(a1);
  if (v5 == -15626)
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

uint64_t segPumpStreamSyncTimeRolledPast(uint64_t a1, double a2, double a3)
{
  v4 = a3 - (*(a1 + 88) + a2);
  result = FigMediaPlaylistGetTargetDuration(*(a1 + 56));
  if (v4 >= result * -3.0)
  {
    result = FigMediaPlaylistGetTargetDuration(*(a1 + 56));
    if (v4 <= result * 3.0)
    {
      v6 = v4 + *(a1 + 88);
      *(a1 + 88) = v6;
      if (fabs(v4) > 2.22044605e-16)
      {
        v7 = *(a1 + 56);

        return segPumpPlaylistRecalculatePumpTimeOffsets(v7, v6);
      }
    }
  }

  return result;
}

double segPumpGetEstIndependentInterval(uint64_t a1)
{
  v2 = *(a1 + 392);
  v3 = *(v2 + 56);
  if (!v3)
  {
    return 0.0;
  }

  v5 = 0.0;
  if (FigMediaPlaylistHasIndependentSegments(v3))
  {
    LODWORD(v4) = *(a1 + 8);
    v5 = v4;
  }

  v6 = 0;
  v7 = -1;
  v8 = 0.0;
  v9 = 0.0;
  while (1)
  {
    MediaSegmentSpecifiers = FigMediaPlaylistGetMediaSegmentSpecifiers(*(v2 + 56));
    if (MediaSegmentSpecifiers)
    {
      MediaSegmentSpecifiers = CFArrayGetCount(MediaSegmentSpecifiers);
    }

    if (v6 >= MediaSegmentSpecifiers)
    {
      break;
    }

    v11 = FigMediaPlaylistGetMediaSegmentSpecifiers(*(v2 + 56));
    ValueAtIndex = CFArrayGetValueAtIndex(v11, v6);
    PartialSegments = FigMediaSegmentSpecifierGetPartialSegments(ValueAtIndex);
    v14 = 0;
    if (PartialSegments)
    {
LABEL_9:
      Count = CFArrayGetCount(PartialSegments);
      goto LABEL_11;
    }

    while (1)
    {
      Count = 0;
LABEL_11:
      if (v14 >= Count)
      {
        break;
      }

      v16 = CFArrayGetValueAtIndex(PartialSegments, v14);
      if (FigMediaSegmentSpecifierIsMarkedIndependent(v16))
      {
        v9 = 0.0;
        ++v7;
      }

      if ((v7 & 0x80000000) == 0)
      {
        v8 = v8 + FigMediaSegmentSpecifierGetTimeInSeconds(v16);
        v9 = v9 + FigMediaSegmentSpecifierGetTimeInSeconds(v16);
      }

      ++v14;
      if (PartialSegments)
      {
        goto LABEL_9;
      }
    }

    ++v6;
  }

  if (v7 > 0)
  {
    return (v8 - v9) / v7;
  }

  return v5;
}

uint64_t FigHTTPRequestSessionSendPingWithPongHandler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v10)
  {
    return 4294954514;
  }

  return v10(a1, a2, a3, segPumpPongCallback, a4, 0, a5);
}

BOOL segPumpStreamHasActiveMediaRequest(uint64_t a1)
{
  v1 = *(a1 + 696);
  if (v1 && (*(v1 + 32) || *(v1 + 104)))
  {
    return 1;
  }

  v2 = **(a1 + 768);
  if (!v2)
  {
    return 0;
  }

  if (*(v2 + 32))
  {
    return 1;
  }

  return *(v2 + 104) != 0;
}

uint64_t segPumpPlaylistGetImputedLiveEdgeDate(uint64_t a1, double *a2)
{
  FigMediaPlaylistGetMediaSegmentSpecifiers(*(a1 + 56));
  LastValue = FigCFArrayGetLastValue();
  if (LastValue)
  {
    v4 = LastValue;
    PartialSegments = FigMediaSegmentSpecifierGetPartialSegments(LastValue);
    if (PartialSegments && CFArrayGetCount(PartialSegments) >= 1)
    {
      FigMediaSegmentSpecifierGetPartialSegments(v4);
      v6 = FigCFArrayGetLastValue();
      v4 = v6;
    }

    else
    {
      v6 = v4;
    }

    ImputedDate = FigMediaSegmentSpecifierGetImputedDate(v6);
    TimeInSeconds = FigMediaSegmentSpecifierGetTimeInSeconds(v4);
    result = 0;
    *a2 = ImputedDate + TimeInSeconds;
  }

  else
  {
    segPumpPlaylistGetImputedLiveEdgeDate_cold_1(&v10);
    return v10;
  }

  return result;
}

uint64_t segPumpConnectionGetPendingMediaDeadline(uint64_t *a1)
{
  if (!a1[4] || !a1[1])
  {
    return 0;
  }

  v1 = a1[5];
  return v1 + (FigMediaSegmentSpecifierGetTimeInSeconds(a1[1]) * 1000000000.0);
}

uint64_t segPumpTryIFrameFetch(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8897))
  {
    *(a2 + 8897) = 0;
    Step = segPumpDoNextStep(a1, a2);
    if (Step)
    {
      return segPumpMakeDataCallbackWithOSStatus(a1, *(a2 + 392), *(a2 + 176), 0, 0x20u, *(*(a2 + 392) + 304), MEMORY[0x1E6960C70], 0, 0, Step, 0, 0);
    }
  }

  else if (*(a2 + 8952))
  {
    *(a2 + 8952) = 0;
    Step = segPumpRetrieveNextIFrame(a1, a2);
    if (Step)
    {
      return segPumpMakeDataCallbackWithOSStatus(a1, *(a2 + 392), *(a2 + 176), 0, 0x20u, *(*(a2 + 392) + 304), MEMORY[0x1E6960C70], 0, 0, Step, 0, 0);
    }
  }

  return 0;
}

uint64_t segPumpTryToMatchDate(uint64_t a1, uint64_t a2, double *a3, double *a4, double *a5, CFAbsoluteTime a6, double a7)
{
  v41[29] = *MEMORY[0x1E69E9840];
  v41[0] = 0;
  v39 = 0;
  AllocatorForMedia = FigGetAllocatorForMedia();
  v15 = CFDateCreate(AllocatorForMedia, a6);
  *a5 = 0.0;
  v40 = 0;
  v16 = 0.0;
  if (FigMediaPlaylistUtilityIterateMedia(a2, &v40, &v39, v41))
  {
    v17 = -1.79769313e308;
    while (1)
    {
      v18 = v39;
      FigMediaSegmentSpecifierGetPartialSegments(v40);
      if (v18 == FigCFArrayGetFirstValue() && FigMediaSegmentSpecifierGetDateStamp(v40))
      {
        DateStamp = FigMediaSegmentSpecifierGetDateStamp(v40);
        v16 = MEMORY[0x19A8CCD90](DateStamp);
      }

      if (v16 != 0.0)
      {
        if (v17 == -1.79769313e308)
        {
          v17 = v16;
        }

        if (v16 <= a6 && v16 + FigMediaSegmentSpecifierGetTimeInSeconds(v41[0]) > a6)
        {
          goto LABEL_15;
        }

        v16 = v16 + FigMediaSegmentSpecifierGetTimeInSeconds(v41[0]);
      }

      if (!FigMediaPlaylistUtilityIterateMedia(a2, &v40, &v39, v41))
      {
        goto LABEL_15;
      }
    }
  }

  v17 = -1.79769313e308;
LABEL_15:
  if (v41[0])
  {
    v20 = *(segPumpGetMediaFilePrivateData(v41[0]) + 4);
    FigMediaPlaylistGetMediaSegmentSpecifiers(a2);
    FirstValue = FigCFArrayGetFirstValue();
    PlaylistActiveDurationSecs = v20 - *(segPumpGetMediaFilePrivateData(FirstValue) + 4);
  }

  else
  {
    PlaylistActiveDurationSecs = FigMediaPlaylistGetPlaylistActiveDurationSecs(a2);
  }

  if (v41[0])
  {
    v23 = FigGetAllocatorForMedia();
    v24 = CFDateCreate(v23, v16);
    v25 = 3 * *(a1 + 8);
    if (PlaylistActiveDurationSecs <= a7 - v25 || PlaylistActiveDurationSecs >= v25 + a7)
    {
      if (dword_1EAF16A30)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v41[0] = 0;
      v32 = 0.0;
      v37 = -1;
      PlaylistActiveDurationSecs = 0.0;
      if (!v24)
      {
        goto LABEL_43;
      }

LABEL_40:
      CFRelease(v24);
      if (!v15)
      {
        goto LABEL_45;
      }

LABEL_44:
      CFRelease(v15);
      goto LABEL_45;
    }

    v32 = v16 + FigMediaSegmentSpecifierGetTimeInSeconds(v41[0]) - a6;
    if (dword_1EAF16A30)
    {
      v33 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v37 = 0;
    PlaylistActiveDurationSecs = PlaylistActiveDurationSecs + FigMediaSegmentSpecifierGetTimeInSeconds(v41[0]) - v32;
    if (v24)
    {
      goto LABEL_40;
    }

LABEL_43:
    if (!v15)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

  v28 = *(a1 + 16);
  if (v28 <= 0.0)
  {
    LODWORD(v28) = *(a1 + 8);
    v28 = *&v28;
  }

  if (v16 <= v28 + a6 + 2.22044605e-16)
  {
    v32 = 0.0;
    if (dword_1EAF16A30)
    {
      v34 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v37 = 0;
    goto LABEL_43;
  }

  v29 = FigGetAllocatorForMedia();
  if (v17 <= a6)
  {
    v35 = CFDateCreate(v29, v16);
    if (dword_1EAF16A30)
    {
      v36 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v32 = 0.0;
    if (v35)
    {
      CFRelease(v35);
    }

    v37 = 1;
  }

  else
  {
    v30 = CFDateCreate(v29, v17);
    if (dword_1EAF16A30)
    {
      v31 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    *a5 = v17 - a6;
    v32 = 0.0;
    if (v30)
    {
      CFRelease(v30);
    }

    v37 = -1;
  }

  PlaylistActiveDurationSecs = 0.0;
  if (v15)
  {
    goto LABEL_44;
  }

LABEL_45:
  if (!v37)
  {
    *a3 = PlaylistActiveDurationSecs;
    *a4 = v32;
  }

  return v37;
}

uint64_t segPumpGetLastDiscAndDateForTimeReadInPlaylist(uint64_t a1, double *a2, double *a3, double a4)
{
  v24 = 0;
  v25 = 0;
  if (a1)
  {
    v23 = 0;
    if (FigMediaPlaylistUtilityIterateMedia(a1, &v23, &v24, &v25))
    {
      v8 = 0.0;
      v9 = 0.0;
      v10 = 0.0;
      while (1)
      {
        MediaFilePrivateData = segPumpGetMediaFilePrivateData(v25);
        v12 = v24;
        FigMediaSegmentSpecifierGetPartialSegments(v23);
        if (v12 == FigCFArrayGetFirstValue() && FigMediaSegmentSpecifierGetDateStamp(v23))
        {
          DateStamp = FigMediaSegmentSpecifierGetDateStamp(v23);
          v8 = MEMORY[0x19A8CCD90](DateStamp);
        }

        if (FigMediaSegmentSpecifierIsDiscontinuity(v25) && MediaFilePrivateData[74])
        {
          v9 = v10 + FigMediaSegmentSpecifierGetTimeInSeconds(v25) * 0.5;
        }

        if (v10 + FigMediaSegmentSpecifierGetTimeInSeconds(v25) > a4)
        {
          break;
        }

        TimeInSeconds = FigMediaSegmentSpecifierGetTimeInSeconds(v25);
        if (v8 != 0.0)
        {
          v8 = v8 + FigMediaSegmentSpecifierGetTimeInSeconds(v25);
        }

        v10 = v10 + TimeInSeconds;
        if (!FigMediaPlaylistUtilityIterateMedia(a1, &v23, &v24, &v25))
        {
          goto LABEL_31;
        }
      }

      v15 = a4 - v10;
      if (v8 == 0.0)
      {
        v27 = 0;
        v28 = 0;
        v26 = 0;
        if (FigMediaPlaylistUtilityIterateMedia(a1, &v26, &v27, &v28))
        {
          v16 = 0.0;
          while (1)
          {
            v17 = v27;
            FigMediaSegmentSpecifierGetPartialSegments(v26);
            if (v17 == FigCFArrayGetFirstValue())
            {
              if (FigMediaSegmentSpecifierGetDateStamp(v26))
              {
                break;
              }
            }

            v16 = v16 + FigMediaSegmentSpecifierGetTimeInSeconds(v28);
            if (!FigMediaPlaylistUtilityIterateMedia(a1, &v26, &v27, &v28))
            {
              goto LABEL_22;
            }
          }

          v18 = FigMediaSegmentSpecifierGetDateStamp(v26);
          v19 = MEMORY[0x19A8CCD90](v18) - v16;
          if (v19 == 0.0)
          {
            v8 = v19;
          }

          else
          {
            v8 = v10 + v15 + v19;
          }
        }

        else
        {
LABEL_22:
          v8 = 0.0;
        }
      }

      else
      {
        v8 = v15 + v8;
      }

      AllocatorForMedia = FigGetAllocatorForMedia();
      v21 = CFDateCreate(AllocatorForMedia, v8);
      if (v9 >= a4 + 2.0)
      {
        v9 = a4 + 2.0;
      }

      if (v21)
      {
        CFRelease(v21);
      }
    }

    else
    {
      v9 = 0.0;
      v8 = 0.0;
    }

LABEL_31:
    if (a2)
    {
      *a2 = v9;
    }

    result = 0;
    if (a3)
    {
      *a3 = v8;
    }
  }

  else
  {
    segPumpGetLastDiscAndDateForTimeReadInPlaylist_cold_1(&v28);
    return v28;
  }

  return result;
}

void segPumpClearSuggestedAlternate(void *a1, int a2)
{
  if (a1[1051])
  {
    if (a1[1220])
    {
      v3 = a1[1216];
      if (v3)
      {
        FigAlternateSelectionBossRemoveFilter(v3, @"PartialCache");
        if (a2)
        {
          FigAlternateSelectionBossApplyFilters(a1[1216]);
        }
      }
    }
  }

  v5 = a1[1052];
  if (v5)
  {
    CFRelease(v5);
    a1[1052] = 0;
  }

  v6 = a1[1051];
  if (v6)
  {
    CFRelease(v6);
    a1[1051] = 0;
  }
}

const __CFArray *segPumpResetAllMediaFilePrivateDataForStream(uint64_t a1)
{
  result = *(a1 + 56);
  if (result)
  {
    for (i = 0; ; ++i)
    {
      MediaSegmentSpecifiers = FigMediaPlaylistGetMediaSegmentSpecifiers(result);
      if (MediaSegmentSpecifiers)
      {
        MediaSegmentSpecifiers = CFArrayGetCount(MediaSegmentSpecifiers);
      }

      if (i >= MediaSegmentSpecifiers)
      {
        break;
      }

      v5 = FigMediaPlaylistGetMediaSegmentSpecifiers(*(a1 + 56));
      ValueAtIndex = CFArrayGetValueAtIndex(v5, i);
      MediaFilePrivateData = segPumpGetMediaFilePrivateData(ValueAtIndex);
      if (!MediaFilePrivateData[96])
      {
        *(MediaFilePrivateData + 6) = 0;
        *(MediaFilePrivateData + 7) = 0;
        *(MediaFilePrivateData + 71) = 0;
        *(MediaFilePrivateData + 8) = 0;
        *(MediaFilePrivateData + 14) = 0;
        *(MediaFilePrivateData + 15) = 0;
        PartialSegments = FigMediaSegmentSpecifierGetPartialSegments(ValueAtIndex);
        v9 = 0;
        if (PartialSegments)
        {
LABEL_9:
          Count = CFArrayGetCount(PartialSegments);
          goto LABEL_11;
        }

        while (1)
        {
          Count = 0;
LABEL_11:
          if (v9 >= Count)
          {
            break;
          }

          v11 = CFArrayGetValueAtIndex(PartialSegments, v9);
          v12 = segPumpGetMediaFilePrivateData(v11);
          *(v12 + 7) = 0;
          *(v12 + 8) = 0;
          *(v12 + 6) = 0;
          *(v12 + 71) = 0;
          ++v9;
          *(v12 + 14) = 0;
          *(v12 + 15) = 0;
          if (PartialSegments)
          {
            goto LABEL_9;
          }
        }
      }

      result = *(a1 + 56);
    }

    for (j = 0; ; ++j)
    {
      result = FigMediaPlaylistGetMapSegmentSpecifiers(*(a1 + 56));
      if (result)
      {
        result = CFArrayGetCount(result);
      }

      if (j >= result)
      {
        break;
      }

      MapSegmentSpecifiers = FigMediaPlaylistGetMapSegmentSpecifiers(*(a1 + 56));
      v15 = CFArrayGetValueAtIndex(MapSegmentSpecifiers, j);
      v16 = segPumpGetMediaFilePrivateData(v15);
      if (!v16[96])
      {
        *(v16 + 6) = 0;
        *(v16 + 7) = 0;
        *(v16 + 71) = 0;
        *(v16 + 8) = 0;
        *(v16 + 14) = 0;
        *(v16 + 15) = 0;
      }
    }
  }

  return result;
}

void *segPumpGetAlternateEntryFromURLForCacheLookup(uint64_t a1, const void *a2, uint64_t a3)
{
  v3 = *(a1 + 8280);
  if (v3)
  {
    while (1)
    {
      v9 = 0;
      v10 = 0;
      FigAlternateGetRenditionInfoForMediaType(v3[1], 1986618469, *(a1 + 8576), *(a1 + 8584), *(a1 + 8592), 1, &v9, 0, &v10);
      v7 = FigCFHTTPCreateURLString(v10);
      if (CFEqual(v7, a2) || a3 && FigCFEqual())
      {
        break;
      }

      if (v7)
      {
        CFRelease(v7);
      }

      v3 = *v3;
      if (!v3)
      {
        return v3;
      }
    }

    if (v7)
    {
      CFRelease(v7);
    }
  }

  return v3;
}

void segPumpCryptKeyPrivateDataFinalize(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
    a1[2] = 0;
  }

  v3 = a1[4];
  if (v3)
  {
    CFRelease(v3);
    a1[4] = 0;
  }

  v4 = a1[3];
  if (v4)
  {
    FigCryptDispose(v4);
    a1[3] = 0;
  }

  v5 = a1[5];
  if (v5)
  {
    CFRelease(v5);
    a1[5] = 0;
  }
}

void segPumpKeyRequestDidUpdateContentKeyBossToNewBoss(const void *a1)
{
  if (_os_feature_enabled_impl())
  {
    if (!segPumpLockAndCopyPumpFromRetainProxy())
    {
      if (dword_1EAF16A30)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v3 = MEMORY[0x25D0];
      MEMORY[0x25D0] = a1;
      if (a1)
      {
        CFRetain(a1);
      }

      if (v3)
      {
        CFRelease(v3);
      }
    }

    segPumpUnlockAndSendAllPendingNotifications();
  }
}

uint64_t FigContentKeySessionCopyCryptor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(a1, a2, a3, 1, a4);
}

uint64_t segPumpGetStreamFromCryptHTTPRequest(void *a1, uint64_t a2, int a3)
{
  result = a1[49];
  if (*(result + 560) != a2 || *(result + 624) != a3)
  {
    result = a1[51];
    if (*(result + 560) != a2 || *(result + 624) != a3)
    {
      result = a1[53];
      if (*(result + 560) != a2 || *(result + 624) != a3)
      {
        result = a1[50];
        if (*(result + 560) != a2 || *(result + 624) != a3)
        {
          result = a1[52];
          if (*(result + 560) != a2 || *(result + 624) != a3)
          {
            v5 = a1[54];
            if (*(v5 + 560) == a2)
            {
              if (*(v5 + 624) == a3)
              {
                return v5;
              }

              else
              {
                return 0;
              }
            }

            else
            {
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t segPumpIsCryptorReadyToDecrypt(uint64_t a1)
{
  v2 = *MEMORY[0x1E695E4C0];
  cf = *MEMORY[0x1E695E4C0];
  AllocatorForMedia = FigGetAllocatorForMedia();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v4)
  {
    v7 = 0;
    if (!v2)
    {
      return v7;
    }

LABEL_11:
    CFRelease(v2);
    return v7;
  }

  v5 = v4(a1, *MEMORY[0x1E6961118], AllocatorForMedia, &cf);
  v2 = cf;
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = *MEMORY[0x1E695E4D0] == cf;
  }

  v7 = v6;
  if (cf)
  {
    goto LABEL_11;
  }

  return v7;
}

uint64_t *segPumpGetBytesInTransit(uint64_t *result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    if (result[4] || result[13])
    {
      result = result[1];
      if (!result)
      {
        return result;
      }

      if (!*(segPumpGetMediaFilePrivateData(result) + 73))
      {
        v4 = v3[32];
        if (v4)
        {
          return (v4 - v3[28]);
        }

        if (a2)
        {
          ExpectedAverageBitrate = FigAlternateGetExpectedAverageBitrate(*(a2 + 8));
          return (FigMediaSegmentSpecifierGetTimeInSeconds(v3[1]) * ExpectedAverageBitrate * 0.125);
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t segPumpSetAlternatesInPenaltyBox(uint64_t a1, const __CFArray *cf)
{
  if (*(a1 + 8360))
  {
    if (cf && (v4 = CFGetTypeID(cf), v4 == CFArrayGetTypeID()))
    {
      Count = CFArrayGetCount(cf);
      v6 = *(a1 + 8328);
      if (v6 && (v18.location = 0, v18.length = Count, CFArrayContainsValue(cf, v18, *(v6 + 8))))
      {
        segPumpSetAlternatesInPenaltyBox_cold_1(&v15);
        return v15;
      }

      else
      {
        v7 = *(a1 + 8296);
        if (v7)
        {
          do
          {
            v8 = *v7;
            v19.location = 0;
            v19.length = Count;
            if (!CFArrayContainsValue(cf, v19, v7[1]))
            {
              MoveAlternateFromPenaltyBox();
            }

            v7 = v8;
          }

          while (v8);
        }

        v9 = *(a1 + 8280);
        if (v9)
        {
          do
          {
            v10 = *v9;
            v20.location = 0;
            v20.length = Count;
            if (CFArrayContainsValue(cf, v20, v9[1]))
            {
              CurrentErrorCategory = FigAlternateGetCurrentErrorCategory(v9[1]);
              v12 = CurrentErrorCategory;
              v13 = (CurrentErrorCategory >> 2) & 1;
              FigAlternateSetErrorCategory(v9[1], 0);
              MoveAlternateFromListWithNoNotification(a1, (a1 + 8280), v9, v13, v12 & 1);
            }

            v9 = v10;
          }

          while (v10);
        }

        return 0;
      }
    }

    else
    {
      segPumpSetAlternatesInPenaltyBox_cold_2(&v16);
      return v16;
    }
  }

  else
  {
    segPumpSetAlternatesInPenaltyBox_cold_3(&v17);
    return v17;
  }
}

uint64_t segPumpSetMetricEventTimeline(uint64_t a1, CFTypeRef cf)
{
  v4 = *(a1 + 9200);
  *(a1 + 9200) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  v5 = 0;
  if (cf)
  {
    v6 = *(a1 + 9208);
    if (v6)
    {
      segPumpSetMetricEventTimeline_cold_1(v6, (a1 + 9208), a1 + 9200, &v8);
      return v8;
    }
  }

  return v5;
}

void segPumpCalculateStreamDurationAndBytesCached(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Seconds = 0.0;
  if (*(a3 + 12))
  {
    v6 = *a3;
    Seconds = CMTimeGetSeconds(&v6);
  }

  if (*(a1 + 330))
  {
    if (!*(a1 + 9834))
    {
      FigStreamingCacheGetMediaStreamDurationAndBytesInCacheAtTime(*(a1 + 296), *(a2 + 32), *a2, (a2 + 1224), (a2 + 1232), Seconds);
    }
  }
}

uint64_t segPumpStreamNeedsMore(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 870) = 0;
  if (!*(a3 + 869) && !*(a3 + 1185))
  {
    return 0;
  }

  *(a3 + 869) = 0;
  *(a3 + 1185) = 0;
  if (!*(a2 + 8868) || !*(a3 + 16))
  {
    return 0;
  }

  if (dword_1EAF16A30)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v8 = *(a3 + 56);
  if (v8)
  {
    v9 = *(a3 + 1056);
    v10 = *(a2 + 8);
    if (!FigMediaPlaylistHasEndTag(v8) && (FigGetUpTimeNanoseconds() >= v9 + 1000000000 * v10 || *(a3 + 1184)))
    {
      return segPumpReadOrScheduleIndexFileRead();
    }
  }

  result = segPumpDeliverNextMediaForSingleStream(a1, a2, a3);
  if (!result)
  {
    return segPumpReadOrScheduleIndexFileRead();
  }

  return result;
}

void segPumpGetLastKnownContinuousDateInPlaylist(uint64_t a1, double *a2, double a3)
{
  v13 = 0;
  v14 = 0;
  if (!a1)
  {
    segPumpGetLastKnownContinuousDateInPlaylist_cold_1();
    return;
  }

  v12 = 0;
  if (!FigMediaPlaylistUtilityIterateMedia(a1, &v12, &v13, &v14))
  {
    v7 = 0.0;
    if (a2)
    {
      goto LABEL_20;
    }

    return;
  }

  v6 = 0.0;
  v7 = 0.0;
  while (1)
  {
    DateStamp = FigMediaSegmentSpecifierGetDateStamp(v12);
    TimeInSeconds = FigMediaSegmentSpecifierGetTimeInSeconds(v14);
    v10 = v13;
    FigMediaSegmentSpecifierGetPartialSegments(v12);
    v11 = v10 != FigCFArrayGetFirstValue() || DateStamp == 0;
    if (!v11 && MEMORY[0x19A8CCD90](DateStamp) != 0.0)
    {
      v6 = MEMORY[0x19A8CCD90](DateStamp);
    }

    if (v6 == 0.0)
    {
      goto LABEL_16;
    }

    if (v6 >= a3)
    {
      break;
    }

    v6 = TimeInSeconds + v6;
LABEL_16:
    if (!FigMediaPlaylistUtilityIterateMedia(a1, &v12, &v13, &v14))
    {
      goto LABEL_17;
    }
  }

  if (v7 == 0.0 || vabdd_f64(v6, v7) < 0.1)
  {
    v7 = TimeInSeconds + v6;
    v6 = TimeInSeconds + v6;
    goto LABEL_16;
  }

LABEL_17:
  if (!a2)
  {
    return;
  }

LABEL_20:
  *a2 = v7;
}

uint64_t segPumpGetRequiredBandwidthForCurrentStreamingAlternate(uint64_t result)
{
  v1 = result;
  if (!*(result + 8328))
  {
    goto LABEL_6;
  }

  if (!*(result + 296))
  {
    return segPumpStreamBitRateRequiredForStream(v1, *(v1 + 392));
  }

  result = FigAlternateGetLastKnownValueForIsFullyCached();
  if (result)
  {
    return result;
  }

  if (*(v1 + 8328))
  {
    return segPumpStreamBitRateRequiredForStream(v1, *(v1 + 392));
  }

LABEL_6:
  v2 = 0;
  v3 = 0;
  do
  {
    v4 = *(v1 + 392 + v2);
    if (*(v4 + 16))
    {
      v5 = *(v4 + 1100);
      if (!v5)
      {
        return result;
      }

      v3 += v5;
    }

    v2 += 16;
  }

  while (v2 != 48);
  return result;
}

double *segPumpGetStartupRequirements(double *result, unsigned int a2, double *a3, double *a4, double *a5, double *a6, double *a7, double a8)
{
  if (a2 >= 0xF)
  {
    v8 = 15;
  }

  else
  {
    v8 = a2;
  }

  v9 = result[1031] * v8;
  v10 = result[2];
  v11 = v9;
  if (v10 >= 0.0)
  {
    v12 = result[1021];
    v13 = v10 + v10;
    if (v13 >= v12)
    {
      v13 = result[1021];
    }

    if (v12 >= 0.0)
    {
      v11 = v13;
    }

    else
    {
      v11 = result[1031] * v8;
    }
  }

  v14 = result[1032] * v8;
  if (v14 < 1.0)
  {
    v14 = 1.0;
  }

  if (v14 > v9)
  {
    v14 = result[1031] * v8;
  }

  if (a3)
  {
    *a3 = a8;
  }

  if (a4)
  {
    v15 = result[1111];
    v16 = result[1033] * a8 * v15;
    v17 = result[1034];
    v18 = v17 + a8 * v15;
    if (v16 < v18)
    {
      v18 = v16;
    }

    if (v17 == 0.0)
    {
      v18 = v16;
    }

    *a4 = v18;
  }

  if (a5)
  {
    *a5 = v9;
  }

  if (a6)
  {
    *a6 = v14;
  }

  if (a7)
  {
    *a7 = v11;
  }

  return result;
}

double segPumpGetLocalBitrateForSubStream(uint64_t a1, uint64_t a2, uint64_t a3, CMTime *a4, _OWORD *a5)
{
  v9 = *(a1 + 392 + 16 * a2 + 8);
  if (!*(v9 + 16))
  {
    v9 = *(a1 + 392 + 16 * a2);
  }

  v40 = *MEMORY[0x1E6960C70];
  *&v46.value = *MEMORY[0x1E6960C70];
  v10 = *(MEMORY[0x1E6960C70] + 16);
  v46.epoch = v10;
  v11 = *(v9 + 56);
  v12 = -1.0;
  v13 = 0.0;
  if (v11)
  {
    MediaSegmentSpecifiers = FigMediaPlaylistGetMediaSegmentSpecifiers(v11);
    if (MediaSegmentSpecifiers)
    {
      if (CFArrayGetCount(MediaSegmentSpecifiers) >= 1)
      {
        *&time.start.value = *a3;
        time.start.epoch = *(a3 + 16);
        Seconds = CMTimeGetSeconds(&time.start);
        *&time.start.value = *(a3 + 24);
        time.start.epoch = *(a3 + 40);
        v16 = CMTimeGetSeconds(&time.start);
        v17 = 0;
        while (1)
        {
          Count = FigMediaPlaylistGetMediaSegmentSpecifiers(*(v9 + 56));
          if (Count)
          {
            Count = CFArrayGetCount(Count);
          }

          if (v17 >= Count)
          {
            break;
          }

          v19 = FigMediaPlaylistGetMediaSegmentSpecifiers(*(v9 + 56));
          ValueAtIndex = CFArrayGetValueAtIndex(v19, v17);
          MediaFilePrivateData = segPumpGetMediaFilePrivateData(ValueAtIndex);
          v22 = MediaFilePrivateData[4];
          ++v17;
          if (v22 + FigMediaSegmentSpecifierGetTimeInSeconds(ValueAtIndex) > Seconds)
          {
            v23 = MediaFilePrivateData[4];
            TimeInSeconds = FigMediaSegmentSpecifierGetTimeInSeconds(ValueAtIndex);
            CMTimeMakeWithSeconds(&v46, v23 + TimeInSeconds + 0.001, 1000);
            if (ValueAtIndex)
            {
              v25 = v16 + Seconds - v23;
              if (v25 > 0.0)
              {
                v12 = -1.0;
                do
                {
                  v26 = 0;
                  v27 = 0.0;
                  NextSegment = ValueAtIndex;
                  do
                  {
                    v29 = FigMediaSegmentSpecifierGetTimeInSeconds(NextSegment);
                    if (FigMediaSegmentSpecifierGetBitRate(NextSegment) <= 0.0)
                    {
                      v32 = 8 * *(segPumpGetMediaFilePrivateData(NextSegment) + 5);
                    }

                    else
                    {
                      BitRate = FigMediaSegmentSpecifierGetBitRate(NextSegment);
                      v31 = BitRate * FigMediaSegmentSpecifierGetTimeInSeconds(NextSegment);
                      v32 = v31;
                    }

                    v27 = v27 + v29;
                    LODWORD(v31) = *(a1 + 8);
                    v33 = *&v31;
                    if (v27 > v33 * 1.5 + 0.5)
                    {
                      break;
                    }

                    v26 += v32;
                    if (v27 >= v33 * 0.5 && v12 <= v26 / v27)
                    {
                      v12 = v26 / v27;
                    }

                    NextSegment = FigMediaSegmentSpecifierGetNextSegment(NextSegment);
                  }

                  while (NextSegment);
                  v34 = ValueAtIndex[4];
                  v35 = FigMediaSegmentSpecifierGetTimeInSeconds(ValueAtIndex);
                  v36 = FigMediaSegmentSpecifierGetTimeInSeconds(ValueAtIndex);
                  v37 = FigMediaSegmentSpecifierGetNextSegment(ValueAtIndex);
                  if (!v37)
                  {
                    break;
                  }

                  ValueAtIndex = v37;
                  v25 = v25 - v36;
                }

                while (v25 > 0.0);
                v13 = v34 + v35;
              }
            }

            goto LABEL_27;
          }
        }
      }
    }
  }

  v23 = 0.0;
LABEL_27:
  if (a4)
  {
    *a4 = v46;
  }

  if (a5)
  {
    memset(&v45, 0, sizeof(v45));
    CMTimeMakeWithSeconds(&v45, v23, 1000);
    memset(&v44, 0, sizeof(v44));
    if (v23 >= v13)
    {
      *&v44.value = v40;
      v44.epoch = v10;
    }

    else
    {
      CMTimeMakeWithSeconds(&v44, v13 - v23, 1000);
    }

    start = v45;
    duration = v44;
    CMTimeRangeMake(&time, &start, &duration);
    v38 = *&time.start.epoch;
    *a5 = *&time.start.value;
    a5[1] = v38;
    a5[2] = *&time.duration.timescale;
  }

  return v12;
}

const __CFArray *segPumpStreamSnapToSegmentBoundary@<X0>(uint64_t a1@<X0>, CMTime *a2@<X1>, uint64_t a3@<X2>, CMTime *a4@<X8>)
{
  v7 = MEMORY[0x1E6960C70];
  v19 = *MEMORY[0x1E6960C70];
  *&a4->value = *MEMORY[0x1E6960C70];
  v8 = *(v7 + 16);
  a4->epoch = v8;
  time = *a2;
  Seconds = CMTimeGetSeconds(&time);
  *(a3 + 16) = v8;
  *a3 = v19;
  result = *(a1 + 56);
  if (result)
  {
    for (i = 0; ; ++i)
    {
      result = FigMediaPlaylistGetMediaSegmentSpecifiers(result);
      if (result)
      {
        result = CFArrayGetCount(result);
      }

      if (i >= result)
      {
        break;
      }

      MediaSegmentSpecifiers = FigMediaPlaylistGetMediaSegmentSpecifiers(*(a1 + 56));
      ValueAtIndex = CFArrayGetValueAtIndex(MediaSegmentSpecifiers, i);
      MediaFilePrivateData = segPumpGetMediaFilePrivateData(ValueAtIndex);
      v15 = MediaFilePrivateData[4];
      if (v15 <= Seconds)
      {
        v16 = MediaFilePrivateData;
        if (Seconds <= v15 + FigMediaSegmentSpecifierGetTimeInSeconds(ValueAtIndex))
        {
          v17 = v16[4];
          if (Seconds - v17 > FigMediaSegmentSpecifierGetTimeInSeconds(ValueAtIndex) * 0.5)
          {
            v17 = v17 + FigMediaSegmentSpecifierGetTimeInSeconds(ValueAtIndex);
            ValueAtIndex = FigMediaSegmentSpecifierGetNextSegment(ValueAtIndex);
          }

          result = CMTimeMakeWithSeconds(a4, v17 + 0.000001, 1000000);
          if (ValueAtIndex)
          {
            TimeInSeconds = FigMediaSegmentSpecifierGetTimeInSeconds(ValueAtIndex);
            result = CMTimeMakeWithSeconds(&time, v17 + TimeInSeconds + 0.000001, 1000000);
            *a3 = time;
          }

          return result;
        }
      }

      result = *(a1 + 56);
    }
  }

  return result;
}

void segPumpCreateSafeBandwidthCoefficientsForBaseStoreBagKey(uint64_t a1, uint64_t a2, __CFArray **a3)
{
  Mutable = CFArrayCreateMutable(*(a1 + 56), 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v7 = Mutable;
    v8 = 0;
    while (1)
    {
      v9 = CFStringCreateWithFormat(*(a1 + 56), 0, @"%@%d", a2, v8);
      if (!v9)
      {
        segPumpCreateSafeBandwidthCoefficientsForBaseStoreBagKey_cold_2();
        goto LABEL_12;
      }

      v10 = v9;
      v11 = FigRCLCopyCFType(*(a1 + 9320), v9);
      if (!v11)
      {
        break;
      }

      v12 = v11;
      v13 = CFGetTypeID(v11);
      if (v13 != CFNumberGetTypeID())
      {
        segPumpCreateSafeBandwidthCoefficientsForBaseStoreBagKey_cold_1();
        goto LABEL_12;
      }

      CFArrayAppendValue(v7, v12);
      CFRelease(v10);
      CFRelease(v12);
      if (++v8 == 16)
      {
        v10 = 0;
        break;
      }
    }

    if (CFArrayGetCount(v7) >= 1)
    {
      *a3 = v7;
      v7 = 0;
    }

    if (v10)
    {
      CFRelease(v10);
    }

LABEL_12:
    if (v7)
    {

      CFRelease(v7);
    }
  }

  else
  {
    segPumpCreateSafeBandwidthCoefficientsForBaseStoreBagKey_cold_3();
  }
}

void segPumpStreamClearStatistics(uint64_t a1)
{
  *(a1 + 952) = 0;
  *(a1 + 1120) = 0;
  *(a1 + 1136) = 0u;
  for (i = *(a1 + 680); i; i = *i)
  {
    v2 = i[22];
    if (v2)
    {
      CFRelease(v2);
      i[22] = 0;
    }
  }
}

void OUTLINED_FUNCTION_8_0(uint64_t a1@<X8>)
{
  *(v3 + 4) = v2;
  *(v3 + 14) = a1;
  *(v3 + 34) = v1;
}

uint64_t OUTLINED_FUNCTION_16_1(int a1)
{
  if (a1)
  {
    return v1;
  }

  else
  {
    return v1 & 0xFFFFFFFE;
  }
}

uint64_t OUTLINED_FUNCTION_28_1(int a1)
{
  if (a1)
  {
    return v1;
  }

  else
  {
    return v1 & 0xFFFFFFFE;
  }
}

void *OUTLINED_FUNCTION_30_1(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __n128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char __src, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, __n128 a43, uint64_t a44)
{
  a43 = a9;

  return memcpy(&a44, &__src, 0x70uLL);
}

uint64_t OUTLINED_FUNCTION_38_0()
{

  return fig_log_call_emit_and_clean_up_after_send_and_compose();
}

uint64_t OUTLINED_FUNCTION_42_1()
{

  return fig_log_call_emit_and_clean_up_after_send_and_compose();
}

BOOL OUTLINED_FUNCTION_51_1(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, int a31, int a32, __int16 a33, char a34, os_log_type_t type)
{

  return os_log_type_enabled(a1, type);
}

Float64 OUTLINED_FUNCTION_72_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, CMTime *time, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, __int128 timea)
{
  timea = *v40;
  *(v39 + 16) = *(v40 + 2);

  return CMTimeGetSeconds(&timea);
}

uint64_t OUTLINED_FUNCTION_73_1()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_74_1()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_90_0@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 40) = a1;

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_107_0()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_108_1()
{

  return fig_log_call_emit_and_clean_up_after_send_and_compose();
}

uint64_t OUTLINED_FUNCTION_115_1(int a1)
{
  if (a1)
  {
    return v1;
  }

  else
  {
    return v1 & 0xFFFFFFFE;
  }
}

BOOL OUTLINED_FUNCTION_116_0(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, os_log_type_t type, int a15)
{

  return os_log_type_enabled(a1, type);
}

uint64_t OUTLINED_FUNCTION_123_1()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

void *OUTLINED_FUNCTION_130_1@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char __src)
{

  return memcpy((a1 + 56), &__src, 0x70uLL);
}

uint64_t OUTLINED_FUNCTION_138_0()
{

  return CMBaseObjectGetVTable();
}

uint64_t OUTLINED_FUNCTION_141_1()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_154_0()
{

  return segPumpLockAndCopyPumpFromRetainProxy();
}

BOOL OUTLINED_FUNCTION_161_1(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, os_log_type_t type, int a22)
{

  return os_log_type_enabled(a1, type);
}

CFDictionaryRef OUTLINED_FUNCTION_170_0@<X0>(const __CFAllocator *a1@<X1>, _OWORD *a2@<X8>)
{
  v4 = a2[1];
  *(v2 - 176) = *a2;
  *(v2 - 160) = v4;
  *(v2 - 144) = a2[2];

  return CMTimeRangeCopyAsDictionary((v2 - 176), a1);
}

uint64_t OUTLINED_FUNCTION_186_0(int a1)
{
  if (a1)
  {
    return v1;
  }

  else
  {
    return v1 & 0xFFFFFFFE;
  }
}

uint64_t OUTLINED_FUNCTION_192_1()
{

  return FigCFDictionarySetInt64();
}

uint64_t OUTLINED_FUNCTION_194_0()
{

  return FigCFDictionarySetInt64();
}

__n128 OUTLINED_FUNCTION_196_1()
{
  result = *v1;
  *(v0 + 16) = v1[1].n128_u64[0];
  return result;
}

__n128 OUTLINED_FUNCTION_208_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, __n128 *a40)
{
  result = *a40;
  v42 = (v40 - 256);
  *v42 = *a40;
  v42[1].n128_u64[0] = a40[1].n128_u64[0];
  return result;
}

void OUTLINED_FUNCTION_214_1(uint64_t a1, uint64_t a2, const __CFURL **a3, int a4, const void *a5, const void *a6, uint64_t a7, uint64_t a8, int a9, int a10)
{

  segPumpAppendErrorLogEntry(a1, a2, a3, a4, a5, a6, 0, 0, a9, a10);
}

uint64_t OUTLINED_FUNCTION_215_1()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_216_1()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_217_0()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

double OUTLINED_FUNCTION_232_0()
{

  return FigMediaSegmentSpecifierGetTimeInSeconds(v0);
}

BOOL OUTLINED_FUNCTION_235_0(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, int a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, os_log_type_t type)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_236_0(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, int a48, __int16 a49, char a50, os_log_type_t type, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, int a57)
{

  return os_log_type_enabled(a1, type);
}