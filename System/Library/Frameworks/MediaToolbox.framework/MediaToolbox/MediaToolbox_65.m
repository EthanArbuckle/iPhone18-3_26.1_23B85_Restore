uint64_t vq_addTimebaseListeners()
{
  result = CMBaseObjectGetDerivedStorage();
  if (*(result + 568))
  {
    CMNotificationCenterGetDefaultLocalCenter();

    return FigNotificationCenterAddWeakListener();
  }

  return result;
}

void VideoTargetInfoCreate(uint64_t a1, void *a2)
{
  if (a2)
  {
    if (videoTargetInfo_getTypeID_sRegisterVideoTargetInfoTypeOnce != -1)
    {
      VideoTargetInfoCreate_cold_1();
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v4 = Instance;
      *(Instance + 16) = 0;
      v5 = *MEMORY[0x1E695E480];
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
      v4[3] = Mutable;
      if (Mutable)
      {
        v7 = CFArrayCreateMutable(v5, 0, MEMORY[0x1E695E9C0]);
        v4[4] = v7;
        if (v7)
        {
          *a2 = v4;
          return;
        }

        v8 = 997;
      }

      else
      {
        v8 = 995;
      }

      VideoTargetInfoCreate_cold_2(v8, v4);
    }

    else
    {
      VideoTargetInfoCreate_cold_3();
    }
  }

  else
  {
    VideoTargetInfoCreate_cold_4();
  }
}

uint64_t vq_handleWaitForVideoTargetConditionChange(uint64_t a1, int a2, int a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = DerivedStorage;
  if (a2 == 1)
  {
    *(DerivedStorage + 328) = a3;
    if (dword_1EAF17790)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      a3 = *(v8 + 328);
    }

    FigSimpleMutexLock();
    if (!a3)
    {
LABEL_9:
      v12 = *(v8 + 336);
      if (v12 && CFArrayGetCount(v12) >= 1)
      {
        if (dword_1EAF17790)
        {
          v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        FigCFArrayApplyBlock();
        CFArrayRemoveAllValues(*(v8 + 336));
      }
    }
  }

  else
  {
    v10 = *(DerivedStorage + 344);
    if (dword_1EAF17790)
    {
      v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    *(v8 + 344) = a4;
    FigSimpleMutexLock();
    if (!v10)
    {
      goto LABEL_9;
    }
  }

  return FigSimpleMutexUnlock();
}

uint64_t vq_setSynchronizedLayers()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 248))
  {
    v1 = CFArrayCreate(*MEMORY[0x1E695E480], (DerivedStorage + 24), 1, MEMORY[0x1E695E9C0]);
    v2 = FigLayerSynchronizerSetLayerArray(*(DerivedStorage + 248), v1);
    if (v1)
    {
      CFRelease(v1);
    }
  }

  else
  {
    v2 = 0;
  }

  FigSimpleMutexUnlock();
  return v2;
}

uint64_t __videoTargetInfo_getTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  videoTargetInfo_getTypeID_sVideoTargetInfoTypeID = result;
  return result;
}

void *videoTargetInfo_init(void *result)
{
  result[2] = 0;
  result[3] = 0;
  result[4] = 0;
  return result;
}

void videoTargetInfo_finalize(uint64_t a1)
{
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

CFStringRef videoTargetInfo_copyDebugDesc(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  v3 = CFGetRetainCount(a1);
  v4 = *(a1 + 16);
  Count = *(a1 + 24);
  if (Count)
  {
    Count = CFArrayGetCount(Count);
  }

  v6 = "YES";
  if (!v4)
  {
    v6 = " NO";
  }

  return CFStringCreateWithFormat(v2, 0, @"<VideoTargetInfo %p retainCount: %ld> Stereo: %s %d FIQs", a1, v3, v6, Count);
}

uint64_t __vq_handleWaitForVideoTargetConditionChange_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  VTable = CMBaseObjectGetVTable();
  v14 = *(VTable + 16);
  result = VTable + 16;
  v15 = *(v14 + 16);
  if (v15)
  {
    v5.n128_u64[0] = 0;
    v6.n128_u64[0] = 0;
    v7.n128_u64[0] = 0;
    v8.n128_u64[0] = 0;
    v9.n128_u64[0] = 0;
    v10.n128_u64[0] = 0;
    v11.n128_u64[0] = 0;
    v12.n128_u64[0] = 0;

    return v15(v3, a2, 0, v5, v6, v7, v8, v9, v10, v11, v12);
  }

  return result;
}

uint64_t vq_setImageQueueResponsibleProcessID(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    return 0;
  }

  v4 = DerivedStorage;
  v5 = CFRetain(a2);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  if (*(v4 + 644) < 1)
  {
    v11 = 0;
  }

  else
  {
    SInt32 = FigCFNumberCreateSInt32();
    if (SInt32)
    {
      v8 = SInt32;
      FigBaseObject = FigImageQueueGetFigBaseObject(v6);
      v10 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v10)
      {
        v11 = v10(FigBaseObject, @"ResponsibleProcessID", v8);
      }

      else
      {
        v11 = 4294954514;
      }

      CFRelease(v8);
    }

    else
    {
      vq_setImageQueueResponsibleProcessID_cold_1(&v13);
      v11 = v13;
    }
  }

  CFRelease(v6);
  return v11;
}

