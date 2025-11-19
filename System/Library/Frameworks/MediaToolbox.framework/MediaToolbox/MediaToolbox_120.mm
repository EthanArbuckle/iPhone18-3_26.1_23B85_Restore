void __itemairplay_handleSetProperty_block_invoke_3()
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
        FigAirPlayMediaSelectionSetProperty(v3, @"MediaPresentationCharacteristics", *(v0 + 48));
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

void __itemairplay_handleSetProperty_block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = CFRetain(v2);
  }

  else
  {
    v3 = CFArrayCreate(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9C0]);
  }

  v4 = v3;
  if (v3)
  {
    FigReadWriteLockLockForRead();
    if (!**(a1 + 48))
    {
      v5 = *(a1 + 40);
      if (!*(v5 + 72))
      {
        v6 = *(v5 + 352);
        if (v6)
        {
          FigAirPlayMediaSelectionSetProperty(v6, @"mediaCharacteristicsForCustomMediaSelectionSchemes", v4);
          v7 = *(CMBaseObjectGetDerivedStorage() + 216);
          if (v7)
          {
            if (v7 != 10)
            {
              FigSimpleMutexLock();
              CFDictionarySetValue(*(*(a1 + 40) + 336), *MEMORY[0x1E6961EA0], v4);
              FigSimpleMutexUnlock();
              playerairplay_triggerAsyncCheckAndUpdatePlayQueueItems(*(a1 + 56));
            }
          }
        }
      }
    }
  }

  FigReadWriteLockUnlockForRead();
  v8 = *(a1 + 56);
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = *(a1 + 64);
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = *(a1 + 32);
  if (v10)
  {
    CFRelease(v10);
  }

  if (v4)
  {

    CFRelease(v4);
  }
}

uint64_t itemairplay_SetProperties(uint64_t a1, const __CFDictionary *a2, uint64_t *a3)
{
  cf = 0;
  v23 = 0;
  v21 = 0;
  v22 = 0;
  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (*(DerivedStorage + 72))
    {
      OUTLINED_FUNCTION_239();
      FigSignalErrorAtGM();
      v19 = 0;
      v7 = 0;
      goto LABEL_11;
    }

    v6 = DerivedStorage;
    v7 = FigCFWeakReferenceHolderCopyReferencedObject();
    v8 = CMBaseObjectGetDerivedStorage();
    if (!v8 || *v8)
    {
      OUTLINED_FUNCTION_239();
      FigSignalErrorAtGM();
      v19 = 0;
      goto LABEL_11;
    }

    v9 = OUTLINED_FUNCTION_23_15();
    v14 = FPSupport_HandlePlaybackItemSetPropertiesAndCopyModification(v9, a2, 0, v10, v11, v12, v13);
    if (v14)
    {
LABEL_12:
      v18 = v14;
      goto LABEL_14;
    }

    v15 = *(v6 + 8);
    if (!v15)
    {
      OUTLINED_FUNCTION_239();
      v17 = FigSignalErrorAtGM();
LABEL_9:
      v18 = v17;
      if (v17)
      {
        goto LABEL_14;
      }

      goto LABEL_10;
    }

    v16 = *(*(CMBaseObjectGetVTable() + 16) + 160);
    if (v16)
    {
      v17 = v16(v15, cf, &v21);
      goto LABEL_9;
    }

    v18 = 4294954514;
  }

  else
  {
    OUTLINED_FUNCTION_239();
    v18 = FigSignalErrorAtGM();
    v7 = 0;
    if (!v18)
    {
LABEL_10:
      v19 = v21;
LABEL_11:
      v14 = FPSupport_CopyCombinedSetPropertiesErrDictionary(v22, v19, a3);
      goto LABEL_12;
    }
  }

LABEL_14:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  return v18;
}

uint64_t playerairplay_SetProperties()
{
  OUTLINED_FUNCTION_471();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!v1)
  {
    goto LABEL_11;
  }

  v3 = DerivedStorage;
  v4 = OUTLINED_FUNCTION_23_15();
  v9 = FPSupport_HandlePlayerSetPropertiesAndCopyModification(v4, v1, 0, v5, v6, v7, v8);
  if (v9)
  {
    return v9;
  }

  if (*(v3 + 8))
  {
    if (!*(*(CMBaseObjectGetVTable() + 16) + 112))
    {
      return 4294954514;
    }

    v10 = OUTLINED_FUNCTION_266();
    v12 = v11(v10);
  }

  else
  {
LABEL_11:
    OUTLINED_FUNCTION_239();
    v12 = FigSignalErrorAtGM();
  }

  v13 = v12;
  if (!v12)
  {
    return FPSupport_CopyCombinedSetPropertiesErrDictionary(0, 0, v0);
  }

  return v13;
}

void __playerairplay_removeItemFromLocalPlayQueue_block_invoke_3(uint64_t a1)
{
  cf = 0;
  if (!**(a1 + 32))
  {
    CMBaseObjectGetDerivedStorage();
    OUTLINED_FUNCTION_44_13();
    v3 = v3 || v2 == 10;
    if (!v3)
    {
      playqueue_copyCurrentClientPlayQueueItemAndCurrentMediaControlPlayListItem(*(*(a1 + 32) + 40), &cf, 0);
      playerairplay_inferPlaybackStateFromAirPlayPlayer(*(a1 + 40), cf != 0);
      if (cf)
      {
        CFRelease(cf);
      }
    }
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    CFRelease(v4);
  }
}

void playerairplay_deferredAutoMediaSelectionCriteriaChanged()
{
  v1 = OUTLINED_FUNCTION_645();
  if (v0)
  {
    if (!*v1)
    {
      CMBaseObjectGetDerivedStorage();
      OUTLINED_FUNCTION_44_13();
      v3 = v3 || v2 == 10;
      if (!v3)
      {
        playerairplay_updateAndApplySelectedMediaArrayOnMediaControl(v0);
      }
    }

    CFRelease(v0);
  }
}

