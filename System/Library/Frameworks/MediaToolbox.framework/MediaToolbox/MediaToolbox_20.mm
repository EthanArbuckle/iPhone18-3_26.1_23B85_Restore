uint64_t TMCCreateWithCallbacksAndOptions(uint64_t a1, const void *a2, __int128 *a3, void *a4, const void *a5, uint64_t a6, uint64_t *a7)
{
  v26 = *MEMORY[0x1E69E9840];
  v24 = 0u;
  memset(v25, 0, sizeof(v25));
  *__str = 0u;
  v23 = 0u;
  if (!a2)
  {
    TMCCreateWithCallbacksAndOptions_cold_6(&v21);
    goto LABEL_20;
  }

  if (!a4)
  {
    TMCCreateWithCallbacksAndOptions_cold_5(&v21);
    return v21;
  }

  if (!a4[2])
  {
    TMCCreateWithCallbacksAndOptions_cold_4(&v21);
    goto LABEL_20;
  }

  if (!a5)
  {
    TMCCreateWithCallbacksAndOptions_cold_3(&v21);
    goto LABEL_20;
  }

  if ((*(a3 + 3) & 0x1D) != 1)
  {
    TMCCreateWithCallbacksAndOptions_cold_1(&v21);
    goto LABEL_20;
  }

  if (!a7)
  {
    TMCCreateWithCallbacksAndOptions_cold_2(&v21);
LABEL_20:
    v18 = v21;
    if (!a4)
    {
      return v18;
    }

    goto LABEL_16;
  }

  MEMORY[0x19A8D3660](&sRegisterTMCTypeOnce, RegisterTMCType);
  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v13 = Instance;
    __copy_assignment_8_8_t0w16_pa0_44489_16_pa0_25850_24_pa0_65440_32(Instance + 56, a4);
    v14 = *a3;
    *(v13 + 112) = *(a3 + 2);
    *(v13 + 96) = v14;
    *(v13 + 120) = CFRetain(a5);
    v15 = MEMORY[0x1E6960C70];
    *(v13 + 144) = *MEMORY[0x1E6960C70];
    *(v13 + 160) = *(v15 + 16);
    FigCFDictionaryGetBooleanIfPresent();
    *(v13 + 188) = 0;
    snprintf(__str, 0x46uLL, "com.apple.coremedia.textmediaconverter.%p", v13);
    *(v13 + 24) = dispatch_queue_create(__str, 0);
    snprintf(__str, 0x46uLL, "com.apple.coremedia.textmediaconverter.jumpseed.%p", v13);
    *(v13 + 32) = dispatch_queue_create(__str, 0);
    snprintf(__str, 0x46uLL, "com.apple.coremedia.textmediaconverter.callback.%p", v13);
    *(v13 + 40) = dispatch_queue_create(__str, 0);
    *(v13 + 168) = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(v13 + 24));
    v16 = FigCFWeakReferenceHolderCreateWithReferencedObject();
    dispatch_source_set_cancel_handler_f(*(v13 + 168), tmcSendingTimerCanceled);
    dispatch_source_set_event_handler_f(*(v13 + 168), tmcSendingTimerFired);
    dispatch_set_context(*(v13 + 168), v16);
    dispatch_source_set_timer(*(v13 + 168), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    *(v13 + 176) = voucher_copy();
    dispatch_resume(*(v13 + 168));
    v17 = CMTimebaseAddTimerDispatchSource(*(v13 + 120), *(v13 + 168));
    if (v17 || (CMNotificationCenterGetDefaultLocalCenter(), v17 = FigNotificationCenterAddWeakListener(), v17) || (*(v13 + 48) = CFRetain(a2), CMNotificationCenterGetDefaultLocalCenter(), v17 = FigNotificationCenterAddWeakListener(), v17) || (CMNotificationCenterGetDefaultLocalCenter(), v17 = FigNotificationCenterAddWeakListener(), v17))
    {
      v18 = v17;
    }

    else
    {
      CMNotificationCenterGetDefaultLocalCenter();
      v18 = FigNotificationCenterAddWeakListener();
      if (!v18)
      {
        *a7 = v13;
        return v18;
      }
    }

    CFRelease(v13);
    return v18;
  }

  fig_log_get_emitter();
  v18 = FigSignalErrorAtGM();
  if (!a4)
  {
    return v18;
  }

LABEL_16:
  if (v18)
  {
    v20 = a4[3];
    if (v20)
    {
      v20(a4[1]);
    }
  }

  return v18;
}

void TMCInvalidate(void *a1)
{
  if (a1)
  {
    tmcInvalidateInternal(a1);
    CFRetain(a1);
    v2 = a1[3];

    dispatch_async_f(v2, a1, tmcReleaseObjectsAndConsumeTMC);
  }
}

void tmcInvalidateInternal(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    *(a1 + 16) = 1;
    if (*(a1 + 48))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      FigBaseObject = FigSampleBufferProviderGetFigBaseObject(*(a1 + 48));
      if (FigBaseObject)
      {
        v3 = FigBaseObject;
        v4 = *(*(CMBaseObjectGetVTable() + 8) + 24);
        if (v4)
        {
          v4(v3);
        }
      }
    }

    v5 = *(a1 + 168);
    if (v5)
    {
      CMTimebaseRemoveTimerDispatchSource(*(a1 + 120), v5);
      dispatch_source_cancel(*(a1 + 168));
    }

    if (*(a1 + 120))
    {
      CMNotificationCenterGetDefaultLocalCenter();

      FigNotificationCenterRemoveWeakListener();
    }
  }
}

void tmcReleaseObjectsAndConsumeTMC(const void *a1)
{
  tmcReleaseObjects(a1);

  CFRelease(a1);
}

uint64_t RegisterTMCType()
{
  result = _CFRuntimeRegisterClass();
  sTMCID = result;
  return result;
}

uint64_t __copy_assignment_8_8_t0w16_pa0_44489_16_pa0_25850_24_pa0_65440_32(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *(result + 16) = *(a2 + 16);
  *(result + 24) = *(a2 + 24);
  *(result + 32) = *(a2 + 32);
  return result;
}

uint64_t tmcTimeJumped(int a1, CFTypeRef cf)
{
  if (!*(cf + 16))
  {
    CFRetain(cf);
    CFGetAllocator(cf);

    return FigDeferNotificationToDispatchQueue();
  }

  return result;
}

uint64_t tmcInputDataBecameReady(int a1, CFTypeRef cf)
{
  if (!*(cf + 16))
  {
    CFRetain(cf);
    CFGetAllocator(cf);

    return FigDeferNotificationToDispatchQueue();
  }

  return result;
}

void tmcInhibitOutputUntil(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  if (!*(a2 + 16))
  {
    v7 = malloc_type_calloc(1uLL, 0x10uLL, 0xE0040E685C293uLL);
    if (v7)
    {
      v8 = v7;
      *v7 = a2;
      v9 = a2;
      if (!a5 || (Value = CFDictionaryGetValue(a5, *MEMORY[0x1E6960580]), v8[1] = Value, (v9 = *v8) != 0))
      {
        CFRetain(v9);
        Value = v8[1];
      }

      if (Value)
      {
        CFRetain(Value);
      }

      v11 = *(a2 + 32);

      dispatch_async_f(v11, v8, tmcInhibitOutputUntilSerialized);
    }

    else
    {
      tmcInhibitOutputUntil_cold_1();
    }
  }
}

void tmcResetOutput(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    FigAtomicIncrement32();
    CFRetain(a2);
    v4 = *(a2 + 24);

    dispatch_async_f(v4, a2, tmcResetOutputSerialized);
  }
}

uint64_t TMCGetEndPresentationTimeForDecodedSamples(dispatch_queue_t *cf, uint64_t a2)
{
  context = cf;
  v6 = *MEMORY[0x1E6960C70];
  v7 = *(MEMORY[0x1E6960C70] + 16);
  if (!a2)
  {
    TMCGetEndPresentationTimeForDecodedSamples_cold_2(&v8);
    return v8;
  }

  if (*(cf + 16))
  {
    TMCGetEndPresentationTimeForDecodedSamples_cold_1(&v8);
    return v8;
  }

  CFRetain(cf);
  dispatch_sync_f(cf[3], &context, tmcSerializedGetEndPresentationTimeForDecodedSamples);
  result = 0;
  *a2 = v6;
  *(a2 + 16) = v7;
  return result;
}

void tmcSerializedGetEndPresentationTimeForDecodedSamples(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = *(*a1 + 160);
  *(a1 + 8) = *(*a1 + 144);
  *(a1 + 24) = v3;
  v4 = v2[16];
  if (v4)
  {
    CMSampleBufferGetOutputPresentationTimeStamp(&v9, v4);
    value = v9.value;
    flags = v9.flags;
    timescale = v9.timescale;
    if ((v9.flags & 0x1D) == 1)
    {
      epoch = v9.epoch;
      *(a1 + 8) = value;
      *(a1 + 16) = timescale;
      *(a1 + 20) = flags;
      *(a1 + 24) = epoch;
      CMSampleBufferGetOutputDuration(&v9, v2[16]);
      v10 = v9.value;
      v11 = v9.timescale;
      if ((v9.flags & 0x1D) == 1)
      {
        lhs = *(a1 + 8);
        rhs.value = v10;
        rhs.timescale = v11;
        rhs.flags = v9.flags;
        rhs.epoch = v9.epoch;
        CMTimeAdd(&v9, &lhs, &rhs);
        *(a1 + 8) = v9;
      }
    }
  }

  CFRelease(v2);
}

void tmcReleaseObjects(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 48) = 0;
  }

  v3 = *(a1 + 120);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 120) = 0;
  }

  v4 = *(a1 + 128);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 128) = 0;
  }

  v5 = *(a1 + 136);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 136) = 0;
  }

  v6 = *(a1 + 168);
  if (v6)
  {
    dispatch_release(v6);
    *(a1 + 168) = 0;
  }

  v7 = *(a1 + 176);
  if (v7)
  {
    os_release(v7);
    *(a1 + 176) = 0;
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    v9 = *(a1 + 80);
    if (v9)
    {
      dispatch_async_f(v8, *(a1 + 64), v9);
      v8 = *(a1 + 40);
      *(a1 + 72) = 0;
      *(a1 + 80) = 0;
      if (!v8)
      {
        return;
      }
    }

    else
    {
      *(a1 + 72) = 0;
    }

    dispatch_release(v8);
    *(a1 + 40) = 0;
  }
}

double tmcInit(_OWORD *a1)
{
  result = 0.0;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[1] = 0u;
  return result;
}

void tmcFinalize(uint64_t a1)
{
  tmcInvalidateInternal(a1);
  tmcReleaseObjects(a1);
  v2 = *(a1 + 32);
  if (v2)
  {
    dispatch_release(v2);
    *(a1 + 32) = 0;
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    dispatch_release(v3);
    *(a1 + 24) = 0;
  }
}

CFTypeRef tmcCopyFormattingDesc(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return CFRetain(@"[TMC (invalidated)]");
  }

  else
  {
    return CFRetain(@"[TMC]");
  }
}

__CFString *tmcCopyDebugDesc(_BYTE *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  v4 = CFGetRetainCount(a1);
  if (a1[16])
  {
    v5 = " (invalidated)";
  }

  else
  {
    v5 = "";
  }

  v6 = CFGetAllocator(a1);
  CFStringAppendFormat(Mutable, 0, @"TMC %p retainCount: %d%s allocator: %p\n", a1, v4, v5, v6);
  return Mutable;
}

void tmcSendingTimerCanceled(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

void tmcSendingTimerFired()
{
  v10 = *MEMORY[0x1E69E9840];
  v0 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v0)
  {
    v1 = v0;
    os_retain(*(v0 + 176));
    voucher_adopt();
    if (!*(v1 + 16) && *(v1 + 128))
    {
      v2 = malloc_type_malloc(0x10uLL, 0x20040A4A59CD2uLL);
      *v2 = CFRetain(v1);
      v2[1] = CFRetain(*(v1 + 128));
      dispatch_async_f(*(v1 + 40), v2, tmcSendSampleToCallback);
      CMSampleBufferGetOutputPresentationTimeStamp(&v7, *(v1 + 128));
      *(v1 + 144) = v7;
      CMSampleBufferGetOutputDuration(&v7, *(v1 + 128));
      value = v7.value;
      timescale = v7.timescale;
      if ((v7.flags & 0x1D) == 1)
      {
        lhs = *(v1 + 144);
        rhs.value = value;
        rhs.timescale = timescale;
        rhs.flags = v7.flags;
        rhs.epoch = v7.epoch;
        CMTimeAdd(&v7, &lhs, &rhs);
        *(v1 + 144) = v7;
      }

      v3 = *(v1 + 128);
      if (v3)
      {
        CFRelease(v3);
        *(v1 + 128) = 0;
      }
    }

    tmcPrepareToSendNextSample(v1);
    CFRelease(v1);
    v4 = voucher_adopt();
    os_release(v4);
  }
}

void tmcSendSampleToCallback(CFTypeRef *a1)
{
  v2 = *a1;
  v3 = *(*a1 + 9);
  if (v3)
  {
    if (!*(v2 + 16) && v3 != 0)
    {
      v3(v2[8], a1[1]);
      if (*(v2 + 188))
      {
        if (FigSampleBufferGetCaptionGroup())
        {
          FigCaptionGroupGetSliceCount();
        }
      }
    }
  }

  CFRelease(a1[1]);
  CFRelease(v2);

  free(a1);
}

void tmcHandleIgnoreSamplesUntilThisJumpSeed(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (*(a1 + 136))
  {
    v2 = CMGetAttachment(*(a1 + 128), *MEMORY[0x1E6960518], 0);
    if (FigCFEqual())
    {
      v3 = *(a1 + 136);
      if (v3)
      {
        CFRelease(v3);
        *(a1 + 136) = 0;
      }
    }

    else
    {
      if (!v2)
      {
        CMSampleBufferGetOutputPresentationTimeStamp(&v7, *(a1 + 128));
        *(a1 + 144) = v7;
        CMSampleBufferGetOutputDuration(&v7, *(a1 + 128));
        value = v7.value;
        timescale = v7.timescale;
        if ((v7.flags & 0x1D) == 1)
        {
          lhs = *(a1 + 144);
          rhs.value = value;
          rhs.timescale = timescale;
          rhs.flags = v7.flags;
          rhs.epoch = v7.epoch;
          CMTimeAdd(&v7, &lhs, &rhs);
          *(a1 + 144) = v7;
        }
      }

      v4 = *(a1 + 128);
      if (v4)
      {
        CFRelease(v4);
        *(a1 + 128) = 0;
      }
    }
  }
}

const __CFArray *tmcShouldDisplaySampleImmediately(opaqueCMSampleBuffer *a1)
{
  result = CMSampleBufferGetSampleAttachmentsArray(a1, 0);
  if (result)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(result, 0);
    return (ValueAtIndex && *MEMORY[0x1E695E4D0] == CFDictionaryGetValue(ValueAtIndex, *MEMORY[0x1E6960408]));
  }

  return result;
}

void tmcDeferredInputDataBecameReady(int a1, _BYTE *cf)
{
  if (!cf[16])
  {
    tmcPrepareToSendNextSample(cf);
  }

  CFRelease(cf);
}

void tmcResetOutputSerialized(_BYTE *cf)
{
  if (!cf[16])
  {
    tmcResetOutputSerialized_cold_1(cf);
  }

  CFRelease(cf);
}

void tmcInhibitOutputUntilSerialized(void *a1)
{
  v2 = *a1;
  if (*(*a1 + 16))
  {
    goto LABEL_7;
  }

  v3 = *(v2 + 136);
  if (v3)
  {
    CFRelease(v3);
    *(v2 + 136) = 0;
  }

  v4 = a1[1];
  if (v4)
  {
    *(v2 + 136) = CFRetain(v4);
  }

  CFRetain(v2);
  dispatch_async_f(*(v2 + 24), v2, tmcPrepareToSendNextSampleAndConsumeTMC);
  v2 = *a1;
  if (*a1)
  {
LABEL_7:
    CFRelease(v2);
  }

  v5 = a1[1];
  if (v5)
  {
    CFRelease(v5);
  }

  free(a1);
}

void tmcDeferredTimeJumped(int a1, CFTypeRef cf)
{
  v20 = *MEMORY[0x1E69E9840];
  memset(&v15, 0, sizeof(v15));
  memset(&v14, 0, sizeof(v14));
  memset(&v13, 0, sizeof(v13));
  if (!*(cf + 16))
  {
    v3 = *(cf + 16);
    if (v3)
    {
      if (!tmcShouldDisplaySampleImmediately(v3))
      {
        v4 = CMGetAttachment(*(cf + 16), *MEMORY[0x1E69604B0], 0);
        CMSampleBufferGetOutputPresentationTimeStamp(&lhs, *(cf + 16));
        value = lhs.value;
        flags = lhs.flags;
        timescale = lhs.timescale;
        if ((lhs.flags & 0x1D) == 1)
        {
          epoch = lhs.epoch;
          if (!v4 && (CMSampleBufferGetOutputDuration(&lhs, *(cf + 16)), v16 = lhs.value, v7 = lhs.flags, v17 = lhs.timescale, (lhs.flags & 1) != 0))
          {
            v8 = lhs.epoch;
          }

          else
          {
            v16 = *MEMORY[0x1E6960CC0];
            v7 = *(MEMORY[0x1E6960CC0] + 12);
            v17 = *(MEMORY[0x1E6960CC0] + 8);
            v8 = *(MEMORY[0x1E6960CC0] + 16);
          }

          lhs.value = value;
          lhs.timescale = timescale;
          lhs.flags = flags;
          lhs.epoch = epoch;
          v11 = *(cf + 4);
          CMTimeSubtract(&v15, &lhs, &v11);
          lhs.value = value;
          lhs.timescale = timescale;
          lhs.flags = flags;
          lhs.epoch = epoch;
          v11.value = v16;
          v11.timescale = v17;
          v11.flags = v7;
          v11.epoch = v8;
          CMTimeAdd(&v14, &lhs, &v11);
          CMTimebaseGetTime(&v13, *(cf + 15));
          Rate = CMTimebaseGetRate(*(cf + 15));
          lhs = v13;
          v11 = v15;
          if (CMTimeCompare(&lhs, &v11) < 0 || (lhs = v13, v11 = v14, CMTimeCompare(&lhs, &v11) > 0))
          {
            if (Rate > 0.0 && (lhs = v13, v11 = v14, CMTimeCompare(&lhs, &v11) > 0) || Rate < 0.0 && (lhs = v13, v11 = v15, CMTimeCompare(&lhs, &v11) < 0))
            {
              if (!v4)
              {
                v10 = *(cf + 16);
                if (v10)
                {
                  CFRelease(v10);
                  *(cf + 16) = 0;
                }
              }

              if (CMTimebaseSetTimerDispatchSourceToFireImmediately(*(cf + 15), *(cf + 21)))
              {
                goto LABEL_21;
              }
            }
          }

          else if (CMTimebaseSetTimerDispatchSourceToFireImmediately(*(cf + 15), *(cf + 21)))
          {
LABEL_21:
            fig_log_get_emitter();
            FigSignalErrorAtGM();
          }
        }
      }
    }
  }

  CFRelease(cf);
}

uint64_t FigByteStreamServerStart()
{
  if (qword_1ED4CA508 != -1)
  {
    FigByteStreamServerStart_cold_1();
  }

  return _MergedGlobals_22;
}

void __FigByteStreamServerStart_block_invoke()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetValue();
  FigCFDictionarySetValue();
  FigCFDictionarySetValue();
  if (FigServer_IsMediaparserd())
  {
    fig_log_get_emitter();
    v1 = FigSignalErrorAtGM();
  }

  else
  {
    FigServer_IsMediaplaybackd();
    v1 = FigXPCServerStart();
  }

  _MergedGlobals_22 = v1;
  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

uint64_t FigByteStreamServerCopyByteStreamForID(uint64_t a1, int a2, void *a3)
{
  if (!a3)
  {
    FigByteStreamServerCopyByteStreamForID_cold_2(&v7);
    return v7;
  }

  if (!a2)
  {
    FigByteStreamServerCopyByteStreamForID_cold_1(&v7);
    return v7;
  }

  v4 = FigXPCServerRetainNeighborObjectFromIDWithProcessID();
  if (!v4)
  {
    v5 = CFGetTypeID(0);
    if (v5 == CMByteStreamBaseGetTypeID())
    {
      v4 = 0;
      *a3 = 0;
    }

    else
    {
      fig_log_get_emitter();
      return FigSignalErrorAtGM();
    }
  }

  return v4;
}

uint64_t __FigServedByteStreamStateGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED4CA530 = result;
  return result;
}

uint64_t servedByteStreamState_Init(uint64_t result)
{
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

void servedByteStreamState_Finalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 24) = 0;
  }
}

__CFString *servedByteStreamState_CopyDebugDesc(uint64_t a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppendFormat(Mutable, 0, @"FigServedByteStreamState %p", a1);
  return Mutable;
}

__CFString *fssm_remote_copyDebugDescription(const void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  v4 = CFGetRetainCount(a1);
  v5 = CFGetAllocator(a1);
  CFStringAppendFormat(Mutable, 0, @"<FigSecureStopManager_Remote %p retainCount: %ld allocator: %p, ", a1, v4, v5);
  CFStringAppendFormat(Mutable, 0, @">");
  return Mutable;
}

uint64_t fssm_remote_getObjectID(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = DerivedStorage;
    if (*DerivedStorage)
    {
      fssm_remote_getObjectID_cold_1(&v6);
      return v6;
    }

    else
    {
      result = 0;
      *a2 = *(v4 + 1);
    }
  }

  else
  {
    fssm_remote_getObjectID_cold_2(&v7);
    return v7;
  }

  return result;
}

uint64_t figCSSTokenWalkerRegisterFigCSSTokenWalker()
{
  result = _CFRuntimeRegisterClass();
  sFigCSSTokenWalkerID = result;
  return result;
}

uint64_t FigCSSTokenWalkerCreate(uint64_t a1, const void *a2, uint64_t *a3)
{
  if (a2)
  {
    if (a3)
    {
      MEMORY[0x19A8D3660](&FigCSSTokenWalkerGetTypeID_sRegisterFigCSSTokenWalkerOnce, figCSSTokenWalkerRegisterFigCSSTokenWalker);
      Instance = _CFRuntimeCreateInstance();
      if (Instance)
      {
        v7 = Instance;
        *(Instance + 16) = CFRetain(a2);
        *(v7 + 24) = CFArrayGetCount(a2);
        *(v7 + 32) = -1;
        v8 = FigCSSEOFTokenCreate(a1, (v7 + 48));
        if (v8)
        {
          CFRelease(v7);
        }

        else
        {
          *a3 = v7;
        }
      }

      else
      {
        FigCSSTokenWalkerCreate_cold_1(&v10);
        return v10;
      }
    }

    else
    {
      FigCSSTokenWalkerCreate_cold_2(&v11);
      return v11;
    }
  }

  else
  {
    FigCSSTokenWalkerCreate_cold_3(&v12);
    return v12;
  }

  return v8;
}

uint64_t FigCSSTokenWalkerGetCurrentInputToken(uint64_t a1, void *a2, _DWORD *a3)
{
  if (!a1)
  {
    FigCSSTokenWalkerGetCurrentInputToken_cold_1(&v10);
    return v10;
  }

  v5 = *(a1 + 32);
  if (v5 == -1)
  {
    ValueAtIndex = 0;
    if (!a2)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (v5 < *(a1 + 24))
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 16), v5);
    if (!a2)
    {
      goto LABEL_8;
    }

LABEL_7:
    *a2 = ValueAtIndex;
    goto LABEL_8;
  }

  ValueAtIndex = *(a1 + 48);
  if (a2)
  {
    goto LABEL_7;
  }

LABEL_8:
  if (!a3)
  {
    return 0;
  }

  v9 = 0;
  if (ValueAtIndex)
  {
    result = FigCSSTokenGetTokenType(ValueAtIndex, &v9);
    if (result)
    {
      return result;
    }

    v8 = v9;
  }

  else
  {
    v8 = 0;
  }

  result = 0;
  *a3 = v8;
  return result;
}

uint64_t FigCSSTokenWalkerReconsumeInputToken(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 32) == -1)
    {

      return FigSignalErrorAtGM();
    }

    else
    {
      result = 0;
      *(a1 + 40) = 1;
    }
  }

  else
  {
    FigCSSTokenWalkerReconsumeInputToken_cold_1(&v3);
    return v3;
  }

  return result;
}

double figCSSTokenWalker_Init(uint64_t a1)
{
  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

void figCSSTokenWalker_Finalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 48) = 0;
  }
}

void fnum_updateExpectedProgressTargets(uint64_t a1)
{
  ExpectedProgressTarget = fnum_createExpectedProgressTarget(a1);
  FigCFWeakReferenceTableApplyFunction();
  if (ExpectedProgressTarget)
  {

    CFRelease(ExpectedProgressTarget);
  }
}

uint64_t fnum_scheduleDeadlineCleanup(uint64_t a1, int64_t a2)
{
  v3 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  if (v3)
  {
    v4 = v3;
    v5 = dispatch_time(0, a2);
    GlobalNetworkBufferingQueue = FigThreadGetGlobalNetworkBufferingQueue();
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 0x40000000;
    v8[2] = __fnum_scheduleDeadlineCleanup_block_invoke;
    v8[3] = &__block_descriptor_tmp_7;
    v8[4] = v4;
    dispatch_after(v5, GlobalNetworkBufferingQueue, v8);
    return 0;
  }

  else
  {
    fnum_scheduleDeadlineCleanup_cold_1(&v9);
    return v9;
  }
}

uint64_t FigNetworkUrgencyCancelDeadline(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (a2)
    {
      return FigNetworkUrgencyCancelDeadline_cold_1();
    }
  }

  return result;
}

uint64_t fnum_createExpectedProgressTarget(uint64_t a1)
{
  v1 = *(a1 + 160);
  if (v1)
  {
    v2 = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      if (v2 >= v1[2])
      {
        v2 = v1[2];
      }

      v1 = *v1;
    }

    while (v1);
    if (*(a1 + 120))
    {
      return FigCFNumberCreateSInt64();
    }
  }

  else
  {
    v2 = *(a1 + 120);
  }

  if (v2)
  {
    return FigCFNumberCreateSInt64();
  }

  return 0;
}

uint64_t fnum_setHTTPRequestExpectedProgressTarget(uint64_t a1, uint64_t a2)
{
  VTable = CMBaseObjectGetVTable();
  v6 = *(VTable + 8);
  result = VTable + 8;
  v7 = *(v6 + 56);
  if (v7)
  {

    return v7(a1, @"FHRP_ExpectedProgressTarget", a2);
  }

  return result;
}

uint64_t __FigNetworkUrgencyMonitorGetClassID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  sFigNetworkUrgencyMonitorID = result;
  return result;
}

double fnum_Init(_OWORD *a1)
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

uint64_t FigNetworkUrgencyMonitorCreate(uint64_t a1, uint64_t *a2)
{
  MEMORY[0x19A8D3660](&sFigPlayerInitializeBufferDurationParameters, fnum_initializeBufferDurationParameters);
  *a2 = 0;
  if (FigNetworkUrgencyMonitorGetClassID_sRegisterFigNetworkUrgencyMonitorTypeOnce != -1)
  {
    FigNetworkUrgencyMonitorCreate_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    FigNetworkUrgencyMonitorCreate_cold_3(&v18);
    return v18;
  }

  v4 = Instance;
  v5 = FigReentrantMutexCreate();
  *(v4 + 112) = v5;
  if (!v5)
  {
    v16 = 1069;
LABEL_18:
    if (FigNetworkUrgencyMonitorCreate_cold_2(v16, &v18))
    {
      return 0;
    }

    v14 = v18;
LABEL_20:
    CFRelease(v4);
    return v14;
  }

  *(v4 + 160) = 0;
  *(v4 + 104) = 0x7FFFFFFFFFFFFFFFLL;
  v6 = MEMORY[0x1E6960C70];
  *(v4 + 132) = *MEMORY[0x1E6960C70];
  *(v4 + 148) = *(v6 + 16);
  *(v4 + 168) = v4 + 160;
  v7 = FigCFWeakReferenceTableCreate();
  if (v7)
  {
    v14 = v7;
    goto LABEL_20;
  }

  v8 = FigReentrantMutexCreate();
  *(v4 + 40) = v8;
  if (!v8)
  {
    v16 = 1079;
    goto LABEL_18;
  }

  GlobalNetworkBufferingQueue = FigThreadGetGlobalNetworkBufferingQueue();
  v10 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, GlobalNetworkBufferingQueue);
  *(v4 + 48) = v10;
  if (!v10)
  {
    v16 = 1082;
    goto LABEL_18;
  }

  v11 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  if (!v11)
  {
    v16 = 1086;
    goto LABEL_18;
  }

  v12 = v11;
  dispatch_set_context(*(v4 + 48), v11);
  dispatch_source_set_timer(*(v4 + 48), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
  dispatch_source_set_event_handler_f(*(v4 + 48), fnum_bufferDepletionUpdateTimerProc);
  CFRetain(v12);
  v13 = *(v4 + 48);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 0x40000000;
  v17[2] = __FigNetworkUrgencyMonitorCreate_block_invoke;
  v17[3] = &__block_descriptor_tmp_4;
  v17[4] = v12;
  dispatch_source_set_cancel_handler(v13, v17);
  FigSimpleMutexLock();
  FigSimpleMutexLock();
  *(v4 + 120) = 0;
  FigSimpleMutexUnlock();
  fnum_updateExpectedProgressTargets(v4);
  *(v4 + 128) = 1;
  fnum_rescheduleBufferDepletionUpdateTimer(v4, sFigNetworkUrgencyMonitorBufferDepletionGracePeriodNanoseconds);
  FigSimpleMutexUnlock();
  dispatch_resume(*(v4 + 48));
  *a2 = v4;
  CFRelease(v12);
  return 0;
}

