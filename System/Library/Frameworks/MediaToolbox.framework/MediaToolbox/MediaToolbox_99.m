uint64_t figTTMLDocumentWriterForiTT_SetAttribute(uint64_t a1, const __CFString *a2, __CFString *a3)
{
  FigTTMLDocumentWriterGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  MEMORY[0x19A8D3660](&getAttributeValidatorDict_sOnce, initAttributeValidatorDict);
  v7 = sAttributeValidatorDict;
  if (FigTTMLDocumentWriterStateGetCurrentElementType(DerivedStorage[1]) == 10)
  {
    Attributes = FigTTMLDocumentWriterStateGetAttributes(DerivedStorage[1]);
    CFDictionaryGetValue(Attributes, @"http://www.w3.org/XML/1998/namespace id");
    if (FigCFEqual())
    {
      if (FigCFEqual() && FigCFEqual())
      {
        a3 = @"15% 0%";
      }
    }
  }

  if (!CFDictionaryContainsKey(v7, a2))
  {
    result = CFStringHasPrefix(a2, @"xmlns:");
    if (!result)
    {
      return result;
    }

    goto LABEL_11;
  }

  Value = CFDictionaryGetValue(v7, a2);
  if (!Value || (result = Value(a1, a3), result))
  {
LABEL_11:
    result = FigTTMLDocumentWriterSetAttribute(*DerivedStorage, a2, a3);
    if (!result)
    {
      FigTTMLDocumentWriterStateSetAttribute(DerivedStorage[1], a2, a3);
      return 0;
    }
  }

  return result;
}

uint64_t writeAttributeIfNotWrittenYet(uint64_t key, uint64_t a2, uint64_t a3)
{
  if (!*a3)
  {
    v5 = key;
    v6 = *(a3 + 8);
    if (!v6 || (key = CFDictionaryContainsKey(v6, v5), !key))
    {
      key = FigTTMLDocumentWriterSetAttribute(*(a3 + 16), v5, a2);
      if (key)
      {
        *a3 = key;
      }
    }
  }

  return key;
}

uint64_t FigTTMLDocumentWriterCreateForiTT_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigTTMLDocumentWriterCreateForiTT_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigSampleBufferConsumerOPTSAutoOrderCreate(const __CFAllocator *a1, const void *a2, const char *a3, void *a4)
{
  FigNote_AllowInternalDefaultLogs();
  OUTLINED_FUNCTION_6_2();
  fig_note_initialize_category_with_default_work_cf();
  OUTLINED_FUNCTION_6_2();
  fig_note_initialize_category_with_default_work_cf();
  v8 = 4294954535;
  if (a2)
  {
    if (a4)
    {
      FigSampleBufferConsumerGetClassID();
      v8 = CMDerivedObjectCreate();
      if (!v8)
      {
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        v10 = CFRetain(a2);
        v11 = MEMORY[0x1E695E480];
        *DerivedStorage = v10;
        if (a3)
        {
          v12 = a3;
        }

        else
        {
          v12 = "-";
        }

        *(DerivedStorage + 48) = CFStringCreateWithCString(*v11, v12, 0x8000100u);
        v13 = FigSimpleMutexCreate();
        *(DerivedStorage + 16) = v13;
        if (v13)
        {
          v14 = MEMORY[0x1E6960C70];
          *(DerivedStorage + 24) = *MEMORY[0x1E6960C70];
          *(DerivedStorage + 40) = *(v14 + 16);
          CallbacksForSampleBuffersSortedByOutputPTS = CMBufferQueueGetCallbacksForSampleBuffersSortedByOutputPTS();
          v8 = CMBufferQueueCreate(a1, 0, CallbacksForSampleBuffersSortedByOutputPTS, (DerivedStorage + 8));
          if (!v8)
          {
            *a4 = 0;
          }
        }

        else
        {
          return 4294954510;
        }
      }
    }
  }

  return v8;
}

uint64_t sbcAutoOrder_SendSampleBuffer(uint64_t a1, void *a2)
{
  v52 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (!a2)
  {
    goto LABEL_40;
  }

  FigEndpointStreamAudioEngineSbufTracerDebugPrint(a2);
  CMSampleBufferGetOutputPresentationTimeStamp(time1, a2);
  cf[12] = *time1;
  v5 = time1[12];
  v51 = *&time1[8];
  CMSampleBufferGetOutputDuration(time1, a2);
  OUTLINED_FUNCTION_0_3();
  time2 = **&MEMORY[0x1E6960C88];
  if (!CMTimeCompare(time1, &time2))
  {
    if (dword_1EAF16A50)
    {
      v34 = OUTLINED_FUNCTION_4_2();
      if (os_log_type_enabled(v34, type))
      {
        value = lhs.value;
      }

      else
      {
        value = lhs.value & 0xFFFFFFFE;
      }

      if (value)
      {
        LODWORD(time2.value) = 136315394;
        *(&time2.value + 4) = "sbcAutoOrder_SendSampleBuffer";
        LOWORD(time2.flags) = 2048;
        *(&time2.flags + 2) = a2;
        OUTLINED_FUNCTION_7_1();
      }

      OUTLINED_FUNCTION_1_2();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    sbcAutoOrder_SendAllPendingSampleBuffer();
    goto LABEL_40;
  }

  if (CMGetAttachment(a2, @"SBUFForAutoOrder", 0) == *MEMORY[0x1E695E4D0])
  {
    if ((v5 & 1) == 0 || (*(DerivedStorage + 36) & 1) != 0 && (OUTLINED_FUNCTION_0_3(), OUTLINED_FUNCTION_5_2(v24, v25, v26, v27, v28, v29, v30, v31, v38, v39, type, type_8, v43, v44, lhs.value, *&lhs.timescale, lhs.epoch, v46, *&time2.value, time2.epoch, v48, *time1) <= 0))
    {
      updated = sbcAutoOrder_SendSbufAndUpdateLastOPTS(a1, a2);
LABEL_20:
      v23 = updated;
      goto LABEL_41;
    }

    if (dword_1EAF16A50)
    {
      v32 = OUTLINED_FUNCTION_4_2();
      if (os_log_type_enabled(v32, type))
      {
        v33 = lhs.value;
      }

      else
      {
        v33 = lhs.value & 0xFFFFFFFE;
      }

      if (v33)
      {
        OUTLINED_FUNCTION_0_3();
        CMTimeGetSeconds(time1);
        LODWORD(time2.value) = 136315650;
        OUTLINED_FUNCTION_3_1();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_1_2();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    CMBufferQueueEnqueue(*(DerivedStorage + 8), a2);
    CMRemoveAttachment(a2, @"SBUFForAutoOrder");
LABEL_40:
    v23 = 0;
    goto LABEL_41;
  }

  if (v5 & 1) != 0 && (*(DerivedStorage + 36))
  {
    OUTLINED_FUNCTION_0_3();
    if (OUTLINED_FUNCTION_5_2(v6, v7, v8, v9, v10, v11, v12, v13, v38, v39, type, type_8, v43, v44, lhs.value, *&lhs.timescale, lhs.epoch, v46, *&time2.value, time2.epoch, v48, *time1))
    {
      if (dword_1EAF16A50)
      {
        LODWORD(lhs.value) = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        OUTLINED_FUNCTION_1_2();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      updated = sbcAutoOrder_SendAllPendingSampleBuffer();
      if (updated)
      {
        goto LABEL_20;
      }
    }
  }

  updated = sbcAutoOrder_SendSbufAndUpdateLastOPTS(a1, a2);
  if (updated)
  {
    goto LABEL_20;
  }

  *&typea.value = *(DerivedStorage + 24);
  typea.epoch = *(DerivedStorage + 40);
  v15 = CMBaseObjectGetDerivedStorage();
  cf[0] = 0;
  memset(time1, 0, sizeof(time1));
  if (CMBufferQueueIsEmpty(*(v15 + 8)))
  {
LABEL_15:
    v23 = 0;
    goto LABEL_16;
  }

  *time1 = *v15;
  CMTimeMake(&time2, 10, 1000);
  lhs = typea;
  CMTimeAdd(&time1[8], &lhs, &time2);
  cf[0] = 0;
  v16 = *MEMORY[0x1E695E480];
  CallbacksForSampleBuffersSortedByOutputPTS = CMBufferQueueGetCallbacksForSampleBuffersSortedByOutputPTS();
  v18 = CMBufferQueueCreate(v16, 0, CallbacksForSampleBuffersSortedByOutputPTS, cf);
  if (!v18)
  {
    OUTLINED_FUNCTION_2_2();
    v18 = CMBufferQueueCallForEachBuffer(v19, v20, time1);
    if (!v18)
    {
      v21 = *(v15 + 8);
      v22 = cf[0];
      *(v15 + 8) = cf[0];
      if (v22)
      {
        CFRetain(v22);
      }

      if (v21)
      {
        CFRelease(v21);
      }

      goto LABEL_15;
    }
  }

  v23 = v18;
LABEL_16:
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

LABEL_41:
  FigSimpleMutexUnlock();
  return v23;
}

uint64_t sbcAutoOrder_SendAllPendingSampleBuffer()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!CMBufferQueueIsEmpty(*(DerivedStorage + 8)))
  {
    refcon = *DerivedStorage;
    v5 = *MEMORY[0x1E6960C88];
    v6 = *(MEMORY[0x1E6960C88] + 16);
    v7 = 0;
    OUTLINED_FUNCTION_2_2();
    result = CMBufferQueueCallForEachBuffer(v1, v2, &refcon);
    if (result)
    {
      return result;
    }

    CMBufferQueueReset(*(DerivedStorage + 8));
  }

  return 0;
}

uint64_t FigStreamPlaylistParserCopySerializedRepresentationForMediaGroup(uint64_t a1, const __CFDictionary *a2)
{
  if (FigCFDictionaryGetCount() < 1)
  {
    return 0;
  }

  AllocatorForMedia = FigGetAllocatorForMedia();
  v6[0] = CFArrayCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9C0]);
  if (!v6[0])
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM();
    return 0;
  }

  v6[1] = a1;
  CFDictionaryApplyFunction(a2, streamPlaylistParser_copySerializedRepresentationForMediaGroupApplier, v6);
  return v6[0];
}

uint64_t FigStreamPlaylistParserCreateMediaGroup(const __CFArray *a1, void *a2, __CFDictionary **a3)
{
  if (!a1)
  {
    return 0;
  }

  Count = CFArrayGetCount(a1);
  if (!a3 || Count < 1)
  {
    return 0;
  }

  AllocatorForMedia = FigGetAllocatorForMedia();
  Mutable = CFDictionaryCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v9 = Mutable;
    v10 = CFArrayGetCount(a1);
    if (v10 < 1)
    {
      if (!a2)
      {
LABEL_25:
        *a3 = v9;
        return 0;
      }

      v13 = 0;
    }

    else
    {
      v11 = v10;
      v23 = a2;
      v24 = a3;
      v12 = 0;
      v13 = 0;
      v14 = *MEMORY[0x1E6962FF8];
      v15 = *MEMORY[0x1E6962F28];
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1, v12);
        v17 = ValueAtIndex;
        if (ValueAtIndex)
        {
          v18 = CFRetain(ValueAtIndex);
        }

        else
        {
          v18 = 0;
        }

        Value = CFDictionaryGetValue(v17, v14);
        v20 = Value;
        if (Value)
        {
          CFRetain(Value);
          CFDictionarySetValue(v9, v20, v18);
        }

        if (!v13)
        {
          v21 = CFDictionaryGetValue(v17, v15);
          v13 = v21;
          if (v21)
          {
            CFRetain(v21);
          }
        }

        if (v20)
        {
          CFRelease(v20);
        }

        if (v18)
        {
          CFRelease(v18);
        }

        ++v12;
      }

      while (v11 != v12);
      a2 = v23;
      if (!v23)
      {
        *v24 = v9;
        if (v13)
        {
          CFRelease(v13);
        }

        return 0;
      }

      a3 = v24;
    }

    *a2 = v13;
    goto LABEL_25;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_20_0();

  return FigSignalErrorAtGM();
}

uint64_t streamPlaylistParser_serializeTaggedRangeEntries(const __CFArray *a1, CFMutableArrayRef *a2)
{
  if (!a2)
  {
    return 0;
  }

  AllocatorForMedia = FigGetAllocatorForMedia();
  Mutable = CFArrayCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v51 = a2;
    v5 = 0;
    v6 = *MEMORY[0x1E69630F0];
    v64 = *MEMORY[0x1E69630E0];
    v63 = *MEMORY[0x1E69630D0];
    v62 = *MEMORY[0x1E69630E8];
    v61 = *MEMORY[0x1E69630D8];
    *v60 = *MEMORY[0x1E6963098];
    *v59 = *MEMORY[0x1E6962F00];
    key = *MEMORY[0x1E6962F08];
    v7 = *MEMORY[0x1E695E4D0];
    v8 = *MEMORY[0x1E695E4C0];
    v57 = *MEMORY[0x1E6962F10];
    v56 = *MEMORY[0x1E6963118];
    v55 = *MEMORY[0x1E6963120];
    v54 = *MEMORY[0x1E6963128];
    v53 = *MEMORY[0x1E69630F8];
    *v52 = *MEMORY[0x1E6962EE8];
    v9 = *MEMORY[0x1E6962FC8];
    v10 = MEMORY[0x1E695E9D8];
    while (1)
    {
      v11 = MEMORY[0x1E695E9E8];
      v12 = a1 ? CFArrayGetCount(a1) : 0;
      if (v5 >= v12)
      {
        break;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(a1, v5);
      v14 = FigGetAllocatorForMedia();
      v15 = v10;
      v16 = CFDictionaryCreateMutable(v14, 0, v10, v11);
      if (v16)
      {
        v17 = v16;
        FigDateRangeSpecifierGetMetadataDict(ValueAtIndex);
        v18 = OUTLINED_FUNCTION_8_1();
        v19 = v6;
        v21 = FigWireDictionarySetCFDictionary(v18, v6, v20);
        if (v21 || (FigDateRangeSpecifierGetIdentifier(ValueAtIndex), v22 = OUTLINED_FUNCTION_8_1(), v21 = FigWireDictionarySetCFString(v22, v64, v23), v21) || (FigDateRangeSpecifierGetTaggedRangeClass(ValueAtIndex), v24 = OUTLINED_FUNCTION_8_1(), v21 = FigWireDictionarySetCFString(v24, v63, v25), v21) || (FigDateRangeSpecifierGetTaggedRangeLine(ValueAtIndex), v26 = OUTLINED_FUNCTION_8_1(), v21 = FigWireDictionarySetCFString(v26, v62, v27), v21) || (FigDateRangeSpecifierGetTaggedRangeCue(ValueAtIndex), v28 = OUTLINED_FUNCTION_8_1(), v21 = FigWireDictionarySetCFString(v28, v61, v29), v21) || (FigDateRangeSpecifierGetStartDate(ValueAtIndex), v30 = OUTLINED_FUNCTION_8_1(), v21 = FigWireDictionarySetCFDate(v30, v60[0], v31), v21) || (FigDateRangeSpecifierGetEndDate(ValueAtIndex), v32 = OUTLINED_FUNCTION_8_1(), v21 = FigWireDictionarySetCFDate(v32, v59[0], v33), v21) || (FigDateRangeSpecifierGetEndOnNext(ValueAtIndex) ? (v34 = v7) : (v34 = v8), (CFDictionarySetValue(v17, key, v34), FigDateRangeSpecifierGetEndOnNextSet(ValueAtIndex)) ? (v35 = v7) : (v35 = v8), (CFDictionarySetValue(v17, v57, v35), FigDateRangeSpecifierGetScte35cmd(ValueAtIndex), v36 = OUTLINED_FUNCTION_8_1(), v21 = FigWireDictionarySetCFData(v36, v56, v37), v21) || (FigDateRangeSpecifierGetScte35in(ValueAtIndex), v38 = OUTLINED_FUNCTION_8_1(), v21 = FigWireDictionarySetCFData(v38, v55, v39), v21) || (FigDateRangeSpecifierGetScte35out(ValueAtIndex), v40 = OUTLINED_FUNCTION_8_1(), v21 = FigWireDictionarySetCFData(v40, v54, v41), v21) || (FigDateRangeSpecifierGetDuration(ValueAtIndex), FigCFDictionarySetDouble(), FigDateRangeSpecifierGetPlannedDuration(ValueAtIndex), FigCFDictionarySetDouble(), FigDateRangeSpecifierGetTagsFirstFoundDateDict(ValueAtIndex), v42 = OUTLINED_FUNCTION_8_1(), v21 = FigWireDictionarySetCFDictionary(v42, v53, v43), v21) || (FigDateRangeSpecifierGetDiscoveryTimestamp(ValueAtIndex), v44 = OUTLINED_FUNCTION_8_1(), v21 = FigWireDictionarySetCFDate(v44, v52[0], v45), v21) || (FigDateRangeSpecifierGetModificationTimestamp(ValueAtIndex), v46 = OUTLINED_FUNCTION_8_1(), v21 = FigWireDictionarySetCFDate(v46, v9, v47), v21)))
        {
          v49 = v21;
          CFRelease(v17);
LABEL_33:
          CFRelease(Mutable);
          return v49;
        }

        CFArrayAppendValue(Mutable, v17);
        CFRelease(v17);
      }

      else
      {
        v19 = v6;
        fig_log_get_emitter();
        OUTLINED_FUNCTION_6_3();
        v48 = FigSignalErrorAtGM();
        if (v48)
        {
          v49 = v48;
          goto LABEL_33;
        }

        CFArrayAppendValue(Mutable, 0);
      }

      v10 = v15;
      ++v5;
      v6 = v19;
    }

    v49 = 0;
    *v51 = Mutable;
    return v49;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_20_0();

  return FigSignalErrorAtGM();
}

uint64_t FigStreamPlaylistParserSerializeMultivariantPlaylist(uint64_t a1, uint64_t a2)
{
  cf = 0;
  if (!a2)
  {
    return 0;
  }

  v2 = a2;
  AllocatorForMedia = FigGetAllocatorForMedia();
  Mutable = CFDictionaryCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_19_2();
    v63 = FigSignalErrorAtGM();
    goto LABEL_51;
  }

  v5 = Mutable;
  FigMultivariantPlaylistGetPlaylistVariables(v2);
  v6 = OUTLINED_FUNCTION_283();
  if (FigWireDictionarySetCFDictionary(v6, v7, v8))
  {
    goto LABEL_24;
  }

  Alternates = FigMultivariantPlaylistGetAlternates(v2);
  if (!Alternates || CFArrayGetCount(Alternates) < 1)
  {
    goto LABEL_8;
  }

  v10 = FigGetAllocatorForMedia();
  value = CFArrayCreateMutable(v10, 0, MEMORY[0x1E695E9C0]);
  if (value)
  {
    FigMultivariantPlaylistGetAlternates(v2);
    FigCFArrayApplyFunction();
    CFDictionarySetValue(v5, *MEMORY[0x1E6962F18], value);
    CFRelease(value);
    goto LABEL_8;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_19_2();
  if (!FigSignalErrorAtGM())
  {
LABEL_8:
    FigMultivariantPlaylistGetMediaSelectionArray(v2);
    v11 = OUTLINED_FUNCTION_283();
    if (!FigWireDictionarySetCFArray(v11, v12, v13))
    {
      if (FigMultivariantPlaylistGetAudioGroups(v2))
      {
        AudioGroups = FigMultivariantPlaylistGetAudioGroups(v2);
        v15 = streamPlaylistParser_copySerializedRepresentationForMediaGroups(AudioGroups);
        if (v15)
        {
          v16 = v15;
          OUTLINED_FUNCTION_33_1(v15, *MEMORY[0x1E6962E90]);
          CFRelease(v16);
        }
      }

      if (FigMultivariantPlaylistGetVideoGroups(v2))
      {
        VideoGroups = FigMultivariantPlaylistGetVideoGroups(v2);
        v18 = streamPlaylistParser_copySerializedRepresentationForMediaGroups(VideoGroups);
        if (v18)
        {
          v19 = v18;
          OUTLINED_FUNCTION_33_1(v18, *MEMORY[0x1E6963110]);
          CFRelease(v19);
        }
      }

      if (FigMultivariantPlaylistGetSubtitleGroups(v2))
      {
        SubtitleGroups = FigMultivariantPlaylistGetSubtitleGroups(v2);
        v21 = streamPlaylistParser_copySerializedRepresentationForMediaGroups(SubtitleGroups);
        if (v21)
        {
          v22 = v21;
          OUTLINED_FUNCTION_33_1(v21, *MEMORY[0x1E69630B8]);
          CFRelease(v22);
        }
      }

      if (FigMultivariantPlaylistGetClosedCaptionGroups(v2))
      {
        ClosedCaptionGroups = FigMultivariantPlaylistGetClosedCaptionGroups(v2);
        v24 = streamPlaylistParser_copySerializedRepresentationForMediaGroups(ClosedCaptionGroups);
        if (v24)
        {
          v25 = v24;
          OUTLINED_FUNCTION_33_1(v24, *MEMORY[0x1E6962EA8]);
          CFRelease(v25);
        }
      }

      FigMultivariantPlaylistGetContentSteeringServerURL(v2);
      v26 = OUTLINED_FUNCTION_283();
      if (!FigWireDictionarySetCFURL(v26, v27, v28))
      {
        FigMultivariantPlaylistGetContentSteeringInitPathwayID(v2);
        v29 = OUTLINED_FUNCTION_283();
        if (!FigWireDictionarySetCFString(v29, v30, v31))
        {
          FigMultivariantPlaylistHasStartTime(v2);
          v32 = OUTLINED_FUNCTION_283();
          CFDictionarySetValue(v32, v33, v34);
          FigMultivariantPlaylistIsStartTimePrecise(v2);
          v35 = OUTLINED_FUNCTION_283();
          CFDictionarySetValue(v35, v36, v37);
          FigMultivariantPlaylistHasIndependentSegments(v2);
          v38 = OUTLINED_FUNCTION_283();
          CFDictionarySetValue(v38, v39, v40);
          FigMultivariantPlaylistGetVersion(v2);
          OUTLINED_FUNCTION_283();
          FigCFDictionarySetInt64();
          FigMultivariantPlaylistGetStartTimeValue(v2);
          OUTLINED_FUNCTION_283();
          FigCFDictionarySetDouble();
        }
      }
    }
  }

LABEL_24:
  SessionDataSpecifiers = FigMultivariantPlaylistGetSessionDataSpecifiers(v2);
  v42 = FigGetAllocatorForMedia();
  theArray = CFArrayCreateMutable(v42, 0, MEMORY[0x1E695E9C0]);
  if (!theArray)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_19_2();
    v63 = FigSignalErrorAtGM();
    goto LABEL_43;
  }

  if (!SessionDataSpecifiers || (Count = CFArrayGetCount(SessionDataSpecifiers), Count < 1))
  {
LABEL_39:
    CFDictionarySetValue(v5, *MEMORY[0x1E6963060], theArray);
    CFRelease(theArray);
    cf = 0;
    goto LABEL_44;
  }

  v68 = v2;
  v69 = v5;
  v43 = 0;
  v44 = *MEMORY[0x1E6963070];
  v45 = *MEMORY[0x1E6963018];
  v46 = *MEMORY[0x1E6963080];
  v47 = *MEMORY[0x1E6963078];
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(SessionDataSpecifiers, v43);
    if (!ValueAtIndex)
    {
      v63 = 0;
      goto LABEL_42;
    }

    v49 = ValueAtIndex;
    v50 = FigGetAllocatorForMedia();
    v51 = CFDictionaryCreateMutable(v50, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!v51)
    {
      break;
    }

    v52 = v51;
    FigSessionDataSpecifierGetIdentifier(v49);
    v53 = OUTLINED_FUNCTION_31_1();
    v55 = FigWireDictionarySetCFString(v53, v44, v54);
    if (v55 || (FigSessionDataSpecifierGetURL(v49), v56 = OUTLINED_FUNCTION_31_1(), v55 = FigWireDictionarySetCFURL(v56, v45, v57), v55) || (FigSessionDataSpecifierGetValue(v49), v58 = OUTLINED_FUNCTION_31_1(), v55 = FigWireDictionarySetCFString(v58, v46, v59), v55) || (FigSessionDataSpecifierGetLanguage(v49), v60 = OUTLINED_FUNCTION_31_1(), v55 = FigWireDictionarySetCFString(v60, v47, v61), v55))
    {
      v63 = v55;
      CFRelease(v52);
      goto LABEL_42;
    }

    FigSessionDataSpecifierGetFormatType(v49);
    FigCFDictionarySetInt64();
    CFArrayAppendValue(theArray, v52);
    CFRelease(v52);
LABEL_35:
    if (Count == ++v43)
    {
      cf = theArray;
      v5 = v69;
      v2 = v68;
      goto LABEL_39;
    }
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_3_2();
  v62 = FigSignalErrorAtGM();
  if (!v62)
  {
    CFArrayAppendValue(theArray, 0);
    goto LABEL_35;
  }

  v63 = v62;
LABEL_42:
  v5 = v69;
  v2 = v68;
  CFRelease(theArray);
LABEL_43:
  if (!v63)
  {
LABEL_44:
    ContentKeySpecifiers = FigMultivariantPlaylistGetContentKeySpecifiers(v2);
    v65 = streamPlaylistParser_serializeContentKeySpecifiers(0, ContentKeySpecifiers, 0, &cf);
    if (v65)
    {
      v63 = v65;
    }

    else
    {
      if (cf)
      {
        CFDictionarySetValue(v5, *MEMORY[0x1E6962EB0], cf);
        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }
      }

      FigGetAllocatorForMedia();
      SerializedAtomDataBlockBufferWithFlagsForCFType = FigRemote_CreateSerializedAtomDataBlockBufferWithFlagsForCFType();
      if (SerializedAtomDataBlockBufferWithFlagsForCFType)
      {
        v63 = SerializedAtomDataBlockBufferWithFlagsForCFType;
      }

      else
      {
        v63 = 0;
      }
    }
  }

  CFRelease(v5);
LABEL_51:
  if (cf)
  {
    CFRelease(cf);
  }

  return v63;
}

uint64_t FigStreamPlaylistParserSerializeMediaPlaylist(uint64_t a1, uint64_t a2)
{
  v70 = 0;
  if (!a2)
  {
    return 0;
  }

  v2 = a2;
  AllocatorForMedia = FigGetAllocatorForMedia();
  Mutable = CFDictionaryCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_2();
    v62 = FigSignalErrorAtGM();
    v6 = 0;
LABEL_61:
    v8 = 0;
    goto LABEL_45;
  }

  v5 = FigGetAllocatorForMedia();
  v6 = CFArrayCreateMutable(v5, 0, MEMORY[0x1E695E9C0]);
  if (!v6)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_2();
    v62 = FigSignalErrorAtGM();
    goto LABEL_61;
  }

  v7 = FigGetAllocatorForMedia();
  v8 = CFArrayCreateMutable(v7, 0, MEMORY[0x1E695E9C0]);
  if (!v8)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_2();
    SerializedAtomDataBlockBufferWithFlagsForCFType = FigSignalErrorAtGM();
    goto LABEL_44;
  }

  FigMediaPlaylistGetDateEntryArray(v2);
  v9 = OUTLINED_FUNCTION_177();
  SerializedAtomDataBlockBufferWithFlagsForCFType = FigWireDictionarySetCFArray(v9, v10, v11);
  if (SerializedAtomDataBlockBufferWithFlagsForCFType)
  {
    goto LABEL_44;
  }

  FigMediaPlaylistGetPlaylistActiveDurationSecs(v2);
  OUTLINED_FUNCTION_177();
  FigCFDictionarySetDouble();
  FigMediaPlaylistGetTargetDuration(v2);
  OUTLINED_FUNCTION_177();
  FigCFDictionarySetInt64();
  FigMediaPlaylistGetPartTargetDuration(v2);
  OUTLINED_FUNCTION_177();
  FigCFDictionarySetDouble();
  FigMediaPlaylistGetHoldBackDuration(v2);
  OUTLINED_FUNCTION_177();
  FigCFDictionarySetDouble();
  FigMediaPlaylistGetPartHoldBackDuration(v2);
  OUTLINED_FUNCTION_177();
  FigCFDictionarySetDouble();
  FigMediaPlaylistGetSkipDeltaBoundary(v2);
  OUTLINED_FUNCTION_177();
  FigCFDictionarySetDouble();
  FigMediaPlaylistGetPlaylistType(v2);
  OUTLINED_FUNCTION_177();
  FigCFDictionarySetInt64();
  HasEndTag = FigMediaPlaylistHasEndTag(v2);
  v14 = *MEMORY[0x1E695E4D0];
  v15 = *MEMORY[0x1E695E4C0];
  OUTLINED_FUNCTION_4_3(HasEndTag);
  HasMediaSequence = FigMediaPlaylistHasMediaSequence(v2);
  OUTLINED_FUNCTION_4_3(HasMediaSequence);
  HasOnlyIFrames = FigMediaPlaylistHasOnlyIFrames(v2);
  OUTLINED_FUNCTION_4_3(HasOnlyIFrames);
  HasStartTime = FigMediaPlaylistHasStartTime(v2);
  OUTLINED_FUNCTION_4_3(HasStartTime);
  IsStartTimePrecise = FigMediaPlaylistIsStartTimePrecise(v2);
  OUTLINED_FUNCTION_4_3(IsStartTimePrecise);
  HasIndependentSegments = FigMediaPlaylistHasIndependentSegments(v2);
  OUTLINED_FUNCTION_4_3(HasIndependentSegments);
  HasIndependentParts = FigMediaPlaylistHasIndependentParts(v2);
  OUTLINED_FUNCTION_4_3(HasIndependentParts);
  HasDiscontinuitySequence = FigMediaPlaylistHasDiscontinuitySequence(v2);
  OUTLINED_FUNCTION_4_3(HasDiscontinuitySequence);
  HasPartTag = FigMediaPlaylistHasPartTag(v2);
  OUTLINED_FUNCTION_4_3(HasPartTag);
  DoesServerSupportsBlockingReload = FigMediaPlaylistDoesServerSupportsBlockingReload(v2);
  OUTLINED_FUNCTION_4_3(DoesServerSupportsBlockingReload);
  FigMediaPlaylistCanSkipDATERANGES(v2);
  v67 = v15;
  v68 = v14;
  v25 = OUTLINED_FUNCTION_177();
  CFDictionarySetValue(v25, v26, v27);
  FigMediaPlaylistGetVersion(v2);
  OUTLINED_FUNCTION_177();
  FigCFDictionarySetInt64();
  FigMediaPlaylistGetStartTimeValue(v2);
  OUTLINED_FUNCTION_177();
  FigCFDictionarySetDouble();
  FigMediaPlaylistGetDateStampCount(v2);
  OUTLINED_FUNCTION_177();
  FigCFDictionarySetInt64();
  FigMediaPlaylistGetAvgSegmentDuration(v2);
  OUTLINED_FUNCTION_177();
  FigCFDictionarySetDouble();
  FigMediaPlaylistGetMaxSegmentDuration(v2);
  OUTLINED_FUNCTION_177();
  FigCFDictionarySetDouble();
  FigMediaPlaylistGetParseDate(v2);
  v28 = OUTLINED_FUNCTION_177();
  SerializedAtomDataBlockBufferWithFlagsForCFType = FigWireDictionarySetCFDate(v28, v29, v30);
  if (SerializedAtomDataBlockBufferWithFlagsForCFType)
  {
    goto LABEL_44;
  }

  FigMediaPlaylistGetContentKeySpecifiers(v2);
  v31 = OUTLINED_FUNCTION_21_2();
  SerializedAtomDataBlockBufferWithFlagsForCFType = streamPlaylistParser_serializeContentKeySpecifiers(v31, v32, v8, v33);
  if (SerializedAtomDataBlockBufferWithFlagsForCFType)
  {
    goto LABEL_44;
  }

  FigMediaPlaylistGetMapSegmentSpecifiers(v2);
  v34 = OUTLINED_FUNCTION_21_2();
  SerializedAtomDataBlockBufferWithFlagsForCFType = streamPlaylistParser_serializeMediaSegmentSpecifiers(v34, v35, v6, v36);
  if (SerializedAtomDataBlockBufferWithFlagsForCFType)
  {
    goto LABEL_44;
  }

  FigMediaPlaylistGetMediaSegmentSpecifiers(v2);
  v37 = OUTLINED_FUNCTION_21_2();
  SerializedAtomDataBlockBufferWithFlagsForCFType = streamPlaylistParser_serializeMediaSegmentSpecifiers(v37, v38, v6, v39);
  if (SerializedAtomDataBlockBufferWithFlagsForCFType)
  {
    goto LABEL_44;
  }

  RenditionReportSpecifiers = FigMediaPlaylistGetRenditionReportSpecifiers(v2);
  v41 = FigGetAllocatorForMedia();
  v42 = CFArrayCreateMutable(v41, 0, MEMORY[0x1E695E9C0]);
  if (!v42)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_2();
    SerializedAtomDataBlockBufferWithFlagsForCFType = FigSignalErrorAtGM();
    if (!SerializedAtomDataBlockBufferWithFlagsForCFType)
    {
LABEL_29:
      DateRangeSpecifiers = FigMediaPlaylistGetDateRangeSpecifiers(v2);
      SerializedAtomDataBlockBufferWithFlagsForCFType = streamPlaylistParser_serializeTaggedRangeEntries(DateRangeSpecifiers, &v70);
      if (!SerializedAtomDataBlockBufferWithFlagsForCFType)
      {
        if (v70)
        {
          CFDictionarySetValue(Mutable, *MEMORY[0x1E6962ED0], v70);
          if (v70)
          {
            CFRelease(v70);
            v70 = 0;
          }
        }

        v71 = 0;
        PreloadHint = FigMediaPlaylistGetPreloadHint(v2);
        v60 = OUTLINED_FUNCTION_32_2(PreloadHint);
        if (v60)
        {
          goto LABEL_56;
        }

        if (v71)
        {
          CFDictionarySetValue(Mutable, *MEMORY[0x1E6963028], v71);
          if (v71)
          {
            CFRelease(v71);
            v71 = 0;
          }
        }

        PreloadMapHint = FigMediaPlaylistGetPreloadMapHint(v2);
        v60 = OUTLINED_FUNCTION_32_2(PreloadMapHint);
        if (v60)
        {
LABEL_56:
          v62 = v60;
          if (v71)
          {
            CFRelease(v71);
          }

          goto LABEL_45;
        }

        if (v71)
        {
          CFDictionarySetValue(Mutable, *MEMORY[0x1E6963030], v71);
          if (v71)
          {
            CFRelease(v71);
          }
        }

        SerializedAtomDataBlockBufferWithFlagsForCFType = FigWireDictionarySetCFArray(Mutable, *MEMORY[0x1E6963048], v6);
        if (!SerializedAtomDataBlockBufferWithFlagsForCFType)
        {
          SerializedAtomDataBlockBufferWithFlagsForCFType = FigWireDictionarySetCFArray(Mutable, *MEMORY[0x1E6963040], v8);
          if (!SerializedAtomDataBlockBufferWithFlagsForCFType)
          {
            FigGetAllocatorForMedia();
            SerializedAtomDataBlockBufferWithFlagsForCFType = FigRemote_CreateSerializedAtomDataBlockBufferWithFlagsForCFType();
            if (!SerializedAtomDataBlockBufferWithFlagsForCFType)
            {
              v62 = 0;
              goto LABEL_46;
            }
          }
        }
      }
    }

