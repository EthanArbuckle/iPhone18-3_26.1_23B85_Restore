CMSampleBufferRef bapspManager_copyDePrimingSampleBufferWithFullTrim(opaqueCMSampleBuffer *a1)
{
  v6 = **&MEMORY[0x1E6960C70];
  refcon = 0;
  if (!CMSampleBufferCallForEachSample(a1, bapspManager_copyFirstSingleCompressedSBufCallback, &refcon))
  {
    if (refcon)
    {
      CMSampleBufferGetOutputDuration(&v6, refcon);
      v1 = *MEMORY[0x1E695E480];
      v4 = v6;
      v2 = CMTimeCopyAsDictionary(&v4, v1);
      CMSetAttachment(refcon, *MEMORY[0x1E6960558], v2, 1u);
      if (v2)
      {
        CFRelease(v2);
      }
    }
  }

  return refcon;
}

uint64_t fbapspManager_createAndInitializeSubPipe(const void *a1, opaqueCMSampleBuffer *a2, const void *a3)
{
  v61[16] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 120))
  {
    fbapspManager_createAndInitializeSubPipe_cold_1(v61);
    return LODWORD(v61[0]);
  }

  v7 = DerivedStorage;
  v8 = CFEqual(a3, @"SubPipeTypePassthrough");
  v9 = CMBaseObjectGetDerivedStorage();
  v10 = v9;
  if (v8)
  {
    cf = 0;
    v11 = *(v9 + 160);
    if (v11)
    {
      v12 = FigBufferedAirPlayOfflineMixerFactoryReleaseMixer(v11);
      if (v12)
      {
        goto LABEL_86;
      }

      *(v10 + 160) = 0;
    }

    FormatDescription = CMSampleBufferGetFormatDescription(a2);
    v14 = *MEMORY[0x1E695E480];
    v12 = FigEndpointStreamAudioFormatDescriptionCreateWithCMFormatDescription();
    if (!v12)
    {
      MutableCopy = FigCFDictionaryCreateMutableCopy();
      if (MutableCopy)
      {
        if (a1)
        {
          v16 = CMBaseObjectGetDerivedStorage();
        }

        else
        {
          v16 = "";
        }

        v24 = CFStringCreateWithCString(v14, v16, 0x8000100u);
        CFDictionarySetValue(MutableCopy, @"LoggingID", v24);
        v25 = FigBufferedAirPlayAudioChainSubPipePassthroughCreate(v14, *(v10 + 112), FormatDescription, MutableCopy, (v10 + 120));
        if (v25 || (v25 = fbapspManager_addListenersForSubPipe(a1, *(v10 + 120)), v25))
        {
          v32 = v25;
        }

        else
        {
          v26 = *(v10 + 184);
          v27 = cf;
          *(v10 + 184) = cf;
          if (v27)
          {
            CFRetain(v27);
          }

          if (v26)
          {
            CFRelease(v26);
          }

          if (dword_1EAF16F18)
          {
            LODWORD(v59) = 0;
            type[0] = OS_LOG_TYPE_DEFAULT;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          v32 = 0;
        }
      }

      else
      {
        v24 = 0;
        v32 = 4294954510;
      }

LABEL_53:
      if (cf)
      {
        CFRelease(cf);
      }

      if (MutableCopy)
      {
        CFRelease(MutableCopy);
      }

      if (v24)
      {
        CFRelease(v24);
      }

      if (!v32)
      {
        fbapspManager_createAndInitializeSubPipe_cold_2(v61);
        v52 = v61[0];
        goto LABEL_75;
      }

      return v32;
    }

LABEL_86:
    v32 = v12;
    v24 = 0;
    MutableCopy = 0;
    goto LABEL_53;
  }

  v59 = 0;
  cf = 0;
  v17 = *MEMORY[0x1E695E480];
  v18 = FigCFDictionaryCreateMutableCopy();
  *type = 0;
  v19 = CMSampleBufferGetFormatDescription(a2);
  v20 = *(v10 + 176);
  if (v20)
  {
    CFRelease(v20);
  }

  v21 = FigEndpointStreamAudioFormatDescriptionCreateWithCMFormatDescription();
  if (v21)
  {
    goto LABEL_28;
  }

  v22 = *(v10 + 192);
  if (v22)
  {
    cf = CFRetain(v22);
    goto LABEL_15;
  }

  v29 = *(v10 + 40);
  v30 = *(v10 + 176);
  v31 = *(*(CMBaseObjectGetVTable() + 16) + 72);
  if (!v31)
  {
    v33 = 0;
    goto LABEL_62;
  }

  v21 = v31(v29, v30, &cf);
  if (v21)
  {
LABEL_28:
    v32 = v21;
    v33 = 0;
    goto LABEL_63;
  }

LABEL_15:
  if (a1)
  {
    v23 = CMBaseObjectGetDerivedStorage();
  }

  else
  {
    v23 = "";
  }

  v33 = CFStringCreateWithCString(v17, v23, 0x8000100u);
  CFDictionarySetValue(v18, @"LoggingID", v33);
  if ((*(v10 + 156) - 3) > 1)
  {
    v34 = 0;
  }

  else
  {
    v34 = *(v10 + 376);
  }

  v35 = FigCFEqual();
  v36 = *(v10 + 160);
  if (v35)
  {
    if (v36)
    {
      goto LABEL_42;
    }
  }

  else if (v36)
  {
    v37 = FigBufferedAirPlayOfflineMixerFactoryReleaseMixer(v36);
    if (v37)
    {
      goto LABEL_89;
    }

    *(v10 + 160) = 0;
  }

  CMBaseObject = FigBufferedAirPlayOutputGetCMBaseObject(*(v10 + 40));
  v39 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v39)
  {
LABEL_62:
    v32 = 4294954514;
    goto LABEL_63;
  }

  v37 = v39(CMBaseObject, @"LoggingID", v17, &v59);
  if (v37)
  {
    goto LABEL_89;
  }

  v37 = FigBufferedAirPlayOfflineMixerFactoryAcquireMixer(v17, v33, v59, cf, v34, *(v10 + 112), (v10 + 160));
  if (v37)
  {
    goto LABEL_89;
  }

LABEL_42:
  v40 = FigBufferedAirPlayOutputGetCMBaseObject(*(v10 + 40));
  v41 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v41)
  {
    goto LABEL_62;
  }

  v56 = v19;
  v57 = v18;
  v42 = v41(v40, @"SupportsReceiverSideSoundCheck", v17, type);
  if (v42)
  {
    v32 = v42;
LABEL_84:
    v18 = v57;
    goto LABEL_63;
  }

  Value = CFBooleanGetValue(*type);
  v44 = *(v10 + 160);
  v45 = *(v10 + 112);
  v46 = cf;
  AllocatorForMedia = FigGetAllocatorForMedia();
  v48 = v46;
  v18 = v57;
  v37 = FigBufferedAirPlayAudioChainSubPipeTranscodeCreate(v17, v44, v45, v56, v48, Value, AllocatorForMedia, v57, (v10 + 120));
  if (!v37)
  {
    v37 = fbapspManager_addListenersForSubPipe(a1, *(v10 + 120));
    if (!v37)
    {
      v49 = *(v10 + 184);
      v50 = cf;
      *(v10 + 184) = cf;
      if (v50)
      {
        CFRetain(v50);
      }

      if (v49)
      {
        CFRelease(v49);
      }

      if (dword_1EAF16F18)
      {
        v51 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v32 = 0;
      goto LABEL_84;
    }
  }

LABEL_89:
  v32 = v37;
LABEL_63:
  if (v18)
  {
    CFRelease(v18);
  }

  if (v33)
  {
    CFRelease(v33);
  }

  if (v59)
  {
    CFRelease(v59);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (*type)
  {
    CFRelease(*type);
  }

  if (!v32)
  {
    v52 = CFDictionaryCreate(v17, kFigBufferedAirPlaySubPipeManagerProperty_ProcessingMode, kFigBufferedAirPlaySubPipeManagerProcessingMode_Transcode, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
LABEL_75:
    fbapspManager_postNotification(a1, @"ProcessingModeChanged", v52);
    v53 = *(v7 + 104);
    v54 = *(*(CMBaseObjectGetVTable() + 16) + 72);
    if (v54)
    {
      v32 = v54(v53);
      if (!v32)
      {
        fbapspManager_createAndInitializeSubPipe_cold_3(v7);
      }

      if (!v52)
      {
        return v32;
      }
    }

    else
    {
      v32 = 4294954514;
      if (!v52)
      {
        return v32;
      }
    }

    CFRelease(v52);
  }

  return v32;
}

uint64_t fbapspManager_updateOverlapDeadline(uint64_t a1, __int128 *a2)
{
  result = CMBaseObjectGetDerivedStorage();
  v4 = result;
  if (*(a2 + 12))
  {
    if ((*(result + 244) & 1) == 0)
    {
      v7 = *a2;
      *(result + 248) = *(a2 + 2);
      *(result + 232) = v7;
      return result;
    }

    time1 = *(result + 232);
    v8 = *a2;
    result = CMTimeMinimum(&v10, &time1, &v8);
    *(v4 + 232) = *&v10.value;
    epoch = v10.epoch;
  }

  else
  {
    v5 = MEMORY[0x1E6960C70];
    *(result + 232) = *MEMORY[0x1E6960C70];
    epoch = *(v5 + 16);
  }

  *(v4 + 248) = epoch;
  return result;
}

BOOL fbapspManager_isMarkerSbuf(opaqueCMSampleBuffer *a1)
{
  CMSampleBufferGetOutputPresentationTimeStamp(&v6, a1);
  flags = v6.flags;
  FormatDescription = CMSampleBufferGetFormatDescription(a1);
  return (flags & 1) == 0 && FormatDescription == 0;
}

uint64_t bapspManager_copyFirstSingleCompressedSBufCallback(opaqueCMSampleBuffer *a1, uint64_t a2, const void **a3)
{
  v9 = **&MEMORY[0x1E6960C70];
  if (a1)
  {
    if (!*a3)
    {
      CMSampleBufferGetOutputDuration(&v9, a1);
      time1 = v9;
      v7 = **&MEMORY[0x1E6960CC0];
      if (CMTimeCompare(&time1, &v7) >= 1)
      {
        v6 = *a3;
        *a3 = a1;
        CFRetain(a1);
        if (v6)
        {
          CFRelease(v6);
        }
      }
    }
  }

  return 0;
}

uint64_t FigBufferedAirPlayAudioChainSubPipeSampleBufferCreateWithTimeStampAndMarker(CFAllocatorRef allocator, const __CFString *a2, const void *a3, uint64_t a4, void *a5)
{
  cf = 0;
  if (!a5)
  {
    FigBufferedAirPlayAudioChainSubPipeSampleBufferCreateWithTimeStampAndMarker_cold_4(&v16);
    return v16;
  }

  if ((*(a4 + 12) & 1) == 0)
  {
    sampleTimingArray = 0;
    v11 = 0;
LABEL_4:
    v12 = CMSampleBufferCreate(allocator, 0, 1u, 0, 0, 0, 0, v11, sampleTimingArray, 0, 0, &cf);
    if (!v12)
    {
      FigBufferedAirPlayAudioChainSubPipeSampleBufferCreateWithTimeStampAndMarker_cold_2(a2, a5, &cf, a3);
    }

    if (sampleTimingArray)
    {
      CFAllocatorDeallocate(allocator, sampleTimingArray);
    }

    goto LABEL_8;
  }

  v14 = MEMORY[0x19A8CC720](allocator, 72, 0x1000040FF89C88ELL, 0);
  if (v14)
  {
    sampleTimingArray = v14;
    FigBufferedAirPlayAudioChainSubPipeSampleBufferCreateWithTimeStampAndMarker_cold_3(v14, a4);
    v11 = 1;
    goto LABEL_4;
  }

  FigBufferedAirPlayAudioChainSubPipeSampleBufferCreateWithTimeStampAndMarker_cold_1(&v16);
  v12 = v16;
LABEL_8:
  if (cf)
  {
    CFRelease(cf);
  }

  return v12;
}

uint64_t bapspManager_copyLastSingleCompressedSBufCallback(opaqueCMSampleBuffer *a1, uint64_t a2, const void **a3)
{
  v9 = **&MEMORY[0x1E6960C70];
  if (a1)
  {
    CMSampleBufferGetOutputDuration(&v9, a1);
    time1 = v9;
    v7 = **&MEMORY[0x1E6960CC0];
    if (CMTimeCompare(&time1, &v7) >= 1)
    {
      v5 = *a3;
      *a3 = a1;
      CFRetain(a1);
      if (v5)
      {
        CFRelease(v5);
      }
    }
  }

  return 0;
}

void fbapspManager_retimeProcessingUnitScheduledParametersForIdentifier(uint64_t a1, const __CFArray *a2, uint64_t a3)
{
  v16 = *(a3 + 8);
  v15 = **&MEMORY[0x1E6960C70];
  v14 = v15;
  FigCFDictionaryGetArrayValue();
  MutableCopy = FigCFArrayCreateMutableCopy();
  if (MutableCopy)
  {
    v6 = MutableCopy;
    if (a2 && (Count = CFArrayGetCount(a2), Count >= 2))
    {
      v8 = Count;
      v9 = 1;
      while (1)
      {
        CFArrayGetValueAtIndex(a2, v9);
        if (!FigCFDictionaryGetCMTimeIfPresent())
        {
          fbapspManager_retimeProcessingUnitScheduledParametersForIdentifier_cold_1(a3);
          goto LABEL_11;
        }

        lhs = v15;
        v12 = v16;
        CMTimeAdd(&v14, &lhs, &v12);
        CFArrayGetValueAtIndex(v6, v9);
        v10 = FigCFDictionaryCreateMutableCopy();
        lhs = v14;
        v11 = FigCFDictionarySetCMTime();
        **a3 = v11;
        if (v11)
        {
          break;
        }

        CFArraySetValueAtIndex(v6, v9, v10);
        if (v10)
        {
          CFRelease(v10);
        }

        if (v8 == ++v9)
        {
          goto LABEL_10;
        }
      }

      if (v10)
      {
        CFRelease(v10);
      }
    }

    else
    {
LABEL_10:
      FigCFDictionarySetValue();
    }

LABEL_11:
    CFRelease(v6);
  }

  else
  {
    **a3 = -12786;
  }
}

uint64_t fbapspManager_isSubPipeStarted()
{
  BOOLean = 0;
  v0 = *(CMBaseObjectGetDerivedStorage() + 120);
  if (!v0)
  {
    return 0;
  }

  CMBaseObject = FigBufferedAirPlayAudioChainSubPipeGetCMBaseObject(v0);
  v2 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v2)
  {
    return 0;
  }

  v3 = v2(CMBaseObject, @"IsStarted", *MEMORY[0x1E695E480], &BOOLean);
  v4 = BOOLean;
  if (v3)
  {
    Value = 0;
    if (!BOOLean)
    {
      return Value;
    }

    goto LABEL_5;
  }

  Value = CFBooleanGetValue(BOOLean);
  v4 = BOOLean;
  if (BOOLean)
  {
LABEL_5:
    CFRelease(v4);
  }

  return Value;
}

CMTime *fbapspManager_lastProcessedOPTSInMediaTime@<X0>(CMTime *a1@<X8>)
{
  result = CMBaseObjectGetDerivedStorage();
  v3 = MEMORY[0x1E6960C70];
  a1->epoch = *(MEMORY[0x1E6960C70] + 16);
  *&a1->value = *v3;
  if ((result[15].value & 0x100000000) != 0)
  {
    lhs = *(result + 544);
    v5 = *(result + 352);
    return CMTimeSubtract(a1, &lhs, &v5);
  }

  else
  {
    v4 = *&result[22].epoch;
    a1->epoch = *&result[23].timescale;
    *&a1->value = v4;
  }

  return result;
}

uint64_t fbapspManager_HandlePendingSbufsOnSubPipeFinishCallback(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMGetAttachment(a1, @"FlushRangeEnd", 0);
  v3 = *(DerivedStorage + 112);
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(v3, a1);
}

BOOL fbapspManager_isReadyToMix()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 56);
  v2 = v1 != 0.0 && v1 != -999999.875;
  v3 = *(DerivedStorage + 376);
  v4 = *(DerivedStorage + 156);
  CMBaseObjectGetDerivedStorage();
  fbapspManager_dataFlowIsAllowed();
  if (v3)
  {
    v5 = v2;
  }

  else
  {
    v5 = 0;
  }

  return v4 == 3 && v5;
}

void fbapspManager_processOverlapRange(const void *a1, const void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v5 = CFGetTypeID(a2);
    if (v5 != CFDictionaryGetTypeID())
    {
      return;
    }

    v6 = *(DerivedStorage + 376);
    if (v6)
    {
      CFRelease(v6);
      *(DerivedStorage + 376) = 0;
    }

    NumberValue = FigCFDictionaryGetNumberValue();
    if (NumberValue)
    {
      v13 = CFRetain(NumberValue);
      *(DerivedStorage + 376) = v13;
      if (v13)
      {
        if (FigCFDictionaryGetBooleanValue() == *MEMORY[0x1E695E4D0])
        {
          if (*(DerivedStorage + 384) == 1)
          {
            v16 = MEMORY[0x1E6960C70];
            *(DerivedStorage + 232) = *MEMORY[0x1E6960C70];
            *(DerivedStorage + 248) = *(v16 + 16);
          }

          DictionaryValue = FigCFDictionaryGetDictionaryValue();
          CMTimeMakeFromDictionary(&time, DictionaryValue);
          *(DerivedStorage + 256) = time;
          v18 = FigCFDictionaryGetDictionaryValue();
          CMTimeMakeFromDictionary(&time, v18);
          *(DerivedStorage + 280) = time;
          *(DerivedStorage + 384) = 2;
          *(DerivedStorage + 154) = 0;
          FigCFDictionaryGetCMTimeIfPresent();
          if (!dword_1EAF16F18)
          {
            goto LABEL_27;
          }
        }

        else
        {
          v15 = *MEMORY[0x1E695E4D0];
          if (FigCFDictionaryGetBooleanValue() != v15)
          {
            if (dword_1EAF16F18)
            {
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            v22 = *(DerivedStorage + 376);
            if (v22)
            {
              CFRelease(v22);
              *(DerivedStorage + 376) = 0;
            }

            goto LABEL_27;
          }

          v19 = FigCFDictionaryGetDictionaryValue();
          CMTimeMakeFromDictionary(&time, v19);
          *(DerivedStorage + 256) = time;
          *(DerivedStorage + 384) = 1;
          if (!dword_1EAF16F18)
          {
LABEL_27:
            time = *(DerivedStorage + 256);
            fbapspManager_updateOverlapDeadline(a1, &time.value);
            CMBaseObjectGetDerivedStorage();
            if (fbapspManager_isRetransmitForOverlapRequired())
            {
              fbapspManager_postNotification(a1, @"OverlapDeadlineReached", 0);
            }

            return;
          }
        }

        v20 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
LABEL_26:
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        goto LABEL_27;
      }
    }

    else
    {
      *(DerivedStorage + 376) = 0;
    }

    if (!dword_1EAF16F18)
    {
      goto LABEL_27;
    }

    v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    goto LABEL_26;
  }

  if (dword_1EAF16F18)
  {
    v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*(DerivedStorage + 384) == 2)
  {
    fbapspManager_processOverlapRange_cold_1(DerivedStorage, a1);
  }

  v9 = *(DerivedStorage + 376);
  if (v9)
  {
    CFRelease(v9);
    *(DerivedStorage + 376) = 0;
  }

  v10 = MEMORY[0x1E6960C70];
  v11 = *MEMORY[0x1E6960C70];
  *(DerivedStorage + 256) = *MEMORY[0x1E6960C70];
  v12 = *(v10 + 16);
  *(DerivedStorage + 272) = v12;
  *(DerivedStorage + 280) = v11;
  *(DerivedStorage + 296) = v12;
  *(DerivedStorage + 304) = v11;
  *(DerivedStorage + 320) = v12;
  *(DerivedStorage + 384) = 0;
  *(DerivedStorage + 404) = v12;
  *(DerivedStorage + 388) = v11;
  fbapspManager_updateOverlapDeadline(a1, v10);
}

uint64_t fbapspManager_reset(uint64_t a1, char a2)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  v4 = *(CMBaseObjectGetDerivedStorage() + 80);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __fbapspManager_reset_block_invoke;
  block[3] = &unk_1E7482C40;
  block[4] = &v9;
  block[5] = a1;
  v8 = a2;
  dispatch_sync(v4, block);
  v5 = *(v10 + 6);
  _Block_object_dispose(&v9, 8);
  return v5;
}

uint64_t fbapspManager_flush(uint64_t a1, __int128 *a2)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *(DerivedStorage + 80);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 0x40000000;
  v8[2] = __fbapspManager_flush_block_invoke;
  v8[3] = &unk_1E7482C68;
  v8[4] = &v11;
  v8[5] = DerivedStorage;
  v8[6] = a1;
  v9 = *a2;
  v10 = *(a2 + 2);
  dispatch_sync(v5, v8);
  v6 = *(v12 + 6);
  _Block_object_dispose(&v11, 8);
  return v6;
}

uint64_t fbapspManager_flushFromTime(const void *a1, __int128 *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v23 = 0;
  v24 = &v23;
  v25 = 0x2000000000;
  v26 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2000000000;
  v22 = 0;
  v5 = *(DerivedStorage + 80);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __fbapspManager_flushFromTime_block_invoke;
  block[3] = &unk_1E7482C90;
  v6 = a2[2];
  v17 = a2[1];
  v18 = v6;
  v16 = *a2;
  block[6] = DerivedStorage;
  block[7] = a1;
  block[4] = &v23;
  block[5] = &v19;
  dispatch_sync(v5, block);
  if (*(v20 + 24))
  {
    v7 = *(v24 + 6);
  }

  else
  {
    *(v24 + 6) = 0;
    if (a1)
    {
      CFRetain(a1);
    }

    v8 = *(DerivedStorage + 88);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 0x40000000;
    v11[2] = __fbapspManager_flushFromTime_block_invoke_210;
    v11[3] = &unk_1E7482D00;
    v11[6] = DerivedStorage;
    v11[7] = a1;
    v9 = a2[1];
    v12 = *a2;
    v13 = v9;
    v14 = a2[2];
    v11[4] = &v19;
    v11[5] = &v23;
    dispatch_async(v8, v11);
    v7 = 0;
  }

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);
  return v7;
}

uint64_t fbapspManager_prepareMixingData(uint64_t a1)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 80);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __fbapspManager_prepareMixingData_block_invoke;
  block[3] = &unk_1E7482D28;
  block[5] = DerivedStorage;
  block[6] = a1;
  block[4] = &v7;
  dispatch_sync(v3, block);
  v4 = *(v8 + 6);
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t fbapspManager_startMixingData(uint64_t a1)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 80);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = &__fbapspManager_startMixingData_block_invoke;
  block[3] = &unk_1E7482D50;
  block[5] = DerivedStorage;
  block[6] = a1;
  block[4] = &v7;
  dispatch_sync(v3, block);
  v4 = *(v8 + 6);
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t fbapspManager_stopMixingData(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 80);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = __fbapspManager_stopMixingData_block_invoke;
  v5[3] = &__block_descriptor_tmp_218;
  v5[4] = DerivedStorage;
  v5[5] = a1;
  dispatch_sync(v3, v5);
  return 0;
}

uint64_t fbapspManager_requestRetransmitAtDeadline(const void *a1, char a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    CFRetain(a1);
  }

  v5 = *(DerivedStorage + 80);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __fbapspManager_postNotificationForRequestRetransmitIfNeededAsync_block_invoke;
  block[3] = &__block_descriptor_tmp_219;
  v8 = a2;
  block[4] = DerivedStorage;
  block[5] = a1;
  dispatch_async(v5, block);
  return 0;
}

__n128 __fbapspManager_flushFromTime_block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 48);
  if (*(v1 + 384) == 1 && *(v1 + 156) == 3)
  {
    *time1 = *(v1 + 256);
    *&time1[16] = *(v1 + 272);
    time2 = *(a1 + 64);
    if (CMTimeCompare(time1, &time2) < 0)
    {
      if (dword_1EAF16F18)
      {
        LODWORD(queueOut) = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v5 = *(a1 + 56);
      v6 = *(*(a1 + 48) + 128);
      time2 = *(a1 + 64);
      queueOut = 0;
      v17 = 0u;
      memset(time1, 0, sizeof(time1));
      v7 = *MEMORY[0x1E695E480];
      CallbacksForUnsortedSampleBuffers = CMBufferQueueGetCallbacksForUnsortedSampleBuffers();
      v9 = CMBufferQueueCreate(v7, 0, CallbacksForUnsortedSampleBuffers, &queueOut);
      if (v9 || (*time1 = v5, *&time1[8] = queueOut, *&time1[16] = *&time2.value, *&v17 = time2.epoch, BYTE8(v17) = 1, HIDWORD(v17) = 0, (v9 = MEMORY[0x19A8CE710](v6, fbapspManager_copySbufBeforeFlushTimeForBufferQueueResetCallback, time1)) != 0))
      {
        v11 = v9;
      }

      else
      {
        v10 = MEMORY[0x19A8CE710](queueOut, fbapspManager_copySbufForBufferQueueResetCallback, v6);
        if (v10)
        {
          v11 = v10;
        }

        else
        {
          v11 = HIDWORD(v17);
        }
      }

      if (queueOut)
      {
        CFRelease(queueOut);
      }

      *(*(*(a1 + 32) + 8) + 24) = v11;
      v12 = *(a1 + 48) + 580;
      v13 = MEMORY[0x1E6960C70];
      result = *MEMORY[0x1E6960C70];
      *v12 = *MEMORY[0x1E6960C70];
      *(v12 + 16) = *(v13 + 16);
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }
  }

  return result;
}

