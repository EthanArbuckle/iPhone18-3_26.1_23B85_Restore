BOOL assetWriter_GetInputQueueLengthBeforeFormatWriterForTrackIndex@<W0>(const void *a1@<X0>, CFIndex a2@<X1>, uint64_t a3@<X8>)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 80), a2);
  result = assetWriter_IsTrackNativeTrack(a1, ValueAtIndex[20]);
  if (result)
  {
    v9 = ValueAtIndex[20];
    *a3 = *(v9 + 64);
    v10 = *(v9 + 80);
  }

  else
  {
    v11 = MEMORY[0x1E6960C70];
    *a3 = *MEMORY[0x1E6960C70];
    v10 = *(v11 + 16);
  }

  *(a3 + 16) = v10;
  return result;
}

BOOL assetWriter_IsTrackNativeTrack(const void *a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (!a2 || (v5 = DerivedStorage, !*(a2 + 16)) || (v6 = FigCFWeakReferenceHolderCopyReferencedObject()) == 0)
  {
    assetWriter_IsTrackNativeTrack_cold_1();
    return 0;
  }

  v7 = v6;
  v8 = *(v5 + 184);
  v9 = *(v6 + 300);
  v10 = CFGetAllocator(a1);
  v11 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v11)
  {
    v14 = 0;
    goto LABEL_9;
  }

  v12 = v11(v8, v9, @"SourceSampleBufferQueue", v10, &cf);
  v13 = cf;
  if (v12)
  {
    v14 = 0;
    if (!cf)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v14 = FigCFEqual() != 0;
  v13 = cf;
  if (cf)
  {
LABEL_7:
    CFRelease(v13);
  }

LABEL_9:
  CFRelease(v7);
  return v14;
}

uint64_t assetWriter_copyPixelBufferAttributesForHintingEncoder(__CVBuffer *a1, CFDictionaryRef *a2)
{
  valuePtr = CVPixelBufferGetPixelFormatType(a1);
  v3 = *MEMORY[0x1E695E480];
  cf = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  if (cf)
  {
    v4 = CFDictionaryCreate(v3, MEMORY[0x1E6966130], &cf, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (v4)
    {
      v5 = 0;
      *a2 = v4;
      goto LABEL_4;
    }

    assetWriter_copyPixelBufferAttributesForHintingEncoder_cold_1(&v9);
  }

  else
  {
    assetWriter_copyPixelBufferAttributesForHintingEncoder_cold_2(&v9);
  }

  v5 = v9;
LABEL_4:
  if (cf)
  {
    CFRelease(cf);
  }

  return v5;
}

void __hasProResHWEncoder_block_invoke()
{
  listOfVideoEncodersOut = 0;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, *MEMORY[0x1E6984228], *MEMORY[0x1E695E4D0]);
  if (VTCopyVideoEncoderList(Mutable, &listOfVideoEncodersOut))
  {
    v1 = 1;
  }

  else
  {
    v1 = listOfVideoEncodersOut == 0;
  }

  if (!v1)
  {
    if (CFArrayGetCount(listOfVideoEncodersOut) >= 1)
    {
      v2 = 0;
      do
      {
        CFArrayGetValueAtIndex(listOfVideoEncodersOut, v2);
        FigCFDictionaryGetBooleanIfPresent();
        ++v2;
      }

      while (v2 < CFArrayGetCount(listOfVideoEncodersOut));
    }

    CFRelease(listOfVideoEncodersOut);
  }
}

void __doesProResHWEncoderSupportInterlaced_block_invoke()
{
  session = 0;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v1 = Mutable;
    v2 = *MEMORY[0x1E695E4D0];
    CFDictionarySetValue(Mutable, *MEMORY[0x1E6984270], *MEMORY[0x1E695E4D0]);
    CFDictionarySetValue(v1, *MEMORY[0x1E6984288], v2);
    if (!VTCompressionSessionCreate(0, 1920, 1080, 0x6170636Eu, v1, 0, 0, 0, 0, &session))
    {
      SInt32 = FigCFNumberCreateSInt32();
      if (SInt32)
      {
        v4 = SInt32;
        if (!VTSessionSetProperty(session, *MEMORY[0x1E6983640], SInt32))
        {
          doesProResHWEncoderSupportInterlaced_proResHWSupportsInterlaced = 1;
        }

        CFRelease(v4);
      }

      CFRelease(session);
    }

    CFRelease(v1);
  }
}

CMTime *OUTLINED_FUNCTION_8_5@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, __int128 a16, uint64_t a17, uint64_t a18, CMTime *time2, uint64_t a20, CMTime *time1, uint64_t a22, __int128 a23, uint64_t a24, uint64_t a25, __int128 time2a, uint64_t time2_16, uint64_t a28, uint64_t time1a)
{
  v34 = *(v31 + 48);
  *v31 = v30;
  *(v31 + 8) = a1;
  *(v31 + 12) = v29;
  *(v31 + 16) = v34;
  time2a = a23;
  time2_16 = a24;

  return CMTimeMaximum((v32 - 224), &time1a, &time2a);
}

uint64_t RegisterFigManifoldBaseType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigManifoldGetCFTypeID()
{
  MEMORY[0x19A8D3660](&FigManifoldGetClassID_sRegisterFigManifoldBaseTypeOnce, RegisterFigManifoldBaseType);

  return CMBaseClassGetCFTypeID();
}

CFTypeRef FigManifoldRetain(CFTypeRef cf)
{
  if (cf)
  {
    return CFRetain(cf);
  }

  return cf;
}

void FigManifoldRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

CMTime *OUTLINED_FUNCTION_0_18@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, CMTime *a5)
{
  a4 = a1;

  return CMTimeConvertScale(&a5, &a2, 90000, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
}

uint64_t RegisterFigCaptionGroupConverterFromSampleBufferBaseType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigCaptionGroupConverterFromSampleBufferGetTypeID()
{
  MEMORY[0x19A8D3660](&FigCaptionGroupConverterFromSampleBufferGetClassID_sRegisterFigCaptionGroupConverterFromSampleBufferBaseTypeOnce, RegisterFigCaptionGroupConverterFromSampleBufferBaseType);

  return CMBaseClassGetCFTypeID();
}

uint64_t FinalizeClientRequestsOnList(uint64_t a1, uint64_t *a2, int a3)
{
  while (1)
  {
    FigSimpleMutexLock();
    v6 = *a2;
    if (!*a2)
    {
      break;
    }

    while (*(v6 + 80) != a1)
    {
      v6 = *(v6 + 88);
      if (!v6)
      {
        goto LABEL_8;
      }
    }

    v7 = FigSimpleMutexUnlock();
    v10 = 0;
    v9 = 0;
    if (a3)
    {
      v7 = FigAIOBlockUntilReady(v7, v6, 1);
    }

    FigAIOTryToComplete(v7, v6, &v10, &v9);
  }

LABEL_8:

  return FigSimpleMutexUnlock();
}

uint64_t AddPendingRequest(uint64_t a1)
{
  FigSimpleMutexLock();
  v2 = qword_1EAF18980;
  *(a1 + 88) = qword_1EAF18980;
  if (v2)
  {
    *(v2 + 96) = a1 + 88;
  }

  qword_1EAF18980 = a1;
  *(a1 + 96) = &qword_1EAF18980;
  FigSemaphoreSignal();

  return FigSimpleMutexUnlock();
}

uint64_t FigAIOTryToComplete(int a1, aiocb *aiocbp, int *a3, ssize_t *a4)
{
  *a3 = -1;
  *a4 = 0;
  if (aio_error(aiocbp) == 36)
  {
    return 0;
  }

  v8 = &qword_1EAF18988;
  FigSimpleMutexLock();
  do
  {
    v9 = *v8;
    v8 = (*v8 + 88);
    if (v9)
    {
      v10 = v9 == aiocbp;
    }

    else
    {
      v10 = 1;
    }
  }

  while (!v10);
  if (v9)
  {
    aio_offset = aiocbp[1].aio_offset;
    aio_buf = aiocbp[1].aio_buf;
    if (aio_offset)
    {
      *(aio_offset + 96) = aio_buf;
    }

    *aio_buf = aio_offset;
    v13 = 1;
  }

  else
  {
    v14 = &qword_1EAF18980;
    do
    {
      v15 = *v14;
      v14 = (*v14 + 88);
      if (v15)
      {
        v16 = v15 == aiocbp;
      }

      else
      {
        v16 = 1;
      }
    }

    while (!v16);
    if (!v15)
    {
      FigSimpleMutexUnlock();
      return 0;
    }

    v13 = 0;
    LOBYTE(aiocbp[1].aio_nbytes) = 1;
  }

  FigSimpleMutexUnlock();
  *a4 = 0;
  v17 = aio_error(aiocbp);
  if (v17 == 36)
  {
    *a3 = 36;
  }

  else
  {
    v18 = v17;
    v19 = aio_return(aiocbp);
    *a4 = v19;
    if (v18 == -1 || v19 == -1)
    {
      v18 = *__error();
    }

    *a3 = v18;
    if (v18 == 22)
    {
      if (v9)
      {
        v13 = 1;
      }

      else
      {
        v20 = &qword_1EAF18980;
        FigSimpleMutexLock();
        do
        {
          v21 = *v20;
          v20 = (*v20 + 88);
          if (v21)
          {
            v22 = v21 == aiocbp;
          }

          else
          {
            v22 = 1;
          }
        }

        while (!v22);
        if (!v21)
        {
          v23 = &qword_1EAF18988;
          do
          {
            v24 = *v23;
            v23 = (*v23 + 88);
            if (v24)
            {
              v25 = v24 == aiocbp;
            }

            else
            {
              v25 = 1;
            }
          }

          while (!v25);
          if (!v24)
          {
            goto LABEL_48;
          }
        }

        if (LOBYTE(aiocbp[1].aio_nbytes))
        {
          v26 = aiocbp[1].aio_offset;
          v27 = aiocbp[1].aio_buf;
          if (v26)
          {
            *(v26 + 96) = v27;
          }

          *v27 = v26;
          v13 = 1;
        }

        else
        {
LABEL_48:
          v13 = 0;
        }

        FigSimpleMutexUnlock();
      }

      v28 = FigAtomicIncrement32();
      if (v28 == 1)
      {
        FigGetUpTimeNanoseconds();
      }

      else if (v28 >= 20)
      {
        FigGetUpTimeNanoseconds();
        FigAtomicCompareAndSwap32();
      }
    }
  }

  if (v13)
  {
    free(aiocbp);
  }

  return 1;
}

uint64_t FigAIOBlockUntilReady(int a1, aiocb *aiocbp, int a3)
{
  aiocblist[1] = *MEMORY[0x1E69E9840];
  if (aio_error(aiocbp) != 36)
  {
    return 0;
  }

  aiocblist[0] = aiocbp;
  v7 = xmmword_196E73000;
  if (a3)
  {
    aio_cancel(aiocbp->aio_fildes, aiocbp);
  }

  for (i = 0; ; i = aio_suspend(aiocblist, 1, &v7))
  {
    if (i != 4)
    {
      result = aio_error(aiocbp);
      if (result != 36)
      {
        break;
      }
    }
  }

  return result;
}

void FigAIORequestThread()
{
  v0 = malloc_type_malloc(0x40uLL, 0x2004093837F09uLL);
  v1 = 8;
  while (1)
  {
    FigSimpleMutexLock();
    aio_offset = qword_1EAF18980;
    if (!qword_1EAF18980)
    {
      FigSimpleMutexUnlock();
      goto LABEL_33;
    }

    v3 = 0;
    v4 = 0;
    while (1)
    {
      while (1)
      {
        v5 = aio_offset;
        v6 = aio_error(aio_offset);
        p_aio_offset = &aio_offset[1].aio_offset;
        aio_offset = aio_offset[1].aio_offset;
        if (v6 == 36)
        {
          break;
        }

        v9 = *(v5 + 96);
        if (aio_offset)
        {
          aio_offset[1].aio_buf = v9;
        }

        *v9 = aio_offset;
        if (*(v5 + 104))
        {
          free(v5);
          if (!aio_offset)
          {
            goto LABEL_21;
          }
        }

        else
        {
          v10 = qword_1EAF18988;
          *p_aio_offset = qword_1EAF18988;
          if (v10)
          {
            *(v10 + 96) = p_aio_offset;
          }

          qword_1EAF18988 = v5;
          *(v5 + 96) = &qword_1EAF18988;
          *(*(v5 + 80) + 24) = 1;
          ++v4;
          if (!aio_offset)
          {
            goto LABEL_21;
          }
        }
      }

      if (v3 == v1)
      {
        break;
      }

LABEL_8:
      v0[v3++] = v5;
      if (!aio_offset)
      {
        goto LABEL_21;
      }
    }

    v1 = v3 + 4;
    v8 = malloc_type_realloc(v0, 8 * (v3 + 4), 0x2004093837F09uLL);
    if (v8)
    {
      break;
    }

    v1 = v3;
LABEL_21:
    FigSimpleMutexUnlock();
    if (v4 >= 1)
    {
      FigSimpleMutexLock();
      do
      {
        v11 = qword_1EAF189A0;
        if (!qword_1EAF189A0)
        {
          break;
        }

        while (1)
        {
          if (*(v11 + 24))
          {
            *(v11 + 24) = 0;
            if (*v11)
            {
              break;
            }
          }

          v11 = *(v11 + 16);
          if (!v11)
          {
            goto LABEL_30;
          }
        }

        (*v11)(v11, *(v11 + 8));
      }

      while (v4-- > 0);
LABEL_30:
      FigSimpleMutexUnlock();
    }

    if (v3)
    {
      timeoutp = xmmword_196E73000;
      aio_suspend(v0, v3, &timeoutp);
      continue;
    }

LABEL_33:
    FigSemaphoreWaitRelative();
  }

  v0 = v8;
  goto LABEL_8;
}

void *OUTLINED_FUNCTION_0_19()
{

  return malloc_type_calloc(1uLL, 0x70uLL, 0x10A20409309F963uLL);
}

uint64_t OUTLINED_FUNCTION_1_17(int a1)
{
  *v1 = a1;
  *(v1 + 8) = v4;
  *(v1 + 16) = v3;
  *(v1 + 24) = v2;
  return v1;
}

uint64_t FPSupport_CheckPlayerPerformanceTrace()
{
  fig_note_initialize_category_with_default_work_cf();

  return fig_note_initialize_category_with_default_work_cf();
}

void FPSupport_TracePlayerPerformanceDictionary(uint64_t a1, void *a2)
{
  v2 = FPSupport_CopyDictionaryDescriptionAsCFString(a2);
  if (dword_1EAF16BB0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v2)
  {
    CFRelease(v2);
  }
}

uint64_t FigByteFlumeGetTypeID()
{
  MEMORY[0x19A8D3660](&FigByteFlumeGetClassID_sRegisterFigByteFlumeBaseTypeOnce, RegisterFigByteFlumeBaseType);

  return CMBaseClassGetCFTypeID();
}

uint64_t FigTTMLFeaturesCreate(const __CFAllocator *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a4)
  {
    FigTTMLNodeGetClassID();
    v8 = CMDerivedObjectCreate();
    if (v8)
    {
      return v8;
    }

    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v8 = FigTTMLInitializeNodeBaseStorage(DerivedStorage, a3);
    if (v8)
    {
      return v8;
    }

    v8 = FigTTMLAddCurrentElementAttributesToDictionary(a2, *(DerivedStorage + 24));
    if (v8)
    {
      return v8;
    }

    else
    {
      Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
      *(DerivedStorage + 144) = Mutable;
      if (Mutable)
      {
        *a3 = 0;
        *(a3 + 8) = 0;
        FigTTMLParseNode(a2, figTTMLFeaturesConsumeChildNode, a3);
        v12 = v11;
        if (!v11)
        {
          *a4 = 0;
        }
      }

      else
      {
        FigTTMLFeaturesCreate_cold_1(&v14);
        return v14;
      }
    }
  }

  else
  {
    FigTTMLFeaturesCreate_cold_2(&v14);
    return v14;
  }

  return v12;
}

void figTTMLFeatures_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 144);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 144) = 0;
  }

  FigTTMLReleaseNodeBaseStorage(DerivedStorage);
}

CFStringRef figTTMLFeatures_CopyDebugDesc()
{
  CMBaseObjectGetDerivedStorage();
  v0 = FigCFCopyCompactDescription();
  v1 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"features: %@", v0);
  if (v0)
  {
    CFRelease(v0);
  }

  return v1;
}

uint64_t figTTMLFeatures_CopyChildNodeArray(const void *a1, __CFArray **a2)
{
  v3 = CFGetAllocator(a1);
  Mutable = CFArrayCreateMutable(v3, 0, MEMORY[0x1E695E9C0]);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v6 = *(DerivedStorage + 144);
    if (v6)
    {
      v7.length = CFArrayGetCount(*(DerivedStorage + 144));
    }

    else
    {
      v7.length = 0;
    }

    v7.location = 0;
    CFArrayAppendArray(Mutable, v6, v7);
    v8 = 0;
    *a2 = Mutable;
  }

  else
  {
    v8 = FigSignalErrorAtGM();
    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  return v8;
}

uint64_t figTTMLFeatures_GetNodeType(uint64_t a1, _DWORD *a2)
{
  if (a2)
  {
    result = 0;
    *a2 = 16;
  }

  else
  {
    v6 = v2;
    v7 = v3;
    figTTMLFeatures_GetNodeType_cold_1(&v5);
    return v5;
  }

  return result;
}

uint64_t remoteXPCAIG_DeadConnectionCallback()
{
  result = CMBaseObjectGetDerivedStorage();
  *(result + 9) = 1;
  return result;
}

uint64_t remoteXPCAIG_NotificationFilter(int a1, CFTypeRef cf1, void *a3, uint64_t a4, CFDictionaryRef *a5)
{
  v24[1] = *MEMORY[0x1E69E9840];
  cf = 0;
  if (CFEqual(cf1, @"AIGDidGenerateCGImage"))
  {
    v9 = &v20;
    memset(&v17[1], 0, sizeof(CMTime));
    v10 = &v23;
    v23 = 0;
    v24[0] = 0;
    v20 = 0;
    v21 = 0;
    if (remoteXPCAIG_CopyCGImageFromMessage(a3))
    {
      v7 = 1;
    }

    else
    {
      keys = @"CGImage";
      values = cf;
      if (FigXPCMessageGetCMTime())
      {
        v11 = 0;
        v12 = 1;
      }

      else
      {
        v9 = &v21;
        v10 = v24;
        v13 = *MEMORY[0x1E695E480];
        v17[0] = v17[1];
        v11 = CMTimeCopyAsDictionary(v17, v13);
        v23 = @"FigTime";
        v20 = v11;
        v12 = 2;
      }

      value = xpc_dictionary_get_value(a3, "RequestID");
      if (value)
      {
        v17[0].value = xpc_int64_get_value(value);
        v15 = *MEMORY[0x1E695E480];
        v16 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, v17);
        *v10 = @"RequestID";
        *v9 = v16;
        *a5 = CFDictionaryCreate(v15, &keys, &values, v12 + 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (v16)
        {
          CFRelease(v16);
        }
      }

      else
      {
        *a5 = CFDictionaryCreate(*MEMORY[0x1E695E480], &keys, &values, v12, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      }

      if (v11)
      {
        CFRelease(v11);
      }

      v7 = 4;
    }
  }

  else
  {
    v7 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v7;
}

__CFString *remoteXPCAIG_CopyDebugDesc(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  v5 = CFGetRetainCount(a1);
  v6 = "";
  if (*(DerivedStorage + 8))
  {
    v7 = " (invalidated)";
  }

  else
  {
    v7 = "";
  }

  if (*(DerivedStorage + 9))
  {
    v6 = "SERVER DIED";
  }

  CFStringAppendFormat(Mutable, 0, @"<FigAssetImageGeneratorRemote(XPC) %p retainCount: %ld%s ObjectID: %016llx%s>", a1, v5, v7, *DerivedStorage, v6);
  return Mutable;
}

uint64_t remoteXPCAIG_GetObjectID(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 8))
  {
    remoteXPCAIG_GetObjectID_cold_1(&v6);
    return v6;
  }

  else
  {
    v4 = DerivedStorage;
    if (*(DerivedStorage + 9))
    {
      remoteXPCAIG_GetObjectID_cold_2(&v7);
      return v7;
    }

    else
    {
      result = 0;
      *a2 = *v4;
    }
  }

  return result;
}

uint64_t crabsUpdateLength(uint64_t a1, uint64_t a2)
{
  number = 0;
  FigBaseObject = FigByteFlumeGetFigBaseObject(a2);
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v4)
  {
    return 4294954514;
  }

  v5 = v4(FigBaseObject, @"FBF_EntireLength", *MEMORY[0x1E695E480], &number);
  v6 = number;
  if (v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = number == 0;
  }

  if (v7)
  {
    v8 = 0;
    if (number)
    {
LABEL_11:
      CFRelease(v6);
    }
  }

  else
  {
    v10 = 0;
    CFNumberGetValue(number, kCFNumberSInt64Type, &v10);
    v6 = number;
    v8 = v10 & ~(v10 >> 63);
    v5 = (v10 >> 63) & 0xFFFFCE11;
    if (number)
    {
      goto LABEL_11;
    }
  }

  if (!v5)
  {
    *(a1 + 56) = v8;
  }

  return v5;
}

uint64_t crabsDiskBackingIsBusy(uint64_t a1, int a2)
{
  result = *(a1 + 24);
  if (result | a2)
  {
    cf = 0;
    *(a1 + 24) = 0;
    FigBaseObject = FigDiskCacheProviderGetFigBaseObject(*(a1 + 8));
    v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v5)
    {
      v6 = v5(FigBaseObject, @"CacheIsBusy", *MEMORY[0x1E695E480], &cf);
      v7 = cf;
      if (v6)
      {
        v8 = 0;
      }

      else
      {
        v8 = cf == *MEMORY[0x1E695E4D0];
      }

      if (v8)
      {
        *(a1 + 24) = 1;
      }

      if (v7)
      {
        CFRelease(v7);
      }
    }

    return *(a1 + 24);
  }

  return result;
}

uint64_t crabsInitialize(uint64_t a1)
{
  if (*(a1 + 80))
  {
    return 0;
  }

  cf[7] = v1;
  cf[8] = v2;
  v5 = *(a1 + 56);
  if (v5 == -1)
  {
    return 0;
  }

  v6 = 0x10000;
  if (v5 < 6291456)
  {
    v6 = 0x4000;
  }

  *(a1 + 96) = v6;
  v7 = (v5 + v6 - 1) / v6;
  v8 = malloc_type_calloc(v7, 8uLL, 0x2004093837F09uLL);
  *(a1 + 80) = v8;
  if (v8)
  {
    *(a1 + 88) = v7;
    if (*(a1 + 168) || (v9 = FigReadWriteLockCreate(), (*(a1 + 168) = v9) != 0))
    {
      v10 = malloc_type_calloc(1uLL, *(a1 + 96), 0x7F6EECD7uLL);
      *(a1 + 152) = v10;
      if (v10)
      {
        *(a1 + 160) = -1;
        v11 = *(a1 + 88);
        *(a1 + 232) = v11;
        *(a1 + 360) = v11;
        if (*(a1 + 184) >= 1)
        {
          v12 = 0;
          v13 = *(a1 + 192);
          do
          {
            *(v13 + 8 * v12++) = v11;
          }

          while (v12 < *(a1 + 184));
        }

        *&v14 = -1;
        *(&v14 + 1) = -1;
        *(a1 + 424) = v14;
        *(a1 + 440) = v14;
        *(a1 + 472) = (*(a1 + 96) + 0x3FFFFFLL) / *(a1 + 96);
        *(a1 + 480) = 4;
        if (!*(a1 + 8))
        {
          return 0;
        }

        v42 = 0;
        cf[0] = 0;
        v15 = *MEMORY[0x1E695E480];
        SInt64 = FigCFNumberCreateSInt64();
        FigBaseObject = FigDiskCacheProviderGetFigBaseObject(*(a1 + 8));
        v18 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v18)
        {
          v18(FigBaseObject, @"CacheSize", SInt64);
        }

        v19 = FigCFNumberCreateSInt64();
        if (v19)
        {
          v20 = v19;
          v21 = FigDiskCacheProviderGetFigBaseObject(*(a1 + 8));
          v22 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v22)
          {
            v22(v21, @"CacheBlockSize", v20);
          }

          CFRelease(v20);
        }

        valuePtr = 16;
        v23 = CFNumberCreate(v15, kCFNumberSInt32Type, &valuePtr);
        if (v23)
        {
          v24 = v23;
          v25 = FigDiskCacheProviderGetFigBaseObject(*(a1 + 8));
          v26 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v26)
          {
            v26(v25, @"CacheMapEntrySize", v24);
          }

          CFRelease(v24);
        }

        if ((*(a1 + 504) & 4) == 0)
        {
          v27 = FigDiskCacheProviderGetFigBaseObject(*(a1 + 8));
          v28 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v28)
          {
            if (!v28(v27, @"CacheIdentifier", v15, cf))
            {
              v29 = *(a1 + 32);
              v30 = cf[0];
              v31 = *(*(CMBaseObjectGetVTable() + 16) + 32);
              if (v31 && v31(v29, v30))
              {
                v32 = FigDiskCacheProviderGetFigBaseObject(*(a1 + 8));
                if (!CMBaseObjectCopyProperty(v32, @"CacheMap", v15, &v42))
                {
                  BackingFile = FigDiskCacheProviderGetBackingFile(*(a1 + 8));
                  if (BackingFile)
                  {
                    crabsRestoreCache(a1, v42, BackingFile, *(a1 + 56));
                    if (v34)
                    {
                      v35 = FigDiskCacheProviderGetFigBaseObject(*(a1 + 8));
                      CMBaseObjectSetProperty(v35, @"CacheMap", 0);
                    }
                  }
                }

LABEL_38:
                if (cf[0])
                {
                  CFRelease(cf[0]);
                }

                if (v42)
                {
                  CFRelease(v42);
                }

                if (SInt64)
                {
                  CFRelease(SInt64);
                }

                return 0;
              }

              v36 = FigDiskCacheProviderGetFigBaseObject(*(a1 + 8));
              CMBaseObjectSetProperty(v36, @"CacheMap", 0);
            }
          }
        }

        v38 = (a1 + 144);
        v37 = *(a1 + 144);
        if (v37)
        {
          CFRelease(v37);
          *v38 = 0;
        }

        v39 = *(a1 + 32);
        v40 = *(*(CMBaseObjectGetVTable() + 16) + 24);
        if (v40)
        {
          v40(v39, v38);
        }

        goto LABEL_38;
      }

      crabsInitialize_cold_1(cf);
    }

    else
    {
      crabsInitialize_cold_2(cf);
    }
  }

  else
  {
    crabsInitialize_cold_3(cf);
  }

  return LODWORD(cf[0]);
}

uint64_t FigCRABSPrintWorkingSet()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  printf("FigCRABSPrintWorkingSet stream [%p]", DerivedStorage);
  v1 = DerivedStorage[39];
  if (!v1)
  {
    return printf("<%d>\n", DerivedStorage[28]);
  }

  v2 = 1;
  do
  {
    while (*(v1 + 80) && DerivedStorage[28] == *v1)
    {
      printf("[%d] ", *v1);
      v2 = 0;
      v1 = *(v1 + 32);
      if (!v1)
      {
        goto LABEL_11;
      }
    }

    printf("%d ", *v1);
    v1 = *(v1 + 32);
  }

  while (v1);
  if (v2)
  {
    return printf("<%d>\n", DerivedStorage[28]);
  }