LABEL_44:
    v62 = SerializedAtomDataBlockBufferWithFlagsForCFType;
    goto LABEL_45;
  }

  v43 = v42;
  v64 = v2;
  v65 = v8;
  v66 = Mutable;
  v44 = 0;
  v69 = *MEMORY[0x1E6963058];
  v45 = *MEMORY[0x1E6962F20];
  v46 = *MEMORY[0x1E6963038];
  if (!RenditionReportSpecifiers)
  {
    goto LABEL_13;
  }

LABEL_12:
  for (i = CFArrayGetCount(RenditionReportSpecifiers); ; i = 0)
  {
    if (v44 >= i)
    {
      v70 = v43;
      Mutable = v66;
      v8 = v65;
      v2 = v64;
      CFDictionarySetValue(v66, *MEMORY[0x1E6963050], v43);
      CFRelease(v43);
      v70 = 0;
      goto LABEL_29;
    }

    v48 = v43;
    ValueAtIndex = CFArrayGetValueAtIndex(RenditionReportSpecifiers, v44);
    v50 = FigGetAllocatorForMedia();
    v51 = CFDictionaryCreateMutable(v50, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!v51)
    {
      break;
    }

    v52 = v51;
    URL = FigRenditionReportSpecifierGetURL(ValueAtIndex);
    v54 = FigWireDictionarySetCFURL(v52, v69, URL);
    if (v54)
    {
      v62 = v54;
      CFRelease(v52);
      goto LABEL_55;
    }

    FigRenditionReportSpecifierGetLastMediaSequenceNumber(ValueAtIndex);
    FigCFDictionarySetInt64();
    FigRenditionReportSpecifierGetLastIndependentMediaSequenceNumber(ValueAtIndex);
    FigCFDictionarySetInt64();
    FigRenditionReportSpecifierGetLastPart(ValueAtIndex);
    FigCFDictionarySetInt64();
    FigRenditionReportSpecifierGetLastIndependentPart(ValueAtIndex);
    FigCFDictionarySetInt64();
    if (FigRenditionReportSpecifierIsGapAtLive(ValueAtIndex))
    {
      v55 = v68;
    }

    else
    {
      v55 = v67;
    }

    CFDictionarySetValue(v52, v45, v55);
    if (FigRenditionReportSpecifierIsReadInCurrent(ValueAtIndex))
    {
      v56 = v68;
    }

    else
    {
      v56 = v67;
    }

    CFDictionarySetValue(v52, v46, v56);
    CFArrayAppendValue(v43, v52);
    CFRelease(v52);
LABEL_24:
    ++v44;
    if (RenditionReportSpecifiers)
    {
      goto LABEL_12;
    }

LABEL_13:
    ;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_3_2();
  v57 = FigSignalErrorAtGM();
  if (!v57)
  {
    CFArrayAppendValue(v43, 0);
    goto LABEL_24;
  }

  v62 = v57;
LABEL_55:
  CFRelease(v48);
  Mutable = v66;
  v8 = v65;
LABEL_45:
  if (Mutable)
  {
LABEL_46:
    CFRelease(Mutable);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (v70)
  {
    CFRelease(v70);
  }

  return v62;
}

uint64_t streamPlaylistParser_serializeContentKeySpecifiers(uint64_t a1, const __CFArray *a2, uint64_t a3, __CFArray **a4)
{
  if (!a4)
  {
    return 0;
  }

  AllocatorForMedia = FigGetAllocatorForMedia();
  theArray = CFArrayCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9C0]);
  if (!theArray)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_6_3();

    return FigSignalErrorAtGM();
  }

  v28 = a4;
  v9 = 0;
  v31 = *MEMORY[0x1E6962EC8];
  v30 = *MEMORY[0x1E69630C0];
  key = *MEMORY[0x1E6963020];
  v10 = *MEMORY[0x1E695E4D0];
  v11 = *MEMORY[0x1E695E4C0];
  if (!a2)
  {
    goto LABEL_5;
  }

LABEL_4:
  for (i = CFArrayGetCount(a2); ; i = 0)
  {
    if (v9 >= i)
    {
      v26 = 0;
      *v28 = theArray;
      return v26;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(a2, v9);
    v14 = ValueAtIndex;
    if (a3 && FigContentKeySpecifierGetIsReadInCurrent(ValueAtIndex))
    {
      FigContentKeySpecifierGetCryptKeyParsedIndex(v14);
      FigCFArrayAppendInt64();
    }

    if (!FigContentKeySpecifierGetIsChangedInCurrent(v14))
    {
      goto LABEL_21;
    }

    v15 = FigGetAllocatorForMedia();
    Mutable = CFDictionaryCreateMutable(v15, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!Mutable)
    {
      break;
    }

    v17 = Mutable;
    FigContentKeySpecifierGetKeySystem(v14);
    FigCFDictionarySetInt64();
    FigContentKeySpecifierGetEncryptionMethod(v14);
    FigCFDictionarySetInt64();
    FigContentKeySpecifierGetIdentifier(v14);
    v18 = OUTLINED_FUNCTION_8_1();
    v20 = FigWireDictionarySetCFString(v18, v31, v19);
    if (v20 || (FigContentKeySpecifierGetSupportedProtocolVersions(v14), v21 = OUTLINED_FUNCTION_8_1(), v20 = FigWireDictionarySetCFArray(v21, v30, v22), v20))
    {
      v26 = v20;
      CFRelease(v17);
      goto LABEL_28;
    }

    if (FigContentKeySpecifierGetIsPrefetchKey(v14))
    {
      v23 = v10;
    }

    else
    {
      v23 = v11;
    }

    CFDictionarySetValue(v17, key, v23);
    FigContentKeySpecifierGetCryptKeyParsedIndex(v14);
    OUTLINED_FUNCTION_8_1();
    FigCFDictionarySetInt64();
    if (a1)
    {
      if (FigContentKeySpecifierGetCryptKeyParsedIndex(v14))
      {
        CryptKeyParsedIndex = FigContentKeySpecifierGetCryptKeyParsedIndex(v14);
        FigMediaPlaylistAddToCryptKeyParsedIndexToEntryMap(a1, CryptKeyParsedIndex, v14);
      }
    }

    CFArrayAppendValue(theArray, v17);
    CFRelease(v17);
LABEL_21:
    ++v9;
    if (a2)
    {
      goto LABEL_4;
    }

LABEL_5:
    ;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_6_3();
  v25 = FigSignalErrorAtGM();
  if (!v25)
  {
    CFArrayAppendValue(theArray, 0);
    goto LABEL_21;
  }

  v26 = v25;
LABEL_28:
  CFRelease(theArray);
  return v26;
}

uint64_t streamPlaylistParser_serializeMediaSegmentSpecifiers(uint64_t a1, const __CFArray *a2, uint64_t a3, __CFArray **a4)
{
  value = 0;
  if (!a4)
  {
    return 0;
  }

  AllocatorForMedia = FigGetAllocatorForMedia();
  Mutable = CFArrayCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v10 = 0;
    if (!a2)
    {
      goto LABEL_5;
    }

LABEL_4:
    for (i = CFArrayGetCount(a2); v10 < i; i = 0)
    {
      v12 = OUTLINED_FUNCTION_182_1();
      ValueAtIndex = CFArrayGetValueAtIndex(v12, v13);
      if (FigMediaSegmentSpecifierIsReadInCurrent(ValueAtIndex))
      {
        FigMediaSegmentSpecifierGetMediaParsedIndex(ValueAtIndex);
        OUTLINED_FUNCTION_171_1();
        FigCFArrayAppendInt64();
      }

      if (FigMediaSegmentSpecifierIsChangedInCurrent(ValueAtIndex))
      {
        v15 = streamPlaylistParser_serializeMediaSegmentSpecifier(a1, ValueAtIndex, a3, &value);
        if (v15)
        {
          goto LABEL_23;
        }

        CFArrayAppendValue(Mutable, value);
        if (value)
        {
          CFRelease(value);
          value = 0;
        }
      }

      ++v10;
      if (a2)
      {
        goto LABEL_4;
      }

LABEL_5:
      ;
    }

    v16 = 0;
    *a4 = Mutable;
    Mutable = 0;
  }

  else
  {
    fig_log_get_emitter();
    v15 = FigSignalErrorAtGM();
LABEL_23:
    v16 = v15;
  }

  if (value)
  {
    CFRelease(value);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v16;
}

uint64_t FigWireDictionarySetCFArray(int a1, int a2, const void *a3)
{
  if (!a3)
  {
    return 0;
  }

  v3 = OUTLINED_FUNCTION_12_1(a1, a2, a3);
  if (v3 == CFArrayGetTypeID())
  {
    OUTLINED_FUNCTION_17_1();
    return 0;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t FigStreamPlaylistParserDeserializeMultivariantPlaylist(uint64_t a1, CFTypeRef *a2)
{
  v83 = 0;
  if (a2)
  {
    AllocatorForMedia = FigGetAllocatorForMedia();
    BlockBufferData = FigMultivariantPlaylistCreateEmpty(AllocatorForMedia, &v83);
    if (BlockBufferData || (FigGetAllocatorForMedia(), BlockBufferData = FigXPCMessageCreateBlockBufferData(), BlockBufferData) || (FigGetAllocatorForMedia(), BlockBufferData = FigRemote_CreateCFTypeFromSerializedAtomDataBlockBuffer(), BlockBufferData))
    {
      v41 = BlockBufferData;
    }

    else
    {
      v5 = v83;
      Value = CFDictionaryGetValue(0, *MEMORY[0x1E6962FD0]);
      v7 = Value;
      if (Value)
      {
        CFRetain(Value);
      }

      v8 = OUTLINED_FUNCTION_283();
      FigMultivariantPlaylistSetPlaylistVariables(v8, v9);
      v10 = CFDictionaryGetValue(0, *MEMORY[0x1E6962FC0]);
      v11 = v10;
      if (v10)
      {
        CFRetain(v10);
      }

      FigMultivariantPlaylistSetMediaSelectionArray(v5, v11);
      v89[0] = 0;
      Array = FigWireDictionaryGetArray(0, *MEMORY[0x1E6962E90]);
      streamPlaylistParser_copyDeserializedRepresentationForMediaGroups(Array, v89);
      v13 = OUTLINED_FUNCTION_30_2();
      FigMultivariantPlaylistSetAudioGroups(v13, v14);
      if (v89[0])
      {
        CFRelease(v89[0]);
        v89[0] = 0;
      }

      v15 = FigWireDictionaryGetArray(0, *MEMORY[0x1E6963110]);
      streamPlaylistParser_copyDeserializedRepresentationForMediaGroups(v15, v89);
      v16 = OUTLINED_FUNCTION_30_2();
      FigMultivariantPlaylistSetVideoGroups(v16, v17);
      if (v89[0])
      {
        CFRelease(v89[0]);
        v89[0] = 0;
      }

      v18 = FigWireDictionaryGetArray(0, *MEMORY[0x1E69630B8]);
      streamPlaylistParser_copyDeserializedRepresentationForMediaGroups(v18, v89);
      v19 = OUTLINED_FUNCTION_30_2();
      FigMultivariantPlaylistSetSubtitleGroups(v19, v20);
      if (v89[0])
      {
        CFRelease(v89[0]);
        v89[0] = 0;
      }

      *v81 = v7;
      v77 = a2;
      v21 = FigWireDictionaryGetArray(0, *MEMORY[0x1E6962EA8]);
      streamPlaylistParser_copyDeserializedRepresentationForMediaGroups(v21, v89);
      v22 = OUTLINED_FUNCTION_30_2();
      FigMultivariantPlaylistSetClosedCaptionGroups(v22, v23);
      if (v89[0])
      {
        CFRelease(v89[0]);
      }

      v24 = FigWireDictionaryGetArray(0, *MEMORY[0x1E6962F18]);
      if (v24)
      {
        v25 = v24;
        if (CFArrayGetCount(v24) >= 1)
        {
          Count = CFArrayGetCount(v25);
          if (Count >= 1)
          {
            v27 = Count;
            for (i = 0; v27 != i; ++i)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v25, i);
              if (!ValueAtIndex)
              {
                fig_log_get_emitter();
                FigSignalErrorAtGM();
                break;
              }

              v30 = ValueAtIndex;
              v88 = 0;
              v89[0] = 0;
              v86 = 0;
              v87 = 0;
              v84 = 0;
              v85 = 0;
              v31 = FigGetAllocatorForMedia();
              SelectionGroup = FigAlternateCreateWithSerializedRepresentation(v31, v30, 0, v89);
              if (SelectionGroup || (FigAlternateGetAudioGroupIDString(v89[0]), v33 = OUTLINED_FUNCTION_29_1(), AudioGroups = FigMultivariantPlaylistGetAudioGroups(v33), SelectionGroup = FigStreamPlaylistGetSelectionGroup(v30, 1936684398, AudioGroups, &v87), SelectionGroup) || (FigAlternateGetVideoGroupIDString(v89[0]), v35 = OUTLINED_FUNCTION_29_1(), VideoGroups = FigMultivariantPlaylistGetVideoGroups(v35), SelectionGroup = FigStreamPlaylistGetSelectionGroup(v30, 1986618469, VideoGroups, &v86), SelectionGroup) || (FigAlternateGetSubtitleGroupIDString(v89[0]), v37 = OUTLINED_FUNCTION_29_1(), SubtitleGroups = FigMultivariantPlaylistGetSubtitleGroups(v37), SelectionGroup = FigStreamPlaylistGetSelectionGroup(v30, 1935832172, SubtitleGroups, &v85), SelectionGroup) || (FigAlternateGetClosedCaptionGroupIDString(v89[0]), v39 = OUTLINED_FUNCTION_29_1(), ClosedCaptionGroups = FigMultivariantPlaylistGetClosedCaptionGroups(v39), SelectionGroup = FigStreamPlaylistGetSelectionGroup(v30, 1668047728, ClosedCaptionGroups, &v84), SelectionGroup))
              {
                v41 = SelectionGroup;
              }

              else
              {
                v41 = FigAlternateCopy(v89[0], 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, v87, v86, v85, v84, &v88);
                if (!v41)
                {
                  v42 = v88;
                  v88 = 0;
                  goto LABEL_29;
                }
              }

              v42 = 0;
LABEL_29:
              if (v89[0])
              {
                CFRelease(v89[0]);
              }

              if (v88)
              {
                CFRelease(v88);
              }

              if (v41)
              {
                v50 = *v81;
                if (!v42)
                {
                  goto LABEL_49;
                }

LABEL_48:
                CFRelease(v42);
                goto LABEL_49;
              }

              v43 = OUTLINED_FUNCTION_182_1();
              FigMultivariantPlaylistAddAlternate(v43, v44);
              if (v42)
              {
                CFRelease(v42);
              }
            }
          }
        }
      }

      v45 = CFDictionaryGetValue(0, *MEMORY[0x1E69630B0]);
      v46 = v45;
      if (v45)
      {
        CFRetain(v45);
      }

      v47 = OUTLINED_FUNCTION_283();
      FigMultivariantPlaylistSetContentSteeringServerURL(v47, v48);
      v49 = CFDictionaryGetValue(0, *MEMORY[0x1E6962F70]);
      v42 = v49;
      v50 = *v81;
      if (v49)
      {
        CFRetain(v49);
      }

      v51 = OUTLINED_FUNCTION_182_1();
      FigMultivariantPlaylistSetContentSteeringInitPathwayID(v51, v52);
      v89[0] = 0;
      OUTLINED_FUNCTION_22_2();
      FigCFDictionaryGetInt64IfPresent();
      FigMultivariantPlaylistSetVersion(v5, v89[0]);
      LOBYTE(v89[0]) = 0;
      OUTLINED_FUNCTION_22_2();
      FigCFDictionaryGetBooleanIfPresent();
      FigMultivariantPlaylistSetHasIndependentSegments(v5, v89[0]);
      LOBYTE(v89[0]) = 0;
      OUTLINED_FUNCTION_22_2();
      FigCFDictionaryGetBooleanIfPresent();
      FigMultivariantPlaylistSetHasStartTime(v5, v89[0]);
      v89[0] = 0;
      OUTLINED_FUNCTION_22_2();
      FigCFDictionaryGetDoubleIfPresent();
      FigMultivariantPlaylistSetStartTimeValue(v5, *v89);
      LOBYTE(v89[0]) = 0;
      OUTLINED_FUNCTION_22_2();
      FigCFDictionaryGetBooleanIfPresent();
      FigMultivariantPlaylistSetIsStartTimePrecise(v5, v89[0]);
      if (v46)
      {
        CFRelease(v46);
      }

      v41 = 0;
      if (v42)
      {
        goto LABEL_48;
      }

LABEL_49:
      if (v50)
      {
        CFRelease(v50);
      }

      if (v11)
      {
        CFRelease(v11);
      }

      if (!v41)
      {
        v53 = FigWireDictionaryGetArray(0, *MEMORY[0x1E6962EB0]);
        if (v53 && (v54 = v53, v55 = v83, v89[0] = 0, (v56 = CFArrayGetCount(v53)) != 0))
        {
          v57 = v56;
          v58 = 0;
          while (1)
          {
            v59 = CFArrayGetValueAtIndex(v54, v58);
            v60 = streamPlaylistParser_deserializeContentKeySpecifier(0, v59, v89);
            if (v60)
            {
              break;
            }

            FigMultivariantPlaylistAddContentKeySpecifier(v55, v89[0]);
            if (v89[0])
            {
              CFRelease(v89[0]);
              v89[0] = 0;
            }

            if (v57 == ++v58)
            {
              goto LABEL_61;
            }
          }

          v41 = v60;
          if (v89[0])
          {
            v76 = v89[0];
LABEL_93:
            CFRelease(v76);
          }
        }

        else
        {
LABEL_61:
          v61 = FigWireDictionaryGetArray(0, *MEMORY[0x1E6963060]);
          if (!v61 || (v62 = v61, v82 = v83, v88 = 0, !CFArrayGetCount(v61)))
          {
LABEL_86:
            v41 = 0;
            *v77 = v83;
            v83 = 0;
            goto LABEL_87;
          }

          OUTLINED_FUNCTION_417_0();
          key = *MEMORY[0x1E6963070];
          v79 = *MEMORY[0x1E6963018];
          v78 = *MEMORY[0x1E6963080];
          v63 = *MEMORY[0x1E6963078];
          while (1)
          {
            v64 = CFArrayGetValueAtIndex(v62, 0);
            if (v64)
            {
              v65 = v64;
              v66 = CFDictionaryGetValue(v64, key);
              v67 = v66;
              if (v66)
              {
                CFRetain(v66);
              }

              v68 = CFDictionaryGetValue(v65, v79);
              v69 = v68;
              if (v68)
              {
                CFRetain(v68);
              }

              v70 = CFDictionaryGetValue(v65, v78);
              v71 = v70;
              if (v70)
              {
                CFRetain(v70);
              }

              v72 = CFDictionaryGetValue(v65, v63);
              v73 = v72;
              if (v72)
              {
                CFRetain(v72);
              }

              v89[0] = 0;
              FigCFDictionaryGetInt64IfPresent();
              v41 = FigSessionDataSpecifierCreate(v67, v69, v71, v73, v89[0], &v88);
              if (v67)
              {
                CFRelease(v67);
              }

              if (v69)
              {
                CFRelease(v69);
              }

              if (v71)
              {
                CFRelease(v71);
              }

              if (v73)
              {
                CFRelease(v73);
              }

              if (v41)
              {
                break;
              }
            }

            FigMultivariantPlaylistAddSessionDataSpecifier(v82, v88);
            if (v88)
            {
              CFRelease(v88);
              v88 = 0;
            }

            OUTLINED_FUNCTION_377_0();
            if (v74)
            {
              goto LABEL_86;
            }
          }

          v76 = v88;
          if (v88)
          {
            goto LABEL_93;
          }
        }
      }
    }
  }

  else
  {
    v41 = 0;
  }

LABEL_87:
  if (v83)
  {
    CFRelease(v83);
  }

  return v41;
}

uint64_t FigStreamPlaylistParserDeserializeMediaPlaylist(uint64_t a1, CFTypeRef *a2)
{
  v121 = 0;
  if (!a2)
  {
    v96 = 0;
    goto LABEL_108;
  }

  v4 = v3;
  if (*a2)
  {
    v6 = CFRetain(*a2);
    v121 = v6;
  }

  else
  {
    AllocatorForMedia = FigGetAllocatorForMedia();
    BlockBufferData = FigMediaPlaylistCreateEmpty(AllocatorForMedia, &v121);
    if (BlockBufferData)
    {
      goto LABEL_116;
    }

    v6 = v121;
  }

  FigStreamPlaylistInitializeIndexValidation(v6);
  FigGetAllocatorForMedia();
  BlockBufferData = FigXPCMessageCreateBlockBufferData();
  if (BlockBufferData)
  {
    goto LABEL_116;
  }

  FigGetAllocatorForMedia();
  BlockBufferData = FigRemote_CreateCFTypeFromSerializedAtomDataBlockBuffer();
  if (BlockBufferData)
  {
    goto LABEL_116;
  }

  v116 = a2;
  v9 = v121;
  v122 = 0;
  Value = CFDictionaryGetValue(0, *MEMORY[0x1E6962ED8]);
  v11 = Value;
  if (!Value)
  {
    FigMediaPlaylistSetDateEntryArray(v9, 0);
LABEL_13:
    OUTLINED_FUNCTION_1_3();
    FigCFDictionaryGetDoubleIfPresent();
    v18 = OUTLINED_FUNCTION_16_2();
    FigMediaPlaylistSetPlaylistActiveDurationSecs(v18, v19);
    OUTLINED_FUNCTION_1_3();
    FigCFDictionaryGetInt64IfPresent();
    FigMediaPlaylistSetTargetDuration(v9, v123);
    OUTLINED_FUNCTION_1_3();
    FigCFDictionaryGetDoubleIfPresent();
    v20 = OUTLINED_FUNCTION_16_2();
    FigMediaPlaylistSetPartTargetDuration(v20, v21);
    OUTLINED_FUNCTION_1_3();
    FigCFDictionaryGetDoubleIfPresent();
    v22 = OUTLINED_FUNCTION_16_2();
    FigMediaPlaylistSetHoldBackDuration(v22, v23);
    OUTLINED_FUNCTION_1_3();
    FigCFDictionaryGetDoubleIfPresent();
    v24 = OUTLINED_FUNCTION_16_2();
    FigMediaPlaylistSetPartHoldBackDuration(v24, v25);
    OUTLINED_FUNCTION_1_3();
    FigCFDictionaryGetDoubleIfPresent();
    v26 = OUTLINED_FUNCTION_16_2();
    FigMediaPlaylistSetSkipDeltaBoundary(v26, v27);
    OUTLINED_FUNCTION_1_3();
    FigCFDictionaryGetInt64IfPresent();
    FigMediaPlaylistSetPlaylistType(v9, v123);
    OUTLINED_FUNCTION_2_3();
    FigCFDictionaryGetBooleanIfPresent();
    v28 = OUTLINED_FUNCTION_15_1();
    FigMediaPlaylistSetHasEndTag(v28, v29);
    OUTLINED_FUNCTION_2_3();
    FigCFDictionaryGetBooleanIfPresent();
    v30 = OUTLINED_FUNCTION_15_1();
    FigMediaPlaylistSetHasMediaSequence(v30, v31);
    OUTLINED_FUNCTION_2_3();
    FigCFDictionaryGetBooleanIfPresent();
    v32 = OUTLINED_FUNCTION_15_1();
    FigMediaPlaylistSetHasOnlyIFrames(v32, v33);
    OUTLINED_FUNCTION_2_3();
    FigCFDictionaryGetBooleanIfPresent();
    v34 = OUTLINED_FUNCTION_15_1();
    FigMediaPlaylistSetHasIndependentParts(v34, v35);
    OUTLINED_FUNCTION_2_3();
    FigCFDictionaryGetBooleanIfPresent();
    v36 = OUTLINED_FUNCTION_15_1();
    FigMediaPlaylistSetHasDiscontinuitySequence(v36, v37);
    OUTLINED_FUNCTION_2_3();
    FigCFDictionaryGetBooleanIfPresent();
    v38 = OUTLINED_FUNCTION_15_1();
    FigMediaPlaylistSetHasPartTag(v38, v39);
    OUTLINED_FUNCTION_2_3();
    FigCFDictionaryGetBooleanIfPresent();
    v40 = OUTLINED_FUNCTION_15_1();
    FigMediaPlaylistSetDoesServerSupportsBlockingReload(v40, v41);
    OUTLINED_FUNCTION_2_3();
    FigCFDictionaryGetBooleanIfPresent();
    v42 = OUTLINED_FUNCTION_15_1();
    FigMediaPlaylistSetCanSkipDATERANGES(v42, v43);
    OUTLINED_FUNCTION_1_3();
    FigCFDictionaryGetInt64IfPresent();
    if (v123)
    {
      OUTLINED_FUNCTION_1_3();
      FigCFDictionaryGetInt64IfPresent();
      FigMediaPlaylistSetVersion(v9, v123);
    }

    v4 = *MEMORY[0x1E6962F60];
    OUTLINED_FUNCTION_2_3();
    FigCFDictionaryGetBooleanIfPresent();
    if (v123)
    {
      OUTLINED_FUNCTION_2_3();
      FigCFDictionaryGetBooleanIfPresent();
      v44 = OUTLINED_FUNCTION_15_1();
      FigMediaPlaylistSetHasStartTime(v44, v45);
      OUTLINED_FUNCTION_1_3();
      FigCFDictionaryGetDoubleIfPresent();
      v46 = OUTLINED_FUNCTION_16_2();
      FigMediaPlaylistSetStartTimeValue(v46, v47);
      OUTLINED_FUNCTION_2_3();
      FigCFDictionaryGetBooleanIfPresent();
      v48 = OUTLINED_FUNCTION_15_1();
      FigMediaPlaylistSetIsStartTimePrecise(v48, v49);
    }

    OUTLINED_FUNCTION_1_3();
    FigCFDictionaryGetInt64IfPresent();
    FigMediaPlaylistSetDateStampCount(v9, v123);
    if (!FigMediaPlaylistHasIndependentSegments(v9))
    {
      OUTLINED_FUNCTION_2_3();
      FigCFDictionaryGetBooleanIfPresent();
      v50 = OUTLINED_FUNCTION_15_1();
      FigMediaPlaylistSetHasIndependentSegments(v50, v51);
    }

    OUTLINED_FUNCTION_1_3();
    FigCFDictionaryGetDoubleIfPresent();
    v52 = OUTLINED_FUNCTION_16_2();
    FigMediaPlaylistSetAvgSegmentDuration(v52, v53);
    OUTLINED_FUNCTION_1_3();
    FigCFDictionaryGetDoubleIfPresent();
    v54 = OUTLINED_FUNCTION_16_2();
    FigMediaPlaylistSetMaxSegmentDuration(v54, v55);
    v56 = FigWireDictionaryCopyCFDate(0, *MEMORY[0x1E6962FD8], &v122);
    v57 = v122;
    if (!v56)
    {
      FigMediaPlaylistSetParseDate(v9, v122);
      v57 = v122;
    }

    if (v57)
    {
      CFRelease(v57);
    }

    if (!v11)
    {
      goto LABEL_25;
    }

LABEL_24:
    CFRelease(v11);
    goto LABEL_25;
  }

  CFRetain(Value);
  FigMediaPlaylistSetDateEntryArray(v9, 0);
  Count = CFArrayGetCount(v11);
  if (Count < 1)
  {
    goto LABEL_13;
  }

  v2 = Count;
  v13 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v11, v13);
    v15 = FigGetAllocatorForMedia();
    MutableCopy = CFDictionaryCreateMutableCopy(v15, 0, ValueAtIndex);
    if (!MutableCopy)
    {
      break;
    }

    v17 = MutableCopy;
    FigMediaPlaylistAddDateEntryArray(v9, MutableCopy);
    CFRelease(v17);
    if (v2 == ++v13)
    {
      goto LABEL_13;
    }
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM();
  if (v11)
  {
    goto LABEL_24;
  }

LABEL_25:
  Array = FigWireDictionaryGetArray(0, *MEMORY[0x1E6962EB0]);
  if (Array && OUTLINED_FUNCTION_27_2(Array))
  {
    OUTLINED_FUNCTION_417_0();
    do
    {
      v59 = CFArrayGetValueAtIndex(v4, v2);
      v60 = streamPlaylistParser_deserializeContentKeySpecifier(v9, v59, &v123);
      v61 = v123;
      if (v60)
      {
LABEL_117:
        v96 = v60;
        if (!v61)
        {
          goto LABEL_121;
        }

        goto LABEL_118;
      }

      FigMediaPlaylistAddContentKeySpecifier(v9, v123);
      if (v123)
      {
        CFRelease(v123);
        v123 = 0;
      }

      OUTLINED_FUNCTION_377_0();
    }

    while (!v62);
  }

  v63 = FigWireDictionaryGetArray(0, *MEMORY[0x1E6962FA0]);
  if (v63 && OUTLINED_FUNCTION_27_2(v63))
  {
    OUTLINED_FUNCTION_417_0();
    do
    {
      v64 = CFArrayGetValueAtIndex(v4, v2);
      UInt64AtIndex = FigWireArrayGetUInt64AtIndex(v64, 13);
      MediaParsedIndexToEntryMap = FigMediaPlaylistGetMediaParsedIndexToEntryMap(v9);
      v67 = CFDictionaryGetValue(MediaParsedIndexToEntryMap, UInt64AtIndex);
      v123 = v67;
      if (v67 && (CFRetain(v67), v123))
      {
        v71 = OUTLINED_FUNCTION_11_2();
        v74 = streamPlaylistParser_deserializeMediaFileEntry(v71, v72, v73);
        if (v74)
        {
LABEL_123:
          v96 = v74;
          v61 = v123;
          if (!v123)
          {
            goto LABEL_121;
          }

LABEL_118:
          v115 = v61;
LABEL_120:
          CFRelease(v115);
          goto LABEL_121;
        }
      }

      else
      {
        v68 = OUTLINED_FUNCTION_11_2();
        v60 = streamPlaylistParser_deserializeMediaFileEntry(v68, v69, v70);
        v61 = v123;
        if (v60)
        {
          goto LABEL_117;
        }

        FigMediaPlaylistAddMapSegmentSpecifier(v9, v123);
      }

      if (v123)
      {
        CFRelease(v123);
        v123 = 0;
      }

      OUTLINED_FUNCTION_377_0();
    }

    while (!v62);
  }

  v75 = FigWireDictionaryGetArray(0, *MEMORY[0x1E6962FB0]);
  if (v75 && OUTLINED_FUNCTION_27_2(v75))
  {
    OUTLINED_FUNCTION_417_0();
    do
    {
      v76 = CFArrayGetValueAtIndex(v4, v2);
      v77 = FigWireArrayGetUInt64AtIndex(v76, 13);
      v78 = FigMediaPlaylistGetMediaParsedIndexToEntryMap(v9);
      v79 = CFDictionaryGetValue(v78, v77);
      v123 = v79;
      if (v79 && (CFRetain(v79), v123))
      {
        v83 = OUTLINED_FUNCTION_11_2();
        v74 = streamPlaylistParser_deserializeMediaFileEntry(v83, v84, v85);
        if (v74)
        {
          goto LABEL_123;
        }
      }

      else
      {
        v80 = OUTLINED_FUNCTION_11_2();
        v60 = streamPlaylistParser_deserializeMediaFileEntry(v80, v81, v82);
        v61 = v123;
        if (v60)
        {
          goto LABEL_117;
        }

        FigMediaPlaylistAddMediaSegmentSpecifier(v9, v123);
      }

      if (v123)
      {
        CFRelease(v123);
        v123 = 0;
      }

      OUTLINED_FUNCTION_377_0();
    }

    while (!v62);
  }

  theArray = FigWireDictionaryGetArray(0, *MEMORY[0x1E6963050]);
  if (!theArray || (v118 = v121, FigMediaPlaylistSetRenditionReportSpecifiers(v121, 0), (v119 = CFArrayGetCount(theArray)) == 0))
  {
LABEL_76:
    v98 = FigWireDictionaryGetArray(0, *MEMORY[0x1E6962ED0]);
    if (!v98 || (BlockBufferData = streamPlaylistParser_deserializeTaggedRangeEntries(v121, v98), !BlockBufferData))
    {
      v99 = v121;
      v123 = 0;
      v100 = FigWireDictionaryGetArray(0, *MEMORY[0x1E6963028]);
      v101 = streamPlaylistParser_deserializeMediaFileEntry(v99, v100, &v123);
      if (!v101)
      {
        FigMediaPlaylistSetPreloadHint(v99, v123);
        if (v123)
        {
          CFRelease(v123);
          v123 = 0;
        }

        v102 = FigWireDictionaryGetArray(0, *MEMORY[0x1E6963030]);
        v101 = streamPlaylistParser_deserializeMediaFileEntry(v99, v102, &v123);
        if (!v101)
        {
          FigMediaPlaylistSetPreloadMapHint(v99, v123);
          if (v123)
          {
            CFRelease(v123);
          }

          v103 = CFDictionaryGetValue(0, *MEMORY[0x1E6963048]);
          v104 = v103;
          if (v103)
          {
            CFRetain(v103);
          }

          v105 = CFDictionaryGetValue(0, *MEMORY[0x1E6963040]);
          v106 = v105;
          if (v105)
          {
            CFRetain(v105);
          }

          v107 = v121;
          v122 = 0;
          v123 = 0;
          if (v104 && CFArrayGetCount(v104) >= 1)
          {
            v108 = 0;
            do
            {
              OUTLINED_FUNCTION_11_2();
              FigCFArrayGetInt64AtIndex();
              if (v123)
              {
                v109 = FigMediaPlaylistGetMediaParsedIndexToEntryMap(v107);
                v110 = CFDictionaryGetValue(v109, v123);
                if (v110)
                {
                  FigMediaSegmentSpecifierSetIsReadInCurrent(v110, 1);
                }
              }

              ++v108;
            }

            while (CFArrayGetCount(v104) > v108);
          }

          if (v106 && CFArrayGetCount(v106) >= 1)
          {
            v111 = 0;
            do
            {
              FigCFArrayGetInt64AtIndex();
              if (v122)
              {
                CryptKeyParsedIndexToEntryMap = FigMediaPlaylistGetCryptKeyParsedIndexToEntryMap(v107);
                v113 = CFDictionaryGetValue(CryptKeyParsedIndexToEntryMap, v122);
                if (v113)
                {
                  FigContentKeySpecifierSetIsReadInCurrent(v113, 1);
                }
              }

              ++v111;
            }

            while (CFArrayGetCount(v106) > v111);
          }

          v96 = 0;
          if (!*v116)
          {
            *v116 = v121;
            v121 = 0;
          }

          goto LABEL_104;
        }
      }

      v96 = v101;
      v115 = v123;
      if (!v123)
      {
        goto LABEL_121;
      }

      goto LABEL_120;
    }

LABEL_116:
    v96 = BlockBufferData;
    goto LABEL_121;
  }

  v86 = 0;
  key = *MEMORY[0x1E6963058];
  while (1)
  {
    v87 = CFArrayGetValueAtIndex(theArray, v86);
    v122 = 0;
    if (v87)
    {
      break;
    }

    FigMediaPlaylistAddRenditionReportSpecifier(v118, 0);
LABEL_71:
    if (v119 == ++v86)
    {
      goto LABEL_76;
    }
  }

  v88 = CFDictionaryGetValue(v87, key);
  v89 = v88;
  if (v88)
  {
    CFRetain(v88);
  }

  OUTLINED_FUNCTION_7_2();
  FigCFDictionaryGetInt64IfPresent();
  v90 = v123;
  OUTLINED_FUNCTION_7_2();
  FigCFDictionaryGetInt64IfPresent();
  v91 = v123;
  OUTLINED_FUNCTION_7_2();
  FigCFDictionaryGetInt64IfPresent();
  v92 = v123;
  OUTLINED_FUNCTION_7_2();
  FigCFDictionaryGetInt64IfPresent();
  v93 = v123;
  LOBYTE(v123) = 0;
  FigCFDictionaryGetBooleanIfPresent();
  v94 = v123;
  LOBYTE(v123) = 0;
  FigCFDictionaryGetBooleanIfPresent();
  v95 = v123;
  v96 = FigRenditionReportSpecifierCreate(v89, v90, v91, v92, v93, 1, v94, &v122);
  if (!v96)
  {
    FigRenditionReportSpecifierSetReadInCurrent(v122, v95);
    v97 = v122;
    v122 = 0;
    if (!v89)
    {
      goto LABEL_66;
    }

    goto LABEL_65;
  }

  v97 = 0;
  if (v89)
  {
LABEL_65:
    CFRelease(v89);
  }

LABEL_66:
  if (v122)
  {
    CFRelease(v122);
  }

  if (!v96)
  {
    FigMediaPlaylistAddRenditionReportSpecifier(v118, v97);
    if (v97)
    {
      CFRelease(v97);
    }

    goto LABEL_71;
  }

  if (v97)
  {
    v115 = v97;
    goto LABEL_120;
  }

LABEL_121:
  v104 = 0;
  v106 = 0;
LABEL_104:
  if (v104)
  {
    CFRelease(v104);
  }

  if (v106)
  {
    CFRelease(v106);
  }

LABEL_108:
  if (v121)
  {
    CFRelease(v121);
  }

  return v96;
}

