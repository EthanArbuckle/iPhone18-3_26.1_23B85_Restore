size_t FigXPCMessageSetTimelineCoordinatorParticipantSnapshots_cold_3(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF00, 0xFFFFC2A1uLL, "<<<< FigTimelineCoordinator >>>>", 0x1C0B, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigXPCMessageCopyTimelineCoordinatorParticipantSnapshots_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF00, 0xFFFFC2A1uLL, "<<<< FigTimelineCoordinator >>>>", 0x1C2E, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigXPCMessageCopyTimelineCoordinatorParticipantSnapshots_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF00, 0xFFFFC2A1uLL, "<<<< FigTimelineCoordinator >>>>", 0x1C27, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigXPCMessageCopyTimelineCoordinatorParticipantSnapshots_cold_3(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF00, 0xFFFFC2A1uLL, "<<<< FigTimelineCoordinator >>>>", 0x1C24, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t figTimelineCoordinator_copyActiveSuspensionReasonsOnQueue_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF00, 0xFFFFC2A2uLL, "<<<< FigTimelineCoordinator >>>>", 0x147E, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t figTimelineCoordinatorTimelineStateCopy_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF00, 0xFFFFC2A1uLL, "<<<< FigTimelineCoordinator >>>>", 0x64E, v8, a7, a8);
  *a1 = result;
  return result;
}

void figTimelineCoordinator_fetchCompleteCallbackOnQueue_cold_1(uint64_t a1, CFTypeRef *a2)
{
  figTimelineCoordinator_sendExpectedTimelineStateToGroupOnQueue();
  if (*a2)
  {
    CFRelease(*a2);
    *a2 = 0;
  }
}

size_t figTimelineCoordinator_createDidIssueCommandNotificationPayload_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF00, 0xFFFFC2A2uLL, "<<<< FigTimelineCoordinator >>>>", 0xAC9, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t figTimelineCoordinatorParticipantCreateFromDictionary_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF00, 0xFFFFC2A2uLL, "<<<< FigTimelineCoordinator >>>>", 0x838, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t figTimelineCoordinatorParticipantCreateFromDictionary_cold_3(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF00, 0xFFFFC2A1uLL, "<<<< FigTimelineCoordinator >>>>", 0x835, v8, a7, a8);
  *a1 = result;
  return result;
}

void figTimelineCoordinator_integrateParticipantStateOnQueue_cold_1(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  *(a1 + 360) = 1;
  OUTLINED_FUNCTION_17_8();
  figTimelineCoordinator_transitionToNewExpectedTimelineIssuingCommandsWhenAppropriateOnQueue(v4, v5, v6, v7, v8, v9, v10, v11);
  if (*a3)
  {
    CFRelease(*a3);
    *a3 = 0;
  }
}

size_t figTimelineCoordinatorRemoveSuspensionInternal_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF00, 0xFFFFC2A1uLL, "<<<< FigTimelineCoordinator >>>>", 0x14BC, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigCaptionGroupCreate_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE14uLL, "(Fig)", 0xA1, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigCaptionGroupCreate_cold_3(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE14uLL, "(Fig)", 0x9F, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigCaptionGroupCreate_cold_4(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE14uLL, "(Fig)", 0x99, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigCaptionGroupCreate_cold_5(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE14uLL, "(Fig)", 0x98, v8, a7, a8);
  *a1 = result;
  return result;
}

uint64_t FigRPCServer_PickRPCTimeoutForCurrentThread(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  cf = 0;
  if (a1 && a2)
  {
    HIDWORD(v5) = qos_class_self() - 9;
    LODWORD(v5) = HIDWORD(v5);
    v4 = v5 >> 2;
    if (v4 <= 6)
    {
      v6 = 1 << v4;
      if ((v6 & 0xD) != 0)
      {
        v2 += a2;
        return v2;
      }

      if ((v6 & 0x50) != 0)
      {
        return v2;
      }
    }

    if (FigServer_IsServerProcess())
    {
      Current = FigThreadGetCurrent();
      v9 = FigThreadCopyProperty(Current, @"com.apple.fig.ThreadPropKey_MachThreadPriority", *MEMORY[0x1E695E480], &cf);
      v10 = cf;
      if (!v9)
      {
        if (FigCFNumberGetSInt32(cf) >= 32)
        {
          v11 = 0;
        }

        else
        {
          v11 = a2;
        }

        v2 += v11;
        v10 = cf;
      }

      if (v10)
      {
        CFRelease(v10);
      }
    }
  }

  return v2;
}

size_t FigRemote_CreateSerializedAtomDataForFormatDescriptions(const __CFArray *a1, uint64_t *a2, uint64_t a3, vm_size_t *a4)
{
  v25 = 0;
  v26 = 0;
  if (!a1)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_1_0();
    v24 = 4571;
LABEL_29:

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v20, 0xFFFFB348uLL, "<<<< FigSampleBufferSerialization >>>>", v24, v21, v22, v23);
  }

  if (!a2)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_1_0();
    v24 = 4572;
    goto LABEL_29;
  }

  if (!a4)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_1_0();
    v24 = 4573;
    goto LABEL_29;
  }

  SerializedDataForFormatDescriptionArray = OUTLINED_FUNCTION_0_73(&sKnownSBufKeysInit);
  if (SerializedDataForFormatDescriptionArray)
  {
    return SerializedDataForFormatDescriptionArray;
  }

  v9 = 1;
  v10 = MEMORY[0x1E69E9A60];
  while (1)
  {
    v11 = v9;
    if (a3)
    {
      v26 = a3;
      v12 = a3;
    }

    else
    {
      OUTLINED_FUNCTION_10_7();
      SerializedDataForFormatDescriptionArray = fdescAtom_createSerializedDataForFormatDescriptionArray(v15, v16, v17, v18);
      if (SerializedDataForFormatDescriptionArray)
      {
        return SerializedDataForFormatDescriptionArray;
      }

      v12 = v26;
      if (!v26)
      {
        v14 = 0;
        goto LABEL_16;
      }
    }

    v13 = vm_allocate(*v10, &v25, v12, 1543503873);
    if (v13)
    {
      v14 = v13;
      goto LABEL_10;
    }

    v14 = fdescAtom_createSerializedDataForFormatDescriptionArray(a1, v25, v26, 0);
    if (!v14)
    {
      break;
    }

LABEL_10:
    v12 = v26;
    if (v25 && v26)
    {
      MEMORY[0x19A8DA090](*v10);
      v12 = 0;
      v25 = 0;
      v26 = 0;
    }

    if (!a3 || v14 != -19649)
    {
      goto LABEL_23;
    }

    v14 = 4294947647;
LABEL_16:
    v9 = 0;
    a3 = 0;
    if ((v11 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  v12 = v26;
LABEL_23:
  *a4 = v12;
  *a2 = v25;
  return v14;
}

size_t fdescAtom_createSerializedDataForFormatDescriptionArray(const __CFArray *a1, uint64_t a2, uint64_t a3, void *a4)
{
  Count = CFArrayGetCount(a1);
  v18 = 0u;
  v19 = 0u;
  v20 = 0;
  v16 = a2;
  v17 = a3;
  result = FigNEAtomWriterBeginAtom(&v16, 1718776441);
  if (!result)
  {
    if (Count < 1)
    {
LABEL_8:
      result = FigNEAtomWriterEndAtom(&v16);
      if (a4 && !result)
      {
        v13 = *(&v19 + 1);
        if (*(&v19 + 1) == 8)
        {
          v13 = 0;
        }

        *a4 = v13;
      }
    }

    else
    {
      v9 = 0;
      while (1)
      {
        OUTLINED_FUNCTION_38_1();
        v10 = OUTLINED_FUNCTION_24_6();
        ValueAtIndex = CFArrayGetValueAtIndex(v10, v11);
        v14[4] = 0;
        v14[5] = 0;
        v15 = 0;
        v14[0] = v16;
        v14[1] = v17;
        v14[2] = &v16;
        v14[3] = *(&v19 + 1) + *(&v18 + 1);
        result = OUTLINED_FUNCTION_40_1(v14);
        if (result)
        {
          break;
        }

        result = sbufAtom_appendFormatDescriptionAtomGuts(ValueAtIndex, v14);
        if (result)
        {
          break;
        }

        result = FigNEAtomWriterEndAtom(v14);
        if (result)
        {
          break;
        }

        if (Count == ++v9)
        {
          goto LABEL_8;
        }
      }
    }
  }

  return result;
}

uint64_t sbufAtom_copyFormatDescriptionFromAtom(const __CFAllocator *a1, uint64_t a2, unint64_t a3, CMFormatDescriptionRef *a4)
{
  v4 = a4;
  allocator = a1;
  v70 = 0;
  memset(&asbd, 0, sizeof(asbd));
  v67 = *&kCMTimeInvalid.value;
  v68 = 0;
  v65 = 0;
  cf = 0;
  if (!a3)
  {
    v19 = 0;
    v18 = 0;
    goto LABEL_67;
  }

  formatDescriptionOut = a4;
  v7 = 0;
  width = 0;
  v59 = 0;
  HIDWORD(v55) = 0;
  v60 = 0;
  v53 = 0;
  v54 = 0;
  v51 = 0;
  v52 = 0;
  v8 = a2 + 8;
  do
  {
    IsValid = figReadNEAtomHeader(a2, v7, a3, &v65 + 1, &v65);
    if (IsValid)
    {
      goto LABEL_69;
    }

    v16 = v65;
    switch(HIDWORD(v65))
    {
      case 0x61736264:
        if (v65 != 48)
        {
          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_6_13();
          v46 = 4294947652;
          v47 = 3593;
          goto LABEL_94;
        }

        v17 = *(v8 + v7 + 16);
        *&asbd.mSampleRate = *(v8 + v7);
        *&asbd.mBytesPerPacket = v17;
        *&asbd.mBitsPerChannel = *(v8 + v7 + 32);
        break;
      case 0x63686E6C:
        if (v65 <= 8uLL)
        {
          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_6_13();
          v46 = 4294947652;
          v47 = 3599;
          goto LABEL_94;
        }

        if (v65 <= 0xBuLL)
        {
          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_6_13();
          v46 = 4294954516;
          v47 = 3601;
          goto LABEL_94;
        }

        v51 = (v8 + v7);
        v52 = v65 - 8;
        IsValid = FigAudioChannelLayoutIsValid((v8 + v7), v52);
        if (!IsValid)
        {
          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_6_13();
          v46 = 4294954516;
          v47 = 3604;
LABEL_94:
          IsValid = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v42, v46, "<<<< FigSampleBufferSerialization >>>>", v47, v43, v44, v45);
          goto LABEL_69;
        }

        break;
      case 0x636F6463:
        if (v65 != 12)
        {
          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_6_13();
          v46 = 4294947652;
          v47 = 3587;
          goto LABEL_94;
        }

        HIDWORD(v59) = *(v8 + v7);
        break;
      case 0x63756B69:
        if (v65 <= 8uLL)
        {
          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_6_13();
          v46 = 4294947652;
          v47 = 3609;
          goto LABEL_94;
        }

        v54 = v65 - 8;
        v53 = (v8 + v7);
        break;
      case 0x6578746E:
        if (v65 <= 8uLL)
        {
          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_6_13();
          v46 = 4294947652;
          v47 = 3640;
          goto LABEL_94;
        }

        sbufAtom_copyDictionaryFromAtom(allocator, v8 + v7, v65 - 8, &v70, v12, v13, v14, v15, v48, value, formatDescriptionOut, v51, v52, v53, v54, v55, width, v59, v60, allocator, v62, *(&v62 + 1), v63, v64);
        if (IsValid)
        {
          goto LABEL_69;
        }

        break;
      case 0x66647572:
        if (v65 != 32)
        {
          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_6_13();
          v46 = 4294947652;
          v47 = 3634;
          goto LABEL_94;
        }

        v67 = *(v8 + v7);
        v68 = *(v8 + v7 + 16);
        break;
      case 0x7664696D:
        if (v65 != 16)
        {
          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_6_13();
          v46 = 4294947652;
          v47 = 3581;
          goto LABEL_94;
        }

        HIDWORD(width) = *(a2 + v7 + 8);
        LODWORD(v59) = *(a2 + v7 + 12);
        break;
      case 0x6D737562:
        if (v65 != 12)
        {
          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_6_13();
          v46 = 4294947652;
          v47 = 3616;
          goto LABEL_94;
        }

        HIDWORD(v60) = *(v8 + v7);
        break;
      case 0x7175616E:
        if (v65 != 12)
        {
          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_6_13();
          v46 = 4294947652;
          v47 = 3628;
          goto LABEL_94;
        }

        LODWORD(width) = *(v8 + v7);
        break;
      case 0x74636667:
        if (v65 != 12)
        {
          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_6_13();
          v46 = 4294947652;
          v47 = 3622;
          goto LABEL_94;
        }

        HIDWORD(v55) = *(v8 + v7);
        break;
      case 0x74676361:
        if (v65 <= 8uLL)
        {
          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_6_13();
          v46 = 4294947652;
          v47 = 3646;
          goto LABEL_94;
        }

        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }

        IsValid = sbufAtom_copyTagCollectionArrayFromAtom(allocator, v8 + v7, v16 - 8, &cf);
        if (IsValid)
        {
          goto LABEL_69;
        }

        break;
      case 0x6D646961:
        if (v65 != 12)
        {
          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_6_13();
          v46 = 4294947652;
          v47 = 3575;
          goto LABEL_94;
        }

        LODWORD(v60) = *(v8 + v7);
        break;
      default:
        break;
    }

    v7 += v16;
  }

  while (v7 < a3);
  v18 = v60;
  v19 = HIDWORD(v60);
  v4 = formatDescriptionOut;
  switch(v60)
  {
    case 0x61757876:
      goto LABEL_65;
    case 0x636C6370:
      v21 = v70;
      v22 = allocator;
      v18 = 1668047728;
      goto LABEL_68;
    case 0x63706772:
      v39 = OUTLINED_FUNCTION_31_5(IsValid, 1668310898, v10, v11, v12, v13, v14, formatDescriptionOut, v48, value, formatDescriptionOut, v51, v52, v53, v54, v55, width, v59, v60, allocator);
      IsValid = FigCaptionGroupFormatDescriptionCreate(v39, v40, v41);
      goto LABEL_69;
    case 0x68617074:
      goto LABEL_67;
    case 0x6D657461:
      v25 = OUTLINED_FUNCTION_31_5(IsValid, 1835365473, v70, v11, v12, v13, v14, formatDescriptionOut, v48, value, formatDescriptionOut, v51, v52, v53, v54, v55, width, v59, v60, allocator);
      IsValid = FigMetadataFormatDescriptionCreateWithExtensions(v25, v26, v27, v28);
      goto LABEL_69;
    case 0x6F64736D:
      goto LABEL_67;
    case 0x70636C64:
      v21 = v70;
      v22 = allocator;
      v18 = 1885564004;
      goto LABEL_68;
    case 0x76696465:
LABEL_65:
      IsValid = CMVideoFormatDescriptionCreate(allocator, HIDWORD(v59), SHIDWORD(width), v59, v70, formatDescriptionOut);
      goto LABEL_69;
  }

  if (v60 == 1935832172 || (v60 != 1935893870 ? (v20 = v60 == 1935962989) : (v20 = 1), v20))
  {
LABEL_67:
    v21 = v70;
    v22 = allocator;
LABEL_68:
    IsValid = CMFormatDescriptionCreate(v22, v18, v19, v21, v4);
    goto LABEL_69;
  }

  switch(v60)
  {
    case 0x736F756E:
      IsValid = CMAudioFormatDescriptionCreate(allocator, &asbd, v52, v51, v54, v53, v70, formatDescriptionOut);
      break;
    case 0x74626772:
      v34 = OUTLINED_FUNCTION_31_5(IsValid, 1952606066, cf, v70, v12, v13, v14, formatDescriptionOut, v48, value, formatDescriptionOut, v51, v52, v53, v54, v55, width, v59, v60, allocator);
      IsValid = FigTaggedBufferGroupFormatDescriptionCreateWithExtensions(v34, v35, v36, v37, v38);
      break;
    case 0x74657874:
      goto LABEL_67;
    case 0x746D6364:
      v62 = v67;
      v63 = v68;
      v29 = OUTLINED_FUNCTION_31_5(IsValid, 1953325924, &v62, v11, v12, v70, v14, formatDescriptionOut, v48, value, formatDescriptionOut, v51, v52, v53, v54, v55, width, v59, v60, allocator);
      IsValid = CMTimeCodeFormatDescriptionCreate(v29, v30, v31, widtha, v56, v32, v33);
      break;
    case 0x70696374:
      goto LABEL_65;
    default:
      goto LABEL_67;
  }

LABEL_69:
  v23 = IsValid;
  if (v70)
  {
    CFRelease(v70);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v23;
}

uint64_t FigRemote_CreateSerializedAtomDataBlockBufferForFormatDescription(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = v4;
  v33 = 0;
  v31 = 0;
  if (!a2 || !a3)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_3();
    OUTLINED_FUNCTION_29_5("%s signalled err=%d at <>:%d", v21, v22, "<<<< FigSampleBufferSerialization >>>>", v23, v24, v25, v26);
    goto LABEL_9;
  }

  v3 = a2;
  if (OUTLINED_FUNCTION_0_73(&sKnownSBufKeysInit))
  {
LABEL_9:
    OUTLINED_FUNCTION_34_3();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_0_40();
  OUTLINED_FUNCTION_22_8();
  sbufAtom_createSerializedDataUsingSerializer(1024, v6, v7, v8, &v30, v9, v10, v11, v27, v29, v30, 0x40000000uLL, __FigRemote_CreateSerializedAtomDataBlockBufferForFormatDescription_block_invoke, &__block_descriptor_tmp_58, v3, v31, 0, v33, v34, v35, v36, v37, vars0, vars8);
  v3 = v31;
  if (v12)
  {
    v5 = v12;
  }

  else
  {
    v5 = v33;
    GlobalCFAllocatorFigMalloc = FigGetGlobalCFAllocatorFigMalloc(v12);
    OUTLINED_FUNCTION_6_26(GlobalCFAllocatorFigMalloc, v14, v15, GlobalCFAllocatorFigMalloc, v16, v17, v32, v18, v28);
    OUTLINED_FUNCTION_33_5();
    if (v19)
    {
      v3 = 0;
    }
  }

LABEL_7:
  free(v3);
  return v5;
}

void sbufAtom_createSerializedDataUsingSerializer(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, size_t size, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_24_8();
  a23 = v26;
  a24 = v27;
  a11 = 0;
  v29 = v28;
  v31 = v30;
  OUTLINED_FUNCTION_36_1();
  v33 = v32;
  size = 0;
  v34 = 1;
  while (1)
  {
    v35 = v34;
    if (v33)
    {
      size = v33;
      v36 = v33;
    }

    else
    {
      OUTLINED_FUNCTION_10_7();
      if (v37())
      {
        goto LABEL_15;
      }

      v36 = size;
      if (!size)
      {
        goto LABEL_10;
      }
    }

    v38 = malloc_type_malloc(v36, 0x1D494C91uLL);
    if (!v38)
    {
      break;
    }

    v39 = v38;
    v40 = (*(v29 + 16))(v29, v38, size, &a11);
    if (!v40)
    {
      v41 = size;
      goto LABEL_14;
    }

    free(v39);
    size = 0;
    if (!v33 || v40 != -19649)
    {
      goto LABEL_15;
    }

LABEL_10:
    v34 = 0;
    v33 = 0;
    if ((v35 & 1) == 0)
    {
      v41 = 0;
      v39 = 0;
LABEL_14:
      *v25 = v39;
      *v24 = v41;
      *v31 = a11;
      goto LABEL_15;
    }
  }

  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_6_13();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v42, 0xFFFFB347uLL, "<<<< FigSampleBufferSerialization >>>>", 0x7EA, v43, v44, v45);
LABEL_15:
  OUTLINED_FUNCTION_20_9();
}

uint64_t FigRemote_CreateFormatDescriptionFromSerializedAtomDataBlockBuffer(const __CFAllocator *a1, CMBlockBufferRef theBuffer, size_t a3, void *a4)
{
  v23 = 0;
  cf = 0;
  if (!a4)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    v19 = 4294947656;
    v20 = 4787;
LABEL_20:
    v11 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v15, v19, "<<<< FigSampleBufferSerialization >>>>", v20, v16, v17, v18);
LABEL_21:
    v12 = v11;
    goto LABEL_12;
  }

  if (!theBuffer)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    v19 = 4294947656;
    v20 = 4788;
    goto LABEL_20;
  }

  if (!CMBlockBufferGetDataLength(theBuffer))
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    v19 = 4294947653;
    v20 = 4789;
    goto LABEL_20;
  }

  CMBlockBufferGetDataLength(theBuffer);
  v8 = OUTLINED_FUNCTION_25_6();
  if (!CMBlockBufferIsRangeContiguous(v8, v9, v10))
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    v19 = 4294947653;
    v20 = 4790;
    goto LABEL_20;
  }

  v21 = 0;
  dataPointerOut = 0;
  CMBlockBufferGetDataPointer(theBuffer, a3, &v21, 0, &dataPointerOut);
  v11 = OUTLINED_FUNCTION_0_73(&sKnownSBufKeysInit);
  if (v11)
  {
    goto LABEL_21;
  }

  v11 = figReadNEAtomHeader(dataPointerOut, 0, v21, &v23 + 1, &v23);
  if (v11)
  {
    goto LABEL_21;
  }

  if (HIDWORD(v23) != 1717859171)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    v19 = 4294947651;
    v20 = 4804;
    goto LABEL_20;
  }

  if (v21 < v23)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    v19 = 4294947652;
    v20 = 4805;
    goto LABEL_20;
  }

  v12 = sbufAtom_copyFormatDescriptionFromAtom(a1, (dataPointerOut + 8), v23 - 8, &cf);
  v13 = cf;
  if (v12 && cf)
  {
    CFRelease(cf);
LABEL_12:
    v13 = 0;
  }

  *a4 = v13;
  return v12;
}

size_t FigRemote_CreateSerializedAtomDataAndSurfaceArrayForSampleBufferWithOptions(const __CFAllocator *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const void **a6, vm_address_t *a7, vm_size_t a8, vm_size_t *a9, const opaqueCMFormatDescription **a10, uint64_t *a11)
{
  address = 0;
  v62[0] = 0;
  if (!a2)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_10_15();
    v51 = 4967;
LABEL_75:

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v47, 0xFFFFB348uLL, "<<<< FigSampleBufferSerialization >>>>", v51, v48, v49, v50);
  }

  if (!a7)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_10_15();
    v51 = 4968;
    goto LABEL_75;
  }

  if (!a9)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_10_15();
    v51 = 4969;
    goto LABEL_75;
  }

  if (a10)
  {
    otherFormatDescription = *a10;
  }

  else
  {
    otherFormatDescription = 0;
  }

  if (a11)
  {
    v56 = *a11;
  }

  else
  {
    v56 = 0;
  }

  SerializedDataAndSurfaceForSampleBuffer = OUTLINED_FUNCTION_0_73(&sKnownSBufKeysInit);
  if (SerializedDataAndSurfaceForSampleBuffer)
  {
    return SerializedDataAndSurfaceForSampleBuffer;
  }

  if (a6)
  {
    p_cf = &cf;
  }

  else
  {
    p_cf = 0;
  }

  v16 = &v60;
  if (!a10)
  {
    v16 = 0;
  }

  v54 = v16;
  v55 = p_cf;
  v17 = &v59;
  if (!a11)
  {
    v17 = 0;
  }

  v53 = v17;
  v18 = 1;
  v19 = MEMORY[0x1E69E9A60];
  while (1)
  {
    v20 = v18;
    if (a8)
    {
      v62[0] = a8;
      v21 = a8;
    }

    else
    {
      v40 = OUTLINED_FUNCTION_35_2();
      SerializedDataAndSurfaceForSampleBuffer = sbufAtom_createSerializedDataAndSurfaceForSampleBuffer(v40, v41, v42, v43, v44, 0, 0, 0, v62, otherFormatDescription, v56, 0, 0, 0);
      if (SerializedDataAndSurfaceForSampleBuffer)
      {
        return SerializedDataAndSurfaceForSampleBuffer;
      }

      v21 = v62[0];
      if (!v62[0])
      {
        v31 = 0;
        goto LABEL_62;
      }
    }

    if (a1)
    {
      address = MEMORY[0x19A8D7200](a1, v21, 213032707, 0);
      if (!address)
      {
        v31 = 4294947655;
        goto LABEL_68;
      }
    }

    else
    {
      v39 = vm_allocate(*v19, &address, v21, 1543503873);
      v38 = address;
      if (v39)
      {
        v31 = v39;
        if (!address || !v62[0])
        {
          goto LABEL_59;
        }

LABEL_57:
        MEMORY[0x19A8DA090](*v19, v38);
        goto LABEL_58;
      }
    }

    v22 = v19;
    v59 = 0;
    v60 = 0;
    cf = 0;
    v23 = OUTLINED_FUNCTION_35_2();
    v30 = sbufAtom_createSerializedDataAndSurfaceForSampleBuffer(v23, v24, v25, v26, v27, v55, v28, v29, 0, otherFormatDescription, v56, 0, v54, v53);
    v31 = v30;
    if (a10 && !v30)
    {
      v32 = *a10;
      v33 = v60;
      *a10 = v60;
      if (v33)
      {
        CFRetain(v33);
      }

      if (v32)
      {
        CFRelease(v32);
      }
    }

    if (a11 && !v31)
    {
      v34 = *a11;
      v35 = v59;
      *a11 = v59;
      if (v35)
      {
        CFRetain(v35);
      }

      if (v34)
      {
        CFRelease(v34);
      }
    }

    if (a6 && !v31)
    {
      v36 = *a6;
      v37 = cf;
      *a6 = cf;
      if (v37)
      {
        CFRetain(v37);
      }

      if (v36)
      {
        CFRelease(v36);
      }
    }

    if (v60)
    {
      CFRelease(v60);
    }

    v19 = v22;
    if (v59)
    {
      CFRelease(v59);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (!v31 && gGMFigKTraceEnabled == 1)
    {
      break;
    }

    if (!v31)
    {
      goto LABEL_68;
    }

    v38 = address;
    if (!address || !v62[0])
    {
      goto LABEL_59;
    }

    if (!a1)
    {
      goto LABEL_57;
    }

    CFAllocatorDeallocate(a1, address);
LABEL_58:
    address = 0;
    v62[0] = 0;
LABEL_59:
    if (!a8 || v31 != -19649)
    {
      goto LABEL_68;
    }

    v31 = 4294947647;
LABEL_62:
    a8 = 0;
    v18 = 0;
    if ((v20 & 1) == 0)
    {
      goto LABEL_68;
    }
  }

  OUTLINED_FUNCTION_10_7();
  kdebug_trace();
  v31 = 0;
LABEL_68:
  v45 = address;
  *a9 = v62[0];
  *a7 = v45;
  return v31;
}

uint64_t sbufAtom_createSerializedDataAndSurfaceForSampleBuffer(opaqueCMSampleBuffer *a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, __CFArray **a6, uint64_t a7, uint64_t a8, void *a9, CMFormatDescriptionRef otherFormatDescription, uint64_t a11, unsigned int a12, void *a13, void *a14)
{
  v145 = 0;
  cf = 0;
  desc = CMSampleBufferGetFormatDescription(a1);
  ImageBuffer = CMSampleBufferGetImageBuffer(a1);
  TaggedBufferGroup = FigSampleBufferGetTaggedBufferGroup(a1, v19, v20, v21, v22, v23, v24, v25);
  if (ImageBuffer | TaggedBufferGroup || (DataBuffer = CMSampleBufferGetDataBuffer(a1)) == 0)
  {
    v29 = 0;
    v30 = 0;
  }

  else
  {
    v28 = DataBuffer;
    v29 = CMGetAttachment(DataBuffer, @"CVDataBuffer", 0);
    if (v29)
    {
      v30 = 0;
    }

    else
    {
      v30 = v28;
    }
  }

  v144 = 0;
  v142 = 0u;
  v143 = 0u;
  v141 = 0u;
  if (CMFormatDescriptionGetMediaType(desc) == 1668310898)
  {
    CFDataFromCaptionGroup = FigCaptionSerializerCreate(*MEMORY[0x1E695E480], &cf);
    if (CFDataFromCaptionGroup)
    {
      goto LABEL_167;
    }

    CaptionGroup = FigSampleBufferGetCaptionGroup(a1, v32, v33, v34, v35, v36, v37, v38);
    CFDataFromCaptionGroup = FigCaptionSerializerCreateCFDataFromCaptionGroup(cf, CaptionGroup, &v145);
    if (CFDataFromCaptionGroup)
    {
      goto LABEL_167;
    }
  }

  v144 = 0;
  v142 = 0u;
  v143 = 0u;
  *&v141 = a7;
  *(&v141 + 1) = a8;
  CFDataFromCaptionGroup = FigNEAtomWriterBeginAtom(&v141, 1935832422);
  if (CFDataFromCaptionGroup)
  {
    goto LABEL_167;
  }

  memset(&v147, 0, 24);
  CMSampleBufferGetOutputPresentationTimeStamp(&v147.duration, a1);
  if (v147.duration.flags)
  {
    CFDataFromCaptionGroup = sbufAtom_appendAtomWithMemoryBlock(&v147, 0x18uLL);
    if (CFDataFromCaptionGroup)
    {
      goto LABEL_167;
    }
  }

  memset(&v147, 0, sizeof(v147));
  timingArrayEntriesNeededOut[0] = 0;
  OUTLINED_FUNCTION_10_7();
  SampleTimingInfoArray = CMSampleBufferGetSampleTimingInfoArray(v40, v41, v42, v43);
  if (SampleTimingInfoArray != -12736)
  {
    appended = SampleTimingInfoArray;
    v46 = 0;
    if (timingArrayEntriesNeededOut[0] && v141)
    {
      if (timingArrayEntriesNeededOut[0] != 1)
      {
        if (timingArrayEntriesNeededOut[0] < 0 || timingArrayEntriesNeededOut[0] > 0x38E38E38E38E38EuLL || !(72 * timingArrayEntriesNeededOut[0]) || (v48 = malloc_type_malloc(72 * timingArrayEntriesNeededOut[0], 0x1000040FF89C88EuLL)) == 0)
        {
          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_10_15();
          appended = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v50, 0xFFFFB347uLL, "<<<< FigSampleBufferSerialization >>>>", 0x4F1, v51, v52, v53);
          v47 = 0;
LABEL_27:
          free(v47);
          if (appended)
          {
            goto LABEL_148;
          }

          goto LABEL_28;
        }

        v47 = v48;
        v49 = CMSampleBufferGetSampleTimingInfoArray(a1, timingArrayEntriesNeededOut[0], v48, timingArrayEntriesNeededOut);
        if (v49)
        {
          appended = v49;
          goto LABEL_18;
        }

        v46 = v47;
LABEL_25:
        appended = sbufAtom_appendAtomWithMemoryBlock(v46, 72 * timingArrayEntriesNeededOut[0]);
        goto LABEL_27;
      }

      v46 = &v147;
      appended = CMSampleBufferGetSampleTimingInfoArray(a1, 1, &v147, timingArrayEntriesNeededOut);
    }

    v47 = 0;
    if (appended)
    {
LABEL_18:
      free(v47);
      goto LABEL_148;
    }

    goto LABEL_25;
  }

