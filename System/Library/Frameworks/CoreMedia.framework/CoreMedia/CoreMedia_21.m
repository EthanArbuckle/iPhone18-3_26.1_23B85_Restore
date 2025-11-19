void figSoundBridge_ReportParsingFailureMessage(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v6 = Mutable;
      v7 = CFStringCreateMutable(v4, 0);
      if (v7)
      {
        v8 = v7;
        CFStringAppendFormat(v7, 0, @" %s.", a2);
        FigCFDictionarySetInt64(v6, @"MessageType", 2, v9, v10, v11, v12, v13);
        CFDictionarySetValue(v6, @"DiagnosticInformation", v8);
        FigCFDictionarySetInt32(v6, @"AnalysisType", 1836019574, v14, v15, v16, v17, v18);
        FigAssetAnalysisReporterAddMessage(a1, v6);
        CFRelease(v8);
      }

      CFRelease(v6);
    }
  }
}

size_t figSoundBridge_ChannelLayoutFromFormatInfo()
{
  v0 = OUTLINED_FUNCTION_16_5();
  PropertyInfo = AudioToolbox_AudioFormatGetPropertyInfo(v0, v1, v2, v3);
  if (!PropertyInfo)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    PropertyInfo = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, 0xFFFFCE58uLL, "<<< SoundDescriptionBridge >>>", 0xC1F, v7, v8, v9);
  }

  v10 = PropertyInfo;
  free(0);
  return v10;
}

size_t figSoundBridge_AddISOChannelLayoutBoxToNativeISOAudioSampleEntryIfEligible(OpaqueCMBlockBuffer *a1, const __CFAllocator *a2, CMFormatDescriptionRef desc)
{
  v85 = 0;
  v86 = 0;
  v83 = 0;
  v84 = 0;
  dataLength = 0;
  v82 = 0;
  cf = 0;
  Extension = CMFormatDescriptionGetExtension(desc, @"SampleDescriptionExtensionAtoms");
  appended = Extension;
  if (Extension)
  {
    v8 = CFGetTypeID(Extension);
    if (v8 == CFDictionaryGetTypeID())
    {
      if (CFDictionaryGetValue(appended, @"chnl"))
      {
        goto LABEL_39;
      }
    }
  }

  StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(desc);
  if (StreamBasicDescription->mFormatID == 1819304813 && StreamBasicDescription->mChannelsPerFrame >= 2)
  {
    v17 = OUTLINED_FUNCTION_29_1(StreamBasicDescription, v10, v11, v12, v13, v14, v15, v16, v76, v78, *&v79[0]);
    if (v17)
    {
      v66 = v17;
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_0();
      v64 = v66;
      v65 = 6616;
      goto LABEL_53;
    }

    v20 = 1;
  }

  else
  {
    if (!appended)
    {
      goto LABEL_40;
    }

    v21 = CFGetTypeID(appended);
    if (v21 != CFDictionaryGetTypeID())
    {
      goto LABEL_39;
    }

    v22 = 0;
    while (1)
    {
      Value = CFDictionaryGetValue(appended, *(&off_1E74A02E0 + v22));
      if (Value)
      {
        break;
      }

      v22 += 8;
      if (v22 == 48)
      {
        goto LABEL_39;
      }
    }

    v20 = 0;
    if (OUTLINED_FUNCTION_29_1(Value, v24, v25, v26, v27, v28, v29, v30, v76, v78, *&v79[0]))
    {
      goto LABEL_39;
    }
  }

  if (!a1)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v64 = 4294954584;
    v65 = 6624;
LABEL_53:
    v31 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v60, v64, "<<< SoundDescriptionBridge >>>", v65, v61, v62, v63);
    goto LABEL_54;
  }

  v31 = OUTLINED_FUNCTION_13_5(a1, v18, &v82, v19, &v83);
  if (v31)
  {
LABEL_54:
    appended = v31;
    goto LABEL_40;
  }

  if (v82 <= 0x23)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v64 = 4294954584;
    v65 = 6627;
    goto LABEL_53;
  }

  v39 = v84;
  if (*(v86 + 8) != 1819304813 || v84 == 0)
  {
    CreationChannelLayoutSignificance = FigAudioFormatDescriptionGetCreationChannelLayoutSignificance(desc, v32, v33, v34, v35, v36, v37, v38);
    v39 = v84;
  }

  else
  {
    CreationChannelLayoutSignificance = 2;
  }

  memset(v79, 0, sizeof(v79));
  v42 = v85;
  if (!v39 || !v85)
  {
    v43 = *(v86 + 28);
    if (v43 == 1)
    {
      v44 = 6553601;
    }

    else
    {
      if (v43 != 2)
      {
        goto LABEL_31;
      }

      v44 = 6619138;
    }

    LODWORD(v79[0]) = v44;
    v39 = v79;
    v84 = v79;
    v42 = 32;
    v85 = 32;
    CreationChannelLayoutSignificance = 2;
  }

LABEL_31:
  if (!v39 || (v42 - 4) > 0xFFFFFFFB || ((ChannelCount = FigAudioChannelLayoutGetChannelCount(v39), ChannelCount == *(v86 + 28)) ? (v46 = CreationChannelLayoutSignificance == 3) : (v46 = 1), v46 || !CreationChannelLayoutSignificance))
  {
    if (!v20)
    {
LABEL_39:
      appended = 0;
      goto LABEL_40;
    }

    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v64 = 4294954586;
    v65 = 6671;
    goto LABEL_53;
  }

  PropertyInfo = AudioToolbox_AudioFormatGetPropertyInfo(1668047726, v85, v84, &dataLength + 4);
  if (PropertyInfo)
  {
    v67 = PropertyInfo;
    if (PropertyInfo == 1886547824)
    {
      goto LABEL_39;
    }

    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v64 = v67;
    v65 = 6685;
    goto LABEL_53;
  }

  v49 = MEMORY[0x19A8D7200](a2, HIDWORD(dataLength), 2847159300, 0);
  if (!v49)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v64 = 4294954583;
    v65 = 6693;
    goto LABEL_53;
  }

  v50 = v49;
  LODWORD(dataLength) = HIDWORD(dataLength);
  Property = AudioToolbox_AudioFormatGetProperty(1668047726, v85, v84, &dataLength, v49);
  if (Property)
  {
    v68 = Property;
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v73 = v68;
    v74 = 6697;
LABEL_60:
    appended = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v69, v73, "<<< SoundDescriptionBridge >>>", v74, v70, v71, v72);
    CFAllocatorDeallocate(a2, v50);
    goto LABEL_40;
  }

  v52 = OUTLINED_FUNCTION_11_6();
  v59 = CMBlockBufferCreateWithMemoryBlock(v52, v53, v54, v55, v56, v57, v58, 0, v77);
  if (v59)
  {
    v75 = v59;
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v73 = v75;
    v74 = 6700;
    goto LABEL_60;
  }

  appended = CMBlockBufferAppendBufferReference(a1, cf, 0, dataLength, 0);
  if (!appended)
  {
    *v83 += dataLength;
  }

LABEL_40:
  if (cf)
  {
    CFRelease(cf);
  }

  return appended;
}

Boolean CMDoesBigEndianSoundDescriptionRequireLegacyCBRSampleTableLayout(CMBlockBufferRef soundDescriptionBlockBuffer, CMSoundDescriptionFlavor flavor)
{
  destination = 0;
  if (CMBlockBufferCopyDataBytes(soundDescriptionBlockBuffer, 0x10uLL, 2uLL, &destination + 2))
  {
    return 0;
  }

  HIWORD(destination) = bswap32(HIWORD(destination)) >> 16;
  if (flavor)
  {
    if (!CFEqual(@"QuickTimeMovie", flavor) && !CFEqual(@"QuickTimeMovieV2", flavor) && (HIWORD(destination) != 1 || figSoundBridge_IsBlockBufferISOv1(soundDescriptionBlockBuffer, 1)))
    {
      return 0;
    }
  }

  if (CMBlockBufferCopyDataBytes(soundDescriptionBlockBuffer, 0x1CuLL, 2uLL, &destination))
  {
    return 1;
  }

  if (SHIWORD(destination) > 1)
  {
    return 0;
  }

  return destination != -257;
}

uint64_t figSoundBridge_IsBlockBufferISOv1(OpaqueCMBlockBuffer *a1, int a2)
{
  DataLength = CMBlockBufferGetDataLength(a1);
  OUTLINED_FUNCTION_10_7();
  if (!CMBlockBufferIsRangeContiguous(v4, v5, v6))
  {
    OUTLINED_FUNCTION_26();
    if (CMBlockBufferCreateContiguous(v7, v8, v9, v10, 0, 0, 0, v11))
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_26();
  if (CMBlockBufferGetDataPointer(v12, v13, v14, v15, v16))
  {
    return 0;
  }

  else
  {
    return figSoundBridge_IsDataISOv1(0, DataLength, a2);
  }
}

size_t figSoundBridge_TransformToCanonicalMagicCookieBBuf(const __CFAllocator *a1, uint64_t a2, uint64_t a3, OpaqueCMBlockBuffer **a4)
{
  v6 = a2;
  v45 = 0;
  cf = 0;
  v44 = 0;
  PropertyInfo = OUTLINED_FUNCTION_13_5(*a4, a2, &v44, a4, &v45);
  if (PropertyInfo)
  {
    return PropertyInfo;
  }

  v9 = 1836069990;
  v10 = v45;
  v11 = v44;
  if ((*a3 & 1) == 0 || (*(a3 + 12) - 1) >= 2)
  {
    if (figSoundBridge_isAACUsingESDSinMOV(v6))
    {
      v9 = 1836069990;
    }

    else
    {
      v9 = 1299148630;
    }
  }

  v48 = v6;
  v49 = v9;
  v50 = v10;
  v51 = v11;
  v47 = 0;
  v12 = OUTLINED_FUNCTION_20_5();
  PropertyInfo = AudioToolbox_AudioFormatGetPropertyInfo(v12, v13, v14, v15);
  if (PropertyInfo)
  {
    return PropertyInfo;
  }

  if (!v47)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_27_2();
    v36 = 4294954584;
    v37 = 3072;
LABEL_23:
    v30 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v32, v36, "<<< SoundDescriptionBridge >>>", v37, v33, v34, v35);
LABEL_25:
    if (v30)
    {
      return v30;
    }

    v17 = 0;
    goto LABEL_11;
  }

  v16 = MEMORY[0x19A8D7200](a1);
  if (!v16)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_27_2();
    v36 = 4294954583;
    v37 = 3075;
    goto LABEL_23;
  }

  v17 = v16;
  v18 = OUTLINED_FUNCTION_20_5();
  Property = AudioToolbox_AudioFormatGetProperty(v18, v19, v20, v21, v17);
  if (Property)
  {
    v38 = Property;
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_27_2();
    v30 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v39, v38, "<<< SoundDescriptionBridge >>>", 0xC06, v40, v41, v42);
    CFAllocatorDeallocate(a1, v17);
    goto LABEL_25;
  }

LABEL_11:
  v23 = OUTLINED_FUNCTION_11_6();
  v29 = CMBlockBufferCreateWithMemoryBlock(v23, v24, v25, v26, v27, v28, v25, 1u, v43);
  if (v29)
  {
    v30 = v29;
    if (cf)
    {
      CFRelease(cf);
    }

    if (v17)
    {
      CFAllocatorDeallocate(a1, v17);
    }
  }

  else
  {
    if (*a4)
    {
      CFRelease(*a4);
    }

    v30 = 0;
    *a4 = cf;
  }

  return v30;
}

size_t figSoundBridge_GetDecodeFormatIDForCodingName(int a1, uint64_t a2, _DWORD *a3)
{
  if ((*a2 & 1) != 0 && (v4 = *(a2 + 12) - 1, v4 <= 2))
  {
    v5 = dword_197165BD4[v4];
  }

  else
  {
    v5 = 1299148630;
  }

  v16[0] = v5;
  v16[1] = 4;
  v16[2] = a1;
  v14 = 0;
  v15 = 0;
  result = AudioToolbox_AudioFormatGetPropertyInfo(1768186734, 12, v16, &v14);
  if (!result)
  {
    if (v14 == 4)
    {
      result = AudioToolbox_AudioFormatGetProperty(1768186734, 12, v16, &v14, &v15);
      if (!result)
      {
        *a3 = v15;
        return result;
      }

      v13 = result;
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_0();
      v11 = v13;
      v12 = 2946;
    }

    else
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_0();
      v11 = 4294954584;
      v12 = 2943;
    }

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, v11, "<<< SoundDescriptionBridge >>>", v12, v8, v9, v10);
  }

  return result;
}

uint64_t figSoundBridge_CreateMagicCookieBBufFromALACBBuf(uint64_t a1, OpaqueCMBlockBuffer *a2, void *a3)
{
  OUTLINED_FUNCTION_17_5();
  HIDWORD(v50) = 1667329121;
  v6 = CMBlockBufferCreateEmpty(v5, 4u, 0, &blockBufferOut);
  if (v6 || (v6 = FigAtomWriterInitWithBlockBuffer(blockBufferOut, v51), v6))
  {
    v47 = v6;
  }

  else
  {
    OUTLINED_FUNCTION_28_3(v6, v7, v8, v9, v10, v11, v12, v13, v49, v50);
    FigAtomWriterAppendData(v51, &v50 + 4, 4);
    FigAtomWriterEndAtom(v51, v14, v15, v16, v17, v18, v19, v20);
    FigAtomWriterBeginAtom(v51, 1634492771, 0, v21, v22, v23, v24, v25);
    DataLength = CMBlockBufferGetDataLength(a2);
    FigAtomWriterAppendBlockBufferData(v51, a2, 8uLL, DataLength - 8);
    FigAtomWriterEndAtom(v51, v27, v28, v29, v30, v31, v32, v33);
    FigAtomWriterBeginAtom(v51, 0, 0, v34, v35, v36, v37, v38);
    FigAtomWriterEndAtom(v51, v39, v40, v41, v42, v43, v44, v45);
    v46 = blockBufferOut;
    if (blockBufferOut)
    {
      v46 = CFRetain(blockBufferOut);
    }

    v47 = 0;
    *a3 = v46;
  }

  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  return v47;
}

uint64_t figSoundBridge_CreateMagicCookieBBufFromAMRBBuf(uint64_t a1, unsigned int a2, OpaqueCMBlockBuffer *a3, void *a4)
{
  OUTLINED_FUNCTION_17_5();
  HIDWORD(v64) = 0;
  WORD1(v64) = 0;
  v8 = CMBlockBufferCreateEmpty(v7, 4u, 0, &blockBufferOut);
  if (v8 || (v8 = FigAtomWriterInitWithBlockBuffer(blockBufferOut, v65), v8))
  {
    v61 = v8;
  }

  else
  {
    OUTLINED_FUNCTION_28_3(v8, v9, v10, v11, v12, v13, v14, v15, v63, v64);
    HIDWORD(v64) = bswap32(a2);
    FigAtomWriterAppendData(v65, &v64 + 4, 4);
    FigAtomWriterEndAtom(v65, v16, v17, v18, v19, v20, v21, v22);
    FigAtomWriterBeginAtom(v65, 1701733473, 0, v23, v24, v25, v26, v27);
    FigAtomWriterAppendData(v65, &v64 + 2, 2);
    FigAtomWriterEndAtom(v65, v28, v29, v30, v31, v32, v33, v34);
    FigAtomWriterBeginAtom(v65, 1935764850, 0, v35, v36, v37, v38, v39);
    DataLength = CMBlockBufferGetDataLength(a3);
    FigAtomWriterAppendBlockBufferData(v65, a3, 0, DataLength);
    FigAtomWriterEndAtom(v65, v41, v42, v43, v44, v45, v46, v47);
    FigAtomWriterBeginAtom(v65, 0, 0, v48, v49, v50, v51, v52);
    FigAtomWriterEndAtom(v65, v53, v54, v55, v56, v57, v58, v59);
    v60 = blockBufferOut;
    if (blockBufferOut)
    {
      v60 = CFRetain(blockBufferOut);
    }

    v61 = 0;
    *a4 = v60;
  }

  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  return v61;
}

uint64_t figSoundBridge_GetMP4ASBDFromESDSDataBBuf(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v64 = *MEMORY[0x1E69E9840];
  dataLength = 0;
  v57 = 0u;
  v58 = 0u;
  v56 = 0u;
  blockBufferOut = 0;
  v54 = 0;
  v52 = 0;
  v53 = 0;
  v6 = OUTLINED_FUNCTION_13_5(*(a1 + 112), a2, &v53, a4, &v52);
  v7 = MEMORY[0x1E695E488];
  if (v6)
  {
    goto LABEL_61;
  }

  if (HIDWORD(v53))
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v6 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v46, 0xFFFFCE56uLL, "<<< SoundDescriptionBridge >>>", 0xABD, v47, v48, v49);
    goto LABEL_61;
  }

  *(&v58 + 1) = v52;
  LODWORD(dataLength) = v53;
  v54 = 56;
  if (AudioToolbox_AudioFormatGetProperty(1702061673, v53, v52, &v54, &v56))
  {
    v54 = 40;
    Property = AudioToolbox_AudioFormatGetProperty(1702064996, v53, v52, &v54, a2);
    if (Property)
    {
      goto LABEL_47;
    }

    goto LABEL_30;
  }

  v9 = v57;
  *a2 = v56;
  *(a2 + 16) = v9;
  *(a2 + 32) = v58;
  if (!dataLength || !*(&v58 + 1))
  {
    v13 = *(a1 + 104);
    if (v13)
    {
      v13 = CFRetain(v13);
    }

    blockBufferOut = v13;
    v14 = CFGetAllocator(v13);
    v6 = figSoundBridge_TransformToCanonicalMagicCookieBBuf(v14, DWORD2(v56), a1, &blockBufferOut);
    if (!v6)
    {
      OUTLINED_FUNCTION_9_11();
      if (v15)
      {
        *(a1 + 296) = 1;
      }

LABEL_21:
      v16 = blockBufferOut;
      if (blockBufferOut)
      {
        v17 = *(a1 + 264);
        *(a1 + 264) = blockBufferOut;
        CFRetain(v16);
        if (v17)
        {
          CFRelease(v17);
        }

        if (blockBufferOut)
        {
          CFRelease(blockBufferOut);
          blockBufferOut = 0;
        }

        if (*(a1 + 264))
        {
          __str[0] = 0;
          OUTLINED_FUNCTION_10_7();
          CMBlockBufferGetDataPointer(v18, v19, v20, v21, v22);
          *(a1 + 280) = __str[0];
        }

        if (DWORD2(v56) == 1987015266)
        {
          Property = 1718449215;
          goto LABEL_47;
        }
      }

LABEL_30:
      if (*(a2 + 8) != 1633772320)
      {
        goto LABEL_36;
      }

      v23 = *(a2 + 12);
      switch(v23)
      {
        case 30:
          v24 = 1633772403;
          break;
        case 23:
          v24 = 1633772396;
          break;
        case 29:
          v24 = 1633772400;
          break;
        case 5:
          v24 = 1633772392;
          break;
        default:
LABEL_36:
          Property = 0;
          goto LABEL_48;
      }

      size[0] = 0;
      memset(__str, 0, 40);
      __str[5] = v52;
      v63 = 0;
      LODWORD(__str[1]) = v24;
      v62 = v53;
      v25 = OUTLINED_FUNCTION_8_11();
      Property = AudioToolbox_AudioFormatGetPropertyInfo(v25, v26, v27, v28);
      if (Property || !size[0])
      {
        goto LABEL_46;
      }

      v11 = malloc_type_malloc(size[0], 0x100004064842E6AuLL);
      if (v11)
      {
        v29 = OUTLINED_FUNCTION_8_11();
        Property = AudioToolbox_AudioFormatGetProperty(v29, v30, v31, v32, v11);
        if (!Property)
        {
          v33 = &v11[48 * (size[0] / 0x30) - 48];
          v34 = *(v33 + 4);
          v35 = *(v33 + 1);
          *a2 = *v33;
          *(a2 + 16) = v35;
          *(a2 + 32) = v34;
        }

        free(v11);
LABEL_46:
        if (Property)
        {
LABEL_47:
          v51 = 0;
          v50 = 0;
          FigMP4Bridge_GetESDSObjectTypeAndCopyDecoderSpecificInfo(v52, v53, &v51, &v50, 0);
          v36 = v51;
          if (v51)
          {
            if (v50)
            {
              snprintf(size, 0x20uLL, ", audio object type %u", v50);
              v36 = v51;
            }

            else
            {
              LOBYTE(size[0]) = 0;
            }

            snprintf(__str, 0x80uLL, "Found stream descriptor for unsupported MPEG-4 object type 0x%X%s", v36, size);
            figSoundBridge_ReportParsingFailureMessage(*(a1 + 288), __str);
            fig_log_get_emitter("com.apple.coremedia", "");
            OUTLINED_FUNCTION_0();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v42, 0xFFFFCE56uLL, "<<< SoundDescriptionBridge >>>", 0xB47, v43, v44, v45);
          }
        }

LABEL_48:
        v11 = 0;
        goto LABEL_49;
      }

      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_0();
      v12 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v38, 0xFFFFCE57uLL, "<<< SoundDescriptionBridge >>>", 0xB25, v39, v40, v41);
      goto LABEL_55;
    }

LABEL_61:
    Property = v6;
    goto LABEL_48;
  }

  if (v53 <= dataLength || *(&v58 + 1) < v52 || &v52[v53 - *(&v58 + 1)] < dataLength)
  {
    goto LABEL_21;
  }

  v10 = *v7;
  v11 = MEMORY[0x19A8D7200](*v7);
  if (v11)
  {
    v12 = CMBlockBufferCopyDataBytes(*(a1 + 112), *(&v58 + 1) - v52, dataLength, v11);
    if (v12 || (v12 = CMBlockBufferCreateWithMemoryBlock(*MEMORY[0x1E695E480], v11, dataLength, v10, 0, 0, dataLength, 0, &blockBufferOut), v12))
    {
LABEL_55:
      Property = v12;
      goto LABEL_49;
    }

    goto LABEL_21;
  }

  Property = 0;
LABEL_49:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  if (v11)
  {
    CFAllocatorDeallocate(*v7, v11);
  }

  return Property;
}

uint64_t figSoundBridge_GetASBDFromDAC3BBuf(OpaqueCMBlockBuffer *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = 0;
  v17 = 0;
  result = OUTLINED_FUNCTION_13_5(a1, a2, &v16, a4, &v17);
  if (!result)
  {
    v12 = OUTLINED_FUNCTION_27_3(result, v5, v6, v7, v8, v9, v10, v11, v16, v17);
    return ParseAC3MP4Cookie(v12, v13, v14, v15);
  }

  return result;
}

uint64_t figSoundBridge_GetASBDFromDEC3BBuf(OpaqueCMBlockBuffer *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = 0;
  v17 = 0;
  result = OUTLINED_FUNCTION_13_5(a1, a2, &v16, a4, &v17);
  if (!result)
  {
    v12 = OUTLINED_FUNCTION_27_3(result, v5, v6, v7, v8, v9, v10, v11, v16, v17);
    return ParseEnhancedAC3MP4Cookie(v12, v13, v14, v15, 0);
  }

  return result;
}

uint64_t figSoundBridge_GetASBDFromAudioFormatWithCodecSpecificAtomBBuf(int a1, OpaqueCMBlockBuffer *a2, uint64_t a3, uint64_t a4)
{
  v11 = 0;
  v12 = 0;
  result = OUTLINED_FUNCTION_13_5(a2, a2, &v12, a4, &v11);
  if (!result)
  {
    *(a3 + 8) = a1;
    v7 = OUTLINED_FUNCTION_25_4();
    return AudioToolbox_AudioFormatGetProperty(v7, v8, v9, v10, a3);
  }

  return result;
}

uint64_t figSoundBridge_GetASBDFromALACBBuf(OpaqueCMBlockBuffer *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = 0;
  v11 = 0;
  result = OUTLINED_FUNCTION_13_5(a1, a2, &v11, a4, &v10);
  if (!result)
  {
    if (v11 < 0x24)
    {
      return 4294954582;
    }

    else
    {
      v6 = v10;
      *(a2 + 8) = 1634492771;
      *a2 = bswap32(*(v6 + 8));
      if ((((v6[17] - 16) >> 2) | ((v6[17] - 16) << 6)) > 4u)
      {
        v7 = 0;
      }

      else
      {
        v7 = dword_197165BE0[(((v6[17] - 16) >> 2) | ((v6[17] - 16) << 6))];
      }

      result = 0;
      v8 = v6[21];
      v9 = bswap32(*(v6 + 3));
      *(a2 + 12) = v7;
      *(a2 + 16) = 0;
      *(a2 + 20) = v9;
      *(a2 + 32) = 0;
      *(a2 + 28) = v8;
    }
  }

  return result;
}

size_t figSoundBridge_EncapsulatedMagicCookieFromCanonicalMagicCookie()
{
  v0 = OUTLINED_FUNCTION_21_5();
  result = AudioToolbox_AudioFormatGetPropertyInfo(v0, v1, v2, v3);
  if (!result)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, 0xFFFFCE58uLL, "<<< SoundDescriptionBridge >>>", 0xC46, v6, v7, v8);
  }

  return result;
}

BOOL figSoundBridge_AreAtomsWellFormed(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  memset(v17, 0, sizeof(v17));
  CFPreferenceNumberWithDefault = figSoundBridge_AllowZeroSizeTerminatorAtom_value;
  if (figSoundBridge_AllowZeroSizeTerminatorAtom_value == -1)
  {
    CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault(@"zero_size_terminator_atom", @"com.apple.coremedia", 1);
    figSoundBridge_AllowZeroSizeTerminatorAtom_value = CFPreferenceNumberWithDefault;
  }

  v9 = FigAtomStreamInitWithMemoryBlock(a1, a2, 0, CFPreferenceNumberWithDefault != 0, v17);
  v10 = 0;
  if (!v9)
  {
    while (1)
    {
      v16 = 0;
      v14 = 0;
      v15 = 0;
      if (FigAtomStreamGetCurrentAtomTypeAndDataLength(v17, &v16, &v15) || FigAtomStreamGetCurrentAtomGlobalOffset(v17, 0, &v14))
      {
        break;
      }

      if (!v16)
      {
        v13 = v14;
        if (!a3)
        {
          v13 = 0;
        }

        v10 += v13;
        result = 1;
        if (!a4)
        {
          return result;
        }

        goto LABEL_13;
      }

      v10 += v14;
      Atom = FigAtomStreamAdvanceToNextAtom(v17);
      if (Atom)
      {
        result = Atom == -12890;
        if (a4)
        {
          goto LABEL_13;
        }

        return result;
      }
    }
  }

  result = 0;
  if (a4)
  {
LABEL_13:
    *a4 = v10;
  }

  return result;
}

size_t figSoundBridge_CreateNativeISOAudioSampleEntryFromASBD_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<< SoundDescriptionBridge >>>", 0xBE0, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t figSoundBridge_CreateNativeISOAudioSampleEntryFromASBD_cold_2()
{
  OUTLINED_FUNCTION_22_4();
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v1, "<<< SoundDescriptionBridge >>>", 0xBE3, v3, v4, v5);
  *v0 = result;
  return result;
}

size_t figSoundBridge_CreateNativeISOAudioSampleEntryFromASBD_cold_3()
{
  OUTLINED_FUNCTION_22_4();
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v1, "<<< SoundDescriptionBridge >>>", 0x17E9, v3, v4, v5);
  *v0 = result;
  return result;
}

size_t figSoundBridge_CreateNativeISOAudioSampleEntryFromASBD_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE57uLL, "<<< SoundDescriptionBridge >>>", 0x17EC, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigAudioCodecTypeIsDecodable_cold_1(size_t a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, a1, "<<< SoundDescriptionBridge >>>", 0x1EFA, v3, v4, v5);
}

size_t FigAudioCodecTypeIsDecodable_cold_2(size_t a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, a1, "<<< SoundDescriptionBridge >>>", 0x1F01, v3, v4, v5);
}

size_t FigAudioCodecTypeIsDecodable_cold_3()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFCE59uLL, "<<< SoundDescriptionBridge >>>", 0x1EFE, v1, v2, v3);
}

size_t FigAudioCodecTypeIsDecodable_cold_4()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFFFFFuLL, "<<< SoundDescriptionBridge >>>", 0x1EFB, v1, v2, v3);
}

size_t figSoundBridge_GetDecodeFormatIDForUnknownExtensionType_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<< SoundDescriptionBridge >>>", 0xB9F, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t figSoundBridge_GetDecodeFormatIDForUnknownExtensionType_cold_2()
{
  OUTLINED_FUNCTION_22_4();
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v1, "<<< SoundDescriptionBridge >>>", 0xBA2, v3, v4, v5);
  *v0 = result;
  return result;
}

size_t figSoundBridge_GetDecodeFormatIDForUnknownExtensionType_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<< SoundDescriptionBridge >>>", 0xBC0, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t figSoundBridge_GetDecodeFormatIDForUnknownExtensionType_cold_4()
{
  OUTLINED_FUNCTION_22_4();
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v1, "<<< SoundDescriptionBridge >>>", 0xBC3, v3, v4, v5);
  *v0 = result;
  return result;
}

void figSoundBridge_ConvertMP4AESDSMagicCookieToSoundDescriptionExtension_cold_1(const __CFAllocator *a1, void *a2, _DWORD *a3)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  *a3 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, 0xFFFFCE5AuLL, "<<< SoundDescriptionBridge >>>", 0x173C, v7, v8, v9);

  CFAllocatorDeallocate(a1, a2);
}

size_t figSoundBridge_ConvertMP4AESDSMagicCookieToSoundDescriptionExtension_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE57uLL, "<<< SoundDescriptionBridge >>>", 0x1723, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t figSoundBridge_ConvertMP4AESDSMagicCookieToSoundDescriptionExtension_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<< SoundDescriptionBridge >>>", 0x1720, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t figSoundBridge_ConvertMP4AESDSMagicCookieToSoundDescriptionExtension_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE5AuLL, "<<< SoundDescriptionBridge >>>", 0x1717, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t figSoundBridge_ConvertFLACMagicCookieToSoundDescriptionExtension_cold_1()
{
  OUTLINED_FUNCTION_22_4();
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v1, "<<< SoundDescriptionBridge >>>", 0x1819, v3, v4, v5);
  *v0 = result;
  return result;
}

size_t figSoundBridge_ConvertFLACMagicCookieToSoundDescriptionExtension_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE57uLL, "<<< SoundDescriptionBridge >>>", 0x181C, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t figSoundBridge_ConvertFLACMagicCookieToSoundDescriptionExtension_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<< SoundDescriptionBridge >>>", 0x1810, v3, v4, v5);
  *a1 = result;
  return result;
}