double fnum_initializeBufferDurationParameters()
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  FigGetCFPreferenceDoubleWithDefault();
  if (v0 != *&_MergedGlobals_1)
  {
    _MergedGlobals_1 = *&v0;
  }

  FigGetCFPreferenceDoubleWithDefault();
  if (v1 != *&qword_1ED4C9F68)
  {
    qword_1ED4C9F68 = *&v1;
  }

  FigGetCFPreferenceDoubleWithDefault();
  v3 = *&sFigNetworkUrgencyMonitorBufferDepletionGracePeriod;
  if (v2 != *&sFigNetworkUrgencyMonitorBufferDepletionGracePeriod)
  {
    sFigNetworkUrgencyMonitorBufferDepletionGracePeriod = *&v2;
    v3 = v2;
  }

  sFigNetworkUrgencyMonitorBufferDepletionUpdatePeriodNanoseconds = (*&qword_1ED4C9F68 * 1000000000.0);
  result = v3 * 1000000000.0;
  sFigNetworkUrgencyMonitorBufferDepletionGracePeriodNanoseconds = (v3 * 1000000000.0);
  return result;
}

void __FigNetworkUrgencyMonitorCreate_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CFRelease(v1);
  }
}

void fnum_timebaseRateChangedCallback(int a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  GlobalNetworkBufferingQueue = FigThreadGetGlobalNetworkBufferingQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __fnum_timebaseRateChangedCallback_block_invoke;
  block[3] = &__block_descriptor_tmp_5;
  block[4] = cf;
  dispatch_async(GlobalNetworkBufferingQueue, block);
}

void fnum_timebaseJumpedCallback(int a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  GlobalNetworkBufferingQueue = FigThreadGetGlobalNetworkBufferingQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __fnum_timebaseJumpedCallback_block_invoke;
  block[3] = &__block_descriptor_tmp_6;
  block[4] = cf;
  dispatch_async(GlobalNetworkBufferingQueue, block);
}

void fnum_releaseReadOnlyTimebase(uint64_t a1)
{
  if (*(a1 + 16))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    v2 = *(a1 + 16);
    if (v2)
    {
      CFRelease(v2);
      *(a1 + 16) = 0;
    }
  }
}

void fnum_uninstallTimelineConverter(uint64_t a1)
{
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 24) = 0;
  }
}

void fnum_handleL2L3TimelineMappingChangedNotification(int a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  GlobalNetworkBufferingQueue = FigThreadGetGlobalNetworkBufferingQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __fnum_handleL2L3TimelineMappingChangedNotification_block_invoke;
  block[3] = &__block_descriptor_tmp_8_1;
  block[4] = cf;
  dispatch_async(GlobalNetworkBufferingQueue, block);
}

uint64_t OUTLINED_FUNCTION_0_24()
{

  return FigSimpleMutexLock();
}

uint64_t OUTLINED_FUNCTION_3_17()
{

  return FigNotificationCenterAddWeakListener();
}

uint64_t VMC2MakeOutputCallbacksForImageQueueArray(const __CFArray *a1, const __CFArray *a2, uint64_t a3, void *a4)
{
  if (a1 && a4 && a3 == 96)
  {
    v7 = malloc_type_calloc(1uLL, 0x20uLL, 0x700402B80F0C4uLL);
    if (!v7)
    {
      v15 = 0;
      v27 = 4294954510;
      goto LABEL_41;
    }

    Count = CFArrayGetCount(a1);
    if (a2)
    {
      v9 = CFArrayGetCount(a2);
    }

    else
    {
      v9 = 0;
    }

    if (Count != v9)
    {
      VMC2MakeOutputCallbacksForImageQueueArray_cold_1(&value);
      v15 = 0;
      goto LABEL_48;
    }

    cf = a1;
    if (Count)
    {
      v11 = *MEMORY[0x1E695E480];
      v12 = MEMORY[0x1E695E9C0];
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], Count, MEMORY[0x1E695E9C0]);
      v14 = CFArrayCreateMutable(v11, Count, v12);
      v15 = v14;
      if (!Mutable)
      {
        VMC2MakeOutputCallbacksForImageQueueArray_cold_3(&value);
        v27 = value;
        if (!v15)
        {
          goto LABEL_41;
        }

        goto LABEL_44;
      }

      v28 = v7;
      if (!v14)
      {
        VMC2MakeOutputCallbacksForImageQueueArray_cold_2(&value);
        v27 = value;
        goto LABEL_43;
      }

      if (Count >= 1)
      {
        v16 = 0;
        v17 = *MEMORY[0x1E695E4C0];
        v30 = *MEMORY[0x1E695E4D0];
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a2, v16);
          value = 0;
          if (ValueAtIndex && (v19 = ValueAtIndex, v20 = CFGetTypeID(ValueAtIndex), v20 == CFDictionaryGetTypeID()))
          {
            CFDictionaryGetValue(v19, @"DestinationPixelBufferAttributes");
            v21 = CFDictionaryGetValue(v19, @"EnsureModifiableImageBuffers") == v30 ? v30 : v17;
          }

          else
          {
            v21 = v17;
          }

          v22 = VTPixelBufferConformerCreateWithAttributes();
          if (v22)
          {
            break;
          }

          CFArrayAppendValue(v15, value);
          CFArrayAppendValue(Mutable, v21);
          if (Count == ++v16)
          {
            goto LABEL_25;
          }
        }

        v27 = v22;
LABEL_43:
        CFRelease(Mutable);
        v7 = v28;
        if (v15)
        {
LABEL_44:
          CFRelease(v15);
          v15 = 0;
        }

LABEL_41:
        free(v15);
        free(v7);
        return v27;
      }

LABEL_25:
      v7 = v28;
    }

    else
    {
      Mutable = 0;
      v15 = 0;
    }

    v7[1] = Mutable;
    v7[2] = v15;
    v15 = malloc_type_calloc(Count, 4uLL, 0x100004052888210uLL);
    if (!v15)
    {
      VMC2MakeOutputCallbacksForImageQueueArray_cold_5(&value);
      goto LABEL_48;
    }

    if (Count < 1)
    {
      if (Count)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v23 = 0;
      v24 = 0;
      do
      {
        v25 = CFArrayGetValueAtIndex(a2, v23);
        if (v25)
        {
          v26 = CFGetTypeID(v25);
          if (v26 == CFDictionaryGetTypeID())
          {
            LODWORD(value) = 0;
            if (FigCFDictionaryGetInt32IfPresent())
            {
              *(v15 + v23) = value;
              ++v24;
            }
          }
        }

        ++v23;
      }

      while (Count != v23);
      if (v24 != Count)
      {
        if (v24)
        {
          VMC2MakeOutputCallbacksForImageQueueArray_cold_4(&value);
LABEL_48:
          v27 = value;
          goto LABEL_41;
        }

LABEL_40:
        v27 = 0;
        *v7 = CFRetain(cf);
        *a4 = 0;
        a4[1] = v7;
        a4[2] = vmciqa_setSourceInfo;
        a4[3] = vmciqa_getSafeDisplayDuration;
        a4[4] = vmciqa_installOccupancyChangedCallback;
        a4[5] = vmciqa_removeOccupancyChangedCallback;
        a4[6] = vmciqa_canOutputImage;
        a4[7] = vmciqa_outputImage;
        a4[8] = vmciqa_flushOutput;
        a4[9] = vmciqa_releaseOutput;
        a4[10] = vmciqa_postNotification;
        a4[11] = vmciqa_copyGPURegistryID;
        v7 = 0;
        goto LABEL_41;
      }
    }

    v7[3] = v15;
    v15 = 0;
    goto LABEL_40;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

CFIndex vmciqa_setSourceInfo(CFArrayRef *a1, int a2, int a3, __int128 *a4, __int128 *a5)
{
  v9 = *a1;
  result = CFArrayGetCount(*a1);
  v11 = result;
  if (a2)
  {
    if (a3)
    {
      v12 = 3;
    }

    else
    {
      v12 = 1;
    }
  }

  else if (*(a4 + 3) & 0x1D) == 1 && (*(a5 + 12))
  {
    v12 = 2;
  }

  else
  {
    v12 = 0;
  }

  if (result >= 1)
  {
    v13 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v9, v13);
      v20 = *a4;
      v21 = *(a4 + 2);
      v18 = *a5;
      v19 = *(a5 + 2);
      VTable = CMBaseObjectGetVTable();
      v16 = *(VTable + 16);
      result = VTable + 16;
      v17 = *(v16 + 56);
      if (v17)
      {
        v24 = v20;
        v25 = v21;
        v22 = v18;
        v23 = v19;
        result = v17(ValueAtIndex, v12, &v24, &v22);
      }

      ++v13;
    }

    while (v11 != v13);
  }

  return result;
}

uint64_t vmciqa_getSafeDisplayDuration@<X0>(CFArrayRef *a1@<X0>, CMTime *a2@<X8>)
{
  v3 = *a1;
  result = CFArrayGetCount(*a1);
  v5 = MEMORY[0x1E6960C88];
  *&a2->value = *MEMORY[0x1E6960C88];
  a2->epoch = *(v5 + 16);
  if (result >= 1)
  {
    v6 = result;
    v7 = 0;
    v8 = MEMORY[0x1E6960C70];
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v3, v7);
      memset(&v13, 0, sizeof(v13));
      v10 = *(*(CMBaseObjectGetVTable() + 16) + 80);
      if (v10)
      {
        v10(&v13, ValueAtIndex);
      }

      else
      {
        v13 = *v8;
      }

      time1 = *a2;
      v11 = v13;
      result = CMTimeMinimum(a2, &time1, &v11);
      ++v7;
    }

    while (v6 != v7);
  }

  return result;
}

uint64_t vmciqa_installOccupancyChangedCallback(CFArrayRef *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *a1;
  Count = CFArrayGetCount(*a1);
  if (sRegisterOccupancyChangedBlobTypeOnce != -1)
  {
    vmciqa_installOccupancyChangedCallback_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v9 = Instance;
    FigCFWeakReferenceStore();
    *(v9 + 24) = a3;
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        CFArrayGetValueAtIndex(v6, i);
        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterAddWeakListener();
      }
    }

    result = 0;
    *a4 = v9;
  }

  else
  {
    vmciqa_installOccupancyChangedCallback_cold_2(&v12);
    return v12;
  }

  return result;
}

uint64_t vmciqa_removeOccupancyChangedCallback(CFArrayRef *a1, const void *a2)
{
  v3 = *a1;
  Count = CFArrayGetCount(*a1);
  if (Count >= 1)
  {
    v5 = Count;
    for (i = 0; i != v5; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v3, i);
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      FigBaseObject = FigImageQueueGetFigBaseObject(ValueAtIndex);
      v9 = *(CMBaseObjectGetVTable() + 8);
      if (*v9 >= 2uLL)
      {
        v10 = v9[8];
        if (v10)
        {
          v10(FigBaseObject);
        }
      }
    }
  }

  if (a2)
  {
    CFRelease(a2);
  }

  return 0;
}

uint64_t vmciqa_canOutputImage(CFArrayRef *a1)
{
  v1 = *a1;
  Count = CFArrayGetCount(*a1);
  if (Count < 1)
  {
    return 100;
  }

  v3 = Count;
  v4 = 0;
  LODWORD(v5) = 100;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v1, v4);
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v7)
    {
      v8 = v7(ValueAtIndex);
    }

    else
    {
      v8 = 0;
    }

    if (v8 >= v5)
    {
      v5 = v5;
    }

    else
    {
      v5 = v8;
    }

    ++v4;
  }

  while (v3 != v4);
  return v5;
}

uint64_t vmciqa_outputImage(const __CFArray **a1, __CVBuffer *a2, OpaqueCMTaggedBufferGroup *a3, char a4, uint64_t a5, __int128 *a6, unsigned int a7)
{
  v7 = *a1;
  if (!*a1)
  {
    return 0;
  }

  Count = CFArrayGetCount(*a1);
  v36 = Count - 1;
  if (Count < 1)
  {
    return 0;
  }

  v9 = Count;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  theArray = a1[2];
  v35 = a1[1];
  if (a2)
  {
    v13 = 1;
  }

  else
  {
    v13 = a3 == 0;
  }

  v14 = v13;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v7, v11);
    CVPixelBufferForTag = a2;
    if ((v14 & 1) != 0 || (v17 = FigTagMakeWithSInt64Value(), v19 = v18, *&v43.category = v17, v43.value = v19, (CVPixelBufferForTag = CMTaggedBufferGroupGetCVPixelBufferForTag(a3, v43, 0)) != 0))
    {
      CFArrayGetValueAtIndex(theArray, v11);
      CFArrayGetValueAtIndex(v35, v11);
      v22 = (a4 & 1) == 0 || v12 != 0 || v11 < v36;
      v23 = VTPixelBufferConformerCopyConformedPixelBuffer();
      if (v23)
      {
        if (v10)
        {
          v10 = v10;
        }

        else
        {
          v10 = v23;
        }
      }

      else
      {
        if (!CVPixelBufferForTag)
        {
          v12 = 1;
        }

        if (v22 && CVPixelBufferForTag == 0)
        {
          v24 = 0;
        }

        else
        {
          v24 = 0x10000;
        }

        v39 = *a6;
        v40 = *(a6 + 2);
        v25 = *(*(CMBaseObjectGetVTable() + 16) + 32);
        if (v25)
        {
          v41 = v39;
          v42 = v40;
          v26 = v25(ValueAtIndex, 0, a5, &v41, v24 | a7);
        }

        else
        {
          v26 = -12782;
        }

        if (v10)
        {
          v27 = 1;
        }

        else
        {
          v27 = v26 == 0;
        }

        if (v27)
        {
          v10 = v10;
        }

        else
        {
          v10 = v26;
        }
      }
    }

    ++v11;
  }

  while (v9 != v11);
  return v10;
}

CFIndex vmciqa_flushOutput(CFArrayRef *a1)
{
  v1 = *a1;
  result = CFArrayGetCount(*a1);
  if (result >= 1)
  {
    v3 = result;
    for (i = 0; i != v3; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v1, i);
      VTable = CMBaseObjectGetVTable();
      v7 = *(VTable + 16);
      result = VTable + 16;
      v8 = *(v7 + 16);
      if (v8)
      {
        result = v8(ValueAtIndex);
      }
    }
  }

  return result;
}

void vmciqa_releaseOutput(void *a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 1);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 2);
  if (v4)
  {
    CFRelease(v4);
  }

  free(*(a1 + 3));

  free(a1);
}

uint64_t vmciqa_postNotification(CFArrayRef *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  Count = CFArrayGetCount(*a1);
  if (Count < 1)
  {
    return 0;
  }

  v7 = Count;
  LODWORD(v8) = 0;
  for (i = 0; i != v7; ++i)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v5, i);
    v11 = *(*(CMBaseObjectGetVTable() + 16) + 88);
    if (v11)
    {
      v12 = v11(ValueAtIndex, a2, a3);
    }

    else
    {
      v12 = -12782;
    }

    if (v8)
    {
      v13 = 1;
    }

    else
    {
      v13 = v12 == 0;
    }

    if (v13)
    {
      v8 = v8;
    }

    else
    {
      v8 = v12;
    }
  }

  return v8;
}

__CFArray *vmciqa_copyGPURegistryID(CFArrayRef *a1)
{
  v1 = *a1;
  Count = CFArrayGetCount(*a1);
  v3 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], Count, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v5 = Count < 1;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = 0;
    v7 = *MEMORY[0x1E695E738];
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v1, v6);
      cf = 0;
      FigBaseObject = FigImageQueueGetFigBaseObject(ValueAtIndex);
      v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v10)
      {
        v10(FigBaseObject, @"FigImageQueueProperty_GPURegistryID", v3, &cf);
      }

      if (cf)
      {
        v11 = cf;
      }

      else
      {
        v11 = v7;
      }

      CFArrayAppendValue(Mutable, v11);
      if (cf)
      {
        CFRelease(cf);
      }

      ++v6;
    }

    while (Count != v6);
  }

  return Mutable;
}

void vmciqa_OccupancyMonitorCallback(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x19A8D0E00](a2 + 16);
  if (v3)
  {
    v4 = v3;
    (*(a2 + 24))();

    CFRelease(v4);
  }
}

uint64_t RegisterVMC2OutputCallbacksType()
{
  result = _CFRuntimeRegisterClass();
  sOccupancyChangedBlobID = result;
  return result;
}

uint64_t InitOccupancyChangedBlob(uint64_t result)
{
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

void FinalizeOccupancyChangedBlob(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = (a1 + 16);
  if (v2)
  {
    objc_destroyWeak(v1);
  }
}

uint64_t FigMetricPlaybackEventInstallDeserializationHandler(uint64_t result)
{
  switch(result)
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
      result = FigMetricEventClassInstallEventDeserializeHandler();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t FigMetricInstallAllPlaybackDeserializationHandlers()
{
  FigMetricEventClassInstallEventDeserializeHandler();
  FigMetricEventClassInstallEventDeserializeHandler();
  FigMetricEventClassInstallEventDeserializeHandler();
  FigMetricEventClassInstallEventDeserializeHandler();
  FigMetricEventClassInstallEventDeserializeHandler();
  FigMetricEventClassInstallEventDeserializeHandler();
  FigMetricEventClassInstallEventDeserializeHandler();
  FigMetricEventClassInstallEventDeserializeHandler();
  FigMetricEventClassInstallEventDeserializeHandler();
  FigMetricEventClassInstallEventDeserializeHandler();
  FigMetricEventClassInstallEventDeserializeHandler();
  FigMetricEventClassInstallEventDeserializeHandler();
  FigMetricEventClassInstallEventDeserializeHandler();

  return FigMetricEventClassInstallEventDeserializeHandler();
}

uint64_t FigAudioQueueCreateWithOptions(const __CFAllocator *a1, const opaqueCMFormatDescription *a2, uint64_t a3, int a4, uint64_t a5, uint64_t *a6)
{
  v54 = *MEMORY[0x1E69E9840];
  v41 = 0;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  *__str = 0u;
  MEMORY[0x19A8D3660](&faq_oneTimeInitialization_sInitializationOnce, faq_oneTimeInitializationWork);
  if (!a2)
  {
    FigAudioQueueCreateWithOptions_cold_10(&time);
    return LODWORD(time.value);
  }

  if (!a3)
  {
    FigAudioQueueCreateWithOptions_cold_9(&time);
    return LODWORD(time.value);
  }

  if (!a6)
  {
    FigAudioQueueCreateWithOptions_cold_8(&time);
    return LODWORD(time.value);
  }

  if ((a4 & 0x402) == 0x400)
  {
    FigAudioQueueCreateWithOptions_cold_7(&time);
    return LODWORD(time.value);
  }

  MEMORY[0x19A8D3660](&FigAudioQueueGetTypeID_sRegisterFAQTypeOnce, faq_registerFAQType);
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    FigAudioQueueCreateWithOptions_cold_6(&time);
    return LODWORD(time.value);
  }

  v12 = Instance;
  v13 = (Instance + 800);
  *(Instance + 800) = 0;
  theString = 0;
  cf = 0;
  v44 = 0;
  v45 = 0;
  Value = FigCFDictionaryGetValue();
  if (Value)
  {
    v43 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (FigCFDictionaryGetValueIfPresent())
  {
    *(v12 + 264) = cf;
  }

  if (FigCFDictionaryGetValueIfPresent())
  {
    CFStringGetCString(theString, v13, 16, 0x600u);
  }

  if (FigCFDictionaryGetValueIfPresent())
  {
    DispatchQueue = FigDispatchQueueHolderGetDispatchQueue();
    *(v12 + 32) = DispatchQueue;
    if (DispatchQueue)
    {
      dispatch_retain(DispatchQueue);
    }
  }

  if (FigCFDictionaryGetValueIfPresent())
  {
    v17 = v44;
    if (v44)
    {
      v17 = CFRetain(v44);
    }

    *(v12 + 272) = v17;
  }

  v18 = FigReentrantMutexCreate();
  *(v12 + 24) = v18;
  if (!v18)
  {
    FigAudioQueueCreateWithOptions_cold_5(&time);
LABEL_66:
    value_low = LODWORD(time.value);
    goto LABEL_36;
  }

  snprintf(__str, 0x50uLL, "com.apple.coremedia.faq.asyncQueue.%s", v13);
  if (!*(v12 + 32))
  {
    v19 = FigDispatchQueueCreateWithPriority();
    *(v12 + 32) = v19;
    if (!v19)
    {
      FigAudioQueueCreateWithOptions_cold_4(&time);
      goto LABEL_66;
    }
  }

  snprintf(__str, 0x50uLL, "com.apple.coremedia.faq.deferredAQPropertyHandler.%s", v13);
  v20 = FigDispatchQueueCreateWithPriority();
  *(v12 + 40) = v20;
  if (!v20)
  {
    FigAudioQueueCreateWithOptions_cold_3(&time);
    goto LABEL_66;
  }

  v21 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  *(v12 + 80) = v21;
  if (!v21)
  {
    value_low = 4294954355;
    goto LABEL_36;
  }

  *(v12 + 48) = a4;
  *(v12 + 64) = FigBufferQueueRetain();
  *(v12 + 72) = (*(v12 + 48) & 0x40) != 0;
  *(v12 + 176) = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  *(v12 + 184) = 0;
  *(v12 + 208) = 1065353216;
  *(v12 + 216) = 1065353216;
  *(v12 + 224) = 1065353216;
  *(v12 + 280) = 1065353216;
  *(v12 + 352) = 1953064047;
  *(v12 + 672) = faq_scaledEditRateSupportValidator_one32nd_to_32;
  CFRetain(*(v12 + 80));
  v22 = *(v12 + 64);
  v23 = *(v12 + 80);
  v40 = *MEMORY[0x1E6960CC0];
  *&time.value = *MEMORY[0x1E6960CC0];
  v24 = *(MEMORY[0x1E6960CC0] + 16);
  time.epoch = v24;
  v25 = CMBufferQueueInstallTrigger(v22, faq_sourceDataBecameReady, v23, 7, &time, (v12 + 88));
  if (v25)
  {
    goto LABEL_51;
  }

  if ((*(v12 + 48) & 2) != 0)
  {
    v26 = *(v12 + 64);
    v27 = *(v12 + 80);
    time = **&MEMORY[0x1E6960C70];
    v25 = CMBufferQueueInstallTrigger(v26, faq_sourceEndOfDataReached, v27, 8, &time, (v12 + 96));
    if (v25)
    {
      goto LABEL_51;
    }
  }

  CMNotificationCenterGetDefaultLocalCenter();
  v25 = FigNotificationCenterAddWeakListener();
  if (v25)
  {
    goto LABEL_51;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  v25 = FigNotificationCenterAddWeakListener();
  if (v25)
  {
    goto LABEL_51;
  }

  *(v12 + 128) = v40;
  *(v12 + 144) = v24;
  v28 = FigSemaphoreCreate();
  *(v12 + 296) = v28;
  if (!v28)
  {
    FigAudioQueueCreateWithOptions_cold_2(&time);
    goto LABEL_66;
  }

  v25 = AudioSampleBufferSplitterCreate((v12 + 168));
  if (v25 || (v25 = AudioSampleBufferSplitterSetSplitMethod(*(v12 + 168), 3), v25) || (v25 = AudioSampleBufferSplitterSetMaxNumberOfSplitSampleBuffers(*(v12 + 168), 3), v25))
  {
LABEL_51:
    value_low = v25;
    goto LABEL_36;
  }

  FigSimpleMutexLock();
  v29 = FigSubAudioQueueCreate(v12, a2, Value, MEMORY[0x1E6960CC0], &v41);
  if (v29)
  {
    value_low = v29;
    FigSimpleMutexUnlock();
    if (v41)
    {
      CFRelease(v41);
    }

    goto LABEL_36;
  }

  v31 = v41;
  if (!*(v12 + 16))
  {
    CFArrayInsertValueAtIndex(*(v12 + 176), 0, v41);
  }

  FigSimpleMutexUnlock();
  if (v31)
  {
    CFRelease(v31);
  }

  time.value = @"com.apple.coremedia.audioqueue.source";
  v32 = CFDictionaryCreate(*MEMORY[0x1E695E480], MEMORY[0x1E69631F0], &time, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  value_low = FigThreadCreate();
  if (!value_low)
  {
    if (!v32)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

  FigSignalErrorAtGM();
  if (v32)
  {
LABEL_43:
    CFRelease(v32);
  }

LABEL_44:
  if (value_low)
  {
LABEL_36:
    CFRelease(v12);
    return value_low;
  }

  *(v12 + 424) = v12;
  v33 = MEMORY[0x1E6960C70];
  v34 = *MEMORY[0x1E6960C70];
  *(v12 + 432) = *MEMORY[0x1E6960C70];
  v35 = *(v33 + 16);
  *(v12 + 448) = v35;
  *(v12 + 456) = v34;
  *(v12 + 472) = v35;
  *(v12 + 480) = v34;
  *(v12 + 496) = v35;
  *(v12 + 520) = v35;
  *(v12 + 504) = v34;
  *(v12 + 528) = v34;
  *(v12 + 544) = v35;
  *(v12 + 568) = v35;
  *(v12 + 552) = v34;
  *(v12 + 336) = v35;
  *(v12 + 320) = v34;
  v36 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(v12 + 32));
  *(v12 + 344) = v36;
  if (!v36)
  {
    FigAudioQueueCreateWithOptions_cold_1(&time);
    goto LABEL_66;
  }

  dispatch_source_set_timer(v36, 0xFFFFFFFFFFFFFFFFLL, 0, 0);
  v37 = *(v12 + 80);
  if (v37)
  {
    CFRetain(v37);
    v38 = *(v12 + 80);
  }

  else
  {
    v38 = 0;
  }

  dispatch_set_context(*(v12 + 344), v38);
  dispatch_set_finalizer_f(*(v12 + 344), faq_releaseWeakReferenceHolderToFaq);
  dispatch_source_set_event_handler_f(*(v12 + 344), faq_wakeupToDiscardTimerFired);
  *(v12 + 776) = voucher_copy();
  dispatch_resume(*(v12 + 344));
  *(v12 + 768) = 1;
  value_low = 0;
  *(v12 + 796) = FigAtomicIncrement32();
  *a6 = v12;
  return value_low;
}

void faq_releaseWeakReferenceHolderToFaq(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

void faq_wakeupToDiscardTimerFired()
{
  v0 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v0)
  {
    v1 = v0;
    faq_wakeupToDiscard(v0);

    CFRelease(v1);
  }
}

uint64_t faq_disconnectFromOfflineMixer(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 702) || !*(a1 + 720))
  {
    return 0;
  }

  v4 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v4)
  {
    v5 = v4;
    FigAudioQueueTimingShimGetAudioQueue(*(a2 + 40));
    v6 = FigAudioQueueOfflineMixerDisconnectAudioQueue(v5, a1);
    CFRelease(v5);
    *(a1 + 648) = 0;
  }

  else
  {
    v6 = 0;
  }

  *(a2 + 702) = 0;
  return v6;
}

void faq_removeOfflineMixer(uint64_t a1)
{
  if (*(a1 + 728))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    *(a1 + 728) = 0;
  }

  v2 = *(a1 + 720);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 720) = 0;
  }
}

void faq_destroyTransitionRecord(void *a1)
{
  v2 = a1[10];
  if (v2)
  {
    CFRelease(v2);
    a1[10] = 0;
  }

  v3 = a1[11];
  if (v3)
  {
    CFRelease(v3);
  }

  free(a1);
}

uint64_t faq_removeAudioProcessingTapListeners(uint64_t result)
{
  if (*(result + 744))
  {
    v1 = result;
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    v2 = *(v1 + 744);
    VTable = CMBaseObjectGetVTable();
    v5 = *(VTable + 8);
    result = VTable + 8;
    v4 = v5;
    if (*v5 >= 2uLL)
    {
      v6 = v4[8];
      if (v6)
      {

        return v6(v2);
      }
    }
  }

  return result;
}

uint64_t FigAudioQueueRequestTransitionCallback(uint64_t a1, __int128 *a2, const void *a3, uint64_t a4, uint64_t a5)
{
  if (!a1)
  {
    FigAudioQueueRequestTransitionCallback_cold_5(&v16);
    return v16;
  }

  if ((*(a2 + 3) & 0x1D) != 1)
  {
    FigAudioQueueRequestTransitionCallback_cold_1(&v16);
    return v16;
  }

  if (!a3)
  {
    FigAudioQueueRequestTransitionCallback_cold_4(&v16);
    return v16;
  }

  if (!a4)
  {
    FigAudioQueueRequestTransitionCallback_cold_3(&v16);
    return v16;
  }

  FigSimpleMutexLock();
  if (*(a1 + 16))
  {
    FigAudioQueueRequestTransitionCallback_cold_2(&v16);
    v14 = v16;
  }

  else
  {
    v10 = malloc_type_calloc(1uLL, 0x68uLL, 0x10E0040F567B0A4uLL);
    if (v10)
    {
      v11 = v10;
      *(v10 + 1) = a4;
      *(v10 + 2) = a5;
      v12 = *a2;
      *(v10 + 5) = *(a2 + 2);
      *(v10 + 24) = v12;
      v13 = MEMORY[0x1E6960C70];
      *(v10 + 3) = *MEMORY[0x1E6960C70];
      *(v10 + 8) = *(v13 + 16);
      *(v10 + 18) = 0;
      *(v10 + 10) = a3;
      CFRetain(a3);
      v14 = 0;
      v11[96] = 0;
      *v11 = *(a1 + 184);
      *(a1 + 184) = v11;
      ++*(a1 + 192);
    }

    else
    {
      v14 = 4294954355;
    }
  }

  FigSimpleMutexUnlock();
  return v14;
}