void __fbapspManager_flushFromTime_block_invoke_211(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v16 = **&MEMORY[0x1E6960C70];
  v15 = v16;
  v3 = (a1 + 48);
  v2 = *(a1 + 48);
  if (!*(v2 + 456) && *(v2 + 576))
  {
    if (*(v2 + 556))
    {
      time1 = *(a1 + 64);
      time2 = *(v2 + 544);
      v5 = CMTimeCompare(&time1, &time2);
      v2 = *(a1 + 48);
      if (v5 > 0)
      {
        if (*(v2 + 152))
        {
          if (dword_1EAF16F18)
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          usleep(0x30D40u);
        }

        else if ((*(v2 + 156) - 2) > 2)
        {
          *(*(*(a1 + 32) + 8) + 24) = 1;
        }

        else
        {
          fbapspManager_dequeueInspectSendSampleBufferInternal(*(a1 + 56));
        }

        return;
      }
    }

    v7 = CMBufferQueueDequeueAndRetain(*(v2 + 128));
    if (!CMGetAttachment(v7, @"FlushRangeEnd", 0))
    {
      goto LABEL_35;
    }

    value = *v3;
    if (*(*v3 + 120))
    {
      if (*(value + 153))
      {
        if (__fbapspManager_flushFromTime_block_invoke_211_cold_1(a1, v3, &time1.value))
        {
LABEL_35:
          if (v7)
          {
            CFRelease(v7);
          }

          return;
        }

        value = time1.value;
      }

      if (*(value + 556))
      {
        CMTimeMake(&time1, 1, 480000);
        time2 = *(value + 544);
        CMTimeAdd(&v15, &time2, &time1);
      }

      time1 = v15;
      *(*(*(a1 + 40) + 8) + 24) = CMSampleBufferSetOutputPresentationTimeStamp(v7, &time1);
      if (*(*(*(a1 + 40) + 8) + 24) || (__fbapspManager_flushFromTime_block_invoke_211_cold_2(v7, a1) & 1) != 0)
      {
        goto LABEL_35;
      }
    }

    if (dword_1EAF16F18)
    {
      v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v13 = *(*v3 + 112);
    v14 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v14)
    {
      v14(v13, v7);
    }

    *(*v3 + 576) = 0;
    goto LABEL_35;
  }

  if (dword_1EAF16F18)
  {
    v4 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  *(*(*(a1 + 32) + 8) + 24) = 1;
  v10 = *(a1 + 48);
  if ((*(v10 + 156) - 1) <= 3)
  {
    if (*(a1 + 76))
    {
      v16 = *(a1 + 64);
      if (*(v10 + 364))
      {
        time1 = *(a1 + 64);
        time2 = *(v10 + 352);
        CMTimeAdd(&v16, &time1, &time2);
      }

      if (dword_1EAF16F18)
      {
        v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      *(*v3 + 544) = v16;
      v10 = *v3;
    }

    if (*(v10 + 120))
    {
      v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    else
    {
      fbapspManager_setProcessingState(*(a1 + 56), 1);
    }
  }
}

void fbapspManager_copySbufBeforeFlushTimeForBufferQueueResetCallback(opaqueCMSampleBuffer *a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  sampleBufferOut = 0;
  v16 = **&MEMORY[0x1E6960C70];
  v15 = v16;
  v14 = v16;
  if (!*(a2 + 40))
  {
    goto LABEL_19;
  }

  v3 = a1;
  CMSampleBufferGetOutputPresentationTimeStamp(&rhs, a1);
  value = rhs.value;
  flags = rhs.flags;
  timescale = rhs.timescale;
  if ((rhs.flags & 0x1D) != 1)
  {
    goto LABEL_12;
  }

  epoch = rhs.epoch;
  CMSampleBufferGetOutputDuration(&rhs, v3);
  lhs.value = value;
  lhs.timescale = timescale;
  lhs.flags = flags;
  lhs.epoch = epoch;
  CMTimeAdd(&v16, &lhs, &rhs);
  rhs.value = value;
  rhs.timescale = timescale;
  rhs.flags = flags;
  rhs.epoch = epoch;
  lhs = *(a2 + 16);
  if ((CMTimeCompare(&rhs, &lhs) & 0x80000000) == 0)
  {
    *(a2 + 40) = 0;
    goto LABEL_19;
  }

  rhs = v16;
  lhs = *(a2 + 16);
  if (CMTimeCompare(&rhs, &lhs) >= 1)
  {
    v6 = *MEMORY[0x1E695E480];
    CMSampleBufferCreateCopy(*MEMORY[0x1E695E480], v3, &sampleBufferOut);
    if (!sampleBufferOut)
    {
      fbapspManager_copySbufBeforeFlushTimeForBufferQueueResetCallback_cold_1();
      goto LABEL_19;
    }

    v7 = CMCopyDictionaryOfAttachments(v6, v3, 0);
    if (v7)
    {
      CMSetAttachments(sampleBufferOut, v7, 0);
    }

    rhs = v16;
    lhs = *(a2 + 16);
    CMTimeSubtract(&v15, &rhs, &lhs);
    v8 = *MEMORY[0x1E6960558];
    v9 = CMGetAttachment(sampleBufferOut, *MEMORY[0x1E6960558], 0);
    if (v9)
    {
      CMTimeMakeFromDictionary(&v14, v9);
      lhs = v15;
      v11 = v14;
      CMTimeAdd(&rhs, &lhs, &v11);
      v15 = rhs;
    }

    rhs = v15;
    v10 = CMTimeCopyAsDictionary(&rhs, v6);
    CMSetAttachment(sampleBufferOut, v8, v10, 1u);
    v3 = sampleBufferOut;
  }

  else
  {
LABEL_12:
    v7 = 0;
    v10 = 0;
  }

  if (*(a2 + 40))
  {
    CMBufferQueueEnqueue(*(a2 + 8), v3);
    *(a2 + 44) = 0;
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (v10)
  {
    CFRelease(v10);
  }

LABEL_19:
  if (sampleBufferOut)
  {
    CFRelease(sampleBufferOut);
  }
}

uint64_t OUTLINED_FUNCTION_4_41()
{

  return _os_log_send_and_compose_impl();
}

uint64_t OUTLINED_FUNCTION_12_17()
{

  return _os_log_send_and_compose_impl();
}

uint64_t OUTLINED_FUNCTION_16_12()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

__n128 OUTLINED_FUNCTION_25_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __n128 a19, uint64_t a20)
{
  result = a19;
  *(v20 - 256) = a19;
  *(v20 - 240) = a20;
  return result;
}

uint64_t OUTLINED_FUNCTION_33_8()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_34_9()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_38_6()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_39_6()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

__n128 OUTLINED_FUNCTION_46_4@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u64[0] = v1[1].n128_u64[0];
  return result;
}

Float64 OUTLINED_FUNCTION_47_4@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, CMTime *time, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int128 timea, uint64_t time_16)
{
  timea = *(a1 + 304);
  time_16 = *(a1 + 320);

  return CMTimeGetSeconds(&timea);
}

__n128 OUTLINED_FUNCTION_56_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __n128 a19, unint64_t a20)
{
  result = a19;
  v20[19] = a19;
  v20[20].n128_u64[0] = a20;
  return result;
}

__n128 OUTLINED_FUNCTION_59_2@<Q0>(__n128 *a1@<X8>)
{
  result = *a1;
  *(v1 - 48) = *a1;
  *(v1 - 32) = a1[1].n128_u64[0];
  return result;
}

BOOL OUTLINED_FUNCTION_63_3(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, __int16 a32, char a33, os_log_type_t type, int a35)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_64_5(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, __int16 a22, char a23, os_log_type_t type, int a25)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_67_4(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, __int16 a18, char a19, os_log_type_t type, int a21)
{

  return os_log_type_enabled(a1, type);
}

uint64_t RegisterFigAlternateFilterType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigAlternateFilterGetTypeID()
{
  MEMORY[0x19A8D3660](&FigAlternateFilterGetClassID_sRegisterFigAlternateFilterTypeOnce, RegisterFigAlternateFilterType);

  return CMBaseClassGetCFTypeID();
}

uint64_t FigSimpleAlternateFilterCreate(uint64_t a1, const void *a2, int a3, __int128 *a4, const void *a5, void *a6)
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  MEMORY[0x19A8D3660](&FigAlternateFilterGetClassID_sRegisterFigAlternateFilterTypeOnce, RegisterFigAlternateFilterType);
  v10 = CMDerivedObjectCreate();
  if (v10)
  {
    return v10;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v12 = CFRetain(a2);
  }

  else
  {
    v12 = 0;
  }

  *DerivedStorage = v12;
  *(DerivedStorage + 8) = a3;
  v13 = *a4;
  v14 = a4[1];
  *(DerivedStorage + 48) = *(a4 + 4);
  *(DerivedStorage + 16) = v13;
  *(DerivedStorage + 32) = v14;
  if (a5)
  {
    v15 = CFRetain(a5);
  }

  else
  {
    v15 = 0;
  }

  *(DerivedStorage + 72) = v15;
  v16 = FigSimpleMutexCreate();
  *(DerivedStorage + 56) = v16;
  if (v16)
  {
    v17 = 0;
    *a6 = 0;
  }

  else
  {
    FigSimpleAlternateFilterCreate_cold_1(&v20);
    return v20;
  }

  return v17;
}

CFTypeRef FigCFRetain(CFTypeRef cf)
{
  if (cf)
  {
    return CFRetain(cf);
  }

  return cf;
}

void FigCFRelease_3(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t FigAlternateMergeFilterCreate(uint64_t a1, const void *a2, int a3, const void *a4, const void *a5, int a6, void *a7)
{
  MEMORY[0x19A8D3660](&FigAlternateFilterGetClassID_sRegisterFigAlternateFilterTypeOnce, RegisterFigAlternateFilterType);
  v13 = CMDerivedObjectCreate();
  if (!v13)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (a2)
    {
      v15 = CFRetain(a2);
    }

    else
    {
      v15 = 0;
    }

    *DerivedStorage = v15;
    *(DerivedStorage + 8) = a3;
    if (a4)
    {
      v16 = CFRetain(a4);
    }

    else
    {
      v16 = 0;
    }

    *(DerivedStorage + 16) = v16;
    if (a5)
    {
      v17 = CFRetain(a5);
    }

    else
    {
      v17 = 0;
    }

    *(DerivedStorage + 24) = v17;
    *(DerivedStorage + 32) = a6;
    *a7 = 0;
  }

  return v13;
}

uint64_t FigAlternateHDCPLazyEPMFilterCreate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  MEMORY[0x19A8D3660](&FigAlternateFilterGetClassID_sRegisterFigAlternateFilterTypeOnce, RegisterFigAlternateFilterType);
  v8 = CMDerivedObjectCreate();
  if (v8)
  {
    return v8;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *DerivedStorage = FigCFWeakReferenceHolderCreateWithReferencedObject();
  DerivedStorage[1] = a2;
  DerivedStorage[2] = a3;
  DerivedStorage[3] = 0x100000001;
  v10 = FigSimpleMutexCreate();
  DerivedStorage[4] = v10;
  if (v10)
  {
    v11 = 0;
    *a5 = 0;
  }

  else
  {
    FigAlternateHDCPLazyEPMFilterCreate_cold_1(&v13);
    return v13;
  }

  return v11;
}

uint64_t FigAlternateAOCPFilterCreate(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  v17.version = 0;
  v17.info = a1;
  v17.retain = FigCFRetain;
  v17.release = FigCFRelease_3;
  memset(&v17.copyDescription, 0, 24);
  v17.deallocate = faf_AOCPContextDeallocatorCallback;
  v17.preferredSize = 0;
  v8 = CFAllocatorCreate(a1, &v17);
  if (!v8)
  {
    FigAlternateAOCPFilterCreate_cold_3(&v18);
    goto LABEL_12;
  }

  v9 = v8;
  v10 = MEMORY[0x19A8CC720](a1, 16, 0xA0040BD48D6D6, 0);
  if (!v10)
  {
    FigAlternateAOCPFilterCreate_cold_2(v9, &v18);
    goto LABEL_12;
  }

  v11 = v10;
  *v10 = a2;
  *(v10 + 8) = v7;
  v12 = CFDataCreateWithBytesNoCopy(a1, v10, 16, v9);
  if (!v12)
  {
    FigAlternateAOCPFilterCreate_cold_1(a1, v11, v9, &v18);
LABEL_12:
    v15 = v18;
    if (!v7)
    {
      return v15;
    }

    goto LABEL_7;
  }

  v13 = v12;
  v14 = v11[1];
  if (v14)
  {
    CFRetain(v14);
  }

  v15 = FigSimpleAlternateFilterCreate(a1, @"AOCP", 879, &unk_1F0AE05D0, v13, a4);
  CFRelease(v9);
  CFRelease(v13);
  if (v7)
  {
LABEL_7:
    CFRelease(v7);
  }

  return v15;
}

void faf_AOCPContextDeallocatorCallback(void *ptr, CFAllocatorRef allocator)
{
  v4 = ptr[1];
  if (v4)
  {
    CFRelease(v4);
    ptr[1] = 0;
  }

  CFAllocatorDeallocate(allocator, ptr);
}

uint64_t faf_AOCPFilterFn(uint64_t a1, const __CFData *a2)
{
  if (FigAlternateGetAllowedAOCP(a1))
  {
    return 1;
  }

  BytePtr = CFDataGetBytePtr(a2);
  v5 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v5)
  {
    faf_AOCPFilterFn_cold_2();
    return 1;
  }

  v6 = v5;
  if (*BytePtr)
  {
    v3 = (*BytePtr)(v5) == 0;
  }

  else
  {
    faf_AOCPFilterFn_cold_1();
    v3 = 1;
  }

  CFRelease(v6);
  return v3;
}

CFStringRef faf_AOCPDescFn(int a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  v3 = FigCFWeakReferenceHolderCopyReferencedObject();
  v4 = *MEMORY[0x1E695E480];
  if (v3)
  {
    v5 = v3;
    v6 = (*BytePtr)();
    v7 = CFStringCreateWithFormat(v4, 0, @"aocp:%d", v6);
    CFRelease(v5);
    return v7;
  }

  else
  {
    v9 = CFStringCreateWithFormat(v4, 0, @"aocp:%d", 0xFFFFFFFFLL);
    FigSignalErrorAtGM();
    return v9;
  }
}

uint64_t FigAlternateProtectedHDCPLevelUpperLimitFilterCreate(const __CFAllocator *a1, int a2, void *a3)
{
  *bytes = a2;
  v5 = CFDataCreate(a1, bytes, 4);
  if (v5)
  {
    v6 = v5;
    v7 = FigSimpleAlternateFilterCreate(a1, @"ProtectedHDCPLevelUpperLimit", 1000, &unk_1F0AE05F8, v5, a3);
    CFRelease(v6);
  }

  else
  {
    FigAlternateProtectedHDCPLevelUpperLimitFilterCreate_cold_1(&v10);
    return v10;
  }

  return v7;
}

CFStringRef fhaf_copyProtectedHDCPLevelUpperLimitDescAddendum(int a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  v3 = *MEMORY[0x1E695E480];
  LoggingStringFromHDCPLevel = FigAlternateGetLoggingStringFromHDCPLevel(*BytePtr);
  return CFStringCreateWithFormat(v3, 0, @"hdcpLevel:%@", LoggingStringFromHDCPLevel);
}

uint64_t FigAlternateSupportedVideoRangeFilterCreate(const __CFAllocator *a1, int a2, void *a3)
{
  *bytes = a2;
  v5 = CFDataCreate(a1, bytes, 4);
  if (v5)
  {
    v6 = v5;
    v7 = FigSimpleAlternateFilterCreate(a1, @"SupportedVideoRange", 1000, &unk_1F0AE0620, v5, a3);
    CFRelease(v6);
  }

  else
  {
    FigAlternateSupportedVideoRangeFilterCreate_cold_1(&v10);
    return v10;
  }

  return v7;
}

uint64_t faf_SupportedVideoRangeFilterFn(uint64_t a1, CFDataRef theData)
{
  v3 = *CFDataGetBytePtr(theData);
  VideoRange = FigAlternateGetVideoRange(a1);
  v5 = FPSupportVideoRangeToAlternateVideoRange(v3);
  IsAudioOnly = FigAlternateIsAudioOnly(a1);
  v9 = VideoRange == 2 && v3 == 1 || v5 >= VideoRange;
  if (!v3)
  {
    v9 |= FigAlternateGetCodecString(a1) == 0;
  }

  return (IsAudioOnly != 0) | v9 & 1u;
}

CFStringRef faf_copySupportedVideoRangeDescAddendum(int a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  v3 = *MEMORY[0x1E695E480];
  ModeString = FPSupport_GetModeString(*BytePtr);
  return CFStringCreateWithFormat(v3, 0, @"mode:[%s]", ModeString);
}

uint64_t FigAlternateMediaValidationFilterCreate(uint64_t a1, int a2, void *a3)
{
  v5 = MEMORY[0x1E695E4D0];
  if (!a2)
  {
    v5 = MEMORY[0x1E695E4C0];
  }

  if (*v5)
  {
    v6 = CFRetain(*v5);
  }

  else
  {
    v6 = 0;
  }

  return FigSimpleAlternateFilterCreate(a1, @"MediaValidation", 1000, &unk_1F0AE0648, v6, a3);
}

CFStringRef faf_copyMediaValidationDescAddendum(uint64_t a1, uint64_t a2)
{
  if (*MEMORY[0x1E695E4D0] == a2)
  {
    v2 = "YES";
  }

  else
  {
    v2 = "NO";
  }

  return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"allowUnknownCodecs:%s", v2);
}

uint64_t FigAlternateAllowedCPCFilterCreate(const __CFAllocator *a1, uint64_t a2, void *a3)
{
  *v9 = a2;
  v5 = CFDataCreate(a1, v9, 8);
  if (v5)
  {
    v6 = v5;
    v7 = FigSimpleAlternateFilterCreate(a1, @"AllowedCPC", 1000, &unk_1F0AE0670, v5, a3);
    CFRelease(v6);
  }

  else
  {
    FigAlternateAllowedCPCFilterCreate_cold_1(&v10);
    return v10;
  }

  return v7;
}

BOOL faf_allowedCPCFilterFn(uint64_t a1, CFDataRef theData)
{
  v3 = *CFDataGetBytePtr(theData);
  AllowedCPC = FigAlternateGetAllowedCPC(a1);
  v5 = FigAlternateGetAllowedCPC(a1);
  return (AllowedCPC & v3) != 0 || v5 == -1;
}

uint64_t FigAlternatePathwayPreferenceFilterCreate(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v17.version = 0;
  v17.info = a1;
  v17.retain = FigCFRetain;
  v17.release = FigCFRelease_3;
  memset(&v17.copyDescription, 0, 24);
  v17.deallocate = fappfContextDeallocateCallback;
  v17.preferredSize = 0;
  v8 = CFAllocatorCreate(a1, &v17);
  if (!v8)
  {
    FigAlternatePathwayPreferenceFilterCreate_cold_3(&v18);
    return v18;
  }

  v9 = v8;
  v10 = MEMORY[0x19A8CC720](a1, 40, 0x1060040B7C726DALL, 0);
  if (!v10)
  {
    FigAlternatePathwayPreferenceFilterCreate_cold_2(v9, &v18);
    return v18;
  }

  v11 = v10;
  *v10 = a3;
  *(v10 + 8) = a2;
  *(v10 + 24) = 0;
  *(v10 + 32) = 0;
  *(v10 + 16) = 0;
  v12 = CFDataCreateWithBytesNoCopy(a1, v10, 40, v9);
  if (!v12)
  {
    FigAlternatePathwayPreferenceFilterCreate_cold_1(a1, v11, v9, &v18);
    return v18;
  }

  v13 = v12;
  if (*v11)
  {
    CFRetain(*v11);
  }

  v14 = v11[1];
  if (v14)
  {
    CFRetain(v14);
  }

  v15 = FigSimpleAlternateFilterCreate(a1, @"PathwayPreference", 647, &off_1F0AE06C0, v13, a4);
  CFRelease(v9);
  CFRelease(v13);
  return v15;
}

const __CFArray *fappf_PathwayFilterInitFn(const __CFData *a1)
{
  BytePtr = CFDataGetBytePtr(a1);
  v2 = *(BytePtr + 2);
  if (v2)
  {
    CFRelease(v2);
    *(BytePtr + 2) = 0;
  }

  result = *BytePtr;
  if (*BytePtr)
  {
    result = CFArrayGetCount(result);
  }

  *(BytePtr + 3) = result;
  if (!*(BytePtr + 4))
  {
    result = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    *(BytePtr + 4) = result;
  }

  return result;
}

void fappf_PathwayFirstPassFn(uint64_t a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  PathwayID = FigAlternateGetPathwayID(a1);
  FirstIndexOfValue = 0;
  if (PathwayID && *BytePtr)
  {
    if (!FigCFDictionaryGetCFIndexIfPresent())
    {
      v5 = *BytePtr;
      v8.length = CFArrayGetCount(*BytePtr);
      v8.location = 0;
      FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v5, v8, PathwayID);
      if (FirstIndexOfValue == -1)
      {
        FirstIndexOfValue = CFArrayGetCount(*BytePtr);
      }

      FigCFDictionarySetCFIndex();
    }
  }

  else
  {
    FirstIndexOfValue = *(BytePtr + 3);
  }

  if (FirstIndexOfValue < *(BytePtr + 3))
  {
    v6 = *(BytePtr + 2);
    *(BytePtr + 2) = PathwayID;
    if (PathwayID)
    {
      CFRetain(PathwayID);
    }

    if (v6)
    {
      CFRelease(v6);
    }

    *(BytePtr + 3) = FirstIndexOfValue;
  }
}

CFStringRef fappf_PathwayFilterDescAddendum(int a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  v3 = FigCFCopyCompactDescription();
  v4 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"Pathway Priority: %@, Fallback Pathway: %@", v3, *(BytePtr + 1));
  if (v3)
  {
    CFRelease(v3);
  }

  return v4;
}

void fappfContextDeallocateCallback(const void **ptr, CFAllocatorRef allocator)
{
  v4 = *ptr;
  if (v4)
  {
    CFRelease(v4);
    *ptr = 0;
  }

  v5 = ptr[1];
  if (v5)
  {
    CFRelease(v5);
    ptr[1] = 0;
  }

  v6 = ptr[2];
  if (v6)
  {
    CFRelease(v6);
    ptr[2] = 0;
  }

  v7 = ptr[4];
  if (v7)
  {
    CFRelease(v7);
    ptr[4] = 0;
  }

  CFAllocatorDeallocate(allocator, ptr);
}

uint64_t FigAlternateAllowListWithStableVariantIDFilterCreate(uint64_t a1, const void *a2, unsigned int a3, void *a4)
{
  if (a3 >= 0x372)
  {
    v4 = 0;
  }

  else
  {
    v4 = faf_allEqualMinSortingFn;
  }

  v6 = 0uLL;
  v7 = fasvip_StableVariantIDFilterFn;
  v8 = v4;
  v9 = 0;
  return FigSimpleAlternateFilterCreate(a1, @"StableVariantIDPinning", a3, &v6, a2, a4);
}

uint64_t fasvip_StableVariantIDFilterFn(uint64_t a1)
{
  FigAlternateGetStableStreamIdentifier(a1);

  return FigCFEqual();
}

uint64_t FigAlternateAllowListWithStableRenditionIDFilterCreate(const __CFAllocator *a1, const void *a2, const void *a3, unsigned int a4, unsigned int a5, void *a6)
{
  v20 = 0;
  v12 = CFStringCreateWithFormat(a1, 0, @"%@%c%c%c%c", @"StableRenditionIDPinning_", HIBYTE(a4), BYTE2(a4), BYTE1(a4), a4);
  if (v12)
  {
    v13 = v12;
    if (a2)
    {
      v14 = CFRetain(a2);
    }

    else
    {
      v14 = 0;
    }

    __src[0] = v14;
    if (a3)
    {
      v15 = CFRetain(a3);
    }

    else
    {
      v15 = 0;
    }

    __src[1] = v15;
    LODWORD(v20) = a4;
    if (a5 >= 0x372)
    {
      v16 = 0;
    }

    else
    {
      v16 = faf_allEqualMinSortingFn;
    }

    v17 = fsaf_createWithBytes(a1, v13, a5, fasrif_StableRenditionIDFilterFn, v16, 0, 0, fasrif_StableReditionIDDescAddendumFn, __src, 24, fasrifContextDeallocateCallback, a6);
    CFRelease(v13);
  }

  else
  {
    FigAlternateAllowListWithStableRenditionIDFilterCreate_cold_1(&v21);
    return v21;
  }

  return v17;
}

uint64_t fsaf_createWithBytes(void *a1, const void *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, CFTypeRef (*a8)(), void *__src, uint64_t a10, void (__cdecl *a11)(void *, void *), void *a12)
{
  context.version = 0;
  context.info = a1;
  context.retain = FigCFRetain;
  context.release = FigCFRelease_3;
  memset(&context.copyDescription, 0, 24);
  context.deallocate = a11;
  context.preferredSize = 0;
  if (a8)
  {
    v19 = a8;
  }

  else
  {
    v19 = fsaf_copyEmptyDescAddendum;
  }

  v20 = MEMORY[0x19A8CC720]();
  if (!v20)
  {
    fsaf_createWithBytes_cold_3(&v30);
    return v30;
  }

  v21 = v20;
  v29 = v19;
  v22 = a5;
  memcpy(v20, __src, a10);
  v23 = CFAllocatorCreate(a1, &context);
  if (!v23)
  {
    fsaf_createWithBytes_cold_2(&v30);
    return v30;
  }

  v24 = v23;
  v25 = CFDataCreateWithBytesNoCopy(a1, v21, a10, v23);
  if (!v25)
  {
    fsaf_createWithBytes_cold_1(v24, &v30);
    return v30;
  }

  v26 = v25;
  *&v30 = a7;
  *(&v30 + 1) = a6;
  v31 = a4;
  v32 = v22;
  v33 = v29;
  v27 = FigSimpleAlternateFilterCreate(a1, a2, a3, &v30, v25, a12);
  CFRelease(v24);
  CFRelease(v26);
  return v27;
}

uint64_t fasrif_StableRenditionIDFilterFn(uint64_t a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  FigAlternateGetStableStreamIdentifierForMediaSubstream(a1, *(BytePtr + 4), *BytePtr);

  return FigCFEqual();
}

void fasrifContextDeallocateCallback(const void **ptr, CFAllocatorRef allocator)
{
  v4 = *ptr;
  if (v4)
  {
    CFRelease(v4);
    *ptr = 0;
  }

  v5 = ptr[1];
  if (v5)
  {
    CFRelease(v5);
    ptr[1] = 0;
  }

  CFAllocatorDeallocate(allocator, ptr);
}

uint64_t FigAlternateMediaSelectionAudibleFilterCreate(uint64_t a1, const void *a2, void *a3)
{
  MEMORY[0x19A8D3660](&FigAlternateFilterGetClassID_sRegisterFigAlternateFilterTypeOnce, RegisterFigAlternateFilterType);
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

    *DerivedStorage = v7;
    *a3 = 0;
  }

  return v5;
}

uint64_t fsaf_createWithNoContext(const __CFAllocator *a1, const void *a2, int a3, uint64_t a4, uint64_t a5, void *a6)
{
  *bytes = a4;
  v23 = a5;
  v12 = CFDataCreate(a1, bytes, 16);
  if (v12)
  {
    v13 = v12;
    if (a5)
    {
      v14 = fsaf_ComparatorFnNoContext;
    }

    else
    {
      v14 = 0;
    }

    if (a4)
    {
      v15 = fsaf_filterFnNoContext;
    }

    else
    {
      v15 = 0;
    }

    v18 = 0uLL;
    v19 = v15;
    v20 = v14;
    v21 = fsaf_copyEmptyDescAddendum;
    v16 = FigSimpleAlternateFilterCreate(a1, a2, a3, &v18, v12, a6);
    CFRelease(v13);
  }

  else
  {
    fsaf_createWithNoContext_cold_1(&v18);
    return v18;
  }

  return v16;
}

uint64_t FigAlternateURLDependencyDenyListFilterCreate(void *a1, CFTypeRef cf, const void *a3, int a4, void *a5)
{
  if (cf)
  {
    __src[0] = CFRetain(cf);
    if (a3)
    {
      v9 = CFRetain(a3);
    }

    else
    {
      v9 = 0;
    }

    __src[1] = v9;
    if (a4)
    {
      v10 = 890;
    }

    else
    {
      v10 = 878;
    }

    if (a4)
    {
      v11 = 0;
    }

    else
    {
      v11 = faf_allEqualMinSortingFn;
    }

    return fsaf_createWithBytes(a1, @"URLDependency", v10, faf_urlDependencyFilterFn, v11, 0, 0, 0, __src, 16, faf_urlDependencyDeallocateCallback, a5);
  }

  else
  {
    FigAlternateURLDependencyDenyListFilterCreate_cold_1(__src);
    return LODWORD(__src[0]);
  }
}

BOOL faf_urlDependencyFilterFn(uint64_t a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  FigAlternateGetPlaylistAlternateURL(a1);
  if (!CFArrayGetCount(*BytePtr))
  {
    return 1;
  }

  if (!BytePtr[1])
  {
    return FigCFArrayContainsValue() == 0;
  }

  if (!FigAlternateHasVideo(a1))
  {
    FigAlternateHasAudio(a1);
  }

  Count = CFArrayGetCount(BytePtr[1]);
  if (Count < 1)
  {
    return FigCFArrayContainsValue() == 0;
  }

  v6 = Count;
  v7 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(BytePtr[1], v7);
    CFDictionaryGetValue(ValueAtIndex, @"MediaSelectionGroupMediaType");
    v13 = 0;
    if (FigCFStringGetOSTypeValue())
    {
      Value = CFDictionaryGetValue(ValueAtIndex, @"MediaSelectionOptionsPersistentID");
      v11 = 0;
      v12 = 0;
      v10 = 0;
      FigAlternateGetRenditionInfoForMediaType(a1, v13, Value, Value, Value, 0, &v10, &v12, &v11);
      if (v12)
      {
        if (FigCFArrayContainsValue())
        {
          break;
        }
      }
    }

    if (v6 == ++v7)
    {
      return FigCFArrayContainsValue() == 0;
    }
  }

  return 0;
}

void faf_urlDependencyDeallocateCallback(const void **ptr, CFAllocatorRef allocator)
{
  v4 = *ptr;
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = ptr[1];
  if (v5)
  {
    CFRelease(v5);
  }

  CFAllocatorDeallocate(allocator, ptr);
}