LABEL_28:
  if (ImageBuffer)
  {
    if (!a6)
    {
LABEL_32:
      if (!a5)
      {
        v54 = CMCopyDictionaryOfAttachments(*MEMORY[0x1E695E480], ImageBuffer, 1u);
        v55 = desc;
        if (!v54)
        {
          goto LABEL_75;
        }

        v56 = v54;
        OUTLINED_FUNCTION_16_10();
        v61 = v60 | 0x69610000u;
        goto LABEL_42;
      }

      OUTLINED_FUNCTION_16_10();
      v74 = v73 | 0x69610000u;
LABEL_73:
      CFDataFromCaptionGroup = sbufAtom_appendDictionaryAtom(v70, v71, v74, v72);
      goto LABEL_74;
    }

    v147.duration.value = CVPixelBufferGetIOSurface(ImageBuffer);
    if (v147.duration.value)
    {
      *a6 = CFArrayCreate(*MEMORY[0x1E695E480], &v147, 1, MEMORY[0x1E695E9C0]);
      goto LABEL_32;
    }

    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_10_15();
    v134 = 3157;
LABEL_171:
    CFDataFromCaptionGroup = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v130, 0xFFFFB346uLL, "<<<< FigSampleBufferSerialization >>>>", v134, v131, v132, v133);
    goto LABEL_167;
  }

  if (v29)
  {
    if (a6)
    {
      v147.duration.value = CVDataBufferGetIOSurface();
      if (!v147.duration.value)
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_10_15();
        v134 = 3185;
        goto LABEL_171;
      }

      *a6 = CFArrayCreate(*MEMORY[0x1E695E480], &v147, 1, MEMORY[0x1E695E9C0]);
    }

    LOBYTE(v147.duration.value) = CFBooleanGetValue(*MEMORY[0x1E695E4D0]);
    sbufAtom_appendAtomWithMemoryBlock(&v147, 1uLL);
    if (!a5)
    {
      v62 = CMCopyDictionaryOfAttachments(*MEMORY[0x1E695E480], v29, 1u);
      v55 = desc;
      if (!v62)
      {
        goto LABEL_75;
      }

      v56 = v62;
      OUTLINED_FUNCTION_16_10();
      v61 = v63 | 0x64610000u;
LABEL_42:
      appended = sbufAtom_appendDictionaryAtom(v57, v58, v61, v59);
      CFRelease(v56);
      if (appended)
      {
        goto LABEL_148;
      }

      goto LABEL_75;
    }

    OUTLINED_FUNCTION_16_10();
    v74 = v80 | 0x64610000u;
    goto LABEL_73;
  }

  if ((a2 & 1) != 0 || !v30)
  {
    if (v145)
    {
      CFDataFromCaptionGroup = sbufAtom_appendDataAtom(v145, 1667330151, &v141);
      goto LABEL_74;
    }

    if (TaggedBufferGroup)
    {
      if (a6)
      {
        CFDataFromCaptionGroup = sbufAtom_copyBackingIOSurfacesFromTaggedBufferGroup(TaggedBufferGroup, a6);
        if (CFDataFromCaptionGroup)
        {
          goto LABEL_167;
        }
      }

      CFDataFromCaptionGroup = sbufAtom_appendTagCollectionFromTaggedBufferGroup(TaggedBufferGroup, a2, &v141);
LABEL_74:
      v55 = desc;
      if (CFDataFromCaptionGroup)
      {
        goto LABEL_167;
      }

LABEL_75:
      if (CMSampleBufferGetImageBuffer(a1) || CMSampleBufferGetTaggedBufferGroup(a1))
      {
        if (!v55)
        {
          goto LABEL_89;
        }

        Extensions = CMFormatDescriptionGetExtensions(v55);
        if (!Extensions)
        {
          goto LABEL_89;
        }

        v82 = Extensions;
        v83 = 0;
        while (!CFDictionaryContainsKey(v82, *sbufAtom_formatDescriptionContainsVEXUMetadata_vexuKeys[v83]))
        {
          if (++v83 == 11)
          {
            goto LABEL_89;
          }
        }
      }

      if (v55 && (!otherFormatDescription || !CMFormatDescriptionEqual(v55, otherFormatDescription)))
      {
        OUTLINED_FUNCTION_39_1();
        v147.duration.epoch = &v141;
        v147.presentationTimeStamp.value = *(&v143 + 1) + *(&v142 + 1);
        CFDataFromCaptionGroup = OUTLINED_FUNCTION_40_1(&v147);
        if (CFDataFromCaptionGroup)
        {
          goto LABEL_167;
        }

        CFDataFromCaptionGroup = sbufAtom_appendFormatDescriptionAtomGuts(v55, &v147);
        if (CFDataFromCaptionGroup)
        {
          goto LABEL_167;
        }

        CFDataFromCaptionGroup = FigNEAtomWriterEndAtom(&v147);
        if (CFDataFromCaptionGroup)
        {
          goto LABEL_167;
        }
      }

LABEL_89:
      Decryptor = FigSampleBufferGetDecryptor(a1);
      v85 = Decryptor;
      if (!(a11 | Decryptor) || FigCFEqual(Decryptor, a11))
      {
LABEL_121:
        if (a3)
        {
          OUTLINED_FUNCTION_19_10();
          CFDataFromCaptionGroup = sbufAtom_appendDictionaryAtom(v113, v114, v115, v116);
          if (CFDataFromCaptionGroup)
          {
            goto LABEL_167;
          }
        }

        else
        {
          v100 = CMCopyDictionaryOfAttachments(*MEMORY[0x1E695E480], a1, 1u);
          if (v100)
          {
            v120 = v100;
            OUTLINED_FUNCTION_19_10();
            appended = sbufAtom_appendDictionaryAtom(v121, v122, v123, v124);
            CFRelease(v120);
            if (appended)
            {
              goto LABEL_148;
            }
          }
        }

        if (a4)
        {
          OUTLINED_FUNCTION_19_10();
          CFDataFromCaptionGroup = sbufAtom_appendDictionaryAtom(v117, v118, 1935766578, v119);
          v102 = desc;
          if (CFDataFromCaptionGroup)
          {
            goto LABEL_167;
          }
        }

        else
        {
          v101 = CMCopyDictionaryOfAttachments(*MEMORY[0x1E695E480], a1, 0);
          v102 = desc;
          if (v101)
          {
            v125 = v101;
            OUTLINED_FUNCTION_19_10();
            appended = sbufAtom_appendDictionaryAtom(v126, v127, 1935766578, v128);
            CFRelease(v125);
            if (appended)
            {
              goto LABEL_148;
            }
          }
        }

        SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(a1, 0);
        if (!SampleAttachmentsArray)
        {
          goto LABEL_174;
        }

        v104 = SampleAttachmentsArray;
        OUTLINED_FUNCTION_39_1();
        v147.duration.epoch = &v141;
        v147.presentationTimeStamp.value = *(&v143 + 1) + *(&v142 + 1);
        CFDataFromCaptionGroup = FigNEAtomWriterBeginAtom(&v147, 1935766137);
        if (!CFDataFromCaptionGroup)
        {
          Count = CFArrayGetCount(v104);
          if (Count >= 1)
          {
            v106 = Count;
            v107 = 0;
            do
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v104, v107);
              CFDataFromCaptionGroup = sbufAtom_appendDictionaryAtom(ValueAtIndex, a2 & 2 ^ 3, 1684628340, &v147);
              if (CFDataFromCaptionGroup)
              {
                goto LABEL_167;
              }
            }

            while (v106 != ++v107);
          }

          CFDataFromCaptionGroup = FigNEAtomWriterEndAtom(&v147);
          if (!CFDataFromCaptionGroup)
          {
LABEL_174:
            CFDataFromCaptionGroup = FigNEAtomWriterEndAtom(&v141);
            if (!CFDataFromCaptionGroup)
            {
              if (a9)
              {
                v109 = *(&v143 + 1);
                if (*(&v143 + 1) == 8)
                {
                  v109 = 0;
                }

                *a9 = v109;
              }

              if (a13)
              {
                if (v102)
                {
                  v110 = CFRetain(v102);
                }

                else
                {
                  v110 = 0;
                }

                *a13 = v110;
              }

              if (a14)
              {
                if (v85)
                {
                  v111 = CFRetain(v85);
                }

                else
                {
                  v111 = 0;
                }

                appended = 0;
                *a14 = v111;
              }

              else
              {
                appended = 0;
              }

              goto LABEL_148;
            }
          }
        }

LABEL_167:
        appended = CFDataFromCaptionGroup;
        goto LABEL_148;
      }

      if ((a2 & 4) == 0)
      {
        v147.duration.value = 0;
        if (!v85)
        {
          v99 = 0;
          goto LABEL_108;
        }

        v91 = *(CMBaseObjectGetVTable(v85) + 16);
        if (*v91 < 4uLL || (v92 = v91[13]) == 0 || (IDForCryptorByAssociatingWithClientPID = v92(v85, &v147), IDForCryptorByAssociatingWithClientPID == -12782))
        {
          if (!a12)
          {
LABEL_99:
            appended = 0;
            goto LABEL_120;
          }

          if (!v141)
          {
LABEL_107:
            v99 = 8;
LABEL_108:
            appended = sbufAtom_appendAtomWithMemoryBlock(&v147, v99);
            goto LABEL_120;
          }

          IDForCryptorByAssociatingWithClientPID = FigCPECryptorServerGetIDForCryptorByAssociatingWithClientPID(v85, a12, &v147, v86, v87, v88, v89, v90);
          if (IDForCryptorByAssociatingWithClientPID == -17575)
          {
            goto LABEL_99;
          }
        }

        appended = IDForCryptorByAssociatingWithClientPID;
        if (IDForCryptorByAssociatingWithClientPID)
        {
          goto LABEL_120;
        }

        goto LABEL_107;
      }

      v147.duration.value = 0;
      if (v85)
      {
        v94 = *(CMBaseObjectGetVTable(v85) + 16);
        if (*v94 < 8uLL || (v95 = v94[33]) == 0)
        {
          appended = 4294954514;
          goto LABEL_120;
        }

        appended = v95(v85, &v147);
        value = v147.duration.value;
        if (appended)
        {
          goto LABEL_118;
        }

        BytePtr = CFDataGetBytePtr(v147.duration.value);
        Length = CFDataGetLength(v147.duration.value);
      }

      else
      {
        Length = 0;
        BytePtr = 0;
      }

      appended = sbufAtom_appendAtomWithMemoryBlock(BytePtr, Length);
      value = v147.duration.value;
LABEL_118:
      if (value)
      {
        CFRelease(value);
      }

LABEL_120:
      if (appended)
      {
        goto LABEL_148;
      }

      goto LABEL_121;
    }

    v147.duration.value = 0;
    CFDataFromCaptionGroup = sbufAtom_appendNumSamples(a1);
    v55 = desc;
    if (CFDataFromCaptionGroup)
    {
      goto LABEL_167;
    }

    CFDataFromCaptionGroup = sbufAtom_appendSampleSizes(a1, 0, &v141, &v147.duration.value);
    if (CFDataFromCaptionGroup)
    {
      goto LABEL_167;
    }

    if (CMSampleBufferGetNumSamples(a1) < 1 || CMFormatDescriptionGetMediaType(desc) != 1936684398 || v147.duration.value)
    {
      goto LABEL_75;
    }

LABEL_70:
    CFDataFromCaptionGroup = sbufAtom_appendPacketDescriptions(a1);
    if (CFDataFromCaptionGroup)
    {
      goto LABEL_167;
    }

    goto LABEL_75;
  }

  v140 = 0;
  OUTLINED_FUNCTION_30_4();
  v55 = desc;
  if (!v65)
  {
    if (!v65 & v64)
    {
      v129 = v68 >= 8 ? v68 : v68 | 0x80;
    }

    else
    {
      v129 = v66 - v67 + 136;
    }

    CFDataFromCaptionGroup = sbufAtom_appendAtomWithMemoryBlock(0, v129);
    if (CFDataFromCaptionGroup)
    {
      goto LABEL_167;
    }
  }

  v147.duration.value = 0;
  timingArrayEntriesNeededOut[0] = 0;
  DataLength = CMBlockBufferGetDataLength(v30);
  if (!v141 || (CMBlockBufferIsRangeContiguous(v30, 0, DataLength) || (Contiguous = CMBlockBufferCreateContiguous(*MEMORY[0x1E695E480], v30, *MEMORY[0x1E695E480], 0, 0, DataLength, 1u, &v147), !Contiguous)) && (OUTLINED_FUNCTION_10_7(), Contiguous = CMBlockBufferGetDataPointer(v76, v77, v78, 0, v79), !Contiguous))
  {
    Contiguous = sbufAtom_appendAtomWithMemoryBlock(timingArrayEntriesNeededOut[0], DataLength);
  }

  appended = Contiguous;
  if (v147.duration.value)
  {
    CFRelease(v147.duration.value);
  }

  if (!appended)
  {
    CFDataFromCaptionGroup = sbufAtom_appendNumSamples(a1);
    if (CFDataFromCaptionGroup)
    {
      goto LABEL_167;
    }

    CFDataFromCaptionGroup = sbufAtom_appendSampleSizes(a1, (a2 >> 3) & 1, &v141, &v140);
    if (CFDataFromCaptionGroup)
    {
      goto LABEL_167;
    }

    if (CMFormatDescriptionGetMediaType(desc) != 1936684398 || v140)
    {
      goto LABEL_75;
    }

    goto LABEL_70;
  }

LABEL_148:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v145)
  {
    CFRelease(v145);
  }

  return appended;
}

size_t FigRemote_CreateSerializedAtomDataBlockBufferWithFlagsForSampleBuffer(uint64_t a1, const __CFAllocator *a2, uint64_t a3, uint64_t a4, uint64_t a5, CMBlockBufferRef *a6, const opaqueCMFormatDescription **a7, uint64_t *a8)
{
  v58 = 0;
  v59 = 0;
  if (!a3)
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFB348uLL, "<<<< FigSampleBufferSerialization >>>>", 0x1436, v8, v49, v50);
  }

  if (a7)
  {
    otherFormatDescription = *a7;
  }

  else
  {
    otherFormatDescription = 0;
  }

  if (a8)
  {
    v54 = *a8;
  }

  else
  {
    v54 = 0;
  }

  v13 = OUTLINED_FUNCTION_0_73(&sKnownSBufKeysInit);
  if (v13)
  {
    return v13;
  }

  v14 = 0;
  if (a7)
  {
    p_cf = &cf;
  }

  else
  {
    p_cf = 0;
  }

  v16 = &v56;
  if (!a8)
  {
    v16 = 0;
  }

  v52 = v16;
  v53 = p_cf;
  v17 = 1;
  do
  {
    v18 = v17;
    if (a4)
    {
      v59 = a4;
      v19 = a4;
    }

    else
    {
      OUTLINED_FUNCTION_13_11();
      v39 = sbufAtom_createSerializedDataAndSurfaceForSampleBuffer(v33, v34, v35, v36, v37, v38, 0, 0, &v59, otherFormatDescription, v54, 0, 0, 0);
      if (v39)
      {
        goto LABEL_46;
      }

      v19 = v59;
      if (!v59)
      {
        goto LABEL_39;
      }
    }

    v14 = MEMORY[0x19A8D7200](a2, v19, 263150083, 0);
    if (!v14)
    {
      break;
    }

    v56 = 0;
    cf = 0;
    OUTLINED_FUNCTION_13_11();
    v27 = sbufAtom_createSerializedDataAndSurfaceForSampleBuffer(v20, v21, v22, v23, v24, v25, v14, v26, &v58, otherFormatDescription, v54, 0, v53, v52);
    v28 = v27;
    if (a7 && !v27)
    {
      v29 = *a7;
      v30 = cf;
      *a7 = cf;
      if (v30)
      {
        CFRetain(v30);
      }

      if (v29)
      {
        CFRelease(v29);
      }
    }

    if (a8 && !v28)
    {
      v31 = *a8;
      v32 = v56;
      *a8 = v56;
      if (v32)
      {
        CFRetain(v32);
      }

      if (v31)
      {
        CFRelease(v31);
      }
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (v56)
    {
      CFRelease(v56);
    }

    if (!v28)
    {
      break;
    }

    if (v59)
    {
      CFAllocatorDeallocate(a2, v14);
      v14 = 0;
      v59 = 0;
    }

    if (!a4 || v28 != -19649)
    {
      goto LABEL_47;
    }

LABEL_39:
    a4 = 0;
    v17 = 0;
  }

  while ((v18 & 1) != 0);
  OUTLINED_FUNCTION_13_11();
  v39 = CMBlockBufferCreateWithMemoryBlock(v40, v41, v42, v43, v44, v45, v46, 0, a6);
  v28 = 0;
  if (!v39)
  {
    return v28;
  }

LABEL_46:
  v28 = v39;
LABEL_47:
  if (v14)
  {
    CFAllocatorDeallocate(a2, v14);
  }

  return v28;
}

uint64_t FigRemote_CreateSampleBufferFromSerializedAtomDataAndIOSurfaceArray(mach_port_t *a1, unint64_t a2, void *memoryBlock, size_t blockLength)
{
  HIDWORD(customBlockSource.AllocateBlock) = 0;
  customBlockSource.refCon = 0;
  blockBufferOut = 0;
  *&customBlockSource.version = 0;
  customBlockSource.FreeBlock = _bbufBlockSourceFree;
  v8 = *MEMORY[0x1E695E480];
  v9 = CMBlockBufferCreateWithMemoryBlock(*MEMORY[0x1E695E480], memoryBlock, blockLength, *MEMORY[0x1E695E480], &customBlockSource, 0, blockLength, 0, &blockBufferOut);
  if (v9)
  {
LABEL_22:
    SampleBufferFromSerializedAtomBlockBufferAndSurface = v9;
    goto LABEL_16;
  }

  if (a2 <= 1)
  {
    if (a2 == 1 && *a1)
    {
      v10 = IOSurfaceLookupFromMachPort(*a1);
      if (v10)
      {
        v11 = v10;
        OUTLINED_FUNCTION_21_10();
        SampleBufferFromSerializedAtomBlockBufferAndSurface = FigRemote_CreateSampleBufferFromSerializedAtomBlockBufferAndSurface(v12, v13, v14, v15, v16);
        v18 = v11;
        goto LABEL_15;
      }

      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_2_20();
      v9 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v40, 0xFFFFB346uLL, "<<<< FigSampleBufferSerialization >>>>", 0x16F8, v41, v42, v43);
    }

    else
    {
      OUTLINED_FUNCTION_21_10();
      v9 = FigRemote_CreateSampleBufferFromSerializedAtomBlockBufferAndSurface(v35, v36, v37, v38, v39);
    }

    goto LABEL_22;
  }

  Mutable = CFArrayCreateMutable(v8, a2, MEMORY[0x1E695E9C0]);
  while (1)
  {
    v21 = *a1++;
    v20 = v21;
    if (v21)
    {
      break;
    }

LABEL_11:
    if (!--a2)
    {
      OUTLINED_FUNCTION_21_10();
      SampleBufferFromSerializedAtomBlockBufferAndSurfaceArray = FigRemote_CreateSampleBufferFromSerializedAtomBlockBufferAndSurfaceArray(v24, v25, v26, v27, v28);
      goto LABEL_13;
    }
  }

  v22 = IOSurfaceLookupFromMachPort(v20);
  if (v22)
  {
    v23 = v22;
    CFArrayAppendValue(Mutable, v22);
    CFRelease(v23);
    goto LABEL_11;
  }

  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_2_20();
  SampleBufferFromSerializedAtomBlockBufferAndSurfaceArray = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v31, 0xFFFFB346uLL, "<<<< FigSampleBufferSerialization >>>>", 0x1702, v32, v33, v34);
LABEL_13:
  SampleBufferFromSerializedAtomBlockBufferAndSurface = SampleBufferFromSerializedAtomBlockBufferAndSurfaceArray;
  if (Mutable)
  {
    v18 = Mutable;
LABEL_15:
    CFRelease(v18);
  }

LABEL_16:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  else
  {
    MEMORY[0x19A8DA090](*MEMORY[0x1E69E9A60], memoryBlock, blockLength);
  }

  return SampleBufferFromSerializedAtomBlockBufferAndSurface;
}

uint64_t FigRemote_CreateSampleBufferFromSerializedAtomBlockBufferAndSurface(__IOSurface *a1, CMBlockBufferRef theBuffer, const opaqueCMFormatDescription **a3, void **a4, CMSampleBufferRef *a5)
{
  v18 = 0;
  v16 = 0;
  v17 = 0;
  lengthAtOffsetOut = 0;
  dataPointerOut = 0;
  totalLengthOut = 0;
  result = CMBlockBufferGetDataPointer(theBuffer, 0, &lengthAtOffsetOut, &totalLengthOut, &dataPointerOut);
  if (!result)
  {
    v11 = *MEMORY[0x1E695E480];
    result = sbufAtom_createSampleBufferFromSerializedAtomDataAndSurface(*MEMORY[0x1E695E480], a1, dataPointerOut, lengthAtOffsetOut, 0, a3, a4, &v18, &v17, &v16, a5);
    if (!result)
    {
      if (v18)
      {
        blockBufferOut = 0;
        result = CMBlockBufferCreateWithBufferReference(v11, theBuffer, v17, v16, 0, &blockBufferOut);
        if (!result)
        {
          CMSampleBufferSetDataBuffer(*a5, blockBufferOut);
          if (blockBufferOut)
          {
            CFRelease(blockBufferOut);
          }

          return CMSampleBufferSetDataReady(*a5);
        }
      }
    }
  }

  return result;
}

size_t FigRemote_CreateSampleBufferFromSerializedAtomBlockBufferAndSurfaceArray(const __CFArray *a1, CMBlockBufferRef theBuffer, const opaqueCMFormatDescription **a3, void **a4, CMSampleBufferRef *a5)
{
  v55 = 0;
  v53 = 0;
  v54 = 0;
  lengthAtOffsetOut = 0;
  dataPointerOut = 0;
  totalLengthOut = 0;
  DataPointer = CMBlockBufferGetDataPointer(theBuffer, 0, &lengthAtOffsetOut, &totalLengthOut, &dataPointerOut);
  if (DataPointer)
  {
    return DataPointer;
  }

  v11 = *MEMORY[0x1E695E480];
  v13 = lengthAtOffsetOut;
  v12 = dataPointerOut;
  pixelBufferOut = 0;
  sBufOut = 0;
  v59 = 0;
  sbuf = 0;
  if (!a1 || (Count = CFArrayGetCount(a1), Count <= 0))
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_2_20();
    v16 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v35, 0xFFFFB346uLL, "<<<< FigSampleBufferSerialization >>>>", 0x1689, v36, v37, v38);
    goto LABEL_19;
  }

  v15 = Count;
  v16 = sbufAtom_createSampleBufferFromSerializedAtomDataAndSurface(v11, 0, v12, v13, 0, a3, a4, &v55, &v54, &v53, &sbuf);
  if (v16)
  {
LABEL_19:
    v34 = v16;
    v25 = 0;
    Mutable = 0;
    goto LABEL_20;
  }

  Mutable = CFArrayCreateMutable(v11, v15, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_2_20();
    v34 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v46, 0xFFFFB347uLL, "<<<< FigSampleBufferSerialization >>>>", 0x169E, v47, v48, v49);
    v25 = 0;
    goto LABEL_20;
  }

  v25 = CFArrayCreateMutable(v11, v15, MEMORY[0x1E695E9C0]);
  if (!v25)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_2_20();
    v44 = 4294947655;
    v45 = 5793;
    goto LABEL_41;
  }

  TaggedBufferGroup = FigSampleBufferGetTaggedBufferGroup(sbuf, v18, v19, v20, v21, v22, v23, v24);
  if (!TaggedBufferGroup)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_2_20();
    v44 = 4294947656;
    v45 = 5796;
LABEL_41:
    v31 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v40, v44, "<<<< FigSampleBufferSerialization >>>>", v45, v41, v42, v43);
LABEL_42:
    v34 = v31;
    goto LABEL_20;
  }

  v27 = TaggedBufferGroup;
  for (i = 0; i != v15; ++i)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
    if (!ValueAtIndex)
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_2_20();
      v44 = 4294947654;
      v45 = 5800;
      goto LABEL_41;
    }

    CVPixelBufferCreateWithIOSurface(v11, ValueAtIndex, 0, &pixelBufferOut);
    if (!pixelBufferOut)
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_2_20();
      v44 = 4294947655;
      v45 = 5803;
      goto LABEL_41;
    }

    CFArrayAppendValue(Mutable, pixelBufferOut);
    TagCollectionAtIndex = FigTaggedBufferGroupGetTagCollectionAtIndex(v27, i);
    if (!TagCollectionAtIndex)
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_2_20();
      v44 = 4294947656;
      v45 = 5807;
      goto LABEL_41;
    }

    CFArrayAppendValue(v25, TagCollectionAtIndex);
    if (pixelBufferOut)
    {
      CFRelease(pixelBufferOut);
      pixelBufferOut = 0;
    }
  }

  v31 = FigTaggedBufferGroupCreate(v11, v25, Mutable, &v59);
  if (v31)
  {
    goto LABEL_42;
  }

  v32 = v59;
  CMSampleBufferGetPresentationTimeStamp(&sbufPTS, sbuf);
  CMSampleBufferGetDuration(&sbufDuration, sbuf);
  FormatDescription = CMSampleBufferGetFormatDescription(sbuf);
  v34 = CMSampleBufferCreateForTaggedBufferGroup(v11, v32, &sbufPTS, &sbufDuration, FormatDescription, &sBufOut);
  if (!v34)
  {
    *a5 = sBufOut;
    sBufOut = 0;
  }

LABEL_20:
  if (sbuf)
  {
    CFRelease(sbuf);
  }

  if (pixelBufferOut)
  {
    CFRelease(pixelBufferOut);
  }

  if (v59)
  {
    CFRelease(v59);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (!v34 && v55)
  {
    sbufPTS.value = 0;
    DataPointer = CMBlockBufferCreateWithBufferReference(v11, theBuffer, v54, v53, 0, &sbufPTS);
    if (!DataPointer)
    {
      CMSampleBufferSetDataBuffer(*a5, sbufPTS.value);
      if (sbufPTS.value)
      {
        CFRelease(sbufPTS.value);
      }

      return CMSampleBufferSetDataReady(*a5);
    }

    return DataPointer;
  }

  return v34;
}

uint64_t FigRemote_CreateSampleBufferFromSerializedAtomDataBlockBuffer(const __CFAllocator *a1, OpaqueCMBlockBuffer *a2, uint64_t a3, const opaqueCMFormatDescription **a4, void **a5, CMSampleBufferRef *a6)
{
  v27 = 0;
  v26 = 0;
  v24 = 0;
  v25 = 0;
  blockBufferOut = 0;
  v23 = 0;
  OUTLINED_FUNCTION_10_7();
  if (!CMBlockBufferIsRangeContiguous(v12, v13, v14))
  {
    return 4294947653;
  }

  v15 = OUTLINED_FUNCTION_24_6();
  DataPointer = CMBlockBufferGetDataPointer(v15, v16, v17, 0, v18);
  if (DataPointer)
  {
    goto LABEL_8;
  }

  v20 = sbufAtom_createSampleBufferFromSerializedAtomDataAndSurface(a1, 0, v27, v23, 0, a4, a5, &v26, &v25, &v24, a6);
  if (!v20 && v26)
  {
    DataPointer = CMBlockBufferCreateWithBufferReference(a1, a2, v25 + a3, v24, 0, &blockBufferOut);
    if (!DataPointer)
    {
      DataPointer = CMSampleBufferSetDataBuffer(*a6, blockBufferOut);
      if (!DataPointer)
      {
        DataPointer = CMSampleBufferSetDataReady(*a6);
      }
    }

LABEL_8:
    v20 = DataPointer;
  }

  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  return v20;
}

size_t FigRemote_WriteSerializedAtomDataForSampleBufferExcludingDataBufferWithOptionsForPID(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, const opaqueCMFormatDescription *a8, void *a9, uint64_t a10, void *a11, unsigned int a12)
{
  if (a1)
  {
    result = OUTLINED_FUNCTION_0_73(&sKnownSBufKeysInit);
    if (!result)
    {
      if (!a7 || (OUTLINED_FUNCTION_13_11(), result = sbufAtom_createSerializedDataAndSurfaceForSampleBuffer(v17, v18, v19, v20, v21, v22, 0, 0, a7, a8, a10, a12, 0, 0), !result))
      {
        result = 0;
        if (a5)
        {
          if (a6)
          {
            OUTLINED_FUNCTION_13_11();
            return sbufAtom_createSerializedDataAndSurfaceForSampleBuffer(v23, v24, v25, v26, v27, v28, a5, a6, 0, a8, a10, a12, a9, a11);
          }
        }
      }
    }
  }

  else
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFB348uLL, "<<<< FigSampleBufferSerialization >>>>", 0x17E8, v12, v30, v31);
  }

  return result;
}

void FigRemote_CreateSerializedAtomDataAndSurfaceForPixelBuffer(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, vm_address_t address, CFTypeRef cf, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_24_8();
  a23 = v26;
  a24 = v29;
  address = 0;
  cf = 0;
  a10 = 0;
  v30 = MEMORY[0x1E69E9A60];
  if (!v31)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_1_0();
    v46 = 6311;
    goto LABEL_22;
  }

  v32 = v28;
  v33 = v27;
  OUTLINED_FUNCTION_36_1();
  v35 = v34;
  v36 = CFGetTypeID(v34);
  if (v36 != CVPixelBufferGetTypeID())
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_1_0();
    v46 = 6315;
LABEL_22:
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v42, 0xFFFFB348uLL, "<<<< FigSampleBufferSerialization >>>>", v46, v43, v44, v45);
    goto LABEL_27;
  }

  if (!v24)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_1_0();
    v46 = 6318;
    goto LABEL_22;
  }

  if (!v32)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_1_0();
    v46 = 6319;
    goto LABEL_22;
  }

  if (OUTLINED_FUNCTION_0_73(&sKnownSBufKeysInit))
  {
    goto LABEL_27;
  }

  *v32 = 0;
  v37 = 1;
  do
  {
    v38 = v33;
    if (v33)
    {
      a10 = v33;
      v39 = v33;
    }

    else
    {
      if (sbufAtom_createSerializedDataForPixelBuffer(v35, 0, 1, 0, 0, &a10))
      {
        goto LABEL_27;
      }

      v39 = a10;
      if (!a10)
      {
        v40 = 0;
        goto LABEL_11;
      }
    }

    if (vm_allocate(*v30, &address, v39, 1543503873))
    {
      goto LABEL_27;
    }

    v40 = a10;
LABEL_11:
    SerializedDataForPixelBuffer = sbufAtom_createSerializedDataForPixelBuffer(v35, &cf, 1, address, v40, 0);
    if (!SerializedDataForPixelBuffer)
    {
      break;
    }

    if (address && a10)
    {
      MEMORY[0x19A8DA090](*v30);
      a10 = 0;
      address = 0;
    }

    if (SerializedDataForPixelBuffer != -19649 || (v37 & 1) == 0)
    {
      break;
    }

    v37 = 0;
    v33 = 0;
  }

  while (v38);
  if (v25)
  {
    *v25 = cf;
    cf = 0;
  }

  v47 = a10;
  *v24 = address;
  *v32 = v47;
  a10 = 0;
