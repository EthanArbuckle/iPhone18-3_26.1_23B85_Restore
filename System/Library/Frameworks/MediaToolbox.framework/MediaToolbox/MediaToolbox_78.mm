uint64_t audioRenderer_shouldEnableSpatialization(uint64_t a1, uint64_t a2)
{
  result = FPSupport_GetAudioFormatDescriptionSpatializationEligibility(a2, 0);
  if (result)
  {
    if (result != 2 && result != 1)
    {
      return 1;
    }

    result = audioRenderer_isSpatializationAllowed();
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t audioRenderer_applyCachedPropertiesToFARPApplierFunction(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*MEMORY[0x1E695E738] == a2)
  {
    v4 = 0;
  }

  else
  {
    v4 = a2;
  }

  FigBaseObject = FigRenderPipelineGetFigBaseObject(a3);
  VTable = CMBaseObjectGetVTable();
  v8 = *(VTable + 8);
  result = VTable + 8;
  v9 = *(v8 + 56);
  if (v9)
  {

    return v9(FigBaseObject, a1, v4);
  }

  return result;
}

CMTime *audioRenderer_getLowWaterDurationScaledForRate@<X0>(CMTime *a1@<X8>, float a2@<S0>)
{
  result = CMBaseObjectGetDerivedStorage();
  v5 = MEMORY[0x1E6960C70];
  *&a1->value = *MEMORY[0x1E6960C70];
  a1->epoch = *(v5 + 16);
  if (a2 <= 1.0)
  {
    v6 = *(&result[11].value + 4);
    a1->epoch = *(&result[11].epoch + 4);
    *&a1->value = v6;
  }

  else
  {
    v7 = *(result + 268);
    return CMTimeMultiplyByFloat64(a1, &v7, a2);
  }

  return result;
}

CMTime *audioRenderer_getHighWaterDurationScaledForRate@<X0>(CMTime *a1@<X8>, float a2@<S0>)
{
  result = CMBaseObjectGetDerivedStorage();
  v5 = MEMORY[0x1E6960C70];
  *&a1->value = *MEMORY[0x1E6960C70];
  a1->epoch = *(v5 + 16);
  if (a2 <= 1.0)
  {
    v6 = *(&result[10].value + 4);
    a1->epoch = *(&result[10].epoch + 4);
    *&a1->value = v6;
  }

  else
  {
    v7 = *(result + 244);
    return CMTimeMultiplyByFloat64(a1, &v7, a2);
  }

  return result;
}

void audioRenderer_callFlushFromMediaTimeCallbackAsync(uint64_t a1)
{
  (*(a1 + 8))(*(a1 + 24), *(a1 + 16));
  CFRelease(*a1);

  free(a1);
}

uint64_t OUTLINED_FUNCTION_4_159()
{
  *(v0 - 160) = 0;

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_12_75()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_16_58()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

BOOL OUTLINED_FUNCTION_21_41(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, os_log_type_t type)
{

  return os_log_type_enabled(a1, type);
}

uint64_t OUTLINED_FUNCTION_44_28()
{

  return FigSimpleMutexLock();
}

void OUTLINED_FUNCTION_49_19(const void *a1@<X1>, int a2@<W8>)
{
  if (a2)
  {
    v6 = v4;
  }

  else
  {
    v6 = v2;
  }

  CFDictionarySetValue(v3, a1, v6);
}

BOOL OUTLINED_FUNCTION_68_15(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, os_log_type_t type)
{

  return os_log_type_enabled(a1, type);
}

uint64_t OUTLINED_FUNCTION_69_12()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_70_14()
{

  return FigSimpleMutexLock();
}

uint64_t FigStreamTrackList_initOnce()
{
  result = _CFRuntimeRegisterClass();
  sFigStreamTrackListID = result;
  return result;
}

uint64_t FigStreamTrackListAddTrack(uint64_t a1, const void *a2)
{
  if (a2)
  {
    v4 = (a1 + 24);
    if (FigCFArrayContainsValue())
    {
      FigStreamTrackListAddTrack_cold_1(&v14);
      return v14;
    }

    else
    {
      CFArrayAppendValue(*(a1 + 24), a2);
      Count = CFArrayGetCount(*(a1 + 24));
      v6 = 0;
      v7 = Count - 1;
      v8 = Count - 2;
      while (1)
      {
        v9 = *(a1 + 32);
        if (v9)
        {
          v9 = CFArrayGetCount(v9);
        }

        if (v6 >= v9)
        {
          break;
        }

        CFArrayGetValueAtIndex(*(a1 + 32), v6);
        v10 = FigCFWeakReferenceHolderCopyReferencedObject();
        if (v10)
        {
          v11 = v10;
          if (*v4)
          {
            v12 = CFArrayGetCount(*v4) - 1;
          }

          else
          {
            v12 = -1;
          }

          if (v12 == v7)
          {
            FigStreamTrackListAddTrack_cold_3(v11, v7, v8, v4);
          }

          else if (!FigStreamTrackListAddTrack_cold_2(v11, &v15))
          {
            return v15;
          }
        }

        ++v6;
      }

      return 0;
    }
  }

  else
  {
    FigStreamTrackListAddTrack_cold_4(&v16);
    return v16;
  }
}

uint64_t FigStreamTrackListRemoveTrack(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    LastIndexOfValue = FigCFArrayGetLastIndexOfValue();
    if (LastIndexOfValue == -1)
    {
      fig_log_get_emitter();

      return FigSignalErrorAtGM();
    }

    else
    {
      v4 = LastIndexOfValue;
      if (FigCFArrayGetValueAtIndex())
      {
        CFArrayRemoveValueAtIndex(*(a1 + 24), v4);
        for (i = 0; ; ++i)
        {
          Count = *(a1 + 32);
          if (Count)
          {
            Count = CFArrayGetCount(Count);
          }

          if (i >= Count)
          {
            break;
          }

          CFArrayGetValueAtIndex(*(a1 + 32), i);
          v7 = FigCFWeakReferenceHolderCopyReferencedObject();
          if (v7)
          {
            v8 = v7;
            v9 = *(v7 + 32);
            if (v9 != -1 && v9 >= v4)
            {
              v11 = *(a1 + 24);
              if (v11 && CFArrayGetCount(v11) >= 2)
              {
                v12 = v8[4] - 1;
              }

              else
              {
                v12 = -1;
              }

              v8[4] = v12;
            }

            CFRelease(v8);
          }
        }

        return 0;
      }

      else
      {
        FigStreamTrackListRemoveTrack_cold_1(&v14);
        return v14;
      }
    }
  }

  else
  {
    FigStreamTrackListRemoveTrack_cold_2(&v15);
    return v15;
  }
}

uint64_t FigStreamTrackListRemoveAllTracks(uint64_t a1)
{
  CFArrayRemoveAllValues(*(a1 + 24));
  for (i = 0; ; ++i)
  {
    Count = *(a1 + 32);
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    if (i >= Count)
    {
      break;
    }

    CFArrayGetValueAtIndex(*(a1 + 32), i);
    v4 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v4)
    {
      v4[4] = -1;
      CFRelease(v4);
    }
  }

  return 0;
}

const __CFArray *FigStreamTrackListGetCount(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return CFArrayGetCount(result);
  }

  return result;
}

uint64_t FigStreamTrackListCreateIterator(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = *(a2 + 16);
    MEMORY[0x19A8D3660](&FigStreamTrackListIteratorGetTypeID_sFigStreamTrackListIteratorRegisterOnce, FigStreamTrackListIterator_initOnce);
    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      Instance[3] = CFRetain(a2);
      if (v5)
      {
        v7 = CFRetain(v5);
      }

      else
      {
        v7 = 0;
      }

      Instance[2] = v7;
      Instance[4] = -1;
    }

    else if (!FigStreamTrackListCreateIterator_cold_1(&v12))
    {
      return v12;
    }

    v8 = FigCFWeakReferenceHolderCreateWithReferencedObject();
    if (v8)
    {
      v9 = v8;
      CFArrayAppendValue(*(a2 + 32), v8);
      *a3 = Instance;
      CFRelease(v9);
      return 0;
    }

    else
    {
      fig_log_get_emitter();
      v10 = FigSignalErrorAtGM();
      if (Instance)
      {
        CFRelease(Instance);
      }
    }
  }

  else
  {
    FigStreamTrackListCreateIterator_cold_2(&v13);
    return v13;
  }

  return v10;
}

uint64_t FigStreamTrackListCreate(const __CFAllocator *a1, const void *a2, void *a3)
{
  if (!a3)
  {
    FigStreamTrackListCreate_cold_3(&v15);
    return v15;
  }

  MEMORY[0x19A8D3660](&FigStreamTrackListGetTypeID_sFigStreamTrackListRegisterOnce, FigStreamTrackList_initOnce);
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    FigStreamTrackListCreate_cold_2(&v14);
    return v14;
  }

  v7 = Instance;
  Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  v7[3] = Mutable;
  if (!Mutable)
  {
    v12 = 337;
LABEL_14:
    FigStreamTrackListCreate_cold_1(v12, v7, &v13);
    return v13;
  }

  v9 = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  v7[4] = v9;
  if (!v9)
  {
    v12 = 340;
    goto LABEL_14;
  }

  if (a2)
  {
    v10 = CFRetain(a2);
  }

  else
  {
    v10 = 0;
  }

  result = 0;
  v7[2] = v10;
  *a3 = v7;
  return result;
}

uint64_t FigStreamTrackListIterator_initOnce()
{
  result = _CFRuntimeRegisterClass();
  sFigStreamTrackListIteratorID = result;
  return result;
}

uint64_t FigStreamTrackListIteratorResetAndCopyTrack(uint64_t a1, void *a2)
{
  if (a1)
  {
    *(a1 + 32) = -1;

    return FigStreamTrackListIteratorCopyNextTrack(a1, a2);
  }

  else
  {
    v6 = v2;
    v7 = v3;
    FigStreamTrackListIteratorResetAndCopyTrack_cold_1(&v5);
    return v5;
  }
}

uint64_t FigStreamTrackListIteratorCopyNextTrack(uint64_t a1, void *a2)
{
  if (!a1)
  {
    FigStreamTrackListIteratorCopyNextTrack_cold_2(&v13);
    return v13;
  }

  if (!a2)
  {
    FigStreamTrackListIteratorCopyNextTrack_cold_1(&v12);
    return v12;
  }

  v4 = *(*(a1 + 24) + 24);
  if (v4)
  {
    Count = CFArrayGetCount(v4);
  }

  else
  {
    Count = 0;
  }

  v6 = *(a1 + 32);
  if (v6 == -1)
  {
    v8 = 0;
  }

  else
  {
    v7 = *(*(a1 + 24) + 24);
    if (v7)
    {
      v7 = CFArrayGetCount(v7);
    }

    v8 = *(a1 + 32);
    if (v6 >= v7)
    {
      goto LABEL_13;
    }

    ++v8;
  }

  *(a1 + 32) = v8;
LABEL_13:
  if (v8 >= Count)
  {
    v10 = 0;
  }

  else
  {
    ValueAtIndex = FigCFArrayGetValueAtIndex();
    v10 = ValueAtIndex;
    if (ValueAtIndex)
    {
      CFRetain(ValueAtIndex);
    }
  }

  result = 0;
  *a2 = v10;
  return result;
}

void *fstl_init(void *result)
{
  result[2] = 0;
  result[3] = 0;
  result[4] = 0;
  return result;
}

void fstl_finalize(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    CFRelease(v2);
    a1[3] = 0;
  }

  v3 = a1[4];
  if (v3)
  {
    CFRelease(v3);
    a1[4] = 0;
  }

  v4 = a1[2];
  if (v4)
  {
    CFRelease(v4);
    a1[2] = 0;
  }
}

CFStringRef fstl_copyFormattingDesc(uint64_t a1)
{
  v2 = *MEMORY[0x1E695E480];
  v3 = *(a1 + 16);
  Count = CFArrayGetCount(*(a1 + 32));
  return CFStringCreateWithFormat(v2, 0, @"TrackList [%@] iterators:%d tracks %@", v3, Count, *(a1 + 24));
}

void *fstli_init(void *result)
{
  result[2] = 0;
  result[3] = 0;
  result[4] = 0;
  return result;
}

void fstli_finalize(uint64_t a1)
{
  v2 = 0;
  v3 = *(a1 + 24);
  while (1)
  {
    Count = *(v3 + 32);
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    if (v2 >= Count)
    {
      break;
    }

    CFArrayGetValueAtIndex(*(v3 + 32), v2);
    v5 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v5)
    {
      CFRelease(v5);
      ++v2;
    }

    else
    {
      CFArrayRemoveValueAtIndex(*(v3 + 32), v2);
    }
  }

  v6 = *(a1 + 24);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(a1 + 16);
  if (v7)
  {

    CFRelease(v7);
  }
}

uint64_t synchronizerCentral_subSynchronizerNotificationHandler()
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

CFMutableStringRef synchronizerCentral_CopyDebugDesc(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateMutable(v1, 0);
}

uint64_t synchronizerCentral_CopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, CFTypeRef *a4)
{
  cf = 0;
  v7 = *CMBaseObjectGetDerivedStorage();
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v8)
  {
    v9 = v8(v7, a2, a3, &cf);
  }

  else
  {
    v9 = 4294954514;
  }

  if (a4)
  {
    *a4 = cf;
  }

  else if (cf)
  {
    CFRelease(cf);
  }

  return v9;
}

uint64_t synchronizerCentral_SetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *CMBaseObjectGetDerivedStorage();
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v5, a2, a3);
}

uint64_t synchronizerCentral_processRateChangeWithRenderersSetApplier(uint64_t result, uint64_t a2)
{
  if (!*(a2 + 8))
  {
    v3 = result;
    FigSampleBufferRenderSynchronizerCentralClientAccessProtocolGetProtocolID();
    result = CMBaseObjectImplementsProtocol();
    if (result)
    {
      v4 = *(a2 + 16);
      v5 = *(a2 + 12);
      FigSampleBufferRenderSynchronizerCentralClientAccessProtocolGetProtocolID();
      ProtocolVTable = CMBaseObjectGetProtocolVTable();
      if (ProtocolVTable && (v7 = *(ProtocolVTable + 16)) != 0)
      {
        v8 = *(v7 + 8);
        if (v8)
        {
          result = v8(v3, v4, v5);
        }

        else
        {
          result = 4294954514;
        }
      }

      else
      {
        result = 4294954508;
      }

      *(a2 + 8) = result;
    }
  }

  return result;
}

uint64_t synchronizerCentral_SetRateAndTime(uint64_t a1, uint64_t a2, float a3)
{
  v4 = *a2;
  v5 = *(a2 + 16);
  return synchronizerCentral_SetRateAndAnchorTime(a1, &v4, MEMORY[0x1E6960C70], a3);
}

uint64_t synchronizerCentral_CopyReadOnlyTimebase(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(v3, a2);
}

uint64_t synchronizerCentral_AcquirePlaybackAssertion(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(v3, a2);
}

uint64_t synchronizerCentral_ReleasePlaybackAssertion(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(v3, a2);
}

uint64_t synchronizerCentral_ConvertTime(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v7 = *CMBaseObjectGetDerivedStorage();
  v10 = *a3;
  v11 = *(a3 + 2);
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (!v8)
  {
    return 4294954514;
  }

  v12 = v10;
  v13 = v11;
  return v8(v7, a2, &v12, a4);
}

__n128 OUTLINED_FUNCTION_4_160@<Q0>(__n128 *a1@<X8>)
{
  result = *a1;
  *(v1 + 28) = *a1;
  *(v1 + 44) = a1[1].n128_u64[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_5_139()
{

  return FigNotificationCenterAddWeakListener();
}

uint64_t FigTTMLDocumentWriterCreateLanguageIdentifierInserter(uint64_t a1, const void *a2, void *a3)
{
  if (!a2)
  {
    FigTTMLDocumentWriterCreateLanguageIdentifierInserter_cold_2(&v8);
    return v8;
  }

  if (!a3)
  {
    FigTTMLDocumentWriterCreateLanguageIdentifierInserter_cold_1(&v8);
    return v8;
  }

  FigTTMLDocumentWriterGetClassID();
  v5 = CMDerivedObjectCreate();
  if (!v5)
  {
    FigTTMLDocumentWriterGetCMBaseObject(0);
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *DerivedStorage = CFRetain(a2);
    *a3 = 0;
  }

  return v5;
}

void figTTMLDocumentWriterLanguageIdentifierInserter_Finalize(uint64_t a1)
{
  FigTTMLDocumentWriterGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 8);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 8) = 0;
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

uint64_t figTTMLDocumentWriterLanguageIdentifierInserter_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  FigTTMLDocumentWriterGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    if (a4)
    {
      v7 = DerivedStorage;
      if (CFEqual(@"languageIdentifier", a2))
      {
        v8 = *(v7 + 8);
        if (v8)
        {
          v9 = CFRetain(v8);
        }

        else
        {
          v9 = 0;
        }

        result = 0;
        *a4 = v9;
      }

      else
      {
        return 4294954512;
      }
    }

    else
    {
      figTTMLLayout_CopyChildNodeArray_cold_1(&v11);
      return v11;
    }
  }

  else
  {
    figTTMLDocumentWriterLanguageIdentifierInserter_CopyProperty_cold_2(&v12);
    return v12;
  }

  return result;
}

uint64_t figTTMLDocumentWriterLanguageIdentifierInserter_SetProperty(uint64_t a1, const void *a2, const void *a3)
{
  FigTTMLDocumentWriterGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    if (a3)
    {
      v6 = DerivedStorage;
      if (CFEqual(@"languageIdentifier", a2))
      {
        v7 = CFGetTypeID(a3);
        if (v7 == CFStringGetTypeID())
        {
          v8 = *(v6 + 8);
          *(v6 + 8) = a3;
          CFRetain(a3);
          if (v8)
          {
            CFRelease(v8);
          }

          return 0;
        }

        else
        {
          FigRemote_CopyPixelBufferAndPoolAttributesFromDictionary_cold_1(&v10);
          return v10;
        }
      }

      else
      {
        return 4294954512;
      }
    }

    else
    {
      figTTMLDocumentWriterLanguageIdentifierInserter_SetProperty_cold_2(&v11);
      return v11;
    }
  }

  else
  {
    figTTMLDocumentWriterLanguageIdentifierInserter_SetProperty_cold_3(&v12);
    return v12;
  }
}

uint64_t figTTMLDocumentWriterLanguageIdentifierInserter_StartElement(uint64_t a1, uint64_t a2)
{
  FigTTMLDocumentWriterGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = FigTTMLDocumentWriterStartElement(*DerivedStorage, a2);
  if (a2 == 7 && !result)
  {
    v6 = DerivedStorage[1];
    if (v6)
    {

      return FigTTMLDocumentWriterSetAttribute(a1, @"http://www.w3.org/XML/1998/namespace lang", v6);
    }

    else
    {
      return 4294950719;
    }
  }

  return result;
}

uint64_t figTTMLDocumentWriterLanguageIdentifierInserter_EndElement(uint64_t a1)
{
  FigTTMLDocumentWriterGetCMBaseObject(a1);
  v1 = *CMBaseObjectGetDerivedStorage();

  return FigTTMLDocumentWriterEndElement(v1);
}

uint64_t figTTMLDocumentWriterLanguageIdentifierInserter_AddCaptionData(uint64_t a1, uint64_t a2)
{
  FigTTMLDocumentWriterGetCMBaseObject(a1);
  v3 = *CMBaseObjectGetDerivedStorage();

  return FigTTMLDocumentWriterAddCaptionData(v3, a2);
}

uint64_t figTTMLDocumentWriterLanguageIdentifierInserter_SetAttribute(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FigTTMLDocumentWriterGetCMBaseObject(a1);
  v5 = *CMBaseObjectGetDerivedStorage();

  return FigTTMLDocumentWriterSetAttribute(v5, a2, a3);
}

uint64_t figTTMLDocumentWriterLanguageIdentifierInserter_Flush(uint64_t a1)
{
  FigTTMLDocumentWriterGetCMBaseObject(a1);
  v1 = *CMBaseObjectGetDerivedStorage();

  return FigTTMLDocumentWriterFlush(v1);
}

uint64_t fapu_registerClass()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigAudioProcessingUnitCreateWithOptions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = 0;
  v9[0] = &v8;
  v9[1] = 0x2000000000;
  v10 = 0;
  if (!a4)
  {
    v7 = 420;
LABEL_9:
    FigAudioProcessingUnitCreateWithOptions_cold_1(v7, v9);
    goto LABEL_10;
  }

  MEMORY[0x19A8D3660](&FigAudioProcessingUnitGetClassID_sRegisterFigAudioProcessingUnitOnce, fapu_registerClass);
  v4 = CMDerivedObjectCreate();
  *(v9[0] + 24) = v4;
  if (!v4)
  {
    CMBaseObjectGetDerivedStorage();
    if (FigCFDictionaryGetValueIfPresent())
    {
      if (FigCFDictionaryGetValueIfPresent())
      {
        v7 = 430;
      }

      else
      {
        v7 = 428;
      }
    }

    else
    {
      v7 = 426;
    }

    goto LABEL_9;
  }

LABEL_10:
  v5 = *(v9[0] + 24);
  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t __FigAudioProcessingUnitCreateWithOptions_block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!*(*(*(result + 32) + 8) + 24))
  {
    v5 = result;
    v6 = *(result + 40);
    v7 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v7)
    {
      result = v7(v6, a2, a3);
    }

    else
    {
      result = 4294954514;
    }

    *(*(*(v5 + 32) + 8) + 24) = result;
  }

  return result;
}

uint64_t fapu_updateLoggingIDCStr(uint64_t a1, const void *a2, const void *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  fapu_FourCCToPrintableStr(v9, *(a1 + 112));
  fapu_FourCCToPrintableStr(v8, *(a1 + 116));
  fapu_FourCCToPrintableStr(v7, *(a1 + 120));
  return snprintf((a1 + 16), 0x5FuLL, "FAPU %p:%p %s/%s/%s", a2, a3, v9, v8, v7);
}

uint64_t FigAudioProcessingUnitCreateCopy(uint64_t a1, const void *a2, const void *a3, const void *a4, uint64_t a5, void *a6)
{
  if (!a4)
  {
    v24 = 491;
LABEL_23:
    FigAudioProcessingUnitCreateCopy_cold_1(v24, &v25);
    return v25;
  }

  if (!a5)
  {
    v24 = 492;
    goto LABEL_23;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  MEMORY[0x19A8D3660](&FigAudioProcessingUnitGetClassID_sRegisterFigAudioProcessingUnitOnce, fapu_registerClass);
  v11 = CMDerivedObjectCreate();
  if (v11)
  {
    return v11;
  }

  v12 = CMBaseObjectGetDerivedStorage();
  v13 = *(DerivedStorage + 112);
  *(v12 + 128) = *(DerivedStorage + 128);
  *(v12 + 112) = v13;
  *(v12 + 132) = *(DerivedStorage + 132);
  *v12 = CFRetain(a4);
  FigAudioQueueTimingShimGetAudioQueue(a4);
  v11 = ATAudioProcessingNodeInstantiate();
  if (v11)
  {
    return v11;
  }

  fapu_updateLoggingIDCStr(v12, a2, a3);
  v14 = *(DerivedStorage + 136);
  if (v14)
  {
    v15 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (!v15)
    {
      return 4294954514;
    }

    v11 = v15(0, @"prrp", v14);
    if (v11)
    {
      return v11;
    }
  }

  v16 = *(DerivedStorage + 144);
  if (v16)
  {
    v17 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (!v17)
    {
      return 4294954514;
    }

    v11 = v17(0, @"prsp", v16);
    if (v11)
    {
      return v11;
    }
  }

  v18 = *(DerivedStorage + 152);
  if (v18)
  {
    v19 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (!v19)
    {
      return 4294954514;
    }

    v11 = v19(0, @"ausp", v18);
    if (v11)
    {
      return v11;
    }
  }

  v20 = *(DerivedStorage + 160);
  if (v20)
  {
    v21 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v21)
    {
      v11 = v21(0, @"grtx", v20);
      if (!v11)
      {
        goto LABEL_17;
      }

      return v11;
    }

    return 4294954514;
  }

LABEL_17:
  v22 = 0;
  *a6 = 0;
  return v22;
}

CFStringRef fapu_CopyFormattingDesc(uint64_t a1)
{
  v1 = *MEMORY[0x1E695E480];
  if (a1)
  {
    v2 = (CMBaseObjectGetDerivedStorage() + 16);
  }

  else
  {
    v2 = "";
  }

  return CFStringCreateWithCString(v1, v2, 0x600u);
}

void fapu_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  ATAudioProcessingNodeDispose();
  *(DerivedStorage + 8) = 0;
  v1 = *(DerivedStorage + 136);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 136) = 0;
  }

  v2 = *(DerivedStorage + 144);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 144) = 0;
  }

  v3 = *(DerivedStorage + 152);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 152) = 0;
  }

  v4 = *(DerivedStorage + 160);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 160) = 0;
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

CFStringRef fapu_CopyDebugDescription(uint64_t a1)
{
  v1 = *MEMORY[0x1E695E480];
  if (a1)
  {
    v2 = (CMBaseObjectGetDerivedStorage() + 16);
  }

  else
  {
    v2 = "";
  }

  return CFStringCreateWithCString(v1, v2, 0x600u);
}