uint64_t FigAlternateScanModePreferenceFilterCreate(const __CFAllocator *a1, UInt8 a2, void *a3)
{
  bytes = a2;
  v5 = CFDataCreate(a1, &bytes, 1);
  v6 = FigSimpleAlternateFilterCreate(a1, @"ScanModePreference", 881, &unk_1F0AE0728, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

uint64_t faf_ScanModeMinSortingFn(uint64_t a1, uint64_t a2, CFDataRef theData)
{
  v5 = *CFDataGetBytePtr(theData);
  IsIFrameOnly = FigAlternateIsIFrameOnly(a1);
  v7 = FigAlternateIsIFrameOnly(a2);
  v8 = -1;
  if (IsIFrameOnly >= v7)
  {
    v8 = 1;
  }

  if (IsIFrameOnly == v7)
  {
    v8 = 0;
  }

  if (v5)
  {
    return -v8;
  }

  else
  {
    return v8;
  }
}

CFTypeRef faf_copyScanModePreferenceDescAddendum(int a1, CFDataRef theData)
{
  if (*CFDataGetBytePtr(theData))
  {
    v2 = @"I-Frame";
  }

  else
  {
    v2 = @"contiguous";
  }

  return CFRetain(v2);
}

uint64_t FigAlternateSupportedAudioFormatFilterCreate(const __CFAllocator *a1, uint64_t a2, void *a3)
{
  v9 = a2;
  v11 = BYTE6(a2);
  v10 = WORD2(a2);
  v5 = CFDataCreate(a1, &v9, 7);
  if (v5)
  {
    v6 = v5;
    v7 = FigSimpleAlternateFilterCreate(a1, @"SupportedAudioFormat", 1000, &unk_1F0AE0750, v5, a3);
    CFRelease(v6);
  }

  else
  {
    FigAlternateSupportedAudioFormatFilterCreate_cold_1(&v12);
    return v12;
  }

  return v7;
}

BOOL faf_supportedAudioFormatFilterFn(const void *a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  v4 = *BytePtr;
  v5 = BytePtr[1];
  v6 = BytePtr[2];
  v7 = BytePtr[3];
  v8 = BytePtr[4];
  v9 = BytePtr[5];
  v10 = BytePtr[6];
  if (FigAlternateHasAudioFormat(a1, 7))
  {
    v11 = !v9 && v8 == 0;
    if (v11 && v6 == 0)
    {
      return 0;
    }
  }

  if (FigAlternateHasAudioFormat(a1, 6) && !v8 && !v5 || FigAlternateHasAudioFormat(a1, 5) && !v7 && !v4)
  {
    return 0;
  }

  HasAudioFormat = FigAlternateHasAudioFormat(a1, 3);
  result = 1;
  if (HasAudioFormat)
  {
    if (!v10)
    {
      return FigAlternateGetMaxAudioChannelCount(a1) < 3;
    }
  }

  return result;
}

CFStringRef faf_copySupportedAudioFormatDescAddendum(int a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  if (BytePtr[3])
  {
    v3 = "YES";
  }

  else
  {
    v3 = "NO";
  }

  if (BytePtr[4])
  {
    v4 = "YES";
  }

  else
  {
    v4 = "NO";
  }

  if (BytePtr[5])
  {
    v5 = "YES";
  }

  else
  {
    v5 = "NO";
  }

  if (*BytePtr)
  {
    v6 = "YES";
  }

  else
  {
    v6 = "NO";
  }

  if (BytePtr[1])
  {
    v7 = "YES";
  }

  else
  {
    v7 = "NO";
  }

  if (BytePtr[2])
  {
    v8 = "YES";
  }

  else
  {
    v8 = "NO";
  }

  return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"ac3IsDecodable:%s ec3IsDecodable:%s atmosIsDecodable:%s, ac3CanPassthrough:%s ec3CanPassthrough:%s, atmosCanPassthrough:%s", v3, v4, v5, v6, v7, v8);
}

uint64_t FigAlternatePreferVideoCodecsWithHardwareDecodeFilterCreate(const __CFAllocator *a1, void *a2)
{
  bytes = 0;
  v4 = CFDataCreate(a1, &bytes, 1);
  if (v4)
  {
    v5 = v4;
    v6 = FigSimpleAlternateFilterCreate(a1, @"PreferVideoCodecsWithHardwareDecode", 876, &off_1F0AE07A0, v4, a2);
    CFRelease(v5);
  }

  else
  {
    FigAlternatePreferVideoCodecsWithHardwareDecodeFilterCreate_cold_1(&v9);
    return v9;
  }

  return v6;
}

const UInt8 *faf_PreferVideoCodecsWithHardwareDecodeFilterInit(const __CFData *a1)
{
  result = CFDataGetBytePtr(a1);
  *result = 0;
  return result;
}

uint64_t faf_PreferVideoCodecsWithHardwareDecodeFirstPassFilterFn(uint64_t a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  result = FigAlternateHasVideo(a1);
  if (result)
  {
    result = FigAlternateHasVideoCodecRequiringSoftwareDecode(a1);
    v5 = result == 0;
  }

  else
  {
    v5 = 0;
  }

  *BytePtr |= v5;
  return result;
}

CFTypeRef faf_copyMediaSelectionPersistentIDForMediaType(CFArrayRef theArray, int a2)
{
  v4 = 0;
  if (!theArray)
  {
    goto LABEL_3;
  }

LABEL_2:
  for (i = CFArrayGetCount(theArray); ; i = 0)
  {
    if (v4 >= i)
    {
      return 0;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v4);
    if ((CFDictionaryGetValue(ValueAtIndex, @"MediaSelectionOptionsMediaType") || CFDictionaryGetValue(ValueAtIndex, @"MediaSelectionGroupMediaType")) && FigCFStringGetOSTypeValue() && !a2)
    {
      break;
    }

    ++v4;
    if (theArray)
    {
      goto LABEL_2;
    }

LABEL_3:
    ;
  }

  result = CFDictionaryGetValue(ValueAtIndex, @"MediaSelectionOptionsPersistentID");
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

void faf_offlinePlayableForMediaSelectionFilterBytesDeallocateCallback(const void **ptr, CFAllocatorRef allocator)
{
  v4 = *ptr;
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = ptr[1];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = ptr[2];
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = ptr[3];
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = ptr[4];
  if (v8)
  {
    CFRelease(v8);
  }

  CFAllocatorDeallocate(allocator, ptr);
}

uint64_t FigAlternateAllowableMediaSubtypeFilterCreate(const __CFAllocator *a1, const __CFArray *a2, const __CFArray *a3, void *a4)
{
  v16 = 0;
  v8 = MEMORY[0x1E695E9C0];
  __src[0] = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  __src[1] = CFArrayCreateMutable(a1, 0, v8);
  if (FigCFArrayContainsInt32())
  {
    v9 = FigCFArrayContainsInt32() == 0;
  }

  else
  {
    v9 = 0;
  }

  v10 = 0;
  LOBYTE(v16) = v9;
  if (!a2)
  {
    goto LABEL_6;
  }

LABEL_5:
  for (i = CFArrayGetCount(a2); v10 < i; i = 0)
  {
    FigCFArrayGetInt32AtIndex();
    if (!FigCFArrayContainsInt32())
    {
      FigCFArrayAppendInt32();
    }

    ++v10;
    if (a2)
    {
      goto LABEL_5;
    }

LABEL_6:
    ;
  }

  v12 = 0;
  if (!a3)
  {
    goto LABEL_14;
  }

LABEL_13:
  for (j = CFArrayGetCount(a3); v12 < j; j = 0)
  {
    FigCFArrayGetInt32AtIndex();
    if (!FigCFArrayContainsInt32())
    {
      FigCFArrayAppendInt32();
    }

    ++v12;
    if (a3)
    {
      goto LABEL_13;
    }

LABEL_14:
    ;
  }

  return fsaf_createWithBytes(a1, @"AllowableMediaSubtypes", 885, faf_allowableMediaSubtypeIsAlternateMediaSubtypesAllowed, 0, 0, 0, faf_allowableMediaSubtypeDescAddendum, __src, 24, faf_allowableMediaSubtypesDeallocateCallback, a4);
}

CFStringRef faf_allowableMediaSubtypeDescAddendum(int a1, CFDataRef theData)
{
  CFDataGetBytePtr(theData);
  v2 = FigCFCopyCompactDescription();
  v3 = FigCFCopyCompactDescription();
  v4 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"videoSubtypes:%@ audioSubtypes:%@", v2, v3);
  if (v2)
  {
    CFRelease(v2);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  return v4;
}

void faf_allowableMediaSubtypesDeallocateCallback(const void **ptr, CFAllocatorRef allocator)
{
  v4 = *ptr;
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = ptr[1];
  if (v5)
  {
    CFRelease(v5);
  }

  CFAllocatorDeallocate(allocator, ptr);
}

uint64_t FigAlternatePreferredVideoFormatFilterCreate(CFAllocatorRef allocator, int a2, unsigned int a3, void *a4)
{
  v10 = a2;
  v11 = a3;
  v12 = 0;
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 == 1 && a3 - 7 <= 1)
      {
        FigAlternatePreferredVideoFormatFilterCreate_cold_1(&v14);
        return v14;
      }
    }

    else
    {
      v10 = 4;
    }

LABEL_13:
    if (a3)
    {
LABEL_17:
      v13 = 0;
      v6 = CFDataCreate(allocator, &v10, 24);
      if (v6)
      {
        v7 = v6;
        v8 = FigSimpleAlternateFilterCreate(allocator, @"PreferredVideoFormat", 800, off_1F0AE07C8, v6, a4);
        CFRelease(v7);
        return v8;
      }

      FigAlternatePreferredVideoFormatFilterCreate_cold_2(&v14);
      return v14;
    }

LABEL_14:
    v11 = 9;
    goto LABEL_17;
  }

  if (a2 == 2)
  {
    if (a3 <= 9 && ((1 << a3) & 0x230) != 0)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (a2 != 3)
    {
      goto LABEL_13;
    }

    if (!a3)
    {
      goto LABEL_14;
    }

    if (a3 != 2 && a3 != 1)
    {
      goto LABEL_17;
    }
  }

  return FigSignalErrorAtGM();
}

const UInt8 *faf_videoFormatPreferenceApplyFilterInit(const __CFData *a1)
{
  result = CFDataGetBytePtr(a1);
  *(result + 16) = 0;
  *(result + 1) = 0;
  return result;
}

uint64_t faf_videoFormatPreferenceFilterFn(uint64_t a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  VideoRange = FigAlternateGetVideoRange(a1);
  BestVideoFormat = FigAlternateGetBestVideoFormat(a1);
  IsAudioOnly = FigAlternateIsAudioOnly(a1);
  if (BytePtr[16])
  {
    if (VideoRange != *BytePtr)
    {
      v9 = 0;
      return (IsAudioOnly != 0) | v9 & 1u;
    }

    v8 = BestVideoFormat == *(BytePtr + 1);
  }

  else
  {
    v8 = faf_videoFormatPreferenceFilterMinSortingFn(a1, *(BytePtr + 1), theData) == 0;
  }

  v9 = v8;
  return (IsAudioOnly != 0) | v9 & 1u;
}

CFStringRef faf_copyPreferredVideoFormatDescAddendum(int a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  v3 = *MEMORY[0x1E695E480];
  StringFromVideoRange = FigAlternateGetStringFromVideoRange(*BytePtr);
  StringFromVideoFormat = FigAlternateGetStringFromVideoFormat(BytePtr[1]);
  return CFStringCreateWithFormat(v3, 0, @"preferredRange:%@ preferredFormat:%@", StringFromVideoRange, StringFromVideoFormat);
}

uint64_t FigAlternateNeroSupportedVideoFormatFilterCreate(const __CFAllocator *a1, void *a2)
{
  v8 = xmmword_196E76638;
  v9 = 0;
  v4 = CFDataCreate(a1, &v8, 24);
  if (v4)
  {
    v5 = v4;
    v6 = FigSimpleAlternateFilterCreate(a1, @"NeroSupportedVideoFormat", 1000, &unk_1F0AE07F0, v4, a2);
    CFRelease(v5);
  }

  else
  {
    FigAlternateNeroSupportedVideoFormatFilterCreate_cold_1(&v10);
    return v10;
  }

  return v6;
}

uint64_t faf_neroSupportedVideoFormatFirstPassFn(uint64_t a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  VideoRange = FigAlternateGetVideoRange(a1);
  result = FigAlternateGetBestVideoFormat(a1);
  if (__PAIR64__(result, VideoRange) == *BytePtr)
  {
    *(BytePtr + 16) = 1;
  }

  return result;
}

BOOL faf_neroSupportedVideoFormatFilterFn(uint64_t a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  IsAudioOnly = FigAlternateIsAudioOnly(a1);
  VideoRange = FigAlternateGetVideoRange(a1);
  BestVideoFormat = FigAlternateGetBestVideoFormat(a1);
  if (BytePtr[16])
  {
    if (VideoRange == *BytePtr)
    {
      v7 = 0;
      v8 = BestVideoFormat == *(BytePtr + 1);
      return IsAudioOnly != 0 || v8 || v7;
    }

LABEL_5:
    v8 = 0;
    v7 = 0;
    return IsAudioOnly != 0 || v8 || v7;
  }

  if (FigAlternateGetCodecString(a1))
  {
    goto LABEL_5;
  }

  v8 = 0;
  v7 = VideoRange == *BytePtr || VideoRange == 0;
  return IsAudioOnly != 0 || v8 || v7;
}

uint64_t FigAlternatePreferBestFormatForVideoRangeFilterCreate(const __CFAllocator *a1, int a2, void *a3)
{
  memset(v9, 0, sizeof(v9));
  if ((a2 - 4) <= 0xFFFFFFFC)
  {
    FigAlternatePreferBestFormatForVideoRangeFilterCreate_cold_2(&v10);
    return v10;
  }

  LODWORD(v9[0]) = a2;
  v5 = CFDataCreate(a1, v9, 24);
  if (!v5)
  {
    FigAlternatePreferBestFormatForVideoRangeFilterCreate_cold_1(&v10);
    return v10;
  }

  v6 = v5;
  v7 = FigSimpleAlternateFilterCreate(a1, @"PreferBestFormatForVideoRange", 700, &off_1F0AE0818, v5, a3);
  CFRelease(v6);
  return v7;
}

double faf_videoFormatApplyFilterInit(const __CFData *a1)
{
  BytePtr = CFDataGetBytePtr(a1);
  *(BytePtr + 1) = 0;
  *&result = 7;
  *(BytePtr + 8) = xmmword_196E76610;
  return result;
}

uint64_t faf_preferBestFormatForVideoRangeFirstPassFn(uint64_t a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  result = FigAlternateIsAudioOnly(a1);
  if (!result)
  {
    result = FigAlternateGetVideoRange(a1);
    if (result == *BytePtr)
    {
      BestVideoFormat = FigAlternateGetBestVideoFormat(a1);
      v6 = *(BytePtr + 1);
      result = FigAlternateGetBestVideoFormat(a1);
      if (BestVideoFormat > v6)
      {
        *(BytePtr + 1) = result;
        result = faf_alternateVideoVertResolutionBucket(a1);
        *(BytePtr + 1) = result;
        goto LABEL_8;
      }

      if (result != *(BytePtr + 1))
      {
        return result;
      }

      result = faf_alternateVideoVertResolutionBucket(a1);
      if (result > *(BytePtr + 2))
      {
LABEL_8:
        *(BytePtr + 2) = result;
        return result;
      }

      if (result < *(BytePtr + 1))
      {
        *(BytePtr + 1) = result;
      }
    }
  }

  return result;
}

BOOL faf_preferBestFormatForVideoRangeFilterFn(uint64_t a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  v4 = faf_alternateVideoVertResolutionBucket(a1);
  return FigAlternateIsAudioOnly(a1) || FigAlternateGetVideoRange(a1) != *BytePtr || FigAlternateGetBestVideoFormat(a1) == *(BytePtr + 1) || v4 < *(BytePtr + 1) || v4 > *(BytePtr + 2);
}

CFStringRef faf_copyPreferBestFormatForVideoRangeDescAddendum(int a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  v3 = *MEMORY[0x1E695E480];
  StringFromVideoRange = FigAlternateGetStringFromVideoRange(*BytePtr);
  StringFromVideoFormat = FigAlternateGetStringFromVideoFormat(BytePtr[1]);
  return CFStringCreateWithFormat(v3, 0, @"videoRange:%@ bestFormat:%@", StringFromVideoRange, StringFromVideoFormat);
}

uint64_t FigAlternateDisplaySizeFilterCreate(const __CFAllocator *a1, void *a2, double a3, double a4)
{
  v12 = 0;
  v13 = 0;
  *bytes = a3;
  v11 = a4;
  v6 = CFDataCreate(a1, bytes, 32);
  if (v6)
  {
    v7 = v6;
    v8 = FigSimpleAlternateFilterCreate(a1, @"DisplaySize", 700, &off_1F0AE0840, v6, a2);
    CFRelease(v7);
  }

  else
  {
    FigAlternateDisplaySizeFilterCreate_cold_1(&v14);
    return v14;
  }

  return v8;
}

const UInt8 *faf_displaySizeApplyInit(const __CFData *a1)
{
  result = CFDataGetBytePtr(a1);
  *(result + 16) = 0;
  *(result + 3) = 0xBFF0000000000000;
  return result;
}

void faf_displaySizeFirstPassFn(uint64_t a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  Resolution = FigAlternateGetResolution(a1);
  v6 = v5 * Resolution;
  if (v5 * Resolution > 0.0)
  {
    v7 = Resolution;
    v8 = v5;
    if (!FigAlternateIsAudioOnly(a1))
    {
      v9 = *(BytePtr + 1);
      v10 = v7 < *BytePtr * 1.35 && v8 < v9 * 1.35;
      if (v10 && v6 < *BytePtr * v9 * 1.35 * 1.35)
      {
        *(BytePtr + 16) = 1;
      }

      v11 = *(BytePtr + 3);
      if (v11 < 0.0 || v6 < v11)
      {
        *(BytePtr + 3) = v6;
      }
    }
  }
}