uint64_t FigAudioQueueSetPropertiesToUpdateAtTransition(uint64_t a1, uint64_t a2, CFTypeRef cf)
{
  if (cf && (v6 = CFGetTypeID(cf), v6 != CFDictionaryGetTypeID()))
  {
    FigAudioQueueSetPropertiesToUpdateAtTransition_cold_1(&v11);
    return v11;
  }

  else
  {
    FigSimpleMutexLock();
    v7 = (a1 + 184);
    do
    {
      v7 = *v7;
      if (!v7)
      {
        v9 = FigSignalErrorAtGM();
        goto LABEL_12;
      }
    }

    while (v7[10] != a2);
    v8 = v7[11];
    v7[11] = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    if (v8)
    {
      CFRelease(v8);
    }

    v9 = 0;
LABEL_12:
    FigSimpleMutexUnlock();
  }

  return v9;
}

void faq_enqueueSourceData(uint64_t a1, int a2)
{
  v460 = *MEMORY[0x1E69E9840];
  FigSimpleMutexLock();
  if (!*(a1 + 16) && *(a1 + 64) && *(a1 + 305))
  {
    v414 = 0;
    v4 = 0;
    v5 = 0;
    v427 = vdupq_n_s64(4uLL);
    key = *MEMORY[0x1E6962DF0];
    v6 = 1.0;
    v387 = *MEMORY[0x1E69604B0];
    v7 = 1.0;
    v384 = *MEMORY[0x1E6960510];
    v385 = *MEMORY[0x1E6960518];
    v379 = *MEMORY[0x1E6962E00];
    v380 = *MEMORY[0x1E6960490];
    v381 = *MEMORY[0x1E6960550];
    allocator = *MEMORY[0x1E695E480];
    v374 = *MEMORY[0x1E6962E10];
    v375 = *MEMORY[0x1E6960540];
    v370 = *MEMORY[0x1E6962DD8];
    v371 = *MEMORY[0x1E6960500];
    v397 = *MEMORY[0x1E6960560];
    v396 = *MEMORY[0x1E6960558];
    v391 = *MEMORY[0x1E69604D0];
    v403 = (a1 + 308);
    v372 = (a1 + 456);
    v386 = (a1 + 184);
    v392 = (a1 + 552);
    v389 = (a1 + 528);
    v390 = *MEMORY[0x1E695E4D0];
    v383 = (a1 + 360);
    v394 = (a1 + 320);
    v378 = a1 + 424;
    v8 = MEMORY[0x1E6960C70];
    v382 = *(MEMORY[0x1E6960C70] + 12);
    v401 = *(MEMORY[0x1E6960C70] + 16);
    v377 = *(MEMORY[0x1E6960CC0] + 12);
    v418 = *(MEMORY[0x1E6960CC0] + 16);
    v402 = a2;
    while (1)
    {
      if (*(a1 + 16))
      {
        goto LABEL_774;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 176), 0);
      if (!ValueAtIndex)
      {
        goto LABEL_774;
      }

      v10 = ValueAtIndex;
      if (ValueAtIndex[701])
      {
        goto LABEL_774;
      }

      if (a2)
      {
        if (!ValueAtIndex[104])
        {
          v5 = *(a1 + 312);
          if (FigAtomicCompareAndSwap32())
          {
            if (!v5)
            {
              *(v10 + 593) = 1;
            }
          }
        }
      }

      if (*(a1 + 16))
      {
        v11 = 0;
        goto LABEL_654;
      }

      if (!*(a1 + 306) && (*v403 > 7 || *v403 >= 2 && !*(a1 + 356) && *(v10 + 480) >= *(v10 + 100)))
      {
        v11 = 0;
        v22 = 0;
        v13 = 0;
        goto LABEL_643;
      }

      v12 = CMBufferQueueCopyHead(*(a1 + 64));
      v13 = v12;
      if (!v12 || (*(a1 + 48) & 2) != 0 && !CMSampleBufferDataIsReady(v12))
      {
        if ((*(a1 + 48) & 2) != 0 && CMBufferQueueIsAtEndOfData(*(a1 + 64)))
        {
          if (dword_1EAF16C30)
          {
            v17 = v13;
            v18 = v4;
            *block = 0;
            rhs[0] = 0;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v20 = *block;
            if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, rhs[0]))
            {
              v21 = v20;
            }

            else
            {
              v21 = v20 & 0xFFFFFFFE;
            }

            if (v21)
            {
              *time2 = 136315906;
              *&time2[4] = "subaq_enqueueOneSourceSBuf";
              *&time2[12] = 2048;
              *&time2[14] = a1;
              *&time2[22] = 2048;
              *&time2[24] = v10;
              *v446 = 2082;
              *&v446[2] = a1 + 800;
              LODWORD(v356) = 42;
              v355 = time2;
              _os_log_send_and_compose_impl();
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
            v4 = v18;
            a2 = v402;
            v13 = v17;
          }

          faq_stopAllAudioQueues(a1, 0, 0);
          v11 = 0;
          goto LABEL_96;
        }

LABEL_92:
        v11 = 0;
LABEL_93:
        v22 = 0;
        goto LABEL_643;
      }

      v416 = *MEMORY[0x1E6960CC0];
      *&duration.value = *MEMORY[0x1E6960CC0];
      duration.epoch = v418;
      if (*(a1 + 16))
      {
        v16 = 0;
        *&v428.value = v416;
        v428.epoch = v418;
        goto LABEL_38;
      }

      CMSampleBufferGetOutputPresentationTimeStamp(&time1.duration, v13);
      CMSampleBufferGetOutputDuration(rhs, v13);
      lhs = time1.duration;
      CMTimeAdd(time2, &lhs, rhs);
      subaq_getCurrentQueueTime(v10, rhs);
      subaq_convertAQTimeToMediaTime(a1, block);
      if ((*(a1 + 48) & 2) != 0 || (v14 = *(a1 + 416), v14 > 0.0))
      {
        *rhs = *time2;
        *&rhs[16] = *&time2[16];
        *&lhs.value = *block;
        epoch = *&block[16];
      }

      else
      {
        if (v14 >= 0.0)
        {
          *&duration.value = v416;
          duration.epoch = v418;
          goto LABEL_24;
        }

        *rhs = *block;
        *&rhs[16] = *&block[16];
        *&lhs.value = *&time1.duration.value;
        epoch = time1.duration.epoch;
      }

      lhs.epoch = epoch;
      CMTimeSubtract(&duration, rhs, &lhs);
LABEL_24:
      v428 = duration;
      if (*(a1 + 16) || (*(a1 + 48) & 2) != 0)
      {
        v16 = 0;
      }

      else
      {
        time1.duration = duration;
        *time2 = v416;
        *&time2[16] = v418;
        v16 = CMTimeCompare(&time1.duration, time2) >> 31;
      }

LABEL_38:
      if (!CMSampleBufferDataIsReady(v13) && (v16 & 1) == 0)
      {
        if (*(a1 + 73) || *(a1 + 576))
        {
          v23 = 1;
          if (FigAtomicCompareAndSwap32())
          {
            v24 = v5;
            memset(block, 0, 24);
            v25 = *(a1 + 416);
            v26 = 1.0;
            if (v25 == 0.0)
            {
              v27 = 1.0;
            }

            else
            {
              v27 = v25;
            }

            if (*(a1 + 236))
            {
              v28 = *(a1 + 232);
              v94 = v28 == 0.0;
              v26 = v28;
              if (v94)
              {
                v26 = v6;
              }
            }

            time1.duration = v428;
            CMTimeMultiplyByFloat64(time2, &time1.duration, v27 / v26);
            CMTimeAbsoluteValue(&time1.duration, time2);
            CMTimeMake(time2, 5, 1);
            CMTimeMinimum(block, &time1.duration, time2);
            if (dword_1EAF16C30)
            {
              v29 = v13;
              v30 = v4;
              *rhs = 0;
              LOBYTE(lhs.value) = 0;
              v31 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v32 = *rhs;
              if (os_log_type_enabled(v31, lhs.value))
              {
                v33 = v32;
              }

              else
              {
                v33 = v32 & 0xFFFFFFFE;
              }

              if (v33)
              {
                v34 = *(a1 + 73);
                v35 = *(a1 + 576);
                time1.duration = v428;
                Seconds = CMTimeGetSeconds(&time1.duration);
                *&time1.duration.value = *block;
                time1.duration.epoch = *&block[16];
                v37 = CMTimeGetSeconds(&time1.duration);
                *time2 = 136316930;
                *&time2[4] = "subaq_enqueueOneSourceSBuf";
                *&time2[12] = 2048;
                *&time2[14] = a1;
                *&time2[22] = 2048;
                *&time2[24] = v10;
                *v446 = 2082;
                *&v446[2] = a1 + 800;
                *&v446[10] = 1024;
                *&v446[12] = v34;
                *&v446[16] = 1024;
                *&v446[18] = v35;
                *&v446[22] = 2048;
                *&v446[24] = Seconds;
                *&v446[32] = 2048;
                *&v446[34] = v37;
                LODWORD(v356) = 74;
                v355 = time2;
                _os_log_send_and_compose_impl();
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
              v4 = v30;
              a2 = v402;
              v13 = v29;
            }

            CFRetain(a1);
            *&time1.duration.value = *block;
            time1.duration.epoch = *&block[16];
            v57 = CMTimeGetSeconds(&time1.duration);
            v58 = dispatch_time(0, (v57 * 1000000000.0));
            global_queue = dispatch_get_global_queue(0, 0);
            dispatch_after_f(v58, global_queue, a1, faq_scheduledWakeupRetainedToDiscard);
            v11 = 0;
            v22 = 0;
            v23 = 1;
            v5 = v24;
            v8 = MEMORY[0x1E6960C70];
            goto LABEL_644;
          }

LABEL_154:
          v11 = 0;
          v22 = 0;
          goto LABEL_644;
        }

        goto LABEL_92;
      }

      if (!CMSampleBufferDataIsReady(v13) && *(a1 + 196))
      {
        if (dword_1EAF16C30)
        {
          v52 = v13;
          v53 = v4;
          *block = 0;
          rhs[0] = 0;
          v54 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v55 = *block;
          if (os_log_type_enabled(v54, rhs[0]))
          {
            v56 = v55;
          }

          else
          {
            v56 = v55 & 0xFFFFFFFE;
          }

          if (v56)
          {
            *time2 = 136316162;
            *&time2[4] = "subaq_enqueueOneSourceSBuf";
            *&time2[12] = 2048;
            *&time2[14] = a1;
            *&time2[22] = 2048;
            *&time2[24] = v10;
            *v446 = 2082;
            *&v446[2] = a1 + 800;
            *&v446[10] = 2048;
            *&v446[12] = v52;
            LODWORD(v356) = 52;
            v355 = time2;
            _os_log_send_and_compose_impl();
          }

          a2 = v402;
          v23 = 1;
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v11 = 0;
          v22 = 0;
          v4 = v53;
          v13 = v52;
          goto LABEL_644;
        }

        goto LABEL_92;
      }

      if (!*(a1 + 16))
      {
        Decryptor = FigSampleBufferGetDecryptor();
        v39 = *(a1 + 56);
        if (Decryptor != v39)
        {
          v60 = Decryptor;
          if (Decryptor)
          {
            v61 = CFGetTypeID(Decryptor);
            if (v61 == FigCPECryptorGetTypeID())
            {
              v39 = *(a1 + 56);
              *(a1 + 56) = v60;
              CFRetain(v60);
LABEL_234:
              if (v39)
              {
                CFRelease(v39);
              }

              subaq_setCPECryptorPropertyOnAudioQueue(a1);
              goto LABEL_58;
            }

            *block = 0;
            rhs[0] = 0;
            v69 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v70 = *block;
            if (os_log_type_enabled(v69, rhs[0]))
            {
              v71 = v70;
            }

            else
            {
              v71 = v70 & 0xFFFFFFFE;
            }

            if (v71)
            {
              *time2 = 136315650;
              *&time2[4] = "subaq_handleAttachmentIfPresent_Decryptor";
              *&time2[12] = 2048;
              *&time2[14] = a1;
              *&time2[22] = 2048;
              *&time2[24] = v60;
              LODWORD(v356) = 32;
              v355 = time2;
              _os_log_send_and_compose_impl();
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
            v39 = *(a1 + 56);
            v8 = MEMORY[0x1E6960C70];
          }

          *(a1 + 56) = 0;
          goto LABEL_234;
        }
      }

LABEL_58:
      v40 = CMGetAttachment(v13, key, 0);
      if (v40)
      {
        FigAudioQueueSetProperty(a1, @"LoudnessInfo", v40);
      }

      a2 = v402;
      if (CMGetAttachment(v13, v387, 0))
      {
        FigSimpleMutexLock();
        if (!*(a1 + 16))
        {
          v41 = CFArrayGetValueAtIndex(*(a1 + 176), 0);
          if (v41[145] != v7)
          {
            v62 = v41;
            memset(&time1, 0, 24);
            CMSampleBufferGetOutputPresentationTimeStamp(&time1.duration, v13);
            memset(time2, 0, 24);
            *block = *&time1.duration.value;
            *&block[16] = time1.duration.epoch;
            subaq_convertMediaTimeToAQTime(a1, time2);
            subaq_schedulePlayRate2ValueForTime(a1, v62, time2, 1.0);
            *(v62 + 580) = 1065353216;
          }
        }

        FigSimpleMutexUnlock();
      }

      if (*(a1 + 104))
      {
        v42 = CMGetAttachment(v13, v385, 0);
        v43 = *(a1 + 104);
        if (v42)
        {
          v44 = CFEqual(v42, v43);
          v43 = *(a1 + 104);
          if (v44)
          {
            if (v43)
            {
              CFRelease(*(a1 + 104));
              *(a1 + 104) = 0;
            }

            if (!*(a1 + 652))
            {
              goto LABEL_122;
            }

            FigSimpleMutexLock();
            if (!*(a1 + 16))
            {
              v45 = CFArrayGetValueAtIndex(*(a1 + 176), 0);
              *(a1 + 576) = 1;
              if (dword_1EAF16C30)
              {
                v398 = v5;
                v46 = v13;
                *block = 0;
                rhs[0] = 0;
                v47 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v48 = *block;
                if (os_log_type_enabled(v47, rhs[0]))
                {
                  v49 = v48;
                }

                else
                {
                  v49 = v48 & 0xFFFFFFFE;
                }

                if (v49)
                {
                  v50 = *(v45 + 5);
                  *&time1.duration.value = *v372;
                  time1.duration.epoch = *(a1 + 472);
                  v51 = CMTimeGetSeconds(&time1.duration);
                  *time2 = 136316418;
                  *&time2[4] = "faq_restartIfPausedDueToReset";
                  *&time2[12] = 2048;
                  *&time2[14] = a1;
                  *&time2[22] = 2048;
                  *&time2[24] = v45;
                  *v446 = 2048;
                  *&v446[2] = v50;
                  *&v446[10] = 2082;
                  *&v446[12] = a1 + 800;
                  *&v446[20] = 2048;
                  *&v446[22] = v51;
                  LODWORD(v356) = 62;
                  v355 = time2;
                  _os_log_send_and_compose_impl();
                }

                fig_log_call_emit_and_clean_up_after_send_and_compose();
                v8 = MEMORY[0x1E6960C70];
                v13 = v46;
                v5 = v398;
              }

              CFRetain(*(v45 + 3));
              started = FigAudioQueueTimingShimStartAsync(*(v45 + 5), 0, 0, subaq_audioQueueStartupCompleted, *(v45 + 3));
              if (started)
              {
                v64 = started;
                CFRelease(*(v45 + 3));
                *block = 0;
                rhs[0] = 0;
                v65 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v66 = *block;
                if (os_log_type_enabled(v65, rhs[0]))
                {
                  v67 = v66;
                }

                else
                {
                  v67 = v66 & 0xFFFFFFFE;
                }

                if (v67)
                {
                  v68 = *(v45 + 5);
                  *time2 = 136316418;
                  *&time2[4] = "faq_restartIfPausedDueToReset";
                  *&time2[12] = 2048;
                  *&time2[14] = a1;
                  *&time2[22] = 2048;
                  *&time2[24] = v45;
                  *v446 = 2048;
                  *&v446[2] = v68;
                  *&v446[10] = 2082;
                  *&v446[12] = a1 + 800;
                  *&v446[20] = 1024;
                  *&v446[22] = v64;
                  LODWORD(v356) = 58;
                  v355 = time2;
                  _os_log_send_and_compose_impl();
                }

                a2 = v402;
                v11 = 1;
                fig_log_call_emit_and_clean_up_after_send_and_compose();
                FigSimpleMutexUnlock();
                goto LABEL_93;
              }

              subaq_startListener(a1, v45);
              *(a1 + 652) = 0;
              *(a1 + 580) = 0;
            }

            FigSimpleMutexUnlock();
            v43 = *(a1 + 104);
            a2 = v402;
          }
        }

        if (v43)
        {
          v72 = FigBufferQueueDequeueIfMatchingAndRetain();
          if (v72)
          {
            CFRelease(v72);
          }

          v22 = 0;
          v11 = 1;
          goto LABEL_643;
        }
      }

LABEL_122:
      if (!*(a1 + 16) && CMGetAttachment(v13, v384, 0) && !*(a1 + 578))
      {
        subaq_flushAudioQueue(a1, v10);
      }

      v73 = *(a1 + 192);
      if (v73 >= 1)
      {
        v74 = CMGetAttachment(v13, v381, 0);
        if (v74)
        {
          v75 = v74;
          for (i = *v386; i; i = *i)
          {
            if (v75 == i[10])
            {
              if (*(a1 + 576) || !*(a1 + 653))
              {
                v11 = 0;
                v22 = 0;
LABEL_144:
                v23 = 1;
                a2 = v402;
                goto LABEL_644;
              }

              *(i + 96) = 1;
              *(a1 + 196) = 1;
              if (*(a1 + 140))
              {
                *&time1.duration.value = *(a1 + 128);
                time1.duration.epoch = *(a1 + 144);
                *time2 = v416;
                *&time2[16] = v418;
                if (CMTimeCompare(&time1.duration, time2) >= 1)
                {
                  *time2 = *(i + 3);
                  *&time2[16] = i[5];
                  *block = *(a1 + 128);
                  *&block[16] = *(a1 + 144);
                  CMTimeSubtract(&time1.duration, time2, block);
                  *(i + 3) = *&time1.duration.value;
                  i[5] = time1.duration.epoch;
                  *(a1 + 128) = v416;
                  *(a1 + 144) = v418;
                }
              }

              v77 = *(i + 3);
              *(a1 + 568) = i[5];
              *v392 = v77;
              v78 = *(i + 3);
              *(a1 + 544) = i[5];
              *v389 = v78;
              *(a1 + 480) = *v8;
              *(a1 + 496) = v401;
            }
          }

          a2 = v402;
          if (!*(a1 + 196))
          {
            v399 = v5;
            v79 = v13;
            *block = 0;
            rhs[0] = 0;
            v80 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v81 = *block;
            if (os_log_type_enabled(v80, rhs[0]))
            {
              v82 = v81;
            }

            else
            {
              v82 = v81 & 0xFFFFFFFE;
            }

            if (v82)
            {
              *time2 = 136316162;
              *&time2[4] = "faq_handleAttachmentIfPresent_TransitionID";
              *&time2[12] = 2048;
              *&time2[14] = a1;
              *&time2[22] = 2082;
              *&time2[24] = a1 + 800;
              *v446 = 2048;
              *&v446[2] = v75;
              *&v446[10] = 2048;
              *&v446[12] = v79;
              LODWORD(v356) = 52;
              v355 = time2;
              _os_log_send_and_compose_impl();
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
            a2 = v402;
            v8 = MEMORY[0x1E6960C70];
            v13 = v79;
            v5 = v399;
          }
        }
      }

      if (*(a1 + 72))
      {
        v83 = CMGetAttachment(v13, v379, 0);
        if (!CMSampleBufferGetDataBuffer(v13))
        {
          if (v83)
          {
            if (subaq_doesAudioQueueHaveBuffersToFlush(v10) || *(v10 + 672))
            {
              subaq_flushAudioQueue(a1, v10);
              v23 = 1;
              *(v10 + 700) = 1;
            }

            else
            {
              v23 = 0;
            }

            v84 = FigBufferQueueDequeueIfMatchingAndRetain();
            if (v84)
            {
              CFRelease(v84);
            }

            goto LABEL_154;
          }
        }
      }

      v85 = CMGetAttachment(v13, v380, 0);
      if (!CMSampleBufferGetDataBuffer(v13))
      {
        if (v85 && !*(a1 + 578))
        {
          subaq_flushAudioQueue(a1, v10);
        }

        if (!*(a1 + 16) && (v90 = CMGetAttachment(v13, v374, 0), CMTimeRangeMakeFromDictionary(&time1, v90), (time1.duration.flags & 1) != 0))
        {
          v22 = 0;
          v11 = 1;
          if ((time1.presentationTimeStamp.flags & 1) != 0 && !time1.presentationTimeStamp.epoch && (time1.presentationTimeStamp.value & 0x8000000000000000) == 0)
          {
            CMNotificationCenterGetDefaultLocalCenter();
            CMNotificationCenterPostNotification();
            if ((*(a1 + 48) & 2) != 0)
            {
              faq_stopAllAudioQueues(a1, 0, 0);
              v11 = 0;
              v22 = 1;
            }

            else
            {
              v22 = 0;
            }
          }
        }

        else
        {
          v22 = 0;
          v11 = 1;
        }

        v108 = FigBufferQueueDequeueIfMatchingAndRetain();
        if (v108)
        {
          CFRelease(v108);
        }

        goto LABEL_643;
      }

      v361 = v85;
      *rhs = 0;
      v400 = v5;
      v364 = v13;
      if (*(a1 + 16))
      {
        goto LABEL_163;
      }

      if (CMSampleBufferGetNumSamples(v13) < 1)
      {
        goto LABEL_163;
      }

      FormatDescription = CMSampleBufferGetFormatDescription(v13);
      if (!FormatDescription)
      {
        goto LABEL_163;
      }

      v87 = FormatDescription;
      if (CMAudioFormatDescriptionEqual(FormatDescription, *(v10 + 56), 0xFu, rhs))
      {
        goto LABEL_163;
      }

      if ((~*rhs & 5) == 0)
      {
        if ((rhs[0] & 2) == 0)
        {
          time1.duration.value = 0;
          MagicCookie = CMAudioFormatDescriptionGetMagicCookie(v87, &time1);
          subaq_flushAudioQueue(a1, v10);
          v114 = MagicCookie;
          a2 = v402;
          FigAudioQueueTimingShimSetProperty(*(v10 + 40), 0x61716D63u, v114, time1.duration.value);
          subaq_setupForDecode(v10, v87);
        }

        goto LABEL_163;
      }

      *block = 0;
      LODWORD(lhs.value) = 8;
      if (dword_1EAF16C30)
      {
        v109 = v13;
        LODWORD(duration.value) = 0;
        LOBYTE(type.value) = 0;
        v110 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v111 = duration.value;
        if (os_log_type_enabled(v110, type.value))
        {
          v112 = v111;
        }

        else
        {
          v112 = v111 & 0xFFFFFFFE;
        }

        if (v112)
        {
          *time2 = 136315906;
          *&time2[4] = "subaq_handleFormatChangeIfNecessary";
          *&time2[12] = 2048;
          *&time2[14] = a1;
          *&time2[22] = 2048;
          *&time2[24] = v10;
          *v446 = 2082;
          *&v446[2] = a1 + 800;
          LODWORD(v356) = 42;
          v355 = time2;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v13 = v109;
      }

      if (*(a1 + 72) == 1 && (subaq_doesAudioQueueHaveBuffersToFlush(v10) || *(v10 + 672) >= 1))
      {
        if ((*(a1 + 48) & 2) != 0)
        {
          if (*(a1 + 720))
          {
            v328 = FigCFWeakReferenceHolderCopyReferencedObject();
            if (v328)
            {
              v329 = v328;
              CMSampleBufferGetOutputPresentationTimeStamp(&time1.duration, v13);
              FigAudioQueueOfflineMixerStartDrainingSampleBuffersUntilTime(v329, &time1.duration);
              CFRelease(v329);
            }
          }
        }

        v330 = (*(a1 + 48) & 2) != 0 && *(a1 + 306) != 0;
      }

      else
      {
        v330 = 1;
      }

      v331 = v4;
      if (FigAudioQueueTimingShimGetProperty(*(v10 + 40), 0x61716364u, block, &lhs))
      {
        *block = 0;
      }

      v332 = *(v10 + 640);
      if (v332)
      {
        v333 = *(v10 + 48) == 0;
        if (*(v10 + 48))
        {
          FigAudioQueueTimingShimStop(*(v10 + 40), 1u);
          *(v10 + 48) = 0;
        }

        subaq_setProperty(a1, v10, @"AudioProcessingTap", 0);
      }

      else
      {
        v333 = 1;
      }

      *&time1.duration.value = *v372;
      time1.duration.epoch = *(a1 + 472);
      *time2 = 0;
      v334 = FigSubAudioQueueCreate(a1, v87, *block, &time1, time2);
      v336 = *time2;
      if (v334)
      {
        v340 = 0;
        if (!*time2)
        {
          goto LABEL_713;
        }

        goto LABEL_712;
      }

      if (*(a1 + 16))
      {
        *(*time2 + 594) = 1;
        *(v336 + 600) = 0;
      }

      else
      {
        v337 = *(a1 + 240);
        if (v337)
        {
          time1.duration.epoch = 1;
          time1.duration.value = a1;
          *&time1.duration.timescale = *time2;
          MutableCopy = CFDictionaryCreateMutableCopy(allocator, 0, v337);
          if (CFDictionaryContainsKey(MutableCopy, @"AudioProcessingTap"))
          {
            CFDictionaryGetValue(MutableCopy, @"AudioProcessingTap");
            subaq_setProperty(a1, v336, @"AudioProcessingTap", *(a1 + 744));
            CFDictionaryRemoveValue(MutableCopy, @"AudioProcessingTap");
          }

          CFDictionaryApplyFunction(MutableCopy, subaq_applyOneCachedProperty, &time1);
          if (MutableCopy)
          {
            CFRelease(MutableCopy);
          }
        }

        if (*(a1 + 236))
        {
          FigAudioQueueTimingShimSetParameter(*(v336 + 40), 2u, *(a1 + 232));
        }

        if (*(a1 + 204))
        {
          FigAudioQueueTimingShimSetParameter(*(v336 + 40), 1u, *(a1 + 200));
        }

        if (*(a1 + 212))
        {
          FigAudioQueueTimingShimSetParameter(*(v336 + 40), 5u, *(a1 + 208));
        }

        if (*(a1 + 220))
        {
          FigAudioQueueTimingShimSetParameter(*(v336 + 40), 9u, *(a1 + 216));
        }

        if (*(a1 + 228))
        {
          FigAudioQueueTimingShimSetParameter(*(v336 + 40), 0xEu, *(a1 + 224));
        }

        if (*(a1 + 716))
        {
          FigAudioQueueTimingShimSetParameter(*(v336 + 40), 0x16u, *(a1 + 712));
        }

        v339 = *(a1 + 16);
        *(v336 + 594) = 1;
        v340 = v336;
        *(v336 + 600) = 0;
        if (v339)
        {
          goto LABEL_712;
        }

        CFArrayInsertValueAtIndex(*(a1 + 176), 0, v336);
      }

      v340 = v336;
LABEL_712:
      CFRelease(v336);
LABEL_713:
      if (*block)
      {
        CFRelease(*block);
      }

      if (v340)
      {
        if (v332)
        {
          *(a1 + 752) = 0;
          v341 = *(v340 + 640);
          if (v341)
          {
            v342 = *(v340 + 648);
            if (!v342)
            {
              v342 = *(v340 + 664);
            }

            v343 = *(*(CMBaseObjectGetVTable() + 16) + 8);
            if (v343)
            {
              v343(v341, v342);
            }
          }

          if (!v333)
          {
            FigAudioQueueTimingShimStart(*(v10 + 40), 0, 0);
          }
        }

        v8 = MEMORY[0x1E6960C70];
        if (*(a1 + 640) & 2) != 0 && !*(a1 + 576) && *(a1 + 73) && (*(v10 + 544) & 1) != 0 && (*(v10 + 568))
        {
          v344 = *(v10 + 532);
          *(a1 + 544) = *(v10 + 548);
          *v389 = v344;
          *(a1 + 480) = *v8;
          *(a1 + 496) = v401;
          *&time1.duration.value = *(v10 + 556);
          time1.duration.epoch = *(v10 + 572);
          *(a1 + 592) = CMClockConvertHostTimeToSystemUnits(&time1.duration);
        }

        v4 = v331;
        if (v330)
        {
          v5 = v400;
          if (*(a1 + 73) || (*(a1 + 48) & 2) != 0)
          {
            subaq_startSubAudioQueue(a1);
            subaq_stopAudioQueue(a1, v10, 0);
          }
        }

        else
        {
          *(v340 + 701) = 1;
          subaq_flushAudioQueue(a1, v10);
          *(v10 + 700) = 1;
          v5 = v400;
        }

        v13 = v364;
        if (!*(a1 + 579))
        {
          v11 = 1;
          v22 = 1;
          goto LABEL_144;
        }

        a2 = v402;
        if (*(v10 + 496))
        {
          faq_reset(a1, v335);
        }

        v11 = 1;
LABEL_96:
        v22 = 1;
        goto LABEL_643;
      }

      v4 = v331;
      a2 = v402;
      v5 = v400;
      v8 = MEMORY[0x1E6960C70];
      v13 = v364;
LABEL_163:
      LODWORD(time1.duration.value) = 1065353216;
      v88 = CMGetAttachment(v13, v375, 0);
      if (v88)
      {
        CFNumberGetValue(v88, kCFNumberFloat32Type, &time1);
        v89 = *&time1.duration.value;
      }

      else
      {
        v89 = 1.0;
      }

      if (*(a1 + 788) == 0.0)
      {
        v91 = v89;
      }

      else
      {
        v91 = *(a1 + 788);
      }

      v92 = (*(a1 + 672))(a1, v91);
      v93 = v92;
      if (!v92)
      {
        *(v10 + 594) = 1;
      }

      if (*(v10 + 104) || (!v5 ? (v94 = v92 == 0) : (v94 = 1), !v94 ? (v95 = 0) : (v95 = 1), ((v95 | v16) & 1) == 0))
      {
        v369 = 1;
      }

      else
      {
        if (!*(a1 + 196))
        {
          subaq_getCurrentQueueTime(v10, time2);
          subaq_convertAQTimeToMediaTime(a1, &time1);
          memset(time2, 0, 24);
          CMSampleBufferGetOutputPresentationTimeStamp(time2, v13);
          memset(block, 0, 24);
          CMSampleBufferGetOutputDuration(rhs, v13);
          lhs = *time2;
          CMTimeAdd(block, &lhs, rhs);
          if (v93)
          {
            v345 = v16;
          }

          else
          {
            v345 = 1;
          }

          if (v73 > 0 || v345)
          {
            v346 = FigBufferQueueDequeueIfMatchingAndRetain();
            v7 = 1.0;
            if (v346)
            {
              CFRelease(v346);
            }

            if ((*(a1 + 48) & 2) != 0 || *(a1 + 416) > 0.0)
            {
              v347 = block;
            }

            else
            {
              v347 = time2;
            }

            *v394 = *v347;
            *(a1 + 336) = *(v347 + 2);
            v11 = 1;
            *(v10 + 593) = 1;
          }

          else
          {
            v11 = 0;
            v7 = 1.0;
          }

          goto LABEL_93;
        }

        v369 = 0;
      }

      v360 = v4;
      if (!*(a1 + 120))
      {
        SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(v13, 0);
        if (SampleAttachmentsArray)
        {
          v97 = SampleAttachmentsArray;
          if (CFArrayGetCount(SampleAttachmentsArray) >= 1)
          {
            v98 = CFArrayGetCount(v97);
            v99 = CFArrayGetValueAtIndex(v97, v98 - 1);
            v100 = CFDictionaryGetValue(v99, v370);
            if (v100)
            {
              v101 = v100;
              if (!FigCFEqual())
              {
                if (dword_1EAF16C30)
                {
                  v102 = v13;
                  *block = 0;
                  rhs[0] = 0;
                  v103 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  v104 = *block;
                  if (os_log_type_enabled(v103, rhs[0]))
                  {
                    v105 = v104;
                  }

                  else
                  {
                    v105 = v104 & 0xFFFFFFFE;
                  }

                  if (v105)
                  {
                    BufferCount = CMBufferQueueGetBufferCount(*(a1 + 64));
                    CMSampleBufferGetOutputPresentationTimeStamp(&time1.duration, v102);
                    v107 = CMTimeGetSeconds(&time1.duration);
                    *time2 = 136316418;
                    *&time2[4] = "faq_handleSampleAttachmentsIfPresent_SeamIdentifier";
                    *&time2[12] = 2048;
                    *&time2[14] = a1;
                    *&time2[22] = 2082;
                    *&time2[24] = a1 + 800;
                    *v446 = 2112;
                    *&v446[2] = v101;
                    *&v446[10] = 1024;
                    *&v446[12] = BufferCount;
                    *&v446[16] = 2048;
                    *&v446[18] = v107;
                    LODWORD(v356) = 58;
                    v355 = time2;
                    _os_log_send_and_compose_impl();
                  }

                  fig_log_call_emit_and_clean_up_after_send_and_compose();
                }

                *block = v416;
                *&block[16] = v418;
                lhs.value = 0;
                v115 = FigValidateSampleSeamInSampleBufferQueue(*(a1 + 64), v101, v381, &lhs, block);
                if (v115 <= 4)
                {
                  if (v115 > 1)
                  {
                    if (v115 == 2)
                    {
                      v116 = "No samples are present before transition";
                    }

                    else if (v115 == 3)
                    {
                      v116 = "More than one transitions found";
                    }

                    else
                    {
                      v116 = "Seam samples do not extend till the start of transition";
                    }

                    goto LABEL_249;
                  }

                  if (!v115)
                  {
                    memset(rhs, 0, 24);
                    v117 = *(v10 + 100);
                    *&time1.duration.value = *block;
                    time1.duration.epoch = *&block[16];
                    CMTimeConvertScale(rhs, &time1.duration, v117, kCMTimeRoundingMethod_RoundTowardZero);
                    if (dword_1EAF16C30)
                    {
                      LODWORD(duration.value) = 0;
                      LOBYTE(type.value) = 0;
                      v118 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                      v119 = duration.value;
                      if (os_log_type_enabled(v118, type.value))
                      {
                        v120 = v119;
                      }

                      else
                      {
                        v120 = v119 & 0xFFFFFFFE;
                      }

                      if (v120)
                      {
                        *time2 = 136316418;
                        *&time2[4] = "faq_handleSampleAttachmentsIfPresent_SeamIdentifier";
                        *&time2[12] = 2048;
                        *&time2[14] = a1;
                        *&time2[22] = 2082;
                        *&time2[24] = a1 + 800;
                        *v446 = 2112;
                        *&v446[2] = v101;
                        *&v446[10] = 1024;
                        *&v446[12] = lhs.value;
                        *&v446[16] = 2048;
                        *&v446[18] = *rhs;
                        LODWORD(v356) = 58;
                        v355 = time2;
                        _os_log_send_and_compose_impl();
                      }

                      fig_log_call_emit_and_clean_up_after_send_and_compose();
                    }

                    *(a1 + 112) = lhs.value;
                    *(a1 + 120) = CFRetain(v101);
                    *(a1 + 128) = *block;
                    v348 = lhs.value;
                    *(a1 + 144) = *&block[16];
                    *(a1 + 152) = v348;
                    v349 = *(a1 + 160);
                    *(a1 + 160) = v101;
                    CFRetain(v101);
                    if (v349)
                    {
                      CFRelease(v349);
                    }

                    goto LABEL_256;
                  }

                  v116 = "Samples with matching seam ID not found";
                  if (v115 == 1)
                  {
                    goto LABEL_249;
                  }
                }

                else
                {
                  if (v115 <= 7)
                  {
                    if (v115 == 5)
                    {
                      v116 = "Specified start trim is too long before transition";
                    }

                    else if (v115 == 6)
                    {
                      v116 = "Specified end trim is too long before transition";
                    }

                    else
                    {
                      v116 = "Specified start trim is too long after transition";
                    }

                    goto LABEL_249;
                  }

                  switch(v115)
                  {
                    case 8:
                      v116 = "Specified end trim is too long after transition";
                      goto LABEL_249;
                    case 9:
                      v116 = "Not enough seam samples present after transition";
                      goto LABEL_249;
                    case 10:
                      v116 = "Trim duration is not equal on both sides of transition";
LABEL_249:
                      if (dword_1EAF16C30)
                      {
                        *rhs = 0;
                        LOBYTE(duration.value) = 0;
                        v121 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                        v122 = *rhs;
                        if (os_log_type_enabled(v121, duration.value))
                        {
                          v123 = v122;
                        }

                        else
                        {
                          v123 = v122 & 0xFFFFFFFE;
                        }

                        if (v123)
                        {
                          *time2 = 136316162;
                          *&time2[4] = "faq_handleSampleAttachmentsIfPresent_SeamIdentifier";
                          *&time2[12] = 2048;
                          *&time2[14] = a1;
                          *&time2[22] = 2082;
                          *&time2[24] = a1 + 800;
                          *v446 = 2112;
                          *&v446[2] = v101;
                          *&v446[10] = 2080;
                          *&v446[12] = v116;
                          LODWORD(v356) = 52;
                          v355 = time2;
                          _os_log_send_and_compose_impl();
                        }

                        fig_log_call_emit_and_clean_up_after_send_and_compose();
                      }

LABEL_256:
                      v13 = v364;
                      goto LABEL_257;
                  }
                }

                v116 = "Unknown";
                goto LABEL_249;
              }
            }
          }
        }
      }

LABEL_257:
      v432 = 0;
      values = v13;
      v430 = 0;
      theArray = 0;
      v124 = *(v10 + 592);
      v125 = *(a1 + 120);
      if (!v125)
      {
        CountOfSequentialSamplesWithSeamIdentifier = 0;
        v126 = v13;
        if (!v13)
        {
          goto LABEL_269;
        }

        goto LABEL_261;
      }

      CountOfSequentialSamplesWithSeamIdentifier = FigGetCountOfSequentialSamplesWithSeamIdentifier(v13, v125, 0, 0);
      if (CountOfSequentialSamplesWithSeamIdentifier <= *(a1 + 112))
      {
        if (FigCreateReplacementSBufByOmittingTrailingSeamSamples(v13, *(a1 + 120), &v432))
        {
          v126 = v432;
          values = v432;
          if (!v432)
          {
            goto LABEL_269;
          }

          goto LABEL_261;
        }

        v319 = v13;
        *block = 0;
        rhs[0] = 0;
        v325 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v326 = *block;
        if (os_log_type_enabled(v325, rhs[0]))
        {
          v327 = v326;
        }

        else
        {
          v327 = v326 & 0xFFFFFFFE;
        }

        if (!v327)
        {
          goto LABEL_668;
        }

        *time2 = 136315906;
        *&time2[4] = "subaq_splitSBufIntoEndTrimmablePiecesAndEnqueueThemAllIntoAudioQueue";
        *&time2[12] = 2048;
        *&time2[14] = a1;
        *&time2[22] = 2048;
        *&time2[24] = v10;
        *v446 = 2082;
        *&v446[2] = a1 + 800;
        LODWORD(v356) = 42;
        v355 = time2;
        goto LABEL_667;
      }

      v319 = v13;
      *block = 0;
      rhs[0] = 0;
      v320 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v321 = *block;
      if (os_log_type_enabled(v320, rhs[0]))
      {
        v322 = v321;
      }

      else
      {
        v322 = v321 & 0xFFFFFFFE;
      }

      if (v322)
      {
        v323 = CountOfSequentialSamplesWithSeamIdentifier - *(a1 + 112);
        v324 = *(a1 + 120);
        *time2 = 136316418;
        *&time2[4] = "subaq_splitSBufIntoEndTrimmablePiecesAndEnqueueThemAllIntoAudioQueue";
        *&time2[12] = 2048;
        *&time2[14] = a1;
        *&time2[22] = 2048;
        *&time2[24] = v10;
        *v446 = 2082;
        *&v446[2] = a1 + 800;
        *&v446[10] = 1024;
        *&v446[12] = v323;
        *&v446[16] = 2112;
        *&v446[18] = v324;
        LODWORD(v356) = 58;
        v355 = time2;
LABEL_667:
        _os_log_send_and_compose_impl();
      }

LABEL_668:
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      faq_clearSeamHandlingState(a1);
      v126 = values;
      v13 = v319;
      if (!values)
      {
LABEL_269:
        v128 = 0;
        goto LABEL_282;
      }

LABEL_261:
      v127 = *(v10 + 592);
      if (*(v10 + 592))
      {
        v128 = AudioSampleBufferSplitterCreateSplitSampleBufferArray(*(a1 + 168), v126, &v430, &theArray);
        if (!v128 && theArray && CFArrayGetCount(theArray))
        {
          v132 = 0;
        }

        else
        {
          *block = 0;
          rhs[0] = 0;
          v129 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v130 = *block;
          if (os_log_type_enabled(v129, rhs[0]))
          {
            v131 = v130;
          }

          else
          {
            v131 = v130 & 0xFFFFFFFE;
          }

          if (v131)
          {
            *time2 = 136315906;
            *&time2[4] = "subaq_splitSBufIntoEndTrimmablePiecesAndEnqueueThemAllIntoAudioQueue";
            *&time2[12] = 2048;
            *&time2[14] = a1;
            *&time2[22] = 2048;
            *&time2[24] = v10;
            *v446 = 2082;
            *&v446[2] = a1 + 800;
            LODWORD(v356) = 42;
            v355 = time2;
            _os_log_send_and_compose_impl();
          }

          v132 = 1;
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v133 = v430;
        if (v430)
        {
          *(v10 + 592) = 0;
          v127 = 1;
        }

        else
        {
          v127 = 0;
        }

        if ((v133 & 2) != 0)
        {
          *(v10 + 592) = 0;
LABEL_285:
          if (theArray)
          {
            CFRelease(theArray);
          }

          v134 = CFArrayCreate(allocator, &values, 1, MEMORY[0x1E695E9C0]);
          v128 = 0;
          theArray = v134;
          if (!v134)
          {
LABEL_346:
            v365 = 0;
            v393 = 0;
            count = 0;
            goto LABEL_347;
          }

          goto LABEL_288;
        }
      }

      else
      {
        v132 = 0;
        v128 = 0;
      }

      if (v127 || !v124 || v132)
      {
        goto LABEL_285;
      }

LABEL_282:
      v134 = theArray;
      if (!theArray)
      {
        goto LABEL_346;
      }

LABEL_288:
      if (CFArrayGetCount(v134) < 1)
      {
        goto LABEL_346;
      }

      v135 = theArray;
      if (theArray)
      {
        v135 = CFArrayGetCount(theArray);
      }

      count = v135;
      v393 = malloc_type_calloc(v135, 8uLL, 0x2004093837F09uLL);
      v365 = malloc_type_calloc(count, 1uLL, 0x100004077774924uLL);
      if (count < 1)
      {
        goto LABEL_347;
      }

      v136 = 0;
      v137 = v10 + 344;
      while (1)
      {
        v138 = CFArrayGetValueAtIndex(theArray, v136);
        *rhs = 0;
        lhs.value = 0;
        duration.value = 0;
        type.value = 0;
        if (!*(a1 + 16))
        {
          break;
        }

LABEL_341:
        if (++v136 == count)
        {
          v128 = 0;
          goto LABEL_347;
        }
      }

      v139 = v138;
      if (!CMSampleBufferDataIsReady(v138))
      {
        v128 = -12947;
        goto LABEL_769;
      }

      DataBuffer = CMSampleBufferGetDataBuffer(v139);
      DataPointer = CMBlockBufferGetDataPointer(DataBuffer, 0, &type, &duration, &lhs);
      if (DataPointer)
      {
        v353 = DataPointer;
        faq_enqueueSourceData_cold_1();
        v354 = 0;
        goto LABEL_766;
      }

      if (!lhs.value || (v142 = duration.value) == 0)
      {
        faq_enqueueSourceData_cold_5();
        v5 = v400;
        v8 = MEMORY[0x1E6960C70];
        v13 = v364;
        goto LABEL_341;
      }

      v143 = type.value;
      FigSimpleMutexLock();
      v144 = 0;
      while (1)
      {
        v145 = v10 + v144;
        if (!*(v10 + v144 + 160))
        {
          break;
        }

        v144 += 24;
        if (v144 == 192)
        {
          FigSimpleMutexUnlock();
          v275 = 0;
          v5 = v400;
          v7 = 1.0;
          goto LABEL_557;
        }
      }

      *(v145 + 160) = 1;
      FigSimpleMutexUnlock();
      *(v145 + 144) = CFRetain(v139);
      v146 = (v145 + 144);
      v147 = CMGetAttachment(v139, v371, 0);
      v146[1] = v147;
      if (v147)
      {
        CFRetain(v147);
      }

      *block = MEMORY[0x1E69E9820];
      *&block[8] = 0x40000000;
      *&block[16] = __subaq_acquireAndPrepareAQBuffer_block_invoke;
      *&block[24] = &__block_descriptor_tmp_329;
      *&v438 = v10;
      if (subaq_acquireAndPrepareAQBuffer_sAudioQueueCheckPIDOnce != -1)
      {
        dispatch_once(&subaq_acquireAndPrepareAQBuffer_sAudioQueueCheckPIDOnce, block);
      }

      if (v143 == v142 && subaq_acquireAndPrepareAQBuffer_sAudioQueueCanAllocateBufferWithMemory)
      {
        BufferWithMemory = FigAudioQueueTimingShimAllocateBufferWithMemory(*(v10 + 40));
        if (BufferWithMemory)
        {
          v353 = BufferWithMemory;
          faq_enqueueSourceData_cold_4();
          v354 = v10 + v144 + 144;
LABEL_766:
          subaq_returnAQBufferInfoPtr(v10, v354);
          if (v353 == -12946)
          {
            valueb = 0;
            hostTime = 0;
            v412 = 0;
            v11 = 0;
            v368 = 0;
            v5 = v400;
            v6 = 1.0;
            v7 = 1.0;
            v8 = MEMORY[0x1E6960C70];
            v13 = v364;
            goto LABEL_558;
          }

          v128 = -12947;
          v5 = v400;
          v6 = 1.0;
          v8 = MEMORY[0x1E6960C70];
LABEL_769:
          v13 = v364;
LABEL_347:
          v161 = FigBufferQueueDequeueIfMatchingAndRetain();
          if (v161)
          {
            CFRelease(v161);
          }

          v11 = 1;
          v162 = count;
          if (count < 1 || v128)
          {
            valueb = 0;
            hostTime = 0;
            v412 = 0;
            v368 = 0;
            v7 = 1.0;
            v166 = v393;
            goto LABEL_559;
          }

          hostTime = 0;
          v163 = 0;
          v164 = 0;
          v368 = 0;
          v410 = (v10 + 408);
          v362 = (v10 + 456);
          v363 = (v10 + 432);
          v376 = (v10 + 484);
          v366 = (v10 + 556);
          v367 = (v10 + 532);
          v165 = 0.0;
          v166 = v393;
          while (2)
          {
            v411 = v163;
            v167 = v166[v164];
            v168 = **(v167 + 24);
            v455 = *MEMORY[0x1E6960C98];
            timescale = *(MEMORY[0x1E6960C98] + 8);
            v438 = 0u;
            v439 = 0u;
            memset(block, 0, sizeof(block));
            v435 = 0u;
            v436 = 0u;
            memset(rhs, 0, sizeof(rhs));
            v169 = *(v10 + 594);
            if (*(v10 + 594))
            {
              v170 = *(v10 + 64);
              if (*(v170 + 20))
              {
                v171 = 0;
              }

              else
              {
                v171 = *(v170 + 8) == 1987015266;
              }

              *(v10 + 600) = v171;
            }

            packetDescriptionsSizeOut.value = 0;
            packetDescriptionsPointerOut = 0;
            memset(time2, 0, 24);
            v407 = v167;
            if (faq_getFigTimeAttachment(v168, v397, time2))
            {
              if (*(v10 + 600) < 1)
              {
                v172 = 0;
              }

              else
              {
                v172 = 0;
                do
                {
                  memset(&time1, 0, sizeof(time1));
                  if (CMSampleBufferGetSampleTimingInfo(v168, v172, &time1))
                  {
                    break;
                  }

                  lhs = *time2;
                  duration = time1.duration;
                  if (CMTimeCompare(&lhs, &duration) < 0)
                  {
                    *(v10 + 600) = 0;
                    break;
                  }

                  lhs = *time2;
                  duration = time1.duration;
                  CMTimeSubtract(time2, &lhs, &duration);
                  v173 = *(v10 + 600);
                  ++v172;
                  *(v10 + 600) = v173 - 1;
                }

                while (v173 > 1);
              }

              v174 = *(v10 + 100);
              *&time1.duration.value = *time2;
              time1.duration.epoch = *&time2[16];
              CMTimeConvertScale(&lhs, &time1.duration, v174, kCMTimeRoundingMethod_RoundTowardZero);
              v413 = lhs.value;
            }

            else
            {
              v413 = 0;
              v172 = 0;
            }

            memset(time2, 0, 24);
            memset(&duration, 0, sizeof(duration));
            if (faq_getFigTimeAttachment(v168, v396, time2))
            {
              v175 = *(v10 + 100);
              *&time1.duration.value = *time2;
              time1.duration.epoch = *&time2[16];
              CMTimeConvertScale(&type, &time1.duration, v175, kCMTimeRoundingMethod_RoundTowardZero);
              v406 = type.value;
            }

            else
            {
              v406 = 0;
            }

            if (*(v10 + 592) && (v176 = *(*(v10 + 64) + 20), v176) && (memset(&end, 0, sizeof(end)), CMTimeMake(&end, v176, *(v10 + 100)), v177 = *(MEMORY[0x1E6960CF0] + 48), *&time1.presentationTimeStamp.timescale = *(MEMORY[0x1E6960CF0] + 32), *&time1.decodeTimeStamp.value = v177, time1.decodeTimeStamp.epoch = *(MEMORY[0x1E6960CF0] + 64), v178 = *MEMORY[0x1E6960CF0], *&time1.duration.epoch = *(MEMORY[0x1E6960CF0] + 16), *&time1.duration.value = v178, NumSamples = CMSampleBufferGetNumSamples(v168), !CMSampleBufferGetSampleTimingInfo(v168, NumSamples - 1, &time1)) && (time1.duration.flags & 0x1D) == 1 && (v457 = time1.duration, time = end, CMTimeCompare(&v457, &time) < 0))
            {
              v457 = end;
              time = time1.duration;
              CMTimeSubtract(&duration, &v457, &time);
              v261 = *(v10 + 100);
              time = duration;
              CMTimeConvertScale(&v457, &time, v261, kCMTimeRoundingMethod_RoundTowardZero);
              v404 = v457.value;
            }

            else
            {
              v404 = 0;
            }

            if (CMSampleBufferGetAudioStreamPacketDescriptionsPtr(v168, &packetDescriptionsPointerOut, &packetDescriptionsSizeOut))
            {
              v408 = 0;
              LODWORD(v405) = 0;
              packetDescriptionsPointerOut = 0;
              goto LABEL_379;
            }

            v181 = packetDescriptionsSizeOut.value;
            v405 = packetDescriptionsSizeOut.value >> 4;
            if (v172 >= 1 && (v182 = CFGetAllocator(v10), (v183 = MEMORY[0x19A8CC720](v182, v181 & 0xFFFFFFFF0, 2972345053, 0)) != 0))
            {
              v184 = v183;
              memcpy(v183, packetDescriptionsPointerOut, v181 & 0xFFFFFFFF0);
              v185 = (v172 + 3) & 0xFFFFFFFFFFFFFFFCLL;
              v186 = vdupq_n_s64(v172 - 1);
              p_mVariableFramesInPacket = &v184[2].mVariableFramesInPacket;
              v188 = xmmword_196E73090;
              v189 = xmmword_196E73080;
              v5 = v400;
              v180 = v10 + 408;
              do
              {
                v190 = vmovn_s64(vcgeq_u64(v186, v188));
                if (vuzp1_s16(v190, *v186.i8).u8[0])
                {
                  *(p_mVariableFramesInPacket - 8) = 0;
                }

                if (vuzp1_s16(v190, *&v186).i8[2])
                {
                  *(p_mVariableFramesInPacket - 4) = 0;
                }

                if (vuzp1_s16(*&v186, vmovn_s64(vcgeq_u64(v186, *&v189))).i32[1])
                {
                  *p_mVariableFramesInPacket = 0;
                  p_mVariableFramesInPacket[4] = 0;
                }

                v189 = vaddq_s64(v189, v427);
                v188 = vaddq_s64(v188, v427);
                p_mVariableFramesInPacket += 16;
                v185 -= 4;
              }

              while (v185);
              packetDescriptionsPointerOut = v184;
              v408 = 1;
            }

            else
            {
              v408 = 0;
              v5 = v400;
LABEL_379:
              v180 = v10 + 408;
            }

            v191 = *(a1 + 160);
            if (v191 && !*(a1 + 112))
            {
              v192 = FigGetCountOfSequentialSamplesWithSeamIdentifier(v168, v191, 1, 0);
              if (v192)
              {
                v413 = 0;
                v193 = *(a1 + 152);
                if (v192 >= v193)
                {
                  v194 = *(a1 + 152);
                }

                else
                {
                  v194 = v192;
                }

                *(a1 + 152) = v193 - v194;
                if (v193 > v192)
                {
                  goto LABEL_398;
                }
              }

              else
              {
                LODWORD(lhs.value) = 0;
                LOBYTE(duration.value) = 0;
                v265 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v266 = lhs.value;
                if (os_log_type_enabled(v265, duration.value))
                {
                  v267 = v266;
                }

                else
                {
                  v267 = v266 & 0xFFFFFFFE;
                }

                if (v267)
                {
                  v268 = *(a1 + 152);
                  v269 = *(a1 + 160);
                  *time2 = 136316162;
                  *&time2[4] = "subaq_enqueueAQBufferIntoAudioQueue";
                  *&time2[12] = 2048;
                  *&time2[14] = a1;
                  *&time2[22] = 2048;
                  *&time2[24] = v10;
                  *v446 = 1024;
                  *&v446[2] = v268;
                  *&v446[6] = 2112;
                  *&v446[8] = v269;
                  LODWORD(v356) = 48;
                  v355 = time2;
                  _os_log_send_and_compose_impl();
                }

                fig_log_call_emit_and_clean_up_after_send_and_compose();
                v180 = v10 + 408;
              }

              faq_clearSeamHandlingState(a1);
            }

LABEL_398:
            CMSampleBufferGetOutputPresentationTimeStamp(time2, v168);
            CMSampleBufferGetOutputDuration(&lhs, v168);
            CMTimeRangeMake(&time1, time2, &lhs);
            v455 = time1.duration.value;
            cfa = time1.duration.flags;
            timescale = time1.duration.timescale;
            v415 = time1.duration.epoch;
            v419 = time1.presentationTimeStamp.value;
            v195 = *&time1.presentationTimeStamp.timescale;
            v417 = time1.presentationTimeStamp.epoch;
            if (*(v10 + 594))
            {
              memset(&time1, 0, 24);
              *time2 = v455;
              *&time2[8] = timescale;
              *&time2[12] = cfa;
              *&time2[16] = v415;
              subaq_convertMediaTimeToAQTime(a1, &time1);
              memset(block, 0, sizeof(block));
              v438 = 0u;
              v439 = 0u;
              v247 = *(v10 + 100);
              *time2 = *&time1.duration.value;
              *&time2[16] = time1.duration.epoch;
              CMTimeConvertScale(&packetDescriptionsSizeOut, time2, v247, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
              v196 = 0;
              *block = packetDescriptionsSizeOut.value;
              DWORD2(v439) = 1;
              *(v10 + 594) = 0;
              v197 = block;
            }

            else
            {
              if (*(a1 + 16))
              {
                goto LABEL_404;
              }

              if ((*(v10 + 420) & 1) == 0)
              {
                goto LABEL_401;
              }

              if (CMGetAttachment(v168, v391, 0) == v390 || *(v10 + 593))
              {
LABEL_404:
                v457.value = v455;
                v457.timescale = timescale;
                if (v369)
                {
                  time1.duration.value = v455;
                  time1.duration.timescale = timescale;
                  v198 = cfa;
                  time1.duration.flags = cfa;
                  v199 = v415;
                  time1.duration.epoch = v415;
                  *time2 = *v180;
                  *&time2[16] = *(v180 + 16);
                  CMTimeCompare(&time1.duration, time2);
                  goto LABEL_408;
                }

                v198 = *(a1 + 332);
LABEL_407:
                v457.value = *v394;
                v457.timescale = *(a1 + 328);
                v199 = *(a1 + 336);
LABEL_408:
                time1.duration.value = v457.value;
                time1.duration.timescale = v457.timescale;
                time1.duration.flags = v198;
                time1.duration.epoch = v199;
                *time2 = *v180;
                *&time2[16] = *(v180 + 16);
                if (CMTimeCompare(&time1.duration, time2))
                {
                  memset(&lhs, 0, sizeof(lhs));
                  CMTimeMake(&lhs, 2, *(v10 + 100));
                  memset(&duration, 0, sizeof(duration));
                  *time2 = v457.value;
                  *&time2[8] = v457.timescale;
                  *&time2[12] = v198;
                  *&time2[16] = v199;
                  type = *v180;
                  CMTimeSubtract(&time1.duration, time2, &type);
                  CMTimeAbsoluteValue(&duration, &time1.duration);
                  time1.duration = lhs;
                  *time2 = duration;
                  v200 = CMTimeCompare(&time1.duration, time2);
                  v197 = 0;
                  if ((v200 & 0x80000000) != 0)
                  {
                    memset(&type, 0, sizeof(type));
                    *time2 = *v363;
                    *&time2[16] = *(v10 + 448);
                    *&end.value = *v362;
                    end.epoch = *(v10 + 472);
                    CMTimeAdd(&time1.duration, time2, &end);
                    *time2 = duration;
                    CMTimeAdd(&type, &time1.duration, time2);
                    if (dword_1EAF16C30)
                    {
                      LODWORD(end.value) = 0;
                      LOBYTE(time.value) = 0;
                      v262 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                      v263 = end.value;
                      HIDWORD(v358) = LOBYTE(time.value);
                      if (os_log_type_enabled(v262, time.value))
                      {
                        v264 = v263;
                      }

                      else
                      {
                        v264 = v263 & 0xFFFFFFFE;
                      }

                      if (v264)
                      {
                        v270 = duration.value;
                        HIDWORD(v357) = duration.timescale;
                        LODWORD(v358) = v264;
                        time1.duration = duration;
                        v271 = CMTimeGetSeconds(&time1.duration);
                        time1.duration.value = v457.value;
                        time1.duration.timescale = v457.timescale;
                        time1.duration.flags = v198;
                        time1.duration.epoch = v199;
                        v272 = CMTimeGetSeconds(&time1.duration);
                        *&time1.duration.value = *v410;
                        time1.duration.epoch = *(v10 + 424);
                        v273 = CMTimeGetSeconds(&time1.duration);
                        *time2 = 136317186;
                        *&time2[4] = "subaq_enqueueAQBufferIntoAudioQueue";
                        *&time2[12] = 2048;
                        *&time2[14] = a1;
                        *&time2[22] = 2048;
                        *&time2[24] = v10;
                        *v446 = 2082;
                        *&v446[2] = a1 + 800;
                        *&v446[10] = 2048;
                        *&v446[12] = v270;
                        *&v446[20] = 1024;
                        *&v446[22] = HIDWORD(v357);
                        *&v446[26] = 2048;
                        *&v446[28] = v271;
                        *&v446[36] = 2048;
                        *&v446[38] = v272;
                        v447 = 2048;
                        v448 = v273;
                        LODWORD(v356) = 88;
                        v355 = time2;
                        _os_log_send_and_compose_impl();
                      }

                      fig_log_call_emit_and_clean_up_after_send_and_compose();
                    }

                    subaq_flushAudioQueue(a1, v10);
                    v438 = 0u;
                    v439 = 0u;
                    memset(block, 0, sizeof(block));
                    v274 = *(v10 + 100);
                    time1.duration = type;
                    CMTimeConvertScale(&packetDescriptionsSizeOut, &time1.duration, v274, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
                    *block = packetDescriptionsSizeOut.value;
                    DWORD2(v439) = 1;
                    v197 = block;
                  }

                  v196 = v200 >> 31;
                }

                else
                {
                  v196 = 0;
                  v197 = 0;
                }

                v5 = v400;
                if (cfa)
                {
                  v201 = 0;
                  if ((v195 & 0x100000000) != 0 && !v417 && (v419 & 0x8000000000000000) == 0)
                  {
                    time1.duration.value = v419;
                    *&time1.duration.timescale = v195;
                    time1.duration.epoch = 0;
                    *time2 = v416;
                    *&time2[16] = v418;
                    v201 = CMTimeCompare(&time1.duration, time2) == 0;
                  }
                }

                else
                {
                  v201 = 0;
                }

                *(v10 + 593) = v201;
              }

              else if (v369)
              {
LABEL_401:
                v196 = 0;
                v197 = 0;
              }

              else
              {
                v198 = *(a1 + 332);
                if (v198)
                {
                  goto LABEL_407;
                }

                v196 = 0;
                v197 = 0;
                v5 = v400;
              }
            }

            if ((cfa & 1) != 0 && (v195 & 0x100000000) != 0 && !v417 && (v419 & 0x8000000000000000) == 0)
            {
              time1.duration.value = v419;
              *&time1.duration.timescale = v195;
              time1.duration.epoch = 0;
              *time2 = v416;
              *&time2[16] = v418;
              v204 = v169 | CMTimeCompare(&time1.duration, time2) ? 1 : v196;
              if (v204 != 1)
              {
                v205 = 0;
                goto LABEL_442;
              }
            }

            if (!*(a1 + 16))
            {
              if (*(v10 + 580) == v91)
              {
                v202 = 1;
                goto LABEL_423;
              }

              memset(&time1, 0, 24);
              if (v197)
              {
                CMTimeMake(&time1.duration, *v197, *(v10 + 100));
              }

              else
              {
                v248 = *(a1 + 416);
                v249 = 1.0;
                if (v248 == 0.0)
                {
                  v250 = 1.0;
                }

                else
                {
                  v250 = v248;
                }

                if (*(a1 + 236))
                {
                  v251 = *(a1 + 232);
                  v94 = v251 == 0.0;
                  v249 = v251;
                  if (v94)
                  {
                    v249 = v6;
                  }
                }

                *time2 = v455;
                *&time2[8] = timescale;
                *&time2[12] = cfa;
                *&time2[16] = v415;
                faqTimelineWrangler_convertMediaTimeToAQTime(v378, time2, &time1, v250 / v249);
              }

              *time2 = *&time1.duration.value;
              *&time2[16] = time1.duration.epoch;
              if (!subaq_schedulePlayRate2ValueForTime(a1, v10, time2, v91))
              {
                v202 = *(a1 + 16) == 0;
                goto LABEL_423;
              }

LABEL_473:
              v225 = 0;
LABEL_521:
              v8 = MEMORY[0x1E6960C70];
              goto LABEL_522;
            }

            v202 = 0;
LABEL_423:
            *(v10 + 580) = v91;
            memset(&lhs, 0, sizeof(lhs));
            memset(&duration, 0, sizeof(duration));
            memset(&type, 0, sizeof(type));
            memset(&time1, 0, 48);
            if (v202)
            {
              CMSampleBufferGetOutputPresentationTimeStamp(&lhs, v168);
              CMSampleBufferGetOutputDuration(time2, v168);
              end = lhs;
              CMTimeAdd(&duration, &end, time2);
              if (v197)
              {
                memset(time2, 0, 24);
                CMTimeMake(&end, 3, 10);
                v457 = lhs;
                CMTimeSubtract(time2, &v457, &end);
                if (*(v10 + 496))
                {
                  *&end.value = *v376;
                  v203 = *(v10 + 500);
                }

                else
                {
                  *&end.value = v416;
                  v203 = v418;
                }

                end.epoch = v203;
                v457 = *time2;
                *&time.value = *&end.value;
                time.epoch = v203;
                CMTimeMaximum(&type, &v457, &time);
              }

              else
              {
                type = lhs;
              }

              *time2 = type;
              end = duration;
              CMTimeRangeFromTimeToTime(&time1, time2, &end);
              v206 = *(a1 + 656);
              *time2 = *&time1.duration.value;
              *&time2[16] = *&time1.duration.epoch;
              *v446 = *&time1.presentationTimeStamp.timescale;
              subaq_scheduleVolumeCurvesForMediaTimeRange(a1, v10, v206, time2, 1, v197 != 0);
              v207 = *(a1 + 664);
              *time2 = *&time1.duration.value;
              *&time2[16] = *&time1.duration.epoch;
              *v446 = *&time1.presentationTimeStamp.timescale;
              subaq_scheduleVolumeCurvesForMediaTimeRange(a1, v10, v207, time2, 0, v197 != 0);
              subaq_scheduleCinematicForMediaTimeRange(a1, v10, *(a1 + 656), v208, v209, v210, v211, v212, v355, v356, v357, v358, SBYTE2(v358), BYTE3(v358), HIDWORD(v358));
              v213 = *(a1 + 656);
              *time2 = *&time1.duration.value;
              *&time2[16] = *&time1.duration.epoch;
              *v446 = *&time1.presentationTimeStamp.timescale;
              subaq_scheduleAudioProcessingUnitForMediaTimeRange(a1, v10, v213, time2, 0, v197 != 0, 0);
              v214 = *(a1 + 664);
              *time2 = *&time1.duration.value;
              *&time2[16] = *&time1.duration.epoch;
              *v446 = *&time1.presentationTimeStamp.timescale;
              subaq_scheduleAudioProcessingUnitForMediaTimeRange(a1, v10, v214, time2, 1, v197 != 0, 0);
            }

            if ((cfa & 1) == 0)
            {
              v215 = 0;
              goto LABEL_457;
            }

            v205 = (v195 & 0x100000000) == 0;
LABEL_442:
            v215 = 0;
            if (v205 || v417 || v419 < 0 || ((time1.duration.value = v419, *&time1.duration.timescale = v195, time1.duration.epoch = 0, *time2 = v416, *&time2[16] = v418, !CMTimeCompare(&time1.duration, time2)) ? (v215 = (*(v10 + 420) & 1) == 0) : (v215 = 0), (time1.duration.value = v419, *&time1.duration.timescale = v195, time1.duration.epoch = 0, *time2 = v416, *&time2[16] = v418, CMTimeCompare(&time1.duration, time2)) ? (v216 = 1) : (v216 = v196), (v216 & 1) != 0 || v215))
            {
LABEL_457:
              if ((*(a1 + 48) & 2) != 0 || *(a1 + 416) >= 0.0)
              {
                time1.duration.value = v455;
                time1.duration.timescale = timescale;
                time1.duration.flags = cfa;
                time1.duration.epoch = v415;
                time1.presentationTimeStamp.value = v419;
                *&time1.presentationTimeStamp.timescale = v195;
                time1.presentationTimeStamp.epoch = v417;
                CMTimeRangeGetEnd(time2, &time1);
                v217 = v10 + 408;
                *v410 = *time2;
                v218 = *&time2[16];
              }

              else
              {
                *time2 = v455;
                *&time2[8] = timescale;
                *&time2[12] = cfa;
                *&time2[16] = v415;
                lhs.value = v419;
                *&lhs.timescale = v195;
                lhs.epoch = v417;
                CMTimeSubtract(&time1.duration, time2, &lhs);
                v217 = v10 + 408;
                *v410 = *&time1.duration.value;
                v218 = time1.duration.epoch;
              }

              *(v217 + 16) = v218;
              if (dword_1EAF16C30)
              {
                v219 = v215;
              }

              else
              {
                v219 = 0;
              }

              if (v219)
              {
                LODWORD(lhs.value) = 0;
                LOBYTE(duration.value) = 0;
                v220 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v221 = lhs.value;
                if (os_log_type_enabled(v220, duration.value))
                {
                  v222 = v221;
                }

                else
                {
                  v222 = v221 & 0xFFFFFFFE;
                }

                if (v222)
                {
                  *&time1.duration.value = *v410;
                  time1.duration.epoch = *(v10 + 424);
                  v223 = CMTimeGetSeconds(&time1.duration);
                  *time2 = 136316162;
                  *&time2[4] = "subaq_enqueueAQBufferIntoAudioQueue";
                  *&time2[12] = 2048;
                  *&time2[14] = a1;
                  *&time2[22] = 2048;
                  *&time2[24] = v10;
                  *v446 = 2082;
                  *&v446[2] = a1 + 800;
                  *&v446[10] = 2048;
                  *&v446[12] = v223;
                  _os_log_send_and_compose_impl();
                }

                fig_log_call_emit_and_clean_up_after_send_and_compose();
                v5 = v400;
              }
            }

            CMSampleBufferGetOutputDuration(&time1.duration, v168);
            CMTimeConvertScale(&duration, &time1.duration, *(v10 + 100), kCMTimeRoundingMethod_RoundHalfAwayFromZero);
            v224 = duration.value;
            *(a1 + 736) += CMSampleBufferGetNumSamples(v168);
            *(a1 + 306) = 0;
            if (FigAudioQueueTimingShimEnqueueBufferWithParameters(*(v10 + 40), v407, v405, packetDescriptionsPointerOut, v413, v404 + v406, 0, 0, v197, rhs))
            {
              FigSignalErrorAtGM();
              v11 = 0;
              goto LABEL_473;
            }

            *(a1 + 578) = 0;
            v226 = *rhs;
            v227 = BYTE8(v436);
            v228 = *(MEMORY[0x1E6960C98] + 16);
            *&time1.duration.value = *MEMORY[0x1E6960C98];
            *&time1.duration.epoch = v228;
            *&time1.presentationTimeStamp.timescale = *(MEMORY[0x1E6960C98] + 32);
            v8 = MEMORY[0x1E6960C70];
            type.value = *MEMORY[0x1E6960C70];
            type.timescale = *(MEMORY[0x1E6960C70] + 8);
            if (*(a1 + 16))
            {
              goto LABEL_484;
            }

            CMSampleBufferGetOutputPresentationTimeStamp(time2, v168);
            CMSampleBufferGetOutputDuration(&lhs, v168);
            CMTimeRangeMake(&time1, time2, &lhs);
            if ((*(a1 + 48) & 2) != 0)
            {
              *time2 = time1.presentationTimeStamp;
              *&lhs.value = v416;
              lhs.epoch = v418;
              if (!CMTimeCompare(time2, &lhs) && !v197)
              {
                v229 = v382;
                v230 = v401;
                if (*(v10 + 444))
                {
                  if (v382)
                  {
                    goto LABEL_483;
                  }

                  goto LABEL_484;
                }
              }

              lhs = time1.duration;
              subaq_convertMediaTimeToAQTime(a1, time2);
            }

            else
            {
              if ((v227 & 1) == 0)
              {
                type.value = *MEMORY[0x1E6960CC0];
                type.timescale = *(MEMORY[0x1E6960CC0] + 8);
                v229 = v377;
                v230 = v418;
                if ((v377 & 1) == 0)
                {
                  goto LABEL_484;
                }

LABEL_483:
                *v363 = type.value;
                *(v10 + 440) = type.timescale;
                *(v10 + 444) = v229;
                *(v10 + 448) = v230;
                *v362 = *&time1.presentationTimeStamp.value;
                *(v10 + 472) = time1.presentationTimeStamp.epoch;
LABEL_484:
                time1.duration.value = v455;
                time1.duration.timescale = timescale;
                time1.duration.flags = cfa;
                time1.duration.epoch = v415;
                time1.presentationTimeStamp.value = v419;
                *&time1.presentationTimeStamp.timescale = v195;
                time1.presentationTimeStamp.epoch = v417;
                CMTimeRangeGetEnd(time2, &time1);
                *v376 = *time2;
                *(v10 + 500) = *&time2[16];
                if ((BYTE8(v436) & 2) != 0)
                {
                  v233 = 1.0;
                  if (*(a1 + 236))
                  {
                    v234 = *(a1 + 232);
                    if (v234 != 0.0)
                    {
                      v233 = v234;
                    }
                  }

                  v235 = fabs(v233 * *(v10 + 580));
                  memset(time2, 0, 24);
                  time1.duration.value = v419;
                  *&time1.duration.timescale = v195;
                  time1.duration.epoch = v417;
                  CMTimeMultiplyByFloat64(time2, &time1.duration, v6 / v235);
                  time1.duration.value = v455;
                  time1.duration.timescale = timescale;
                  time1.duration.flags = cfa;
                  time1.duration.epoch = v415;
                  time1.presentationTimeStamp.value = v419;
                  *&time1.presentationTimeStamp.timescale = v195;
                  time1.presentationTimeStamp.epoch = v417;
                  CMTimeRangeGetEnd(&lhs, &time1);
                  *v367 = *&lhs.value;
                  *(v10 + 548) = lhs.epoch;
                  CMClockMakeHostTimeFromSystemUnits(&lhs, *&rhs[8]);
                  type = *time2;
                  CMTimeAdd(&time1.duration, &lhs, &type);
                  *v366 = *&time1.duration.value;
                  *(v10 + 572) = time1.duration.epoch;
                  v232 = v401;
                  v8 = MEMORY[0x1E6960C70];
                }

                else
                {
                  v231 = *v8;
                  *v367 = *v8;
                  v232 = v401;
                  *(v10 + 548) = v401;
                  *v366 = v231;
                  *(v10 + 572) = v401;
                }

                *v394 = *v8;
                *(a1 + 336) = v232;
                v236 = 1;
                FigAtomicAdd32();
                FigAtomicAdd32();
                v237 = *(v10 + 612);
                *(v10 + 612) = v237 + 1;
                if (v237 >= 10)
                {
                  v238 = v224 / *(v10 + 100) + *(v10 + 616);
                  *(v10 + 616) = v238;
                  v239 = v238;
                  if (v239 >= 0.2)
                  {
                    v240 = v239 + -0.2;
                    *(v10 + 616) = v240;
                  }

                  else
                  {
                    v236 = 3;
                  }
                }

                if (v236 <= dword_1EAF16C30)
                {
                  LODWORD(lhs.value) = 0;
                  LOBYTE(type.value) = 0;
                  v241 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  v242 = lhs.value;
                  if (os_log_type_enabled(v241, type.value))
                  {
                    v243 = v242;
                  }

                  else
                  {
                    v243 = v242 & 0xFFFFFFFE;
                  }

                  if (v243)
                  {
                    v420 = *(v10 + 40);
                    valuea = *(v10 + 612);
                    time1.duration.value = v455;
                    time1.duration.timescale = timescale;
                    time1.duration.flags = cfa;
                    time1.duration.epoch = v415;
                    v244 = CMTimeGetSeconds(&time1.duration);
                    *&time1.duration.value = *v376;
                    time1.duration.epoch = *(v10 + 500);
                    v245 = CMTimeGetSeconds(&time1.duration);
                    if (v197)
                    {
                      v246 = *v197 / **(v10 + 64);
                    }

                    else
                    {
                      v246 = NAN;
                    }

                    v252 = *(v10 + 100);
                    v253 = *(v10 + 480);
                    if ((BYTE8(v436) & 2) != 0)
                    {
                      CMClockMakeHostTimeFromSystemUnits(&time1.duration, *&rhs[8]);
                      v254 = CMTimeGetSeconds(&time1.duration);
                    }

                    else
                    {
                      v254 = NAN;
                    }

                    *time2 = 136317954;
                    *&time2[4] = "subaq_enqueueAQBufferIntoAudioQueue";
                    *&time2[12] = 2048;
                    *&time2[14] = a1;
                    *&time2[22] = 2048;
                    *&time2[24] = v10;
                    *v446 = 2048;
                    *&v446[2] = v420;
                    *&v446[10] = 2082;
                    *&v446[12] = a1 + 800;
                    *&v446[20] = 1024;
                    *&v446[22] = valuea;
                    *&v446[26] = 2048;
                    *&v446[28] = v244;
                    *&v446[36] = 2048;
                    *&v446[38] = v245;
                    v447 = 2048;
                    v448 = v224 / v252;
                    v449 = 2048;
                    v450 = v253 / v252;
                    v451 = 2048;
                    v452 = v246;
                    v453 = 2048;
                    v454 = v254;
                    LODWORD(v356) = 118;
                    v355 = time2;
                    _os_log_send_and_compose_impl();
                    v5 = v400;
                    v6 = 1.0;
                  }

                  else
                  {
                    v5 = v400;
                  }

                  v368 = 1;
                  fig_log_call_emit_and_clean_up_after_send_and_compose();
                  v225 = 1;
                  goto LABEL_521;
                }

                v368 = 1;
                v225 = 1;
LABEL_522:
                v166 = v393;
                v255 = hostTime;
                v256 = v408;
                if (!packetDescriptionsPointerOut)
                {
                  v256 = 0;
                }

                if (v256 == 1)
                {
                  v257 = CFGetAllocator(v10);
                  CFAllocatorDeallocate(v257, packetDescriptionsPointerOut);
                }

                v258 = *&rhs[8];
                v259 = *rhs;
                v260 = DWORD2(v436);
                if (!v225)
                {
                  v260 = 0;
                  v258 = 0;
                  v259 = 0.0;
                }

                v393[v164] = 0;
                if (!v164)
                {
                  v165 = v259;
                  v255 = v258;
                }

                hostTime = v255;
                v163 = v411;
                if (!v164)
                {
                  v163 = v260;
                }

                ++v164;
                v162 = count;
                if (v164 == count)
                {
                  v412 = v163;
                  valueb = (v165 + 0.5);
                  v7 = 1.0;
                  v13 = v364;
                  goto LABEL_559;
                }

                continue;
              }

              CMTimeMake(time2, v226, *(v10 + 100));
            }

            break;
          }

          type.value = *time2;
          v229 = *&time2[12];
          type.timescale = *&time2[8];
          v230 = *&time2[16];
          if ((time2[12] & 1) == 0)
          {
            goto LABEL_484;
          }

          goto LABEL_483;
        }

        v149 = 1;
        *(v10 + v144 + 161) = 1;
        v150 = *rhs;
        v13 = v364;
        v151 = v393;
        goto LABEL_340;
      }

      value = v143;
      v152 = duration.value;
      cf = MEMORY[0x19A8D0E00](v10 + 16);
      FigSimpleMutexLock();
      v153 = 0;
      v154 = -1;
      v155 = -1;
      do
      {
        v150 = *(v137 + 8 * v153);
        if (!v150 || v150->mUserData)
        {
          goto LABEL_315;
        }

        if (v152 <= v150->mAudioDataBytesCapacity)
        {
          goto LABEL_330;
        }

        if (v154 == -1)
        {
          v154 = v153;
        }

        else
        {
LABEL_315:
          if (v150)
          {
            v156 = 0;
          }

          else
          {
            v156 = v155 == -1;
          }

          if (v156)
          {
            v155 = v153;
          }
        }

        ++v153;
      }

      while (v153 != 8);
      v157 = (v152 + 4095) & 0xFFFFF000;
      if (v154 == -1)
      {
        if (v155 != -1)
        {
          v158 = (v137 + 8 * v155);
          if (!FigAudioQueueTimingShimAllocateBuffer(*(v10 + 40), v157, v158))
          {
LABEL_329:
            v150 = *v158;
LABEL_330:
            v150->mUserData = v146;
            *rhs = v150;
            v159 = 1;
            goto LABEL_331;
          }

          faq_enqueueSourceData_cold_3();
        }
      }

      else
      {
        v158 = (v137 + 8 * v154);
        FigAudioQueueTimingShimFreeBuffer(*(v10 + 40), *v158);
        *v158 = 0;
        if (!FigAudioQueueTimingShimAllocateBuffer(*(v10 + 40), v157, v158))
        {
          goto LABEL_329;
        }

        faq_enqueueSourceData_cold_2();
      }

      v150 = 0;
      v159 = 0;
LABEL_331:
      if (cf)
      {
        CFRelease(cf);
      }

      FigSimpleMutexUnlock();
      if (v159)
      {
        if (value == v142)
        {
          memcpy(v150->mAudioData, lhs.value, duration.value);
        }

        else
        {
          v160 = CMSampleBufferGetDataBuffer(v139);
          CMBlockBufferCopyDataBytes(v160, 0, duration.value, v150->mAudioData);
        }

        v13 = v364;
        v151 = v393;
        if (*MEMORY[0x1E695FF58] == 1)
        {
          kdebug_trace();
        }

        v149 = 0;
        *(v10 + v144 + 161) = 0;
LABEL_340:
        v150->mAudioDataByteSize = duration.value;
        v150->mUserData = v146;
        v151[v136] = v150;
        v365[v136] = v149;
        v5 = v400;
        v8 = MEMORY[0x1E6960C70];
        goto LABEL_341;
      }

      LODWORD(end.value) = 0;
      LOBYTE(v457.value) = 0;
      v350 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v351 = end.value;
      if (os_log_type_enabled(v350, v457.value))
      {
        v352 = v351;
      }

      else
      {
        v352 = v351 & 0xFFFFFFFE;
      }

      if (v352)
      {
        *time2 = 136315906;
        *&time2[4] = "subaq_acquireAndPrepareAQBuffer";
        *&time2[12] = 2048;
        *&time2[14] = a1;
        *&time2[22] = 2048;
        *&time2[24] = v10;
        *v446 = 2082;
        *&v446[2] = a1 + 800;
        LODWORD(v356) = 42;
        v355 = time2;
        _os_log_send_and_compose_impl();
      }

      v5 = v400;
      v7 = 1.0;
      v275 = v10 + v144 + 144;
      fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_557:
      v13 = v364;
      subaq_returnAQBufferInfoPtr(v10, v275);
      valueb = 0;
      hostTime = 0;
      v412 = 0;
      v11 = 0;
      v368 = 0;
      v8 = MEMORY[0x1E6960C70];
LABEL_558:
      v166 = v393;
      v162 = count;
LABEL_559:
      v276 = v166;
      v277 = v166;
      v278 = v365;
      if (v162 >= 1)
      {
        do
        {
          if (*v277)
          {
            v279 = v162;
            subaq_returnAQBufferInfoPtr(v10, (*v277)->mUserData);
            if (*v278)
            {
              FigAudioQueueTimingShimFreeBuffer(*(v10 + 40), *v277);
            }

            else
            {
              v280 = *v277;
              v280->mAudioDataByteSize = 0;
              v280->mUserData = 0;
            }

            v162 = v279;
          }

          ++v278;
          ++v277;
          --v162;
        }

        while (v162);
      }

      v281 = *(a1 + 120);
      if (v281)
      {
        v282 = *(a1 + 112);
        v283 = CountOfSequentialSamplesWithSeamIdentifier >= v282 ? *(a1 + 112) : CountOfSequentialSamplesWithSeamIdentifier;
        *(a1 + 112) = v282 - v283;
        if (v282 <= CountOfSequentialSamplesWithSeamIdentifier)
        {
          CFRelease(v281);
          *(a1 + 120) = 0;
        }
      }

      a2 = v402;
      if (v432)
      {
        CFRelease(v432);
      }

      if (theArray)
      {
        CFRelease(theArray);
      }

      free(v276);
      free(v365);
      if (v361 && !*(a1 + 578))
      {
        subaq_flushAudioQueue(a1, v10);
      }

      if (*(a1 + 196))
      {
        v284 = *(v10 + 100);
        *cfb = *v8;
        *block = *v8;
        *&block[16] = v401;
        if ((v412 & 2) != 0)
        {
          CMClockMakeHostTimeFromSystemUnits(block, hostTime);
          memset(rhs, 0, 24);
          HostTimeClock = CMClockGetHostTimeClock();
          CMClockGetTime(rhs, HostTimeClock);
          v289 = valueb;
          if (dword_1EAF16C30)
          {
            LODWORD(duration.value) = 0;
            LOBYTE(type.value) = 0;
            v290 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v291 = duration.value;
            if (os_log_type_enabled(v290, type.value))
            {
              v292 = v291;
            }

            else
            {
              v292 = v291 & 0xFFFFFFFE;
            }

            if (v292)
            {
              *&time1.duration.value = *block;
              time1.duration.epoch = *&block[16];
              v293 = CMTimeGetSeconds(&time1.duration);
              *&time1.duration.value = *rhs;
              time1.duration.epoch = *&rhs[16];
              v294 = CMTimeGetSeconds(&time1.duration);
              *time2 = *block;
              *&time2[16] = *&block[16];
              lhs = *rhs;
              CMTimeSubtract(&time1.duration, time2, &lhs);
              v295 = CMTimeGetSeconds(&time1.duration);
              *time2 = 136316418;
              *&time2[4] = "faq_processTransitions";
              *&time2[12] = 2048;
              *&time2[14] = a1;
              *&time2[22] = 2082;
              *&time2[24] = a1 + 800;
              *v446 = 2048;
              *&v446[2] = v293;
              *&v446[10] = 2048;
              *&v446[12] = v294;
              *&v446[20] = 2048;
              *&v446[22] = v295;
              LODWORD(v356) = 62;
              v355 = time2;
              _os_log_send_and_compose_impl();
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
            a2 = v402;
            v8 = MEMORY[0x1E6960C70];
            v13 = v364;
          }
        }

        else
        {
          *rhs = 0;
          LOBYTE(lhs.value) = 0;
          v285 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v286 = *rhs;
          if (os_log_type_enabled(v285, lhs.value))
          {
            v287 = v286;
          }

          else
          {
            v287 = v286 & 0xFFFFFFFE;
          }

          if (v287)
          {
            *time2 = 136315650;
            *&time2[4] = "faq_processTransitions";
            *&time2[12] = 2048;
            *&time2[14] = a1;
            *&time2[22] = 2082;
            *&time2[24] = a1 + 800;
            LODWORD(v356) = 32;
            v355 = time2;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v296 = CMClockGetHostTimeClock();
          CMClockGetTime(&time1.duration, v296);
          *block = *&time1.duration.value;
          *&block[16] = time1.duration.epoch;
          a2 = v402;
          v289 = valueb;
        }

        if (v412)
        {
          CMTimeMake(&time1.duration, v289, v284);
          faqTimelineWrangler_setAQTimeInFAQProcessTransitions(v378, &time1.duration.value);
          v300 = (a1 + 184);
        }

        else
        {
          *rhs = 0;
          LOBYTE(lhs.value) = 0;
          v297 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v298 = *rhs;
          if (os_log_type_enabled(v297, lhs.value))
          {
            v299 = v298;
          }

          else
          {
            v299 = v298 & 0xFFFFFFFE;
          }

          if (v299)
          {
            *time2 = 136315650;
            *&time2[4] = "faq_processTransitions";
            *&time2[12] = 2048;
            *&time2[14] = a1;
            *&time2[22] = 2082;
            *&time2[24] = a1 + 800;
            LODWORD(v356) = 32;
            v355 = time2;
            _os_log_send_and_compose_impl();
          }

          a2 = v402;
          v300 = (a1 + 184);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          faqTimelineWrangler_setAQTimeInFAQProcessTransitions(v378, MEMORY[0x1E6960CC0]);
        }

        v301 = v300;
        while (1)
        {
          v301 = *v301;
          if (!v301)
          {
            break;
          }

          if (v301[96])
          {
            memset(rhs, 0, 24);
            memset(&lhs, 0, sizeof(lhs));
            if (*(a1 + 16))
            {
              v302 = 0;
            }

            else
            {
              v302 = CFArrayGetValueAtIndex(*(a1 + 176), 0);
            }

            v303 = *v300;
            if (*v300 == v301)
            {
              v304 = v300;
            }

            else
            {
              do
              {
                v304 = v303;
                v303 = *v303;
              }

              while (v303 != v301);
            }

            *v304 = *v303;
            --*(a1 + 192);
            v305 = *(v301 + 24);
            *(a1 + 568) = *(v301 + 5);
            *v392 = v305;
            if (dword_1EAF16C30)
            {
              LODWORD(duration.value) = 0;
              LOBYTE(type.value) = 0;
              v306 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v307 = duration.value;
              if (os_log_type_enabled(v306, type.value))
              {
                v308 = v307;
              }

              else
              {
                v308 = v307 & 0xFFFFFFFE;
              }

              if (v308)
              {
                *&time1.duration.value = *v392;
                time1.duration.epoch = *(a1 + 568);
                v309 = CMTimeGetSeconds(&time1.duration);
                *time2 = 136316162;
                *&time2[4] = "faq_processTransitions";
                *&time2[12] = 2048;
                *&time2[14] = a1;
                *&time2[22] = 2082;
                *&time2[24] = a1 + 800;
                *v446 = 2048;
                *&v446[2] = a1 + 424;
                *&v446[10] = 2048;
                *&v446[12] = v309;
                LODWORD(v356) = 52;
                v355 = time2;
                _os_log_send_and_compose_impl();
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
              v8 = MEMORY[0x1E6960C70];
              v5 = v400;
            }

            v310 = *(v301 + 24);
            *(a1 + 544) = *(v301 + 5);
            *v389 = v310;
            *(a1 + 480) = *cfb;
            *(a1 + 496) = v401;
            v311 = *(v301 + 11);
            if (v311)
            {
              v312 = CFGetTypeID(v311);
              if (v312 == CFDictionaryGetTypeID())
              {
                CFDictionaryApplyFunction(*(v301 + 11), &faq_updatePropertyAtTransition, a1);
              }
            }

            v300 = (a1 + 184);
            if (v302)
            {
              subaq_setTapTimelineInfo(a1, v302, 1);
            }

            *&lhs.value = v416;
            lhs.epoch = v418;
            subaq_getAudioQueueLatencyFigTime();
            *&time1.duration.value = *(v301 + 24);
            time1.duration.epoch = *(v301 + 5);
            *time2 = lhs;
            CMTimeSubtract(rhs, &time1.duration, time2);
            if (dword_1EAF16C30)
            {
              LODWORD(duration.value) = 0;
              LOBYTE(type.value) = 0;
              v313 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v314 = duration.value;
              if (os_log_type_enabled(v313, type.value))
              {
                v315 = v314;
              }

              else
              {
                v315 = v314 & 0xFFFFFFFE;
              }

              if (v315)
              {
                *&time1.duration.value = *(v301 + 24);
                time1.duration.epoch = *(v301 + 5);
                v316 = CMTimeGetSeconds(&time1.duration);
                *&time1.duration.value = *rhs;
                time1.duration.epoch = *&rhs[16];
                v317 = CMTimeGetSeconds(&time1.duration);
                time1.duration = lhs;
                v318 = CMTimeGetSeconds(&time1.duration);
                *time2 = 136316418;
                *&time2[4] = "faq_processTransitions";
                *&time2[12] = 2048;
                *&time2[14] = a1;
                *&time2[22] = 2082;
                *&time2[24] = a1 + 800;
                *v446 = 2048;
                *&v446[2] = v316;
                *&v446[10] = 2048;
                *&v446[12] = v317;
                *&v446[20] = 2048;
                *&v446[22] = v318;
                LODWORD(v356) = 62;
                v355 = time2;
                _os_log_send_and_compose_impl();
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
              v300 = (a1 + 184);
              v13 = v364;
            }

            *(v301 + 24) = *rhs;
            *(v301 + 5) = *&rhs[16];
            *(v301 + 3) = *block;
            *(v301 + 8) = *&block[16];
            *(v301 + 18) = *(a1 + 416);
            dispatch_async_f(*(a1 + 32), v301, faq_fireTransitionCallback);
            v301 = v300;
            a2 = v402;
          }
        }

        *(a1 + 196) = 0;
      }

      if (*(*(v10 + 64) + 8) == 1819304813)
      {
        memset(&time1, 0, 24);
        CMSampleBufferGetOutputDuration(&time1.duration, v13);
        v4 = v360;
        v22 = v368;
        if (*(a1 + 356))
        {
          goto LABEL_637;
        }

        *time2 = *&time1.duration.value;
        *&time2[16] = time1.duration.epoch;
        *block = v416;
        *&block[16] = v418;
        if (CMTimeCompare(time2, block) >= 1 && (CMTimeMake(time2, 100, 1000), *block = *&time1.duration.value, *&block[16] = time1.duration.epoch, CMTimeCompare(block, time2) < 0))
        {
          *(a1 + 356) = 1;
          *v383 = *&time1.duration.value;
          *(a1 + 376) = time1.duration.epoch;
        }

        else if (*(a1 + 356))
        {
LABEL_637:
          *time2 = *&time1.duration.value;
          *&time2[16] = time1.duration.epoch;
          *block = v416;
          *&block[16] = v418;
          if (CMTimeCompare(time2, block) >= 1)
          {
            *block = *v383;
            *&block[16] = *(a1 + 376);
            *rhs = *&time1.duration.value;
            *&rhs[16] = time1.duration.epoch;
            CMTimeAdd(time2, block, rhs);
            *v383 = *time2;
            *(a1 + 376) = *&time2[16];
            CMTimeMake(time2, 200, 1000);
            *block = *v383;
            *&block[16] = *(a1 + 376);
            if (CMTimeCompare(block, time2) >= 1)
            {
              *(a1 + 356) = 0;
              *v383 = v416;
              *(a1 + 376) = v418;
            }
          }
        }

LABEL_643:
        v23 = 1;
      }

      else
      {
        v4 = v360;
        v22 = v368;
        if (!*(a1 + 356))
        {
          goto LABEL_643;
        }

        *(a1 + 356) = 0;
        *v383 = v416;
        v23 = 1;
        *(a1 + 376) = v418;
      }

LABEL_644:
      if (!*(a1 + 16))
      {
        if (v13)
        {
          CFRelease(v13);
        }

        if (!v11)
        {
          v11 = 0;
          if (!*(a1 + 16))
          {
            *(a1 + 356) = 0;
            *v383 = *MEMORY[0x1E6960CC0];
            *(a1 + 376) = v418;
          }
        }
      }

      if (v22)
      {
        v4 = 1;
      }

      if (!v23)
      {
        v414 = 1;
      }

LABEL_654:
      if (!v11)
      {
LABEL_774:
        FigSimpleMutexUnlock();
        if (v414)
        {
          CMNotificationCenterGetDefaultLocalCenter();
          CMNotificationCenterPostNotification();
        }

        if (v4)
        {
          faq_wakeupOfflineMixer(a1);
        }

        return;
      }
    }
  }

  FigSimpleMutexUnlock();
}

uint64_t subaq_audioQueuePrime(CMTime *a1, uint64_t a2, uint64_t a3, UInt32 *a4)
{
  v49 = *MEMORY[0x1E69E9840];
  outNumberOfFramesPrepared = 0;
  if (*(a3 + 12))
  {
    time1 = *a3;
    time2 = **&MEMORY[0x1E6960CC0];
    if (CMTimeCompare(&time1, &time2))
    {
      v16 = *(a2 + 100);
      time1 = *a3;
      CMTimeConvertScale(&v37, &time1, v16, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
      value = v37.value;
    }

    else
    {
      value = 0;
    }

    goto LABEL_27;
  }

  LODWORD(time1.value) = 0;
  LODWORD(time2.value) = 4;
  if (FigAudioQueueTimingShimGetProperty(*(a2 + 40), 0x64766266u, &time1, &time2))
  {
    return 0;
  }

  v7 = *(*(a2 + 64) + 8);
  if (v7 == 1634492771)
  {
    v8 = 2;
  }

  else
  {
    v8 = 3;
  }

  v9 = (LODWORD(time1.value) << v8);
  if (v7 == 1633772400 || v7 == 1633772392)
  {
    v11 = FigUInt32NearestPowerOfTwo();
    if (v11 >= 0x20000)
    {
      v12 = 0x20000;
    }

    else
    {
      v12 = v11;
    }

    v13 = v12 >> 2;
    if (v13 >= 0x4000)
    {
      v13 = 0x4000;
    }

    if (v9 <= v13)
    {
      v9 = v13;
    }

    else
    {
      v9 = v9;
    }
  }

  if (v9 >= 0x4000)
  {
    value = 0x4000;
  }

  else
  {
    value = v9;
  }

  if (v9)
  {
LABEL_27:
    v17 = *(a2 + 480);
    v18 = FigAudioQueueTimingShimPrime(*(a2 + 40), value, &outNumberOfFramesPrepared);
    if (v18)
    {
      v9 = v18;
      v36 = **&MEMORY[0x1E6960C70];
      if (*(a2 + 480) <= 0)
      {
        v19 = v17;
      }

      else
      {
        v19 = *(a2 + 480);
      }

      CMTimeMake(&v36, v19, *(a2 + 100));
      LODWORD(rhs.value) = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v21 = rhs.value;
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT))
      {
        v22 = v21;
      }

      else
      {
        v22 = v21 & 0xFFFFFFFE;
      }

      if (v22)
      {
        if (a1)
        {
          p_timescale = &a1[33].timescale;
        }

        else
        {
          p_timescale = "";
        }

        time1 = v36;
        Seconds = CMTimeGetSeconds(&time1);
        LODWORD(time2.value) = 136316674;
        *(&time2.value + 4) = "subaq_audioQueuePrime";
        LOWORD(time2.flags) = 2048;
        *(&time2.flags + 2) = a1;
        HIWORD(time2.epoch) = 2048;
        v42 = a2;
        v43 = 2082;
        v44 = p_timescale;
        v45 = 1024;
        *v46 = v9;
        *&v46[4] = 1024;
        *&v46[6] = v19;
        *v47 = 2048;
        *&v47[2] = Seconds;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      type = v36;
      time2 = a1[22];
      rhs = v36;
      CMTimeAdd(&time1, &time2, &rhs);
      a1[22] = time1;
      if (dword_1EAF16C30)
      {
        LODWORD(rhs.value) = 0;
        v39 = OS_LOG_TYPE_DEFAULT;
        v25 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v26 = rhs.value;
        if (os_log_type_enabled(v25, v39))
        {
          v27 = v26;
        }

        else
        {
          v27 = v26 & 0xFFFFFFFE;
        }

        if (v27)
        {
          p_epoch = &a1[17].epoch;
          v29 = a1 + 22;
          epoch = a1[17].epoch;
          if (epoch)
          {
            v31 = (epoch + 800);
          }

          else
          {
            v31 = "";
          }

          time1 = *v29;
          v32 = CMTimeGetSeconds(&time1);
          time1 = type;
          v33 = CMTimeGetSeconds(&time1);
          LODWORD(time2.value) = 136316418;
          *(&time2.value + 4) = "faqTimelineWrangler_addDiscardedFrameMediaTimeInFAQPrime";
          LOWORD(time2.flags) = 2048;
          *(&time2.flags + 2) = epoch;
          HIWORD(time2.epoch) = 2082;
          v42 = v31;
          v43 = 2048;
          v44 = p_epoch;
          v45 = 2048;
          *v46 = v32;
          *&v46[8] = 2048;
          *v47 = v33;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      *(a2 + 480) = 0;
      *(a2 + 594) = 1;
      return v9;
    }

    *(a2 + 609) = 1;
    if (a4)
    {
      v9 = 0;
      *a4 = outNumberOfFramesPrepared;
      return v9;
    }

    return 0;
  }

  return v9;
}

uint64_t figAudioQueueStartCommon(uint64_t a1, CMTime *a2, CMTime *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, float a9)
{
  v91 = *MEMORY[0x1E69E9840];
  memset(&v65, 0, sizeof(v65));
  HostTimeClock = CMClockGetHostTimeClock();
  CMClockGetTime(&v65, HostTimeClock);
  if (!a1)
  {
    figAudioQueueStartCommon_cold_8(&time);
    return LODWORD(time.value);
  }

  if ((a2->flags & 0x1D) != 1)
  {
    figAudioQueueStartCommon_cold_1(&time);
    return LODWORD(time.value);
  }

  FigSimpleMutexLock();
  if (*(a1 + 16))
  {
    figAudioQueueStartCommon_cold_2(&time);
  }

  else if ((*(a1 + 48) & 2) != 0)
  {
    figAudioQueueStartCommon_cold_3(&time);
  }

  else if (a4 && *(a1 + 400))
  {
    figAudioQueueStartCommon_cold_4(&time);
  }

  else
  {
    if (!a6 || !*(a1 + 384))
    {
      if (a4 | a6 && *(a1 + 576) && (*(a1 + 384) || *(a1 + 400)))
      {
        LODWORD(v73.value) = 0;
        LOBYTE(type.value) = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        value = v73.value;
        if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type.value))
        {
          v21 = value;
        }

        else
        {
          v21 = value & 0xFFFFFFFE;
        }

        if (v21)
        {
          LODWORD(time2.value) = 136315650;
          *(&time2.value + 4) = "figAudioQueueStartCommon";
          LOWORD(time2.flags) = 2048;
          *(&time2.flags + 2) = a1;
          HIWORD(time2.epoch) = 2082;
          v75 = (a1 + 800);
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
        value_low = 4294954356;
        goto LABEL_19;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 176), 0);
      if (((*(a1 + 540) & 0x1D) != 1) | a8)
      {
        if (dword_1EAF16C30)
        {
          v61 = ValueAtIndex;
          LODWORD(v73.value) = 0;
          LOBYTE(type.value) = 0;
          v31 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v32 = v73.value;
          if (os_log_type_enabled(v31, type.value))
          {
            v33 = v32;
          }

          else
          {
            v33 = v32 & 0xFFFFFFFE;
          }

          if (!v33)
          {
            goto LABEL_36;
          }

          time = *(a1 + 528);
          Seconds = CMTimeGetSeconds(&time);
          time = *a3;
          v35 = CMTimeGetSeconds(&time);
          LODWORD(time2.value) = 136316674;
          *(&time2.value + 4) = "figAudioQueueStartCommon";
          LOWORD(time2.flags) = 2048;
          *(&time2.flags + 2) = a1;
          HIWORD(time2.epoch) = 2048;
          v75 = v61;
          v76 = 2082;
          v77 = a1 + 800;
          v78 = 2048;
          v79 = Seconds;
          v80 = 2048;
          v81 = a9;
          v82 = 2048;
          v83 = v35;
          goto LABEL_35;
        }
      }

      else if (dword_1EAF16C30)
      {
        v60 = ValueAtIndex;
        LODWORD(v73.value) = 0;
        LOBYTE(type.value) = 0;
        v25 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v26 = v73.value;
        if (os_log_type_enabled(v25, type.value))
        {
          v27 = v26;
        }

        else
        {
          v27 = v26 & 0xFFFFFFFE;
        }

        if (!v27)
        {
          goto LABEL_36;
        }

        time = *(a1 + 528);
        v28 = CMTimeGetSeconds(&time);
        time = *a3;
        v29 = CMTimeGetSeconds(&time);
        time = *a2;
        v30 = CMTimeGetSeconds(&time);
        LODWORD(time2.value) = 136316930;
        *(&time2.value + 4) = "figAudioQueueStartCommon";
        LOWORD(time2.flags) = 2048;
        *(&time2.flags + 2) = a1;
        HIWORD(time2.epoch) = 2048;
        v75 = v60;
        v76 = 2082;
        v77 = a1 + 800;
        v78 = 2048;
        v79 = v28;
        v80 = 2048;
        v81 = a9;
        v82 = 2048;
        v83 = v29;
        v84 = 2048;
        v85 = v30;
LABEL_35:
        _os_log_send_and_compose_impl();
LABEL_36:
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      if (*(a1 + 16))
      {
        goto LABEL_93;
      }

      Count = CFArrayGetCount(*(a1 + 176));
      if (Count >= 1)
      {
        v37 = Count;
        for (i = 0; i != v37; ++i)
        {
          *(CFArrayGetValueAtIndex(*(a1 + 176), i) + 608) = 0;
        }
      }

      if (*(a1 + 16) || (v39 = CFArrayGetValueAtIndex(*(a1 + 176), 0)) == 0)
      {
LABEL_93:
        figAudioQueueStartCommon_cold_7(&time);
      }

      else
      {
        v40 = v39;
        if (*(v39 + 5))
        {
          v39[608] = 1;
          if (a4)
          {
            *(a1 + 384) = a4;
            *(a1 + 392) = a5;
            *(a1 + 416) = a9;
            *(a1 + 576) = 1;
          }

          if (a6)
          {
            *(a1 + 400) = a6;
            v41 = *(a1 + 408);
            if (v41)
            {
              CFRelease(v41);
              *(a1 + 408) = 0;
            }

            if (a7)
            {
              *(a1 + 408) = FigCFWeakReferenceHolderCreateWithReferencedObject();
            }

            *(a1 + 416) = a9;
            *(a1 + 576) = 1;
          }

          time = *a2;
          v42 = *(a1 + 540) & 0x1D;
          v43 = v42 == 1;
          v44 = v42 != 1;
          if (!v43)
          {
            v45 = *&a2->value;
            *(a1 + 568) = a2->epoch;
            *(a1 + 552) = v45;
          }

          if (v44 | a8)
          {
            *(a1 + 528) = time;
            v46 = MEMORY[0x1E6960C70];
            *(a1 + 480) = *MEMORY[0x1E6960C70];
            *(a1 + 496) = *(v46 + 16);
            *(v40 + 594) = 1;
            *(v40 + 600) = 0;
          }

          *(a1 + 616) = 0u;
          *(a1 + 632) = 0u;
          *(a1 + 584) = 0u;
          *(a1 + 600) = 0u;
          time = *a2;
          v62 = *MEMORY[0x1E6960CC0];
          *&time2.value = *MEMORY[0x1E6960CC0];
          v47 = *(MEMORY[0x1E6960CC0] + 16);
          time2.epoch = v47;
          CMTimeCompare(&time, &time2);
          if ((a3->flags & 0x1D) == 1)
          {
            memset(&v64, 0, sizeof(v64));
            *&v63.value = *&a2->value;
            v63.epoch = a2->epoch;
            time = **&MEMORY[0x1E6960C70];
            *&time2.value = v62;
            time2.epoch = v47;
            subaq_getAudioQueueLatencyFigTime();
            if ((time.flags & 1) == 0)
            {
              *&time.value = v62;
              time.epoch = v47;
            }

            if (*(v40 + 48))
            {
              subaq_getCurrentQueueTime(v40, &v73);
              type = *(a1 + 456);
              rhs = *(a1 + 504);
              CMTimeSubtract(&v71, &type, &rhs);
              rhs = v73;
              CMTimeSubtract(&type, &rhs, &v71);
              rhs = type;
              FigAudioQueueTimingShimConvertTimingShimTimeToAQTime();
              lhs = v63;
              v68 = *(a1 + 552);
              CMTimeSubtract(&rhs, &lhs, &v68);
              v68 = rhs;
              v67 = *(a1 + 504);
              CMTimeAdd(&lhs, &v68, &v67);
              v67 = lhs;
              FigAudioQueueTimingShimConvertTimingShimTimeToAQTime();
              v67 = v71;
              v66 = v68;
              CMTimeSubtract(&time2, &v67, &v66);
            }

            v73 = time2;
            type = time;
            CMTimeSubtract(&v64, &v73, &type);
            time2 = *a3;
            v73 = v64;
            CMTimeAdd(&time, &time2, &v73);
            *&a3->value = *&time.value;
            epoch = time.epoch;
            a3->epoch = time.epoch;
            *&time.value = *&a3->value;
            time.epoch = epoch;
            *(a1 + 592) = CMClockConvertHostTimeToSystemUnits(&time);
            *(a1 + 640) = 2;
          }

          *(a1 + 305) = 1;
          v49 = (*(a1 + 48) & 4) != 0 && *(a1 + 312) && *(a1 + 280) != 1.0;
          faq_enqueueSourceData(a1, v49);
          if (*(a1 + 16))
          {
            v50 = 0;
          }

          else
          {
            v50 = CFArrayGetValueAtIndex(*(a1 + 176), 0);
          }

          v50[608] = 1;
          if (dword_1EAF16C30)
          {
            LODWORD(type.value) = 0;
            LOBYTE(v71.value) = 0;
            v51 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v52 = type.value;
            if (os_log_type_enabled(v51, v71.value))
            {
              v53 = v52;
            }

            else
            {
              v53 = v52 & 0xFFFFFFFE;
            }

            if (v53)
            {
              v54 = *(v50 + 5);
              time = *a2;
              v55 = CMTimeGetSeconds(&time);
              time = *a3;
              v56 = CMTimeGetSeconds(&time);
              time = v65;
              v57 = CMTimeGetSeconds(&time);
              time2 = *a3;
              v73 = v65;
              CMTimeSubtract(&time, &time2, &v73);
              v58 = CMTimeGetSeconds(&time);
              LODWORD(time2.value) = 136317442;
              *(&time2.value + 4) = "figAudioQueueStartCommon";
              LOWORD(time2.flags) = 2048;
              *(&time2.flags + 2) = a1;
              HIWORD(time2.epoch) = 2048;
              v75 = v50;
              v76 = 2048;
              v77 = v54;
              v78 = 2082;
              *&v79 = a1 + 800;
              v80 = 2048;
              v81 = v55;
              v82 = 2048;
              v83 = v56;
              v84 = 2048;
              v85 = v57;
              v86 = 2048;
              v87 = v58;
              v88 = 2048;
              v89 = a9;
              _os_log_send_and_compose_impl();
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          *(a1 + 753) = 1;
          started = subaq_prepareForStart(a1);
          if (started || (started = subaq_startAudioQueueIfReady(a1), started))
          {
            value_low = started;
          }

          else
          {
            if (*(a1 + 579) || *(a1 + 580))
            {
              if (v50[50])
              {
                subaq_startListener(a1, v50);
              }

              *(a1 + 579) = 0;
            }

            *(a1 + 785) = 0;
            *(a1 + 653) = 1;
            FigSemaphoreSignal();
            value_low = 0;
          }

          goto LABEL_19;
        }

        figAudioQueueStartCommon_cold_6(&time);
      }

      goto LABEL_91;
    }

    figAudioQueueStartCommon_cold_5(&time);
  }

LABEL_91:
  value_low = LODWORD(time.value);
LABEL_19:
  FigSimpleMutexUnlock();
  return value_low;
}

uint64_t FigAudioQueueStart2(uint64_t a1, CMTime *a2, CMTime *a3, uint64_t a4, uint64_t a5, int a6, float a7)
{
  v9 = *a2;
  v8 = *a3;
  return figAudioQueueStartCommon(a1, &v9, &v8, 0, 0, a4, a5, a6, a7);
}

uint64_t FigAudioQueueStartOffline(uint64_t a1, CMTime *a2)
{
  v51 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    FigAudioQueueStartOffline_cold_3(&time);
    return LODWORD(time.value);
  }

  FigSimpleMutexLock();
  v4 = &unk_1EAF16000;
  if (dword_1EAF16C30)
  {
    LODWORD(v32) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*(a1 + 16))
  {
    FigAudioQueueStartOffline_cold_1(&time);
  }

  else
  {
    if ((*(a1 + 48) & 2) != 0)
    {
      v32 = *&a2->value;
      epoch = a2->epoch;
      v6 = epoch;
      *(a1 + 528) = v32;
      *(a1 + 544) = v6;
      v7 = MEMORY[0x1E6960C70];
      *(a1 + 480) = *MEMORY[0x1E6960C70];
      *(a1 + 496) = *(v7 + 16);
      v8 = MEMORY[0x1E6960CC0];
      *(a1 + 456) = *MEMORY[0x1E6960CC0];
      *(a1 + 472) = *(v8 + 16);
      if (dword_1EAF16C30 && (*type = 0, v34 = OS_LOG_TYPE_DEFAULT, v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(), os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT), fig_log_call_emit_and_clean_up_after_send_and_compose(), *(a1 + 16)) || (Count = CFArrayGetCount(*(a1 + 176)), Count < 1))
      {
        ValueAtIndex = 0;
      }

      else
      {
        v11 = Count;
        for (i = 0; i != v11; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 176), i);
          ValueAtIndex[594] = 1;
          *(ValueAtIndex + 75) = 0;
        }
      }

      v14 = *(a1 + 648);
      if (v14)
      {
        v15 = (a1 + 648);
        time = *a2;
        CMTimeConvertScale(&v31, &time, v14, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
        value = v31.value;
      }

      else
      {
        v15 = (ValueAtIndex + 100);
        value = 0.0;
      }

      *(a1 + 584) = value;
      v30 = *v15;
      *(a1 + 640) = 1;
      *(a1 + 576) = 1;
      *(a1 + 305) = 1;
      faq_enqueueSourceData(a1, 0);
      *(a1 + 753) = 1;
      if (*(a1 + 16) || (v17 = CFArrayGetCount(*(a1 + 176)), v17 < 1))
      {
LABEL_35:
        value_low = 0;
        *(a1 + 653) = 1;
      }

      else
      {
        v18 = v17;
        v19 = 0;
        while (1)
        {
          if (*(a1 + 16))
          {
            v20 = 0;
          }

          else
          {
            v20 = CFArrayGetValueAtIndex(*(a1 + 176), v19);
          }

          if (v4[780])
          {
            v21 = v4;
            LODWORD(v32) = 0;
            type[0] = OS_LOG_TYPE_DEFAULT;
            v22 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v23 = v32;
            if (os_log_type_enabled(v22, type[0]))
            {
              v24 = v23;
            }

            else
            {
              v24 = v23 & 0xFFFFFFFE;
            }

            if (v24)
            {
              v25 = v20[5];
              v26 = *(a1 + 584);
              v36 = 136316674;
              v37 = "FigAudioQueueStartOffline";
              v38 = 2048;
              v39 = a1;
              v40 = 2048;
              v41 = v20;
              v42 = 2048;
              v43 = v25;
              v44 = 2082;
              v45 = a1 + 800;
              v46 = 2048;
              v47 = v26;
              v48 = 1024;
              v49 = v30;
              _os_log_send_and_compose_impl();
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
            v4 = v21;
          }

          started = subaq_prepareForStart(a1);
          if (started)
          {
            break;
          }

          started = subaq_startAudioQueueIfReady(a1);
          if (started)
          {
            break;
          }

          if (v18 == ++v19)
          {
            goto LABEL_35;
          }
        }

        value_low = started;
      }

      goto LABEL_36;
    }

    FigAudioQueueStartOffline_cold_2(&time);
  }

  value_low = LODWORD(time.value);
LABEL_36:
  FigSimpleMutexUnlock();
  return value_low;
}

uint64_t faq_stopAllAudioQueues(uint64_t a1, uint64_t a2, int a3)
{
  if (a1)
  {
    FigSimpleMutexLock();
    if (*(a1 + 16))
    {
      faq_stopAllAudioQueues_cold_1(&v16);
      v11 = v16;
    }

    else
    {
      *(a1 + 305) = 0;
      Count = CFArrayGetCount(*(a1 + 176));
      if (Count < 1)
      {
LABEL_11:
        v11 = 0;
        *(a1 + 73) = 0;
        *(a1 + 579) = 0;
        *(a1 + 785) = 0;
        v12 = MEMORY[0x1E6960C70];
        v13 = *MEMORY[0x1E6960C70];
        *(a1 + 528) = *MEMORY[0x1E6960C70];
        v14 = *(v12 + 16);
        *(a1 + 544) = v14;
        *(a1 + 480) = v13;
        *(a1 + 496) = v14;
        *(a1 + 652) = 0;
        *(a1 + 753) = 0;
      }

      else
      {
        v7 = Count;
        v8 = 0;
        while (1)
        {
          v9 = *(a1 + 16) ? 0 : CFArrayGetValueAtIndex(*(a1 + 176), v8);
          v10 = subaq_stopAudioQueue(a1, v9, a2);
          if (v10)
          {
            break;
          }

          v9[48] = 0;
          if (v7 == ++v8)
          {
            goto LABEL_11;
          }
        }

        v11 = v10;
      }
    }

    FigSimpleMutexUnlock();
    if (a3)
    {
      faq_wakeupOfflineMixer(a1);
    }
  }

  else
  {
    faq_stopAllAudioQueues_cold_2(&v17);
    return v17;
  }

  return v11;
}

uint64_t FigAudioQueueResetOffline(uint64_t a1)
{
  FigSimpleMutexLock();
  if (!*(a1 + 16))
  {
    faq_reset(a1, v2);
  }

  FigSimpleMutexUnlock();
  return 0;
}

uint64_t faq_offlineMixerNeedsMoreInputData(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    *(a2 + 306) = 1;
    return FigSemaphoreSignal();
  }

  return result;
}

uint64_t MTAudioProcessingTapInitializeTap(uint64_t a1, uint64_t a2)
{
  VTable = CMBaseObjectGetVTable();
  v6 = *(VTable + 16);
  result = VTable + 16;
  v7 = *(v6 + 8);
  if (v7)
  {

    return v7(a1, a2);
  }

  return result;
}

uint64_t FigAudioQueueGetParameter(uint64_t a1, AudioQueueParameterID a2, _DWORD *a3)
{
  v10 = 0;
  if (!a1)
  {
    FigAudioQueueGetParameter_cold_5(&v11);
    return v11;
  }

  if (!a3)
  {
    FigAudioQueueGetParameter_cold_4(&v11);
    return v11;
  }

  FigSimpleMutexLock();
  if (*(a1 + 16))
  {
    FigAudioQueueGetParameter_cold_1(&v11);
  }

  else
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 176), 0);
    if (ValueAtIndex)
    {
      v7 = ValueAtIndex[5];
      if (v7)
      {
        Parameter = FigAudioQueueTimingShimGetParameter(v7, a2, &v10);
        if (!Parameter)
        {
          *a3 = v10;
        }

        goto LABEL_8;
      }

      FigAudioQueueGetParameter_cold_2(&v11);
    }

    else
    {
      FigAudioQueueGetParameter_cold_3(&v11);
    }
  }

  Parameter = v11;
LABEL_8:
  FigSimpleMutexUnlock();
  return Parameter;
}

uint64_t FigAudioQueueRestoreParameters(uint64_t a1)
{
  if (!a1)
  {
    FigAudioQueueRestoreParameters_cold_4(&v5);
    return v5;
  }

  FigSimpleMutexLock();
  if (*(a1 + 16))
  {
    FigAudioQueueRestoreParameters_cold_1(&v5);
LABEL_12:
    v3 = v5;
    goto LABEL_6;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 176), 0);
  if (!ValueAtIndex)
  {
    FigAudioQueueRestoreParameters_cold_3(&v5);
    goto LABEL_12;
  }

  if (!ValueAtIndex[5])
  {
    FigAudioQueueRestoreParameters_cold_2(&v5);
    goto LABEL_12;
  }

  subaq_restoreParameters(a1, ValueAtIndex);
  v3 = 0;
LABEL_6:
  FigSimpleMutexUnlock();
  return v3;
}

const __CFDictionary *subaq_restoreParameters(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 204))
  {
    FigAudioQueueTimingShimSetParameter(*(a2 + 40), 1u, *(a1 + 200));
  }

  if (*(a1 + 212))
  {
    FigAudioQueueTimingShimSetParameter(*(a2 + 40), 5u, *(a1 + 208));
  }

  if (*(a1 + 220))
  {
    FigAudioQueueTimingShimSetParameter(*(a2 + 40), 9u, *(a1 + 216));
  }

  if (*(a1 + 228))
  {
    FigAudioQueueTimingShimSetParameter(*(a2 + 40), 0xEu, *(a1 + 224));
  }

  result = *(a1 + 240);
  if (result)
  {
    result = CFDictionaryGetValue(result, @"LoudnessInfo");
    if (result)
    {
      if (result != *MEMORY[0x1E695E738])
      {

        return subaq_setProperty(a1, a2, @"LoudnessInfo", result);
      }
    }
  }

  return result;
}

uint64_t FigAudioQueueCopyPerformanceDictionary(uint64_t a1, CFDictionaryRef *a2)
{
  v38 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    FigAudioQueueCopyPerformanceDictionary_cold_4(&keys);
    return keys;
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  keys = 0u;
  v29 = 0u;
  *values = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  valuePtr = 0;
  FigSimpleMutexLock();
  if (*(a1 + 16))
  {
    FigAudioQueueCopyPerformanceDictionary_cold_1(&v16);
  }

  else
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 176), 0);
    if (ValueAtIndex)
    {
      v5 = ValueAtIndex;
      if (ValueAtIndex[5])
      {
        v6 = *(a1 + 736) * *(ValueAtIndex[8] + 5);
        DefaultAudioPrimingFrameCount = FigGaplessInfoGetDefaultAudioPrimingFrameCount(ValueAtIndex[7]);
        valuePtr = (v6 - DefaultAudioPrimingFrameCount) & ~((v6 - DefaultAudioPrimingFrameCount) >> 63);
        *&keys = @"NumberOfInputPacketsFedToDecoder";
        v8 = *MEMORY[0x1E695E480];
        values[0] = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, (a1 + 736));
        *(&keys + 1) = @"NumberOfOutputFramesExpected";
        values[1] = CFNumberCreate(v8, kCFNumberSInt64Type, &valuePtr);
        v16 = 0;
        v15 = 8;
        FigAudioQueueTimingShimGetProperty(v5[5], 0x24696E64u, &v16, &v15);
        if (v16)
        {
          *&v29 = @"AudioConverterStatistics";
          *&v19 = v16;
          v9 = 3;
        }

        else
        {
          v9 = 2;
        }

        v10 = values;
        v11 = CFDictionaryCreate(v8, &keys, values, v9, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        do
        {
          v12 = *v10++;
          CFRelease(v12);
          --v9;
        }

        while (v9);
        v13 = 0;
        *a2 = v11;
        goto LABEL_11;
      }

      FigAudioQueueCopyPerformanceDictionary_cold_2(&v16);
    }

    else
    {
      FigAudioQueueCopyPerformanceDictionary_cold_3(&v16);
    }
  }

  v13 = v16;
LABEL_11:
  FigSimpleMutexUnlock();
  return v13;
}

