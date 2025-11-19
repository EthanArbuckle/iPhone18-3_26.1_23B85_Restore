uint64_t MediaDataChunkWriterTrackGetPreferredChunkDuration(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        result = 0;
        v4 = *(a2 + 76);
        *(a3 + 16) = *(a2 + 92);
        *a3 = v4;
      }

      else
      {
        MediaDataChunkWriterTrackGetPreferredChunkDuration_cold_1(&v5);
        return v5;
      }
    }

    else
    {
      MediaDataChunkWriterTrackGetPreferredChunkDuration_cold_2(&v6);
      return v6;
    }
  }

  else
  {
    MediaDataChunkWriterTrackGetPreferredChunkDuration_cold_3(&v7);
    return v7;
  }

  return result;
}

uint64_t MediaDataChunkWriterTrackSetPreferredChunkAlignment(uint64_t a1, uint64_t a2, int a3)
{
  if (a1)
  {
    if (a2)
    {
      if (a3 < 0)
      {
        MediaDataChunkWriterTrackSetPreferredChunkAlignment_cold_1(&v4);
        return v4;
      }

      else
      {
        result = 0;
        *(a2 + 100) = a3;
      }
    }

    else
    {
      MediaDataChunkWriterTrackSetPreferredChunkAlignment_cold_2(&v5);
      return v5;
    }
  }

  else
  {
    MediaDataChunkWriterTrackSetPreferredChunkAlignment_cold_3(&v6);
    return v6;
  }

  return result;
}

uint64_t MediaDataChunkWriterTrackGetPreferredChunkAlignment(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        result = 0;
        *a3 = *(a2 + 100);
      }

      else
      {
        MediaDataChunkWriterTrackGetPreferredChunkAlignment_cold_1(&v4);
        return v4;
      }
    }

    else
    {
      MediaDataChunkWriterTrackGetPreferredChunkAlignment_cold_2(&v5);
      return v5;
    }
  }

  else
  {
    MediaDataChunkWriterTrackGetPreferredChunkAlignment_cold_3(&v6);
    return v6;
  }

  return result;
}

uint64_t appendBlockBufferToSampleDataDestination(uint64_t a1, uint64_t a2, int a3, CMBlockBufferRef theBuffer, size_t offset, size_t a6)
{
  v6 = a6;
  if (a3 == 1)
  {
    if (a6)
    {
      while (1)
      {
        v13 = 0;
        lengthAtOffsetOut = 0;
        result = CMBlockBufferGetDataPointer(theBuffer, offset, &lengthAtOffsetOut, 0, &v13);
        if (result)
        {
          break;
        }

        v12 = v6 >= lengthAtOffsetOut ? lengthAtOffsetOut : v6;
        lengthAtOffsetOut = v12;
        result = appendDataViaDataBuffer(a1, a2, v12);
        if (result)
        {
          break;
        }

        offset += lengthAtOffsetOut;
        v6 -= lengthAtOffsetOut;
        if (!v6)
        {
          return 0;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  else if (a3)
  {
    result = appendDataBufferBBufReferenceToAggregateBBufAndBeginNewDataBuffer(a1, a2, 0);
    if (!result)
    {

      return appendBlockBufferReferenceToAggregateBBuf(a1, a2, theBuffer, offset, v6);
    }
  }

  else
  {
    result = appendDataBufferBBufReferenceToAggregateBBufAndBeginNewDataBuffer(a1, a2, 0);
    if (!result)
    {
      result = appendAggregateBBufToByteStream(a1);
      if (!result)
      {

        return appendBlockBufferToByteStream();
      }
    }
  }

  return result;
}

void mdcwMemPoolBBufSourceRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t OUTLINED_FUNCTION_12_57(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, CMTime *time2, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t time2a, uint64_t time2_8, uint64_t time2_16, uint64_t a46, CMTime *time1, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t time1a)
{

  return CMTimeCompare(&time1a, &time2a);
}

uint64_t FigCaptionRendererTimerStart(uint64_t a1)
{
  v2 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(a1 + 64));
  *(a1 + 72) = v2;
  if (v2)
  {
    v3 = FigCFWeakReferenceHolderCreateWithReferencedObject();
    dispatch_source_set_cancel_handler_f(*(a1 + 72), fcrTimerOnTimerCanceled);
    dispatch_source_set_event_handler_f(*(a1 + 72), fcrTimerDispatchFunctionCallback);
    dispatch_set_context(*(a1 + 72), v3);
    dispatch_source_set_timer(*(a1 + 72), 0, 1000000 * *(a1 + 36), 0);
    dispatch_resume(*(a1 + 72));
  }

  *(a1 + 33) = 0;
  return 0;
}

void fcrTimerOnTimerCanceled(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

void fcrTimerDispatchFunctionCallback()
{
  v0 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v0)
  {
    v1 = v0;
    if (*(v0 + 24))
    {
      v2 = FigCFWeakReferenceHolderCopyReferencedObject();
      if (v2)
      {
        v3 = v2;
        v1[3]();
        CFRelease(v3);
      }
    }

    CFRelease(v1);
  }
}

uint64_t FigCaptionRendererTimerStop(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    dispatch_source_cancel(v2);
    v3 = *(a1 + 72);
    if (v3)
    {
      dispatch_release(v3);
      *(a1 + 72) = 0;
    }
  }

  *(a1 + 33) = 1;
  return 0;
}

uint64_t FigCaptionRendererTimerCreate(int a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v12 = *MEMORY[0x1E69E9840];
  *a4 = 0;
  MEMORY[0x19A8D3660](&FigCaptionRendererTimerLocalGetTypeID_sRegisterFigCaptionRendererTimerOnce, RegisterFigCaptionRendererTimerClass);
  Instance = _CFRuntimeCreateInstance();
  *(Instance + 32) = 256;
  *(Instance + 36) = a1;
  snprintf(__str, 0x100uLL, "com.apple.coremedia.figfcrtimer.soQueue<%p>", Instance);
  *(Instance + 64) = dispatch_queue_create(__str, 0);
  if (a2 && a3 && (*(Instance + 24) = a2, v9 = FigCFWeakReferenceHolderCreateWithReferencedObject(), (*(Instance + 16) = v9) == 0))
  {
    FigCaptionRendererTimerCreate_cold_1(Instance, __str);
    return *__str;
  }

  else
  {
    result = 0;
    *a4 = Instance;
  }

  return result;
}

uint64_t RegisterFigCaptionRendererTimerClass()
{
  result = _CFRuntimeRegisterClass();
  sFigCaptionRendererTimerID = result;
  return result;
}

double FigCaptionRendererTimerInit(_OWORD *a1)
{
  result = 0.0;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  return result;
}

void FigCaptionRendererTimer_Finalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    dispatch_release(v3);
    *(a1 + 64) = 0;
  }
}

__CFString *FigCaptionRendererTimerCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigCaptionRendererTimer %p>", a1);
  return Mutable;
}

uint64_t FigSampleGeneratorServerStart()
{
  v3[0] = 1;
  v3[1] = HandleSampleGeneratorMessage;
  v3[2] = HandleNoReplyFigSampleGeneratorMessage;
  memset(&v3[3], 0, 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 1107296256;
  block[2] = __FigSampleGeneratorServerStart_block_invoke;
  block[3] = &__block_descriptor_tmp_158;
  __copy_constructor_8_8_t0w8_pa0_45604_8_pa0_22587_16_pa0_57319_24_pa0_49646_32_pa0_60888_40(v2, v3);
  v2[6] = 0;
  if (FigSampleGeneratorServerStart_sFigSampleGeneratorServerOnce != -1)
  {
    dispatch_once(&FigSampleGeneratorServerStart_sFigSampleGeneratorServerOnce, block);
  }

  return FigSampleGeneratorServerStart_sFigSampleGeneratorServerStartError;
}

dispatch_queue_t __FigSampleGeneratorServerStart_block_invoke()
{
  if (FigServer_IsMediaparserd())
  {
    fig_log_get_emitter();
    v0 = FigSignalErrorAtGM();
  }

  else
  {
    FigServer_IsMediaplaybackd();
    v0 = FigXPCServerStart();
  }

  FigSampleGeneratorServerStart_sFigSampleGeneratorServerStartError = v0;
  result = dispatch_queue_create("com.apple.coremedia.samplegenerator.transport", 0);
  gFigSampleGeneratorServerCallbackQueue = result;
  return result;
}

void *__copy_constructor_8_8_t0w8_pa0_45604_8_pa0_22587_16_pa0_57319_24_pa0_49646_32_pa0_60888_40(void *result, void *a2)
{
  *result = *a2;
  result[1] = a2[1];
  result[2] = a2[2];
  result[3] = a2[3];
  result[4] = a2[4];
  result[5] = a2[5];
  return result;
}

uint64_t __FigServedSampleGeneratorObjectStateGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED4CB7C8 = result;
  return result;
}

double FigServedSampleGeneratorObjectState_Init(_OWORD *a1)
{
  result = 0.0;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[1] = 0u;
  return result;
}

void FigServedSampleGeneratorObjectState_Finalize(void *context)
{
  v2 = context[2];
  if (v2)
  {
    CFRelease(v2);
    context[2] = 0;
  }

  v3 = context[3];
  if (v3)
  {
    os_release(v3);
    context[3] = 0;
  }

  v4 = context[4];
  if (v4)
  {
    v5 = *(v4 + 16);
    if (v5)
    {
      CFDictionaryApplyFunction(v5, sampleBufferHandler_removeListenersApply, context);
    }
  }

  FigCFWeakReferenceStore();
  FigCFWeakReferenceStore();
  DestroySampleBufferHandler(context[4]);
  context[4] = 0;
}

__CFString *FigServedSampleGeneratorObjectState_CopyDebugDesc(uint64_t a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppendFormat(Mutable, 0, @"FigServedSampleGeneratorObjectState %p", a1);
  return Mutable;
}

uint64_t sampleBufferHandler_removeListenersApply()
{
  CMNotificationCenterGetDefaultLocalCenter();

  return FigNotificationCenterRemoveWeakListener();
}

void DestroySampleBufferHandler(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      CMBufferQueueRemoveTrigger(*a1, v2);
      *(a1 + 8) = 0;
    }

    if (*a1)
    {
      CMBufferQueueReset(*a1);
    }

    v3 = *(a1 + 40);
    if (v3)
    {
      *(a1 + 40) = 0;
      xpc_release(v3);
    }

    FigSimpleMutexLock();
    v4 = *(a1 + 16);
    if (v4)
    {
      CFRelease(v4);
      *(a1 + 16) = 0;
    }

    if (*a1)
    {
      CFRelease(*a1);
      *a1 = 0;
    }

    FigSimpleMutexUnlock();
    v5 = *(a1 + 48);
    if (v5)
    {
      CFRelease(v5);
      *(a1 + 48) = 0;
    }

    v6 = *(a1 + 56);
    if (v6)
    {
      CFRelease(v6);
      *(a1 + 56) = 0;
    }

    FigSimpleMutexDestroy();
    *(a1 + 24) = 0;
    v7 = *(a1 + 64);
    if (v7)
    {
      CFRelease(v7);
      *(a1 + 64) = 0;
    }

    v8 = *(a1 + 72);
    if (v8)
    {
      CFRelease(v8);
    }

    free(a1);
  }
}

uint64_t sampleBufferGenerator_dataFailedCallback(uint64_t a1, uint64_t a2, uint64_t a3, opaqueCMSampleBuffer *a4)
{
  v5 = *(a2 + 32);
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();

  return sampleBufferGenerator_sendDataFailedMessage(a4, v5);
}

uint64_t sampleBufferGenerator_sendDataFailedMessage(opaqueCMSampleBuffer *a1, uint64_t a2)
{
  value = 0;
  xdict = 0;
  if (a1)
  {
    if (a2)
    {
      FigSimpleMutexLock();
      if (CFDictionaryGetValueIfPresent(*(a2 + 16), a1, &value))
      {
        v5 = 0;
        CFNumberGetValue(value, kCFNumberSInt64Type, &v5);
        statusOut = FigXPCCreateBasicMessage();
        if (!statusOut)
        {
          xpc_dictionary_set_int64(xdict, "RequestID", v5);
          CMSampleBufferHasDataFailed(a1, &statusOut);
          xpc_dictionary_set_int64(xdict, "SampleBufferErrorReturn", statusOut);
          xpc_connection_send_message(*(a2 + 40), xdict);
          CFDictionaryRemoveValue(*(a2 + 16), a1);
        }
      }

      else
      {
        fig_log_get_emitter();
        statusOut = FigSignalErrorAtGM();
      }

      FigSimpleMutexUnlock();
    }

    else
    {
      sampleBufferGenerator_sendDataFailedMessage_cold_1(&statusOut);
    }
  }

  else
  {
    sampleBufferGenerator_sendDataFailedMessage_cold_2(&statusOut);
  }

  return FigXPCRelease();
}

void sampleBufferGenerator_bufferQueue_dataReadyCallback(uint64_t a1)
{
  if (a1)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __sampleBufferGenerator_bufferQueue_dataReadyCallback_block_invoke;
    block[3] = &__block_descriptor_tmp_26_0;
    block[4] = a1;
    dispatch_async(gFigSampleGeneratorServerCallbackQueue, block);
  }

  else
  {
    sampleBufferGenerator_bufferQueue_dataReadyCallback_cold_1();
  }
}

uint64_t sampleBufferGeneratorServer_createSampleBufferGeneratorRequestFromXPCMessage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a1;
  if (!a2)
  {
    sampleBufferGeneratorServer_createSampleBufferGeneratorRequestFromXPCMessage_cold_6(&v15);
    goto LABEL_24;
  }

  if (!a4)
  {
    sampleBufferGeneratorServer_createSampleBufferGeneratorRequestFromXPCMessage_cold_5(&v15);
    goto LABEL_24;
  }

  *(a4 + 24) = *(a2 + 16);
  *(a4 + 8) = *a2;
  *(a4 + 36) = *(a2 + 20);
  v7 = MEMORY[0x19A8D0E00](a3 + 48);
  v8 = MEMORY[0x19A8D0E00](a3 + 56);
  if (!(v7 | v8))
  {
    sampleBufferGeneratorServer_createSampleBufferGeneratorRequestFromXPCMessage_cold_4(&v15);
LABEL_24:
    v12 = v15;
    if (!v15)
    {
      return v12;
    }

    goto LABEL_15;
  }

  v9 = v8;
  if (FigFormatReaderServerIsObjectIDLocallyServed(*(a2 + 32)))
  {
    if (!FigXPCFormatReaderServerCopySampleCursorForID(*(a2 + 32), a4))
    {
      goto LABEL_6;
    }

LABEL_18:
    sampleBufferGeneratorServer_createSampleBufferGeneratorRequestFromXPCMessage_cold_1(&v15);
    goto LABEL_27;
  }

  if (FigFormatReaderXPCRemoteCopySampleCursorForObjectIDFromOtherProcess())
  {
    goto LABEL_18;
  }

LABEL_6:
  v10 = *(a2 + 40);
  if (v10)
  {
    if (FigFormatReaderServerIsObjectIDLocallyServed(v10))
    {
      if (!FigXPCFormatReaderServerCopySampleCursorForID(*(a2 + 40), (a4 + 28)))
      {
        goto LABEL_9;
      }
    }

    else if (!FigFormatReaderXPCRemoteCopySampleCursorForObjectIDFromOtherProcess())
    {
      goto LABEL_9;
    }

    sampleBufferGeneratorServer_createSampleBufferGeneratorRequestFromXPCMessage_cold_2(&v15);
    goto LABEL_27;
  }

LABEL_9:
  *(a4 + 52) = 0;
  *(a4 + 44) = 0;
  v11 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &v14);
  *(a4 + 60) = v11;
  if (v11)
  {
    v12 = 0;
    if (!v7)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  sampleBufferGeneratorServer_createSampleBufferGeneratorRequestFromXPCMessage_cold_3(&v15);
LABEL_27:
  v12 = v15;
  if (v7)
  {
LABEL_11:
    CFRelease(v7);
  }

LABEL_12:
  if (v9)
  {
    CFRelease(v9);
  }

  if (v12)
  {
LABEL_15:
    sampleBufferGeneratorServer_destroySampleBufferGeneratorRequest(a4);
  }

  return v12;
}

void sampleBufferGeneratorServer_destroySampleBufferGeneratorRequest(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 28);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 60);
  if (v4)
  {

    CFRelease(v4);
  }
}

void sampleBufferGeneratorServer_destroyCallbackParameters(void *a1)
{
  if (a1)
  {
    v2 = a1[1];
    if (v2)
    {
      CFRelease(v2);
      a1[1] = 0;
    }

    v3 = a1[2];
    if (v3)
    {
      a1[2] = 0;
      xpc_release(v3);
    }

    free(a1);
  }
}

uint64_t sampleBufferGeneratorServer_enqueuePendingSampleBuffers(CFArrayRef theArray, uint64_t a2)
{
  value = 0;
  if (!a2)
  {
    v10 = 705;
LABEL_17:
    sampleBufferGeneratorServer_enqueuePendingSampleBuffers_cold_1(v10, &v11);
    return v11;
  }

  if (!theArray)
  {
    v10 = 706;
    goto LABEL_17;
  }

  v3 = *(a2 + 32);
  if (!v3)
  {
    v10 = 709;
    goto LABEL_17;
  }

  Count = CFArrayGetCount(theArray);
  if (Count < 1)
  {
    return 0;
  }

  v5 = Count;
  for (i = 0; i != v5; ++i)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterAddWeakListener();
    v8 = CMBufferQueueEnqueue(*v3, ValueAtIndex);
    if (v8)
    {
      v11 = 0;
      FigSimpleMutexLock();
      if (CFDictionaryGetValueIfPresent(v3[2], ValueAtIndex, &value))
      {
        CFNumberGetValue(value, kCFNumberSInt64Type, &v11);
        CFDictionaryRemoveValue(v3[2], ValueAtIndex);
      }

      FigSimpleMutexUnlock();
    }
  }

  return v8;
}