OSStatus CMClosedCaptionFormatDescriptionCreateFromBigEndianClosedCaptionDescriptionData(CFAllocatorRef allocator, const uint8_t *closedCaptionDescriptionData, size_t size, CMClosedCaptionDescriptionFlavor flavor, CMClosedCaptionFormatDescriptionRef *formatDescriptionOut)
{
  v74 = *MEMORY[0x1E69E9840];
  if (!closedCaptionDescriptionData || size <= 0xF || !formatDescriptionOut)
  {
    OUTLINED_FUNCTION_1_30();
    OUTLINED_FUNCTION_0_46();
    goto LABEL_13;
  }

  v6 = bswap32(*closedCaptionDescriptionData);
  v7 = v6;
  if (v6 < 0x10 || v6 > size)
  {
    OUTLINED_FUNCTION_1_30();
LABEL_13:
    OUTLINED_FUNCTION_2_19();

    return FigSignalErrorAtGM(v9, v10, v11, v12, v13, v14, v15, v16);
  }

  v19 = *(closedCaptionDescriptionData + 1);
  v20 = bswap32(v19);
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  *values = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v23 = v19 == 942683747 || v19 == 942683760 || v19 == 1667462241 || v19 == 942684003;
  *keys = 0uLL;
  v59 = 0uLL;
  if (v23)
  {
    mediaSubType = v20;
    v24 = v7 - 16;
    if ((v7 - 16) < 9)
    {
LABEL_49:
      Mutable = 0;
LABEL_50:
      v50 = 0;
      v51 = 1;
    }

    else
    {
      Mutable = 0;
      v26 = closedCaptionDescriptionData + 16;
      v27 = *MEMORY[0x1E695E480];
      do
      {
        v28 = *(v26 + 1);
        v29 = bswap32(*v26);
        *bytes = bswap32(v28);
        v30 = v29;
        v31 = v29 - 8;
        if (v24 - 8 < v31)
        {
          break;
        }

        if (v28 != 1701147238)
        {
          v32 = CFDataCreate(v27, v26 + 8, v31);
          if (!v32)
          {
            break;
          }

          v33 = v32;
          *bytes = bswap32(*bytes);
          v34 = CFStringCreateWithBytes(v27, bytes, 4, 0, 0);
          if (!v34)
          {
            CFRelease(v33);
            break;
          }

          v35 = v34;
          if (!Mutable)
          {
            Mutable = CFDictionaryCreateMutable(v27, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            if (!Mutable)
            {
              CFRelease(v33);
              CFRelease(v35);
              goto LABEL_49;
            }
          }

          CFDictionaryAddValue(Mutable, v35, v33);
          CFRelease(v35);
          CFRelease(v33);
        }

        v24 -= v30;
        v26 += v30;
      }

      while (v24 > 8);
      if (!Mutable)
      {
        goto LABEL_50;
      }

      values[0] = CFRetain(Mutable);
      keys[0] = @"SampleDescriptionExtensionAtoms";
      v50 = CFDictionaryCreate(allocator, keys, values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (values[0])
      {
        CFRelease(values[0]);
      }

      v51 = 0;
      values[0] = 0;
      if (!v50)
      {
        v52 = 0;
        goto LABEL_52;
      }
    }

    v52 = v51;
    v51 = 1;
LABEL_52:
    v53 = 0;
    do
    {
      v54 = values[v53];
      if (v54)
      {
        CFRelease(v54);
      }
    }

    while (v53++ < 15);
    if ((v52 & 1) == 0)
    {
      CFRelease(Mutable);
    }

    if (v51)
    {
      CMFormatDescriptionCreate(allocator, 0x636C6370u, mediaSubType, v50, formatDescriptionOut);
      if (v50)
      {
        CFRelease(v50);
      }
    }

    goto LABEL_62;
  }

  OUTLINED_FUNCTION_0_46();
  if (FigSignalErrorAtGM(v36, v37, v38, v39, 0x10D, v40, v41, v42))
  {
LABEL_62:
    OUTLINED_FUNCTION_2_19();
    return result;
  }

  OUTLINED_FUNCTION_2_19();

  return CMFormatDescriptionCreate(v44, v45, v46, v47, v48);
}

OSStatus CMTextFormatDescriptionCreateFromBigEndianTextDescriptionData(CFAllocatorRef allocator, const uint8_t *textDescriptionData, size_t size, CMTextDescriptionFlavor flavor, CMMediaType mediaType, CMTextFormatDescriptionRef *formatDescriptionOut)
{
  Dict = v7;
  v313 = *MEMORY[0x1E69E9840];
  if (size <= 7)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_2_20();
    v17 = 4294954582;
    v18 = 1712;
LABEL_3:
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v13, v17, "<<< TextDescBridge >>>", v18, v14, v15, v16);
    OUTLINED_FUNCTION_9_12();
    goto LABEL_4;
  }

  v6 = size;
  v20 = bswap32(*(textDescriptionData + 1));
  v21 = MEMORY[0x1E695E480];
  switch(v20)
  {
    case 0x64726D74u:
      goto LABEL_22;
    case 0x73747070u:
      bzero(&v307, 0xA0uLL);
      OUTLINED_FUNCTION_16_6(v120, v121, v122, v123, v124, v125, v126, v127, v253, v254, v255, allocatora, pStr, v260, v262, v263, cf, v265, v266, v267, v268, v269, v270[0], v270[1], v271, *(&v271 + 1), *v272, *&v272[8], *&v272[16], *&v272[24], v273[0], v273[1], *v274, *&v274[8], *&v274[16], *&v274[24], v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, 0, v294, v295, v296, v297, v298, v299, v300, v301);
      v269 = 0;
      LOBYTE(v267) = 0;
      LOBYTE(v266) = 0;
      LOBYTE(v265) = 0;
      LOBYTE(cf) = 0;
      if (v6 <= 0x10)
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_2_20();
        v17 = 4294954582;
        v18 = 1589;
        goto LABEL_3;
      }

      v277 = 0;
      v278 = 0;
      v270[0] = 0;
      v270[1] = 0;
      v273[0] = 0;
      v273[1] = 0;
      v297 = 0;
      v298 = 0;
      v136 = locateXMLSubtitleSampleFields(textDescriptionData, v6, &v267, &v277, &v266, v270, &v265, v273, &cf, &v297);
      v261 = formatDescriptionOut;
      if (v136)
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_2_20();
        v142 = 1599;
        goto LABEL_160;
      }

      if (!v267)
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_2_20();
        v142 = 1600;
        goto LABEL_160;
      }

      if (cf && (!v266 || !v265))
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_2_20();
        v142 = 1604;
        goto LABEL_160;
      }

      if (v278 + 16 > v6)
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_2_20();
        v142 = 1610;
        goto LABEL_160;
      }

      if (v277 + v278 > v6)
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_2_20();
        v142 = 1611;
        goto LABEL_160;
      }

      if (v266)
      {
        v137 = v270[1] + v278 + 16;
        if (v137 > v6)
        {
          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_2_20();
          v142 = 1616;
          goto LABEL_160;
        }

        if (v270[0] + v270[1] > v6)
        {
          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_2_20();
          v142 = 1617;
          goto LABEL_160;
        }

        if (v265)
        {
          if (v273[1] + v137 > v6)
          {
            fig_log_get_emitter("com.apple.coremedia", "");
            OUTLINED_FUNCTION_2_20();
            v142 = 1626;
            goto LABEL_160;
          }

          if (v273[0] + v273[1] > v6)
          {
            fig_log_get_emitter("com.apple.coremedia", "");
            OUTLINED_FUNCTION_2_20();
            v142 = 1627;
            goto LABEL_160;
          }
        }
      }

      else if (v265)
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_2_20();
        v142 = 1622;
        goto LABEL_160;
      }

      if (v278 > 1)
      {
        v223 = OUTLINED_FUNCTION_6_14(v136, v277 + textDescriptionData, v278 - 1);
        v220 = v223;
        if (v223)
        {
          v221 = 0;
          if (!v266 || v270[1] < 2 || (v223 = OUTLINED_FUNCTION_6_14(v223, &textDescriptionData[v270[0]], v270[1] - 1), (v221 = v223) != 0))
          {
            v222 = 0;
            if (v265 && v273[1] >= 2 && (v222 = OUTLINED_FUNCTION_6_14(v223, &textDescriptionData[v273[0]], v273[1] - 1)) == 0)
            {
              fig_log_get_emitter("com.apple.coremedia", "");
              OUTLINED_FUNCTION_2_20();
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v245, 0xFFFFCE57uLL, "<<< TextDescBridge >>>", 0x671, v246, v247, v248);
              OUTLINED_FUNCTION_9_12();
            }

            else
            {
              v224 = ParseExtensionAtomsInDescription(textDescriptionData, v6, 0, 0, 0, &v269);
              v225 = 0;
              if (!v224)
              {
                pStra = v220;
                v226 = &v307;
                if (v269)
                {
                  v227 = &v302;
                  v226 = &v308;
                  v307 = CFRetain(v269);
                  v301 = @"SampleDescriptionExtensionAtoms";
                  v228 = 1;
                }

                else
                {
                  v228 = 0;
                  v227 = &v301;
                }

                *v226 = CFRetain(pStra);
                v229 = v226 + 1;
                v225 = v228 + 1;
                *v227 = @"XMLNamespaces";
                if (v221)
                {
                  v229 = v226 + 2;
                  v226[1] = CFRetain(v221);
                  *(&v301 + v225) = @"XMLSchemas";
                  v225 = v228 | 2;
                }

                v220 = pStra;
                if (v222)
                {
                  *v229 = CFRetain(v222);
                  *(&v301 + v225++) = @"AuxiliaryMIMETypes";
                }
              }

              OUTLINED_FUNCTION_14_6();
              Dict = createDict(allocator, v230, v231, v225, &v293);
              v6 = v293;
            }

LABEL_180:
            v232 = v222;
            v233 = v221;
            if (Dict && v6)
            {
              v234 = v220;
              CFRelease(v6);
              v6 = 0;
            }

            else
            {
              v234 = v220;
            }

            v235 = 0;
            do
            {
              v236 = *(&v307 + v235);
              if (v236)
              {
                CFRelease(v236);
              }

              v130 = v235 >= 0x98;
              v235 += 8;
            }

            while (!v130);
            if (v234)
            {
              CFRelease(v234);
            }

            if (v233)
            {
              CFRelease(v233);
            }

            if (v232)
            {
              CFRelease(v232);
            }

            v133 = v269;
            formatDescriptionOut = v261;
            if (v269)
            {
              goto LABEL_196;
            }

            goto LABEL_4;
          }

          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_2_20();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v241, 0xFFFFCE57uLL, "<<< TextDescBridge >>>", 0x669, v242, v243, v244);
          OUTLINED_FUNCTION_9_12();
LABEL_162:
          v222 = 0;
          goto LABEL_180;
        }

        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_2_20();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v237, 0xFFFFCE57uLL, "<<< TextDescBridge >>>", 0x663, v238, v239, v240);
        OUTLINED_FUNCTION_9_12();
LABEL_161:
        v221 = 0;
        goto LABEL_162;
      }

      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_2_20();
      v142 = 1633;
LABEL_160:
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v138, 0xFFFFCE56uLL, "<<< TextDescBridge >>>", v142, v139, v140, v141);
      OUTLINED_FUNCTION_9_12();
      v220 = 0;
      goto LABEL_161;
    case 0x73767474u:
    case 0x78767474u:
LABEL_20:
      bzero(&v307, 0xA0uLL);
      OUTLINED_FUNCTION_16_6(v33, v34, v35, v36, v37, v38, v39, v40, v253, v254, v255, allocatora, pStr, v260, v262, v263, cf, v265, v266, v267, v268, v269, v270[0], v270[1], v271, *(&v271 + 1), *v272, *&v272[8], *&v272[16], *&v272[24], v273[0], v273[1], *v274, *&v274[8], *&v274[16], *&v274[24], v275, v276, 0, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300, v301);
      v270[0] = 0;
      v273[0] = 0;
      v297 = 0;
      v293 = 0;
      if (v6 <= 0xF)
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_2_20();
        v17 = 4294954582;
        v18 = 1513;
        goto LABEL_3;
      }

      if (ParseExtensionAtomsInDescription(textDescriptionData, v6, v270, v273, &v297, &v293))
      {
        v51 = 0;
      }

      else
      {
        v134 = &v307;
        if (v293)
        {
          v135 = &v302;
          v134 = &v308;
          v307 = CFRetain(v293);
          v301 = @"SampleDescriptionExtensionAtoms";
          v51 = 1;
        }

        else
        {
          v51 = 0;
          v135 = &v301;
        }

        if (v273[0])
        {
          *v134++ = CFRetain(v273[0]);
          ++v51;
          *v135 = @"rqdf";
        }

        if (v297)
        {
          *v134 = CFRetain(v297);
          *(&v301 + v51++) = @"InlineResources";
        }
      }

      OUTLINED_FUNCTION_14_6();
      Dict = createDict(allocator, v216, v217, v51, &v277);
      v6 = v277;
      if (Dict && v277)
      {
        CFRelease(v277);
        v6 = 0;
      }

      v218 = 0;
      do
      {
        v219 = *(&v307 + v218);
        if (v219)
        {
          CFRelease(v219);
        }

        v130 = v218 >= 0x98;
        v218 += 8;
      }

      while (!v130);
      if (v270[0])
      {
        CFRelease(v270[0]);
      }

      if (v273[0])
      {
        CFRelease(v273[0]);
      }

      if (v297)
      {
        CFRelease(v297);
      }

      v133 = v293;
      if (v293)
      {
        goto LABEL_196;
      }

      goto LABEL_4;
    case 0x74783367u:
LABEL_22:
      OUTLINED_FUNCTION_10_8();
      OUTLINED_FUNCTION_16_6(v41, v42, v43, v44, v45, v46, v47, v48, v253, v254, v255, allocatora, pStr, v260, v262, v263, 0, 0, 0, 0, v268, 0, @"StartChar", @"EndChar", @"Font", @"FontFace", @"FontSize", @"ForegroundColor", *&v272[16], *&v272[24], v273[0], v273[1], *v274, *&v274[8], *&v274[16], *&v274[24], v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, @"Top", @"Left", @"Bottom", @"Right", @"Red", @"Green", @"Blue", @"Alpha", v301);
      if (v6 <= 0x2D)
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_2_20();
        v17 = 4294954582;
        v18 = 1411;
        goto LABEL_3;
      }

      v52 = *(textDescriptionData + 1);
      *v273 = *textDescriptionData;
      *v274 = v52;
      *&v274[14] = *(textDescriptionData + 30);
      v53 = *v21;
      v54 = OUTLINED_FUNCTION_7_13(v49, v50, &v274[6]);
      if (!v54)
      {
        goto LABEL_54;
      }

      v277 = v54;
      v56 = OUTLINED_FUNCTION_7_13(v54, v55, &v274[7]);
      if (!v56)
      {
        goto LABEL_54;
      }

      v278 = v56;
      v58 = OUTLINED_FUNCTION_7_13(v56, v57, &v274[8]);
      if (!v58)
      {
        goto LABEL_54;
      }

      v279 = v58;
      if (!OUTLINED_FUNCTION_7_13(v58, v59, &v274[9]))
      {
        goto LABEL_54;
      }

      OUTLINED_FUNCTION_11_7();
      LODWORD(v64) = OUTLINED_FUNCTION_15_7(v60, v61, v62, v63, &v267);
      if (!v64)
      {
        OUTLINED_FUNCTION_0_47();
        v68 = OUTLINED_FUNCTION_5_16(v65, v66, v67);
        if (!v68)
        {
          goto LABEL_54;
        }

        v277 = v68;
        OUTLINED_FUNCTION_0_47();
        v72 = OUTLINED_FUNCTION_5_16(v69, v70, v71);
        if (!v72)
        {
          goto LABEL_54;
        }

        v278 = v72;
        OUTLINED_FUNCTION_0_47();
        v76 = OUTLINED_FUNCTION_5_16(v73, v74, v75);
        if (!v76)
        {
          goto LABEL_54;
        }

        v279 = v76;
        OUTLINED_FUNCTION_0_47();
        v80 = OUTLINED_FUNCTION_5_16(v77, v78, v79);
        if (!v80)
        {
          goto LABEL_54;
        }

        v280 = v80;
        v64 = OUTLINED_FUNCTION_15_7(v80, &v293, &v277, v81, &v266);
        if (!v64)
        {
          v83 = OUTLINED_FUNCTION_7_13(v64, v82, &v274[26]);
          if (!v83)
          {
            goto LABEL_54;
          }

          v277 = v83;
          v85 = OUTLINED_FUNCTION_7_13(v83, v84, &v274[27]);
          if (!v85)
          {
            goto LABEL_54;
          }

          v278 = v85;
          v87 = OUTLINED_FUNCTION_7_13(v85, v86, &v274[28]);
          if (!v87)
          {
            goto LABEL_54;
          }

          v279 = v87;
          if (!OUTLINED_FUNCTION_7_13(v87, v88, &v274[29]))
          {
            goto LABEL_54;
          }

          OUTLINED_FUNCTION_11_7();
          LODWORD(v64) = OUTLINED_FUNCTION_15_7(v89, v90, v91, v92, &cf);
          if (!v64)
          {
            OUTLINED_FUNCTION_0_47();
            v96 = OUTLINED_FUNCTION_5_16(v93, v94, v95);
            if (!v96)
            {
              goto LABEL_54;
            }

            v277 = v96;
            OUTLINED_FUNCTION_0_47();
            v100 = OUTLINED_FUNCTION_5_16(v97, v98, v99);
            if (!v100)
            {
              goto LABEL_54;
            }

            v278 = v100;
            OUTLINED_FUNCTION_0_47();
            v104 = OUTLINED_FUNCTION_5_16(v101, v102, v103);
            if (!v104)
            {
              goto LABEL_54;
            }

            v279 = v104;
            v106 = OUTLINED_FUNCTION_7_13(v104, v105, &v274[24]);
            if (!v106)
            {
              goto LABEL_54;
            }

            v280 = v106;
            v108 = OUTLINED_FUNCTION_7_13(v106, v107, &v274[25]);
            if (!v108)
            {
              goto LABEL_54;
            }

            v281 = v108;
            v282 = CFRetain(cf);
            LODWORD(v64) = createDict(allocator, v270, &v277, 6, &v265);
            if (!v64)
            {
              OUTLINED_FUNCTION_4_13();
              v110 = CFNumberCreate(v53, kCFNumberSInt32Type, v109);
              if (v110)
              {
                v307 = v110;
                v301 = @"DisplayFlags";
                v112 = OUTLINED_FUNCTION_7_13(v110, v111, &v274[4]);
                if (v112)
                {
                  v308 = v112;
                  v302 = @"HorizontalJustification";
                  v114 = OUTLINED_FUNCTION_7_13(v112, v113, &v274[5]);
                  if (v114)
                  {
                    v309 = v114;
                    v303 = @"VerticalJustification";
                    v310 = CFRetain(v267);
                    v304 = @"BackgroundColor";
                    v311 = CFRetain(v266);
                    v305 = @"DefaultTextBox";
                    v312 = CFRetain(v265);
                    v306 = @"DefaultStyle";
                    OUTLINED_FUNCTION_13_6(v312, v115, v116, v117, v118, v119);
                    OUTLINED_FUNCTION_14_6();
                    Dict = createDict(allocator, v251, v252, 6, &v269);
                    v6 = v269;
                    if (!Dict || !v269)
                    {
                      goto LABEL_55;
                    }

                    CFRelease(v269);
                    goto LABEL_219;
                  }
                }
              }

LABEL_54:
              v6 = 0;
              Dict = -12713;
LABEL_55:
              v128 = 0;
              do
              {
                v129 = *(&v277 + v128);
                if (v129)
                {
                  CFRelease(v129);
                }

                v130 = v128 >= 0x78;
                v128 += 8;
              }

              while (!v130);
              v131 = 0;
              do
              {
                v132 = *(&v307 + v131);
                if (v132)
                {
                  CFRelease(v132);
                }

                v130 = v131 >= 0x98;
                v131 += 8;
              }

              while (!v130);
              if (v267)
              {
                CFRelease(v267);
              }

              if (v266)
              {
                CFRelease(v266);
              }

              if (v265)
              {
                CFRelease(v265);
              }

              v133 = cf;
              if (cf)
              {
                goto LABEL_196;
              }

              goto LABEL_4;
            }
          }
        }
      }

      Dict = v64;
LABEL_219:
      v6 = 0;
      goto LABEL_55;
    case 0x77767474u:
      goto LABEL_20;
  }

  if (v20 != 1952807028)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_2_20();
    v17 = 4294954579;
    v18 = 1730;
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_10_8();
  OUTLINED_FUNCTION_16_6(v23, v24, v25, v26, v27, v28, v29, v30, v253, v254, v255, allocatora, pStr, v260, v262, v263, 0, 0, 0, 0, v268, 0, v270[0], v270[1], v271, *(&v271 + 1), *v272, *&v272[8], *&v272[16], *&v272[24], @"StartChar", @"Height", @"Ascent", @"Font", @"FontFace", @"FontSize", @"ForegroundColor", v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, @"Red", @"Green", @"Blue", v296, @"Top", @"Left", @"Bottom", @"Right", v301);
  if (v6 <= 0x3A)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_2_20();
    v17 = 4294954582;
    v18 = 1283;
    goto LABEL_3;
  }

  if (textDescriptionData[58] + 59 > v6)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_2_20();
    v17 = 4294954582;
    v18 = 1288;
    goto LABEL_3;
  }

  v143 = *(textDescriptionData + 1);
  *v270 = *textDescriptionData;
  v271 = v143;
  *v272 = *(textDescriptionData + 2);
  *&v272[11] = *(textDescriptionData + 43);
  WORD2(v268) = bswap32(WORD4(v143)) >> 16;
  v144 = *v21;
  v145 = OUTLINED_FUNCTION_5_16(v31, v32, &v268 + 4);
  if (!v145)
  {
    goto LABEL_115;
  }

  v277 = v145;
  OUTLINED_FUNCTION_0_47();
  v149 = OUTLINED_FUNCTION_5_16(v146, v147, v148);
  if (!v149)
  {
    goto LABEL_115;
  }

  v278 = v149;
  OUTLINED_FUNCTION_0_47();
  v153 = OUTLINED_FUNCTION_5_16(v150, v151, v152);
  if (!v153)
  {
    goto LABEL_115;
  }

  v279 = v153;
  if (createDict(allocator, &v293, &v277, 3, &v267))
  {
    goto LABEL_211;
  }

  OUTLINED_FUNCTION_0_47();
  v157 = OUTLINED_FUNCTION_5_16(v154, v155, v156);
  if (!v157)
  {
    goto LABEL_115;
  }

  v277 = v157;
  OUTLINED_FUNCTION_0_47();
  v161 = OUTLINED_FUNCTION_5_16(v158, v159, v160);
  if (!v161)
  {
    goto LABEL_115;
  }

  v278 = v161;
  OUTLINED_FUNCTION_0_47();
  v165 = OUTLINED_FUNCTION_5_16(v162, v163, v164);
  if (!v165)
  {
    goto LABEL_115;
  }

  v279 = v165;
  OUTLINED_FUNCTION_0_47();
  if (!OUTLINED_FUNCTION_5_16(v166, v167, v168))
  {
    goto LABEL_115;
  }

  OUTLINED_FUNCTION_11_7();
  if (OUTLINED_FUNCTION_15_7(v169, v170, v171, v172, &v266))
  {
    goto LABEL_211;
  }

  OUTLINED_FUNCTION_0_47();
  v176 = OUTLINED_FUNCTION_5_16(v173, v174, v175);
  if (!v176)
  {
    goto LABEL_115;
  }

  v277 = v176;
  OUTLINED_FUNCTION_0_47();
  v180 = OUTLINED_FUNCTION_5_16(v177, v178, v179);
  if (!v180)
  {
    goto LABEL_115;
  }

  v278 = v180;
  OUTLINED_FUNCTION_0_47();
  v184 = OUTLINED_FUNCTION_5_16(v181, v182, v183);
  if (!v184)
  {
    goto LABEL_115;
  }

  v279 = v184;
  if (createDict(allocator, &v293, &v277, 3, &cf))
  {
LABEL_211:
    OUTLINED_FUNCTION_9_12();
    v200 = 0;
    goto LABEL_117;
  }

  OUTLINED_FUNCTION_4_13();
  v186 = CFNumberCreate(v144, kCFNumberSInt32Type, v185);
  if (!v186 || (v277 = v186, OUTLINED_FUNCTION_0_47(), (v190 = OUTLINED_FUNCTION_5_16(v187, v188, v189)) == 0) || (v278 = v190, OUTLINED_FUNCTION_0_47(), allocatorb = v144, (v194 = OUTLINED_FUNCTION_5_16(v191, v192, v193)) == 0) || (v279 = v194, OUTLINED_FUNCTION_0_47(), (v196 = CFNumberCreate(v144, kCFNumberSInt16Type, v195)) == 0) || (v280 = v196, (v197 = CFNumberCreate(v144, kCFNumberSInt8Type, &v272[16])) == 0) || (v281 = v197, OUTLINED_FUNCTION_0_47(), (v199 = CFNumberCreate(v144, kCFNumberSInt16Type, v198)) == 0))
  {
LABEL_115:
    v6 = 0;
    v200 = 0;
LABEL_116:
    Dict = -12713;
    goto LABEL_117;
  }

  v282 = v199;
  v283 = CFRetain(cf);
  if (createDict(allocator, v273, &v277, 7, &v265))
  {
    goto LABEL_211;
  }

  v200 = CFStringCreateWithPascalString(allocator, textDescriptionData + 58, 0);
  OUTLINED_FUNCTION_4_13();
  v202 = CFNumberCreate(allocatorb, kCFNumberSInt32Type, v201);
  if (!v202 || (v307 = v202, v301 = @"DisplayFlags", OUTLINED_FUNCTION_4_13(), (v204 = CFNumberCreate(allocatorb, kCFNumberSInt32Type, v203)) == 0))
  {
    v6 = 0;
    goto LABEL_116;
  }

  v308 = v204;
  v302 = @"TextJustification";
  v309 = CFRetain(v267);
  v303 = @"BackgroundColor";
  v310 = CFRetain(v266);
  v304 = @"DefaultTextBox";
  v205 = CFRetain(v265);
  v311 = v205;
  v305 = @"DefaultStyle";
  if (v200)
  {
    v205 = CFRetain(v200);
    v312 = v205;
    v306 = @"DefaultFontName";
    v211 = 6;
  }

  else
  {
    v211 = 5;
  }

  OUTLINED_FUNCTION_13_6(v205, v206, v207, v208, v209, v210);
  OUTLINED_FUNCTION_14_6();
  Dict = createDict(allocator, v249, v250, v211, &v269);
  v6 = v269;
  if (Dict && v269)
  {
    CFRelease(v269);
    v6 = 0;
  }

LABEL_117:
  v212 = 0;
  do
  {
    v213 = *(&v277 + v212);
    if (v213)
    {
      CFRelease(v213);
    }

    v130 = v212 >= 0x78;
    v212 += 8;
  }

  while (!v130);
  v214 = 0;
  do
  {
    v215 = *(&v307 + v214);
    if (v215)
    {
      CFRelease(v215);
    }

    v130 = v214 >= 0x98;
    v214 += 8;
  }

  while (!v130);
  if (v267)
  {
    CFRelease(v267);
  }

  if (v266)
  {
    CFRelease(v266);
  }

  if (v265)
  {
    CFRelease(v265);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v200)
  {
    v133 = v200;
LABEL_196:
    CFRelease(v133);
  }

LABEL_4:
  if (!Dict)
  {
    Dict = CMFormatDescriptionCreate(allocator, mediaType, bswap32(*(textDescriptionData + 1)), v6, formatDescriptionOut);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return Dict;
}

void InlineResourcesPayloadWritingApplierFunc(const __CFDictionary *a1, uint64_t a2)
{
  v80 = 0;
  value = 0;
  v78 = 0;
  v79 = 0;
  valuePtr = 0;
  v5 = *(a2 + 8);
  v76 = 0;
  memset(v75, 0, sizeof(v75));
  v74 = 0;
  memset(v73, 0, sizeof(v73));
  if (CFDictionaryGetValueIfPresent(a1, @"resource_role", &value))
  {
    CFNumberGetValue(value, kCFNumberSInt32Type, &valuePtr);
  }

  CFDictionaryGetValueIfPresent(a1, @"resource_mimetype", &v80);
  CFDictionaryGetValueIfPresent(a1, @"resource_mimetype_URI", &v79);
  CFDictionaryGetValueIfPresent(a1, @"resource_payload", &v78);
  v6 = 0;
  if (!value || !v80 || !v78)
  {
    goto LABEL_26;
  }

  if (FigAtomWriterInitWithParent(v5, v75))
  {
    goto LABEL_30;
  }

  if (FigAtomWriterBeginAtom(v75, 1920168547, 0, v7, v8, v9, v10, v11))
  {
    goto LABEL_30;
  }

  if (FigAtomWriterInitWithParent(v75, v73))
  {
    goto LABEL_30;
  }

  if (FigAtomWriterBeginAtom(v73, 1954115685, 0, v12, v13, v14, v15, v16))
  {
    goto LABEL_30;
  }

  if (FigAtomWriterAppendVersionAndFlags(v73, 0, 0))
  {
    goto LABEL_30;
  }

  valuePtr = bswap32(valuePtr);
  if (FigAtomWriterAppendData(v73, &valuePtr, 4))
  {
    goto LABEL_30;
  }

  if (v80)
  {
    CFStringGetLength(v80);
    usedBufLen = 0;
    OUTLINED_FUNCTION_3_18();
    CFStringGetBytes(v24, v82, v25, v26, v27, 0, 0, &usedBufLen);
    if (!usedBufLen)
    {
      emitter = fig_log_get_emitter("com.apple.coremedia", "");
      v70 = v2;
      v71 = 2041;
LABEL_29:
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE55uLL, "<<< TextDescBridge >>>", v71, v70, v68, v69);
      goto LABEL_30;
    }

    v6 = malloc_type_malloc(usedBufLen + 1, 0x72066245uLL);
    OUTLINED_FUNCTION_3_18();
    Bytes = CFStringGetBytes(v28, v83, v29, v30, v31, v6, v32, &usedBufLen);
    if (OUTLINED_FUNCTION_12_8(Bytes, v34))
    {
      goto LABEL_26;
    }

    free(v6);
  }

  if (!v79)
  {
LABEL_20:
    if (!FigAtomWriterEndAtom(v73, v17, v18, v19, v20, v21, v22, v23) && !FigAtomWriterBeginAtom(v73, 1684108385, 0, v46, v47, v48, v49, v50))
    {
      BytePtr = CFDataGetBytePtr(v78);
      Length = CFDataGetLength(v78);
      if (!FigAtomWriterAppendData(v73, BytePtr, Length) && !FigAtomWriterEndAtom(v73, v53, v54, v55, v56, v57, v58, v59) && !FigAtomWriterEndAtom(v75, v60, v61, v62, v63, v64, v65, v66))
      {
        v6 = 0;
        ++**a2;
        goto LABEL_26;
      }
    }

LABEL_30:
    v6 = 0;
    goto LABEL_26;
  }

  CFStringGetLength(v79);
  usedBufLen = 0;
  OUTLINED_FUNCTION_3_18();
  CFStringGetBytes(v35, v84, v36, v37, v38, 0, 0, &usedBufLen);
  if (!usedBufLen)
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v70 = v2;
    v71 = 2063;
    goto LABEL_29;
  }

  v6 = malloc_type_malloc(usedBufLen + 1, 0xEF15FF85uLL);
  OUTLINED_FUNCTION_3_18();
  v44 = CFStringGetBytes(v39, v85, v40, v41, v42, v6, v43, &usedBufLen);
  if (!OUTLINED_FUNCTION_12_8(v44, v45))
  {
    free(v6);
    goto LABEL_20;
  }