LABEL_27:
  if (cf)
  {
    CFRelease(cf);
  }

  if (address && a10)
  {
    MEMORY[0x19A8DA090](*v30);
  }

  OUTLINED_FUNCTION_20_9();
}

size_t sbufAtom_createSerializedDataForPixelBuffer(void *a1, IOSurfaceRef *a2, int a3, uint64_t a4, uint64_t a5, void *a6)
{
  OUTLINED_FUNCTION_7_20();
  v37[0] = v10;
  v37[1] = v11;
  v12 = FigNEAtomWriterBeginAtom(v37, 1885500774);
  if (v12)
  {
    return v12;
  }

  v13 = CMCopyDictionaryOfAttachments(*MEMORY[0x1E695E480], a1, 1u);
  if (v13)
  {
    v34 = v13;
    appended = sbufAtom_appendDictionaryAtom(v13, 1, 1767994484, v37);
    CFRelease(v34);
    if (appended)
    {
      return appended;
    }
  }

  if (!a3)
  {
    goto LABEL_11;
  }

  IOSurface = CVPixelBufferGetIOSurface(a1);
  if (a2)
  {
    *a2 = IOSurface;
  }

  if (!IOSurface)
  {
LABEL_11:
    PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
    v12 = sbufAtom_appendAtomWithMemoryBlock(&PixelFormatType, 4uLL);
    if (!v12)
    {
      CVPixelBufferGetWidth(a1);
      OUTLINED_FUNCTION_11_13();
      v12 = sbufAtom_appendAtomWithMemoryBlock(v19, v20);
      if (!v12)
      {
        CVPixelBufferGetHeight(a1);
        OUTLINED_FUNCTION_11_13();
        v12 = sbufAtom_appendAtomWithMemoryBlock(v21, v22);
        if (!v12)
        {
          CVPixelBufferGetBytesPerRow(a1);
          OUTLINED_FUNCTION_11_13();
          v12 = sbufAtom_appendAtomWithMemoryBlock(v23, v24);
          if (!v12)
          {
            CVPixelBufferGetPlaneCount(a1);
            OUTLINED_FUNCTION_11_13();
            v12 = sbufAtom_appendAtomWithMemoryBlock(v25, v26);
            if (!v12)
            {
              OUTLINED_FUNCTION_30_4();
              if (v28 || (!v28 & v27 ? (v31 >= 8 ? (v35 = v31) : (v35 = v31 | 0x80)) : (v35 = v29 - v30 + 136), v12 = sbufAtom_appendAtomWithMemoryBlock(0, v35), !v12))
              {
                CVPixelBufferLockBaseAddress(a1, 0);
                DataSize = CVPixelBufferGetDataSize(a1);
                BaseAddress = CVPixelBufferGetBaseAddress(a1);
                appended = sbufAtom_appendAtomWithMemoryBlock(BaseAddress, DataSize);
                CVPixelBufferUnlockBaseAddress(a1, 0);
                if (appended)
                {
                  return appended;
                }

                goto LABEL_7;
              }
            }
          }
        }
      }
    }

    return v12;
  }

LABEL_7:
  v15 = FigNEAtomWriterEndAtom(v37);
  appended = v15;
  if (a6 && !v15)
  {
    OUTLINED_FUNCTION_15_12();
    *a6 = v17;
  }

  return appended;
}

uint64_t FigRemote_CreateSerializedAtomDataBlockBufferForPixelBuffer(uint64_t a1, uint64_t a2)
{
  v5 = v4;
  v32[0] = 0;
  v30 = 0;
  if (!a2 || (OUTLINED_FUNCTION_36_1(), v7 = CFGetTypeID(v6), v7 != CVPixelBufferGetTypeID()) || !v2)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_3();
    OUTLINED_FUNCTION_29_5("%s signalled err=%d at <>:%d", v20, v21, "<<<< FigSampleBufferSerialization >>>>", v22, v23, v24, v25);
    goto LABEL_10;
  }

  if (OUTLINED_FUNCTION_0_73(&sKnownSBufKeysInit))
  {
LABEL_10:
    OUTLINED_FUNCTION_34_3();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_0_40();
  sbufAtom_createSerializedDataUsingSerializer(102400, &v30, v32, &v31, &v29, v8, v9, v10, v26, v28, v29, 0x40000000uLL, __FigRemote_CreateSerializedAtomDataBlockBufferForPixelBuffer_block_invoke, &__block_descriptor_tmp_5_1, v3, v30, 0, v32[0], v32[1], v32[2], v32[3], v32[4], v32[5], v32[6]);
  v3 = v30;
  if (v11)
  {
    v5 = v11;
  }

  else
  {
    v5 = v32[0];
    GlobalCFAllocatorFigMalloc = FigGetGlobalCFAllocatorFigMalloc(v11);
    OUTLINED_FUNCTION_6_26(GlobalCFAllocatorFigMalloc, v13, v14, GlobalCFAllocatorFigMalloc, v15, v16, v31, v17, v27);
    OUTLINED_FUNCTION_33_5();
    if (v18)
    {
      v3 = 0;
    }
  }

LABEL_8:
  free(v3);
  return v5;
}

uint64_t figReconstructPixelBufferPlaneInfo(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *&v39[28] = *MEMORY[0x1E69E9840];
  DescriptionWithPixelFormatType = CVPixelFormatDescriptionGetDescriptionWithPixelFormatType();
  if (a3 > 4)
  {
    return 4294947656;
  }

  v13 = DescriptionWithPixelFormatType;
  result = 4294947656;
  if (8 * a3 > a2 || !v13)
  {
    return result;
  }

  Value = CFDictionaryGetValue(v13, *MEMORY[0x1E69662D8]);
  if (!Value)
  {
    return 4294947656;
  }

  v16 = Value;
  v17 = CFGetTypeID(Value);
  if (v17 != CFArrayGetTypeID() || CFArrayGetCount(v16) < a3)
  {
    return 4294947656;
  }

  __memcpy_chk();
  if (a3)
  {
    v18 = 0;
    key = *MEMORY[0x1E69662C8];
    v30 = *MEMORY[0x1E69662E0];
    for (i = v39; ; i += 2)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v16, v18);
      v37 = 1;
      valuePtr = 1;
      v21 = CFDictionaryGetValue(ValueAtIndex, key);
      v22 = CFDictionaryGetValue(ValueAtIndex, v30);
      if (v21)
      {
        v23 = v16;
        v24 = a3;
        v25 = CFGetTypeID(v21);
        v26 = v25 == CFNumberGetTypeID();
        a3 = v24;
        v16 = v23;
        if (v26)
        {
          CFNumberGetValue(v21, kCFNumberIntType, &valuePtr);
        }
      }

      if (v22)
      {
        v27 = CFGetTypeID(v22);
        if (v27 == CFNumberGetTypeID())
        {
          CFNumberGetValue(v22, kCFNumberIntType, &v37);
        }
      }

      v28 = bswap32(*(i - 1));
      if (v28 + 4 > a2)
      {
        break;
      }

      *(a7 + 8 * v18) = a1 + v28;
      *(a10 + 8 * v18) = bswap32(*i);
      *(a8 + 8 * v18) = a5 / valuePtr;
      v29 = a6 / v37;
      *(a9 + 8 * v18) = v29;
      if (v28 + *(a10 + 8 * v18) * v29 > a2)
      {
        break;
      }

      if (a3 == ++v18)
      {
        return 0;
      }
    }

    return 4294947656;
  }

  return 0;
}

uint64_t FigRemote_CreateSerializedAtomDataBlockBufferForKeyValuePair(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v37 = 0;
  v35 = 0;
  if (a2 && a3 && a4)
  {
    OUTLINED_FUNCTION_3_1();
    v33 = v7;
    v34 = v8;
    OUTLINED_FUNCTION_22_8();
    sbufAtom_createSerializedDataUsingSerializer(128, v9, v10, v11, &v32, v12, v13, v14, v30, v32, 0x40000000, __FigRemote_CreateSerializedAtomDataBlockBufferForKeyValuePair_block_invoke, &__block_descriptor_tmp_6_3, v33, v34, v35, 0, v37, v38, v39, v40, v41, vars0, vars8);
    v6 = v35;
    if (v15)
    {
      v4 = v15;
    }

    else
    {
      v4 = v37;
      GlobalCFAllocatorFigMalloc = FigGetGlobalCFAllocatorFigMalloc(v15);
      OUTLINED_FUNCTION_6_26(GlobalCFAllocatorFigMalloc, v17, v18, GlobalCFAllocatorFigMalloc, v19, v20, v36, v21, v31);
      OUTLINED_FUNCTION_33_5();
      if (v22)
      {
        v6 = 0;
      }
    }
  }

  else
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_27_2();
    OUTLINED_FUNCTION_29_5("%s signalled err=%d at <>:%d", v24, v25, "<<<< FigSampleBufferSerialization >>>>", v26, v27, v28, v29);
    OUTLINED_FUNCTION_34_3();
  }

  free(v6);
  return v4;
}

uint64_t FigRemote_CreateKeyValuePairFromSerializedAtomDataBlockBuffer(const __CFAllocator *a1, CMBlockBufferRef theBuffer, void *a3, void *a4)
{
  if (!a3)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v27 = 4294947656;
    v28 = 6973;
    goto LABEL_17;
  }

  if (!a4)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v27 = 4294947656;
    v28 = 6974;
    goto LABEL_17;
  }

  if (!theBuffer)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v27 = 4294947656;
    v28 = 6975;
    goto LABEL_17;
  }

  if (!CMBlockBufferGetDataLength(theBuffer))
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v27 = 4294947653;
    v28 = 6976;
    goto LABEL_17;
  }

  CMBlockBufferGetDataLength(theBuffer);
  v8 = OUTLINED_FUNCTION_25_6();
  if (!CMBlockBufferIsRangeContiguous(v8, v9, v10))
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v27 = 4294947653;
    v28 = 6977;
LABEL_17:

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v23, v27, "<<<< FigSampleBufferSerialization >>>>", v28, v24, v25, v26);
  }

  v11 = OUTLINED_FUNCTION_25_6();
  CMBlockBufferGetDataPointer(v11, v12, v13, 0, v14);
  result = OUTLINED_FUNCTION_0_73(&sKnownSBufKeysInit);
  if (!result)
  {
    result = OUTLINED_FUNCTION_28_7(result, v16, v17, v18, v19, v20, v21, v22, v29, 0, 0, 0, 0);
    if (!result)
    {
      if (v33 == 1801812342)
      {
        if (v30 >= v32)
        {
          return sbufAtom_copyKeyValuePairFromAtom(a1, v31 + 8, v32 - 8, a3, a4);
        }

        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_0();
        v27 = 4294947652;
        v28 = 6992;
      }

      else
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_0();
        v27 = 4294947651;
        v28 = 6991;
      }

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v23, v27, "<<<< FigSampleBufferSerialization >>>>", v28, v24, v25, v26);
    }
  }

  return result;
}

uint64_t FigRemote_CreateSerializedAtomDataBlockBufferForCFType(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = v4;
  v33 = 0;
  v31 = 0;
  if (!a2 || !a3)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_3();
    OUTLINED_FUNCTION_29_5("%s signalled err=%d at <>:%d", v21, v22, "<<<< FigSampleBufferSerialization >>>>", v23, v24, v25, v26);
    goto LABEL_9;
  }

  v3 = a2;
  if (OUTLINED_FUNCTION_0_73(&sKnownSBufKeysInit))
  {
LABEL_9:
    OUTLINED_FUNCTION_34_3();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_0_40();
  OUTLINED_FUNCTION_22_8();
  sbufAtom_createSerializedDataUsingSerializer(128, v6, v7, v8, &v30, v9, v10, v11, v27, v29, v30, 0x40000000uLL, __FigRemote_CreateSerializedAtomDataBlockBufferForCFType_block_invoke, &__block_descriptor_tmp_7_5, v3, v31, 0, v33, v34, v35, v36, v37, vars0, vars8);
  v3 = v31;
  if (v12)
  {
    v5 = v12;
  }

  else
  {
    v5 = v33;
    GlobalCFAllocatorFigMalloc = FigGetGlobalCFAllocatorFigMalloc(v12);
    OUTLINED_FUNCTION_6_26(GlobalCFAllocatorFigMalloc, v14, v15, GlobalCFAllocatorFigMalloc, v16, v17, v32, v18, v28);
    OUTLINED_FUNCTION_33_5();
    if (v19)
    {
      v3 = 0;
    }
  }

LABEL_7:
  free(v3);
  return v5;
}

uint64_t FigRemote_CreateSerializedAtomDataBlockBufferWithFlagsForCFType(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v32[0] = 0;
  v30 = 0;
  if (!a2 || !a4)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_1_0();
    v6 = OUTLINED_FUNCTION_29_5("%s signalled err=%d at <>:%d", v20, v21, "<<<< FigSampleBufferSerialization >>>>", v22, v23, v24, v25);
    goto LABEL_9;
  }

  v6 = OUTLINED_FUNCTION_0_73(&sKnownSBufKeysInit);
  if (v6)
  {
LABEL_9:
    v18 = v6;
    v11 = 0;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_3_1();
  LODWORD(v29) = a3;
  sbufAtom_createSerializedDataUsingSerializer(128, &v30, v32, &v31, &v28, v7, v8, v9, v26, v28, 0x40000000, __FigRemote_CreateSerializedAtomDataBlockBufferWithFlagsForCFType_block_invoke, &__block_descriptor_tmp_8_6, a2, v29, v30, 0, v32[0], v32[1], v32[2], v32[3], v32[4], v32[5], v32[6]);
  v11 = v30;
  if (v10)
  {
    v18 = v10;
  }

  else
  {
    GlobalCFAllocatorFigMalloc = FigGetGlobalCFAllocatorFigMalloc(v10);
    v18 = OUTLINED_FUNCTION_6_26(GlobalCFAllocatorFigMalloc, v13, v14, GlobalCFAllocatorFigMalloc, v15, v16, v31, v17, v27);
    if (!v18)
    {
      v11 = 0;
    }
  }

LABEL_7:
  free(v11);
  return v18;
}

uint64_t sbufAtom_createSerializedDataWithFlagsForCFType(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  OUTLINED_FUNCTION_7_20();
  v18[0] = v7;
  v18[1] = v8;
  appended = sbufAtom_appendCFTypeAtom(v9, v10, v18);
  v12 = appended;
  if (appended != -19649 && a5 != 0 && appended == 0)
  {
    v15 = v19;
    *a5 = v19;
    if (v15 == 8)
    {
      if (!a1 || (v16 = CFGetTypeID(a1), v16 != CFNullGetTypeID()))
      {
        *a5 = 0;
      }
    }
  }

  return v12;
}

void sbufAtom_copyCFTypeFromAtom(CFAllocatorRef allocator, int a2, CFAbsoluteTime *a3, unint64_t a4, CGColorSpaceRef *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  plist[1] = *MEMORY[0x1E69E9840];
  switch(a2)
  {
    case 1651862646:
      if (!a5 || a4 != 1)
      {
        return;
      }

      v43 = MEMORY[0x1E695E4D0];
      if (!*a3)
      {
        v43 = MEMORY[0x1E695E4C0];
      }

      goto LABEL_40;
    case 1668051571:
      plist[0] = 0;
      if (a5)
      {
        v44 = OUTLINED_FUNCTION_9_16();
        v47 = CFDataCreate(v44, v45, v46);
        if (v47)
        {
          v48 = v47;
          BytePtr = CFDataGetBytePtr(v47);
          Length = CFDataGetLength(v48);
          if (!FigCreateCFPropertyListFromData(BytePtr, Length, *MEMORY[0x1E695E480], plist))
          {
            v51 = plist[0];
            if (plist[0])
            {
              v51 = CGColorSpaceCreateWithPropertyList(plist[0]);
            }

            *a5 = v51;
          }

          CFRelease(v48);
          if (plist[0])
          {
            CFRelease(plist[0]);
          }
        }

        else
        {
          *a5 = 0;
        }
      }

      return;
    case 1684108406:
      if (!a5)
      {
        return;
      }

      v52 = OUTLINED_FUNCTION_9_16();
      v34 = CFDataCreate(v52, v53, v54);
      goto LABEL_46;
    case 1685349750:
      if (!a5 || a4 != 8)
      {
        return;
      }

      v34 = CFDateCreate(allocator, *a3);
LABEL_46:
      *a5 = v34;
      return;
    case 1852662390:
      if (!a5 || !a4)
      {
        return;
      }

      if (a4 >= 0xA)
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_0_20();
        v32 = 4294947652;
        v33 = 3801;
      }

      else
      {
        v55 = *a3;
        if ((v55 - 18) > 0xFFFFFFEE)
        {
          __memcpy_chk();
          v34 = CFNumberCreate(*MEMORY[0x1E695E480], v55, plist);
          goto LABEL_46;
        }

        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_0_20();
        v32 = 4294947650;
        v33 = 3804;
      }

LABEL_63:
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v31, v32, "<<<< FigSampleBufferSerialization >>>>", v33, v30, v28, v29);
      return;
    case 1853189228:
      v43 = MEMORY[0x1E695E738];
LABEL_40:
      v34 = CFRetain(*v43);
      goto LABEL_46;
    case 1937011318:
      if (!a5)
      {
        return;
      }

      v35 = OUTLINED_FUNCTION_9_16();
      v34 = CFStringCreateWithBytes(v35, v36, v37, 0x8000100u, 0);
      goto LABEL_46;
    case 1970433142:
      if (a5)
      {
        v38 = OUTLINED_FUNCTION_9_16();
        v41 = CFStringCreateWithBytes(v38, v39, v40, 0x8000100u, 0);
        if (v41)
        {
          v42 = v41;
          *a5 = CFURLCreateWithString(allocator, v41, 0);
          CFRelease(v42);
          return;
        }

        emitter = fig_log_get_emitter("com.apple.coremedia", "");
        v30 = v24;
        v31 = emitter;
        v32 = 4294947655;
        v33 = 3908;
        goto LABEL_13;
      }

      break;
    case 1717859171:
      v63 = OUTLINED_FUNCTION_9_16();

      sbufAtom_copyFormatDescriptionFromAtom(v63);
      break;
    case 1684628340:
      v56 = OUTLINED_FUNCTION_9_16();

      sbufAtom_copyDictionaryFromAtom(v56, v57, v58, a5, v59, v60, v61, v62, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
      break;
    case 1634886009:
      v64 = OUTLINED_FUNCTION_9_16();

      sbufAtom_copyArrayFromAtom(v64, v65, v66, a5, v67, v68, v69, v70, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
      break;
    default:
      v27 = fig_log_get_emitter("com.apple.coremedia", "");
      v30 = v24;
      v31 = v27;
      v32 = 4294947651;
      v33 = 4164;
LABEL_13:

      goto LABEL_63;
  }
}

uint64_t FigRemote_WriteSerializedAtomDataForCFType(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (!a1)
  {
    return 4294947656;
  }

  result = OUTLINED_FUNCTION_0_73(&sKnownSBufKeysInit);
  if (!result)
  {

    return sbufAtom_createSerializedDataWithFlagsForCFType(a1, a2, a3, a4, a5);
  }

  return result;
}

size_t sbufAtom_appendFormatDescriptionAtomGuts(const opaqueCMFormatDescription *a1, void *a2)
{
  Dimensions = 0;
  MediaSubType = 0;
  v71 = 0;
  sizeOut = 0;
  v70 = 0;
  HIDWORD(v69) = 0;
  memset(&v68, 0, sizeof(v68));
  theArray = 0;
  MediaType = CMFormatDescriptionGetMediaType(a1);
  appended = sbufAtom_appendAtomWithMemoryBlock(&MediaType, 4uLL);
  if (appended)
  {
    goto LABEL_61;
  }

  switch(MediaType)
  {
    case 0x61757876u:
      goto LABEL_28;
    case 0x636C6370u:
      goto LABEL_30;
    case 0x63706772u:
      HIDWORD(v70) = CMFormatDescriptionGetMediaSubType(a1);
      p_MediaSubType = &v70 + 1;
      v11 = 4;
      goto LABEL_54;
  }

  v5 = MediaType == 1751216244 || MediaType == 1835365473;
  if (v5 || MediaType == 1868854125)
  {
    goto LABEL_30;
  }

  if (MediaType == 1885564004)
  {
    goto LABEL_42;
  }

  if (MediaType == 1986618469)
  {
LABEL_28:
    Dimensions = CMVideoFormatDescriptionGetDimensions(a1);
    MediaSubType = CMFormatDescriptionGetMediaSubType(a1);
    appended = sbufAtom_appendAtomWithMemoryBlock(&Dimensions, 8uLL);
    if (appended)
    {
      goto LABEL_61;
    }

    p_MediaSubType = &MediaSubType;
    v11 = 4;
LABEL_54:
    appended = sbufAtom_appendAtomWithMemoryBlock(p_MediaSubType, v11);
    if (!appended)
    {
      goto LABEL_55;
    }

LABEL_61:
    v38 = appended;
    goto LABEL_57;
  }

  if (MediaType != 1935832172 && MediaType != 1935893870 && MediaType != 1935962989)
  {
    if (MediaType == 1936684398)
    {
      StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(a1);
      ChannelLayout = CMAudioFormatDescriptionGetChannelLayout(a1, &sizeOut);
      MagicCookie = CMAudioFormatDescriptionGetMagicCookie(a1, &v71);
      appended = sbufAtom_appendAtomWithMemoryBlock(StreamBasicDescription, 0x28uLL);
      if (appended)
      {
        goto LABEL_61;
      }

      if (ChannelLayout)
      {
        if (sizeOut)
        {
          appended = sbufAtom_appendAtomWithMemoryBlock(ChannelLayout, sizeOut);
          if (appended)
          {
            goto LABEL_61;
          }
        }
      }

      if (!MagicCookie)
      {
        goto LABEL_55;
      }

      v11 = v71;
      if (!v71)
      {
        goto LABEL_55;
      }

      p_MediaSubType = MagicCookie;
      goto LABEL_54;
    }

    if (MediaType != 1952606066 && MediaType != 1952807028)
    {
      if (MediaType == 1953325924)
      {
        HIDWORD(v70) = CMFormatDescriptionGetMediaSubType(a1);
        LODWORD(v70) = CMTimeCodeFormatDescriptionGetTimeCodeFlags(a1);
        HIDWORD(v69) = CMTimeCodeFormatDescriptionGetFrameQuanta(a1);
        FrameDuration = CMTimeCodeFormatDescriptionGetFrameDuration(&v68, a1);
        v55 = OUTLINED_FUNCTION_18_10(FrameDuration, v48, v49, v50, v51, v52, v53, v54, v66, 0, v68.value, *&v68.timescale, v68.epoch, v69, v70, SBYTE4(v70));
        appended = sbufAtom_appendAtomWithMemoryBlock(v55, v56);
        if (appended)
        {
          goto LABEL_61;
        }

        appended = sbufAtom_appendAtomWithMemoryBlock(&v70, 4uLL);
        if (appended)
        {
          goto LABEL_61;
        }

        appended = sbufAtom_appendAtomWithMemoryBlock(&v69 + 4, 4uLL);
        if (appended)
        {
          goto LABEL_61;
        }

        p_MediaSubType = &v68;
        v11 = 24;
        goto LABEL_54;
      }

      if (MediaType == 1885954932)
      {
        goto LABEL_28;
      }

LABEL_42:
      v39 = CMFormatDescriptionGetMediaSubType(a1);
      p_MediaSubType = OUTLINED_FUNCTION_18_10(v39, v40, v41, v42, v43, v44, v45, v46, v66, 0, v68.value, *&v68.timescale, v68.epoch, v69, v70, v39);
      goto LABEL_54;
    }
  }

LABEL_30:
  v12 = CMFormatDescriptionGetMediaSubType(a1);
  v20 = OUTLINED_FUNCTION_18_10(v12, v13, v14, v15, v16, v17, v18, v19, v66, 0, v68.value, *&v68.timescale, v68.epoch, v69, v70, v12);
  appended = sbufAtom_appendAtomWithMemoryBlock(v20, v21);
  if (appended)
  {
    goto LABEL_61;
  }

  if (MediaType != 1952606066)
  {
LABEL_55:
    Extensions = CMFormatDescriptionGetExtensions(a1);
    if (!Extensions)
    {
      v38 = 0;
      goto LABEL_57;
    }

    appended = sbufAtom_appendDictionaryAtom(Extensions, 1, 1702392942, a2);
    goto LABEL_61;
  }

  v22 = *MEMORY[0x1E695E480];
  v23 = OUTLINED_FUNCTION_24_6();
  FigTaggedBufferGroupFormatDescriptionCopyTagCollections(v23, v24, v25, v26, v27, v28, v29, v30);
  if (!theArray)
  {
    Mutable = CFArrayCreateMutable(v22, 0, MEMORY[0x1E695E9C0]);
    goto LABEL_37;
  }

  Count = CFArrayGetCount(theArray);
  Mutable = CFArrayCreateMutable(v22, Count, MEMORY[0x1E695E9C0]);
  if (Count < 1)
  {
LABEL_37:
    v37 = sbufAtom_appendArrayAtom(Mutable, 1, 1952932705, a2);
    goto LABEL_38;
  }

  v33 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v33);
    v35 = FigTagCollectionCopyAsData(ValueAtIndex, v22);
    if (!v35)
    {
      break;
    }

    v36 = v35;
    CFArrayAppendValue(Mutable, v35);
    CFRelease(v36);
    if (Count == ++v33)
    {
      goto LABEL_37;
    }
  }

  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_27_2();
  v37 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v62, 0xFFFFB347uLL, "<<<< FigSampleBufferSerialization >>>>", 0xB78, v63, v64, v65);
LABEL_38:
  v38 = v37;
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (!v38)
  {
    goto LABEL_55;
  }

LABEL_57:
  if (theArray)
  {
    CFRelease(theArray);
  }

  return v38;
}

size_t sbufAtom_appendAtomWithMemoryBlock(const void *a1, size_t a2)
{
  OUTLINED_FUNCTION_26_7();
  OUTLINED_FUNCTION_32_5();
  v9 = v4;
  v10 = v5;
  result = FigNEAtomWriterBeginAtom(&v8, v6);
  if (!result)
  {
    result = FigNEAtomWriterAppendData(&v8, a1, a2);
    if (!result)
    {
      return FigNEAtomWriterEndAtom(&v8);
    }
  }

  return result;
}

size_t sbufAtom_appendDictionaryAtom(const __CFDictionary *a1, uint64_t a2, uint64_t a3, void *a4)
{
  OUTLINED_FUNCTION_38_1();
  Count = CFDictionaryGetCount(v8);
  v10 = Count;
  if ((a2 & 2) != 0 || Count >= 1)
  {
    v29[4] = 0;
    v29[5] = 0;
    v30 = 0;
    v14 = a4[1];
    v29[0] = *a4;
    v29[1] = v14;
    v15 = a4[5] + a4[3];
    v29[2] = a4;
    v29[3] = v15;
    v16 = FigNEAtomWriterBeginAtom(v29, a3);
    if (v16)
    {
      v13 = v16;
      v11 = 0;
      v12 = 0;
      goto LABEL_22;
    }

    if (v10 < 1)
    {
      v11 = 0;
      v12 = 0;
LABEL_17:
      appended = FigNEAtomWriterEndAtom(v29);
      goto LABEL_21;
    }

    v11 = 0;
    if (v10 >> 61)
    {
      v12 = 0;
    }

    else
    {
      v12 = 0;
      if (8 * v10)
      {
        v11 = malloc_type_malloc(8 * v10, 0xC0040B8AA526DuLL);
        v17 = malloc_type_malloc(8 * v10, 0xC0040B8AA526DuLL);
        v12 = v17;
        if (v11)
        {
          if (v17)
          {
            CFDictionaryGetKeysAndValues(a1, v11, v17);
            v18 = 0;
            while (1)
            {
              v19 = v11[v18];
              if (!v19)
              {
                break;
              }

              v20 = CFGetTypeID(v11[v18]);
              if (v20 != CFStringGetTypeID())
              {
                break;
              }

              appended = sbufAtom_appendKeyValuePairAtom(v19, a2, v12[v18]);
              if (appended)
              {
                goto LABEL_21;
              }

              if (v10 == ++v18)
              {
                goto LABEL_17;
              }
            }

            fig_log_get_emitter("com.apple.coremedia", "");
            OUTLINED_FUNCTION_27_2();
            v26 = 4294947656;
            v27 = 2473;
            goto LABEL_20;
          }
        }
      }
    }

    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_27_2();
    v26 = 4294947655;
    v27 = 2467;
LABEL_20:
    appended = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v22, v26, "<<<< FigSampleBufferSerialization >>>>", v27, v23, v24, v25);
LABEL_21:
    v13 = appended;
    goto LABEL_22;
  }

  v11 = 0;
  v12 = 0;
  v13 = 0;
LABEL_22:
  free(v11);
  free(v12);
  return v13;
}

size_t sbufAtom_appendArrayAtom(const __CFArray *a1, uint64_t a2, uint64_t a3, void *a4)
{
  Count = CFArrayGetCount(a1);
  if (Count < 1)
  {
    return 0;
  }

  v8 = Count;
  OUTLINED_FUNCTION_32_5();
  v9 = a4[1];
  v16[0] = *a4;
  v16[1] = v9;
  v10 = a4[5] + a4[3];
  v16[2] = a4;
  v16[3] = v10;
  result = FigNEAtomWriterBeginAtom(v16, a3);
  if (!result)
  {
    v12 = 0;
    while (1)
    {
      v13 = OUTLINED_FUNCTION_24_6();
      ValueAtIndex = CFArrayGetValueAtIndex(v13, v14);
      result = sbufAtom_appendCFTypeAtom(ValueAtIndex, a2, v16);
      if (result)
      {
        break;
      }

      if (v8 == ++v12)
      {
        return FigNEAtomWriterEndAtom(v16);
      }
    }
  }

  return result;
}

size_t sbufAtom_appendFormatDescriptionAtom(const opaqueCMFormatDescription *a1)
{
  OUTLINED_FUNCTION_32_5();
  v3 = v2[1];
  v6[0] = *v2;
  v6[1] = v3;
  v4 = v2[5] + v2[3];
  v6[2] = v2;
  v6[3] = v4;
  result = OUTLINED_FUNCTION_40_1(v6);
  if (!result)
  {
    result = sbufAtom_appendFormatDescriptionAtomGuts(a1, v6);
    if (!result)
    {
      return FigNEAtomWriterEndAtom(v6);
    }
  }

  return result;
}

uint64_t sbufAtom_appendKeyValuePairAtom(const __CFString *a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_26_7();
  v9 = 0;
  OUTLINED_FUNCTION_32_5();
  v10[2] = v6;
  v10[3] = v7;
  result = FigNEAtomWriterBeginAtom(v10, 1801812342);
  if (!result)
  {
    if ((a2 & 1) != 0 && CFDictionaryGetValueIfPresent(sKnownSBufKeysDictionary, a1, &v9) && v9 != -1)
    {
      v11 = v9;
      result = sbufAtom_appendAtomWithMemoryBlock(&v11, 2uLL);
      if (result)
      {
        return result;
      }
    }

    else
    {
      result = sbufAtom_appendStringAtom(a1, 1937011307, v10);
      if (result)
      {
        return result;
      }
    }

    result = sbufAtom_appendCFTypeAtom(a3, a2, v10);
    if (!result)
    {
      return FigNEAtomWriterEndAtom(v10);
    }
  }

  return result;
}