uint64_t FigCFCaptionRendererCreate()
{
  MEMORY[0x19A8D3660](&FigCFCaptionRendererGetClassID_sRegisterFigCFCaptionRendererOnce, RegisterFigCFCaptionRendererClass);
  if (CMDerivedObjectCreate())
  {
    return 0;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    return 0;
  }

  v1 = DerivedStorage;
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  *(v1 + 24) = 0;
  *(v1 + 344) = 0;
  v2 = FigSimpleMutexCreate();
  *(v1 + 32) = v2;
  if (!v2)
  {
    return 0;
  }

  *(v1 + 352) = 1;
  v3 = FigSimpleMutexCreate();
  *(v1 + 288) = v3;
  if (!v3)
  {
    return 0;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  FigGetNotifyingObjectForMediaAccessibilityChanged();
  FigNotificationCenterAddWeakListener();
  FigCaptionLayoutCopyMAXCaptionSystemSettings(v1 + 80);
  return 0;
}

uint64_t fcfcr_MAXCaptionSettingsChangedNotificationCallBack()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  FigCaptionLayoutCopyMAXCaptionSystemSettings(DerivedStorage + 80);
  FigSimpleMutexUnlock();
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

void FigCFCaptionRendererGetCaptionElementRect(uint64_t a1, _OWORD *a2, int a3, int a4, _DWORD *a5, CGRect *a6, double a7, double a8, double a9, double a10, double a11, double a12)
{
  v12 = a2[1];
  v14[0] = *a2;
  v14[1] = v12;
  v13 = a2[3];
  v14[2] = a2[2];
  v14[3] = v13;
  FigCFCaptionRendererGetCaptionElementWindowProperties(a7, a8, a9, a10, a11, a12, a1, v14, a3, a4, a5, a6, 0, 0, 0);
}

void FigCFCaptionRendererGetCaptionElementWindowProperties(double a1, double a2, double a3, double a4, double a5, double a6, uint64_t a7, double *a8, int a9, int a10, _DWORD *a11, CGRect *a12, BOOL *a13, void *a14, _BYTE *a15)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v20 = *a8;
  v21 = a8[2];
  v22 = a8[4];
  v23 = a8[6];
  v195 = 0;
  v194 = 0u;
  v193 = 0u;
  v192 = 0u;
  v191 = 0u;
  v190 = 0u;
  v189 = 0u;
  v188 = 0u;
  v187 = 0u;
  v186 = 0u;
  v185 = 0u;
  v184 = 0u;
  theArray = 0;
  FigSimpleMutexLock();
  v24 = *(DerivedStorage + 80);
  if (v24)
  {
    v24 = CFRetain(v24);
  }

  v183[0] = v24;
  v25 = *(DerivedStorage + 88);
  if (v25)
  {
    v25 = CFRetain(v25);
  }

  v183[1] = v25;
  v26 = *(DerivedStorage + 96);
  if (v26)
  {
    v26 = CFRetain(v26);
  }

  v183[2] = v26;
  v27 = *(DerivedStorage + 104);
  if (v27)
  {
    v27 = CFRetain(v27);
  }

  *&v184 = v27;
  v28 = *(DerivedStorage + 120);
  if (v28)
  {
    v28 = CFRetain(v28);
  }

  *&v185 = v28;
  v29 = *(DerivedStorage + 128);
  if (v29)
  {
    v29 = CFRetain(v29);
  }

  *(&v185 + 1) = v29;
  v30 = *(DerivedStorage + 136);
  if (v30)
  {
    v30 = CFRetain(v30);
  }

  *&v186 = v30;
  v31 = *(DerivedStorage + 144);
  if (v31)
  {
    v31 = CFRetain(v31);
  }

  *(&v186 + 1) = v31;
  v32 = *(DerivedStorage + 152);
  if (v32)
  {
    v32 = CFRetain(v32);
  }

  *&v187 = v32;
  v33 = *(DerivedStorage + 160);
  if (v33)
  {
    v33 = CFRetain(v33);
  }

  *(&v187 + 1) = v33;
  v34 = *(DerivedStorage + 168);
  if (v34)
  {
    v34 = CFRetain(v34);
  }

  *&v188 = v34;
  v35 = *(DerivedStorage + 176);
  if (v35)
  {
    v35 = CFRetain(v35);
  }

  *(&v188 + 1) = v35;
  *(&v184 + 1) = *(DerivedStorage + 112);
  v190 = *(DerivedStorage + 200);
  v189 = *(DerivedStorage + 184);
  v191 = *(DerivedStorage + 216);
  v192 = *(DerivedStorage + 232);
  v193 = *(DerivedStorage + 248);
  v194 = *(DerivedStorage + 264);
  v195 = *(DerivedStorage + 280);
  FigSimpleMutexUnlock();
  v196 = 0;
  v197.a = 0.0;
  FigSimpleMutexLock();
  v36 = *(DerivedStorage + 24);
  if (v36)
  {
    v37 = CFRetain(v36);
  }

  else
  {
    v37 = 0;
  }

  v38 = *(DerivedStorage + 296);
  if (v38)
  {
    v181 = CFRetain(v38);
  }

  else
  {
    v181 = 0;
  }

  v39 = *(DerivedStorage + 304);
  if (v39)
  {
    v180 = CFRetain(v39);
  }

  else
  {
    v180 = 0;
  }

  v40 = *(DerivedStorage + 328);
  if (v40)
  {
    v41 = CFRetain(v40);
  }

  else
  {
    v41 = 0;
  }

  FigSimpleMutexUnlock();
  *(DerivedStorage + 336) = 0;
  cf = v41;
  v42 = FigCaptionLayoutCopyEffectiveFontNamePlusInfoAndCreateElementGeometryArrays(v37, a9, v181, v180, *DerivedStorage, *(DerivedStorage + 8), *(DerivedStorage + 16), 0, a1, a2, a3, a4, v183, v41, (DerivedStorage + 336), (DerivedStorage + 40), (DerivedStorage + 48), &v197, &v196, &theArray, (DerivedStorage + 64), (DerivedStorage + 56));
  v43 = v42;
  v44 = *DerivedStorage;
  *DerivedStorage = v42;
  if (v42)
  {
    CFRetain(v42);
  }

  if (v44)
  {
    CFRelease(v44);
  }

  v45 = *(DerivedStorage + 8);
  a = v197.a;
  *(DerivedStorage + 8) = v197.a;
  if (a != 0.0)
  {
    CFRetain(*&a);
  }

  if (v45)
  {
    CFRelease(v45);
  }

  v47 = *(DerivedStorage + 16);
  v48 = v196;
  *(DerivedStorage + 16) = v196;
  if (v48)
  {
    CFRetain(v48);
  }

  if (v47)
  {
    CFRelease(v47);
  }

  if (*&v197.a)
  {
    CFRelease(*&v197.a);
  }

  if (v196)
  {
    CFRelease(v196);
  }

  v162 = DerivedStorage;
  if (v43)
  {
    CFRelease(v43);
  }

  if (v37)
  {
    CFRelease(v37);
  }

  if (!CFPreferencesGetAppBooleanValue(@"disable_caption_repositioning", @"com.apple.coremedia", 0))
  {
    v55 = *MEMORY[0x1E695F058];
    v56.f64[0] = a1;
    v56.f64[1] = a2;
    v57.f64[0] = a3;
    v57.f64[1] = a4;
    __asm { FMOV            V1.2D, #2.0 }

    v63 = vrndaq_f64(vmlaq_f64(v57, _Q1, v56));
    if (a5 >= -0.5 && a6 >= -0.5 || (v64.f64[0] = a3, v64.f64[1] = a4, (vmaxv_u16(vmovn_s32(vuzp1q_s32(vclezq_f64(v64), vclezq_f64(v63)))) & 1) != 0) || (v65 = theArray, v66 = vdivq_f64(v63, v57), v66.f64[0] == 1.0) && v66.f64[1] == 1.0)
    {
      v67 = 0;
    }

    else
    {
      v152 = 0;
      __asm { FMOV            V0.2D, #0.5 }

      v160 = v63;
      *allocatorb = _Q0;
      v179 = v66;
      v170 = *MEMORY[0x1E695F058];
      v172 = vaddq_f64(vmulq_f64(v63, _Q0), v55);
      if (!theArray)
      {
        goto LABEL_152;
      }

LABEL_151:
      for (i = CFArrayGetCount(v65); v152 < i; i = 0)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v65, v152);
        v156 = ValueAtIndex[2];
        v157 = vsubq_f64(ValueAtIndex[4], v156);
        v158 = vmulq_f64(ValueAtIndex[3], *allocatorb);
        v159 = vsubq_f64(vmlaq_f64(v172, v179, vsubq_f64(vaddq_f64(v156, v158), v172)), v158);
        ValueAtIndex[2] = v159;
        ValueAtIndex[4] = vaddq_f64(v157, v159);
        ++v152;
        if (v65)
        {
          goto LABEL_151;
        }

LABEL_152:
        ;
      }

      v67 = 1;
      v55 = v170;
      v63 = v160;
    }

    if (v22 > 0.0 || v23 > 0.0 || v20 > 0.0 || v21 > 0.0)
    {
      v68 = 0;
      if (a9 == 1)
      {
        v69 = v22;
      }

      else
      {
        v69 = v23;
      }

      v70 = v63.f64[0] - (v20 + v21);
      if (v70 > 0.0)
      {
        v71 = v63.f64[1] - (v22 + v23);
        if (v71 > 0.0)
        {
          v169 = v55;
          MutableCopy = CFArrayCreateMutableCopy(*MEMORY[0x1E695E480], 0, theArray);
          if (MutableCopy)
          {
            v73 = MutableCopy;
            v74 = v69 + v169.f64[1];
            v196 = 0;
            v197.a = 0.0;
            v75 = fcfcr_sweepBottomUp(MutableCopy, &v197.a, v74);
            v76 = v71 + v74;
            Count = CFArrayGetCount(v73);
            v198.location = 0;
            v198.length = Count;
            CFArraySortValues(v73, v198, fcfcr_objComparatorTop, 0);
            if (Count < 1)
            {
              v79 = 0;
            }

            else
            {
              v78 = 0;
              v79 = 0;
              v80 = v71 + v74;
              do
              {
                v81 = CFArrayGetValueAtIndex(v73, v78);
                fcfcr_getElementRect(v81);
                v84 = v82 + v83 - v76;
                if (v84 > 0.0)
                {
                  v81[1].origin.y = v81[1].origin.y - v84;
                  v81[2].origin.y = v81[2].origin.y - v84;
                  v82 = v82 - v84;
                  v79 = 1;
                }

                v80 = fmin(v80, v82);
                ++v78;
              }

              while (Count != v78);
              if ((v79 & (Count != 1)) == 1)
              {
                v177 = v20;
                v85 = 1;
                do
                {
                  v86 = CFArrayGetValueAtIndex(v73, v85);
                  ElementRect = fcfcr_getElementRect(v86);
                  v89 = v88;
                  v91 = v90;
                  v93 = v92;
                  v94 = 0;
                  do
                  {
                    v95 = CFArrayGetValueAtIndex(v73, v94);
                    v96 = fcfcr_getElementRect(v95);
                    v98 = v97;
                    if (fcfcr_isOverlap(ElementRect, v89, v91, v93, v96, v97, v99, v100))
                    {
                      v101 = v93 + v89 - v98;
                      v86[1].origin.y = v86[1].origin.y - v101;
                      v86[2].origin.y = v86[2].origin.y - v101;
                      v89 = v89 - v101;
                      v80 = fmin(v80, v89);
                    }

                    ++v94;
                  }

                  while (v85 != v94);
                  ++v85;
                }

                while (v85 != Count);
                v79 = 1;
                v76 = v80;
                v20 = v177;
              }

              else
              {
                v76 = v80;
              }
            }

            v106 = v20 + v169.f64[0];
            if (v76 < v74)
            {
              fcfcr_sweepBottomUp(v73, &v197.a, (v74 + v76) * 0.5);
            }

            v107 = fcfcr_sweepLeftRight(v73, &v196, v106);
            v108 = v70 + v106;
            v109 = CFArrayGetCount(v73);
            v199.location = 0;
            v199.length = v109;
            CFArraySortValues(v73, v199, fcfcr_objComparatorRight, 0);
            if (v109 < 1)
            {
              v111 = 0;
            }

            else
            {
              v110 = 0;
              v111 = 0;
              v112 = v70 + v106;
              do
              {
                v113 = CFArrayGetValueAtIndex(v73, v110);
                v114 = fcfcr_getElementRect(v113);
                v116 = v114 + v115 - v108;
                if (v116 > 0.0)
                {
                  v113[1].origin.x = v113[1].origin.x - v116;
                  v113[2].origin.x = v113[2].origin.x - v116;
                  v114 = v114 - v116;
                  v111 = 1;
                }

                v112 = fmin(v112, v114);
                ++v110;
              }

              while (v109 != v110);
              if ((v111 & (v109 != 1)) == 1)
              {
                v117 = 1;
                do
                {
                  v118 = CFArrayGetValueAtIndex(v73, v117);
                  v119 = fcfcr_getElementRect(v118);
                  v121 = v120;
                  v123 = v122;
                  v125 = v124;
                  v126 = 0;
                  v127 = v119 + v122;
                  do
                  {
                    v128 = CFArrayGetValueAtIndex(v73, v126);
                    v129 = fcfcr_getElementRect(v128);
                    if (fcfcr_isOverlap(v119, v121, v123, v125, v129, v130, v131, v132))
                    {
                      v118[1].origin.x = v118[1].origin.x - (v127 - v129);
                      v118[2].origin.x = v118[2].origin.x - (v127 - v129);
                      v121 = v121 - (v127 - v129);
                      v112 = fmin(v112, v119);
                    }

                    ++v126;
                  }

                  while (v117 != v126);
                  ++v117;
                }

                while (v117 != v109);
                v111 = 1;
              }

              v108 = v112;
            }

            v68 = v111 | v107 | v79 | v75;
            if (v108 < v106)
            {
              fcfcr_sweepLeftRight(v73, &v196, (v106 + v108) * 0.5);
            }

            CFRelease(v73);
          }

          else
          {
            v68 = 0;
          }
        }
      }

      if (!(v67 | v68 & 1))
      {
        goto LABEL_58;
      }
    }

    else if (!v67)
    {
      goto LABEL_58;
    }

    v133 = 0;
    v134 = theArray;
    allocatora = *MEMORY[0x1E695E480];
    v178 = theArray;
    if (!theArray)
    {
      goto LABEL_138;
    }

LABEL_137:
    for (j = CFArrayGetCount(v134); v133 < j; j = 0)
    {
      v136 = CFArrayGetValueAtIndex(v134, v133);
      v137 = CFDictionaryGetCount(v136[12]);
      if (v137)
      {
        v138 = v137;
        v139 = *(v136 + 8) - FigCaptionLayoutGetBackgroundPathRectFromDictionary(v136[12]);
        v141 = *(v136 + 9) - v140;
        if (v139 != 0.0 || v141 != 0.0)
        {
          memset(&v197, 0, sizeof(v197));
          CGAffineTransformMakeTranslation(&v197, v139, v141);
          Mutable = CFDictionaryCreateMutable(allocatora, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          v143 = malloc_type_calloc(8uLL, v138, 0xE7E4059BuLL);
          v144 = malloc_type_calloc(8uLL, v138, 0x98C06A8EuLL);
          CFDictionaryGetKeysAndValues(v136[12], v143, v144);
          v145 = v143;
          v146 = v144;
          if (v138 >= 1)
          {
            do
            {
              v148 = *v145++;
              v147 = v148;
              v149 = *v146++;
              v150 = MEMORY[0x19A8CE0A0](v149, &v197);
              CFDictionaryAddValue(Mutable, v147, v150);
              CGPathRelease(v150);
              --v138;
            }

            while (v138);
          }

          free(v143);
          free(v144);
          v151 = v136[12];
          if (v151)
          {
            CFRelease(v151);
          }

          v136[12] = Mutable;
          v134 = v178;
        }
      }

      ++v133;
      if (v134)
      {
        goto LABEL_137;
      }

LABEL_138:
      ;
    }
  }

LABEL_58:
  FigSimpleMutexLock();
  FigCaptionLayoutReleaseCaptionElementArray(*(v162 + 312));
  *(v162 + 312) = theArray;
  FigSimpleMutexUnlock();
  FigCaptionLayoutClearMAXCaptionSettings(v183);
  if (cf)
  {
    CFRelease(cf);
  }

  v50 = a13;
  v49 = a14;
  v51 = a12;
  if (v181)
  {
    CFRelease(v181);
  }

  if (v180)
  {
    CFRelease(v180);
  }

  FigSimpleMutexLock();
  v52 = FigCaptionLayoutCopyCaptionElementArray(*(v162 + 312));
  v53 = *(v162 + 320);
  FigSimpleMutexUnlock();
  if (v52)
  {
    v54 = CFArrayGetCount(v52);
  }

  else
  {
    v54 = 0;
  }

  if (v54 >= a10)
  {
    v102 = a10;
  }

  else
  {
    v102 = v54;
  }

  if (v102 >= 1)
  {
    for (k = 0; k != v102; ++k)
    {
      v104 = CFArrayGetValueAtIndex(v52, k);
      v105 = v104;
      if (v51)
      {
        v200 = CGRectUnion(v104[2], v104[1]);
        v201 = CGRectIntegral(v200);
        *v51++ = CGRectInset(v201, -v105[4].origin.x, -v105[4].origin.x);
      }

      if (v50)
      {
        *v50++ = CGColorGetAlpha(*&v105[3].size.height) > 0.0;
      }

      if (v49)
      {
        *v49++ = *&v105[4].origin.y;
      }
    }
  }

  if (a15)
  {
    *a15 = v53;
  }

  *a11 = v54;
  FigCaptionLayoutReleaseCaptionElementArray(v52);
}

void FigCFCaptionRendererDrawCaptionElementInContextForRectOrientation(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, unsigned int a6, CGContext *a7, int a8, _BYTE *a9)
{
  v142 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v14 = FigCaptionLayoutCopyCaptionElementArray(*(DerivedStorage + 312));
  v123 = DerivedStorage;
  FigSimpleMutexUnlock();
  if (v14)
  {
    Count = CFArrayGetCount(v14);
    if ((a6 & 0x80000000) != 0)
    {
      goto LABEL_94;
    }
  }

  else
  {
    Count = 0;
    if ((a6 & 0x80000000) != 0)
    {
LABEL_94:
      v101 = 0;
      goto LABEL_97;
    }
  }

  if (Count <= a6)
  {
    goto LABEL_94;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(v14, a6);
  v112 = *(DerivedStorage + 72);
  v113 = CFArrayGetCount(*(ValueAtIndex + 14));
  CGContextSaveGState(a7);
  v17 = *(ValueAtIndex + 15);
  if (v17)
  {
    v18 = CGColorRetain(v17);
    value = 0;
    v19 = *(DerivedStorage + 344);
    if (v19 && CFDictionaryGetValueIfPresent(v19, *MEMORY[0x1E69607C0], &value) && ((Components = CGColorGetComponents(v18), v21 = Components[3], longestEffectiveRange.location = 0, FigCFArrayGetCGFloatAtIndex(), v21 > 0.0) ? (v22 = v21 < *&longestEffectiveRange.location) : (v22 = 0), v22))
    {
      *&valuePtr.a = *Components;
      valuePtr.c = Components[2];
      *&valuePtr.d = longestEffectiveRange.location;
      DeviceRGB = CGColorSpaceCreateDeviceRGB();
      v23 = DeviceRGB;
      if (DeviceRGB)
      {
        v103 = CGColorCreate(DeviceRGB, &valuePtr.a);
        if (v103)
        {
          v104 = v103;
          CGColorRelease(v18);
          v18 = v104;
        }
      }
    }

    else
    {
      v23 = 0;
    }

    CGColorSpaceRelease(v23);
    v24 = *(ValueAtIndex + 17);
    v147.origin.x = a1;
    v147.origin.y = a2;
    v147.size.width = a3;
    v147.size.height = a4;
    y1 = CGRectGetMinY(v147);
    v148.origin.x = a1;
    v148.origin.y = a2;
    v148.size.width = a3;
    v148.size.height = a4;
    colora = CGRectGetMinX(v148);
    v149.origin.x = a1;
    v149.origin.y = a2;
    v149.size.width = a3;
    v149.size.height = a4;
    MaxY = CGRectGetMaxY(v149);
    v150.origin.x = a1;
    v150.origin.y = a2;
    v150.size.width = a3;
    v150.size.height = a4;
    MaxX = CGRectGetMaxX(v150);
    v151.origin.x = a1;
    v151.origin.y = a2;
    v151.size.width = a3;
    v151.size.height = a4;
    v152 = CGRectInset(v151, v24, v24);
    x = v152.origin.x;
    v133 = a1;
    y = v152.origin.y;
    width = v152.size.width;
    height = v152.size.height;
    fonta = CGRectGetMinY(v152);
    v153.origin.x = x;
    v153.origin.y = y;
    v153.size.width = width;
    v153.size.height = height;
    MinX = CGRectGetMinX(v153);
    v154.origin.x = x;
    v154.origin.y = y;
    v154.size.width = width;
    v154.size.height = height;
    v127 = CGRectGetMaxY(v154);
    v155.origin.x = x;
    v155.origin.y = y;
    a1 = v133;
    v155.size.width = width;
    v155.size.height = height;
    v32 = CGRectGetMaxX(v155);
    Mutable = CGPathCreateMutable();
    CGPathMoveToPoint(Mutable, 0, MinX, y1);
    CGPathAddLineToPoint(Mutable, 0, v32, y1);
    CGPathAddArcToPoint(Mutable, 0, MaxX, y1, MaxX, fonta, v24);
    CGPathAddLineToPoint(Mutable, 0, MaxX, v127);
    CGPathAddArcToPoint(Mutable, 0, MaxX, MaxY, v32, MaxY, v24);
    CGPathAddLineToPoint(Mutable, 0, MinX, MaxY);
    CGPathAddArcToPoint(Mutable, 0, colora, MaxY, colora, v127, v24);
    CGPathAddLineToPoint(Mutable, 0, colora, fonta);
    CGPathAddArcToPoint(Mutable, 0, colora, y1, MinX, y1, v24);
    CGPathCloseSubpath(Mutable);
    CGContextAddPath(a7, Mutable);
    CGColorRetain(v18);
    CGContextSetFillColorWithColor(a7, v18);
    CGColorRelease(v18);
    CGContextFillPath(a7);
    CGPathRelease(Mutable);
    CGColorRelease(v18);
  }

  v105 = v14;
  v110 = ValueAtIndex;
  v34 = *(ValueAtIndex + 12);
  v35 = CFDictionaryGetCount(v34);
  v36 = malloc_type_calloc(8uLL, v35, 0x828B053uLL);
  v37 = malloc_type_calloc(8uLL, v35, 0xB3389905uLL);
  CFDictionaryGetKeysAndValues(v34, v36, v37);
  if (v35 >= 1)
  {
    v38 = v37;
    v39 = v36;
    do
    {
      v40 = *v38++;
      CGContextAddPath(a7, v40);
      v41 = *v39++;
      v42 = CGColorRetain(v41);
      CGContextSetFillColorWithColor(a7, v42);
      CGColorRelease(v42);
      CGContextFillPath(a7);
      --v35;
    }

    while (v35);
  }

  free(v36);
  free(v37);
  v43 = v110;
  v156.origin.x = a1;
  v156.origin.y = a2;
  v156.size.width = a3;
  v156.size.height = a4;
  v157 = CGRectInset(v156, v110[16], v110[16]);
  v44 = v157.origin.x;
  v111 = v157.origin.y;
  v107 = v157.size.height;
  v108 = v157.size.width;
  v45 = CGRectGetWidth(v157);
  if (v113 < 1)
  {
    v101 = 0;
  }

  else
  {
    v46 = v45;
    v47 = 0;
    v48 = 0;
    attrName = *MEMORY[0x1E6965658];
    v49 = *MEMORY[0x1E695E480];
    v117 = *(MEMORY[0x1E695F060] + 8);
    v118 = *MEMORY[0x1E695F060];
    v122 = *MEMORY[0x1E6965A60];
    v121 = *MEMORY[0x1E6965A58];
    v50 = v44;
    v119 = v112;
    allocatora = *MEMORY[0x1E695E480];
    v124 = a8;
    v109 = v44;
    do
    {
      theArray = CFArrayGetValueAtIndex(*(v43 + 14), v48);
      if (!v48)
      {
        CFArrayGetValueAtIndex(theArray, 0);
        FigCFDictionaryGetCGFloatIfPresent();
      }

      if (a8 == 1)
      {
        v51 = v111 + v48 * v112 + 0.0;
      }

      else
      {
        v158.origin.x = v44;
        v158.origin.y = v111;
        v158.size.height = v107;
        v158.size.width = v108;
        v51 = v111 + CGRectGetHeight(v158) - (v48 + 1) * v112 - 0.0;
      }

      v52 = v50;
      v53 = v46;
      v54 = v119;
      v159 = CGRectIntegral(*(&v51 - 1));
      v50 = v159.origin.x;
      v55 = v159.origin.y;
      v46 = v159.size.width;
      v119 = v159.size.height;
      v125 = CFArrayGetCount(theArray);
      if (v125 < 1)
      {
        v100 = 0;
      }

      else
      {
        v114 = v50;
        v115 = v48;
        v116 = v47;
        v56 = 0;
        for (i = 0; i != v125; ++i)
        {
          v58 = CFArrayGetValueAtIndex(theArray, i);
          v59 = CFDictionaryGetValue(v58, @"S");
          longestEffectiveRange.location = 0;
          longestEffectiveRange.length = 0;
          if (v59)
          {
            v60 = v59;
            v128 = i;
            Length = CFAttributedStringGetLength(v59);
            if (Length)
            {
              v62 = Length;
              if (*(v123 + 352))
              {
                *(v123 + 352) = 0;
                if (dword_1EAF17750)
                {
                  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                  fig_log_call_emit_and_clean_up_after_send_and_compose();
                }
              }

              Attribute = CFAttributedStringGetAttribute(v60, 0, attrName, 0);
              CapHeight = CTFontGetCapHeight(Attribute);
              font = Attribute;
              XHeight = CTFontGetXHeight(Attribute);
              FigCFDictionaryGetCGFloatIfPresent();
              v50 = v50 + 0.0;
              Limit = FigCFRangeGetLimit();
              if (Limit < FigCFRangeGetLimit())
              {
                v68 = ((v119 - CapHeight) * 0.5 + (v119 - XHeight) * 0.5) * 0.5;
                while (1)
                {
                  v69 = FigCFRangeGetLimit();
                  v145.location = 0;
                  v145.length = v62;
                  AttributesAndLongestEffectiveRange = CFAttributedStringGetAttributesAndLongestEffectiveRange(v60, v69, v145, &longestEffectiveRange);
                  if (AttributesAndLongestEffectiveRange)
                  {
                    break;
                  }

LABEL_86:
                  v99 = FigCFRangeGetLimit();
                  if (v99 >= FigCFRangeGetLimit())
                  {
                    goto LABEL_87;
                  }
                }

                v71 = AttributesAndLongestEffectiveRange;
                v72 = CFAttributedStringCreateWithSubstring(v49, v60, longestEffectiveRange);
                v73 = CTLineCreateWithAttributedString(v72);
                LineWidthWithRange = FigCaptionLayoutGetLineWidthWithRange(v73, 0, longestEffectiveRange.length);
                v75 = CFDictionaryGetValue(v71, @"d");
                if (v75 && CFBooleanGetValue(v75))
                {
                  v76 = v68;
                  if (a8 == 1)
                  {
                    valuePtr.b = 0.0;
                    valuePtr.c = 0.0;
                    valuePtr.a = 1.0;
                    valuePtr.d = -1.0;
                    valuePtr.tx = 0.0;
                    valuePtr.ty = 0.0;
                    CGContextSetTextMatrix(a7, &valuePtr);
                    v76 = v119 - v68;
                  }

                  CGContextSetTextPosition(a7, v50, v55 + v76);
                  LODWORD(value) = 0;
                  FigCFDictionaryGetInt32IfPresent();
                  v77 = CFDictionaryGetValue(v71, @"e");
                  v78 = CFDictionaryGetValue(v71, @"q");
                  CGColorRetain(v77);
                  v79 = value;
                  v80 = CFAttributedStringGetLength(v72);
                  if (v79)
                  {
                    v81 = v80;
                    Size = CTFontGetSize(font);
                    v83 = Size;
                    if (v79 > 2)
                    {
                      v87 = Size * 0.147058824;
                      if (v83 > 60.0)
                      {
                        v87 = v83 * 0.147058824 * 0.5;
                      }

                      valuePtr.a = v87;
                      if (v78)
                      {
                        CFNumberGetValue(v78, kCFNumberCGFloatType, &valuePtr);
                        valuePtr.a = (valuePtr.a + valuePtr.a) * 100.0 / v83;
                      }

                      v88 = CFNumberCreate(allocatora, kCFNumberCGFloatType, &valuePtr);
                      color = CGColorCreateCopyWithAlpha(v77, 0.4);
                      TextPosition = CGContextGetTextPosition(a7);
                      v90 = a7;
                      MutableCopy = CFAttributedStringCreateMutableCopy(allocatora, 0, v72);
                      CGContextSetFontRenderingStyle();
                      CGContextSetShouldSmoothFonts(v90, 0);
                      CGContextSetShouldAntialias(v90, 1);
                      CGContextSetInterpolationQuality(v90, kCGInterpolationHigh);
                      CGContextSetLineJoin(v90, kCGLineJoinRound);
                      v143.location = 0;
                      v143.length = v81;
                      CFAttributedStringSetAttribute(MutableCopy, v143, v122, v88);
                      v144.location = 0;
                      v144.length = v81;
                      CFAttributedStringSetAttribute(MutableCopy, v144, v121, v77);
                      if (v79 != 3)
                      {
                        v146.height = v117;
                        v146.width = v118;
                        CGContextSetShadowWithColor(v90, v146, 4.0, color);
                      }

                      v92 = CTLineCreateWithAttributedString(MutableCopy);
                      CTLineDraw(v92, v90);
                      if (v92)
                      {
                        CFRelease(v92);
                      }

                      if (v79 != 3)
                      {
                        v93 = v83 * 0.0882352941;
                        if (v83 <= 60.0)
                        {
                          v94 = v83 * 0.0882352941;
                        }

                        else
                        {
                          v94 = v83 * 0.0882352941 / 1.5;
                        }

                        v95 = -v94;
                        if (v83 > 60.0)
                        {
                          v93 = v83 * 0.0882352941 / 1.5;
                        }

                        if (v124 == 1)
                        {
                          v96 = v93;
                        }

                        else
                        {
                          v96 = v95;
                        }

                        v97 = 0;
                        CGContextSetShadowWithColor(v90, *(&v96 - 1), 4.0, color);
                      }

                      CGContextSetTextPosition(v90, TextPosition.x, TextPosition.y);
                      v98 = CTLineCreateWithAttributedString(v72);
                      CTLineDraw(v98, v90);
                      v49 = allocatora;
                      if (v98)
                      {
                        CFRelease(v98);
                      }

                      if (MutableCopy)
                      {
                        CFRelease(MutableCopy);
                      }

                      if (color)
                      {
                        CFRelease(color);
                      }

                      a7 = v90;
                      if (v88)
                      {
                        CFRelease(v88);
                      }

                      a8 = v124;
                    }

                    else
                    {
                      if (v79 == 1)
                      {
                        v49 = allocatora;
                        if (Size <= 60.0)
                        {
                          v84 = Size * -0.0882352941;
                          v85 = v83 * 0.0882352941;
                        }

                        else
                        {
                          v84 = Size * 0.0882352941 / -1.5;
                          v85 = v83 * 0.0882352941 / 1.5;
                        }
                      }

                      else
                      {
                        v84 = Size * 0.0882352941;
                        if (v83 > 60.0)
                        {
                          v84 = v83 * 0.0882352941 / 1.5;
                        }

                        v85 = -v84;
                        v49 = allocatora;
                      }

                      if (a8 == 1)
                      {
                        v85 = v85 - v85;
                      }

                      CGContextSetShadowWithColor(a7, *&v84, 4.0, v77);
                      v86 = CTLineCreateWithAttributedString(v72);
                      CTLineDraw(v86, a7);
                      if (v86)
                      {
LABEL_80:
                        CFRelease(v86);
                      }
                    }
                  }

                  else
                  {
                    v86 = CTLineCreateWithAttributedString(v72);
                    CTLineDraw(v86, a7);
                    v49 = allocatora;
                    if (v86)
                    {
                      goto LABEL_80;
                    }
                  }

                  CGColorRelease(v77);
                }

                if (v73)
                {
                  CFRelease(v73);
                }

                v50 = v50 + LineWidthWithRange;
                if (v72)
                {
                  CFRelease(v72);
                }

                goto LABEL_86;
              }

LABEL_87:
              v56 = 1;
            }

            i = v128;
          }
        }

        v100 = v56 != 0;
        v43 = v110;
        v44 = v109;
        v47 = v116;
        v48 = v115;
        v50 = v114;
      }

      v47 |= v100;
      ++v48;
    }

    while (v48 != v113);
    v101 = v47 & 1;
  }

  v14 = v105;
  CGContextRestoreGState(a7);
LABEL_97:
  if (a9)
  {
    *a9 = v101;
  }

  FigCaptionLayoutReleaseCaptionElementArray(v14);
}

uint64_t captionRenderer_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMNotificationCenterGetDefaultLocalCenter();
  FigGetNotifyingObjectForMediaAccessibilityChanged();
  FigNotificationCenterRemoveWeakListener();
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

  v2 = *(DerivedStorage + 16);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 16) = 0;
  }

  v3 = *(DerivedStorage + 24);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 24) = 0;
  }

  v4 = *(DerivedStorage + 344);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 344) = 0;
  }

  FigSimpleMutexDestroy();
  *(DerivedStorage + 32) = 0;
  FigCaptionLayoutClearMAXCaptionSettings(DerivedStorage + 80);
  FigSimpleMutexDestroy();
  *(DerivedStorage + 288) = 0;
  v5 = *(DerivedStorage + 296);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 296) = 0;
  }

  v6 = *(DerivedStorage + 304);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 304) = 0;
  }

  FigCaptionLayoutReleaseCaptionElementArray(*(DerivedStorage + 312));
  *(DerivedStorage + 312) = 0;
  v7 = *(DerivedStorage + 328);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 328) = 0;
  }

  CMNotificationCenterGetDefaultLocalCenter();

  return FigNotificationCenterCheckWeakListenersWereRemovedBeforeFinalization();
}

uint64_t fcfcr_sweepBottomUp(const __CFArray *a1, double *a2, double a3)
{
  Count = CFArrayGetCount(a1);
  *a2 = a3;
  v32.location = 0;
  v32.length = Count;
  CFArraySortValues(a1, v32, fcfcr_objComparatorBottom, 0);
  if (Count < 1)
  {
    v8 = 0;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v7);
      fcfcr_getElementRect(ValueAtIndex);
      v12 = a3 - v10;
      if (a3 - v10 > 0.0)
      {
        ValueAtIndex[1].origin.y = v12 + ValueAtIndex[1].origin.y;
        ValueAtIndex[2].origin.y = v12 + ValueAtIndex[2].origin.y;
        v10 = v10 + v12;
        v8 = 1;
      }

      *a2 = fmax(*a2, v11 + v10);
      ++v7;
    }

    while (Count != v7);
    if ((v8 & (Count != 1)) == 1)
    {
      v13 = 1;
      do
      {
        v14 = CFArrayGetValueAtIndex(a1, v13);
        ElementRect = fcfcr_getElementRect(v14);
        v17 = v16;
        v19 = v18;
        v21 = v20;
        v22 = 0;
        do
        {
          v23 = CFArrayGetValueAtIndex(a1, v22);
          v24 = fcfcr_getElementRect(v23);
          v26 = v25;
          v28 = v27;
          if (fcfcr_isOverlap(ElementRect, v17, v19, v21, v24, v25, v29, v27))
          {
            v30 = v26 + v28 - v17;
            v14[1].origin.y = v30 + v14[1].origin.y;
            v14[2].origin.y = v30 + v14[2].origin.y;
            v17 = v17 + v30;
            *a2 = fmax(*a2, v21 + v17);
          }

          ++v22;
        }

        while (v13 != v22);
        ++v13;
      }

      while (v13 != Count);
    }
  }

  return v8 & 1;
}

uint64_t fcfcr_sweepLeftRight(const __CFArray *a1, double *a2, double a3)
{
  Count = CFArrayGetCount(a1);
  *a2 = a3;
  v31.location = 0;
  v31.length = Count;
  CFArraySortValues(a1, v31, fcfcr_objComparatorLeft, 0);
  if (Count < 1)
  {
    v8 = 0;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v7);
      ElementRect = fcfcr_getElementRect(ValueAtIndex);
      v12 = a3 - ElementRect;
      if (a3 - ElementRect > 0.0)
      {
        ValueAtIndex[1].origin.x = v12 + ValueAtIndex[1].origin.x;
        ValueAtIndex[2].origin.x = v12 + ValueAtIndex[2].origin.x;
        ElementRect = ElementRect + v12;
        v8 = 1;
      }

      *a2 = fmax(*a2, v11 + ElementRect);
      ++v7;
    }

    while (Count != v7);
    if ((v8 & (Count != 1)) == 1)
    {
      v13 = 1;
      do
      {
        v14 = CFArrayGetValueAtIndex(a1, v13);
        v15 = fcfcr_getElementRect(v14);
        v17 = v16;
        v19 = v18;
        v21 = v20;
        v22 = 0;
        do
        {
          v23 = CFArrayGetValueAtIndex(a1, v22);
          v24 = fcfcr_getElementRect(v23);
          v26 = v25;
          if (fcfcr_isOverlap(v15, v17, v19, v21, v24, v27, v25, v28))
          {
            v29 = v24 + v26 - v15;
            v14[1].origin.x = v29 + v14[1].origin.x;
            v14[2].origin.x = v29 + v14[2].origin.x;
            v15 = v15 + v29;
            *a2 = fmax(*a2, v19 + v15);
          }

          ++v22;
        }

        while (v13 != v22);
        ++v13;
      }

      while (v13 != Count);
    }
  }

  return v8 & 1;
}