uint64_t vq_EnqueueFrame(void *a1, opaqueCMSampleBuffer *a2, int a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, double a8, double a9, double a10, double a11)
{
  *&v248[16] = a10;
  *&v248[24] = a11;
  *v248 = a8;
  *&v248[8] = a9;
  v293 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  memset(&v258, 0, sizeof(v258));
  sBufOut = 0;
  sbuf = a2;
  CMSampleBufferGetOutputPresentationTimeStamp(&v258, a2);
  videoDesc = CMSampleBufferGetFormatDescription(a2);
  if (*DerivedStorage)
  {
    return FigSignalErrorAtGM();
  }

  if (*(CMBaseObjectGetDerivedStorage() + 64))
  {
    if (a6 == 0.0)
    {
      vq_EnqueueFrame_cold_4(&block);
    }

    else
    {
      if (a7 != 0.0)
      {
        goto LABEL_6;
      }

      vq_EnqueueFrame_cold_3(&block);
    }

    value_low = LODWORD(block.value);
    if (LODWORD(block.value))
    {
      goto LABEL_440;
    }

    goto LABEL_446;
  }

LABEL_6:
  v17 = CMSampleBufferGetTaggedBufferGroup(a2);
  if (v17)
  {
    CVPixelBufferForTag = CMTaggedBufferGroupGetCVPixelBufferForTag(v17, *MEMORY[0x1E6960690], 0);
    v19 = CVPixelBufferForTag;
    if (CVPixelBufferForTag)
    {
      DisplaySize = CVImageBufferGetDisplaySize(CVPixelBufferForTag);
      height = DisplaySize.height;
      width = DisplaySize.width;
      CMBaseObjectGetDerivedStorage();
      EncodedSize = CVImageBufferGetEncodedSize(v19);
      Dimensions.width = EncodedSize.width;
      v22 = EncodedSize.height;
    }

    else
    {
      height = *(MEMORY[0x1E695F060] + 8);
      width = *MEMORY[0x1E695F060];
      v22 = *(MEMORY[0x1E6960CF8] + 4);
      Dimensions.width = *MEMORY[0x1E6960CF8];
    }

    LODWORD(v234) = v22;
  }

  else
  {
    Dimensions = CMVideoFormatDescriptionGetDimensions(videoDesc);
    PresentationDimensions = CMVideoFormatDescriptionGetPresentationDimensions(videoDesc, 1u, 1u);
    height = PresentationDimensions.height;
    width = PresentationDimensions.width;
    v234 = HIDWORD(*&Dimensions);
    CMBaseObjectGetDerivedStorage();
  }

  FigSimpleMutexLock();
  v24 = CMBaseObjectGetDerivedStorage();
  if (*(v24 + 328) && !*(v24 + 344) && !*(v24 + 376))
  {
    CFArrayAppendValue(*(DerivedStorage + 336), sbuf);
LABEL_112:
    value_low = 0;
    goto LABEL_439;
  }

  *(DerivedStorage + 560) = 1;
  v25 = CMGetAttachment(sbuf, *MEMORY[0x1E69604B0], 0);
  value = *MEMORY[0x1E695E4D0];
  if (v25 == *MEMORY[0x1E695E4D0])
  {
    v38 = *(DerivedStorage + 384);
    if (v38)
    {
      CMBufferQueueEnqueue(v38, sbuf);
    }

    goto LABEL_112;
  }

  SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(sbuf, 0);
  v27 = SampleAttachmentsArray;
  if (!SampleAttachmentsArray || (v28 = CFGetTypeID(SampleAttachmentsArray), v28 != CFArrayGetTypeID()) || CFArrayGetCount(v27) < 1 || (ValueAtIndex = CFArrayGetValueAtIndex(v27, 0), (v30 = ValueAtIndex) == 0) || (v31 = CFGetTypeID(ValueAtIndex), v31 != CFDictionaryGetTypeID()) || CFDictionaryGetValue(v30, *MEMORY[0x1E6960410]) != value)
  {
    ++*(DerivedStorage + 552);
  }

  v32 = DerivedStorage;
  if (*(DerivedStorage + 376))
  {
LABEL_24:
    vq_updateSidebandVideoPropertiesLookupIDForFormatDescription(a1, *(v32 + 376), videoDesc);
    v33 = CMBaseObjectGetDerivedStorage();
    time2.value = 0;
    *&time2.timescale = &time2;
    time2.epoch = 0x2020000000;
    v277 = 0;
    Decryptor = FigSampleBufferGetDecryptor();
    sbufPTS.value = 0;
    *&sbufPTS.timescale = &sbufPTS;
    sbufPTS.epoch = 0x2020000000;
    v271 = 1;
    v35 = *(v33 + 544);
    block.value = MEMORY[0x1E69E9820];
    *&block.timescale = 3221225472;
    block.epoch = __vq_UpdateCryptorFromSampleBuffer_block_invoke;
    v287 = &unk_1E74942A8;
    v290 = v33;
    v291 = Decryptor;
    v292 = a1;
    p_time2 = &time2;
    p_sbufPTS = &sbufPTS;
    dispatch_sync(v35, &block);
    v36 = *(*&time2.timescale + 24);
    if (v36)
    {
      CFRelease(v36);
    }

    v37 = *(*&sbufPTS.timescale + 24);
    _Block_object_dispose(&sbufPTS, 8);
    _Block_object_dispose(&time2, 8);
    if (v37)
    {
      if (!*(DerivedStorage + 561))
      {
        goto LABEL_46;
      }
    }

    else if (!*(DerivedStorage + 561))
    {
      FigBaseObject = FigRenderPipelineGetFigBaseObject(*(DerivedStorage + 376));
      CMBaseObjectSetProperty(FigBaseObject, @"Suspended", value);
      *(DerivedStorage + 561) = 1;
    }

    ++*(DerivedStorage + 512);
    CMBufferQueueGetDuration(&block, *(DerivedStorage + 384));
    CMTimeMake(&time2, 11, 1);
    if (CMTimeCompare(&block, &time2) >= 1)
    {
      value_low = FigSignalErrorAtGM();
      if (value_low)
      {
        goto LABEL_439;
      }
    }

LABEL_46:
    v45 = sbuf;
    if (!*(DerivedStorage + 704))
    {
      goto LABEL_80;
    }

    v268 = -1;
    v269 = -1;
    vq_tagCollectionGetLayerIDsIfPresent(sbuf, &v269, &v268);
    if (v269 == *(DerivedStorage + 688))
    {
      v45 = sbuf;
      if (v268 == *(DerivedStorage + 696))
      {
        goto LABEL_80;
      }
    }

    taggedBufferGroup = 0;
    *type = 0;
    v46 = FigTagMakeWithSInt64Value();
    v243 = v47;
    allocatora = v46;
    v48 = FigTagMakeWithSInt64Value();
    valuea = v49;
    idx = v48;
    memset(&block, 0, sizeof(block));
    CMSampleBufferGetPresentationTimeStamp(&block, sbuf);
    memset(&time2, 0, sizeof(time2));
    CMSampleBufferGetDuration(&time2, sbuf);
    formatDescription = CMSampleBufferGetFormatDescription(sbuf);
    v50 = CMSampleBufferGetTaggedBufferGroup(sbuf);
    v51 = v50;
    if (v50)
    {
      Count = CMTaggedBufferGroupGetCount(v50);
      if (Count > 1)
      {
        videoDesca = *MEMORY[0x1E695E480];
        theArray = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
        Mutable = CFArrayCreateMutable(videoDesca, 0, MEMORY[0x1E695E9C0]);
        if (theArray && Mutable)
        {
          v53 = 0;
          v54 = *MEMORY[0x1E6960690];
          v55 = *(MEMORY[0x1E6960690] + 8);
          v57 = *MEMORY[0x1E69606A0];
          v56 = *(MEMORY[0x1E69606A0] + 8);
          do
          {
            TagCollectionAtIndex = CMTaggedBufferGroupGetTagCollectionAtIndex(v51, v53);
            if (!TagCollectionAtIndex)
            {
              vq_EnqueueFrame_cold_13(&sbufPTS);
              goto LABEL_261;
            }

            CVPixelBufferAtIndex = FigTaggedBufferGroupGetCVPixelBufferAtIndex();
            if (!CVPixelBufferAtIndex)
            {
              vq_EnqueueFrame_cold_12(&sbufPTS);
              goto LABEL_261;
            }

            *&v294.category = v54;
            v294.value = v55;
            v60 = CMTagCollectionContainsTag(TagCollectionAtIndex, v294);
            *&v295.category = v57;
            v295.value = v56;
            if (v60 | CMTagCollectionContainsTag(TagCollectionAtIndex, v295))
            {
              MutableCopy = CMTagCollectionCreateMutableCopy(TagCollectionAtIndex, videoDesca, type);
              if (MutableCopy)
              {
                goto LABEL_70;
              }

              CMTagCollectionRemoveAllTagsOfCategory(*type, kCMTagCategory_VideoLayerID);
              if (v60)
              {
                *&v62.category = allocatora;
              }

              else
              {
                *&v62.category = idx;
              }

              if (v60)
              {
                v62.value = v243;
              }

              else
              {
                v62.value = valuea;
              }

              CMTagCollectionAddTag(*type, v62);
              CFArrayAppendValue(theArray, *type);
              if (*type)
              {
                CFRelease(*type);
                *type = 0;
              }
            }

            else
            {
              CFArrayAppendValue(theArray, TagCollectionAtIndex);
            }

            CFArrayAppendValue(Mutable, CVPixelBufferAtIndex);
            ++v53;
          }

          while (Count != v53);
          MutableCopy = MEMORY[0x19A8D33F0](videoDesca, theArray, Mutable, &taggedBufferGroup);
          if (!MutableCopy)
          {
            sbufPTS = block;
            sbufDuration = time2;
            MutableCopy = CMSampleBufferCreateForTaggedBufferGroup(videoDesca, taggedBufferGroup, &sbufPTS, &sbufDuration, formatDescription, &sBufOut);
          }
        }

        else
        {
          vq_EnqueueFrame_cold_14(&sbufPTS);
LABEL_261:
          MutableCopy = LODWORD(sbufPTS.value);
        }

LABEL_70:
        value_low = MutableCopy;
        if (theArray)
        {
          CFRelease(theArray);
        }

        if (Mutable)
        {
          CFRelease(Mutable);
        }

        goto LABEL_74;
      }

      vq_EnqueueFrame_cold_15(&sbufPTS);
    }

    else
    {
      vq_EnqueueFrame_cold_16(&sbufPTS);
    }

    value_low = LODWORD(sbufPTS.value);
LABEL_74:
    if (taggedBufferGroup)
    {
      CFRelease(taggedBufferGroup);
    }

    if (*type)
    {
      CFRelease(*type);
    }

    if (value_low)
    {
      goto LABEL_439;
    }

    v45 = sBufOut;
LABEL_80:
    value_low = CMBufferQueueEnqueue(*(DerivedStorage + 384), v45);
    if (value_low)
    {
      goto LABEL_439;
    }

    ++*(DerivedStorage + 504);
    if (CMSampleBufferGetImageBuffer(sbuf) || vq_containsStereoVideoTaggedBufferGroup(sbuf, 0, 0))
    {
      if (!*(DerivedStorage + 480))
      {
        *(DerivedStorage + 480) = 1;
      }
    }

    else if (*(DerivedStorage + 480) == 1)
    {
      *(DerivedStorage + 480) = 0;
    }

    FigSimpleMutexLock();
    if (*(DerivedStorage + 624))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      v63 = CMNotificationCenterPostNotification();
      v64 = *(DerivedStorage + 624);
      if (v64)
      {
        CFRelease(v64);
        *(DerivedStorage + 624) = 0;
      }
    }

    else
    {
      v63 = 0;
    }

    FigSimpleMutexUnlock();
    v65 = Dimensions.width;
    v66 = v234;
    if (*(CMBaseObjectGetDerivedStorage() + 64))
    {
      block = v258;
      Seconds = CMTimeGetSeconds(&block);
      sbufPTS.value = 0;
      v68 = CMBaseObjectGetDerivedStorage();
      v69 = v68;
      if (*(v68 + 232) != a3 || (v299.origin.x = a4, v299.origin.y = a5, v299.size.width = a6, v299.size.height = a7, !CGRectEqualToRect(v299, *(v68 + 136))) || !CGRectEqualToRect(*v248, *(v69 + 168)) || (v300.origin.x = 0.0, v300.origin.y = 0.0, v300.size.width = Dimensions.width, v300.size.height = v234, !CGRectEqualToRect(v300, *(v69 + 72))) || (v301.origin.x = 0.0, v301.origin.y = 0.0, v301.size.height = height, v301.size.width = width, !CGRectEqualToRect(v301, *(v69 + 104))) || *(v69 + 32))
      {
        if (!FigDeferredTransactionCreate(*MEMORY[0x1E695E480], &sbufPTS.value))
        {
          v70 = *(v69 + 32);
          if (*(v69 + 232) == a3 && (v302.origin.x = a4, v302.origin.y = a5, v302.size.width = a6, v302.size.height = a7, CGRectEqualToRect(v302, *(v69 + 136))) && CGRectEqualToRect(*v248, *(v69 + 168)) && (v303.origin.x = 0.0, v303.origin.y = 0.0, v303.size.width = Dimensions.width, v303.size.height = v234, CGRectEqualToRect(v303, *(v69 + 72))))
          {
            v304.origin.x = 0.0;
            v304.origin.y = 0.0;
            v304.size.height = height;
            v304.size.width = width;
            v71 = !CGRectEqualToRect(v304, *(v69 + 104));
          }

          else
          {
            v71 = 1;
          }

          if (!FPSupport_AppendDeferredTransactionChangeForUpdatingLayerTransform(sbufPTS.value, *(v69 + 24), *(v69 + 16), a3, v70, v71, *(v69 + 237), "vq_updateLayerTransform", a4, a5, a6, a7, *v248, *&v248[8], *&v248[16], *&v248[24], 0, 0, *&v65, *&v66, 0, 0, *&width, *&height, Seconds))
          {
            FigDeferredTransactionCommit(sbufPTS.value, 0);
            if (*(v69 + 32) && dword_1EAF17790)
            {
              LODWORD(sbufDuration.value) = 0;
              LOBYTE(taggedBufferGroup) = 0;
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v73 = sbufDuration.value;
              if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, taggedBufferGroup))
              {
                v74 = v73;
              }

              else
              {
                v74 = v73 & 0xFFFFFFFE;
              }

              if (v74)
              {
                v75 = *(v69 + 24);
                LODWORD(time2.value) = 136315650;
                *(&time2.value + 4) = "vq_updateLayerTransform";
                LOWORD(time2.flags) = 2048;
                *(&time2.flags + 2) = a1;
                HIWORD(time2.epoch) = 2048;
                v277 = v75;
                _os_log_send_and_compose_impl();
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            *(v69 + 136) = a4;
            *(v69 + 144) = a5;
            *(v69 + 152) = a6;
            *(v69 + 160) = a7;
            *(v69 + 168) = *v248;
            *(v69 + 176) = *&v248[8];
            *(v69 + 184) = *&v248[16];
            *(v69 + 192) = *&v248[24];
            *(v69 + 232) = a3;
            *(v69 + 72) = 0;
            *(v69 + 80) = 0;
            *(v69 + 88) = v65;
            *(v69 + 96) = v66;
            *(v69 + 104) = 0;
            *(v69 + 112) = 0;
            *(v69 + 120) = width;
            *(v69 + 128) = height;
            *(v69 + 32) = 0;
          }
        }
      }

      if (sbufPTS.value)
      {
        CFRelease(sbufPTS.value);
      }
    }

    vq_updateImageQueueProtection();
    v84 = CMBaseObjectGetDerivedStorage();
    v85 = v84;
    taggedBufferGroup = 0;
    block = **&MEMORY[0x1E6960C70];
    time2 = block;
    if (*v84)
    {
      vq_EnqueueFrame_cold_17();
    }

    else if (*(v84 + 720))
    {
      if (*(v84 + 728) == v65 && *(v84 + 736) == v66)
      {
        v86 = 0;
      }

      else
      {
        *(v84 + 728) = v65;
        *(v84 + 736) = v66;
        v86 = 1;
      }

      HostTimeClock = CMClockGetHostTimeClock();
      CMClockGetTime(&block, HostTimeClock);
      sbufPTS = block;
      sbufDuration = *(v85 + 748);
      CMTimeSubtract(&time2, &sbufPTS, &sbufDuration);
      if ((*(v85 + 760) & 1) == 0 || (sbufPTS = time2, sbufDuration = *(v85 + 772), CMTimeCompare(&sbufPTS, &sbufDuration) >= 1))
      {
        v88 = *(v85 + 376);
        v89 = CFGetAllocator(a1);
        v90 = FigRenderPipelineGetFigBaseObject(v88);
        v91 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (!v91 || v91(v90, @"CurrentVideoFrameRate", v89, &taggedBufferGroup))
        {
          goto LABEL_153;
        }

        FigCFNumberGetFloat32();
        if (vabds_f32(v92, *(v85 + 744)) > 0.1)
        {
          *(v85 + 744) = v92;
          v86 = 1;
        }

        *(v85 + 748) = block;
      }

      if (*(v85 + 844))
      {
        if (!v86)
        {
          goto LABEL_153;
        }
      }

      else
      {
        *(v85 + 844) = 1;
      }

      vq_reportResourceUsageStatsToGlobalResourceArbiter();
    }

    else
    {
      vq_EnqueueFrame_cold_18();
    }

LABEL_153:
    if (taggedBufferGroup)
    {
      CFRelease(taggedBufferGroup);
    }

    value_low = v63;
    goto LABEL_439;
  }

  v216 = *(DerivedStorage + 664);
  v252 = CMBaseObjectGetDerivedStorage();
  values = 0;
  memset(&sbufPTS, 0, sizeof(sbufPTS));
  CMTimeMake(&sbufPTS, 3, 30);
  memset(&sbufDuration, 0, sizeof(sbufDuration));
  CMTimeMake(&sbufDuration, 5, 30);
  v265 = 0;
  theDict = 0;
  v263 = 0;
  v264 = 0;
  v262 = 0;
  v260 = -1;
  v261 = -1;
  FigSimpleMutexLock();
  if (!*(CMBaseObjectGetDerivedStorage() + 64))
  {
    v76 = *(v252 + 33);
    if (!v76 || CFArrayGetCount(v76) <= 0)
    {
      v77 = *(v252 + 36);
      if (!v77 || CFArrayGetCount(v77) <= 0)
      {
        vq_EnqueueFrame_cold_11(&block);
        v222 = 0;
        v223 = 0;
        v227 = 0;
        v39 = 0;
LABEL_118:
        v225 = 0;
        idxa = 0;
        v244 = 0;
        v219 = 0;
        v220 = 0;
LABEL_119:
        updated = LODWORD(block.value);
        goto LABEL_379;
      }
    }
  }

  allocator = *MEMORY[0x1E695E480];
  v39 = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (!CMSampleBufferGetTaggedBufferGroup(sbuf))
  {
    v79 = CMSampleBufferGetFormatDescription(sbuf);
    v80 = v79;
    values = v79;
    v81 = -1;
    if (!v79)
    {
      formatDescriptiona = 0;
      v218 = -1;
      v219 = 0;
      v221 = -1;
      goto LABEL_213;
    }

    taggedBufferGroup = 0;
    *type = 0;
    v268 = -1;
    v269 = -1;
    FPSupport_CreateTagCollectionFromVideoFormatDescriptionExtensionsWithDefaults(v79, &taggedBufferGroup);
    if (CMTagCollectionCreateMutableCopy(taggedBufferGroup, allocator, type))
    {
      v218 = -1;
      v221 = -1;
LABEL_182:
      if (taggedBufferGroup)
      {
        CFRelease(taggedBufferGroup);
      }

      if (*type)
      {
        CFRelease(*type);
      }

      if (dword_1EAF17790)
      {
        LODWORD(taggedBufferGroup) = 0;
        type[0] = OS_LOG_TYPE_DEFAULT;
        v96 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v97 = taggedBufferGroup;
        if (os_log_type_enabled(v96, type[0]))
        {
          v98 = v97;
        }

        else
        {
          v98 = v97 & 0xFFFFFFFE;
        }

        if (v98)
        {
          v99 = "YES";
          *(&time2.value + 4) = "vq_createVideoRenderPipeline";
          LODWORD(time2.value) = 136316162;
          LOWORD(time2.flags) = 2048;
          if (!v262)
          {
            v99 = "NO";
          }

          *(&time2.flags + 2) = a1;
          HIWORD(time2.epoch) = 2048;
          v277 = sbuf;
          v278 = 2082;
          v279 = v99;
          v280 = 2112;
          v281 = v39;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
        formatDescriptiona = 0;
        v100 = v262 == 4 || v262 == 1;
        if (!v100 || !dword_1EAF17790)
        {
          goto LABEL_209;
        }

        LODWORD(taggedBufferGroup) = 0;
        type[0] = OS_LOG_TYPE_DEFAULT;
        v101 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v102 = taggedBufferGroup;
        if (os_log_type_enabled(v101, type[0]))
        {
          v103 = v102;
        }

        else
        {
          v103 = v102 & 0xFFFFFFFE;
        }

        if (v103)
        {
          *(&time2.value + 4) = "vq_createVideoRenderPipeline";
          v104 = "TestIPB";
          LODWORD(time2.value) = 136316674;
          LOWORD(time2.flags) = 2048;
          if (v262 == 1)
          {
            v104 = "MV-HEVC";
          }

          *(&time2.flags + 2) = a1;
          HIWORD(time2.epoch) = 2048;
          v277 = sbuf;
          v278 = 2082;
          v279 = v104;
          v280 = 2048;
          v281 = v218;
          v282 = 2048;
          v283 = v81;
          v284 = 2048;
          v285 = v221;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      formatDescriptiona = 0;
      goto LABEL_209;
    }

    CMTagCollectionAddTag(*type, *MEMORY[0x1E6960640]);
    MVHEVCVideoLayerIDs = FigVideoFormatDescriptionGetMVHEVCVideoLayerIDs();
    if (MVHEVCVideoLayerIDs)
    {
      if (CMTagCollectionContainsTag(*type, *MEMORY[0x1E6960698]))
      {
        CMTagCollectionRemoveAllTagsOfCategory(*type, kCMTagCategory_StereoView);
        CMTagCollectionAddTag(*type, *MEMORY[0x1E6960688]);
      }

      v221 = -1;
      if (v269 == -1 || v268 == -1)
      {
LABEL_168:
        if (CMTagCollectionContainsTag(*type, *MEMORY[0x1E6960688]))
        {
          if (MVHEVCVideoLayerIDs)
          {
            if (VTIsStereoMVHEVCDecodeSupported())
            {
              v94 = 1;
LABEL_181:
              CFArrayAppendValue(v39, *type);
              v262 = v94;
              v218 = v269;
              v260 = v268;
              v261 = v269;
              v81 = v268;
              goto LABEL_182;
            }
          }

          else
          {
            MediaSubType = CMFormatDescriptionGetMediaSubType(v80);
            *&block.value = *MEMORY[0x1E6960648];
            time2.value = 0;
            CMTagCollectionGetTagsWithCategory(*type, kCMTagCategory_PackingType, &block, 1, &time2.value);
            if (time2.value == 1 && (CMTagEqualToTag(*&block.value, *MEMORY[0x1E6960658]) || CMTagEqualToTag(*&block.value, *MEMORY[0x1E6960650])))
            {
              v268 = -1;
              v269 = -1;
              v221 = -1;
              v94 = 2;
              goto LABEL_181;
            }

            if (MediaSubType == 1768972832)
            {
              v221 = 0;
              v268 = 1;
              v269 = 0;
              v94 = 4;
              goto LABEL_181;
            }
          }

          CMTagCollectionRemoveAllTagsOfCategory(*type, kCMTagCategory_StereoView);
          CMTagCollectionAddTag(*type, *MEMORY[0x1E6960698]);
          v94 = 0;
          v268 = -1;
          v269 = -1;
          v221 = -1;
          goto LABEL_181;
        }

        v94 = 0;
        goto LABEL_181;
      }

      CMFormatDescriptionGetExtension(v80, *MEMORY[0x1E6960058]);
      if (FigCFEqual())
      {
        v83 = v269;
      }

      else
      {
        v93 = FigCFEqual();
        v83 = v268;
        if (!v93)
        {
          v83 = 0;
        }
      }
    }

    else
    {
      v83 = -1;
    }

    v221 = v83;
    goto LABEL_168;
  }

  if (!vq_containsStereoVideoTaggedBufferGroup(sbuf, v39, &v262))
  {
    goto LABEL_164;
  }

  if (dword_1EAF17790)
  {
    LODWORD(taggedBufferGroup) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v40 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v41 = taggedBufferGroup;
    if (os_log_type_enabled(v40, type[0]))
    {
      v42 = v41;
    }

    else
    {
      v42 = v41 & 0xFFFFFFFE;
    }

    if (v42)
    {
      v43 = "monoscopic";
      *(&time2.value + 4) = "vq_createVideoRenderPipeline";
      LODWORD(time2.value) = 136316162;
      LOWORD(time2.flags) = 2048;
      if (v262 == 3)
      {
        v43 = "separate stereo";
      }

      *(&time2.flags + 2) = a1;
      HIWORD(time2.epoch) = 2048;
      v277 = sbuf;
      v278 = 2082;
      v279 = v43;
      v280 = 2112;
      v281 = v39;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v262 == 3)
  {
    v260 = 1;
    v261 = 0;
    if (vq_tagCollectionGetLayerIDsIfPresent(sbuf, &v261, &v260))
    {
      v218 = v261;
      values = CMSampleBufferGetFormatDescription(sbuf);
      formatDescriptiona = 1;
      *(v252 + 704) = 1;
      *(v252 + 86) = v218;
      v81 = v260;
      *(v252 + 87) = v260;
      v221 = v218;
      goto LABEL_209;
    }

LABEL_164:
    updated = FigSignalErrorAtGM();
    v222 = 0;
    v223 = 0;
    v225 = 0;
    v227 = 0;
    idxa = 0;
    v244 = 0;
    v219 = 0;
    v220 = 0;
    goto LABEL_379;
  }

  formatDescriptiona = 0;
  v81 = -1;
  v218 = -1;
  v221 = -1;
LABEL_209:
  if (values)
  {
    v219 = CFArrayCreate(allocator, &values, 1, MEMORY[0x1E695E9C0]);
    if (!v219)
    {
      vq_EnqueueFrame_cold_9(&block);
      v222 = 0;
      v223 = 0;
      v227 = 0;
      goto LABEL_118;
    }
  }

  else
  {
    v219 = 0;
  }

LABEL_213:
  v217 = v81;
  if (v262)
  {
    v105 = *(v252 + 36);
    if (v105)
    {
      if (CFArrayGetCount(v105) >= 1)
      {
        v229 = CMBaseObjectGetDerivedStorage();
        v106 = *(v229 + 288);
        if (v106)
        {
          v226 = CFArrayGetCount(v106);
          if (v226 >= 1)
          {
            v107 = 0;
            v108 = 1;
LABEL_219:
            v224 = v108;
            do
            {
              idxb = v107;
              v109 = CFArrayGetValueAtIndex(*(v229 + 288), v107);
              v228 = CFArrayGetValueAtIndex(*(v229 + 296), idxb);
              block.value = 0;
              v110 = *(*(CMBaseObjectGetVTable() + 16) + 48);
              if (v110)
              {
                v110(v109, allocator, &block);
              }

              if (block.value)
              {
                v245 = CFArrayGetCount(block.value);
                if (v245 >= 1)
                {
                  for (i = 0; i != v245; ++i)
                  {
                    v112 = CFArrayGetValueAtIndex(block.value, i);
                    CountOfDataChannels = FigDataChannelGroupGetCountOfDataChannels(v112);
                    if (CountOfDataChannels >= 1)
                    {
                      v114 = 0;
                      while (1)
                      {
                        DataChannelByIndex = FigDataChannelGroupGetDataChannelByIndex(v112, v114);
                        if (!v39)
                        {
                          break;
                        }

                        v116 = DataChannelByIndex;
                        v117 = CFArrayGetCount(v39);
                        if (v117 < 1)
                        {
                          break;
                        }

                        v118 = 0;
                        v119 = 1;
                        do
                        {
                          while (1)
                          {
                            v120 = CFArrayGetValueAtIndex(v39, v118);
                            if (!CMTagCollectionContainsTagsOfCollection(v120, v116))
                            {
                              break;
                            }

                            if ((v119 & 1) == 0)
                            {
                              goto LABEL_240;
                            }

                            v119 = 0;
                            v100 = v117 - 1 == v118++;
                            if (v100)
                            {
                              goto LABEL_238;
                            }
                          }

                          ++v118;
                        }

                        while (v117 != v118);
                        if (v119)
                        {
                          break;
                        }

LABEL_238:
                        if (++v114 == CountOfDataChannels)
                        {
                          v108 = 0;
                          v228[16] = 1;
                          v107 = idxb + 1;
                          if (idxb + 1 != v226)
                          {
                            goto LABEL_219;
                          }

                          goto LABEL_246;
                        }
                      }
                    }

LABEL_240:
                    ;
                  }
                }
              }

              v228[16] = 0;
              v107 = idxb + 1;
            }

            while (idxb + 1 != v226);
            if ((v224 & 1) == 0)
            {
LABEL_246:
              if (v262 <= 4 && ((1 << v262) & 0x1A) != 0)
              {
                if (dword_1EAF17790)
                {
                  LODWORD(taggedBufferGroup) = 0;
                  type[0] = OS_LOG_TYPE_DEFAULT;
                  v121 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  v122 = taggedBufferGroup;
                  if (os_log_type_enabled(v121, type[0]))
                  {
                    v123 = v122;
                  }

                  else
                  {
                    v123 = v122 & 0xFFFFFFFE;
                  }

                  if (v123)
                  {
                    v124 = "Separate Stereo Video";
                    if (v262 == 4)
                    {
                      v124 = "Stereo TestIPB";
                    }

                    *(&time2.value + 4) = "vq_createVideoRenderPipeline";
                    LODWORD(time2.value) = 136315650;
                    if (v262 == 1)
                    {
                      v125 = "Stereo MV-HEVC";
                    }

                    else
                    {
                      v125 = v124;
                    }

                    LOWORD(time2.flags) = 2048;
                    *(&time2.flags + 2) = a1;
                    HIWORD(time2.epoch) = 2082;
                    v277 = v125;
                    _os_log_send_and_compose_impl();
                  }

                  fig_log_call_emit_and_clean_up_after_send_and_compose();
                }

                formatDescriptiona = 1;
              }
            }
          }
        }
      }
    }
  }

  *&block.value = *"ARGB";
  LODWORD(time2.value) = 0;
  LODWORD(taggedBufferGroup) = 0;
  FigGetAlignmentForIOSurfaceOutput();
  updated = FPSupport_CreateDestinationPixelBufferAttributes(0, 0, &block, 0, 2, 1, time2.value, taggedBufferGroup, 0, &theDict);
  if (updated)
  {
    goto LABEL_459;
  }

  if (!theDict || (v126 = CFDictionaryCreateMutableCopy(allocator, 0, theDict), (v127 = v126) == 0))
  {
    updated = FigSignalErrorAtGM();
    if (!updated)
    {
      goto LABEL_271;
    }

LABEL_459:
    v222 = 0;
    v223 = 0;
    v225 = 0;
    v227 = 0;
    idxa = 0;
    v244 = 0;
    v220 = 0;
    goto LABEL_379;
  }

  CFDictionarySetValue(v126, *MEMORY[0x1E69660D0], value);
  if (theDict)
  {
    CFRelease(theDict);
  }

  theDict = v127;
LABEL_271:
  v227 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v227)
  {
    vq_EnqueueFrame_cold_10(&block);
    v222 = 0;
    v223 = 0;
    v225 = 0;
    v227 = 0;
    idxa = 0;
    v244 = 0;
    v220 = 0;
    goto LABEL_119;
  }

  if (*(v252 + 856))
  {
    v223 = CFStringCreateWithCString(allocator, v252 + 856, 0x600u);
    FigCFDictionarySetValue();
  }

  else
  {
    v223 = 0;
  }

  time2.value = sbufPTS.value;
  flags = sbufPTS.flags;
  time2.timescale = sbufPTS.timescale;
  epoch = sbufPTS.epoch;
  taggedBufferGroup = sbufDuration.value;
  v130 = sbufDuration.flags;
  timescale = sbufDuration.timescale;
  v131 = sbufDuration.epoch;
  v222 = CFDictionaryCreateMutable(allocator, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if ((flags & 0x1D) == 1)
  {
    block.value = time2.value;
    block.timescale = time2.timescale;
    block.flags = flags;
    block.epoch = epoch;
    FigCFDictionarySetCMTime();
  }

  if ((v130 & 0x1D) == 1)
  {
    block.value = taggedBufferGroup;
    block.timescale = timescale;
    block.flags = v130;
    block.epoch = v131;
    FigCFDictionarySetCMTime();
  }

  if (v223)
  {
    CFDictionarySetValue(v222, @"LoggingID", v223);
  }

  v220 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (*(v252 + 648))
  {
    CFDictionarySetValue(v220, *MEMORY[0x1E69841E0], value);
  }

  idxa = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
  v244 = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
  if (*(CMBaseObjectGetDerivedStorage() + 64))
  {
    updated = FigImageQueueCreateForCoreAnimationWithOptions(0, *(v252 + 6), v227, &v265);
    if (updated)
    {
      goto LABEL_462;
    }

    v132 = *(v252 + 71);
    if (v132)
    {
      v133 = FigImageQueueGetFigBaseObject(v265);
      v134 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (!v134)
      {
        v225 = 0;
        goto LABEL_378;
      }

      updated = v134(v133, @"FigImageQueueProperty_Timebase", v132);
      if (updated)
      {
LABEL_462:
        v225 = 0;
        goto LABEL_379;
      }
    }

    CFArrayAppendValue(idxa, v265);
    if (formatDescriptiona)
    {
      v135 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      FigCFDictionarySetInt32();
      CFArrayAppendValue(v244, v135);
      if (v135)
      {
        CFRelease(v135);
      }
    }

    else
    {
      CFArrayAppendValue(v244, *MEMORY[0x1E695E738]);
    }
  }

  if (*(v252 + 33))
  {
    v225 = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
    v136 = *(v252 + 33);
    if (v136)
    {
      v137 = CFArrayGetCount(v136);
    }

    else
    {
      v137 = 0;
    }

    v138 = *(v252 + 34);
    if (v138)
    {
      v139 = CFArrayGetCount(v138);
    }

    else
    {
      v139 = 0;
    }

    if (v137 >= 1)
    {
      v140 = 0;
      v141 = *MEMORY[0x1E695E738];
      while (1)
      {
        v142 = CFArrayGetValueAtIndex(*(v252 + 33), v140);
        updated = FigImageQueueCreateForCoreVideoWithOptions(allocator, v227, &v264);
        if (updated)
        {
          goto LABEL_379;
        }

        v143 = v264;
        v144 = *(v252 + 71);
        v145 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (!v145)
        {
          break;
        }

        updated = v145(v143, v142, v144);
        if (updated)
        {
          goto LABEL_379;
        }

        CFArrayAppendValue(v225, v264);
        CFArrayAppendValue(idxa, v264);
        if (v264)
        {
          CFRelease(v264);
          v264 = 0;
        }

        v146 = v141;
        if (v140 < v139)
        {
          v146 = CFArrayGetValueAtIndex(*(v252 + 34), v140);
        }

        if (formatDescriptiona)
        {
          if (v141 == v146)
          {
            v147 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          }

          else
          {
            v147 = FigCFDictionaryCreateMutableCopy();
          }

          v148 = v147;
          FigCFDictionarySetInt32();
          CFArrayAppendValue(v244, v148);
          if (v148)
          {
            CFRelease(v148);
          }
        }

        else
        {
          CFArrayAppendValue(v244, v146);
        }

        if (v137 == ++v140)
        {
          goto LABEL_318;
        }
      }

LABEL_378:
      updated = 4294954514;
      goto LABEL_379;
    }
  }

  else
  {
    v225 = 0;
  }

LABEL_318:
  if (!*(v252 + 36))
  {
LABEL_360:
    if (formatDescriptiona)
    {
      *(v252 + 705) = 1;
    }

    FigCFArrayApplyFunction();
    updated = FigVideoRenderPipelineCreateWithFigImageQueueArray(allocator, v220, theDict, 0, 1, idxa, v244, v222, &v263);
    if (updated)
    {
      goto LABEL_379;
    }

    if (v216)
    {
      v170 = FigRenderPipelineGetFigBaseObject(v263);
      v171 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (!v171)
      {
        goto LABEL_378;
      }

      updated = v171(v170, @"ClientPID", v216);
      if (updated)
      {
        goto LABEL_379;
      }
    }

    v172 = FigRenderPipelineGetFigBaseObject(v263);
    v173 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v173)
    {
      v173(v172, @"VideoEnqueueResetsSystemSleepTimer", value);
    }

    updated = vq_updateSidebandVideoPropertiesLookupIDForFormatDescription(a1, v263, values);
    if (!updated)
    {
      v174 = *(v252 + 7);
      v175 = v265;
      *(v252 + 7) = v265;
      if (v175)
      {
        CFRetain(v175);
      }

      if (v174)
      {
        CFRelease(v174);
      }

      v176 = *(v252 + 35);
      *(v252 + 35) = v225;
      if (v225)
      {
        CFRetain(v225);
      }

      if (v176)
      {
        CFRelease(v176);
      }

      updated = 0;
      *(DerivedStorage + 376) = v263;
      v263 = 0;
    }

    goto LABEL_379;
  }

  v150 = *MEMORY[0x1E6960680];
  v149 = *(MEMORY[0x1E6960680] + 8);
  v151 = *MEMORY[0x1E6960648];
  v152 = *(MEMORY[0x1E6960648] + 8);
  v153 = MEMORY[0x1E6960630];
  time2.value = 0;
  v230 = *MEMORY[0x1E6960630];
  *&block.value = *MEMORY[0x1E6960630];
  v212 = v152;
  v213 = v151;
  if (!v39)
  {
    v163 = v151;
LABEL_345:
    v164 = *(v252 + 36);
    if (v164)
    {
      v165 = CFArrayGetCount(v164);
      if (v165 >= 1)
      {
        v166 = 0;
        v209 = *(MEMORY[0x1E6960690] + 8);
        v211 = *MEMORY[0x1E6960690];
        v206 = *(MEMORY[0x1E69606A0] + 8);
        v208 = *MEMORY[0x1E69606A0];
        v231 = *MEMORY[0x1E6960698];
        tag2a = *(MEMORY[0x1E6960698] + 8);
        v204 = *(MEMORY[0x1E6960688] + 8);
        v205 = *MEMORY[0x1E6960688];
        while (1)
        {
          v167 = CFArrayGetValueAtIndex(*(v252 + 36), v166);
          v168 = CFArrayGetValueAtIndex(*(v252 + 37), v166);
          CFArrayRemoveAllValues(v168[3]);
          CFArrayRemoveAllValues(v168[4]);
          if (formatDescriptiona)
          {
            if (*(v168 + 16))
            {
              updated = vq_createFigImageQueueAndTagsForVideoTargetAndAppendToArraysAndTargetInfo(a1, v167, v211, v209, v218, idxa, v244, v168, v150, v149, v163, v152);
              if (updated)
              {
                goto LABEL_379;
              }

              FigImageQueueAndTagsForVideoTargetAndAppendToArraysAndTargetInfo = vq_createFigImageQueueAndTagsForVideoTargetAndAppendToArraysAndTargetInfo(a1, v167, v208, v206, v217, idxa, v244, v168, v150, v149, v163, v152);
            }

            else
            {
              FigImageQueueAndTagsForVideoTargetAndAppendToArraysAndTargetInfo = vq_createFigImageQueueAndTagsForVideoTargetAndAppendToArraysAndTargetInfo(a1, v167, v231, tag2a, v221, idxa, v244, v168, v150, v149, v213, v212);
            }
          }

          else if (v262 == 2)
          {
            FigImageQueueAndTagsForVideoTargetAndAppendToArraysAndTargetInfo = *(v168 + 16) ? vq_createFigImageQueueAndTagsForVideoTargetAndAppendToArraysAndTargetInfo(a1, v167, v205, v204, -1, idxa, v244, v168, v150, v149, v163, v152) : vq_createFigImageQueueAndTagsForVideoTargetAndAppendToArraysAndTargetInfo(a1, v167, v231, tag2a, -1, idxa, v244, v168, v150, v149, v213, v212);
          }

          else
          {
            FigImageQueueAndTagsForVideoTargetAndAppendToArraysAndTargetInfo = vq_createFigImageQueueAndTagsForVideoTargetAndAppendToArraysAndTargetInfo(a1, v167, v231, tag2a, -1, idxa, v244, v168, v150, v149, v163, v152);
          }

          updated = FigImageQueueAndTagsForVideoTargetAndAppendToArraysAndTargetInfo;
          if (FigImageQueueAndTagsForVideoTargetAndAppendToArraysAndTargetInfo)
          {
            goto LABEL_379;
          }

          if (v165 == ++v166)
          {
            goto LABEL_360;
          }
        }
      }
    }

    goto LABEL_360;
  }

  v154 = CFArrayGetCount(v39);
  if (v154 < 1)
  {
    v163 = v213;
    goto LABEL_345;
  }

  v155 = 0;
  v156 = 0;
  v157 = 0;
  v158 = *v153;
  v159 = v153[1];
  v207.value = v159;
  v210 = *v153;
  *&v207.category = *v153;
  tag2 = v159;
  while (1)
  {
    v160 = CFArrayGetValueAtIndex(v39, v155);
    time2.value = 0;
    *&block.value = v230;
    CMTagCollectionGetTagsWithCategory(v160, kCMTagCategory_ProjectionType, &block, 1, &time2.value);
    if (time2.value == 1)
    {
      *&v296.category = v158;
      v296.value = v159;
      if (!CMTagEqualToTag(*&block.value, v296))
      {
        *&v161.category = block.value;
        if (v157)
        {
          v161.value = *&block.timescale;
          *&v297.category = v210;
          v297.value = tag2;
          if (!CMTagEqualToTag(v161, v297))
          {
            goto LABEL_463;
          }

          v157 = 1;
        }

        else
        {
          v157 = 1;
          tag2 = *&block.timescale;
          v210 = block.value;
        }
      }
    }

    time2.value = 0;
    *&block.value = v230;
    CMTagCollectionGetTagsWithCategory(v160, kCMTagCategory_PackingType, &block, 1, &time2.value);
    if (time2.value == 1)
    {
      *&v298.category = v158;
      v298.value = v159;
      if (!CMTagEqualToTag(*&block.value, v298))
      {
        break;
      }
    }

LABEL_334:
    if (v154 == ++v155)
    {
      if (v157)
      {
        v150 = v210;
        v149 = tag2;
      }

      if (v156)
      {
        v163 = *&v207.category;
      }

      else
      {
        v163 = v213;
      }

      if (v156)
      {
        v152 = v207.value;
      }

      else
      {
        v152 = v212;
      }

      goto LABEL_345;
    }
  }

  *&v162.category = block.value;
  if (!v156)
  {
    v156 = 1;
    v207 = *&block.value;
    goto LABEL_334;
  }

  v162.value = *&block.timescale;
  if (CMTagEqualToTag(v162, v207))
  {
    v156 = 1;
    goto LABEL_334;
  }

LABEL_463:
  updated = FigSignalErrorAtGM();
  v152 = v212;
  v163 = v213;
  if (!updated)
  {
    goto LABEL_345;
  }

LABEL_379:
  if (v265)
  {
    CFRelease(v265);
  }

  if (v264)
  {
    CFRelease(v264);
  }

  if (v225)
  {
    CFRelease(v225);
  }

  FigSimpleMutexUnlock();
  if (idxa)
  {
    CFRelease(idxa);
  }

  if (v244)
  {
    CFRelease(v244);
  }

  if (v263)
  {
    CFRelease(v263);
  }

  if (v222)
  {
    CFRelease(v222);
  }

  if (v220)
  {
    CFRelease(v220);
  }

  if (theDict)
  {
    CFRelease(theDict);
  }

  if (v39)
  {
    CFRelease(v39);
  }

  if (v219)
  {
    CFRelease(v219);
  }

  if (v223)
  {
    CFRelease(v223);
  }

  if (v227)
  {
    CFRelease(v227);
  }

  value_low = updated;
  if (updated)
  {
    goto LABEL_439;
  }

  CMBaseObjectGetDerivedStorage();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  value_low = FigStartForwardingMediaServicesProcessDeathNotification();
  if (value_low)
  {
    goto LABEL_439;
  }

  vq_updateForCurrentTimebaseRate(a1);
  v177 = FigRenderPipelineGetFigBaseObject(*(DerivedStorage + 376));
  v178 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v178)
  {
    goto LABEL_438;
  }

  value_low = v178(v177, @"SourceSampleBufferQueue", *MEMORY[0x1E695E480], DerivedStorage + 384);
  if (value_low)
  {
    goto LABEL_439;
  }

  v179 = FigRenderPipelineGetFigBaseObject(*(DerivedStorage + 376));
  v180 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v180)
  {
    v180(v179, @"ObeyEmptyMediaMarkers", value);
  }

  v181 = FigRenderPipelineGetFigBaseObject(*(DerivedStorage + 376));
  VTable = CMBaseObjectGetVTable();
  v183 = *MEMORY[0x1E695E4C0];
  v184 = *(*(VTable + 8) + 56);
  if (v184)
  {
    v184(v181, @"RenderEmptyMedia", v183);
  }

  v185 = *(DerivedStorage + 408);
  if (v185)
  {
    v186 = FigRenderPipelineGetFigBaseObject(*(DerivedStorage + 376));
    v187 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v187)
    {
      v187(v186, @"VideoDecoderUsage", v185);
    }
  }

  if (*(DerivedStorage + 416))
  {
    v188 = value;
  }

  else
  {
    v188 = v183;
  }

  v189 = FigRenderPipelineGetFigBaseObject(*(DerivedStorage + 376));
  v190 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v190)
  {
    v190(v189, @"ForceFullPowerDecode", v188);
  }

  if (*(DerivedStorage + 417))
  {
    if (*(DerivedStorage + 418))
    {
      v183 = value;
    }

    v191 = FigRenderPipelineGetFigBaseObject(*(DerivedStorage + 376));
    v192 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v192)
    {
      v192(v191, @"PreventDisplaySleepDuringVideoPlayback", v183);
    }
  }

  v193 = *(DerivedStorage + 384);
  block = *(DerivedStorage + 432);
  value_low = CMBufferQueueInstallTrigger(v193, vq_sourceSampleBufferQueue_reachedLowWater, a1, 2, &block, (DerivedStorage + 496));
  if (value_low)
  {
    goto LABEL_439;
  }

  value_low = CMBufferQueueInstallTriggerWithIntegerThreshold(*(DerivedStorage + 384), vq_sourceSampleBufferQueue_becameEmpty, a1, 10, 1, (DerivedStorage + 488));
  if (value_low)
  {
    goto LABEL_439;
  }

  if (!*(DerivedStorage + 568))
  {
LABEL_436:
    v197 = *(DerivedStorage + 576);
    v198 = FigRenderPipelineGetFigBaseObject(*(DerivedStorage + 376));
    v199 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    v32 = DerivedStorage;
    if (v199)
    {
      v199(v198, @"PlaybackSessionID", v197);
      v32 = DerivedStorage;
    }

    goto LABEL_24;
  }

  if (*(CMBaseObjectGetDerivedStorage() + 64))
  {
    FigSimpleMutexLock();
    value_low = FigLayerSynchronizerCreate((DerivedStorage + 248));
    if (value_low)
    {
      FigSimpleMutexUnlock();
      goto LABEL_439;
    }

    FigLayerSynchronizerSetCompensateForDisplayLatency(*(DerivedStorage + 248), *(DerivedStorage + 239));
    FigSimpleMutexUnlock();
    value_low = vq_setSynchronizedLayers();
    if (value_low)
    {
      goto LABEL_439;
    }

    CFRetain(*(DerivedStorage + 8));
    value_low = FigSyncMomentSourceCreateWithDispatchQueueAndDestructor(vq_synchronizeLayerToMoment, *(DerivedStorage + 8), vq_ReleaseWeakReferenceToSelf, *(DerivedStorage + 568), *(DerivedStorage + 536), (DerivedStorage + 256));
    if (value_low)
    {
      goto LABEL_439;
    }
  }

  v194 = *(DerivedStorage + 568);
  v195 = FigRenderPipelineGetFigBaseObject(*(DerivedStorage + 376));
  v196 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v196)
  {
LABEL_438:
    value_low = 4294954514;
    goto LABEL_439;
  }

  value_low = v196(v195, @"Timebase", v194);
  if (!value_low)
  {
    goto LABEL_436;
  }

LABEL_439:
  FigSimpleMutexUnlock();
  if (value_low)
  {
LABEL_440:
    LODWORD(sbufPTS.value) = 0;
    LOBYTE(sbufDuration.value) = 0;
    v200 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v201 = sbufPTS.value;
    if (os_log_type_enabled(v200, sbufDuration.value))
    {
      v202 = v201;
    }

    else
    {
      v202 = v201 & 0xFFFFFFFE;
    }

    if (v202)
    {
      LODWORD(time2.value) = 136315906;
      *(&time2.value + 4) = "vq_EnqueueFrame";
      LOWORD(time2.flags) = 2048;
      *(&time2.flags + 2) = a1;
      HIWORD(time2.epoch) = 2048;
      v277 = sbuf;
      v278 = 1024;
      LODWORD(v279) = value_low;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_446:
  if (sBufOut)
  {
    CFRelease(sBufOut);
  }

  return value_low;
}

void sub_19678AAA4(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x200], 8);
  _Block_object_dispose(&STACK[0x260], 8);
  _Unwind_Resume(a1);
}

uint64_t vq_EnqueueH264FrameWithTimingInfoBaggage(uint64_t a1, int a2, int a3, const __CFData *a4, OpaqueCMBlockBuffer *a5, uint64_t a6, uint64_t a7, const void *a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  memset(&sampleTimingArray, 0, sizeof(sampleTimingArray));
  target = 0;
  sampleSizeArray = 0;
  if (*DerivedStorage)
  {

    return FigSignalErrorAtGM();
  }

  *(DerivedStorage + 560) = 1;
  v34 = (DerivedStorage + 360);
  v35 = *(DerivedStorage + 360);
  if (!v35)
  {
LABEL_19:
    if (!a4)
    {
      goto LABEL_9;
    }

LABEL_20:
    if (*v34)
    {
      v39 = *MEMORY[0x1E695E480];
    }

    else
    {
      CFDataGetLength(a4);
      CFDataGetBytePtr(a4);
      v39 = *MEMORY[0x1E695E480];
      v40 = FigVideoFormatDescriptionCreateWithSampleDescriptionExtensionAtom();
      if (v40)
      {
        goto LABEL_29;
      }
    }

    *&sampleTimingArray.duration.value = *MEMORY[0x1E6960C70];
    sampleTimingArray.duration.epoch = *(MEMORY[0x1E6960C70] + 16);
    sampleTimingArray.decodeTimeStamp = sampleTimingArray.duration;
    CMClockMakeHostTimeFromSystemUnits(&sampleTimingArray.presentationTimeStamp, a6);
    sampleSizeArray = CMBlockBufferGetDataLength(a5);
    v40 = CMSampleBufferCreate(v39, a5, 1u, 0, 0, *v34, 1, 1, &sampleTimingArray, 1, &sampleSizeArray, &target);
    if (!v40)
    {
      if (a8)
      {
        CMSetAttachment(target, *MEMORY[0x1E6960478], a8, 1u);
      }

      v41 = target;
      v42 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (!v42)
      {
        v36 = 4294954514;
        goto LABEL_30;
      }

      v40 = v42(a1, v41, a7, a9, a10, a11, a12, a13, a14, a15, a16);
    }

LABEL_29:
    v36 = v40;
    goto LABEL_30;
  }

  if (CMVideoFormatDescriptionGetDimensions(v35).width != a2 || CMVideoFormatDescriptionGetDimensions(*v34).height != a3)
  {
LABEL_17:
    if (*v34)
    {
      CFRelease(*v34);
      *v34 = 0;
    }

    goto LABEL_19;
  }

  if (a4)
  {
    if (*v34)
    {
      Extension = CMFormatDescriptionGetExtension(*v34, *MEMORY[0x1E69600A0]);
      if (Extension)
      {
        TypeID = CFDictionaryGetTypeID();
        if (TypeID == CFGetTypeID(Extension))
        {
          Value = CFDictionaryGetValue(Extension, @"avcC");
          if (Value)
          {
            v44 = CFArrayGetTypeID();
            if (v44 == CFGetTypeID(Value))
            {
              CFArrayGetValueAtIndex(Value, 0);
            }
          }
        }
      }
    }

    if (FigCFEqual())
    {
      goto LABEL_20;
    }

    goto LABEL_17;
  }

LABEL_9:
  vq_EnqueueH264FrameWithTimingInfoBaggage_cold_1(v48);
  v36 = v48[0];
LABEL_30:
  if (target)
  {
    CFRelease(target);
  }

  return v36;
}