uint64_t FigWireDictionarySetCFString(int a1, int a2, const void *a3)
{
  if (!a3)
  {
    return 0;
  }

  v3 = OUTLINED_FUNCTION_12_1(a1, a2, a3);
  if (v3 == CFStringGetTypeID())
  {
    OUTLINED_FUNCTION_17_1();
    return 0;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t FigWireDictionarySetCFDictionary(int a1, int a2, const void *a3)
{
  if (!a3)
  {
    return 0;
  }

  v3 = OUTLINED_FUNCTION_12_1(a1, a2, a3);
  if (v3 == CFDictionaryGetTypeID())
  {
    OUTLINED_FUNCTION_17_1();
    return 0;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t FigWireDictionarySetCFDate(int a1, int a2, CFTypeRef cf)
{
  if (!cf)
  {
    return 0;
  }

  v4 = CFGetTypeID(cf);
  if (v4 == CFDateGetTypeID())
  {
    MEMORY[0x19A8CCD90](cf);

    return FigCFDictionarySetDouble();
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();

    return FigSignalErrorAtGM();
  }
}

uint64_t FigWireDictionarySetCFData(int a1, int a2, const void *a3)
{
  if (!a3)
  {
    return 0;
  }

  v3 = OUTLINED_FUNCTION_12_1(a1, a2, a3);
  if (v3 == CFDataGetTypeID())
  {
    OUTLINED_FUNCTION_17_1();
    return 0;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t FigWireDictionaryCopyCFDate(uint64_t a1, uint64_t a2, CFDateRef *a3)
{
  if (!a3)
  {
    return 0;
  }

  result = FigCFDictionaryGetDoubleIfPresent();
  if (result)
  {
    AllocatorForMedia = FigGetAllocatorForMedia();
    v6 = CFDateCreate(AllocatorForMedia, 0.0);
    *a3 = v6;
    if (v6)
    {
      return 0;
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_4();
      return FigSignalErrorAtGM();
    }
  }

  return result;
}

uint64_t FigWireDictionarySetCFURL(int a1, int a2, const void *a3)
{
  if (!a3)
  {
    return 0;
  }

  v3 = OUTLINED_FUNCTION_12_1(a1, a2, a3);
  if (v3 == CFURLGetTypeID())
  {
    OUTLINED_FUNCTION_17_1();
    return 0;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

void streamPlaylistParser_serializeAlternateApplier(__CFArray *a1, CFMutableArrayRef *a2)
{
  v3 = FigAlternateCopyAsSerializedRepresentation(a1, 0);
  if (v3)
  {
    v4 = v3;
    CFArrayAppendValue(*a2, v3);

    CFRelease(v4);
  }
}

CFMutableArrayRef streamPlaylistParser_copySerializedRepresentationForMediaGroups(const __CFDictionary *a1)
{
  if (FigCFDictionaryGetCount() < 1)
  {
    return 0;
  }

  AllocatorForMedia = FigGetAllocatorForMedia();
  Mutable = CFArrayCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    CFDictionaryApplyFunction(a1, streamPlaylistParser_copySerializedRepresentationForMediaGroupsApplier, Mutable);
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    FigSignalErrorAtGM();
  }

  return Mutable;
}

void streamPlaylistParser_copySerializedRepresentationForMediaGroupsApplier(uint64_t a1, const __CFDictionary *a2, __CFArray *a3)
{
  v4 = FigStreamPlaylistParserCopySerializedRepresentationForMediaGroup(a1, a2);
  if (v4)
  {
    v5 = v4;
    CFArrayAppendValue(a3, v4);

    CFRelease(v5);
  }
}

uint64_t streamPlaylistParser_serializeMediaSegmentSpecifier(uint64_t a1, const void *a2, uint64_t a3, __CFArray **a4)
{
  if (!a2)
  {
    return 0;
  }

  AllocatorForMedia = FigGetAllocatorForMedia();
  v9 = 21;
  Mutable = CFArrayCreateMutable(AllocatorForMedia, 21, MEMORY[0x1E695E9C0]);
  v11 = *MEMORY[0x1E695E738];
  do
  {
    CFArrayAppendValue(Mutable, v11);
    --v9;
  }

  while (v9);
  if (!Mutable)
  {
    fig_log_get_emitter();
    return FigSignalErrorAtGM();
  }

  if (FigMediaSegmentSpecifierGetURLString(a2) && FigMediaSegmentSpecifierGetURLString(a2))
  {
    v12 = OUTLINED_FUNCTION_14_0();
    CFArraySetValueAtIndex(v12, 0, v13);
  }

  if (FigMediaSegmentSpecifierGetContentKeySpecifier(a2))
  {
    ContentKeySpecifier = FigMediaSegmentSpecifierGetContentKeySpecifier(a2);
    FigContentKeySpecifierGetCryptKeyParsedIndex(ContentKeySpecifier);
    v15 = OUTLINED_FUNCTION_14_0();
    FigWireArraySetUInt64AtIndex(v15, 1, v16);
  }

  if (FigMediaSegmentSpecifierGetMapSegmentSpecifier(a2))
  {
    MapSegmentSpecifier = FigMediaSegmentSpecifierGetMapSegmentSpecifier(a2);
    FigMediaSegmentSpecifierGetMediaParsedIndex(MapSegmentSpecifier);
    v18 = OUTLINED_FUNCTION_14_0();
    FigWireArraySetUInt64AtIndex(v18, 2, v19);
  }

  PartialSegments = FigMediaSegmentSpecifierGetPartialSegments(a2);
  if (PartialSegments)
  {
    if (CFArrayGetCount(PartialSegments) >= 1)
    {
      v51 = OUTLINED_FUNCTION_182_1();
      v54 = streamPlaylistParser_serializeMediaSegmentSpecifiers(v51, v52, a3, v53);
      if (v54)
      {
        v50 = v54;
LABEL_27:
        CFRelease(Mutable);
        return v50;
      }
    }
  }

  FigMediaSegmentSpecifierGetMediaSequence(a2);
  v21 = OUTLINED_FUNCTION_14_0();
  FigWireArraySetUInt64AtIndex(v21, 4, v22);
  FigMediaSegmentSpecifierGetDiscontinuityDomain(a2);
  v23 = OUTLINED_FUNCTION_14_0();
  FigWireArraySetInt64AtIndex(v23, 5, v24);
  FigMediaSegmentSpecifierGetStartOffset(a2);
  v25 = OUTLINED_FUNCTION_14_0();
  FigWireArraySetInt64AtIndex(v25, 6, v26);
  FigMediaSegmentSpecifierGetBytesToRead(a2);
  v27 = OUTLINED_FUNCTION_14_0();
  FigWireArraySetInt64AtIndex(v27, 7, v28);
  TimeInSeconds = FigMediaSegmentSpecifierGetTimeInSeconds(a2);
  FigWireArraySetDoubleAtIndex(Mutable, 8, TimeInSeconds);
  TimeOffsetInSeconds = FigMediaSegmentSpecifierGetTimeOffsetInSeconds(a2);
  FigWireArraySetDoubleAtIndex(Mutable, 9, TimeOffsetInSeconds);
  BitRate = FigMediaSegmentSpecifierGetBitRate(a2);
  FigWireArraySetDoubleAtIndex(Mutable, 10, BitRate);
  if (FigMediaSegmentSpecifierGetIV(a2))
  {
    v32 = OUTLINED_FUNCTION_14_0();
    CFArraySetValueAtIndex(v32, 14, v33);
  }

  if (FigMediaSegmentSpecifierGetDateStamp(a2))
  {
    v34 = MEMORY[0x19A8CCD90]();
    FigWireArraySetDoubleAtIndex(Mutable, 20, v34);
  }

  ImputedDate = FigMediaSegmentSpecifierGetImputedDate(a2);
  FigWireArraySetDoubleAtIndex(Mutable, 11, ImputedDate);
  Type = FigMediaSegmentSpecifierGetType(a2);
  FigWireArraySetUInt64AtIndex(Mutable, 12, Type);
  FigMediaSegmentSpecifierIsMarkedIndependent(a2);
  v37 = OUTLINED_FUNCTION_10_2();
  CFArraySetValueAtIndex(v37, 15, v38);
  FigMediaSegmentSpecifierIsDiscontinuity(a2);
  v39 = OUTLINED_FUNCTION_10_2();
  CFArraySetValueAtIndex(v39, 16, v40);
  FigMediaSegmentSpecifierIsMarkedAsGap(a2);
  v41 = OUTLINED_FUNCTION_10_2();
  CFArraySetValueAtIndex(v41, 17, v42);
  FigMediaSegmentSpecifierIsFragment(a2);
  v43 = OUTLINED_FUNCTION_10_2();
  CFArraySetValueAtIndex(v43, 18, v44);
  FigMediaSegmentSpecifierAreFragmentsExpired(a2);
  v45 = OUTLINED_FUNCTION_10_2();
  CFArraySetValueAtIndex(v45, 19, v46);
  FigMediaSegmentSpecifierGetMediaParsedIndex(a2);
  v47 = OUTLINED_FUNCTION_14_0();
  FigWireArraySetUInt64AtIndex(v47, 13, v48);
  if (FigMediaSegmentSpecifierGetMediaParsedIndex(a2))
  {
    MediaParsedIndex = FigMediaSegmentSpecifierGetMediaParsedIndex(a2);
    FigMediaPlaylistAddToMediaParsedIndexToEntryMap(a1, MediaParsedIndex, a2);
  }

  v50 = 0;
  if (!a4)
  {
    goto LABEL_27;
  }

  *a4 = Mutable;
  return v50;
}

void streamPlaylistParser_copyDeserializedRepresentationForMediaGroups(const __CFArray *a1, __CFDictionary **a2)
{
  key = 0;
  value = 0;
  if (a1)
  {
    Count = CFArrayGetCount(a1);
    if (a2)
    {
      if (Count >= 1)
      {
        AllocatorForMedia = FigGetAllocatorForMedia();
        Mutable = CFDictionaryCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (Mutable)
        {
          v8 = Mutable;
          if (CFArrayGetCount(a1) < 1)
          {
            *a2 = v8;
          }

          else
          {
            OUTLINED_FUNCTION_417_0();
            do
            {
              ValueAtIndex = CFArrayGetValueAtIndex(a1, v2);
              FigStreamPlaylistParserCreateMediaGroup(ValueAtIndex, &key, &value);
              v10 = value;
              if (value && key)
              {
                CFDictionarySetValue(v8, key, value);
                v10 = value;
              }

              if (v10)
              {
                CFRelease(v10);
                value = 0;
              }

              if (key)
              {
                CFRelease(key);
                key = 0;
              }

              OUTLINED_FUNCTION_377_0();
            }

            while (!v11);
            v12 = value;
            *a2 = v8;
            if (v12)
            {
              CFRelease(v12);
              if (key)
              {
                CFRelease(key);
              }
            }
          }
        }

        else
        {
          fig_log_get_emitter();

          FigSignalErrorAtGM();
        }
      }
    }
  }
}

uint64_t streamPlaylistParser_deserializeContentKeySpecifier(uint64_t a1, const __CFDictionary *a2, CFTypeRef *a3)
{
  v3 = 0;
  cf = 0;
  if (a2 && a3)
  {
    OUTLINED_FUNCTION_26_2();
    v7 = v16;
    OUTLINED_FUNCTION_26_2();
    v8 = v16;
    Value = CFDictionaryGetValue(a2, *MEMORY[0x1E6962EC8]);
    v10 = Value;
    if (Value)
    {
      CFRetain(Value);
    }

    v11 = CFDictionaryGetValue(a2, *MEMORY[0x1E69630C0]);
    v12 = v11;
    if (v11)
    {
      CFRetain(v11);
    }

    LOBYTE(v16) = 0;
    FigCFDictionaryGetBooleanIfPresent();
    OUTLINED_FUNCTION_26_2();
    v13 = v16;
    v3 = FigContentKeySpecifierCreate(v7, v10, v8, v12, &cf);
    if (v3)
    {
      if (cf)
      {
        CFRelease(cf);
      }
    }

    else
    {
      FigContentKeySpecifierSetIsReadInCurrent(cf, 1);
      FigContentKeySpecifierSetIsChangedInCurrent(cf, 0);
      FigContentKeySpecifierSetCryptKeyParsedIndex(cf, v13);
      FigContentKeySpecifierSetIsPrefetchKey(cf, 0);
      if (a1 && v13)
      {
        FigMediaPlaylistAddToCryptKeyParsedIndexToEntryMap(a1, v13, cf);
      }

      *a3 = cf;
      cf = 0;
    }

    if (v10)
    {
      CFRelease(v10);
    }

    if (v12)
    {
      CFRelease(v12);
    }
  }

  return v3;
}

uint64_t streamPlaylistParser_deserializeMediaFileEntry(uint64_t a1, const __CFArray *a2, CFTypeRef *a3)
{
  v4 = 0;
  v77 = 0;
  if (!a2 || !a3)
  {
    return v4;
  }

  v6 = v3;
  v9 = *a3;
  if (*a3)
  {
    v77 = *a3;
    FigMediaSegmentSpecifierSetURLString(v9, 0);
    FigMediaSegmentSpecifierSetIV(v9, 0);
    FigMediaSegmentSpecifierSetDateStamp(v9, 0);
  }

  else
  {
    AllocatorForMedia = FigGetAllocatorForMedia();
    Empty = FigMediaSegmentSpecifierCreateEmpty(AllocatorForMedia, &v77);
    if (Empty)
    {
      v4 = Empty;
      goto LABEL_37;
    }
  }

  v76 = FigWireArrayCopyCFTypeAtIndex(a2, 0);
  FigMediaSegmentSpecifierSetURLString(v77, v76);
  UInt64AtIndex = FigWireArrayGetUInt64AtIndex(a2, 1);
  v13 = FigWireArrayGetUInt64AtIndex(a2, 2);
  CryptKeyParsedIndexToEntryMap = FigMediaPlaylistGetCryptKeyParsedIndexToEntryMap(a1);
  Value = CFDictionaryGetValue(CryptKeyParsedIndexToEntryMap, UInt64AtIndex);
  if (Value)
  {
    FigMediaSegmentSpecifierSetContentKeySpecifier(v77, Value);
  }

  MediaParsedIndexToEntryMap = FigMediaPlaylistGetMediaParsedIndexToEntryMap(a1);
  v17 = CFDictionaryGetValue(MediaParsedIndexToEntryMap, v13);
  if (v17)
  {
    FigMediaSegmentSpecifierSetMapSegmentSpecifier(v77, v17);
  }

  v18 = FigWireArrayCopyCFTypeAtIndex(a2, 3);
  v19 = v18;
  if (!v18 || (v20 = v77, cf = 0, (Count = CFArrayGetCount(v18)) == 0))
  {
LABEL_21:
    v30 = OUTLINED_FUNCTION_13_1();
    FigWireArrayGetUInt64AtIndex(v30, 4);
    v31 = OUTLINED_FUNCTION_171_1();
    FigMediaSegmentSpecifierSetMediaSequence(v31, v32);
    v33 = OUTLINED_FUNCTION_13_1();
    FigWireArrayGetUInt64AtIndex(v33, 5);
    v34 = OUTLINED_FUNCTION_171_1();
    FigMediaSegmentSpecifierSetIsDiscontinuityDomain(v34, v35);
    v36 = OUTLINED_FUNCTION_13_1();
    FigWireArrayGetUInt64AtIndex(v36, 6);
    v37 = OUTLINED_FUNCTION_171_1();
    FigMediaSegmentSpecifierSetStartOffset(v37, v38);
    v39 = OUTLINED_FUNCTION_13_1();
    FigWireArrayGetUInt64AtIndex(v39, 7);
    v40 = OUTLINED_FUNCTION_171_1();
    FigMediaSegmentSpecifierSetBytesToRead(v40, v41);
    v42 = OUTLINED_FUNCTION_13_1();
    DoubleAtIndex = FigWireArrayGetDoubleAtIndex(v42, 8);
    FigMediaSegmentSpecifierSetTimeInSeconds(v6, DoubleAtIndex);
    v44 = OUTLINED_FUNCTION_13_1();
    v45 = FigWireArrayGetDoubleAtIndex(v44, 9);
    FigMediaSegmentSpecifierSetTimeOffsetInSeconds(v6, v45);
    v46 = OUTLINED_FUNCTION_13_1();
    v47 = FigWireArrayGetDoubleAtIndex(v46, 10);
    FigMediaSegmentSpecifierSetBitRate(v6, v47);
    v48 = FigWireArrayCopyCFTypeAtIndex(a2, 14);
    FigMediaSegmentSpecifierSetIV(v77, v48);
    v49 = FigWireArrayGetDoubleAtIndex(a2, 20);
    if (v49 == 0.0)
    {
      v52 = 0;
      v53 = v76;
    }

    else
    {
      v50 = v49;
      v51 = FigGetAllocatorForMedia();
      v52 = CFDateCreate(v51, v50);
      v53 = v76;
      if (!v52)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_6_3();
        FigSignalErrorAtGM();
      }
    }

    FigMediaSegmentSpecifierSetDateStamp(v77, v52);
    v54 = OUTLINED_FUNCTION_13_1();
    v55 = FigWireArrayGetDoubleAtIndex(v54, 11);
    FigMediaSegmentSpecifierSetImputedDate(v6, v55);
    v56 = OUTLINED_FUNCTION_13_1();
    FigWireArrayGetUInt64AtIndex(v56, 12);
    v57 = OUTLINED_FUNCTION_171_1();
    FigMediaSegmentSpecifierSetType(v57, v58);
    v59 = OUTLINED_FUNCTION_13_1();
    FigWireArrayGetBooleanAtIndex(v59, 15);
    v60 = OUTLINED_FUNCTION_171_1();
    FigMediaSegmentSpecifierSetIsIndependent(v60, v61);
    v62 = OUTLINED_FUNCTION_13_1();
    FigWireArrayGetBooleanAtIndex(v62, 16);
    v63 = OUTLINED_FUNCTION_171_1();
    FigMediaSegmentSpecifierSetIsDiscontinuity(v63, v64);
    v65 = OUTLINED_FUNCTION_13_1();
    FigWireArrayGetBooleanAtIndex(v65, 17);
    v66 = OUTLINED_FUNCTION_171_1();
    FigMediaSegmentSpecifierSetIsMarkedAsGap(v66, v67);
    v68 = OUTLINED_FUNCTION_13_1();
    FigWireArrayGetBooleanAtIndex(v68, 18);
    v69 = OUTLINED_FUNCTION_171_1();
    FigMediaSegmentSpecifierSetIsFragment(v69, v70);
    v71 = OUTLINED_FUNCTION_13_1();
    FigWireArrayGetBooleanAtIndex(v71, 19);
    v72 = OUTLINED_FUNCTION_171_1();
    FigMediaSegmentSpecifierSetAreFragmentsExpired(v72, v73);
    FigMediaSegmentSpecifierSetIsReadInCurrent(v77, 1);
    v74 = FigWireArrayGetUInt64AtIndex(a2, 13);
    FigMediaSegmentSpecifierSetMediaParsedIndex(v77, v74);
    if (v74)
    {
      FigMediaPlaylistAddToMediaParsedIndexToEntryMap(a1, v74, v77);
    }

    *a3 = v77;
    v77 = 0;
    if (v48)
    {
      CFRelease(v48);
    }

    if (v52)
    {
      CFRelease(v52);
    }

    v4 = 0;
    goto LABEL_32;
  }

  v22 = Count;
  v23 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v19, v23);
    v6 = FigWireArrayGetUInt64AtIndex(ValueAtIndex, 13);
    v25 = FigMediaPlaylistGetMediaParsedIndexToEntryMap(a1);
    v26 = CFDictionaryGetValue(v25, v6);
    cf = v26;
    if (v26)
    {
      CFRetain(v26);
      if (cf)
      {
        break;
      }
    }

    v27 = streamPlaylistParser_deserializeMediaFileEntry(a1, ValueAtIndex, &cf);
    v28 = cf;
    if (v27)
    {
      v4 = v27;
      goto LABEL_43;
    }

    FigMediaSegmentSpecifierAddPartialSegment(v20, cf);
LABEL_18:
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (v22 == ++v23)
    {
      goto LABEL_21;
    }
  }

  v29 = streamPlaylistParser_deserializeMediaFileEntry(a1, ValueAtIndex, &cf);
  if (!v29)
  {
    goto LABEL_18;
  }

  v4 = v29;
  v28 = cf;
LABEL_43:
  v53 = v76;
  if (v28)
  {
    CFRelease(v28);
  }

LABEL_32:
  if (v53)
  {
    CFRelease(v53);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (!v9)
  {
LABEL_37:
    if (v77)
    {
      CFRelease(v77);
    }
  }

  return v4;
}

uint64_t FigStreamPlaylistParserCreateMediaGroupFromXPCDictionary_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t streamPlaylistParser_copySerializedRepresentationForMediaGroupApplier_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t streamPlaylistParser_copySerializedRepresentationForMediaGroupApplier_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t FigWireArraySetUInt64AtIndex_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t FigWireArraySetInt64AtIndex_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t FigWireArraySetDoubleAtIndex_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t FigImageQueueGaugeCreate_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCaptionRendererCGOutputCreate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCaptionRendererCGOutputCreate_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCaptionRendererCGOutputCreate_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCPEOctaviaPKDMovieIDCreateCommon(uint64_t a1, unint64_t a2, unint64_t a3, const void *a4, void *a5)
{
  if (a2 | a3 && a5)
  {
    v7 = a3;
    *a5 = 0;
    if (_MergedGlobals_14 != -1)
    {
      dispatch_once(&_MergedGlobals_14, &__block_literal_global_0);
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v10 = Instance;
      v11 = dispatch_queue_create("com.apple.FigCPEOctaviaPKDMovieID", 0);
      v10[2] = v11;
      if (v11)
      {
        if (v7)
        {
          v12 = Qt84D4aopGP;
        }

        else
        {
          v12 = pduR7VAgOpwwTZi6E;
        }

        v13 = f5dnLMQHpqo6KM9x;
        if (v7)
        {
          v13 = at7Z1NwMd;
        }

        v10[8] = v12;
        v10[9] = v13;
        v14 = n2qn70S3cN6uyWbw;
        if (v7)
        {
          v14 = mfGhVpprP0qip8G;
        }

        v10[10] = v14;
        if (v7)
        {
          v15 = 7;
        }

        else
        {
          v15 = 3;
          if (!a2)
          {
            v16 = 0;
            goto LABEL_19;
          }

          v7 = a2;
        }

        v16 = CFRetain(v7);
LABEL_19:
        v10[v15] = v16;
        if (a4)
        {
          v17 = CFRetain(a4);
        }

        else
        {
          v17 = 0;
        }

        v10[11] = v17;
        NeroTransportRegisterObjectWithFlags();
        result = 0;
        *a5 = v10;
        return result;
      }

      CFRelease(v10);
    }

    return 4294955145;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

void __FigCPEOctaviaPKDMovieIDGetValue_block_invoke(uint64_t a1)
{
  v34 = 0;
  v2 = *(a1 + 40);
  if (!v2[5])
  {
    v11 = 0;
    OUTLINED_FUNCTION_2_4();
    v32 = -12158;
LABEL_29:
    *(v31 + 24) = v32;
    goto LABEL_21;
  }

  v3 = v2[7];
  if (v3)
  {
    MovieID = PKDKeyManagerGetMovieID(v3, *(a1 + 48), &v34);
    OUTLINED_FUNCTION_0_5(MovieID);
    if (v5)
    {
      goto LABEL_26;
    }

    v6 = *(a1 + 48);
  }

  else
  {
    v7 = PKDMovieIDGetValue(v2[3], *(a1 + 48), &v34);
    OUTLINED_FUNCTION_0_5(v7);
    if (v8)
    {
      goto LABEL_26;
    }

    v6 = PKDMovieIDGetInfo(*(*(a1 + 40) + 24));
  }

  v9 = *(a1 + 40);
  *(v9 + 32) = v34;
  if (*(v9 + 48))
  {
    v10 = 0;
    v11 = 0;
    goto LABEL_17;
  }

  v12 = (*(v9 + 64))();
  OUTLINED_FUNCTION_0_5(v12);
  if (v13)
  {
LABEL_26:
    v11 = 0;
    goto LABEL_21;
  }

  v14 = *MEMORY[0x1E695E480];
  v15 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], 0, 0, *MEMORY[0x1E695E498]);
  if (!v15)
  {
    v11 = 0;
    OUTLINED_FUNCTION_2_4();
    v32 = -12151;
    goto LABEL_29;
  }

  v10 = v15;
  MutableCopy = CFDictionaryCreateMutableCopy(v14, 0, v6);
  v11 = MutableCopy;
  if (!MutableCopy)
  {
    OUTLINED_FUNCTION_2_4();
    *(v33 + 24) = -12151;
LABEL_20:
    CFRelease(v10);
    goto LABEL_21;
  }

  CFDictionarySetValue(MutableCopy, @"DIM", v10);
  SerializedAtomDataBlockBufferForCFType = FigRemote_CreateSerializedAtomDataBlockBufferForCFType();
  OUTLINED_FUNCTION_0_5(SerializedAtomDataBlockBufferForCFType);
  if (v18)
  {
    goto LABEL_20;
  }

  v19 = NeroTransportSendSyncMessageCreatingReply();
  OUTLINED_FUNCTION_0_5(v19);
  if (v20)
  {
    goto LABEL_20;
  }

  CFTypeFromSerializedAtomDataBlockBuffer = FigRemote_CreateCFTypeFromSerializedAtomDataBlockBuffer();
  OUTLINED_FUNCTION_0_5(CFTypeFromSerializedAtomDataBlockBuffer);
  if (v22)
  {
    goto LABEL_20;
  }

  v23 = *(*(a1 + 40) + 72);
  v24 = v34;
  BytePtr = CFDataGetBytePtr(0);
  Length = CFDataGetLength(0);
  v27 = v23(v24, BytePtr, Length);
  OUTLINED_FUNCTION_0_5(v27);
  if (v28)
  {
    goto LABEL_20;
  }

  *(*(a1 + 40) + 48) = 1;
LABEL_17:
  v29 = *(a1 + 56);
  if (v29)
  {
    *v29 = v34;
  }

  if (v10)
  {
    goto LABEL_20;
  }

LABEL_21:
  if (v11)
  {
    CFRelease(v11);
  }

  OUTLINED_FUNCTION_2_4();
  if (*(v30 + 24))
  {
    (*(*(a1 + 40) + 80))(v34);
    *(*(a1 + 40) + 48) = 0;
  }
}

uint64_t FigCPEOctaviaPKDCryptorCreate(const void *a1, unint64_t *a2, void *a3, const __CFDictionary *a4, const void *a5, const void *a6, CFTypeRef *a7)
{
  v7 = 0;
  v33 = 0;
  cf = 0;
  values = 0;
  v8 = 4294955146;
  if (!a4 || !a6 || !a1 || !a2 || !a3 || !a7)
  {
    goto LABEL_34;
  }

  OUTLINED_FUNCTION_5_3();
  CFNumberFromRemoteObjectRef = CMDerivedObjectCreate();
  if (CFNumberFromRemoteObjectRef)
  {
    goto LABEL_43;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage || (v18 = DerivedStorage, v19 = FigCFWeakReferenceHolderCreateWithReferencedObject(), (*(v18 + 40) = v19) == 0) || (v20 = FigSimpleMutexCreate(), (*(v18 + 32) = v20) == 0))
  {
    v7 = 0;
    goto LABEL_42;
  }

  v31 = a7;
  *v18 = CFRetain(a1);
  *(v18 + 96) = 1;
  *(v18 + 104) = CFRetain(@"com.apple.pkd");
  *(v18 + 112) = CFRetain(a3);
  v21 = a5 ? CFRetain(a5) : 0;
  *(v18 + 120) = v21;
  *(v18 + 48) = CFRetain(a2);
  CFNumberFromRemoteObjectRef = FigCPEOctaviaPKDMovieIDGetSerializationToken(a2, &v33);
  if (CFNumberFromRemoteObjectRef || (CFNumberFromRemoteObjectRef = FigTransportCreateCFNumberFromRemoteObjectRef(), CFNumberFromRemoteObjectRef))
  {
LABEL_43:
    v8 = CFNumberFromRemoteObjectRef;
    v7 = 0;
    goto LABEL_34;
  }

  v7 = CFDictionaryCreate(*MEMORY[0x1E695E480], &kFigCPENeroKey_MovieIDSerializationToken, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v7)
  {
LABEL_42:
    v8 = 4294955145;
    goto LABEL_34;
  }

  v22 = FigPKDCPECryptorCreate(a1, a2[3], 0, a3, a5, a4, (v18 + 16));
  if (v22)
  {
    goto LABEL_33;
  }

  v22 = FigPKDOctaviaCPECryptorAddListenerOnLocalCryptor();
  if (v22)
  {
    goto LABEL_33;
  }

  v22 = FigOctaviaCPECryptorCreate(a1, @"com.apple.pkd", a3, v7, a5, a6, (v18 + 8));
  if (v22)
  {
    goto LABEL_33;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  v22 = OUTLINED_FUNCTION_4_4();
  if (v22)
  {
    goto LABEL_33;
  }

  Value = CFDictionaryGetValue(a4, @"AuditToken");
  if (Value)
  {
    v24 = Value;
    v25 = CFGetTypeID(Value);
    if (v25 == CFDataGetTypeID())
    {
      *(v18 + 64) = CFRetain(v24);
    }
  }

  v26 = CFDictionaryGetValue(a4, @"CryptKeyAttributes");
  if (!v26)
  {
    *(v18 + 152) = 0;
    goto LABEL_32;
  }

  v27 = CFRetain(v26);
  *(v18 + 152) = v27;
  if (!v27)
  {
LABEL_32:
    fig_log_get_emitter();
    v22 = FigSignalErrorAtGM();
LABEL_33:
    v8 = v22;
    goto LABEL_34;
  }

  v28 = CFDictionaryGetValue(a4, @"iTunesRentalID");
  if (v28)
  {
    v28 = CFRetain(v28);
  }

  *(v18 + 80) = v28;
  v29 = CFDictionaryGetValue(a4, @"iTunesAccountID");
  if (v29)
  {
    v29 = CFRetain(v29);
  }

  v8 = 0;
  *(v18 + 88) = v29;
  *v31 = cf;
  cf = 0;
LABEL_34:
  if (values)
  {
    CFRelease(values);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v8;
}

uint64_t FigCPEOctaviaPKDCryptorCreateForMSE(const void *a1, const void *a2, void *a3, void *a4, const __CFDictionary *a5, const void *a6, const void *a7, CFTypeRef *a8)
{
  v8 = 0;
  v33 = 0;
  cf = 0;
  values = 0;
  v9 = 4294955146;
  if (!a5 || !a7 || !a4 || !a2 || !a1 || !a3 || !a8)
  {
    goto LABEL_34;
  }

  OUTLINED_FUNCTION_5_3();
  CFNumberFromRemoteObjectRef = CMDerivedObjectCreate();
  if (CFNumberFromRemoteObjectRef)
  {
    goto LABEL_43;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage || (v19 = DerivedStorage, v20 = FigSimpleMutexCreate(), (*(v19 + 32) = v20) == 0) || (v21 = FigCFWeakReferenceHolderCreateWithReferencedObject(), (*(v19 + 40) = v21) == 0))
  {
    v8 = 0;
    goto LABEL_42;
  }

  *v19 = CFRetain(a1);
  *(v19 + 96) = 1;
  v22 = @"com.apple.pkdmse" ? CFRetain(@"com.apple.pkdmse") : 0;
  *(v19 + 104) = v22;
  *(v19 + 112) = CFRetain(a4);
  v23 = a6 ? CFRetain(a6) : 0;
  *(v19 + 120) = v23;
  *(v19 + 56) = CFRetain(a3);
  *(v19 + 48) = CFRetain(a2);
  CFNumberFromRemoteObjectRef = FigCPEOctaviaPKDMovieIDGetSerializationToken(a2, &v33);
  if (CFNumberFromRemoteObjectRef || (CFNumberFromRemoteObjectRef = FigTransportCreateCFNumberFromRemoteObjectRef(), CFNumberFromRemoteObjectRef))
  {
LABEL_43:
    v9 = CFNumberFromRemoteObjectRef;
    v8 = 0;
    goto LABEL_34;
  }

  v8 = CFDictionaryCreate(*MEMORY[0x1E695E480], &kFigCPENeroKey_MovieIDSerializationToken, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v8)
  {
LABEL_42:
    v9 = 4294955145;
    goto LABEL_34;
  }

  v24 = FigPKDMSECPECryptorCreate(a1, a3, a4, a6, a5, (v19 + 16));
  if (!v24)
  {
    v24 = FigPKDOctaviaCPECryptorAddListenerOnLocalCryptor();
    if (!v24)
    {
      v24 = FigOctaviaCPECryptorCreate(a1, @"com.apple.pkdmse", a4, v8, a6, a7, (v19 + 8));
      if (!v24)
      {
        CMNotificationCenterGetDefaultLocalCenter();
        v24 = OUTLINED_FUNCTION_4_4();
        if (!v24)
        {
          Value = CFDictionaryGetValue(a5, @"AuditToken");
          if (Value)
          {
            v26 = Value;
            v27 = CFGetTypeID(Value);
            if (v27 == CFDataGetTypeID())
            {
              *(v19 + 64) = CFRetain(v26);
            }
          }

          v28 = CFDictionaryGetValue(a5, @"CryptKeyAttributes");
          if (v28)
          {
            v29 = CFRetain(v28);
            *(v19 + 152) = v29;
            if (v29)
            {
              v9 = 0;
              *a8 = cf;
              cf = 0;
              goto LABEL_34;
            }
          }

          else
          {
            *(v19 + 152) = 0;
          }

          fig_log_get_emitter();
          v24 = FigSignalErrorAtGM();
        }
      }
    }
  }

  v9 = v24;
LABEL_34:
  if (values)
  {
    CFRelease(values);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v9;
}

uint64_t FigPKDOctaviaCPECryptorCopyProperty(const void *a1, const void *a2, uint64_t a3, uint64_t *a4)
{
  CMBaseObjectGetDerivedStorage();
  v9 = 4294955146;
  if (a2 && a4)
  {
    OUTLINED_FUNCTION_11_3();
    if (*(v4 + 24))
    {
      OUTLINED_FUNCTION_6_4();
      if (v11)
      {
        v9 = 4294954511;
      }

      else
      {
        v9 = v10;
      }

      goto LABEL_18;
    }

    if (CFEqual(a2, *MEMORY[0x1E6961098]))
    {
      v9 = 4294951076;
LABEL_18:
      FigSimpleMutexUnlock();
      return v9;
    }

    if (CFEqual(a2, *MEMORY[0x1E69610E8]))
    {
      SInt32 = FigCFNumberCreateSInt32();
LABEL_11:
      v9 = 0;
      *a4 = SInt32;
      goto LABEL_18;
    }

    if (CFEqual(a2, *MEMORY[0x1E69610F0]) || CFEqual(a2, *MEMORY[0x1E6961138]))
    {
      v13 = *(v4 + 16);
      v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v14)
      {
        v9 = 4294954514;
        goto LABEL_18;
      }

      v15 = v14(v13, a2, a3, a4);
      goto LABEL_16;
    }

    if (CFEqual(a2, *MEMORY[0x1E6961130]))
    {
      v15 = EnsureUUID(a1);
      if (v15)
      {
        goto LABEL_16;
      }

      SInt32 = *(v4 + 144);
      if (!SInt32)
      {
        goto LABEL_11;
      }
    }

    else
    {
      if (CFEqual(a2, *MEMORY[0x1E69610B0]))
      {
        v15 = CopyCurrentRequestID(v4, a4);
LABEL_16:
        v9 = v15;
        goto LABEL_18;
      }

      if (!CFEqual(a2, *MEMORY[0x1E69610A8]))
      {
        v15 = CMBaseObjectCopyProperty(*(v4 + 8), a2, a3, a4);
        goto LABEL_16;
      }

      SInt32 = *(v4 + 152);
      if (!SInt32)
      {
        goto LABEL_11;
      }
    }

    SInt32 = CFRetain(SInt32);
    goto LABEL_11;
  }

  return v9;
}

uint64_t FigPKDOctaviaCPECryptorSetProperty(const void *a1, const void *a2, void *a3)
{
  v4 = a3;
  values = a3;
  CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    return 4294955146;
  }

  OUTLINED_FUNCTION_11_3();
  if (*(v3 + 24))
  {
    OUTLINED_FUNCTION_6_4();
    if (v8)
    {
      v9 = 4294954511;
    }

    else
    {
      v9 = v7;
    }

    goto LABEL_21;
  }

  v10 = *MEMORY[0x1E6961108];
  if (!CFEqual(a2, *MEMORY[0x1E6961108]))
  {
    v16 = CFEqual(a2, *MEMORY[0x1E69610E0]);
    v17 = MEMORY[0x1E695E480];
    if (v16)
    {
      if (v4)
      {
        v18 = CFGetTypeID(v4);
        if (v18 == CFErrorGetTypeID())
        {
          *(v3 + 96) = 1;
          v19 = *(v3 + 16);
          v20 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v20)
          {
            v13 = v20(v19, a2, v4);
            if (v13)
            {
              goto LABEL_53;
            }

            v21 = *(v3 + 8);
            v22 = *(*(CMBaseObjectGetVTable() + 8) + 56);
            if (v22)
            {
              v13 = v22(v21, a2, v4);
              if (!v13)
              {
                v23 = CFDictionaryCreate(*v17, MEMORY[0x1E6961018], &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                if (v23)
                {
                  v24 = v23;
                  OUTLINED_FUNCTION_12_2();
                  CMNotificationCenterGetDefaultLocalCenter();
                  FigDispatchAsyncPostNotification();
                  CFRelease(v24);
                  v9 = 0;
                }

                else
                {
                  v9 = 4294955145;
                }

                goto LABEL_21;
              }

              goto LABEL_53;
            }
          }

          goto LABEL_20;
        }
      }

LABEL_102:
      v9 = 4294955136;
      goto LABEL_21;
    }

    v26 = *MEMORY[0x1E69610F0];
    if (!CFEqual(a2, *MEMORY[0x1E69610F0]))
    {
      if (CFEqual(a2, *MEMORY[0x1E6961138]))
      {
        if (!v4)
        {
          goto LABEL_102;
        }

        v37 = CFGetTypeID(v4);
        if (v37 != CFBooleanGetTypeID())
        {
          goto LABEL_102;
        }

        *(v3 + 72) = CFBooleanGetValue(v4);
        v38 = *(v3 + 16);
      }

      else
      {
        v38 = *(v3 + 8);
      }

      v13 = CMBaseObjectSetProperty(v38, a2, v4);
      goto LABEL_53;
    }

    v78 = 0;
    cf = 0;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (!*(DerivedStorage + 48))
    {
      goto LABEL_107;
    }

    if (!v4)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1_4();
      v39 = FigSignalErrorAtGM();
      goto LABEL_105;
    }

    v28 = DerivedStorage;
    v29 = CFGetTypeID(v4);
    if (v29 != CFDataGetTypeID())
    {
LABEL_107:
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1_4();
      v33 = FigSignalErrorAtGM();
      goto LABEL_108;
    }

    v30 = *(v28[6] + 56);
    v31 = v28[2];
    v32 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v32)
    {
      v33 = v32(v31, v26, v4);
      if (v33)
      {
        goto LABEL_108;
      }

      v26 = v28[2];
      v34 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v34)
      {
        v35 = *v17;
        v71 = *MEMORY[0x1E69610F8];
        v33 = v34(v26);
        if (!v33)
        {
          if (v30)
          {
            v36 = CFPropertyListCreateWithData(v35, v4, 0, 0, 0);
            if (v36)
            {
              v4 = v36;
              v26 = CFGetTypeID(v36);
              if (v26 == CFDictionaryGetTypeID())
              {
                goto LABEL_55;
              }

              fig_log_get_emitter();
              OUTLINED_FUNCTION_1_4();
              v9 = FigSignalErrorAtGM();
              CFRelease(v4);
            }

            else
            {
              fig_log_get_emitter();
              OUTLINED_FUNCTION_1_4();
              v9 = FigSignalErrorAtGM();
            }

            v4 = 0;
            OUTLINED_FUNCTION_189_0();
            if (v9)
            {
              goto LABEL_37;
            }
          }

          else
          {
            v4 = 0;
          }

LABEL_55:
          v39 = FigCPEOctaviaPKDMovieIDGetValue(v28[6], v4, &v78);
          if (!v39)
          {
            v17 = cf;
            v75 = CMBaseObjectGetDerivedStorage();
            v80 = 0;
            v72 = v30;
            if (v30)
            {
              v40 = uZOxRFTqHPWsyRz;
            }

            else
            {
              v40 = kNsH5DWSn1J;
            }

            v41 = OUTLINED_FUNCTION_9_2();
            Mutable = CFDictionaryCreateMutable(v41, v42, v43, v44);
            if (Mutable)
            {
              v46 = Mutable;
              v47 = OUTLINED_FUNCTION_9_2();
              v76 = CFDictionaryCreateMutable(v47, v48, v49, v50);
              if (v76)
              {
                allocator = v35;
                UInt64 = FigCFNumberCreateUInt64();
                if (UInt64)
                {
                  CFDictionarySetValue(v46, @"aMII4QYJ", UInt64);
                  CFDictionarySetValue(v46, @"igoeg", v17);
                  CFDictionarySetValue(v46, @"lGxB4ky", *(v75 + 64));
                  FigCFDictionarySetInt32();
                  v52 = v40(v46, v76);
                  if (!v52)
                  {
                    Value = CFDictionaryGetValue(v76, @"CBQGVxY");
                    if (Value)
                    {
                      v17 = CFRetain(Value);
                    }

                    else
                    {
                      v17 = 0;
                    }

                    v54 = CFDictionaryGetValue(v76, @"igoeg");
                    if (!v54 || (v55 = CFRetain(v54)) == 0)
                    {
                      v73 = 0;
                      v40 = 0;
                      goto LABEL_74;
                    }

                    v73 = v55;
                    v40 = *(v75 + 16);
                    v56 = *(CMBaseObjectGetVTable() + 16);
                    if (*v56 >= 6uLL && (v57 = v56[21]) != 0)
                    {
                      v58 = v57(v40, v73, &v80);
                      if (!v58)
                      {
                        v59 = CFDictionaryCreate(allocator, MEMORY[0x1E6961080], &v80, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                        if (v59)
                        {
                          v40 = v59;
                          OUTLINED_FUNCTION_12_2();
                          CMNotificationCenterGetDefaultLocalCenter();
                          FigDispatchAsyncPostNotification();
LABEL_74:
                          v9 = 0;
                          goto LABEL_75;
                        }

                        fig_log_get_emitter();
                        OUTLINED_FUNCTION_1_4();
                        v58 = FigSignalErrorAtGM();
                      }

                      v9 = v58;
                      if (!v17)
                      {
LABEL_79:
                        CFRelease(v46);
                        CFRelease(v76);
                        OUTLINED_FUNCTION_189_0();
                        goto LABEL_80;
                      }
                    }

                    else
                    {
                      v9 = 4294954514;
                      if (!v17)
                      {
                        goto LABEL_79;
                      }
                    }

                    CFRelease(v17);
                    goto LABEL_79;
                  }
                }

                else
                {
                  fig_log_get_emitter();
                  OUTLINED_FUNCTION_1_4();
                  v52 = FigSignalErrorAtGM();
                }

                v9 = v52;
                v17 = 0;
                v73 = 0;
                v40 = 0;
LABEL_75:
                CFRelease(v46);
                CFRelease(v76);
                if (!UInt64)
                {
LABEL_81:
                  v35 = allocator;
                  v60 = v72;
                  if (v73)
                  {
                    CFRelease(v73);
                  }

LABEL_83:
                  if (v80)
                  {
                    CFRelease(v80);
                  }

                  if (v40)
                  {
                    CFRelease(v40);
                  }

                  if (!v9)
                  {
                    if (!v60)
                    {
                      v26 = 0;
LABEL_90:
                      v61 = v28[1];
                      v62 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                      if (v62)
                      {
                        v63 = v62(v61, v71, v17);
LABEL_92:
                        v9 = v63;
                        goto LABEL_37;
                      }

LABEL_36:
                      v9 = 4294954514;
LABEL_37:
                      if (cf)
                      {
                        CFRelease(cf);
                      }

                      if (v17)
                      {
                        CFRelease(v17);
                      }

                      if (v4)
                      {
                        CFRelease(v4);
                      }

                      if (v26)
                      {
                        CFRelease(v26);
                      }

                      if (!v9)
                      {
                        *(v3 + 72) = 1;
                      }

                      goto LABEL_21;
                    }

                    v64 = CMBaseObjectGetDerivedStorage();
                    v65 = EnsureUUID(a1);
                    if (!v65)
                    {
                      BytesFromCFString = FigCreateBytesFromCFString();
                      if (BytesFromCFString)
                      {
                        v67 = BytesFromCFString;
                        Length = CFStringGetLength(*(v64 + 144));
                        v26 = CFDataCreate(v35, v67, Length);
                        if (v26)
                        {
                          v9 = 0;
                        }

                        else
                        {
                          fig_log_get_emitter();
                          OUTLINED_FUNCTION_1_4();
                          v9 = FigSignalErrorAtGM();
                        }

                        CFAllocatorDeallocate(v35, v67);
                        if (v9)
                        {
                          goto LABEL_37;
                        }
                      }

                      else
                      {
                        fig_log_get_emitter();
                        OUTLINED_FUNCTION_1_4();
                        v9 = FigSignalErrorAtGM();
                        v26 = 0;
                        if (v9)
                        {
                          goto LABEL_37;
                        }
                      }

                      v69 = v28[1];
                      v70 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                      if (!v70)
                      {
                        goto LABEL_36;
                      }

                      v63 = v70(v69, *MEMORY[0x1E6961088], v26);
                      if (v63)
                      {
                        goto LABEL_92;
                      }

                      goto LABEL_90;
                    }

                    v9 = v65;
                  }

LABEL_106:
                  v26 = 0;
                  goto LABEL_37;
                }

LABEL_80:
                CFRelease(UInt64);
                goto LABEL_81;
              }

              fig_log_get_emitter();
              OUTLINED_FUNCTION_1_4();
              v9 = FigSignalErrorAtGM();
              CFRelease(v46);
            }

            else
            {
              fig_log_get_emitter();
              OUTLINED_FUNCTION_1_4();
              v9 = FigSignalErrorAtGM();
            }

            OUTLINED_FUNCTION_189_0();
            v60 = v72;
            goto LABEL_83;
          }

LABEL_105:
          v9 = v39;
          v17 = 0;
          goto LABEL_106;
        }

LABEL_108:
        v9 = v33;
        OUTLINED_FUNCTION_189_0();
        v4 = 0;
        goto LABEL_37;
      }
    }

    OUTLINED_FUNCTION_189_0();
    v4 = 0;
    goto LABEL_36;
  }

  v11 = *(v3 + 16);
  v12 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v12)
  {
    v13 = v12(v11, v10, v4);
    if (v13)
    {
LABEL_53:
      v9 = v13;
      goto LABEL_21;
    }

    v14 = *(v3 + 8);
    v15 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v15)
    {
      v13 = v15(v14, v10, v4);
      goto LABEL_53;
    }
  }

LABEL_20:
  v9 = 4294954514;
LABEL_21:
  FigSimpleMutexUnlock();
  return v9;
}

uint64_t EnsureUUID(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 144))
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
    *(v3 + 144) = v8;
    if (v8)
    {
      v9 = 0;
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_4();
      v9 = FigSignalErrorAtGM();
    }

    CFRelease(v6);
    return v9;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t FigPKDOctaviaCPECryptorGetExternalProtectionMethods(uint64_t a1, uint64_t a2)
{
  CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    return 4294955146;
  }

  OUTLINED_FUNCTION_11_3();
  if (*(v2 + 24))
  {
    OUTLINED_FUNCTION_6_4();
    if (v5)
    {
      v6 = 4294954511;
    }

    else
    {
      v6 = v4;
    }
  }

  else
  {
    v7 = *(v2 + 8);
    v8 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v8)
    {
      v8(v7, a2);
    }

    v6 = 0;
  }

  FigSimpleMutexUnlock();
  return v6;
}