LABEL_26:
  free(v6);
}

size_t CMTextFormatDescriptionCreateFromBigEndianTextDescriptionBlockBuffer_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "<<< TextDescBridge >>>", 0x6F1, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t CMTextFormatDescriptionCopyAsBigEndianTextDescriptionBlockBuffer_cold_1()
{
  OUTLINED_FUNCTION_22_4();
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v1, "<<< TextDescBridge >>>", 0x97A, v3, v4, v5);
  *v0 = result;
  return result;
}

size_t CMTextFormatDescriptionCopyAsBigEndianTextDescriptionBlockBuffer_cold_2()
{
  OUTLINED_FUNCTION_22_4();
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v1, "<<< TextDescBridge >>>", 0x982, v3, v4, v5);
  *v0 = result;
  return result;
}

size_t CMTextFormatDescriptionCopyAsBigEndianTextDescriptionBlockBuffer_cold_3()
{
  OUTLINED_FUNCTION_22_4();
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v1, "<<< TextDescBridge >>>", 0x98A, v3, v4, v5);
  *v0 = result;
  return result;
}

size_t CMTextFormatDescriptionCopyAsBigEndianTextDescriptionBlockBuffer_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<< TextDescBridge >>>", 0x975, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t CMTextFormatDescriptionCopyAsBigEndianTextDescriptionBlockBuffer_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<< TextDescBridge >>>", 0x96A, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t CMTextFormatDescriptionCopyAsBigEndianTextDescriptionBlockBuffer_cold_6(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<< TextDescBridge >>>", 0xA7F, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t CMTextFormatDescriptionCopyAsBigEndianTextDescriptionBlockBuffer_cold_7(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<< TextDescBridge >>>", 0xA84, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t CMTextFormatDescriptionCopyAsBigEndianTextDescriptionBlockBuffer_cold_8(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<< TextDescBridge >>>", 0xA8A, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t CMTextFormatDescriptionCopyAsBigEndianTextDescriptionBlockBuffer_cold_9(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<< TextDescBridge >>>", 0xA91, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t CMTextFormatDescriptionCopyAsBigEndianTextDescriptionBlockBuffer_cold_10(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<< TextDescBridge >>>", 0xA3A, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t CMTextFormatDescriptionCopyAsBigEndianTextDescriptionBlockBuffer_cold_11()
{
  OUTLINED_FUNCTION_22_4();
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v1, "<<< TextDescBridge >>>", 0xA44, v3, v4, v5);
  *v0 = result;
  return result;
}

size_t CMTextFormatDescriptionCopyAsBigEndianTextDescriptionBlockBuffer_cold_12()
{
  OUTLINED_FUNCTION_22_4();
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v1, "<<< TextDescBridge >>>", 0xA4F, v3, v4, v5);
  *v0 = result;
  return result;
}

size_t CMTextFormatDescriptionCopyAsBigEndianTextDescriptionBlockBuffer_cold_13()
{
  OUTLINED_FUNCTION_22_4();
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v1, "<<< TextDescBridge >>>", 0xA61, v3, v4, v5);
  *v0 = result;
  return result;
}

size_t CMTextFormatDescriptionCopyAsBigEndianTextDescriptionBlockBuffer_cold_14(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "<<< TextDescBridge >>>", 0xA73, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t CMTextFormatDescriptionCopyAsBigEndianTextDescriptionBlockBuffer_cold_15(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<< TextDescBridge >>>", 0xAA3, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t CMTextFormatDescriptionCopyAsBigEndianTextDescriptionBlockBuffer_cold_16(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<< TextDescBridge >>>", 0xAA9, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t CMTextFormatDescriptionCopyAsBigEndianTextDescriptionBlockBuffer_cold_17(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<< TextDescBridge >>>", 0xAAF, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t CMTextFormatDescriptionCopyAsBigEndianTextDescriptionBlockBuffer_cold_18(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<< TextDescBridge >>>", 0xAB5, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t CMTextFormatDescriptionCopyAsBigEndianTextDescriptionBlockBuffer_cold_19(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<< TextDescBridge >>>", 0x991, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t emitUTF8StringFromCFString_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "<<< TextDescBridge >>>", 0x908, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t emitUTF8StringFromCFString_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE57uLL, "<<< TextDescBridge >>>", 0x902, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t emitUTF8StringFromCFString_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<< TextDescBridge >>>", 0x8FD, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t emitUTF8StringFromCFString_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<< TextDescBridge >>>", 0x8FC, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FontTableEmittingApplierFunction_cold_1()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFCE55uLL, "<<< TextDescBridge >>>", 0x738, v1, v2, v3);
}

size_t FontTableEmittingApplierFunction_cold_2()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFCE55uLL, "<<< TextDescBridge >>>", 0x739, v1, v2, v3);
}

size_t FontTableEmittingApplierFunction_cold_3()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFCE55uLL, "<<< TextDescBridge >>>", 0x73C, v1, v2, v3);
}

size_t MiscExtensionEmittingApplierFunction_cold_1()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFCE55uLL, "<<< TextDescBridge >>>", 0x887, v1, v2, v3);
}

size_t MiscExtensionEmittingApplierFunction_cold_2()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFCE55uLL, "<<< TextDescBridge >>>", 0x889, v1, v2, v3);
}

size_t MiscExtensionEmittingApplierFunction_cold_3()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFCE55uLL, "<<< TextDescBridge >>>", 0x89E, v1, v2, v3);
}

size_t MiscExtensionEmittingApplierFunction_cold_4()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFCE55uLL, "<<< TextDescBridge >>>", 0x88D, v1, v2, v3);
}

size_t MiscExtensionEmittingApplierFunction_cold_5()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFCE55uLL, "<<< TextDescBridge >>>", 0x888, v1, v2, v3);
}

size_t RequiredFeaturesEmittingApplierFunction_cold_1()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFCE55uLL, "<<< TextDescBridge >>>", 0x759, v1, v2, v3);
}

size_t RequiredFeaturesEmittingApplierFunction_cold_2()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFCE55uLL, "<<< TextDescBridge >>>", 0x762, v1, v2, v3);
}

size_t RequiredFeaturesEmittingApplierFunction_cold_3()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFCE55uLL, "<<< TextDescBridge >>>", 0x77A, v1, v2, v3);
}

size_t RequiredFeaturesEmittingApplierFunction_cold_4()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFCE55uLL, "<<< TextDescBridge >>>", 0x798, v1, v2, v3);
}

size_t RequiredFeaturesEmittingApplierFunction_cold_5()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFCE55uLL, "<<< TextDescBridge >>>", 0x77F, v1, v2, v3);
}

size_t InlineResourcesEmittingApplierFunction_cold_1()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFCE55uLL, "<<< TextDescBridge >>>", 0x845, v1, v2, v3);
}

size_t InlineResourcesEmittingApplierFunction_cold_2()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFCE55uLL, "<<< TextDescBridge >>>", 0x850, v1, v2, v3);
}

size_t FetchDictionaryNumberWithNtoBFlip_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<< TextDescBridge >>>", 0x711, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FetchDictionaryNumberWithNtoBFlip_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<< TextDescBridge >>>", 0x712, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t ParseExtensionAtomsInDescription_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "<<< TextDescBridge >>>", 0x465, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t ParseExtensionAtomsInDescription_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "<<< TextDescBridge >>>", 0x469, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t ParseExtensionAtomsInDescription_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "<<< TextDescBridge >>>", 0x47A, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t ParseExtensionAtomsInDescription_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "<<< TextDescBridge >>>", 0x472, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t ParseExtensionAtomsInDescription_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "<<< TextDescBridge >>>", 0x47E, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t ParseExtensionAtomsInDescription_cold_6(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "<<< TextDescBridge >>>", 0x46D, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t ParseExtensionAtomsInDescription_cold_7(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "<<< TextDescBridge >>>", 0x466, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t ParseExtensionAtomsInDescription_cold_8(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "<<< TextDescBridge >>>", 0x45C, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t ParseExtensionAtomsInDescription_cold_9(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "<<< TextDescBridge >>>", 0x44D, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t ParseExtensionAtomsInDescription_cold_10(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "<<< TextDescBridge >>>", 0x44A, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t ParseExtensionAtomsInDescription_cold_11(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE59uLL, "<<< TextDescBridge >>>", 0x4A9, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t ParseExtensionAtomsInDescription_cold_12(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE59uLL, "<<< TextDescBridge >>>", 0x4A5, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t ParseExtensionAtomsInDescription_cold_13(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE59uLL, "<<< TextDescBridge >>>", 0x4A1, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t ParseExtensionAtomsInDescription_cold_14(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE59uLL, "<<< TextDescBridge >>>", 0x302, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t ParseExtensionAtomsInDescription_cold_15()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFCE56uLL, "<<< TextDescBridge >>>", 0x238, v1, v2, v3);
}

size_t ParseExtensionAtomsInDescription_cold_16()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFCE56uLL, "<<< TextDescBridge >>>", 0x1C0, v1, v2, v3);
}

size_t ParseExtensionAtomsInDescription_cold_17()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFCE56uLL, "<<< TextDescBridge >>>", 0x1B7, v1, v2, v3);
}

size_t ParseExtensionAtomsInDescription_cold_18(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "<<< TextDescBridge >>>", 0x494, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t ParseExtensionAtomsInDescription_cold_19(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "<<< TextDescBridge >>>", 0x484, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t locateXMLSubtitleSampleFields_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "<<< TextDescBridge >>>", 0x3FF, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t locateXMLSubtitleSampleFields_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "<<< TextDescBridge >>>", 0x3EE, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t locateXMLSubtitleSampleFields_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "<<< TextDescBridge >>>", 0x3DD, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t locateXMLSubtitleSampleFields_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "<<< TextDescBridge >>>", 0x3D2, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigHALAudioObjectMapperCreate(uint64_t **a1)
{
  v5 = malloc_type_calloc(1uLL, 0x10uLL, 0x10200403A5D3213uLL);
  if (v5)
  {
    v6 = FigCFWeakReferenceTableCreate(*MEMORY[0x1E695E480], 3, v5);
    if (!v6)
    {
      *(v5 + 2) = 1;
      *a1 = v5;
      v5 = 0;
    }
  }

  else
  {
    v6 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFBE06uLL, "(Fig)", 0x2D, v1, v3, v4);
  }

  FigHALAudioObjectMapperDispose(v5);
  return v6;
}

uint64_t FigBridge_GetPlaintextMediaSubTypeAndEncryptionSchemeFromProtectedCodecType(int a1, _DWORD *a2, int *a3)
{
  v3 = 21;
  for (i = &dword_197165C14; i[1] != a1; i += 3)
  {
    if (!--v3)
    {
      return 4294954578;
    }
  }

  v6 = *(i - 1);
  result = 4294954578;
  if (v6)
  {
    v7 = *i;
    if (v7)
    {
      if (a2)
      {
        *a2 = v6;
      }

      result = 0;
      if (a3)
      {
        *a3 = v7;
      }
    }
  }

  return result;
}

OSStatus CMVideoFormatDescriptionCopyTagCollectionArray(CMVideoFormatDescriptionRef formatDescription, CFArrayRef *tagCollectionsOut)
{
  theData = 0;
  theArray = 0;
  v75 = 0;
  v76 = 0;
  HIWORD(cf) = -1;
  MediaSubType = CMFormatDescriptionGetMediaSubType(formatDescription);
  v5 = MediaSubType;
  v6 = 0;
  if (MediaSubType != 1635135537)
  {
    if (MediaSubType == 1667524657 || MediaSubType == 1667790435)
    {
      goto LABEL_52;
    }

    if (MediaSubType == 1684108849)
    {
      goto LABEL_53;
    }

    v8 = MediaSubType == 1684895096 || MediaSubType == 1685481521;
    v9 = v8 || MediaSubType == 1685481573;
    v10 = v9 || MediaSubType == 1718908520;
    v11 = v10 || MediaSubType == 1718908528;
    v12 = v11 || MediaSubType == 1751479857;
    if (v12 || MediaSubType == 1752589105)
    {
      goto LABEL_52;
    }

    if (MediaSubType == 1768972832)
    {
      Extensions = CMFormatDescriptionGetExtensions(formatDescription);
      if (Extensions)
      {
        goto LABEL_55;
      }

LABEL_102:
      v65 = -12710;
      goto LABEL_96;
    }

    if (MediaSubType == 1836415073 || MediaSubType == 1869117027)
    {
      goto LABEL_52;
    }

    if (MediaSubType != 1902212657 && MediaSubType != 1902403958)
    {
      if (MediaSubType != 1902405681 && MediaSubType != 1902405733 && MediaSubType != 1902407032 && MediaSubType != 1902667126 && MediaSubType != 1902998904 && MediaSubType != 1902671459)
      {
        goto LABEL_102;
      }

LABEL_52:
      v6 = MediaSubType == 1768972832;
    }
  }

LABEL_53:
  v21 = CMFormatDescriptionGetExtensions(formatDescription);
  if (!v21)
  {
    goto LABEL_102;
  }

  Extensions = v21;
  if (v6)
  {
LABEL_55:
    LOBYTE(cf) = 0;
    BYTE5(cf) = 0;
    FigCFDictionaryGetBooleanIfPresent(Extensions, @"HasLeftStereoEyeView", &cf, v22, v23, v24, v25, v26, v72, cf, v75, v76, theData, theArray, v79, v80, v81, v82);
    FigCFDictionaryGetBooleanIfPresent(Extensions, @"HasRightStereoEyeView", &cf + 5, v28, v29, v30, v31, v32, v73, cf, v75, v76, theData, theArray, v79, v80, v81, v82);
    StringValue = FigCFDictionaryGetStringValue(Extensions);
    if (cf && BYTE5(cf) && !StringValue)
    {
      HIWORD(cf) = 1;
    }

    goto LABEL_93;
  }

  if (v5 == 1635135537 || v5 == 1684108849 || v5 == 1902403958 || v5 == 1902212657)
  {
    Value = CFDictionaryGetValue(v21, @"SampleDescriptionExtensionAtoms");
    if (!Value)
    {
      goto LABEL_102;
    }

    v38 = CFDictionaryGetValue(Value, @"av1C");
    if (!v38)
    {
      goto LABEL_102;
    }

    ValueAtIndex = v38;
    v40 = CFGetTypeID(v38);
    if (v40 != CFArrayGetTypeID() || (ValueAtIndex = CFArrayGetValueAtIndex(ValueAtIndex, 0)) != 0)
    {
      v41 = CFGetTypeID(ValueAtIndex);
      if (v41 == CFDataGetTypeID())
      {
        BytePtr = CFDataGetBytePtr(ValueAtIndex);
        Length = CFDataGetLength(ValueAtIndex);
        v44 = FigAV1Bridge_CopyOperatingPointIdcsFromAV1ConfigurationRecordConfigOBU(BytePtr, Length, &theArray);
        if (!v44)
        {
          if (theArray)
          {
            Count = CFArrayGetCount(theArray);
            if (Count >= 1)
            {
              v51 = Count;
              v52 = 0;
              while (1)
              {
                LODWORD(cf) = 0;
                FigCFArrayGetIntAtIndex(theArray, v52, &cf, v46, v47, v48, v49, v50);
                v53 = (cf >> 8) & 0xF;
                if (FigUInt32GetCountOfSetBits(v53) == 2)
                {
                  break;
                }

                if (v51 == ++v52)
                {
                  goto LABEL_93;
                }
              }

              HIBYTE(cf) = FigUInt32GetPositionOfLeastSignificantSetBit(v53);
              BYTE6(cf) = FigUInt32GetPositionOfLeastSignificantSetBit(v53 & ~(1 << SHIBYTE(cf)));
            }
          }

LABEL_93:
          if (HIBYTE(cf) == 255)
          {
            fig_log_get_emitter("com.apple.coremedia", "");
            OUTLINED_FUNCTION_0();
            v71 = 4017;
          }

          else
          {
            if (BYTE6(cf) != 255)
            {
              v65 = 0;
              *tagCollectionsOut = figBridge_createFigTagCollectionArrayForLeftEyeVideoLayerIDsAndRightEyeVideoLayerIDs(&cf + 7, &cf + 6, 1);
              goto LABEL_96;
            }

            fig_log_get_emitter("com.apple.coremedia", "");
            OUTLINED_FUNCTION_0();
            v71 = 4018;
          }

          goto LABEL_106;
        }

        goto LABEL_107;
      }
    }

    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v71 = 3958;
LABEL_106:
    v44 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v67, 0xFFFFCE5AuLL, "<<<< ImageDescriptionBridge >>>>", v71, v68, v69, v70);
    goto LABEL_107;
  }

  v54 = CFDictionaryGetValue(v21, @"SampleDescriptionExtensionAtoms");
  if (!v54)
  {
    goto LABEL_102;
  }

  v55 = CFDictionaryGetValue(v54, @"hvcC");
  if (!v55)
  {
    goto LABEL_102;
  }

  v56 = v55;
  v57 = CFGetTypeID(v55);
  if (v57 == CFArrayGetTypeID() && (v56 = CFArrayGetValueAtIndex(v56, 0)) == 0 || (v58 = CFGetTypeID(v56), v58 != CFDataGetTypeID()))
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v71 = 3998;
    goto LABEL_106;
  }

  v44 = FigHEVCBridge_CopyHEVCSEIPayloadData(v56, 176, &theData);
  if (!v44)
  {
    if (theData)
    {
      v44 = OUTLINED_FUNCTION_3_19(v56, v59, v60, &v76, &v75);
      if (v44)
      {
        goto LABEL_107;
      }

      v62 = v75;
      v61 = v76;
      v63 = CFDataGetBytePtr(theData);
      v64 = CFDataGetLength(theData);
      FigHEVCBridge_Get3DLayerIDs(v61, v62, v63, v64, &cf + 7, &cf + 6);
      if (v44)
      {
        goto LABEL_107;
      }

      goto LABEL_93;
    }

    goto LABEL_102;
  }

LABEL_107:
  v65 = v44;
LABEL_96:
  if (theArray)
  {
    CFRelease(theArray);
  }

  if (theData)
  {
    CFRelease(theData);
  }

  return v65;
}

__CFArray *figBridge_createFigTagCollectionArrayForLeftEyeVideoLayerIDsAndRightEyeVideoLayerIDs(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  Mutable = 0;
  v15 = *MEMORY[0x1E69E9840];
  newCollectionOut = 0;
  if (a1)
  {
    v4 = a2;
    if (a2)
    {
      v5 = a3;
      if (a3 >= 1)
      {
        v6 = a1;
        v7 = *MEMORY[0x1E695E480];
        Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
        if (Mutable)
        {
          while (1)
          {
            tags = kCMTagStereoLeftEye;
            v8 = *v6++;
            v14 = CMTagMakeWithSInt64Value(kCMTagCategory_VideoLayerID, v8);
            v12[0] = kCMTagStereoRightEye;
            v9 = *v4++;
            v12[1] = CMTagMakeWithSInt64Value(kCMTagCategory_VideoLayerID, v9);
            if (CMTagCollectionCreate(v7, &tags, 2, &newCollectionOut))
            {
              break;
            }

            CFArrayAppendValue(Mutable, newCollectionOut);
            if (newCollectionOut)
            {
              CFRelease(newCollectionOut);
              newCollectionOut = 0;
            }

            if (FigTagCollectionCreate(v7, v12, 2, &newCollectionOut))
            {
              break;
            }

            CFArrayAppendValue(Mutable, newCollectionOut);
            if (newCollectionOut)
            {
              CFRelease(newCollectionOut);
              newCollectionOut = 0;
            }

            if (!--v5)
            {
              return Mutable;
            }
          }

          if (newCollectionOut)
          {
            CFRelease(newCollectionOut);
          }
        }
      }
    }
  }

  return Mutable;
}

uint64_t FigVideoFormatDescriptionCopyFigTagCollectionArrayWithExtraChannels(const opaqueCMFormatDescription *a1, __CFArray **a2)
{
  v51 = *MEMORY[0x1E69E9840];
  v47 = 0;
  theData = 0;
  v46 = 0;
  memset(v50, 0, sizeof(v50));
  memset(v49, 0, sizeof(v49));
  MediaSubType = CMFormatDescriptionGetMediaSubType(a1);
  v20 = MediaSubType == 1667524657 || MediaSubType == 1667790435 || MediaSubType == 1684895096 || MediaSubType == 1685481521 || MediaSubType == 1685481573 || MediaSubType == 1718908520 || MediaSubType == 1718908528 || MediaSubType == 1751479857 || MediaSubType == 1752589105 || MediaSubType == 1836415073 || MediaSubType == 1869117027 || MediaSubType == 1902405681 || MediaSubType == 1902405733 || MediaSubType == 1902407032 || MediaSubType == 1902667126 || MediaSubType == 1902998904 || MediaSubType == 1902671459;
  if (!v20 || (Extensions = CMFormatDescriptionGetExtensions(a1)) == 0 || (Value = CFDictionaryGetValue(Extensions, @"SampleDescriptionExtensionAtoms")) == 0 || (v23 = CFDictionaryGetValue(Value, @"hvcC")) == 0)
  {
    v39 = 4294954586;
    goto LABEL_73;
  }

  ValueAtIndex = v23;
  v25 = CFGetTypeID(v23);
  if ((v25 != CFArrayGetTypeID() || (ValueAtIndex = CFArrayGetValueAtIndex(ValueAtIndex, 0)) != 0) && (v26 = CFGetTypeID(ValueAtIndex), v26 == CFDataGetTypeID()))
  {
    v27 = FigHEVCBridge_CopyHEVCSEIPayloadData(ValueAtIndex, 176, &theData);
    if (v27)
    {
      goto LABEL_83;
    }

    if (!theData)
    {
      return 4294954586;
    }

    v27 = OUTLINED_FUNCTION_3_19(ValueAtIndex, v28, v29, &v47, &v46);
    if (v27)
    {
      goto LABEL_83;
    }

    v31 = v46;
    v30 = v47;
    BytePtr = CFDataGetBytePtr(theData);
    Length = CFDataGetLength(theData);
    FigHEVCBridge_Get3DLayerIDSets(v30, v31, BytePtr, Length, v50, v49);
    if (v27)
    {
      goto LABEL_83;
    }

    v34 = 0;
    v35 = -1;
    v36 = -1;
    do
    {
      v37 = *(v50 + v34);
      v38 = *(v49 + v34);
      if (v37 == 255 && v38 == 255)
      {
        break;
      }

      if (v38 != 255)
      {
        v35 = v34;
      }

      if (v37 != 255)
      {
        v36 = v34;
      }

      ++v34;
    }

    while (v34 != 64);
    if (v36 < 0)
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_0();
      v45 = 4097;
    }

    else if (v35 < 0)
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_0();
      v45 = 4098;
    }

    else
    {
      if (v36 == v35)
      {
        v39 = 0;
        *a2 = figBridge_createFigTagCollectionArrayForLeftEyeVideoLayerIDsAndRightEyeVideoLayerIDs(v50, v49, v36 + 1);
        goto LABEL_73;
      }

      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_0();
      v45 = 4099;
    }
  }

  else
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v45 = 4064;
  }

  v27 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v41, 0xFFFFCE5AuLL, "<<<< ImageDescriptionBridge >>>>", v45, v42, v43, v44);
LABEL_83:
  v39 = v27;
LABEL_73:
  if (theData)
  {
    CFRelease(theData);
  }

  return v39;
}

size_t FigVideoFormatDescriptionDetermineCompatibilityWithCoreMediaRequirementsForHEVCWithAlpha(const opaqueCMFormatDescription *a1, _DWORD *a2)
{
  v18 = 0;
  MediaSubType = CMFormatDescriptionGetMediaSubType(a1);
  if (MediaSubType != 1752589105 && MediaSubType != 1902671459)
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v16 = v2;
    v17 = 4124;
LABEL_16:

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE5AuLL, "<<<< ImageDescriptionBridge >>>>", v17, v16, v14, v15);
  }

  if (!FigVideoFormatDescriptionContainsAlphaChannel(a1))
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v16 = v2;
    v17 = 4126;
    goto LABEL_16;
  }

  Extensions = CMFormatDescriptionGetExtensions(a1);
  if (!Extensions)
  {
    return 4294954586;
  }

  Value = CFDictionaryGetValue(Extensions, @"SampleDescriptionExtensionAtoms");
  if (!Value)
  {
    return 4294954586;
  }

  v9 = CFDictionaryGetValue(Value, @"hvcC");
  if (!v9)
  {
    return 4294954586;
  }

  v10 = v9;
  v11 = CFGetTypeID(v9);
  if (v11 != CFDataGetTypeID())
  {
    return 4294954586;
  }

  result = FigHEVCBridge_CheckVPSPrimaryAlphaLayerCompatibility(v10, &v18);
  if (!result)
  {
    if (v18 == 2 || v18 == 1)
    {
      result = 0;
      *a2 = v18;
    }

    else if (v18)
    {
      return 4294954578;
    }

    else
    {
      result = 0;
      *a2 = 0;
    }
  }

  return result;
}

void figBridge_WalkAndConvertImageDescriptionExtensions_cold_1(uint64_t a1, _DWORD *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  emitter = fig_log_get_emitter("com.apple.coremedia", "");
  v8 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE54uLL, "<<<< ImageDescriptionBridge >>>>", 0xA16, v2, v6, v7);
  *a2 = v8;
  OUTLINED_FUNCTION_6_15("Image description - unsupported extension 'jpgC'");
  v13[2] = *(v9 + 32);
  v14 = 0;
  v10 = fig_log_get_emitter("com.apple.coremedia", "");
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v10, v8, "<<<< ImageDescriptionBridge >>>>", 0xA17, v2, v11, v12);
  figSoundBridge_ReportParsingFailureMessage(a1, v13);
}

void figBridge_WalkAndConvertImageDescriptionExtensions_cold_2(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6_15("Image description data could have changed");
  *&v7[26] = *(v2 + 26);
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE58uLL, "<<<< ImageDescriptionBridge >>>>", 0xA21, v4, v5, v6);
  figSoundBridge_ReportParsingFailureMessage(a1, v7);
}

void figBridge_WalkAndConvertImageDescriptionExtensions_cold_3(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6_15("Image description extension size exceeds image description size");
  v3 = *(v2 + 48);
  v8[2] = *(v2 + 32);
  v8[3] = v3;
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, 0xFFFFCE56uLL, "<<<< ImageDescriptionBridge >>>>", 0x973, v5, v6, v7);
  figSoundBridge_ReportParsingFailureMessage(a1, v8);
}

void figBridge_WalkAndConvertImageDescriptionExtensions_cold_4(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6_15("Image description data could have changed");
  *&v7[26] = *(v2 + 26);
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE58uLL, "<<<< ImageDescriptionBridge >>>>", 0xA5F, v4, v5, v6);
  figSoundBridge_ReportParsingFailureMessage(a1, v7);
}

void FigBridge_MakeFallbackExtensionsFromVUI_cold_1()
{
  OUTLINED_FUNCTION_2_21();
  OUTLINED_FUNCTION_0_48();
  OUTLINED_FUNCTION_5_17(v0, v1, "Image description - unsupported format '%c%c%c%c'", v2, v3, v4, v5, v6, v16, v17, v18, v19, v20, v21);
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  v11 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, 0xFFFFCE53uLL, "<<<< ImageDescriptionBridge >>>>", 0xC1C, v8, v9, v10);
  OUTLINED_FUNCTION_4_14(v11, v12, v13, v14, v15);
}

void FigBridge_MakeFallbackExtensionsFromVUI_cold_2()
{
  OUTLINED_FUNCTION_2_21();
  OUTLINED_FUNCTION_0_48();
  OUTLINED_FUNCTION_5_17(v0, v1, "Image description - unsupported format '%c%c%c%c'", v2, v3, v4, v5, v6, v16, v17, v18, v19, v20, v21);
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  v11 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, 0xFFFFCE53uLL, "<<<< ImageDescriptionBridge >>>>", 0xC50, v8, v9, v10);
  OUTLINED_FUNCTION_4_14(v11, v12, v13, v14, v15);
}

void FigBridge_MakeFallbackExtensionsFromVUI_cold_3()
{
  OUTLINED_FUNCTION_2_21();
  OUTLINED_FUNCTION_0_48();
  OUTLINED_FUNCTION_5_17(v0, v1, "Image description - unsupported format '%c%c%c%c'", v2, v3, v4, v5, v6, v16, v17, v18, v19, v20, v21);
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  v11 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, 0xFFFFCE53uLL, "<<<< ImageDescriptionBridge >>>>", 0xC67, v8, v9, v10);
  OUTLINED_FUNCTION_4_14(v11, v12, v13, v14, v15);
}

void FigBridge_MakeFallbackExtensionsFromVUI_cold_4()
{
  OUTLINED_FUNCTION_2_21();
  OUTLINED_FUNCTION_0_48();
  OUTLINED_FUNCTION_5_17(v0, v1, "Image description - unsupported format '%c%c%c%c'", v2, v3, v4, v5, v6, v16, v17, v18, v19, v20, v21);
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  v11 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, 0xFFFFCE53uLL, "<<<< ImageDescriptionBridge >>>>", 0xC7C, v8, v9, v10);
  OUTLINED_FUNCTION_4_14(v11, v12, v13, v14, v15);
}

void FigBridge_MakeFallbackExtensionsFromVUI_cold_5()
{
  OUTLINED_FUNCTION_2_21();
  OUTLINED_FUNCTION_0_48();
  OUTLINED_FUNCTION_5_17(v0, v1, "Image description - unsupported format '%c%c%c%c'", v2, v3, v4, v5, v6, v16, v17, v18, v19, v20, v21);
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  v11 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, 0xFFFFCE53uLL, "<<<< ImageDescriptionBridge >>>>", 0xC92, v8, v9, v10);
  OUTLINED_FUNCTION_4_14(v11, v12, v13, v14, v15);
}

void FigBridge_MakeFallbackExtensionsFromVUI_cold_6()
{
  OUTLINED_FUNCTION_2_21();
  OUTLINED_FUNCTION_0_48();
  OUTLINED_FUNCTION_5_17(v0, v1, "Image description - unsupported format '%c%c%c%c'", v2, v3, v4, v5, v6, v16, v17, v18, v19, v20, v21);
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  v11 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, 0xFFFFCE53uLL, "<<<< ImageDescriptionBridge >>>>", 0xCA7, v8, v9, v10);
  OUTLINED_FUNCTION_4_14(v11, v12, v13, v14, v15);
}