BOOL faf_displaySizeFilterFn(uint64_t a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  Resolution = FigAlternateGetResolution(a1);
  v6 = v5 * Resolution;
  result = 1;
  if (v5 * Resolution > 0.0)
  {
    v7 = Resolution;
    v8 = v5;
    if (!FigAlternateIsAudioOnly(a1))
    {
      v10 = *(BytePtr + 1);
      v11 = v7 < *BytePtr * 1.35 && v8 < v10 * 1.35;
      if ((!v11 || v6 >= *BytePtr * v10 * 1.35 * 1.35) && (BytePtr[16] || vabdd_f64(v6, *(BytePtr + 3)) >= 2.22044605e-16))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t FigAlternatePreferredVideoRangeFilterCreate(const __CFAllocator *a1, unsigned int a2, void *a3)
{
  v9[1] = 0;
  v9[2] = 0;
  v9[0] = a2;
  v5 = CFDataCreate(a1, v9, 24);
  if (v5)
  {
    v6 = v5;
    v7 = FigSimpleAlternateFilterCreate(a1, @"PreferredVideoRange", 800, off_1F0AE0868, v5, a3);
    CFRelease(v6);
  }

  else
  {
    FigAlternatePreferredVideoRangeFilterCreate_cold_1(&v10);
    return v10;
  }

  return v7;
}

const UInt8 *faf_videoRangeFilterApplyFilterInit(const __CFData *a1)
{
  result = CFDataGetBytePtr(a1);
  *(result + 16) = 0;
  *(result + 1) = 0;
  return result;
}

uint64_t faf_videoRangeFilterFn(uint64_t a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  VideoRange = FigAlternateGetVideoRange(a1);
  IsAudioOnly = FigAlternateIsAudioOnly(a1);
  if (BytePtr[16])
  {
    v6 = VideoRange == *BytePtr;
  }

  else
  {
    v6 = faf_videoRangeMinSortingFn(a1, *(BytePtr + 1), BytePtr) == 0;
  }

  v7 = v6;
  return (IsAudioOnly != 0) | v7 & 1u;
}

CFStringRef faf_copyVideoRangeDescAddendum(int a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  v3 = *MEMORY[0x1E695E480];
  StringFromVideoRange = FigAlternateGetStringFromVideoRange(*BytePtr);
  return CFStringCreateWithFormat(v3, 0, @"desiredVideoRange:%@", StringFromVideoRange);
}

uint64_t FigAlternateVideoFormatFilterCreate(const __CFAllocator *a1, int a2, void *a3)
{
  *bytes = a2;
  v5 = CFDataCreate(a1, bytes, 4);
  if (v5)
  {
    v6 = v5;
    v7 = FigSimpleAlternateFilterCreate(a1, @"PreferredVideoFormat", 800, &unk_1F0AE0890, v5, a3);
    CFRelease(v6);
  }

  else
  {
    FigAlternateVideoFormatFilterCreate_cold_1(&v10);
    return v10;
  }

  return v7;
}

uint64_t faf_videoFormatFilterFn(uint64_t a1, CFDataRef theData)
{
  v3 = *CFDataGetBytePtr(theData);

  return FigAlternateHasVideoFormat(a1, v3);
}

CFStringRef faf_copyVideoFormatDescAddendum(int a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  v3 = *MEMORY[0x1E695E480];
  StringFromVideoFormat = FigAlternateGetStringFromVideoFormat(*BytePtr);
  return CFStringCreateWithFormat(v3, 0, @"desiredVideoFormat:%@", StringFromVideoFormat);
}

uint64_t FigAlternateFramerateBucketCapFilterCreate(const __CFAllocator *a1, unsigned int a2, void *a3)
{
  *v9 = a2;
  v5 = CFDataCreate(a1, v9, 8);
  if (v5)
  {
    v6 = v5;
    v7 = FigSimpleAlternateFilterCreate(a1, @"FrameRateBucketCap", 700, &unk_1F0AE08B8, v5, a3);
    CFRelease(v6);
  }

  else
  {
    FigAlternateFramerateBucketCapFilterCreate_cold_1(&v10);
    return v10;
  }

  return v7;
}

uint64_t fafb_framerateBucketCapFirstPassFn(uint64_t a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  FrameRate = FigAlternateGetFrameRate(a1);
  result = FigFrameRateToFrameRateBucket(FrameRate);
  if (result <= *BytePtr)
  {
    result = FigAlternateIsAudioOnly(a1);
    if (!result)
    {
      *(BytePtr + 4) = 1;
    }
  }

  return result;
}

BOOL fafb_framerateBucketCapFilterFn(uint64_t a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  if (FigAlternateIsAudioOnly(a1))
  {
    return 1;
  }

  FrameRate = FigAlternateGetFrameRate(a1);
  return FigFrameRateToFrameRateBucket(FrameRate) <= *BytePtr || BytePtr[4] == 0;
}

CFStringRef fafb_copyFramerateBucketCapDescAddendum(int a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  v3 = *MEMORY[0x1E695E480];
  StringFromFramerateBucket = FigAlternateGetStringFromFramerateBucket(*BytePtr);
  return CFStringCreateWithFormat(v3, 0, @"framerateBucketCap:%@", StringFromFramerateBucket);
}

uint64_t faf_pixelsPerSecondComparatorFn(__CFArray *a1, __CFArray *a2)
{
  PixelPerSecondCount = FigAlternateGetPixelPerSecondCount(a1);
  v4 = FigAlternateGetPixelPerSecondCount(a2);
  v5 = -1;
  if (PixelPerSecondCount >= v4)
  {
    v5 = 1;
  }

  if (PixelPerSecondCount == v4)
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

uint64_t FigAlternatePreferredAudioFormatFilterCreate(const __CFAllocator *a1, unsigned int a2, unsigned int a3, const __CFDictionary *a4, char a5, CFNumberRef number, int a7, void *a8)
{
  v25 = 0u;
  v26 = 0u;
  *&v24 = __PAIR64__(a3, a2);
  DWORD2(v24) = -1;
  HIDWORD(v24) = a7;
  LOBYTE(v25) = a5;
  if (number)
  {
    CFNumberGetValue(number, kCFNumberSInt32Type, &v24 + 8);
  }

  if (a2 <= 4)
  {
    if (a2 - 1 < 4)
    {
      v13 = 1;
    }

    else
    {
      v13 = 9;
    }

    LODWORD(v24) = v13;
  }

  if (!a3)
  {
    DWORD1(v24) = 0x7FFFFFFF;
  }

  Count = FigCFDictionaryGetCount();
  Mutable = CFDataCreateMutable(a1, 16 * Count + 48);
  if (Mutable)
  {
    v16 = Mutable;
    CFDataSetLength(Mutable, 16 * Count + 48);
    MutableBytePtr = CFDataGetMutableBytePtr(v16);
    v18 = v26;
    v19 = v25;
    *MutableBytePtr = v24;
    *(MutableBytePtr + 1) = v19;
    *(MutableBytePtr + 2) = v18;
    if (Count >= 1)
    {
      v20 = MutableBytePtr;
      CFDictionaryApplyFunction(a4, faf_storeChannelCountMaxSampleRate, MutableBytePtr);
      v21 = *(v20 + 5);
      if (v21 >= 2)
      {
        qsort(v20 + 48, v21, 0x10uLL, faf_maxSampleRateComparator);
      }
    }

    v22 = FigSimpleAlternateFilterCreate(a1, @"PreferredAudioFormat", 750, off_1F0AE0908, v16, a8);
    CFRelease(v16);
  }

  else
  {
    FigAlternatePreferredAudioFormatFilterCreate_cold_1(&v27);
    return v27;
  }

  return v22;
}

const UInt8 *faf_audioFormatApplyFilterInit(const __CFData *a1)
{
  result = CFDataGetBytePtr(a1);
  *(result + 32) = 0;
  *(result + 3) = 0;
  return result;
}

uint64_t faf_audioFormatPreferenceFilterFn(const void *a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  v10 = 0;
  v11 = 0;
  v12 = 0;
  memset(v8, 0, sizeof(v8));
  if (FigAlternateHasVideo(a1))
  {
    v5 = FigAlternateHasAudio(a1) == 0;
  }

  else
  {
    v5 = 0;
  }

  if (BytePtr[32])
  {
    v9 = *BytePtr;
    LODWORD(v10) = 0;
    BYTE4(v10) = BytePtr[16];
    v11 = 0;
    LODWORD(v12) = 0x80000000;
    faf_populateAudioFormatAlternateComparatorRec(a1, *(BytePtr + 2), v8);
    v6 = faf_audioFormatPreferenceComparator(v8, &v9, BytePtr) == 0 || v5;
  }

  else if (faf_audioFormatPreferenceFilterMinSortingFn(a1, *(BytePtr + 3), theData))
  {
    v6 = v5;
  }

  else
  {
    v6 = 1;
  }

  return v6 & 1;
}

CFStringRef faf_copyPreferredAudioFormatDescAddendum(int a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  v3 = *(BytePtr + 5);
  if (v3)
  {
    v4 = *MEMORY[0x1E695E480];
    Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
    if (v3 >= 1)
    {
      v6 = BytePtr + 56;
      do
      {
        if (--v3)
        {
          v7 = ", ";
        }

        else
        {
          v7 = "";
        }

        CFStringAppendFormat(Mutable, 0, @"<channel count %d: max sample rate %.3f>%s", *(v6 - 2), *v6, v7);
        v6 += 2;
      }

      while (v3);
    }
  }

  else
  {
    Mutable = CFRetain(@"none");
    v4 = *MEMORY[0x1E695E480];
  }

  StringFromAudioFormat = FigAlternateGetStringFromAudioFormat(*BytePtr);
  v9 = "YES";
  if (BytePtr[12])
  {
    v10 = "YES";
  }

  else
  {
    v10 = "NO";
  }

  if (BytePtr[13])
  {
    v11 = "YES";
  }

  else
  {
    v11 = "NO";
  }

  if (BytePtr[14])
  {
    v12 = "YES";
  }

  else
  {
    v12 = "NO";
  }

  if (!BytePtr[16])
  {
    v9 = "NO";
  }

  v13 = CFStringCreateWithFormat(v4, 0, @"preferredFormat:%@ preferredMixableNumberOfChannels:%d ac3CanPassthrough:%s ec3CanPassthrough:%s atmosCanPassthrough:%s preferLossyEncodings:%s sampleRateContraints:%@", StringFromAudioFormat, *(BytePtr + 1), v10, v11, v12, v9, Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v13;
}

uint64_t faf_storeChannelCountMaxSampleRate(const __CFNumber *a1, CFNumberRef number, uint64_t a3)
{
  v5 = a3 + 48;
  CFNumberGetValue(number, kCFNumberDoubleType, (a3 + 48 + 16 * *(a3 + 40) + 8));
  v6 = *(a3 + 40);
  *(a3 + 40) = v6 + 1;

  return CFNumberGetValue(a1, kCFNumberSInt32Type, (v5 + 16 * v6));
}

uint64_t FigAlternateEligibleLosslessAudioFilterCreate(const __CFAllocator *a1, const void *a2, void *a3)
{
  Mutable = CFDictionaryCreateMutable(a1, 0, 0, 0);
  if (Mutable)
  {
    v7 = Mutable;
    v8 = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (v8)
    {
      v9 = v8;
      if (a2)
      {
        CFDictionarySetValue(v8, @"PersistentID", a2);
      }

      CFDictionarySetValue(v9, @"ChannelCountDict", v7);
      v10 = FigSimpleAlternateFilterCreate(a1, @"EligibleLosslessAudio", 760, &off_1F0AE0930, v9, a3);
      CFRelease(v9);
    }

    else
    {
      FigAlternateEligibleLosslessAudioFilterCreate_cold_1(&v12);
      v10 = v12;
    }

    CFRelease(v7);
  }

  else
  {
    FigAlternateEligibleLosslessAudioFilterCreate_cold_2(&v13);
    return v13;
  }

  return v10;
}

void faf_EligibleLosslessAudioInitFn(const __CFDictionary *a1)
{
  Value = CFDictionaryGetValue(a1, @"ChannelCountDict");

  CFDictionaryRemoveAllValues(Value);
}

void faf_EligibleLosslessAudioFirstPassFn(const void *a1, CFDictionaryRef theDict)
{
  v4 = -1;
  valuePtr = -1;
  Value = CFDictionaryGetValue(theDict, @"PersistentID");
  v6 = CFDictionaryGetValue(theDict, @"ChannelCountDict");
  v13 = 0;
  key = 0;
  if (Value)
  {
    CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
    v4 = valuePtr;
  }

  faf_getAlternateAudioFormatInfo(a1, v4, &v13, &key + 1, &key, 0);
  v7 = HIDWORD(key);
  if (SHIDWORD(key) >= 1)
  {
    v8 = CFDictionaryGetValue(v6, HIDWORD(key));
    if (v8 != 7)
    {
      if (FigAlternateHasLosslessAudio(a1))
      {
        v9 = v8 | 1;
      }

      else
      {
        if (key)
        {
          v10 = 0;
        }

        else
        {
          v10 = v13 == 1;
        }

        v11 = 3;
        if (v10)
        {
          v11 = 7;
        }

        v9 = v11 | v8;
      }

      CFDictionarySetValue(v6, v7, v9);
    }
  }
}

uint64_t faf_EligibleLosslessAudioFilterFn(const void *a1, CFDictionaryRef theDict)
{
  Value = CFDictionaryGetValue(theDict, @"PersistentID");
  v5 = CFDictionaryGetValue(theDict, @"ChannelCountDict");
  v9 = 0;
  if (FigAlternateHasVideo(a1) && !FigAlternateHasAudio(a1) || !FigAlternateHasLosslessAudio(a1))
  {
    return 1;
  }

  AudioChannelCounts = FigAlternateGetAudioChannelCounts(a1, Value, &v9, 0);
  v7 = CFDictionaryGetValue(v5, AudioChannelCounts);
  if ((v7 & 2) != 0)
  {
    return (v7 >> 2) & 1;
  }

  else
  {
    return 1;
  }
}

uint64_t FigAlternateImmersiveAudioPreferenceFilterCreate(const __CFAllocator *a1, CFNumberRef number, int a3, int a4, char a5, void *a6)
{
  v15 = 0u;
  v16 = 0u;
  if (number)
  {
    CFNumberGetValue(number, kCFNumberSInt32Type, &v15);
  }

  else
  {
    LODWORD(v15) = -1;
  }

  DWORD2(v16) = a3;
  DWORD1(v15) = a4;
  BYTE12(v16) = a5;
  v11 = CFDataCreate(a1, &v15, 32);
  if (v11)
  {
    v12 = v11;
    v13 = FigSimpleAlternateFilterCreate(a1, @"ImmersiveAudioPreference", 760, off_1F0AE0958, v11, a6);
    CFRelease(v12);
  }

  else
  {
    FigAlternateImmersiveAudioPreferenceFilterCreate_cold_1(&v17);
    return v17;
  }

  return v13;
}

const UInt8 *faf_ImmersiveAudioPreferenceInitFn(const __CFData *a1)
{
  result = CFDataGetBytePtr(a1);
  *(result + 2) = 0;
  *(result + 8) = 0;
  return result;
}

CFStringRef faf_ImmersiveAudioPreferenceDescAddendum(int a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  v3 = *MEMORY[0x1E695E480];
  StringFromSpecializedChannelUsage = FigAlternateGetStringFromSpecializedChannelUsage(*(BytePtr + 6));
  return CFStringCreateWithFormat(v3, 0, @"channel usage:%@", StringFromSpecializedChannelUsage);
}

uint64_t FigAlternateLosslessAudioPreferenceFilterCreate(uint64_t a1, int a2, void *a3)
{
  if (a2)
  {
    v3 = 0;
  }

  else
  {
    v3 = faf_allEqualMinSortingFn;
  }

  v5 = 0uLL;
  v6 = faf_losslessAudioOnlyFilterFn;
  v7 = v3;
  v8 = 0;
  return FigSimpleAlternateFilterCreate(a1, @"LosslessAudioPreference", 760, &v5, 0, a3);
}

uint64_t FigAlternateMaximumSampleRatePreferenceFilter(const __CFAllocator *a1, CFNumberRef number, void *a3, double a4)
{
  v10[0] = 0;
  v11 = 0u;
  *&v10[1] = a4;
  if (number)
  {
    CFNumberGetValue(number, kCFNumberSInt32Type, v10);
  }

  else
  {
    LODWORD(v10[0]) = -1;
  }

  v6 = CFDataCreate(a1, v10, 32);
  if (v6)
  {
    v7 = v6;
    v8 = FigSimpleAlternateFilterCreate(a1, @"MaximumSampleRatePreference", 750, &off_1F0AE09A8, v6, a3);
    CFRelease(v7);
  }

  else
  {
    FigAlternateMaximumSampleRatePreferenceFilter_cold_1(&v12);
    return v12;
  }

  return v8;
}

const UInt8 *faf_maximumSampleRatePreferenceFilterInit(const __CFData *a1)
{
  result = CFDataGetBytePtr(a1);
  *(result + 16) = 0;
  *(result + 3) = 0;
  return result;
}

uint64_t FigAlternateMultichannelAudioFilterCreate(const __CFAllocator *a1, CFNumberRef number, int a3, int a4, void *a5)
{
  valuePtr = 0;
  if (a3)
  {
    v7 = faf_MultichannelAudioFilterFnForMulti;
  }

  else
  {
    v7 = faf_MultichannelAudioFilterFnForStereo;
  }

  if (a4)
  {
    v8 = 0;
  }

  else
  {
    v8 = faf_allEqualMinSortingFn;
  }

  if (number)
  {
    CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr);
  }

  else
  {
    LODWORD(valuePtr) = -1;
  }

  v9 = CFDataCreate(a1, &valuePtr, 8);
  if (v9)
  {
    v10 = v9;
    *&v13 = faf_MultichannelAudioFilterFnForMultiInit;
    *(&v13 + 1) = faf_MultichannelAudioFilterFnForMultiFirstPassFn;
    v14 = v7;
    v15 = v8;
    v16 = 0;
    v11 = FigSimpleAlternateFilterCreate(a1, @"MultichannelAudio", 620, &v13, v9, a5);
    CFRelease(v10);
  }

  else
  {
    FigAlternateMultichannelAudioFilterCreate_cold_1(&v13);
    return v13;
  }

  return v11;
}

const UInt8 *faf_MultichannelAudioFilterFnForMultiInit(const __CFData *a1)
{
  result = CFDataGetBytePtr(a1);
  *(result + 4) = 0;
  return result;
}

BOOL faf_MultichannelAudioFilterFnForMulti(const void *a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  if (FigAlternateHasVideo(a1))
  {
    v4 = FigAlternateHasAudio(a1) == 0;
  }

  else
  {
    v4 = 0;
  }

  if (!BytePtr[4])
  {
    return 0;
  }

  if ((*BytePtr & 0x80000000) != 0)
  {
    AudioChannelCounts = FigAlternateGetAudioChannelCounts(a1, 0, 0, 0);
  }

  else
  {
    v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, BytePtr);
    AudioChannelCounts = FigAlternateGetAudioChannelCounts(a1, v5, 0, 0);
    if (v5)
    {
      CFRelease(v5);
    }
  }

  return AudioChannelCounts > 2 || v4;
}

BOOL faf_MultichannelAudioFilterFnForStereo(const void *a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  if ((*BytePtr & 0x80000000) != 0)
  {
    AudioChannelCounts = FigAlternateGetAudioChannelCounts(a1, 0, 0, 0);
  }

  else
  {
    v4 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, BytePtr);
    AudioChannelCounts = FigAlternateGetAudioChannelCounts(a1, v4, 0, 0);
    if (v4)
    {
      CFRelease(v4);
    }
  }

  return AudioChannelCounts < 3;
}

uint64_t FigAlternateDefaultAudioLayoutPreferenceFilterCreate(uint64_t a1, const void *a2, void *a3)
{
  MEMORY[0x19A8D3660](&FigAlternateFilterGetClassID_sRegisterFigAlternateFilterTypeOnce, RegisterFigAlternateFilterType);
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

    *DerivedStorage = v7;
    *a3 = 0;
  }

  return v5;
}

uint64_t FigAlternateResolutionCapFilterCreate(const __CFAllocator *a1, const void *a2, int a3, void *a4, double a5, double a6)
{
  v16 = 0;
  v17 = 0;
  *bytes = a5;
  v15 = a6;
  v10 = CFDataCreate(a1, bytes, 32);
  if (v10)
  {
    v11 = v10;
    v12 = FigSimpleAlternateFilterCreate(a1, a2, a3, &off_1F0AE09E8, v10, a4);
    CFRelease(v11);
  }

  else
  {
    FigAlternateResolutionCapFilterCreate_cold_1(&v18);
    return v18;
  }

  return v12;
}

int64x2_t faf_resolutionCapApplyFilterInit(const __CFData *a1)
{
  BytePtr = CFDataGetBytePtr(a1);
  result = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  BytePtr[1] = result;
  return result;
}

uint64_t faf_resolutionCapFirstPassFn(uint64_t a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  v4 = *BytePtr;
  v5 = BytePtr[1];
  Resolution = FigAlternateGetResolution(a1);
  v8 = v7;
  result = FigAlternateIsAudioOnly(a1);
  if (!result)
  {
    if (Resolution > v4 || v8 > v5)
    {
      if (BytePtr[3] >= 1.79769313e308)
      {
        v11 = BytePtr[2];
        if (v11 >= 1.79769313e308 || Resolution < v11)
        {
          BytePtr[2] = Resolution;
        }
      }
    }

    else
    {
      BytePtr[2] = v4;
      BytePtr[3] = v5;
    }
  }

  return result;
}

BOOL faf_resolutionCapFilterFn(uint64_t a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  v5 = FigAlternateGetResolution(a1) <= *(BytePtr + 2) && v4 <= *(BytePtr + 3);
  return FigAlternateIsAudioOnly(a1) || v5;
}

uint64_t FigAlternateResolutionFloorFilterCreate(const __CFAllocator *a1, void *a2, double a3, double a4)
{
  v12 = 0;
  v13 = 0;
  *bytes = a3;
  v11 = a4;
  v6 = CFDataCreate(a1, bytes, 32);
  if (v6)
  {
    v7 = v6;
    v8 = FigSimpleAlternateFilterCreate(a1, @"ResolutionFloor", 700, &off_1F0AE0A10, v6, a2);
    CFRelease(v7);
  }

  else
  {
    FigAlternateResolutionFloorFilterCreate_cold_1(&v14);
    return v14;
  }

  return v8;
}

__n128 faf_resolutionFloorApplyFilterInit(const __CFData *a1)
{
  BytePtr = CFDataGetBytePtr(a1);
  result = *MEMORY[0x1E695F060];
  *(BytePtr + 1) = *MEMORY[0x1E695F060];
  return result;
}

uint64_t faf_resolutionFloorFirstPassFn(uint64_t a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  v4 = *BytePtr;
  v5 = BytePtr[1];
  Resolution = FigAlternateGetResolution(a1);
  v8 = v7;
  result = FigAlternateIsAudioOnly(a1);
  if (!result)
  {
    if (Resolution < v4 || v8 < v5)
    {
      if (BytePtr[3] <= 2.22044605e-16)
      {
        v11 = BytePtr[2];
        if (v11 <= 2.22044605e-16 || Resolution > v11)
        {
          BytePtr[2] = Resolution;
        }
      }
    }

    else
    {
      BytePtr[2] = v4;
      BytePtr[3] = v5;
    }
  }

  return result;
}

BOOL faf_resolutionFloorFilterFn(uint64_t a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  v5 = FigAlternateGetResolution(a1) >= *(BytePtr + 2) && v4 >= *(BytePtr + 3);
  return FigAlternateIsAudioOnly(a1) || v5;
}

uint64_t FigAlternateResolutionLowerLimitFilterCreate(const __CFAllocator *a1, void *a2, double a3, double a4)
{
  *bytes = a3;
  v11 = a4;
  v6 = CFDataCreate(a1, bytes, 16);
  if (v6)
  {
    v7 = v6;
    v8 = FigSimpleAlternateFilterCreate(a1, @"ResolutionLowerLimit", 800, &unk_1F0AE0A38, v6, a2);
    CFRelease(v7);
  }

  else
  {
    FigAlternateResolutionLowerLimitFilterCreate_cold_1(&v12);
    return v12;
  }

  return v8;
}

BOOL faf_resolutionLowerLimitFilterFn(uint64_t a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  v4 = *BytePtr;
  v5 = BytePtr[1];
  Resolution = FigAlternateGetResolution(a1);
  v8 = Resolution == *MEMORY[0x1E695F060] && v7 == *(MEMORY[0x1E695F060] + 8);
  result = 1;
  if (!v8 && vabdd_f64(Resolution, v4) >= 2.22044605e-16 && Resolution < v4)
  {
    if (vabdd_f64(Resolution, v5) >= 2.22044605e-16 && Resolution <= v5)
    {
      return 0;
    }

    if (vabdd_f64(v7, v4) >= 2.22044605e-16 && v7 <= v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t FigAlternateResolutionUpperLimitFilterCreate(const __CFAllocator *a1, void *a2, double a3, double a4)
{
  *bytes = a3;
  v11 = a4;
  v6 = CFDataCreate(a1, bytes, 16);
  if (v6)
  {
    v7 = v6;
    v8 = FigSimpleAlternateFilterCreate(a1, @"ResolutionUpperLimit", 800, &unk_1F0AE0A60, v6, a2);
    CFRelease(v7);
  }

  else
  {
    FigAlternateResolutionUpperLimitFilterCreate_cold_1(&v12);
    return v12;
  }

  return v8;
}

BOOL faf_resolutionCapWidthOnlyFilterFn(uint64_t a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  v4 = *BytePtr;
  v5 = BytePtr[1];
  Resolution = FigAlternateGetResolution(a1);
  v8 = v7;
  result = 0;
  if (!FigAlternateIsAudioOnly(a1))
  {
    if (Resolution == *MEMORY[0x1E695F060] && v8 == *(MEMORY[0x1E695F060] + 8))
    {
      return 1;
    }

    if (vabdd_f64(Resolution, v4) < 2.22044605e-16 || Resolution < v4)
    {
      v12 = vabdd_f64(Resolution, v5) >= 2.22044605e-16 && Resolution <= v5;
      if (v12 || vabdd_f64(v8, v4) < 2.22044605e-16 || v8 <= v4)
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t FigAlternateResolutionClosestHeightFilterCreate(const __CFAllocator *a1, void *a2, double a3, double a4)
{
  *bytes = a3;
  v11 = a4;
  v6 = CFDataCreate(a1, bytes, 16);
  if (v6)
  {
    v7 = v6;
    v8 = FigSimpleAlternateFilterCreate(a1, @"ResolutionClosestHeight", 700, &unk_1F0AE0A88, v6, a2);
    CFRelease(v7);
  }

  else
  {
    FigAlternateResolutionClosestHeightFilterCreate_cold_1(&v12);
    return v12;
  }

  return v8;
}

uint64_t faf_resolutionClosestHeightComparatorFn(uint64_t a1, uint64_t a2, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  FigAlternateGetResolution(a1);
  v7 = v6;
  FigAlternateGetResolution(a2);
  v9 = v8;
  if (!FigAlternateHasVideo(a1))
  {
    return 1;
  }

  v10 = *(BytePtr + 1);
  v11 = vabdd_f64(v7, v10);
  v12 = vabdd_f64(v9, v10);
  if (v11 < v12)
  {
    return -1;
  }

  return v11 != v12;
}

uint64_t FigAlternateMinimumRequiredPresentationSizeFilterCreate(const __CFAllocator *a1, void *a2, double a3, double a4)
{
  v12 = 0;
  v13 = 0;
  *bytes = a3;
  v11 = a4;
  v6 = CFDataCreate(a1, bytes, 32);
  if (v6)
  {
    v7 = v6;
    v8 = FigSimpleAlternateFilterCreate(a1, @"MinimumRequiredPresentationSize", 700, &off_1F0AE0AB0, v6, a2);
    CFRelease(v7);
  }

  else
  {
    FigAlternateMinimumRequiredPresentationSizeFilterCreate_cold_1(&v14);
    return v14;
  }

  return v8;
}

int64x2_t faf_minimumRequiredPresentationSizeFilterInit(const __CFData *a1)
{
  BytePtr = CFDataGetBytePtr(a1);
  result = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  BytePtr[1] = result;
  return result;
}

uint64_t faf_minimumRequiredPresentationSizeFirstPass(uint64_t a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  Resolution = FigAlternateGetResolution(a1);
  v6 = v5;
  result = FigAlternateIsAudioOnly(a1);
  if (!result && Resolution >= *BytePtr && Resolution < *(BytePtr + 2))
  {
    *(BytePtr + 2) = Resolution;
    *(BytePtr + 3) = v6;
  }

  return result;
}

uint64_t FigAlternateFrameRateCapFilterCreate(uint64_t a1, void *a2, double a3)
{
  v9 = a3;
  v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberDoubleType, &v9);
  if (v5)
  {
    v6 = v5;
    v7 = FigSimpleAlternateFilterCreate(a1, @"FrameRateCap", 800, &unk_1F0AE0AD8, v5, a2);
    CFRelease(v6);
  }

  else
  {
    FigAlternateFrameRateCapFilterCreate_cold_1(&v10);
    return v10;
  }

  return v7;
}

BOOL faf_frameRateCapFilterFn(uint64_t a1, const __CFNumber *a2)
{
  valuePtr = 0.0;
  FrameRate = FigAlternateGetFrameRate(a1);
  CFNumberGetValue(a2, kCFNumberDoubleType, &valuePtr);
  return valuePtr - FrameRate > -2.22044605e-16 || FrameRate == 0.0;
}

uint64_t faf_frameRateCapComparatorFn(uint64_t a1, uint64_t a2)
{
  FrameRate = FigAlternateGetFrameRate(a1);
  v4 = FigAlternateGetFrameRate(a2);
  v5 = vabdd_f64(FrameRate, v4);
  v6 = -1;
  if (FrameRate >= v4)
  {
    v6 = 1;
  }

  if (v5 >= 2.22044605e-16)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t FigAlternateVideoRangeAndFrameRateBucketFilterCreate(const __CFAllocator *a1, int a2, int a3, void *a4)
{
  *bytes = a2;
  v11 = a3;
  v6 = CFDataCreate(a1, bytes, 8);
  if (v6)
  {
    v7 = v6;
    v8 = FigSimpleAlternateFilterCreate(a1, @"VideoRangeAndFrameRateBucket", 1000, &unk_1F0AE0B00, v6, a4);
    CFRelease(v7);
  }

  else
  {
    FigAlternateVideoRangeAndFrameRateBucketFilterCreate_cold_1(&v12);
    return v12;
  }

  return v8;
}

BOOL frcvr_videoRangeAndFrameRateBucketFilterFn(uint64_t a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  FrameRate = FigAlternateGetFrameRate(a1);
  VideoRange = FigAlternateGetVideoRange(a1);
  v6 = *BytePtr;
  v7 = *(BytePtr + 1);
  v8 = FigFrameRateToFrameRateBucket(FrameRate);
  IsAudioOnly = FigAlternateIsAudioOnly(a1);
  v11 = v6 >= VideoRange || v7 >= v8;
  return IsAudioOnly || v11;
}

CFStringRef frcvr_videoRangeAndFrameRateBucketFilterDescAddendum(int a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  v3 = *MEMORY[0x1E695E480];
  StringFromVideoRange = FigAlternateGetStringFromVideoRange(*BytePtr);
  StringFromFramerateBucket = FigAlternateGetStringFromFramerateBucket(*(BytePtr + 1));
  return CFStringCreateWithFormat(v3, 0, @"maxVideoRange:%@ framerate:%@", StringFromVideoRange, StringFromFramerateBucket);
}

uint64_t FigAlternateLimitConcurrent4K60HEVCDecodeFilterCreate(void *a1, CFTypeRef cf, void *a3)
{
  __src[1] = 0;
  if (cf)
  {
    v5 = CFRetain(cf);
  }

  else
  {
    v5 = 0;
  }

  __src[0] = v5;
  return fsaf_createWithBytes(a1, @"LimitConcurrent4K60HEVCDecode", 510, faf_limitConcurrent4K60HEVCDecodeFilterFn, 0, faf_limitConcurrent4K60HEVCDecodeFirstPassFn, faf_limitConcurrent4K60HEVCDecodeApplyInitFn, faf_limitConcurrent4K60HEVCDecodeFilterDescAddendum, __src, 16, faf_limitConcurrent4K60HEVCDecodeDeallocateCallback, a3);
}

uint64_t faf_limitConcurrent4K60HEVCDecodeFilterFn(uint64_t a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  if (FigAlternateIsAudioOnly(a1) || !BytePtr[8] || FigCFEqual())
  {
    return 1;
  }

  else
  {
    return faf_willRequire4K60Decode(a1) ^ 1;
  }
}

uint64_t faf_limitConcurrent4K60HEVCDecodeFirstPassFn(uint64_t a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  result = FigCFEqual();
  if (result)
  {
    result = faf_willRequire4K60Decode(a1);
    *(BytePtr + 8) = result;
  }

  return result;
}

const UInt8 *faf_limitConcurrent4K60HEVCDecodeApplyInitFn(const __CFData *a1)
{
  result = CFDataGetBytePtr(a1);
  *(result + 8) = 0;
  return result;
}

CFStringRef faf_limitConcurrent4K60HEVCDecodeFilterDescAddendum(int a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  v3 = *MEMORY[0x1E695E480];
  v4 = BytePtr[8];
  PeakBitRate = FigAlternateGetPeakBitRate(*BytePtr);
  return CFStringCreateWithFormat(v3, 0, @"avoidConcurrentDecode:%d alternate %d", v4, PeakBitRate);
}

void faf_limitConcurrent4K60HEVCDecodeDeallocateCallback(const void **ptr, CFAllocatorRef allocator)
{
  v4 = *ptr;
  if (v4)
  {
    CFRelease(v4);
  }

  CFAllocatorDeallocate(allocator, ptr);
}

uint64_t FigAlternateNormalizedPeakBitRateCapFilterCreate(uint64_t a1, int a2, int a3, void *a4)
{
  valuePtr = a2;
  v7 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  if (v7)
  {
    v8 = v7;
    if (a3)
    {
      v9 = 0;
    }

    else
    {
      v9 = faf_normalizedPeakBitRateCapComparatorFn;
    }

    if (a3)
    {
      v10 = 950;
    }

    else
    {
      v10 = 600;
    }

    v13 = 0uLL;
    v14 = faf_normalizedPeakBitRateCapFilterFn;
    v15 = v9;
    v16 = faf_copyNormalizedPeakBitRateCapDescAddendum;
    v11 = FigSimpleAlternateFilterCreate(a1, @"PeakNormalizedBitRateCap", v10, &v13, v7, a4);
    CFRelease(v8);
  }

  else
  {
    FigAlternateNormalizedPeakBitRateCapFilterCreate_cold_1(&v13);
    return v13;
  }

  return v11;
}

BOOL faf_normalizedPeakBitRateCapFilterFn(uint64_t a1, const __CFNumber *a2)
{
  valuePtr = 0;
  NormalizedPeakBitrate = FigAlternateGetNormalizedPeakBitrate(a1);
  CFNumberGetValue(a2, kCFNumberSInt32Type, &valuePtr);
  return NormalizedPeakBitrate <= valuePtr;
}

uint64_t faf_normalizedPeakBitRateCapComparatorFn(uint64_t a1, uint64_t a2)
{
  NormalizedPeakBitrate = FigAlternateGetNormalizedPeakBitrate(a1);
  v4 = FigAlternateGetNormalizedPeakBitrate(a2);
  if (NormalizedPeakBitrate >= v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = -1;
  }

  if (NormalizedPeakBitrate > v4)
  {
    return 1;
  }

  else
  {
    return v5;
  }
}

CFStringRef faf_copyNormalizedPeakBitRateCapDescAddendum(int a1, CFNumberRef number)
{
  valuePtr = 0;
  CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr);
  return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%d bps", valuePtr);
}

uint64_t figAlternatePeakBitRateCapFilterCreateWithNameAndPriority(uint64_t a1, int a2, const void *a3, int a4, void *a5)
{
  valuePtr = a2;
  v9 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  if (v9)
  {
    v10 = v9;
    v11 = FigSimpleAlternateFilterCreate(a1, a3, a4, &unk_1F0AE1150, v9, a5);
    CFRelease(v10);
  }

  else
  {
    figAlternatePeakBitRateCapFilterCreateWithNameAndPriority_cold_1(&v14);
    return v14;
  }

  return v11;
}

uint64_t FigAlternateSkipBitrateRangeFilterCreate(void *a1, const void *a2, const void *a3, const void *a4, int a5, void *a6)
{
  __src[2] = 0;
  ExpectedAverageBitrate = FigAlternateGetExpectedAverageBitrate(a3);
  if (ExpectedAverageBitrate <= FigAlternateGetExpectedAverageBitrate(a2))
  {
    FigAlternateSkipBitrateRangeFilterCreate_cold_1(&v17);
    return v17;
  }

  else
  {
    if (a2)
    {
      v13 = CFRetain(a2);
    }

    else
    {
      v13 = 0;
    }

    __src[0] = v13;
    if (a3)
    {
      v14 = CFRetain(a3);
    }

    else
    {
      v14 = 0;
    }

    __src[1] = v14;
    return fsaf_createWithBytes(a1, a4, a5, faf_skipBitrateRangeFilterFn, 0, faf_skipBitrateRangeFirstPassFn, faf_skipBitrateRangeFilterApplyInitFn, faf_skipBitrateRangeFilterDescAddendum, __src, 24, faf_skipBitrateRangeDeallocateCallback, a6);
  }
}

BOOL faf_skipBitrateRangeFilterFn(uint64_t a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  result = 1;
  if (BytePtr[16])
  {
    v4 = BytePtr;
    AverageBitRate = FigAlternateGetAverageBitRate(a1);
    if (FigAlternateGetAverageBitRate(v4[1]) > AverageBitRate && FigAlternateGetAverageBitRate(*v4) < AverageBitRate)
    {
      return 0;
    }

    PeakBitRate = FigAlternateGetPeakBitRate(a1);
    if (FigAlternateGetPeakBitRate(v4[1]) > PeakBitRate && FigAlternateGetPeakBitRate(*v4) < PeakBitRate)
    {
      return 0;
    }
  }

  return result;
}

uint64_t faf_skipBitrateRangeFirstPassFn(int a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  result = FigCFEqual();
  if (result)
  {
    *(BytePtr + 16) = 1;
  }

  return result;
}

const UInt8 *faf_skipBitrateRangeFilterApplyInitFn(const __CFData *a1)
{
  result = CFDataGetBytePtr(a1);
  *(result + 16) = 0;
  return result;
}

CFStringRef faf_skipBitrateRangeFilterDescAddendum(int a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  v3 = *MEMORY[0x1E695E480];
  PeakBitRate = FigAlternateGetPeakBitRate(BytePtr[1]);
  AverageBitRate = FigAlternateGetAverageBitRate(BytePtr[1]);
  v6 = FigAlternateGetPeakBitRate(*BytePtr);
  v7 = FigAlternateGetAverageBitRate(*BytePtr);
  return CFStringCreateWithFormat(v3, 0, @"highBitrate [%d %d], lowBitrate [%d %d]", PeakBitRate, AverageBitRate, v6, v7);
}

void faf_skipBitrateRangeDeallocateCallback(const void **ptr, CFAllocatorRef allocator)
{
  v4 = *ptr;
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = ptr[1];
  if (v5)
  {
    CFRelease(v5);
  }

  CFAllocatorDeallocate(allocator, ptr);
}

uint64_t FigAlternateSkipEqualOrLowerBitratesFilterCreate(void *a1, CFTypeRef cf, const void *a3, int a4, void *a5)
{
  __src[1] = 0;
  __src[2] = 0;
  if (cf)
  {
    v9 = CFRetain(cf);
  }

  else
  {
    v9 = 0;
  }

  __src[0] = v9;
  return fsaf_createWithBytes(a1, a3, a4, faf_skipEqualOrLowerBitratesFilterFn, 0, faf_skipBitrateRangeFirstPassFn, faf_skipBitrateRangeFilterApplyInitFn, faf_skipEqualOrLowerBitratesFilterDescAddendum, __src, 24, faf_skipBitrateRangeDeallocateCallback, a5);
}

BOOL faf_skipEqualOrLowerBitratesFilterFn(uint64_t a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  if (!BytePtr[16])
  {
    return 1;
  }

  v4 = BytePtr;
  if (FigCFEqual())
  {
    return 1;
  }

  ExpectedAverageBitrate = FigAlternateGetExpectedAverageBitrate(*v4);
  return ExpectedAverageBitrate < FigAlternateGetExpectedAverageBitrate(a1);
}

CFStringRef faf_skipEqualOrLowerBitratesFilterDescAddendum(int a1, CFDataRef theData)
{
  v2 = *CFDataGetBytePtr(theData);

  return CFCopyDescription(v2);
}

uint64_t FigAlternateNextHighestPeakBitRateFilterCreate(const __CFAllocator *a1, uint64_t a2, void *a3, float a4)
{
  v10[1] = 0;
  v10[0] = (FigAlternateGetNormalizedPeakBitrate(a2) * a4);
  v6 = CFDataCreate(a1, v10, 8);
  if (v6)
  {
    v7 = v6;
    v8 = FigSimpleAlternateFilterCreate(a1, @"NextHighestPeakBitRate", 600, &off_1F0AE0B28, v6, a3);
    CFRelease(v7);
  }

  else
  {
    FigAlternateNextHighestPeakBitRateFilterCreate_cold_1(&v11);
    return v11;
  }

  return v8;
}

const UInt8 *faf_nextHighestPeakBitRateApplyFilterInit(const __CFData *a1)
{
  result = CFDataGetBytePtr(a1);
  *(result + 1) = 0x7FFFFFFF;
  return result;
}

uint64_t faf_nextHighestPeakBitRateFirstPassFn(uint64_t a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  result = FigAlternateGetNormalizedPeakBitrate(a1);
  if (result > *BytePtr && result < *(BytePtr + 1))
  {
    *(BytePtr + 1) = result;
  }

  return result;
}

uint64_t FigAlternateMeasuredBitrateCapFilterCreate(const __CFAllocator *a1, uint64_t a2, unsigned int a3, void *a4, double a5, double a6)
{
  *&v13[1] = a5;
  *&v13[2] = a6;
  v13[0] = a2;
  v8 = fabs(a6);
  if (v8 <= 1.0)
  {
    v8 = 1.0;
  }

  v13[3] = (a2 / a5 / ceil(v8));
  v13[4] = a3;
  v9 = CFDataCreate(a1, v13, 40);
  if (v9)
  {
    v10 = v9;
    v11 = FigSimpleAlternateFilterCreate(a1, @"MeasuredBitrateCap", 550, &unk_1F0AE0B50, v9, a4);
    CFRelease(v10);
  }

  else
  {
    FigAlternateMeasuredBitrateCapFilterCreate_cold_1(&v14);
    return v14;
  }

  return v11;
}

BOOL faf_measuredBitrateFilterFn(uint64_t a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  if (*(BytePtr + 8))
  {
    ExpectedAverageBitrate = FigAlternateGetExpectedAverageBitrate(a1);
  }

  else
  {
    ExpectedAverageBitrate = FigAlternateGetPeakBitRate(a1);
  }

  return *(BytePtr + 3) >= ExpectedAverageBitrate;
}

uint64_t faf_measuredBitrateCapComparatorFn(uint64_t a1, uint64_t a2, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  if (*(BytePtr + 8))
  {
    ExpectedAverageBitrate = FigAlternateGetExpectedAverageBitrate(a1);
  }

  else
  {
    ExpectedAverageBitrate = FigAlternateGetPeakBitRate(a1);
  }

  v7 = ExpectedAverageBitrate;
  if (*(BytePtr + 8))
  {
    PeakBitRate = FigAlternateGetExpectedAverageBitrate(a2);
  }

  else
  {
    PeakBitRate = FigAlternateGetPeakBitRate(a2);
  }

  if (v7 >= PeakBitRate)
  {
    v9 = 0;
  }

  else
  {
    v9 = -1;
  }

  if (v7 > PeakBitRate)
  {
    return 1;
  }

  else
  {
    return v9;
  }
}

CFStringRef faf_copyMeasuredBitrateCapDescAddendum(int a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  if (*(BytePtr + 8))
  {
    v3 = "Average";
  }

  else
  {
    v3 = "Peak";
  }

  return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"MeasuredBitrate:%lld bps handicap:%.2f rate:%.2f Cap:%lld bps bitrateMeasure:%s", *BytePtr, *(BytePtr + 1), *(BytePtr + 2), *(BytePtr + 3), v3);
}

uint64_t faf_lowestVideoThenAudioComparatorFn(uint64_t a1, uint64_t a2)
{
  HasVideo = FigAlternateHasVideo(a1);
  v5 = FigAlternateHasVideo(a2);
  NormalizedPeakBitrate = FigAlternateGetNormalizedPeakBitrate(a1);
  v7 = FigAlternateGetNormalizedPeakBitrate(a2);
  if (HasVideo && !v5)
  {
    return -1;
  }

  if (!HasVideo && v5)
  {
    return 1;
  }

  if (NormalizedPeakBitrate >= v7)
  {
    v9 = 0;
  }

  else
  {
    v9 = -1;
  }

  if (NormalizedPeakBitrate > v7)
  {
    return 1;
  }

  else
  {
    return v9;
  }
}

uint64_t faf_lowestPeakBitRateComparatorFn(uint64_t a1, uint64_t a2)
{
  PeakBitRate = FigAlternateGetPeakBitRate(a1);
  v4 = FigAlternateGetPeakBitRate(a2);
  if (!PeakBitRate)
  {
    return 1;
  }

  if (PeakBitRate < v4)
  {
    return -1;
  }

  return PeakBitRate != v4;
}

uint64_t FigAlternateMinimumRequiredBitrateFilterCreate(const __CFAllocator *a1, int a2, void *a3)
{
  *&bytes[4] = 0;
  v10 = 0;
  *bytes = a2;
  v5 = CFDataCreate(a1, bytes, 16);
  if (v5)
  {
    v6 = v5;
    v7 = FigSimpleAlternateFilterCreate(a1, @"MinimumRequiredBitrate", 600, &off_1F0AE0BA0, v5, a3);
    CFRelease(v6);
  }

  else
  {
    FigAlternateMinimumRequiredBitrateFilterCreate_cold_1(&v11);
    return v11;
  }

  return v7;
}

const UInt8 *faf_minimumRequiredBitrateFilterInit(const __CFData *a1)
{
  result = CFDataGetBytePtr(a1);
  *(result + 1) = 0;
  return result;
}

uint64_t faf_minimumRequiredBitrateFirstPassFn(uint64_t a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  result = FigAlternateGetPeakBitRate(a1);
  if (result >= *BytePtr)
  {
    v5 = result;
    result = *(BytePtr + 1);
    if (!result || (result = FigAlternateGetPeakBitRate(result), v5 < result))
    {
      *(BytePtr + 1) = a1;
    }
  }

  return result;
}

uint64_t FigAlternateMinimumRequiredBitrateForHEVCFilterCreate(const __CFAllocator *a1, int a2, void *a3)
{
  *&bytes[4] = 0;
  v10 = 0;
  *bytes = a2;
  v5 = CFDataCreate(a1, bytes, 16);
  if (v5)
  {
    v6 = v5;
    v7 = FigSimpleAlternateFilterCreate(a1, @"MinimumRequiredBitrateForHEVC", 640, &off_1F0AE0BC8, v5, a3);
    CFRelease(v6);
  }

  else
  {
    FigAlternateMinimumRequiredBitrateForHEVCFilterCreate_cold_1(&v11);
    return v11;
  }

  return v7;
}

uint64_t faf_minimumRequiredBitrateForHEVCFirstPassFn(uint64_t a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  PeakBitRate = FigAlternateGetPeakBitRate(a1);
  result = FigAlternateHasVideoFormat(a1, 7);
  if (result || (result = FigAlternateHasVideoFormat(a1, 4), result))
  {
    if (PeakBitRate >= *BytePtr)
    {
      result = *(BytePtr + 1);
      if (!result || (result = FigAlternateGetPeakBitRate(result), PeakBitRate < result))
      {
        *(BytePtr + 1) = a1;
      }
    }
  }

  return result;
}

uint64_t faf_highestPeakBitRateComparatorFn(uint64_t a1, uint64_t a2)
{
  PeakBitRate = FigAlternateGetPeakBitRate(a1);
  v4 = FigAlternateGetPeakBitRate(a2);
  if (v4 >= PeakBitRate)
  {
    v5 = 0;
  }

  else
  {
    v5 = -1;
  }

  if (v4 > PeakBitRate)
  {
    return 1;
  }

  else
  {
    return v5;
  }
}

uint64_t FigAlternateAllowListWithURLFilterCreate(uint64_t a1, const void *a2, int a3, char a4, void *a5)
{
  v6 = FigSimpleAlternateFilterCreate(a1, @"AllowListURLFilter", a3, &unk_1F0AE0C18, a2, a5);
  *(CMBaseObjectGetDerivedStorage() + 64) = a4;
  return v6;
}

uint64_t faf_alternateWithURLFilterFn(uint64_t a1)
{
  FigAlternateGetPlaylistAlternateURL(a1);

  return FigCFEqual();
}

CFStringRef faf_alternateWithURLFilterDescAddendum(uint64_t a1, __CFString *a2)
{
  if (*(CMBaseObjectGetDerivedStorage() + 64))
  {
    v3 = a2;
  }

  else
  {
    v3 = @"<redacted>";
  }

  return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"alternateURL: %@", v3);
}

uint64_t FigAlternateDenyListFilterCreate(uint64_t a1, const void *a2, const void *a3, unsigned int a4, int a5, void *a6)
{
  v6 = faf_lowestBitrateComparatorFn;
  if (!a5)
  {
    v6 = faf_denylistComparatorFn;
  }

  if (a4 >= 0x372)
  {
    v6 = 0;
  }

  v8 = 0uLL;
  v9 = faf_denyListFilterFn;
  v10 = v6;
  v11 = 0;
  return FigSimpleAlternateFilterCreate(a1, a3, a4, &v8, a2, a6);
}

uint64_t faf_lowestBitrateComparatorFn(uint64_t a1, uint64_t a2)
{
  PeakBitRate = FigAlternateGetPeakBitRate(a1);
  v5 = FigAlternateGetPeakBitRate(a2);
  if (PeakBitRate >= v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = -1;
  }

  if (PeakBitRate > v5)
  {
    result = 1;
  }

  else
  {
    result = v6;
  }

  if (!result)
  {

    return faf_sameBitrateComparatorFn(a1, a2);
  }

  return result;
}

uint64_t faf_denylistComparatorFn(const void *a1, const void *a2, CFArrayRef theArray)
{
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    v7 = CFArrayGetCount(theArray);
  }

  else
  {
    Count = 0;
    v7 = 0;
  }

  v10 = v7;
  v11 = Count;
  faf_isAlternateInDenyList(a1, theArray, &v11);
  faf_isAlternateInDenyList(a2, theArray, &v10);
  if (v10 >= v11)
  {
    v8 = 0;
  }

  else
  {
    v8 = -1;
  }

  if (v10 > v11)
  {
    return 1;
  }

  else
  {
    return v8;
  }
}

uint64_t FigAlternateHighestRankingScoreFilterCreate(const __CFAllocator *a1, void *a2)
{
  *bytes = 0;
  v9 = 0;
  v4 = CFDataCreate(a1, bytes, 16);
  if (v4)
  {
    v5 = v4;
    v6 = FigSimpleAlternateFilterCreate(a1, @"HighestRankingScore", 460, &off_1F0AE0C40, v4, a2);
    CFRelease(v5);
  }

  else
  {
    FigAlternateHighestRankingScoreFilterCreate_cold_1(&v10);
    return v10;
  }

  return v6;
}

UInt8 *faf_rankingScoreFilterInit(const __CFData *a1)
{
  result = CFDataGetBytePtr(a1);
  *(result + 1) = 0xBFF0000000000000;
  *result = 1;
  return result;
}

void faf_rankingScoreFirstPassFn(uint64_t a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  if (*BytePtr)
  {
    v4 = BytePtr;
    if (FigAlternateHasRankingScore(a1))
    {
      v5 = *(v4 + 1);
      if (v5 <= FigAlternateGetRankingScore(a1))
      {
        RankingScore = FigAlternateGetRankingScore(a1);
      }

      else
      {
        RankingScore = *(v4 + 1);
      }

      *(v4 + 1) = RankingScore;
    }

    else
    {
      *v4 = 0;
    }
  }
}

uint64_t FigAlternateFrameRateSwitchCapFilterCreate(const __CFAllocator *a1, void *a2)
{
  v9 = 0;
  v8 = 0;
  v4 = CFDataCreate(a1, &v8, 12);
  if (v4)
  {
    v5 = v4;
    v6 = FigSimpleAlternateFilterCreate(a1, @"FrameRateSwitchCap", 450, &off_1F0AE0C68, v4, a2);
    CFRelease(v5);
  }

  else
  {
    FigAlternateFrameRateSwitchCapFilterCreate_cold_1(&v10);
    return v10;
  }

  return v6;
}

void faf_frameRateSwitchCapFilterInit(const __CFData *a1)
{
  BytePtr = CFDataGetBytePtr(a1);

  memset_pattern16(BytePtr, &unk_196E76620, 0xCuLL);
}

uint64_t faf_frameRateSwitchCapFirstPassFn(uint64_t a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  FrameRateBucket = FigAlternateGetFrameRateBucket(a1);
  NormalizedPeakBitrate = FigAlternateGetNormalizedPeakBitrate(a1);
  result = FigAlternateIsAudioOnly(a1);
  if (!result)
  {
    v7 = *&BytePtr[4 * FrameRateBucket];
    if (v7 >= NormalizedPeakBitrate)
    {
      v7 = NormalizedPeakBitrate;
    }

    *&BytePtr[4 * FrameRateBucket] = v7;
  }

  return result;
}

BOOL faf_frameRateSwitchCapFilterFn(uint64_t a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  FrameRateBucket = FigAlternateGetFrameRateBucket(a1);
  NormalizedPeakBitrate = FigAlternateGetNormalizedPeakBitrate(a1);
  return FigAlternateIsAudioOnly(a1) || (FrameRateBucket + 1) > 2 || *&BytePtr[4 * (FrameRateBucket + 1)] >= NormalizedPeakBitrate;
}

uint64_t FigAlternatePlaybackScoreAndBitRateFilterCreate(const __CFAllocator *a1, void *a2)
{
  *bytes = 0;
  v9 = 0;
  v4 = CFDataCreate(a1, bytes, 16);
  if (v4)
  {
    v5 = v4;
    v6 = FigSimpleAlternateFilterCreate(a1, @"PlaybackScoreAndBitRate", 400, &off_1F0AE0C90, v4, a2);
    CFRelease(v5);
  }

  else
  {
    FigAlternatePlaybackScoreAndBitRateFilterCreate_cold_1(&v10);
    return v10;
  }

  return v6;
}

const UInt8 *faf_playbackScoreFilterInit(const __CFData *a1)
{
  result = CFDataGetBytePtr(a1);
  *result = 0;
  *(result + 1) = 0xBFF0000000000000;
  return result;
}

uint64_t faf_playbackScoreFirstPassFn(uint64_t a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  BestVideoFormat = FigAlternateGetBestVideoFormat(a1);
  result = FigAlternateIsAudioOnly(a1);
  if (!result && BestVideoFormat)
  {
    v9 = 0;
    v6 = *(BytePtr + 1);
    result = FigAlternateGetRankingScoreOrPeakBWWithVideoCodecScore(a1, 0, &v9);
    if (v6 < v7)
    {
      *BytePtr = a1;
      result = FigAlternateGetRankingScoreOrPeakBWWithVideoCodecScore(a1, 0, &v9);
      *(BytePtr + 1) = v8;
    }
  }

  return result;
}

BOOL faf_playbackScoreFilterFn(uint64_t a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  BestVideoFormat = FigAlternateGetBestVideoFormat(a1);
  IsAudioOnly = FigAlternateIsAudioOnly(a1);
  result = 1;
  if (!IsAudioOnly)
  {
    if (BestVideoFormat)
    {
      PeakBitRate = FigAlternateGetPeakBitRate(a1);
      return PeakBitRate <= FigAlternateGetPeakBitRate(*BytePtr);
    }
  }

  return result;
}

uint64_t faf_highestBitrateComparatorFn(uint64_t a1, uint64_t a2)
{
  PeakBitRate = FigAlternateGetPeakBitRate(a1);
  v5 = FigAlternateGetPeakBitRate(a2);
  if (v5 >= PeakBitRate)
  {
    v6 = 0;
  }

  else
  {
    v6 = -1;
  }

  if (v5 > PeakBitRate)
  {
    result = 1;
  }

  else
  {
    result = v6;
  }

  if (!result)
  {

    return faf_sameBitrateComparatorFn(a1, a2);
  }

  return result;
}

uint64_t faf_lowestIndexFilterComparatorFn(uint64_t a1, uint64_t a2)
{
  AlternateIndex = FigAlternateGetAlternateIndex(a1);
  v4 = FigAlternateGetAlternateIndex(a2);
  if (AlternateIndex >= v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = -1;
  }

  if (AlternateIndex > v4)
  {
    return 1;
  }

  else
  {
    return v5;
  }
}

uint64_t FigAlternateSingleAlternateFilterCreate(uint64_t a1, const void *a2, int a3, const void *a4, int a5, void *a6)
{
  if (a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = faf_allEqualMinSortingFn;
  }

  v8 = 0uLL;
  v9 = faf_singleAlternateFilterFn;
  v10 = v6;
  v11 = faf_singleAlternateFilterDescAddendum;
  return FigSimpleAlternateFilterCreate(a1, a4, a5, &v8, a2, a6);
}

uint64_t FigAlternateStartupScoreFilterCreate(const __CFAllocator *a1, void *a2)
{
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  v4 = CFDataCreate(a1, v8, 40);
  if (v4)
  {
    v5 = v4;
    v6 = FigSimpleAlternateFilterCreate(a1, @"StartupScore", 555, &off_1F0AE0D08, v4, a2);
    CFRelease(v5);
  }

  else
  {
    FigAlternateStartupScoreFilterCreate_cold_1(&v10);
    return v10;
  }

  return v6;
}

UInt8 *faf_startupScoreFilterInit(const __CFData *a1)
{
  result = CFDataGetBytePtr(a1);
  *result = 257;
  result[2] = 0;
  *(result + 1) = 0xFFEFFFFFFFFFFFFFLL;
  result[16] = 0;
  *(result + 3) = 0xFFEFFFFFFFFFFFFFLL;
  *(result + 4) = 0;
  return result;
}

uint64_t faf_startupScoreFirstPassFn(uint64_t a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  IsAudioOnly = FigAlternateIsAudioOnly(a1);
  IsIFrameOnly = FigAlternateIsIFrameOnly(a1);
  StartupScore = FigAlternateGetStartupScore(a1);
  result = FigAlternateGetPeakBitRate(a1);
  if (!IsIFrameOnly)
  {
    *BytePtr = 0;
    if (IsAudioOnly)
    {
      if (StartupScore > *(BytePtr + 3))
      {
        *(BytePtr + 16) = 1;
        *(BytePtr + 3) = StartupScore;
        *(BytePtr + 9) = result;
      }
    }

    else
    {
      *(BytePtr + 1) = 0;
      if (StartupScore > *(BytePtr + 1))
      {
        *(BytePtr + 2) = 1;
        *(BytePtr + 1) = StartupScore;
        *(BytePtr + 8) = result;
      }
    }
  }

  return result;
}

uint64_t faf_startupScoreFilterComparatorFn(uint64_t a1, uint64_t a2)
{
  ZeroIndexedAlternateIndex = FigAlternateGetZeroIndexedAlternateIndex(a1);
  v4 = FigAlternateGetZeroIndexedAlternateIndex(a2);
  if (ZeroIndexedAlternateIndex >= v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = -1;
  }

  if (ZeroIndexedAlternateIndex > v4)
  {
    return 1;
  }

  else
  {
    return v5;
  }
}

uint64_t FigAlternatePassthroughFilterCreate(uint64_t a1, const __CFString *a2, int a3, void *a4)
{
  if (!a2)
  {
    FigAlternatePassthroughFilterCreate_cold_5(&v14);
    return v14;
  }

  if (!a4)
  {
    FigAlternatePassthroughFilterCreate_cold_4(&v14);
    return v14;
  }

  MEMORY[0x19A8D3660](&FigAlternateFilterGetClassID_sRegisterFigAlternateFilterTypeOnce, RegisterFigAlternateFilterType);
  v7 = CMDerivedObjectCreate();
  if (v7)
  {
    return v7;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = FigReentrantMutexCreate();
  *DerivedStorage = v9;
  if (!v9)
  {
    FigAlternatePassthroughFilterCreate_cold_3(&v14);
    return v14;
  }

  Copy = CFStringCreateCopy(*MEMORY[0x1E695E480], a2);
  *(DerivedStorage + 16) = Copy;
  if (!Copy)
  {
    FigAlternatePassthroughFilterCreate_cold_2(&v14);
    return v14;
  }

  v11 = FigDispatchQueueCreateWithPriority();
  *(DerivedStorage + 24) = v11;
  if (!v11)
  {
    FigAlternatePassthroughFilterCreate_cold_1(&v14);
    return v14;
  }

  v12 = 0;
  *(DerivedStorage + 8) = a3;
  *a4 = 0;
  return v12;
}

uint64_t FigAlternateTransitionBiasFilterCreate(void *a1, CFTypeRef cf, const void *a3, void *a4)
{
  if (cf)
  {
    v7 = CFRetain(cf);
  }

  else
  {
    v7 = 0;
  }

  __src[0] = v7;
  if (a3)
  {
    v8 = CFRetain(a3);
  }

  else
  {
    v8 = 0;
  }

  __src[1] = v8;
  return fsaf_createWithBytes(a1, @"TransitionBias", 570, faf_TransitionBiasFilterFn, 0, 0, 0, faf_TransitionBiasFilterAddendum, __src, 16, faf_TransitionBiasDeallocateCallback, a4);
}

uint64_t faf_TransitionBiasFilterFn(const void *a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  if (!*BytePtr)
  {
    return 0;
  }

  v4 = BytePtr;
  FigCFDictionaryGetInt32IfPresent();
  FigCFDictionaryGetInt32IfPresent();
  result = FigAlternateHasAudioFormatID(a1, 0);
  if (!result)
  {
    return result;
  }

  if (FigAlternateGetAudioChannelCounts(a1, *v4, 0, 0))
  {
    return 0;
  }

  if (CFDictionaryContainsKey(*(v4 + 1), @"bitdepth"))
  {
    FigCFDictionaryGetInt32IfPresent();
    if (FigAlternateGetAudioBitDepth(a1, *v4))
    {
      return 0;
    }
  }

  if (!CFDictionaryContainsKey(*(v4 + 1), @"samplerate"))
  {
    return 1;
  }

  FigCFDictionaryGetDoubleIfPresent();
  return FigAlternateGetAudioSampleRate(a1, *v4) == 0.0;
}

CFStringRef faf_TransitionBiasFilterAddendum(int a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  v3 = *MEMORY[0x1E695E480];
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  if (CFDictionaryContainsKey(*(BytePtr + 1), @"bitdepth"))
  {
    Value = CFDictionaryGetValue(*(BytePtr + 1), @"bitdepth");
    CFStringAppendFormat(Mutable, 0, @" Bitdepth: %@", Value);
  }

  if (CFDictionaryContainsKey(*(BytePtr + 1), @"samplerate"))
  {
    v6 = CFDictionaryGetValue(*(BytePtr + 1), @"samplerate");
    CFStringAppendFormat(Mutable, 0, @" SampleRate: %@", v6);
  }

  v7 = CFDictionaryGetValue(*(BytePtr + 1), @"channels");
  v8 = CFStringCreateWithFormat(v3, 0, @"channels: %@%@", v7, Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v8;
}

void faf_TransitionBiasDeallocateCallback(const void **ptr, CFAllocatorRef allocator)
{
  v4 = *ptr;
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = ptr[1];
  if (v5)
  {
    CFRelease(v5);
  }

  CFAllocatorDeallocate(allocator, ptr);
}

uint64_t FigAlternateHighestAtmosBitrateFilterCreate(const __CFAllocator *a1, void *a2)
{
  *bytes = 0;
  v9 = 0;
  v4 = CFDataCreate(a1, bytes, 16);
  if (v4)
  {
    v5 = v4;
    v6 = FigSimpleAlternateFilterCreate(a1, @"HighestAtmosBitrateFilter", 635, off_1F0AE0D48, v4, a2);
    CFRelease(v5);
  }

  else
  {
    FigAlternateHighestAtmosBitrateFilterCreate_cold_1(&v10);
    return v10;
  }

  return v6;
}

const UInt8 *faf_HighestAtmosBitrateFilterInit(const __CFData *a1)
{
  result = CFDataGetBytePtr(a1);
  *result = 0;
  *(result + 1) = 0;
  return result;
}

BOOL faf_HighestAtmosBitrateFilterFn(uint64_t a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  if (*BytePtr)
  {
    return 1;
  }

  v5 = *(BytePtr + 1);
  return !v5 || v5 == a1;
}

uint64_t FigAlternatePreferExclusiveAudioPassthroughFilterCreate(const __CFAllocator *a1, int a2, void *a3)
{
  *bytes = a2;
  v5 = CFDataCreate(a1, bytes, 4);
  if (v5)
  {
    v6 = v5;
    v7 = FigSimpleAlternateFilterCreate(a1, @"PreferExclusiveAudioPassthrough", 639, &unk_1F0AE0D70, v5, a3);
    CFRelease(v6);
  }

  else
  {
    FigAlternatePreferExclusiveAudioPassthroughFilterCreate_cold_1(&v10);
    return v10;
  }

  return v7;
}

uint64_t faf_PreferExclusiveAudioPassthroughFilterFn(uint64_t a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  if (FigAlternateHasAudioFormat(a1, 7) && BytePtr[2] || FigAlternateHasAudioFormat(a1, 6) && BytePtr[1])
  {
    return 1;
  }

  result = FigAlternateHasAudioFormat(a1, 5);
  if (result)
  {
    return *BytePtr != 0;
  }

  return result;
}

CFStringRef fivc_copyDescAddendum(int a1, CFDataRef theData)
{
  Count = *CFDataGetBytePtr(theData);
  v3 = *MEMORY[0x1E695E480];
  if (Count)
  {
    Count = CFArrayGetCount(Count);
  }

  return CFStringCreateWithFormat(v3, 0, @"Channels:%ld", Count);
}

void fivc_deallocateContext(const void **ptr, CFAllocatorRef allocator)
{
  v4 = *ptr;
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = ptr[1];
  if (v5)
  {
    CFRelease(v5);
  }

  CFAllocatorDeallocate(allocator, ptr);
}

uint64_t fivp_createFilter(void *a1, CFTypeRef cf, int a3, void *a4)
{
  __src[1] = 0;
  __src[2] = 0;
  if (cf)
  {
    v7 = CFRetain(cf);
  }

  else
  {
    v7 = 0;
  }

  __src[0] = v7;
  __src[3] = a3 == 0;
  if (a3)
  {
    v8 = @"VideoLayoutPreferenceMain";
  }

  else
  {
    v8 = @"VideoLayoutPreferenceDisc";
  }

  return fsaf_createWithBytes(a1, v8, 880, fivp_filterFn, 0, fivp_firstPassFn, fivp_filterInitFn, fivp_copyDescAddendum, __src, 32, fivp_deallocateContext, a4);
}

uint64_t FigAlternateVideoLayoutPinningFilterCreate(uint64_t a1, const void *a2, void *a3)
{
  if (a3)
  {

    return FigSimpleAlternateFilterCreate(a1, @"VideoLayoutPinning", 883, &unk_1F0AE0D98, a2, a3);
  }

  else
  {
    v7 = v3;
    v8 = v4;
    FigAlternateVideoLayoutPinningFilterCreate_cold_1(&v6);
    return v6;
  }
}

CFStringRef fvlp_desc(uint64_t a1, const __CFArray *a2)
{
  VideoLayoutLoggingStringFromCollectionArray = FigAlternateCreateVideoLayoutLoggingStringFromCollectionArray(a2);
  v3 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"collection %@", VideoLayoutLoggingStringFromCollectionArray);
  if (VideoLayoutLoggingStringFromCollectionArray)
  {
    CFRelease(VideoLayoutLoggingStringFromCollectionArray);
  }

  return v3;
}

uint64_t FigAlternateSuppressDoVi5StereoFilterCreate(uint64_t a1, void *a2)
{
  if (a2)
  {

    return FigSimpleAlternateFilterCreate(a1, @"SuppressDoVi5Stereo", 1000, &unk_1F0AE0DC0, 0, a2);
  }

  else
  {
    v6 = v2;
    v7 = v3;
    FigAlternateSuppressDoVi5StereoFilterCreate_cold_1(&v5);
    return v5;
  }
}

uint64_t FigAlternateSuppressDoVi20MonoFilterCreate(uint64_t a1, void *a2)
{
  if (a2)
  {

    return FigSimpleAlternateFilterCreate(a1, @"SuppressDoVi20Mono", 1000, &unk_1F0AE0DE8, 0, a2);
  }

  else
  {
    v6 = v2;
    v7 = v3;
    FigAlternateSuppressDoVi20MonoFilterCreate_cold_1(&v5);
    return v5;
  }
}

uint64_t fsdm_filterFn(__CFArray *a1)
{
  if (!FigAlternateHasVideoDolbyVisionHEVCProfile(a1, 20))
  {
    return 1;
  }

  VideoLayoutTags = FigAlternateGetVideoLayoutTags(a1);
  v3 = 0;
  v4 = *MEMORY[0x1E69631B0];
  v5 = *(MEMORY[0x1E69631B0] + 8);
  do
  {
    if (VideoLayoutTags)
    {
      Count = CFArrayGetCount(VideoLayoutTags);
    }

    else
    {
      Count = 0;
    }

    v7 = v3 < Count;
    if (v3 >= Count)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(VideoLayoutTags, v3);
    *&tagBuffer.category = 0;
    tagBuffer.value = 0;
    numberOfTagsCopied = 0;
    CMTagCollectionGetTagsWithCategory(ValueAtIndex, kCMTagCategory_StereoView, &tagBuffer, 1, &numberOfTagsCopied);
    *&v12.category = v4;
    v12.value = v5;
    ++v3;
  }

  while (CMTagEqualToTag(tagBuffer, v12));
  return v7;
}

uint64_t FigAlternateMediaValidationForStereoVideoFilterCreate(uint64_t a1, void *a2)
{
  if (a2)
  {

    return FigSimpleAlternateFilterCreate(a1, @"MediaValidationForStereoVideo", 1000, &unk_1F0AE0E10, 0, a2);
  }

  else
  {
    v6 = v2;
    v7 = v3;
    FigAlternateMediaValidationForStereoVideoFilterCreate_cold_1(&v5);
    return v5;
  }
}

BOOL fmvsv_filterFn(__CFArray *a1)
{
  if (!faf_alternateHasOnlyStereoVideo(a1))
  {
    return 1;
  }

  if (FigAlternateHasVideoFormat(a1, 4))
  {
    v2 = FigAlternateGetVideoRange(a1) == 1;
    VideoLayoutTags = FigAlternateGetVideoLayoutTags(a1);
    v4 = 0;
    v5 = *MEMORY[0x1E6960668];
    v6 = *(MEMORY[0x1E6960668] + 8);
    while (1)
    {
      v7 = VideoLayoutTags ? CFArrayGetCount(VideoLayoutTags) : 0;
      if (v4 >= v7)
      {
        break;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(VideoLayoutTags, v4);
      *&tagBuffer.category = 0;
      tagBuffer.value = 0;
      numberOfTagsCopied = 0;
      CMTagCollectionGetTagsWithCategory(ValueAtIndex, kCMTagCategory_ProjectionType, &tagBuffer, 1, &numberOfTagsCopied);
      *&v12.category = v5;
      v12.value = v6;
      ++v4;
      if (CMTagEqualToTag(tagBuffer, v12))
      {
        return 1;
      }
    }
  }

  else if (FigAlternateHasVideoFormat(a1, 5))
  {
    return FigAlternateGetVideoRange(a1) == 1;
  }

  else
  {
    return FigAlternateHasVideoFormat(a1, 7) != 0;
  }

  return v2;
}

uint64_t FigAlternateAmbisonicOrderFilterCreate(const __CFAllocator *a1, int a2, int a3, CFNumberRef number, int a5, void *a6)
{
  valuePtr = 0;
  v20 = 0;
  if (a5)
  {
    v10 = 0;
  }

  else
  {
    v10 = faf_AmbisonicOrderFilterMinSortingFn;
  }

  if (number)
  {
    CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr);
  }

  else
  {
    LODWORD(valuePtr) = -1;
  }

  HIDWORD(valuePtr) = a2;
  LODWORD(v20) = a3;
  v11 = CFDataCreate(a1, &valuePtr, 16);
  if (v11)
  {
    v12 = v11;
    *&v15 = faf_AmbisonicOrderFilterInit;
    *(&v15 + 1) = faf_AmbisonicOrderFilterFirstPassFn;
    v16 = faf_AmbisonicOrderFilterFilterFn;
    v17 = v10;
    v18 = faf_AmbisonicOrderFilterAddendum;
    v13 = FigSimpleAlternateFilterCreate(a1, @"AmbisonicOrderAudio", 770, &v15, v11, a6);
    CFRelease(v12);
  }

  else
  {
    FigAlternateAmbisonicOrderFilterCreate_cold_1(&v15);
    return v15;
  }

  return v13;
}

const UInt8 *faf_AmbisonicOrderFilterInit(const __CFData *a1)
{
  result = CFDataGetBytePtr(a1);
  *(result + 3) = -1;
  return result;
}

void faf_AmbisonicOrderFilterFirstPassFn(const void *a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  if ((*BytePtr & 0x80000000) != 0)
  {
    v10 = 0;
  }

  else
  {
    v10 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, BytePtr);
  }

  AmbisonicsOrder = FigAlternateGetAmbisonicsOrder(a1, v10, v3, v4, v5, v6, v7, v8);
  if (AmbisonicsOrder > *(BytePtr + 3) && *(BytePtr + 1) <= AmbisonicsOrder && AmbisonicsOrder <= *(BytePtr + 2))
  {
    *(BytePtr + 3) = AmbisonicsOrder;
  }

  if (v10)
  {

    CFRelease(v10);
  }
}

BOOL faf_AmbisonicOrderFilterFilterFn(const void *a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  if ((*BytePtr & 0x80000000) != 0)
  {
    AmbisonicsOrder = FigAlternateGetAmbisonicsOrder(a1, 0, v3, v4, v5, v6, v7, v8);
  }

  else
  {
    v10 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, BytePtr);
    AmbisonicsOrder = FigAlternateGetAmbisonicsOrder(a1, v10, v11, v12, v13, v14, v15, v16);
    if (v10)
    {
      CFRelease(v10);
    }
  }

  return AmbisonicsOrder == *(BytePtr + 3);
}

uint64_t faf_AmbisonicOrderFilterMinSortingFn(const void *a1, const void *a2, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  if ((*BytePtr & 0x80000000) != 0)
  {
    v12 = 0;
  }

  else
  {
    v12 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, BytePtr);
  }

  AmbisonicsOrder = FigAlternateGetAmbisonicsOrder(a1, v12, v6, v7, v8, v9, v10, v11);
  v20 = FigAlternateGetAmbisonicsOrder(a2, v12, v14, v15, v16, v17, v18, v19);
  if (v12)
  {
    CFRelease(v12);
  }

  if (AmbisonicsOrder >= v20)
  {
    v21 = 0;
  }

  else
  {
    v21 = -1;
  }

  if (AmbisonicsOrder > v20)
  {
    return 1;
  }

  else
  {
    return v21;
  }
}

uint64_t FigAlternateStereoCapForMultichannelFilterCreate(void *a1, CFTypeRef cf, void *a3)
{
  __src[1] = 0;
  if (cf)
  {
    v5 = CFRetain(cf);
  }

  else
  {
    v5 = 0;
  }

  __src[0] = v5;
  return fsaf_createWithBytes(a1, @"StereoCapForMultichannel", 750, faf_stereoCapForMultichannelFilterFn, 0, faf_stereoCapForMultichannelFirstPassFn, faf_stereoCapForMultichannelFilterInit, 0, __src, 16, faf_stereoCapForMultichannelDeallocateContext, a3);
}

BOOL faf_stereoCapForMultichannelFilterFn(const void *a1, CFDataRef theData)
{
  v6 = 0;
  BytePtr = CFDataGetBytePtr(theData);
  AudioChannelCounts = FigAlternateGetAudioChannelCounts(a1, *BytePtr, &v6, 0);
  return AudioChannelCounts - v6 > 2 || FigAlternateGetExpectedAverageBitrate(a1) < *(BytePtr + 2);
}

const UInt8 *faf_stereoCapForMultichannelFilterInit(const __CFData *a1)
{
  result = CFDataGetBytePtr(a1);
  *(result + 2) = 0x7FFFFFFF;
  return result;
}

void faf_stereoCapForMultichannelDeallocateContext(const void **ptr, CFAllocatorRef allocator)
{
  v4 = *ptr;
  if (v4)
  {
    CFRelease(v4);
  }

  CFAllocatorDeallocate(allocator, ptr);
}

uint64_t FigAlternateMinimumRequiredPixelCountFilterCreate(const __CFAllocator *a1, uint64_t a2, void *a3)
{
  *bytes = a2;
  v10 = 0;
  v5 = CFDataCreate(a1, bytes, 16);
  if (v5)
  {
    v6 = v5;
    v7 = FigSimpleAlternateFilterCreate(a1, @"MinimumRequiredPixelCount", 530, &off_1F0AE0E38, v5, a3);
    CFRelease(v6);
  }

  else
  {
    FigAlternateMinimumRequiredPixelCountFilterCreate_cold_1(&v11);
    return v11;
  }

  return v7;
}

const UInt8 *faf_preferPixelCountFilterInit(const __CFData *a1)
{
  result = CFDataGetBytePtr(a1);
  *(result + 1) = 0x7FFFFFFFFFFFFFFFLL;
  return result;
}

uint64_t faf_preferPixelCountFilterFirstPassFn(uint64_t a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  result = FigAlternateGetPixelCount(a1);
  if (*BytePtr)
  {
    v5 = result < *BytePtr;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = *(BytePtr + 1);
    if (v6 >= result)
    {
      v6 = result;
    }

    *(BytePtr + 1) = v6;
  }

  return result;
}

uint64_t FigAlternateAggressiveWalkBackFilterCreate(const __CFAllocator *a1, int a2, int a3, void *a4)
{
  *bytes = a3;
  v11 = a2;
  v6 = CFDataCreate(a1, bytes, 8);
  if (v6)
  {
    v7 = v6;
    v8 = FigSimpleAlternateFilterCreate(a1, @"AggressiveWalkBack", 530, &unk_1F0AE0E60, v6, a4);
    CFRelease(v7);
  }

  else
  {
    FigAlternateAggressiveWalkBackFilterCreate_cold_1(&v12);
    return v12;
  }

  return v8;
}

BOOL faf_aggressiveWalkBackFilterFn(uint64_t a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  if (*BytePtr * 1.01 >= FigAlternateGetPeakBitRate(a1))
  {
    return 0;
  }

  v4 = BytePtr[1];
  PeakBitRate = FigAlternateGetPeakBitRate(a1);
  return FigMediaPlaylistUtilityDoesBandwidthAllowAggressiveWalkback(v4, PeakBitRate);
}

CFStringRef FigAlternateFilterCopyFormattingDesc(uint64_t a1)
{
  v2 = *MEMORY[0x1E695E480];
  v3 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v3)
  {
    v4 = v3(a1);
  }

  else
  {
    v4 = &stru_1F0B1AFB8;
  }

  v5 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v5)
  {
    v6 = v5(a1);
  }

  else
  {
    v6 = 0xFFFFFFFFLL;
  }

  return CFStringCreateWithFormat(v2, 0, @"[FigAlternateFilter <%@:%p> priority:%d]", v4, a1, v6);
}

