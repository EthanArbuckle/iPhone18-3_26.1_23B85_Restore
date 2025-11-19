uint64_t FPSupport_CreatePayloadForLastPlayedDateNotification(const void *a1, const void *a2, uint64_t a3, __CFDictionary **a4)
{
  if (a1 && a2)
  {
    result = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v8 = result;
    if (result)
    {
      FigCFDictionarySetBoolean();
      CFDictionarySetValue(v8, @"Date", a2);
      CFDictionarySetValue(v8, @"URL", a1);
      result = 0;
    }
  }

  else
  {
    result = FigSignalErrorAtGM();
    v8 = 0;
  }

  *a4 = v8;
  return result;
}

uint64_t fpSupport_SetupRuntimeMediaValidatorPlist_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void fpSupport_SetupRuntimeMediaValidatorPlist_cold_2(uint64_t a1, const void *a2, _DWORD *a3)
{
  *a3 = FigSignalErrorAtGM();

  CFRelease(a2);
}

uint64_t FPSupport_CreateCASlot_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FPSupport_CreateCASlot_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FPSupport_CreateLayerSynchronizerConfiguration_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FPSupport_CopyDestinationPixelBufferAttributesWithIOSurfaceSupport_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FPSupport_GetClosestCommonRefreshIntervalForRate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FPSupport_ChooseTrackIDsUsingPreferredLanguageLists_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FPSupport_ChooseTrackIDsUsingPreferredLanguageLists_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FPSupport_updateClosedCaptionLayerBounds_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void storeClosedCaptionLayerBoundsInCacheForLayerIndex_cold_1(const void *a1)
{
  FigSignalErrorAtGM();

  CFRelease(a1);
}

uint64_t FPSupport_setClosedCaptionLayerOptions_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FPSupport_setClosedCaptionLayerOptions_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FPSupport_setClosedCaptionLayerSeparated_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FPSupport_setClosedCaptionLayerSeparated_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FPSupport_AppendDeferredTransactionChangeForUpdatingHostLayersInLayers_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FPSupport_AppendDeferredTransactionChangeForUpdatingHostLayersInLayers_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FPSupport_AppendDeferredTransactionChangeForUpdatingHostLayersInLayers_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FPSupport_AppendDeferredTransactionChangeForRemovingEachLayerInArrayFromItsSuperlayer_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FPSupport_GetMaxDisplaySizeFromImageQueues_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FPSupport_CreateSetRateOptions_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fps_attachFigVideoLayersToClientLayers_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FPSupport_AppendDeferredTransactionChangeForSettingFigImageQueuesOnComposition_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FPSupport_AppendDeferredTransactionChangeForSettingFigImageQueuesOnComposition_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FPSupport_AppendDeferredTransactionChangeForSettingFigImageQueuesOnRenderPipeline_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FPSupport_AppendDeferredTransactionChangeForSettingFigImageQueuesOnRenderPipeline_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FPSupport_AppendDeferredTransactionChangeForUpdatingLayerTransform_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FPSupport_AppendDeferredTransactionChangeForHidingLayer_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FPSupport_AppendDeferredTransactionChangeForHidingLayer_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FPSupport_AppendDeferredTransactionChangeToTargetMirroringObserverAtDisplayOfCALayer_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FPSupport_AppendDeferredTransactionChangeToTargetMirroringObserverAtDisplayOfCALayer_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FPSupport_AppendDeferredTransactionChangeToConfigureFigVideoQueueHostLayerAndPostNotification_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FPSupport_AppendDeferredTransactionChangeToConfigureFigVideoQueueHostLayerAndPostNotification_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FPSupport_AppendDeferredTransactionChangeToConfigureFigVideoQueueHostLayerAndPostNotification_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FPSupport_AppendDeferredTransactionChangeToResizeClientVideoLayerWithinHostLayer_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FPSupport_AppendDeferredTransactionChangeToResizeClientVideoLayerWithinHostLayer_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FPSupport_AppendDeferredTransactionChangeToResizeClientVideoLayerWithinHostLayer_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FPSupport_HandlePlayerSetPropertiesAndCopyModification_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FPSupport_HandlePlaybackItemSetPropertiesAndCopyModification_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FPSupport_HandlePlayerSetPropertyAndCopyModification_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FPSupport_HandlePlaybackItemSetPropertyAndCopyModification_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FPSupport_CopySingleVideoChannelAndMultichannelVideoTargetsFromArray_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FPSupport_CopySingleVideoChannelAndMultichannelVideoTargetsFromArray_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FPSupport_CopySingleVideoChannelAndMultichannelVideoTargetsFromArray_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FPSupport_CreateFigTagCollectionFromFormatDescriptionExtensions_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FPSupport_CreateFigTagCollectionFromFormatDescriptionExtensions_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FPSupport_CreateFigTagCollectionFromFormatDescriptionExtensions_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FPSupport_CreateFigTagCollectionFromFormatDescriptionExtensions_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FPSupport_CreateFigTagCollectionFromFormatDescriptionExtensions_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FPSupport_CreateFigTagCollectionFromFormatDescriptionExtensions_cold_6(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FPSupport_CreateVideoChannelSettingsForTrackWithID_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FPSupport_CreateVideoChannelSettingsForTrackWithID_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FPSupport_SetCurrentTimeWithRangeIDAndReason_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FPSupport_ProcessPayloadForLastPlayedDateNotification_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FPSupport_CreatePlayerTopology_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FPSupport_CreatePlayerTopology_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FPSupport_CreatePlayerTopology_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fpSupport_handleSetPropertiesApplier_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void fpSupport_handleSetPropertiesApplier_cold_2(uint64_t a1, void *key, const void **a3, const void **a4)
{
  MutableCopy = *(a1 + 16);
  if (!MutableCopy)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, *(a1 + 8));
    *(a1 + 16) = MutableCopy;
  }

  CFDictionaryRemoveValue(MutableCopy, key);
  CFDictionarySetValue(*(a1 + 16), *a3, *a4);
}

void fpSupport_handleSetPropertiesApplier_cold_3(uint64_t a1, void *key)
{
  MutableCopy = *(a1 + 16);
  if (!MutableCopy)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, *(a1 + 8));
    *(a1 + 16) = MutableCopy;
  }

  CFDictionaryRemoveValue(MutableCopy, key);
}

uint64_t FigStreamAssetImageGeneratorCreateFromAssetWithOptions(uint64_t a1, const void *a2, uint64_t a3, CFTypeRef *a4)
{
  cf = 0;
  v25 = 0;
  v4 = 4294954863;
  if (!a2 || !a4)
  {
    goto LABEL_19;
  }

  CMBaseObject = FigAssetGetCMBaseObject(a2);
  v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v9)
  {
    v4 = 4294954514;
    goto LABEL_17;
  }

  v10 = v9(CMBaseObject, @"assetProperty_AssetType", *MEMORY[0x1E695E480], &cf);
  if (!v10)
  {
    if (!FigCFEqual())
    {
      v4 = 4294954860;
      goto LABEL_17;
    }

    FigAssetImageGeneratorGetClassID();
    v10 = CMDerivedObjectCreate();
    if (!v10)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v10 = FigRetainProxyCreate();
      if (!v10)
      {
        *(DerivedStorage + 9) = 0;
        *(DerivedStorage + 24) = CFRetain(a2);
        *(DerivedStorage + 96) = 0;
        v12 = FigSimpleMutexCreate();
        *(DerivedStorage + 32) = v12;
        if (v12)
        {
          *(DerivedStorage + 40) = 0;
          *(DerivedStorage + 48) = DerivedStorage + 40;
          *(DerivedStorage + 64) = FigSemaphoreCreate();
          v13 = FigSemaphoreCreate();
          *(DerivedStorage + 576) = *(DerivedStorage + 64);
          *(DerivedStorage + 72) = v13;
          *(DerivedStorage + 80) = 0;
          v14 = FigSimpleMutexCreate();
          *(DerivedStorage + 568) = v14;
          if (v14)
          {
            v15 = 0;
            v16 = MEMORY[0x1E6960CC0];
            *(DerivedStorage + 392) = *MEMORY[0x1E6960CC0];
            *(DerivedStorage + 408) = *(v16 + 16);
            v17 = MEMORY[0x1E6960C70];
            v18 = *MEMORY[0x1E6960C70];
            *(DerivedStorage + 416) = *MEMORY[0x1E6960C70];
            v19 = *(v17 + 16);
            *(DerivedStorage + 432) = v19;
            *(DerivedStorage + 440) = v18;
            *(DerivedStorage + 456) = v19;
            *(DerivedStorage + 368) = v18;
            *(DerivedStorage + 384) = v19;
            do
            {
              v20 = DerivedStorage + 464 + v15;
              *v20 = v18;
              *(v20 + 16) = v19;
              v15 += 24;
            }

            while (v15 != 72);
            *(DerivedStorage + 552) = 0;
            *(DerivedStorage + 624) = 0;
            *(DerivedStorage + 320) = 0;
            *(DerivedStorage + 328) = DerivedStorage + 320;
            *(DerivedStorage + 336) = 0;
            MEMORY[0x19A8D3660](&sSAIGCreateNotificationQueueOnce, saig_createNotificationQueueOnce);
            if (sSAIGNotificationQueue)
            {
              FigCFWeakReferenceStore();
              v21 = FigAssetGetCMBaseObject(a2);
              v22 = *(*(CMBaseObjectGetVTable() + 8) + 48);
              if (v22)
              {
                v22(v21, @"assetProperty_CreationURL", a1, DerivedStorage + 16);
              }

              v4 = 0;
              *a4 = v25;
              v25 = 0;
              goto LABEL_17;
            }
          }
        }

        fig_log_get_emitter();
        OUTLINED_FUNCTION_3_5();
        v10 = FigSignalErrorAtGM();
      }
    }
  }

  v4 = v10;
LABEL_17:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_19:
  if (v25)
  {
    CFRelease(v25);
  }

  return v4;
}

uint64_t saig_SetProperty(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = 4294954516;
  if (a2 && a3)
  {
    v7 = DerivedStorage;
    FigRetainProxyLockMutex();
    if (FigRetainProxyIsInvalidated())
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1_4();
      FigSignalErrorAtGM();
    }

    else
    {
      if (!CFEqual(a2, @"ClientPID"))
      {
        if (CFEqual(a2, @"AllowAlternateDecoderSelection"))
        {
          v6 = 0;
          *(v7 + 656) = *MEMORY[0x1E695E4D0] == a3;
        }

        else
        {
          v6 = 4294954512;
        }

        goto LABEL_8;
      }

      v8 = *(v7 + 648);
      *(v7 + 648) = a3;
      CFRetain(a3);
      if (v8)
      {
        CFRelease(v8);
      }
    }

    v6 = 0;
LABEL_8:
    FigRetainProxyUnlockMutex();
  }

  return v6;
}

uint64_t saig_DurationChanged()
{
  FigRetainProxyRetain();
  FigRetainProxyLockMutex();
  if (FigRetainProxyIsInvalidated())
  {
    goto LABEL_15;
  }

  Owner = FigRetainProxyGetOwner();
  if (Owner)
  {
    v1 = CFRetain(Owner);
  }

  else
  {
    v1 = 0;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 104) != 2)
  {
    v14 = 0;
    goto LABEL_13;
  }

  v3 = DerivedStorage;
  v4 = *(DerivedStorage + 96);
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 96);
  if (!v5)
  {
    goto LABEL_12;
  }

  v6 = v5(v4, 1.0);
  if (!v6)
  {
    if (*(*(CMBaseObjectGetVTable() + 16) + 72))
    {
      OUTLINED_FUNCTION_39_1();
      v14 = v13(v7, v8, v9, v10, v11, v12);
      if (!v14)
      {
        *(v3 + 104) = 3;
      }

      goto LABEL_13;
    }

LABEL_12:
    v14 = 4294954514;
    goto LABEL_13;
  }

  v14 = v6;
LABEL_13:
  saig_HandleError(v1, v14);
  if (v1)
  {
    CFRelease(v1);
  }

LABEL_15:
  FigRetainProxyUnlockMutex();
  return FigRetainProxyRelease();
}

uint64_t saig_AlternateListChanged()
{
  v80 = *MEMORY[0x1E69E9840];
  theDict = 0;
  FigRetainProxyRetain();
  FigRetainProxyLockMutex();
  if (FigRetainProxyIsInvalidated())
  {
    goto LABEL_98;
  }

  Owner = FigRetainProxyGetOwner();
  if (Owner)
  {
    v1 = CFRetain(Owner);
  }

  else
  {
    v1 = 0;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigBytePumpGetFigBaseObject(*(DerivedStorage + 96));
  v4 = v3;
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v5)
  {
    v6 = *MEMORY[0x1E695E480];
    v7 = v5(v4, 0x1F0B1EE98, *MEMORY[0x1E695E480], &theDict);
    if (!v7)
    {
      v8 = *(DerivedStorage + 104);
      if (v8 == 2)
      {
        v9 = *(DerivedStorage + 144);
        if (!v9)
        {
LABEL_12:
          allocator = v6;
          Value = CFDictionaryGetValue(theDict, @"FBPAIK_FigAlternateArray");
          Count = CFArrayGetCount(Value);
          v12 = *(DerivedStorage + 112);
          if (v12)
          {
            CFRelease(v12);
            *(DerivedStorage + 112) = 0;
          }

          v13 = *(DerivedStorage + 128);
          if (v13)
          {
            CFRelease(v13);
            *(DerivedStorage + 128) = 0;
          }

          v71 = (DerivedStorage + 112);
          v14 = *(DerivedStorage + 120);
          if (v14)
          {
            CFRelease(v14);
            *(DerivedStorage + 120) = 0;
          }

          v70 = (DerivedStorage + 120);
          v69 = Value;
          v72 = v1;
          v15 = CFDictionaryGetValue(theDict, @"FBPAIK_MediaSelectionArray");
          if (v15)
          {
            v16 = CFRetain(v15);
            *(DerivedStorage + 128) = v16;
            if (v16)
            {
              v17 = *(DerivedStorage + 136);
              if (v17)
              {
                CFRelease(v17);
                *(DerivedStorage + 136) = 0;
              }

              Mutable = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
              *(DerivedStorage + 136) = Mutable;
              if (!Mutable)
              {
                v7 = 4294954510;
                goto LABEL_93;
              }

              v74 = CFArrayGetCount(*(DerivedStorage + 128));
              if (v74 >= 1)
              {
                for (i = 0; i != v74; ++i)
                {
                  ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 128), i);
                  v21 = CFDictionaryGetValue(ValueAtIndex, @"MediaSelectionGroupMediaType");
                  if (!v21)
                  {
                    goto LABEL_33;
                  }

                  v22 = *(DerivedStorage + 136);
                  if (!v22)
                  {
                    goto LABEL_33;
                  }

                  v23 = CFArrayGetCount(*(DerivedStorage + 136));
                  if (v23 < 1)
                  {
                    goto LABEL_33;
                  }

                  v24 = v23;
                  v25 = 0;
                  while (1)
                  {
                    v26 = CFArrayGetValueAtIndex(v22, v25);
                    CFDictionaryGetValue(v26, @"MediaSelectionGroupMediaType");
                    if (FigCFEqual())
                    {
                      break;
                    }

                    if (v24 == ++v25)
                    {
                      goto LABEL_33;
                    }
                  }

                  if (!v26)
                  {
LABEL_33:
                    CFStringForOSTypeValue = FigGetCFStringForOSTypeValue();
                    v28 = CFEqual(v21, CFStringForOSTypeValue);
                    v29 = CFDictionaryGetValue(ValueAtIndex, @"MediaSelectionGroupOptions");
                    keys = 0;
                    v79 = 0;
                    values = 0;
                    v77 = 0;
                    if (!v28)
                    {
                      v30 = v29;
                      v31 = CFArrayGetCount(v29);
                      if (v31 < 1)
                      {
LABEL_39:
                        v33 = 0;
                      }

                      else
                      {
                        v32 = v31;
                        v33 = 0;
                        while (1)
                        {
                          v34 = CFArrayGetValueAtIndex(v30, v33);
                          v35 = CFDictionaryGetValue(v34, @"MediaSelectionOptionsIsDefault");
                          if (v35)
                          {
                            if (CFBooleanGetValue(v35))
                            {
                              break;
                            }
                          }

                          if (v32 == ++v33)
                          {
                            goto LABEL_39;
                          }
                        }
                      }

                      v36 = CFArrayGetValueAtIndex(v30, v33);
                      keys = @"MediaSelectionOptionsPersistentID";
                      v37 = CFDictionaryGetValue(v36, @"MediaSelectionOptionsPersistentID");
                      v79 = @"MediaSelectionGroupMediaType";
                      values = v37;
                      v77 = v21;
                      v38 = CFDictionaryCreate(allocator, &keys, &values, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                      if (!v38)
                      {
                        fig_log_get_emitter();
                        OUTLINED_FUNCTION_3_2();
                        v7 = FigSignalErrorAtGM();
                        if (v7)
                        {
                          goto LABEL_93;
                        }

                        break;
                      }

                      v39 = v38;
                      CFArrayAppendValue(*(DerivedStorage + 136), v38);
                      CFRelease(v39);
                    }
                  }
                }
              }
            }
          }

          else
          {
            *(DerivedStorage + 128) = 0;
          }

          v44 = CFArrayCreateMutable(allocator, Count, MEMORY[0x1E695E9C0]);
          *v71 = v44;
          if (v44 && (v45 = OUTLINED_FUNCTION_312(), v48 = CFArrayCreateMutable(v45, v46, v47), (*v70 = v48) != 0))
          {
            if (Count >= 1)
            {
              for (j = 0; j != Count; ++j)
              {
                LODWORD(keys) = 0;
                v50 = CFArrayGetValueAtIndex(v69, j);
                CodecString = FigAlternateGetCodecString(v50);
                FigAlternateGetPeakBitRate(v50);
                if (CodecString)
                {
                  v52 = OUTLINED_FUNCTION_312();
                  if (FigMediaValidatorValidateRFC4281CodecsForStreaming(v52, v53, v54))
                  {
                    continue;
                  }

                  IsIFrameOnly = FigAlternateIsIFrameOnly(v50);
                  v56 = (keys & 3) == 1 && IsIFrameOnly == 0;
                  if (v56 || (keys & 4) != 0)
                  {
                    continue;
                  }
                }

                if (FigAlternateIsIFrameOnly(v50))
                {
                  v58 = (DerivedStorage + 120);
                }

                else
                {
                  v58 = (DerivedStorage + 112);
                }

                CFArrayAppendValue(*v58, v50);
              }
            }

            v59 = *(DerivedStorage + 112);
            v81.length = CFArrayGetCount(v59);
            v81.location = 0;
            CFArraySortValues(v59, v81, saig_AlternatesComparator, 0);
            CFArrayGetCount(*(DerivedStorage + 120));
            v60 = OUTLINED_FUNCTION_312();
            CFArraySortValues(v60, v82, saig_AlternatesComparator, 0);
            if (*(DerivedStorage + 96) && CFArrayGetCount(*v70) > 0 && CFArrayGetCount(*v71) > 0)
            {
              v61 = *(DerivedStorage + 144);
              if (v61)
              {
                if (FigAlternateIsIFrameOnly(v61))
                {
                  v62.length = CFArrayGetCount(*(DerivedStorage + 120));
                  v63 = *(DerivedStorage + 120);
                }

                else
                {
                  v62.length = CFArrayGetCount(*(DerivedStorage + 112));
                  v63 = *(DerivedStorage + 112);
                }

                v62.location = 0;
                if (!CFArrayContainsValue(v63, v62, *(DerivedStorage + 144)))
                {
                  saig_tearDownManifoldsAndDeleteTracks(v72);
                  v64 = *(DerivedStorage + 144);
                  if (v64)
                  {
                    CFRelease(v64);
                    *(DerivedStorage + 144) = 0;
                  }

                  FigSimpleMutexLock();
                  v65 = *(DerivedStorage + 560);
                  if (v65)
                  {
                    CFRelease(v65);
                    *(DerivedStorage + 560) = 0;
                  }

                  FigSimpleMutexUnlock();
                }
              }

              v66 = CFArrayGetValueAtIndex(*v71, 0);
              if (CFDictionaryContainsKey(theDict, @"FBPAIK_CurrentFigAlternate") && *(DerivedStorage + 144))
              {
                v7 = 0;
                goto LABEL_93;
              }

              if (*(DerivedStorage + 104) != 3)
              {
                *(DerivedStorage + 104) = 2;
              }

              v67 = saig_SetAlternate(v72, v66, MEMORY[0x1E6960C70], MEMORY[0x1E6960C70]);
            }

            else
            {
              fig_log_get_emitter();
              OUTLINED_FUNCTION_3_2();
              v67 = FigSignalErrorAtGM();
            }

            v7 = v67;
          }

          else
          {
            v7 = 4294954862;
          }

LABEL_93:
          if (theDict)
          {
            CFRelease(theDict);
          }

          v1 = v72;
          goto LABEL_96;
        }

        CFRelease(v9);
        *(DerivedStorage + 144) = 0;
        v8 = *(DerivedStorage + 104);
      }

      if (!v8)
      {
        *(DerivedStorage + 104) = 1;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v7 = 4294954514;
  }

  *(DerivedStorage + 352) = 1;
  *(DerivedStorage + 344) = 1;
  v40 = *(DerivedStorage + 112);
  if (v40)
  {
    CFRelease(v40);
    *(DerivedStorage + 112) = 0;
  }

  v41 = *(DerivedStorage + 128);
  if (v41)
  {
    CFRelease(v41);
    *(DerivedStorage + 128) = 0;
  }

  v42 = *(DerivedStorage + 120);
  if (v42)
  {
    CFRelease(v42);
    *(DerivedStorage + 120) = 0;
  }

  v43 = *(DerivedStorage + 144);
  if (v43)
  {
    CFRelease(v43);
    *(DerivedStorage + 144) = 0;
  }

LABEL_96:
  saig_HandleError(v1, v7);
  if (v1)
  {
    CFRelease(v1);
  }

LABEL_98:
  FigRetainProxyUnlockMutex();
  return FigRetainProxyRelease();
}

uint64_t saig_RequestCGImageAtTimeAsync(uint64_t a1, uint64_t a2, const void *a3, const void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v19 = 0;
  FigRetainProxyLockMutex();
  if (FigRetainProxyIsInvalidated())
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_4();
    v9 = FigSignalErrorAtGM();
    goto LABEL_19;
  }

  v8 = *(DerivedStorage + 552) + 1;
  *(DerivedStorage + 552) = v8;
  v17 = *a2;
  v18 = *(a2 + 16);
  v9 = FAIGCommon_createImageRequest(&v17, a3, a4, v8, &v19);
  if (v9)
  {
LABEL_19:
    v13 = v9;
    goto LABEL_17;
  }

  FigSimpleMutexLock();
  *v19 = 0;
  v10 = v19;
  **(DerivedStorage + 48) = v19;
  *(DerivedStorage + 48) = v10;
  v11 = *(DerivedStorage + 56);
  if (*(DerivedStorage + 56))
  {
    v12 = 0;
  }

  else
  {
    *(DerivedStorage + 56) = 1;
    v12 = *(DerivedStorage + 80);
    if (v12)
    {
      *(DerivedStorage + 80) = 0;
    }
  }

  FigSimpleMutexUnlock();
  FigSemaphoreSignal();
  if (v12)
  {
    FigThreadJoin();
  }

  if (v11)
  {
    v13 = 0;
  }

  else
  {
    *&v17 = @"com.apple.coremedia.streamimagegenerator.processimagerequest";
    v14 = CFDictionaryCreate(*MEMORY[0x1E695E480], MEMORY[0x1E69631F0], &v17, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v13 = FigThreadCreate();
    if (v14)
    {
      CFRelease(v14);
    }

    if (v13)
    {
      FigSimpleMutexLock();
      *(DerivedStorage + 56) = 0;
      v15 = **(DerivedStorage + 40);
      *(DerivedStorage + 40) = v15;
      if (!v15)
      {
        *(DerivedStorage + 48) = DerivedStorage + 40;
      }

      FigSimpleMutexUnlock();
      FAIGCommon_releaseImageRequest(v19);
    }
  }

LABEL_17:
  FigRetainProxyUnlockMutex();
  return v13;
}

uint64_t saig_RequestAnImageFromPump(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  valuePtr = 0;
  v61 = **&MEMORY[0x1E6960C88];
  v60 = v61;
  v58 = 0uLL;
  v59 = 0;
  v5 = CMBaseObjectGetDerivedStorage();
  *&v66 = 0;
  v65.value = 0;
  v6 = *(v5 + 120);
  if (!v6 || !a2 || (Count = CFArrayGetCount(v6), Count <= 0))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    v27 = FigSignalErrorAtGM();
    goto LABEL_38;
  }

  v8 = Count;
  FigCFDictionaryGetCGFloatIfPresent();
  FigCFDictionaryGetCGFloatIfPresent();
  v9 = *(v5 + 144);
  v10 = v9 && FigAlternateIsIFrameOnly(v9);
  value = v65.value;
  if (*&v66 == *(v5 + 152) && *&v65.value == *(v5 + 160))
  {
    if (v10)
    {
      goto LABEL_39;
    }
  }

  else
  {
    *(v5 + 152) = v66;
    *(v5 + 160) = value;
  }

  v12 = 0;
  v13 = 0;
  v14 = *MEMORY[0x1E695F060];
  v15 = *(MEMORY[0x1E695F060] + 8);
  v16 = 0.0;
  v17 = 0.0;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(v5 + 120), v12);
    Resolution = FigAlternateGetResolution(ValueAtIndex);
    if (Resolution != v14 || v20 != v15)
    {
      if (!v13)
      {
        goto LABEL_23;
      }

      v22 = v20 * Resolution;
      v23 = v16 * v17;
      if (v20 * Resolution <= *&v66 * *&v65.value)
      {
        if (v22 > v23)
        {
          goto LABEL_23;
        }
      }

      else if (v22 < v23 || v23 < *&v66 * *&v65.value)
      {
LABEL_23:
        v17 = Resolution;
        v16 = v20;
        v13 = ValueAtIndex;
      }
    }

    ++v12;
  }

  while (v8 != v12);
  if (v13 || (v13 = CFArrayGetValueAtIndex(*(v5 + 120), 0)) != 0)
  {
    CFRetain(v13);
  }

  CMBaseObjectGetDerivedStorage();
  if (FigCFEqual())
  {
    goto LABEL_36;
  }

  DescriptionString = FigAlternateCreateDescriptionString(v13);
  saig_tearDownManifoldsAndDeleteTracks(a1);
  v26 = saig_SetAlternate(a1, v13, MEMORY[0x1E6960C70], MEMORY[0x1E6960C70]);
  if (v26)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    FigSignalErrorAtGM();
    if (DescriptionString)
    {
LABEL_34:
      CFRelease(DescriptionString);
    }
  }

  else if (DescriptionString)
  {
    goto LABEL_34;
  }

  if (v26)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    v27 = FigSignalErrorAtGM();
    if (v13)
    {
LABEL_37:
      CFRelease(v13);
    }
  }

  else
  {
LABEL_36:
    v27 = 0;
    if (v13)
    {
      goto LABEL_37;
    }
  }

LABEL_38:
  if (!v27)
  {
LABEL_39:
    v28 = *(a2 + 40);
    if (v28)
    {
      v29 = CFDictionaryGetValue(v28, @"TimeFlags");
      if (v29)
      {
        v30 = v29;
        v31 = CFGetTypeID(v29);
        if (v31 == CFNumberGetTypeID())
        {
          CFNumberGetValue(v30, kCFNumberIntType, &valuePtr);
        }
      }

      v32 = CFDictionaryGetValue(*(a2 + 40), @"TimeToleranceBefore");
      if (v32)
      {
        v33 = v32;
        v34 = CFGetTypeID(v32);
        if (v34 == CFDictionaryGetTypeID())
        {
          CMTimeMakeFromDictionary(&v61, v33);
        }
      }

      v35 = CFDictionaryGetValue(*(a2 + 40), @"TimeToleranceAfter");
      if (v35)
      {
        v36 = v35;
        v37 = CFGetTypeID(v35);
        if (v37 == CFDictionaryGetTypeID())
        {
          CMTimeMakeFromDictionary(&v60, v36);
        }
      }
    }

    if ((valuePtr - 1) > 4)
    {
      v38 = 2;
    }

    else
    {
      v38 = dword_196E765E0[valuePtr - 1];
    }

    v66 = *(a2 + 12);
    v67 = *(a2 + 28);
    v65 = *(DerivedStorage + 392);
    v39 = OUTLINED_FUNCTION_8_18();
    CMTimeAdd(v41, v39, v40);
    v66 = 0uLL;
    v67 = 0;
    v54 = *MEMORY[0x1E6960CC0];
    *&v65.value = *MEMORY[0x1E6960CC0];
    v42 = *(MEMORY[0x1E6960CC0] + 16);
    v65.epoch = v42;
    v43 = OUTLINED_FUNCTION_8_18();
    if (CMTimeCompare(v43, v44) < 0)
    {
      v58 = v54;
      v59 = v42;
    }

    v45 = *(DerivedStorage + 96);
    OUTLINED_FUNCTION_25_9();
    v65 = v61;
    v46 = OUTLINED_FUNCTION_8_18();
    CMTimeSubtract(v48, v46, v47);
    OUTLINED_FUNCTION_25_9();
    v65 = v60;
    v49 = OUTLINED_FUNCTION_8_18();
    CMTimeAdd(v51, v49, v50);
    v52 = *(*(CMBaseObjectGetVTable() + 16) + 104);
    if (v52)
    {
      v66 = v58;
      v67 = v59;
      v65 = v57;
      v63 = v55;
      v64 = v56;
      return v52(v45, &v66, v38, &v65, &v63, DerivedStorage + 536);
    }

    else
    {
      return 4294954514;
    }
  }

  return v27;
}