void FigBridge_MakeFallbackExtensionsFromVUI_cold_7(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  strcpy(__dst, "Image description - PrimaryAlphaLayerCompatibility. Apple decoders will not be able to decode this HEVC with Alpha stream. To fix this in the encoder, for the primary alpha layer, NumDirectRefLayers must be 0 and poc_lsb_not_present_flag must be 1");
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE53uLL, "<<<< ImageDescriptionBridge >>>>", 0xEF0, v3, v4, v5);
  figSoundBridge_ReportParsingFailureMessage(a1, __dst);
}

void FigBridge_MakeFallbackExtensionsFromVUI_cold_8(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  strcpy(__dst, "Image description - PrimaryAlphaLayerCompatibility. Apple decoders can still decode this HEVC with Alpha stream, but the stream is not compliant with the standard (ISO/IEC 23008-2) and may have compatibility issues with other decoders");
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE54uLL, "<<<< ImageDescriptionBridge >>>>", 0xEED, v3, v4, v5);
  figSoundBridge_ReportParsingFailureMessage(a1, __dst);
}

void FigBridge_MakeFallbackExtensionsFromVUI_cold_9()
{
  OUTLINED_FUNCTION_2_21();
  OUTLINED_FUNCTION_0_48();
  OUTLINED_FUNCTION_5_17(v0, v1, "Image description - unsupported format '%c%c%c%c'", v2, v3, v4, v5, v6, v16, v17, v18, v19, v20, v21);
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  v11 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, 0xFFFFCE53uLL, "<<<< ImageDescriptionBridge >>>>", 0xD95, v8, v9, v10);
  OUTLINED_FUNCTION_4_14(v11, v12, v13, v14, v15);
}

size_t CMVideoFormatDescriptionCopyAsBigEndianImageDescriptionBlockBuffer_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE54uLL, "<<<< ImageDescriptionBridge >>>>", 0x1186, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t figBridge_FlipImageDescriptionData_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "<<<< ImageDescriptionBridge >>>>", 0x16C4, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t figBridge_FlipImageDescriptionData_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "<<<< ImageDescriptionBridge >>>>", 0x16C1, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t figBridge_FlipImageDescriptionData_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "<<<< ImageDescriptionBridge >>>>", 0x16BB, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t figBridge_FlipImageDescriptionData_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "<<<< ImageDescriptionBridge >>>>", 0x16B6, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t figBridge_FlipImageDescriptionData_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< ImageDescriptionBridge >>>>", 0x16B0, v3, v4, v5);
  *a1 = result;
  return result;
}

uint64_t MP4Bridge_ParseMPEG4AudioSpecificConfig(uint64_t a1, unint64_t a2, _WORD *a3, CFMutableDictionaryRef *a4)
{
  if (a2 > 1)
  {
    v296[0] = a1;
    v296[1] = a2;
    v298 = 0;
    v296[2] = a1;
    v297 = a1 + a2;
    result = CopyNextWord(v296);
    if (result)
    {
      return result;
    }

    v14 = OUTLINED_FUNCTION_8_12(result, v7, v8, v9, v10, v11, v12, v13, v264, v278, v288, v296[0]);
    Bits = GetBits(v14, v15);
    v24 = Bits;
    if (Bits == 31)
    {
      Bits = GetBits(v296, 6u);
      v24 = Bits + 32;
    }

    v25 = OUTLINED_FUNCTION_10_9(Bits, v17, v18, v19, v20, v21, v22, v23, v265, v279, v289, v296[0]);
    v27 = GetBits(v25, v26);
    if (v27 == 15)
    {
      v35 = OUTLINED_FUNCTION_19_6(v27, v28, v29, v30, v31, v32, v33, v34, v266, v280, v290, v296[0]);
      v27 = GetBits(v35, v36);
      v37 = v27;
    }

    else
    {
      if (v27 >= 0xDu)
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_1_2();
        v252 = 4294954582;
        v253 = 2820;
        return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v248, v252, "(Fig)", v253, v249, v250, v251);
      }

      v37 = sSamplingFrequencies[v27];
    }

    v38 = OUTLINED_FUNCTION_10_9(v27, v28, v29, v30, v31, v32, v33, v34, v266, v280, v290, v296[0]);
    v40 = GetBits(v38, v39);
    v48 = v40;
    if (v40)
    {
      if (v40 >= 0x10u)
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_1_2();
        v252 = 4294954582;
        v253 = 2825;
        return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v248, v252, "(Fig)", v253, v249, v250, v251);
      }

      if ((0x8701uLL >> v40))
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_1_2();
        v252 = 4294954582;
        v253 = 2829;
        return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v248, v252, "(Fig)", v253, v249, v250, v251);
      }

      v49 = MP4Bridge_ParseMPEG4AudioSpecificConfig_sChannelCounts[v40];
    }

    else
    {
      v49 = 0;
    }

    v50 = v24 == 29;
    if (v24 == 29 || v24 == 5)
    {
      v52 = OUTLINED_FUNCTION_10_9(v40, v41, v42, v43, v44, v45, v46, v47, v267, v281, v291, v296[0]);
      v54 = GetBits(v52, v53);
      if (v54 == 15)
      {
        v62 = OUTLINED_FUNCTION_19_6(v54, v55, v56, v57, v58, v59, v60, v61, v268, v282, v292, v296[0]);
        v54 = SkipBits(v62, v63);
      }

      v64 = OUTLINED_FUNCTION_8_12(v54, v55, v56, v57, v58, v59, v60, v61, v268, v282, v292, v296[0]);
      v66 = GetBits(v64, v65);
      v67 = v66;
      if (v66 == 31)
      {
        v66 = GetBits(v296, 6u);
        v67 = v66 + 32;
      }

      if (v67 == 22)
      {
        v68 = OUTLINED_FUNCTION_10_9(v66, v41, v42, v43, v44, v45, v46, v47, v267, v283, v291, v296[0]);
        SkipBits(v68, v69);
      }

      v70 = 1;
      if (!a4)
      {
        goto LABEL_70;
      }
    }

    else
    {
      v70 = 0;
      v50 = 0;
      v67 = v24;
      if (!a4)
      {
LABEL_70:
        result = 0;
        if (a3)
        {
          *a3 = v67;
        }

        return result;
      }
    }

    result = 4294954514;
    HIDWORD(v291) = v50;
    v71 = v37;
    v284 = a3;
    v72 = 160;
    v73 = 8000;
    v74 = 1;
    switch(v67)
    {
      case 1u:
      case 2u:
      case 3u:
      case 4u:
      case 6u:
      case 7u:
      case 0x11u:
      case 0x13u:
      case 0x14u:
      case 0x15u:
      case 0x16u:
      case 0x17u:
        v299 = 0;
        if (v67 == 23)
        {
          v72 = 512;
        }

        else
        {
          v72 = 1024;
        }

        v75 = OUTLINED_FUNCTION_5_18(4294954514, v41, v42, v43, v44, v45, v46, v47, v267, v284, v291, v296[0]);
        result = GetBits(v75, v76);
        if (result != 1)
        {
          goto LABEL_41;
        }

        if (v67 == 23)
        {
          v72 = 480;
        }

        else if (v67 == 3)
        {
          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_1_2();
          result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v84, 0xFFFFCE56uLL, "(Fig)", 0xA44, v85, v86, v87);
          if (result)
          {
            return result;
          }
        }

        else
        {
          v72 = 960;
        }

LABEL_41:
        v90 = OUTLINED_FUNCTION_5_18(result, v77, v78, v79, v80, v81, v82, v83, v269, v285, v293, v296[0]);
        v92 = GetBits(v90, v91);
        if (v92 == 1)
        {
          v92 = SkipBits(v296, 0xEu);
        }

        v100 = OUTLINED_FUNCTION_5_18(v92, v93, v94, v95, v96, v97, v98, v99, v270, v286, v294, v296[0]);
        result = GetBits(v100, v101);
        v109 = result;
        if (v48)
        {
          goto LABEL_46;
        }

        if (v67 - 5 < 0xFFFFFFFC)
        {
          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_1_2();
          result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v256, 0xFFFFCE56uLL, "(Fig)", 0xA54, v257, v258, v259);
          if (result)
          {
            return result;
          }

          v72 = 0;
          if (v49)
          {
            goto LABEL_61;
          }

          goto LABEL_135;
        }

        result = MP4Bridge_ParseProgramConfigElement(v296, 0, &v299);
        if (result)
        {
          return result;
        }

LABEL_46:
        if (v67 == 20 || v67 == 6)
        {
          result = SkipBits(v296, 3u);
        }

        if (v109 != 1)
        {
          goto LABEL_58;
        }

        if (v67 > 0x17u)
        {
          goto LABEL_57;
        }

        if (((1 << v67) & 0x9A0000) != 0)
        {
          v111 = 3;
        }

        else
        {
          if (v67 != 22)
          {
            goto LABEL_57;
          }

          v186 = OUTLINED_FUNCTION_8_12(result, v102, v103, v104, v105, v106, v107, v108, v271, v284, v291, v296[0]);
          SkipBits(v186, v187);
          v111 = 11;
        }

        result = SkipBits(v296, v111);
LABEL_57:
        v112 = OUTLINED_FUNCTION_5_18(result, v102, v103, v104, v105, v106, v107, v108, v271, v284, v291, v296[0]);
        SkipBits(v112, v113);
LABEL_58:
        if (!v48)
        {
          v49 = v299;
        }

        if (v49)
        {
LABEL_61:
          if (v67 > 0x17 || ((1 << v67) & 0xA00080) == 0)
          {
            OUTLINED_FUNCTION_20_6();
            if (!v131)
            {
              OUTLINED_FUNCTION_3_20();
              if ((v133 & 7 | (8 * v132)) >= 0xB)
              {
                v134 = GetBits(v296, 0xBu) != 695 || v24 == 5;
                if (!v134 && v24 != 29)
                {
                  OUTLINED_FUNCTION_20_6();
                  if (!v131)
                  {
                    OUTLINED_FUNCTION_3_20();
                    if ((v145 & 7 | (8 * v144)) >= 5)
                    {
                      v146 = OUTLINED_FUNCTION_8_12(v136, v137, v138, v139, v140, v141, v142, v143, v271, v284, v291, v296[0]);
                      v148 = GetBits(v146, v147);
                      v156 = v148;
                      if (v148 == 31)
                      {
                        OUTLINED_FUNCTION_20_6();
                        if (!v131)
                        {
                          OUTLINED_FUNCTION_3_20();
                          if ((v157 & 6 | (8 * v158)) >= 6)
                          {
                            v148 = GetBits(v296, 6u);
                            v156 = v148 + 32;
                          }
                        }
                      }

                      if (v156 == 22 || v156 == 5)
                      {
                        v160 = OUTLINED_FUNCTION_5_18(v148, v149, v150, v151, v152, v153, v154, v155, v272, v284, v291, v296[0]);
                        v162 = GetBits(v160, v161);
                        v70 = v162 == 1;
                        if (v162 == 1)
                        {
                          v170 = OUTLINED_FUNCTION_10_9(v162, v163, v164, v165, v166, v167, v168, v169, v273, v284, v291, v296[0]);
                          v162 = GetBits(v170, v171);
                          if (v162 == 15)
                          {
                            v172 = OUTLINED_FUNCTION_19_6(v162, v163, v164, v165, v166, v167, v168, v169, v273, v284, v291, v296[0]);
                            v162 = SkipBits(v172, v173);
                          }
                        }

                        if (v156 == 22)
                        {
                          if (v67 == 22)
                          {
                            v254 = OUTLINED_FUNCTION_10_9(v162, v163, v164, v165, v166, v167, v168, v169, v273, v284, v291, v296[0]);
                            SkipBits(v254, v255);
                            goto LABEL_63;
                          }

                          fig_log_get_emitter("com.apple.coremedia", "");
                          OUTLINED_FUNCTION_1_2();
                          v252 = 4294954582;
                          v253 = 2911;
                          return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v248, v252, "(Fig)", v253, v249, v250, v251);
                        }

                        if (v156 == 5)
                        {
                          OUTLINED_FUNCTION_20_6();
                          if (!v131)
                          {
                            OUTLINED_FUNCTION_3_20();
                            if ((v174 & 4 | (8 * v175)) >= 0xC)
                            {
                              v176 = GetBits(v296, 0xBu);
                              if (v176 == 1352)
                              {
                                v184 = OUTLINED_FUNCTION_5_18(v176, v177, v178, v179, v180, v181, v182, v183, v273, v284, v291, v296[0]);
                                HIDWORD(v291) = GetBits(v184, v185) == 1;
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

LABEL_63:
          v74 = v49;
          v73 = v71;
LABEL_64:
          Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          if (Mutable)
          {
            v120 = Mutable;
            FigCFDictionarySetInt32(Mutable, @"AudioSampleRate", v73, v115, v116, v117, v118, v119);
            FigCFDictionarySetInt32(v120, @"AudioChannelCount", v74, v121, v122, v123, v124, v125);
            FigCFDictionarySetInt32(v120, @"AudioFramesPerPacket", v72, v126, v127, v128, v129, v130);
            if (v70)
            {
              FigCFDictionarySetBoolean(v120, @"SBRIsPresent", v70);
            }

            a3 = v284;
            if (HIDWORD(v291))
            {
              FigCFDictionarySetBoolean(v120, @"PSIsPresent", 1);
            }

            *a4 = v120;
            goto LABEL_70;
          }

          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_1_2();
          v252 = 4294954510;
          v253 = 2958;
          return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v248, v252, "(Fig)", v253, v249, v250, v251);
        }

LABEL_135:
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_1_2();
        v252 = 4294954582;
        v253 = 2872;
        return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v248, v252, "(Fig)", v253, v249, v250, v251);
      case 9u:
      case 0x19u:
        goto LABEL_64;
      case 0x20u:
      case 0x21u:
      case 0x22u:
        v88 = OUTLINED_FUNCTION_5_18(4294954514, v41, v42, v43, v44, v45, v46, v47, v267, v284, v291, v296[0]);
        SkipBits(v88, v89);
        goto LABEL_38;
      case 0x27u:
        v188 = OUTLINED_FUNCTION_5_18(4294954514, v41, v42, v43, v44, v45, v46, v47, v267, v284, v291, v296[0]);
        if (GetBits(v188, v189) == 1)
        {
          v72 = 480;
        }

        else
        {
          v72 = 512;
        }

        v190 = SkipBits(v296, 3u);
        v198 = OUTLINED_FUNCTION_5_18(v190, v191, v192, v193, v194, v195, v196, v197, v274, v287, v295, v296[0]);
        v200 = GetBits(v198, v199);
        if (v200)
        {
          v70 = v200;
          v208 = OUTLINED_FUNCTION_5_18(v200, v201, v202, v203, v204, v205, v206, v207, v275, v284, v291, v296[0]);
          GetBits(v208, v209);
        }

        else
        {
          v70 = 0;
        }

        goto LABEL_63;
      case 0x2Au:
        v210 = OUTLINED_FUNCTION_8_12(4294954514, v41, v42, v43, v44, v45, v46, v47, v267, v284, v291, v296[0]);
        v212 = GetBits(v210, v211);
        if (v212 == 31)
        {
          v220 = OUTLINED_FUNCTION_19_6(v212, v213, v214, v215, v216, v217, v218, v219, v276, v284, v291, v296[0]);
          v73 = GetBits(v220, v221);
        }

        else
        {
          if (v212 > 0x1Bu)
          {
            v243 = 2753;
            goto LABEL_141;
          }

          if (v212 - 13 < 2)
          {
            v243 = 2756;
            goto LABEL_141;
          }

          v73 = MP4Bridge_ParseUSACConfig_sUSACSamplingFrequencies[v212];
        }

        v222 = GetBits(v296, 3u);
        if (v222 > 4u)
        {
          v243 = 2760;
          goto LABEL_141;
        }

        v72 = MP4Bridge_ParseUSACConfig_sUSACFramesPerPacket[v222];
        v230 = OUTLINED_FUNCTION_8_12(v222, v223, v224, v225, v226, v227, v228, v229, v276, v284, v291, v296[0]);
        v232 = GetBits(v230, v231);
        if (v232)
        {
          if (v232 > 0xFu)
          {
            v243 = 2768;
            goto LABEL_141;
          }

          v74 = MP4Bridge_ParseUSACConfig_sUSACChannelCounts[v232];
        }

        else
        {
          v240 = OUTLINED_FUNCTION_8_12(v232, v233, v234, v235, v236, v237, v238, v239, v277, v284, v291, v296[0]);
          v74 = GetBits(v240, v241);
          if (v74 == 31)
          {
            v242 = GetBits(v296, 0x12u);
            v74 = GetBits(v296, 0x12u) + 31;
            if (v242 == 0x3FFFF)
            {
              v74 += GetBits(v296, 0xDu);
            }
          }
        }

        if (v74)
        {
          goto LABEL_64;
        }

        v243 = 2772;
LABEL_141:
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_1_2();
        result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v260, 0xFFFFCE56uLL, "(Fig)", v243, v261, v262, v263);
        if (!result)
        {
LABEL_38:
          v72 = 0;
          goto LABEL_63;
        }

        return result;
      default:
        return result;
    }
  }

  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_1_2();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v244, 0xFFFFCE56uLL, "(Fig)", 0xAF4, v245, v246, v247);
}

size_t MP4Bridge_ParseMPEGVideoSequenceHeader(unint64_t a1, unint64_t a2, int a3, __CFDictionary **a4)
{
  if (!a3)
  {
    if (a2 <= 0xB)
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_4_15();
      v11 = 2227;
      goto LABEL_143;
    }

LABEL_5:
    v211[0] = a1;
    v211[1] = a2;
    v214 = 0;
    v212 = a1;
    v213 = a1 + a2;
    Word = CopyNextWord(v211);
    if (!Word)
    {
      if (GetBits(v211, 0x20u) == 435)
      {
        Bits = GetBits(v211, 0xCu);
        v14 = GetBits(v211, 0xCu);
        v15 = v14;
        v17 = OUTLINED_FUNCTION_21_6(v14, v16);
        v18 = v17;
        v20 = OUTLINED_FUNCTION_21_6(v17, v19);
        v21 = GetBits(v211, 0x12u);
        if (OUTLINED_FUNCTION_14_7(v21, v22) == 1)
        {
          v23 = SkipBits(v211, 0xAu);
          v25 = OUTLINED_FUNCTION_14_7(v23, v24);
          v27 = OUTLINED_FUNCTION_14_7(v25, v26);
          if (v27)
          {
            v27 = SkipBits(v211, 0x200u);
          }

          if (OUTLINED_FUNCTION_14_7(v27, v28))
          {
            SkipBits(v211, 0x200u);
          }

          v29 = *MEMORY[0x1E695E480];
          Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          if (Mutable)
          {
            v36 = Mutable;
            v208 = v4;
            v37 = MEMORY[0x1E6965D88];
            v38 = MEMORY[0x1E6965DD8];
            if (!a3)
            {
              if (v20 == 4)
              {
                goto LABEL_17;
              }

              if (v20 != 3)
              {
                if (v20 == 1)
                {
LABEL_17:
                  v39 = *MEMORY[0x1E6965DD8];
                  if (v15 == 240)
                  {
                    if (Bits == 352)
                    {
                      v41 = 10;
                      v42 = 11;
                      if (v39)
                      {
                        goto LABEL_53;
                      }

                      goto LABEL_54;
                    }

                    if (Bits == 384 && (v18 == 1 || v18 == 14))
                    {
                      v41 = 5;
                      v42 = 6;
                      if (!v39)
                      {
                        goto LABEL_54;
                      }

                      goto LABEL_53;
                    }
                  }

                  goto LABEL_42;
                }

                v39 = 0;
LABEL_42:
                v48 = v18 - 1;
                if (v48 <= 0xD)
                {
                  v49 = (&pixelAspectRatios + 4 * v48);
                  v41 = *v49;
                  v42 = v49[1];
                  if (!v39)
                  {
                    goto LABEL_54;
                  }

LABEL_53:
                  v50 = MEMORY[0x1E6965F30];
                  v51 = MEMORY[0x1E6965F50];
                  CFDictionarySetValue(Mutable, *MEMORY[0x1E6965D88], v39);
                  CFDictionarySetValue(v36, *v50, *v51);
                  CFDictionarySetValue(v36, *MEMORY[0x1E6965F98], *MEMORY[0x1E6965FC8]);
                  goto LABEL_54;
                }

                v42 = 0;
                v41 = 0;
                if (v39)
                {
                  goto LABEL_53;
                }

LABEL_54:
                FigCFDictionarySetInt16(v36, @"VideoWidth", Bits, v31, v32, v33, v34, v35);
                FigCFDictionarySetInt16(v36, @"VideoHeight", v15, v52, v53, v54, v55, v56);
                if (v41 >= 1 && v42 >= 1)
                {
                  PixelAspectRatioDictionary = createPixelAspectRatioDictionary(v29, v41, v42);
                  FigCFDictionarySetValue(v36, *MEMORY[0x1E6965EF8], PixelAspectRatioDictionary);
                  if (PixelAspectRatioDictionary)
                  {
                    CFRelease(PixelAspectRatioDictionary);
                  }
                }

                v59 = 0;
                if (a4)
                {
                  *a4 = v36;
                  return v59;
                }

LABEL_77:
                CFRelease(v36);
                return v59;
              }

              v39 = *MEMORY[0x1E6965DA0];
              v43 = v15 << 16;
              v44 = Bits << 16;
              if (v15 << 16 == 18874368 && v44 == 23068672)
              {
                v41 = 59;
                v42 = 54;
                if (v39)
                {
                  goto LABEL_53;
                }

                goto LABEL_54;
              }

              if (v43 == 17825792 && v44 == 24117248)
              {
                v41 = 68;
              }

              else
              {
                if (v43 != 13631488 || v44 != 24117248)
                {
                  goto LABEL_42;
                }

                v41 = 65;
              }

              v42 = 69;
              if (!v39)
              {
                goto LABEL_54;
              }

              goto LABEL_53;
            }

            AdvanceToNextStartCode(v211);
            if (v212 >= v213 || (OUTLINED_FUNCTION_3_20(), v60 < 0xA))
            {
              v118 = 2351;
              goto LABEL_76;
            }

            v61 = GetBits(v211, 0x20u);
            if (v61 != 437)
            {
              v118 = 2352;
              goto LABEL_76;
            }

            v63 = OUTLINED_FUNCTION_21_6(v61, v62);
            if (v63 != 1)
            {
              v118 = 2353;
              goto LABEL_76;
            }

            v71 = OUTLINED_FUNCTION_15_8(v63, v64, v65, v66, v67, v68, v69, v70, v203, v4, v211[0]);
            v73 = GetBits(v71, v72);
            v75 = OUTLINED_FUNCTION_14_7(v73, v74);
            v77 = OUTLINED_FUNCTION_22_5(v75, v76);
            v79 = OUTLINED_FUNCTION_22_5(v77, v78);
            v80 = v79;
            v82 = OUTLINED_FUNCTION_22_5(v79, v81);
            v83 = GetBits(v211, 0xCu);
            v85 = OUTLINED_FUNCTION_14_7(v83, v84);
            if (v85 != 1)
            {
              v118 = 2369;
              goto LABEL_76;
            }

            Bits |= v80 << 12;
            v15 |= v82 << 12;
            v93 = OUTLINED_FUNCTION_15_8(v85, v86, v87, v88, v89, v90, v91, v92, v204, v208, v211[0]);
            v95 = SkipBits(v93, v94);
            v97 = OUTLINED_FUNCTION_14_7(v95, v96);
            OUTLINED_FUNCTION_22_5(v97, v98);
            GetBits(v211, 5u);
            AdvanceToNextStartCode(v211);
            v99 = v15 << 16;
            if (v212 >= v213 || (OUTLINED_FUNCTION_3_20(), v100 < 9))
            {
              LOWORD(v123) = v15;
              v124 = Bits;
LABEL_120:
              if (Bits << 16 == v124 << 16 && Bits << 16 == 47185920 && v15 == v123)
              {
                switch(v99)
                {
                  case 31457280:
                    goto LABEL_134;
                  case 37748736:
                    if (v18 == 2)
                    {
                      v41 = 59;
                      v42 = 54;
                      goto LABEL_54;
                    }

                    if (v18 == 3)
                    {
                      v41 = 118;
                      v42 = 81;
                      goto LABEL_54;
                    }

                    break;
                  case 31850496:
LABEL_134:
                    if (v18 == 2)
                    {
                      v41 = 10;
                      v42 = 11;
                      goto LABEL_54;
                    }

                    if (v18 == 3)
                    {
                      v41 = 40;
                      v42 = 33;
                      goto LABEL_54;
                    }

                    break;
                }
              }

              if ((v18 - 2) > 2u)
              {
                v201 = 0;
                v202 = 0;
              }

              else
              {
                v201 = dword_197165F5C[(v18 - 2)];
                v202 = dword_197165F68[(v18 - 2)];
              }

              v41 = v202 * v123;
              v42 = v201 * v124;
              goto LABEL_54;
            }

            HIDWORD(v205) = v99;
            v101 = GetBits(v211, 0x20u);
            if (v101 != 437 || OUTLINED_FUNCTION_21_6(v101, v102) != 2)
            {
              LOWORD(v123) = v15;
              v124 = Bits;
LABEL_119:
              v99 = HIDWORD(v205);
              goto LABEL_120;
            }

            v103 = GetBits(v211, 3u);
            v105 = OUTLINED_FUNCTION_14_7(v103, v104);
            if (!v105)
            {
              goto LABEL_103;
            }

            v113 = OUTLINED_FUNCTION_15_8(v105, v106, v107, v108, v109, v110, v111, v112, v205, v208, v211[0]);
            v115 = GetBits(v113, v114);
            if (v115 == 6)
            {
              v116 = *v37;
              v117 = *v38;
            }

            else
            {
              if (v115 != 1)
              {
                emitter = fig_log_get_emitter("com.apple.coremedia", "");
                v131 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE56uLL, "(Fig)", 0x95A, v209, v140, v141);
LABEL_89:
                v142 = OUTLINED_FUNCTION_15_8(v131, v132, v133, v134, v135, v136, v137, v138, v206, v209, v211[0]);
                v144 = GetBits(v142, v143);
                if (v144 == 7)
                {
                  v145 = *MEMORY[0x1E6965F30];
                  v146 = MEMORY[0x1E6965F68];
                }

                else
                {
                  if (v144 != 1)
                  {
                    fig_log_get_emitter("com.apple.coremedia", "");
                    OUTLINED_FUNCTION_4_15();
                    v151 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v147, 0xFFFFCE56uLL, "(Fig)", 0x966, v148, v149, v150);
LABEL_95:
                    v159 = OUTLINED_FUNCTION_15_8(v151, v152, v153, v154, v155, v156, v157, v158, v207, v210, v211[0]);
                    v161 = GetBits(v159, v160);
                    switch(v161)
                    {
                      case 7:
                        v162 = *MEMORY[0x1E6965F98];
                        v163 = MEMORY[0x1E6965FF0];
                        goto LABEL_101;
                      case 6:
                        v162 = *MEMORY[0x1E6965F98];
                        v163 = MEMORY[0x1E6965FC8];
                        goto LABEL_101;
                      case 1:
                        v162 = *MEMORY[0x1E6965F98];
                        v163 = MEMORY[0x1E6965FD0];
LABEL_101:
                        CFDictionarySetValue(v36, v162, *v163);
                        goto LABEL_103;
                    }

                    fig_log_get_emitter("com.apple.coremedia", "");
                    OUTLINED_FUNCTION_4_15();
                    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v164, 0xFFFFCE56uLL, "(Fig)", 0x975, v165, v166, v167);
LABEL_103:
                    if (v212 >= v213 || (OUTLINED_FUNCTION_3_20(), v170 < 4))
                    {
                      LOWORD(v123) = v15;
                      v124 = Bits;
LABEL_118:
                      GetBits(v211, BYTE12(v213) & 7);
                      AdvanceToNextStartCode(v211);
                      goto LABEL_119;
                    }

                    v171 = OUTLINED_FUNCTION_23_5(v168, v169);
                    v124 = Bits;
                    if (v171 < Bits)
                    {
                      v171 = OUTLINED_FUNCTION_23_5(v171, v172);
                      v124 = v171;
                    }

                    v173 = OUTLINED_FUNCTION_14_7(v171, v172);
                    if (v173 == 1)
                    {
                      v175 = OUTLINED_FUNCTION_23_5(v173, v174);
                      v123 = v15;
                      if (v175 < v15)
                      {
                        v123 = OUTLINED_FUNCTION_23_5(v175, v176);
                      }

                      if (v124 < Bits || v123 << 16 < SHIDWORD(v205))
                      {
                        v178 = CFDictionaryCreateMutable(v29, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                        FigCFDictionarySetInt32(v178, *MEMORY[0x1E6965D80], v124, v179, v180, v181, v182, v183);
                        FigCFDictionarySetInt32(v178, *MEMORY[0x1E6965D60], v123, v184, v185, v186, v187, v188);
                        FigCFDictionarySetInt32(v178, *MEMORY[0x1E6965D68], 0, v189, v190, v191, v192, v193);
                        FigCFDictionarySetInt32(v178, *MEMORY[0x1E6965D78], 0, v194, v195, v196, v197, v198);
                        FigCFDictionarySetValue(v36, *MEMORY[0x1E6965D70], v178);
                        if (v178)
                        {
                          CFRelease(v178);
                        }
                      }

                      goto LABEL_118;
                    }

                    v118 = 2429;
LABEL_76:
                    v119 = fig_log_get_emitter("com.apple.coremedia", "");
                    v59 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v119, 0xFFFFCE56uLL, "(Fig)", v118, v208, v120, v121);
                    goto LABEL_77;
                  }

                  v145 = *MEMORY[0x1E6965F30];
                  v146 = MEMORY[0x1E6965F50];
                }

                CFDictionarySetValue(v36, v145, *v146);
                goto LABEL_95;
              }

              v116 = *v37;
              v117 = *MEMORY[0x1E6965DB8];
            }

            CFDictionarySetValue(v36, v116, v117);
            goto LABEL_89;
          }

          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_4_15();
          v129 = 4294954510;
          v130 = 2262;
        }

        else
        {
          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_4_15();
          v129 = 4294954582;
          v130 = 2246;
        }
      }

      else
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_4_15();
        v129 = 4294954582;
        v130 = 2235;
      }

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v125, v129, "(Fig)", v130, v126, v127, v128);
    }

    return Word;
  }

  if (a2 > 0x15)
  {
    goto LABEL_5;
  }

  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_4_15();
  v11 = 2224;
LABEL_143:

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, 0xFFFFCE56uLL, "(Fig)", v11, v8, v9, v10);
}