uint64_t vq_Flush(uint64_t a1, char a2)
{
  cf[16] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  target = 0;
  values = 0;
  if (*DerivedStorage)
  {

    return FigSignalErrorAtGM();
  }

  v6 = DerivedStorage;
  FigSimpleMutexLock();
  v7 = *(v6 + 42);
  if (v7 && CFArrayGetCount(v7) >= 1)
  {
    CFArrayRemoveAllValues(*(v6 + 42));
  }

  if (*(v6 + 48))
  {
    ++v6[100];
    v8 = *MEMORY[0x1E695E480];
    values = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, v6 + 100);
    v9 = CFDictionaryCreate(v8, MEMORY[0x1E6960580], &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v10 = CMSampleBufferCreate(v8, 0, 1u, 0, 0, 0, 0, 0, 0, 0, 0, &target);
    if (v10)
    {
      v18 = v10;
      goto LABEL_40;
    }

    CMSetAttachment(target, *MEMORY[0x1E6960518], values, 1u);
    if ((a2 & 2) != 0)
    {
      Mutable = CFDictionaryCreateMutable(v8, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      CFDictionaryAddValue(Mutable, @"videoQueueFlushSBuf", *MEMORY[0x1E695E4D0]);
      CMSetAttachment(target, *MEMORY[0x1E6960500], Mutable, 1u);
      if (Mutable)
      {
        CFRelease(Mutable);
      }
    }

    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    CMBufferQueueEnqueue(*(v6 + 48), target);
    if (a2)
    {
      if (*(v6 + 3) && !*(v6 + 32))
      {
        if (dword_1EAF17790)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        cf[0] = 0;
        v13 = CMBaseObjectGetDerivedStorage();
        if (!FigDeferredTransactionCreate(v8, cf))
        {
          FPSupport_AppendDeferredTransactionChangeForHidingLayer(cf[0], *(v13 + 24), "vq_hideMaskingLayer");
          FigDeferredTransactionCommit(cf[0], 0);
          *(v13 + 32) = 1;
        }

        if (cf[0])
        {
          CFRelease(cf[0]);
        }
      }

      if (*(v6 + 6) && *(v6 + 649))
      {
        CAImageQueueFlush();
      }

      FigSimpleMutexLock();
      for (i = 0; ; ++i)
      {
        Count = *(v6 + 37);
        if (Count)
        {
          Count = CFArrayGetCount(Count);
        }

        if (i >= Count)
        {
          break;
        }

        ValueAtIndex = CFArrayGetValueAtIndex(*(v6 + 37), i);
        if (CFArrayGetCount(ValueAtIndex[3]) >= 1)
        {
          v17 = 0;
          do
          {
            cf[0] = 0;
            VideoTargetInfoCopyCAImageQueueAtIndex(ValueAtIndex, v17, cf);
            if (cf[0])
            {
              CAImageQueueFlush();
              CFRelease(cf[0]);
            }

            ++v17;
          }

          while (v17 < CFArrayGetCount(ValueAtIndex[3]));
        }
      }

      FigSimpleMutexUnlock();
    }
  }

  else
  {
    if ((a2 & 2) != 0)
    {
      vq_safelyPostNotification(a1, @"FlushComplete", 0);
    }

    v9 = 0;
  }

  vq_Flush_cold_1();
  v18 = 0;
LABEL_40:
  FigSimpleMutexUnlock();
  if (values)
  {
    CFRelease(values);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (target)
  {
    CFRelease(target);
  }

  return v18;
}

BOOL vq_IsAboveHighWaterLevel()
{
  v9 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 384);
  if (v1)
  {
    v2 = *(DerivedStorage + 480);
    if (v2 == 1)
    {
      if (CMBufferQueueGetBufferCount(v1) > 0)
      {
        return 1;
      }
    }

    else if (!v2)
    {
      CMBufferQueueGetDuration(&time1, v1);
      value = time1.value;
      timescale = time1.timescale;
      if (time1.flags)
      {
        time1.value = value;
        time1.timescale = timescale;
        v5 = *(DerivedStorage + 456);
        if (CMTimeCompare(&time1, &v5) > 0)
        {
          return 1;
        }
      }
    }
  }

  v3 = CMBaseObjectGetDerivedStorage();
  return *(v3 + 328) && !*(v3 + 344) && !*(v3 + 376);
}

uint64_t vq_EnqueueFrameWithFormatDescriptionAndTimingInfoBaggage(uint64_t a1, uint64_t a2, OpaqueCMBlockBuffer *a3, uint64_t a4, uint64_t a5, const void *a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  memset(&sampleTimingArray, 0, sizeof(sampleTimingArray));
  target = 0;
  sampleSizeArray = 0;
  if (*DerivedStorage)
  {

    return FigSignalErrorAtGM();
  }

  if (!a3)
  {
    vq_EnqueueFrameWithFormatDescriptionAndTimingInfoBaggage_cold_2(&v37);
    goto LABEL_24;
  }

  v30 = DerivedStorage;
  *(DerivedStorage + 560) = 1;
  v31 = MEMORY[0x1E695E480];
  if (a2)
  {
    v37 = 0;
    FormatDescriptionFromSerializedAtomDataBlockBuffer = FigRemote_CreateFormatDescriptionFromSerializedAtomDataBlockBuffer();
    if (!FormatDescriptionFromSerializedAtomDataBlockBuffer)
    {
      v33 = *(v30 + 368);
      if (v33)
      {
        CFRelease(v33);
      }

      *(v30 + 368) = v37;
      goto LABEL_22;
    }
  }

  else
  {
    if (!*(DerivedStorage + 368))
    {
LABEL_22:
      vq_EnqueueFrameWithFormatDescriptionAndTimingInfoBaggage_cold_1(&v37);
LABEL_24:
      v36 = v37;
      goto LABEL_18;
    }

    *&sampleTimingArray.duration.value = *MEMORY[0x1E6960C70];
    sampleTimingArray.duration.epoch = *(MEMORY[0x1E6960C70] + 16);
    sampleTimingArray.decodeTimeStamp = sampleTimingArray.duration;
    CMClockMakeHostTimeFromSystemUnits(&sampleTimingArray.presentationTimeStamp, a4);
    sampleSizeArray = CMBlockBufferGetDataLength(a3);
    FormatDescriptionFromSerializedAtomDataBlockBuffer = CMSampleBufferCreate(*v31, a3, 1u, 0, 0, *(v30 + 368), 1, 1, &sampleTimingArray, 1, &sampleSizeArray, &target);
    if (!FormatDescriptionFromSerializedAtomDataBlockBuffer)
    {
      if (a6)
      {
        CMSetAttachment(target, *MEMORY[0x1E6960478], a6, 1u);
      }

      v34 = target;
      v35 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (!v35)
      {
        v36 = 4294954514;
        goto LABEL_18;
      }

      FormatDescriptionFromSerializedAtomDataBlockBuffer = v35(a1, v34, a5, a7, a8, a9, a10, a11, a12, a13, a14);
    }
  }

  v36 = FormatDescriptionFromSerializedAtomDataBlockBuffer;
LABEL_18:
  if (target)
  {
    CFRelease(target);
  }

  return v36;
}

uint64_t vq_RequestDecodeForPreroll(uint64_t a1, void *a2)
{
  values = a2;
  v4 = *(CMBaseObjectGetDerivedStorage() + 376);
  if (v4)
  {
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (v5)
    {

      return v5(v4, a2);
    }

    else
    {
      return 4294954514;
    }
  }

  else
  {
    if (a2)
    {
      v7 = CFDictionaryCreate(*MEMORY[0x1E695E480], kFigVideoQueueNotificationParameter_RequestID, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      vq_safelyPostNotification(a1, @"CompletedDecodeForPreroll", v7);
      if (v7)
      {
        CFRelease(v7);
      }
    }

    else
    {
      vq_safelyPostNotification(a1, @"CompletedDecodeForPreroll", 0);
    }

    return 0;
  }
}

void vq_sourceSampleBufferQueue_reachedLowWater(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage && !DerivedStorage[120])
  {

    vq_safelyPostNotification(a1, @"VideoQueueNowBelowLowWaterLevel", 0);
  }
}

double vq_sourceSampleBufferQueue_becameEmpty(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  memset(&v8, 0, sizeof(v8));
  HostTimeClock = CMClockGetHostTimeClock();
  CMClockGetTime(&v8, HostTimeClock);
  memset(&v7, 0, sizeof(v7));
  lhs = v8;
  v5 = *(DerivedStorage + 796);
  CMTimeSubtract(&v7, &lhs, &v5);
  vq_safelyPostNotification(a1, @"VideoQueueNowBelowLowWaterLevel", 0);
  if ((*(DerivedStorage + 808) & 1) == 0 || (lhs = v7, v5 = *(DerivedStorage + 820), (CMTimeCompare(&lhs, &v5) & 0x80000000) == 0))
  {
    *&result = vq_sourceSampleBufferQueue_becameEmpty_cold_1(a1, (DerivedStorage + 796), &v8).n128_u64[0];
  }

  return result;
}

void vq_synchronizeLayerToMoment(uint64_t a1, uint64_t a2)
{
  v3 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v3)
  {
    v4 = v3;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (!*DerivedStorage)
    {
      v6 = DerivedStorage;
      FigSimpleMutexLock();
      v7 = *(v6 + 31);
      if (v7)
      {
        FigLayerSynchronizerSynchronizeToMoment(v7, a2, 0);
      }

      FigSimpleMutexUnlock();
    }

    CFRelease(v4);
  }
}

uint64_t vq_updateSidebandVideoPropertiesLookupIDForFormatDescription(uint64_t a1, uint64_t a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 312) == a3)
  {
    return 0;
  }

  v6 = DerivedStorage;
  if (FigCFEqual())
  {
    return 0;
  }

  v7 = *(v6 + 312);
  *(v6 + 312) = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  *(v6 + 320) = MTSidebandVideoPropertiesAcquireNextAvailableSidebandVideoPropertiesLookupID();
  v8 = CMBaseObjectGetDerivedStorage();
  newMutableCollectionCopyOut = 0;
  v36 = 0;
  values = 0;
  cf = 0;
  v9 = *(v8 + 288);
  v10 = MEMORY[0x1E695E480];
  if (!v9 || (Count = CFArrayGetCount(v9), Count < 1))
  {
    v13 = 0;
    Mutable = 0;
    goto LABEL_37;
  }

  v11 = *v10;
  v12 = MTSidebandVideoPropertiesCreateMutableFromFormatDescription(v11, *(v8 + 312), &values);
  if (v12)
  {
    Mutable = v12;
    v13 = 0;
LABEL_36:
    v10 = MEMORY[0x1E695E480];
    goto LABEL_37;
  }

  MTSidebandVideoPropertiesSetLookupID(values, *(v8 + 320));
  v13 = CFArrayCreate(v11, &values, 1, MEMORY[0x1E695E9C0]);
  if (!v13)
  {
    vq_updateSidebandVideoPropertiesLookupIDForFormatDescription_cold_1(&v37);
    Mutable = v37;
    goto LABEL_36;
  }

  v31 = a2;
  v14 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(v8 + 288), v14);
    v16 = CFArrayGetValueAtIndex(*(v8 + 296), v14);
    v17 = FigDataChannelConfigurationCreate(v11, 0, &cf);
    if (v17)
    {
LABEL_58:
      Mutable = v17;
      goto LABEL_35;
    }

    if (CFArrayGetCount(v16[3]) >= 1)
    {
      break;
    }

LABEL_27:
    v25 = cf;
    v26 = *(*(CMBaseObjectGetVTable() + 16) + 72);
    if (!v26)
    {
      Mutable = 4294954514;
      goto LABEL_35;
    }

    v17 = v26(ValueAtIndex, v25);
    if (v17)
    {
      goto LABEL_58;
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (++v14 == Count)
    {
      Mutable = 0;
LABEL_35:
      a2 = v31;
      goto LABEL_36;
    }
  }

  v18 = 0;
  while (1)
  {
    VideoTargetInfoCopyFigImageQueueAtIndex(v16, v18, &v36);
    v19 = FigCFArrayGetValueAtIndex();
    if (v19)
    {
      v20 = CFRetain(v19);
    }

    else
    {
      v20 = 0;
    }

    v21 = CMTagCollectionCreateMutableCopy(v20, v11, &newMutableCollectionCopyOut);
    if (v21)
    {
      Mutable = v21;
      v23 = v36;
      goto LABEL_54;
    }

    v22 = newMutableCollectionCopyOut;
    v38 = CMTagMakeWithSInt64Value(kCMTagCategory_ChannelID, ++v18);
    CMTagCollectionAddTag(v22, v38);
    v23 = v36;
    v24 = FigDataChannelConfigurationAddFigImageQueueWithSidebandVideoProperties(cf, v36, newMutableCollectionCopyOut, 0, v13);
    if (v24)
    {
      break;
    }

    if (newMutableCollectionCopyOut)
    {
      CFRelease(newMutableCollectionCopyOut);
      newMutableCollectionCopyOut = 0;
    }

    if (v23)
    {
      CFRelease(v23);
      v36 = 0;
    }

    if (v20)
    {
      CFRelease(v20);
    }

    if (v18 >= CFArrayGetCount(v16[3]))
    {
      goto LABEL_27;
    }
  }

  Mutable = v24;
LABEL_54:
  a2 = v31;
  v10 = MEMORY[0x1E695E480];
  if (v23)
  {
    CFRelease(v23);
  }

  if (v20)
  {
    CFRelease(v20);
  }

LABEL_37:
  if (newMutableCollectionCopyOut)
  {
    CFRelease(newMutableCollectionCopyOut);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (values)
  {
    CFRelease(values);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(*v10, 1, MEMORY[0x1E6960F10], MEMORY[0x1E695E9E8]);
    FigCFDictionarySetInt16();
    FigBaseObject = FigRenderPipelineGetFigBaseObject(a2);
    v29 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v29)
    {
      v29(FigBaseObject, @"MappingFromFormatDescriptionsToSidebandVideoPropertiesLookupIDs", Mutable);
    }

    if (Mutable)
    {
      CFRelease(Mutable);
      return 0;
    }
  }

  return Mutable;
}

OpaqueCMTaggedBufferGroup *vq_tagCollectionGetLayerIDsIfPresent(opaqueCMSampleBuffer *a1, int64_t *a2, int64_t *a3)
{
  result = CMSampleBufferGetTaggedBufferGroup(a1);
  if (result)
  {
    v6 = result;
    Count = CMTaggedBufferGroupGetCount(result);
    if (Count < 1)
    {
      return 0;
    }

    else
    {
      v8 = Count;
      v18 = a2;
      v19 = a3;
      v20 = 0;
      SInt64Value = 0;
      v9 = 0;
      v10 = 0;
      v22 = 0;
      v11 = 0;
      v12 = *MEMORY[0x1E6960690];
      v13 = *(MEMORY[0x1E6960690] + 8);
      v23 = *MEMORY[0x1E6960630];
      v15 = *MEMORY[0x1E69606A0];
      v14 = *(MEMORY[0x1E69606A0] + 8);
      do
      {
        TagCollectionAtIndex = CMTaggedBufferGroupGetTagCollectionAtIndex(v6, v9);
        tagBuffer = v23;
        numberOfTagsCopied = 0;
        *&v26.category = v12;
        v26.value = v13;
        if (CMTagCollectionContainsTag(TagCollectionAtIndex, v26))
        {
          v10 = 1;
          if (!CMTagCollectionGetTagsWithCategory(TagCollectionAtIndex, kCMTagCategory_VideoLayerID, &tagBuffer, 1, &numberOfTagsCopied) && numberOfTagsCopied == 1)
          {
            SInt64Value = CMTagGetSInt64Value(tagBuffer);
            HIDWORD(v22) = 1;
            v10 = 1;
          }
        }

        *&v27.category = v15;
        v27.value = v14;
        if (CMTagCollectionContainsTag(TagCollectionAtIndex, v27))
        {
          v11 = 1;
          if (!CMTagCollectionGetTagsWithCategory(TagCollectionAtIndex, kCMTagCategory_VideoLayerID, &tagBuffer, 1, &numberOfTagsCopied) && numberOfTagsCopied == 1)
          {
            v20 = CMTagGetSInt64Value(tagBuffer);
            v11 = 1;
            LODWORD(v22) = 1;
          }
        }

        ++v9;
      }

      while (v8 != v9);
      if (v10)
      {
        v17 = v11 == 0;
      }

      else
      {
        v17 = 1;
      }

      result = !v17;
      if (HIDWORD(v22))
      {
        if (v22)
        {
          *v18 = SInt64Value;
          *v19 = v20;
        }
      }
    }
  }

  return result;
}

OpaqueCMTaggedBufferGroup *vq_containsStereoVideoTaggedBufferGroup(opaqueCMSampleBuffer *a1, __CFArray *a2, int *a3)
{
  result = CMSampleBufferGetTaggedBufferGroup(a1);
  if (result)
  {
    v6 = result;
    Count = CMTaggedBufferGroupGetCount(result);
    if (Count < 1)
    {
      v21 = 0;
      result = 0;
    }

    else
    {
      v8 = Count;
      v23 = a3;
      v9 = 0;
      v26 = 0;
      v10 = 0;
      v11 = *MEMORY[0x1E6960640];
      v12 = *(MEMORY[0x1E6960640] + 8);
      v13 = *MEMORY[0x1E6960690];
      v14 = *(MEMORY[0x1E6960690] + 8);
      v24 = *(MEMORY[0x1E69606A0] + 8);
      v25 = *MEMORY[0x1E69606A0];
      do
      {
        TagCollectionAtIndex = CMTaggedBufferGroupGetTagCollectionAtIndex(v6, v9);
        *&v27.category = v11;
        v27.value = v12;
        if (CMTagCollectionContainsTag(TagCollectionAtIndex, v27))
        {
          if (a2)
          {
            CFArrayAppendValue(a2, TagCollectionAtIndex);
          }

          *&v28.category = v13;
          v28.value = v14;
          if (CMTagCollectionContainsTag(TagCollectionAtIndex, v28))
          {
            ++v10;
            LODWORD(v26) = 1;
          }

          else
          {
            v29.value = v24;
            *&v29.category = v25;
            v16 = CMTagCollectionContainsTag(TagCollectionAtIndex, v29);
            if (v16)
            {
              ++v10;
            }

            v17 = HIDWORD(v26);
            if (v16)
            {
              v17 = 1;
            }

            HIDWORD(v26) = v17;
          }
        }

        ++v9;
      }

      while (v8 != v9);
      if (v26)
      {
        v18 = HIDWORD(v26) == 0;
      }

      else
      {
        v18 = 1;
      }

      v19 = v18;
      v18 = v10 == 2;
      v20 = v10 == 2;
      result = (v19 ^ 1u);
      if (v18)
      {
        v21 = v19 ^ 1;
      }

      else
      {
        v21 = 0;
      }

      a3 = v23;
      if ((v19 & 1) == 0 && a2)
      {
        vq_containsStereoVideoTaggedBufferGroup_cold_1(a2);
        result = 1;
        v21 = v20;
      }
    }

    if (a3)
    {
      if (v21)
      {
        v22 = 3;
      }

      else
      {
        v22 = 0;
      }

      *a3 = v22;
    }
  }

  return result;
}

void vq_safelyPostNotification(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v6 = DerivedStorage;
    v7 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v7)
    {
      v8 = v7;
      if (a2)
      {
        CFRetain(a2);
      }

      if (a3)
      {
        CFRetain(a3);
      }

      v9 = *(v6 + 67);
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __vq_safelyPostNotification_block_invoke;
      v10[3] = &__block_descriptor_64_e5_v8__0l;
      v10[4] = v6;
      v10[5] = a2;
      v10[6] = v8;
      v10[7] = a3;
      dispatch_async(v9, v10);
    }
  }
}

void __vq_safelyPostNotification_block_invoke(uint64_t a1)
{
  if (!**(a1 + 32))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
  }

  v2 = *(a1 + 48);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 56);
  if (v4)
  {

    CFRelease(v4);
  }
}

__n128 OUTLINED_FUNCTION_5_113(uint64_t a1)
{
  result = *v2;
  *v1 = *v2;
  v4 = v2[1].n128_u64[0];
  v1[1].n128_u64[0] = v4;
  *(a1 + 796) = result;
  *(a1 + 812) = v4;
  *(a1 + 844) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_6_100()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_10_62(uint64_t result)
{
  *(result + 848) = 0;
  *(result + 744) = 0;
  return result;
}

BOOL OUTLINED_FUNCTION_12_59(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, __int16 a22, char a23, os_log_type_t type, int a25)
{

  return os_log_type_enabled(a1, type);
}

uint64_t figVTTDocumentWriter_RegisterFigVTTDocumentWriterBaseType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigVTTDocumentWriterGetTypeID()
{
  MEMORY[0x19A8D3660](&FigVTTDocumentWriterGetClassID_sRegisterFigVTTDocumentWriterBaseTypeOnce, figVTTDocumentWriter_RegisterFigVTTDocumentWriterBaseType);

  return CMBaseClassGetCFTypeID();
}

uint64_t FigVTTDocumentWriterSetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(a1, a2, a3);
}

uint64_t FigVTTDocumentWriterCopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(a1, a2, a3, a4);
}

uint64_t FigVTTDocumentWriterInvalidate(uint64_t a1)
{
  if (!a1)
  {
    return 4294954516;
  }

  v2 = *(*(CMBaseObjectGetVTable() + 8) + 24);
  if (!v2)
  {
    return 4294954514;
  }

  return v2(a1);
}

uint64_t FigVTTDocumentWriterCreateAndAddNode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(a1, a2, a3, a4);
}

uint64_t FigVTTDocumentWriterFlush(uint64_t a1)
{
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v2)
  {
    return 4294954514;
  }

  return v2(a1);
}

uint64_t RegisterFigVideoQueueType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigVideoQueueGetTypeID()
{
  MEMORY[0x19A8D3660](&FigVideoQueueGetClassID_sRegisterFigVideoQueueTypeOnce, RegisterFigVideoQueueType);

  return CMBaseClassGetCFTypeID();
}

uint64_t FigStreamingRestrictionsGetLatestRestrictions(_DWORD *a1, _DWORD *a2, _DWORD *a3)
{
  if (sr_SetupOnce_sFigStreamingRestrictionsSetupOnce != -1)
  {
    FigStreamingRestrictionsGetLatestRestrictions_cold_1();
  }

  FigSimpleMutexLock();
  if (a1)
  {
    *a1 = qword_1EAF1A270;
  }

  if (a2)
  {
    *a2 = HIDWORD(qword_1EAF1A270);
  }

  if (a3)
  {
    *a3 = dword_1EAF1A278;
  }

  return FigSimpleMutexUnlock();
}

void sr_findPolicyForLevel(const __CFString *a1, uint64_t a2, CFStringRef *a3)
{
  IntValue = CFStringGetIntValue(a1);
  if (*a3)
  {
    v6 = CFStringGetIntValue(*a3);
  }

  else
  {
    v6 = -1;
  }

  if (qword_1ED4CA2B0 >= IntValue && v6 < IntValue)
  {
    v8 = *a3;
    *a3 = a1;
    if (a1)
    {
      CFRetain(a1);
    }

    if (v8)
    {

      CFRelease(v8);
    }
  }
}

uint64_t CreateServedAIGState(void *a1)
{
  v2 = malloc_type_calloc(1uLL, 0x38uLL, 0x10200409C399896uLL);
  if (!v2)
  {
    v5 = 326;
LABEL_6:
    CreateServedAIGState_cold_1(v5, &v6);
    result = v6;
    goto LABEL_3;
  }

  v3 = FigDispatchQueueCreateWithPriority();
  result = 0;
  v2[5] = v3;
  if (!v3)
  {
    v5 = 329;
    goto LABEL_6;
  }

LABEL_3:
  *a1 = v2;
  return result;
}

void DisposeServedAIGState(CFTypeRef *a1)
{
  if (a1)
  {
    v2 = a1[1];
    if (v2)
    {
      FigBaseObject = FigAssetImageGeneratorGetFigBaseObject(v2);
      if (FigBaseObject)
      {
        v4 = FigBaseObject;
        v5 = *(*(CMBaseObjectGetVTable() + 8) + 24);
        if (v5)
        {
          v5(v4);
        }
      }
    }

    if (a1[2])
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      FigStopForwardingMediaServicesProcessDeathNotification();
      v6 = a1[2];
      if (v6)
      {
        CFRelease(v6);
        a1[2] = 0;
      }
    }

    v7 = a1[1];
    if (v7)
    {
      CFRelease(v7);
      a1[1] = 0;
    }

    v8 = a1[5];
    if (v8)
    {
      dispatch_release(v8);
      a1[5] = 0;
      v9 = a1[1];
      if (v9)
      {
        CFRelease(v9);
      }
    }

    if (*a1)
    {
      CFRelease(*a1);
      *a1 = 0;
    }

    v10 = a1[6];
    if (v10)
    {
      os_release(v10);
    }

    free(a1);
  }
}

uint64_t serverXPCAIG_NotificationFilter(int a1, int a2, CFTypeRef cf1, const __CFDictionary *a4, uint64_t a5, void *a6)
{
  result = CFEqual(cf1, @"AIGDidGenerateCGImage");
  if (result)
  {
    Value = CFDictionaryGetValue(a4, @"CGImage");
    if (!Value || serverXPCAIG_AddCGImageToMessage(Value, a6))
    {
      return 1;
    }

    else
    {
      if (FigCFDictionaryGetCMTimeIfPresent())
      {
        FigXPCMessageSetCMTime();
      }

      if (FigCFDictionaryGetInt64IfPresent())
      {
        xpc_dictionary_set_int64(a6, "RequestID", 0);
      }

      return 2;
    }
  }

  return result;
}

uint64_t FigAssetImageGeneratorServerStart()
{
  if (FigServer_IsMediaparserd())
  {
    fig_log_get_emitter();
    return FigSignalErrorAtGM();
  }

  else
  {
    FigServer_IsMediaplaybackd();
    return FigXPCServerStart();
  }
}

void aigXPCServer_interruptionNotificationCallback(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    FigBaseObject = FigAssetImageGeneratorGetFigBaseObject(a2);
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
}

void __HandleAssetImageGeneratorMessage_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2 != 1919250737)
  {
    if (v2 != 1668311405)
    {
      v8 = -16158;
      goto LABEL_19;
    }

    v3 = *(a1 + 40);
    v4 = *(a1 + 56);
    cf = 0;
    v14 = 0;
    v17 = *MEMORY[0x1E6960C70];
    v18 = *(MEMORY[0x1E6960C70] + 16);
    v15 = v17;
    v16 = v18;
    FigXPCMessageGetCMTime();
    v5 = FigXPCMessageCopyCFDictionary();
    if (!v5)
    {
      v6 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (!v6)
      {
        v8 = -12782;
LABEL_15:
        if (cf)
        {
          CFRelease(cf);
        }

        if (v14)
        {
          CFRelease(v14);
        }

        goto LABEL_19;
      }

      v7 = *MEMORY[0x1E695E480];
      v19 = v15;
      v20 = v16;
      v5 = v6(v3, &v19, v14, v7, &cf, &v17);
      if (!v5)
      {
        if (cf)
        {
          v8 = serverXPCAIG_AddCGImageToMessage(cf, v4);
          if (!v8)
          {
            v19 = v17;
            v20 = v18;
            FigXPCMessageSetCMTime();
          }
        }

        else
        {
          __HandleAssetImageGeneratorMessage_block_invoke_cold_1(&v19);
          v8 = v19;
        }

        goto LABEL_15;
      }
    }

    v8 = v5;
    goto LABEL_15;
  }

  v9 = *(a1 + 40);
  v17 = *MEMORY[0x1E6960CC0];
  v18 = *(MEMORY[0x1E6960CC0] + 16);
  FigXPCMessageGetCMTime();
  v10 = FigXPCMessageCopyCFDictionary();
  if (!v10)
  {
    v15 = v17;
    v16 = v18;
    v11 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (!v11)
    {
      v8 = -12782;
      goto LABEL_19;
    }

    v12 = *MEMORY[0x1E695E480];
    v19 = v15;
    v20 = v16;
    v10 = v11(v9, &v19, 0, v12);
  }

  v8 = v10;
LABEL_19:
  *(*(*(a1 + 32) + 8) + 24) = v8;
}

uint64_t weakReferenceTable_CopyPointerFromKey()
{
  MEMORY[0x19A8D3660](&_MergedGlobals_9, weakReferenceTable_OneTimeInitialization);
  if (qword_1EAF1A290)
  {

    return FigCFWeakReferenceTableCopyValue();
  }

  else
  {
    weakReferenceTable_CopyPointerFromKey_cold_1();
    return 0;
  }
}