uint64_t faf_equal(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (!v4)
    {
      if (!a2)
      {
        goto LABEL_8;
      }

      goto LABEL_5;
    }

    v4(a1);
  }

  if (!a2)
  {
    goto LABEL_8;
  }

LABEL_5:
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v5)
  {
    v5(a2);
  }

LABEL_8:

  return FigCFEqual();
}

uint64_t fsaf_finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v1 = *(DerivedStorage + 72);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 72) = 0;
  }

  return FigSimpleMutexDestroy();
}

CFStringRef fsaf_copyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v4 = *(v3 + 48);
  v5 = *(v3 + 72);
  if (v4)
  {
    v6 = v4(a1, v5);
LABEL_3:
    v7 = v6;
    FigSimpleMutexUnlock();
    v8 = *MEMORY[0x1E695E480];
    goto LABEL_4;
  }

  if (!v5)
  {
    v6 = CFRetain(&stru_1F0B1AFB8);
    goto LABEL_3;
  }

  v13 = FigCFCopyCompactDescription();
  v8 = *MEMORY[0x1E695E480];
  v7 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"context:%@", v13);
  FigSimpleMutexUnlock();
  if (v13)
  {
    CFRelease(v13);
  }

LABEL_4:
  Length = CFStringGetLength(v7);
  v10 = " ";
  if (!Length)
  {
    v10 = "";
  }

  v11 = CFStringCreateWithFormat(v8, 0, @"[FigSimpleAlternateFilter <%@:%p> priority:%d%s%@]", *DerivedStorage, a1, *(DerivedStorage + 8), v10, v7);
  if (v7)
  {
    CFRelease(v7);
  }

  return v11;
}