uint64_t FigPKDOctaviaCPECryptorGetAggregateExternalProtectionStatus(uint64_t a1, uint64_t a2, uint64_t a3)
{
  CMBaseObjectGetDerivedStorage();
  if (!a3)
  {
    return 4294955146;
  }

  OUTLINED_FUNCTION_11_3();
  if (*(v3 + 24))
  {
    OUTLINED_FUNCTION_6_4();
    if (v7)
    {
      v8 = 4294954511;
    }

    else
    {
      v8 = v6;
    }
  }

  else
  {
    v9 = *(v3 + 8);
    v10 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v10)
    {
      v10(v9, a2, a3);
    }

    v8 = 0;
  }

  FigSimpleMutexUnlock();
  return v8;
}

uint64_t FigPKDOctaviaCPECryptorCreateKeyRequest(uint64_t a1, const __CFDictionary *a2, const void *Value, void *a4)
{
  CMBaseObjectGetDerivedStorage();
  v8 = 4294955146;
  if (!a2 || !a4)
  {
    return v8;
  }

  OUTLINED_FUNCTION_11_3();
  if (*(v4 + 24))
  {
    v8 = 4294954511;
LABEL_5:
    FigSimpleMutexUnlock();
    return v8;
  }

  if (!PKDKeyRequestIDsMatch(a2, *(v4 + 136)))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_3();
    v8 = FigSignalErrorAtGM();
    goto LABEL_5;
  }

  v9 = *MEMORY[0x1E695E480];
  v10 = OUTLINED_FUNCTION_9_2();
  MutableCopy = CFDictionaryCreateMutableCopy(v10, v11, a2);
  if (!MutableCopy)
  {
LABEL_48:
    v8 = 4294955145;
    goto LABEL_5;
  }

  v13 = MutableCopy;
  v14 = *MEMORY[0x1E6962AE8];
  CFDictionaryRemoveValue(MutableCopy, *MEMORY[0x1E6962AE8]);
  v15 = OUTLINED_FUNCTION_9_2();
  v17 = CFDictionaryCreateMutableCopy(v15, v16, a2);
  if (!v17)
  {
    CFRelease(v13);
    goto LABEL_48;
  }

  v18 = v17;
  CFDictionaryRemoveValue(v17, v14);
  if (*(v4 + 72))
  {
    v19 = *(v4 + 16);
    v20 = *(CMBaseObjectGetVTable() + 16);
    if (*v20 >= 4uLL && (v21 = v20[11]) != 0)
    {
      v8 = v21(v19, v13, Value, a4);
      OUTLINED_FUNCTION_13_2();
    }

    else
    {
      OUTLINED_FUNCTION_13_2();
      v8 = 4294954514;
    }

    goto LABEL_40;
  }

  v45 = Value;
  v44 = dispatch_group_create();
  v53 = 0;
  v54 = &v53;
  v55 = 0x2000000000;
  v56 = 0;
  v49 = 0;
  v50 = &v49;
  v51 = 0x2000000000;
  v52 = 0;
  Value = CFDictionaryGetValue(a2, *MEMORY[0x1E6962AC0]);
  if (!Value)
  {
    LODWORD(v9) = 0;
    goto LABEL_50;
  }

  v43 = v13;
  v22 = *(v4 + 80);
  v23 = *(v4 + 88);
  v57 = 0;
  v24 = OUTLINED_FUNCTION_9_2();
  Mutable = CFDictionaryCreateMutable(v24, v25, v26, v27);
  if (!Mutable)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_3();
    v8 = FigSignalErrorAtGM();