LABEL_11:

  return putchar(10);
}

void gdbShowCRABSStats()
{
  v13 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = 0u;
  v5 = 0u;
  v6 = 0u;
  v7 = 0u;
  keys[0] = CFRetain(@"cacheMemAllotted");
  v0 = *MEMORY[0x1E695E480];
  values[0] = FigCFNumberCreateSInt64();
  keys[1] = CFRetain(@"diskCacheAllotted");
  values[1] = FigCFNumberCreateSInt64();
  v1 = CFDictionaryCreate(v0, keys, values, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  for (i = 1; i != -1; --i)
  {
    CFRelease(keys[i]);
    CFRelease(values[i]);
  }

  puts(" Statistics for FigByteStream_CRABS:");
  CFShow(v1);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t *gdbDumpCRABSWorkingSet(uint64_t *result)
{
  for (i = *result; i; i = *(i + 32))
  {
    result = printf(" Mem block %d has MemIsland <%p>\n", *i, *(i + 80));
  }

  return result;
}

__CFString *FigCRABSCopyDebugDescription()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  FigRetainProxyLockMutex();
  if (DerivedStorage[7] == -1 || (v2 = DerivedStorage[10]) == 0)
  {
    CFStringAppendFormat(Mutable, 0, @"FigByteStream_CRABS: Uninitialized");
  }

  else
  {
    v3 = DerivedStorage[11];
    if (v3 < 1)
    {
      v9 = 0;
      v8 = 0;
      v7 = 0;
      v6 = 0;
      v5 = 0;
      v4 = 0;
    }

    else
    {
      v4 = 0;
      v5 = 0;
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v9 = 0;
      do
      {
        v10 = *v2;
        if (*v2)
        {
          v11 = *(v10 + 10);
          if (v11)
          {
            v5 = (v5 + 1);
            if (*(v11 + 24) <= 0)
            {
              v8 = v8;
            }

            else
            {
              v8 = (v8 + 1);
            }
          }

          v12 = *(v10 + 4);
          if ((v12 & 0x200) != 0)
          {
            v13 = (v12 >> 8) & 1;
          }

          else
          {
            v13 = *(v10 + 11) != 0;
          }

          v9 = (v9 + 1);
          v4 = (v13 + v4);
          if (DerivedStorage[28] <= *v10)
          {
            v6 = (v6 + 1);
          }

          else
          {
            v7 = (v7 + 1);
          }
        }

        ++v2;
        --v3;
      }

      while (v3);
    }

    CFStringAppendFormat(Mutable, 0, @"FigByteStream_CRABS: \n\t\t# active cache blocks <%d>\n\t\t# in-memory cache blocks <%d>\n\t\t# referenced cache blocks <%d>\n\t\t# on disk <%d>\n\t\t# in state Backfill <%d>\n\t\t# in state Follows Hints <%d>", v9, v5, v8, v4, v7, v6);
  }

  FigRetainProxyUnlockMutex();
  return Mutable;
}

uint64_t crabsCompleteLazySync(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v13 = 0;
  if (!*(a1 + 728))
  {
    return 0;
  }

  if (a2)
  {
    FigAIOBlockUntilReady(*(a1 + 720), *(a1 + 736), 0);
  }

  v12 = 0;
  v3 = FigAIOTryToComplete(*(a1 + 720), *(a1 + 736), &v13, &v12);
  v4 = v13;
  if (v3)
  {
    v5 = a1 + 728;
    if (v13)
    {
      if (v13 == 69 || v13 == 28)
      {
        *(a1 + 135) = 1;
        if (*(a1 + 112))
        {
          *(a1 + 112) = 0;
          *(a1 + 176) |= 8u;
          if (dword_1EAF16BD0)
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }
        }
      }

      *(*v5 + 8) |= 8u;
      FigSignalErrorAtGM();
    }

    v7 = *v5;
    if ((*(*v5 + 8) & 8) != 0)
    {
      v10 = 1;
    }

    else
    {
      v8 = *v7;
      v9 = *(a1 + 224);
      v10 = v9 <= v8 && v9 + *(a1 + 344) / 4 > v8;
    }

    crabsReleaseWorking(a1, v7, v10, 1);
    *v5 = 0;
    *(a1 + 736) = 0;
    return v13;
  }

  return v4;
}

uint64_t crabsCompleteLazyPagein(uint64_t a1, int a2)
{
  v7 = 0;
  if (!*(a1 + 744))
  {
    return 0;
  }

  if (a2)
  {
    FigAIOBlockUntilReady(*(a1 + 720), *(a1 + 752), 0);
  }

  v6 = 0;
  v3 = FigAIOTryToComplete(*(a1 + 720), *(a1 + 752), &v7, &v6);
  result = v7;
  if (v3)
  {
    if (v7)
    {
      crabsMarkBlockUnbacked(a1, *(a1 + 744), *(a1 + 224) <= **(a1 + 744));
    }

    crabsReleaseWorking(a1, *(a1 + 744), 1, 1);
    v5 = *(a1 + 744);
    if ((~*(v5 + 8) & 5) == 0)
    {
      crabsUnhint(a1, v5);
    }

    *(a1 + 744) = 0;
    *(a1 + 752) = 0;
    return v7;
  }

  return result;
}

uint64_t crabsSyncCache(uint64_t a1)
{
  v2 = *(a1 + 504);
  if ((v2 & 5) == 4 && !*(a1 + 136))
  {
    return 0;
  }

  v3 = *(a1 + 88);
  if ((v2 & 1) == 0)
  {
    if (v3 >= 1)
    {
      v4 = 0;
      v5 = 0;
      while (1)
      {
        v6 = *(*(a1 + 80) + 8 * v4);
        if (v6)
        {
          break;
        }

LABEL_35:
        if (v3 <= ++v4)
        {
          goto LABEL_58;
        }
      }

      v7 = *(v6 + 4);
      if ((v7 & 0x80) != 0 && ((v7 & 0x40) != 0 || *(a1 + 136)))
      {
        crabsMakeBackingNonvolatile(a1, v6, *(a1 + 224) <= *v6);
        v7 = *(v6 + 4);
      }

      if ((v7 & 0x10) != 0)
      {
        if ((v7 & 0x100) != 0)
        {
          goto LABEL_20;
        }
      }

      else if ((v7 & 0x100) != 0 || !*(a1 + 136))
      {
        goto LABEL_20;
      }

      v8 = *(a1 + 8);
      if (v8)
      {
        v9 = *(a1 + 96);
        v10 = *v6;
        v11 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (v11)
        {
          if (v11(v8, v9, v9 * v10, a1 + 16, v6 + 24))
          {
            *(v6 + 4) |= 0x140u;
          }
        }
      }

LABEL_20:
      v12 = *(v6 + 4);
      if ((v12 & 0x40) != 0)
      {
        if (*(v6 + 10))
        {
          v36 = 0;
LABEL_28:
          v13 = v6[1];
          v14 = FigFileForkWrite();
          if (v14)
          {
            v15 = 0;
          }

          else
          {
            v15 = v36 == v13;
          }

          if (!v15)
          {
            goto LABEL_77;
          }

          v12 = v6[2] & 0xFFBF;
          *(v6 + 4) &= ~0x40u;
          goto LABEL_34;
        }

        if ((v12 & 0x200) == 0)
        {
          if (!*(v6 + 11))
          {
            goto LABEL_34;
          }

LABEL_27:
          v36 = 0;
          goto LABEL_28;
        }

        if ((v12 >> 8))
        {
          goto LABEL_27;
        }
      }

LABEL_34:
      v5 += (v12 >> 8) & 1;
      v3 = *(a1 + 88);
      goto LABEL_35;
    }

    goto LABEL_57;
  }

  if (v3 >= 1)
  {
    v16 = 0;
    v5 = 0;
    while (1)
    {
      v17 = *(*(a1 + 80) + 8 * v16);
      if (v17)
      {
        break;
      }

LABEL_55:
      if (v3 <= ++v16)
      {
        goto LABEL_58;
      }
    }

    if (!*(v17 + 80))
    {
      goto LABEL_54;
    }

    v18 = *(v17 + 8);
    if ((v18 & 8) == 0 && v17 != *(a1 + 728))
    {
      goto LABEL_54;
    }

    if ((v18 & 0x200) != 0)
    {
      if (((v18 >> 8) & 1) == 0)
      {
        goto LABEL_47;
      }
    }

    else if (!*(v17 + 88))
    {
LABEL_47:
      if (crabsAllocBacking(a1, v17))
      {
        crabsAddBlockToBackedList(a1, v17);
      }
    }

    v19 = *(v17 + 8);
    if ((v19 & 0x200) == 0)
    {
      if (!*(v17 + 88))
      {
        goto LABEL_54;
      }

LABEL_53:
      v14 = crabsSyncBlock(a1, v17);
      if (v14)
      {
LABEL_77:
        v29 = v14;
        v28 = 0;
        goto LABEL_68;
      }

      goto LABEL_54;
    }

    if ((v19 >> 8))
    {
      goto LABEL_53;
    }

LABEL_54:
    v5 += HIBYTE(*(v17 + 8)) & 1;
    v3 = *(a1 + 88);
    goto LABEL_55;
  }

LABEL_57:
  v5 = 0;
LABEL_58:
  v20 = 16 * v5;
  v21 = malloc_type_malloc(v20 + 16, 0xE6E88954uLL);
  if (v21)
  {
    v22 = v21;
    *v21 = 0x6261726305000000;
    *(v21 + 2) = bswap32(*(a1 + 96));
    *(v21 + 3) = bswap32(v5);
    v23 = *(a1 + 88);
    if (v23 >= 1)
    {
      v24 = 0;
      v25 = v21 + 16;
      v26 = *(a1 + 80);
      do
      {
        v27 = *(v26 + 8 * v24);
        if (v27 && (*(v27 + 8) & 0x100) != 0)
        {
          *(v25 + 1) = bswap64(*(v27 + 96));
          *v25 = bswap32(v24);
          *(v25 + 1) = bswap32(*(v27 + 4));
          v25 += 16;
        }

        ++v24;
      }

      while (v23 != v24);
    }

    v28 = CFDataCreate(*MEMORY[0x1E695E480], v21, v20 + 16);
    if (v28)
    {
      v29 = 0;
    }

    else
    {
      crabsSyncCache_cold_1(&v36);
      v29 = v36;
    }

    free(v22);
  }

  else
  {
    crabsSyncCache_cold_2(&v36);
    v28 = 0;
    v29 = v36;
  }

LABEL_68:
  v30 = *(a1 + 144);
  if (v30)
  {
    FigBaseObject = FigDiskCacheProviderGetFigBaseObject(*(a1 + 8));
    v32 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v32)
    {
      v32(FigBaseObject, @"CacheIdentifier", v30);
    }
  }

  v33 = FigDiskCacheProviderGetFigBaseObject(*(a1 + 8));
  v34 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v34)
  {
    v34(v33, @"CacheMap", v28);
  }

  if (v28)
  {
    CFRelease(v28);
  }

  return v29;
}

void crabsReleaseDiskCacheProviderAsync(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    os_release(v3);
  }

  free(a1);
}

uint64_t crabsRetainProxyUnlockWithActions()
{
  if (FigRetainProxyIsInvalidated())
  {

    return FigRetainProxyUnlockMutex();
  }

  else
  {
    FigRetainProxyGetOwner();
    DerivedStorage = CMBaseObjectGetDerivedStorage();

    return crabsUnlockWithActions(DerivedStorage);
  }
}

uint64_t crabsDeferredUnlockWithActions()
{
  values[16] = *MEMORY[0x1E69E9840];
  FigRetainProxyLockMutex();
  Owner = FigRetainProxyGetOwner();
  if (FigRetainProxyIsInvalidated())
  {
    FigRetainProxyUnlockMutex();
    goto LABEL_35;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = DerivedStorage;
  if (*(DerivedStorage + 104))
  {
    v3 = *(DerivedStorage + 176);
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  v4 = *(DerivedStorage + 24);
  v5 = *(DerivedStorage + 135);
  *(DerivedStorage + 176) = 0;
  FigRetainProxyUnlockMutex();
  if ((v3 & 4) != 0)
  {
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
  }

  v6 = MEMORY[0x1E695E480];
  if ((v3 & 3) != 0)
  {
    v7 = CFDictionaryCreate(*MEMORY[0x1E695E480], 0, 0, 0, 0, 0);
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    if (v7)
    {
      CFRelease(v7);
    }
  }

  if ((v3 & 8) != 0)
  {
    cf = 0;
    *type = 0;
    if (v4)
    {
      v19 = @"Cache is Busy";
      v20 = -12542;
    }

    else
    {
      if (!v5)
      {
        v18 = 0;
LABEL_44:
        crabsReportingIssueEvent(v2, 401);
        crabsReportingIssueIRATEventIfNeeded(v2, 801);
        if (dword_1EAF16BD0)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterPostNotification();
        if (cf)
        {
          CFRelease(cf);
        }

        if (v18)
        {
          CFRelease(v18);
        }

        goto LABEL_12;
      }

      v19 = @"Disk is Full";
      v20 = -12541;
    }

    *type = v20;
    v21 = *v6;
    cf = CFNumberCreate(*v6, kCFNumberSInt32Type, type);
    v18 = CFDictionaryCreate(v21, kFigCachedReadAheadByteStreamParameter_StatusCode, &cf, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    crabsReportingReportError(v2, @"CoreMediaErrorDomain", v19, *type);
    goto LABEL_44;
  }

LABEL_12:
  if ((v3 & 0x20) != 0)
  {
    if (dword_1EAF16BD0)
    {
      LODWORD(cf) = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v9 = cf;
      if (os_log_type_enabled(v8, type[0]))
      {
        v10 = v9;
      }

      else
      {
        v10 = v9 & 0xFFFFFFFE;
      }

      if (v10)
      {
        v25 = 136315394;
        v26 = "crabsDeferredUnlockWithActions";
        v27 = 2048;
        v28 = v2;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v11 = *(v2 + 952);
    if (*(v2 + 944))
    {
      if (!v11)
      {
        v12 = *v6;
        values[0] = CFNumberCreate(*v6, kCFNumberIntType, (v2 + 944));
        v13 = CFDictionaryCreate(v12, kFigCachedReadAheadByteStreamParameter_ReadResult, values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (values[0])
        {
          CFRelease(values[0]);
        }

        goto LABEL_26;
      }

LABEL_25:
      v13 = CFDictionaryCreate(*v6, kFigCachedReadAheadByteStreamParameter_ReadCFError, (v2 + 952), 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
LABEL_26:
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();
      crabsReportingReportError(v2, @"CoreMediaErrorDomain", @"CRABS Read Error", *(v2 + 944));
      v14 = *(v2 + 952);
      if (v14)
      {
        CFRelease(v14);
        *(v2 + 952) = 0;
      }

      *(v2 + 944) = 0;
      if (v13)
      {
        CFRelease(v13);
      }

      goto LABEL_30;
    }

    if (v11)
    {
      goto LABEL_25;
    }
  }

LABEL_30:
  if ((v3 & 0x40) != 0)
  {
    v15 = *v6;
    values[0] = CFNumberCreate(*v6, kCFNumberSInt32Type, (v2 + 108));
    v16 = CFDictionaryCreate(v15, kFigCachedReadAheadByteStreamParameter_ConnectionState, values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    if (values[0])
    {
      CFRelease(values[0]);
    }

    if (v16)
    {
      CFRelease(v16);
    }
  }

LABEL_35:
  if (Owner)
  {
    CFRelease(Owner);
  }

  return FigRetainProxyRelease();
}

void crabsReportingReportError(void *a1, const __CFString *a2, uint64_t a3, int a4)
{
  AllocatorForMedia = FigGetAllocatorForMedia();
  v9 = a4;
  v10 = CFErrorCreate(AllocatorForMedia, a2, a4, 0);
  cf = 0;
  if (a1)
  {
    if (a1[122])
    {
      v11 = FigGetAllocatorForMedia();
      FigMetricErrorEventCreate(v11, 1, v10, &cf);
      v12 = a1[122];
      v13 = cf;
      v14 = *(*(CMBaseObjectGetVTable() + 16) + 40);
      if (v14)
      {
        v14(v12, 0, v13);
      }
    }

    if (cf)
    {
      CFRelease(cf);
    }

    v15 = a1[115];
    if (v15)
    {
      v16 = *(*(CMBaseObjectGetVTable() + 16) + 48);
      if (v16)
      {
        v16(v15, 0x1F0B64598, 0x1F0B3F7B8, a3, 0);
      }

      v17 = a1[115];
      if (!v17)
      {
        goto LABEL_30;
      }

      v18 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v18)
      {
        v18(v17, 0x1F0B64598, 0x1F0B3F798, v9, 0);
      }

      v19 = a1[115];
      if (v19)
      {
        v20 = *(*(CMBaseObjectGetVTable() + 16) + 48);
        if (v20)
        {
          v20(v19, 0x1F0B64598, 0x1F0B3F7D8, a2, 0);
        }

        v21 = a1[115];
      }

      else
      {
LABEL_30:
        v21 = 0;
      }

      if (a1[7] == -1)
      {
        v22 = 1;
        if (!v21)
        {
LABEL_26:
          crabsReportingIssueEvent(a1, 402);
          goto LABEL_27;
        }
      }

      else
      {
        if (a1[10])
        {
          v22 = 2;
        }

        else
        {
          v22 = 1;
        }

        if (!v21)
        {
          goto LABEL_26;
        }
      }

      v23 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v23)
      {
        v23(v21, 0x1F0B64598, 0x1F0B3F818, v22, 0);
      }

      goto LABEL_26;
    }
  }

LABEL_27:
  if (v10)
  {
    CFRelease(v10);
  }
}

uint64_t crabsReportingIssueEvent(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = *(result + 920);
    if (v2)
    {
      VTable = CMBaseObjectGetVTable();
      v5 = *(VTable + 16);
      result = VTable + 16;
      v6 = *(v5 + 8);
      if (v6)
      {

        return v6(v2, 0x1F0B64598, a2, 0, 0);
      }
    }
  }

  return result;
}

uint64_t crabsMarkBlockUnbacked(uint64_t a1, int *a2, int a3)
{
  v6 = a2[1];
  result = crabsMarkBlockUnfilled(a1, a2);
  *(a2 + 12) = -1;
  v8 = *(a2 + 4);
  *(a2 + 4) = v8 & 0xFEFF;
  ++*(a1 + 408);
  if ((v8 & 0x11) == 0)
  {
    v9 = *(a2 + 6);
    v10 = *(a2 + 7);
    if (*(a2 + 3) != 0)
    {
      v11 = 264;
      if (!a3)
      {
        v11 = 280;
      }

      v12 = (a1 + v11 + 8);
      if (v9)
      {
        v12 = (v9 + 56);
      }

      *v12 = v10;
      *v10 = v9;
      *(a2 + 6) = 0;
      *(a2 + 7) = 0;
      if (a3)
      {
        *(a2 + 4) = v8 & 0xEEEE;
      }
    }
  }

  v13 = *a2;
  v14 = *(a1 + 224);
  if (v14 <= v13)
  {
    v15 = *(a1 + 240);
    if (v15 < v14 || v15 > v13)
    {
      *(a1 + 240) = v13;
    }
  }

  if (v6)
  {
    if (*(a1 + 128))
    {
      v17 = 1;
    }

    else
    {
      v17 = v14 <= v13;
    }

    if (v17)
    {
      v18 = 2;
    }

    else
    {
      v18 = 1;
    }

    *(a1 + 176) |= v18;
    *(a1 + 128) = 0;
  }

  return result;
}

uint64_t crabsEnsureInitialized(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigRetainProxyLockMutex();
  v3 = *(DerivedStorage + 56) != -1 && *(DerivedStorage + 80) != 0;
  FigRetainProxyUnlockMutex();
  IsInvalidated = FigRetainProxyIsInvalidated();
  if (IsInvalidated)
  {
    result = 4294954511;
  }

  else
  {
    result = 0;
  }

  if (!IsInvalidated && !v3)
  {
    LODWORD(result) = readOrRef(a1, 1uLL, 0, 0, 0, 0, -1);
    if (result == -12873)
    {
      return 0;
    }

    else
    {
      return result;
    }
  }

  return result;
}

void crabsReleaseReadAheadAssertion(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!FigRetainProxyLockMutex())
  {
    if (dword_1EAF16BD0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v4 = *(DerivedStorage + 116) - 1;
    *(DerivedStorage + 116) = v4;
    if (!v4)
    {
      crabsReportingIssueIRATEventIfNeeded(DerivedStorage, 801);
    }

    FigRetainProxyUnlockMutex();
  }

  if (a1)
  {
    CFRelease(a1);
  }
}

BOOL crabsIsEntireLengthAvailableInCache(uint64_t a1)
{
  v4 = 0;
  v2 = crabsSelectNextFill(a1, &v4);
  result = 0;
  if (!v2 && !v4)
  {
    return *(a1 + 130) != 0;
  }

  return result;
}

uint64_t crabsShouldStartFirehose(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 134))
  {
    return 1;
  }

  v4 = *(a1 + 88);
  v5 = 0x200000 / *(a1 + 96);
  if (v5 < 1 || v4 <= a2)
  {
    v7 = 0;
  }

  else
  {
    v9 = 0;
    while (1)
    {
      v10 = *(*(a1 + 80) + 8 * a2 + 8 * v9);
      if (v10)
      {
        if ((*(v10 + 8) & 4) != 0)
        {
          break;
        }
      }

      v7 = v9 + 1;
      if (a2 + 1 + v9 < v4)
      {
        ++v9;
        if (v7 < v5)
        {
          continue;
        }
      }

      goto LABEL_15;
    }

    v7 = v9;
  }

LABEL_15:
  if ((*(a1 + 504) & 3) != 0)
  {
    goto LABEL_22;
  }

  v11 = 2 * *(a1 + 480);
  if (v11 >= *(a1 + 472))
  {
    v11 = *(a1 + 472);
  }

  v12 = v11 + v7;
  v13 = v4 - a2;
  v7 = v12 >= v13 ? v13 : v12;
  result = crabsEnsureSafetyMargin(a1, a2);
  if (result)
  {
LABEL_22:
    result = crabsAllocateMoreBacking(a1, a2, v7, *(a1 + 224) > a2);
  }

  *(a1 + 134) = result ^ 1;
  return result;
}

uint64_t crabsWaitForLoadAbort(uint64_t a1)
{
  if (dword_1EAF16BD0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigRetainProxyLockMutex();
  *(a1 + 16) = -12871;
  MEMORY[0x19A8D12E0](*a1);
  return FigRetainProxyUnlockMutex();
}

BOOL crabsRangeInBlockIsCached(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 96);
  if (v3 == 0x4000)
  {
    v4 = a2 >> 14;
  }

  else if (v3 == 0x10000)
  {
    v4 = a2 >> 16;
  }

  else
  {
    v4 = a2 / v3;
  }

  v5 = *(*(a1 + 80) + 8 * v4);
  return v5 && v5[1] + v3 * *v5 >= a3 + a2;
}

BOOL crabsEnsureSafetyMargin(void *a1, uint64_t a2)
{
  v4 = 2 * a1[60];
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  crabsPurgeCompletionSweep(a1);
  if (v4 >= a1[11] + ~a2)
  {
    v4 = a1[11] + ~a2;
  }

  if (crabsHasSafetyMargin(a1, a2, v4))
  {
    return 1;
  }

  v7 = a1[61];
  if (v7 && UpTimeNanoseconds < v7)
  {
    return 0;
  }

  if (a1[59] >= a1[11] + ~a2)
  {
    v8 = a1[11] + ~a2;
  }

  else
  {
    v8 = a1[59];
  }

  if (crabsAllocateMoreBacking(a1, a2, v8, a1[28] > a2))
  {
    a1[61] = 0;
    return 1;
  }

  a1[61] = UpTimeNanoseconds + 1090000000;

  return crabsHasSafetyMargin(a1, a2, v4);
}

BOOL crabsBlockIsAKeeper(void *a1, int *a2)
{
  if ((a2[2] & 0x10) != 0)
  {
    return 1;
  }

  v2 = a1[28];
  v3 = *a2;
  if (**(a1[36] + 8) && v2 <= v3)
  {
    return 1;
  }

  v5 = **(a1[34] + 8);
  if (!v5)
  {
    return 1;
  }

  if (v2 <= v3)
  {
    return v3 <= *v5;
  }

  return 0;
}

uint64_t crabsSwipeBacking(uint64_t a1, uint64_t a2, int a3)
{
  v6 = **(*(a1 + 288) + 8);
  if (v6)
  {
    while (1)
    {
      v7 = *(v6 + 7);
      v8 = **(v7 + 8);
      v9 = *(v6 + 4);
      if ((v9 & 0x400) == 0)
      {
        if ((v9 & 0x80) == 0)
        {
          goto LABEL_17;
        }

        if (crabsMakeBackingNonvolatile(a1, v6, 0))
        {
          break;
        }
      }

      v6 = v8;
      if (!v8)
      {
        goto LABEL_6;
      }
    }

    v7 = *(v6 + 7);
LABEL_17:
    v14 = *(v6 + 6);
    if (v14 | v7)
    {
      v15 = (v14 + 56);
      if (!v14)
      {
        v15 = (a1 + 288);
      }

      *v15 = v7;
      *v7 = v14;
      *(v6 + 6) = 0;
      *(v6 + 7) = 0;
    }
  }

  else
  {
LABEL_6:
    if (a3 || (v6 = **(*(a1 + 272) + 8)) == 0)
    {
LABEL_7:

      return FigSignalErrorAtGM();
    }

    while (1)
    {
      v11 = *(v6 + 7);
      v12 = **(v11 + 8);
      v13 = *(v6 + 4);
      if ((v13 & 0x400) == 0)
      {
        if ((v13 & 0x80) == 0)
        {
          goto LABEL_22;
        }

        if (crabsMakeBackingNonvolatile(a1, v6, 1))
        {
          break;
        }
      }

      v6 = v12;
      if (!v12)
      {
        goto LABEL_7;
      }
    }

    v11 = *(v6 + 7);
LABEL_22:
    v16 = *(v6 + 6);
    if (v16 | v11)
    {
      v17 = (v16 + 56);
      if (!v16)
      {
        v17 = (a1 + 272);
      }

      *v17 = v11;
      *v11 = v16;
      *(v6 + 6) = 0;
      *(v6 + 7) = 0;
      *(v6 + 4) &= ~0x1000u;
    }
  }

  v18 = *(a1 + 504);
  if (v18)
  {
    if (v6 == *(a1 + 728))
    {
      crabsSyncBlock(a1, v6);
      v18 = *(a1 + 504);
    }

    *(a2 + 96) = *(v6 + 12);
    *(a2 + 8) |= 0x100u;
    *(v6 + 12) = -1;
    *(v6 + 4) &= ~0x100u;
  }

  else
  {
    *(a2 + 88) = *(v6 + 11);
    *(v6 + 11) = 0;
  }

  v19 = *(a1 + 224);
  *(a1 + 240) = v19;
  ++*(a1 + 408);
  if ((v18 & 1) == 0)
  {
    *(a1 + 132) = 0;
  }

  if (v6[1] >= 1)
  {
    if (*(v6 + 10))
    {
      *(v6 + 4) |= 8u;
    }

    if (*(a1 + 128))
    {
      v20 = 2;
    }

    else if (v19 > *v6)
    {
      v20 = 1;
    }

    else
    {
      v20 = 2;
    }

    *(a1 + 176) |= v20;
    *(a1 + 128) = 0;
  }

  crabsCleanupOrphan(a1, v6);
  return 0;
}

BOOL crabsHasSafetyMargin(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1[10] + 8 * a2);
  if (!v6)
  {
    if (crabsInitBlock(a1, a2))
    {
      v6 = 0;
    }

    else
    {
      v6 = *(a1[10] + 8 * a2);
    }
  }

  v7 = *(v6 + 4);
  if ((v7 & 0x200) == 0)
  {
    if (*(v6 + 11))
    {
      goto LABEL_7;
    }

    return 0;
  }

  if (((v7 >> 8) & 1) == 0)
  {
    return 0;
  }

LABEL_7:
  v8 = a1[28];
  if (v8 <= a2)
  {
    v9 = *(v6 + 6);
    v10 = a3 > 0;
    if (v9)
    {
      v11 = a3 < 1;
    }

    else
    {
      v11 = 1;
    }

    if (!v11)
    {
      do
      {
        a3 += *(v9 + 8) << 24 >> 31;
        v9 = *(v9 + 48);
        v10 = a3 != 0;
        if (v9)
        {
          v12 = a3 == 0;
        }

        else
        {
          v12 = 1;
        }
      }

      while (!v12);
    }

    if (!v10)
    {
      return a3 == 0;
    }

    v6 = a1[35];
  }

  if (a3 >= 1 && v6)
  {
    if (v8 <= *v6)
    {
      a3 = 1;
    }

    else
    {
      do
      {
        a3 += *(v6 + 4) << 24 >> 31;
        v6 = *(v6 + 6);
        if (v6)
        {
          v13 = a3 == 0;
        }

        else
        {
          v13 = 1;
        }
      }

      while (!v13);
    }
  }

  return a3 == 0;
}

uint64_t crabsAllocateMoreBacking(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = a3;
  v5 = a2;
  v6 = *(a1 + 224);
  if (v6 != a2 && a3 >= 1)
  {
    do
    {
      v11 = *(*(a1 + 80) + 8 * v5);
      if (!v11)
      {
        if (crabsInitBlock(a1, v5))
        {
          v11 = 0;
        }

        else
        {
          v11 = *(*(a1 + 80) + 8 * v5);
        }
      }

      v12 = *(v11 + 8);
      if ((v12 & 0x200) != 0)
      {
        if ((v12 >> 8))
        {
          goto LABEL_16;
        }
      }

      else if (*(v11 + 88))
      {
        goto LABEL_16;
      }

      if (!crabsAllocBacking(a1, v11))
      {
        v6 = *(a1 + 224);
        if (v5 < v6 || !crabsBlockIsAKeeper(a1, v11))
        {
          return v5 == v6;
        }

        if (crabsSwipeBacking(a1, v11, a4))
        {
          v6 = *(a1 + 224);
          return v5 == v6;
        }
      }

      crabsAddBlockToBackedList(a1, v11);
      if ((*(v11 + 8) & 0x11) == 0 && !*(v11 + 80))
      {
        if ((*(a1 + 504) & 3) == 0)
        {
          crabsMakeBlockVolatileRelativeToAnchor(a1, v11);
        }

LABEL_16:
        --v4;
      }

      v5 = (v5 + 1) % *(a1 + 88);
      v6 = *(a1 + 224);
    }

    while (v5 != v6 && v4 > 0);
  }

  if (v4)
  {
    return v5 == v6;
  }

  return 1;
}

uint64_t flushPendingReleaseSet(void *a1)
{
  FigSimpleMutexLock();
  for (i = **(a1[47] + 8); i; i = **(a1[47] + 8))
  {
    v3 = i[8];
    v4 = i[9];
    v5 = (v3 + 72);
    if (!v3)
    {
      v5 = a1 + 47;
    }

    *v5 = v4;
    *v4 = v3;
    i[8] = 0;
    i[9] = 0;
    v6 = i[10];
    if (v6 && !*(v6 + 24))
    {
      addToWorkingSet(a1, i, 1, 1);
      v7 = a1[12];
      *(&gCRABS_Stats + 1) += v7;
      a1[106] += v7;
    }
  }

  return FigSimpleMutexUnlock();
}

void crabsMakeCacheInFrontListVolatile(void *a1)
{
  v1 = **(a1[34] + 8);
  if (v1)
  {
    do
    {
      v3 = **(*(v1 + 56) + 8);
      crabsMakeBlockVolatileRelativeToAnchor(a1, v1);
      v1 = v3;
    }

    while (v3);
  }
}

float crabsMakeCacheInFrontListNonvolatile(void *a1)
{
  v2 = a1[33];
  if (v2)
  {
    do
    {
      v3 = *(v2 + 48);
      if ((*(v2 + 8) & 0x80) != 0 && !crabsMakeBackingNonvolatile(a1, v2, 1))
      {
        break;
      }

      v2 = v3;
    }

    while (v3);
  }

  return crabsPurgeCompletionSweep(a1);
}

uint64_t crabsCallCacheIterationCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7)
{
  v13 = *(a1 + 760);
  if (v13)
  {
    v14 = CFRetain(v13);
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_10:
    a5 = 0;
    v16 = 1;
    if (!a7)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v14 = 0;
  if (!a4)
  {
    goto LABEL_10;
  }

LABEL_3:
  FigRetainProxyUnlockMutex();
  LODWORD(a5) = (a5)(a6, a4, a3, a2);
  v15 = FigRetainProxyLockMutex();
  if (v15)
  {
    v16 = 0;
    if (a5)
    {
      a5 = a5;
    }

    else
    {
      a5 = v15;
    }

    if (!a7)
    {
      goto LABEL_12;
    }
  }

  else
  {
    IsInvalidated = FigRetainProxyIsInvalidated();
    v16 = 1;
    if (IsInvalidated)
    {
      a5 = 4294954511;
    }

    else
    {
      a5 = a5;
    }

    if (!a7)
    {
      goto LABEL_12;
    }
  }

LABEL_11:
  *a7 = v16;
LABEL_12:
  if (v14)
  {
    CFRelease(v14);
  }

  return a5;
}

uint64_t FigDiskCacheProviderGetBackingFile(uint64_t a1)
{
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v2)
  {
    return 0;
  }

  return v2(a1);
}

uint64_t OUTLINED_FUNCTION_14_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7)
{

  return crabsCallCacheIterationCallback(a1, a2, v9, v10, v7, v8, a7);
}

