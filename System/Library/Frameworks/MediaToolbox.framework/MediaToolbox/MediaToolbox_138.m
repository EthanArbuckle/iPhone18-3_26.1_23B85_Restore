uint64_t surrogatePlaybackItem_SetProperty(uint64_t a1, const void *a2, uint64_t a3)
{
  cf = 0;
  v16 = 0;
  v14 = 0;
  v13 = 0;
  if (*CMBaseObjectGetDerivedStorage())
  {
    v11 = 4294954511;
  }

  else
  {
    v6 = FPSupport_HandlePlaybackItemSetPropertyAndCopyModification(a1, a2, a3, 0, surrogatePlaybackItem_handleSetProperty, &v13, &cf, &v14);
    if (v6)
    {
LABEL_7:
      v11 = v6;
      goto LABEL_10;
    }

    if (v13 || (surrogatePlaybackItem_copyRealItemAndRealPlayer(a1, &v16, 0), !v16))
    {
      v11 = 0;
    }

    else
    {
      v8 = v14;
      v7 = cf;
      FigBaseObject = FigPlaybackItemGetFigBaseObject(v16);
      v10 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v10)
      {
        v6 = v10(FigBaseObject, v7, v8);
        goto LABEL_7;
      }

      v11 = 4294954514;
    }
  }

LABEL_10:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  return v11;
}

void surrogatePlaybackItem_invalidateInternalOnItemQ(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11[0] = a1;
  v11[1] = 0;
  surrogatePlayerItem_cancelPendingPrerollInternal(v11);
  *DerivedStorage = 257;
  v3 = *(DerivedStorage + 112);
  if (v3)
  {
    CFArrayRemoveAllValues(v3);
  }

  v4 = *(DerivedStorage + 128);
  if (v4)
  {
    CFDictionaryRemoveAllValues(v4);
  }

  v5 = *(DerivedStorage + 136);
  if (v5)
  {
    CFDictionaryRemoveAllValues(v5);
  }

  if (*(DerivedStorage + 48))
  {
    if (*(DerivedStorage + 165))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_4_130();
      FigNotificationCenterRemoveWeakListener();
      *(DerivedStorage + 165) = 0;
    }

    if (*(DerivedStorage + 166))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_4_130();
      FigNotificationCenterRemoveWeakListener();
      *(DerivedStorage + 166) = 0;
    }
  }

  v6 = *(DerivedStorage + 64);
  if (v6)
  {
    if (*(DerivedStorage + 167))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_37_26();
      FigNotificationCenterRemoveWeakListener();
      *(DerivedStorage + 167) = 0;
      v6 = *(DerivedStorage + 64);
    }

    FigBaseObject = FigPlaybackItemGetFigBaseObject(v6);
    if (FigBaseObject)
    {
      v8 = FigBaseObject;
      v9 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v9)
      {
        v9(v8);
      }
    }
  }

  v10 = *(DerivedStorage + 192);
  if (v10)
  {
    CFRelease(v10);
    *(DerivedStorage + 192) = 0;
  }
}

void surrogatePlaybackItem_assetNotificationWeakCallback(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, const void *a5)
{
  v31 = *MEMORY[0x1E69E9840];
  if (*CMBaseObjectGetDerivedStorage())
  {
    v8 = 0;
    goto LABEL_32;
  }

  v8 = surrogatePlaybackItem_copyOwningPlayer();
  if (v8 && !*CMBaseObjectGetDerivedStorage())
  {
    if (FigCFEqual())
    {
      if (a5)
      {
        v9 = CFGetTypeID(a5);
        if (v9 == CFDictionaryGetTypeID())
        {
          CFDictionaryGetValue(a5, @"assetPayload_Property");
          if (FigCFEqual())
          {
            if (dword_1EAF17870 >= 2)
            {
              v25 = 0;
              type[0] = OS_LOG_TYPE_DEFAULT;
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
              OUTLINED_FUNCTION_46();
              if (v5)
              {
                CMBaseObjectGetDerivedStorage();
                v26 = 136315650;
                OUTLINED_FUNCTION_139();
                v27 = v8;
                OUTLINED_FUNCTION_37_14();
                OUTLINED_FUNCTION_108();
                OUTLINED_FUNCTION_448();
              }

              OUTLINED_FUNCTION_7();
              OUTLINED_FUNCTION_238_0();
            }

            DerivedStorage = CMBaseObjectGetDerivedStorage();
            if (*DerivedStorage)
            {
              OUTLINED_FUNCTION_239();
LABEL_29:
              FigSignalErrorAtGM();
              goto LABEL_32;
            }

            v29 = a2;
            v30 = 0;
            context = v8;
            v20 = *(DerivedStorage + 64);
            v21 = surrogatePlayer_respondToLoadingOfItemAssetType_internal;
            goto LABEL_31;
          }
        }
      }
    }

    else
    {
      v11 = FigCFEqual();
      if (a5)
      {
        if (v11)
        {
          v12 = CFGetTypeID(a5);
          if (v12 == CFDictionaryGetTypeID())
          {
            Value = CFDictionaryGetValue(a5, @"assetPayload_Property");
            if (FigCFEqual())
            {
              v14 = CFDictionaryGetValue(a5, @"assetPayload_Result");
              *type = 0;
              v15 = CFDictionaryGetValue(a5, @"assetPayload_CFError");
              if (v14 && (v16 = CFGetTypeID(v14), v16 == CFNumberGetTypeID()))
              {
                CFNumberGetValue(v14, kCFNumberSInt32Type, type);
                v17 = *type;
              }

              else
              {
                v17 = 0;
              }

              surrogatePlaybackItem_deferFailedToBecomeReadyForInspectionNotification(a2, v17, v15, Value);
              if (dword_1EAF17870 >= 2)
              {
                OUTLINED_FUNCTION_147();
                v18 = OUTLINED_FUNCTION_126();
                os_log_type_enabled(v18, v24);
                OUTLINED_FUNCTION_46();
                if (v14)
                {
                  CMBaseObjectGetDerivedStorage();
                  v26 = 136315650;
                  OUTLINED_FUNCTION_139();
                  v27 = v8;
                  OUTLINED_FUNCTION_37_14();
                  OUTLINED_FUNCTION_108();
                  OUTLINED_FUNCTION_448();
                }

                OUTLINED_FUNCTION_7();
                OUTLINED_FUNCTION_238_0();
              }

              v22 = CMBaseObjectGetDerivedStorage();
              if (*v22)
              {
                OUTLINED_FUNCTION_239();
                goto LABEL_29;
              }

              v29 = a2;
              v30 = 0;
              context = v8;
              v20 = *(v22 + 64);
              v21 = &surrogatePlayer_respondToFailedLoadingOfItemAssetType_internal;
LABEL_31:
              dispatch_sync_f(v20, &context, v21);
            }
          }
        }
      }
    }
  }

LABEL_32:
  surrogatePlaybackItem_retainReleaseOnSafeQ(a2);
  surrogatePlayer_deferReleaseToSafeQ(v8);
}

uint64_t surrogatePlayer_respondToLoadingOfItemAssetType_internal(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_172(a1);
  result = surrogatePlayer_respondToLoadingOfItemAssetTypeOnQ(v2, *(v1 + 8));
  *(v1 + 16) = result;
  return result;
}

void surrogatePlaybackItem_copyRealItemAndRealPlayer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 | a3)
  {
    OUTLINED_FUNCTION_216_0();
    context = v5;
    v7 = surrogatePlaybackItem_copyOwningPlayer();
    if (v7)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      if (!*DerivedStorage)
      {
        OUTLINED_FUNCTION_49_15(*(DerivedStorage + 64), v9, v10, v11, v12, v13, v14, v15, v16, context);
        if (v4)
        {
          *v4 = 0;
        }

        if (v3)
        {
          *v3 = 0;
        }
      }
    }
  }

  else
  {
    v7 = 0;
  }

  surrogatePlayer_deferReleaseToSafeQ(v7);
}