uint64_t __FigVideoQueueCreateRemoteWithOptions_block_invoke(uint64_t a1, mach_port_t a2, int a3, _DWORD *a4, void *a5, void *a6)
{
  v22 = *MEMORY[0x1E69E9840];
  v20 = 0;
  memset(buffer, 0, sizeof(buffer));
  v12 = getpid();
  proc_name(v12, buffer, 0x20u);
  v13 = *(*(a1 + 32) + 208);
  v14 = dyld_program_sdk_at_least();
  v15 = *(a1 + 40);
  if (v15)
  {
    BytePtr = CFDataGetBytePtr(v15);
    v17 = *(a1 + 40);
    if (v17)
    {
      Length = CFDataGetLength(v17);
      goto LABEL_6;
    }
  }

  else
  {
    BytePtr = 0;
  }

  Length = 0;
LABEL_6:
  LODWORD(result) = FigVideoQueueRemoteClient_Create(a2, a3, v13, v14, buffer, BytePtr, Length, a4, a5, a6, &v20);
  if (result)
  {
    return result;
  }

  else
  {
    return v20;
  }
}

uint64_t videoQueueRemote_HandleDeadServerConnection()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 16) = 1;
  *(DerivedStorage + 20) = 0;

  return CMNotificationCenterPostNotification();
}

uint64_t videoQueueRemote_handleDisplayMirroringChanged(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;
    CMBaseObject = FigVideoQueueGetCMBaseObject(a2);
    VTable = CMBaseObjectGetVTable();
    v5 = *(VTable + 8);
    result = VTable + 8;
    v6 = *(v5 + 56);
    if (v6)
    {

      return v6(CMBaseObject, @"DisplayList", v2);
    }
  }

  return result;
}

uint64_t videoQueueRemote_oneTimeInitializationWork()
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  FigRemote_ShouldConnectToMediaparserdForFileParsing();
  if (FigRemote_ShouldConnectToMediaplaybackd())
  {
    v0 = "com.apple.coremedia.mediaplaybackd.videoqueue";
  }

  else
  {
    v0 = "com.apple.coremedia.videoqueue";
  }

  return MEMORY[0x1EEDBDA00](v0, 40, figvideoqueuecallback_server, &_MergedGlobals_24);
}

uint64_t videoQueueRemote_Invalidate(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    return 0;
  }

  v5 = DerivedStorage;
  if (dword_1EAF177B0)
  {
    v23 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  *v5 = 1;
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterRemoveListener();
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterRemoveListener();
  FigVideoQueueRemoteClient_Destroy(*(v5 + 5));
  if (!FigRemote_ShouldConnectToMediaplaybackd())
  {
    FigRPCKillServerOnTimeout();
  }

  v3 = FigRPCDisposeServerConnection();
  if (v3)
  {
    FigSignalErrorAtGM();
  }

  v7 = *(v5 + 22);
  if (v7)
  {
    FigSyncMomentSourceSetTimebase(v7, 0);
    FigSyncMomentSourceDestroy(*(v5 + 22));
    *(v5 + 22) = 0;
  }

  if (*(v5 + 20))
  {
    FigSimpleMutexLock();
    v8 = *(v5 + 21);
    if (v8)
    {
      CFRelease(v8);
      *(v5 + 21) = 0;
    }

    FigSimpleMutexUnlock();
  }

  v9 = *(v5 + 24);
  if (v9)
  {
    FigSyncMomentSourceDestroy(v9);
    *(v5 + 24) = 0;
  }

  v10 = *(v5 + 25);
  if (v10)
  {
    dispatch_release(v10);
    *(v5 + 25) = 0;
  }

  v11 = *(v5 + 27);
  if (v11)
  {
    [v11 removeObserversOnCADisplays];

    *(v5 + 27) = 0;
  }

  v12 = objc_autoreleasePoolPush();
  videoQueueRemote_removeHostLayer(a1, 0);
  if (*(v5 + 4))
  {
    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setDisableActions:1];
    v13 = *(v5 + 4);
    if (v13)
    {
      CFRelease(v13);
      *(v5 + 4) = 0;
    }

    [MEMORY[0x1E6979518] commit];
  }

  objc_autoreleasePoolPop(v12);
  v14 = *(v5 + 14);
  if (v14)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __videoQueueRemote_Invalidate_block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = v5;
    dispatch_sync(v14, block);
  }

  v15 = *(v5 + 16);
  if (v15)
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __videoQueueRemote_Invalidate_block_invoke_2;
    v20[3] = &__block_descriptor_40_e5_v8__0l;
    v20[4] = v5;
    dispatch_sync(v15, v20);
  }

  v16 = *(v5 + 10);
  if (v16)
  {
    CFRelease(v16);
    *(v5 + 10) = 0;
  }

  v17 = *(v5 + 11);
  if (v17)
  {
    CFRelease(v17);
    *(v5 + 11) = 0;
  }

  return v3;
}

void videoQueueRemote_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  videoQueueRemote_Invalidate(a1);
  if (DerivedStorage[20])
  {
    FigSimpleMutexDestroy();
    DerivedStorage[20] = 0;
  }

  v3 = DerivedStorage[19];
  if (v3)
  {
    CFRelease(v3);
    DerivedStorage[19] = 0;
  }

  v4 = DerivedStorage[14];
  if (v4)
  {
    dispatch_release(v4);
    DerivedStorage[14] = 0;
  }

  v5 = DerivedStorage[16];
  if (v5)
  {
    dispatch_release(v5);
    DerivedStorage[16] = 0;
  }

  if (DerivedStorage[26])
  {
    MEMORY[0x19A8D3660](&_MergedGlobals_9, weakReferenceTable_OneTimeInitialization);
    if (qword_1EAF1A290)
    {
      FigCFWeakReferenceTableRemoveValue();
      DerivedStorage[26] = 0;
    }

    else
    {
      videoQueueRemote_Finalize_cold_1();
    }
  }

  if (dword_1EAF177B0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

__CFString *videoQueueRemote_CopyDebugDesc(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  v5 = CFGetRetainCount(a1);
  if (*DerivedStorage)
  {
    v6 = " (invalidated)";
  }

  else
  {
    v6 = "";
  }

  v7 = CFGetAllocator(a1);
  CFStringAppendFormat(Mutable, 0, @"<FigVideoQueueRemote %p retainCount: %ld%s allocator: %p>", a1, v5, v6, v7);
  return Mutable;
}

uint64_t videoQueueRemote_CopyProperty(uint64_t a1, const __CFString *a2, uint64_t a3, CFTypeRef *a4)
{
  v24 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v22 = 0;
  if (DerivedStorage[16] || (v8 = DerivedStorage, *DerivedStorage) || !a2 || !a4)
  {

    return FigSignalErrorAtGM();
  }

  if (!CFEqual(a2, @"VideoQueue_ControlTimebase"))
  {
    if (CFEqual(a2, @"VisualContextArray"))
    {
      v12 = *(v8 + 14);
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __videoQueueRemote_CopyProperty_block_invoke;
      v21[3] = &__block_descriptor_48_e5_v8__0l;
      v21[4] = a4;
      v21[5] = v8;
      v13 = v21;
    }

    else
    {
      if (!CFEqual(a2, @"VideoTargetArray"))
      {
        if (CFEqual(a2, @"CurrentlyDisplayedCVPixelBuffer"))
        {
          v19 = 0;
          *buffer = 0;
          v18 = 0;
          cf = 0;
          v14 = FigVideoQueueRemoteClient_CopyCurrentlyDisplayedCVPixelBuffer(*(v8 + 5), &v19 + 1, buffer, &v19, &v18);
          if (v14)
          {
            PixelBufferFromSerializedAtomData = v14;
          }

          else
          {
            PixelBufferFromSerializedAtomData = v18;
          }

          if (!PixelBufferFromSerializedAtomData)
          {
            if (v19)
            {
              PixelBufferFromSerializedAtomData = FigRemote_CreatePixelBufferFromSerializedAtomData();
              if (!PixelBufferFromSerializedAtomData)
              {
                LODWORD(v19) = 0;
                *a4 = cf;
                cf = 0;
              }
            }
          }

          if (HIDWORD(v19))
          {
            FigMachPortReleaseSendRight_();
          }

          if (v19)
          {
            MEMORY[0x19A8D6C70](*MEMORY[0x1E69E9A60], *buffer);
          }

          goto LABEL_18;
        }

        if (!CFEqual(a2, @"CompensateForDisplayLatency"))
        {
          CStringPtr = CFStringGetCStringPtr(a2, 0);
          if (!CStringPtr)
          {
            CStringPtr = buffer;
            CFStringGetCString(a2, buffer, 512, 0);
          }

          cf = 0;
          PixelBufferFromSerializedAtomData = FigVideoQueueRemoteClient_GetProperty(*(v8 + 5), CStringPtr, &cf, &v22);
          if (!PixelBufferFromSerializedAtomData)
          {
            PixelBufferFromSerializedAtomData = MEMORY[0x19A8D2B00](cf, v22, a3, a4);
            MEMORY[0x19A8D6C70](*MEMORY[0x1E69E9A60], cf, v22);
          }

          goto LABEL_18;
        }

        v15 = MEMORY[0x1E695E4C0];
        if (v8[104])
        {
          v15 = MEMORY[0x1E695E4D0];
        }

        v10 = *v15;
        goto LABEL_10;
      }

      v12 = *(v8 + 16);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __videoQueueRemote_CopyProperty_block_invoke_2;
      block[3] = &__block_descriptor_48_e5_v8__0l;
      block[4] = a4;
      block[5] = v8;
      v13 = block;
    }

    dispatch_sync(v12, v13);
    PixelBufferFromSerializedAtomData = 0;
    goto LABEL_18;
  }

  v10 = *(v8 + 19);
LABEL_10:
  PixelBufferFromSerializedAtomData = 0;
  *a4 = CFRetain(v10);
LABEL_18:
  if (!FigRemote_ShouldConnectToMediaplaybackd())
  {
    FigRPCKillServerOnTimeout();
  }

  return PixelBufferFromSerializedAtomData;
}

uint64_t videoQueueRemote_SetProperty(const void *a1, __CFString *a2, const __CFDictionary *a3)
{
  v70 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v50 = 0;
  theData = 0;
  v49 = 0;
  if (DerivedStorage[16] || (v7 = DerivedStorage, *DerivedStorage) || !a2)
  {

    return FigSignalErrorAtGM();
  }

  if (!CFEqual(@"VideoQueue_DisplayLayer", a2))
  {
    if (CFEqual(@"DisplayLayerVisibility", a2))
    {
      v9 = objc_autoreleasePoolPush();
      v15 = CMBaseObjectGetDerivedStorage();
      *buffer = 0;
      if (*(v15 + 32))
      {
        v16 = v15;
        v17 = *(v15 + 216);
        if (*MEMORY[0x1E695E4D0] == a3)
        {
          if (v17)
          {
            v28 = FigDeferredTransactionCreate(*MEMORY[0x1E695E480], buffer);
            v37 = *buffer;
            if (!v28)
            {
              FPSupport_AppendDeferredTransactionChangeToTargetMirroringObserverAtDisplayOfCALayer(*buffer, *(v16 + 216), *(v16 + 32), "videoQueueRemote_setClientVideoLayerVisibility");
              FigDeferredTransactionCommit(*buffer, 0);
              v37 = *buffer;
            }

            goto LABEL_46;
          }
        }

        else if (v17)
        {
          [v17 setBaseDisplayList:MEMORY[0x1E695E0F0]];
        }
      }

      goto LABEL_57;
    }

    if (CFEqual(a2, @"VideoQueue_DisplayBounds"))
    {
      CGRectMakeWithDictionaryRepresentation(a3, (v7 + 48));
      [MEMORY[0x1E6979518] begin];
      [MEMORY[0x1E6979518] setDisableActions:1];
      vq_updateHostLayerAffineTransform();
      [MEMORY[0x1E6979518] commit];
LABEL_50:
      CStringPtr = CFStringGetCStringPtr(a2, 0);
      if (!CStringPtr)
      {
        CStringPtr = buffer;
        CFStringGetCString(a2, buffer, 512, 0);
      }

      updated = MEMORY[0x19A8D2A70](a3, *MEMORY[0x1E695E480], &theData);
      if (!updated)
      {
        v40 = *(v7 + 5);
        BytePtr = CFDataGetBytePtr(theData);
        Length = CFDataGetLength(theData);
        updated = FigVideoQueueRemoteClient_SetProperty(v40, CStringPtr, BytePtr, Length);
      }

      goto LABEL_81;
    }

    if (!CFEqual(a2, @"VideoQueue_ControlTimebase"))
    {
      if (CFEqual(a2, @"VisualContextArray"))
      {
        updated = videoQueueRemote_updateVisualContextArrayAndCopyIDArray(a1, a3, &v50);
        if (!updated)
        {
          a2 = @"VisualContextIDArray";
          a3 = v50;
          goto LABEL_50;
        }
      }

      else
      {
        if (!CFEqual(a2, @"VideoTargetArray"))
        {
          if (CFEqual(a2, @"CompensateForDisplayLatency"))
          {
            v46 = *MEMORY[0x1E695E4C0] != a3;
            v7[104] = v46;
            FigSimpleMutexLock();
            v47 = *(v7 + 21);
            if (v47)
            {
              FigLayerSynchronizerSetCompensateForDisplayLatency(v47, v46);
            }

            FigSimpleMutexUnlock();
          }

          goto LABEL_50;
        }

        updated = videoQueueRemote_updateVideoTargetArrayAndCopyIDArray(a1, a3, &v49);
        if (!updated)
        {
          a2 = @"VideoTargetIDArray";
          a3 = v49;
          goto LABEL_50;
        }
      }

LABEL_81:
      v28 = updated;
      goto LABEL_59;
    }

    if (v7[144])
    {
LABEL_70:
      updated = FigSignalErrorAtGM();
      goto LABEL_81;
    }

    if (a3)
    {
      TypeID = CMTimebaseGetTypeID();
      if (TypeID != CFGetTypeID(a3))
      {
        goto LABEL_70;
      }

      v44 = *(v7 + 19);
      *(v7 + 19) = a3;
      CFRetain(a3);
    }

    else
    {
      v44 = *(v7 + 19);
      *(v7 + 19) = 0;
    }

    if (v44)
    {
      CFRelease(v44);
    }

    videoQueueRemote_rebuildTimebaseSync(a1, a3);
    if (dword_1EAF177B0)
    {
      LODWORD(number) = 0;
      LOBYTE(cf) = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v28 = 0;
    goto LABEL_59;
  }

  v9 = objc_autoreleasePoolPush();
  v10 = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (*(v10 + 32) != a3)
  {
    v11 = v10;
    v12 = FigDeferredTransactionCreate(*MEMORY[0x1E695E480], &cf);
    if (v12)
    {
      v28 = v12;
LABEL_45:
      v37 = cf;
LABEL_46:
      if (v37)
      {
        CFRelease(v37);
      }

      goto LABEL_58;
    }

    v13 = v11[4];
    if (v13)
    {
      FPSupport_AppendDeferredTransactionChangeToClearContentsAndRemoveFromSuperLayer(cf, v13);
      FPSupport_AppendDeferredTransactionChangeToRelease(cf, v11[4]);
      v11[4] = 0;
    }

    if (a3)
    {
      CFRetain(a3);
      v11[4] = a3;
      v14 = v11[27];
      if (v14)
      {
        FPSupport_AppendDeferredTransactionChangeToTargetMirroringObserverAtDisplayOfCALayer(cf, v14, a3, "videoQueueRemote_setClientVideoLayer");
      }
    }

    else
    {
      v11[4] = 0;
      FigSimpleMutexLock();
      v18 = v11[21];
      if (v18)
      {
        CFRelease(v18);
        v11[21] = 0;
      }

      FigSimpleMutexUnlock();
    }

    v19 = cf;
    v20 = objc_autoreleasePoolPush();
    number = 0;
    valuePtr = 0;
    v21 = CMBaseObjectGetDerivedStorage();
    if (*(v21 + 32))
    {
      v22 = v21;
      CMBaseObject = FigVideoQueueGetCMBaseObject(a1);
      v24 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (!v24)
      {
        goto LABEL_40;
      }

      v25 = v24(CMBaseObject, @"VideoQueue_MakeCAContextForRemoteHost", *MEMORY[0x1E695E4D0]);
      if (v25)
      {
        v28 = v25;
        goto LABEL_41;
      }

      v26 = FigVideoQueueGetCMBaseObject(a1);
      v27 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v27)
      {
        v28 = v27(v26, @"VideoQueue_CAContextID", 0, &number);
        v29 = number;
        if (v28 || !number)
        {
          goto LABEL_42;
        }

        if (CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr))
        {
          v30 = *(v22 + 40);
          if (!v30)
          {
            [MEMORY[0x1E6979518] begin];
            [MEMORY[0x1E6979518] setDisableActions:1];
            v31 = [MEMORY[0x1E69793A8] layer];
            *(v22 + 40) = v31;
            [v31 setInheritsSecurity:1];
            [MEMORY[0x1E6979518] commit];
            v32 = *(v22 + 40);
            if (!v32)
            {
              v28 = 4294955215;
              goto LABEL_41;
            }

            CFRetain(v32);
            v30 = *(v22 + 40);
          }

          FPSupport_AppendDeferredTransactionChangeToConfigureFigVideoQueueHostLayerAndPostNotification(v19, v30, *(v22 + 32), valuePtr, a1, @"VideoQueue_CAContextIDDidChange", "videoQueueRemote_updateHostLayer");
          FPSupport_AppendDeferredTransactionChangeToResizeClientVideoLayerWithinHostLayer(v19, *(v22 + 40), *(v22 + 32), "videoQueueRemote_updateHostLayer", *(v22 + 48), *(v22 + 56), *(v22 + 64), *(v22 + 72));
          if (dword_1EAF177B0)
          {
            v54 = 0;
            type = OS_LOG_TYPE_DEFAULT;
            v33 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v34 = v54;
            if (os_log_type_enabled(v33, type))
            {
              v35 = v34;
            }

            else
            {
              v35 = v34 & 0xFFFFFFFE;
            }

            if (v35)
            {
              v48 = *(v22 + 32);
              v36 = [*(v22 + 40) description];
              v58 = 136316418;
              v59 = "videoQueueRemote_updateHostLayer";
              v60 = 2048;
              v61 = a1;
              v62 = 2082;
              v63 = v22 + 224;
              v64 = 2112;
              v65 = v48;
              v66 = 2112;
              v67 = v36;
              v68 = 1024;
              v69 = valuePtr;
              _os_log_send_and_compose_impl();
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          goto LABEL_89;
        }

        v28 = 4294955216;
      }

      else
      {
LABEL_40:
        v28 = 4294954514;
      }

LABEL_41:
      v29 = number;
LABEL_42:
      if (v29)
      {
        CFRelease(v29);
      }

      objc_autoreleasePoolPop(v20);
      FigDeferredTransactionCommit(cf, 0);
      goto LABEL_45;
    }

    videoQueueRemote_removeHostLayer(a1, v19);
LABEL_89:
    v28 = 0;
    goto LABEL_41;
  }

LABEL_57:
  v28 = 0;
LABEL_58:
  objc_autoreleasePoolPop(v9);
LABEL_59:
  if (!FigRemote_ShouldConnectToMediaplaybackd())
  {
    FigRPCKillServerOnTimeout();
  }

  if (theData)
  {
    CFRelease(theData);
  }

  if (v50)
  {
    CFRelease(v50);
  }

  if (v49)
  {
    CFRelease(v49);
  }

  return v28;
}

uint64_t vq_updateHostLayerAffineTransform()
{
  result = CMBaseObjectGetDerivedStorage();
  if (*(result + 64) > 0.0)
  {
    v1 = result;
    if (*(result + 72) > 0.0)
    {
      [*(result + 32) bounds];
      v3 = v2;
      v5 = v4;
      memset(&v11, 0, sizeof(v11));
      v6 = *(v1 + 64);
      v7 = *(v1 + 72);
      CGAffineTransformMakeScale(&v11, v2 / v6, v4 / v7);
      v9 = v11;
      CGAffineTransformTranslate(&v10, &v9, (v3 - v6) * 0.5, (v5 - v7) * 0.5);
      *&v11.c = *&v10.c;
      *&v11.tx = *&v10.tx;
      v8 = *(v1 + 40);
      *&v11.a = *&v10.a;
      return [v8 setAffineTransform:&v10];
    }
  }

  return result;
}

void videoQueueRemote_rebuildTimebaseSync(uint64_t a1, const void *a2)
{
  v13 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 200);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __videoQueueRemote_rebuildTimebaseSync_block_invoke;
  block[3] = &__block_descriptor_48_e5_v8__0l;
  block[4] = DerivedStorage;
  block[5] = a2;
  dispatch_sync(v4, block);
  if (!a2)
  {
    v9 = 0;
    v7 = 0;
LABEL_7:
    v10 = *(DerivedStorage + 200);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __videoQueueRemote_rebuildTimebaseSync_block_invoke_2;
    v11[3] = &__block_descriptor_56_e5_v8__0l;
    v11[4] = DerivedStorage;
    v11[5] = v9;
    v11[6] = v7;
    dispatch_sync(v10, v11);
    v9 = v13;
    goto LABEL_8;
  }

  v5 = CMBaseObjectGetDerivedStorage();
  v6 = malloc_type_calloc(1uLL, 0x10uLL, 0x10000409B4BCFF8uLL);
  v7 = v6;
  if (v6)
  {
    *v6 = *(v5 + 208);
    v6[8] = 1;
  }

  else if (!videoQueueRemote_rebuildTimebaseSync_cold_1())
  {
    return;
  }

  v8 = FigSyncMomentSourceCreateWithDispatchQueueAndDestructor2(videoQueueRemote_syncServerTimebaseToMoment, v7, videoQueueRemote_destroyTimebaseSyncState, a2, *(DerivedStorage + 200), &v13);
  v9 = v13;
  if (!v8)
  {
    goto LABEL_7;
  }

LABEL_8:
  if (v9)
  {
    CFRelease(v9);
  }
}

uint64_t videoQueueRemote_updateVisualContextArrayAndCopyIDArray(const void *a1, const void *a2, CFMutableArrayRef *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2 || (v7 = DerivedStorage, v8 = CFGetTypeID(a2), v8 != CFArrayGetTypeID()))
  {
    videoQueueRemote_updateVisualContextArrayAndCopyIDArray_cold_2(&v23);
    return v23;
  }

  Count = CFArrayGetCount(a2);
  if (Count < 1)
  {
LABEL_8:
    v13 = CFGetAllocator(a1);
    Mutable = CFArrayCreateMutable(v13, Count, MEMORY[0x1E695E9C0]);
    if (Mutable)
    {
      v15 = Mutable;
      if (Count < 1)
      {
LABEL_14:
        v19 = *(v7 + 112);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __videoQueueRemote_updateVisualContextArrayAndCopyIDArray_block_invoke;
        block[3] = &__block_descriptor_48_e5_v8__0l;
        block[4] = v7;
        block[5] = a2;
        dispatch_sync(v19, block);
        v20 = 0;
        *a3 = v15;
      }

      else
      {
        v16 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a2, v16);
          v23 = 0;
          ObjectID = FigVisualContextXPCRemoteGetObjectID(ValueAtIndex, &v23);
          if (ObjectID)
          {
            break;
          }

          ObjectID = FigCFArrayAppendInt64();
          if (ObjectID)
          {
            break;
          }

          if (Count == ++v16)
          {
            goto LABEL_14;
          }
        }

        v20 = ObjectID;
        CFRelease(v15);
      }

      return v20;
    }

    videoQueueRemote_updateVisualContextArrayAndCopyIDArray_cold_1(&v23);
    return v23;
  }

  v10 = 0;
  while (1)
  {
    v11 = CFArrayGetValueAtIndex(a2, v10);
    if (!v11)
    {
      break;
    }

    v12 = CFGetTypeID(v11);
    if (v12 != FigVisualContextGetTypeID())
    {
      break;
    }

    if (Count == ++v10)
    {
      goto LABEL_8;
    }
  }

  return FigSignalErrorAtGM();
}

uint64_t videoQueueRemote_updateVideoTargetArrayAndCopyIDArray(const void *a1, const void *a2, CFMutableArrayRef *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2 || (v7 = DerivedStorage, v8 = CFGetTypeID(a2), v8 != CFArrayGetTypeID()))
  {
    videoQueueRemote_updateVideoTargetArrayAndCopyIDArray_cold_2(&v23);
    return v23;
  }

  Count = CFArrayGetCount(a2);
  if (Count < 1)
  {
LABEL_8:
    v13 = CFGetAllocator(a1);
    Mutable = CFArrayCreateMutable(v13, Count, MEMORY[0x1E695E9C0]);
    if (Mutable)
    {
      v15 = Mutable;
      if (Count < 1)
      {
LABEL_14:
        v19 = *(v7 + 128);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __videoQueueRemote_updateVideoTargetArrayAndCopyIDArray_block_invoke;
        block[3] = &__block_descriptor_48_e5_v8__0l;
        block[4] = v7;
        block[5] = a2;
        dispatch_sync(v19, block);
        v20 = 0;
        *a3 = v15;
      }

      else
      {
        v16 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a2, v16);
          v23 = 0;
          ObjectID = FigVideoTargetXPCRemoteGetObjectID(ValueAtIndex, &v23);
          if (ObjectID)
          {
            break;
          }

          ObjectID = FigCFArrayAppendInt64();
          if (ObjectID)
          {
            break;
          }

          if (Count == ++v16)
          {
            goto LABEL_14;
          }
        }

        v20 = ObjectID;
        CFRelease(v15);
      }

      return v20;
    }

    videoQueueRemote_updateVideoTargetArrayAndCopyIDArray_cold_1(&v23);
    return v23;
  }

  v10 = 0;
  while (1)
  {
    v11 = CFArrayGetValueAtIndex(a2, v10);
    if (!v11)
    {
      break;
    }

    v12 = CFGetTypeID(v11);
    if (v12 != FigVideoTargetGetTypeID())
    {
      break;
    }

    if (Count == ++v10)
    {
      goto LABEL_8;
    }
  }

  return FigSignalErrorAtGM();
}

void __videoQueueRemote_rebuildTimebaseSync_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 184);
  *(v2 + 184) = v1;
  if (v1)
  {
    CFRetain(v1);
  }

  if (v3)
  {

    CFRelease(v3);
  }
}

void __videoQueueRemote_rebuildTimebaseSync_block_invoke_2(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  v4 = *(v3 + 192);
  *(v3 + 192) = v2;
  if (v2)
  {
    CFRetain(v2);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[6];
  if (v5)
  {
    if (!*(a1[4] + 184))
    {
      v14 = 0;
      v13 = 0u;
      v12 = 0u;
      v11 = 0u;
      v10 = 0u;
      v9 = 0u;
      v8 = 0u;
      v7 = 0u;
      v6 = 120;
      videoQueueRemote_syncServerTimebaseToMoment(v5, &v6);
    }
  }
}

void __videoQueueRemote_updateVisualContextArrayAndCopyIDArray_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 120);
  *(v2 + 120) = v1;
  if (v1)
  {
    CFRetain(v1);
  }

  if (v3)
  {

    CFRelease(v3);
  }
}

void __videoQueueRemote_updateVideoTargetArrayAndCopyIDArray_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 136);
  *(v2 + 136) = v1;
  if (v1)
  {
    CFRetain(v1);
  }

  if (v3)
  {

    CFRelease(v3);
  }
}

uint64_t videoQueueRemote_Start(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 16) || *DerivedStorage)
  {

    return FigSignalErrorAtGM();
  }

  else
  {
    v5 = FigVideoQueueRemoteClient_Start(*(DerivedStorage + 20), a2);
    if (!FigRemote_ShouldConnectToMediaplaybackd())
    {
      FigRPCKillServerOnTimeout();
    }

    return v5;
  }
}