uint64_t fapu_CopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, CFTypeRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (FigCFEqual())
  {
    v6 = DerivedStorage[17];
LABEL_9:
    *a4 = CFRetain(v6);
    return 0;
  }

  if (FigCFEqual())
  {
    v6 = DerivedStorage[18];
    goto LABEL_9;
  }

  if (FigCFEqual())
  {
    v6 = DerivedStorage[19];
    goto LABEL_9;
  }

  if (FigCFEqual())
  {
    v6 = DerivedStorage[20];
    goto LABEL_9;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t fapu_SetProperty(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (FigCFEqual())
  {
    if (!FigCFEqual())
    {
      if (DerivedStorage[17])
      {
        fapu_SetProperty_cold_1(&v16);
      }

      else
      {
        if (a2)
        {
          v6 = CFGetTypeID(a2);
          if (v6 == CFStringGetTypeID())
          {
            v7 = DerivedStorage[17];
            DerivedStorage[17] = a3;
            if (a3)
            {
              CFRetain(a3);
            }

            if (v7)
            {
              CFRelease(v7);
            }

            v8 = ATAudioProcessingNodeSetProperty();
            if (v8)
            {
              fapu_SetProperty_cold_2();
            }

            return v8;
          }
        }

        fapu_SetProperty_cold_3(&v16);
      }

      return v16;
    }

    return 0;
  }

  if (FigCFEqual())
  {
    if (FigCFEqual())
    {
      return 0;
    }

    if (DerivedStorage[18])
    {
      fapu_SetProperty_cold_4(&v16);
    }

    else
    {
      if (a2)
      {
        v9 = CFGetTypeID(a2);
        if (v9 == CFDictionaryGetTypeID())
        {
          v10 = DerivedStorage[18];
          DerivedStorage[18] = a3;
          if (a3)
          {
            CFRetain(a3);
          }

          if (v10)
          {
            CFRelease(v10);
          }

          v8 = ATAudioProcessingNodeSetProperty();
          if (v8)
          {
            fapu_SetProperty_cold_5();
          }

          return v8;
        }
      }

      fapu_SetProperty_cold_6(&v16);
    }

    return v16;
  }

  if (FigCFEqual())
  {
    if (FigCFEqual())
    {
      return 0;
    }

    if (DerivedStorage[19])
    {
      fapu_SetProperty_cold_7(&v16);
    }

    else
    {
      if (a2)
      {
        v11 = CFGetTypeID(a2);
        if (v11 == CFDictionaryGetTypeID())
        {
          v12 = DerivedStorage[19];
          DerivedStorage[19] = a3;
          if (a3)
          {
            CFRetain(a3);
          }

          if (v12)
          {
            CFRelease(v12);
          }

          v8 = ATAudioProcessingNodeSetProperty();
          if (v8)
          {
            fapu_SetProperty_cold_8();
          }

          return v8;
        }
      }

      fapu_SetProperty_cold_9(&v16);
    }

    return v16;
  }

  if (FigCFEqual())
  {
    if (FigCFEqual())
    {
      return 0;
    }

    if (DerivedStorage[20])
    {
      fapu_SetProperty_cold_10(&v16);
    }

    else
    {
      if (a2)
      {
        v14 = CFGetTypeID(a2);
        if (v14 == CFStringGetTypeID())
        {
          v15 = DerivedStorage[20];
          DerivedStorage[20] = a3;
          if (a3)
          {
            CFRetain(a3);
          }

          if (v15)
          {
            CFRelease(v15);
          }

          v8 = ATAudioProcessingNodeSetProperty();
          if (v8)
          {
            fapu_SetProperty_cold_11();
          }

          return v8;
        }
      }

      fapu_SetProperty_cold_12(&v16);
    }

    return v16;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t fapu_ScheduleParameters()
{
  CMBaseObjectGetDerivedStorage();
  FigAudioQueueTimingShimConvertTimingShimTimeToAQTime();
  return ATAudioProcessingNodeScheduleParameters();
}

uint64_t fapu_CancelScheduledParameters()
{
  v0 = *(CMBaseObjectGetDerivedStorage() + 8);

  return MEMORY[0x1EEDB4178](v0);
}

uint64_t fapu_FourCCToPrintableStr(uint64_t a1, unsigned int a2)
{
  v4 = 0;
  v5 = 24;
  v6 = MEMORY[0x1E69E9830];
  do
  {
    v7 = a2 >> v5;
    v8 = (a2 >> v5);
    if (v8 > 0x7F)
    {
      v9 = __maskrune((a2 >> v5), 0x40000uLL);
    }

    else
    {
      v9 = *(v6 + 4 * (a2 >> v5) + 60) & 0x40000;
    }

    if (v9)
    {
      *(a1 + v4) = v7;
    }

    else
    {
      *(a1 + v4) = 92;
      v10 = v4 + 2;
      *(a1 + (v4 + 1)) = 120;
      if (v8 <= 0x9F)
      {
        v11 = 48;
      }

      else
      {
        v11 = 55;
      }

      v4 += 3;
      *(a1 + v10) = v11 + ((a2 >> v5) >> 4);
      if (((a2 >> v5) & 0xF) <= 9)
      {
        v12 = 48;
      }

      else
      {
        v12 = 55;
      }

      *(a1 + v4) = v12 + (v7 & 0xF);
    }

    ++v4;
    v5 -= 8;
  }

  while (v5 != -8);
  *(a1 + v4) = 0;
  return a1;
}

CFTypeRef PKDCopyDisposeStorageAllocator()
{
  if (PKDCopyDisposeStorageAllocator_once != -1)
  {
    PKDCopyDisposeStorageAllocator_cold_1();
  }

  result = qword_1EE59F118;
  if (qword_1EE59F118)
  {

    return CFRetain(result);
  }

  return result;
}

CFAllocatorRef PKDDisposeStorageAllocatorInitOnce(uint64_t a1)
{
  memset(&v3, 0, sizeof(v3));
  v3.info = *a1;
  v3.allocate = PKDDisposeStorageAllocatorAllocateCallback;
  v3.deallocate = PKDDisposeStorageAllocatorDeallocateCallback;
  result = CFAllocatorCreate(*MEMORY[0x1E695E480], &v3);
  *(a1 + 8) = result;
  return result;
}

CFTypeRef PKDMSECopyDisposeStorageAllocator()
{
  if (PKDMSECopyDisposeStorageAllocator_once != -1)
  {
    PKDMSECopyDisposeStorageAllocator_cold_1();
  }

  result = qword_1EE59F128;
  if (qword_1EE59F128)
  {

    return CFRetain(result);
  }

  return result;
}

void *PKDMovieIDCreateForPastis()
{
  result = CreateCommon();
  result[2] = Qhl17oSYJtCJIxM;
  result[3] = MzdSdcDIXg8COV;
  return result;
}

void *CreateCommon()
{
  PKDMovieIDGetTypeID();
  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v1 = dispatch_queue_create("com.apple.PKDMovieID", 0);
    Instance[4] = v1;
    if (!v1)
    {
      CFRelease(Instance);
      return 0;
    }
  }

  return Instance;
}

uint64_t PKDMovieIDGetTypeID()
{
  v1 = xmmword_1E74988E8;
  if (PKDMovieIDGetTypeID_once != -1)
  {
    dispatch_once_f(&PKDMovieIDGetTypeID_once, &v1, CFRuntimeClassRegisterOnce_0);
  }

  return PKDMovieIDGetTypeID_typeID;
}

double PKDMovieIDInit(uint64_t a1)
{
  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

void PKDMovieIDFinalize(void *context)
{
  v2 = context[4];
  if (v2)
  {
    dispatch_sync_f(v2, context, FinalizeGuts);
    v3 = context[4];

    dispatch_release(v3);
  }
}

uint64_t CFRuntimeClassRegisterOnce_0(uint64_t a1)
{
  result = _CFRuntimeRegisterClass();
  **(a1 + 8) = result;
  return result;
}

uint64_t PKDMovieIDGetValue(uint64_t a1, CFDictionaryRef theDict, void *a3)
{
  cf = 0;
  v14 = 0;
  context = a1;
  if (theDict)
  {
    v6 = *MEMORY[0x1E6962AC0];
    if (!CFDictionaryContainsKey(theDict, *MEMORY[0x1E6962AC0]) || (v7 = *MEMORY[0x1E6962B00], !CFDictionaryContainsKey(theDict, *MEMORY[0x1E6962B00])))
    {
      result = 4294955136;
      LODWORD(v14) = -12160;
      goto LABEL_8;
    }

    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    Value = CFDictionaryGetValue(theDict, v6);
    CFDictionarySetValue(Mutable, v6, Value);
    v10 = CFDictionaryGetValue(theDict, v7);
    CFDictionarySetValue(Mutable, v7, v10);
    cf = Mutable;
  }

  dispatch_sync_f(*(a1 + 32), &context, GetMovieIDGuts);
  result = v14;
  if (a3 && !v14)
  {
    *a3 = *(a1 + 40);
  }

LABEL_8:
  if (cf)
  {
    CFRelease(cf);
    return v14;
  }

  return result;
}

void GetMovieIDGuts(uint64_t a1)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  if (v3 && *(a1 + 8) && (v4 = *MEMORY[0x1E6962AC0], CFDictionaryGetValue(v3, *MEMORY[0x1E6962AC0]), CFDictionaryGetValue(*(a1 + 8), v4), !FigCFEqual()))
  {
    GetMovieIDGuts_cold_1(&v26);
    v6 = 0;
    v5 = v26;
  }

  else if (v2[5])
  {
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v26 = 0;
    Value = CFDictionaryGetValue(*(a1 + 8), *MEMORY[0x1E6962AC0]);
    v8 = CFDictionaryGetValue(*(a1 + 8), *MEMORY[0x1E6962B00]);
    Count = CFArrayGetCount(v8);
    v10 = Count;
    if (Count)
    {
      theData = Value;
      v11 = malloc_type_malloc(4 * Count, 0x100004052888210uLL);
      v12 = 0;
      v24 = v10;
      v25 = v11;
      v13 = v10;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v8, v12);
        if (!ValueAtIndex || (v15 = ValueAtIndex, v16 = CFGetTypeID(ValueAtIndex), v16 != CFNumberGetTypeID()))
        {
          GetMovieIDGuts_cold_2(&v27);
          v5 = v27;
          goto LABEL_21;
        }

        if (!CFNumberGetValue(v15, kCFNumberSInt32Type, v11))
        {
          fig_log_get_emitter();
          v17 = FigSignalErrorAtGM();
          if (v17)
          {
            break;
          }
        }

        ++v12;
        v11 += 4;
        if (v13 == v12)
        {
          v10 = v24;
          v6 = v25;
          Value = theData;
          goto LABEL_15;
        }
      }

      v5 = v17;
LABEL_21:
      v6 = v25;
    }

    else
    {
      v6 = 0;
LABEL_15:
      v18 = v2[2];
      BytePtr = CFDataGetBytePtr(Value);
      Length = CFDataGetLength(Value);
      v21 = v18(BytePtr, Length, v6, v10, &v26);
      if (v21)
      {
        v5 = v21;
      }

      else
      {
        v22 = *(a1 + 8);
        if (v22)
        {
          v22 = CFRetain(v22);
        }

        v5 = 0;
        v2[5] = v26;
        v2[6] = v22;
      }
    }
  }

  free(v6);
  *(a1 + 16) = v5;
}

uint64_t PKDGetSchemeFromSinf(const __CFData *a1, unsigned int *a2)
{
  if (a1)
  {
    v10 = 1935894637;
    v8 = 0;
    v9 = 0;
    BytePtr = CFDataGetBytePtr(a1);
    Length = CFDataGetLength(a1);
    result = FigFairPlayGetSinfChildDataWithPath(BytePtr, Length, &v10, 1, &v9, &v8);
    if (result)
    {
      v7 = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_11;
    }

    if (v8 != 12)
    {
      v7 = 0;
      result = 4294955137;
      if (!a2)
      {
        return result;
      }

      goto LABEL_11;
    }

    result = 0;
    v7 = bswap32(*(v9 + 4));
    if (a2)
    {
LABEL_11:
      *a2 = v7;
    }
  }

  else
  {
    v7 = 0;
    result = 4294955146;
    if (a2)
    {
      goto LABEL_11;
    }
  }

  return result;
}

uint64_t PKDCopyDefaultKeyIDFromSinf(const __CFData *a1, CFDataRef *a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v9 = 0;
    v10[0] = 0x74656E6373636869;
    v8 = 0;
    BytePtr = CFDataGetBytePtr(a1);
    Length = CFDataGetLength(a1);
    result = FigFairPlayGetSinfChildDataWithPath(BytePtr, Length, v10, 2, &v9, &v8);
    if (result)
    {
      v7 = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_11;
    }

    if (v8 < 0x18)
    {
      v7 = 0;
      result = 4294955137;
      if (!a2)
      {
        return result;
      }

      goto LABEL_11;
    }

    v7 = CFDataCreate(*MEMORY[0x1E695E480], (v9 + 8), 16);
    result = 0;
    if (a2)
    {
LABEL_11:
      *a2 = v7;
    }
  }

  else
  {
    v7 = 0;
    result = 4294955146;
    if (a2)
    {
      goto LABEL_11;
    }
  }

  return result;
}

unint64_t PKDCopyInfoFromPackagedPersistentKey(const void *a1, void *a2, void *a3, void *a4, void *a5)
{
  if (a1)
  {
    v5 = a5;
    v10 = CFGetTypeID(a1);
    if (v10 == CFDataGetTypeID())
    {
      v11 = CFPropertyListCreateWithData(*MEMORY[0x1E695E480], a1, 0, 0, 0);
      v12 = v11;
      if (!v11 || (v14 = CFGetTypeID(v11), v14 != CFDictionaryGetTypeID()))
      {
        v13 = PKDCopyInfoFromPackagedPersistentKey_cold_2(v12 == 0, &v28);
        v5 = v28;
        if (v13)
        {
          return v5;
        }

        goto LABEL_25;
      }

      if (a2)
      {
        Value = CFDictionaryGetValue(v12, *MEMORY[0x1E6962B48]);
        if (Value)
        {
          Value = CFRetain(Value);
        }

        *a2 = Value;
      }

      if (a3)
      {
        v16 = CFDictionaryGetValue(v12, *MEMORY[0x1E6962AC0]);
        if (!v16)
        {
          v26 = 747;
          goto LABEL_30;
        }

        v17 = CFRetain(v16);
        *a3 = v17;
        if (!v17 || (v18 = CFGetTypeID(v17), v18 != CFDataGetTypeID()))
        {
          v26 = 747;
          goto LABEL_31;
        }
      }

      if (a4)
      {
        v19 = CFDictionaryGetValue(v12, *MEMORY[0x1E6962B00]);
        if (!v19)
        {
          v26 = 752;
          a3 = a4;
          goto LABEL_30;
        }

        v20 = CFRetain(v19);
        *a4 = v20;
        if (!v20 || (v21 = CFGetTypeID(v20), v21 != CFArrayGetTypeID()))
        {
          v26 = 752;
          goto LABEL_31;
        }
      }

      if (!v5)
      {
LABEL_25:
        CFRelease(v12);
        return v5;
      }

      v22 = CFDictionaryGetValue(v12, *MEMORY[0x1E6962AF8]);
      if (v22)
      {
        v23 = CFRetain(v22);
        *v5 = v23;
        if (v23)
        {
          v24 = CFGetTypeID(v23);
          if (v24 == CFDataGetTypeID())
          {
            v5 = 0;
            goto LABEL_25;
          }
        }

        v26 = 757;
LABEL_31:
        PKDCopyInfoFromPackagedPersistentKey_cold_1(v26, &v27);
        v5 = v27;
        goto LABEL_25;
      }

      v26 = 757;
      a3 = v5;
LABEL_30:
      *a3 = 0;
      goto LABEL_31;
    }
  }

  PKDCopyInfoFromPackagedPersistentKey_cold_3(&v29);
  return v29;
}

uint64_t PKDCopyDefaultKeyIDFromSinfArray(CFArrayRef theArray, CFDataRef *a2)
{
  v12 = 0;
  v11 = 0;
  if (a2)
  {
    v4 = 0;
    v5 = 0;
    *a2 = 0;
    if (!theArray)
    {
      goto LABEL_4;
    }

LABEL_3:
    for (i = CFArrayGetCount(theArray); ; i = 0)
    {
      if (v5 >= i)
      {
        v9 = v11;
        goto LABEL_13;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v5);
      if (ValueAtIndex)
      {
        v8 = ValueAtIndex;
        if (!PKDGetSchemeFromSinf(ValueAtIndex, &v12))
        {
          v4 = PKDCopyDefaultKeyIDFromSinf(v8, &v11);
          if (!v4)
          {
            v9 = v11;
            if (v11)
            {
              break;
            }
          }
        }
      }

      ++v5;
      if (theArray)
      {
        goto LABEL_3;
      }

LABEL_4:
      ;
    }

    v4 = 0;
LABEL_13:
    *a2 = v9;
  }

  else
  {
    PKDCopyDefaultKeyIDFromSinfArray_cold_1(&v13);
    return v13;
  }

  return v4;
}

unint64_t PKDPersistentKeyIsForCTRModeDecryption(const void *a1, _BYTE *a2)
{
  cf = 0;
  if (!a1)
  {
    PKDPersistentKeyIsForCTRModeDecryption_cold_2(&v7);
    return v7;
  }

  if (!a2)
  {
    PKDPersistentKeyIsForCTRModeDecryption_cold_1(&v7);
    return v7;
  }

  *a2 = 0;
  v3 = PKDCopyInfoFromPackagedPersistentKey(a1, &cf, 0, 0, 0);
  v4 = cf;
  if (!v3)
  {
    *a2 = FigCFEqual();
    v4 = cf;
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return v3;
}

uint64_t PKDCopyDecryptFormatTypeFromSinfArray(CFArrayRef theArray, void *a2)
{
  v10 = 0;
  if (a2)
  {
    v4 = 0;
    *a2 = 0;
    if (!theArray)
    {
      goto LABEL_4;
    }

LABEL_3:
    for (i = CFArrayGetCount(theArray); v4 < i; i = 0)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v4);
      if (ValueAtIndex && !PKDGetSchemeFromSinf(ValueAtIndex, &v10))
      {
        switch(v10)
        {
          case 0x63626332u:
            goto LABEL_13;
          case 0x63656E63u:
            v7 = kFigCPEProtectorCryptorCreationOptionDecryptFormatType_MSE;
LABEL_15:
            if (*v7)
            {
              v8 = CFRetain(*v7);
              goto LABEL_18;
            }

            goto LABEL_17;
          case 0x63626373u:
LABEL_13:
            v7 = kFigCPEProtectorCryptorCreationOptionDecryptFormatType_Pastis;
            goto LABEL_15;
        }
      }

      ++v4;
      if (theArray)
      {
        goto LABEL_3;
      }

LABEL_4:
      ;
    }

LABEL_17:
    v8 = 0;
LABEL_18:
    result = 0;
    *a2 = v8;
  }

  else
  {
    PKDCopyDecryptFormatTypeFromSinfArray_cold_1(&v11);
    return v11;
  }

  return result;
}

const __CFData *FigPKDParsePSSHAndCopyContentKeyInfo(const __CFData *a1, __CFString **a2, CFMutableArrayRef *a3)
{
  v27 = 0;
  if (!a1)
  {
    FigPKDParsePSSHAndCopyContentKeyInfo_cold_6(&v28);
LABEL_40:
    v10 = 0;
    v24 = v28;
    goto LABEL_31;
  }

  v3 = a2;
  if (!a2)
  {
    FigPKDParsePSSHAndCopyContentKeyInfo_cold_5(&v28);
    goto LABEL_40;
  }

  if (!a3)
  {
    FigPKDParsePSSHAndCopyContentKeyInfo_cold_4(&v28);
    goto LABEL_40;
  }

  v6 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    FigPKDParsePSSHAndCopyContentKeyInfo_cold_3(&v28);
    goto LABEL_40;
  }

  v8 = Mutable;
  v9 = FigFairplayPSSHAtomParserParseAndCreateRecord(v6, a1, &v27);
  if (v9)
  {
    v24 = v9;
LABEL_35:
    CFRelease(v8);
    v10 = v27;
    goto LABEL_31;
  }

  v10 = v27;
  v11 = v27[1];
  if (v11)
  {
    v26 = v3;
    v12 = MEMORY[0x1E695E9D8];
    v13 = MEMORY[0x1E695E9E8];
    while (1)
    {
      v14 = CFDataCreate(v6, v11, 16);
      if (!v14)
      {
        FigPKDParsePSSHAndCopyContentKeyInfo_cold_2(&v28);
        goto LABEL_34;
      }

      v15 = v14;
      v16 = CFDictionaryCreateMutable(v6, 0, v12, v13);
      if (!v16)
      {
        break;
      }

      v17 = v16;
      CFDictionarySetValue(v16, @"PKDPSSH_KeyID", v15);
      v18 = *(v11 + 16);
      if (v18 && CFDataGetLength(v18) >= 1)
      {
        CFDictionarySetValue(v17, @"PKDPSSH_ContentIdentifier", *(v11 + 16));
      }

      v19 = *(v11 + 24);
      if (v19 && CFArrayGetCount(v19) >= 1)
      {
        CFDictionarySetValue(v17, @"PKDPSSH_VersionList", *(v11 + 24));
      }

      v20 = *(v11 + 32);
      if (v20 && CFDataGetLength(v20) >= 1)
      {
        CFDictionarySetValue(v17, @"PKDPSSH_RemoteContext", *(v11 + 32));
      }

      CFArrayAppendValue(v8, v17);
      CFRelease(v15);
      CFRelease(v17);
      v11 = *(v11 + 40);
      if (!v11)
      {
        v10 = v27;
        v3 = v26;
        goto LABEL_21;
      }
    }

    FigPKDParsePSSHAndCopyContentKeyInfo_cold_1(v15, &v28);
LABEL_34:
    v24 = v28;
    goto LABEL_35;
  }

LABEL_21:
  v21 = *v10;
  if (*v10 == 1667392306 || v21 == 1667392371)
  {
    v23 = kFigCPEProtectorCryptorCreationOptionDecryptFormatType_Pastis;
LABEL_29:
    *v3 = *v23;
    goto LABEL_30;
  }

  if (v21 == 1667591779)
  {
    v23 = kFigCPEProtectorCryptorCreationOptionDecryptFormatType_MSE;
    goto LABEL_29;
  }

LABEL_30:
  v24 = 0;
  *a3 = v8;
LABEL_31:
  FigFairplayPSSHAtomParserDestroyRecord(v10);
  return v24;
}

uint64_t PKDGetCPCBitfieldFromLabels(const __CFArray *a1, void *a2)
{
  if (a1)
  {
    if (CFArrayGetCount(a1) < 1)
    {
      v4 = 0;
    }

    else
    {
      v3 = 0;
      v4 = 0;
      do
      {
        CFArrayGetValueAtIndex(a1, v3);
        v5 = &dword_1E7498920;
        v6 = 5;
        do
        {
          if (FigCFEqual())
          {
            v8 = 1 << *v5;
            goto LABEL_10;
          }

          v5 += 4;
          --v6;
        }

        while (v6);
        fig_log_get_emitter();
        result = FigSignalErrorAtGM();
        if (result)
        {
          return result;
        }

        v8 = 1;
LABEL_10:
        v4 |= v8;
        ++v3;
      }

      while (v3 < CFArrayGetCount(a1));
    }

    if (a2)
    {
      result = 0;
      *a2 = v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    PKDGetCPCBitfieldFromLabels_cold_1(&v10);
    return v10;
  }

  return result;
}

uint64_t PKDGetSystemCPC(void *a1)
{
  if (PKDGetSystemCPC_getCPCOnceToken != -1)
  {
    PKDGetSystemCPC_cold_1();
  }

  if (PKDGetSystemCPC_err)
  {
    PKDGetSystemCPC_cold_2(&v3);
    return v3;
  }

  else
  {
    result = 0;
    if (a1)
    {
      *a1 = PKDGetSystemCPC_sSystemCPC;
    }
  }

  return result;
}

uint64_t PKDCopyDecryptFormatTypeFromCodecType(int a1, void *a2)
{
  v4 = 0;
  v5 = kFigCPEProtectorCryptorCreationOptionDecryptFormatType_Pastis;
  if (a1 <= 1902407031)
  {
    if (a1 > 1902207794)
    {
      if (a1 > 1902212706)
      {
        if (a1 == 1902212707 || a1 == 1902403958)
        {
          goto LABEL_34;
        }

        v6 = 1902405681;
LABEL_29:
        if (a1 != v6)
        {
          goto LABEL_36;
        }

        goto LABEL_34;
      }

      if (a1 == 1902207795 || a1 == 1902211171)
      {
        goto LABEL_34;
      }

      v7 = 30257;
LABEL_20:
      v6 = v7 | 0x71610000;
      goto LABEL_29;
    }

    if (a1 <= 1667790434)
    {
      if (a1 != 1667331683 && a1 != 1667524657)
      {
        goto LABEL_36;
      }
    }

    else if (a1 != 1667790435)
    {
      if (a1 == 1700886115)
      {
        goto LABEL_34;
      }

      v7 = 24931;
      goto LABEL_20;
    }

    v5 = kFigCPEProtectorCryptorCreationOptionDecryptFormatType_MSE;
    goto LABEL_34;
  }

  if (a1 > 2053202274)
  {
    if (a1 > 2053207650)
    {
      if (a1 == 2053207651)
      {
        goto LABEL_34;
      }

      v6 = 2053464883;
    }

    else
    {
      if ((a1 - 2053202739) <= 0x3D && ((1 << (a1 - 51)) & 0x2020000000000001) != 0)
      {
        goto LABEL_34;
      }

      v6 = 2053202275;
    }

    goto LABEL_29;
  }

  if (a1 > 1902928226)
  {
    if (a1 == 1902928227 || a1 == 1902998904)
    {
      goto LABEL_34;
    }

    v6 = 1903522657;
    goto LABEL_29;
  }

  if (a1 != 1902407032 && a1 != 1902537827)
  {
    v6 = 1902671459;
    goto LABEL_29;
  }

LABEL_34:
  v4 = *v5;
  if (*v5)
  {
    v4 = CFRetain(v4);
  }

LABEL_36:
  *a2 = v4;
  return 0;
}

uint64_t PKDCopyDecryptFormatTypeFromFormatDescription(const opaqueCMFormatDescription *a1, void *a2)
{
  MediaSubType = CMFormatDescriptionGetMediaSubType(a1);
  PKDCopyDecryptFormatTypeFromCodecType(MediaSubType, a2);
  return 0;
}

__CFString *PKDLogPrivateData(uint64_t a1)
{
  if (!a1)
  {
    return @"[]";
  }

  v1 = a1;
  if (!FigIsItOKToLogURLs())
  {
    return @"[]";
  }

  return v1;
}

uint64_t PKDCopyIdentifierForFormatDescription(const opaqueCMFormatDescription *a1, char *a2, void *a3)
{
  v25 = 0;
  cf = 0;
  Extension = CMFormatDescriptionGetExtension(a1, *MEMORY[0x1E69600A0]);
  if (!Extension || (v7 = Extension, v8 = CFGetTypeID(Extension), v8 != CFDictionaryGetTypeID()))
  {
    Mutable = 0;
LABEL_46:
    v19 = 1;
LABEL_19:
    MediaSubType = CMFormatDescriptionGetMediaSubType(a1);
    v18 = 0;
    if (MediaSubType <= 2053202738)
    {
      if (MediaSubType > 1902212706)
      {
        if (MediaSubType != 1902212707)
        {
          v21 = 24931;
          goto LABEL_29;
        }
      }

      else if (MediaSubType != 1667331683)
      {
        v22 = 1700886115;
        goto LABEL_30;
      }
    }

    else if (((MediaSubType - 2053202739) > 0x3D || ((1 << (MediaSubType - 51)) & 0x2020000000000001) == 0) && MediaSubType != 2053464883)
    {
      v21 = 30307;
LABEL_29:
      v22 = v21 | 0x7A610000;
LABEL_30:
      if (MediaSubType != v22)
      {
        goto LABEL_32;
      }
    }

    v25 = CFRetain(@"TransportStreamIdentifier");
    v18 = 1;
    goto LABEL_32;
  }

  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    PKDCopyIdentifierForFormatDescription_cold_1();
    goto LABEL_46;
  }

  Value = CFDictionaryGetValue(v7, @"sinf");
  if (Value)
  {
    v11 = Value;
    v12 = CFGetTypeID(Value);
    if (v12 == CFArrayGetTypeID())
    {
      if (CFArrayGetCount(v11) >= 1)
      {
        v13 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v11, v13);
          v15 = CFGetTypeID(ValueAtIndex);
          if (v15 == CFDataGetTypeID())
          {
            CFArrayAppendValue(Mutable, ValueAtIndex);
          }

          ++v13;
        }

        while (v13 < CFArrayGetCount(v11));
      }
    }

    else
    {
      v16 = CFGetTypeID(v11);
      if (v16 == CFDataGetTypeID())
      {
        CFArrayAppendValue(Mutable, v11);
      }
    }
  }

  if (CFArrayGetCount(Mutable) < 1)
  {
    v19 = 0;
    goto LABEL_19;
  }

  Base64EncodedStringFromCFData = PKDCopyDefaultKeyIDFromSinfArray(Mutable, &cf);
  if (Base64EncodedStringFromCFData || (v18 = 1, Base64EncodedStringFromCFData = FigCreateBase64EncodedStringFromCFData(), Base64EncodedStringFromCFData))
  {
    v23 = Base64EncodedStringFromCFData;
LABEL_37:
    CFRelease(Mutable);
    goto LABEL_38;
  }

  v19 = 0;