const void *surrogatePlayer_createRealItemAndRealPlayer()
{
  OUTLINED_FUNCTION_207();
  cf = 0;
  v16 = 0;
  v14 = 0;
  RealPlayer = surrogatePlaybackItem_copyAssetTypeAndRealPlayerAndRealItem(v1, &v14, &v16, &cf);
  if (RealPlayer)
  {
    goto LABEL_12;
  }

  RealPlayer = cf;
  if (!v16 || !cf)
  {
    if (v16)
    {
      CFRelease(v16);
      v16 = 0;
      RealPlayer = cf;
    }

    if (RealPlayer)
    {
      CFRelease(RealPlayer);
      cf = 0;
    }

    RealPlayer = surrogatePlayer_createRealPlayer(v2, v14, &v16);
    if (!RealPlayer)
    {
      RealPlayer = surrogatePlaybackItem_createRealItem();
    }

LABEL_12:
    v11 = RealPlayer;
    if (!v0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v11 = 0;
  if (v0)
  {
LABEL_13:
    OUTLINED_FUNCTION_61_15(RealPlayer, v4, v5, v6, v7, v8, v9, v10, v13, v14, cf);
  }

LABEL_14:
  if (v16)
  {
    CFRelease(v16);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  return v11;
}

uint64_t surrogatePlaybackItem_handleSetProperty(uint64_t a1, uint64_t a2, const void *a3, const void *a4, _BYTE *a5, void *a6, void *a7)
{
  if (*CMBaseObjectGetDerivedStorage())
  {
    return 4294954511;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v19[0] = a1;
  v19[1] = a3;
  v19[2] = a4;
  v19[3] = 0;
  v14 = OUTLINED_FUNCTION_10_66(DerivedStorage);
  dispatch_sync_f(v14, v19, v15);
  *a5 = 0;
  if (a3)
  {
    v16 = CFRetain(a3);
  }

  else
  {
    v16 = 0;
  }

  *a6 = v16;
  if (a4)
  {
    v17 = CFRetain(a4);
  }

  else
  {
    v17 = 0;
  }

  result = 0;
  *a7 = v17;
  return result;
}

void surrogatePlaybackItem_setPropertyInCacheInternal(uint64_t a1)
{
  OUTLINED_FUNCTION_172(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 1))
  {
    v3 = DerivedStorage;
    if (!*DerivedStorage)
    {
      if (*(DerivedStorage + 64))
      {
        *(v1 + 24) = 1;
      }

      else
      {
        v4 = *(v1 + 16);
        if (v4 && CFEqual(*(v1 + 8), @"SelectedMediaArray") && (Value = CFDictionaryGetValue(*(v3 + 128), @"SelectedMediaArray")) != 0)
        {
          MutableCopy = CFArrayCreateMutableCopy(*MEMORY[0x1E695E480], 0, Value);
          if (MutableCopy)
          {
            v7 = OUTLINED_FUNCTION_184();
            FigAutomaticMediaSelectionCoalesceSelectedMediaArrays(v7, v8, 1);
            v4 = MutableCopy;
          }
        }

        else
        {
          MutableCopy = 0;
        }

        if (v4)
        {
          v9 = v4;
        }

        else
        {
          v9 = *MEMORY[0x1E695E738];
        }

        CFDictionarySetValue(*(v3 + 128), *(v1 + 8), v9);
        *(v1 + 24) = 0;
        if (MutableCopy)
        {

          CFRelease(MutableCopy);
        }
      }
    }
  }
}

uint64_t surrogatePlaybackItem_GetDimensions()
{
  OUTLINED_FUNCTION_216_0();
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_45_17();
  if (v0)
  {
    v1 = 0;
    v5 = 4294954511;
    goto LABEL_12;
  }

  v1 = surrogatePlaybackItem_copyOwningPlayer();
  if (!v1)
  {
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_627();
  RealItemAndRealPlayer = surrogatePlayer_createRealItemAndRealPlayer();
  if (RealItemAndRealPlayer)
  {
    goto LABEL_9;
  }

  if (!cf)
  {
LABEL_8:
    OUTLINED_FUNCTION_111();
    RealItemAndRealPlayer = FigSignalErrorAtGM();
    goto LABEL_9;
  }

  if (!*(*(CMBaseObjectGetVTable() + 16) + 8))
  {
    v5 = 4294954514;
    goto LABEL_10;
  }

  v3 = OUTLINED_FUNCTION_184();
  RealItemAndRealPlayer = v4(v3);
LABEL_9:
  v5 = RealItemAndRealPlayer;
LABEL_10:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_12:
  surrogatePlayer_deferReleaseToSafeQ(v1);
  return v5;
}

uint64_t surrogatePlaybackItem_GetDuration()
{
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_45_17();
  if (v0)
  {
    v1 = 0;
    v5 = 4294954511;
    goto LABEL_12;
  }

  v1 = surrogatePlaybackItem_copyOwningPlayer();
  if (!v1)
  {
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_70_10();
  RealItemAndRealPlayer = surrogatePlayer_createRealItemAndRealPlayer();
  if (RealItemAndRealPlayer)
  {
    goto LABEL_9;
  }

  if (!cf)
  {
LABEL_8:
    OUTLINED_FUNCTION_243();
    RealItemAndRealPlayer = FigSignalErrorAtGM();
    goto LABEL_9;
  }

  if (!*(*(CMBaseObjectGetVTable() + 16) + 16))
  {
    v5 = 4294954514;
    goto LABEL_10;
  }

  v3 = OUTLINED_FUNCTION_171();
  RealItemAndRealPlayer = v4(v3);
LABEL_9:
  v5 = RealItemAndRealPlayer;
LABEL_10:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_12:
  surrogatePlayer_deferReleaseToSafeQ(v1);
  return v5;
}

uint64_t surrogatePlaybackItem_GetCurrentTime(char a1, uint64_t a2)
{
  if (*CMBaseObjectGetDerivedStorage())
  {
    return 4294954511;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *&v17.timescale = @"CurrentTime";
  v18 = 0;
  v19 = 0;
  v17.epoch = 0;
  OUTLINED_FUNCTION_49_15(*(DerivedStorage + 144), v5, v6, v7, v8, v9, v10, v11, v16, a1);
  v12 = 0;
  OUTLINED_FUNCTION_91_6();
  if (v13)
  {
    v12 = 0;
    v14 = MEMORY[0x1E6960CC0];
    *a2 = *MEMORY[0x1E6960CC0];
    *(a2 + 16) = *(v14 + 16);
  }

  return v12;
}

uint64_t surrogatePlaybackItem_CopyTrackProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_45_17();
  if (v9)
  {
    v10 = 0;
    v13 = 4294954511;
    goto LABEL_12;
  }

  v10 = surrogatePlaybackItem_copyOwningPlayer();
  if (!v10)
  {
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_70_10();
  RealItemAndRealPlayer = surrogatePlayer_createRealItemAndRealPlayer();
  if (RealItemAndRealPlayer)
  {
    goto LABEL_9;
  }

  if (!cf)
  {
LABEL_8:
    RealItemAndRealPlayer = FigSignalErrorAtGM();
    goto LABEL_9;
  }

  v12 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v12)
  {
    v13 = 4294954514;
    goto LABEL_10;
  }

  RealItemAndRealPlayer = v12(cf, a2, a3, a4, a5);
LABEL_9:
  v13 = RealItemAndRealPlayer;
LABEL_10:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_12:
  surrogatePlayer_deferReleaseToSafeQ(v10);
  return v13;
}

uint64_t surrogatePlaybackItem_MakeReadyForInspection()
{
  OUTLINED_FUNCTION_207();
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_90_5();
  if (v4)
  {
    return 4294954511;
  }

  v6[0] = v2;
  v6[1] = v1;
  v7 = 0;
  dispatch_sync_f(*(v3 + 144), v6, surrogatePlaybackItem_MakeReadyForInspectionInternal);
  result = v8;
  if (!v8)
  {
    if (v7)
    {
      return surrogatePlaybackItem_callMakeReadyForInspectionOnRealItem(v2, v7, v1, 0, v0);
    }

    else
    {
      result = 0;
      if (v0)
      {
        *v0 = 0;
      }
    }
  }

  return result;
}

uint64_t surrogatePlaybackItem_CopyCommonMetadata()
{
  OUTLINED_FUNCTION_62_13();
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_45_17();
  if (v0)
  {
    v1 = 0;
    v5 = 4294954511;
    goto LABEL_12;
  }

  v1 = surrogatePlaybackItem_copyOwningPlayer();
  if (!v1)
  {
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_70_10();
  RealItemAndRealPlayer = surrogatePlayer_createRealItemAndRealPlayer();
  if (RealItemAndRealPlayer)
  {
    goto LABEL_9;
  }

  if (!cf)
  {
LABEL_8:
    OUTLINED_FUNCTION_429();
    RealItemAndRealPlayer = FigSignalErrorAtGM();
    goto LABEL_9;
  }

  if (!*(*(CMBaseObjectGetVTable() + 16) + 64))
  {
    v5 = 4294954514;
    goto LABEL_10;
  }

  v3 = OUTLINED_FUNCTION_502();
  RealItemAndRealPlayer = v4(v3);
LABEL_9:
  v5 = RealItemAndRealPlayer;
LABEL_10:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_12:
  surrogatePlayer_deferReleaseToSafeQ(v1);
  return v5;
}

uint64_t surrogatePlaybackItem_CopyChapterImageData()
{
  OUTLINED_FUNCTION_62_13();
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_45_17();
  if (v0)
  {
    v1 = 0;
    v5 = 4294954511;
    goto LABEL_12;
  }

  v1 = surrogatePlaybackItem_copyOwningPlayer();
  if (!v1)
  {
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_70_10();
  RealItemAndRealPlayer = surrogatePlayer_createRealItemAndRealPlayer();
  if (RealItemAndRealPlayer)
  {
    goto LABEL_9;
  }

  if (!cf)
  {
LABEL_8:
    OUTLINED_FUNCTION_429();
    RealItemAndRealPlayer = FigSignalErrorAtGM();
    goto LABEL_9;
  }

  if (!*(*(CMBaseObjectGetVTable() + 16) + 72))
  {
    v5 = 4294954514;
    goto LABEL_10;
  }

  v3 = OUTLINED_FUNCTION_502();
  RealItemAndRealPlayer = v4(v3);
LABEL_9:
  v5 = RealItemAndRealPlayer;
LABEL_10:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_12:
  surrogatePlayer_deferReleaseToSafeQ(v1);
  return v5;
}

uint64_t surrogatePlaybackItem_GetNextThumbnailTime(uint64_t a1, __int128 *a2)
{
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_90_5();
  if (v3)
  {
    v4 = 0;
    v18 = 4294954511;
    goto LABEL_12;
  }

  v4 = surrogatePlaybackItem_copyOwningPlayer();
  if (!v4)
  {
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_627();
  RealItemAndRealPlayer = surrogatePlayer_createRealItemAndRealPlayer();
  if (RealItemAndRealPlayer)
  {
    goto LABEL_9;
  }

  if (!cf)
  {
LABEL_8:
    OUTLINED_FUNCTION_111();
    RealItemAndRealPlayer = FigSignalErrorAtGM();
    goto LABEL_9;
  }

  v20 = *a2;
  VTable = CMBaseObjectGetVTable();
  v15 = *(VTable + 16);
  v14 = VTable + 16;
  if (!*(v15 + 80))
  {
    v18 = 4294954514;
    goto LABEL_10;
  }

  v16 = OUTLINED_FUNCTION_2_87(v14, v7, v8, v9, v10, v11, v12, v13, v20);
  RealItemAndRealPlayer = v17(cf, v16);
LABEL_9:
  v18 = RealItemAndRealPlayer;
LABEL_10:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_12:
  surrogatePlayer_deferReleaseToSafeQ(v4);
  return v18;
}

uint64_t surrogatePlaybackItem_SetTrackProperty(char a1)
{
  if (*CMBaseObjectGetDerivedStorage())
  {
    return 4294954511;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_49_15(*(DerivedStorage + 144), v3, v4, v5, v6, v7, v8, v9, v11, a1);
  return 0;
}

uint64_t surrogatePlaybackItem_CopyFormatReader()
{
  OUTLINED_FUNCTION_187();
  CMBaseObjectGetDerivedStorage();
  v29 = 0;
  cf = 0;
  OUTLINED_FUNCTION_45_17();
  if (v3)
  {
    v17 = 4294954511;
    goto LABEL_17;
  }

  if (!v0)
  {
    v17 = 4294954516;
    goto LABEL_17;
  }

  v4 = v2;
  surrogatePlaybackItem_copyRealItemAndRealPlayer(v1, &cf, 0);
  v5 = cf;
  if (cf)
  {
    VTable = CMBaseObjectGetVTable();
    v15 = *(VTable + 16);
    v14 = VTable + 16;
    v16 = *(v15 + 120);
    if (v16)
    {
      v14 = v16(v5, &v29);
      v17 = v14;
    }

    else
    {
      v17 = 4294954514;
    }

    goto LABEL_12;
  }

  v18 = *(v4 + 48);
  v19 = CFGetAllocator(v1);
  CMBaseObject = FigAssetGetCMBaseObject(v18);
  v21 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v21)
  {
    goto LABEL_16;
  }

  v14 = v21(CMBaseObject, @"assetProperty_AssetType", v19, &v28);
  if (v14)
  {
    goto LABEL_15;
  }

  v14 = FigCFEqual();
  if (!v14)
  {
    v22 = *(v4 + 48);
    v23 = CFGetAllocator(v1);
    v24 = FigAssetGetCMBaseObject(v22);
    v25 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v25)
    {
      v14 = v25(v24, @"assetProperty_FormatReader", v23, &v29);
      if (!v14)
      {
        goto LABEL_10;
      }

LABEL_15:
      v17 = v14;
      goto LABEL_17;
    }

LABEL_16:
    v17 = 4294954514;
    goto LABEL_17;
  }

LABEL_10:
  if (v29)
  {
    v17 = 0;
LABEL_12:
    OUTLINED_FUNCTION_61_15(v14, v7, v8, v9, v10, v11, v12, v13, v27, v28, v29);
    goto LABEL_17;
  }

  v17 = 4294954513;
LABEL_17:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v28)
  {
    CFRelease(v28);
  }

  if (v29)
  {
    CFRelease(v29);
  }

  return v17;
}

uint64_t surrogatePlaybackItem_SeekToDateWithID(uint64_t a1, const void *a2, int a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    return 4294954511;
  }

  if (!a2)
  {
    return 4294954516;
  }

  v7 = *(DerivedStorage + 64);
  v8 = CMBaseObjectGetDerivedStorage();
  v21 = a1;
  v22 = 0;
  v9 = OUTLINED_FUNCTION_34_26(v8);
  dispatch_sync_f(v9, &v21, v10);
  v11 = 0;
  if (v7)
  {
    goto LABEL_8;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    OUTLINED_FUNCTION_429();
    return FigSignalErrorAtGM();
  }

  v11 = Mutable;
  CFDictionarySetValue(Mutable, @"Date", a2);
  if (a3 && (v13 = FigCFDictionarySetInt32(), v13))
  {
    v19 = v13;
  }

  else
  {
    v14 = CMBaseObjectGetDerivedStorage();
    v21 = a1;
    v22 = @"SeekDate";
    v23 = v11;
    v24 = 0;
    v15 = OUTLINED_FUNCTION_10_66(v14);
    dispatch_sync_f(v15, &v21, v16);
    if (v24)
    {
LABEL_8:
      if (*(*(CMBaseObjectGetVTable() + 16) + 128))
      {
        v17 = OUTLINED_FUNCTION_104_0();
        v19 = v18(v17);
        if (!v11)
        {
          return v19;
        }
      }

      else
      {
        v19 = 4294954514;
        if (!v11)
        {
          return v19;
        }
      }

      goto LABEL_14;
    }

    v19 = 0;
  }

LABEL_14:
  CFRelease(v11);
  return v19;
}

uint64_t surrogatePlaybackItem_CopyAsset(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    return 4294954511;
  }

  v4 = *(DerivedStorage + 48);
  if (v4)
  {
    v5 = CFRetain(v4);
  }

  else
  {
    v5 = 0;
  }

  result = 0;
  *a2 = v5;
  return result;
}

uint64_t surrogatePlaybackItem_SetProperties()
{
  OUTLINED_FUNCTION_207();
  CMBaseObjectGetDerivedStorage();
  v20 = 0;
  v19 = 0;
  v17 = 0;
  v18 = 0;
  OUTLINED_FUNCTION_45_17();
  if (v2)
  {
    v14 = 4294954511;
    goto LABEL_13;
  }

  v3 = OUTLINED_FUNCTION_171();
  v9 = FPSupport_HandlePlaybackItemSetPropertiesAndCopyModification(v3, v4, 0, v5, v6, v7, v8);
  if (v9)
  {
    goto LABEL_10;
  }

  surrogatePlaybackItem_copyRealItemAndRealPlayer(v1, &cf, 0);
  v10 = cf;
  if (!cf)
  {
    v13 = 0;
    goto LABEL_9;
  }

  v11 = v20;
  v12 = *(*(CMBaseObjectGetVTable() + 16) + 160);
  if (!v12)
  {
    v14 = 4294954514;
    goto LABEL_11;
  }

  v9 = v12(v10, v11, &v17);
  if (!v9)
  {
    v13 = v17;
LABEL_9:
    v9 = FPSupport_CopyCombinedSetPropertiesErrDictionary(v18, v13, v0);
  }

LABEL_10:
  v14 = v9;
LABEL_11:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_13:
  if (v18)
  {
    CFRelease(v18);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  return v14;
}

uint64_t surrogatePlaybackItem_ExtractAndRetainNextSampleBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_45_17();
  if (v7)
  {
    return 4294954511;
  }

  if (!a4)
  {
    return 4294954516;
  }

  v8 = OUTLINED_FUNCTION_587();
  surrogatePlaybackItem_copyRealItemAndRealPlayer(v8, v9, v10);
  if (!cf)
  {
    return 4294954513;
  }

  v11 = *(*(CMBaseObjectGetVTable() + 16) + 168);
  if (v11)
  {
    v12 = v11(cf, a2, a3, a4);
  }

  else
  {
    v12 = 4294954514;
  }

  CFRelease(cf);
  return v12;
}

uint64_t surrogatePlaybackItem_SetCurrentTimeWithOptions(unint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    return 4294954511;
  }

  v5 = DerivedStorage;
  v6 = *(DerivedStorage + 64);
  v7 = CMBaseObjectGetDerivedStorage();
  context = a1;
  v8 = OUTLINED_FUNCTION_34_26(v7);
  dispatch_sync_f(v8, &context, v9);
  if (v6)
  {
    goto LABEL_6;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 5, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  context = *a2;
  v31 = *(a2 + 16);
  FigCFDictionarySetCMTime();
  FigCFDictionarySetValue();
  v11 = CMBaseObjectGetDerivedStorage();
  *&context = a1;
  *(&context + 1) = @"CurrentTime";
  v31 = Mutable;
  v32 = 0;
  v12 = OUTLINED_FUNCTION_10_66(v11);
  dispatch_sync_f(v12, &context, v13);
  v14 = v32;
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v14)
  {
LABEL_6:
    v15 = *(v5 + 64);
    v29 = *a2;
    VTable = CMBaseObjectGetVTable();
    v25 = *(VTable + 16);
    v24 = VTable + 16;
    if (*(v25 + 176))
    {
      v26 = OUTLINED_FUNCTION_2_87(v24, v17, v18, v19, v20, v21, v22, v23, v29);
      v27(v15, v26);
    }
  }

  return 0;
}

void surrogatePlaybackItem_setTrackPropertyInCacheInternal(uint64_t a1)
{
  OUTLINED_FUNCTION_172(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 1))
  {
    v3 = DerivedStorage;
    if (!*DerivedStorage)
    {
      if (*(DerivedStorage + 64))
      {
        *(v1 + 32) = 1;
      }

      else
      {
        Value = CFDictionaryGetValue(*(DerivedStorage + 136), *(v1 + 8));
        if (!Value || (Mutable = CFRetain(Value)) == 0)
        {
          Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          CFDictionarySetValue(*(v3 + 136), *(v1 + 8), Mutable);
        }

        v6 = *(v1 + 16);
        v7 = *(v1 + 24);
        if (v7)
        {
          CFDictionarySetValue(Mutable, v6, v7);
        }

        else
        {
          CFDictionaryRemoveValue(Mutable, v6);
        }

        *(v1 + 32) = 0;
        if (Mutable)
        {

          CFRelease(Mutable);
        }
      }
    }
  }
}

void surrogatePlayer_initiateLoadingOfItemAssetTypeAsync(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_172(a1);
  surrogatePlayer_initiateLoadingOfItemAssetTypeOnQ(v2, *(v1 + 8), *(v1 + 16));
  surrogatePlaybackItem_deferReleaseToSafeQ(*(v1 + 8));
  surrogatePlayer_deferReleaseToSafeQ(*v1);

  free(v1);
}

uint64_t surrogatePlayer_AddToPlayQueue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_187();
  v43 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v28 = 0;
  if (*DerivedStorage)
  {
    return 4294954511;
  }

  if (!v3)
  {
    return 4294954516;
  }

  v8 = DerivedStorage;
  if (dword_1EAF17870)
  {
    v9 = OUTLINED_FUNCTION_11_64();
    OUTLINED_FUNCTION_130(v9, v10, v11, v12, v13, v14, v15, v16, v23, v24, v25, v26, SBYTE2(v26), BYTE3(v26), SHIDWORD(v26));
    OUTLINED_FUNCTION_28();
    if (v5)
    {
      if (v4)
      {
        v17 = (CMBaseObjectGetDerivedStorage() + 128);
      }

      else
      {
        v17 = "";
      }

      v18 = CMBaseObjectGetDerivedStorage() + 175;
      if (a3)
      {
        v19 = (CMBaseObjectGetDerivedStorage() + 175);
      }

      else
      {
        v19 = "";
      }

      v29 = 136316674;
      v30 = "surrogatePlayer_AddToPlayQueue";
      v31 = 2048;
      v32 = v4;
      v33 = 2082;
      v34 = v17;
      v35 = 2048;
      v36 = v3;
      v37 = 2082;
      v38 = v18;
      v39 = 2048;
      v40 = a3;
      v41 = 2082;
      v42 = v19;
      OUTLINED_FUNCTION_23();
      _os_log_send_and_compose_impl();
      OUTLINED_FUNCTION_408();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_417();
  }

  context[0] = v4;
  context[1] = v3;
  context[2] = a3;
  LOBYTE(v28) = 0;
  HIDWORD(v28) = 0;
  dispatch_sync_f(v8[8], context, surrogatePlaybackItem_addToPlayQueueInternal);
  result = HIDWORD(v28);
  if (!HIDWORD(v28))
  {
    if (v28)
    {
      v21 = OUTLINED_FUNCTION_177();
      return surrogatePlayer_deferInitiateLoadingOfItemAssetType(v21, v22, 1);
    }
  }

  return result;
}

uint64_t surrogatePlayer_RemoveFromPlayQueue(uint64_t a1, uint64_t a2)
{
  v61 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v45 = 0;
  if (dword_1EAF17870)
  {
    v7 = OUTLINED_FUNCTION_63_13();
    OUTLINED_FUNCTION_94_6(v7, v8, v9, v10, v11, v12, v13, v14, v40, v41, v42, v43, SHIDWORD(v43), cf);
    OUTLINED_FUNCTION_28();
    if (!v3)
    {
      goto LABEL_9;
    }

    if (a1)
    {
      CMBaseObjectGetDerivedStorage();
      if (!a2)
      {
LABEL_8:
        v47 = 136316162;
        OUTLINED_FUNCTION_47();
        v48 = a1;
        OUTLINED_FUNCTION_39_21();
        v52 = a2;
        v53 = v15;
        v54 = v16;
        OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_23();
        _os_log_send_and_compose_impl();
LABEL_9:
        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_417();
        goto LABEL_10;
      }
    }

    else if (!a2)
    {
      goto LABEL_8;
    }

    CMBaseObjectGetDerivedStorage();
    goto LABEL_8;
  }

LABEL_10:
  if (*DerivedStorage)
  {
    return 4294954511;
  }

  if (dword_1EAF17870 >= 2)
  {
    v17 = OUTLINED_FUNCTION_63_13();
    OUTLINED_FUNCTION_94_6(v17, v18, v19, v20, v21, v22, v23, v24, v40, v41, v42, v43, SHIDWORD(v43), cf);
    OUTLINED_FUNCTION_28();
    if (v3)
    {
      if (a1)
      {
        CMBaseObjectGetDerivedStorage();
      }

      v47 = 136315650;
      OUTLINED_FUNCTION_47();
      v48 = a1;
      OUTLINED_FUNCTION_6_104();
      OUTLINED_FUNCTION_23();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_417();
  }

  v25 = CMBaseObjectGetDerivedStorage();
  if (*v25)
  {
    OUTLINED_FUNCTION_303();
    result = FigSignalErrorAtGM();
    if (result)
    {
      return result;
    }
  }

  else
  {
    v57 = 1;
    v60 = 0;
    context = a1;
    v56 = a2;
    v58 = &v45;
    v59 = @"ReasonRemoveFromPlayqueue";
    dispatch_sync_f(*(v25 + 64), &context, surrogatePlayer_carefullyRemoveItem_internal);
    result = v60;
    if (v60)
    {
      return result;
    }
  }

  if (a2)
  {
    v43 = 0;
    cf = 0;
    surrogatePlaybackItem_copyRealItemAndRealPlayer(a2, &cf, &v43);
    if (cf && v43 && v45)
    {
      if (*(*(CMBaseObjectGetVTable() + 16) + 24))
      {
        v31 = OUTLINED_FUNCTION_502();
        v32(v31);
      }
    }

    else
    {
      if (dword_1EAF17870)
      {
        OUTLINED_FUNCTION_427();
        v33 = OUTLINED_FUNCTION_371();
        v34 = type;
        os_log_type_enabled(v33, type);
        OUTLINED_FUNCTION_46();
        if (v2)
        {
          if (a1)
          {
            v35 = (CMBaseObjectGetDerivedStorage() + 128);
          }

          else
          {
            v35 = "";
          }

          CMBaseObjectGetDerivedStorage();
          v47 = 136316162;
          OUTLINED_FUNCTION_47();
          v48 = a1;
          v49 = 2082;
          v50 = v35;
          v51 = v36;
          v52 = a2;
          v53 = 2082;
          v54 = v37;
          OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_108();
          OUTLINED_FUNCTION_448();
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_238_0();
        if (dword_1EAF17870 >= 2)
        {
          OUTLINED_FUNCTION_427();
          v38 = OUTLINED_FUNCTION_371();
          os_log_type_enabled(v38, type);
          OUTLINED_FUNCTION_40();
          if (v34)
          {
            if (a1)
            {
              CMBaseObjectGetDerivedStorage();
            }

            v47 = 136315650;
            OUTLINED_FUNCTION_47();
            v48 = a1;
            OUTLINED_FUNCTION_6_104();
            OUTLINED_FUNCTION_38();
            _os_log_send_and_compose_impl();
          }

          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_414();
        }
      }

      v39 = CMBaseObjectGetDerivedStorage();
      if (*v39)
      {
        OUTLINED_FUNCTION_303();
        FigSignalErrorAtGM();
      }

      else
      {
        context = a1;
        v56 = 0;
        dispatch_sync_f(*(v39 + 64), &context, surrogatePlayer_initiateEnqueueingOfCurrentItemIfNeeded_internal);
      }
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (v43)
    {
      CFRelease(v43);
    }
  }

  else
  {
    v27 = *(DerivedStorage + 32);
    if (v27)
    {
      v28 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (v28)
      {
        v28(v27, 0);
      }
    }

    v29 = *(DerivedStorage + 40);
    if (v29)
    {
      v30 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (v30)
      {
        v30(v29, 0);
      }
    }
  }

  return 0;
}

uint64_t surrogatePlayer_CopyPlayQueueItem()
{
  OUTLINED_FUNCTION_207();
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_90_5();
  if (v4)
  {
    return 4294954511;
  }

  if (!v0)
  {
    return 4294954516;
  }

  v6[0] = v2;
  v6[1] = v1;
  v7 = 0;
  dispatch_sync_f(*(v3 + 64), v6, surrogatePlaybackItem_copyPlayQueueItemInternal);
  if (v8)
  {
    return 0;
  }

  result = 0;
  *v0 = v7;
  return result;
}

uint64_t surrogatePlayer_GetRate()
{
  OUTLINED_FUNCTION_187();
  cf = 0;
  theDict = 0;
  if (*CMBaseObjectGetDerivedStorage())
  {
    return 4294954511;
  }

  if (!v0)
  {
    v4 = 4294954516;
    goto LABEL_10;
  }

  surrogatePlayer_copyPropertyFromCache(v1, @"CurrentRate", &theDict, &cf);
  if (cf)
  {
    if (*(*(CMBaseObjectGetVTable() + 16) + 48))
    {
      v2 = OUTLINED_FUNCTION_177();
      v4 = v3(v2);
    }

    else
    {
      v4 = 4294954514;
    }

    goto LABEL_10;
  }

  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"Rate");
    if (Value)
    {
      CFNumberGetValue(Value, kCFNumberFloat32Type, v0);
      v4 = 0;
    }

    else
    {
      v4 = 4294954513;
    }

LABEL_10:
    if (theDict)
    {
      CFRelease(theDict);
    }

    goto LABEL_13;
  }

  v4 = 0;
  *v0 = 0;
LABEL_13:
  if (cf)
  {
    CFRelease(cf);
  }

  return v4;
}

uint64_t surrogatePlayer_StartPreroll(char a1)
{
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_90_5();
  if (v10)
  {
    return 4294954511;
  }

  OUTLINED_FUNCTION_49_15(*(v2 + 64), v3, v4, v5, v6, v7, v8, v9, v12, a1);
  return v13;
}

uint64_t surrogatePlayer_StepByCount(uint64_t a1, uint64_t a2)
{
  if (*CMBaseObjectGetDerivedStorage())
  {
    return 4294954511;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = 0;
  v12 = 0;
  context = a1;
  v5 = OUTLINED_FUNCTION_1_170(DerivedStorage);
  dispatch_sync_f(v5, &context, v6);
  v7 = v11;
  if (v11)
  {
    v8 = *(*(CMBaseObjectGetVTable() + 16) + 72);
    if (v8)
    {
      return v8(v7, a2);
    }

    else
    {
      return 4294954514;
    }
  }

  else
  {
    OUTLINED_FUNCTION_303();
    return FigSignalErrorAtGM();
  }
}

uint64_t surrogatePlayer_SetRateAndAnchorTime(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_216_0();
  v9 = v8;
  v11 = v10;
  v52 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  memset(&v30, 0, sizeof(v30));
  HostTimeClock = CMClockGetHostTimeClock();
  CMClockGetTime(&v30, HostTimeClock);
  if (dword_1EAF17870)
  {
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_37();
    if (v6)
    {
      if (v11)
      {
        v15 = (CMBaseObjectGetDerivedStorage() + 128);
      }

      else
      {
        v15 = "";
      }

      *time = *&v5->value;
      *&time[16] = v5->epoch;
      Seconds = CMTimeGetSeconds(time);
      *time = *&v4->value;
      *&time[16] = v4->epoch;
      v17 = CMTimeGetSeconds(time);
      *time = v30;
      v18 = CMTimeGetSeconds(time);
      lhs = *v4;
      rhs = v30;
      CMTimeSubtract(time, &lhs, &rhs);
      v19 = CMTimeGetSeconds(time);
      LODWORD(lhs.value) = 136317186;
      *(&lhs.value + 4) = "surrogatePlayer_SetRateAndAnchorTime";
      LOWORD(lhs.flags) = 2048;
      *(&lhs.flags + 2) = v11;
      HIWORD(lhs.epoch) = 2082;
      v32 = v15;
      v33 = 2048;
      v34 = v9;
      v35 = 2048;
      v36 = Seconds;
      v37 = 2048;
      v38 = v17;
      v39 = 2048;
      v40 = v18;
      v41 = 2048;
      v42 = v19;
      v43 = 1024;
      v44 = a4;
      OUTLINED_FUNCTION_108();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_449();
  }

  if (*DerivedStorage)
  {
    return 4294954511;
  }

  *&time[12] = *&v5->value;
  epoch = v5->epoch;
  v47 = *&v4->value;
  v48 = v4->epoch;
  *time = v11;
  *&time[8] = v9;
  v49 = a4;
  v50 = 0;
  v51 = 0;
  v20 = CMBaseObjectGetDerivedStorage();
  dispatch_sync_f(*(v20 + 64), time, surrogatePlayer_setRateAndAnchorTimeInCacheInternal);
  v21 = v51;
  if (v51)
  {
    LODWORD(rhs.value) = 0;
    v24 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    value = rhs.value;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v26 = value;
    }

    else
    {
      v26 = value & 0xFFFFFFFE;
    }

    if (v26)
    {
      LODWORD(lhs.value) = 136315394;
      *(&lhs.value + 4) = "surrogatePlayer_SetRateAndAnchorTime";
      LOWORD(lhs.flags) = 1024;
      *(&lhs.flags + 2) = v21;
      OUTLINED_FUNCTION_108();
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  else
  {
    v21 = v50;
    if (v50)
    {
      rhs = *v5;
      *&v27.value = *&v4->value;
      v27.epoch = v4->epoch;
      v22 = *(*(CMBaseObjectGetVTable() + 16) + 88);
      if (v22)
      {
        *time = rhs;
        lhs = v27;
        return v22(v21, time, &lhs, a4, v9);
      }

      else
      {
        return 4294954514;
      }
    }
  }

  return v21;
}

uint64_t surrogatePlayer_CreatePlaybackItemFromAsset(const void *a1, const void *a2, int a3, uint64_t a4, const CFDictionaryValueCallBacks **a5)
{
  v42 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    return 4294954511;
  }

  v10 = DerivedStorage;
  v38 = a5;
  CFGetAllocator(a1);
  v40 = 0;
  __str[0] = 0;
  timebaseOut = 0;
  FigNote_AllowInternalDefaultLogs();
  OnlyTimebase = @"com.apple.coremedia";
  v12 = "player";
  OUTLINED_FUNCTION_84_6();
  fig_note_initialize_category_with_default_work_cf();
  OUTLINED_FUNCTION_84_6();
  fig_note_initialize_category_with_default_work_cf();
  FigPlaybackItemGetClassID();
  if (CMDerivedObjectCreate())
  {
    goto LABEL_45;
  }

  v13 = CMBaseObjectGetDerivedStorage();
  *v13 = 0;
  *(v13 + 175) = 0;
  if (FigCFDictionaryGetStringIfPresent())
  {
    CFStringGetCString(__str[0], (v13 + 175), 16, 0x600u);
  }

  if (FigMetricEventTimelineCreate())
  {
LABEL_45:
    OUTLINED_FUNCTION_60_14();
  }

  else
  {
    v14 = *MEMORY[0x1E695E480];
    OUTLINED_FUNCTION_415_0();
    MutableCopy = FigCFDictionaryCreateMutableCopy();
    FigCFDictionarySetValue();
    *(v13 + 16) = 0;
    *(v13 + 24) = 0;
    if (a2)
    {
      v16 = CFRetain(a2);
    }

    else
    {
      v16 = 0;
    }

    *(v13 + 48) = v16;
    *(v13 + 32) = a3;
    if (MutableCopy)
    {
      v17 = CFRetain(MutableCopy);
    }

    else
    {
      v17 = 0;
    }

    *(v13 + 40) = v17;
    *(v13 + 64) = 0;
    *(v13 + 96) = 0;
    v18 = FigSimpleMutexCreate();
    *(v13 + 88) = v18;
    if (v18 && (*(v13 + 112) = 0, v19 = MEMORY[0x1E695E9D8], v12 = MEMORY[0x1E695E9E8], v20 = OUTLINED_FUNCTION_9_2(), *(v13 + 128) = CFDictionaryCreateMutable(v20, v21, v19, v12), v22 = OUTLINED_FUNCTION_9_2(), *(v13 + 136) = CFDictionaryCreateMutable(v22, v23, 0, v12), *(v13 + 162) = 0, Mutable = CFDictionaryCreateMutable(v14, 0, v19, v12), (*(v13 + 120) = Mutable) != 0))
    {
      v25 = FigSimpleMutexCreate();
      *(v13 + 152) = v25;
      if (v25)
      {
        HostTimeClock = CMClockGetHostTimeClock();
        v27 = CMTimebaseCreateWithSourceClock(v14, HostTimeClock, &timebaseOut);
        if (v27)
        {
          OnlyTimebase = v27;
          v12 = 0;
        }

        else
        {
          OnlyTimebase = CMTimebaseCreateReadOnlyTimebase();
          if (OnlyTimebase)
          {
            v12 = 0;
          }

          else
          {
            v12 = v40;
          }
        }
      }

      else
      {
        OUTLINED_FUNCTION_29_28();
        OnlyTimebase = FigSignalErrorAtGM();
        v12 = 0;
      }
    }

    else
    {
      OUTLINED_FUNCTION_29_28();
      FigSignalErrorAtGM();
      OUTLINED_FUNCTION_60_14();
    }

    if (MutableCopy)
    {
      CFRelease(MutableCopy);
    }
  }

  if (timebaseOut)
  {
    CFRelease(timebaseOut);
  }

  if (!OnlyTimebase)
  {
    v28 = CMBaseObjectGetDerivedStorage();
    v29 = FigCFWeakReferenceHolderCreateWithReferencedObject();
    *(v28 + 96) = v29;
    if (v29)
    {
      v30 = v10[3];
      *(v28 + 16) = v30;
      if (v30 && (dispatch_retain(v30), v31 = v10[9], (*(v28 + 24) = v31) != 0))
      {
        dispatch_retain(v31);
        v32 = v10[2];
        *(v28 + 8) = v32;
        if (v32)
        {
          dispatch_retain(v32);
        }

        if (v12)
        {
          v33 = (CMBaseObjectGetDerivedStorage() + 175);
        }

        else
        {
          v33 = "";
        }

        snprintf(__str, 0x50uLL, "com.apple.coremedia.surrogatePlaybackItem[%p.%s]", v12, v33);
        if (*(v28 + 8))
        {
          v34 = dispatch_queue_create(__str, 0);
        }

        else
        {
          v34 = FigDispatchQueueCreateWithPriority();
        }

        *(v28 + 144) = v34;
        Key = FigCFWeakReferenceTableAddValueAndGetKey();
        if (!Key)
        {
          CMNotificationCenterGetDefaultLocalCenter();
          OUTLINED_FUNCTION_4_130();
          Key = FigNotificationCenterAddWeakListener();
          if (!Key)
          {
            *(v28 + 165) = 1;
            CMNotificationCenterGetDefaultLocalCenter();
            OUTLINED_FUNCTION_4_130();
            Key = FigNotificationCenterAddWeakListener();
            if (!Key)
            {
              *(v28 + 166) = 1;
              if (dword_1EAF17870)
              {
                os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                OUTLINED_FUNCTION_7();
                OUTLINED_FUNCTION_414();
              }

              OnlyTimebase = 0;
              *v38 = v12;
              return OnlyTimebase;
            }
          }
        }

        OnlyTimebase = Key;
      }

      else
      {
        OnlyTimebase = 4294954516;
      }
    }

    else
    {
      OnlyTimebase = 4294954434;
    }
  }

  if (v12)
  {
    CFRelease(v12);
  }

  return OnlyTimebase;
}

uint64_t surrogatePlayer_SetRateWithOptions(char a1, const void *a2, float a3)
{
  if (*CMBaseObjectGetDerivedStorage())
  {
    return 4294954511;
  }

  RateDict = surrogatePlayer_makeRateDict(a2, a3);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_2_163(DerivedStorage, v8, v9, v10, v11, v12, v13, v14, v16, a1);
  if (RateDict)
  {
    CFRelease(RateDict);
  }

  return 0;
}

uint64_t surrogatePlayer_SetProperties(uint64_t a1, const __CFDictionary *a2, uint64_t *a3)
{
  v25 = 0;
  cf = 0;
  theDict = 0;
  v22 = 0;
  if (!a2)
  {
    v6 = FigSignalErrorAtGM();
    if (!v6)
    {
      goto LABEL_21;
    }

LABEL_20:
    v20 = v6;
    goto LABEL_24;
  }

  v6 = FPSupport_HandlePlayerSetPropertiesAndCopyModification(a1, a2, 0, surrogatePlayer_handleSetProperty, &v25, &theDict, &cf);
  if (v6)
  {
    goto LABEL_20;
  }

  if (!v25)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v27 = 0;
    v28 = 0;
    context = a1;
    v8 = OUTLINED_FUNCTION_1_170(DerivedStorage);
    dispatch_sync_f(v8, &context, v9);
    v11 = v27;
    v10 = v28;
    if (v27)
    {
      v12 = theDict;
      v13 = *(*(CMBaseObjectGetVTable() + 16) + 112);
      if (v13)
      {
        v13(v11, v12, &v22);
      }
    }

    if (v10)
    {
      v14 = OUTLINED_FUNCTION_178();
      if (CFDictionaryContainsKey(v14, v15) || CFDictionaryContainsKey(a2, @"VideoTargetArray") || CFDictionaryContainsKey(a2, @"RequiresNumVideoSlots") || CFDictionaryContainsKey(a2, @"ClosedCaptionLayerArray"))
      {
        MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, theDict);
        CFDictionaryRemoveValue(MutableCopy, @"VideoLayerArray");
        CFDictionaryRemoveValue(MutableCopy, @"VideoTargetArray");
        CFDictionaryRemoveValue(MutableCopy, @"RequiresNumVideoSlots");
        CFDictionaryRemoveValue(MutableCopy, @"ClosedCaptionLayerArray");
        v17 = theDict;
        theDict = MutableCopy;
        if (MutableCopy)
        {
          CFRetain(MutableCopy);
        }

        if (v17)
        {
          CFRelease(v17);
        }
      }

      else
      {
        MutableCopy = 0;
      }

      v18 = theDict;
      v19 = *(*(CMBaseObjectGetVTable() + 16) + 112);
      if (v19)
      {
        v19(v10, v18, 0);
      }

      goto LABEL_22;
    }
  }

LABEL_21:
  MutableCopy = 0;
LABEL_22:
  v20 = FPSupport_CopyCombinedSetPropertiesErrDictionary(cf, v22, a3);
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

LABEL_24:
  if (theDict)
  {
    CFRelease(theDict);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  return v20;
}

uint64_t surrogatePlayer_ReevaluateRouteConfiguration(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = FigCFCopyCompactDescription();
  v6 = v5;
  if (*DerivedStorage)
  {
    v11 = 4294954511;
    if (!v5)
    {
      return v11;
    }

    goto LABEL_8;
  }

  v7 = CMBaseObjectGetDerivedStorage();
  v17 = 0;
  v18 = 0;
  context = a1;
  v8 = OUTLINED_FUNCTION_1_170(v7);
  dispatch_sync_f(v8, &context, v9);
  v10 = v18;
  if (!v17)
  {
    v11 = 0;
    if (!v18)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v11 = FigPlayerReevaluateRouteConfigurationForReason(v17, a2, @" -> surrogate real player");
  if (v10)
  {
LABEL_6:
    v12 = OUTLINED_FUNCTION_104_0();
    FigPlayerReevaluateRouteConfigurationForReason(v12, v13, v14);
  }

LABEL_7:
  if (v6)
  {
LABEL_8:
    CFRelease(v6);
  }

  return v11;
}

uint64_t surrogatePlayer_AddExternalStartupTask(char a1, const void *a2)
{
  if (*CMBaseObjectGetDerivedStorage())
  {
    return 4294954511;
  }

  v4 = OUTLINED_FUNCTION_178();
  surrogatePlayer_copyPropertyFromCache(v4, v5, v6, 0);
  MutableCopy = FigCFArrayCreateMutableCopy();
  CFArrayAppendValue(MutableCopy, a2);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_2_163(DerivedStorage, v9, v10, v11, v12, v13, v14, v15, 0, a1);
  v16 = 0;
  if (cf)
  {
    CFRelease(cf);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  return v16;
}

uint64_t surrogatePlayer_RemoveExternalStartupTask(char a1, const void *a2)
{
  if (*CMBaseObjectGetDerivedStorage())
  {
    return 4294954511;
  }

  v4 = OUTLINED_FUNCTION_178();
  surrogatePlayer_copyPropertyFromCache(v4, v5, v6, 0);
  MutableCopy = FigCFArrayCreateMutableCopy();
  v8 = 0;
  if (!MutableCopy)
  {
    goto LABEL_4;
  }

LABEL_3:
  for (i = CFArrayGetCount(MutableCopy); v8 < i; i = 0)
  {
    v10 = OUTLINED_FUNCTION_618();
    if (CFArrayGetValueAtIndex(v10, v11) == a2)
    {
      v12 = OUTLINED_FUNCTION_618();
      CFArrayRemoveValueAtIndex(v12, v13);
    }

    ++v8;
    if (MutableCopy)
    {
      goto LABEL_3;
    }

LABEL_4:
    ;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_2_163(DerivedStorage, v15, v16, v17, v18, v19, v20, v21, 0, a1);
  v22 = 0;
  if (cf)
  {
    CFRelease(cf);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  return v22;
}

uint64_t surrogatePlayer_TransferOwnershipOfPlaybackItemFromPlayer(uint64_t a1, uint64_t a2, void *a3)
{
  OUTLINED_FUNCTION_187();
  v27 = *MEMORY[0x1E69E9840];
  if (dword_1EAF17870)
  {
    OUTLINED_FUNCTION_427();
    v6 = OUTLINED_FUNCTION_371();
    os_log_type_enabled(v6, type);
    OUTLINED_FUNCTION_53_17();
    if (v8)
    {
      v9 = v7;
    }

    else
    {
      v9 = v23;
    }

    if (!v9)
    {
      goto LABEL_14;
    }

    if (v4)
    {
      CMBaseObjectGetDerivedStorage();
      if (v3)
      {
        goto LABEL_8;
      }
    }

    else if (v3)
    {
LABEL_8:
      CMBaseObjectGetDerivedStorage();
      if (!a3)
      {
LABEL_13:
        OUTLINED_FUNCTION_47();
        OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_23();
        _os_log_send_and_compose_impl();
LABEL_14:
        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_345_0();
        goto LABEL_15;
      }

LABEL_9:
      CMBaseObjectGetDerivedStorage();
      goto LABEL_13;
    }

    if (!a3)
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

LABEL_15:
  if (!a3 || !v3)
  {
    OUTLINED_FUNCTION_42_23();
    v18 = FigSignalErrorAtGM();
    v14 = 0;
    goto LABEL_36;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage || (v12 = v11, *v11))
  {
    v14 = 0;
    v18 = 4294954511;
    goto LABEL_36;
  }

  v21 = DerivedStorage;
  v13 = CMBaseObjectGetDerivedStorage();
  v14 = surrogatePlaybackItem_copyOwningPlayer();
  if (v14 != a3)
  {
    OUTLINED_FUNCTION_42_23();
    v18 = FigSignalErrorAtGM();
    goto LABEL_36;
  }

  if (dword_1EAF17870 >= 2)
  {
    OUTLINED_FUNCTION_427();
    v15 = OUTLINED_FUNCTION_371();
    if (os_log_type_enabled(v15, type))
    {
      v16 = v23;
    }

    else
    {
      v16 = v23 & 0xFFFFFFFE;
    }

    if (v16)
    {
      CMBaseObjectGetDerivedStorage();
      OUTLINED_FUNCTION_47();
      OUTLINED_FUNCTION_6_104();
      OUTLINED_FUNCTION_108();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v17 = CMBaseObjectGetDerivedStorage();
  if (*v17)
  {
    OUTLINED_FUNCTION_42_23();
    v18 = FigSignalErrorAtGM();
    if (v18)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v25 = v3;
    v26 = 0;
    context = a3;
    dispatch_sync_f(*(v17 + 64), &context, surrogatePlayer_removeItemWithoutReset_internal);
    v18 = v26;
    if (v26)
    {
      goto LABEL_36;
    }
  }

  if (a3 == v4)
  {
    v18 = 0;
  }

  else
  {
    FigSimpleMutexLock();
    v19 = *(v13 + 96);
    if (v19)
    {
      CFRelease(v19);
      *(v13 + 96) = 0;
    }

    *(v13 + 96) = FigCFWeakReferenceHolderCreateWithReferencedObject();
    FigSimpleMutexUnlock();
    v25 = v3;
    v26 = 0;
    context = a3;
    dispatch_sync_f(v12[8], &context, surrogatePlayer_removeItemFromValidItems);
    v18 = v26;
    if (!v26)
    {
      v25 = v3;
      v26 = 0;
      context = v4;
      dispatch_sync_f(v21[8], &context, surrogatePlayer_receiveOwnershipOfItem);
      v18 = v26;
    }
  }

LABEL_36:
  surrogatePlayer_deferReleaseToSafeQ(v14);
  return v18;
}

uint64_t surrogatePlayer_CopyDisplayedCVPixelBuffer()
{
  OUTLINED_FUNCTION_207();
  if (*CMBaseObjectGetDerivedStorage())
  {
    return 4294954511;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = 0;
  v9 = 0;
  context = v0;
  v2 = OUTLINED_FUNCTION_1_170(DerivedStorage);
  dispatch_sync_f(v2, &context, v3);
  if (!v8)
  {
    return 0;
  }

  if (!*(*(CMBaseObjectGetVTable() + 16) + 152))
  {
    return 4294954514;
  }

  v4 = OUTLINED_FUNCTION_171();
  return v5(v4);
}

void surrogatePlaybackItem_addToPlayQueueInternal(uint64_t a1)
{
  v78 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = CMBaseObjectGetDerivedStorage();
  v5 = surrogatePlaybackItem_copyOwningPlayer();
  if (*(a1 + 16))
  {
    CMBaseObjectGetDerivedStorage();
  }

  IndexOfItem = surrogatePlayer_getIndexOfItem(DerivedStorage, *(a1 + 8));
  Count = CFArrayGetCount(*(DerivedStorage + 56));
  v8 = Count;
  if (dword_1EAF17870)
  {
    v46 = IndexOfItem;
    v47 = Count;
    HIDWORD(v48) = 0;
    BYTE3(v48) = 0;
    v9 = OUTLINED_FUNCTION_97_8();
    os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v8 = v47;
  }

  if (*v4 || (v5 == *a1 ? (v10 = IndexOfItem == -1) : (v10 = 0), !v10))
  {
    v27 = -12780;
    goto LABEL_35;
  }

  *(v4 + 170) = 0;
  *(a1 + 24) = 0;
  v11 = *(a1 + 16);
  if (!v11)
  {
    CFArrayAppendValue(*(DerivedStorage + 56), *(a1 + 8));
    LODWORD(v47) = 0;
    v12 = v8;
    goto LABEL_13;
  }

  v28 = surrogatePlayer_getIndexOfItem(DerivedStorage, v11);
  v29 = v28;
  if (v28)
  {
    if (v28 == -1)
    {
      v27 = FigSignalErrorAtGM();
      goto LABEL_35;
    }

    goto LABEL_47;
  }

  v31 = *(DerivedStorage + 88);
  if (!v31)
  {
LABEL_47:
    LODWORD(v47) = 0;
    goto LABEL_48;
  }

  FigBaseObject = FigPlayerGetFigBaseObject(v31);
  v33 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v33)
  {
    v33(FigBaseObject, @"ActionAtEnd", @"None");
  }

  LODWORD(v47) = 1;
LABEL_48:
  v12 = v29 + 1;
  CFArrayInsertValueAtIndex(*(DerivedStorage + 56), v29 + 1, *(a1 + 8));
  if (v29 + 2 <= v8)
  {
    CFArrayGetValueAtIndex(*(DerivedStorage + 56), v29 + 2);
    if (*(CMBaseObjectGetDerivedStorage() + 162))
    {
      while (v8 - 2 != v29)
      {
        CFArrayGetValueAtIndex(*(DerivedStorage + 56), v29 + 3);
        ++v29;
        if (!*(CMBaseObjectGetDerivedStorage() + 162))
        {
          v34 = v29 + 1;
          goto LABEL_55;
        }
      }

      v34 = v8;
    }

    else
    {
      v34 = 0;
    }

LABEL_55:
    if (v34 >= 1 && v34 > v12)
    {
      do
      {
        CFArrayGetValueAtIndex(*(DerivedStorage + 56), v34);
        v36 = CMBaseObjectGetDerivedStorage();
        *(CMBaseObjectGetDerivedStorage() + 162) = 0;
        *(v36 + 169) = 1;
        v39 = v36 + 64;
        v38 = *(v36 + 64);
        v37 = *(v39 + 8);
        v40 = *(*(CMBaseObjectGetVTable() + 16) + 24);
        if (v40)
        {
          v40(v37, v38);
        }

        --v34;
      }

      while (v34 > v12);
    }
  }

LABEL_13:
  v20 = surrogatePlayer_copyPlayQueueDescription();
  if (dword_1EAF17870)
  {
    v46 = v12;
    HIDWORD(v48) = 0;
    BYTE3(v48) = 0;
    v21 = OUTLINED_FUNCTION_97_8();
    os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_417();
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (v8)
  {
    if (*(DerivedStorage + 96))
    {
      v22 = v12;
      do
      {
        v23 = v22;
        v24 = v22-- < 1;
        if (v24)
        {
          break;
        }

        CFArrayGetValueAtIndex(*(DerivedStorage + 56), v22);
      }

      while (!*(CMBaseObjectGetDerivedStorage() + 160));
      *(a1 + 24) = v23 < 1;
    }

    if (!v47)
    {
      goto LABEL_25;
    }
  }

  else
  {
    *(a1 + 24) = 1;
    *(DerivedStorage + 104) = 1;
    if (!v47)
    {
      goto LABEL_25;
    }
  }

  surrogatePlayer_setCachedActionAtEndOnRealPlayerOnQ(*a1, v13, v14, v15, v16, v17, v18, v19, v41, v42, v43, v44, v45, SHIDWORD(v45), v1, SWORD2(v1), v46, v47, v5, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78);
LABEL_25:
  CFDictionaryGetValue(*(DerivedStorage + 80), @"ActionAtEnd");
  if (FigCFEqual())
  {
    v24 = v8 < 1;
  }

  else
  {
    v24 = 1;
  }

  v25 = !v24 && v12 == v8;
  if (v25 && (ValueAtIndex = FigCFArrayGetValueAtIndex(), *(CMBaseObjectGetDerivedStorage() + 173)))
  {
    v30 = *a1;
    v63 = ValueAtIndex;
    v64 = 0;
    v62 = v30;
    surrogatePlayer_removeItemFromPlayQueueInternal(&v62);
    v27 = HIDWORD(v64);
    if (v8 == 1)
    {
      surrogatePlaybackItem_deferPostNotification(ValueAtIndex);
      *(DerivedStorage + 112) = 2;
      *(DerivedStorage + 120) = @"ReasonAdvanceDueToError";
      *(a1 + 24) = 1;
    }
  }

  else
  {
    v27 = 0;
  }

LABEL_35:
  surrogatePlayer_deferReleaseToSafeQ(v5);
  *(a1 + 28) = v27;
}

uint64_t surrogatePlayer_carefullyRemoveItem_internal(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_172(a1);
  result = surrogatePlayer_carefullyRemoveItemOnQ(v2, *(v1 + 8), *(v1 + 16), *(v1 + 24));
  *(v1 + 40) = result;
  return result;
}

const void *surrogatePlaybackItem_copyPlayQueueItemInternal(uint64_t a1)
{
  OUTLINED_FUNCTION_172(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = DerivedStorage;
  v4 = *(v1 + 8);
  if (v4)
  {
    result = surrogatePlayer_getIndexOfItem(DerivedStorage, v4);
    if (result == -1)
    {
      v10 = -12780;
      goto LABEL_11;
    }

    v8 = result;
    Count = CFArrayGetCount(*(v3 + 56));
    v6 = v8 + 1;
    if (Count > v8 + 1)
    {
      v5 = *(v3 + 56);
LABEL_4:
      result = CFArrayGetValueAtIndex(v5, v6);
      if (result)
      {
        result = CFRetain(result);
      }

      goto LABEL_10;
    }
  }

  else if (CFArrayGetCount(*(DerivedStorage + 56)) >= 1)
  {
    v5 = *(v3 + 56);
    v6 = 0;
    goto LABEL_4;
  }

  result = 0;
LABEL_10:
  v10 = 0;
  *(v1 + 16) = result;
LABEL_11:
  *(v1 + 24) = v10;
  return result;
}

uint64_t surrogatePlayer_setRateAndAnchorTimeInCacheInternal(uint64_t a1)
{
  OUTLINED_FUNCTION_172(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    result = 4294954511;
    goto LABEL_18;
  }

  v3 = *(DerivedStorage + 56);
  if (!v3 || CFArrayGetCount(v3) <= 0)
  {
    OUTLINED_FUNCTION_303();
    result = FigSignalErrorAtGM();
    goto LABEL_18;
  }

  FigCFArrayGetFirstValue();
  v4 = CMBaseObjectGetDerivedStorage();
  v5 = *v1;
  v19 = 0;
  v18 = v5;
  surrogatePlayer_currentRealPlayerInternal(&v18);
  v6 = *(&v18 + 1);
  if (*(&v18 + 1) && *(v4 + 162))
  {
    RateDict = surrogatePlayer_makeRateDict(0, *(v1 + 2));
    v1[8] = v6;
  }

  else
  {
    v16 = *(v1 + 12);
    v17 = *(v1 + 28);
    v14 = *(v1 + 36);
    v15 = *(v1 + 52);
    v7 = *MEMORY[0x1E695E480];
    v8 = MEMORY[0x1E695E9D8];
    v9 = MEMORY[0x1E695E9E8];
    RateDict = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    Mutable = CFDictionaryCreateMutable(v7, 3, v8, v9);
    v12 = Mutable;
    if (RateDict)
    {
      if (!Mutable)
      {
        CFRelease(RateDict);
        RateDict = 0;
        goto LABEL_15;
      }

      v18 = v16;
      v19 = v17;
      if (FigCFDictionarySetCMTime() || (v18 = v14, v19 = v15, FigCFDictionarySetCMTime()) || FigCFDictionarySetInt32() || (CFDictionarySetValue(RateDict, @"AnchorTime", v12), FigCFDictionarySetFloat32()))
      {
        CFRelease(RateDict);
        RateDict = 0;
      }
    }

    else if (!Mutable)
    {
      goto LABEL_15;
    }

    CFRelease(v12);
  }

LABEL_15:
  *&v18 = *v1;
  *(&v18 + 1) = @"CurrentRate";
  v20 = 0;
  v21 = 0;
  v19 = RateDict;
  surrogatePlayer_setPropertyInCacheInternal(&v18);
  if (RateDict)
  {
    CFRelease(RateDict);
  }

  result = 0;
LABEL_18:
  *(v1 + 18) = result;
  return result;
}

uint64_t surrogatePlayer_removeItemFromValidItems(uint64_t a1)
{
  OUTLINED_FUNCTION_172(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CMBaseObjectGetDerivedStorage();
  if (surrogatePlayer_getIndexOfItem(DerivedStorage, *(v1 + 8)) == -1)
  {
    FigCFWeakReferenceTableRemoveValue();
    result = 0;
    *(v3 + 104) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_303();
    result = FigSignalErrorAtGM();
  }

  *(v1 + 16) = result;
  return result;
}

void surrogatePlayer_receiveOwnershipOfItem(uint64_t a1)
{
  OUTLINED_FUNCTION_172(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CMBaseObjectGetDerivedStorage();
  v27 = 0;
  v26 = 0;
  v4 = *(v3 + 48);
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v5)
  {
    Key = -12782;
    goto LABEL_21;
  }

  v6 = v5(v4, @"assetProperty_AssetType", &v26, 0, 0);
  if (v6)
  {
    Key = v6;
    goto LABEL_21;
  }

  if (v26 != 2)
  {
    v7 = 0;
LABEL_5:
    v8 = 0;
    goto LABEL_6;
  }

  v22 = surrogatePlaybackItem_copyAssetType();
  v7 = v27;
  if (!v22)
  {
    if (FigCFEqual())
    {
      v23 = 32;
    }

    else
    {
      if (!FigCFEqual())
      {
        goto LABEL_5;
      }

      v23 = 40;
    }

    v8 = *(DerivedStorage + v23);
    if (v8)
    {
      CFRetain(*(DerivedStorage + v23));
    }

LABEL_6:
    *context = *v1;
    FigSimpleMutexLock();
    OUTLINED_FUNCTION_49_15(*(v3 + 144), v9, v10, v11, v12, v13, v14, v15, v24, context[0]);
    FigSimpleMutexUnlock();
    v16 = *(v3 + 72);
    if (!v16)
    {
      goto LABEL_16;
    }

    v17 = *(v3 + 64);
    if (!v17)
    {
      goto LABEL_16;
    }

    v18 = *(v3 + 80);
    if (!v18)
    {
      goto LABEL_16;
    }

    v19 = *(*(CMBaseObjectGetVTable() + 16) + 144);
    if (v19)
    {
      Key = v19(v16, v17, v18);
    }

    else
    {
      Key = -12782;
    }

    v21 = *(v3 + 80);
    if (v21)
    {
      CFRelease(v21);
      *(v3 + 80) = 0;
    }

    if (!Key)
    {
LABEL_16:
      Key = FigCFWeakReferenceTableAddValueAndGetKey();
    }

    if (!v7)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  Key = v22;
  v8 = 0;
  if (v27)
  {
LABEL_18:
    CFRelease(v7);
  }

LABEL_19:
  if (v8)
  {
    CFRelease(v8);
  }

LABEL_21:
  *(v1 + 16) = Key;
}

uint64_t surrogatePlayer_removeItemWithoutReset_internal(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  CMBaseObjectGetDerivedStorage();
  v2 = OUTLINED_FUNCTION_502();
  if (surrogatePlayer_getIndexOfItem(v2, v3) == -1 || (v4 = OUTLINED_FUNCTION_178(), result = surrogatePlayer_carefullyRemoveItemOnQ(v4, v5, 0, v6), !result))
  {
    result = 0;
  }

  *(a1 + 16) = result;
  return result;
}

uint64_t surrogatePlayer_SetConnectionActive(char a1, int a2)
{
  if (*CMBaseObjectGetDerivedStorage())
  {
    return 4294954511;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v5 = Mutable;
    v6 = MEMORY[0x1E695E4D0];
    if (!a2)
    {
      v6 = MEMORY[0x1E695E4C0];
    }

    CFDictionarySetValue(Mutable, @"Active", *v6);
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    OUTLINED_FUNCTION_2_163(DerivedStorage, v8, v9, v10, v11, v12, v13, v14, v17, a1);
    v15 = 0;
    CFRelease(v5);
    return v15;
  }

  OUTLINED_FUNCTION_243();

  return FigSignalErrorAtGM();
}

uint64_t surrogatePlayer_DuckVolume(char a1, uint64_t a2, float a3, float a4)
{
  *(&v32 + 1) = a3;
  LODWORD(v32) = 0;
  if (*CMBaseObjectGetDerivedStorage())
  {
    return 4294954511;
  }

  v7 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v9 = Mutable;
    v10 = MEMORY[0x1E695E4D0];
    if (!a2)
    {
      v10 = MEMORY[0x1E695E4C0];
    }

    CFDictionarySetValue(Mutable, @"DuckDown", *v10);
    v11 = CFNumberCreate(v7, kCFNumberFloat32Type, &v32 + 4);
    if (v11)
    {
      v12 = v11;
      CFDictionarySetValue(v9, @"DuckVolume", v11);
      v13 = CFNumberCreate(v7, kCFNumberFloat32Type, &v32);
      if (v13)
      {
        CFDictionarySetValue(v9, @"RampDuration", v13);
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        v33 = @"DuckVolume";
        v35 = 0;
        v36 = 0;
        v34 = v9;
        OUTLINED_FUNCTION_2_163(DerivedStorage, v15, v16, v17, v18, v19, v20, v21, v32, a1);
        v22 = v35;
        v23 = v36;
        if (v35)
        {
          v24 = *(&v32 + 1);
          v25 = *(CMBaseObjectGetVTable() + 32);
          if (v25 && (v26 = *(v25 + 8)) != 0)
          {
            v22 = v26(v22, a2, v24, a4);
          }

          else
          {
            v22 = 4294954514;
          }
        }

        if (v23)
        {
          v27 = *(&v32 + 1);
          v28 = *(CMBaseObjectGetVTable() + 32);
          if (v28)
          {
            v29 = *(v28 + 8);
            if (v29)
            {
              v29(v23, a2, v27, a4);
            }
          }
        }
      }

      else
      {
        OUTLINED_FUNCTION_429();
        v22 = FigSignalErrorAtGM();
      }

      CFRelease(v9);
      CFRelease(v12);
      if (!v13)
      {
        return v22;
      }

      v30 = v13;
    }

    else
    {
      OUTLINED_FUNCTION_429();
      v22 = FigSignalErrorAtGM();
      v30 = v9;
    }

    CFRelease(v30);
    return v22;
  }

  OUTLINED_FUNCTION_429();

  return FigSignalErrorAtGM();
}

uint64_t surrogatePlayer_SilentMute(char a1)
{
  if (*CMBaseObjectGetDerivedStorage())
  {
    return 4294954511;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_2_163(DerivedStorage, v3, v4, v5, v6, v7, v8, v9, v12, a1);
  return 0;
}

const void *surrogatePlaybackItem_applyCachedItemPropertyToRealPlaybackItem_cold_1()
{
  OUTLINED_FUNCTION_187();
  valuePtr = 0;
  Value = CFDictionaryGetValue(v2, @"SeekID");
  if (Value)
  {
    CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
  }

  result = CFDictionaryGetValue(v1, @"Date");
  if (result)
  {
    v5 = result;
    v6 = valuePtr;
    VTable = CMBaseObjectGetVTable();
    v8 = *(VTable + 16);
    result = (VTable + 16);
    v9 = *(v8 + 128);
    if (v9)
    {
      return v9(v0, v5, v6);
    }
  }

  return result;
}

uint64_t surrogatePlayer_handleSetProperty_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t surrogatePlayer_handleSetProperty_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t surrogatePlayer_handleSetProperty_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t surrogatePlayer_handleSetProperty_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t surrogatePlayer_handleSetProperty_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t surrogatePlayer_handleSetProperty_cold_6(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t surrogatePlayer_handleSetProperty_cold_7(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t surrogatePlayer_handleSetProperty_cold_8(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t surrogatePlayer_handleSetProperty_cold_9(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void surrogatePlayer_handleSetProperty_cold_10(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a1 & 1) == 0)
  {
    OUTLINED_FUNCTION_216_0();
    v8 = CFGetTypeID(v7);
    if (v8 == CFBooleanGetTypeID())
    {
      Value = CFBooleanGetValue(v5);
      if (*(v4 + 98) != Value)
      {

        surrogatePlayer_handleWaitForVideoTargetConditionChange(a4, 1, Value, 0);
      }
    }
  }
}

uint64_t surrogatePlayer_deferInitiateLoadingOfItemAssetType_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t surrogatePlayer_startPrerollInternal_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t surrogatePlayer_startPrerollInternal_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t surrogatePlayer_startPrerollInternal_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMetricInitialLikelyToKeepUpEventDeserializeAndCopy(void *a1, void *a2)
{
  v30 = *MEMORY[0x1E6960C70];
  v31 = *(MEMORY[0x1E6960C70] + 16);
  v28 = 0;
  cf = 0;
  v26 = 0;
  v27 = 0;
  if (a1 && a2)
  {
    AllocatorForMedia = FigGetAllocatorForMedia();
    v5 = MEMORY[0x1E695E9C0];
    Mutable = CFArrayCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9C0]);
    v7 = FigGetAllocatorForMedia();
    v8 = CFArrayCreateMutable(v7, 0, v5);
    v9 = FigGetAllocatorForMedia();
    v10 = CFArrayCreateMutable(v9, 0, v5);
    v11 = v10;
    if (Mutable && v8 && v10)
    {
      v12 = xpc_dictionary_get_double(a1, "TimeTaken");
      CMTime = FigXPCMessageGetCMTime();
      if (!CMTime)
      {
        CMTime = FigXPCMessageCopyCFDate();
        if (!CMTime)
        {
          CMTime = FigXPCMessageCopyCFString();
          if (!CMTime)
          {
            CMTime = FigXPCMessageCopyCFArray();
            if (!CMTime)
            {
              v14 = xpc_dictionary_get_value(a1, "Variant");
              CMTime = FigAlternateCreateWithXPCObject(v14, 0, &v27);
              if (!CMTime)
              {
                v15 = xpc_dictionary_get_value(a1, "MediaPlaylistRequestEvents");
                v16 = xpc_dictionary_get_value(a1, "MediaSegmentRequestEvents");
                v17 = xpc_dictionary_get_value(a1, "ContentKeyRequestEvents");
                if (FigXPCArrayGetCount())
                {
                  v18 = 0;
                  while (1)
                  {
                    value[0] = 0;
                    xpc_array_get_value(v15, v18);
                    CMTime = FigMetricEventDeserializeEventAndCopy();
                    if (CMTime)
                    {
                      break;
                    }

                    CFArrayAppendValue(Mutable, value[0]);
                    if (FigXPCArrayGetCount() <= ++v18)
                    {
                      goto LABEL_15;
                    }
                  }
                }

                else
                {
LABEL_15:
                  if (FigXPCArrayGetCount())
                  {
                    v19 = 0;
                    while (1)
                    {
                      value[0] = 0;
                      xpc_array_get_value(v16, v19);
                      CMTime = FigMetricEventDeserializeEventAndCopy();
                      if (CMTime)
                      {
                        break;
                      }

                      CFArrayAppendValue(v8, value[0]);
                      if (FigXPCArrayGetCount() <= ++v19)
                      {
                        goto LABEL_19;
                      }
                    }
                  }

                  else
                  {
LABEL_19:
                    if (FigXPCArrayGetCount())
                    {
                      v20 = 0;
                      while (1)
                      {
                        value[0] = 0;
                        xpc_array_get_value(v17, v20);
                        CMTime = FigMetricEventDeserializeEventAndCopy();
                        if (CMTime)
                        {
                          break;
                        }

                        CFArrayAppendValue(v11, value[0]);
                        if (FigXPCArrayGetCount() <= ++v20)
                        {
                          goto LABEL_23;
                        }
                      }
                    }

                    else
                    {
LABEL_23:
                      v21 = FigGetAllocatorForMedia();
                      *value = v30;
                      v25 = v31;
                      CMTime = FigMetricItemInitialLikelyToKeepUpEventCreate(v21, value, cf, v28, v27, v26, Mutable, v8, v12, v11, a2);
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    else
    {
      OUTLINED_FUNCTION_111();
      CMTime = FigSignalErrorAtGM();
    }

    v22 = CMTime;
  }

  else
  {
    OUTLINED_FUNCTION_111();
    v22 = FigSignalErrorAtGM();
    Mutable = 0;
    v8 = 0;
    v11 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v28)
  {
    CFRelease(v28);
  }

  if (v27)
  {
    CFRelease(v27);
  }

  if (v26)
  {
    CFRelease(v26);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  return v22;
}

uint64_t FigMetricLikelyToKeepUpEventDeserializeAndCopy(void *a1, void *a2)
{
  v16 = *MEMORY[0x1E6960C70];
  v17 = *(MEMORY[0x1E6960C70] + 16);
  v14 = 0;
  cf = 0;
  v12 = 0;
  v13 = 0;
  if (a1 && a2)
  {
    v4 = xpc_dictionary_get_double(a1, "TimeTaken");
    CMTime = FigXPCMessageGetCMTime();
    if (!CMTime)
    {
      CMTime = FigXPCMessageCopyCFDate();
      if (!CMTime)
      {
        CMTime = FigXPCMessageCopyCFString();
        if (!CMTime)
        {
          CMTime = FigXPCMessageCopyCFArray();
          if (!CMTime)
          {
            value = xpc_dictionary_get_value(a1, "Variant");
            CMTime = FigAlternateCreateWithXPCObject(value, 0, &v13);
            if (!CMTime)
            {
              AllocatorForMedia = FigGetAllocatorForMedia();
              v10 = v16;
              v11 = v17;
              CMTime = FigMetricItemLikelyToKeepUpEventCreateInternal(AllocatorForMedia, &v10, cf, v14, v13, v12, a2, v4);
            }
          }
        }
      }
    }
  }

  else
  {
    CMTime = FigSignalErrorAtGM();
  }

  v8 = CMTime;
  if (cf)
  {
    CFRelease(cf);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  return v8;
}

uint64_t meltku_serialize(uint64_t a1, void *a2)
{
  value = 0;
  if (!a1 || !a2)
  {
    v6 = FigSignalErrorAtGM();
LABEL_31:
    v17 = v6;
    goto LABEL_29;
  }

  v4 = *(*(CMBaseObjectGetVTable() + 40) + 8);
  if (v4)
  {
    v5 = v4(a1);
  }

  else
  {
    v5 = 0;
  }

  v6 = FigAlternateCopyAsXPCObject(v5, &value);
  if (v6)
  {
    goto LABEL_31;
  }

  v7 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  v8 = v7 ? v7(a1) : -12782;
  xpc_dictionary_set_int64(a2, "EventID", v8);
  v9 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (v9)
  {
    v9(&v19, a1);
  }

  else
  {
    v19 = *MEMORY[0x1E6960C70];
    v20 = *(MEMORY[0x1E6960C70] + 16);
  }

  v6 = FigXPCMessageSetCMTime();
  if (v6)
  {
    goto LABEL_31;
  }

  v10 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (v10)
  {
    v10(a1);
  }

  v6 = FigXPCMessageSetCFDate();
  if (v6)
  {
    goto LABEL_31;
  }

  v11 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (v11)
  {
    v12 = v11(a1);
  }

  else
  {
    v12 = 0;
  }

  v13 = FigXPCMessageSetCFString();
  if (v13)
  {
    v17 = v13;
    if (!v12)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v14 = *(*(CMBaseObjectGetVTable() + 40) + 48);
  v15.n128_u64[0] = 0;
  if (v14)
  {
    v15.n128_f64[0] = v14(a1, v15);
  }

  xpc_dictionary_set_double(a2, "TimeTaken", v15.n128_f64[0]);
  v16 = *(*(CMBaseObjectGetVTable() + 40) + 16);
  if (v16)
  {
    v16(a1);
  }

  v17 = FigXPCMessageSetCFArray();
  if (!v17)
  {
    xpc_dictionary_set_value(a2, "Variant", value);
  }

  if (v12)
  {
LABEL_28:
    CFRelease(v12);
  }

LABEL_29:
  FigXPCRelease();
  return v17;
}

uint64_t FigMetricItemInitialLikelyToKeepUpEventCreate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMetricItemLikelyToKeepUpEventCreateInternal_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMetricItemInternalInitialLikelyToKeepUpEventCreateInternal_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t meiltku_setSessionID_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t meiltku_setMediaTime_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t meiltku_serialize_cold_4(uint64_t a1, _DWORD *a2)
{
  *a2 = FigSignalErrorAtGM();

  return FigXPCRelease();
}

uint64_t clcpcgcfsb_AddSampleBuffer(uint64_t a1, opaqueCMSampleBuffer *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v5 = DerivedStorage;
    if (!CMSampleBufferGetNumSamples(a2))
    {
      return 0;
    }

    v6 = *(v5 + 8);
    if (v6)
    {
LABEL_4:
      v7 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (!v7)
      {
        return 4294954514;
      }

      v8 = v7(v6, a2);
      if (!v8)
      {
        CMSampleBufferGetOutputPresentationTimeStamp(&lhs, a2);
        CMSampleBufferGetOutputDuration(&rhs, a2);
        CMTimeAdd(&v20, &lhs, &rhs);
        *(v5 + 48) = v20;
      }

      return v8;
    }

    FormatDescription = CMSampleBufferGetFormatDescription(a2);
    v10 = *v5;
    v20.value = 0;
    LODWORD(lhs.value) = 0;
    LODWORD(rhs.value) = 0;
    ClosedCaptionServiceFormatAndServiceIndexFromFormatDescription = FigClosedCaptionGetClosedCaptionServiceFormatAndServiceIndexFromFormatDescription(FormatDescription, &lhs, &rhs);
    if (ClosedCaptionServiceFormatAndServiceIndexFromFormatDescription)
    {
      goto LABEL_20;
    }

    if (!LODWORD(rhs.value) || !LODWORD(lhs.value) || LODWORD(lhs.value) == 1681272888)
    {
      ClosedCaptionServiceFormatAndServiceIndexFromFormatDescription = FigCEA608CaptionDecoderCreate(v10, FormatDescription, clcpcgcfsbCaptionDecoderCallback, a1, 0, &v20);
      if (ClosedCaptionServiceFormatAndServiceIndexFromFormatDescription)
      {
LABEL_20:
        v8 = ClosedCaptionServiceFormatAndServiceIndexFromFormatDescription;
LABEL_21:
        if (v20.value)
        {
          CFRelease(v20.value);
        }

        if (v8)
        {
          return v8;
        }

        v6 = *(v5 + 8);
        goto LABEL_4;
      }

      SInt32 = FigCFNumberCreateSInt32();
      if (SInt32)
      {
        v13 = SInt32;
        FigBytePumpGetFigBaseObject(v20.value);
        v15 = v14;
        v16 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v16)
        {
          v8 = v16(v15, 0x1F0B44258, v13);
          if (!v8)
          {
            *(v5 + 8) = v20.value;
            v20.value = 0;
          }
        }

        else
        {
          v8 = 4294954514;
        }

        CFRelease(v13);
        goto LABEL_21;
      }
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    ClosedCaptionServiceFormatAndServiceIndexFromFormatDescription = FigSignalErrorAtGM();
    goto LABEL_20;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_3_5();

  return FigSignalErrorAtGM();
}

uint64_t clcpcgcfsb_Finish()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 8);
  if (!v1)
  {
LABEL_4:
    v4 = *(DerivedStorage + 48);
    v5 = *(DerivedStorage + 64);
    return clcpcgcfsbOutputLastCaptionElements(DerivedStorage, &v4, 0);
  }

  v2 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v2)
  {
    v4 = *MEMORY[0x1E6960C88];
    v5 = *(MEMORY[0x1E6960C88] + 16);
    result = v2(v1, &v4, 0);
    if (result)
    {
      return result;
    }

    goto LABEL_4;
  }

  return 4294954514;
}

uint64_t clcpcgcfsbOutputLastCaptionElements(uint64_t a1, uint64_t a2, const __CFArray *a3)
{
  if ((*(a1 + 28) & 1) == 0)
  {
    return 0;
  }

  v4 = v3;
  HIDWORD(v198) = 0;
  CaptionMode = clcpcgcfsbGetCaptionMode(*(a1 + 40), &v198 + 1);
  if (CaptionMode)
  {
    return CaptionMode;
  }

  v16 = MEMORY[0x1E6960C70];
  switch(HIDWORD(v198))
  {
    case 0:
      OUTLINED_FUNCTION_12_62();
      if ((*(a1 + 104) & 1) == 0)
      {
        *(a1 + 92) = *(a1 + 16);
        *(a1 + 108) = *(a1 + 32);
      }

      if (a3)
      {
        v25 = OUTLINED_FUNCTION_14_57(v17, v18, v19, v20, v21, v22, v23, v24, v165, allocator, v182, v191, theArray, *(&theArray + 1), v197, v198, v199[0], v199[1], v200, v201, time1.value, *&time1.timescale, time1.epoch, v203, v204, v205, v206.start.value);
        if (v25)
        {
          return v25;
        }

        if (!LODWORD(v206.start.value))
        {
          return 0;
        }
      }

      v26 = OUTLINED_FUNCTION_22_34();
      if (v26)
      {
        goto LABEL_155;
      }

      time1 = *(a1 + 92);
      memset(&time2, 0, sizeof(time2));
      OUTLINED_FUNCTION_47_7(v26, v27, v28, v29, v30, v31, v32, v33, v165, allocator, v182, v191, theArray);
      *&v207.value = *(a1 + 92);
      v34 = OUTLINED_FUNCTION_21_36(*(a1 + 108), v166, allocatorc, v183, v192, theArray, *(&theArray + 1), v197, v198, v199[0], v199[1], v200, v201, time1.value, *&time1.timescale, time1.epoch, v203, v204, v205, v206.start.value);
      OUTLINED_FUNCTION_4_131(v34, v35, v36, v37, v38, v39, v40, v41, v167, allocatord, v184, theArray, *(&theArray + 1), v197, v198, *v199, v200, v201, *&time1.value, time1.epoch, v203, v204, v205, v206.start.value);
      v25 = (a2)(v3, &v206, *(a1 + 80));
      if (v25)
      {
        goto LABEL_92;
      }

      *(a1 + 92) = *v16;
      *(a1 + 108) = *(v16 + 16);
      if (!v3)
      {
        return v25;
      }

      goto LABEL_93;
    case 1:
      *v199 = *a2;
      v200 = *(a2 + 16);
      allocatora = *a1;
      v46 = *(a1 + 88);
      *&theArray = 0;
      v209 = 0;
      memset(&v208, 0, sizeof(v208));
      *v185 = *MEMORY[0x1E6960C70];
      *&v207.value = *MEMORY[0x1E6960C70];
      v47 = *(MEMORY[0x1E6960C70] + 16);
      v207.epoch = v47;
      v48 = *(a1 + 120);
      if (v48)
      {
        if (!a3)
        {
          goto LABEL_36;
        }
      }

      else
      {
        if (clcpcgcfsbCaptionSlicerCreate(allocatora, (a1 + 120)))
        {
          goto LABEL_129;
        }

        *&v206.start.value = *(a1 + 16);
        OUTLINED_FUNCTION_8_74();
        if (FigCFArrayAppendCMTime())
        {
          goto LABEL_129;
        }

        OUTLINED_FUNCTION_11_65();
        if (!a3)
        {
          goto LABEL_36;
        }
      }

      if (OUTLINED_FUNCTION_14_57(CaptionMode, v9, v10, v11, v12, v13, v14, v15, v165, allocatora, v185[0], v185[1], theArray, *(&theArray + 1), v197, v198, v199[0], v199[1], v200, v201, time1.value, *&time1.timescale, time1.epoch, v203, v204, v205, v206.start.value))
      {
        goto LABEL_129;
      }

      if (LODWORD(v206.start.value) == 1)
      {
        if (clcpcgcfsbCreateCaptionDataArray(*(a1 + 40), v46, allocatora, &theArray) || clcpcgcfsbCreateCaptionDataArray(a3, v46, allocatora, &v209))
        {
          goto LABEL_129;
        }

        if (theArray)
        {
          Count = CFArrayGetCount(theArray);
        }

        else
        {
          Count = 0;
        }

        v147 = v209;
        if (v209)
        {
          v147 = CFArrayGetCount(v209);
        }

        if (Count >= v147)
        {
          if (Count <= v147)
          {
            goto LABEL_129;
          }

          if (Count - v147 == 1)
          {
            OUTLINED_FUNCTION_3_133(*(v48 + 8), v51, v52, v53, v54, v55, v56, v57, v165, allocatora, v185[0], v185[1], theArray, *(&theArray + 1), v197, v198, *v199);
            if (FigCFArrayAppendCMTime())
            {
              goto LABEL_129;
            }

            clcpcgcfsbCaptionSlicerGetNumCaptionDataWithStartAndEndTime(v48);
            *&v206.start.value = *v186;
            v206.start.epoch = v47;
            CMTimeAtIndex = FigCFArrayGetCMTimeAtIndex();
            if (CMTimeAtIndex)
            {
              OUTLINED_FUNCTION_18_42(CMTimeAtIndex, v157, v158, v159, v160, v161, v162, v163, v168, allocatorb, v186[0], v186[1], theArray, *(&theArray + 1), v197, v198, v199[0], v199[1], v200, v201, time1.value, *&time1.timescale, time1.epoch, v203, v204, v205, v164, v206.start.value);
            }

            else
            {
              fig_log_get_emitter();
              OUTLINED_FUNCTION_20_0();
              if (FigSignalErrorAtGM())
              {
                goto LABEL_129;
              }
            }

            HIDWORD(v168) = 1;
            goto LABEL_41;
          }
        }

        else if ((v147 - Count) == 1)
        {
          if (!clcpcgcfsbCreateBottomLineCaptionData(*(a1 + 40), v46, 1, allocatora, &v208.epoch))
          {
            epoch = v208.epoch;
            CFArrayAppendValue(*(v48 + 16), v208.epoch);
            if (epoch)
            {
              CFRelease(epoch);
              v208.epoch = 0;
            }

            OUTLINED_FUNCTION_3_133(*v48, v149, v150, v151, v152, v153, v154, v155, v165, allocatora, v185[0], v185[1], theArray, *(&theArray + 1), v197, v198, *v199);
            FigCFArrayAppendCMTime();
          }

          goto LABEL_129;
        }

        fig_log_get_emitter();
        OUTLINED_FUNCTION_20_0();
        FigSignalErrorAtGM();
        goto LABEL_129;
      }

LABEL_36:
      if (!clcpcgcfsbCreateBottomLineCaptionData(*(a1 + 40), v46, 0, allocatora, &v208.epoch))
      {
        v59 = v208.epoch;
        CFArrayAppendValue(*(v48 + 16), v208.epoch);
        if (v59)
        {
          CFRelease(v59);
          v208.epoch = 0;
        }

        OUTLINED_FUNCTION_3_133(v60, v61, v62, v63, v64, v65, v66, v67, v165, allocatora, v185[0], v185[1], theArray, *(&theArray + 1), v197, v198, *v199);
        if (!clcpcgcfsbCaptionSlicerSetAllPendingCaptionEndTimes(v48))
        {
          HIDWORD(v168) = 0;
          *&v207.value = *v199;
          v207.epoch = v200;
LABEL_41:
          *&v206.start.value = *(a1 + 128);
          v206.start.epoch = *(a1 + 144);
          OUTLINED_FUNCTION_19_40();
          if (clcpcgcfsbCaptionSlicerCreateCaptionGroupArray(v48, &v206.start, &time1, allocatorb, &v208.timescale, &v208))
          {
            goto LABEL_129;
          }

          v68 = *&v208.timescale;
          if (*&v208.timescale)
          {
            v69 = CFArrayGetCount(*&v208.timescale);
            if (v69 >= 1)
            {
              v70 = v69;
              for (i = 0; i != v70; ++i)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(v68, i);
                v80 = OUTLINED_FUNCTION_13_48(ValueAtIndex, v73, v74, v75, v76, v77, v78, v79, v168, allocatorb, v186[0], v186[1], theArray, *(&theArray + 1), v197, v198, v199[0], v199[1], v200, v201, time1.value, *&time1.timescale, time1.epoch, v203, v204, v205, *&v206.start.value, *&v206.start.epoch, *&v206.duration.timescale);
                CMTimeRangeMakeFromDictionary(&v206, v80);
                v89 = OUTLINED_FUNCTION_9_66(v81, v82, v83, v84, v85, v86, v87, v88, v169, allocatore, v187, v193, *&theArray, *(&theArray + 1), *&v197, *&v198, *v199, *&v199[1], *&v200, *&v201, *&time1.value, *&time1.timescale, *&time1.epoch, *&v203, *&v204, *&v205, *&v206.start.value, *&v206.start.timescale, *&v206.start.epoch, *&v206.duration.value, *&v206.duration.timescale);
                if (v90(ValueAtIndex, v89))
                {
                  goto LABEL_129;
                }
              }
            }
          }

          if (*v48)
          {
            v91 = CFArrayGetCount(*v48);
          }

          else
          {
            v91 = 0;
          }

          v123 = *(v48 + 8);
          if (v123)
          {
            v124 = CFArrayGetCount(v123);
          }

          else
          {
            v124 = 0;
          }

          v125 = *(v48 + 16);
          if (v125)
          {
            v126 = CFArrayGetCount(v125);
          }

          else
          {
            v126 = 0;
          }

          if (v124 >= 1)
          {
            v127 = 0;
            while (1)
            {
              *&v206.start.value = *v186;
              v206.start.epoch = v47;
              if (!FigCFArrayGetCMTimeAtIndex())
              {
                break;
              }

              time1 = v206.start;
              time2 = v207;
              if (CMTimeCompare(&time1, &time2) <= 0)
              {
                CFArrayRemoveValueAtIndex(*(v48 + 8), v127);
                if (v127 < v91)
                {
                  CFArrayRemoveValueAtIndex(*v48, v127);
                  --v91;
                }

                --v124;
                if (v127 < v126)
                {
                  CFArrayRemoveValueAtIndex(*(v48 + 16), v127);
                  --v126;
                }
              }

              else
              {
                ++v127;
              }

              if (v127 >= v124)
              {
                goto LABEL_88;
              }
            }

            fig_log_get_emitter();
            OUTLINED_FUNCTION_20_0();
            if (FigSignalErrorAtGM())
            {
              goto LABEL_129;
            }
          }

LABEL_88:
          *(a1 + 128) = v207;
          if ((v168 & 0x100000000) == 0)
          {
            clcpcgcfsbCaptionSlicerRelease(allocatorb, v48);
            *(a1 + 120) = 0;
            *(a1 + 128) = *v186;
            *(a1 + 144) = v47;
          }
        }
      }

LABEL_129:
      if (v208.value)
      {
        CFRelease(v208.value);
      }

      if (*&v208.timescale)
      {
        CFRelease(*&v208.timescale);
      }

      if (v208.epoch)
      {
        CFRelease(v208.epoch);
      }

      if (v209)
      {
        CFRelease(v209);
      }

      if (theArray)
      {
        CFRelease(theArray);
      }

      return 0;
    case 2:
      OUTLINED_FUNCTION_12_62();
      v26 = OUTLINED_FUNCTION_22_34();
      if (v26)
      {
LABEL_155:
        v25 = v26;
        v4 = v209;
        if (!v209)
        {
          return v25;
        }
      }

      else
      {
        time1 = *(a1 + 16);
        memset(&time2, 0, sizeof(time2));
        OUTLINED_FUNCTION_47_7(v26, v128, v129, v130, v131, v132, v133, v134, v165, allocator, v182, v191, theArray);
        *&v207.value = *(a1 + 16);
        v135 = OUTLINED_FUNCTION_21_36(*(a1 + 32), v171, allocatorg, v189, v195, theArray, *(&theArray + 1), v197, v198, v199[0], v199[1], v200, v201, time1.value, *&time1.timescale, time1.epoch, v203, v204, v205, v206.start.value);
        OUTLINED_FUNCTION_4_131(v135, v136, v137, v138, v139, v140, v141, v142, v172, allocatorh, v190, theArray, *(&theArray + 1), v197, v198, *v199, v200, v201, *&time1.value, time1.epoch, v203, v204, v205, v206.start.value);
        v25 = (a2)(v3, &v206, *(a1 + 80));
LABEL_92:
        if (!v3)
        {
          return v25;
        }
      }

LABEL_93:
      v143 = v4;
      goto LABEL_153;
    case 3:
      time2 = *a2;
      v42 = *a1;
      v43 = *(a1 + 88);
      v207.value = 0;
      v199[0] = 0;
      *&theArray = 0;
      v208.epoch = 0;
      v209 = 0;
      *&v208.timescale = 0;
      LODWORD(v208.value) = 0;
      v44 = (a1 + 120);
      v45 = *(a1 + 120);
      if (v45)
      {
        if (!a3)
        {
          goto LABEL_54;
        }

LABEL_25:
        CaptionDataArray = OUTLINED_FUNCTION_14_57(CaptionMode, v44, v10, v11, v12, v13, v14, v15, v165, allocator, v182, v191, theArray, *(&theArray + 1), v197, v198, v199[0], v199[1], v200, v201, time1.value, *&time1.timescale, time1.epoch, v203, v204, v205, v206.start.value);
        if (!CaptionDataArray)
        {
          if (LODWORD(v206.start.value) != 3)
          {
            goto LABEL_54;
          }

          CaptionDataArray = OUTLINED_FUNCTION_23_41();
          if (!CaptionDataArray)
          {
            CaptionDataArray = clcpcgcfsbCreateCaptionDataArray(a3, v43, v42, v199);
            if (!CaptionDataArray)
            {
              value = v207.value;
              if (v207.value)
              {
                v93 = CFArrayGetCount(v207.value);
              }

              else
              {
                v93 = 0;
              }

              v144 = v199[0];
              if (v199[0])
              {
                v144 = CFArrayGetCount(v199[0]);
              }

              if (v144 <= v93)
              {
                v25 = 0;
                goto LABEL_144;
              }

              if ((v144 - v93) == 1)
              {
                CaptionDataRowNumberArray = clcpcgcfsbCreateCaptionDataRowNumberArray(value, v42, &v208.timescale);
                v96 = *&v208.timescale;
                if (CaptionDataRowNumberArray)
                {
                  goto LABEL_142;
                }

                CaptionDataRowNumberArray = clcpcgcfsbGetFirstNewRowNumber(*(a1 + 152), *&v208.timescale);
                if (CaptionDataRowNumberArray)
                {
                  goto LABEL_142;
                }

                if (LODWORD(v208.value))
                {
                  CaptionDataRowNumberArray = clcpcgcfsbCopyCaptionDataOnRowNumber(value, v208.value, &theArray);
                  if (CaptionDataRowNumberArray)
                  {
                    goto LABEL_142;
                  }

                  v145 = theArray;
                  CFArrayAppendValue(v45[2], theArray);
                  if (v145)
                  {
                    CFRelease(v145);
                    *&theArray = 0;
                  }

                  *&v206.start.value = *&time2.value;
                  OUTLINED_FUNCTION_8_74();
                  CaptionDataRowNumberArray = FigCFArrayAppendCMTime();
                  if (CaptionDataRowNumberArray)
                  {
                    goto LABEL_142;
                  }

                  v146 = *(a1 + 152);
                  *(a1 + 152) = v96;
                  if (v96)
                  {
                    CFRetain(v96);
                  }

                  if (v146)
                  {
                    CFRelease(v146);
                  }

                  goto LABEL_110;
                }

LABEL_141:
                fig_log_get_emitter();
                OUTLINED_FUNCTION_20_0();
                CaptionDataRowNumberArray = FigSignalErrorAtGM();
                goto LABEL_142;
              }

              fig_log_get_emitter();
              OUTLINED_FUNCTION_20_0();
              CaptionDataArray = FigSignalErrorAtGM();
            }
          }
        }

LABEL_26:
        v25 = CaptionDataArray;
        goto LABEL_144;
      }

      CaptionDataArray = clcpcgcfsbCaptionSlicerCreate(v42, v44);
      if (CaptionDataArray)
      {
        goto LABEL_26;
      }

      *&v206.start.value = *(a1 + 16);
      OUTLINED_FUNCTION_8_74();
      CaptionDataArray = FigCFArrayAppendCMTime();
      if (CaptionDataArray)
      {
        goto LABEL_26;
      }

      OUTLINED_FUNCTION_11_65();
      if (a3)
      {
        goto LABEL_25;
      }

LABEL_54:
      CaptionDataArray = OUTLINED_FUNCTION_23_41();
      if (CaptionDataArray)
      {
        goto LABEL_26;
      }

      v94 = v207.value;
      CaptionDataRowNumberArray = clcpcgcfsbCreateCaptionDataRowNumberArray(v207.value, v42, &v208.timescale);
      v96 = *&v208.timescale;
      if (CaptionDataRowNumberArray)
      {
        goto LABEL_142;
      }

      CaptionDataRowNumberArray = clcpcgcfsbGetFirstNewRowNumber(*(a1 + 152), *&v208.timescale);
      if (CaptionDataRowNumberArray)
      {
        goto LABEL_142;
      }

      if (!LODWORD(v208.value))
      {
        goto LABEL_141;
      }

      CaptionDataRowNumberArray = clcpcgcfsbCopyCaptionDataOnRowNumber(v94, v208.value, &theArray);
      if (CaptionDataRowNumberArray)
      {
        goto LABEL_142;
      }

      v97 = theArray;
      CFArrayAppendValue(v45[2], theArray);
      if (v97)
      {
        CFRelease(v97);
        *&theArray = 0;
      }

      *&v206.start.value = *&time2.value;
      OUTLINED_FUNCTION_8_74();
      CaptionDataRowNumberArray = clcpcgcfsbCaptionSlicerSetAllPendingCaptionEndTimes(v45);
      if (CaptionDataRowNumberArray)
      {
        goto LABEL_142;
      }

      time1 = time2;
      *&v206.start.value = *(a1 + 128);
      OUTLINED_FUNCTION_8_74();
      CaptionDataRowNumberArray = clcpcgcfsbCaptionSlicerCreateCaptionGroupArray(v45, v98, &time1, v42, &v209, &v208.epoch);
      if (CaptionDataRowNumberArray)
      {
        goto LABEL_142;
      }

      v99 = v209;
      if (v209)
      {
        v100 = CFArrayGetCount(v209);
        if (v100 >= 1)
        {
          v101 = v100;
          v102 = 0;
          while (1)
          {
            v103 = CFArrayGetValueAtIndex(v99, v102);
            v111 = OUTLINED_FUNCTION_13_48(v103, v104, v105, v106, v107, v108, v109, v110, v165, allocator, v182, v191, theArray, *(&theArray + 1), v197, v198, v199[0], v199[1], v200, v201, time1.value, *&time1.timescale, time1.epoch, v203, v204, v205, *&v206.start.value, *&v206.start.epoch, *&v206.duration.timescale);
            CMTimeRangeMakeFromDictionary(&v206, v111);
            v120 = OUTLINED_FUNCTION_9_66(v112, v113, v114, v115, v116, v117, v118, v119, v170, allocatorf, v188, v194, *&theArray, *(&theArray + 1), *&v197, *&v198, *v199, *&v199[1], *&v200, *&v201, *&time1.value, *&time1.timescale, *&time1.epoch, *&v203, *&v204, *&v205, *&v206.start.value, *&v206.start.timescale, *&v206.start.epoch, *&v206.duration.value, *&v206.duration.timescale);
            CaptionDataRowNumberArray = v121(v103, v120);
            if (CaptionDataRowNumberArray)
            {
              break;
            }

            if (v101 == ++v102)
            {
              goto LABEL_68;
            }
          }

LABEL_142:
          v25 = CaptionDataRowNumberArray;
          if (!v96)
          {
            goto LABEL_144;
          }

          goto LABEL_143;
        }
      }

LABEL_68:
      clcpcgcfsbCaptionSlicerRelease(v42, v45);
      *(a1 + 120) = 0;
      *(a1 + 128) = *v16;
      *(a1 + 144) = *(v16 + 16);
      v122 = *(a1 + 152);
      if (v122)
      {
        CFRelease(v122);
        v25 = 0;
        *(a1 + 152) = 0;
        if (!v96)
        {
          goto LABEL_144;
        }

LABEL_143:
        CFRelease(v96);
        goto LABEL_144;
      }

LABEL_110:
      v25 = 0;
      if (v96)
      {
        goto LABEL_143;
      }

LABEL_144:
      if (v208.epoch)
      {
        CFRelease(v208.epoch);
      }

      if (v209)
      {
        CFRelease(v209);
      }

      if (theArray)
      {
        CFRelease(theArray);
      }

      if (v199[0])
      {
        CFRelease(v199[0]);
      }

      v143 = v207.value;
      if (v207.value)
      {
LABEL_153:
        CFRelease(v143);
      }

      return v25;
    default:
      fig_log_get_emitter();
      OUTLINED_FUNCTION_20_0();

      return FigSignalErrorAtGM();
  }
}

uint64_t clcpcgcfsbCreateCaptionGroupWithoutSlice(const __CFArray *a1, int a2, const __CFAllocator *a3, void *a4)
{
  theArray = 0;
  v5 = clcpcgcfsbCreateCaptionDataArray(a1, a2, a3, &theArray);
  if (v5)
  {
    goto LABEL_6;
  }

  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (Count)
    {
      v7 = Count;
      if (Count <= 0xAAAAAAAAAAAAAAALL)
      {
        v12 = malloc_type_malloc(24 * Count, 0x1000040504FFAC1uLL);
        if (v12)
        {
          v9 = v12;
          v13 = *MEMORY[0x1E6960CC0];
          v14 = *(MEMORY[0x1E6960CC0] + 16);
          v15 = v12;
          do
          {
            *v15 = v13;
            v15[2] = v14;
            v15 += 3;
            --v7;
          }

          while (v7);
          Empty = FigCaptionGroupCreate();
          if (Empty)
          {
            goto LABEL_16;
          }

LABEL_8:
          v8 = 0;
          *a4 = 0;
          goto LABEL_9;
        }
      }

      fig_log_get_emitter();
      v5 = FigSignalErrorAtGM();
LABEL_6:
      v8 = v5;
      v9 = 0;
      goto LABEL_9;
    }
  }

  Empty = FigCaptionGroupCreateEmpty();
  v9 = 0;
  if (!Empty)
  {
    goto LABEL_8;
  }

LABEL_16:
  v8 = Empty;
LABEL_9:
  free(v9);
  if (theArray)
  {
    CFRelease(theArray);
  }

  return v8;
}

uint64_t clcpcgcfsbCaptionSlicerSetAllPendingCaptionEndTimes(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    Count = CFArrayGetCount(v2);
  }

  else
  {
    Count = 0;
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    v4 = CFArrayGetCount(v4);
  }

  v5 = Count - v4;
  if (v5 < 1)
  {
    return 0;
  }

  while (1)
  {
    result = FigCFArrayAppendCMTime();
    if (result)
    {
      break;
    }

    if (!--v5)
    {
      return 0;
    }
  }

  return result;
}

uint64_t clcpcgcfsbCaptionSlicerCreateCaptionGroupArray(const __CFArray **a1, CMTime *a2, uint64_t a3, const __CFAllocator *a4, uint64_t a5, CMTime *a6)
{
  NumCaptionDataWithStartAndEndTime = clcpcgcfsbCaptionSlicerGetNumCaptionDataWithStartAndEndTime(a1);
  value = 0;
  if (!NumCaptionDataWithStartAndEndTime)
  {
    v214 = 0;
    v18 = 0;
    v15 = 0;
    goto LABEL_62;
  }

  Mutable = CFArrayCreateMutable(a4, 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_3();
    v15 = FigSignalErrorAtGM();
    v16 = 0;
    v18 = 0;
    v214 = 0;
    NumCaptionDataWithStartAndEndTime = 0;
LABEL_73:
    v17 = 0;
    goto LABEL_56;
  }

  v185 = Mutable;
  if (NumCaptionDataWithStartAndEndTime > 0xAAAAAAAAAAAAAAALL || (v214 = malloc_type_malloc(24 * NumCaptionDataWithStartAndEndTime, 0x1000040504FFAC1uLL)) == 0)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_3();
    v15 = FigSignalErrorAtGM();
    v16 = 0;
    v214 = 0;
    NumCaptionDataWithStartAndEndTime = 0;
LABEL_5:
    v17 = 0;
    v18 = v185;
    goto LABEL_56;
  }

  v160 = NumCaptionDataWithStartAndEndTime;
  NumCaptionDataWithStartAndEndTime = malloc_type_malloc(24 * NumCaptionDataWithStartAndEndTime, 0x1000040504FFAC1uLL);
  if (!NumCaptionDataWithStartAndEndTime)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_3();
    v15 = FigSignalErrorAtGM();
    v16 = 0;
    goto LABEL_5;
  }

  v154 = v6;
  v166 = a5;
  v172 = a6;
  v225 = *a2;
  v222 = *a3;
  v223 = *(a3 + 16);
  v19 = clcpcgcfsbCaptionSlicerGetNumCaptionDataWithStartAndEndTime(a1);
  allocator = a4;
  v20 = CFArrayCreateMutable(a4, 0, MEMORY[0x1E695E9C0]);
  v18 = v185;
  if (!v20)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_2();
    v147 = FigSignalErrorAtGM();
    v16 = 0;
    if (v147)
    {
      v15 = v147;
      goto LABEL_77;
    }

    goto LABEL_52;
  }

  v21 = v20;
  v230.start = v225;
  appended = FigCFArrayAppendCMTime();
  if (appended)
  {
    goto LABEL_72;
  }

  v23 = MEMORY[0x1E6960C70];
  if (v19 >= 1)
  {
    v24 = 0;
    *theArray = *MEMORY[0x1E6960C70];
    v25 = *(MEMORY[0x1E6960C70] + 16);
    do
    {
      *&v230.start.value = *theArray;
      v230.start.epoch = v25;
      CMTimeAtIndex = FigCFArrayGetCMTimeAtIndex();
      if (!CMTimeAtIndex)
      {
        goto LABEL_65;
      }

      v34 = OUTLINED_FUNCTION_7_89(CMTimeAtIndex, v27, v28, v29, v30, v31, v32, v33, v148, v154, v160, v166, v172, v178, v185, allocator, theArray[0], theArray[1], v208, v214, start.start.value, *&start.start.timescale, start.start.epoch, start.duration.value, *&start.duration.timescale, start.duration.epoch, *&v221.start.value, v221.start.epoch, v221.duration.value, *&v221.duration.timescale, v221.duration.epoch, v222, *(&v222 + 1), v223, v224, *&v225.value, v225.epoch, value, *&duration.start.value, duration.start.epoch);
      if ((v34 & 0x80000000) != 0 && (OUTLINED_FUNCTION_6_105(v34, v35, v36, v37, v38, v39, v40, v41, v148, v154, v160, v166, v172, v178, v185, allocator, theArray[0], theArray[1], v208, v214, start.start.value, *&start.start.timescale, *&start.start.epoch, *&start.duration.timescale, start.duration.epoch, *&v221.start.value, v221.start.epoch, v221.duration.value, *&v221.duration.timescale, v221.duration.epoch, v222, v223, v224, v225.value, *&v225.timescale, v225.epoch, value, *&duration.start.value, duration.start.epoch) & 0x80000000) != 0)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*a1, v24);
        CFArrayAppendValue(v21, ValueAtIndex);
      }

      ++v24;
    }

    while (v19 != v24);
    v43 = 0;
    while (1)
    {
      *&v230.start.value = *theArray;
      v230.start.epoch = v25;
      v44 = FigCFArrayGetCMTimeAtIndex();
      if (!v44)
      {
        break;
      }

      v52 = OUTLINED_FUNCTION_7_89(v44, v45, v46, v47, v48, v49, v50, v51, v148, v154, v160, v166, v172, v178, v185, allocator, theArray[0], theArray[1], v208, v214, start.start.value, *&start.start.timescale, start.start.epoch, start.duration.value, *&start.duration.timescale, start.duration.epoch, *&v221.start.value, v221.start.epoch, v221.duration.value, *&v221.duration.timescale, v221.duration.epoch, v222, *(&v222 + 1), v223, v224, *&v225.value, v225.epoch, value, *&duration.start.value, duration.start.epoch);
      if ((v52 & 0x80000000) != 0 && (OUTLINED_FUNCTION_6_105(v52, v53, v54, v55, v56, v57, v58, v59, v148, v154, v160, v166, v172, v178, v185, allocator, theArray[0], theArray[1], v208, v214, start.start.value, *&start.start.timescale, *&start.start.epoch, *&start.duration.timescale, start.duration.epoch, *&v221.start.value, v221.start.epoch, v221.duration.value, *&v221.duration.timescale, v221.duration.epoch, v222, v223, v224, v225.value, *&v225.timescale, v225.epoch, value, *&duration.start.value, duration.start.epoch) & 0x80000000) != 0)
      {
        v60 = CFArrayGetValueAtIndex(a1[1], v43);
        CFArrayAppendValue(v21, v60);
      }

      if (v19 == ++v43)
      {
        goto LABEL_23;
      }
    }

LABEL_65:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_2();
    v15 = FigSignalErrorAtGM();
    goto LABEL_66;
  }

LABEL_23:
  *&v230.start.value = v222;
  v230.start.epoch = v223;
  appended = FigCFArrayAppendCMTime();
  if (appended)
  {
LABEL_72:
    v15 = appended;
    CFRelease(v21);
    v16 = 0;
    goto LABEL_73;
  }

  Count = CFArrayGetCount(v21);
  v231.location = 0;
  v231.length = Count;
  CFArraySortValues(v21, v231, clcpcgcfsbCaptionSlicerCompareSliceTime, 0);
  v62 = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
  if (!v62)
  {
    goto LABEL_65;
  }

  v16 = v62;
  if (Count > 1)
  {
    v63 = 0;
    v64 = Count - 2;
    *theArray = *MEMORY[0x1E6960CC0];
    v65 = *(MEMORY[0x1E6960CC0] + 16);
    while (1)
    {
      memset(&v221, 0, 24);
      v66 = CFArrayGetValueAtIndex(v21, v63);
      CMTimeMakeFromDictionary(&v221.start, v66);
      memset(&start, 0, 24);
      v67 = CFArrayGetValueAtIndex(v21, ++v63);
      CMTimeMakeFromDictionary(&start.start, v67);
      memset(&v230, 0, sizeof(v230));
      lhs = start.start;
      rhs = v221.start;
      v68 = CMTimeSubtract(&duration.start, &lhs, &rhs);
      OUTLINED_FUNCTION_18_42(v68, v69, v70, v71, v72, v73, v74, v75, v148, v154, v160, v166, v172, v178, v185, allocator, theArray[0], theArray[1], v208, v214, start.start.value, *&start.start.timescale, start.start.epoch, start.duration.value, *&start.duration.timescale, start.duration.epoch, v76, v221.start.value);
      CMTimeRangeMake(&v230, &lhs, &duration.start);
      *&duration.start.value = *theArray;
      duration.start.epoch = v65;
      lhs = v230.duration;
      if (CMTimeCompare(&duration.start, &lhs) < 0)
      {
        duration = v230;
        v77 = CMTimeRangeCopyAsDictionary(&duration, allocator);
        if (!v77)
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_3_2();
          v15 = FigSignalErrorAtGM();
          CFRelease(v16);
          v18 = v185;
LABEL_66:
          CFRelease(v21);
          v16 = 0;
          v145 = v166;
          v144 = v172;
          if (v15)
          {
LABEL_77:
            v17 = 0;
            goto LABEL_56;
          }

LABEL_53:
          v15 = 0;
          v17 = 0;
          *v145 = v18;
          v144->value = v16;
          v16 = 0;
          v18 = 0;
          goto LABEL_56;
        }

        v78 = v77;
        CFArrayAppendValue(v16, v77);
        CFRelease(v78);
      }

      if (v63 - 1 == v64)
      {
        CFRelease(v21);
        goto LABEL_33;
      }
    }
  }

  CFRelease(v21);
LABEL_33:
  v179 = CFArrayGetCount(v16);
  if (v179 < 1)
  {
    v18 = v185;
LABEL_52:
    v145 = v166;
    v144 = v172;
    goto LABEL_53;
  }

  theArray[0] = v16;
  v79 = 0;
  if (v160 <= 1)
  {
    v80 = 1;
  }

  else
  {
    v80 = v160;
  }

LABEL_37:
  memset(&v230, 0, sizeof(v230));
  v81 = CFArrayGetValueAtIndex(theArray[0], v79);
  CMTimeRangeMakeFromDictionary(&v230, v81);
  v17 = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
  if (v17)
  {
    v82 = 0;
    v83 = 0;
    while (1)
    {
      lhs = *v23;
      rhs = lhs;
      if (!FigCFArrayGetCMTimeAtIndex())
      {
        break;
      }

      v84 = FigCFArrayGetCMTimeAtIndex();
      if (!v84)
      {
        break;
      }

      memset(&duration, 0, sizeof(duration));
      *&v225.timescale = *&lhs.timescale;
      v225.epoch = lhs.epoch;
      OUTLINED_FUNCTION_15_49(v84, v85, v86, v87, v88, v89, v90, v91, v148, v154, v160, v166, v172, v179, v185, allocator, theArray[0], theArray[1], v208, v214, rhs.value, *&rhs.timescale, rhs.epoch, start.duration.value, *&start.duration.timescale, start.duration.epoch, v221.start.value, *&v221.start.timescale, v221.start.epoch, v221.duration.value, *&v221.duration.timescale, v221.duration.epoch, v222, *(&v222 + 1), v223, v224, lhs.value);
      OUTLINED_FUNCTION_19_40();
      v92 = CMTimeRangeMake(&duration, &start.start, &v221.start);
      OUTLINED_FUNCTION_20_35(v92, v93, v94, v95, v96, v97, v98, v99, v149, v155, v161, v167, v173, v180, v186, allocatora, theArraya, theArray_8, v209, v215, start.start.value, *&start.start.timescale, start.start.epoch, start.duration.value, *&start.duration.timescale, start.duration.epoch, v221.start.value, *&v221.start.timescale, v221.start.epoch, v221.duration.value, *&v221.duration.timescale, v221.duration.epoch, v222, *(&v222 + 1), v223, v224, v225.value, *&v225.timescale, v225.epoch, value, duration.start.value, *&duration.start.timescale, duration.start.epoch, duration.duration.value, *&duration.duration.timescale);
      start = v230;
      v100 = CMTimeRangeContainsTimeRange(&v221, &start);
      if (v100)
      {
        *&v225.timescale = *&duration.start.timescale;
        v225.epoch = duration.start.epoch;
        v108 = OUTLINED_FUNCTION_15_49(v100, v101, v102, v103, v104, v105, v106, v107, v148, v154, v160, v166, v172, v179, v185, allocator, theArray[0], theArray[1], v208, v214, v230.start.value, *&v230.start.timescale, v230.start.epoch, start.duration.value, *&start.duration.timescale, start.duration.epoch, v221.start.value, *&v221.start.timescale, v221.start.epoch, v221.duration.value, *&v221.duration.timescale, v221.duration.epoch, v222, *(&v222 + 1), v223, v224, duration.start.value);
        OUTLINED_FUNCTION_17_42(v108, v109, v110, v111, v112, v113, v114, v115, v150, v156, v162, v168, v174, v181, v187, allocatorb, theArrayb, theArray_8a, v210, v216, start.start.value, *&start.start.timescale, start.start.epoch, start.duration.value, *&start.duration.timescale, start.duration.epoch, v116, v221.start.value);
        OUTLINED_FUNCTION_20_35(v117, v118, v119, v120, v121, v122, v123, v124, v151, v157, v163, v169, v175, v182, v188, allocatorc, theArrayc, theArray_8b, v211, v217, start.start.value, *&start.start.timescale, start.start.epoch, start.duration.value, *&start.duration.timescale, start.duration.epoch, v221.start.value, *&v221.start.timescale, v221.start.epoch, v221.duration.value, *&v221.duration.timescale, v221.duration.epoch, v222, *(&v222 + 1), v223, v224, v225.value, *&v225.timescale, v225.epoch, value, duration.start.value, *&duration.start.timescale, duration.start.epoch, duration.duration.value, *&duration.duration.timescale);
        CMTimeRangeGetEnd(&start.start, &v221);
        v221 = v230;
        End = CMTimeRangeGetEnd(&v225, &v221);
        v133 = OUTLINED_FUNCTION_15_49(End, v126, v127, v128, v129, v130, v131, v132, v152, v158, v164, v170, v176, v183, v189, allocatord, theArrayd, theArray_8c, v212, v218, start.start.value, *&start.start.timescale, start.start.epoch, start.duration.value, *&start.duration.timescale, start.duration.epoch, v221.start.value, *&v221.start.timescale, v221.start.epoch, v221.duration.value, *&v221.duration.timescale, v221.duration.epoch, v222, *(&v222 + 1), v223, v224, v225.value);
        OUTLINED_FUNCTION_17_42(v133, v134, v135, v136, v137, v138, v139, v140, v153, v159, v165, v171, v177, v184, v190, allocatore, theArraye, theArray_8d, v213, v219, start.start.value, *&start.start.timescale, start.start.epoch, start.duration.value, *&start.duration.timescale, start.duration.epoch, v141, v221.start.value);
        v142 = CFArrayGetValueAtIndex(a1[2], v82);
        CFArrayAppendValue(v17, v142);
        ++v83;
      }

      if (v80 == ++v82)
      {
        if (v83)
        {
          v143 = FigCaptionGroupCreate();
          if (v143)
          {
            goto LABEL_55;
          }

          CFArrayAppendValue(v185, value);
          if (value)
          {
            CFRelease(value);
            value = 0;
          }

          bzero(v214, 24 * v83);
          bzero(NumCaptionDataWithStartAndEndTime, 24 * v83);
        }

        CFRelease(v17);
        if (++v79 == v179)
        {
          v18 = v185;
          v145 = v166;
          v144 = v172;
          v16 = theArray[0];
          goto LABEL_53;
        }

        goto LABEL_37;
      }
    }
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_3_2();
  v143 = FigSignalErrorAtGM();
LABEL_55:
  v15 = v143;
  v18 = v185;
  v16 = theArray[0];
LABEL_56:
  if (value)
  {
    CFRelease(value);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (v16)
  {
    CFRelease(v16);
  }

LABEL_62:
  free(NumCaptionDataWithStartAndEndTime);
  free(v214);
  if (v18)
  {
    CFRelease(v18);
  }

  return v15;
}

uint64_t clcpcgcfsbGetPositionFromCaptionData(uint64_t a1, _DWORD *a2)
{
  cf = 0;
  v13 = 0;
  v11 = *MEMORY[0x1E695EFF8];
  CMBaseObject = FigCaptionDataGetCMBaseObject();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v4)
  {
    goto LABEL_10;
  }

  v5 = *MEMORY[0x1E695E480];
  CellBasedPointFromDictionary = v4(CMBaseObject, *MEMORY[0x1E6961240], *MEMORY[0x1E695E480], &v13);
  if (CellBasedPointFromDictionary)
  {
LABEL_19:
    v9 = CellBasedPointFromDictionary;
    goto LABEL_11;
  }

  if (!v13)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
LABEL_18:
    CellBasedPointFromDictionary = FigSignalErrorAtGM();
    goto LABEL_19;
  }

  v7 = FigCaptionRegionGetCMBaseObject();
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v8)
  {
LABEL_10:
    v9 = 4294954514;
    goto LABEL_11;
  }

  CellBasedPointFromDictionary = v8(v7, *MEMORY[0x1E6961390], v5, &cf);
  if (CellBasedPointFromDictionary)
  {
    goto LABEL_19;
  }

  if (!cf)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    goto LABEL_18;
  }

  FigCaptionDynamicStyleGetInitialValue();
  CellBasedPointFromDictionary = FigCaptionGeometryGetCellBasedPointFromDictionary();
  if (CellBasedPointFromDictionary)
  {
    goto LABEL_19;
  }

  v9 = 0;
  if (a2)
  {
    *a2 = *(&v11 + 1);
  }

LABEL_11:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  return v9;
}

void FigCLCPCaptionGroupConverterFromSampleBufferCreate_cold_1(int a1, CFTypeRef *a2, _DWORD *a3)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_3_5();
  FigSignalErrorAtGM();
  if (*a2)
  {
    CFRelease(*a2);
  }

  *a3 = a1;
}

uint64_t FigCLCPCaptionGroupConverterFromSampleBufferCreate_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCLCPCaptionGroupConverterFromSampleBufferCreate_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t clcpcgcfsb_CopyProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t clcpcgcfsb_CopyProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t clcpcgcfsb_SetProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t clcpcgcfsb_SetProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t clcpcgcfsbGetCaptionMode_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t clcpcgcfsbCreateCaptionDataArray_cold_1(__CFArray *a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_20_0();
  v4 = FigSignalErrorAtGM();
  *a2 = v4;
  if (v4)
  {
    return 1;
  }

  v6.location = 0;
  v6.length = 0;
  CFArrayAppendArray(a1, 0, v6);
  return 0;
}

uint64_t clcpcgcfsbCreateCaptionDataArray_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

BOOL clcpcgcfsbCreateCaptionDataFromCommandData_cold_1(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  v3 = FigSignalErrorAtGM();
  *a2 = v3;
  return v3 == 0;
}

void clcpcgcfsbCreateCaptionDataFromCommandData_cold_2(__CFAttributedString *a1, CFRange *a2, CFIndex a3, CFIndex a4, const __CFAttributedString *a5)
{
  CFAttributedStringBeginEditing(a1);
  a2->location = 0;
  a2->length = 0;
  Limit = FigCFRangeGetLimit();
  if (Limit < FigCFRangeGetLimit())
  {
    v11 = 0;
    do
    {
      v12 = FigCFRangeGetLimit();
      v16.location = a3;
      v16.length = a4;
      AttributeAndLongestEffectiveRange = CFAttributedStringGetAttributeAndLongestEffectiveRange(a5, v12, @"a", v16, a2);
      if (CFBooleanGetValue(AttributeAndLongestEffectiveRange))
      {
        v15.location = a2->location - v11;
        v15.length = a2->length;
        CFAttributedStringReplaceString(a1, v15, &stru_1F0B1AFB8);
        v11 += a2->length;
      }

      v14 = FigCFRangeGetLimit();
    }

    while (v14 < FigCFRangeGetLimit());
  }

  CFAttributedStringEndEditing(a1);
}

uint64_t clcpcgcfsbCreateCaptionDataFromCommandData_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t clcpcgcfsbCreateCaptionDataFromCommandData_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t clcpcgcfsbCreateCaptionDataFromCommandData_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t clcpcgcfsbCreateCaptionDataFromCommandData_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t clcpcgcfsbCreateCaptionDataFromCommandData_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t clcpcgcfsbCreateCaptionDataFromCommandData_cold_8(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t clcpcgcfsbCaptionSlicerCreate_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t clcpcgcfsbCaptionSlicerCreate_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t clcpcgcfsbCaptionSlicerCreate_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t clcpcgcfsbCaptionSlicerCreate_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t clcpcgcfsbCreateCaptionDataRowNumberArray_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t clcpcgcfsbGetFirstNewRowNumber_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigTTMLDocumentWriterCreateLineBreaker_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigTTMLDocumentWriterCreateLineBreaker_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigSurrogateAssetImageGeneratorCreateFromAsset(uint64_t a1, const void *a2, const void *a3, void *a4)
{
  v18 = 0;
  v17 = 0;
  if (a2 && a4)
  {
    v8 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (!v8)
    {
      return 4294954514;
    }

    v9 = v8(a2, @"assetProperty_AssetType", &v17);
    if (!v9)
    {
      if (!v17)
      {
        cf = 0;
        FigAssetImageGeneratorGetClassID();
        v10 = CMDerivedObjectCreate();
        if (!v10)
        {
          DerivedStorage = CMBaseObjectGetDerivedStorage();
          DerivedStorage[1] = CFRetain(a2);
          if (a3)
          {
            v12 = CFRetain(a3);
          }

          else
          {
            v12 = 0;
          }

          DerivedStorage[2] = v12;
          v14 = FigDispatchQueueCreateWithPriority();
          *DerivedStorage = v14;
          if (v14)
          {
            v13 = 0;
            v15 = cf;
            v18 = cf;
            goto LABEL_13;
          }

          fig_log_get_emitter();
          OUTLINED_FUNCTION_20_0();
          v10 = FigSignalErrorAtGM();
        }

        v13 = v10;
        v15 = cf;
        if (cf)
        {
          CFRelease(cf);
          v15 = 0;
        }

        goto LABEL_13;
      }

      v13 = surrogateAIG_CreateSubGenerator(a1, a2, a3, &v18);
      v15 = v18;
LABEL_13:
      if (v13)
      {
        if (v15)
        {
          CFRelease(v15);
        }
      }

      else
      {
        *a4 = v15;
      }

      return v13;
    }

    return v9;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_20_0();

  return FigSignalErrorAtGM();
}

uint64_t surrogateAIG_CreateSubGenerator(uint64_t a1, const void *a2, uint64_t a3, CFTypeRef *a4)
{
  cf = 0;
  v15 = 0;
  CMBaseObject = FigAssetGetCMBaseObject(a2);
  v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v9)
  {
    v10 = v9(CMBaseObject, @"assetProperty_AssetType", a1, &cf);
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      if (FigCFEqual())
      {
        v11 = FigStreamAssetImageGeneratorCreateFromAssetWithOptions(a1, a2, a3, &v15);
      }

      else
      {
        v11 = FigAssetImageGeneratorCreateFromAssetWithOptions(a1, a2, a3, &v15);
      }

      v12 = v11;
      if (!v11)
      {
        *a4 = v15;
        v15 = 0;
      }
    }
  }

  else
  {
    v12 = 4294954514;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  return v12;
}

uint64_t surrogateAIG_SetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x2000000000;
  v24 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2000000000;
  v20 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 40))
  {
    fig_log_get_emitter();
    v12 = FigSignalErrorAtGM();
LABEL_7:
    v8 = v22;
    *(v22 + 6) = v12;
    goto LABEL_8;
  }

  v7 = *DerivedStorage;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 0x40000000;
  v16[2] = __surrogateAIG_SetProperty_block_invoke;
  v16[3] = &unk_1E7494A20;
  v16[6] = DerivedStorage;
  v16[7] = a1;
  v16[4] = &v17;
  v16[5] = &v21;
  v16[8] = a2;
  v16[9] = a3;
  dispatch_sync(v7, v16);
  v8 = v22;
  if (!*(v22 + 6))
  {
    v9 = v18[3];
    if (v9)
    {
      FigBaseObject = FigAssetImageGeneratorGetFigBaseObject(v9);
      v11 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v11)
      {
        v12 = v11(FigBaseObject, a2, a3);
      }

      else
      {
        v12 = -12782;
      }

      goto LABEL_7;
    }
  }

LABEL_8:
  v13 = v18[3];
  if (v13)
  {
    CFRelease(v13);
    v8 = v22;
  }

  v14 = *(v8 + 6);
  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);
  return v14;
}

uint64_t surrogateAIG_EnsureSubGeneratorCreated(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = (DerivedStorage + 24);
  if (*(DerivedStorage + 24))
  {
    return 0;
  }

  v5 = DerivedStorage;
  v6 = CFGetAllocator(a1);
  result = surrogateAIG_CreateSubGenerator(v6, *(v5 + 8), *(v5 + 16), v3);
  if (!result)
  {
    v7 = *(v5 + 32);
    if (v7)
    {
      CFDictionaryApplyFunction(v7, surrogateAIG_SetSavedPropertyOnSubGenerator, *(v5 + 24));
      v8 = *(v5 + 32);
      if (v8)
      {
        CFRelease(v8);
        *(v5 + 32) = 0;
      }
    }

    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterAddWeakListener();
    return 0;
  }

  return result;
}

uint64_t surrogateAIG_CopyCGImageAtTime_cold_1(uint64_t a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *(*a1 + 24) = result;
  return result;
}

uint64_t surrogateAIG_RequestCGImageAtTimeAsync_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t surrogateAIG_CancelAllCGImageAsyncRequests_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVirtualFramebufferCopyFramebufDescriptions()
{
  if (qword_1ED4CB980 != -1)
  {
    dispatch_once(&qword_1ED4CB980, &__block_literal_global_102);
  }

  if ((_MergedGlobals_124 & 1) == 0)
  {
    if (FigXPCCreateBasicMessage())
    {
      v1 = OUTLINED_FUNCTION_20_36();
      v9 = OUTLINED_FUNCTION_106_1(v1, v2, v3, v4, v5, v6, v7, v8, v28, v29, v30, SBYTE2(v30), BYTE3(v30), SHIDWORD(v30));
      if (!OUTLINED_FUNCTION_124_0(v9))
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (qword_1ED4CB9C0 != -1)
      {
        dispatch_once(&qword_1ED4CB9C0, &__block_literal_global_161);
      }

      if (!FigXPCRemoteClientSendSyncMessageCreatingReply())
      {
        if (!FigXPCMessageCopyCFString())
        {
          goto LABEL_9;
        }

        v19 = OUTLINED_FUNCTION_20_36();
        v27 = OUTLINED_FUNCTION_106_1(v19, v20, v21, v22, v23, v24, v25, v26, v28, v29, v30, SBYTE2(v30), BYTE3(v30), SHIDWORD(v30));
        if (OUTLINED_FUNCTION_124_0(v27))
        {
          goto LABEL_15;
        }

LABEL_16:
        OUTLINED_FUNCTION_16();
        OUTLINED_FUNCTION_345_0();
        goto LABEL_9;
      }

      v10 = OUTLINED_FUNCTION_20_36();
      v18 = OUTLINED_FUNCTION_106_1(v10, v11, v12, v13, v14, v15, v16, v17, v28, v29, v30, SBYTE2(v30), BYTE3(v30), SHIDWORD(v30));
      if (!OUTLINED_FUNCTION_124_0(v18))
      {
        goto LABEL_16;
      }
    }

LABEL_15:
    OUTLINED_FUNCTION_26_32();
    OUTLINED_FUNCTION_8_75();
    OUTLINED_FUNCTION_9_13();
    OUTLINED_FUNCTION_128_0();
    goto LABEL_16;
  }

LABEL_9:
  FigXPCRelease();
  FigXPCRelease();
  return 0;
}

void __fvfbserv_getVirtualFramebufs_block_invoke()
{
  v133 = *MEMORY[0x1E69E9840];
  if (qword_1ED4CB988 != -1)
  {
    dispatch_once(&qword_1ED4CB988, &__block_literal_global_12_0);
  }

  v0 = fvfbserv_getVirtualFramebufMaxCount_maxCount;
  qword_1ED4CB990 = malloc_type_calloc(fvfbserv_getVirtualFramebufMaxCount_maxCount, 8uLL, 0x2004093837F09uLL);
  OUTLINED_FUNCTION_36_24();
  fig_note_initialize_category_with_default_work_cf();
  OUTLINED_FUNCTION_36_24();
  fig_note_initialize_category_with_default_work_cf();
  v2 = &off_196E72000;
  v3 = 0;
  if (v0)
  {
    v4 = *MEMORY[0x1E695E480];
    *&v1 = 136315394;
    *v105 = v1;
    while (1)
    {
      v5 = qword_1ED4CB990;
      *v120 = 0;
      *v121 = 0;
      v129 = 0u;
      v130 = 0u;
      v128 = 0u;
      memset(v127, 0, sizeof(v127));
      FigVirtualFramebufferGetClassID();
      v6 = CMDerivedObjectCreate();
      if (v6)
      {
        break;
      }

      DerivedStorage = CMBaseObjectGetDerivedStorage();
      *DerivedStorage = FigSimpleMutexCreate();
      Mutable = CFDictionaryCreateMutable(v4, 0, 0, MEMORY[0x1E695E9E8]);
      *(DerivedStorage + 64) = Mutable;
      *(DerivedStorage + 8) = 0;
      *(DerivedStorage + 12) = v3 + 1;
      *(DerivedStorage + 88) = -1;
      *(&v127[0] + 1) = *v121;
      *(&v129 + 1) = fvfbserv_hotplugSourceSchedule;
      *&v130 = fvfbserv_hotplugSourceCancel;
      *(&v130 + 1) = fvfbserv_hotplugSourcePerform;
      *(DerivedStorage + 112) = OUTLINED_FUNCTION_40_21(Mutable, v9, v10, v11, v12, v13, v14, v15, v97, v101, v105[0], v105[1], v112, v116, *v120, *v121, *handler, *&handler[8], *&handler[16], v123, *(&v123 + 1), v124, *v125, *&v125[8], *&v125[16], v126, 0);
      asprintf(v120, "VirtualFramebufVSyncQueue.%d", *(DerivedStorage + 12));
      *(DerivedStorage + 216) = 60;
      v16 = *v120;
      v17 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
      v18 = dispatch_queue_create(v16, v17);
      *(DerivedStorage + 136) = v18;
      v19 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 1uLL, v18);
      *(DerivedStorage + 144) = v19;
      *handler = MEMORY[0x1E69E9820];
      *&handler[8] = 0x40000000;
      *&handler[16] = __fvfbserv_objCreateVirtualFramebuf_block_invoke;
      *&v123 = &__block_descriptor_tmp_20_2;
      *(&v123 + 1) = *v121;
      dispatch_source_set_event_handler(v19, handler);
      dispatch_source_set_timer(*(DerivedStorage + 144), 0xFFFFFFFFFFFFFFFFLL, 0, 0);
      dispatch_resume(*(DerivedStorage + 144));
      *(&v129 + 1) = fvfbserv_vsyncSourceSchedule;
      *&v130 = fvfbserv_vsyncSourceCancel;
      *(&v130 + 1) = fvfbserv_vsyncSourcePerform;
      v28 = OUTLINED_FUNCTION_40_21(v20, v21, v22, v23, v24, v25, v26, v27, v98, v102, v106, v109, v113, v117, *v120, *v121, *handler, *&handler[8], *&handler[16], v123, *(&v123 + 1), v124, *v125, *&v125[8], *&v125[16], v126, *&v127[0]);
      *(DerivedStorage + 160) = v28;
      *(&v129 + 1) = fvfbserv_hdcpSourceSchedule;
      *&v130 = fvfbserv_hdcpSourceCancel;
      *(&v130 + 1) = fvfbserv_hdcpSourcePerform;
      *(DerivedStorage + 232) = OUTLINED_FUNCTION_40_21(v28, v29, v30, v31, v32, v33, v34, v35, v99, v103, v107, v110, v114, v118, *v120, *v121, *handler, *&handler[8], *&handler[16], v123, *(&v123 + 1), v124, *v125, *&v125[8], *&v125[16], v126, *&v127[0]);
      *(v5 + 8 * v3) = *v121;
      HIDWORD(v116) = 0;
      BYTE3(v116) = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v37 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      if (OUTLINED_FUNCTION_186_0(v37))
      {
        v38 = *(DerivedStorage + 12);
        *v125 = v105[0];
        *&v125[4] = "fvfbserv_objCreateVirtualFramebuf";
        *&v125[12] = 1024;
        *&v125[14] = v38;
        LODWORD(v101) = 18;
        v97 = v125;
        OUTLINED_FUNCTION_15_50();
        _os_log_send_and_compose_impl();
      }

      ++v3;
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_635();
      free(*v120);
      if (v0 == v3)
      {
        v3 = v0;
        v2 = &off_196E72000;
        goto LABEL_10;
      }
    }

    v76 = v6;
    HIDWORD(v116) = 0;
    BYTE3(v116) = 0;
    v77 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v78 = os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT);
    v2 = &off_196E72000;
    if (OUTLINED_FUNCTION_124_0(v78))
    {
      *v125 = 136315650;
      *&v125[4] = "fvfbserv_objCreateVirtualFramebuf";
      *&v125[12] = 1024;
      *&v125[14] = 1454;
      *&v125[18] = 1024;
      *&v125[20] = v76;
      LODWORD(v101) = 24;
      v97 = v125;
      OUTLINED_FUNCTION_15_50();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_43_20();
    OUTLINED_FUNCTION_345_0();
    OUTLINED_FUNCTION_25_32();
    v79 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v87 = OUTLINED_FUNCTION_41_25(v79, v80, v81, v82, v83, v84, v85, v86, v97, v101, v105[0], v105[1], v112, v116, *v120, *v121, *handler, *&handler[8], *&handler[16], v123, *(&v123 + 1), v124, v125[0]);
    if (OUTLINED_FUNCTION_186_0(v87))
    {
      LODWORD(v127[0]) = 136315650;
      *(v127 + 4) = "fvfbserv_getVirtualFramebufs_block_invoke";
      WORD6(v127[0]) = 1024;
      *(v127 + 14) = 1915;
      WORD1(v127[1]) = 1024;
      DWORD1(v127[1]) = v76;
      OUTLINED_FUNCTION_378();
      OUTLINED_FUNCTION_15_50();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_43_20();
    OUTLINED_FUNCTION_635();
  }

LABEL_10:
  qword_1ED4CB998 = v3;
  OUTLINED_FUNCTION_25_32();
  v39 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v47 = OUTLINED_FUNCTION_41_25(v39, v40, v41, v42, v43, v44, v45, v46, v97, v101, v105[0], v105[1], v112, v116, *v120, *v121, *handler, *&handler[8], *&handler[16], v123, *(&v123 + 1), v124, v125[0]);
  if (OUTLINED_FUNCTION_186_0(v47))
  {
    LODWORD(v127[0]) = 136315394;
    *(v127 + 4) = "fvfbserv_getVirtualFramebufs_block_invoke";
    WORD6(v127[0]) = 1024;
    *(v127 + 14) = qword_1ED4CB998;
    OUTLINED_FUNCTION_378();
    OUTLINED_FUNCTION_65();
    _os_log_send_and_compose_impl();
  }

  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_635();
  if (qword_1ED4CB9B0 != -1)
  {
    dispatch_once(&qword_1ED4CB9B0, &__block_literal_global_87);
  }

  if (byte_1ED4CB974)
  {
    FigSimpleMutexLock();
    v48 = dword_1ED4CB978;
    v49 = dword_1ED4CB978 > 0;
    OUTLINED_FUNCTION_25_32();
    v50 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v58 = OUTLINED_FUNCTION_41_25(v50, v51, v52, v53, v54, v55, v56, v57, v100, v104, v108, v111, v115, v119, *v120, *v121, *handler, *&handler[8], *&handler[16], v123, *(&v123 + 1), v124, v125[0]);
    if (OUTLINED_FUNCTION_186_0(v58))
    {
      v59 = "not ";
      if (v48 > 0)
      {
        v59 = "";
      }

      LODWORD(v127[0]) = 136315394;
      *(v127 + 4) = "srmonitor_postCurrentState";
      WORD6(v127[0]) = 2080;
      *(v127 + 14) = v59;
      OUTLINED_FUNCTION_378();
      OUTLINED_FUNCTION_65();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_635();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __srmonitor_postCurrentState_block_invoke;
    block[3] = &__block_descriptor_tmp_84_0;
    v132 = v49;
    dispatch_async(qword_1ED4CB9A8, block);
    FigSimpleMutexUnlock();
  }

  *&v127[0] = 1;
  *(&v127[0] + 1) = fvfbserv_handleClientMessage;
  v127[1] = 0u;
  v128 = 0u;
  v60 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (qword_1ED4CB980 != -1)
  {
    dispatch_once(&qword_1ED4CB980, &__block_literal_global_102);
  }

  if ((_MergedGlobals_124 & 1) == 0)
  {
    OUTLINED_FUNCTION_22_35();
    v88 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v96 = OUTLINED_FUNCTION_44_22(v88, v89, v90, v91, v92, v93, v94, v95, v100, v104, v108, v111, v115, v119, *v120, v121[0], *handler, *&handler[8], *&handler[16], v123, *(&v123 + 1), v124, *v125);
    if (OUTLINED_FUNCTION_124_0(v96))
    {
      *handler = 136315394;
      *&handler[4] = "fvfbserv_startServer";
      *&handler[12] = 1024;
      *&handler[14] = 1884;
      OUTLINED_FUNCTION_100();
      OUTLINED_FUNCTION_65();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_16();
    goto LABEL_35;
  }

  OUTLINED_FUNCTION_22_35();
  v61 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v69 = OUTLINED_FUNCTION_44_22(v61, v62, v63, v64, v65, v66, v67, v68, v100, v104, v108, v111, v115, v119, *v120, v121[0], *handler, *&handler[8], *&handler[16], v123, *(&v123 + 1), v124, *v125);
  if (OUTLINED_FUNCTION_124_0(v69))
  {
    *handler = 136315394;
    *&handler[4] = "fvfbserv_startServer";
    *&handler[12] = 2080;
    *&handler[14] = "com.apple.backboardd.virtualframebuffer";
    OUTLINED_FUNCTION_100();
    OUTLINED_FUNCTION_65();
    _os_log_send_and_compose_impl();
  }

  OUTLINED_FUNCTION_345_0();
  FigCFDictionarySetInt32();
  v70 = FigXPCServerStart();
  if (v70)
  {
    v71 = v70;
    OUTLINED_FUNCTION_22_35();
    v72 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v73 = os_log_type_enabled(v72, v121[0]);
    if (OUTLINED_FUNCTION_115_1(v73))
    {
      *handler = *(v2 + 134);
      *&handler[4] = "fvfbserv_startServer";
      *&handler[12] = 2080;
      *&handler[14] = "com.apple.backboardd.virtualframebuffer";
      *&handler[22] = 1024;
      LODWORD(v123) = v71;
      OUTLINED_FUNCTION_100();
      OUTLINED_FUNCTION_15_50();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_16();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  *v125 = 1;
  FigNote_GetValue();
  if (!*v125 && !FigNote_ChangeValue() && dword_1ED4CBED0)
  {
    *v121 = 0;
    v120[0] = OS_LOG_TYPE_DEFAULT;
    v74 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v75 = os_log_type_enabled(v74, v120[0]);
    if (OUTLINED_FUNCTION_109_0(v75))
    {
      *handler = 136315906;
      *&handler[4] = "fvfbserv_setFigXPCNoteLevel";
      *&handler[12] = 2112;
      *&handler[14] = @"figxpc_trace";
      *&handler[22] = 1024;
      LODWORD(v123) = *v125;
      WORD2(v123) = 1024;
      *(&v123 + 6) = 1;
      OUTLINED_FUNCTION_100();
      OUTLINED_FUNCTION_15_50();
      OUTLINED_FUNCTION_456();
    }

    OUTLINED_FUNCTION_7();
LABEL_35:
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v60)
  {
    CFRelease(v60);
  }
}

uint64_t fvfbserv_objCopyProperty(uint64_t a1, const void *a2, uint64_t a3, CFTypeRef *a4)
{
  v61 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v55 = 0;
  v56 = 0;
  if (dword_1ED4CBED0)
  {
    OUTLINED_FUNCTION_23_42();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v8 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, BYTE4(v54));
    if (OUTLINED_FUNCTION_115_1(v8))
    {
      v57 = 136315394;
      v58 = "fvfbserv_objCopyProperty";
      v59 = 2112;
      v60 = a2;
      OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_9_13();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  if (*(DerivedStorage + 8))
  {
    if (*(DerivedStorage + 256) && *(DerivedStorage + 264))
    {
      if (CFEqual(a2, @"SupportsRotation"))
      {
        v9 = MEMORY[0x1E695E4D0];
        if (!*(DerivedStorage + 60))
        {
          v9 = MEMORY[0x1E695E4C0];
        }

        v10 = *v9;
        goto LABEL_14;
      }

      if (CFEqual(a2, @"VirtualDisplayMode"))
      {
        v10 = *(DerivedStorage + 24);
        if (v10)
        {
LABEL_14:
          v11 = 0;
          *a4 = CFRetain(v10);
          goto LABEL_15;
        }

LABEL_20:
        v11 = 4294954512;
        goto LABEL_15;
      }

      if (CFEqual(a2, @"DisplayContainerID") || CFEqual(a2, @"Transport") || CFEqual(a2, @"Time") || CFEqual(a2, @"DisplayAttributes"))
      {
        goto LABEL_20;
      }

      v13 = FigXPCCreateBasicMessage();
      if (v13)
      {
        v11 = v13;
        v23 = OUTLINED_FUNCTION_19_41();
        v31 = OUTLINED_FUNCTION_437_1(v23, v24, v25, v26, v27, v28, v29, v30, v52, v53, v54, SBYTE2(v54), BYTE3(v54), SHIDWORD(v54));
        if (OUTLINED_FUNCTION_109_0(v31))
        {
LABEL_36:
          OUTLINED_FUNCTION_17_43();
          OUTLINED_FUNCTION_5_117();
          OUTLINED_FUNCTION_9_13();
          OUTLINED_FUNCTION_456();
        }
      }

      else
      {
        v14 = FigXPCMessageSetCFString();
        if (!v14)
        {
          v15 = fvfb_sendMessageCreatingReply(*(DerivedStorage + 256), v56, &v55);
          if (v15)
          {
            v11 = v15;
            v41 = OUTLINED_FUNCTION_19_41();
            v49 = OUTLINED_FUNCTION_437_1(v41, v42, v43, v44, v45, v46, v47, v48, v52, v53, v54, SBYTE2(v54), BYTE3(v54), SHIDWORD(v54));
            if (OUTLINED_FUNCTION_109_0(v49))
            {
              OUTLINED_FUNCTION_17_43();
              OUTLINED_FUNCTION_5_117();
              OUTLINED_FUNCTION_9_13();
              OUTLINED_FUNCTION_456();
            }

            OUTLINED_FUNCTION_16();
            OUTLINED_FUNCTION_524();
          }

          else
          {
            v11 = FigXPCMessageCopyCFObject();
            if (v11)
            {
              v50 = OUTLINED_FUNCTION_19_41();
              v51 = os_log_type_enabled(v50, BYTE3(v54));
              if (OUTLINED_FUNCTION_115_1(v51))
              {
                OUTLINED_FUNCTION_17_43();
                OUTLINED_FUNCTION_5_117();
                OUTLINED_FUNCTION_9_13();
                _os_log_send_and_compose_impl();
              }

              OUTLINED_FUNCTION_16();
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            else
            {
              *a4 = 0;
            }
          }

          goto LABEL_15;
        }

        v11 = v14;
        v32 = OUTLINED_FUNCTION_19_41();
        v40 = OUTLINED_FUNCTION_437_1(v32, v33, v34, v35, v36, v37, v38, v39, v52, v53, v54, SBYTE2(v54), BYTE3(v54), SHIDWORD(v54));
        if (OUTLINED_FUNCTION_109_0(v40))
        {
          goto LABEL_36;
        }
      }

      OUTLINED_FUNCTION_16();
      OUTLINED_FUNCTION_524();
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_23_42();
    v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v17 = os_log_type_enabled(v16, BYTE4(v54));
    if (OUTLINED_FUNCTION_124_0(v17))
    {
      OUTLINED_FUNCTION_17_43();
      LODWORD(v60) = 725;
      OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_9_13();
      OUTLINED_FUNCTION_128_0();
    }

    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_345_0();
    v11 = 3758097097;
  }

  else
  {
    v11 = 3758097111;
    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    if ((UpTimeNanoseconds - *(DerivedStorage + 96)) >= 0xF4241)
    {
      v19 = UpTimeNanoseconds;
      OUTLINED_FUNCTION_23_42();
      v20 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v21 = os_log_type_enabled(v20, BYTE4(v54));
      if (OUTLINED_FUNCTION_115_1(v21))
      {
        v22 = *(DerivedStorage + 12);
        v57 = 136315394;
        v58 = "fvfbserv_objCopyProperty";
        v59 = 1024;
        LODWORD(v60) = v22;
        OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_9_13();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_16();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      *(DerivedStorage + 96) = v19;
    }
  }

LABEL_15:
  FigSimpleMutexUnlock();
  FigXPCRelease();
  FigXPCRelease();
  return v11;
}

uint64_t fvfbserv_objEnableMirroring(uint64_t a1, int a2)
{
  v56 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v50 = 0;
  xdict = 0;
  FigSimpleMutexLock();
  if (!*(DerivedStorage + 8))
  {
    if (dword_1ED4CBED0)
    {
      OUTLINED_FUNCTION_147();
      OUTLINED_FUNCTION_44_15();
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v27 = OUTLINED_FUNCTION_180_0(os_log_and_send_and_compose_flags_and_os_log_type, v20, v21, v22, v23, v24, v25, v26, v46, v47, v48, type, SBYTE2(type), BYTE3(type), SHIDWORD(type));
      if (OUTLINED_FUNCTION_124_0(v27))
      {
        v52 = 136315138;
        v53 = "fvfbserv_objEnableMirroring";
        OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_9_13();
        OUTLINED_FUNCTION_128_0();
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_345_0();
    }

    goto LABEL_28;
  }

  if (*(DerivedStorage + 88) == a2)
  {
LABEL_28:
    v8 = 0;
    goto LABEL_14;
  }

  *(DerivedStorage + 88) = -1;
  if (*(DerivedStorage + 256) && *(DerivedStorage + 264))
  {
    if (dword_1ED4CBED0)
    {
      OUTLINED_FUNCTION_24_30();
      v4 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v5 = os_log_type_enabled(v4, BYTE3(type));
      if (OUTLINED_FUNCTION_109_0(v5))
      {
        v6 = "disable";
        if (a2)
        {
          v6 = "enable";
        }

        v52 = 136315394;
        v53 = "fvfbserv_objEnableMirroring";
        v54 = 2080;
        v55 = v6;
        OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_9_13();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_524();
    }

    v7 = FigXPCCreateBasicMessage();
    if (v7)
    {
      v8 = v7;
      OUTLINED_FUNCTION_24_30();
      v28 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v36 = OUTLINED_FUNCTION_116_0(v28, v29, v30, v31, v32, v33, v34, v35, v46, v47, v48, type, SBYTE2(type), BYTE3(type), SHIDWORD(type));
      if (OUTLINED_FUNCTION_109_0(v36))
      {
        v52 = 136315650;
        v53 = "fvfbserv_objEnableMirroring";
        OUTLINED_FUNCTION_26_32();
        OUTLINED_FUNCTION_5_117();
LABEL_24:
        OUTLINED_FUNCTION_9_13();
        OUTLINED_FUNCTION_456();
      }
    }

    else
    {
      xpc_dictionary_set_BOOL(xdict, "Enabled", a2);
      v8 = fvfb_sendMessageCreatingReply(*(DerivedStorage + 256), xdict, &v50);
      if (!v8)
      {
        *(DerivedStorage + 88) = a2;
        goto LABEL_14;
      }

      OUTLINED_FUNCTION_24_30();
      v37 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v45 = OUTLINED_FUNCTION_116_0(v37, v38, v39, v40, v41, v42, v43, v44, v46, v47, v48, type, SBYTE2(type), BYTE3(type), SHIDWORD(type));
      if (OUTLINED_FUNCTION_109_0(v45))
      {
        v52 = 136315650;
        v53 = "fvfbserv_objEnableMirroring";
        OUTLINED_FUNCTION_26_32();
        OUTLINED_FUNCTION_5_117();
        goto LABEL_24;
      }
    }

    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_524();
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_147();
  OUTLINED_FUNCTION_44_15();
  v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v18 = OUTLINED_FUNCTION_180_0(v10, v11, v12, v13, v14, v15, v16, v17, v46, v47, v48, type, SBYTE2(type), BYTE3(type), SHIDWORD(type));
  if (OUTLINED_FUNCTION_124_0(v18))
  {
    v52 = 136315394;
    v53 = "fvfbserv_objEnableMirroring";
    OUTLINED_FUNCTION_26_32();
    LODWORD(v55) = 1117;
    OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_9_13();
    OUTLINED_FUNCTION_128_0();
  }

  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_345_0();
  v8 = 3758097097;
LABEL_14:
  FigSimpleMutexUnlock();
  FigXPCRelease();
  FigXPCRelease();
  return v8;
}

void __fvfbsrc_handleDeadConnection_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*v2 && *(v2 + 24))
  {
    OUTLINED_FUNCTION_147();
    OUTLINED_FUNCTION_44_15();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v11 = OUTLINED_FUNCTION_180_0(os_log_and_send_and_compose_flags_and_os_log_type, v4, v5, v6, v7, v8, v9, v10, v24, v26, v28, type, SBYTE2(type), BYTE3(type), SHIDWORD(type));
    if (OUTLINED_FUNCTION_124_0(v11))
    {
      OUTLINED_FUNCTION_29_29();
      OUTLINED_FUNCTION_65();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_345_0();
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    FigCFDictionarySetValue();
    FigCFDictionarySetValue();
    if (**(a1 + 32) == 1)
    {
      CFDictionarySetValue(Mutable, @"SuspendOnActivate", *MEMORY[0x1E695E4D0]);
    }

    _fvfbsrc_stop();
    if (_fvfbsrc_start(*(a1 + 40), Mutable))
    {
      OUTLINED_FUNCTION_147();
      OUTLINED_FUNCTION_44_15();
      v22 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v23 = os_log_type_enabled(v22, BYTE3(v31));
      if (OUTLINED_FUNCTION_115_1(v23))
      {
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_16();
    }

    else
    {
      OUTLINED_FUNCTION_147();
      OUTLINED_FUNCTION_44_15();
      v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v21 = OUTLINED_FUNCTION_116_0(v13, v14, v15, v16, v17, v18, v19, v20, v25, v27, v29, v31, SBYTE2(v31), BYTE3(v31), SHIDWORD(v31));
      if (OUTLINED_FUNCTION_109_0(v21))
      {
        OUTLINED_FUNCTION_29_29();
        OUTLINED_FUNCTION_456();
      }

      OUTLINED_FUNCTION_7();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  CFRelease(*(a1 + 40));
}

uint64_t FigVirtualFramebufferGetFramebufs_cold_3()
{
  v0 = OUTLINED_FUNCTION_1_171(*MEMORY[0x1E69E9840]);
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12, v13, v14, SWORD2(v14), SBYTE6(v14), HIBYTE(v14));
  if (OUTLINED_FUNCTION_77_0(v8))
  {
    OUTLINED_FUNCTION_2_25(v15, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v9);
    OUTLINED_FUNCTION_1_24();
    OUTLINED_FUNCTION_192_0();
  }

  return OUTLINED_FUNCTION_0_182();
}

uint64_t FigVirtualFramebufferGetFramebufs_cold_4()
{
  v0 = OUTLINED_FUNCTION_1_171(*MEMORY[0x1E69E9840]);
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12, v13, v14, SWORD2(v14), SBYTE6(v14), HIBYTE(v14));
  if (OUTLINED_FUNCTION_77_0(v8))
  {
    OUTLINED_FUNCTION_2_25(v15, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v9);
    OUTLINED_FUNCTION_1_24();
    OUTLINED_FUNCTION_192_0();
  }

  return OUTLINED_FUNCTION_0_182();
}

uint64_t FigVirtualFramebufferGetFramebufs_cold_7()
{
  v0 = OUTLINED_FUNCTION_1_171(*MEMORY[0x1E69E9840]);
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12, v13, v14, SWORD2(v14), SBYTE6(v14), HIBYTE(v14));
  if (OUTLINED_FUNCTION_77_0(v8))
  {
    OUTLINED_FUNCTION_2_25(v15, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v9);
    OUTLINED_FUNCTION_1_24();
    OUTLINED_FUNCTION_192_0();
  }

  return OUTLINED_FUNCTION_0_182();
}

uint64_t FigVirtualFramebufferGetFramebufs_cold_8()
{
  v0 = OUTLINED_FUNCTION_1_171(*MEMORY[0x1E69E9840]);
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12, v13, v14, SWORD2(v14), SBYTE6(v14), HIBYTE(v14));
  if (OUTLINED_FUNCTION_77_0(v8))
  {
    OUTLINED_FUNCTION_2_25(v15, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v9);
    OUTLINED_FUNCTION_1_24();
    OUTLINED_FUNCTION_192_0();
  }

  return OUTLINED_FUNCTION_0_182();
}

uint64_t fvfbserv_hotplugSourceSchedule_cold_1()
{
  v0 = OUTLINED_FUNCTION_1_171(*MEMORY[0x1E69E9840]);
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12, v13, v14, SWORD2(v14), SBYTE6(v14), HIBYTE(v14));
  if (OUTLINED_FUNCTION_77_0(v8))
  {
    OUTLINED_FUNCTION_2_25(v15, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v9);
    OUTLINED_FUNCTION_1_24();
    OUTLINED_FUNCTION_192_0();
  }

  return OUTLINED_FUNCTION_0_182();
}

uint64_t fvfbserv_hotplugSourceCancel_cold_1()
{
  v0 = OUTLINED_FUNCTION_1_171(*MEMORY[0x1E69E9840]);
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12, v13, v14, SWORD2(v14), SBYTE6(v14), HIBYTE(v14));
  if (OUTLINED_FUNCTION_77_0(v8))
  {
    OUTLINED_FUNCTION_2_25(v15, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v9);
    OUTLINED_FUNCTION_1_24();
    OUTLINED_FUNCTION_192_0();
  }

  return OUTLINED_FUNCTION_0_182();
}

uint64_t fvfbserv_hdcpSourceSchedule_cold_1()
{
  v0 = OUTLINED_FUNCTION_1_171(*MEMORY[0x1E69E9840]);
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12, v13, v14, SWORD2(v14), SBYTE6(v14), HIBYTE(v14));
  if (OUTLINED_FUNCTION_77_0(v8))
  {
    OUTLINED_FUNCTION_2_25(v15, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v9);
    OUTLINED_FUNCTION_1_24();
    OUTLINED_FUNCTION_192_0();
  }

  return OUTLINED_FUNCTION_0_182();
}

uint64_t fvfbserv_hdcpSourceCancel_cold_1()
{
  v0 = OUTLINED_FUNCTION_1_171(*MEMORY[0x1E69E9840]);
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12, v13, v14, SWORD2(v14), SBYTE6(v14), HIBYTE(v14));
  if (OUTLINED_FUNCTION_77_0(v8))
  {
    OUTLINED_FUNCTION_2_25(v15, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v9);
    OUTLINED_FUNCTION_1_24();
    OUTLINED_FUNCTION_192_0();
  }

  return OUTLINED_FUNCTION_0_182();
}

uint64_t fvfbserv_objSetDigitalOutMode_cold_1()
{
  v0 = OUTLINED_FUNCTION_1_171(*MEMORY[0x1E69E9840]);
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12, v13, v14, SWORD2(v14), SBYTE6(v14), HIBYTE(v14));
  if (OUTLINED_FUNCTION_77_0(v8))
  {
    OUTLINED_FUNCTION_2_25(v15, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v9);
    OUTLINED_FUNCTION_1_24();
    OUTLINED_FUNCTION_192_0();
  }

  return OUTLINED_FUNCTION_0_182();
}

uint64_t fvfbserv_objSubmitSurface_cold_1()
{
  v0 = OUTLINED_FUNCTION_1_171(*MEMORY[0x1E69E9840]);
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12, v13, v14, SWORD2(v14), SBYTE6(v14), HIBYTE(v14));
  if (OUTLINED_FUNCTION_77_0(v8))
  {
    OUTLINED_FUNCTION_2_25(v15, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v9);
    OUTLINED_FUNCTION_1_24();
    OUTLINED_FUNCTION_192_0();
  }

  return OUTLINED_FUNCTION_0_182();
}

uint64_t fvfbserv_objAcquireWritebackSurface_cold_1()
{
  v0 = OUTLINED_FUNCTION_1_171(*MEMORY[0x1E69E9840]);
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12, v13, v14, SWORD2(v14), SBYTE6(v14), HIBYTE(v14));
  if (OUTLINED_FUNCTION_77_0(v8))
  {
    OUTLINED_FUNCTION_2_25(v15, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v9);
    OUTLINED_FUNCTION_1_24();
    OUTLINED_FUNCTION_192_0();
  }

  return OUTLINED_FUNCTION_0_182();
}

uint64_t fvfbserv_objAcquireWritebackSurface_cold_2()
{
  v0 = OUTLINED_FUNCTION_1_171(*MEMORY[0x1E69E9840]);
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12, v13, v14, SWORD2(v14), SBYTE6(v14), HIBYTE(v14));
  if (OUTLINED_FUNCTION_77_0(v8))
  {
    OUTLINED_FUNCTION_2_25(v15, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v9);
    OUTLINED_FUNCTION_1_24();
    OUTLINED_FUNCTION_192_0();
  }

  return OUTLINED_FUNCTION_0_182();
}

uint64_t fvfbserv_objAcquireWritebackSurface_cold_3()
{
  v0 = OUTLINED_FUNCTION_1_171(*MEMORY[0x1E69E9840]);
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12, v13, v14, SWORD2(v14), SBYTE6(v14), HIBYTE(v14));
  if (OUTLINED_FUNCTION_77_0(v8))
  {
    OUTLINED_FUNCTION_2_25(v15, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v9);
    OUTLINED_FUNCTION_1_24();
    OUTLINED_FUNCTION_192_0();
  }

  return OUTLINED_FUNCTION_0_182();
}

uint64_t fvfbserv_objAcquireWritebackSurface_cold_4()
{
  v0 = OUTLINED_FUNCTION_1_171(*MEMORY[0x1E69E9840]);
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12, v13, v14, SWORD2(v14), SBYTE6(v14), HIBYTE(v14));
  if (OUTLINED_FUNCTION_77_0(v8))
  {
    OUTLINED_FUNCTION_2_25(v15, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v9);
    OUTLINED_FUNCTION_1_24();
    OUTLINED_FUNCTION_192_0();
  }

  return OUTLINED_FUNCTION_0_182();
}

uint64_t fvfbserv_objRelinquishWritebackSurface_cold_1()
{
  v0 = OUTLINED_FUNCTION_1_171(*MEMORY[0x1E69E9840]);
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12, v13, v14, SWORD2(v14), SBYTE6(v14), HIBYTE(v14));
  if (OUTLINED_FUNCTION_77_0(v8))
  {
    OUTLINED_FUNCTION_2_25(v15, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v9);
    OUTLINED_FUNCTION_1_24();
    OUTLINED_FUNCTION_192_0();
  }

  return OUTLINED_FUNCTION_0_182();
}

uint64_t fvfbserv_objRelinquishWritebackSurface_cold_2()
{
  v0 = OUTLINED_FUNCTION_1_171(*MEMORY[0x1E69E9840]);
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12, v13, v14, SWORD2(v14), SBYTE6(v14), HIBYTE(v14));
  if (OUTLINED_FUNCTION_77_0(v8))
  {
    OUTLINED_FUNCTION_2_25(v15, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v9);
    OUTLINED_FUNCTION_1_24();
    OUTLINED_FUNCTION_192_0();
  }

  return OUTLINED_FUNCTION_0_182();
}

uint64_t fvfbserv_objHDCPGetReply_cold_1()
{
  v0 = OUTLINED_FUNCTION_1_171(*MEMORY[0x1E69E9840]);
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12, v13, v14, SWORD2(v14), SBYTE6(v14), HIBYTE(v14));
  if (OUTLINED_FUNCTION_77_0(v8))
  {
    OUTLINED_FUNCTION_2_25(v15, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v9);
    OUTLINED_FUNCTION_1_24();
    OUTLINED_FUNCTION_192_0();
  }

  return OUTLINED_FUNCTION_0_182();
}

uint64_t fvfbserv_objGetProtectionOptions_cold_1()
{
  v0 = OUTLINED_FUNCTION_1_171(*MEMORY[0x1E69E9840]);
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12, v13, v14, SWORD2(v14), SBYTE6(v14), HIBYTE(v14));
  if (OUTLINED_FUNCTION_77_0(v8))
  {
    OUTLINED_FUNCTION_2_25(v15, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v9);
    OUTLINED_FUNCTION_1_24();
    OUTLINED_FUNCTION_192_0();
  }

  return OUTLINED_FUNCTION_0_182();
}

uint64_t fvfbserv_getAndRetainFramebufFromMessage_cold_1()
{
  v0 = OUTLINED_FUNCTION_1_171(*MEMORY[0x1E69E9840]);
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12, v13, v14, SWORD2(v14), SBYTE6(v14), HIBYTE(v14));
  if (OUTLINED_FUNCTION_77_0(v8))
  {
    OUTLINED_FUNCTION_2_25(v15, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v9);
    OUTLINED_FUNCTION_1_24();
    OUTLINED_FUNCTION_192_0();
  }

  return OUTLINED_FUNCTION_0_182();
}

uint64_t fvfbserv_startVirtualFramebuf_cold_1()
{
  v0 = OUTLINED_FUNCTION_1_171(*MEMORY[0x1E69E9840]);
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12, v13, v14, SWORD2(v14), SBYTE6(v14), HIBYTE(v14));
  if (OUTLINED_FUNCTION_77_0(v8))
  {
    OUTLINED_FUNCTION_2_25(v15, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v9);
    OUTLINED_FUNCTION_1_24();
    OUTLINED_FUNCTION_192_0();
  }

  return OUTLINED_FUNCTION_0_182();
}

uint64_t fvfbserv_startVirtualFramebuf_cold_2()
{
  v0 = OUTLINED_FUNCTION_1_171(*MEMORY[0x1E69E9840]);
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12, v13, v14, SWORD2(v14), SBYTE6(v14), HIBYTE(v14));
  if (OUTLINED_FUNCTION_77_0(v8))
  {
    OUTLINED_FUNCTION_2_25(v15, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v9);
    OUTLINED_FUNCTION_1_24();
    OUTLINED_FUNCTION_192_0();
  }

  return OUTLINED_FUNCTION_0_182();
}