uint64_t FigPlayerAirPlayCreateNonCoordinatedWithOptions_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPlayerAirPlayCreateNonCoordinatedWithOptions_cold_6(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPlayerAirPlayCreateNonCoordinatedWithOptions_cold_7(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPlayerAirPlayCreateNonCoordinatedWithOptions_cold_8(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPlayerAirPlayCreateNonCoordinatedWithOptions_cold_9(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPlayerAirPlayCreateNonCoordinatedWithOptions_cold_10(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPlayerAirPlayCreateNonCoordinatedWithOptions_cold_11(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPlayerAirPlayCreateNonCoordinatedWithOptions_cold_12(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPlayerAirPlayCreateNonCoordinatedWithOptions_cold_13(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPlayerAirPlayCreateNonCoordinatedWithOptions_cold_14(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPlayerAirPlayCreateNonCoordinatedWithOptions_cold_15(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPlayerAirPlayCreateNonCoordinatedWithOptions_cold_16(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPlayerAirPlayCreateNonCoordinatedWithOptions_cold_17(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPlayerAirPlayCreateNonCoordinatedWithOptions_cold_18(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPlayerAirPlayCreateNonCoordinatedWithOptions_cold_19(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemairplay_GetCurrentTime_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemairplay_GetCurrentTime_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void itemairplay_airplaySetCurrentTime_cold_1()
{
  OUTLINED_FUNCTION_42_11();
  CFDictionarySetValue(*(v2 + 336), @"SetPosition", v1);
  FigSimpleMutexUnlock();
  playerairplay_triggerAsyncCheckAndUpdatePlayQueueItems(v0);
  CFRelease(v1);
}

uint64_t itemairplay_airplaySetCurrentTime_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t __playerairplay_performQueuedItemVodkaExchange_block_invoke_cold_1(uint64_t a1)
{
  if (!pap_isLocalFileURL(*(a1 + 88), 0))
  {
    return 1;
  }

  v3 = OUTLINED_FUNCTION_198();
  CPEProtectorIfAvailable = itemairplay_createCPEProtectorIfAvailable(v3, v4, v5);
  if (CPEProtectorIfAvailable)
  {
    v7 = CPEProtectorIfAvailable;
    v8 = OUTLINED_FUNCTION_177();
    playerairplay_performQueuedItemVodkaExchange(v8);
    CFRelease(v7);
  }

  else
  {
    *(a1 + 703) = 1;
  }

  return 0;
}

uint64_t itemairplay_setUpPlayParamDictionary_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemairplay_setUpPlayParamDictionary_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemairplay_setUpPlayParamDictionary_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void itemairplay_setUpPlayParamDictionary_cold_5(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }
}

uint64_t itemairplay_setUpPlayParamDictionary_cold_6(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemairplay_setUpPlayParamDictionary_cold_7(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemairplay_setUpPlayParamDictionary_cold_8(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemairplay_setUpPlayParamDictionary_cold_9(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemairplay_setUpPlayParamDictionary_cold_10(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemairplay_setUpPlayParamDictionary_cold_11(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemairplay_setUpPlayParamDictionary_cold_12(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemairplay_setUpPlayParamDictionary_cold_13(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

_BYTE *itemairplay_playMediaCompletionHandler_cold_1()
{
  OUTLINED_FUNCTION_369();
  pap_invalidateEndpointPlaybackSession(v2);
  result = playerairplay_resetAirPlayVideoState(v0);
  if (*(v1 + 703) != 4)
  {
    OUTLINED_FUNCTION_270();
    playerairplay_postPlayerNotification();

    return playerairplay_updateAirPlayVideoIsActiveProperty();
  }

  return result;
}

void itemairplay_playMediaCompletionHandler_cold_2()
{
  OUTLINED_FUNCTION_471();
  playerairplay_postPlayerRateDidChangeNotification(v1, *v0);
  v2 = OUTLINED_FUNCTION_198();
  playerairplay_setRateAirPlay(v2, v3, v4, v4, v5);
}

void playerairplay_setActionAtEndOnAirPlayController_cold_1()
{
  OUTLINED_FUNCTION_369();
  if (!playerairplay_deferMediaControlPlaylistForInterstitials())
  {
    if (FigCFEqual())
    {
      valuePtr = 0;
    }

    else
    {
      if (FigCFEqual())
      {
        v1 = 1;
      }

      else if (FigCFEqual())
      {
        if (*(v0 + 244) == 1)
        {
          v1 = 3;
        }

        else
        {
          v1 = 0;
        }
      }

      else
      {
        v1 = 2;
      }

      valuePtr = v1;
    }

    v2 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
    v3 = OUTLINED_FUNCTION_236();
    pap_playbackSessionSetProxiedProperty(v3, v4, v5, 0);
    if (v2)
    {
      CFRelease(v2);
    }
  }
}

uint64_t playerairplay_mediaControlHandleTypeCurrentItemChanged_cold_2()
{
  OUTLINED_FUNCTION_471();
  *(v2 + 707) = 2;
  itemairplay_doCleanupAtEndOfPlayback();
  itemairplay_cleanupItemForAirPlay(v1, 1);
  OUTLINED_FUNCTION_340_1();
  itemairplay_postItemNotification();
  OUTLINED_FUNCTION_340_1();
  itemairplay_postItemNotification();
  return playqueue_removeItemFromClientQueueAndFromMediaControlPlaylist(*v0, v1, 1, 1);
}

void playerairplay_postIsBufferedAirPlayActiveDidChangeNotification_cold_1()
{
  OUTLINED_FUNCTION_471();
  v1 = MEMORY[0x1E695E4D0];
  if (!*(v2 + 296))
  {
    v1 = MEMORY[0x1E695E4C0];
  }

  CFDictionarySetValue(v0, @"CurrentIsBufferedAirPlayActive", *v1);
  OUTLINED_FUNCTION_236();
  playerairplay_postPlayerNotification();

  CFRelease(v0);
}

void playerairplay_checkStartStopAirPlay_cold_1(uint64_t a1)
{
  playerairplay_switchFromBufferedAirPlayToLocal(a1);
  v1 = OUTLINED_FUNCTION_203();
  playerairplay_switchFromAirPlayVideoToLocal(v1, v2);
}

uint64_t __playerairplay_updateSubPlayerPlayQueue_block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_71_4(a1);
  isUsingCustomMediaSelectionSchemes = itemairplay_isUsingCustomMediaSelectionSchemes();
  v5 = *(*a2 + 352);
  v6 = *MEMORY[0x1E695E480];
  if (isUsingCustomMediaSelectionSchemes)
  {
    OUTLINED_FUNCTION_2_4();
    FigAirPlayMediaSelectionCopyProperty(v8, v9, v6, (v7 + 24));
    v5 = *(*a2 + 352);
    v10 = kFigAirPlayMediaSelectionProperty_MediaPresentationCharacteristics;
    v11 = 40;
  }

  else
  {
    v10 = kFigAirPlayMediaSelectionProperty_SelectedMediaArrayForSubItem;
    v11 = 48;
  }

  v12 = *v10;
  v13 = (*(*(v2 + v11) + 8) + 24);

  return FigAirPlayMediaSelectionCopyProperty(v5, v12, v6, v13);
}

uint64_t __playerairplay_airplayRouteDeselectedCallback_block_invoke_cold_1(uint64_t a1)
{
  if (*(CMBaseObjectGetDerivedStorage() + 296))
  {
    playerairplay_switchFromBufferedAirPlayToLocal(*(a1 + 40));
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_97_4(DerivedStorage);
  FigCFDictionaryGetBooleanIfPresent();
  if (v4)
  {
    playerairplay_updateBasedOnAirPlayVideoRouteDeselected();
  }

  playerairplay_resetAirPlayRouteInformation(*(a1 + 40));
  return playerairplay_resetAirPlayVideoState(*(a1 + 40));
}

void __playerairplay_playbackWillBeInterruptedNotificationCallback_block_invoke_cold_1(uint64_t a1, void *a2)
{
  cf = 0;
  v4 = 0;
  playqueue_copyCurrentClientPlayQueueItemAndCurrentMediaControlPlayListItem(*(*a1 + 40), &cf, &v4);
  playerairplay_savePlaybackInfoAndStopAPV(*a2);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v4)
  {
    CFRelease(v4);
  }
}

void __playerairplay_playbackWillBeInterruptedNotificationCallback_block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_187();
  cf = 0;
  FPSupport_CreateSetRateOptions(*MEMORY[0x1E695E480], 27, &cf);
  playerairplay_updatePlayerRateToMatch(*(v0 + 40), cf, 0.0);
  playerairplay_updateSubPlayerPlayQueue();
  if (*(*(CMBaseObjectGetVTable() + 16) + 104))
  {
    v1 = OUTLINED_FUNCTION_298();
    v2(v1);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void __playerairplay_handleSetProperty_block_invoke_177_cold_1()
{
  OUTLINED_FUNCTION_369();
  pap_playbackSessionSetProperty();
  if (*(*v0 + 456))
  {

    playerairplay_createAndResumeVideoSyncTimer();
  }
}

void __playerairplay_handleSetProperty_block_invoke_2_179_cold_1()
{
  OUTLINED_FUNCTION_187();
  FPSupport_CreateSetRateOptions(*MEMORY[0x1E695E480], 27, v1);
  playerairplay_updatePlayerRateToMatch(*(v0 + 40), *v1, 0.0);
  if (*v1)
  {
    CFRelease(*v1);
  }
}

void playerairplay_updateAndApplySelectedMediaArrayOnMediaControl_cold_1(uint64_t a1, const void **a2, const void *a3)
{
  v5 = OUTLINED_FUNCTION_146_2(a1);
  playqueue_copyCurrentClientPlayQueueItemAndCurrentMediaControlPlayListItem(v5, v6, a2);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = *a2;
  if (DerivedStorage)
  {
    itemairplay_prepareAndCacheSelectedMediaArray();
    playerairplay_triggerAsyncCheckAndUpdatePlayQueueItems(a3);
    FigReadWriteLockUnlockForRead();
    v8 = *a2;
  }

  if (v8)
  {
    CFRelease(v8);
  }
}

void __playerairplay_handleSetProperty_block_invoke_11_cold_1(uint64_t a1, uint64_t a2, const void **a3)
{
  OUTLINED_FUNCTION_369();
  playerairplay_removeFigAudioSessionNotificationHandlers();
  v6 = *v4;
  v7 = *(*v4 + 392);
  v8 = *a3;
  *(v6 + 392) = *a3;
  if (v8)
  {
    CFRetain(v8);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (*(CMBaseObjectGetDerivedStorage() + 392))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_65_7();
    FigNotificationCenterAddWeakListener();
  }

  v9 = *(v3 + 48);

  playerairplay_setFigAudioSessionInfoOnBAO(v9);
}

uint64_t __playerairplay_handleSetProperty_block_invoke_12_cold_1(uint64_t a1)
{
  v1 = *(a1 + 40);
  Value = CFBooleanGetValue(*(a1 + 48));
  v3 = MEMORY[0x1E69AF8A8];
  if (!Value)
  {
    v3 = MEMORY[0x1E69AF828];
  }

  v4 = *v3;

  return playerairplay_setAndCacheAudioMode(v1, v4, 1);
}

void itemairplay_Invalidate_cold_1(uint64_t a1, void *a2)
{
  itemairplay_unsubscribeFromURLProcessor(a1);
  FigBytePumpGetFigBaseObject(*a2);
  if (v3)
  {
    v4 = v3;
    v5 = *(*(CMBaseObjectGetVTable() + 8) + 24);
    if (v5)
    {
      v5(v4);
    }
  }
}

uint64_t itemairplay_MakeReadyForInspection_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void itemairplay_handleSetProperty_cold_2()
{
  OUTLINED_FUNCTION_42_11();
  CFDictionarySetValue(*(v2 + 336), @"SetEndTime", v1);
  FigSimpleMutexUnlock();
  playerairplay_triggerAsyncCheckAndUpdatePlayQueueItems(v0);
}

void itemairplay_handleSetProperty_cold_3()
{
  OUTLINED_FUNCTION_42_11();
  CFDictionarySetValue(*(v2 + 336), @"ReverseEndTime", v1);
  FigSimpleMutexUnlock();
  playerairplay_triggerAsyncCheckAndUpdatePlayQueueItems(v0);
}

void itemairplay_handleSetProperty_cold_4()
{
  OUTLINED_FUNCTION_42_11();
  CFDictionarySetValue(*(v2 + 336), @"PlaybackRestrictions", v1);
  FigSimpleMutexUnlock();
  playerairplay_triggerAsyncCheckAndUpdatePlayQueueItems(v0);
}

void itemairplay_handleSetProperty_cold_5()
{
  OUTLINED_FUNCTION_42_11();
  CFDictionarySetValue(*(v2 + 336), @"TextMarkupArray", v1);
  FigSimpleMutexUnlock();

  playerairplay_triggerAsyncCheckAndUpdatePlayQueueItems(v0);
}

void itemairplay_handleSetProperty_cold_6()
{
  OUTLINED_FUNCTION_375_0();
  v3 = v2;
  v4 = *MEMORY[0x1E695E480];
  v6 = *(v2 + 512);
  v5 = CMTimeCopyAsDictionary(&v6, v4);
  FigSimpleMutexLock();
  CFDictionarySetValue(*(v3 + 336), *MEMORY[0x1E6961ED0], v1);
  FigSimpleMutexUnlock();
  if (v5)
  {
    CFRelease(v5);
  }

  playerairplay_triggerAsyncCheckAndUpdatePlayQueueItems(v0);
}

void itemairplay_handleSetProperty_cold_7()
{
  OUTLINED_FUNCTION_375_0();
  v2 = *MEMORY[0x1E695E480];
  v5 = *v3;
  v4 = CMTimeCopyAsDictionary(&v5, v2);
  FigSimpleMutexLock();
  CFDictionarySetValue(*(v1 + 336), *MEMORY[0x1E6961E88], v4);
  FigSimpleMutexUnlock();
  if (v4)
  {
    CFRelease(v4);
  }

  playerairplay_triggerAsyncCheckAndUpdatePlayQueueItems(v0);
}

void itemairplay_handleSetProperty_cold_8(uint64_t a1, const void *a2, const void *a3, const void *a4)
{
  FigSimpleMutexLock();
  CFDictionarySetValue(*(a1 + 336), a2, a3);
  FigSimpleMutexUnlock();

  playerairplay_triggerAsyncCheckAndUpdatePlayQueueItems(a4);
}

uint64_t itemairplay_handleSetProperty_cold_10(uint64_t a1, CFTypeRef cf, void *a3)
{
  v5 = *(a1 + 752);
  *(a1 + 752) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(a1 + 752);
  if (v6)
  {
    v7 = CFEqual(*(a1 + 752), &stru_1F0B1AFB8);
    v8 = 1;
    if (!v7 && *MEMORY[0x1E695E738] != v6)
    {
      v9 = *(a1 + 768);
      *a3 = v9;
      v10 = *(a1 + 752);
      *(a1 + 768) = v10;
      if (v10)
      {
        CFRetain(v10);
      }

      if (v9)
      {
        v8 = 0;
      }

      else
      {
        v8 = -1;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  return v8 & 1;
}

uint64_t itemairplay_handleSetProperty_cold_11()
{
  OUTLINED_FUNCTION_261();
  FigSimpleMutexLock();
  v2 = *(v0 + 648);
  *(v0 + 648) = v1;
  if (v1)
  {
    CFRetain(v1);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  return FigSimpleMutexUnlock();
}

uint64_t itemairplay_handleSetProperty_cold_12()
{
  OUTLINED_FUNCTION_261();
  FigSimpleMutexLock();
  v2 = *(v0 + 656);
  *(v0 + 656) = v1;
  if (v1)
  {
    CFRetain(v1);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  return FigSimpleMutexUnlock();
}

void itemairplay_handleSetProperty_cold_13(uint64_t a1, CFTypeRef cf)
{
  v3 = *(a1 + 192);
  *(a1 + 192) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  *(a1 + 224) = 1;
}

uint64_t itemairplay_handleSetProperty_cold_14(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemairplay_SeekToDateWithID_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void itemairplay_SeekToDateWithID_cold_2()
{
  OUTLINED_FUNCTION_42_11();
  CFDictionarySetValue(*(v2 + 336), *MEMORY[0x1E6961E60], v1);
  FigSimpleMutexUnlock();
  playerairplay_triggerAsyncCheckAndUpdatePlayQueueItems(v0);
  CFRelease(v1);
}

uint64_t itemairplay_SeekToDateWithID_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemairplay_SeekToDateWithID_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemairplay_GetDimensions_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemairplay_GetDimensions_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemairplay_GetDuration_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemairplay_GetDuration_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemairplay_SetCurrentTime_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemairplay_SetCurrentTime_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemairplay_CopyTrackProperty_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemairplay_CopyCommonMetadata_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemairplay_CopyCommonMetadata_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemairplay_CopyChapterImageData_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemairplay_CopyChapterImageData_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemairplay_GetNextThumbnailTime_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemairplay_GetNextThumbnailTime_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemairplay_SetCurrentTimeWithRange_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemairplay_SetCurrentTimeWithRange_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemairplay_SetTrackProperty_cold_1()
{
  OUTLINED_FUNCTION_471();
  *v0 = FigSignalErrorAtGM();

  return FigSimpleMutexUnlock();
}

uint64_t itemairplay_SetTrackProperty_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemairplay_CopyFormatReader_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemairplay_SetCurrentTimeWithRangeAndID_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemairplay_SetCurrentTimeWithRangeAndID_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemairplay_CopyAsset_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemairplay_ExtractAndRetainNextSampleBuffer_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemairplay_SetCurrentTimeWithOptions_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemairplay_SetCurrentTimeWithOptions_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playerairplay_AddExternalStartupTask_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playerairplay_RemoveExternalStartupTask_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playerairplay_CopyDisplayedCVPixelBuffer_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void playerairplay_addItemToLocalPlayQueue_cold_1()
{
  v0 = CFDictionaryCreate(*MEMORY[0x1E695E480], &kFigPlayerParameter_ReasonForCurrentItemDidChange, &kFigPlayerCurrentItemDidChangeReason_AddToPlayQueue, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  playerairplay_postPlayerNotification();
  if (v0)
  {
    CFRelease(v0);
  }
}

uint64_t playerairplay_addItemToSubPlayerPlayQueue_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t __playerairplay_initializeVolumeFadeOutNotification_block_invoke_cold_1(__int128 *a1, uint64_t a2)
{
  v9 = *a1;
  v10 = *(a1 + 2);
  VTable = CMBaseObjectGetVTable();
  v5 = *(VTable + 16);
  result = VTable + 16;
  v6 = *(v5 + 64);
  if (v6)
  {
    v7 = v9;
    v8 = v10;
    return v6(a2, 2, &v7);
  }

  return result;
}

uint64_t playercoordinator_Invalidate()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    return 4294954511;
  }

  v1 = DerivedStorage;
  *DerivedStorage = 1;
  if (*(DerivedStorage + 16))
  {
    FigCFWeakReferenceTableApplyFunction();
  }

  if (!*(v1 + 8))
  {
    return 0;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  FigBaseObject = FigPlayerGetFigBaseObject(*(v1 + 8));
  if (!FigBaseObject)
  {
    return 4294954516;
  }

  v3 = FigBaseObject;
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 24);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(v3);
}

uint64_t playercoordinator_CreatePlaybackItemFromAsset(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (!a1)
  {
    OUTLINED_FUNCTION_0_102();
LABEL_20:
    v13 = FigSignalErrorAtGM();
LABEL_21:
    v14 = v13;
    goto LABEL_15;
  }

  if (*DerivedStorage || (v11 = *(DerivedStorage + 8)) == 0)
  {
    OUTLINED_FUNCTION_1_94();
    goto LABEL_20;
  }

  v12 = *(*(CMBaseObjectGetVTable() + 16) + 96);
  if (!v12)
  {
    v14 = 4294954514;
    goto LABEL_15;
  }

  v13 = v12(v11, a2, a3, a4, &cf);
  if (v13)
  {
    goto LABEL_21;
  }

  CFGetAllocator(a1);
  FigPlaybackItemGetClassID();
  v14 = CMDerivedObjectCreate();
  if (!v14)
  {
    v15 = CMBaseObjectGetDerivedStorage();
    v16 = cf;
    if (cf)
    {
      v16 = CFRetain(cf);
    }

    *(v15 + 8) = v16;
    *(v15 + 16) = FigCFWeakReferenceHolderCreateWithReferencedObject();
    if (FigCFDictionaryGetStringIfPresent())
    {
      CFStringGetCString(0, (v15 + 40), 10, 0x8000100u);
    }

    v17 = FigCFWeakReferenceTableAddValueAssociatedWithKey();
    if (v17)
    {
      v14 = v17;
    }

    else
    {
      CMNotificationCenterGetDefaultLocalCenter();
      v14 = FigNotificationCenterAddWeakListener();
      if (!v14)
      {
        *a5 = 0;
      }
    }
  }

LABEL_15:
  if (cf)
  {
    CFRelease(cf);
  }

  return v14;
}

uint64_t FigPlayerCoordinatorCreateWithOptions_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_102();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPlayerCoordinatorCreateWithOptions_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_102();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playercoordinator_CopyProperty_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playercoordinator_CopyProperty_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playercoordinator_CopyProperty_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_102();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playercoordinator_SetProperty_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playercoordinator_SetProperty_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playercoordinator_SetProperty_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_102();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playercoordinator_handleSetProperty_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_102();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playercoordinator_handleSetProperty_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_102();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playercoordinator_handleSetProperty_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_102();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playercoordinator_handleSetProperty_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_102();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playercoordinator_handleSetProperty_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemcoordinator_CopyProperty_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemcoordinator_CopyProperty_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemcoordinator_CopyProperty_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_102();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemcoordinator_SetProperty_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemcoordinator_SetProperty_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemcoordinator_SetProperty_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_102();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemcoordinator_GetDimensions_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemcoordinator_GetDimensions_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemcoordinator_GetDimensions_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_102();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemcoordinator_GetDuration_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemcoordinator_GetDuration_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemcoordinator_GetDuration_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_102();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemcoordinator_SetCurrentTime_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemcoordinator_SetCurrentTime_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemcoordinator_SetCurrentTime_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_102();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemcoordinator_GetCurrentTime_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemcoordinator_GetCurrentTime_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemcoordinator_GetCurrentTime_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_102();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemcoordinator_CopyTrackProperty_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemcoordinator_CopyTrackProperty_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemcoordinator_CopyTrackProperty_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_102();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemcoordinator_MakeReadyForInspection_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemcoordinator_MakeReadyForInspection_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemcoordinator_MakeReadyForInspection_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_102();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemcoordinator_CopyCommonMetadata_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemcoordinator_CopyCommonMetadata_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemcoordinator_CopyCommonMetadata_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_102();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemcoordinator_CopyChapterImageData_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemcoordinator_CopyChapterImageData_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemcoordinator_CopyChapterImageData_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_102();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemcoordinator_GetNextThumbnailTime_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemcoordinator_GetNextThumbnailTime_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemcoordinator_GetNextThumbnailTime_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_102();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemcoordinator_SetCurrentTimeWithRange_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemcoordinator_SetCurrentTimeWithRange_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemcoordinator_SetCurrentTimeWithRange_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_102();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemcoordinator_SetTrackProperty_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemcoordinator_SetTrackProperty_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemcoordinator_SetTrackProperty_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_102();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemcoordinator_CopyFormatReader_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemcoordinator_CopyFormatReader_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemcoordinator_CopyFormatReader_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_102();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemcoordinator_SeekToDateWithID_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemcoordinator_SeekToDateWithID_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemcoordinator_SeekToDateWithID_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_102();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemcoordinator_SetCurrentTimeWithRangeAndID_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemcoordinator_SetCurrentTimeWithRangeAndID_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemcoordinator_SetCurrentTimeWithRangeAndID_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_102();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemcoordinator_CopyAsset_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemcoordinator_CopyAsset_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemcoordinator_CopyAsset_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_102();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemcoordinator_SetProperties_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemcoordinator_SetProperties_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemcoordinator_SetProperties_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_102();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemcoordinator_ExtractAndRetainNextSampleBuffer_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemcoordinator_ExtractAndRetainNextSampleBuffer_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemcoordinator_ExtractAndRetainNextSampleBuffer_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_102();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemcoordinator_SetCurrentTimeWithOptions_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemcoordinator_SetCurrentTimeWithOptions_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemcoordinator_SetCurrentTimeWithOptions_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_102();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playercoordinator_AddToPlayQueue_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playercoordinator_AddToPlayQueue_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playercoordinator_AddToPlayQueue_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_102();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playercoordinator_RemoveFromPlayQueue_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playercoordinator_RemoveFromPlayQueue_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playercoordinator_RemoveFromPlayQueue_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_102();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playercoordinator_CopyPlayQueueItem_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playercoordinator_CopyPlayQueueItem_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playercoordinator_CopyPlayQueueItem_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playercoordinator_CopyPlayQueueItem_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_102();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playercoordinator_SetRate_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playercoordinator_SetRate_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playercoordinator_SetRate_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_102();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playercoordinator_GetRate_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playercoordinator_GetRate_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playercoordinator_GetRate_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_102();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playercoordinator_SetRateWithFade_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playercoordinator_SetRateWithFade_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playercoordinator_SetRateWithFade_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_102();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playercoordinator_StartPreroll_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playercoordinator_StartPreroll_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playercoordinator_StartPreroll_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_102();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playercoordinator_StepByCount_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playercoordinator_StepByCount_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playercoordinator_StepByCount_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_102();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playercoordinator_SetRateAndAnchorTime_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playercoordinator_SetRateAndAnchorTime_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playercoordinator_SetRateAndAnchorTime_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_102();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playercoordinator_SetRateWithOptions_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playercoordinator_SetRateWithOptions_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playercoordinator_SetRateWithOptions_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_102();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playercoordinator_SetProperties_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playercoordinator_SetProperties_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playercoordinator_SetProperties_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_102();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playercoordinator_ReevaluateRouteConfiguration_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playercoordinator_ReevaluateRouteConfiguration_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playercoordinator_ReevaluateRouteConfiguration_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_102();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playercoordinator_AddExternalStartupTask_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playercoordinator_AddExternalStartupTask_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playercoordinator_AddExternalStartupTask_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_102();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playercoordinator_RemoveExternalStartupTask_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playercoordinator_RemoveExternalStartupTask_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playercoordinator_RemoveExternalStartupTask_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_102();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playercoordinator_CopyDisplayedCVPixelBuffer_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playercoordinator_CopyDisplayedCVPixelBuffer_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playercoordinator_CopyDisplayedCVPixelBuffer_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_102();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playercoordinator_BeginInterruption_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playercoordinator_BeginInterruption_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playercoordinator_BeginInterruption_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_102();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playercoordinator_EndInterruption_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playercoordinator_EndInterruption_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playercoordinator_EndInterruption_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_102();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playercoordinator_SetConnectionActive_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playercoordinator_SetConnectionActive_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playercoordinator_SetConnectionActive_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_102();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void mrdowc_streamingCacheNotificationHandler(uint64_t a1, const void *a2, const void *a3, uint64_t a4, const void *a5)
{
  Storage = mrdowc_getStorage(a2);
  if (Storage)
  {
    v9 = Storage;
    if (*(Storage + 40))
    {
      MallocZoneForMedia = FigGetMallocZoneForMedia();
      v11 = malloc_type_zone_calloc(MallocZoneForMedia, 1uLL, 0x20uLL, 0xE00402E8C7BDEuLL);
      if (v11)
      {
        v12 = v11;
        if (a2)
        {
          v13 = CFRetain(a2);
        }

        else
        {
          v13 = 0;
        }

        *v12 = v13;
        v14 = *(v9 + 40);
        if (v14)
        {
          v14 = CFRetain(v14);
        }

        v12[1] = v14;
        v12[2] = CFRetain(a3);
        if (a5)
        {
          v15 = CFRetain(a5);
        }

        else
        {
          v15 = 0;
        }

        v12[3] = v15;
        v16 = *(v9 + 128);

        dispatch_async_f(v16, v12, mrdowc_handleNotificationAsync);
      }
    }
  }
}

uint64_t FigMediaRequestForPlaylistCopyURL(uint64_t a1, void *a2)
{
  result = mrdowc_getStorage(a1);
  if (a2)
  {
    v4 = result;
    if (result)
    {
      FigSimpleMutexLock();
      v5 = *(v4 + 8);
      if (v5)
      {
        v5 = CFRetain(v5);
      }

      *a2 = v5;

      return FigSimpleMutexUnlock();
    }
  }

  return result;
}

uint64_t FigMediaRequestForPlaylistGetURLForCacheLookup(uint64_t a1)
{
  Storage = mrdowc_getStorage(a1);
  if (!Storage)
  {
    return 0;
  }

  v2 = Storage;
  FigSimpleMutexLock();
  v3 = *(v2 + 16);
  FigSimpleMutexUnlock();
  return v3;
}

uint64_t FigMediaRequestDeliverOnceWithCacheSaveDataToCache(uint64_t a1, uint64_t a2)
{
  result = mrdowc_getStorage(a1);
  if (result)
  {
    v4 = result;
    FigSimpleMutexLock();
    v5 = v4[3];
    if (v5)
    {
      v6 = v4[7];
      if (v6)
      {
        v7 = *(v6 + 8);
        if (v7)
        {
          if (dword_1EAF17308)
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            OUTLINED_FUNCTION_7();
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            v7 = *(v4[7] + 8);
            v5 = v4[3];
          }

          v7(v4[2], v5, v4[4], v4[8], a2, v4[11]);
        }
      }
    }

    return FigSimpleMutexUnlock();
  }

  return result;
}

BOOL mrsd_copyFromCacheHandler(const __CFURL *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a4 == 3)
  {
    if (FigCFHTTPCreateURLString(a1))
    {
      v7 = OUTLINED_FUNCTION_13_28();
      FigStreamingCacheCopySessionData(v7, v8, v9);
      CFRelease(v5);
    }

    else
    {
      OUTLINED_FUNCTION_303();
      FigSignalErrorAtGM();
    }
  }

  return *a5 != 0;
}

void mrsd_storeInCacheHandler(const __CFURL *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 3)
  {
    if (FigCFHTTPCreateURLString(a1))
    {
      v5 = OUTLINED_FUNCTION_13_28();
      FigStreamingCacheSetSessionData(v5, v6, v7);

      CFRelease(v4);
    }

    else
    {
      OUTLINED_FUNCTION_303();

      FigSignalErrorAtGM();
    }
  }
}

uint64_t mr_clearNetworkRequestState(uint64_t a1)
{
  Storage = mr_getStorage(a1);
  *(Storage + 144) = 0;
  v2 = *(Storage + 208);
  if (v2)
  {
    v3 = *(*(CMBaseObjectGetVTable() + 8) + 24);
    if (!v3)
    {
      return 4294954514;
    }

    result = v3(v2);
    if (result)
    {
      return result;
    }

    v5 = *(Storage + 208);
    if (v5)
    {
      CFRelease(v5);
      *(Storage + 208) = 0;
    }
  }

  v6 = *(Storage + 224);
  if (v6)
  {
    CFRelease(v6);
    *(Storage + 224) = 0;
  }

  *(Storage + 216) = 0;
  v7 = *(Storage + 72);
  if (!v7)
  {
    return 0;
  }

  v8 = *(Storage + 200);
  if (!v8)
  {
    return 0;
  }

  v9 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v9)
  {
    return 4294954514;
  }

  result = v9(v7, v8);
  if (!result)
  {
    *(Storage + 200) = 0;
  }

  return result;
}

void mr_issueDidFailCallback(const void *a1, const void *a2, uint64_t a3)
{
  Storage = mr_getStorage(a1);
  v7 = *(Storage + 128);
  if (v7)
  {
    while (1)
    {
      if (CFArrayGetCount(v7) < 1)
      {
        return;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(*(Storage + 128), 0);
      v9 = mr_getStorage(a1);
      v10 = FigCFWeakReferenceHolderCopyReferencedObject();
      v11 = *(ValueAtIndex + 3);
      v12 = *(ValueAtIndex + 4);
      if (v12)
      {
        dispatch_retain(*(ValueAtIndex + 4));
      }

      if (v11 && *v11 && v12 && *v11 && (MallocZoneForMedia = FigGetMallocZoneForMedia(), (v14 = malloc_type_zone_calloc(MallocZoneForMedia, 1uLL, 0x50uLL, 0x10E0040CBF5CB4EuLL)) != 0))
      {
        v15 = v14;
        v14[3] = v11;
        if (a1)
        {
          v16 = CFRetain(a1);
        }

        else
        {
          v16 = 0;
        }

        *v15 = v16;
        if (v10)
        {
          v18 = CFRetain(v10);
        }

        else
        {
          v18 = 0;
        }

        v15[1] = v18;
        if (a2)
        {
          v19 = CFRetain(a2);
        }

        else
        {
          v19 = 0;
        }

        v15[5] = v19;
        v20 = *(v9 + 208);
        if (v20)
        {
          v20 = CFRetain(v20);
        }

        v15[6] = a3;
        v15[7] = v20;
        dispatch_async_f(v12, v15, mr_issueDidFailCallbackOnCallbackQueue);
        v17 = 0;
        if (!v10)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v17 = FigSignalErrorAtGM();
        if (!v10)
        {
          goto LABEL_25;
        }
      }

      CFRelease(v10);
LABEL_25:
      if (v12)
      {
        dispatch_release(v12);
      }

      if (!v17)
      {
        CFArrayRemoveValueAtIndex(*(Storage + 128), 0);
        v7 = *(Storage + 128);
        if (v7)
        {
          continue;
        }
      }

      return;
    }
  }
}

uint64_t mr_memoryRequestCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v14 = 0;
  v8 = mr_copyRequestFromRetainProxy(a1, &v14);
  if (!v8)
  {
    Storage = mr_getStorage(v14);
    FigSimpleMutexLock();
    if (*(Storage + 96) || (v10 = FigCopyCommonMemoryPool(), (*(Storage + 96) = v10) != 0))
    {
      BlockBuffer = FigMemoryPoolCreateBlockBuffer();
      if (!BlockBuffer)
      {
        v12 = 0;
        *a5 = 0;
        *a6 = 0;
LABEL_6:
        FigSimpleMutexUnlock();
        goto LABEL_7;
      }
    }

    else
    {
      BlockBuffer = FigSignalErrorAtGM();
    }

    v12 = BlockBuffer;
    goto LABEL_6;
  }

  v12 = v8;
LABEL_7:
  if (v14)
  {
    CFRelease(v14);
  }

  return v12;
}

void mr_httpReadCallback(uint64_t a1, uint64_t a2, uint64_t a3, OpaqueCMBlockBuffer *a4, size_t a5, size_t a6, char a7, int a8)
{
  err = 0;
  v27 = 0;
  cf = 0;
  if (mr_copyRequestFromRetainProxy(a3, &v27))
  {
    goto LABEL_34;
  }

  Storage = mr_getStorage(v27);
  FigSimpleMutexLock();
  if (*(Storage + 144) != 1)
  {
    OUTLINED_FUNCTION_303();
    FigSignalErrorAtGM();
    goto LABEL_32;
  }

  if (a8)
  {
    ErrorFromHTTPRequestIfAvailable = FigStreamingNetworkErrorCreateErrorFromHTTPRequestIfAvailable(a1, a8, 0, 0, &err);
    if (ErrorFromHTTPRequestIfAvailable)
    {
      goto LABEL_28;
    }

    if (err && CFErrorGetCode(err))
    {
      mr_handleCommonNetworkError(v27, err);
      goto LABEL_32;
    }
  }

  if ((a7 & 1) == 0)
  {
    goto LABEL_9;
  }

  AllocatorForMedia = FigGetAllocatorForMedia();
  v17 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v17)
  {
    ErrorFromHTTPRequestIfAvailable = v17(a1, @"FHRP_HTTPFinalURL", AllocatorForMedia, &cf);
    if (!ErrorFromHTTPRequestIfAvailable)
    {
      v18 = *(Storage + 16);
      v19 = cf;
      *(Storage + 16) = cf;
      if (v19)
      {
        CFRetain(v19);
      }

      if (v18)
      {
        CFRelease(v18);
      }

LABEL_9:
      ErrorFromHTTPRequestIfAvailable = 0;
    }
  }

  else
  {
    ErrorFromHTTPRequestIfAvailable = 4294954514;
  }

  if (!a4)
  {
    DataLength = 0;
    if ((a7 & 2) == 0)
    {
LABEL_23:
      if (!a6)
      {
        goto LABEL_28;
      }

      goto LABEL_27;
    }

LABEL_26:
    *(Storage + 144) = 2;
    *(Storage + 216) = 0;
    if (!*(Storage + 224))
    {
      OUTLINED_FUNCTION_303();
      ErrorFromHTTPRequestIfAvailable = FigSignalErrorAtGM();
      if (ErrorFromHTTPRequestIfAvailable)
      {
        goto LABEL_29;
      }

      goto LABEL_32;
    }

LABEL_27:
    ErrorFromHTTPRequestIfAvailable = mr_issueDataOutputCallback(v27, DataLength, a6);
    goto LABEL_28;
  }

  v21 = (Storage + 224);
  v20 = *(Storage + 224);
  if (!v20)
  {
    v22 = FigGetAllocatorForMedia();
    ErrorFromHTTPRequestIfAvailable = CMBlockBufferCreateEmpty(v22, 0, 0, (Storage + 224));
    if (ErrorFromHTTPRequestIfAvailable)
    {
      goto LABEL_28;
    }

    v20 = *v21;
  }

  DataLength = CMBlockBufferGetDataLength(v20);
  ErrorFromHTTPRequestIfAvailable = CMBlockBufferAppendBufferReference(*v21, a4, a5, a6, 0);
  if (!ErrorFromHTTPRequestIfAvailable)
  {
    if ((a7 & 2) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_26;
  }

LABEL_28:
  if (ErrorFromHTTPRequestIfAvailable)
  {
LABEL_29:
    if (v27)
    {
      v24 = 0;
      FigCreateErrorForOSStatus(ErrorFromHTTPRequestIfAvailable, &v24);
      mr_handleCommonNetworkError(v27, v24);
      if (v24)
      {
        CFRelease(v24);
      }
    }
  }

LABEL_32:
  FigSimpleMutexUnlock();
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_34:
  if (err)
  {
    CFRelease(err);
  }

  if (v27)
  {
    CFRelease(v27);
  }
}

uint64_t mr_issueDataOutputCallback(const void *a1, size_t a2, size_t a3)
{
  Storage = mr_getStorage(a1);
  v7 = 0;
  v11 = 0;
  while (1)
  {
    Count = *(Storage + 128);
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    if (v7 >= Count)
    {
      break;
    }

    v11 = 0;
    ValueAtIndex = CFArrayGetValueAtIndex(*(Storage + 128), v7);
    result = mr_issueDataOutputCallbackGuts(a1, a2, a3, ValueAtIndex, &v11);
    if (result)
    {
      return result;
    }

    if (v11)
    {
      CFArrayRemoveValueAtIndex(*(Storage + 128), v7--);
    }

    ++v7;
  }

  return 0;
}

uint64_t mr_issueDataOutputCallbackGuts(const void *a1, size_t a2, size_t a3, uint64_t a4, char *a5)
{
  Storage = mr_getStorage(a1);
  blockBufferOut = 0;
  v11 = FigCFWeakReferenceHolderCopyReferencedObject();
  v13 = *(a4 + 24);
  v12 = *(a4 + 32);
  if (v12)
  {
    dispatch_retain(v12);
  }

  if (!v13 || !*v13 || !v12 || !*v13 || ((v14 = *(Storage + 144), v15 = v14 == 2, !(a2 + a3)) ? (v16 = v14 == 2) : (v16 = 1), !v16))
  {
    v18 = FigSignalErrorAtGM();
    goto LABEL_16;
  }

  if (a2 == -a3)
  {
    v19 = 0;
  }

  else
  {
    AllocatorForMedia = FigGetAllocatorForMedia();
    v18 = CMBlockBufferCreateWithBufferReference(AllocatorForMedia, *(Storage + 224), a2, a3, 0, &blockBufferOut);
    if (v18)
    {
LABEL_16:
      v20 = v18;
      goto LABEL_20;
    }

    v19 = blockBufferOut;
  }

  mr_issueDataOutputCallbackAsync(a1, v11, v19, v13, v15, 0, *(Storage + 208), *(Storage + 176), *(Storage + 184), v12);
  v20 = 0;
  if (a5)
  {
    *a5 = v15;
  }

LABEL_20:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (v12)
  {
    dispatch_release(v12);
  }

  return v20;
}

void mr_timerEventHandler()
{
  v20 = *MEMORY[0x1E69E9840];
  cf = 0;
  v0 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v0)
  {
    v1 = v0;
    if (CMBaseObjectGetVTable() == &kMediaRequest_VTable)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
    }

    else
    {
      DerivedStorage = 0;
    }

    if (dword_1EAF17308)
    {
      v3 = OUTLINED_FUNCTION_4_75();
      v11 = OUTLINED_FUNCTION_437_1(v3, v4, v5, v6, v7, v8, v9, v10, v12, v13, v14, SBYTE2(v14), BYTE3(v14), SHIDWORD(v14));
      if (OUTLINED_FUNCTION_109_0(v11))
      {
        v16 = 136315394;
        v17 = "mr_timerEventHandler";
        v18 = 2048;
        v19 = v1;
        OUTLINED_FUNCTION_39();
        OUTLINED_FUNCTION_108();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_7();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    mr_cancel(v1, 0);
    FigSimpleMutexLock();
    *(DerivedStorage + 120) = 1;
    FigCreateErrorForOSStatus(4294954412, &cf);
    mr_handleCommonNetworkError(v1, cf);
    FigSimpleMutexUnlock();
    if (cf)
    {
      CFRelease(cf);
    }

    CFRelease(v1);
  }
}

void mr_customURLReadCallback(uint64_t a1, uint64_t a2, const void *a3, OpaqueCMBlockBuffer *a4, char a5, const void *a6, const void *a7)
{
  v29 = 0;
  cf = a6;
  if (mr_copyRequestFromRetainProxy(a1, &v29))
  {
    v14 = 0;
    goto LABEL_29;
  }

  Storage = mr_getStorage(v29);
  FigSimpleMutexLock();
  if (*(Storage + 200) != a2 || *(Storage + 144) != 1)
  {
    OUTLINED_FUNCTION_243();
    FigSignalErrorAtGM();
    v14 = 0;
    goto LABEL_14;
  }

  HTTPStatusCode = FigCustomURLResponseInfoGetHTTPStatusCode();
  if (HTTPStatusCode && HTTPStatusCode != -17360 || (HTTPStatusCode = FigCustomURLResponseInfoCopyHTTPHeaders(), HTTPStatusCode) && HTTPStatusCode != -17360)
  {
    v14 = 0;
    goto LABEL_16;
  }

  if (!FigCFHTTPIsStatusCodeRedirect(0))
  {
    v19 = cf;
    if (cf)
    {
      v18 = 0;
LABEL_25:
      mr_handleCommonNetworkError(v29, v19);
      v14 = 0;
      goto LABEL_26;
    }

    HTTPStatusCode = FigCFHTTPCreateCFErrorFromHTTPStatusCode(0, &cf);
    if (HTTPStatusCode)
    {
      goto LABEL_58;
    }

    v19 = cf;
    if (cf)
    {
      v18 = 1;
      goto LABEL_25;
    }

    HTTPStatusCode = FigCustomURLResponseInfoCopyFinalURL();
    if (HTTPStatusCode)
    {
      goto LABEL_58;
    }

    if (a4)
    {
      v21 = (Storage + 224);
      v20 = *(Storage + 224);
      if (!v20)
      {
        AllocatorForMedia = FigGetAllocatorForMedia();
        HTTPStatusCode = CMBlockBufferCreateEmpty(AllocatorForMedia, 0, 0, (Storage + 224));
        if (HTTPStatusCode)
        {
          goto LABEL_58;
        }

        v20 = *v21;
      }

      DataLength = CMBlockBufferGetDataLength(v20);
      v24 = CMBlockBufferGetDataLength(a4);
      v25 = *v21;
      v26 = CMBlockBufferGetDataLength(a4);
      HTTPStatusCode = CMBlockBufferAppendBufferReference(v25, a4, 0, v26, 0);
      if (HTTPStatusCode)
      {
LABEL_58:
        v14 = 0;
        v18 = 1;
        if (HTTPStatusCode)
        {
          goto LABEL_17;
        }

LABEL_26:
        FigSimpleMutexUnlock();
        if (!v18)
        {
          goto LABEL_29;
        }

        goto LABEL_27;
      }
    }

    else
    {
      v24 = 0;
      DataLength = 0;
    }

    if ((a5 & 1) != 0 && (*(Storage + 144) = 2, *(Storage + 200) = 0, !*(Storage + 224)))
    {
      OUTLINED_FUNCTION_243();
      HTTPStatusCode = FigSignalErrorAtGM();
    }

    else
    {
      if (!*(Storage + 176))
      {
        if (a3)
        {
          v27 = CFRetain(a3);
        }

        else
        {
          v27 = 0;
        }

        *(Storage + 176) = v27;
      }

      if (!*(Storage + 184))
      {
        if (a7)
        {
          v28 = CFRetain(a7);
        }

        else
        {
          v28 = 0;
        }

        *(Storage + 184) = v28;
      }

      if ((a5 & 1) == 0 && v24 < 1)
      {
        v14 = 0;
        goto LABEL_19;
      }

      HTTPStatusCode = mr_issueDataOutputCallback(v29, DataLength, v24);
    }

    goto LABEL_58;
  }

  v14 = FigCFHTTPCopyRedirectLocationFromHTTPHeaders(0);
  if (v14)
  {
    v15 = v29;
    v16 = mr_getStorage(v29);
    v17 = *(v16 + 16);
    *(v16 + 16) = v14;
    CFRetain(v14);
    if (v17)
    {
      CFRelease(v17);
    }

    HTTPStatusCode = mr_clearNetworkRequestState(v15);
    if (!HTTPStatusCode)
    {
      mr_updateNetworkRequestType(v15);
      mr_start(v15);
LABEL_14:
      FigSimpleMutexUnlock();
      goto LABEL_29;
    }
  }

  else
  {
    OUTLINED_FUNCTION_243();
    HTTPStatusCode = FigSignalErrorAtGM();
  }

LABEL_16:
  v18 = 0;
  if (!HTTPStatusCode)
  {
    goto LABEL_26;
  }

LABEL_17:
  if (!v29)
  {
    goto LABEL_26;
  }

  FigCreateErrorForOSStatus(HTTPStatusCode, &cf);
  mr_handleCommonNetworkError(v29, cf);
LABEL_19:
  FigSimpleMutexUnlock();
LABEL_27:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_29:
  if (v29)
  {
    CFRelease(v29);
  }

  if (v14)
  {
    CFRelease(v14);
  }
}

uint64_t mrdowc_start(const void *a1)
{
  v41 = *MEMORY[0x1E69E9840];
  theBuffer = 0;
  Storage = mrdowc_getStorage(a1);
  v3 = Storage;
  if (!Storage || *(Storage + 96) == 3)
  {
    OUTLINED_FUNCTION_239();
    goto LABEL_43;
  }

  FigSimpleMutexLock();
  BlockBufferWithCFDataNoCopy = mrdowc_copyFromCache(a1, &theBuffer);
  if (BlockBufferWithCFDataNoCopy)
  {
    goto LABEL_25;
  }

  v5 = theBuffer;
  if (*(v3 + 80))
  {
    v6 = theBuffer == 0;
  }

  else
  {
    v6 = 0;
  }

  v7 = !v6;
  if (v6)
  {
    FigGetAllocatorForMedia();
    BlockBufferWithCFDataNoCopy = FigCreateBlockBufferWithCFDataNoCopy();
    if (BlockBufferWithCFDataNoCopy)
    {
      goto LABEL_25;
    }

    v5 = theBuffer;
  }

  if (!v5 || !CMBlockBufferGetDataLength(v5))
  {
    *(v3 + 96) = 1;
    v17 = *(v3 + 40);
    if (v17)
    {
      v18 = *(v3 + 120);
      v19 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (!v19)
      {
        goto LABEL_26;
      }

      BlockBufferWithCFDataNoCopy = v19(v17, 0, 0x1FFFFFFFFFFFFFLL, a1, mrdowc_start_outputCallbacks, v18);
      if (!BlockBufferWithCFDataNoCopy)
      {
        v20 = *(v3 + 40);
        v21 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (v21)
        {
          BlockBufferWithCFDataNoCopy = v21(v20);
          goto LABEL_25;
        }

LABEL_26:
        v23 = 0;
        v22 = 4294954514;
        goto LABEL_35;
      }

LABEL_25:
      v22 = BlockBufferWithCFDataNoCopy;
      v23 = 0;
      goto LABEL_35;
    }

    OUTLINED_FUNCTION_239();
LABEL_43:
    BlockBufferWithCFDataNoCopy = FigSignalErrorAtGM();
    goto LABEL_25;
  }

  *(v3 + 96) = 2;
  if (v7)
  {
    if (!dword_1EAF17308)
    {
      goto LABEL_30;
    }

    v8 = OUTLINED_FUNCTION_4_75();
    v16 = OUTLINED_FUNCTION_437_1(v8, v9, v10, v11, v12, v13, v14, v15, v35, v36, v37, SBYTE2(v37), BYTE3(v37), SHIDWORD(v37));
    if (!OUTLINED_FUNCTION_109_0(v16))
    {
      goto LABEL_29;
    }

    goto LABEL_19;
  }

  if (!dword_1EAF17308)
  {
    goto LABEL_30;
  }

  v24 = OUTLINED_FUNCTION_4_75();
  v32 = OUTLINED_FUNCTION_437_1(v24, v25, v26, v27, v28, v29, v30, v31, v35, v36, v37, SBYTE2(v37), BYTE3(v37), SHIDWORD(v37));
  if (OUTLINED_FUNCTION_109_0(v32))
  {
LABEL_19:
    v39 = 136315650;
    OUTLINED_FUNCTION_139();
    v40 = a1;
    OUTLINED_FUNCTION_0_103();
    OUTLINED_FUNCTION_108();
    _os_log_send_and_compose_impl();
  }

LABEL_29:
  OUTLINED_FUNCTION_7();
  fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_30:
  v23 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v23)
  {
    v33 = *(v3 + 112);
    if (v33)
    {
      if (*v33)
      {
        mr_issueDataOutputCallbackAsync(a1, v23, theBuffer, v33, 1, 1, 0, 0, 0, *(v3 + 120));
      }
    }
  }

  v22 = 0;
LABEL_35:
  FigSimpleMutexUnlock();
  if (theBuffer)
  {
    CFRelease(theBuffer);
  }

  if (v23)
  {
    CFRelease(v23);
  }

  return v22;
}

void mrdowc_didProduceDataOutput(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, OpaqueCMBlockBuffer *a6, uint64_t a7, uint64_t a8)
{
  Storage = mrdowc_getStorage(a2);
  v16 = mr_getStorage(*(Storage + 40));
  memset(&cf, 0, 24);
  FigSimpleMutexLock();
  v17 = *(Storage + 48);
  if (v17)
  {
    if (a6)
    {
      DataLength = CMBlockBufferGetDataLength(a6);
      CMBlockBufferAppendBufferReference(v17, a6, 0, DataLength, 0);
    }

    if (!a7)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if (a6)
    {
      v19 = CFRetain(a6);
    }

    else
    {
      v19 = 0;
    }

    *(Storage + 48) = v19;
    if (!a7)
    {
      goto LABEL_15;
    }
  }

  if (*(v16 + 152) != 2)
  {
    if (!a3)
    {
      goto LABEL_24;
    }

    AllocatorForMedia = FigGetAllocatorForMedia();
    v23 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v23)
    {
      goto LABEL_24;
    }

    v23(a3, @"FHRP_HTTPResponseHeaders", AllocatorForMedia, &cf.info);
    if (!cf.info)
    {
      goto LABEL_24;
    }

LABEL_19:
    v21 = FigCFHTTPCreateURLString(*(v16 + 16));
    v24 = CMBlockBufferGetDataLength(*(Storage + 48));
    if (FigCFHTTPCreateCacheHeaders(v21, v24, cf.info, 0, &cf))
    {
      goto LABEL_31;
    }

    v25 = *(Storage + 88);
    isa = cf.isa;
    *(Storage + 88) = cf.isa;
    if (isa)
    {
      CFRetain(isa);
    }

    if (v25)
    {
      CFRelease(v25);
    }

    goto LABEL_25;
  }

  v20 = FigCustomURLResponseInfoCopyHTTPHeaders();
  if (v20 && v20 != -17360)
  {
LABEL_15:
    v21 = 0;
    goto LABEL_31;
  }

  cf.info = FigCFHTTPCreateHTTPMessageFromHTTPResponseHeaders(cf.data);
  if (cf.info)
  {
    goto LABEL_19;
  }

LABEL_24:
  v21 = 0;
LABEL_25:
  if (!FigCFHTTPCompareURLs(*(Storage + 16), *(v16 + 16)) && !FigCFHTTPCompareURLs(*(Storage + 8), *(v16 + 16)))
  {
    v27 = *(Storage + 8);
    v28 = *(v16 + 16);
    *(Storage + 8) = v28;
    if (v28)
    {
      CFRetain(v28);
    }

    if (v27)
    {
      CFRelease(v27);
    }
  }

LABEL_31:
  FigSimpleMutexUnlock();
  v29 = FigCFWeakReferenceHolderCopyReferencedObject();
  v30 = v29;
  if (a7)
  {
    if (v29)
    {
      v31 = *(Storage + 112);
      if (v31)
      {
        if (*v31)
        {
          (*v31)(a2, v29, a3, a4, a5, *(Storage + 48), a7, a8);
        }
      }
    }
  }

  if (cf.data)
  {
    CFRelease(cf.data);
  }

  if (cf.info)
  {
    CFRelease(cf.info);
  }

  if (cf.isa)
  {
    CFRelease(cf.isa);
  }

  if (v30)
  {
    CFRelease(v30);
  }

  if (v21)
  {
    CFRelease(v21);
  }
}

void mrdowc_didFail(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v40 = *MEMORY[0x1E69E9840];
  Storage = mrdowc_getStorage(a2);
  cf = 0;
  FigSimpleMutexLock();
  if (a5 == 7)
  {
    if (dword_1EAF17308)
    {
      v14 = OUTLINED_FUNCTION_10_36();
      v22 = OUTLINED_FUNCTION_15_30(v14, v15, v16, v17, v18, v19, v20, v21, v32, v33, v34, SBYTE2(v34), BYTE3(v34), SHIDWORD(v34));
      if (OUTLINED_FUNCTION_16_1(v22))
      {
        v36 = 136315650;
        v37 = "mrdowc_didFail";
        v38 = 2048;
        v39 = a2;
        OUTLINED_FUNCTION_0_103();
        OUTLINED_FUNCTION_108();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_7();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (mrdowc_copyFromCache(a2, &cf) || !cf)
    {
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      if (dword_1EAF17308)
      {
        v23 = OUTLINED_FUNCTION_10_36();
        v31 = OUTLINED_FUNCTION_15_30(v23, v24, v25, v26, v27, v28, v29, v30, v32, v33, v34, SBYTE2(v34), BYTE3(v34), SHIDWORD(v34));
        if (OUTLINED_FUNCTION_16_1(v31))
        {
          v36 = 136315394;
          v37 = "mrdowc_didFail";
          v38 = 2048;
          v39 = a2;
          OUTLINED_FUNCTION_39();
          OUTLINED_FUNCTION_108();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_7();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      a5 = 5;
    }

    else
    {
      a5 = 7;
    }
  }

  FigSimpleMutexUnlock();
  v10 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v10)
  {
    v11 = v10;
    v12 = *(Storage + 112);
    if (v12)
    {
      if (cf && *v12)
      {
        (*v12)(a2, v10, 0, 0, 0);
      }

      else
      {
        v13 = v12[1];
        if (v13)
        {
          v13(a2, v10, a3, a4, a5);
        }
      }
    }

    CFRelease(v11);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t mrdowc_copyFromCache(uint64_t a1, void *a2)
{
  Storage = mrdowc_getStorage(a1);
  if (a2 && Storage)
  {
    if (Storage[3])
    {
      v4 = Storage[7];
      if (v4)
      {
        if (*v4)
        {
          (*v4)(Storage[2]);
        }
      }
    }

    *a2 = 0;
  }

  return 0;
}

void mrdowc_handleNotificationAsync(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v13 = 0;
  v12 = 0;
  Storage = mrdowc_getStorage(*a1);
  if (Storage)
  {
    v3 = Storage;
    FigSimpleMutexLock();
    if (*(v3 + 96) == 1)
    {
      if (CFEqual(*(a1 + 16), @"FSC_DidCacheMediaStream"))
      {
        FigCFDictionaryGetInt64IfPresent();
        v4 = *(a1 + 8);
        if (v4)
        {
          if (v13 == *(v3 + 32))
          {
            v5 = *(*(CMBaseObjectGetVTable() + 16) + 16);
            if (v5)
            {
              if (!v5(v4, &v12) && v12)
              {
                if (dword_1EAF17308)
                {
                  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  v7 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                  if (OUTLINED_FUNCTION_109_0(v7))
                  {
                    v14 = 136315394;
                    OUTLINED_FUNCTION_139();
                    v15 = v8;
                    OUTLINED_FUNCTION_39();
                    OUTLINED_FUNCTION_108();
                    _os_log_send_and_compose_impl();
                  }

                  OUTLINED_FUNCTION_7();
                  fig_log_call_emit_and_clean_up_after_send_and_compose();
                }

                mrdowc_start(*a1);
              }
            }
          }
        }
      }
    }

    FigSimpleMutexUnlock();
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  v9 = *(a1 + 8);
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = *(a1 + 24);
  if (v10)
  {
    CFRelease(v10);
  }

  CFRelease(*(a1 + 16));
  MallocZoneForMedia = FigGetMallocZoneForMedia();
  malloc_zone_free(MallocZoneForMedia, a1);
}

uint64_t FigMediaRequestCreate_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMediaRequestCreate_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMediaRequestCreate_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMediaRequestDeliverOnceWithCacheCreate_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMediaRequestCreateForPlaylist_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMediaRequestCreateForSessionData_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t mr_start_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t mr_subscribeToOutput_cold_1(uint64_t a1, _DWORD *a2)
{
  v3 = FigSignalErrorAtGM();
  *a2 = v3;
  if (!v3)
  {
    return 1;
  }

  FigSimpleMutexUnlock();
  return 0;
}

uint64_t mr_startTimer_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t mr_startTimer_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t mr_copyRequestFromRetainProxy_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t mr_copyRequestFromRetainProxy_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t mr_copyRequestFromRetainProxy_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void sad_invalidateGuts(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 64))
  {
    v3 = DerivedStorage;
    *(DerivedStorage + 64) = 1;
    FigRetainProxyInvalidate();
    sad_invalidateAndReleasePump(a1, 1);
    sad_cleanupStreamingCacheFlush();
    v4 = v3[36];
    if (v4)
    {
      CFRelease(v4);
      v3[36] = 0;
    }

    v5 = v3[35];
    if (v5)
    {
      CFRelease(v5);
      v3[35] = 0;
    }

    v6 = v3[37];
    if (v6)
    {
      CFRelease(v6);
      v3[37] = 0;
    }

    v7 = v3[38];
    if (v7)
    {
      CFRelease(v7);
      v3[38] = 0;
    }

    v8 = v3[33];
    if (v8)
    {
      CFRelease(v8);
      v3[33] = 0;
    }

    v9 = v3[34];
    if (v9)
    {
      CFRelease(v9);
      v3[34] = 0;
    }

    v10 = v3[39];
    if (v10)
    {
      CFRelease(v10);
      v3[39] = 0;
    }

    v11 = v3[40];
    if (v11)
    {
      CFRelease(v11);
      v3[40] = 0;
    }

    v12 = v3[42];
    if (v12)
    {
      CFRelease(v12);
      v3[42] = 0;
    }

    v13 = v3[7];
    if (v13)
    {
      CFRelease(v13);
      v3[7] = 0;
    }

    v14 = v3[41];
    if (v14)
    {
      CFRelease(v14);
      v3[41] = 0;
    }

    v15 = v3[2];
    if (v15)
    {
      CFRelease(v15);
      v3[2] = 0;
    }

    v16 = v3[9];
    if (v16)
    {
      CFRelease(v16);
      v3[9] = 0;
    }

    v17 = v3[54];
    if (v17)
    {
      CFRelease(v17);
      v3[54] = 0;
    }

    v18 = v3[53];
    if (v18)
    {
      CFRelease(v18);
      v3[53] = 0;
    }

    v19 = v3[1];
    if (v19)
    {
      CFRelease(v19);
      v3[1] = 0;
    }

    v20 = v3[52];
    if (v20)
    {
      CFRelease(v20);
      v3[52] = 0;
    }

    v21 = v3[51];
    if (v21)
    {
      CFRelease(v21);
      v3[51] = 0;
    }

    v22 = v3[47];
    if (v22)
    {
      CFRelease(v22);
      v3[47] = 0;
    }

    v23 = v3[48];
    if (v23)
    {
      CFRelease(v23);
      v3[48] = 0;
    }

    v24 = v3[49];
    if (v24)
    {
      CFRelease(v24);
      v3[49] = 0;
    }

    v25 = v3[50];
    if (v25)
    {
      CFRelease(v25);
      v3[50] = 0;
    }

    v26 = v3[60];
    if (v26)
    {
      CFRelease(v26);
      v3[60] = 0;
    }

    v27 = v3[59];
    if (v27)
    {
      dispatch_release(v27);
      v3[59] = 0;
    }
  }
}

void sad_invalidateAndReleasePump(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if ((!a2 || !sad_relinquishAccessToDestinationURL(a1, 0)) && *(DerivedStorage + 32))
  {
    if (*(CMBaseObjectGetDerivedStorage() + 32))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_3_69();
      if (FigNotificationCenterRemoveWeakListener())
      {
        goto LABEL_9;
      }
    }

    else
    {
      OUTLINED_FUNCTION_239();
      if (FigSignalErrorAtGM())
      {
        goto LABEL_9;
      }
    }

    FigBytePumpGetFigBaseObject(*(DerivedStorage + 32));
    if (v5)
    {
      v6 = v5;
      v7 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v7)
      {
        v7(v6);
      }
    }

    *(DerivedStorage + 180) = 0;
  }

LABEL_9:
  v8 = *(DerivedStorage + 32);
  if (v8)
  {
    CFRelease(v8);
    *(DerivedStorage + 32) = 0;
  }

  v9 = *(DerivedStorage + 40);
  if (v9)
  {
    CFRelease(v9);
    *(DerivedStorage + 40) = 0;
  }
}

uint64_t sad_cleanupStreamingCacheFlush()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 456))
  {
    return 0;
  }

  *(DerivedStorage + 456) = 0;
  *(DerivedStorage + 464) = 0;
  CMNotificationCenterGetDefaultLocalCenter();

  return FigNotificationCenterRemoveWeakListener();
}

uint64_t sad_relinquishAccessToDestinationURL(uint64_t a1, int a2)
{
  cf = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 184))
  {
    return 0;
  }

  v4 = DerivedStorage;
  v5 = *(DerivedStorage + 32);
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = *(v4 + 8);
  FigBytePumpGetFigBaseObject(v5);
  v8 = v7;
  v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v9)
  {
    v9(v8, 0x1F0B1F098, v6, &cf);
  }

  if (a2)
  {
    v13 = sad_ensureTemporaryMetadataOnlyPumpCache(v4);
    if (v13)
    {
      goto LABEL_17;
    }

LABEL_8:
    if (*(v4 + 368))
    {
LABEL_11:
      v14 = 0;
      *(v4 + 180) = 0;
      goto LABEL_13;
    }

    v13 = FigAssetDownloadCoordinatorRelinquishAccessToURL(*(v4 + 184));
    if (!v13)
    {
      *(v4 + 184) = 0;
      goto LABEL_11;
    }

    goto LABEL_17;
  }

  FigBytePumpGetFigBaseObject(*(v4 + 32));
  v11 = v10;
  v12 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v12)
  {
    v14 = 4294954514;
    goto LABEL_13;
  }

  v13 = v12(v11, 0x1F0B1F098, 0);
  if (!v13)
  {
    goto LABEL_8;
  }

LABEL_17:
  v14 = v13;
LABEL_13:
  if (cf)
  {
    CFRelease(cf);
  }

  return v14;
}

uint64_t sad_ensureTemporaryMetadataOnlyPumpCache(uint64_t a1)
{
  v14 = 0;
  cf = 0;
  if (!*(a1 + 32))
  {
    OUTLINED_FUNCTION_239();
    v12 = FigSignalErrorAtGM();
    v3 = 0;
    goto LABEL_10;
  }

  Mutable = CFDictionaryCreateMutable(*(a1 + 8), 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v3 = Mutable;
  if (!Mutable)
  {
    OUTLINED_FUNCTION_239();
    v7 = FigSignalErrorAtGM();
    goto LABEL_19;
  }

  CFDictionarySetValue(Mutable, @"FSC_Backing", @"FSC_MemoryBacking");
  v4 = *(a1 + 8);
  CMBaseObject = FigAssetGetCMBaseObject(*(a1 + 16));
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v6)
  {
LABEL_9:
    v12 = 4294954514;
    goto LABEL_10;
  }

  v7 = v6(CMBaseObject, @"assetProperty_OriginalNetworkContentURL", v4, &cf);
  if (v7 || (v7 = FigStreamingCacheCreate(*(a1 + 8), cf, v3, &v14), v7))
  {
LABEL_19:
    v12 = v7;
    goto LABEL_10;
  }

  v8 = v14;
  FigBytePumpGetFigBaseObject(*(a1 + 32));
  v10 = v9;
  v11 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v11)
  {
    goto LABEL_9;
  }

  v12 = v11(v10, 0x1F0B1F098, v8);
  if (!v12)
  {
    *(a1 + 180) = 0;
  }

LABEL_10:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  return v12;
}

void sad_durationChangedNote(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 64))
  {
    OUTLINED_FUNCTION_303();
    v7 = FigSignalErrorAtGM();
LABEL_6:
    v8 = v7;
    if (!v7)
    {
      return;
    }

    goto LABEL_9;
  }

  if (!*(DerivedStorage + 32))
  {
    return;
  }

  FigBytePumpGetFigBaseObject(*(DerivedStorage + 32));
  if (*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    v4 = OUTLINED_FUNCTION_308();
    v6 = v5(v4);
    if (!v6)
    {
      v7 = sad_durationChanged(a2, 0);
      goto LABEL_6;
    }

    v8 = v6;
  }

  else
  {
    v8 = 4294954514;
  }

LABEL_9:
  sad_cleanupDownloadWithOSStatus(a2, v8);
}

uint64_t sad_durationChanged(const void *a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    goto LABEL_20;
  }

  v5 = DerivedStorage;
  if (*(DerivedStorage + 92) > 2u)
  {
    return 0;
  }

  *(DerivedStorage + 92) = 3;
  result = sad_ensureDuration(a1, a2);
  if (!result)
  {
    if ((*(v5 + 356) & 0x1D) == 1)
    {
      v7 = *(v5 + 16);
      v8 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (v8)
      {
        v8(v7, @"Duration", 0);
      }

      FigBytePumpGetFigBaseObject(*(v5 + 32));
      v10 = v9;
      v11 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (!v11)
      {
        return 4294954514;
      }

      result = v11(v10, 0x1F0B1F398, *MEMORY[0x1E695E4D0]);
      if (!result)
      {
        *(v5 + 178) = 1;
        v12 = *(v5 + 24);
        if (v12)
        {
          if (v12 != 1)
          {
            return 0;
          }

          return sad_openPumpOrScheduleIt(a1);
        }

        else
        {

          return sad_relinquishAccessToDestinationURL(a1, 1);
        }
      }

      return result;
    }

LABEL_20:
    OUTLINED_FUNCTION_239();

    return FigSignalErrorAtGM();
  }

  return result;
}

uint64_t sad_openPumpOrScheduleIt(const void *a1)
{
  if (*(CMBaseObjectGetDerivedStorage() + 184))
  {

    return sad_registerAssetForDownloadAndOpenPump(a1);
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (*(DerivedStorage + 92) > 3u)
    {
      return 0;
    }

    else
    {
      *(DerivedStorage + 92) = 4;
      if (*(DerivedStorage + 184))
      {
        OUTLINED_FUNCTION_303();

        return FigSignalErrorAtGM();
      }

      else
      {
        v3 = *(DerivedStorage + 72);
        v4 = *DerivedStorage;

        return FigAssetDownloadCoordinatorScheduleAccessToURL(a1, v3, v4, 0, sad_openPumpSchedulerCallback);
      }
    }
  }
}

uint64_t sad_registerAssetForDownloadAndOpenPump(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 24) != 1 || (v3 = DerivedStorage, !*(DerivedStorage + 184)))
  {
    OUTLINED_FUNCTION_376();

    return FigSignalErrorAtGM();
  }

  v4 = CMBaseObjectGetDerivedStorage();
  LOBYTE(v28) = 0;
  if (!*(v4 + 177))
  {
    v5 = v4;
    if (!*(v4 + 368))
    {
      result = FigAssetDownloadCoordinatorRegisterAssetForDownloader(*(v4 + 16), a1, *(v4 + 72), *(v4 + 264), *(v4 + 122) != 0, &v28);
      if (result)
      {
        return result;
      }

      *(v5 + 176) = v28;
      *(v5 + 177) = 1;
    }
  }

  if (*(v3 + 176))
  {
    return 0;
  }

  result = sad_ensureExtendedAttributesSetOnDestinationURL(v3);
  if (result)
  {
    return result;
  }

  v7 = CMBaseObjectGetDerivedStorage();
  if (*(v7 + 24) != 1 || (v8 = v7, v9 = *(v7 + 92), v9 <= 2))
  {
    OUTLINED_FUNCTION_376();
    return FigSignalErrorAtGM();
  }

  if (v9 > 4)
  {
    return 0;
  }

  *(v7 + 92) = 5;
  result = sad_ensurePersistentPumpCacheConfiguredForDownload(v7);
  if (!result)
  {
    v10 = *(v8 + 312);
    if (v10)
    {
      v11 = *(v8 + 32);
      v12 = *(v8 + 296);
      IsAudioOnly = FigAlternateIsAudioOnly(*(v8 + 312));
      v14 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (!v14)
      {
        return 4294954514;
      }

      v28 = *MEMORY[0x1E6960CC0];
      *&v29 = *(MEMORY[0x1E6960CC0] + 16);
      v25 = v28;
      *&v26 = v29;
      result = v14(v11, v10, v12, 0, IsAudioOnly, 17, &v28, &v25, 0, v8 + 192, 0, v8 + 80);
      if (result)
      {
        return result;
      }
    }

    FigBytePumpGetFigBaseObject(*(v8 + 32));
    v16 = v15;
    v17 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v17)
    {
      result = v17(v16, 0x1F0B1F3D8, *MEMORY[0x1E695E4D0]);
      if (result)
      {
        return result;
      }

      *(v8 + 248) = 0u;
      *(v8 + 232) = 0u;
      *(v8 + 216) = 0u;
      if (!*(v8 + 192))
      {
        return sad_bytePumpReachedEnd(a1, *(v8 + 408));
      }

      v18 = *(v8 + 32);
      v19 = *(v8 + 144);
      v25 = *(v8 + 128);
      v26 = v19;
      v27 = *(v8 + 160);
      v20 = *(*(CMBaseObjectGetVTable() + 16) + 72);
      if (v20)
      {
        v28 = v25;
        v29 = v26;
        v30 = v27;
        result = v20(v18, &v28, 0, 0, 0, v8 + 80, 0);
        if (!result)
        {
          v21 = *(v8 + 32);
          if (v21)
          {
            v22 = CFRetain(v21);
            if (v22)
            {
              v23 = v22;
              global_queue = dispatch_get_global_queue(0, 0);
              dispatch_async_f(global_queue, v23, sad_ticklePumpChapterDataLoadDispatch);
              return 0;
            }
          }

          OUTLINED_FUNCTION_376();
          return FigSignalErrorAtGM();
        }

        return result;
      }
    }

    return 4294954514;
  }

  return result;
}

const void *sad_ensureExtendedAttributesSetOnDestinationURL(uint64_t a1)
{
  v2 = *(a1 + 320);
  if (v2)
  {
    result = FigSetNameForAssetAtURL(*(a1 + 72), v2);
    if (result)
    {
      return result;
    }

    v4 = *(a1 + 320);
    if (v4)
    {
      CFRelease(v4);
      *(a1 + 320) = 0;
    }
  }

  v5 = *(a1 + 336);
  if (v5)
  {
    result = FigSetImageDataForAssetAtURL(*(a1 + 72), v5);
    if (result)
    {
      return result;
    }

    v6 = *(a1 + 336);
    if (v6)
    {
      CFRelease(v6);
      *(a1 + 336) = 0;
    }
  }

  if (!*(a1 + 369) || !*(a1 + 264) || !*(a1 + 328))
  {
    return 0;
  }

  FigAssetDownloadStorageManagementSetContentTypeForAssetAtURL();
  FigAssetDownloadStorageManagementSetDownloadStartDateForAssetAtURL();
  result = *(a1 + 328);
  if (result)
  {
    CFRelease(result);
    result = 0;
    *(a1 + 328) = 0;
  }

  return result;
}

uint64_t sad_ensurePersistentPumpCacheConfiguredForDownload(uint64_t a1)
{
  v31 = 0;
  v32 = 0;
  v29 = 0;
  v30 = 0;
  if (!*(a1 + 32) || !*(a1 + 184))
  {
    OUTLINED_FUNCTION_243();
    v16 = FigSignalErrorAtGM();
LABEL_52:
    v3 = 0;
    goto LABEL_39;
  }

  if (*(a1 + 180))
  {
    v16 = 0;
    goto LABEL_52;
  }

  Mutable = CFDictionaryCreateMutable(*(a1 + 8), 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v3 = Mutable;
  if (!Mutable)
  {
    OUTLINED_FUNCTION_243();
    v7 = FigSignalErrorAtGM();
    goto LABEL_54;
  }

  CFDictionarySetValue(Mutable, @"FSC_DownloadDestinationURL", *(a1 + 72));
  FigBytePumpGetFigBaseObject(*(a1 + 32));
  v5 = v4;
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v6)
  {
    goto LABEL_38;
  }

  v7 = v6(v5, 0x1F0B1F098, *MEMORY[0x1E695E480], &v29);
  if (v7)
  {
    v8 = v7 == -12783;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    goto LABEL_54;
  }

  if (v29)
  {
    v7 = FigStreamingCacheCopyProperty(v29, @"FSC_DownloadDestinationURL", *(a1 + 8), &v31);
    if (v7)
    {
      goto LABEL_54;
    }

    if (FigCFEqual())
    {
      FigBytePumpGetFigBaseObject(*(a1 + 32));
      v10 = v9;
      v11 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (!v11)
      {
        goto LABEL_38;
      }

      v7 = v11(v10, 0x1F0B1F098, 0);
      if (v7)
      {
        goto LABEL_54;
      }
    }
  }

  if (!*(a1 + 123))
  {
LABEL_27:
    v17 = *(a1 + 16);
    AllocatorForMedia = FigGetAllocatorForMedia();
    CMBaseObject = FigAssetGetCMBaseObject(v17);
    v20 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v20)
    {
      v20(CMBaseObject, @"assetProperty_DiskBackedStreamingCache", AllocatorForMedia, &v30);
    }

    v21 = *(a1 + 8);
    v22 = FigAssetGetCMBaseObject(*(a1 + 16));
    v23 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v23)
    {
      v7 = v23(v22, @"assetProperty_OriginalNetworkContentURL", v21, &v32);
      if (v7)
      {
        goto LABEL_54;
      }

      v24 = v30;
      if (!v30)
      {
        v7 = FigStreamingCacheCreate(*(a1 + 8), v32, v3, &v30);
        if (v7)
        {
          goto LABEL_54;
        }

        v24 = v30;
      }

      FigBytePumpGetFigBaseObject(*(a1 + 32));
      v26 = v25;
      v27 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v27)
      {
        v7 = v27(v26, 0x1F0B1F098, v24);
        if (!v7)
        {
          v16 = sad_ensureExtendedAttributesSetOnDestinationURL(a1);
          if (!v16)
          {
            *(a1 + 180) = 1;
          }

          goto LABEL_39;
        }

LABEL_54:
        v16 = v7;
        goto LABEL_39;
      }
    }

LABEL_38:
    v16 = 4294954514;
    goto LABEL_39;
  }

  cf = 0;
  v12 = *(a1 + 8);
  v13 = FigAssetGetCMBaseObject(*(a1 + 16));
  v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v14)
  {
    HardLink = v14(v13, @"assetProperty_CreationURL", v12, &cf);
    if (HardLink)
    {
LABEL_22:
      v16 = HardLink;
      goto LABEL_24;
    }

    if (!FigCFURLIsLocalResource())
    {
      OUTLINED_FUNCTION_243();
      HardLink = FigSignalErrorAtGM();
      goto LABEL_22;
    }

    if (!FigFileDoesFileExist())
    {
      HardLink = FigFoundationCreateHardLink();
      goto LABEL_22;
    }

    v16 = 0;
  }

  else
  {
    v16 = 4294954514;
  }

LABEL_24:
  if (cf)
  {
    CFRelease(cf);
  }

  if (!v16)
  {
    goto LABEL_27;
  }

LABEL_39:
  if (v32)
  {
    CFRelease(v32);
  }

  if (v31)
  {
    CFRelease(v31);
  }

  if (v29)
  {
    CFRelease(v29);
  }

  if (v30)
  {
    CFRelease(v30);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  return v16;
}

uint64_t sad_bytePumpReachedEnd(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v25 = 0;
  if ((*(DerivedStorage + 192) & ~*(DerivedStorage + 196)) == 0)
  {
    v5 = DerivedStorage;
    if (a2)
    {
      v6 = CFRetain(a2);
      v7 = v6;
      v25 = v6;
      v8 = *(v5 + 416);
      *(v5 + 416) = v6;
      if (v6)
      {
        CFRetain(v6);
      }

      if (v8)
      {
        CFRelease(v8);
      }

      goto LABEL_23;
    }

    cf = 0;
    v9 = *MEMORY[0x1E695E4C0];
    v26 = *MEMORY[0x1E695E4C0];
    v10 = *(DerivedStorage + 32);
    if (v10)
    {
      v11 = *(v5 + 8);
      FigBytePumpGetFigBaseObject(v10);
      v13 = v12;
      v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v14)
      {
        v15 = v14(v13, 0x1F0B1F098, v11, &cf);
        v16 = cf;
        if (!v15)
        {
          FigStreamingCacheCleanupStreamsForPersisting(cf, &v26);
          v17 = 1;
          v16 = cf;
          if (!cf)
          {
            goto LABEL_13;
          }

          goto LABEL_11;
        }

        v17 = 0;
        if (cf)
        {
LABEL_11:
          CFRelease(v16);
        }
      }

      else
      {
        v17 = 0;
        v15 = 4294954514;
      }
    }

    else
    {
      OUTLINED_FUNCTION_303();
      v15 = FigSignalErrorAtGM();
      v17 = 0;
    }

LABEL_13:
    if (v9)
    {
      CFRelease(v9);
    }

    if (v15)
    {
      return v15;
    }

    if (v17)
    {
      v18 = CMBaseObjectGetDerivedStorage();
      if (*(v18 + 369) && *(v18 + 264))
      {
        v19 = *MEMORY[0x1E695E480];
        Current = CFAbsoluteTimeGetCurrent();
        v21 = CFDateCreate(v19, Current);
        if (v21)
        {
          v22 = v21;
          FigAssetDownloadStorageManagementSetDownloadCompletionDateForAssetAtURL();
          CFRelease(v22);
        }

        else
        {
          OUTLINED_FUNCTION_303();
          v15 = FigSignalErrorAtGM();
          if (v15)
          {
            return v15;
          }
        }
      }

      v7 = 0;
    }

    else
    {
      ErrorForOSStatus = FigCreateErrorForOSStatus(4294950639, &v25);
      v7 = v25;
      if (ErrorForOSStatus)
      {
        v15 = ErrorForOSStatus;
        if (!v25)
        {
          return v15;
        }

        goto LABEL_24;
      }
    }

LABEL_23:
    v15 = sad_cleanupDownload(a1, v7);
    v7 = v25;
    if (!v25)
    {
      return v15;
    }

LABEL_24:
    CFRelease(v7);
    return v15;
  }

  OUTLINED_FUNCTION_303();

  return FigSignalErrorAtGM();
}

void sad_flushStreamingCacheCompletedNote()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 64) || (v1 = DerivedStorage, !*(DerivedStorage + 456)))
  {
    OUTLINED_FUNCTION_303();

    FigSignalErrorAtGM();
  }

  else if (FigCFDictionaryGetInt64IfPresent())
  {
    if (!*(v1 + 456) && !sad_cleanupStreamingCacheFlush())
    {
      sad_finishDownloadAfterStreamingCacheFlush();
    }
  }

  else
  {
    OUTLINED_FUNCTION_303();
    FigSignalErrorAtGM();
  }
}

void sad_finishDownloadAfterStreamingCacheFlush()
{
  cf[16] = *MEMORY[0x1E69E9840];
  sad_invalidateAndReleasePump();
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_6_61();
  if (!(!v1 & v0))
  {
    if (dword_1EAF17328)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    DerivedStorage = CMBaseObjectGetDerivedStorage();
    Mutable = CFDictionaryCreateMutable(*(DerivedStorage + 8), 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      FigCFDictionarySetValue();
      FigCFDictionarySetValue();
      if (*(DerivedStorage + 416))
      {
        *(DerivedStorage + 24) = 4;
        FigCFDictionarySetValue();
      }

      else
      {
        *(DerivedStorage + 24) = 3;
      }

      v5 = CMBaseObjectGetDerivedStorage();
      cf[0] = 0;
      v6 = *MEMORY[0x1E695E480];
      v7 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      FigCFDictionarySetValue();
      CMBaseObject = FigAssetGetCMBaseObject(*(v5 + 16));
      v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v9)
      {
        v9(CMBaseObject, @"LoggingIdentifier", v6, cf);
      }

      FigCFDictionarySetValue();
      mach_absolute_time();
      FigHostTimeToNanoseconds();
      FigCFDictionarySetInt32();
      FigCFDictionarySetUInt64();
      FigLogPowerEvent();
      if (v7)
      {
        CFRelease(v7);
      }

      if (cf[0])
      {
        CFRelease(cf[0]);
      }
    }

    else
    {
      FigSignalErrorAtGM();
    }

    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }
}