uint64_t fsaf_apply(const void *a1, const __CFArray *a2, CFTypeRef *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v15 = 0u;
  v16 = 0u;
  if (!a2)
  {
    fsaf_apply_cold_3(&v17);
    Mutable = 0;
    goto LABEL_23;
  }

  v7 = DerivedStorage;
  v8 = CFGetAllocator(a1);
  Mutable = CFArrayCreateMutable(v8, 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    fsaf_apply_cold_2(&v17);
LABEL_23:
    v11 = v17;
    if (v17)
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

  if (CFArrayGetCount(a2) < 1)
  {
    goto LABEL_15;
  }

  FigSimpleMutexLock();
  v10 = v7[2];
  if (v10)
  {
    v10(v7[9]);
  }

  *&v15 = a1;
  *&v16 = Mutable;
  if (!v7[3] || (v18.length = CFArrayGetCount(a2), v18.location = 0, CFArrayApplyFunction(a2, v18, fsaf_firstPassCFArrayApplierFn, &v15), v11 = DWORD2(v16), !DWORD2(v16)))
  {
    if (!v7[4] || (v19.length = CFArrayGetCount(a2), v19.location = 0, CFArrayApplyFunction(a2, v19, fsaf_applyCFArrayApplierFn, &v15), v11 = DWORD2(v16), !DWORD2(v16)))
    {
      if (CFArrayGetCount(Mutable) || !v7[5] || (CFRelease(Mutable), v12 = CFGetAllocator(a1), (Mutable = faf_copyMinimumAlternatesFromArray(v12, a2, v7[5], v7[9])) != 0))
      {
        v11 = 0;
      }

      else
      {
        fsaf_apply_cold_1(&v17);
        v11 = v17;
      }
    }
  }

  FigSimpleMutexUnlock();
  if (!v11)
  {
LABEL_15:
    if (*a3)
    {
      CFRelease(*a3);
    }

    v13 = CFGetAllocator(a1);
    v11 = 0;
    *a3 = CFArrayCreateCopy(v13, Mutable);
  }

LABEL_18:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v11;
}

CFArrayRef faf_copyMinimumAlternatesFromArray(const __CFAllocator *a1, const __CFArray *a2, uint64_t a3, uint64_t a4)
{
  v12 = 0u;
  *theArray = 0u;
  Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  v9 = Mutable;
  if (a2 && Mutable)
  {
    theArray[1] = Mutable;
    *&v12 = a3;
    *(&v12 + 1) = a4;
    v14.length = CFArrayGetCount(a2);
    v14.location = 0;
    CFArrayApplyFunction(a2, v14, faf_minimumCFArrayApplierFn, &v12);
    Copy = CFArrayCreateCopy(a1, theArray[1]);
LABEL_4:
    CFRelease(v9);
    return Copy;
  }

  Copy = 0;
  result = 0;
  if (v9)
  {
    goto LABEL_4;
  }

  return result;
}

void faf_minimumCFArrayApplierFn(const void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = (*a2)(a1, v4, *(a2 + 8));
    if (v5 == 1)
    {
      return;
    }

    if (v5 == -1)
    {
      *(a2 + 16) = a1;
      CFArrayRemoveAllValues(*(a2 + 24));
    }
  }

  else
  {
    *(a2 + 16) = a1;
  }

  v6 = *(a2 + 24);

  CFArrayAppendValue(v6, a1);
}

void faf_mergeFilterFinalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
  }

  v1 = *(DerivedStorage + 16);
  if (v1)
  {
    CFRelease(v1);
  }

  v2 = *(DerivedStorage + 24);
  if (v2)
  {

    CFRelease(v2);
  }
}

uint64_t faf_mergeFilterCopyProperty(uint64_t a1, const void *a2, uint64_t a3, CFNumberRef *a4)
{
  if (!a2)
  {
    faf_mergeFilterCopyProperty_cold_3(&v9);
    return v9;
  }

  if (!a4)
  {
    faf_mergeFilterCopyProperty_cold_2(&v9);
    return v9;
  }

  result = CFEqual(@"FAFProperty_CountOfChildFilters", a2);
  if (result)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v7 = faf_mergeFilterCountFilterAndItsChildren(*(DerivedStorage + 16));
    v9 = faf_mergeFilterCountFilterAndItsChildren(*(DerivedStorage + 24)) + v7;
    v8 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberLongType, &v9);
    *a4 = v8;
    if (v8)
    {
      return 0;
    }

    else
    {
      faf_mergeFilterCopyProperty_cold_1(&v10);
      return v10;
    }
  }

  return result;
}

uint64_t faf_mergeFilterCountFilterAndItsChildren(uint64_t a1)
{
  v7 = 0;
  number = 0;
  v2 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v2)
  {
    return 1;
  }

  v3 = v2(a1, @"FAFProperty_CountOfChildFilters", *MEMORY[0x1E695E480], &number);
  v4 = number;
  if (v3)
  {
    v5 = 1;
    if (!number)
    {
      return v5;
    }

    goto LABEL_4;
  }

  CFNumberGetValue(number, kCFNumberLongType, &v7);
  v4 = number;
  v5 = v7 + 1;
  if (number)
  {
LABEL_4:
    CFRelease(v4);
  }

  return v5;
}

uint64_t fhaf_finalize()
{
  v0 = *CMBaseObjectGetDerivedStorage();
  if (v0)
  {
    CFRelease(v0);
  }

  return FigSimpleMutexDestroy();
}

CFStringRef fhaf_copyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v3 = *MEMORY[0x1E695E480];
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v4)
  {
    v5 = v4(a1);
  }

  else
  {
    v5 = &stru_1F0B1AFB8;
  }

  v6 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v6)
  {
    v7 = v6(a1);
  }

  else
  {
    v7 = 0xFFFFFFFFLL;
  }

  StringFromHDCPState = FigAlternateGetStringFromHDCPState(*(DerivedStorage + 24));
  v9 = FigAlternateGetStringFromHDCPState(*(DerivedStorage + 28));
  v10 = CFStringCreateWithFormat(v3, 0, @"[FigHDCPAlternateFilter <%@: %p> priority: %d hdcp0:%@ hdcp1:%@]", v5, a1, v7, StringFromHDCPState, v9);
  FigSimpleMutexUnlock();
  return v10;
}

uint64_t faf_HDCPAlternateFilterApply(const void *a1, const __CFArray *a2, CFTypeRef *a3)
{
  CMBaseObjectGetDerivedStorage();
  v6 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!a2)
  {
    faf_HDCPAlternateFilterApply_cold_2(&v30);
    v26 = v30;
    goto LABEL_61;
  }

  v7 = CFGetAllocator(a1);
  MutableCopy = CFArrayCreateMutableCopy(v7, 0, a2);
  if (!MutableCopy)
  {
    faf_HDCPAlternateFilterApply_cold_1(&v29);
    v26 = v29;
LABEL_61:
    if (!v26)
    {
      v9 = 0;
      goto LABEL_47;
    }

    goto LABEL_56;
  }

  v9 = MutableCopy;
  if (CFArrayGetCount(a2) < 1)
  {
    v12 = 0;
    v11 = 0;
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a2, v10);
      HDCPLevel = FigAlternateGetHDCPLevel(ValueAtIndex);
      if (!HDCPLevel)
      {
        v11 = 1;
      }

      if (HDCPLevel == 1)
      {
        v12 = 1;
      }

      if (v11)
      {
        v15 = v12 == 0;
      }

      else
      {
        v15 = 1;
      }

      if (!v15)
      {
        break;
      }

      ++v10;
    }

    while (v10 < CFArrayGetCount(a2));
  }

  if (v11 | v12)
  {
    v16 = v6 == 0;
  }

  else
  {
    v16 = 1;
  }

  if (!v16)
  {
    v17 = -1;
    if (v12)
    {
      if (faf_getHDCPState(a1, 1) > 1)
      {
        v17 = -1;
      }

      else
      {
        v17 = 1;
      }
    }

    if (v11 && v17 < 0)
    {
      if (faf_getHDCPState(a1, 0) <= 1)
      {
        v17 = 0;
      }

      else
      {
        v17 = -1;
      }
    }

    if (v11)
    {
      v18 = v17 < 0;
    }

    else
    {
      v18 = 0;
    }

    v19 = v18;
    v20 = v17 >= 1 || v12 == 0;
    if (!v20 || v19)
    {
      Count = CFArrayGetCount(a2);
      if (Count >= 1)
      {
        v22 = Count + 1;
        do
        {
          v23 = CFArrayGetValueAtIndex(a2, v22 - 2);
          if (FigAlternateGetHDCPLevel(v23) > v17)
          {
            CFArrayRemoveValueAtIndex(v9, v22 - 2);
          }

          --v22;
        }

        while (v22 > 1);
      }
    }
  }

  while (1)
  {
LABEL_47:
    if (v9)
    {
      if (CFArrayGetCount(v9))
      {
        break;
      }

      CFRelease(v9);
    }

    v24 = CFGetAllocator(a1);
    v9 = faf_copyMinimumAlternatesFromArray(v24, a2, faf_HDCPAlternateMinSortingFn, 0);
    if (v9)
    {
      break;
    }

    v25 = faf_HDCPAlternateFilterApply_cold_3(&v31);
    v26 = v31;
    if (!v25)
    {
      goto LABEL_56;
    }
  }

  if (*a3)
  {
    CFRelease(*a3);
  }

  v27 = CFGetAllocator(a1);
  *a3 = CFArrayCreateCopy(v27, v9);
  CFRelease(v9);
  v26 = 0;
LABEL_56:
  if (v6)
  {
    CFRelease(v6);
  }

  return v26;
}

uint64_t faf_getHDCPState(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (a2 == 1)
  {
    v4 = *(DerivedStorage + 28);
    if (v4 == -2)
    {
      v5 = FigCFWeakReferenceHolderCopyReferencedObject();
      if (v5)
      {
        v6 = v5;
        v4 = (*(DerivedStorage + 16))(1, v5);
        *(DerivedStorage + 28) = v4;
LABEL_8:
        CFRelease(v6);
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v4 = *(DerivedStorage + 24);
    if (v4 == -2)
    {
      v7 = FigCFWeakReferenceHolderCopyReferencedObject();
      if (v7)
      {
        v6 = v7;
        v4 = (*(DerivedStorage + 8))(0, v7);
        *(DerivedStorage + 24) = v4;
        goto LABEL_8;
      }

LABEL_9:
      v4 = 4294967294;
    }
  }

LABEL_10:
  FigSimpleMutexUnlock();
  return v4;
}

uint64_t faf_HDCPAlternateMinSortingFn(uint64_t a1, uint64_t a2)
{
  HDCPLevel = FigAlternateGetHDCPLevel(a1);
  v4 = FigAlternateGetHDCPLevel(a2);
  if (HDCPLevel >= v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = -1;
  }

  if (HDCPLevel > v4)
  {
    return 1;
  }

  else
  {
    return v5;
  }
}

void fmsaaf_finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

CFStringRef fmsaaf_copyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = 0;
  Mutable = 0;
  v4 = *MEMORY[0x1E695E480];
  while (1)
  {
    Count = *DerivedStorage;
    if (*DerivedStorage)
    {
      Count = CFArrayGetCount(Count);
    }

    if (v2 >= Count)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(*DerivedStorage, v2);
    CFDictionaryGetValue(ValueAtIndex, @"MediaSelectionGroupMediaType");
    Value = CFDictionaryGetValue(ValueAtIndex, @"MediaSelectionOptionsPersistentID");
    FigGetCFStringForOSTypeValue();
    if (FigCFEqual())
    {
      v8 = Value == 0;
    }

    else
    {
      v8 = 1;
    }

    if (!v8)
    {
      if (Mutable)
      {
        CFStringAppend(Mutable, @",");
      }

      else
      {
        Mutable = CFStringCreateMutable(v4, 0);
      }

      CFStringAppendFormat(Mutable, 0, @"%@", Value);
    }

    ++v2;
  }

  v9 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v9)
  {
    v10 = v9(a1);
  }

  else
  {
    v10 = &stru_1F0B1AFB8;
  }

  v11 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v11)
  {
    v12 = v11(a1);
  }

  else
  {
    v12 = 0xFFFFFFFFLL;
  }

  v13 = @"NULL";
  if (Mutable)
  {
    v13 = Mutable;
  }

  v14 = CFStringCreateWithFormat(v4, 0, @"[FigMediaSelectionAudibleAlternateFilter <%@: %p> priority: %d persistentIDs: %@]", v10, a1, v12, v13);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v14;
}

uint64_t faf_mediaSelectionAudibleAlternateFilterApply(const void *a1, const __CFArray *a2, CFTypeRef *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v7 = DerivedStorage;
    v8 = CFGetAllocator(a1);
    MutableCopy = CFArrayCreateMutableCopy(v8, 0, a2);
    if (MutableCopy)
    {
      v10 = MutableCopy;
      v22 = a1;
      v23 = a3;
      for (i = 0; ; ++i)
      {
        Count = *v7;
        if (*v7)
        {
          Count = CFArrayGetCount(Count);
        }

        if (i >= Count)
        {
          break;
        }

        ValueAtIndex = CFArrayGetValueAtIndex(*v7, i);
        CFDictionaryGetValue(ValueAtIndex, @"MediaSelectionGroupMediaType");
        Value = CFDictionaryGetValue(ValueAtIndex, @"MediaSelectionOptionsPersistentID");
        FigGetCFStringForOSTypeValue();
        if (FigCFEqual())
        {
          v15 = Value == 0;
        }

        else
        {
          v15 = 1;
        }

        if (!v15)
        {
          v16 = CFArrayGetCount(a2);
          if (v16 >= 1)
          {
            v17 = v16 + 1;
            do
            {
              v18 = CFArrayGetValueAtIndex(a2, v17 - 2);
              AudioGroupLocatorMap = FigAlternateGetAudioGroupLocatorMap(v18);
              if (!FigAlternateIsIFrameOnly(v18) && AudioGroupLocatorMap && !CFDictionaryContainsKey(AudioGroupLocatorMap, Value))
              {
                CFArrayRemoveValueAtIndex(v10, v17 - 2);
              }

              --v17;
            }

            while (v17 > 1);
          }
        }
      }

      a1 = v22;
      a3 = v23;
      goto LABEL_20;
    }

    faf_mediaSelectionAudibleAlternateFilterApply_cold_1(&v24);
    result = v24;
  }

  else
  {
    faf_mediaSelectionAudibleAlternateFilterApply_cold_2(&v25);
    result = v25;
  }

  if (result)
  {
    return result;
  }

  v10 = 0;
LABEL_20:
  if (*a3)
  {
    CFRelease(*a3);
  }

  v20 = CFGetAllocator(a1);
  *a3 = CFArrayCreateCopy(v20, v10);
  if (v10)
  {
    CFRelease(v10);
  }

  return 0;
}

uint64_t fsaf_filterFnNoContext(uint64_t a1, CFDataRef theData)
{
  v3 = *CFDataGetBytePtr(theData);

  return v3(a1);
}

uint64_t fsaf_ComparatorFnNoContext(uint64_t a1, uint64_t a2, CFDataRef theData)
{
  v5 = *(CFDataGetBytePtr(theData) + 1);

  return v5(a1, a2, 0);
}

const __CFArray *faf_isMediaSelectionOptionOfflinePlayable(uint64_t a1, uint64_t a2, int a3)
{
  v11 = 0;
  value = 0;
  FigAlternateGetRenditionInfoForMediaType(a2, a3, *(a1 + 16), *(a1 + 24), *(a1 + 32), 1, &value, 0, &v11);
  URLForCacheLookup = v11;
  if (!v11)
  {
    URLForCacheLookup = FigAlternateGetURLForCacheLookup(a2);
    v11 = URLForCacheLookup;
  }

  v6 = FigCFHTTPCreateURLString(URLForCacheLookup);
  v7 = v6;
  if (!value)
  {
    v8 = 0;
    if (!v6)
    {
      return v8;
    }

    goto LABEL_9;
  }

  v8 = *(a1 + 8);
  if (v8)
  {
    v13.length = CFArrayGetCount(*(a1 + 8));
    v13.location = 0;
    v8 = CFArrayContainsValue(v8, v13, value);
  }

  if (v7)
  {
LABEL_9:
    v9 = *a1;
    if (v9)
    {
      v14.length = CFArrayGetCount(v9);
      v14.location = 0;
      v8 = (CFArrayContainsValue(v9, v14, v7) | v8);
    }

    CFRelease(v7);
  }

  return v8;
}

uint64_t faf_videoRangePreferenceComparator(unsigned int a1, unsigned int a2)
{
  if (a1 >= a2)
  {
    v2 = 0;
  }

  else
  {
    v2 = -1;
  }

  if (a1 > a2)
  {
    return 1;
  }

  else
  {
    return v2;
  }
}

uint64_t faf_videoFormatPreferenceExactMatchComparator(unsigned int a1, unsigned int a2)
{
  if (a1 >= a2)
  {
    v2 = 0;
  }

  else
  {
    v2 = -1;
  }

  if (a1 > a2)
  {
    return 1;
  }

  else
  {
    return v2;
  }
}

uint64_t faf_videoFormatPreferenceFilterMinSortingFn(uint64_t a1, uint64_t a2, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  v6 = *BytePtr;
  v7 = BytePtr[1];
  VideoRange = FigAlternateGetVideoRange(a1);
  v9 = FigAlternateGetVideoRange(a2);
  BestVideoFormat = FigAlternateGetBestVideoFormat(a1);
  v11 = FigAlternateGetBestVideoFormat(a2);
  v12 = VideoRange;
  v13 = v9;
  v14 = faf_videoRangePreferenceComparator(v12, v9);
  if (v14)
  {
    v15 = v14;
    if (faf_videoRangePreferenceComparator(v6, v12) == -1)
    {
      v16 = -v15;
    }

    else if (faf_videoRangePreferenceComparator(v6, v13) == -1)
    {
      v16 = 1;
    }

    else
    {
      v16 = v15;
    }
  }

  else
  {
    v16 = 0;
    if (v7)
    {
      if (v7 == v11 || v7 == BestVideoFormat)
      {
        v18 = faf_videoFormatPreferenceExactMatchComparator;
        v19 = (faf_videoFormatPreferenceExactMatchComparator)(BestVideoFormat, v11, 0);
      }

      else
      {
        v18 = faf_videoFormatPreferenceMixableMatchComparator;
        v19 = (faf_videoFormatPreferenceMixableMatchComparator)(BestVideoFormat, v11, 0);
      }

      if (v19)
      {
        v20 = v19;
        if ((v18)(v7, BestVideoFormat, 0) == -1)
        {
          v16 = -v20;
        }

        else if ((v18)(v7, v11, 0) == -1)
        {
          v16 = 1;
        }

        else
        {
          v16 = v20;
        }
      }

      else
      {
        BestSupplementalVideoFormat = FigAlternateGetBestSupplementalVideoFormat(a1);
        v22 = FigAlternateGetBestSupplementalVideoFormat(a2);
        v23 = 1;
        if (BestSupplementalVideoFormat <= v22)
        {
          v23 = -1;
        }

        if (BestSupplementalVideoFormat == v22 || v6 != 3 || BestVideoFormat - 3 >= 3)
        {
          v16 = 0;
        }

        else
        {
          v16 = v23;
        }
      }
    }
  }

  return -v16;
}