uint64_t fcfcr_objComparatorBottom(CGRect *a1, CGRect *a2)
{
  fcfcr_getElementRect(a1);
  v4 = v3;
  fcfcr_getElementRect(a2);
  if (v4 < v5)
  {
    return -1;
  }

  else
  {
    return v4 > v5;
  }
}

double fcfcr_getElementRect(CGRect *a1)
{
  v5 = CGRectUnion(a1[2], a1[1]);
  v6 = CGRectIntegral(v5);
  v2 = -a1[4].origin.x;

  *&result = CGRectInset(v6, v2, v2);
  return result;
}

uint64_t fcfcr_objComparatorTop(CGRect *a1, CGRect *a2)
{
  fcfcr_getElementRect(a1);
  v4 = v3;
  v6 = v5;
  fcfcr_getElementRect(a2);
  v9 = v7 + v8;
  if (v4 + v6 > v9)
  {
    return -1;
  }

  else
  {
    return v4 + v6 < v9;
  }
}

uint64_t fcfcr_objComparatorLeft(CGRect *a1, CGRect *a2)
{
  ElementRect = fcfcr_getElementRect(a1);
  v4 = fcfcr_getElementRect(a2);
  if (ElementRect < v4)
  {
    return -1;
  }

  else
  {
    return ElementRect > v4;
  }
}

uint64_t fcfcr_objComparatorRight(CGRect *a1, CGRect *a2)
{
  ElementRect = fcfcr_getElementRect(a1);
  v5 = v4;
  v6 = fcfcr_getElementRect(a2);
  v8 = v6 + v7;
  if (ElementRect + v5 > v8)
  {
    return -1;
  }

  else
  {
    return ElementRect + v5 < v8;
  }
}

uint64_t FigSteeringParserStartServer()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2000000000;
  v6 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __FigSteeringParserStartServer_block_invoke;
  block[3] = &unk_1E7492F38;
  block[4] = &v3;
  if (FigSteeringParserStartServer_sFigSteeringParserServerSetupOnce != -1)
  {
    dispatch_once(&FigSteeringParserStartServer_sFigSteeringParserServerSetupOnce, block);
  }

  v0 = *(v4 + 6);
  _Block_object_dispose(&v3, 8);
  return v0;
}

uint64_t __FigSteeringParserStartServer_block_invoke(uint64_t a1)
{
  result = FigXPCServerStart();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void FPSupport_InvalidateMetadataStorage(void *a1)
{
  if (a1)
  {
    v2 = a1[6];
    if (v2)
    {
      CFRelease(v2);
      a1[6] = 0;
    }

    v3 = a1[2];
    if (v3)
    {
      CFRelease(v3);
      a1[2] = 0;
    }

    v4 = a1[5];
    if (v4)
    {
      CFRelease(v4);
      a1[5] = 0;
    }

    a1[3] = 0;
    a1[4] = 0;
  }
}

uint64_t FigMetadataStorageCreate(void *a1)
{
  if (!a1)
  {
    FigMetadataStorageCreate_cold_5(&v10);
    return v10;
  }

  v2 = *MEMORY[0x1E695E480];
  if (FigMetadataStorageGetTypeID_onceToken != -1)
  {
    FigMetadataStorageCreate_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    FigMetadataStorageCreate_cold_4(&v10);
    return v10;
  }

  v4 = Instance;
  v5 = CFDictionaryCreate(v2, 0, 0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v6 = CFArrayCreate(v2, 0, 0, 0);
  v7 = v6;
  if (v5)
  {
    if (v6)
    {
      v4[2] = CFRetain(v5);
      v8 = 0;
      v4[6] = CFRetain(v7);
    }

    else
    {
      FigMetadataStorageCreate_cold_2(&v10);
      v8 = v10;
    }

    CFRelease(v5);
    if (!v7)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  FigMetadataStorageCreate_cold_3(&v10);
  v8 = v10;
  if (v7)
  {
LABEL_9:
    CFRelease(v7);
  }

LABEL_10:
  if (v8)
  {
    CFRelease(v4);
  }

  else
  {
    *a1 = v4;
  }

  return v8;
}

uint64_t FPSupport_UpdateMetadataOutputs(void *a1, CFDictionaryRef theDict)
{
  if (!a1)
  {
    FPSupport_UpdateMetadataOutputs_cold_5(&v31);
    return v31;
  }

  v2 = theDict;
  Count = CFDictionaryGetCount(theDict);
  v5 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    if (Count < 1)
    {
      v7 = 0;
      keys = 0;
LABEL_25:
      v9 = CFRetain(Mutable);
      v8 = 0;
      goto LABEL_26;
    }

    if ((Count - 0x2000000000000000) < 0xE000000000000001)
    {
      v7 = 0;
LABEL_6:
      fig_log_get_emitter();
      v8 = FigSignalErrorAtGM();
      v9 = 0;
      free(0);
      goto LABEL_27;
    }

    v10 = malloc_type_malloc(8 * Count, 0x6004044C4A2DFuLL);
    v11 = malloc_type_malloc(8 * Count, 0x6004044C4A2DFuLL);
    v7 = v11;
    keys = v10;
    if (!v10)
    {
      goto LABEL_6;
    }

    if (v11)
    {
      v29 = v2;
      CFDictionaryGetKeysAndValues(v2, v10, v11);
      v12 = 0;
      v13 = MEMORY[0x1E695E9E8];
      while (1)
      {
        v14 = keys[v12];
        v15 = v7;
        v16 = v7[v12];
        v31 = 0;
        FigCFDictionaryGetDoubleIfPresent();
        Value = CFDictionaryGetValue(v16, @"MetadatadataOutputKey_MetadataIdentifiersToOutput");
        v18 = v31;
        if (FigMetadataOutputStorageGetTypeID_onceToken != -1)
        {
          FPSupport_UpdateMetadataOutputs_cold_1();
        }

        Instance = _CFRuntimeCreateInstance();
        if (Instance)
        {
          v20 = Instance;
          *(Instance + 16) = FigCFWeakReferenceHolderCreateWithReferencedObject();
          if (v14)
          {
            v21 = CFRetain(v14);
          }

          else
          {
            v21 = 0;
          }

          v20[4] = v21;
          v20[5] = v18;
          v20[7] = CFDictionaryCreateMutable(v5, 0, MEMORY[0x1E695E9D8], v13);
          if (Value)
          {
            v22 = CFRetain(Value);
          }

          else
          {
            v22 = 0;
          }

          v20[6] = v22;
          v20[8] = CFDictionaryCreateMutable(v5, 0, 0, v13);
          v9 = CFRetain(v20);
          CFRelease(v20);
        }

        else
        {
          v9 = 0;
          if (!FPSupport_UpdateMetadataOutputs_cold_2(&v31, &v32))
          {
            v8 = v32;
            v2 = v29;
            v7 = v15;
            goto LABEL_26;
          }
        }

        v7 = v15;
        CFArrayAppendValue(Mutable, v9);
        CFRelease(v9);
        if (Count == ++v12)
        {
          v2 = v29;
          goto LABEL_25;
        }
      }
    }

    FPSupport_UpdateMetadataOutputs_cold_3(&v31);
    v9 = 0;
  }

  else
  {
    FPSupport_UpdateMetadataOutputs_cold_4(&v31);
    v9 = 0;
    v7 = 0;
    keys = 0;
  }

  v8 = v31;
LABEL_26:
  free(keys);
LABEL_27:
  free(v7);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v8)
  {
    goto LABEL_40;
  }

  if (v9)
  {
    v23 = CFArrayGetCount(v9);
    if (v23 >= 1)
    {
      v24 = v23;
      for (i = 0; i != v24; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v9, i);
        ValueAtIndex[3] = CFRetain(a1);
      }
    }

    v27 = a1[6];
    a1[6] = v9;
    CFRetain(v9);
    if (!v27)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v27 = a1[6];
    a1[6] = 0;
    if (!v27)
    {
      goto LABEL_36;
    }
  }

  CFRelease(v27);
LABEL_36:
  v8 = a1[2];
  a1[2] = v2;
  if (v2)
  {
    CFRetain(v2);
  }

  if (v8)
  {
    CFRelease(v8);
    v8 = 0;
  }

LABEL_40:
  if (v9)
  {
    CFRelease(v9);
  }

  return v8;
}

uint64_t FPSupport_CreateAndAddMetadataOutputRenderPipelinesForTrackWithID(uint64_t a1, unsigned int a2, void *a3)
{
  v9 = a2;
  cf = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v5 = fpsupport_forEachMetadataOutput(a1, fpsupport_addRenderPipelineToMetadataOutputApplierFn, &v9);
  v6 = cf;
  if (a3 && !v5)
  {
    if (cf)
    {
      v7 = CFRetain(cf);
      v6 = cf;
    }

    else
    {
      v7 = 0;
    }

    *a3 = v7;
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return v5;
}

uint64_t fpsupport_forgetAboutRenderPipelineFromMetadataOutputApplierFn(uint64_t a1, const void *a2)
{
  if (CFDictionaryContainsKey(*(a1 + 56), a2))
  {
    fpsupport_unregisterOutputFromRenderPipelineCallbacks(a1, a2);
    CFDictionaryRemoveValue(*(a1 + 56), a2);
  }

  return 0;
}

__CFDictionary *FPSupport_CreateMetadataOutputDataCallbackPayload(const void *a1, const void *a2)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, @"MetadataOutputKey", a2);
  CFDictionarySetValue(Mutable, @"SampleBuffers", a1);
  FigCFDictionarySetInt32();
  return Mutable;
}

uint64_t registerFigMetadataStorage()
{
  result = _CFRuntimeRegisterClass();
  sFigMetadataStorageID = result;
  return result;
}

double fpsupport_figMetadataStorageInit(uint64_t a1)
{
  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

void fpsupport_figMetadataStorageFinalize(void *a1)
{
  if (a1)
  {
    FPSupport_InvalidateMetadataStorage(a1);
  }
}

uint64_t registerFigMetadataOutputStorage()
{
  result = _CFRuntimeRegisterClass();
  sFigMetadataOutputStorageID = result;
  return result;
}

double fpsupport_FigMetadataOutputStorageInit(uint64_t a1)
{
  *(a1 + 64) = 0;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void fpsupport_FigMetadataOutputStorageFinalize(CFDictionaryRef *context)
{
  CFDictionaryApplyFunction(context[7], fpsupport_destroyMetadataRenderPipelineCallbackContextApplierFn, context);
  v2 = context[3];
  if (v2)
  {
    CFRelease(v2);
    context[3] = 0;
  }

  v3 = context[4];
  if (v3)
  {
    CFRelease(v3);
    context[4] = 0;
  }

  v4 = context[6];
  if (v4)
  {
    CFRelease(v4);
    context[6] = 0;
  }

  v5 = context[7];
  if (v5)
  {
    CFRelease(v5);
    context[7] = 0;
  }

  v6 = context[2];
  if (v6)
  {
    CFRelease(v6);
    context[2] = 0;
  }

  v7 = context[8];
  if (v7)
  {
    CFRelease(v7);
    context[8] = 0;
  }
}

uint64_t fpsupport_destroyMetadataRenderPipelineCallbackContextApplierFn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  fpsupport_unregisterOutputFromRenderPipelineCallbacks(a3, a1);
  result = FigRenderPipelineGetFigBaseObject(a1);
  if (result)
  {
    v5 = result;
    VTable = CMBaseObjectGetVTable();
    v7 = *(VTable + 8);
    result = VTable + 8;
    v8 = *(v7 + 24);
    if (v8)
    {

      return v8(v5);
    }
  }

  return result;
}

void fpsupport_unregisterOutputFromRenderPipelineCallbacks(uint64_t a1, uint64_t a2)
{
  cf = 0;
  FigBaseObject = FigRenderPipelineGetFigBaseObject(a2);
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v3 && !v3(FigBaseObject, @"SourceSampleBufferQueue", *MEMORY[0x1E695E480], &cf))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void fpsupport_bufferQueueResetOutputCallback(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  v2 = *(a2 + 32);
  v4 = FigCFWeakReferenceHolderCopyReferencedObject();
  v5 = v4;
  v6 = *(v3 + 32);
  if (v6)
  {
    v7 = v4 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (!v4)
    {
      return;
    }
  }

  else
  {
    v6(v2, v4);
  }

  CFRelease(v5);
}

uint64_t fpsupport_forEachMetadataOutputApplierFn(uint64_t result, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    result = (*a2)(result, *(a2 + 8));
    *(a2 + 16) = result;
  }

  return result;
}

void fpsupport_simpleRenderPipelineCallback(const __CFDictionary *a1, void *a2)
{
  Value = CFDictionaryGetValue(a1, @"MetadataOutput");
  FigCFDictionaryGetInt32IfPresent();
  if (Value)
  {
    v4 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v4)
    {
      v5 = v4;
      if (*(v4 + 48))
      {
        v6 = CFDictionaryGetValue(*(v4 + 64), 0);
        if (v6)
        {
          v7 = v6;
          CFRetain(v6);
          goto LABEL_20;
        }

        cf = 0;
        v8 = *MEMORY[0x1E695E480];
        if (FigMetadataFilterStorageGetTypeID_onceToken != -1)
        {
          fpsupport_simpleRenderPipelineCallback_cold_1();
        }

        Instance = _CFRuntimeCreateInstance();
        if (Instance)
        {
          if (FigSampleBufferProcessorCreateForTemporalMetadataFilter(v8, *(v5 + 48), &cf) || (*(Instance + 24) = FigCFWeakReferenceHolderCreateWithReferencedObject(), *(Instance + 16) = 0, *(Instance + 32) = CFRetain(cf), v10 = cf, (v11 = *(*(CMBaseObjectGetVTable() + 16) + 8)) == 0) || v11(v10, fpsupport_temporalMetadataFilterOutputCallback, Instance))
          {
            v7 = 0;
            v12 = 0;
          }

          else
          {
            v12 = 1;
            v7 = Instance;
            Instance = 0;
          }
        }

        else
        {
          fpsupport_simpleRenderPipelineCallback_cold_2(&v16);
          v7 = 0;
          v12 = v16;
        }

        if (cf)
        {
          CFRelease(cf);
        }

        if (Instance)
        {
          CFRelease(Instance);
        }

        if (!v12)
        {
          if (!v7)
          {
            goto LABEL_23;
          }

          goto LABEL_22;
        }

        CFDictionaryAddValue(*(v5 + 64), 0, v7);
        if (v7)
        {
LABEL_20:
          v13 = v7[4];
          v14 = *(*(CMBaseObjectGetVTable() + 16) + 16);
          if (v14)
          {
            v14(v13, a2);
          }

LABEL_22:
          CFRelease(v7);
LABEL_23:
          CFRelease(v5);
          return;
        }
      }

      FigMetadataOutputReactToNewBufferFromTemporalMetadataFilter(v5, a2, 0);
      goto LABEL_23;
    }
  }
}

void fpsupport_temporalMetadataFilterOutputCallback(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v5)
  {
    v6 = v5;
    FigMetadataOutputReactToNewBufferFromTemporalMetadataFilter(v5, a3, *(a1 + 16));

    CFRelease(v6);
  }
}

uint64_t registerFigMetadataFilterStorage()
{
  result = _CFRuntimeRegisterClass();
  sFigMetadataFilterStorageID = result;
  return result;
}

void *fpsupport_FigMetadataFilterStorageInit(void *result)
{
  result[2] = 0;
  result[3] = 0;
  result[4] = 0;
  return result;
}

void fpsupport_FigMetadataFilterStorageFinalize(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {

    CFRelease(v3);
  }
}

uint64_t FigEndpointStreamAudioEngineStartServer()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetInt32();
  v1 = FigXPCServerStart();
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v1;
}

void figEndpointStreamAudioEngine_ServerDisassociateAudioEngineCallback(const void *a1)
{
  v2 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v2)
  {
    v3 = v2;
    v4 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v4)
    {
      v4(v3, 0, 0, 0);
    }

    CFRelease(v3);
  }

  if (a1)
  {

    CFRelease(a1);
  }
}

uint64_t CreateCompletionCallbackParametersFromMessageAndConnection(void *a1, uint64_t a2, void *a3)
{
  uint64 = xpc_dictionary_get_uint64(a1, "CompletionID");
  if (uint64)
  {
    v6 = uint64;
    v7 = malloc_type_calloc(1uLL, 0x18uLL, 0x10200403ED2C137uLL);
    if (!v7)
    {
      CreateCompletionCallbackParametersFromMessageAndConnection_cold_1(&v10);
      return v10;
    }

    v8 = v7;
    *v7 = v6;
    v7[1] = xpc_dictionary_get_uint64(a1, *MEMORY[0x1E69615A0]);
    v8[2] = FigXPCRetain();
  }

  else
  {
    v8 = 0;
  }

  result = 0;
  *a3 = v8;
  return result;
}

void DestroyCompletionCallbackParameters(void *a1)
{
  if (a1)
  {
    FigXPCRelease();

    free(a1);
  }
}

void *__serverXPCAudioEngine_getAPAudioSourceSharedMemoryReaderCreate_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/AirPlaySender.framework/AirPlaySender", 4);
  if (result)
  {
    result = dlsym(result, "APAudioSourceSharedMemoryReaderCreate");
    off_1ED4CB7E0 = result;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_98()
{

  return CMBaseObjectGetVTable();
}

uint64_t sbcbao_finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  sbcbao_dropLastSbufTracer();
  FigSimpleMutexUnlock();
  v1 = DerivedStorage[1];
  if (v1)
  {
    CFRelease(v1);
  }

  v2 = DerivedStorage[2];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = DerivedStorage[11];
  if (v3)
  {
    CFRelease(v3);
    DerivedStorage[11] = 0;
  }

  return FigSimpleMutexDestroy();
}

__CFString *sbcbao_copyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigSampleBufferConsumerInputForBufferedAirPlayOutput %p>", a1);
  return Mutable;
}

uint64_t sbcbao_copyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, CFDictionaryRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, @"LastSbufEndOPTS"))
  {
    v9 = *(DerivedStorage + 24);
    *a4 = CMTimeCopyAsDictionary(&v9, a3);
  }

  return 0;
}

uint64_t sbcbao_setProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(CMBaseObjectGetDerivedStorage() + 8);
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v5, a2, a3);
}

void sbcbao_dropLastSbufTracer()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 48))
  {
    v1 = DerivedStorage;
    MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, *(DerivedStorage + 88));
    CFStringAppendCString(MutableCopy, "-DROPPING", 0x8000100u);
    FigEndpointStreamAudioEngineSbufTracerDebugPrint(*(v1 + 48));
    v3 = *(v1 + 48);
    if (v3)
    {
      CFRelease(v3);
      *(v1 + 48) = 0;
    }

    if (MutableCopy)
    {

      CFRelease(MutableCopy);
    }
  }
}

uint64_t sbcbao_SendSampleBuffer(uint64_t a1, uint64_t a2)
{
  v34 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *MEMORY[0x1E6960CC0];
  *&v29.value = *MEMORY[0x1E6960CC0];
  v5 = *(MEMORY[0x1E6960CC0] + 16);
  v29.epoch = v5;
  if (a2)
  {
    v6 = DerivedStorage;
    v27 = v4;
    CMSampleBufferGetPresentationTimeStamp(&time, a2);
    CMSampleBufferGetDuration(&time, a2);
    CMSampleBufferGetOutputDuration(&v29, a2);
    NumSamples = CMSampleBufferGetNumSamples(a2);
    CMSampleBufferGetOutputPresentationTimeStamp(&time, a2);
    value = time.value;
    flags = time.flags;
    timescale = time.timescale;
    epoch = time.epoch;
    FigEndpointStreamAudioEngineSbufTracerDebugPrint(a2);
    if (CMGetAttachment(a2, @"FlushRangeEnd", 0))
    {
      v10 = MEMORY[0x1E6960C70];
      *(v6 + 24) = *MEMORY[0x1E6960C70];
      *(v6 + 40) = *(v10 + 16);
      if (dword_1EAF17770)
      {
        LODWORD(lhs.value) = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    if ((*(v6 + 68) & 1) == 0 || (time.value = value, time.timescale = timescale, time.flags = flags, time.epoch = epoch, time2 = *(v6 + 56), (CMTimeCompare(&time, &time2) & 0x80000000) == 0) || (v12 = *(v6 + 80), v12 <= 0x31))
    {
      CMTimeMake(&time2, 400, 1000);
      lhs.value = value;
      lhs.timescale = timescale;
      lhs.flags = flags;
      lhs.epoch = epoch;
      CMTimeAdd(&time, &lhs, &time2);
      *(v6 + 56) = time;
      v12 = *(v6 + 80);
    }

    *(v6 + 80) = v12 + 1;
    if ((flags & 0x1D) == 1)
    {
      time = v29;
      *&time2.value = v27;
      time2.epoch = v5;
      if (CMTimeCompare(&time, &time2) >= 1 && NumSamples >= 1)
      {
        if (*(v6 + 36))
        {
          time = *(v6 + 24);
          time2.value = value;
          time2.timescale = timescale;
          time2.flags = flags;
          time2.epoch = epoch;
          if (CMTimeCompare(&time, &time2))
          {
            if (dword_1EAF17770)
            {
              v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            v14 = MEMORY[0x1E6960C70];
            *(v6 + 24) = *MEMORY[0x1E6960C70];
            *(v6 + 40) = *(v14 + 16);
          }
        }

        if ((*(v6 + 36) & 1) == 0)
        {
          *(v6 + 24) = value;
          *(v6 + 32) = timescale;
          *(v6 + 36) = flags;
          *(v6 + 40) = epoch;
        }

        time2 = *(v6 + 24);
        lhs = v29;
        CMTimeAdd(&time, &time2, &lhs);
        *(v6 + 24) = time;
      }
    }
  }

  v15 = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (!a2)
  {
    FigSimpleMutexUnlock();
    return a2;
  }

  v16 = CMGetAttachment(a2, @"SbufTracer", 0);
  v17 = CMSampleBufferGetNumSamples(a2);
  v18 = CMCopyDictionaryOfAttachments(*MEMORY[0x1E695E480], a2, 1u);
  v19 = v18;
  if (v18 && ((Count = CFDictionaryGetCount(v18), v16) ? (v21 = Count == 1) : (v21 = 0), v21))
  {
    sbcbao_dropLastSbufTracer();
    if (!v17)
    {
      *(v15 + 48) = CFRetain(a2);
      FigSimpleMutexUnlock();
      a2 = 0;
LABEL_35:
      CFRelease(v19);
      return a2;
    }
  }

  else
  {
    if (v16)
    {
      sbcbao_dropLastSbufTracer();
    }

    v22 = *(v15 + 48);
    if (v22)
    {
      v23 = CMGetAttachment(v22, @"SbufTracer", 0);
      CMSetAttachment(a2, @"SbufTracer", v23, 0);
      sbcbao_dropLastSbufTracer();
    }
  }

  FigEndpointStreamAudioEngineSbufTracerDebugPrint(a2);
  v24 = *(v15 + 8);
  v25 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v25)
  {
    a2 = v25(v24, a2);
  }

  else
  {
    a2 = 4294954514;
  }

  FigSimpleMutexUnlock();
  if (v19)
  {
    goto LABEL_35;
  }

  return a2;
}

uint64_t sbcbao_IsQueueAtOrAboveHighWater()
{
  v0 = *(CMBaseObjectGetDerivedStorage() + 8);
  v1 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v1)
  {
    return 0;
  }

  return v1(v0);
}

uint64_t sbcbao_IsQueueBelowLowWater()
{
  v0 = *(CMBaseObjectGetDerivedStorage() + 8);
  v1 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v1)
  {
    return 0;
  }

  return v1(v0);
}

uint64_t sbcbao_InstallLowWaterTrigger(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(CMBaseObjectGetDerivedStorage() + 8);
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(v7, a2, a3, a4);
}

uint64_t sbcbao_RemoveLowWaterTrigger(uint64_t a1, uint64_t a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 8);
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(v3, a2);
}

uint64_t sbcbao_GetPendingSampleBufferCount()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 8);
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (v2)
  {
    v3 = v2(v1);
  }

  else
  {
    v3 = 0;
  }

  FigSimpleMutexLock();
  if (*(DerivedStorage + 48))
  {
    ++v3;
  }

  FigSimpleMutexUnlock();
  return v3;
}

uint64_t sbcbao_PostNotification(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(CMBaseObjectGetDerivedStorage() + 8);
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(v7, a2, a3, a4);
}

uint64_t sbcbao_Flush()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = MEMORY[0x1E6960C70];
  v2 = *MEMORY[0x1E6960C70];
  *(DerivedStorage + 24) = *MEMORY[0x1E6960C70];
  v3 = *(v1 + 16);
  *(DerivedStorage + 40) = v3;
  *(DerivedStorage + 56) = v2;
  *(DerivedStorage + 72) = v3;
  *(DerivedStorage + 80) = 0;
  FigSimpleMutexLock();
  sbcbao_dropLastSbufTracer();
  FigSimpleMutexUnlock();
  v4 = *(DerivedStorage + 8);
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 72);
  if (!v5)
  {
    return 4294954514;
  }

  return v5(v4);
}

uint64_t FigVirtualDisplaySessionCreateWithComponents(uint64_t a1, const void *a2, const void *a3, const void *a4, CFDictionaryRef theDict, CFTypeRef *a6)
{
  cf[23] = *MEMORY[0x1E69E9840];
  v33 = 0;
  cf[0] = 0;
  v32 = 0;
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"logPrefix");
  }

  else
  {
    Value = 0;
  }

  if (checkFigVirtualDisplaySessionTrace_once != -1)
  {
    FigVirtualDisplaySessionCreateWithComponents_cold_1();
  }

  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  if (!a6 || !a3 || !a4)
  {
    v30 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v28 = 4294955226;
    goto LABEL_30;
  }

  if (a2)
  {
    cf[0] = CFRetain(a2);
    goto LABEL_12;
  }

  v14 = FigVirtualDisplaySourceScreenCreate(a1, theDict, cf);
  if (!v14)
  {
LABEL_12:
    FigVirtualDisplaySessionGetClassID();
    v14 = CMDerivedObjectCreate();
    if (!v14)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      *DerivedStorage = 0;
      *(DerivedStorage + 56) = FigOSTransactionCreate();
      *(DerivedStorage + 8) = dispatch_queue_create("com.apple.coremedia.vdsession.stateq", 0);
      *(DerivedStorage + 16) = dispatch_queue_create("com.apple.coremedia.vdsession.notifq", 0);
      *(DerivedStorage + 24) = dispatch_queue_create("com.apple.coremedia.vdsession.sinkq", 0);
      *(DerivedStorage + 32) = CFRetain(cf[0]);
      *(DerivedStorage + 40) = CFRetain(a3);
      *(DerivedStorage + 48) = CFRetain(a4);
      LogPrefix = FVDUtilsCreateLogPrefix(Value, v33);
      *(DerivedStorage + 72) = LogPrefix;
      CMBaseObject = FigVirtualDisplaySourceGetCMBaseObject(*(DerivedStorage + 32));
      v18 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v18)
      {
        v18(CMBaseObject, @"LogPrefix", LogPrefix);
      }

      v19 = FigVirtualDisplayProcessorGetCMBaseObject(*(DerivedStorage + 40));
      v20 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v20)
      {
        v20(v19, @"LogPrefix", LogPrefix);
      }

      v21 = FigVirtualDisplaySinkGetCMBaseObject(*(DerivedStorage + 48));
      v22 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v22)
      {
        v22(v21, @"LogPrefix", LogPrefix);
      }

      v23 = *MEMORY[0x1E695E480];
      v24 = FigVirtualDisplaySourceGetCMBaseObject(*(DerivedStorage + 32));
      v25 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v25)
      {
        v25(v24, @"sourceType", v23, &v32);
      }

      v26 = FigCFEqual();
      *(DerivedStorage + 101) = v26;
      if (v26)
      {
        *(DerivedStorage + 103) = 1;
        FigCFDictionaryGetBooleanIfPresent();
        FigCFDictionaryGetBooleanIfPresent();
      }

      if (theDict)
      {
        v27 = CFDictionaryGetValue(theDict, @"clientName");
        *(DerivedStorage + 64) = v27;
        if (v27)
        {
          CFRetain(v27);
          if (*(DerivedStorage + 64))
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
        *(DerivedStorage + 64) = 0;
      }

      FigCopyBacktrace();
LABEL_29:
      v28 = 0;
      *a6 = v33;
      v33 = 0;
      goto LABEL_30;
    }
  }

  v28 = v14;
  v31 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_30:
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (v32)
  {
    CFRelease(v32);
  }

  if (v33)
  {
    CFRelease(v33);
  }

  return v28;
}