uint64_t sad_startOrResumeDownload(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_6_61();
  if (!v4 & v3)
  {
    return 0;
  }

  v5 = v2;
  v6 = *(v2 + 92);
  if (v6 == 5)
  {
    v7 = 0;
    while (1)
    {
      if ((*(v5 + 192) >> v7))
      {
        v8 = *(v5 + 32);
        v9 = *(*(CMBaseObjectGetVTable() + 16) + 16);
        if (!v9)
        {
          return 4294954514;
        }

        result = v9(v8, v7);
        if (result)
        {
          return result;
        }
      }

      if (++v7 == 3)
      {
        goto LABEL_14;
      }
    }
  }

  if ((v6 - 3) < 2)
  {
    result = sad_openPumpOrScheduleIt(a1);
    if (result)
    {
      return result;
    }
  }

  else if (!v6)
  {
    sad_requestPump(v2);
  }

LABEL_14:
  v11 = mach_absolute_time();
  result = 0;
  *(v5 + 496) = v11;
  *(v5 + 24) = 1;
  return result;
}

uint64_t sad_requestPump(uint64_t a1)
{
  if (*(a1 + 92))
  {

    return FigSignalErrorAtGM();
  }

  else
  {
    v2 = *(a1 + 48);
    if (v2)
    {
      CFRetain(v2);
    }

    VTable = CMBaseObjectGetVTable();
    v5 = *(VTable + 16);
    result = VTable + 16;
    if (*(v5 + 72))
    {
      v6 = OUTLINED_FUNCTION_308();
      result = v7(v6);
      if (!result)
      {
        *(a1 + 92) = 1;
      }
    }
  }

  return result;
}