uint64_t videoQueueRemote_EnqueueFrame(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, uint64_t a9, opaqueCMSampleBuffer *a10, int a11)
{
  v42[2] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 16) || (v22 = DerivedStorage, *DerivedStorage))
  {

    return FigSignalErrorAtGM();
  }

  if (*(DerivedStorage + 144))
  {
    goto LABEL_7;
  }

  *(DerivedStorage + 144) = 1;
  if (!*(DerivedStorage + 152) || !*(DerivedStorage + 32) || !*(DerivedStorage + 40))
  {
    goto LABEL_7;
  }

  FigSimpleMutexLock();
  v31 = FigLayerSynchronizerCreate((v22 + 168));
  if (!v31)
  {
    FigLayerSynchronizerSetCompensateForDisplayLatency(*(v22 + 168), *(v22 + 104));
    FigSimpleMutexUnlock();
    v38 = videoQueueRemote_SetSynchronizedLayers();
    if (v38 || (v38 = FigSyncMomentSourceCreateWithDispatchQueue(videoQueueRemote_SynchronizeLayerToMoment, *(v22 + 208), *(v22 + 152), MEMORY[0x1E69E96A0], (v22 + 176)), v38))
    {
      v30 = v38;
      goto LABEL_38;
    }

LABEL_7:
    v42[0] = 0;
    if (a10)
    {
      Decryptor = FigSampleBufferGetDecryptor();
      if (Decryptor)
      {
        v25 = Decryptor;
        v26 = *(CMBaseObjectGetVTable() + 16);
        if (*v26 >= 4uLL)
        {
          v27 = v26[13];
          if (v27)
          {
            v27(v25, v42);
          }
        }
      }
    }

    if (CMSampleBufferGetTaggedBufferGroup(a10))
    {
      v40 = 0;
      v28 = CMBaseObjectGetDerivedStorage();
      v41 = 0;
      *v39 = 0;
      v42[0] = 0;
      v42[1] = 0;
      SerializedAtomDataAndSurfaceArrayForSampleBufferWithOptions = FigRemote_CreateSerializedAtomDataAndSurfaceArrayForSampleBufferWithOptions();
      if (SerializedAtomDataAndSurfaceArrayForSampleBufferWithOptions)
      {
        v30 = SerializedAtomDataAndSurfaceArrayForSampleBufferWithOptions;
      }

      else
      {
        *(v28 + 96) = (*v39 + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8];
        v34 = FigVideoQueueRemoteClient_EnqueueTaggedBufferGroupBackedSampleBuffer(*(v28 + 20), 0, 0, 0, 0, v41, v39[0], a11, a1, a2, a3, a4, a5, a6, a7, a8, &v40);
        if (v34)
        {
          v30 = v34;
        }

        else
        {
          v30 = v40;
        }
      }

      for (i = 0; i != 16; i += 4)
      {
        if (*(v42 + i))
        {
          FigMachPortReleaseSendRight_();
        }
      }

      if (*v39)
      {
        MEMORY[0x19A8D6C70](*MEMORY[0x1E69E9A60], v41);
      }
    }

    else
    {
      v39[0] = 0;
      v32 = CMBaseObjectGetDerivedStorage();
      v42[0] = 0;
      v41 = 0;
      SerializedAtomDataForSampleBufferWithOptions = FigRemote_CreateSerializedAtomDataForSampleBufferWithOptions();
      if (SerializedAtomDataForSampleBufferWithOptions)
      {
        v30 = SerializedAtomDataForSampleBufferWithOptions;
        *(v32 + 96) = 0;
      }

      else
      {
        v36 = v41;
        *(v32 + 96) = (v41 + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8];
        v37 = FigVideoQueueRemoteClient_EnqueueVideoSampleBuffer(*(v32 + 20), 0, v42[0], v36, a11, v39, a1, a2, a3, a4, a5, a6, a7, a8);
        if (v37)
        {
          v30 = v37;
        }

        else
        {
          v30 = v39[0];
        }
      }

      FigMachPortReleaseSendRight_();
      if (v41)
      {
        MEMORY[0x19A8D6C70](*MEMORY[0x1E69E9A60], v42[0]);
      }
    }

    goto LABEL_38;
  }

  v30 = v31;
  FigSimpleMutexUnlock();
LABEL_38:
  if (!FigRemote_ShouldConnectToMediaplaybackd())
  {
    FigRPCKillServerOnTimeout();
  }

  return v30;
}

uint64_t videoQueueRemote_EnqueueH264Frame(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, uint64_t a9, int a10, int a11, const UInt8 *BytePtr, OpaqueCMBlockBuffer *a13, uint64_t a14, int a15)
{
  v39 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  dataPointerOut = 0;
  if (DerivedStorage[16] || (v30 = DerivedStorage, *DerivedStorage))
  {

    return FigSignalErrorAtGM();
  }

  if (BytePtr)
  {
    Length = CFDataGetLength(BytePtr);
    BytePtr = CFDataGetBytePtr(BytePtr);
    if (a13)
    {
      goto LABEL_8;
    }

LABEL_13:
    v34 = 0;
    goto LABEL_16;
  }

  Length = 0;
  if (!a13)
  {
    goto LABEL_13;
  }

LABEL_8:
  DataLength = CMBlockBufferGetDataLength(a13);
  if (DataLength)
  {
    v34 = DataLength;
    if (CMBlockBufferIsRangeContiguous(a13, 0, DataLength))
    {
      DataPointer = CMBlockBufferGetDataPointer(a13, 0, 0, 0, &dataPointerOut);
      if (!DataPointer)
      {
        LODWORD(a13) = 0;
        goto LABEL_16;
      }

      goto LABEL_26;
    }

    DataPointer = vm_allocate(*MEMORY[0x1E69E9A60], &dataPointerOut, v34, 1560281089);
    if (DataPointer)
    {
LABEL_26:
      v37 = DataPointer;
      goto LABEL_22;
    }

    CMBlockBufferCopyDataBytes(a13, 0, v34, dataPointerOut);
    LODWORD(a13) = 1;
LABEL_16:
    v36 = FigVideoQueueRemoteClient_EnqueueH264Frame(*(v30 + 5), a10, a11, BytePtr, Length, dataPointerOut, v34, a14, a1, a2, a3, a4, a5, a6, a7, a8, a15, &v39);
    if (v36)
    {
      v37 = v36;
    }

    else
    {
      v37 = v39;
    }

    if (a13 && v34)
    {
      MEMORY[0x19A8D6C70](*MEMORY[0x1E69E9A60], dataPointerOut, v34);
    }

    goto LABEL_22;
  }

  v37 = 4294955216;
LABEL_22:
  if (!FigRemote_ShouldConnectToMediaplaybackd())
  {
    FigRPCKillServerOnTimeout();
  }

  return v37;
}

uint64_t videoQueueRemote_EnqueueH264FrameWithTimingInfoBaggage(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, uint64_t a9, int a10, int a11, const __CFData *a12, OpaqueCMBlockBuffer *a13, uint64_t a14, int a15, uint64_t a16)
{
  v48 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  theData = 0;
  dataPointerOut = 0;
  if (DerivedStorage[16] || (v32 = DerivedStorage, *DerivedStorage))
  {

    return FigSignalErrorAtGM();
  }

  if (a12)
  {
    Length = CFDataGetLength(a12);
    BytePtr = CFDataGetBytePtr(a12);
  }

  else
  {
    BytePtr = 0;
    Length = 0;
  }

  v45 = BytePtr;
  if (!a13)
  {
    v37 = 0;
    if (a16)
    {
      goto LABEL_16;
    }

    goto LABEL_20;
  }

  DataLength = CMBlockBufferGetDataLength(a13);
  if (DataLength)
  {
    v37 = DataLength;
    if (CMBlockBufferIsRangeContiguous(a13, 0, DataLength))
    {
      DataPointer = CMBlockBufferGetDataPointer(a13, 0, 0, 0, &dataPointerOut);
      if (!DataPointer)
      {
        LOBYTE(a13) = 0;
        if (!a16)
        {
          goto LABEL_20;
        }

LABEL_16:
        v39 = MEMORY[0x19A8D2A70](a16, *MEMORY[0x1E695E480], &theData);
        if (v39)
        {
          v43 = v39;
LABEL_24:
          v44 = a13 ^ 1;
          if (!v37)
          {
            v44 = 1;
          }

          if ((v44 & 1) == 0)
          {
            MEMORY[0x19A8D6C70](*MEMORY[0x1E69E9A60], dataPointerOut, v37);
          }

          goto LABEL_28;
        }

        v40 = CFDataGetBytePtr(theData);
        v41 = CFDataGetLength(theData);
LABEL_21:
        v42 = FigVideoQueueRemoteClient_EnqueueH264FrameWithTimingInfoBaggage(*(v32 + 5), a10, a11, v45, Length, dataPointerOut, v37, a14, a1, a2, a3, a4, a5, a6, a7, a8, a15, v40, v41, &v48);
        if (v42)
        {
          v43 = v42;
        }

        else
        {
          v43 = v48;
        }

        goto LABEL_24;
      }

      goto LABEL_34;
    }

    DataPointer = vm_allocate(*MEMORY[0x1E69E9A60], &dataPointerOut, v37, 1560281089);
    if (DataPointer)
    {
LABEL_34:
      v43 = DataPointer;
      goto LABEL_28;
    }

    CMBlockBufferCopyDataBytes(a13, 0, v37, dataPointerOut);
    LOBYTE(a13) = 1;
    if (a16)
    {
      goto LABEL_16;
    }

LABEL_20:
    v40 = 0;
    v41 = 0;
    goto LABEL_21;
  }

  v43 = 4294955216;
LABEL_28:
  if (theData)
  {
    CFRelease(theData);
  }

  if (!FigRemote_ShouldConnectToMediaplaybackd())
  {
    FigRPCKillServerOnTimeout();
  }

  return v43;
}

uint64_t videoQueueRemote_Flush(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 16) || *DerivedStorage)
  {

    return FigSignalErrorAtGM();
  }

  else
  {
    v5 = FigVideoQueueRemoteClient_Flush(*(DerivedStorage + 20), a2);
    if (!FigRemote_ShouldConnectToMediaplaybackd())
    {
      FigRPCKillServerOnTimeout();
    }

    return v5;
  }
}

uint64_t videoQueueRemote_IsAboveHighWaterLevel()
{
  v4 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 16) || *DerivedStorage)
  {
    LOBYTE(result) = FigSignalErrorAtGM();
  }

  else
  {
    IsAboveHighWaterLevel = FigVideoQueueRemoteClient_IsAboveHighWaterLevel(*(DerivedStorage + 20), &v4);
    if (!FigRemote_ShouldConnectToMediaplaybackd())
    {
      FigRPCKillServerOnTimeout();
    }

    if (IsAboveHighWaterLevel)
    {
      v3 = 1;
    }

    else
    {
      v3 = v4 == 0;
    }

    LOBYTE(result) = !v3;
  }

  return result;
}

uint64_t videoQueueRemote_EnqueueFrameWithFormatDescriptionAndTimingInfoBaggage(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, uint64_t a9, OpaqueCMBlockBuffer *a10, OpaqueCMBlockBuffer *a11, uint64_t a12, int a13, const UInt8 *BytePtr)
{
  v43 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  address = 0;
  dataPointerOut = 0;
  theData = 0;
  if (DerivedStorage[16] || (v28 = DerivedStorage, *DerivedStorage))
  {

    return FigSignalErrorAtGM();
  }

  if (!a10)
  {
    v31 = 0;
    if (a11)
    {
LABEL_11:
      DataLength = CMBlockBufferGetDataLength(a11);
      if (DataLength)
      {
        v34 = DataLength;
        if (CMBlockBufferIsRangeContiguous(a11, 0, DataLength))
        {
          DataPointer = CMBlockBufferGetDataPointer(a11, 0, 0, 0, &address);
          if (!DataPointer)
          {
            LOBYTE(a11) = 0;
            if (!BytePtr)
            {
              goto LABEL_24;
            }

LABEL_18:
            v35 = MEMORY[0x19A8D2A70](BytePtr, *MEMORY[0x1E695E480], &theData);
            if (v35)
            {
              v37 = v35;
LABEL_28:
              v39 = a11 ^ 1;
              if (!v34)
              {
                v39 = 1;
              }

              if ((v39 & 1) == 0)
              {
                MEMORY[0x19A8D6C70](*MEMORY[0x1E69E9A60], address, v34);
              }

              goto LABEL_32;
            }

            BytePtr = CFDataGetBytePtr(theData);
            Length = CFDataGetLength(theData);
LABEL_25:
            v38 = FigVideoQueueRemoteClient_EnqueueFrameWithFormatDescriptionAndTimingInfoBaggage(*(v28 + 5), dataPointerOut, v31, address, v34, a12, a13, BytePtr, a1, a2, a3, a4, a5, a6, a7, a8, Length, &v43);
            if (v38)
            {
              v37 = v38;
            }

            else
            {
              v37 = v43;
            }

            goto LABEL_28;
          }

          goto LABEL_21;
        }

        DataPointer = vm_allocate(*MEMORY[0x1E69E9A60], &address, v34, 1560281089);
        if (!DataPointer)
        {
          CMBlockBufferCopyDataBytes(a11, 0, v34, address);
          LOBYTE(a11) = 1;
          if (BytePtr)
          {
            goto LABEL_18;
          }

          goto LABEL_24;
        }

        goto LABEL_21;
      }

LABEL_37:
      v37 = 4294955216;
      goto LABEL_32;
    }

LABEL_17:
    v34 = 0;
    if (BytePtr)
    {
      goto LABEL_18;
    }

LABEL_24:
    Length = 0;
    goto LABEL_25;
  }

  v30 = CMBlockBufferGetDataLength(a10);
  if (!v30)
  {
    goto LABEL_37;
  }

  v31 = v30;
  if (!CMBlockBufferIsRangeContiguous(a10, 0, v30))
  {
    DataPointer = FigSignalErrorAtGM();
    goto LABEL_21;
  }

  DataPointer = CMBlockBufferGetDataPointer(a10, 0, 0, 0, &dataPointerOut);
  if (!DataPointer)
  {
    if (a11)
    {
      goto LABEL_11;
    }

    goto LABEL_17;
  }

LABEL_21:
  v37 = DataPointer;
LABEL_32:
  if (theData)
  {
    CFRelease(theData);
  }

  if (!FigRemote_ShouldConnectToMediaplaybackd())
  {
    FigRPCKillServerOnTimeout();
  }

  return v37;
}

uint64_t videoQueueRemote_RequestDecodeForPreroll(uint64_t a1, uint64_t a2)
{
  v13 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  theData = 0;
  if (DerivedStorage[16] || (v4 = DerivedStorage, *DerivedStorage))
  {

    return FigSignalErrorAtGM();
  }

  else
  {
    v6 = MEMORY[0x19A8D2A70](a2, *MEMORY[0x1E695E480], &theData);
    if (v6)
    {
      v11 = v6;
    }

    else
    {
      v7 = *(v4 + 5);
      BytePtr = CFDataGetBytePtr(theData);
      Length = CFDataGetLength(theData);
      v10 = FigVideoQueueRemoteClient_RequestDecodeForPreroll(v7, BytePtr, Length, &v13);
      if (v10)
      {
        v11 = v10;
      }

      else
      {
        v11 = v13;
      }
    }

    if (theData)
    {
      CFRelease(theData);
    }

    return v11;
  }
}

uint64_t videoQueueRemote_SetSynchronizedLayers()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 168))
  {
    v1 = CFArrayCreate(*MEMORY[0x1E695E480], (DerivedStorage + 40), 1, MEMORY[0x1E695E9C0]);
    v2 = FigLayerSynchronizerSetLayerArray(*(DerivedStorage + 168), v1);
    if (v1)
    {
      CFRelease(v1);
    }
  }

  else
  {
    v2 = 0;
  }

  FigSimpleMutexUnlock();
  return v2;
}

void remoteXPCAsset_SetCachedAssetPropertyValue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = *(DerivedStorage + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __remoteXPCAsset_SetCachedAssetPropertyValue_block_invoke;
  block[3] = &__block_descriptor_tmp_30_0;
  block[4] = DerivedStorage;
  block[5] = a2;
  block[6] = a3;
  dispatch_sync(v6, block);
}

uint64_t FigAssetRemoteCreateWithURLAndRetry(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v12 = 0;
  if (!a5)
  {
    FigAssetRemoteCreateWithURLAndRetry_cold_1(&v13);
    return v13;
  }

  v10 = 5;
  while (1)
  {
    result = FigAssetRemoteCreateWithURL(a1, a2, a3, a4, &v12);
    if (result > -12179)
    {
      break;
    }

    if (result != -16155 && result != -16153)
    {
      return result;
    }

LABEL_9:
    if (!--v10)
    {
      return result;
    }
  }

  if (result)
  {
    if (result != -12178)
    {
      return result;
    }

    goto LABEL_9;
  }

  *a5 = v12;
  return result;
}

uint64_t FigAssetRemoteCreateWithFormatReader(const __CFAllocator *a1, uint64_t a2, uint64_t a3, const __CFDictionary *a4, void *a5)
{
  v14 = 0;
  if (!a2)
  {
    v13 = 2926;
LABEL_12:
    FigAssetRemoteCreateWithFormatReader_cold_2(v13, &v15);
    v10 = v15;
    goto LABEL_8;
  }

  if (!a5)
  {
    v13 = 2927;
    goto LABEL_12;
  }

  if (qword_1ED4CB900 != -1)
  {
    FigAssetRemoteCreateWithFormatReader_cold_1();
  }

  v10 = _MergedGlobals_120;
  if (_MergedGlobals_120)
  {
    goto LABEL_8;
  }

  v10 = remoteXPCAsset_CreateInternal(a1, 0, a2, 0, 0, -1, 0, a3, a4, &v14);
  v11 = v14;
  if (!v10)
  {
    remoteXPCAsset_SetCachedAssetPropertyValue(v14, @"assetProperty_FormatReader", a2);
    *a5 = v11;
LABEL_8:
    FigXPCRemoteClientKillServerOnTimeout();
    return v10;
  }

  FigXPCRemoteClientKillServerOnTimeout();
  if (v11)
  {
    CFRelease(v11);
  }

  return v10;
}

uint64_t FigAssetRemoteCopyAssetWithDownloadToken(const __CFAllocator *a1, uint64_t a2, void *a3)
{
  v12 = 0;
  xdict = 0;
  v11 = 0;
  if (!a3)
  {
    FigAssetRemoteCopyAssetWithDownloadToken_cold_2(&v14);
    v6 = v14;
    goto LABEL_13;
  }

  if (qword_1ED4CB900 != -1)
  {
    FigAssetRemoteCreateWithFormatReader_cold_1();
  }

  v6 = _MergedGlobals_120;
  if (_MergedGlobals_120)
  {
    goto LABEL_13;
  }

  v7 = FigXPCCreateBasicMessage();
  if (v7 || (xpc_dictionary_set_uint64(xdict, "DownloadToken", a2), v7 = remoteXPCAsset_CreateAssetObject(a1, &v11), v7) || (v7 = FigXPCRemoteClientSendSyncMessageCreatingReply(), v7))
  {
    v6 = v7;
LABEL_13:
    v9 = v11;
    goto LABEL_14;
  }

  uint64 = xpc_dictionary_get_uint64(v12, *MEMORY[0x1E69615A0]);
  v9 = v11;
  v6 = remoteXPCAsset_CompleteAssetObjectSetup(v11, uint64);
  if (!v6)
  {
    *a3 = v9;
    goto LABEL_10;
  }

LABEL_14:
  if (v9)
  {
    CFRelease(v9);
  }

LABEL_10:
  FigXPCRelease();
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v6;
}

uint64_t FigAssetXPCRemoteGetObjectID(const void *a1, void *a2)
{
  if (!a1)
  {
    FigAssetXPCRemoteGetObjectID_cold_4(&v6);
    return v6;
  }

  v4 = CFGetTypeID(a1);
  if (v4 != FigAssetGetTypeID())
  {
    FigAssetXPCRemoteGetObjectID_cold_1(&v6);
    return v6;
  }

  if (CMBaseObjectGetVTable() != &kRemoteXPCAsset_VTable)
  {
    FigAssetXPCRemoteGetObjectID_cold_2(&v6);
    return v6;
  }

  if (!a2)
  {
    FigAssetXPCRemoteGetObjectID_cold_3(&v6);
    return v6;
  }

  return remoteXPCAsset_GetObjectID(a1, a2);
}

uint64_t remoteXPCAsset_GetObjectID(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 40))
  {
    remoteXPCAsset_GetObjectID_cold_1(&v6);
    return v6;
  }

  else
  {
    v4 = DerivedStorage;
    if (*(DerivedStorage + 66))
    {
      remoteXPCAsset_GetObjectID_cold_2(&v7);
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

uint64_t remoteXPCAssetClient_DeadConnectionCallback(const void *a1)
{
  v2 = CFGetTypeID(a1);
  if (v2 == FigAssetGetTypeID())
  {
    v3 = 40;
  }

  else
  {
    v4 = CFGetTypeID(a1);
    result = FigAssetTrackGetTypeID();
    if (v4 != result)
    {
      return result;
    }

    v3 = 48;
  }

  result = CMBaseObjectGetDerivedStorage();
  *(result + v3) = 1;
  return result;
}

uint64_t remoteXPCAssetClient_NotificationFilter(const void *a1, const void *a2, void *a3, CFDictionaryRef theDict, __CFDictionary **a5)
{
  v5 = 0;
  if (!a2 || !theDict)
  {
    return v5;
  }

  if (CFDictionaryGetValue(theDict, @"CFErrorAsDictionary"))
  {
    v11 = FigCFErrorCreateFromPropertyList();
    if (!v11)
    {
      remoteXPCAssetClient_NotificationFilter_cold_2();
      return 0;
    }

    v12 = v11;
    MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, theDict);
    if (!MutableCopy)
    {
      remoteXPCAssetClient_NotificationFilter_cold_1();
      v5 = 0;
      goto LABEL_19;
    }

    v14 = MutableCopy;
    CFDictionaryRemoveValue(MutableCopy, @"CFErrorAsDictionary");
    CFDictionarySetValue(v14, @"assetPayload_CFError", v12);
    v5 = 4;
  }

  else
  {
    v12 = 0;
    v14 = 0;
    v5 = 0;
  }

  if (CFEqual(a2, @"assetNotice_PropertyLoaded") || CFEqual(a2, @"assetNotice_PropertyRevised"))
  {
    Value = CFDictionaryGetValue(theDict, @"assetPayload_Property");
    if (!Value)
    {
      goto LABEL_18;
    }

    v16 = Value;
    cf = 0;
    if (a1)
    {
      v17 = CFGetTypeID(a1);
      if (v17 != FigAssetGetTypeID())
      {
        goto LABEL_16;
      }
    }

    v18 = xpc_dictionary_get_value(a3, "LoadedValue");
    if (v18)
    {
      AssetPropertyValueFromXPCDictionary = remoteXPCAsset_DeserializeAndCreateAssetPropertyValueFromXPCDictionary(a1, v18, v16, &cf);
      if (!a1)
      {
        goto LABEL_16;
      }
    }

    else
    {
      AssetPropertyValueFromXPCDictionary = 0;
      if (!a1)
      {
LABEL_16:
        if (cf)
        {
          CFRelease(cf);
        }

        goto LABEL_18;
      }
    }

    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v21 = *(DerivedStorage + 8);
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 0x40000000;
    v26[2] = __remoteXPCAssetClient_HandleCachedPropertyLoaded_block_invoke;
    v26[3] = &__block_descriptor_tmp_14_6;
    v26[4] = DerivedStorage;
    v26[5] = v16;
    v27 = AssetPropertyValueFromXPCDictionary;
    v26[6] = v18;
    v26[7] = cf;
    dispatch_sync(v21, v26);
    goto LABEL_16;
  }

  if (CFEqual(a2, @"assetNotice_PropertyFailedToLoad"))
  {
    if (CFDictionaryGetValue(theDict, @"assetPayload_Property"))
    {
      LODWORD(cf) = 0;
      FigCFDictionaryGetInt32IfPresent();
      if (a1)
      {
        CFGetTypeID(a1);
        FigAssetGetTypeID();
      }
    }
  }

  else if (CFEqual(a2, @"assetTrackNotice_PropertyLoaded") || CFEqual(a2, @"assetTrackNotice_PropertyRevised"))
  {
    v23 = CFDictionaryGetValue(theDict, @"assetPayload_Property");
    if (v23)
    {
      remoteXPCAssetTrackClient_HandleCachedPropertyLoaded(a1, v23, a3);
    }
  }

  else if (CFEqual(a2, @"assetTrackNotice_PropertyFailedToLoad"))
  {
    v24 = CFDictionaryGetValue(theDict, @"assetPayload_Property");
    if (v24)
    {
      v25 = v24;
      LODWORD(v26[0]) = 0;
      FigCFDictionaryGetInt32IfPresent();
      remoteXPCAssetTrackClient_HandleCachedPropertyFailedToLoad(a1, v25, 0, v12);
    }
  }

  else if (a1 && CFEqual(a2, *MEMORY[0x1E69628A8]))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
  }

LABEL_18:
  *a5 = v14;
  if (v12)
  {
LABEL_19:
    CFRelease(v12);
  }

  return v5;
}

void remoteXPCAssetClient_ObjectPurgedCallback(const void *a1)
{
  v2 = CFGetTypeID(a1);
  if (v2 == FigAssetGetTypeID())
  {
    *(CMBaseObjectGetDerivedStorage() + 66) = 1;
  }

  else
  {
    v3 = CFGetTypeID(a1);
    if (v3 != FigAssetTrackGetTypeID())
    {
      return;
    }

    *(CMBaseObjectGetDerivedStorage() + 49) = 1;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetInt64();
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  if (Mutable)
  {

    CFRelease(Mutable);
  }
}

void remoteXPCAssetTrackClient_HandleCachedPropertyLoaded(const void *a1, const void *a2, void *a3)
{
  if (a1)
  {
    v5 = CFGetTypeID(a1);
    if (v5 == FigAssetTrackGetTypeID())
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v13 = 0;
      value = xpc_dictionary_get_value(a3, "LoadedValue");
      v8 = value;
      if (value)
      {
        LODWORD(value) = remoteXPCAssetTrack_DeserializeAndCreateAssetTrackPropertyValueFromXPCDictionary(value, a2, &v13);
        v9 = v13;
      }

      else
      {
        v9 = 0;
      }

      v10 = *(DerivedStorage + 16);
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 0x40000000;
      v11[2] = __remoteXPCAssetTrackClient_HandleCachedPropertyLoaded_block_invoke;
      v11[3] = &__block_descriptor_tmp_23_2;
      v11[4] = DerivedStorage;
      v11[5] = a2;
      v12 = value;
      v11[6] = v8;
      v11[7] = v9;
      dispatch_sync(v10, v11);
      if (v13)
      {
        CFRelease(v13);
      }
    }
  }
}

void remoteXPCAssetTrackClient_HandleCachedPropertyFailedToLoad(const void *a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a1)
  {
    v7 = CFGetTypeID(a1);
    TypeID = FigAssetTrackGetTypeID();
    if (a3)
    {
      if (v7 == TypeID)
      {
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        v10 = *(DerivedStorage + 16);
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 0x40000000;
        v11[2] = __remoteXPCAssetTrackClient_HandleCachedPropertyFailedToLoad_block_invoke;
        v11[3] = &__block_descriptor_tmp_24_2;
        v11[4] = DerivedStorage;
        v11[5] = a2;
        v12 = a3;
        v11[6] = a4;
        dispatch_sync(v10, v11);
      }
    }
  }
}

uint64_t remoteXPCAsset_DeserializeAndCreateAssetPropertyValueFromXPCDictionary(uint64_t a1, void *a2, CFTypeRef cf1, uint64_t *a4)
{
  if (CFEqual(cf1, @"assetProperty_FormatReader"))
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    cf = 0;
    uint64 = xpc_dictionary_get_uint64(a2, *MEMORY[0x1E69615A0]);
    if (uint64)
    {
      v10 = FigFormatReaderXPCRemoteRetainCopiedPlaybackProcessFormatReader(uint64, &cf);
      if (!v10)
      {
LABEL_4:
        v11 = 0;
        *a4 = cf;
        return v11;
      }
    }

    else
    {
      v14 = xpc_dictionary_get_uint64(a2, "MediaParserFormatReaderObjectID");
      if (!v14)
      {
        goto LABEL_4;
      }

      v15 = a1 ? *(DerivedStorage + 41) : 1;
      v10 = FigFormatReaderXPCRemoteRetainCopiedFormatReader(v14, v15, &cf);
      if (!v10)
      {
        goto LABEL_4;
      }
    }

    v11 = v10;
    v12 = cf;
LABEL_26:
    if (v12)
    {
      CFRelease(v12);
    }

    return v11;
  }

  if (CFEqual(cf1, @"assetProperty_CPEProtector"))
  {
    cf = 0;
    v12 = xpc_dictionary_get_uint64(a2, *MEMORY[0x1E69615A0]);
    if (!v12)
    {
      goto LABEL_9;
    }

    RemoteWithObjectID = FigCPEProtectorXPCRemoteRetainCopiedCPEProtector(v12, &cf);
LABEL_8:
    v11 = RemoteWithObjectID;
    v12 = cf;
    if (v11)
    {
      goto LABEL_26;
    }

LABEL_9:
    v11 = 0;
    *a4 = v12;
    return v11;
  }

  if (CFEqual(cf1, @"assetProperty_CustomURLLoader"))
  {
    cf = 0;
    v16 = xpc_dictionary_get_uint64(a2, *MEMORY[0x1E69615A0]);
    FigXPCMessageCopyCFObject();
    if (v16)
    {
      v11 = FigCustomURLLoaderRemoteCreateWithObjectID();
      v17 = cf;
      if (v11)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v17 = 0;
    }

    v11 = 0;
    *a4 = v17;
    cf = 0;
LABEL_25:
    v12 = 0;
    goto LABEL_26;
  }

  if (CFEqual(cf1, @"assetProperty_ContentKeyBoss"))
  {
    cf = 0;
    v12 = xpc_dictionary_get_uint64(a2, *MEMORY[0x1E69615A0]);
    if (!v12)
    {
      goto LABEL_9;
    }

    RemoteWithObjectID = FigContentKeyBossCreateRemoteWithObjectID(*MEMORY[0x1E695E480], v12, &cf);
    goto LABEL_8;
  }

  if (CFEqual(cf1, @"assetProperty_DefaultContentKeySession"))
  {

    return remoteXPCAsset_DeserializeAndCreateDefaultContentKeySessionFromXPCDictionary(a2, a4);
  }

  else if (CFEqual(cf1, @"assetProperty_HLSSessionKeys"))
  {

    return remoteXPCAsset_DeserializeAndCreateHLSSessionKeysFromXPCDictionary(a2, a4);
  }

  else if (CFEqual(cf1, @"assetProperty_Tracks"))
  {

    return remoteXPCAsset_DeserializeAndCreateTracksArrayFromXPCDictionary(a2, a4);
  }

  else if (CFEqual(cf1, @"assetProperty_HLSAlternates"))
  {

    return remoteXPCAsset_DeserializeAndCreateHLSAlternatesFromXPCDictionary(a2, a4);
  }

  else if (CFEqual(cf1, @"assetProperty_CommonMetadata") || CFEqual(cf1, @"assetProperty_QuickTimeMetadata") || CFEqual(cf1, @"assetProperty_QuickTimeUserData") || CFEqual(cf1, @"assetProperty_ISOUserData") || CFEqual(cf1, @"assetProperty_ID3Metadata") || CFEqual(cf1, @"assetProperty_iTunesMetadata") || CFEqual(cf1, @"assetProperty_VorbisCommentMetadata") || CFEqual(cf1, @"assetProperty_HLSMetadata") || CFEqual(cf1, @"assetProperty_ID3MetadataBC"))
  {

    return remoteXPCAsset_ConvertMetadataBinaryPListDataToArray();
  }

  else
  {

    return FigXPCMessageCopyCFObject();
  }
}