uint64_t FigVirtualDisplaySessionCreateWithConfiguration(const __CFAllocator *a1, CFDictionaryRef theDict, CFTypeRef *a3)
{
  value[16] = *MEMORY[0x1E69E9840];
  v26 = 0;
  cf = 0;
  v25 = 0;
  if (theDict)
  {
    CFDictionaryGetValue(theDict, @"logPrefix");
  }

  if (checkFigVirtualDisplaySessionTrace_once != -1)
  {
    FigVirtualDisplaySessionCreateWithComponents_cold_1();
  }

  if (!theDict)
  {
    v7 = 0;
LABEL_10:
    v6 = @"Screen";
    goto LABEL_11;
  }

  v6 = CFDictionaryGetValue(theDict, @"sourceType");
  v7 = CFDictionaryGetValue(theDict, @"sinkType");
  if (!v6)
  {
    goto LABEL_10;
  }

  v8 = CFGetTypeID(v6);
  if (v8 != CFStringGetTypeID())
  {
    goto LABEL_10;
  }

LABEL_11:
  if (!v7 || (v9 = CFGetTypeID(v7), v9 != CFStringGetTypeID()))
  {
    v7 = @"FileWriter";
  }

  if (CFStringCompare(v6, @"Screen", 1uLL))
  {
    if (CFStringCompare(v6, @"Movie", 1uLL))
    {
      fig_log_get_emitter();
      v10 = FigSignalErrorAtGM();
    }

    else
    {
      v10 = FigVirtualDisplaySourceMovieCreate(a1, 0, theDict, &cf);
    }

    v11 = v10;
    if (v10)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      goto LABEL_46;
    }
  }

  else
  {
    cf = 0;
  }

  if (CFStringCompare(v7, @"FileWriter", 1uLL))
  {
    if (CFStringCompare(v7, @"Conduit", 1uLL))
    {
      fig_log_get_emitter();
      v12 = FigSignalErrorAtGM();
    }

    else
    {
      v12 = FigVirtualDisplaySinkConduitCreate(a1, 0, theDict, &v26);
    }
  }

  else
  {
    v12 = FigVirtualDisplaySinkFileWriterCreate(a1, &v26);
  }

  v11 = v12;
  if (v12)
  {
    v22 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
  }

  else
  {
    if (theDict)
    {
      value[0] = 0;
      if (CFDictionaryGetValueIfPresent(theDict, @"Destination", value))
      {
        v13 = value[0];
        CMBaseObject = FigVirtualDisplaySinkGetCMBaseObject(v26);
        v15 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v15)
        {
          v15(CMBaseObject, @"Destination", v13);
        }
      }

      if (CFDictionaryGetValueIfPresent(theDict, @"deviceInfo", value))
      {
        v16 = value[0];
        v17 = FigVirtualDisplaySinkGetCMBaseObject(v26);
        v18 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v18)
        {
          v18(v17, @"deviceInfo", v16);
        }
      }
    }

    v19 = FigVirtualDisplayProcessorCreate(a1, theDict, &v25);
    if (v19)
    {
      v11 = v19;
      v23 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
    }

    else
    {
      v11 = FigVirtualDisplaySessionCreateWithComponents(a1, cf, v25, v26, theDict, a3);
      if (!v11)
      {
        goto LABEL_35;
      }

      v24 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
    }
  }

LABEL_46:
  fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_35:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v26)
  {
    CFRelease(v26);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  return v11;
}

CFTypeRef FigVirtualDisplaySessionActivateWithSourceAndSink(const void *a1, const void *a2, CFDictionaryRef theDict)
{
  cf[22] = *MEMORY[0x1E69E9840];
  v17 = 0;
  cf[0] = 0;
  if (theDict)
  {
    CFDictionaryGetValue(theDict, @"logPrefix");
  }

  if (checkFigVirtualDisplaySessionTrace_once == -1)
  {
    if (!a2)
    {
      goto LABEL_16;
    }
  }

  else
  {
    FigVirtualDisplaySessionCreateWithComponents_cold_1();
    if (!a2)
    {
      goto LABEL_16;
    }
  }

  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"CustomProcessor");
    cf[0] = Value;
    if (Value)
    {
      v7 = Value;
      CFRetain(Value);
      v8 = CFGetTypeID(v7);
      if (v8 == FigVirtualDisplayProcessorGetTypeID())
      {
        v9 = *MEMORY[0x1E695E480];
        goto LABEL_11;
      }

LABEL_16:
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      goto LABEL_18;
    }
  }

  v9 = *MEMORY[0x1E695E480];
  if (FigVirtualDisplayProcessorCreate(*MEMORY[0x1E695E480], theDict, cf))
  {
    v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
    goto LABEL_18;
  }

  v7 = cf[0];
LABEL_11:
  if (FigVirtualDisplaySessionCreateWithComponents(v9, a1, v7, a2, theDict, &v17))
  {
    v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    goto LABEL_18;
  }

  v10 = v17;
  v11 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v11 || v11(v10, theDict, 0))
  {
    v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
LABEL_18:
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  return v17;
}

uint64_t FigVirtualDisplaySessionDeactivate(const void *a1)
{
  CMBaseObjectGetDerivedStorage();
  if (a1 && (v2 = CFGetTypeID(a1), v2 == FigVirtualDisplaySessionGetTypeID()))
  {
    v3 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v3)
    {
      v3(a1);
    }

    CFRelease(a1);
    return 0;
  }

  else
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return 4294955226;
  }
}

CFTypeRef FigVirtualDisplaySessionActivate(CFDictionaryRef theDict)
{
  v7[22] = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  if (theDict)
  {
    CFDictionaryGetValue(theDict, @"logPrefix");
  }

  if (checkFigVirtualDisplaySessionTrace_once != -1)
  {
    FigVirtualDisplaySessionCreateWithComponents_cold_1();
  }

  if (FigVirtualDisplaySessionCreateWithConfiguration(*MEMORY[0x1E695E480], theDict, v7))
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    goto LABEL_10;
  }

  v2 = v7[0];
  v3 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v3 || v3(v2, theDict, 0))
  {
    v4 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
LABEL_10:
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return v7[0];
}

uint64_t __screenRecordingMonitorGetCurrent_block_invoke()
{
  FVDUtilsSessionServerEnabled();
  result = FigGetCFPreferenceNumberWithDefault();
  _MergedGlobals_113 = result != 0;
  if (result)
  {
    qword_1ED4CB7F8 = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, 0);
    qword_1ED4CB800 = FigSimpleMutexCreate();
    result = dispatch_queue_create("com.apple.coremedia.vdsessionscreenrecordingmon.notifq", 0);
    qword_1ED4CB808 = result;
  }

  return result;
}

void fvds_finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  if (*DerivedStorage)
  {
    Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
    fvds_appendSessionStartInfo(a1, Mutable);
    v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    FigBytePumpRelease(Mutable);
    __break(1u);
  }

  else
  {
    v4 = *(DerivedStorage + 8);
    if (v4)
    {
      dispatch_release(v4);
    }

    v5 = *(DerivedStorage + 16);
    if (v5)
    {
      dispatch_release(v5);
    }

    v6 = *(DerivedStorage + 24);
    if (v6)
    {
      dispatch_release(v6);
    }

    v7 = *(DerivedStorage + 32);
    if (v7)
    {
      CFRelease(v7);
    }

    v8 = *(DerivedStorage + 40);
    if (v8)
    {
      CFRelease(v8);
    }

    v9 = *(DerivedStorage + 48);
    if (v9)
    {
      CFRelease(v9);
    }

    v10 = *(DerivedStorage + 64);
    if (v10)
    {
      CFRelease(v10);
    }

    v11 = *(DerivedStorage + 80);
    if (v11)
    {
      CFRelease(v11);
    }

    v12 = *(DerivedStorage + 56);
    if (v12)
    {
      os_release(v12);
      *(DerivedStorage + 56) = 0;
    }

    v13 = *(DerivedStorage + 72);
    if (v13)
    {
      CFRelease(v13);
      *(DerivedStorage + 72) = 0;
    }
  }
}

CFStringRef fvds_copyDebugDesc(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v19 = 0;
  v20 = 0;
  v18 = 0;
  v3 = *MEMORY[0x1E695E480];
  CMBaseObject = FigVirtualDisplaySourceGetCMBaseObject(DerivedStorage[4]);
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v5)
  {
    v5(CMBaseObject, @"sourceType", v3, &v20);
  }

  v6 = FigVirtualDisplayProcessorGetCMBaseObject(DerivedStorage[5]);
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v7)
  {
    v7(v6, @"processorType", v3, &v19);
  }

  v8 = FigVirtualDisplaySinkGetCMBaseObject(DerivedStorage[6]);
  v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v9)
  {
    v9(v8, @"Type", v3, &v18);
  }

  v10 = CFGetAllocator(a1);
  v11 = *DerivedStorage;
  v12 = CFGetRetainCount(a1);
  v13 = v20;
  if (!v20)
  {
    v13 = @"source";
  }

  v15 = v18;
  v14 = v19;
  if (!v19)
  {
    v14 = @"processor";
  }

  if (!v18)
  {
    v15 = @"sink";
  }

  v16 = CFStringCreateWithFormat(v10, 0, @"<FigVirtualDisplaySession %p state: %d retainCount: %ld> { %@ (%p) -> %@ (%p) -> %@ (%p) }", a1, v11, v12, v13, DerivedStorage[4], v14, DerivedStorage[5], v15, DerivedStorage[6]);
  if (v20)
  {
    CFRelease(v20);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  return v16;
}

uint64_t fvds_copyProperty(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, @"IsIdle"))
  {
    CMBaseObject = FigVirtualDisplayProcessorGetCMBaseObject(*(DerivedStorage + 40));
    v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v9)
    {

      return v9(CMBaseObject, @"IsIdle", a3, a4);
    }

    else
    {
      return 4294954514;
    }
  }

  else
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return 4294954512;
  }
}

uint64_t fvds_setProperty(uint64_t a1, const void *a2, const void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, @"ScreenRecording"))
  {
    if (a3 && (v7 = CFGetTypeID(a3), v7 == CFBooleanGetTypeID()))
    {
      v8 = *(DerivedStorage + 8);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = __fvds_setProperty_block_invoke;
      block[3] = &__block_descriptor_tmp_77_1;
      block[4] = DerivedStorage;
      block[5] = a3;
      block[6] = a1;
      dispatch_sync(v8, block);
      return 0;
    }

    else
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      return 4294954516;
    }
  }

  else
  {
    v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return 4294954512;
  }
}

void fvds_appendSessionStartInfo(uint64_t a1, __CFString *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = CMBaseObjectGetDerivedStorage();
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1E695E480];
  if (v6)
  {
    v8 = CFRetain(v6);
    goto LABEL_3;
  }

  v10 = *(v5 + 80);
  if (v10)
  {
    Count = CFArrayGetCount(v10);
    if (Count >= 1)
    {
      v12 = Count;
      v13 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(v5 + 80), v13);
        memset(&v18, 0, sizeof(v18));
        dladdr(ValueAtIndex, &v18);
        if (v18.dli_fname)
        {
          v15 = strrchr(v18.dli_fname, 47);
          if (v15)
          {
            v16 = v15;
            if (strcmp(v15 + 1, "MediaToolbox"))
            {
              break;
            }
          }
        }

        if (v12 == ++v13)
        {
          goto LABEL_12;
        }
      }

      v8 = CFStringCreateWithCString(*v7, v16 + 1, 0x8000100u);
LABEL_3:
      v9 = v8;
      if (v8)
      {
        goto LABEL_13;
      }
    }
  }

LABEL_12:
  v9 = CFRetain(@"???");
LABEL_13:
  if (fvds_appendSessionStartInfo_once != -1)
  {
    fvds_appendSessionStartInfo_cold_1();
  }

  StringWithAbsoluteTime = CFDateFormatterCreateStringWithAbsoluteTime(*v7, fvds_appendSessionStartInfo_dateFormatter, *(DerivedStorage + 88));
  if (CFStringGetLength(a2) >= 1)
  {
    CFStringAppendFormat(a2, 0, @" ");
  }

  CFStringAppendFormat(a2, 0, @"{ session %p started at %@ by %@ }", a1, StringWithAbsoluteTime, v9);
  if (v9)
  {
    CFRelease(v9);
  }

  if (StringWithAbsoluteTime)
  {
    CFRelease(StringWithAbsoluteTime);
  }
}

CFDateFormatterRef __fvds_appendSessionStartInfo_block_invoke()
{
  result = CFDateFormatterCreateISO8601Formatter(*MEMORY[0x1E695E480], 0xFF3uLL);
  fvds_appendSessionStartInfo_dateFormatter = result;
  return result;
}

void __fvds_setProperty_block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 101))
  {
    Value = CFBooleanGetValue(*(a1 + 40));
    *(*(a1 + 32) + 102) = Value;
    v4 = *(a1 + 48);
    if (Value)
    {

      recordingSessionRegister(v4);
    }

    else
    {

      recordingSessionUnregister(v4);
    }
  }
}

uint64_t sessionStart(uint64_t a1, const void *a2, uint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v13 = 0;
  type = OS_LOG_TYPE_DEFAULT;
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  if (*DerivedStorage)
  {
    v13 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    if (!a2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (a2)
  {
LABEL_3:
    CFRetain(a2);
  }

LABEL_4:
  v8 = *(DerivedStorage + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __sessionStart_block_invoke;
  block[3] = &unk_1E7493178;
  block[4] = a3;
  block[5] = a1;
  block[6] = a2;
  block[7] = DerivedStorage;
  dispatch_async(v8, block);
  return 0;
}

uint64_t sessionStop(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = 0;
  type = OS_LOG_TYPE_DEFAULT;
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  v4 = *(DerivedStorage + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __sessionStop_block_invoke_0;
  block[3] = &__block_descriptor_tmp_95_1;
  block[4] = a1;
  dispatch_sync(v4, block);
  return 0;
}

uint64_t sessionSuspend(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = 0;
  type = OS_LOG_TYPE_DEFAULT;
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  if (*DerivedStorage != 2)
  {
    v9 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v4 = *(DerivedStorage + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __sessionSuspend_block_invoke;
  block[3] = &__block_descriptor_tmp_96_2;
  block[4] = a1;
  dispatch_sync(v4, block);
  return 0;
}

uint64_t sessionResume(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = 0;
  type = OS_LOG_TYPE_DEFAULT;
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  if (*DerivedStorage != 1)
  {
    v10 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v4 = *(DerivedStorage + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __sessionResume_block_invoke;
  block[3] = &unk_1E7493220;
  block[4] = &v11;
  block[5] = a1;
  dispatch_sync(v4, block);
  v5 = *(v12 + 6);
  _Block_object_dispose(&v11, 8);
  return v5;
}

uint64_t sessionGetStartStatus()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 8);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = __sessionGetStartStatus_block_invoke;
  v4[3] = &unk_1E7493248;
  v4[4] = &v5;
  v4[5] = DerivedStorage;
  dispatch_sync(v1, v4);
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t sessionCopyComponents(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = *(DerivedStorage + 8);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 0x40000000;
  v10[2] = __sessionCopyComponents_block_invoke;
  v10[3] = &__block_descriptor_tmp_99_1;
  v10[4] = a2;
  v10[5] = DerivedStorage;
  v10[6] = a3;
  v10[7] = a4;
  dispatch_sync(v8, v10);
  return 0;
}

void __sessionStart_block_invoke(void *a1)
{
  v48 = *MEMORY[0x1E69E9840];
  v2 = a1[5];
  v3 = a1[6];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v45 = 0;
  if (*DerivedStorage)
  {
    v47 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v12 = -12070;
LABEL_54:
    v47 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v37 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    fvds_stop(v2);
    goto LABEL_55;
  }

  *(DerivedStorage + 88) = CFAbsoluteTimeGetCurrent();
  if (v3)
  {
    Value = CFDictionaryGetValue(v3, @"clientName");
    if (Value)
    {
      v6 = *(DerivedStorage + 64);
      *(DerivedStorage + 64) = Value;
      CFRetain(Value);
      if (v6)
      {
        CFRelease(v6);
      }
    }
  }

  if (*(DerivedStorage + 101))
  {
    v7 = CMBaseObjectGetDerivedStorage();
    if (qword_1ED4CB830 != -1)
    {
      __sessionStart_block_invoke_cold_1();
    }

    if (byte_1ED4CB7F0 && *(v7 + 101))
    {
      FigSimpleMutexLock();
      if (qword_1ED4CB818)
      {
        Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
        fvds_appendSessionStartInfo(qword_1ED4CB818, Mutable);
        v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
      }

      else
      {
        if (!*(v7 + 103))
        {
          CFSetAddValue(qword_1ED4CB820, v2);
LABEL_21:
          __sessionStart_block_invoke_cold_2();
          goto LABEL_22;
        }

        if (CFSetGetCount(qword_1ED4CB820) < 1)
        {
          qword_1ED4CB818 = v2;
          goto LABEL_21;
        }

        Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
        CFSetApplyFunction(qword_1ED4CB820, fvds_appendSessionStartInfo, Mutable);
        v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      FigSimpleMutexUnlock();
      if (Mutable)
      {
        CFRelease(Mutable);
      }

      v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v12 = -12073;
      goto LABEL_54;
    }
  }

LABEL_22:
  if (*(DerivedStorage + 4))
  {
    v47 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v41 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v13 = *(DerivedStorage + 32);
  v14 = *(DerivedStorage + 40);
  v15 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v15)
  {
    v12 = -12782;
LABEL_52:
    v36 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT);
LABEL_53:
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_54;
  }

  v16 = v15(v13, v14);
  if (v16)
  {
    v12 = v16;
    goto LABEL_52;
  }

  *(DerivedStorage + 4) = 1;
  v17 = *(DerivedStorage + 40);
  v18 = *(DerivedStorage + 48);
  v19 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v19)
  {
    v12 = -12782;
    goto LABEL_52;
  }

  v20 = v19(v17, v18);
  if (v20)
  {
    v12 = v20;
    goto LABEL_52;
  }

  v21 = *(DerivedStorage + 48);
  v22 = *(DerivedStorage + 24);
  v23 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (v23)
  {
    v23(v21, v22);
  }

  v24 = getenv("WIRELESSDISPLAY_DISABLE_ENCRYPTION");
  if (v24)
  {
    if (*v24 == 49 && !v24[1])
    {
      CMBaseObject = FigVirtualDisplaySinkGetCMBaseObject(*(DerivedStorage + 48));
      v35 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v35)
      {
        v35(CMBaseObject, @"useEncryption", *MEMORY[0x1E695E4C0]);
      }
    }
  }

  *(DerivedStorage + 4) = 2;
  v25 = *(DerivedStorage + 48);
  v26 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v26)
  {
    v12 = -12782;
    goto LABEL_52;
  }

  v27 = v26(v25, v3, 0);
  if (v27)
  {
    v12 = v27;
    goto LABEL_52;
  }

  *(DerivedStorage + 4) = 3;
  v28 = *(DerivedStorage + 40);
  v29 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v29)
  {
    v12 = -12782;
    goto LABEL_52;
  }

  v30 = v29(v28, v3);
  if (v30)
  {
    v12 = v30;
    goto LABEL_52;
  }

  *(DerivedStorage + 4) = 4;
  CMNotificationCenterGetDefaultLocalCenter();
  v31 = FigNotificationCenterAddWeakListener();
  if (v31 || (*(DerivedStorage + 100) = 1, (v31 = FigVirtualDisplaySourceStart(*(DerivedStorage + 32), v3)) != 0))
  {
    v12 = v31;
    v42 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT);
    goto LABEL_53;
  }

  *(DerivedStorage + 4) = 5;
  FigCFDictionaryGetBooleanIfPresent();
  if (v45)
  {
    v32 = 1;
  }

  else
  {
    v32 = 2;
  }

  *DerivedStorage = v32;
  if (*(DerivedStorage + 102))
  {
    recordingSessionRegister(v2);
  }

  v12 = 0;
LABEL_55:
  *(DerivedStorage + 96) = v12;
  v38 = a1[6];
  if (v38)
  {
    CFRelease(v38);
  }

  v39 = a1[4];
  if (v39)
  {
    v40 = *(a1[7] + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __sessionStart_block_invoke_2;
    block[3] = &unk_1E7493150;
    block[4] = v39;
    v44 = v12;
    dispatch_async(v40, block);
  }
}

void fvds_handleSourceFatalError(uint64_t a1, const void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = 0;
  type = OS_LOG_TYPE_DEFAULT;
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  CFRetain(a2);
  v5 = *(DerivedStorage + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __fvds_handleSourceFatalError_block_invoke;
  block[3] = &__block_descriptor_tmp_94_0;
  block[4] = a2;
  dispatch_async(v5, block);
}

uint64_t FigVirtualDisplaySourceStart(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a1, a2);
}

uint64_t __screenSessionManagerGetCurrent_block_invoke()
{
  byte_1ED4CB7F0 = FVDUtilsSessionServerEnabled();
  result = FigGetCFPreferenceNumberWithDefault();
  byte_1ED4CB7F0 = result != 0;
  if (result)
  {
    qword_1ED4CB828 = FigSimpleMutexCreate();
    result = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, 0);
    qword_1ED4CB820 = result;
  }

  return result;
}

void __fvds_handleSourceFatalError_block_invoke(uint64_t a1)
{
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  v2 = *(a1 + 32);

  CFRelease(v2);
}

void __sessionSuspend_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage == 2)
  {
    v3 = DerivedStorage;
    v4 = *(DerivedStorage + 32);
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (v5)
    {
      v5(v4);
    }

    v6 = *(v3 + 40);
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (v7)
    {
      v7(v6);
    }

    v8 = *(v3 + 48);
    v9 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v9)
    {
      v9(v8);
    }

    *v3 = 1;
    if (*(v3 + 102))
    {

      recordingSessionUnregister(v1);
    }
  }
}