void sad_getPumpReadySchedulerCallback(const void *a1, int a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v7 = *MEMORY[0x1E695E4C0];
  v126 = 0;
  v127 = v7;
  HIDWORD(v125) = 0;
  v8 = CFGetTypeID(a1);
  if (v8 != FigAssetDownloaderGetTypeID() || (*(DerivedStorage + 184) = a3, *(DerivedStorage + 64)))
  {
    OUTLINED_FUNCTION_0_104();
    v116 = FigSignalErrorAtGM();
LABEL_115:
    v11 = v116;
    v22 = 0;
    v21 = 0;
LABEL_116:
    v20 = 0;
LABEL_117:
    if (v11)
    {
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  if ((*(DerivedStorage + 24) - 6) >= 0xFFFFFFFD)
  {
    v116 = sad_relinquishAccessToDestinationURL(a1, 0);
    goto LABEL_115;
  }

  if (!*(DerivedStorage + 32))
  {
    v20 = 0;
    v21 = 0;
    v22 = 0;
    goto LABEL_15;
  }

  if (*(CMBaseObjectGetDerivedStorage() + 32))
  {
    DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_3_69(DefaultLocalCenter);
    v10 = FigNotificationCenterAddWeakListener();
  }

  else
  {
    OUTLINED_FUNCTION_0_104();
    v10 = FigSignalErrorAtGM();
  }

  v11 = v10;
  if (v10)
  {
    goto LABEL_111;
  }

  v12 = *(DerivedStorage + 32);
  v13 = *(DerivedStorage + 48);
  v14 = *(*(CMBaseObjectGetVTable() + 16) + 88);
  if (!v14)
  {
LABEL_11:
    v20 = 0;
    v21 = 0;
LABEL_12:
    v22 = 0;
LABEL_13:
    v11 = 4294954514;
LABEL_14:
    sad_relinquishAccessToDestinationURL(a1, 0);
    sad_cleanupDownloadWithOSStatus(a1, v11);
    goto LABEL_15;
  }

  v15 = v14(v12, sad_bytePumpFn, 0, v13);
  if (v15)
  {
    goto LABEL_27;
  }

  v16 = *(DerivedStorage + 56);
  FigBytePumpGetFigBaseObject(*(DerivedStorage + 32));
  v18 = v17;
  v19 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v19)
  {
    goto LABEL_11;
  }

  v15 = v19(v18, 0x1F0B1F0B8, v16);
  if (v15)
  {
    goto LABEL_27;
  }

  if (a2)
  {
    v23 = sad_ensurePersistentPumpCacheConfiguredForDownload(DerivedStorage);
    v11 = v23;
    if (v23 == -16248)
    {
      v11 = sad_ensureTemporaryMetadataOnlyPumpCache(DerivedStorage);
      if (v11)
      {
        goto LABEL_111;
      }
    }

    else if (v23)
    {
      goto LABEL_111;
    }
  }

  else
  {
    v15 = sad_ensureTemporaryMetadataOnlyPumpCache(DerivedStorage);
    if (v15)
    {
LABEL_27:
      v11 = v15;
LABEL_111:
      v20 = 0;
      v21 = 0;
LABEL_112:
      v22 = 0;
      goto LABEL_14;
    }
  }

  FigBytePumpGetFigBaseObject(*(DerivedStorage + 32));
  v25 = v24;
  v26 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v26)
  {
    goto LABEL_11;
  }

  v27 = *MEMORY[0x1E695E4D0];
  v15 = v26(v25, 0x1F0B1F458, *MEMORY[0x1E695E4D0]);
  if (v15)
  {
    goto LABEL_27;
  }

  if (*(DerivedStorage + 181))
  {
    FigBytePumpGetFigBaseObject(*(DerivedStorage + 32));
    v29 = v28;
    v30 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (!v30)
    {
      goto LABEL_11;
    }

    v15 = v30(v29, 0x1F0B1F698, v27);
    if (v15)
    {
      goto LABEL_27;
    }
  }

  if (*(DerivedStorage + 182))
  {
    FigBytePumpGetFigBaseObject(*(DerivedStorage + 32));
    v32 = v31;
    v33 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (!v33)
    {
      goto LABEL_11;
    }

    v15 = v33(v32, 0x1F0B1F6B8, v27);
    if (v15)
    {
      goto LABEL_27;
    }
  }

  FigBytePumpGetFigBaseObject(*(DerivedStorage + 32));
  if (!*(*(CMBaseObjectGetVTable() + 8) + 56))
  {
    goto LABEL_11;
  }

  v34 = OUTLINED_FUNCTION_793();
  v15 = v35(v34);
  if (v15)
  {
    goto LABEL_27;
  }

  FigBytePumpGetFigBaseObject(*(DerivedStorage + 32));
  if (!*(*(CMBaseObjectGetVTable() + 8) + 56))
  {
    goto LABEL_11;
  }

  v36 = OUTLINED_FUNCTION_793();
  v15 = v37(v36);
  if (v15)
  {
    goto LABEL_27;
  }

  FigBytePumpGetFigBaseObject(*(DerivedStorage + 32));
  if (!*(*(CMBaseObjectGetVTable() + 8) + 56))
  {
    goto LABEL_11;
  }

  v38 = OUTLINED_FUNCTION_793();
  v15 = v39(v38);
  if (v15)
  {
    goto LABEL_27;
  }

  FigBytePumpGetFigBaseObject(*(DerivedStorage + 32));
  if (!*(*(CMBaseObjectGetVTable() + 8) + 56))
  {
    goto LABEL_11;
  }

  v40 = OUTLINED_FUNCTION_793();
  v15 = v41(v40);
  if (v15)
  {
    goto LABEL_27;
  }

  allocator = *MEMORY[0x1E695E480];
  v21 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &v125 + 4);
  if (!v21)
  {
    OUTLINED_FUNCTION_0_104();
    v11 = FigSignalErrorAtGM();
    v22 = 0;
    goto LABEL_116;
  }

  FigBytePumpGetFigBaseObject(*(DerivedStorage + 32));
  if (!*(*(CMBaseObjectGetVTable() + 8) + 56))
  {
    goto LABEL_78;
  }

  v42 = OUTLINED_FUNCTION_308();
  v44 = v43(v42);
  if (v44)
  {
    goto LABEL_130;
  }

  if (*(DerivedStorage + 124))
  {
    FigBytePumpGetFigBaseObject(*(DerivedStorage + 32));
    v46 = v45;
    v47 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (!v47)
    {
      goto LABEL_78;
    }

    v44 = v47(v46, 0x1F0B1F3F8, v27);
    if (v44)
    {
LABEL_130:
      v11 = v44;
      v20 = 0;
      goto LABEL_112;
    }
  }

  v48 = *(DerivedStorage + 264);
  if (!v48)
  {
    goto LABEL_55;
  }

  FigBytePumpGetFigBaseObject(*(DerivedStorage + 32));
  v50 = v49;
  v51 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v51)
  {
LABEL_78:
    v20 = 0;
    goto LABEL_12;
  }

  v44 = v51(v50, 0x1F0B1F238, v48);
  if (v44)
  {
    goto LABEL_130;
  }