uint64_t saig_PumpTransferCallback(int a1, const void *a2, CFErrorRef err)
{
  if (err)
  {
    Code = CFErrorGetCode(err);
  }

  else
  {
    Code = 0;
  }

  FigRetainProxyLockMutex();
  if (FigRetainProxyIsInvalidated())
  {
    goto LABEL_19;
  }

  Owner = FigRetainProxyGetOwner();
  if (Owner)
  {
    v6 = CFRetain(Owner);
  }

  else
  {
    v6 = 0;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!Code)
  {
    if (a2)
    {
      v8 = DerivedStorage;
      v9 = FigBytePumpRetain(a2);
      v8[12] = v9;
      FigBytePumpGetFigBaseObject(v9);
      v11 = v10;
      v12 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (!v12)
      {
LABEL_16:
        Code = 4294954514;
        goto LABEL_17;
      }

      PumpReady = v12(v11, 0x1F0B1F638, @"SAIGenerator");
      if (!PumpReady)
      {
        CMNotificationCenterGetDefaultLocalCenter();
        OUTLINED_FUNCTION_29_8();
        CMNotificationCenterGetDefaultLocalCenter();
        OUTLINED_FUNCTION_29_8();
        CMNotificationCenterGetDefaultLocalCenter();
        OUTLINED_FUNCTION_29_8();
        CMNotificationCenterGetDefaultLocalCenter();
        OUTLINED_FUNCTION_29_8();
        v14 = v8[12];
        v15 = *v8;
        v16 = *(*(CMBaseObjectGetVTable() + 16) + 88);
        if (v16)
        {
          PumpReady = v16(v14, saig_BytePumpFn, 0, v15);
          if (!PumpReady)
          {
            PumpReady = saig_GetPumpReady();
          }

          goto LABEL_15;
        }

        goto LABEL_16;
      }
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1_4();
      PumpReady = FigSignalErrorAtGM();
    }

LABEL_15:
    Code = PumpReady;
  }

LABEL_17:
  saig_HandleError(v6, Code);
  if (v6)
  {
    CFRelease(v6);
  }

LABEL_19:
  FigRetainProxyUnlockMutex();

  return FigRetainProxyRelease();
}

uint64_t saig_GetPumpReady()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v31 = 0;
  v32 = 0;
  v1 = CMBaseObjectGetDerivedStorage();
  v36[0] = 0;
  v35 = 0;
  cf = 0;
  v34 = 0;
  v2 = *MEMORY[0x1E695E480];
  CMBaseObject = FigAssetGetCMBaseObject(*(v1 + 24));
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v4 || v4(CMBaseObject, @"assetProperty_CreationOptionsDictionary", v2, v36) || (v5 = FigAssetGetCMBaseObject(*(v1 + 24)), (v6 = *(*(CMBaseObjectGetVTable() + 8) + 48)) == 0) || v6(v5, @"assetProperty_OriginalNetworkContentURL", v2, &v34))
  {
    Mutable = 0;
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(v2, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      URLValue = FigCFDictionaryGetURLValue();
      FigCFDictionaryGetBooleanIfPresent();
      if (v35)
      {
        if (URLValue)
        {
          CFDictionarySetValue(Mutable, @"FSC_DiskCacheRepositoryURL", URLValue);
          CFDictionarySetValue(Mutable, @"FSC_Backing", @"FSC_DiskBacking");
          CFDictionarySetValue(Mutable, @"FSC_ClientName", @"imagegen");
          FigCFDictionarySetValueFromKeyInDict();
          FigCFDictionarySetValueFromKeyInDict();
          if (!FigStreamingCacheCreate(v2, v34, Mutable, &cf))
          {
            v9 = *(v1 + 96);
            v10 = cf;
            FigBytePumpGetFigBaseObject(v9);
            v12 = v11;
            v13 = *(*(CMBaseObjectGetVTable() + 8) + 56);
            if (v13)
            {
              v13(v12, 0x1F0B1F098, v10);
            }
          }
        }
      }
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_4();
      FigSignalErrorAtGM();
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v36[0])
  {
    CFRelease(v36[0]);
  }

  if (v34)
  {
    CFRelease(v34);
  }

  FigBytePumpGetFigBaseObject(*(DerivedStorage + 96));
  v15 = v14;
  v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v16 && v16(v15, 0x1F0B1EE98, v2, &v32) == -12783)
  {
    *(DerivedStorage + 104) = 0;
    v17 = *(DerivedStorage + 96);
    v18 = *(*(CMBaseObjectGetVTable() + 16) + 64);
    if (v18)
    {
      v19 = v18(v17);
      goto LABEL_24;
    }

LABEL_41:
    v20 = 4294954514;
    goto LABEL_36;
  }

  FigBytePumpGetFigBaseObject(*(DerivedStorage + 96));
  v22 = v21;
  v23 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v23)
  {
    v20 = 4294954514;
    goto LABEL_35;
  }

  v24 = v23(v22, @"FBP_Duration", v2, &v31);
  if (v24 == -12783)
  {
    *(DerivedStorage + 104) = 1;
    saig_AlternateListChanged();
    goto LABEL_43;
  }

  v20 = v24;
  if (v24)
  {
    goto LABEL_35;
  }

  *(DerivedStorage + 104) = 3;
  saig_AlternateListChanged();
  if (!*(DerivedStorage + 144))
  {
LABEL_43:
    v20 = 0;
    goto LABEL_35;
  }

  v25 = *(DerivedStorage + 96);
  v26 = *(*(CMBaseObjectGetVTable() + 16) + 96);
  if (!v26)
  {
    goto LABEL_41;
  }

  v27 = v26(v25, 1.0);
  if (v27)
  {
LABEL_45:
    v20 = v27;
    goto LABEL_36;
  }

  if (!*(*(CMBaseObjectGetVTable() + 16) + 72))
  {
    goto LABEL_41;
  }

  v28 = *(MEMORY[0x1E6960C98] + 16);
  *v36 = *MEMORY[0x1E6960C98];
  v37 = v28;
  v38 = *(MEMORY[0x1E6960C98] + 32);
  OUTLINED_FUNCTION_39_1();
  v19 = v29();
LABEL_24:
  v20 = v19;
  if (!v19)
  {
LABEL_35:
    if (*(DerivedStorage + 96))
    {
      goto LABEL_36;
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    v27 = FigSignalErrorAtGM();
    goto LABEL_45;
  }

LABEL_36:
  if (v32)
  {
    CFRelease(v32);
  }

  if (v31)
  {
    CFRelease(v31);
  }

  return v20;
}

uint64_t saig_BytePumpFn(int a1, int a2, const void *a3, unsigned int a4, unsigned int a5, int a6, uint64_t a7, __int128 *a8, uint64_t a9, uint64_t a10, uint64_t a11, CFErrorRef err)
{
  v77 = *MEMORY[0x1E69E9840];
  if (err)
  {
    Code = CFErrorGetCode(err);
  }

  else
  {
    Code = 0;
  }

  v75 = *MEMORY[0x1E6960C70];
  v76 = *(MEMORY[0x1E6960C70] + 8);
  FigRetainProxyRetain();
  FigRetainProxyLockMutex();
  if (FigRetainProxyIsInvalidated())
  {
    goto LABEL_82;
  }

  Owner = FigRetainProxyGetOwner();
  if (Owner)
  {
    v20 = CFRetain(Owner);
  }

  else
  {
    v20 = 0;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 4 * a5 + 536) != a6)
  {
    goto LABEL_80;
  }

  v22 = DerivedStorage;
  v67 = a7;
  v23 = a5;
  v24 = DerivedStorage + 8 * a5;
  v25 = *(v24 + 296) == a11;
  if (*(v24 + 296) != a11)
  {
    a4 &= ~4u;
  }

  if (a4)
  {
    v25 = 0;
  }

  if (Code)
  {
    goto LABEL_80;
  }

  v69 = *(MEMORY[0x1E6960C70] + 16);
  if ((a4 & 0x14) == 4)
  {
    v27 = *(v24 + 176);
    v26 = (v24 + 176);
    if (!v27)
    {
      goto LABEL_34;
    }

    FigStopForwardingMediaServicesProcessDeathNotification();
    v28 = *v26;
    v29 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v29)
    {
      v29(v28, 0);
    }

    goto LABEL_32;
  }

  if ((a4 & 0x10) != 0 || !v25)
  {
    *(DerivedStorage + 548) = 0;
    if (!v25)
    {
      v31 = CMBaseObjectGetDerivedStorage();
      v64 = v31 + 8 * a5;
      v65 = v31;
      v26 = (v64 + 176);
      v32 = *(v64 + 176);
      if (v32)
      {
        v33 = *(*(CMBaseObjectGetVTable() + 16) + 16);
        if (v33)
        {
          v33(v32, 0);
        }
      }

      v34 = *(v65 + 320);
      if (v34)
      {
        do
        {
          v35 = *(v34 + 8);
          if (*(v34 + 92) == a5)
          {
            saig_deleteTrack(v20, v34);
          }

          v34 = v35;
        }

        while (v35);
      }

      v36 = v65 + 24 * a5;
      *(v36 + 224) = *MEMORY[0x1E6960C70];
      *(v36 + 240) = v69;
      *(v64 + 296) = a11;
      if (*v26)
      {
        FigStopForwardingMediaServicesProcessDeathNotification();
LABEL_32:
        if (*v26)
        {
          CFRelease(*v26);
          *v26 = 0;
        }
      }
    }
  }

LABEL_34:
  if ((*(v22 + 380) & 1) == 0)
  {
    OUTLINED_FUNCTION_27_8();
    if (v37)
    {
      v38 = *a8;
      *(v22 + 384) = *(a8 + 2);
      *(v22 + 368) = v38;
    }
  }

  OUTLINED_FUNCTION_27_8();
  if (v37)
  {
    v39 = *a8;
    v40 = v22 + 24 * a5;
    *(v40 + 480) = *(a8 + 2);
    *(v40 + 464) = v39;
  }

  v41 = v22 + 176;
  if (*(v22 + 176 + 8 * a5))
  {
    if (!a3 && !a4)
    {
      Code = 0;
      goto LABEL_80;
    }

    fpfs_prepareDataForInject(a3);
    v48 = *(v41 + 8 * a5);
    v49 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (!v49)
    {
      Code = 4294954514;
      goto LABEL_80;
    }

    Code = v49(v48, v67, (a4 >> 5) & 2 | (a4 >> 4) & 1, a3);
    if (Code)
    {
      goto LABEL_80;
    }

    v41 = v22 + 176;
    if ((a4 & 0x20) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_76;
  }

  if (!a3)
  {
    Code = ((a4 << 30) >> 31) & 0xFFFFCF71;
    if ((a4 & 0x20) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_76;
  }

  v66 = v22 + 176;
  v68 = v22 + 200;
  if (*(v22 + 200 + 8 * a5))
  {
    OUTLINED_FUNCTION_39_1();
    appended = CMBlockBufferAppendBufferReference(v42, v43, v44, v45, v46);
    if (appended)
    {
      Code = appended;
      goto LABEL_80;
    }
  }

  else
  {
    *(v22 + 200 + 8 * a5) = CFRetain(a3);
  }

  v50 = *(v22 + 320);
  if (v50)
  {
    v51 = *(MEMORY[0x1E6960C70] + 12);
    do
    {
      if (*(v50 + 48) == a11)
      {
        lhs = *(v50 + 120);
        rhs = *(v50 + 64);
        CMTimeSubtract(&time1, &lhs, &rhs);
        value = time1.value;
        flags = time1.flags;
        timescale = time1.timescale;
        if ((time1.flags & 0x1D) == 1)
        {
          epoch = time1.epoch;
          if ((v51 & 1) == 0 || (time1.value = value, time1.timescale = timescale, lhs.value = v75, lhs.timescale = v76, lhs.flags = v51, lhs.epoch = v69, CMTimeCompare(&time1, &lhs) >= 1))
          {
            v75 = value;
            v76 = timescale;
            v51 = flags;
            v69 = epoch;
          }
        }
      }

      v50 = *(v50 + 8);
    }

    while (v50);
  }

  v54 = *(v68 + 8 * v23);
  v55 = CMBaseObjectGetDerivedStorage();
  time1 = **&MEMORY[0x1E6960CC0];
  FigManifoldFactoryCreateManifold(0, v54, 0, &time1, 0, saig_NewTrackNote, 0, 0, 0, 28, v20, (v55 + 8 * v23 + 176));
  started = FigStartForwardingMediaServicesProcessDeathNotification();
  if (started != -16044)
  {
    Code = started;
    v41 = v66;
    if (!started)
    {
      fpfs_prepareDataForInject(*(v68 + 8 * v23));
      v57 = *(v66 + 8 * v23);
      v58 = *(v68 + 8 * v23);
      v59 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      Code = v59 ? v59(v57, 0, (a4 >> 5) & 2 | (a4 >> 4) & 1, v58) : 4294954514;
      v60 = *(v68 + 8 * v23);
      if (v60)
      {
        CFRelease(v60);
        *(v68 + 8 * v23) = 0;
      }
    }

    if (Code || (a4 & 0x20) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_76;
  }

  v41 = v66;
  if (CMBlockBufferGetDataLength(*(v68 + 8 * v23)) > 0x20000)
  {
    Code = 4294951252;
    goto LABEL_80;
  }

  Code = 0;
  if ((a4 & 0x20) != 0)
  {
LABEL_76:
    v61 = *(v41 + 8 * v23);
    if (v61)
    {
      v62 = *(*(CMBaseObjectGetVTable() + 16) + 40);
      if (v62)
      {
        v62(v61);
      }
    }
  }

LABEL_80:
  saig_HandleError(v20, Code);
  if (v20)
  {
    CFRelease(v20);
  }

LABEL_82:
  FigRetainProxyUnlockMutex();
  return FigRetainProxyRelease();
}

uint64_t saig_FmtDescChangeNote(uint64_t a1, uint64_t a2, uint64_t a3, const opaqueCMFormatDescription *a4, const void *a5)
{
  v8 = *a3;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = *(a3 + 32);
  if (v10 == a4 && *(a3 + 152) == a5)
  {
    return 0;
  }

  if (v10)
  {
    return 4294954860;
  }

  if (*(a3 + 93))
  {
    v12 = a5 != 0;
    if (a5)
    {
      OUTLINED_FUNCTION_33();
      if (v13)
      {
        saig_tearDownManifoldsAndDeleteTracks(v8);
        CFArrayGetCount(*(DerivedStorage + 120));
        v14 = OUTLINED_FUNCTION_312();
        FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v14, v22, v15);
        if (FirstIndexOfValue != -1)
        {
          CFArrayRemoveValueAtIndex(*(DerivedStorage + 120), FirstIndexOfValue);
        }

        v17 = *(DerivedStorage + 144);
        if (v17)
        {
          CFRelease(v17);
          *(DerivedStorage + 144) = 0;
        }

        return 4294954860;
      }
    }
  }

  else
  {
    v12 = a5 != 0;
  }

  *(a3 + 32) = FigFormatDescriptionRetain();
  MediaType = CMFormatDescriptionGetMediaType(a4);
  *(a3 + 28) = MediaType;
  if (MediaType == 1936684398)
  {
    FigGaplessInfoGetDefaultAudioPrimingDuration(*(a3 + 32), &v21);
    *(a3 + 160) = v21;
  }

  if (!v12)
  {
    v20 = *(a3 + 152);
    *(a3 + 152) = a5;
LABEL_22:
    if (v20)
    {
      CFRelease(v20);
    }

    return 0;
  }

  v19 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v19)
  {
    return 4294954514;
  }

  result = v19(a5, @"DisplayList", 0);
  if (!result)
  {
    saig_ensureDecryptorIsReady(a5);
    v20 = *(a3 + 152);
    *(a3 + 152) = a5;
    CFRetain(a5);
    goto LABEL_22;
  }

  return result;
}