void __sessionResume_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = DerivedStorage;
  if (*DerivedStorage == 1)
  {
    v5 = *(DerivedStorage + 48);
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if ((!v6 || ((v7 = v6(v5), v7 != -12782) ? (v8 = v7 == 0) : (v8 = 1), v8)) && ((v9 = *(v4 + 40), (v10 = *(*(CMBaseObjectGetVTable() + 16) + 48)) == 0) || ((v7 = v10(v9), v7 != -12782) ? (v11 = v7 == 0) : (v11 = 1), v11)) && ((v12 = *(v4 + 32), (v13 = *(*(CMBaseObjectGetVTable() + 16) + 48)) == 0) || ((v7 = v13(v12), v7 != -12782) ? (v14 = v7 == 0) : (v14 = 1), v14)))
    {
      *v4 = 2;
      if (*(v4 + 102))
      {
        recordingSessionRegister(v2);
      }

      v16 = 0;
    }

    else
    {
      v16 = v7;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  else
  {
    v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v16 = -12070;
  }

  *(*(*(a1 + 32) + 8) + 24) = v16;
}

void *__sessionCopyComponents_block_invoke(void *result)
{
  v1 = result;
  v2 = result[4];
  if (v2)
  {
    result = *(result[5] + 32);
    if (result)
    {
      result = CFRetain(result);
      v2 = v1[4];
    }

    *v2 = result;
  }

  v3 = v1[6];
  if (v3)
  {
    result = *(v1[5] + 40);
    if (result)
    {
      result = CFRetain(result);
      v3 = v1[6];
    }

    *v3 = result;
  }

  v4 = v1[7];
  if (v4)
  {
    result = *(v1[5] + 48);
    if (result)
    {
      result = CFRetain(result);
      v4 = v1[7];
    }

    *v4 = result;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_157()
{

  return _os_log_send_and_compose_impl();
}

uint64_t OUTLINED_FUNCTION_8_68()
{

  return fig_log_call_emit_and_clean_up_after_send_and_compose();
}

uint64_t FigTTMLDocumentWriterCreateRegionBuilder(uint64_t a1, const void *a2, void *a3)
{
  if (!a2)
  {
    FigTTMLDocumentWriterCreateRegionBuilder_cold_2(&v8);
    return v8;
  }

  if (!a3)
  {
    FigTTMLDocumentWriterCreateRegionBuilder_cold_1(&v8);
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

void figTTMLDocumentWriterRegionBuilder_Finalize(uint64_t a1)
{
  FigTTMLDocumentWriterGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v2 = *(DerivedStorage + 8);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 8) = 0;
  }
}

uint64_t figTTMLDocumentWriterRegionBuilder_StartElement(uint64_t a1, int a2)
{
  FigTTMLDocumentWriterGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v4 = FigTTMLDocumentWriterElementCreate(*MEMORY[0x1E695E480], a2, *(DerivedStorage + 16), &cf);
  if (v4)
  {
    v7 = cf;
    if (!cf)
    {
      return v4;
    }

    goto LABEL_9;
  }

  v5 = *(DerivedStorage + 16);
  if (v5)
  {
    FigTTMLDocumentWriterElementAddChildElement(v5, cf);
  }

  else
  {
    if (cf)
    {
      v6 = CFRetain(cf);
    }

    else
    {
      v6 = 0;
    }

    *(DerivedStorage + 8) = v6;
  }

  v7 = cf;
  *(DerivedStorage + 16) = cf;
  if (v7)
  {
LABEL_9:
    CFRelease(v7);
  }

  return v4;
}

uint64_t figTTMLDocumentWriterRegionBuilder_AddCaptionData(uint64_t a1, const void *a2)
{
  FigTTMLDocumentWriterGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigTTMLDocumentWriterElementAddChildElement(*(DerivedStorage + 16), a2);
  return 0;
}

uint64_t figTTMLDocumentWriterRegionBuilder_SetAttribute(uint64_t a1, const void *a2, const void *a3)
{
  FigTTMLDocumentWriterGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigTTMLDocumentWriterElementSetAttribute(*(DerivedStorage + 16), a2, a3);
  return 0;
}

uint64_t figTTMLDocumentWriterRegionBuilder_Flush(uint64_t a1)
{
  FigTTMLDocumentWriterGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage[2])
  {
    return 4294950721;
  }

  v3 = *DerivedStorage;

  return FigTTMLDocumentWriterFlush(v3);
}

void addRegionElement(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  v16 = 0;
  v5 = *MEMORY[0x1E695E480];
  v6 = FigTTMLDocumentWriterElementCreate(*MEMORY[0x1E695E480], 10, *a3, &v16);
  if (v6 || (MEMORY[0x19A8D3660](&initRegionPropertyToAttributeMapOnce, initRegionPropertyToAttributeMap), (v6 = FigTTMLDocumentWriterRegionTimelineWriteAttributesAndSetElements(a2, v16, sExplicitRegionPropertyToAttributeMap)) != 0))
  {
    v11 = v6;
LABEL_30:
    *(a3 + 8) = v11;
    goto LABEL_24;
  }

  v7 = v16;
  cf.value = 0;
  v18 = 0;
  v8 = FigTTMLDocumentWriterRegionTimelineCopyProperty(a2, *MEMORY[0x1E69613B0], &cf);
  if (v8 || (v8 = FigTTMLDocumentWriterRegionTimelineCopyProperty(a2, *MEMORY[0x1E6961328], &v18)) != 0)
  {
    v11 = v8;
    goto LABEL_12;
  }

  FigGeometryDimensionMake();
  v9 = FigGeometryDimensionCopyAsDictionary();
  v10 = v9;
  if (!(cf.value | v18))
  {
    v11 = 0;
    if (!v9)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (cf.value)
  {
    if (v18)
    {
      goto LABEL_8;
    }
  }

  else
  {
    FigCaptionDynamicStyleCreate();
    if (v18)
    {
      goto LABEL_8;
    }
  }

  FigCaptionDynamicStyleCreate();
LABEL_8:
  memset(&v17, 0, sizeof(v17));
  FigTTMLDocumentWriterRegionTimelineGetTimeRange(a2, &v17);
  *&v14.start.value = *&v17.start.value;
  v14.start.epoch = v17.start.epoch;
  v11 = FigTTMLDocumentWriterMapWidthAndHeightPropertiesToExtentAttributeAndSet(cf.value, v18, &v14.start, v7);
  if (v10)
  {
LABEL_11:
    CFRelease(v10);
  }

LABEL_12:
  if (v18)
  {
    CFRelease(v18);
  }

  if (cf.value)
  {
    CFRelease(cf.value);
  }

  if (v11)
  {
    goto LABEL_30;
  }

  if (FigTTMLDocumentWriterRegionTimelineIsAnimated(a2))
  {
    memset(&v17, 0, sizeof(v17));
    FigTTMLDocumentWriterRegionTimelineGetTimeRange(a2, &v17);
    *&v14.start.value = *&v17.start.value;
    v14.start.epoch = v17.start.epoch;
    v12 = CMTimeCopyAsDictionary(&v14.start, v5);
    v14 = v17;
    CMTimeRangeGetEnd(&cf, &v14);
    v13 = CMTimeCopyAsDictionary(&cf, v5);
    FigTTMLDocumentWriterElementSetAttribute(v16, @"begin", v12);
    FigTTMLDocumentWriterElementSetAttribute(v16, @"end", v13);
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  FigTTMLDocumentWriterElementAddChildElement(*a3, v16);
  if (v13)
  {
    CFRelease(v13);
  }

  if (v12)
  {
    CFRelease(v12);
  }

LABEL_24:
  if (v16)
  {
    CFRelease(v16);
  }
}

void initRegionPropertyToAttributeMap()
{
  v0 = *MEMORY[0x1E695E480];
  v1 = MEMORY[0x1E695E9D8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], 0);
  CFDictionarySetValue(Mutable, *MEMORY[0x1E6961338], FigTTMLDocumentWriterMapPropertyToAttribute_Identifier);
  CFDictionarySetValue(Mutable, *MEMORY[0x1E6961390], FigTTMLDocumentWriterMapPropertyToAttribute_Position);
  CFDictionarySetValue(Mutable, *MEMORY[0x1E69612F8], FigTTMLDocumentWriterMapPropertyToAttribute_ClipOverflow);
  CFDictionarySetValue(Mutable, *MEMORY[0x1E69613A0], FigTTMLDocumentWriterMapPropertyToAttribute_ShowBackground);
  CFDictionarySetValue(Mutable, *MEMORY[0x1E6961380], FigTTMLDocumentWriterMapPropertyToAttribute_Opacity);
  CFDictionarySetValue(Mutable, *MEMORY[0x1E6961320], FigTTMLDocumentWriterMapPropertyToAttribute_ForcedDisplay);
  CFDictionarySetValue(Mutable, *MEMORY[0x1E69612E8], FigTTMLDocumentWriterMapPropertyToAttribute_BackgroundColor);
  CFDictionarySetValue(Mutable, *MEMORY[0x1E69613B8], FigTTMLDocumentWriterMapPropertyToAttribute_WritingMode);
  CFDictionarySetValue(Mutable, *MEMORY[0x1E6961308], FigTTMLDocumentWriterMapPropertyToAttribute_DisplayAlign);
  CFDictionarySetValue(Mutable, *MEMORY[0x1E6961330], FigTTMLDocumentWriterMapPropertyToAttribute_Hidden);
  CFDictionarySetValue(Mutable, *MEMORY[0x1E6961370], FigTTMLDocumentWriterMapPropertyToAttribute_Invisible);
  CFDictionarySetValue(Mutable, *MEMORY[0x1E6961388], FigTTMLDocumentWriterMapPropertyToAttribute_Padding);
  CFDictionarySetValue(Mutable, *MEMORY[0x1E69613C0], FigTTMLDocumentWriterMapPropertyToAttribute_ZIndex);
  sExplicitRegionPropertyToAttributeMap = Mutable;
  v3 = CFDictionaryCreateMutable(v0, 0, v1, 0);
  CFDictionarySetValue(v3, *MEMORY[0x1E6961310], FigTTMLDocumentWriterMapPropertyToAttribute_DisplayAspectRatio);
  CFDictionarySetValue(v3, *MEMORY[0x1E69612D0], FigTTMLDocumentWriterMapPropertyToAttribute_ActiveArea);
  CFDictionarySetValue(v3, *MEMORY[0x1E69612F0], FigTTMLDocumentWriterMapPropertyToAttribute_CellResolution);
  sRootContainerRegionPropertyToAttributeMap = v3;
}

uint64_t copyRootContainerRegion(uint64_t a1, uint64_t a2)
{
  v15 = 0;
  cf = 0;
  CMBaseObject = FigCaptionDataGetCMBaseObject();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v4 || (v5 = *MEMORY[0x1E695E480], v4(CMBaseObject, *MEMORY[0x1E6961240], *MEMORY[0x1E695E480], &v15), !v15))
  {
LABEL_15:
    v12 = 0;
    if (!a2)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v6 = *MEMORY[0x1E6961300];
  v7 = *MEMORY[0x1E6961318];
  while (1)
  {
    v14 = 0;
    v8 = FigCaptionRegionGetCMBaseObject();
    v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v9)
    {
      v9(v8, v6, v5, &v14);
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    v10 = FigCaptionRegionGetCMBaseObject();
    v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v11)
    {
      v11(v10, v7, v5, &cf);
    }

    if (!v14 && !FigCFEqual())
    {
      break;
    }

    if (v15)
    {
      CFRelease(v15);
    }

    v15 = v14;
    if (!v14)
    {
      goto LABEL_15;
    }
  }

  v12 = v15;
  v15 = 0;
  if (a2)
  {
LABEL_16:
    *a2 = v12;
    a2 = 2;
    v12 = 0;
  }

LABEL_17:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  return a2;
}

uint64_t CreatePropertyStore(const void *a1, const void *a2, const void *a3, const void *a4, const void *a5, NSObject *a6, NSObject *a7, uint64_t a8, const void *a9, void *a10)
{
  v18 = *MEMORY[0x1E695E480];
  if (_MergedGlobals_114 != -1)
  {
    CreatePropertyStore_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v20 = Instance;
    v21 = CFRetain(a1);
    v20[7] = v21;
    Count = CFArrayGetCount(v21);
    Mutable = CFDictionaryCreateMutable(v18, Count, MEMORY[0x1E695E9D8], 0);
    v20[8] = Mutable;
    if (Mutable)
    {
      v24 = CFArrayCreateMutable(v18, 0, 0);
      v20[10] = v24;
      if (v24)
      {
        v25 = FigDispatchQueueCreateWithPriority();
        v20[2] = v25;
        if (v25)
        {
          v20[13] = a8;
          v20[14] = CFRetain(a9);
          v20[11] = a6;
          dispatch_retain(a6);
          v20[12] = a7;
          dispatch_retain(a7);
          v20[3] = CFRetain(a2);
          v20[4] = CFRetain(a3);
          v20[5] = CFRetain(a4);
          v26 = CFRetain(a5);
          result = 0;
          v20[6] = v26;
          *a10 = v20;
          return result;
        }

        v28 = 457;
      }

      else
      {
        v28 = 454;
      }
    }

    else
    {
      v28 = 452;
    }

    CreatePropertyStore_cold_2(v28, v20, &v29);
    return v29;
  }

  else
  {
    CreatePropertyStore_cold_3(&v30);
    return v30;
  }
}

uint64_t InitializeProperty(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5)
{
  v10 = a5;
  v11 = 0;
  v6[0] = a1;
  v6[1] = a2;
  v7 = a3;
  v8 = a4;
  v9 = 0;
  dispatch_sync_f(*(a1 + 16), v6, PerformInitializeProperty);
  return v11;
}

uint64_t QueryProperty(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4, void *a5, void *a6)
{
  memset(v16, 0, sizeof(v16));
  v14[0] = a1;
  v14[1] = a2;
  *cf = 0u;
  LOBYTE(v16[1]) = 0;
  dispatch_sync_f(*(a1 + 16), v14, PerformQueryProperty);
  if (a3)
  {
    *a3 = cf[0];
  }

  if (a4)
  {
    *a4 = HIDWORD(cf[0]);
  }

  if (a5)
  {
    v10 = cf[1];
    if (cf[1])
    {
      v10 = CFRetain(cf[1]);
    }

    *a5 = v10;
  }

  if (a6)
  {
    v11 = v16[0];
    if (v16[0])
    {
      v11 = CFRetain(v16[0]);
    }

    *a6 = v11;
  }

  v12 = HIDWORD(v16[1]);
  TearDownFetchPropertyContext(v14);
  return v12;
}

void TearDownFetchPropertyContext(void *a1)
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

  v4 = a1[6];
  if (v4)
  {
    dispatch_release(v4);
    a1[6] = 0;
  }
}

uint64_t RequestPropertiesAsync(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  v8 = a4;
  v9 = 0;
  context[1] = a2;
  v7 = 0;
  context[0] = a1;
  dispatch_sync_f(*(a1 + 16), context, PerformMultiplePropertyRequest);
  result = v9;
  if (a3)
  {
    if (!v9)
    {
      *a3 = v7;
    }
  }

  return result;
}

void PerformMultiplePropertyRequest(uint64_t *a1)
{
  Count = CFArrayGetCount(a1[1]);
  if (a1[3])
  {
    Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], Count, MEMORY[0x1E695E9F8]);
    if (!Mutable)
    {
      PerformMultiplePropertyRequest_cold_1(v11);
      v4 = v11[0];
      goto LABEL_21;
    }
  }

  else
  {
    Mutable = 0;
  }

  if (Count < 1)
  {
    v6 = 1;
    if (Mutable)
    {
LABEL_15:
      if (a1[3] && CFSetGetCount(Mutable))
      {
        *a1[3] = FigAtomicIncrement32();
        v9 = malloc_type_calloc(1uLL, 0x10uLL, 0x1020040D5A9D86FuLL);
        if (!v9)
        {
          PerformMultiplePropertyRequest_cold_2(v11);
          v4 = v11[0];
          goto LABEL_20;
        }

        v10 = v9;
        *v9 = *a1[3];
        *(v9 + 1) = CFRetain(Mutable);
        CFArrayAppendValue(*(*a1 + 80), v10);
      }
    }

LABEL_19:
    v4 = 0;
    *(a1 + 16) = v6;
    if (!Mutable)
    {
      goto LABEL_21;
    }

LABEL_20:
    CFRelease(Mutable);
    goto LABEL_21;
  }

  v5 = 0;
  v6 = 1;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1[1], v5);
    v8 = *a1;
    v18 = 0;
    v11[0] = v8;
    v11[1] = ValueAtIndex;
    v14 = 0;
    v15 = 0;
    v12 = 0;
    v13 = 0;
    v17 = 0;
    v16 = 0;
    PerformObtainProperty(v11);
    v4 = v16;
    if (v16)
    {
      break;
    }

    if ((v12 & 0xFFFFFFFE) != 2)
    {
      v6 = 0;
      if (Mutable)
      {
        CFSetAddValue(Mutable, ValueAtIndex);
        v6 = 0;
      }
    }

    TearDownFetchPropertyContext(v11);
    if (Count == ++v5)
    {
      if (Mutable)
      {
        goto LABEL_15;
      }

      goto LABEL_19;
    }
  }

  TearDownFetchPropertyContext(v11);
  if (Mutable)
  {
    goto LABEL_20;
  }

LABEL_21:
  *(a1 + 8) = v4;
}

void NotifyCompletedBatch(uint64_t a1, int a2)
{
  valuePtr = a2;
  v2 = *MEMORY[0x1E695E480];
  cf = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  v3 = CFDictionaryCreate(v2, kFigAssetPayloadKey_BatchID, &cf, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  if (v3)
  {
    CFRelease(v3);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void ReviseProperty(void *a1, const void *a2, const void *a3)
{
  v6 = malloc_type_calloc(1uLL, 0x28uLL, 0x10E0040D8CEB3B9uLL);
  if (v6)
  {
    v7 = v6;
    *v6 = CFRetain(a1);
    v7[1] = a2;
    if (a2)
    {
      CFRetain(a2);
    }

    v7[4] = a3;
    if (a3)
    {
      CFRetain(a3);
    }

    v8 = a1[2];

    dispatch_async_f(v8, v7, PerformReviseProperty);
  }
}

void PerformJobCompletion(void *a1)
{
  if (!*(a1 + 49))
  {
    StoreProperty(*a1, *(a1 + 1), *(a1 + 4), *(a1 + 4), *(a1 + 3));
  }

  v2 = *(a1 + 1);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 3);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 4);
  if (v4)
  {
    CFRelease(v4);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  v5 = *(a1 + 5);
  if (v5)
  {
    CFRelease(v5);
  }

  free(a1);
}

void StoreByProduct(void *a1, const void *a2, int a3, const void *a4, const void *a5)
{
  v10 = malloc_type_calloc(1uLL, 0x28uLL, 0x10E0040D8CEB3B9uLL);
  if (v10)
  {
    v11 = v10;
    *v10 = CFRetain(a1);
    v11[1] = a2;
    if (a2)
    {
      CFRetain(a2);
    }

    if (a3)
    {
      v11[3] = a4;
      if (a4)
      {
        CFRetain(a4);
      }
    }

    *(v11 + 4) = a3;
    v11[4] = a5;
    if (a5)
    {
      CFRetain(a5);
    }

    v12 = a1[2];

    dispatch_async_f(v12, v11, PerformStoreByProduct);
  }
}

void PerformStoreByProduct(uint64_t a1)
{
  StoreProperty(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32));
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    CFRelease(v4);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  free(a1);
}

uint64_t DefineMacroProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a1;
  v4[1] = a2;
  v4[2] = a3;
  v5 = 0;
  dispatch_sync_f(*(a1 + 16), v4, PerformDefineMacroProperty);
  return v5;
}

void PerformDefineMacroProperty(const void **a1)
{
  v2 = *(*a1 + 15);
  if (v2)
  {
    if (CFDictionaryContainsKey(v2, a1[1]))
    {
      fig_log_get_emitter();
      v3 = FigSignalErrorAtGM();
LABEL_4:
      v4 = v3;
      goto LABEL_30;
    }

    Mutable = *(*a1 + 15);
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    *(*a1 + 15) = Mutable;
  }

  CFDictionarySetValue(Mutable, a1[1], a1[2]);
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v27 = 0;
  *cf = 0u;
  v26 = 0u;
  *value = 0u;
  v22 = 0;
  Count = CFArrayGetCount(v8);
  v23 = v6;
  if (Count < 1)
  {
    v3 = AccessPropertyInfo(v6, v7, &v22);
    if (v3)
    {
      goto LABEL_4;
    }

    if (Count)
    {
LABEL_31:
      StoreProperty(v6, v7, 0, 0, 0);
    }

    v10 = 0;
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v12 = *MEMORY[0x1E695E480];
    v13 = MEMORY[0x1E695E9F8];
    do
    {
      value[0] = CFArrayGetValueAtIndex(v8, v11);
      PerformQueryProperty(&v23);
      v4 = DWORD1(v26);
      if (DWORD1(v26))
      {
        goto LABEL_40;
      }

      if (LODWORD(value[1]) != 2)
      {
        if (LODWORD(value[1]) == 3)
        {
          v20 = HIDWORD(value[1]);
          if (cf[0])
          {
            v18 = CFRetain(cf[0]);
          }

          else
          {
            v18 = 0;
          }

          if (v10)
          {
            CFRelease(v10);
          }

          TearDownFetchPropertyContext(&v23);
          v21 = AccessPropertyInfo(v6, v7, &v22);
          if (!v21)
          {
            StoreProperty(v6, v7, v20, v18, 0);
            v10 = 0;
            goto LABEL_26;
          }

          v4 = v21;
          goto LABEL_28;
        }

        if (!v10)
        {
          v10 = CFSetCreateMutable(v12, Count, v13);
          if (!v10)
          {
            PerformDefineMacroProperty_cold_2(&v28);
            v4 = v28;
            goto LABEL_30;
          }
        }

        CFSetAddValue(v10, value[0]);
      }

      TearDownFetchPropertyContext(&v23);
      ++v11;
    }

    while (Count != v11);
    v14 = AccessPropertyInfo(v6, v7, &v22);
    if (v14)
    {
      v4 = v14;
LABEL_40:
      v18 = 0;
      if (v10)
      {
        goto LABEL_27;
      }

      goto LABEL_28;
    }

    if (!v10)
    {
      goto LABEL_31;
    }

    v15 = malloc_type_calloc(1uLL, 0x10uLL, 0x600405C6656D0uLL);
    if (!v15)
    {
      PerformDefineMacroProperty_cold_1(&v28);
      v18 = 0;
      v4 = v28;
      goto LABEL_27;
    }

    v16 = v15;
    *v15 = CFRetain(v7);
    v16[1] = CFRetain(v10);
    v17 = *(v6 + 128);
    if (!v17)
    {
      v17 = CFArrayCreateMutable(v12, 0, 0);
      *(v6 + 128) = v17;
    }

    CFArrayAppendValue(v17, v16);
  }

  v18 = 0;
LABEL_26:
  v4 = 0;
  v19 = v22;
  v22[32] = 1;
  *(v19 + 2) = 0;
  if (v10)
  {
LABEL_27:
    CFRelease(v10);
  }

LABEL_28:
  if (v18)
  {
    CFRelease(v18);
  }

LABEL_30:
  *(a1 + 6) = v4;
}

uint64_t CreateValidationStore(const void *a1, NSObject *a2, NSObject *a3, uint64_t a4, const void *a5, void *a6)
{
  v12 = *MEMORY[0x1E695E480];
  if (qword_1ED4CB848 != -1)
  {
    CreateValidationStore_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    CreateValidationStore_cold_3(&v22);
    return v22;
  }

  v14 = Instance;
  Mutable = CFDictionaryCreateMutable(v12, 0, MEMORY[0x1E695E9D8], 0);
  v14[4] = Mutable;
  if (!Mutable)
  {
    v20 = 1497;
LABEL_15:
    CreatePropertyStore_cold_2(v20, v14, &v21);
    return v21;
  }

  v16 = CFDictionaryCreateMutable(v12, 0, MEMORY[0x1E695E9D8], 0);
  v14[5] = v16;
  if (!v16)
  {
    v20 = 1499;
    goto LABEL_15;
  }

  v17 = dispatch_queue_create("AssetValidationStoreQueue", 0);
  v14[2] = v17;
  if (!v17)
  {
    v20 = 1502;
    goto LABEL_15;
  }

  v14[8] = a4;
  v14[9] = CFRetain(a5);
  v14[6] = a2;
  dispatch_retain(a2);
  v14[7] = a3;
  dispatch_retain(a3);
  if (a1)
  {
    v18 = CFRetain(a1);
  }

  else
  {
    v18 = 0;
  }

  result = 0;
  v14[3] = v18;
  *a6 = v14;
  return result;
}

uint64_t RegisterAssetPropertyStoreType(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

double AssetPropertyStore_Init(_OWORD *a1)
{
  result = 0.0;
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

void AssetPropertyStore_Finalize(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    dispatch_release(v2);
    *(a1 + 88) = 0;
  }

  v3 = *(a1 + 96);
  if (v3)
  {
    dispatch_release(v3);
    *(a1 + 96) = 0;
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    dispatch_release(v4);
    *(a1 + 16) = 0;
  }

  v5 = *(a1 + 64);
  if (v5)
  {
    CFDictionaryApplyFunction(v5, PerPropertyInfoDisposalApplierFunction, 0);
    v6 = *(a1 + 64);
    if (v6)
    {
      CFRelease(v6);
      *(a1 + 64) = 0;
    }
  }

  v7 = *(a1 + 120);
  if (v7)
  {
    CFRelease(v7);
    *(a1 + 120) = 0;
  }

  v8 = *(a1 + 56);
  if (v8)
  {
    CFRelease(v8);
    *(a1 + 56) = 0;
  }

  v9 = *(a1 + 24);
  if (v9)
  {
    CFRelease(v9);
    *(a1 + 24) = 0;
  }

  v10 = *(a1 + 32);
  if (v10)
  {
    CFRelease(v10);
    *(a1 + 32) = 0;
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    CFRelease(v11);
    *(a1 + 40) = 0;
  }

  v12 = *(a1 + 48);
  if (v12)
  {
    CFRelease(v12);
    *(a1 + 48) = 0;
  }

  v13 = *(a1 + 112);
  if (v13)
  {
    CFRelease(v13);
    *(a1 + 112) = 0;
  }

  v14 = *(a1 + 80);
  if (v14)
  {
    Count = CFArrayGetCount(v14);
    if (Count >= 1)
    {
      v16 = Count;
      for (i = 0; i != v16; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 80), i);
        if (ValueAtIndex)
        {
          v19 = ValueAtIndex;
          v20 = *(ValueAtIndex + 1);
          if (v20)
          {
            CFRelease(v20);
          }

          free(v19);
        }
      }
    }

    v21 = *(a1 + 80);
    if (v21)
    {
      CFRelease(v21);
      *(a1 + 80) = 0;
    }
  }

  v22 = *(a1 + 128);
  if (v22)
  {
    v23 = CFArrayGetCount(v22);
    if (v23 >= 1)
    {
      v24 = v23;
      for (j = 0; j != v24; ++j)
      {
        v26 = CFArrayGetValueAtIndex(*(a1 + 128), j);
        if (v26)
        {
          v27 = v26;
          v28 = v26[1];
          if (v28)
          {
            CFRelease(v28);
            v27[1] = 0;
          }

          if (*v27)
          {
            CFRelease(*v27);
          }

          free(v27);
        }
      }
    }

    v29 = *(a1 + 128);
    if (v29)
    {
      CFRelease(v29);
      *(a1 + 128) = 0;
    }
  }
}

__CFString *AssetPropertyStore_CopyDebugDesc(void *a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  v3 = CFGetRetainCount(a1);
  CFStringAppendFormat(Mutable, 0, @"<AssetPropertyStore %p> RC %d WRC %p WG %p WQ %p", a1, v3, a1[14], a1[12], a1[11]);
  return Mutable;
}

void PerPropertyInfoDisposalApplierFunction(int a1, void *a2)
{
  if (a2)
  {
    v3 = a2[1];
    if (v3)
    {
      CFRelease(v3);
      a2[1] = 0;
    }

    v4 = a2[2];
    if (v4)
    {
      CFRelease(v4);
    }

    free(a2);
  }
}

uint64_t AccessPropertyInfo(const __CFArray **a1, const void *a2, const void **a3)
{
  if (CFDictionaryGetValueIfPresent(a1[8], a2, a3))
  {
    return 0;
  }

  v7 = a1[7];
  v12.length = CFArrayGetCount(v7);
  v12.location = 0;
  if (CFArrayContainsValue(v7, v12, a2) || (v10 = a1[15]) != 0 && CFDictionaryContainsKey(v10, a2))
  {
    v8 = malloc_type_calloc(1uLL, 0x28uLL, 0x10E00406F9AF8A3uLL);
    if (v8)
    {
      v9 = v8;
      CFDictionarySetValue(a1[8], a2, v8);
      result = 0;
      *a3 = v9;
    }

    else
    {
      AccessPropertyInfo_cold_1(&v11);
      return v11;
    }
  }

  else
  {
    *a3 = 0;
    return 4294955124;
  }

  return result;
}

uint64_t RegisterAssetValidationStoreType(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

double AssetValidationStore_Init(_OWORD *a1)
{
  result = 0.0;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  return result;
}

void AssetValidationStore_Finalize(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    dispatch_release(v2);
    a1[6] = 0;
  }

  v3 = a1[7];
  if (v3)
  {
    dispatch_release(v3);
    a1[7] = 0;
  }

  v4 = a1[2];
  if (v4)
  {
    dispatch_release(v4);
    a1[2] = 0;
  }

  v5 = a1[4];
  if (v5)
  {
    CFDictionaryApplyFunction(v5, PerValidationInfoDisposalApplierFunction, 0);
    v6 = a1[4];
    if (v6)
    {
      CFRelease(v6);
      a1[4] = 0;
    }
  }

  v7 = a1[5];
  if (v7)
  {
    CFDictionaryApplyFunction(v7, PerValidationInfoDisposalApplierFunction, 0);
    v8 = a1[5];
    if (v8)
    {
      CFRelease(v8);
      a1[5] = 0;
    }
  }

  v9 = a1[3];
  if (v9)
  {
    CFRelease(v9);
    a1[3] = 0;
  }

  v10 = a1[9];
  if (v10)
  {
    CFRelease(v10);
    a1[9] = 0;
  }
}

__CFString *AssetValidationStore_CopyDebugDesc(void *a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  v3 = CFGetRetainCount(a1);
  CFStringAppendFormat(Mutable, 0, @"<AssetValidationStore %p> RC %d WRC %p WG %p WQ %p", a1, v3, a1[9], a1[7], a1[6]);
  return Mutable;
}

void PerValidationInfoDisposalApplierFunction(int a1, void *a2)
{
  if (a2)
  {
    free(a2);
  }
}

uint64_t AccessValidationInfo(uint64_t a1, CFTypeRef cf1, const void *a3, const void **a4)
{
  if (CFEqual(cf1, @"validationCriteria_Custom"))
  {
    if (!CFDictionaryGetValueIfPresent(*(a1 + 40), a3, a4))
    {
      v8 = malloc_type_calloc(1uLL, 0x10uLL, 0x1000040D9A13B51uLL);
      if (v8)
      {
        v9 = v8;
        CFDictionarySetValue(*(a1 + 40), a3, v8);
        result = 0;
        *a4 = v9;
      }

      else
      {
        AccessValidationInfo_cold_1(&v13);
        return v13;
      }

      return result;
    }

    return 0;
  }

  if (CFDictionaryGetValueIfPresent(*(a1 + 32), cf1, a4))
  {
    return 0;
  }

  v11 = malloc_type_calloc(1uLL, 0x10uLL, 0x1000040D9A13B51uLL);
  if (v11)
  {
    v12 = v11;
    CFDictionarySetValue(*(a1 + 32), cf1, v11);
    result = 0;
    *a4 = v12;
  }

  else
  {
    AccessValidationInfo_cold_2(&v14);
    return v14;
  }

  return result;
}

_BYTE *fbarp_inhibitOutputUntil(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  result = CMBaseObjectGetDerivedStorage();
  if (a5)
  {
    v7 = result;
    if (!*result)
    {
      Value = CFDictionaryGetValue(a5, *MEMORY[0x1E6960580]);
      FigSimpleMutexLock();
      v9 = *(v7 + 14);
      *(v7 + 14) = Value;
      if (Value)
      {
        CFRetain(Value);
      }

      if (v9)
      {
        CFRelease(v9);
      }

      return FigSimpleMutexUnlock();
    }
  }

  return result;
}