LABEL_55:
  FigBytePumpGetFigBaseObject(*(DerivedStorage + 32));
  v53 = v52;
  v54 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v54)
  {
    goto LABEL_78;
  }

  v44 = v54(v53, 0x1F0B1F638, 0x1F0B1B8B8);
  if (v44)
  {
    goto LABEL_130;
  }

  v22 = CFNumberCreate(allocator, kCFNumberDoubleType, &kInitialPlaylistDownloadTimeoutSecs);
  if (!v22)
  {
    OUTLINED_FUNCTION_0_104();
    v11 = FigSignalErrorAtGM();
    goto LABEL_116;
  }

  FigBytePumpGetFigBaseObject(*(DerivedStorage + 32));
  v56 = v55;
  v57 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v57)
  {
    goto LABEL_79;
  }

  CFIndexForKeyFromPumpStoreBag = v57(v56, 0x1F0B1F6D8, v22);
  if (CFIndexForKeyFromPumpStoreBag)
  {
    goto LABEL_125;
  }

  CFIndexForKeyFromPumpStoreBag = OUTLINED_FUNCTION_14_31(CFIndexForKeyFromPumpStoreBag, @"coalesceByteRangedMediaSegmentRequestsForDownload", v59, v60, v61, v62, v63, v64, v120, allocator, v125, v126, v127, cf, v129[0]);
  if (CFIndexForKeyFromPumpStoreBag)
  {
    goto LABEL_125;
  }

  v65 = v129[0] ? v27 : v7;
  FigBytePumpGetFigBaseObject(*(DerivedStorage + 32));
  v67 = v66;
  v68 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v68)
  {
    goto LABEL_79;
  }

  CFIndexForKeyFromPumpStoreBag = v68(v67, 0x1F0B1F758, v65);
  if (CFIndexForKeyFromPumpStoreBag)
  {
    goto LABEL_125;
  }

  CFIndexForKeyFromPumpStoreBag = OUTLINED_FUNCTION_14_31(CFIndexForKeyFromPumpStoreBag, @"pipelineMediaSegmentRequestsForDownload", v69, v70, v71, v72, v73, v74, v27, allocatora, v125, v126, v127, cf, v129[0]);
  if (CFIndexForKeyFromPumpStoreBag)
  {
    goto LABEL_125;
  }

  v75 = v129[0];
  v76 = v129[0] ? v121 : v7;
  FigBytePumpGetFigBaseObject(*(DerivedStorage + 32));
  v78 = v77;
  v79 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v79)
  {
LABEL_79:
    v20 = 0;
    goto LABEL_13;
  }

  CFIndexForKeyFromPumpStoreBag = v79(v78, 0x1F0B1F778, v76);
  if (CFIndexForKeyFromPumpStoreBag)
  {
    goto LABEL_125;
  }

  if (!v75)
  {
    v20 = 0;
    goto LABEL_81;
  }

  CFIndexForKeyFromPumpStoreBag = sad_getCFIndexForKeyFromPumpStoreBag(a1, @"countOfpipelinedMediaSegmentRequestsForDownload", 6, &v126);
  if (CFIndexForKeyFromPumpStoreBag)
  {
LABEL_125:
    v11 = CFIndexForKeyFromPumpStoreBag;
    v20 = 0;
    goto LABEL_14;
  }

  v20 = CFNumberCreate(allocatorb, kCFNumberCFIndexType, &v126);
  if (!v20)
  {
    OUTLINED_FUNCTION_0_104();
    v115 = FigSignalErrorAtGM();
LABEL_109:
    v11 = v115;
    goto LABEL_117;
  }

  FigBytePumpGetFigBaseObject(*(DerivedStorage + 32));
  v81 = v80;
  v82 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v82)
  {
    goto LABEL_13;
  }

  v83 = v82(v81, 0x1F0B1F938, v20);
  if (v83)
  {
LABEL_131:
    v11 = v83;
    goto LABEL_14;
  }

LABEL_81:
  FigBytePumpGetFigBaseObject(*(DerivedStorage + 32));
  if (!*(*(CMBaseObjectGetVTable() + 8) + 56))
  {
    goto LABEL_13;
  }

  v84 = OUTLINED_FUNCTION_11_38();
  v83 = v85(v84);
  if (v83)
  {
    goto LABEL_131;
  }

  FigBytePumpGetFigBaseObject(*(DerivedStorage + 32));
  if (!*(*(CMBaseObjectGetVTable() + 8) + 56))
  {
    goto LABEL_13;
  }

  v86 = OUTLINED_FUNCTION_11_38();
  v83 = v87(v86);
  if (v83)
  {
    goto LABEL_131;
  }

  if (*(DerivedStorage + 376))
  {
    FigBytePumpGetFigBaseObject(*(DerivedStorage + 32));
    if (!*(*(CMBaseObjectGetVTable() + 8) + 56))
    {
      goto LABEL_13;
    }

    v88 = OUTLINED_FUNCTION_11_38();
    v83 = v89(v88);
    if (v83)
    {
      goto LABEL_131;
    }
  }

  FigBytePumpGetFigBaseObject(*(DerivedStorage + 32));
  if (!*(*(CMBaseObjectGetVTable() + 8) + 56))
  {
    goto LABEL_13;
  }

  v90 = OUTLINED_FUNCTION_11_38();
  v83 = v91(v90);
  if (v83)
  {
    goto LABEL_131;
  }

  v92 = CMBaseObjectGetDerivedStorage();
  v130 = 0;
  v131 = 0;
  v129[0] = sad_highSpeedHighPowerTransportChangedCallback;
  v129[1] = 0;
  v93 = *(v92 + 32);
  if (v93)
  {
    FigBytePumpGetFigBaseObject(v93);
    v95 = v94;
    v96 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v96)
    {
      if (!v96(v95, 0x1F0B1F898, allocatorb, &v130))
      {
        v97 = v130;
        v98 = *v92;
        v99 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (v99)
        {
          if (!v99(v97, a1, v129, v98))
          {
            v100 = v130;
            v101 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v101)
            {
              v102 = v101(v100, 0x1F0B5F6B8, allocatorb, &v131);
              v103 = v131;
              if (!v102)
              {
                *(v92 + 488) = v121 == v131;
              }

              if (v103)
              {
                CFRelease(v103);
              }
            }
          }
        }
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_104();
    FigSignalErrorAtGM();
  }

  if (v130)
  {
    CFRelease(v130);
  }

  *(DerivedStorage + 192) = 1;
  v104 = *(DerivedStorage + 8);
  FigBytePumpGetFigBaseObject(*(DerivedStorage + 32));
  v106 = v105;
  v107 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v107)
  {
    goto LABEL_13;
  }

  v83 = v107(v106, 0x1F0B1F6F8, v104, &v127);
  if (v83)
  {
    goto LABEL_131;
  }

  if (v121 != v127)
  {
    v108 = *(DerivedStorage + 8);
    FigBytePumpGetFigBaseObject(*(DerivedStorage + 32));
    v110 = v109;
    v111 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v111)
    {
      goto LABEL_13;
    }

    v112 = v111(v110, @"FBP_Duration", v108, &cf);
    if (v112 == -12783)
    {
      v113 = *(DerivedStorage + 32);
      v114 = *(*(CMBaseObjectGetVTable() + 16) + 64);
      if (!v114)
      {
        goto LABEL_13;
      }

      v115 = v114(v113);
    }

    else
    {
      v11 = v112;
      if (v112)
      {
        goto LABEL_14;
      }

      FigBytePumpGetFigBaseObject(*(DerivedStorage + 32));
      v118 = v117;
      v119 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (!v119)
      {
        goto LABEL_13;
      }

      v83 = v119(v118, 0x1F0B1F3D8, v121);
      if (v83)
      {
        goto LABEL_131;
      }

      v115 = sad_durationChanged(a1, cf);
    }

    goto LABEL_109;
  }

LABEL_15:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  if (v20)
  {
    CFRelease(v20);
  }
}

void sad_bytePumpFn(uint64_t a1, uint64_t a2, const void *a3, int a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, const void *a12)
{
  cf = 0;
  v15 = sad_copyAssetDownloaderFromRetainProxy(a2, &cf);
  v16 = cf;
  if (!v15)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v18 = malloc_type_calloc(1uLL, 0x20uLL, 0x10200405C7134C3uLL);
    if (!v18)
    {
      FigSignalErrorAtGM();
      if (!v16)
      {
        return;
      }

      goto LABEL_14;
    }

    v19 = v18;
    if (v16)
    {
      v20 = CFRetain(v16);
    }

    else
    {
      v20 = 0;
    }

    *v19 = v20;
    if (a3)
    {
      v21 = CFRetain(a3);
    }

    else
    {
      v21 = 0;
    }

    v19[1] = v21;
    *(v19 + 4) = a4;
    *(v19 + 20) = a5;
    if (a12)
    {
      v22 = CFRetain(a12);
    }

    else
    {
      v22 = 0;
    }

    v19[3] = v22;
    dispatch_async_f(*DerivedStorage, v19, sad_bytePumpFnDispatch);
  }

  if (!v16)
  {
    return;
  }

LABEL_14:

  CFRelease(v16);
}

void sad_bytePumpFnDispatch(unsigned __int8 *a1)
{
  v2 = *a1;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(a1 + 1);
  v5 = *(a1 + 3);
  if (*(DerivedStorage + 64))
  {
    v32 = FigSignalErrorAtGM();
    goto LABEL_51;
  }

  v6 = DerivedStorage;
  if (!*(DerivedStorage + 32))
  {
    goto LABEL_43;
  }

  v7 = *(a1 + 4);
  v8 = a1[20];
  if (v4)
  {
    DataLength = CMBlockBufferGetDataLength(*(a1 + 1));
  }

  else
  {
    DataLength = 0;
  }

  v10 = v6 + 16 * v8;
  if ((v7 & 0x100) != 0)
  {
    v11 = 0;
    v12 = *(v10 + 224) + 1;
    *(v10 + 216) = 0;
    *(v10 + 224) = v12;
  }

  else
  {
    v11 = *(v10 + 216);
  }

  *(v10 + 216) = v11 + DataLength;
  *(v6 + 208) += DataLength;
  if ((v7 & 0x400) != 0)
  {
    v14 = (v7 >> 6) & 1;
  }

  else
  {
    *(v6 + 200) += DataLength;
    if ((v7 & 0x40) == 0)
    {
      v13 = v5 == 0;
      goto LABEL_36;
    }

    v15 = *(v6 + 480);
    if (v15)
    {
      v16 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (v16)
      {
        v16(v15, 0x1F0B64618, 0x1F0B39CD8, DataLength);
      }
    }

    number = 0;
    valuePtr = 0;
    v17 = *(v6 + 32);
    if (v17)
    {
      FigBytePumpGetFigBaseObject(v17);
      v19 = v18;
      v20 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v20)
      {
        if (!v20(v19, 0x1F0B1F738, *MEMORY[0x1E695E480], &number))
        {
          CFNumberGetValue(number, kCFNumberIntType, &valuePtr);
          v21 = *(v6 + 480);
          if (v21)
          {
            v34 = valuePtr;
            v22 = *(*(CMBaseObjectGetVTable() + 16) + 56);
            if (v22)
            {
              v22(v21, 0x1F0B64618, 0x1F0B653F8, v34, 0);
            }
          }
        }
      }

      if (number)
      {
        CFRelease(number);
      }
    }

    if (!*(v6 + 488))
    {
      goto LABEL_31;
    }

    v23 = *(v6 + 480);
    if (!v23)
    {
      goto LABEL_31;
    }

    v24 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (!v24)
    {
      goto LABEL_31;
    }

    v14 = 1;
    if (!v24(v23))
    {
      v25 = *(v6 + 480);
      if (v25)
      {
        v26 = *(*(CMBaseObjectGetVTable() + 16) + 32);
        if (v26)
        {
          v26(v25, 0x1F0B64618, 0x1F0B654B8, DataLength);
        }
      }

LABEL_31:
      v14 = 1;
    }
  }

  v13 = v5 == 0;
  if (v14 && !v5)
  {
    v27 = CMBaseObjectGetDerivedStorage();
    if (FigGetUpTimeNanoseconds() - *(v27 + 440) >= 500000001)
    {
      v29 = sad_sendLoadedTimeRangesChangeNoteIfChanged(v2);
      if (v29)
      {
        goto LABEL_54;
      }
    }

    v13 = 1;
  }

LABEL_36:
  if ((v7 & 2) == 0)
  {
    goto LABEL_43;
  }

  if (!v13)
  {
    if (!FigCFErrorIsEqualToOSStatus(v5, @"CoreMediaErrorDomain", -15642))
    {
      v28 = *(v6 + 408);
      *(v6 + 408) = v5;
      CFRetain(v5);
      if (v28)
      {
        CFRelease(v28);
      }
    }

    goto LABEL_42;
  }

  v29 = sad_sendLoadedTimeRangesChangeNoteIfChanged(v2);
  if (!v29)
  {
LABEL_42:
    v30 = *(v6 + 192);
    v31 = *(v6 + 196) | (1 << v8);
    *(v6 + 196) = v31;
    if ((v30 & ~v31) != 0)
    {
      goto LABEL_43;
    }

    v32 = sad_bytePumpReachedEnd(v2, *(v6 + 408));
LABEL_51:
    v33 = v32;
    if (!v32)
    {
      goto LABEL_43;
    }

    goto LABEL_52;
  }

LABEL_54:
  v33 = v29;
LABEL_52:
  sad_cleanupDownloadWithOSStatus(v2, v33);
LABEL_43:
  if (v5)
  {
    CFRelease(v5);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  free(a1);
}