uint64_t fvfbserv_startVirtualFramebuf_cold_7()
{
  v0 = OUTLINED_FUNCTION_1_171(*MEMORY[0x1E69E9840]);
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12, v13, v14, SWORD2(v14), SBYTE6(v14), HIBYTE(v14));
  if (OUTLINED_FUNCTION_77_0(v8))
  {
    OUTLINED_FUNCTION_2_25(v15, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v9);
    OUTLINED_FUNCTION_1_24();
    OUTLINED_FUNCTION_192_0();
  }

  return OUTLINED_FUNCTION_0_182();
}

uint64_t fvfbserv_startVirtualFramebuf_cold_8()
{
  v0 = OUTLINED_FUNCTION_1_171(*MEMORY[0x1E69E9840]);
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12, v13, v14, SWORD2(v14), SBYTE6(v14), HIBYTE(v14));
  if (OUTLINED_FUNCTION_77_0(v8))
  {
    OUTLINED_FUNCTION_2_25(v15, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v9);
    OUTLINED_FUNCTION_1_24();
    OUTLINED_FUNCTION_192_0();
  }

  return OUTLINED_FUNCTION_0_182();
}

uint64_t fvfbserv_suspendVirtualFramebuf_cold_1()
{
  v0 = OUTLINED_FUNCTION_1_171(*MEMORY[0x1E69E9840]);
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12, v13, v14, SWORD2(v14), SBYTE6(v14), HIBYTE(v14));
  if (OUTLINED_FUNCTION_77_0(v8))
  {
    OUTLINED_FUNCTION_2_25(v15, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v9);
    OUTLINED_FUNCTION_1_24();
    OUTLINED_FUNCTION_192_0();
  }

  return OUTLINED_FUNCTION_0_182();
}