uint64_t remoteXPCAsset_DeserializeAndCreateDefaultContentKeySessionFromXPCDictionary(void *a1, uint64_t *a2)
{
  cf = 0;
  uint64 = xpc_dictionary_get_uint64(a1, *MEMORY[0x1E69615A0]);
  if (uint64 && (v4 = FigContentKeySessionRemoteCreateSessionForID(*MEMORY[0x1E695E480], uint64, &cf), uint64 = cf, v4))
  {
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    v4 = 0;
    *a2 = uint64;
  }

  return v4;
}

uint64_t remoteXPCAsset_DeserializeAndCreateHLSSessionKeysFromXPCDictionary(void *a1, __CFArray **a2)
{
  value = xpc_dictionary_get_value(a1, *MEMORY[0x1E69615C8]);
  if (value)
  {

    return FigContentKeyBossClientServerXPC_DeserializeAndCopyKeySpecifiers(value, a2);
  }

  else
  {
    remoteXPCAsset_DeserializeAndCreateHLSSessionKeysFromXPCDictionary_cold_1(&v5);
    return v5;
  }
}

uint64_t remoteXPCAsset_DeserializeAndCreateTracksArrayFromXPCDictionary(void *a1, __CFArray **a2)
{
  v4 = xpc_dictionary_get_value(a1, "TrackIDsAndTypes");
  v5 = xpc_dictionary_get_value(a1, "TrackObjectIDs");
  if (v4)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    goto LABEL_22;
  }

  v7 = v5;
  count = xpc_array_get_count(v4);
  v9 = xpc_array_get_count(v7);
  if (v9 != count)
  {
    remoteXPCAsset_DeserializeAndCreateTracksArrayFromXPCDictionary_cold_1(&cf);
    return cf;
  }

  if (!count)
  {
LABEL_22:
    v12 = 0;
    goto LABEL_23;
  }

  v10 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], v9, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    remoteXPCAsset_DeserializeAndCreateTracksArrayFromXPCDictionary_cold_3(&cf);
    return cf;
  }

  v12 = Mutable;
  if (count < 1)
  {
LABEL_23:
    v18 = 0;
    goto LABEL_24;
  }

  v25 = a2;
  v26 = v7;
  v13 = 0;
  v14 = count & 0x7FFFFFFF;
  while (1)
  {
    uint64 = xpc_array_get_uint64(v7, v13);
    v16 = xpc_array_get_uint64(v4, v13);
    value = 0;
    if (uint64)
    {
      break;
    }

    if (remoteXPCAsset_DeserializeAndCreateTracksArrayFromXPCDictionary_cold_2(&value, v12, &cf))
    {
      v18 = cf;
      a2 = v25;
      goto LABEL_29;
    }

LABEL_18:
    if (v14 == ++v13)
    {
      v18 = 0;
      a2 = v25;
      goto LABEL_24;
    }
  }

  v17 = v16;
  v18 = FigXPCRemoteClientRetainCopiedObject();
  v19 = value;
  if (v18)
  {
    goto LABEL_27;
  }

  if (value)
  {
    remoteXPCAssetTrack_GetObjectID(value, &cf);
LABEL_16:
    v23 = value;
    CFArrayAppendValue(v12, value);
    if (v23)
    {
      CFRelease(v23);
    }

    goto LABEL_18;
  }

  cf = 0;
  FigAssetTrackGetClassID();
  v18 = CMDerivedObjectCreate();
  v19 = cf;
  if (v18)
  {
    value = cf;
    goto LABEL_27;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigRemotePropertyCacheSetup(v10, (DerivedStorage + 16), "remoteFigAssetTrack_cache");
  value = cf;
  v21 = CMBaseObjectGetDerivedStorage();
  *(v21 + 8) = HIDWORD(v17);
  *(v21 + 12) = v17;
  v7 = v26;
  *v21 = uint64;
  v22 = FigXPCRemoteClientAssociateObject();
  if (!v22)
  {
    goto LABEL_16;
  }

  v18 = v22;
  v19 = value;
LABEL_27:
  a2 = v25;
  if (v19)
  {
    CFRelease(v19);
  }

LABEL_29:
  CFRelease(v12);
  v12 = 0;
LABEL_24:
  *a2 = v12;
  return v18;
}

uint64_t remoteXPCAsset_DeserializeAndCreateHLSAlternatesFromXPCDictionary(void *a1, __CFArray **a2)
{
  value = xpc_dictionary_get_value(a1, *MEMORY[0x1E69615C8]);
  if (value)
  {

    return FigAlternateCreateArrayOfAlternatesFromXPCObject(value, a2);
  }

  else
  {
    remoteXPCAsset_DeserializeAndCreateHLSAlternatesFromXPCDictionary_cold_1(&v5);
    return v5;
  }
}

uint64_t remoteXPCAssetTrack_GetObjectID(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 48))
  {
    remoteXPCAssetTrack_GetObjectID_cold_1(&v6);
    return v6;
  }

  else
  {
    v4 = DerivedStorage;
    if (*(DerivedStorage + 49))
    {
      remoteXPCAssetTrack_GetObjectID_cold_2(&v7);
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

CFMutableDictionaryRef FigRemotePropertyCacheSetup(const __CFAllocator *a1, dispatch_queue_t *a2, char *label)
{
  *a2 = dispatch_queue_create(label, 0);
  v5 = MEMORY[0x1E695E9D8];
  v6 = MEMORY[0x1E695E9E8];
  a2[1] = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  a2[2] = CFDictionaryCreateMutable(a1, 0, v5, v6);
  result = CFDictionaryCreateMutable(a1, 0, v5, v6);
  a2[3] = result;
  return result;
}

__CFString *remoteXPCAssetTrack_CopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  v5 = CFGetRetainCount(a1);
  if (*(DerivedStorage + 48))
  {
    v6 = " SERVER DIED";
  }

  else
  {
    v6 = "";
  }

  CFStringAppendFormat(Mutable, 0, @"<FigAssetTrackRemote(XPC) %p retainCount: %ld ObjectID %016llx TrackID %d MediaType '%c%c%c%c'%s>", a1, v5, *DerivedStorage, *(DerivedStorage + 8), HIBYTE(*(DerivedStorage + 12)), BYTE2(*(DerivedStorage + 12)), BYTE1(*(DerivedStorage + 12)), *(DerivedStorage + 12), v6);
  return Mutable;
}

void FigRemotePropertyCacheTeardown(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 8) = 0;
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 16) = 0;
  }

  v4 = *(a1 + 24);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 24) = 0;
  }

  if (*a1)
  {
    dispatch_release(*a1);
    *a1 = 0;
  }
}

uint64_t remoteXPCAssetTrack_DeserializeAndCreateAssetTrackPropertyValueFromXPCDictionary(int a1, CFTypeRef cf1, void *a3)
{
  if (CFEqual(cf1, @"FormatDescriptionArray"))
  {
    result = FigXPCMessageCopyFormatDescriptionArray();
    if (!result)
    {
      *a3 = 0;
    }
  }

  else if (CFEqual(cf1, @"CommonMetadata") || CFEqual(cf1, @"assetTrackProperty_QuickTimeMetadata") || CFEqual(cf1, @"assetTrackProperty_QuickTimeUserData") || CFEqual(cf1, @"assetTrackProperty_ISOUserData"))
  {

    return remoteXPCAsset_ConvertMetadataBinaryPListDataToArray();
  }

  else
  {

    return FigXPCMessageCopyCFObject();
  }

  return result;
}

uint64_t remoteXPCAssetTrack_GetTrackInfo(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 48))
  {
    remoteXPCAssetTrack_GetTrackInfo_cold_1(&v8);
    return v8;
  }

  else
  {
    if (a2)
    {
      *a2 = *(DerivedStorage + 8);
    }

    v6 = 0;
    if (a3)
    {
      *a3 = *(DerivedStorage + 12);
    }
  }

  return v6;
}

void remoteXPCAsset_sandboxRegisterURLdAddToXPCMessageAndCopyRegistration(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (!a1)
  {
    if (FigSandboxRegisterURLWithProcessAndCopyRegistration())
    {
      return;
    }

    goto LABEL_5;
  }

  if (!FigSandboxRegisterDirectoryURLWithProcessAndCopyRegistration())
  {
LABEL_5:
    *a6 = 0;
  }
}

void remoteXPCAsset_storeSandboxRegistration(const void *a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = *(DerivedStorage + 48);
  if (Mutable || (v6 = CFGetAllocator(a1), Mutable = CFSetCreateMutable(v6, 0, MEMORY[0x1E695E9F8]), (*(DerivedStorage + 48) = Mutable) != 0))
  {
    if (a2)
    {

      CFSetAddValue(Mutable, a2);
    }
  }

  else
  {
    remoteXPCAsset_storeSandboxRegistration_cold_1();
  }
}

__CFString *remoteXPCAsset_CopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  v5 = CFGetRetainCount(a1);
  if (*(DerivedStorage + 40))
  {
    v6 = " SERVER DIED";
  }

  else
  {
    v6 = "";
  }

  CFStringAppendFormat(Mutable, 0, @"<FigAssetRemote(XPC) %p retainCount: %ld ObjectID: %016llx%s>", a1, v5, *DerivedStorage, v6);
  return Mutable;
}

uint64_t remoteXPCAsset_CopyTrackByID(uint64_t a1, int a2, void *a3)
{
  theArray = 0;
  if (a2)
  {
    if (!a3)
    {
      remoteXPCAsset_CopyTrackByID_cold_1(&v18);
      v14 = v18;
      goto LABEL_19;
    }

    CMBaseObject = FigAssetGetCMBaseObject(a1);
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v6)
    {
      goto LABEL_16;
    }

    if (v6(CMBaseObject, @"assetProperty_Tracks", *MEMORY[0x1E695E480], &theArray) || theArray == 0)
    {
      goto LABEL_16;
    }

    v18 = 0;
    Count = CFArrayGetCount(theArray);
    if (Count < 1)
    {
      goto LABEL_16;
    }

    v9 = Count;
    v10 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v10);
      v12 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (v12)
      {
        if (!v12(ValueAtIndex, &v18, 0) && v18 == a2)
        {
          break;
        }
      }

      if (v9 == ++v10)
      {
        goto LABEL_16;
      }
    }

    v15 = CFRetain(ValueAtIndex);
    if (v15)
    {
      v14 = 0;
    }

    else
    {
LABEL_16:
      fig_log_get_emitter();
      v14 = FigSignalErrorAtGM();
      v15 = 0;
    }
  }

  else
  {
    remoteXPCAsset_CopyTrackByID_cold_2(&v18);
    v15 = 0;
    v14 = v18;
  }

  if (a3)
  {
    *a3 = v15;
  }

LABEL_19:
  if (theArray)
  {
    CFRelease(theArray);
  }

  return v14;
}

uint64_t remoteXPCAsset_CopyTracksWithMediaType(uint64_t a1, int a2, __CFArray **a3)
{
  theArray = 0;
  if (!a3)
  {
    remoteXPCAsset_CopyTracksWithMediaType_cold_2(&v23);
    return v23;
  }

  CMBaseObject = FigAssetGetCMBaseObject(a1);
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v6)
  {
    goto LABEL_23;
  }

  v7 = *MEMORY[0x1E695E480];
  v8 = v6(CMBaseObject, @"assetProperty_Tracks", *MEMORY[0x1E695E480], &theArray);
  v9 = theArray;
  if (v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = theArray == 0;
  }

  if (v10)
  {
    Mutable = 0;
    v12 = 4294955122;
    goto LABEL_25;
  }

  v21 = 0;
  Count = CFArrayGetCount(theArray);
  if (Count)
  {
    v14 = Count;
    Mutable = CFArrayCreateMutable(v7, Count, MEMORY[0x1E695E9C0]);
    if (Mutable)
    {
      if (v14 < 1)
      {
        v18 = 0;
      }

      else
      {
        for (i = 0; i != v14; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
          v17 = *(*(CMBaseObjectGetVTable() + 16) + 32);
          if (v17)
          {
            v18 = v17(ValueAtIndex, 0, &v21);
            if (v18)
            {
              v19 = 0;
            }

            else
            {
              v19 = v21 == a2;
            }

            if (v19)
            {
              CFArrayAppendValue(Mutable, ValueAtIndex);
              v18 = 0;
            }
          }

          else
          {
            v18 = -12782;
          }
        }
      }

      if (!CFArrayGetCount(Mutable))
      {
        CFRelease(Mutable);
        Mutable = 0;
      }

      if (Mutable)
      {
        v12 = v18;
      }

      else
      {
        v12 = 4294955122;
      }
    }

    else
    {
      remoteXPCAsset_CopyTracksWithMediaType_cold_1(&v21, &v23);
      v12 = v23;
    }
  }

  else
  {
LABEL_23:
    Mutable = 0;
    v12 = 4294955122;
  }

  v9 = theArray;
LABEL_25:
  *a3 = Mutable;
  if (v9)
  {
    CFRelease(v9);
  }

  return v12;
}

uint64_t OUTLINED_FUNCTION_8_71()
{

  return FigXPCRemoteClientSendSyncMessageCreatingReply();
}

uint64_t OUTLINED_FUNCTION_13_45()
{

  return FigXPCRemoteClientKillServerOnTimeout();
}

uint64_t RegisterFigDataQueueType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigDataQueueGetTypeID()
{
  MEMORY[0x19A8D3660](&FigDataQueueGetClassID_sRegisterFigDataQueueTypeOnce, RegisterFigDataQueueType);

  return CMBaseClassGetCFTypeID();
}

uint64_t FigDataQueueCreate(const __CFAllocator *a1, uint64_t a2, CMTime *a3, CMTime *a4, CFTypeRef *a5)
{
  cf = 0;
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (!a5)
  {
    FigDataQueueCreate_cold_6(&time1);
LABEL_21:
    value_low = LODWORD(time1.value);
    goto LABEL_22;
  }

  MEMORY[0x19A8D3660](&FigDataQueueGetClassID_sRegisterFigDataQueueTypeOnce, RegisterFigDataQueueType);
  v9 = CMDerivedObjectCreate();
  if (v9)
  {
    value_low = v9;
    goto LABEL_22;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = FigReentrantMutexCreate();
  *DerivedStorage = v11;
  if (!v11)
  {
    FigDataQueueCreate_cold_5(&time1);
    goto LABEL_21;
  }

  if ((a4->flags & 0x1D) == 1 && (a3->flags & 0x1D) == 1)
  {
    time1 = *a4;
    v21 = *a3;
    if (CMTimeCompare(&time1, &v21) >= 1)
    {
      FigDataQueueCreate_cold_4(&time1);
      goto LABEL_21;
    }
  }

  v12 = *&a4->value;
  *(DerivedStorage + 56) = a4->epoch;
  *(DerivedStorage + 40) = v12;
  v13 = *&a3->value;
  *(DerivedStorage + 80) = a3->epoch;
  *(DerivedStorage + 64) = v13;
  Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  *(DerivedStorage + 8) = Mutable;
  if (!Mutable)
  {
    FigDataQueueCreate_cold_3(&time1);
    goto LABEL_21;
  }

  TargetingWorkloopWithPriority = FigDispatchQueueCreateTargetingWorkloopWithPriority();
  *(DerivedStorage + 144) = TargetingWorkloopWithPriority;
  if (!TargetingWorkloopWithPriority)
  {
    FigDataQueueCreate_cold_2(&time1);
    goto LABEL_21;
  }

  v16 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, TargetingWorkloopWithPriority);
  *(DerivedStorage + 136) = v16;
  if (!v16)
  {
    FigDataQueueCreate_cold_1(&time1);
    goto LABEL_21;
  }

  v17 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  if (v17)
  {
    dispatch_set_context(*(DerivedStorage + 136), v17);
    v18 = CMBaseObjectGetDerivedStorage();
    dispatch_source_set_timer(*(v18 + 136), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_source_set_event_handler_f(*(DerivedStorage + 136), dq_PruneTimerFired);
    dispatch_source_set_cancel_handler_f(*(DerivedStorage + 136), FigCFRelease_10);
    dispatch_activate(*(DerivedStorage + 136));
    value_low = 0;
    *a5 = cf;
    return value_low;
  }

  value_low = 4294951505;
LABEL_22:
  if (cf)
  {
    CFRelease(cf);
  }

  return value_low;
}

void dq_PruneTimerFired()
{
  v0 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v0)
  {
    v1 = v0;
    CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    dq_Prune(v1);
    FigSimpleMutexUnlock();

    CFRelease(v1);
  }
}

void FigCFRelease_10(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t dq_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = DerivedStorage[1];
  if (v1)
  {
    CFRelease(v1);
    DerivedStorage[1] = 0;
  }

  v2 = DerivedStorage[4];
  if (v2)
  {
    CFRelease(v2);
    DerivedStorage[4] = 0;
  }

  v3 = DerivedStorage[2];
  if (v3)
  {
    CFRelease(v3);
    DerivedStorage[2] = 0;
  }

  v4 = DerivedStorage[16];
  if (v4)
  {
    CFRelease(v4);
    DerivedStorage[16] = 0;
  }

  v5 = DerivedStorage[14];
  if (v5)
  {
    dispatch_release(v5);
    DerivedStorage[14] = 0;
  }

  v6 = DerivedStorage[13];
  if (v6)
  {
    CFRelease(v6);
    DerivedStorage[13] = 0;
  }

  v7 = DerivedStorage[17];
  if (v7)
  {
    dispatch_source_cancel(v7);
    v8 = DerivedStorage[17];
    if (v8)
    {
      dispatch_release(v8);
      DerivedStorage[17] = 0;
    }
  }

  v9 = DerivedStorage[18];
  if (v9)
  {
    dispatch_release(v9);
    DerivedStorage[18] = 0;
  }

  return FigSimpleMutexDestroy();
}

__CFString *dq_CopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  FigSimpleMutexLock();
  memset(&v8, 0, sizeof(v8));
  v4 = *(DerivedStorage + 16);
  if (v4)
  {
    CMTimebaseGetTime(&v8, v4);
  }

  else
  {
    v8 = **&MEMORY[0x1E6960C70];
  }

  time = v8;
  Seconds = CMTimeGetSeconds(&time);
  CFStringAppendFormat(Mutable, 0, @"<FigDataQueue %p>: currentMediaTime:%.3f, generationCount:%llu", a1, *&Seconds, *(DerivedStorage + 24));
  FigSimpleMutexUnlock();
  return Mutable;
}

uint64_t dq_CopyProperty(const void *a1, uint64_t a2, const __CFAllocator *a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    dq_CopyProperty_cold_4(&cf);
    return cf;
  }

  v9 = DerivedStorage;
  FigSimpleMutexLock();
  if (!FigCFEqual())
  {
    if (FigCFEqual())
    {
      v13 = *(v9 + 8);
      if (v13)
      {
        Count = CFArrayGetCount(v13);
      }

      else
      {
        Count = 0;
      }

      v21 = *MEMORY[0x1E695E480];
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], Count, MEMORY[0x1E695E9C0]);
      if (Mutable)
      {
        v23 = Mutable;
        if (Count >= 1)
        {
          for (i = 0; i != Count; ++i)
          {
            v25 = CFDictionaryCreateMutable(v21, 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            ValueAtIndex = CFArrayGetValueAtIndex(*(v9 + 8), i);
            CFDictionarySetValue(v25, @"SampleBuffer", ValueAtIndex[2]);
            FigCFDictionarySetInt32();
            FigCFDictionarySetInt64();
            CFArrayAppendValue(v23, v25);
            if (v25)
            {
              CFRelease(v25);
            }
          }
        }

        if (*(v9 + 32))
        {
          v27 = CFDictionaryCreateMutable(v21, 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          CFDictionarySetValue(v27, @"SampleBuffer", *(*(v9 + 32) + 16));
          FigCFDictionarySetInt32();
          FigCFDictionarySetInt64();
          v32.length = CFArrayGetCount(v23);
          v32.location = 0;
          v28 = CFArrayBSearchValues(v23, v32, v27, FigDataQueueDumpQueue_comparatorEntryPTS, 0);
          if (v28 > CFArrayGetCount(v23))
          {
            v28 = CFArrayGetCount(v23);
          }

          CFArrayInsertValueAtIndex(v23, v28, v27);
        }

        v20 = 0;
        *a4 = v23;
      }

      else
      {
        dq_CopyProperty_cold_3(&cf);
        v20 = cf;
      }
    }

    else
    {
      v20 = 0;
      if (FigCFEqual())
      {
        *a4 = dq_CopyDebugDescription(a1);
      }
    }

    goto LABEL_32;
  }

  v10 = CMBaseObjectGetDerivedStorage();
  v11 = FigCFWeakReferenceHolderCopyReferencedObject();
  cf = v11;
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v15 = CFDictionaryCreate(a3, &kFigSampleBufferConsumerForDataQueueOption_ConsumeAsynchronously, MEMORY[0x1E695E4D0], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (v15)
    {
      v16 = v15;
      v17 = FigSampleBufferConsumerForDataQueueCreate(a1, a3, v15, &cf);
      if (v17)
      {
        v20 = v17;
        v12 = 0;
      }

      else
      {
        v18 = *(v10 + 128);
        if (v18)
        {
          CFRelease(v18);
          *(v10 + 128) = 0;
        }

        v19 = FigCFWeakReferenceHolderCreateWithReferencedObject();
        *(v10 + 128) = v19;
        if (v19)
        {
          v20 = 0;
          v12 = cf;
          cf = 0;
        }

        else
        {
          dq_CopyProperty_cold_1(&v31);
          v12 = 0;
          v20 = v31;
        }
      }

      CFRelease(v16);
      if (cf)
      {
        CFRelease(cf);
      }

      if (v20)
      {
        goto LABEL_32;
      }
    }

    else
    {
      dq_CopyProperty_cold_2(&v31);
      v12 = 0;
      v20 = v31;
      if (v31)
      {
        goto LABEL_32;
      }
    }
  }

  v20 = 0;
  *a4 = v12;
LABEL_32:
  FigSimpleMutexUnlock();
  return v20;
}

uint64_t dq_SetProperty(const void *a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    if (FigCFEqual())
    {
      if (a3 && (TypeID = CMTimebaseGetTypeID(), TypeID != CFGetTypeID(a3)))
      {

        return FigSignalErrorAtGM();
      }

      else
      {
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        FigSimpleMutexLock();
        if (*(DerivedStorage + 16))
        {
          CMNotificationCenterGetDefaultLocalCenter();
          FigNotificationCenterRemoveWeakListener();
          v7 = *(DerivedStorage + 16);
        }

        else
        {
          v7 = 0;
        }

        *(DerivedStorage + 16) = a3;
        if (a3)
        {
          CFRetain(a3);
        }

        if (v7)
        {
          CFRelease(v7);
        }

        if (a3 && (CMNotificationCenterGetDefaultLocalCenter(), FigNotificationCenterAddWeakListener(), CMTimebaseGetRate(a3) != 0.0))
        {
          dq_Prune(a1);
        }

        else
        {
          v9 = CMBaseObjectGetDerivedStorage();
          dispatch_source_set_timer(*(v9 + 136), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
        }

        FigSimpleMutexUnlock();
        return 0;
      }
    }

    else
    {
      return 4294954509;
    }
  }

  else
  {
    dq_SetProperty_cold_1(&v10);
    return v10;
  }
}

uint64_t FigDataQueueDumpQueue_comparatorEntryPTS(const __CFDictionary *a1, const __CFDictionary *a2)
{
  Value = CFDictionaryGetValue(a1, @"SampleBuffer");
  v4 = CFDictionaryGetValue(a2, @"SampleBuffer");
  memset(&v9, 0, sizeof(v9));
  if (Value)
  {
    CMSampleBufferGetOutputPresentationTimeStamp(&v9, Value);
  }

  else
  {
    v9 = **&MEMORY[0x1E6960C70];
  }

  memset(&v8, 0, sizeof(v8));
  if (v4)
  {
    CMSampleBufferGetOutputPresentationTimeStamp(&v8, v4);
  }

  else
  {
    v8 = **&MEMORY[0x1E6960C70];
  }

  time1 = v9;
  v6 = v8;
  return CMTimeCompare(&time1, &v6);
}

uint64_t dq_TimebaseRateChangedCallback(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (CMTimebaseGetRate(*(DerivedStorage + 16)) == 0.0)
  {
    v4 = CMBaseObjectGetDerivedStorage();
    dispatch_source_set_timer(*(v4 + 136), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
  }

  else
  {
    dq_Prune(a2);
  }

  return FigSimpleMutexUnlock();
}

void dq_Prune(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  ArrayRemovingStaleFrames = dq_CreateArrayRemovingStaleFrames(a1, 1);
  v4 = ArrayRemovingStaleFrames;
  v5 = *(DerivedStorage + 8);
  *(DerivedStorage + 8) = ArrayRemovingStaleFrames;
  if (ArrayRemovingStaleFrames)
  {
    CFRetain(ArrayRemovingStaleFrames);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  dq_EvaluateAndFireLWMTriggerCallback(a1);
  v6 = CMBaseObjectGetDerivedStorage();
  memset(&v12, 0, sizeof(v12));
  CMTimeMake(&v12, 40, 10000);
  if (*(v6 + 52))
  {
    time1 = *(v6 + 40);
    time2 = **&MEMORY[0x1E6960CC0];
    if (CMTimeCompare(&time1, &time2) >= 1)
    {
      time1 = *(v6 + 40);
      time2 = *(v6 + 40);
      v9 = v12;
      if (CMTimeCompare(&time2, &v9) < 0)
      {
        time1 = v12;
      }

      time2 = time1;
      v7 = (CMTimeGetSeconds(&time2) * 500000000.0);
      v8 = dispatch_time(0, v7);
      dispatch_source_set_timer(*(v6 + 136), v8, v7, 0);
    }
  }
}

__CFArray *dq_CreateArrayRemovingStaleFrames(const void *a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *(DerivedStorage + 8);
  if (v5)
  {
    Count = CFArrayGetCount(v5);
  }

  else
  {
    Count = 0;
  }

  v19 = **&MEMORY[0x1E6960C70];
  memset(&v18, 0, sizeof(v18));
  if (a2)
  {
    CMTimeMake(&v18, 50, 1000);
  }

  else
  {
    v18 = **&MEMORY[0x1E6960CC0];
  }

  v7 = CFGetAllocator(a1);
  Mutable = CFArrayCreateMutable(v7, 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v9 = *(DerivedStorage + 16);
    if (v9)
    {
      Rate = CMTimebaseGetRate(v9);
      CMTimebaseGetTime(&v19, *(DerivedStorage + 16));
    }

    else
    {
      Rate = 0.0;
    }

    if (Count >= 1)
    {
      for (i = 0; Count != i; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 8), i);
        memset(&v17, 0, sizeof(v17));
        CMSampleBufferGetOutputPresentationTimeStamp(&v17, ValueAtIndex[2]);
        if (*(ValueAtIndex + 8) == 2 || *(DerivedStorage + 24) != ValueAtIndex[3])
        {
          continue;
        }

        if (Rate <= 0.0)
        {
          if (Rate < 0.0)
          {
            memset(&v16, 0, sizeof(v16));
            lhs = v19;
            v14 = v18;
            CMTimeAdd(&v16, &lhs, &v14);
            lhs = v17;
            v14 = v16;
            if ((CMTimeCompare(&lhs, &v14) & 0x80000000) == 0)
            {
              continue;
            }
          }
        }

        else
        {
          memset(&v16, 0, sizeof(v16));
          lhs = v19;
          v14 = v18;
          CMTimeSubtract(&v16, &lhs, &v14);
          lhs = v17;
          v14 = v16;
          if (CMTimeCompare(&lhs, &v14) < 1)
          {
            continue;
          }
        }

        CFArrayAppendValue(Mutable, ValueAtIndex);
      }
    }
  }

  return Mutable;
}