uint64_t sad_sendLoadedTimeRangesChangeNoteIfChanged(uint64_t a1)
{
  v92 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v2 = *(MEMORY[0x1E6960CA8] + 16);
  *&v78.start.value = *MEMORY[0x1E6960CA8];
  *&v78.start.epoch = v2;
  *&v78.duration.timescale = *(MEMORY[0x1E6960CA8] + 32);
  v3 = sad_copyLoadedTimeRanges(DerivedStorage, &cf);
  if (v3)
  {
    v4 = v3;
    goto LABEL_4;
  }

  if (FigCFEqual())
  {
    v4 = 0;
LABEL_4:
    v5 = 0;
    goto LABEL_60;
  }

  v6 = cf;
  v7 = MEMORY[0x1E695E480];
  v76 = DerivedStorage;
  if (!*(DerivedStorage + 432))
  {
    if (cf)
    {
      v41 = CFRetain(cf);
    }

    else
    {
      v41 = 0;
    }

    goto LABEL_47;
  }

  theArray = *(DerivedStorage + 432);
  v8 = MEMORY[0x1E6960C70];
  v9 = *MEMORY[0x1E6960C70];
  v90 = *MEMORY[0x1E6960C70];
  v10 = *(MEMORY[0x1E6960C70] + 8);
  v91 = v10;
  if (!cf || (v11 = *MEMORY[0x1E695E480], (Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0])) == 0))
  {
    OUTLINED_FUNCTION_239();
    v4 = FigSignalErrorAtGM();
    v41 = 0;
    if (!v4)
    {
      goto LABEL_47;
    }

    goto LABEL_72;
  }

  v64 = v9;
  allocator = v11;
  v63 = v10;
  v66 = Mutable;
  v13 = *(v8 + 12);
  v14 = *(v8 + 16);
  v62 = v13;
  v61 = v14;
  if (CFArrayGetCount(v6) < 1)
  {
    v16 = 0;
  }

  else
  {
    v15 = 0;
    v16 = 0;
    v17 = theArray;
    v67 = v6;
    while (v15 < CFArrayGetCount(v17))
    {
      v74 = v14;
      memset(&v84, 0, sizeof(v84));
      ValueAtIndex = CFArrayGetValueAtIndex(v6, v16);
      v19 = CFArrayGetValueAtIndex(v17, v15);
      if (FigCFEqual())
      {
        ++v16;
        ++v15;
        v14 = v74;
      }

      else
      {
        CMTimeRangeMakeFromDictionary(&range1, ValueAtIndex);
        end.value = range1.start.value;
        flags = range1.start.flags;
        end.timescale = range1.start.timescale;
        epoch = range1.start.epoch;
        value = range1.duration.value;
        timescale = range1.duration.timescale;
        v24 = range1.duration.flags;
        v25 = range1.duration.epoch;
        CMTimeRangeMakeFromDictionary(&range1, v19);
        v88 = range1.start.value;
        v89 = range1.start.timescale;
        if ((flags & 1) == 0)
        {
          goto LABEL_66;
        }

        v26 = v24;
        if ((v24 & 1) == 0)
        {
          goto LABEL_66;
        }

        if (v25)
        {
          goto LABEL_66;
        }

        if (value < 0)
        {
          goto LABEL_66;
        }

        v27 = range1.start.flags;
        if ((range1.start.flags & 1) == 0)
        {
          goto LABEL_66;
        }

        v28 = range1.duration.flags;
        if ((range1.duration.flags & 1) == 0 || range1.duration.epoch || range1.duration.value < 0)
        {
          goto LABEL_66;
        }

        v29 = range1.duration.timescale;
        range2.duration.epoch = 0;
        range1.start.value = end.value;
        range1.start.timescale = end.timescale;
        range1.start.flags = flags;
        range1.start.epoch = epoch;
        range1.duration.value = value;
        range1.duration.timescale = timescale;
        range1.duration.flags = v26;
        range1.duration.epoch = 0;
        OUTLINED_FUNCTION_9_37();
        v70 = v30;
        v72 = v15;
        range2.start.epoch = v30;
        range2.duration.value = v31;
        range2.duration.timescale = v29;
        range2.duration.flags = v28;
        v68 = value;
        v32 = epoch;
        v33 = v31;
        v35 = v34;
        if (CMTimeRangeEqual(&range1, &range2))
        {
          ++v16;
          v15 = v72 + 1;
          v17 = theArray;
          v14 = v74;
          v6 = v67;
        }

        else
        {
          OUTLINED_FUNCTION_2_93();
          range1.start.epoch = v32;
          OUTLINED_FUNCTION_9_37();
          range2.start.epoch = v70;
          if (CMTimeCompare(&range1.start, &range2.start) < 0)
          {
            v60 = v28;
            memset(&range2, 0, 24);
            if (v13)
            {
              time2.epoch = v74;
              time1.value = end.value;
              time1.timescale = end.timescale;
              time1.flags = flags;
              time1.epoch = v32;
              time2.value = v90;
              time2.timescale = v91;
              time2.flags = v13;
              CMTimeMaximum(&range1.start, &time1, &time2);
              v86 = range1.start.value;
              v36 = range1.start.flags;
              v87 = range1.start.timescale;
              v37 = range1.start.epoch;
            }

            else
            {
              v86 = end.value;
              v87 = end.timescale;
              v36 = flags;
              v37 = v32;
            }

            time1.value = v88;
            time1.timescale = v89;
            time1.flags = v27;
            time1.epoch = v70;
            OUTLINED_FUNCTION_2_93();
            range1.start.epoch = v32;
            range1.duration.value = v68;
            range1.duration.timescale = timescale;
            range1.duration.flags = v38;
            range1.duration.epoch = 0;
            CMTimeClampToRange(&range2.start, &time1, &range1);
            range1.start.value = v86;
            range1.start.timescale = v87;
            range1.start.flags = v36;
            range1.start.epoch = v37;
            time1 = range2.start;
            CMTimeRangeFromTimeToTime(&v84, &range1.start, &time1);
            range1 = v84;
            v39 = CMTimeRangeCopyAsDictionary(&range1, allocator);
            if (!v39)
            {
LABEL_66:
              OUTLINED_FUNCTION_239();
              v4 = FigSignalErrorAtGM();
              v41 = 0;
              DerivedStorage = v76;
              v7 = MEMORY[0x1E695E480];
              v42 = v66;
              goto LABEL_46;
            }

            v40 = v39;
            CFArrayAppendValue(v66, v39);
            CFRelease(v40);
            v28 = v60;
          }

          OUTLINED_FUNCTION_2_93();
          range1.start.epoch = v32;
          range1.duration.value = v68;
          range1.duration.timescale = timescale;
          range1.duration.flags = v35;
          range1.duration.epoch = 0;
          CMTimeRangeGetEnd(&range2.start, &range1);
          OUTLINED_FUNCTION_8_35();
          range1.start.epoch = v70;
          range1.duration.value = v33;
          range1.duration.timescale = v29;
          range1.duration.flags = v28;
          range1.duration.epoch = 0;
          CMTimeRangeGetEnd(&time1, &range1);
          v15 = v72;
          v6 = v67;
          if (CMTimeCompare(&range2.start, &time1) <= 0)
          {
            v90 = v64;
            v13 = v62;
            v91 = v63;
            ++v16;
            v14 = v61;
          }

          else
          {
            OUTLINED_FUNCTION_8_35();
            range1.start.epoch = v70;
            range1.duration.value = v33;
            range1.duration.timescale = v29;
            range1.duration.flags = v28;
            range1.duration.epoch = 0;
            CMTimeRangeGetEnd(&range2.start, &range1);
            v90 = range2.start.value;
            v13 = range2.start.flags;
            v91 = range2.start.timescale;
            v14 = range2.start.epoch;
            v15 = v72 + 1;
          }

          v17 = theArray;
        }
      }

      if (v16 >= CFArrayGetCount(v6))
      {
        break;
      }
    }
  }

  v42 = v66;
  if (v16 >= CFArrayGetCount(v6))
  {
LABEL_44:
    v41 = CFRetain(v66);
    v4 = 0;
    goto LABEL_45;
  }

  while (1)
  {
    v43 = CFArrayGetValueAtIndex(v6, v16);
    if (v13)
    {
      break;
    }

    CFArrayAppendValue(v66, v43);
LABEL_43:
    if (++v16 >= CFArrayGetCount(v6))
    {
      goto LABEL_44;
    }
  }

  CMTimeRangeMakeFromDictionary(&v84, v43);
  *&range2.start.value = *&v84.start.value;
  range2.start.epoch = v84.start.epoch;
  end.value = v90;
  end.timescale = v91;
  end.flags = v13;
  end.epoch = v14;
  CMTimeMaximum(&time1, &range2.start, &end);
  range2 = v84;
  CMTimeRangeGetEnd(&time2, &range2);
  range2.start = time1;
  end = time2;
  CMTimeRangeFromTimeToTime(&range1, &range2.start, &end);
  range2 = range1;
  v44 = CMTimeRangeCopyAsDictionary(&range2, allocator);
  if (v44)
  {
    v45 = v44;
    CFArrayAppendValue(v66, v44);
    CFRelease(v45);
    v90 = v64;
    v91 = v63;
    v13 = v62;
    v14 = v61;
    goto LABEL_43;
  }

  OUTLINED_FUNCTION_239();
  v4 = FigSignalErrorAtGM();
  v41 = 0;
LABEL_45:
  DerivedStorage = v76;
  v7 = MEMORY[0x1E695E480];
LABEL_46:
  CFRelease(v42);
  if (v4)
  {
LABEL_72:
    v48 = v41;
    v5 = 0;
    goto LABEL_58;
  }

LABEL_47:
  v46 = sad_ensureDuration(a1, 0);
  if (v46)
  {
    v4 = v46;
    goto LABEL_72;
  }

  v73 = *MEMORY[0x1E6960CC0];
  *&v84.start.value = *MEMORY[0x1E6960CC0];
  v71 = *(MEMORY[0x1E6960CC0] + 16);
  v84.start.epoch = v71;
  *&range1.start.value = *(DerivedStorage + 344);
  range1.start.epoch = *(DerivedStorage + 360);
  CMTimeRangeMake(&v78, &v84.start, &range1.start);
  if (CFArrayGetCount(v41) < 1)
  {
LABEL_53:
    v50 = cf;
    v51 = CMBaseObjectGetDerivedStorage();
    *&v84.start.value = v73;
    v84.start.epoch = v71;
    sad_getSumOfTimeDurationFromTimeRanges(v50, &v84.start);
    v52 = v51[48];
    v53 = v51[39];
    v54 = v51[36];
    v55 = v51[26];
    *&range1.start.value = *&v84.start.value;
    range1.start.epoch = v84.start.epoch;
    FigStreamingAssetProgressMonitorUpdateMediaDownloadedTimeAndBytes(v52, v53, v54, v55, &range1.start.value);
    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    v57 = *(v76 + 432);
    v58 = cf;
    *(v76 + 432) = cf;
    *(v76 + 440) = UpTimeNanoseconds;
    if (v58)
    {
      CFRetain(v58);
    }

    v48 = v41;
    if (v57)
    {
      CFRelease(v57);
    }

    v5 = 0;
    v4 = 0;
  }

  else
  {
    v47 = 0;
    v75 = *v7;
    while (1)
    {
      v48 = v41;
      CFArrayGetValueAtIndex(v41, v47);
      v5 = CFDictionaryCreateMutable(v75, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (!v5)
      {
        break;
      }

      FigCFDictionarySetValue();
      FigCFDictionarySetValue();
      FigCFDictionarySetValue();
      FigCFDictionarySetValue();
      v84 = v78;
      FigCFDictionarySetCMTimeRange();
      CMNotificationCenterGetDefaultLocalCenter();
      v49 = FigDispatchAsyncPostNotification();
      if (v49)
      {
        goto LABEL_68;
      }

      CFRelease(v5);
      ++v47;
      v41 = v48;
      if (v47 >= CFArrayGetCount(v48))
      {
        goto LABEL_53;
      }
    }

    v49 = FigSignalErrorAtGM();
LABEL_68:
    v4 = v49;
  }

LABEL_58:
  if (v48)
  {
    CFRelease(v48);
  }

LABEL_60:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return v4;
}

uint64_t sad_highSpeedHighPowerTransportChangedCallback(uint64_t a1, uint64_t a2, char a3)
{
  result = CMBaseObjectGetDerivedStorage();
  if (!*(result + 64))
  {
    *(result + 488) = a3;
  }

  return result;
}

void sad_bossFilteredAlternatesChangedCallback(uint64_t a1, const void *a2, const __CFArray *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!FigCFEqual() || !*(DerivedStorage + 32))
  {
    return;
  }

  v6 = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v27 = 0;
  v25 = *MEMORY[0x1E6960CC0];
  *&v26.value = *MEMORY[0x1E6960CC0];
  v7 = *(MEMORY[0x1E6960CC0] + 16);
  v26.epoch = v7;
  if (!*(v6 + 32) || (v8 = v6, !*(v6 + 312)) && (!a3 || CFArrayGetCount(a3) <= 0))
  {
    OUTLINED_FUNCTION_243();
    goto LABEL_33;
  }

  if ((*(v8 + 24) - 6) <= 0xFFFFFFFC)
  {
    value = *(v8 + 312);
    if (value && !*(v8 + 392) || (context.start.value = 0, v33.length = CFArrayGetCount(a3), v33.location = 0, CFArrayApplyFunction(a3, v33, sad_getMaxBandwidthAlternateApplierFunc, &context), (value = context.start.value) != 0))
    {
      IsAudioOnly = FigAlternateIsAudioOnly(value);
      v11 = CMBaseObjectGetDerivedStorage();
      v32 = 0;
      v12 = *(MEMORY[0x1E6960CA8] + 16);
      *&context.start.value = *MEMORY[0x1E6960CA8];
      *&context.start.epoch = v12;
      *&context.duration.timescale = *(MEMORY[0x1E6960CA8] + 32);
      *&v30.value = v25;
      v30.epoch = v7;
      v13 = sad_copyLoadedTimeRanges(v11, &v32);
      v14 = v32;
      if (!v13)
      {
        if (v32)
        {
          Count = CFArrayGetCount(v32);
          v14 = v32;
          if (Count >= 1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v32, 0);
            CMTimeRangeMakeFromDictionary(&context, ValueAtIndex);
            range = context;
            CMTimeRangeGetEnd(&v30, &range);
            v14 = v32;
          }
        }

        v26 = v30;
      }

      if (v14)
      {
        CFRelease(v14);
      }

      if (v13)
      {
        goto LABEL_35;
      }

      v17 = *(v8 + 32);
      v18 = *(v8 + 296);
      v19 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (!v19)
      {
        goto LABEL_30;
      }

      *&context.start.value = *&v26.value;
      context.start.epoch = v26.epoch;
      *&range.start.value = v25;
      range.start.epoch = v7;
      v20 = v19(v17, value, v18, 0, IsAudioOnly, 17, &context, &range, 0, v8 + 192, &v27, v8 + 80);
      if (!v20)
      {
        v21 = *(v8 + 312);
        if (v21 != value)
        {
          *(v8 + 312) = value;
          CFRetain(value);
          if (v21)
          {
            CFRelease(v21);
          }
        }

        goto LABEL_24;
      }

LABEL_34:
      v13 = v20;
      goto LABEL_35;
    }

    OUTLINED_FUNCTION_243();
LABEL_33:
    v20 = FigSignalErrorAtGM();
    goto LABEL_34;
  }

LABEL_24:
  if (*(v8 + 92) > 1u)
  {
    v13 = 0;
    goto LABEL_35;
  }

  *(v8 + 92) = 2;
  FigBytePumpGetFigBaseObject(*(v8 + 32));
  if (*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    v22 = OUTLINED_FUNCTION_308();
    v24 = v23(v22);
    if (v24)
    {
      if (v24 == -12783)
      {
        v13 = 0;
      }

      else
      {
        v13 = v24;
      }

      goto LABEL_35;
    }

    v20 = sad_durationChanged(a2, cf);
    goto LABEL_34;
  }

LABEL_30:
  v13 = 4294954514;
LABEL_35:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v13)
  {
    sad_cleanupDownloadWithOSStatus(a2, v13);
  }
}

void sad_bossMediaSelectionArrayChangedCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  CMBaseObjectGetDerivedStorage();
  if (!FigCFEqual())
  {
    return;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a3)
  {
    return;
  }

  v6 = DerivedStorage;
  if (*(DerivedStorage + 296))
  {
    return;
  }

  cf = 0;
  v7 = FigAutomaticMediaSelectionCreateSelectedMediaArrayForCriteria(a3, *(DerivedStorage + 288), *(DerivedStorage + 280), 0, 0, 0, &cf);
  v8 = cf;
  if (!v7)
  {
    if (cf)
    {
      goto LABEL_6;
    }

    OUTLINED_FUNCTION_239();
    v7 = FigSignalErrorAtGM();
    v8 = cf;
    if (v7)
    {
      goto LABEL_8;
    }

    if (cf)
    {
LABEL_6:
      v9 = CFRetain(v8);
      v8 = cf;
    }

    else
    {
      v9 = 0;
    }

    v7 = 0;
    *(v6 + 296) = v9;
  }

LABEL_8:
  if (v8)
  {
    CFRelease(v8);
  }

  if (v7 || (CMNotificationCenterGetDefaultLocalCenter(), v7 = FigDispatchAsyncPostNotification(), v7))
  {
    sad_cleanupDownloadWithOSStatus(a2, v7);
  }
}

uint64_t sad_addStableRenditionIDFilterForMediaType(uint64_t a1, unsigned int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  result = FigStreamAlternateGetPersistentIDForMediaTypeInMediaSelectionArray(*(DerivedStorage + 288), a2);
  if (result)
  {
    v5 = result;
    if (a2 == 1936684398 && FigAlternateMightHaveDummyAudioGroup(*(DerivedStorage + 312)))
    {
      return 0;
    }

    StableStreamIdentifierForMediaSubstream = FigAlternateGetStableStreamIdentifierForMediaSubstream(*(DerivedStorage + 312), a2, v5);
    if (StableStreamIdentifierForMediaSubstream)
    {
      result = FigAlternateAllowListWithStableRenditionIDFilterCreate(*(DerivedStorage + 8), v5, StableStreamIdentifierForMediaSubstream, a2, 0x374u, &cf);
      if (!result)
      {
        result = FigAlternateSelectionBossAddFilter(*(DerivedStorage + 40), cf);
        if (!result)
        {
          if (cf)
          {
            CFRelease(cf);
            return 0;
          }
        }
      }
    }

    else
    {
      OUTLINED_FUNCTION_239();

      return FigSignalErrorAtGM();
    }
  }

  return result;
}

CFTypeRef sad_copyPropertyDispatch(uint64_t a1)
{
  v8 = 0;
  v2 = *(a1 + 8);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 64))
  {
    result = 0;
    v6 = -16651;
    goto LABEL_9;
  }

  v4 = DerivedStorage;
  if (!CFEqual(@"AssetDownloaderProperty_Status", v2))
  {
    if (CFEqual(@"AssetDownloaderProperty_Asset", v2))
    {
      result = v4[2];
    }

    else
    {
      if (CFEqual(@"AssetDownloaderProperty_LoadedTimeRanges", v2))
      {
        v6 = sad_copyLoadedTimeRanges(v4, &v8);
        result = v8;
        goto LABEL_9;
      }

      if (CFEqual(@"AssetDownloaderProperty_ResolvedSelectedMediaArray", v2))
      {
        result = v4[37];
        if (!result)
        {
          goto LABEL_8;
        }
      }

      else if (CFEqual(@"AssetDownloaderProperty_DestinationURL", v2))
      {
        result = v4[9];
      }

      else
      {
        if (CFEqual(@"AssetDownloaderProperty_DownloadedBytes", v2))
        {
          result = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, v4 + 25);
          goto LABEL_8;
        }

        if (CFEqual(@"AssetDownloaderProperty_ClientBundleIdentifier", v2))
        {
          result = v4[33];
          if (!result)
          {
            goto LABEL_8;
          }
        }

        else if (CFEqual(@"AssetDownloaderProperty_HasAccessToDestinationURL", v2))
        {
          v7 = MEMORY[0x1E695E4D0];
          if (!v4[23])
          {
            v7 = MEMORY[0x1E695E4C0];
          }

          result = *v7;
          if (!*v7)
          {
            goto LABEL_8;
          }
        }

        else if (CFEqual(@"AssetDownloaderProperty_SelectedAlternate", v2))
        {
          result = v4[39];
          if (!result)
          {
            goto LABEL_8;
          }
        }

        else if (CFEqual(@"AssetDownloaderProperty_SelectedMediaArray", v2))
        {
          result = v4[36];
          if (!result)
          {
            goto LABEL_8;
          }
        }

        else
        {
          if (!CFEqual(@"AssetDownloaderProperty_FinalError", v2))
          {
            result = 0;
            v6 = -12784;
            goto LABEL_9;
          }

          result = v4[52];
          if (!result)
          {
            goto LABEL_8;
          }
        }
      }
    }

    result = CFRetain(result);
LABEL_8:
    v6 = 0;
    goto LABEL_9;
  }

  result = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, v4 + 3);
  if (result)
  {
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_243();
  v6 = FigSignalErrorAtGM();
  result = 0;
LABEL_9:
  *(a1 + 32) = v6;
  *(a1 + 16) = result;
  return result;
}

void sad_startDispatch()
{
  if (*(OUTLINED_FUNCTION_10_37() + 64))
  {
    OUTLINED_FUNCTION_239();
    v12 = FigSignalErrorAtGM();
    goto LABEL_9;
  }

  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_6_61();
  if (!(!v4 & v3))
  {
    v5 = v2;
    *(v2 + 24) = 1;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (!*(DerivedStorage + 328))
    {
      v7 = DerivedStorage;
      v8 = *MEMORY[0x1E695E480];
      Current = CFAbsoluteTimeGetCurrent();
      v10 = CFDateCreate(v8, Current);
      *(v7 + 328) = v10;
      if (!v10)
      {
        OUTLINED_FUNCTION_239();
        v11 = FigSignalErrorAtGM();
        if (v11)
        {
          goto LABEL_10;
        }
      }
    }

    if (*(v5 + 176))
    {
      goto LABEL_6;
    }

    v12 = sad_startOrResumeDownload(v1);
LABEL_9:
    v11 = v12;
    if (!v12)
    {
      goto LABEL_7;
    }

LABEL_10:
    sad_cleanupDownloadWithOSStatus(v1, v11);
    goto LABEL_7;
  }

LABEL_6:
  LODWORD(v11) = 0;
LABEL_7:
  *(v0 + 8) = v11;
}

void sad_pauseDispatch(uint64_t a1)
{
  v2 = *a1;
  if (*(CMBaseObjectGetDerivedStorage() + 64))
  {
    OUTLINED_FUNCTION_243();
    v5 = FigSignalErrorAtGM();
    if (!v5)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 24) != 1)
  {
    LODWORD(v5) = 0;
    goto LABEL_18;
  }

  v4 = DerivedStorage;
  *(DerivedStorage + 176) = 0;
  *(DerivedStorage + 448) = FigGetUpTimeNanoseconds();
  if (*(v4 + 370))
  {
    sad_stopDownloading(v2);
    goto LABEL_5;
  }

  if (*(v4 + 32))
  {
    for (i = 0; i != 3; ++i)
    {
      if ((*(v4 + 192) >> i))
      {
        v7 = *(v4 + 32);
        v8 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (!v8)
        {
          v5 = 4294954514;
          goto LABEL_17;
        }

        v9 = v8(v7, i, 1);
        if (v9)
        {
          goto LABEL_25;
        }
      }
    }
  }

  if (!*(v4 + 184))
  {
    goto LABEL_5;
  }

  v10 = CMBaseObjectGetDerivedStorage();
  v11 = malloc_type_calloc(1uLL, 0x10uLL, 0x1020040EDED9539uLL);
  if (v11)
  {
    v12 = v11;
    if (v2)
    {
      v13 = CFRetain(v2);
    }

    else
    {
      v13 = 0;
    }

    *v12 = v13;
    v12[1] = 5000000000;
    v14 = dispatch_time(0, 5000000000);
    dispatch_after_f(v14, *v10, v12, sad_stopDownloadingAfterDelayDispatch);
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_243();
  v9 = FigSignalErrorAtGM();
  if (v9)
  {
LABEL_25:
    v5 = v9;
LABEL_17:
    sad_cleanupDownloadWithOSStatus(v2, v5);
    goto LABEL_18;
  }

LABEL_5:
  mach_absolute_time();
  LODWORD(v5) = 0;
  *(v4 + 504) += FigHostTimeToNanoseconds() / 1000000;
  *(v4 + 24) = 2;
LABEL_18:
  *(a1 + 8) = v5;
}