uint64_t faf_videoFormatPreferenceMixableMatchComparator(unsigned int a1, unsigned int a2)
{
  if (a1 - 6 >= 0xFFFFFFFB)
  {
    v2 = 6;
  }

  else
  {
    v2 = a1;
  }

  if (v2 >= a2)
  {
    v3 = 0;
  }

  else
  {
    v3 = -1;
  }

  if (v2 > a2)
  {
    v3 = 1;
  }

  if (v2 == 6 && a2 - 6 >= 0xFFFFFFFB)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t faf_videoRangeMinSortingFn(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  VideoRange = FigAlternateGetVideoRange(a1);
  v6 = FigAlternateGetVideoRange(a2);
  v7 = *a3;
  v8 = faf_videoRangePreferenceComparator(VideoRange, v6);
  if (v8)
  {
    if (faf_videoRangePreferenceComparator(v7, VideoRange) == -1)
    {
      v8 = -v8;
    }

    else if (faf_videoRangePreferenceComparator(v7, v6) == -1)
    {
      v8 = 1;
    }
  }

  return -v8;
}

uint64_t faf_populateAudioFormatAlternateComparatorRec(const void *a1, int a2, uint64_t a3)
{
  faf_getAlternateAudioFormatInfo(a1, a2, a3, (a3 + 4), (a3 + 8), (a3 + 16));
  *(a3 + 12) = FigAlternateHasLosslessAudio(a1) == 0;
  result = FigAlternateGetAlternateIndex(a1);
  *(a3 + 24) = result;
  return result;
}

uint64_t faf_audioFormatPreferenceComparator(uint64_t a1, uint64_t a2, int *a3)
{
  v3 = *a1;
  if (*a1 <= 1u)
  {
    v4 = 1;
  }

  else
  {
    v4 = *a1;
  }

  v5 = *a2;
  if (*a2 <= 1u)
  {
    v6 = 1;
  }

  else
  {
    v6 = *a2;
  }

  v7 = a3[3];
  switch(v4)
  {
    case 7:
      v8 = BYTE2(v7);
      break;
    case 6:
      v8 = BYTE1(v7);
      break;
    case 5:
      v8 = a3[3];
      break;
    default:
      v8 = 0;
      break;
  }

  if (v6 == 5)
  {
    v9 = a3[3];
  }

  else
  {
    v9 = 0;
  }

  if (v6 == 6)
  {
    v9 = BYTE1(v7);
  }

  if (v6 == 7)
  {
    v9 = BYTE2(v7);
  }

  if (v4 != v6)
  {
    v10 = *a3;
    if (*a3 <= 8)
    {
      if (v10 == v4)
      {
        return 1;
      }

      if (v10 == v6)
      {
        return -1;
      }
    }
  }

  if (v8 | v9)
  {
    if (!v8 || v9)
    {
      if (v8 || !v9)
      {
        if (v8 && v9)
        {
          if (a3[3])
          {
            v11 = 6;
          }

          else
          {
            v11 = 0;
          }

          if (BYTE1(v7))
          {
            v12 = 8;
          }

          else
          {
            v12 = v11;
          }

          if (BYTE2(v7))
          {
            v13 = 16;
          }

          else
          {
            v13 = v12;
          }

          v14 = *(a1 + 4);
          v15 = *(a2 + 4);
          if (v14 > v15)
          {
            v16 = v15 < v13;
LABEL_55:
            v19 = 1;
            goto LABEL_71;
          }

          if (v14 < v15)
          {
            v16 = v14 < v13;
            goto LABEL_70;
          }

          if (v4 == v6)
          {
            return 0;
          }

          if (v3 == 7)
          {
            return 1;
          }

          if (v5 == 7)
          {
            return -1;
          }

          if (v3 == 6)
          {
            return 1;
          }

          if (v5 == 6)
          {
            return -1;
          }

          goto LABEL_97;
        }
      }

      else if (HIBYTE(v7) || *(a2 + 4) > a3[1])
      {
        return -1;
      }
    }

    else if (HIBYTE(v7) || *(a1 + 4) > a3[1])
    {
      return 1;
    }
  }

  v17 = *(a1 + 8);
  v18 = *(a2 + 8);
  if (v17 < v18)
  {
    return 1;
  }

  if (v17 > v18)
  {
    return -1;
  }

  v20 = *(a1 + 4);
  v21 = *(a2 + 4);
  if (v20 > v21)
  {
    v16 = v21 < a3[1];
    goto LABEL_55;
  }

  if (v20 < v21)
  {
    v16 = v20 < a3[1];
LABEL_70:
    v19 = -1;
LABEL_71:
    if (!v16)
    {
      return -v19;
    }

    return v19;
  }

  if (*(a3 + 16) && *(a1 + 12) != *(a2 + 12))
  {
    v19 = -1;
    if (*(a1 + 12))
    {
      return 1;
    }
  }

  else
  {
    v22 = *(a3 + 5);
    if (v22 < 1 || (v23 = *(a1 + 16), v24 = *(a2 + 16), v23 == v24))
    {
LABEL_86:
      if (v4 == v6)
      {
        return 0;
      }

      goto LABEL_97;
    }

    v25 = &a3[4 * v22];
    v26 = *(v25 + 5);
    if (v22 != 1)
    {
      v27 = (v25 + 10);
      while (v20 > *(v27 - 2))
      {
        v27 -= 2;
        v16 = v22-- <= 1;
        if (v16)
        {
          goto LABEL_84;
        }
      }

      v26 = *v27;
    }

LABEL_84:
    if (v23 <= v26 != v24 > v26)
    {
      if (v23 <= v26)
      {
        goto LABEL_86;
      }

      if (v23 < v24)
      {
        return 1;
      }

      if (v23 <= v24)
      {
        v19 = 0;
      }

      else
      {
        v19 = -1;
      }

      if (v4 != v6 && v23 <= v24)
      {
LABEL_97:
        v29 = *(a1 + 24);
        v30 = *(a2 + 24);
        v16 = v29 <= v30;
        v19 = v29 < v30;
        if (!v16)
        {
          return -1;
        }
      }
    }

    else
    {
      v19 = -1;
      if (v23 <= v26)
      {
        return 1;
      }
    }
  }

  return v19;
}

uint64_t faf_audioFormatPreferenceFilterMinSortingFn(const void *a1, const void *a2, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  memset(v8, 0, sizeof(v8));
  memset(v7, 0, sizeof(v7));
  faf_populateAudioFormatAlternateComparatorRec(a1, BytePtr[2], v8);
  faf_populateAudioFormatAlternateComparatorRec(a2, BytePtr[2], v7);
  return -faf_audioFormatPreferenceComparator(v8, v7, BytePtr);
}

void faf_getAlternateAudioFormatInfo(const void *a1, int a2, int *a3, _DWORD *a4, _DWORD *a5, double *a6)
{
  valuePtr = a2;
  if (a2 < 0)
  {
    v11 = 0;
  }

  else
  {
    v11 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  }

  BestAudioFormat = FigAlternateGetBestAudioFormat(a1);
  v13 = (BestAudioFormat - 1) < 4 || BestAudioFormat;
  *a3 = v13;
  *a4 = FigAlternateGetAudioChannelCounts(a1, v11, a5, 0);
  if (a6)
  {
    *a6 = FigAlternateGetAudioSampleRate(a1, v11);
  }

  if (v11)
  {
    CFRelease(v11);
  }
}

uint64_t faf_GetSpecializedChannelUsage(const void *a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  if ((*BytePtr & 0x80000000) != 0)
  {

    return FigAlternateGetSpecializedAudioChannelUsage(a1, 0);
  }

  else
  {
    v4 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, BytePtr);
    SpecializedAudioChannelUsage = FigAlternateGetSpecializedAudioChannelUsage(a1, v4);
    if (v4)
    {
      CFRelease(v4);
    }

    return SpecializedAudioChannelUsage;
  }
}

uint64_t faf_ImmersiveAudioComparator(const void *a1, const void *a2, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  SpecializedChannelUsage = faf_GetSpecializedChannelUsage(a1, theData);
  v8 = faf_GetSpecializedChannelUsage(a2, theData);
  if (SpecializedChannelUsage >= v8)
  {
    if (SpecializedChannelUsage <= v8)
    {
      return 0;
    }

    v9 = SpecializedChannelUsage <= *(BytePtr + 6);
    v10 = -1;
  }

  else
  {
    v9 = v8 <= *(BytePtr + 6);
    v10 = 1;
  }

  if (v9)
  {
    return -v10;
  }

  else
  {
    return v10;
  }
}

void faf_defaultAudioPreferenceFinalize()
{
  v0 = *CMBaseObjectGetDerivedStorage();
  if (v0)
  {

    CFRelease(v0);
  }
}

CFStringRef faf_defaultAudioPreferenceCopyDebugDescription(uint64_t a1)
{
  v2 = *MEMORY[0x1E695E480];
  v3 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v3)
  {
    v4 = v3(a1);
  }

  else
  {
    v4 = &stru_1F0B1AFB8;
  }

  v5 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v5)
  {
    v6 = v5(a1);
  }

  else
  {
    v6 = 0xFFFFFFFFLL;
  }

  return CFStringCreateWithFormat(v2, 0, @"[FigAlternateFilter <%@: %p> priority: %d]", v4, a1, v6);
}

uint64_t faf_willRequire4K60Decode(uint64_t a1)
{
  if (FigAlternateIsIFrameOnly(a1) || FigAlternateIsAudioOnly(a1))
  {
    return 0;
  }

  result = FigAlternateIs4k(a1);
  if (result)
  {
    FrameRate = FigAlternateGetFrameRate(a1);
    result = FigFrameRateToFrameRateBucket(FrameRate);
    if (result)
    {
      if (FigAlternateHasVideoFormat(a1, 4))
      {
        v4 = 1;
      }

      else
      {
        v4 = FigAlternateHasVideoFormat(a1, 7) != 0;
      }

      if (FigAlternateHasVideoFormat(a1, 5))
      {
        v5 = 1;
      }

      else
      {
        v5 = FigAlternateHasVideoFormat(a1, 8) != 0;
      }

      return v5 | v4;
    }
  }

  return result;
}

BOOL faf_peakBitRateCapFilterFn(uint64_t a1, const __CFNumber *a2)
{
  valuePtr = 0;
  PeakBitRate = FigAlternateGetPeakBitRate(a1);
  CFNumberGetValue(a2, kCFNumberSInt32Type, &valuePtr);
  return PeakBitRate <= valuePtr;
}

uint64_t faf_peakBitRateCapComparatorFn(uint64_t a1, uint64_t a2)
{
  PeakBitRate = FigAlternateGetPeakBitRate(a1);
  v4 = FigAlternateGetPeakBitRate(a2);
  if (PeakBitRate >= v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = -1;
  }

  if (PeakBitRate > v4)
  {
    return 1;
  }

  else
  {
    return v5;
  }
}

CFStringRef faf_copyPeakBitRateCapDescAddendum(int a1, CFNumberRef number)
{
  valuePtr = 0;
  CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr);
  return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%d bps", valuePtr);
}

uint64_t faf_isAlternateInDenyList(const void *a1, const __CFArray *a2, uint64_t *a3)
{
  result = FigCFArrayContainsValue();
  if (a3)
  {
    if (result)
    {
      v7.length = CFArrayGetCount(a2);
      v7.location = 0;
      result = CFArrayGetLastIndexOfValue(a2, v7, a1);
      *a3 = result;
    }
  }

  return result;
}

uint64_t faf_sameBitrateComparatorFn(uint64_t a1, uint64_t a2)
{
  RankingScore = FigAlternateGetRankingScore(a1);
  v5 = FigAlternateGetRankingScore(a2);
  v6 = RankingScore == -1.0 || v5 == -1.0;
  if (v6 || (RankingScore > v5 ? (result = -1) : (result = RankingScore < v5), !result))
  {
    AlternateIndex = FigAlternateGetAlternateIndex(a1);
    v9 = FigAlternateGetAlternateIndex(a2);
    if (AlternateIndex >= v9)
    {
      v10 = 0;
    }

    else
    {
      v10 = -1;
    }

    if (AlternateIndex > v9)
    {
      return 1;
    }

    else
    {
      return v10;
    }
  }

  return result;
}

void faf_passthroughFilterFinalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexDestroy();
  v1 = DerivedStorage[2];
  if (v1)
  {
    CFRelease(v1);
  }

  v2 = DerivedStorage[4];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = DerivedStorage[3];
  if (v3)
  {

    dispatch_release(v3);
  }
}

CFStringRef faf_passthroughFilterCopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v3 = *(DerivedStorage + 32);
  if (v3)
  {
    Count = CFArrayGetCount(v3);
  }

  else
  {
    Count = 0;
  }

  FigSimpleMutexUnlock();
  v5 = *MEMORY[0x1E695E480];
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v6)
  {
    v7 = v6(a1);
  }

  else
  {
    v7 = &stru_1F0B1AFB8;
  }

  v8 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v8)
  {
    v9 = v8(a1);
  }

  else
  {
    v9 = 0xFFFFFFFFLL;
  }

  return CFStringCreateWithFormat(v5, 0, @"[PassthroughFilter <%@: %p> priority: %d Total Alternate %ld]", v7, a1, v9, Count);
}

uint64_t faf_passthroughFilterCopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, CFArrayRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    faf_passthroughFilterCopyProperty_cold_3(&v14);
    return v14;
  }

  if (!a4)
  {
    faf_passthroughFilterCopyProperty_cold_2(&v13);
    return v13;
  }

  v7 = DerivedStorage;
  FigSimpleMutexLock();
  if (!FigCFEqual())
  {
    v10 = 4294954512;
    goto LABEL_10;
  }

  v8 = *(v7 + 32);
  if (!v8)
  {
    Copy = 0;
    goto LABEL_9;
  }

  Copy = CFArrayCreateCopy(*MEMORY[0x1E695E480], v8);
  if (Copy)
  {
LABEL_9:
    v10 = 0;
    *a4 = Copy;
    goto LABEL_10;
  }

  faf_passthroughFilterCopyProperty_cold_1(&v12);
  v10 = v12;
LABEL_10:
  FigSimpleMutexUnlock();
  return v10;
}

uint64_t faf_passthroughFilterApply(uint64_t a1, const __CFArray *a2, CFArrayRef *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v6 = MEMORY[0x1E695E480];
  if (a2)
  {
    Copy = CFArrayCreateCopy(*MEMORY[0x1E695E480], a2);
    if (!Copy)
    {
      faf_passthroughFilterApply_cold_1(&v12);
      v8 = v12;
      goto LABEL_12;
    }
  }

  else
  {
    Copy = 0;
  }

  v9 = FigCFEqual();
  v10 = *(DerivedStorage + 32);
  *(DerivedStorage + 32) = Copy;
  if (Copy)
  {
    CFRetain(Copy);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (!v9)
  {
    CMBaseObjectGetDerivedStorage();
    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
  }

  v8 = 0;
LABEL_12:
  FigSimpleMutexUnlock();
  if (a3)
  {
    *a3 = CFArrayCreateCopy(*v6, a2);
  }

  if (Copy)
  {
    CFRelease(Copy);
  }

  return v8;
}

__n128 fivp_filterInitFn(const __CFData *a1)
{
  BytePtr = CFDataGetBytePtr(a1);
  result.n128_u64[0] = 0xFFFFFFFFLL;
  result.n128_u64[1] = 0xFFFFFFFFLL;
  *(BytePtr + 8) = result;
  return result;
}

CFStringRef fivp_copyDescAddendum(int a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  v3 = *(BytePtr + 1);
  if (v3 == 0xFFFFFFFFLL)
  {
    goto LABEL_7;
  }

  v4 = BytePtr;
  Count = *BytePtr;
  if (Count)
  {
    Count = CFArrayGetCount(Count);
  }

  if (v3 >= Count)
  {
LABEL_7:
    VideoLayoutLoggingStringFromCollection = @"Passthru";
    v8 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"lowestplayable:%@", @"Passthru");
  }

  else
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*v4, *(v4 + 1));
    VideoLayoutLoggingStringFromCollection = FigAlternateCreateVideoLayoutLoggingStringFromCollection(ValueAtIndex);
    v8 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"lowestplayable:%@", VideoLayoutLoggingStringFromCollection);
    if (!VideoLayoutLoggingStringFromCollection)
    {
      return v8;
    }
  }

  CFRelease(VideoLayoutLoggingStringFromCollection);
  return v8;
}

void fivp_deallocateContext(const void **ptr, CFAllocatorRef allocator)
{
  v4 = *ptr;
  if (v4)
  {
    CFRelease(v4);
  }

  CFAllocatorDeallocate(allocator, ptr);
}

uint64_t fiv_getAlternatePlayableAtPreferenceForChannelCapability(__CFArray *a1, const __CFArray *a2, CFIndex a3)
{
  VideoLayoutTags = FigAlternateGetVideoLayoutTags(a1);
  if (VideoLayoutTags)
  {
    v6 = VideoLayoutTags;
    if (CFArrayGetCount(VideoLayoutTags))
    {
      Count = CFArrayGetCount(v6);
      if (Count <= a3)
      {
        v8 = Count - 1;
      }

      else
      {
        v8 = a3;
      }

      CFArrayGetValueAtIndex(v6, v8);
      v9 = 0;
      if (!a2)
      {
        goto LABEL_8;
      }

LABEL_7:
      for (i = CFArrayGetCount(a2); v9 < i; i = 0)
      {
        CFArrayGetValueAtIndex(a2, v9);
        if (FigCFEqual())
        {
          return v9;
        }

        ++v9;
        if (a2)
        {
          goto LABEL_7;
        }

LABEL_8:
        ;
      }
    }
  }

  return 0xFFFFFFFFLL;
}

BOOL faf_alternateHasOnlyStereoVideo(__CFArray *a1)
{
  VideoLayoutTags = FigAlternateGetVideoLayoutTags(a1);
  v2 = 0;
  v3 = VideoLayoutTags != 0;
  v4 = *MEMORY[0x1E69631A0];
  v5 = *(MEMORY[0x1E69631A0] + 8);
  while (1)
  {
    v6 = VideoLayoutTags ? CFArrayGetCount(VideoLayoutTags) : 0;
    if (v2 >= v6)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(VideoLayoutTags, v2);
    *&tagBuffer.category = 0;
    tagBuffer.value = 0;
    numberOfTagsCopied = 0;
    CMTagCollectionGetTagsWithCategory(ValueAtIndex, kCMTagCategory_StereoView, &tagBuffer, 1, &numberOfTagsCopied);
    *&v11.category = v4;
    v11.value = v5;
    ++v2;
    if (!CMTagEqualToTag(tagBuffer, v11))
    {
      return 0;
    }
  }

  return v3;
}

uint64_t OUTLINED_FUNCTION_3_39(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, unsigned int a12, uint64_t a13, uint64_t a14, const __CFDictionary *a15, int a16, char a17)
{

  return FigAlternatePreferredAudioFormatFilterCreate(v17, a12, 2u, a15, a17, v18, a16, (v19 - 128));
}

void OUTLINED_FUNCTION_5_37()
{
  *(v0 - 176) = 0;
  *(v0 - 168) = 0;
  *(v0 - 120) = 0;
  *(v0 - 112) = 0;
  *(v0 - 128) = 0;
}

const UInt8 *OUTLINED_FUNCTION_7_23(int a1, CFDataRef theData)
{

  return CFDataGetBytePtr(theData);
}

uint64_t OUTLINED_FUNCTION_11_18()
{

  return FigAlternateFilterTreeCreate(v0, (v1 - 112));
}

uint64_t OUTLINED_FUNCTION_12_18(const __CFAllocator *a1, const __CFNumber *a2, int a3, uint64_t a4, uint64_t a5, void *a6)
{

  return FigAlternateImmersiveAudioPreferenceFilterCreate(a1, a2, a3, -1, 1, a6);
}

uint64_t OUTLINED_FUNCTION_23_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13)
{

  return FigAlternateEligibleLosslessAudioFilterCreate(v13, a13, (v14 - 176));
}

uint64_t OUTLINED_FUNCTION_24_8(const __CFAllocator *a1, unsigned int a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{

  return FigAlternatePreferredAudioFormatFilterCreate(a1, a2, a3, v8, v9, v10, v11, a8);
}

const UInt8 *OUTLINED_FUNCTION_25_11(int a1, CFDataRef theData)
{

  return CFDataGetBytePtr(theData);
}

uint64_t FigDataQueueRemoteSetupRemoteXPCClientIfNecessary(const __CFAllocator *a1, int a2, uint64_t (*a3)(uint64_t, CFTypeRef *), uint64_t a4)
{
  v12[4] = a1;
  cf = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 0x40000000;
  v12[2] = __FigDataQueueRemoteSetupRemoteXPCClientIfNecessary_block_invoke;
  v12[3] = &__block_descriptor_tmp_32;
  if (FigDataQueueRemoteSetupRemoteXPCClientIfNecessary_sFigDataQueueRemoteXPCRemoteClientByPIDMutexRegisterOnce != -1)
  {
    dispatch_once(&FigDataQueueRemoteSetupRemoteXPCClientIfNecessary_sFigDataQueueRemoteXPCRemoteClientByPIDMutexRegisterOnce, v12);
  }

  if (!gFigDataQueueRemoteXPCRemoteClientByPIDTable)
  {
    FigDataQueueRemoteSetupRemoteXPCClientIfNecessary_cold_3(&value);
    return value;
  }

  FigSimpleMutexLock();
  value = CFDictionaryGetValue(gFigDataQueueRemoteXPCRemoteClientByPIDTable, a2);
  if (value)
  {
    v8 = 0;
LABEL_6:
    Mutable = 0;
    goto LABEL_13;
  }

  v10 = a3(a4, &cf);
  if (v10)
  {
    v8 = v10;
    goto LABEL_6;
  }

  Mutable = CFDictionaryCreateMutable(a1, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    FigCFDictionarySetInt32();
    if (!FigXPCRemoteClientCreateWithXPCEndpoint())
    {
      CFDictionarySetValue(gFigDataQueueRemoteXPCRemoteClientByPIDTable, a2, value);
      if (value)
      {
        CFRelease(value);
      }

      v8 = 0;
      goto LABEL_13;
    }

    FigDataQueueRemoteSetupRemoteXPCClientIfNecessary_cold_1(&v15);
  }

  else
  {
    FigDataQueueRemoteSetupRemoteXPCClientIfNecessary_cold_2(&v15);
  }

  v8 = v15;
LABEL_13:
  FigSimpleMutexUnlock();
  if (cf)
  {
    CFRelease(cf);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v8;
}

CFMutableDictionaryRef __FigDataQueueRemoteSetupRemoteXPCClientIfNecessary_block_invoke(uint64_t a1)
{
  gFigDataQueueRemoteXPCRemoteClientByPIDMutex = FigSimpleMutexCreate();
  result = CFDictionaryCreateMutable(*(a1 + 32), 0, 0, MEMORY[0x1E695E9E8]);
  gFigDataQueueRemoteXPCRemoteClientByPIDTable = result;
  return result;
}

uint64_t FigDataQueueRemoteCreateWithObjectID(int a1, uint64_t a2, uint64_t a3, uint64_t a4, CMTime *a5, CMTime *a6, CFTypeRef *a7)
{
  cf = 0;
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (!a7)
  {
    FigDataQueueRemoteCreateWithObjectID_cold_4(&time1);
    goto LABEL_15;
  }

  FigDataQueueGetClassID();
  v11 = CMDerivedObjectCreate();
  if (v11)
  {
LABEL_18:
    value_low = v11;
    goto LABEL_16;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v13 = FigReentrantMutexCreate();
  *(DerivedStorage + 24) = v13;
  if (!v13)
  {
    FigDataQueueRemoteCreateWithObjectID_cold_3(&time1);
    goto LABEL_15;
  }

  v14 = FigSimpleMutexCreate();
  *(DerivedStorage + 64) = v14;
  if (!v14)
  {
    FigDataQueueRemoteCreateWithObjectID_cold_2(&time1);
    goto LABEL_15;
  }

  if ((a6->flags & 0x1D) == 1 && (a5->flags & 0x1D) == 1)
  {
    time1 = *a6;
    time2 = *a5;
    if (CMTimeCompare(&time1, &time2) >= 1)
    {
      FigDataQueueRemoteCreateWithObjectID_cold_1(&time1);
      goto LABEL_15;
    }
  }

  v15 = *&a5->value;
  *(DerivedStorage + 88) = a5->epoch;
  *(DerivedStorage + 72) = v15;
  v16 = *&a6->value;
  *(DerivedStorage + 112) = a6->epoch;
  *(DerivedStorage + 96) = v16;
  v17 = FigDispatchQueueCreateWithPriority();
  *(DerivedStorage + 160) = v17;
  if (!v17)
  {
    value_low = 4294951505;
    goto LABEL_16;
  }

  FigSimpleMutexLock();
  Value = CFDictionaryGetValue(gFigDataQueueRemoteXPCRemoteClientByPIDTable, a1);
  if (!Value)
  {
    FigDataQueueRemoteCreateWithObjectID_cold_5(DerivedStorage, a1, &time1);
LABEL_15:
    value_low = LODWORD(time1.value);
    goto LABEL_16;
  }

  *DerivedStorage = CFRetain(Value);
  *(DerivedStorage + 8) = a1;
  FigSimpleMutexUnlock();
  v11 = FigXPCRemoteClientAssociateObject();
  if (v11)
  {
    goto LABEL_18;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  *(DerivedStorage + 16) = a2;
  value_low = FigXPCRemoteClientCopyMemoryOrigin();
  if (!value_low)
  {
    *a7 = cf;
    return value_low;
  }

LABEL_16:
  if (cf)
  {
    CFRelease(cf);
  }

  return value_low;
}

uint64_t dqr_HandleDeadServerConnection()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 176) = 1;
  FigSimpleMutexLock();
  v1 = *(DerivedStorage + 8);
  if (v1)
  {
    CFDictionaryRemoveValue(gFigDataQueueRemoteXPCRemoteClientByPIDTable, v1);
    *(DerivedStorage + 8) = 0;
  }

  return FigSimpleMutexUnlock();
}

uint64_t FigDataQueueRemoteGetObjectID(uint64_t a1, void *a2)
{
  if (a1)
  {
    if (a2)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      result = 0;
      *a2 = *(DerivedStorage + 16);
    }

    else
    {
      FigDataQueueRemoteGetObjectID_cold_1(&v5);
      return v5;
    }
  }

  else
  {
    FigDataQueueRemoteGetObjectID_cold_2(&v6);
    return v6;
  }

  return result;
}

__CFString *dqr_copyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  FigSimpleMutexLock();
  if (*(DerivedStorage + 176))
  {
    v4 = "SERVER DIED";
  }

  else
  {
    v4 = "";
  }

  CFStringAppendFormat(Mutable, 0, @"<DataQueueRemote %p>, remoteClient %p, ObjectID: %016llx %s", a1, *DerivedStorage, *(DerivedStorage + 16), v4);
  FigSimpleMutexUnlock();
  return Mutable;
}

uint64_t dqr_copyProperty(const void *a1, uint64_t a2, const __CFAllocator *a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v9 = DerivedStorage;
    FigSimpleMutexLock();
    if (!FigCFEqual())
    {
      v16 = FigXPCSendStdCopyPropertyMessage();
      FigSimpleMutexUnlock();
      return v16;
    }

    cf = 0;
    if (*(v9 + 168) && (v10 = FigCFWeakReferenceHolderCopyReferencedObject(), (cf = v10) != 0))
    {
      v11 = 0;
    }

    else
    {
      v11 = CFDictionaryCreate(a3, &kFigSampleBufferConsumerForDataQueueOption_ConsumeAsynchronously, MEMORY[0x1E695E4D0], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v12 = FigSampleBufferConsumerForDataQueueCreate(a1, a3, v11, &cf);
      if (v12)
      {
        v15 = v12;
LABEL_15:
        FigSimpleMutexUnlock();
        if (v11)
        {
          CFRelease(v11);
        }

        return v15;
      }

      v13 = *(v9 + 168);
      if (v13)
      {
        CFRelease(v13);
        *(v9 + 168) = 0;
      }

      v14 = FigCFWeakReferenceHolderCreateWithReferencedObject();
      *(v9 + 168) = v14;
      v10 = cf;
      if (!v14)
      {
        if (cf)
        {
          CFRelease(cf);
        }

        v15 = 4294951505;
        goto LABEL_15;
      }
    }

    v15 = 0;
    *a4 = v10;
    goto LABEL_15;
  }

  dqr_copyProperty_cold_1(&v19);
  return v19;
}