uint64_t OUTLINED_FUNCTION_15_4()
{

  return FigSignalErrorAt();
}

uint64_t OUTLINED_FUNCTION_17_4()
{

  return FigRetainProxyLockMutex();
}

uint64_t OUTLINED_FUNCTION_21_3()
{

  return FigByteStreamStatsLogOneRead();
}

uint64_t OUTLINED_FUNCTION_22_3()
{

  return CMBaseObjectGetDerivedStorage();
}

BOOL OUTLINED_FUNCTION_33_3(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, __int16 a26, char a27, os_log_type_t type, int a29)
{

  return os_log_type_enabled(a1, type);
}

uint64_t OUTLINED_FUNCTION_34_3()
{

  return CMBaseObjectGetVTable();
}

uint64_t FigCRABSScheduledIOEqual()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *CMBaseObjectGetDerivedStorage();
  v2 = *DerivedStorage;

  return CFEqual(v2, v1);
}

uint64_t FigCRABSScheduledIOCopyProperty(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  CMBaseObjectGetDerivedStorage();
  if (!CFEqual(a2, *MEMORY[0x1E6962E88]))
  {
    return 4294954512;
  }

  CMBaseObject = CMByteStreamGetCMBaseObject();
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v8)
  {
    return 4294954514;
  }

  v9 = *MEMORY[0x1E6960E08];

  return v8(CMBaseObject, v9, a3, a4);
}

uint64_t FigCRABSScheduledIOGetAvailableLengthAtOffset(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = FigCRABSGetByteStream(*DerivedStorage);
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v7)
  {
    return 4294954514;
  }

  return v7(v6, a2, a3);
}

void ttmlFormatReader_reportSkippedSyntaxElement(__CFArray *a1, CFArrayRef theArray)
{
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (Count >= 1)
    {
      v3 = 0;
      v4 = 0;
      Mutable = 0;
      v6 = *MEMORY[0x1E695E480];
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v4);
        if (Mutable)
        {
          CFRelease(Mutable);
        }

        if (v3)
        {
          CFRelease(v3);
        }

        Mutable = CFDictionaryCreateMutable(v6, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v3 = CFStringCreateWithFormat(v6, 0, @"The parser skipped a syntax element: %@", ValueAtIndex);
        FigCFDictionarySetInt32();
        FigCFDictionarySetInt32();
        FigCFDictionarySetValue();
        FigCFDictionarySetValue();
        CFArrayAppendValue(a1, Mutable);
        ++v4;
      }

      while (Count != v4);
      if (Mutable)
      {
        CFRelease(Mutable);
      }

      if (v3)
      {

        CFRelease(v3);
      }
    }
  }
}

void ttmlFormatReader_reportUnsupportedFeatures(__CFArray *a1, CFArrayRef theArray)
{
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (Count >= 1)
    {
      v3 = 0;
      v4 = 0;
      Mutable = 0;
      v6 = *MEMORY[0x1E695E480];
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v4);
        if (Mutable)
        {
          CFRelease(Mutable);
        }

        if (v3)
        {
          CFRelease(v3);
        }

        Mutable = CFDictionaryCreateMutable(v6, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v3 = CFStringCreateWithFormat(v6, 0, @"The parser doesn't support a feature/extension: %@", ValueAtIndex);
        FigCFDictionarySetInt32();
        FigCFDictionarySetInt32();
        FigCFDictionarySetValue();
        FigCFDictionarySetValue();
        CFArrayAppendValue(a1, Mutable);
        ++v4;
      }

      while (Count != v4);
      if (Mutable)
      {
        CFRelease(Mutable);
      }

      if (v3)
      {

        CFRelease(v3);
      }
    }
  }
}

void ttmlFormatReader_Finalize()
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

  v2 = *(DerivedStorage + 16);
  if (v2)
  {

    CFRelease(v2);
  }
}

__CFString *ttmlFormatReader_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<TTMLFormatReader %p>", a1);
  return Mutable;
}

uint64_t ttmlFormatReader_CopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    ttmlFormatReader_CopyProperty_cold_2(&v16);
    return v16;
  }

  if (!a4)
  {
    ttmlFormatReader_CopyProperty_cold_1(&v15);
    return v15;
  }

  v8 = DerivedStorage;
  if (!FigCFEqual() && !FigCFEqual())
  {
    if (FigCFEqual())
    {
      v12 = @"com.apple.coremedia.formatreader.ttml";
    }

    else
    {
      if (FigCFEqual())
      {
        result = 0;
        if (v8[2])
        {
          v14 = MEMORY[0x1E695E4D0];
        }

        else
        {
          v14 = MEMORY[0x1E695E4C0];
        }

        v13 = *v14;
        goto LABEL_19;
      }

      if (!FigCFEqual())
      {
        return 4294954512;
      }

      v12 = v8[2];
      if (!v12)
      {
        v13 = 0;
        goto LABEL_13;
      }
    }

    v13 = CFRetain(v12);
LABEL_13:
    result = 0;
LABEL_19:
    *a4 = v13;
    return result;
  }

  FigBaseObject = FigTrackReaderGetFigBaseObject(*v8);
  v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v10)
  {
    return 4294954514;
  }

  return v10(FigBaseObject, @"UneditedTrackDuration", a3, a4);
}

uint64_t ttmlFormatReader_CopyTrackByIndex(uint64_t a1, uint64_t a2, void *a3, _DWORD *a4, _DWORD *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    ttmlFormatReader_CopyTrackByIndex_cold_1(&v12);
    return v12;
  }

  else
  {
    if (a3)
    {
      v10 = *DerivedStorage;
      if (v10)
      {
        v10 = CFRetain(v10);
      }

      *a3 = v10;
    }

    if (a4)
    {
      *a4 = 1952807028;
    }

    result = 0;
    if (a5)
    {
      *a5 = 1;
    }
  }

  return result;
}

uint64_t ttmlFormatReader_CopyTrackByID(uint64_t a1, int a2, void *a3, _DWORD *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2 == 1)
  {
    if (a3)
    {
      v8 = *DerivedStorage;
      if (v8)
      {
        v8 = CFRetain(v8);
      }

      *a3 = v8;
    }

    result = 0;
    if (a4)
    {
      *a4 = 1952807028;
    }
  }

  else
  {
    ttmlFormatReader_CopyTrackByID_cold_1(&v10);
    return v10;
  }

  return result;
}

uint64_t ttmlFormatReader_initIsSDKVersionBeforeJazz()
{
  result = _CFExecutableLinkedOnOrAfter();
  sTTMLFormatReader_IsSDKVersionBeforeJazz = result == 0;
  return result;
}

void ttmlCaptionTrackReader_Finalize()
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

  v2 = *(DerivedStorage + 16);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 16) = 0;
  }
}

__CFString *ttmlCaptionTrackReader_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<TTMLCaptionTrackReader %p>", a1);
  return Mutable;
}

void ttmlCursorService_Finalize()
{
  v0 = *CMBaseObjectGetDerivedStorage();
  if (v0)
  {

    CFRelease(v0);
  }
}

__CFString *ttmlCursorService_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<TTMLSampleCursorService %p>", a1);
  return Mutable;
}

uint64_t ttmlSampleCursorService_CreateCursorAtTime(const void *a1, CMTime *a2, void *a3, char *a4, char *a5)
{
  cf = 0;
  v9 = ttmlSampleCursorService_CreateCursorAtFirstSample(a1, &cf);
  v10 = cf;
  if (!v9 && (v12 = *a2, ttmlSampleCursor_MoveToTime(cf, &v12, a4, a5), a3))
  {
    *a3 = v10;
  }

  else if (v10)
  {
    CFRelease(v10);
  }

  return v9;
}

uint64_t ttmlSampleCursorService_CreateCursorAtFirstSample(const void *a1, CFTypeRef *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = CFGetAllocator(a1);
  cf = 0;
  v6 = ttmlSampleCursorCreate(v5, *DerivedStorage, 0, &cf);
  if (v6)
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

  return v6;
}

uint64_t ttmlSampleCursorService_CreateCursorAtLastSample(const void *a1, CFTypeRef *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  LODWORD(a1) = CFGetAllocator(a1);
  cf = 0;
  v5 = *DerivedStorage;
  Count = CFArrayGetCount(v5);
  v7 = ttmlSampleCursorCreate(a1, v5, Count - 1, &cf);
  if (v7)
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

  return v7;
}

CFIndex ttmlSampleCursor_MoveToTime(uint64_t a1, CMTime *a2, char *a3, char *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = DerivedStorage[1];
  Count = CFArrayGetCount(v8);
  ValueAtIndex = CFArrayGetValueAtIndex(v8, 0);
  v11 = CFArrayGetValueAtIndex(v8, Count - 1);
  memset(&v24, 0, sizeof(v24));
  CMSampleBufferGetPresentationTimeStamp(&v24, ValueAtIndex);
  memset(&v23, 0, sizeof(v23));
  CMSampleBufferGetPresentationTimeStamp(&lhs, v11);
  CMSampleBufferGetDuration(&rhs, v11);
  CMTimeAdd(&v23, &lhs, &rhs);
  lhs = *a2;
  rhs = v24;
  result = CMTimeCompare(&lhs, &rhs);
  if ((result & 0x80000000) != 0)
  {
    v17 = 0;
    *DerivedStorage = 0;
    v18 = 1;
    if (!a3)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  lhs = v23;
  rhs = *a2;
  if (CMTimeCompare(&lhs, &rhs) >= 1)
  {
    for (i = 0; ; Count = v14 - i)
    {
      v15 = i + Count;
      v14 = (i + Count) / 2 + i / 2;
      v16 = CFArrayGetValueAtIndex(v8, v14);
      memset(&lhs, 0, sizeof(lhs));
      CMSampleBufferGetPresentationTimeStamp(&lhs, v16);
      memset(&rhs, 0, sizeof(rhs));
      CMSampleBufferGetDuration(&time1, v16);
      v19 = lhs;
      CMTimeAdd(&rhs, &v19, &time1);
      time1 = *a2;
      v19 = lhs;
      if ((CMTimeCompare(&time1, &v19) & 0x80000000) == 0)
      {
        time1 = rhs;
        v19 = *a2;
        result = CMTimeCompare(&time1, &v19);
        if (result > 0)
        {
          v17 = 0;
          v18 = 0;
          *DerivedStorage = v14;
          if (!a3)
          {
            goto LABEL_12;
          }

LABEL_11:
          *a3 = v18;
          goto LABEL_12;
        }

        i = v14 + 1;
        v14 = v15;
      }
    }
  }

  result = CFArrayGetCount(v8);
  v18 = 0;
  *DerivedStorage = result - 1;
  v17 = 1;
  if (a3)
  {
    goto LABEL_11;
  }

LABEL_12:
  if (a4)
  {
    *a4 = v17;
  }

  return result;
}

uint64_t ttmlSampleCursorCreate(int a1, CFArrayRef theArray, uint64_t a3, void *a4)
{
  if (theArray)
  {
    v11 = 0;
    if (CFArrayGetCount(theArray))
    {
      FigSampleCursorGetClassID();
      v7 = CMDerivedObjectCreate();
      if (!v7)
      {
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        v9 = CFRetain(theArray);
        result = 0;
        *DerivedStorage = a3;
        DerivedStorage[1] = v9;
        *a4 = v11;
        return result;
      }

      ttmlSampleCursorCreate_cold_1(v7, &v11, &v12);
    }

    else
    {
      ttmlSampleCursorCreate_cold_2(&v12);
    }

    return v12;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

void ttmlSampleCursor_Finalize()
{
  v0 = *(CMBaseObjectGetDerivedStorage() + 8);
  if (v0)
  {

    CFRelease(v0);
  }
}

__CFString *ttmlSampleCursor_CopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<TTMLSampleCursor %p>{currentIndex:%ld}", a1, *DerivedStorage);
  return Mutable;
}

uint64_t ttmlSampleCursor_CopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a4)
    {
      return 4294954512;
    }

    v7 = 290;
  }

  else
  {
    v7 = 289;
  }

  v9 = v4;
  v10 = v5;
  ttmlSampleCursor_CopyProperty_cold_1(v7, &v8);
  return v8;
}

uint64_t ttmlSampleCursor_Copy(const void *a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFGetAllocator(a1);
  FigSampleCursorGetClassID();
  v5 = CMDerivedObjectCreate();
  if (v5)
  {
    ttmlSampleCursor_Copy_cold_1();
  }

  else
  {
    v6 = CMBaseObjectGetDerivedStorage();
    v7 = DerivedStorage[1];
    *v6 = *DerivedStorage;
    if (v7)
    {
      v7 = CFRetain(v7);
    }

    v6[1] = v7;
    *a2 = 0;
  }

  return v5;
}

uint64_t ttmlSampleCursor_CompareInDecodeOrder()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage < *v1)
  {
    return -1;
  }

  else
  {
    return *DerivedStorage > *v1;
  }
}

uint64_t ttmlSampleCursor_GetStartTime(uint64_t a1, CMTime *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 8), *DerivedStorage);
  memset(&v6, 0, sizeof(v6));
  CMSampleBufferGetPresentationTimeStamp(&v6, ValueAtIndex);
  *a2 = v6;
  return 0;
}

uint64_t ttmlSampleCursor_GetDuration(uint64_t a1, CMTime *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 8), *DerivedStorage);
  memset(&v6, 0, sizeof(v6));
  CMSampleBufferGetDuration(&v6, ValueAtIndex);
  *a2 = v6;
  return 0;
}

uint64_t ttmlSampleCursor_GetDependencyInfo(uint64_t a1, _BYTE *a2, _BYTE *a3, _DWORD *a4, _BYTE *a5)
{
  if (a2)
  {
    *a2 = 1;
  }

  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  if (a5)
  {
    *a5 = 0;
  }

  return 0;
}

uint64_t ttmlSampleCursor_CreateSample(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 8), *DerivedStorage);
  *a3 = CFRetain(ValueAtIndex);
  return 0;
}

uint64_t ttmlSampleCursor_StepByTime(uint64_t a1, CMTime *a2)
{
  v9 = **&MEMORY[0x1E6960C70];
  v8 = v9;
  v7 = 0;
  ttmlSampleCursor_GetStartTime(a1, &v9);
  lhs = v9;
  v5 = *a2;
  CMTimeAdd(&v8, &lhs, &v5);
  lhs = v8;
  ttmlSampleCursor_MoveToTime(a1, &lhs, &v7 + 1, &v7);
  if (HIBYTE(v7) | v7)
  {
    return 4294954456;
  }

  else
  {
    return 0;
  }
}

uint64_t ttmlSampleCursor_CopyFormatDescription(const void *a1, CMFormatDescriptionRef *a2)
{
  formatDescriptionOut = 0;
  v3 = CFGetAllocator(a1);
  v4 = CMFormatDescriptionCreate(v3, 0x63706772u, 0, 0, &formatDescriptionOut);
  if (!a2 || v4)
  {
    if (formatDescriptionOut)
    {
      CFRelease(formatDescriptionOut);
    }
  }

  else
  {
    *a2 = formatDescriptionOut;
  }

  return v4;
}

uint64_t ttmlCaptionTrackReader_GetTrackInfo(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  if (a2)
  {
    *a2 = 1;
  }

  if (a3)
  {
    *a3 = 1952807028;
  }

  return 0;
}