void sad_pauseForPlaybackDispatch()
{
  v2 = OUTLINED_FUNCTION_10_37();
  if (*(v2 + 64))
  {
    OUTLINED_FUNCTION_239();
    v3 = FigSignalErrorAtGM();
    if (v3)
    {
      sad_cleanupDownloadWithOSStatus(v1, v3);
    }
  }

  else
  {
    if (!*(v2 + 176))
    {
      *(v2 + 176) = 1;
      sad_stopDownloading(v1);
    }

    LODWORD(v3) = 0;
  }

  *(v0 + 8) = v3;
}

void sad_resumeAfterPlaybackDispatch()
{
  v2 = OUTLINED_FUNCTION_10_37();
  if (*(v2 + 64))
  {
    OUTLINED_FUNCTION_239();
    v4 = FigSignalErrorAtGM();
    if (v4)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v3 = v2;
    if (*(v2 + 176))
    {
      *(v2 + 176) = 0;
      if (*(v2 + 24) == 1)
      {
        v5 = sad_startOrResumeDownload(v1);
        if (v5)
        {
          v4 = v5;
LABEL_11:
          sad_cleanupDownloadWithOSStatus(*v0, v4);
          goto LABEL_7;
        }
      }

      if (*(v3 + 179))
      {
        sad_loadMetadataGuts();
      }
    }

    LODWORD(v4) = 0;
  }

LABEL_7:
  *(v0 + 8) = v4;
}

uint64_t sad_loadMetadataGuts()
{
  result = CMBaseObjectGetDerivedStorage();
  if (!*(result + 178) && !*(result + 92))
  {

    return sad_requestPump(result);
  }

  return result;
}

uint64_t FigStreamingAssetDownloaderCreateWithURL_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigStreamingAssetDownloaderCreateWithURL_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigStreamingAssetDownloaderCreateWithURL_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigStreamingAssetDownloaderCreateWithURL_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigStreamingAssetDownloaderCreateWithAsset_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigStreamingAssetDownloaderCreateWithAsset_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigStreamingAssetDownloaderCreateWithAsset_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigStreamingAssetDownloaderCreateWithAsset_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigStreamingAssetDownloaderCreateWithAsset_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigStreamingAssetDownloaderCreateWithAsset_cold_6(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sad_ensureDuration_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sad_cleanupDownload_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sad_copyLoadedTimeRanges_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sad_copyLoadedTimeRanges_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sad_openPumpSchedulerCallback_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sad_openPumpSchedulerCallback_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sad_openPumpSchedulerCallback_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sad_stopDownloading_cold_1(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 424);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 424) = 0;
  }

  sad_copyLoadedTimeRanges(a1, (a1 + 424));
  result = sad_invalidateAndReleasePump(a2, *(a1 + 176) == 0);
  *(a1 + 92) = 0;
  *(a1 + 196) = 0;
  return result;
}

BOOL sad_pumpTransferCallback_cold_1(const void *a1, uint64_t a2)
{
  v4 = FigSignalErrorAtGM();
  if (a1)
  {
    CFRelease(a1);
  }

  return !a2 || v4 == 0;
}

uint64_t sad_copyAssetDownloaderFromRetainProxy_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sad_pumpTransferCallbackDispatch_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sad_pumpTransferCallbackDispatch_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sad_pumpTransferCallbackDispatch_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sad_pumpTransferCallbackDispatch_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sad_pumpTransferCallbackDispatch_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sad_pumpTransferCallbackDispatch_cold_6(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void sad_getCFIndexForKeyFromPumpStoreBag_cold_1(uint64_t *a1, CFTypeRef cf)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (v4)
    {
      v4(v3, 0x1F0B64618, 0x1F0B1C5B8, cf, 0);
    }
  }

  CFRelease(cf);
}

uint64_t sad_getCFIndexForKeyFromPumpStoreBag_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sad_setPropertyDispatch_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sad_setPropertyDispatch_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sad_setPropertyDispatch_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sad_setPropertyDispatch_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sad_setPropertyDispatch_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sad_setPropertyDispatch_cold_6(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sad_setPropertyDispatch_cold_7(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sad_setPropertyDispatch_cold_8(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sad_setPropertyDispatch_cold_9(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sad_setPropertyDispatch_cold_10(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void FigCSSParserNodeCreate_cold_1(const void *a1, _DWORD *a2)
{
  *a2 = FigSignalErrorAtGM();

  CFRelease(a1);
}

uint64_t FigCSSParserNodeCreate_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSParserNodeCreate_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSParserNodeGetNodeType_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSParserNodeGetNodeType_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSAtRuleParserNodeSetName_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_95();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSAtRuleParserNodeSetName_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSAtRuleParserNodeSetName_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSAtRuleParserNodeSetPrelude_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_95();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSAtRuleParserNodeSetPrelude_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSAtRuleParserNodeSetPrelude_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSAtRuleParserNodeSetSimpleBlock_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_95();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSAtRuleParserNodeSetSimpleBlock_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSAtRuleParserNodeSetSimpleBlock_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSAtRuleParserNodeSetSimpleBlock_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSQualifiedRuleParserNodeCopyPrelude_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_95();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSQualifiedRuleParserNodeCopyPrelude_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSQualifiedRuleParserNodeSetPrelude_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_95();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSQualifiedRuleParserNodeSetPrelude_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSQualifiedRuleParserNodeSetPrelude_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSQualifiedRuleParserNodeCopySimpleBlock_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_95();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSQualifiedRuleParserNodeCopySimpleBlock_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSQualifiedRuleParserNodeCopySimpleBlock_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSQualifiedRuleParserNodeCopySimpleBlock_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSQualifiedRuleParserNodeSetSimpleBlock_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_95();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSQualifiedRuleParserNodeSetSimpleBlock_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSQualifiedRuleParserNodeSetSimpleBlock_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSQualifiedRuleParserNodeSetSimpleBlock_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSDeclarationParserNodeCopyName_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_95();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSDeclarationParserNodeCopyName_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSDeclarationParserNodeCopyName_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSDeclarationParserNodeCopyName_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSDeclarationParserNodeSetName_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_95();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSDeclarationParserNodeSetName_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSDeclarationParserNodeSetName_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSDeclarationParserNodeCopyValue_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_95();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSDeclarationParserNodeCopyValue_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSDeclarationParserNodeCopyValue_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSDeclarationParserNodeCopyValue_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSDeclarationParserNodeSetValue_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_95();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSDeclarationParserNodeSetValue_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSDeclarationParserNodeSetValue_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSComponentValueParserNodeGetType_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_95();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSComponentValueParserNodeGetType_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSComponentValueParserNodeGetType_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSComponentValueParserNodeCopyPreservedToken_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_95();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSComponentValueParserNodeCopyPreservedToken_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSComponentValueParserNodeCopyPreservedToken_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSComponentValueParserNodeCopyPreservedToken_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSComponentValueParserNodeCopyPreservedToken_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSComponentValueParserNodeSetPreservedToken_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_95();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSComponentValueParserNodeSetPreservedToken_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSComponentValueParserNodeSetPreservedToken_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSComponentValueParserNodeCopyFunctionNode_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_95();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSComponentValueParserNodeCopyFunctionNode_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSComponentValueParserNodeCopyFunctionNode_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSComponentValueParserNodeCopyFunctionNode_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSComponentValueParserNodeCopyFunctionNode_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSComponentValueParserNodeSetFunctionNode_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_95();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSComponentValueParserNodeSetFunctionNode_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSComponentValueParserNodeSetFunctionNode_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSComponentValueParserNodeCopySimpleBlock_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_95();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSComponentValueParserNodeCopySimpleBlock_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSComponentValueParserNodeCopySimpleBlock_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSComponentValueParserNodeCopySimpleBlock_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSComponentValueParserNodeCopySimpleBlock_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSComponentValueParserNodeSetSimpleBlock_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_95();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSComponentValueParserNodeSetSimpleBlock_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSComponentValueParserNodeSetSimpleBlock_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSComponentValueParserNodeSetSimpleBlock_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSFunctionParserNodeCopyName_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_95();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSFunctionParserNodeCopyName_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSFunctionParserNodeCopyName_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSFunctionParserNodeCopyName_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSFunctionParserNodeSetName_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_95();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSFunctionParserNodeSetName_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSFunctionParserNodeSetName_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSFunctionParserNodeCopyValue_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_95();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSFunctionParserNodeCopyValue_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSFunctionParserNodeCopyValue_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSFunctionParserNodeCopyValue_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSFunctionParserNodeSetValue_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_95();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSFunctionParserNodeSetValue_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSFunctionParserNodeSetValue_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSSimpleBlockParserNodeCopyAssociatedToken_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_95();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSSimpleBlockParserNodeCopyAssociatedToken_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSSimpleBlockParserNodeCopyAssociatedToken_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSSimpleBlockParserNodeCopyAssociatedToken_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSSimpleBlockParserNodeSetAssociatedToken_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_95();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSSimpleBlockParserNodeSetAssociatedToken_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSSimpleBlockParserNodeSetAssociatedToken_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSSimpleBlockParserNodeCopyValue_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_95();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSSimpleBlockParserNodeCopyValue_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSSimpleBlockParserNodeCopyValue_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSSimpleBlockParserNodeCopyValue_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSSimpleBlockParserNodeSetValue_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_95();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSSimpleBlockParserNodeSetValue_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSSimpleBlockParserNodeSetValue_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigByteStreamRemoteCreateFromByteStreamDetails(uint64_t a1, void *a2, void *a3)
{
  if (qword_1ED4CACB0 != -1)
  {
    dispatch_once(&qword_1ED4CACB0, &__block_literal_global_41);
  }

  v5 = _MergedGlobals_67;
  if (_MergedGlobals_67)
  {
    return v5;
  }

  if (!a2)
  {
    goto LABEL_35;
  }

  v24 = a3;
  FigXPCMessageCopyCFURL();
  v6 = xpc_dictionary_get_BOOL(a2, "Writable");
  v7 = xpc_dictionary_get_BOOL(a2, "UseFigReadCache");
  v8 = xpc_dictionary_get_BOOL(a2, "EnableFigReadCache");
  v9 = xpc_dictionary_get_BOOL(a2, "EntireLengthAvailable");
  int64 = xpc_dictionary_get_int64(a2, "EntireLength");
  uint64 = xpc_dictionary_get_uint64(a2, "ObjectID");
  CMByteStreamGetClassID();
  v12 = CMDerivedObjectCreate();
  if (v12)
  {
    return v12;
  }

  v23 = v8;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (xpc_dictionary_get_BOOL(a2, "ReadsMayBlockIndefinitely"))
  {
    SecondaryConnection = FigXPCRemoteClientCreateSecondaryConnection();
  }

  else
  {
    SecondaryConnection = FigXPCRemoteClientCopyPrimaryConnection();
  }

  v5 = SecondaryConnection;
  if (SecondaryConnection)
  {
    return v5;
  }

  *(DerivedStorage + 8) = CFRetain(0);
  *(DerivedStorage + 16) = 0;
  *(DerivedStorage + 169) = v6;
  *(DerivedStorage + 168) = v9;
  *(DerivedStorage + 160) = int64;
  *DerivedStorage = uint64;
  if (!xpc_dictionary_get_value(a2, "FileDescriptor"))
  {
    v12 = FigXPCConnectionCopyMemoryRecipientForConnectedProcess();
    if (!v12)
    {
      v12 = FigMemoryRecipientCopyBlockBufferFromXPCMessage();
      if (!v12)
      {
        goto LABEL_30;
      }
    }

    return v12;
  }

  v15 = xpc_dictionary_dup_fd(a2, "FileDescriptor");
  if (v15 == -1)
  {
LABEL_35:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    return FigSignalErrorAtGM();
  }

  v16 = v15;
  CMBaseObjectGetDerivedStorage();
  v17 = FigFileWrapDarwinFileDesc();
  if (v17)
  {
    v5 = v17;
    close(v16);
  }

  else
  {
    if (v6)
    {
      ByteStreamForOpenFileAssumingOwnership = FigByteStreamCreateFromOpenFileAssumingOwnership();
    }

    else
    {
      FigGetDefaultManagedFilePool();
      ByteStreamForOpenFileAssumingOwnership = FigManagedFilePoolCreateByteStreamForOpenFileAssumingOwnership();
    }

    if (ByteStreamForOpenFileAssumingOwnership)
    {
      v5 = ByteStreamForOpenFileAssumingOwnership;
    }

    else
    {
      v5 = 0;
    }
  }

  FigFileForkClose();
  if (!v5)
  {
    if (v7 && !*(DerivedStorage + 169))
    {
      v19 = FigCachedFileByteStreamCreateFromByteStream(0, 0, *MEMORY[0x1E695E480], (DerivedStorage + 24));
      if (v19)
      {
        return v19;
      }

      if (v23)
      {
        CMBaseObject = CMByteStreamGetCMBaseObject();
        v21 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v21)
        {
          v21(CMBaseObject, 0x1F0B330B8, *MEMORY[0x1E695E4D0]);
        }
      }

      CMNotificationCenterGetDefaultLocalCenter();
      v19 = FigNotificationCenterAddWeakListener();
      if (v19)
      {
        return v19;
      }
    }

    else
    {
      *(DerivedStorage + 24) = CFRetain(0);
    }

LABEL_30:
    v19 = FigXPCRemoteClientAssociateObject();
    if (!v19)
    {
      if (!FigServer_IsServerProcess() || (v19 = FigXPCConnectionSetCustomServerTimeoutPerConnection(), !v19))
      {
        v5 = 0;
        *v24 = 0;
        return v5;
      }
    }

    return v19;
  }

  return v5;
}

const void *remoteByteStream_localCachedFileByteStream_CacheChangeNotification()
{
  result = FigCFDictionaryGetValue();
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    result = CFBooleanGetTypeID();
    if (v2 == result)
    {
      CMBaseObject = CMByteStreamGetCMBaseObject();
      VTable = CMBaseObjectGetVTable();
      v5 = *(VTable + 8);
      result = (VTable + 8);
      v6 = *(v5 + 56);
      if (v6)
      {

        return v6(CMBaseObject, 0x1F0B330B8, v1);
      }
    }
  }

  return result;
}

uint64_t FigByteStreamRemoteCreateWithURL(uint64_t a1, const __CFURL *a2, unsigned int a3, void *a4)
{
  v15[0] = 0;
  if (!a2)
  {
    fig_log_get_emitter();
    v9 = FigSignalErrorAtGM();
    goto LABEL_17;
  }

  if (qword_1ED4CACB0 != -1)
  {
    dispatch_once(&qword_1ED4CACB0, &__block_literal_global_41);
  }

  v8 = _MergedGlobals_67;
  if (!_MergedGlobals_67)
  {
    v9 = FigXPCRemoteClientCopyMemoryRecipient();
    if (!v9)
    {
      v9 = FigXPCCreateBasicMessage();
      if (!v9)
      {
        v9 = FigXPCMessageSetCFURL();
        if (!v9)
        {
          xpc_dictionary_set_uint64(0, "FileOpenOptions", a3);
          v15[1] = 0;
          if (CFURLHasDirectoryPath(a2))
          {
            v10 = FigSandboxRegisterDirectoryURLWithProcessAndCopyRegistration();
          }

          else
          {
            v10 = FigSandboxRegisterURLWithProcessAndCopyRegistration();
          }

          v8 = v10;
          if (!v10)
          {
            v11 = FigXPCRemoteClientSendSyncMessageCreatingReply();
            if (v11)
            {
              v8 = v11;
            }

            else
            {
              value = xpc_dictionary_get_value(0, "ByteStreamDetails");
              v8 = FigByteStreamRemoteCreateFromByteStreamDetails(a1, value, v15);
              v13 = v15[0];
              if (v8)
              {
                if (v15[0])
                {
                  CFRelease(v15[0]);
                }
              }

              else
              {
                *(CMBaseObjectGetDerivedStorage() + 152) = 0;
                *a4 = v13;
              }
            }
          }

          goto LABEL_15;
        }
      }
    }

LABEL_17:
    v8 = v9;
  }

LABEL_15:
  FigXPCRelease();
  FigXPCRelease();
  return v8;
}

uint64_t FigByteStreamRemoteCreateWithPlaybackProcessObjectID(uint64_t a1, int a2, CFTypeRef *a3)
{
  v10 = 0;
  if (!a1)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    v7 = FigSignalErrorAtGM();
    goto LABEL_12;
  }

  if (qword_1ED4CACB0 != -1)
  {
    dispatch_once(&qword_1ED4CACB0, &__block_literal_global_41);
  }

  v6 = _MergedGlobals_67;
  if (!_MergedGlobals_67)
  {
    v7 = FigXPCRemoteClientCopyMemoryRecipient();
    if (!v7)
    {
      v7 = FigXPCCreateBasicMessage();
      if (!v7)
      {
        xpc_dictionary_set_uint64(0, *MEMORY[0x1E69615A0], a1);
        xpc_dictionary_set_int64(0, "OtherProcessPID", a2);
        v7 = FigXPCRemoteClientSendSyncMessageCreatingReply();
        if (!v7)
        {
          value = xpc_dictionary_get_value(0, "ByteStreamDetails");
          v6 = FigByteStreamRemoteCreateFromByteStreamDetails(*MEMORY[0x1E695E480], value, &v10);
          if (v6)
          {
            if (v10)
            {
              CFRelease(v10);
            }
          }

          else
          {
            *a3 = v10;
          }

          goto LABEL_10;
        }
      }
    }

LABEL_12:
    v6 = v7;
  }

LABEL_10:
  FigXPCRelease();
  FigXPCRelease();
  return v6;
}

uint64_t remoteByteStream_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  v18 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a4)
  {
    v9 = DerivedStorage;
    ObjectID = frbs_GetObjectID(a1, &v18);
    if (ObjectID)
    {
      return ObjectID;
    }

    if (*(v9 + 24) && (CFEqual(a2, *MEMORY[0x1E695FF78]) || CFEqual(a2, *MEMORY[0x1E695FF70])))
    {
      CMBaseObject = CMByteStreamGetCMBaseObject();
      v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v12)
      {

        return v12(CMBaseObject, a2, a3, a4);
      }

      return 4294954514;
    }

    if (CFEqual(a2, *MEMORY[0x1E695FFA0]))
    {
      v14 = *(v9 + 16);
      if (v14)
      {
        v15 = 0;
      }

      else
      {
        v15 = FigXPCConnectionSendStdCopyPropertyMessage();
        v14 = *(v9 + 16);
        if (!v14)
        {
          return 4294954513;
        }
      }

      v17 = CFRetain(v14);
      goto LABEL_21;
    }

    if (CFEqual(a2, *MEMORY[0x1E695FF90]))
    {
      v16 = MEMORY[0x1E695E4D0];
LABEL_20:
      v17 = CFRetain(*v16);
      v15 = 0;
LABEL_21:
      *a4 = v17;
      return v15;
    }

    if (CFEqual(a2, *MEMORY[0x1E695FFA8]))
    {
      v16 = MEMORY[0x1E695E4C0];
      goto LABEL_20;
    }

    return FigXPCConnectionSendStdCopyPropertyMessage();
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }
}

uint64_t remoteByteStream_SetProperty(uint64_t a1, const void *a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = frbs_GetObjectID(a1, &v10);
  if (!result)
  {
    if (CFEqual(a2, @"CFBS_EnableCaching"))
    {
      result = *(DerivedStorage + 24);
      if (result)
      {
        CMByteStreamGetCMBaseObject();
        FigCachedFileByteStreamGetClassID();
        result = CMBaseObjectIsMemberOfClass();
        if (result)
        {
          CMBaseObject = CMByteStreamGetCMBaseObject();
          v9 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v9)
          {
            v9(CMBaseObject, 0x1F0B330B8, a3);
          }

          return 0;
        }
      }
    }

    else
    {
      return 4294954512;
    }
  }

  return result;
}

uint64_t frbs_reopenFileInLocalByteStream(uint64_t a1, void *a2)
{
  if (!a1)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    ObjectID = FigSignalErrorAtGM();
    goto LABEL_15;
  }

  CMBaseObjectGetDerivedStorage();
  ObjectID = frbs_GetObjectID(a1, &v10);
  if (ObjectID)
  {
LABEL_15:
    v7 = ObjectID;
    goto LABEL_13;
  }

  xdict = 0;
  v13 = 0;
  v11 = 0;
  v5 = frbs_GetObjectID(a1, &v11);
  if (v5)
  {
    goto LABEL_18;
  }

  v5 = FigXPCCreateBasicMessage();
  if (v5)
  {
    goto LABEL_18;
  }

  v5 = FigXPCRemoteClientSendSyncMessageCreatingReply();
  if (v5)
  {
    goto LABEL_18;
  }

  if (!xpc_dictionary_get_value(xdict, "FileDescriptor"))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    v5 = FigSignalErrorAtGM();
LABEL_18:
    v7 = v5;
    v6 = -1;
    goto LABEL_9;
  }

  v6 = xpc_dictionary_dup_fd(xdict, "FileDescriptor");
  if (v6 == -1)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    v7 = FigSignalErrorAtGM();
  }

  else
  {
    v7 = 0;
  }

LABEL_9:
  FigXPCRelease();
  FigXPCRelease();
  if (!v7)
  {
    v8 = FigFileWrapDarwinFileDesc();
    if (v8)
    {
      v7 = v8;
      close(v6);
    }

    else
    {
      v7 = 0;
      if (a2)
      {
        *a2 = 0;
      }
    }
  }

LABEL_13:
  FigFileForkClose();
  return v7;
}