void dq_EvaluateAndFireLWMTriggerCallback(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 96))
  {
    v3 = DerivedStorage;
    v4 = CMBaseObjectGetDerivedStorage();
    v5 = *(v4 + 88);
    dq_UpdateWaterLevelState(a1);
    if (*(v4 + 88) == 2 && (!*(v4 + 120) || v5 != 2))
    {
      *(v3 + 120) = 1;
      v7 = *(v3 + 104);
      v6 = *(v3 + 112);
      v8 = *(v3 + 96);
      if (v6)
      {
        if (v7)
        {
          v11 = *(v3 + 96);
          v9 = CFRetain(*(v3 + 104));
          v8 = v11;
          v7 = v9;
          v6 = *(v3 + 112);
        }

        block[0] = MEMORY[0x1E69E9820];
        block[1] = 0x40000000;
        block[2] = __dq_EvaluateAndFireLWMTriggerCallback_block_invoke;
        block[3] = &__block_descriptor_tmp_113;
        block[4] = v8;
        block[5] = v7;
        dispatch_async(v6, block);
      }

      else
      {
        v10 = *(v3 + 104);

        v8(v10);
      }
    }
  }
}

void dq_UpdateWaterLevelState(const void *a1)
{
  v19 = **&MEMORY[0x1E6960CC0];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  ArrayRemovingStaleFrames = dq_CreateArrayRemovingStaleFrames(a1, 0);
  v4 = ArrayRemovingStaleFrames;
  if (ArrayRemovingStaleFrames)
  {
    Count = CFArrayGetCount(ArrayRemovingStaleFrames);
    if (Count)
    {
      v6 = Count;
      ValueAtIndex = CFArrayGetValueAtIndex(v4, 0);
      memset(&v18, 0, sizeof(v18));
      CMSampleBufferGetOutputPresentationTimeStamp(&v18, ValueAtIndex[2]);
      CMSampleBufferGetOutputDuration(&v19, ValueAtIndex[2]);
      v8 = CFArrayGetValueAtIndex(v4, v6 - 1);
      memset(&v17, 0, sizeof(v17));
      CMSampleBufferGetOutputPresentationTimeStamp(&lhs, v8[2]);
      CMSampleBufferGetOutputDuration(&rhs, v8[2]);
      CMTimeAdd(&v17, &lhs, &rhs);
      rhs = v17;
      v14 = v18;
      CMTimeSubtract(&lhs, &rhs, &v14);
      v19 = lhs;
    }
  }

  v9 = *(DerivedStorage + 52) & 0x1D;
  v10 = *(DerivedStorage + 76);
  v11 = *(DerivedStorage + 88);
  if (v9 == 1)
  {
    lhs = v19;
    rhs = *(DerivedStorage + 40);
    if (CMTimeCompare(&lhs, &rhs) <= 0)
    {
      *(DerivedStorage + 88) = 2;
      if (!v4)
      {
        return;
      }

      goto LABEL_16;
    }
  }

  if ((v10 & 0x1D) != 1 || ((lhs = v19, rhs = *(DerivedStorage + 64), v12 = CMTimeCompare(&lhs, &rhs), v12 < 0) ? (v13 = 1) : (v13 = 3), v12 < 0 && v9 != 1))
  {
    v13 = 0;
  }

  *(DerivedStorage + 88) = v13;
  if (v11 == 2)
  {
    *(DerivedStorage + 120) = 0;
  }

  if (v4)
  {
LABEL_16:
    CFRelease(v4);
  }
}

uint64_t dq_GetWaterLevelState(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  dq_UpdateWaterLevelState(a1);
  v3 = *(DerivedStorage + 88);
  FigSimpleMutexUnlock();
  return v3;
}

uint64_t dq_InstallLowWaterTrigger(const void *a1, uint64_t a2, const void *a3, NSObject *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v9 = DerivedStorage;
    FigSimpleMutexLock();
    if (*(v9 + 96))
    {
      dq_InstallLowWaterTrigger_cold_1(&v13);
      v11 = v13;
    }

    else if ((*(v9 + 52) & 0x1D) == 1)
    {
      *(v9 + 96) = a2;
      if (a3)
      {
        v10 = CFRetain(a3);
      }

      else
      {
        v10 = 0;
      }

      *(v9 + 104) = v10;
      if (a4)
      {
        dispatch_retain(a4);
      }

      *(v9 + 112) = a4;
      dq_EvaluateAndFireLWMTriggerCallback(a1);
      v11 = 0;
    }

    else
    {
      dq_InstallLowWaterTrigger_cold_2(&v14);
      v11 = v14;
    }

    FigSimpleMutexUnlock();
  }

  else
  {
    dq_InstallLowWaterTrigger_cold_3(&v15);
    return v15;
  }

  return v11;
}

uint64_t dq_RemoveLowWaterTrigger()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (DerivedStorage[12])
  {
    DerivedStorage[12] = 0;
    v1 = DerivedStorage[13];
    if (v1)
    {
      CFRelease(v1);
      DerivedStorage[13] = 0;
    }

    v2 = DerivedStorage[14];
    if (v2)
    {
      dispatch_release(v2);
      v3 = 0;
      DerivedStorage[14] = 0;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    dq_RemoveLowWaterTrigger_cold_1(&v5);
    v3 = v5;
  }

  FigSimpleMutexUnlock();
  return v3;
}

uint64_t dq_Flush(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  ++*(DerivedStorage + 24);
  dq_Prune(a1);
  v3 = FigCFCopyCompactDescription();
  v4 = *(DerivedStorage + 32);
  if (v4 && (v5 = *(v4 + 16)) != 0)
  {
    memset(&v12, 0, sizeof(v12));
    CMSampleBufferGetOutputPresentationTimeStamp(&v12, v5);
    v6 = *MEMORY[0x1E695E480];
    time = v12;
    Seconds = CMTimeGetSeconds(&time);
    v8 = CFStringCreateWithFormat(v6, 0, @"lastSampledBuffer->pts: %1.3f", *&Seconds);
  }

  else
  {
    v8 = CFRetain(@"lastSampledBuffer: NULL");
  }

  v9 = v8;
  FigSimpleMutexUnlock();
  if (v3)
  {
    CFRelease(v3);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  return 0;
}

uint64_t FigDataQueueBufferInfo_compareOutputPTS(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  memset(&v8, 0, sizeof(v8));
  CMSampleBufferGetOutputPresentationTimeStamp(&v8, v2);
  memset(&v7, 0, sizeof(v7));
  CMSampleBufferGetOutputPresentationTimeStamp(&v7, v3);
  time1 = v8;
  v5 = v7;
  return CMTimeCompare(&time1, &v5);
}

void *FigDataQueueBufferInfo_Init(void *result)
{
  result[2] = 0;
  result[3] = 0;
  result[4] = 0;
  return result;
}

void FigDataQueueBufferInfo_Finalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 16) = 0;
  }
}

uint64_t FigDataQueueBufferInfo_Equal(uint64_t a1, uint64_t a2)
{
  result = FigCFEqual();
  if (result)
  {
    return *(a1 + 24) == *(a2 + 24);
  }

  return result;
}

CFStringRef FigDataQueueBufferInfo_CopyDebugDesc(uint64_t a1)
{
  if (!a1)
  {
    return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"[BufferInfo %p]", 0);
  }

  v2 = *(a1 + 16);
  memset(&v9, 0, sizeof(v9));
  CMSampleBufferGetOutputPresentationTimeStamp(&v9, v2);
  v3 = *(a1 + 32);
  if (v3 > 2)
  {
    v4 = "Unknown";
  }

  else
  {
    v4 = off_1E74947A8[v3];
  }

  v6 = *MEMORY[0x1E695E480];
  time = v9;
  Seconds = CMTimeGetSeconds(&time);
  return CFStringCreateWithFormat(v6, 0, @"[%p] sbuf:%p pts:%.5f gen=%llu state=%s ", a1, v2, *&Seconds, *(a1 + 24), v4);
}

uint64_t dq_BufferPTSIsWithinSamplingTimeWithPrecision(__int128 *a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 12))
  {
    memset(&v11, 0, sizeof(v11));
    *&time1.start.value = *a2;
    time1.start.epoch = *(a2 + 16);
    *&v7.start.value = *a3;
    v7.start.epoch = *(a3 + 16);
    CMTimeSubtract(&v11, &time1.start, &v7.start);
    memset(&v10, 0, sizeof(v10));
    *&time1.start.value = *a3;
    time1.start.epoch = *(a3 + 16);
    CMTimeMultiply(&v10, &time1.start, 2);
    memset(&time1, 0, sizeof(time1));
    v7.start = v11;
    duration = v10;
    CMTimeRangeMake(&time1, &v7.start, &duration);
    *&v7.start.value = *&time1.start.value;
    *&v7.start.epoch = *&time1.start.epoch;
    v6 = *a1;
    *&v7.duration.timescale = *&time1.duration.timescale;
    *&duration.value = v6;
    duration.epoch = *(a1 + 2);
    return CMTimeRangeContainsTime(&v7, &duration);
  }

  else
  {
    *&time1.start.value = *a1;
    time1.start.epoch = *(a1 + 2);
    *&v7.start.value = *a2;
    v7.start.epoch = *(a2 + 16);
    return CMTimeCompare(&time1.start, &v7.start) == 0;
  }
}

CMTime *OUTLINED_FUNCTION_4_128(uint64_t a1, uint64_t a2, CMTime *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  a12 = 0;
  a13 = 0;
  a11 = 0;
  v14 = *(a1 + 16);

  return CMSampleBufferGetOutputPresentationTimeStamp(&a11, v14);
}

uint64_t FigStreamTrackCanMetadataFormatsSync(const opaqueCMFormatDescription *a1, const opaqueCMFormatDescription *a2)
{
  MediaSubType = CMFormatDescriptionGetMediaSubType(a1);
  if (MediaSubType != CMFormatDescriptionGetMediaSubType(a2))
  {
    return 0;
  }

  result = 0;
  if (a1 && a2)
  {
    if (MediaSubType == 1835360888)
    {

      return CMFormatDescriptionEqual(a1, a2);
    }

    else if (MediaSubType == 1701671783)
    {
      CMFormatDescriptionGetExtensions(a1);
      CMFormatDescriptionGetExtensions(a2);

      return FigCFEqual();
    }

    else
    {
      return 1;
    }
  }

  return result;
}

BOOL FigStreamTrackCanTracksBeSyncPairsIgnoringDiscontinuity(uint64_t a1, uint64_t a2)
{
  if (FigStreamTrackGetMediaType(a1) == 1835365473 && FigStreamTrackGetMediaType(a2) == 1835365473)
  {
    SubstreamID = FigStreamTrackGetSubstreamID(a1);
    return SubstreamID == FigStreamTrackGetSubstreamID(a2) && FigStreamTrackCanMetadataFormatsSync(*(a1 + 56), *(a2 + 56)) != 0;
  }

  else
  {
    MediaType = FigStreamTrackGetMediaType(a1);
    return MediaType == FigStreamTrackGetMediaType(a2);
  }
}

uint64_t FigStreamTrackGetCAImageQueueFlagsForTrack(uint64_t a1, int *a2, int *a3)
{
  cf[20] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 400);
  cf[0] = *MEMORY[0x1E695E4C0];
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (!v6)
  {
    v8 = 0;
    v9 = 4;
    goto LABEL_13;
  }

  v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v7)
  {
    v6 = 4294954514;
    goto LABEL_7;
  }

  v6 = v7(v6, *MEMORY[0x1E69610B8], *MEMORY[0x1E695E480], cf);
  if (v6 || cf[0] != *MEMORY[0x1E695E4D0])
  {
LABEL_7:
    if (FigAlternateGetAllowedAOCP(*(a1 + 456)))
    {
      v8 = 4;
      v9 = 2097156;
      goto LABEL_13;
    }
  }

  if (dword_1EAF177F0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v9 = 2097156;
  v8 = 2097156;
LABEL_13:
  *a2 = v8;
  *a3 = v9;
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  return v6;
}

uint64_t RegisterFigHLSPersistentStoreBaseType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigHLSPersistentStoreGetTypeID()
{
  MEMORY[0x19A8D3660](&FigHLSPersistentStoreGetClassID_sRegisterFigPersistentStoreBaseTypeOnce, RegisterFigHLSPersistentStoreBaseType);

  return CMBaseClassGetCFTypeID();
}

uint64_t FigHLSPersistentStoreCreateAtURL(const void *a1, uint64_t a2, const __CFDictionary *a3, int a4, void *a5)
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (!a2)
  {
    FigHLSPersistentStoreCreateAtURL_cold_19(buffer);
    return *buffer;
  }

  if (!a5)
  {
    FigHLSPersistentStoreCreateAtURL_cold_18(buffer);
    return *buffer;
  }

  if (FigCFURLIsLocalResource() != 1)
  {
    FigHLSPersistentStoreCreateAtURL_cold_1(buffer);
    return *buffer;
  }

  MEMORY[0x19A8D3660](&FigHLSPersistentStoreGetClassID_sRegisterFigPersistentStoreBaseTypeOnce, RegisterFigHLSPersistentStoreBaseType);
  v10 = CMDerivedObjectCreate();
  if (v10)
  {
    return v10;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a3)
  {
    Value = CFDictionaryGetValue(a3, @"HLSStoreClientAuditToken");
    if (Value)
    {
      v74 = CFRetain(Value);
      *(DerivedStorage + 144) = v74;
      if (v74)
      {
        *buffer = 0u;
        v82 = 0u;
        if (CFDataGetLength(v74) == 32)
        {
          v75 = *(DerivedStorage + 144);
          v88.length = CFDataGetLength(v75);
          v88.location = 0;
          CFDataGetBytes(v75, v88, buffer);
          v76 = *buffer;
          v77 = v82;
          *(DerivedStorage + 160) = *buffer;
          *(DerivedStorage + 176) = v77;
          *cf = v76;
          v80 = v77;
          if (!FigServer_GetClientPIDFromAuditToken())
          {
            goto LABEL_89;
          }

          *cf = *buffer;
          v80 = v82;
          if (FigServer_IsWritableFileOpeningOrCreationPermittedForAuditToken() == 1)
          {
            goto LABEL_89;
          }

          FigHLSPersistentStoreCreateAtURL_cold_3(cf);
        }

        else
        {
          FigHLSPersistentStoreCreateAtURL_cold_2(cf);
        }

        BootFromFile = LODWORD(cf[0]);
        if (LODWORD(cf[0]))
        {
          return BootFromFile;
        }

        goto LABEL_6;
      }
    }

    else
    {
      *(DerivedStorage + 144) = 0;
    }

LABEL_89:
    FigHLSPersistentStoreCreateAtURL_cold_4(a3, DerivedStorage);
  }

LABEL_6:
  if (a1)
  {
    v12 = CFRetain(a1);
  }

  else
  {
    v12 = 0;
  }

  *(DerivedStorage + 104) = v12;
  *(DerivedStorage + 128) = 0;
  *(DerivedStorage + 120) = FigReadWriteLockCreate();
  AllocatorForMedia = FigGetAllocatorForMedia();
  v14 = MEMORY[0x1E695E9D8];
  v15 = MEMORY[0x1E695E9E8];
  *(DerivedStorage + 88) = CFDictionaryCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v16 = FigGetAllocatorForMedia();
  *(DerivedStorage + 56) = CFDictionaryCreateMutable(v16, 0, v14, v15);
  v17 = FigGetAllocatorForMedia();
  *(DerivedStorage + 208) = CFDictionaryCreateMutable(v17, 0, v14, v15);
  v18 = FigGetAllocatorForMedia();
  *(DerivedStorage + 216) = CFDictionaryCreateMutable(v18, 0, v14, v15);
  *(DerivedStorage + 136) = 0;
  FigCFDictionaryGetBooleanIfPresent();
  *(DerivedStorage + 136) = 0;
  if (!*(DerivedStorage + 56))
  {
    FigHLSPersistentStoreCreateAtURL_cold_20(buffer);
    return *buffer;
  }

  *(DerivedStorage + 112) = a4 == 1;
  v19 = FigFileConvertURLToAbsoluteAndMarkAsDirectory();
  if (v19)
  {
    BootFromFile = v19;
    if (v19 == -17913)
    {
      FigBytePumpGetFigBaseObject(v19);
      return 4294949383;
    }

    return BootFromFile;
  }

  v20 = FigGetAllocatorForMedia();
  v21 = MEMORY[0x1E695E9E8];
  *(DerivedStorage + 96) = CFDictionaryCreateMutable(v20, 0, v14, MEMORY[0x1E695E9E8]);
  v22 = FigGetAllocatorForMedia();
  Mutable = CFDictionaryCreateMutable(v22, 0, v14, v21);
  CFDictionarySetValue(*(DerivedStorage + 96), @"Default", Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v24 = *(DerivedStorage + 8);
  if (!FigCFURLDoesDirectoryExist())
  {
    goto LABEL_21;
  }

  v25 = FigGetAllocatorForMedia();
  v26 = CFURLCreateCopyAppendingPathComponent(v25, v24, @"root.xml", 0);
  if (!v26)
  {
    FigHLSPersistentStoreCreateAtURL_cold_6();
    goto LABEL_21;
  }

  v27 = v26;
  v28 = FigGetAllocatorForMedia();
  v29 = CFURLCreateCopyAppendingPathComponent(v28, v24, @"boot.xml", 0);
  if (!v29)
  {
    FigHLSPersistentStoreCreateAtURL_cold_5(v27);
    goto LABEL_21;
  }

  v30 = v29;
  if (!FigFileDoesFileExist())
  {
    CFRelease(v27);
    CFRelease(v30);
    goto LABEL_21;
  }

  DoesFileExist = FigFileDoesFileExist();
  CFRelease(v27);
  CFRelease(v30);
  if (!DoesFileExist)
  {
LABEL_21:
    if (*(DerivedStorage + 112))
    {
      v33 = *(DerivedStorage + 8);
      v85 = 0;
      v83 = 0;
      v84 = 0;
      v34 = FigGetAllocatorForMedia();
      v35 = CFStringCreateWithCString(v34, "MoviePackage", 0x8000100u);
      if (!v35)
      {
        FigHLSPersistentStoreCreateAtURL_cold_13(buffer);
        v46 = 0;
        v42 = 0;
        BootFromFile = *buffer;
        goto LABEL_63;
      }

      v36 = v35;
      TempDirectory = FigFileCreateTempDirectory();
      if (TempDirectory)
      {
        BootFromFile = TempDirectory;
        if (TempDirectory != -17913)
        {
LABEL_126:
          v46 = 0;
          v42 = 0;
          goto LABEL_61;
        }
      }

      else
      {
        v38 = FigDirectoryEnableDirStatsTracking();
        if (v38 == -17916)
        {
          v39 = 0;
        }

        else
        {
          v39 = v38;
        }

        if (!v39)
        {
          FigGetAllocatorForMedia();
          BlockBufferWithCFString = FigCreateBlockBufferWithCFString();
          if (!BlockBufferWithCFString)
          {
            v41 = FigGetAllocatorForMedia();
            v42 = CFURLCreateCopyAppendingPathComponent(v41, v85, @"root.xml", 0);
            if (!v42)
            {
              FigHLSPersistentStoreCreateAtURL_cold_12(buffer);
              v46 = 0;
              goto LABEL_132;
            }

            v43 = FigXMLNodeWriteXMLFileFromBlockBufferAtURL(v84, 0x1F0B33258, v42);
            if (v43)
            {
              if (v43 == -17913)
              {
                BootFromFile = FigSignalErrorAtGM();
                FigBytePumpGetFigBaseObject(BootFromFile);
LABEL_130:
                v46 = 0;
                goto LABEL_61;
              }

              v44 = FigSignalErrorAtGM();
            }

            else
            {
              FigGetAllocatorForMedia();
              v44 = FigCreateBlockBufferWithCFString();
              if (!v44)
              {
                v45 = FigGetAllocatorForMedia();
                v46 = CFURLCreateCopyAppendingPathComponent(v45, v85, @"boot.xml", 0);
                if (!v46)
                {
                  FigHLSPersistentStoreCreateAtURL_cold_11(buffer);
                  goto LABEL_132;
                }

                v47 = FigXMLNodeWriteXMLFileFromBlockBufferAtURL(v83, 0x1F0B33258, v46);
                if (v47)
                {
                  if (v47 == -17913)
                  {
                    BootFromFile = FigSignalErrorAtGM();
                    FigBytePumpGetFigBaseObject(BootFromFile);
                  }

                  else
                  {
                    BootFromFile = FigSignalErrorAtGM();
                  }
                }

                else
                {
                  BootFromFile = FigFileRename();
                  if (*__error() == 18)
                  {
                    *buffer = 0;
                    cf[0] = 0;
                    v86 = 0;
                    if (!FigCFURLDoesDirectoryExist())
                    {
                      makeDirectoryAtURL();
                    }

                    if (!FigCFURLDoesDirectoryExist())
                    {
                      FigHLSPersistentStoreCreateAtURL_cold_10(&v87);
                      v52 = 0;
                      goto LABEL_144;
                    }

                    v49 = FigFileForkOpenMainByCFURL();
                    if (v49)
                    {
                      BootFromFile = v49;
                      if (v49 == -17913)
                      {
LABEL_137:
                        BootFromFile = FigSignalErrorAtGM();
                        FigBytePumpGetFigBaseObject(BootFromFile);
                      }
                    }

                    else
                    {
                      v50 = FigFileLock();
                      if (!v50)
                      {
                        v51 = FigGetAllocatorForMedia();
                        v52 = CFURLCreateCopyAppendingPathComponent(v51, v33, @"root.xml", 0);
                        if (v52)
                        {
                          if (FigFileDoesFileExist())
                          {
                            BootFromFile = 0;
LABEL_43:
                            v53 = 0;
LABEL_53:
                            FigFileUnlock();
                            FigFileForkClose();
                            if (v52)
                            {
                              CFRelease(v52);
                            }

                            if (v53)
                            {
                              CFRelease(v53);
                            }

                            if (v86)
                            {
                              CFRelease(v86);
                            }

                            if (cf[0])
                            {
                              CFRelease(cf[0]);
                            }

                            goto LABEL_61;
                          }

                          v54 = FigGetAllocatorForMedia();
                          v53 = CFURLCreateCopyAppendingPathComponent(v54, v33, @"boot.xml", 0);
                          if (v53)
                          {
                            if (FigFileDoesFileExist())
                            {
                              v55 = FigFileDeleteFile();
                              if (v55)
                              {
                                BootFromFile = v55;
                                if (v55 != -17913)
                                {
                                  goto LABEL_53;
                                }

                                goto LABEL_151;
                              }
                            }

                            FigGetAllocatorForMedia();
                            v56 = FigCreateBlockBufferWithCFString();
                            if (!v56)
                            {
                              v57 = FigXMLNodeWriteXMLFileFromBlockBufferAtURL(cf[0], 0x1F0B33258, v53);
                              if (v57)
                              {
                                if (v57 == -17913)
                                {
                                  goto LABEL_151;
                                }

LABEL_153:
                                v56 = FigSignalErrorAtGM();
                                goto LABEL_154;
                              }

                              FigGetAllocatorForMedia();
                              v56 = FigCreateBlockBufferWithCFString();
                              if (!v56)
                              {
                                v58 = FigXMLNodeWriteXMLFileFromBlockBufferAtURL(v86, 0x1F0B33258, v52);
                                BootFromFile = v58;
                                if (!v58)
                                {
                                  goto LABEL_53;
                                }

                                if (v58 == -17913)
                                {
LABEL_151:
                                  BootFromFile = FigSignalErrorAtGM();
                                  FigBytePumpGetFigBaseObject(BootFromFile);
                                  goto LABEL_53;
                                }

                                goto LABEL_153;
                              }
                            }

LABEL_154:
                            BootFromFile = v56;
                            goto LABEL_53;
                          }

                          FigHLSPersistentStoreCreateAtURL_cold_8(&v87);
LABEL_145:
                          BootFromFile = v87;
                          goto LABEL_53;
                        }

                        FigHLSPersistentStoreCreateAtURL_cold_9(&v87);
LABEL_144:
                        v53 = 0;
                        goto LABEL_145;
                      }

                      BootFromFile = v50;
                      if (v50 == -17913)
                      {
                        goto LABEL_137;
                      }
                    }

                    v52 = 0;
                    goto LABEL_43;
                  }

                  if (BootFromFile == -17913)
                  {
                    FigHLSPersistentStoreCreateAtURL_cold_7(buffer);
LABEL_132:
                    BootFromFile = *buffer;
                  }
                }

LABEL_61:
                CFRelease(v36);
                if (v85)
                {
                  CFRelease(v85);
                }

LABEL_63:
                if (v83)
                {
                  CFRelease(v83);
                }

                if (v84)
                {
                  CFRelease(v84);
                }

                if (v46)
                {
                  CFRelease(v46);
                }

                if (v42)
                {
                  CFRelease(v42);
                }

                if (BootFromFile)
                {
                  return BootFromFile;
                }

                goto LABEL_72;
              }
            }

            BootFromFile = v44;
            goto LABEL_130;
          }

          goto LABEL_125;
        }

        if (v39 != -17913)
        {
          BlockBufferWithCFString = FigSignalErrorAtGM();
LABEL_125:
          BootFromFile = BlockBufferWithCFString;
          goto LABEL_126;
        }
      }

      BootFromFile = FigSignalErrorAtGM();
      FigBytePumpGetFigBaseObject(BootFromFile);
      goto LABEL_126;
    }

    FigHLSPersistentStoreCreateAtURL_cold_17(buffer);
    return *buffer;
  }

  if (!*(DerivedStorage + 112))
  {
    v32 = 1;
    goto LABEL_73;
  }

LABEL_72:
  v32 = 2;
LABEL_73:
  v10 = lockRoot(DerivedStorage, v32);
  if (v10)
  {
    return v10;
  }

  v59 = CMBaseObjectGetDerivedStorage();
  v60 = FigGetAllocatorForMedia();
  v61 = CFURLCreateCopyAppendingPathComponent(v60, *(v59 + 8), @"root.xml", 0);
  if (!v61)
  {
    FigHLSPersistentStoreCreateAtURL_cold_16(buffer);
    BootFromFile = *buffer;
LABEL_114:
    if (!BootFromFile)
    {
      BootFromFile = loadBootFromFile();
      if (!BootFromFile)
      {
        *a5 = 0;
      }
    }

    return BootFromFile;
  }

  v62 = v61;
  v63 = FigGetAllocatorForMedia();
  v64 = FigXMLNodeCreateFromURL(v63, v62, (v59 + 40));
  if (v64)
  {
    goto LABEL_108;
  }

  v65 = *(v59 + 40);
  FigXMLNodeGetTag(v65);
  v66 = FigCFEqual();
  if (!v65 || !v66)
  {
    FigHLSPersistentStoreCreateAtURL_cold_15(buffer);
LABEL_107:
    v64 = FigSignalErrorAtGM();
LABEL_108:
    BootFromFile = v64;
LABEL_113:
    CFRelease(v62);
    goto LABEL_114;
  }

  Child = FigXMLNodeGetChild(v65, @"MoviePackageType");
  FigXMLNodeGetContentAsCFString(Child);
  if (FigCFEqual() != 1)
  {
    goto LABEL_107;
  }

  v68 = *(v59 + 40);
  FigXMLNodeGetTag(v68);
  v69 = FigCFEqual();
  if (!v68 || !v69)
  {
    if (!FigHLSPersistentStoreCreateAtURL_cold_14())
    {
      BootFromFile = *buffer;
      goto LABEL_113;
    }

    goto LABEL_110;
  }

  v70 = FigXMLNodeGetChild(v68, @"BootImage");
  ContentAsCFString = FigXMLNodeGetContentAsCFString(v70);
  if (!ContentAsCFString)
  {
LABEL_110:
    v72 = 0;
    goto LABEL_111;
  }

  v72 = CFRetain(ContentAsCFString);
LABEL_111:
  BootFromFile = FigFileValidateFileNameIsWithinParentDirectory();
  if (!BootFromFile)
  {
    *(v59 + 80) = v72;
    goto LABEL_113;
  }

  CFRelease(v62);
  if (v72)
  {
    CFRelease(v72);
  }

  return BootFromFile;
}