LABEL_32:
  if (a2)
  {
    *a2 = v18;
  }

  v23 = 0;
  if (a3)
  {
    *a3 = v25;
    v25 = 0;
  }

  if ((v19 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_38:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  return v23;
}

const __CFString *PKDCreateTransportStreamEncryptionInitData(uint64_t a1, uint64_t a2)
{
  v2 = *MEMORY[0x1E695E480];
  result = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"{\n  codc : %u,\n  mtyp : %u,\n  cont : mpts\n}", a2, a1);
  if (result)
  {
    v4 = result;
    ExternalRepresentation = CFStringCreateExternalRepresentation(v2, result, 0x600u, 0x20u);
    CFRelease(v4);
    return ExternalRepresentation;
  }

  return result;
}

void FinalizeGuts(uint64_t a1)
{
  if (*(a1 + 40))
  {
    (*(a1 + 24))();
  }

  v2 = *(a1 + 48);
  if (v2)
  {

    CFRelease(v2);
  }
}

uint64_t OUTLINED_FUNCTION_2_196()
{

  return FigDispatchAsyncPostNotification();
}

uint64_t FigNeroidLayerViewCreate(uint64_t a1, void *a2)
{
  FigLayerViewGetClassID();
  v3 = CMDerivedObjectCreate();
  if (!v3)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *DerivedStorage = CAImageQueueCreate();
    CAImageQueueSetFlags();
    *a2 = 0;
  }

  return v3;
}

void flv_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v1 = *(DerivedStorage + 8);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 8) = 0;
  }
}

__CFString *flv_CopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigLayerView %p %@>", a1, *DerivedStorage);
  return Mutable;
}

uint64_t flv_CopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, __CFDictionary **a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, @"PixelBufferAttributes"))
  {
    Mutable = CFDictionaryCreateMutable(a3, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v9 = CFArrayCreateMutable(a3, 0, MEMORY[0x1E695E9C0]);
    v10 = v9;
    if (Mutable)
    {
      v11 = v9 == 0;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      if (!v9)
      {
        goto LABEL_14;
      }
    }

    else
    {
      FigCFArrayAppendInt32();
      FigCFArrayAppendInt32();
      CFDictionaryAddValue(Mutable, *MEMORY[0x1E6966130], v10);
    }

    CFRelease(v10);
LABEL_14:
    result = 0;
    *a4 = Mutable;
    return result;
  }

  if (CFEqual(a2, @"DisplayInfo"))
  {
    v12 = *(DerivedStorage + 8);
    if (!v12)
    {
      Mutable = 0;
      goto LABEL_14;
    }

LABEL_13:
    Mutable = CFRetain(v12);
    goto LABEL_14;
  }

  if (CFEqual(a2, @"ImageQueue"))
  {
    v12 = *DerivedStorage;
    goto LABEL_13;
  }

  return 4294954512;
}

uint64_t flv_SetProperty(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!CFEqual(a2, @"DisplayInfo"))
  {
    return 4294954512;
  }

  v6 = *(DerivedStorage + 8);
  *(DerivedStorage + 8) = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return 0;
}

uint64_t RegisterFigFramePrefetcherType()
{
  result = _CFRuntimeRegisterClass();
  sFigFramePrefetcherID = result;
  return result;
}

uint64_t FigFramePrefetcherActivate(uint64_t a1)
{
  if (sInitActiveGlobalsOnce != -1)
  {
    FigFramePrefetcherActivate_cold_1();
  }

  FigSimpleMutexLock();
  if (sActivePrefetcher == a1)
  {
    started = 0;
  }

  else
  {
    ffp_DeactivateActivePrefetcher();
    sActivePrefetcher = a1;
    FigRetainProxyLockMutex();
    if (FigRetainProxyIsInvalidated())
    {
      started = 0;
    }

    else
    {
      *(a1 + 80) = 1;
      *(a1 + 82) = FigHTTPRequestPerformingMandatoryActivity();
      *(a1 + 96) = 0;
      *(a1 + 152) = 0;
      *(a1 + 160) = 0;
      v3 = *(a1 + 32);
      if (v3)
      {
        FigStreamingCacheSetProperty(v3, @"FSC_IsDonor", *MEMORY[0x1E695E4C0]);
      }

      if (*(a1 + 40) && *(a1 + 48) && (*(a1 + 68) & 1) != 0)
      {
        started = ffp_StartRun(a1, 0);
      }

      else
      {
        started = 0;
      }

      *(a1 + 81) = started == 0;
    }

    FigRetainProxyUnlockMutex();
    if (dword_1EAF17BF8)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  FigSimpleMutexUnlock();
  return started;
}

uint64_t InitActiveGlobals()
{
  result = FigReentrantMutexCreate();
  sActivePrefetcherLock = result;
  return result;
}

void ffp_DeactivateActivePrefetcher()
{
  v0 = sActivePrefetcher;
  if (sActivePrefetcher)
  {
    sActivePrefetcher = 0;
    FigRetainProxyLockMutex();
    *(v0 + 80) = 0;
    v1 = *(v0 + 32);
    if (v1)
    {
      FigStreamingCacheSetProperty(v1, @"FSC_IsDonor", *MEMORY[0x1E695E4D0]);
    }

    FigRetainProxyUnlockMutex();
    if (dword_1EAF17BF8)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }
}

uint64_t ffp_StartRun(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a2 > 3)
  {
    ffp_Halt(a1, 0);
    return 0;
  }

  else
  {
    *(a1 + 88) = a2;
    CMTimeMakeWithSeconds(&time, kFFPRunIntervals[a2], 2);
    *(a1 + 128) = time;
    v3 = MEMORY[0x1E6960CC0];
    *(a1 + 104) = *MEMORY[0x1E6960CC0];
    *(a1 + 120) = *(v3 + 16);
    if (dword_1EAF17BF8)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    return ffp_TakeNextStep(a1);
  }
}

uint64_t FigFramePrefetcherDeactivate(uint64_t a1)
{
  if (sInitActiveGlobalsOnce != -1)
  {
    FigFramePrefetcherActivate_cold_1();
  }

  FigSimpleMutexLock();
  if (sActivePrefetcher == a1)
  {
    ffp_DeactivateActivePrefetcher();
    if (dword_1EAF17BF8)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  FigSimpleMutexUnlock();
  return 0;
}

uint64_t FigFramePrefetcherCreate(uint64_t a1, uint64_t a2, const void *a3, const void *a4, void *a5)
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (!a5)
  {
    FigFramePrefetcherCreate_cold_6(&v19);
    return v19;
  }

  if (!a3)
  {
    FigFramePrefetcherCreate_cold_5(&v19);
    return v19;
  }

  if (!a2)
  {
    FigFramePrefetcherCreate_cold_4(&v19);
    return v19;
  }

  if (!a4)
  {
    FigFramePrefetcherCreate_cold_3(&v19);
    return v19;
  }

  if (sRegisterFigFramePrefetcherTypeOnce != -1)
  {
    FigFramePrefetcherCreate_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    FigFramePrefetcherCreate_cold_2(&v19);
    return v19;
  }

  v10 = Instance;
  v11 = FigRetainProxyCreate();
  if (v11)
  {
    v17 = v11;
    CFRelease(v10);
  }

  else
  {
    v10[3] = CFRetain(a4);
    v10[4] = CFRetain(a3);
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterAddWeakListener();
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFDictionarySetValue(Mutable, @"PlayerType", @"scrub");
    if (!FigReportingAgentCreateFromAsset(a2))
    {
      v13 = v10[21];
      if (v13)
      {
        v14 = *(*(CMBaseObjectGetVTable() + 16) + 104);
        if (v14)
        {
          v14(v13, 0);
        }
      }
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }

    FigRetainProxyRetain();
    v15 = v10[2];
    v16 = *(*(CMBaseObjectGetVTable() + 16) + 72);
    if (v16)
    {
      v17 = v16(a2, ffp_PumpTransferCallback, v15);
    }

    else
    {
      v17 = 4294954514;
    }

    *a5 = v10;
  }

  return v17;
}

uint64_t ffp_NoteMandatoryActivityLevelChange(int a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  dispatch_get_global_queue(0, 0);

  return FigDeferNotificationToDispatchQueue();
}

uint64_t ffp_PumpTransferCallback(int a1, const void *a2, CFErrorRef err)
{
  cf[22] = *MEMORY[0x1E69E9840];
  if (err)
  {
    Code = CFErrorGetCode(err);
  }

  else
  {
    Code = 0;
  }

  FigRetainProxyLockMutex();
  if (!FigRetainProxyIsInvalidated())
  {
    Owner = FigRetainProxyGetOwner();
    cf[0] = 0;
    GlobalNetworkBufferingLowPriorityQueue = FigThreadGetGlobalNetworkBufferingLowPriorityQueue();
    if (Code)
    {
      v7 = 0;
    }

    else
    {
      v7 = a2 == 0;
    }

    if (v7)
    {
      Code = -19310;
    }

    if (Code)
    {
      goto LABEL_41;
    }

    v8 = GlobalNetworkBufferingLowPriorityQueue;
    Owner[5] = FigBytePumpRetain(a2);
    if (dword_1EAF17BF8)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v10 = Owner[21];
    if (v10)
    {
      FigBaseObject = FigBytePumpGetFigBaseObject(Owner[5]);
      v12 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v12)
      {
        v12(FigBaseObject, 0x1F0B1F518, v10);
      }
    }

    v13 = Owner[5];
    v14 = Owner[2];
    v15 = *(*(CMBaseObjectGetVTable() + 16) + 88);
    Code = v15 ? v15(v13, ffp_BytePumpFn, ffp_DateMappingCallback, v14) : -12782;
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterAddListener();
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterAddListener();
    if (Code)
    {
      goto LABEL_41;
    }

    v16 = Owner[4];
    v17 = FigBytePumpGetFigBaseObject(Owner[5]);
    v18 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (!v18)
    {
      goto LABEL_40;
    }

    v19 = v18(v17, 0x1F0B1F098, v16);
    if (v19)
    {
LABEL_22:
      Code = v19;
LABEL_41:
      ffp_Halt(Owner, Code);
      goto LABEL_42;
    }

    v20 = FigBytePumpGetFigBaseObject(Owner[5]);
    v21 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (!v21)
    {
      goto LABEL_40;
    }

    v22 = *MEMORY[0x1E695E4D0];
    v19 = v21(v20, 0x1F0B1F0D8, *MEMORY[0x1E695E4D0]);
    if (v19)
    {
      goto LABEL_22;
    }

    v23 = FigBytePumpGetFigBaseObject(Owner[5]);
    v24 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (!v24)
    {
      goto LABEL_40;
    }

    v25 = *MEMORY[0x1E695E4C0];
    v19 = v24(v23, 0x1F0B1F0F8, *MEMORY[0x1E695E4C0]);
    if (v19)
    {
      goto LABEL_22;
    }

    v26 = FigBytePumpGetFigBaseObject(Owner[5]);
    v27 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (!v27)
    {
      goto LABEL_40;
    }

    v19 = v27(v26, 0x1F0B1F138, v22);
    if (v19)
    {
      goto LABEL_22;
    }

    v28 = FigBytePumpGetFigBaseObject(Owner[5]);
    v29 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (!v29)
    {
      goto LABEL_40;
    }

    v19 = v29(v28, 0x1F0B1F158, v25);
    if (v19)
    {
      goto LABEL_22;
    }

    v30 = FigBytePumpGetFigBaseObject(Owner[5]);
    v31 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (!v31)
    {
      goto LABEL_40;
    }

    v19 = v31(v30, 0x1F0B1F178, v8);
    if (v19)
    {
      goto LABEL_22;
    }

    v32 = FigBytePumpGetFigBaseObject(Owner[5]);
    v33 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (!v33)
    {
LABEL_40:
      Code = -12782;
      goto LABEL_41;
    }

    v19 = v33(v32, 0x1F0B1F638, @"SFPrefetcher");
    if (v19)
    {
      goto LABEL_22;
    }

    v34 = FigBytePumpGetFigBaseObject(Owner[5]);
    v35 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v35 || v35(v34, 0x1F0B1EE98, *MEMORY[0x1E695E480], cf))
    {
      v36 = Owner[5];
      v37 = *(*(CMBaseObjectGetVTable() + 16) + 64);
      if (v37)
      {
        v19 = v37(v36);
        if (!v19)
        {
          goto LABEL_42;
        }

        goto LABEL_22;
      }

      goto LABEL_40;
    }

    if (Owner[3])
    {
      ffp_AlternateListChanged(Owner, cf[0]);
    }

    CFRelease(cf[0]);
  }

LABEL_42:
  FigRetainProxyUnlockMutex();
  return FigRetainProxyRelease();
}

double figFramePrefetcherInit(_OWORD *a1)
{
  result = 0.0;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  return result;
}

void figFramePrefetcherFinalize(void *a1)
{
  if (dword_1EAF17BF8)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  if (sActivePrefetcher == a1)
  {
    ffp_DeactivateActivePrefetcher();
  }

  FigSimpleMutexUnlock();
  FigRetainProxyLockMutex();
  if (a1[5])
  {
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterRemoveListener();
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterRemoveListener();
  }

  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  FigRetainProxyInvalidate();
  v3 = a1[6];
  if (v3)
  {
    CFRelease(v3);
    a1[6] = 0;
  }

  v4 = a1[3];
  if (v4)
  {
    CFRelease(v4);
    a1[3] = 0;
  }

  v5 = a1[4];
  if (v5)
  {
    CFRelease(v5);
    a1[4] = 0;
  }

  v6 = a1[5];
  if (v6)
  {
    FigBytePumpGetFigBaseObject(v6);
    v8 = v7;
    v9 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v9)
    {
      v9(v8, 0x1F0B1F098, 0);
    }

    v10 = a1[5];
    if (v10)
    {
      CFRelease(v10);
      a1[5] = 0;
    }
  }

  v11 = a1[21];
  if (v11)
  {
    CFRelease(v11);
  }

  a1[21] = 0;
  FigRetainProxyUnlockMutex();
  v12 = a1[2];
  if (v12)
  {
    CFRelease(v12);
    a1[2] = 0;
  }
}

CFStringRef figFramePrefetcherCopyDebugDesc(void *a1)
{
  v2 = *MEMORY[0x1E695E480];
  v3 = CFGetRetainCount(a1);
  return CFStringCreateWithFormat(v2, 0, @"[FigFramePrefetcher %p (%d) pump %p]", a1, v3, a1[5]);
}

uint64_t ffp_NoteAlternateListChanged()
{
  FigRetainProxyLockMutex();
  if (!FigRetainProxyIsInvalidated())
  {
    Owner = FigRetainProxyGetOwner();
    cf = 0;
    FigBaseObject = FigBytePumpGetFigBaseObject(*(Owner + 40));
    v2 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v2 && !v2(FigBaseObject, 0x1F0B1EE98, *MEMORY[0x1E695E480], &cf) && *(Owner + 24))
    {
      ffp_AlternateListChanged(Owner, cf);
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  return FigRetainProxyUnlockMutex();
}

uint64_t ffp_NoteDurationChanged()
{
  FigRetainProxyLockMutex();
  if (!FigRetainProxyIsInvalidated())
  {
    Owner = FigRetainProxyGetOwner();
    ffp_EstablishDuration(Owner);
  }

  return FigRetainProxyUnlockMutex();
}

void ffp_AlternateListChanged(uint64_t a1, CFDictionaryRef theDict)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 48))
  {
    if (dword_1EAF17BF8)
    {
      LODWORD(duration.value) = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v6 = *(a1 + 24);
    v7 = *(a1 + 40);
    v8 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v8)
    {
      LODWORD(duration.value) = 0;
      *&start[0].start.value = *MEMORY[0x1E6960CC0];
      v9 = *(MEMORY[0x1E6960CC0] + 16);
      start[0].start.epoch = v9;
      v15 = *&start[0].start.value;
      *&v17.start.value = *&start[0].start.value;
      v17.start.epoch = v9;
      v10 = v8(v7, v6, 0, 0, 0, 1, start, &v17, 0, &duration, 0, 0);
      if (v10)
      {
        v14 = v10;
        goto LABEL_19;
      }

      v11 = *(a1 + 48);
      *(a1 + 48) = v6;
      if (v6)
      {
        CFRetain(v6);
      }

      if (v11)
      {
        CFRelease(v11);
      }

      v12 = *(a1 + 40);
      *&start[0].start.value = v15;
      start[0].start.epoch = v9;
      duration = **&MEMORY[0x1E6960C70];
      CMTimeRangeMake(&v17, &start[0].start, &duration);
      v13 = *(*(CMBaseObjectGetVTable() + 16) + 72);
      if (v13)
      {
        start[0] = v17;
        v14 = v13(v12, start, 0, 0, 0, &duration, 0);
        ffp_EstablishDuration(a1);
        if (!v14)
        {
          return;
        }

        goto LABEL_20;
      }
    }

    v14 = -12782;
LABEL_19:
    ffp_EstablishDuration(a1);
LABEL_20:
    ffp_Halt(a1, v14);
    return;
  }

  Value = CFDictionaryGetValue(theDict, @"FBPAIK_FigAlternateArray");
  if (Value)
  {
    v4 = Value;
    v21.length = CFArrayGetCount(Value);
    v21.location = 0;
    if (!CFArrayContainsValue(v4, v21, *(a1 + 48)))
    {

      ffp_Halt(a1, -19312);
    }
  }
}

void ffp_EstablishDuration(uint64_t a1)
{
  if ((*(a1 + 68) & 1) == 0)
  {
    FigBaseObject = FigBytePumpGetFigBaseObject(*(a1 + 40));
    v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v3)
    {
      v4 = *MEMORY[0x1E695E480];
      dictionaryRepresentation = 0;
      if (!v3(FigBaseObject, @"FBP_Duration", v4, &dictionaryRepresentation))
      {
        CMTimeMakeFromDictionary(&v6, dictionaryRepresentation);
        *(a1 + 56) = v6;
        if (*(a1 + 81))
        {
          started = ffp_StartRun(a1, 0);
          if (started)
          {
            ffp_Halt(a1, started);
          }
        }

        CFRelease(dictionaryRepresentation);
      }
    }
  }
}

void ffp_Halt(uint64_t a1, int a2)
{
  if (a2 && (v3 = *MEMORY[0x1E695E480], (v4 = CFErrorCreate(*MEMORY[0x1E695E480], *MEMORY[0x1E695E638], a2, 0)) != 0))
  {
    v5 = v4;
    Mutable = CFDictionaryCreateMutable(v3, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v7 = Mutable;
    if (Mutable)
    {
      CFDictionaryAddValue(Mutable, @"FFP_Finished_Err", v5);
    }

    CFRelease(v5);
  }

  else
  {
    v7 = 0;
  }

  if (dword_1EAF17BF8)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  *(a1 + 81) = 0;
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  if (v7)
  {
    CFRelease(v7);
  }
}

uint64_t ffp_TakeNextStep(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  memset(&v16, 0, sizeof(v16));
  CMTimeMake(&rhs, 10, 1000);
  lhs = *(a1 + 104);
  CMTimeAdd(&v16, &lhs, &rhs);
  memset(&v15, 0, sizeof(v15));
  rhs = *(a1 + 104);
  lhs = *(a1 + 128);
  CMTimeAdd(&v15, &rhs, &lhs);
  v14 = 0;
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  if (*(a1 + 80) && !*(a1 + 82) && (v4 = *(a1 + 40)) != 0)
  {
    v5 = UpTimeNanoseconds;
    v6 = kFFPRunIntervals[*(a1 + 88)];
    v13 = v16;
    type = v15;
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 80);
    if (!v7)
    {
      v10 = 4294954514;
      goto LABEL_13;
    }

    v8 = v6;
    rhs = v13;
    lhs = type;
    v9 = v7(v4, &rhs, v5 + 10000000, &lhs, 1, &v14, v8);
    v10 = v9;
    if (v9 != -12648)
    {
      if (!v9)
      {
        *(a1 + 104) = v15;
        *(a1 + 83) = 0;
        ++*(a1 + 96);
        return v10;
      }

LABEL_13:
      ffp_Halt(a1, v10);
    }
  }

  else
  {
    if (dword_1EAF17BF8)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    return 0;
  }

  return v10;
}

uint64_t ffp_DeferredNoteMandatoryActivityLevelChange()
{
  FigRetainProxyLockMutex();
  if (!FigRetainProxyIsInvalidated())
  {
    Owner = FigRetainProxyGetOwner();
    v1 = FigHTTPRequestPerformingMandatoryActivity();
    if (v1 != *(Owner + 82))
    {
      v2 = v1;
      *(Owner + 82) = v1;
      if (dword_1EAF17BF8)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v2 = *(Owner + 82);
      }

      if (!v2 && *(Owner + 81))
      {
        ffp_TakeNextStep(Owner);
      }
    }
  }

  FigRetainProxyUnlockMutex();
  return FigRetainProxyRelease();
}

CFStringRef FigTTMLCGColorCopyAsTTMLColorSyntax(CGColor *a1)
{
  ColorSpace = CGColorGetColorSpace(a1);
  if (CGColorSpaceGetModel(ColorSpace) != kCGColorSpaceModelRGB)
  {
    FigTTMLCGColorCopyAsTTMLColorSyntax_cold_1();
    return 0;
  }

  if (CGColorGetNumberOfComponents(a1) != 4)
  {
    FigTTMLCGColorCopyAsTTMLColorSyntax_cold_2();
    return 0;
  }

  Components = CGColorGetComponents(a1);
  *v4.i64 = *Components;
  v4.f32[0] = *Components;
  v5 = Components[1];
  v6 = Components[2];
  v7 = Components[3];

  return FigTTMLCopyRGBAColorAsColorSyntax(v4, v5, v6, v7);
}

CFStringRef FigTTMLCMTimeCopyAsClockTimeSyntax(CMTime *a1, int32_t a2, CMTime *a3)
{
  memset(&v24, 0, sizeof(v24));
  time = *a3;
  CMTimeMultiply(&v24, &time, a2);
  v22 = *a1;
  CMTimeMultiplyByRatio(&time, &v22, v24.value, v24.timescale);
  v5 = 0;
  Seconds = CMTimeGetSeconds(&time);
  v7 = a2;
  v8 = 60 * a2;
  v9 = 1;
  do
  {
    v10 = v9;
    v11 = (v5 + Seconds) / v8;
    if (FigCFEqual())
    {
      v5 = 2 * (v11 / -10 + (v5 + Seconds) / v8);
    }

    else if (FigCFEqual())
    {
      v5 = 4 * (v11 / -20 + ((v11 + (v11 >> 63)) >> 1));
    }

    v9 = 0;
  }

  while ((v10 & 1) != 0);
  v12 = 3600 * a2;
  v13 = (v5 + Seconds) / v12;
  v14 = v5 + Seconds - v13 * v12;
  v15 = v14 / v8;
  v16 = v14 - (v14 / v8) * v8;
  v17 = v16 / v7;
  v18 = v16 % v7;
  v19 = FigCFEqual();
  v20 = *MEMORY[0x1E695E480];
  if (v19)
  {
    return CFStringCreateWithFormat(v20, 0, @"%02d:%02d:%02d:%02d", v13, v15, v17, v18);
  }

  else
  {
    return CFStringCreateWithFormat(v20, 0, @"%02d:%02d:%02d;%02d", v13, v15, v17, v18);
  }
}

__CFString *FigTTMLCMTimeCopyAsOffsetTimeSyntax(CMTime *a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  time = *a1;
  Seconds = CMTimeGetSeconds(&time);
  CFStringAppendFormat(Mutable, 0, @"%lld", Seconds);
  v4 = vabdd_f64(Seconds, Seconds) * 100.0 + 0.5;
  if (v4)
  {
    CFStringAppendFormat(Mutable, 0, @".%02u", v4);
  }

  CFStringAppend(Mutable, @"s");
  return Mutable;
}

uint64_t FigTTMLDocumentWriterMapPropertyToAttribute_Identifier(const void *a1, __CFDictionary *a2)
{
  if (a1 && (v4 = CFGetTypeID(a1), v4 == CFStringGetTypeID()))
  {
    CFDictionarySetValue(a2, @"http://www.w3.org/XML/1998/namespace id", a1);
    return 0;
  }

  else
  {
    FigTTMLDocumentWriterMapPropertyToAttribute_Identifier_cold_1(&v6);
    return v6;
  }
}

uint64_t FigTTMLDocumentWriterMapPropertyToAttribute_Position(const void *a1)
{
  if (a1 && (v1 = CFGetTypeID(a1), v1 == CFDictionaryGetTypeID()))
  {
    FigGeometryPointMakeFromDictionary();
    FigTTMLDocumentWriterMapPropertyToAttribute_Position_cold_1(&v3);
  }

  else
  {
    FigTTMLDocumentWriterMapPropertyToAttribute_Position_cold_2(&v3);
  }

  return v3;
}