uint64_t fpm_StallWarningProc()
{
  v27 = *MEMORY[0x1E69E9840];
  FigRetainProxyLockMutex();
  if (!FigRetainProxyIsInvalidated())
  {
    memset(v21, 0, sizeof(v21));
    memset(&v20, 0, sizeof(v20));
    memset(&v19, 0, sizeof(v19));
    v18 = **&MEMORY[0x1E6960C70];
    Owner = FigRetainProxyGetOwner();
    MutableBytePtr = CFDataGetMutableBytePtr(Owner);
    FigSimpleMutexLock();
    os_retain(*(MutableBytePtr + 1070));
    voucher_adopt();
    if (CMTimebaseGetRate(*(MutableBytePtr + 3)) > 0.0)
    {
      FigPlayabilityMonitorGetPlayableRange(MutableBytePtr, v21, &v20);
      CMTimebaseGetTime(&v19, *(MutableBytePtr + 3));
      lhs = v20;
      rhs = v19;
      CMTimeSubtract(&time, &lhs, &rhs);
      Seconds = CMTimeGetSeconds(&time);
      FigFormatReaderUtilityGetDuration(*(MutableBytePtr + 1), 1, &v18);
      time = v18;
      lhs = v19;
      v3 = 0.0;
      if (CMTimeCompare(&time, &lhs) >= 1)
      {
        lhs = v18;
        rhs = v19;
        CMTimeSubtract(&time, &lhs, &rhs);
        v3 = CMTimeGetSeconds(&time);
      }

      v4 = fmax(Seconds, 0.0);
      if (dword_1EAF16BF0)
      {
        LODWORD(rhs.value) = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        value = rhs.value;
        if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT))
        {
          v7 = value;
        }

        else
        {
          v7 = value & 0xFFFFFFFE;
        }

        if (v7)
        {
          v8 = *(MutableBytePtr + 26);
          LODWORD(lhs.value) = 136316162;
          *(&lhs.value + 4) = "fpm_StallWarningProc";
          LOWORD(lhs.flags) = 2048;
          *(&lhs.flags + 2) = MutableBytePtr;
          HIWORD(lhs.epoch) = 1024;
          *v23 = v8;
          *&v23[4] = 2048;
          *&v23[6] = v3;
          v24 = 2048;
          v25 = v4;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      if (*(MutableBytePtr + 26) != 3 && v3 > v4)
      {
        if (v4 >= 0.1)
        {
          if (dword_1EAF16BF0)
          {
            LODWORD(rhs.value) = 0;
            v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v15 = rhs.value;
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              v16 = v15;
            }

            else
            {
              v16 = v15 & 0xFFFFFFFE;
            }

            if (v16)
            {
              LODWORD(lhs.value) = 136315394;
              *(&lhs.value + 4) = "fpm_StallWarningProc";
              LOWORD(lhs.flags) = 2048;
              *(&lhs.flags + 2) = MutableBytePtr;
              _os_log_send_and_compose_impl();
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          fpm_updateCache(MutableBytePtr);
        }

        else
        {
          *(MutableBytePtr + 13) = 3;
          if (dword_1EAF16BF0)
          {
            LODWORD(rhs.value) = 0;
            v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v10 = rhs.value;
            if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
            {
              v11 = v10;
            }

            else
            {
              v11 = v10 & 0xFFFFFFFE;
            }

            if (v11)
            {
              LODWORD(lhs.value) = 136315650;
              *(&lhs.value + 4) = "fpm_StallWarningProc";
              LOWORD(lhs.flags) = 2048;
              *(&lhs.flags + 2) = MutableBytePtr;
              HIWORD(lhs.epoch) = 2048;
              *v23 = v4;
              _os_log_send_and_compose_impl();
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          FigRetainProxyRetain();
          CMNotificationCenterGetDefaultLocalCenter();
          FigDeferNotificationToDispatchQueue();
        }
      }
    }

    v12 = voucher_adopt();
    os_release(v12);
    FigSimpleMutexUnlock();
  }

  return FigRetainProxyUnlockMutex();
}

uint64_t fpm_prepareDataRateProfile(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    fpm_prepareDataRateProfile_cold_2(&v10);
    return v10;
  }

  v3 = Mutable;
  if (*(a1 + 80) >= 1)
  {
    v4 = 0;
    v5 = 0;
    while (!FigCFArrayAppendInt32())
    {
      ++v5;
      v4 += 48;
      if (v5 >= *(a1 + 80))
      {
        goto LABEL_6;
      }
    }

    fpm_prepareDataRateProfile_cold_1(&v9);
    v6 = v9;
    goto LABEL_15;
  }

LABEL_6:
  if (FigFormatReaderUtilityEstablishCombinedDataRateProfileForTracks(*(a1 + 8), v3, (a1 + 336), 1024, (a1 + 8528)))
  {
    v6 = MGCopyAnswer();
    if (FigCFEqual())
    {
      v7 = 1;
    }

    else
    {
      if (*(a1 + 112) == 3)
      {
        goto LABEL_13;
      }

      v7 = 0;
    }

    *(a1 + 112) = v7;
LABEL_13:
    if (v6)
    {
      CFRelease(v6);
      v6 = 0;
    }

    goto LABEL_15;
  }

  v6 = 0;
  *(a1 + 8552) = 1;
LABEL_15:
  CFRelease(v3);
  return v6;
}

uint64_t FigPlayabilityMonitorCanReuse(void *a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5)
{
  FigSimpleMutexLock();
  if (a1[10] == a4 && a1[1] == a2 && a1[2] == a5)
  {
    if (a4 < 1)
    {
      v10 = 1;
      goto LABEL_5;
    }

    v12 = a1[11];
    v10 = 1;
    while (1)
    {
      v14 = *v12;
      v12 += 12;
      v13 = v14;
      v15 = *a3++;
      if (v13 != v15)
      {
        break;
      }

      if (!--a4)
      {
        goto LABEL_5;
      }
    }
  }

  v10 = 0;
LABEL_5:
  FigSimpleMutexUnlock();
  return v10;
}

uint64_t FigPlayabilityMonitorSetRenderPipelines(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FigSimpleMutexLock();
  if (!a2)
  {
    a2 = *(a1 + 80);
    goto LABEL_5;
  }

  if (*(a1 + 80) == a2)
  {
LABEL_5:
    if (a2 < 1)
    {
LABEL_16:
      v6 = 1;
      goto LABEL_17;
    }

    v7 = 0;
    v8 = 32;
    while (1)
    {
      v9 = *(a1 + 88);
      v10 = *(v9 + v8);
      if (a3)
      {
        v11 = *(a3 + 8 * v7);
        *(v9 + v8) = v11;
        if (v11)
        {
          CFRetain(v11);
        }

        if (!v10)
        {
          goto LABEL_12;
        }
      }

      else
      {
        *(v9 + v8) = 0;
        if (!v10)
        {
          goto LABEL_12;
        }
      }

      CFRelease(v10);
LABEL_12:
      ++v7;
      v8 += 48;
      if (v7 >= *(a1 + 80))
      {
        goto LABEL_16;
      }
    }
  }

  v6 = 0;
LABEL_17:
  FigSimpleMutexUnlock();
  return v6;
}

uint64_t FigPlayabilityMonitorSetPlaybackTimebase(uint64_t a1, const void *a2)
{
  FigSimpleMutexLock();
  v4 = *(a1 + 24);
  if (v4 != a2)
  {
    if (v4)
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      v5 = *(a1 + 304);
      if (v5)
      {
        CMTimebaseRemoveTimerDispatchSource(*(a1 + 24), v5);
      }

      v6 = CFRetain(*(a1 + 24));
      FigSimpleMutexUnlock();
      CMTimebaseNotificationBarrier(v6);
      FigSimpleMutexLock();
      CFRelease(v6);
      if (*(a1 + 64) >= 1)
      {
        do
        {
          FigConditionVariableWaitRelative();
        }

        while (*(a1 + 64) > 0);
      }

      v7 = *(a1 + 24);
    }

    else
    {
      v7 = 0;
    }

    *(a1 + 24) = a2;
    if (a2)
    {
      CFRetain(a2);
    }

    if (v7)
    {
      CFRelease(v7);
    }

    v8 = *(a1 + 24);
    if (v8)
    {
      v9 = *(a1 + 304);
      if (v9)
      {
        CMTimebaseAddTimerDispatchSource(v8, v9);
      }

      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterAddWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterAddWeakListener();
    }
  }

  FigSimpleMutexUnlock();
  return 1;
}

uint64_t fpm_updateCacheAndNotify(uint64_t a1)
{
  v153 = *MEMORY[0x1E69E9840];
  v2 = *(MEMORY[0x1E6960C98] + 16);
  v128 = *MEMORY[0x1E6960C98];
  *v129 = v2;
  *&v129[16] = *(MEMORY[0x1E6960C98] + 32);
  v3 = MEMORY[0x1E695E4C0];
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  *(a1 + 312) = 0;
  if (*(a1 + 96) != *(a1 + 184) || *(a1 + 313))
  {
    fpm_durationAhead(a1, &v128);
    *time = *&v129[8];
    *&time[16] = *&v129[24];
    Seconds = CMTimeGetSeconds(time);
    updated = fpm_updateCache(a1);
    fpm_durationAhead(a1, &v128);
    *time = *&v129[8];
    *&time[16] = *&v129[24];
    v5 = CMTimeGetSeconds(time);
  }

  else
  {
    fpm_durationAhead(a1, &v128);
    *time = *&v129[8];
    *&time[16] = *&v129[24];
    v5 = CMTimeGetSeconds(time);
    Seconds = v5;
    updated = 0;
  }

  v8 = v5;
  v9 = *v3;
  if (Seconds != v5)
  {
    *(a1 + 316) = 1;
  }

  if (Seconds < v5 && !*(a1 + 315))
  {
    *(a1 + 314) = 0;
    v9 = *MEMORY[0x1E695E4D0];
  }

  if (*(a1 + 316) && (*(a1 + 315) || UpTimeNanoseconds - *(a1 + 208) >= 500000000))
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      CFDictionarySetValue(Mutable, @"FPM_IsFilling", v9);
    }

    FigRetainProxyRetain();
    CMNotificationCenterGetDefaultLocalCenter();
    FigDeferNotificationToDispatchQueue();
    *(a1 + 208) = UpTimeNanoseconds;
    *(a1 + 316) = 0;
  }

  if (UpTimeNanoseconds - *(a1 + 200) > 449999999 || fpm_shouldUpdateAggressively(a1))
  {
    v11 = *(a1 + 314);
    v12 = *(a1 + 112);
    if (v12 <= 1)
    {
      if (v12)
      {
        if (v12 == 1)
        {
          v138 = **&MEMORY[0x1E6960C70];
          number = 0;
          BOOLean = 0;
          valuePtr = 0.0;
          *&theDict = 0.0;
          v132 = 0.0;
          v133 = 0.0;
          v13 = *(a1 + 144);
          v14 = *(a1 + 116);
          if (!FigFormatReaderUtilityGetDuration(*(a1 + 8), 1, &v138) && (v138.flags & 0x1D) == 1)
          {
            v15 = *MEMORY[0x1E695E480];
            CMBaseObject = CMByteStreamGetCMBaseObject();
            v17 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (!v17 || v17(CMBaseObject, *MEMORY[0x1E695FF80], v15, &BOOLean))
            {
              v19 = 1;
            }

            else
            {
              Value = CFBooleanGetValue(BOOLean);
              CFRelease(BOOLean);
              v19 = Value == 0;
            }

            *time = v138;
            v30 = CMTimeGetSeconds(time);
            CMTimebaseGetTime(time, *(a1 + 24));
            time2 = **&MEMORY[0x1E6960CC0];
            CMTimeMaximum(&v131, time, &time2);
            v31 = CMTimeGetSeconds(&v131);
            v32 = 0.0;
            if (v30 <= v31)
            {
              v33 = 0.0;
            }

            else
            {
              v33 = v30 - v31;
            }

            v34 = CMByteStreamGetCMBaseObject();
            v35 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (!v35 || v35(v34, *MEMORY[0x1E695FF98], v15, &theDict))
            {
              v37 = 0;
            }

            else
            {
              FigCFDictionaryGetDoubleIfPresent();
              FigCFDictionaryGetDoubleIfPresent();
              v36 = CFDictionaryGetValue(theDict, *MEMORY[0x1E6960E10]);
              if (v36)
              {
                v37 = CFRetain(v36);
              }

              else
              {
                v37 = 0;
              }

              CFRelease(theDict);
            }

            v38 = v30 > 0.0 && v19;
            if (v38 && (v39 = CMByteStreamGetCMBaseObject(), (v40 = *(*(CMBaseObjectGetVTable() + 8) + 48)) != 0) && !v40(v39, *MEMORY[0x1E695FF78], v15, &number))
            {
              CFNumberGetValue(number, kCFNumberFloat64Type, &valuePtr);
              CFRelease(number);
              v41 = 0;
              v32 = valuePtr / v30;
              v42 = v33 - v8;
              if (v33 - v8 < 0.0)
              {
                v42 = 0.0;
              }

              v43 = v42 * v32;
              if (v132 > 0.0 && v32 > 0.0)
              {
                v44 = v132 / v32;
                if (v132 / v32 >= *(a1 + 124))
                {
                  if (v44 <= *(a1 + 128))
                  {
                    if (*(a1 + 104) != 1)
                    {
                      v13 = *(a1 + 136);
                      v43 = 0.0;
                    }

                    v41 = 2;
                  }

                  else if (v44 <= *(a1 + 132))
                  {
                    if (v44 <= *(a1 + 128))
                    {
                      v41 = 0;
                    }

                    else
                    {
                      if (*(a1 + 104) != 1)
                      {
                        v13 = *(a1 + 144);
                        v43 = 0.0;
                      }

                      v41 = 3;
                    }
                  }

                  else
                  {
                    if (*(a1 + 104) != 1)
                    {
                      v13 = *(a1 + 152);
                      v43 = 0.0;
                    }

                    v41 = 4;
                  }
                }

                else
                {
                  if (v30 > 300.0)
                  {
                    v14 = *(a1 + 120);
                  }

                  v41 = 1;
                }
              }
            }

            else
            {
              v41 = 0;
              v43 = 0.0;
            }

            if ((v138.flags & 0x1D) != 1)
            {
              goto LABEL_212;
            }

            if (v43 < 1.0 || (v45 = v33 * v132, v33 * v132 >= v43 * v14))
            {
              if (*(a1 + 104) == 1)
              {
                goto LABEL_212;
              }

              if (v13 >= v33)
              {
                v78 = v33;
              }

              else
              {
                v78 = v13;
              }

              if (v78 > v8)
              {
                v79 = v8 / v78;
                *(a1 + 108) = v79;
                goto LABEL_212;
              }

              itemfig_createDurationDictionary(v8);
              *(a1 + 104) = 0x3F80000000000001;
              if (dword_1EAF16BF0)
              {
                LODWORD(v131.value) = 0;
                type = OS_LOG_TYPE_DEFAULT;
                os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v85 = v131.value;
                if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
                {
                  v86 = v85;
                }

                else
                {
                  v86 = v85 & 0xFFFFFFFE;
                }

                if (v86)
                {
                  v106 = fpm_likelyToKeepUpUsingBucketAlgorithm_bandwidthType[v41];
                  LODWORD(time2.value) = 136316930;
                  v107 = *(a1 + 108);
                  *(&time2.value + 4) = "fpm_likelyToKeepUpUsingBucketAlgorithm";
                  LOWORD(time2.flags) = 2048;
                  *(&time2.flags + 2) = a1;
                  HIWORD(time2.epoch) = 2082;
                  v140 = *&v106;
                  v141 = 2048;
                  v142 = v132 * 8.0 / 1000.0;
                  v143 = 2048;
                  v144 = v43 / 1000.0;
                  v145 = 2048;
                  v146 = v33 * (v132 / 1000.0);
                  v147 = 2048;
                  v148 = v33;
                  v149 = 2048;
                  v150 = v107;
                  _os_log_send_and_compose_impl();
                }

                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }
            }

            else
            {
              v46 = *(a1 + 104);
              if (v46 == 1)
              {
                if (v45 >= v43)
                {
LABEL_212:
                  if (v11)
                  {
                    if (*(a1 + 104) != 1)
                    {
                      *(a1 + 104) = 2;
                      v110 = *(a1 + 96);
                      if (*(a1 + 100) != v110)
                      {
                        *(a1 + 100) = v110;
                        if (dword_1EAF16BF0)
                        {
                          LODWORD(v131.value) = 0;
                          type = OS_LOG_TYPE_DEFAULT;
                          v111 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                          v112 = v131.value;
                          if (os_log_type_enabled(v111, type))
                          {
                            v113 = v112;
                          }

                          else
                          {
                            v113 = v112 & 0xFFFFFFFE;
                          }

                          if (v113)
                          {
                            v114 = fpm_likelyToKeepUpUsingBucketAlgorithm_bandwidthType[v41];
                            LODWORD(time2.value) = 136316930;
                            v115 = *(a1 + 108);
                            *(&time2.value + 4) = "fpm_likelyToKeepUpUsingBucketAlgorithm";
                            LOWORD(time2.flags) = 2048;
                            *(&time2.flags + 2) = a1;
                            HIWORD(time2.epoch) = 2082;
                            v140 = *&v114;
                            v141 = 2048;
                            v142 = v132 * 8.0 / 1000.0;
                            v143 = 2048;
                            v144 = v43 / 1000.0;
                            v145 = 2048;
                            v146 = v33 * (v132 / 1000.0);
                            v147 = 2048;
                            v148 = v33;
                            v149 = 2048;
                            v150 = v115;
                            _os_log_send_and_compose_impl();
                          }

                          fig_log_call_emit_and_clean_up_after_send_and_compose();
                        }

                        FigRetainProxyRetain();
                        CMNotificationCenterGetDefaultLocalCenter();
                        FigDeferNotificationToDispatchQueue();
                      }
                    }
                  }

                  FigSimpleMutexLock();
                  *(a1 + 8576) = v43;
                  *(a1 + 8584) = v33;
                  v116 = v132;
                  v117 = v133;
                  *(a1 + 8592) = v132;
                  *(a1 + 8600) = v117;
                  *(a1 + 8608) = v14;
                  v104 = v43 * v14 / v116 - v33;
LABEL_244:
                  if (v104 < 0.0)
                  {
                    v104 = 0.0;
                  }

                  *(a1 + 8616) = v104;
                  v126 = *(a1 + 8624);
                  if (v126 != v37)
                  {
                    *(a1 + 8624) = v37;
                    if (v37)
                    {
                      CFRetain(v37);
                    }

                    if (v126)
                    {
                      CFRelease(v126);
                    }
                  }

                  if (v37)
                  {
                    CFRelease(v37);
                  }

                  FigSimpleMutexUnlock();
                  goto LABEL_254;
                }
              }

              else
              {
                v87 = v8 / (v33 * (1.0 - v132 / (v32 * v14)));
                *(a1 + 108) = v87;
                if (v45 >= v43 || v46 == 2)
                {
                  goto LABEL_212;
                }
              }

              *(a1 + 104) = 2;
              if (dword_1EAF16BF0)
              {
                LODWORD(v131.value) = 0;
                type = OS_LOG_TYPE_DEFAULT;
                v88 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v89 = v131.value;
                if (os_log_type_enabled(v88, type))
                {
                  v90 = v89;
                }

                else
                {
                  v90 = v89 & 0xFFFFFFFE;
                }

                if (v90)
                {
                  v108 = fpm_likelyToKeepUpUsingBucketAlgorithm_bandwidthType[v41];
                  LODWORD(time2.value) = 136316930;
                  v109 = *(a1 + 108);
                  *(&time2.value + 4) = "fpm_likelyToKeepUpUsingBucketAlgorithm";
                  LOWORD(time2.flags) = 2048;
                  *(&time2.flags + 2) = a1;
                  HIWORD(time2.epoch) = 2082;
                  v140 = *&v108;
                  v141 = 2048;
                  v142 = v132 * 8.0 / 1000.0;
                  v143 = 2048;
                  v144 = v43 / 1000.0;
                  v145 = 2048;
                  v146 = v33 * (v132 / 1000.0);
                  v147 = 2048;
                  v148 = v33;
                  v149 = 2048;
                  v150 = v109;
                  _os_log_send_and_compose_impl();
                }

                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }
            }

            FigRetainProxyRetain();
            CMNotificationCenterGetDefaultLocalCenter();
            FigDeferNotificationToDispatchQueue();
            goto LABEL_212;
          }
        }

LABEL_254:
        *(a1 + 200) = UpTimeNanoseconds;
        goto LABEL_255;
      }

      v138 = **&MEMORY[0x1E6960C70];
      number = 0;
      BOOLean = 0;
      valuePtr = 0.0;
      *&theDict = 0.0;
      v132 = 0.0;
      v133 = 0.0;
      if (FigFormatReaderUtilityGetDuration(*(a1 + 8), 1, &v138) || (v138.flags & 0x1D) != 1)
      {
        goto LABEL_254;
      }

      v20 = *MEMORY[0x1E695E480];
      v21 = CMByteStreamGetCMBaseObject();
      v22 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v22 || v22(v21, *MEMORY[0x1E695FF80], v20, &BOOLean))
      {
        v24 = 1;
      }

      else
      {
        v23 = CFBooleanGetValue(BOOLean);
        CFRelease(BOOLean);
        v24 = v23 == 0;
      }

      CMTimebaseGetTime(time, *(a1 + 24));
      time2 = **&MEMORY[0x1E6960CC0];
      CMTimeMaximum(&v131, time, &time2);
      v47 = CMTimeGetSeconds(&v131);
      *time = v138;
      v48 = CMTimeGetSeconds(time);
      v49 = v48 - v47;
      v50 = 0.0;
      if (v48 <= v47)
      {
        v49 = 0.0;
      }

      if (v49 <= 900.0)
      {
        v51 = v49;
      }

      else
      {
        v51 = 900.0;
      }

      if (v24 && v48 > 0.0 && (v52 = CMByteStreamGetCMBaseObject(), (v53 = *(*(CMBaseObjectGetVTable() + 8) + 48)) != 0))
      {
        v54 = 0.0;
        if (!v53(v52, *MEMORY[0x1E695FF78], v20, &theDict))
        {
          CFNumberGetValue(theDict, kCFNumberFloat64Type, &valuePtr);
          CFRelease(theDict);
          v54 = (v51 - v8) * (valuePtr / v48);
          v50 = valuePtr / v48 + valuePtr / v48;
        }
      }

      else
      {
        v54 = 0.0;
      }

      v55 = CMByteStreamGetCMBaseObject();
      v56 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v56 || v56(v55, *MEMORY[0x1E695FF98], v20, &number))
      {
        v37 = 0;
      }

      else
      {
        FigCFDictionaryGetDoubleIfPresent();
        DoubleIfPresent = FigCFDictionaryGetDoubleIfPresent();
        v59 = v132 > 0.0 && DoubleIfPresent != 0;
        *(a1 + 8555) = v59;
        v60 = CFDictionaryGetValue(number, *MEMORY[0x1E6960E10]);
        if (v60)
        {
          v37 = CFRetain(v60);
        }

        else
        {
          v37 = 0;
        }

        CFRelease(number);
      }

      if ((v138.flags & 0x1D) == 1)
      {
        if (v54 < 1.0 || (v68 = v51 * v132, v51 * v132 >= v54 + v54))
        {
          if (*(a1 + 104) == 1)
          {
            goto LABEL_232;
          }

          if (v8 < 10.0 && v51 > 10.0)
          {
            v80 = v8 / 10.0;
            *(a1 + 108) = v80;
            goto LABEL_232;
          }

          itemfig_createDurationDictionary(v8);
          *(a1 + 104) = 0x3F80000000000001;
          if (dword_1EAF16BF0)
          {
            LODWORD(v131.value) = 0;
            type = OS_LOG_TYPE_DEFAULT;
            v81 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v82 = v131.value;
            if (os_log_type_enabled(v81, type))
            {
              v83 = v82;
            }

            else
            {
              v83 = v82 & 0xFFFFFFFE;
            }

            if (v83)
            {
              v105 = *(a1 + 108);
              LODWORD(time2.value) = 136316418;
              *(&time2.value + 4) = "fpm_likelyToKeepUpUsingLegacyAlgorithm";
              LOWORD(time2.flags) = 2048;
              *(&time2.flags + 2) = a1;
              HIWORD(time2.epoch) = 2048;
              v140 = v132 * 8.0 / 1000.0;
              v141 = 2048;
              v142 = v54 / 1000.0;
              v143 = 2048;
              v144 = v51;
              v145 = 2048;
              v146 = v105;
              _os_log_send_and_compose_impl();
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }
        }

        else
        {
          if (!*(a1 + 8555))
          {
            fpm_likelyToKeepUpUsingLivePlaybackAlgorithm(a1, v11, v8);
            goto LABEL_232;
          }

          v91 = *(a1 + 104);
          if (v91 == 1)
          {
            if (v68 >= v54)
            {
              goto LABEL_232;
            }
          }

          else
          {
            v99 = v8 / (v51 * (1.0 - v132 / v50));
            *(a1 + 108) = v99;
            if (v68 >= v54 || v91 == 2)
            {
              goto LABEL_232;
            }
          }

          *(a1 + 104) = 2;
          if (dword_1EAF16BF0)
          {
            LODWORD(v131.value) = 0;
            type = OS_LOG_TYPE_DEFAULT;
            v100 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v101 = v131.value;
            if (os_log_type_enabled(v100, type))
            {
              v102 = v101;
            }

            else
            {
              v102 = v101 & 0xFFFFFFFE;
            }

            if (v102)
            {
              v118 = *(a1 + 108);
              LODWORD(time2.value) = 136316418;
              *(&time2.value + 4) = "fpm_likelyToKeepUpUsingLegacyAlgorithm";
              LOWORD(time2.flags) = 2048;
              *(&time2.flags + 2) = a1;
              HIWORD(time2.epoch) = 2048;
              v140 = v132 * 8.0 / 1000.0;
              v141 = 2048;
              v142 = v54 / 1000.0;
              v143 = 2048;
              v144 = v51;
              v145 = 2048;
              v146 = v118;
              _os_log_send_and_compose_impl();
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }
        }

        FigRetainProxyRetain();
        CMNotificationCenterGetDefaultLocalCenter();
        FigDeferNotificationToDispatchQueue();
      }

LABEL_232:
      if (v11)
      {
        if (*(a1 + 104) != 1)
        {
          *(a1 + 104) = 2;
          v119 = *(a1 + 96);
          if (*(a1 + 100) != v119)
          {
            *(a1 + 100) = v119;
            if (dword_1EAF16BF0)
            {
              LODWORD(v131.value) = 0;
              type = OS_LOG_TYPE_DEFAULT;
              v120 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v121 = v131.value;
              if (os_log_type_enabled(v120, type))
              {
                v122 = v121;
              }

              else
              {
                v122 = v121 & 0xFFFFFFFE;
              }

              if (v122)
              {
                v123 = *(a1 + 108);
                LODWORD(time2.value) = 136316418;
                *(&time2.value + 4) = "fpm_likelyToKeepUpUsingLegacyAlgorithm";
                LOWORD(time2.flags) = 2048;
                *(&time2.flags + 2) = a1;
                HIWORD(time2.epoch) = 2048;
                v140 = v132 * 8.0 / 1000.0;
                v141 = 2048;
                v142 = v54 / 1000.0;
                v143 = 2048;
                v144 = v51;
                v145 = 2048;
                v146 = v123;
                _os_log_send_and_compose_impl();
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            FigRetainProxyRetain();
            CMNotificationCenterGetDefaultLocalCenter();
            FigDeferNotificationToDispatchQueue();
          }
        }
      }

      FigSimpleMutexLock();
      *(a1 + 8576) = v54;
      *(a1 + 8584) = v51;
      v124 = v132;
      v125 = v133;
      *(a1 + 8592) = v132;
      *(a1 + 8600) = v125;
      *(a1 + 8608) = 0x4000000000000000;
      v104 = (v54 + v54) / v124 - v51;
      goto LABEL_244;
    }

    if (v12 != 2)
    {
      if (v12 == 3)
      {
        fpm_likelyToKeepUpUsingLivePlaybackAlgorithm(a1, *(a1 + 314), v8);
      }

      goto LABEL_254;
    }

    v138 = **&MEMORY[0x1E6960C70];
    number = 0;
    BOOLean = 0;
    valuePtr = 0.0;
    *&theDict = 0.0;
    v132 = 0.0;
    v133 = 0.0;
    if (FigFormatReaderUtilityGetDuration(*(a1 + 8), 1, &v138) || (v138.flags & 0x1D) != 1)
    {
      goto LABEL_254;
    }

    v25 = *MEMORY[0x1E695E480];
    v26 = CMByteStreamGetCMBaseObject();
    v27 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v27 || v27(v26, *MEMORY[0x1E695FF80], v25, &BOOLean))
    {
      v29 = 1;
    }

    else
    {
      v28 = CFBooleanGetValue(BOOLean);
      CFRelease(BOOLean);
      v29 = v28 == 0;
    }

    CMTimebaseGetTime(time, *(a1 + 24));
    time2 = **&MEMORY[0x1E6960CC0];
    CMTimeMaximum(&v131, time, &time2);
    v61 = CMTimeGetSeconds(&v131);
    *time = v138;
    v62 = CMTimeGetSeconds(time);
    if (v62 <= v61)
    {
      v63 = 0.0;
    }

    else
    {
      v63 = v62 - v61;
    }

    v64 = CMByteStreamGetCMBaseObject();
    v65 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    v66 = 1.0;
    if (!v65 || v65(v64, *MEMORY[0x1E695FF98], v25, &number))
    {
      v37 = 0;
    }

    else
    {
      FigCFDictionaryGetDoubleIfPresent();
      FigCFDictionaryGetDoubleIfPresent();
      FigCFDictionaryGetDoubleIfPresent();
      v67 = CFDictionaryGetValue(number, *MEMORY[0x1E6960E10]);
      if (v67)
      {
        v37 = CFRetain(v67);
      }

      else
      {
        v37 = 0;
      }

      if (*&theDict != 0.0)
      {
        v66 = v133 / *&theDict + 1.0;
      }

      CFRelease(number);
    }

    v69 = v63 - v8 > 0.1 && v29;
    v70 = &unk_1EAF16000;
    if (!v69 || (valuePtr <= 0.0 ? (v71 = theDict) : COERCE_CFDICTIONARYREF(*&v71 = valuePtr), fpm_isLikelyToKeepUp(a1, &v132, v61, v8, *&v71, v66)))
    {
      if (*(a1 + 104) != 1)
      {
        itemfig_createDurationDictionary(v8);
        *(a1 + 104) = 0x3F80000000000001;
        if (dword_1EAF16BF0)
        {
          LODWORD(v131.value) = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v75 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v76 = v131.value;
          if (os_log_type_enabled(v75, type))
          {
            v77 = v76;
          }

          else
          {
            v77 = v76 & 0xFFFFFFFE;
          }

          if (v77)
          {
            LODWORD(time2.value) = 136315906;
            *(&time2.value + 4) = "fpm_likelyToKeepUpUsingDynamicAlgorithm";
            LOWORD(time2.flags) = 2048;
            *(&time2.flags + 2) = a1;
            HIWORD(time2.epoch) = 2048;
            v140 = valuePtr * 8.0 / 1000.0;
            v141 = 2048;
            v142 = v63;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v70 = &unk_1EAF16000;
          updated = updated;
        }

        goto LABEL_174;
      }
    }

    else if (*(a1 + 104) != 2)
    {
      *(a1 + 104) = 2;
      if (dword_1EAF16BF0)
      {
        LODWORD(v131.value) = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v72 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v73 = v131.value;
        if (os_log_type_enabled(v72, type))
        {
          v74 = v73;
        }

        else
        {
          v74 = v73 & 0xFFFFFFFE;
        }

        if (v74)
        {
          LODWORD(time2.value) = 136316162;
          *(&time2.value + 4) = "fpm_likelyToKeepUpUsingDynamicAlgorithm";
          LOWORD(time2.flags) = 2048;
          *(&time2.flags + 2) = a1;
          HIWORD(time2.epoch) = 2048;
          v140 = valuePtr * 8.0 / 1000.0;
          v141 = 2048;
          v142 = v63;
          v143 = 2048;
          v144 = v132;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v70 = &unk_1EAF16000;
      }

LABEL_174:
      FigRetainProxyRetain();
      CMNotificationCenterGetDefaultLocalCenter();
      FigDeferNotificationToDispatchQueue();
    }

    if (v70[764])
    {
      LODWORD(v131.value) = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v92 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v93 = v131.value;
      if (os_log_type_enabled(v92, type))
      {
        v94 = v93;
      }

      else
      {
        v94 = v93 & 0xFFFFFFFE;
      }

      if (v94)
      {
        LODWORD(time2.value) = 136316930;
        *(&time2.value + 4) = "fpm_likelyToKeepUpUsingDynamicAlgorithm";
        LOWORD(time2.flags) = 2048;
        *(&time2.flags + 2) = a1;
        HIWORD(time2.epoch) = 2048;
        v140 = *&theDict * 8.0 / 1000.0;
        v141 = 2048;
        v142 = valuePtr * 8.0 / 1000.0;
        v143 = 2048;
        v144 = v66;
        v145 = 2048;
        v146 = v62 - v63;
        v147 = 2048;
        v148 = v8;
        v149 = 2048;
        v150 = v132;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (v11)
    {
      if (*(a1 + 104) != 1)
      {
        *(a1 + 104) = 2;
        v95 = *(a1 + 96);
        if (*(a1 + 100) != v95)
        {
          *(a1 + 100) = v95;
          if (v70[764])
          {
            LODWORD(v131.value) = 0;
            type = OS_LOG_TYPE_DEFAULT;
            v96 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v97 = v131.value;
            if (os_log_type_enabled(v96, type))
            {
              v98 = v97;
            }

            else
            {
              v98 = v97 & 0xFFFFFFFE;
            }

            if (v98)
            {
              LODWORD(time2.value) = 136316162;
              *(&time2.value + 4) = "fpm_likelyToKeepUpUsingDynamicAlgorithm";
              LOWORD(time2.flags) = 2048;
              *(&time2.flags + 2) = a1;
              HIWORD(time2.epoch) = 2048;
              v140 = valuePtr * 8.0 / 1000.0;
              v141 = 2048;
              v142 = v63;
              v143 = 2048;
              v144 = v132;
              _os_log_send_and_compose_impl();
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          FigRetainProxyRetain();
          CMNotificationCenterGetDefaultLocalCenter();
          FigDeferNotificationToDispatchQueue();
        }
      }
    }

    FigSimpleMutexLock();
    *(a1 + 8584) = v63;
    v103 = theDict;
    *(a1 + 8592) = valuePtr;
    *(a1 + 8600) = v103;
    *(a1 + 8608) = v66;
    v104 = v132;
    goto LABEL_244;
  }

LABEL_255:
  *time = v128;
  *&time[16] = *v129;
  v152 = *&v129[16];
  fpm_updateStreamBufferDurationAhead(a1, time);
  *(a1 + 315) = 0;
  return updated;
}

uint64_t FigPlayabilityMonitorGetPlaythroughInfo(uint64_t a1, _DWORD *a2, BOOL *a3, _DWORD *a4)
{
  FigSimpleMutexLock();
  if (a2)
  {
    *a2 = *(a1 + 104);
  }

  if (a3)
  {
    *a3 = *(a1 + 314) == 0;
  }

  if (a4)
  {
    *a4 = *(a1 + 108);
  }

  FigSimpleMutexUnlock();
  return 0;
}

uint64_t FigPlayabilityMonitorGetPlayabilityMetrics(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  FigSimpleMutexLock();
  *a2 = a1[1072];
  *a3 = a1[1073];
  *a4 = a1[1074];
  *a5 = a1[1075];
  *a6 = a1[1076];
  *a7 = a1[1077];
  FigSimpleMutexUnlock();
  return 0;
}

uint64_t FigPlayabilityMonitorCopyRemoteIPAddress(uint64_t a1, void *a2)
{
  FigSimpleMutexLock();
  v4 = *(a1 + 8624);
  if (v4)
  {
    v4 = CFRetain(v4);
  }

  *a2 = v4;
  FigSimpleMutexUnlock();
  return 0;
}

void fpm_postDeferredNotification(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5)
{
  FigRetainProxyLockMutex();
  if (!FigRetainProxyIsInvalidated())
  {
    Owner = FigRetainProxyGetOwner();
    CFDataGetMutableBytePtr(Owner);
    CMNotificationCenterPostNotification();
  }

  FigRetainProxyUnlockMutex();
  FigRetainProxyRelease();
  if (a5)
  {

    CFRelease(a5);
  }
}

uint64_t FigCRABSUnhintActiveRanges_0(uint64_t a1, uint64_t a2)
{
  VTable = CMBaseObjectGetVTable();
  v6 = *(VTable + 24);
  result = VTable + 24;
  v7 = *(v6 + 16);
  if (v7)
  {

    return v7(a1, 1, a2);
  }

  return result;
}

uint64_t fpm_getPlayableDurationForTrack(uint64_t a1, uint64_t a2, CMTime *a3, CMTime *a4, Boolean *a5, CMTimeValue *a6, CMTimeValue *a7)
{
  memset(&v48, 0, sizeof(v48));
  v12 = *(a1 + 80);
  v13 = *(a1 + 88) + 48 * a2;
  v14 = *(a1 + 8);
  BOOLean = 0;
  dictionaryRepresentation = 0;
  memset(&v49, 0, sizeof(v49));
  v15 = MEMORY[0x1E6960C68];
  v16 = *(MEMORY[0x1E6960C68] + 16);
  a4->epoch = v16;
  v46 = *v15;
  *&a4->value = *v15;
  ++*(a1 + 64);
  FigSimpleMutexUnlock();
  FigSimpleMutexLock();
  v17 = *(v13 + 16);
  v18 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v18)
  {
    goto LABEL_11;
  }

  v19 = v18(v17, &v48);
  if (v19)
  {
    v20 = v19;
    goto LABEL_12;
  }

  time1 = v48;
  time2 = *a3;
  if (!CMTimeCompare(&time1, &time2))
  {
    goto LABEL_8;
  }

  v21 = *(v13 + 16);
  time1 = *a3;
  rhs = v48;
  CMTimeSubtract(&time2, &time1, &rhs);
  v22 = *(*(CMBaseObjectGetVTable() + 16) + 128);
  if (!v22)
  {
LABEL_11:
    v20 = 4294954514;
    goto LABEL_12;
  }

  time1 = time2;
  v23 = v22(v21, &time1);
  if (v23)
  {
    v20 = v23;
    if (v23 != -12840)
    {
      goto LABEL_12;
    }
  }

LABEL_8:
  v44 = *MEMORY[0x1E695E480];
  FigBaseObject = FigSampleCursorGetFigBaseObject(*(v13 + 16));
  v25 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v25)
  {
    v20 = v25(FigBaseObject, @"CursorPlayableHorizon", v44, &dictionaryRepresentation);
    if (!v20)
    {
      CMTimeMakeFromDictionary(&time1, dictionaryRepresentation);
      *a4 = time1;
      CFRelease(dictionaryRepresentation);
      goto LABEL_17;
    }
  }

  else
  {
    v20 = 4294954514;
  }

  *(a1 + 8554) = 0;
LABEL_17:
  if (a5)
  {
    v45 = a7;
    v28 = FigSampleCursorGetFigBaseObject(*(v13 + 16));
    v29 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v29 && !v29(v28, @"CursorPlayableThroughEndOfTrack", v44, &BOOLean))
    {
      *a5 = CFBooleanGetValue(BOOLean);
      CFRelease(BOOLean);
      v36 = *a5;
      a7 = v45;
LABEL_45:
      v37 = a6;
      if (v36)
      {
        v20 = 0;
      }

      goto LABEL_36;
    }

    if ((~a4->flags & 0x11) != 0)
    {
      v30 = *(v13 + 24);
      *&v49.value = v46;
      v49.epoch = v16;
      if (v12 == 1)
      {
        LOBYTE(v31) = FigFormatReaderUtilityGetDuration(v14, 0, &v49) != 0;
      }

      else
      {
        memset(&time2, 0, sizeof(time2));
        v32 = *(*(CMBaseObjectGetVTable() + 16) + 128);
        if (v32)
        {
          time1 = **&MEMORY[0x1E6960C88];
          v32(v30, &time1);
        }

        v33 = *(*(CMBaseObjectGetVTable() + 16) + 40);
        if (v33)
        {
          v33(v30, &v49);
        }

        v31 = *(*(CMBaseObjectGetVTable() + 16) + 56);
        if (v31)
        {
          v31 = *(*(CMBaseObjectGetVTable() + 16) + 56);
          if (v31)
          {
            if (v31(v30, &time2))
            {
              LOBYTE(v31) = 0;
            }

            else
            {
              rhs = v49;
              v52 = time2;
              CMTimeAdd(&time1, &rhs, &v52);
              LOBYTE(v31) = 0;
              v49 = time1;
            }
          }
        }
      }

      if ((v49.flags & 0x1D) == 1 && (v31 & 1) == 0)
      {
        time2 = v49;
        rhs = *a3;
        CMTimeSubtract(&time1, &time2, &rhs);
        v49 = time1;
        epoch = time1.epoch;
        v35 = *&time1.value;
        time1 = *a4;
        *&time2.value = v35;
        time2.epoch = epoch;
        v36 = CMTimeCompare(&time1, &time2) >= 0;
        *a5 = v36;
        a7 = v45;
        goto LABEL_45;
      }
    }

    *a5 = 0;
    a7 = v45;
  }

  v37 = a6;
LABEL_36:
  if (v37)
  {
    if (a7)
    {
      *v37 = 0x7FFFFFFFFFFFFFFFLL;
      *a7 = 0;
      v38 = *(v13 + 16);
      time2 = *a4;
      v39 = *(*(CMBaseObjectGetVTable() + 16) + 128);
      if (!v39 || (time1 = time2, v39(v38, &time1) != -12840))
      {
        time1.value = 0;
        time2.value = 0;
        v40 = *(v13 + 16);
        v41 = *(*(CMBaseObjectGetVTable() + 16) + 152);
        if (v41 && !v41(v40, 0, 0, &time1, &time2, 0, 0, 0, 0, 0))
        {
          *v37 = time1.value;
          *a7 = time2.value;
        }

        else
        {
          v42 = *(v13 + 16);
          v43 = *(*(CMBaseObjectGetVTable() + 16) + 144);
          if (v43)
          {
            v43(v42, v37, a7, 0, 0);
          }
        }
      }
    }
  }

LABEL_12:
  FigSimpleMutexUnlock();
  FigSimpleMutexLock();
  v26 = *(a1 + 64) - 1;
  *(a1 + 64) = v26;
  if (!v26)
  {
    MEMORY[0x19A8D12E0](*(a1 + 72));
  }

  return v20;
}

BOOL fpm_shouldUpdateAggressively(uint64_t a1)
{
  v1 = *(a1 + 104);
  if (!v1)
  {
    return 1;
  }

  v2 = *(a1 + 112);
  if (v2 == 3)
  {
    return v1 != 1 || *(a1 + 315);
  }

  if (*(a1 + 315))
  {
    return 1;
  }

  if (v1 == 1 || v2 != 0)
  {
    return 0;
  }

  return *(a1 + 8555) == 0;
}

uint64_t fpm_deferredTimebaseJumpedCallback()
{
  FigRetainProxyLockMutex();
  if (!FigRetainProxyIsInvalidated())
  {
    Owner = FigRetainProxyGetOwner();
    MutableBytePtr = CFDataGetMutableBytePtr(Owner);
    FigSimpleMutexLock();
    fpm_ensureUpdatePrimed(MutableBytePtr);
    FigSimpleMutexUnlock();
  }

  FigRetainProxyUnlockMutex();

  return FigRetainProxyRelease();
}

uint64_t fpm_isLikelyToKeepUp(uint64_t a1, double *a2, double a3, double a4, double a5, float a6)
{
  if (a5 <= 0.0)
  {
    LOBYTE(v23) = 0;
  }

  else
  {
    v31 = v11;
    v32 = v10;
    v33 = v9;
    v34 = v8;
    v35 = v6;
    v36 = v7;
    if (!*(a1 + 8552) && fpm_prepareDataRateProfile(a1) || (v30 = *(a1 + 8528), Seconds = CMTimeGetSeconds(&v30), Seconds == 0.0))
    {
      LOBYTE(v23) = 0;
    }

    else
    {
      v19 = 0;
      v20 = 0.0;
      do
      {
        v20 = Seconds + v20;
        if (v20 > a3)
        {
          break;
        }

        ++v19;
      }

      while (v19 != 1023);
      v21 = 0;
      v22 = 0.0;
      while (1)
      {
        v22 = Seconds + v22;
        if (v22 > a3 + a4)
        {
          break;
        }

        if (++v21 == 1023)
        {
          goto LABEL_15;
        }
      }

      if (v21 > 0x3FF)
      {
        v24 = 0.0;
        LOBYTE(v23) = 1;
        if (a2)
        {
LABEL_24:
          *a2 = v24;
        }
      }

      else
      {
LABEL_15:
        v24 = 0.0;
        v25 = Seconds * (v21 - v19) * a5 + 0.0;
        v26 = 8 * v21;
        v23 = 1;
        do
        {
          v27 = *(a1 + 336 + v26);
          if (!v27)
          {
            break;
          }

          v28 = (v27 * a6);
          if (v23 && v25 > v28)
          {
            v23 = 1;
          }

          else
          {
            v23 = 0;
            if (v25 < v28)
            {
              v24 = v24 + (v28 - v25) / a5;
              v25 = (v27 * a6);
            }
          }

          v26 += 8;
          v25 = v25 - (v27 - Seconds * a5);
        }

        while (v26 != 0x2000);
        if (a2)
        {
          goto LABEL_24;
        }
      }
    }
  }

  return v23;
}

uint64_t OUTLINED_FUNCTION_3_13()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

__n128 OUTLINED_FUNCTION_5_11()
{
  result = v0[15];
  v1[7] = result;
  v1[8].n128_u64[0] = v0[16].n128_u64[0];
  return result;
}

void OUTLINED_FUNCTION_7_7()
{
  *(v2 - 240) = *(v2 - 112);
  *(v2 - 232) = *(v2 - 104);
  *(v2 - 228) = v0;
  *(v2 - 224) = v1;
}

uint64_t OUTLINED_FUNCTION_14_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, __int128 a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, CMTime *time2, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t time2a)
{
  *(v38 + 144) = *(v37 + 240);
  *(v38 + 160) = *(v37 + 256);
  *(v38 + 112) = a24;
  *(v38 + 128) = *(v38 + 16);

  return CMTimeCompare((v39 - 224), &time2a);
}

uint64_t OUTLINED_FUNCTION_18_3()
{

  return _os_log_send_and_compose_impl();
}

uint64_t OUTLINED_FUNCTION_22_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, CMTime *time2, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, __int128 time2a, uint64_t time2_16, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, __int128 a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, __int128 a63)
{
  time2a = a63;
  time2_16 = a64;

  return CMTimeCompare((v64 - 240), &time2a);
}

__n128 OUTLINED_FUNCTION_24_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, __n128 a28, unint64_t a29)
{
  result = a28;
  v29[8] = a28;
  v29[9].n128_u64[0] = a29;
  return result;
}