uint64_t saig_PushSampleBuffer(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, opaqueCMSampleBuffer *a6)
{
  v286 = *a3;
  values = CMBaseObjectGetDerivedStorage();
  memset(&v307, 0, sizeof(v307));
  PresentationTimeStamp = CMSampleBufferGetPresentationTimeStamp(&v307, a6);
  memset(&keys[1], 0, 24);
  keys[0] = @"AIGRequestedNotificationWhenConsumed";
  if (*(a3 + 152))
  {
    FigBasicAESCPECryptorGetClassID();
    if (!CMBaseObjectIsMemberOfClass() || (LODWORD(outputPresentationTimeStamp.value) = 0, v18 = *(a3 + 152), (v19 = *(*(CMBaseObjectGetVTable() + 16) + 16)) == 0) || (PresentationTimeStamp = v19(v18, &outputPresentationTimeStamp), PresentationTimeStamp | LODWORD(outputPresentationTimeStamp.value)))
    {
      PresentationTimeStamp = FigSampleBufferSetDecryptor();
    }
  }

  key = *MEMORY[0x1E6960458];
  v282 = *MEMORY[0x1E695E4C0];
  v284 = (a3 + 184);
  allocator = *MEMORY[0x1E695E480];
  v268 = *MEMORY[0x1E69841E0];
  value = *MEMORY[0x1E695E4D0];
  v278 = (a3 + 224);
  v266 = *MEMORY[0x1E6965E50];
  v256 = @"FieldMode";
  v254 = *MEMORY[0x1E6983A20];
  v264 = @"ClientPID";
  v260 = @"SourceSampleBufferQueue";
  v252 = @"ObeyEmptyMediaMarkers";
  v262 = @"DecodeError";
  valuePtr = (a3 + 232);
  v270 = *MEMORY[0x1E6960520];
  v258 = @"PrerollRate";
  v276 = *MEMORY[0x1E6960500];
  v20 = MEMORY[0x1E6960CC0];
  v21 = 1;
  while (2)
  {
    if ((*(a3 + 76) & 0x1D) == 1)
    {
      OUTLINED_FUNCTION_21_8(PresentationTimeStamp, v10, v11, v12, v13, v14, v15, v16, sampleTimingArray, numSampleSizeEntries, sampleSizeArray, v248, v250, v252, v254, v256, v258, v260, v262, v264, v266, v268, v270, value, valuePtr, v276, v278, allocator, v282, v284, v286, key, v289, v291, v292, v294, v295, v297, v298, v299.value, *&v299.timescale, v299.epoch, v300.value, *&v300.timescale, v300.epoch, v301, v302.value, *&v302.timescale, v302.epoch, v303.value, *&v303.timescale, v303.epoch, v304.value, *&v304.timescale, v304.epoch, keys[0], keys[1], keys[2], keys[3], v306, v17, v307.value);
      OUTLINED_FUNCTION_20_7();
      v22 = OUTLINED_FUNCTION_7_21();
      CMTimeAdd(v24, v22, v23);
      outputPresentationTimeStamp = *&keys[1];
      PresentationTimeStamp = CMSampleBufferSetOutputPresentationTimeStamp(a6, &outputPresentationTimeStamp);
    }

    else
    {
      *&keys[1] = **&MEMORY[0x1E6960C70];
    }

    v25 = 0;
    v26 = 0;
    v27 = 0;
    switch(*(a3 + 88))
    {
      case 0:
        v28 = values;
        v29 = *(values + 40);
        if (v29)
        {
          do
          {
            if ((*(v29 + 88) & 0xFFFFFFFE) == 2 && *(v29 + 40) == *(a3 + 40) && *(v29 + 48) == *(a3 + 48))
            {
              PresentationTimeStamp = CMBufferQueueGetHead(*(v29 + 56));
              if (PresentationTimeStamp)
              {
                memset(&outputPresentationTimeStamp, 0, sizeof(outputPresentationTimeStamp));
                CMSampleBufferGetPresentationTimeStamp(&outputPresentationTimeStamp, PresentationTimeStamp);
                v313 = v307;
                OUTLINED_FUNCTION_9_19();
                *&v310.value = *(v29 + 160);
                v30 = OUTLINED_FUNCTION_15_13(*(v29 + 176));
                CMTimeAdd(v32, v30, v31);
                outputPresentationTimeStamp = time1;
                OUTLINED_FUNCTION_28_9();
                *&time2.value = *(a3 + 160);
                v33 = OUTLINED_FUNCTION_16_11(*(a3 + 176));
                CMTimeAdd(v35, v33, v34);
                OUTLINED_FUNCTION_28_9();
                OUTLINED_FUNCTION_9_19();
                PresentationTimeStamp = CMTimeCompare(&time1, &time2);
                if ((PresentationTimeStamp & 0x80000000) != 0)
                {
                  memset(&time1, 0, sizeof(time1));
                  OUTLINED_FUNCTION_9_19();
                  *&v310.value = *&v313.value;
                  v36 = OUTLINED_FUNCTION_15_13(v313.epoch);
                  CMTimeSubtract(v38, v36, v37);
                  memset(&time2, 0, sizeof(time2));
                  v310 = *(v29 + 64);
                  v309 = time1;
                  v39 = OUTLINED_FUNCTION_13_11();
                  CMTimeAdd(v41, v39, v40);
                  v42 = values + 24 * *(v29 + 92);
                  v43 = *(v42 + 14);
                  v310.epoch = *(v42 + 30);
                  *&v310.value = v43;
                  v309 = *(v29 + 64);
                  v44 = OUTLINED_FUNCTION_13_11();
                  if (!CMTimeCompare(v44, v45))
                  {
                    v46 = values + 24 * *(v29 + 92);
                    epoch = time2.epoch;
                    *(v46 + 14) = *&time2.value;
                    *(v46 + 30) = epoch;
                  }

                  *(v29 + 64) = time2;
                  *(v29 + 120) = *v20;
                  *(v29 + 136) = *(v20 + 16);
                  PresentationTimeStamp = CMBufferQueueCallForEachBuffer(*(v29 + 56), saig_AdjustTime, v29);
                }
              }
            }

            v29 = *(v29 + 8);
          }

          while (v29);
          v28 = values;
          v48 = (values + 320);
          v49 = *(values + 40);
          if (v49)
          {
            while (*(v49 + 48) != *(a3 + 48) || (*(v49 + 76) & 0x1D) != 1)
            {
              v49 = *(v49 + 8);
              if (!v49)
              {
                goto LABEL_34;
              }
            }

            v52 = *(v49 + 64);
            *(a3 + 80) = *(v49 + 80);
            *(a3 + 64) = v52;
          }
        }

        else
        {
          v48 = (values + 320);
        }

LABEL_34:
        if ((*(a3 + 76) & 0x1D) == 1)
        {
          v53 = *v48;
          if (v53)
          {
            while (*(v53 + 48) != *(a3 + 48) || (*(v53 + 76) & 0x1D) != 1 || (*(v53 + 108) & 1) == 0)
            {
              v53 = *(v53 + 8);
              if (!v53)
              {
                goto LABEL_61;
              }
            }

            v84 = *(v53 + 96);
            *(a3 + 112) = *(v53 + 112);
            *(a3 + 96) = v84;
          }

LABEL_61:
          v85 = &v28[24 * *(a3 + 92)];
          v17 = *(a3 + 64);
          v85[15].n128_u64[0] = *(a3 + 80);
          v85[14] = v17;
          if (*(a3 + 93) && (OUTLINED_FUNCTION_33(), v50))
          {
            if (*(a3 + 88) == 6)
            {
              continue;
            }

            v51 = 6;
          }

          else
          {
            if (*(a3 + 88) == 2)
            {
              continue;
            }

            v51 = 2;
          }

          goto LABEL_68;
        }

        if (*(a3 + 93))
        {
          v54 = *(a3 + 92);
          if (*(a3 + 28) == 1986618469)
          {
            if ((v28[24 * *(a3 + 92) + 476] & 1) == 0)
            {
LABEL_53:
              v28 = values;
              v71 = *(a3 + 92);
              v72 = values + 24 * *(a3 + 92);
              if (v72[236])
              {
                v73 = *(v72 + 14);
                *(a3 + 80) = *(v72 + 30);
                *(a3 + 64) = v73;
              }

              v74 = *(a3 + 76);
              if (v71 == 2 && (v74 & 1) == 0)
              {
                v75 = MEMORY[0x1E6960C68];
                *(a3 + 80) = *(MEMORY[0x1E6960C68] + 16);
                *(a3 + 64) = *v75;
                v76 = MEMORY[0x1E6960C70];
                *(a3 + 96) = *MEMORY[0x1E6960C70];
                *(a3 + 112) = *(v76 + 16);
                v74 = *(a3 + 76);
              }

              if ((v74 & 1) == 0)
              {
                OUTLINED_FUNCTION_1_47();
                *&time1.value = *&v307.value;
                v77 = OUTLINED_FUNCTION_0_56(v307.epoch);
                CMTimeSubtract(v79, v77, v78);
                OUTLINED_FUNCTION_17_9();
                *&v313.value = *(a3 + 64);
                v313.epoch = v80;
                *&time1.value = *(a3 + 160);
                v81 = OUTLINED_FUNCTION_0_56(*(a3 + 176));
                CMTimeSubtract(v83, v81, v82);
                OUTLINED_FUNCTION_17_9();
                v28 = values;
              }

              goto LABEL_61;
            }

            v55 = OUTLINED_FUNCTION_22_9();
            v313.epoch = v56;
            *&v313.value = v55;
            *&time1.value = *v57;
            v59 = OUTLINED_FUNCTION_0_56(*(v58 + 408));
            PresentationTimeStamp = CMTimeSubtract(v61, v59, v60);
            goto LABEL_50;
          }
        }

        else
        {
          v54 = *(a3 + 92);
        }

        if ((v28[24 * v54 + 476] & 1) == 0)
        {
          if (v28[380])
          {
            v70 = *(v28 + 23);
            *(a3 + 112) = *(v28 + 48);
            *(a3 + 96) = v70;
            goto LABEL_53;
          }

          *(a3 + 96) = *v20;
          v62 = *(v20 + 16);
          goto LABEL_51;
        }

        v63 = OUTLINED_FUNCTION_22_9();
        outputPresentationTimeStamp.epoch = v64;
        *&outputPresentationTimeStamp.value = v63;
        *&time1.value = *v65;
        time1.epoch = *(v66 + 408);
        CMTimeSubtract(&v313, &outputPresentationTimeStamp, &time1);
        *&time1.value = *v20;
        v67 = OUTLINED_FUNCTION_0_56(*(v20 + 16));
        PresentationTimeStamp = CMTimeMaximum(v69, v67, v68);
LABEL_50:
        *(a3 + 96) = *&outputPresentationTimeStamp.value;
        v62 = outputPresentationTimeStamp.epoch;
LABEL_51:
        *(a3 + 112) = v62;
        goto LABEL_53;
      case 2:
        OUTLINED_FUNCTION_33();
        if (!v50)
        {
          goto LABEL_31;
        }

        if ((a4 & 1) == 0)
        {
          goto LABEL_161;
        }

        PresentationTimeStamp = CMBufferQueueEnqueue(*(a3 + 56), a6);
        if (PresentationTimeStamp)
        {
          goto LABEL_216;
        }

        if (*(a3 + 88) != 3)
        {
LABEL_31:
          v51 = 3;
LABEL_68:
          *(a3 + 88) = v51;
        }

        continue;
      case 3:
        OUTLINED_FUNCTION_26_11();
        if (v50)
        {
          if (*(a3 + 92) == 1)
          {
            v86 = *(a3 + 152);
            if (!v86 || !saig_ensureDecryptorIsReady(v86)) && (*(a3 + 132))
            {
              OUTLINED_FUNCTION_4_40();
              OUTLINED_FUNCTION_1_47();
              v87 = OUTLINED_FUNCTION_7_21();
              if (CMTimeCompare(v87, v88) >= 1)
              {
                v89 = *(values + 12);
                v90 = *(*(CMBaseObjectGetVTable() + 16) + 8);
                if (v90)
                {
                  v90(v89, 1, 1);
                }
              }
            }
          }
        }

        OUTLINED_FUNCTION_33();
        if (v50)
        {
          if (*(values + 43) == 2)
          {
            v91 = *(a3 + 152);
            if (!v91 || !saig_ensureDecryptorIsReady(v91)) && (*(a3 + 132))
            {
              OUTLINED_FUNCTION_4_40();
              OUTLINED_FUNCTION_1_47();
              v92 = OUTLINED_FUNCTION_7_21();
              if (CMTimeCompare(v92, v93) >= 1)
              {
                v94 = *(values + 12);
                v95 = *(*(CMBaseObjectGetVTable() + 16) + 8);
                if (v95)
                {
                  v95(v94, 0, 1);
                }
              }
            }
          }
        }

        if (*(values + 9))
        {
          goto LABEL_161;
        }

        v26 = *(a3 + 48);
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        v97 = *(DerivedStorage + 320);
        if (v97)
        {
          v98 = 0;
          while (1)
          {
            v99 = *(v97 + 152);
            if (v99 && saig_ensureDecryptorIsReady(v99))
            {
              goto LABEL_160;
            }

            if (*(v97 + 48) == v26)
            {
              if ((*(v97 + 76) & 1) != 0 || *(v97 + 144))
              {
                v98 |= 1 << *(v97 + 92);
              }

              if (!*(v97 + 93) && !*(v97 + 144))
              {
                if (!*(v97 + 32))
                {
                  break;
                }

                if (!*(v97 + 88))
                {
                  break;
                }

                if (!*(v97 + 28))
                {
                  break;
                }

                if ((*(v97 + 132) & 1) == 0)
                {
                  break;
                }

                outputPresentationTimeStamp = *(v97 + 120);
                v313 = *(v97 + 96);
                v100 = OUTLINED_FUNCTION_7_21();
                if (CMTimeCompare(v100, v101) < 1)
                {
                  break;
                }
              }
            }

            v97 = *(v97 + 8);
            if (!v97)
            {
              v102 = 0;
              goto LABEL_156;
            }
          }

          v102 = 1;
        }

        else
        {
          v102 = 0;
          v98 = 0;
        }

LABEL_156:
        if (*(DerivedStorage + 344) >= 2 && ((*(DerivedStorage + 352) ^ v98) & 7) != 0)
        {
          v102 = 1;
        }

        if ((v102 & 1) == 0)
        {
          v21 = 0;
          v25 = 0;
          OUTLINED_FUNCTION_19_12();
          *(values + 9) = 1;
          goto LABEL_174;
        }

LABEL_160:
        CMBufferQueueEnqueue(*(a3 + 56), a6);
LABEL_161:
        v25 = 0;
        OUTLINED_FUNCTION_19_12();
        v21 = 1;
        goto LABEL_174;
      case 6:
        SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(a6, 0);
        if (SampleAttachmentsArray)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(SampleAttachmentsArray, 0);
          if (ValueAtIndex)
          {
            v105 = ValueAtIndex;
            if (CFDictionaryContainsKey(ValueAtIndex, key))
            {
              if (CFDictionaryGetValue(v105, key) != v282)
              {
                goto LABEL_161;
              }
            }
          }
        }

        v106 = values;
        v107 = *(values + 78);
        if (!v107)
        {
          OUTLINED_FUNCTION_19_12();
          v21 = 1;
          goto LABEL_173;
        }

        v21 = 1;
        if (*(values + 548))
        {
          OUTLINED_FUNCTION_19_12();
          goto LABEL_173;
        }

        v310.value = 0;
        *(values + 548) = 1;
        time1.value = 0;
        time2.value = 0;
        LOBYTE(v303.value) = 1;
        LODWORD(v304.value) = 0;
        FigSimpleMutexLock();
        if (*(v106 + 70))
        {
          goto LABEL_114;
        }

        Basic = FigVisualContextCreateBasic(*(v107 + 48), 0, v106 + 70);
        if (Basic)
        {
          goto LABEL_144;
        }

        *(v106 + 72) = *(v106 + 8);
        v139 = *(v106 + 70);
        v140 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (!v140)
        {
          v27 = 4294954514;
          goto LABEL_153;
        }

        Basic = v140(v139, saig_decodedImageBecameAvailable, v106 + 576);
        if (Basic)
        {
LABEL_144:
          v27 = Basic;
LABEL_153:
          FigSimpleMutexUnlock();
          goto LABEL_154;
        }

LABEL_114:
        FigSimpleMutexUnlock();
        PresentationTimeStamp = FAIGCommon_getOutputImagePropertiesForImageRetrieval(*(a3 + 32), *(v107 + 40), 0, &time1, &time2);
        if (PresentationTimeStamp)
        {
          goto LABEL_216;
        }

        FAIGCommon_checkAndUpdateOutputImagePropertiesForImageRetrieval((a3 + 200), time1.value, (a3 + 208), time2.value, &v303);
        if (time2.value)
        {
          CFRelease(time2.value);
          time2.value = 0;
        }

        if (*v284 && !LOBYTE(v303.value))
        {
          v108 = allocator;
          goto LABEL_148;
        }

        saig_ReleaseRenderPipelineForTrack(a3);
        LODWORD(v309.value) = 1111970369;
        Mutable = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v110 = Mutable;
        if (v106[656])
        {
          CFDictionarySetValue(Mutable, v268, value);
        }

        DestinationPixelBufferAttributes = FPSupport_CreateDestinationPixelBufferAttributes(time1.value, SHIDWORD(time1.value), &v309, 1, 0, 1, 0, 0, 0, v278);
        if (DestinationPixelBufferAttributes || (v112 = *(v107 + 48), v113 = *(a3 + 32), CMTimeMake(&outputPresentationTimeStamp, 1, 30), CMTimeMake(&v313, 1, 30), DestinationPixelBufferAttributes = FAIGCommon_createRenderPipelineOptions(v112, v113, 0, &outputPresentationTimeStamp, &v313, (a3 + 216)), DestinationPixelBufferAttributes))
        {
          v27 = DestinationPixelBufferAttributes;
        }

        else
        {
          FigSimpleMutexLock();
          v27 = FigVideoRenderPipelineCreateWithVisualContext(*(v107 + 48), v110, *v278, *(a3 + 208), 1, *(v106 + 70), 0, *(a3 + 216), v284);
          FigSimpleMutexUnlock();
          if (!v27)
          {
            Int32IfPresent = *(a3 + 32);
            v108 = allocator;
            if (Int32IfPresent)
            {
              CMFormatDescriptionGetExtensions(Int32IfPresent);
              Int32IfPresent = FigCFDictionaryGetInt32IfPresent();
              if (Int32IfPresent)
              {
                if (SLODWORD(v304.value) >= 2)
                {
                  v122 = OUTLINED_FUNCTION_14_15(Int32IfPresent, v114, v115, v116, v117, v118, v119, v120, sampleTimingArray, numSampleSizeEntries, sampleSizeArray, v248, v250, v252, v254, v256, v258, v260, v262, v264, v266, v268, v270, value, valuePtr, v276, v278, allocator, v282, v284);
                  v123 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                  if (!v123)
                  {
                    goto LABEL_145;
                  }

                  Int32IfPresent = v123(v122, v256, v254);
                  if (Int32IfPresent)
                  {
                    goto LABEL_139;
                  }
                }
              }
            }

            v124 = *(v106 + 81);
            if (v124)
            {
              v125 = OUTLINED_FUNCTION_14_15(Int32IfPresent, v114, v115, v116, v117, v118, v119, v120, sampleTimingArray, numSampleSizeEntries, sampleSizeArray, v248, v250, v252, v254, v256, v258, v260, v262, v264, v266, v268, v270, value, valuePtr, v276, v278, allocator, v282, v284);
              v126 = *(*(CMBaseObjectGetVTable() + 8) + 56);
              if (!v126)
              {
                goto LABEL_145;
              }

              Int32IfPresent = v126(v125, v264, v124);
              if (Int32IfPresent)
              {
                goto LABEL_139;
              }
            }

            v127 = OUTLINED_FUNCTION_14_15(Int32IfPresent, v114, v115, v116, v117, v118, v119, v120, sampleTimingArray, numSampleSizeEntries, sampleSizeArray, v248, v250, v252, v254, v256, v258, v260, v262, v264, v266, v268, v270, value, valuePtr, v276, v278, allocator, v282, v284);
            v128 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v128)
            {
              Int32IfPresent = v128(v127, v260, v108, a3 + 192);
              if (!Int32IfPresent)
              {
                v136 = OUTLINED_FUNCTION_14_15(Int32IfPresent, v129, v130, v131, v132, v133, v134, v135, sampleTimingArray, numSampleSizeEntries, sampleSizeArray, v248, v250, v252, v254, v256, v258, v260, v262, v264, v266, v268, v270, value, valuePtr, v276, v278, allocator, v282, v284);
                v137 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                if (v137)
                {
                  v137(v136, v252, value);
                }

                CMNotificationCenterGetDefaultLocalCenter();
                Int32IfPresent = CMNotificationCenterAddListener();
              }

LABEL_139:
              v27 = Int32IfPresent;
              if (!v110)
              {
                goto LABEL_147;
              }

              goto LABEL_146;
            }

LABEL_145:
            v27 = 4294954514;
            if (!v110)
            {
              goto LABEL_147;
            }

            goto LABEL_146;
          }
        }

        v108 = allocator;
        if (v110)
        {
LABEL_146:
          CFRelease(v110);
        }

LABEL_147:
        if (v27)
        {
          goto LABEL_154;
        }

LABEL_148:
        if ((*(a3 + 132) & 1) == 0)
        {
          goto LABEL_167;
        }

        OUTLINED_FUNCTION_4_40();
        v313 = *&keys[1];
        v141 = OUTLINED_FUNCTION_7_21();
        if (CMTimeCompare(v141, v142) < 1)
        {
          v143 = 1.0;
          if (*valuePtr >= 0.0)
          {
            goto LABEL_167;
          }
        }

        else
        {
          CMSetAttachment(a6, v270, value, 1u);
          v143 = -1.0;
          if (*valuePtr <= 0.0)
          {
            goto LABEL_167;
          }
        }

        *valuePtr = v143;
        v144 = CFNumberCreate(v108, kCFNumberFloatType, valuePtr);
        if (v144)
        {
          v152 = v144;
          v153 = OUTLINED_FUNCTION_14_15(v144, v145, v146, v147, v148, v149, v150, v151, sampleTimingArray, numSampleSizeEntries, sampleSizeArray, v248, v250, v252, v254, v256, v258, v260, v262, v264, v266, v268, v270, value, valuePtr, v276, v278, allocator, v282, v284);
          v154 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (!v154)
          {
            CFRelease(v152);
            v26 = 0;
            v27 = 4294954514;
            goto LABEL_210;
          }

          v27 = v154(v153, v258, v152);
          CFRelease(v152);
          if (v27)
          {
LABEL_154:
            v26 = 0;
            goto LABEL_210;
          }
        }

LABEL_167:
        PresentationTimeStamp = CMBufferQueueEnqueue(*(a3 + 192), a6);
        if (PresentationTimeStamp)
        {
LABEL_216:
          v27 = PresentationTimeStamp;
          goto LABEL_154;
        }

        v155 = CFDictionaryCreate(v108, keys, &values, 1, MEMORY[0x1E695E9D8], 0);
        v26 = v155;
        if (!v155)
        {
          fig_log_get_emitter();
          v159 = FigSignalErrorAtGM();
          goto LABEL_214;
        }

        v156 = values;
        v157 = MEMORY[0x1E6960C70];
        *(values + 584) = *MEMORY[0x1E6960C70];
        v156[75] = *(v157 + 16);
        v158 = v156[77];
        v156[77] = v155;
        CFRetain(v155);
        if (v158)
        {
          CFRelease(v158);
        }

        v159 = CMSampleBufferCreate(v108, 0, 1u, 0, 0, 0, 0, 0, 0, 0, 0, &v310);
        if (v159)
        {
          goto LABEL_214;
        }

        CMSetAttachment(v310.value, v276, v26, 1u);
        v27 = CMBufferQueueEnqueue(*(a3 + 192), v310.value);
        CFRelease(v310.value);
LABEL_173:
        v25 = 1;
LABEL_174:
        if ((*(a3 + 76) & 0x1D) == 1)
        {
          memset(&v304, 0, sizeof(v304));
          memset(&v303, 0, sizeof(v303));
          CMSampleBufferGetOutputDuration(&v303, a6);
          v160 = CMSampleBufferGetOutputPresentationTimeStamp(&outputPresentationTimeStamp, a6);
          v307 = outputPresentationTimeStamp;
          if ((v303.flags & 0x1D) == 1)
          {
            OUTLINED_FUNCTION_21_8(v160, v161, v162, v163, v164, v165, v166, v167, sampleTimingArray, numSampleSizeEntries, sampleSizeArray, v248, v250, v252, v254, v256, v258, v260, v262, v264, v266, v268, v270, value, valuePtr, v276, v278, allocator, v282, v284, v286, key, v289, v291, v292, v294, v295, v297, v298, v299.value, *&v299.timescale, v299.epoch, v300.value, *&v300.timescale, v300.epoch, v301, v302.value, *&v302.timescale, v302.epoch, v303.value, *&v303.timescale, v303.epoch, v304.value, *&v304.timescale, v304.epoch, keys[0], keys[1], keys[2], keys[3], v306, *&outputPresentationTimeStamp.value, v307.value);
            v313 = v303;
            v168 = OUTLINED_FUNCTION_7_21();
            CMTimeAdd(v170, v168, v169);
          }

          else
          {
            v304 = v307;
          }

          if (*(a3 + 93) && ((OUTLINED_FUNCTION_33(), v50) ? (v171 = v25) : (v171 = 0), (v171 & 1) != 0) || (*(a3 + 132) & 1) == 0 || (OUTLINED_FUNCTION_4_40(), v313 = v304, v172 = OUTLINED_FUNCTION_7_21(), CMTimeCompare(v172, v173) < 0))
          {
            *(a3 + 120) = v304;
          }

          OUTLINED_FUNCTION_26_11();
          if (v50 || (OUTLINED_FUNCTION_33(), v50) && *(a3 + 88) == 6)
          {
            memset(&v302, 0, sizeof(v302));
            CMSampleBufferGetPresentationTimeStamp(&outputPresentationTimeStamp, a6);
            OUTLINED_FUNCTION_20_7();
            v174 = OUTLINED_FUNCTION_7_21();
            CMTimeAdd(v176, v174, v175);
            memset(&v300, 0, sizeof(v300));
            memset(&v299, 0, sizeof(v299));
            Duration = CMSampleBufferGetDuration(&v299, a6);
            if (v299.flags)
            {
              OUTLINED_FUNCTION_23_10(Duration, v178, v179, v180, v181, v182, v183, v184, sampleTimingArray, numSampleSizeEntries, sampleSizeArray, v248, v250, v252, v254, v256, v258, v260, v262, v264, v266, v268, v270, value, valuePtr, v276, v278, allocator, v282, v284, v286, key, v289, v291, v292, v294, v295, v297, v298, v299.value, *&v299.timescale, v299.epoch, v300.value, *&v300.timescale, v300.epoch, v301, v185, v302.value);
              v313 = v299;
              v186 = OUTLINED_FUNCTION_7_21();
              CMTimeAdd(v188, v186, v187);
            }

            else
            {
              v300 = v302;
            }

            outputPresentationTimeStamp = v300;
            OUTLINED_FUNCTION_1_47();
            v189 = OUTLINED_FUNCTION_7_21();
            v191 = CMTimeCompare(v189, v190);
            if (v191 & 0x80000000) == 0 && (*(values + 24 * *(a3 + 92) + 476))
            {
              OUTLINED_FUNCTION_23_10(v191, v192, v193, v194, v195, v196, v197, v198, sampleTimingArray, numSampleSizeEntries, sampleSizeArray, v248, v250, v252, v254, v256, v258, v260, v262, v264, v266, v268, v270, value, valuePtr, v276, v278, allocator, v282, v284, v286, key, v289, v291, v292, v294, v295, v297, v298, v299.value, *&v299.timescale, v299.epoch, v300.value, *&v300.timescale, v300.epoch, v301, v199, v302.value);
              OUTLINED_FUNCTION_1_47();
              v200 = OUTLINED_FUNCTION_7_21();
              v202 = CMTimeCompare(v200, v201);
              if ((v202 & 0x80000000) != 0)
              {
                v302 = *(a3 + 96);
              }

              v210 = values;
              v211 = values + 464;
              v212 = values + 24 * *(a3 + 92) + 464;
              v296 = v302;
              v213 = *v212;
              v290 = *v212;
              v293 = *(v212 + 2);
              v214 = values + 440;
              v215 = *(values + 113);
              if (v215)
              {
                memset(&outputPresentationTimeStamp, 0, sizeof(outputPresentationTimeStamp));
                OUTLINED_FUNCTION_18_8(v202, v203, v204, v205, v206, v207, v208, v209, sampleTimingArraya, numSampleSizeEntriesa, sampleSizeArraya, v249, v251, v253, v255, v257, v259, v261, v263, v265, v267, v269, v271, valuea, valuePtra, v277, v279, allocatora, v283, v285, v286, keya, v213, v290);
                *&time1.value = *(v210 + 26);
                v216 = OUTLINED_FUNCTION_0_56(*(v210 + 54));
                CMTimeSubtract(v218, v216, v217);
                memset(&v313, 0, sizeof(v313));
                time1 = v296;
                *&time2.value = *v214;
                v219 = OUTLINED_FUNCTION_16_11(*(v214 + 2));
                CMTimeSubtract(v221, v219, v220);
                memset(&time1, 0, sizeof(time1));
                memset(&time2, 0, sizeof(time2));
                CMTimeMake(&time2, 1, 1);
                OUTLINED_FUNCTION_10_19();
                v309.epoch = v222;
                v223 = OUTLINED_FUNCTION_13_11();
                if (CMTimeCompare(v223, v224) < 0)
                {
                  v310 = v313;
                  *&v309.value = *&outputPresentationTimeStamp.value;
                  v225 = outputPresentationTimeStamp.epoch;
                }

                else
                {
                  OUTLINED_FUNCTION_10_19();
                }

                v309.epoch = v225;
                v226 = OUTLINED_FUNCTION_13_11();
                CMTimeSubtract(v228, v226, v227);
                v310 = time1;
                v309 = time2;
                v229 = OUTLINED_FUNCTION_13_11();
                v202 = CMTimeCompare(v229, v230);
                if ((v202 & 0x80000000) == 0)
                {
                  v231 = MEMORY[0x1E6960C70];
                  v213 = *MEMORY[0x1E6960C70];
                  *v214 = *MEMORY[0x1E6960C70];
                  v232 = *(v231 + 16);
                  *(v214 + 2) = v232;
                  *(v210 + 26) = v213;
                  *(v210 + 54) = v232;
                }

                v215 = *(v210 + 113);
              }

              if ((v215 & 1) == 0)
              {
                OUTLINED_FUNCTION_18_8(v202, v203, v204, v205, v206, v207, v208, v209, sampleTimingArraya, numSampleSizeEntriesa, sampleSizeArraya, v249, v251, v253, v255, v257, v259, v261, v263, v265, v267, v269, v271, valuea, valuePtra, v277, v279, allocatora, v283, v285, v286, keya, v213, v290);
                *&time1.value = *&v296.value;
                v233 = OUTLINED_FUNCTION_0_56(v296.epoch);
                CMTimeSubtract(v235, v233, v234);
                *(v210 + 392) = outputPresentationTimeStamp;
                *v214 = v296;
                *(v210 + 26) = v290;
                *(v210 + 54) = v293;
              }

              v236 = 0;
              v237 = *MEMORY[0x1E6960C70];
              v238 = *(MEMORY[0x1E6960C70] + 16);
              do
              {
                v239 = &v211[v236];
                *v239 = v237;
                *(v239 + 2) = v238;
                v236 += 24;
              }

              while (v236 != 72);
            }
          }
        }

        if ((v21 & 1) == 0)
        {
          v240 = *(values + 78);
          if (v240)
          {
            v159 = saig_RequestAnImageFromPump(v286, v240);
LABEL_214:
            v27 = v159;
          }
        }

LABEL_210:
        if (v26)
        {
          CFRelease(v26);
        }

        return v27;
      default:
        goto LABEL_174;
    }
  }
}

uint64_t saig_CancelAllCGImageAsyncRequests_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t saig_processImageRequestThread_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t saig_NewTrackNote_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigBufferedAirPlaySubPipeManagerCreate(const __CFAllocator *a1, const void *a2, const void *a3, const void *a4, const __CFDictionary *a5, void *a6)
{
  v49 = *MEMORY[0x1E69E9840];
  value = 0;
  v45 = 0;
  memset(&v43, 0, sizeof(v43));
  CMTimeMake(&v43, 0, 1000);
  memset(&v42, 0, sizeof(v42));
  CMTimeMake(&v42, 1, 1000);
  BOOLean = 0;
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  v11 = a2;
  fig_note_initialize_category_with_default_work_cf();
  if (!a2 || !a3 || !a5 || !a6)
  {
    OUTLINED_FUNCTION_5_8();
    v24 = FigSignalErrorAtGM();
    goto LABEL_46;
  }

  v12 = a6;
  if (qword_1ED4CA7F8 != -1)
  {
    dispatch_once(&qword_1ED4CA7F8, &__block_literal_global_159);
  }

  v13 = a1;
  if (qword_1ED4CA7E8 != -1)
  {
    dispatch_once(&qword_1ED4CA7E8, &__block_literal_global_21);
  }

  CMDerivedObjectCreate();
  if (!v45)
  {
    goto LABEL_44;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 184) = 0;
  *(DerivedStorage + 40) = CFRetain(a3);
  v15 = FigDispatchQueueCreateWithPriority();
  *(DerivedStorage + 80) = v15;
  if (!v15)
  {
    goto LABEL_44;
  }

  v16 = FigDispatchQueueCreateWithPriority();
  *(DerivedStorage + 88) = v16;
  if (!v16)
  {
    goto LABEL_44;
  }

  v17 = FigDispatchQueueCreateWithPriority();
  *(DerivedStorage + 32) = v17;
  if (!v17)
  {
    goto LABEL_44;
  }

  v18 = a4;
  if (a4)
  {
    v18 = CFRetain(a4);
  }

  *(DerivedStorage + 48) = v18;
  *(DerivedStorage + 56) = 0xC12E847FC0000000;
  *(DerivedStorage + 64) = 0;
  *(DerivedStorage + 216) = 0;
  v19 = MEMORY[0x1E6960C70];
  v20 = *MEMORY[0x1E6960C70];
  *(DerivedStorage + 232) = *MEMORY[0x1E6960C70];
  v21 = *(v19 + 16);
  *(DerivedStorage + 248) = v21;
  *(DerivedStorage + 256) = v20;
  *(DerivedStorage + 272) = v21;
  *(DerivedStorage + 280) = v20;
  *(DerivedStorage + 296) = v21;
  *(DerivedStorage + 320) = v21;
  *(DerivedStorage + 304) = v20;
  *(DerivedStorage + 344) = v21;
  *(DerivedStorage + 328) = v20;
  *(DerivedStorage + 352) = v20;
  *(DerivedStorage + 368) = v21;
  *(DerivedStorage + 376) = 0;
  *(DerivedStorage + 384) = 0;
  *(DerivedStorage + 388) = v20;
  *(DerivedStorage + 404) = v21;
  *(DerivedStorage + 416) = 0u;
  *(DerivedStorage + 432) = 0u;
  *(DerivedStorage + 448) = 0;
  *(DerivedStorage + 544) = v20;
  *(DerivedStorage + 560) = v21;
  *(DerivedStorage + 520) = v20;
  *(DerivedStorage + 536) = v21;
  *(DerivedStorage + 456) = 0;
  *(DerivedStorage + 512) = 0;
  *(DerivedStorage + 72) = 1;
  *(DerivedStorage + 576) = 0;
  *(DerivedStorage + 596) = v21;
  *cfa = v20;
  *(DerivedStorage + 580) = v20;
  CMBaseObject = FigBufferedAirPlayOutputGetCMBaseObject(*(DerivedStorage + 40));
  v23 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v23)
  {
    goto LABEL_25;
  }

  v24 = v23(CMBaseObject, @"ALACIsAllowed", *MEMORY[0x1E695E480], &BOOLean);
  if (v24)
  {
LABEL_46:
    v32 = v24;
    goto LABEL_26;
  }

  v25 = BOOLean;
  if (BOOLean)
  {
    v25 = CFBooleanGetValue(BOOLean);
  }

  *(DerivedStorage + 224) = v25;
  v26 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  *(DerivedStorage + 24) = v26;
  if (!v26)
  {
LABEL_44:
    v32 = 4294954510;
    goto LABEL_26;
  }

  CallbacksForUnsortedSampleBuffers = CMBufferQueueGetCallbacksForUnsortedSampleBuffers();
  v24 = CMBufferQueueCreate(v13, 0, CallbacksForUnsortedSampleBuffers, (DerivedStorage + 128));
  if (v24)
  {
    goto LABEL_46;
  }

  v28 = *(DerivedStorage + 128);
  v48 = v42;
  v46 = v43;
  v24 = FigSampleBufferConsumerCreateForBufferQueue(v28, &v48.value, &v46.value, (DerivedStorage + 96));
  if (v24)
  {
    goto LABEL_46;
  }

  v24 = CMBufferQueueInstallTriggerWithIntegerThreshold(*(DerivedStorage + 128), fbapspManager_sourceDataBecameReady, *(DerivedStorage + 24), 11, 0, (DerivedStorage + 136));
  if (v24)
  {
    goto LABEL_46;
  }

  v24 = FigSampleBufferConsumerCreateForSampleBufferConsumer("sbcMediator", (DerivedStorage + 104));
  if (v24)
  {
    goto LABEL_46;
  }

  v29 = *(DerivedStorage + 104);
  v30 = *(DerivedStorage + 24);
  v31 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v31)
  {
LABEL_25:
    v32 = 4294954514;
    goto LABEL_26;
  }

  v24 = v31(v29, fbapspManager_mediatorLowWaterTriggerCallback, v30, DerivedStorage + 144);
  if (v24)
  {
    goto LABEL_46;
  }

  v34 = CMBufferQueueGetCallbacksForUnsortedSampleBuffers();
  v24 = CMBufferQueueCreate(v13, 0, v34, (DerivedStorage + 200));
  if (v24)
  {
    goto LABEL_46;
  }

  v35 = CMBufferQueueGetCallbacksForUnsortedSampleBuffers();
  v24 = CMBufferQueueCreate(v13, 0, v35, (DerivedStorage + 208));
  if (v24)
  {
    goto LABEL_46;
  }

  *(DerivedStorage + 112) = CFRetain(v11);
  *(DerivedStorage + 152) = 0;
  *(DerivedStorage + 154) = 0;
  *(DerivedStorage + 156) = 1;
  *DerivedStorage = 0;
  if (CFDictionaryGetValueIfPresent(a5, @"LoggingID", &value))
  {
    CFStringGetCString(value, DerivedStorage, 20, 0x600u);
  }

  OUTLINED_FUNCTION_46_4((DerivedStorage + 460));
  *(DerivedStorage + 484) = *cfa;
  *(DerivedStorage + 500) = v21;
  *(DerivedStorage + 508) = 1;
  if (dword_1ED4CA7E4)
  {
    CMTimeMake(&v48, dword_1ED4CA7E4, 1000);
    *(DerivedStorage + 484) = v48;
    if (_MergedGlobals_39)
    {
      *(DerivedStorage + 508) = 2;
    }
  }

  if (dword_1EAF16F18)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_7_22();
    if (DerivedStorage != -484)
    {
      v37 = v45;
      if (v45)
      {
        CMBaseObjectGetDerivedStorage();
      }

      LODWORD(v46.value) = 136315906;
      *(&v46.value + 4) = "FigBufferedAirPlaySubPipeManagerCreate";
      LOWORD(v46.flags) = 2048;
      *(&v46.flags + 2) = v37;
      OUTLINED_FUNCTION_60_5();
      v47 = v38;
      OUTLINED_FUNCTION_4_41();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_524();
  }

  v32 = 0;
  *v12 = v45;
  v45 = 0;
LABEL_26:
  if (BOOLean)
  {
    CFRelease(BOOLean);
  }

  fbapspManager_releaseAsync(v45);
  return v32;
}

void fbapspManager_sourceDataBecameReady()
{
  v0 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v0)
  {
    v1 = v0;
    if (!*(CMBaseObjectGetDerivedStorage() + 456))
    {
      CFRetain(v1);
      OUTLINED_FUNCTION_2_49();
      OUTLINED_FUNCTION_43_7();
      v4 = __fbapspManager_sourceDataBecameReady_block_invoke;
      v5 = &__block_descriptor_tmp_220;
      v6 = v1;
      dispatch_async(v2, block);
    }

    CFRelease(v1);
  }
}

void fbapspManager_mediatorLowWaterTriggerCallback()
{
  v0 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v0)
  {
    v1 = v0;
    if (!*(CMBaseObjectGetDerivedStorage() + 456))
    {
      CFRetain(v1);
      OUTLINED_FUNCTION_2_49();
      OUTLINED_FUNCTION_43_7();
      v4 = __fbapspManager_mediatorLowWaterTriggerCallback_block_invoke;
      v5 = &__block_descriptor_tmp_221;
      v6 = v1;
      dispatch_async(v2, block);
    }

    CFRelease(v1);
  }
}

void fbapspManager_releaseAsync(uint64_t a1)
{
  if (a1)
  {
    dispatch_get_global_queue(0, 0);
    OUTLINED_FUNCTION_2_49();
    OUTLINED_FUNCTION_43_7();
    v4 = __fbapspManager_releaseAsync_block_invoke;
    v5 = &__block_descriptor_tmp_222;
    v6 = a1;
    dispatch_async(v2, block);
  }
}