void sbufAtom_copyDictionaryFromAtom(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *value, void *key, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_24_8();
  a23 = v26;
  a24 = v28;
  if (v27)
  {
    v29 = v27;
    OUTLINED_FUNCTION_36_1();
    v31 = v30;
    a12 = 0;
    v32 = 0;
    if (v33)
    {
      v34 = 0;
      while (!figReadNEAtomHeader(v25, v34, v24, &a12 + 1, &a12))
      {
        if (HIDWORD(a12) != 1801812342)
        {
          goto LABEL_24;
        }

        ++v32;
        v34 += a12;
        if (v34 >= v24)
        {
          goto LABEL_7;
        }
      }

      goto LABEL_22;
    }

LABEL_7:
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], v32, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v36 = Mutable;
      if (v32 && v24)
      {
        v37 = 0;
        while (1)
        {
          value = 0;
          key = 0;
          if (figReadNEAtomHeader(v25, v37, v24, &a12 + 1, &a12))
          {
            break;
          }

          v38 = a12;
          v39 = sbufAtom_copyKeyValuePairFromAtom(v31, v25 + 8 + v37, a12 - 8, &key, &value);
          v40 = key;
          if (key && value && !v39)
          {
            CFDictionaryAddValue(v36, key, value);
            v40 = key;
          }

          if (v40)
          {
            CFRelease(v40);
          }

          if (value)
          {
            CFRelease(value);
          }

          v37 += v38;
          if (v37 >= v24)
          {
            goto LABEL_21;
          }
        }

        CFRelease(v36);
      }

      else
      {
LABEL_21:
        *v29 = v36;
      }

LABEL_22:
      OUTLINED_FUNCTION_20_9();
      return;
    }
  }

LABEL_24:
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_20_9();

  FigSignalErrorAtGM(v41, v42, v43, v44, v45, v46, v47, v48);
}

void sbufAtom_copyArrayFromAtom(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *value, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_24_8();
  if (v27)
  {
    v28 = v27;
    v29 = v26;
    if (v26)
    {
      v30 = v24;
      v31 = 0;
      while (1)
      {
        v24 = OUTLINED_FUNCTION_27_7(v24, v25, v26);
        if (v24)
        {
          break;
        }

        ++v31;
        if (!v29)
        {
          Mutable = CFArrayCreateMutable(v30, v31, MEMORY[0x1E695E9C0]);
          if (!OUTLINED_FUNCTION_27_7(Mutable, v33, v34) && !sbufAtom_copyCFTypeFromAtom(v30))
          {
            goto LABEL_10;
          }

          if (Mutable)
          {
            CFRelease(Mutable);
          }

          break;
        }
      }
    }

    else
    {
      Mutable = 0;
LABEL_10:
      *v28 = Mutable;
    }
  }

  OUTLINED_FUNCTION_20_9();
}

size_t sbufAtom_appendSampleSizes(opaqueCMSampleBuffer *a1, int a2, void *a3, CMItemCount *a4)
{
  DataLength = 0;
  sizeArrayEntriesNeededOut = 0;
  OUTLINED_FUNCTION_10_7();
  SampleSizeArray = CMSampleBufferGetSampleSizeArray(v8, v9, v10, v11);
  v13 = SampleSizeArray;
  if (SampleSizeArray != -12735)
  {
    if (SampleSizeArray)
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_0_20();
      appended = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v23, v13, "<<<< FigSampleBufferSerialization >>>>", 0x575, v24, v25, v26);
      goto LABEL_32;
    }

LABEL_17:
    v22 = sizeArrayEntriesNeededOut;
    if (a4)
    {
      *a4 = sizeArrayEntriesNeededOut;
    }

    if (v22 && *a3)
    {
      if (v13 != -12735)
      {
        v27 = CMSampleBufferGetSampleSizeArray(a1, 1, &DataLength, &sizeArrayEntriesNeededOut);
        if (v27)
        {
          appended = v27;
          goto LABEL_26;
        }
      }

      if (sizeArrayEntriesNeededOut)
      {
        if (sizeArrayEntriesNeededOut < 0)
        {
          goto LABEL_31;
        }

        if (sizeArrayEntriesNeededOut >> 62)
        {
          goto LABEL_31;
        }

        v28 = 4 * sizeArrayEntriesNeededOut;
        if (!(4 * sizeArrayEntriesNeededOut))
        {
          goto LABEL_31;
        }
      }

      else
      {
        v28 = 0;
      }

      v33 = malloc_type_malloc(v28, 0x100004052888210uLL);
      if (!v33)
      {
LABEL_31:
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_0_20();
        appended = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v29, 0xFFFFB347uLL, "<<<< FigSampleBufferSerialization >>>>", 0x590, v30, v31, v32);
LABEL_32:
        v17 = 0;
        goto LABEL_41;
      }

      v17 = v33;
      v22 = sizeArrayEntriesNeededOut;
      if (sizeArrayEntriesNeededOut >= 1)
      {
        v34 = 0;
        do
        {
          *(v33 + v34) = *(&DataLength + v34);
          ++v34;
        }

        while (v22 != v34);
      }
    }

    else
    {
      v17 = 0;
    }

    appended = sbufAtom_appendAtomWithMemoryBlock(v17, 4 * v22);
    goto LABEL_41;
  }

  if (!a2)
  {
LABEL_23:
    v17 = 0;
    appended = 0;
    goto LABEL_41;
  }

  DataBuffer = CMSampleBufferGetDataBuffer(a1);
  NumSamples = CMSampleBufferGetNumSamples(a1);
  appended = 0;
  if (!DataBuffer)
  {
LABEL_26:
    v17 = 0;
    goto LABEL_41;
  }

  v17 = 0;
  if (NumSamples == 1)
  {
    FormatDescription = CMSampleBufferGetFormatDescription(a1);
    if (!FormatDescription)
    {
      goto LABEL_23;
    }

    MediaType = CMFormatDescriptionGetMediaType(FormatDescription);
    v20 = MediaType == 1635088502 || MediaType == 1986618469;
    if (!v20 && MediaType != 1885954932)
    {
      goto LABEL_23;
    }

    DataLength = CMBlockBufferGetDataLength(DataBuffer);
    sizeArrayEntriesNeededOut = 1;
    if (sbufAtom_appendSampleSizes_sSBufAtomAppendSampleSizes_MissingSampleSizeForVideo_InitOnce != -1)
    {
      dispatch_once_f(&sbufAtom_appendSampleSizes_sSBufAtomAppendSampleSizes_MissingSampleSizeForVideo_InitOnce, 0, sbufAtomAppendSampleSizes_MissingSampleSizes_LogOnce);
    }

    goto LABEL_17;
  }

LABEL_41:
  free(0);
  free(v17);
  return appended;
}

size_t FigRemote_CreateFormatDescriptionArrayFromSerializedAtomData_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB343uLL, "<<<< FigSampleBufferSerialization >>>>", 0x1235, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigRemote_CreateFormatDescriptionArrayFromSerializedAtomData_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB343uLL, "<<<< FigSampleBufferSerialization >>>>", 0x1247, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigRemote_CreateFormatDescriptionArrayFromSerializedAtomData_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB344uLL, "<<<< FigSampleBufferSerialization >>>>", 0x1236, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigRemote_CreateFormatDescriptionArrayFromSerializedAtomData_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB347uLL, "<<<< FigSampleBufferSerialization >>>>", 0x122B, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigRemote_CreateFormatDescriptionArrayFromSerializedAtomData_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB344uLL, "<<<< FigSampleBufferSerialization >>>>", 0x1225, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigRemote_CreateFormatDescriptionArrayFromSerializedAtomData_cold_6(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB348uLL, "<<<< FigSampleBufferSerialization >>>>", 0x1224, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigRemote_CreateFormatDescriptionArrayFromSerializedAtomData_cold_7(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB348uLL, "<<<< FigSampleBufferSerialization >>>>", 0x1223, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t figReadNEAtomHeader_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB344uLL, "<<<< FigSampleBufferSerialization >>>>", 0x45C, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t figReadNEAtomHeader_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB344uLL, "<<<< FigSampleBufferSerialization >>>>", 0x458, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigRemote_CreateSerializedAtomDataForSampleBufferWithOptions_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB346uLL, "<<<< FigSampleBufferSerialization >>>>", 0x1330, v3, v4, v5);
  *a1 = result;
  return result;
}

uint64_t FigRemote_CreateSerializedAtomDataAndSurfaceForSampleBufferWithOptions_cold_1(const __CFArray *a1, uint64_t *a2, const __CFArray **a3)
{
  result = CFArrayGetCount(a1);
  if (a2)
  {
    if (result >= 1)
    {
      result = FigCFArrayGetFirstValue(*a3);
      *a2 = result;
    }
  }

  return result;
}

size_t sbufAtom_createSampleBufferFromSerializedAtomDataAndSurface_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB343uLL, "<<<< FigSampleBufferSerialization >>>>", 0x14E5, v3, v4, v5);
  *a1 = result;
  return result;
}

uint64_t sbufAtom_createSampleBufferFromSerializedAtomDataAndSurface_cold_2()
{
  dlerror();
  v0 = abort_report_np();
  return sbufAtom_createSampleBufferFromSerializedAtomDataAndSurface_cold_3(v0);
}

size_t sbufAtom_createSampleBufferFromSerializedAtomDataAndSurface_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB344uLL, "<<<< FigSampleBufferSerialization >>>>", 0x1531, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t sbufAtom_createSampleBufferFromSerializedAtomDataAndSurface_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB344uLL, "<<<< FigSampleBufferSerialization >>>>", 0x1522, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t sbufAtom_createSampleBufferFromSerializedAtomDataAndSurface_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB342uLL, "<<<< FigSampleBufferSerialization >>>>", 0x1520, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t sbufAtom_createSampleBufferFromSerializedAtomDataAndSurface_cold_6(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB347uLL, "<<<< FigSampleBufferSerialization >>>>", 0x1514, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t sbufAtom_createSampleBufferFromSerializedAtomDataAndSurface_cold_7(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB344uLL, "<<<< FigSampleBufferSerialization >>>>", 0x1509, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t sbufAtom_createSampleBufferFromSerializedAtomDataAndSurface_cold_8(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB344uLL, "<<<< FigSampleBufferSerialization >>>>", 0x1504, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t sbufAtom_createSampleBufferFromSerializedAtomDataAndSurface_cold_9(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB344uLL, "<<<< FigSampleBufferSerialization >>>>", 0x14FE, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t sbufAtom_createSampleBufferFromSerializedAtomDataAndSurface_cold_10(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB344uLL, "<<<< FigSampleBufferSerialization >>>>", 0x14F9, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t sbufAtom_createSampleBufferFromSerializedAtomDataAndSurface_cold_11(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB347uLL, "<<<< FigSampleBufferSerialization >>>>", 0x15CD, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t sbufAtom_createSampleBufferFromSerializedAtomDataAndSurface_cold_12(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB347uLL, "<<<< FigSampleBufferSerialization >>>>", 0x15BF, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t sbufAtom_createSampleBufferFromSerializedAtomDataAndSurface_cold_13(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB342uLL, "<<<< FigSampleBufferSerialization >>>>", 0x1610, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t sbufAtom_createSampleBufferFromSerializedAtomDataAndSurface_cold_14(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB342uLL, "<<<< FigSampleBufferSerialization >>>>", 0x1605, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t sbufAtom_createSampleBufferFromSerializedAtomDataAndSurface_cold_15(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB342uLL, "<<<< FigSampleBufferSerialization >>>>", 0x1619, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t sbufAtom_createSampleBufferFromSerializedAtomDataAndSurface_cold_16(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB342uLL, "<<<< FigSampleBufferSerialization >>>>", 0x1617, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t sbufAtom_createSampleBufferFromSerializedAtomDataAndSurface_cold_17(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB342uLL, "<<<< FigSampleBufferSerialization >>>>", 0xEA3, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t sbufAtom_createSampleBufferFromSerializedAtomDataAndSurface_cold_18(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB348uLL, "<<<< FigSampleBufferSerialization >>>>", 0xEA7, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t sbufAtom_createSampleBufferFromSerializedAtomDataAndSurface_cold_19(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB342uLL, "<<<< FigSampleBufferSerialization >>>>", 0x15E1, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t sbufAtom_createSampleBufferFromSerializedAtomDataAndSurface_cold_20(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB344uLL, "<<<< FigSampleBufferSerialization >>>>", 0x14E6, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t sbufAtom_createSampleBufferFromSerializedAtomDataAndSurface_cold_21(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB344uLL, "<<<< FigSampleBufferSerialization >>>>", 0x14D6, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t sbufAtom_createSampleBufferFromSerializedAtomDataAndSurface_cold_22(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB348uLL, "<<<< FigSampleBufferSerialization >>>>", 0x14D5, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t sbufAtom_createSampleBufferFromSerializedAtomDataAndSurface_cold_23(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB348uLL, "<<<< FigSampleBufferSerialization >>>>", 0x14D4, v3, v4, v5);
  *a1 = result;
  return result;
}

void sbufAtom_createSampleBufferFromSerializedAtomDataAndSurface_cold_24(const void **a1, CFMutableArrayRef theArray)
{
  CFArrayAppendValue(theArray, *a1);
  if (*a1)
  {
    CFRelease(*a1);
  }
}

size_t FigRemote_CreatePixelBufferFromSerializedAtomData_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB346uLL, "<<<< FigSampleBufferSerialization >>>>", 0x19EF, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigRemote_CreatePixelBufferFromSerializedAtomDataAndSurface_cold_1(size_t a1, _DWORD *a2)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, a1, "<<<< FigSampleBufferSerialization >>>>", 0x1A5B, v5, v6, v7);
  *a2 = result;
  return result;
}

size_t FigRemote_CreatePixelBufferFromSerializedAtomDataAndSurface_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB348uLL, "<<<< FigSampleBufferSerialization >>>>", 0x1A14, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigRemote_CreatePixelBufferFromSerializedAtomDataAndSurface_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB345uLL, "<<<< FigSampleBufferSerialization >>>>", 0x1A60, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t sbufAtom_createPixelBufferAttachmentsFromSerializedAtomData_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB343uLL, "<<<< FigSampleBufferSerialization >>>>", 0x1944, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t sbufAtom_createPixelBufferAttachmentsFromSerializedAtomData_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB344uLL, "<<<< FigSampleBufferSerialization >>>>", 0x196F, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t sbufAtom_createPixelBufferAttachmentsFromSerializedAtomData_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB344uLL, "<<<< FigSampleBufferSerialization >>>>", 0x196B, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t sbufAtom_createPixelBufferAttachmentsFromSerializedAtomData_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB344uLL, "<<<< FigSampleBufferSerialization >>>>", 0x1967, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t sbufAtom_createPixelBufferAttachmentsFromSerializedAtomData_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB344uLL, "<<<< FigSampleBufferSerialization >>>>", 0x1963, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t sbufAtom_createPixelBufferAttachmentsFromSerializedAtomData_cold_6(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB344uLL, "<<<< FigSampleBufferSerialization >>>>", 0x195F, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t sbufAtom_createPixelBufferAttachmentsFromSerializedAtomData_cold_7(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB344uLL, "<<<< FigSampleBufferSerialization >>>>", 0x1945, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigRemote_CreatePixelBufferFromSerializedAtomDataBlockBuffer_cold_1(size_t a1, _DWORD *a2)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, a1, "<<<< FigSampleBufferSerialization >>>>", 0x1AD7, v5, v6, v7);
  *a2 = result;
  return result;
}

size_t FigRemote_CreatePixelBufferFromSerializedAtomDataBlockBuffer_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB348uLL, "<<<< FigSampleBufferSerialization >>>>", 0x1A8E, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigRemote_CreatePixelBufferFromSerializedAtomDataBlockBuffer_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB345uLL, "<<<< FigSampleBufferSerialization >>>>", 0x1ADE, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t sbufAtom_copyKeyValuePairFromAtom_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB344uLL, "<<<< FigSampleBufferSerialization >>>>", 0x1069, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t sbufAtom_copyKeyValuePairFromAtom_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB348uLL, "<<<< FigSampleBufferSerialization >>>>", 0x105A, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t sbufAtom_copyKeyValuePairFromAtom_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB348uLL, "<<<< FigSampleBufferSerialization >>>>", 0x1059, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigNEAtomWriterBeginAtom_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB340uLL, "<<<< FigSampleBufferSerialization >>>>", 0x3DD, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigNEAtomWriterAppendData_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB341uLL, "<<<< FigSampleBufferSerialization >>>>", 0x3F1, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t sbufAtom_appendStringAtom_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB347uLL, "<<<< FigSampleBufferSerialization >>>>", 0x85E, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t sbufAtom_appendDataAtom_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB347uLL, "<<<< FigSampleBufferSerialization >>>>", 0x8A4, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t sbufAtom_appendURLAtom_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB348uLL, "<<<< FigSampleBufferSerialization >>>>", 0x8E2, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t sbufAtom_appendURLAtom_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB347uLL, "<<<< FigSampleBufferSerialization >>>>", 0x8DF, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t sbufAtom_appendPacketDescriptions_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB342uLL, "<<<< FigSampleBufferSerialization >>>>", 0x5B0, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t sbufAtom_copyBackingIOSurfacesFromTaggedBufferGroup_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB348uLL, "<<<< FigSampleBufferSerialization >>>>", 0xBB5, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t sbufAtom_copyBackingIOSurfacesFromTaggedBufferGroup_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB347uLL, "<<<< FigSampleBufferSerialization >>>>", 0xB91, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t sbufAtom_appendTagCollectionFromTaggedBufferGroup_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB348uLL, "<<<< FigSampleBufferSerialization >>>>", 0xB5C, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t sbufAtom_appendTagCollectionFromTaggedBufferGroup_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB348uLL, "<<<< FigSampleBufferSerialization >>>>", 0xB59, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t sbufAtom_appendTagCollectionFromTaggedBufferGroup_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB347uLL, "<<<< FigSampleBufferSerialization >>>>", 0xB55, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t sbufAtom_appendTagCollectionFromTaggedBufferGroup_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB348uLL, "<<<< FigSampleBufferSerialization >>>>", 0xB52, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t CMTaggedBufferGroupFormatDescriptionCreateForTaggedBufferGroupWithExtensions(const __CFAllocator *a1, OpaqueCMTaggedBufferGroup *a2, const void *a3, CFTypeRef *a4)
{
  cf = 0;
  if (!a4)
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v30 = v4;
    v31 = 4294954516;
    v32 = 202;
LABEL_13:
    v12 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v31, "(Fig)", v32, v30, v28, v29);
    goto LABEL_14;
  }

  FigThreadRunOnce(&sFigTaggedBufferGroupFormatDescriptionRegisterOnce, FigTaggedBufferGroupFormatDescriptionRegisterOnce);
  v12 = FigDerivedFormatDescriptionCreate(a1, 0x74626772, 1952606066, a3, &cf, v9, v10, v11);
  if (v12)
  {
LABEL_14:
    v25 = v12;
    goto LABEL_8;
  }

  DerivedStorage = FigDerivedFormatDescriptionGetDerivedStorage(cf, v13, v14, v15, v16, v17, v18, v19);
  *DerivedStorage = 1952606066;
  Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v30 = v4;
    v31 = 4294954510;
    v32 = 213;
    goto LABEL_13;
  }

  v22 = Mutable;
  if (CMTaggedBufferGroupGetCount(a2) >= 1)
  {
    v23 = 0;
    do
    {
      TagCollectionAtIndex = CMTaggedBufferGroupGetTagCollectionAtIndex(a2, v23);
      CFArrayAppendValue(v22, TagCollectionAtIndex);
      ++v23;
    }

    while (v23 < CMTaggedBufferGroupGetCount(a2));
  }

  *(DerivedStorage + 8) = CFRetain(v22);
  *a4 = cf;
  cf = 0;
  CFRelease(v22);
  v25 = 0;
LABEL_8:
  if (cf)
  {
    CFRelease(cf);
  }

  return v25;
}

size_t FigTaggedBufferGroupFormatDescriptionCreateWithExtensions_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "(Fig)", 0xA3, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigTaggedBufferGroupFormatDescriptionCreateWithExtensions_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "(Fig)", 0x9C, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t CMTaggedBufferGroupFormatDescriptionMatchesTaggedBufferGroup_cold_1()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFCE0EuLL, "(Fig)", 0xFB, v1, v2, v3);
}

size_t FigTaggedBufferGroupFormatDescriptionCopyTagCollections_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE5AuLL, "(Fig)", 0x115, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigTaggedBufferGroupFormatDescriptionCopyTagCollections_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE5AuLL, "(Fig)", 0x114, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigTaggedBufferGroupFormatDescriptionCopyTagCollections_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE5AuLL, "(Fig)", 0x113, v3, v4, v5);
  *a1 = result;
  return result;
}

uint64_t HandleEndpointRemoteControlSessionRemoteMessage(_xpc_connection_s *a1, void *a2)
{
  v33 = 0;
  v32 = 0;
  OpCode = FigXPCMessageGetOpCode(a2, &v33);
  if (OpCode)
  {
    return OpCode;
  }

  uint64 = xpc_dictionary_get_uint64(a2, ".objectID");
  cf = 0;
  v7 = FigXPCServerLookupAndRetainAssociatedObject(a1, uint64, &cf, &v32);
  if (!v7)
  {
    if (cf)
    {
      v8 = CFGetTypeID(cf);
      if (v8 == FigEndpointRemoteControlSessionGetTypeID())
      {
        v9 = cf;
        goto LABEL_6;
      }
    }

    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v7 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFBBEAuLL, "<< FigEndpointRemoteControlSessionXPCServer >>", 0xBC, v2, v27, v28);
  }

  v24 = v7;
  if (cf)
  {
    CFRelease(cf);
  }

  if (!v24)
  {
    v9 = 0;
LABEL_6:
    switch(v33)
    {
      case 1667593832:
        v12 = *(*(CMBaseObjectGetVTable(v9) + 16) + 16);
        if (!v12)
        {
          goto LABEL_30;
        }

        v14 = v9;
        v13 = 0;
        v15 = 0;
        break;
      case 1953653870:
        v16 = *(*(CMBaseObjectGetVTable(v9) + 16) + 24);
        if (v16)
        {
LABEL_16:
          v10 = v16(v9);
LABEL_29:
          v24 = v10;
          goto LABEL_35;
        }

LABEL_30:
        v24 = 4294954514;
LABEL_35:
        if (v9)
        {
          CFRelease(v9);
        }

        return v24;
      case 1936029288:
        v11 = v32;
        *(v11 + 24) = xpc_dictionary_get_uint64(a2, ".objectID");
        FigXPCRelease(*(v11 + 32));
        *(v11 + 32) = FigXPCRetain(a1);
        v12 = *(*(CMBaseObjectGetVTable(v9) + 16) + 16);
        if (!v12)
        {
          goto LABEL_30;
        }

        v13 = HandleEventCallback_0;
        v14 = v9;
        v15 = v11;
        break;
      case 1936614509:
        cf = 0;
        v17 = FigXPCMessageCopyCFData(a2, "Params", &cf);
        if (v17)
        {
          goto LABEL_22;
        }

        v18 = xpc_dictionary_get_uint64(a2, "CompletionID");
        if (v18)
        {
          v19 = v18;
          v20 = malloc_type_calloc(1uLL, 0x18uLL, 0x10200403ED2C137uLL);
          if (v20)
          {
            v21 = v20;
            *v20 = v19;
            v20[1] = xpc_dictionary_get_uint64(a2, ".objectID");
            v21[2] = FigXPCRetain(a1);
            v22 = cf;
            v23 = *(*(CMBaseObjectGetVTable(v9) + 16) + 8);
            if (v23)
            {
              v17 = v23(v9, v22, SendMessageCompletionCallback, v21);
LABEL_22:
              v24 = v17;
              goto LABEL_33;
            }

            v24 = 4294954514;
          }

          else
          {
            v29 = fig_log_get_emitter("com.apple.coremedia", "");
            v24 = 4294949865;
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v29, 0xFFFFBBE9uLL, "<< FigEndpointRemoteControlSessionXPCServer >>", 0xDA, v2, v30, v31);
          }
        }

        else
        {
          v24 = 4294949865;
        }

LABEL_33:
        if (cf)
        {
          CFRelease(cf);
        }

        goto LABEL_35;
      case 1937011316:
        v16 = *(*(CMBaseObjectGetVTable(v9) + 16) + 32);
        if (v16)
        {
          goto LABEL_16;
        }

        goto LABEL_30;
      case 1685024621:
        v10 = FigXPCServerDisassociateObjectWithConnection(a1, uint64);
        goto LABEL_29;
      default:
        v24 = 4294949866;
        goto LABEL_35;
    }

    v10 = v12(v14, v13, v15);
    goto LABEL_29;
  }

  return v24;
}

void SendMessageCompletionCallback(int a1, void *a2, uint64_t a3)
{
  xdict = 0;
  if (a3 && !FigXPCCreateBasicMessage(0x63616C62u, *(a3 + 8), &xdict))
  {
    xpc_dictionary_set_uint64(xdict, "CompletionID", *a3);
    xpc_dictionary_set_int64(xdict, "ResponseStatus", a1);
    FigXPCMessageSetCFObject(xdict, "ResponseParams", a2);
    xpc_connection_send_message(*(a3 + 16), xdict);
  }

  DestroyCompletionCallbackParameters(a3);
  FigXPCRelease(xdict);
}

void HandleEventCallback_0(uint64_t a1, const void *a2, const void *a3, uint64_t a4)
{
  message = 0;
  if (a4)
  {
    v7 = FigXPCCreateBasicMessage(0x65686362u, *(a4 + 24), &message);
    v8 = message;
    if (!v7)
    {
      FigXPCMessageSetCFString(message, "EventType", a2);
      FigXPCMessageSetCFData(message, "EventPayload", a3);
      xpc_connection_send_message(*(a4 + 32), message);
      v8 = message;
    }
  }

  else
  {
    v8 = 0;
  }

  FigXPCRelease(v8);
}

size_t CreateSessionEventHandlerState_cold_2(_DWORD *a1)
{
  emitter = fig_log_get_emitter("com.apple.coremedia", "");
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE0EuLL, "<< FigEndpointRemoteControlSessionXPCServer >>", 0x1B2, v1, v4, v5);
  *a1 = result;
  return result;
}

void FigCommonMemoryPoolReleaseAndClear(const void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      CFRelease(v2);
      *a1 = 0;
    }
  }
}

size_t figCustomURLHandlerServer_handleRemoteMessage(_xpc_connection_s *a1, void *a2, void *a3)
{
  v82[16] = *MEMORY[0x1E69E9840];
  v76 = 0;
  v74 = 0;
  cf = 0;
  OpCode = FigXPCMessageGetOpCode(a2, &v76);
  if (OpCode)
  {
    goto LABEL_61;
  }

  uint64 = xpc_dictionary_get_uint64(a2, ".objectID");
  OpCode = FigXPCServerLookupAndRetainAssociatedObject(a1, uint64, &cf, &v74);
  if (OpCode)
  {
    goto LABEL_61;
  }

  if (!cf || (v9 = CFGetTypeID(cf), v9 != FigCustomURLHandlerGetTypeID()))
  {
    OUTLINED_FUNCTION_0_74();
    OpCode = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v52, 0xFFFFBC26uLL, "<< CustomURLHandlerServerXPC >>", 0x2E9, v53, v54, v55);
LABEL_61:
    v29 = OpCode;
    goto LABEL_57;
  }

  if (!*v74)
  {
    OpCode = FigCustomURLHandlerServerRequestingClientCreate(a1, uint64, v74);
    if (OpCode)
    {
      goto LABEL_61;
    }
  }

  if (v76 == 1667778642)
  {
    v11 = v74;
    v10 = cf;
    v73 = xpc_dictionary_get_uint64(a2, "CustomURLHandler_RequestID");
    *type = 0;
    v78 = 0;
    MutableCopy = FigXPCMessageCopyCFDictionary(a2, "CustomURLHandler_RequestInfo", &v78);
    v18 = MEMORY[0x1E695E480];
    if (!MutableCopy)
    {
      if (v78)
      {
        v19 = *MEMORY[0x1E695E480];
        MutableCopy = FigCustomURLRequestInfoCreateMutableCopy(*MEMORY[0x1E695E480], v78, type, v13, v14, v15, v16, v17);
        if (!MutableCopy)
        {
          v20 = v11[2];
          if (v20)
          {
            v21 = FigCFWeakReferenceHolderCopyReferencedObject(v20);
          }

          else
          {
            v21 = 0;
          }

          v27 = *type;
          v82[0] = 0;
          *v79 = 0;
          CryptorID = FigCustomURLRequestInfoGetCryptorID(*type, v79);
          if (CryptorID == -17360)
          {
            v29 = 0;
          }

          else
          {
            v29 = CryptorID;
            if (!CryptorID)
            {
              v30 = FigCPECryptorRemoteRetainCopiedCryptor(v19, *v79, v82);
              if (v30)
              {
                v29 = v30;
                OUTLINED_FUNCTION_0_74();
                v71 = v29;
                v72 = 470;
              }

              else
              {
                v31 = FigCustomURLRequestInfoSetCryptor(v27, v82[0]);
                if (v31)
                {
                  v29 = v31;
                  OUTLINED_FUNCTION_0_74();
                  v71 = v29;
                  v72 = 473;
                }

                else
                {
                  v29 = FigCustomURLRequestInfoSetCryptorID(v27, 0, v32, v33, v34, v35, v36, v37);
                  if (!v29)
                  {
                    goto LABEL_26;
                  }

                  OUTLINED_FUNCTION_0_74();
                  v71 = v29;
                  v72 = 476;
                }
              }

              FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v67, v71, "<< CustomURLHandlerServerXPC >>", v72, v68, v69, v70);
            }
          }

LABEL_26:
          if (v82[0])
          {
            CFRelease(v82[0]);
          }

          if (!v29)
          {
            v29 = FigCustomURLRequestInfoDeserializeNSSecureCodingTypes(*type);
            if (!v29)
            {
              v38 = *type;
              *type = 0;
              if (!v21)
              {
                goto LABEL_32;
              }

              goto LABEL_31;
            }
          }

          v38 = 0;
          if (v21)
          {
LABEL_31:
            CFRelease(v21);
          }

LABEL_32:
          if (v78)
          {
            CFRelease(v78);
          }

          if (*type)
          {
            CFRelease(*type);
          }

          if (v29 == -17378)
          {
            v39 = 0;
LABEL_50:
            xpc_dictionary_set_BOOL(a3, "CustomURLHandler_CanHandleResult", v39 != 0);
LABEL_51:
            v29 = 0;
            goto LABEL_52;
          }

          if (v29)
          {
            goto LABEL_52;
          }

          v40 = *v11;
          if (!*v11)
          {
            goto LABEL_51;
          }

          v41 = _MergedGlobals_56;
          if (qword_1ED4CCE98 != -1)
          {
            dispatch_once_f(&qword_1ED4CCE98, &qword_1ED4CCEA0, handlerServerShimCompletionRec_initializeCFAllocatorOnce);
          }

          v42 = qword_1ED4CCEA0;
          if (!qword_1ED4CCEA0)
          {
            OUTLINED_FUNCTION_0_74();
            v29 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v60, 0xFFFFCE0EuLL, "<< CustomURLHandlerServerXPC >>", 0x24B, v61, v62, v63);
            if (v29)
            {
              goto LABEL_52;
            }
          }

          v43 = malloc_type_calloc(1uLL, 0x10uLL, 0x102004075F474C6uLL);
          if (v43)
          {
            v46 = v43;
            v47 = CFDataCreateWithBytesNoCopy(*v18, v43, 16, v42);
            if (v47)
            {
              v48 = v47;
              *v46 = dispatch_semaphore_create(0);
              v46[8] = 0;
              *(v46 + 3) = 0;
              v49 = *(*(CMBaseObjectGetVTable(v10) + 16) + 32);
              if (v49)
              {
                v50 = v49(v10, v38, v73, v40, v41, figCustomURLHandlerServer_shimDataCallback, figCustomURLHandlerServer_handleRequestShimCompletionHandler, v48);
                if (v50)
                {
                  v29 = v50;
                  v39 = 0;
                }

                else
                {
                  dispatch_semaphore_wait(*v46, 0xFFFFFFFFFFFFFFFFLL);
                  v39 = v46[8];
                  v29 = *(v46 + 3);
                }
              }

              else
              {
                v39 = 0;
                v29 = 4294954514;
              }

              CFRelease(v48);
              if (!v29)
              {
                goto LABEL_50;
              }

              goto LABEL_52;
            }

            free(v46);
            v64 = qword_1ED4CC358;
            v65 = v3;
            v66 = 624;
          }

          else
          {
            v64 = qword_1ED4CC358;
            v65 = v3;
            v66 = 621;
          }

          v29 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v64, 0xFFFFCE0EuLL, "<< CustomURLHandlerServerXPC >>", v66, v65, v44, v45);
          v39 = 0;
          if (!v29)
          {
            goto LABEL_50;
          }

LABEL_52:
          if (v38)
          {
            CFRelease(v38);
          }

          goto LABEL_57;
        }
      }

      else
      {
        OUTLINED_FUNCTION_0_74();
        MutableCopy = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v56, 0xFFFFBC26uLL, "<< CustomURLHandlerServerXPC >>", 0x20B, v57, v58, v59);
      }
    }

    v29 = MutableCopy;
    v38 = 0;
    goto LABEL_32;
  }

  if (dword_1ED4CC360)
  {
    LODWORD(v78) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1ED4CC358, 1, &v78, type);
    v23 = v78;
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type[0]))
    {
      v25 = v23;
    }

    else
    {
      v25 = v23 & 0xFFFFFFFE;
    }

    if (v25)
    {
      *v79 = 136315394;
      *&v79[4] = "figCustomURLHandlerServer_handleRemoteMessage";
      v80 = 1024;
      v81 = v76;
      v26 = _os_log_send_and_compose_impl();
      LOBYTE(v23) = v78;
    }

    else
    {
      v26 = 0;
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1ED4CC358, 1u, 1, v26, v26 != v82, v23, 0, v24);
  }

  v29 = 0;