LABEL_53:
    OUTLINED_FUNCTION_13_2();
    goto LABEL_27;
  }

  v29 = Mutable;
  v30 = OUTLINED_FUNCTION_9_2();
  v34 = CFDictionaryCreateMutable(v30, v31, v32, v33);
  if (!v34)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_3();
    v8 = FigSignalErrorAtGM();
    CFRelease(v29);
    goto LABEL_53;
  }

  v35 = v34;
  FigCFDictionarySetInt32();
  if (v22)
  {
    CFDictionarySetValue(v29, @"lK1", v22);
  }

  if (v23)
  {
    CFDictionarySetValue(v29, @"DhpWkh3rnR", v23);
  }

  CFDictionarySetValue(v29, @"Y7bdIsnh7", Value);
  if (nS1Q9ljw9esy9(v29, v35))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_3();
    v8 = FigSignalErrorAtGM();
    OUTLINED_FUNCTION_13_2();
  }

  else
  {
    FigCFDictionaryGetInt64IfPresent();
    LODWORD(v9) = v57;
    v36 = CFDictionaryGetValue(v35, @"xNJu5eepP");
    if (v36 && (v37 = CFRetain(v36)) != 0)
    {
      Value = v37;
      v8 = 0;
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_3_3();
      v8 = FigSignalErrorAtGM();
      Value = 0;
    }
  }

  CFRelease(v29);
  CFRelease(v35);
LABEL_27:
  v13 = v43;
  if (v8)
  {
LABEL_50:
    v41 = 0;
    goto LABEL_39;
  }

  CFDictionaryAddValue(v18, *MEMORY[0x1E6962B10], Value);
  v38 = OUTLINED_FUNCTION_12_2();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __FigPKDOctaviaCPECryptorCreateKeyRequest_block_invoke;
  block[3] = &unk_1E7476E90;
  block[6] = v4;
  block[7] = v18;
  block[8] = v45;
  block[4] = &v53;
  block[5] = &v49;
  v48 = v9;
  dispatch_group_async(v44, v38, block);
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 0x40000000;
  v46[2] = __FigPKDOctaviaCPECryptorCreateKeyRequest_block_invoke_2;
  v46[3] = &__block_descriptor_tmp_33;
  v46[4] = v4;
  v46[5] = v43;
  v46[6] = v45;
  dispatch_group_async(v44, v38, v46);
  dispatch_group_wait(v44, 0xFFFFFFFFFFFFFFFFLL);
  if (*(v4 + 76))
  {
    v39 = v50;
  }

  else
  {
    v39 = v50;
    if (!*(v54 + 6))
    {
      *a4 = v50[3];
      v39[3] = 0;
    }
  }

  v40 = v39[3];
  if (v40)
  {
    CFRelease(v40);
  }

  if (v44)
  {
    dispatch_release(v44);
  }

  v8 = *(v54 + 6);
  if (!v8)
  {
    v8 = *(v4 + 76);
  }

  v41 = 1;
LABEL_39:
  _Block_object_dispose(&v49, 8);
  _Block_object_dispose(&v53, 8);
  if (v41)
  {
LABEL_40:
    FigSimpleMutexUnlock();
  }

  CFRelease(v13);
  CFRelease(v18);
  if (Value)
  {
    CFRelease(Value);
  }

  if (v9)
  {
    qo0PLbO2vEnVix1GkQeB8LR(v9);
  }

  return v8;
}

uint64_t FigPKDOctaviaCPECryptorSetKeyRequestResponse(uint64_t a1, uint64_t a2, const __CFDictionary *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    v9 = 0;
    v10 = 0;
    v11 = 4294955146;
    goto LABEL_8;
  }

  v7 = DerivedStorage;
  if (a3)
  {
    Value = CFDictionaryGetValue(a3, *MEMORY[0x1E6962B28]);
    v9 = CFDictionaryGetValue(a3, *MEMORY[0x1E6962B30]) == *MEMORY[0x1E695E4D0];
  }

  else
  {
    Value = 0;
    v9 = 0;
  }

  FigSimpleMutexLock();
  v10 = *(v7 + 136);
  if (*(v7 + 24))
  {
    v11 = 4294954511;
  }

  else
  {
    if (*(v7 + 72))
    {
      v13 = *(v7 + 16);
    }

    else
    {
      v13 = *(v7 + 8);
    }

    v14 = *(CMBaseObjectGetVTable() + 16);
    if (*v14 >= 4uLL && (v15 = v14[12]) != 0)
    {
      v11 = v15(v13, a2, a3);
      if (!Value)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v11 = 4294954514;
      if (!Value)
      {
        goto LABEL_7;
      }
    }

    v16 = *MEMORY[0x1E695E480];
    Current = CFAbsoluteTimeGetCurrent();
    v18 = CFDateCreate(v16, Current);
    TimeIntervalSinceDate = CFDateGetTimeIntervalSinceDate(Value, v18);
    if (TimeIntervalSinceDate > 0.0 && (v20 = TimeIntervalSinceDate, StopAndReleaseTimer((v7 + 128)), v21 = OUTLINED_FUNCTION_12_2(), v22 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v21), (*(v7 + 128) = v22) != 0))
    {
      if (*(v7 + 40))
      {
        CFRetain(*(v7 + 40));
        v22 = *(v7 + 128);
        v23 = *(v7 + 40);
      }

      else
      {
        v23 = 0;
      }

      dispatch_set_context(v22, v23);
      v24 = *(v7 + 128);
      v25 = dispatch_time(0, (v20 * 1000000000.0));
      dispatch_source_set_timer(v24, v25, 0xFFFFFFFFFFFFFFFFLL, 0xF4240uLL);
      dispatch_source_set_event_handler_f(*(v7 + 128), RenewalTimerCallback);
      dispatch_source_set_cancel_handler_f(*(v7 + 128), FigCFRelease_0);
      dispatch_resume(*(v7 + 128));
      v11 = 0;
      if (!v18)
      {
        goto LABEL_7;
      }
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1_4();
      v11 = FigSignalErrorAtGM();
      if (!v18)
      {
        goto LABEL_7;
      }
    }

    CFRelease(v18);
  }

LABEL_7:
  FigSimpleMutexUnlock();
LABEL_8:
  PKDDispatchKeyResponseNotification(a1, v11, v10, v9);
  return v11;
}

uint64_t FigPKDOctaviaCPECryptorGetSerializationToken(uint64_t a1, uint64_t a2)
{
  CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    return 4294955146;
  }

  OUTLINED_FUNCTION_11_3();
  if (*(v2 + 24))
  {
    v4 = 4294954511;
  }

  else
  {
    v5 = *(v2 + 8);
    v6 = *(CMBaseObjectGetVTable() + 16);
    if (*v6 >= 4uLL && (v7 = v6[13]) != 0)
    {
      v4 = v7(v5, a2);
    }

    else
    {
      v4 = 4294954514;
    }
  }

  FigSimpleMutexUnlock();
  return v4;
}

uint64_t FigPKDOctaviaCPECryptorTestAndSetKeyRequestState(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, void *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = 0;
  v28 = 0;
  v11 = 4294955136;
  if (a2 && a3)
  {
    v12 = DerivedStorage;
    FigSimpleMutexLock();
    if (*(v12 + 24))
    {
      v10 = 0;
      v11 = 4294954511;
      goto LABEL_35;
    }

    if (*(v12 + 72))
    {
      v13 = *(v12 + 16);
      v14 = *(CMBaseObjectGetVTable() + 16);
      if (*v14 < 6uLL || (v15 = v14[20]) == 0)
      {
        v10 = 0;
        v11 = 4294954514;
        goto LABEL_35;
      }

      v16 = v15(v13, a2, a3, &v28, 0);
    }

    else
    {
      v17 = *(v12 + 8);
      v18 = *(CMBaseObjectGetVTable() + 16);
      if (*v18 < 6uLL || (v19 = v18[20]) == 0 || ((v16 = v19(v17, a2, a3, &v28, 0), v16 != -12036) ? (v20 = v16 == -12782) : (v20 = 1), v20))
      {
        if (*(v12 + 96) == a2)
        {
          *(v12 + 96) = a3;
          v28 = 1;
        }

        if (a3 >= a2)
        {
          goto LABEL_31;
        }

        cf = 0;
        v21 = *(v12 + 8);
        v22 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v22)
        {
          v23 = v22(v21, *MEMORY[0x1E6961110], *MEMORY[0x1E695E480], &cf);
          v24 = cf;
          if (v23)
          {
            v25 = 0;
          }

          else
          {
            v25 = cf == *MEMORY[0x1E695E4C0];
          }

          if (v25)
          {
            v11 = ResetRemoteCryptor();
            v24 = cf;
          }

          else
          {
            v11 = 0;
          }

          if (v24)
          {
            CFRelease(v24);
          }
        }

        else
        {
          v11 = 0;
        }

        goto LABEL_30;
      }
    }

    v11 = v16;
LABEL_30:
    if (!v11)
    {
LABEL_31:
      if (v28)
      {
        *(v12 + 96) = a3;
        if (a3 == 2)
        {
          *(v12 + 136) = PKDGetNewRequestID();
          StopAndReleaseTimer((v12 + 128));
        }
      }

      v11 = 0;
      v10 = *(v12 + 136);
      goto LABEL_35;
    }

    v10 = 0;
LABEL_35:
    FigSimpleMutexUnlock();
  }

  if (a4)
  {
    *a4 = v28;
  }

  if (a5)
  {
    *a5 = v10;
  }

  return v11;
}

void __FigPKDOctaviaCPECryptorCreateKeyRequest_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 48) + 8);
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  v5 = *(*(a1 + 40) + 8);
  v6 = *(CMBaseObjectGetVTable() + 16);
  if (*v6 >= 4uLL && (v7 = v6[11]) != 0)
  {
    v8 = v7(v2, v3, v4, v5 + 24);
  }

  else
  {
    v8 = 4294954514;
  }

  OUTLINED_FUNCTION_0_5(v8);
  if (v9)
  {
    return;
  }

  v10 = *(a1 + 72);
  v11 = *(*(*(a1 + 40) + 8) + 24);
  memset(length, 0, sizeof(length));
  if (v10 && v11)
  {
    BytePtr = CFDataGetBytePtr(v11);
    v13 = CFDataGetLength(v11);
    if (!f5zGmdURga6BZ(v10, BytePtr, v13, &length[1], length))
    {
      v14 = CFDataCreate(*MEMORY[0x1E695E480], *&length[1], length[0]);
      Ud5PNQt99i(*&length[1]);
      if (v14)
      {
        v15 = 0;
      }

      else
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_20_0();
        v15 = FigSignalErrorAtGM();
      }

      goto LABEL_11;
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
  }

  v15 = FigSignalErrorAtGM();
  v14 = 0;
LABEL_11:
  OUTLINED_FUNCTION_0_5(v15);
  if (!v16)
  {
    v17 = *(*(a1 + 40) + 8);
    v18 = *(v17 + 24);
    *(v17 + 24) = v14;
    if (v14)
    {
      CFRetain(v14);
    }

    if (v18)
    {
      CFRelease(v18);
    }
  }

  if (v14)
  {
    CFRelease(v14);
  }
}

void RenewalTimerCallback()
{
  v0 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v0)
  {
    v1 = v0;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    if (!*(DerivedStorage + 24))
    {
      StopAndReleaseTimer((DerivedStorage + 128));
      OUTLINED_FUNCTION_12_2();
      CMNotificationCenterGetDefaultLocalCenter();
      FigDispatchAsyncPostNotification();
    }

    FigSimpleMutexUnlock();

    CFRelease(v1);
  }
}

uint64_t __FigCPEOctaviaPKDMovieIDCreateCommon_block_invoke_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t CopyCurrentRequestID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigReportingSessionStatsCreate(void *a1)
{
  OUTLINED_FUNCTION_4_5();
  fig_note_initialize_category_with_default_work_cf();
  OUTLINED_FUNCTION_4_5();
  fig_note_initialize_category_with_default_work_cf();
  if (!a1)
  {
    return 4294955296;
  }

  v2 = *MEMORY[0x1E695E480];
  MEMORY[0x19A8D3660](&FigReportingSessionStatsGetClassID_sRegisterFigReportingSessionStatsOnce, RegisterFigReportingSessionStatsBaseType);
  v3 = CMDerivedObjectCreate();
  if (v3)
  {
    return v3;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    return 4294955295;
  }

  v5 = DerivedStorage;
  Mutable = CFDictionaryCreateMutable(v2, 0, MEMORY[0x1E695E9D8], 0);
  *v5 = Mutable;
  if (!Mutable)
  {
    return 4294955295;
  }

  v3 = FigReportingStatsCreate(v5 + 2);
  if (v3)
  {
    return v3;
  }

  v7 = FigReportingStatsCreate(v5 + 1);
  if (!v7)
  {
    *a1 = 0;
  }

  return v7;
}

void sessionStatsFinalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v1 = DerivedStorage;
    v2 = *DerivedStorage;
    if (v2)
    {
      CFDictionaryApplyFunction(v2, fss_releaseStatDictionaryApplier, 0);
      CFRelease(*v1);
    }

    FigReportingStatsDestroy(v1[2]);
    v3 = v1[1];

    FigReportingStatsDestroy(v3);
  }
}

uint64_t sessionStatsCopyPeriodicStatsValuesForKeys()
{
  OUTLINED_FUNCTION_471();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = 4294955296;
  if (v0 && v1)
  {
    if (DerivedStorage)
    {
      OUTLINED_FUNCTION_0_6();
      fss_copyAggregatedStats(v4, v5, v6);
      return 0;
    }
  }

  return result;
}

uint64_t sessionStatsCopySessionAggregateStatsValuesForKeys()
{
  OUTLINED_FUNCTION_471();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = 4294955296;
  if (v0 && v1)
  {
    if (DerivedStorage)
    {
      OUTLINED_FUNCTION_0_6();
      fss_copyAggregatedStats(v4, v5, v6);
      return 0;
    }
  }

  return result;
}

uint64_t sessionStatsCopySessionArraysForKeys()
{
  OUTLINED_FUNCTION_471();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = 4294955296;
  if (v0 && v1 && DerivedStorage)
  {
    if (CFArrayGetCount(v1) >= 1)
    {
      v4 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v1, v4);
        if (ValueAtIndex)
        {
          FigReportingStatsCopyArrayAndSetInDictionary(*(DerivedStorage + 8), *ValueAtIndex, v0);
        }

        ++v4;
      }

      while (v4 < CFArrayGetCount(v1));
    }

    return 0;
  }

  return result;
}

uint64_t sessionStatsCopyValuesForKeys()
{
  OUTLINED_FUNCTION_2_5();
  v3 = v2;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = 4294955296;
  if (v0 && v3 && DerivedStorage)
  {
    v12[0] = v3;
    v12[1] = v0;
    CFDictionaryApplyFunction(*DerivedStorage, fss_fetchEventStatsAndSetInDictionary, v12);
    if (v1 && CFArrayGetCount(v3) >= 1)
    {
      v6 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v3, v6);
        if (ValueAtIndex)
        {
          v8 = ValueAtIndex;
          if (!CFDictionaryContainsKey(v0, *ValueAtIndex))
          {
            v9 = *v8;
            if (CFArrayGetCount(v1) >= 1)
            {
              v10 = 0;
              while (1)
              {
                v11 = CFArrayGetValueAtIndex(v1, v10);
                if (v11)
                {
                  if (CFStringCompare(*v11, v9, 0) == kCFCompareEqualTo)
                  {
                    break;
                  }
                }

                if (++v10 >= CFArrayGetCount(v1))
                {
                  goto LABEL_9;
                }
              }

              result = FigReportingStatsCopyAsCFTypeAndSetInDictionary(*(DerivedStorage + 8), *v8, v0);
              if (result)
              {
                if (result != -12005)
                {
                  break;
                }
              }
            }
          }
        }

LABEL_9:
        if (++v6 >= CFArrayGetCount(v3))
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

  return result;
}

uint64_t sessionStatsGetAggregatedIntValue()
{
  OUTLINED_FUNCTION_2_5();
  v1 = v0;
  if (!CMBaseObjectGetDerivedStorage() || v1 >= 2)
  {
    return 4294955296;
  }

  OUTLINED_FUNCTION_0_6();

  return FigReportingStatsGetIntValue(v3, v4, v5);
}

uint64_t sessionStatsGetAggregatedCountValue()
{
  OUTLINED_FUNCTION_2_5();
  v1 = v0;
  if (!CMBaseObjectGetDerivedStorage() || v1 >= 2)
  {
    return 4294955296;
  }

  OUTLINED_FUNCTION_0_6();

  return FigReportingStatsGetCountValue(v3, v4, v5);
}

uint64_t sessionStatsCopyAggregatedCFTypeValue()
{
  OUTLINED_FUNCTION_2_5();
  v3 = v2;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  result = 4294955296;
  if (v0 && DerivedStorage)
  {
    if (v3 == 1)
    {
      v6 = 8;
    }

    else
    {
      if (v3)
      {
        return result;
      }

      v6 = 16;
    }

    result = FigReportingStatsGetCFTypeValue(*(DerivedStorage + v6), v1, &cf);
    if (!result)
    {
      if (cf)
      {
        v7 = CFRetain(cf);
      }

      else
      {
        v7 = 0;
      }

      result = 0;
      *v0 = v7;
    }
  }

  return result;
}

uint64_t sessionStatsAddToCountValue()
{
  OUTLINED_FUNCTION_2_5();
  v2 = v1;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = 0;
  v14 = 0;
  if (v0)
  {
    if (DerivedStorage)
    {
      result = fss_getOrCreateNewReportingStatsForReportingStatsKey(DerivedStorage, v2, &v14);
      if (!result)
      {
        OUTLINED_FUNCTION_0_6();
        result = FigReportingStatsAddToCountValue(v5, v6, v7);
        if (!result)
        {
          OUTLINED_FUNCTION_0_6();
          result = FigReportingStatsAddToCountValue(v8, v9, v10);
          if (!result)
          {
            OUTLINED_FUNCTION_0_6();

            return FigReportingStatsAddToCountValue(v11, v12, v13);
          }
        }
      }
    }
  }

  return result;
}

CFDictionaryRef *sessionStatsUpdateSampleValue()
{
  OUTLINED_FUNCTION_2_5();
  result = CMBaseObjectGetDerivedStorage();
  if (result)
  {
    result = OUTLINED_FUNCTION_6_5(result, v1, v2, v3, v4, v5, v6, v7, v17, 0);
    if (!result)
    {
      OUTLINED_FUNCTION_0_6();
      result = FigReportingStatsUpdateSampleValue(v8, v9, v10);
      if (!result)
      {
        OUTLINED_FUNCTION_0_6();
        result = FigReportingStatsUpdateSampleValue(v11, v12, v13);
        if (!result)
        {
          OUTLINED_FUNCTION_0_6();

          return FigReportingStatsUpdateSampleValue(v14, v15, v16);
        }
      }
    }
  }

  return result;
}

CFDictionaryRef *sessionStatsSetCFTypeValue()
{
  OUTLINED_FUNCTION_2_5();
  result = CMBaseObjectGetDerivedStorage();
  if (result)
  {
    result = OUTLINED_FUNCTION_6_5(result, v1, v2, v3, v4, v5, v6, v7, v11, 0);
    if (!result)
    {
      OUTLINED_FUNCTION_0_6();
      result = FigReportingStatsSetCFTypeValue(v8, v9, v10);
      if (!result)
      {
        OUTLINED_FUNCTION_0_6();

        return fss_updateAggregatedCFTypeStat();
      }
    }
  }

  return result;
}

CFDictionaryRef *sessionStatsSetIntValue()
{
  OUTLINED_FUNCTION_2_5();
  result = CMBaseObjectGetDerivedStorage();
  if (result)
  {
    result = OUTLINED_FUNCTION_6_5(result, v1, v2, v3, v4, v5, v6, v7, v17, 0);
    if (!result)
    {
      OUTLINED_FUNCTION_0_6();
      result = FigReportingStatsSetValue(v8, v9, v10);
      if (!result)
      {
        OUTLINED_FUNCTION_0_6();
        result = FigReportingStatsSetValue(v11, v12, v13);
        if (!result)
        {
          OUTLINED_FUNCTION_0_6();

          return FigReportingStatsSetValue(v14, v15, v16);
        }
      }
    }
  }

  return result;
}

uint64_t sessionStatsAppendValuesToArrays(uint64_t a1, const __CFArray *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = 4294955296;
  if (a2 && DerivedStorage)
  {
    if (CFArrayGetCount(a2) >= 1)
    {
      v5 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a2, v5);
        if (ValueAtIndex)
        {
          FigReportingStatsCopyAsCFTypeAndAppendToArray(*(DerivedStorage + 8), *ValueAtIndex);
        }

        ++v5;
      }

      while (v5 < CFArrayGetCount(a2));
    }

    return 0;
  }

  return result;
}

uint64_t sessionStatsResetValue()
{
  OUTLINED_FUNCTION_471();
  result = CMBaseObjectGetDerivedStorage();
  if (result)
  {
    if (v1 && (v3 = *result) != 0)
    {
      Value = CFDictionaryGetValue(v3, v1);
      if (Value)
      {
        FigReportingStatsResetValue(Value, v0);
        return 0;
      }

      else
      {
        return 4294955291;
      }
    }

    else
    {
      return 4294955296;
    }
  }

  return result;
}

uint64_t sessionStatsResetArray(uint64_t a1, const __CFString *a2)
{
  result = CMBaseObjectGetDerivedStorage();
  if (result)
  {
    v4 = *(result + 8);

    return FigReportingStatsResetArray(v4, a2);
  }

  return result;
}

uint64_t sessionStatsGetArrayCount()
{
  OUTLINED_FUNCTION_471();
  result = CMBaseObjectGetDerivedStorage();
  v3 = 0;
  *v0 = 0;
  if (result)
  {
    result = FigReportingStatsGetArrayCount(*(result + 8), v1, &v3);
    if (!result)
    {
      *v0 = v3;
    }
  }

  return result;
}

uint64_t sessionStatsPeriodicStatsResetValue(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    return 4294955296;
  }

  FigReportingStatsResetValue(*(DerivedStorage + 16), a2);
  return 0;
}

uint64_t sessionStatsPeriodicStatsResetValuesForKeys(uint64_t a1, const __CFArray *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = 4294955296;
  if (a2 && DerivedStorage)
  {
    v5 = *(DerivedStorage + 16);
    if (CFArrayGetCount(a2) >= 1)
    {
      v6 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a2, v6);
        if (ValueAtIndex)
        {
          FigReportingStatsResetValue(v5, *ValueAtIndex);
        }

        ++v6;
      }

      while (v6 < CFArrayGetCount(a2));
    }

    return 0;
  }

  return result;
}

uint64_t sessionStatsGetIntValue()
{
  v2 = OUTLINED_FUNCTION_1_5();
  result = 0;
  if (v0 && v2)
  {
    v4 = *v2;
    if (v1)
    {
      if (v4)
      {
        if (CFDictionaryGetValue(v4, v1))
        {
          OUTLINED_FUNCTION_0_6();

          return FigReportingStatsGetIntValue(v5, v6, v7);
        }

        else
        {
          return 4294955291;
        }
      }

      else
      {
        return 4294955296;
      }
    }

    else
    {
      CFDictionaryApplyFunction(v4, fss_getIntValueDictApplier, context);
      return v9;
    }
  }

  return result;
}

uint64_t sessionStatsGetCFTypeValue()
{
  v2 = OUTLINED_FUNCTION_1_5();
  result = 0;
  if (v0 && v2)
  {
    v4 = *v2;
    if (v1)
    {
      if (v4)
      {
        if (CFDictionaryGetValue(v4, v1))
        {
          OUTLINED_FUNCTION_0_6();

          return FigReportingStatsGetCFTypeValue(v5, v6, v7);
        }

        else
        {
          return 4294955291;
        }
      }

      else
      {
        return 4294955296;
      }
    }

    else
    {
      CFDictionaryApplyFunction(v4, fss_getCFTypeValueDictApplier, context);
      return v9;
    }
  }

  return result;
}

uint64_t sessionStatsGetCountValue()
{
  v2 = OUTLINED_FUNCTION_1_5();
  result = 0;
  if (v0 && v2)
  {
    v4 = *v2;
    if (v1)
    {
      if (v4)
      {
        if (CFDictionaryGetValue(v4, v1))
        {
          OUTLINED_FUNCTION_0_6();

          return FigReportingStatsGetCountValue(v5, v6, v7);
        }

        else
        {
          return 4294955291;
        }
      }

      else
      {
        return 4294955296;
      }
    }

    else
    {
      CFDictionaryApplyFunction(v4, fss_getCountValueDictApplier, context);
      return v9;
    }
  }

  return result;
}

uint64_t sessionStatsResetAll(uint64_t a1, const void *a2)
{
  result = CMBaseObjectGetDerivedStorage();
  if (result)
  {
    if (a2 && (v4 = *result) != 0)
    {
      Value = CFDictionaryGetValue(v4, a2);
      if (Value)
      {
        FigReportingStatsResetAll(Value);
        return 0;
      }

      else
      {
        return 4294955291;
      }
    }

    else
    {
      return 4294955296;
    }
  }

  return result;
}

uint64_t sessionStatsAggregateStatsResetValue(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    return 4294955296;
  }

  FigReportingStatsResetValue(*(DerivedStorage + 8), a2);
  return 0;
}

uint64_t sessionStatsCopy(uint64_t a1, uint64_t a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = CMBaseObjectGetDerivedStorage();
  v9 = 0;
  result = 4294955296;
  if (a3 && DerivedStorage && v5)
  {
    if (!*v5)
    {
      return 4294955296;
    }

    Value = CFDictionaryGetValue(*v5, a3);
    if (Value)
    {
      v9 = Value;
    }

    else
    {
      result = fss_getOrCreateNewReportingStatsForReportingStatsKey(v5, a3, &v9);
      if (result)
      {
        return result;
      }
    }

    if (*DerivedStorage)
    {
      v8 = CFDictionaryGetValue(*DerivedStorage, a3);
    }

    else
    {
      v8 = 0;
    }

    FigReportingStatsCopy(v9, v8);
    FigReportingStatsCopy(*(v5 + 8), *(DerivedStorage + 8));
    FigReportingStatsCopy(*(v5 + 16), *(DerivedStorage + 16));
    return 0;
  }

  return result;
}

uint64_t sessionStatsAppendValueToArray(uint64_t a1, void *a2, void *a3, const void *a4, int a5)
{
  theArray = 0;
  v21 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    return 4294955296;
  }

  v10 = fss_getOrCreateNewReportingStatsForReportingStatsKey(DerivedStorage, a2, &v21);
  if (v10)
  {
    return v10;
  }

  v11 = v21;
  CFTypeValue = FigReportingStatsGetCFTypeValue(v21, a3, &theArray);
  v13 = theArray;
  if (a5 >= 1)
  {
    if (theArray)
    {
      Count = CFArrayGetCount(theArray);
    }

    else
    {
      Count = 0;
    }

    if (Count >= a5)
    {
      return CFTypeValue;
    }

    v13 = theArray;
  }

  v15 = *MEMORY[0x1E695E480];
  if (v13)
  {
    MutableCopy = CFArrayCreateMutableCopy(v15, 0, v13);
    if (!MutableCopy)
    {
      return CFTypeValue;
    }
  }

  else
  {
    MutableCopy = CFArrayCreateMutable(v15, 0, MEMORY[0x1E695E9C0]);
    if (!MutableCopy)
    {
      return CFTypeValue;
    }
  }

  v17 = MutableCopy;
  CFArrayAppendValue(MutableCopy, a4);
  updated = FigReportingStatsSetCFTypeValue(v11, a3, v17);
  if (!updated)
  {
    updated = fss_updateAggregatedCFTypeStat();
  }

  CFTypeValue = updated;
  CFRelease(v17);
  return CFTypeValue;
}

uint64_t sessionStatsFreezeKeys()
{
  OUTLINED_FUNCTION_471();
  result = CMBaseObjectGetDerivedStorage();
  if (result)
  {
    if (v1 && (v3 = *result) != 0)
    {
      Value = CFDictionaryGetValue(v3, v1);
      if (Value)
      {

        return FigReportingStatsFreezeKeys(Value, v0);
      }

      else
      {
        return 4294955291;
      }
    }

    else
    {
      return 4294955296;
    }
  }

  return result;
}

uint64_t fss_getOrCreateNewReportingStatsForReportingStatsKey(CFDictionaryRef *a1, void *key, void *a3)
{
  value = 0;
  result = 4294955296;
  if (a1 && key)
  {
    if (!*a1)
    {
      return 4294955296;
    }

    v7 = CFDictionaryGetValue(*a1, key);
    if (v7)
    {
LABEL_5:
      result = 0;
      *a3 = v7;
      return result;
    }

    result = FigReportingStatsCreate(&value);
    if (!result)
    {
      if (!value)
      {
        return 4294955294;
      }

      CFDictionarySetValue(*a1, key, value);
      v7 = value;
      goto LABEL_5;
    }
  }

  return result;
}

uint64_t fss_updateAggregatedCFTypeStat()
{
  OUTLINED_FUNCTION_471();
  result = FigReportingStatsSetCFTypeValue(*(v0 + 16), v1, v2);
  if (!result)
  {
    OUTLINED_FUNCTION_0_6();

    return FigReportingStatsSetCFTypeValue(v4, v5, v6);
  }

  return result;
}

uint64_t fss_getIntValueDictApplier(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3 && !*(a3 + 16))
  {
    v4 = OUTLINED_FUNCTION_5_4(result, a2);
    result = FigReportingStatsGetIntValue(v4, v5, v6);
    *(a3 + 20) = result;
    if (!result)
    {
      *(a3 + 16) = 1;
    }
  }

  return result;
}

uint64_t fss_getCFTypeValueDictApplier(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3 && !*(a3 + 16))
  {
    v4 = OUTLINED_FUNCTION_5_4(result, a2);
    result = FigReportingStatsGetCFTypeValue(v4, v5, v6);
    *(a3 + 20) = result;
    if (!result)
    {
      *(a3 + 16) = 1;
    }
  }

  return result;
}

uint64_t fss_getCountValueDictApplier(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3 && !*(a3 + 16))
  {
    v4 = OUTLINED_FUNCTION_5_4(result, a2);
    result = FigReportingStatsGetCountValue(v4, v5, v6);
    *(a3 + 20) = result;
    if (!result)
    {
      *(a3 + 16) = 1;
    }
  }

  return result;
}

uint64_t BVCUtilityGetVectorsFromTransform_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_7();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t BVCUtilityGetVectorsFromTransform_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_7();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t BVCUtilityGetVectorsFromTransform_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_7();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t BVCUtilityGetVectorsFromTransform_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_7();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

BOOL BVCUtilityCreateEdgeLists_cold_1(uint64_t a1, _DWORD *a2)
{
  v3 = FigSignalErrorAtGM();
  *a2 = v3;
  return v3 == 0;
}