uint64_t fvfbserv_resumeVirtualFramebuf_cold_1()
{
  v0 = OUTLINED_FUNCTION_1_171(*MEMORY[0x1E69E9840]);
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12, v13, v14, SWORD2(v14), SBYTE6(v14), HIBYTE(v14));
  if (OUTLINED_FUNCTION_77_0(v8))
  {
    OUTLINED_FUNCTION_2_25(v15, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v9);
    OUTLINED_FUNCTION_1_24();
    OUTLINED_FUNCTION_192_0();
  }

  return OUTLINED_FUNCTION_0_182();
}

uint64_t fvfbintern_hdcpSourceSchedule_cold_1()
{
  v0 = OUTLINED_FUNCTION_1_171(*MEMORY[0x1E69E9840]);
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12, v13, v14, SWORD2(v14), SBYTE6(v14), HIBYTE(v14));
  if (OUTLINED_FUNCTION_77_0(v8))
  {
    OUTLINED_FUNCTION_2_25(v15, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v9);
    OUTLINED_FUNCTION_1_24();
    OUTLINED_FUNCTION_192_0();
  }

  return OUTLINED_FUNCTION_0_182();
}

uint64_t fvfbintern_hdcpSourceCancel_cold_1()
{
  v0 = OUTLINED_FUNCTION_1_171(*MEMORY[0x1E69E9840]);
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12, v13, v14, SWORD2(v14), SBYTE6(v14), HIBYTE(v14));
  if (OUTLINED_FUNCTION_77_0(v8))
  {
    OUTLINED_FUNCTION_2_25(v15, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v9);
    OUTLINED_FUNCTION_1_24();
    OUTLINED_FUNCTION_192_0();
  }

  return OUTLINED_FUNCTION_0_182();
}