uint64_t FigMP4BridgeCreateRFC6381CodecString(OpaqueCMBlockBuffer *a1, unsigned int a2, unsigned int a3, int a4, void *a5)
{
  memset(v217, 0, 112);
  v216 = 0;
  v215 = 0;
  memset(v214, 0, sizeof(v214));
  v213 = 0;
  v212 = 0;
  dataPointerOut = 0;
  if (_MergedGlobals_31 != -1)
  {
    dispatch_once_f(&_MergedGlobals_31, 0, FigCFCharacterSetCreatePredefinedEscapeSetForRFC6381);
  }

  v210 = 0;
  v211 = 0;
  v11 = qword_1ED4CC968;
  *a5 = 0;
  CurrentAtomTypeAndDataLength = FigAtomStreamInitWithBBuf(a1, 0, 1, v217);
  if (CurrentAtomTypeAndDataLength)
  {
    return CurrentAtomTypeAndDataLength;
  }

  CurrentAtomTypeAndDataLength = FigAtomStreamGetCurrentAtomTypeAndDataLength(v217, &v216, &v215);
  if (CurrentAtomTypeAndDataLength)
  {
    return CurrentAtomTypeAndDataLength;
  }

  v13 = v216;
  v14 = v216 == 1633777252 || v216 == 1701733217;
  if (v14 || v216 == 1685220723)
  {
    if (a3 != 1633771875)
    {
      v16 = 1633889587;
      if (a3 == 1633889587)
      {
        goto LABEL_60;
      }

      if (a3 == 1634754915)
      {
        goto LABEL_61;
      }

      OUTLINED_FUNCTION_16_7();
      if (v14)
      {
        goto LABEL_60;
      }

      OUTLINED_FUNCTION_16_7();
      if (!v14)
      {
        OUTLINED_FUNCTION_16_7();
        if (v14)
        {
          goto LABEL_60;
        }

        OUTLINED_FUNCTION_16_7();
        if (v14 || a3 == 1667326832)
        {
          goto LABEL_59;
        }

        OUTLINED_FUNCTION_16_7();
        if (v14)
        {
          goto LABEL_61;
        }

        if (a3 == 1667575091)
        {
          goto LABEL_82;
        }

        if (a3 != 1668641633)
        {
          if (a3 == 1700998451)
          {
            goto LABEL_82;
          }

          if (a3 != 1885430115)
          {
            switch(a3)
            {
              case 0x70616333u:
                goto LABEL_60;
              case 0x70616368u:
              case 0x70616370u:
                goto LABEL_59;
              case 0x70656333u:
                goto LABEL_82;
              case 0x70757361u:
              case 0x71616163u:
                goto LABEL_59;
              case 0x71616333u:
LABEL_60:
                v216 = v16;
                v13 = 1633889587;
                goto LABEL_84;
              case 0x71616368u:
              case 0x71616370u:
                goto LABEL_59;
            }

            if (a3 != 1902211171)
            {
              if (a3 == 1902469939)
              {
                goto LABEL_82;
              }

              if (a3 == 1903522657 || a3 == 1970495843 || a3 == 2053202275)
              {
                goto LABEL_59;
              }

              if (a3 != 2053202739)
              {
                if (a3 == 2053202792 || a3 == 2054517601)
                {
                  goto LABEL_59;
                }

                if (a3 != 2053464883)
                {
                  switch(a3)
                  {
                    case 0x7A616370u:
                      goto LABEL_59;
                    case 0x61632D34u:
                      v13 = 1633889588;
                      goto LABEL_83;
                    case 0x616C6163u:
                      goto LABEL_79;
                  }

                  if (a3 != 1667574579)
                  {
                    if (a3 == 1667656803)
                    {
                      goto LABEL_80;
                    }

                    if (a3 == 1668047203)
                    {
                      goto LABEL_79;
                    }

                    if (a3 != 1700997939)
                    {
                      if (a3 == 1718378851)
                      {
                        goto LABEL_80;
                      }

                      if (a3 != 1885547315 && a3 != 1902324531)
                      {
                        if (a3 != 1902537827)
                        {
                          if (a3 != 1902928227 && a3 != 2053923171)
                          {
                            if (a3 != 2053319475)
                            {
                              goto LABEL_84;
                            }

                            goto LABEL_82;
                          }

LABEL_79:
                          v216 = 1634492771;
                          v13 = 1634492771;
                          goto LABEL_84;
                        }

LABEL_80:
                        v13 = 1716281667;
                        goto LABEL_83;
                      }
                    }
                  }
                }

LABEL_82:
                v13 = 1700998451;
                goto LABEL_83;
              }

              goto LABEL_60;
            }

LABEL_61:
            v13 = 1634754915;
            goto LABEL_83;
          }
        }
      }
    }

LABEL_59:
    v13 = 1836069985;
LABEL_83:
    v216 = v13;
  }

LABEL_84:
  CFStringForOSTypeValue = FigGetCFStringForOSTypeValue(v13);
  if (!CFStringForOSTypeValue)
  {
    return 4294954580;
  }

  v27 = CFRetain(CFStringForOSTypeValue);
  if (!v27)
  {
    return 4294954580;
  }

  v28 = v27;
  if (v11 && (v230.length = CFStringGetLength(v27), v230.location = 0, CFStringFindCharacterFromSet(v28, v11, v230, 0, 0)))
  {
    v205 = __PAIR64__(a3, a2);
    v206 = v5;
    v207 = a5;
    if (a4)
    {
      Mutable = v28;
      v39 = 4294954579;
      goto LABEL_292;
    }

    LODWORD(v224) = bswap32(v216);
    v29 = a1;
    v30 = CFGetAllocator(a1);
    Mutable = CFStringCreateMutable(v30, 12);
    for (i = 0; i != 4; ++i)
    {
      v33 = *(&v224 + i);
      IsCharacterMember = CFCharacterSetIsCharacterMember(v11, *(&v224 + i));
      v35 = CFGetAllocator(v29);
      if (IsCharacterMember)
      {
        v36 = CFStringCreateWithFormat(v35, 0, @"%%%x", v33);
      }

      else
      {
        v36 = CFStringCreateWithFormat(v35, 0, @"%c", v33);
      }

      if (v36)
      {
        v37 = v36;
        CFStringAppend(Mutable, v36);
        CFRelease(v37);
      }
    }

    a5 = v207;
    if (Mutable)
    {
      CFRetain(Mutable);
      CFRelease(v28);
      v28 = Mutable;
    }

    a1 = v29;
    CFRelease(v28);
  }

  else
  {
    Mutable = v28;
  }

  v38 = v216 - 1835557169 >= 2 && v216 - 1835560241 >= 2;
  if (v38)
  {
    v40 = 1702061171;
    if (v216 != 1836070006)
    {
      if (v216 == 1767992678)
      {
        v40 = 1767990114;
      }

      else if (v216 != 1836069985)
      {
        if (v216 != 1633889588)
        {
LABEL_287:
          if (Mutable)
          {
            v189 = CFRetain(Mutable);
          }

          else
          {
            v189 = 0;
          }

          v39 = 0;
          *a5 = v189;
          goto LABEL_291;
        }

        v40 = 1684103988;
      }
    }
  }

  else
  {
    v40 = 1835557187;
  }

  if (a2 == 1936684398)
  {
    v41 = 28;
  }

  else
  {
    if (a2 != 1986618469)
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_27_2();
      CurrentAtomGlobalOffset = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v49, 0xFFFFCE56uLL, "(Fig)", 0x4FD, v50, v51, v52);
      goto LABEL_137;
    }

    v41 = 78;
  }

  if (v215 <= v41 + 8)
  {
    goto LABEL_295;
  }

  CurrentAtomGlobalOffset = FigAtomStreamInitWithParent(v217, v41, v214);
  if (CurrentAtomGlobalOffset)
  {
    goto LABEL_137;
  }

  while (v213 != v40)
  {
    CurrentAtomGlobalOffset = FigAtomStreamGetCurrentAtomTypeAndDataLength(v214, &v213, &v212);
    if (CurrentAtomGlobalOffset)
    {
      goto LABEL_137;
    }
  }

  CurrentAtomGlobalOffset = FigAtomStreamGetCurrentAtomGlobalOffset(v214, &v211, &v210);
  if (CurrentAtomGlobalOffset)
  {
    goto LABEL_137;
  }

  if (v210 < v212 || (v43 = v211 + v210, v43 > CMBlockBufferGetDataLength(a1)))
  {
LABEL_295:
    v39 = 4294954580;
    goto LABEL_291;
  }

  CurrentAtomGlobalOffset = CMBlockBufferGetDataPointer(a1, 0, 0, 0, &dataPointerOut);
  if (CurrentAtomGlobalOffset)
  {
LABEL_137:
    v39 = CurrentAtomGlobalOffset;
    goto LABEL_291;
  }

  v44 = v212;
  v45 = v210 - v212 + v211;
  v46 = MEMORY[0x1E695E480];
  switch(v40)
  {
    case 1684103988:
      OUTLINED_FUNCTION_7_14(v45, v200, v201, v203, v204, v205, v206, v207, dataPointerOut);
      v227 = v70;
      *&v228 = &v70[v44];
      if (CopyNextWord(&v224))
      {
        goto LABEL_314;
      }

      Bits = GetBits(&v224, 3u);
      if (Bits >= 2)
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_27_2();
        v167 = 723;
      }

      else
      {
        v72 = GetBits(&v224, 7u);
        v73 = OUTLINED_FUNCTION_18_6();
        SkipBits(v73, v74);
        v75 = GetBits(&v224, 9u);
        v76 = v75;
        if (Bits)
        {
          if ((v72 & 0xFE) != 0)
          {
            v77 = OUTLINED_FUNCTION_9_13();
            if (GetBits(v77, v78) == 1)
            {
              v79 = OUTLINED_FUNCTION_17_6();
              SkipBits(v79, v80);
              v81 = OUTLINED_FUNCTION_9_13();
              if (GetBits(v81, v82) == 1)
              {
                v83 = 0;
                do
                {
                  v84 = OUTLINED_FUNCTION_6_16();
                  SkipBits(v84, v85);
                  v38 = v83++ >= 0xF;
                }

                while (!v38);
              }
            }
          }

          SkipBits(&v224, 2u);
          v86 = OUTLINED_FUNCTION_13_7();
          SkipBits(v86, v87);
          v88 = OUTLINED_FUNCTION_13_7();
          SkipBits(v88, v89);
          OUTLINED_FUNCTION_11_8();
          v90 = v76;
          if (v76)
          {
            v208 = a5;
            v91 = 0;
            while (1)
            {
              v92 = OUTLINED_FUNCTION_6_16();
              v94 = GetBits(v92, v93);
              v95 = v94;
              if (v94 >= 3u)
              {
                break;
              }

              v96 = v94;
              v97 = OUTLINED_FUNCTION_6_16();
              v99 = GetBits(v97, v98);
              if (v99 == 255)
              {
                v100 = OUTLINED_FUNCTION_17_6();
                v99 = GetBits(v100, v101) + 255;
              }

              v102 = OUTLINED_FUNCTION_18_6();
              if (GetBits(v102, v103) != 6)
              {
                a5 = v208;
                v46 = MEMORY[0x1E695E480];
                goto LABEL_254;
              }

              for (j = GetBits(&v224, 7u); j; --j)
              {
                SkipBits(&v224, 0xFu);
              }

              if (v95)
              {
                if (v95 == 1)
                {
                  OUTLINED_FUNCTION_12_9();
                  if (v38)
                  {
                    v107 = 0;
                  }

                  else
                  {
                    v107 = BYTE12(v228) & 7 | (8 * (v106 - (v229 + v105) + (HIDWORD(v228) >> 3)));
                  }

                  v108 = OUTLINED_FUNCTION_9_13();
                  if (GetBits(v108, v109) == 1)
                  {
                    SkipBits(&v224, 2u);
                    v110 = OUTLINED_FUNCTION_13_7();
                    SkipBits(v110, v111);
                    v112 = OUTLINED_FUNCTION_13_7();
                    SkipBits(v112, v113);
                  }

                  v114 = OUTLINED_FUNCTION_9_13();
                  if (GetBits(v114, v115) == 1)
                  {
                    OUTLINED_FUNCTION_11_8();
                    v116 = OUTLINED_FUNCTION_17_6();
                    v118 = GetBits(v116, v117);
                    if (v118)
                    {
                      LOWORD(v119) = v118;
                      do
                      {
                        v120 = OUTLINED_FUNCTION_6_16();
                        SkipBits(v120, v121);
                        v119 = v119 + 1;
                      }

                      while ((v119 & 0x10000) == 0);
                    }

                    v122 = OUTLINED_FUNCTION_18_6();
                    for (k = GetBits(v122, v123); k; --k)
                    {
                      SkipBits(&v224, 0xBu);
                    }
                  }

                  OUTLINED_FUNCTION_11_8();
                  if (v227 >= v228)
                  {
                    v125 = 0;
                  }

                  else
                  {
                    v125 = BYTE12(v228) & 7 | (8 * (v228 - &v227[v229] + (HIDWORD(v228) >> 3)));
                  }

                  if (v107 - v125 <= (8 * v99 - 8))
                  {
                    SkipBits(&v224, 6u);
                    v126 = OUTLINED_FUNCTION_9_13();
                    if (GetBits(v126, v127) == 1)
                    {
                      v128 = &v224;
                      v129 = 9;
                    }

                    else
                    {
                      v128 = OUTLINED_FUNCTION_9_13();
                    }

                    SkipBits(v128, v129);
                  }
                }
              }

              else
              {
                OUTLINED_FUNCTION_11_8();
              }

              if (++v91 == v90)
              {
                v130 = 0;
                a5 = v208;
                goto LABEL_240;
              }
            }

            fig_log_get_emitter("com.apple.coremedia", "");
            OUTLINED_FUNCTION_27_2();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v191, 0xFFFFCE54uLL, "(Fig)", 0x2FB, v192, v193, v194);
            v64 = 0;
            a5 = v208;
            v46 = MEMORY[0x1E695E480];
LABEL_283:
            if (v64)
            {
              MutableCopy = CFStringCreateMutableCopy(*v46, 0, Mutable);
              if (MutableCopy)
              {
                v188 = MutableCopy;
                CFStringAppendFormat(MutableCopy, 0, @".%@", v64);
                v39 = 0;
                *a5 = v188;
              }

              else
              {
                v39 = 4294954583;
              }

              goto LABEL_286;
            }

            goto LABEL_287;
          }

          v130 = 0;
          v96 = 0;
LABEL_240:
          v46 = MEMORY[0x1E695E480];
LABEL_259:
          v64 = CFStringCreateWithFormat(*v46, 0, @"%02X.%02X.%02X", v72, v96, v130);
          goto LABEL_283;
        }

        if (!v75)
        {
          v130 = 0;
          v96 = 0;
          goto LABEL_259;
        }

        v153 = OUTLINED_FUNCTION_9_13();
        v155 = GetBits(v153, v154);
        v156 = OUTLINED_FUNCTION_18_6();
        v158 = GetBits(v156, v157);
        v159 = OUTLINED_FUNCTION_18_6();
        v161 = GetBits(v159, v160);
        if (v161 >= 3u)
        {
          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_27_2();
          v167 = 734;
        }

        else
        {
          v96 = v161;
          if (v155 == 1 || v158 != 6)
          {
LABEL_254:
            v130 = GetBits(&v224, 3u);
            goto LABEL_259;
          }

          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_27_2();
          v167 = 736;
        }
      }

LABEL_313:
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v163, 0xFFFFCE54uLL, "(Fig)", v167, v164, v165, v166);
      goto LABEL_314;
    case 1835557187:
      if (v212 <= 4)
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_27_2();
        v199 = 1101;
      }

      else
      {
        OUTLINED_FUNCTION_7_14(v45, v200, v201, v203, v204, v205, v206, v207, dataPointerOut);
        v227 = v53;
        *&v228 = &v53[v44];
        Word = CopyNextWord(&v224);
        if (Word)
        {
          goto LABEL_306;
        }

        v55 = OUTLINED_FUNCTION_6_16();
        if (GetBits(v55, v56) == 1)
        {
          v57 = OUTLINED_FUNCTION_6_16();
          v59 = GetBits(v57, v58);
          v60 = OUTLINED_FUNCTION_6_16();
          SkipBits(v60, v61);
          v62 = OUTLINED_FUNCTION_17_6();
          if (v44 >= GetBits(v62, v63) + 5)
          {
            v64 = CFStringCreateWithFormat(*v46, 0, @"%02X", v59);
            goto LABEL_283;
          }

          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_27_2();
          v199 = 1113;
        }

        else
        {
          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_27_2();
          v199 = 1107;
        }
      }

      Word = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v195, 0xFFFFCE54uLL, "(Fig)", v199, v196, v197, v198);
LABEL_306:
      v39 = Word;
      v64 = 0;
      if (!Word)
      {
        goto LABEL_283;
      }

      goto LABEL_307;
    case 1767990114:
      v65 = &dataPointerOut[v45];
      v229 = 0;
      v228 = 0u;
      v226 = 0;
      v223 = 0;
      v224 = &dataPointerOut[v45];
      v225 = v212;
      v227 = &dataPointerOut[v45];
      *&v228 = &dataPointerOut[v45 + v212];
      if (!CopyNextWord(&v224))
      {
        v66 = OUTLINED_FUNCTION_6_16();
        if (GetBits(v66, v67) == 1)
        {
          UnpackLEB128(&v224, &v223);
          OUTLINED_FUNCTION_12_9();
          if (v38)
          {
            v69 = 0;
          }

          else
          {
            OUTLINED_FUNCTION_3_20();
          }

          if (v69 < v68)
          {
            fig_log_get_emitter("com.apple.coremedia", "");
            OUTLINED_FUNCTION_27_2();
            v167 = 979;
          }

          else
          {
            v222 = 0;
            UnpackOBUHeader(&v224, &v222, &v223 + 1);
            if (v222 == 31)
            {
              OUTLINED_FUNCTION_12_9();
              if (v38)
              {
                v131 = 0;
              }

              else
              {
                OUTLINED_FUNCTION_3_20();
              }

              if (v131 < HIDWORD(v223))
              {
                fig_log_get_emitter("com.apple.coremedia", "");
                OUTLINED_FUNCTION_27_2();
                v167 = 985;
              }

              else if (HIDWORD(v223) <= 5)
              {
                fig_log_get_emitter("com.apple.coremedia", "");
                OUTLINED_FUNCTION_27_2();
                v167 = 987;
              }

              else
              {
                v132 = OUTLINED_FUNCTION_13_7();
                if (GetBits(v132, v133) == 1767992678)
                {
                  v134 = OUTLINED_FUNCTION_6_16();
                  v136 = GetBits(v134, v135);
                  v137 = OUTLINED_FUNCTION_6_16();
                  v139 = GetBits(v137, v138);
                  v140 = *v46;
                  v141 = CFStringCreateWithFormat(*v46, 0, @"%03d.%03d.", v136, v139);
                  if (HIDWORD(v223) >= 7)
                  {
                    if ((HIDWORD(v223) - 6) >> 29)
                    {
                      fig_log_get_emitter("com.apple.coremedia", "");
                      OUTLINED_FUNCTION_27_2();
                      v183 = 4294954580;
                      v184 = 997;
                      goto LABEL_252;
                    }

                    SkipBits(&v224, 8 * (HIDWORD(v223) - 6));
                  }

                  UnpackOBUHeader(&v224, &v222, &v223 + 1);
                  if (v222)
                  {
                    fig_log_get_emitter("com.apple.coremedia", "");
                    OUTLINED_FUNCTION_27_2();
                    v183 = 4294954580;
                    v184 = 1002;
                  }

                  else
                  {
                    OUTLINED_FUNCTION_12_9();
                    if (v38)
                    {
                      v142 = 0;
                    }

                    else
                    {
                      OUTLINED_FUNCTION_3_20();
                    }

                    if (v142 < HIDWORD(v223))
                    {
                      fig_log_get_emitter("com.apple.coremedia", "");
                      OUTLINED_FUNCTION_27_2();
                      v183 = 4294954580;
                      v184 = 1004;
                    }

                    else
                    {
                      UnpackLEB128(&v224, &v223);
                      if (HIDWORD(v223) >= v223)
                      {
                        v143 = HIDWORD(v223) - v223;
                      }

                      else
                      {
                        v143 = 0;
                      }

                      if (v143 <= 3)
                      {
                        fig_log_get_emitter("com.apple.coremedia", "");
                        OUTLINED_FUNCTION_27_2();
                        v183 = 4294954580;
                        v184 = 1012;
                      }

                      else
                      {
                        v144 = OUTLINED_FUNCTION_13_7();
                        v146 = GetBits(v144, v145);
                        v147 = v143 - 4;
                        UnpackLEB128(&v224, &v223);
                        if (v147 >= v223)
                        {
                          v148 = v147 - v223;
                        }

                        else
                        {
                          v148 = 0;
                        }

                        if (v148 <= 1)
                        {
                          fig_log_get_emitter("com.apple.coremedia", "");
                          OUTLINED_FUNCTION_27_2();
                          v183 = 4294954580;
                          v184 = 1019;
                        }

                        else
                        {
                          v149 = OUTLINED_FUNCTION_17_6();
                          GetBits(v149, v150);
                          v151 = v148 - 2;
                          switch(v146)
                          {
                            case 1836069985:
                              if (v151 <= 0xD)
                              {
                                fig_log_get_emitter("com.apple.coremedia", "");
                                OUTLINED_FUNCTION_27_2();
                                v183 = 4294954580;
                                v184 = 1043;
                              }

                              else
                              {
                                v175 = 0;
                                v221 = 0;
                                v219 = 0;
                                v220 = 0;
                                OUTLINED_FUNCTION_12_9();
                                if (!v38)
                                {
                                  v175 = v177 - (v229 + v176) + (HIDWORD(v228) >> 3);
                                }

                                if (MP4Brige_ParseDecoderConfigDescriptor(&v224, &v221, &v220, &v219))
                                {
                                  fig_log_get_emitter("com.apple.coremedia", "");
                                  OUTLINED_FUNCTION_27_2();
                                  v183 = 4294954582;
                                  v184 = 1050;
                                }

                                else
                                {
                                  OUTLINED_FUNCTION_12_9();
                                  if (v38)
                                  {
                                    v178 = 0;
                                  }

                                  else
                                  {
                                    OUTLINED_FUNCTION_3_20();
                                  }

                                  v186 = v175 - v178;
                                  if (v186 > v151)
                                  {
                                    fig_log_get_emitter("com.apple.coremedia", "");
                                    OUTLINED_FUNCTION_27_2();
                                    v183 = 4294954580;
                                    v184 = 1055;
                                  }

                                  else if (v221 == 64)
                                  {
                                    if (v219 > v151 - v186)
                                    {
                                      fig_log_get_emitter("com.apple.coremedia", "");
                                      OUTLINED_FUNCTION_27_2();
                                      v183 = 4294954580;
                                      v184 = 1060;
                                    }

                                    else
                                    {
                                      v218 = 0;
                                      if (!MP4Bridge_ParseMPEG4AudioSpecificConfig(&v65[v220], v219, &v218, 0))
                                      {
                                        v152 = CFStringCreateWithFormat(v140, 0, @"%@mp4a.40.%u", v141, v218);
                                        goto LABEL_266;
                                      }

                                      fig_log_get_emitter("com.apple.coremedia", "");
                                      OUTLINED_FUNCTION_27_2();
                                      v183 = 4294954582;
                                      v184 = 1065;
                                    }
                                  }

                                  else
                                  {
                                    fig_log_get_emitter("com.apple.coremedia", "");
                                    OUTLINED_FUNCTION_27_2();
                                    v183 = 4294954582;
                                    v184 = 1057;
                                  }
                                }
                              }

                              break;
                            case 1716281667:
                              if (v151 > 0x25)
                              {
                                v152 = CFStringCreateWithFormat(v140, 0, @"%@fLaC", v141, v202);
                                goto LABEL_266;
                              }

                              fig_log_get_emitter("com.apple.coremedia", "");
                              OUTLINED_FUNCTION_27_2();
                              v183 = 4294954580;
                              v184 = 1031;
                              break;
                            case 1768973165:
                              if (v151 > 5)
                              {
                                v152 = CFStringCreateWithFormat(v140, 0, @"%@ipcm", v141, v202);
                                goto LABEL_266;
                              }

                              fig_log_get_emitter("com.apple.coremedia", "");
                              OUTLINED_FUNCTION_27_2();
                              v183 = 4294954580;
                              v184 = 1036;
                              break;
                            case 1332770163:
                              if (v151 > 0xA)
                              {
                                v152 = CFStringCreateWithFormat(v140, 0, @"%@Opus", v141, v202);
LABEL_266:
                                v64 = v152;
LABEL_267:
                                if (v141)
                                {
                                  CFRelease(v141);
                                }

                                goto LABEL_283;
                              }

                              fig_log_get_emitter("com.apple.coremedia", "");
                              OUTLINED_FUNCTION_27_2();
                              v183 = 4294954580;
                              v184 = 1026;
                              break;
                            default:
                              fig_log_get_emitter("com.apple.coremedia", "");
                              OUTLINED_FUNCTION_27_2();
                              v183 = 4294954580;
                              v184 = 1073;
                              break;
                          }
                        }
                      }
                    }
                  }

LABEL_252:
                  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v179, v183, "(Fig)", v184, v180, v181, v182);
                  v64 = 0;
                  goto LABEL_267;
                }

                fig_log_get_emitter("com.apple.coremedia", "");
                OUTLINED_FUNCTION_27_2();
                v167 = 989;
              }
            }

            else
            {
              fig_log_get_emitter("com.apple.coremedia", "");
              OUTLINED_FUNCTION_27_2();
              v167 = 983;
            }
          }
        }

        else
        {
          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_27_2();
          v167 = 976;
        }

        goto LABEL_313;
      }

LABEL_314:
      v64 = 0;
      goto LABEL_283;
  }

  v224 = 0;
  LOBYTE(v219) = 0;
  LOWORD(v220) = 0;
  if (a3 == 1633772320 || a3 == 1633772392 || a3 == 1633772400)
  {
    v168 = &v224;
  }

  else
  {
    v168 = 0;
  }

  if (FigMP4Bridge_GetESDSObjectTypeAndCopyDecoderSpecificInfo(&dataPointerOut[v45], v212, &v219, &v220, v168))
  {
    v64 = 0;
  }

  else
  {
    v169 = v220;
    if (v219 == 64)
    {
      if (!v220 || (v220 != 29 ? (v170 = v220 == 5) : (v170 = 1), v170))
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_27_2();
        v39 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v171, 0xFFFFCE54uLL, "(Fig)", 0x2A3, v172, v173, v174);
        v64 = 0;
        if (v39)
        {
          goto LABEL_280;
        }

        goto LABEL_279;
      }

      if (v220 == 2)
      {
        if (FigCFDictionaryGetBooleanValue(v224))
        {
          LOWORD(v220) = 5;
        }

        if (FigCFDictionaryGetBooleanValue(v224))
        {
          v169 = 29;
          LOWORD(v220) = 29;
        }

        else
        {
          v169 = v220;
        }
      }

      v185 = CFStringCreateWithFormat(*v46, 0, @"40.%u", v169);
    }

    else if ((v219 & 0xFD) == 0x69 && v220)
    {
      v185 = CFStringCreateWithFormat(*v46, 0, @"%X.%u", v219, v220);
    }

    else
    {
      v185 = CFStringCreateWithFormat(*v46, 0, @"%X", v219);
    }

    v64 = v185;
  }

LABEL_279:
  v39 = 0;
LABEL_280:
  if (v224)
  {
    CFRelease(v224);
  }

  if (!v39)
  {
    goto LABEL_283;
  }

LABEL_307:
  if (v64)
  {
LABEL_286:
    CFRelease(v64);
  }

LABEL_291:
  if (Mutable)
  {
LABEL_292:
    CFRelease(Mutable);
  }

  return v39;
}

uint64_t AdvanceToNextStartCode(uint64_t a1)
{
  for (i = a1; ; a1 = i)
  {
    result = PeekBits(a1, 0x18u);
    if (result == 1)
    {
      break;
    }

    v3 = *(i + 16);
    v4 = *(i + 24);
    if (v3 >= v4 || v4 - v3 <= 4 && !*(i + 36))
    {
      break;
    }

    GetBits(i, 8u);
  }

  return result;
}

size_t FigMP4Bridge_GetESDSObjectTypeAndCopyDecoderSpecificInfo_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "(Fig)", 0x205, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigMP4Bridge_GetESDSObjectTypeAndCopyDecoderSpecificInfo_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "(Fig)", 0x222, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigMP4Bridge_GetESDSObjectTypeAndCopyDecoderSpecificInfo_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "(Fig)", 0x20F, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigMP4Bridge_GetESDSObjectTypeAndCopyDecoderSpecificInfo_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "(Fig)", 0x20C, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigMP4Bridge_GetESDSObjectTypeAndCopyDecoderSpecificInfo_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "(Fig)", 0x20B, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigMP4Bridge_GetESDSObjectTypeAndCopyDecoderSpecificInfo_cold_6(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "(Fig)", 0x20A, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigMP4Bridge_GetESDSObjectTypeAndCopyDecoderSpecificInfo_cold_7()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFCE0EuLL, "(Fig)", 0xC1C, v1, v2, v3);
}

size_t FigMP4Bridge_GetESDSObjectTypeAndCopyDecoderSpecificInfo_cold_8()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFCE56uLL, "(Fig)", 0xBF4, v1, v2, v3);
}

size_t FigMP4Bridge_GetESDSObjectTypeAndCopyDecoderSpecificInfo_cold_9()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFCE56uLL, "(Fig)", 0xBEE, v1, v2, v3);
}

size_t FigMP4Bridge_GetESDSObjectTypeAndCopyDecoderSpecificInfo_cold_10()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFCE56uLL, "(Fig)", 0xBEC, v1, v2, v3);
}

size_t FigMP4Bridge_GetESDSObjectTypeAndCopyDecoderSpecificInfo_cold_11()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFCE56uLL, "(Fig)", 0xBE3, v1, v2, v3);
}

size_t FigMP4Bridge_GetESDSObjectTypeAndCopyDecoderSpecificInfo_cold_12(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "(Fig)", 0xBC0, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigMP4Bridge_GetESDSObjectTypeAndCopyDecoderSpecificInfo_cold_13(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE0EuLL, "(Fig)", 0xBCB, v3, v4, v5);
  *a1 = result;
  return result;
}

BOOL FigMP4Bridge_GetESDSObjectTypeAndCopyDecoderSpecificInfo_cold_14(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  v6 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "(Fig)", 0x54C, v3, v4, v5);
  *a1 = v6;
  return v6 == 0;
}

size_t GetBits_cold_1()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFCE56uLL, "(Fig)", 0x102, v1, v2, v3);
}

size_t GetBERInteger_cold_1()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFCE56uLL, "(Fig)", 0x1AC, v1, v2, v3);
}