void figTTMLStringifyFigGeometryDimensionAndAppend(CFMutableStringRef theString, uint64_t a2, int a3)
{
  if (vabdd_f64(*&a2, *&a2) <= 0.001)
  {
    CFStringAppendFormat(theString, 0, @"%lld", *&a2);
  }

  else
  {
    CFStringAppendFormat(theString, 0, @"%f", a2);
  }

  if (a3 > 1701650463)
  {
    if (a3 == 1701650464)
    {
      v5 = @"em";
    }

    else
    {
      if (a3 != 1886920736)
      {
        return;
      }

      v5 = @"px";
    }
  }

  else if (a3 == 622862368)
  {
    v5 = @"%";
  }

  else
  {
    if (a3 != 1667591276)
    {
      return;
    }

    v5 = @"c";
  }

  CFStringAppend(theString, v5);
}

uint64_t FigTTMLDocumentWriterMapPropertyToAttribute_ClipOverflow(const void *a1, __CFDictionary *a2)
{
  if (a1 && (v3 = CFGetTypeID(a1), v3 == CFBooleanGetTypeID()))
  {
    if (FigCFEqual())
    {
      v4 = kFigTTML_AttributeValue_tts_overflow_hidden;
    }

    else
    {
      v4 = kFigTTML_AttributeValue_tts_overflow_visible;
    }

    CFDictionarySetValue(a2, @"http://www.w3.org/ns/ttml#styling overflow", *v4);
    return 0;
  }

  else
  {
    FigTTMLDocumentWriterMapPropertyToAttribute_ClipOverflow_cold_1(&v6);
    return v6;
  }
}

uint64_t FigTTMLDocumentWriterMapPropertyToAttribute_ShowBackground(const void *a1, __CFDictionary *a2)
{
  if (!a1 || (v3 = CFGetTypeID(a1), v3 != CFStringGetTypeID()))
  {
    FigTTMLDocumentWriterMapPropertyToAttribute_ShowBackground_cold_1(&v6);
    return v6;
  }

  if (FigCFEqual())
  {
    v4 = kFigTTML_AttributeValue_tts_showBackground_whenActive;
LABEL_7:
    CFDictionarySetValue(a2, @"http://www.w3.org/ns/ttml#styling showBackground", *v4);
    return 0;
  }

  if (FigCFEqual())
  {
    v4 = kFigTTML_AttributeValue_tts_showBackground_always;
    goto LABEL_7;
  }

  return FigSignalErrorAtGM();
}

uint64_t FigTTMLDocumentWriterMapPropertyToAttribute_Opacity(const __CFNumber *a1, __CFDictionary *a2)
{
  if (a1 && (v4 = CFGetTypeID(a1), v4 == CFNumberGetTypeID()))
  {
    valuePtr = 0;
    CFNumberGetValue(a1, kCFNumberFloat64Type, &valuePtr);
    v5 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%3.1f", valuePtr);
    CFDictionarySetValue(a2, @"http://www.w3.org/ns/ttml#styling opacity", v5);
    if (v5)
    {
      CFRelease(v5);
    }

    return 0;
  }

  else
  {
    FigTTMLDocumentWriterMapPropertyToAttribute_Opacity_cold_1(&v8);
    return v8;
  }
}

uint64_t FigTTMLDocumentWriterMapPropertyToAttribute_ForcedDisplay(const void *a1, __CFDictionary *a2)
{
  if (a1 && (v3 = CFGetTypeID(a1), v3 == CFBooleanGetTypeID()))
  {
    if (FigCFEqual())
    {
      v4 = @"true";
    }

    else
    {
      v4 = @"false";
    }

    CFDictionarySetValue(a2, @"http://www.w3.org/ns/ttml/profile/imsc1#styling forcedDisplay", v4);
    return 0;
  }

  else
  {
    FigTTMLDocumentWriterMapPropertyToAttribute_ForcedDisplay_cold_1(&v6);
    return v6;
  }
}

uint64_t FigTTMLDocumentWriterMapPropertyToAttribute_BackgroundColor(CGColor *a1, __CFDictionary *a2)
{
  if (a1 && (v4 = CFGetTypeID(a1), v4 == CGColorGetTypeID()))
  {
    v5 = FigTTMLCGColorCopyAsTTMLColorSyntax(a1);
    CFDictionarySetValue(a2, @"http://www.w3.org/ns/ttml#styling backgroundColor", v5);
    if (v5)
    {
      CFRelease(v5);
    }

    return 0;
  }

  else
  {
    FigTTMLDocumentWriterMapPropertyToAttribute_BackgroundColor_cold_1(&v7);
    return v7;
  }
}

uint64_t FigTTMLDocumentWriterMapPropertyToAttribute_WritingMode(const void *a1, __CFDictionary *a2)
{
  if (!a1 || (v3 = CFGetTypeID(a1), v3 != CFStringGetTypeID()))
  {
    FigMutableCompositionClientServer_CreateUnflattenedFormatDescriptionReplacementTable_cold_2(&v6);
    return v6;
  }

  if (FigCFEqual())
  {
    v4 = kFigTTML_AttributeValue_tts_writingMode_LeftToRightAndTopToBottom;
LABEL_11:
    CFDictionarySetValue(a2, @"http://www.w3.org/ns/ttml#styling writingMode", *v4);
    return 0;
  }

  if (FigCFEqual())
  {
    v4 = kFigTTML_AttributeValue_tts_writingMode_RightToLeftAndTopToBottom;
    goto LABEL_11;
  }

  if (FigCFEqual())
  {
    v4 = kFigTTML_AttributeValue_tts_writingMode_TopToBottomAndRightToLeft;
    goto LABEL_11;
  }

  if (FigCFEqual())
  {
    v4 = kFigTTML_AttributeValue_tts_writingMode_TopToBottomAndLeftToRight;
    goto LABEL_11;
  }

  return FigSignalErrorAtGM();
}

uint64_t FigTTMLDocumentWriterMapPropertyToAttribute_DisplayAlign(const void *a1, __CFDictionary *a2)
{
  if (!a1 || (v3 = CFGetTypeID(a1), v3 != CFStringGetTypeID()))
  {
    FigTTMLDocumentWriterMapPropertyToAttribute_DisplayAlign_cold_1(&v6);
    return v6;
  }

  if (FigCFEqual())
  {
    v4 = kFigTTML_AttributeValue_tts_displayAlign_before;
LABEL_9:
    CFDictionarySetValue(a2, @"http://www.w3.org/ns/ttml#styling displayAlign", *v4);
    return 0;
  }

  if (FigCFEqual())
  {
    v4 = kFigTTML_AttributeValue_tts_displayAlign_center;
    goto LABEL_9;
  }

  if (FigCFEqual())
  {
    v4 = kFigTTML_AttributeValue_tts_displayAlign_after;
    goto LABEL_9;
  }

  return FigSignalErrorAtGM();
}

uint64_t FigTTMLDocumentWriterMapPropertyToAttribute_Hidden(const void *a1, __CFDictionary *a2)
{
  if (a1 && (v3 = CFGetTypeID(a1), v3 == CFBooleanGetTypeID()))
  {
    if (FigCFEqual())
    {
      v4 = kFigTTML_AttributeValue_tts_display_none;
    }

    else
    {
      v4 = kFigTTML_AttributeValue_tts_display_auto;
    }

    CFDictionarySetValue(a2, @"http://www.w3.org/ns/ttml#styling display", *v4);
    return 0;
  }

  else
  {
    FigTTMLDocumentWriterMapPropertyToAttribute_Hidden_cold_1(&v6);
    return v6;
  }
}

uint64_t FigTTMLDocumentWriterMapPropertyToAttribute_Invisible(const void *a1, __CFDictionary *a2)
{
  if (a1 && (v3 = CFGetTypeID(a1), v3 == CFBooleanGetTypeID()))
  {
    if (FigCFEqual())
    {
      v4 = kFigTTML_AttributeValue_tts_visibility_hidden;
    }

    else
    {
      v4 = kFigTTML_AttributeValue_tts_visibility_visible;
    }

    CFDictionarySetValue(a2, @"http://www.w3.org/ns/ttml#styling visibility", *v4);
    return 0;
  }

  else
  {
    FigTTMLDocumentWriterMapPropertyToAttribute_Invisible_cold_1(&v6);
    return v6;
  }
}

uint64_t FigTTMLDocumentWriterMapPropertyToAttribute_Padding(const void *a1, __CFDictionary *a2)
{
  if (!a1 || (v4 = CFGetTypeID(a1), v4 != CFDictionaryGetTypeID()))
  {
    FigTTMLDocumentWriterMapPropertyToAttribute_Padding_cold_5(&v20);
    return v20;
  }

  CFDictionaryGetValue(a1, *MEMORY[0x1E69612B0]);
  v5 = FigGeometryDimensionMakeFromDictionary();
  v7 = v6;
  CFDictionaryGetValue(a1, *MEMORY[0x1E69612B8]);
  v8 = FigGeometryDimensionMakeFromDictionary();
  v10 = v9;
  CFDictionaryGetValue(a1, *MEMORY[0x1E69612A8]);
  v11 = FigGeometryDimensionMakeFromDictionary();
  v13 = v12;
  CFDictionaryGetValue(a1, *MEMORY[0x1E69612C0]);
  v14 = FigGeometryDimensionMakeFromDictionary();
  if ((v7 & 0x100000000) == 0)
  {
    FigTTMLDocumentWriterMapPropertyToAttribute_Padding_cold_4(&v20);
    return v20;
  }

  if ((v10 & 0x100000000) == 0)
  {
    FigTTMLDocumentWriterMapPropertyToAttribute_Padding_cold_3(&v20);
    return v20;
  }

  if ((v13 & 0x100000000) == 0)
  {
    FigTTMLDocumentWriterMapPropertyToAttribute_Padding_cold_2(&v20);
    return v20;
  }

  v16 = v15;
  if ((v15 & 0x100000000) == 0)
  {
    FigTTMLDocumentWriterMapPropertyToAttribute_Padding_cold_1(&v20);
    return v20;
  }

  v17 = v14;
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  figTTMLStringifyFigGeometryDimensionAndAppend(Mutable, v5, v7);
  CFStringAppend(Mutable, @" ");
  figTTMLStringifyFigGeometryDimensionAndAppend(Mutable, v8, v10);
  CFStringAppend(Mutable, @" ");
  figTTMLStringifyFigGeometryDimensionAndAppend(Mutable, v11, v13);
  CFStringAppend(Mutable, @" ");
  figTTMLStringifyFigGeometryDimensionAndAppend(Mutable, v17, v16);
  CFDictionarySetValue(a2, @"http://www.w3.org/ns/ttml#styling padding", Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return 0;
}

uint64_t FigTTMLDocumentWriterMapPropertyToAttribute_ZIndex(const __CFNumber *a1, __CFDictionary *a2)
{
  if (a1 && (v4 = CFGetTypeID(a1), v4 == CFNumberGetTypeID()))
  {
    valuePtr = 0;
    CFNumberGetValue(a1, kCFNumberIntType, &valuePtr);
    v5 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%d", valuePtr);
    CFDictionarySetValue(a2, @"http://www.w3.org/ns/ttml#styling zIndex", v5);
    if (v5)
    {
      CFRelease(v5);
    }

    return 0;
  }

  else
  {
    FigTTMLDocumentWriterMapPropertyToAttribute_ZIndex_cold_1(&v8);
    return v8;
  }
}

uint64_t FigTTMLDocumentWriterMapPropertyToAttribute_DisplayAspectRatio(const void *a1, __CFDictionary *a2)
{
  if (a1 && (v3 = CFGetTypeID(a1), v3 == CFDictionaryGetTypeID()))
  {
    v4 = FigGeometryAspectRatioMakeFromDictionary();
    if (FigGeometryAspectRatioIsValid())
    {
      v5 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%d %d", v4, HIDWORD(v4));
      CFDictionarySetValue(a2, @"http://www.w3.org/ns/ttml/profile/imsc1#parameter aspectRatio", v5);
      if (v5)
      {
        CFRelease(v5);
      }

      return 0;
    }

    else
    {
      FigTTMLDocumentWriterMapPropertyToAttribute_DisplayAspectRatio_cold_1(&v7);
      return v7;
    }
  }

  else
  {
    FigTTMLDocumentWriterMapPropertyToAttribute_DisplayAspectRatio_cold_2(&v8);
    return v8;
  }
}

uint64_t FigTTMLDocumentWriterMapPropertyToAttribute_ActiveArea(const void *a1)
{
  if (a1 && (v1 = CFGetTypeID(a1), v1 == CFDictionaryGetTypeID()))
  {
    FigGeometryRectMakeFromDictionary();
    FigTTMLDocumentWriterMapPropertyToAttribute_ActiveArea_cold_5(&v3);
  }

  else
  {
    FigTTMLDocumentWriterMapPropertyToAttribute_ActiveArea_cold_6(&v3);
  }

  return v3;
}

uint64_t FigTTMLDocumentWriterMapPropertyToAttribute_CellResolution(const void *a1)
{
  if (a1 && (v1 = CFGetTypeID(a1), v1 == CFDictionaryGetTypeID()))
  {
    FigGeometrySizeMakeFromDictionary();
    FigTTMLDocumentWriterMapPropertyToAttribute_CellResolution_cold_3(&v3);
  }

  else
  {
    FigTTMLDocumentWriterMapPropertyToAttribute_CellResolution_cold_4(&v3);
  }

  return v3;
}

uint64_t FigTTMLDocumentWriterMapPropertyToAttribute_TextColor(CGColor *a1, __CFDictionary *a2)
{
  if (a1 && (v4 = CFGetTypeID(a1), v4 == CGColorGetTypeID()))
  {
    v5 = FigTTMLCGColorCopyAsTTMLColorSyntax(a1);
    CFDictionarySetValue(a2, @"http://www.w3.org/ns/ttml#styling color", v5);
    if (v5)
    {
      CFRelease(v5);
    }

    return 0;
  }

  else
  {
    FigTTMLDocumentWriterMapPropertyToAttribute_TextColor_cold_1(&v7);
    return v7;
  }
}

uint64_t FigTTMLDocumentWriterMapPropertyToAttribute_FontWeight(const void *a1, __CFDictionary *a2)
{
  if (!a1 || (v4 = CFGetTypeID(a1), v4 != CFStringGetTypeID()))
  {
    FigTTMLDocumentWriterMapPropertyToAttribute_FontWeight_cold_1(&v7);
    return v7;
  }

  if (CFEqual(a1, *MEMORY[0x1E69614B0]))
  {
    v5 = kFigTTML_AttributeValue_tts_fontWeight_normal;
LABEL_7:
    CFDictionarySetValue(a2, @"http://www.w3.org/ns/ttml#styling fontWeight", *v5);
    return 0;
  }

  if (CFEqual(a1, *MEMORY[0x1E69614A8]))
  {
    v5 = kFigTTML_AttributeValue_tts_fontWeight_bold;
    goto LABEL_7;
  }

  return FigSignalErrorAtGM();
}

uint64_t FigTTMLDocumentWriterMapPropertyToAttribute_FontStyle(const void *a1, __CFDictionary *a2)
{
  if (!a1 || (v4 = CFGetTypeID(a1), v4 != CFStringGetTypeID()))
  {
    FigTTMLDocumentWriterMapPropertyToAttribute_FontStyle_cold_1(&v7);
    return v7;
  }

  if (CFEqual(a1, *MEMORY[0x1E6961490]))
  {
    v5 = kFigTTML_AttributeValue_tts_fontStyle_normal;
LABEL_9:
    CFDictionarySetValue(a2, @"http://www.w3.org/ns/ttml#styling fontStyle", *v5);
    return 0;
  }

  if (CFEqual(a1, *MEMORY[0x1E6961488]))
  {
    v5 = kFigTTML_AttributeValue_tts_fontStyle_italic;
    goto LABEL_9;
  }

  if (CFEqual(a1, *MEMORY[0x1E6961498]))
  {
    v5 = kFigTTML_AttributeValue_tts_fontStyle_oblique;
    goto LABEL_9;
  }

  return FigSignalErrorAtGM();
}

uint64_t FigTTMLDocumentWriterMapPropertyToAttribute_Decoration(const __CFNumber *a1, __CFDictionary *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  valuePtr = 0;
  if (a1 && (v4 = CFGetTypeID(a1), v4 == CFNumberGetTypeID()))
  {
    CFNumberGetValue(a1, kCFNumberSInt32Type, &valuePtr);
    v5 = valuePtr;
    Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
    if (Mutable)
    {
      v7 = Mutable;
      v8 = 0;
      v9 = 1;
      v12[0] = 1;
      v13 = @"underline";
      v14 = 2;
      v15 = @"lineThrough";
      v16 = 4;
      v17 = @"overline";
      do
      {
        if ((v12[v8] & v5) != 0)
        {
          if (!v9)
          {
            CFStringAppend(v7, @" ");
          }

          CFStringAppend(v7, *&v12[v8 + 2]);
          v9 = 0;
        }

        v8 += 4;
      }

      while (v8 != 12);
      if (!CFStringGetLength(v7))
      {
        CFStringAppend(v7, @"none");
      }

      CFDictionarySetValue(a2, @"http://www.w3.org/ns/ttml#styling textDecoration", v7);
      CFRelease(v7);
    }

    else
    {
      FigTTMLDocumentWriterMapPropertyToAttribute_Decoration_cold_1(v12, a2);
    }

    return 0;
  }

  else
  {
    FigTTMLDocumentWriterMapPropertyToAttribute_Decoration_cold_2(v12);
    return v12[0];
  }
}

uint64_t FigTTMLDocumentWriterMapPropertyToAttribute_TextAlign(const void *a1, __CFDictionary *a2)
{
  if (!a1 || (v3 = CFGetTypeID(a1), v3 != CFStringGetTypeID()))
  {
    FigTTMLDocumentWriterMapPropertyToAttribute_TextAlign_cold_1(&v6);
    return v6;
  }

  if (FigCFEqual())
  {
    v4 = kFigTTML_AttributeValue_tts_textAlign_start;
LABEL_13:
    CFDictionarySetValue(a2, @"http://www.w3.org/ns/ttml#styling textAlign", *v4);
    return 0;
  }

  if (FigCFEqual())
  {
    v4 = kFigTTML_AttributeValue_tts_textAlign_end;
    goto LABEL_13;
  }

  if (FigCFEqual())
  {
    v4 = kFigTTML_AttributeValue_tts_textAlign_center;
    goto LABEL_13;
  }

  if (FigCFEqual())
  {
    v4 = kFigTTML_AttributeValue_tts_textAlign_left;
    goto LABEL_13;
  }

  if (FigCFEqual())
  {
    v4 = kFigTTML_AttributeValue_tts_textAlign_right;
    goto LABEL_13;
  }

  return FigSignalErrorAtGM();
}

uint64_t FigTTMLDocumentWriterMapPropertyToAttribute_TextCombine(const void *a1, __CFDictionary *a2)
{
  if (!a1 || (v4 = CFGetTypeID(a1), v4 != CFStringGetTypeID()))
  {
    FigTTMLDocumentWriterMapPropertyToAttribute_TextCombine_cold_1(&v7);
    return v7;
  }

  if (CFEqual(a1, *MEMORY[0x1E6961508]))
  {
    v5 = kFigTTML_AttributeValue_tts_textCombine_none;
LABEL_7:
    CFDictionarySetValue(a2, @"http://namespace.itunes.apple.com/itt/ttml-extension#vertical combine", *v5);
    return 0;
  }

  if (CFEqual(a1, *MEMORY[0x1E69614F8]))
  {
    v5 = kFigTTML_AttributeValue_tts_textCombine_all;
    goto LABEL_7;
  }

  return FigSignalErrorAtGM();
}

uint64_t FigTTMLDocumentWriterMapPropertyToAttribute_LinePadding(const void *a1, __CFDictionary *a2)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  if (a1 && (v5 = CFGetTypeID(a1), v5 == CFDictionaryGetTypeID()))
  {
    v6 = FigGeometryDimensionMakeFromDictionary();
    if ((v7 & 0x100000000) != 0)
    {
      figTTMLStringifyFigGeometryDimensionAndAppend(Mutable, v6, v7);
      CFDictionarySetValue(a2, @"urn:ebu:tt:style linePadding", Mutable);
      v8 = 0;
    }

    else
    {
      FigTTMLDocumentWriterMapPropertyToAttribute_LinePadding_cold_1(&v10);
      v8 = v10;
    }
  }

  else
  {
    FigTTMLDocumentWriterMapPropertyToAttribute_LinePadding_cold_2(&v11);
    v8 = v11;
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v8;
}

uint64_t FigTTMLDocumentWriterMapPropertyToAttribute_LineHeight(const void *a1, __CFDictionary *a2)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  if (a1 && (v5 = CFGetTypeID(a1), v5 == CFDictionaryGetTypeID()))
  {
    v6 = FigGeometryDimensionMakeFromDictionary();
    if ((v7 & 0x100000000) != 0)
    {
      figTTMLStringifyFigGeometryDimensionAndAppend(Mutable, v6, v7);
      CFDictionarySetValue(a2, @"http://www.w3.org/ns/ttml#styling lineHeight", Mutable);
      v8 = 0;
    }

    else
    {
      FigTTMLDocumentWriterMapPropertyToAttribute_LineHeight_cold_1(&v10);
      v8 = v10;
    }
  }

  else
  {
    FigTTMLDocumentWriterMapPropertyToAttribute_LineHeight_cold_2(&v11);
    v8 = v11;
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v8;
}

uint64_t FigTTMLDocumentWriterMapPropertyToAttribute_MultiRowAlign(const void *a1, __CFDictionary *a2)
{
  if (!a1 || (v3 = CFGetTypeID(a1), v3 != CFStringGetTypeID()))
  {
    FigTTMLDocumentWriterMapPropertyToAttribute_MultiRowAlign_cold_1(&v6);
    return v6;
  }

  if (FigCFEqual())
  {
    v4 = kFigTTML_AttributeValue_ebutts_multiRowAlign_start;
LABEL_11:
    CFDictionarySetValue(a2, @"urn:ebu:tt:style multiRowAlign", *v4);
    return 0;
  }

  if (FigCFEqual())
  {
    v4 = kFigTTML_AttributeValue_ebutts_multiRowAlign_center;
    goto LABEL_11;
  }

  if (FigCFEqual())
  {
    v4 = kFigTTML_AttributeValue_ebutts_multiRowAlign_end;
    goto LABEL_11;
  }

  if (FigCFEqual())
  {
    v4 = kFigTTML_AttributeValue_ebutts_multiRowAlign_auto;
    goto LABEL_11;
  }

  return FigSignalErrorAtGM();
}

uint64_t FigTTMLDocumentWriterMapPropertyToAttribute_TextOutline(const void *a1, __CFDictionary *a2)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  if (!a1 || (v5 = CFGetTypeID(a1), v5 != FigCaptionTextOutlineGetTypeID()))
  {
    FigTTMLDocumentWriterMapPropertyToAttribute_TextOutline_cold_1(&v13);
    v11 = v13;
    if (!Mutable)
    {
      return v11;
    }

    goto LABEL_11;
  }

  Thickness = FigCaptionTextOutlineGetThickness();
  v8 = v7;
  if (FigGeometryDimensionEqualToDimension())
  {
    CFStringAppend(Mutable, @"none");
    CFDictionarySetValue(a2, @"http://www.w3.org/ns/ttml#styling textOutline", Mutable);
  }

  else
  {
    Color = FigCaptionTextOutlineGetColor();
    if (Color)
    {
      v10 = FigTTMLCGColorCopyAsTTMLColorSyntax(Color);
      CFStringAppend(Mutable, v10);
      CFStringAppend(Mutable, @" ");
    }

    else
    {
      v10 = 0;
    }

    figTTMLStringifyFigGeometryDimensionAndAppend(Mutable, Thickness, v8);
    CFDictionarySetValue(a2, @"http://www.w3.org/ns/ttml#styling textOutline", Mutable);
    if (v10)
    {
      CFRelease(v10);
    }
  }

  v11 = 0;
  if (Mutable)
  {
LABEL_11:
    CFRelease(Mutable);
  }

  return v11;
}

uint64_t FigTTMLDocumentWriterMapPropertyToAttribute_PreventLineWrapping(const void *a1, __CFDictionary *a2)
{
  if (a1 && (v3 = CFGetTypeID(a1), v3 == CFBooleanGetTypeID()))
  {
    if (FigCFEqual())
    {
      v4 = kFigTTML_AttributeValue_tts_wrapOption_noWrap;
    }

    else
    {
      v4 = kFigTTML_AttributeValue_tts_wrapOption_wrap;
    }

    CFDictionarySetValue(a2, @"http://www.w3.org/ns/ttml#styling wrapOption", *v4);
    return 0;
  }

  else
  {
    FigTTMLDocumentWriterMapPropertyToAttribute_PreventLineWrapping_cold_1(&v6);
    return v6;
  }
}

uint64_t FigTTMLDocumentWriterMapPropertyToAttribute_FontFamily(const void *a1, __CFDictionary *a2)
{
  if (a1 && (v3 = CFGetTypeID(a1), v3 == FigCaptionFontFamilyNameListGetTypeID()))
  {
    Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
    Count = FigCaptionFontFamilyNameListGetCount();
    if (!Count)
    {
LABEL_10:
      CFDictionarySetValue(a2, @"http://www.w3.org/ns/ttml#styling fontFamily", Mutable);
      v10 = 0;
      goto LABEL_11;
    }

    v6 = Count;
    v7 = 0;
    while (1)
    {
      v8 = FigCaptionFontFamilyNameListCopyFamilyKindAndNameAtIndex();
      if (v8)
      {
        v10 = v8;
        goto LABEL_11;
      }

      if (v7)
      {
        CFStringAppend(Mutable, @",");
      }

      MEMORY[0x19A8D3660](&figTTMLDocumentWriter_getTTMLFontFamilyName_once, initMapFromFigCaptionFontFamilyToTTMLFontFamily);
      Value = CFDictionaryGetValue(sMapFromFigCaptionFontFamilyToTTMLFontFamily, 0);
      if (!Value)
      {
        break;
      }

      CFStringAppend(Mutable, Value);
      if (v6 == ++v7)
      {
        goto LABEL_10;
      }
    }

    FigTTMLDocumentWriterMapPropertyToAttribute_FontFamily_cold_1(&v12);
  }

  else
  {
    FigTTMLDocumentWriterMapPropertyToAttribute_FontFamily_cold_2(&v12);
    Mutable = 0;
  }

  v10 = v12;
LABEL_11:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v10;
}