uint64_t remoteByteStream_Read(uint64_t a1, unint64_t a2, int64_t a3, char *a4, size_t *a5)
{
  v34 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  ObjectID = frbs_GetObjectID(a1, &v33);
  if (ObjectID)
  {
    return ObjectID;
  }

  FigGetUpTimeNanoseconds();
  if (*(DerivedStorage + 80) && *(DerivedStorage + 48) >= a2)
  {
    v15 = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    v16 = *(v15 + 56);
    v17 = __OFSUB__(a3, v16);
    v18 = a3 - v16;
    __dst = a4;
    if (v18 < 0 != v17 || (v19 = *(v15 + 64), v20 = v19 <= a3, v21 = v19 - a3, v20))
    {
      v22 = 0;
      v23 = a3;
      if (!a2)
      {
LABEL_13:
        v14 = 0;
LABEL_35:
        v34 = v22;
        FigSimpleMutexUnlock();
        goto LABEL_36;
      }
    }

    else
    {
      if (v21 >= a2)
      {
        v22 = a2;
      }

      else
      {
        v22 = v21;
      }

      memcpy(__dst, (*(v15 + 40) + v18), v22);
      a2 -= v22;
      v23 = v22 + a3;
      if (!a2)
      {
        goto LABEL_13;
      }
    }

    v37 = 0;
    xdict = 0;
    v36 = 0;
    v27 = CMBaseObjectGetDerivedStorage();
    v28 = frbs_GetObjectID(a1, &v36);
    if (v28 || (v28 = FigXPCCreateBasicMessage(), v28) || (xpc_dictionary_set_int64(xdict, "Offset", v23), xpc_dictionary_set_int64(xdict, "Length", a2), v28 = FigXPCConnectionSendSyncMessageCreatingReply(), v28))
    {
      v14 = v28;
      int64 = 0;
    }

    else
    {
      int64 = xpc_dictionary_get_int64(v37, "NumBytesRead");
      if (int64 > *(v27 + 48))
      {
        fig_log_get_emitter();
        v14 = FigSignalErrorAtGM();
      }

      else
      {
        v14 = 0;
      }
    }

    FigXPCRelease();
    FigXPCRelease();
    if (!v14)
    {
      *(v15 + 56) = v23;
      *(v15 + 64) = int64 + v23;
      if (int64 >= a2)
      {
        v30 = a2;
      }

      else
      {
        v30 = int64;
      }

      memcpy(&__dst[v22], *(v15 + 40), v30);
      v22 += v30;
    }

    goto LABEL_35;
  }

  v12 = *(DerivedStorage + 24);
  if (v12)
  {
    v13 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v13)
    {
      v14 = v13(v12, a2, a3, a4, &v34);
    }

    else
    {
      v14 = 4294954514;
    }
  }

  else
  {
    v37 = 0;
    xdict = 0;
    length = 0;
    v36 = 0;
    CMBaseObjectGetDerivedStorage();
    v24 = frbs_GetObjectID(a1, &v36);
    if (v24 || (v24 = FigXPCCreateBasicMessage(), v24) || (xpc_dictionary_set_int64(xdict, "Offset", a3), xpc_dictionary_set_int64(xdict, "Length", a2), v24 = FigXPCConnectionSendSyncMessageCreatingReply(), v24))
    {
      v14 = v24;
      v25 = 0;
    }

    else
    {
      v25 = xpc_dictionary_get_int64(v37, "NumBytesRead");
      data = xpc_dictionary_get_data(v37, "BasicDataPointer", &length);
      if (v25 == length && v25 <= a2)
      {
        v14 = 0;
        if (data && v25)
        {
          memcpy(a4, data, v25);
          v14 = 0;
        }
      }

      else
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_1_11();
        v14 = FigSignalErrorAtGM();
      }
    }

    v34 = v25;
    FigXPCRelease();
    FigXPCRelease();
  }

LABEL_36:
  FigGetUpTimeNanoseconds();
  FigByteStreamStatsLogOneRead();
  if (v14)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();
    FigSignalErrorAtGM();
    if (!a5)
    {
      return v14;
    }

    goto LABEL_43;
  }

  if (v34)
  {
    v14 = 0;
  }

  else
  {
    v14 = 4294954423;
  }

  if (a5)
  {
LABEL_43:
    *a5 = v34;
  }

  return v14;
}

uint64_t remoteByteStream_Write(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v15 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = frbs_GetObjectID(a1, &v14);
  if (!result)
  {
    v12 = *(DerivedStorage + 24);
    if (v12)
    {
      v13 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v13)
      {
        result = v13(v12, a2, a3, a4, &v15);
        if (a5)
        {
          if (!result)
          {
            *a5 = v15;
          }
        }
      }

      else
      {
        return 4294954514;
      }
    }

    else
    {
      fig_log_get_emitter();

      return FigSignalErrorAtGM();
    }
  }

  return result;
}

uint64_t remoteByteStream_GetAvailableLengthAtOffset(uint64_t a1, int64_t a2, int64_t *a3)
{
  v18 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  ObjectID = frbs_GetObjectID(a1, &v17);
  if (ObjectID)
  {
    return ObjectID;
  }

  if (!a3)
  {
    goto LABEL_21;
  }

  if (!*(DerivedStorage + 169))
  {
    if (*(DerivedStorage + 168))
    {
      v12 = *(DerivedStorage + 160);
      v13 = v12 <= a2;
      v14 = v12 - a2;
      if (v13)
      {
        int64 = 0;
      }

      else
      {
        int64 = v14;
      }

      goto LABEL_18;
    }

    v20 = 0;
    xdict = 0;
    v19 = 0;
    CMBaseObjectGetDerivedStorage();
    v15 = frbs_GetObjectID(a1, &v19);
    if (v15 || (v15 = FigXPCCreateBasicMessage(), v15))
    {
      v11 = v15;
    }

    else
    {
      xpc_dictionary_set_int64(xdict, "Offset", a2);
      v11 = FigXPCRemoteClientSendSyncMessageCreatingReply();
      if (!v11)
      {
        int64 = xpc_dictionary_get_int64(v20, "Length");
        goto LABEL_17;
      }
    }

    int64 = 0;
LABEL_17:
    FigXPCRelease();
    FigXPCRelease();
    if (!v11)
    {
      goto LABEL_18;
    }

    return v11;
  }

  v8 = *(DerivedStorage + 24);
  if (v8)
  {
    v9 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v9)
    {
      ObjectID = v9(v8, a2, &v18);
      if (!ObjectID)
      {
        int64 = v18;
LABEL_18:
        v11 = 0;
        *a3 = int64;
        return v11;
      }

      return ObjectID;
    }

    return 4294954514;
  }

LABEL_21:
  fig_log_get_emitter();
  OUTLINED_FUNCTION_2_10();

  return FigSignalErrorAtGM();
}

uint64_t remoteByteStream_ReadAndCreateBlockBuffer(const void *a1, unint64_t a2, int64_t a3, CMBlockBufferRef *a4, size_t *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  blockBufferOut = 0;
  dataLength = 0;
  ObjectID = frbs_GetObjectID(a1, &v24);
  if (ObjectID)
  {
    goto LABEL_18;
  }

  if (!a2)
  {
    v21 = 0;
    goto LABEL_13;
  }

  v12 = *(DerivedStorage + 24);
  v13 = CFGetAllocator(a1);
  if (v12)
  {
    ObjectID = CMCreateContiguousBlockBufferFromStream();
    if (ObjectID)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v14 = MEMORY[0x19A8CC720](v13, a2, 903456953, 0);
  if (v14)
  {
    v15 = v14;
    v16 = remoteByteStream_Read(a1, a2, a3, v14, &dataLength);
    if (v16)
    {
      goto LABEL_10;
    }

    v17 = dataLength;
    v18 = CFGetAllocator(a1);
    v19 = v18;
    if (!v17)
    {
      CFAllocatorDeallocate(v18, v15);
      goto LABEL_12;
    }

    v20 = CFGetAllocator(a1);
    v16 = CMBlockBufferCreateWithMemoryBlock(v19, v15, a2, v20, 0, 0, dataLength, 0, &blockBufferOut);
    if (v16)
    {
LABEL_10:
      v21 = v16;
      v22 = CFGetAllocator(a1);
      CFAllocatorDeallocate(v22, v15);
      goto LABEL_13;
    }

LABEL_12:
    v21 = 0;
    *a4 = blockBufferOut;
    goto LABEL_13;
  }

  fig_log_get_emitter();
  ObjectID = FigSignalErrorAtGM();
LABEL_18:
  v21 = ObjectID;
LABEL_13:
  if (a5)
  {
    *a5 = dataLength;
  }

  return v21;
}

uint64_t remoteByteStream_Synchronize(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = frbs_GetObjectID(a1, &v9);
  if (!result)
  {
    v6 = *(DerivedStorage + 24);
    if (v6)
    {
      v7 = *(CMBaseObjectGetVTable() + 16);
      if (*v7 >= 2uLL && (v8 = v7[5]) != 0)
      {

        return v8(v6, a2);
      }

      else
      {
        return 4294954514;
      }
    }

    else
    {
      fig_log_get_emitter();

      return FigSignalErrorAtGM();
    }
  }

  return result;
}

uint64_t FigByteStreamRemoteGetObjectID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigByteStreamRemoteGetObjectID_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigByteStreamRemoteGetObjectID_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t frbs_GetObjectID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MPEG2PSSniff(OpaqueCMBlockBuffer *a1, int *a2)
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = CMBlockBufferGetDataLength(a1);
  if (v4 >= 4)
  {
    v5 = v4;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v38 = 0;
    while (1)
    {
      v11 = OUTLINED_FUNCTION_0_105();
      result = CMBlockBufferAccessDataBytes(v11, v12, 4uLL, v13, v14);
      if (result)
      {
        return result;
      }

      if (*v38 || v38[1] || v38[2] != 1)
      {
        ++v10;
      }

      else
      {
        if (!v10)
        {
          v8 = 1;
        }

        v18 = v38[3];
        if ((v18 - 187) >= 0x41)
        {
          if (v18 == 186)
          {
            v10 += 4;
            v25 = OUTLINED_FUNCTION_0_105();
            if (!CMBlockBufferAccessDataBytes(v25, v26, 0xAuLL, v27, v28))
            {
              if ((*v38 & 0xF0) == 0x20)
              {
                v7 = 1;
              }

              else
              {
                if ((*v38 & 0xC4) != 0x44 || (v38[2] & 4) == 0 || (v38[5] & 1) == 0 || (~v38[8] & 3) != 0)
                {
                  return 4294954325;
                }

                v7 = 0;
                v10 += (v38[9] & 7) + 10;
                ++v9;
              }
            }
          }

          else
          {
            if (v18 == 255)
            {
              goto LABEL_25;
            }

            v10 += 4;
          }
        }

        else
        {
          if (v18 != 189 && (v18 - 192) > 0x2F)
          {
LABEL_25:
            v10 += 4;
            v20 = OUTLINED_FUNCTION_0_105();
            if (!CMBlockBufferAccessDataBytes(v20, v21, 2uLL, v22, v23))
            {
              v24 = __rev16(*v38);
              if (!v24)
              {
                goto LABEL_56;
              }

              v10 += v24 + 2;
            }

            goto LABEL_21;
          }

          dataLength = 0;
          v36 = 0;
          result = CheckPesHeaderLength(a1, v10, 0, v5 - v10, &dataLength, &v36, v16, v17);
          if (result)
          {
            return result;
          }

          if (!v36 || (dataLength <= 0x109 ? (v19 = dataLength + v10 >= v5) : (v19 = 1), v19))
          {
            v10 = v5;
          }

          else
          {
            memset(v35, 0, sizeof(v35));
            result = CMBlockBufferCopyDataBytes(a1, v10, dataLength, destination);
            if (result)
            {
              return result;
            }

            v29 = __rev16(v40);
            if (!v29)
            {
LABEL_56:
              fig_log_get_emitter();
              return FigSignalErrorAtGM();
            }

            result = ReadTimestampFromPesHeader(v38[3], destination, v35, dataLength, v29, 2);
            if (result)
            {
              return result;
            }

            v10 += v29 + 6;
            ++v9;
            v6 = 1;
          }
        }
      }

LABEL_21:
      if (v10 + 3 >= v5)
      {
        if (v7)
        {
          v30 = 3;
        }

        else
        {
          v30 = 2;
        }

        v32 = v6 == 0;
        v31 = v8 == 0;
        if (a2)
        {
          goto LABEL_42;
        }

        goto LABEL_43;
      }
    }
  }

  v9 = 0;
  v30 = 2;
  v31 = 1;
  v32 = 1;
  if (a2)
  {
LABEL_42:
    *a2 = v30;
  }

LABEL_43:
  v33 = v32 || v31 && v9 < 2;
  if (v9)
  {
    v34 = 0;
  }

  else
  {
    v34 = -12971;
  }

  if (v33)
  {
    return 4294954325;
  }

  else
  {
    return v34;
  }
}

uint64_t AddPesFromHeader(uint64_t a1, int a2, void *a3)
{
  v5 = *(a1 + 16);
  if ((a2 & 0xFFFFFFE0) == 0xC0)
  {
    v6 = 0;
    v7 = 1835103588;
    v8 = 1;
    v9 = 1;
  }

  else
  {
    v7 = 1970170734;
    if ((a2 & 0xFFFFFFF0) == 0xE0)
    {
      v8 = 0;
      v9 = 0;
      v6 = 1;
    }

    else
    {
      v10 = a2 == 191 || a2 != 189;
      v11 = a2 != 191 && a2 == 189;
      if (a2 == 191)
      {
        v12 = 1886614578;
      }

      else
      {
        v12 = 1970170734;
      }

      v8 = a2 > 239 || v10;
      v6 = a2 <= 239 && v11;
      v9 = 1;
      if (a2 <= 239)
      {
        v7 = v12;
      }

      else
      {
        v7 = 1970170734;
      }
    }
  }

  v17 = 0;
  result = AddPes(a1, v5, v6, v7, 1, a2, a2, a2, 1, &v17);
  if (!result)
  {
    v14 = v17;
    *a3 = v17;
    if (v9)
    {
      if (v8)
      {
        return 0;
      }

      else
      {
        return CreatePesPrivateForPrivateStream(v14);
      }
    }

    else
    {
      v14[80] = 0x4000;
      v15 = malloc_type_calloc(1uLL, 0x48uLL, 0x1020040A792B6BDuLL);
      if (v15)
      {
        v16 = v15;
        result = 0;
        v16[6] = -1;
        v14[6] = v16;
        v14[105] = MPEG2PSProcessVideoSearch;
        v14[106] = MPEG2PSCleanVideoSearch;
        v14[107] = MPEG2PSDeleteVideoSearchPrivateData;
      }

      else
      {
        return 12;
      }
    }
  }

  return result;
}

uint64_t MPEG2PSInject(uint64_t a1, CMBlockBufferRef theBuffer, uint64_t a3)
{
  v50 = 0;
  DataLength = CMBlockBufferGetDataLength(theBuffer);
  v7 = *(a1 + 416);
  v39 = DataLength;
  if (v7)
  {
    v8 = CMBlockBufferGetDataLength(v7);
    result = CMBlockBufferAppendBufferReference(*(a1 + 416), theBuffer, 0, DataLength, 0);
    v50 = result;
    if (result)
    {
      return result;
    }

    v10 = *(a1 + 416);
    DataLength += v8;
    a3 -= v8;
  }

  else
  {
    v10 = theBuffer;
  }

  v49 = 0;
  v46 = 0;
  destination = 0;
  v43 = 0;
  v47 = 0;
  if (DataLength >= 4)
  {
    v11 = 0;
    v48 = 0;
    while (1)
    {
      switch(*(a1 + 408))
      {
        case 0:
          if (!FindStartCode(v10, v11, &v48, &v47, &v50))
          {
            v11 = DataLength + v11 - 3;
            DataLength = 3;
            goto LABEL_73;
          }

          v12 = v48;
          DataLength += v11 - v48;
          if (v47 - 443 < 2 || v47 == 446)
          {
            goto LABEL_58;
          }

          if (v47 == 442)
          {
            *(a1 + 408) = 1;
            goto LABEL_50;
          }

          if (v47 >= 0x1F1)
          {
LABEL_58:
            *(a1 + 408) = 2;
            *(a1 + 432) = 0;
            *(a1 + 440) = 0;
            goto LABEL_50;
          }

          if (v47 == 441)
          {
            goto LABEL_67;
          }

          v29 = v47;
          PesFromStreamID = FindPesFromStreamID(a1, v47);
          v44 = PesFromStreamID;
          if (!PesFromStreamID)
          {
            if (v29 <= 0xBE && v29 != 189)
            {
              goto LABEL_67;
            }

            result = AddPesFromHeader(a1, v29, &v44);
            v50 = result;
            if (result)
            {
              return result;
            }

            PesFromStreamID = v44;
            if (!v44)
            {
LABEL_67:
              v12 += 4;
              DataLength -= 4;
              goto LABEL_50;
            }
          }

          *(a1 + 424) = PesFromStreamID;
          if (*(PesFromStreamID + 121))
          {
            v31 = 4;
          }

          else
          {
            v31 = 3;
          }

          *(a1 + 408) = v31;
LABEL_50:
          v11 = v12;
          if (DataLength <= 3)
          {
            goto LABEL_72;
          }

          break;
        case 1:
          if (DataLength < 5)
          {
            DataLength = 4;
            goto LABEL_73;
          }

          v12 = v11 + 4;
          result = CMBlockBufferCopyDataBytes(v10, v11 + 4, 1uLL, &destination);
          v50 = result;
          if (result)
          {
            return result;
          }

          if ((destination & 0xC0) == 0x40)
          {
            if (DataLength < 0xE)
            {
              goto LABEL_73;
            }

            result = CMBlockBufferCopyDataBytes(v10, v11 + 13, 1uLL, &destination);
            v50 = result;
            if (result)
            {
              return result;
            }

            v13 = (destination & 7) + 14;
            v14 = DataLength - v13;
            if (DataLength < v13)
            {
              goto LABEL_73;
            }

            v12 = v11 + v13;
            goto LABEL_35;
          }

          if ((destination & 0xF0) == 0x20)
          {
            v14 = DataLength - 12;
            if (DataLength < 0xC)
            {
              goto LABEL_73;
            }

            v12 = v11 + 12;
LABEL_35:
            *(a1 + 408) = 0;
            DataLength = v14;
            goto LABEL_50;
          }

LABEL_36:
          DataLength -= 4;
LABEL_37:
          *(a1 + 408) = 0;
          goto LABEL_50;
        case 2:
          v15 = *(a1 + 432);
          if (v15)
          {
            goto LABEL_19;
          }

          if (DataLength < 6)
          {
            goto LABEL_73;
          }

          v12 = v11 + 4;
          v50 = CMBlockBufferCopyDataBytes(v10, v11 + 4, 2uLL, &v46);
          v16 = v46;
          v15 = __rev16(v46);
          *(a1 + 432) = v15;
          if (!v16)
          {
            goto LABEL_36;
          }

          v11 += 6;
          DataLength -= 6;
LABEL_19:
          v17 = *(a1 + 440);
          v18 = v15 - v17;
          if (v15 - v17 >= DataLength)
          {
            v18 = DataLength;
          }

          DataLength -= v18;
          v19 = v18 + v17;
          *(a1 + 440) = v19;
          v12 = v18 + v11;
          if (v19 >= v15)
          {
            *(a1 + 408) = 0;
            *(a1 + 440) = 0;
          }

          goto LABEL_50;
        case 3:
          result = ProcessPesData(*(a1 + 424), v10, v11, 0, DataLength, v47 == (*(*(a1 + 424) + 64) | 0x100), v11 + a3, &v49, &v43);
          v50 = result;
          if (*(a1 + 8))
          {
            return 4294954511;
          }

          if (result)
          {
            if (result != -12976)
            {
              return result;
            }

            v43 = 1;
            DataLength -= 4;
            v12 = v11 + 4;
            v47 = 0;
          }

          else
          {
            DataLength -= v49;
            v12 = v49 + v11;
            v47 = 0;
            if (!v43)
            {
              goto LABEL_50;
            }
          }

          *(a1 + 424) = 0;
          goto LABEL_37;
        case 4:
          v20 = *(a1 + 424);
          v44 = v20;
          v22 = v20 + 17;
          v21 = v20[17];
          if (v21)
          {
            v23 = 0;
            v24 = v20[18];
          }

          else
          {
            if (DataLength < 6)
            {
              goto LABEL_73;
            }

            v50 = CMBlockBufferCopyDataBytes(v10, v11 + 4, 2uLL, &v46);
            v25 = v46;
            v21 = __rev16(v46);
            *v22 = v21;
            if (!v25)
            {
              fig_log_get_emitter();
              return FigSignalErrorAtGM();
            }

            v24 = 0;
            v20[18] = 0;
            v11 += 6;
            v23 = 1;
            DataLength -= 6;
          }

          if (v21 - v24 >= DataLength)
          {
            v26 = DataLength;
          }

          else
          {
            v26 = v21 - v24;
          }

          v27 = v20[105];
          if (v27)
          {
            v40 = 0u;
            v41 = a3 - 6 + v11;
            v42 = v23;
            result = v27(v20, v10, v11, 0, v26, &v40);
            v50 = result;
            if (result)
            {
              return result;
            }

            if (*(a1 + 8))
            {
              return 4294954511;
            }

            v21 = v20[17];
            v24 = v20[18];
          }

          v12 = v26 + v11;
          DataLength -= v26;
          v28 = v24 + v26;
          v20[18] = v28;
          if (v28 >= v21)
          {
            *(a1 + 408) = 0;
            *v22 = 0;
            v20[18] = 0;
          }

          goto LABEL_50;
        default:
          v12 = v11;
          goto LABEL_50;
      }
    }
  }

  v12 = 0;
LABEL_72:
  v11 = v12;
  if (DataLength)
  {
LABEL_73:
    if (v10 != theBuffer && v39 >= DataLength)
    {
      v37 = *(a1 + 416);
      if (v37)
      {
        CFRelease(v37);
      }

      v33 = *(a1 + 40);
      v36 = v39 - DataLength;
      v34 = (a1 + 416);
      v35 = theBuffer;
    }

    else
    {
      v33 = *(a1 + 40);
      v34 = (a1 + 416);
      v35 = v10;
      v36 = v11;
    }

    return CMBlockBufferCreateWithBufferReference(v33, v35, v36, DataLength, 0, v34);
  }

  else
  {
    v38 = *(a1 + 416);
    if (v38)
    {
      CFRelease(v38);
    }

    *(a1 + 416) = 0;
    return v50;
  }
}