uint64_t faq_registerFAQType()
{
  result = _CFRuntimeRegisterClass();
  gFAQID = result;
  return result;
}

uint64_t faq_oneTimeInitializationWork()
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();

  return fig_note_initialize_category_with_default_work_cf();
}

BOOL faq_scaledEditRateSupportValidator_one32nd_to_32(uint64_t a1, double a2)
{
  v2 = 1.0;
  if (*(a1 + 236))
  {
    v3 = *(a1 + 232);
    if (v3 != 0.0)
    {
      v2 = v3;
    }
  }

  v4 = v2 * a2;
  return v4 <= 32.0 && v4 >= 0.03125;
}

uint64_t faq_scaledEditRateSupportValidator_lowQualityZeroLatency(uint64_t a1, double a2)
{
  if (*(a1 + 236))
  {
    v2 = *(a1 + 232);
    v3 = v2 == 0.0;
    v4 = v2;
    if (v3)
    {
      v4 = 1.0;
    }
  }

  else
  {
    v4 = 1.0;
  }

  v5 = 0;
  v6 = v4 * a2;
  while (1)
  {
    v7 = *&qword_196E730A0[v5];
    v8 = v7 * 0.98;
    v9 = v7 * 1.02;
    if (v8 < v6 && v6 < v9)
    {
      break;
    }

    if (++v5 == 7)
    {
      return 0;
    }
  }

  return 1;
}