uint64_t loadBootFromFile()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 80))
  {
    loadBootFromFile_cold_11(&cf);
    return cf;
  }

  v1 = DerivedStorage;
  v3 = (DerivedStorage + 48);
  v2 = *(DerivedStorage + 48);
  if (v2)
  {
    CFRelease(v2);
    *v3 = 0;
  }

  AllocatorForMedia = FigGetAllocatorForMedia();
  v5 = CFURLCreateCopyAppendingPathComponent(AllocatorForMedia, *(v1 + 8), *(v1 + 80), 0);
  if (!v5)
  {
    loadBootFromFile_cold_10(&cf);
    return cf;
  }

  v6 = v5;
  v7 = FigGetAllocatorForMedia();
  v85 = v6;
  v8 = FigXMLNodeCreateFromURL(v7, v6, v3);
  if (!v8)
  {
    v9 = *v3;
    cf = 0;
    if (xmlCopyHLSMoviePackageType(v9, &cf))
    {
      v10 = 0;
    }

    else
    {
      v10 = FigCFEqual() == 1;
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (v10)
    {
      v86 = v3;
      StreamList = xmlGetStreamList(*v3);
      if (!StreamList)
      {
        goto LABEL_22;
      }

      v12 = StreamList;
      if (FigXMLNodeGetCountOfChildren(StreamList) < 1)
      {
        goto LABEL_22;
      }

      v13 = 0;
      while (1)
      {
        ChildAtIndex = FigXMLNodeGetChildAtIndex(v12, v13);
        Attribute = FigXMLNodeGetAttribute();
        v16 = FigXMLNodeGetAttribute();
        v17 = FigGetAllocatorForMedia();
        v18 = CFURLCreateCopyAppendingPathComponent(v17, *(v1 + 8), v16, 1u);
        if (!v18)
        {
          break;
        }

        v19 = v18;
        v20 = FigXMLNodeGetAttribute();
        v21 = FigXMLNodeGetAttribute();
        if (!ChildAtIndex)
        {
          loadBootFromFile_cold_1();
LABEL_19:
          v23 = 0;
          goto LABEL_20;
        }

        Child = FigXMLNodeGetChild(ChildAtIndex, @"Complete");
        if (!Child)
        {
          goto LABEL_19;
        }

        FigXMLNodeGetContentAsCFString(Child);
        v23 = FigCFEqual();
LABEL_20:
        v24 = addStreamToStreamList(v1, Attribute, v19, v20, v21, v23, 0);
        CFRelease(v19);
        if (v24)
        {
          goto LABEL_90;
        }

        if (++v13 >= FigXMLNodeGetCountOfChildren(v12))
        {
          goto LABEL_22;
        }
      }

      if (!loadBootFromFile_cold_2(&cf))
      {
        v24 = cf;
        goto LABEL_90;
      }

LABEL_22:
      value = 0;
      cf = 0;
      v25 = v86;
      v26 = *v86;
      FigXMLNodeGetTag(*v86);
      v27 = FigCFEqual();
      if (v26 && v27)
      {
        v28 = FigXMLNodeGetChild(v26, @"DataItems");
        if (!v28)
        {
          goto LABEL_51;
        }

        v29 = v28;
        v30 = FigXMLNodeCopyAttributeAsCFString(v28, @"Directory", &cf);
        if (v30)
        {
          v24 = v30;
        }

        else
        {
          if (!*(v1 + 32))
          {
            v31 = FigGetAllocatorForMedia();
            *(v1 + 32) = CFURLCreateCopyAppendingPathComponent(v31, *(v1 + 8), cf, 1u);
          }

          if (FigXMLNodeGetCountOfChildren(v29) >= 1)
          {
            v32 = 0;
            do
            {
              v33 = FigXMLNodeGetChildAtIndex(v29, v32);
              v34 = *(v1 + 32);
              v35 = FigGetAllocatorForMedia();
              Mutable = CFDictionaryCreateMutable(v35, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
              v37 = FigXMLNodeGetChild(v33, @"ID");
              ContentAsCFString = FigXMLNodeGetContentAsCFString(v37);
              CFDictionarySetValue(Mutable, @"DataItemDescriptorID", ContentAsCFString);
              v39 = FigXMLNodeGetChild(v33, @"Category");
              v40 = FigXMLNodeGetContentAsCFString(v39);
              CFDictionarySetValue(Mutable, @"DataItemDescriptorCategory", v40);
              v41 = FigXMLNodeGetChild(v33, @"Name");
              v42 = FigXMLNodeGetContentAsCFString(v41);
              CFDictionarySetValue(Mutable, @"DataItemDescriptorName", v42);
              v43 = FigXMLNodeGetChild(v33, @"DataPath");
              v44 = FigXMLNodeGetContentAsCFString(v43);
              if (v44)
              {
                v45 = v44;
                v46 = FigGetAllocatorForMedia();
                v47 = CFURLCreateWithString(v46, v45, v34);
                CFDictionarySetValue(Mutable, @"DataItemURL", v47);
                CFDictionarySetValue(Mutable, @"DataItemFileName", v45);
              }

              else
              {
                v47 = 0;
              }

              v48 = FigXMLNodeGetChild(v33, @"DescriptorPath");
              v49 = FigXMLNodeGetContentAsCFString(v48);
              if (v49)
              {
                v50 = v49;
                v51 = FigGetAllocatorForMedia();
                v52 = CFURLCreateWithString(v51, v50, v34);
                CFDictionarySetValue(Mutable, @"DataItemDescriptorURL", v52);
                CFDictionarySetValue(Mutable, @"DataItemDescriptorFileName", v50);
              }

              else
              {
                v52 = 0;
              }

              v53 = FigXMLNodeGetChild(v33, @"Role");
              v54 = FigXMLNodeGetContentAsCFString(v53);
              if (v54)
              {
                CFDictionarySetValue(Mutable, @"DataItemDescriptorRole", v54);
              }

              v55 = FigXMLNodeGetChild(v33, @"kDataItemNetworkURL");
              v56 = FigXMLNodeGetContentAsCFString(v55);
              if (v56)
              {
                CFDictionarySetValue(Mutable, @"DataItemDescriptorNetworkURL", v56);
              }

              if (v47)
              {
                CFRelease(v47);
              }

              if (v52)
              {
                CFRelease(v52);
              }

              v57 = CFDictionaryGetValue(Mutable, @"DataItemDescriptorID");
              CFDictionarySetValue(*(v1 + 88), v57, Mutable);
              v58 = CFDictionaryGetValue(Mutable, @"DataItemDescriptorCategory");
              if (CFDictionaryGetValueIfPresent(*(v1 + 96), v58, &value))
              {
                CFDictionarySetValue(value, v57, Mutable);
              }

              else
              {
                v59 = FigGetAllocatorForMedia();
                value = CFDictionaryCreateMutable(v59, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                CFDictionarySetValue(*(v1 + 96), v58, value);
                CFDictionarySetValue(value, v57, Mutable);
                if (value)
                {
                  CFRelease(value);
                }
              }

              if (Mutable)
              {
                CFRelease(Mutable);
              }

              ++v32;
            }

            while (v32 < FigXMLNodeGetCountOfChildren(v29));
          }

LABEL_51:
          v24 = 0;
        }

        v25 = v86;
      }

      else
      {
        loadBootFromFile_cold_3(&v89);
        v24 = v89;
      }

      if (cf)
      {
        CFRelease(cf);
      }

      if (v24)
      {
        goto LABEL_90;
      }

      cf = 0;
      v60 = *v25;
      FigXMLNodeGetTag(*v25);
      v61 = FigCFEqual();
      if (v60 && v61)
      {
        v62 = FigXMLNodeGetChild(v60, @"InterstitialAssets");
        if (!v62)
        {
LABEL_87:
          v24 = 0;
          goto LABEL_88;
        }

        v63 = v62;
        v64 = FigXMLNodeCopyAttributeAsCFString(v62, @"Directory", &cf);
        if (!v64)
        {
          if (!*(v1 + 200))
          {
            v65 = FigGetAllocatorForMedia();
            *(v1 + 200) = CFURLCreateCopyAppendingPathComponent(v65, *(v1 + 8), cf, 1u);
          }

          if (FigXMLNodeGetCountOfChildren(v63) >= 1)
          {
            v66 = 0;
            while (1)
            {
              v67 = FigXMLNodeGetChildAtIndex(v63, v66);
              Tag = FigXMLNodeGetTag(v67);
              if (CFStringCompare(Tag, @"InterstitialAsset", 0))
              {
                if (CFStringCompare(Tag, @"InterstitialAssetList", 0))
                {
                  goto LABEL_77;
                }

                if (v67)
                {
                  v69 = FigGetAllocatorForMedia();
                  v70 = CFDictionaryCreateMutable(v69, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                  if (v70)
                  {
                    v71 = v70;
                    v72 = FigXMLNodeGetChild(v67, @"NetworkURL");
                    v73 = FigXMLNodeGetChild(v67, @"PathToLocalCopy");
                    if (v72)
                    {
                      v74 = v73;
                      if (v73)
                      {
                        v75 = FigXMLNodeGetContentAsCFString(v72);
                        CFDictionarySetValue(v71, @"InterstitialAssetListNetworkURL", v75);
                        v76 = FigXMLNodeGetContentAsCFString(v74);
                        v77 = FigGetAllocatorForMedia();
                        v24 = CFURLCreateWithString(v77, v76, *(v1 + 200));
                        CFDictionarySetValue(v71, @"InterstitialAssetListFileName", v24);
                        CFDictionarySetValue(*(v1 + 216), v76, v71);
                        if (v24)
                        {
                          CFRelease(v24);
                          v24 = 0;
                        }

LABEL_72:
                        CFRelease(v71);
                        if (v24)
                        {
                          goto LABEL_88;
                        }

                        goto LABEL_77;
                      }

                      loadBootFromFile_cold_4(&value);
                    }

                    else
                    {
                      loadBootFromFile_cold_5(&value);
                    }

                    v24 = value;
                    goto LABEL_72;
                  }

                  loadBootFromFile_cold_6(&value);
                }

                else
                {
                  loadBootFromFile_cold_7(&value);
                }
              }

              else
              {
                if (v67)
                {
                  v78 = FigXMLNodeGetChild(v67, @"NetworkURL");
                  v79 = FigXMLNodeGetContentAsCFString(v78);
                  v80 = FigXMLNodeGetChild(v67, @"PathToLocalCopy");
                  v81 = FigXMLNodeGetContentAsCFString(v80);
                  v82 = FigGetAllocatorForMedia();
                  v83 = CFURLCreateWithString(v82, v81, *(v1 + 200));
                  CFDictionarySetValue(*(v1 + 208), v79, v83);
                  if (v83)
                  {
                    CFRelease(v83);
                  }

                  goto LABEL_77;
                }

                loadBootFromFile_cold_8(&value);
              }

              v24 = value;
              if (value)
              {
                goto LABEL_88;
              }

LABEL_77:
              if (++v66 >= FigXMLNodeGetCountOfChildren(v63))
              {
                goto LABEL_87;
              }
            }
          }

          goto LABEL_87;
        }

        v24 = v64;
      }

      else
      {
        loadBootFromFile_cold_9(&value);
        v24 = value;
      }

LABEL_88:
      if (cf)
      {
        CFRelease(cf);
      }

      goto LABEL_90;
    }

    v8 = FigSignalErrorAtGM();
  }

  v24 = v8;
LABEL_90:
  CFRelease(v85);
  return v24;
}

uint64_t HLSPersistentStore_Invalidate()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {

    return persistentStore_Invalidate(DerivedStorage);
  }

  else
  {
    HLSPersistentStore_Invalidate_cold_1(&v2);
    return v2;
  }
}

uint64_t persistentStore_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    return persistentStore_Finalize_cold_1();
  }

  v1 = DerivedStorage;
  persistentStore_Invalidate(DerivedStorage);
  result = FigReadWriteLockDestroy();
  *(v1 + 120) = 0;
  return result;
}

CFStringRef persistentStore_CopyDebugDescription()
{
  v0 = *(CMBaseObjectGetDerivedStorage() + 8);
  if (v0)
  {
    PathComponent = CFURLCopyLastPathComponent(v0);
  }

  else
  {
    PathComponent = 0;
  }

  AllocatorForMedia = FigGetAllocatorForMedia();
  v3 = CFStringCreateWithFormat(AllocatorForMedia, 0, @"[FigHLSPersistentStore]{%@}", PathComponent);
  if (PathComponent)
  {
    CFRelease(PathComponent);
  }

  return v3;
}

uint64_t persistentStore_CopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    persistentStore_CopyProperty_cold_6(&v25);
    return v25;
  }

  v8 = DerivedStorage;
  v9 = FigReadWriteLockLockForRead();
  if (v9)
  {
    goto LABEL_40;
  }

  if (!a2)
  {
    persistentStore_CopyProperty_cold_5(&v25);
    goto LABEL_45;
  }

  if (!a4)
  {
    persistentStore_CopyProperty_cold_4(&v25);
    goto LABEL_45;
  }

  if (*v8)
  {
    persistentStore_CopyProperty_cold_1(&v25);
    goto LABEL_45;
  }

  if (!CFEqual(a2, @"MasterPlaylistNetworkURL"))
  {
    if (CFEqual(a2, @"HLSPersistentStoreURL"))
    {
      ContentAsCFString = *(v8 + 8);
      if (!ContentAsCFString)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }

    if (CFEqual(a2, @"MoviePackageBootVersion"))
    {
      v17 = *(v8 + 48);
      FigXMLNodeGetTag(v17);
      v18 = FigCFEqual();
      if (v17 && v18)
      {
        Child = FigXMLNodeGetChild(v17, @"Version");
        ContentAsCFString = FigXMLNodeGetContentAsCFString(Child);
        if (!ContentAsCFString)
        {
LABEL_24:
          v16 = 0;
          *a4 = ContentAsCFString;
          goto LABEL_25;
        }

LABEL_23:
        ContentAsCFString = CFRetain(ContentAsCFString);
        goto LABEL_24;
      }

      if (persistentStore_CopyProperty_cold_2())
      {
LABEL_49:
        ContentAsCFString = 0;
        goto LABEL_24;
      }
    }

    else
    {
      if (!CFEqual(a2, @"MoviePackageRootVersion"))
      {
        if (CFEqual(a2, @"MoviePackageBootType"))
        {
          v25 = 0;
          v24 = xmlCopyHLSMoviePackageType(*(v8 + 48), &v25);
        }

        else
        {
          if (!CFEqual(a2, @"MoviePackageRootType"))
          {
            if (!CFEqual(a2, @"DataDirectory"))
            {
              v16 = 4294954512;
              goto LABEL_25;
            }

            ContentAsCFString = CFURLCreateCopyAppendingPathComponent(a3, *(v8 + 8), @"Data", 1u);
            goto LABEL_24;
          }

          v25 = 0;
          v24 = xmlCopyRootType(*(v8 + 40), &v25);
        }

        v16 = v24;
        if (v24)
        {
          goto LABEL_25;
        }

        v12 = v25;
        goto LABEL_18;
      }

      v21 = *(v8 + 40);
      FigXMLNodeGetTag(v21);
      v22 = FigCFEqual();
      if (v21 && v22)
      {
        v23 = FigXMLNodeGetChild(v21, @"Version");
        ContentAsCFString = FigXMLNodeGetContentAsCFString(v23);
        goto LABEL_24;
      }

      if (persistentStore_CopyProperty_cold_3())
      {
        goto LABEL_49;
      }
    }

LABEL_45:
    v16 = v25;
    goto LABEL_25;
  }

  v10 = *(v8 + 48);
  v25 = 0;
  FigXMLNodeGetTag(v10);
  v11 = FigCFEqual();
  v12 = 0;
  if (!v10 || !v11)
  {
    goto LABEL_17;
  }

  v13 = FigXMLNodeGetChild(v10, @"MasterPlaylist");
  if (!v13 || (v14 = FigXMLNodeGetChild(v13, @"NetworkURL")) == 0)
  {
    v12 = 0;
    goto LABEL_17;
  }

  v9 = FigXMLNodeCopyContentAsCFString(v14, &v25);
  if (v9)
  {
LABEL_40:
    v16 = v9;
    goto LABEL_25;
  }

  v12 = v25;
LABEL_17:
  v16 = 0;
LABEL_18:
  *a4 = v12;
LABEL_25:
  FigReadWriteLockUnlockForRead();
  return v16;
}

uint64_t unlockRoot(uint64_t a1)
{
  if (*(a1 + 128) && (result = FigFileUnlock(), result))
  {
    if (result == -17913)
    {
      v3 = FigSignalErrorAtGM();
      FigBytePumpGetFigBaseObject(v3);
      return v3;
    }
  }

  else
  {
    result = 0;
    *(a1 + 112) = 0;
  }

  return result;
}

uint64_t xmlCopyHLSMoviePackageType(uint64_t a1, void *a2)
{
  if (a2)
  {
    FigXMLNodeGetTag(a1);
    v4 = FigCFEqual();
    if (a1 && v4)
    {
      Child = FigXMLNodeGetChild(a1, @"HLSMoviePackageType");
      ContentAsCFString = FigXMLNodeGetContentAsCFString(Child);
      if (ContentAsCFString)
      {
        v7 = CFRetain(ContentAsCFString);
      }

      else
      {
        v7 = 0;
      }

      result = 0;
      *a2 = v7;
    }

    else
    {
      xmlCopyHLSMoviePackageType_cold_1(&v9);
      return v9;
    }
  }

  else
  {
    xmlCopyHLSMoviePackageType_cold_2(&v10);
    return v10;
  }

  return result;
}

uint64_t xmlCopyRootType(uint64_t a1, void *a2)
{
  FigXMLNodeGetTag(a1);
  v4 = FigCFEqual();
  if (a1 && v4)
  {
    Child = FigXMLNodeGetChild(a1, @"MoviePackageType");
    ContentAsCFString = FigXMLNodeGetContentAsCFString(Child);
    if (ContentAsCFString)
    {
      v7 = CFRetain(ContentAsCFString);
    }

    else
    {
      v7 = 0;
    }

    result = 0;
    *a2 = v7;
  }

  else
  {
    xmlCopyRootType_cold_1(&v9);
    return v9;
  }

  return result;
}

uint64_t writeBoot()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  AllocatorForMedia = FigGetAllocatorForMedia();
  v2 = CFURLCreateCopyAppendingPathComponent(AllocatorForMedia, *(DerivedStorage + 8), *(DerivedStorage + 80), 0);
  if (v2)
  {
    v3 = v2;
    v4 = FigXMLNodeWriteToFilePath(*(DerivedStorage + 48), v2);
    CFRelease(v3);
    return v4;
  }

  else
  {
    writeBoot_cold_1(&v6);
    return v6;
  }
}

uint64_t persistentStore_CopyStreamIDs(uint64_t a1, uint64_t *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    persistentStore_CopyStreamIDs_cold_5(&v10);
    return v10;
  }

  v4 = DerivedStorage;
  v5 = FigReadWriteLockLockForRead();
  if (v5)
  {
    v8 = v5;
    goto LABEL_11;
  }

  if (*v4)
  {
    persistentStore_CopyStreamIDs_cold_1(&v10);
LABEL_19:
    v8 = v10;
    goto LABEL_11;
  }

  if (*(v4 + 113) != 1)
  {
    persistentStore_CopyStreamIDs_cold_2(&v10);
    goto LABEL_19;
  }

  if (!a2)
  {
    persistentStore_CopyStreamIDs_cold_4(&v10);
    goto LABEL_19;
  }

  *a2 = 0;
  v6 = *(v4 + 56);
  if (!v6 || CFDictionaryGetCount(v6) < 1)
  {
    v8 = 0;
    goto LABEL_11;
  }

  v7 = FigCFDictionaryCopyArrayOfKeys();
  if (!v7)
  {
    persistentStore_CopyStreamIDs_cold_3(&v10);
    goto LABEL_19;
  }

  v8 = 0;
  *a2 = v7;
LABEL_11:
  FigReadWriteLockUnlockForRead();
  return v8;
}

uint64_t persistentStore_CopyMasterPlaylist(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, CMBlockBufferRef *a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v26 = 0;
  theDict = 0;
  v12 = FigCFEqual();
  v13 = FigCFEqual();
  if (!DerivedStorage)
  {
    persistentStore_CopyMasterPlaylist_cold_5(&v28);
    v24 = v28;
    goto LABEL_31;
  }

  v14 = v13;
  v15 = FigReadWriteLockLockForRead();
  if (v15)
  {
LABEL_34:
    v24 = v15;
    goto LABEL_29;
  }

  if (*DerivedStorage)
  {
    persistentStore_CopyMasterPlaylist_cold_1(&v28);
  }

  else if (a2)
  {
    if (v12 | v14)
    {
      copyDataIDDictionaryFilteredByCategoryIndexedByAccessKeyWork(DerivedStorage, @"Playlist", @"DataItemDescriptorRole", &theDict);
      v16 = theDict;
      if (theDict)
      {
        if (v12)
        {
          Value = CFDictionaryGetValue(theDict, @"Master");
          if (!v14)
          {
            goto LABEL_12;
          }
        }

        else
        {
          Value = 0;
          if (!v14)
          {
LABEL_12:
            v15 = copyDataItemWork(DerivedStorage, Value, &v26, a6);
            if (!v15)
            {
              v18 = CFDictionaryGetValue(v26, @"DataItemDescriptorPropertyListDescriptor");
              v19 = CFDictionaryGetValue(v26, @"DataItemDescriptorName");
              v20 = CFDictionaryGetValue(v26, @"DataItemFileName");
              if (a5)
              {
                if (v18)
                {
                  v21 = CFRetain(v18);
                }

                else
                {
                  v21 = 0;
                }

                *a5 = v21;
              }

              if (a3)
              {
                if (v19)
                {
                  v22 = CFRetain(v19);
                }

                else
                {
                  v22 = 0;
                }

                *a3 = v22;
              }

              if (a4)
              {
                if (v20)
                {
                  v23 = CFRetain(v20);
                }

                else
                {
                  v23 = 0;
                }

                v24 = 0;
                *a4 = v23;
              }

              else
              {
                v24 = 0;
              }

              goto LABEL_29;
            }

            goto LABEL_34;
          }
        }

        Value = CFDictionaryGetValue(v16, @"AvailableOfflineMaster");
        goto LABEL_12;
      }

      persistentStore_CopyMasterPlaylist_cold_2(&v28);
    }

    else
    {
      persistentStore_CopyMasterPlaylist_cold_3(&v28);
    }
  }

  else
  {
    persistentStore_CopyMasterPlaylist_cold_4(&v28);
  }

  v24 = v28;
LABEL_29:
  FigReadWriteLockUnlockForRead();
  if (theDict)
  {
    CFRelease(theDict);
  }

LABEL_31:
  if (v26)
  {
    CFRelease(v26);
  }

  return v24;
}

uint64_t persistentStore_IsStreamComplete(uint64_t a1, const void *a2, _BYTE *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    persistentStore_IsStreamComplete_cold_4(&v10);
    return v10;
  }

  if (!a3)
  {
    persistentStore_IsStreamComplete_cold_3(&v10);
    return v10;
  }

  v6 = DerivedStorage;
  v7 = FigReadWriteLockLockForRead();
  if (v7)
  {
    v8 = v7;
    goto LABEL_7;
  }

  if (*v6)
  {
    persistentStore_IsStreamComplete_cold_1(&v10);
LABEL_15:
    v8 = v10;
    goto LABEL_7;
  }

  if (!CFDictionaryGetValue(*(v6 + 56), a2))
  {
    persistentStore_IsStreamComplete_cold_2(&v10);
    goto LABEL_15;
  }

  FigCFDictionaryGetBooleanIfPresent();
  v8 = 0;
  *a3 = 0;
LABEL_7:
  FigReadWriteLockUnlockForRead();
  return v8;
}

uint64_t persistentStore_CopyNetworkURLForStreamID(uint64_t a1, const void *a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    persistentStore_CopyNetworkURLForStreamID_cold_4(&v12);
    return v12;
  }

  if (!a3)
  {
    persistentStore_CopyNetworkURLForStreamID_cold_3(&v12);
    return v12;
  }

  v6 = DerivedStorage;
  v7 = FigReadWriteLockLockForRead();
  if (v7)
  {
    v10 = v7;
  }

  else
  {
    if (*v6)
    {
      persistentStore_CopyNetworkURLForStreamID_cold_1(&v12);
    }

    else
    {
      Value = CFDictionaryGetValue(*(v6 + 56), a2);
      if (Value)
      {
        v9 = CFDictionaryGetValue(Value, @"StreamInformationNetworkURL");
        if (v9)
        {
          v9 = CFRetain(v9);
        }

        v10 = 0;
        *a3 = v9;
        goto LABEL_9;
      }

      persistentStore_CopyNetworkURLForStreamID_cold_2(&v12);
    }

    v10 = v12;
  }

LABEL_9:
  FigReadWriteLockUnlockForRead();
  return v10;
}

uint64_t persistentStore_CopyUniqueTagForStreamID(uint64_t a1, const void *a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    persistentStore_CopyUniqueTagForStreamID_cold_4(&v12);
    return v12;
  }

  if (!a3)
  {
    persistentStore_CopyUniqueTagForStreamID_cold_3(&v12);
    return v12;
  }

  v6 = DerivedStorage;
  v7 = FigReadWriteLockLockForRead();
  if (v7)
  {
    v10 = v7;
  }

  else
  {
    if (*v6)
    {
      persistentStore_CopyUniqueTagForStreamID_cold_1(&v12);
    }

    else
    {
      Value = CFDictionaryGetValue(*(v6 + 56), a2);
      if (Value)
      {
        v9 = CFDictionaryGetValue(Value, @"StreamInformationUniqueTag");
        if (v9)
        {
          v9 = CFRetain(v9);
        }

        v10 = 0;
        *a3 = v9;
        goto LABEL_9;
      }

      persistentStore_CopyUniqueTagForStreamID_cold_2(&v12);
    }

    v10 = v12;
  }

LABEL_9:
  FigReadWriteLockUnlockForRead();
  return v10;
}

uint64_t persistentStore_CopyDataItem(uint64_t a1, const void *a2, __CFDictionary **a3, CMBlockBufferRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    persistentStore_CopyDataItem_cold_2(&v13);
    return v13;
  }

  v8 = DerivedStorage;
  v9 = FigReadWriteLockLockForRead();
  if (!v9)
  {
    if (*v8)
    {
      persistentStore_CopyDataItem_cold_1(&v12);
      v10 = v12;
      goto LABEL_6;
    }

    v9 = copyDataItemWork(v8, a2, a3, a4);
  }

  v10 = v9;
LABEL_6:
  FigReadWriteLockUnlockForRead();
  return v10;
}

uint64_t persistentStore_CopyDataCategories(uint64_t a1, uint64_t *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    if (a2)
    {
      v4 = DerivedStorage;
      v5 = FigReadWriteLockLockForRead();
      if (v5)
      {
        v6 = v5;
      }

      else if (*v4)
      {
        persistentStore_CopyDataCategories_cold_1(&v8);
        v6 = v8;
      }

      else
      {
        v6 = 0;
        *a2 = FigCFDictionaryCopyArrayOfKeys();
      }

      FigReadWriteLockUnlockForRead();
    }

    else
    {
      persistentStore_CopyDataCategories_cold_2(&v9);
      return v9;
    }
  }

  else
  {
    persistentStore_CopyDataCategories_cold_3(&v10);
    return v10;
  }

  return v6;
}

uint64_t persistentStore_CopyDataIDDictionaryFilteredByCategoryIndexedByAccessKey(uint64_t a1, __CFString *a2, uint64_t a3, CFTypeRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    if (a4)
    {
      v8 = DerivedStorage;
      v9 = FigReadWriteLockLockForRead();
      if (v9)
      {
        v10 = v9;
      }

      else if (*v8)
      {
        persistentStore_CopyDataIDDictionaryFilteredByCategoryIndexedByAccessKey_cold_1(&v12);
        v10 = v12;
      }

      else
      {
        copyDataIDDictionaryFilteredByCategoryIndexedByAccessKeyWork(v8, a2, a3, a4);
        v10 = 0;
      }

      FigReadWriteLockUnlockForRead();
    }

    else
    {
      persistentStore_CopyDataIDDictionaryFilteredByCategoryIndexedByAccessKey_cold_2(&v13);
      return v13;
    }
  }

  else
  {
    persistentStore_CopyDataIDDictionaryFilteredByCategoryIndexedByAccessKey_cold_3(&v14);
    return v14;
  }

  return v10;
}

uint64_t persistentStore_CreateStreamOptions(uint64_t a1, __CFDictionary **a2, const __CFDictionary *a3)
{
  if (a2)
  {
    AllocatorForMedia = FigGetAllocatorForMedia();
    if (a3)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(AllocatorForMedia, 0, a3);
    }

    else
    {
      MutableCopy = CFDictionaryCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    }

    v8 = MutableCopy;
    if (MutableCopy)
    {
      v9 = *(a1 + 144);
      if (v9)
      {
        CFDictionarySetValue(MutableCopy, @"StreamInfoClientAuditToken", v9);
      }

      v10 = *(a1 + 152);
      if (v10)
      {
        CFDictionarySetValue(v8, @"StreamInfoClientBundleIdentifier", v10);
      }

      if (*(a1 + 136))
      {
        CFDictionarySetValue(v8, @"StreamInfoDoNotBlockOnLock", *MEMORY[0x1E695E4D0]);
      }

      v11 = persistentStore_ensureMemoryPool(a1);
      if (v11)
      {
        v12 = v11;
        CFRelease(v8);
      }

      else
      {
        CFDictionarySetValue(v8, @"StreamInfoMemoryPool", *(a1 + 192));
        if (!CFDictionaryGetCount(v8))
        {
          CFRelease(v8);
          v8 = 0;
        }

        v12 = 0;
        *a2 = v8;
      }
    }

    else
    {
      persistentStore_CreateStreamOptions_cold_1(&v14);
      return v14;
    }
  }

  else
  {
    persistentStore_CreateStreamOptions_cold_2(&v15);
    return v15;
  }

  return v12;
}