uint64_t fbapspManager_invalidate(uint64_t a1)
{
  v81 = *MEMORY[0x1E69E9840];
  v65 = 0;
  v66 = &v65;
  v67 = 0x2000000000;
  LODWORD(v68) = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF16F18)
  {
    v4 = OUTLINED_FUNCTION_38_6();
    OUTLINED_FUNCTION_64_5(v4, v5, v6, v7, v8, v9, v10, v11, v56, v57, v58, block, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72);
    OUTLINED_FUNCTION_40();
    if (v1)
    {
      if (a1)
      {
        v12 = CMBaseObjectGetDerivedStorage();
      }

      else
      {
        v12 = "";
      }

      if (*(DerivedStorage + 456))
      {
        v13 = 116;
      }

      else
      {
        v13 = 102;
      }

      v73 = 136315906;
      v74 = "fbapspManager_invalidate";
      v75 = 2048;
      v76 = a1;
      v77 = 2082;
      v78 = v12;
      v79 = 1024;
      v80 = v13;
      OUTLINED_FUNCTION_66();
      OUTLINED_FUNCTION_12_17();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_414();
  }

  if (!*(DerivedStorage + 456))
  {
    if (*(DerivedStorage + 154) && *(DerivedStorage + 156) == 4)
    {
      if (dword_1EAF16F18)
      {
        v14 = OUTLINED_FUNCTION_38_6();
        OUTLINED_FUNCTION_64_5(v14, v15, v16, v17, v18, v19, v20, v21, v56, v57, v58, block, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72);
        OUTLINED_FUNCTION_40();
        if (v1)
        {
          if (a1)
          {
            v22 = CMBaseObjectGetDerivedStorage();
          }

          else
          {
            v22 = "";
          }

          v73 = 136315650;
          v74 = "fbapspManager_tapToRadar";
          v75 = 2048;
          v76 = a1;
          v77 = 2082;
          v78 = v22;
          OUTLINED_FUNCTION_66();
          OUTLINED_FUNCTION_12_17();
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_414();
      }

      *(DerivedStorage + 154) = 0;
    }

    *(DerivedStorage + 456) = 1;
    v23 = *(DerivedStorage + 80);
    if (v23)
    {
      dispatch_sync(v23, &__block_literal_global_175);
    }

    v24 = *(DerivedStorage + 88);
    if (v24)
    {
      dispatch_sync(v24, &__block_literal_global_178);
    }

    v25 = *(DerivedStorage + 104);
    v26 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v26)
    {
      v26(v25, @"DownstreamConsumer", 0);
    }

    *(v66 + 6) = 0;
    OUTLINED_FUNCTION_6_31();
    v60 = 0x40000000;
    v61 = __fbapspManager_invalidate_block_invoke_3;
    v62 = &unk_1E7482AB0;
    v63 = &v65;
    v64 = a1;
    dispatch_sync(v27, &block);
    v28 = *(DerivedStorage + 136);
    if (v28)
    {
      CMBufferQueueRemoveTrigger(*(DerivedStorage + 128), v28);
      *(DerivedStorage + 136) = 0;
    }

    v29 = *(DerivedStorage + 144);
    if (v29)
    {
      v30 = *(DerivedStorage + 104);
      v31 = *(*(CMBaseObjectGetVTable() + 16) + 40);
      if (v31)
      {
        v31(v30, v29);
      }

      *(DerivedStorage + 144) = 0;
    }

    v32 = *(DerivedStorage + 40);
    if (v32)
    {
      CFRelease(v32);
      *(DerivedStorage + 40) = 0;
    }

    v33 = *(DerivedStorage + 48);
    if (v33)
    {
      CFRelease(v33);
      *(DerivedStorage + 48) = 0;
    }

    v34 = *(DerivedStorage + 168);
    if (v34)
    {
      CFRelease(v34);
      *(DerivedStorage + 168) = 0;
    }

    v35 = *(DerivedStorage + 176);
    if (v35)
    {
      CFRelease(v35);
      *(DerivedStorage + 176) = 0;
    }

    v36 = *(DerivedStorage + 184);
    if (v36)
    {
      CFRelease(v36);
      *(DerivedStorage + 184) = 0;
    }

    v37 = *(DerivedStorage + 192);
    if (v37)
    {
      CFRelease(v37);
      *(DerivedStorage + 192) = 0;
    }

    v38 = *(DerivedStorage + 96);
    if (v38)
    {
      CFRelease(v38);
      *(DerivedStorage + 96) = 0;
    }

    v39 = *(DerivedStorage + 128);
    if (v39)
    {
      CFRelease(v39);
      *(DerivedStorage + 128) = 0;
    }

    v40 = *(DerivedStorage + 104);
    if (v40)
    {
      CFRelease(v40);
      *(DerivedStorage + 104) = 0;
    }

    v41 = *(DerivedStorage + 112);
    if (v41)
    {
      CFRelease(v41);
      *(DerivedStorage + 112) = 0;
    }

    v42 = *(DerivedStorage + 200);
    if (v42)
    {
      CFRelease(v42);
      *(DerivedStorage + 200) = 0;
    }

    v43 = *(DerivedStorage + 208);
    if (v43)
    {
      CFRelease(v43);
      *(DerivedStorage + 208) = 0;
    }

    v44 = *(DerivedStorage + 64);
    if (v44)
    {
      CFRelease(v44);
      *(DerivedStorage + 64) = 0;
    }

    v45 = *(DerivedStorage + 216);
    if (v45)
    {
      CFRelease(v45);
      *(DerivedStorage + 216) = 0;
    }

    v46 = *(DerivedStorage + 376);
    if (v46)
    {
      CFRelease(v46);
      *(DerivedStorage + 376) = 0;
    }

    v47 = *(DerivedStorage + 568);
    if (v47)
    {
      CFRelease(v47);
      *(DerivedStorage + 568) = 0;
    }

    v48 = *(DerivedStorage + 416);
    if (v48)
    {
      CFRelease(v48);
      *(DerivedStorage + 416) = 0;
    }

    v49 = *(DerivedStorage + 424);
    if (v49)
    {
      CFRelease(v49);
      *(DerivedStorage + 424) = 0;
    }

    v50 = *(DerivedStorage + 432);
    if (v50)
    {
      CFRelease(v50);
      *(DerivedStorage + 432) = 0;
    }

    v51 = *(DerivedStorage + 440);
    if (v51)
    {
      CFRelease(v51);
      *(DerivedStorage + 440) = 0;
    }

    v52 = *(DerivedStorage + 448);
    if (v52)
    {
      CFRelease(v52);
      *(DerivedStorage + 448) = 0;
    }

    v53 = *(DerivedStorage + 608);
    if (v53)
    {
      CFRelease(v53);
      *(DerivedStorage + 608) = 0;
    }

    v54 = *(DerivedStorage + 616);
    if (v54)
    {
      CFRelease(v54);
      *(DerivedStorage + 616) = 0;
    }
  }

  _Block_object_dispose(&v65, 8);
  return 0;
}

void fbapspManager_finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF16F18)
  {
    v4 = OUTLINED_FUNCTION_16_12();
    OUTLINED_FUNCTION_311(v4, v5, v6, v7, v8, v9, v10, v11, v16, v17, v18, v19, SBYTE2(v19), BYTE3(v19), SHIDWORD(v19));
    OUTLINED_FUNCTION_40();
    if (v1)
    {
      if (a1)
      {
        CMBaseObjectGetDerivedStorage();
      }

      OUTLINED_FUNCTION_2_6();
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_12_17();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_414();
  }

  fbapspManager_invalidate(a1);
  v12 = DerivedStorage[10];
  if (v12)
  {
    dispatch_release(v12);
    DerivedStorage[10] = 0;
  }

  v13 = DerivedStorage[11];
  if (v13)
  {
    dispatch_release(v13);
    DerivedStorage[11] = 0;
  }

  v14 = DerivedStorage[4];
  if (v14)
  {
    dispatch_release(v14);
    DerivedStorage[4] = 0;
  }

  v15 = DerivedStorage[3];
  if (v15)
  {
    CFRelease(v15);
  }
}

uint64_t fbapspManager_copyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x2000000000;
  v22 = 0;
  if (!*(CMBaseObjectGetDerivedStorage() + 456))
  {
    OUTLINED_FUNCTION_2_49();
    OUTLINED_FUNCTION_43_7();
    v12 = __fbapspManager_copyProperty_block_invoke;
    v13 = &unk_1E7482BF0;
    v14 = &v19;
    v15 = a1;
    v16 = a2;
    v17 = a3;
    v18 = a4;
    dispatch_sync(v8, block);
  }

  v9 = *(v20 + 6);
  _Block_object_dispose(&v19, 8);
  return v9;
}

uint64_t fbapspManager_clearCurrentSubPipe(void *a1, int a2, int a3)
{
  v51 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v42 = **&MEMORY[0x1E6960C70];
  dictionaryRepresentation = 0;
  v8 = *(DerivedStorage + 120);
  if (v8)
  {
    if (a2)
    {
      v9 = OUTLINED_FUNCTION_106(MEMORY[0x1E6960CC0]);
      v10 = *MEMORY[0x1E695E480];
      *&time.value = v9;
      time.epoch = v11;
      dictionaryRepresentation = CMTimeCopyAsDictionary(&time, v10);
    }

    else
    {
      CMBaseObject = FigBufferedAirPlayAudioChainSubPipeGetCMBaseObject(v8);
      v24 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v24 && !v24(CMBaseObject, @"RemainingInputBufferDuration", *MEMORY[0x1E695E480], &dictionaryRepresentation))
      {
        CMTimeMakeFromDictionary(&v42, dictionaryRepresentation);
      }
    }

    if (dword_1EAF16F18)
    {
      OUTLINED_FUNCTION_147();
      v12 = OUTLINED_FUNCTION_126();
      OUTLINED_FUNCTION_304(v12, v13, v14, v15, v16, v17, v18, v19, v38, v39, v40, v41, SBYTE2(v41), BYTE3(v41), SHIDWORD(v41));
      OUTLINED_FUNCTION_46();
      if (v3)
      {
        if (a1)
        {
          v20 = CMBaseObjectGetDerivedStorage();
        }

        else
        {
          v20 = "";
        }

        time = v42;
        CMTimeGetSeconds(&time);
        v44 = 136315906;
        OUTLINED_FUNCTION_37_6();
        v45 = a1;
        v46 = 2082;
        v47 = v20;
        v48 = v25;
        v49 = v26;
        OUTLINED_FUNCTION_100();
        OUTLINED_FUNCTION_10_3();
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_238_0();
    }

    fbapspManager_postNotification(a1, @"SubPipeFinished", dictionaryRepresentation);
    v27 = *(DerivedStorage + 384) != 2;
    v28 = *(DerivedStorage + 120);
    v29 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v29)
    {
      v30 = v29(v28, v27);
      if (v30)
      {
        goto LABEL_37;
      }

      v31 = *(DerivedStorage + 120);
      v32 = *(*(CMBaseObjectGetVTable() + 16) + 40);
      if (v32)
      {
        v30 = v32(v31, v27);
        if (v30)
        {
          goto LABEL_37;
        }

        v30 = fbapspManager_removeListenersForSubPipe(a1, *(DerivedStorage + 120));
        if (v30)
        {
          goto LABEL_37;
        }

        v30 = fbapspManager_processPendingSbufsOnSubPipeFinished(a1);
        if (v30)
        {
          goto LABEL_37;
        }

        v33 = FigBufferedAirPlayAudioChainSubPipeGetCMBaseObject(*(DerivedStorage + 120));
        if (!v33)
        {
          v22 = 4294954516;
          goto LABEL_33;
        }

        v34 = v33;
        v35 = *(*(CMBaseObjectGetVTable() + 8) + 24);
        if (v35)
        {
          v30 = v35(v34);
          if (!v30)
          {
            v36 = *(DerivedStorage + 120);
            if (v36)
            {
              CFRelease(v36);
              *(DerivedStorage + 120) = 0;
            }

            fbapspManager_setSubPipeTerminationInFlight(a1, 0);
            if (!a3)
            {
              goto LABEL_31;
            }

            goto LABEL_9;
          }

LABEL_37:
          v22 = v30;
          goto LABEL_33;
        }
      }
    }

    v22 = 4294954514;
    goto LABEL_33;
  }

  if (!a3)
  {
LABEL_31:
    v22 = 0;
    goto LABEL_33;
  }

LABEL_9:
  v21 = *(DerivedStorage + 160);
  if (!v21)
  {
    goto LABEL_31;
  }

  v22 = FigBufferedAirPlayOfflineMixerFactoryReleaseMixer(v21);
  if (!v22)
  {
    *(DerivedStorage + 160) = 0;
  }

LABEL_33:
  if (dictionaryRepresentation)
  {
    CFRelease(dictionaryRepresentation);
  }

  return v22;
}

void fbapspManager_setProcessingState(const void *a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2 != 2 || *(DerivedStorage + 156) != 4)
  {
    v6 = DerivedStorage;
    *(DerivedStorage + 156) = a2;
    v7 = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v9 = Mutable;
      v10 = CFStringCreateWithCString(v7, v6, 0x8000100u);
      if (v10)
      {
        v11 = v10;
        FigCFDictionarySetValue();
        FigCFDictionarySetValue();
        fbapspManager_postNotification(a1, @"ProcessingStateChanged", v9);
        CFRelease(v11);
      }

      CFRelease(v9);
    }
  }
}

uint64_t fbapspManager_removeListenersForSubPipe(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  CMNotificationCenterGetDefaultLocalCenter();

  return FigNotificationCenterRemoveWeakListeners();
}

uint64_t fbapspManager_processPendingSbufsOnSubPipeFinished(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = CMBufferQueueCallForEachBuffer(*(DerivedStorage + 208), fbapspManager_HandlePendingSbufsOnSubPipeFinishCallback, a1);
  if (!result)
  {
    v4 = *(DerivedStorage + 208);

    return CMBufferQueueReset(v4);
  }

  return result;
}

void __fbapspManager_postNotification_block_invoke(uint64_t a1)
{
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  v2 = *(a1 + 48);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 40);

  fbapspManager_releaseAsync(v3);
}

void fbapspManager_subPipeDecoderError(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  v38 = *MEMORY[0x1E69E9840];
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x2000000000;
  v34 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 456))
  {
    v8 = DerivedStorage;
    if (dword_1EAF16F18)
    {
      v9 = OUTLINED_FUNCTION_33_8();
      OUTLINED_FUNCTION_67_4(v9, v10, v11, v12, v13, v14, v15, v16, v20, v21, v22, block, v24, v25, v26, v27, v28, v29, v30, v31, v32);
      OUTLINED_FUNCTION_46();
      if (v4)
      {
        if (a2)
        {
          CMBaseObjectGetDerivedStorage();
        }

        OUTLINED_FUNCTION_26_12();
        v35 = a4;
        v36 = v17;
        v37 = v18;
        OUTLINED_FUNCTION_66();
        OUTLINED_FUNCTION_10_3();
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_238_0();
    }

    if (*(v8 + 152))
    {
      if (a2)
      {
        CFRetain(a2);
      }

      OUTLINED_FUNCTION_6_31();
      v24 = 0x40000000;
      v25 = __fbapspManager_subPipeDecoderError_block_invoke;
      v26 = &unk_1E7482AF8;
      v27 = v33;
      v28 = a2;
      dispatch_async(v19, &block);
    }
  }

  _Block_object_dispose(v33, 8);
}

uint64_t fbapspManager_notificationsFromSubPipe()
{
  result = FigCFEqual();
  if (result)
  {
    CMNotificationCenterGetDefaultLocalCenter();

    return CMNotificationCenterPostNotification();
  }

  return result;
}

void fbapspManager_subPipeFinishedProcessingData(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x2000000000;
  v25 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 456))
  {
    v9 = DerivedStorage;
    if (dword_1EAF16F18)
    {
      v23 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      OUTLINED_FUNCTION_52_5();
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_28();
      if (v4)
      {
        if (a2)
        {
          CMBaseObjectGetDerivedStorage();
        }

        v26 = 136316162;
        v27 = "fbapspManager_subPipeFinishedProcessingData";
        v28 = 2048;
        v29 = a2;
        OUTLINED_FUNCTION_60_5();
        v30 = a4;
        v31 = v11;
        v32 = v12;
        OUTLINED_FUNCTION_108();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_417();
    }

    if (a2)
    {
      CFRetain(a2);
    }

    OUTLINED_FUNCTION_6_31();
    v15 = 0x40000000;
    v16 = __fbapspManager_subPipeFinishedProcessingData_block_invoke;
    v17 = &unk_1E7482BA0;
    v18 = v24;
    v19 = a3;
    v20 = a2;
    v21 = v9;
    dispatch_async(v13, block);
  }

  _Block_object_dispose(v24, 8);
}

void fbapspManager_subPipePassedTimelineMilestone(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  v38 = *MEMORY[0x1E69E9840];
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x2000000000;
  v34 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 456))
  {
    v8 = DerivedStorage;
    if (dword_1EAF16F18)
    {
      v9 = OUTLINED_FUNCTION_33_8();
      OUTLINED_FUNCTION_67_4(v9, v10, v11, v12, v13, v14, v15, v16, v20, v21, block, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32);
      OUTLINED_FUNCTION_46();
      if (v4)
      {
        if (a2)
        {
          CMBaseObjectGetDerivedStorage();
        }

        OUTLINED_FUNCTION_26_12();
        v35 = a4;
        v36 = v17;
        v37 = v18;
        OUTLINED_FUNCTION_66();
        OUTLINED_FUNCTION_10_3();
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_238_0();
    }

    if (a2)
    {
      CFRetain(a2);
    }

    v19 = *(v8 + 80);
    block = MEMORY[0x1E69E9820];
    v23 = 0x40000000;
    v24 = __fbapspManager_subPipePassedTimelineMilestone_block_invoke;
    v25 = &unk_1E7482BC8;
    v26 = v33;
    v27 = v8;
    v28 = a2;
    dispatch_async(v19, &block);
  }

  _Block_object_dispose(v33, 8);
}

void __fbapspManager_subPipeDecoderError_block_invoke(uint64_t a1)
{
  v2 = fbapspManager_disconnectSbufBridge(*(a1 + 40));
  OUTLINED_FUNCTION_0_5(v2);
  if (!v3)
  {
    v4 = fbapspManager_clearCurrentSubPipe(*(a1 + 40), 0, 1);
    OUTLINED_FUNCTION_0_5(v4);
    if (!v5)
    {
      fbapspManager_setProcessingState(*(a1 + 40), 1);
      fbapspManager_setSubPipeTerminationInFlight(*(a1 + 40), 0);
      fbapspManager_scheduleProcessingDataIfPossible(*(a1 + 40));
    }
  }

  v6 = *(a1 + 40);

  fbapspManager_releaseAsync(v6);
}

uint64_t fbapspManager_disconnectSbufBridge(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF16F18)
  {
    v4 = OUTLINED_FUNCTION_16_12();
    OUTLINED_FUNCTION_311(v4, v5, v6, v7, v8, v9, v10, v11, v15, v16, v17, v18, SBYTE2(v18), BYTE3(v18), SHIDWORD(v18));
    OUTLINED_FUNCTION_40();
    if (v1)
    {
      if (a1)
      {
        CMBaseObjectGetDerivedStorage();
      }

      OUTLINED_FUNCTION_51_5();
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_12_17();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_414();
  }

  if (*(DerivedStorage + 456))
  {
    return 0;
  }

  v12 = *(DerivedStorage + 104);
  v13 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v13)
  {
    return v13(v12, @"DownstreamConsumer", 0);
  }

  else
  {
    return 4294954514;
  }
}

void __fbapspManager_dequeueInspectSendSampleBuffer_block_invoke(uint64_t a1)
{
  if (!*(*(a1 + 32) + 456))
  {
    OUTLINED_FUNCTION_2_49();
    OUTLINED_FUNCTION_43_7();
    v4 = __fbapspManager_dequeueInspectSendSampleBuffer_block_invoke_2;
    v5 = &__block_descriptor_tmp_183;
    v6 = *(a1 + 40);
    dispatch_sync(v2, block);
  }

  fbapspManager_releaseAsync(*(a1 + 40));
}

uint64_t fbapspManager_retimeSampleBufferIfNeeded(uint64_t a1, opaqueCMSampleBuffer *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v18 = *MEMORY[0x1E6960C70];
  *&v23.value = *MEMORY[0x1E6960C70];
  v5 = *(MEMORY[0x1E6960C70] + 16);
  v23.epoch = v5;
  if (!CMGetAttachment(a2, @"OriginalSbufOPTS", 0))
  {
    CMSampleBufferGetOutputPresentationTimeStamp(&lhs, a2);
    value = lhs.value;
    timescale = lhs.timescale;
    if (lhs.flags & 1) != 0 && (*(DerivedStorage + 364))
    {
      *(DerivedStorage + 232) = v18;
      *(DerivedStorage + 248) = v5;
      lhs = *(DerivedStorage + 256);
      fbapspManager_updateOverlapDeadline(a1, &lhs.value);
      OUTLINED_FUNCTION_40_5();
      rhs = *(DerivedStorage + 352);
      v6 = CMTimeAdd(&v23, &lhs, &rhs);
      OUTLINED_FUNCTION_660(v6, v7, v8, v9, v10, v11, v12, v13, v18, *(&v18 + 1), rhs.value, *&rhs.timescale, rhs.epoch, v20, lhs.value, *&lhs.timescale, lhs.epoch, v22, *&v23.value);
      result = CMSampleBufferSetOutputPresentationTimeStamp(a2, &lhs);
      if (result)
      {
        return result;
      }

      OUTLINED_FUNCTION_40_5();
      v16 = CMTimeCopyAsDictionary(&lhs, v15);
      if (!v16)
      {
        OUTLINED_FUNCTION_303();
        return FigSignalErrorAtGM();
      }

      v17 = v16;
      CMSetAttachment(a2, @"OriginalSbufOPTS", v16, 1u);
      CFRelease(v17);
    }
  }

  return 0;
}

__CFString *fbapspManager_findSubPipeTypeForSbuf(uint64_t a1, void *a2, _BYTE *a3)
{
  v65 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf1 = 0;
  v63 = 0;
  BOOLean = 0;
  v61 = 0;
  v59 = 0;
  v7 = @"SubPipeTypeTranscode";
  v58 = 0;
  if (!a3)
  {
    FigSignalErrorAtGM();
    goto LABEL_99;
  }

  v8 = DerivedStorage;
  if (!fbapspManager_isMarkerSbuf(a2))
  {
    *a3 = 0;
    v9 = CMGetAttachment(a2, *MEMORY[0x1E69604B0], 0);
    v10 = *MEMORY[0x1E695E4D0];
    if (v9 != *MEMORY[0x1E695E4D0])
    {
      FormatDescription = CMSampleBufferGetFormatDescription(a2);
      v12 = *MEMORY[0x1E695E480];
      if (FormatDescription)
      {
        if (FigEndpointStreamAudioFormatDescriptionCreateWithCMFormatDescription())
        {
          goto LABEL_99;
        }

        v13 = *(v8 + 40);
        v14 = *(*(CMBaseObjectGetVTable() + 16) + 80);
        if (!v14)
        {
          goto LABEL_99;
        }

        if (v14(v13, v63, &v58))
        {
          goto LABEL_99;
        }

        ASBD = FigEndpointStreamAudioFormatDescriptionGetASBD();
        if (!ASBD)
        {
          goto LABEL_99;
        }
      }

      else
      {
        ASBD = 0;
      }

      v16 = *(v8 + 120);
      if (v16)
      {
        CMBaseObject = FigBufferedAirPlayAudioChainSubPipeGetCMBaseObject(v16);
        v18 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v18)
        {
          v18(CMBaseObject, @"SubPipeType", v12, &v59);
        }

        v19 = FigBufferedAirPlayAudioChainSubPipeGetCMBaseObject(*(v8 + 120));
        v20 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v20)
        {
          v20(v19, @"CurrentFormatDescription", v12, &cf1);
        }

        if (FormatDescription && cf1 && !CFEqual(cf1, FormatDescription) && *(v8 + 156) != 4)
        {
          if (dword_1EAF16F18)
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            OUTLINED_FUNCTION_7();
            OUTLINED_FUNCTION_417();
          }

          v21 = *(v8 + 192);
          if (v21)
          {
            CFRelease(v21);
            *(v8 + 192) = 0;
          }
        }
      }

      Decryptor = FigSampleBufferGetDecryptor();
      v25 = 1;
      if (Decryptor)
      {
        v23 = Decryptor;
        v24 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (!v24 || v24(v23, *MEMORY[0x1E6961128], v12, &v61) || v61 != v10)
        {
          v25 = 0;
        }
      }

      v26 = FigBufferedAirPlayOutputGetCMBaseObject(*(v8 + 40));
      v27 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v27)
      {
        if (!v27(v26, @"ALACIsAllowed", v12, &BOOLean))
        {
          v28 = *(v8 + 224);
          if (v28 == CFBooleanGetValue(BOOLean) || (*(v8 + 224) = CFBooleanGetValue(BOOLean), v30 = CMBaseObjectGetDerivedStorage(), cf = 0, !*(v30 + 120)))
          {
            LOBYTE(v29) = 0;
LABEL_67:
            v42 = fbapspManager_outputRequiresSubPipeChange(a1, a2);
            v43 = *(v8 + 56);
            Value = CFBooleanGetValue(BOOLean);
            v45 = 1;
            if (ASBD && !Value)
            {
              v46 = *(ASBD + 8);
              v45 = v46 != 1634492771 && v46 != 1668047203 && v46 != 1902928227 && v46 != 2053923171;
            }

            v52 = v43 == 1.0 && v58 != 0 && v25 && *(v8 + 64) == 0;
            v53 = v45 && v52;
            if (!v59 || (FigCFEqual() ? (v54 = 1) : (v54 = v29), (v54 & 1) != 0 || v42))
            {
              *a3 = 1;
              if (v53)
              {
                v7 = @"SubPipeTypePassthrough";
              }
            }

            else
            {
              FigCFEqual();
            }

            goto LABEL_99;
          }

          v31 = v30;
          if (CMSampleBufferGetFormatDescription(a2) && !FigEndpointStreamAudioFormatDescriptionCreateWithCMFormatDescription())
          {
            v29 = FigEndpointStreamAudioFormatDescriptionGetASBD();
            if (!v29)
            {
              goto LABEL_65;
            }

            v32 = FigEndpointStreamAudioFormatDescriptionGetASBD();
            if (v32)
            {
              v33 = *(v31 + 224);
              if (*(v31 + 224))
              {
                v34 = *(v29 + 8);
                v33 = v34 == 1634492771 || v34 == 1668047203 || v34 == 1902928227 || v34 == 2053923171;
              }

              v38 = *(v32 + 8);
              v56 = v38 == 1634492771 || v38 == 1668047203 || v38 == 1902928227 || v38 == 2053923171;
              LOBYTE(v29) = v33 != v56;
              goto LABEL_65;
            }
          }

          LOBYTE(v29) = 0;
LABEL_65:
          if (cf)
          {
            CFRelease(cf);
          }

          goto LABEL_67;
        }
      }
    }
  }

LABEL_99:
  if (cf1)
  {
    CFRelease(cf1);
  }

  if (v63)
  {
    CFRelease(v63);
  }

  if (v59)
  {
    CFRelease(v59);
  }

  if (v61)
  {
    CFRelease(v61);
  }

  if (BOOLean)
  {
    CFRelease(BOOLean);
  }

  return v7;
}

uint64_t fbapspManager_prepareSubPipeToStop(const void *a1, opaqueCMSampleBuffer *a2, int a3)
{
  v35 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = DerivedStorage;
  v8 = *MEMORY[0x1E6960C70];
  cf = 0;
  value = v8;
  timescale = *(MEMORY[0x1E6960C70] + 8);
  if (*(DerivedStorage + 120) && !*(DerivedStorage + 152))
  {
    v9 = MEMORY[0x1E695E480];
    if (a3 && (v10 = *(DerivedStorage + 616)) != 0 && (CMSampleBufferGetOutputPresentationTimeStamp(&lhs, v10), CMSampleBufferGetOutputDuration(&rhs, *(v7 + 616)), CMTimeAdd(&time, &lhs, &rhs), value = time.value, timescale = time.timescale, (time.flags & 1) != 0))
    {
      v24 = *v9;
      time.value = value;
      time.timescale = timescale;
      v11 = CMTimeCopyAsDictionary(&time, v24);
      CMBaseObject = FigBufferedAirPlayAudioChainSubPipeGetCMBaseObject(*(v7 + 120));
      v26 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (!v26)
      {
LABEL_19:
        v23 = 4294954514;
        goto LABEL_20;
      }

      v15 = v26(CMBaseObject, @"ApplyTrimAtEndAfterPTS", v11);
      if (v15)
      {
LABEL_18:
        v23 = v15;
        goto LABEL_20;
      }
    }

    else
    {
      v11 = 0;
    }

    v12 = *(v7 + 120);
    v13 = *(v7 + 616);
    v14 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v14)
    {
      v15 = v14(v12, v13);
      if (v15)
      {
        goto LABEL_18;
      }

      if (!a3)
      {
LABEL_15:
        fbapspManager_postNotification(a1, @"FinishingSubPipe", 0);
        v23 = 0;
        goto LABEL_20;
      }

      v16 = *(v7 + 616);
      v17 = *v9;
      v18 = *MEMORY[0x1E6962DF8];
      v19 = *MEMORY[0x1E695E4D0];
      if (!v16)
      {
        v16 = a2;
      }

      CMSampleBufferGetOutputPresentationTimeStamp(&time, v16);
      v15 = FigBufferedAirPlayAudioChainSubPipeSampleBufferCreateWithTimeStampAndMarker(v17, v18, v19, &time, &cf);
      if (v15)
      {
        goto LABEL_18;
      }

      fbapspManager_setSubPipeTerminationInFlight(a1, 1);
      v20 = *(v7 + 104);
      v21 = cf;
      v22 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v22)
      {
        v15 = v22(v20, v21);
        if (!v15)
        {
          goto LABEL_15;
        }

        goto LABEL_18;
      }
    }

    goto LABEL_19;
  }

  v23 = 0;
  v11 = 0;
LABEL_20:
  v27 = *(v7 + 616);
  if (v27)
  {
    CFRelease(v27);
    *(v7 + 616) = 0;
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v23;
}

void fbapspManager_restoreRetimeSampleBufferIfNeeded(uint64_t a1, void *a2)
{
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_106(MEMORY[0x1E6960C70]);
  v3 = CMGetAttachment(a2, @"OriginalSbufOPTS", 0);
  if (v3)
  {
    CMTimeMakeFromDictionary(&v5, v3);
    v4 = v5;
    if (!CMSampleBufferSetOutputPresentationTimeStamp(a2, &v4))
    {
      CMRemoveAttachment(a2, @"OriginalSbufOPTS");
    }
  }
}

uint64_t fbapspManager_setPropertiesOnSubPipe(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 120))
  {
    v3 = DerivedStorage;
    fbapspManager_setAudioProcessingTapOnSubPipe();
    result = fbapspManager_setTimePitchAlgorithmOnSubPipe();
    if (result)
    {
      return result;
    }

    v5 = *(v3 + 432);
    if (v5)
    {
      CMBaseObject = FigBufferedAirPlayAudioChainSubPipeGetCMBaseObject(*(v3 + 120));
      v7 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (!v7)
      {
        return 4294954514;
      }

      result = v7(CMBaseObject, @"AudioProcessingUnits", v5);
      if (result)
      {
        return result;
      }
    }

    result = fbapspManager_setAudioCurvesOnSubPipe(a1, *(v3 + 416), @"AudioCurves");
    if (result)
    {
      return result;
    }

    result = fbapspManager_setAudioCurvesOnSubPipe(a1, *(v3 + 424), @"SecondaryAudioCurves");
    if (result)
    {
      return result;
    }

    v8 = *(v3 + 440);
    if (!v8)
    {
      return 0;
    }

    v9 = FigBufferedAirPlayAudioChainSubPipeGetCMBaseObject(*(v3 + 120));
    v10 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v10)
    {

      return v10(v9, @"ExpectScaledEdits", v8);
    }

    return 4294954514;
  }

  return FigSignalErrorAtGM();
}

uint64_t fbapspManager_setLoudnessInfoOnSubPipe()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = *(DerivedStorage + 120);
  if (result)
  {
    if (*(DerivedStorage + 216))
    {
      FigBufferedAirPlayAudioChainSubPipeGetCMBaseObject(result);
      VTable = CMBaseObjectGetVTable();
      v3 = *(VTable + 8);
      result = VTable + 8;
      if (*(v3 + 56))
      {
        v4 = OUTLINED_FUNCTION_228();

        return v5(v4);
      }
    }
  }

  return result;
}