uint64_t FigTTMLDocumentWriterMapPropertyToAttribute_FontSize(const void *a1, __CFDictionary *a2)
{
  if (a1 && (v3 = CFGetTypeID(a1), v3 == CFDictionaryGetTypeID()))
  {
    FigGeometrySizeMakeFromDictionary();
    Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
    v5 = FigGeometryDimensionEqualToDimension();
    figTTMLStringifyFigGeometryDimensionAndAppend(Mutable, 0, 0);
    if (!v5)
    {
      CFStringAppend(Mutable, @" ");
      figTTMLStringifyFigGeometryDimensionAndAppend(Mutable, 0, 0);
    }

    CFDictionarySetValue(a2, @"http://www.w3.org/ns/ttml#styling fontSize", Mutable);
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    return 0;
  }

  else
  {
    FigTTMLDocumentWriterMapPropertyToAttribute_FontSize_cold_1(&v7);
    return v7;
  }
}

uint64_t FigTTMLDocumentWriterMapPropertyToAttribute_WritingDirection(CFTypeRef cf, __CFDictionary *a2)
{
  if (*MEMORY[0x1E695E738] == cf)
  {
    v8 = kFigTTML_AttributeValue_tts_unicodeBidi_normal;
  }

  else
  {
    if (!cf || (v4 = CFGetTypeID(cf), v4 != CFNumberGetTypeID()))
    {
      FigTTMLDocumentWriterMapPropertyToAttribute_WritingDirection_cold_1(&v10);
      return v10;
    }

    valuePtr = 0;
    CFNumberGetValue(cf, kCFNumberSInt32Type, &valuePtr);
    v5 = valuePtr & 0xE;
    if (valuePtr)
    {
      v6 = kFigTTML_AttributeValue_tts_direction_rtl;
    }

    else
    {
      v6 = kFigTTML_AttributeValue_tts_direction_ltr;
    }

    CFDictionarySetValue(a2, @"http://www.w3.org/ns/ttml#styling direction", *v6);
    if (v5 == 2)
    {
      v8 = kFigTTML_AttributeValue_tts_unicodeBidi_bidiOverride;
    }

    else
    {
      result = 0;
      if (v5)
      {
        return result;
      }

      v8 = kFigTTML_AttributeValue_tts_unicodeBidi_embed;
    }
  }

  CFDictionarySetValue(a2, @"http://www.w3.org/ns/ttml#styling unicodeBidi", *v8);
  return 0;
}

uint64_t FigTTMLDocumentWriterMapPropertyToAttribute_FillLineGap(const void *a1, __CFDictionary *a2)
{
  if (a1 && (v3 = CFGetTypeID(a1), v3 == CFBooleanGetTypeID()))
  {
    if (FigCFEqual())
    {
      v4 = @"true";
    }

    else
    {
      v4 = @"false";
    }

    CFDictionarySetValue(a2, @"http://www.w3.org/ns/ttml/profile/imsc1#styling fillLineGap", v4);
    return 0;
  }

  else
  {
    FigTTMLDocumentWriterMapPropertyToAttribute_FillLineGap_cold_1(&v6);
    return v6;
  }
}

uint64_t FigTTMLDocumentWriterMapWidthAndHeightPropertiesToExtentAttributeAndSet(uint64_t a1, uint64_t a2, CMTime *a3, uint64_t a4)
{
  v4 = a3;
  v45[1] = *MEMORY[0x1E69E9840];
  cf = 0;
  v45[0] = 0;
  p_cf = &cf;
  v38 = 0;
  v39 = 0;
  v42 = 0.0;
  v43 = 0.0;
  time = *a3;
  Seconds = CMTimeGetSeconds(&time);
  v7 = 1;
  do
  {
    v8 = v7;
    InitialValue = FigCaptionDynamicStyleGetInitialValue();
    if (InitialValue)
    {
      InitialValue = CFRetain(InitialValue);
    }

    v7 = 0;
    *p_cf = InitialValue;
    p_cf = v45;
  }

  while ((v8 & 1) != 0);
  Mutable = 0;
  if (fabs(Seconds) == INFINITY)
  {
LABEL_37:
    value_low = 0;
    goto LABEL_38;
  }

  alloc = *MEMORY[0x1E695E480];
  v35 = v4;
  while (1)
  {
    if (!cf || (v11 = CFGetTypeID(cf), v11 != CFDictionaryGetTypeID()))
    {
      v34 = 934;
      goto LABEL_47;
    }

    if (!v45[0])
    {
      break;
    }

    v12 = CFGetTypeID(v45[0]);
    if (v12 != CFDictionaryGetTypeID())
    {
      break;
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }

    Mutable = CFStringCreateMutable(alloc, 0);
    v13 = FigGeometryDimensionMakeFromDictionary();
    figTTMLStringifyFigGeometryDimensionAndAppend(Mutable, v13, v14);
    CFStringAppend(Mutable, @" ");
    v15 = FigGeometryDimensionMakeFromDictionary();
    figTTMLStringifyFigGeometryDimensionAndAppend(Mutable, v15, v16);
    if ((v4->flags & 0x1D) != 1)
    {
      v41 = 0;
LABEL_23:
      FigTTMLDocumentWriterElementSetAttribute(a4, @"http://www.w3.org/ns/ttml#styling extent", Mutable);
      goto LABEL_24;
    }

    time = *v4;
    v17 = Seconds - CMTimeGetSeconds(&time);
    v41 = 0;
    if (v17 == 0.0)
    {
      goto LABEL_23;
    }

    value_low = FigTTMLDocumentWriterElementCreate(alloc, 1, a4, &v41);
    if (!value_low)
    {
      FigTTMLDocumentWriterElementSetAttribute(v41, @"http://www.w3.org/ns/ttml#styling extent", Mutable);
      CMTimeMakeWithSeconds(&time, v17, 1000);
      v19 = CMTimeCopyAsDictionary(&time, alloc);
      FigTTMLDocumentWriterElementSetAttribute(v41, @"begin", v19);
      FigTTMLDocumentWriterElementAddChildElement(a4, v41);
      if (v19)
      {
        CFRelease(v19);
      }
    }

    if (v41)
    {
      CFRelease(v41);
    }

    if (value_low)
    {
      goto LABEL_38;
    }

LABEL_24:
    v20 = v42 <= v43;
    v21 = v43 <= v42;
    v22 = &v39;
    v23 = &v42;
    v24 = 1;
    do
    {
      v25 = v24;
      if (v20)
      {
        v26 = *v22 + 1;
        if (v26 == FigCaptionDynamicStyleGetKeyFrameCount())
        {
          *v23 = INFINITY;
        }

        else
        {
          *v22 = v26;
          FigCaptionDynamicStyleCopyKeyFrameValueAtIndex();
        }
      }

      v24 = 0;
      v22 = &v38;
      v20 = v21;
      v23 = &v43;
    }

    while ((v25 & 1) != 0);
    v27 = v42 <= v43;
    v28 = v43 <= v42;
    v29 = &cf;
    v30 = &v42;
    v31 = 1;
    do
    {
      v32 = v31;
      if (v27)
      {
        if (*v29)
        {
          CFRelease(*v29);
          *v29 = 0;
        }

        FigCaptionDynamicStyleCopyKeyFrameValueAtIndex();
        Seconds = *v30;
      }

      v31 = 0;
      v27 = v28;
      v30 = &v43;
      v29 = v45;
    }

    while ((v32 & 1) != 0);
    v4 = v35;
    if (fabs(Seconds) == INFINITY)
    {
      goto LABEL_37;
    }
  }

  v34 = 935;
LABEL_47:
  figTTMLDocumentWriterFrameRateParameterInserter_CopyProperty_cold_1(v34, &time);
  value_low = LODWORD(time.value);
LABEL_38:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v45[0])
  {
    CFRelease(v45[0]);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return value_low;
}

void initMapFromFigCaptionFontFamilyToTTMLFontFamily()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E6961190], @"default");
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E69611D0], @"serif");
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E69611C8], @"sansSerif");
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E69611A0], @"monospace");
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E69611C0], @"proportionalSerif");
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E69611B8], @"proportionalSansSerif");
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E69611B0], @"monospaceSerif");
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E69611A8], @"monospaceSansSerif");
  sMapFromFigCaptionFontFamilyToTTMLFontFamily = Mutable;
}

uint64_t sbtlstringconformer_tx3g_createConformedAttributedStringForAttributedString(const __CFAttributedString *a1, int a2, __CFAttributedString **a3, double a4, double a5)
{
  Mutable = CFAttributedStringCreateMutable(*MEMORY[0x1E695E480], 0);
  String = CFAttributedStringGetString(a1);
  v30.location = 0;
  v30.length = 0;
  CFAttributedStringReplaceString(Mutable, v30, String);
  if (CFAttributedStringGetLength(a1) >= 1)
  {
    v12 = 0;
    v13 = *MEMORY[0x1E69608A8];
    v14 = *MEMORY[0x1E695E4C0];
    v15 = *MEMORY[0x1E6960990];
    do
    {
      effectiveRange.location = 0;
      effectiveRange.length = 0;
      Attributes = CFAttributedStringGetAttributes(a1, v12, &effectiveRange);
      sbtlstringconformer_addColorAttributesToStringBasedOnContentAndMAXSettings(Mutable, Attributes, effectiveRange.location, effectiveRange.length, a2);
      Value = CFDictionaryGetValue(Attributes, v13);
      if (Value)
      {
        v18 = 0;
      }

      else
      {
        v18 = a2 == 0;
      }

      if (v18)
      {
        v19 = v14;
      }

      else
      {
        v19 = Value;
      }

      if (v19)
      {
        CFAttributedStringSetAttribute(Mutable, effectiveRange, v13, v19);
      }

      v20 = CFDictionaryGetValue(Attributes, v15);
      if (v20)
      {
        v21 = 0;
      }

      else
      {
        v21 = a2 == 0;
      }

      if (v21)
      {
        v22 = v14;
      }

      else
      {
        v22 = v20;
      }

      if (v22)
      {
        CFAttributedStringSetAttribute(Mutable, effectiveRange, v15, v22);
      }

      sbtlstringconformer_addCharacterEdgeStyleAttributeToStringBasedOnContentAndMAXSettings(Mutable, Attributes, effectiveRange.location, effectiveRange.length, a2);
      FigCFDictionaryGetInt64IfPresent();
      if (!a2)
      {
        sbtlstringconformer_addPositioningAttributesToString(a4, a5);
      }

      v12 = effectiveRange.length + effectiveRange.location;
    }

    while (v12 < CFAttributedStringGetLength(a1));
  }

  Length = CFAttributedStringGetLength(a1);
  if (a2)
  {
    goto LABEL_27;
  }

  v24 = Length;
  v31.location = 0;
  v31.length = Length;
  CFAttributedStringSetAttribute(Mutable, v31, *MEMORY[0x1E69607B0], *MEMORY[0x1E6960790]);
  FontFamilyAttributes = sbtlstringconformer_createFontFamilyAttributes(0, 0, 0);
  v32.location = 0;
  v32.length = v24;
  CFAttributedStringSetAttributes(Mutable, v32, FontFamilyAttributes, 0);
  if (FontFamilyAttributes)
  {
    CFRelease(FontFamilyAttributes);
  }

  v26 = FigCFAttributedStringSetDouble();
  if (v26 || (v33.location = 0, v33.length = v24, CFAttributedStringSetAttribute(Mutable, v33, *MEMORY[0x1E69607D0], *MEMORY[0x1E695E4D0]), v26 = FigCFAttributedStringSetDouble(), v26))
  {
    v27 = v26;
    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  else
  {
LABEL_27:
    v27 = 0;
    *a3 = Mutable;
  }

  return v27;
}

uint64_t sbtlstringconformer_wvtt_createConformedAttributedStringForAttributedString(const __CFAttributedString *a1, int a2, __CFAttributedString **a3, double a4, double a5)
{
  v30[9] = *MEMORY[0x1E69E9840];
  Mutable = CFAttributedStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFAttributedStringGetLength(a1);
  String = CFAttributedStringGetString(a1);
  v31.location = 0;
  v31.length = 0;
  CFAttributedStringReplaceString(Mutable, v31, String);
  if (!a2)
  {
    sbtlstringconformer_addPositioningAttributesToString(a4, a5);
  }

  v12 = *MEMORY[0x1E69608A8];
  v30[0] = *MEMORY[0x1E69607D0];
  v30[1] = v12;
  v13 = *MEMORY[0x1E6960928];
  v30[2] = *MEMORY[0x1E6960990];
  v30[3] = v13;
  v14 = *MEMORY[0x1E69607B0];
  v30[4] = *MEMORY[0x1E6960998];
  v30[5] = v14;
  v15 = *MEMORY[0x1E69608E0];
  v30[6] = *MEMORY[0x1E6960978];
  v30[7] = v15;
  v30[8] = *MEMORY[0x1E69609A0];
  if (CFAttributedStringGetLength(a1) >= 1)
  {
    v16 = 0;
    v17 = *MEMORY[0x1E6960858];
    v18 = *MEMORY[0x1E6960880];
    do
    {
      effectiveRange.location = 0;
      effectiveRange.length = 0;
      Attributes = CFAttributedStringGetAttributes(a1, v16, &effectiveRange);
      for (i = 0; i != 9; ++i)
      {
        v21 = v30[i];
        Value = CFDictionaryGetValue(Attributes, v21);
        if (Value)
        {
          CFAttributedStringSetAttribute(Mutable, effectiveRange, v21, Value);
        }
      }

      sbtlstringconformer_addColorAttributesToStringBasedOnContentAndMAXSettings(Mutable, Attributes, effectiveRange.location, effectiveRange.length, a2);
      v23 = CFDictionaryGetValue(Attributes, v17);
      v24 = CFDictionaryGetValue(Attributes, v18);
      FontFamilyAttributes = sbtlstringconformer_createFontFamilyAttributes(v23, v24, a2);
      CFAttributedStringSetAttributes(Mutable, effectiveRange, FontFamilyAttributes, 0);
      if (FontFamilyAttributes)
      {
        CFRelease(FontFamilyAttributes);
      }

      sbtlstringconformer_addCharacterEdgeStyleAttributeToStringBasedOnContentAndMAXSettings(Mutable, Attributes, effectiveRange.location, effectiveRange.length, a2);
      v16 = effectiveRange.length + effectiveRange.location;
    }

    while (v16 < CFAttributedStringGetLength(a1));
  }

  if (!a2 && (v26 = FigCFAttributedStringSetDouble(), v26))
  {
    v27 = v26;
    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  else
  {
    v27 = 0;
    *a3 = Mutable;
  }

  return v27;
}

void sbtlstringconformer_addColorAttributesToStringBasedOnContentAndMAXSettings(__CFAttributedString *a1, const __CFDictionary *a2, CFIndex a3, CFIndex a4, int a5)
{
  WhiteARGBColorArray = FigTextMarkupCreateWhiteARGBColorArray();
  sbtlstringconformer_addColorAttributeToStringUsingResolverFunctionAndDefault(*MEMORY[0x1E6960878], a1, a3, a4, a2, FigStringConformerCreateResolvedForegroundARGBColorArrayUsingMAXColorAndOpacity, WhiteARGBColorArray, a5);
  CFRelease(WhiteARGBColorArray);
  BlackARGBColorArray = FigTextMarkupCreateBlackARGBColorArray();
  sbtlstringconformer_addColorAttributeToStringUsingResolverFunctionAndDefault(*MEMORY[0x1E69607C0], a1, a3, a4, a2, FigStringConformerCreateResolvedWindowARGBColorArrayUsingMAXColorAndOpacity, BlackARGBColorArray, a5);
  CFRelease(BlackARGBColorArray);
  ClearARGBColorArray = FigTextMarkupCreateClearARGBColorArray();
  sbtlstringconformer_addColorAttributeToStringUsingResolverFunctionAndDefault(*MEMORY[0x1E6960810], a1, a3, a4, a2, FigStringConformerCreateResolvedBackgroundARGBColorArrayUsingMAXColorAndOpacity, ClearARGBColorArray, a5);

  CFRelease(ClearARGBColorArray);
}

void sbtlstringconformer_addCharacterEdgeStyleAttributeToStringBasedOnContentAndMAXSettings(__CFAttributedString *a1, CFDictionaryRef theDict, CFIndex a3, CFIndex a4, int a5)
{
  v9 = *MEMORY[0x1E6960818];
  Value = CFDictionaryGetValue(theDict, *MEMORY[0x1E6960818]);
  if (a5)
  {
    goto LABEL_9;
  }

  behavior = kMACaptionAppearanceBehaviorUseContentIfAvailable;
  TextEdgeStyle = MACaptionAppearanceGetTextEdgeStyle(kMACaptionAppearanceDomainUser, &behavior);
  if (behavior == kMACaptionAppearanceBehaviorUseValue)
  {
LABEL_5:
    Value = FigStringConformerEdgeStyleForMediaAccessibilityEdgeStyle(TextEdgeStyle);
    goto LABEL_7;
  }

  if (behavior == kMACaptionAppearanceBehaviorUseContentIfAvailable)
  {
    if (Value)
    {
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  Value = 0;
LABEL_7:
  if (!Value)
  {
    Value = *MEMORY[0x1E69609C8];
  }

LABEL_9:
  if (Value)
  {
    v13.location = a3;
    v13.length = a4;
    CFAttributedStringSetAttribute(a1, v13, v9, Value);
  }
}

__CFDictionary *sbtlstringconformer_createFontFamilyAttributes(__CFString *a1, const void *a2, int a3)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!a3)
  {
    if (a1 || !a2)
    {
      fontStyle = kMACaptionAppearanceFontStyleMonospacedWithSerif;
      v12 = MACaptionAppearanceCopyFontDescriptorForStyle(kMACaptionAppearanceDomainUser, &fontStyle, kMACaptionAppearanceFontStyleDefault);
      if (fontStyle == kMACaptionAppearanceFontStyleDefault || (v10 = 0, fontStyle == kMACaptionAppearanceFontStyleMonospacedWithSerif) && (!a1 || (v10 = CFRetain(a1)) == 0))
      {
        v10 = CTFontDescriptorCopyAttribute(v12, *MEMORY[0x1E6965790]);
      }

      if (!v12)
      {
LABEL_17:
        if (v10)
        {
LABEL_20:
          CFDictionarySetValue(Mutable, *MEMORY[0x1E6960858], v10);
          CFRelease(v10);
          return Mutable;
        }

        goto LABEL_18;
      }

      v11 = v12;
    }

    else
    {
      fontStyle = kMACaptionAppearanceFontStyleDefault;
      if (!FigTextMarkupMapGenericFontFamilyToMACaptionAppearanceFontStyle() || (v8 = MACaptionAppearanceCopyFontDescriptorForStyle(kMACaptionAppearanceDomainUser, 0, fontStyle)) == 0)
      {
LABEL_18:
        v7 = @"Helvetica";
        goto LABEL_19;
      }

      v9 = v8;
      v10 = CTFontDescriptorCopyAttribute(v8, *MEMORY[0x1E6965790]);
      v11 = v9;
    }

    CFRelease(v11);
    goto LABEL_17;
  }

  if (!a1)
  {
    goto LABEL_21;
  }

  v7 = a1;
LABEL_19:
  v10 = CFRetain(v7);
  if (v10)
  {
    goto LABEL_20;
  }

LABEL_21:
  if (a2)
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x1E6960880], a2);
  }

  return Mutable;
}

void sbtlstringconformer_addColorAttributeToStringUsingResolverFunctionAndDefault(const __CFString *key, __CFAttributedString *a2, CFIndex a3, CFIndex a4, CFDictionaryRef theDict, uint64_t (*a6)(const void *, uint64_t), uint64_t a7, int a8)
{
  Value = CFDictionaryGetValue(theDict, key);
  if (a8)
  {
    if (!Value)
    {
      return;
    }

    v16 = CFRetain(Value);
  }

  else
  {
    v16 = a6(Value, a7);
  }

  v17 = v16;
  if (v16)
  {
    v19.location = a3;
    v19.length = a4;
    CFAttributedStringSetAttribute(a2, v19, key, v16);

    CFRelease(v17);
  }
}

uint64_t remoteXPCFigCaptionGroupConverterClient_DeadConnectionCallback()
{
  result = CMBaseObjectGetDerivedStorage();
  *(result + 9) = 1;
  return result;
}

__CFString *remoteXPCFigCaptionGroupConverter_CopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  v5 = CFGetRetainCount(a1);
  if (*(DerivedStorage + 9))
  {
    v6 = " SERVER DIED";
  }

  else
  {
    v6 = "";
  }

  CFStringAppendFormat(Mutable, 0, @"<FigCaptionGroupConverterRemote(XPC) %p retainCount: %ld ObjectID: %016llx%s>", a1, v5, *DerivedStorage, v6);
  return Mutable;
}

uint64_t remoteXPCFigCaptionGroupConverter_GetObjectID(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 8) || *(DerivedStorage + 9))
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  else
  {
    *a2 = *DerivedStorage;
    return 0;
  }
}

uint64_t FigSampleBufferProcessorCreateForTemporalMetadataFilter(uint64_t a1, const void *a2, void *a3)
{
  if (a3)
  {
    FigSampleBufferProcessorGetClassID();
    v5 = CMDerivedObjectCreate();
    if (!v5)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      if (a2)
      {
        v7 = CFRetain(a2);
      }

      else
      {
        v7 = 0;
      }

      v5 = 0;
      *(DerivedStorage + 56) = v7;
      *(DerivedStorage + 80) = 1;
      *a3 = 0;
    }

    return v5;
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }
}

void sbp_tmf_finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
  }

  v1 = *(DerivedStorage + 8);
  if (v1)
  {
    CFRelease(v1);
  }

  v2 = *(DerivedStorage + 40);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(DerivedStorage + 48);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(DerivedStorage + 56);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(DerivedStorage + 64);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(DerivedStorage + 72);
  if (v6)
  {

    CFRelease(v6);
  }
}

__CFString *sbp_tmf_copyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigSampleBufferProcessor_TemporalMetadataFilter %p>", a1);
  return Mutable;
}

uint64_t sbp_tmf_copyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a4)
  {
    if (a2)
    {
      v7 = DerivedStorage;
      if (CFEqual(a2, @"SampleBufferProcessor_TransferMetadataAllowListIdentifiers"))
      {
        v8 = v7[7];
        if (v8)
        {
LABEL_5:
          v9 = CFRetain(v8);
LABEL_9:
          result = 0;
          *a4 = v9;
          return result;
        }

LABEL_8:
        v9 = 0;
        goto LABEL_9;
      }

      if (CFEqual(a2, @"SampleBufferProcessor_TransferMetadataDenyListIdentifiers"))
      {
        v8 = v7[8];
        if (v8)
        {
          goto LABEL_5;
        }

        goto LABEL_8;
      }

      if (CFEqual(a2, @"SampleBufferProcessor_TransferMetadataKeepValidIdentifiers"))
      {
        v8 = v7[9];
        if (v8)
        {
          goto LABEL_5;
        }

        goto LABEL_8;
      }

      return 4294954501;
    }

    else
    {
      sbp_tmf_copyProperty_cold_1(&v11);
      return v11;
    }
  }

  else
  {
    sbp_tmf_copyProperty_cold_2(&v12);
    return v12;
  }
}

uint64_t sbp_tmf_setProperty(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    sbp_tmf_setProperty_cold_1(&v9);
    return v9;
  }

  v6 = DerivedStorage;
  if (!CFEqual(a2, @"SampleBufferProcessor_TransferMetadataAllowListIdentifiers"))
  {
    if (CFEqual(a2, @"SampleBufferProcessor_TransferMetadataDenyListIdentifiers"))
    {
      v7 = v6[8];
      v6[8] = a3;
      if (!a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      if (!CFEqual(a2, @"SampleBufferProcessor_TransferMetadataKeepValidIdentifiers"))
      {
        return 4294954501;
      }

      v7 = v6[9];
      v6[9] = a3;
      if (!a3)
      {
        goto LABEL_5;
      }
    }

    goto LABEL_4;
  }

  v7 = v6[7];
  v6[7] = a3;
  if (a3)
  {
LABEL_4:
    CFRetain(a3);
  }

LABEL_5:
  if (v7)
  {
    CFRelease(v7);
  }

  return 0;
}

uint64_t sbp_tmf_setOutputCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 16) = a2;
  *(DerivedStorage + 24) = a3;
  return 0;
}

uint64_t sbp_tmf_isSubsetOf(const __CFArray *a1, CFArrayRef theArray)
{
  Count = CFArrayGetCount(theArray);
  v5 = CFArrayGetCount(a1);
  if (v5 < 1)
  {
    return 1;
  }

  v6 = v5;
  v7 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, v7);
    v10.location = 0;
    v10.length = Count;
    result = CFArrayContainsValue(theArray, v10, ValueAtIndex);
    if (!result)
    {
      break;
    }

    if (v6 == ++v7)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sbp_tmf_selectKeyByIdentifier(uint64_t a1, uint64_t a2)
{
  FigMetadataKeyGetLocalIDUInt32();
  FigMetadataFormatDescriptionGetIdentifierForLocalID();
  FigMetadataFormatDescriptionGetDataTypeForLocalID();
  if (CFArrayGetCount(*(a2 + 8)) < 2)
  {
    return 1;
  }

  v3 = 0;
  for (i = 1; ; i += 2)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a2 + 8), i - 1);
    v6 = CFArrayGetValueAtIndex(*(a2 + 8), i);
    if ((!ValueAtIndex || FigCFEqual()) && (!v6 || FigCFEqual()))
    {
      break;
    }

    if (++v3 >= CFArrayGetCount(*(a2 + 8)) / 2)
    {
      return 1;
    }
  }

  return 0;
}

CFTypeRef sbp_tmf_CFDictionaryAccessorCreateAndRemoveValue(const void *a1, uint64_t a2)
{
  *cf = 0u;
  *v8 = 0u;
  v6 = 0u;
  LODWORD(v6) = 2;
  if (a1)
  {
    if (a2)
    {
      v4 = *MEMORY[0x1E695E480];
      cf[1] = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
      v8[0] = CFArrayCreateMutable(v4, 0, 0);
      sbp_tmf_cfda_walk(0, a1, a2, 0, 2uLL, &v6);
      if (cf[1])
      {
        CFRelease(cf[1]);
      }

      if (v8[0])
      {
        CFRelease(v8[0]);
      }
    }

    else
    {
      sbp_tmf_CFDictionaryAccessorCreateAndRemoveValue_cold_1();
    }

    result = v8[1];
    if (!v8[1])
    {
      return CFRetain(a1);
    }
  }

  else
  {
    sbp_tmf_CFDictionaryAccessorCreateAndRemoveValue_cold_2();
    return 0;
  }

  return result;
}

uint64_t sbp_tmf_containsLocalID(const void *a1, CFTypeRef cf)
{
  if (!cf || (v4 = CFGetTypeID(cf), v4 != CFArrayGetTypeID()))
  {
    sbp_tmf_containsLocalID_cold_2();
    return 0;
  }

  if (!a1 || (v5 = CFGetTypeID(a1), v5 != CFDictionaryGetTypeID()))
  {
    sbp_tmf_containsLocalID_cold_1();
    return 0;
  }

  Value = CFDictionaryGetValue(a1, *MEMORY[0x1E6960310]);
  v7.length = CFArrayGetCount(cf);
  v7.location = 0;

  return CFArrayContainsValue(cf, v7, Value);
}