_BYTE *fbarp_resetOutput(uint64_t a1, const void *a2)
{
  result = CMBaseObjectGetDerivedStorage();
  if (!*result)
  {
    v4 = result;
    fbarp_postNotificationSync(a2, @"ResetOutput");
    FigSimpleMutexLock();
    v5 = MEMORY[0x1E6960CC0];
    *(v4 + 168) = *MEMORY[0x1E6960CC0];
    *(v4 + 23) = *(v5 + 16);

    return FigSimpleMutexUnlock();
  }

  return result;
}

uint64_t FigSampleBufferProcessorForBufferedAirPlayCopyPerformanceDictionary(uint64_t a1, __CFDictionary **a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v4 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v6 = Mutable;
    v20 = *(DerivedStorage + 9);
    v7 = CMTimeCopyAsDictionary(&v20, v4);
    if (v7)
    {
      v8 = v7;
      CFDictionarySetValue(v6, @"FirstMediaSamplePts", v7);
      CFRelease(v8);
      v20 = *(DerivedStorage + 10);
      v9 = CMTimeCopyAsDictionary(&v20, v4);
      if (v9)
      {
        v10 = v9;
        CFDictionarySetValue(v6, @"LastMediaSamplePts", v9);
        CFRelease(v10);
        v20 = *(DerivedStorage + 11);
        v11 = CMTimeCopyAsDictionary(&v20, v4);
        if (v11)
        {
          v12 = v11;
          CFDictionarySetValue(v6, @"FirstContinuousSamplePts", v11);
          CFRelease(v12);
          v20 = *(DerivedStorage + 12);
          v13 = CMTimeCopyAsDictionary(&v20, v4);
          if (v13)
          {
            v14 = v13;
            CFDictionarySetValue(v6, @"LastContinuousSamplePts", v13);
            CFRelease(v14);
            v20 = *(DerivedStorage + 13);
            v15 = CMTimeCopyAsDictionary(&v20, v4);
            if (v15)
            {
              v16 = v15;
              CFDictionarySetValue(v6, @"DurationProcessed", v15);
              CFRelease(v16);
              value_low = 0;
              if (a2)
              {
                *a2 = v6;
              }

              goto LABEL_9;
            }

            v19 = 1195;
          }

          else
          {
            v19 = 1190;
          }
        }

        else
        {
          v19 = 1185;
        }
      }

      else
      {
        v19 = 1180;
      }
    }

    else
    {
      v19 = 1175;
    }

    FigSampleBufferProcessorForBufferedAirPlayCopyPerformanceDictionary_cold_1(v19, (DerivedStorage + 17), v6, &v20);
    return LODWORD(v20.value);
  }

  FigSampleBufferProcessorForBufferedAirPlayCopyPerformanceDictionary_cold_2(&v20);
  value_low = LODWORD(v20.value);
LABEL_9:
  FigSimpleMutexUnlock();
  return value_low;
}

uint64_t fbarpInvalidate()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v1 = DerivedStorage;
    if (!*DerivedStorage)
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      if (*(v1 + 15))
      {
        FigSimpleMutexLock();
      }

      v2 = *(v1 + 14);
      if (v2)
      {
        CFRelease(v2);
        *(v1 + 14) = 0;
      }

      if (*(v1 + 15))
      {
        FigSimpleMutexUnlock();
      }

      v3 = *(v1 + 3);
      if (v3)
      {
        CFRelease(v3);
        *(v1 + 3) = 0;
      }

      v4 = *(v1 + 4);
      if (v4)
      {
        CFRelease(v4);
        *(v1 + 4) = 0;
      }

      v5 = *(v1 + 12);
      if (v5)
      {
        CFRelease(v5);
        *(v1 + 12) = 0;
      }

      v6 = *(v1 + 13);
      if (v6)
      {
        CFRelease(v6);
        *(v1 + 13) = 0;
      }

      v7 = *(v1 + 43);
      if (v7)
      {
        CFRelease(v7);
        *(v1 + 43) = 0;
      }

      v1[128] = 0;
      *(v1 + 1) = 0;
      *(v1 + 2) = 0;
      FigSimpleMutexLock();
      v8 = MEMORY[0x1E6960C70];
      *(v1 + 9) = *MEMORY[0x1E6960C70];
      *(v1 + 20) = *(v8 + 16);
      FigSimpleMutexUnlock();
      *v1 = 1;
    }
  }

  return 0;
}

void fbarpFinalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  fbarpInvalidate();
  if (*(DerivedStorage + 120))
  {
    FigSimpleMutexDestroy();
    *(DerivedStorage + 120) = 0;
  }

  FigSimpleMutexDestroy();
  v1 = *(DerivedStorage + 336);
  if (v1)
  {
    dispatch_sync(v1, &__block_literal_global_92);
    dispatch_release(*(DerivedStorage + 336));
    *(DerivedStorage + 336) = 0;
  }
}

__CFString *fbarpCopyDebugDesc(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(DerivedStorage);
  Mutable = CFStringCreateMutable(v3, 0);
  v5 = CFGetRetainCount(DerivedStorage);
  if (*DerivedStorage)
  {
    v6 = " (invalidated)";
  }

  else
  {
    v6 = "";
  }

  v7 = CFGetAllocator(DerivedStorage);
  CFStringAppendFormat(Mutable, 0, @"<FigSampleBufferProcessor_BufferedAirPlay %p> retainCount: %d%s allocator: %p\n", a1, v5, v6, v7);
  return Mutable;
}

uint64_t fbarp_setOutputCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 8) = a2;
  *(DerivedStorage + 16) = a3;
  return 0;
}

uint64_t fbarp_processSampleBuffer(const void *a1, opaqueCMSampleBuffer *a2)
{
  v66 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v60 = *MEMORY[0x1E6960C70];
  v61 = *(MEMORY[0x1E6960C70] + 8);
  v5 = *MEMORY[0x1E6960C70];
  *&v53.value = *MEMORY[0x1E6960C70];
  v6 = *(MEMORY[0x1E6960C70] + 16);
  v53.epoch = v6;
  v58 = v60;
  timescale = v61;
  if (!a2)
  {
    fbarp_processSampleBuffer_cold_4(&sampleBufferOut);
    return LODWORD(sampleBufferOut.value);
  }

  v7 = DerivedStorage;
  v51 = v5;
  v8 = CMBaseObjectGetDerivedStorage();
  sampleBufferOut.value = 0;
  Copy = CMSampleBufferCreateCopy(*(v8 + 24), a2, &sampleBufferOut);
  if (!sampleBufferOut.value)
  {
    fbarp_processSampleBuffer_cold_1(&lhs);
    v12 = 0;
    value = lhs.value;
    goto LABEL_10;
  }

  value = Copy;
  v11 = CMCopyDictionaryOfAttachments(*(v8 + 24), a2, 0);
  if (v11)
  {
    CMSetAttachments(sampleBufferOut.value, v11, 0);
  }

  if (!sampleBufferOut.value)
  {
    v12 = 0;
    if (!v11)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v12 = CFRetain(sampleBufferOut.value);
  if (v11)
  {
LABEL_9:
    CFRelease(v11);
  }

LABEL_10:
  if (sampleBufferOut.value)
  {
    CFRelease(sampleBufferOut.value);
  }

  if (!v12)
  {
    fbarp_processSampleBuffer_cold_3(&sampleBufferOut);
    return LODWORD(sampleBufferOut.value);
  }

  v52 = value;
  CMSampleBufferGetOutputDuration(&sampleBufferOut, v12);
  v58 = sampleBufferOut.value;
  flags = sampleBufferOut.flags;
  timescale = sampleBufferOut.timescale;
  epoch = sampleBufferOut.epoch;
  CMSampleBufferGetOutputPresentationTimeStamp(&sampleBufferOut, v12);
  v60 = sampleBufferOut.value;
  v15 = sampleBufferOut.flags;
  v61 = sampleBufferOut.timescale;
  v16 = sampleBufferOut.epoch;
  if (sampleBufferOut.flags)
  {
    FigSimpleMutexLock();
    lhs.value = v60;
    lhs.timescale = v61;
    lhs.flags = v15;
    lhs.epoch = v16;
    rhs.value = v58;
    rhs.timescale = timescale;
    rhs.flags = flags;
    rhs.epoch = epoch;
    CMTimeAdd(&sampleBufferOut, &lhs, &rhs);
    *(v7 + 144) = sampleBufferOut;
    FigSimpleMutexUnlock();
  }

  v50 = epoch;
  v17 = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(v17 + 112))
  {
    v18 = CMGetAttachment(v12, *MEMORY[0x1E6960518], 0);
    if (!FigCFEqual())
    {
      FigSimpleMutexUnlock();
      value_low = v52;
      goto LABEL_28;
    }

    v19 = v15;
    v20 = a1;
    v21 = flags;
    v22 = v16;
    v23 = v6;
    v24 = *(v17 + 112);
    if (v24)
    {
      CFRelease(v24);
      *(v17 + 112) = 0;
    }

    FigSimpleMutexLock();
    v25 = MEMORY[0x1E6960CC0];
    v49 = *MEMORY[0x1E6960CC0];
    *(v17 + 192) = *MEMORY[0x1E6960CC0];
    v26 = *(v25 + 16);
    *(v17 + 208) = v26;
    FigSimpleMutexUnlock();
    *(v17 + 44) = v49;
    *(v17 + 60) = v26;
    v6 = v23;
    v16 = v22;
    flags = v21;
    a1 = v20;
    v15 = v19;
  }

  else
  {
    v18 = 0;
  }

  FigSimpleMutexUnlock();
  value_low = v52;
  if (!CMGetAttachment(v12, *MEMORY[0x1E6962E38], 0) || *(v7 + 128))
  {
    if ((v15 & 1) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_30;
  }

  fbarp_postNotificationSync(a1, @"IsGapTrack");
  *(v7 + 128) = 1;
  if (v15)
  {
LABEL_30:
    v30 = *MEMORY[0x1E695E4D0];
    CMSetAttachment(v12, @"BufferedAirPlayIsOriginalContent", *MEMORY[0x1E695E4D0], 0);
    if (v18 || *(v7 + 40))
    {
      MutableCopy = FigCFDictionaryCreateMutableCopy();
      sampleBufferOut.value = v60;
      sampleBufferOut.timescale = v61;
      sampleBufferOut.flags = v15;
      sampleBufferOut.epoch = v16;
      FigCFDictionarySetCMTime();
      *(v7 + 40) = 0;
      fbarp_postNotification(a1, @"ResumeOutputSbufFound", MutableCopy);
      if (MutableCopy)
      {
        CFRelease(MutableCopy);
      }
    }

    if (*(v7 + 92))
    {
      v32 = FigCFDictionaryCreateMutableCopy();
      sampleBufferOut.value = v60;
      sampleBufferOut.timescale = v61;
      sampleBufferOut.flags = v15;
      sampleBufferOut.epoch = v16;
      lhs = *(v7 + 44);
      if (CMTimeCompare(&sampleBufferOut, &lhs))
      {
        FigSimpleMutexLock();
        lhs = *(v7 + 192);
        rhs = *(v7 + 44);
        CMTimeAdd(&sampleBufferOut, &lhs, &rhs);
        *(v7 + 192) = sampleBufferOut;
        FigSimpleMutexUnlock();
      }

      CFDictionarySetValue(v32, @"TransitionID", *(v7 + 96));
      sampleBufferOut = *(v7 + 44);
      FigCFDictionarySetCMTime();
      sampleBufferOut.value = v60;
      sampleBufferOut.timescale = v61;
      sampleBufferOut.flags = v15;
      sampleBufferOut.epoch = v16;
      FigCFDictionarySetCMTime();
      lhs.value = v60;
      lhs.timescale = v61;
      lhs.flags = v15;
      lhs.epoch = v16;
      rhs = *(v7 + 192);
      CMTimeAdd(&sampleBufferOut, &lhs, &rhs);
      FigCFDictionarySetCMTime();
      v33 = *(v7 + 104);
      *(v7 + 104) = v32;
      if (v32)
      {
        CFRetain(v32);
      }

      if (v33)
      {
        CFRelease(v33);
      }

      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();
      if (v32)
      {
        CFRelease(v32);
      }

      v34 = *(v7 + 96);
      if (v34)
      {
        CFRelease(v34);
        *(v7 + 96) = 0;
      }

      *(v7 + 92) = 0;
    }

    sampleBufferOut.value = v60;
    sampleBufferOut.timescale = v61;
    sampleBufferOut.flags = v15;
    sampleBufferOut.epoch = v16;
    lhs = *(v7 + 192);
    CMTimeAdd(&v53, &sampleBufferOut, &lhs);
    sampleBufferOut = v53;
    v35 = CMSampleBufferSetOutputPresentationTimeStamp(v12, &sampleBufferOut);
    if (!v35)
    {
      v28 = 0;
      if (CMGetAttachment(v12, *MEMORY[0x1E69604C0], 0) != v30)
      {
        goto LABEL_54;
      }

      v36 = FigCFDictionaryCreateMutableCopy();
      memset(&sampleBufferOut, 0, sizeof(sampleBufferOut));
      lhs = v53;
      rhs.value = v58;
      rhs.timescale = timescale;
      rhs.flags = flags;
      rhs.epoch = v50;
      CMTimeAdd(&sampleBufferOut, &lhs, &rhs);
      if (v36)
      {
        lhs = sampleBufferOut;
        FigCFDictionarySetCMTime();
        fbarp_postNotification(a1, @"EndOfSiriTTSUtteranceFound", v36);
        CFRelease(v36);
        value_low = 0;
      }

      else
      {
        fbarp_processSampleBuffer_cold_2(&lhs);
        value_low = LODWORD(lhs.value);
      }

      goto LABEL_50;
    }

    value_low = v35;
LABEL_28:
    v29 = v12;
LABEL_72:
    CFRelease(v29);
    return value_low;
  }

LABEL_24:
  if (!v18)
  {
    v38 = CMGetAttachment(v12, *MEMORY[0x1E6960550], 0);
    if (v38)
    {
      *(v7 + 92) = 1;
      *(v7 + 96) = v38;
      CFRetain(v38);
      lhs = *(v7 + 192);
      rhs = *(v7 + 44);
      CMTimeAdd(&sampleBufferOut, &lhs, &rhs);
      v28 = CMTimeCopyAsDictionary(&sampleBufferOut, *MEMORY[0x1E695E480]);
      CMSetAttachment(v12, @"TransitionIDOutputPresentationTimeStamp", v28, 0);
      if (!v52)
      {
        goto LABEL_54;
      }

LABEL_51:
      v37 = 0;
      goto LABEL_68;
    }

    if (!CMGetAttachment(v12, *MEMORY[0x1E6960490], 0) && !CMGetAttachment(v12, *MEMORY[0x1E6962E00], 0))
    {
      CMGetAttachment(v12, *MEMORY[0x1E6960510], 0);
    }

LABEL_50:
    v28 = 0;
    if (!value_low)
    {
      goto LABEL_54;
    }

    goto LABEL_51;
  }

  v28 = 0;
  *(v7 + 40) = 1;
  if (v52)
  {
    goto LABEL_51;
  }

LABEL_54:
  CMSampleBufferGetOutputDuration(&sampleBufferOut, v12);
  v37 = 0;
  v58 = sampleBufferOut.value;
  timescale = sampleBufferOut.timescale;
  if (v15)
  {
    v39 = sampleBufferOut.flags;
    if (sampleBufferOut.flags)
    {
      v40 = sampleBufferOut.epoch;
      sampleBufferOut.value = v58;
      sampleBufferOut.timescale = timescale;
      lhs = **&MEMORY[0x1E6960CC0];
      if (CMTimeCompare(&sampleBufferOut, &lhs) < 1)
      {
        v37 = 0;
      }

      else
      {
        lhs.value = v60;
        lhs.timescale = v61;
        lhs.flags = v15;
        lhs.epoch = v16;
        rhs.value = v58;
        rhs.timescale = timescale;
        rhs.flags = v39;
        rhs.epoch = v40;
        CMTimeAdd(&sampleBufferOut, &lhs, &rhs);
        *(v7 + 44) = sampleBufferOut;
        v41 = *MEMORY[0x1E695E480];
        sampleBufferOut.value = v60;
        sampleBufferOut.timescale = v61;
        sampleBufferOut.flags = v15;
        sampleBufferOut.epoch = v16;
        v37 = CMTimeCopyAsDictionary(&sampleBufferOut, v41);
        CMSetAttachment(v12, @"MediaPresentationTimeStamp", v37, 0);
      }
    }
  }

  v42 = CMBaseObjectGetDerivedStorage();
  *&sampleBufferOut.value = v51;
  sampleBufferOut.epoch = v6;
  CMSampleBufferGetPresentationTimeStamp(&lhs, v12);
  v64 = lhs.value;
  v43 = lhs.flags;
  v65 = lhs.timescale;
  v44 = lhs.epoch;
  CMSampleBufferGetDuration(&lhs, v12);
  v62 = lhs.value;
  v63 = lhs.timescale;
  if (v43)
  {
    v45 = lhs.flags;
    v46 = lhs.epoch;
    FigSimpleMutexLock();
    lhs = *(v42 + 192);
    rhs.value = v64;
    rhs.timescale = v65;
    rhs.flags = v43;
    rhs.epoch = v44;
    CMTimeAdd(&sampleBufferOut, &lhs, &rhs);
    if ((*(v42 + 228) & 1) == 0)
    {
      *(v42 + 216) = v64;
      *(v42 + 224) = v65;
      *(v42 + 228) = v43;
      *(v42 + 232) = v44;
    }

    v54.epoch = v46;
    rhs.value = v64;
    rhs.timescale = v65;
    rhs.flags = v43;
    rhs.epoch = v44;
    v54.value = v62;
    v54.timescale = v63;
    v54.flags = v45;
    CMTimeAdd(&lhs, &rhs, &v54);
    *(v42 + 240) = lhs;
    if ((*(v42 + 276) & 1) == 0)
    {
      *(v42 + 264) = sampleBufferOut;
    }

    rhs = sampleBufferOut;
    v54.value = v62;
    v54.timescale = v63;
    v54.flags = v45;
    v54.epoch = v46;
    CMTimeAdd(&lhs, &rhs, &v54);
    *(v42 + 288) = lhs;
    rhs = *(v42 + 312);
    v54.value = v62;
    v54.timescale = v63;
    v54.flags = v45;
    v54.epoch = v46;
    CMTimeAdd(&lhs, &rhs, &v54);
    *(v42 + 312) = lhs;
    FigSimpleMutexUnlock();
  }

  v47 = *(v7 + 8);
  if (v47)
  {
    v47(*(v7 + 16), 0, v12);
  }

  FigSimpleMutexLock();
  CMSampleBufferGetOutputDuration(&lhs, v12);
  rhs = *(v7 + 168);
  CMTimeAdd(&sampleBufferOut, &rhs, &lhs);
  *(v7 + 168) = sampleBufferOut;
  FigSimpleMutexUnlock();
  value_low = 0;
LABEL_68:
  CFRelease(v12);
  if (v28)
  {
    CFRelease(v28);
  }

  if (v37)
  {
    v29 = v37;
    goto LABEL_72;
  }

  return value_low;
}

void fbarp_postNotificationSync(const void *a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFRetain(a1);
  v5 = *(DerivedStorage + 336);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __fbarp_postNotificationSync_block_invoke;
  block[3] = &__block_descriptor_tmp_77_2;
  block[4] = a2;
  block[5] = a1;
  block[6] = 0;
  dispatch_sync(v5, block);
}

void fbarp_postNotification(const void *a1, uint64_t a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a3)
  {
    CFRetain(a3);
  }

  CFRetain(a1);
  v7 = *(DerivedStorage + 336);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __fbarp_postNotification_block_invoke;
  block[3] = &__block_descriptor_tmp_79_0;
  block[4] = a2;
  block[5] = a1;
  block[6] = a3;
  dispatch_async(v7, block);
}

void __fbarp_postNotificationSync_block_invoke(uint64_t a1)
{
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  v2 = *(a1 + 40);

  fbarp_releaseAsync(v2);
}

void fbarp_releaseAsync(uint64_t a1)
{
  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __fbarp_releaseAsync_block_invoke;
  block[3] = &__block_descriptor_tmp_78_1;
  block[4] = a1;
  dispatch_async(global_queue, block);
}

void __fbarp_postNotification_block_invoke(uint64_t a1)
{
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  v2 = *(a1 + 48);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 40);

  fbarp_releaseAsync(v3);
}

__CFString *FigCaptionRendererActionCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"\tFigCaptionRendererAction: <%p>", a1);
  return Mutable;
}

__CFString *FigCaptionRendererAction_FigCaptionRendererActionProtocol_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"\tFigCaptionRendererAction <FigCaptionRendererActionProtocol> on <%p>", a1);
  return Mutable;
}

uint64_t RegisterFigCaptionRendererActionBaseType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

void FigCaptionRendererMoveToActionFinalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

__CFString *FigCaptionRendererMoveToActionCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"\tFigCaptionRendererMoveToAction: <%p>", a1);
  return Mutable;
}

__CFString *FigCaptionRendererMoveToAction_FigCaptionRendererBaseProtocol_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"\tFigCaptionRendererMoveToAction <FigCaptionRendererBaseProtocol> on <%p>", a1);
  return Mutable;
}

__CFString *FigCaptionRendererMoveToAction_FigCaptionRendererActionProtocol_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"\tFigCaptionRendererMoveToAction <FigCaptionRendererActionProtocol> on <%p>", a1);
  return Mutable;
}

uint64_t FigCaptionRendererMoveToAction_FigCaptionRendererActionProtocol_GetDuration(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererActionProtocolGetProtocolID();
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

uint64_t FigCaptionRendererMoveToAction_FigCaptionRendererActionProtocol_SetDuration(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererActionProtocolGetProtocolID();
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

__CFString *FigCaptionRendererMoveToAction_FigCaptionRendererMoveToActionProtocol_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"\tFigCaptionRendererMoveToAction <FigCaptionRendererMoveToActionProtocol> on <%p>", a1);
  return Mutable;
}

uint64_t FigCaptionRendererMoveToAction_FigCaptionRendererMoveToActionProtocol_SetTargetPosition(double a1, double a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 8) = a1;
  *(DerivedStorage + 16) = a2;
  return 0;
}

uint64_t RegisterFigCaptionRendererMoveToActionBaseType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t RegisterFigCaptionClientType()
{
  result = _CFRuntimeRegisterClass();
  sFigCaptionClientID = result;
  return result;
}

uint64_t FVDUtilsCanMirrorDisplayWithID(uint64_t a1)
{
  if (FVDUtilsCanMirrorDisplayWithID_once != -1)
  {
    FVDUtilsCanMirrorDisplayWithID_cold_1();
  }

  v2 = 1;
  if (a1 >= 2 && FVDUtilsCanMirrorDisplayWithID_allowFVDMirrorIDChecks)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = [objc_msgSend(MEMORY[0x1E6979550] "serverIfRunning")];
    if (!v4 || (v5 = v4, !FVDUtilsCanMirrorDisplayWithID_allowFVDSource) && [v4 displayType] == 2 || ((objc_msgSend(v5, "bounds"), v7 == *MEMORY[0x1E695F060]) ? (v8 = v6 == *(MEMORY[0x1E695F060] + 8)) : (v8 = 0), v8 || objc_msgSend(v5, "cloneMaster")))
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v2 = 0;
    }

    else
    {
      v2 = 1;
    }

    objc_autoreleasePoolPop(v3);
  }

  return v2;
}

uint64_t __FVDUtilsCanMirrorDisplayWithID_block_invoke()
{
  FVDUtilsCanMirrorDisplayWithID_allowFVDSource = FigVirtualDisplayPrefsGetBooleanWithDefault(@"allow_fvd_as_mirroring_source", FVDUtilsCanMirrorDisplayWithID_allowFVDSource);
  result = FigVirtualDisplayPrefsGetBooleanWithDefault(@"check_for_valid_mirror_id", FVDUtilsCanMirrorDisplayWithID_allowFVDMirrorIDChecks);
  FVDUtilsCanMirrorDisplayWithID_allowFVDMirrorIDChecks = result;
  return result;
}

uint64_t FVDUtilsH264EncoderSupports444()
{
  if (FVDUtilsH264EncoderSupports444_once != -1)
  {
    FVDUtilsH264EncoderSupports444_cold_1();
  }

  return FVDUtilsH264EncoderSupports444_result;
}

void __FVDUtilsH264EncoderSupports444_block_invoke()
{
  v11 = *MEMORY[0x1E69E9840];
  v9 = 16;
  if (isAppleVirtualDevice_once != -1)
  {
    __FVDUtilsH264EncoderSupports444_block_invoke_cold_1();
  }

  if (isAppleVirtualDevice_result)
  {
    FVDUtilsH264EncoderSupports444_result = 1;
  }

  else
  {
    v0 = 0;
    v1 = *MEMORY[0x1E696CD60];
    for (i = 1; ; i = 0)
    {
      v3 = i;
      v4 = IOServiceMatching(FVDUtilsH264EncoderSupports444_drivers[v0]);
      MatchingService = IOServiceGetMatchingService(v1, v4);
      if (MatchingService)
      {
        break;
      }

      v0 = 1;
      if ((v3 & 1) == 0)
      {
        return;
      }
    }

    v6 = MatchingService;
    if (MEMORY[0x19A8D4570](MatchingService, "H264EncoderCanDo444", v10, &v9))
    {
      v7 = 1;
    }

    else
    {
      v7 = v9 == 0;
    }

    v8 = !v7 && strncasecmp(v10, "Yes", v9) == 0;
    FVDUtilsH264EncoderSupports444_result = v8;
    IOObjectRelease(v6);
  }
}

uint64_t FVDUtilsH264DecoderSupports444()
{
  if (FVDUtilsH264DecoderSupports444_once != -1)
  {
    FVDUtilsH264DecoderSupports444_cold_1();
  }

  return FVDUtilsH264DecoderSupports444_result;
}

void __FVDUtilsH264DecoderSupports444_block_invoke()
{
  v9 = *MEMORY[0x1E69E9840];
  v7 = 16;
  if (isAppleVirtualDevice_once != -1)
  {
    __FVDUtilsH264EncoderSupports444_block_invoke_cold_1();
  }

  if (isAppleVirtualDevice_result)
  {
    FVDUtilsH264DecoderSupports444_result = 1;
  }

  else
  {
    v0 = 0;
    v1 = *MEMORY[0x1E696CD60];
    while (1)
    {
      v2 = IOServiceMatching(FVDUtilsH264DecoderSupports444_drivers[v0]);
      MatchingService = IOServiceGetMatchingService(v1, v2);
      if (MatchingService)
      {
        break;
      }

      if (++v0 == 3)
      {
        return;
      }
    }

    v4 = MatchingService;
    if (MEMORY[0x19A8D4570](MatchingService, "H264DecoderCanDo444", v8, &v7))
    {
      v5 = 1;
    }

    else
    {
      v5 = v7 == 0;
    }

    v6 = !v5 && strncasecmp(v8, "Yes", v7) == 0;
    FVDUtilsH264DecoderSupports444_result = v6;
    IOObjectRelease(v4);
  }
}

uint64_t FVDUtilsH264EncoderSupports4K30()
{
  if (FVDUtilsH264EncoderSupports4K30_once != -1)
  {
    FVDUtilsH264EncoderSupports4K30_cold_1();
  }

  return FVDUtilsH264EncoderSupports4K30_result;
}