BOOL faq_scaledEditRateSupportValidator_noScaleAllowed(uint64_t a1, double a2)
{
  v2 = 1.0;
  if (*(a1 + 236))
  {
    v3 = *(a1 + 232);
    if (v3 != 0.0)
    {
      v2 = v3;
    }
  }

  return v2 * a2 == 1.0;
}

uint64_t faq_resetOutput(uint64_t a1, uint64_t a2)
{
  FigSimpleMutexLock();
  if (!*(a2 + 16))
  {
    faq_reset(a2, v3);
  }

  return FigSimpleMutexUnlock();
}

void faq_deferredAudioQueueEndOfDataReached(_BYTE *cf)
{
  if (!cf[16])
  {
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
  }

  CFRelease(cf);
}

uint64_t subaq_createValidSubAQSetAndLock()
{
  qword_1ED4CA550 = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, 0);
  result = FigReadWriteLockCreate();
  qword_1ED4CA548 = result;
  if (qword_1ED4CA550)
  {
    v1 = result == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {

    return FigSignalErrorAtGM();
  }

  return result;
}

uint64_t fsaq_registerFSAQType()
{
  qword_1ED4CA558 = _CFRuntimeRegisterClass();

  return FigCFWeakReferenceTableCreate();
}

__CFString *fsaq_CopyFormattingDesc(const void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  v4 = CFGetRetainCount(a1);
  CFStringAppendFormat(Mutable, 0, @"[FigSubAudioQueue %p (rc=%d)", a1, v4);
  return Mutable;
}