void fbapspManager_connectSbufBridge(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int16 a11, char a12, os_log_type_t type, int a14, CFTypeRef cf, uint64_t a16, __int128 a17, uint64_t a18, __int128 a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49)
{
  OUTLINED_FUNCTION_458();
  a48 = v50;
  a49 = v51;
  v53 = v52;
  a37 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (dword_1EAF16F18)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_46();
    if (v49)
    {
      if (v53)
      {
        CMBaseObjectGetDerivedStorage();
      }

      OUTLINED_FUNCTION_51_5();
      *(&a17 + 6) = v53;
      HIWORD(a17) = 2082;
      a18 = v56;
      LOWORD(a19) = v57;
      *(&a19 + 2) = v58;
      WORD5(a19) = v57;
      *(&a19 + 12) = v59;
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_10_3();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_238_0();
  }

  if (!*(DerivedStorage + 456))
  {
    v60 = *(DerivedStorage + 120);
    if (v60)
    {
      CMBaseObject = FigBufferedAirPlayAudioChainSubPipeGetCMBaseObject(v60);
      v62 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v62 && !v62(CMBaseObject, @"SourceSampleBufferConsumer", *MEMORY[0x1E695E480], &cf) && *(*(CMBaseObjectGetVTable() + 8) + 56))
      {
        v63 = OUTLINED_FUNCTION_228();
        v64(v63);
      }
    }

    else
    {
      OUTLINED_FUNCTION_303();
      FigSignalErrorAtGM();
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  OUTLINED_FUNCTION_457();
}

uint64_t fbapspManager_enqueueMarkerSampleBuffer()
{
  result = CMBaseObjectGetDerivedStorage();
  if (*(result + 120))
  {
    v1 = result;
    result = CMBufferQueueIsEmpty(*(result + 200));
    if (!result)
    {
      v2 = CMBufferQueueDequeueAndRetain(*(v1 + 200));
      if (v2)
      {
        v3 = v2;
        v4 = *MEMORY[0x1E6962DF8];
        v5 = *MEMORY[0x1E6962E00];
        v6 = *MEMORY[0x1E6962E10];
        do
        {
          if (!CMGetAttachment(v3, v4, 0) && !CMGetAttachment(v3, v5, 0) && !CMGetAttachment(v3, v6, 0))
          {
            v7 = *(v1 + 104);
            v8 = *(*(CMBaseObjectGetVTable() + 16) + 8);
            if (v8)
            {
              v8(v7, v3);
            }
          }

          CFRelease(v3);
          v3 = CMBufferQueueDequeueAndRetain(*(v1 + 200));
        }

        while (v3);
      }

      v9 = *(v1 + 200);

      return CMBufferQueueReset(v9);
    }
  }

  return result;
}

uint64_t fbapspManager_startAudioChainForSubPipe(double a1, uint64_t a2, __int128 *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  isSubPipeStarted = fbapspManager_isSubPipeStarted();
  result = 0;
  v8 = *(DerivedStorage + 120);
  if (v8 && !isSubPipeStarted)
  {
    v9 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v9)
    {
      result = v9(v8);
      if (a1 != 0.0 && !result)
      {
        if (*(DerivedStorage + 156) == 3)
        {
          v10 = *(DerivedStorage + 384);
          v11 = v10 == 2;
          v12 = v10 != 1;
        }

        else
        {
          v11 = 0;
          v12 = 1;
        }

        v13 = *(DerivedStorage + 120);
        v18 = *a3;
        OUTLINED_FUNCTION_44_7();
        v14 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (v14)
        {
          v15 = a1;
          v22 = v18;
          v23 = v19;
          v20 = v16;
          v21 = v17;
          v14(v13, &v22, &v20, 0, v11, v12, v15);
        }

        return 0;
      }
    }

    else
    {
      return 4294954514;
    }
  }

  return result;
}

uint64_t fbapspManager_setTimelineMilestoneOnSubPipeWithOverlapEndTime(uint64_t a1)
{
  v53 = *MEMORY[0x1E69E9840];
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_106(MEMORY[0x1E6960C70]);
  if ((v3[12].value & 0x100000000) == 0)
  {
    return 0;
  }

  if ((v3[15].value & 0x100000000) != 0)
  {
    OUTLINED_FUNCTION_54_6();
    rhs = *(v11 + 352);
    v3 = CMTimeAdd(&v45, &lhs, &rhs);
  }

  else
  {
    v45 = *(v3 + 280);
  }

  OUTLINED_FUNCTION_23_11(v3, v4, v5, v6, v7, v8, v9, v10, v33, v36, v39, v42, *&v45.value);
  result = fbapspManager_clearAndSetTimelineMilestoneOnSubPipe(a1, &lhs);
  if (!result && dword_1EAF16F18)
  {
    OUTLINED_FUNCTION_147();
    OUTLINED_FUNCTION_53_4();
    v13 = OUTLINED_FUNCTION_126();
    OUTLINED_FUNCTION_86_2(v13, v14, v15, v16, v17, v18, v19, v20, v34, v37, v40, v43, SBYTE2(v43), BYTE3(v43), SHIDWORD(v43));
    OUTLINED_FUNCTION_7_22();
    if (v1)
    {
      if (a1)
      {
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        v29 = DerivedStorage;
      }

      else
      {
        v29 = "";
      }

      OUTLINED_FUNCTION_23_11(DerivedStorage, v22, v23, v24, v25, v26, v27, v28, v35, v38, v41, v44, *&v45.value);
      Seconds = CMTimeGetSeconds(&lhs);
      OUTLINED_FUNCTION_54_6();
      CMTimeGetSeconds(&lhs);
      LODWORD(rhs.value) = 136316162;
      OUTLINED_FUNCTION_37_6();
      *(&rhs.flags + 2) = a1;
      HIWORD(rhs.epoch) = 2082;
      v47 = v29;
      v48 = v31;
      v49 = Seconds;
      v50 = v31;
      v51 = v32;
      OUTLINED_FUNCTION_100();
      OUTLINED_FUNCTION_4_41();
      OUTLINED_FUNCTION_329_0();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_524();
    return 0;
  }

  return result;
}

uint64_t fbapspManager_clearAndSetTimelineMilestoneOnSubPipe(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if ((*(a2 + 12) & 1) == 0)
  {
    return 0;
  }

  v5 = DerivedStorage;
  result = fbapspManager_setTimelineMilestoneOnSubPipe(a1);
  if (!result)
  {
    result = fbapspManager_setTimelineMilestoneOnSubPipe(a1);
    if (!result)
    {
      *(v5 + 153) = 1;
    }
  }

  return result;
}

uint64_t fbapspManager_setTimelineMilestoneOnSubPipe(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 120))
  {
    return 0;
  }

  v4 = DerivedStorage;
  if (dword_1EAF16F18)
  {
    OUTLINED_FUNCTION_147();
    v5 = OUTLINED_FUNCTION_126();
    os_log_type_enabled(v5, type);
    OUTLINED_FUNCTION_28();
    if (v1)
    {
      if (a1)
      {
        CMBaseObjectGetDerivedStorage();
      }

      OUTLINED_FUNCTION_42_7();
      CMTimeGetSeconds(v6);
      OUTLINED_FUNCTION_2_6();
      OUTLINED_FUNCTION_57_3();
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_108();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_417();
  }

  OUTLINED_FUNCTION_42_7();
  v9 = CMTimeCopyAsDictionary(v7, v8);
  if (!v9)
  {
    return FigSignalErrorAtGM();
  }

  v10 = v9;
  CMBaseObject = FigBufferedAirPlayAudioChainSubPipeGetCMBaseObject(*(v4 + 120));
  v12 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v12)
  {
    v13 = v12(CMBaseObject, @"TimelineMilestone", v10);
  }

  else
  {
    v13 = 4294954514;
  }

  CFRelease(v10);
  return v13;
}

BOOL fbapspManager_outputRequiresSubPipeChange(uint64_t a1, opaqueCMSampleBuffer *a2)
{
  v98 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v42 = 0;
  cf = 0;
  if (!*(DerivedStorage + 120))
  {
    goto LABEL_25;
  }

  if (!a2)
  {
    FigSignalErrorAtGM();
    goto LABEL_25;
  }

  v5 = DerivedStorage;
  if (!CMSampleBufferGetFormatDescription(a2))
  {
    goto LABEL_25;
  }

  v6 = *(v5 + 192);
  if (v6)
  {
    v42 = CFRetain(v6);
  }

  else
  {
    if (FigEndpointStreamAudioFormatDescriptionCreateWithCMFormatDescription())
    {
      goto LABEL_25;
    }

    v16 = *(v5 + 40);
    v17 = *(*(CMBaseObjectGetVTable() + 16) + 72);
    if (!v17 || v17(v16, cf, &v42))
    {
      goto LABEL_25;
    }
  }

  ASBD = FigEndpointStreamAudioFormatDescriptionGetASBD();
  if (!ASBD || (v8 = ASBD, (v9 = FigEndpointStreamAudioFormatDescriptionGetASBD()) == 0))
  {
LABEL_25:
    v12 = 0;
    goto LABEL_26;
  }

  v10 = v9;
  v11 = FigCFEqual();
  v12 = v11 == 0;
  if (!v11 && dword_1EAF16F18)
  {
    OUTLINED_FUNCTION_147();
    OUTLINED_FUNCTION_52_5();
    v13 = OUTLINED_FUNCTION_126();
    if (os_log_type_enabled(v13, type))
    {
      v14 = v41;
    }

    else
    {
      v14 = v41 & 0xFFFFFFFE;
    }

    if (v14)
    {
      if (a1)
      {
        v15 = CMBaseObjectGetDerivedStorage();
      }

      else
      {
        v15 = "";
      }

      v18 = *v8;
      v19 = *v10;
      v20 = *(v8 + 16);
      v21 = *(v8 + 20);
      v23 = *(v10 + 16);
      v22 = *(v10 + 20);
      v25 = *(v8 + 24);
      v24 = *(v8 + 28);
      v27 = *(v10 + 24);
      v26 = *(v10 + 28);
      v28 = *(v8 + 32);
      v29 = *(v10 + 32);
      v30 = *(v8 + 8);
      v31 = *(v8 + 12);
      v32 = HIBYTE(v30);
      v33 = BYTE2(v30);
      v34 = BYTE1(v30);
      v35 = v30;
      v37 = *(v10 + 8);
      v36 = *(v10 + 12);
      v38 = *(v5 + 192) != 0;
      v44 = 136321794;
      v45 = "fbapspManager_outputRequiresSubPipeChange";
      v46 = 2048;
      v47 = a1;
      v48 = 2082;
      v49 = v15;
      v50 = 2048;
      v51 = v18;
      v52 = 2048;
      v53 = v19;
      v54 = 1024;
      v55 = v24;
      v56 = 1024;
      v57 = v26;
      v58 = 1024;
      v59 = v20;
      v60 = 1024;
      v61 = v23;
      v62 = 1024;
      v63 = v21;
      v64 = 1024;
      v65 = v22;
      v66 = 1024;
      v67 = v25;
      v68 = 1024;
      v69 = v27;
      v70 = 1024;
      v71 = v28;
      v72 = 1024;
      v73 = v29;
      v74 = 1024;
      v75 = v31;
      v76 = 1024;
      v77 = v36;
      v78 = 1024;
      v79 = v32;
      v80 = 1024;
      v81 = v33;
      v82 = 1024;
      v83 = v34;
      v84 = 1024;
      v85 = v35;
      v86 = 1024;
      v87 = HIBYTE(v37);
      v88 = 1024;
      v89 = BYTE2(v37);
      v90 = 1024;
      v91 = BYTE1(v37);
      v92 = 1024;
      v93 = v37;
      v94 = 1024;
      v95 = 1;
      v96 = 1024;
      v97 = v38;
      OUTLINED_FUNCTION_12_17();
    }

    v12 = 1;
    OUTLINED_FUNCTION_417();
  }

LABEL_26:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v42)
  {
    CFRelease(v42);
  }

  return v12;
}

uint64_t fbapspManager_addListenersForSubPipe(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  CMNotificationCenterGetDefaultLocalCenter();

  return FigNotificationCenterAddWeakListeners();
}

uint64_t fbapspManager_setAudioProcessingTapOnSubPipe()
{
  result = *(CMBaseObjectGetDerivedStorage() + 120);
  if (result)
  {
    FigBufferedAirPlayAudioChainSubPipeGetCMBaseObject(result);
    VTable = CMBaseObjectGetVTable();
    v2 = *(VTable + 8);
    result = VTable + 8;
    if (*(v2 + 56))
    {
      v3 = OUTLINED_FUNCTION_228();

      return v4(v3);
    }
  }

  return result;
}

uint64_t fbapspManager_setTimePitchAlgorithmOnSubPipe()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = *(DerivedStorage + 120);
  if (result)
  {
    if (*(DerivedStorage + 448))
    {
      FigBufferedAirPlayAudioChainSubPipeGetCMBaseObject(result);
      if (*(*(CMBaseObjectGetVTable() + 8) + 56))
      {
        v2 = OUTLINED_FUNCTION_228();

        return v3(v2);
      }

      else
      {
        return 4294954514;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t fbapspManager_setAudioCurvesOnSubPipe(uint64_t a1, const void *a2, uint64_t a3)
{
  v62 = a3;
  v92 = *MEMORY[0x1E69E9840];
  v80 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v79 = 0;
  v78 = 0;
  memset(context, 0, sizeof(context));
  v14 = *MEMORY[0x1E6960CC0];
  *&v75.value = *MEMORY[0x1E6960CC0];
  v15 = *(MEMORY[0x1E6960CC0] + 16);
  v75.epoch = v15;
  v76 = 0;
  if (!*(DerivedStorage + 120))
  {
    return v80;
  }

  v16 = DerivedStorage;
  if (*(DerivedStorage + 156) != 3)
  {
    return v80;
  }

  v64 = v14;
  if (*(DerivedStorage + 364))
  {
    v14 = *(DerivedStorage + 352);
    *&v75.value = v14;
    v75.epoch = *(DerivedStorage + 368);
  }

  v17 = (DerivedStorage + 388);
  if (*(DerivedStorage + 400))
  {
    OUTLINED_FUNCTION_25_10(DerivedStorage, v7, v8, v9, v10, v11, v12, v13, p_rhs, v58, v60, v62, v64.n128_i64[0], v64.n128_i64[1], v66, v69, v71, v73, v14, v75.value);
    *&rhs.value = *v17;
    rhs.epoch = *(v16 + 404);
    DerivedStorage = CMTimeAdd(&v75, &lhs, &rhs);
  }

  if (dword_1EAF16F18)
  {
    LODWORD(v82.value) = 0;
    LOBYTE(type.value) = 0;
    OUTLINED_FUNCTION_52_5();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type.value);
    OUTLINED_FUNCTION_28();
    if (v3)
    {
      if (a1)
      {
        v19 = CMBaseObjectGetDerivedStorage();
        v28 = v19;
      }

      else
      {
        v28 = "";
      }

      OUTLINED_FUNCTION_25_10(v19, v20, v21, v22, v23, v24, v25, v26, p_rhs, v58, v60, v62, v64.n128_i64[0], v64.n128_i64[1], v66, v69, v71, v73, v27, v75.value);
      Seconds = CMTimeGetSeconds(&lhs);
      *&lhs.value = *v17;
      lhs.epoch = *(v16 + 404);
      v30 = CMTimeGetSeconds(&lhs);
      lhs = *(v16 + 352);
      v31 = CMTimeGetSeconds(&lhs);
      LODWORD(rhs.value) = 136316418;
      *(&rhs.value + 4) = "fbapspManager_setAudioCurvesOnSubPipe";
      LOWORD(rhs.flags) = 2048;
      *(&rhs.flags + 2) = a1;
      HIWORD(rhs.epoch) = 2082;
      v84 = v28;
      v85 = 2048;
      v86 = Seconds;
      v87 = 2048;
      v88 = v30;
      v89 = 2048;
      v90 = v31;
      LODWORD(v58) = 62;
      p_rhs = &rhs;
      OUTLINED_FUNCTION_108();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_7();
    DerivedStorage = OUTLINED_FUNCTION_417();
  }

  OUTLINED_FUNCTION_25_10(DerivedStorage, v7, v8, v9, v10, v11, v12, v13, p_rhs, v58, v60, v62, v64.n128_i64[0], v64.n128_i64[1], v66, v69, v71, v73, v14, v75.value);
  *&rhs.value = v65;
  rhs.epoch = v15;
  v32 = CMTimeCompare(&lhs, &rhs);
  if (!a2 || !v32)
  {
    if (a2)
    {
      v35 = CFRetain(a2);
      a2 = 0;
      v46 = 0;
    }

    else
    {
      v46 = 0;
      v35 = 0;
    }

    goto LABEL_37;
  }

  v33 = *MEMORY[0x1E695E480];
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  if (!MutableCopy)
  {
    return -12786;
  }

  v35 = MutableCopy;
  ValueIfPresent = FigCFDictionaryGetValueIfPresent();
  if (ValueIfPresent)
  {
    v44 = v79;
    OUTLINED_FUNCTION_660(ValueIfPresent, v37, v38, v39, v40, v41, v42, v43, v57, v59, v61, v63, v65, *(&v65 + 1), v67, v70, v72, v74, *&v75.value);
    lhs = **&MEMORY[0x1E6960C70];
    v45 = FigCFArrayCreateMutableCopy();
    v46 = v45;
    if (v44 && v45)
    {
      Count = CFArrayGetCount(v44);
      if (Count < 1)
      {
LABEL_27:
        FigCFDictionarySetValue();
        goto LABEL_32;
      }

      v48 = Count;
      for (i = 0; i < v48; i += 3)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v44, i);
        CMTimeMakeFromDictionary(&lhs, ValueAtIndex);
        v82 = lhs;
        type = v68;
        CMTimeAdd(&rhs, &v82, &type);
        lhs = rhs;
        v51 = CMTimeCopyAsDictionary(&rhs, v33);
        CFArraySetValueAtIndex(v46, i, v51);
        if (v51)
        {
          CFRelease(v51);
        }
      }
    }

    if (!v46)
    {
      v80 = -12786;
LABEL_46:
      CFRelease(v35);
      return v80;
    }

    goto LABEL_27;
  }

  v46 = 0;
LABEL_32:
  if (!FigCFDictionaryGetValueIfPresent())
  {
    a2 = 0;
    goto LABEL_37;
  }

  a2 = FigCFDictionaryCreateMutableCopy();
  if (a2)
  {
    *&context[0] = &v80;
    *(context + 8) = v75;
    v78 = a2;
    CFDictionaryApplyFunction(v76, fbapspManager_retimeProcessingUnitScheduledParametersForIdentifier, context);
    v80 = **&context[0];
    if (v80)
    {
      goto LABEL_41;
    }

    FigCFDictionarySetValue();
LABEL_37:
    CMBaseObject = FigBufferedAirPlayAudioChainSubPipeGetCMBaseObject(*(v16 + 120));
    v53 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v53)
    {
      v54 = v53(CMBaseObject, v63, v35);
    }

    else
    {
      v54 = -12782;
    }

    v80 = v54;
LABEL_41:
    if (!v46)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  v80 = -12786;
  if (v46)
  {
LABEL_42:
    CFRelease(v46);
  }

LABEL_43:
  if (a2)
  {
    CFRelease(a2);
  }

  if (v35)
  {
    goto LABEL_46;
  }

  return v80;
}

void __fbapspManager_subPipeFinishedProcessingData_block_invoke(uint64_t a1)
{
  if (FigCFEqual())
  {
    fbapspManager_postNotification(*(a1 + 48), @"PlayResourceReleased", 0);
  }

  v3 = fbapspManager_disconnectSbufBridge(*(a1 + 48));
  OUTLINED_FUNCTION_0_5(v3);
  if (!v4)
  {
    if (*(*(a1 + 56) + 153) || (v5 = fbapspManager_clearCurrentSubPipe(*(a1 + 48), 0, 1), OUTLINED_FUNCTION_0_5(v5), !v6))
    {
      fbapspManager_setSubPipeTerminationInFlight(*(a1 + 48), 0);
      v7 = fbapspManager_processPendingSbufsOnSubPipeFinished(*(a1 + 48));
      OUTLINED_FUNCTION_0_5(v7);
      if (!v8)
      {
        v9 = FigCFEqual();
        v10 = *(a1 + 56);
        v11 = *(v10 + 156);
        if (v9 && v11 == 3)
        {
          fbapspManager_postNotification(*(a1 + 48), @"OverlapStartTimeReached", 0);
        }

        else if (v11 == 4 && *(v10 + 384) == 2 && *(v10 + 153))
        {
          if (dword_1EAF16F18)
          {
            OUTLINED_FUNCTION_147();
            OUTLINED_FUNCTION_53_4();
            v12 = OUTLINED_FUNCTION_126();
            OUTLINED_FUNCTION_86_2(v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, SBYTE2(v23), BYTE3(v23), SHIDWORD(v23));
            OUTLINED_FUNCTION_7_22();
            if (v1)
            {
              if (*(a1 + 48))
              {
                CMBaseObjectGetDerivedStorage();
              }

              OUTLINED_FUNCTION_2_6();
              OUTLINED_FUNCTION_39();
              OUTLINED_FUNCTION_4_41();
              OUTLINED_FUNCTION_329_0();
            }

            OUTLINED_FUNCTION_7();
            OUTLINED_FUNCTION_524();
          }
        }

        else
        {
          fbapspManager_setProcessingState(*(a1 + 48), 1);
        }

        fbapspManager_scheduleProcessingDataIfPossible(*(a1 + 48));
      }
    }
  }

  fbapspManager_releaseAsync(*(a1 + 48));
}

void __fbapspManager_subPipePassedTimelineMilestone_block_invoke(uint64_t a1)
{
  v50 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 40);
  if (*(v3 + 156) == 4 && *(v3 + 384) == 2)
  {
    if (*(v3 + 153))
    {
      v4 = fbapspManager_disconnectSbufBridge(*(a1 + 48));
      OUTLINED_FUNCTION_0_5(v4);
      if (!v5)
      {
        v6 = fbapspManager_clearCurrentSubPipe(*(a1 + 48), 1, 1);
        OUTLINED_FUNCTION_0_5(v6);
        if (!v7)
        {
          fbapspManager_setSubPipeTerminationInFlight(*(a1 + 48), 0);
          fbapspManager_setProcessingState(*(a1 + 48), 1);
          fbapspManager_postNotification(*(a1 + 48), @"OverlapOutroEndTimeProcessed", 0);
          *(*(a1 + 40) + 153) = 0;
          v8 = fbapspManager_lastProcessedOPTSInMediaTime(&v49);
          OUTLINED_FUNCTION_56_5(v8, v9, v10, v11, v12, v13, v14, v15, v25, v28, v31, v34, v37, v39, v41, v43, v45, v47, v16, v49.value);
          if (dword_1EAF16F18)
          {
            v17 = OUTLINED_FUNCTION_16_12();
            OUTLINED_FUNCTION_86_2(v17, v18, v19, v20, v21, v22, v23, v24, v26, v29, v32, v35, SBYTE2(v35), BYTE3(v35), SHIDWORD(v35));
            OUTLINED_FUNCTION_7_22();
            if (v1)
            {
              if (*(a1 + 48))
              {
                CMBaseObjectGetDerivedStorage();
              }

              OUTLINED_FUNCTION_47_4(*(a1 + 40), v27, v30, v33, v36, v38, v40, v42, v44, v46, v48, *&v49.value, v49.epoch);
              OUTLINED_FUNCTION_2_6();
              OUTLINED_FUNCTION_24_7();
              OUTLINED_FUNCTION_39();
              OUTLINED_FUNCTION_4_41();
              OUTLINED_FUNCTION_329_0();
            }

            OUTLINED_FUNCTION_7();
            OUTLINED_FUNCTION_524();
          }
        }
      }
    }
  }

  fbapspManager_releaseAsync(*(a1 + 48));
}

void __fbapspManager_copyProperty_block_invoke(void *a1)
{
  v1 = a1[6];
  v3 = a1[7];
  v2 = a1[8];
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_106(MEMORY[0x1E6960C70]);
  if (*(v4 + 456))
  {
LABEL_13:
    v7 = 0;
    goto LABEL_8;
  }

  v5 = v4;
  if (CFEqual(v1, @"SourceSampleBufferConsumer"))
  {
    Float64 = *(v5 + 96);
    if (!Float64)
    {
LABEL_7:
      v7 = 0;
      *v2 = Float64;
      goto LABEL_8;
    }

LABEL_4:
    Float64 = CFRetain(Float64);
    goto LABEL_7;
  }

  if (CFEqual(v1, @"CurrentRate"))
  {
    Float64 = FigCFNumberCreateFloat64();
    goto LABEL_7;
  }

  if (CFEqual(v1, @"CurrentSubpipeType"))
  {
    v9 = *(v5 + 120);
    if (!v9)
    {
      v7 = 0;
      *v2 = 0;
      goto LABEL_8;
    }

    CMBaseObject = FigBufferedAirPlayAudioChainSubPipeGetCMBaseObject(v9);
    v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v11)
    {
      v11(CMBaseObject, @"SubPipeType", v3, v2);
    }

    goto LABEL_13;
  }

  if (CFEqual(v1, @"MixStartMediaTime"))
  {
    v12 = 352;
    if ((*(v5 + 364) & 1) == 0)
    {
      v12 = 328;
    }

    v13 = (v5 + v12);
    v32 = *v13;
    v33 = *(v13 + 2);
    v29 = v32;
    v30 = v33;
    v14 = &v29;
    goto LABEL_18;
  }

  if (CFEqual(v1, @"ReadyToMix"))
  {
    isReadyToMix = fbapspManager_isReadyToMix();
    v16 = MEMORY[0x1E695E4D0];
    if (!isReadyToMix)
    {
      v16 = MEMORY[0x1E695E4C0];
    }

    goto LABEL_22;
  }

  if (CFEqual(v1, @"LastProcessedOPTS"))
  {
    fbapspManager_lastProcessedOPTSInMediaTime(&v31);
    v32 = *&v31.value;
    epoch = v31.epoch;
LABEL_26:
    v33 = epoch;
LABEL_29:
    v14 = &v32;
LABEL_18:
    Float64 = CMTimeCopyAsDictionary(v14, v3);
    goto LABEL_7;
  }

  if (CFEqual(v1, @"FirstProcessedOPTS"))
  {
    v33 = *(v5 + 536);
    v32 = *(v5 + 520);
    goto LABEL_29;
  }

  if (CFEqual(v1, @"ProcessingState"))
  {
    v18 = *(v5 + 156) - 1;
    if (v18 > 4)
    {
      v7 = 1061109567;
      goto LABEL_8;
    }

    *v2 = CFRetain(*(&off_1E7482E10 + v18));
    v19 = *(v5 + 156);
    if ((v19 - 1) >= 4)
    {
      if (v19 == 5)
      {
        v20 = "StopMixing";
      }

      else
      {
        v20 = "UNKNONW";
      }
    }

    else
    {
      v20 = off_1E7482E38[v19 - 1];
    }

    Float64 = CFStringCreateWithCString(v3, v20, 0x8000100u);
    goto LABEL_7;
  }

  if (CFEqual(v1, @"MilestoneSet"))
  {
    v16 = MEMORY[0x1E695E4D0];
    if (!*(v5 + 153))
    {
      v16 = MEMORY[0x1E695E4C0];
    }

LABEL_22:
    Float64 = *v16;
    if (!*v16)
    {
      goto LABEL_7;
    }

    goto LABEL_4;
  }

  if (CFEqual(v1, @"MixingToStopMixingMediaTime"))
  {
    v32 = *(v5 + 304);
    epoch = *(v5 + 320);
    goto LABEL_26;
  }

  if (!CFEqual(v1, @"ContentStreamFormatDescription"))
  {
    v24 = *(v5 + 120);
    if (v24)
    {
      v25 = FigBufferedAirPlayAudioChainSubPipeGetCMBaseObject(v24);
      v7 = CMBaseObjectCopyProperty(v25, v1, v3, v2);
      goto LABEL_8;
    }

    goto LABEL_13;
  }

  v22 = (v5 + 176);
  v21 = *(v5 + 176);
  if (v21)
  {
    v23 = 0;
    goto LABEL_57;
  }

  v26 = *(v5 + 608);
  if (v26)
  {
    v27 = CFRetain(v26);
  }

  else
  {
    v27 = CMBufferQueueCopyHead(*(v5 + 128));
  }

  v23 = v27;
  if (CMSampleBufferGetFormatDescription(v27))
  {
    v28 = FigEndpointStreamAudioFormatDescriptionCreateWithCMFormatDescription();
    if (!v28)
    {
      v21 = *v22;
      if (!*v22)
      {
LABEL_58:
        v7 = 0;
        *v2 = v21;
        goto LABEL_59;
      }

LABEL_57:
      v21 = CFRetain(v21);
      goto LABEL_58;
    }

    v7 = v28;
  }

  else
  {
    v7 = 0;
  }

LABEL_59:
  if (v23)
  {
    CFRelease(v23);
  }

LABEL_8:
  OUTLINED_FUNCTION_2_4();
  *(v8 + 24) = v7;
}

void __fbapspManager_setProperty_block_invoke(uint64_t a1)
{
  v135 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 40) + 456))
  {
    goto LABEL_14;
  }

  if (CFEqual(@"ThreadPriority", *(a1 + 48)))
  {
    v4 = *(a1 + 56);
    if (v4)
    {
      v5 = CFGetTypeID(v4);
      if (v5 == CFNumberGetTypeID())
      {
        v6 = *(*(a1 + 40) + 120);
        if (!v6)
        {
LABEL_14:
          OUTLINED_FUNCTION_372();
          return;
        }

        v7 = *(a1 + 56);
        CMBaseObject = FigBufferedAirPlayAudioChainSubPipeGetCMBaseObject(v6);
        v9 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v9)
        {
          IsValid = v9(CMBaseObject, @"ThreadPriority", v7);
        }

        else
        {
          IsValid = 4294954514;
        }

LABEL_13:
        OUTLINED_FUNCTION_12_7(IsValid);
        goto LABEL_14;
      }
    }