LABEL_57:
  if (cf)
  {
    CFRelease(cf);
  }

  return v29;
}

uint64_t figCustomURLHandlerServer_handleRemoteMessageNoReply(_xpc_connection_s *a1, void *a2)
{
  v17 = 0;
  v15 = 0;
  cf = 0;
  OpCode = FigXPCMessageGetOpCode(a2, &v17);
  if (OpCode)
  {
    goto LABEL_12;
  }

  uint64 = xpc_dictionary_get_uint64(a2, ".objectID");
  OpCode = FigXPCServerLookupAndRetainAssociatedObject(a1, uint64, &cf, &v15);
  if (OpCode)
  {
    goto LABEL_12;
  }

  if (!cf || (v9 = CFGetTypeID(cf), v9 != FigCustomURLHandlerGetTypeID()))
  {
    OpCode = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED4CC358, 0xFFFFBC26uLL, "<< CustomURLHandlerServerXPC >>", 0x2BE, v2, v7, v8);
    goto LABEL_12;
  }

  if (!*v15)
  {
    OpCode = FigCustomURLHandlerServerRequestingClientCreate(a1, uint64, v15);
    if (OpCode)
    {
      goto LABEL_12;
    }
  }

  if (v17 == 1667777641)
  {
    OpCode = FigXPCServerDisassociateObjectWithConnection(a1, uint64);
    goto LABEL_12;
  }

  if (v17 == 1667777362)
  {
    v10 = cf;
    v11 = xpc_dictionary_get_uint64(a2, "CustomURLHandler_RequestID");
    v12 = *(*(CMBaseObjectGetVTable(v10) + 16) + 40);
    if (v12)
    {
      OpCode = v12(v10, v11);
LABEL_12:
      v13 = OpCode;
      goto LABEL_15;
    }

    v13 = 4294954514;
  }

  else
  {
    v13 = 0;
  }

LABEL_15:
  if (cf)
  {
    CFRelease(cf);
  }

  return v13;
}

uint64_t handlerServerShimCompletionRec_initializeCFAllocatorOnce(void *a1)
{
  v3 = 0;
  result = FigCreateCFAllocatorFigMallocWithDeallocCallback(handlerServerShimCompletionRec_dealloc, &v3);
  if (!result)
  {
    *a1 = v3;
  }

  return result;
}

size_t FigCustomURLHandlerServerAssociateObjectAndContentKeySessionByPID_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED4CC358, 0xFFFFCE0EuLL, "<< CustomURLHandlerServerXPC >>", 0x342, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigCustomURLHandlerServerRequestingClientCreate_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED4CC358, 0xFFFFCE0EuLL, "<< CustomURLHandlerServerXPC >>", 0xB2, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigCaptionSerializerCreateCFDataFromCaptionGroup(uint64_t a1, uint64_t a2, CFMutableDataRef *a3)
{
  cf = 0;
  if (!a1)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_1_2();
    v111 = 2178;
LABEL_80:
    Code = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v107, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", v111, v108, v109, v110);
    Mutable = 0;
    goto LABEL_66;
  }

  if (!a2)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_1_2();
    v111 = 2179;
    goto LABEL_80;
  }

  if (!a3)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_1_2();
    v111 = 2180;
    goto LABEL_80;
  }

  v6 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_1_2();
    v57 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v112, 0xFFFFBAF0uLL, "<< FigCaptionSerializer >>", 0x887, v113, v114, v115);
LABEL_82:
    Code = v57;
    goto LABEL_66;
  }

  v128 = a3;
  SliceCount = FigCaptionGroupGetSliceCount(a2, v7, v8, v9, v10, v11, v12, v13);
  if (!SliceCount)
  {
    v19 = 0;
LABEL_20:
    error[0] = 0;
    number[0] = 0;
    LODWORD(valuePtr[0]) = 0;
    v58 = FigCaptionSerializerCopyProperty(a1, @"FigCaptionSerializerFormat", v16, number);
    if (v58)
    {
      Code = v58;
      Data = 0;
    }

    else
    {
      CFNumberGetValue(number[0], kCFNumberSInt32Type, valuePtr);
      if (LODWORD(valuePtr[0]) == 2)
      {
        v59 = kCFPropertyListBinaryFormat_v1_0;
      }

      else
      {
        v59 = kCFPropertyListXMLFormat_v1_0;
      }

      Data = CFPropertyListCreateData(v6, Mutable, v59, 0, error);
      if (Data)
      {
        if (!error[0])
        {
          Code = 0;
          goto LABEL_33;
        }

        v61 = CFErrorCopyFailureReason(error[0]);
        Code = CFErrorGetCode(error[0]);
        if (v61)
        {
          CFRelease(v61);
        }
      }

      else
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_1_2();
        Code = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v116, 0xFFFFBAF0uLL, "<< FigCaptionSerializer >>", 0x67D, v117, v118, v119);
      }
    }

    if (error[0])
    {
      CFRelease(error[0]);
    }

    if (Data)
    {
      CFRelease(Data);
      Data = 0;
    }

LABEL_33:
    if (number[0])
    {
      CFRelease(number[0]);
    }

    if (Code)
    {
      goto LABEL_59;
    }

    valuePtr[0] = 0;
    v140 = 0;
    v138 = 0u;
    v139 = 0u;
    *error = 0u;
    v136 = 0;
    v134 = 0u;
    v135 = 0u;
    *number = 0u;
    v131 = 0;
    v132 = 0;
    v130 = 0;
    if (Data)
    {
      v63 = CFDataCreateMutable(v6, 0);
      v64 = v63;
      if (!v63)
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_1_2();
        Code = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v124, 0xFFFFBAF0uLL, "<< FigCaptionSerializer >>", 0x79F, v125, v126, v127);
        goto LABEL_51;
      }

      WritableWithCFMutableData = FigByteStreamCreateWritableWithCFMutableData(v63, 0, v6, valuePtr);
      if (WritableWithCFMutableData || (WritableWithCFMutableData = FigAtomWriterInitWithByteStream(valuePtr[0], error), WritableWithCFMutableData) || (WritableWithCFMutableData = FigAtomWriterBeginAtom(error, 1717793639, 0, v66, v67, v68, v69, v70), WritableWithCFMutableData) || (WritableWithCFMutableData = FigAtomWriterInitWithParent(error, number), WritableWithCFMutableData) || (WritableWithCFMutableData = FigCaptionSerializerCopyProperty(a1, @"FigCaptionSerializerVersion", v71, &v131), WritableWithCFMutableData) || (WritableWithCFMutableData = FigCaptionSerializerCopyProperty(a1, @"FigCaptionSerializerFormat", v72, &v130), WritableWithCFMutableData) || (CFNumberGetValue(v131, kCFNumberSInt32Type, &v132), CFNumberGetValue(v130, kCFNumberSInt32Type, &v132 + 4), WritableWithCFMutableData = FigAtomWriterBeginAtom(number, 1717793641, 0, v73, v74, v75, v76, v77), WritableWithCFMutableData) || (WritableWithCFMutableData = FigAtomWriterAppendData(number, &v132, 8), WritableWithCFMutableData) || (WritableWithCFMutableData = FigAtomWriterEndAtom(number, v78, v79, v80, v81, v82, v83, v84), WritableWithCFMutableData) || (WritableWithCFMutableData = FigAtomWriterBeginAtom(number, 1717793636, 0, v85, v86, v87, v88, v89), WritableWithCFMutableData) || (BytePtr = CFDataGetBytePtr(Data), Length = CFDataGetLength(Data), WritableWithCFMutableData = FigAtomWriterAppendData(number, BytePtr, Length), WritableWithCFMutableData) || (WritableWithCFMutableData = FigAtomWriterEndAtom(number, v92, v93, v94, v95, v96, v97, v98), WritableWithCFMutableData))
      {
        Code = WritableWithCFMutableData;
      }

      else
      {
        Code = FigAtomWriterEndAtom(error, v99, v100, v101, v102, v103, v104, v105);
        if (!Code)
        {
LABEL_51:
          if (v130)
          {
            CFRelease(v130);
          }

          if (v131)
          {
            CFRelease(v131);
          }

          if (valuePtr[0])
          {
            CFRelease(valuePtr[0]);
          }

          if (Code)
          {
LABEL_60:
            if (Data)
            {
              CFRelease(Data);
            }

            if (v64)
            {
              CFRelease(v64);
            }

            if (!v19)
            {
              goto LABEL_66;
            }

LABEL_65:
            CFRelease(v19);
            goto LABEL_66;
          }

          *v128 = v64;
LABEL_59:
          v64 = 0;
          goto LABEL_60;
        }
      }

      CFRelease(v64);
    }

    else
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_1_2();
      Code = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v120, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", 0x79B, v121, v122, v123);
    }

    v64 = 0;
    goto LABEL_51;
  }

  v17 = SliceCount;
  v18 = 0;
  v19 = 0;
  v20 = MEMORY[0x1E695E9C0];
  while (1)
  {
    if (v19)
    {
      CFRelease(v19);
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    v19 = CFArrayCreateMutable(v6, 0, v20);
    if (v19)
    {
      FigCaptionGroupGetDurationBeforeSlice(a2, v18, v21, v22, v23, v24, v25, v26, error);
      *number = *error;
      *&v134 = v138;
      appended = FigCFArrayAppendCMTime(v19, number, v27, v28, v29, v30, v31, v32);
      if (appended || (FigCaptionGroupGetDurationAfterSlice(a2, v18, v34, v35, v36, v37, v38, v39, number), *error = *number, *&v138 = v134, appended = FigCFArrayAppendCMTime(v19, number, v40, v41, v42, v43, v44, v45), appended))
      {
        Code = appended;
        goto LABEL_65;
      }
    }

    else
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_1_2();
      v57 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v53, 0xFFFFBAF0uLL, "<< FigCaptionSerializer >>", 0x549, v54, v55, v56);
      if (v57)
      {
        goto LABEL_82;
      }
    }

    CaptionData = FigCaptionGroupGetCaptionData(a2, v18, v46, v47, v48, v49, v50, v51);
    if (!CaptionData)
    {
      break;
    }

    fcs_copyCaptionDataAsDictionary(CaptionData, &cf);
    CFDictionarySetValue(cf, @"Durations", v19);
    CFArrayAppendValue(Mutable, cf);
    if (v17 == ++v18)
    {
      goto LABEL_20;
    }
  }

  Code = 0;
  if (v19)
  {
    goto LABEL_65;
  }

LABEL_66:
  if (cf)
  {
    CFRelease(cf);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return Code;
}

size_t fcs_copyCaptionDataAsDictionary(const void *a1, __CFDictionary **a2)
{
  value = 0;
  if (!a1)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_27_2();
    v67 = 1507;
LABEL_70:
    v6 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v63, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", v67, v64, v65, v66);
    goto LABEL_71;
  }

  v4 = a2;
  if (!a2)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_27_2();
    v67 = 1508;
    goto LABEL_70;
  }

  v5 = a1;
  v6 = fcs_copyCaptionPropertiesAsDictionary(a1, &value);
  if (v6)
  {
LABEL_71:
    Count = v6;
    Mutable = 0;
    goto LABEL_96;
  }

  v103 = 0;
  v104 = 0;
  v102 = 0;
  v100 = 0;
  v101 = 0;
  v98 = 0.0;
  cf = 0;
  allocator = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_27_2();
    Count = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v68, 0xFFFFBAF0uLL, "<< FigCaptionSerializer >>", 0x610, v69, v70, v71);
    goto LABEL_73;
  }

  CMBaseObject = FigCaptionDataGetCMBaseObject(v5);
  v9 = *(*(CMBaseObjectGetVTable(CMBaseObject) + 8) + 48);
  if (!v9)
  {
    v14 = 0;
    OUTLINED_FUNCTION_12_14();
    Count = 4294954514;
LABEL_11:
    v15 = Mutable;
    Mutable = 0;
    goto LABEL_74;
  }

  v10 = v9(CMBaseObject, @"StylePropertyKeysInUse", allocator, &v102);
  if (v10)
  {
LABEL_104:
    Count = v10;
    goto LABEL_105;
  }

  Count = CFArrayGetCount(v102);
  v12 = *(*(CMBaseObjectGetVTable(v5) + 16) + 8);
  if (v12)
  {
    v13 = v12(v5);
    if (!v13)
    {
      Count = 0;
LABEL_105:
      v14 = 0;
      OUTLINED_FUNCTION_12_14();
      goto LABEL_11;
    }
  }

  else
  {
    v13 = &stru_1F0B78830;
  }

  OUTLINED_FUNCTION_4_28(&fcs_getCaptionInfoToPListableMappingDictionary_sInitializeCaptionPropertyToPListableMappingOnce);
  v16 = CFDictionaryGetValue(sCaptionInfoToPListableMappingDictionary, @"StyleProperty");
  if (!v16)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_27_2();
    v10 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v85, 0xFFFFBAF0uLL, "<< FigCaptionSerializer >>", 0x61A, v86, v87, v88);
    goto LABEL_104;
  }

  v17 = v16;
  Length = CFStringGetLength(v13);
  if (!Count)
  {
LABEL_73:
    v15 = 0;
    v14 = 0;
    OUTLINED_FUNCTION_12_14();
    goto LABEL_74;
  }

  v89 = Count;
  theDict = Mutable;
  v90 = v4;
  v18 = 0;
  OUTLINED_FUNCTION_12_14();
  v93 = v5;
  v20 = allocator;
  while (1)
  {
    v91 = v19;
    ValueAtIndex = CFArrayGetValueAtIndex(v102, v19);
    if (v18)
    {
      CFRelease(v18);
    }

    v22 = OUTLINED_FUNCTION_14_3();
    theArray = CFArrayCreateMutable(v22, v23, MEMORY[0x1E695E9C0]);
    if (!theArray)
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_8_18();
      Count = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v81, 0xFFFFBAF0uLL, "<< FigCaptionSerializer >>", 0x622, v82, v83, v84);
      v14 = 0;
      v15 = theDict;
      Mutable = 0;
      v4 = v90;
      goto LABEL_74;
    }

    if (Length)
    {
      break;
    }

LABEL_55:
    v18 = theArray;
    CFDictionarySetValue(theDict, ValueAtIndex, theArray);
    v19 = v91 + 1;
    if (v91 + 1 == v89)
    {
      Count = 0;
      v15 = 0;
      v4 = v90;
      v14 = theArray;
      Mutable = theDict;
      goto LABEL_74;
    }
  }

  v24 = 0;
  while (1)
  {
    if (v104)
    {
      CFRelease(v104);
      v104 = 0;
    }

    v25 = *(*(CMBaseObjectGetVTable(v5) + 16) + 24);
    if (!v25)
    {
      Count = 4294954514;
LABEL_58:
      v15 = theDict;
      goto LABEL_63;
    }

    v26 = v25(v5, v24, ValueAtIndex, v20, &v104, &v100);
    if (v26)
    {
      Count = v26;
      goto LABEL_58;
    }

    if (!v104)
    {
      goto LABEL_39;
    }

    if (v2)
    {
      CFRelease(v2);
    }

    if (v3)
    {
      CFRelease(v3);
    }

    v27 = OUTLINED_FUNCTION_14_3();
    v2 = CFDictionaryCreateMutable(v27, v28, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!v2)
    {
      break;
    }

    v29 = OUTLINED_FUNCTION_14_3();
    v3 = CFArrayCreateMutable(v29, v30, MEMORY[0x1E695E9C0]);
    if (!v3)
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_8_18();
      Count = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v59, 0xFFFFBAF0uLL, "<< FigCaptionSerializer >>", 0x631, v60, v61, v62);
      goto LABEL_67;
    }

    if (!v104 || (v31 = CFGetTypeID(v104), v31 != FigCaptionDynamicStyleGetTypeID()))
    {
      KeyFrameCount = 1;
LABEL_42:
      v47 = 0;
      while (1)
      {
        if (v103)
        {
          CFRelease(v103);
          v103 = 0;
        }

        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }

        v98 = 0.0;
        if (CFEqual(ValueAtIndex, @"Ruby"))
        {
          v48 = fcs_copyCaptionDataAsDictionary(v104, &v103);
          if (v48)
          {
            goto LABEL_59;
          }
        }

        else
        {
          v48 = FigCaptionDynamicStyleCopyKeyFrameValueAtIndex(v104, v47, &v98, &cf);
          if (v48 || (v48 = fcs_copyCaptionStyleAsDictionary(ValueAtIndex, cf, v17, &v103), v48))
          {
LABEL_59:
            Count = v48;
            goto LABEL_62;
          }
        }

        v48 = FigCFDictionarySetDouble(v103, @"RelativeTime", v98, v49, v50, v51, v52, v53, v54);
        if (v48)
        {
          goto LABEL_59;
        }

        CFArrayAppendValue(v3, v103);
        if (KeyFrameCount == ++v47)
        {
          goto LABEL_35;
        }
      }
    }

    KeyFrameCount = FigCaptionDynamicStyleGetKeyFrameCount(v104);
    if (KeyFrameCount)
    {
      goto LABEL_42;
    }

LABEL_35:
    v34 = v100;
    v33 = v101;
    v35 = CFDictionaryCreateMutable(allocator, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!v35)
    {
      goto LABEL_61;
    }

    v41 = v35;
    if (FigCFDictionarySetCFIndex(v35, @"RangeLocation", v34, v36, v37, v38, v39, v40) || FigCFDictionarySetCFIndex(v41, @"RangeLength", v33, v42, v43, v44, v45, v46))
    {
      CFRelease(v41);
LABEL_61:
      Count = 0;
LABEL_62:
      v15 = theDict;
      v5 = v93;
LABEL_63:
      Mutable = 0;
      v4 = v90;
      goto LABEL_64;
    }

    CFDictionarySetValue(v2, @"PropertyRange", v41);
    CFDictionarySetValue(v2, @"DynamicStyleValue", v3);
    CFArrayAppendValue(theArray, v2);
    CFRelease(v41);
    v5 = v93;
    v20 = allocator;
LABEL_39:
    v24 += v101;
    if (v24 == Length)
    {
      goto LABEL_55;
    }
  }

  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_8_18();
  Count = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v55, 0xFFFFBAF0uLL, "<< FigCaptionSerializer >>", 0x62F, v56, v57, v58);
  v3 = 0;
LABEL_67:
  v15 = theDict;
  Mutable = 0;
  v4 = v90;
LABEL_64:
  v14 = theArray;
LABEL_74:
  if (v104)
  {
    CFRelease(v104);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v102)
  {
    CFRelease(v102);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v103)
  {
    CFRelease(v103);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (!Count)
  {
    v72 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (v72)
    {
      v73 = v72;
      v74 = *(*(CMBaseObjectGetVTable(v5) + 16) + 8);
      if (v74)
      {
        v75 = v74(v5);
      }

      else
      {
        v75 = &stru_1F0B78830;
      }

      CFDictionarySetValue(v73, @"Text", v75);
      CFDictionarySetValue(v73, @"Properties", value);
      CFDictionarySetValue(v73, @"StyleProperties", Mutable);
      Count = 0;
      *v4 = v73;
    }

    else
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_27_2();
      Count = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v77, 0xFFFFBAF0uLL, "<< FigCaptionSerializer >>", 0x5ED, v78, v79, v80);
    }
  }

LABEL_96:
  if (value)
  {
    CFRelease(value);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return Count;
}

size_t FigCaptionSerializerCreateCaptionGroupFromCFData(void **a1, const void *a2, __CFString *a3)
{
  v7 = a1;
  v106 = *MEMORY[0x1E69E9840];
  v97 = 0;
  v98 = 0;
  error = 0;
  if (a1)
  {
    if (a2)
    {
      v8 = a3;
      if (!a3)
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_6_21();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v70, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", 0x8BE, v71, v72, v73);
        OUTLINED_FUNCTION_18_11();
        OUTLINED_FUNCTION_5_29();
        v25 = 0;
        goto LABEL_49;
      }

      memset(v103, 0, sizeof(v103));
      memset(v102, 0, sizeof(v102));
      cf = 0;
      v100 = 0;
      size = 0;
      v9 = *MEMORY[0x1E695E480];
      if (FigByteStreamCreateWithCFData(a2, 0, *MEMORY[0x1E695E480], &cf) || FigAtomStreamInitWithByteStream(cf, 0, 0, v103, v10) || FigAtomStreamInitWithParent(v103, 0, v102))
      {
        OUTLINED_FUNCTION_18_11();
      }

      else
      {
        v11 = 0;
        Mutable = 0x100004077774924;
        v5 = @"FigCaptionSerializerVersion";
        v6 = @"FigCaptionSerializerFormat";
        do
        {
          if (FigAtomStreamGetCurrentAtomTypeAndDataLength(v102, &v100, &size))
          {
            goto LABEL_75;
          }

          v12 = malloc_type_malloc(size, 0x100004077774924uLL);
          if (!v12)
          {
            fig_log_get_emitter("com.apple.coremedia", "");
            OUTLINED_FUNCTION_6_21();
            v60 = 4294949616;
            v61 = 2030;
LABEL_74:
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v56, v60, "<< FigCaptionSerializer >>", v61, v57, v58, v59);
LABEL_75:
            OUTLINED_FUNCTION_18_11();
            goto LABEL_25;
          }

          v13 = v12;
          if (FigAtomStreamReadCurrentAtomData(v102, 0, size, v12))
          {
            goto LABEL_75;
          }

          if (v100 == 1717793636)
          {
            if (v11)
            {
              CFRelease(v11);
            }

            v11 = CFDataCreate(v9, v13, size);
            if (!v11)
            {
              fig_log_get_emitter("com.apple.coremedia", "");
              OUTLINED_FUNCTION_6_21();
              v60 = 4294949616;
              v61 = 2051;
              goto LABEL_74;
            }
          }

          else if (v100 == 1717793641)
          {
            if (size != 8)
            {
              fig_log_get_emitter("com.apple.coremedia", "");
              OUTLINED_FUNCTION_6_21();
              v60 = 4294949615;
              v61 = 2041;
              goto LABEL_74;
            }

            if (FigCFDictionarySetInt32(v7[2], @"FigCaptionSerializerVersion", *v13, v14, v15, v16, v17, v18) || FigCFDictionarySetInt32(v7[2], @"FigCaptionSerializerFormat", v13[4], v19, v20, v21, v22, v23))
            {
              goto LABEL_75;
            }
          }

          free(v13);
          Atom = FigAtomStreamAdvanceToNextAtom(v102);
        }

        while (!Atom);
        Code = Atom;
        if (Atom == -12890)
        {
          Code = 0;
        }

        v7 = v11;
      }

      v11 = 0;
LABEL_25:
      if (cf)
      {
        CFRelease(cf);
      }

      if (v11)
      {
        CFRelease(v11);
      }

      if (!Code)
      {
        v25 = CFPropertyListCreateWithData(v9, v7, 0, 0, &error);
        if (v25)
        {
          if (error)
          {
            v8 = CFErrorCopyFailureReason(error);
            Code = CFErrorGetCode(error);
            OUTLINED_FUNCTION_5_29();
            goto LABEL_49;
          }

          TypeID = CFArrayGetTypeID();
          if (TypeID != CFGetTypeID(v25))
          {
            fig_log_get_emitter("com.apple.coremedia", "");
            OUTLINED_FUNCTION_6_21();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v78, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", 0x8CE, v79, v80, v81);
            OUTLINED_FUNCTION_5_29();
            v8 = 0;
            Code = 0;
            goto LABEL_49;
          }

          Count = CFArrayGetCount(v25);
          v28 = OUTLINED_FUNCTION_14_3();
          Mutable = CFArrayCreateMutable(v28, v29, v30);
          if (Mutable)
          {
            v31 = OUTLINED_FUNCTION_14_3();
            v5 = CFDataCreateMutable(v31, v32);
            if (v5)
            {
              v33 = OUTLINED_FUNCTION_14_3();
              v6 = CFDataCreateMutable(v33, v34);
              if (v6)
              {
                v94 = v7;
                if (Count)
                {
                  v35 = 0;
                  while (1)
                  {
                    if (v97)
                    {
                      CFRelease(v97);
                      v97 = 0;
                    }

                    ValueAtIndex = CFArrayGetValueAtIndex(v25, v35);
                    if (!ValueAtIndex)
                    {
                      v8 = 0;
                      Code = 0;
                      goto LABEL_48;
                    }

                    v37 = ValueAtIndex;
                    v38 = fcs_deserializeAndCreateFigCaptionData(ValueAtIndex, &v97);
                    if (v38)
                    {
                      break;
                    }

                    Value = CFDictionaryGetValue(v37, @"Durations");
                    if (FigCFArrayGetCMTimeAtIndex(Value, 0, &bytes, v40, v41, v42, v43, v44))
                    {
                      FigCFArrayGetCMTimeAtIndex(Value, 1, &v105, v45, v46, v47, v48, v49);
                    }

                    CFArrayAppendValue(Mutable, v97);
                    CFDataAppendBytes(v5, &bytes, 24);
                    CFDataAppendBytes(v6, &v105, 24);
                    if (Count == ++v35)
                    {
                      goto LABEL_46;
                    }
                  }

                  Code = v38;
                }

                else
                {
LABEL_46:
                  MutableBytePtr = CFDataGetMutableBytePtr(v5);
                  v51 = CFDataGetMutableBytePtr(v6);
                  Code = FigCaptionGroupCreate(v9, Mutable, MutableBytePtr, v51, &v98, v52, v53, v54);
                  if (!Code)
                  {
                    v8 = 0;
                    a3->isa = v98;
                    v98 = 0;
LABEL_48:
                    v7 = v94;
                    goto LABEL_49;
                  }
                }

                v8 = 0;
                goto LABEL_48;
              }

              fig_log_get_emitter("com.apple.coremedia", "");
              OUTLINED_FUNCTION_6_21();
              Code = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v90, 0xFFFFBAF0uLL, "<< FigCaptionSerializer >>", 0x8D8, v91, v92, v93);
              goto LABEL_87;
            }

            fig_log_get_emitter("com.apple.coremedia", "");
            OUTLINED_FUNCTION_6_21();
            Code = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v86, 0xFFFFBAF0uLL, "<< FigCaptionSerializer >>", 0x8D6, v87, v88, v89);
            goto LABEL_86;
          }

          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_6_21();
          Code = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v82, 0xFFFFBAF0uLL, "<< FigCaptionSerializer >>", 0x8D4, v83, v84, v85);
        }

        else
        {
          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_6_21();
          Code = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v74, 0xFFFFBAF0uLL, "<< FigCaptionSerializer >>", 0x8C4, v75, v76, v77);
          Mutable = 0;
        }

        v5 = 0;
LABEL_86:
        v6 = 0;
        goto LABEL_87;
      }
    }

    else
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_6_21();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v66, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", 0x8BD, v67, v68, v69);
      OUTLINED_FUNCTION_18_11();
    }
  }

  else
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_6_21();
    Code = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v62, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", 0x8BC, v63, v64, v65);
  }

  OUTLINED_FUNCTION_5_29();
  v25 = 0;
LABEL_87:
  v8 = 0;