__CFString *fsaq_CopyDebugDesc(const void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  subaq_appendDebugDesc(Mutable, a1);
  return Mutable;
}

uint64_t MTAudioProcessingTapDisposeAQTap(uint64_t a1, uint64_t a2)
{
  VTable = CMBaseObjectGetVTable();
  v6 = *(VTable + 16);
  result = VTable + 16;
  v7 = *(v6 + 24);
  if (v7)
  {

    return v7(a1, a2);
  }

  return result;
}

uint64_t MTAudioProcessingTapRemoveAQFromSubmixTap(uint64_t a1, uint64_t a2, uint64_t a3)
{
  VTable = CMBaseObjectGetVTable();
  v8 = *(VTable + 16);
  result = VTable + 16;
  v9 = *(v8 + 72);
  if (v9)
  {

    return v9(a1, a2, a3);
  }

  return result;
}

uint64_t subaq_lockListenerBarrierForValidSubAQ(uint64_t a1)
{
  FigReadWriteLockLockForRead();
  if (a1)
  {
    if (CFSetContainsValue(qword_1ED4CA550, a1))
    {
      FigReadWriteLockLockForRead();
      a1 = 1;
    }

    else
    {
      a1 = 0;
    }
  }

  FigReadWriteLockUnlockForRead();
  return a1;
}