LABEL_12:
    OUTLINED_FUNCTION_303();
    IsValid = FigSignalErrorAtGM();
    goto LABEL_13;
  }

  if (CFEqual(@"DecodeForPrerollRate", *(a1 + 48)))
  {
    v11 = *(a1 + 56);
    if (!v11)
    {
      goto LABEL_12;
    }

    v12 = CFGetTypeID(v11);
    if (v12 != CFNumberGetTypeID())
    {
      goto LABEL_12;
    }

    v27 = *(a1 + 56);
    v26 = *(a1 + 64);
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    valuePtr.value = 0;
    CFNumberGetValue(v27, kCFNumberFloat64Type, &valuePtr);
    if (*(DerivedStorage + 72) == 1)
    {
      *(DerivedStorage + 56) = valuePtr.value;
      if (dword_1EAF16F18)
      {
        v29 = OUTLINED_FUNCTION_34_9();
        OUTLINED_FUNCTION_435_0(v29, v30, v31, v32, v33, v34, v35, v36, v112, v113, v114, v116, valuePtr.value, *&valuePtr.timescale, valuePtr.epoch, v118, v119, v120, *type);
        OUTLINED_FUNCTION_46();
        if (!v2)
        {
          goto LABEL_98;
        }

        if (v26)
        {
          v37 = CMBaseObjectGetDerivedStorage();
        }

        else
        {
          v37 = "";
        }

        v75 = *(DerivedStorage + 56);
        v122 = 136315906;
        v123 = "fbapspManager_setDecodeForPrerollRateRateIfNeeded";
        v124 = 2048;
        v125 = v26;
        v126 = 2082;
        v127 = v37;
        v128 = 2048;
        value = v75;
        OUTLINED_FUNCTION_100();
LABEL_97:
        OUTLINED_FUNCTION_10_3();
LABEL_98:
        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_238_0();
      }
    }

    else if (dword_1EAF16F18)
    {
      v41 = OUTLINED_FUNCTION_34_9();
      OUTLINED_FUNCTION_435_0(v41, v42, v43, v44, v45, v46, v47, v48, v112, v113, v114, v116, valuePtr.value, *&valuePtr.timescale, valuePtr.epoch, v118, v119, v120, *type);
      OUTLINED_FUNCTION_46();
      if (!v2)
      {
        goto LABEL_98;
      }

      if (v26)
      {
        v65 = CMBaseObjectGetDerivedStorage();
      }

      else
      {
        v65 = "";
      }

      v76 = *(DerivedStorage + 56);
      v77 = *(DerivedStorage + 72);
      switch(v77)
      {
        case 1:
          v78 = "Stopped";
          break;
        case 2:
          v78 = "Playing";
          break;
        case 3:
          v78 = "Paused";
          break;
        default:
          v78 = "UNKNONW";
          break;
      }

      v122 = 136316418;
      v123 = "fbapspManager_setDecodeForPrerollRateRateIfNeeded";
      v124 = 2048;
      v125 = v26;
      v126 = 2082;
      v127 = v65;
      v128 = 2048;
      value = valuePtr.value;
      v130 = 2048;
      v131 = v76;
      v132 = 2080;
      v133 = v78;
      OUTLINED_FUNCTION_100();
      goto LABEL_97;
    }

    v81 = *(DerivedStorage + 56);
    v80 = v26;
    goto LABEL_100;
  }

  if (CFEqual(@"PipelineRate", *(a1 + 48)))
  {
    v13 = *(a1 + 56);
    if (!v13 || (v14 = CFGetTypeID(v13), v14 != CFNumberGetTypeID()))
    {
      OUTLINED_FUNCTION_3_38();
      if (v15)
      {
        goto LABEL_14;
      }

      goto LABEL_12;
    }

    CFNumberGetValue(*(a1 + 56), kCFNumberFloat64Type, (*(a1 + 40) + 56));
    if (dword_1EAF16F18)
    {
      LODWORD(valuePtr.value) = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      OUTLINED_FUNCTION_53_4();
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_7_22();
      if (v1)
      {
        v71 = *(a1 + 64);
        if (v71)
        {
          v72 = CMBaseObjectGetDerivedStorage();
        }

        else
        {
          v72 = "";
        }

        v79 = *(*(a1 + 40) + 56);
        v122 = 136315906;
        v123 = "fbapspManager_setProperty_block_invoke";
        v124 = 2048;
        v125 = v71;
        v126 = 2082;
        v127 = v72;
        v128 = 2048;
        value = v79;
        OUTLINED_FUNCTION_100();
        OUTLINED_FUNCTION_4_41();
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_524();
    }

    v80 = *(a1 + 64);
    v81 = *(*(a1 + 40) + 56);
LABEL_100:
    IsValid = fbapspManager_startDataFlowIfRateIsValid(v80, v81);
    goto LABEL_13;
  }

  if (CFEqual(@"LoudnessInfo", *(a1 + 48)))
  {
    v16 = *(a1 + 56);
    if (v16)
    {
      v17 = CFGetTypeID(v16);
      if (v17 != CFDictionaryGetTypeID())
      {
        if (*(a1 + 56))
        {
          OUTLINED_FUNCTION_3_38();
          if (v18)
          {
            goto LABEL_14;
          }

          goto LABEL_12;
        }
      }
    }

    v19 = *(*(a1 + 40) + 216);
    if (v19)
    {
      CFRelease(v19);
      *(*(a1 + 40) + 216) = 0;
    }

    v20 = *(a1 + 56);
    if (v20)
    {
      *(*(a1 + 40) + 216) = CFRetain(v20);
    }

    else
    {
      *(*(a1 + 40) + 216) = CFDictionaryCreate(*MEMORY[0x1E695E480], 0, 0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (!*(*(a1 + 40) + 216))
      {
        goto LABEL_12;
      }
    }

    fbapspManager_setLoudnessInfoOnSubPipe();
    OUTLINED_FUNCTION_2_4();
    *(v21 + 24) = 0;
    goto LABEL_14;
  }

  if (!CFEqual(@"AudioProcessingTap", *(a1 + 48)))
  {
    if (CFEqual(@"OverlapRange", *(a1 + 48)))
    {
      OUTLINED_FUNCTION_372();

      fbapspManager_processOverlapRange(v38, v39);
      return;
    }

    if (CFEqual(@"MixStartMediaTime", *(a1 + 48)))
    {
      v50 = *(a1 + 56);
      if (v50)
      {
        v51 = CFGetTypeID(v50);
        if (v51 == CFDictionaryGetTypeID())
        {
          valuePtr = **&MEMORY[0x1E6960C70];
          v115 = *&valuePtr.value;
          epoch = valuePtr.epoch;
          CMTimeMakeFromDictionary(&valuePtr, *(a1 + 56));
          v53 = *(a1 + 40);
          *(v53 + 352) = v115;
          *(v53 + 368) = epoch;
          if (dword_1EAF16F18)
          {
            *type = 0;
            v120 = OS_LOG_TYPE_DEFAULT;
            v54 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v54, v120);
            OUTLINED_FUNCTION_7_22();
            if (v1)
            {
              v63 = *(a1 + 64);
              if (v63)
              {
                v55 = CMBaseObjectGetDerivedStorage();
                v64 = v55;
              }

              else
              {
                v64 = "";
              }

              OUTLINED_FUNCTION_23_11(v55, v56, v57, v58, v59, v60, v61, v62, v112, v113, v115, *(&v115 + 1), *&valuePtr.value);
              CMTimeGetSeconds(&time);
              v122 = 136315906;
              OUTLINED_FUNCTION_37_6();
              v125 = v63;
              v126 = 2082;
              v127 = v64;
              v128 = v86;
              value = v87;
              OUTLINED_FUNCTION_100();
              OUTLINED_FUNCTION_4_41();
            }

            OUTLINED_FUNCTION_7();
            OUTLINED_FUNCTION_524();
          }

          *(*(a1 + 40) + 328) = valuePtr;
        }
      }

      goto LABEL_14;
    }

    if (CFEqual(@"AudioCurves", *(a1 + 48)))
    {
      v66 = *(a1 + 56);
      if (!v66)
      {
LABEL_104:
        v85 = *(a1 + 40);
        v70 = *(v85 + 416);
        *(v85 + 416) = 0;
        goto LABEL_116;
      }

      CFGetTypeID(v66);
      CFDictionaryGetTypeID();
      v67 = OUTLINED_FUNCTION_28_10();
      if (!v68)
      {
        if (v67)
        {
          OUTLINED_FUNCTION_3_38();
          if (v84)
          {
            goto LABEL_14;
          }

          goto LABEL_12;
        }

        goto LABEL_104;
      }

      v69 = *(a1 + 40);
      v70 = *(v69 + 416);
      *(v69 + 416) = v67;
      if (!v67)
      {
LABEL_116:
        if (!v70)
        {
          goto LABEL_14;
        }

        goto LABEL_117;
      }

LABEL_91:
      CFRetain(v67);
      goto LABEL_116;
    }

    if (CFEqual(@"SecondaryAudioCurves", *(a1 + 48)))
    {
      v82 = *(a1 + 56);
      if (v82)
      {
        CFGetTypeID(v82);
        CFDictionaryGetTypeID();
        v67 = OUTLINED_FUNCTION_28_10();
        if (v68)
        {
          v83 = *(a1 + 40);
          v70 = *(v83 + 424);
          *(v83 + 424) = v67;
          if (!v67)
          {
            goto LABEL_116;
          }

          goto LABEL_91;
        }

        if (v67)
        {
          OUTLINED_FUNCTION_3_38();
          if (v88)
          {
            goto LABEL_14;
          }

          goto LABEL_12;
        }
      }

      v89 = *(a1 + 40);
      v70 = *(v89 + 424);
      *(v89 + 424) = 0;
      goto LABEL_116;
    }

    if (CFEqual(@"WarehouseRetransmissionAvailable", *(a1 + 48)))
    {
      *(*(a1 + 40) + 512) = *MEMORY[0x1E695E4D0] == *(a1 + 56);
      goto LABEL_14;
    }

    if (CFEqual(@"AudioProcessingUnits", *(a1 + 48)))
    {
      v92 = *(a1 + 56);
      if (v92)
      {
        CFGetTypeID(v92);
        CFArrayGetTypeID();
        v67 = OUTLINED_FUNCTION_28_10();
        if (v68)
        {
          v93 = *(a1 + 40);
          v70 = *(v93 + 432);
          *(v93 + 432) = v67;
          if (!v67)
          {
            goto LABEL_116;
          }

          goto LABEL_91;
        }

        if (v67)
        {
          OUTLINED_FUNCTION_3_38();
          if (v96)
          {
            goto LABEL_14;
          }

          goto LABEL_12;
        }
      }

      v97 = *(a1 + 40);
      v70 = *(v97 + 432);
      *(v97 + 432) = 0;
      goto LABEL_116;
    }

    if (CFEqual(@"ExpectScaledEdits", *(a1 + 48)))
    {
      v94 = *(a1 + 56);
      if (v94)
      {
        CFGetTypeID(v94);
        CFBooleanGetTypeID();
        v67 = OUTLINED_FUNCTION_28_10();
        if (v68)
        {
          v95 = *(a1 + 40);
          v70 = *(v95 + 440);
          *(v95 + 440) = v67;
          if (!v67)
          {
            goto LABEL_116;
          }

          goto LABEL_91;
        }

        if (v67)
        {
          OUTLINED_FUNCTION_3_38();
          if (v104)
          {
            goto LABEL_14;
          }

          goto LABEL_12;
        }
      }

      v105 = *(a1 + 40);
      v70 = *(v105 + 440);
      *(v105 + 440) = 0;
      goto LABEL_116;
    }

    if (!CFEqual(@"TimePitchAlgorithm", *(a1 + 48)))
    {
      if (!CFEqual(@"RecommendedTransportFormatDescription", *(a1 + 48)))
      {
        goto LABEL_14;
      }

      v106 = *(a1 + 56);
      if (!v106)
      {
        goto LABEL_14;
      }

      v107 = CFGetTypeID(v106);
      if (v107 != FigEndpointStreamAudioFormatDescriptionGetTypeID())
      {
        goto LABEL_14;
      }

      v108 = *(a1 + 40);
      v109 = *(v108 + 192);
      v110 = *(a1 + 56);
      *(v108 + 192) = v110;
      if (v110)
      {
        CFRetain(v110);
      }

      if (!v109)
      {
        goto LABEL_14;
      }

LABEL_117:
      OUTLINED_FUNCTION_372();

      CFRelease(v90);
      return;
    }

    v98 = *(a1 + 56);
    if (v98)
    {
      v99 = CFGetTypeID(v98);
      TypeID = CFStringGetTypeID();
      v101 = *(a1 + 56);
      if (v99 == TypeID)
      {
        v111 = *(a1 + 40);
        v103 = *(v111 + 448);
        *(v111 + 448) = v101;
        if (v101)
        {
          CFRetain(v101);
        }

        goto LABEL_142;
      }

      if (v101)
      {
        goto LABEL_14;
      }
    }

    v102 = *(a1 + 40);
    v103 = *(v102 + 448);
    *(v102 + 448) = 0;
LABEL_142:
    if (v103)
    {
      CFRelease(v103);
    }

    IsValid = fbapspManager_setTimePitchAlgorithmOnSubPipe();
    goto LABEL_13;
  }

  if (*(a1 + 56))
  {
    v22 = MTAudioProcessingTapGetTypeID();
    if (v22 != CFGetTypeID(*(a1 + 56)))
    {
      goto LABEL_14;
    }

    v23 = *(a1 + 56);
    v24 = *(a1 + 40);
    v25 = *(v24 + 64);
    *(v24 + 64) = v23;
    if (v23)
    {
      CFRetain(v23);
    }
  }

  else
  {
    v73 = *(a1 + 40);
    v25 = *(v73 + 64);
    *(v73 + 64) = 0;
  }

  if (v25)
  {
    CFRelease(v25);
  }

  OUTLINED_FUNCTION_372();

  fbapspManager_setAudioProcessingTapOnSubPipe();
}

uint64_t fbapspManager_startDataFlowIfRateIsValid(const void *a1, double a2)
{
  CMBaseObjectGetDerivedStorage();
  if (a2 == -999999.875)
  {
    return 0;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *(DerivedStorage + 72);
  switch(v5)
  {
    case 3:
      if (a2 != 0.0)
      {
        v6 = 2;
        goto LABEL_12;
      }

      break;
    case 2:
      if (a2 == 0.0)
      {
        v6 = 3;
LABEL_12:
        *(DerivedStorage + 72) = v6;
      }

      break;
    case 1:
      if (a2 == 0.0)
      {
        v6 = 3;
      }

      else
      {
        v6 = 2;
      }

      goto LABEL_12;
    default:
      OUTLINED_FUNCTION_303();
      result = FigSignalErrorAtGM();
      if (result)
      {
        return result;
      }

      break;
  }

  CMBaseObjectGetDerivedStorage();
  fbapspManager_dataFlowIsAllowed();
  fbapspManager_scheduleProcessingDataIfPossible(a1);
  return 0;
}

uint64_t fbapspManager_isRetransmitForOverlapRequired()
{
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_59_2(MEMORY[0x1E6960C70]);
  if ((v0[34].n128_u8[12] & 1) == 0)
  {
    return 0;
  }

  v1 = v0;
  if ((v0[15].n128_u8[4] & 1) == 0)
  {
    return 0;
  }

  v2 = v0 + 34;
  if (v0[22].n128_u8[12])
  {
    OUTLINED_FUNCTION_106(v2);
    v5 = *v1[22].n128_u8;
    CMTimeSubtract(&v7, &lhs, &v5);
  }

  else
  {
    OUTLINED_FUNCTION_59_2(v2);
  }

  lhs = *&v1[14].n128_i8[8];
  v5 = v7;
  v3 = CMTimeCompare(&lhs, &v5) >> 31;
  if (v1[37].n128_u8[0])
  {
    OUTLINED_FUNCTION_106(v1[36].n128_i64 + 4);
    v5 = *&v1[14].n128_i8[8];
    if (CMTimeCompare(&lhs, &v5))
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

uint64_t fbapspManager_setRateAndAnchorTime(const void *a1, __int128 *a2, double a3)
{
  if (!*(CMBaseObjectGetDerivedStorage() + 456))
  {
    v13 = *a2;
    OUTLINED_FUNCTION_44_7();
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v7 = MEMORY[0x19A8CC720](*MEMORY[0x1E695E480], 64, 0x1020040EB82741ALL, 0);
    if (v7)
    {
      v8 = v7;
      if (a1)
      {
        v9 = CFRetain(a1);
      }

      else
      {
        v9 = 0;
      }

      *v8 = v9;
      *(v8 + 7) = a3;
      *(v8 + 8) = v13;
      *(v8 + 3) = v14;
      *(v8 + 2) = v11;
      *(v8 + 6) = v12;
      dispatch_async_f(*(DerivedStorage + 80), v8, fbapspManager_setRateAndAnchorTimeDispatch);
    }
  }

  return 0;
}

void fbapspManager_setRateAndAnchorTimeDispatch(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 56);
  v17 = *(a1 + 8);
  v18 = *(a1 + 24);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 456))
  {
    if ((v5 = DerivedStorage, v6 = CMBaseObjectGetDerivedStorage(), v7 = v6, !*(v6 + 120)) && *(v6 + 56) != -999999.875 || fbapspManager_isSubPipeStarted() && ((v12 = *(v7 + 72), v3 != 0.0) ? (v13 = v12 == 3) : (v13 = 0), v13 || (v3 == 0.0 ? (v14 = v12 == 2) : (v14 = 0), v14)) || ((v8 = *(v7 + 56), v3 != 0.0) || v8 != -999999.875) && (v3 != 0.0 && v8 == -999999.875 || (v3 != 0.0 || v8 != 0.0) && ((v9 = v3 == 0.0, v8 != 0.0) ? (v10 = 1) : (v9 = 0, v10 = v3 == 0.0), v10 ? (v11 = !v9) : (v11 = 0), !v11)))
    {
      *(v5 + 56) = v3;
      if (!fbapspManager_startDataFlowIfRateIsValid(v2, v3))
      {
        v15 = *(v5 + 56);
        v19 = v17;
        v20 = v18;
        fbapspManager_startAudioChainForSubPipe(v15, v2, &v19);
      }
    }
  }

  fbapspManager_releaseAsync(*a1);
  v16 = *MEMORY[0x1E695E480];

  CFAllocatorDeallocate(v16, a1);
}

uint64_t __fbapspManager_reset_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 456))
  {
    v5 = 0;
    return OUTLINED_FUNCTION_12_7(v5);
  }

  v4 = DerivedStorage;
  v5 = fbapspManager_disconnectSbufBridge(v1);
  if (!v5)
  {
    if (v2)
    {
      v5 = fbapspManager_flushAllSampleBufferConsumers();
      if (v5)
      {
        return OUTLINED_FUNCTION_12_7(v5);
      }

      v5 = CMBufferQueueReset(*(v4 + 200));
      if (v5)
      {
        return OUTLINED_FUNCTION_12_7(v5);
      }

      v5 = fbapspManager_processPendingSbufsOnSubPipeFinished(v1);
      if (v5)
      {
        return OUTLINED_FUNCTION_12_7(v5);
      }

      v19 = *(v4 + 120);
      if (v19)
      {
        v20 = *(*(CMBaseObjectGetVTable() + 16) + 48);
        if (!v20)
        {
          goto LABEL_32;
        }

        v22 = *MEMORY[0x1E6960CC0];
        v23 = *(MEMORY[0x1E6960CC0] + 16);
        v5 = v20(v19, &v22);
        if (v5)
        {
          return OUTLINED_FUNCTION_12_7(v5);
        }
      }
    }

    v6 = *(v4 + 120);
    if (!v6)
    {
LABEL_17:
      v14 = MEMORY[0x1E6960C70];
      fbapspManager_setProcessingState(v1, 1);
      fbapspManager_setSubPipeTerminationInFlight(v1, 0);
      fbapspManager_scheduleProcessingDataIfPossible(v1);
      if (*(v4 + 568))
      {
        FigDeferCFRelease();
        *(v4 + 568) = 0;
      }

      v15 = *v14;
      *(v4 + 544) = *v14;
      v16 = *(v14 + 2);
      *(v4 + 560) = v16;
      *(v4 + 520) = v15;
      *(v4 + 536) = v16;
      *(v4 + 352) = v15;
      *(v4 + 368) = v16;
      *(v4 + 580) = v15;
      *(v4 + 596) = v16;
      v17 = *(v4 + 608);
      if (v17)
      {
        CFRelease(v17);
        *(v4 + 608) = 0;
      }

      v18 = *(v4 + 616);
      if (v18)
      {
        CFRelease(v18);
        *(v4 + 616) = 0;
      }

      v5 = *(v4 + 192);
      if (v5)
      {
        CFRelease(v5);
        v5 = 0;
        *(v4 + 192) = 0;
      }

      return OUTLINED_FUNCTION_12_7(v5);
    }

    v7 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v7)
    {
      v5 = v7(v6, v2);
      if (v5)
      {
        return OUTLINED_FUNCTION_12_7(v5);
      }

      v8 = *(v4 + 120);
      v9 = *(*(CMBaseObjectGetVTable() + 16) + 40);
      if (v9)
      {
        v5 = v9(v8, v2);
        if (v5)
        {
          return OUTLINED_FUNCTION_12_7(v5);
        }

        v5 = fbapspManager_removeListenersForSubPipe(v1, *(v4 + 120));
        if (v5)
        {
          return OUTLINED_FUNCTION_12_7(v5);
        }

        if (*(v4 + 160) && *(v4 + 153))
        {
          v5 = fbapspManager_setTimelineMilestoneOnSubPipe(v1);
          if (v5)
          {
            return OUTLINED_FUNCTION_12_7(v5);
          }

          *(v4 + 153) = 0;
        }

        CMBaseObject = FigBufferedAirPlayAudioChainSubPipeGetCMBaseObject(*(v4 + 120));
        if (!CMBaseObject)
        {
          v5 = 4294954516;
          return OUTLINED_FUNCTION_12_7(v5);
        }

        v11 = CMBaseObject;
        v12 = *(*(CMBaseObjectGetVTable() + 8) + 24);
        if (v12)
        {
          v5 = v12(v11);
          if (v5)
          {
            return OUTLINED_FUNCTION_12_7(v5);
          }

          v13 = *(v4 + 120);
          if (v13)
          {
            CFRelease(v13);
            *(v4 + 120) = 0;
          }

          goto LABEL_17;
        }
      }
    }

LABEL_32:
    v5 = 4294954514;
  }

  return OUTLINED_FUNCTION_12_7(v5);
}

uint64_t fbapspManager_flushAllSampleBufferConsumers()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 456))
  {
    return 0;
  }

  v1 = DerivedStorage;
  v2 = *(DerivedStorage + 96);
  v3 = *(*(CMBaseObjectGetVTable() + 16) + 72);
  if (!v3)
  {
    return 4294954514;
  }

  result = v3(v2);
  if (result)
  {
    return result;
  }

  v5 = *(v1 + 104);
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 72);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v5);
}

uint64_t __fbapspManager_flush_block_invoke(uint64_t result)
{
  if (!*(*(result + 40) + 456))
  {
    v1 = result;
    v2 = fbapspManager_flushAllSampleBufferConsumers();
    result = OUTLINED_FUNCTION_0_5(v2);
    if (!v3)
    {
      v4 = *(*(v1 + 40) + 120);
      if (v4)
      {
        v7 = *(v1 + 56);
        v8 = *(v1 + 72);
        v5 = *(*(CMBaseObjectGetVTable() + 16) + 48);
        if (v5)
        {
          v9 = v7;
          v10 = v8;
          v6 = v5(v4, &v9);
        }

        else
        {
          v6 = 4294954514;
        }

        return OUTLINED_FUNCTION_12_7(v6);
      }
    }
  }

  return result;
}