void __FVDUtilsH264EncoderSupports4K30_block_invoke()
{
  v8 = *MEMORY[0x1E69E9840];
  v6 = 16;
  if (isAppleVirtualDevice_once != -1)
  {
    __FVDUtilsH264EncoderSupports444_block_invoke_cold_1();
  }

  if (isAppleVirtualDevice_result)
  {
    FVDUtilsH264EncoderSupports4K30_result = 1;
  }

  else
  {
    v0 = *MEMORY[0x1E696CD60];
    v1 = IOServiceMatching("AppleAVE2Driver");
    MatchingService = IOServiceGetMatchingService(v0, v1);
    if (MatchingService)
    {
      v3 = MatchingService;
      if (MEMORY[0x19A8D4570](MatchingService, "H264EncoderCanDo4k30", v7, &v6))
      {
        v4 = 1;
      }

      else
      {
        v4 = v6 == 0;
      }

      v5 = !v4 && strncasecmp(v7, "Yes", v6) == 0;
      FVDUtilsH264EncoderSupports4K30_result = v5;
      IOObjectRelease(v3);
    }
  }
}

uint64_t FVDUtilsHEVCEncoderSupports4K60()
{
  if (FVDUtilsHEVCEncoderSupports4K60_once != -1)
  {
    FVDUtilsHEVCEncoderSupports4K60_cold_1();
  }

  return FVDUtilsHEVCEncoderSupports4K60_result;
}

void __FVDUtilsHEVCEncoderSupports4K60_block_invoke()
{
  v8 = *MEMORY[0x1E69E9840];
  v6 = 16;
  if (isAppleVirtualDevice_once != -1)
  {
    __FVDUtilsH264EncoderSupports444_block_invoke_cold_1();
  }

  if (isAppleVirtualDevice_result)
  {
    FVDUtilsHEVCEncoderSupports4K60_result = 1;
  }

  else
  {
    v0 = *MEMORY[0x1E696CD60];
    v1 = IOServiceMatching("AppleAVE2Driver");
    MatchingService = IOServiceGetMatchingService(v0, v1);
    if (MatchingService)
    {
      v3 = MatchingService;
      if (MEMORY[0x19A8D4570](MatchingService, "HEVCEncoderCanDo4k60", v7, &v6))
      {
        v4 = 1;
      }

      else
      {
        v4 = v6 == 0;
      }

      v5 = !v4 && strncasecmp(v7, "Yes", v6) == 0;
      FVDUtilsHEVCEncoderSupports4K60_result = v5;
      IOObjectRelease(v3);
    }
  }
}

uint64_t FVDUtilsHEVCEncoderSupports42010()
{
  if (FVDUtilsHEVCEncoderSupports4K60_once != -1)
  {
    FVDUtilsHEVCEncoderSupports4K60_cold_1();
  }

  return FVDUtilsHEVCEncoderSupports4K60_result;
}

uint64_t FVDUtilsHEVCEncoderSupports44410()
{
  if (FVDUtilsHEVCEncoderSupports4K60_once != -1)
  {
    FVDUtilsHEVCEncoderSupports4K60_cold_1();
  }

  return FVDUtilsHEVCEncoderSupports4K60_result;
}

uint64_t FVDUtilsHEVCDecodeSupported()
{
  if (FVDUtilsHEVCDecodeSupported_once != -1)
  {
    FVDUtilsHEVCDecodeSupported_cold_1();
  }

  return FVDUtilsHEVCDecodeSupported_result;
}

void __FVDUtilsHEVCDecodeSupported_block_invoke()
{
  v11 = *MEMORY[0x1E69E9840];
  if (isAppleVirtualDevice_once != -1)
  {
    __FVDUtilsH264EncoderSupports444_block_invoke_cold_1();
  }

  if (isAppleVirtualDevice_result)
  {
    FVDUtilsHEVCDecodeSupported_result = 1;
  }

  else
  {
    v0 = 0;
    v1 = 1;
    v2 = *MEMORY[0x1E696CD60];
    do
    {
      v3 = v1;
      v9 = 16;
      v4 = IOServiceMatching(FVDUtilsHEVCDecodeSupported_drivers[v0]);
      MatchingService = IOServiceGetMatchingService(v2, v4);
      if (MatchingService)
      {
        v6 = MatchingService;
        v7 = MEMORY[0x19A8D4570](MatchingService, "HEVCSupported", v10, &v9) || v9 == 0;
        v8 = !v7 && strncasecmp(v10, "Yes", v9) == 0;
        FVDUtilsHEVCDecodeSupported_result = v8;
        IOObjectRelease(v6);
        if (FVDUtilsHEVCDecodeSupported_result)
        {
          break;
        }
      }

      v1 = 0;
      v0 = 1;
    }

    while ((v3 & 1) != 0);
  }
}

uint64_t FVDUtilsAGXPixelFormatsSupported()
{
  if (FVDUtilsAGXPixelFormatsSupported_once != -1)
  {
    FVDUtilsAGXPixelFormatsSupported_cold_1();
  }

  return FVDUtilsAGXPixelFormatsSupported_result;
}

uint64_t FVDUtilsMainDisplaySupportsExtendedColor()
{
  if (FVDUtilsMainDisplaySupportsExtendedColor_once != -1)
  {
    FVDUtilsMainDisplaySupportsExtendedColor_cold_1();
  }

  return FVDUtilsMainDisplaySupportsExtendedColor_result;
}

uint64_t __FVDUtilsMainDisplaySupportsExtendedColor_block_invoke()
{
  result = CelestialIsAppleTV();
  if (!result)
  {
    result = MGGetBoolAnswer();
    FVDUtilsMainDisplaySupportsExtendedColor_result = result;
  }

  return result;
}

uint64_t FVDUtilsEncoderCodecSupported(int a1)
{
  listOfVideoEncodersOut = 0;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, *MEMORY[0x1E6984230], *MEMORY[0x1E695E4D0]);
  if (VTCopyVideoEncoderList(Mutable, &listOfVideoEncodersOut))
  {
    v3 = 1;
  }

  else
  {
    v3 = listOfVideoEncodersOut == 0;
  }

  if (v3 || (Count = CFArrayGetCount(listOfVideoEncodersOut), Count < 1))
  {
LABEL_9:
    v7 = 0;
    if (!Mutable)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v5 = Count;
  v6 = 0;
  while (1)
  {
    CFArrayGetValueAtIndex(listOfVideoEncodersOut, v6);
    FigCFDictionaryGetInt32IfPresent();
    if (!a1)
    {
      break;
    }

    if (v5 == ++v6)
    {
      goto LABEL_9;
    }
  }

  v7 = 1;
  if (Mutable)
  {
LABEL_10:
    CFRelease(Mutable);
  }

LABEL_11:
  if (listOfVideoEncodersOut)
  {
    CFRelease(listOfVideoEncodersOut);
  }

  return v7;
}

uint64_t FVDUtilsSupportedProtectionFlags(char a1)
{
  if ((0x8Bu >> (a1 & 7)))
  {
    return qword_196E79058[a1 & 7];
  }

  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  return 0;
}

uint64_t FVDUtilsEncryptedEncodeSupported()
{
  if (FVDUtilsEncryptedEncodeSupported_once != -1)
  {
    FVDUtilsEncryptedEncodeSupported_cold_1();
  }

  return FVDUtilsEncryptedEncodeSupported_result;
}

uint64_t __FVDUtilsEncryptedEncodeSupported_block_invoke()
{
  result = FVDUtilsEncoderCodecSupported(1869117027);
  FVDUtilsEncryptedEncodeSupported_result = result;
  return result;
}

uint64_t FVDUtilsEncryptedDecodeSupported()
{
  if (FVDUtilsEncryptedDecodeSupported_once != -1)
  {
    FVDUtilsEncryptedDecodeSupported_cold_1();
  }

  return FVDUtilsEncryptedDecodeSupported_result;
}

void __FVDUtilsEncryptedDecodeSupported_block_invoke()
{
  if (FVDUtilsHEVCDecodeSupported_once != -1)
  {
    FVDUtilsHEVCDecodeSupported_cold_1();
  }

  FVDUtilsEncryptedDecodeSupported_result = FVDUtilsHEVCDecodeSupported_result;
}

CFStringRef FVDUtilsCreateDisplayUUID()
{
  v3 = *MEMORY[0x1E69E9840];
  memset(out, 0, sizeof(out));
  memset(v1, 0, sizeof(v1));
  uuid_generate_random(out);
  uuid_unparse(out, v1);
  return CFStringCreateWithCString(*MEMORY[0x1E695E480], v1, 0x8000100u);
}

uint64_t FVDUtilsLoadVCPEncoder()
{
  if (FVDUtilsLoadVCPEncoder_once != -1)
  {
    FVDUtilsLoadVCPEncoder_cold_1();
  }

  result = FVDUtilsLoadVCPEncoder_success;
  if (!FVDUtilsLoadVCPEncoder_success)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return FVDUtilsLoadVCPEncoder_success;
  }

  return result;
}

uint64_t __FVDUtilsLoadVCPEncoder_block_invoke()
{
  result = FigServer_IsServerProcess();
  if (!result)
  {
    v1 = dlopen("/System/Library/PrivateFrameworks/VideoProcessing.framework/VideoProcessing", 4);
    if (v1 && (v2 = dlsym(v1, "VPModuleInitialize")) != 0)
    {
      result = v2();
      v3 = 1;
    }

    else
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      result = fig_log_call_emit_and_clean_up_after_send_and_compose();
      v3 = 0;
    }

    FVDUtilsLoadVCPEncoder_success = v3;
  }

  return result;
}

CFStringRef FVDUtilsCreateLogPrefix(const __CFString *a1, unint64_t a2)
{
  if (!a1)
  {
    v4 = "";
    goto LABEL_7;
  }

  v3 = a1;
  v4 = "";
  if (CFStringGetLength(a1) < 1)
  {
LABEL_7:
    v3 = &stru_1F0B1AFB8;
    return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%s%@ [%04x]", v4, v3, (bswap64(0x8A970BE7488FDA55 * (a2 ^ (a2 >> 4))) ^ (-9643 * (a2 ^ (a2 >> 4)))));
  }

  if (CFStringGetCharacterAtIndex(v3, 0) != 32)
  {
    v4 = " ";
  }

  return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%s%@ [%04x]", v4, v3, (bswap64(0x8A970BE7488FDA55 * (a2 ^ (a2 >> 4))) ^ (-9643 * (a2 ^ (a2 >> 4)))));
}

uint64_t FVDUtilsGetTempDirectory()
{
  if (FVDUtilsGetTempDirectory_once != -1)
  {
    FVDUtilsGetTempDirectory_cold_1();
  }

  return FVDUtilsGetTempDirectory_tmpDir;
}

uint64_t __FVDUtilsGetTempDirectory_block_invoke()
{
  v0 = FigVirtualDisplayPrefsCopyValue(@"fvd_tempdir_path");
  if (!v0)
  {
    v1 = NSTemporaryDirectory();
    if (v1)
    {
      v0 = v1;
    }

    else
    {
      v0 = @"/tmp";
    }

    CFRetain(v0);
  }

  FVDUtilsGetTempDirectory_tmpDir = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%@/", v0);
  CFRelease(v0);
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  return fig_log_call_emit_and_clean_up_after_send_and_compose();
}

uint64_t __isAppleVirtualDevice_block_invoke()
{
  result = MGGetBoolAnswer();
  isAppleVirtualDevice_result = result;
  return result;
}

uint64_t FigAssetWatchdogMonitorCommonQueues()
{
  if (PerformURLAssetOneTimeInitialization_static_init != -1)
  {
    FigAssetWatchdogMonitorCommonQueues_cold_1();
  }

  FigWatchdogMonitorDispatchQueue();

  return FigWatchdogMonitorDispatchQueue();
}

uint64_t URLAssetCreateAssetTrack(uint64_t a1, const void *a2, const void *a3, const void *a4, const char *a5, NSObject *a6, char a7, char a8, const __CFDictionary *a9, char a10, char a11, void *a12)
{
  IsItOKToLogURLs = FigIsItOKToLogURLs();
  if (a11)
  {
    v20 = 1;
  }

  else
  {
    v20 = IsItOKToLogURLs == 0;
  }

  v21 = !v20;
  if (!a2)
  {
    URLAssetCreateAssetTrack_cold_5(&v35);
    return v35;
  }

  if (!a3)
  {
    URLAssetCreateAssetTrack_cold_4(&v35);
    return v35;
  }

  if (!a12)
  {
    URLAssetCreateAssetTrack_cold_3(&v35);
    return v35;
  }

  v34 = v21;
  FigAssetTrackGetClassID();
  v22 = CMDerivedObjectCreate();
  if (v22)
  {
    return v22;
  }

  v23 = a5;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v25 = CMBaseObjectGetDerivedStorage();
  CFGetAllocator(0);
  if (_MergedGlobals_115 != -1)
  {
    URLAssetCreateAssetTrack_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    if (URLAssetCreateAssetTrack_cold_2(&v35))
    {
      goto LABEL_22;
    }

    return v35;
  }

  v27 = Instance;
  *(Instance + 16) = CFRetain(a2);
  *(v27 + 24) = CFRetain(a3);
  if (a4)
  {
    v28 = CFRetain(a4);
  }

  else
  {
    v28 = 0;
  }

  *(v27 + 32) = v28;
  *(v27 + 48) = a6;
  dispatch_retain(a6);
  *(v27 + 64) = a7;
  *(v27 + 65) = a8;
  strncpy((v27 + 80), v23, 0xAuLL);
  *(v27 + 90) = v34;
  v29 = dispatch_group_create();
  *(v25 + 24) = v29;
  *(v27 + 56) = v29;
  dispatch_retain(v29);
  AllPropertyKeys = FigAssetTrackGetAllPropertyKeys();
  PropertyStore = CreatePropertyStore(AllPropertyKeys, @"assetTrackNotice_PropertyFailedToLoad", @"assetTrackNotice_PropertyLoaded", @"assetTrackNotice_PropertyRevised", @"assetTrackNotice_BatchPropertyLoadComplete", a6, *(v25 + 24), URLAssetTrackPropertyWorkFunction, v27, (v25 + 8));
  if (PropertyStore)
  {
    goto LABEL_24;
  }

  FigCFWeakReferenceStore();
  if (a9)
  {
    CFDictionaryApplyFunction(a9, TrackMacroPropertyDefinitionApplierFunction, *(v25 + 8));
  }

  PropertyStore = CreateValidationStore(@"assetTrackNotice_ValidationComplete", a6, *(v25 + 24), URLAssetTrackValidationWorkFunction, v27, (v25 + 16));
  if (PropertyStore)
  {
LABEL_24:
    v32 = PropertyStore;
    CFRelease(v27);
    return v32;
  }

  *(v25 + 32) = a10;
  *DerivedStorage = v27;
LABEL_22:
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  v32 = 0;
  *a12 = 0;
  return v32;
}

uint64_t URLAssetTrackSetComplainForSyncQueries(uint64_t a1, char a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 8);

  return PropertyStoreSetComplainForSyncQueries(v3, a2);
}

uint64_t FigAssetCreateWithURL(uint64_t a1, uint64_t a2, uint64_t a3, const __CFDictionary *a4, void *a5)
{
  IsItOKToLogURLs = FigIsItOKToLogURLs();
  v11 = (a3 & 0x200) == 0 && IsItOKToLogURLs != 0;
  if (PerformURLAssetOneTimeInitialization_static_init != -1)
  {
    FigAssetWatchdogMonitorCommonQueues_cold_1();
    if (a2)
    {
      goto LABEL_9;
    }

LABEL_28:
    FigAssetCreateWithURL_cold_2();
    v19 = v21;
LABEL_29:
    if (!a5)
    {
      return v19;
    }

    goto LABEL_24;
  }

  if (!a2)
  {
    goto LABEL_28;
  }

LABEL_9:
  if (!a5 || (a3 & 0xFFFFFFFFFFFFFCC2) != 0)
  {
    goto LABEL_28;
  }

  FigAssetGetClassID();
  InternalURLAsset = CMDerivedObjectCreate();
  if (InternalURLAsset)
  {
    goto LABEL_26;
  }

  if (!a4 || (DataValue = FigCFDictionaryGetDataValue()) == 0 || (v14 = FigCFHTTPCopyClientProcessName(DataValue)) == 0)
  {
    v14 = CFRetain(@"[]");
  }

  v15 = FigCopyRedactedURLFromURL();
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  if (v15)
  {
    CFRelease(v15);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  InternalURLAsset = CreateInternalURLAsset(0, a2, 0, 0, a3, a4, v11, DerivedStorage);
  if (InternalURLAsset)
  {
LABEL_26:
    v19 = InternalURLAsset;
    goto LABEL_29;
  }

  FigGetUpTimeNanoseconds();
  SInt64 = FigCFNumberCreateSInt64();
  InitializeProperty(DerivedStorage[1], @"assetProperty_CreationTime", 2, 0, SInt64);
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  if (SInt64)
  {
    CFRelease(SInt64);
  }

  v19 = 0;
LABEL_24:
  *a5 = 0;
  return v19;
}

uint64_t CreateInternalURLAsset(const void *a1, uint64_t a2, const void *a3, const void *a4, uint64_t a5, const __CFDictionary *a6, char a7, uint64_t *a8)
{
  v91 = *MEMORY[0x1E69E9840];
  valuePtr = a5;
  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v80 = 0u;
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  *__str = 0u;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  getpid();
  v71 = 0;
  v70 = 0;
  FigCFDictionaryGetBooleanIfPresent();
  if (!a4)
  {
    FigMediaparserdUtilities_EnsureProcessLaunched();
  }

  FigCFDictionaryGetInt32IfPresent();
  CFGetAllocator(a1);
  if (qword_1ED4CB868 != -1)
  {
    CreateInternalURLAsset_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    CreateInternalURLAsset_cold_2(&bytes);
    return bytes;
  }

  v15 = Instance;
  v64 = a4;
  *(Instance + 80) = valuePtr;
  v16 = MEMORY[0x1E695E480];
  v63 = a8;
  theDict = a6;
  if (a6)
  {
    v17 = CFRetain(a6);
    *(v15 + 88) = v17;
    v18 = (v15 + 88);
    *(v15 + 618) = a7;
    v19 = (v15 + 592);
    *(v15 + 592) = 0;
    if (v17)
    {
      StringValue = FigCFDictionaryGetStringValue();
      if (StringValue)
      {
        v21 = StringValue;
        CFRetain(StringValue);
        v22 = CFGetTypeID(v21);
        if (v22 == CFStringGetTypeID())
        {
          v23 = *v16;
          goto LABEL_14;
        }
      }
    }
  }

  else
  {
    *(Instance + 88) = 0;
    v18 = (Instance + 88);
    *(Instance + 618) = a7;
    v19 = (Instance + 592);
    *(Instance + 592) = 0;
  }

  v23 = *v16;
  LoggingIdentifierOfLength = FigCFStringCreateLoggingIdentifierOfLength();
  v21 = CFStringCreateWithFormat(v23, 0, @"I/%@", LoggingIdentifierOfLength);
  if (LoggingIdentifierOfLength)
  {
    CFRelease(LoggingIdentifierOfLength);
  }

LABEL_14:
  v65 = v21;
  CFStringGetCString(v21, v19, 10, 0x600u);
  Mutable = CFDictionaryCreateMutable(v23, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v26 = Mutable;
    v27 = CFStringCreateWithCString(v23, v19, 0x600u);
    FigCFDictionarySetValue();
    FigCFDictionarySetInt32();
    FigLogPowerEvent();
    CFRelease(v26);
    if (v27)
    {
      CFRelease(v27);
    }
  }

  *(v15 + 544) = FigOSTransactionCreate();
  snprintf(__str, 0x100uLL, "URLAssetWorkQueue.%s", v19);
  *(v15 + 96) = FigDispatchQueueCreateWithPriority();
  FigThreadMakeDispatchQueueAbortable();
  v28 = dispatch_group_create();
  *(DerivedStorage + 24) = v28;
  *(v15 + 104) = v28;
  dispatch_retain(v28);
  snprintf(__str, 0x100uLL, "URLAssetMiscQueue.%s", v19);
  *(v15 + 480) = FigDispatchQueueCreateWithPriority();
  v29 = CFUUIDCreate(v23);
  if (v29)
  {
    v30 = v29;
    *(v15 + 336) = CFUUIDCreateString(v23, v29);
    CFRelease(v30);
  }

  cf = 0;
  v31 = a1;
  if (*v18)
  {
    DataValue = FigCFDictionaryGetDataValue();
    v33 = FigCFHTTPCopyClientProcessName(DataValue);
    DictionaryValue = FigCFDictionaryGetDictionaryValue();
    v35 = v64;
    if (!FigRCLCreateConfiguration(v33, @"kFigRemoteConfigurationLoaderStoreBagType_Pump", DictionaryValue, &cf) && (v36 = cf, _os_feature_enabled_impl()) && [objc_msgSend(MEMORY[0x1E69B7C10] "sharedInstance")] && ((FigRCLGetDoubleWithDefault(v36, @"ABRHistorySampleRate"), FigGetCFPreferenceDoubleWithDefault(), v38 = v37, FigDebugIsInternalBuild()) || v38 > 0.0 && (bytes = 0, SecRandomCopyBytes(*MEMORY[0x1E697B308], 8uLL, &bytes), (bytes & 0x7FFFFFFFFFFFFFFFLL) <= vcvtd_n_u64_f64(v38, 0x3FuLL))))
    {
      FigGetCFPreferenceDoubleWithDefault();
      v40 = CFAbsoluteTimeGetCurrent() - v39;
      FigRCLGetNumberWithDefault(v36, @"ABRSubmissionMinGapInHrs");
      v41 = v40 >= FigGetCFPreferenceNumberWithDefault() * 3600.0;
    }

    else
    {
      v41 = 0;
    }

    v42 = a2;
    if (cf)
    {
      CFRelease(cf);
    }

    if (v33)
    {
      CFRelease(v33);
    }
  }

  else
  {
    v41 = 0;
    v35 = v64;
    v42 = a2;
  }

  *(v15 + 469) = v41;
  *(v15 + 136) = FigSimpleMutexCreate();
  v43 = MEMORY[0x1E695E4D0];
  if (*(v15 + 88))
  {
    v44 = FigCFDictionaryGetDictionaryValue();
    if (!v44 || (CMTimeMakeFromDictionary(&v69, v44), (v69.flags & 0x1D) != 1))
    {
      *(v15 + 216) = CFDictionaryGetValue(*(v15 + 88), @"assetOption_MakeReadAheadAssertionWhenCreatingByteStream") == *v43;
    }
  }

  AllPropertyKeys = FigAssetGetAllPropertyKeys();
  v46 = (DerivedStorage + 8);
  PropertyStore = CreatePropertyStore(AllPropertyKeys, @"assetNotice_PropertyFailedToLoad", @"assetNotice_PropertyLoaded", @"assetNotice_PropertyRevised", @"assetNotice_BatchPropertyLoadComplete", *(v15 + 96), *(DerivedStorage + 24), URLAssetPropertyWorkFunction, v15, (DerivedStorage + 8));
  if (PropertyStore)
  {
    goto LABEL_79;
  }

  FigCFWeakReferenceStore();
  PropertyStore = CreateTrackMacroPropertyState(v31, *v46, URLAssetCopyStoreForTrack, (v15 + 608));
  if (PropertyStore)
  {
    goto LABEL_79;
  }

  InitializeProperty(*v46, @"assetProperty_CreationOptionsDictionary", 2, 0, theDict);
  v48 = CFNumberCreate(v23, kCFNumberSInt64Type, &valuePtr);
  InitializeProperty(*v46, @"assetProperty_CreationFlags", 2, 0, v48);
  if (v48)
  {
    CFRelease(v48);
  }

  InitializeProperty(*v46, @"assetProperty_CreationURL", 2, 0, v42);
  InitializeProperty(*v46, @"assetProperty_InstanceUUID", 2, 0, *(v15 + 336));
  if (!v35)
  {
    if (*v18)
    {
      v50 = FigCFDictionaryGetStringValue();
      if (v50)
      {
        InternalURLAssetSetDeclaredAssetType(*v46, v15, v50);
      }
    }
  }

  if (!FigCFDictionaryGetBooleanIfPresent())
  {
    *(v15 + 617) = 0;
  }

  InternalURLAssetSetStorageSession(*(DerivedStorage + 8), v15);
  PropertyStore = CreateValidationStore(@"assetNotice_ValidationComplete", *(v15 + 96), *(v15 + 104), URLAssetValidationWorkFunction, v15, (DerivedStorage + 16));
  if (PropertyStore)
  {
    goto LABEL_79;
  }

  if (v42)
  {
    *(v15 + 64) = 1431456810;
    v49 = v42;
LABEL_51:
    *(v15 + 72) = CFRetain(v49);
    goto LABEL_52;
  }

  v49 = a3;
  if (a3)
  {
    *(v15 + 64) = 708989738;
    goto LABEL_51;
  }

  *(v15 + 64) = 709251626;
  if (v35)
  {
    v62 = CFRetain(v35);
  }

  else
  {
    v62 = 0;
  }

  *(v15 + 72) = v62;
  InitializeProperty(*v46, @"assetProperty_FormatReader", 2, 0, v35);
LABEL_52:
  bytes = 0;
  v51 = *(v15 + 64);
  if (v51 != 708989738)
  {
    v52 = v63;
    if (v51 == 1431456810)
    {
      v53 = *(v15 + 72);
      if (v53)
      {
        v53 = CFRetain(v53);
      }

      bytes = v53;
      if (v53)
      {
        goto LABEL_57;
      }
    }

LABEL_61:
    v54 = 0;
    goto LABEL_63;
  }

  CMBaseObject = CMByteStreamGetCMBaseObject();
  v56 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v56)
  {
    v54 = 0;
    v52 = v63;
    goto LABEL_63;
  }

  v56(CMBaseObject, *MEMORY[0x1E695FFA0], v23, &bytes);
  v53 = bytes;
  v52 = v63;
  if (!bytes)
  {
    goto LABEL_61;
  }

LABEL_57:
  v54 = FigCFHTTPIsHTTPBasedURL(v53);
  if (bytes)
  {
    CFRelease(bytes);
  }

LABEL_63:
  *(v15 + 616) = v54;
  PropertyStore = InternalURLAssetCreateByteStreamProvider(v15);
  if (!PropertyStore)
  {
    InitializeProperty(*v46, @"assetProperty_ByteStreamProvider", 2, 0, *(v15 + 488));
    *(v15 + 56) = FigSimpleMutexCreate();
    InitializeProperty(*v46, @"assetProperty_DownloadToken", 2, 0, *v43);
    FigCFWeakReferenceInit();
    FigDispatchOnceInitWithinObject();
    if (*(v15 + 88))
    {
      Value = CFDictionaryGetValue(theDict, @"assetOption_CustomURLLoader");
      if (Value)
      {
        v58 = CFRetain(Value);
      }

      else
      {
        v58 = 0;
      }

      v59 = v65;
      *(v15 + 496) = v58;
    }

    else
    {
      v58 = *(v15 + 496);
      v59 = v65;
    }

    InitializeProperty(*v46, @"assetProperty_CustomURLLoader", 2, 0, v58);
    InitializeProperty(*v46, @"assetProperty_DownloadToDestinationResult", 2, 0, 0);
    v60 = 0;
    *v52 = v15;
    v15 = 0;
    if (!v59)
    {
      goto LABEL_72;
    }

    goto LABEL_71;
  }

LABEL_79:
  v60 = PropertyStore;
  v59 = v65;
  if (v65)
  {
LABEL_71:
    CFRelease(v59);
  }

LABEL_72:
  if (v15)
  {
    CFRelease(v15);
  }

  return v60;
}