void subaq_deferredAQPropertyListenerHandler(void *a1)
{
  v35[16] = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v2 = *(a1 + 1);
  v4 = *(a1 + 4);
  if (v4 <= 1769174127)
  {
    if (v4 > 1718383463)
    {
      if (v4 != 1718383464)
      {
        if (v4 == 1751410285)
        {
          goto LABEL_24;
        }

        goto LABEL_91;
      }

      FigSimpleMutexLock();
      if (!*(v3 + 16))
      {
        Count = CFArrayGetCount(*(v3 + 176));
        if (Count < 1)
        {
          v16 = 0;
LABEL_63:
          if (v16 != v2)
          {
            goto LABEL_90;
          }
        }

        else
        {
          v15 = 0;
          while (1)
          {
            v16 = *(v3 + 16) ? 0 : CFArrayGetValueAtIndex(*(v3 + 176), v15);
            if (v16 == v2)
            {
              break;
            }

            if (Count == ++v15)
            {
              goto LABEL_63;
            }
          }
        }

        v25 = *(v2 + 672);
        if (v25)
        {
          v26 = v25 - 1;
          *(v2 + 672) = v26;
          if (*(v2 + 700))
          {
            if (!v26)
            {
              *(v2 + 700) = 0;
              if (Count < 1)
              {
LABEL_71:
                FigSimpleMutexUnlock();
                CMNotificationCenterGetDefaultLocalCenter();
                goto LABEL_83;
              }

              v27 = 0;
              while (1)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(*(v3 + 176), v27);
                if (ValueAtIndex[701] == 1)
                {
                  break;
                }

                if (Count == ++v27)
                {
                  goto LABEL_71;
                }
              }

              ValueAtIndex[701] = 0;
              if (*(v3 + 73) || (*(v3 + 48) & 2) != 0)
              {
                subaq_startSubAudioQueue(v3);
                subaq_stopAudioQueue(v3, v2, 0);
                FigSimpleMutexUnlock();
                faq_wakeupOfflineMixer(v3);
                goto LABEL_91;
              }
            }
          }
        }
      }
    }

    else
    {
      if (v4 != 1635020914)
      {
        if (v4 == 1685288048)
        {
          goto LABEL_24;
        }

        goto LABEL_91;
      }

      FigSimpleMutexLock();
      if (!*(v3 + 16))
      {
        v10 = CFArrayGetCount(*(v3 + 176));
        if (v10 >= 1)
        {
          v11 = v10;
          v12 = 0;
          while (1)
          {
            v13 = *(v3 + 16) ? 0 : CFArrayGetValueAtIndex(*(v3 + 176), v12);
            if (v13 == v2)
            {
              break;
            }

            if (v11 == ++v12)
            {
              goto LABEL_60;
            }
          }

LABEL_61:
          FigSimpleMutexUnlock();
          LODWORD(values) = 0;
          LOBYTE(valuePtr) = 0;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          CMNotificationCenterGetDefaultLocalCenter();
          goto LABEL_83;
        }

        v13 = 0;
LABEL_60:
        if (v13 == v2)
        {
          goto LABEL_61;
        }
      }
    }

LABEL_90:
    FigSimpleMutexUnlock();
    goto LABEL_91;
  }

  if (v4 <= 1902406770)
  {
    if (v4 == 1769174128)
    {
      FigSimpleMutexLock();
      *(v3 + 579) = 1;
      *(v3 + 785) = 1;
    }

    else
    {
      if (v4 != 1902343781)
      {
        goto LABEL_91;
      }

      v32 = 4;
      valuePtr = 0;
      FigSimpleMutexLock();
      if (!*(v3 + 16))
      {
        v5 = CFArrayGetCount(*(v3 + 176));
        v6 = v5 - 1;
        if (v5 >= 1)
        {
          v7 = 0;
          do
          {
            if (*(v3 + 16))
            {
              v8 = 0;
            }

            else
            {
              v8 = CFArrayGetValueAtIndex(*(v3 + 176), v7);
            }

            if (v8 == v2)
            {
              break;
            }

            v9 = v6 == v7++;
          }

          while (!v9);
          if (v8 && v8 == v2 && !FigAudioQueueTimingShimGetProperty(v8[5], 0x71637665u, &valuePtr, &v32))
          {
            FigSimpleMutexUnlock();
            if (valuePtr)
            {
              v31 = bswap32(valuePtr);
              v21 = *MEMORY[0x1E695E480];
              values = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
              v22 = CFDictionaryCreate(v21, kFigAudioQueueNotificationParameter_ConverterError, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
              v23 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
              CMNotificationCenterGetDefaultLocalCenter();
              CMNotificationCenterPostNotification();
              if (values)
              {
                CFRelease(values);
              }

              if (v22)
              {
                CFRelease(v22);
              }
            }

            goto LABEL_91;
          }
        }
      }
    }

    goto LABEL_90;
  }

  if (v4 == 1902406771)
  {
    v35[0] = 0;
    v34 = 0;
    FigSimpleMutexLock();
    if (!*(v3 + 16))
    {
      v17 = CFArrayGetCount(*(v3 + 176));
      v18 = v17 - 1;
      if (v17 < 1)
      {
        v20 = 0;
      }

      else
      {
        v19 = 0;
        do
        {
          if (*(v3 + 16))
          {
            v20 = 0;
          }

          else
          {
            v20 = CFArrayGetValueAtIndex(*(v3 + 176), v19);
          }

          if (v20 == v2)
          {
            break;
          }

          v9 = v18 == v19++;
        }

        while (!v9);
      }

      if (v20 == v2)
      {
        v34 = 8;
        if (!FigAudioQueueTimingShimGetProperty(*(v20 + 5), 0x71646C73u, v35, &v34))
        {
          v29 = *v35;
          *(v20 + 90) = v35[0];
          if (*(v20 + 49) || (*(v3 + 49) & 0x20) != 0)
          {
            if (vabdd_f64(*(v20 + 89), v29) >= 0.02 || (*(v3 + 49) & 0x20) != 0)
            {
              *(v20 + 89) = v29;
              if (!*(v3 + 785))
              {
                if (!*(v3 + 576))
                {
                  FigSimpleMutexUnlock();
                  CMNotificationCenterGetDefaultLocalCenter();
                  goto LABEL_83;
                }

                *(v3 + 577) = 1;
              }
            }
          }

          else
          {
            *(v20 + 89) = v29;
          }
        }
      }
    }

    goto LABEL_90;
  }

  if (v4 == 1920233330)
  {
LABEL_24:
    CMNotificationCenterGetDefaultLocalCenter();
LABEL_83:
    CMNotificationCenterPostNotification();
  }

LABEL_91:
  CFRelease(v3);
  CFRelease(v2);
  free(a1);
}

__n128 faqTimelineWrangler_getAQTimePauseOffset@<Q0>(uint64_t a1@<X0>, CMTime *a2@<X8>)
{
  if ((*(a1 + 68) & 0x1D) == 1)
  {
    v8 = v2;
    v9 = v3;
    lhs = *(a1 + 56);
    v6 = *(a1 + 32);
    CMTimeSubtract(a2, &lhs, &v6);
  }

  else
  {
    v5 = MEMORY[0x1E6960CC0];
    result = *MEMORY[0x1E6960CC0];
    *&a2->value = *MEMORY[0x1E6960CC0];
    a2->epoch = *(v5 + 16);
  }

  return result;
}

CMTime *faqTimelineWrangler_convertAQTimeToMediaTime@<X0>(uint64_t a1@<X0>, CMTime *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  lhs = *a2;
  rhs = *(a1 + 32);
  CMTimeSubtract(&v11, &lhs, &rhs);
  rhs = v11;
  CMTimeMultiplyByFloat64(&lhs, &rhs, fabs(a4));
  rhs = *(a1 + 104);
  v8 = lhs;
  if (a4 <= 0.0)
  {
    return CMTimeSubtract(a3, &rhs, &v8);
  }

  else
  {
    return CMTimeAdd(a3, &rhs, &v8);
  }
}

void subaq_appendDebugDesc(__CFString *a1, CFTypeRef cf)
{
  v4 = CFGetRetainCount(cf);
  v5 = *(cf + 8);
  CFStringAppendFormat(a1, 0, @"(SubAQ %p retainCount:%d -> AQTS %p %.0f Hz '%c%c%c%c')\n", cf, v4, *(cf + 5), *v5, HIBYTE(*(v5 + 8)), BYTE2(*(v5 + 8)), BYTE1(*(v5 + 8)), *(v5 + 8));
}

float subaq_getCurrentPlayRate2ParameterValue(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = 1.0;
  v2 = MEMORY[0x19A8D0E00](a1 + 16);
  if (FigAudioQueueTimingShimGetParameter(*(a1 + 40), 0x15u, &v6))
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v6 = 1.0;
  }

  if (v2)
  {
    CFRelease(v2);
  }

  return v6;
}

uint64_t subaq_returnAQBufferInfoPtr(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    if (*a2)
    {
      CFRelease(*a2);
      *a2 = 0;
    }

    v3 = *(a2 + 8);
    if (v3)
    {
      CFRelease(v3);
      *(a2 + 8) = 0;
    }

    FigSimpleMutexLock();
    *(a2 + 16) = 0;

    return FigSimpleMutexUnlock();
  }

  return result;
}

uint64_t subaq_audioProcessingUnitSetPropertyApplier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  VTable = CMBaseObjectGetVTable();
  v8 = *(VTable + 8);
  result = VTable + 8;
  v9 = *(v8 + 56);
  if (v9)
  {

    return v9(a3, a1, a2);
  }

  return result;
}

uint64_t faq_enqueueSourceDataThread(uint64_t a1)
{
  do
  {
    FigSemaphoreWaitRelative();
    if (*(a1 + 304))
    {
      break;
    }

    faq_enqueueSourceData(a1, 1);
  }

  while (!*(a1 + 304));
  return 0;
}

BOOL subaq_doesAudioQueueHaveBuffersToFlush(uint64_t a1)
{
  memset(&v5, 0, sizeof(v5));
  if ((*(a1 + 444) & 1) == 0)
  {
    return 0;
  }

  if ((*(a1 + 688) & 1) == 0)
  {
    return 1;
  }

  v2 = (a1 + 676);
  lhs = *(a1 + 432);
  v3 = *(a1 + 456);
  CMTimeAdd(&v5, &lhs, &v3);
  lhs = *v2;
  v3 = v5;
  return CMTimeCompare(&lhs, &v3) != 0;
}

CMTime *faqTimelineWrangler_convertMediaTimeToAQTime@<X0>(uint64_t a1@<X0>, CMTime *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  memset(&v14, 0, sizeof(v14));
  memset(&v13, 0, sizeof(v13));
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  if (a4 >= 0.0)
  {
    lhs = *a2;
    *&rhs.value = *(a1 + 104);
    epoch = *(a1 + 120);
  }

  else
  {
    lhs = *(a1 + 104);
    *&rhs.value = *&a2->value;
    epoch = a2->epoch;
  }

  rhs.epoch = epoch;
  CMTimeSubtract(&v14, &lhs, &rhs);
  v8 = fabs(a4);
  lhs = *(a1 + 32);
  CMTimeMultiplyByFloat64(&v13, &lhs, v8);
  lhs = v14;
  rhs = v14;
  v10 = v13;
  CMTimeAdd(&lhs, &rhs, &v10);
  rhs = lhs;
  return CMTimeMultiplyByFloat64(a3, &rhs, 1.0 / v8);
}

void subaq_deferredAudioQueueStartupCompleted(uint64_t *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 4);
  if (*(*a1 + 16))
  {
    v5 = 1;
  }

  else
  {
    v5 = v4 == 0;
  }

  if (!v5)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    if (*(v2 + 608))
    {
      FigSimpleMutexLock();
      v8 = *(v3 + 384);
      v7 = *(v3 + 392);
      v10 = *(v3 + 400);
      v9 = *(v3 + 408);
      *(v3 + 384) = 0u;
      *(v3 + 400) = 0u;
      FigSimpleMutexUnlock();
      if (v8)
      {
        v15 = *MEMORY[0x1E6960C70];
        v16 = *(MEMORY[0x1E6960C70] + 16);
        v13 = v15;
        v14 = v16;
        v8(v7, v4, &v15, &v13, NAN);
      }

      else if (v10)
      {
        if (v9)
        {
          v12 = FigCFWeakReferenceHolderCopyReferencedObject();
          if (v12)
          {
            v15 = *MEMORY[0x1E6960C70];
            v16 = *(MEMORY[0x1E6960C70] + 16);
            v13 = v15;
            v14 = v16;
            v10(v12, v4, &v15, &v13, NAN);
          }

          FigDeferCFRelease();
          CFRelease(v9);
        }

        else
        {
          v15 = *MEMORY[0x1E6960C70];
          v16 = *(MEMORY[0x1E6960C70] + 16);
          v13 = v15;
          v14 = v16;
          v10(0, v4, &v15, &v13, NAN);
          FigDeferCFRelease();
        }
      }

      FigSimpleMutexLock();
      *(v3 + 305) = 0;
      *(v3 + 576) = 0;
      *(v3 + 753) = 0;
    }

    else
    {
      subaq_removeIfObsolete(v3, v2);
      FigSimpleMutexLock();
    }

    if (*(v2 + 48))
    {
      LODWORD(v15) = 0;
      LODWORD(v13) = 4;
      Property = FigAudioQueueTimingShimGetProperty(*(v2 + 40), 0x6171726Eu, &v15, &v13);
      if (!(Property | v15))
      {
        *(v2 + 48) = 0;
        *(v2 + 50) = 0;
        if (*(v2 + 608))
        {
          subaq_deferredAudioQueueStartupCompleted_cold_1(v3);
        }
      }
    }

    FigSimpleMutexUnlock();
  }

  FigReadWriteLockUnlockForRead();
  CFRelease(v3);
  CFRelease(v2);
  free(a1);
}

BOOL faq_shouldSetMXSessionOnAudioQueues()
{
  if (faq_shouldSetMXSessionOnAudioQueues_onceToken != -1)
  {
    faq_shouldSetMXSessionOnAudioQueues_cold_1();
  }

  return (faq_shouldSetMXSessionOnAudioQueues_sShouldSetMXSession & 1) == 0;
}

uint64_t MTAudioProcessingTapEnsureSubmixTapCreated(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a1, a2);
}

uint64_t MTAudioProcessingTapCreateAQTap(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v10)
  {
    return 4294954514;
  }

  return v10(a1, a2, a3, a4, a5);
}

uint64_t __faq_shouldSetMXSessionOnAudioQueues_block_invoke()
{
  result = FigPreferAudioSessionOverCMSession();
  if (result || (result = FigGetCFPreferenceNumberWithDefault(), result != 1))
  {
    faq_shouldSetMXSessionOnAudioQueues_sShouldSetMXSession = 1;
  }

  return result;
}

uint64_t subaq_applyOneCachedProperty(CFTypeRef cf1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    return subaq_applyOneCachedProperty_cold_1();
  }

  result = CFEqual(cf1, @"AllowedToUseHardware");
  if (!result)
  {
    return subaq_applyOneCachedProperty_cold_1();
  }

  return result;
}

uint64_t __subaq_acquireAndPrepareAQBuffer_block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 40);
  v5 = 4;
  v6 = 0;
  result = FigAudioQueueTimingShimGetProperty(v1, 0x71706964u, &v6, &v5);
  v3 = 0;
  if (!result)
  {
    v4 = v6;
    result = getpid();
    v3 = v4 == result;
  }

  subaq_acquireAndPrepareAQBuffer_sAudioQueueCanAllocateBufferWithMemory = v3;
  return result;
}

double faq_getLinearlyInterpolatedVolumeAtTimeInRange(CMTime *a1, CMTime *a2, double a3, double a4)
{
  lhs = *a2;
  v9 = *a1;
  CMTimeSubtract(&v11, &lhs, &v9);
  lhs = v11;
  Seconds = CMTimeGetSeconds(&lhs);
  lhs = a1[1];
  return (a4 - a3) * (Seconds / CMTimeGetSeconds(&lhs)) + a3;
}

uint64_t subaq_fapuIterateAndScheduleParameters(uint64_t a1, uint64_t a2, CMTime *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23 = **&MEMORY[0x1E6960C70];
  v22 = v23;
  v20 = 0;
  v21 = 0;
  v19 = 0;
  while (1)
  {
    v24 = *a3;
    result = FigAudioProcessingUnitPackedCurveIteratorNext(a2, &v24, &v23, &v21, &v20, &v19, a7, a8);
    if (result == -19782)
    {
      return 0;
    }

    if (result)
    {
      return result;
    }

    v13 = *(a4 + 8);
    v14 = *(a4 + 72);
    v24 = v23;
    faqTimelineWrangler_convertMediaTimeToAQTime(v13 + 424, &v24, &v22, v14);
    if (*(a4 + 102))
    {
      result = FigAudioProcessingUnitPackedCurveIteratorGetSnapshot(a2, &v21, &v20, &v19);
      if (result)
      {
        return result;
      }
    }

    v16 = v20;
    v15 = v21;
    v17 = v19;
    v18 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (!v18)
    {
      break;
    }

    v24 = v22;
    result = v18(a1, &v24, v15, v16, v17);
    if (result)
    {
      return result;
    }
  }

  return 4294954514;
}

uint64_t faqTimelineWrangler_setAQTimeInFAQProcessTransitions(uint64_t result, __int128 *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *a2;
  *(result + 48) = *(a2 + 2);
  *(result + 32) = v2;
  if (dword_1EAF16C30)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

void faq_fireTransitionCallback(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 64);
  v3(v2, *(a1 + 80), &v6, &v4, *(a1 + 72));
  faq_destroyTransitionRecord(a1);
}

__CFString *faq_CopyFormattingDesc(_BYTE *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  v4 = CFGetRetainCount(a1);
  CFStringAppendFormat(Mutable, 0, @"[FigAudioQueue %p (rc=%d)", a1, v4);
  if (a1[16])
  {
    CFStringAppendFormat(Mutable, 0, @"invalidated]");
  }

  else
  {
    CFStringAppendFormat(Mutable, 0, @"]");
  }

  return Mutable;
}

float OUTLINED_FUNCTION_11_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, float *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, __int128 a20, unint64_t a21)
{
  result = *a12;
  *&STACK[0x240] = a20;
  STACK[0x250] = a21;
  return result;
}

void OUTLINED_FUNCTION_18_4(uint64_t a1@<X8>)
{
  *(v3 + 68) = a1;
  *(v3 + 76) = 2048;
  *(v3 + 78) = v1;
  *(v3 + 86) = 2048;
  *(v3 + 88) = v2;
  *(v3 + 96) = 2082;
}

BOOL OUTLINED_FUNCTION_19_4(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, os_log_type_t type, int a15)
{

  return os_log_type_enabled(a1, type);
}

uint64_t OUTLINED_FUNCTION_29_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, __int128 a14, uint64_t a15)
{
  *(v15 + 160) = a14;
  *(v15 + 176) = a15;
  return v16 - 256;
}

__n128 OUTLINED_FUNCTION_30_4@<Q0>(unint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 a7, unint64_t a8)
{
  v8[11].n128_u64[0] = a1;
  result = a7;
  v8[4] = a7;
  v8[5].n128_u64[0] = a8;
  return result;
}

uint64_t OUTLINED_FUNCTION_32_4()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_33_4()
{
  *(v0 + 32) = 0;

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

CMTimeRange *OUTLINED_FUNCTION_38_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, CMTimeRange *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, CMTime *end, uint64_t a29, CMTime *start, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, __int128 enda, uint64_t end_16, uint64_t a43, uint64_t starta, int start_8, int start_12, uint64_t start_16)
{
  starta = *(v49 - 216);
  start_8 = *(v49 - 208);
  start_12 = v48;
  start_16 = v47;
  enda = *(v49 - 256);
  end_16 = *(v49 - 240);

  return CMTimeRangeFromTimeToTime(&a27, &starta, &enda);
}

BOOL OUTLINED_FUNCTION_40_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, os_log_type_t type)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_60_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, os_log_type_t type)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_61_3(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, os_log_type_t type, int a18)
{

  return os_log_type_enabled(a1, type);
}

uint64_t OUTLINED_FUNCTION_69_1()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

void *OUTLINED_FUNCTION_74_2()
{

  return malloc_type_malloc(0x18uLL, 0x1020040EDCEB4C7uLL);
}

uint64_t OUTLINED_FUNCTION_75_1()
{

  return CMNotificationCenterPostNotification();
}

void OUTLINED_FUNCTION_76_2()
{

  JUMPOUT(0x19A8D0E00);
}

__n128 OUTLINED_FUNCTION_85_1()
{
  result = *(v0 + 24);
  v1[3] = result;
  v1[4].n128_u64[0] = *(v0 + 40);
  return result;
}

BOOL OUTLINED_FUNCTION_101_1(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, os_log_type_t type, int a18)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_102_0(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int16 a11, char a12, os_log_type_t type, int a14)
{

  return os_log_type_enabled(a1, type);
}