uint64_t OUTLINED_FUNCTION_29_3(uint64_t a1, uint64_t a2, CMTime *a3, CMTime *a4, Boolean *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, CMTimeValue a46, CMTimeValue a47)
{

  return fpm_getPlayableDurationForTrack(v47, v48, a3, a4, a5, &a47, &a46);
}

uint64_t figTTMLNodeRegisterFigTTMLNodeBaseType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigTTMLNodeGetTypeID()
{
  MEMORY[0x19A8D3660](&FigTTMLNodeGetClassID_sRegisterFigTTMLNodeBaseTypeOnce, figTTMLNodeRegisterFigTTMLNodeBaseType);

  return CMBaseClassGetCFTypeID();
}

const void *FigTTMLNodeGetXMLID()
{
  v0 = *(CMBaseObjectGetDerivedStorage() + 24);

  return CFDictionaryGetValue(v0, @"http://www.w3.org/XML/1998/namespace id");
}

uint64_t FigTTMLNodeGetTimeContainerSemantics(uint64_t a1, __CFString **a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    cf1 = 0;
    result = CFDictionaryGetValueIfPresent(*(DerivedStorage + 24), @"timeContainer", &cf1);
    if (result)
    {
      if (!CFEqual(cf1, @"par") && !CFEqual(cf1, @"seq"))
      {
        return 4294950725;
      }

      result = 0;
      v5 = cf1;
    }

    else
    {
      v5 = @"par";
    }

    *a2 = v5;
  }

  else
  {
    FigTTMLNodeGetTimeContainerSemantics_cold_1(&v7);
    return v7;
  }

  return result;
}

uint64_t FigTTMLNodeCopyChildNodeArray(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a1, a2);
}

uint64_t FigTTMLNodeGetNodeType(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a1, a2);
}

uint64_t FigTTMLNodeGetRegionAttributeValue(uint64_t a1, void *a2)
{
  v5 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    CFDictionaryGetValueIfPresent(*(DerivedStorage + 24), @"region", &v5);
    result = 0;
    *a2 = v5;
  }

  else
  {
    FigTTMLNodeGetRegionAttributeValue_cold_1(&v6);
    return v6;
  }

  return result;
}

uint64_t FigTTMLNodeIsAssociatedWithRegionID(const void *a1, const void *a2)
{
  if (CFEqual(&stru_1F0B1AFB8, a2))
  {
    return 1;
  }

  value = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFDictionaryGetValueIfPresent(*(DerivedStorage + 24), @"region", &value);
  v6 = value;
  if (value)
  {
    return CFEqual(v6, a2);
  }

  if (a1)
  {
    do
    {
      value = 0;
      v7 = CMBaseObjectGetDerivedStorage();
      CFDictionaryGetValueIfPresent(*(v7 + 24), @"region", &value);
      v6 = value;
      if (value)
      {
        return CFEqual(v6, a2);
      }
    }

    while (*CMBaseObjectGetDerivedStorage());
  }

  v10 = a2;
  v11 = 0;
  v8 = FigTTMLTreeWalkFromNode(a1, figTTMLNodeIsAssociatedWithRegionIDCallback, 0, &v10);
  return v11 && v8 == 0;
}

uint64_t figTTMLNodeIsAssociatedWithRegionIDCallback(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    return 4294950723;
  }

  value[3] = v2;
  value[4] = v3;
  value[0] = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFDictionaryGetValueIfPresent(*(DerivedStorage + 24), @"region", value);
  result = value[0];
  if (value[0])
  {
    result = CFEqual(value[0], *a2);
    if (result)
    {
      result = 0;
      *(a2 + 8) = 1;
    }
  }

  return result;
}

uint64_t FigTTMLNodeCopyAttributes(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = *(DerivedStorage + 24);
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
  }

  else
  {
    FigTTMLNodeCopyAttributes_cold_1(&v7);
    return v7;
  }

  return result;
}

uint64_t FigTTMLNodeCopySkippedElementLocalNames(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = *(DerivedStorage + 128);
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
  }

  else
  {
    FigTTMLNodeCopySkippedElementLocalNames_cold_1(&v7);
    return v7;
  }

  return result;
}

double OUTLINED_FUNCTION_0_21(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, uint64_t a29, uint64_t a30, double a31)
{
  *(v23 - 112) = a27;
  *(v23 - 104) = a28;
  return a31;
}

CMTime *OUTLINED_FUNCTION_2_19(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, CMTimeRange *range, __int128 range_8, __int128 range_24, __int128 range_40, uint64_t a19, __int128 a20, __int128 a21)
{
  *&range = *(&range_40 + 8);
  *(&range_8 + 8) = a20;
  *(&range_24 + 8) = a21;

  return CMTimeRangeGetEnd(&a9, &range);
}

uint64_t FigTTMLDocumentWriterCreateFrameRateParameterInserter(uint64_t a1, const void *a2, void *a3)
{
  if (!a2)
  {
    FigTTMLDocumentWriterCreateFrameRateParameterInserter_cold_2(&v8);
    return v8;
  }

  if (!a3)
  {
    FigTTMLDocumentWriterCreateFrameRateParameterInserter_cold_1(&v8);
    return v8;
  }

  FigTTMLDocumentWriterGetClassID();
  v5 = CMDerivedObjectCreate();
  if (!v5)
  {
    FigTTMLDocumentWriterGetCMBaseObject(0);
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *DerivedStorage = CFRetain(a2);
    DerivedStorage[1] = @"nonDrop";
    *a3 = 0;
  }

  return v5;
}

void figTTMLDocumentWriterFrameRateParameterInserter_Finalize(uint64_t a1)
{
  FigTTMLDocumentWriterGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

uint64_t figTTMLDocumentWriterFrameRateParameterInserter_CopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a4)
    {
      return 4294954512;
    }

    v7 = 70;
  }

  else
  {
    v7 = 69;
  }

  v9 = v4;
  v10 = v5;
  figTTMLDocumentWriterFrameRateParameterInserter_CopyProperty_cold_1(v7, &v8);
  return v8;
}

uint64_t figTTMLDocumentWriterFrameRateParameterInserter_SetProperty(uint64_t a1, const void *a2, const void *a3)
{
  v50 = *MEMORY[0x1E69E9840];
  FigTTMLDocumentWriterGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    figTTMLDocumentWriterFrameRateParameterInserter_SetProperty_cold_4(&v17);
    return LODWORD(v17.value);
  }

  if (!a3)
  {
    figTTMLDocumentWriterFrameRateParameterInserter_SetProperty_cold_3(&v17);
    return LODWORD(v17.value);
  }

  v6 = DerivedStorage;
  if (!CFEqual(@"timeCodeFrameDuration", a2))
  {
    if (!CFEqual(@"useDropFrame", a2))
    {
      return 4294954512;
    }

    v10 = CFGetTypeID(a3);
    if (v10 == CFBooleanGetTypeID())
    {
      result = CFBooleanGetValue(a3);
      if (result)
      {
        result = 0;
        *(v6 + 8) = @"dropNTSC";
      }

      return result;
    }

    figTTMLDocumentWriterFrameRateParameterInserter_SetProperty_cold_2(&v17);
    return LODWORD(v17.value);
  }

  v7 = CFGetTypeID(a3);
  if (v7 != CFDictionaryGetTypeID())
  {
    figTTMLDocumentWriterFrameRateParameterInserter_SetProperty_cold_1(&v17);
    return LODWORD(v17.value);
  }

  memset(&v14, 0, sizeof(v14));
  CMTimeMakeFromDictionary(&v14, a3);
  v13 = v14;
  CMTimeMake(&v17, 1, 24);
  v18 = 24;
  CMTimeMake(&v19, 1, 1);
  CMTimeMake(&v20, 1, 25);
  v21 = 25;
  CMTimeMake(&v22, 1, 1);
  CMTimeMake(&v23, 1, 30);
  v24 = 30;
  CMTimeMake(&v25, 1, 1);
  CMTimeMake(&v26, 1, 50);
  v27 = 50;
  CMTimeMake(&v28, 1, 1);
  CMTimeMake(&v29, 1, 60);
  v30 = 60;
  CMTimeMake(&v31, 1, 1);
  CMTimeMake(&v32, 1001, 24000);
  v33 = 24;
  CMTimeMake(&v34, 1000, 1001);
  CMTimeMake(&v35, 1001, 30000);
  v36 = 30;
  CMTimeMake(&v37, 1000, 1001);
  CMTimeMake(&v38, 1001, 60000);
  v39 = 60;
  CMTimeMake(&v40, 1000, 1001);
  CMTimeMake(&v41, 1000, 23976);
  v42 = 24;
  CMTimeMake(&v43, 999, 1000);
  CMTimeMake(&v44, 1000, 29970);
  v45 = 30;
  CMTimeMake(&v46, 999, 1000);
  CMTimeMake(&v47, 1000, 59940);
  v48 = 60;
  CMTimeMake(&v49, 999, 1000);
  v8 = 0;
  *(v6 + 16) = 0;
  v9 = MEMORY[0x1E6960C70];
  *(v6 + 20) = *MEMORY[0x1E6960C70];
  *(v6 + 36) = *(v9 + 16);
  while (1)
  {
    time1 = v13;
    time2 = *(&v17 + v8);
    if (!CMTimeCompare(&time1, &time2))
    {
      break;
    }

    v8 += 52;
    if (v8 == 572)
    {
      return 0;
    }
  }

  *(v6 + 16) = *(&v17 + v8 + 24);
  v12 = *(&v19.value + v8);
  *(v6 + 36) = *(&v19.epoch + v8);
  *(v6 + 20) = v12;
  return 0;
}

uint64_t figTTMLDocumentWriterFrameRateParameterInserter_StartElement(uint64_t a1, uint64_t a2)
{
  FigTTMLDocumentWriterGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  started = FigTTMLDocumentWriterStartElement(*DerivedStorage, a2);
  v6 = started;
  if (a2 == 7 && !started)
  {
    if (!*(DerivedStorage + 16))
    {
      goto LABEL_10;
    }

    v7 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, (DerivedStorage + 16));
    v6 = FigTTMLDocumentWriterSetAttribute(a1, @"http://www.w3.org/ns/ttml#parameter frameRate", v7);
    if (v7)
    {
      CFRelease(v7);
    }

    if (!v6)
    {
LABEL_10:
      if ((*(DerivedStorage + 32) & 0x1D) != 1)
      {
        goto LABEL_11;
      }

      v8 = *MEMORY[0x1E695E480];
      v12 = *(DerivedStorage + 20);
      v9 = CMTimeCopyAsDictionary(&v12, v8);
      v6 = FigTTMLDocumentWriterSetAttribute(a1, @"http://www.w3.org/ns/ttml#parameter frameRateMultiplier", v9);
      if (v9)
      {
        CFRelease(v9);
      }

      if (!v6)
      {
LABEL_11:
        v10 = *(DerivedStorage + 8);
        if (v10 == @"nonDrop")
        {
          return 0;
        }

        else
        {
          return FigTTMLDocumentWriterSetAttribute(a1, @"http://www.w3.org/ns/ttml#parameter dropMode", v10);
        }
      }
    }
  }

  return v6;
}

uint64_t figTTMLDocumentWriterFrameRateParameterInserter_EndElement(uint64_t a1)
{
  FigTTMLDocumentWriterGetCMBaseObject(a1);
  v1 = *CMBaseObjectGetDerivedStorage();

  return FigTTMLDocumentWriterEndElement(v1);
}

uint64_t figTTMLDocumentWriterFrameRateParameterInserter_AddCaptionData(uint64_t a1, uint64_t a2)
{
  FigTTMLDocumentWriterGetCMBaseObject(a1);
  v3 = *CMBaseObjectGetDerivedStorage();

  return FigTTMLDocumentWriterAddCaptionData(v3, a2);
}

uint64_t figTTMLDocumentWriterFrameRateParameterInserter_SetAttribute(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FigTTMLDocumentWriterGetCMBaseObject(a1);
  v5 = *CMBaseObjectGetDerivedStorage();

  return FigTTMLDocumentWriterSetAttribute(v5, a2, a3);
}

uint64_t figTTMLDocumentWriterFrameRateParameterInserter_Flush(uint64_t a1)
{
  FigTTMLDocumentWriterGetCMBaseObject(a1);
  v1 = *CMBaseObjectGetDerivedStorage();

  return FigTTMLDocumentWriterFlush(v1);
}