void __fbapspManager_flushFromTime_block_invoke_210(uint64_t a1)
{
  v75 = *MEMORY[0x1E69E9840];
  *(*(a1 + 48) + 576) = 1;
  if (dword_1EAF16F18)
  {
    v3 = OUTLINED_FUNCTION_39_6();
    OUTLINED_FUNCTION_63_3(v3, v4, v5, v6, v7, v8, v9, v10, v42, v43, v44, v45, v46, v47, v48, v49, v50, block, v52, v53, v54, v55, v56, v57, *(&v57 + 1), v58, *(&v58 + 1), v59, *(&v59 + 1), v60, *(&v60 + 1), v61, v62, v63, v64);
    OUTLINED_FUNCTION_7_22();
    if (p_block)
    {
      v11 = *(a1 + 56);
      if (v11)
      {
        DerivedStorage = CMBaseObjectGetDerivedStorage();
      }

      else
      {
        DerivedStorage = "";
      }

      v13 = *(a1 + 48);
      v14 = *(v13 + 156);
      if ((v14 - 1) >= 4)
      {
        v16 = v14 == 5;
        v15 = "StopMixing";
        if (!v16)
        {
          v15 = "UNKNONW";
        }
      }

      else
      {
        v15 = off_1E7482E38[v14 - 1];
      }

      v17 = *(v13 + 456);
      v65 = 136316162;
      v66 = "fbapspManager_flushFromTime_block_invoke";
      v67 = 2048;
      v68 = v11;
      v69 = 2082;
      v70 = DerivedStorage;
      v71 = 2080;
      v72 = v15;
      v73 = 1024;
      v74 = v17;
      LODWORD(v43) = 48;
      v42 = &v65;
      OUTLINED_FUNCTION_4_41();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_524();
  }

  v18 = *(a1 + 32);
  if (!*(*(v18 + 8) + 24))
  {
    p_block = &block;
    v19 = MEMORY[0x1E69E9820];
    do
    {
      v20 = *(a1 + 64);
      v57 = *(a1 + 48);
      v21 = *(v57 + 80);
      v22 = *(a1 + 96);
      v59 = *(a1 + 80);
      v60 = v22;
      block = v19;
      v52 = 0x40000000;
      v53 = __fbapspManager_flushFromTime_block_invoke_211;
      v54 = &unk_1E7482CB8;
      v58 = v20;
      v23 = *(a1 + 40);
      v55 = v18;
      v56 = v23;
      dispatch_sync(v21, &block);
      v18 = *(a1 + 32);
    }

    while (!*(*(v18 + 8) + 24));
  }

  if (dword_1EAF16F18)
  {
    v24 = OUTLINED_FUNCTION_39_6();
    OUTLINED_FUNCTION_63_3(v24, v25, v26, v27, v28, v29, v30, v31, v42, v43, v44, v45, v46, v47, v48, v49, v50, block, v52, v53, v54, v55, v56, v57, *(&v57 + 1), v58, *(&v58 + 1), v59, *(&v59 + 1), v60, *(&v60 + 1), v61, v62, v63, v64);
    OUTLINED_FUNCTION_7_22();
    if (p_block)
    {
      v32 = *(a1 + 56);
      if (v32)
      {
        CMBaseObjectGetDerivedStorage();
      }

      OUTLINED_FUNCTION_27_9();
      if (v36)
      {
        v16 = v34 == 5;
        v37 = "StopMixing";
        if (!v16)
        {
          v37 = "UNKNONW";
        }
      }

      else
      {
        v37 = off_1E7482E38[v35];
      }

      v65 = 136315906;
      v66 = "fbapspManager_flushFromTime_block_invoke";
      v67 = 2048;
      v68 = v32;
      v69 = 2082;
      v70 = v33;
      v71 = 2080;
      v72 = v37;
      OUTLINED_FUNCTION_4_41();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_524();
  }

  v38 = *(a1 + 56);
  if (v38)
  {
    CFRetain(v38);
    v39 = *(a1 + 56);
  }

  else
  {
    v39 = 0;
  }

  v40 = *(a1 + 48);
  v41 = *(v40 + 80);
  v45 = MEMORY[0x1E69E9820];
  v46 = 0x40000000;
  v47 = __fbapspManager_flushFromTime_block_invoke_213;
  v48 = &__block_descriptor_tmp_214;
  v49 = v40;
  v50 = v39;
  dispatch_async(v41, &v45);
  fbapspManager_releaseAsync(*(a1 + 56));
}

void __fbapspManager_flushFromTime_block_invoke_213(uint64_t a1)
{
  OUTLINED_FUNCTION_46_4((*(a1 + 32) + 580));
  fbapspManager_scheduleProcessingDataIfPossible(*(v2 + 40));
  v3 = *(a1 + 40);

  fbapspManager_releaseAsync(v3);
}

void __fbapspManager_prepareMixingData_block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  if (!*(v2 + 456))
  {
    if (dword_1EAF16F18)
    {
      LODWORD(rhs.value) = 0;
      LOBYTE(value) = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_40();
      if (v1)
      {
        v5 = *(a1 + 48);
        if (v5)
        {
          CMBaseObjectGetDerivedStorage();
        }

        OUTLINED_FUNCTION_27_9();
        if (v9)
        {
          if (v7 == 5)
          {
            v10 = "StopMixing";
          }

          else
          {
            v10 = "UNKNONW";
          }
        }

        else
        {
          v10 = off_1E7482E38[v8];
        }

        LODWORD(lhs.value) = 136315906;
        *(&lhs.value + 4) = "fbapspManager_prepareMixingData_block_invoke";
        LOWORD(lhs.flags) = 2048;
        *(&lhs.flags + 2) = v5;
        HIWORD(lhs.epoch) = 2082;
        v25 = v6;
        v26 = 2080;
        v27 = v10;
        OUTLINED_FUNCTION_108();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_414();
      v2 = *(a1 + 40);
    }

    if (*(v2 + 156) == 3)
    {
      v11 = *(a1 + 48);
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v29 = *MEMORY[0x1E6960C70];
      v30 = *(MEMORY[0x1E6960C70] + 8);
      v13 = *(DerivedStorage + 608);
      if (v13)
      {
        v14 = CFRetain(v13);
      }

      else
      {
        v14 = CMBufferQueueCopyHead(*(DerivedStorage + 128));
      }

      v15 = v14;
      CMSampleBufferGetOutputPresentationTimeStamp(&v28, v14);
      value = v28.value;
      flags = v28.flags;
      timescale = v28.timescale;
      epoch = v28.epoch;
      CMSampleBufferGetOutputDuration(&v28, v15);
      if ((flags & 1) == 0)
      {
        started = FigSignalErrorAtGM();
        goto LABEL_41;
      }

      if ((*(DerivedStorage + 340) & 1) != 0 && (*(DerivedStorage + 364) & 1) == 0)
      {
        lhs = *(DerivedStorage + 328);
        rhs.value = value;
        rhs.timescale = timescale;
        rhs.flags = flags;
        rhs.epoch = epoch;
        CMTimeSubtract(&v28, &lhs, &rhs);
        *(DerivedStorage + 352) = v28;
      }

      if (*(DerivedStorage + 120))
      {
        if (fbapspManager_outputRequiresSubPipeChange(v11, v15))
        {
          v22 = fbapspManager_prepareSubPipeToStop(v11, v15, 1);
          if (v22)
          {
            v20 = v22;
          }

          else
          {
            v20 = -19760;
          }

          goto LABEL_32;
        }
      }

      else
      {
        started = fbapspManager_createAndInitializeSubPipe(v11, v15, @"SubPipeTypeTranscode");
        if (started)
        {
          goto LABEL_41;
        }

        fbapspManager_enqueueMarkerSampleBuffer();
      }

      started = fbapspManager_setPropertiesOnSubPipe(v11);
      if (!started)
      {
        if (*(DerivedStorage + 364))
        {
          lhs.value = value;
          lhs.timescale = timescale;
          lhs.flags = flags;
          lhs.epoch = epoch;
          rhs = *(DerivedStorage + 352);
          CMTimeAdd(&v28, &lhs, &rhs);
          v29 = v28.value;
          flags = v28.flags;
          v30 = v28.timescale;
          epoch = v28.epoch;
        }

        else
        {
          v29 = value;
          v30 = timescale;
        }

        v19 = *(DerivedStorage + 56);
        v28.value = v29;
        v28.timescale = v30;
        v28.flags = flags;
        v28.epoch = epoch;
        started = fbapspManager_startAudioChainForSubPipe(v19, v11, &v28.value);
        if (!started)
        {
          if (*(DerivedStorage + 384) != 2)
          {
            v20 = 0;
LABEL_32:
            if (v15)
            {
              CFRelease(v15);
            }

            OUTLINED_FUNCTION_2_4();
            *(v21 + 24) = v20;
            goto LABEL_35;
          }

          started = fbapspManager_setTimelineMilestoneOnSubPipeWithOverlapEndTime(v11);
        }
      }

LABEL_41:
      v20 = started;
      goto LABEL_32;
    }
  }

LABEL_35:
  OUTLINED_FUNCTION_372();
}

void __fbapspManager_sourceDataBecameReady_block_invoke(uint64_t a1)
{
  fbapspManager_scheduleProcessingDataIfPossible(*(a1 + 32));
  v2 = *(a1 + 32);

  fbapspManager_releaseAsync(v2);
}

void __fbapspManager_mediatorLowWaterTriggerCallback_block_invoke(uint64_t a1)
{
  fbapspManager_scheduleProcessingDataIfPossible(*(a1 + 32));
  v2 = *(a1 + 32);

  fbapspManager_releaseAsync(v2);
}

uint64_t fbapspManager_createAndInitializeSubPipe_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

CFDictionaryRef fbapspManager_createAndInitializeSubPipe_cold_2(CFDictionaryRef *a1)
{
  result = CFDictionaryCreate(*MEMORY[0x1E695E480], kFigBufferedAirPlaySubPipeManagerProperty_ProcessingMode, kFigBufferedAirPlaySubPipeManagerProcessingMode_Passthrough, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  *a1 = result;
  return result;
}

double fbapspManager_createAndInitializeSubPipe_cold_3(uint64_t a1)
{
  if (*(a1 + 508) != 1)
  {
    *(a1 + 508) = 2;
  }

  *&result = OUTLINED_FUNCTION_46_4((a1 + 460)).n128_u64[0];
  return result;
}

uint64_t FigBufferedAirPlayAudioChainSubPipeSampleBufferCreateWithTimeStampAndMarker_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

CMAttachmentBearerRef FigBufferedAirPlayAudioChainSubPipeSampleBufferCreateWithTimeStampAndMarker_cold_2(CFStringRef key, void *a2, CMAttachmentBearerRef *a3, CFTypeRef value)
{
  if (key)
  {
    CMSetAttachment(*a3, key, value, 1u);
  }

  result = *a3;
  if (*a3)
  {
    result = CFRetain(result);
  }

  *a2 = result;
  return result;
}

__n128 FigBufferedAirPlayAudioChainSubPipeSampleBufferCreateWithTimeStampAndMarker_cold_3(uint64_t a1, __int128 *a2)
{
  CMTimeMake(&v7, 0, 1);
  *a1 = v7;
  v4 = *a2;
  *(a1 + 40) = *(a2 + 2);
  *(a1 + 24) = v4;
  v5 = MEMORY[0x1E6960C70];
  result = *MEMORY[0x1E6960C70];
  *(a1 + 48) = *MEMORY[0x1E6960C70];
  *(a1 + 64) = *(v5 + 16);
  return result;
}

uint64_t FigBufferedAirPlayAudioChainSubPipeSampleBufferCreateWithTimeStampAndMarker_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fbapspManager_retimeProcessingUnitScheduledParametersForIdentifier_cold_1(_DWORD **a1)
{
  result = FigSignalErrorAtGM();
  **a1 = result;
  return result;
}

uint64_t fbapspManager_processOverlapRange_cold_1(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 153))
  {
    *(a1 + 154) = 1;
  }

  result = fbapspManager_setTimelineMilestoneOnSubPipe(a2);
  *(a1 + 153) = 0;
  return result;
}

uint64_t __fbapspManager_flushFromTime_block_invoke_211_cold_1(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  *(*(*(a1 + 40) + 8) + 24) = fbapspManager_setTimelineMilestoneOnSubPipe(*(a1 + 56));
  if (*(*(*(a1 + 40) + 8) + 24))
  {
    return 1;
  }

  result = 0;
  v7 = *a2;
  *a3 = *a2;
  *(v7 + 153) = 0;
  return result;
}

uint64_t __fbapspManager_flushFromTime_block_invoke_211_cold_2(const void *a1, uint64_t a2)
{
  CMSetAttachment(a1, @"SBUFForAutoOrder", *MEMORY[0x1E695E4D0], 0);
  v3 = fbapspManager_disconnectSbufBridge(*(a2 + 56));
  OUTLINED_FUNCTION_32_7(v3);
  if (v4)
  {
    v7 = 1;
  }

  else
  {
    v5 = fbapspManager_clearCurrentSubPipe(*(a2 + 56), 0, 0);
    OUTLINED_FUNCTION_32_7(v5);
    if (v6)
    {
      v7 = -1;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7 & 1;
}

uint64_t faf_mediaValidationFilterFn()
{
  OUTLINED_FUNCTION_369();
  if (FigAlternateHasVideoFormat(v2, 2) && FigAlternateGetVideoRange(v0) == 3)
  {
    return 0;
  }

  if (!FigAlternateGetCodecString(v0))
  {
    return 1;
  }

  result = FigAlternateHasValidCodecs(v0);
  if (!result)
  {
    return result;
  }

  return *MEMORY[0x1E695E4D0] == v1 || !FigAlternateHasUnknownCodecs(v0);
}

uint64_t fappf_PathwayFilterFn(int a1, const __CFData *a2)
{
  v3 = OUTLINED_FUNCTION_25_11(a1, a2);
  PathwayID = FigAlternateGetPathwayID(v2);
  if (!PathwayID)
  {
    return 1;
  }

  if (!*(v3 + 2) && !*(v3 + 1))
  {
    *(v3 + 2) = PathwayID;
    CFRetain(PathwayID);
    return 1;
  }

  return FigCFEqual();
}

uint64_t FigAlternateOfflinePlayableForMediaSelectionFilterCreate(void *a1, uint64_t a2, const __CFArray *a3, int a4, void *a5)
{
  v13 = 0;
  __src = 0u;
  v12 = 0u;
  result = FigStreamingCacheCopyCompletedMediaStreamURLs(a2, &__src, &__src + 1);
  if (!result)
  {
    if (a4)
    {
      v10 = 0;
    }

    else
    {
      v10 = faf_allEqualMinSortingFn;
    }

    *&v12 = faf_copyMediaSelectionPersistentIDForMediaType(a3, 1986618469);
    *(&v12 + 1) = faf_copyMediaSelectionPersistentIDForMediaType(a3, 1936684398);
    v13 = faf_copyMediaSelectionPersistentIDForMediaType(a3, 1935832172);
    return fsaf_createWithBytes(a1, @"OfflinePlayable", 1050, faf_offlinePlayableFilterFn, v10, 0, 0, 0, &__src, 40, faf_offlinePlayableForMediaSelectionFilterBytesDeallocateCallback, a5);
  }

  return result;
}

uint64_t faf_offlinePlayableFilterFn(int a1, const __CFData *a2)
{
  OUTLINED_FUNCTION_7_23(a1, a2);
  v4 = OUTLINED_FUNCTION_199();
  if (FigAlternateIsAudioOnly(v4) && (!FigAlternateIsAudioOnly(v2) || v3[3] || v3[2]))
  {
    v5 = 1;
  }

  else
  {
    v6 = OUTLINED_FUNCTION_177();
    v5 = 0;
    if (!faf_isMediaSelectionOptionOfflinePlayable(v6, v7, 1986618469))
    {
LABEL_18:
      v14 = 0;
      goto LABEL_17;
    }
  }

  v8 = v3[3];
  if (v8)
  {
    v9 = OUTLINED_FUNCTION_177();
    if (!faf_isMediaSelectionOptionOfflinePlayable(v9, v10, 1936684398))
    {
      goto LABEL_18;
    }
  }

  v11 = FigAlternateIsAudioOnly(v2) ? v5 : 0;
  if (!v8 && (v11 & 1) != 0)
  {
    goto LABEL_18;
  }

  if (v3[4])
  {
    v12 = OUTLINED_FUNCTION_177();
    if (!faf_isMediaSelectionOptionOfflinePlayable(v12, v13, 1935832172))
    {
      goto LABEL_18;
    }
  }

  v14 = 1;
LABEL_17:
  FigAlternateSetLastKnownValueForIsFullyCached(v2, v14);
  return v14;
}

BOOL faf_allowableMediaSubtypeIsAlternateMediaSubtypesAllowed(int a1, const __CFData *a2)
{
  v3 = OUTLINED_FUNCTION_7_23(a1, a2);
  v4 = *(v3 + 1);
  if ((!v4 || CFArrayGetCount(v4) <= 0) && (!*v3 || CFArrayGetCount(*v3) < 1))
  {
    return 1;
  }

  if (FigAlternateHasUnknownCodecs(v2))
  {
    return 0;
  }

  v5 = *(v3 + 1);
  if (v5 && CFArrayGetCount(v5) >= 1)
  {
    CountOfValidMediaSubTypes = FigAlternateGetCountOfValidMediaSubTypes(v2, 1936684398);
    if (!v3[16])
    {
      CountOfValidMediaSubTypes += FigAlternateHasAudioFormat(v2, 7);
    }

    v7 = 0;
    for (i = 0; ; ++i)
    {
      Count = *(v3 + 1);
      if (Count)
      {
        Count = CFArrayGetCount(Count);
      }

      if (i >= Count)
      {
        break;
      }

      FigCFArrayGetInt32AtIndex();
      v7 += FigAlternateHasAudioFormatID(v2, 0);
    }

    if (v7 != CountOfValidMediaSubTypes)
    {
      return 0;
    }
  }

  if (!*v3 || CFArrayGetCount(*v3) < 1)
  {
    return 1;
  }

  v10 = FigAlternateGetCountOfValidMediaSubTypes(v2, 1986618469);
  v11 = 0;
  for (j = 0; ; ++j)
  {
    v13 = *v3;
    if (*v3)
    {
      v13 = CFArrayGetCount(v13);
    }

    if (j >= v13)
    {
      break;
    }

    FigCFArrayGetInt32AtIndex();
    v11 += FigAlternateHasVideoCodecType(v2, 0);
  }

  return v11 == v10;
}

uint64_t faf_videoFormatFilterFirstPassFn(int a1, const __CFData *a2)
{
  OUTLINED_FUNCTION_7_23(a1, a2);
  v5 = OUTLINED_FUNCTION_199();
  result = FigAlternateIsAudioOnly(v5);
  if (!(*(v3 + 16) | result))
  {
    VideoRange = FigAlternateGetVideoRange(v2);
    result = FigAlternateGetBestVideoFormat(v2);
    if (VideoRange == *v3 && result == *(v3 + 4))
    {
      *(v3 + 16) = 1;
    }

    else
    {
      v8 = *(v3 + 8);
      if (!v8 || (result = faf_videoFormatPreferenceFilterMinSortingFn(v2, v8, a2), result == -1))
      {
        *(v3 + 8) = v2;
      }
    }
  }

  return result;
}

uint64_t faf_videoRangeFirstPassFn(int a1, const __CFData *a2)
{
  OUTLINED_FUNCTION_7_23(a1, a2);
  v4 = OUTLINED_FUNCTION_199();
  result = FigAlternateIsAudioOnly(v4);
  if (!(*(v3 + 16) | result))
  {
    result = FigAlternateGetVideoRange(v2);
    if (result == *v3)
    {
      *(v3 + 16) = 1;
    }

    else
    {
      v6 = *(v3 + 8);
      if (!v6 || (result = faf_videoRangeMinSortingFn(v2, v6, v3), result == -1))
      {
        *(v3 + 8) = v2;
      }
    }
  }

  return result;
}

uint64_t FigAlternatePixelsPerSecondCapFilterCreate(uint64_t a1, uint64_t a2, void *a3)
{
  SInt64 = FigCFNumberCreateSInt64();
  if (!SInt64)
  {
    return 4294951685;
  }

  v6 = SInt64;
  v7 = FigSimpleAlternateFilterCreate(a1, @"PixelsPerSecondBudget", 852, &unk_1F0AE08E0, SInt64, a3);
  CFRelease(v6);
  return v7;
}

uint64_t faf_audioFormatFilterFirstPassFn(int a1, const __CFData *a2)
{
  v4 = OUTLINED_FUNCTION_7_23(a1, a2);
  v10 = 0;
  v11 = 0;
  v12 = 0;
  memset(v8, 0, sizeof(v8));
  result = FigAlternateHasVideo(v2);
  if (result)
  {
    result = FigAlternateHasAudio(v2);
    v6 = result == 0;
  }

  else
  {
    v6 = 0;
  }

  if (!v4[32] && !v6)
  {
    v9 = *v4;
    LODWORD(v10) = 0;
    BYTE4(v10) = v4[16];
    v11 = 0;
    LODWORD(v12) = 0x80000000;
    faf_populateAudioFormatAlternateComparatorRec(v2, *(v4 + 2), v8);
    result = faf_audioFormatPreferenceComparator(v8, &v9, v4);
    if (result)
    {
      v7 = *(v4 + 3);
      if (!v7 || (result = faf_audioFormatPreferenceFilterMinSortingFn(v2, v7, a2), result == -1))
      {
        *(v4 + 3) = v2;
      }
    }

    else
    {
      v4[32] = 1;
    }
  }

  return result;
}

uint64_t faf_ImmersiveAudioPreferenceFirstPassFn(int a1, const __CFData *a2)
{
  OUTLINED_FUNCTION_7_23(a1, a2);
  v5 = OUTLINED_FUNCTION_199();
  SpecializedChannelUsage = faf_GetSpecializedChannelUsage(v5, a2);
  result = FigAlternateGetAverageBitRate(v2);
  if (!*(v3 + 8))
  {
    v8 = *(v3 + 4);
    if (v8 == -1 || result < v8)
    {
      if (SpecializedChannelUsage == *(v3 + 24))
      {
        *(v3 + 8) = 1;
      }

      else
      {
        v10 = *(v3 + 16);
        if (!v10 || (result = faf_ImmersiveAudioComparator(v2, v10, a2), result == 1))
        {
          *(v3 + 16) = v2;
        }
      }
    }
  }

  return result;
}

uint64_t faf_ImmersiveAudioPreferenceFilterFn(int a1, const __CFData *a2)
{
  v4 = OUTLINED_FUNCTION_25_11(a1, a2);
  v5 = OUTLINED_FUNCTION_177();
  SpecializedChannelUsage = faf_GetSpecializedChannelUsage(v5, v6);
  AverageBitRate = FigAlternateGetAverageBitRate(v2);
  if (FigAlternateHasVideo(v2))
  {
    v9 = FigAlternateHasAudio(v2) == 0;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(v4 + 1);
  if (v10 != -1 && AverageBitRate >= v10)
  {
    return 0;
  }

  if (v4[8])
  {
    return v9 || SpecializedChannelUsage == *(v4 + 6);
  }

  else
  {
    if (v4[28])
    {
      return 0;
    }

    return !faf_ImmersiveAudioComparator(v2, *(v4 + 2), a2) || v9;
  }
}

void faf_maximumSampleRatePreferenceFirstPassFn(uint64_t a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  if ((*BytePtr & 0x80000000) != 0)
  {
    v4 = 0;
  }

  else
  {
    v4 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, BytePtr);
  }

  AudioSampleRate = FigAlternateGetAudioSampleRate(a1, v4);
  if (AudioSampleRate != 0.0)
  {
    if (AudioSampleRate <= *(BytePtr + 1))
    {
      *(BytePtr + 16) = 1;
    }

    v6 = *(BytePtr + 3);
    if (v6 == 0.0 || AudioSampleRate < v6)
    {
      *(BytePtr + 3) = AudioSampleRate;
    }
  }

  if (v4)
  {

    CFRelease(v4);
  }
}

BOOL faf_maximumSampleRatePreferenceFilterFn(uint64_t a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  if ((*BytePtr & 0x80000000) != 0)
  {
    v4 = 0;
  }

  else
  {
    v4 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, BytePtr);
  }

  AudioSampleRate = FigAlternateGetAudioSampleRate(a1, v4);
  if (AudioSampleRate == 0.0)
  {
    v6 = 1;
    if (!v4)
    {
      return v6;
    }

    goto LABEL_9;
  }

  if (BytePtr[16])
  {
    v6 = AudioSampleRate <= *(BytePtr + 1);
    if (!v4)
    {
      return v6;
    }

    goto LABEL_9;
  }

  v6 = AudioSampleRate == *(BytePtr + 3);
  if (v4)
  {
LABEL_9:
    CFRelease(v4);
  }

  return v6;
}

void faf_MultichannelAudioFilterFnForMultiFirstPassFn(int a1, const __CFData *a2)
{
  v3 = OUTLINED_FUNCTION_25_11(a1, a2);
  if (!v3[4])
  {
    v4 = v3;
    if ((*v3 & 0x80000000) != 0)
    {
      AudioChannelCounts = FigAlternateGetAudioChannelCounts(v2, 0, 0, 0);
    }

    else
    {
      v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, v3);
      AudioChannelCounts = FigAlternateGetAudioChannelCounts(v2, v5, 0, 0);
      if (v5)
      {
        CFRelease(v5);
      }
    }

    if (AudioChannelCounts >= 3)
    {
      *(v4 + 4) = 1;
    }
  }
}

uint64_t FigAlternateCombinedAudioPreferenceFilterCreate(int a1, int a2, unsigned int a3, const void *a4, uint64_t a5, int a6, char a7, uint64_t a8, CFArrayRef a9, CFTypeRef *a10)
{
  *v155 = 0u;
  *v156 = 0u;
  v14 = *(a5 + 4);
  v15 = *(a5 + 8);
  *v157 = 0u;
  v157[2] = v14;
  v158 = v15;
  *theArray = 0u;
  theArray[0] = *(a5 + 24);
  LOBYTE(v155[0]) = *a5;
  HIDWORD(v155[0]) = a2;
  v155[1] = a3;
  v156[1] = a4;
  v156[0] = faf_copyMediaSelectionPersistentIDForMediaType(a9, 1936684398);
  v157[0] = a6;
  LOBYTE(v157[1]) = a7;
  v16 = *MEMORY[0x1E695E480];
  if (a8)
  {
    v152 = FigAlternateOfflinePlayableForMediaSelectionFilterCreate(*MEMORY[0x1E695E480], a8, a9, 1, &theArray[1]);
    if (v152)
    {
      Filter = v152;
      goto LABEL_276;
    }
  }

  v162 = 0;
  v163 = 0;
  v161 = 0;
  v17 = FigAlternateFilterTreeCreate(v16, &v161);
  if (v17)
  {
    goto LABEL_269;
  }

  if (!v161)
  {
    OUTLINED_FUNCTION_40_0();
    v17 = FigSignalErrorAtGM();
    goto LABEL_269;
  }

  v17 = faf_CombinedAudioPreferenceAlternateFilterForChannels(v155, 2, 0, &v162);
  if (v17)
  {
LABEL_269:
    Filter = v17;
    goto LABEL_270;
  }

  v18 = v162;
  OUTLINED_FUNCTION_5_37();
  inserted = OUTLINED_FUNCTION_11_18();
  if (inserted)
  {
    goto LABEL_292;
  }

  if (!v184)
  {
    OUTLINED_FUNCTION_40_0();
    inserted = FigSignalErrorAtGM();
LABEL_292:
    Filter = inserted;
    goto LABEL_293;
  }

  inserted = OUTLINED_FUNCTION_23_12(inserted, v20, v21, v22, v23, v24, v25, v26, v153, v154, v155[0], v155[1], v156[0]);
  if (inserted)
  {
    goto LABEL_292;
  }

  inserted = FigAlternateFilterTreeInsertLeaf(v184, v177, 510);
  if (inserted)
  {
    goto LABEL_292;
  }

  v27 = OUTLINED_FUNCTION_9_20();
  inserted = OUTLINED_FUNCTION_12_18(v27, a9, 4, v28, v29, v30);
  if (inserted)
  {
    goto LABEL_292;
  }

  inserted = FigAlternateFilterTreeInsertLeaf(v184, v183, 500);
  if (inserted)
  {
    goto LABEL_292;
  }

  inserted = OUTLINED_FUNCTION_3_39(0, v31, v32, v33, v34, v35, v36, v37, v153, v154, v155[0], HIDWORD(v155[0]), v155[1], v156[0], v156[1], v157[0], v157[1]);
  if (inserted)
  {
    goto LABEL_292;
  }

  v38 = OUTLINED_FUNCTION_13_12();
  inserted = FigAlternateFilterTreeInsertLeaf(v38, v39, 490);
  if (inserted)
  {
    goto LABEL_292;
  }

  if (v18)
  {
    inserted = FigAlternateFilterTreeSetFallbackBranch(v184, v18);
    if (inserted)
    {
      goto LABEL_292;
    }
  }

  Filter = FigAlternateFilterTreeCreateFilter(v184, @"ImmersiveAudioFilterTree", 760, &v178);
  if (!Filter)
  {
    v41 = v178;
    v163 = v178;
    *&v178 = 0;
    goto LABEL_17;
  }

LABEL_293:
  v41 = 0;
LABEL_17:
  if (v184)
  {
    CFRelease(v184);
  }

  if (v178)
  {
    CFRelease(v178);
  }

  if (v183)
  {
    CFRelease(v183);
  }

  if (v182)
  {
    CFRelease(v182);
  }

  if (v177)
  {
    CFRelease(v177);
  }

  if (Filter)
  {
LABEL_270:
    v124 = v163;
    if (!v163)
    {
      goto LABEL_272;
    }

    goto LABEL_271;
  }

  if (v41)
  {
    v162 = v41;
    CFRetain(v41);
    if (v18)
    {
      CFRelease(v18);
    }

    CFRelease(v41);
    v163 = 0;
  }

  else
  {
    v41 = v18;
  }

  if (!LOBYTE(v155[0]) && (v155[1] > 2 || !v155[1]))
  {
    v17 = faf_CombinedAudioPreferenceAlternateFilterForChannels(v155, v155[1], v41, &v163);
    if (!v17)
    {
      v18 = v163;
      if (v163)
      {
        v162 = v163;
        CFRetain(v163);
        if (v41)
        {
          CFRelease(v41);
        }

        CFRelease(v18);
        v163 = 0;
      }

      goto LABEL_36;
    }

    goto LABEL_269;
  }

LABEL_36:
  if (theArray[0] && CFArrayGetCount(theArray[0]) >= 1)
  {
    v42 = 0;
    OUTLINED_FUNCTION_18_9();
    v44 = v43 + 1;
    v45 = 1835824233;
    while (1)
    {
      v160 = v10;
      FigCFArrayGetInt32AtIndex();
      if (v160 == 1651076712)
      {
        break;
      }

      if (v160 == 1835824233)
      {
        v46 = v162;
        v174 = 0;
        v175 = 0;
        v172 = 0;
        cf = 0;
        v170 = 0;
        v171 = 0;
        v168 = 0;
        v169 = 0;
        v166 = 0;
        v167 = 0;
        v164 = 0;
        v165 = 0;
        if (!FigAlternateFilterTreeCreate(v16, &v171))
        {
          if (!v171)
          {
            goto LABEL_155;
          }

          if (FigAlternateFilterTreeCreate(v16, &cf))
          {
            goto LABEL_156;
          }

          if (!cf)
          {
LABEL_155:
            OUTLINED_FUNCTION_40_0();
            FigSignalErrorAtGM();
            goto LABEL_156;
          }

          v47 = v157[2];
          if (v157[2] != 1836019574 || !FigAlternateResolutionLowerLimitFilterCreate(v16, &v166, *&v158, *(&v158 + 1)) && !FigAlternateFilterTreeInsertLeaf(v171, v166, 520))
          {
            v10 = v156[0];
            v48 = OUTLINED_FUNCTION_620();
            if (!FigAlternateEligibleLosslessAudioFilterCreate(v48, v49, v50) && !FigAlternateFilterTreeInsertLeaf(v171, v165, 510))
            {
              v51 = OUTLINED_FUNCTION_620();
              if (!FigAlternateMultichannelAudioFilterCreate(v51, v52, 1, 1, v53) && !FigAlternateFilterTreeInsertLeaf(v171, v168, 480))
              {
                v54 = OUTLINED_FUNCTION_620();
                if (!OUTLINED_FUNCTION_12_18(v54, v55, 1, v56, v57, v58) && !FigAlternateFilterTreeInsertLeaf(v171, v169, 500))
                {
                  v18 = v156[1];
                  v41 = LOBYTE(v157[1]);
                  v45 = v157[0];
                  if (!OUTLINED_FUNCTION_24_8(v16, HIDWORD(v155[0]), v155[1], v59, v60, v61, v62, &v167) && !FigAlternateFilterTreeInsertLeaf(v171, v167, 490) && !FigAlternateAmbisonicOrderFilterCreate(v16, 0, 0x7FFFFFFF, v10, 0, &v170) && !FigAlternateFilterTreeInsertLeaf(v171, v170, 505))
                  {
                    OUTLINED_FUNCTION_15_14();
                    if (!FigAlternateFilterTreeCreateFilter(v63, v64, v65, v66))
                    {
                      OUTLINED_FUNCTION_5_37();
                      v176 = 0;
                      v67 = OUTLINED_FUNCTION_11_18();
                      if (!v67)
                      {
                        if (v184)
                        {
                          if (v47 != 1836019574 || (v67 = FigAlternateResolutionUpperLimitFilterCreate(v16, &v182, *&v158 + -1.0, *(&v158 + 1) + -1.0), !v67) && (v68 = OUTLINED_FUNCTION_13_12(), v67 = FigAlternateFilterTreeInsertLeaf(v68, v69, 520), !v67))
                          {
                            v70 = OUTLINED_FUNCTION_620();
                            v67 = FigAlternateEligibleLosslessAudioFilterCreate(v70, v71, v72);
                            if (!v67)
                            {
                              v67 = FigAlternateFilterTreeInsertLeaf(v184, v176, 510);
                              if (!v67)
                              {
                                v73 = OUTLINED_FUNCTION_620();
                                v67 = FigAlternateImmersiveAudioPreferenceFilterCreate(v73, v74, 2, -1, 0, v75);
                                if (!v67)
                                {
                                  v67 = FigAlternateFilterTreeInsertLeaf(v184, v183, 500);
                                  if (!v67)
                                  {
                                    v67 = OUTLINED_FUNCTION_24_8(v16, 0, 2u, v76, v77, v78, v79, &v177);
                                    if (!v67)
                                    {
                                      v67 = FigAlternateFilterTreeInsertLeaf(v184, v177, 490);
                                      if (!v67)
                                      {
                                        OUTLINED_FUNCTION_14_16();
                                        OUTLINED_FUNCTION_15_14();
                                        Filter = FigAlternateFilterTreeCreateFilter(v80, v81, v82, v83);
                                        v45 = v178;
                                        if (!Filter)
                                        {
                                          *&v178 = 0;
                                          goto LABEL_72;
                                        }

                                        if (v178)
                                        {
                                          CFRelease(v178);
LABEL_161:
                                          v45 = 0;
                                        }

LABEL_72:
                                        if (v184)
                                        {
                                          CFRelease(v184);
                                        }

                                        if (v183)
                                        {
                                          CFRelease(v183);
                                        }

                                        if (v182)
                                        {
                                          CFRelease(v182);
                                        }

                                        if (v177)
                                        {
                                          CFRelease(v177);
                                        }

                                        if (v176)
                                        {
                                          CFRelease(v176);
                                        }

                                        if (Filter)
                                        {
                                          v18 = 0;
                                        }

                                        else
                                        {
                                          OUTLINED_FUNCTION_15_14();
                                          FigAlternateMergeFilterCreate(v84, v85, v86, v87, v45, 1, v88);
                                          v18 = v175;
                                          v89 = FigAlternateFilterTreeInsertLeaf(cf, v175, 760);
                                          if (!v89)
                                          {
                                            if (v47 == 1936684398 && ((v90 = OUTLINED_FUNCTION_620(), v93 = FigAlternateStereoCapForMultichannelFilterCreate(v90, v91, v92), v93) || (v93 = FigAlternateFilterTreeInsertLeaf(cf, v172, 750), v93)) || v46 && (v93 = FigAlternateFilterTreeSetFallbackBranch(cf, v46), v93))
                                            {
                                              Filter = v93;
                                              OUTLINED_FUNCTION_18_9();
                                            }

                                            else
                                            {
                                              OUTLINED_FUNCTION_15_14();
                                              Filter = FigAlternateFilterTreeCreateFilter(v94, v95, v96, v97);
                                              OUTLINED_FUNCTION_18_9();
                                              if (!v98)
                                              {
                                                v163 = v174;
                                                v174 = 0;
                                              }
                                            }

LABEL_91:
                                            if (cf)
                                            {
                                              CFRelease(cf);
                                            }

                                            if (v18)
                                            {
                                              CFRelease(v18);
                                            }

                                            if (v174)
                                            {
                                              CFRelease(v174);
                                            }

                                            if (v164)
                                            {
                                              CFRelease(v164);
                                            }

                                            if (v45)
                                            {
                                              CFRelease(v45);
                                            }

                                            if (v171)
                                            {
                                              CFRelease(v171);
                                            }

                                            v45 = 1835824233;
                                            if (v172)
                                            {
                                              CFRelease(v172);
                                            }

                                            if (v169)
                                            {
                                              CFRelease(v169);
                                            }

                                            if (v170)
                                            {
                                              CFRelease(v170);
                                            }

                                            if (v168)
                                            {
                                              CFRelease(v168);
                                            }

                                            if (v166)
                                            {
                                              CFRelease(v166);
                                            }

                                            if (v167)
                                            {
                                              CFRelease(v167);
                                            }

                                            if (v165)
                                            {
                                              CFRelease(v165);
                                            }

                                            if (Filter)
                                            {
                                              goto LABEL_270;
                                            }

                                            v42 = v163;
                                            v18 = v163;
LABEL_142:
                                            if (v18)
                                            {
                                              v41 = v162;
                                              v162 = v18;
                                              CFRetain(v18);
                                              if (v41)
                                              {
                                                CFRelease(v41);
                                              }

                                              CFRelease(v18);
                                              v42 = 0;
                                              v163 = 0;
                                            }

                                            goto LABEL_146;
                                          }

                                          Filter = v89;
                                        }

LABEL_149:
                                        OUTLINED_FUNCTION_18_9();
                                        goto LABEL_91;
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
                          OUTLINED_FUNCTION_40_0();
                          v67 = FigSignalErrorAtGM();
                        }
                      }

                      Filter = v67;
                      goto LABEL_161;
                    }
                  }
                }
              }
            }

            OUTLINED_FUNCTION_6_32();
            goto LABEL_149;
          }
        }

LABEL_156:
        OUTLINED_FUNCTION_6_32();
        goto LABEL_91;
      }

LABEL_146:
      if (--v44 <= 1)
      {
        goto LABEL_166;
      }
    }

    v99 = v162;
    OUTLINED_FUNCTION_5_37();
    v100 = OUTLINED_FUNCTION_11_18();
    if (!v100)
    {
      if (v184)
      {
        v100 = OUTLINED_FUNCTION_23_12(v100, v101, v102, v103, v104, v105, v106, v107, v153, v154, v155[0], v155[1], v156[0]);
        if (!v100)
        {
          v100 = FigAlternateFilterTreeInsertLeaf(v184, v177, 510);
          if (!v100)
          {
            v108 = OUTLINED_FUNCTION_9_20();
            v100 = OUTLINED_FUNCTION_12_18(v108, v41, 3, v109, v110, v111);
            if (!v100)
            {
              v100 = FigAlternateFilterTreeInsertLeaf(v184, v183, 500);
              if (!v100)
              {
                v100 = OUTLINED_FUNCTION_3_39(0, v112, v113, v114, v115, v116, v117, v118, v153, v154, v155[0], HIDWORD(v155[0]), v155[1], v156[0], v156[1], v157[0], v157[1]);
                if (!v100)
                {
                  v119 = OUTLINED_FUNCTION_13_12();
                  v100 = FigAlternateFilterTreeInsertLeaf(v119, v120, 490);
                  if (!v100)
                  {
                    if (!v99 || (v100 = FigAlternateFilterTreeSetFallbackBranch(v184, v99), !v100))
                    {
                      v121 = OUTLINED_FUNCTION_14_16();
                      Filter = FigAlternateFilterTreeCreateFilter(v121, @"BinauralAudioFilterTree", 760, v122);
                      if (!Filter)
                      {
                        v163 = v178;
                        v42 = v178;
                        *&v178 = 0;
                        v18 = v42;
                        goto LABEL_131;
                      }

LABEL_154:
                      v18 = 0;
LABEL_131:
                      if (v184)
                      {
                        CFRelease(v184);
                      }

                      if (v178)
                      {
                        CFRelease(v178);
                      }

                      if (v183)
                      {
                        CFRelease(v183);
                      }

                      if (v182)
                      {
                        CFRelease(v182);
                      }

                      if (v177)
                      {
                        CFRelease(v177);
                      }

                      if (Filter)
                      {
                        goto LABEL_270;
                      }

                      goto LABEL_142;
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
        OUTLINED_FUNCTION_40_0();
        v100 = FigSignalErrorAtGM();
      }
    }

    Filter = v100;
    goto LABEL_154;
  }

  v42 = 0;
LABEL_166:
  v123 = theArray[1];
  if (!theArray[1])
  {
    v124 = v162;
LABEL_267:
    v17 = FigAlternateFilterTreeInsertLeaf(v161, v124, 760);
    if (!v17)
    {
      v17 = FigAlternateFilterTreeCreateFilter(v161, @"CombinedAudioPreference", 760, a10);
    }

    goto LABEL_269;
  }

  v124 = v162;
  if (v155[1] > 2)
  {
    goto LABEL_188;
  }

  v183 = 0;
  v184 = 0;
  v182 = 0;
  v125 = FigAlternateFilterTreeCreate(v16, &v183);
  if (v125)
  {
    goto LABEL_297;
  }

  if (!v183)
  {
    OUTLINED_FUNCTION_40_0();
    v125 = FigSignalErrorAtGM();
LABEL_297:
    Filter = v125;
    v126 = 0;
    goto LABEL_174;
  }

  FigAlternateFilterTreeInsertLeaf(v183, v123, 540);
  if (v124)
  {
    v125 = FigAlternateFilterTreeSetFallbackBranch(v183, v124);
    if (v125)
    {
      goto LABEL_297;
    }
  }

  v178 = 0uLL;
  v180 = 0;
  v181 = 0;
  v179 = faf_losslessAudioOnlyFilterFn;
  FigSimpleAlternateFilterCreate(v16, @"LosslessAudioPreference", 760, &v178, 0, &v182);
  v126 = v182;
  FigAlternateFilterTreeInsertLeaf(v183, v182, 510);
  Filter = FigAlternateFilterTreeCreateFilter(v183, @"OfflinePlayableLosslessTree", 760, &v184);
  if (!Filter)
  {
    v42 = v184;
    v163 = v184;
    v184 = 0;
  }

LABEL_174:
  if (v183)
  {
    CFRelease(v183);
  }

  if (v184)
  {
    CFRelease(v184);
  }

  if (v126)
  {
    CFRelease(v126);
  }

  if (Filter)
  {
    goto LABEL_270;
  }

  v162 = v42;
  if (v42)
  {
    CFRetain(v42);
  }

  if (v124)
  {
    CFRelease(v124);
  }

  if (v42)
  {
    CFRelease(v42);
    v163 = 0;
  }

  v123 = theArray[1];
  v124 = v162;
  if (!theArray[1])
  {
    goto LABEL_267;
  }

LABEL_188:
  *&v178 = 0;
  v183 = 0;
  v184 = 0;
  v127 = OUTLINED_FUNCTION_11_18();
  if (v127)
  {
LABEL_295:
    Filter = v127;
    goto LABEL_196;
  }

  if (!v184)
  {
    OUTLINED_FUNCTION_40_0();
    v127 = FigSignalErrorAtGM();
    goto LABEL_295;
  }

  v127 = FigAlternateFilterTreeInsertLeaf(v184, v123, 540);
  if (v127)
  {
    goto LABEL_295;
  }

  v128 = OUTLINED_FUNCTION_9_20();
  v127 = OUTLINED_FUNCTION_12_18(v128, v129, 4, v130, v131, v132);
  if (v127)
  {
    goto LABEL_295;
  }

  FigAlternateFilterTreeInsertLeaf(v184, v183, 530);
  if (v124)
  {
    v127 = FigAlternateFilterTreeSetFallbackBranch(v184, v124);
    if (v127)
    {
      goto LABEL_295;
    }
  }

  Filter = FigAlternateFilterTreeCreateFilter(v184, @"OfflinePlayableImmersiveAudioTree", 760, &v178);
  if (!Filter)
  {
    v163 = v178;
    *&v178 = 0;
  }

LABEL_196:
  if (v184)
  {
    CFRelease(v184);
  }

  if (v178)
  {
    CFRelease(v178);
  }

  if (v183)
  {
    CFRelease(v183);
  }

  if (Filter)
  {
    goto LABEL_270;
  }

  v133 = v163;
  v162 = v163;
  if (v163)
  {
    CFRetain(v163);
  }

  if (v124)
  {
    CFRelease(v124);
  }

  if (v133)
  {
    CFRelease(v133);
    v163 = 0;
  }

  if (!theArray[0] || (Count = CFArrayGetCount(theArray[0]), Count < 1))
  {
    v124 = v133;
LABEL_266:
    v162 = v124;
    v163 = 0;
    goto LABEL_267;
  }

  v135 = Count + 1;
  while (1)
  {
    LODWORD(v177) = 1064530531;
    FigCFArrayGetInt32AtIndex();
    if (v177 != 1651076712)
    {
      if (v177 != 1835824233)
      {
        goto LABEL_238;
      }

      *&v178 = 0;
      v183 = 0;
      v184 = 0;
      v182 = 0;
      v124 = theArray[1];
      if (!theArray[1])
      {
        Filter = 0;
        goto LABEL_225;
      }

      v136 = OUTLINED_FUNCTION_11_18();
      if (!v136)
      {
        if (v184)
        {
          v136 = FigAlternateFilterTreeInsertLeaf(v184, v124, 540);
          if (!v136)
          {
            v137 = v156[0];
            v136 = FigAlternatePreferredAudioFormatFilterCreate(v16, HIDWORD(v155[0]), v155[1], v156[1], v157[1], v156[0], v157[0], &v183);
            if (!v136)
            {
              v136 = FigAlternateFilterTreeInsertLeaf(v184, v183, 490);
              if (!v136)
              {
                v136 = FigAlternateMultichannelAudioFilterCreate(v16, v137, 1, 1, &v182);
                if (!v136)
                {
                  v138 = OUTLINED_FUNCTION_13_12();
                  FigAlternateFilterTreeInsertLeaf(v138, v139, 480);
                  if (!v133 || (v136 = FigAlternateFilterTreeSetFallbackBranch(v184, v133), !v136))
                  {
                    v140 = OUTLINED_FUNCTION_14_16();
                    Filter = FigAlternateFilterTreeCreateFilter(v140, @"OfflinePlayableMultiTree", 760, v141);
                    if (!Filter)
                    {
                      v124 = v178;
                      *&v178 = 0;
                      goto LABEL_225;
                    }

                    goto LABEL_260;
                  }
                }
              }
            }
          }
        }

        else
        {
          OUTLINED_FUNCTION_40_0();
          v136 = FigSignalErrorAtGM();
        }
      }

      Filter = v136;
LABEL_260:
      v124 = 0;
LABEL_225:
      if (v184)
      {
        CFRelease(v184);
      }

      if (v178)
      {
        CFRelease(v178);
      }

      if (v183)
      {
        CFRelease(v183);
      }

      v142 = v182;
      if (v182)
      {
        goto LABEL_232;
      }

      goto LABEL_233;
    }

    *&v178 = 0;
    v183 = 0;
    v184 = 0;
    v124 = theArray[1];
    if (!theArray[1])
    {
      Filter = 0;
      goto LABEL_252;
    }

    v143 = OUTLINED_FUNCTION_11_18();
    if (v143)
    {
      goto LABEL_262;
    }

    if (!v184)
    {
      OUTLINED_FUNCTION_40_0();
      v143 = FigSignalErrorAtGM();
LABEL_262:
      Filter = v143;
      goto LABEL_263;
    }

    v143 = FigAlternateFilterTreeInsertLeaf(v184, v124, 540);
    if (v143)
    {
      goto LABEL_262;
    }

    v144 = OUTLINED_FUNCTION_9_20();
    v143 = OUTLINED_FUNCTION_12_18(v144, v145, 3, v146, v147, v148);
    if (v143)
    {
      goto LABEL_262;
    }

    FigAlternateFilterTreeInsertLeaf(v184, v183, 530);
    if (v133)
    {
      v143 = FigAlternateFilterTreeSetFallbackBranch(v184, v133);
      if (v143)
      {
        goto LABEL_262;
      }
    }

    v149 = OUTLINED_FUNCTION_14_16();
    Filter = FigAlternateFilterTreeCreateFilter(v149, @"OfflinePlayableBinauralTree", 760, v150);
    if (!Filter)
    {
      v124 = v178;
      *&v178 = 0;
      goto LABEL_250;
    }

LABEL_263:
    v124 = 0;
LABEL_250:
    if (v184)
    {
      CFRelease(v184);
    }

LABEL_252:
    if (v178)
    {
      CFRelease(v178);
    }

    v142 = v183;
    if (v183)
    {
LABEL_232:
      CFRelease(v142);
    }

LABEL_233:
    if (Filter)
    {
      break;
    }

    if (v124)
    {
      CFRetain(v124);
      if (v133)
      {
        CFRelease(v133);
      }

      CFRelease(v124);
      goto LABEL_239;
    }

LABEL_238:
    v124 = v133;
LABEL_239:
    --v135;
    v133 = v124;
    if (v135 <= 1)
    {
      goto LABEL_266;
    }
  }

  v162 = v133;
  v163 = v124;
  if (v124)
  {
LABEL_271:
    CFRelease(v124);
  }

LABEL_272:
  if (v161)
  {
    CFRelease(v161);
  }

  if (v162)
  {
    CFRelease(v162);
  }

LABEL_276:
  if (theArray[1])
  {
    CFRelease(theArray[1]);
  }

  if (v156[0])
  {
    CFRelease(v156[0]);
  }

  return Filter;
}

BOOL faf_startupScoreFilterFn(uint64_t a1, const __CFData *a2)
{
  PeakBitRate = FigAlternateGetPeakBitRate(a1);
  BytePtr = CFDataGetBytePtr(a2);
  if (!*BytePtr)
  {
    if (BytePtr[16] && BytePtr[1])
    {
      v5 = *(BytePtr + 9);
      return v5 + 1 >= PeakBitRate;
    }

    if (BytePtr[2])
    {
      v5 = *(BytePtr + 8);
      return v5 + 1 >= PeakBitRate;
    }
  }

  return 0;
}

__CFString *faf_startupScoreFilterDescAddendum(int a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  if (Mutable)
  {
    v4 = "IFrameOnly ";
    v5 = "";
    if (!*BytePtr)
    {
      v4 = "";
    }

    if (BytePtr[1])
    {
      v6 = "AudioOnly ";
    }

    else
    {
      v6 = "";
    }

    if (BytePtr[16])
    {
      v7 = "hasAudioScore ";
    }

    else
    {
      v7 = "";
    }

    if (BytePtr[2])
    {
      v5 = "hasVideoScore ";
    }

    v14 = v7;
    v15 = v5;
    v12 = v4;
    v13 = v6;
    v8 = OUTLINED_FUNCTION_312();
    CFStringAppendFormat(v8, v9, v10, v12, v13, v14, v15);
    CFStringTrimWhitespace(Mutable);
  }

  return Mutable;
}

uint64_t faf_HighestAtmosBitrateFirstPassFn(int a1, const __CFData *a2)
{
  OUTLINED_FUNCTION_7_23(a1, a2);
  v4 = OUTLINED_FUNCTION_199();
  result = FigAlternateGetPeakBitRate(v4);
  if (!*v3)
  {
    v6 = result;
    if (FigAlternateHasVideo(v2))
    {
      *v3 = 1;
    }

    result = FigAlternateHasAudioFormat(v2, 7);
    if (result)
    {
      result = *(v3 + 8);
      if (!result || (result = FigAlternateGetPeakBitRate(result), v6 > result))
      {
        *(v3 + 8) = v2;
      }
    }
  }

  return result;
}

void fiv_copyFilteringSupportedTagCollectionArray(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, CFTypeRef cf, __int128 a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_22_10();
  a26 = v27;
  a27 = v30;
  a15 = *MEMORY[0x1E69E9840];
  if (v29)
  {
    v31 = v29;
    v32 = v28;
    v33 = *MEMORY[0x1E695E480];
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    if (Mutable)
    {
      v35 = Mutable;
      v36 = CFSetCreateMutable(v33, 0, MEMORY[0x1E695E9F8]);
      if (v36)
      {
        v37 = 0;
        if (!v32)
        {
          goto LABEL_6;
        }

LABEL_5:
        for (i = CFArrayGetCount(v32); v37 < i; i = 0)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v32, v37);
          cf = 0;
          qmemcpy(&a14, "kcapseyejorp", 12);
          v40 = MEMORY[0x19A8D32A0](v33, ValueAtIndex, &a14, 3, &cf);
          if (v40)
          {
            v41 = v40;
          }

          else
          {
            if (MEMORY[0x19A8D3320](cf) == 3)
            {
              FigTagCollectionGetTagsWithCategory();
            }

            v41 = 0;
          }

          if (cf)
          {
            CFRelease(cf);
          }

          if (v41)
          {
            goto LABEL_24;
          }

          ++v37;
          if (v32)
          {
            goto LABEL_5;
          }

LABEL_6:
          ;
        }

        *v31 = v35;
      }

      else
      {
LABEL_24:
        CFRelease(v35);
        if (!v36)
        {
          goto LABEL_21;
        }
      }

      CFRelease(v36);
    }
  }

LABEL_21:
  OUTLINED_FUNCTION_21_9();
}

BOOL fivc_filterFn(__CFArray *a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  v4 = *BytePtr;
  IsAudioOnly = FigAlternateIsAudioOnly(a1);
  v6 = 0;
  if (IsAudioOnly || !v4)
  {
    return IsAudioOnly || v6;
  }

  if (CFArrayGetCount(v4))
  {
    v7 = *(BytePtr + 1);
    VideoLayoutTags = FigAlternateGetVideoLayoutTags(a1);
    if (VideoLayoutTags)
    {
      v9 = VideoLayoutTags;
      Count = CFArrayGetCount(VideoLayoutTags);
      if (Count >= 1)
      {
        v11 = 0;
        v12 = 0;
        v13 = *MEMORY[0x1E695E4C0];
        v14 = *MEMORY[0x1E695E4D0];
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v9, v12);
          value = v13;
          if (CFDictionaryGetValueIfPresent(v7, ValueAtIndex, &value))
          {
            if (v14 != value)
            {
              break;
            }

            ++v11;
          }

          else
          {
            v16 = 0;
            while (v16 < CFArrayGetCount(v4))
            {
              CFArrayGetValueAtIndex(v4, v16++);
              if (FigCFEqual())
              {
                ++v11;
                v17 = v14;
                goto LABEL_15;
              }
            }

            v17 = v13;
LABEL_15:
            CFDictionarySetValue(v7, ValueAtIndex, v17);
          }

          ++v12;
        }

        while (v12 != Count);
        IsAudioOnly = 0;
        goto LABEL_20;
      }
    }

    else
    {
      Count = 0;
    }

    v11 = 0;
LABEL_20:
    v6 = v11 == Count;
    return IsAudioOnly || v6;
  }

  v6 = 0;
  return IsAudioOnly || v6;
}

uint64_t faf_stereoCapForMultichannelFirstPassFn(const void *a1, CFDataRef theData)
{
  v5 = 0;
  BytePtr = CFDataGetBytePtr(theData);
  result = FigAlternateGetAudioChannelCounts(a1, *BytePtr, &v5, 0);
  if (result - v5 >= 3)
  {
    result = FigAlternateGetExpectedAverageBitrate(a1);
    if (result < *(BytePtr + 2))
    {
      *(BytePtr + 2) = result;
    }
  }

  return result;
}

uint64_t fsaf_firstPassCFArrayApplierFn()
{
  OUTLINED_FUNCTION_369();
  result = CMBaseObjectGetDerivedStorage();
  if (!*(v1 + 24))
  {
    v3 = *(result + 24);
    if (v3)
    {
      v4 = *(result + 72);

      return v3(v0, v4);
    }
  }

  return result;
}

void fsaf_applyCFArrayApplierFn()
{
  OUTLINED_FUNCTION_369();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(v1 + 24))
  {
    v3 = *(DerivedStorage + 32);
    if (v3)
    {
      if (v3(v0, *(DerivedStorage + 72)))
      {
        v4 = *(v1 + 16);

        CFArrayAppendValue(v4, v0);
      }
    }
  }
}

CFStringRef faf_mergeFilterCopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *MEMORY[0x1E695E480];
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  if (!Mutable)
  {
    return 0;
  }

  v5 = Mutable;
  CFStringAppendFormat(Mutable, 0, @"[FigAlternateMergeFilter <%@:%p> priority:%d]", *DerivedStorage, a1, *(DerivedStorage + 8));
  v6 = CFCopyDescription(*(DerivedStorage + 16));
  v7 = CFCopyDescription(*(DerivedStorage + 24));
  if (v6)
  {
    v8 = FigCFStringCopyWithIndent();
    v9 = v8;
    if (!v8)
    {
      Copy = 0;
      goto LABEL_10;
    }

    v19 = v8;
    v10 = OUTLINED_FUNCTION_312();
    CFStringAppendFormat(v10, v11, v12, v19);
    CFRelease(v9);
  }

  if (v7)
  {
    v13 = FigCFStringCopyWithIndent();
    v9 = v13;
    if (!v13)
    {
      Copy = 0;
      if (!v6)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    v20 = v13;
    v14 = OUTLINED_FUNCTION_312();
    CFStringAppendFormat(v14, v15, v16, v20);
  }

  else
  {
    v9 = 0;
  }

  Copy = CFStringCreateCopy(v3, v5);
  if (v6)
  {
LABEL_10:
    CFRelease(v6);
  }

LABEL_11:
  if (v7)
  {
    CFRelease(v7);
  }

  CFRelease(v5);
  if (v9)
  {
    CFRelease(v9);
  }

  return Copy;
}

void faf_mergeFilterApplyReturningInfo(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, CFTypeRef a13, CFTypeRef cf, CFArrayRef a15, CFArrayRef theArray, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_22_10();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v60 = 0;
  cfa = 0;
  v37 = *MEMORY[0x1E695E480];
  Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E6961578]);
  if (!Mutable)
  {
    OUTLINED_FUNCTION_243();
    FigSignalErrorAtGM();
    v39 = 0;
    goto LABEL_53;
  }

  v39 = CFArrayCreateMutable(v37, 0, MEMORY[0x1E695E9C0]);
  if (!v39)
  {
    OUTLINED_FUNCTION_243();
    FigSignalErrorAtGM();
    goto LABEL_53;
  }

  if (!*(*(CMBaseObjectGetVTable() + 16) + 32) && !*(*(CMBaseObjectGetVTable() + 16) + 24))
  {
    goto LABEL_12;
  }

  v40 = OUTLINED_FUNCTION_16_13();
  if (v41(v40))
  {
LABEL_53:
    v45 = 0;
    goto LABEL_40;
  }

  if (!*(*(CMBaseObjectGetVTable() + 16) + 32) && !*(*(CMBaseObjectGetVTable() + 16) + 24))
  {
LABEL_12:
    v45 = 0;
    goto LABEL_40;
  }

  v42 = OUTLINED_FUNCTION_16_13();
  if (v43(v42))
  {
    goto LABEL_53;
  }

  v44 = *(DerivedStorage + 32);
  if ((v44 & 1) == 0 && (v44 & 2) == 0)
  {
    CFSetApplyFunction(Mutable, faf_mergeSetApplier, v39);
  }

  if (v29)
  {
    v45 = CFArrayCreateMutable(v37, 0, MEMORY[0x1E695E9C0]);
    if (!v45 || (!v33 ? (Count = 0) : (Count = CFArrayGetCount(v33)), (v46 = *(DerivedStorage + 16), (v47 = *(*(CMBaseObjectGetVTable() + 16) + 8)) == 0) ? (v48 = &stru_1F0B1AFB8) : (v48 = v47(v46)), (v49 = FigAlternateFilterApplyInfoCreate(v37, 0, Count, v48, 0), (cfa = v49) == 0) || ((CFArrayAppendValue(v45, v49), !v33) ? (v50 = 0) : (v50 = CFArrayGetCount(v33)), (v51 = *(DerivedStorage + 24), (v52 = *(*(CMBaseObjectGetVTable() + 16) + 8)) == 0) ? (v53 = &stru_1F0B1AFB8) : (v53 = v52(v51)), (v54 = FigAlternateFilterApplyInfoCreate(v37, 0, v50, v53, 0), (v60 = v54) == 0) || ((CFArrayAppendValue(v45, v54), !v33) ? (v55 = 0) : (v55 = CFArrayGetCount(v33)), (v56 = *(*(CMBaseObjectGetVTable() + 16) + 8)) == 0 ? (v57 = &stru_1F0B1AFB8) : (v57 = v56(v35)), v58 = FigAlternateFilterApplyInfoCreate(v37, v39, v55, v57, v45), (*v29 = v58) == 0))))
    {
      OUTLINED_FUNCTION_120();
      FigSignalErrorAtGM();
      goto LABEL_40;
    }
  }

  else
  {
    v45 = 0;
  }

  if (*v31)
  {
    CFRelease(*v31);
  }

  *v31 = v39;
  v39 = 0;
LABEL_40:
  if (cfa)
  {
    CFRelease(cfa);
  }

  if (v60)
  {
    CFRelease(v60);
  }

  if (v45)
  {
    CFRelease(v45);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v39)
  {
    CFRelease(v39);
  }

  OUTLINED_FUNCTION_21_9();
}

uint64_t faf_alternateVideoVertResolutionBucket(uint64_t a1)
{
  Resolution = FigAlternateGetResolution(a1);
  if (v2 * Resolution <= 0.0)
  {
    return -1;
  }

  for (result = 0; result != 7; ++result)
  {
    if (v2 <= kFigAlternateVertResolutionLimits[result])
    {
      break;
    }
  }

  return result;
}

uint64_t faf_defaultAudioPreferenceApply(const void *a1, const __CFArray *a2, CFTypeRef *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v26 = 0;
  v25 = 0;
  v7 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  theArray = Mutable;
  if (Mutable)
  {
    v9 = Mutable;
    Count = CFArrayGetCount(a2);
    if (Count < 1)
    {
      goto LABEL_22;
    }

    v11 = Count;
    v12 = 0;
    v13 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a2, v12);
      if (!FigAlternateHasVideo(ValueAtIndex) || FigAlternateHasAudio(ValueAtIndex))
      {
        v15 = FigAlternateGetAudioChannelCount(ValueAtIndex, *DerivedStorage, &v25) - 1;
        if ((v25 & 6) == 0 && v15 <= 1)
        {
          CFArrayAppendValue(v9, ValueAtIndex);
          v13 = 1;
        }
      }

      ++v12;
    }

    while (v11 != v12);
    for (i = 0; i != v11; ++i)
    {
      v18 = CFArrayGetValueAtIndex(a2, i);
      if (FigAlternateHasVideo(v18) && !FigAlternateHasAudio(v18))
      {
        CFArrayAppendValue(v9, v18);
      }
    }

    if (v13)
    {
      v19 = 0;
    }

    else
    {
LABEL_22:
      CFRelease(v9);
      theArray = 0;
      v22 = FigAlternatePreferredAudioFormatFilterCreate(v7, 7u, 0, 0, 0, *DerivedStorage, 0, &v26);
      v19 = v26;
      if (v22)
      {
        v21 = v22;
        goto LABEL_27;
      }

      v23 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (!v23)
      {
        v21 = 4294954514;
        goto LABEL_27;
      }

      v21 = v23(v19, a2, &theArray);
      if (v21)
      {
        goto LABEL_27;
      }
    }
  }

  else
  {
    v21 = FigSignalErrorAtGM();
    v19 = 0;
    if (v21)
    {
      goto LABEL_27;
    }
  }

  if (*a3)
  {
    CFRelease(*a3);
  }

  v20 = CFGetAllocator(a1);
  v21 = 0;
  *a3 = CFArrayCreateCopy(v20, theArray);
LABEL_27:
  if (v19)
  {
    CFRelease(v19);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  return v21;
}

uint64_t faf_CombinedAudioPreferenceAlternateFilterForChannels(uint64_t a1, signed int a2, const void *a3, CFTypeRef *a4)
{
  cf = 0;
  v20 = 0;
  v17 = 0;
  v18 = 0;
  v15 = 0;
  v16 = 0;
  v8 = *MEMORY[0x1E695E480];
  inserted = FigAlternateFilterTreeCreate(*MEMORY[0x1E695E480], &cf);
  if (inserted)
  {
    goto LABEL_35;
  }

  if (!cf)
  {
    inserted = FigSignalErrorAtGM();
LABEL_35:
    v13 = inserted;
    v10 = 0;
    goto LABEL_20;
  }

  inserted = FigAlternateEligibleLosslessAudioFilterCreate(v8, *(a1 + 16), &v15);
  if (inserted)
  {
    goto LABEL_35;
  }

  inserted = FigAlternateFilterTreeInsertLeaf(cf, v15, 510);
  if (inserted)
  {
    goto LABEL_35;
  }

  inserted = FigAlternateImmersiveAudioPreferenceFilterCreate(v8, *(a1 + 16), 1, -1, 0, &v18);
  if (inserted)
  {
    goto LABEL_35;
  }

  inserted = FigAlternateFilterTreeInsertLeaf(cf, v18, 500);
  if (inserted)
  {
    goto LABEL_35;
  }

  inserted = FigAlternatePreferredAudioFormatFilterCreate(v8, *(a1 + 4), a2, *(a1 + 24), *(a1 + 36), *(a1 + 16), *(a1 + 32), &v17);
  if (inserted)
  {
    goto LABEL_35;
  }

  inserted = FigAlternateFilterTreeInsertLeaf(cf, v17, 490);
  if (inserted)
  {
    goto LABEL_35;
  }

  if (a2 < 3)
  {
    v10 = 0;
    if (!a3)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  FigAlternateMultichannelAudioFilterCreate(v8, *(a1 + 16), 1, 1, &v16);
  v10 = v16;
  v11 = FigAlternateFilterTreeInsertLeaf(cf, v16, 480);
  if (v11)
  {
    goto LABEL_33;
  }

  if (a3)
  {
LABEL_14:
    v11 = FigAlternateFilterTreeSetFallbackBranch(cf, a3);
    if (!v11)
    {
      goto LABEL_15;
    }

LABEL_33:
    v13 = v11;
    goto LABEL_20;
  }

LABEL_15:
  if (a2 <= 2)
  {
    v12 = @"StereoAudioFilterTree";
  }

  else
  {
    v12 = @"DiscreteMultichannelAudioFilterTree";
  }

  v13 = FigAlternateFilterTreeCreateFilter(cf, v12, 760, &v20);
  if (!v13)
  {
    *a4 = v20;
    v20 = 0;
  }

LABEL_20:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  return v13;
}