void sbp_tmf_cfda_walk(const void *a1, const void *a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  CFArrayAppendValue(*(a6 + 24), a2);
  CFArrayAppendValue(*(a6 + 32), 0);
  if (a4 < a5)
  {
    v13 = (a3 + 24 * a4);
    value = 0;
    if (*v13)
    {
      if (CFDictionaryGetValueIfPresent(a2, *v13, &value))
      {
        sbp_tmf_cfda_walk(*v13, value, a3, a4 + 1, a5, a6);
      }
    }

    else
    {
      Count = CFDictionaryGetCount(a2);
      v15 = malloc_type_calloc(Count, 8uLL, 0xC0040B8AA526DuLL);
      v16 = malloc_type_calloc(Count, 8uLL, 0xC0040B8AA526DuLL);
      v22 = v15;
      v17 = v15;
      v18 = v16;
      CFDictionaryGetKeysAndValues(a2, v17, v16);
      if (Count >= 1)
      {
        v19 = v22;
        v20 = v18;
        do
        {
          v21 = v13[1];
          if (!v21 || v21(*v20, v13[2]))
          {
            sbp_tmf_cfda_walk(*v19, *v20, a3, a4 + 1, a5, a6);
          }

          ++v20;
          ++v19;
          --Count;
        }

        while (Count);
      }

      free(v18);
      free(v22);
    }
  }

  sbp_tmf_cfda_updateAfter(a1, v12, a4, a5, a6);
}

void sbp_tmf_cfda_updateAfter(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  if (a3 == a4)
  {
    v8 = *a5;
    if (*a5 == 2)
    {
      v23 = *(a5 + 4);
      Count = CFArrayGetCount(v23);
      CFArraySetValueAtIndex(v23, Count - 1, 3);
      v25 = *(a5 + 3);
      v13 = CFArrayGetCount(v25) - 1;
      v14 = v25;
      v15 = 0;
    }

    else if (v8 == 1)
    {
      v16 = *(a5 + 3);
      v17 = CFArrayGetCount(v16);
      ValueAtIndex = CFArrayGetValueAtIndex(v16, v17 - 1);
      MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, ValueAtIndex);
      CFDictionarySetValue(MutableCopy, *(a5 + 1), *(a5 + 2));
      v20 = *(a5 + 4);
      v21 = CFArrayGetCount(v20);
      CFArraySetValueAtIndex(v20, v21 - 1, 2);
      v22 = *(a5 + 3);
      v13 = CFArrayGetCount(v22) - 1;
      v14 = v22;
      v15 = MutableCopy;
    }

    else
    {
      if (v8)
      {
        goto LABEL_9;
      }

      v9 = *(a5 + 4);
      v10 = CFArrayGetCount(v9);
      CFArraySetValueAtIndex(v9, v10 - 1, 1);
      v12 = *(a5 + 2);
      v11 = *(a5 + 3);
      v13 = CFArrayGetCount(v11) - 1;
      v14 = v11;
      v15 = v12;
    }

    CFArraySetValueAtIndex(v14, v13, v15);
  }

LABEL_9:
  v26 = sbp_tmf_cfda_stackPop(*(a5 + 3));
  v27 = sbp_tmf_cfda_stackPop(*(a5 + 4));
  v28 = v27;
  if (a3)
  {
    if (!v27)
    {
      return;
    }

    v29 = *(a5 + 3);
    v30 = CFArrayGetCount(v29);
    v31 = CFArrayGetValueAtIndex(v29, v30 - 1);
    v32 = *(a5 + 4);
    v33 = CFArrayGetCount(v32);
    if (!CFArrayGetValueAtIndex(v32, v33 - 1))
    {
      v34 = *(a5 + 3);
      v35 = CFArrayGetCount(v34);
      v36 = CFArrayGetValueAtIndex(v34, v35 - 1);
      v31 = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, v36);
      v37 = *(a5 + 3);
      v38 = CFArrayGetCount(v37);
      CFArraySetValueAtIndex(v37, v38 - 1, v31);
      v39 = *(a5 + 4);
      v40 = CFArrayGetCount(v39);
      CFArraySetValueAtIndex(v39, v40 - 1, 2);
    }

    if (v28 == 3)
    {

      CFDictionaryRemoveValue(v31, a1);
      return;
    }

    CFDictionaryReplaceValue(v31, a1, v26);
  }

  else
  {
    if (v26)
    {
      v41 = CFRetain(v26);
    }

    else
    {
      v41 = 0;
    }

    *(a5 + 5) = v41;
  }

  if (v28 == 2 && v26)
  {

    CFRelease(v26);
  }
}

const void *sbp_tmf_cfda_stackPop(const __CFArray *a1)
{
  Count = CFArrayGetCount(a1);
  ValueAtIndex = CFArrayGetValueAtIndex(a1, Count - 1);
  v4 = CFArrayGetCount(a1);
  CFArrayRemoveValueAtIndex(a1, v4 - 1);
  return ValueAtIndex;
}

const __CFArray *sbp_tmf_isARecordOrArrayCollection()
{
  result = FigMetadataFormatDescriptionGetConformingDataTypesForLocalID();
  if (result)
  {
    v1 = result;
    Count = CFArrayGetCount(result);
    v4.location = 0;
    v4.length = Count;
    v3 = CFArrayContainsValue(v1, v4, *MEMORY[0x1E69628E8]);
    v5.location = 0;
    v5.length = Count;
    return ((v3 | CFArrayContainsValue(v1, v5, *MEMORY[0x1E69628D0])) != 0);
  }

  return result;
}

uint64_t sbp_tmf_getLocalIDs(uint64_t a1, uint64_t a2, __CFArray *a3, char *a4)
{
  cf = 0;
  v17 = 0;
  NumberOfItems = FigBoxedMetadataGetNumberOfItems();
  if (NumberOfItems < 1)
  {
LABEL_13:
    v14 = 0;
    v9 = 1;
    goto LABEL_15;
  }

  v8 = NumberOfItems;
  v9 = 0;
  v10 = 0;
  v11 = *MEMORY[0x1E695E480];
  while (1)
  {
    LocalIDOfItemAtIndex = 0;
    LocalIDOfItemAtIndex = FigBoxedMetadataGetLocalIDOfItemAtIndex();
    if (!FigMetadataFormatDescriptionQuickTimeWellKnownTypeIsRecognized())
    {
LABEL_14:
      v14 = 0;
      goto LABEL_15;
    }

    v12 = CFNumberCreate(v11, kCFNumberSInt32Type, &LocalIDOfItemAtIndex);
    CFArrayAppendValue(a3, v12);
    if (v12)
    {
      CFRelease(v12);
    }

    if (sbp_tmf_isARecordOrArrayCollection())
    {
      break;
    }

LABEL_12:
    if (v8 == ++v10)
    {
      goto LABEL_13;
    }
  }

  LocalIDs = FigBoxedMetadataCopyValueOfItemAtIndexAsCFType();
  if (!LocalIDs)
  {
    LocalIDs = sbp_tmf_getLocalIDs(a1, cf, a3, &v17);
    v9 = v17;
    if (!LocalIDs)
    {
      if (!v17)
      {
        goto LABEL_14;
      }

      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      goto LABEL_12;
    }
  }

  v14 = LocalIDs;
LABEL_15:
  *a4 = v9;
  if (cf)
  {
    CFRelease(cf);
  }

  return v14;
}

uint64_t FigTTMLDocumentWriterRegionTimelineAddRegionSlice(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v32 = 0;
  v33[0] = 0;
  if (!a1)
  {
    FigTTMLDocumentWriterRegionTimelineAddRegionSlice_cold_3(&v31);
    value_low = LODWORD(v31.start.value);
    goto LABEL_47;
  }

  if (!a3)
  {
    FigTTMLDocumentWriterRegionTimelineAddRegionSlice_cold_2(&v31);
    goto LABEL_44;
  }

  if ((*(a2 + 12) & 1) == 0 || (*(a2 + 36) & 1) == 0 || *(a2 + 5) || (*(a2 + 3) & 0x8000000000000000) != 0)
  {
    FigTTMLDocumentWriterRegionTimelineAddRegionSlice_cold_1(&v31);
LABEL_44:
    value_low = LODWORD(v31.start.value);
    goto LABEL_45;
  }

  if ((*(a1 + 28) & 1) == 0 || (*(a1 + 52) & 1) == 0 || *(a1 + 56) || (*(a1 + 40) & 0x8000000000000000) != 0)
  {
    v5 = *a2;
    v6 = a2[2];
    *(a1 + 32) = a2[1];
    *(a1 + 48) = v6;
    *(a1 + 16) = v5;
  }

  else
  {
    v25 = *(a1 + 32);
    *&time.start.value = *(a1 + 16);
    *&time.start.epoch = v25;
    *&time.duration.timescale = *(a1 + 48);
    v26 = a2[1];
    *&otherRange.start.value = *a2;
    *&otherRange.start.epoch = v26;
    *&otherRange.duration.timescale = a2[2];
    CMTimeRangeGetUnion(&v31, &time, &otherRange);
    v27 = *&v31.start.epoch;
    *(a1 + 16) = *&v31.start.value;
    *(a1 + 32) = v27;
    *(a1 + 48) = *&v31.duration.timescale;
  }

  CMBaseObject = FigCaptionRegionGetCMBaseObject();
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v8)
  {
LABEL_41:
    value_low = 4294954514;
    goto LABEL_45;
  }

  v9 = *MEMORY[0x1E695E480];
  Mutable = v8(CMBaseObject, *MEMORY[0x1E6961398], *MEMORY[0x1E695E480], v33);
  if (Mutable)
  {
LABEL_54:
    value_low = Mutable;
  }

  else
  {
    if (v33[0])
    {
      Count = CFArrayGetCount(v33[0]);
      if (Count >= 1)
      {
        v12 = Count;
        v13 = 0;
        v28 = Count;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v33[0], v13);
          if (v32)
          {
            CFRelease(v32);
            v32 = 0;
          }

          v15 = FigCaptionRegionGetCMBaseObject();
          v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (!v16)
          {
            goto LABEL_41;
          }

          Mutable = v16(v15, ValueAtIndex, v9, &v32);
          if (Mutable)
          {
            goto LABEL_54;
          }

          if (v32)
          {
            v17 = CFGetTypeID(v32);
            if (v17 == FigCaptionDynamicStyleGetTypeID())
            {
              if (!CFDictionaryGetValue(*(a1 + 64), ValueAtIndex))
              {
                FigCaptionDynamicStyleGetInitialValue();
                Mutable = FigCaptionDynamicStyleCreateMutable();
                if (Mutable)
                {
                  goto LABEL_54;
                }

                CFDictionarySetValue(*(a1 + 64), ValueAtIndex, 0);
              }

              v18 = a2[1];
              *&v31.start.value = *a2;
              *&v31.start.epoch = v18;
              *&v31.duration.timescale = a2[2];
              *&time.start.value = *&v31.start.value;
              time.start.epoch = *(a2 + 2);
              CMTimeGetSeconds(&time.start);
              time.start = v31.duration;
              CMTimeGetSeconds(&time.start);
              time.start.value = 0;
              KeyFrameCount = FigCaptionDynamicStyleGetKeyFrameCount();
              if (KeyFrameCount < 1)
              {
LABEL_34:
                value_low = 0;
              }

              else
              {
                v20 = KeyFrameCount;
                v21 = 0;
                while (1)
                {
                  otherRange.start.value = 0;
                  if (time.start.value)
                  {
                    CFRelease(time.start.value);
                    time.start.value = 0;
                  }

                  v22 = FigCaptionDynamicStyleCopyKeyFrameValueAtIndex();
                  if (v22)
                  {
                    break;
                  }

                  v22 = FigCaptionDynamicStyleAddKeyFrameValue();
                  if (v22)
                  {
                    break;
                  }

                  if (v20 == ++v21)
                  {
                    goto LABEL_34;
                  }
                }

                value_low = v22;
              }

              v12 = v28;
              if (time.start.value)
              {
                CFRelease(time.start.value);
              }

              if (value_low)
              {
                goto LABEL_45;
              }
            }

            else if (v32)
            {
              CFDictionarySetValue(*(a1 + 64), ValueAtIndex, v32);
            }
          }
        }

        while (++v13 != v12);
      }
    }

    value_low = 0;
  }

LABEL_45:
  if (v32)
  {
    CFRelease(v32);
  }

LABEL_47:
  if (v33[0])
  {
    CFRelease(v33[0]);
  }

  return value_low;
}

uint64_t FigTTMLDocumentWriterRegionTimelineIsAnimated(uint64_t a1)
{
  context = 0;
  if (a1)
  {
    CFDictionaryApplyFunction(*(a1 + 64), propertyIsAnimated, &context);
    return context;
  }

  else
  {
    FigTTMLDocumentWriterRegionTimelineIsAnimated_cold_1();
    return 0;
  }
}

void propertyIsAnimated(int a1, CFTypeRef cf, _BYTE *a3)
{
  if (cf)
  {
    v4 = CFGetTypeID(cf);
    if (v4 == FigCaptionDynamicStyleGetTypeID() && FigCaptionDynamicStyleGetKeyFrameCount() >= 2)
    {
      *a3 = 1;
    }
  }
}

uint64_t FigTTMLDocumentWriterRegionTimelineCopyProperty(uint64_t a1, CFTypeRef cf, void *a3)
{
  if (!a1)
  {
    FigTTMLDocumentWriterRegionTimelineCopyProperty_cold_2(&v11);
    return v11;
  }

  if (!cf || (v6 = CFGetTypeID(cf), v6 != CFStringGetTypeID()))
  {
    FigTTMLDocumentWriterMapPropertyToAttribute_Position_cold_1(&v10);
    return v10;
  }

  Value = CFDictionaryGetValue(*(a1 + 64), cf);
  v8 = Value;
  if (!Value)
  {
    if (!a3)
    {
      return 0;
    }

LABEL_8:
    result = 0;
    *a3 = v8;
    return result;
  }

  CFRetain(Value);
  if (a3)
  {
    goto LABEL_8;
  }

  CFRelease(v8);
  return 0;
}

_OWORD *FigTTMLDocumentWriterRegionTimelineGetTimeRange@<X0>(_OWORD *result@<X0>, _OWORD *a2@<X8>)
{
  v2 = MEMORY[0x1E6960C98];
  v3 = *(MEMORY[0x1E6960C98] + 16);
  *a2 = *MEMORY[0x1E6960C98];
  a2[1] = v3;
  a2[2] = *(v2 + 32);
  if (!result)
  {
    return FigTTMLDocumentWriterRegionTimelineGetTimeRange_cold_1();
  }

  v4 = result[2];
  *a2 = result[1];
  a2[1] = v4;
  a2[2] = result[3];
  return result;
}

uint64_t FigTTMLDocumentWriterRegionTimelineWriteAttributesAndSetElements(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    FigTTMLDocumentWriterRegionTimelineWriteAttributesAndSetElements_cold_3(&v6);
    return v6;
  }

  if (!a2)
  {
    fcd_ttml_createStylePropertyFromTTMLStyle_fontStyle_cold_1(&v6);
    return v6;
  }

  if (!a3)
  {
    FigTTMLDocumentWriterRegionTimelineWriteAttributesAndSetElements_cold_1(&v6);
    return v6;
  }

  context[0] = a1;
  context[1] = a2;
  context[2] = a3;
  v5 = 0;
  CFDictionaryApplyFunction(*(a1 + 64), writeEachPropertyToAttributeAndSetElements, context);
  return v5;
}

void writeEachPropertyToAttributeAndSetElements(void *key, const void *a2, uint64_t a3)
{
  v26 = 0;
  cf = 0;
  Value = CFDictionaryGetValue(*(a3 + 16), key);
  Mutable = 0;
  if (!a2)
  {
    v8 = 0;
    goto LABEL_30;
  }

  v7 = Value;
  v8 = 0;
  if (!Value)
  {
    goto LABEL_30;
  }

  v9 = CFGetTypeID(a2);
  if (v9 == FigCaptionDynamicStyleGetTypeID())
  {
    KeyFrameCount = FigCaptionDynamicStyleGetKeyFrameCount();
    if (KeyFrameCount >= 1)
    {
      v11 = KeyFrameCount;
      v12 = 0;
      Mutable = 0;
      v8 = 0;
      v13 = *MEMORY[0x1E695E480];
      v14 = MEMORY[0x1E6960C98];
      while (1)
      {
        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }

        v25 = 0.0;
        v15 = FigCaptionDynamicStyleCopyKeyFrameValueAtIndex();
        if (v15)
        {
          goto LABEL_40;
        }

        if (Mutable)
        {
          CFRelease(Mutable);
        }

        Mutable = CFDictionaryCreateMutable(v13, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v15 = v7(cf, Mutable);
        if (v15)
        {
          goto LABEL_40;
        }

        if (v12)
        {
          if (v26)
          {
            CFRelease(v26);
            v26 = 0;
          }

          v15 = FigTTMLDocumentWriterElementCreate(v13, 1, *(a3 + 8), &v26);
          if (v15)
          {
            goto LABEL_40;
          }

          CFDictionaryApplyFunction(Mutable, setAttributeToElement_0, v26);
          v16 = *a3;
          v17 = v14[1];
          v22 = *v14;
          v23 = v17;
          v24 = v14[2];
          if (v16)
          {
            v18 = v16[2];
            v22 = v16[1];
            v23 = v18;
            v24 = v16[3];
          }

          else
          {
            writeEachPropertyToAttributeAndSetElements_cold_1();
          }

          v19 = v25;
          *&v21.value = v22;
          v21.epoch = v23;
          Seconds = CMTimeGetSeconds(&v21);
          if (v8)
          {
            CFRelease(v8);
          }

          CMTimeMakeWithSeconds(&v21, v19 - Seconds, 1000);
          v8 = CMTimeCopyAsDictionary(&v21, v13);
          FigTTMLDocumentWriterElementSetAttribute(v26, @"begin", v8);
          FigTTMLDocumentWriterElementAddChildElement(*(a3 + 8), v26);
        }

        else
        {
          CFDictionaryApplyFunction(Mutable, setAttributeToElement_0, *(a3 + 8));
        }

        if (v11 == ++v12)
        {
          goto LABEL_30;
        }
      }
    }

    Mutable = 0;
LABEL_29:
    v8 = 0;
    goto LABEL_30;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v15 = v7(a2, Mutable);
  if (!v15)
  {
    CFDictionaryApplyFunction(Mutable, setAttributeToElement_0, *(a3 + 8));
    goto LABEL_29;
  }

  v8 = 0;
LABEL_40:
  *(a3 + 24) = v15;
LABEL_30:
  if (v26)
  {
    CFRelease(v26);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t FigTTMLDocumentWriterRegionTimelineCreate(void *a1)
{
  if (a1)
  {
    v2 = *MEMORY[0x1E695E480];
    MEMORY[0x19A8D3660](&figTTMLDocumentWriterRegionTimeline_GetTypeID_sRegisterRegionTimelineOnce, figTTMLDocumentWriterRegionTimeline_Register);
    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v4 = Instance;
      Mutable = CFDictionaryCreateMutable(v2, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v4[8] = Mutable;
      if (Mutable)
      {
        result = 0;
        *a1 = v4;
      }

      else
      {
        FigTTMLDocumentWriterRegionTimelineCreate_cold_1(v4, &v7);
        return v7;
      }
    }

    else
    {
      FigTTMLDocumentWriterRegionTimelineCreate_cold_2(&v8);
      return v8;
    }
  }

  else
  {
    FigTTMLDocumentWriterRegionTimelineCreate_cold_3(&v9);
    return v9;
  }

  return result;
}

uint64_t figTTMLDocumentWriterRegionTimeline_Register()
{
  result = _CFRuntimeRegisterClass();
  sRegionTimelineID = result;
  return result;
}

double figTTMLDocumentWriterRegionTimeline_Init(uint64_t a1)
{
  *(a1 + 64) = 0;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void figTTMLDocumentWriterRegionTimeline_Finalize(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 64) = 0;
  }
}

uint64_t flom_registerFigLegibleOutputManager()
{
  result = _CFRuntimeRegisterClass();
  sFigLegibleOutputManagerID = result;
  return result;
}

uint64_t FigLegibleOutputManagerCreate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, CFTypeRef *a5)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = (a2 | a3) != 0;
  if ((a4 == 0) == v5)
  {
    FigLegibleOutputManagerCreate_cold_1(label);
    return *label;
  }

  if (!a5)
  {
    FigLegibleOutputManagerCreate_cold_7(label);
    return *label;
  }

  *a5 = 0;
  MEMORY[0x19A8D3660](&FigLegibleOutputManagerGetTypeID_sRegisterFigLegibleOutputManagerOnce, flom_registerFigLegibleOutputManager);
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    FigLegibleOutputManagerCreate_cold_6(label);
    return *label;
  }

  v11 = Instance;
  v12 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], 0);
  *(v11 + 72) = Mutable;
  if (!Mutable)
  {
    FigLegibleOutputManagerCreate_cold_5(label);
LABEL_28:
    v18 = *label;
    goto LABEL_20;
  }

  v14 = CFDictionaryCreateMutable(v12, 0, MEMORY[0x1E695E9D8], 0);
  *(v11 + 64) = v14;
  if (!v14)
  {
    FigLegibleOutputManagerCreate_cold_4(label);
    goto LABEL_28;
  }

  *(v11 + 108) = 0;
  v15 = FigSubtitleRendererUseCoreTextRendererByDefault();
  *(v11 + 109) = v15;
  if (v15)
  {
    FigCoreTextSubtitleRendererCreate(v12, (v11 + 112));
LABEL_8:
    snprintf(__str, 0x100uLL, "com.apple.coremedia.legibleoutput.notificationqueue<%p>", v11);
    v16 = dispatch_queue_create(__str, 0);
    *(v11 + 24) = v16;
    if (v16)
    {
      snprintf(label, 0x100uLL, "com.apple.coremedia.legibleoutput.messagequeue<%p>", v11);
      v17 = dispatch_queue_create(label, 0);
      *(v11 + 16) = v17;
      if (v17)
      {
        if (a4 && v5)
        {
          *(v11 + 32) = a2;
          *(v11 + 40) = a3;
          *(v11 + 48) = FigCFWeakReferenceHolderCreateWithReferencedObject();
        }

        v18 = 0;
        *a5 = CFRetain(v11);
      }

      else
      {
        FigLegibleOutputManagerCreate_cold_2(&v21);
        v18 = v21;
      }

      goto LABEL_20;
    }

    FigLegibleOutputManagerCreate_cold_3(label);
    goto LABEL_28;
  }

  v19 = FigCaptionRendererSessionCreate(0, 0, v11, (v11 + 120));
  if (!v19)
  {
    if (!*(v11 + 120))
    {
      goto LABEL_30;
    }

    v19 = FigCaptionSerializerCreate();
    if (v19)
    {
      goto LABEL_19;
    }

    if (!*(v11 + 128))
    {
LABEL_30:
      v18 = 0;
      goto LABEL_20;
    }

    v19 = FigCaptionRendererSessionSetLegibleOutputDevice(*(v11 + 120));
    if (!v19)
    {
      goto LABEL_8;
    }
  }

LABEL_19:
  v18 = v19;
LABEL_20:
  CFRelease(v11);
  return v18;
}

uint64_t FigLegibleOutputManagerSetLegibleOutputsDict(dispatch_queue_t *cf, CFTypeRef a2)
{
  v3 = cf;
  if (cf)
  {
    cf = CFRetain(cf);
  }

  v6[0] = cf;
  if (a2)
  {
    v4 = CFRetain(a2);
  }

  else
  {
    v4 = 0;
  }

  v6[1] = v4;
  dispatch_sync_f(v3[2], v6, flom_setLegibleOutputsDictDo);
  return 0;
}

void flom_setLegibleOutputsDictDo(const __CFDictionary ***a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = v3[7];
  v3[7] = v2;
  if (v2)
  {
    CFRetain(v2);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *a1;
  CFDictionaryApplyFunction((*a1)[9], flo_finalizeFigLegibleOutputApplier, 0);
  CFDictionaryRemoveAllValues(v5[9]);
  CFDictionaryRemoveAllValues(v5[8]);
  v6 = v5[7];
  if (v6)
  {
    CFDictionaryApplyFunction(v6, flom_rebuildFigLegibleOutputs_applier, v5);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  v7 = a1[1];
  if (v7)
  {

    CFRelease(v7);
  }
}

uint64_t FigLegibleOutputManagerSetVideoDisplaySize(dispatch_queue_t *cf, double a2, double a3)
{
  v5 = cf;
  if (cf)
  {
    cf = CFRetain(cf);
  }

  context[0] = cf;
  *&context[1] = a2;
  *&context[2] = a3;
  dispatch_sync_f(v5[2], context, flom_setVideoDisplaySizeDo);
  return 0;
}

void flom_setVideoDisplaySizeDo(uint64_t a1)
{
  *(*a1 + 80) = *(a1 + 8);
  v1 = *a1;
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t FigLegibleOutputManagerSetCaptionPipelineStrategy(dispatch_queue_t *cf, unsigned int a2)
{
  v3 = cf;
  if (cf)
  {
    cf = CFRetain(cf);
  }

  v5[0] = cf;
  v5[1] = a2;
  dispatch_sync_f(v3[2], v5, flom_setCaptionPipelineStrategyDo);
  return 0;
}

void flom_setCaptionPipelineStrategyDo(uint64_t *a1)
{
  v1 = *(a1 + 2);
  v2 = *a1;
  *(v2 + 100) = v1;
  if (!v1)
  {
    v3 = 1;
    goto LABEL_5;
  }

  if (v1 == 1)
  {
    v3 = 0;
LABEL_5:
    *(v2 + 108) = v3;
  }

  CFRelease(v2);
}

uint64_t FigLegibleOutputManagerSetCaptionRenderingStrategy(dispatch_queue_t *cf, unsigned int a2)
{
  v3 = cf;
  if (cf)
  {
    cf = CFRetain(cf);
  }

  v5[0] = cf;
  v5[1] = a2;
  dispatch_sync_f(v3[2], v5, flom_setCaptionRenderingStrategyDo);
  return 0;
}

void flom_setCaptionRenderingStrategyDo(uint64_t *a1)
{
  v1 = *(a1 + 2);
  v2 = *a1;
  *(v2 + 104) = v1;
  if (!v1)
  {
    v3 = 1;
    goto LABEL_5;
  }

  if (v1 == 1)
  {
    v3 = 0;
LABEL_5:
    *(v2 + 109) = v3;
  }

  CFRelease(v2);
}

uint64_t FigLegibleOutputManagerSetNonForcedEnabledForMediaType(dispatch_queue_t *cf, int a2, unsigned __int8 a3)
{
  v5 = cf;
  if (cf)
  {
    cf = CFRetain(cf);
  }

  v7 = cf;
  v8 = a2;
  v9 = a3;
  dispatch_sync_f(v5[2], &v7, flom_setNonForcedEnabledForMediaTypeDo);
  return 0;
}

void flom_setNonForcedEnabledForMediaTypeDo(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 == 1935832172)
  {
    v6 = *(a1 + 12);
    v4 = *a1;
    *(*a1 + 97) = v6;
    if (!v6)
    {
      CFDictionaryApplyFunction(v4[9], flo_clearPreviousSubtitles, 0);
      v4 = *a1;
      v5 = flo_clearPreviousNativeSamples;
      goto LABEL_7;
    }
  }

  else
  {
    if (v2 != 1668047728)
    {
      goto LABEL_8;
    }

    v3 = *(a1 + 12);
    v4 = *a1;
    *(*a1 + 96) = v3;
    v5 = flo_clearPreviousClosedCaptions;
    if (!v3)
    {
LABEL_7:
      CFDictionaryApplyFunction(v4[9], v5, 0);
LABEL_8:
      v4 = *a1;
      if (!*a1)
      {
        return;
      }
    }
  }

  CFRelease(v4);
}

CFMutableArrayRef flom_ensureRenderPipelinesForFormat(dispatch_queue_t *a1, const void *a2, unsigned __int8 a3)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    if (a1)
    {
      v7 = CFRetain(a1);
    }

    else
    {
      v7 = 0;
    }

    v10[0] = v7;
    if (a2)
    {
      v8 = CFRetain(a2);
    }

    else
    {
      v8 = 0;
    }

    v10[2] = Mutable;
    v10[1] = v8;
    v10[3] = a3;
    dispatch_sync_f(a1[2], v10, flom_ensureRenderPipelinesForFormatDo);
  }

  else
  {
    flom_ensureRenderPipelinesForFormat_cold_1();
  }

  return Mutable;
}