LABEL_49:
  if (error)
  {
    CFRelease(error);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (v98)
  {
    CFRelease(v98);
  }

  if (v97)
  {
    CFRelease(v97);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  return Code;
}

size_t fcs_copyCaptionPropertiesAsDictionary(const void *a1, __CFDictionary **a2)
{
  v47 = 0;
  cf = 0;
  theArray = 0;
  v46 = 0;
  v44 = 0.0;
  if (!a1)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_3();
    v38 = 4294949615;
    v39 = 1415;
LABEL_68:
    v7 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v34, v38, "<< FigCaptionSerializer >>", v39, v35, v36, v37);
LABEL_69:
    Mutable = 0;
    goto LABEL_53;
  }

  if (!a2)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_3();
    v38 = 4294949615;
    v39 = 1416;
    goto LABEL_68;
  }

  v4 = *MEMORY[0x1E695E480];
  theDict = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!theDict)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_3();
    v38 = 4294949616;
    v39 = 1419;
    goto LABEL_68;
  }

  v5 = CFGetTypeID(a1);
  if (v5 == FigCaptionDataGetTypeID())
  {
    v6 = *(*(CMBaseObjectGetVTable(a1) + 8) + 48);
    if (v6)
    {
      v7 = v6(a1, @"CaptionPropertyKeysInUse", v4, &theArray);
    }

    else
    {
      v7 = 4294954514;
    }

    v9 = @"CaptionProperty";
  }

  else
  {
    v8 = *(*(CMBaseObjectGetVTable(a1) + 8) + 48);
    if (v8)
    {
      v7 = v8(a1, @"CMCaptionRegionPropertyKeysInUse", v4, &theArray);
    }

    else
    {
      v7 = 4294954514;
    }

    v9 = @"RegionProperty";
  }

  OUTLINED_FUNCTION_4_28(&fcs_getCaptionInfoToPListableMappingDictionary_sInitializeCaptionPropertyToPListableMappingOnce);
  Value = CFDictionaryGetValue(sCaptionInfoToPListableMappingDictionary, v9);
  if (v7)
  {
    goto LABEL_69;
  }

  v11 = Value;
  if (!Value)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_3();
    v38 = 4294949616;
    v39 = 1431;
    goto LABEL_68;
  }

  v40 = a2;
  Count = CFArrayGetCount(theArray);
  if (Count)
  {
    v12 = 0;
    v41 = v4;
    while (1)
    {
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      Mutable = CFArrayCreateMutable(v4, 0, MEMORY[0x1E695E9C0]);
      if (!Mutable)
      {
        break;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v12);
      v15 = *(*(CMBaseObjectGetVTable(a1) + 8) + 48);
      if (!v15)
      {
        v7 = 4294954514;
        goto LABEL_53;
      }

      v16 = v15(a1, ValueAtIndex, v4, &cf);
      if (v16)
      {
        goto LABEL_52;
      }

      v44 = 0.0;
      if (CFEqual(ValueAtIndex, @"Region") || CFEqual(ValueAtIndex, @"CMCaptionRegionContainerRegion"))
      {
        if (v47)
        {
          CFRelease(v47);
          v47 = 0;
        }

        v16 = fcs_copyCaptionPropertiesAsDictionary(cf, &v47);
        if (v16)
        {
          goto LABEL_52;
        }

        CFArrayAppendValue(Mutable, v47);
      }

      else
      {
        if (!cf || (v17 = CFGetTypeID(cf), v17 != FigCaptionDynamicStyleGetTypeID()))
        {
          KeyFrameCount = 1;
LABEL_29:
          v19 = 0;
          while (2)
          {
            if (v47)
            {
              CFRelease(v47);
              v47 = 0;
            }

            if (v46)
            {
              CFRelease(v46);
              v46 = 0;
            }

            if (cf)
            {
              v20 = CFGetTypeID(cf);
              TypeID = FigCaptionDynamicStyleGetTypeID();
              v22 = cf;
              if (v20 == TypeID)
              {
                v16 = FigCaptionDynamicStyleCopyKeyFrameValueAtIndex(cf, v19, &v44, &v46);
                if (v16)
                {
                  goto LABEL_52;
                }

                v22 = v46;
                goto LABEL_40;
              }
            }

            else
            {
              v22 = 0;
            }

            v44 = -1.0;
LABEL_40:
            v16 = fcs_copyCaptionStyleAsDictionary(ValueAtIndex, v22, v11, &v47);
            if (v16)
            {
              goto LABEL_52;
            }

            v16 = FigCFDictionarySetDouble(v47, @"RelativeTime", v44, v23, v24, v25, v26, v27, v28);
            if (v16)
            {
              goto LABEL_52;
            }

            CFArrayAppendValue(Mutable, v47);
            if (KeyFrameCount == ++v19)
            {
              goto LABEL_43;
            }

            continue;
          }
        }

        KeyFrameCount = FigCaptionDynamicStyleGetKeyFrameCount(cf);
        if (KeyFrameCount)
        {
          goto LABEL_29;
        }
      }

LABEL_43:
      CFDictionarySetValue(theDict, ValueAtIndex, Mutable);
      CFRelease(Mutable);
      ++v12;
      v4 = v41;
      if (v12 == Count)
      {
        goto LABEL_49;
      }
    }

    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_1_2();
    v16 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v29, 0xFFFFBAF0uLL, "<< FigCaptionSerializer >>", 0x59E, v30, v31, v32);
LABEL_52:
    v7 = v16;
  }

  else
  {
LABEL_49:
    Mutable = 0;
    v7 = 0;
    *v40 = theDict;
  }

LABEL_53:
  if (theArray)
  {
    CFRelease(theArray);
  }

  if (v46)
  {
    CFRelease(v46);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v47)
  {
    CFRelease(v47);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v7;
}

void fcs_initializeCaptionPropertyToPListableMappingDictionary()
{
  v0 = OUTLINED_FUNCTION_11_14();
  Mutable = CFDictionaryCreateMutable(v0, v1, v2, v3);
  if (Mutable)
  {
    v5 = OUTLINED_FUNCTION_11_14();
    v8 = CFDictionaryCreateMutable(v5, v6, v7, 0);
    if (v8)
    {
      v9 = v8;
      v10 = OUTLINED_FUNCTION_11_14();
      v13 = CFDictionaryCreateMutable(v10, v11, v12, 0);
      if (v13)
      {
        v14 = v13;
        v15 = OUTLINED_FUNCTION_11_14();
        v18 = CFDictionaryCreateMutable(v15, v16, v17, 0);
        if (v18)
        {
          v19 = v18;
          CFDictionaryAddValue(v9, @"Animation", fcs_setDictionaryFromPropertyCFType);
          OUTLINED_FUNCTION_15_13(v20, @"TextAlign");
          OUTLINED_FUNCTION_15_13(v21, @"MultiRowAlign");
          OUTLINED_FUNCTION_15_13(v22, @"RubyAlign");
          OUTLINED_FUNCTION_15_13(v23, @"RubyPosition");
          OUTLINED_FUNCTION_13_12(v24, @"CMCaptionRegionIdentifier");
          OUTLINED_FUNCTION_13_12(v25, @"CMCaptionRegionShowbackground");
          OUTLINED_FUNCTION_13_12(v26, @"CMCaptionRegionWritingMode");
          OUTLINED_FUNCTION_13_12(v27, @"CMCaptionRegionDisplayAlign");
          OUTLINED_FUNCTION_13_12(v28, @"CMCaptionRegionPadding");
          OUTLINED_FUNCTION_13_12(v29, @"CMCaptionRegionAnimation");
          OUTLINED_FUNCTION_14_13(v30, @"FontWeight");
          OUTLINED_FUNCTION_14_13(v31, @"FontStyle");
          OUTLINED_FUNCTION_14_13(v32, @"TextCombine");
          OUTLINED_FUNCTION_14_13(v33, @"TextShear");
          OUTLINED_FUNCTION_14_13(v34, @"EdgeStyle");
          OUTLINED_FUNCTION_15_13(v35, @"LineHeight");
          OUTLINED_FUNCTION_15_13(v36, @"LinePadding");
          OUTLINED_FUNCTION_15_13(v37, @"SourceInformation");
          OUTLINED_FUNCTION_13_12(v38, @"CMCaptionRegionCellResolution");
          OUTLINED_FUNCTION_13_12(v39, @"CMCaptionRegionPosition");
          OUTLINED_FUNCTION_13_12(v40, @"CMCaptionRegionWidth");
          OUTLINED_FUNCTION_13_12(v41, @"CMCaptionRegionHeight");
          OUTLINED_FUNCTION_13_12(v42, @"CMCaptionRegionDisplayAspectRatio");
          OUTLINED_FUNCTION_13_12(v43, @"CMCaptionRegionActiveArea");
          OUTLINED_FUNCTION_13_12(v44, @"CMCaptionRegionAnchor");
          OUTLINED_FUNCTION_14_13(v45, @"FontSize");
          OUTLINED_FUNCTION_14_13(v46, @"LineHeight");
          OUTLINED_FUNCTION_13_12(v47, @"CMCaptionRegionStereoDisparity");
          OUTLINED_FUNCTION_13_12(v48, @"CMCaptionRegionZIndex");
          OUTLINED_FUNCTION_13_12(v49, @"CMCaptionRegionOpacity");
          OUTLINED_FUNCTION_14_13(v50, @"Decoration");
          OUTLINED_FUNCTION_13_12(v51, @"CMCaptionRegionLuminanceGain");
          OUTLINED_FUNCTION_15_13(v52, @"FillLineGap");
          OUTLINED_FUNCTION_15_13(v53, @"Hidden");
          OUTLINED_FUNCTION_13_12(v54, @"CMCaptionRegionClipOverflow");
          OUTLINED_FUNCTION_13_12(v55, @"CMCaptionRegionInvisible");
          OUTLINED_FUNCTION_13_12(v56, @"CMCaptionRegionForcedDisplay");
          OUTLINED_FUNCTION_13_12(v57, @"CMCaptionRegionHidden");
          OUTLINED_FUNCTION_13_12(v58, @"CMCaptionRegionExplicitRegion");
          OUTLINED_FUNCTION_14_13(v59, @"Hidden");
          OUTLINED_FUNCTION_14_13(v60, @"Invisible");
          OUTLINED_FUNCTION_14_13(v61, @"ForcedDisplay");
          OUTLINED_FUNCTION_14_13(v62, @"PreventLineWrapping");
          OUTLINED_FUNCTION_14_13(v63, @"WritingDirection");
          CFDictionaryAddValue(v9, @"BackgroundColor", fcs_setDictionaryFromPropertyColor);
          OUTLINED_FUNCTION_13_12(v64, @"CMCaptionRegionBackgroundColor");
          OUTLINED_FUNCTION_14_13(v65, @"TextColor");
          OUTLINED_FUNCTION_14_13(v66, @"BackgroundColor");
          OUTLINED_FUNCTION_17_9(v67, @"FontFamily");
          OUTLINED_FUNCTION_17_9(v68, @"TextOutline");
          OUTLINED_FUNCTION_17_9(v69, @"TextEmphasis");
          OUTLINED_FUNCTION_17_9(v70, @"TextShadow");
          CFDictionaryAddValue(v9, @"RubyReserve", fcs_setDictionaryFromPropertyRubyReserve);
          CFDictionaryAddValue(v14, @"CMCaptionRegionAbstractPosition", fcs_setDictionaryFromPropertyCaptionPosition);
          CFDictionaryAddValue(Mutable, @"CaptionProperty", v9);
          CFDictionaryAddValue(Mutable, @"RegionProperty", v14);
          CFDictionaryAddValue(Mutable, @"StyleProperty", v19);
          CFRelease(v9);
          v9 = v14;
          v14 = v19;
        }

        CFRelease(v9);
        v9 = v14;
      }

      CFRelease(v9);
    }
  }

  sCaptionInfoToPListableMappingDictionary = Mutable;
}

size_t fcs_setDictionaryFromPropertyColor(__CFDictionary *a1, const void *a2, void *cf)
{
  if (a1)
  {
    if (a2)
    {
      if (cf)
      {
        v6 = CFGetTypeID(cf);
        if (v6 == CGColorGetTypeID())
        {
          v7 = FigCopyCGColorSRGBAsCFArray(cf);
          if (v7)
          {
            v8 = v7;
            CFDictionarySetValue(a1, a2, v7);
            CFRelease(v8);
          }

          return 0;
        }
      }

      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_0();
      v14 = 313;
    }

    else
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_0();
      v14 = 312;
    }
  }

  else
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v14 = 311;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v10, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", v14, v11, v12, v13);
}

void fcs_deserializeCaptionPropertyApplier(const void *a1, CFArrayRef theArray, uint64_t a3)
{
  cf = 0;
  var38[0] = 0;
  ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
  if (!CFEqual(a1, @"Region") && !CFEqual(a1, @"CMCaptionRegionContainerRegion"))
  {
    FigCFDictionaryGetDoubleIfPresent(ValueAtIndex, @"RelativeTime", var38, v7, v8, v9, v10, v11, cf, var38[0], var38[1], var38[2], var38[3], var38[4], var38[5], var38[6], var38[7], var38[8]);
    if (v17)
    {
      if (*var38 < 0.0)
      {
        Value = CFDictionaryGetValue(ValueAtIndex, @"PropertyValue");
        v13 = *(a3 + 8);
LABEL_5:
        CMBaseObject = FigCaptionDataGetCMBaseObject(v13);
        v16 = *(*(CMBaseObjectGetVTable(CMBaseObject) + 8) + 56);
        if (v16)
        {
          v12 = v16(CMBaseObject, a1, Value);
        }

        else
        {
          v12 = -12782;
        }

        goto LABEL_8;
      }

      OUTLINED_FUNCTION_6_27(&fcs_getPListableToCaptionInfoMappingDictionary_sInitializePListableToCaptionPropertyMappingOnce);
      v18 = CFDictionaryGetValue(sPListableToCaptionInfoMappingDictionary, @"CaptionProperty");
      if (v18)
      {
        v12 = fcs_createDynamicStyleFromPListable(a1, theArray, v18, &cf);
        if (!v12)
        {
          goto LABEL_4;
        }

        goto LABEL_8;
      }

      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_27_2();
      v23 = 4294949616;
      v24 = 1817;
    }

    else
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_27_2();
      v23 = 4294954513;
      v24 = 1806;
    }

    v12 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v19, v23, "<< FigCaptionSerializer >>", v24, v20, v21, v22);
    goto LABEL_8;
  }

  v12 = fcs_deserializeAndSetRegionProperty(ValueAtIndex, &cf);
  if (!v12)
  {
LABEL_4:
    v13 = *(a3 + 8);
    Value = cf;
    goto LABEL_5;
  }

LABEL_8:
  *a3 = v12;
  if (cf)
  {
    CFRelease(cf);
  }
}

void fcs_deserializeRegionPropertyApplier(const void *a1, const __CFArray *a2, uint64_t a3)
{
  cf = 0;
  v31[0] = 0;
  v29 = 0;
  OUTLINED_FUNCTION_6_27(&fcs_getPListableToCaptionInfoMappingDictionary_sInitializePListableToCaptionPropertyMappingOnce);
  Value = CFDictionaryGetValue(sPListableToCaptionInfoMappingDictionary, @"RegionProperty");
  if (!Value)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_27_2();
    v26 = 4294949616;
    v27 = 1735;
    goto LABEL_20;
  }

  v7 = Value;
  v8 = OUTLINED_FUNCTION_11_14();
  ValueAtIndex = CFArrayGetValueAtIndex(v8, v9);
  if (!CFEqual(a1, @"CMCaptionRegionContainerRegion"))
  {
    FigCFDictionaryGetDoubleIfPresent(ValueAtIndex, @"RelativeTime", v31, v11, v12, v13, v14, v15, v28, v29, cf, v31[0], v31[1], v31[2], v31[3], v31[4], v31[5], v31[6]);
    if (v19)
    {
      if (*v31 >= 0.0)
      {
        v16 = fcs_createDynamicStyleFromPListable(a1, a2, v7, &v29);
        if (v16)
        {
          goto LABEL_13;
        }

        v17 = *(a3 + 8);
        v18 = v29;
      }

      else
      {
        v18 = CFDictionaryGetValue(ValueAtIndex, @"PropertyValue");
        v17 = *(a3 + 8);
      }

      goto LABEL_10;
    }

    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_27_2();
    v26 = 4294954513;
    v27 = 1743;
LABEL_20:
    v16 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v22, v26, "<< FigCaptionSerializer >>", v27, v23, v24, v25);
    goto LABEL_13;
  }

  v16 = fcs_deserializeAndSetRegionProperty(ValueAtIndex, &cf);
  if (v16)
  {
    goto LABEL_13;
  }

  v17 = *(a3 + 8);
  v18 = cf;
LABEL_10:
  CMBaseObject = FigCaptionRegionGetCMBaseObject(v17);
  v21 = *(*(CMBaseObjectGetVTable(CMBaseObject) + 8) + 56);
  if (v21)
  {
    v16 = v21(CMBaseObject, a1, v18);
  }

  else
  {
    v16 = -12782;
  }

LABEL_13:
  *a3 = v16;
  if (cf)
  {
    CFRelease(cf);
  }

  if (v29)
  {
    CFRelease(v29);
  }
}

void fcs_initializePListableToCaptionPropertyMappingDictionary()
{
  v0 = OUTLINED_FUNCTION_11_14();
  Mutable = CFDictionaryCreateMutable(v0, v1, v2, v3);
  if (Mutable)
  {
    v5 = OUTLINED_FUNCTION_11_14();
    v8 = CFDictionaryCreateMutable(v5, v6, v7, 0);
    if (v8)
    {
      v9 = v8;
      v10 = OUTLINED_FUNCTION_11_14();
      v13 = CFDictionaryCreateMutable(v10, v11, v12, 0);
      if (v13)
      {
        v14 = v13;
        v15 = OUTLINED_FUNCTION_11_14();
        v18 = CFDictionaryCreateMutable(v15, v16, v17, 0);
        if (v18)
        {
          v19 = v18;
          CFDictionaryAddValue(v9, @"Animation", fcs_createDynamicStyleFromPListCFType);
          OUTLINED_FUNCTION_15_13(v20, @"TextAlign");
          OUTLINED_FUNCTION_15_13(v21, @"MultiRowAlign");
          OUTLINED_FUNCTION_15_13(v22, @"RubyAlign");
          OUTLINED_FUNCTION_15_13(v23, @"RubyPosition");
          OUTLINED_FUNCTION_13_12(v24, @"CMCaptionRegionIdentifier");
          OUTLINED_FUNCTION_13_12(v25, @"CMCaptionRegionShowbackground");
          OUTLINED_FUNCTION_13_12(v26, @"CMCaptionRegionWritingMode");
          OUTLINED_FUNCTION_13_12(v27, @"CMCaptionRegionDisplayAlign");
          OUTLINED_FUNCTION_13_12(v28, @"CMCaptionRegionPadding");
          OUTLINED_FUNCTION_13_12(v29, @"CMCaptionRegionAnimation");
          OUTLINED_FUNCTION_14_13(v30, @"FontWeight");
          OUTLINED_FUNCTION_14_13(v31, @"FontStyle");
          OUTLINED_FUNCTION_14_13(v32, @"Ruby");
          OUTLINED_FUNCTION_14_13(v33, @"TextCombine");
          OUTLINED_FUNCTION_14_13(v34, @"TextShear");
          OUTLINED_FUNCTION_14_13(v35, @"EdgeStyle");
          OUTLINED_FUNCTION_15_13(v36, @"LineHeight");
          OUTLINED_FUNCTION_15_13(v37, @"LinePadding");
          OUTLINED_FUNCTION_15_13(v38, @"SourceInformation");
          OUTLINED_FUNCTION_13_12(v39, @"CMCaptionRegionCellResolution");
          OUTLINED_FUNCTION_13_12(v40, @"CMCaptionRegionPosition");
          OUTLINED_FUNCTION_13_12(v41, @"CMCaptionRegionWidth");
          OUTLINED_FUNCTION_13_12(v42, @"CMCaptionRegionHeight");
          OUTLINED_FUNCTION_13_12(v43, @"CMCaptionRegionDisplayAspectRatio");
          OUTLINED_FUNCTION_13_12(v44, @"CMCaptionRegionActiveArea");
          OUTLINED_FUNCTION_13_12(v45, @"CMCaptionRegionAnchor");
          OUTLINED_FUNCTION_14_13(v46, @"FontSize");
          OUTLINED_FUNCTION_14_13(v47, @"LineHeight");
          OUTLINED_FUNCTION_13_12(v48, @"CMCaptionRegionStereoDisparity");
          OUTLINED_FUNCTION_13_12(v49, @"CMCaptionRegionZIndex");
          OUTLINED_FUNCTION_13_12(v50, @"CMCaptionRegionOpacity");
          OUTLINED_FUNCTION_14_13(v51, @"Decoration");
          OUTLINED_FUNCTION_13_12(v52, @"CMCaptionRegionLuminanceGain");
          OUTLINED_FUNCTION_15_13(v53, @"FillLineGap");
          OUTLINED_FUNCTION_15_13(v54, @"Hidden");
          OUTLINED_FUNCTION_13_12(v55, @"CMCaptionRegionClipOverflow");
          OUTLINED_FUNCTION_13_12(v56, @"CMCaptionRegionInvisible");
          OUTLINED_FUNCTION_13_12(v57, @"CMCaptionRegionForcedDisplay");
          OUTLINED_FUNCTION_13_12(v58, @"CMCaptionRegionHidden");
          OUTLINED_FUNCTION_13_12(v59, @"CMCaptionRegionExplicitRegion");
          OUTLINED_FUNCTION_14_13(v60, @"Hidden");
          OUTLINED_FUNCTION_14_13(v61, @"Invisible");
          OUTLINED_FUNCTION_14_13(v62, @"ForcedDisplay");
          OUTLINED_FUNCTION_14_13(v63, @"PreventLineWrapping");
          OUTLINED_FUNCTION_14_13(v64, @"WritingDirection");
          CFDictionaryAddValue(v9, @"BackgroundColor", fcs_createDynamicStyleFromPListColor);
          OUTLINED_FUNCTION_13_12(v65, @"CMCaptionRegionBackgroundColor");
          OUTLINED_FUNCTION_14_13(v66, @"TextColor");
          OUTLINED_FUNCTION_14_13(v67, @"BackgroundColor");
          OUTLINED_FUNCTION_17_9(v68, @"FontFamily");
          OUTLINED_FUNCTION_17_9(v69, @"TextOutline");
          OUTLINED_FUNCTION_17_9(v70, @"TextEmphasis");
          OUTLINED_FUNCTION_17_9(v71, @"TextShadow");
          CFDictionaryAddValue(v9, @"RubyReserve", fcs_createDynamicStyleFromPListRubyReserve);
          CFDictionaryAddValue(v14, @"CMCaptionRegionAbstractPosition", fcs_createDynamicStyleFromPListAbstractPosition);
          CFDictionaryAddValue(Mutable, @"CaptionProperty", v9);
          CFDictionaryAddValue(Mutable, @"RegionProperty", v14);
          CFDictionaryAddValue(Mutable, @"StyleProperty", v19);
          CFRelease(v9);
          v9 = v14;
          v14 = v19;
        }

        CFRelease(v9);
        v9 = v14;
      }

      CFRelease(v9);
    }
  }

  sPListableToCaptionInfoMappingDictionary = Mutable;
}

size_t fcs_createDynamicStyleFromPListColor(const void *a1, uint64_t *a2, double a3)
{
  if (!a1)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v13 = 866;
LABEL_11:
    v7 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", v13, v10, v11, v12);
    CGColorSRGBFromCFArray = 0;
    goto LABEL_8;
  }

  if (!a2)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v13 = 867;
    goto LABEL_11;
  }

  CGColorSRGBFromCFArray = FigCreateCGColorSRGBFromCFArray(a1);
  if (CGColorSRGBFromCFArray)
  {
    if (*a2)
    {
      Mutable = FigCaptionDynamicStyleAddKeyFrameValue(*a2, CGColorSRGBFromCFArray, a3);
    }

    else
    {
      Mutable = FigCaptionDynamicStyleCreateMutable(*MEMORY[0x1E695E480], CGColorSRGBFromCFArray, a2);
    }

    v7 = Mutable;
  }

  else
  {
    v7 = 0;
  }

LABEL_8:
  CGColorRelease(CGColorSRGBFromCFArray);
  return v7;
}

size_t fcs_createDynamicStyleFromPListFontFamily(const __CFArray *a1, uint64_t *a2, double a3)
{
  cf[0] = 0;
  if (!a1)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_27_2();
    v25 = 892;
LABEL_20:
    Mutable = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v21, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", v25, v22, v23, v24);
    goto LABEL_13;
  }

  if (!a2)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_27_2();
    v25 = 893;
    goto LABEL_20;
  }

  v6 = *MEMORY[0x1E695E480];
  Mutable = FigCaptionFontFamilyNameListCreateMutable(*MEMORY[0x1E695E480], cf);
  if (Mutable)
  {
LABEL_13:
    v19 = Mutable;
    goto LABEL_14;
  }

  Count = CFArrayGetCount(a1);
  if (!Count)
  {
LABEL_10:
    if (*a2)
    {
      Mutable = FigCaptionDynamicStyleAddKeyFrameValue(*a2, cf[0], a3);
    }

    else
    {
      Mutable = FigCaptionDynamicStyleCreateMutable(v6, cf[0], a2);
    }

    goto LABEL_13;
  }

  v9 = Count;
  v10 = 0;
  while (1)
  {
    HIDWORD(v26) = 0;
    ValueAtIndex = CFArrayGetValueAtIndex(a1, v10);
    FigCFDictionaryGetInt32IfPresent(ValueAtIndex, @"FontFamilyKind", &v26 + 4, v12, v13, v14, v15, v16, v26, cf[0], cf[1], cf[2], cf[3], cf[4], cf[5], cf[6], cf[7], cf[8]);
    if (!v17)
    {
      break;
    }

    Value = CFDictionaryGetValue(ValueAtIndex, @"FontFamilyName");
    if (!Value)
    {
      break;
    }

    Mutable = FigCaptionFontFamilyNameListAppend(cf[0], HIDWORD(v26), Value);
    if (Mutable)
    {
      goto LABEL_13;
    }

    if (v9 == ++v10)
    {
      goto LABEL_10;
    }
  }

  v19 = 0;
LABEL_14:
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  return v19;
}

size_t fcs_createDynamicStyleFromPListTextOutline(const __CFDictionary *a1, uint64_t *a2, double a3)
{
  cf = 0;
  if (!a1)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v22 = 931;
LABEL_14:
    v16 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v18, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", v22, v19, v20, v21);
    CGColorSRGBFromCFArray = 0;
    goto LABEL_9;
  }

  if (!a2)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v22 = 932;
    goto LABEL_14;
  }

  Value = CFDictionaryGetValue(a1, @"TextOutlineColor");
  v7 = CFDictionaryGetValue(a1, @"TextOutlineThickness");
  CGColorSRGBFromCFArray = FigCreateCGColorSRGBFromCFArray(Value);
  if (CGColorSRGBFromCFArray)
  {
    v9 = FigGeometryDimensionMakeFromDictionary(v7);
    v10 = *MEMORY[0x1E695E480];
    Mutable = FigCaptionTextOutlineCreate(*MEMORY[0x1E695E480], v9, v11, CGColorSRGBFromCFArray, &cf, v12, v13, v14);
    if (!Mutable)
    {
      if (*a2)
      {
        Mutable = FigCaptionDynamicStyleAddKeyFrameValue(*a2, cf, a3);
      }

      else
      {
        Mutable = FigCaptionDynamicStyleCreateMutable(v10, cf, a2);
      }
    }

    v16 = Mutable;
  }

  else
  {
    v16 = 0;
  }

LABEL_9:
  CGColorRelease(CGColorSRGBFromCFArray);
  if (cf)
  {
    CFRelease(cf);
  }

  return v16;
}

size_t fcs_createDynamicStyleFromPListTextEmphasis(CFDictionaryRef theDict, uint64_t *a2, double a3)
{
  CGColorSRGBFromCFArray = theDict;
  cf = 0;
  if (!theDict)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    Mutable = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v19, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", 0x3C7, v20, v21, v22);
LABEL_17:
    v15 = Mutable;
    goto LABEL_18;
  }

  if (a2)
  {
    Value = CFDictionaryGetValue(theDict, @"TextEmphasisStyle");
    valuePtr = 0;
    CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
    v7 = valuePtr;
    if (valuePtr == 2)
    {
      v9 = CFDictionaryGetValue(CGColorSRGBFromCFArray, @"TextEmphasisCustomMarkingStyle");
      v10 = CFDictionaryGetValue(CGColorSRGBFromCFArray, @"TextEmphasisPredefinedMark");
      v28 = 0;
      CFNumberGetValue(v9, kCFNumberSInt32Type, &v28);
      v11 = v28;
      v27 = 0;
      CFNumberGetValue(v10, kCFNumberSInt32Type, &v27);
      v8 = 0;
      v12 = v27;
    }

    else
    {
      if (valuePtr == 3)
      {
        v8 = CFDictionaryGetValue(CGColorSRGBFromCFArray, @"TextEmphasisCustomMark");
      }

      else
      {
        v8 = 0;
      }

      v12 = 0;
      v11 = 0;
    }

    v13 = CFDictionaryGetValue(CGColorSRGBFromCFArray, @"TextEmphasisColor");
    v14 = CFDictionaryGetValue(CGColorSRGBFromCFArray, @"TextEmphasisRubyPosition");
    if (v13)
    {
      CGColorSRGBFromCFArray = FigCreateCGColorSRGBFromCFArray(v13);
      if (!CGColorSRGBFromCFArray)
      {
        v15 = 0;
        goto LABEL_18;
      }
    }

    else
    {
      CGColorSRGBFromCFArray = 0;
    }

    v16 = *MEMORY[0x1E695E480];
    Mutable = FigCaptionTextEmphasisCreate(*MEMORY[0x1E695E480], v7, v11, v12, v8, CGColorSRGBFromCFArray, v14, &cf);
    if (!Mutable)
    {
      if (*a2)
      {
        Mutable = FigCaptionDynamicStyleAddKeyFrameValue(*a2, cf, a3);
      }

      else
      {
        Mutable = FigCaptionDynamicStyleCreateMutable(v16, cf, a2);
      }
    }

    goto LABEL_17;
  }

  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0_20();
  v15 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v23, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", 0x3C8, v24, v25, v26);
  CGColorSRGBFromCFArray = 0;
LABEL_18:
  CGColorRelease(CGColorSRGBFromCFArray);
  if (cf)
  {
    CFRelease(cf);
  }

  return v15;
}