uint64_t figtimebase_getSyncMomentInternal(OpaqueCMTimebase *a1, int a2, uint64_t a3)
{
  v28 = *MEMORY[0x1E69E9840];
  *&v26.value = *MEMORY[0x1E6960C70];
  v3 = *(MEMORY[0x1E6960C70] + 16);
  v26.epoch = v3;
  *&outOfClockOrTimebaseAnchorTime.value = *&v26.value;
  outOfClockOrTimebaseAnchorTime.epoch = v3;
  if (!a1)
  {
    figtimebase_getSyncMomentInternal_cold_2(&v24);
    return LODWORD(v24.value);
  }

  v19 = *&v26.value;
  v7 = CMTimebaseCopyUltimateSourceClock(a1);
  if (!v7)
  {
    figtimebase_getSyncMomentInternal_cold_1(&v24);
    return LODWORD(v24.value);
  }

  v8 = v7;
  *(a3 + 112) = 0;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 96) = 0u;
  *a3 = 120;
  *(a3 + 8) = CMTimebaseGetEffectiveRate(a1);
  *(a3 + 4) = 0;
  HostTimeClock = CMClockGetHostTimeClock();
  CMClockGetTime(&v26, HostTimeClock);
  v10 = CMClockGetHostTimeClock();
  time = v26;
  CMSyncConvertTime(&v24, &time, v10, a1);
  *(a3 + 16) = v24;
  *(a3 + 40) = v26;
  v11 = CMClockGetHostTimeClock();
  *(a3 + 64) = CMSyncGetRelativeRate(v8, v11);
  *(a3 + 72) = v19;
  *(a3 + 88) = v3;
  *(a3 + 96) = v19;
  *(a3 + 112) = v3;
  if (!a2)
  {
    goto LABEL_15;
  }

  v12 = CMTimebaseCopySource(a1);
  if (!v12)
  {
    goto LABEL_15;
  }

  v13 = v12;
  v21 = 0.0;
  outRelativeRate = 0.0;
  memset(&time, 0, sizeof(time));
  CMSyncGetRelativeRateAndAnchorTime(a1, v8, &outRelativeRate, 0, 0);
  CMSyncGetRelativeRateAndAnchorTime(a1, v13, 0, &outOfClockOrTimebaseAnchorTime, &time);
  CMSyncGetRelativeRateAndAnchorTime(v13, v8, &v21, 0, 0);
  CMSyncGetTime(&v24, v13);
  if (outRelativeRate != 0.0)
  {
    v14 = v21;
    if (v21 > 0.0)
    {
      time1 = time;
      time2 = v24;
      if (CMTimeCompare(&time1, &time2) > 0)
      {
        goto LABEL_11;
      }

      v14 = v21;
    }

    if (v14 < 0.0)
    {
      time1 = time;
      time2 = v24;
      if (CMTimeCompare(&time1, &time2) < 0)
      {
LABEL_11:
        v15 = CMClockGetHostTimeClock();
        time2 = time;
        CMSyncConvertTime(&time1, &time2, v13, v15);
        time2.value = time1.value;
        time2.timescale = time1.timescale;
        if (outOfClockOrTimebaseAnchorTime.flags)
        {
          flags = time1.flags;
          if (time1.flags)
          {
            epoch = time1.epoch;
            *(a3 + 72) = outOfClockOrTimebaseAnchorTime;
            *(a3 + 96) = time2.value;
            *(a3 + 104) = time2.timescale;
            *(a3 + 108) = flags;
            *(a3 + 112) = epoch;
            *(a3 + 4) |= 8u;
          }
        }
      }
    }
  }

  CFRelease(v13);
LABEL_15:
  CFRelease(v8);
  return 0;
}

void figSyncMomentSource_UpdateToCurrentTimebaseRate(uint64_t a1)
{
  EffectiveRate = CMTimebaseGetEffectiveRate(*(a1 + 64));
  if (EffectiveRate == 0.0 && *(a1 + 72) != 0.0)
  {
    v3 = *(a1 + 224);
    v4 = -1;
    v5 = -1;
    v6 = 0;
LABEL_7:
    dispatch_source_set_timer(v3, v4, v5, v6);
    goto LABEL_8;
  }

  if (EffectiveRate != 0.0 && *(a1 + 72) == 0.0)
  {
    v7 = *(a1 + 224);
    v4 = dispatch_time(0, 1000000000);
    v3 = v7;
    v5 = 1000000000;
    v6 = 10000000;
    goto LABEL_7;
  }

LABEL_8:
  *(a1 + 72) = EffectiveRate;
}

uint64_t FigSyncMomentSourceChangeFlagsMask(uint64_t a1, int a2, int a3, _DWORD *a4)
{
  if (a1)
  {
    v5 = *(a1 + 232);
    if (a4)
    {
      *a4 = v5;
    }

    *(a1 + 232) = v5 & ~a2 | a3 & a2;
    return 0;
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }
}

uint64_t figSyncMomentSource_registerClass()
{
  result = _CFRuntimeRegisterClass();
  sFigSyncMomentSourceID = result;
  return result;
}

uint64_t figSyncMomentSource_createInternal(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), const void *a5, NSObject *a6, uint64_t *a7)
{
  if (!(a1 | a2))
  {
    figSyncMomentSource_createInternal_cold_8(&v22);
LABEL_20:
    Instance = 0;
    goto LABEL_21;
  }

  if (!a5)
  {
    figSyncMomentSource_createInternal_cold_7(&v22);
    goto LABEL_20;
  }

  if (!a7)
  {
    figSyncMomentSource_createInternal_cold_6(&v22);
    goto LABEL_20;
  }

  if (!a6)
  {
    figSyncMomentSource_createInternal_cold_5(&v22);
    goto LABEL_20;
  }

  MEMORY[0x19A8D3660](&FigSyncMomentSourceGetTypeID_sRegisterFigSyncMomentSourceOnce, figSyncMomentSource_registerClass);
  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v15 = FigCFWeakReferenceHolderCreateWithReferencedObject();
    *(Instance + 16) = v15;
    if (v15)
    {
      *(Instance + 232) = -1;
      v16 = FigReentrantMutexCreate();
      *(Instance + 24) = v16;
      if (v16)
      {
        FigSimpleMutexLock();
        v17 = *(Instance + 24);
        *(Instance + 32) = a1;
        *(Instance + 40) = a2;
        *(Instance + 48) = a3;
        *(Instance + 56) = a4;
        *(Instance + 80) = FigDispatchQueueCreateWithPriority();
        *(Instance + 216) = a6;
        dispatch_retain(a6);
        v18 = *(Instance + 80);
        if (v18)
        {
          v19 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v18);
          *(Instance + 224) = v19;
          if (v19)
          {
            dispatch_source_set_timer(v19, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
            dispatch_set_context(*(Instance + 224), *(Instance + 16));
            CFRetain(*(Instance + 16));
            dispatch_set_finalizer_f(*(Instance + 224), figSyncMomentSource_QueueTimerFinalizer);
            dispatch_source_set_event_handler_f(*(Instance + 224), figSyncMomentSource_QueueTimerCallback);
            *(Instance + 240) = voucher_copy();
            dispatch_resume(*(Instance + 224));
LABEL_12:
            if (v17)
            {
              FigSimpleMutexUnlock();
            }

            FigSyncMomentSourceSetTimebase(Instance, a5);
            v20 = 0;
            *a7 = Instance;
            return v20;
          }

          figSyncMomentSource_createInternal_cold_1(&v22);
          v20 = v22;
          if (!v22)
          {
            goto LABEL_12;
          }
        }

        else
        {
          fig_log_get_emitter();
          v20 = FigSignalErrorAtGM();
          if (!v20)
          {
            goto LABEL_12;
          }
        }

        if (v17)
        {
          FigSimpleMutexUnlock();
        }

LABEL_24:
        CFRelease(Instance);
        return v20;
      }

      figSyncMomentSource_createInternal_cold_2(&v22);
    }

    else
    {
      figSyncMomentSource_createInternal_cold_3(&v22);
    }
  }

  else
  {
    figSyncMomentSource_createInternal_cold_4(&v22);
  }

LABEL_21:
  v20 = v22;
  if (a4)
  {
    a4(a3);
  }

  if (Instance)
  {
    goto LABEL_24;
  }

  return v20;
}

__n128 figSyncMomentSource_updatePendingMoment(__n128 *a1)
{
  v1 = a1->n128_u64[0];
  v2 = a1->n128_i32[3];
  v9 = a1[5];
  v10 = a1[6];
  v11 = a1[7];
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v3 = *(a1->n128_u64[0] + 208);
  if (*(a1->n128_u64[0] + 208))
  {
    v2 |= *(v1 + 92);
  }

  *(v1 + 88) = a1->n128_u32[2];
  *(v1 + 92) = v2;
  *(v1 + 160) = v9;
  *(v1 + 176) = v10;
  *(v1 + 192) = v11;
  *(v1 + 96) = v5;
  *(v1 + 112) = v6;
  result = v8;
  *(v1 + 128) = v7;
  *(v1 + 144) = v8;
  a1[8].n128_u8[0] = v3 == 0;
  *(v1 + 208) = 1;
  return result;
}

uint64_t figSyncMomentSource_retrievePendingMoment(uint64_t result)
{
  v1 = result;
  v2 = *result;
  if (*(*result + 208))
  {
    v3 = 0;
    v4 = *(v2 + 88);
    v5 = *(v2 + 104);
    v6 = *(v2 + 120);
    *(result + 56) = *(v2 + 136);
    *(result + 40) = v6;
    *(result + 24) = v5;
    *(result + 8) = v4;
    v7 = *(v2 + 152);
    v8 = *(v2 + 168);
    v9 = *(v2 + 184);
    *(result + 120) = *(v2 + 200);
    *(result + 104) = v9;
    *(result + 88) = v8;
    *(result + 72) = v7;
    *(v2 + 208) = 0;
  }

  else
  {
    result = figSyncMomentSource_retrievePendingMoment_cold_1(&v10);
    v3 = v10;
  }

  *(v1 + 128) = v3;
  return result;
}

double figSyncMomentSource_Init(uint64_t a1)
{
  *(a1 + 240) = 0;
  result = 0.0;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

uint64_t figSyncMomentSource_Finalize(uint64_t a1)
{
  *(a1 + 236) = 1;
  if (*(a1 + 64))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CFRelease(*(a1 + 64));
  }

  v2 = *(a1 + 224);
  if (v2)
  {
    dispatch_async_f(*(a1 + 80), v2, figSyncMomentSource_DestroyPeriodicTimer);
    *(a1 + 224) = 0;
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 80);
  if (v4)
  {
    dispatch_release(v4);
    *(a1 + 80) = 0;
  }

  v5 = *(a1 + 216);
  if (v5)
  {
    dispatch_release(v5);
    *(a1 + 216) = 0;
  }

  v6 = *(a1 + 240);
  if (v6)
  {
    os_release(v6);
    *(a1 + 240) = 0;
  }

  v7 = *(a1 + 56);
  if (v7)
  {
    v7(*(a1 + 48));
  }

  result = FigSimpleMutexDestroy();
  *(a1 + 24) = 0;
  return result;
}

__CFString *figSyncMomentSource_CopyDebugDesc(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  v4 = Mutable;
  v5 = "(INVALID) ";
  if (!*(a1 + 236))
  {
    v5 = "";
  }

  v6 = "YES";
  if (!*(a1 + 208))
  {
    v6 = "NO";
  }

  CFStringAppendFormat(Mutable, 0, @"FigSyncMomentSource: %p %stimebase: %p timebaseEffectiveRate: %f pendingQueue: %p queueTimer: %p signallingQueue: %p momentPending: %s flagsMask: %x callbacks: %p %p refcon: %p\n", a1, v5, *(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 224), *(a1 + 216), v6, *(a1 + 232), *(a1 + 32), *(a1 + 40), *(a1 + 48));
  return v4;
}

void figSyncMomentSource_DestroyPeriodicTimer(NSObject *a1)
{
  if (a1)
  {
    dispatch_source_cancel(a1);

    dispatch_release(a1);
  }
}

void figSyncMomentSource_QueueTimerCallback()
{
  v0 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v0)
  {
    v1 = v0;
    if (!*(v0 + 236))
    {
      figSyncMomentSource_QueueTimerCallback_cold_1(v2, v0);
    }

    CFRelease(v1);
  }
}

uint64_t FigLayerSynchronizerConfigurationGetTypeID()
{
  if (_MergedGlobals_20 != -1)
  {
    FigLayerSynchronizerConfigurationGetTypeID_cold_1();
  }

  return qword_1ED4CA4A0;
}

uint64_t registerLayerSynchronizerConfigurationOnce(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

uint64_t FigLayerSynchronizerConfigurationCreate(const __CFAllocator *a1, void *a2)
{
  if (a2)
  {
    if (_MergedGlobals_20 != -1)
    {
      FigLayerSynchronizerConfigurationGetTypeID_cold_1();
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v5 = Instance;
      Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
      v5[4] = Mutable;
      if (Mutable)
      {
        v7 = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
        v5[3] = v7;
        if (v7)
        {
          v8 = FigSimpleMutexCreate();
          v5[2] = v8;
          if (v8)
          {
            result = 0;
            *a2 = v5;
            return result;
          }

          v10 = 502;
        }

        else
        {
          v10 = 500;
        }
      }

      else
      {
        v10 = 498;
      }

      FigLayerSynchronizerConfigurationCreate_cold_2(v10, v5, &v11);
      return v11;
    }

    else
    {
      FigLayerSynchronizerConfigurationCreate_cold_3(&v12);
      return v12;
    }
  }

  else
  {
    FigLayerSynchronizerConfigurationCreate_cold_4(&v13);
    return v13;
  }
}

uint64_t FigLayerSynchronizerConfigurationAddLayersSubjectToImageQueueTiming(uint64_t a1)
{
  if (a1)
  {
    FigSimpleMutexLock();
    FigCFArrayAppendArray();
    FigSimpleMutexUnlock();
    return 0;
  }

  else
  {
    FigLayerSynchronizerConfigurationAddLayersSubjectToImageQueueTiming_cold_1(&v2);
    return v2;
  }
}

uint64_t FigLayerSynchronizerConfigurationAddLayersNotSubjectToImageQueueTiming(uint64_t a1)
{
  if (a1)
  {
    FigSimpleMutexLock();
    FigCFArrayAppendArray();
    FigSimpleMutexUnlock();
    return 0;
  }

  else
  {
    FigLayerSynchronizerConfigurationAddLayersNotSubjectToImageQueueTiming_cold_1(&v2);
    return v2;
  }
}

uint64_t FigLayerSynchronizerConfigurationCopyLayers(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a1)
  {
    FigSimpleMutexLock();
    if (a3)
    {
      *a3 = FigCFArrayCreateCopy();
    }

    if (a4)
    {
      *a4 = FigCFArrayCreateCopy();
    }

    FigSimpleMutexUnlock();
    return 0;
  }

  else
  {
    FigLayerSynchronizerConfigurationCopyLayers_cold_1(&v7);
    return v7;
  }
}

uint64_t registerLayerSynchronizerType()
{
  result = _CFRuntimeRegisterClass();
  sLayerSynchronizerID = result;
  return result;
}

uint64_t FigLayerSynchronizerCreate(void *a1)
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (a1)
  {
    if (FigLayerSynchronizerGetTypeID_sRegisterLayerSynchronizerTypeOnce != -1)
    {
      FigLayerSynchronizerCreate_cold_1();
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v3 = Instance;
      *(Instance + 88) = 1;
      v4 = FigReentrantMutexCreate();
      v3[3] = v4;
      if (v4)
      {
        result = 0;
        *a1 = v3;
      }

      else
      {
        CFRelease(v3);
        return 4294954935;
      }
    }

    else
    {
      FigLayerSynchronizerCreate_cold_2(&v6);
      return v6;
    }
  }

  else
  {
    FigLayerSynchronizerCreate_cold_3(&v7);
    return v7;
  }

  return result;
}

void figlayersync_disposeSetLayerTimingContext(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    CFRelease(v3);
  }

  free(a1);
}

__CFString *figlayersync_copyDescriptionSetLayerTimingContext()
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"Set layer timing");
  v1 = FigCFCopyCompactDescription();
  CFStringAppendFormat(Mutable, 0, @"\nwith: %@", v1);
  if (v1)
  {
    CFRelease(v1);
  }

  return Mutable;
}

uint64_t figlayersync_setLayerArrays(uint64_t a1, const __CFArray *a2, const __CFArray *a3, char a4, uint64_t a5)
{
  if (a1)
  {
    v10 = objc_autoreleasePoolPush();
    FigSimpleMutexLock();
    if (*(a1 + 16))
    {
      Count = 0;
      v12 = 0;
      Mutable = 0;
      v14 = 0;
      v15 = 4294954934;
LABEL_82:
      FigSimpleMutexUnlock();
      if ((a4 & 2) != 0 && v14)
      {
        [MEMORY[0x1E6979518] begin];
        if (!pthread_main_np())
        {
          [MEMORY[0x1E6979518] activateBackground:1];
        }

        [MEMORY[0x1E6979518] setValue:*MEMORY[0x1E695E4D0] forKey:*MEMORY[0x1E697A020]];
        if (Count >= 1)
        {
          for (i = 0; i != Count; ++i)
          {
            if (fabs(v12[i]) != INFINITY)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v14, i);
              [ValueAtIndex duration];
              if (v48 == v12[i])
              {
                [ValueAtIndex setDuration:INFINITY];
              }
            }
          }
        }

        CFRelease(v14);
        [MEMORY[0x1E6979518] commit];
        if (!Mutable)
        {
          goto LABEL_99;
        }
      }

      else
      {
        if (Mutable && CFArrayGetCount(Mutable))
        {
          v61 = *MEMORY[0x1E6960C88];
          v62 = *(MEMORY[0x1E6960C88] + 16);
          FPSupport_AppendDeferredTransactionChangeForSettingDurationOnLayers(a5, &v61, Mutable);
        }

        FPSupport_AppendDeferredTransactionChangeToRelease(a5, v14);
        if (!Mutable)
        {
          goto LABEL_99;
        }
      }

      CFRelease(Mutable);
LABEL_99:
      free(v12);
      objc_autoreleasePoolPop(v10);
      return v15;
    }

    v60 = a4;
    v16 = *MEMORY[0x1E695E480];
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    if (!Mutable)
    {
      Count = 0;
      v12 = 0;
      v14 = 0;
      goto LABEL_27;
    }

    v14 = *(a1 + 64);
    *(a1 + 64) = 0;
    if (v14)
    {
      Count = CFArrayGetCount(v14);
    }

    else
    {
      Count = 0;
    }

    v12 = *(a1 + 72);
    *(a1 + 72) = 0;
    *(a1 + 89) = 0;
    v17 = *(a1 + 40);
    if (v17)
    {
      *(a1 + 40) = 0;
      free(v17);
    }

    v18 = *(a1 + 48);
    if (v18)
    {
      *(a1 + 48) = 0;
      free(v18);
    }

    v19 = *(a1 + 56);
    if (v19)
    {
      *(a1 + 56) = 0;
      free(v19);
    }

    v20 = *(a1 + 80);
    if (v20)
    {
      *(a1 + 80) = 0;
      free(v20);
    }

    if (!(a2 | a3))
    {
      goto LABEL_80;
    }

    v57 = a5;
    if (a2)
    {
      v21 = CFArrayGetCount(a2);
      if (a3)
      {
LABEL_20:
        v22 = CFArrayGetCount(a3);
LABEL_23:
        if (!(v22 + v21))
        {
          v15 = 0;
          a5 = v57;
          goto LABEL_81;
        }

        size = v22 + v21;
        v23 = malloc_type_calloc(1uLL, v22 + v21, 0x100004077774924uLL);
        *(a1 + 80) = v23;
        a5 = v57;
        v52 = v23;
        if (!v23)
        {
LABEL_27:
          v15 = 4294954935;
LABEL_81:
          a4 = v60;
          goto LABEL_82;
        }

        if (!(a2 | a3))
        {
          *(a1 + 64) = 0;
          goto LABEL_27;
        }

        if (a2)
        {
          v24 = CFArrayGetCount(a2);
        }

        else
        {
          v24 = 0;
        }

        v56 = v24;
        if (a3)
        {
          v25 = CFArrayGetCount(a3);
          v24 = v56;
        }

        else
        {
          v25 = 0;
        }

        if (v25 + v24 == 1)
        {
          if (v24 < 1)
          {
            MutableCopy = CFArrayCreateMutableCopy(v16, 0, a3);
            *v52 = 0;
          }

          else
          {
            MutableCopy = CFArrayCreateMutableCopy(v16, 0, a2);
            *v52 = 1;
          }

          a4 = v60;
        }

        else
        {
          v51 = Mutable;
          v27 = MEMORY[0x1E695E9C0];
          capacity = v25 + v24;
          theArray = CFArrayCreateMutable(v16, v25 + v24, MEMORY[0x1E695E9C0]);
          v28 = CFArrayCreateMutable(v16, capacity, v27);
          if (capacity >= 1 && theArray)
          {
            v29 = v28;
            v50 = v10;
            v30 = 0;
            v54 = *MEMORY[0x1E695E4C0];
            v53 = *MEMORY[0x1E695E4D0];
            do
            {
              LayerFrom2Arrays = figlayersync_getLayerFrom2Arrays(a2, a3, v30);
              v32 = 0;
              if (v30)
              {
                do
                {
                  v33 = figlayersync_getLayerFrom2Arrays(a2, a3, v32);
                  while (1)
                  {
                    v33 = [v33 superlayer];
                    if (!v33)
                    {
                      break;
                    }

                    if (v33 == LayerFrom2Arrays)
                    {
                      goto LABEL_48;
                    }
                  }

                  ++v32;
                }

                while (v32 != v30);
                v32 = v30;
              }

LABEL_48:
              CFArrayInsertValueAtIndex(theArray, v32, LayerFrom2Arrays);
              if (v30 >= v56)
              {
                v34 = v54;
              }

              else
              {
                v34 = v53;
              }

              CFArrayInsertValueAtIndex(v29, v32, v34);
              ++v30;
            }

            while (v30 != capacity);
            v35 = 0;
            v10 = v50;
            do
            {
              v36 = v54 == CFArrayGetValueAtIndex(v29, v35);
              v28 = v29;
              v37 = !v36;
              v52[v35++] = v37;
            }

            while (capacity != v35);
          }

          if (v28)
          {
            CFRelease(v28);
          }

          a5 = v57;
          a4 = v60;
          MutableCopy = theArray;
          Mutable = v51;
        }

        *(a1 + 64) = MutableCopy;
        if (!MutableCopy)
        {
          v15 = 4294954935;
          goto LABEL_82;
        }

        v38 = malloc_type_calloc(8uLL, size, 0x100004000313F17uLL);
        *(a1 + 40) = v38;
        if (!v38)
        {
          goto LABEL_27;
        }

        v39 = malloc_type_calloc(8uLL, size, 0x100004000313F17uLL);
        *(a1 + 48) = v39;
        if (!v39)
        {
          goto LABEL_27;
        }

        v40 = malloc_type_calloc(8uLL, size, 0x100004000313F17uLL);
        *(a1 + 56) = v40;
        if (!v40)
        {
          goto LABEL_27;
        }

        v41 = malloc_type_calloc(8uLL, size, 0x100004000313F17uLL);
        *(a1 + 72) = v41;
        if (!v41)
        {
          goto LABEL_27;
        }

        a4 = v60;
        if (size >= 1)
        {
          memset_pattern16(v41, &unk_196E73030, 8 * size);
        }

        if (Count < 1)
        {
          v15 = 0;
          goto LABEL_82;
        }

        for (j = 0; j != Count; ++j)
        {
          if (fabs(v12[j]) != INFINITY)
          {
            v43 = v10;
            v44 = CFArrayGetValueAtIndex(v14, j);
            if (size < 1)
            {
LABEL_76:
              CFArrayAppendValue(Mutable, v44);
            }

            else
            {
              v45 = 0;
              while (v44 != CFArrayGetValueAtIndex(*(a1 + 64), v45))
              {
                if (size == ++v45)
                {
                  goto LABEL_76;
                }
              }

              *(*(a1 + 72) + 8 * v45) = v12[j];
              v12[j] = INFINITY;
            }

            v10 = v43;
            a5 = v57;
          }
        }

LABEL_80:
        v15 = 0;
        goto LABEL_81;
      }
    }

    else
    {
      v21 = 0;
      if (a3)
      {
        goto LABEL_20;
      }
    }

    v22 = 0;
    goto LABEL_23;
  }

  return 4294954936;
}

uint64_t FigLayerSynchronizerSetConfigurationWithDeferredTransaction(_BYTE *cf, uint64_t a2, uint64_t a3)
{
  v12 = 0;
  cfa = 0;
  if (!cf)
  {
    FigLayerSynchronizerSetConfigurationWithDeferredTransaction_cold_2(&v14);
LABEL_14:
    v10 = v14;
    goto LABEL_9;
  }

  if (cf[16])
  {
    FigLayerSynchronizerSetConfigurationWithDeferredTransaction_cold_1(&v14);
    goto LABEL_14;
  }

  if (!a2)
  {
    v9 = 0;
    v8 = 0;
LABEL_7:
    v10 = figlayersync_setLayerArrays(cf, v8, v9, 0, a3);
    v8 = cfa;
    if (!cfa)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v6 = CFGetAllocator(cf);
  v7 = FigLayerSynchronizerConfigurationCopyLayers(a2, v6, &cfa, &v12);
  v8 = cfa;
  if (!v7)
  {
    v9 = v12;
    goto LABEL_7;
  }

  v10 = v7;
  if (cfa)
  {
LABEL_8:
    CFRelease(v8);
  }

LABEL_9:
  if (v12)
  {
    CFRelease(v12);
  }

  return v10;
}

uint64_t FigLayerSynchronizerSetCompensateForDisplayLatency(uint64_t a1, char a2)
{
  if (dword_1ED4CBD50)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  *(a1 + 88) = a2;
  *(a1 + 89) = 0;
  return 0;
}

uint64_t FigLayerSynchronizerSetLayerArray(uint64_t a1, const __CFArray *a2)
{
  if (dword_1ED4CBD50)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return figlayersync_setLayerArrays(a1, 0, a2, 2, 0);
}

uint64_t FigLayerSynchronizerSetLayerArrays(uint64_t a1, const __CFArray *a2, const __CFArray *a3)
{
  if (dword_1ED4CBD50)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return figlayersync_setLayerArrays(a1, a2, a3, 2, 0);
}

uint64_t figlayersync_synchronizeToMoment(uint64_t a1, uint64_t a2, char a3)
{
  if (!a1)
  {
    return 4294954936;
  }

  v6 = *(a1 + 24);
  v7 = objc_autoreleasePoolPush();
  FigSimpleMutexLock();
  if (*(a1 + 16))
  {
    if (*(a1 + 24) == v6)
    {
      FigSimpleMutexUnlock();
    }

    v8 = 4294954934;
  }

  else
  {
    if ((a3 & 2) != 0)
    {
      [MEMORY[0x1E6979518] begin];
      if (!pthread_main_np())
      {
        [MEMORY[0x1E6979518] activateBackground:1];
      }

      figlayersync_setLayerTimingToMoment(a1, a2);
      FigSimpleMutexUnlock();
      [MEMORY[0x1E6979518] commit];
      [MEMORY[0x1E6979518] flush];
    }

    else
    {
      figlayersync_setLayerTimingToMoment(a1, a2);
      FigSimpleMutexUnlock();
    }

    v8 = 0;
  }

  objc_autoreleasePoolPop(v7);
  return v8;
}

uint64_t FigLayerSynchronizerDestroy(const void *a1)
{
  if (a1)
  {
    CFRelease(a1);
  }

  return 0;
}

void *layerSynchronizerConfiguration_init(void *result)
{
  result[2] = 0;
  result[3] = 0;
  result[4] = 0;
  return result;
}

void layerSynchronizerConfiguration_finalize(uint64_t a1)
{
  FigSimpleMutexDestroy();
  v2 = *(a1 + 32);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 32) = 0;
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 24) = 0;
  }
}

double LayerSynchronizer_init(_OWORD *a1)
{
  result = 0.0;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[1] = 0u;
  return result;
}

void LayerSynchronizer_finalize(uint64_t a1)
{
  if (a1)
  {
    v2 = objc_autoreleasePoolPush();
    FigSimpleMutexLock();
    *(a1 + 16) = 1;
    FigSimpleMutexUnlock();
    free(*(a1 + 40));
    free(*(a1 + 48));
    free(*(a1 + 56));
    free(*(a1 + 72));
    free(*(a1 + 80));
    if (*(a1 + 64))
    {
      [MEMORY[0x1E6979518] begin];
      if (!pthread_main_np())
      {
        [MEMORY[0x1E6979518] activateBackground:1];
      }

      v3 = *(a1 + 64);
      if (v3)
      {
        CFRelease(v3);
      }

      [MEMORY[0x1E6979518] commit];
    }

    FigSimpleMutexDestroy();
    *(a1 + 24) = 0;

    objc_autoreleasePoolPop(v2);
  }
}