uint64_t fvfbintern_objHDCPGetReply_cold_1()
{
  v0 = OUTLINED_FUNCTION_1_171(*MEMORY[0x1E69E9840]);
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12, v13, v14, SWORD2(v14), SBYTE6(v14), HIBYTE(v14));
  if (OUTLINED_FUNCTION_77_0(v8))
  {
    OUTLINED_FUNCTION_2_25(v15, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v9);
    OUTLINED_FUNCTION_1_24();
    OUTLINED_FUNCTION_192_0();
  }

  return OUTLINED_FUNCTION_0_182();
}

uint64_t fvfbintern_objHDCPGetReply_cold_2()
{
  v0 = OUTLINED_FUNCTION_1_171(*MEMORY[0x1E69E9840]);
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12, v13, v14, SWORD2(v14), SBYTE6(v14), HIBYTE(v14));
  if (OUTLINED_FUNCTION_77_0(v8))
  {
    OUTLINED_FUNCTION_2_25(v15, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v9);
    OUTLINED_FUNCTION_1_24();
    OUTLINED_FUNCTION_192_0();
  }

  return OUTLINED_FUNCTION_0_182();
}

uint64_t fvfbintern_objGetProtectionOptions_cold_2()
{
  v0 = OUTLINED_FUNCTION_1_171(*MEMORY[0x1E69E9840]);
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12, v13, v14, SWORD2(v14), SBYTE6(v14), HIBYTE(v14));
  if (OUTLINED_FUNCTION_77_0(v8))
  {
    OUTLINED_FUNCTION_2_25(v15, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v9);
    OUTLINED_FUNCTION_1_24();
    OUTLINED_FUNCTION_192_0();
  }

  return OUTLINED_FUNCTION_0_182();
}