uint64_t BVCUtilityCreateEdgeLists_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void FigEndpointStreamAudioEngineSbufTracerDebugPrint(CMAttachmentBearerRef target)
{
  if (FigEndpointStreamAudioEngineSbufTracerDebugPrint_sSetupLoggingOnce == -1)
  {
    if (!target)
    {
      return;
    }
  }

  else
  {
    dispatch_once(&FigEndpointStreamAudioEngineSbufTracerDebugPrint_sSetupLoggingOnce, &__block_literal_global_1);
    if (!target)
    {
      return;
    }
  }

  v2 = CMGetAttachment(target, @"SbufTracer", 0);
  if (v2)
  {
    v3 = v2;
    CFDictionaryGetValue(v2, @"SbufTracerOption_UniqueID");

    CFDictionaryGetValue(v3, @"SbufTracerOption_SourceID");
  }
}

uint64_t FigTimedMetadataRenderPipelineInvalidate()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v1 = DerivedStorage;
    FigSimpleMutexLock();
    if (!*v1)
    {
      *v1 = 1;
      if (*(v1 + 24))
      {
        CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterRemoveListener();
        CFRelease(*(v1 + 24));
        *(v1 + 24) = 0;
      }

      v2 = *(v1 + 16);
      if (v2)
      {
        FigBaseObject = FigRenderPipelineGetFigBaseObject(v2);
        if (FigBaseObject)
        {
          v4 = FigBaseObject;
          v5 = *(*(CMBaseObjectGetVTable() + 8) + 24);
          if (v5)
          {
            v5(v4);
          }
        }

        CFRelease(*(v1 + 16));
        *(v1 + 16) = 0;
      }
    }

    FigSimpleMutexUnlock();
  }

  return 0;
}

uint64_t FigTimedMetadataRenderPipelineFinalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigTimedMetadataRenderPipelineInvalidate();
  result = *(DerivedStorage + 8);
  if (result)
  {
    result = FigSimpleMutexDestroy();
    *(DerivedStorage + 8) = 0;
  }

  return result;
}

void tdrp_ParseID3(const void *a1, CMSampleBufferRef sbuf)
{
  blockBufferOut = 0;
  theDict = 0;
  dataPointerOut = 0;
  outPropertyData = 0;
  memset(&v55, 0, sizeof(v55));
  CMSampleBufferGetOutputPresentationTimeStamp(&v55, sbuf);
  DataBuffer = CMSampleBufferGetDataBuffer(sbuf);
  if (!CMBlockBufferCreateContiguous(0, DataBuffer, 0, 0, 0, 0, 0, &blockBufferOut))
  {
    DataLength = CMBlockBufferGetDataLength(blockBufferOut);
    if (DataLength >= 0xB)
    {
      v6 = DataLength;
      if (!CMBlockBufferGetDataPointer(blockBufferOut, 0, 0, 0, &dataPointerOut))
      {
        LODWORD(outPropertyData) = 4;
        if (!AudioFormatGetProperty(0x69643373u, 0xAu, dataPointerOut, &outPropertyData, &outPropertyData + 4) && v6 >= HIDWORD(outPropertyData))
        {
          LODWORD(outPropertyData) = 8;
          if (!AudioFormatGetProperty(0x69643364u, HIDWORD(outPropertyData), dataPointerOut, &outPropertyData, &theDict))
          {
            Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
            Count = CFDictionaryGetCount(theDict);
            v9 = malloc_type_calloc(2 * Count, 8uLL, 0xC0040B8AA526DuLL);
            if (v9)
            {
              v10 = v9;
              v11 = &v9[Count];
              CFDictionaryGetKeysAndValues(theDict, v9, v11);
              if (Count >= 1)
              {
                v12 = 0;
                value = 0;
                v50 = *&Count;
                do
                {
                  TypeID = CFDictionaryGetTypeID();
                  if (TypeID == CFGetTypeID(v11[v12]))
                  {
                    v14 = CFDictionaryGetCount(v11[v12]);
                    v15 = malloc_type_calloc(2 * v14, 8uLL, 0xC0040B8AA526DuLL);
                    if (v15)
                    {
                      v16 = v15;
                      v17 = &v15[v14];
                      CFDictionaryGetKeysAndValues(v11[v12], v16, &v16[v14]);
                      if (v14 >= 1)
                      {
                        do
                        {
                          v18 = v10[v12];
                          v19 = *v17;
                          CFGetAllocator(a1);
                          OUTLINED_FUNCTION_1_6(v20, v21, v22, v23, v24, v25, v26, v27, v49, v50, v51, v52, v53, v54, *&v55.value);
                          if (!tdrp_BuildID3Dictionary(v18, v19, v28, v29, v30))
                          {
                            v31 = value;
                            CFArrayAppendValue(Mutable, value);
                            CFRelease(v31);
                          }

                          ++v17;
                          --v14;
                        }

                        while (v14);
                      }

                      free(v16);
                      Count = *&v50;
                    }
                  }

                  else
                  {
                    v32 = v10[v12];
                    v33 = v11[v12];
                    CFGetAllocator(a1);
                    OUTLINED_FUNCTION_1_6(v34, v35, v36, v37, v38, v39, v40, v41, v49, v50, v51, v52, v53, v54, *&v55.value);
                    if (!tdrp_BuildID3Dictionary(v32, v33, v42, v43, v44))
                    {
                      v45 = value;
                      CFArrayAppendValue(Mutable, value);
                      CFRelease(v45);
                    }
                  }

                  ++v12;
                }

                while (v12 != Count);
              }

              free(v10);
              if (CFArrayGetCount(Mutable) >= 1)
              {
                DerivedStorage = CMBaseObjectGetDerivedStorage();
                FigSimpleMutexLock();
                if (*DerivedStorage)
                {
                  FigSimpleMutexUnlock();
                }

                else
                {
                  v48 = *(DerivedStorage + 32);
                  v47 = *(DerivedStorage + 40);
                  FigSimpleMutexUnlock();
                  if (v48 && CFArrayGetCount(Mutable) >= 1)
                  {
                    v48(Mutable, v47);
                  }
                }
              }
            }

            if (Mutable)
            {
              CFRelease(Mutable);
            }
          }
        }
      }
    }
  }

  if (theDict)
  {
    CFRelease(theDict);
  }

  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }
}

uint64_t FigTimedMetadataRenderPipelineCreate_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigTimedMetadataRenderPipelineCreate_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigTimedMetadataRenderPipelineCreate_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void tdrp_pipelineCallback_cold_1(const __CFString *a1, CFStringRef *a2, const void *a3, opaqueCMSampleBuffer *a4)
{
  if (CFStringCompare(a1, @"https://developer.apple.com/streaming/emsg-id3", 0) == kCFCompareEqualTo || CFStringCompare(*a2, @"https://aomedia.org/emsg/ID3", 0) == kCFCompareEqualTo)
  {
    tdrp_ParseID3(a3, a4);
  }
}