__CFString *LayerSynchronizer_CopyDescription(const void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<LayerSynchronizer %p>", a1);
  return Mutable;
}

const void *figlayersync_getLayerFrom2Arrays(CFArrayRef theArray, const __CFArray *a2, CFIndex a3)
{
  if (!theArray)
  {
    Count = 0;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  Count = CFArrayGetCount(theArray);
  if (!a2)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = CFArrayGetCount(a2);
LABEL_6:
  if (!(v7 + Count) || v7 + Count <= a3)
  {
    return 0;
  }

  v8 = a3 - Count;
  if (a3 >= Count)
  {
    v9 = a2;
  }

  else
  {
    v9 = theArray;
    v8 = a3;
  }

  return CFArrayGetValueAtIndex(v9, v8);
}

void figlayersync_setLayerTimingToMoment(uint64_t a1, uint64_t a2)
{
  v97 = *MEMORY[0x1E69E9840];
  memset(&v75, 0, sizeof(v75));
  if (!*(a1 + 64))
  {
    goto LABEL_125;
  }

  v3 = a2;
  if (!*(a1 + 89) || (*(a2 + 4) & 1) != 0)
  {
    v69 = 0;
    *(a1 + 32) = *(a2 + 8);
    v4 = 1;
  }

  else
  {
    v4 = 0;
    v69 = 1;
  }

  memset(&time, 0, sizeof(time));
  HostTimeClock = CMClockGetHostTimeClock();
  CMClockGetTime(&time, HostTimeClock);
  memset(&v86, 0, sizeof(v86));
  *lhs = time;
  rhs = *(v3 + 40);
  CMTimeSubtract(&v86, lhs, &rhs);
  memset(lhs, 0, 24);
  v6 = *(v3 + 8) * *(v3 + 64);
  rhs = v86;
  CMTimeMultiplyByFloat64(lhs, &rhs, v6);
  rhs = *(v3 + 16);
  v74 = *lhs;
  CMTimeAdd(&v75, &rhs, &v74);
  v7 = MEMORY[0x1E695FF58];
  v8 = *MEMORY[0x1E695FF58];
  if (v4 && v8 == 1)
  {
    kdebug_trace();
    v8 = *v7;
  }

  if ((*(v3 + 4) & 2) != 0 && v8 == 1)
  {
    time = *(v3 + 16);
    CMTimeGetSeconds(&time);
    kdebug_trace();
  }

  Count = CFArrayGetCount(*(a1 + 64));
  v9 = v69;
  if (Count >= 1)
  {
    v10 = 0;
    v11 = 0;
    v70 = v4;
    v68 = v3;
    while (1)
    {
      time = v75;
      Seconds = CMTimeGetSeconds(&time);
      v13 = *(*(a1 + 40) + 8 * v10);
      v14 = *(*(a1 + 48) + 8 * v10);
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 64), v10);
      v73 = *(*(a1 + 80) + v10);
      [ValueAtIndex convertTime:0 fromLayer:CACurrentMediaTime()];
      v17 = v16;
      if (objc_opt_respondsToSelector())
      {
        [ValueAtIndex setInheritsTiming:0];
        v18 = CACurrentMediaTime();
        [ValueAtIndex beginTime];
        v20 = v18 - v19;
        [ValueAtIndex speed];
        v22 = v21;
        [ValueAtIndex timeOffset];
        v17 = v23 + v20 * v22;
      }

      else
      {
        v24 = [ValueAtIndex superlayer];
        v25 = CACurrentMediaTime();
        v18 = v25;
        if (v24)
        {
          [v24 convertTime:0 fromLayer:v25];
          v18 = v26;
        }
      }

      if (!v4)
      {
        goto LABEL_47;
      }

      [ValueAtIndex duration];
      v28 = v27;
      if ((objc_opt_respondsToSelector() & 1) == 0 || (v29 = 1.0, [ValueAtIndex inheritsTiming]))
      {
        v30 = [ValueAtIndex superlayer];
        if ((objc_opt_respondsToSelector() & 1) == 0 || (v29 = 1.0, [v30 inheritsTiming]))
        {
          v31 = [v30 superlayer];
          if (v31)
          {
            v32 = v31;
            v14 = 1.0;
            v29 = 1.0;
            while (1)
            {
              [v32 speed];
              v29 = v29 * v33;
              if (v29 == 0.0)
              {
                break;
              }

              if ((objc_opt_respondsToSelector() & 1) == 0 || [v32 inheritsTiming])
              {
                v32 = [v32 superlayer];
                if (v32)
                {
                  continue;
                }
              }

              goto LABEL_31;
            }

            v13 = 1.0;
LABEL_40:
            v35 = *(a1 + 72);
            if (fabs(v28) == INFINITY || v28 != *(v35 + 8 * v10))
            {
              goto LABEL_47;
            }

            *(v35 + 8 * v10) = 0x7FF0000000000000;
            v34 = INFINITY;
            goto LABEL_46;
          }

          v29 = 1.0;
        }
      }

LABEL_31:
      v13 = *(v3 + 8) / v29;
      if (v13 == 0.0)
      {
        v14 = 1.0;
      }

      else
      {
        v14 = 1.0 / v13;
      }

      if (v13 >= 0.0)
      {
        goto LABEL_40;
      }

      if (fabs(v28) != INFINITY)
      {
        goto LABEL_47;
      }

      v34 = v17 + 0.1;
      *(*(a1 + 72) + 8 * v10) = v17 + 0.1;
      if (*(*(a1 + 80) + v10))
      {
        v34 = INFINITY;
      }

LABEL_46:
      [ValueAtIndex setDuration:v34];
LABEL_47:
      if (!*(a1 + 89) || (*(v3 + 4) & 3) != 0 || vabdd_f64(Seconds + v13 * *(*(a1 + 56) + 8 * v10), v17) >= 0.005)
      {
        if (*(a1 + 88))
        {
          v72 = v11;
          v37 = [ValueAtIndex context];
          v38 = 0.0;
          if (v37 && (objc_opt_respondsToSelector() & 1) != 0)
          {
            v39 = [v37 displayId];
            if (v39)
            {
              v78 = 0u;
              v79 = 0u;
              memset(lhs, 0, sizeof(lhs));
              v40 = [MEMORY[0x1E6979328] displays];
              v41 = [v40 countByEnumeratingWithState:lhs objects:&time count:16];
              if (v41)
              {
                v42 = v41;
                v43 = **&lhs[16];
LABEL_56:
                v44 = 0;
                while (1)
                {
                  if (**&lhs[16] != v43)
                  {
                    objc_enumerationMutation(v40);
                  }

                  v45 = *(*&lhs[8] + 8 * v44);
                  if ([v45 displayId] == v39)
                  {
                    break;
                  }

                  if (v42 == ++v44)
                  {
                    v42 = [v40 countByEnumeratingWithState:lhs objects:&time count:16];
                    if (v42)
                    {
                      goto LABEL_56;
                    }

                    goto LABEL_102;
                  }
                }

                [v45 latency];
                if (v59 < 0.0)
                {
LABEL_102:
                  v3 = v68;
                  v9 = v69;
                  goto LABEL_64;
                }

                v3 = v68;
                v9 = v69;
                if (v59 <= 1.0)
                {
                  v38 = v59;
                }
              }
            }
          }

          else
          {
            v39 = 0;
          }

LABEL_64:
          if (dword_1ED4CBD50)
          {
            LODWORD(v74.value) = 0;
            type = OS_LOG_TYPE_DEFAULT;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            value = v74.value;
            if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
            {
              v48 = value;
            }

            else
            {
              v48 = value & 0xFFFFFFFE;
            }

            if (v48)
            {
              LODWORD(rhs.value) = 136316162;
              *(&rhs.value + 4) = "figlayersync_getLayerDisplayLatency";
              LOWORD(rhs.flags) = 2048;
              *(&rhs.flags + 2) = ValueAtIndex;
              HIWORD(rhs.epoch) = 2048;
              v81 = v37;
              v82 = 1024;
              v83 = v39;
              v84 = 2048;
              v85 = v38;
              LODWORD(v67) = 48;
              p_rhs = &rhs;
              _os_log_send_and_compose_impl();
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          v4 = v70;
          v11 = v72;
        }

        else
        {
          v38 = 0.0;
        }

        if (v73)
        {
          if (dword_1ED4CBD50)
          {
            *lhs = 0;
            LOBYTE(rhs.value) = 0;
            v49 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v50 = *lhs;
            if (os_log_type_enabled(v49, rhs.value))
            {
              v51 = v50;
            }

            else
            {
              v51 = v50 & 0xFFFFFFFE;
            }

            if (v51)
            {
              LODWORD(v86.value) = 136315906;
              *(&v86.value + 4) = "figlayersync_setLayerTiming";
              LOWORD(v86.flags) = 2048;
              *(&v86.flags + 2) = ValueAtIndex;
              HIWORD(v86.epoch) = 2048;
              v87 = v38;
              v88 = 2048;
              v89 = v18;
              LODWORD(v67) = 42;
              p_rhs = &v86;
              _os_log_send_and_compose_impl();
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          [ValueAtIndex setTimeOffset:{v38, p_rhs, v67}];
        }

        else
        {
          if (v13 == 0.0)
          {
            [ValueAtIndex duration];
            if (v52 <= Seconds)
            {
              Seconds = v52 + -0.000001;
            }

            else if (Seconds < 0.0)
            {
              Seconds = 0.0;
            }

            if (dword_1ED4CBD50)
            {
              *lhs = 0;
              LOBYTE(rhs.value) = 0;
              v56 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v57 = *lhs;
              if (os_log_type_enabled(v56, rhs.value))
              {
                v58 = v57;
              }

              else
              {
                v58 = v57 & 0xFFFFFFFE;
              }

              if (v58)
              {
                LODWORD(v86.value) = 136315906;
                *(&v86.value + 4) = "figlayersync_setLayerTiming";
                LOWORD(v86.flags) = 2048;
                *(&v86.flags + 2) = ValueAtIndex;
                HIWORD(v86.epoch) = 2048;
                v87 = Seconds;
                v88 = 2048;
                v89 = v18;
                LODWORD(v67) = 42;
                p_rhs = &v86;
                _os_log_send_and_compose_impl();
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }
          }

          else if (v13 <= 0.0)
          {
            [ValueAtIndex duration];
            v61 = v60;
            [ValueAtIndex setBeginTime:v18 - (Seconds - v60) * v14 - v38];
            Seconds = v61;
          }

          else
          {
            if (dword_1ED4CBD50)
            {
              *lhs = 0;
              LOBYTE(rhs.value) = 0;
              v53 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v54 = *lhs;
              if (os_log_type_enabled(v53, rhs.value))
              {
                v55 = v54;
              }

              else
              {
                v55 = v54 & 0xFFFFFFFE;
              }

              if (v55)
              {
                LODWORD(v86.value) = 136316674;
                *(&v86.value + 4) = "figlayersync_setLayerTiming";
                LOWORD(v86.flags) = 2048;
                *(&v86.flags + 2) = ValueAtIndex;
                HIWORD(v86.epoch) = 2048;
                v87 = v18 - Seconds * v14 - v38;
                v88 = 2048;
                v89 = v18;
                v90 = 2048;
                v91 = Seconds;
                v92 = 2048;
                v93 = v13;
                v94 = 2048;
                v95 = v38;
                LODWORD(v67) = 72;
                p_rhs = &v86;
                _os_log_send_and_compose_impl();
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            [ValueAtIndex setBeginTime:{v18 - Seconds * v14 - v38, p_rhs, v67}];
            Seconds = 0.0;
          }

          [ValueAtIndex setTimeOffset:{Seconds, p_rhs, v67}];
          if ((v9 & 1) == 0)
          {
            if (dword_1ED4CBD50)
            {
              *lhs = 0;
              LOBYTE(rhs.value) = 0;
              v63 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v64 = *lhs;
              if (os_log_type_enabled(v63, rhs.value))
              {
                v65 = v64;
              }

              else
              {
                v65 = v64 & 0xFFFFFFFE;
              }

              if (v65)
              {
                LODWORD(v86.value) = 136315650;
                *(&v86.value + 4) = "figlayersync_setLayerTiming";
                LOWORD(v86.flags) = 2048;
                *(&v86.flags + 2) = ValueAtIndex;
                HIWORD(v86.epoch) = 2048;
                v87 = v13;
                LODWORD(v67) = 32;
                p_rhs = &v86;
                _os_log_send_and_compose_impl();
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            *&v62 = v13;
            [ValueAtIndex setSpeed:{v62, p_rhs, v67}];
          }
        }

        *(*(a1 + 56) + 8 * v10) = v38;
        ++v11;
        if (v4)
        {
          *(*(a1 + 40) + 8 * v10) = v13;
          *(*(a1 + 48) + 8 * v10) = v14;
        }
      }

      if (++v10 == Count)
      {
        goto LABEL_124;
      }
    }
  }

  v11 = 0;
LABEL_124:
  if (v11 == Count)
  {
LABEL_125:
    *(a1 + 89) = 1;
  }
}

void *OUTLINED_FUNCTION_3_15()
{

  return malloc_type_calloc(1uLL, 0x60uLL, 0x102004037358F12uLL);
}

uint64_t FigVTTRegionBlockCreate(uint64_t a1, void *a2)
{
  if (a2)
  {
    FigVTTNodeGetClassID();
    v3 = CMDerivedObjectCreate();
    if (!v3)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v3 = FigVTTInitializeNodeBaseStorage(DerivedStorage);
      if (!v3)
      {
        *a2 = 0;
      }
    }
  }

  else
  {
    FigVTTRegionBlockCreate_cold_1(&v6);
    return v6;
  }

  return v3;
}

void figVTTRegionBlock_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();

  FigVTTReleaseNodeBaseStorage(DerivedStorage);
}

CFStringRef figVTTRegionBlock_CopyDebugDesc()
{
  CMBaseObjectGetDerivedStorage();
  v0 = FigCFCopyCompactDescription();
  v1 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"regionblock: %@", v0);
  if (v0)
  {
    CFRelease(v0);
  }

  return v1;
}

uint64_t figVTTRegionBlock_GetNodeType(uint64_t a1, _DWORD *a2)
{
  if (a2)
  {
    result = 0;
    *a2 = 4;
  }

  else
  {
    v6 = v2;
    v7 = v3;
    figVTTRegionBlock_GetNodeType_cold_1(&v5);
    return v5;
  }

  return result;
}

uint64_t figVTTRegionBlock_copyNodeDocumentSerialization(const void *a1, CFStringRef *a2)
{
  v4 = CFGetAllocator(a1);
  v23 = 0;
  if (!a2)
  {
    figVTTRegionBlock_copyNodeDocumentSerialization_cold_2(&v21);
    return v21;
  }

  v5 = v4;
  *a2 = 0;
  Mutable = CFStringCreateMutable(v4, 0);
  if (!Mutable)
  {
    figVTTRegionBlock_copyNodeDocumentSerialization_cold_1(&v21);
    return v21;
  }

  v7 = Mutable;
  v8 = FigVTTNodeCopyAttributes(a1, &v23);
  if (!v8 && FigCFDictionaryGetCount() >= 1)
  {
    Value = CFDictionaryGetValue(v23, @"id");
    if (Value)
    {
      CFStringAppendFormat(v7, 0, @"id:%@", Value);
      CFStringAppendFormat(v7, 0, @"\n");
      v10 = 1;
    }

    else
    {
      v10 = 0;
    }

    v11 = CFDictionaryGetValue(v23, @"lines");
    if (v11)
    {
      CFStringAppendFormat(v7, 0, @"lines:%@", v11);
      CFStringAppendFormat(v7, 0, @"\n");
      ++v10;
    }

    if (CFDictionaryGetValue(v23, @"width"))
    {
      v12 = FigGeometryDimensionMakeFromDictionary();
      v14 = v13;
      CFStringAppendFormat(v7, 0, @"%@:", @"width");
      FigVTTStringifyFigGeometryDimensionAndAppend(v7, v12, v14);
      CFStringAppendFormat(v7, 0, @"\n");
      ++v10;
    }

    if (CFDictionaryGetValue(v23, @"regionanchor"))
    {
      v21 = 0u;
      v22 = 0u;
      FigGeometryPointMakeFromDictionary();
      CFStringAppendFormat(v7, 0, @"%@:", @"regionanchor");
      v19 = 0u;
      v20 = 0u;
      FigVTTStringifyFigGeometryPointAndAppend(v7, &v19);
      CFStringAppendFormat(v7, 0, @"\n");
      ++v10;
    }

    if (CFDictionaryGetValue(v23, @"viewportanchor"))
    {
      v21 = 0u;
      v22 = 0u;
      FigGeometryPointMakeFromDictionary();
      CFStringAppendFormat(v7, 0, @"%@:", @"viewportanchor");
      v19 = v21;
      v20 = v22;
      FigVTTStringifyFigGeometryPointAndAppend(v7, &v19);
      CFStringAppendFormat(v7, 0, @"\n");
      v10 = 1;
    }

    v15 = CFDictionaryGetValue(v23, @"scroll");
    if (v15)
    {
      CFStringAppendFormat(v7, 0, @"scroll:%@", v15);
      CFStringAppendFormat(v7, 0, @"\n");
    }

    else if (!v10)
    {
      v16 = CFStringCreateWithFormat(v5, 0, &stru_1F0B1AFB8, v18);
      goto LABEL_20;
    }

    v16 = CFStringCreateWithFormat(v5, 0, @"%@\n%@\n", @"REGION", v7);
LABEL_20:
    *a2 = v16;
  }

  CFRelease(v7);
  if (v23)
  {
    CFRelease(v23);
  }

  return v8;
}

uint64_t FigCLCPCaptionGroupConverterToSampleBufferCreate(_OWORD *a1, const void *a2, CFTypeRef *a3)
{
  v19 = 0;
  if (!a1)
  {
    FigCLCPCaptionGroupConverterToSampleBufferCreate_cold_4(&values);
LABEL_31:
    v15 = values;
    goto LABEL_33;
  }

  if (!a3)
  {
    FigCLCPCaptionGroupConverterToSampleBufferCreate_cold_3(&values);
    goto LABEL_31;
  }

  FigCaptionGroupConverterToSampleBufferGetClassID();
  v6 = CMDerivedObjectCreate();
  if (v6)
  {
    v15 = v6;
    FigCLCPCaptionGroupConverterToSampleBufferCreate_cold_1();
    goto LABEL_33;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v8 = CFRetain(a2);
  }

  else
  {
    v8 = 0;
  }

  *DerivedStorage = v8;
  *(DerivedStorage + 144) = *a1;
  ClosedCaptionChannel = FigCEA608DataGeneratorCreate(clcpcgctsbCEA608DataGeneratorCallback, v19, a2, (DerivedStorage + 8));
  if (ClosedCaptionChannel || (v18 = 0, ClosedCaptionChannel = FigCEA608DataGeneratorGetClosedCaptionChannel(*(DerivedStorage + 8), &v18), ClosedCaptionChannel))
  {
    v15 = ClosedCaptionChannel;
    goto LABEL_33;
  }

  v10 = 0;
  v11 = v18;
  cf = 0;
  values = 0;
  formatDescriptionOut = 0;
  if (v18 != 1)
  {
    Mutable = CFDataCreateMutable(a2, 8);
    values = Mutable;
    if (!Mutable)
    {
      FigCLCPCaptionGroupConverterToSampleBufferCreate_cold_2(&keys);
      v15 = keys;
      goto LABEL_18;
    }

    v13 = Mutable;
    *bytes = 942683748;
    CFDataAppendBytes(Mutable, bytes, 4);
    *v21 = bswap32(v11);
    CFDataAppendBytes(v13, v21, 4);
    keys = @"cccc";
    cf = CFDictionaryCreate(a2, &keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!cf || (v14 = CFDictionaryCreate(a2, MEMORY[0x1E69600A0], &cf, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8])) == 0)
    {
      fig_log_get_emitter();
      v15 = FigSignalErrorAtGM();
      goto LABEL_18;
    }

    v10 = v14;
  }

  v15 = CMFormatDescriptionCreate(a2, 0x636C6370u, 0x63363038u, v10, &formatDescriptionOut);
  if (!v15)
  {
    *(DerivedStorage + 24) = formatDescriptionOut;
  }

  if (v10)
  {
    CFRelease(v10);
  }

LABEL_18:
  if (cf)
  {
    CFRelease(cf);
  }

  if (values)
  {
    CFRelease(values);
  }

  if (!v15)
  {
    if (v18 - 3 >= 2)
    {
      v16 = 1667522932;
    }

    else
    {
      v16 = 1667527730;
    }

    *(DerivedStorage + 20) = v16;
    *a3 = v19;
    return v15;
  }

LABEL_33:
  if (v19)
  {
    CFRelease(v19);
  }

  return v15;
}

uint64_t FigCLCPCaptionConversionValidatorCreate(_OWORD *a1, uint64_t a2, const void *a3, void *a4)
{
  if (!a1)
  {
    FigCLCPCaptionConversionValidatorCreate_cold_3(&v13);
    return v13;
  }

  if (!a4)
  {
    FigCLCPCaptionConversionValidatorCreate_cold_2(&v13);
    return v13;
  }

  FigCaptionConversionValidatorGetClassID();
  v7 = CMDerivedObjectCreate();
  if (v7)
  {
    ShouldAdjustOverlappedDataTime = v7;
    FigCLCPCaptionConversionValidatorCreate_cold_1();
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (a3)
    {
      v9 = CFRetain(a3);
    }

    else
    {
      v9 = 0;
    }

    *DerivedStorage = v9;
    *(DerivedStorage + 104) = *a1;
    v10 = FigCEA608DataGeneratorCreate(clcpccvCEA608DataGeneratorCallback, 0, a3, (DerivedStorage + 8));
    if (v10)
    {
      return v10;
    }

    else
    {
      ShouldAdjustOverlappedDataTime = FigCEA608DataGeneratorSetShouldAdjustOverlappedDataTime(*(DerivedStorage + 8), 0);
      if (!ShouldAdjustOverlappedDataTime)
      {
        *a4 = 0;
      }
    }
  }

  return ShouldAdjustOverlappedDataTime;
}

void clcpcgctsb_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigCEA608DataGeneratorRelease(*(DerivedStorage + 8));
  v1 = *(DerivedStorage + 32);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 32) = 0;
  }

  v2 = *(DerivedStorage + 24);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 24) = 0;
  }

  v3 = *(DerivedStorage + 88);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 88) = 0;
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

__CFString *clcpcgctsb_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigCLCPCaptionGroupConverterToSampleBufferf %p>", a1);
  return Mutable;
}

uint64_t clcpcgctsb_CopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a4)
    {
      return 4294954512;
    }

    v7 = 708;
  }

  else
  {
    v7 = 707;
  }

  v9 = v4;
  v10 = v5;
  clcpcgctsb_CopyProperty_cold_1(v7, &v8);
  return v8;
}

uint64_t clcpcgctsb_SetProperty(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return 4294954512;
  }

  v6 = v2;
  v7 = v3;
  clcpcgctsb_SetProperty_cold_1(&v5);
  return v5;
}

uint64_t clcpcgctsb_AddCaptionGroup(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    clcpcgctsb_AddCaptionGroup_cold_3(&time1);
    return LODWORD(time1.start.value);
  }

  if ((*(a3 + 12) & 1) == 0 || (*(a3 + 36) & 1) == 0 || *(a3 + 40) || (*(a3 + 24) & 0x8000000000000000) != 0)
  {
    clcpcgctsb_AddCaptionGroup_cold_2(&time1);
    return LODWORD(time1.start.value);
  }

  v6 = DerivedStorage;
  if (*(DerivedStorage + 16) == 2)
  {
    clcpcgctsb_AddCaptionGroup_cold_1(&time1);
    return LODWORD(time1.start.value);
  }

  SliceCount = FigCaptionGroupGetSliceCount();
  if (SliceCount >= 1)
  {
    v8 = SliceCount;
    v9 = 0;
    v20 = *MEMORY[0x1E6960CC0];
    v10 = MEMORY[0x1E6960CA8];
    v11 = MEMORY[0x1E695E9C0];
    v12 = *(MEMORY[0x1E6960CC0] + 16);
    do
    {
      v26 = 0uLL;
      v27 = 0;
      FigCaptionGroupGetDurationBeforeSlice();
      *&time1.start.value = v26;
      time1.start.epoch = v27;
      *&time2.start.value = v20;
      time2.start.epoch = v12;
      if (!CMTimeCompare(&time1.start, &time2.start))
      {
        v24 = 0uLL;
        v25 = 0;
        FigCaptionGroupGetDurationAfterSlice();
        memset(&v23, 0, sizeof(v23));
        *&time1.start.value = *(a3 + 24);
        time1.start.epoch = *(a3 + 40);
        *&time2.start.value = v24;
        time2.start.epoch = v25;
        CMTimeAdd(&v23, &time1.start, &time2.start);
        memset(&v22, 0, sizeof(v22));
        *&time1.start.value = *a3;
        time1.start.epoch = *(a3 + 16);
        time2.start = v23;
        CMTimeRangeMake(&v22, &time1.start, &time2.start);
        CaptionData = FigCaptionGroupGetCaptionData();
        v21 = v22;
        v14 = *(v6 + 56);
        *&time1.start.value = *(v6 + 40);
        *&time1.start.epoch = v14;
        *&time1.duration.timescale = *(v6 + 72);
        time2 = v22;
        if (CMTimeRangeEqual(&time1, &time2))
        {
          CFArrayAppendValue(*(v6 + 32), CaptionData);
        }

        else
        {
          v15 = *(v6 + 56);
          *&time2.start.value = *(v6 + 40);
          *&time2.start.epoch = v15;
          *&time2.duration.timescale = *(v6 + 72);
          memset(&time1, 0, sizeof(time1));
          otherRange = v21;
          CMTimeRangeGetIntersection(&time1, &time2, &otherRange);
          v16 = v10[1];
          *&time2.start.value = *v10;
          *&time2.start.epoch = v16;
          *&time2.duration.timescale = v10[2];
          otherRange = time1;
          if (!CMTimeRangeEqual(&time2, &otherRange))
          {
            *&otherRange.start.value = *(v6 + 64);
            otherRange.start.epoch = *(v6 + 80);
            rhs = time1.duration;
            CMTimeSubtract(&time2.start, &otherRange.start, &rhs);
            *(v6 + 64) = *&time2.start.value;
            *(v6 + 80) = time2.start.epoch;
          }

          result = clcpcgctsbAddCaptionDataWithSameTimeRange(v6);
          if (result)
          {
            return result;
          }

          v18 = *(v6 + 32);
          if (v18)
          {
            CFRelease(v18);
            *(v6 + 32) = 0;
          }

          Mutable = CFArrayCreateMutable(*v6, 0, v11);
          *(v6 + 32) = Mutable;
          if (Mutable)
          {
            CFArrayAppendValue(Mutable, CaptionData);
            *(v6 + 40) = v21;
          }

          else
          {
            fig_log_get_emitter();
            result = FigSignalErrorAtGM();
            if (result)
            {
              return result;
            }
          }
        }
      }

      ++v9;
    }

    while (v8 != v9);
  }

  result = 0;
  *(v6 + 16) = 1;
  return result;
}