uint64_t fvfbsrc_objCopyProperty_cold_1()
{
  v0 = OUTLINED_FUNCTION_1_171(*MEMORY[0x1E69E9840]);
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12, v13, v14, SWORD2(v14), SBYTE6(v14), HIBYTE(v14));
  if (OUTLINED_FUNCTION_77_0(v8))
  {
    OUTLINED_FUNCTION_2_25(v15, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v9);
    OUTLINED_FUNCTION_1_24();
    OUTLINED_FUNCTION_192_0();
  }

  return OUTLINED_FUNCTION_0_182();
}

uint64_t _fvfbsrc_start_cold_1()
{
  v0 = OUTLINED_FUNCTION_1_171(*MEMORY[0x1E69E9840]);
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12, v13, v14, SWORD2(v14), SBYTE6(v14), HIBYTE(v14));
  if (OUTLINED_FUNCTION_77_0(v8))
  {
    OUTLINED_FUNCTION_2_25(v15, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v9);
    OUTLINED_FUNCTION_1_24();
    OUTLINED_FUNCTION_192_0();
  }

  return OUTLINED_FUNCTION_0_182();
}

uint64_t _fvfbsrc_start_cold_2()
{
  v0 = OUTLINED_FUNCTION_1_171(*MEMORY[0x1E69E9840]);
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12, v13, v14, SWORD2(v14), SBYTE6(v14), HIBYTE(v14));
  if (OUTLINED_FUNCTION_77_0(v8))
  {
    OUTLINED_FUNCTION_2_25(v15, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v9);
    OUTLINED_FUNCTION_1_24();
    OUTLINED_FUNCTION_192_0();
  }

  return OUTLINED_FUNCTION_0_182();
}

uint64_t fvfbsrc_handleServerMessage_cold_1()
{
  v0 = OUTLINED_FUNCTION_1_171(*MEMORY[0x1E69E9840]);
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12, v13, v14, SWORD2(v14), SBYTE6(v14), HIBYTE(v14));
  if (OUTLINED_FUNCTION_77_0(v8))
  {
    OUTLINED_FUNCTION_2_25(v15, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v9);
    OUTLINED_FUNCTION_1_24();
    OUTLINED_FUNCTION_192_0();
  }

  return OUTLINED_FUNCTION_0_182();
}

uint64_t fvfbsrc_handleServerMessage_cold_2()
{
  v0 = OUTLINED_FUNCTION_1_171(*MEMORY[0x1E69E9840]);
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12, v13, v14, SWORD2(v14), SBYTE6(v14), HIBYTE(v14));
  if (OUTLINED_FUNCTION_77_0(v8))
  {
    OUTLINED_FUNCTION_2_25(v15, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v9);
    OUTLINED_FUNCTION_1_24();
    OUTLINED_FUNCTION_192_0();
  }

  return OUTLINED_FUNCTION_0_182();
}

uint64_t fvfbsrc_handleServerMessage_cold_3()
{
  v0 = OUTLINED_FUNCTION_1_171(*MEMORY[0x1E69E9840]);
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12, v13, v14, SWORD2(v14), SBYTE6(v14), HIBYTE(v14));
  if (OUTLINED_FUNCTION_77_0(v8))
  {
    OUTLINED_FUNCTION_2_25(v15, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v9);
    OUTLINED_FUNCTION_1_24();
    OUTLINED_FUNCTION_192_0();
  }

  return OUTLINED_FUNCTION_0_182();
}

uint64_t fvfbsrc_handleServerMessage_cold_4()
{
  v0 = OUTLINED_FUNCTION_1_171(*MEMORY[0x1E69E9840]);
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12, v13, v14, SWORD2(v14), SBYTE6(v14), HIBYTE(v14));
  if (OUTLINED_FUNCTION_77_0(v8))
  {
    OUTLINED_FUNCTION_2_25(v15, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v9);
    OUTLINED_FUNCTION_1_24();
    OUTLINED_FUNCTION_192_0();
  }

  return OUTLINED_FUNCTION_0_182();
}

uint64_t fvfbsrc_handleServerMessage_cold_5()
{
  v0 = OUTLINED_FUNCTION_1_171(*MEMORY[0x1E69E9840]);
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12, v13, v14, SWORD2(v14), SBYTE6(v14), HIBYTE(v14));
  if (OUTLINED_FUNCTION_77_0(v8))
  {
    OUTLINED_FUNCTION_2_25(v15, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v9);
    OUTLINED_FUNCTION_1_24();
    OUTLINED_FUNCTION_192_0();
  }

  return OUTLINED_FUNCTION_0_182();
}

uint64_t fvfbsrc_handleServerMessage_cold_6()
{
  v0 = OUTLINED_FUNCTION_1_171(*MEMORY[0x1E69E9840]);
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12, v13, v14, SWORD2(v14), SBYTE6(v14), HIBYTE(v14));
  if (OUTLINED_FUNCTION_77_0(v8))
  {
    OUTLINED_FUNCTION_2_25(v15, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v9);
    OUTLINED_FUNCTION_1_24();
    OUTLINED_FUNCTION_192_0();
  }

  return OUTLINED_FUNCTION_0_182();
}

uint64_t fvfbsrc_handleServerMessage_cold_7()
{
  v0 = OUTLINED_FUNCTION_1_171(*MEMORY[0x1E69E9840]);
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12, v13, v14, SWORD2(v14), SBYTE6(v14), HIBYTE(v14));
  if (OUTLINED_FUNCTION_77_0(v8))
  {
    OUTLINED_FUNCTION_2_25(v15, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v9);
    OUTLINED_FUNCTION_1_24();
    OUTLINED_FUNCTION_192_0();
  }

  return OUTLINED_FUNCTION_0_182();
}

uint64_t fvfbsrc_handleServerMessage_cold_8()
{
  v0 = OUTLINED_FUNCTION_1_171(*MEMORY[0x1E69E9840]);
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12, v13, v14, SWORD2(v14), SBYTE6(v14), HIBYTE(v14));
  if (OUTLINED_FUNCTION_77_0(v8))
  {
    OUTLINED_FUNCTION_2_25(v15, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v9);
    OUTLINED_FUNCTION_1_24();
    OUTLINED_FUNCTION_192_0();
  }

  return OUTLINED_FUNCTION_0_182();
}

uint64_t fvfbsrc_handleServerMessage_cold_9()
{
  v0 = OUTLINED_FUNCTION_1_171(*MEMORY[0x1E69E9840]);
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12, v13, v14, SWORD2(v14), SBYTE6(v14), HIBYTE(v14));
  if (OUTLINED_FUNCTION_77_0(v8))
  {
    OUTLINED_FUNCTION_2_25(v15, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v9);
    OUTLINED_FUNCTION_1_24();
    OUTLINED_FUNCTION_192_0();
  }

  return OUTLINED_FUNCTION_0_182();
}

uint64_t fvfbsrc_handleServerMessage_cold_10()
{
  v0 = OUTLINED_FUNCTION_1_171(*MEMORY[0x1E69E9840]);
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12, v13, v14, SWORD2(v14), SBYTE6(v14), HIBYTE(v14));
  if (OUTLINED_FUNCTION_77_0(v8))
  {
    OUTLINED_FUNCTION_2_25(v15, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v9);
    OUTLINED_FUNCTION_1_24();
    OUTLINED_FUNCTION_192_0();
  }

  return OUTLINED_FUNCTION_0_182();
}

uint64_t fvfbsrc_handleServerMessage_cold_11()
{
  v0 = OUTLINED_FUNCTION_1_171(*MEMORY[0x1E69E9840]);
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12, v13, v14, SWORD2(v14), SBYTE6(v14), HIBYTE(v14));
  if (OUTLINED_FUNCTION_77_0(v8))
  {
    OUTLINED_FUNCTION_2_25(v15, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v9);
    OUTLINED_FUNCTION_1_24();
    OUTLINED_FUNCTION_192_0();
  }

  return OUTLINED_FUNCTION_0_182();
}

uint64_t fvfbsrc_handleServerMessage_cold_12()
{
  v0 = OUTLINED_FUNCTION_1_171(*MEMORY[0x1E69E9840]);
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12, v13, v14, SWORD2(v14), SBYTE6(v14), HIBYTE(v14));
  if (OUTLINED_FUNCTION_77_0(v8))
  {
    OUTLINED_FUNCTION_2_25(v15, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v9);
    OUTLINED_FUNCTION_1_24();
    OUTLINED_FUNCTION_192_0();
  }

  return OUTLINED_FUNCTION_0_182();
}

uint64_t fvfbsrc_handleServerMessage_cold_13()
{
  v0 = OUTLINED_FUNCTION_1_171(*MEMORY[0x1E69E9840]);
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12, v13, v14, SWORD2(v14), SBYTE6(v14), HIBYTE(v14));
  if (OUTLINED_FUNCTION_77_0(v8))
  {
    OUTLINED_FUNCTION_2_25(v15, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v9);
    OUTLINED_FUNCTION_1_24();
    OUTLINED_FUNCTION_192_0();
  }

  return OUTLINED_FUNCTION_0_182();
}

uint64_t fvfbsrc_handleServerMessage_cold_14()
{
  v0 = OUTLINED_FUNCTION_1_171(*MEMORY[0x1E69E9840]);
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12, v13, v14, SWORD2(v14), SBYTE6(v14), HIBYTE(v14));
  if (OUTLINED_FUNCTION_77_0(v8))
  {
    OUTLINED_FUNCTION_2_25(v15, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v9);
    OUTLINED_FUNCTION_1_24();
    OUTLINED_FUNCTION_192_0();
  }

  return OUTLINED_FUNCTION_0_182();
}

uint64_t fvfbsrc_handleServerMessage_cold_15()
{
  v0 = OUTLINED_FUNCTION_1_171(*MEMORY[0x1E69E9840]);
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12, v13, v14, SWORD2(v14), SBYTE6(v14), HIBYTE(v14));
  if (OUTLINED_FUNCTION_77_0(v8))
  {
    OUTLINED_FUNCTION_2_25(v15, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v9);
    OUTLINED_FUNCTION_1_24();
    OUTLINED_FUNCTION_192_0();
  }

  return OUTLINED_FUNCTION_0_182();
}