uint64_t FigLegibleOutputManagerForgetAboutLegibleOutputRenderPipelines(uint64_t a1)
{
  context = a1;
  dispatch_sync_f(*(a1 + 16), &context, flom_forgetAboutLegibleOutputRenderPipelinesDo);
  return 0;
}

void flom_forgetAboutLegibleOutputRenderPipelinesDo(uint64_t a1)
{
  CFDictionaryRemoveAllValues(*(*a1 + 64));
  v2 = *(*a1 + 72);

  CFDictionaryApplyFunction(v2, flo_forgetAboutRenderPipelines, 0);
}

uint64_t FigLegibleOutputManagerForgetAboutLegibleOutputRenderPipeline(uint64_t a1, uint64_t a2)
{
  v3[0] = a1;
  v3[1] = a2;
  dispatch_sync_f(*(a1 + 16), v3, flom_forgetAboutLegibleOutputRenderPipelineDo);
  return 0;
}

void flom_forgetAboutLegibleOutputRenderPipelineDo(const void **a1)
{
  Value = CFDictionaryGetValue(*(*a1 + 8), a1[1]);
  if (Value)
  {
    v3 = Value;
    v4 = Value[8];
    v5 = a1[1];
    if (v4 == v5)
    {
      if (v4)
      {
        CFRelease(v4);
        v3[8] = 0;
        v5 = a1[1];
      }

      v8 = v3[2];
    }

    else
    {
      v6 = v3[9];
      if (v6 == v5)
      {
        if (v5)
        {
          CFRelease(v6);
          v3[9] = 0;
          v5 = a1[1];
        }

        v7 = v3[2];
      }

      else
      {
        FigAgglomeratorSetObjectForKey(v3[2], 0, v5);
        v7 = v3[2];
        v5 = a1[1];
      }

      FigAgglomeratorSetObjectForKey(v7, 0, v5);
      v8 = v3[3];
      v5 = a1[1];
    }

    FigAgglomeratorSetObjectForKey(v8, 0, v5);
    v9 = a1[1];
    v10 = *(*a1 + 8);

    CFDictionaryRemoveValue(v10, v9);
  }
}

double flom_init(uint64_t a1)
{
  *(a1 + 128) = 0;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void flom_finalize(uint64_t a1)
{
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v2 = *(a1 + 48);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    dispatch_release(v3);
    *(a1 + 16) = 0;
  }

  v4 = *(a1 + 24);
  if (v4)
  {
    dispatch_release(v4);
    *(a1 + 24) = 0;
  }

  v5 = *(a1 + 64);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 64) = 0;
  }

  v6 = *(a1 + 72);
  if (v6)
  {
    CFDictionaryApplyFunction(v6, flo_finalizeFigLegibleOutputApplier, 0);
    v7 = *(a1 + 72);
    if (v7)
    {
      CFRelease(v7);
      *(a1 + 72) = 0;
    }
  }

  v8 = *(a1 + 56);
  if (v8)
  {
    CFRelease(v8);
    *(a1 + 56) = 0;
  }

  v9 = *(a1 + 112);
  if (v9)
  {
    CFRelease(v9);
    *(a1 + 112) = 0;
  }

  if (!*(a1 + 109))
  {
    v10 = *(a1 + 120);
    if (v10)
    {
      CFRelease(v10);
    }

    v11 = *(a1 + 128);
    if (v11)
    {

      CFRelease(v11);
    }
  }
}

__CFString *flom_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigLegibleOutputManager %p>", a1);
  return Mutable;
}

void flo_finalizeFigLegibleOutputApplier(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 64);
    if (v3)
    {
      CFRelease(v3);
      *(a2 + 64) = 0;
    }

    v4 = *(a2 + 72);
    if (v4)
    {
      CFRelease(v4);
      *(a2 + 72) = 0;
    }

    keyManager_releaseCallbackContext(*(a2 + 8));
    *(a2 + 8) = 0;
    if (*a2)
    {
      CFRelease(*a2);
      *a2 = 0;
    }

    FigAgglomeratorDispose(*(a2 + 16));
    *(a2 + 16) = 0;
    FigAgglomeratorDispose(*(a2 + 24));

    free(a2);
  }
}

uint64_t flom_rebuildFigLegibleOutputs_applier(const void *a1, CFDictionaryRef theDict, uint64_t a3)
{
  v12 = **&MEMORY[0x1E6960CC0];
  Value = CFDictionaryGetValue(theDict, @"LegibleOutputKey_AdvanceInterval");
  if (Value)
  {
    seconds.value = 0;
    CFNumberGetValue(Value, kCFNumberDoubleType, &seconds);
    CMTimeMakeWithSeconds(&v12, *&seconds.value, 1000);
  }

  seconds = v12;
  v7 = malloc_type_calloc(1uLL, 0x50uLL, 0x10600401B4FB782uLL);
  v8 = v7;
  if (!v7)
  {
    result = flom_rebuildFigLegibleOutputs_applier_cold_1();
    if ((result & 1) == 0)
    {
      return result;
    }

    goto LABEL_11;
  }

  result = FigAgglomeratorNew(v7 + 2);
  if (!result)
  {
    result = FigAgglomeratorNew(v8 + 3);
    if (!result)
    {
      result = FigClosedCaptionStringConformerNew(v8 + 1);
      if (!result)
      {
        if (a1)
        {
          v10 = CFRetain(a1);
        }

        else
        {
          v10 = 0;
        }

        *v8 = v10;
        *(v8 + 32) = seconds;
LABEL_11:
        CFDictionaryAddValue(*(a3 + 72), a1, v8);
        CFDictionaryGetValue(theDict, @"LegibleOutputKey_TextStylingResolution");
        result = FigCFEqual();
        if (result)
        {
          v8[56] = 1;
        }

        else
        {
          v8[56] = 0;
        }
      }
    }
  }

  return result;
}

void flom_ensureRenderPipelinesForFormatDo(CFDictionaryRef **a1)
{
  v2 = *a1;
  if (!v2[7])
  {
    goto LABEL_6;
  }

  if (CFDictionaryGetCount(v2[7]) >= 1 && a1[2])
  {
    CFDictionaryApplyFunction((*a1)[7], flom_ensureRenderPipelinesForFormatDo_applier, a1);
  }

  v2 = *a1;
  if (*a1)
  {
LABEL_6:
    CFRelease(v2);
  }

  v3 = a1[1];
  if (v3)
  {

    CFRelease(v3);
  }
}

void flom_closedCaptionRenderPipelineDidProduceCommand(const void *a1, int a2, const void *a3, __int128 *a4, void *a5)
{
  v10 = malloc_type_calloc(1uLL, 0x38uLL, 0x10600400D19BD01uLL);
  if (a5)
  {
    v11 = CFRetain(a5);
  }

  else
  {
    v11 = 0;
  }

  *v10 = v11;
  if (a1)
  {
    v12 = CFRetain(a1);
  }

  else
  {
    v12 = 0;
  }

  v10[1] = v12;
  *(v10 + 4) = a2;
  if (a3)
  {
    v13 = CFRetain(a3);
  }

  else
  {
    v13 = 0;
  }

  v10[3] = v13;
  v14 = *a4;
  v10[6] = *(a4 + 2);
  *(v10 + 2) = v14;
  v15 = a5[2];

  dispatch_async_f(v15, v10, flom_closedCaptionRenderPipelineDidProduceCommandDo);
}

void flom_renderPipelineDidFlush(const void *a1, void *a2)
{
  v4 = malloc_type_calloc(1uLL, 0x10uLL, 0x20040A4A59CD2uLL);
  if (a2)
  {
    v5 = CFRetain(a2);
  }

  else
  {
    v5 = 0;
  }

  *v4 = v5;
  if (a1)
  {
    v6 = CFRetain(a1);
  }

  else
  {
    v6 = 0;
  }

  v4[1] = v6;
  v7 = a2[2];

  dispatch_async_f(v7, v4, flom_renderPipelineDidFlushDo);
}

void flom_subtitleRenderPipelineDidProduceStrings(const void *a1, const void *a2, __int128 *a3, char a4, char a5, void *a6, double a7, double a8, double a9, double a10)
{
  v20 = malloc_type_calloc(1uLL, 0x60uLL, 0x106004052824D3DuLL);
  if (a6)
  {
    v21 = CFRetain(a6);
  }

  else
  {
    v21 = 0;
  }

  *v20 = v21;
  if (a1)
  {
    v22 = CFRetain(a1);
  }

  else
  {
    v22 = 0;
  }

  v20[1] = v22;
  v23 = a6[14];
  if (v23)
  {
    v23 = CFRetain(v23);
  }

  v20[2] = v23;
  if (a2)
  {
    v24 = CFRetain(a2);
  }

  else
  {
    v24 = 0;
  }

  v20[3] = v24;
  v25 = *a3;
  v20[6] = *(a3 + 2);
  *(v20 + 2) = v25;
  *(v20 + 56) = a4;
  *(v20 + 57) = a5;
  *(v20 + 8) = a7;
  *(v20 + 9) = a8;
  *(v20 + 10) = a9;
  *(v20 + 11) = a10;
  v26 = a6[2];

  dispatch_async_f(v26, v20, flom_subtitleRenderPipelineDidProduceStringsDo);
}

void flom_subtitleRenderPipelineDidProduceNativeSample(const void *a1, const void *a2, __int128 *a3, char a4, void *a5)
{
  v10 = malloc_type_calloc(1uLL, 0x38uLL, 0x1020040F1C605A7uLL);
  if (a5)
  {
    v11 = CFRetain(a5);
  }

  else
  {
    v11 = 0;
  }

  *v10 = v11;
  if (a1)
  {
    v12 = CFRetain(a1);
  }

  else
  {
    v12 = 0;
  }

  *(v10 + 1) = v12;
  if (a2)
  {
    v13 = CFRetain(a2);
  }

  else
  {
    v13 = 0;
  }

  *(v10 + 2) = v13;
  v14 = *a3;
  *(v10 + 5) = *(a3 + 2);
  *(v10 + 24) = v14;
  v10[48] = a4;
  v15 = a5[2];

  dispatch_async_f(v15, v10, flom_subtitleRenderPipelineDidProduceNativeSampleDo);
}

void flom_FigCaptionRenderPipelineDidProduceStrings(const void *a1, const void *a2, __int128 *a3, char a4, char a5, uint64_t a6, double a7, double a8, double a9, double a10)
{
  v20 = malloc_type_calloc(1uLL, 0x68uLL, 0x106004060991E7AuLL);
  if (a6)
  {
    v21 = CFRetain(a6);
  }

  else
  {
    v21 = 0;
  }

  *v20 = v21;
  if (a1)
  {
    v22 = CFRetain(a1);
  }

  else
  {
    v22 = 0;
  }

  *(v20 + 1) = v22;
  if (*(a6 + 109))
  {
    v23 = *(a6 + 112);
    v24 = 16;
    if (!v23)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v23 = *(a6 + 120);
  v24 = 24;
  if (v23)
  {
LABEL_9:
    v23 = CFRetain(v23);
  }

LABEL_10:
  *&v20[v24] = v23;
  if (a2)
  {
    v25 = CFRetain(a2);
  }

  else
  {
    v25 = 0;
  }

  *(v20 + 4) = v25;
  v26 = *a3;
  *(v20 + 7) = *(a3 + 2);
  *(v20 + 40) = v26;
  v20[64] = a4;
  v20[65] = a5;
  *(v20 + 9) = a7;
  *(v20 + 10) = a8;
  *(v20 + 11) = a9;
  *(v20 + 12) = a10;
  v27 = *(a6 + 16);

  dispatch_async_f(v27, v20, flom_FigCaptionRenderPipelineDidProduceStringsDo);
}

void flom_collectAttributedStringsAndSampleBuffersAndInvokeCallbackForItemTime(uint64_t a1, uint64_t a2, CMTime *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = FigAgglomeratorCopyCurrentAgglomeration(*(a2 + 24));
  v7 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v9 = FigAgglomeratorCopyCurrentAgglomeration(*(a2 + 16));
  v21.length = CFArrayGetCount(v9);
  v21.location = 0;
  CFArrayApplyFunction(v9, v21, flom_combineArrayOfArraysIntoFlatArray, Mutable);
  CFRelease(v9);
  time = *a3;
  v10 = CMTimeCopyAsDictionary(&time, v7);
  v11 = *a2;
  time.value = @"LegibleOutputKey";
  *&time.timescale = @"LegibleOutputAttributedString";
  v17[0] = v11;
  v17[1] = Mutable;
  time.epoch = @"FigTime";
  v19 = @"LegibleOutputNativeSamples";
  v17[2] = v10;
  v17[3] = v6;
  v12 = CFDictionaryCreate(v7, &time, v17, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFRelease(v10);
  v13 = *(a1 + 32);
  v14 = *(a1 + 48);
  v15 = malloc_type_calloc(1uLL, 0x18uLL, 0xE00403260BBE2uLL);
  *v15 = CFRetain(v12);
  v15[1] = v13;
  if (v14)
  {
    v16 = CFRetain(v14);
  }

  else
  {
    v16 = 0;
  }

  v15[2] = v16;
  dispatch_async_f(*(a1 + 24), v15, flom_invokeCallbackAndDisposeContext);
  CFRelease(v12);
  CFRelease(Mutable);
  CFRelease(v6);
}

void flom_invokeCallbackAndDisposeContext(uint64_t a1)
{
  if (*(a1 + 8))
  {
    if (*(a1 + 16))
    {
      v2 = FigCFWeakReferenceHolderCopyReferencedObject();
      if (v2)
      {
        v3 = v2;
        (*(a1 + 8))(*a1, v2);
        CFRelease(v3);
      }
    }
  }

  CFRelease(*a1);
  v4 = *(a1 + 16);
  if (v4)
  {
    CFRelease(v4);
  }

  free(a1);
}

void flom_invokeFlushCallbackAndDisposeContext(void *a1)
{
  if (a1[1])
  {
    if (a1[2])
    {
      v2 = FigCFWeakReferenceHolderCopyReferencedObject();
      if (v2)
      {
        v3 = v2;
        (a1[1])(*a1, v2);
        CFRelease(v3);
      }
    }
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  v4 = a1[2];
  if (v4)
  {
    CFRelease(v4);
  }

  free(a1);
}

void flo_forgetAboutRenderPipelines(uint64_t a1, uint64_t a2)
{
  FigAgglomeratorSetObjectForKey(*(a2 + 16), 0, *(a2 + 64));
  v3 = *(a2 + 64);
  if (v3)
  {
    CFRelease(v3);
    *(a2 + 64) = 0;
  }

  FigAgglomeratorSetObjectForKey(*(a2 + 16), 0, *(a2 + 72));
  FigAgglomeratorSetObjectForKey(*(a2 + 24), 0, *(a2 + 72));
  v4 = *(a2 + 72);
  if (v4)
  {
    CFRelease(v4);
    *(a2 + 72) = 0;
  }
}

uint64_t CreatePesPrivateForPSLPCM(void *a1)
{
  a1[105] = PSLPCMProcessData;
  a1[106] = PSLPCMCleanPrivateData;
  a1[107] = PSLPCMDeletePrivateData;
  v2 = malloc_type_calloc(1uLL, 0x40uLL, 0x10000401C7CE48EuLL);
  a1[6] = v2;
  if (v2)
  {
    return 0;
  }

  CreatePesPrivateForPSLPCM_cold_1(&v4);
  return v4;
}

uint64_t PSLPCMCleanPrivateData(uint64_t result)
{
  v1 = *(result + 48);
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  return result;
}

uint64_t FigSampleBufferRenderSynchronizerCreateWithOptions(const __CFAllocator *a1, uint64_t a2, void *a3)
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (!a3)
  {
    return 4294950926;
  }

  FigSampleBufferRenderSynchronizerGetClassID();
  OnlyTimebase = CMDerivedObjectCreate();
  if (OnlyTimebase)
  {
    return OnlyTimebase;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = FigReentrantMutexCreate();
  *DerivedStorage = v7;
  if (!v7)
  {
    return 4294950924;
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  *(DerivedStorage + 24) = Mutable;
  if (!Mutable)
  {
    return 4294950924;
  }

  v9 = CFArrayCreateMutable(0, 0, 0);
  *(DerivedStorage + 40) = v9;
  if (!v9)
  {
    return 4294950924;
  }

  *(DerivedStorage + 48) = 0;
  *(DerivedStorage + 52) = 0;
  HostTimeClock = CMClockGetHostTimeClock();
  OnlyTimebase = CMTimebaseCreateWithSourceClock(a1, HostTimeClock, (DerivedStorage + 8));
  if (OnlyTimebase)
  {
    return OnlyTimebase;
  }

  if (*(DerivedStorage + 8))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterAddWeakListener();
  }

  OnlyTimebase = CMTimebaseCreateReadOnlyTimebase();
  if (OnlyTimebase)
  {
    return OnlyTimebase;
  }

  if (dword_1EAF17C18)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v12 = 0;
  *a3 = 0;
  return v12;
}

__CFString *synchronizer_copyDebugDesc(const void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = CFGetRetainCount(a1);
  if (*(DerivedStorage + 53))
  {
    v6 = " (invalidated)";
  }

  else
  {
    v6 = "";
  }

  v7 = CFGetAllocator(a1);
  CFStringAppendFormat(Mutable, 0, @"<FigSampleBufferRenderSynchronizer=%p retainCount=%d%s allocator=%p", a1, v5, v6, v7);
  CFStringAppendFormat(Mutable, 0, @" rate=%1.3f", *(DerivedStorage + 48));
  CFStringAppendFormat(Mutable, 0, @" masterTimebase=%@", *(DerivedStorage + 8));
  CFStringAppendFormat(Mutable, 0, @" readonlyTimebase=%@", *(DerivedStorage + 16));
  CFStringAppendFormat(Mutable, 0, @" audioRenderers=%@", *(DerivedStorage + 24));
  CFStringAppendFormat(Mutable, 0, @" timebaseStarter=%@", *(DerivedStorage + 32));
  CFStringAppendFormat(Mutable, 0, @" disturbPlaybackAssertions=%@", *(DerivedStorage + 40));
  CFStringAppendFormat(Mutable, 0, @">");
  return Mutable;
}

uint64_t synchronizer_timebaseRateChangedListener(int a1, int a2, int a3, CMTimebaseRef timebase)
{
  if (*MEMORY[0x1E695FF58] == 1)
  {
    CMTimebaseGetRate(timebase);

    return kdebug_trace();
  }

  return result;
}

uint64_t synchronizer_applyShouldAttemptImmediatePlaybackStart(uint64_t a1, uint64_t a2)
{
  VTable = CMBaseObjectGetVTable();
  v6 = *(VTable + 8);
  result = VTable + 8;
  v7 = *(v6 + 56);
  if (v7)
  {

    return v7(a1, @"ShouldAttemptImmediatePlaybackStart", a2);
  }

  return result;
}

uint64_t synchronizer_setRateAndTime(uint64_t a1, __int128 *a2, float a3)
{
  v4 = *a2;
  v5 = *(a2 + 2);
  return synchronizer_setRateAndAnchorTime(a1, &v4, MEMORY[0x1E6960C70], a3);
}

uint64_t synchronizer_setRateAndAnchorTime(uint64_t a1, uint64_t a2, __int128 *a3, float a4)
{
  v18 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (dword_1EAF17C18)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (a4 < 0.0)
  {
    v11 = 4294950925;
  }

  else
  {
    FigSimpleMutexLock();
    if (*(DerivedStorage + 53))
    {
      v11 = 4294954511;
    }

    else
    {
      v10 = *(DerivedStorage + 48);
      if (v10 == a4 && (*(a2 + 12) & 1) == 0)
      {
        v11 = 0;
LABEL_13:
        FigSimpleMutexUnlock();
        goto LABEL_14;
      }

      if (a4 == 0.0 || v10 == 0.0 || (v12 = synchronizer_setRateAndAnchorTimeLowLevel(0.0, a1, MEMORY[0x1E6960C70], MEMORY[0x1E6960C70], 0), !v12))
      {
        time = *a2;
        v15 = *a3;
        v16 = *(a3 + 2);
        v11 = synchronizer_setRateAndAnchorTimeLowLevel(a4, a1, &time, &v15, &cf);
        if (!v11)
        {
          *(DerivedStorage + 48) = a4;
          goto LABEL_13;
        }
      }

      else
      {
        v11 = v12;
      }
    }
  }

  if (a4 != 0.0)
  {
    synchronizer_setRateAndAnchorTimeLowLevel(0.0, a1, MEMORY[0x1E6960C70], MEMORY[0x1E6960C70], 0);
  }

  if (a4 >= 0.0)
  {
    goto LABEL_13;
  }

LABEL_14:
  if (cf)
  {
    CFRelease(cf);
  }

  return v11;
}

uint64_t synchronizer_setRateAndAnchorTimeLowLevel(float a1, uint64_t a2, CMTime *a3, uint64_t a4, void *a5)
{
  v33 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = DerivedStorage;
  if (a1 != 0.0 && CFArrayGetCount(*(DerivedStorage + 40)))
  {
    if (dword_1EAF17C18)
    {
      LODWORD(v30.value) = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    return 0;
  }

  if (dword_1EAF17C18)
  {
    LODWORD(v30.value) = 0;
    v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!*(v10 + 32))
  {
    if ((a3->flags & 0x1D) == 1)
    {
      v21 = CMTimebaseCopySource(*(v10 + 8));
      v22 = v21;
      memset(&v30, 0, sizeof(v30));
      if (*(a4 + 12))
      {
        HostTimeClock = CMClockGetHostTimeClock();
        time = *a4;
        CMSyncConvertTime(&v30, &time, HostTimeClock, v22);
      }

      else
      {
        CMSyncGetTime(&v30, v21);
      }

      if (dword_1EAF17C18)
      {
        v25 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v26 = *(v10 + 8);
      time = *a3;
      immediateSourceTime = v30;
      v20 = CMTimebaseSetRateAndAnchorTime(v26, a1, &time, &immediateSourceTime);
      if (v22)
      {
        CFRelease(v22);
      }

      ValueAtIndex = 0;
      if (!a5)
      {
        return v20;
      }
    }

    else
    {
      if (dword_1EAF17C18)
      {
        LODWORD(v30.value) = 0;
        v23 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v20 = CMTimebaseSetRate(*(v10 + 8), a1);
      ValueAtIndex = 0;
      if (!a5)
      {
        return v20;
      }
    }

    goto LABEL_34;
  }

  Count = CFArrayGetCount(*(v10 + 24));
  if (Count >= 2)
  {
    v14 = Count;
    v15 = 1;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(v10 + 24), v15);
      if (!ValueAtIndex)
      {
        break;
      }

      v30 = *a3;
      *&type.value = *a4;
      type.epoch = *(a4 + 16);
      v17 = *(*(CMBaseObjectGetVTable() + 16) + 64);
      if (!v17)
      {
        goto LABEL_18;
      }

      time = v30;
      immediateSourceTime = type;
      v18 = v17(ValueAtIndex, &time, &immediateSourceTime, a1);
      if (v18)
      {
        goto LABEL_16;
      }

      if (v14 == ++v15)
      {
        goto LABEL_14;
      }
    }

    v20 = 4294950925;
    if (!a5)
    {
      return v20;
    }

    goto LABEL_34;
  }

LABEL_14:
  ValueAtIndex = *(v10 + 32);
  v30 = *a3;
  *&typea.value = *a4;
  typea.epoch = *(a4 + 16);
  v19 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (!v19)
  {
LABEL_18:
    v20 = 4294954514;
    if (!a5)
    {
      return v20;
    }

    goto LABEL_34;
  }

  time = v30;
  immediateSourceTime = typea;
  v18 = v19(ValueAtIndex, &time, &immediateSourceTime, a1);
LABEL_16:
  v20 = v18;
  if (a5)
  {
LABEL_34:
    if (v20)
    {
      if (ValueAtIndex)
      {
        CFRetain(ValueAtIndex);
      }

      *a5 = ValueAtIndex;
    }
  }

  return v20;
}

uint64_t synchronizer_audioRendererEndpointPreemptedNotificationHandler(uint64_t a1, uint64_t a2)
{
  VTable = CMBaseObjectGetVTable();
  v5 = *(VTable + 16);
  result = VTable + 16;
  v6 = *(v5 + 24);
  if (v6)
  {
    v7 = *MEMORY[0x1E6960C70];
    v8 = *(MEMORY[0x1E6960C70] + 16);
    return v6(a2, &v7, 0.0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_110()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_20_42()
{

  return FigNotificationCenterAddWeakListener();
}

__CFArray *stringconformer_createResolvedARGBColorUsingMAXColorAndOpacityFromFunctions(const void *a1, const void *a2, uint64_t (*a3)(uint64_t, uint64_t *), double (*a4)(uint64_t, uint64_t *))
{
  v20 = 1;
  v7 = a3(1, &v20);
  v19 = 1;
  valuePtr = a4(1, &v19);
  v8 = *MEMORY[0x1E695E480];
  v9 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberCGFloatType, &valuePtr);
  v10 = v19;
  if (v20 == 1)
  {
    if (a1)
    {
      ARGBColorArrayFromCGColor = CFRetain(a1);
LABEL_6:
      v12 = ARGBColorArrayFromCGColor;
      if (ARGBColorArrayFromCGColor)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    if (v7)
    {
LABEL_3:
      ARGBColorArrayFromCGColor = FigTextMarkupCreateARGBColorArrayFromCGColor();
      goto LABEL_6;
    }
  }

  else if (!v20)
  {
    goto LABEL_3;
  }

LABEL_7:
  v12 = CFRetain(a2);
LABEL_8:
  if (v10 == 1)
  {
    if (a1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, 0);
      goto LABEL_15;
    }
  }

  else if (v10)
  {
    goto LABEL_16;
  }

  if (v9)
  {
    ValueAtIndex = v9;
LABEL_15:
    v14 = CFRetain(ValueAtIndex);
    if (v14)
    {
      goto LABEL_17;
    }
  }

LABEL_16:
  v15 = CFArrayGetValueAtIndex(a2, 0);
  v14 = CFRetain(v15);
LABEL_17:
  MutableCopy = CFArrayCreateMutableCopy(v8, 0, v12);
  CFArraySetValueAtIndex(MutableCopy, 0, v14);
  CFRelease(v12);
  CFRelease(v14);
  CGColorRelease(v7);
  if (v9)
  {
    CFRelease(v9);
  }

  return MutableCopy;
}

uint64_t FigStringConformerEdgeStyleForMediaAccessibilityEdgeStyle(uint64_t a1)
{
  result = 0;
  if (a1 <= 2)
  {
    if (a1 == 1)
    {
      v3 = MEMORY[0x1E69609C8];
    }

    else
    {
      if (a1 != 2)
      {
        return result;
      }

      v3 = MEMORY[0x1E69609D0];
    }
  }

  else
  {
    switch(a1)
    {
      case 3:
        v3 = MEMORY[0x1E69609B8];
        break;
      case 4:
        v3 = MEMORY[0x1E69609D8];
        break;
      case 5:
        v3 = MEMORY[0x1E69609C0];
        break;
      default:
        return result;
    }
  }

  return *v3;
}

void FigCaptionRendererFreeLayoutRegionFinalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 8);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 8) = 0;
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

__CFString *FigCaptionRendererFreeLayoutRegionCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"\tFigCaptionRendererFreeLayoutRegion: <%p>", a1);
  return Mutable;
}

__CFString *FigCaptionRendererFreeLayoutRegion_FigCaptionRendererBaseProtocol_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"\tFigCaptionRendererFreeLayoutRegion <FigCaptionRendererBaseProtocol> on <%p>", a1);
  return Mutable;
}