uint64_t dqr_setProperty(uint64_t a1, uint64_t a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    dqr_setProperty_cold_3(v19);
    return LODWORD(v19[0]);
  }

  v6 = DerivedStorage;
  if (FigCFEqual())
  {
    if (!a3 || (TypeID = CMTimebaseGetTypeID(), TypeID == CFGetTypeID(a3)))
    {
      FigSimpleMutexLock();
      if (*(v6 + 176))
      {
        dqr_setProperty_cold_1(v19);
        v15 = LODWORD(v19[0]);
LABEL_21:
        FigSimpleMutexUnlock();
        return v15;
      }

      cf = 0;
      v8 = CMBaseObjectGetDerivedStorage();
      FigSimpleMutexLock();
      v9 = 0;
      if (FigCFEqual())
      {
        goto LABEL_18;
      }

      v9 = malloc_type_calloc(1uLL, 0x10uLL, 0x10200405F07FB98uLL);
      if (v9)
      {
        v10 = FigCFWeakReferenceHolderCreateWithReferencedObject();
        *v9 = v10;
        if (v10)
        {
          *(v9 + 8) = 1;
LABEL_10:
          v11 = v8[20];
          if (!a3)
          {
            v19[0] = MEMORY[0x1E69E9820];
            v19[1] = 0x40000000;
            v19[2] = __dqr_RebuildTimebaseSync_block_invoke;
            v19[3] = &__block_descriptor_tmp_16_0;
            v19[4] = v9;
            dispatch_sync(v11, v19);
            v12 = v8[18];
            v8[18] = 0;
            if (!v12)
            {
              goto LABEL_14;
            }

            goto LABEL_13;
          }

          if (!FigSyncMomentSourceCreateWithDispatchQueueAndDestructor2(dqr_SyncServerTimebaseToMoment, v9, dqr_DestroyTimebaseSyncState, a3, v11, &cf))
          {
            v12 = v8[18];
            v8[18] = a3;
            CFRetain(a3);
            v9 = 0;
            if (!v12)
            {
LABEL_14:
              v13 = v8[19];
              v14 = cf;
              v8[19] = cf;
              if (v14)
              {
                CFRetain(v14);
              }

              if (v13)
              {
                CFRelease(v13);
              }

              goto LABEL_18;
            }

LABEL_13:
            CFRelease(v12);
            goto LABEL_14;
          }

LABEL_18:
          FigSimpleMutexUnlock();
          dqr_DestroyTimebaseSyncState(v9);
          if (cf)
          {
            CFRelease(cf);
          }

          v15 = 0;
          goto LABEL_21;
        }

        v17 = 348;
      }

      else
      {
        v17 = 345;
      }

      v18 = dqr_setProperty_cold_2(v17, v9);
      v9 = 0;
      if (!v18)
      {
        goto LABEL_18;
      }

      goto LABEL_10;
    }

    return FigSignalErrorAtGM();
  }

  else
  {

    return FigXPCSendStdSetPropertyMessage();
  }
}

void dqr_DestroyTimebaseSyncState(const void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      CFRelease(v2);
    }

    free(a1);
  }
}

uint64_t dqr_InstallLowWaterTrigger(uint64_t a1, uint64_t a2, const void *a3, NSObject *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    dqr_InstallLowWaterTrigger_cold_4(&v12);
    v10 = v12;
    goto LABEL_14;
  }

  FigSimpleMutexLock();
  if (*(DerivedStorage + 120))
  {
    dqr_InstallLowWaterTrigger_cold_1(&v12);
  }

  else if ((*(DerivedStorage + 108) & 0x1D) == 1)
  {
    if (!*(DerivedStorage + 176))
    {
      *(DerivedStorage + 120) = a2;
      if (a3)
      {
        v8 = CFRetain(a3);
      }

      else
      {
        v8 = 0;
      }

      *(DerivedStorage + 128) = v8;
      if (a4)
      {
        dispatch_retain(a4);
      }

      *(DerivedStorage + 136) = a4;
      v9 = FigXPCCreateBasicMessage();
      if (!v9)
      {
        v9 = FigXPCRemoteClientSendSyncMessage();
      }

      v10 = v9;
      goto LABEL_13;
    }

    dqr_InstallLowWaterTrigger_cold_3(&v12);
  }

  else
  {
    dqr_InstallLowWaterTrigger_cold_2(&v12);
  }

  v10 = v12;
LABEL_13:
  FigSimpleMutexUnlock();
LABEL_14:
  FigXPCRemoteClientKillServerOnTimeout();
  return v10;
}

uint64_t FigVideoTargetGetCorrespondingVideoReceiverPropertyForVideoTargetPropertyKey()
{
  if (_MergedGlobals_40 != -1)
  {
    FigVideoTargetGetCorrespondingVideoReceiverPropertyForVideoTargetPropertyKey_cold_1();
  }

  return FigCFDictionaryGetValueIfPresent();
}

CFDictionaryRef rvt_initVideoTargetToReceiverPropertyMapping(CFDictionaryRef *a1)
{
  v2 = 0;
  v11 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  *keys = 0u;
  v8 = 0u;
  memset(v6, 0, sizeof(v6));
  v3 = off_1E7483310;
  do
  {
    v4 = *v3;
    keys[v2] = **(v3 - 1);
    *(v6 + v2 * 8) = *v4;
    ++v2;
    v3 += 2;
  }

  while (v2 != 8);
  result = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, v6, 8, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  *a1 = result;
  return result;
}

uint64_t videoTarget_getInstanceTypeFromCreationOptions(uint64_t a1, void *a2)
{
  if (a2)
  {
    FigCFDictionaryGetBooleanIfPresent();
    FigCFDictionaryGetValueIfPresent();
    result = 0;
    *a2 = @"Remote";
  }

  else
  {
    videoTarget_getInstanceTypeFromCreationOptions_cold_1(&v4);
    return v4;
  }

  return result;
}

uint64_t FigVTTCaptionWriterCreateForDocument(uint64_t a1, const void *a2, void *a3)
{
  if (!a2)
  {
    FigVTTCaptionWriterCreateForDocument_cold_2(&v8);
    return v8;
  }

  if (!a3)
  {
    FigVTTCaptionWriterCreateForDocument_cold_1(&v8);
    return v8;
  }

  FigVTTCaptionWriterGetClassID();
  v5 = CMDerivedObjectCreate();
  if (!v5)
  {
    FigBytePumpGetFigBaseObject(0);
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *DerivedStorage = CFRetain(a2);
    *a3 = 0;
  }

  return v5;
}

void figVTTCaptionWriterForDocument_Finalize(uint64_t a1)
{
  FigBytePumpGetFigBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 16);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 16) = 0;
  }

  v3 = *(DerivedStorage + 8);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 8) = 0;
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

void fcwvtt_initCaptionStylePropertyToVTTAttributesMapping()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], 0);
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E69614E8], FigVTTDocumentWriterMapPropertyToAttribute_TextColor);
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E6961458], FigVTTDocumentWriterMapPropertyToAttribute_BackgroundColor);
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E69614A0], FigVTTDocumentWriterMapPropertyToAttribute_FontWeight);
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E6961480], FigVTTDocumentWriterMapPropertyToAttribute_FontStyle);
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E6961460], FigVTTDocumentWriterMapPropertyToAttribute_Decoration);
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E6961470], FigVTTDocumentWriterMapPropertyToAttribute_FontFamily);
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E6961478], FigVTTDocumentWriterMapPropertyToAttribute_FontSize);
  sCaptionStylePropertyToVTTAttributesMapping = Mutable;
}

uint64_t OUTLINED_FUNCTION_3_40(uint64_t a1, const void *a2)
{

  return FigVTTNodeSetAttribute(v3, a2, v2);
}

void OUTLINED_FUNCTION_6_33(uint64_t a1, uint64_t a2, const void *a3)
{

  CFArrayInsertValueAtIndex(v4, v3, a3);
}

uint64_t FigCFHTTPReadWithAdditionalHeaders(uint64_t a1, const __CFDictionary *a2, uint64_t a3, uint64_t a4, const void *a5, uint64_t a6, const void *a7, uint64_t a8, void *a9)
{
  if (a6)
  {
    FigByteFlumeGetFigBaseObject(a1);
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    FigRetainProxyLockMutex();
    if (FigRetainProxyIsInvalidated())
    {
      HTTPRequest = 4294954511;
      goto LABEL_10;
    }

    v17 = *(DerivedStorage + 72);
    if (v17 == 1)
    {
      if (*(DerivedStorage + 216) <= a3)
      {
        FigCFHTTPReadWithAdditionalHeaders_cold_1(&v40);
        HTTPRequest = v40;
        goto LABEL_10;
      }
    }

    else if (v17 == 2)
    {
LABEL_9:
      HTTPRequest = 4294954361;
LABEL_10:
      FigRetainProxyUnlockMutex();
      return HTTPRequest;
    }

    if (!*(DerivedStorage + 392))
    {
      Current = CFAbsoluteTimeGetCurrent();
      if (*(DerivedStorage + 72) == 1)
      {
        v21 = *(DerivedStorage + 216);
        if (a4 + a3 > v21)
        {
          a4 = v21 - a3;
        }
      }

      v22 = *(DerivedStorage + 224);
      v23 = *MEMORY[0x1E695E480];
      if (v22)
      {
        MutableCopy = CFDictionaryCreateMutableCopy(v23, 0, v22);
      }

      else
      {
        MutableCopy = CFDictionaryCreateMutable(v23, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      }

      v25 = MutableCopy;
      if (MutableCopy)
      {
        if (!*(DerivedStorage + 72))
        {
          fbf_ApplyCacheHeaders(DerivedStorage, MutableCopy);
        }

        if (a2)
        {
          CFDictionaryApplyFunction(a2, FigCFHTTPAddHeader, v25);
        }

        v26 = malloc_type_calloc(1uLL, 0x90uLL, 0x10E0040FE5446C7uLL);
        if (v26)
        {
          v27 = v26;
          v26[27] = 1;
          *v26 = a3;
          *(v26 + 1) = a4;
          if (a7)
          {
            v28 = CFRetain(a7);
          }

          else
          {
            v28 = 0;
          }

          *(v27 + 40) = v28;
          *(v27 + 48) = a8;
          *(v27 + 16) = a6;
          *(v27 + 56) = FigRetainProxyRetain();
          Allocator = CMMemoryPoolGetAllocator(*(DerivedStorage + 368));
          if (Allocator)
          {
            Allocator = CFRetain(Allocator);
          }

          *(v27 + 72) = Allocator;
          *(v27 + 88) = CFRetain(v25);
          if (a5)
          {
            v30 = CFRetain(a5);
          }

          else
          {
            v30 = 0;
          }

          *(v27 + 96) = v30;
          v31 = *(DerivedStorage + 80);
          *(DerivedStorage + 80) = v31 + 1;
          *(v27 + 64) = v31;
          if (!*(DerivedStorage + 56))
          {
            *(DerivedStorage + 448) = 1;
            fbf_SetInactivityMonitorTimer(DerivedStorage, *(DerivedStorage + 464));
          }

          *(v27 + 128) = 0;
          v32 = *(DerivedStorage + 64);
          *(v27 + 136) = v32;
          *v32 = v27;
          *(DerivedStorage + 64) = v27 + 128;
          *(v27 + 126) = 1;
          if (a9)
          {
            *a9 = *(v27 + 64);
          }

          if (*(DerivedStorage + 576) == 0.0)
          {
            *(DerivedStorage + 576) = Current;
          }

          if (*(DerivedStorage + 584) == 0.0)
          {
            *(DerivedStorage + 584) = CFAbsoluteTimeGetCurrent();
          }

          *(v27 + 36) = fbf_CreateHTTPRequestFlags(DerivedStorage);
          HTTPRequest = fbf_CreateHTTPRequest(DerivedStorage, v27, *v27, *(v27 + 8));
          *(DerivedStorage + 284) = 0;
          *(DerivedStorage + 320) = FigGetUpTimeNanoseconds();
          if (HTTPRequest)
          {
            if (!*(DerivedStorage + 72))
            {
              *(DerivedStorage + 72) = 2;
            }

            v33 = *(DerivedStorage + 44);
            if (*(DerivedStorage + 40))
            {
              v34 = v33 == 1;
            }

            else
            {
              v34 = 0;
            }

            v36 = v34 || v33 == 2;
            FigNetworkInterfaceReporterSamplePhysicalStatistics(*(DerivedStorage + 592), *(v27 + 24), *(DerivedStorage + 32), 0x1F0B645B8, v36);
            v37 = *(v27 + 24);
            if (v37)
            {
              v38 = *(*(CMBaseObjectGetVTable() + 8) + 24);
              if (v38)
              {
                v38(v37);
              }
            }

            ReadRequestRelease(v27);
          }

          else
          {
            ++*(DerivedStorage + 352);
            if (!*(DerivedStorage + 88))
            {
              v39 = *(v27 + 24);
              if (v39)
              {
                v39 = CFRetain(v39);
              }

              *(DerivedStorage + 88) = v39;
              *(DerivedStorage + 96) = *(v27 + 32);
            }

            HTTPRequest = 0;
            if (*(DerivedStorage + 378))
            {
              *(DerivedStorage + 378) = 0;
            }
          }
        }

        else
        {
          FigCFHTTPReadWithAdditionalHeaders_cold_2(&v41);
          HTTPRequest = v41;
        }

        CFRelease(v25);
      }

      else
      {
        FigCFHTTPReadWithAdditionalHeaders_cold_3(&v42);
        HTTPRequest = v42;
      }

      goto LABEL_10;
    }

    goto LABEL_9;
  }

  return 4294954365;
}

__CFString *FigCFHTTPCopyDebugDescription()
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFStringAppendFormat(Mutable, 0, @" FigHTTPSession <%p>\n", DerivedStorage);
  if (FigRetainProxyIsInvalidated())
  {
    CFStringAppend(Mutable, @" Invalidated\n");
  }

  else
  {
    Value = CFDictionaryGetValue(*(DerivedStorage + 264), @"MIME Type");
    CFStringAppend(Mutable, @" URL      : ");
    CFStringAppend(Mutable, *(DerivedStorage + 192));
    if (*(DerivedStorage + 176))
    {
      CFStringAppend(Mutable, @"\n redirect : ");
      v3 = CFURLGetString(*(DerivedStorage + 176));
      CFStringAppend(Mutable, v3);
    }

    CFStringAppend(Mutable, @"\n MIME     : ");
    CFStringAppend(Mutable, Value);
    CFStringAppendFormat(Mutable, 0, @"\n fileSize : %lld bytes\n", *(DerivedStorage + 216));
  }

  return Mutable;
}

void fbf_CancelReconnect(uint64_t a1)
{
  v2 = *(a1 + 488);
  if (v2)
  {
    nw_connection_cancel(v2);
    nw_release(*(a1 + 488));
    *(a1 + 488) = 0;
  }
}

void RemoveReadRequestFromQueue(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 128);
  v3 = *(a2 + 136);
  v4 = (a1 + 64);
  if (v2)
  {
    v4 = (v2 + 136);
  }

  *v4 = v3;
  *v3 = v2;
  *(a2 + 126) = 0;
  if (!*(a1 + 56))
  {
    *(a1 + 448) = 0;
    FigHTTPRescheduleTimer(8073216000.0, *(a1 + 48), *(a1 + 456));
    if (*(a1 + 392) == 1)
    {
      if (!dword_1EAF16F58)
      {
        return;
      }
    }

    else
    {
      if (*(a1 + 18) == 1)
      {
        if (dword_1EAF16F58)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        *(a1 + 512) = 0;
        return;
      }

      if (*(a1 + 17) != 1)
      {
        return;
      }

      if (*(a1 + 512))
      {
        if (dword_1EAF16F58)
        {
          v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        fbf_ResumeRetryAttempt(a1, 0);
        return;
      }

      if (!dword_1EAF16F58)
      {
        return;
      }
    }

    v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

void fbf_ResumeRetryAttempt(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 488))
  {
    return;
  }

  if (*(a1 + 392) == 1)
  {
    return;
  }

  if (*(a1 + 448) == 1)
  {
    return;
  }

  if (*(a1 + 18) == 1)
  {
    return;
  }

  if (!*(a1 + 17))
  {
    return;
  }

  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  v5 = *(a1 + 512);
  if (!v5)
  {
    return;
  }

  if (a2 >= 1 && UpTimeNanoseconds + a2 > v5)
  {
    v6 = a2;
LABEL_13:
    v9 = v6 / 1000000000.0;
    v10 = *(a1 + 48);
    v11 = *(a1 + 456);

    FigHTTPRescheduleTimer(v9, v10, v11);
    return;
  }

  v7 = v5 <= UpTimeNanoseconds;
  v8 = v5 - UpTimeNanoseconds;
  if (!v7)
  {
    v6 = v8;
    goto LABEL_13;
  }

  fbf_TryReconnect(a1);
}

void fbf_TryReconnect(uint64_t a1)
{
  v28 = 0;
  v2 = *(a1 + 176);
  if (v2 || (v2 = *(a1 + 168)) != 0)
  {
    v3 = CFURLCopyHostName(v2);
    if (v3)
    {
      if (CFURLGetPortNumber(v2) == -1)
      {
        v10 = CFURLCopyScheme(v2);
        if (!v10)
        {
          fbf_TryReconnect_cold_5(buffer);
          goto LABEL_48;
        }

        v11 = v10;
        if (CFStringCompare(v10, @"http", 1uLL))
        {
          v12 = CFStringCompare(v11, @"https", 1uLL);
          CFRelease(v11);
          if (v12)
          {
            v13 = -12931;
            goto LABEL_32;
          }
        }

        else
        {
          CFRelease(v11);
        }
      }

      if (FigCFStringGetCStringPtrAndBufferToFree())
      {
        host_with_numeric_port = nw_endpoint_create_host_with_numeric_port();
        if (host_with_numeric_port)
        {
          v5 = host_with_numeric_port;
          secure_tcp = nw_parameters_create_secure_tcp(*MEMORY[0x1E6977EC0], *MEMORY[0x1E6977EB8]);
          if (!secure_tcp)
          {
            fbf_TryReconnect_cold_2(buffer);
            v13 = *buffer;
            goto LABEL_31;
          }

          v7 = secure_tcp;
          UpTimeNanoseconds = FigGetUpTimeNanoseconds();
          v9 = UpTimeNanoseconds;
          if (!*(a1 + 496))
          {
            *(a1 + 504) = UpTimeNanoseconds;
            *(a1 + 440) = 0;
            *(a1 + 520) = UpTimeNanoseconds + 300000000000;
          }

          if (*(a1 + 552))
          {
            *buffer = 0;
            FigCFStringGetCStringPtrAndBufferToFree();
            nw_parameters_set_source_application_by_bundle_id();
            free(0);
          }

          else
          {
            v14 = *(a1 + 544);
            if (v14)
            {
              *buffer = 0u;
              v27 = 0u;
              if (CFDataGetLength(v14) != 32)
              {
                v13 = FigSignalErrorAtGM();
LABEL_30:
                nw_release(v7);
LABEL_31:
                nw_release(v5);
                goto LABEL_32;
              }

              v15 = *(a1 + 544);
              v29.length = CFDataGetLength(v15);
              v29.location = 0;
              CFDataGetBytes(v15, v29, buffer);
              v24 = *buffer;
              v25 = v27;
              nw_parameters_set_source_application();
            }
          }

          if (*(a1 + 152))
          {
            v16 = *(a1 + 160);
            if (!v16 || *(a1 + 216) > v16)
            {
              nw_parameters_prohibit_interface_type(v7, nw_interface_type_cellular);
            }
          }

          v17 = *(a1 + 520);
          v18 = v17 - 60000000000;
          v19 = v17 - v9;
          if (v18 >= v9)
          {
            v20 = v19;
          }

          else
          {
            v20 = 60000000000;
          }

          v21 = nw_connection_create(v5, v7);
          *(a1 + 488) = v21;
          if (v21)
          {
            v22 = *a1;
            if (*a1)
            {
              v22 = CFRetain(*a1);
              v21 = *(a1 + 488);
            }

            handler[0] = MEMORY[0x1E69E9820];
            handler[1] = 0x40000000;
            handler[2] = __fbf_TryReconnect_block_invoke;
            handler[3] = &unk_1E7483390;
            handler[4] = v22;
            nw_connection_set_state_changed_handler(v21, handler);
            FigHTTPRescheduleTimer(v20 / 1000000000.0, *(a1 + 48), *(a1 + 456));
            nw_connection_set_queue(*(a1 + 488), *(a1 + 48));
            nw_connection_start(*(a1 + 488));
            v13 = 0;
          }

          else
          {
            fbf_TryReconnect_cold_1(buffer);
            v13 = *buffer;
          }

          goto LABEL_30;
        }

        fbf_TryReconnect_cold_3(buffer);
      }

      else
      {
        fbf_TryReconnect_cold_4(buffer);
      }
    }

    else
    {
      fbf_TryReconnect_cold_6(buffer);
    }
  }

  else
  {
    fbf_TryReconnect_cold_7(buffer);
    v3 = 0;
  }

LABEL_48:
  v13 = *buffer;
LABEL_32:
  if (v28)
  {
    free(v28);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  if (v13)
  {
    *(a1 + 512) = FigGetUpTimeNanoseconds() + 30000000000;
    FigHTTPRescheduleTimer(30.0, *(a1 + 48), *(a1 + 456));
  }
}

void fbf_postConnectionToHostLostNotification(uint64_t a1)
{
  if (FigByteFlumePostConnectionToHostLostNotification(a1))
  {

    fbf_ReportingAgentReportErrorEvent(a1, @"CoreMediaErrorDomain", @"Connection to host lost", 2u, -12661);
  }
}

uint64_t FigCFHTTPCopyBandwidthInfo(uint64_t a1, double *a2, double *a3, double *a4)
{
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  if (!a1 || (v9 = UpTimeNanoseconds, !a2) && !a3 && !a4)
  {
    FigCFHTTPCopyBandwidthInfo_cold_1(&v13);
    return LODWORD(v13);
  }

  FigRetainProxyLockMutex();
  if (!FigRetainProxyIsInvalidated())
  {
    if (*(a1 + 56) && *(a1 + 284) && (v9 - *(a1 + 320)) >= 0xEE6B2801)
    {
      FigByteRateHistoryClear(*(a1 + 344));
      if (a2)
      {
        *a2 = 0.0;
      }

      if (a3)
      {
        *a3 = 0.0;
      }

      if (a4)
      {
        v10 = 0;
LABEL_24:
        *a4 = 0.0;
        goto LABEL_27;
      }
    }

    else
    {
      if (!FigByteRateHistoryHasCompleteSample(*(a1 + 344)) && *(a1 + 288) < *(a1 + 216) >> 2)
      {
        v12 = 0;
        v13 = 0.0;
        FigByteRateHistoryReportAverage(*(a1 + 344), &v13, &v12);
        if (v13 <= 0.0)
        {
          v10 = 4294954513;
          goto LABEL_27;
        }

        if (a2)
        {
          *a2 = v13;
        }

        if (a3)
        {
          *a3 = v12;
        }

        v10 = 0;
        if (!a4)
        {
          goto LABEL_27;
        }

        goto LABEL_24;
      }

      FigByteRateHistoryReportAverage(*(a1 + 344), a2, a3);
      FigByteRateHistoryReportMovingAverage(*(a1 + 344), a4);
    }

    v10 = 0;
    goto LABEL_27;
  }

  v10 = 4294954511;
LABEL_27:
  FigRetainProxyUnlockMutex();
  return v10;
}

__CFString *fbf_GetInterfaceType(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    v3 = *(v2 + 24);
    if (v3)
    {
      cf = 0;
      v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v4)
      {
        v5 = v4(v3, @"FHRP_CFNetworkTimingData", *MEMORY[0x1E695E480], &cf);
        v6 = cf;
        if (v5)
        {
          InterfaceTypeFromCFNStats = 0;
          if (!cf)
          {
            goto LABEL_7;
          }
        }

        else
        {
          InterfaceTypeFromCFNStats = FigNetworkInterfaceGetInterfaceTypeFromCFNStats(cf);
          v6 = cf;
          if (!cf)
          {
LABEL_7:
            if (InterfaceTypeFromCFNStats)
            {
              return FigErrorLogGetStringFromInterfaceType(InterfaceTypeFromCFNStats);
            }

            goto LABEL_8;
          }
        }

        CFRelease(v6);
        goto LABEL_7;
      }
    }
  }

LABEL_8:
  InterfaceTypeFromCFNStats = FigNetworkInterfaceReporterGetInterfaceType(*(a1 + 592));
  if (!InterfaceTypeFromCFNStats)
  {
    if (*(a1 + 408))
    {
      InterfaceTypeFromCFNStats = FigNetworkPathInformationGetInterfaceType();
    }

    else
    {
      InterfaceTypeFromCFNStats = 0;
    }
  }

  return FigErrorLogGetStringFromInterfaceType(InterfaceTypeFromCFNStats);
}

void fbf_releaseInteractivePlaybackAssertion(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigRetainProxyLockMutex();
  if (!FigRetainProxyIsInvalidated())
  {
    if (dword_1EAF16F58)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v4 = *(DerivedStorage + 380) - 1;
    *(DerivedStorage + 380) = v4;
    if (!v4 && (*(DerivedStorage + 17) || *(DerivedStorage + 392)))
    {
      if (dword_1EAF16F58)
      {
        v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      fbf_FailImmediately(DerivedStorage);
    }
  }

  FigRetainProxyUnlockMutex();
  if (a1)
  {
    CFRelease(a1);
  }
}

void fbf_FailImmediately(uint64_t a1)
{
  if (!*(a1 + 448))
  {
    FigHTTPRescheduleTimer(8073216000.0, *(a1 + 48), *(a1 + 456));
  }

  fbf_CancelReconnect(a1);
  *(a1 + 512) = 0;
  if (!*(a1 + 17))
  {
    if (dword_1EAF16F58)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    *(a1 + 17) = 1;
    FigByteFlumePostHostUnavailableNotification(a1);
  }

  if (!*(a1 + 18))
  {
    if (dword_1EAF16F58)
    {
      v3 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    fbf_postConnectionToHostLostNotification(a1);
  }
}

uint64_t FigCFHTTPOpen(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    FigCFHTTPOpen_cold_2(v26);
    return LODWORD(v26[0]);
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigRetainProxyLockMutex();
  if (FigRetainProxyIsInvalidated())
  {
    v23 = 4294954511;
  }

  else
  {
    if (!*(DerivedStorage + 72))
    {
      *(DerivedStorage + 104) = a2;
      *(DerivedStorage + 120) = a3;
      v6 = *(DerivedStorage + 112);
      v7 = CMBaseObjectGetDerivedStorage();
      Current = CFAbsoluteTimeGetCurrent();
      v9 = *(v7 + 224);
      v10 = *MEMORY[0x1E695E480];
      if (v9)
      {
        MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, v9);
      }

      else
      {
        MutableCopy = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      }

      v12 = MutableCopy;
      if (!MutableCopy)
      {
        *(v7 + 72) = 2;
        *(v7 + 384) = 0;
        *(v7 + 104) = 0;
        *(v7 + 120) = 0;
        v23 = 4294954363;
LABEL_33:
        v24 = *(DerivedStorage + 112);
        if (v24)
        {
          CFRelease(v24);
          *(DerivedStorage + 112) = 0;
        }

        goto LABEL_35;
      }

      fbf_ApplyCacheHeaders(v7, MutableCopy);
      if (v6)
      {
        CFDictionaryApplyFunction(v6, FigCFHTTPAddHeader, v12);
      }

      if (*(v7 + 532))
      {
        v13 = 17;
      }

      else
      {
        v13 = 1;
      }

      if (!*(v7 + 248))
      {
        v13 |= 0x40u;
      }

      if (*(v7 + 632))
      {
        v13 |= 0x8000u;
      }

      if (*(v7 + 633))
      {
        v14 = v13 | 0x10000;
      }

      else
      {
        v14 = v13;
      }

      if (*(v7 + 576) == 0.0)
      {
        *(v7 + 576) = Current;
      }

      if (*(v7 + 584) == 0.0)
      {
        *(v7 + 584) = CFAbsoluteTimeGetCurrent();
      }

      OptionsAndSetNWActivity = fbf_CopyHttpRequestCreateOptionsAndSetNWActivity(v7, 2);
      *(v7 + 384) = 1;
      v16 = *(v7 + 240);
      v17 = *(v7 + 168);
      v18 = *(v7 + 200);
      v19 = *v7;
      v20 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v20)
      {
        memset(v26, 0, 112);
        v21 = v20(v16, v10, 0, v17, v18, v12, OptionsAndSetNWActivity, v14, v26, 0, 2, 0, FigCFHTTPOpenResponse, v19, v7 + 88, v7 + 96);
        if (!v21)
        {
          FigNetworkUrgencyMonitorAddHTTPRequest(*(v7 + 624));
          if (dword_1EAF16F58)
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          v23 = 0;
          goto LABEL_31;
        }

        v23 = v21;
      }

      else
      {
        v23 = 4294954514;
      }

      *(v7 + 72) = 2;
      *(v7 + 384) = 0;
      *(v7 + 104) = 0;
      *(v7 + 120) = 0;
LABEL_31:
      CFRelease(v12);
      if (OptionsAndSetNWActivity)
      {
        CFRelease(OptionsAndSetNWActivity);
      }

      goto LABEL_33;
    }

    FigCFHTTPOpen_cold_1(v26);
    v23 = LODWORD(v26[0]);
  }

LABEL_35:
  FigRetainProxyUnlockMutex();
  return v23;
}