uint64_t FigVideoCompositionInstructionGetBackgroundColorARGB(const __CFDictionary *a1, uint64_t a2)
{
  Value = CFDictionaryGetValue(a1, @"BackgroundColorARGB");
  if (!Value)
  {
    return 0;
  }

  v4 = Value;
  v5 = CFGetTypeID(Value);
  if (v5 == CFArrayGetTypeID() && CFArrayGetCount(v4) == 4)
  {
    for (i = 0; i != 4; ++i)
    {
      FigCFArrayGetFloat32AtIndex();
      a2 += 4;
    }

    return 0;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t FigVideoCompositorSetDestinationPixelBufferGeometricProperties(__CVBuffer *a1, const __CFDictionary *a2)
{
  value = 0;
  v4 = FigVideoCompositorCopyRenderPixelBufferDimensionsAndCleanAperture(a2, 0, 0, &value);
  if (!v4)
  {
    if (value)
    {
      CVBufferSetAttachment(a1, *MEMORY[0x1E6965D70], value, kCVAttachmentMode_ShouldPropagate);
    }

    v5 = CFDictionaryGetValue(a2, @"RenderPixelAspectRatio");
    if (v5)
    {
      CVBufferSetAttachment(a1, *MEMORY[0x1E6965EF8], v5, kCVAttachmentMode_ShouldPropagate);
    }
  }

  if (value)
  {
    CFRelease(value);
  }

  return v4;
}

uint64_t FigVideoCompositorGetBestBitDepthForCompositorPropertiesAndLayerDefinitions(const __CFDictionary *a1, const __CFArray *a2)
{
  CFDictionaryGetValue(a1, @"DestinationPixelBufferDesiredTransferFunction");
  if (a2 && (Count = CFArrayGetCount(a2), Count >= 1))
  {
    v4 = Count;
    v5 = 0;
    v6 = 0;
    v7 = *MEMORY[0x1E695E480];
    v8 = *MEMORY[0x1E6966218];
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a2, v5);
      v10 = CFGetTypeID(ValueAtIndex);
      if (v10 != FigVCLayerDefinitionGetTypeID())
      {
        break;
      }

      SourcePixelBuffer = FigVCLayerDefinitionGetSourcePixelBuffer(ValueAtIndex);
      if (!SourcePixelBuffer)
      {
        break;
      }

      PixelFormatType = CVPixelBufferGetPixelFormatType(SourcePixelBuffer);
      if (PixelFormatType == 1380410945)
      {
        UInt64 = 32;
      }

      else
      {
        v14 = CVPixelFormatDescriptionCreateWithPixelFormatType(v7, PixelFormatType);
        if (v14)
        {
          v15 = v14;
          if (CFDictionaryGetValue(v14, v8))
          {
            UInt64 = FigCFNumberGetUInt64();
          }

          else
          {
            UInt64 = 0;
          }

          CFRelease(v15);
        }

        else
        {
          UInt64 = 0;
        }
      }

      if (UInt64 > v6)
      {
        v6 = UInt64;
      }

      ++v5;
    }

    while (v4 != v5);
  }

  else
  {
    v6 = 0;
  }

  if (FigCFEqual() || FigCFEqual())
  {
    v16 = v6 <= 10;
    v17 = 10;
  }

  else
  {
    v16 = v6 <= 8;
    v17 = 8;
  }

  if (v16)
  {
    return v17;
  }

  else
  {
    return v6;
  }
}

uint64_t FigVideoCompositorCreateDestinationPixelBufferPool(const __CFDictionary *a1, uint64_t a2, const void *a3, void *a4, int a5)
{
  v14 = 0;
  CFDictionaryGetValue(a1, @"DestinationPixelBufferDesiredAttributes");
  v9 = FigVideoCompositorCopyRenderPixelBufferDimensionsAndCleanAperture(a1, &v14, 0, 0);
  if (v9)
  {
    v12 = v9;
    Mutable = 0;
    goto LABEL_10;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionaryGetValue(a1, @"PixelBufferPoolSharingID");
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, *MEMORY[0x1E6966130], a3);
  if (a5)
  {
    FigGetAlignmentForIOSurfaceOutput();
    PixelBufferAttributesWithIOSurfaceSupport = FigCreatePixelBufferAttributesWithIOSurfaceSupport();
    if (PixelBufferAttributesWithIOSurfaceSupport)
    {
LABEL_13:
      v12 = PixelBufferAttributesWithIOSurfaceSupport;
      goto LABEL_10;
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }

    Mutable = 0;
  }

  FigCFDictionaryGetInt32IfPresent();
  PixelBufferAttributesWithIOSurfaceSupport = VTCreatePixelBufferPoolAttributesWithName();
  if (PixelBufferAttributesWithIOSurfaceSupport)
  {
    goto LABEL_13;
  }

  v12 = VTBuildPixelBufferPools2();
  if (!v12)
  {
    v12 = 0;
    *a4 = 0;
  }

LABEL_10:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v12;
}

uint64_t FigVideoCompositorCopyDestinationPixelBufferWithoutComposingIfPossible(const __CFDictionary *a1, const __CFArray *a2, void *a3)
{
  v13 = 0;
  v14 = 0;
  v12 = 0;
  v6 = *(MEMORY[0x1E695EFD0] + 16);
  v11[0] = *MEMORY[0x1E695EFD0];
  v11[1] = v6;
  v11[2] = *(MEMORY[0x1E695EFD0] + 32);
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 2, MEMORY[0x1E695E9C0]);
  FigCFArrayAppendInt32();
  FigCFArrayAppendInt32();
  v8 = FigVideoCompositorCopyRenderPixelBufferDimensionsAndCleanAperture(a1, &v12, v11, &v13);
  if (v8)
  {
    v9 = v8;
    if (Mutable)
    {
LABEL_5:
      CFRelease(Mutable);
    }
  }

  else
  {
    v9 = FigVCLayerDefinitionCopyDestinationPixelBufferWithoutComposingIfPossible(a2, &v12, v11, v13, Mutable, &v14);
    if (!v9)
    {
      *a3 = v14;
      v14 = 0;
    }

    if (Mutable)
    {
      goto LABEL_5;
    }
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  return v9;
}

uint64_t FigVideoCompositorPropertiesGetRenderDimensions_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoCompositorPropertiesGetRenderDimensions_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoCompositorCopyRenderPixelBufferDimensionsAndCleanAperture_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoCompositorCopyRenderPixelBufferDimensionsAndCleanAperture_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoCompositorCopyRenderPixelBufferDimensionsAndCleanAperture_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoCompositorCopyRenderPixelBufferDimensionsAndCleanAperture_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoCompositorCopyRenderPixelBufferDimensionsAndCleanAperture_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoCompositorCreateDesiredSourcePixelBufferAttributes_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoCompositorCreateDesiredSourcePixelBufferAttributes_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigWebVTTFormatWriterCreateForWritingWebVTTSegments(const __CFAllocator *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  cf = 0;
  v20 = 0;
  v18 = 0;
  if (!a2 || !a5 || FigCFDictionaryGetStringValue() && !FigCFEqual())
  {
    goto LABEL_21;
  }

  FigFormatWriterGetClassID();
  v9 = CMDerivedObjectCreate();
  if (v9)
  {
LABEL_22:
    v14 = v9;
    goto LABEL_10;
  }

  FigFormatWriterGetFigBaseObject(v20);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
LABEL_21:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    v9 = FigSignalErrorAtGM();
    goto LABEL_22;
  }

  v11 = DerivedStorage;
  v12 = ffw_vtt_createByteStreamBasedOnBlockBuffer(a1, &v18, &cf);
  v13 = v18;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = ffw_vtt_buildPipeline(a1, v20, v18);
    if (!v14)
    {
      *v11 = 1;
      *(v11 + 48) = 0;
      *(v11 + 56) = a2;
      *(v11 + 64) = a3;
      v16 = cf;
      v15 = v20;
      cf = 0;
      v20 = 0;
      *(v11 + 120) = v16;
      *(v11 + 128) = v13;
      *a5 = v15;
      goto LABEL_10;
    }
  }

  if (v13)
  {
    CFRelease(v13);
  }

LABEL_10:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  return v14;
}

void ffw_vtt_AddSampleBufferToTrack(const void *a1, int a2, opaqueCMSampleBuffer *a3)
{
  v165 = *MEMORY[0x1E69E9840];
  FigFormatWriterGetFigBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 48) != a2)
  {
    goto LABEL_43;
  }

  if (!a3)
  {
    goto LABEL_43;
  }

  v7 = DerivedStorage;
  if (*(DerivedStorage + 52))
  {
    goto LABEL_43;
  }

  if (!CMSampleBufferGetNumSamples(a3))
  {
    goto LABEL_66;
  }

  FormatDescription = CMSampleBufferGetFormatDescription(a3);
  MediaType = CMFormatDescriptionGetMediaType(FormatDescription);
  v10 = *(v7 + 4);
  if (v10)
  {
    if (v10 != MediaType)
    {
      goto LABEL_43;
    }
  }

  else
  {
    *(v7 + 4) = MediaType;
  }

  OUTLINED_FUNCTION_4_132();
  if (v11)
  {
    if (!*(v7 + 40) && ffw_vtt_createCaptionGroupConverter(*MEMORY[0x1E695E480], a1, (v7 + 40)))
    {
      goto LABEL_66;
    }
  }

  v12 = *v7;
  FigFormatWriterGetFigBaseObject(a1);
  v13 = CMBaseObjectGetDerivedStorage();
  if (v12 == 1)
  {
    v156 = 0uLL;
    v157 = 0;
    ffw_vtt_getSampleBufferOutputPresentationEndTime(a3, &v156);
    FigFormatWriterGetFigBaseObject(a1);
    if ((~*(CMBaseObjectGetDerivedStorage() + 84) & 0x11) == 0)
    {
      memset(&time1, 0, 24);
      CMSampleBufferGetOutputPresentationTimeStamp(&time1.start, a3);
      OUTLINED_FUNCTION_4_132();
      if (v11)
      {
        v79 = *(v13 + 40);
        v80 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (!v80 || v80(v79, a3))
        {
          goto LABEL_66;
        }
      }

      else
      {
        OUTLINED_FUNCTION_8_76();
        if (!v11)
        {
LABEL_17:
          fig_log_get_emitter();
          OUTLINED_FUNCTION_2_10();
          FigSignalErrorAtGM();
          goto LABEL_66;
        }

        if (FigCaptionTimelineGeneratorAddSampleBuffer(*(v13 + 32), a3))
        {
          goto LABEL_66;
        }
      }

      *(v13 + 136) = *&time1.start.value;
      *(v13 + 152) = time1.start.epoch;
LABEL_51:
      *(v13 + 184) = v156;
      *(v13 + 200) = v157;
      goto LABEL_66;
    }

    if ((*(v13 + 148) & 1) == 0 || (*(v13 + 172) & 1) == 0 || *(v13 + 176) || (*(v13 + 160) & 0x8000000000000000) != 0)
    {
      v163 = *(v13 + 96);
      v17 = *(v13 + 108);
      v164 = *(v13 + 104);
      v18 = *(v13 + 112);
      v161 = *(v13 + 72);
      v162 = *(v13 + 80);
      if (v17 & 0x1D) == 1 && (v19 = *(v13 + 84), (v19) && (v20 = *(v13 + 88), *&time1.start.value = *MEMORY[0x1E6960CC0], time1.start.epoch = *(MEMORY[0x1E6960CC0] + 16), time2.value = *(v13 + 72), time2.timescale = *(v13 + 80), time2.flags = v19, time2.epoch = v20, CMTimeCompare(&time1.start, &time2) < 0))
      {
        duration.epoch = v20;
        time2.value = v163;
        time2.timescale = v164;
        time2.flags = v17;
        time2.epoch = v18;
        duration.value = v161;
        duration.timescale = v162;
        duration.flags = v19;
        CMTimeRangeMake(&time1, &time2, &duration);
        v21 = *&time1.start.epoch;
        *(v13 + 136) = *&time1.start.value;
        *(v13 + 152) = v21;
        *(v13 + 168) = *&time1.duration.timescale;
      }

      else
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_2_10();
        if (FigSignalErrorAtGM())
        {
          goto LABEL_66;
        }
      }
    }

    OUTLINED_FUNCTION_4_132();
    if (v11)
    {
      FigFormatWriterGetFigBaseObject(a1);
      v81 = CMBaseObjectGetDerivedStorage();
      v82 = CFGetAllocator(a1);
      OUTLINED_FUNCTION_12_63(v82, v83, v84, v85, v86, v87, v88, v89, v145, v156, *(&v156 + 1), v157, time1.start.value, *&time1.start.timescale, time1.start.epoch, time1.duration.value, *&time1.duration.timescale, time1.duration.epoch, duration.value, *&duration.timescale, duration.epoch, time2.value, *&time2.timescale, time2.epoch);
      OUTLINED_FUNCTION_0_183();
      v98 = OUTLINED_FUNCTION_13_49(v90, v91, v92, v93, v94, v95, v96, v97, v151, v156, *(&v156 + 1), v157, time1.start.value, *&time1.start.timescale, time1.start.epoch, time1.duration.value, *&time1.duration.timescale, time1.duration.epoch, duration.value);
      v106 = OUTLINED_FUNCTION_2_164(v98, v99, v100, v101, v102, v103, v104, v105, v152, v156, v157, *&time1.start.value, time1.start.epoch, time1.duration.value, *&time1.duration.timescale, time1.duration.epoch, duration.value, *&duration.timescale, duration.epoch, *&time2.value, time2.epoch);
      if (v106 <= 0)
      {
        do
        {
          v141 = *(v81 + 40);
          v142 = *(*(CMBaseObjectGetVTable() + 16) + 8);
          if (!v142)
          {
            goto LABEL_66;
          }

          if (v142(v141, a3))
          {
            goto LABEL_66;
          }

          v114 = *(v81 + 40);
          v115 = *(*(CMBaseObjectGetVTable() + 16) + 16);
          if (!v115)
          {
            goto LABEL_66;
          }

          if (v115(v114))
          {
            goto LABEL_66;
          }

          OUTLINED_FUNCTION_0_183();
          if (ffw_vtt_finishPipelineAndOutputSegmentAndRebuildPipeline(a1, &time1.start.value))
          {
            goto LABEL_66;
          }

          v116 = *(v81 + 40);
          if (v116)
          {
            CFRelease(v116);
            *(v81 + 40) = 0;
          }

          CaptionGroupConverter = ffw_vtt_createCaptionGroupConverter(v82, a1, (v81 + 40));
          if (CaptionGroupConverter)
          {
            goto LABEL_66;
          }

          OUTLINED_FUNCTION_5_118(CaptionGroupConverter, v118, v119, v120, v121, v122, v123, v124, v153, v156, *(&v156 + 1), v157, time1.start.value, *&time1.start.timescale, time1.start.epoch, time1.duration.value, *&time1.duration.timescale, time1.duration.epoch, *&duration.value, duration.epoch);
          *(v81 + 136) = *&time1.start.value;
          *(v81 + 152) = time1.start.epoch;
          OUTLINED_FUNCTION_0_183();
          v133 = OUTLINED_FUNCTION_13_49(v125, v126, v127, v128, v129, v130, v131, v132, v154, v156, *(&v156 + 1), v157, time1.start.value, *&time1.start.timescale, time1.start.epoch, time1.duration.value, *&time1.duration.timescale, time1.duration.epoch, duration.value);
          v106 = OUTLINED_FUNCTION_2_164(v133, v134, v135, v136, v137, v138, v139, v140, v155, v156, v157, *&time1.start.value, time1.start.epoch, time1.duration.value, *&time1.duration.timescale, time1.duration.epoch, duration.value, *&duration.timescale, duration.epoch, *&time2.value, time2.epoch);
        }

        while (v106 < 1);
      }

      if ((OUTLINED_FUNCTION_7_90(v106, v107, v108, v109, v110, v111, v112, v113, v153, v156, v157, *&time1.start.value, time1.start.epoch, time1.duration.value, *&time1.duration.timescale, time1.duration.epoch, *&duration.value, duration.epoch, *&time2.value, time2.epoch) & 0x80000000) == 0)
      {
        goto LABEL_51;
      }

      v143 = *(v81 + 40);
      v144 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v144)
      {
        if (!v144(v143, a3))
        {
          goto LABEL_51;
        }
      }
    }

    else
    {
      OUTLINED_FUNCTION_8_76();
      if (!v11)
      {
        goto LABEL_17;
      }

      FigFormatWriterGetFigBaseObject(a1);
      v22 = CMBaseObjectGetDerivedStorage();
      OUTLINED_FUNCTION_12_63(v22, v23, v24, v25, v26, v27, v28, v29, v145, v156, *(&v156 + 1), v157, time1.start.value, *&time1.start.timescale, time1.start.epoch, time1.duration.value, *&time1.duration.timescale, time1.duration.epoch, duration.value, *&duration.timescale, duration.epoch, time2.value, *&time2.timescale, time2.epoch);
      OUTLINED_FUNCTION_0_183();
      v38 = OUTLINED_FUNCTION_13_49(v30, v31, v32, v33, v34, v35, v36, v37, v146, v156, *(&v156 + 1), v157, time1.start.value, *&time1.start.timescale, time1.start.epoch, time1.duration.value, *&time1.duration.timescale, time1.duration.epoch, duration.value);
      v46 = OUTLINED_FUNCTION_2_164(v38, v39, v40, v41, v42, v43, v44, v45, v147, v156, v157, *&time1.start.value, time1.start.epoch, time1.duration.value, *&time1.duration.timescale, time1.duration.epoch, duration.value, *&duration.timescale, duration.epoch, *&time2.value, time2.epoch);
      if (v46 <= 0)
      {
        while (!FigCaptionTimelineGeneratorAddSampleBuffer(*(v22 + 32), a3))
        {
          OUTLINED_FUNCTION_0_183();
          v54 = ffw_vtt_finishPipelineAndOutputSegmentAndRebuildPipeline(a1, &time1.start.value);
          if (v54)
          {
            break;
          }

          OUTLINED_FUNCTION_5_118(v54, v55, v56, v57, v58, v59, v60, v61, v148, v156, *(&v156 + 1), v157, time1.start.value, *&time1.start.timescale, time1.start.epoch, time1.duration.value, *&time1.duration.timescale, time1.duration.epoch, *&duration.value, duration.epoch);
          *(v22 + 136) = *&time1.start.value;
          *(v22 + 152) = time1.start.epoch;
          OUTLINED_FUNCTION_0_183();
          v70 = OUTLINED_FUNCTION_13_49(v62, v63, v64, v65, v66, v67, v68, v69, v149, v156, *(&v156 + 1), v157, time1.start.value, *&time1.start.timescale, time1.start.epoch, time1.duration.value, *&time1.duration.timescale, time1.duration.epoch, duration.value);
          v46 = OUTLINED_FUNCTION_2_164(v70, v71, v72, v73, v74, v75, v76, v77, v150, v156, v157, *&time1.start.value, time1.start.epoch, time1.duration.value, *&time1.duration.timescale, time1.duration.epoch, duration.value, *&duration.timescale, duration.epoch, *&time2.value, time2.epoch);
          if (v46 >= 1)
          {
            goto LABEL_40;
          }
        }

        goto LABEL_66;
      }

LABEL_40:
      if ((OUTLINED_FUNCTION_7_90(v46, v47, v48, v49, v50, v51, v52, v53, v148, v156, v157, *&time1.start.value, time1.start.epoch, time1.duration.value, *&time1.duration.timescale, time1.duration.epoch, *&duration.value, duration.epoch, *&time2.value, time2.epoch) & 0x80000000) == 0 || !FigCaptionTimelineGeneratorAddSampleBuffer(*(v22 + 32), a3))
      {
        goto LABEL_51;
      }
    }

LABEL_66:
    OUTLINED_FUNCTION_11_66();
    return;
  }

  OUTLINED_FUNCTION_4_132();
  if (v11 || (OUTLINED_FUNCTION_8_76(), !v11))
  {
LABEL_43:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_134();
    OUTLINED_FUNCTION_11_66();

    FigSignalErrorAtGM();
    return;
  }

  OUTLINED_FUNCTION_11_66();

  FigCaptionTimelineGeneratorAddSampleBuffer(v14, v15);
}

uint64_t ffw_vtt_Flush(const void *a1)
{
  FigFormatWriterGetFigBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 40);
  if (v3)
  {
    v4 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (!v4)
    {
      return 4294954514;
    }

    result = v4(v3);
    if (result)
    {
      return result;
    }

    v6 = *(DerivedStorage + 40);
    if (v6)
    {
      CFRelease(v6);
      *(DerivedStorage + 40) = 0;
    }
  }

  if (*DerivedStorage == 1)
  {
    memset(&v10, 0, sizeof(v10));
    *&lhs.start.value = *(DerivedStorage + 184);
    lhs.start.epoch = *(DerivedStorage + 200);
    *&v7.start.value = *(DerivedStorage + 136);
    v7.start.epoch = *(DerivedStorage + 152);
    CMTimeSubtract(&v10, &lhs.start, &v7.start);
    if ((v10.flags & 1) == 0 || (*&lhs.start.value = *MEMORY[0x1E6960CC0], lhs.start.epoch = *(MEMORY[0x1E6960CC0] + 16), v7.start = v10, (CMTimeCompare(&lhs.start, &v7.start) & 0x80000000) == 0) || (memset(&lhs, 0, sizeof(lhs)), *&v7.start.value = *(DerivedStorage + 136), v7.start.epoch = *(DerivedStorage + 152), duration = v10, CMTimeRangeMake(&lhs, &v7.start, &duration), v7 = lhs, result = ffw_vtt_finishPipelineAndOutputSegmentAndRebuildPipeline(a1, &v7.start.value), !result))
    {
      FigFormatWriterGetFigBaseObject(a1);
      if ((~*(CMBaseObjectGetDerivedStorage() + 84) & 0x11) == 0)
      {
        return 0;
      }

      result = 0;
      goto LABEL_13;
    }
  }

  else
  {
    result = ffw_vtt_finishPipeline(a1);
    if (!result)
    {
LABEL_13:
      *(DerivedStorage + 52) = 1;
    }
  }

  return result;
}

uint64_t ffw_vtt_finishPipelineAndOutputSegmentAndRebuildPipeline(const void *a1, __int128 *a2)
{
  FigFormatWriterGetFigBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = CFGetAllocator(a1);
  v24 = 0;
  cf = 0;
  v6 = ffw_vtt_finishPipeline(a1);
  if (v6)
  {
    return v6;
  }

  v22 = *a2;
  v23 = *(a2 + 2);
  v20 = *(a2 + 24);
  v21 = *(a2 + 5);
  values = 0;
  Mutable = CFDictionaryCreateMutable(v5, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    goto LABEL_37;
  }

  v8 = FigCFDictionarySetInt32();
  if (!v8)
  {
    values = CFDictionaryCreateMutable(v5, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (values)
    {
      v8 = FigCFDictionarySetInt32();
      if (v8)
      {
        goto LABEL_42;
      }

      v8 = FigCFDictionarySetInt32();
      if (v8)
      {
        goto LABEL_42;
      }

      v26 = v20;
      v27 = v21;
      v8 = FigCFDictionarySetCMTime();
      if (v8)
      {
        goto LABEL_42;
      }

      v26 = v22;
      v27 = v23;
      v8 = FigCFDictionarySetCMTime();
      if (v8)
      {
        goto LABEL_42;
      }

      v9 = CFArrayCreate(v5, &values, 1, MEMORY[0x1E695E9C0]);
      if (v9)
      {
        v10 = v9;
        CFDictionarySetValue(Mutable, @"SegmentReportKey_TrackReports", v9);
        CFRelease(v10);
        v11 = 0;
        v12 = Mutable;
        Mutable = 0;
        goto LABEL_11;
      }

      fig_log_get_emitter();
      OUTLINED_FUNCTION_1_4();
      goto LABEL_41;
    }

LABEL_37:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_4();
LABEL_41:
    v8 = FigSignalErrorAtGM();
  }

LABEL_42:
  v11 = v8;
  v12 = 0;
LABEL_11:
  if (values)
  {
    CFRelease(values);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v11)
  {
    goto LABEL_29;
  }

  v13 = (*(DerivedStorage + 56))(*(DerivedStorage + 64), *(DerivedStorage + 120), v12);
  if (v13)
  {
    v11 = v13;
  }

  else
  {
    ffw_vtt_releasePipeline(a1);
    v14 = ffw_vtt_createByteStreamBasedOnBlockBuffer(v5, &v24, &cf);
    v15 = v24;
    if (v14 || (v14 = ffw_vtt_buildPipeline(v5, a1, v24), v14))
    {
      v11 = v14;
      if (!v15)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v16 = *(DerivedStorage + 120);
      v17 = cf;
      *(DerivedStorage + 120) = cf;
      if (v17)
      {
        CFRetain(v17);
      }

      if (v16)
      {
        CFRelease(v16);
      }

      v18 = *(DerivedStorage + 128);
      *(DerivedStorage + 128) = v15;
      if (v15)
      {
        CFRetain(v15);
      }

      if (v18)
      {
        CFRelease(v18);
      }

      v11 = 0;
      if (!v15)
      {
        goto LABEL_29;
      }
    }

    CFRelease(v15);
  }

LABEL_29:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  return v11;
}

uint64_t ffw_vtt_finishPipeline(uint64_t a1)
{
  FigFormatWriterGetFigBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = FigCaptionTimelineGeneratorFinish(DerivedStorage[4]);
  if (!result)
  {
    result = FigVTTCaptionWriterFinish(DerivedStorage[1]);
    if (!result)
    {
      v3 = DerivedStorage[3];

      return FigVTTSerializerFlush(v3);
    }
  }

  return result;
}

uint64_t FigWebVTTFormatWriterCreateWithByteStream_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigWebVTTFormatWriterCreateWithByteStream_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigWebVTTFormatWriterCreateWithByteStream_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ffw_vtt_CopyProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ffw_vtt_CopyProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ffw_vtt_SetProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ffw_vtt_SetProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ffw_vtt_SetProperty_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ffw_vtt_AddTrack_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ffw_vtt_AddTrack_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ffw_vtt_AddTrack_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ffw_vtt_CopyTrackProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ffw_vtt_CopyTrackProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ffw_vtt_CopyTrackProperty_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ffw_vtt_SetTrackProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ffw_vtt_SetTrackProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ffw_vtt_SetTrackProperty_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ffw_vtt_CaptionGroupConverterCallback_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void configurationScheduler_timerSourceActivation()
{
  v5 = **&MEMORY[0x1E6960C70];
  v0 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v0)
  {
    v1 = v0;
    CMTimebaseGetTime(&v5, *(v0 + 24));
    FigSimpleMutexLock();
    v2 = v1[9];
    if (v2)
    {
      if (v1[10])
      {
        v3 = FigCFWeakReferenceHolderCopyReferencedObject();
        if (!v3)
        {
          goto LABEL_9;
        }

        v2 = v1[9];
      }

      else
      {
        v3 = 0;
      }

      v4 = v5;
      v2(v1, &v4, v3);
    }

    else
    {
      v3 = 0;
    }

LABEL_9:
    FigSimpleMutexUnlock();
    CFRelease(v1);
    if (v3)
    {
      CFRelease(v3);
    }
  }
}