size_t MP4Brige_ParseDecoderConfigDescriptor_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "(Fig)", 0x1C4, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t MP4Brige_ParseDecoderConfigDescriptor_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "(Fig)", 0x1D1, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t MP4Brige_ParseDecoderConfigDescriptor_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "(Fig)", 0x1E3, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t MP4Brige_ParseDecoderConfigDescriptor_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "(Fig)", 0x1E2, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t MP4Brige_ParseDecoderConfigDescriptor_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "(Fig)", 0x1E0, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t MP4Brige_ParseDecoderConfigDescriptor_cold_6(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "(Fig)", 0x1CE, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t MP4Brige_ParseDecoderConfigDescriptor_cold_7(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "(Fig)", 0x1CB, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t MP4Brige_ParseDecoderConfigDescriptor_cold_8(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "(Fig)", 0x1C9, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t MP4Bridge_ParseProgramConfigElement_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "(Fig)", 0x9EF, v3, v4, v5);
  *a1 = result;
  return result;
}

uint64_t ntcxpc_SetEventHandler(uint64_t a1, uint64_t a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  if (!*(DerivedStorage + 16))
  {
    v5 = DerivedStorage;
    if (a3)
    {
      a3 = _Block_copy(a3);
    }

    v6 = *(v5 + 8);
    if (v6)
    {
      _Block_release(v6);
    }

    *(v5 + 8) = a3;
  }

  return 0;
}

size_t ntcxpc_EnqueuePackageWithPriority(uint64_t a1, unsigned int *a2, CMBlockBufferRef theBuffer, int a4)
{
  xdict = 0;
  if (theBuffer)
  {
    DataLength = CMBlockBufferGetDataLength(theBuffer);
  }

  else
  {
    DataLength = 0;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  if (*(DerivedStorage + 16))
  {
    v12 = 0;
    v11 = 0;
  }

  else if (DataLength >= *a2)
  {
    v12 = 0;
    v11 = 4294954516;
  }

  else
  {
    v10 = DerivedStorage;
    v11 = FigXPCCreateBasicMessage(0x656E7175u, 0, &xdict);
    v12 = xdict;
    if (!v11)
    {
      xpc_dictionary_set_data(xdict, "enqueuePkgHeader", a2, *a2 - DataLength);
      v11 = FigXPCMessageSetBlockBuffer(xdict, "enqueuePackage", theBuffer);
      v12 = xdict;
      if (!v11)
      {
        xpc_dictionary_set_int64(xdict, "enqueuePriority", a4);
        v11 = FigXPCRemoteClientSendSyncMessage(*v10, xdict);
        v12 = xdict;
      }
    }
  }

  FigXPCRelease(v12);
  return v11;
}

uint64_t ntcxpc_FlushPendingPackagesWithPriority(uint64_t a1, int a2)
{
  xdict = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  if (*(DerivedStorage + 16))
  {
    v6 = 0;
    v5 = 0;
  }

  else
  {
    v4 = DerivedStorage;
    v5 = FigXPCCreateBasicMessage(0x666C7368u, 0, &xdict);
    v6 = xdict;
    if (!v5)
    {
      xpc_dictionary_set_int64(xdict, "flushPendingPackage", a2);
      v5 = FigXPCRemoteClientSendSyncMessage(*v4, xdict);
      v6 = xdict;
    }
  }

  FigXPCRelease(v6);
  return v5;
}

void ntcxpc_handleServerMessage_cold_2(void *a1, CMBlockBufferRef *a2, uint64_t a3)
{
  int64 = xpc_dictionary_get_int64(a1, kNeroTransportConnectionEventHandler_Type);
  if (!FigXPCMessageCreateBlockBufferData(*MEMORY[0x1E695E480], a1, kNeroTransportConnectionEventHandler_BBuf, a2))
  {
    v7 = *(a3 + 8);
    if (v7)
    {
      (*(v7 + 16))(v7, int64, *a2);
    }
  }

  if (*a2)
  {
    CFRelease(*a2);
  }
}

size_t FigMetricEventTimelineCreateRemote(uint64_t a1, int64_t a2, uint64_t *a3, uint64_t a4, CFTypeRef *a5)
{
  v29 = 0;
  xdict = 0;
  if (!a5)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    v8 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v19, 0xFFFFB406uLL, "metricevent", 0x16F, v20, v21, v22);
LABEL_15:
    v17 = v8;
    v9 = 0;
    goto LABEL_13;
  }

  v8 = metremote_ensureClientEstablished();
  if (v8)
  {
    goto LABEL_15;
  }

  v8 = FigXPCCreateBasicMessage(0x63726574u, 0, &xdict);
  if (v8)
  {
    goto LABEL_15;
  }

  xpc_dictionary_set_int64(xdict, "MaxNoOfClasses", a2);
  v9 = xpc_array_create(0, 0);
  if (v9)
  {
    if (a2 >= 1)
    {
      v10 = a3;
      v11 = a2;
      do
      {
        v12 = *v10++;
        xpc_array_set_int64(v9, 0xFFFFFFFFFFFFFFFFLL, v12);
        --v11;
      }

      while (v11);
    }

    xpc_dictionary_set_value(xdict, "EventCountByClassXPCArray", v9);
    v13 = FigXPCRemoteClientSendSyncMessageCreatingReply(gFigMetricEventTimelineRemoteClient, xdict, &v29);
    if (v13)
    {
      goto LABEL_12;
    }

    uint64 = xpc_dictionary_get_uint64(v29, ".objectID");
    if (uint64)
    {
      v15 = uint64;
      AllocatorForMedia = FigGetAllocatorForMedia();
      v13 = metremote_create(AllocatorForMedia, v15, a2, a3, a5);
      if (!v13)
      {
        v13 = FigXPCRemoteClientAssociateObject(gFigMetricEventTimelineRemoteClient, *a5, v15);
      }

      goto LABEL_12;
    }

    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    v27 = 4294947844;
    v28 = 389;
  }

  else
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    v27 = 4294947845;
    v28 = 378;
  }

  v13 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v23, v27, "metricevent", v28, v24, v25, v26);
LABEL_12:
  v17 = v13;
LABEL_13:
  FigXPCRelease(v9);
  FigXPCRelease(xdict);
  FigXPCRelease(v29);
  return v17;
}

size_t FigMetricEventTimelineCreateRemoteWithObjectID(uint64_t a1, const void *a2, uint64_t a3, uint64_t *a4, void *a5)
{
  cf = 0;
  if (a5)
  {
    v10 = metremote_ensureClientEstablished();
    if (v10)
    {
      return v10;
    }

    v11 = FigXPCRemoteClientRetainCopiedObject(gFigMetricEventTimelineRemoteClient, a2, &cf);
    v12 = cf;
    if (v11 || !cf && ((AllocatorForMedia = FigGetAllocatorForMedia(), v11 = metremote_create(AllocatorForMedia, a2, a3, a4, &cf), v12 = cf, v11) || (v11 = FigXPCRemoteClientAssociateObject(gFigMetricEventTimelineRemoteClient, cf, a2), v12 = cf, v11)))
    {
      v14 = v11;
      if (v12)
      {
        CFRelease(v12);
      }
    }

    else
    {
      v14 = 0;
      *a5 = v12;
    }

    return v14;
  }

  else
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFB406uLL, "metricevent", 0x19B, v5, v17, v18);
  }
}

uint64_t metremote_handleServerMessage(uint64_t a1, void *a2)
{
  v18 = 0;
  OpCode = FigXPCMessageGetOpCode(a2, &v18);
  if (OpCode)
  {
    return OpCode;
  }

  if (v18 != 1702260340)
  {
    return 4294951138;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  cf = 0;
  v12 = FigMetricEventTimelineClientServerXPC_DeserializeAndCopyEvent(a2, &cf, v6, v7, v8, v9, v10, v11);
  if (v12)
  {
    goto LABEL_6;
  }

  v13 = *(DerivedStorage + 16);
  v14 = cf;
  v15 = *(*(CMBaseObjectGetVTable(v13) + 16) + 40);
  if (v15)
  {
    v12 = v15(v13, a1, v14);
LABEL_6:
    v16 = v12;
    goto LABEL_9;
  }

  v16 = 4294954514;
LABEL_9:
  if (cf)
  {
    CFRelease(cf);
  }

  return v16;
}

uint64_t metremote_finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  FigXPCRemoteClientDisassociateObject(gFigMetricEventTimelineRemoteClient, *DerivedStorage);
  v2 = 0;
  v6 = 0;
  if (!*(DerivedStorage + 8))
  {
    v3 = FigXPCCreateBasicMessage(0x64697370u, *DerivedStorage, &v6);
    v2 = v6;
    if (!v3)
    {
      FigXPCRemoteClientSendAsyncMessage(gFigMetricEventTimelineRemoteClient, v6);
      v2 = v6;
    }
  }

  FigXPCRelease(v2);
  v4 = *(DerivedStorage + 16);
  if (v4)
  {
    CFRelease(v4);
  }

  return FigXPCRemoteClientKillServerOnTimeout(gFigMetricEventTimelineRemoteClient, 0, "metremote_finalize", 0);
}

uint64_t metremote_registerSubscriber(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v20 = 0;
  if (!a2)
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v12 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFB406uLL, "metricevent", 0x7F, v4, v18, v19);
    goto LABEL_9;
  }

  v9 = DerivedStorage;
  v10 = *(DerivedStorage + 16);
  v11 = *(*(CMBaseObjectGetVTable(v10) + 16) + 8);
  if (!v11)
  {
    v14 = 0;
    v15 = 4294954514;
    goto LABEL_7;
  }

  v12 = v11(v10, a2, a3, a4);
  if (v12)
  {
LABEL_9:
    v15 = v12;
    v14 = 0;
    goto LABEL_7;
  }

  v13 = FigXPCCreateBasicMessage(0x72656773u, *v9, &v20);
  v14 = v20;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = FigXPCRemoteClientSendSyncMessage(gFigMetricEventTimelineRemoteClient, v20);
    v14 = v20;
  }

LABEL_7:
  FigXPCRelease(v14);
  return v15;
}

uint64_t metremote_subscribeByEventID(uint64_t a1, uint64_t a2, int64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v34 = 0;
  if (!a2)
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v10 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFB406uLL, "metricevent", 0x94, v3, v30, v31);
    goto LABEL_9;
  }

  v7 = DerivedStorage;
  v8 = *(DerivedStorage + 16);
  v9 = *(*(CMBaseObjectGetVTable(v8) + 16) + 16);
  if (!v9)
  {
    v19 = 0;
    a2 = 4294954514;
    goto LABEL_7;
  }

  v10 = v9(v8, a2, a3);
  if (v10)
  {
LABEL_9:
    a2 = v10;
    v19 = 0;
    goto LABEL_7;
  }

  v11 = FigXPCCreateBasicMessage(0x73657669u, *v7, &v34);
  v19 = OUTLINED_FUNCTION_1_31(v11, v12, v13, v14, v15, v16, v17, v18, v32, v34);
  if (!a2)
  {
    xpc_dictionary_set_int64(v19, "EventID", a3);
    v20 = FigXPCRemoteClientSendSyncMessage(gFigMetricEventTimelineRemoteClient, v34);
    v19 = OUTLINED_FUNCTION_1_31(v20, v21, v22, v23, v24, v25, v26, v27, v33, v34);
  }

LABEL_7:
  FigXPCRelease(v19);
  return a2;
}

uint64_t metremote_subscribeByClassID(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v34 = 0;
  if (!a2)
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v10 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFB406uLL, "metricevent", 0xAB, v3, v30, v31);
    goto LABEL_9;
  }

  v7 = DerivedStorage;
  v8 = *(DerivedStorage + 16);
  v9 = *(*(CMBaseObjectGetVTable(v8) + 16) + 24);
  if (!v9)
  {
    v19 = 0;
    a2 = 4294954514;
    goto LABEL_7;
  }

  v10 = v9(v8, a2, a3);
  if (v10)
  {
LABEL_9:
    a2 = v10;
    v19 = 0;
    goto LABEL_7;
  }

  v11 = FigXPCCreateBasicMessage(0x636C7369u, *v7, &v34);
  v19 = OUTLINED_FUNCTION_1_31(v11, v12, v13, v14, v15, v16, v17, v18, v32, v34);
  if (!a2)
  {
    xpc_dictionary_set_int64(v19, "ClassID", a3);
    v20 = FigXPCRemoteClientSendSyncMessage(gFigMetricEventTimelineRemoteClient, v34);
    v19 = OUTLINED_FUNCTION_1_31(v20, v21, v22, v23, v24, v25, v26, v27, v33, v34);
  }

LABEL_7:
  FigXPCRelease(v19);
  return a2;
}

uint64_t metremote_subscribeToAllEvents(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v16 = 0;
  if (!a2)
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v8 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFB406uLL, "metricevent", 0xC2, v2, v14, v15);
    goto LABEL_9;
  }

  v5 = DerivedStorage;
  v6 = *(DerivedStorage + 16);
  v7 = *(*(CMBaseObjectGetVTable(v6) + 16) + 32);
  if (!v7)
  {
    v10 = 0;
    v11 = 4294954514;
    goto LABEL_7;
  }

  v8 = v7(v6, a2);
  if (v8)
  {
LABEL_9:
    v11 = v8;
    v10 = 0;
    goto LABEL_7;
  }

  v9 = FigXPCCreateBasicMessage(0x73746165u, *v5, &v16);
  v10 = v16;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = FigXPCRemoteClientSendSyncMessage(gFigMetricEventTimelineRemoteClient, v16);
    v10 = v16;
  }

LABEL_7:
  FigXPCRelease(v10);
  return v11;
}

uint64_t met_publishEvent_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v24 = 0;
  if (!a3)
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v11 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFB406uLL, "metricevent", 0xDB, v3, v22, v23);
    goto LABEL_10;
  }

  v8 = DerivedStorage;
  v9 = *(DerivedStorage + 16);
  v10 = *(*(CMBaseObjectGetVTable(v9) + 16) + 40);
  if (!v10)
  {
    v18 = 0;
    v19 = 4294954514;
    goto LABEL_8;
  }

  v11 = v10(v9, a2, a3);
  if (v11)
  {
LABEL_10:
    v19 = v11;
    v18 = 0;
    goto LABEL_8;
  }

  v12 = FigXPCCreateBasicMessage(0x70756273u, *v8, &v24);
  v18 = v24;
  if (v12 || (v12 = FigMetricEventTimelineClientServerXPC_SerializeEvent(v24, a1, a3, v13, v14, v15, v16, v17), v18 = v24, v12))
  {
    v19 = v12;
  }

  else
  {
    v19 = FigXPCRemoteClientSendSyncMessage(gFigMetricEventTimelineRemoteClient, v24);
    v18 = v24;
  }

LABEL_8:
  FigXPCRelease(v18);
  return v19;
}

size_t metremote_create_cold_1(_DWORD *a1)
{
  emitter = fig_log_get_emitter("com.apple.coremedia", "");
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFB406uLL, "metricevent", 0x134, v1, v4, v5);
  *a1 = result;
  return result;
}

uint64_t FigVirtualCaptureCardServerReplyingMessageHandler(_xpc_connection_s *a1, void *a2, void *a3)
{
  v24 = 0;
  OpCode = FigXPCMessageGetOpCode(a2, &v24);
  if (OpCode)
  {
    return OpCode;
  }

  if (v24 == 1668441400)
  {
    if (qword_1ED4CC9B8 != -1)
    {
      dispatch_once(&qword_1ED4CC9B8, &__block_literal_global_27);
    }

    value = 0;
    FigSimpleMutexLock(qword_1ED4CC9B0);
    v7 = _MergedGlobals_32;
    if (!_MergedGlobals_32)
    {
      v8 = FigVirtualCaptureCardCreate(*MEMORY[0x1E695E480], 0, &_MergedGlobals_32);
      if (v8)
      {
        v9 = v8;
LABEL_10:
        FigSimpleMutexUnlock(qword_1ED4CC9B0);
        return v9;
      }

      v7 = _MergedGlobals_32;
    }

    v9 = FigXPCServerAssociateObjectWithConnection(a1, v7, 0, 0, 0, &value);
    if (!v9)
    {
      xpc_dictionary_set_uint64(a3, ".objectID", value);
    }

    goto LABEL_10;
  }

  uint64 = xpc_dictionary_get_uint64(a2, ".objectID");
  value = 0;
  v11 = FigXPCServerLookupAndRetainAssociatedObject(a1, uint64, &value, 0);
  if (v11)
  {
    v9 = v11;
    goto LABEL_44;
  }

  if (!value)
  {
    return 4294954513;
  }

  v12 = CFGetTypeID(value);
  if (v12 != FigVirtualCaptureCardGetTypeID())
  {
    v9 = 4294954516;
LABEL_44:
    v22 = value;
    if (!value)
    {
      return v9;
    }

    goto LABEL_38;
  }

  v13 = value;
  if (v24 == 778268793)
  {
    v14 = FigXPCHandleStdCopyPropertyMessage(value, a2, a3);
LABEL_32:
    v9 = v14;
    if (!v13)
    {
      return v9;
    }

    goto LABEL_37;
  }

  if (v24 == 1936224119)
  {
    v15 = *(*(CMBaseObjectGetVTable(value) + 16) + 8);
    if (!v15)
    {
      goto LABEL_23;
    }

LABEL_21:
    v14 = v15(v13);
    goto LABEL_32;
  }

  if (v24 != 1919251318)
  {
    if (v24 != 1935767141)
    {
      if (v24 != 779314548)
      {
        v9 = 4294951138;
        if (!value)
        {
          return v9;
        }

        goto LABEL_37;
      }

      v14 = FigXPCHandleStdSetPropertyMessage(value, a2);
      goto LABEL_32;
    }

    v15 = *(*(CMBaseObjectGetVTable(value) + 16) + 24);
    if (!v15)
    {
LABEL_23:
      v9 = 4294954514;
      if (!v13)
      {
        return v9;
      }

      goto LABEL_37;
    }

    goto LABEL_21;
  }

  string = xpc_dictionary_get_string(a2, "FileURL");
  v17 = CFStringCreateWithCString(0, string, 0x8000100u);
  if (!v17)
  {
    v9 = 4294954510;
    if (!v13)
    {
      return v9;
    }

    goto LABEL_37;
  }

  v18 = v17;
  v19 = CFURLCreateWithString(0, v17, 0);
  if (v19)
  {
    v20 = v19;
    v21 = *(*(CMBaseObjectGetVTable(v13) + 16) + 16);
    if (v21)
    {
      v9 = v21(v13, v20);
    }

    else
    {
      v9 = 4294954514;
    }

    CFRelease(v18);
  }

  else
  {
    v9 = 4294954510;
    v20 = v18;
  }

  CFRelease(v20);
  if (v13)
  {
LABEL_37:
    v22 = v13;
LABEL_38:
    CFRelease(v22);
  }

  return v9;
}

uint64_t FigVirtualCaptureCardServerNoReplyMessageHandler(_xpc_connection_s *a1, void *a2)
{
  v9 = 0;
  cf = 0;
  OpCode = FigXPCMessageGetOpCode(a2, &v9);
  if (OpCode)
  {
    goto LABEL_5;
  }

  uint64 = xpc_dictionary_get_uint64(a2, ".objectID");
  OpCode = FigXPCServerLookupAndRetainAssociatedObject(a1, uint64, &cf, 0);
  if (OpCode)
  {
    goto LABEL_5;
  }

  if (v9 == 1684632432)
  {
    OpCode = FigXPCServerDisassociateObjectWithConnection(a1, uint64);
LABEL_5:
    v6 = OpCode;
    goto LABEL_7;
  }

  v6 = 4294951138;
LABEL_7:
  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

uint64_t FigCustomURLHandlerRemoteCreateWithID(const void *a1, const void *a2, uint64_t a3, CFTypeRef *a4)
{
  cf = 0;
  v18 = 0;
  if (!a2)
  {
    return 4294954516;
  }

  v8 = *MEMORY[0x1E695E480];
  ClassID = FigCustomURLHandlerGetClassID();
  ServerPID = CMDerivedObjectCreate(v8, &kFigCustomURLHandlerRemote_VTable, ClassID, &cf, v10, v11, v12, v13);
  if (ServerPID || (DerivedStorage = CMBaseObjectGetDerivedStorage(cf), *(DerivedStorage + 24) = dispatch_queue_create("com.apple.coremedia.customurlhandler.remotehandler", 0), ServerPID = FigXPCRemoteClientGetServerPID(a2, &v18), ServerPID))
  {
    v16 = ServerPID;
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    *(DerivedStorage + 8) = v18;
    *(DerivedStorage + 32) = a1;
    *DerivedStorage = CFRetain(a2);
    FigXPCRemoteClientAssociateObject(a2, cf, a1);
    v16 = FigCustomURLHandlerCreate(v8, "FigCustomURLHandlerRemoteShim", cf, *(DerivedStorage + 24), &FigCustomURLHandlerRemoteCreateWithID_sFigCustomURLHandlerRemoteCallbacks, a3, (DerivedStorage + 16));
    *a4 = cf;
  }

  return v16;
}

void figCustomURLHandlerRemote_shimCancelRequestCallback(uint64_t a1, uint64_t a2, const __CFDictionary *a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  xdict = 0;
  cf = 0;
  if (!*(DerivedStorage + 40))
  {
    v13 = DerivedStorage;
    if (!FigCustomURLRequestInfoCreateMutableCopy(*MEMORY[0x1E695E480], a3, &cf, v8, v9, v10, v11, v12))
    {
      v14 = FigCustomURLRequestInfoSetNetworkHistory(cf, 0);
      if (v14)
      {
        v15 = v14;
        emitter = fig_log_get_emitter("com.apple.coremedia", "");
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v15, "<< CustomURLHandlerRemoteXPC >>", 0x251, v4, v17, v18);
      }

      else if (!FigCustomURLRequestInfoMakeNSSecureCodingTypesSerializable(cf) && !FigXPCCreateBasicMessage(0x63684352u, *(v13 + 32), &xdict))
      {
        xpc_dictionary_set_uint64(xdict, "CustomURLHandler_RequestID", a4);
        FigXPCMessageSetCFDictionary(xdict, "CustomURLHandler_RequestInfo", cf);
        FigXPCRemoteClientSendAsyncMessage(*v13, xdict);
      }
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  FigXPCRelease(xdict);
}

void figCustomURLHandler_handleDataCallbackMessageWithRegisteredRequestInfo(uint64_t a1, uint64_t a2, const __CFData *a3, int a4, const void *a5, const void *a6, const void *a7, NSObject *a8, uint64_t a9, CFTypeRef a10)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v41 = 0;
  v42 = 0;
  v39 = 0;
  v40 = 0;
  cf = 0;
  BytePtr = CFDataGetBytePtr(a3);
  if (a4)
  {
    goto LABEL_27;
  }

  v19 = *BytePtr;
  v20 = *MEMORY[0x1E695E480];
  if (!FigXPCMessageCreateBlockBufferData(*MEMORY[0x1E695E480], *BytePtr, "CustomURLHandler_BlockBuffer", &v40))
  {
    uint64 = xpc_dictionary_get_uint64(v19, "CustomURLHandler_CallbackFlags");
    if (!FigXPCMessageCopyCFError(v19, "CustomURLHandler_Error", &v39))
    {
      if (uint64)
      {
        if (FigXPCMessageCopyCFDictionary(v19, "CustomURLHandler_FinalReport", &cf))
        {
          goto LABEL_25;
        }
      }

      else if (!a6)
      {
        if (FigXPCMessageCopyCFDictionary(v19, "CustomURLHandler_ResponseInfo", &v42))
        {
          goto LABEL_25;
        }

        if (v42)
        {
          if (FigCustomURLResponseInfoCreateMutableCopy(v20, v42, &v41, v30, v31, v32, v33, v34))
          {
            goto LABEL_25;
          }

          if (FigCustomURLResponseInfoDeserializeNSSecureCodingTypes(v41))
          {
            goto LABEL_25;
          }

          v35 = *(DerivedStorage + 16);
          v36 = v41;
          v37 = *(*(CMBaseObjectGetVTable(v35) + 16) + 8);
          if (!v37 || v37(v35, a2, v36))
          {
            goto LABEL_25;
          }
        }
      }

      v22 = v40;
      if (!v40 && (uint64 & 0xFFFFFFFE) == 0)
      {
        v23 = v39;
        if ((uint64 & 1) != 0 || !v39)
        {
          if ((uint64 & 1) == 0)
          {
            goto LABEL_25;
          }

LABEL_17:
          v27 = *(DerivedStorage + 16);
          v28 = cf;
          v29 = *(*(CMBaseObjectGetVTable(v27) + 16) + 24);
          if (v29)
          {
            v29(v27, a2, v23, v28);
          }

          goto LABEL_25;
        }
      }

      v24 = *(DerivedStorage + 16);
      v25 = *(*(CMBaseObjectGetVTable(v24) + 16) + 16);
      if (v25)
      {
        v26 = v25(v24, a2, v22);
        if ((uint64 & 1) != 0 && !v26)
        {
          v23 = v39;
          goto LABEL_17;
        }
      }
    }
  }

LABEL_25:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_27:
  if (v39)
  {
    CFRelease(v39);
  }

  if (v40)
  {
    CFRelease(v40);
  }

  if (v42)
  {
    CFRelease(v42);
  }

  if (v41)
  {
    CFRelease(v41);
  }

  if (a5)
  {
    CFRelease(a5);
  }

  if (a6)
  {
    CFRelease(a6);
  }

  if (a7)
  {
    CFRelease(a7);
  }

  if (a8)
  {
    dispatch_release(a8);
  }

  if (a10)
  {
    CFRelease(a10);
  }
}

uint64_t dataCallbackMessageRec_initializeCFAllocatorOnce(void *a1)
{
  v3 = 0;
  result = FigCreateCFAllocatorFigMallocWithDeallocCallback(dataCallbackMessageRec_dealloc, &v3);
  if (!result)
  {
    *a1 = v3;
  }

  return result;
}

uint64_t remoteHandlerLookupAndRetainRec_initializeCFAllocatorOnce(void *a1)
{
  v3 = 0;
  result = FigCreateCFAllocatorFigMallocWithDeallocCallback(remoteHandlerLookupAndRetainRec_dealloc, &v3);
  if (!result)
  {
    *a1 = v3;
  }

  return result;
}

uint64_t __figCustomURLHandlerRemote_shimHandleRequestCallback_block_invoke(uint64_t a1, uint64_t a2, xpc_object_t xdict)
{
  if (a2)
  {
    v5 = 0;
  }

  else
  {
    v5 = xpc_dictionary_get_BOOL(xdict, "CustomURLHandler_CanHandleResult");
  }

  v7 = *(a1 + 32);
  v6 = *(a1 + 40);

  return v7(v6, v5, a2);
}

size_t FigCustomURLHandlerRemoteClientCreateWithXPCEndpoint_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE0EuLL, "<< CustomURLHandlerRemoteXPC >>", 0x314, v3, v4, v5);
  *a1 = result;
  return result;
}

BOOL figCustomURLHandlerRemote_MessageHandler_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  v6 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE0EuLL, "<< CustomURLHandlerRemoteXPC >>", 0xC2, v3, v4, v5);
  *a1 = v6;
  return v6 == 0;
}

size_t figCustomURLHandlerRemote_MessageHandler_cold_3(void *a1, _DWORD *a2)
{
  free(a1);
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE0EuLL, "<< CustomURLHandlerRemoteXPC >>", 0x146, v4, v5, v6);
  *a2 = result;
  return result;
}

size_t figCustomURLHandlerRemote_MessageHandler_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE0EuLL, "<< CustomURLHandlerRemoteXPC >>", 0x143, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigCustomURLHandlerRemoteClientCopyExistingOrCreateIfNeccessaryWithXPCEndpoint_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE0EuLL, "<< CustomURLHandlerRemoteXPC >>", 0x339, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigCustomURLHandlerRemoteClientCopyExistingOrCreateIfNeccessaryWithXPCEndpoint_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<< CustomURLHandlerRemoteXPC >>", 0x336, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigCustomURLHandlerRemoteClientCopyExistingOrCreateIfNeccessaryWithXPCEndpoint_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE0EuLL, "<< CustomURLHandlerRemoteXPC >>", 0x330, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t figCustomURLHandlerRemote_shimHandleRequestCallback_cold_1(size_t a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, a1, "<< CustomURLHandlerRemoteXPC >>", 0x1C2, v3, v4, v5);
}

size_t figCustomURLHandlerRemote_shimHandleRequestCallback_cold_2(size_t a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, a1, "<< CustomURLHandlerRemoteXPC >>", 0x1C5, v3, v4, v5);
}

size_t figCustomURLHandlerRemote_shimHandleRequestCallback_cold_3(size_t a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, a1, "<< CustomURLHandlerRemoteXPC >>", 0x1D0, v3, v4, v5);
}

size_t figCustomURLHandlerRemote_shimHandleRequestCallback_cold_4(size_t a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, a1, "<< CustomURLHandlerRemoteXPC >>", 0x1EC, v3, v4, v5);
}

_BYTE *figCustomURLHandlerRemote_shimHandleRequestCallback_cold_5(_BYTE *result, int a2, uint64_t a3)
{
  v10 = 0;
  if (!*result)
  {
    result = FigCustomURLRequestInfoGetCryptorID(a2, &v10);
    if (!result)
    {
      return FigCPECryptorServerDisassociateCryptorWithClientPID(v10, *(a3 + 8), v4, v5, v6, v7, v8, v9);
    }
  }

  return result;
}

uint64_t figCustomURLHandlerRemote_Finalize_cold_1(uint64_t a1, const void *a2, void **a3, uint64_t *a4)
{
  FigXPCRemoteClientDisassociateObject(a1, a2);
  result = FigXPCCreateBasicMessage(0x63684469u, a2, a3);
  if (!result)
  {
    return FigXPCRemoteClientSendAsyncMessage(*a4, *a3);
  }

  return result;
}

void figCustomURLHandlerRemote_Finalize_cold_2(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }
}

BOOL figCustomURLHandlerRemote_lookupAndRetainRegisteredInfoForRequestID_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  v6 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE0EuLL, "<< CustomURLHandlerRemoteXPC >>", 0x2AB, v3, v4, v5);
  *a1 = v6;
  return v6 == 0;
}

size_t figCustomURLHandlerRemote_lookupAndRetainRegisteredInfoForRequestID_cold_3(void *a1, _DWORD *a2)
{
  free(a1);
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE0EuLL, "<< CustomURLHandlerRemoteXPC >>", 0x2D9, v4, v5, v6);
  *a2 = result;
  return result;
}

size_t figCustomURLHandlerRemote_lookupAndRetainRegisteredInfoForRequestID_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE0EuLL, "<< CustomURLHandlerRemoteXPC >>", 0x2D6, v3, v4, v5);
  *a1 = result;
  return result;
}