void tdrp_pipelineCallback_cold_2(uint64_t a1, opaqueCMSampleBuffer *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (!FigMetadataCreateMetadataItemsFromFigMetadataPropertyListSampleBuffer(a2, &cf))
  {
    FigSimpleMutexLock();
    if (*DerivedStorage)
    {
      FigSimpleMutexUnlock();
    }

    else
    {
      v5 = *(DerivedStorage + 32);
      v4 = *(DerivedStorage + 40);
      FigSimpleMutexUnlock();
      if (v5)
      {
        v5(cf, v4);
      }
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t tdrp_pipelineCallback_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t tdrp_pipelineCallback_cold_4(const __CFArray *a1, uint64_t a2, uint64_t a3, CFArrayRef *a4)
{
  result = CFArrayGetCount(a1);
  if (result > 0)
  {
    result = FigCFDictionaryGetCount();
    if (result >= 1)
    {
      v7 = *MEMORY[0x1E695E480];
      if (*a4)
      {
        Count = CFArrayGetCount(*a4);
      }

      else
      {
        Count = 0;
      }

      *(a3 + 8) = CFArrayCreateMutable(v7, Count, MEMORY[0x1E695E9C0]);
      FigCFArrayApplyFunction();
      result = *(a3 + 8);
      if (result)
      {
        result = CFArrayGetCount(result);
        if (result >= 1)
        {
          v9 = *(a3 + 8);
          DerivedStorage = CMBaseObjectGetDerivedStorage();
          FigSimpleMutexLock();
          if (*DerivedStorage)
          {
            return FigSimpleMutexUnlock();
          }

          else
          {
            v12 = *(DerivedStorage + 32);
            v11 = *(DerivedStorage + 40);
            result = FigSimpleMutexUnlock();
            if (v12)
            {
              return v12(v9, v11);
            }
          }
        }
      }
    }
  }

  return result;
}

void tdrp_BuildID3Dictionary_cold_1(const void *a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  *a2 = FigSignalErrorAtGM();
  CFRelease(a1);
}

uint64_t tdrp_BuildID3Dictionary_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t dataChannelResource_SetProcessingState(uint64_t a1, unsigned int a2)
{
  if (dword_1EAF16AB0)
  {
    OUTLINED_FUNCTION_147();
    v4 = OUTLINED_FUNCTION_126();
    if (os_log_type_enabled(v4, type))
    {
      v5 = v14;
    }

    else
    {
      v5 = v14 & 0xFFFFFFFE;
    }

    if (v5)
    {
      OUTLINED_FUNCTION_2_6();
      OUTLINED_FUNCTION_39();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_0_9();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    os_unfair_lock_lock(DerivedStorage + 8);
    if (a2 >= 3)
    {
      os_unfair_lock_unlock(DerivedStorage + 8);
      return 4294948214;
    }

    os_unfair_lock_opaque = DerivedStorage[7]._os_unfair_lock_opaque;
    if (dword_1EAF16AB0)
    {
      OUTLINED_FUNCTION_147();
      v8 = OUTLINED_FUNCTION_126();
      if (os_log_type_enabled(v8, type))
      {
        v9 = v14;
      }

      else
      {
        v9 = v14 & 0xFFFFFFFE;
      }

      if (v9)
      {
        OUTLINED_FUNCTION_2_6();
        OUTLINED_FUNCTION_6_6();
        OUTLINED_FUNCTION_39();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_0_9();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    DerivedStorage[7]._os_unfair_lock_opaque = a2;
    os_unfair_lock_unlock(DerivedStorage + 8);
    if (os_unfair_lock_opaque == a2)
    {
      return 0;
    }

    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v12 = Mutable;
      FigCFDictionarySetInt32();
      FigCFDictionarySetInt32();
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();
      CFRelease(v12);
      return 0;
    }
  }

  return FigSignalErrorAtGM();
}

uint64_t dataChannelResource_setResourceStateAndPostNotification(uint64_t a1, uint32_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  os_unfair_lock_lock(DerivedStorage + 8);
  os_unfair_lock_opaque = DerivedStorage[6]._os_unfair_lock_opaque;
  if (os_unfair_lock_opaque)
  {
    v6 = -19082;
  }

  else
  {
    v6 = 0;
  }

  if (os_unfair_lock_opaque >= 2)
  {
    v7 = -19082;
  }

  else
  {
    v7 = 0;
  }

  if (a2 == 3)
  {
    v8 = os_unfair_lock_opaque < 2;
  }

  else
  {
    v8 = os_unfair_lock_opaque == 0;
  }

  if (a2 == 3)
  {
    v9 = v7;
  }

  else
  {
    v9 = v6;
  }

  if (os_unfair_lock_opaque == a2 && dword_1EAF16AB0 != 0)
  {
    OUTLINED_FUNCTION_147();
    v11 = OUTLINED_FUNCTION_126();
    if (OUTLINED_FUNCTION_431_1(v11, v12, v13, v14, v15, v16, v17, v18, v32, v33, v34, v35, SBYTE2(v35), BYTE3(v35), SHIDWORD(v35)))
    {
      v19 = v2;
    }

    else
    {
      v19 = v2 & 0xFFFFFFFE;
    }

    if (v19)
    {
      OUTLINED_FUNCTION_2_6();
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_4_6();
      v2 = HIDWORD(v35);
    }

    OUTLINED_FUNCTION_0_9();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v8)
  {
    if (dword_1EAF16AB0)
    {
      OUTLINED_FUNCTION_147();
      v20 = OUTLINED_FUNCTION_126();
      if (OUTLINED_FUNCTION_431_1(v20, v21, v22, v23, v24, v25, v26, v27, v32, v33, v34, v35, SBYTE2(v35), BYTE3(v35), SHIDWORD(v35)))
      {
        v28 = v2;
      }

      else
      {
        v28 = v2 & 0xFFFFFFFE;
      }

      if (v28)
      {
        OUTLINED_FUNCTION_2_6();
        OUTLINED_FUNCTION_6_6();
        OUTLINED_FUNCTION_39();
        OUTLINED_FUNCTION_4_6();
      }

      OUTLINED_FUNCTION_0_9();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    DerivedStorage[6]._os_unfair_lock_opaque = a2;
    os_unfair_lock_unlock(DerivedStorage + 8);
    if (os_unfair_lock_opaque != a2)
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (Mutable)
      {
        v30 = Mutable;
        FigCFDictionarySetInt32();
        FigCFDictionarySetInt32();
        CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterPostNotification();
        CFRelease(v30);
      }

      else
      {
        return FigSignalErrorAtGM();
      }
    }
  }

  else
  {
    os_unfair_lock_unlock(DerivedStorage + 8);
  }

  return v9;
}

uint64_t FigDataChannelResourceCreate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigDataChannelResourceCreate_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigDataChannelResourceCreate_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t dataChannelResource_CopyPayload_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t dataChannelResource_CopyPayload_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t dataChannelResource_CopyTagCollection_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t dataChannelResource_CopyTagCollection_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t dataChannelResource_ProvidePayload_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t dataChannelResource_ProvidePayload_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t dataChannelResource_ProvidePayload_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t dataChannelResource_SetFailedToLoad_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t dataChannelResource_SetCancelled_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigSessionDataSpecifierCreate_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_10();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigSessionDataSpecifierCreate_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_7();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigRenditionReportSpecifierCreate_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_10();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigRenditionReportSpecifierCreate_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_7();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigDateRangeSpecifierCreate_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_10();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigDateRangeSpecifierCreate_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_7();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigContentKeySpecifierCreate_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_10();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigContentKeySpecifierCreate_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_7();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMediaSegmentSpecifierCreate_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_10();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMediaSegmentSpecifierCreate_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_7();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMediaSegmentSpecifierAddPartialSegment_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_10();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fbapop_notificationHandler(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, const void *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (!*(DerivedStorage + 104))
  {
    OUTLINED_FUNCTION_48_1();
    if (!v10)
    {
      dispatch_once(&qword_1ED4CA428, &__block_literal_global_174);
    }

    if ((!_MergedGlobals_16 || FigCFEqual() && FigCFEqual() && FigCFEqual() && FigCFEqual() && FigCFEqual() && FigCFEqual() && FigCFEqual()) && FigCFEqual())
    {
      if (CFEqual(a3, @"GoActive"))
      {
        if (!a5)
        {
          return FigSimpleMutexUnlock();
        }

        v11 = CFGetTypeID(a5);
        if (v11 != CFDictionaryGetTypeID())
        {
          return FigSimpleMutexUnlock();
        }

        FigCFDictionaryGetBooleanIfPresent();
        v12 = CMBaseObjectGetDerivedStorage();
        OUTLINED_FUNCTION_2_7(v12);
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_48_1();
      if (!v10)
      {
        dispatch_once(&qword_1ED4CA428, &__block_literal_global_174);
      }

      if (_MergedGlobals_16)
      {
        if (CFEqual(a3, @"bufferingPriorityChanged"))
        {
          CFDictionaryGetValue(a5, @"bufferingPriority");
          CMBaseObjectGetDerivedStorage();
          if (FigCFEqual() || FigCFEqual() || FigCFEqual())
          {
            FigCFNumberCreateUInt32();
            FigCFDictionaryApplyBlock();
          }

LABEL_49:
          CMNotificationCenterGetDefaultLocalCenter();
          CMNotificationCenterPostNotification();
          goto LABEL_18;
        }

        OUTLINED_FUNCTION_48_1();
        if (!v10)
        {
          dispatch_once(&qword_1ED4CA428, &__block_literal_global_174);
        }
      }

      if (_MergedGlobals_16)
      {
        if (CFEqual(a3, @"PlayResourceReleased"))
        {
          v16 = CMBaseObjectGetDerivedStorage();
          if (!a4)
          {
            OUTLINED_FUNCTION_429();
            FigSignalErrorAtGM();
LABEL_18:
            v13 = *(DerivedStorage + 96);
            v14 = *(*(CMBaseObjectGetVTable() + 16) + 24);
            if (v14)
            {
              v14(v13);
            }

            return FigSimpleMutexUnlock();
          }

          OUTLINED_FUNCTION_2_7(v16);
          goto LABEL_17;
        }

        OUTLINED_FUNCTION_48_1();
        if (!v10)
        {
          dispatch_once(&qword_1ED4CA428, &__block_literal_global_174);
        }
      }

      if (_MergedGlobals_16)
      {
        if (CFEqual(a3, @"OverlapStartTimeReached"))
        {
          OUTLINED_FUNCTION_618();
          MixEventIDForSubPipeManager = fbapop_getMixEventIDForSubPipeManager();
          fbapop_startSubPipeManagersForMixEventID(a2, MixEventIDForSubPipeManager);
          goto LABEL_18;
        }

        OUTLINED_FUNCTION_48_1();
        if (!v10)
        {
          dispatch_once(&qword_1ED4CA428, &__block_literal_global_174);
        }
      }

      if (!_MergedGlobals_16 || !CFEqual(a3, @"OverlapOutroEndTimeProcessed"))
      {
        if (CFEqual(a3, @"OverlapDeadlineReached"))
        {
          OUTLINED_FUNCTION_618();
          fbapop_getMixEventIDForSubPipeManager();
          fbapop_requestRetransmitForRPWithMixEventID();
          goto LABEL_18;
        }

        if (CFEqual(a3, @"RequestForRetransmission"))
        {
          if (FigCFDictionaryGetCMTimeIfPresent())
          {
            OUTLINED_FUNCTION_618();
            fbapop_requestForRetransmissionToRenderPipeline();
          }

          goto LABEL_18;
        }

        goto LABEL_49;
      }

      OUTLINED_FUNCTION_618();
      fbapop_getMixEventIDForSubPipeManager();
      v18 = CMBaseObjectGetDerivedStorage();
      OUTLINED_FUNCTION_2_7(v18);
LABEL_17:
      FigCFDictionaryApplyBlock();
      goto LABEL_18;
    }
  }

  return FigSimpleMutexUnlock();
}

void fbapop_debugPrintTimeIntervalReachedCallback()
{
  v0 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v0)
  {
    v1 = v0;
    if (fbapop_debugPrintTimeIntervalReachedCallback_onceToken != -1)
    {
      dispatch_once(&fbapop_debugPrintTimeIntervalReachedCallback_onceToken, &__block_literal_global_180);
    }

    if (fbapop_debugPrintTimeIntervalReachedCallback_sDebugEnabled)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      FigSimpleMutexLock();
      if (!*(DerivedStorage + 104))
      {
        v3 = *(DerivedStorage + 96);
        v4 = *(*(CMBaseObjectGetVTable() + 16) + 24);
        if (v4)
        {
          v4(v3);
        }
      }

      FigSimpleMutexUnlock();
    }

    CFRelease(v1);
  }
}

uint64_t fbapop_setRenderPipelineState(uint64_t a1, unsigned int *a2, const void *a3, const __CFBoolean *a4)
{
  v72 = *MEMORY[0x1E69E9840];
  CMBaseObjectGetDerivedStorage();
  v58 = 0;
  v59 = &v58;
  v60 = 0x2000000000;
  v61 = 0;
  FigSimpleMutexLock();
  if (!fbapop_tokenIsValid(a1, a2))
  {
    goto LABEL_75;
  }

  if (!a2)
  {
    goto LABEL_31;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Value = CFDictionaryGetValue(*(DerivedStorage + 32), *a2);
  if (!Value)
  {
LABEL_75:
    OUTLINED_FUNCTION_429();
    SynchronizedToTimebaseRenderPipeline = FigSignalErrorAtGM();
    goto LABEL_20;
  }

  v12 = Value;
  if (CFEqual(@"RenderPipelineStateAllowsPrebuffering", a3))
  {
    CFBooleanGetTypeID();
    if (a3 != OUTLINED_FUNCTION_56_1())
    {
      goto LABEL_31;
    }

    FigCFDictionaryApplyBlock();
    if (*(v59 + 24))
    {
      goto LABEL_31;
    }

    *(v12 + 44) = *MEMORY[0x1E695E4D0] == a4;
    if (!dword_1EAF16AD0)
    {
      goto LABEL_31;
    }

    OUTLINED_FUNCTION_61_2();
    v13 = OUTLINED_FUNCTION_42_2();
    OUTLINED_FUNCTION_68_1(v13, v14, v15, v16, v17, v18, v19, v20, v53, v54, v55, v56, type, SBYTE2(type), BYTE3(type), SHIDWORD(type));
    OUTLINED_FUNCTION_46();
    if (v5)
    {
      if (a1)
      {
        CMBaseObjectGetDerivedStorage();
      }

      fbapop_getRPType(v12);
      v25 = *(v12 + 44) == 0;
      v63 = "fbapop_setRenderPipelineState";
      v62 = 136316418;
      if (v25)
      {
        v26 = 70;
      }

      else
      {
        v26 = 84;
      }

      OUTLINED_FUNCTION_17_2(v26);
      OUTLINED_FUNCTION_10_3();
    }

    goto LABEL_30;
  }

  if (!CFEqual(@"RenderPipelineStateIsTimebaseStarter", a3))
  {
    if (CFEqual(@"RenderPipelineStateEndOfTrackReached", a3))
    {
      CFBooleanGetTypeID();
      if (a3 != OUTLINED_FUNCTION_56_1())
      {
        goto LABEL_31;
      }

      *(v12 + 46) = *MEMORY[0x1E695E4D0] == a4;
      SynchronizedToTimebaseRenderPipeline = fbapop_attempConnectNextSynchronizedToTimebaseRenderPipeline(a1);
LABEL_20:
      v22 = SynchronizedToTimebaseRenderPipeline;
      goto LABEL_32;
    }

    if (CFEqual(@"RenderPipelineStateSynchronizeToTimebase", a3))
    {
      CFBooleanGetTypeID();
      if (a3 != OUTLINED_FUNCTION_56_1())
      {
        goto LABEL_31;
      }

      if (CFBooleanGetValue(a4) == 1)
      {
        v24 = fbapop_setRenderPipelineState_sCurrentSynchronizeToTimebaseOrderIndex++;
        *(v12 + 104) = v24;
      }

      else
      {
        fbapoprp_clearRenderPipelineSynchronizeToTimebaseContext(v12);
      }

      if (!dword_1EAF16AD0)
      {
        goto LABEL_31;
      }

      OUTLINED_FUNCTION_61_2();
      OUTLINED_FUNCTION_49_1();
      v37 = OUTLINED_FUNCTION_42_2();
      os_log_type_enabled(v37, BYTE3(type));
      OUTLINED_FUNCTION_28();
      if (v4)
      {
        if (a1)
        {
          CMBaseObjectGetDerivedStorage();
        }

        v41 = *(v12 + 32);
        RPType = fbapop_getRPType(v12);
        v43 = *(v12 + 104);
        CFBooleanGetValue(a4);
        v62 = 136316674;
        v63 = "fbapop_setRenderPipelineState";
        OUTLINED_FUNCTION_32_3();
        v64 = v41;
        v65 = 2080;
        v66 = RPType;
        v67 = v44;
        v68 = v43;
        v69 = 1024;
        LODWORD(v70) = v45;
        OUTLINED_FUNCTION_66();
        OUTLINED_FUNCTION_4_7();
      }

LABEL_30:
      OUTLINED_FUNCTION_7();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      goto LABEL_31;
    }

    if (CFEqual(@"RenderPipelineStateOverlapOutroStartTimeReached", a3))
    {
      CFBooleanGetTypeID();
      if (a3 == OUTLINED_FUNCTION_56_1())
      {
        v28 = *MEMORY[0x1E695E4D0];
        *(v12 + 47) = *MEMORY[0x1E695E4D0] == a4;
        if (dword_1EAF16AD0)
        {
          OUTLINED_FUNCTION_61_2();
          OUTLINED_FUNCTION_49_1();
          v29 = OUTLINED_FUNCTION_42_2();
          OUTLINED_FUNCTION_68_1(v29, v30, v31, v32, v33, v34, v35, v36, v53, v54, v55, v56, type, SBYTE2(type), BYTE3(type), SHIDWORD(type));
          OUTLINED_FUNCTION_46();
          if (v5)
          {
            if (a1)
            {
              CMBaseObjectGetDerivedStorage();
            }

            fbapop_getRPType(v12);
            v25 = *(v12 + 47) == 0;
            v63 = "fbapop_setRenderPipelineState";
            v62 = 136316418;
            if (v25)
            {
              v47 = 70;
            }

            else
            {
              v47 = 84;
            }

            OUTLINED_FUNCTION_17_2(v47);
            OUTLINED_FUNCTION_10_3();
          }

          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_238_0();
        }

        if (*(v12 + 68) && FigCFDictionaryGetBooleanValue() == v28)
        {
          FigCFDictionaryGetNumberValue();
          fbapop_notifySetRateAndAnchorTimeCompletionForMixEventID();
        }
      }

      goto LABEL_31;
    }

    if (!CFEqual(@"RenderPipelineStateTimebase", a3))
    {
      if (CFEqual(@"RenderPipelineStateTimebaseStartOutputTime", a3))
      {
        TypeID = CFDictionaryGetTypeID();
        if (TypeID == CFGetTypeID(a4))
        {
          CMTimeMakeFromDictionary(&v71, a4);
          v22 = 0;
          *(v12 + 80) = v71;
          goto LABEL_32;
        }
      }

      else if (CFEqual(@"RenderPipelineStateTimebaseInitiated", a3))
      {
        v48 = CFBooleanGetTypeID();
        if (v48 == CFGetTypeID(a4))
        {
          v22 = 0;
          *(v12 + 64) = CFBooleanGetValue(a4);
          goto LABEL_32;
        }
      }

      goto LABEL_31;
    }

    if (!a4 || (v38 = CMTimebaseGetTypeID(), v38 == CFGetTypeID(a4)))
    {
      if (dword_1EAF16AD0)
      {
        OUTLINED_FUNCTION_61_2();
        v39 = OUTLINED_FUNCTION_42_2();
        if (os_log_type_enabled(v39, BYTE3(type)))
        {
          v40 = HIDWORD(type);
        }

        else
        {
          v40 = HIDWORD(type) & 0xFFFFFFFE;
        }

        if (v40)
        {
          if (a1)
          {
            CMBaseObjectGetDerivedStorage();
          }

          v49 = *(v12 + 32);
          fbapop_getRPType(v12);
          v62 = 136316674;
          v63 = "fbapop_setRenderPipelineState";
          OUTLINED_FUNCTION_32_3();
          v64 = v49;
          v65 = 2080;
          v66 = v50;
          v67 = v51;
          v68 = v52;
          v69 = v51;
          v70 = a3;
          OUTLINED_FUNCTION_66();
          OUTLINED_FUNCTION_108();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_449();
      }

      SynchronizedToTimebaseRenderPipeline = fbapop_setTimebaseToRenderPipelineState(a1, v12, a4);
      goto LABEL_20;
    }

LABEL_31:
    v22 = 0;
    goto LABEL_32;
  }

  CFBooleanGetTypeID();
  if (a3 != OUTLINED_FUNCTION_56_1())
  {
    goto LABEL_31;
  }

  v21 = CFBooleanGetValue(a4);
  CMBaseObjectGetDerivedStorage();
  if (v21 && *(v12 + 68))
  {
    FigCFDictionaryApplyBlock();
  }

  v22 = 0;
  *(v12 + 45) = v21;
LABEL_32:
  FigSimpleMutexUnlock();
  _Block_object_dispose(&v58, 8);
  return v22;
}

uint64_t fbapop_setRateAndAnchorTime(const void *a1, unsigned int *a2, __int128 *a3, __int128 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9)
{
  v60 = *MEMORY[0x1E69E9840];
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (!fbapop_tokenIsValid(a1, a2))
  {
    goto LABEL_48;
  }

  if (!a2)
  {
    goto LABEL_35;
  }

  v47 = a7;
  v45 = a5;
  v46 = a8;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Value = CFDictionaryGetValue(*(DerivedStorage + 32), *a2);
  if (!Value)
  {
LABEL_48:
    OUTLINED_FUNCTION_239();
    v44 = FigSignalErrorAtGM();
    goto LABEL_46;
  }

  v20 = Value;
  if (dword_1EAF16AD0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v22 = *(v20 + 104);
  if (a9 == 0.0 || v22 == 0xFFFFFFF || *(v20 + 45) == 0)
  {
    if (v22 != 0xFFFFFFF)
    {
      goto LABEL_35;
    }

    IsConsumerConnected = fbapop_ruleIsConsumerConnected(v20);
    if (a9 <= 0.0 && IsConsumerConnected && !*(v20 + 45))
    {
      goto LABEL_35;
    }
  }

  v50 = *a3;
  v51 = *(a3 + 2);
  v48 = *a4;
  v49 = *(a4 + 2);
  v26 = *(v20 + 68);
  if (qword_1ED4CA428 != -1)
  {
    dispatch_once(&qword_1ED4CA428, &__block_literal_global_174);
  }

  OUTLINED_FUNCTION_47_1();
  if (!v27)
  {
    goto LABEL_45;
  }

  if (!v26)
  {
    if (a9 == 0.0 && fbapop_ruleIsOnlyThisConsumerConnected(a1, v20))
    {
      if (*(*(CMBaseObjectGetVTable() + 16) + 8))
      {
        v35 = OUTLINED_FUNCTION_3_4();
        if (!v36(v35))
        {
          goto LABEL_35;
        }
      }
    }

    goto LABEL_45;
  }

  if (a9 != 0.0)
  {
    CMBaseObjectGetDerivedStorage();
    *&v52 = 0;
    *(&v52 + 1) = &v52;
    v53 = 0x2000000000;
    LOBYTE(v54) = 0;
    *&v55 = MEMORY[0x1E69E9820];
    *(&v55 + 1) = 0x40000000;
    v56 = __fbapop_ruleIsAnotherRPConnected_and_NotReachedEndOfTrack_and_HasOverlapRangeOutro_block_invoke;
    v57 = &unk_1E7477520;
    v58 = &v52;
    v59 = v20;
    FigCFDictionaryApplyBlock();
    v28 = *(*(&v52 + 1) + 24);
    _Block_object_dispose(&v52, 8);
    if (v28)
    {
      *(v20 + 184) = a9;
      *(v20 + 192) = v50;
      *(v20 + 208) = v51;
      *(v20 + 216) = v48;
      *(v20 + 232) = v49;
      *(v20 + 240) = a6;
      *(v20 + 248) = v47;
      v29 = *(v20 + 176);
      if (!v29)
      {
LABEL_28:
        if (*(*(CMBaseObjectGetVTable() + 16) + 8))
        {
          v33 = OUTLINED_FUNCTION_3_4();
          if (!v34(v33))
          {
            fbapop_connectRenderPipelineToBAO(a1, v20, 0);
          }
        }

        goto LABEL_35;
      }

      v30 = *(v20 + 48);
      v31 = *v29;
      v32 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v32 && !v32(v30, v31))
      {
        fbapoprp_renderPipelineStateReleaseDeferResetContext(v20);
        goto LABEL_28;
      }

LABEL_35:
      v37 = 0;
      goto LABEL_36;
    }

    goto LABEL_45;
  }

  v39 = *(v20 + 64);
  Rate = CMTimebaseGetRate(*(v20 + 56));
  v41 = *(v20 + 47);
  if (!*(*(CMBaseObjectGetVTable() + 16) + 8))
  {
    goto LABEL_45;
  }

  v42 = OUTLINED_FUNCTION_3_4();
  if (v43(v42))
  {
    goto LABEL_45;
  }

  if (*(v20 + 68) && FigCFDictionaryGetBooleanValue() == *MEMORY[0x1E695E4D0] && !v39)
  {
    fbapop_invokeCallbackAndReleaseRenderPipelineSetRateAndAnchorTimeContextWithError(a1, v20, -17326);
    goto LABEL_35;
  }

  v37 = 0;
  if (v39)
  {
    if (Rate == 0.0 && !v41)
    {
LABEL_45:
      v55 = *a3;
      v56 = *(a3 + 2);
      v52 = *a4;
      v53 = *(a4 + 2);
      v44 = fbapop_callSetRateOnBAO(a1, a2, a9, &v55, &v52, v45, a6, v47, v46);
LABEL_46:
      v37 = v44;
    }
  }

LABEL_36:
  FigSimpleMutexUnlock();
  return v37;
}

uint64_t fbapop_flush(uint64_t a1, uint64_t a2)
{
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_43_2();
  if (!fbapop_tokenIsValid(a1, a2))
  {
    goto LABEL_21;
  }

  if (!a2)
  {
    goto LABEL_20;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = OUTLINED_FUNCTION_57_1(DerivedStorage);
  if (!v7)
  {
LABEL_21:
    OUTLINED_FUNCTION_243();
    a2 = FigSignalErrorAtGM();
    goto LABEL_20;
  }

  v8 = v7;
  if (dword_1EAF16AD0)
  {
    v9 = OUTLINED_FUNCTION_18_2();
    OUTLINED_FUNCTION_304(v9, v10, v11, v12, v13, v14, v15, v16, v22, v23, v24, v25, SBYTE2(v25), BYTE3(v25), SHIDWORD(v25));
    OUTLINED_FUNCTION_46();
    if (v3)
    {
      if (a1)
      {
        CMBaseObjectGetDerivedStorage();
      }

      if (*(v8 + 68))
      {
        FigCFDictionaryGetBooleanValue();
        OUTLINED_FUNCTION_23_2();
      }

      OUTLINED_FUNCTION_139();
      OUTLINED_FUNCTION_31_2();
      OUTLINED_FUNCTION_30_3();
      OUTLINED_FUNCTION_1_8();
      OUTLINED_FUNCTION_10_3();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_238_0();
  }

  if (fbapop_ruleIsConsumerConnected(v8) == 1)
  {
    goto LABEL_14;
  }

  v17 = *(v2 + 24);
  v18 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v18)
  {
    a2 = 4294954514;
    goto LABEL_20;
  }

  a2 = v18(v17);
  if (!a2)
  {
    v19 = *(v2 + 96);
    v20 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v20)
    {
      v20(v19);
    }

LABEL_14:
    a2 = 0;
  }

LABEL_20:
  FigSimpleMutexUnlock();
  return a2;
}

uint64_t fbapop_flushWithinTimeRange(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v254 = *MEMORY[0x1E69E9840];
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_43_2();
  if (!fbapop_tokenIsValid(a1, a2))
  {
    goto LABEL_64;
  }

  if (!a2)
  {
    goto LABEL_18;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = OUTLINED_FUNCTION_57_1(DerivedStorage);
  if (!v9)
  {
LABEL_64:
    OUTLINED_FUNCTION_111();
    v20 = FigSignalErrorAtGM();
    goto LABEL_19;
  }

  v10 = v9;
  if (dword_1EAF16AD0)
  {
    v237.n128_u32[0] = 0;
    LOBYTE(type.value) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_28();
    if (v4)
    {
      if (a1)
      {
        v12 = CMBaseObjectGetDerivedStorage();
      }

      else
      {
        v12 = "";
      }

      v13 = *(v10 + 32);
      if (*(v10 + 68))
      {
        FigCFDictionaryGetBooleanValue();
      }

      v14 = OUTLINED_FUNCTION_55_2(*(a3 + 16), sampleTimingArray, v144, sampleSizeArray, v156, v162, v170, v176, v182, v188, v196, v202, v210, v217, v224, v227, type.value, *&type.timescale, type.epoch, v233, dictionaryRepresentation, v235, target, v237.n128_i64[0], v237.n128_i64[1], v238, v239, v240, v241, time2.value, *&time2.timescale, time2.epoch, v243, *v244, *&v244[8], *&v244[16], *&v244[24], v245, v246, *a3, *(a3 + 8), cf.epoch);
      OUTLINED_FUNCTION_55_2(*(a3 + 40), sampleTimingArrayc, v145, sampleSizeArrayc, v157, v163, v171, v177, v183, v189, v197, v203, v211, v218, v225, v228, type.value, *&type.timescale, type.epoch, v233, dictionaryRepresentation, v235, target, v237.n128_i64[0], v237.n128_i64[1], v238, v239, v240, v241, time2.value, *&time2.timescale, time2.epoch, v243, *v244, *&v244[8], *&v244[16], *&v244[24], v245, v246, *(a3 + 24), *(a3 + 32), cf.epoch);
      LODWORD(time2.value) = 136316674;
      *(&time2.value + 4) = "fbapop_flushWithinTimeRange";
      LOWORD(time2.flags) = 2048;
      *(&time2.flags + 2) = a1;
      HIWORD(time2.epoch) = 2082;
      v243 = v12;
      *v244 = 2112;
      *&v244[2] = v13;
      OUTLINED_FUNCTION_59_1();
      *&v244[22] = v14;
      *&v244[30] = v15;
      v245 = v16;
      OUTLINED_FUNCTION_117();
      OUTLINED_FUNCTION_4_7();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_417();
  }

  cf.value = 0;
  v17 = *(v10 + 24);
  v18 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v18)
  {
    goto LABEL_18;
  }

  v19 = *MEMORY[0x1E695E480];
  if (v18(v17, @"DownstreamConsumer", *MEMORY[0x1E695E480], &cf))
  {
    if (cf.value)
    {
      CFRelease(cf.value);
    }

    goto LABEL_18;
  }

  if (cf.value)
  {
    CFRelease(cf.value);
    goto LABEL_23;
  }

  if (!*(v10 + 77))
  {
LABEL_18:
    v20 = 0;
    goto LABEL_19;
  }

LABEL_23:
  v240 = *a3;
  v22 = *(a3 + 12);
  LODWORD(v241) = *(a3 + 8);
  v23 = *(a3 + 16);
  v219 = *(a3 + 24);
  v229 = *(a3 + 40);
  v24 = CMBaseObjectGetDerivedStorage();
  v239 = 0;
  v252 = *MEMORY[0x1E6960C70];
  v253 = *(MEMORY[0x1E6960C70] + 8);
  v237 = *(MEMORY[0x1E6960C98] + 24);
  v238 = *(MEMORY[0x1E6960C98] + 40);
  v235 = 0;
  target = 0;
  dictionaryRepresentation = 0;
  if (qword_1ED4CA428 != -1)
  {
    dispatch_once(&qword_1ED4CA428, &__block_literal_global_174);
  }

  OUTLINED_FUNCTION_47_1();
  if (v25)
  {
    HIDWORD(v210) = v22;
    CMBaseObject = FigBufferedAirPlaySubPipeManagerGetCMBaseObject(*(v10 + 48));
    v27 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v27)
    {
      goto LABEL_101;
    }

    v28 = v27(CMBaseObject, @"LastProcessedOPTS", v19, &dictionaryRepresentation);
    if (!v28)
    {
      CMTimeMakeFromDictionary(&cf, dictionaryRepresentation);
      value = cf.value;
      timescale = cf.timescale;
      if (!*(v10 + 77))
      {
        if ((cf.flags & 1) == 0 || (OUTLINED_FUNCTION_15_2(), cf.flags = HIDWORD(v210), cf.epoch = v23, time2.value = value, time2.timescale = timescale, time2.flags = v57, time2.epoch = v58, (CMTimeCompare(&cf, &time2) & 0x80000000) == 0))
        {
          if (dword_1EAF16AD0)
          {
            v206 = v23;
            v59 = OUTLINED_FUNCTION_7_3();
            os_log_type_enabled(v59, HIBYTE(v233));
            OUTLINED_FUNCTION_28();
            if (CMBaseObject)
            {
              if (a1)
              {
                v60 = CMBaseObjectGetDerivedStorage();
              }

              else
              {
                v60 = "";
              }

              v61 = *(v10 + 32);
              if (*(v10 + 68))
              {
                BooleanValue = FigCFDictionaryGetBooleanValue();
                v63 = " (Outro)";
                if (BooleanValue == *MEMORY[0x1E695E4D0])
                {
                  v63 = " (Intro)";
                }
              }

              else
              {
                v63 = "";
              }

              v64 = *(v10 + 48);
              LODWORD(time2.value) = 136316418;
              *(&time2.value + 4) = "fbapop_processFlushWithinTimeRange";
              LOWORD(time2.flags) = 2048;
              *(&time2.flags + 2) = a1;
              HIWORD(time2.epoch) = 2082;
              v243 = v60;
              *v244 = 2112;
              *&v244[2] = v61;
              *&v244[10] = 2080;
              *&v244[12] = v63;
              *&v244[20] = 2048;
              *&v244[22] = v64;
              OUTLINED_FUNCTION_117();
              OUTLINED_FUNCTION_4_7();
              OUTLINED_FUNCTION_66_1();
            }

            OUTLINED_FUNCTION_7();
            OUTLINED_FUNCTION_417();
            v23 = v206;
          }

          v65 = *(v10 + 48);
          v66 = *(*(CMBaseObjectGetVTable() + 16) + 32);
          if (v66)
          {
            cf.value = v240;
            cf.timescale = v241;
            cf.flags = HIDWORD(v210);
            v248 = *MEMORY[0x1E6960C88];
            v67 = *(MEMORY[0x1E6960C88] + 16);
            cf.epoch = v23;
            v249 = v67;
            v28 = v66(v65, &cf);
            if (!v28)
            {
LABEL_61:
              v68 = *(v24 + 96);
              v69 = *(*(CMBaseObjectGetVTable() + 16) + 24);
              if (v69)
              {
                v69(v68);
              }

              v20 = 0;
              goto LABEL_102;
            }

            goto LABEL_39;
          }

LABEL_101:
          v20 = 4294954514;
          goto LABEL_102;
        }
      }

      v237 = v219;
      v238 = v229;
      v29 = FigBufferedAirPlaySubPipeManagerGetCMBaseObject(*(v10 + 48));
      v30 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v30)
      {
        goto LABEL_101;
      }

      v28 = v30(v29, @"MixStartMediaTime", v19, &v239);
      if (!v28)
      {
        CMTimeMakeFromDictionary(&cf, v239);
        v252 = cf.value;
        flags = cf.flags;
        v253 = cf.timescale;
        epoch = cf.epoch;
        v204 = v23;
        if (dword_1EAF16AD0)
        {
          value_low = LODWORD(type.value);
          v182 = OUTLINED_FUNCTION_7_3();
          LODWORD(v176) = HIBYTE(v233);
          v33 = os_log_type_enabled(v182, HIBYTE(v233));
          v34 = type.value & 0xFFFFFFFE;
          if (v33)
          {
            v34 = type.value;
          }

          if (v34)
          {
            HIDWORD(v170) = v34;
            if (a1)
            {
              v164 = CMBaseObjectGetDerivedStorage();
            }

            else
            {
              v164 = "";
            }

            if (OUTLINED_FUNCTION_65_2())
            {
              FigCFDictionaryGetBooleanValue();
            }

            OUTLINED_FUNCTION_55_2(epoch, sampleTimingArray, v144, sampleSizeArray, v156, v164, v170, v176, v182, epoch, v3, v204, v210, v219.n128_i64[0], v219.n128_i64[1], v229, type.value, *&type.timescale, type.epoch, v233, dictionaryRepresentation, v235, target, v237.n128_i64[0], v237.n128_i64[1], v238, v239, v240, v241, time2.value, *&time2.timescale, time2.epoch, v243, *v244, *&v244[8], *&v244[16], *&v244[24], v245, v246, v252, __SPAIR64__(flags, v253), cf.epoch);
            LODWORD(time2.value) = 136316418;
            *(&time2.value + 4) = "fbapop_processFlushWithinTimeRange";
            LOWORD(time2.flags) = 2048;
            *(&time2.flags + 2) = a1;
            OUTLINED_FUNCTION_40_1();
            *&v244[2] = value_low;
            OUTLINED_FUNCTION_59_1();
            *&v244[22] = v70;
            OUTLINED_FUNCTION_117();
            OUTLINED_FUNCTION_108();
            _os_log_send_and_compose_impl();
            OUTLINED_FUNCTION_66_1();
          }

          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_417();
          v23 = v204;
        }

        if (flags)
        {
          time2.value = v252;
          time2.timescale = v253;
          time2.flags = flags;
          time2.epoch = epoch;
          type.value = v240;
          type.timescale = v241;
          type.flags = HIDWORD(v210);
          type.epoch = v23;
          CMTimeAdd(&cf, &time2, &type);
          v252 = cf.value;
          LODWORD(v182) = cf.flags;
          v253 = cf.timescale;
          v192 = cf.epoch;
        }

        else
        {
          v252 = v240;
          v253 = v241;
          v192 = v23;
          LODWORD(v182) = HIDWORD(v210);
        }

        if (dword_1EAF16AD0)
        {
          v71 = OUTLINED_FUNCTION_7_3();
          v72 = LODWORD(type.value);
          v176 = v71;
          HIDWORD(v170) = HIBYTE(v233);
          os_log_type_enabled(v71, HIBYTE(v233));
          OUTLINED_FUNCTION_28();
          if (flags)
          {
            if (a1)
            {
              v166 = CMBaseObjectGetDerivedStorage();
            }

            else
            {
              v166 = "";
            }

            if (OUTLINED_FUNCTION_65_2())
            {
              if (FigCFDictionaryGetBooleanValue() == *MEMORY[0x1E695E4D0])
              {
                v73 = " (Intro)";
              }

              else
              {
                v73 = " (Outro)";
              }
            }

            else
            {
              v73 = "";
            }

            OUTLINED_FUNCTION_16_3();
            cf.flags = HIDWORD(v210);
            v74 = OUTLINED_FUNCTION_55_2(v204, sampleTimingArray, v144, sampleSizeArray, v156, v166, v170, v176, v182, v192, v196, v204, v210, v219.n128_i64[0], v219.n128_i64[1], v229, type.value, *&type.timescale, type.epoch, v233, dictionaryRepresentation, v235, target, v237.n128_i64[0], v237.n128_i64[1], v238, v239, v240, v241, time2.value, *&time2.timescale, time2.epoch, v243, *v244, *&v244[8], *&v244[16], *&v244[24], v245, v246, cf.value, *&cf.timescale, cf.epoch);
            OUTLINED_FUNCTION_14_1();
            OUTLINED_FUNCTION_55_2(v193, sampleTimingArrayd, v147, sampleSizeArrayd, v159, v167, v173, v179, v185, v193, v199, v207, v213, v222, v226, v230, type.value, *&type.timescale, type.epoch, v233, dictionaryRepresentation, v235, target, v237.n128_i64[0], v237.n128_i64[1], v238, v239, v240, v241, time2.value, *&time2.timescale, time2.epoch, v243, *v244, *&v244[8], *&v244[16], *&v244[24], v245, v246, cf.value, *&cf.timescale, cf.epoch);
            LODWORD(time2.value) = 136316674;
            *(&time2.value + 4) = "fbapop_processFlushWithinTimeRange";
            LOWORD(time2.flags) = 2048;
            *(&time2.flags + 2) = a1;
            OUTLINED_FUNCTION_40_1();
            *(v75 + 34) = v72;
            *&v244[10] = 2080;
            *(v75 + 44) = v73;
            *&v244[20] = v76;
            *&v244[22] = v74;
            *&v244[30] = v76;
            v245 = v77;
            OUTLINED_FUNCTION_117();
            OUTLINED_FUNCTION_108();
            _os_log_send_and_compose_impl();
            OUTLINED_FUNCTION_66_1();
          }

          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_417();
          v23 = v204;
        }

        v78 = *(v10 + 24);
        v79 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (!v79)
        {
          goto LABEL_101;
        }

        v28 = v79(v78, @"DownstreamConsumer", v19, &v235);
        if (!v28)
        {
          if (v235 || !*(v10 + 77))
          {
            OUTLINED_FUNCTION_14_1();
            v28 = OUTLINED_FUNCTION_45_2(v80, v237, v81, v82, v83, v84, v85, v86, v87, sampleTimingArray, v144, sampleSizeArray, v156, v162, v170, v176, v182, v192, v196, v204, v210, v219.n128_i64[0], v219.n128_i64[1], v229, type.value, *&type.timescale, type.epoch, v233, dictionaryRepresentation, v235, target, v237.n128_i64[0], v237.n128_i64[1], v238, v239, v240, v241, time2.value, *&time2.timescale, time2.epoch, v243, *v244, *&v244[8], *&v244[16], *&v244[24], v245, v246, *&cf.value, cf.epoch, v248, *(&v248 + 1), v249);
            if (!v28)
            {
              OUTLINED_FUNCTION_16_3();
              OUTLINED_FUNCTION_41_1(v88, v89, v90, v91, v92, v93, v94, v95, sampleTimingArrayb, v148, sampleSizeArrayb, v160, v168, v174, v180, v186, v194, v200, v208, v214, v96);
              FigBufferedAirPlayOverlapLinearTimeMapperRecordFlushWithinTimeRange(v97, v10, &cf);
              v98 = v10;
              OUTLINED_FUNCTION_16_3();
              OUTLINED_FUNCTION_41_1(v99, v100, v101, v102, v103, v104, v105, v106, sampleTimingArraye, v149, sampleSizeArraye, v161, v169, v175, v181, v187, v195, v201, v209, v215, v107);
              v28 = FigBufferedAirPlaySubPipeManagerFlushFromTime(v108, &cf);
              if (!v28)
              {
LABEL_92:
                *(v98 + 77) = 0;
                if (!*(v98 + 68))
                {
                  goto LABEL_61;
                }

                v110 = v98;
                if (FigCFDictionaryGetBooleanValue() == *MEMORY[0x1E695E4D0])
                {
                  FigCFDictionaryGetNumberValue();
                  RenderPipelineStateForMixEventIDWithOverlapRangeType = fbapop_getRenderPipelineStateForMixEventIDWithOverlapRangeType();
                  if (!RenderPipelineStateForMixEventIDWithOverlapRangeType)
                  {
                    goto LABEL_61;
                  }

                  v112 = RenderPipelineStateForMixEventIDWithOverlapRangeType;
                  if (!dword_1EAF16AD0)
                  {
                    goto LABEL_131;
                  }

                  v125 = OUTLINED_FUNCTION_7_3();
                  v126 = type.value;
                  v127 = os_log_type_enabled(v125, HIBYTE(v233));
                  v128 = v126 & 0xFFFFFFFE;
                  if (v127)
                  {
                    v128 = v126;
                  }

                  if (v128)
                  {
                    if (a1)
                    {
                      CMBaseObjectGetDerivedStorage();
                    }

                    v129 = *(v110 + 32);
                    if (*(v110 + 68))
                    {
                      FigCFDictionaryGetBooleanValue();
                    }

                    LODWORD(time2.value) = 136316418;
                    OUTLINED_FUNCTION_28_2();
                    *(v130 + 34) = v129;
                    *&v244[10] = 2080;
                    *(v130 + 44) = v131;
                    *&v244[20] = v132;
                    *(v130 + 54) = v133;
                    OUTLINED_FUNCTION_117();
                    OUTLINED_FUNCTION_108();
                    _os_log_send_and_compose_impl();
                  }
                }

                else
                {
                  if (!*(v98 + 68))
                  {
                    goto LABEL_61;
                  }

                  v109 = *MEMORY[0x1E695E4D0];
                  if (FigCFDictionaryGetBooleanValue() != v109)
                  {
                    goto LABEL_61;
                  }

                  FigCFDictionaryGetNumberValue();
                  v111 = fbapop_getRenderPipelineStateForMixEventIDWithOverlapRangeType();
                  if (!v111)
                  {
                    goto LABEL_61;
                  }

                  v112 = v111;
                  if (!dword_1EAF16AD0)
                  {
LABEL_131:
                    v28 = FigBufferedAirPlaySubPipeManagerRequestRetransmitAtDeadline(*(v112 + 48), 0);
                    if (!v28)
                    {
                      goto LABEL_61;
                    }

                    goto LABEL_39;
                  }

                  v113 = OUTLINED_FUNCTION_7_3();
                  v114 = LODWORD(type.value);
                  os_log_type_enabled(v113, HIBYTE(v233));
                  OUTLINED_FUNCTION_28();
                  if (v78)
                  {
                    if (a1)
                    {
                      CMBaseObjectGetDerivedStorage();
                    }

                    if (OUTLINED_FUNCTION_65_2())
                    {
                      FigCFDictionaryGetBooleanValue();
                    }

                    LODWORD(time2.value) = 136316418;
                    OUTLINED_FUNCTION_28_2();
                    *(v134 + 34) = v114;
                    *&v244[10] = 2080;
                    *(v134 + 44) = v135;
                    *&v244[20] = v136;
                    *(v134 + 54) = v137;
                    OUTLINED_FUNCTION_117();
                    OUTLINED_FUNCTION_108();
                    _os_log_send_and_compose_impl();
                    OUTLINED_FUNCTION_66_1();
                  }
                }

                OUTLINED_FUNCTION_7();
                fig_log_call_emit_and_clean_up_after_send_and_compose();
                goto LABEL_131;
              }
            }
          }

          else
          {
            v98 = v10;
            OUTLINED_FUNCTION_14_1();
            v28 = OUTLINED_FUNCTION_45_2(v115, v237, v116, v117, v118, v119, v120, v121, v122, sampleTimingArray, v144, sampleSizeArray, v156, v162, v170, v176, v182, v192, v196, v204, v210, v219.n128_i64[0], v219.n128_i64[1], v229, type.value, *&type.timescale, type.epoch, v233, dictionaryRepresentation, v235, target, v237.n128_i64[0], v237.n128_i64[1], v238, v239, v240, v241, time2.value, *&time2.timescale, time2.epoch, v243, *v244, *&v244[8], *&v244[16], *&v244[24], v245, v246, *&cf.value, cf.epoch, v248, *(&v248 + 1), v249);
            if (!v28)
            {
              OUTLINED_FUNCTION_16_3();
              cf.flags = v216;
              v248 = v223;
              cf.epoch = v23;
              v249 = v231;
              FigBufferedAirPlayOverlapLinearTimeMapperRecordFlushWithinTimeRange(v123, v10, &cf);
              v28 = CMSampleBufferCreate(v19, 0, 1u, 0, 0, 0, 0, 0, 0, 0, 0, &target);
              if (!v28)
              {
                CMSetAttachment(target, @"FlushRangeEnd", *MEMORY[0x1E695E4D0], 1u);
                v28 = FigSampleBufferConsumerSendSampleBuffer(*(v24 + 88), target);
                if (!v28)
                {
                  FigSampleBufferConsumerFlush(*(v10 + 24));
                  goto LABEL_92;
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
    if (!*(*(CMBaseObjectGetVTable() + 16) + 24))
    {
      goto LABEL_101;
    }

    OUTLINED_FUNCTION_15_2();
    cf.flags = v22;
    v43 = OUTLINED_FUNCTION_36_2(v35, v36, v37, v38, v39, v40, v41, v42, sampleTimingArray, v144, sampleSizeArray, v156, v162, v170, v176, v182, v188, v196, v202, v210, *&v219);
    v28 = v44(v43);
    if (!v28)
    {
      if (!*(*(CMBaseObjectGetVTable() + 16) + 32))
      {
        goto LABEL_101;
      }

      OUTLINED_FUNCTION_15_2();
      cf.flags = v22;
      v53 = OUTLINED_FUNCTION_36_2(v45, v46, v47, v48, v49, v50, v51, v52, sampleTimingArraya, v146, sampleSizeArraya, v158, v165, v172, v178, v184, v191, v198, v205, v212, v220);
      v28 = v54(v53);
      if (!v28)
      {
        v55 = *(v24 + 96);
        if (*(*(CMBaseObjectGetVTable() + 16) + 32))
        {
          OUTLINED_FUNCTION_15_2();
          cf.flags = v22;
          v248 = v221;
          cf.epoch = v23;
          v249 = v229;
          v56(v55, v10, &cf);
        }

        goto LABEL_61;
      }
    }
  }

LABEL_39:
  v20 = v28;
LABEL_102:
  if (dictionaryRepresentation)
  {
    CFRelease(dictionaryRepresentation);
  }

  if (v235)
  {
    CFRelease(v235);
  }

  if (v239)
  {
    CFRelease(v239);
  }

  if (target)
  {
    CFRelease(target);
  }

LABEL_19:
  FigSimpleMutexUnlock();
  return v20;
}

uint64_t fbapop_reset(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4)
{
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_43_2();
  if (!fbapop_tokenIsValid(a1, a2))
  {
    goto LABEL_27;
  }

  if (!a2)
  {
LABEL_24:
    v19 = 0;
    goto LABEL_25;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!OUTLINED_FUNCTION_70_2(DerivedStorage))
  {
LABEL_27:
    OUTLINED_FUNCTION_111();
    v19 = FigSignalErrorAtGM();
    goto LABEL_25;
  }

  CMBaseObjectGetDerivedStorage();
  FigCFDictionaryApplyBlock();
  v8 = CMBaseObjectGetDerivedStorage();
  v9 = OUTLINED_FUNCTION_70_2(v8);
  if (qword_1ED4CA428 != -1)
  {
    dispatch_once(&qword_1ED4CA428, &__block_literal_global_174);
  }

  OUTLINED_FUNCTION_47_1();
  v10 = MEMORY[0x1E695E480];
  if (!v11)
  {
    goto LABEL_20;
  }

  CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (!*(v9 + 68))
  {
    goto LABEL_20;
  }

  v12 = v9[3];
  v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v13)
  {
    goto LABEL_15;
  }

  v14 = v13(v12, @"DownstreamConsumer", *v10, &cf);
  v15 = 0;
  v16 = cf;
  if (!v14 && cf)
  {
    if (*(v9 + 68))
    {
      if (FigCFDictionaryGetBooleanValue() == *MEMORY[0x1E695E4D0] || *(v9 + 68) && (v17 = *MEMORY[0x1E695E4D0], FigCFDictionaryGetBooleanValue() == v17))
      {
        v15 = 1;
        goto LABEL_16;
      }
    }

LABEL_15:
    v15 = 0;
LABEL_16:
    v16 = cf;
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (v15)
  {
    goto LABEL_23;
  }

LABEL_20:
  if (!fbapop_ruleIsOnlyThisConsumerConnected(a1, v9))
  {
LABEL_23:
    fbapop_renderPipelineHandleReset(a1, v9, a4);
    goto LABEL_24;
  }

  fbapoprp_renderPipelineStateReleaseDeferResetContext(v9);
  v18 = MEMORY[0x19A8CC720](*v10, 1, 0x100004077774924, 0);
  v9[22] = v18;
  if (v18)
  {
    v19 = 0;
    *v18 = a4;
  }

  else
  {
    v19 = 4294954510;
  }

LABEL_25:
  FigSimpleMutexUnlock();
  return v19;
}

void fbapop_setConnectionActive(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, int a12, __int16 a13, char a14, os_log_type_t type, unsigned int a16, int a17, int a18, int a19, __int16 a20, uint64_t a21, uint64_t a22, __int16 a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56)
{
  OUTLINED_FUNCTION_415();
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v64 = v63;
  v66 = v65;
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_43_2();
  if (!fbapop_tokenIsValid(v66, v64))
  {
    goto LABEL_21;
  }

  if (!v64)
  {
    goto LABEL_18;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Value = CFDictionaryGetValue(*(DerivedStorage + 32), *v64);
  if (Value)
  {
    if (dword_1EAF16AD0)
    {
      v69 = Value;
      OUTLINED_FUNCTION_147();
      v70 = OUTLINED_FUNCTION_126();
      if (os_log_type_enabled(v70, type))
      {
        v71 = a16;
      }

      else
      {
        v71 = a16 & 0xFFFFFFFE;
      }

      if (v71)
      {
        if (v66)
        {
          CMBaseObjectGetDerivedStorage();
        }

        if (*(v69 + 68))
        {
          FigCFDictionaryGetBooleanValue();
          OUTLINED_FUNCTION_23_2();
        }

        OUTLINED_FUNCTION_139();
        OUTLINED_FUNCTION_31_2();
        OUTLINED_FUNCTION_30_3();
        OUTLINED_FUNCTION_1_8();
        OUTLINED_FUNCTION_108();
        _os_log_send_and_compose_impl();
        v62 = v62;
      }

      OUTLINED_FUNCTION_7();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v72 = *(v56 + 24);
    v73 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (v73)
    {
      v73(v72, v62, v60, v58);
    }
  }

  else
  {
LABEL_21:
    OUTLINED_FUNCTION_429();
    FigSignalErrorAtGM();
  }

LABEL_18:
  FigSimpleMutexUnlock();
  OUTLINED_FUNCTION_355();
}

uint64_t fbapop_stopForReconfiguration(uint64_t a1, unsigned int *a2)
{
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_43_2();
  if (!fbapop_tokenIsValid(a1, a2))
  {
    goto LABEL_23;
  }

  if (!a2)
  {
    v13 = 0;
    goto LABEL_20;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = OUTLINED_FUNCTION_70_2(DerivedStorage);
  if (v6)
  {
    if (dword_1EAF16AD0)
    {
      v7 = v6;
      v8 = OUTLINED_FUNCTION_18_2();
      if (os_log_type_enabled(v8, type))
      {
        v9 = v16;
      }

      else
      {
        v9 = v16 & 0xFFFFFFFE;
      }

      if (v9)
      {
        if (a1)
        {
          CMBaseObjectGetDerivedStorage();
        }

        if (*(v7 + 68))
        {
          FigCFDictionaryGetBooleanValue();
          OUTLINED_FUNCTION_23_2();
        }

        OUTLINED_FUNCTION_139();
        OUTLINED_FUNCTION_31_2();
        OUTLINED_FUNCTION_30_3();
        OUTLINED_FUNCTION_1_8();
        OUTLINED_FUNCTION_108();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_238_0();
    }

    v10 = *(v2 + 24);
    v11 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (!v11)
    {
      v13 = 4294954514;
      goto LABEL_20;
    }

    v12 = v11(v10);
  }

  else
  {
LABEL_23:
    OUTLINED_FUNCTION_239();
    v12 = FigSignalErrorAtGM();
  }

  v13 = v12;
LABEL_20:
  FigSimpleMutexUnlock();
  return v13;
}

uint64_t fbapop_prepareForSynchronizeToTimebase(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4, const void *a5, double a6)
{
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_43_2();
  if (!a2)
  {
    goto LABEL_27;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!OUTLINED_FUNCTION_57_1(DerivedStorage))
  {
    goto LABEL_32;
  }

  v13 = CMBaseObjectGetDerivedStorage();
  v14 = OUTLINED_FUNCTION_57_1(v13);
  if (dword_1EAF16AD0)
  {
    v15 = OUTLINED_FUNCTION_46_1();
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
      if (a1)
      {
        CMBaseObjectGetDerivedStorage();
      }

      fbapop_getRPType(v14);
      OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_108();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_49_1();
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_238_0();
  }

  if (!a5 || !v14 || *(v14 + 13) == 0xFFFFFFFLL)
  {
    OUTLINED_FUNCTION_33_2();
LABEL_32:
    SynchronizedToTimebaseRenderPipeline = FigSignalErrorAtGM();
    goto LABEL_29;
  }

  fbapop_getConnectedRenderPipelineID();
  if (!FigCFEqual())
  {
    *(v14 + 14) = a6;
    v19 = *a3;
    *(v14 + 17) = *(a3 + 2);
    *(v14 + 120) = v19;
    v20 = *a4;
    *(v14 + 20) = *(a4 + 2);
    *(v14 + 9) = v20;
    *(v14 + 21) = CFRetain(a5);
    SynchronizedToTimebaseRenderPipeline = fbapop_attempConnectNextSynchronizedToTimebaseRenderPipeline(a1);
LABEL_29:
    a2 = SynchronizedToTimebaseRenderPipeline;
    goto LABEL_27;
  }

  if (dword_1EAF16AD0)
  {
    v17 = OUTLINED_FUNCTION_46_1();
    os_log_type_enabled(v17, type);
    OUTLINED_FUNCTION_46();
    if (a4)
    {
      if (a1)
      {
        CMBaseObjectGetDerivedStorage();
      }

      if (OUTLINED_FUNCTION_65_2())
      {
        FigCFDictionaryGetBooleanValue();
        OUTLINED_FUNCTION_23_2();
      }

      OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_10_3();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_238_0();
  }

  fbapoprp_clearRenderPipelineSynchronizeToTimebaseContext(v14);
  a2 = 0;
LABEL_27:
  FigSimpleMutexUnlock();
  return a2;
}

void fbapop_setPipelineProperty(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, os_log_type_t type, unsigned int a15, int a16, int a17, int a18, __int16 a19, uint64_t a20, uint64_t a21, __int16 a22, uint64_t a23, int a24, int a25, __int16 a26, uint64_t a27, __int16 a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  OUTLINED_FUNCTION_415();
  v59 = v58;
  v61 = v60;
  v63 = v62;
  v65 = v64;
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_43_2();
  if (!fbapop_tokenIsValid(v65, v63))
  {
    goto LABEL_33;
  }

  if (!v63)
  {
    goto LABEL_17;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v67 = OUTLINED_FUNCTION_70_2(DerivedStorage);
  if (!v67)
  {
LABEL_33:
    OUTLINED_FUNCTION_429();
    FigSignalErrorAtGM();
    goto LABEL_17;
  }

  v68 = v67;
  if (CFEqual(@"DecodeForPrerollRate", v61))
  {
    CMBaseObject = FigBufferedAirPlaySubPipeManagerGetCMBaseObject(*(v68 + 48));
    v70 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v70)
    {
      v71 = kFigBufferedAirPlaySubPipeManagerProperty_DecodeForPrerollRate;
LABEL_16:
      v70(CMBaseObject, *v71, v59);
    }
  }

  else if (CFEqual(@"PipelineRate", v61))
  {
    CMBaseObject = FigBufferedAirPlaySubPipeManagerGetCMBaseObject(*(v68 + 48));
    v70 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v70)
    {
      v71 = kFigBufferedAirPlaySubPipeManagerProperty_PipelineRate;
      goto LABEL_16;
    }
  }

  else if (CFEqual(@"LoudnessInfo", v61))
  {
    CMBaseObject = FigBufferedAirPlaySubPipeManagerGetCMBaseObject(*(v68 + 48));
    v70 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v70)
    {
      v71 = kFigBufferedAirPlaySubPipeManagerProperty_LoudnessInfo;
      goto LABEL_16;
    }
  }

  else if (CFEqual(@"AudioProcessingTap", v61))
  {
    CMBaseObject = FigBufferedAirPlaySubPipeManagerGetCMBaseObject(*(v68 + 48));
    v70 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v70)
    {
      v71 = kFigBufferedAirPlaySubPipeManagerProperty_AudioProcessingTap;
      goto LABEL_16;
    }
  }

  else if (CFEqual(@"OverlapRange", v61))
  {
    if (!v59 || (v72 = CFGetTypeID(v59), v72 == CFDictionaryGetTypeID()))
    {
      fbapop_processOverlapRange(v65, v68, v59);
    }
  }

  else
  {
    if (CFEqual(@"WarehouseRetransmissionAvailable", v61))
    {
      v73 = *(v68 + 48);
      v61 = @"WarehouseRetransmissionAvailable";
    }

    else
    {
      if (dword_1EAF16AD0)
      {
        v74 = OUTLINED_FUNCTION_9_3();
        if (os_log_type_enabled(v74, type))
        {
          v75 = a15;
        }

        else
        {
          v75 = a15 & 0xFFFFFFFE;
        }

        if (v75)
        {
          if (v65)
          {
            CMBaseObjectGetDerivedStorage();
          }

          if (*(v68 + 68))
          {
            FigCFDictionaryGetBooleanValue();
            OUTLINED_FUNCTION_23_2();
          }

          OUTLINED_FUNCTION_139();
          OUTLINED_FUNCTION_8_2();
          OUTLINED_FUNCTION_60_1();
          OUTLINED_FUNCTION_39();
          OUTLINED_FUNCTION_108();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_449();
      }

      v73 = *(v68 + 48);
    }

    v76 = FigBufferedAirPlaySubPipeManagerGetCMBaseObject(v73);
    CMBaseObjectSetProperty(v76, v61, v59);
  }

LABEL_17:
  FigSimpleMutexUnlock();
  OUTLINED_FUNCTION_355();
}

void fbapop_copyPipelineProperty(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, os_log_type_t type, unsigned int a15, int a16, int a17, int a18, __int16 a19, uint64_t a20, uint64_t a21, __int16 a22, uint64_t a23, int a24, int a25, __int16 a26, uint64_t a27, __int16 a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  OUTLINED_FUNCTION_415();
  v59 = v58;
  v61 = v60;
  v63 = v62;
  v65 = v64;
  v67 = v66;
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_43_2();
  if (!fbapop_tokenIsValid(v67, v65))
  {
    goto LABEL_21;
  }

  if (!v65)
  {
    goto LABEL_18;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Value = CFDictionaryGetValue(*(DerivedStorage + 32), *v65);
  if (Value)
  {
    v70 = Value;
    if (dword_1EAF16AD0)
    {
      OUTLINED_FUNCTION_147();
      v71 = OUTLINED_FUNCTION_126();
      if (os_log_type_enabled(v71, type))
      {
        v72 = a15;
      }

      else
      {
        v72 = a15 & 0xFFFFFFFE;
      }

      if (v72)
      {
        if (v67)
        {
          CMBaseObjectGetDerivedStorage();
        }

        if (*(v70 + 68))
        {
          FigCFDictionaryGetBooleanValue();
          OUTLINED_FUNCTION_23_2();
        }

        OUTLINED_FUNCTION_139();
        OUTLINED_FUNCTION_31_2();
        OUTLINED_FUNCTION_30_3();
        OUTLINED_FUNCTION_60_1();
        OUTLINED_FUNCTION_39();
        OUTLINED_FUNCTION_108();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_7();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    CMBaseObject = FigBufferedAirPlaySubPipeManagerGetCMBaseObject(v70[6]);
    v74 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v74)
    {
      v74(CMBaseObject, v63, v61, v59);
    }
  }

  else
  {
LABEL_21:
    FigSignalErrorAtGM();
  }

LABEL_18:
  FigSimpleMutexUnlock();
  OUTLINED_FUNCTION_355();
}

BOOL fbapop_tokenIsValid(uint64_t a1, unsigned int *a2)
{
  CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    return 0;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  return CFDictionaryGetValue(*(DerivedStorage + 32), *a2) != 0;
}

uint64_t fbapop_attempConnectNextSynchronizedToTimebaseRenderPipeline(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  v27 = 0;
  v28 = &v27;
  v29 = 0x2000000000;
  v30 = 0;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x2000000000;
  v26[3] = 0xFFFFFFFLL;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2000000000;
  v25 = 0;
  v17 = MEMORY[0x1E69E9820];
  v18 = 0x40000000;
  v19 = __fbapop_attempConnectNextSynchronizedToTimebaseRenderPipeline_block_invoke;
  v20 = &unk_1E74773B0;
  v21 = &v22;
  FigCFDictionaryApplyBlock();
  if (!*(v23 + 24) && (v11 = MEMORY[0x1E69E9820], v12 = 0x40000000, v13 = __fbapop_attempConnectNextSynchronizedToTimebaseRenderPipeline_block_invoke_2, v14 = &unk_1E74773D8, v15 = v26, v16 = &v27, FigCFDictionaryApplyBlock(), (v2 = v28[3]) != 0))
  {
    v5 = *(v2 + 112);
    v9 = *(v2 + 120);
    v10 = *(v2 + 136);
    v7 = *(v2 + 144);
    v6 = *(v2 + 168);
    v8 = *(v2 + 160);
    v3 = fbapop_callSetRateOnBAO(a1, v2 + 40, v5, &v9, &v7, v6, 0, 0, 0);
    fbapoprp_clearRenderPipelineSynchronizeToTimebaseContext(v28[3]);
  }

  else
  {
    v3 = 0;
  }

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(v26, 8);
  _Block_object_dispose(&v27, 8);
  return v3;
}

void __fbapop_attempConnectNextSynchronizedToTimebaseRenderPipeline_block_invoke()
{
  v3 = *(*(OUTLINED_FUNCTION_52_1() + 8) + 48);
  if (v3)
  {
    v3(v2, @"DownstreamConsumer", *MEMORY[0x1E695E480], &cf);
    v4 = cf;
    if (cf)
    {
      if (!*(v1 + 46))
      {
        *(*(*(v0 + 32) + 8) + 24) = 1;
      }

      CFRelease(v4);
    }
  }
}

uint64_t fbapop_callSetRateOnBAO(uint64_t a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v56 = a9;
  v63[16] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    return 0;
  }

  v16 = DerivedStorage;
  v52 = a6;
  v54 = a7;
  v17 = CMBaseObjectGetDerivedStorage();
  v18 = OUTLINED_FUNCTION_57_1(v17);
  if (v18)
  {
    v19 = v18;
    if (dword_1EAF16AD0)
    {
      LOBYTE(type) = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_7();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    fbapop_renderPipelineHandleDeferResetIfNeeded(a1, v19);
    if (*(v19 + 46))
    {
      v21 = 0;
      goto LABEL_7;
    }

    CMBaseObjectGetDerivedStorage();
    v59 = 0;
    v60 = &v59;
    v61 = 0x2000000000;
    LOBYTE(v62) = 0;
    v63[0] = MEMORY[0x1E69E9820];
    v63[1] = 0x40000000;
    v63[2] = __fbapop_ruleIsAnotherRPConnected_and_HasSameMixEventID_block_invoke;
    v63[3] = &unk_1E7477488;
    v63[4] = &v59;
    v63[5] = v19;
    FigCFDictionaryApplyBlock();
    v48 = *(v60 + 24);
    _Block_object_dispose(&v59, 8);
    if (v48)
    {
      fbapop_connectRenderPipelineToBAO(a1, v19, 0);
LABEL_20:
      fbapoprp_renderPipelineStateReleaseDeferResetContext(v19);
      v21 = 1;
LABEL_7:
      if (qword_1ED4CA428 != -1)
      {
        dispatch_once(&qword_1ED4CA428, &__block_literal_global_174);
      }

      OUTLINED_FUNCTION_47_1();
      if (v22)
      {
        v23 = *(v19 + 48);
        v24 = OUTLINED_FUNCTION_35_2();
        v33 = *(v24 + 16);
        v32 = v24 + 16;
        if (!*(v33 + 8))
        {
          return 4294954514;
        }

        OUTLINED_FUNCTION_34_2(v32, v25, v26, v27, v28, v29, v30, v31, v49, v50, v51, v52, a7, v56, type);
        result = v34(v23, v63, &v59, a3);
        if (result)
        {
          return result;
        }
      }

      v36 = *(v16 + 24);
      v37 = OUTLINED_FUNCTION_35_2();
      v46 = *(v37 + 16);
      v45 = v37 + 16;
      if (*(v46 + 8))
      {
        OUTLINED_FUNCTION_34_2(v45, v38, v39, v40, v41, v42, v43, v44, v49, v50, v51, v52, v54, v56, type);
        return v47(v36, v21, v63, &v59, v53, v55, a8, v57, a3);
      }

      return 4294954514;
    }

    result = fbapop_connectRenderPipelineToBAO(a1, v19, 1);
    if (!result)
    {
      goto LABEL_20;
    }
  }

  else
  {

    return FigSignalErrorAtGM();
  }

  return result;
}

uint64_t fbapop_connectRenderPipelineToBAO(uint64_t a1, void *a2, int a3)
{
  v65 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v48 = 0;
  cf = 0;
  v7 = a2[3];
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v8)
  {
    goto LABEL_28;
  }

  v9 = *MEMORY[0x1E695E480];
  v10 = v8(v7, @"DownstreamConsumer", *MEMORY[0x1E695E480], &cf);
  v11 = cf;
  if (!v10 && !cf)
  {
    if (a3)
    {
      fbapop_disconnectAllRPConsumer();
    }

    if (qword_1ED4CA428 != -1)
    {
      dispatch_once(&qword_1ED4CA428, &__block_literal_global_174);
    }

    OUTLINED_FUNCTION_47_1();
    if (v12)
    {
      v13 = a2[6];
      if (!v13)
      {
        OUTLINED_FUNCTION_147();
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, BYTE3(type)))
        {
          v40 = HIDWORD(type);
        }

        else
        {
          v40 = HIDWORD(type) & 0xFFFFFFFE;
        }

        if (v40)
        {
          if (a1)
          {
            v41 = CMBaseObjectGetDerivedStorage();
          }

          else
          {
            v41 = "";
          }

          v42 = a2[4];
          RPType = fbapop_getRPType(a2);
          v50 = 136316162;
          v51 = "fbapop_connectRenderPipelineToBAO";
          v52 = 2048;
          v53 = a1;
          v54 = 2082;
          v55 = v41;
          v56 = 2112;
          v57 = v42;
          v58 = 2080;
          v59 = RPType;
          OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_108();
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v10 = 4294947886;
        goto LABEL_29;
      }

      CMBaseObject = FigBufferedAirPlaySubPipeManagerGetCMBaseObject(v13);
      v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v15)
      {
        v16 = v15(CMBaseObject, @"SourceSampleBufferConsumer", v9, &v48);
        if (!v16)
        {
          if (dword_1EAF16AD0)
          {
            v17 = OUTLINED_FUNCTION_18_2();
            OUTLINED_FUNCTION_304(v17, v18, v19, v20, v21, v22, v23, v24, v44, v45, v46, type, SBYTE2(type), BYTE3(type), SHIDWORD(type));
            OUTLINED_FUNCTION_46();
            OUTLINED_FUNCTION_7();
            OUTLINED_FUNCTION_238_0();
          }

          v35 = a2[3];
          v36 = v48;
          v37 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v37)
          {
            v10 = v37(v35, @"DownstreamConsumer", v36);
            if (!v10)
            {
              v64 = 0;
              FigCFDictionaryGetValueIfPresent();
              fbapop_startSubPipeManagersForMixEventID(a1, v64);
            }

            goto LABEL_29;
          }

          goto LABEL_28;
        }

LABEL_24:
        v10 = v16;
LABEL_29:
        v11 = cf;
        goto LABEL_30;
      }
    }

    else
    {
      if (dword_1EAF16AD0)
      {
        OUTLINED_FUNCTION_147();
        OUTLINED_FUNCTION_49_1();
        v25 = OUTLINED_FUNCTION_126();
        os_log_type_enabled(v25, BYTE3(type));
        OUTLINED_FUNCTION_28();
        if (a3)
        {
          if (a1)
          {
            v26 = CMBaseObjectGetDerivedStorage();
          }

          else
          {
            v26 = "";
          }

          v27 = a2[4];
          fbapop_getRPType(a2);
          OUTLINED_FUNCTION_37_1();
          v55 = v26;
          v56 = 2112;
          v57 = v27;
          v58 = 2080;
          v59 = v28;
          v60 = v29;
          v61 = v30;
          v62 = v29;
          v63 = v31;
          OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_4_7();
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_417();
      }

      v32 = a2[3];
      v33 = *(DerivedStorage + 40);
      v34 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v34)
      {
        v16 = v34(v32, @"DownstreamConsumer", v33);
        goto LABEL_24;
      }
    }

LABEL_28:
    v10 = 4294954514;
    goto LABEL_29;
  }

LABEL_30:
  if (v11)
  {
    CFRelease(v11);
  }

  if (v48)
  {
    CFRelease(v48);
  }

  return v10;
}

void fbapop_invokeCallbackAndReleaseRenderPipelineSetRateAndAnchorTimeContextWithError(const void *a1, void *a2, int a3)
{
  v42 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v22 = 0;
  v23 = &v22;
  v24 = 0x6000000000;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0;
  if (a2)
  {
    if (CFDictionaryContainsValue(*(DerivedStorage + 32), a2))
    {
      if (a2[30])
      {
        memcpy(v23 + 3, a2 + 23, 0x48uLL);
        fbapoprp_clearRenderPipelineSetRateAndAnchorTimeContext(a2);
        if (v23[10])
        {
          if (dword_1EAF16AD0)
          {
            v21 = 0;
            type = OS_LOG_TYPE_DEFAULT;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            OUTLINED_FUNCTION_28();
            if (v3)
            {
              if (a1)
              {
                v9 = CMBaseObjectGetDerivedStorage();
              }

              else
              {
                v9 = "";
              }

              v10 = a2[4];
              if (*(a2 + 68))
              {
                FigCFDictionaryGetBooleanValue();
                OUTLINED_FUNCTION_23_2();
              }

              else
              {
                v11 = "";
              }

              v30 = 136316418;
              v31 = "fbapop_invokeCallbackAndReleaseRenderPipelineSetRateAndAnchorTimeContextWithError";
              v32 = 2048;
              v33 = a1;
              v34 = 2082;
              v35 = v9;
              v36 = 2112;
              v37 = v10;
              v38 = 2080;
              v39 = v11;
              v40 = 1024;
              v41 = a3;
              OUTLINED_FUNCTION_4_7();
            }

            OUTLINED_FUNCTION_7();
            OUTLINED_FUNCTION_417();
          }

          if (a1)
          {
            CFRetain(a1);
          }

          OUTLINED_FUNCTION_25_1();
          v14 = 0x40000000;
          v15 = __fbapop_invokeCallbackAndReleaseRenderPipelineSetRateAndAnchorTimeContextWithError_block_invoke;
          v16 = &unk_1E74774F8;
          v19 = a3;
          v17 = &v22;
          v18 = a1;
          dispatch_async(v12, block);
        }
      }
    }
  }

  _Block_object_dispose(&v22, 8);
}

void __fbapop_deRegisterRenderPipeline_block_invoke(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int16 a11, char a12, os_log_type_t type, int a14, CFTypeRef cf, int a16, int a17, int a18, __int16 a19, uint64_t a20, __int16 a21, uint64_t a22, __int16 a23, uint64_t a24, __int16 a25, uint64_t a26, __int16 a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  OUTLINED_FUNCTION_415();
  a54 = v58;
  a55 = v59;
  v61 = v60;
  a43 = *MEMORY[0x1E69E9840];
  cf = 0;
  if (!CFEqual(*(v62 + 32), v60))
  {
    CMBaseObject = FigBufferedAirPlaySubPipeManagerGetCMBaseObject(v61[6]);
    v64 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v64 && !v64(CMBaseObject, @"ProcessingState", *MEMORY[0x1E695E480], &cf) && FigCFEqual())
    {
      if (dword_1EAF16AD0)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        OUTLINED_FUNCTION_7();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v66 = v61[6];
      v67 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v67)
      {
        v67(v66);
      }
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  OUTLINED_FUNCTION_355();
}

void __fbapop_setGoActiveOnConnectedRP_block_invoke()
{
  v2 = *(*(OUTLINED_FUNCTION_52_1() + 8) + 48);
  if (v2)
  {
    v2(v1, @"DownstreamConsumer", *MEMORY[0x1E695E480], &cf);
    if (cf)
    {
      v3 = FigCFWeakReferenceHolderCopyReferencedObject();
      if (v3)
      {
        v4 = *(v0 + 40);
        CMBaseObjectGetDerivedStorage();
        CFRetain(v3);
        OUTLINED_FUNCTION_25_1();
        v8 = 0x40000000;
        v9 = __fbapop_setGoActiveOnRPAsync_block_invoke;
        v10 = &__block_descriptor_tmp_167;
        v11 = v3;
        v12 = v4;
        dispatch_async(v5, block);
      }

      if (cf)
      {
        CFRelease(cf);
      }

      if (v3)
      {
        CFRelease(v3);
      }
    }
  }
}

uint64_t FigBufferedAirPlayOutputProxyCreate_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigBufferedAirPlayOutputProxyCreate_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigBufferedAirPlayOutputProxyCreate_cold_6(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigBufferedAirPlayOutputProxyCreate_cold_7(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fbapop_registerRenderPipeline_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fbapop_registerRenderPipeline_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fbapop_registerRenderPipeline_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fbapop_registerRenderPipeline_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fbapop_deRegisterRenderPipeline_cold_3(uint64_t a1, _DWORD *a2)
{
  *a2 = FigSignalErrorAtGM();

  return FigSimpleMutexUnlock();
}

uint64_t fbapop_preparePrebuffering_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fbapop_processOverlapRange_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigContentKeySessionRemoteCreateSessionForID(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2 && a3)
  {
    *a3 = 0;
    v3 = fcks_remote_ensureClientEstablished();
    if (v3)
    {
      return v3;
    }

    FigContentKeySessionGetClassID();
    v4 = CMDerivedObjectCreate();
    if (!v4)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_4();
      return FigSignalErrorAtGM();
    }

    return v4;
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();

    return FigSignalErrorAtGM();
  }
}

uint64_t FigContentKeySessionRemoteCreateSession(uint64_t a1, const __CFDictionary *a2, uint64_t a3, NSObject *a4, uint64_t a5, void *a6)
{
  xdict = 0;
  v22 = 0;
  v20 = 0;
  if (!a6)
  {
    goto LABEL_17;
  }

  *a6 = 0;
  v12 = fcks_remote_ensureClientEstablished();
  if (v12)
  {
    goto LABEL_18;
  }

  v12 = FigXPCCreateBasicMessage();
  if (v12)
  {
    goto LABEL_18;
  }

  if (a2)
  {
    if (CFDictionaryGetValue(a2, *MEMORY[0x1E6960F18]))
    {
      v12 = FigSandboxRegisterURLWithProcessAndCopyRegistration();
      if (v12)
      {
        goto LABEL_18;
      }
    }
  }

  v12 = FigXPCMessageSetCFDictionary();
  if (v12)
  {
    goto LABEL_18;
  }

  v12 = FigXPCRemoteClientSendSyncMessageCreatingReply();
  if (v12)
  {
    goto LABEL_18;
  }

  uint64 = xpc_dictionary_get_uint64(xdict, *MEMORY[0x1E69615A0]);
  if (!uint64)
  {
LABEL_17:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    v12 = FigSignalErrorAtGM();
LABEL_18:
    v14 = v12;
    goto LABEL_16;
  }

  v14 = FigContentKeySessionRemoteCreateSessionForID(a1, uint64, &v20);
  v15 = v20;
  if (!v14)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (!a3 || !a4 || !a5 || (dispatch_retain(a4), DerivedStorage[2] = a4, __copy_assignment_8_8_t0w4_pa0_52572_8_pa0_57120_16_pa0_14239_24_pa0_30190_32_pa0_41757_40((DerivedStorage + 3), a5), v17 = FigCFWeakReferenceHolderCreateWithReferencedObject(), (DerivedStorage[9] = v17) != 0))
    {
      v14 = 0;
      v18 = v20;
      DerivedStorage[10] = 0;
      v20 = 0;
      *a6 = v18;
      goto LABEL_16;
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    v14 = FigSignalErrorAtGM();
    v15 = v20;
  }

  if (v15)
  {
    CFRelease(v15);
  }

LABEL_16:
  FigXPCRelease();
  FigXPCRelease();
  return v14;
}

uint64_t fcks_remote_handleServerMessage()
{
  OpCode = FigXPCMessageGetOpCode();
  if (OpCode)
  {
    return OpCode;
  }

  else
  {
    return 4294951138;
  }
}

uint64_t fcks_remote_invalidate(uint64_t a1)
{
  v6 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  ObjectID = fcks_remote_getObjectID(a1, &v6);
  if (ObjectID || (ObjectID = FigXPCCreateBasicMessage(), ObjectID))
  {
    v4 = ObjectID;
  }

  else
  {
    v4 = FigXPCRemoteClientSendSyncMessage();
    if (!v4)
    {
      *DerivedStorage = 1;
    }
  }

  FigXPCRelease();
  return v4;
}

uint64_t fcks_remote_finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigXPCRemoteClientDisassociateObject();
  if (!*(DerivedStorage + 1) && !FigXPCCreateBasicMessage())
  {
    FigXPCRemoteClientSendAsyncMessage();
  }

  FigXPCRelease();
  v1 = *(DerivedStorage + 16);
  if (v1)
  {
    dispatch_release(v1);
  }

  v2 = *(DerivedStorage + 72);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 72) = 0;
  }

  v3 = *(DerivedStorage + 80);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 80) = 0;
  }

  return FigXPCRemoteClientKillServerOnTimeout();
}

uint64_t fcks_remote_copyProperty(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = 0;
  if (a2 && a4)
  {
    *a4 = 0;
    result = fcks_remote_getObjectID(a1, &v5);
    if (!result)
    {
      return FigXPCSendStdCopyPropertyMessage();
    }
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  return result;
}

uint64_t fcks_remote_setProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  if (a2 && a3)
  {
    result = fcks_remote_getObjectID(a1, &v4);
    if (!result)
    {
      return FigXPCSendStdSetPropertyMessage();
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();

    return FigSignalErrorAtGM();
  }

  return result;
}

uint64_t fcks_remote_copyCryptor(uint64_t a1, const __CFAllocator *a2, const __CFDictionary *a3, uint64_t a4, void *a5)
{
  v14 = 0;
  if (!a3 || !a5)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_4();
    ObjectID = FigSignalErrorAtGM();
    goto LABEL_21;
  }

  *a5 = 0;
  ObjectID = fcks_remote_getObjectID(a1, &v14);
  if (ObjectID)
  {
    goto LABEL_21;
  }

  ObjectID = FigXPCCreateBasicMessage();
  if (ObjectID)
  {
    goto LABEL_21;
  }

  v8 = *MEMORY[0x1E6960F48];
  CFDictionaryGetValue(a3, *MEMORY[0x1E6960F48]);
  FigXPCMessageSetFormatDescription();
  if (!CFDictionaryGetValue(a3, v8))
  {
    v10 = CFRetain(a3);
    goto LABEL_9;
  }

  MutableCopy = CFDictionaryCreateMutableCopy(a2, 0, a3);
  if (!MutableCopy)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_4();
    ObjectID = FigSignalErrorAtGM();
    if (!ObjectID)
    {
      v10 = 0;
      goto LABEL_9;
    }

LABEL_21:
    v12 = ObjectID;
    goto LABEL_18;
  }

  v10 = MutableCopy;
  CFDictionaryRemoveValue(MutableCopy, v8);
LABEL_9:
  v11 = FigXPCMessageSetCFDictionary();
  if (v11 || (v11 = FigXPCMessageSetCFBoolean(), v11) || (v11 = FigXPCRemoteClientSendSyncMessageCreatingReply(), v11))
  {
LABEL_14:
    v12 = v11;
    if (!v10)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (xpc_dictionary_get_uint64(0, "CryptorID"))
  {
    v11 = FigCPECryptorRemoteRetainCopiedCryptor();
    goto LABEL_14;
  }

  v12 = 0;
  if (v10)
  {
LABEL_17:
    CFRelease(v10);
  }

LABEL_18:
  FigXPCRelease();
  FigXPCRelease();
  return v12;
}

uint64_t fcks_remote_setAuthorizationToken(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  if (!a2 || !a3)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    ObjectID = FigSignalErrorAtGM();
    goto LABEL_11;
  }

  ObjectID = fcks_remote_getObjectID(a1, &v7);
  if (ObjectID)
  {
LABEL_11:
    v5 = ObjectID;
    goto LABEL_8;
  }

  v4 = FigXPCCreateBasicMessage();
  if (v4 || (v4 = FigXPCMessageSetCFString(), v4) || (v4 = FigXPCMessageSetCFData(), v4))
  {
    v5 = v4;
  }

  else
  {
    v5 = FigXPCRemoteClientSendSyncMessage();
  }

LABEL_8:
  FigXPCRelease();
  return v5;
}

uint64_t fcsk_remote_externalProtectionStatusForCryptor(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v8 = 0;
  if (!a1 || !a2 || !a3 || !a4)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    ObjectID = FigSignalErrorAtGM();
LABEL_13:
    v6 = ObjectID;
    goto LABEL_11;
  }

  ObjectID = fcks_remote_getObjectID(a1, &v8);
  if (ObjectID)
  {
    goto LABEL_13;
  }

  ObjectID = FigXPCCreateBasicMessage();
  if (ObjectID)
  {
    goto LABEL_13;
  }

  ObjectID = FigCPECryptorRemoteGetID();
  if (ObjectID)
  {
    goto LABEL_13;
  }

  xpc_dictionary_set_uint64(0, "CryptorID", 0);
  ObjectID = FigXPCMessageSetCFArray();
  if (ObjectID)
  {
    goto LABEL_13;
  }

  v6 = FigXPCRemoteClientSendSyncMessageCreatingReply();
  if (!v6)
  {
    *a4 = FigXPCMessageGetUInt32();
  }

LABEL_11:
  FigXPCRelease();
  FigXPCRelease();
  return v6;
}