uint64_t FigVideoReceiverConfigurationSchedulerCreate_cold_2(uint64_t a1, _DWORD *a2)
{
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t FigVideoReceiverConfigurationSchedulerCreate_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoReceiverConfigurationSchedulerCreate_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoReceiverConfigurationSchedulerAddConfigurationWithActivationTime_cold_1(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v4 = FigSignalErrorAtGM();
  *a3 = v4;
  if (!v4)
  {
    return 1;
  }

  FigSimpleMutexUnlock();
  return 0;
}

uint64_t FigVideoReceiverConfigurationSchedulerAddConfigurationWithActivationTime_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoReceiverConfigurationSchedulerAddConfigurationWithActivationTime_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoReceiverConfigurationSchedulerAddConfigurationWithActivationTime_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoReceiverConfigurationSchedulerCopyBestConfigurationForHostTime_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoReceiverConfigurationSchedulerCopyBestConfigurationForHostTime_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoReceiverConfigurationSchedulerCopyAllConfigurations_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoReceiverConfigurationSchedulerCopyAllConfigurations_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoReceiverConfigurationSchedulerCopyAllConfigurations_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoReceiverConfigurationSchedulerPruneConfigurationsBeforeHostTime_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoReceiverConfigurationSchedulerReset_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoReceiverConfigurationSchedulerSetConfigurationIsReadyToActivateCallack_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoReceiverConfigurationSchedulerSetConfigurationWasRemovedCallback_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoReceiverConfigurationSchedulerSetConfigurationWasRemovedCallback_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void FPSTimelineConverterL2TimeToL3(__n128 *a1@<X1>, __n128 *a2@<X8>)
{
  OUTLINED_FUNCTION_9_67(a1, a2);
  if (v2)
  {
    OUTLINED_FUNCTION_5_119();
    v3 = OUTLINED_FUNCTION_0_185();
    fpstc_L2TimeToL3Locked(v3, v4, v5);

    FigSimpleMutexUnlock();
  }
}

void FPSTimelineConverterL2TimeToL4(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_4_133(MEMORY[0x1E6960C70]);
  if (v3)
  {
    OUTLINED_FUNCTION_5_119();
    OUTLINED_FUNCTION_130_0();
    fpstc_L2TimeToL3Locked(v1, &v4, &v5);
    fpstc_L3TimeToL4Locked(v1, &v5, a1);

    FigSimpleMutexUnlock();
  }
}

void FPSTimelineConverterL3TimeToL2(__n128 *a1@<X1>, __n128 *a2@<X8>)
{
  OUTLINED_FUNCTION_9_67(a1, a2);
  if (v2)
  {
    OUTLINED_FUNCTION_5_119();
    v3 = OUTLINED_FUNCTION_0_185();
    fpstc_L3TimeToL2Locked(v3, v4, v5);

    FigSimpleMutexUnlock();
  }
}

void FPSTimelineConverterL3TimeToL4()
{
  OUTLINED_FUNCTION_4_133(MEMORY[0x1E6960C70]);
  if (v0)
  {
    OUTLINED_FUNCTION_5_119();
    v1 = OUTLINED_FUNCTION_0_185();
    fpstc_L3TimeToL4Locked(v1, v2, v3);

    FigSimpleMutexUnlock();
  }
}

void FPSTimelineConverterL4TimeToL3()
{
  OUTLINED_FUNCTION_4_133(MEMORY[0x1E6960C70]);
  if (v0)
  {
    OUTLINED_FUNCTION_5_119();
    v1 = OUTLINED_FUNCTION_0_185();
    fpstc_L4TimeToL3Locked(v1, v2, v3);

    FigSimpleMutexUnlock();
  }
}

void FPSTimelineConverterL4TimeToL2(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_4_133(MEMORY[0x1E6960C70]);
  if (v3)
  {
    OUTLINED_FUNCTION_5_119();
    OUTLINED_FUNCTION_130_0();
    fpstc_L4TimeToL3Locked(v1, &v4, v5);
    fpstc_L3TimeToL2Locked(v1, v5, a1);

    FigSimpleMutexUnlock();
  }
}

void FPSTimelineConverterL2TimeRangeToL3()
{
  OUTLINED_FUNCTION_2_165(MEMORY[0x1E6960C98]);
  if (v2)
  {
    OUTLINED_FUNCTION_5_119();
    v16 = *(v1 + 16);
    v19 = *(v1 + 32);
    *&range.start.value = *v1;
    v26 = 0;
    v27 = 0;
    v25 = 0;
    range.start.epoch = *(v1 + 16);
    v3 = OUTLINED_FUNCTION_6_74();
    fpstc_L2TimeToL3Locked(v3, v4, v5);
    v24 = 0;
    v23 = 0uLL;
    OUTLINED_FUNCTION_10_67(v6, v7, v8, v9, v10, v11, v12, v13, range.start.value, *&range.start.timescale, v16, *(&v16 + 1), v19);
    CMTimeRangeGetEnd(&v28, &range);
    fpstc_L2TimeToL3Locked(v0, &v28.value, &v23);
    OUTLINED_FUNCTION_12_64();
    *&v28.value = v23;
    OUTLINED_FUNCTION_13_50(v24, v14, v15, v17, v18, v20, v21, range.start.value);
    FigSimpleMutexUnlock();
  }
}

void FPSTimelineConverterL2TimeRangeToL4()
{
  OUTLINED_FUNCTION_2_165(MEMORY[0x1E6960C98]);
  if (v1)
  {
    OUTLINED_FUNCTION_5_119();
    OUTLINED_FUNCTION_1_172();
    v39 = 0;
    v40 = 0;
    v38 = 0;
    *&v41.value = v2;
    v41.epoch = *(v0 + 16);
    v3 = OUTLINED_FUNCTION_6_106();
    fpstc_L2TimeToL3Locked(v3, v4, v5);
    v6 = OUTLINED_FUNCTION_6_74();
    fpstc_L3TimeToL4Locked(v6, v7, v8);
    v37 = 0;
    v36 = 0uLL;
    OUTLINED_FUNCTION_10_67(v9, v10, v11, v12, v13, v14, v15, v16, v23, v25, v27, v29, v31);
    CMTimeRangeGetEnd(&v35, &range);
    v41 = v35;
    v17 = OUTLINED_FUNCTION_6_106();
    fpstc_L2TimeToL3Locked(v17, v18, v19);
    v20 = OUTLINED_FUNCTION_6_74();
    fpstc_L3TimeToL4Locked(v20, v21, v22);
    OUTLINED_FUNCTION_12_64();
    *&v41.value = v36;
    OUTLINED_FUNCTION_13_50(v37, v24, v26, v28, v30, v32, v33, range.start.value);
    FigSimpleMutexUnlock();
  }
}

void FPSTimelineConverterL3TimeRangeToL2(CMTimeRange *a1@<X8>)
{
  OUTLINED_FUNCTION_2_165(MEMORY[0x1E6960C98]);
  if (v4)
  {
    OUTLINED_FUNCTION_5_119();
    OUTLINED_FUNCTION_1_172();
    v12 = 0uLL;
    v13 = 0;
    *&range.start.value = v5;
    range.start.epoch = *(v2 + 16);
    fpstc_L3TimeToL2Locked(v1, &range, &v12);
    memset(&v11, 0, sizeof(v11));
    range = v9;
    CMTimeRangeGetEnd(&end, &range);
    v6 = OUTLINED_FUNCTION_6_74();
    fpstc_L3TimeToL2Locked(v6, v7, v8);
    *&range.start.value = v12;
    range.start.epoch = v13;
    end = v11;
    CMTimeRangeFromTimeToTime(a1, &range.start, &end);
    FigSimpleMutexUnlock();
  }
}

void FPSTimelineConverterL3TimeRangeToL4(CMTimeRange *a1@<X8>)
{
  OUTLINED_FUNCTION_2_165(MEMORY[0x1E6960C98]);
  if (v4)
  {
    OUTLINED_FUNCTION_5_119();
    OUTLINED_FUNCTION_1_172();
    v11 = 0;
    v10 = 0uLL;
    *&range.start.value = v5;
    range.start.epoch = *(v2 + 16);
    fpstc_L3TimeToL4Locked(v1, &range.start, &v10);
    range = v9;
    CMTimeRangeGetEnd(&end, &range);
    v6 = OUTLINED_FUNCTION_6_106();
    fpstc_L3TimeToL4Locked(v6, v7, v8);
    *&range.start.value = v10;
    range.start.epoch = v11;
    memset(&end, 0, sizeof(end));
    CMTimeRangeFromTimeToTime(a1, &range.start, &end);
    FigSimpleMutexUnlock();
  }
}

void FPSTimelineConverterL4TimeRangeToL3()
{
  OUTLINED_FUNCTION_2_165(MEMORY[0x1E6960C98]);
  if (v2)
  {
    OUTLINED_FUNCTION_5_119();
    OUTLINED_FUNCTION_1_172();
    v20 = 0;
    v19 = 0uLL;
    *&v23.value = v3;
    v23.epoch = *(v1 + 16);
    fpstc_L4TimeToL3Locked(v0, &v23, &v19);
    v23 = *v15;
    v4 = OUTLINED_FUNCTION_6_106();
    fpstc_L4TimeToL3Locked(v4, v5, v6);
    OUTLINED_FUNCTION_7_91(v7, v8, v9, v10, v11, v12, v13, v14, *v15, *&v15[8], *&v15[16], v16, v17, v18, 0, 0, v19, v20, v21, v22);
    FigSimpleMutexUnlock();
  }
}

void FPSTimelineConverterL4TimeRangeToL2()
{
  OUTLINED_FUNCTION_2_165(MEMORY[0x1E6960C98]);
  if (v2)
  {
    OUTLINED_FUNCTION_5_119();
    OUTLINED_FUNCTION_1_172();
    OUTLINED_FUNCTION_14_58(*(v1 + 16), v16, v19, v22, v25, v28, v31, v34, v36, v37, 0, 0, 0, v3, v4, v42);
    fpstc_L3TimeToL2Locked(v0, v43, &v39);
    OUTLINED_FUNCTION_14_58(v23, v17, v20, v23, v26, v29, v32, 0, 0, 0, v39, *(&v39 + 1), v40, v17, v20, v42);
    v5 = OUTLINED_FUNCTION_6_106();
    v8 = fpstc_L3TimeToL2Locked(v5, v6, v7);
    OUTLINED_FUNCTION_7_91(v8, v9, v10, v11, v12, v13, v14, v15, v18, v21, v24, v27, v30, v33, v35, v38, v39, v40, v41, v42);
    FigSimpleMutexUnlock();
  }
}

void FPSTimelineConverterSetProperty_cold_1(const void **a1, CFTypeRef cf)
{
  v2 = *a1;
  *a1 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v2)
  {

    CFRelease(v2);
  }
}

uint64_t FPSTimelineConverterSetProperty_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_8_77();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FPSTimelineConverterSetProperty_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_8_77();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FPSTimelineConverterSetProperty_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_8_77();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FPSTimelineConverterSetProperty_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_8_77();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FPSTimelineConverterCopyProperty_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_8_77();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FPSTimelineConverterCopyProperty_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_8_77();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FPSTimelineConverterCopyProperty_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_8_77();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void FPSTimelineConverterCreate_cold_1(const void *a1, _DWORD *a2)
{
  *a2 = FigSignalErrorAtGM();

  CFRelease(a1);
}

uint64_t FPSTimelineConverterCreate_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FPSTimelineConverterCreate_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_8_77();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void vcputils_setEyesProjectionAndPackingToFormatExtensions(int a1, uint64_t a2, CFArrayRef theArray, uint64_t a4, uint64_t a5, uint64_t a6)
{
  tagBuffer = *MEMORY[0x1E6960680];
  numberOfTagsCopied = 0;
  v37 = *MEMORY[0x1E6960648];
  v36 = 0;
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (Count >= 1)
    {
      v12 = Count;
      v30 = a2;
      v31 = a4;
      v32 = a5;
      v33 = a6;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = *MEMORY[0x1E6960688];
      v17 = *(MEMORY[0x1E6960688] + 8);
      v34 = *(MEMORY[0x1E6960690] + 8);
      v35 = *MEMORY[0x1E6960690];
      v18 = *MEMORY[0x1E69606A0];
      v19 = *(MEMORY[0x1E69606A0] + 8);
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v13);
        v21 = ValueAtIndex;
        if (!numberOfTagsCopied && CMTagCollectionGetTagsWithCategory(ValueAtIndex, kCMTagCategory_ProjectionType, &tagBuffer, 1, &numberOfTagsCopied))
        {
          return;
        }

        *&v41.category = v16;
        v41.value = v17;
        if (CMTagCollectionContainsTag(v21, v41))
        {
          v15 = 1;
          v14 = 1;
        }

        else
        {
          v42.value = v34;
          *&v42.category = v35;
          if (CMTagCollectionContainsTag(v21, v42))
          {
            v15 = 1;
          }

          *&v43.category = v18;
          v43.value = v19;
          if (CMTagCollectionContainsTag(v21, v43))
          {
            v14 = 1;
          }
        }

        if (!v36 && CMTagCollectionGetTagsWithCategory(v21, kCMTagCategory_PackingType, &v37, 1, &v36))
        {
          return;
        }

        ++v13;
      }

      while (v12 != v13);
      v22 = v30;
      if (numberOfTagsCopied)
      {
        v23 = *&tagBuffer.category;
        value = tagBuffer.value;
        if (OUTLINED_FUNCTION_0_186(MEMORY[0x1E6960680]))
        {
          v25 = MEMORY[0x1E6960138];
LABEL_37:
          v22 = *v25;
          goto LABEL_38;
        }

        if (OUTLINED_FUNCTION_0_186(MEMORY[0x1E6960660]))
        {
          v25 = MEMORY[0x1E6960120];
          goto LABEL_37;
        }

        if (OUTLINED_FUNCTION_0_186(MEMORY[0x1E6960670]))
        {
          v25 = MEMORY[0x1E6960128];
          goto LABEL_37;
        }

        if (OUTLINED_FUNCTION_0_186(MEMORY[0x1E6960668]))
        {
          v25 = MEMORY[0x1E6960118];
          goto LABEL_37;
        }

        if (OUTLINED_FUNCTION_0_186(MEMORY[0x1E6960678]))
        {
          v25 = MEMORY[0x1E6960130];
          goto LABEL_37;
        }

        *&v44.category = v23;
        v44.value = value;
        v29 = CMTagCopyDescription(*MEMORY[0x1E695E480], v44);
        if (v29)
        {
          CFRelease(v29);
        }

        v22 = 0;
      }

LABEL_38:
      if (v36)
      {
        v28 = *&v37.category;
        v27 = v37.value;
        if (CMTagEqualToTag(v37, *MEMORY[0x1E6960650]))
        {
          v26 = *MEMORY[0x1E6960178];
          if (!v15)
          {
            goto LABEL_43;
          }

          goto LABEL_41;
        }

        *&v40.category = v28;
        v40.value = v27;
        if (CMTagEqualToTag(v40, *MEMORY[0x1E6960658]))
        {
          v26 = *MEMORY[0x1E6960180];
        }

        else
        {
          v26 = 0;
        }

        if (!v15)
        {
LABEL_43:
          a5 = v32;
          if (v14)
          {
            FigCFDictionarySetValue();
          }

          a6 = v33;
          a4 = v31;
          if (v22)
          {
            goto LABEL_19;
          }

          goto LABEL_20;
        }
      }

      else
      {
        v26 = 0;
        if (!v15)
        {
          goto LABEL_43;
        }
      }

LABEL_41:
      FigCFDictionarySetValue();
      goto LABEL_43;
    }
  }

  v26 = 0;
  if (a2)
  {
LABEL_19:
    FigCFDictionarySetValue();
  }

LABEL_20:
  if (v26)
  {
    FigCFDictionarySetValue();
  }

  if (a4)
  {
    FigCFDictionarySetValue();
  }

  if (a5)
  {
    FigCFDictionarySetValue();
  }

  if (a6)
  {
    FigCFDictionarySetValue();
  }
}

uint64_t FigVideoCompositionCopyOutputFormatExtensions_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t FigVideoCompositionCopyOutputFormatExtensions_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t FigVideoCompositionCopyOutputFormatExtensions_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t FigAssertionCopyProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAssertionCopyProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAssertionSetProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figTTMLRootConsumeChildNode(uint64_t a1, CFTypeRef *a2, CFTypeRef *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v16 = 0;
  cf = 0;
  v15 = 0;
  v7 = FigTTMLGetLibXMLAccess();
  if (!v7)
  {
    v8 = FigSignalErrorAtGM();
    goto LABEL_27;
  }

  if ((*(v7 + 72))(a1) == 1)
  {
    v8 = FigTTMLCopyNamespaceAndLocalNameOfCurrentNode(a1, &v16, &v15);
    if (v8)
    {
      goto LABEL_27;
    }

    if (FigCFEqual() && FigCFEqual())
    {
      v9 = CFGetAllocator(*a2);
      v8 = FigTTMLHeadCreate(v9, a1, a2, &cf);
      if (!v8)
      {
        v10 = *(DerivedStorage + 336);
        v11 = cf;
        *(DerivedStorage + 336) = cf;
        if (!v11)
        {
          goto LABEL_9;
        }

        goto LABEL_8;
      }

      goto LABEL_27;
    }

    if (FigCFEqual() && FigCFEqual())
    {
      v12 = CFGetAllocator(*a2);
      v8 = FigTTMLBodyCreate(v12, a1, a2, &cf);
      if (!v8)
      {
        v10 = *(DerivedStorage + 344);
        v11 = cf;
        *(DerivedStorage + 344) = cf;
        if (!v11)
        {
LABEL_9:
          if (v10)
          {
            CFRelease(v10);
          }

          goto LABEL_17;
        }

LABEL_8:
        CFRetain(v11);
        goto LABEL_9;
      }

LABEL_27:
      v13 = v8;
      goto LABEL_19;
    }
  }

  v8 = FigTTMLSkipNode(a1, a2, *(DerivedStorage + 128));
  if (v8)
  {
    goto LABEL_27;
  }

LABEL_17:
  v13 = 0;
  if (a3)
  {
    *a3 = cf;
    cf = 0;
  }

LABEL_19:
  if (v15)
  {
    CFRelease(v15);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v13;
}

uint64_t FigTTMLRootCreate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figTTMLRoot_GetNodeType_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t EnsureUUID_0(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 216))
  {
    return 0;
  }

  v3 = DerivedStorage;
  v4 = CFGetAllocator(a1);
  v5 = CFUUIDCreate(v4);
  if (v5)
  {
    v6 = v5;
    v7 = CFGetAllocator(a1);
    v8 = CFUUIDCreateString(v7, v6);
    *(v3 + 216) = v8;
    if (v8)
    {
      v9 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_303();
      v9 = FigSignalErrorAtGM();
    }

    CFRelease(v6);
    return v9;
  }

  OUTLINED_FUNCTION_303();

  return FigSignalErrorAtGM();
}

uint64_t EnsureUUIDForLimitedCryptor(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 72))
  {
    return 0;
  }

  v3 = DerivedStorage;
  v4 = CFGetAllocator(a1);
  v5 = CFUUIDCreate(v4);
  if (v5)
  {
    v6 = v5;
    v7 = CFGetAllocator(a1);
    v8 = CFUUIDCreateString(v7, v6);
    *(v3 + 72) = v8;
    if (v8)
    {
      v9 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_303();
      v9 = FigSignalErrorAtGM();
    }

    CFRelease(v6);
    return v9;
  }

  OUTLINED_FUNCTION_303();

  return FigSignalErrorAtGM();
}

uint64_t FigPKDCPECryptorCopyProperty(const void *a1, const void *a2, uint64_t a3, CFDataRef *a4)
{
  CMBaseObjectGetDerivedStorage();
  v9 = 4294955146;
  if (a2 && a4)
  {
    OUTLINED_FUNCTION_29_22();
    if (*(v4 + 16))
    {
      OUTLINED_FUNCTION_3_135();
      if (v22)
      {
        v9 = 4294954511;
      }

      else
      {
        v9 = v10;
      }

      goto LABEL_32;
    }

    if (CFEqual(a2, *MEMORY[0x1E6961098]))
    {
      v9 = 4294951076;
LABEL_32:
      FigSimpleMutexUnlock();
      return v9;
    }

    if (CFEqual(a2, *MEMORY[0x1E69610E0]))
    {
      v11 = *(v4 + 40);
      if (v11)
      {
LABEL_11:
        KeyRequestStateAndID = PKDKeyManagerCopyPropertyForKeyID(v11, *(v4 + 216), a2, a4);
LABEL_12:
        v9 = KeyRequestStateAndID;
        goto LABEL_32;
      }

      UInt32 = *(v4 + 264);
      if (!UInt32)
      {
        goto LABEL_30;
      }

      goto LABEL_29;
    }

    if (CFEqual(a2, *MEMORY[0x1E6961118]))
    {
      v13 = *(v4 + 40);
      if (v13)
      {
        IsDecryptContextAvailableForKeyID = PKDKeyManagerIsDecryptContextAvailableForKeyID(v13, *(v4 + 216));
LABEL_16:
        v15 = MEMORY[0x1E695E4D0];
        v16 = MEMORY[0x1E695E4C0];
LABEL_17:
        if (IsDecryptContextAvailableForKeyID)
        {
          v15 = v16;
        }

        goto LABEL_28;
      }

      if (*(v4 + 80) || *(v4 + 128) || *(v4 + 72) && *(v4 + 88))
      {
        v15 = MEMORY[0x1E695E4D0];
LABEL_28:
        UInt32 = *v15;
LABEL_29:
        UInt32 = CFRetain(UInt32);
LABEL_30:
        v9 = 0;
        goto LABEL_31;
      }

LABEL_43:
      v15 = MEMORY[0x1E695E4C0];
      goto LABEL_28;
    }

    if (CFEqual(a2, *MEMORY[0x1E69610D0]))
    {
      v11 = *(v4 + 40);
      if (v11)
      {
        goto LABEL_11;
      }

      IsDecryptContextAvailableForKeyID = IsLeaseExpired();
      v15 = MEMORY[0x1E695E4C0];
      v16 = MEMORY[0x1E695E4D0];
      goto LABEL_17;
    }

    if (CFEqual(a2, *MEMORY[0x1E6961110]))
    {
      v19 = *(v4 + 40);
      if (v19)
      {
        IsDecryptContextAvailableForKeyID = PKDKeyManagerIsReadyToCreateKeyRequestForKeyID(v19, *(v4 + 216));
        goto LABEL_16;
      }

      v15 = MEMORY[0x1E695E4D0];
      v21 = MEMORY[0x1E695E4C0];
      v22 = *(v4 + 72) == 0;
LABEL_45:
      if (!v22)
      {
        v15 = v21;
      }

      goto LABEL_28;
    }

    if (CFEqual(a2, *MEMORY[0x1E69610E8]))
    {
      LODWORD(valuePtr) = 0;
      v20 = *(v4 + 40);
      if (v20)
      {
        KeyRequestStateAndID = PKDKeyManagerGetKeyRequestStateAndID(v20, *(v4 + 216), &valuePtr, 0);
        if (KeyRequestStateAndID)
        {
          goto LABEL_12;
        }
      }

      else
      {
        LODWORD(valuePtr) = *(v4 + 192);
      }

      SInt32 = FigCFNumberCreateSInt32();
      *a4 = SInt32;
      if (SInt32)
      {
        v9 = 0;
      }

      else
      {
        v9 = 4294949725;
      }

      goto LABEL_32;
    }

    if (CFEqual(a2, *MEMORY[0x1E69610C0]))
    {
      valuePtr = FigCPEExternalProtectionMonitorGetMethods(*(v4 + 152));
      v23 = *MEMORY[0x1E695E480];
      v24 = kCFNumberSInt64Type;
LABEL_50:
      UInt32 = CFNumberCreate(v23, v24, &valuePtr);
      goto LABEL_30;
    }

    v26 = *MEMORY[0x1E69610D8];
    v27 = CFEqual(a2, *MEMORY[0x1E69610D8]);
    v28 = MEMORY[0x1E69610C8];
    if (!v27 && !CFEqual(a2, *MEMORY[0x1E69610C8]))
    {
      if (CFEqual(a2, *MEMORY[0x1E6961138]))
      {
        v11 = *(v4 + 40);
        if (v11)
        {
          goto LABEL_11;
        }

        v15 = MEMORY[0x1E695E4C0];
        v21 = MEMORY[0x1E695E4D0];
        v22 = *(v4 + 136) == 0;
        goto LABEL_45;
      }

      if (CFEqual(a2, *MEMORY[0x1E69610F8]))
      {
        v11 = *(v4 + 40);
        if (v11)
        {
          goto LABEL_11;
        }

        UInt32 = *(v4 + 128);
        if (UInt32)
        {
          goto LABEL_29;
        }
      }

      else
      {
        if (CFEqual(a2, *MEMORY[0x1E69610F0]))
        {
          v11 = *(v4 + 40);
          if (!v11)
          {
            KeyRequestStateAndID = CreatePackagedPersistentKeyGuts(*(v4 + 32), *(v4 + 128), a4);
            goto LABEL_12;
          }

          goto LABEL_11;
        }

        if (CFEqual(a2, *MEMORY[0x1E6961120]))
        {
          v11 = *(v4 + 40);
          if (v11)
          {
            goto LABEL_11;
          }

          EnsureRequiredExternalProtectionMethod(a1);
          v9 = v31;
          if (v31)
          {
            goto LABEL_32;
          }

          UInt32 = FigCFNumberCreateUInt32();
LABEL_31:
          *a4 = UInt32;
          goto LABEL_32;
        }

        if (CFEqual(a2, @"ExternalProtectionMethodsRequiredForPlayback") && *(v4 + 168))
        {
          Methods = FigCPEExternalProtectionMonitorGetMethods(*(v4 + 152));
          v33 = Methods & 1;
          if ((Methods & 2) != 0)
          {
            v33 = 2;
          }

          LODWORD(valuePtr) = v33;
          v23 = *MEMORY[0x1E695E480];
          v24 = kCFNumberSInt32Type;
          goto LABEL_50;
        }

        if (CFEqual(a2, @"DisplayList") && *(v4 + 168))
        {
          KeyRequestStateAndID = FigCPEExternalProtectionMonitorCopyProperty(*(v4 + 152), @"DisplayList", a3, a4);
          goto LABEL_12;
        }

        if (CFEqual(a2, *MEMORY[0x1E6961130]))
        {
          KeyRequestStateAndID = EnsureUUID_0(a1);
          if (KeyRequestStateAndID)
          {
            goto LABEL_12;
          }

          UInt32 = *(v4 + 216);
          if (!UInt32)
          {
            goto LABEL_30;
          }

          goto LABEL_29;
        }

        if (CFEqual(a2, *MEMORY[0x1E69610B0]))
        {
          KeyRequestStateAndID = CopyCurrentRequestID_0(v4, a4);
          goto LABEL_12;
        }

        if (CFEqual(a2, *MEMORY[0x1E69610A8]))
        {
          UInt32 = *(v4 + 224);
          if (!UInt32)
          {
            goto LABEL_30;
          }

          goto LABEL_29;
        }

        if (CFEqual(a2, *MEMORY[0x1E6961108]))
        {
          UInt32 = *(v4 + 184);
          if (!UInt32)
          {
            goto LABEL_30;
          }

          goto LABEL_29;
        }

        if (!CFEqual(a2, *MEMORY[0x1E69610A0]))
        {
          if (!CFEqual(a2, *MEMORY[0x1E6961128]))
          {
            if (!CFEqual(a2, *MEMORY[0x1E69610B8]))
            {
              if (!*v4)
              {
                v9 = 4294954512;
                goto LABEL_32;
              }

              KeyRequestStateAndID = CMBaseObjectCopyProperty(*v4, a2, a3, a4);
              goto LABEL_12;
            }

            v11 = *(v4 + 40);
            goto LABEL_11;
          }

          goto LABEL_43;
        }

        v11 = *(v4 + 40);
        if (v11)
        {
          goto LABEL_11;
        }

        UInt32 = *(v4 + 272);
        if (UInt32)
        {
          goto LABEL_29;
        }
      }

      v9 = 4294955137;
      goto LABEL_32;
    }

    v29 = *(v4 + 40);
    if (v29)
    {
      KeyRequestStateAndID = PKDKeyManagerEnsureAndCopyLowValueKeyAndIVForKeyID(v29, *(v4 + 216), (v4 + 104), (v4 + 112));
      if (KeyRequestStateAndID)
      {
        goto LABEL_12;
      }
    }

    else
    {
      KeyRequestStateAndID = EnsureLowValueKeyAndIV(a1);
      if (KeyRequestStateAndID)
      {
        goto LABEL_12;
      }
    }

    if (CFEqual(a2, v26))
    {
      v30 = *(v4 + 104);
      if (!v30)
      {
        goto LABEL_62;
      }
    }

    else
    {
      if (!CFEqual(a2, *v28))
      {
        if (*a4)
        {
          goto LABEL_63;
        }

        goto LABEL_71;
      }

      v30 = *(v4 + 112);
      if (!v30)
      {
LABEL_62:
        *a4 = v30;
        if (v30)
        {
LABEL_63:
          v9 = 0;
          goto LABEL_32;
        }

LABEL_71:
        v9 = 4294955145;
        goto LABEL_32;
      }
    }

    v30 = CFRetain(v30);
    goto LABEL_62;
  }

  return v9;
}

uint64_t FigPKDCPECryptorSetProperty(const void *a1, const void *a2, void *a3)
{
  valuePtr[16] = *MEMORY[0x1E69E9840];
  CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    return 4294955146;
  }

  OUTLINED_FUNCTION_29_22();
  if (*(v3 + 16))
  {
    OUTLINED_FUNCTION_3_135();
    if (v8)
    {
      v9 = 4294954511;
    }

    else
    {
      v9 = v7;
    }

    goto LABEL_28;
  }

  if (!CFEqual(a2, *MEMORY[0x1E69610C0]))
  {
    if (CFEqual(a2, *MEMORY[0x1E6961108]))
    {
      v16 = *(v3 + 184);
      *(v3 + 184) = a3;
      if (a3)
      {
        CFRetain(a3);
      }

      if (!v16)
      {
        goto LABEL_27;
      }

      v15 = v16;
LABEL_26:
      CFRelease(v15);
      goto LABEL_27;
    }

    if (CFEqual(a2, *MEMORY[0x1E69610E0]))
    {
      if (a3)
      {
        v18 = CFGetTypeID(a3);
        if (v18 == CFErrorGetTypeID())
        {
          v19 = *(v3 + 40);
          if (!v19)
          {
            *(v3 + 192) = 1;
            v22 = *(v3 + 264);
            *(v3 + 264) = a3;
            CFRetain(a3);
            if (v22)
            {
              CFRelease(v22);
            }

            if (*(v3 + 72))
            {
              JE2f6WCx();
              *(v3 + 72) = 0;
            }

            *(v3 + 208) = 0;
            PostKeyRequestErrorOccurred(a1, a3);
            goto LABEL_27;
          }

          KeyRequestStateAndID = PKDKeyManagerSetKeyRequestError(v19, *(v3 + 216), a3);
          goto LABEL_40;
        }
      }

LABEL_69:
      KeyRequestStateAndID = FigSignalErrorAtGM();
      goto LABEL_40;
    }

    if (CFEqual(a2, *MEMORY[0x1E6961138]))
    {
      if (!a3)
      {
        goto LABEL_69;
      }

      v20 = CFGetTypeID(a3);
      if (v20 != CFBooleanGetTypeID())
      {
        goto LABEL_69;
      }

      v21 = *(v3 + 40);
      if (!v21)
      {
        if (dword_1EAF178B0)
        {
          LODWORD(v30) = 0;
          type[0] = OS_LOG_TYPE_DEFAULT;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          OUTLINED_FUNCTION_7();
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v9 = 0;
        *(v3 + 136) = CFBooleanGetValue(a3);
        goto LABEL_28;
      }

LABEL_39:
      KeyRequestStateAndID = PKDKeyManagerSetPropertyForKeyID(v21, *(v3 + 216), a2, a3);
      goto LABEL_40;
    }

    if (!CFEqual(a2, *MEMORY[0x1E69610F0]))
    {
      if (CFEqual(a2, @"DisplayList") && *(v3 + 168))
      {
        v26 = FigCPEExternalProtectionMonitorSetProperty(*(v3 + 152), @"DisplayList", a3);
        if (v26 == -12152)
        {
          v9 = 0;
        }

        else
        {
          v9 = v26;
        }

        goto LABEL_28;
      }

      if (!*v3)
      {
        v9 = 4294954512;
        goto LABEL_28;
      }

      KeyRequestStateAndID = CMBaseObjectSetProperty(*v3, a2, a3);
      goto LABEL_40;
    }

    v30 = 0;
    v23 = *(v3 + 40);
    if (v23)
    {
      KeyRequestStateAndID = PKDKeyManagerGetKeyRequestStateAndID(v23, *(v3 + 216), 0, &v30);
      if (KeyRequestStateAndID)
      {
        goto LABEL_40;
      }

      v24 = *(v3 + 40);
      if (v24)
      {
        KeyRequestStateAndID = PKDKeyManagerSetUsedForLowValueDecryptionForKeyID(v24, *(v3 + 216), *(v3 + 120));
        if (KeyRequestStateAndID)
        {
          goto LABEL_40;
        }

        v21 = *(v3 + 40);
        goto LABEL_39;
      }
    }

    else
    {
      v30 = *(v3 + 208);
    }

    *type = 0;
    if (dword_1EAF178B0)
    {
      v27 = OUTLINED_FUNCTION_126();
      os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_7();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    *(v3 + 136) = 1;
    KeyRequestStateAndID = CopyInfoFromPackagedPersistentKey(v3, a3, 0, 0, type);
    if (!KeyRequestStateAndID)
    {
      SetPersistentKey(a1, *type);
      v9 = v28;
      CFRelease(*type);
      goto LABEL_28;
    }

    goto LABEL_40;
  }

  valuePtr[0] = 0;
  if (!a3)
  {
    goto LABEL_69;
  }

  v10 = CFGetTypeID(a3);
  if (v10 != CFNumberGetTypeID())
  {
    goto LABEL_69;
  }

  Methods = FigCPEExternalProtectionMonitorGetMethods(*(v3 + 152));
  CFNumberGetValue(a3, kCFNumberSInt64Type, valuePtr);
  if ((valuePtr[0] & ~Methods) != 0)
  {
    cf[0] = 0;
    KeyRequestStateAndID = FigCPEExternalProtectionMonitorCreateForMethods(*MEMORY[0x1E695E480], valuePtr[0] & ~Methods, 0, *(v3 + 152), cf);
    if (!KeyRequestStateAndID)
    {
      v13 = *(v3 + 152);
      v14 = cf[0];
      if (v13 == cf[0])
      {
        goto LABEL_15;
      }

      KeyRequestStateAndID = AddWeakListenerOnExternalProtectionMonitor(a1, cf[0]);
      if (!KeyRequestStateAndID)
      {
        KeyRequestStateAndID = RemoveWeakListenerOnExternalProtectionMonitor(a1, *(v3 + 152));
        if (!KeyRequestStateAndID)
        {
          v14 = cf[0];
          v13 = *(v3 + 152);
LABEL_15:
          *(v3 + 152) = v14;
          if (v14)
          {
            CFRetain(v14);
          }

          if (v13)
          {
            CFRelease(v13);
          }

          v15 = cf[0];
          if (!cf[0])
          {
            goto LABEL_27;
          }

          goto LABEL_26;
        }
      }
    }

LABEL_40:
    v9 = KeyRequestStateAndID;
    goto LABEL_28;
  }

LABEL_27:
  v9 = 0;
LABEL_28:
  FigSimpleMutexUnlock();
  return v9;
}