void *NeroValeriaListenerCreate(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  cf = 0;
  if (!in_audio_mx_server_process() || !FigIsAirplaydEnabled())
  {
    return 0;
  }

  if (a1)
  {
    v2 = malloc_type_calloc(1uLL, 0x10uLL, 0x20040A4A59CD2uLL);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 0x40000000;
    v18[2] = __NeroValeriaListenerCreate_block_invoke;
    v18[3] = &unk_1E74A0608;
    v18[4] = a1;
    v18[5] = v2;
    *(v2 + 1) = dispatch_queue_create("com.apple.coremedia.NeroValeriaListener", 0);
    v3 = *MEMORY[0x1E695E480];
    started = FigTransportConnectionUSBCreate(*MEMORY[0x1E695E480], &cf);
    if (started)
    {
LABEL_5:
      v5 = started;
      goto LABEL_12;
    }

    CMBaseObject = NeroTransportConnectionGetCMBaseObject(cf);
    v7 = *(*(CMBaseObjectGetVTable(CMBaseObject) + 8) + 56);
    if (v7)
    {
      started = v7(CMBaseObject, @"USBInterfaceName", @"Valeria");
      if (!started)
      {
        started = NeroTransportCreate(v3, cf, v2);
        if (!started)
        {
          v8 = *v2;
          LocalRootObject = FigTransportGetLocalRootObject();
          started = NeroTransportRegisterObject(v8, LocalRootObject, *(v2 + 1), v18, 0);
          if (!started)
          {
            started = NeroTransportStartAcceptingConnections(*v2);
          }
        }
      }

      goto LABEL_5;
    }

    v5 = -12782;
  }

  else
  {
    v2 = 0;
    v5 = -12780;
  }

LABEL_12:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v5)
  {
    v17 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(0, 0, &v17, &type);
    v11 = v17;
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
    {
      v13 = v11;
    }

    else
    {
      v13 = v11 & 0xFFFFFFFE;
    }

    if (v13)
    {
      v20 = 136315394;
      v21 = "NeroValeriaListenerCreate";
      v22 = 1024;
      v23 = v5;
      v14 = _os_log_send_and_compose_impl();
      LOBYTE(v11) = v17;
    }

    else
    {
      v14 = 0;
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose(0, 0, 1, v14, v14 != &v24, v11, 0, v12);
    NeroValeriaListenerDestroy(v2);
    return 0;
  }

  return v2;
}

uint64_t CMTimeSyncCoPresenceNTPClockGetClockTimeForHostTime()
{
  OUTLINED_FUNCTION_6_17(&kCMTimeInvalid);
  if (!v1)
  {
    goto LABEL_15;
  }

  v6 = v3;
  v7 = v2;
  v8 = v1;
  v9 = CFGetTypeID(v1);
  if (_MergedGlobals_36 != -1)
  {
    OUTLINED_FUNCTION_0_50();
    dispatch_once_f(v22, v23, v24);
  }

  if (v9 != qword_1ED4CCA80)
  {
LABEL_15:
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CE40, 0xFFFFCE36uLL, "<<<< TimeSyncCoPresenceNTPClock >>>>", 0x236, v0, v4, v5);
    return 0;
  }

  if ((*(v7 + 12) & 1) == 0)
  {
    return 0;
  }

  v10 = FigReentrantMutexLock(*(v8 + 3));
  if ((*(v8 + 16) & 1) == 0)
  {
    do
    {
      v10 = FigConditionVariableWaitRelative(*(v8 + 4), *(v8 + 3), 0xFFFFFFFFFFFFFFFFLL, v13, v14, v15, v16, v17);
    }

    while (!*(v8 + 16));
  }

  if (*(v8 + 56) == 1)
  {
    OUTLINED_FUNCTION_4_16();
    v18 = CMClockConvertHostTimeToSystemUnits(&hostTime);
    v19 = off_1ED4CCA88(*(v8 + 10), v18);
    CMTimeMake(&v54, v19, 1000000000);
    v20 = 0;
  }

  else
  {
    v20 = OUTLINED_FUNCTION_1_32(v10, v11, v12, v13, v14, v15, v16, v17, v25, v28, v29, v32, v35, v36, v37, v40, v42, v44, v45, v47, v49, v51, hostTime.value, *&hostTime.timescale, hostTime.epoch);
    if (!v20)
    {
      OUTLINED_FUNCTION_2_22(hostTime.epoch, v26, v30, v33, hostTime.value, *&hostTime.timescale, v38, v41, v43);
      OUTLINED_FUNCTION_3_21(v52, v27, v31, v34, v48, v50, v39, v43, v46);
    }
  }

  FigReentrantMutexUnlock(*(v8 + 3));
  if (v6)
  {
    OUTLINED_FUNCTION_5_19();
  }

  return v20;
}

uint64_t CMTimeSyncCoPresenceNTPClockGetHostTimeForClockTime()
{
  OUTLINED_FUNCTION_6_17(&kCMTimeInvalid);
  if (!v1)
  {
    goto LABEL_15;
  }

  v6 = v3;
  v7 = v2;
  v8 = v1;
  v9 = CFGetTypeID(v1);
  if (_MergedGlobals_36 != -1)
  {
    OUTLINED_FUNCTION_0_50();
    dispatch_once_f(v21, v22, v23);
  }

  if (v9 != qword_1ED4CCA80)
  {
LABEL_15:
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CE40, 0xFFFFCE36uLL, "<<<< TimeSyncCoPresenceNTPClock >>>>", 0x282, v0, v4, v5);
    return 0;
  }

  if ((*(v7 + 12) & 1) == 0)
  {
    return 0;
  }

  v10 = FigReentrantMutexLock(*(v8 + 3));
  if ((*(v8 + 16) & 1) == 0)
  {
    do
    {
      v10 = FigConditionVariableWaitRelative(*(v8 + 4), *(v8 + 3), 0xFFFFFFFFFFFFFFFFLL, v13, v14, v15, v16, v17);
    }

    while (!*(v8 + 16));
  }

  if (*(v8 + 56) == 1)
  {
    OUTLINED_FUNCTION_4_16();
    CMTimeConvertScale(&v53, &time, 1000000000, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
    v18 = off_1ED4CCA90(*(v8 + 10), v53.value);
    CMClockMakeHostTimeFromSystemUnits(&v54, v18);
    v19 = 0;
  }

  else
  {
    v19 = OUTLINED_FUNCTION_1_32(v10, v11, v12, v13, v14, v15, v16, v17, v24, v27, v28, v31, v34, v35, v36, v39, v41, v43, v44, v46, v48, v50, time.value, *&time.timescale, time.epoch);
    if (!v19)
    {
      OUTLINED_FUNCTION_2_22(v51, v25, v29, v32, v47, v49, v37, v40, v42);
      OUTLINED_FUNCTION_3_21(time.epoch, v26, v30, v33, time.value, *&time.timescale, v38, v42, v45);
    }
  }

  FigReentrantMutexUnlock(*(v8 + 3));
  if (v6)
  {
    OUTLINED_FUNCTION_5_19();
  }

  return v19;
}

size_t HandleAudioDeviceClockMessage(_xpc_connection_s *a1, void *a2, void *a3)
{
  cf = 0;
  v23 = 0;
  OpCode = FigXPCMessageGetOpCode(a2, &v23);
  if (OpCode)
  {
    goto LABEL_33;
  }

  if (v23 == 1668441400)
  {
    deviceUID.value = 0;
    clockOut.value = 0;
    value.value = 0;
    int64 = xpc_dictionary_get_int64(a2, "DeviceID");
    v9 = FigXPCMessageCopyCFString(a2, "DeviceUID", &deviceUID);
    if (v9)
    {
      AnchorTime = v9;
    }

    else
    {
      v10 = *MEMORY[0x1E695E480];
      if (int64)
      {
        v11 = CMAudioDeviceClockCreateFromAudioDeviceID(v10, int64, &clockOut);
      }

      else
      {
        v11 = CMAudioDeviceClockCreate(v10, deviceUID.value, &clockOut);
      }

      AnchorTime = v11;
      if (!v11)
      {
        AnchorTime = FigXPCServerAssociateObjectWithConnection(a1, clockOut.value, 0, 0, 0, &value);
        if (!AnchorTime)
        {
          xpc_dictionary_set_uint64(a3, ".objectID", value.value);
        }
      }
    }

    if (deviceUID.value)
    {
      CFRelease(deviceUID.value);
    }

    if (clockOut.value)
    {
      CFRelease(clockOut.value);
    }

    goto LABEL_29;
  }

  uint64 = xpc_dictionary_get_uint64(a2, ".objectID");
  OpCode = FigXPCServerLookupAndRetainAssociatedObject(a1, uint64, &cf, 0);
  if (OpCode)
  {
    goto LABEL_33;
  }

  if (!cf || (v13 = CFGetTypeID(cf), v13 != CMClockGetTypeID()))
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    OpCode = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE36uLL, "<<<< FADCS(XPC) >>>>", 0xC7, v3, v21, v22);
    goto LABEL_33;
  }

  if (v23 == 1735549300)
  {
    v16 = cf;
    HostTimeClock = CMClockGetHostTimeClock();
    RelativeRate = CMSyncGetRelativeRate(v16, HostTimeClock);
    xpc_dictionary_set_double(a3, "Rate", RelativeRate);
    goto LABEL_27;
  }

  if (v23 != 1734438507)
  {
    if (v23 != 1734632822)
    {
      if (v23 != 1685024621)
      {
        AnchorTime = 4294951138;
        goto LABEL_29;
      }

      FigXPCServerDisassociateObjectWithConnection(a1, uint64);
LABEL_27:
      AnchorTime = 0;
      goto LABEL_29;
    }

    deviceUID.value = 0;
    LODWORD(clockOut.value) = 0;
    LOBYTE(value.value) = 0;
    AudioDevice = CMAudioDeviceClockGetAudioDevice(cf, &deviceUID, &clockOut, &value);
    OpCode = FigXPCMessageSetCFString(a3, "DeviceUID", deviceUID.value);
    if (!OpCode)
    {
      xpc_dictionary_set_int64(a3, "DeviceID", LODWORD(clockOut.value));
      xpc_dictionary_set_BOOL(a3, "TrackDefaultDevice", LOBYTE(value.value) != 0);
      xpc_dictionary_set_int64(a3, "LoadStatus", AudioDevice);
      AnchorTime = AudioDevice;
      goto LABEL_29;
    }

LABEL_33:
    AnchorTime = OpCode;
    goto LABEL_29;
  }

  memset(&deviceUID, 0, sizeof(deviceUID));
  memset(&clockOut, 0, sizeof(clockOut));
  AnchorTime = CMClockGetAnchorTime(cf, &deviceUID, &clockOut);
  if (!AnchorTime)
  {
    value = deviceUID;
    FigXPCMessageSetCMTime(a3, "ClockTime", &value);
    value = clockOut;
    FigXPCMessageSetCMTime(a3, "RefClockTime", &value);
    xpc_dictionary_set_int64(a3, "LoadStatus", 0);
  }

LABEL_29:
  if (cf)
  {
    CFRelease(cf);
  }

  return AnchorTime;
}

size_t FigXPCAudioDeviceClockServerCopyClockForID_cold_1(_DWORD *a1)
{
  emitter = fig_log_get_emitter("com.apple.coremedia", "");
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE14uLL, "<<<< FADCS(XPC) >>>>", 0x120, v1, v4, v5);
  *a1 = result;
  return result;
}

uint64_t CMGetDMVersionLevelFromRPU()
{
  v0 = MEMORY[0x1EEE9AC00]();
  bzero(v4, 0x73B0uLL);
  if (!v0)
  {
    return 0;
  }

  Length = CFDataGetLength(v0);
  BytePtr = CFDataGetBytePtr(v0);
  if (FigHEVCBridge_GetRPUMetadata(BytePtr, Length, v4) || !v4[29130])
  {
    return 0;
  }

  if (v5 <= 2u)
  {
    return v5 + 2;
  }

  return 0;
}

void fig_log_internal(uint64_t *a1, unsigned __int16 a2, char a3, uint64_t a4, const char *a5, va_list a6)
{
  v75 = *MEMORY[0x1E69E9840];
  v6 = _MergedGlobals_1;
  v65 = 0;
  if (!_MergedGlobals_1)
  {
    goto LABEL_95;
  }

  v11 = a2;
  v12 = byte_1ED4CC169;
  FigThreadRunOnce(&stru_1ED4CC158, fig_note_init_logging_once);
  v60 = v11;
  fig_log_get_os_log_type(v11);
  v64 = v12;
  fig_log_emitter_get_os_log(a1, 0, 0);
  if (!v12)
  {
    if (v6 == 8)
    {
      v25 = 0;
      v27 = 0;
      v28 = 0;
      v40 = 1;
LABEL_68:
      if ((a3 & 8) != 0)
      {
        goto LABEL_87;
      }

      if (!a4)
      {
        if (v40)
        {
          os_log_with_args();
        }

        else
        {
LABEL_84:
          fig_os_log_with_args();
        }

        goto LABEL_87;
      }
    }

    else
    {
      if (v6 != 7)
      {
        goto LABEL_3;
      }

      if (!a4 && (a3 & 4) == 0)
      {
LABEL_10:
        if (!a5)
        {
          goto LABEL_95;
        }

        v67 = a6;
        block = 0u;
        v71 = 0u;
        if ((a3 & 3) != 0)
        {
          p_block = &block;
          fig_get_timestamp(a3 & 3, &block, 0x20uLL);
        }

        else
        {
          p_block = 0;
        }

        v29 = strlen(a5);
        if (v29 >= 1)
        {
          v30 = 0;
          v31 = 0;
          v32 = 0;
          v33 = &a5[v29];
          v34 = __src;
          while (1)
          {
            v35 = *a5;
            if (!v32)
            {
              break;
            }

            if (v35 != 125)
            {
              goto LABEL_37;
            }

            if ((v33 - a5) >= 4)
            {
              v36 = 4;
            }

            else
            {
              v36 = v33 - a5;
            }

            if (strncmp("}*.P", a5, v36))
            {
              goto LABEL_39;
            }

            v37 = v31 - 1;
            if (512 - v31 >= 8)
            {
              v38 = 8;
            }

            else
            {
              v38 = 512 - v31;
            }

            strncpy(&__src[v37], "(%zu) %p", v38);
            v31 = v38 + v37;
            if (v31 == 511)
            {
LABEL_46:
              v34 = &v69;
              goto LABEL_47;
            }

            v32 = 0;
            a5 += 3;
LABEL_40:
            v39 = *a5++;
            v30 = v39;
            v34 = &__src[v31];
            if (a5 >= v33)
            {
              goto LABEL_47;
            }
          }

          if (v35 != 123 || v30 != 37)
          {
            ++v31;
            *v34 = v35;
            if (v31 == 511)
            {
              goto LABEL_46;
            }

LABEL_39:
            v32 = 0;
            goto LABEL_40;
          }

LABEL_37:
          v32 = 1;
          goto LABEL_40;
        }

        v34 = __src;
LABEL_47:
        *v34 = 0;
        arguments = v67;
        v41 = CFStringCreateWithCStringNoCopy(*MEMORY[0x1E695E480], __src, 0x8000100u, *MEMORY[0x1E695E498]);
        Mutable = CFStringCreateMutable(0, 0);
        v27 = Mutable;
        if (v41 && Mutable)
        {
          if ((a3 & 3) != 0)
          {
            CFStringAppendFormat(Mutable, 0, @"[%s] ", p_block);
          }

          if (FigCFEqual(v41, @"%s"))
          {
            v43 = arguments;
            arguments += 8;
            CFStringAppendCString(v27, *v43, 0x8000100u);
          }

          else
          {
            CFStringAppendFormatAndArguments(v27, 0, v41, arguments);
          }
        }

        else if (!v41)
        {
          goto LABEL_57;
        }

        CFRelease(v41);
LABEL_57:
        CStringPtrMaybeUsingPreallocatedBuffer = FigCFStringGetCStringPtrMaybeUsingPreallocatedBuffer(v27, __src, 1536, 0x8000100u);
        if (!CStringPtrMaybeUsingPreallocatedBuffer)
        {
          CStringPtrMaybeUsingPreallocatedBuffer = FigCFStringGetCStringPtrAndBufferToFree(v27, 0x8000100u, &v65);
        }

        v25 = CStringPtrMaybeUsingPreallocatedBuffer;
        v28 = 0;
        goto LABEL_60;
      }

      if (!a4)
      {
        os_log_with_args();
        goto LABEL_95;
      }

      v28 = 0;
      v27 = 0;
      v25 = 0;
    }

LABEL_74:
    os_log_pack_send();
    goto LABEL_87;
  }

LABEL_3:
  if (!a4)
  {
    goto LABEL_10;
  }

  if ((a3 & 3) != 0)
  {
    block = 0u;
    v71 = 0u;
    fig_get_timestamp(a3 & 3, &block, 0x20uLL);
    v20 = safe_snprintf_0(__src, v13, v14, v15, v16, v17, v18, v19, &vars0 + 96);
  }

  else
  {
    v20 = 0;
  }

  v21 = os_log_pack_compose();
  if (v21 == &__src[v20] || (v22 = v21, v23 = strlen(v21), (v24 = malloc_type_malloc(v20 + v23 + 1, 0x3249B70BuLL)) == 0))
  {
    v25 = __src;
  }

  else
  {
    v25 = v24;
    if (v20)
    {
      memcpy(v24, __src, v20);
    }

    v26 = strlen(v22);
    memcpy(&v25[v20], v22, v26 + 1);
    free(v22);
  }

  v27 = 0;
  v28 = v25 != __src;
LABEL_60:
  v40 = 0;
  switch(v6)
  {
    case 1:
      if (v60 == 3 || (a2 & 0xFFFD) == 0)
      {
        v46 = 3;
      }

      else
      {
        v46 = 5;
      }

      syslog(v46, "%s", v25);
      break;
    case 2:
      fprintf(*MEMORY[0x1E69E9848], "%s\n", v25);
      break;
    case 3:
      puts(v25);
      break;
    case 4:
      goto LABEL_86;
    case 5:
      *&block = 0;
      v47 = strlen(v25);
      OUTLINED_FUNCTION_3_22();
      if (!CMBlockBufferCreateWithMemoryBlock(v48, v49, v50, v51, v52, v53, v54, 1u, &block))
      {
        CMBlockBufferReplaceDataBytes(v25, block, 0, v47);
        CMBlockBufferReplaceDataBytes("\n", block, v47, 2uLL);
        dispatch_async_f(sNoteBBufQueue, block, append_and_release_noteBBuf);
      }

      break;
    case 7:
      if (a4)
      {
        goto LABEL_74;
      }

      goto LABEL_84;
    case 8:
      goto LABEL_68;
    case 9:
      if ((a3 & 8) == 0)
      {
        if (a4)
        {
          os_log_pack_send();
        }

        else
        {
          os_log_with_args();
        }
      }

LABEL_86:
      fig_note_write_to_external_log_file(v25);
      break;
    default:
      break;
  }

LABEL_87:
  if (!v64 || !v27)
  {
LABEL_91:
    if (!v28)
    {
      goto LABEL_93;
    }

    goto LABEL_92;
  }

  add_explicit = atomic_fetch_add_explicit(&unk_1ED4CC190, 1u, memory_order_relaxed);
  if (add_explicit >= 0x65)
  {
    atomic_fetch_add_explicit(&unk_1ED4CC190, 0xFFu, memory_order_relaxed);
    goto LABEL_91;
  }

  v56 = a1;
  v57 = add_explicit == 100;
  if (add_explicit == 100)
  {
    v58 = 0;
  }

  else
  {
    v58 = v27;
  }

  if (add_explicit != 100)
  {
    CFRetain(v27);
  }

  *&block = MEMORY[0x1E69E9820];
  *(&block + 1) = 0x40000000;
  *&v71 = __fig_log_append_to_ring_buffer_async_block_invoke;
  *(&v71 + 1) = &__block_descriptor_tmp_40_0;
  v74 = v57;
  v72 = v58;
  v73 = v56;
  dispatch_async(qword_1ED4CC188, &block);
  if (!v28)
  {
    goto LABEL_93;
  }

LABEL_92:
  free(v25);
LABEL_93:
  if (v27)
  {
    CFRelease(v27);
  }

LABEL_95:
  free(v65);
}

size_t FigNote_ConfigureRingBuffer(void *a1)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2000000000;
  v17 = 0;
  v3 = fignote_initialize_ringlog();
  *(v15 + 6) = v3;
  if (v3)
  {
    v7 = v3;
    goto LABEL_5;
  }

  if (!a1)
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v12 = v1;
    v13 = 2685;
LABEL_9:
    v7 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFBED8uLL, "|FigNote|", v13, v12, v10, v11);
    *(v15 + 6) = v7;
    goto LABEL_5;
  }

  if (*a1)
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v12 = v1;
    v13 = 2686;
    goto LABEL_9;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  OUTLINED_FUNCTION_1_33();
  block[2] = v4;
  block[3] = &unk_1E74A08E0;
  block[4] = v5;
  dispatch_sync(v6, block);
  v7 = *(v15 + 6);
LABEL_5:
  _Block_object_dispose(&v14, 8);
  return v7;
}

size_t fig_note_makeRingBufferDataStructuresInternal()
{
  if (qword_1ED4CC170)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, 0xFFFFBED8uLL, "|FigNote|", 0xA45, v8, v9, v10);
  }

  else
  {
    OUTLINED_FUNCTION_3_22();
    result = CMBlockBufferCreateWithMemoryBlock(v0, v1, v2, v3, v4, v5, v2, 1u, &qword_1ED4CC170);
    if (!result)
    {
      atomic_store(0x7FFFFC00001FFFFFuLL, &qword_1ED4CC178);
    }
  }

  return result;
}

uint64_t FigNote_EnableRingBuffer()
{
  v0 = fignote_initialize_ringlog();
  if (!v0)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    OUTLINED_FUNCTION_1_33();
    block[2] = v1;
    block[3] = &unk_1E74A08E0;
    block[4] = v2;
    dispatch_sync(v3, block);
  }

  return v0;
}

uint64_t FigNote_CopyRingBufferLogArrayAndResetRing(__CFArray **a1, char a2)
{
  v41 = 0;
  v42 = &v41;
  v43 = 0x2000000000;
  v44 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2000000000;
  v40 = 0;
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x2000000000;
  v36[3] = 0;
  v4 = fignote_initialize_ringlog();
  if (v4)
  {
    v22 = v4;
    goto LABEL_23;
  }

  v28 = MEMORY[0x1E69E9820];
  v29 = 0x40000000;
  v30 = __FigNote_CopyRingBufferLogArrayAndResetRing_block_invoke;
  v31 = &unk_1E74A07F0;
  v32 = &v37;
  v33 = &v41;
  v34 = v36;
  v35 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  OUTLINED_FUNCTION_1_33();
  block[2] = v5;
  block[3] = &unk_1E74A08E0;
  block[4] = v6;
  dispatch_sync(v7, block);
  v8 = v42[3];
  if (!v8)
  {
    v22 = 4294950613;
    goto LABEL_23;
  }

  v9 = v38[3] & 0x1FFFFF;
  if (v9 == 0x1FFFFF)
  {
    goto LABEL_22;
  }

  context.version = 0;
  memset(&context.retain, 0, 40);
  context.info = v8;
  context.deallocate = fig_log_ring_backing_deallocator;
  context.preferredSize = 0;
  v10 = *MEMORY[0x1E695E480];
  v11 = CFAllocatorCreate(*MEMORY[0x1E695E480], &context);
  v12 = v9 == 0;
  v13 = v9 != 0;
  Mutable = CFArrayCreateMutable(v10, 0, MEMORY[0x1E695E9C0]);
  v15 = 0;
  do
  {
    destination = 0;
    block[0] = 0;
    bytes = 0;
    CMBlockBufferCopyDataBytes(v42[3], v9, 4uLL, &destination);
    v16 = destination;
    if (destination < 5)
    {
      break;
    }

    destination -= 4;
    CMBlockBufferGetDataPointer(v42[3], v9 + 4, block, 0, &bytes);
    if (block[0] < destination)
    {
      break;
    }

    v17 = v42[3];
    if (v17)
    {
      CFRetain(v17);
    }

    AllocatorForMedia = FigGetAllocatorForMedia();
    v19 = CFStringCreateWithBytesNoCopy(AllocatorForMedia, bytes, destination, 0x8000100u, 0, v11);
    if (v19)
    {
      v20 = v19;
      CFArrayAppendValue(Mutable, v19);
LABEL_12:
      CFRelease(v20);
      goto LABEL_13;
    }

    v20 = v42[3];
    if (v20)
    {
      goto LABEL_12;
    }

LABEL_13:
    v21 = v38[3];
    if (!v13 && v16 + v9 >= ((v21 >> 42) & 0x1FFFFF))
    {
      v15 = 1;
    }

    if (v16 + v9 < ((v21 >> 21) & 0x1FFFFF))
    {
      v9 += v16;
    }

    else
    {
      v12 = 1;
      v9 = 0;
    }

    v13 = !v12;
  }

  while (!v15 || !v12);
  *a1 = Mutable;
  if (v11)
  {
    CFRelease(v11);
  }

LABEL_22:
  v22 = 0;
LABEL_23:
  v23 = v42[3];
  if (v23)
  {
    CFRelease(v23);
  }

  _Block_object_dispose(v36, 8);
  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(&v41, 8);
  return v22;
}

void fig_post_a_symptom_guts_cold_2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 136315138;
  v3 = a1;
  _os_log_error_impl(&dword_196FA7000, a2, OS_LOG_TYPE_ERROR, "%s", &v2, 0xCu);
}

size_t fig_note_dropRingBufferDataStructuresInternal_cold_1()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFBED8uLL, "|FigNote|", 0xA5B, v1, v2, v3);
}

void __fig_log_append_to_ring_buffer_async_block_invoke_cold_1(uint64_t *a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = 134218240;
  v4 = v2;
  v5 = 2048;
  v6 = qword_1ED4CC180;
  _os_log_error_impl(&dword_196FA7000, a2, OS_LOG_TYPE_ERROR, "Log size (%ld) too long for ring buffer size %zu. Dropping it.", &v3, 0x16u);
}

size_t FigSandboxRegistrationAssociateWithURL_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBBA3uLL, "<<<< SandboxRegistrationAssociatedObject >>>>", 0x58, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigSandboxRegistrationAssociateWithURL_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBBA4uLL, "<<<< SandboxRegistrationAssociatedObject >>>>", 0x53, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigSandboxRegistrationAssociateWithURL_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBBA4uLL, "<<<< SandboxRegistrationAssociatedObject >>>>", 0x52, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigGetSandboxRegistrationAssociatedWithURL_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBBA4uLL, "<<<< SandboxRegistrationAssociatedObject >>>>", 0x68, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigGetSandboxRegistrationAssociatedWithURL_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBBA4uLL, "<<<< SandboxRegistrationAssociatedObject >>>>", 0x67, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigCreateBase32EncodedStringFromBytes_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_51();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0xAB, v6, v7, v8);
  *a1 = result;
  return result;
}

size_t FigCreateBase32EncodedStringFromBytes_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_51();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0xAA, v6, v7, v8);
  *a1 = result;
  return result;
}

size_t FigCreateBase32EncodedStringFromBytes_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_51();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0xA9, v6, v7, v8);
  *a1 = result;
  return result;
}

size_t figNumericsCreateEncodedStringFromBytes_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFBBD5uLL, "(Fig)", 0x58, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t figNumericsCreateEncodedStringFromBytes_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFBBD5uLL, "(Fig)", 0x43, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t figNumericsCreateEncodedStringFromBytes_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_51();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x3B, v6, v7, v8);
  *a1 = result;
  return result;
}

size_t FigCreateBase64EncodedStringFromBytes_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_51();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0xB8, v6, v7, v8);
  *a1 = result;
  return result;
}

size_t FigCreateBase64EncodedStringFromBytes_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_51();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0xB7, v6, v7, v8);
  *a1 = result;
  return result;
}

size_t FigCreateBase64EncodedStringFromBytes_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_51();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0xB6, v6, v7, v8);
  *a1 = result;
  return result;
}

size_t FigCreateBase64EncodedStringFromCFData_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_51();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0xC3, v6, v7, v8);
  *a1 = result;
  return result;
}

size_t FigCreateHexStringFromCFData_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_51();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0xFA, v6, v7, v8);
  *a1 = result;
  return result;
}

size_t FigCreateHexStringFromCFData_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFBBD5uLL, "(Fig)", 0xF9, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigCreateHexStringFromCFData_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_51();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0xF7, v6, v7, v8);
  *a1 = result;
  return result;
}

size_t FigCreateCFDataWithBlockBuffer(const __CFAllocator *a1, CMBlockBufferRef theBuffer, size_t a3, size_t a4, CFDataRef *a5)
{
  v9 = theBuffer;
  DataLength = CMBlockBufferGetDataLength(theBuffer);
  cf = 0;
  if (a5)
  {
    if (DataLength >= a4 + a3)
    {
      lengthAtOffsetOut = 0;
      if (a4)
      {
        v12 = a4;
      }

      else
      {
        v12 = DataLength - a3;
      }

      DataPointer = CMBlockBufferGetDataPointer(v9, a3, &lengthAtOffsetOut, 0, 0);
      if (DataPointer)
      {
        return DataPointer;
      }

      if (v12 > lengthAtOffsetOut)
      {
        Contiguous = CMBlockBufferCreateContiguous(a1, v9, *MEMORY[0x1E695E480], 0, a3, v12, 0, &cf);
        v9 = cf;
        if (Contiguous)
        {
          CFDataWithBlockBufferNoCopy = Contiguous;
          if (!cf)
          {
            return CFDataWithBlockBufferNoCopy;
          }

          goto LABEL_11;
        }

        a3 = 0;
      }

      CFDataWithBlockBufferNoCopy = FigCreateCFDataWithBlockBufferNoCopy(a1, v9, a3, v12, a5);
      v9 = cf;
      if (!cf)
      {
        return CFDataWithBlockBufferNoCopy;
      }

LABEL_11:
      CFRelease(v9);
      return CFDataWithBlockBufferNoCopy;
    }

    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v20 = v5;
    v21 = 453;
  }

  else
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v20 = v5;
    v21 = 452;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE5FuLL, "(Fig)", v21, v20, v18, v19);
}