uint64_t clcpcgctsbAddCaptionDataWithSameTimeRange(uint64_t a1)
{
  v2 = *a1;
  v1 = *(a1 + 8);
  v3 = *(a1 + 32);
  v4 = *(a1 + 56);
  v34 = *(a1 + 40);
  v35 = v4;
  v36 = *(a1 + 72);
  if (!v3)
  {
    v32 = 0;
    v33 = 0;
    v31 = 0;
    goto LABEL_30;
  }

  Count = CFArrayGetCount(v3);
  v32 = 0;
  v33 = 0;
  aStr = 0;
  v31 = 0;
  if (!Count)
  {
LABEL_30:
    FigCEA608DataGeneratorCaptionInfoRelease(0);
    v21 = 0;
    goto LABEL_31;
  }

  v6 = Count;
  if (Count >= 1)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v3, v8);
      v11 = clcpcgctsbDoesCaptioDataHaveText(ValueAtIndex);
      v29 = 0;
      v28 = 0;
      if (v11)
      {
        v13 = clcpcgctsbCopyCaptionAnimationAndRegionInformation(ValueAtIndex, v2, &v33, &v32, &v29 + 1, &v29, &v28);
        if (v13)
        {
          goto LABEL_26;
        }

        cf = v32;
        v24 = v33;
        FigCEA608DataGeneratorClosedCaptionMode = clcpcgctsbGetFigCEA608DataGeneratorClosedCaptionMode();
        v12 = FigCEA608DataGeneratorClosedCaptionMode;
        if (v9 && v9 != FigCEA608DataGeneratorClosedCaptionMode)
        {
          clcpcgctsbAddCaptionDataWithSameTimeRange_cold_1(&v25);
          v21 = v25;
          goto LABEL_28;
        }

        if (!v7)
        {
          v25 = v34;
          v26 = v35;
          v27 = v36;
          v13 = FigCEA608DataGeneratorCaptionInfoCreate(FigCEA608DataGeneratorClosedCaptionMode, v28, &v25, v2, &v31);
          if (v13)
          {
            goto LABEL_26;
          }

          v25 = *MEMORY[0x1E6960C70];
          *&v26 = *(MEMORY[0x1E6960C70] + 16);
          v13 = FigCEA608DataGeneratorBeginCaption(v1, &v25, 0, v31, v15, v16, v17, v18);
          if (v13)
          {
            goto LABEL_26;
          }
        }

        v19 = clcpcgctsbCreateCEA608DataGeneratorAttributedString(ValueAtIndex, v2, &aStr);
        v20 = aStr;
        if (v19 || (v19 = FigCEA608DataGeneratorAddCaptionLine(v1, HIDWORD(v29), v29, aStr), v19))
        {
          v21 = v19;
          FigCEA608DataGeneratorCaptionInfoRelease(v31);
          if (v20)
          {
            CFRelease(v20);
          }

          goto LABEL_31;
        }

        if (v20)
        {
          CFRelease(v20);
          aStr = 0;
        }

        if (cf)
        {
          CFRelease(cf);
          v32 = 0;
        }

        if (v24)
        {
          CFRelease(v24);
          v33 = 0;
        }

        v7 = 1;
      }

      else
      {
        v12 = v9;
      }

      ++v8;
      v9 = v12;
      if (v6 == v8)
      {
        if (!v7)
        {
          break;
        }

        v13 = FigCEA608DataGeneratorEndCaption(v1, 0, 0, 0);
LABEL_26:
        v21 = v13;
        goto LABEL_28;
      }
    }
  }

  v21 = 0;
LABEL_28:
  FigCEA608DataGeneratorCaptionInfoRelease(v31);
LABEL_31:
  if (v32)
  {
    CFRelease(v32);
  }

  if (v33)
  {
    CFRelease(v33);
  }

  return v21;
}

uint64_t clcpcgctsbGetFigCEA608DataGeneratorClosedCaptionMode()
{
  if (FigCFEqual())
  {
    return 3;
  }

  if (FigCFEqual())
  {
    return 2;
  }

  return 1;
}

unint64_t clcpcgctsbOutputAndReleaseLastCCData(uint64_t a1, uint64_t a2)
{
  value_low = *(a1 + 88);
  if (!value_low)
  {
    return value_low;
  }

  v20 = *(a1 + 96);
  memset(&v19, 0, sizeof(v19));
  if ((~*(a2 + 12) & 0x11) != 0)
  {
    *&lhs.duration.value = *a2;
    lhs.duration.epoch = *(a2 + 16);
    rhs = *(a1 + 96);
    CMTimeSubtract(&v19, &lhs.duration, &rhs);
    value_low = *(a1 + 88);
  }

  else
  {
    v19 = *(a1 + 120);
  }

  v4 = *(a1 + 20);
  v5 = *(a1 + 24);
  v6 = *a1;
  rhs = v19;
  v24 = 0;
  blockBufferOut = 0;
  sourceBytes = 0;
  BytePtr = CFDataGetBytePtr(value_low);
  Length = CFDataGetLength(value_low);
  v9 = Length + 8;
  sampleSizeArray = Length + 8;
  if ((Length + 8) >> 32)
  {
    clcpcgctsbOutputAndReleaseLastCCData_cold_1(&lhs);
    v12 = 0;
    value_low = LODWORD(lhs.duration.value);
    goto LABEL_11;
  }

  v10 = Length;
  v11 = CMBlockBufferCreateWithMemoryBlock(v6, 0, v9, v6, 0, 0, v9, 1u, &blockBufferOut);
  if (v11 || (sourceBytes = _byteswap_uint64(__PAIR64__(v9, v4)), v11 = CMBlockBufferReplaceDataBytes(&sourceBytes, blockBufferOut, 0, 8uLL), v11) || (v11 = CMBlockBufferReplaceDataBytes(BytePtr, blockBufferOut, 8uLL, v10), v11))
  {
    value_low = v11;
LABEL_23:
    v12 = 0;
    goto LABEL_11;
  }

  lhs.duration = rhs;
  lhs.presentationTimeStamp = v20;
  lhs.decodeTimeStamp = **&MEMORY[0x1E6960C70];
  value_low = CMSampleBufferCreate(v6, blockBufferOut, 1u, 0, 0, v5, 1, 1, &lhs, 1, &sampleSizeArray, &v24);
  v12 = v24;
  if (value_low)
  {
    if (!v24)
    {
      goto LABEL_11;
    }

    CFRelease(v24);
    goto LABEL_23;
  }

  v24 = 0;
LABEL_11:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  if (!value_low)
  {
    v13 = (*(a1 + 144))(v12, *(a1 + 152));
    if (v13)
    {
      value_low = v13;
      if (!v12)
      {
        return value_low;
      }

      goto LABEL_20;
    }

    v14 = MEMORY[0x1E6960C98];
    v15 = *(MEMORY[0x1E6960C98] + 16);
    *(a1 + 96) = *MEMORY[0x1E6960C98];
    *(a1 + 112) = v15;
    *(a1 + 128) = *(v14 + 32);
    v16 = *(a1 + 88);
    if (v16)
    {
      CFRelease(v16);
      value_low = 0;
      *(a1 + 88) = 0;
      if (!v12)
      {
        return value_low;
      }

      goto LABEL_20;
    }

    value_low = 0;
  }

  if (v12)
  {
LABEL_20:
    CFRelease(v12);
  }

  return value_low;
}

void clcpccv_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigCEA608DataGeneratorRelease(*(DerivedStorage + 8));
  v1 = *(DerivedStorage + 32);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 32) = 0;
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

__CFString *clcpccv_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigCLCPCaptionConversionValidator %p>", a1);
  return Mutable;
}

uint64_t clcpccv_CopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, CFDictionaryRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    clcpccv_CopyProperty_cold_2(&v13);
    return LODWORD(v13.start.value);
  }

  if (!a4)
  {
    clcpccv_CopyProperty_cold_1(&v13);
    return LODWORD(v13.start.value);
  }

  v8 = DerivedStorage;
  if (!CFEqual(@"TimeRange", a2))
  {
    return 4294954512;
  }

  v9 = *(MEMORY[0x1E6960C98] + 16);
  *&v13.start.value = *MEMORY[0x1E6960C98];
  *&v13.start.epoch = v9;
  *&v13.duration.timescale = *(MEMORY[0x1E6960C98] + 32);
  TimeLineRange = FigCEA608DataGeneratorGetTimeLineRange(*(v8 + 8), &v13);
  if (!TimeLineRange)
  {
    v12 = v13;
    *a4 = CMTimeRangeCopyAsDictionary(&v12, a3);
  }

  return TimeLineRange;
}

uint64_t clcpccv_SetProperty(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    clcpccv_SetProperty_cold_3(&v11);
    return LODWORD(v11.start.value);
  }

  v6 = DerivedStorage;
  if (!CFEqual(@"TimeRange", a2))
  {
    return 4294954512;
  }

  if (!a3 || (v7 = CFGetTypeID(a3), v7 != CFDictionaryGetTypeID()))
  {
    clcpccv_SetProperty_cold_2(&v11);
    return LODWORD(v11.start.value);
  }

  memset(&v11, 0, sizeof(v11));
  CMTimeRangeMakeFromDictionary(&v11, a3);
  if ((v11.start.flags & 1) == 0 || (v11.duration.flags & 1) == 0 || v11.duration.epoch || v11.duration.value < 0)
  {
    fig_log_get_emitter();
    return FigSignalErrorAtGM();
  }

  else if (*(v6 + 16) == 1)
  {
    clcpccv_SetProperty_cold_1(&v10);
    return LODWORD(v10.start.value);
  }

  else
  {
    v8 = *(v6 + 8);
    v10 = v11;
    return FigCEA608DataGeneratorSetTimeLineRange(v8, &v10.start.value);
  }
}

uint64_t clcpccv_AppendAndValidateCaptionData(uint64_t a1, const void *a2, __int128 *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    clcpccv_AppendAndValidateCaptionData_cold_4(&range1);
    return LODWORD(range1.start.value);
  }

  if ((*(a3 + 12) & 1) == 0 || (*(a3 + 36) & 1) == 0 || *(a3 + 5) || (*(a3 + 3) & 0x8000000000000000) != 0)
  {
    clcpccv_AppendAndValidateCaptionData_cold_3(&range1);
    return LODWORD(range1.start.value);
  }

  v6 = DerivedStorage;
  if (*(DerivedStorage + 16) == 2)
  {
    clcpccv_AppendAndValidateCaptionData_cold_2(&range1);
    return LODWORD(range1.start.value);
  }

  *&v20.start.value = *a3;
  *&v20.start.epoch = a3[1];
  *&v20.duration.timescale = a3[2];
  v7 = *(MEMORY[0x1E6960C98] + 16);
  *&range1.start.value = *MEMORY[0x1E6960C98];
  *&range1.start.epoch = v7;
  *&range1.duration.timescale = *(MEMORY[0x1E6960C98] + 32);
  result = FigCEA608DataGeneratorGetTimeLineRange(*(DerivedStorage + 8), &range1);
  if (result)
  {
    return result;
  }

  memset(&range2, 0, sizeof(range2));
  range = range1;
  otherRange = v20;
  CMTimeRangeGetIntersection(&range2, &range, &otherRange);
  v18 = *(MEMORY[0x1E6960CA8] + 16);
  v19 = *MEMORY[0x1E6960CA8];
  *&range.start.value = *MEMORY[0x1E6960CA8];
  *&range.start.epoch = v18;
  v17 = *(MEMORY[0x1E6960CA8] + 32);
  *&range.duration.timescale = v17;
  otherRange = range2;
  if (CMTimeRangeEqual(&range, &otherRange))
  {
    goto LABEL_20;
  }

  v9 = *(v6 + 56);
  *&range1.start.value = *(v6 + 40);
  *&range1.start.epoch = v9;
  *&range1.duration.timescale = *(v6 + 72);
  v10 = a3[1];
  *&range2.start.value = *a3;
  *&range2.start.epoch = v10;
  *&range2.duration.timescale = a3[2];
  if (CMTimeRangeEqual(&range1, &range2))
  {
    CFArrayAppendValue(*(v6 + 32), a2);
    ++*(v6 + 96);
LABEL_20:
    result = 0;
    ++*(v6 + 24);
    *(v6 + 16) = 1;
    return result;
  }

  v11 = *(v6 + 56);
  *&range2.start.value = *(v6 + 40);
  *&range2.start.epoch = v11;
  *&range2.duration.timescale = *(v6 + 72);
  memset(&range1, 0, sizeof(range1));
  v12 = a3[1];
  *&range.start.value = *a3;
  *&range.start.epoch = v12;
  *&range.duration.timescale = a3[2];
  CMTimeRangeGetIntersection(&range1, &range2, &range);
  *&range2.start.value = v19;
  *&range2.start.epoch = v18;
  *&range2.duration.timescale = v17;
  range = range1;
  if (!CMTimeRangeEqual(&range2, &range))
  {
    *&range.start.value = *(v6 + 64);
    range.start.epoch = *(v6 + 80);
    otherRange.start = range1.duration;
    CMTimeSubtract(&range2.start, &range.start, &otherRange.start);
    *(v6 + 64) = *&range2.start.value;
    *(v6 + 80) = range2.start.epoch;
  }

  result = cclcpccvAppendCaptionDataWithSameTimeRange(v6);
  if (!result)
  {
    v13 = *(v6 + 32);
    if (v13)
    {
      CFRelease(v13);
      *(v6 + 32) = 0;
    }

    Mutable = CFArrayCreateMutable(*v6, 0, MEMORY[0x1E695E9C0]);
    *(v6 + 32) = Mutable;
    if (!Mutable)
    {
      clcpccv_AppendAndValidateCaptionData_cold_1(&range2);
      return LODWORD(range2.start.value);
    }

    CFArrayAppendValue(Mutable, a2);
    v15 = *a3;
    v16 = a3[1];
    *(v6 + 72) = a3[2];
    *(v6 + 56) = v16;
    *(v6 + 40) = v15;
    *(v6 + 88) = *(v6 + 24);
    *(v6 + 96) = 1;
    goto LABEL_20;
  }

  return result;
}

uint64_t cclcpccvAppendCaptionDataWithSameTimeRange(uint64_t a1)
{
  v2 = *a1;
  v1 = *(a1 + 8);
  v3 = *(a1 + 32);
  v4 = *(a1 + 56);
  v50 = *(a1 + 40);
  v51 = v4;
  v52 = *(a1 + 72);
  if (v3)
  {
    Count = CFArrayGetCount(v3);
    v48 = 0;
    v49 = 0;
    v46 = 0;
    v47 = 0;
    if (Count)
    {
      v7 = Count;
      v8 = MEMORY[0x1E6960CC0];
      if (Count < 1)
      {
        cclcpccvAppendCaptionDataWithSameTimeRange_cold_5(&v42, &v41);
      }

      else
      {
        v9 = 0;
        v10 = 0;
        v11 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v3, v9);
          v13 = clcpcgctsbDoesCaptioDataHaveText(ValueAtIndex);
          LODWORD(time2.value) = 0;
          v45 = 0;
          if (v13)
          {
            v15 = clcpcgctsbCopyCaptionAnimationAndRegionInformation(ValueAtIndex, v2, &v49, &v48, &time2, &v45 + 1, &v45);
            if (v15)
            {
              goto LABEL_54;
            }

            cf = v48;
            v36 = v49;
            FigCEA608DataGeneratorClosedCaptionMode = clcpcgctsbGetFigCEA608DataGeneratorClosedCaptionMode();
            v14 = FigCEA608DataGeneratorClosedCaptionMode;
            if (v10 && v10 != FigCEA608DataGeneratorClosedCaptionMode)
            {
              cclcpccvAppendCaptionDataWithSameTimeRange_cold_1(time1);
              goto LABEL_56;
            }

            if (!v11)
            {
              *time1 = v50;
              *&time1[16] = v51;
              v44 = v52;
              v15 = FigCEA608DataGeneratorCaptionInfoCreate(FigCEA608DataGeneratorClosedCaptionMode, v45, time1, v2, &v47);
              if (v15)
              {
                goto LABEL_54;
              }

              *time1 = *MEMORY[0x1E6960C70];
              *&time1[16] = *(MEMORY[0x1E6960C70] + 16);
              v15 = FigCEA608DataGeneratorBeginCaption(v1, time1, 0, v47, v17, v18, v19, v20);
              if (v15)
              {
                goto LABEL_54;
              }
            }

            v21 = clcpcgctsbCreateCEA608DataGeneratorAttributedString(ValueAtIndex, v2, &v46);
            v22 = v46;
            if (v21 || (v21 = FigCEA608DataGeneratorAddCaptionLine(v1, time2.value, HIDWORD(v45), v46), v21))
            {
              v33 = v21;
              FigCEA608DataGeneratorCaptionInfoRelease(v47);
              if (v22)
              {
                CFRelease(v22);
              }

              goto LABEL_45;
            }

            if (v22)
            {
              CFRelease(v22);
              v46 = 0;
            }

            if (cf)
            {
              CFRelease(cf);
              v48 = 0;
            }

            if (v36)
            {
              CFRelease(v36);
              v49 = 0;
            }

            v11 = 1;
          }

          else
          {
            v14 = v10;
          }

          ++v9;
          v10 = v14;
        }

        while (v7 != v9);
        v8 = MEMORY[0x1E6960CC0];
        v42 = **&MEMORY[0x1E6960CC0];
        v41 = v42;
        if (v11)
        {
          v15 = FigCEA608DataGeneratorEndCaption(v1, &v42, &v41, 0);
          if (v15)
          {
LABEL_54:
            v33 = v15;
            goto LABEL_42;
          }
        }
      }

      *time1 = v42;
      v37 = *v8;
      *&time2.value = *v8;
      v23 = *(v8 + 2);
      time2.epoch = v23;
      if (!CMTimeCompare(time1, &time2) && (*time1 = v41, *&time2.value = v37, time2.epoch = v23, !CMTimeCompare(time1, &time2)) || (v39 = v42, v38 = v41, !*(a1 + 104)))
      {
        v33 = 0;
        goto LABEL_42;
      }

      v24 = *a1;
      Mutable = CFDictionaryCreateMutable(*a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (!Mutable)
      {
        cclcpccvAppendCaptionDataWithSameTimeRange_cold_4(time1);
LABEL_56:
        v33 = *time1;
        goto LABEL_42;
      }

      v26 = Mutable;
      v27 = FigCFDictionarySetInt32();
      if (v27)
      {
        v33 = v27;
        goto LABEL_41;
      }

      v28 = CFDictionaryCreateMutable(v24, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (!v28)
      {
        cclcpccvAppendCaptionDataWithSameTimeRange_cold_3(time1);
        v33 = *time1;
        goto LABEL_41;
      }

      v29 = v28;
      v30 = FigCFDictionarySetCFIndex();
      if (v30 || (v30 = FigCFDictionarySetCFIndex(), v30))
      {
        v33 = v30;
        goto LABEL_40;
      }

      CFDictionarySetValue(v26, @"CaptionRange", v29);
      v31 = CFDictionaryCreateMutable(v24, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (v31)
      {
        v32 = FigCFDictionarySetInt32();
        if (v32 || (*time1 = v39, v32 = FigCFDictionarySetCMTime(), v32) || (*time1 = v38, v32 = FigCFDictionarySetCMTime(), v32))
        {
          v33 = v32;
          goto LABEL_39;
        }
      }

      else if (!cclcpccvAppendCaptionDataWithSameTimeRange_cold_2(time1))
      {
        v33 = *time1;
        goto LABEL_40;
      }

      CFDictionarySetValue(v26, @"Adjustment", v31);
      v33 = (*(a1 + 104))(v26, *(a1 + 112));
      if (!v31)
      {
LABEL_40:
        CFRelease(v29);
LABEL_41:
        CFRelease(v26);
LABEL_42:
        FigCEA608DataGeneratorCaptionInfoRelease(v47);
        goto LABEL_45;
      }

LABEL_39:
      CFRelease(v31);
      goto LABEL_40;
    }
  }

  else
  {
    v48 = 0;
    v49 = 0;
    v47 = 0;
  }

  FigCEA608DataGeneratorCaptionInfoRelease(0);
  v33 = 0;
LABEL_45:
  if (v48)
  {
    CFRelease(v48);
  }

  if (v49)
  {
    CFRelease(v49);
  }

  return v33;
}

uint64_t OUTLINED_FUNCTION_4_17(uint64_t a1)
{

  return FigCEA608DataGeneratorFinish(a1);
}

uint64_t GetElapsedTime(void *a1)
{
  result = mach_absolute_time();
  v3 = result;
  v4 = dword_1ED4CA4F4;
  if (!dword_1ED4CA4F4)
  {
    result = mach_timebase_info(&dword_1ED4CA4F0);
    v4 = dword_1ED4CA4F4;
  }

  v5 = ((v3 * dword_1ED4CA4F0) / v4 * 0x20C49BA5E353F7CFLL) >> 64;
  *a1 = (v5 >> 7) + (v5 >> 63);
  return result;
}

uint64_t instrum_malloc(uint64_t a1, uint64_t a2)
{
  result = _MergedGlobals_21();
  if (result)
  {
    qword_1ED4CA4D8 += a2;
    if (qword_1ED4CA4E8 < qword_1ED4CA4D8)
    {
      qword_1ED4CA4E8 = qword_1ED4CA4D8;
    }

    qword_1ED4CA4E0 += a2;
  }

  return result;
}

uint64_t instrum_calloc(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = off_1ED4CA4B8();
  if (result)
  {
    v6 = qword_1ED4CA4D8 + a3 * a2;
    qword_1ED4CA4D8 = v6;
    if (qword_1ED4CA4E8 < v6)
    {
      qword_1ED4CA4E8 = v6;
    }

    qword_1ED4CA4E0 += a3 * a2;
  }

  return result;
}

uint64_t instrum_valloc(uint64_t a1, uint64_t a2)
{
  result = off_1ED4CA4C0();
  if (result)
  {
    qword_1ED4CA4D8 += a2;
    if (qword_1ED4CA4E8 < qword_1ED4CA4D8)
    {
      qword_1ED4CA4E8 = qword_1ED4CA4D8;
    }

    qword_1ED4CA4E0 += a2;
  }

  return result;
}

uint64_t instrum_free(uint64_t a1, void *ptr)
{
  if (ptr)
  {
    v4 = malloc_size(ptr);
    v5 = qword_1ED4CA4D8 - v4;
    if (qword_1ED4CA4D8 < v4)
    {
      v5 = 0;
    }

    qword_1ED4CA4D8 = v5;
  }

  v6 = off_1ED4CA4C8;

  return v6(a1, ptr);
}

uint64_t instrum_realloc(uint64_t a1, void *ptr, uint64_t a3)
{
  if (ptr)
  {
    v6 = malloc_size(ptr);
  }

  else
  {
    v6 = 0;
  }

  result = off_1ED4CA4D0(a1, ptr, a3);
  if (result)
  {
    v8 = a3 - v6 + qword_1ED4CA4D8;
    if (qword_1ED4CA4D8 + a3 <= v6)
    {
      v8 = 0;
    }

    qword_1ED4CA4D8 = v8;
    if (qword_1ED4CA4E8 < v8)
    {
      qword_1ED4CA4E8 = v8;
    }

    qword_1ED4CA4E0 += a3;
  }

  return result;
}

uint64_t AddTotalForVMObject(uint64_t a1, vm_address_t a2, natural_t a3, int64x2_t *a4, vm_address_t *a5)
{
  nesting_depth = a3;
  v25 = 0u;
  memset(v26, 0, sizeof(v26));
  *info = 0u;
  v24 = 0u;
  infoCnt = 19;
  address = a2;
  size = 0;
  v19 = vdupq_n_s64(1uLL);
  v9 = MEMORY[0x1E69E9AC8];
  while (1)
  {
    v10 = vm_region_recurse_64(a1, &address, &size, &nesting_depth, info, &infoCnt);
    if (v10)
    {
      break;
    }

    if (nesting_depth < a3)
    {
      v11 = 0;
      *a5 = address;
      return v11;
    }

    if (v26[0])
    {
      v11 = AddTotalForVMObject(a1, address, nesting_depth + 1, a4, &address);
      if (v11)
      {
        return v11;
      }
    }

    else
    {
      v12 = HIBYTE(v25);
      v13 = size;
      if (HIBYTE(v25) == 3)
      {
        goto LABEL_15;
      }

      v14.i64[1] = v19.i64[1];
      v14.i64[0] = size;
      *a4 = vaddq_s64(*a4, v14);
      v15 = *v9;
      a4[1].i64[0] += *v9 * DWORD2(v24);
      if ((v12 - 4) < 2 || v12 == 1)
      {
        v16 = v15 * HIDWORD(v24);
        v17 = a4[2].i64[0] + v16;
        a4[1].i64[1] = a4[1].i64[1] + v13 - v16;
        a4[2].i64[0] = v17;
        if ((info[0] & 2) == 0)
        {
          goto LABEL_15;
        }

LABEL_14:
        a4[2].i64[1] += v16;
        goto LABEL_15;
      }

      if (v12 == 2)
      {
        a4[2].i64[0] += v13;
        v16 = v13;
        if ((info[0] & 2) != 0)
        {
          goto LABEL_14;
        }
      }

LABEL_15:
      address += v13;
    }
  }

  v11 = v10;
  if (v10 != 1)
  {
    FigSignalErrorAt();
  }

  return v11;
}

uint64_t FigTextSampleBufferCopyText(opaqueCMSampleBuffer *a1, CFStringRef *a2)
{
  FormatDescription = CMSampleBufferGetFormatDescription(a1);
  DataBuffer = CMSampleBufferGetDataBuffer(a1);
  DataPointer = 0;
  if (!FormatDescription)
  {
    return DataPointer;
  }

  v7 = DataBuffer;
  if (!DataBuffer)
  {
    return DataPointer;
  }

  MediaSubType = CMFormatDescriptionGetMediaSubType(FormatDescription);
  if (MediaSubType == 1954034535 || MediaSubType == 1952807028)
  {
    bytes = 0;
    v9 = CMBlockBufferAccessDataBytes(v7, 0, 2uLL, temporaryBlock, &bytes);
    if (v9)
    {
      return v9;
    }

    v10 = 134217984;
    v11 = __rev16(*bytes);
    if (v11 >= 3 && !CMBlockBufferAccessDataBytes(v7, 2uLL, 2uLL, temporaryBlock, &bytes) && *bytes == 254)
    {
      if (bytes[1] == 255)
      {
        v10 = 256;
      }

      else
      {
        v10 = 134217984;
      }
    }

    if (CMBlockBufferGetDataLength(v7) < (v11 + 2))
    {
LABEL_13:
      fig_log_get_emitter();
      return FigSignalErrorAtGM();
    }

    if (CMBlockBufferIsRangeContiguous(v7, 2uLL, v11))
    {
      DataPointer = CMBlockBufferGetDataPointer(v7, 2uLL, 0, 0, &bytes);
      if (DataPointer)
      {
        return DataPointer;
      }

      v13 = 0;
      v14 = bytes;
    }

    else
    {
      v15 = malloc_type_malloc(v11, 0xA1EC907DuLL);
      if (!v15)
      {
        goto LABEL_13;
      }

      v14 = v15;
      DataPointer = CMBlockBufferCopyDataBytes(v7, 2uLL, v11, v15);
      bytes = v14;
      v13 = v14;
    }

    v16 = CFStringCreateWithBytes(*MEMORY[0x1E695E480], v14, v11, v10, 1u);
    if (a2)
    {
      *a2 = v16;
    }

    else if (v16)
    {
      CFRelease(v16);
    }

    if (v13)
    {
      free(v13);
    }

    return DataPointer;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}