uint64_t FigAssetCreateWithByteStream(uint64_t a1, const void *a2, uint64_t a3, const __CFDictionary *a4, void *a5)
{
  IsItOKToLogURLs = FigIsItOKToLogURLs();
  v11 = (a3 & 0x200) == 0 && IsItOKToLogURLs != 0;
  if (PerformURLAssetOneTimeInitialization_static_init != -1)
  {
    FigAssetWatchdogMonitorCommonQueues_cold_1();
    if (a2)
    {
      goto LABEL_9;
    }

LABEL_17:
    v12 = v16;
    if (FigAssetCreateWithByteStream_cold_4())
    {
      return v12;
    }

    goto LABEL_14;
  }

  if (!a2)
  {
    goto LABEL_17;
  }

LABEL_9:
  if (!a5)
  {
    FigAssetCreateWithByteStream_cold_3(&v16);
    return v16;
  }

  if ((a3 & 0xFFFFFFFFFFFFFCC2) != 0)
  {
    FigAssetCreateWithByteStream_cold_2(&v16);
    v12 = v16;
  }

  else
  {
    FigAssetGetClassID();
    v12 = CMDerivedObjectCreate();
    if (!v12)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      InternalURLAsset = CreateInternalURLAsset(0, 0, a2, 0, a3, a4, v11, DerivedStorage);
      if (InternalURLAsset)
      {
        v12 = InternalURLAsset;
      }

      else
      {
        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterAddWeakListener();
        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterAddWeakListener();
        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterAddWeakListener();
        v12 = 0;
      }
    }
  }

LABEL_14:
  *a5 = 0;
  return v12;
}

uint64_t FigAssetCreateWithFormatReader(uint64_t a1, const void *a2, uint64_t a3, const __CFDictionary *a4, void *a5)
{
  cf = 0;
  v20 = 0;
  IsItOKToLogURLs = FigIsItOKToLogURLs();
  v11 = (a3 & 0x200) == 0 && IsItOKToLogURLs != 0;
  if (PerformURLAssetOneTimeInitialization_static_init != -1)
  {
    FigAssetWatchdogMonitorCommonQueues_cold_1();
    if (a2)
    {
      goto LABEL_9;
    }

LABEL_24:
    FigAssetCreateWithURL_cold_2();
    v16 = v21;
LABEL_25:
    v17 = v20;
    if (!a5)
    {
      return v16;
    }

    goto LABEL_20;
  }

  if (!a2)
  {
    goto LABEL_24;
  }

LABEL_9:
  if (!a5 || (a3 & 0xFFFFFFFFFFFFFCC2) != 0)
  {
    goto LABEL_24;
  }

  FigAssetGetClassID();
  InternalURLAsset = CMDerivedObjectCreate();
  if (InternalURLAsset || (DerivedStorage = CMBaseObjectGetDerivedStorage(), InternalURLAsset = CreateInternalURLAsset(v20, 0, 0, a2, a3, a4, v11, DerivedStorage), InternalURLAsset))
  {
    v16 = InternalURLAsset;
    goto LABEL_25;
  }

  FigBaseObject = FigFormatReaderGetFigBaseObject(a2);
  v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v15)
  {
    v15(FigBaseObject, @"CanMutate", *MEMORY[0x1E695E480], &cf);
    v15 = cf;
  }

  if (v15 == *MEMORY[0x1E695E4D0])
  {
    *(*DerivedStorage + 464) = 1;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  if (cf)
  {
    CFRelease(cf);
  }

  v16 = 0;
  v17 = v20;
LABEL_20:
  *a5 = v17;
  return v16;
}

uint64_t FigAssetCreateWithMovieProxyData(const __CFAllocator *a1, CFDataRef theData, uint64_t a3, uint64_t a4, void *a5)
{
  if (PerformURLAssetOneTimeInitialization_static_init == -1)
  {
    if (theData)
    {
      goto LABEL_3;
    }

LABEL_26:
    FigAssetCreateWithMovieProxyData_cold_7(&v22);
    return v22;
  }

  FigAssetWatchdogMonitorCommonQueues_cold_1();
  if (!theData)
  {
    goto LABEL_26;
  }

LABEL_3:
  if (!CFDataGetLength(theData))
  {
    FigAssetCreateWithMovieProxyData_cold_6(&v22);
    return v22;
  }

  if (!a5)
  {
    FigAssetCreateWithMovieProxyData_cold_5(&v22);
    return v22;
  }

  MutableCopy = FigCFDictionaryCreateMutableCopy();
  if (!MutableCopy)
  {
    FigAssetCreateWithMovieProxyData_cold_4(&v22);
    return v22;
  }

  v10 = MutableCopy;
  StringValue = FigCFDictionaryGetStringValue();
  if (StringValue)
  {
    v12 = CFRetain(StringValue);
  }

  else
  {
    v12 = 0;
  }

  CFDictionarySetValue(v10, @"assetOption_IsMovieProxy", *MEMORY[0x1E695E4D0]);
  BlockBufferWithCFDataNoCopy = FigCreateBlockBufferWithCFDataNoCopy();
  if (!BlockBufferWithCFDataNoCopy)
  {
    BlockBufferWithCFDataNoCopy = CMByteStreamCreateForBlockBuffer();
    if (!BlockBufferWithCFDataNoCopy)
    {
      if (v12 || (v12 = CFStringCreateWithFormat(a1, 0, @"MovieProxy_%p-%p.mov", theData, 0)) != 0)
      {
        v14 = CFURLCreateWithFileSystemPath(a1, v12, kCFURLPOSIXPathStyle, 0);
        if (v14)
        {
          v15 = v14;
          CMBaseObject = CMByteStreamGetCMBaseObject();
          v17 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v17)
          {
            v18 = v17(CMBaseObject, *MEMORY[0x1E695FFA0], v15);
            if (!v18)
            {
              v18 = FigAssetCreateWithByteStream(a1, 0, a3, v10, a5);
            }

            v19 = v18;
          }

          else
          {
            v19 = 4294954514;
          }

          CFRelease(v12);
          v20 = v15;
          goto LABEL_20;
        }

        FigAssetCreateWithMovieProxyData_cold_2();
      }

      else
      {
        FigAssetCreateWithMovieProxyData_cold_3(&v22);
      }

      v19 = v22;
      goto LABEL_21;
    }
  }

  v19 = BlockBufferWithCFDataNoCopy;
  if (!v12)
  {
    goto LABEL_21;
  }

  v20 = v12;
LABEL_20:
  CFRelease(v20);
LABEL_21:
  CFRelease(v10);
  return v19;
}

uint64_t FigAssetCreatePListFromOptionsDict(void *a1, void *a2)
{
  if (!a2)
  {
    FigAssetCreatePListFromOptionsDict_cold_2(&v17);
    MutableCopy = 0;
    v13 = v17;
    goto LABEL_23;
  }

  MutableCopy = a1;
  if (!a1)
  {
    goto LABEL_22;
  }

  URLValue = FigCFDictionaryGetURLValue();
  v5 = FigCFDictionaryGetURLValue();
  DictionaryValue = FigCFDictionaryGetDictionaryValue();
  v7 = FigCFDictionaryGetURLValue();
  if (URLValue)
  {
    v8 = 0;
  }

  else
  {
    v8 = v5 == 0;
  }

  if (v8 && v7 == 0)
  {
    MutableCopy = CFRetain(MutableCopy);
    goto LABEL_22;
  }

  v10 = v7;
  allocator = *MEMORY[0x1E695E480];
  MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, MutableCopy);
  if (!MutableCopy)
  {
    FigAssetCreatePListFromOptionsDict_cold_1(&v16);
    v13 = v16;
    goto LABEL_23;
  }

  if (URLValue)
  {
    FigReplaceURLWithString();
  }

  if (v5)
  {
    FigReplaceURLWithString();
  }

  if (v10)
  {
    v11 = CFDictionaryCreateMutableCopy(allocator, 0, DictionaryValue);
    if (!v11)
    {
      fig_log_get_emitter();
      v13 = FigSignalErrorAtGM();
      if (!v13)
      {
        goto LABEL_23;
      }

      CFRelease(MutableCopy);
      goto LABEL_20;
    }

    v12 = v11;
    FigReplaceURLWithString();
    CFDictionarySetValue(MutableCopy, @"assetOption_ContentProtectionOptions", v12);
    CFRelease(v12);
  }

  if (CFDictionaryGetCount(MutableCopy))
  {
LABEL_22:
    v13 = 0;
    goto LABEL_23;
  }

  CFRelease(MutableCopy);
  v13 = 0;
LABEL_20:
  MutableCopy = 0;
LABEL_23:
  *a2 = MutableCopy;
  return v13;
}

uint64_t FigAssetCreateOptionsDictFromPList(const void *a1, __CFDictionary **a2)
{
  if (!a1 || (v4 = CFGetTypeID(a1), v4 != CFDictionaryGetTypeID()))
  {
    FigAssetCreateOptionsDictFromPList_cold_3(&v18);
    MutableCopy = 0;
    v14 = v18;
    goto LABEL_17;
  }

  if (!a2)
  {
    FigAssetCreateOptionsDictFromPList_cold_2(&v17);
    MutableCopy = 0;
    v14 = v17;
    goto LABEL_17;
  }

  StringValue = FigCFDictionaryGetStringValue();
  v6 = FigCFDictionaryGetStringValue();
  DictionaryValue = FigCFDictionaryGetDictionaryValue();
  v8 = FigCFDictionaryGetStringValue();
  v9 = v8;
  if (!StringValue && !v6 && !v8)
  {
    MutableCopy = CFRetain(a1);
LABEL_16:
    v14 = 0;
    goto LABEL_17;
  }

  v11 = *MEMORY[0x1E695E480];
  MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, a1);
  if (!MutableCopy)
  {
    FigAssetCreateOptionsDictFromPList_cold_1(&v16);
    v14 = v16;
    goto LABEL_17;
  }

  if (StringValue)
  {
    FigReplaceStringWithURL();
  }

  if (v6)
  {
    FigReplaceStringWithURL();
  }

  if (!v9)
  {
    goto LABEL_16;
  }

  v12 = CFDictionaryCreateMutableCopy(v11, 0, DictionaryValue);
  if (v12)
  {
    v13 = v12;
    FigReplaceStringWithURL();
    CFDictionarySetValue(MutableCopy, @"assetOption_ContentProtectionOptions", v13);
    CFRelease(v13);
    goto LABEL_16;
  }

  fig_log_get_emitter();
  v14 = FigSignalErrorAtGM();
  if (v14)
  {
    CFRelease(MutableCopy);
    MutableCopy = 0;
  }

LABEL_17:
  *a2 = MutableCopy;
  return v14;
}

uint64_t InitializeURLAsset()
{
  gCommonAssetNotificationQueue = FigDispatchQueueCreateWithPriority();
  result = FigDispatchQueueCreateWithPriority();
  gCommonAssetTrackNotificationQueue = result;
  return result;
}

void URLAssetTrackFinalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  v1 = *(DerivedStorage + 8);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 8) = 0;
  }

  v2 = *(DerivedStorage + 16);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 16) = 0;
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v3 = *(DerivedStorage + 24);
  if (v3)
  {
    dispatch_group_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
    v4 = *(DerivedStorage + 24);
    if (v4)
    {
      dispatch_release(v4);
      *(DerivedStorage + 24) = 0;
    }
  }
}

__CFString *URLAssetTrackCopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v4 = CFCopyDescription(*DerivedStorage);
  v5 = CFCopyDescription(DerivedStorage[1]);
  v6 = CFCopyDescription(DerivedStorage[2]);
  v7 = CFGetRetainCount(a1);
  CFStringAppendFormat(Mutable, 0, @"<FigURLAssetTrack %p> RC %d {%@} {%@} {%@}", a1, v7, v4, v5, v6);
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

  return Mutable;
}

uint64_t URLAssetTrackCopyPropertyAndBlockageWarning(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, CFStringRef *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    if (a4)
    {
      *a4 = 0;
      if (*(DerivedStorage + 32))
      {
        v9 = a5;
      }

      else
      {
        v9 = 0;
      }

      v10 = *(DerivedStorage + 8);

      return ObtainPropertySync(v10, a2, a4, v9);
    }

    else
    {
      URLAssetTrackCopyPropertyAndBlockageWarning_cold_1(&v12);
      return v12;
    }
  }

  else
  {
    URLAssetTrackCopyPropertyAndBlockageWarning_cold_2(&v13);
    return v13;
  }
}

uint64_t URLAssetTrackGetStatusOfValueForProperty(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4, void *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    if (a3)
    {
      *a3 = 0;
      v10 = *(DerivedStorage + 8);

      return QueryProperty(v10, a2, a3, a4, a5, 0);
    }

    else
    {
      URLAssetTrackGetStatusOfValueForProperty_cold_1(&v12);
      return v12;
    }
  }

  else
  {
    URLAssetTrackGetStatusOfValueForProperty_cold_2(&v13);
    return v13;
  }
}

uint64_t URLAssetTrackLoadValuesAsyncForProperties(uint64_t a1, const __CFArray *a2, _BYTE *a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v8 = DerivedStorage;
    if (CFArrayGetCount(a2))
    {
      v9 = *(v8 + 8);

      return RequestPropertiesAsync(v9, a2, a3, a4);
    }

    else
    {
      URLAssetTrackLoadValuesAsyncForProperties_cold_1(&v11);
      return v11;
    }
  }

  else
  {
    URLAssetTrackLoadValuesAsyncForProperties_cold_2(&v12);
    return v12;
  }
}

uint64_t URLAssetTrackGetTrackInfo(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*CMBaseObjectGetDerivedStorage() + 24);
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v5, a2, a3);
}

uint64_t URLAssetTrackValidateAsync(uint64_t a1, const void *a2, uint64_t a3, void *a4, _DWORD *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    URLAssetTrackValidateAsync_cold_3(&v15);
    return v15;
  }

  if (!a4)
  {
    URLAssetTrackValidateAsync_cold_2(&v14);
    return v14;
  }

  v10 = DerivedStorage;
  if (CFEqual(a2, @"validationCriteria_Custom"))
  {
    if (!a3)
    {
      URLAssetTrackValidateAsync_cold_1(&v13);
      return v13;
    }

    goto LABEL_9;
  }

  if (CFEqual(a2, @"validationCriteria_CameraRoll") || CFEqual(a2, @"validationCriteria_MediaPlayback") || CFEqual(a2, @"validationCriteria_MediaDecoding"))
  {
LABEL_9:
    v12 = *(v10 + 16);

    return RequestValidationAsync(v12, a2, a3, a4, a5);
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t RegisterInternalURLTrackType(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

double InternalURLTrack_Init(_OWORD *a1)
{
  result = 0.0;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[1] = 0u;
  return result;
}

void InternalURLTrack_Finalize(uint64_t a1)
{
  InternalURLAssetTrackStopMonitoringChanges(a1);
  objc_destroyWeak((a1 + 40));
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 24) = 0;
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 16) = 0;
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 32) = 0;
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    dispatch_release(v5);
  }

  v6 = *(a1 + 56);
  if (v6)
  {
    dispatch_release(v6);
    *(a1 + 56) = 0;
  }
}

__CFString *InternalURLTrack_CopyDebugDesc(void *a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  v13 = 1061109567;
  v12 = 0;
  v3 = a1[3];
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v4)
  {
    v4(v3, &v13 + 4, &v13);
  }

  v5 = CFGetRetainCount(a1);
  CFStringAppendFormat(Mutable, 0, @"<InternalURLTrack %p %s> RC %d TrackID %d '%c%c%c%c'", a1, a1 + 10, v5, HIDWORD(v13), BYTE3(v13), BYTE2(v13), BYTE1(v13), v13);
  if (a1[4])
  {
    CMBaseObject = CMByteStreamGetCMBaseObject();
    v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v7)
    {
      v7(CMBaseObject, *MEMORY[0x1E695FFA0], *MEMORY[0x1E695E480], &v12);
      if (v12)
      {
        v8 = CFCopyDescription(v12);
        v9 = FigCopyRedactedURLFromString();
        v10 = v9;
        if (v8 && v9)
        {
          CFStringAppendFormat(Mutable, 0, @" AssetURL: %@", v9);
        }

        else if (!v9)
        {
LABEL_11:
          if (v8)
          {
            CFRelease(v8);
          }

          CFRelease(v12);
          return Mutable;
        }

        CFRelease(v10);
        goto LABEL_11;
      }
    }
  }

  return Mutable;
}

void URLAssetFinalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  if (*DerivedStorage)
  {
    InternalURLAssetShutdownWorkQueue(*DerivedStorage);
    InternalURLAssetCleanupChangeMonitoring(*DerivedStorage);
    InternalURLAssetCleanupIncrementalFragmentProcessing(*DerivedStorage);
    InternalURLAssetCleanupStreamingProcessing(*DerivedStorage);
    InternalURLAssetCleanupPostPurchaseProcessing(*DerivedStorage);
    if (*DerivedStorage)
    {
      CFRelease(*DerivedStorage);
      *DerivedStorage = 0;
    }
  }

  v2 = DerivedStorage[1];
  if (v2)
  {
    CFRelease(v2);
    DerivedStorage[1] = 0;
  }

  v3 = DerivedStorage[2];
  if (v3)
  {
    CFRelease(v3);
    DerivedStorage[2] = 0;
  }

  v4 = DerivedStorage[3];
  if (v4)
  {
    dispatch_group_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
    v5 = DerivedStorage[3];
    if (v5)
    {
      dispatch_release(v5);
      DerivedStorage[3] = 0;
    }
  }
}

__CFString *URLAssetCopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v4 = CFCopyDescription(*DerivedStorage);
  v5 = CFCopyDescription(DerivedStorage[1]);
  v6 = CFCopyDescription(DerivedStorage[2]);
  if (a1 && (v7 = *CMBaseObjectGetDerivedStorage()) != 0)
  {
    v8 = (v7 + 592);
  }

  else
  {
    v8 = "";
  }

  v9 = CFGetRetainCount(a1);
  CFStringAppendFormat(Mutable, 0, @"<FigURLAsset %p %s> RC %d {%@} {%@} {%@}", a1, v8, v9, v4, v5, v6);
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

  return Mutable;
}

uint64_t URLAssetSetProperty(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    URLAssetSetProperty_cold_3(&valuePtr);
    return valuePtr;
  }

  v6 = DerivedStorage;
  if (CFEqual(a2, @"assetProperty_MakeReadAheadAssertionWhenCreatingByteStream"))
  {
    if (a3)
    {
      v7 = *v6;
      v8 = CFGetTypeID(a3);
      if (v8 == CFBooleanGetTypeID())
      {
        FigSimpleMutexLock();
        if (v7[20])
        {
          v9 = 4294955126;
        }

        else
        {
          v9 = 0;
          *(v7 + 216) = *MEMORY[0x1E695E4D0] == a3;
        }

        FigSimpleMutexUnlock();
        return v9;
      }

      URLAssetSetProperty_cold_1(&valuePtr);
    }

    else
    {
      URLAssetSetProperty_cold_2(&valuePtr);
    }

    return valuePtr;
  }

  if (CFEqual(a2, @"assetProperty_IncrementalFragmentParseInterval"))
  {
    if (a3)
    {
      v10 = CFGetTypeID(a3);
      if (v10 == CFNumberGetTypeID())
      {
        valuePtr = 0;
        CFNumberGetValue(a3, kCFNumberSInt64Type, &valuePtr);
        InternalURLAssetSetIncrementalFragmentParsingInterval(*v6, valuePtr);
      }
    }

    return 0;
  }

  if (CFEqual(a2, @"assetProperty_ShouldPrefetchCryptKeys"))
  {
    v13 = *v6;
    v12 = v6[1];

    return InternalURLAssetSetShouldPrefetchCryptKeys(v12, v13, a3);
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }
}

uint64_t CopyOutReadAheadAssertion(uint64_t a1, void *a2)
{
  FigSimpleMutexLock();
  v4 = *(a1 + 224);
  if (v4)
  {
    FigAssertionSetProperty(v4, @"Assertion_HolderName", @"Client-of-FigAsset");
    v5 = 0;
    *a2 = *(a1 + 224);
    *(a1 + 224) = 0;
    *(a1 + 217) = 1;
  }

  else
  {
    *a2 = 0;
    if (*(a1 + 217))
    {
      v5 = 4294955126;
    }

    else
    {
      v5 = 0;
    }
  }

  FigSimpleMutexUnlock();
  return v5;
}

uint64_t URLAssetGetStatusOfValueForProperty(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4, void *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    if (a3)
    {
      *a3 = 0;
      v10 = *(DerivedStorage + 8);

      return QueryProperty(v10, a2, a3, a4, a5, 0);
    }

    else
    {
      URLAssetGetStatusOfValueForProperty_cold_1(&v12);
      return v12;
    }
  }

  else
  {
    URLAssetGetStatusOfValueForProperty_cold_2(&v13);
    return v13;
  }
}

uint64_t URLAssetLoadValuesAsyncForProperties(uint64_t a1, const __CFArray *a2, _BYTE *a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v8 = DerivedStorage;
    if (CFArrayGetCount(a2))
    {
      v9 = *(v8 + 8);

      return RequestPropertiesAsync(v9, a2, a3, a4);
    }

    else
    {
      URLAssetLoadValuesAsyncForProperties_cold_1(&v11);
      return v11;
    }
  }

  else
  {
    URLAssetLoadValuesAsyncForProperties_cold_2(&v12);
    return v12;
  }
}

uint64_t URLAssetLoadValueAsyncForProperty(uint64_t a1, uint64_t a2, BOOL *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = 0;
  if (a2)
  {
    result = RequestPropertyAsync(*(DerivedStorage + 8), a2, &v7);
    if (a3)
    {
      if (!result)
      {
        *a3 = (v7 & 0xFFFFFFFE) == 2;
      }
    }
  }

  else
  {
    URLAssetLoadValueAsyncForProperty_cold_1(&v8);
    return v8;
  }

  return result;
}

uint64_t URLAssetValidateAsync(uint64_t a1, const void *a2, uint64_t a3, void *a4, _DWORD *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    URLAssetValidateAsync_cold_3(&v15);
    return v15;
  }

  if (!a4)
  {
    URLAssetValidateAsync_cold_2(&v14);
    return v14;
  }

  v10 = DerivedStorage;
  if (CFEqual(a2, @"validationCriteria_Custom"))
  {
    if (!a3)
    {
      URLAssetValidateAsync_cold_1(&v13);
      return v13;
    }

    goto LABEL_9;
  }

  if (CFEqual(a2, @"validationCriteria_CameraRoll") || CFEqual(a2, @"validationCriteria_MediaPlayback") || CFEqual(a2, @"validationCriteria_PhotosTranscodingService"))
  {
LABEL_9:
    v12 = *(v10 + 16);

    return RequestValidationAsync(v12, a2, a3, a4, a5);
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t URLAssetCopyTrackByID(uint64_t a1, int a2, void *a3)
{
  theArray = 0;
  if (a2)
  {
    if (!a3)
    {
      URLAssetCopyTrackByID_cold_2(&v21);
      v16 = v21;
      goto LABEL_21;
    }

    CMBaseObject = FigAssetGetCMBaseObject(a1);
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v6 || (!v6(CMBaseObject, @"assetProperty_Tracks", *MEMORY[0x1E695E480], &theArray) ? (v7 = theArray == 0) : (v7 = 1), v7 || (v19 = 0, Count = CFArrayGetCount(theArray), Count < 1)))
    {
LABEL_18:
      fig_log_get_emitter();
      v16 = FigSignalErrorAtGM();
      v17 = 0;
    }

    else
    {
      v9 = Count;
      v10 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v10);
        if (!ValueAtIndex || (v12 = ValueAtIndex, v13 = CFGetTypeID(ValueAtIndex), v13 != FigAssetTrackGetTypeID()))
        {
          URLAssetCopyTrackByID_cold_1(&v19, &v21);
          goto LABEL_27;
        }

        v14 = *(*(CMBaseObjectGetVTable() + 16) + 32);
        if (v14)
        {
          if (!v14(v12, &v19, 0) && v19 == a2)
          {
            break;
          }
        }

        if (v9 == ++v10)
        {
          goto LABEL_18;
        }
      }

      v17 = CFRetain(v12);
      if (!v17)
      {
        goto LABEL_18;
      }

      v16 = 0;
    }
  }

  else
  {
    URLAssetCopyTrackByID_cold_3(&v21);
LABEL_27:
    v17 = 0;
    v16 = v21;
  }

  if (a3)
  {
    *a3 = v17;
  }

LABEL_21:
  if (theArray)
  {
    CFRelease(theArray);
  }

  return v16;
}

uint64_t URLAssetCopyTracksWithMediaType(uint64_t a1, int a2, __CFArray **a3)
{
  theArray = 0;
  if (!a3)
  {
    URLAssetCopyTracksWithMediaType_cold_3(&v23);
    return v23;
  }

  CMBaseObject = FigAssetGetCMBaseObject(a1);
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v6)
  {
    Mutable = 0;
    v8 = -12782;
    goto LABEL_29;
  }

  v7 = *MEMORY[0x1E695E480];
  v8 = v6(CMBaseObject, @"assetProperty_Tracks", *MEMORY[0x1E695E480], &theArray);
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = theArray == 0;
  }

  if (v9)
  {
    goto LABEL_28;
  }

  v21 = 0;
  Count = CFArrayGetCount(theArray);
  if (!Count)
  {
    v8 = 0;
LABEL_28:
    Mutable = 0;
    goto LABEL_29;
  }

  v11 = Count;
  Mutable = CFArrayCreateMutable(v7, Count, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    URLAssetCopyTracksWithMediaType_cold_2(&v23);
LABEL_36:
    v19 = v23;
    goto LABEL_32;
  }

  if (v11 >= 1)
  {
    v13 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v13);
      if (!ValueAtIndex)
      {
        break;
      }

      v15 = ValueAtIndex;
      v16 = CFGetTypeID(ValueAtIndex);
      if (v16 != FigAssetTrackGetTypeID())
      {
        break;
      }

      v17 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (v17)
      {
        v8 = v17(v15, 0, &v21);
        if (v8)
        {
          v18 = 0;
        }

        else
        {
          v18 = v21 == a2;
        }

        if (v18)
        {
          CFArrayAppendValue(Mutable, v15);
          v8 = 0;
        }
      }

      else
      {
        v8 = -12782;
      }

      if (v11 == ++v13)
      {
        goto LABEL_26;
      }
    }

    URLAssetCopyTracksWithMediaType_cold_1(&v23);
    goto LABEL_36;
  }

  v8 = 0;
LABEL_26:
  if (!CFArrayGetCount(Mutable))
  {
    CFRelease(Mutable);
    goto LABEL_28;
  }

LABEL_29:
  if (Mutable)
  {
    v19 = v8;
  }

  else
  {
    v19 = 4294955122;
  }

LABEL_32:
  *a3 = Mutable;
  if (theArray)
  {
    CFRelease(theArray);
  }

  return v19;
}

uint64_t URLAssetCopyChapterData(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, void *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a4)
  {
    if (a5)
    {
      v10 = *DerivedStorage;
      if (*(*DerivedStorage + 16) == 709251626)
      {
        URLAssetCopyChapterData_cold_1(&v13);
        return v13;
      }

      else
      {
        v11 = DerivedStorage[1];

        return InternalURLAssetCopyChapterData(v11, v10, a2, a3, a4, a5);
      }
    }

    else
    {
      URLAssetCopyChapterData_cold_2(&v14);
      return v14;
    }
  }

  else
  {
    URLAssetCopyChapterData_cold_3(&v15);
    return v15;
  }
}

uint64_t URLAssetFetchChapterDataAsync(uint64_t a1, int a2, int a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a4)
  {
    v8 = *DerivedStorage;
    if (*(*DerivedStorage + 16) == 709251626)
    {
      URLAssetFetchChapterDataAsync_cold_1(&v11);
      return v11;
    }

    else
    {
      v9 = DerivedStorage[1];

      return InternalURLAssetFetchChapterDataAsync(v9, v8, a2, a3, a4);
    }
  }

  else
  {
    URLAssetFetchChapterDataAsync_cold_2(&v12);
    return v12;
  }
}

uint64_t URLAssetTransferBytePumpAsync(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = *DerivedStorage;
  v7 = *(DerivedStorage + 8);

  return InternalURLAssetTransferBytePumpAsync(v7, v6, a2, a3);
}