size_t fcs_createDynamicStyleFromPListTextShadow(const void *a1, uint64_t *a2, double a3)
{
  v55 = 0;
  v56 = 0;
  if (!a1)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v50 = 1043;
LABEL_48:
    v34 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v46, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", v50, v47, v48, v49);
    Mutable = 0;
LABEL_45:
    CGColorSRGBFromCFArray = 0;
    goto LABEL_31;
  }

  if (!a2)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v50 = 1044;
    goto LABEL_48;
  }

  v53 = CFGetAllocator(a1);
  Value = CFDictionaryGetValue(a1, @"TextShadowList");
  v51 = a2;
  if (Value)
  {
    v11 = Value;
    if (CFArrayGetCount(Value) >= 1)
    {
      CGColorSRGBFromCFArray = 0;
      Mutable = 0;
      v14 = 0;
      while (1)
      {
        if (v55)
        {
          CFRelease(v55);
          v55 = 0;
        }

        if (CGColorSRGBFromCFArray)
        {
          CFRelease(CGColorSRGBFromCFArray);
        }

        ValueAtIndex = CFArrayGetValueAtIndex(v11, v14);
        CGColorSRGBFromCFArray = ValueAtIndex;
        if (!ValueAtIndex)
        {
          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_6_13();
          v33 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v36, 0xFFFFFFFFuLL, "<< FigCaptionSerializer >>", 0x422, v37, v38, v39);
          goto LABEL_30;
        }

        v16 = CFGetTypeID(ValueAtIndex);
        if (v16 != CFDictionaryGetTypeID())
        {
          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_6_13();
          v44 = 0xFFFFFFFFLL;
          v45 = 1059;
          goto LABEL_44;
        }

        v17 = CFDictionaryGetValue(CGColorSRGBFromCFArray, @"TextShadowHorizontalAxisOffset");
        v18 = CFDictionaryGetValue(CGColorSRGBFromCFArray, @"TextShadowVerticalAxisOffset");
        v19 = CFDictionaryGetValue(CGColorSRGBFromCFArray, @"TextShadowBlurRadius");
        CGColorSRGBFromCFArray = CFDictionaryGetValue(CGColorSRGBFromCFArray, @"TextShadowColor");
        if (!Mutable)
        {
          v20 = CFGetAllocator(a1);
          Mutable = CFArrayCreateMutable(v20, 0, MEMORY[0x1E695E9C0]);
          if (!Mutable)
          {
            break;
          }
        }

        theArray = Mutable;
        v22 = 0x100000000;
        v21 = 0;
        if (v17)
        {
          v21 = FigGeometryDimensionMakeFromDictionary(v17);
          v22 = v23;
        }

        v24 = v11;
        v26 = 0x100000000;
        v25 = 0;
        if (v18)
        {
          v25 = FigGeometryDimensionMakeFromDictionary(v18);
          v26 = v27;
        }

        v29 = 0x100000000;
        v28 = 0;
        if (v19)
        {
          v28 = FigGeometryDimensionMakeFromDictionary(v19);
          v29 = v30;
        }

        if (CGColorSRGBFromCFArray)
        {
          CGColorSRGBFromCFArray = FigCreateCGColorSRGBFromCFArray(CGColorSRGBFromCFArray);
          if (!CGColorSRGBFromCFArray)
          {
            v34 = 0;
            goto LABEL_42;
          }
        }

        v31 = FigCaptionTextShadowCreate(v53, v21, v22, v25, v26, v28, v29, CGColorSRGBFromCFArray, &v55);
        if (v31)
        {
          v34 = v31;
LABEL_42:
          Mutable = theArray;
          goto LABEL_31;
        }

        Mutable = theArray;
        CFArrayAppendValue(theArray, v55);
        ++v14;
        v11 = v24;
        if (v14 >= CFArrayGetCount(v24))
        {
          goto LABEL_26;
        }
      }

      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_6_13();
      v44 = 4294949616;
      v45 = 1071;
LABEL_44:
      v34 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v40, v44, "<< FigCaptionSerializer >>", v45, v41, v42, v43);
      goto LABEL_45;
    }
  }

  Mutable = 0;
  CGColorSRGBFromCFArray = 0;
LABEL_26:
  v32 = *MEMORY[0x1E695E480];
  v33 = FigCaptionTextShadowListCreate(*MEMORY[0x1E695E480], Mutable, &v56, v6, v7, v8, v9, v10);
  if (!v33)
  {
    if (*v51)
    {
      v33 = FigCaptionDynamicStyleAddKeyFrameValue(*v51, v56, a3);
    }

    else
    {
      v33 = FigCaptionDynamicStyleCreateMutable(v32, v56, v51);
    }
  }

LABEL_30:
  v34 = v33;
LABEL_31:
  CGColorRelease(CGColorSRGBFromCFArray);
  if (v55)
  {
    CFRelease(v55);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v56)
  {
    CFRelease(v56);
  }

  return v34;
}

size_t fcs_createDynamicStyleFromPListRubyReserve(const __CFDictionary *a1, uint64_t *a2, double a3)
{
  cf = 0;
  if (!a1)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    v22 = 1134;
LABEL_15:
    Mutable = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v18, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", v22, v19, v20, v21);
    goto LABEL_10;
  }

  if (!a2)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    v22 = 1135;
    goto LABEL_15;
  }

  Value = CFDictionaryGetValue(a1, @"RubyReserveRubyPosition");
  v7 = CFDictionaryGetValue(a1, @"RubyReserveLength");
  if (v7)
  {
    v11 = FigGeometryDimensionMakeFromDictionary(v7);
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v14 = *MEMORY[0x1E695E480];
  Mutable = FigCaptionRubyReserveCreate(*MEMORY[0x1E695E480], Value, v11, v13, &cf, v8, v9, v10);
  if (!Mutable)
  {
    if (*a2)
    {
      Mutable = FigCaptionDynamicStyleAddKeyFrameValue(*a2, cf, a3);
    }

    else
    {
      Mutable = FigCaptionDynamicStyleCreateMutable(v14, cf, a2);
    }
  }

LABEL_10:
  v16 = Mutable;
  if (cf)
  {
    CFRelease(cf);
  }

  return v16;
}

size_t fcs_createDynamicStyleFromPListAbstractPosition(const __CFDictionary *a1, uint64_t *a2, double a3)
{
  cf = 0;
  if (!a1)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_27_2();
    v25 = 1173;
LABEL_21:
    Mutable = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v21, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", v25, v22, v23, v24);
    goto LABEL_16;
  }

  if (!a2)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_27_2();
    v25 = 1174;
    goto LABEL_21;
  }

  Value = CFDictionaryGetValue(a1, @"HorizontalEdge");
  v7 = CFDictionaryGetValue(a1, @"VerticalEdge");
  v8 = CFDictionaryGetValue(a1, @"HorizontalOffset");
  v9 = CFDictionaryGetValue(a1, @"VerticalOffset");
  if (Value)
  {
    CaptionPositionEdgeReferenceForEdgeReferenceSerializedValue = fcs_getCaptionPositionEdgeReferenceForEdgeReferenceSerializedValue(Value);
  }

  else
  {
    CaptionPositionEdgeReferenceForEdgeReferenceSerializedValue = 0;
  }

  v11 = 0;
  v12 = 0;
  if (v7)
  {
    v7 = fcs_getCaptionPositionEdgeReferenceForEdgeReferenceSerializedValue(v7);
  }

  v13 = 0;
  v14 = 0;
  if (v8)
  {
    v14 = FigGeometryDimensionMakeFromDictionary(v8);
    v13 = v15;
  }

  if (v9)
  {
    v11 = FigGeometryDimensionMakeFromDictionary(v9);
    v12 = v16;
  }

  v17 = *MEMORY[0x1E695E480];
  Mutable = FigCaptionPositionCreate(*MEMORY[0x1E695E480], CaptionPositionEdgeReferenceForEdgeReferenceSerializedValue, v14, v13, v7, v11, v12, &cf);
  if (!Mutable)
  {
    if (*a2)
    {
      Mutable = FigCaptionDynamicStyleAddKeyFrameValue(*a2, cf, a3);
    }

    else
    {
      Mutable = FigCaptionDynamicStyleCreateMutable(v17, cf, a2);
    }
  }

LABEL_16:
  v19 = Mutable;
  if (cf)
  {
    CFRelease(cf);
  }

  return v19;
}

size_t FigCaptionSerializerCreate_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAF0uLL, "<< FigCaptionSerializer >>", 0x834, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigCaptionSerializerCreate_cold_2()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFCE0EuLL, "<< FigCaptionSerializer >>", 0x82F, v1, v2, v3);
}

size_t FigCaptionSerializerCreate_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", 0x82C, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigCaptionSerializerCopyProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", 0x854, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigCaptionSerializerCopyProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", 0x84F, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigCaptionSerializerCopyProperty_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", 0x84E, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigCaptionSerializerCopyProperty_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", 0x84D, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigCaptionSerializerSetProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", 0x86E, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigCaptionSerializerSetProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", 0x869, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigCaptionSerializerSetProperty_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", 0x868, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigCaptionSerializerSetProperty_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", 0x867, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t fcs_deserializeAndCreateFigCaptionData_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", 0x75B, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t fcs_deserializeAndCreateFigCaptionData_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE11uLL, "<< FigCaptionSerializer >>", 0x76E, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t fcs_deserializeAndCreateFigCaptionData_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE11uLL, "<< FigCaptionSerializer >>", 0x767, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t fcs_deserializeAndCreateFigCaptionData_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE11uLL, "<< FigCaptionSerializer >>", 0x75F, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t fcs_deserializeAndCreateFigCaptionData_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", 0x756, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t fcs_deserializeAndCreateFigCaptionData_cold_6(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", 0x755, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t fcs_copyCaptionStyleAsDictionary_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE11uLL, "<< FigCaptionSerializer >>", 0x56B, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t fcs_copyCaptionStyleAsDictionary_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAF0uLL, "<< FigCaptionSerializer >>", 0x566, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t fcs_copyCaptionStyleAsDictionary_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", 0x563, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t fcs_copyCaptionStyleAsDictionary_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", 0x562, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t fcs_copyCaptionStyleAsDictionary_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", 0x561, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t fcs_copyCaptionStyleAsDictionary_cold_6(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", 0x560, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t fcs_setDictionaryFromPropertyCFType_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", 0x12A, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t fcs_setDictionaryFromPropertyCFType_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", 0x129, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t fcs_setDictionaryFromPropertyCFType_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", 0x128, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t fcs_setDictionaryFromPropertyFontFamily_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAF0uLL, "<< FigCaptionSerializer >>", 0x15A, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t fcs_setDictionaryFromPropertyFontFamily_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAF0uLL, "<< FigCaptionSerializer >>", 0x151, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t fcs_setDictionaryFromPropertyFontFamily_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", 0x14E, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t fcs_setDictionaryFromPropertyFontFamily_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", 0x14D, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t fcs_setDictionaryFromPropertyFontFamily_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", 0x14C, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t fcs_setDictionaryFromPropertyTextOutline_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAF0uLL, "<< FigCaptionSerializer >>", 0x176, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t fcs_setDictionaryFromPropertyTextOutline_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", 0x173, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t fcs_setDictionaryFromPropertyTextOutline_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", 0x172, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t fcs_setDictionaryFromPropertyTextOutline_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", 0x171, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t fcs_setDictionaryFromPropertyTextEmphasis_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAF0uLL, "<< FigCaptionSerializer >>", 0x196, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t fcs_setDictionaryFromPropertyTextEmphasis_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAF0uLL, "<< FigCaptionSerializer >>", 0x199, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t fcs_setDictionaryFromPropertyTextEmphasis_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", 0x195, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t fcs_setDictionaryFromPropertyTextEmphasis_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", 0x194, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t fcs_setDictionaryFromPropertyTextEmphasis_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", 0x193, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t fcs_setDictionaryFromPropertyTextShadow_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", 0x1F2, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t fcs_setDictionaryFromPropertyTextShadow_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAF0uLL, "<< FigCaptionSerializer >>", 0x226, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t fcs_setDictionaryFromPropertyTextShadow_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAF0uLL, "<< FigCaptionSerializer >>", 0x206, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t fcs_setDictionaryFromPropertyTextShadow_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFFFFFuLL, "<< FigCaptionSerializer >>", 0x203, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t fcs_setDictionaryFromPropertyTextShadow_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAF0uLL, "<< FigCaptionSerializer >>", 0x1F5, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t fcs_setDictionaryFromPropertyTextShadow_cold_6(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", 0x1F1, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t fcs_setDictionaryFromPropertyTextShadow_cold_7(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", 0x1F0, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t fcs_setDictionaryFromPropertyTextShadow_cold_8(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", 0x1EF, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t fcs_setDictionaryFromPropertyRubyReserve_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAF0uLL, "<< FigCaptionSerializer >>", 0x245, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t fcs_setDictionaryFromPropertyRubyReserve_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAF0uLL, "<< FigCaptionSerializer >>", 0x250, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t fcs_setDictionaryFromPropertyRubyReserve_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAF0uLL, "<< FigCaptionSerializer >>", 0x248, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t fcs_setDictionaryFromPropertyRubyReserve_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", 0x244, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t fcs_setDictionaryFromPropertyRubyReserve_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", 0x243, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t fcs_setDictionaryFromPropertyRubyReserve_cold_6(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", 0x242, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t fcs_setDictionaryFromPropertyCaptionPosition_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAF0uLL, "<< FigCaptionSerializer >>", 0x29D, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t fcs_setDictionaryFromPropertyCaptionPosition_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAF0uLL, "<< FigCaptionSerializer >>", 0x2B4, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t fcs_setDictionaryFromPropertyCaptionPosition_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAF0uLL, "<< FigCaptionSerializer >>", 0x2AF, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t fcs_setDictionaryFromPropertyCaptionPosition_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAF0uLL, "<< FigCaptionSerializer >>", 0x2A0, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t fcs_setDictionaryFromPropertyCaptionPosition_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", 0x29C, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t fcs_setDictionaryFromPropertyCaptionPosition_cold_6(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", 0x29B, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t fcs_setDictionaryFromPropertyCaptionPosition_cold_7(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", 0x29A, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t fcs_deserializeCaptionStyleApplier_cold_1()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", 0x11A, v1, v2, v3);
}

size_t fcs_deserializeCaptionStyleApplier_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAF0uLL, "<< FigCaptionSerializer >>", 0x742, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t fcs_deserializeAndSetRegionProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", 0x6EB, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t fcs_deserializeAndSetRegionProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", 0x6EA, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t fcs_createDynamicStyleFromPListable_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE11uLL, "<< FigCaptionSerializer >>", 0x6A7, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t fcs_createDynamicStyleFromPListable_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE11uLL, "<< FigCaptionSerializer >>", 0x6A5, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t fcs_createDynamicStyleFromPListable_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", 0x699, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t fcs_createDynamicStyleFromPListable_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", 0x698, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t fcs_createDynamicStyleFromPListable_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", 0x697, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t fcs_createDynamicStyleFromPListable_cold_6(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", 0x696, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t fcs_createDynamicStyleFromPListable_cold_7(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE11uLL, "<< FigCaptionSerializer >>", 0x6A0, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t fcs_createDynamicStyleFromPListCFType_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", 0x34F, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t fcs_createDynamicStyleFromPListCFType_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAEFuLL, "<< FigCaptionSerializer >>", 0x34E, v3, v4, v5);
  *a1 = result;
  return result;
}

uint64_t cryptorServer_HandleRemoteSyncMessage(_xpc_connection_s *a1, void *a2, void *a3)
{
  cf[16] = *MEMORY[0x1E69E9840];
  LODWORD(v182) = 0;
  OpCode = FigXPCMessageGetOpCode(a2, &v182);
  if (OpCode)
  {
    return OpCode;
  }

  if (v182 == 1684632432)
  {
    uint64 = xpc_dictionary_get_uint64(a2, ".objectID");
    if (!uint64)
    {
      return 4294949726;
    }

    v18 = uint64;
    if (dword_1EAF1CF28)
    {
      LODWORD(value) = 0;
      BYTE4(v184) = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CF20, 1, &value, &v184 + 4);
      v20 = value;
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, BYTE4(v184)))
      {
        v21 = v20;
      }

      else
      {
        v21 = v20 & 0xFFFFFFFE;
      }

      if (v21)
      {
        *v185 = 136315138;
        *&v185[4] = "cryptorServer_Dispose";
        _os_log_send_and_compose_impl();
        LOBYTE(v20) = value;
      }

      OUTLINED_FUNCTION_4_29();
      fig_log_call_emit_and_clean_up_after_send_and_compose(v22, v23, v24, v25, v26, v20, 0, v27);
    }

    return FigXPCServerDisassociateObjectWithConnection(a1, v18);
  }

  if (v182 == 778268793)
  {
    cf[0] = 0;
    v44 = OUTLINED_FUNCTION_22_1();
    v47 = cryptorServer_CopyCryptorByObjectIDForConnection(v44, v45, v46);
    v48 = cf[0];
    if (!v47)
    {
      v49 = OUTLINED_FUNCTION_22_1();
      v47 = FigXPCHandleStdCopyPropertyMessage(v49, v50, a3);
    }

    v16 = v47;
    if (v48)
    {
      v51 = v48;
      goto LABEL_143;
    }
  }

  else
  {
    if (v182 != 779314548)
    {
      if (v182 == 1634431587)
      {
        OUTLINED_FUNCTION_2_36();
        v155 = OUTLINED_FUNCTION_22_1();
        v55 = cryptorServer_CopyCryptorByObjectIDForConnection(v155, v156, v157);
        if (v55)
        {
          goto LABEL_94;
        }

        v158 = xpc_dictionary_get_uint64(a2, "FromCryptorID");
        v55 = FigXPCServerLookupAndRetainAssociatedObject(a1, v158, v185, 0);
        if (v55)
        {
          goto LABEL_94;
        }

        if (*v185)
        {
          v161 = CFGetTypeID(*v185);
          if (v161 == FigCPECryptorGetTypeID())
          {
            v162 = cf[0];
            v163 = *v185;
            v164 = *(CMBaseObjectGetVTable(cf[0]) + 16);
            if (*v164 >= 6uLL)
            {
              v165 = v164[22];
              if (v165)
              {
                v55 = v165(v162, v163);
                goto LABEL_94;
              }
            }

            goto LABEL_122;
          }

          v175 = qword_1EAF1CF20;
          v176 = v4;
          v177 = 4294949726;
          v178 = 286;
        }

        else
        {
          v175 = qword_1EAF1CF20;
          v176 = v4;
          v177 = 4294951144;
          v178 = 285;
        }

        v55 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v175, v177, "<<< FigCPECryptorServer >>>", v178, v176, v159, v160);
        goto LABEL_94;
      }

      if (v182 != 1667981680)
      {
        if (v182 == 1952543603)
        {
          cf[0] = 0;
          LOBYTE(value) = 0;
          *v185 = 0;
          v33 = OUTLINED_FUNCTION_22_1();
          v36 = cryptorServer_CopyCryptorByObjectIDForConnection(v33, v34, v35);
          if (v36)
          {
            v16 = v36;
            v39 = cf[0];
            goto LABEL_105;
          }

          int64 = xpc_dictionary_get_int64(a2, "ExpectedState");
          v38 = xpc_dictionary_get_int64(a2, "NewState");
          v39 = cf[0];
          v40 = *(CMBaseObjectGetVTable(cf[0]) + 16);
          if (*v40 >= 6uLL)
          {
            v41 = v40[20];
            if (v41)
            {
              v16 = v41(v39, int64, v38, &value, v185);
              if (!v16)
              {
                xpc_dictionary_set_BOOL(a3, "WasSetOutFlag", value != 0);
                v42 = *v185;
                v43 = "KeyRequestIDOut";
LABEL_103:
                xpc_dictionary_set_uint64(a3, v43, v42);
              }

LABEL_105:
              if (!v39)
              {
                return v16;
              }

              v51 = v39;
              goto LABEL_143;
            }
          }

          goto LABEL_104;
        }

        if (v182 != 1668310630)
        {
          if (v182 != 1768125049)
          {
            if (v182 != 1853058420)
            {
              if (v182 != 1936092532)
              {
                if (v182 == 1936417136)
                {
                  v68 = OUTLINED_FUNCTION_0_75(0, v9, v10, v11, v12, v13, v14, v15, v179, v180, v181, v182, value, v184, *v185, *&v185[8], *&v185[16], cf[0]);
                  if (!v68)
                  {
                    v76 = xpc_dictionary_get_uint64(a2, "SessionID");
                    v77 = OUTLINED_FUNCTION_3_36();
                    v68 = FigXPCMessageCopyCFData(v77, v78, v79);
                    if (!v68)
                    {
                      v68 = FigXPCMessageCopyCFDictionary(a2, "KeyResponseOptionsDictionary", v185);
                      if (!v68)
                      {
                        v80 = value;
                        v81 = cf[0];
                        v82 = *v185;
                        v83 = *(CMBaseObjectGetVTable(value) + 16);
                        if (*v83 < 8uLL)
                        {
                          goto LABEL_82;
                        }

                        v84 = v83[28];
                        if (!v84)
                        {
                          goto LABEL_82;
                        }

                        v68 = v84(v80, v76, v81, v82);
                      }
                    }
                  }
                }

                else
                {
                  if (v182 != 1936418169)
                  {
                    switch(v182)
                    {
                      case 0x736B7272:
                        OUTLINED_FUNCTION_2_36();
                        v124 = OUTLINED_FUNCTION_22_1();
                        v55 = cryptorServer_CopyCryptorByObjectIDForConnection(v124, v125, v126);
                        if (v55)
                        {
                          goto LABEL_94;
                        }

                        v127 = OUTLINED_FUNCTION_3_36();
                        v55 = FigXPCMessageCopyCFError(v127, v128, v129);
                        if (v55)
                        {
                          goto LABEL_94;
                        }

                        v66 = *(*(OUTLINED_FUNCTION_5_30(v55, v130, v131, v132, v133, v134, v135, v136, v179, v180, v181, v182, value, v184, *v185) + 8) + 56);
                        if (v66)
                        {
                          v67 = kFigCPECryptorProperty_KeyRequestError;
                          goto LABEL_93;
                        }

                        break;
                      case 0x73736164:
                        OUTLINED_FUNCTION_2_36();
                        v85 = OUTLINED_FUNCTION_22_1();
                        v55 = cryptorServer_CopyCryptorByObjectIDForConnection(v85, v86, v87);
                        if (v55)
                        {
                          goto LABEL_94;
                        }

                        v88 = OUTLINED_FUNCTION_3_36();
                        v55 = FigXPCMessageCopyCFData(v88, v89, v90);
                        if (v55)
                        {
                          goto LABEL_94;
                        }

                        v66 = *(*(OUTLINED_FUNCTION_5_30(v55, v91, v92, v93, v94, v95, v96, v97, v179, v180, v181, v182, value, v184, *v185) + 8) + 56);
                        if (v66)
                        {
                          v67 = &kFigCPEBasicAESCryptorProperty_SubsampleAuxiliaryData;
                          goto LABEL_93;
                        }

                        break;
                      case 0x636B6579:
                        v68 = OUTLINED_FUNCTION_0_75(0, v9, v10, v11, v12, v13, v14, v15, v179, v180, v181, v182, value, v184, *v185, *&v185[8], *&v185[16], cf[0]);
                        if (v68)
                        {
                          goto LABEL_81;
                        }

                        v69 = OUTLINED_FUNCTION_3_36();
                        v68 = FigXPCMessageCopyCFDictionary(v69, v70, v71);
                        if (v68)
                        {
                          goto LABEL_81;
                        }

                        v72 = value;
                        v73 = cf[0];
                        v74 = *(CMBaseObjectGetVTable(value) + 16);
                        if (*v74 >= 4uLL)
                        {
                          v75 = v74[11];
                          if (v75)
                          {
                            v68 = v75(v72, v73, *MEMORY[0x1E695E480], v185);
                            if (!v68)
                            {
                              v68 = FigXPCMessageSetCFData(a3, "SPCBytes", *v185);
                            }

                            goto LABEL_81;
                          }
                        }

LABEL_82:
                        v16 = 4294954514;
LABEL_83:
                        if (cf[0])
                        {
                          CFRelease(cf[0]);
                        }

                        if (*v185)
                        {
                          CFRelease(*v185);
                        }

                        v51 = value;
                        if (!value)
                        {
                          return v16;
                        }

LABEL_143:
                        CFRelease(v51);
                        return v16;
                      default:
                        return 4294951138;
                    }

                    goto LABEL_122;
                  }

                  v68 = OUTLINED_FUNCTION_0_75(0, v9, v10, v11, v12, v13, v14, v15, v179, v180, v181, v182, value, v184, *v185, *&v185[8], *&v185[16], cf[0]);
                  if (!v68)
                  {
                    v68 = FigXPCMessageCopyCFData(a2, "KeyRequestResponse", v185);
                    if (!v68)
                    {
                      v116 = OUTLINED_FUNCTION_3_36();
                      v68 = FigXPCMessageCopyCFDictionary(v116, v117, v118);
                      if (!v68)
                      {
                        v119 = value;
                        v120 = *v185;
                        v121 = cf[0];
                        v122 = *(CMBaseObjectGetVTable(value) + 16);
                        if (*v122 < 4uLL)
                        {
                          goto LABEL_82;
                        }

                        v123 = v122[12];
                        if (!v123)
                        {
                          goto LABEL_82;
                        }

                        v68 = v123(v119, v120, v121);
                      }
                    }
                  }
                }

LABEL_81:
                v16 = v68;
                goto LABEL_83;
              }

              OUTLINED_FUNCTION_2_36();
              v52 = OUTLINED_FUNCTION_22_1();
              v55 = cryptorServer_CopyCryptorByObjectIDForConnection(v52, v53, v54);
              if (v55)
              {
                goto LABEL_94;
              }

              v56 = OUTLINED_FUNCTION_3_36();
              v55 = FigXPCMessageCopyFormatDescription(v56, v57, v58);
              if (v55)
              {
                goto LABEL_94;
              }

              v66 = *(*(OUTLINED_FUNCTION_5_30(v55, v59, v60, v61, v62, v63, v64, v65, v179, v180, v181, v182, value, v184, *v185) + 8) + 56);
              if (v66)
              {
                v67 = kFigCPEBasicAESCryptorProperty_VideoFormatDescription;
LABEL_93:
                v55 = v66(a3, *v67, v3);
LABEL_94:
                v16 = v55;
                goto LABEL_123;
              }

LABEL_122:
              v16 = 4294954514;
LABEL_123:
              v166 = cf[0];
              if (!cf[0])
              {
                goto LABEL_125;
              }

              goto LABEL_124;
            }

            OUTLINED_FUNCTION_2_36();
            LODWORD(value) = 0;
            HIDWORD(v184) = 0;
            v137 = OUTLINED_FUNCTION_22_1();
            v140 = cryptorServer_CopyCryptorByObjectIDForConnection(v137, v138, v139);
            v39 = cf[0];
            if (v140)
            {
              goto LABEL_148;
            }

            v141 = *(*(CMBaseObjectGetVTable(cf[0]) + 16) + 8);
            if (!v141)
            {
              goto LABEL_104;
            }

            v140 = v141(v39, v185);
            if (v140)
            {
              goto LABEL_148;
            }

            v142 = *(*(CMBaseObjectGetVTable(v39) + 16) + 16);
            if (!v142)
            {
              goto LABEL_104;
            }

            v140 = v142(v39, &value);
            if (v140)
            {
LABEL_148:
              v16 = v140;
              goto LABEL_105;
            }

            v143 = *(*(CMBaseObjectGetVTable(v39) + 16) + 280);
            if (v143)
            {
              v16 = v143(v39, &v184 + 4);
              if (!v16)
              {
                xpc_dictionary_set_uint64(a3, "NativeSession", *v185);
                xpc_dictionary_set_uint64(a3, "ExternalProtectionMethods", value);
                v42 = HIDWORD(v184);
                v43 = "CryptorType";
                goto LABEL_103;
              }

              goto LABEL_105;
            }

LABEL_104:
            v16 = 4294954514;
            goto LABEL_105;
          }

          value = 0;
          v109 = OUTLINED_FUNCTION_22_1();
          v112 = cryptorServer_CopyCryptorByObjectIDForConnection(v109, v110, v111);
          if (v112)
          {
            v16 = v112;
            v32 = value;
            if (!value)
            {
              return v16;
            }
          }

          else
          {
            if (dword_1EAF1CF28)
            {
              HIDWORD(v184) = 0;
              HIBYTE(v182) = 0;
              v113 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CF20, 1, &v184 + 1, &v182 + 7);
              v114 = HIDWORD(v184);
              if (os_log_type_enabled(v113, HIBYTE(v182)))
              {
                v115 = v114;
              }

              else
              {
                v115 = v114 & 0xFFFFFFFE;
              }

              if (v115)
              {
                *v185 = 136315394;
                *&v185[4] = "cryptorServer_Invalidate";
                *&v185[12] = 2048;
                *&v185[14] = value;
                _os_log_send_and_compose_impl();
                LOBYTE(v114) = BYTE4(v184);
              }

              OUTLINED_FUNCTION_4_29();
              fig_log_call_emit_and_clean_up_after_send_and_compose(v167, v168, v169, v170, v171, v114, 0, v172);
            }

            v32 = value;
            if (!value)
            {
              return 4294954516;
            }

            v173 = *(*(CMBaseObjectGetVTable(value) + 8) + 24);
            if (v173)
            {
              v16 = v173(v32);
            }

            else
            {
              v16 = 4294954514;
            }
          }

LABEL_142:
          v51 = v32;
          goto LABEL_143;
        }

        v144 = OUTLINED_FUNCTION_0_75(0, v9, v10, v11, v12, v13, v14, v15, v179, v180, v181, v182, value, v184, *v185, *&v185[8], *&v185[16], cf[0]);
        if (!v144)
        {
          v145 = OUTLINED_FUNCTION_3_36();
          v144 = FigXPCMessageCopyCFString(v145, v146, v147);
          if (!v144)
          {
            if (cf[0])
            {
              UInt32 = FigXPCMessageGetUInt32(a2, "Format");
              v151 = value;
              v152 = cf[0];
              v153 = *(CMBaseObjectGetVTable(value) + 16);
              if (*v153 < 6uLL || (v154 = v153[19]) == 0)
              {
                v16 = 4294954514;
LABEL_131:
                if (value)
                {
                  CFRelease(value);
                }

                if (*v185)
                {
                  CFRelease(*v185);
                }

                v51 = cf[0];
                if (cf[0])
                {
                  goto LABEL_143;
                }

                return v16;
              }

              v144 = v154(v151, v152, UInt32, *MEMORY[0x1E695E480], v185);
              if (!v144)
              {
                v144 = FigXPCMessageSetCFObject(a3, ".Value", *v185);
              }
            }

            else
            {
              v144 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF20, 0xFFFFCE10uLL, "<<< FigCPECryptorServer >>>", 0x1C2, v4, v148, v149);
            }
          }
        }

        v16 = v144;
        goto LABEL_131;
      }

      OUTLINED_FUNCTION_2_36();
      value = 0;
      v98 = OUTLINED_FUNCTION_22_1();
      v101 = cryptorServer_CopyCryptorByObjectIDForConnection(v98, v99, v100);
      if (v101 || (v102 = xpc_dictionary_get_uint64(a2, "SessionID"), v101 = FigXPCMessageCopyCFData(a2, "ReceiverContext", &value), v101))
      {
        v16 = v101;
      }

      else
      {
        v103 = *v185;
        v104 = value;
        v105 = *(CMBaseObjectGetVTable(*v185) + 16);
        if (*v105 >= 8uLL && (v106 = v105[27]) != 0)
        {
          v107 = v106(v103, v102, v104, cf);
          v108 = cf[0];
          if (!v107)
          {
            v16 = FigXPCMessageSetCFData(a3, "KeyRequestResponse", cf[0]);
            v108 = cf[0];
            if (!cf[0])
            {
              goto LABEL_128;
            }

            goto LABEL_67;
          }

          v16 = v107;
          if (cf[0])
          {
LABEL_67:
            CFRelease(v108);
          }
        }

        else
        {
          v16 = 4294954514;
        }
      }

LABEL_128:
      v166 = value;
      if (!value)
      {
LABEL_125:
        v51 = *v185;
        if (!*v185)
        {
          return v16;
        }

        goto LABEL_143;
      }

LABEL_124:
      CFRelease(v166);
      goto LABEL_125;
    }

    cf[0] = 0;
    v28 = OUTLINED_FUNCTION_22_1();
    v31 = cryptorServer_CopyCryptorByObjectIDForConnection(v28, v29, v30);
    v32 = cf[0];
    if (!v31)
    {
      v31 = FigXPCHandleStdSetPropertyMessage(cf[0], a2);
    }

    v16 = v31;
    if (v32)
    {
      goto LABEL_142;
    }
  }

  return v16;
}