uint64_t OUTLINED_FUNCTION_103_1()
{

  return __maskrune(v0, 0x40000uLL);
}

uint64_t OUTLINED_FUNCTION_104_1()
{

  return FigSimpleMutexLock();
}

uint64_t OUTLINED_FUNCTION_105_1()
{

  return __maskrune(v0, 0x40000uLL);
}

uint64_t RegisterFigCaptionRendererInputType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

void vmc2FinishAndDestroyImageEnhancementFilter(uint64_t a1)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v1 = *(a1 + 984);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __vmc2FinishAndDestroyImageEnhancementFilter_block_invoke;
  block[3] = &unk_1E7479B50;
  block[5] = &v5;
  block[6] = a1;
  block[4] = &v9;
  dispatch_sync(v1, block);
  if (v10[3])
  {
    VTTemporalFilterSessionCompleteFrames();
  }

  v2 = v6[3];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = v10[3];
  if (v3)
  {
    CFRelease(v3);
  }

  _Block_object_dispose(&v5, 8);
  _Block_object_dispose(&v9, 8);
}

uint64_t vmc2PriorImageQueueGaugeSafeDisplayDurationChanged(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return vmc2OutputOccupancyChanged(a2);
  }

  return result;
}

void vmc2PriorImageQueueGaugeWasInvalidated(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    FigSimpleMutexLock();
    if (*(a2 + 1520))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      v4 = *(a2 + 1520);
      if (v4)
      {
        CFRelease(v4);
        *(a2 + 1520) = 0;
      }
    }

    FigSimpleMutexUnlock();

    vmc2OutputOccupancyChanged(a2);
  }
}

void vmc2RemoveDecompressionSession(uint64_t a1)
{
  if (*(a1 + 64))
  {
    FigStopForwardingMediaServicesProcessDeathNotification();
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterRemoveListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    VTDecompressionSessionInvalidate(*(a1 + 64));
    CFRelease(*(a1 + 64));
    *(a1 + 64) = 0;
    ++*(a1 + 1168);
  }

  *(a1 + 1057) = 0;
  *(a1 + 1089) = 0;
}

void vmc2UpcomingPTSInfoChanged(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16) && FigAtomicCompareAndSwap32())
  {
    v3 = *(a2 + 448);

    dispatch_async_f(v3, a2, vmc2RecalculateUpcomingImageTimes2);
  }
}

void vmc2DisplayModeChanged(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    v6 = v2;
    v7 = v3;
    v5 = 0;
    FPSupport_GetCurrentDisplayModeVideoRangeAndSizeAndFrameRate(0, &v5, 0, 0);
    *(a2 + 1432) = (v5 - 2) < 3;
  }
}

void vmc2ClearSavedList(uint64_t a1)
{
  v1 = *(a1 + 800);
  *(a1 + 800) = 0;
  if (v1)
  {
    do
    {
      v3 = *v1;
      v2 = v1[1];
      if (v2)
      {
        CFRelease(v2);
        v1[1] = 0;
      }

      v4 = v1[3];
      if (v4)
      {
        CFRelease(v4);
        v1[3] = 0;
      }

      v5 = v1[4];
      if (v5)
      {
        CFRelease(v5);
      }

      free(v1);
      v1 = v3;
    }

    while (v3);
  }
}

uint64_t VMC2CreateWithQueues2(const __CFAllocator *a1, const opaqueCMFormatDescription *a2, const void *a3, const void *a4, const void *a5, const void *a6, uint64_t a7, const __CFArray *a8, const __CFArray *a9, uint64_t a10, uint64_t a11, const void *a12, const void *a13, const __CFDictionary *a14, uint64_t *a15)
{
  v48 = 0;
  v46 = 0uLL;
  v47 = 0u;
  memset(v45, 0, sizeof(v45));
  cf = 0;
  v43 = 1;
  v42 = 0;
  fig_note_initialize_category_with_default_work_cf();
  if (a8)
  {
    Count = CFArrayGetCount(a8);
    if (a9)
    {
LABEL_3:
      v21 = CFArrayGetCount(a9);
      goto LABEL_6;
    }
  }

  else
  {
    Count = 0;
    if (a9)
    {
      goto LABEL_3;
    }
  }

  v21 = 0;
LABEL_6:
  if (Count == v21)
  {
    v22 = *MEMORY[0x1E695E480];
    OutputCallbacksForImageQueueArray = FigSampleBufferProviderCreateForBufferQueue(*MEMORY[0x1E695E480], a6, &v48);
    if (OutputCallbacksForImageQueueArray || (OutputCallbacksForImageQueueArray = VMC2MakeOutputCallbacksForImageQueueArray(a8, a9, 96, v45), OutputCallbacksForImageQueueArray))
    {
      v24 = OutputCallbacksForImageQueueArray;
      Mutable = 0;
      goto LABEL_10;
    }

    if (a9 && (v28 = CFArrayGetCount(a9), v28 >= 1))
    {
      v29 = v28;
      v30 = 0;
      Mutable = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a9, v30);
        if (ValueAtIndex)
        {
          v32 = CFGetTypeID(ValueAtIndex);
          if (v32 == CFDictionaryGetTypeID())
          {
            LODWORD(v38) = 0;
            if (FigCFDictionaryGetInt32IfPresent())
            {
              if (!Mutable)
              {
                Mutable = CFArrayCreateMutable(v22, 0, MEMORY[0x1E695E9C0]);
                if (!Mutable)
                {
                  VMC2CreateWithQueues2_cold_2(&v38, &v40);
                  goto LABEL_43;
                }
              }

              FigCFArrayAppendInt32();
            }
          }
        }

        ++v30;
      }

      while (v29 != v30);
      if (Mutable)
      {
        v33 = CFArrayGetCount(Mutable);
        if (v33 >= 1 && v33 != v29)
        {
          v24 = 4294954473;
          goto LABEL_10;
        }
      }
    }

    else
    {
      Mutable = 0;
    }

    FigCFDictionaryGetBooleanIfPresent();
    FigCFDictionaryGetBooleanIfPresent();
    if (a12)
    {
      v34 = FigActivitySchedulerCreateForCFRunLoop(a1, a12, &cf);
      if (v34)
      {
LABEL_39:
        v24 = v34;
        goto LABEL_10;
      }
    }

    else
    {
      v34 = FigActivitySchedulerCreateForNewThread(a1, 3, @"com.apple.coremedia.videomediaconverter", &cf);
      if (v34)
      {
        goto LABEL_39;
      }
    }

    v40 = *a10;
    v41 = *(a10 + 16);
    v38 = *a11;
    v39 = *(a11 + 16);
    v24 = VMC2CreateWithCallbacks(a1, a2, a3, a4, a5, v48, a7, v45, Mutable, &v40, &v38, cf, a13, a14, a15);
    a7 = 0;
    *(&v46 + 1) = 0;
  }

  else
  {
    VMC2CreateWithQueues2_cold_1(&v40);
    Mutable = 0;
LABEL_43:
    v24 = v40;
  }

LABEL_10:
  if (v48)
  {
    CFRelease(v48);
  }

  if (*(&v46 + 1))
  {
    (*(&v46 + 1))(*(&v45[0] + 1));
  }

  if (a7)
  {
    v26 = *(a7 + 24);
    if (v26)
    {
      v26(*(a7 + 8));
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

  return v24;
}

uint64_t vmc2SetVideoFormatDescription(uint64_t result, CMFormatDescriptionRef desc)
{
  if (result && desc)
  {
    v3 = result;
    v4 = *(result + 32);
    if (v4)
    {
      CFRelease(v4);
      *(v3 + 32) = 0;
    }

    if (CMFormatDescriptionGetMediaType(desc) == 1952606066)
    {
      *(v3 + 40) = 1;
      result = CFRetain(desc);
      *(v3 + 32) = result;
    }

    else
    {
      CMFormatDescriptionGetMediaSubType(desc);
      *(v3 + 32) = CFRetain(desc);
      result = CVPixelFormatDescriptionGetDescriptionWithPixelFormatType();
      *(v3 + 40) = result != 0;
    }
  }

  return result;
}

void vmc2UpdateDisplayMode(uint64_t a1)
{
  v2 = 0;
  FPSupport_GetCurrentDisplayModeVideoRangeAndSizeAndFrameRate(0, &v2, 0, 0);
  *(a1 + 1432) = (v2 - 2) < 3;
}

uint64_t __copy_assignment_8_8_t0w16_pa0_323_16_pa0_24722_24_pa0_38677_32(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *(result + 16) = *(a2 + 16);
  *(result + 24) = *(a2 + 24);
  *(result + 32) = *(a2 + 32);
  return result;
}

uint64_t __copy_assignment_8_8_t0w16_pa0_37031_16_pa0_15589_24_pa0_48845_32_pa0_31235_40_pa0_15173_48_pa0_1637_56_pa0_22919_64_pa0_52647_72_pa0_36147_80_pa0_30122_88(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *(result + 16) = *(a2 + 16);
  *(result + 24) = *(a2 + 24);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = *(a2 + 48);
  *(result + 56) = *(a2 + 56);
  *(result + 64) = *(a2 + 64);
  *(result + 72) = *(a2 + 72);
  *(result + 80) = *(a2 + 80);
  *(result + 88) = *(a2 + 88);
  return result;
}

uint64_t vmc2BuildDecompressionSession(uint64_t a1)
{
  propertyValueOut[16] = *MEMORY[0x1E69E9840];
  value[0] = 0;
  if (!*(a1 + 32) || *(a1 + 40))
  {
    return 0;
  }

  value[1] = vmc2OutputFrame;
  value[2] = a1;
  v4 = *(a1 + 264);
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  v6 = MEMORY[0x1E695E480];
  if (v5 && v5(v4))
  {
    v7 = *(a1 + 264);
    v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v8)
    {
      v9 = v8(v7, @"ThreadPriority", *v6, value);
      if (!v9)
      {
        goto LABEL_9;
      }

      v2 = v9;
      v12 = 0;
    }

    else
    {
      v12 = 0;
      v2 = 4294954514;
    }

LABEL_33:
    if (*(a1 + 64))
    {
      FigStopForwardingMediaServicesProcessDeathNotification();
      VTDecompressionSessionInvalidate(*(a1 + 64));
      v21 = *(a1 + 64);
      if (v21)
      {
        CFRelease(v21);
      }

      *(a1 + 64) = 0;
      ++*(a1 + 1168);
    }

    goto LABEL_91;
  }

LABEL_9:
  v10 = *v6;
  Mutable = CFDictionaryCreateMutable(v10, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v12 = Mutable;
  if (Mutable)
  {
    if (value[0])
    {
      CFDictionarySetValue(Mutable, *MEMORY[0x1E6983A88], value[0]);
    }

    v13 = *(a1 + 992);
    if (v13)
    {
      CFDictionarySetValue(v12, *MEMORY[0x1E6983AA8], v13);
    }

    v14 = *(a1 + 1000);
    if (v14)
    {
      CFDictionarySetValue(v12, *MEMORY[0x1E6983A78], v14);
    }

    if (*(a1 + 840))
    {
      FigCFDictionarySetInt32();
    }

    v15 = *(a1 + 864);
    if (v15)
    {
      CFDictionarySetValue(v12, *MEMORY[0x1E6983AA0], v15);
    }

    v16 = MEMORY[0x1E695E4D0];
    if (*(a1 + 875))
    {
      CFDictionarySetValue(v12, *MEMORY[0x1E6983A98], *MEMORY[0x1E695E4D0]);
    }

    if (*(a1 + 876))
    {
      CFDictionarySetValue(v12, *MEMORY[0x1E6983A90], *v16);
    }
  }

  CFGetAllocator(a1);
  started = VTDecompressionSessionCreateWithOptions();
  if (started)
  {
    goto LABEL_25;
  }

  ++*(a1 + 1164);
  started = FigStartForwardingMediaServicesProcessDeathNotification();
  if (started)
  {
    goto LABEL_25;
  }

  v18 = *(a1 + 256);
  if (!v18 || CFArrayGetCount(v18) < 1)
  {
    goto LABEL_43;
  }

  MediaSubType = CMFormatDescriptionGetMediaSubType(*(a1 + 32));
  if (MediaSubType > 1902212656)
  {
    if (MediaSubType == 1902403958)
    {
      goto LABEL_40;
    }

    v20 = 1902212657;
  }

  else
  {
    if (MediaSubType == 1635135537)
    {
      goto LABEL_40;
    }

    v20 = 1684108849;
  }

  if (MediaSubType != v20)
  {
    v22 = *(a1 + 64);
    v23 = MEMORY[0x1E69839B8];
    goto LABEL_41;
  }

LABEL_40:
  v22 = *(a1 + 64);
  v23 = MEMORY[0x1E69839B0];
LABEL_41:
  started = VTSessionSetProperty(v22, *v23, *(a1 + 256));
  if (started || (started = VTDecompressionSessionSetMultiImageCallback(*(a1 + 64), vmc2OutputMultiImageFrame, a1), started))
  {
LABEL_25:
    v2 = started;
    goto LABEL_33;
  }

LABEL_43:
  v24 = *(a1 + 600);
  if (v24)
  {
    CFRelease(v24);
    *(a1 + 600) = 0;
  }

  VTSessionCopyProperty(*(a1 + 64), *MEMORY[0x1E69839C0], v10, (a1 + 600));
  *(a1 + 608) = 0;
  vmc2WhileHoldingTimebaseMutexUpdateQualityOfServiceCapability(a1);
  *(a1 + 626) = 1;
  v25 = *(a1 + 1008);
  if (v25)
  {
    CFRelease(v25);
    *(a1 + 1008) = 0;
  }

  VTSessionCopyProperty(*(a1 + 64), *MEMORY[0x1E6983958], v10, (a1 + 1008));
  v26 = *(a1 + 1048);
  if (v26)
  {
    VTSessionSetProperties(*(a1 + 64), v26);
  }

  v27 = *(a1 + 56);
  if (v27)
  {
    started = VTSessionSetProperty(*(a1 + 64), *MEMORY[0x1E6983980], v27);
    if (started)
    {
      goto LABEL_25;
    }
  }

  if (*(a1 + 840))
  {
    v28 = CFNumberCreate(v10, kCFNumberSInt32Type, (a1 + 840));
    VTSessionSetProperty(*(a1 + 64), *MEMORY[0x1E6983918], v28);
    CFRelease(v28);
  }

  if (*(a1 + 874))
  {
    VTSessionSetProperty(*(a1 + 64), *MEMORY[0x1E6983960], *MEMORY[0x1E695E4D0]);
  }

  if (*(a1 + 872))
  {
    VTSessionSetProperty(*(a1 + 64), *MEMORY[0x1E69839D0], *MEMORY[0x1E695E4D0]);
  }

  v29 = *(a1 + 736);
  if (v29)
  {
    VTSessionSetProperty(*(a1 + 64), *MEMORY[0x1E6983938], v29);
  }

  v30 = *(a1 + 744);
  if (v30)
  {
    VTSessionSetProperty(*(a1 + 64), *MEMORY[0x1E69839E8], v30);
  }

  v31 = *(a1 + 752);
  if (v31)
  {
    VTSessionSetProperty(*(a1 + 64), *MEMORY[0x1E6983990], v31);
  }

  v32 = *(a1 + 760);
  if (v32)
  {
    VTSessionSetProperty(*(a1 + 64), *MEMORY[0x1E69839C8], v32);
  }

  v33 = *MEMORY[0x1E695E4D0];
  v34 = *MEMORY[0x1E695E4C0];
  if (*(a1 + 873))
  {
    v35 = *MEMORY[0x1E695E4D0];
  }

  else
  {
    v35 = *MEMORY[0x1E695E4C0];
  }

  VTSessionSetProperty(*(a1 + 64), *MEMORY[0x1E69839A0], v35);
  if (*(a1 + 879))
  {
    v36 = v33;
  }

  else
  {
    v36 = v34;
  }

  VTSessionSetProperty(*(a1 + 64), *MEMORY[0x1E6983998], v36);
  v37 = *(a1 + 1016);
  if (v37)
  {
    VTSessionSetProperty(*(a1 + 64), *MEMORY[0x1E6983920], v37);
  }

  v38 = *(a1 + 1024);
  if (v38)
  {
    VTSessionSetProperty(*(a1 + 64), *MEMORY[0x1E69839E0], v38);
  }

  v39 = *(a1 + 1032);
  if (v39)
  {
    VTSessionSetProperty(*(a1 + 64), *MEMORY[0x1E6983A08], v39);
  }

  v40 = *(a1 + 1040);
  if (v40)
  {
    VTSessionSetProperty(*(a1 + 64), *MEMORY[0x1E6983988], v40);
  }

  if (*(a1 + 768))
  {
    v41 = CMFormatDescriptionGetMediaSubType(*(a1 + 32));
    if (v41 == 1902212657 || v41 == 1635135537)
    {
      VTSessionSetProperty(*(a1 + 64), *MEMORY[0x1E6983900], *(a1 + 768));
    }
  }

  if (value[0])
  {
    VTSessionSetProperty(*(a1 + 64), *MEMORY[0x1E6983940], value[0]);
  }

  CMNotificationCenterGetDefaultLocalCenter();
  started = CMNotificationCenterAddListener();
  if (started)
  {
    goto LABEL_25;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  started = FigNotificationCenterAddWeakListener();
  if (started)
  {
    goto LABEL_25;
  }

  *(a1 + 608) = -NAN;
  v42 = *(a1 + 64);
  if (v42)
  {
    propertyValueOut[0] = 0;
    VTSessionCopyProperty(v42, *MEMORY[0x1E69839F0], v10, propertyValueOut);
    v43 = propertyValueOut[0];
    *(a1 + 1208) = propertyValueOut[0] != 0;
    if (v43)
    {
      *(a1 + 1209) = v43 == v33;
      CFRelease(v43);
    }
  }

  v2 = 0;
LABEL_91:
  if (dword_1EAF18AC0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (value[0])
  {
    CFRelease(value[0]);
  }

  return v2;
}

void vmc2UpdateExternalProtectionStatus(uint64_t a1)
{
  v6 = 0;
  os_retain(*(a1 + 1424));
  voucher_adopt();
  v2 = *(a1 + 808);
  if (v2)
  {
    v3 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v3 && !v3(v2, 7, &v6))
    {
      v4 = v6;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }
  }

  else
  {
    v4 = 1;
    v6 = 1;
  }

  *(a1 + 836) = v4;
  v5 = voucher_adopt();
  os_release(v5);
}

uint64_t VMC2SetMinUpcomingPresentationTimeStamp(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  else
  {
    FigSimpleMutexLock();
    v5 = *(a2 + 16);
    *(a1 + 416) = *a2;
    *(a1 + 432) = v5;
    FigSimpleMutexUnlock();

    return vmc2RecalculateUpcomingImageTimes(a1);
  }
}

uint64_t vmc2ResetTroubleMonitorTimers(uint64_t result)
{
  if (*(result + 626))
  {
    v1 = result;
    FigSimpleMutexLock();
    v1[640] = 0;
    v1[656] = 0;
    v1[672] = 0;
    v1[688] = 0;

    return FigSimpleMutexUnlock();
  }

  return result;
}

uint64_t VMC2WaitUntilPrerolled(uint64_t a1)
{
  if (*(a1 + 16))
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  else
  {
    FigSemaphoreWaitRelative();
    return 0;
  }
}

uint64_t VMC2Reset(uint64_t a1, int a2)
{
  if (*(a1 + 16))
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  else
  {
    FigSimpleMutexLock();
    v5 = MEMORY[0x1E6960C70];
    *(a1 + 416) = *MEMORY[0x1E6960C70];
    *(a1 + 432) = *(v5 + 16);
    *(a1 + 520) = 0;
    *(a1 + 730) = 0;
    FigSimpleMutexUnlock();
    if (a2)
    {
      vmc2InvokeOutputCallback_FlushOutput(a1);
    }

    return 0;
  }
}

uint64_t vmc2InvokeOutputCallback_FlushOutput(uint64_t a1)
{
  FigReadWriteLockLockForRead();
  if (*(a1 + 249))
  {
    v2 = *(a1 + 208);
    if (v2)
    {
      v2(*(a1 + 152));
    }
  }

  else
  {
    vmc2InvokeOutputCallback_FlushOutput_cold_1();
  }

  return FigReadWriteLockUnlockForRead();
}

uint64_t VMC2PretendOutputIsLow(uint64_t a1)
{
  if (*(a1 + 16))
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  else
  {
    *(a1 + 440) = 1;
    return 0;
  }
}

uint64_t VMC2RequestDecodeForPreroll(uint64_t a1, const void *a2)
{
  if (*(a1 + 16))
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  else
  {
    vmc2PostCompletedDecodeForPrerollIfPreviouslyRequestedAndMaybeRecordNewRequest(a1, 1, a2);
    v4 = *(a1 + 264);
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v5)
    {
      v5(v4);
    }

    return 0;
  }
}

void vmc2PostCompletedDecodeForPrerollIfPreviouslyRequestedAndMaybeRecordNewRequest(uint64_t a1, char a2, const void *a3)
{
  FigSimpleMutexLock();
  v6 = *(a1 + 712);
  v7 = *(a1 + 720);
  values = v7;
  *(a1 + 712) = a2;
  if (a3)
  {
    v8 = CFRetain(a3);
  }

  else
  {
    v8 = 0;
  }

  *(a1 + 720) = v8;
  FigSimpleMutexUnlock();
  if (v6)
  {
    if (v7)
    {
      v9 = CFDictionaryCreate(*MEMORY[0x1E695E480], kVideoMediaConverter2NotificationParameter_RequestID, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    }

    else
    {
      v9 = 0;
    }

    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
    v7 = values;
    if (values)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v9 = 0;
    if (v7)
    {
LABEL_11:
      CFRelease(v7);
    }
  }

  if (v9)
  {
    CFRelease(v9);
  }
}

uint64_t VMC2CopyPerformanceDictionary(uint64_t a1, __CFDictionary **a2)
{
  v4 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 30, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigSimpleMutexLock();
  if (*(a1 + 1116) >= 1)
  {
    v6 = *(a1 + 600);
    if (v6)
    {
      Count = CFArrayGetCount(v6);
      v8 = *(a1 + 1116);
      if (v8 < Count)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 600), v8);
        CFDictionarySetValue(Mutable, @"WorstQualityOfServiceTier", ValueAtIndex);
      }
    }
  }

  v10 = *(a1 + 64);
  if (v10 && (v11 = CFRetain(v10)) != 0)
  {
    v12 = v11;
    propertyValueOut = 0;
    VTSessionCopyProperty(v11, *MEMORY[0x1E69839F0], v4, &propertyValueOut);
    if (propertyValueOut && (CFDictionarySetValue(Mutable, @"UsingHardwareAcceleratedVideoDecoder", propertyValueOut), (v13 = propertyValueOut) != 0) || (CFDictionarySetValue(Mutable, @"UsingHardwareAcceleratedVideoDecoder", *MEMORY[0x1E695E4D0]), (v13 = propertyValueOut) != 0))
    {
      CFRelease(v13);
      propertyValueOut = 0;
    }

    VTSessionCopyProperty(v12, *MEMORY[0x1E69839F8], v4, &propertyValueOut);
    if (propertyValueOut)
    {
      CFDictionarySetValue(Mutable, @"UsingSandboxedVideoDecoder", propertyValueOut);
      if (propertyValueOut)
      {
        CFRelease(propertyValueOut);
      }
    }

    FigSimpleMutexUnlock();
    *a2 = Mutable;
    CFRelease(v12);
  }

  else
  {
    FigSimpleMutexUnlock();
    *a2 = Mutable;
  }

  return 0;
}

uint64_t VMC2CopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, CFDictionaryRef *a4)
{
  v4 = 4294954473;
  if (a2 && a4)
  {
    if (CFEqual(@"ObeyEmptyMediaMarkers", a2))
    {
      v9 = MEMORY[0x1E695E4D0];
      v10 = *(a1 + 728);
LABEL_7:
      if (!v10)
      {
        v9 = MEMORY[0x1E695E4C0];
      }

      v11 = *v9;
LABEL_10:
      v11 = CFRetain(v11);
LABEL_11:
      v4 = 0;
      *a4 = v11;
      return v4;
    }

    if (CFEqual(@"RenderEmptyMedia", a2))
    {
      v9 = MEMORY[0x1E695E4D0];
      v10 = *(a1 + 729);
      goto LABEL_7;
    }

    if (CFEqual(@"OutputPixelBufferPool", a2))
    {
      FigSimpleMutexLock();
      v13 = *(a1 + 64);
      if (v13)
      {
        v4 = VTSessionCopyProperty(v13, *MEMORY[0x1E6983978], a3, a4);
      }

      else
      {
        v4 = 0;
      }

LABEL_20:
      FigSimpleMutexUnlock();
      return v4;
    }

    if (CFEqual(@"FieldMode", a2))
    {
      v11 = *(a1 + 736);
      if (!v11)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    if (CFEqual(@"AllowVideoQualityOfServiceAdjustments", a2))
    {
      v14 = MEMORY[0x1E695E4D0];
      v15 = *(a1 + 624);
      goto LABEL_23;
    }

    if (CFEqual(@"DecoderUsage", a2))
    {
      v11 = *(a1 + 744);
      if (!v11)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    if (CFEqual(@"DecoderPriority", a2))
    {
      v11 = *(a1 + 752);
      if (!v11)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    if (CFEqual(@"QualityOfServiceTier", a2))
    {
      FigSimpleMutexLock();
      v16 = *(a1 + 600);
      if (v16)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v16, *(a1 + 608));
        if (ValueAtIndex)
        {
          ValueAtIndex = CFRetain(ValueAtIndex);
        }

        v4 = 0;
        *a4 = ValueAtIndex;
      }

      else
      {
        v4 = 4294954470;
      }

      goto LABEL_20;
    }

    if (CFEqual(@"DecoderThreadCount", a2))
    {
      v11 = *(a1 + 760);
      if (!v11)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    if (CFEqual(@"EndPresentationTimeForDecodedSamples", a2))
    {
      FigSimpleMutexLock();
      v20 = *(a1 + 368);
      *a4 = CMTimeCopyAsDictionary(&v20, a3);
      FigSimpleMutexUnlock();
    }

    else
    {
      if (CFEqual(@"ForceFullPowerDecode", a2))
      {
        v9 = MEMORY[0x1E695E4D0];
        v10 = *(a1 + 877);
        goto LABEL_7;
      }

      if (CFEqual(@"EnableIOFenceDecode", a2))
      {
        v9 = MEMORY[0x1E695E4D0];
        v10 = *(a1 + 878);
        goto LABEL_7;
      }

      if (CFEqual(@"PropagatePerFrameHDRDisplayMetadata", a2))
      {
        v9 = MEMORY[0x1E695E4D0];
        v10 = *(a1 + 879);
        goto LABEL_7;
      }

      if (CFEqual(@"DisplayLayerSize", a2))
      {
        Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        FigCFDictionarySetCGSize();
        v4 = 0;
        *a4 = Mutable;
        return v4;
      }

      if (CFEqual(@"EnhancementFilterOptions", a2))
      {
        v11 = *(a1 + 912);
        if (!v11)
        {
          goto LABEL_11;
        }

        goto LABEL_10;
      }

      if (CFEqual(@"ColorPrimaries", a2))
      {
        v11 = *(a1 + 1016);
        if (!v11)
        {
          goto LABEL_11;
        }

        goto LABEL_10;
      }

      if (CFEqual(@"TransferFunction", a2))
      {
        v11 = *(a1 + 1024);
        if (!v11)
        {
          goto LABEL_11;
        }

        goto LABEL_10;
      }

      if (CFEqual(@"YCbCrMatrix", a2))
      {
        v11 = *(a1 + 1032);
        if (!v11)
        {
          goto LABEL_11;
        }

        goto LABEL_10;
      }

      if (CFEqual(@"PreserveSyncFrames", a2))
      {
        v9 = MEMORY[0x1E695E4D0];
        v10 = *(a1 + 731);
        goto LABEL_7;
      }

      if (CFEqual(@"PlaybackSessionID", a2))
      {
        v11 = *(a1 + 1040);
        if (!v11)
        {
          goto LABEL_11;
        }

        goto LABEL_10;
      }

      if (CFEqual(@"HDRCrossTalker", a2))
      {
        v11 = *(a1 + 1440);
        if (!v11)
        {
          goto LABEL_11;
        }

        goto LABEL_10;
      }

      if (CFEqual(@"IsRunning", a2))
      {
        v14 = MEMORY[0x1E695E4D0];
        v15 = *(a1 + 288);
LABEL_23:
        if (!v15)
        {
          v14 = MEMORY[0x1E695E4C0];
        }

        v11 = *v14;
        if (!*v14)
        {
          goto LABEL_11;
        }

        goto LABEL_10;
      }

      if (CFEqual(@"CollectionRules", a2))
      {
        v11 = *(a1 + 1096);
        if (!v11)
        {
          goto LABEL_11;
        }

        goto LABEL_10;
      }

      if (CFEqual(@"DecompressionSessionProperties", a2))
      {
        v11 = *(a1 + 1048);
        if (!v11)
        {
          goto LABEL_11;
        }

        goto LABEL_10;
      }

      if (!CFEqual(@"MappingFromFormatDescriptionsToSidebandVideoPropertiesLookupIDs", a2))
      {
        return 4294954470;
      }

      FigSimpleMutexLock();
      v19 = *(a1 + 1536);
      if (v19)
      {
        v19 = CFRetain(v19);
      }

      *a4 = v19;
      FigSimpleMutexUnlock();
    }

    return 0;
  }

  return v4;
}