__CFString *FigCaptionRendererFreeLayoutRegion_FigCaptionRendererNodeProtocol_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"\tFigCaptionRendererFreeLayoutRegion <FigCaptionRendererNodeProtocol> on <%p>", a1);
  return Mutable;
}

uint64_t FigCaptionRendererFreeLayoutRegion_FigCaptionRendererNodeProtocol_SetParentNode(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 8);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererFreeLayoutRegion_FigCaptionRendererNodeProtocol_GetParentNode(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 16);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererFreeLayoutRegion_FigCaptionRendererNodeProtocol_GetChildren(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 24);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererFreeLayoutRegion_FigCaptionRendererNodeProtocol_HasChildNode(uint64_t a1, uint64_t a2, char *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  __s1 = 0;
  FigCaptionRendererBaseProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable || (v8 = *(ProtocolVTable + 16)) == 0)
  {
    v16 = 4294954508;
LABEL_50:
    FigCaptionRendererFreeLayoutRegion_FigCaptionRendererNodeProtocol_HasChildNode_cold_1();
    return v16;
  }

  v9 = *(v8 + 8);
  if (!v9)
  {
    v16 = 4294954514;
    goto LABEL_50;
  }

  v10 = v9(a2, &__s1);
  if (v10)
  {
    v16 = v10;
    goto LABEL_50;
  }

  v11 = __s1;
  if (__s1 && (!strcmp(__s1, "FigCaptionRendererStackLayoutRegion") || !strcmp(v11, "FigCaptionRendererTTMLRegion") || !strcmp(v11, "FigCaptionRendererCellStackLayoutRegion") || !strcmp(v11, "FigCaptionRendereriTTRegion") || !strcmp(v11, "FigCaptionRendererSRTRegion") || !strcmp(v11, "FigCaptionRendererFreeLayoutRegion")))
  {
    theString1 = 0;
    FigCaptionRendererRegionProtocolGetProtocolID();
    v17 = CMBaseObjectGetProtocolVTable();
    if (v17)
    {
      v18 = *(v17 + 16);
      if (v18)
      {
        v19 = *(v18 + 16);
        if (v19)
        {
          v19(a2, &theString1);
        }
      }
    }

    v20 = theString1;
    if (theString1)
    {
      theArray = 0;
      FigCaptionRendererNodeProtocolGetProtocolID();
      v21 = CMBaseObjectGetProtocolVTable();
      if (v21)
      {
        v22 = *(v21 + 2);
        if (v22 && (v23 = *(v22 + 24)) != 0)
        {
          v23(a1, &theArray);
          v21 = theArray;
        }

        else
        {
          v21 = 0;
        }
      }

      if (CFArrayGetCount(v21) < 1)
      {
LABEL_47:
        v20 = 0;
        goto LABEL_48;
      }

      v24 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v24);
        v36 = 0;
        FigCaptionRendererBaseProtocolGetProtocolID();
        v26 = CMBaseObjectGetProtocolVTable();
        if (!v26)
        {
          break;
        }

        v27 = *(v26 + 16);
        if (!v27)
        {
          break;
        }

        v28 = *(v27 + 8);
        if (!v28)
        {
          v16 = 4294954514;
          goto LABEL_53;
        }

        v29 = v28(ValueAtIndex, &v36);
        if (v29)
        {
          v16 = v29;
          goto LABEL_53;
        }

        v30 = v36;
        if (v36 && (!strcmp(v36, "FigCaptionRendererStackLayoutRegion") || !strcmp(v30, "FigCaptionRendererTTMLRegion") || !strcmp(v30, "FigCaptionRendererCellStackLayoutRegion") || !strcmp(v30, "FigCaptionRendereriTTRegion") || !strcmp(v30, "FigCaptionRendererSRTRegion") || !strcmp(__s1, "FigCaptionRendererFreeLayoutRegion")))
        {
          theString2 = 0;
          FigCaptionRendererRegionProtocolGetProtocolID();
          v31 = CMBaseObjectGetProtocolVTable();
          if (v31)
          {
            v32 = *(v31 + 16);
            if (v32)
            {
              v33 = *(v32 + 16);
              if (v33)
              {
                v33(ValueAtIndex, &theString2);
              }
            }
          }

          if (CFStringCompare(theString1, theString2, 1uLL) == kCFCompareEqualTo)
          {
            v20 = 1;
            goto LABEL_48;
          }
        }

        if (CFArrayGetCount(theArray) <= ++v24)
        {
          goto LABEL_47;
        }
      }

      v16 = 4294954508;
LABEL_53:
      fig_log_get_emitter();
      FigSignalErrorAtGM();
      return v16;
    }

LABEL_48:
    v16 = 0;
    *a3 = v20;
  }

  else
  {
    v12 = *DerivedStorage;
    FigCaptionRendererNodeProtocolGetProtocolID();
    v13 = CMBaseObjectGetProtocolVTable();
    if (v13 && (v14 = *(v13 + 16)) != 0)
    {
      v15 = *(v14 + 32);
      if (v15)
      {
        return v15(v12, a2, a3);
      }

      else
      {
        return 4294954514;
      }
    }

    else
    {
      return 4294954508;
    }
  }

  return v16;
}

uint64_t FigCaptionRendererFreeLayoutRegion_FigCaptionRendererNodeProtocol_AddChildNode(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 40);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererFreeLayoutRegion_FigCaptionRendererNodeProtocol_RemoveChildNode(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 48);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererFreeLayoutRegion_FigCaptionRendererNodeProtocol_RemovelAllChildrenNodes()
{
  v0 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v2 = *(ProtocolVTable + 16);
  if (!v2)
  {
    return 4294954508;
  }

  v3 = *(v2 + 56);
  if (!v3)
  {
    return 4294954514;
  }

  return v3(v0);
}

uint64_t FigCaptionRendererFreeLayoutRegion_FigCaptionRendererNodeProtocol_SetViewport(double a1, double a2, double a3, double a4)
{
  v8 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v14 = *(ProtocolVTable + 16);
  if (!v14)
  {
    return 4294954508;
  }

  v15 = *(v14 + 64);
  if (!v15)
  {
    return 4294954514;
  }

  v10.n128_f64[0] = a1;
  v11.n128_f64[0] = a2;
  v12.n128_f64[0] = a3;
  v13.n128_f64[0] = a4;

  return v15(v8, v10, v11, v12, v13);
}

uint64_t FigCaptionRendererFreeLayoutRegion_FigCaptionRendererNodeProtocol_GetViewport(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 72);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererFreeLayoutRegion_FigCaptionRendererNodeProtocol_SetFCRBounds(uint64_t a1, __int128 *a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  v8 = *a2;
  v9 = a2[1];
  v10 = a2[2];
  v11 = a2[3];
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 80);
  if (!v6)
  {
    return 4294954514;
  }

  v12[0] = v8;
  v12[1] = v9;
  v12[2] = v10;
  v12[3] = v11;
  return v6(v3, v12);
}

uint64_t FigCaptionRendererFreeLayoutRegion_FigCaptionRendererNodeProtocol_GetFCRBounds(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 88);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererFreeLayoutRegion_FigCaptionRendererNodeProtocol_SetCGBounds(double a1, double a2, double a3, double a4)
{
  v8 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v14 = *(ProtocolVTable + 16);
  if (!v14)
  {
    return 4294954508;
  }

  v15 = *(v14 + 96);
  if (!v15)
  {
    return 4294954514;
  }

  v10.n128_f64[0] = a1;
  v11.n128_f64[0] = a2;
  v12.n128_f64[0] = a3;
  v13.n128_f64[0] = a4;

  return v15(v8, v10, v11, v12, v13);
}

uint64_t FigCaptionRendererFreeLayoutRegion_FigCaptionRendererNodeProtocol_GetCGBounds(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 104);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererFreeLayoutRegion_FigCaptionRendererNodeProtocol_SetCGSize(double a1, double a2)
{
  v4 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v8 = *(ProtocolVTable + 16);
  if (!v8)
  {
    return 4294954508;
  }

  v9 = *(v8 + 112);
  if (!v9)
  {
    return 4294954514;
  }

  v6.n128_f64[0] = a1;
  v7.n128_f64[0] = a2;

  return v9(v4, v6, v7);
}

uint64_t FigCaptionRendererFreeLayoutRegion_FigCaptionRendererNodeProtocol_GetCGSize(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 120);
  if (!v6)
  {
    return 4294954508;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererFreeLayoutRegion_FigCaptionRendererNodeProtocol_SetCGOrigin(double a1, double a2)
{
  v4 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v8 = *(ProtocolVTable + 16);
  if (!v8)
  {
    return 4294954508;
  }

  v9 = *(v8 + 128);
  if (!v9)
  {
    return 4294954514;
  }

  v6.n128_f64[0] = a1;
  v7.n128_f64[0] = a2;

  return v9(v4, v6, v7);
}

uint64_t FigCaptionRendererFreeLayoutRegion_FigCaptionRendererNodeProtocol_GetCGOrigin(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 136);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererFreeLayoutRegion_FigCaptionRendererNodeProtocol_SetPaddings(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v15 = *(ProtocolVTable + 16);
  if (!v15)
  {
    return 4294954508;
  }

  v16 = *(v15 + 144);
  if (!v16)
  {
    return 4294954514;
  }

  return v16(v13, a2, a3, a4, a5, a6, a7);
}

uint64_t FigCaptionRendererFreeLayoutRegion_FigCaptionRendererNodeProtocol_GetInsetCGBounds(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 152);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererFreeLayoutRegion_FigCaptionRendererNodeProtocol_PurgeImageCache()
{
  v0 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v2 = *(ProtocolVTable + 16);
  if (!v2)
  {
    return 4294954508;
  }

  v3 = *(v2 + 160);
  if (!v3)
  {
    return 4294954514;
  }

  return v3(v0);
}

uint64_t FigCaptionRendererFreeLayoutRegion_FigCaptionRendererNodeProtocol_SetImageCache(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 168);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererFreeLayoutRegion_FigCaptionRendererNodeProtocol_GetImageCache(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 176);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererFreeLayoutRegion_FigCaptionRendererNodeProtocol_GetImageCacheWidth(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 184);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererFreeLayoutRegion_FigCaptionRendererNodeProtocol_GetImageCacheHeight(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 192);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererFreeLayoutRegion_FigCaptionRendererNodeProtocol_AllocateImageBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v9 = *(ProtocolVTable + 16);
  if (!v9)
  {
    return 4294954508;
  }

  v10 = *(v9 + 200);
  if (!v10)
  {
    return 4294954514;
  }

  return v10(v7, a2, a3, a4);
}

uint64_t FigCaptionRendererFreeLayoutRegion_FigCaptionRendererNodeProtocol_GetImageBuffer(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 208);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererFreeLayoutRegion_FigCaptionRendererNodeProtocol_SetNeedRedraw(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 216);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererFreeLayoutRegion_FigCaptionRendererNodeProtocol_GetNeedRedraw(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 224);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererFreeLayoutRegion_FigCaptionRendererNodeProtocol_SetNeedLayout(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 232);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererFreeLayoutRegion_FigCaptionRendererNodeProtocol_GetNeedLayout(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 240);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererFreeLayoutRegion_FigCaptionRendererNodeProtocol_HasActions(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 248);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererFreeLayoutRegion_FigCaptionRendererNodeProtocol_SetZOrder(double a1)
{
  v2 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 256);
  if (!v6)
  {
    return 4294954514;
  }

  v4.n128_f64[0] = a1;

  return v6(v2, v4);
}

uint64_t FigCaptionRendererFreeLayoutRegion_FigCaptionRendererNodeProtocol_GetZOrder(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 264);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererFreeLayoutRegion_FigCaptionRendererNodeProtocol_ResetNodeTree()
{
  v0 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v2 = *(ProtocolVTable + 16);
  if (!v2)
  {
    return 4294954508;
  }

  v3 = *(v2 + 272);
  if (!v3)
  {
    return 4294954514;
  }

  return v3(v0);
}

uint64_t FigCaptionRendererFreeLayoutRegion_FigCaptionRendererNodeProtocol_Draw(const void *a1, uint64_t a2)
{
  v4 = *(MEMORY[0x1E695F050] + 16);
  v20.origin = *MEMORY[0x1E695F050];
  v20.size = v4;
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (ProtocolVTable)
  {
    v6 = *(ProtocolVTable + 16);
    if (v6)
    {
      v7 = *(v6 + 104);
      if (v7)
      {
        v7(a1, &v20);
      }
    }
  }

  if (a1)
  {
    v8 = *(a2 + 296);
    if (v8)
    {
      Value = CFDictionaryGetValue(v8, a1);
      MidX = CGRectGetMidX(v20);
      MidY = CGRectGetMidY(v20);
      FigCaptionRendererOutputNodeProtocolGetProtocolID();
      v12 = CMBaseObjectGetProtocolVTable();
      if (v12)
      {
        v13 = *(v12 + 16);
        if (v13)
        {
          v14 = *(v13 + 72);
          if (v14)
          {
            v14(Value, MidX, MidY);
          }
        }
      }

      size = v20.size;
      FigCaptionRendererOutputNodeProtocolGetProtocolID();
      v16 = CMBaseObjectGetProtocolVTable();
      if (v16)
      {
        v17 = *(v16 + 16);
        if (v17)
        {
          v18 = *(v17 + 88);
          if (v18)
          {
            v18(Value, size.width, size.height);
          }
        }
      }
    }
  }

  return 0;
}

uint64_t FigCaptionRendererFreeLayoutRegion_FigCaptionRendererNodeProtocol_Layout(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v74 = 0;
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (ProtocolVTable)
  {
    v6 = *(ProtocolVTable + 16);
    if (v6)
    {
      v7 = *(v6 + 16);
      if (v7)
      {
        v7(a1, &v74);
        if (v74)
        {
          v8 = CMBaseObjectGetDerivedStorage();
          v9 = *(v8 + 16);
          v10 = *(v8 + 20) * 0.0533;
          v11 = *(v8 + 40);
          v12 = *(v8 + 24);
          if (*(v8 + 48) / 100.0 + *(v8 + 32) / -100.0 * v10 >= 0.0)
          {
            v13 = *(v8 + 48) / 100.0 + *(v8 + 32) / -100.0 * v10;
          }

          else
          {
            v13 = 0.0;
          }

          v14 = *v8;
          FigCaptionRendererNodeProtocolGetProtocolID();
          v15 = CMBaseObjectGetProtocolVTable();
          if (v15)
          {
            v16 = *(v15 + 16);
            if (v16)
            {
              v17 = *(v16 + 80);
              if (v17)
              {
                LOBYTE(v76) = 1;
                *(&v76 + 1) = 0;
                DWORD1(v76) = 0;
                *(&v76 + 1) = v11 / 100.0 + v12 / -100.0 * (v9 / 100.0);
                LOBYTE(v77.width) = 1;
                *(&v77.width + 1) = 0;
                HIDWORD(v77.width) = 0;
                v77.height = v13;
                LOBYTE(v78) = 1;
                *(&v78 + 1) = 0;
                DWORD1(v78) = 0;
                *(&v78 + 1) = v9 / 100.0;
                LOBYTE(v79) = 1;
                *(&v79 + 1) = 0;
                DWORD1(v79) = 0;
                *(&v79 + 1) = v10;
                v17(v14, &v76);
              }
            }
          }

          v18 = CMBaseObjectGetDerivedStorage();
          v76 = FCRRectNull;
          v77 = *&byte_196E76830;
          v78 = xmmword_196E76840;
          v79 = *&byte_196E76850;
          v69 = *(MEMORY[0x1E695F050] + 16);
          v70 = *MEMORY[0x1E695F050];
          v75.origin = *MEMORY[0x1E695F050];
          v75.size = v69;
          FigCaptionRendererNodeProtocolGetProtocolID();
          v19 = CMBaseObjectGetProtocolVTable();
          if (v19)
          {
            v20 = *(v19 + 16);
            if (v20)
            {
              v21 = *(v20 + 88);
              if (v21)
              {
                v21(a1, &v76);
              }
            }
          }

          FigCaptionRendererNodeProtocolGetProtocolID();
          v22 = CMBaseObjectGetProtocolVTable();
          if (v22)
          {
            v23 = *(v22 + 16);
            if (v23)
            {
              v24 = *(v23 + 72);
              if (v24)
              {
                v24(a1, &v75);
              }
            }
          }

          v25 = *(&v78 + 1);
          if (*(&v78 + 1) != -1.0)
          {
            v53 = v75.origin.x + *(&v76 + 1);
            if (v76)
            {
              v53 = v75.origin.x + *(&v76 + 1) * v75.size.width;
            }

            v54 = v75.origin.y + v77.height;
            if (LOBYTE(v77.width))
            {
              v54 = v75.origin.y + v77.height * v75.size.height;
            }

            if (v78)
            {
              v25 = *(&v78 + 1) * v75.size.width;
            }

            v55 = *(&v79 + 1);
            if (v79)
            {
              v55 = v75.size.height * *(&v79 + 1);
            }

            v80 = CGRectIntegral(*(&v25 - 2));
            x = v80.origin.x;
            y = v80.origin.y;
            width = v80.size.width;
            height = v80.size.height;
            v60 = *v18;
            FigCaptionRendererNodeProtocolGetProtocolID();
            v61 = CMBaseObjectGetProtocolVTable();
            if (v61)
            {
              v62 = *(v61 + 16);
              if (v62)
              {
                v63 = *(v62 + 96);
                if (v63)
                {
                  v63(v60, x, y, width, height);
                }
              }
            }
          }

          theArray = 0;
          FigCaptionRendererNodeProtocolGetProtocolID();
          v26 = CMBaseObjectGetProtocolVTable();
          if (v26)
          {
            v27 = *(v26 + 16);
            if (v27)
            {
              v28 = *(v27 + 24);
              if (v28)
              {
                v28(a1, &theArray);
              }
            }
          }

          Count = CFArrayGetCount(theArray);
          if (Count >= 1)
          {
            for (i = Count + 1; i > 1; --i)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(theArray, i - 2);
              __s1 = 0;
              FigCaptionRendererBaseProtocolGetProtocolID();
              v32 = CMBaseObjectGetProtocolVTable();
              if (!v32 || (v33 = *(v32 + 16)) == 0 || (v34 = *(v33 + 8)) == 0 || v34(ValueAtIndex, &__s1))
              {
                FigCaptionRendererFreeLayoutRegion_FigCaptionRendererNodeProtocol_Layout_cold_4();
                break;
              }

              if (__s1 && !strcmp(__s1, "FigCaptionRendererCaption"))
              {
                v71 = 0;
                FigCaptionRendererCaptionProtocolGetProtocolID();
                v35 = CMBaseObjectGetProtocolVTable();
                if (!v35 || (v36 = *(v35 + 16)) == 0 || (v37 = *(v36 + 48)) == 0 || v37(ValueAtIndex, &v71))
                {
                  FigCaptionRendererFreeLayoutRegion_FigCaptionRendererNodeProtocol_Layout_cold_3();
                  break;
                }

                if (v71 == 3)
                {
                  v76 = v70;
                  v77 = v69;
                  FigCaptionRendererNodeProtocolGetProtocolID();
                  v38 = CMBaseObjectGetProtocolVTable();
                  if (!v38 || (v39 = *(v38 + 16)) == 0 || (v40 = *(v39 + 104)) == 0 || v40(ValueAtIndex, &v76))
                  {
                    FigCaptionRendererFreeLayoutRegion_FigCaptionRendererNodeProtocol_Layout_cold_2();
                    break;
                  }

                  v75.origin = v70;
                  v75.size = v69;
                  FigCaptionRendererNodeProtocolGetProtocolID();
                  v41 = CMBaseObjectGetProtocolVTable();
                  if (!v41 || (v42 = *(v41 + 16)) == 0 || (v43 = *(v42 + 72)) == 0 || v43(ValueAtIndex, &v75))
                  {
                    FigCaptionRendererFreeLayoutRegion_FigCaptionRendererNodeProtocol_Layout_cold_1();
                    break;
                  }

                  MidX = CGRectGetMidX(v75);
                  MidY = CGRectGetMidY(v75);
                  v46 = v77;
                  FigCaptionRendererNodeProtocolGetProtocolID();
                  v47 = CMBaseObjectGetProtocolVTable();
                  if (v47)
                  {
                    v48 = *(v47 + 16);
                    if (v48)
                    {
                      v49 = *(v48 + 128);
                      if (v49)
                      {
                        v49(ValueAtIndex, MidX - v46.width * 0.5, MidY - v46.height * 0.5);
                      }
                    }
                  }

                  FigCaptionRendererNodeProtocolGetProtocolID();
                  v50 = CMBaseObjectGetProtocolVTable();
                  if (v50)
                  {
                    v51 = *(v50 + 16);
                    if (v51)
                    {
                      v52 = *(v51 + 232);
                      if (v52)
                      {
                        v52(ValueAtIndex, 1);
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v64 = *DerivedStorage;
  FigCaptionRendererNodeProtocolGetProtocolID();
  v65 = CMBaseObjectGetProtocolVTable();
  if (!v65)
  {
    return 4294954508;
  }

  v66 = *(v65 + 16);
  if (!v66)
  {
    return 4294954508;
  }

  v67 = *(v66 + 288);
  if (v67)
  {
    return v67(v64, a2);
  }

  else
  {
    return 4294954514;
  }
}

uint64_t FigCaptionRendererFreeLayoutRegion_FigCaptionRendererNodeProtocol_ExecActions(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 296);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererFreeLayoutRegion_FigCaptionRendererNodeProtocol_Compose(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v25 = 0;
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (ProtocolVTable)
  {
    v6 = *(ProtocolVTable + 16);
    if (v6)
    {
      v7 = *(v6 + 248);
      if (v7)
      {
        v7(a1, &v25 + 1);
        if (HIBYTE(v25))
        {
          FigCaptionRendererNodeProtocolGetProtocolID();
          v8 = CMBaseObjectGetProtocolVTable();
          if (v8)
          {
            v9 = *(v8 + 16);
            if (v9)
            {
              v10 = *(v9 + 296);
              if (v10)
              {
                v10(a1, a2);
              }
            }
          }
        }
      }
    }
  }

  FigCaptionRendererNodeProtocolGetProtocolID();
  v11 = CMBaseObjectGetProtocolVTable();
  if (v11)
  {
    v12 = *(v11 + 16);
    if (v12)
    {
      v13 = *(v12 + 240);
      if (v13)
      {
        v13(a1, &v25);
        if (v25)
        {
          FigCaptionRendererNodeProtocolGetProtocolID();
          v14 = CMBaseObjectGetProtocolVTable();
          if (v14)
          {
            v15 = *(v14 + 16);
            if (v15)
            {
              v16 = *(v15 + 288);
              if (v16)
              {
                v16(a1, a2);
              }
            }
          }
        }
      }
    }
  }

  FigCaptionRendererNodeProtocolGetProtocolID();
  v17 = CMBaseObjectGetProtocolVTable();
  if (v17)
  {
    v18 = *(v17 + 16);
    if (v18)
    {
      v19 = *(v18 + 280);
      if (v19)
      {
        v19(a1, a2);
      }
    }
  }

  v20 = *DerivedStorage;
  FigCaptionRendererNodeProtocolGetProtocolID();
  v21 = CMBaseObjectGetProtocolVTable();
  if (!v21)
  {
    return 4294954508;
  }

  v22 = *(v21 + 16);
  if (!v22)
  {
    return 4294954508;
  }

  v23 = *(v22 + 304);
  if (v23)
  {
    return v23(v20, a2);
  }

  else
  {
    return 4294954514;
  }
}