size_t FigCPECryptorServerGetIDForCryptorByAssociatingWithClientConnection(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, CMBlockBufferRef *a8)
{
  if (!gFigCPECryptorServer)
  {
    return 4294949721;
  }

  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        return FigXPCServerAssociateCopiedObjectWithNeighborProcess(gFigCPECryptorServer, a2, a1, 0, 0, cryptorServer_NotificationFilter, a3);
      }

      v10 = qword_1EAF1CF20;
      v11 = 754;
    }

    else
    {
      v10 = qword_1EAF1CF20;
      v11 = 753;
    }
  }

  else
  {
    v10 = qword_1EAF1CF20;
    v11 = 752;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v10, 0xFFFFBB5EuLL, "<<< FigCPECryptorServer >>>", v11, v8, a3, a8);
}

size_t cryptorServer_CopyCryptorByObjectIDForConnection(_xpc_connection_s *a1, xpc_object_t xdict, CFTypeRef *a3)
{
  cf = 0;
  uint64 = xpc_dictionary_get_uint64(xdict, ".objectID");
  if (!uint64)
  {
    return 4294949726;
  }

  v7 = FigXPCServerLookupAndRetainAssociatedObject(a1, uint64, &cf, 0);
  if (!v7)
  {
    if (cf)
    {
      v10 = CFGetTypeID(cf);
      if (v10 == FigCPECryptorGetTypeID())
      {
        v11 = 0;
        *a3 = CFRetain(cf);
        goto LABEL_6;
      }

      v13 = qword_1EAF1CF20;
      v14 = v3;
      v15 = 4294949726;
      v16 = 178;
    }

    else
    {
      v13 = qword_1EAF1CF20;
      v14 = v3;
      v15 = 4294951144;
      v16 = 177;
    }

    v7 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v13, v15, "<<< FigCPECryptorServer >>>", v16, v14, v8, v9);
  }

  v11 = v7;
LABEL_6:
  if (cf)
  {
    CFRelease(cf);
  }

  return v11;
}

size_t FigCPECryptorServerGetIDForCryptorByAssociatingWithClientPID_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF20, 0xFFFFBB5EuLL, "<<< FigCPECryptorServer >>>", 0x2DF, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigCPECryptorServerGetIDForCryptorByAssociatingWithClientPID_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF20, 0xFFFFBB5EuLL, "<<< FigCPECryptorServer >>>", 0x2DE, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigCPECryptorServerGetIDForCryptorByAssociatingWithClientPID_cold_3(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF20, 0xFFFFBB5EuLL, "<<< FigCPECryptorServer >>>", 0x2DD, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigCPECryptorServerDisassociateCryptorWithClientPID_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF20, 0xFFFFBB5EuLL, "<<< FigCPECryptorServer >>>", 0x303, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigCPECryptorServerDisassociateCryptorWithClientPID_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF20, 0xFFFFBB5EuLL, "<<< FigCPECryptorServer >>>", 0x302, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigCPECryptorServerDisassociateCryptorWithClientConnection_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF20, 0xFFFFBB5EuLL, "<<< FigCPECryptorServer >>>", 0x314, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigCPECryptorServerDisassociateCryptorWithClientConnection_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF20, 0xFFFFBB5EuLL, "<<< FigCPECryptorServer >>>", 0x313, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigCPECryptorServerCopyCryptorForID_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF20, 0xFFFFCE14uLL, "<<< FigCPECryptorServer >>>", 0x325, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigCPECryptorServerCopyCryptorForID_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF20, 0xFFFFBB59uLL, "<<< FigCPECryptorServer >>>", 0x322, v8, a7, a8);
  *a1 = result;
  return result;
}

uint64_t fsbxpc_sandboxRegisterURLWithProcessCommon(CFURLRef anURL, int a2, int a3, unsigned int a4, int a5, uint64_t a6)
{
  v37 = 0;
  v38 = &v37;
  v39 = 0x2000000000;
  v40 = 0;
  if (anURL && a4 <= 1)
  {
    v12 = anURL;
    if (_MergedGlobals_58 != -1)
    {
      dispatch_once(&_MergedGlobals_58, &__block_literal_global_51);
    }

    v13 = CFURLCopyScheme(v12);
    v14 = v13;
    v15 = MEMORY[0x1E695E480];
    if (v13)
    {
      if (CFStringCompare(v13, @"file", 1uLL))
      {
LABEL_22:
        CFRelease(v14);
        goto LABEL_23;
      }

      v16 = 0;
    }

    else
    {
      v17 = *MEMORY[0x1E695E480];
      v18 = CFURLGetString(v12);
      v12 = CFURLCreateWithFileSystemPath(v17, v18, kCFURLPOSIXPathStyle, a2 == 0);
      v16 = v12;
      if (!v12)
      {
        emitter = fig_log_get_emitter("com.apple.coremedia", "");
        v29 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFBB9FuLL, "<<<< FIGSANDBOX >>>>", 0x272, v6, v27, v28);
        *(v38 + 6) = v29;
        goto LABEL_23;
      }
    }

    v30 = a6;
    v19 = CFURLCopyAbsoluteURL(v12);
    v20 = v19;
    if (a2 && a3)
    {
      PathComponent = CFURLCreateCopyDeletingLastPathComponent(*v15, v19);
      v22 = CFURLCopyFileSystemPath(PathComponent, kCFURLPOSIXPathStyle);
      v23 = 1;
    }

    else
    {
      v23 = a2 == 0;
      v22 = CFURLCopyFileSystemPath(v19, kCFURLPOSIXPathStyle);
      PathComponent = 0;
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __fsbxpc_sandboxRegisterURLWithProcessCommon_block_invoke;
    block[3] = &unk_1E74A51C8;
    block[4] = &v37;
    block[5] = v22;
    v34 = v23;
    v32 = a4;
    v33 = a5;
    v35 = a2;
    v36 = a3;
    block[6] = v30;
    dispatch_sync(qword_1ED4CCEC8, block);
    if (v16)
    {
      CFRelease(v16);
    }

    if (v20)
    {
      CFRelease(v20);
    }

    if (PathComponent)
    {
      CFRelease(PathComponent);
    }

    if (v22)
    {
      CFRelease(v22);
    }

    if (v14)
    {
      goto LABEL_22;
    }
  }

LABEL_23:
  v24 = *(v38 + 6);
  _Block_object_dispose(&v37, 8);
  return v24;
}

size_t __fsbxpc_sandboxRegisterURLWithProcessCommon_block_invoke_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBB9FuLL, "<<<< FIGSANDBOX >>>>", 0x1FD, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t __fsbxpc_sandboxRegisterURLWithProcessCommon_block_invoke_cold_2(size_t a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, a1, "<<<< FIGSANDBOX >>>>", 0x22F, v3, v4, v5);
}

size_t __fsbxpc_sandboxRegisterURLWithProcessCommon_block_invoke_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBB9EuLL, "<<<< FIGSANDBOX >>>>", 0x235, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t __fsbxpc_sandboxRegisterURLWithProcessCommon_block_invoke_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBB9EuLL, "<<<< FIGSANDBOX >>>>", 0x230, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t __fsbxpc_sandboxRegisterURLWithProcessCommon_block_invoke_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBB9DuLL, "<<<< FIGSANDBOX >>>>", 0x22C, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t __fsbxpc_sandboxRegisterURLWithProcessCommon_block_invoke_cold_6(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBB9CuLL, "<<<< FIGSANDBOX >>>>", 0x220, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t __fsbxpc_sandboxRegisterURLWithProcessCommon_block_invoke_cold_7(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBB9FuLL, "<<<< FIGSANDBOX >>>>", 0x1D9, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t __fsbxpc_sandboxRegisterURLWithProcessCommon_block_invoke_cold_8(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBB9EuLL, "<<<< FIGSANDBOX >>>>", 0x1D3, v3, v4, v5);
  *a1 = result;
  return result;
}

uint64_t CM8021ASClockEnsureTimeSyncServices()
{
  v39 = *MEMORY[0x1E69E9840];
  if (qword_1ED4CCF20 != -1)
  {
    dispatch_once_f(&qword_1ED4CCF20, 0, LoadTimeSyncFunctions_2);
  }

  FigSimpleMutexLock(qword_1ED4CCF28);
  if ((_MergedGlobals_59 & 1) == 0)
  {
    v1 = 0;
    *&v0 = 136315394;
    v30 = v0;
    while (1)
    {
      v2 = (*(qword_1ED4CD068 + 16))(1000);
      if (v2)
      {
        break;
      }

      if (dword_1EAF1CF48)
      {
        v10 = OUTLINED_FUNCTION_25_7(v2, v3, v4, v5, v6, v7, v8, v9, v28, v29, v30, *(&v30 + 1), v31, v32, SBYTE2(v32), SBYTE3(v32), SHIDWORD(v32));
        v11 = os_log_type_enabled(v10, BYTE3(v32));
        if (OUTLINED_FUNCTION_11_15(v11))
        {
          v34 = v30;
          v35 = "CM8021ASClockEnsureTimeSyncServices";
          v36 = 1024;
          v37 = v1;
          LODWORD(v29) = 18;
          v28 = &v34;
          OUTLINED_FUNCTION_6_3();
          v15 = _os_log_send_and_compose_impl();
        }

        else
        {
          v15 = 0;
        }

        OUTLINED_FUNCTION_27_8(qword_1EAF1CF40, 1u, 1, v15, v15 != &v38, v12, v13, v14);
      }

      if (++v1 == 9)
      {
        v16 = 4294951236;
        goto LABEL_18;
      }
    }

    _MergedGlobals_59 = 1;
    if (dword_1EAF1CF48)
    {
      v17 = OUTLINED_FUNCTION_25_7(v2, v3, v4, v5, v6, v7, v8, v9, v28, v29, v30, *(&v30 + 1), v31, v32, SBYTE2(v32), SBYTE3(v32), SHIDWORD(v32));
      v18 = os_log_type_enabled(v17, type);
      if (OUTLINED_FUNCTION_11_15(v18))
      {
        v34 = 136315138;
        v35 = "CM8021ASClockEnsureTimeSyncServices";
        OUTLINED_FUNCTION_8_19();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_27_8(v19, v20, v21, v22, v23, v24, v25, v26);
    }
  }

  v16 = 0;
LABEL_18:
  FigSimpleMutexUnlock(qword_1ED4CCF28);
  return v16;
}

void fig8021ASClock_LockStateDidChange(id a1, id *a2, int a3)
{
  v72 = *MEMORY[0x1E69E9840];
  v6 = FigCFWeakReferenceHolderCopyReferencedObject(a2);
  v14 = v6;
  if (v6)
  {
    if (v6[6] == a1)
    {
      if (dword_1EAF1CF48)
      {
        v15 = OUTLINED_FUNCTION_20_10(v6, v7, v8, v9, v10, v11, v12, v13, v51, v52, block, v54, v55, v56, v57, v58, v59, type, v61);
        v16 = v61;
        if (os_log_type_enabled(v15, type))
        {
          v17 = v61;
        }

        else
        {
          v17 = v61 & 0xFFFFFFFE;
        }

        if (v17)
        {
          v62 = 136315650;
          v63 = "fig8021ASClock_LockStateDidChange";
          v64 = 2048;
          v65 = v14;
          v66 = 1024;
          LODWORD(v67) = a3;
          OUTLINED_FUNCTION_5_12();
          OUTLINED_FUNCTION_6_3();
          _os_log_send_and_compose_impl();
          v16 = v61;
        }

        OUTLINED_FUNCTION_1_1();
        fig_log_call_emit_and_clean_up_after_send_and_compose(v18, v19, v20, v21, v22, v16, 0, v23);
      }

      FigSimpleMutexLock(*(v14 + 32));
      v24 = *(v14 + 56);
      v25 = (*(qword_1ED4CD068 + 80))(*(v14 + 48));
      *(v14 + 40) = a3;
      v26 = v25;
      if (a3 != 2)
      {
        v26 = **(qword_1ED4CD068 + 8);
      }

      *(v14 + 56) = v26;
      v27 = FigSimpleMutexUnlock(*(v14 + 32));
      if (dword_1EAF1CF48)
      {
        v35 = OUTLINED_FUNCTION_20_10(v27, v28, v29, v30, v31, v32, v33, v34, v51, v52, block, v54, v55, v56, v57, v58, v59, type, v61);
        v36 = v61;
        if (os_log_type_enabled(v35, type))
        {
          v37 = v61;
        }

        else
        {
          v37 = v61 & 0xFFFFFFFE;
        }

        if (v37)
        {
          v38 = *(v14 + 40);
          v62 = 136316162;
          if (v38 == 2)
          {
            v39 = "locked";
          }

          else
          {
            v39 = "not locked";
          }

          v63 = "fig8021ASClock_LockStateDidChange";
          v64 = 2048;
          v65 = v14;
          v66 = 2048;
          v67 = v24;
          v68 = 2080;
          v69 = v39;
          v70 = 2048;
          v71 = v25;
          OUTLINED_FUNCTION_5_12();
          OUTLINED_FUNCTION_6_3();
          _os_log_send_and_compose_impl();
          v36 = v61;
        }

        OUTLINED_FUNCTION_1_1();
        fig_log_call_emit_and_clean_up_after_send_and_compose(v40, v41, v42, v43, v44, v36, 0, v45);
      }

      if (a3 != 1)
      {
        FigReadWriteLockLockForRead(*(v14 + 16));
        global_queue = dispatch_get_global_queue(0, 0);
        DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
        FigDispatchAsyncPostNotification(global_queue, DefaultLocalCenter, @"CM8021ASClockLockStateDidChange", v14, 0, 0, v48, v49);
        FigReadWriteLockUnlockForRead(*(v14 + 16));
      }
    }

    else
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF40, 0xFFFFCE36uLL, "<<<< 8021ASClock >>>>", 0x2CF, v3, v12, v13);
    }
  }

  v50 = dispatch_get_global_queue(0, 0);
  block = MEMORY[0x1E69E9820];
  v54 = 0x40000000;
  v55 = __fig8021ASClock_LockStateDidChange_block_invoke;
  v56 = &__block_descriptor_tmp_121;
  v57 = v14;
  dispatch_async(v50, &block);
}

size_t CM8021ASClockAddIPv4PortAndGetIdentity(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  FigSimpleMutexLock(*(a1 + 64));
  v13 = CFGetTypeID(a1);
  if (qword_1ED4CCF10 != -1)
  {
    OUTLINED_FUNCTION_1_53();
    dispatch_once_f(v22, v23, v24);
  }

  if (v13 != qword_1ED4CCF18)
  {
    v16 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF40, 0xFFFFCE36uLL, "<<<< 8021ASClock >>>>", 0x32E, v5, v11, v12);
LABEL_8:
    v14 = v16;
    goto LABEL_9;
  }

  if (a3 != 2130706433)
  {
    OUTLINED_FUNCTION_21_11();
    v16 = (*(v15 + 120))(*(a1 + 48), a2, a3, a4, a5);
    if (!v16)
    {
      v17 = OUTLINED_FUNCTION_23_9();
      v16 = fig8021ASClock_addPortNumberForAddress(v17, v18, v19, v20);
    }

    goto LABEL_8;
  }

  v14 = 0;
LABEL_9:
  FigSimpleMutexUnlock(*(a1 + 64));
  return v14;
}

size_t fig8021ASClock_addPortNumberForAddress(uint64_t a1, UInt8 *a2, int a3, uint64_t a4)
{
  v7 = OUTLINED_FUNCTION_28_8(a2, a3, v14, 0);
  if (v7)
  {
    v12 = v7;
    UInt16 = 0;
    v11 = 0;
  }

  else
  {
    UInt16 = FigCFNumberCreateUInt16(*MEMORY[0x1E695E480], a4);
    if (UInt16)
    {
      v11 = (*(qword_1ED4CD068 + 192))(*(a1 + 48), a4);
      if (v11)
      {
        CFDictionarySetValue(*(a1 + 72), key, UInt16);
        CFDictionarySetValue(*(a1 + 80), UInt16, v11);
        v12 = 0;
      }

      else
      {
        v12 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF40, 0xFFFFCE35uLL, "<<<< 8021ASClock >>>>", 0x4AD, v4, v9, v10);
      }
    }

    else
    {
      v11 = 0;
      v12 = 4294954549;
    }
  }

  if (key)
  {
    CFRelease(key);
  }

  if (UInt16)
  {
    CFRelease(UInt16);
  }

  if (v12 && v11)
  {
    (*(qword_1ED4CD068 + 200))(v11);
  }

  return v12;
}

uint64_t CM8021ASClockRemoveIPv4Port(uint64_t a1, uint64_t a2, unsigned int a3)
{
  FigSimpleMutexLock(*(a1 + 64));
  v9 = CFGetTypeID(a1);
  if (qword_1ED4CCF10 != -1)
  {
    OUTLINED_FUNCTION_1_53();
    dispatch_once_f(v20, v21, v22);
  }

  if (v9 != qword_1ED4CCF18)
  {
    v15 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF40, 0xFFFFCE36uLL, "<<<< 8021ASClock >>>>", 0x356, v3, v7, v8);
LABEL_10:
    v10 = v15;
    goto LABEL_6;
  }

  if (a3 != 2130706433)
  {
    v12 = OUTLINED_FUNCTION_23_9();
    v15 = fig8021ASClock_addPortMetricsToMetricsDictForAddress(v12, v13, v14);
    if (!v15)
    {
      OUTLINED_FUNCTION_21_11();
      v15 = (*(v16 + 128))(*(a1 + 48), a2, a3);
      if (!v15)
      {
        v17 = OUTLINED_FUNCTION_23_9();
        v15 = fig8021ASClock_clearPortStateForAddress(v17, v18, v19);
      }
    }

    goto LABEL_10;
  }

  v10 = 0;
LABEL_6:
  FigSimpleMutexUnlock(*(a1 + 64));
  return v10;
}

size_t fig8021ASClock_addPortMetricsToMetricsDictForAddress(uint64_t a1, UInt8 *a2, int a3)
{
  v4 = OUTLINED_FUNCTION_28_8(a2, a3, 0, 0);
  if (v4)
  {
    v8 = v4;
  }

  else
  {
    Value = CFDictionaryGetValue(*(a1 + 72), key);
    if (Value)
    {
      v6 = Value;
      UInt16 = FigCFNumberGetUInt16(Value);
      v8 = fig8021ASClock_copyPortMetricsForPortIfValid(a1, UInt16, &cf);
      if (!v8)
      {
        FigCFDictionarySetValue(*(a1 + 104), v6, cf);
      }
    }

    else
    {
      v8 = 0;
    }
  }

  if (key)
  {
    CFRelease(key);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v8;
}

uint64_t fig8021ASClock_clearPortStateForAddress(CFDictionaryRef *a1, UInt8 *a2, int a3)
{
  v4 = OUTLINED_FUNCTION_28_8(a2, a3, v8, 0);
  if (!v4)
  {
    Value = CFDictionaryGetValue(a1[9], key);
    if (Value)
    {
      v6 = Value;
      CFSetRemoveValue(a1[11], Value);
      CFDictionaryRemoveValue(a1[10], v6);
      CFDictionaryRemoveValue(a1[9], key);
    }
  }

  if (key)
  {
    CFRelease(key);
  }

  return v4;
}

size_t CM8021ASClockAddIPv6PortAndGetIdentity(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25[0] = a3;
  v25[1] = a4;
  FigSimpleMutexLock(*(a1 + 64));
  v13 = CFGetTypeID(a1);
  if (qword_1ED4CCF10 != -1)
  {
    OUTLINED_FUNCTION_1_53();
    dispatch_once_f(v22, v23, v24);
  }

  if (v13 == qword_1ED4CCF18)
  {
    if (!memcmp(v25, MEMORY[0x1E69E99D0], 0x10uLL))
    {
      v20 = 0;
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_21_11();
    v15 = (*(v14 + 144))(*(a1 + 48), a2, v25, a5, a6);
    if (!v15)
    {
      v16 = OUTLINED_FUNCTION_22_9();
      v15 = fig8021ASClock_addPortNumberForAddress(v16, v17, v18, v19);
    }
  }

  else
  {
    v15 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF40, 0xFFFFCE36uLL, "<<<< 8021ASClock >>>>", 0x3A4, v6, v11, v12);
  }

  v20 = v15;
LABEL_9:
  FigSimpleMutexUnlock(*(a1 + 64));
  return v20;
}

uint64_t CM8021ASClockRemoveIPv6Port(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[0] = a3;
  v23[1] = a4;
  FigSimpleMutexLock(*(a1 + 64));
  v9 = CFGetTypeID(a1);
  if (qword_1ED4CCF10 != -1)
  {
    OUTLINED_FUNCTION_1_53();
    dispatch_once_f(v20, v21, v22);
  }

  if (v9 != qword_1ED4CCF18)
  {
    v15 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF40, 0xFFFFCE36uLL, "<<<< 8021ASClock >>>>", 0x3CC, v4, v7, v8);
LABEL_10:
    v10 = v15;
    goto LABEL_6;
  }

  if (memcmp(v23, MEMORY[0x1E69E99D0], 0x10uLL))
  {
    v12 = OUTLINED_FUNCTION_22_9();
    v15 = fig8021ASClock_addPortMetricsToMetricsDictForAddress(v12, v13, v14);
    if (!v15)
    {
      OUTLINED_FUNCTION_21_11();
      v15 = (*(v16 + 152))(*(a1 + 48), a2, v23);
      if (!v15)
      {
        v17 = OUTLINED_FUNCTION_22_9();
        v15 = fig8021ASClock_clearPortStateForAddress(v17, v18, v19);
      }
    }

    goto LABEL_10;
  }

  v10 = 0;
LABEL_6:
  FigSimpleMutexUnlock(*(a1 + 64));
  return v10;
}

size_t CM8021ASClockCopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, void *a4)
{
  v142[16] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_58;
  }

  v8 = CFGetTypeID(a1);
  if (qword_1ED4CCF10 != -1)
  {
    OUTLINED_FUNCTION_1_53();
    dispatch_once_f(v76, v77, v78);
  }

  if (v8 != qword_1ED4CCF18)
  {
LABEL_58:
    OUTLINED_FUNCTION_6_28();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v72, 0xFFFFCE36uLL, "<<<< 8021ASClock >>>>", 0x6E4, v73, v74, v75);
    return 0;
  }

  v9 = 4294951233;
  if (!a2 || !a4)
  {
    return v9;
  }

  if (!CFEqual(a2, @"CM8021ASClockDiagnosticString"))
  {
    if (!CFEqual(a2, @"CM8021ASClockMetrics"))
    {
      return 4294951232;
    }

    v15 = *(qword_1ED4CD068 + 256);
    if (!v15)
    {
      goto LABEL_18;
    }

    v132 = 0;
    v130 = 0u;
    v131 = 0u;
    v16 = v15(*(a1 + 48), &v130, 40, 0);
    if (v16)
    {
      OUTLINED_FUNCTION_6_28();
      v28 = 4294951233;
      v29 = 1841;
LABEL_17:
      v9 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v24, v28, "<<<< 8021ASClock >>>>", v29, v25, v26, v27);
      goto LABEL_18;
    }

    if (dword_1EAF1CF48)
    {
      v30 = OUTLINED_FUNCTION_24_9(v16, v17, v18, v19, v20, v21, v22, v23, v104, v105, v106, v107, v108, v109, v110, v112, cf, v116, value, v120, context, v122, v123, v124, v125, v126, v127, v128, type);
      v31 = v120;
      if (os_log_type_enabled(v30, type))
      {
        v32 = v120;
      }

      else
      {
        v32 = v120 & 0xFFFFFFFE;
      }

      if (v32)
      {
        *v133 = 136316162;
        *&v133[4] = "fig8021ASClock_copyClockMetricsForClock";
        v134 = 2048;
        v135 = v132;
        v136 = 2048;
        v137 = *(&v130 + 1);
        v138 = 2048;
        v139 = v131;
        v140 = 2048;
        v141 = *(&v131 + 1);
        LODWORD(v105) = 52;
        v104 = v133;
        OUTLINED_FUNCTION_6_3();
        _os_log_send_and_compose_impl();
        v31 = v120;
      }

      OUTLINED_FUNCTION_1_1();
      fig_log_call_emit_and_clean_up_after_send_and_compose(v33, v34, v35, v36, v37, v31, 0, v38);
    }

    v39 = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!Mutable)
    {
      OUTLINED_FUNCTION_6_28();
      v28 = 4294951231;
      v29 = 1848;
      goto LABEL_17;
    }

    v41 = Mutable;
    UInt64 = FigCFNumberCreateUInt64(v39, v132);
    if (!UInt64)
    {
      OUTLINED_FUNCTION_6_28();
      v9 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v83, 0xFFFFC141uLL, "<<<< 8021ASClock >>>>", 0x73C, v84, v85, v86);
      goto LABEL_65;
    }

    v43 = UInt64;
    v44 = FigCFNumberCreateUInt64(v39, *(&v130 + 1));
    cfa = v43;
    if (v44)
    {
      valuea = FigCFNumberCreateUInt64(v39, v131);
      if (valuea)
      {
        v117 = FigCFNumberCreateUInt64(v39, *(&v131 + 1));
        if (v117)
        {
          v45 = CFUUIDCreateString(v39, *(a1 + 112));
          if (v45)
          {
            v46 = v45;
            CFDictionarySetValue(v41, @"CoreAudioReanchors", v43);
            CFDictionarySetValue(v41, @"GMChangesCount", v44);
            CFDictionarySetValue(v41, @"TimeToChangeGM", valuea);
            CFDictionarySetValue(v41, @"TimeToLock", v117);
            v113 = v46;
            CFDictionarySetValue(v41, @"ClockUUID", v46);
            Copy = CFDictionaryCreateCopy(v39, v41);
            if (Copy)
            {
              v55 = Copy;
              if (dword_1EAF1CF48 >= 2)
              {
                v56 = OUTLINED_FUNCTION_24_9(Copy, v48, v49, v50, v51, v52, v53, v54, v104, v105, v106, v107, v108, v109, v44, v46, cfa, v117, valuea, v120, context, v122, v123, v124, v125, v126, v127, v128, type);
                v57 = v120;
                if (os_log_type_enabled(v56, type))
                {
                  v58 = v120;
                }

                else
                {
                  v58 = v120 & 0xFFFFFFFE;
                }

                if (v58)
                {
                  *v133 = 136315394;
                  *&v133[4] = "fig8021ASClock_copyClockMetricsForClock";
                  v134 = 2112;
                  v135 = v55;
                  OUTLINED_FUNCTION_6_3();
                  _os_log_send_and_compose_impl();
                  v57 = v120;
                }

                OUTLINED_FUNCTION_1_1();
                fig_log_call_emit_and_clean_up_after_send_and_compose(v59, v60, v61, v62, v63, v57, 0, v64);
                v44 = v111;
              }

              v65 = CFRetain(v55);
              CFRelease(v41);
              CFRelease(v55);
              CFRelease(cfa);
              v9 = 0;
              goto LABEL_43;
            }

            OUTLINED_FUNCTION_6_28();
            v9 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v100, 0xFFFFC13FuLL, "<<<< 8021ASClock >>>>", 0x753, v101, v102, v103);
          }

          else
          {
            OUTLINED_FUNCTION_6_28();
            v9 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v96, 0xFFFFC141uLL, "<<<< 8021ASClock >>>>", 0x748, v97, v98, v99);
            v113 = 0;
          }
        }

        else
        {
          OUTLINED_FUNCTION_6_28();
          v9 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v92, 0xFFFFC141uLL, "<<<< 8021ASClock >>>>", 0x745, v93, v94, v95);
          v113 = 0;
          v117 = 0;
        }

LABEL_71:
        CFRelease(v41);
        CFRelease(cfa);
        v65 = 0;
        v41 = 0;
        if (!v44)
        {
LABEL_44:
          if (valuea)
          {
            CFRelease(valuea);
          }

          if (v117)
          {
            CFRelease(v117);
          }

          if (v113)
          {
            CFRelease(v113);
          }

          if (v9 || !v41)
          {
            if (!v41)
            {
LABEL_18:
              if (v9)
              {
                return v9;
              }

              goto LABEL_54;
            }
          }

          else
          {
            UInt16 = FigCFNumberCreateUInt16(v39, 0);
            if (UInt16)
            {
              v67 = UInt16;
              CFDictionarySetValue(*(a1 + 104), UInt16, v41);
              v68 = *(a1 + 72);
              context = MEMORY[0x1E69E9820];
              v122 = 0x40000000;
              v123 = __fig8021ASClock_getMetricsForClockAndAllPorts_block_invoke;
              v124 = &__block_descriptor_tmp_155;
              v125 = a1;
              FigCFDictionaryApplyBlock(v68, &context);
              CFRelease(v41);
              CFRelease(v67);
LABEL_54:
              v69 = CFDictionaryCreateCopy(a3, *(a1 + 104));
              if (!v69)
              {
                OUTLINED_FUNCTION_6_28();
                return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v79, 0xFFFFC13FuLL, "<<<< 8021ASClock >>>>", 0x6F2, v80, v81, v82);
              }

              v70 = v69;
              CFDictionaryRemoveAllValues(*(a1 + 104));
              *a4 = CFRetain(v70);
              CFRelease(v70);
              return 0;
            }

            v9 = 0;
          }

LABEL_65:
          CFRelease(v41);
          goto LABEL_18;
        }

LABEL_43:
        CFRelease(v44);
        v41 = v65;
        goto LABEL_44;
      }

      OUTLINED_FUNCTION_6_28();
      v91 = 1858;
    }

    else
    {
      OUTLINED_FUNCTION_6_28();
      v91 = 1855;
    }

    v9 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v87, 0xFFFFC141uLL, "<<<< 8021ASClock >>>>", v91, v88, v89, v90);
    v113 = 0;
    v117 = 0;
    valuea = 0;
    goto LABEL_71;
  }

  v142[0] = 0;
  *v133 = 0;
  *&v130 = 0;
  v120 = -1;
  context = 0;
  v10 = CFStringCreateMutable(a3, 0);
  if (!v10)
  {
    return 4294951231;
  }

  v11 = v10;
  CFStringAppendFormat(v10, 0, @"CM8021ASClock diags: %p\n", a1);
  CFStringAppendFormat(v11, 0, @"CM8021ASClock diags:    timeSyncClock: %p\n", *(a1 + 48));
  v12 = (*(qword_1ED4CD068 + 88))();
  CFStringAppendFormat(v11, 0, @"CM8021ASClock diags:    ATSAC: %016llx\n", v12);
  v13 = *(qword_1ED4CD068 + 224);
  if (v13)
  {
    v14 = v13(*(a1 + 48), v142, v133, &v130, &context, &v120);
    CFStringAppendFormat(v11, 0, @"CM8021ASClock diags:     RateAndIdentity: err: %u; numerator: %llu; denominator: %llu; machAnchor: %llu; domainAnchor: %llu; gm: %llu\n", v14, v142[0], *v133, v130, context, v120);
  }

  else
  {
    CFStringAppend(v11, @"CM8021ASClock diags      err: gFTable.functions->pTimeSyncClockGetClockRateAnchorsAndGrandmasterIdentity is NULL\n");
  }

  v9 = 0;
  *a4 = v11;
  return v9;
}