uint64_t FigCreateBlockBufferWithCFString(const __CFAllocator *a1, CFStringRef theString, CMBlockBufferRef *a3)
{
  v4 = theString;
  blockBufferOut = 0;
  CStringPtr = CFStringGetCStringPtr(theString, 0x8000100u);
  if (!CStringPtr)
  {
    ExternalRepresentation = CFStringCreateExternalRepresentation(a1, v4, 0x8000100u, 0x3Fu);
    if (!ExternalRepresentation)
    {
      v11 = 4294954510;
      if (!a3)
      {
        return v11;
      }

      goto LABEL_11;
    }

    v4 = ExternalRepresentation;
    Length = CFDataGetLength(ExternalRepresentation);
    v11 = FigCreateBlockBufferWithCFDataNoCopy(a1, v4, 0, Length, &blockBufferOut);
    goto LABEL_9;
  }

  v7 = CStringPtr;
  customBlockSource.version = 0;
  if (v4)
  {
    v8 = CFRetain(v4);
  }

  else
  {
    v8 = 0;
  }

  customBlockSource.AllocateBlock = 0;
  customBlockSource.FreeBlock = BBufUtilCFStringReleaser;
  customBlockSource.refCon = v8;
  v12 = strlen(v7);
  v13 = CMBlockBufferCreateWithMemoryBlock(a1, v7, v12, 0, &customBlockSource, 0, v12, 0, &blockBufferOut);
  v11 = v13;
  if (v4 && v13)
  {
LABEL_9:
    CFRelease(v4);
  }

  if (a3)
  {
LABEL_11:
    *a3 = blockBufferOut;
  }

  return v11;
}

uint64_t FigMakeIOVecArrayWithBlockBuffer(CMBlockBufferRef theBuffer, uint64_t a2, int a3, _DWORD *a4)
{
  v6 = 0;
  v7 = 0;
  totalLengthOut = 0;
  v8 = (a2 + 8);
  v9 = a3 & ~(a3 >> 31);
  while (v9 != v6)
  {
    result = CMBlockBufferGetDataPointer(theBuffer, v7, v8, &totalLengthOut, v8 - 1);
    if (result)
    {
      return result;
    }

    v11 = *v8;
    v8 += 2;
    v7 += v11;
    ++v6;
    if (v7 >= totalLengthOut)
    {
      result = 0;
      *a4 = v6;
      return result;
    }
  }

  return 4294954588;
}

size_t FigCreateCFDataWithBlockBufferNoCopy_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE60uLL, "(Fig)", 0x19A, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigCreateCFDataWithBlockBufferNoCopy_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE64uLL, "(Fig)", 0x1AD, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigCreateCFDataWithBlockBufferNoCopy_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE5FuLL, "(Fig)", 0x193, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigCreateBlockBufferWithCFDataNoCopy_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE61uLL, "(Fig)", 0x1F4, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigCreateBlockBufferWithCFDataNoCopy_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE61uLL, "(Fig)", 0x1F8, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigCreateBlockBufferWithCFDataNoCopy_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE60uLL, "(Fig)", 0x1F7, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigCreateBlockBufferWithCFDataNoCopy_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE5FuLL, "(Fig)", 0x1F3, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigCreateBlockBufferWithCFDataNoCopy_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE5FuLL, "(Fig)", 0x1EE, v3, v4, v5);
  *a1 = result;
  return result;
}

BOOL FigCreateBlockBufferWithCFDataNoCopy_cold_6(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  *a2 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, 0xFFFFCE5FuLL, "(Fig)", 0x1ED, v5, v6, v7);
  return a1 == 0;
}

CMMemoryPoolRef CMMemoryPoolCreate(CFDictionaryRef options)
{
  v2 = 500000000;
  v3 = *MEMORY[0x1E695E480];
  memcpy(&__dst, &unk_1F0B73DE0, sizeof(__dst));
  if (options)
  {
    Value = CFDictionaryGetValue(options, @"FigMemoryPool_AgeOutPeriod");
    if (Value)
    {
      v5 = Value;
      TypeID = CFNumberGetTypeID();
      if (TypeID == CFGetTypeID(v5))
      {
        v15 = 0.0;
        CFNumberGetValue(v5, kCFNumberDoubleType, &v15);
        if (v15 > 0.0)
        {
          v2 = (v15 * 1000.0 * 1000.0 * 1000.0);
        }
      }
    }

    v7 = CFDictionaryGetValue(options, @"FigMemoryPool_LoggingName");
  }

  else
  {
    v7 = 0;
  }

  FigThreadRunOnce(&sRegisterFigMemoryPoolTypeOnce, RegisterFigMemoryPoolType);
  Instance = _CFRuntimeCreateInstance();
  v9 = Instance;
  if (Instance)
  {
    if (!poolBlockState_Create(v3, Instance, v2, 1, 0x40000, v7, options, (Instance + 16)))
    {
      __dst.info = CFRetain(*(v9 + 16));
      *(v9 + 24) = CFAllocatorCreate(0, &__dst);
    }
  }

  else
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_27_2();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v10, 0xFFFFC37EuLL, "<<<< MemoryPool >>>>", 0x6BE, v11, v12, v13);
  }

  return v9;
}

const __CFAllocator *FigMemoryPoolAllocatorCopyMemoryPool(const __CFAllocator *result, id **a2)
{
  if (result)
  {
    if (a2)
    {
      memset(&v15, 0, sizeof(v15));
      CFAllocatorGetContext(result, &v15);
      if (v15.allocate != poolingAllocator_Allocate)
      {
        return 0;
      }

      v3 = *(v15.info + 12);
      if (v3)
      {
        v4 = FigCFWeakReferenceHolderCopyReferencedObject(v3);
        if (v4)
        {
          v5 = v4;
          result = 0;
          *a2 = v5;
          return result;
        }

        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_0();
        v14 = 1781;
      }

      else
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_0();
        v14 = 1778;
      }

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v10, 0xFFFFC379uLL, "<<<< MemoryPool >>>>", v14, v11, v12, v13);
    }

    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, 0xFFFFC37DuLL, "<<<< MemoryPool >>>>", 0x6EA, v7, v8, v9);
  }

  return result;
}

uint64_t FigIsMemoryPoolBlockBuffer(OpaqueCMBlockBuffer *a1)
{
  DataLength = CMBlockBufferGetDataLength(a1);
  if (!CMBlockBufferIsRangeContiguous(a1, 0, DataLength))
  {
    while (1)
    {
      OUTLINED_FUNCTION_11_9();
      OUTLINED_FUNCTION_7_15();
      if (FigBlockBufferGetDataPointerAndOrigin(v11, v12, v13, v14, v15, v16, v17, v18))
      {
        break;
      }

      result = CMGetAttachment(0, @"OwningPoolBlockState", 0);
      if (!result)
      {
        return result;
      }

      result = CMGetAttachment(0, @"MemoryPoolBlockSerialNumber", 0);
      if (!result)
      {
        return result;
      }

      if (!DataLength)
      {
        return 1;
      }
    }

    return 0;
  }

  OUTLINED_FUNCTION_11_9();
  OUTLINED_FUNCTION_4_17();
  if (FigBlockBufferGetDataPointerAndOrigin(v3, v4, v5, v6, 0, v7, v8, v9))
  {
    return 0;
  }

  result = CMGetAttachment(0, @"OwningPoolBlockState", 0);
  if (result)
  {
    return CMGetAttachment(0, @"MemoryPoolBlockSerialNumber", 0) != 0;
  }

  return result;
}

size_t FigMemoryPoolBlockBufferGetPaddedWriteInfo(OpaqueCMBlockBuffer *a1, char **a2, void *a3, void *a4)
{
  totalLengthOut = 0;
  lengthAtOffsetOut = 0;
  dataPointerOut = 0;
  valuePtr = 0;
  result = CMBlockBufferGetDataPointer(a1, 0, &lengthAtOffsetOut, &totalLengthOut, &dataPointerOut);
  if (!result)
  {
    if (lengthAtOffsetOut == totalLengthOut)
    {
      if (FigIsMemoryPoolBlockBuffer(a1) && (v9 = CMGetAttachment(a1, @"NumTrailingPaddingBytes", 0)) != 0)
      {
        CFNumberGetValue(v9, kCFNumberSInt32Type, &valuePtr);
        v10 = valuePtr;
      }

      else
      {
        v10 = 0;
      }

      result = 0;
      v11 = totalLengthOut;
      *a2 = dataPointerOut;
      *a3 = v11 + v10;
      *a4 = v10;
    }

    else
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_0_3();
      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v12, 0xFFFFC37DuLL, "<<<< MemoryPool >>>>", 0x7FD, v13, v14, v15);
    }
  }

  return result;
}

BOOL FigMemoryOriginIsBlockBufferSendable(uint64_t a1, CMBlockBufferRef theBuffer)
{
  valuePtr[1] = 0;
  target = 0;
  valuePtr[0] = 0;
  DataLength = CMBlockBufferGetDataLength(theBuffer);
  if (!CMBlockBufferIsRangeContiguous(theBuffer, 0, DataLength))
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    while (1)
    {
      OUTLINED_FUNCTION_11_9();
      OUTLINED_FUNCTION_7_15();
      if (FigBlockBufferGetDataPointerAndOrigin(v16, v17, v18, v19, v20, v21, v22, v23))
      {
        return 0;
      }

      if (!CMGetAttachment(target, @"OwningPoolBlockState", 0) || !CMGetAttachment(target, @"MemoryPoolBlockSerialNumber", 0))
      {
        break;
      }

      v24 = CMGetAttachment(target, @"ImportedBlockSerialNumber", 0);
      if (v24)
      {
        CFNumberGetValue(v24, kCFNumberSInt64Type, valuePtr);
        v14 = valuePtr[0] & 0xFFFF800000000000;
        v13 = 1;
        if (v15 && v15 != v14)
        {
          LODWORD(v12) = 0;
          return v14 == *(a1 + 56) << 47 && v12;
        }

        v15 = valuePtr[0] & 0xFFFF800000000000;
      }

      if (!DataLength)
      {
        v12 = 1;
        goto LABEL_19;
      }
    }

    v12 = 0;
LABEL_19:
    if (v13)
    {
      return v14 == *(a1 + 56) << 47 && v12;
    }

    return v12;
  }

  OUTLINED_FUNCTION_11_9();
  OUTLINED_FUNCTION_4_17();
  if (FigBlockBufferGetDataPointerAndOrigin(v5, v6, v7, v8, 0, v9, v10, v11))
  {
    return 0;
  }

  if (CMGetAttachment(target, @"OwningPoolBlockState", 0))
  {
    v12 = CMGetAttachment(target, @"MemoryPoolBlockSerialNumber", 0) != 0;
  }

  else
  {
    v12 = 0;
  }

  v25 = CMGetAttachment(target, @"ImportedBlockSerialNumber", 0);
  if (v25)
  {
    CFNumberGetValue(v25, kCFNumberSInt64Type, valuePtr);
    v14 = valuePtr[0] & 0xFFFF800000000000;
    return v14 == *(a1 + 56) << 47 && v12;
  }

  return v12;
}

void memoryOrigin_storeSubBlockDescription(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int64_t value, const void *valuePtr, uint64_t a13, int64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_13_8();
  a25 = v26;
  a26 = v27;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  valuePtr = 0;
  v38 = OUTLINED_FUNCTION_14_8(v36, @"OwningPoolBlockState");
  v39 = OUTLINED_FUNCTION_14_8(v38, @"MemoryPoolBlockSerialNumber");
  if (!v38)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_1_2();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v76, 0xFFFFC360uLL, "<<<< MemoryPool >>>>", 0xA72, v77, v78, v79);
    goto LABEL_42;
  }

  if (!v39)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_1_2();
    v84 = 2675;
LABEL_51:
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v80, 0xFFFFC360uLL, "<<<< MemoryPool >>>>", v84, v81, v82, v83);
    goto LABEL_47;
  }

  if (!(v31 | v29))
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_1_2();
    v84 = 2676;
    goto LABEL_51;
  }

  CFNumberGetValue(v39, kCFNumberSInt64Type, &valuePtr);
  v40 = valuePtr;
  a13 = 0;
  a14 = 0;
  poolBlockState_IncrementBlockUseCountAndAccessMemory(v38, valuePtr, &a14, &a13);
  FigReentrantMutexLock(*(v37 + 16));
  v41 = CFDictionaryGetValue(*(v37 + 24), v40);
  valuea = v35;
  if (v41)
  {
    v42 = 0;
    ++v41[4];
LABEL_16:
    FigReentrantMutexUnlock(*(v37 + 16));
    goto LABEL_17;
  }

  if (v31)
  {
    v42 = xpc_shmem_create(a14, a13);
    if (v42)
    {
      goto LABEL_10;
    }

    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_1_2();
    if (FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v43, 0xFFFFC35FuLL, "<<<< MemoryPool >>>>", 0x961, v44, v45, v46))
    {
      FigReentrantMutexUnlock(*(v37 + 16));
      v42 = 0;
LABEL_46:
      poolBlockState_DecrementBlockUseCount();
      FigXPCRelease(v42);
LABEL_47:
      v38 = 0;
      goto LABEL_42;
    }
  }

  v42 = 0;
LABEL_10:
  v47 = malloc_type_calloc(1uLL, 0x28uLL, 0x1030040A7983876uLL);
  if (v47)
  {
    v48 = v47;
    CFDictionarySetValue(*(v37 + 24), v40, v47);
    if (!*(v37 + 72))
    {
      *(v37 + 72) = FigOSTransactionCreateWithProcessName("FigMemoryOrigin", *(v37 + 48), *(v37 + 56), 0, *(v37 + 64));
    }

    if (!MEMORY[0x19A8D7460](*(v37 + 32), v38))
    {
      DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterAddWeakListener(DefaultLocalCenter, v37, memoryOrigin_poolNotificationListener, 0, v38, 2, 0);
    }

    CFBagAddValue(*(v37 + 32), v38);
    v50 = CFRetain(v38);
    v48[4] = 1;
    *v48 = v50;
    *(v48 + 1) = v40;
    v51 = a13;
    *(v48 + 3) = a14;
    *(v48 + 4) = v51;
    goto LABEL_16;
  }

  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_1_2();
  v75 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v71, 0xFFFFC35FuLL, "<<<< MemoryPool >>>>", 0x97D, v72, v73, v74);
  FigReentrantMutexUnlock(*(v37 + 16));
  if (v75)
  {
    goto LABEL_46;
  }

LABEL_17:
  if (v31)
  {
    v38 = v42;
  }

  else
  {
    v38 = 0;
  }

  if (v31)
  {
    v52 = 0;
  }

  else
  {
    v52 = v42;
  }

  if (!qword_1ED4CCB48)
  {
    goto LABEL_32;
  }

  v53 = FigThreadGetValue(qword_1ED4CCB48);
  if (!v53)
  {
    goto LABEL_32;
  }

  v54 = v53;
  if (!*v53)
  {
    goto LABEL_32;
  }

  v55 = v38;
  Mutable = v53[1];
  v57 = MEMORY[0x1E695E480];
  if (!Mutable)
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 10, MEMORY[0x1E695E9C0]);
    v54[1] = Mutable;
    if (!Mutable)
    {
      v85 = 4819;
      goto LABEL_54;
    }
  }

  if (!v54[2])
  {
    v58 = CFArrayCreateMutable(*v57, 10, MEMORY[0x1E695E9C0]);
    v54[2] = v58;
    if (v58)
    {
      Mutable = v54[1];
      goto LABEL_31;
    }

    v85 = 4823;
LABEL_54:
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_1_2();
    v90 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v86, 0xFFFFCE0EuLL, "<<<< MemoryPool >>>>", v85, v87, v88, v89);
    FigXPCRelease(v52);
    v38 = v55;
    if (v90)
    {
      goto LABEL_42;
    }

    goto LABEL_33;
  }

LABEL_31:
  CFArrayAppendValue(Mutable, v37);
  FigCFArrayAppendInt64(v54[2], v40, v59, v60, v61, v62, v63, v64);
  v38 = v55;
LABEL_32:
  FigXPCRelease(v52);
LABEL_33:
  if (v31)
  {
    xpc_dictionary_set_int64(v31, "OffsetInOrigin", valuea);
    xpc_dictionary_set_int64(v31, "BlockBufferLength", v33);
    xpc_dictionary_set_int64(v31, "BlockSerialNumber", valuePtr);
    if (v42)
    {
      xpc_dictionary_set_value(v31, "OriginData", v42);
    }
  }

  else
  {
    *v29 = valuea;
    v29[1] = v33;
    v66 = valuePtr;
    v29[3] = 0;
    v29[4] = 0;
    v29[2] = v66;
  }

  v67 = OUTLINED_FUNCTION_14_8(v65, @"ImportedBlockSerialNumber");
  v68 = OUTLINED_FUNCTION_14_8(v67, @"RecipientObjectID");
  if (v67)
  {
    v69 = v68;
    if (v68)
    {
      a13 = 0;
      a14 = 0;
      CFNumberGetValue(v67, kCFNumberSInt64Type, &a14);
      CFNumberGetValue(v69, kCFNumberSInt64Type, &a13);
      v70 = a14;
      if (v31)
      {
        xpc_dictionary_set_int64(v31, "RoundTripBlockSerialNumber", a14);
        xpc_dictionary_set_uint64(v31, "RoundTripOriginObjectID", a13);
      }

      else
      {
        v29[3] = a13;
        v29[4] = v70;
      }
    }
  }

LABEL_42:
  FigXPCRelease(v38);
  OUTLINED_FUNCTION_12_10();
}

uint64_t memoryOrigin_unregisterUseOfMultipleBlocks(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_18_4();
  Count = CFArrayGetCount(v4);
  if (Count < 1)
  {
    return 0;
  }

  v11 = Count;
  v12 = 0;
  LODWORD(v13) = 0;
  do
  {
    v16 = 0;
    FigCFArrayGetInt64AtIndex(v2, v12, &v16, v6, v7, v8, v9, v10);
    v14 = memoryOrigin_unregisterUseOfBlock(v3, v16);
    if (v14)
    {
      v13 = v14;
    }

    else
    {
      v13 = v13;
    }

    ++v12;
  }

  while (v11 != v12);
  return v13;
}

size_t FigMemoryOriginUpdateRecipientStateFromIPCMessageData(uint64_t a1, unsigned int *a2, unint64_t a3)
{
  if (a1)
  {
    if (a2)
    {
      if (!a3)
      {
        return 0;
      }

      v4 = *a2;
      if (((8 * v4) | 4uLL) <= a3)
      {
        if (v4)
        {
          v6 = 0;
          LODWORD(v7) = 0;
          do
          {
            v8 = memoryOrigin_unregisterUseOfBlock(a1, *&a2[2 * v6 + 1]);
            if (v8)
            {
              v7 = v8;
            }

            else
            {
              v7 = v7;
            }

            ++v6;
          }

          while (v6 < *a2);
          return v7;
        }

        return 0;
      }

      v10 = 2914;
    }

    else
    {
      v10 = 2912;
    }
  }

  else
  {
    v10 = 2911;
  }

  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_27_2();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v11, 0xFFFFC360uLL, "<<<< MemoryPool >>>>", v10, v12, v13, v14);
}

uint64_t FigMemoryOriginBeginEstablishingMemoryRecipientByFillingInXPCMessage1(void *a1)
{
  value = 0;
  if (qword_1ED4CCB78 != -1)
  {
    dispatch_once(&qword_1ED4CCB78, &__block_literal_global_102);
  }

  v2 = dword_1ED4CCB2C;
  if (dword_1ED4CCB2C)
  {
    v4 = 0;
  }

  else
  {
    v3 = qword_1ED4CCB70;
    v2 = FigXPCServerCopyXPCEndpoint(qword_1ED4CCB38, &value);
    v4 = value;
    if (!v2)
    {
      xpc_dictionary_set_value(a1, "MemoryOriginEndpoint", value);
      xpc_dictionary_set_uint64(a1, "MemoryOriginServerToken", v3);
      v4 = value;
    }
  }

  FigXPCRelease(v4);
  return v2;
}

size_t FigMemoryRecipientCopyBlockBufferFromIPCMessageData(const void *a1, uint64_t a2, uint64_t a3, unint64_t a4, CMBlockBufferRef *a5)
{
  targetBBuf = 0;
  blockBufferOut = 0;
  v23 = 0u;
  v24 = 0u;
  if (!a2)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_1_0();
    v22 = 4399;
LABEL_32:
    v10 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v18, 0xFFFFC356uLL, "<<<< MemoryPool >>>>", v22, v19, v20, v21);
    goto LABEL_9;
  }

  if (!a3)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_1_0();
    v22 = 4400;
    goto LABEL_32;
  }

  if (!a5)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_1_0();
    v22 = 4401;
    goto LABEL_32;
  }

  if (!a4)
  {
LABEL_20:
    v12 = 0;
    v13 = 0;
    v11 = 0;
    goto LABEL_21;
  }

  if (a4 <= 0xB)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_1_0();
    v22 = 4403;
    goto LABEL_32;
  }

  v8 = *(a3 + 8);
  if (40 * v8 + 12 > a4)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_1_0();
    v22 = 4404;
    goto LABEL_32;
  }

  if (v8 == 1)
  {
    v10 = CreateSubBlockBuffer(a1, a2, 0, (a3 + 12), 0, &blockBufferOut);
LABEL_9:
    v11 = v10;
    v12 = 0;
    v13 = 0;
    goto LABEL_21;
  }

  v10 = CMBlockBufferCreateEmpty(a1, v8, 0, &blockBufferOut);
  if (v10)
  {
    goto LABEL_9;
  }

  *&v23 = a3;
  if (!*(a3 + 8))
  {
    goto LABEL_20;
  }

  v14 = 0;
  v15 = (a3 + 12);
  while (1)
  {
    DWORD2(v23) = ++v14;
    appended = CreateSubBlockBuffer(a1, a2, 0, v15, &v23, &targetBBuf);
    v12 = targetBBuf;
    if (appended)
    {
      break;
    }

    appended = CMBlockBufferAppendBufferReference(blockBufferOut, targetBBuf, 0, 0, 0);
    if (appended)
    {
      break;
    }

    if (v12)
    {
      CFRelease(v12);
      targetBBuf = 0;
    }

    v15 += 5;
    if (v14 >= *(a3 + 8))
    {
      v12 = 0;
      v11 = 0;
      goto LABEL_19;
    }
  }

  v11 = appended;
LABEL_19:
  v13 = *(&v24 + 1);
LABEL_21:
  FigXPCRelease(v13);
  FigXPCRelease(v24);
  if (v12)
  {
    CFRelease(v12);
  }

  if (a5)
  {
    *a5 = blockBufferOut;
  }

  return v11;
}

size_t FigMemoryOriginBeginTransactionMakingRegistrationsContingentOnIt()
{
  if (qword_1ED4CCB40 != -1)
  {
    dispatch_once(&qword_1ED4CCB40, &__block_literal_global_46_0);
  }

  result = qword_1ED4CCB48;
  if (qword_1ED4CCB48)
  {
    Value = FigThreadGetValue(qword_1ED4CCB48);
    if (Value)
    {
LABEL_5:
      result = 0;
      *Value = 1;
      return result;
    }

    v2 = malloc_type_calloc(1uLL, 0x18uLL, 0x1020040984C81BBuLL);
    if (v2)
    {
      Value = v2;
      result = FigThreadSetValue(qword_1ED4CCB48, v2);
      if (!result)
      {
        goto LABEL_5;
      }
    }

    else
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_0();

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFC35FuLL, "<<<< MemoryPool >>>>", 0x12B3, v4, v5, v6);
    }
  }

  return result;
}

void poolBlockState_DecrementUseCountInternal(uint64_t a1, const void **a2)
{
  v2 = *(a2 + 8);
  v3 = __OFSUB__(v2, 1);
  v4 = v2 - 1;
  if (v4 < 0 == v3)
  {
    *(a2 + 8) = v4;
    if (!v4)
    {
      CFDictionaryRemoveValue(*(a1 + 64), a2[2]);
      if (*(a1 + 16))
      {
        a2[3] = (*(a1 + 32) + FigGetUpTimeNanoseconds());
        CFArrayAppendValue(*(a1 + 72), a2);
        if (!*(a1 + 128))
        {
          *(a1 + 128) = 1;
          v7 = *(a1 + 120);
          v8 = dispatch_time(0, 300000000000);
          dispatch_source_set_timer(v7, v8, 0xFFFFFFFFFFFFFFFFLL, 0);
        }

        v9 = a2[3];
        if (*(a1 + 48) > v9)
        {
          *(a1 + 48) = v9;
        }
      }

      else
      {
        poolBlockState_DeallocateVMMemory(a2);
        CFDictionaryRemoveValue(*(a1 + 80), *a2);
        poolBlockState_postForgottenSerialNumber(a1, a2);

        free(a2);
      }
    }
  }
}

void poolBlockState_ageOutTimerHandler(id *a1)
{
  v6 = 0;
  v1 = FigCFWeakReferenceHolderCopyReferencedObject(a1);
  if (v1)
  {
    v2 = v1;
    FigSimpleMutexLock(v1[7]);
    *(v2 + 128) = 0;
    poolBlockState_FreeBlocks(v2, 0, &v6);
    if (v6)
    {
      v3 = 1000000000;
    }

    else
    {
      if (!CFArrayGetCount(*(v2 + 72)))
      {
LABEL_7:
        FigSimpleMutexUnlock(*(v2 + 56));
        CFRelease(v2);
        return;
      }

      v3 = 300000000000;
    }

    *(v2 + 128) = 1;
    v4 = *(v2 + 120);
    v5 = dispatch_time(0, v3);
    dispatch_source_set_timer(v4, v5, 0xFFFFFFFFFFFFFFFFLL, 0);
    goto LABEL_7;
  }
}

uint64_t poolBlockState_DecrementBlockUseCount()
{
  OUTLINED_FUNCTION_18_4();
  FigSimpleMutexLock(*(v2 + 56));
  Value = CFDictionaryGetValue(*(v1 + 80), v0);
  poolBlockState_DecrementUseCountInternal(v1, Value);
  v4 = *(v1 + 56);

  return FigSimpleMutexUnlock(v4);
}

size_t memoryOriginServer_handleRemoteMessageWithReply(_xpc_connection_s *a1, void *a2, void *a3)
{
  v70 = 0;
  OpCode = FigXPCMessageGetOpCode(a2, &v70);
  if (OpCode)
  {
    return OpCode;
  }

  if (v70 != 1718903656)
  {
    if (v70 == 1668441400)
    {
      value = 0;
      string = xpc_dictionary_get_string(a2, ".DebugName");
      v8 = xpc_dictionary_get_string(a2, ".ProcessName");
      v9 = *MEMORY[0x1E695E480];
      if (qword_1ED4CCB80 != -1)
      {
        dispatch_once(&qword_1ED4CCB80, &__block_literal_global_111);
      }

      Instance = _CFRuntimeCreateInstance();
      if (Instance)
      {
        v11 = Instance;
        v12 = FigReentrantMutexCreate();
        *(v11 + 16) = v12;
        if (v12)
        {
          OUTLINED_FUNCTION_4_17();
          Mutable = CFDictionaryCreateMutable(v13, v14, v15, v16);
          *(v11 + 24) = Mutable;
          if (Mutable)
          {
            v18 = CFBagCreateMutable(v9, 0, MEMORY[0x1E695E9D0]);
            *(v11 + 32) = v18;
            if (v18)
            {
              if (string)
              {
                v19 = strndup(string, 0x64uLL);
              }

              else
              {
                v19 = strdup("unnamed");
              }

              *(v11 + 48) = v19;
              if (v8)
              {
                v38 = strndup(v8, 0x64uLL);
              }

              else
              {
                v38 = strdup("unknown");
              }

              *(v11 + 64) = v38;
              *(v11 + 56) = xpc_connection_get_pid(a1);
              OUTLINED_FUNCTION_7_15();
              v45 = FigXPCServerAssociateObjectWithConnection(v39, v40, v41, v42, v43, v44);
              if (v45)
              {
                v37 = v45;
                goto LABEL_34;
              }

LABEL_33:
              xpc_dictionary_set_uint64(a3, ".objectID", value);
              v37 = 0;
              *(v11 + 40) = value;
LABEL_34:
              v46 = v11;
LABEL_38:
              CFRelease(v46);
              return v37;
            }

            v52 = 2313;
          }

          else
          {
            v52 = 2310;
          }
        }

        else
        {
          v52 = 2307;
        }

        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_27_2();
        v37 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v61, 0xFFFFC35FuLL, "<<<< MemoryPool >>>>", v52, v62, v63, v64);
        CFRelease(v11);
      }

      else
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_27_2();
        v37 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v48, 0xFFFFC35FuLL, "<<<< MemoryPool >>>>", 0x900, v49, v50, v51);
      }

      if (v37)
      {
        return v37;
      }

      OUTLINED_FUNCTION_4_17();
      OpCode = FigXPCServerAssociateObjectWithConnection(v65, v66, v67, v68, 0, v69);
      v11 = 0;
      if (!OpCode)
      {
        goto LABEL_33;
      }
    }

    else
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_27_2();
      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v33, 0xFFFFC0E2uLL, "<<<< MemoryPool >>>>", 0xC2B, v34, v35, v36);
    }

    return OpCode;
  }

  value = 0;
  uint64 = xpc_dictionary_get_uint64(a2, ".objectID");
  int64 = xpc_dictionary_get_int64(a2, "BlockSerialNumber");
  v22 = FigXPCServerLookupAndRetainAssociatedObject(a1, uint64, &value, 0);
  if (!v22)
  {
    FigReentrantMutexLock(*(value + 16));
    v23 = CFDictionaryGetValue(*(value + 24), int64);
    if (v23)
    {
      empty = xpc_shmem_create(*(v23 + 3), *(v23 + 4));
      if (!empty)
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_27_2();
        v37 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v57, 0xFFFFC35FuLL, "<<<< MemoryPool >>>>", 0xBCB, v58, v59, v60);
        goto LABEL_36;
      }

      xpc_dictionary_set_value(a3, "OriginData", empty);
      xpc_release(empty);
      v25 = xpc_dictionary_get_value(a2, "AdditionalBlockSerialNumbers");
      count = xpc_array_get_count(v25);
      if (count)
      {
        v27 = count;
        empty = xpc_array_create_empty();
        v28 = 0;
        while (1)
        {
          v29 = xpc_array_get_int64(v25, v28);
          v30 = CFDictionaryGetValue(*(value + 24), v29);
          if (!v30)
          {
            break;
          }

          v31 = xpc_shmem_create(*(v30 + 3), *(v30 + 4));
          if (!v31)
          {
            break;
          }

          v32 = v31;
          xpc_array_append_value(empty, v31);
          xpc_release(v32);
          if (v27 == ++v28)
          {
            if (empty)
            {
              xpc_dictionary_set_value(a3, "AdditionalDataObjects", empty);
            }

            goto LABEL_35;
          }
        }

        if (empty)
        {
          xpc_release(empty);
          goto LABEL_26;
        }

LABEL_35:
        v37 = 0;
        goto LABEL_36;
      }

LABEL_26:
      v37 = 0;
    }

    else
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_27_2();
      v37 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v53, 0xFFFFC360uLL, "<<<< MemoryPool >>>>", 0xBC8, v54, v55, v56);
    }

    empty = 0;
LABEL_36:
    FigReentrantMutexUnlock(*(value + 16));
    goto LABEL_37;
  }

  v37 = v22;
  empty = 0;
LABEL_37:
  FigXPCRelease(empty);
  FigXPCRelease(0);
  v46 = value;
  if (value)
  {
    goto LABEL_38;
  }

  return v37;
}