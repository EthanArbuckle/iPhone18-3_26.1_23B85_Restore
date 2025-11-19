uint64_t FigAudioFileStreamFormatReaderCreateFromStream_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t FigAudioFileStreamFormatReaderCreateFromStream_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAudioFileStreamFormatReaderCreateFromStream_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAudioFileStreamFormatReaderCopyProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CopyAudioFileStreamDuration_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t CopyAudioFileStreamDuration_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t MapPacketNumberToFrameNumber_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t FigAudioFileStreamTrackReaderCopyProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAudioFileStreamTrackReaderCopySampleCursorService_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t createFigAudioPacketAccessor_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t FigAudioFileStreamCursor_copyProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FillPacketRequestFromCache_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAudioFileStreamCursor_copy_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t AudioFileStream_FigPropertyListenerProc_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t AudioFileStream_FigPropertyListenerProc_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t AudioFileStream_FigPropertyListenerProc_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t AudioFileStream_FigPropertyListenerProc_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void FigDataChannelResourceServer_DisposeServedState(void *a1)
{
  if (a1)
  {
    if (dword_1EAF16D10)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v3 = a1[1];
    if (v3)
    {
      v4 = *(*(CMBaseObjectGetVTable() + 16) + 48);
      if (v4)
      {
        v4(v3);
      }

      v5 = FigCFWeakReferenceHolderCopyReferencedObject();
      if (v5)
      {
        v6 = v5;
        v7 = a1[1];
        v8 = *(*(CMBaseObjectGetVTable() + 24) + 80);
        if (v8)
        {
          v8(v6, v7);
        }

        CFRelease(v6);
      }

      v9 = a1[1];
      if (v9)
      {
        CFRelease(v9);
        a1[1] = 0;
      }
    }

    v10 = a1[2];
    if (v10)
    {
      CFRelease(v10);
    }

    free(a1);
  }
}

uint64_t FigDataChannelResourceServer_CreateServedState_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigDataChannelResourceServer_CreateServedState_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigDataChannelResourceServer_CreateServedState_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigDataChannelResourceServer_CreateServedState_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigDataChannelResourceServer_CreateServedState_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigTextSampleBufferDecryptSample(uint64_t a1, opaqueCMSampleBuffer *a2, void *a3)
{
  blockBufferOut = 0;
  Decryptor = FigSampleBufferGetDecryptor();
  if (Decryptor)
  {
    v7 = Decryptor;
    if (Decryptor != *(a1 + 56))
    {
      v8 = CFGetTypeID(Decryptor);
      TypeID = FigCPECryptorGetTypeID();
      v10 = *(a1 + 56);
      if (v8 == TypeID)
      {
        *(a1 + 56) = v7;
        CFRetain(v7);
        if (v10)
        {
          CFRelease(v10);
        }
      }

      else if (v10)
      {
        CFRelease(*(a1 + 56));
        *(a1 + 56) = 0;
      }
    }
  }

  FormatDescription = CMSampleBufferGetFormatDescription(a2);
  if (FigCPEIsSupportedFormatDescription(FormatDescription) && !*(a1 + 56))
  {
    v17 = FigSignalErrorAtGM();
    goto LABEL_36;
  }

  DataBuffer = CMSampleBufferGetDataBuffer(a2);
  IsRangeContiguous = CMBlockBufferIsRangeContiguous(DataBuffer, 0, 0);
  v14 = MEMORY[0x1E695E480];
  if (IsRangeContiguous)
  {
    blockBufferOut = CFRetain(DataBuffer);
  }

  else
  {
    v15 = *MEMORY[0x1E695E480];
    DataLength = CMBlockBufferGetDataLength(DataBuffer);
    v17 = CMBlockBufferCreateContiguous(v15, DataBuffer, v15, 0, 0, DataLength, 0, &blockBufferOut);
    if (v17)
    {
      goto LABEL_36;
    }
  }

  v18 = *(a1 + 56);
  if (v18)
  {
    v19 = blockBufferOut;
    v20 = CMBlockBufferGetDataLength(blockBufferOut);
    v30 = 0;
    v17 = CMBlockBufferCreateWithMemoryBlock(*v14, 0, v20, *v14, 0, 0, v20, 1u, &v30);
    if (!v17)
    {
      v21 = v30;
      v22 = *(CMBaseObjectGetVTable() + 16);
      if (*v22 >= 4uLL && (v23 = v22[4]) != 0)
      {
        v24 = v23(v18, v19, v21);
        if (!v24)
        {
          v25 = blockBufferOut;
          v18 = v30;
          blockBufferOut = v30;
          if (v30)
          {
            CFRetain(v30);
          }

          if (v25)
          {
            CFRelease(v25);
          }

          goto LABEL_22;
        }

        v26 = v24;
      }

      else
      {
        v26 = 4294954514;
      }

      CFRelease(v30);
LABEL_26:
      v18 = 0;
      goto LABEL_30;
    }

LABEL_36:
    v26 = v17;
    goto LABEL_26;
  }

LABEL_22:
  if (FigCFEqual())
  {
    v26 = 0;
  }

  else
  {
    CopyWithNoData = FigSampleBufferCreateCopyWithNoData();
    if (CopyWithNoData)
    {
      v26 = CopyWithNoData;
    }

    else
    {
      v26 = CMSampleBufferSetDataBuffer(0, blockBufferOut);
      if (!v26)
      {
        *a3 = 0;
      }
    }
  }

LABEL_30:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  return v26;
}

uint64_t FigTextSampleBufferCopyAttributedString(uint64_t a1, const __CFAllocator *a2, CMSampleBufferRef sbuf, __CFAttributedString **a4, char *a5, _BYTE *a6, double *a7)
{
  keys[6] = *MEMORY[0x1E69E9840];
  dataPointerOut = 0;
  v11 = *(a1 + 8);
  v12 = *(a1 + 16);
  v13 = *(a1 + 24);
  v14 = *(a1 + 32);
  FormatDescription = CMSampleBufferGetFormatDescription(sbuf);
  v16 = AssureDefaultAttributes(a1, a2, FormatDescription);
  if (v16)
  {
    return v16;
  }

  totalLengthOut = 0;
  lengthAtOffsetOut = 0;
  v105 = *(a1 + 65);
  DataBuffer = CMSampleBufferGetDataBuffer(sbuf);
  CMBlockBufferGetDataPointer(DataBuffer, 0, &lengthAtOffsetOut, &totalLengthOut, &dataPointerOut);
  v18 = dataPointerOut;
  v19 = totalLengthOut;
  v20 = (dataPointerOut + 2);
  v21 = *dataPointerOut;
  dataPointerOut += 2;
  v22 = bswap32(v21);
  if ((v22 & 0x80000000) != 0 || (v23 = SHIWORD(v22), SHIWORD(v22) + 2 > totalLengthOut))
  {
    OUTLINED_FUNCTION_62_0();
    OUTLINED_FUNCTION_2_31();
    return FigSignalErrorAtGM();
  }

  dataPointerOut = &v20[SHIWORD(v22)];
  if (SHIWORD(v22) < 2)
  {
    goto LABEL_8;
  }

  v24 = *v20;
  if (v24 == 255)
  {
    if (v18[3] != 254)
    {
LABEL_8:
      v25 = a2;
      v26 = v23;
      v27 = 134217984;
      v28 = 0;
      goto LABEL_9;
    }
  }

  else if (v24 != 254 || v18[3] != 255)
  {
    goto LABEL_8;
  }

  v25 = a2;
  v26 = v23;
  v27 = 256;
  v28 = 1;
LABEL_9:
  v29 = CFStringCreateWithBytes(v25, v20, v26, v27, v28);
  if (!v29)
  {
    OUTLINED_FUNCTION_62_0();
    return FigSignalErrorAtGM();
  }

  v111 = a1;
  cf = v29;
  v30 = CFRetain(v29);
  Length = CFStringGetLength(v30);
  if (CFStringFind(v30, @"\r\n", 0).length || CFStringFind(v30, @"\n\r", 0).length)
  {
    OUTLINED_FUNCTION_1_32();
    Results = CFStringCreateArrayWithFindResults(v32, v33, v34, v132, v35);
    MutableCopy = CFStringCreateMutableCopy(a2, Length, v30);
    if (MutableCopy)
    {
      v38 = MutableCopy;
      OUTLINED_FUNCTION_1_32();
      if (CFStringFindAndReplace(v39, v40, v41, v133, v42) || (OUTLINED_FUNCTION_1_32(), CFStringFindAndReplace(v43, v44, v45, v134, v46)))
      {
        v23 = CFStringGetLength(v38);
        CFRetain(v38);
        CFRelease(cf);
        cf = v38;
        theArray = Results;
      }

      else
      {
        theArray = Results;
      }

      goto LABEL_16;
    }

    OUTLINED_FUNCTION_62_0();
    FigSignalErrorAtGM();
    theArray = 0;
    v38 = Results;
    if (Results)
    {
LABEL_16:
      CFRelease(v38);
    }
  }

  else
  {
    theArray = 0;
  }

  if (v30)
  {
    CFRelease(v30);
  }

  v47 = cf;
  if (totalLengthOut <= v23 + 2)
  {
    v51 = v111;
    Mutable = CFAttributedStringCreate(a2, cf, *(v111 + 40));
    goto LABEL_23;
  }

  v48 = &v18[v19];
  v49 = *MEMORY[0x1E695E480];
  Mutable = CFAttributedStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFAttributedStringBeginEditing(Mutable);
  v128.location = 0;
  v128.length = 0;
  CFAttributedStringReplaceString(Mutable, v128, cf);
  v129.length = CFAttributedStringGetLength(Mutable);
  v51 = v111;
  v129.location = 0;
  CFAttributedStringSetAttributes(Mutable, v129, *(v111 + 40), 1u);
  v52 = dataPointerOut;
  if ((dataPointerOut + 8) <= v48)
  {
    attrName = *MEMORY[0x1E69631E0];
    v98 = *MEMORY[0x1E69608A8];
    v99 = *MEMORY[0x1E69607D0];
    v96 = *MEMORY[0x1E69631D8];
    v97 = *MEMORY[0x1E6960990];
    v95 = *MEMORY[0x1E6960878];
    v94 = *MEMORY[0x1E6960858];
    v113 = *MEMORY[0x1E695E4D0];
    v112 = *MEMORY[0x1E695E4C0];
    v100 = v48;
    do
    {
      v54 = bswap32(*v52);
      dataPointerOut = v52 + 4;
      v55 = *(v52 + 1);
      v56 = (v52 + 8);
      dataPointerOut = v52 + 8;
      v57 = v54 - 8;
      if ((v54 - 8) < 0 || &v56[v57] > v48)
      {
        OUTLINED_FUNCTION_62_0();
        OUTLINED_FUNCTION_2_31();
        v53 = FigSignalErrorAtGM();
        CFRelease(Mutable);
        v47 = cf;
        goto LABEL_92;
      }

      v58 = bswap32(v55);
      switch(v58)
      {
        case 0x66726364u:
          v105 = 1;
          break;
        case 0x74777270u:
          v61 = *v56;
          if (!v61)
          {
            v62 = v54 - 8;
            v63 = @"None";
            goto LABEL_54;
          }

          if (v61 == 1)
          {
            v62 = v54 - 8;
            v63 = @"AutomaticSoftWrap";
LABEL_54:
            v130.length = CFAttributedStringGetLength(Mutable);
            v130.location = 0;
            CFAttributedStringSetAttribute(Mutable, v130, attrName, v63);
            v57 = v62;
          }

          break;
        case 0x74626F78u:
          v64 = bswap32(*(v52 + 4));
          v65 = bswap32(*(v52 + 5));
          v11 = (v65 >> 16);
          v12 = (v64 >> 16);
          v13 = ((bswap32(*(v52 + 7)) >> 16) - (v65 >> 16));
          v14 = ((bswap32(*(v52 + 6)) >> 16) - (v64 >> 16));
          break;
        case 0x7374796Cu:
          v101 = v54 - 8;
          desc = *v51;
          keys[0] = v99;
          keys[1] = v98;
          keys[2] = v97;
          keys[3] = v96;
          keys[4] = v95;
          keys[5] = v94;
          v125 = 0u;
          v126 = 0u;
          *values = 0u;
          fontNameOut = 0;
          valuePtr = 0.0;
          v59 = *v56;
          if (theArray)
          {
            Count = CFArrayGetCount(theArray);
          }

          else
          {
            Count = 0;
          }

          if (v101 < 0xE)
          {
            goto LABEL_51;
          }

          v66 = bswap32(v59) >> 16;
          if (((12 * v66) | 2uLL) > v101 || Mutable == 0)
          {
            goto LABEL_51;
          }

          v68 = CFAttributedStringGetLength(Mutable);
          if (v66 >= 1)
          {
            v69 = 0;
            allocator = v49;
            v110 = v52 + 10;
            v106 = v66;
            v107 = v68;
            v108 = Mutable;
            while (1)
            {
              v70 = &v110[12 * v69];
              v71 = bswap32(*v70);
              if ((v71 & 0x80000000) != 0)
              {
                break;
              }

              v72 = HIWORD(v71);
              v73 = v72;
              if (v68 < v72 || (v74 = bswap32(*(v70 + 1)) >> 16, v75 = v74, v76 = v74 - v72, v76 < 0) || v68 < v74)
              {
                v49 = allocator;
                break;
              }

              v77 = v70[6];
              v117 = v70[7];
              v118 = *(v70 + 2);
              if (Count < 1)
              {
                v80 = v72;
              }

              else
              {
                v78 = 0;
                v79 = 0;
                v80 = v72;
                do
                {
                  v81 = *CFArrayGetValueAtIndex(theArray, v78);
                  LODWORD(v82) = v81 < v75;
                  v83 = v81 < v73;
                  v84 = v81 < v73;
                  if (v83)
                  {
                    v82 = 0;
                  }

                  else
                  {
                    v82 = v82;
                  }

                  v80 -= v84;
                  v76 -= v82;
                  v78 = ++v79;
                }

                while (Count > v79);
              }

              if (v77)
              {
                v85 = v113;
              }

              else
              {
                v85 = v112;
              }

              if ((v77 & 2) != 0)
              {
                v86 = v113;
              }

              else
              {
                v86 = v112;
              }

              values[0] = v85;
              values[1] = v86;
              if ((v77 & 4) != 0)
              {
                v87 = v113;
              }

              else
              {
                v87 = v112;
              }

              *&v125 = v87;
              valuePtr = v117;
              v49 = allocator;
              *(&v125 + 1) = CFNumberCreate(allocator, kCFNumberCGFloatType, &valuePtr);
              *&v126 = FigCreateCFArrayFromColorValues();
              CMTextFormatDescriptionGetFontName(desc, __rev16(v118), &fontNameOut);
              if (fontNameOut)
              {
                *(&v126 + 1) = CFRetain(fontNameOut);
                v88 = 6;
              }

              else
              {
                v88 = 5;
              }

              Mutable = v108;
              v89 = CFDictionaryCreate(allocator, keys, values, v88, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
              v131.location = v80;
              v131.length = v76;
              CFAttributedStringSetAttributes(v108, v131, v89, 0);
              CFRelease(v89);
              for (i = 0; i != 6; ++i)
              {
                v91 = values[i];
                if (v91)
                {
                  CFRelease(v91);
                  values[i] = 0;
                }
              }

              ++v69;
              v68 = v107;
              if (v69 == v106)
              {
                goto LABEL_52;
              }
            }

LABEL_51:
            OUTLINED_FUNCTION_62_0();
            OUTLINED_FUNCTION_2_31();
            FigSignalErrorAtGM();
          }

LABEL_52:
          v51 = v111;
          v48 = v100;
          v57 = v101;
          break;
      }

      v52 = &dataPointerOut[v57];
      dataPointerOut = v52;
    }

    while ((v52 + 8) <= v48);
  }

  CFAttributedStringEndEditing(Mutable);
  v47 = cf;
LABEL_23:
  *a4 = Mutable;
  if (Mutable)
  {
    if (a5)
    {
      *a5 = v105;
    }

    if (a6)
    {
      *a6 = *(v51 + 64);
    }

    v53 = 0;
    if (a7)
    {
      *a7 = v11;
      a7[1] = v12;
      a7[2] = v13;
      a7[3] = v14;
    }
  }

  else
  {
    OUTLINED_FUNCTION_62_0();
    v53 = FigSignalErrorAtGM();
  }

LABEL_92:
  if (theArray)
  {
    CFRelease(theArray);
  }

  CFRelease(v47);
  return v53;
}

uint64_t FigByteFlumeBaseInitialize(uint64_t a1, uint64_t a2)
{
  *(a2 + 16) = 1;
  result = FigRetainProxyCreate();
  if (!result)
  {
    v4 = dispatch_queue_create("com.apple.coremedia.byteflume", 0);
    *(a2 + 8) = v4;
    if (v4)
    {
      return 0;
    }

    else
    {

      return FigSignalErrorAtGM();
    }
  }

  return result;
}

CFMutableDictionaryRef FigByteFlumeCreateNetworkPathEvaluatorCreateOptionsFromHTTPRequestOptions(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    OUTLINED_FUNCTION_228();
    FigCFDictionarySetValueFromKeyInDict();
    OUTLINED_FUNCTION_228();
    FigCFDictionarySetValueFromKeyInDict();
    OUTLINED_FUNCTION_228();
    FigCFDictionarySetValueFromKeyInDict();
  }

  else
  {
    FigSignalErrorAtGM();
  }

  return Mutable;
}

uint64_t FigByteFlumeCreateReportingAgent(uint64_t a1, uint64_t a2, const __CFDictionary *a3, const void *a4, const void *a5, int a6, const __CFDictionary *a7)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v14 = Mutable;
    if (a7)
    {
      a7 = FigRCLCopyConfigurationGroupName(a7);
      if (a7)
      {
        v15 = OUTLINED_FUNCTION_228();
        CFDictionarySetValue(v15, v16, v17);
      }
    }

    cf = a7;
    v51 = a1;
    if (a2)
    {
      v48 = a5;
      Value = FigCFDictionaryGetValue();
      if (!Value || (v19 = Value, v20 = CFGetTypeID(Value), v20 != CFStringGetTypeID()))
      {
        v19 = 0;
      }

      v47 = a6;
      v21 = FigCFDictionaryGetValue();
      v22 = FigCFDictionaryGetValue();
      if (!v22 || (v23 = v22, v24 = CFGetTypeID(v22), v24 != CFStringGetTypeID()))
      {
        v23 = 0;
      }

      v46 = v21;
      v25 = FigCFDictionaryGetValue();
      if (!v25 || (v26 = v25, v27 = CFGetTypeID(v25), v27 != CFStringGetTypeID()))
      {
        v26 = 0;
      }

      v28 = v14;
      v29 = FigCFDictionaryGetValue();
      if (!v29 || (v30 = v29, v31 = CFGetTypeID(v29), v31 != CFStringGetTypeID()))
      {
        v30 = 0;
      }

      v32 = FigCFDictionaryGetValue();
      if (!v32 || (v33 = v32, v34 = v19, v35 = a3, v36 = CFGetTypeID(v32), v37 = v36 == CFDictionaryGetTypeID(), a3 = v35, v19 = v34, !v37))
      {
        v33 = 0;
      }

      v14 = v28;
      if (v23)
      {
        CFDictionarySetValue(v28, @"MediaIdentifier", v23);
      }

      if (v26)
      {
        CFDictionarySetValue(v28, @"ContentProvider", v26);
      }

      a5 = v48;
      if (v30)
      {
        CFDictionarySetValue(v28, @"StorefrontID", v30);
      }

      a6 = v47;
      if (v33)
      {
        CFDictionarySetValue(v14, @"ServiceInformationKey", v33);
      }

      a1 = v51;
      v38 = v46;
    }

    else
    {
      v38 = 0;
      v19 = 0;
    }

    if (a3)
    {
      a3 = CFDictionaryGetValue(a3, @"X-Playback-Session-Id");
    }

    if (a6)
    {
      v39 = 0;
    }

    else
    {
      v39 = FigIsItOKToLogURLs() != 0;
    }

    v40 = (a1 + 32);
    FigReportingAgentCreate(a3, 0, a4, v19, v38, a5, 2, v14, v39, (a1 + 32));
    if (dword_1EAF16D30 >= 2)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      a1 = v51;
    }

    v42 = *v40;
    if (*v40)
    {
      v43 = *(*(CMBaseObjectGetVTable() + 16) + 104);
      if (v43)
      {
        v43(v42, 0);
      }
    }

    CFRelease(v14);
    if (cf)
    {
      CFRelease(cf);
    }
  }

  v44 = MGCopyAnswer();
  *(a1 + 40) = *MEMORY[0x1E695E4D0] == v44;
  if (v44)
  {
    CFRelease(v44);
  }

  result = FigGetCFPreferenceNumberWithDefault();
  *(a1 + 44) = result;
  return result;
}

uint64_t pfp_replyingMessageHandler()
{
  v6 = 0;
  cf = 0;
  v5 = 0;
  BlockBufferDataWithSize = FigXPCMessageCreateBlockBufferDataWithSize();
  if (BlockBufferDataWithSize || (BlockBufferDataWithSize = FigXPCMessageCopyCFString(), BlockBufferDataWithSize))
  {
    v3 = BlockBufferDataWithSize;
    v2 = 0;
  }

  else
  {
    PlaylistFileParserFromDataInProcess = CreatePlaylistFileParserFromDataInProcess(cf, &v5);
    v2 = v5;
    if (!PlaylistFileParserFromDataInProcess)
    {
      PlaylistFileParserFromDataInProcess = FigXPCMessageSetCFArray();
    }

    v3 = PlaylistFileParserFromDataInProcess;
  }

  PlaylistFileParserDestroy(v2);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return v3;
}

uint64_t CreatePlaylistFileParserFromData_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CreatePlaylistFileParserFromData_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CreatePlaylistFileParserFromDataInProcess_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CreatePlaylistFileParserFromDataInProcess_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CreatePlaylistFileParserFromDataInProcess_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void CreatePlaylistFileParserFromDataInProcess_cold_4(const void *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM();

  CFRelease(a1);
}

uint64_t CreatePlaylistFileParserFromDataInProcess_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

CFTypeRef FigCopyUTITypesForFormatReaderIdentifier(CFTypeRef cf1)
{
  v1 = cf1;
  theDict = 0;
  if (!cf1)
  {
    return v1;
  }

  if (CFEqual(cf1, @"com.apple.coremedia.formatreader.quicktime-iso"))
  {
    v2 = "<?xml version=1.0 encoding=UTF-8?><!DOCTYPE plist PUBLIC -//Apple Computer//DTD PLIST 1.0//EN http://www.apple.com/DTDs/PropertyList-1.0.dtd><plist version=1.0><dict>\t<key>ContainerLabelling</key>\t<dict>\t\t<key>com.apple.ostype</key>\t\t<array>\t\t\t<string>MooV</string>\t\t</array>\t\t<key>public.mime-type</key>\t\t<array>\t\t\t<string>video/quicktime</string>\t\t\t<string>video/mp4</string>\t\t</array>\t\t<key>public.filename-extension</key>\t\t<array>\t\t\t<string>mov</string>\t\t\t<string>qt</string>\t\t\t<string>qta</string>\t\t\t<string>mqv</string>\t\t\t<string>mp4</string>\t\t\t<string>m4a</string>\t\t\t<string>m4v</string>\t\t\t<string>m4b</string>\t\t\t<string>m4p</string>\t\t\t<string>m4r</string>\t\t\t<string>aax</string>\t\t\t<string>3gp</string>\t\t\t<string>3gpp</string>\t\t\t<string>3g2</string>\t\t\t<string>3gp2</string>\t\t\t<string>aivu</string>\t\t</array>\t\t<key>com.apple.uti</key>\t\t<array>\t\t\t<string>com.apple.quicktime-movie</string>\t\t\t<string>com.apple.quicktime-audio</string>\t\t\t<string>public.mpeg-4</string>\t\t\t<string>public.mpeg-4-audio</string>\t\t\t<string>com.apple.m4a-audio</string>\t\t\t<string>com.apple.protected-mpeg-4-audio</string>\t\t\t<string>com.apple.protected-mpeg-4-audio-b</string>\t\t\t<string>com.apple.m4v-video</string>\t\t\t<string>com.apple.mpeg-4-ringtone</string>\t\t\t<string>com.audible.aax-audiobook</string>\t\t\t<string>public.3gpp</string>\t\t\t<string>public.3gpp2</string>\t\t\t<string>com.apple.immersive-video</string>\t\t</array>\t</dict></dict></plist>";
  }

  else if (CFEqual(v1, @"com.apple.coremedia.formatreader.webvtt"))
  {
    v2 = "<?xml version=1.0 encoding=UTF-8?><!DOCTYPE plist PUBLIC -//Apple Computer//DTD PLIST 1.0//EN http://www.apple.com/DTDs/PropertyList-1.0.dtd><plist version=1.0><dict>\t<key>ContainerLabelling</key>\t<dict>\t\t<key>public.mime-type</key>\t\t<array>\t\t\t<string>text/vtt</string>\t\t</array>\t\t<key>public.filename-extension</key>\t\t<array>\t\t\t<string>vtt</string>\t\t\t<string>webvtt</string>\t\t</array>\t\t\t<key>com.apple.uti</key>\t\t\t<array>\t\t\t\t<string>org.w3.webvtt</string>\t\t\t</array>\t</dict></dict></plist>";
  }

  else if (CFEqual(v1, @"com.apple.coremedia.formatreader.mpeg"))
  {
    v2 = "<?xml version=1.0 encoding=UTF-8?><!DOCTYPE plist PUBLIC -//Apple Computer//DTD PLIST 1.0//EN http://www.apple.com/DTDs/PropertyList-1.0.dtd><plist version=1.0><dict>\t<key>ContainerLabelling</key>\t<dict>\t\t<key>com.apple.ostype</key>\t\t<array>\t\t\t<string>MPG2</string>\t\t\t<string>mMPG</string>           <string>m2ts</string>\t\t\t<string>MPEG</string>\t\t\t<string>MPG </string>\t\t</array>\t\t<key>public.mime-type</key>\t\t<array>\t\t\t<string>video/mpeg</string>\t\t\t<string>video/x-mpeg</string>\t\t\t<string>video/mpeg2</string>\t\t\t<string>video/x-mpeg2</string>\t\t\t<string>video/mpg</string>\t\t\t<string>video/x-mpg</string>\t\t\t<string>video/mp2t</string>\t\t\t<string>video/mp2p</string>\t\t\t<string>video/x-mp2p</string>\t\t\t<string>video/mp1s</string>\t\t\t<string>video/x-mp1s</string>\t\t</array>\t\t<key>public.filename-extension</key>\t\t<array>\t\t\t<string>mpeg</string>\t\t\t<string>m2v</string>\t\t\t<string>mpe</string>\t\t\t<string>mpg</string>\t\t\t<string>mp2</string>\t\t\t<string>mod</string>\t\t\t<string>vob</string>\t\t\t<string>m2ts</string>\t\t\t<string>m2t</string>\t\t\t<string>ts</string>\t\t\t<string>mts</string>\t\t</array>\t\t<key>com.apple.uti</key>\t\t<array>\t\t\t<string>public.mpeg</string>\t\t\t<string>public.mp2</string>\t\t\t<string>public.mpeg-2-video</string>\t\t\t<string>public.mpeg-2-transport-stream</string>\t\t</array>\t</dict></dict></plist>";
  }

  else
  {
    if (!CFEqual(v1, @"com.apple.coremedia.formatreader.audiofilestream"))
    {
      goto LABEL_18;
    }

    v2 = "<?xml version=1.0 encoding=UTF-8?><!DOCTYPE plist PUBLIC -//Apple Computer//DTD PLIST 1.0//EN http://www.apple.com/DTDs/PropertyList-1.0.dtd><plist version=1.0><dict>\t<key>ContainerLabelling</key>\t<dict>\t\t<key>com.apple.ostype</key>\t\t<array>\t\t\t<string>mp3!</string>\t\t\t<string>MP3!</string>\t\t\t<string>MPG3</string>\t\t\t<string>mpg3</string>\t\t\t<string>Mp3 </string>\t\t\t<string>MP3 </string>\t\t\t<string>amr </string>\t\t\t<string>amrw</string>\t\t</array>\t\t<key>public.mime-type</key>\t\t<array>\t\t\t<string>audio/mpeg</string>\t\t\t<string>audio/AMR</string>\t\t\t<string>audio/AMR-WB</string>\t\t\t<string>audio/aac</string>\t\t\t<string>audio/flac</string>\t\t\t<string>audio/usac</string>\t\t\t<string>audio/ogg</string>\t\t</array>\t\t<key>public.filename-extension</key>\t\t<array>\t\t\t<string>mp3</string>\t\t\t<string>m1a</string>\t\t\t<string>m2a</string>\t\t\t<string>mpa</string>\t\t\t<string>mp2</string>\t\t\t<string>mp1</string>\t\t\t<string>aac</string>\t\t\t<string>adts</string>\t\t\t<string>amr</string>\t\t\t<string>awb</string>\t\t\t<string>ac3</string>\t\t\t<string>ec3</string>\t\t\t<string>eac3</string>\t\t\t<string>flac</string>\t\t\t<string>latm</string>\t\t\t<string>loas</string>\t\t\t<string>xhe</string>\t\t\t<string>ogg</string>\t\t\t<string>oga</string>\t\t\t<string>opus</string>\t\t</array>\t\t<key>com.apple.uti</key>\t\t<array>\t\t\t<string>public.mp3</string>\t\t\t<string>public.mp2</string>\t\t\t<string>public.aac-audio</string>\t\t\t<string>org.3gpp.adaptive-multi-rate-audio</string>\t\t\t<string>public.ac3-audio</string>\t\t\t<string>public.enhanced-ac3-audio</string>\t\t\t<string>org.xiph.flac</string>\t\t\t<string>public.mp4a-loas</string>\t\t\t<string>org.xiph.ogg-audio</string>\t\t</array>\t</dict></dict></plist>";
  }

  if (!FigFormatReaderCreatePropertyListDictionaryFromCString(v2, 0, &theDict))
  {
    if (!theDict)
    {
      return 0;
    }

    Value = CFDictionaryGetValue(theDict, @"ContainerLabelling");
    if (Value)
    {
      v4 = CFDictionaryGetValue(Value, @"com.apple.uti");
      v1 = v4;
      if (v4)
      {
        CFRetain(v4);
      }

      goto LABEL_12;
    }
  }

LABEL_18:
  v1 = 0;
LABEL_12:
  if (theDict)
  {
    CFRelease(theDict);
  }

  return v1;
}

uint64_t FigFormatReaderCreatePropertyListDictionaryFromCString(char *__s, int a2, const __CFDictionary **a3)
{
  if (!a3)
  {
    return 0;
  }

  *a3 = 0;
  if (__s)
  {
    v6 = *MEMORY[0x1E695E480];
    v7 = strlen(__s);
    v8 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], __s, v7, *MEMORY[0x1E695E498]);
    if (v8)
    {
      v9 = v8;
      v10 = CFPropertyListCreateWithData(v6, v8, 0, 0, 0);
      if (v10)
      {
        v11 = v10;
        if (a2)
        {
          if (qword_1ED4CA6E8)
          {
            CFDictionaryGetValue(v10, @"ContainerLabelling");
            FigCFDictionaryGetValueIfPresent();
          }
        }

        v12 = 0;
        *a3 = v11;
      }

      else
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_2_10();
        v12 = FigSignalErrorAtGM();
      }

      CFRelease(v9);
      return v12;
    }
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_2_10();

  return FigSignalErrorAtGM();
}

uint64_t FigCopySetOfFormatReaderSupportedFileExtensions()
{
  v2 = OUTLINED_FUNCTION_14_9();
  if (!v2)
  {
    *v0 = copySetOfRegistryEntryLabels(v1, @"public.filename-extension");
  }

  return v2;
}

const void *FigCopyQTMovieMIMETypes()
{
  theDict = 0;
  if (ensureRegistryInitialized())
  {
    return 0;
  }

  if (FigFormatReaderCreatePropertyListDictionaryFromCString("<?xml version=1.0 encoding=UTF-8?><!DOCTYPE plist PUBLIC -//Apple Computer//DTD PLIST 1.0//EN http://www.apple.com/DTDs/PropertyList-1.0.dtd><plist version=1.0><dict>\t<key>ContainerLabelling</key>\t<dict>\t\t<key>com.apple.ostype</key>\t\t<array>\t\t\t<string>MooV</string>\t\t</array>\t\t<key>public.mime-type</key>\t\t<array>\t\t\t<string>video/quicktime</string>\t\t\t<string>video/mp4</string>\t\t</array>\t\t<key>public.filename-extension</key>\t\t<array>\t\t\t<string>mov</string>\t\t\t<string>qt</string>\t\t\t<string>qta</string>\t\t\t<string>mqv</string>\t\t\t<string>mp4</string>\t\t\t<string>m4a</string>\t\t\t<string>m4v</string>\t\t\t<string>m4b</string>\t\t\t<string>m4p</string>\t\t\t<string>m4r</string>\t\t\t<string>aax</string>\t\t\t<string>3gp</string>\t\t\t<string>3gpp</string>\t\t\t<string>3g2</string>\t\t\t<string>3gp2</string>\t\t\t<string>aivu</string>\t\t</array>\t\t<key>com.apple.uti</key>\t\t<array>\t\t\t<string>com.apple.quicktime-movie</string>\t\t\t<string>com.apple.quicktime-audio</string>\t\t\t<string>public.mpeg-4</string>\t\t\t<string>public.mpeg-4-audio</string>\t\t\t<string>com.apple.m4a-audio</string>\t\t\t<string>com.apple.protected-mpeg-4-audio</string>\t\t\t<string>com.apple.protected-mpeg-4-audio-b</string>\t\t\t<string>com.apple.m4v-video</string>\t\t\t<string>com.apple.mpeg-4-ringtone</string>\t\t\t<string>com.audible.aax-audiobook</string>\t\t\t<string>public.3gpp</string>\t\t\t<string>public.3gpp2</string>\t\t\t<string>com.apple.immersive-video</string>\t\t</array>\t</dict></dict></plist>", 1, &theDict))
  {
    goto LABEL_11;
  }

  if (!theDict)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(theDict, @"ContainerLabelling");
  if (Value)
  {
    v1 = CFDictionaryGetValue(Value, @"public.mime-type");
    v2 = v1;
    if (v1)
    {
      CFRetain(v1);
    }

    goto LABEL_7;
  }

LABEL_11:
  v2 = 0;
LABEL_7:
  if (theDict)
  {
    CFRelease(theDict);
  }

  return v2;
}

const void *FigCopyWebVTTMIMETypes()
{
  theDict = 0;
  if (ensureRegistryInitialized())
  {
    return 0;
  }

  if (FigFormatReaderCreatePropertyListDictionaryFromCString("<?xml version=1.0 encoding=UTF-8?><!DOCTYPE plist PUBLIC -//Apple Computer//DTD PLIST 1.0//EN http://www.apple.com/DTDs/PropertyList-1.0.dtd><plist version=1.0><dict>\t<key>ContainerLabelling</key>\t<dict>\t\t<key>public.mime-type</key>\t\t<array>\t\t\t<string>text/vtt</string>\t\t</array>\t\t<key>public.filename-extension</key>\t\t<array>\t\t\t<string>vtt</string>\t\t\t<string>webvtt</string>\t\t</array>\t\t\t<key>com.apple.uti</key>\t\t\t<array>\t\t\t\t<string>org.w3.webvtt</string>\t\t\t</array>\t</dict></dict></plist>", 1, &theDict))
  {
    goto LABEL_11;
  }

  if (!theDict)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(theDict, @"ContainerLabelling");
  if (Value)
  {
    v1 = CFDictionaryGetValue(Value, @"public.mime-type");
    v2 = v1;
    if (v1)
    {
      CFRetain(v1);
    }

    goto LABEL_7;
  }

LABEL_11:
  v2 = 0;
LABEL_7:
  if (theDict)
  {
    CFRelease(theDict);
  }

  return v2;
}

void *FigCopyMPEGTransportStreamMIMETypes()
{
  if (ensureRegistryInitialized())
  {
    return 0;
  }

  v0 = CFArrayCreate(*MEMORY[0x1E695E480], &kFigRepresentativeMIMEType_MPEG2TS, 1, MEMORY[0x1E695E9C0]);
  CFGetAllocator(v0);
  MutableCopy = FigCFArrayCreateMutableCopy();
  CFArrayGetCount(v0);
  OUTLINED_FUNCTION_4_27();
  v4.location = 0;
  CFArrayApplyFunction(v0, v4, v2, MutableCopy);
  if (v0)
  {
    CFRelease(v0);
  }

  return MutableCopy;
}

uint64_t FigCopySetOfFormatReaderSupportedMIMETypes()
{
  v2 = OUTLINED_FUNCTION_14_9();
  if (!v2)
  {
    *v0 = copySetOfRegistryEntryLabels(v1, @"public.mime-type");
  }

  return v2;
}

uint64_t FigCopySetOfFormatReaderSupportedFileTypes()
{
  v2 = OUTLINED_FUNCTION_14_9();
  if (!v2)
  {
    *v0 = copySetOfRegistryEntryLabels(v1, @"com.apple.ostype");
  }

  return v2;
}

uint64_t FigCopySetOfFormatReaderSupportedUTIs()
{
  v2 = OUTLINED_FUNCTION_14_9();
  if (!v2)
  {
    *v0 = copySetOfRegistryEntryLabels(v1, @"com.apple.uti");
  }

  return v2;
}

uint64_t FigFormatReaderCreateForStreamReturningResults(uint64_t a1, const __CFDictionary *a2, const __CFAllocator *a3, uint64_t a4, CFTypeRef *a5, CFTypeRef *a6, _DWORD *a7, CFTypeRef *a8)
{
  *v49 = 0u;
  *v50 = 0u;
  *cf = 0u;
  v16 = ensureRegistryInitialized();
  if (v16)
  {
    goto LABEL_49;
  }

  if (a2)
  {
    v17 = a4;
    Value = CFDictionaryGetValue(a2, @"Selection_OutOfBandMIMEType");
    v19 = CFDictionaryGetValue(a2, @"Selection_OutOfBandFileType");
    a2 = CFDictionaryGetValue(a2, @"Selection_AllowableTypes");
    if (Value)
    {
      v20 = OUTLINED_FUNCTION_5_22();
      AttemptMIMETypeInstantiation(v20, v21, v17, Value, a2, v22);
      goto LABEL_30;
    }

    if (v19)
    {
      v23 = OUTLINED_FUNCTION_5_22();
      v26 = v17;
      v27 = v19;
      v28 = a2;
LABEL_7:
      AttemptUTIInstantiation(v23, v24, v26, v27, v28, v25);
      goto LABEL_30;
    }

    a4 = v17;
  }

  anURL = 0;
  CMBaseObject = CMByteStreamGetCMBaseObject();
  v30 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v30)
  {
    v30(CMBaseObject, *MEMORY[0x1E695FFA0], a3, &anURL);
    if (anURL)
    {
      v31 = CFURLCopyFileSystemPath(anURL, kCFURLPOSIXPathStyle);
      if (v31)
      {
        v32 = v31;
        v33 = a2;
        v34 = CFStringFind(v31, @".", 4uLL);
        if (v34.length >= 1)
        {
          Length = CFStringGetLength(v32);
          v53.location = v34.location + 1;
          v53.length = Length + ~v34.location;
          v36 = CFStringCreateWithSubstring(a3, v32, v53);
          if (v36)
          {
            v37 = v36;
            AttemptInstantiationForMatchingLabel(a1, a4, @"public.filename-extension", 0, v36, 1, v33, cf);
            CFRelease(v37);
          }
        }

        CFRelease(v32);
        a2 = v33;
      }

      if (anURL)
      {
        CFRelease(anURL);
      }
    }
  }

  if (!v49[1])
  {
    v38 = a2;
    anURL = 0;
    v39 = CMByteStreamGetCMBaseObject();
    v40 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v40 && !v40(v39, *MEMORY[0x1E6960DC8], a3, &anURL))
    {
      valuePtr = 0;
      CFNumberGetValue(anURL, kCFNumberSInt32Type, &valuePtr);
      v41 = CFStringCreateWithBytes(a3, &valuePtr, 4, 0, 0);
      if (v41)
      {
        AttemptInstantiationForMatchingLabel(a1, a4, @"com.apple.ostype", 1, v41, 0, v38, cf);
        v42 = 0;
LABEL_23:
        if (anURL)
        {
          CFRelease(anURL);
        }

        if ((v42 & 1) == 0)
        {
          CFRelease(v41);
        }

        if (!v49[1])
        {
          v43 = OUTLINED_FUNCTION_5_22();
          AttemptMIMETypeInstantiation(v43, v44, a4, 0, v38, v45);
          if (!v49[1])
          {
            AttemptSuggestedFileNameInstantiation(a3, a1, a4, v38, cf);
            if (!v49[1])
            {
              v23 = OUTLINED_FUNCTION_5_22();
              v26 = a4;
              v27 = 0;
              v28 = v38;
              goto LABEL_7;
            }
          }
        }

        goto LABEL_30;
      }
    }

    else
    {
      v41 = 0;
    }

    v42 = 1;
    goto LABEL_23;
  }

LABEL_30:
  if (LODWORD(v49[0]) || !v49[1])
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_2();
    v16 = FigSignalErrorAtGM();
LABEL_49:
    v46 = v16;
    goto LABEL_36;
  }

  *a5 = v49[1];
  v49[1] = 0;
  if (a7)
  {
    *a7 = v50[1];
  }

  v46 = 0;
  if (a6)
  {
    *a6 = v50[0];
    v50[0] = 0;
  }

LABEL_36:
  if (a8)
  {
    *a8 = cf[0];
  }

  else if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (v49[1])
  {
    CFRelease(v49[1]);
  }

  if (v50[0])
  {
    CFRelease(v50[0]);
  }

  return v46;
}

const __CFString *FigFormatReaderUtilityCopyRepresentativeMIMETypeForMIMEType(const __CFString *result)
{
  if (result)
  {
    v1 = result;
    if (ensureRegistryInitialized())
    {
      return 0;
    }

    MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, v1);
    CFStringLowercase(MutableCopy, 0);
    v4 = MutableCopy;
    cf = 0;
    CFDictionaryApplyFunction(qword_1ED4CA6E8, FFRFindRepresentativeMIMEType, &v4);
    v3 = cf;
    if (MutableCopy)
    {
      CFRelease(MutableCopy);
    }

    if (!v3)
    {
      return 0;
    }

    else
    {
      return CFRetain(v3);
    }
  }

  return result;
}

uint64_t FigFormatReaderUtilityEstablishCombinedDataRateProfileForTracksCommon(uint64_t a1, const __CFArray *a2, void *a3, unsigned int a4, CMTime *a5)
{
  v225 = 0;
  v226[0] = 0;
  v224 = 0;
  *&v223.value = *MEMORY[0x1E6960C70];
  v6 = *(MEMORY[0x1E6960C70] + 16);
  v223.epoch = v6;
  v180 = *&v223.value;
  *&v222.value = *&v223.value;
  v222.epoch = v6;
  if (!a1 || !a2 || !a3)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    goto LABEL_73;
  }

  Duration = FigFormatReaderUtilityGetDuration(a1, 1, &v223);
  if (Duration)
  {
    goto LABEL_74;
  }

  theArray = a2;
  v13 = MEMORY[0x1E6960CC0];
  if ((v223.flags & 0x1D) != 1 || (time1 = v223, v191 = *MEMORY[0x1E6960CC0], *&time2.value = *MEMORY[0x1E6960CC0], v14 = *(MEMORY[0x1E6960CC0] + 16), time2.epoch = v14, CMTimeCompare(&time1, &time2) < 1))
  {
    v222 = *v13;
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    goto LABEL_73;
  }

  time1 = v223;
  CMTimeMultiplyByFloat64(&v222, &time1, 1.0 / a4);
  bzero(a3, 8 * a4);
  Count = CFArrayGetCount(theArray);
  if (Count >= 1)
  {
    v16 = 0;
    v156 = a5;
    v162 = v5;
    v150 = Count;
LABEL_9:
    v219 = 0;
    *&time1.value = v191;
    time1.epoch = v14;
    v168 = v16;
    if (FigCFArrayGetInt32AtIndex())
    {
      v17 = v219;
      v18 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (!v18)
      {
        goto LABEL_75;
      }

      Duration = v18(a1, v17, v226, 0);
      if (Duration)
      {
        goto LABEL_74;
      }

      v19 = v226[0];
      v20 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (!v20)
      {
LABEL_75:
        v128 = 4294954514;
        goto LABEL_76;
      }

      Duration = v20(v19, &v225);
      if (!Duration)
      {
        v21 = v225;
        v22 = *(*(CMBaseObjectGetVTable() + 16) + 24);
        if (v22)
        {
          Duration = v22(v21, &v224);
          if (!Duration)
          {
            v23 = 0;
            v24 = 0;
            while (1)
            {
              v217 = 0;
              v218 = 0;
              *multiplier = 0;
              v215 = 0;
              *&time2.value = v180;
              time2.epoch = v6;
              v25 = *(*(OUTLINED_FUNCTION_12_11() + 16) + 152);
              if (!v25)
              {
                goto LABEL_75;
              }

              v130 = &v215;
              v137 = 0;
              Duration = v25(v21, 0, 0, 0, &v218, multiplier, 0, &v215 + 1);
              if (Duration)
              {
                goto LABEL_74;
              }

              if (v215)
              {
                v26 = *(*(OUTLINED_FUNCTION_12_11() + 16) + 56);
                if (!v26)
                {
                  goto LABEL_75;
                }

                Duration = v26(v21, &time2);
                if (Duration)
                {
                  goto LABEL_74;
                }

                time = time2;
                CMTimeMultiply(&rhs, &time, multiplier[0]);
                OUTLINED_FUNCTION_2_32();
                v27 = CMTimeAdd(&time1, &time, &rhs);
                v35 = OUTLINED_FUNCTION_11_12(v27, v28, v29, v30, v31, v32, v33, v34, &v215, 0, v144, v150, v156, v162, v168, theArray, v180, *(&v180 + 1), v191, *(&v191 + 1), v202, v208, v209, *(&v209 + 1), v210, v211, time.value, *&time.timescale, time.epoch, v213, *&rhs.value, rhs.epoch);
                OUTLINED_FUNCTION_1_33();
                Seconds = CMTimeGetSeconds(&rhs);
                if ((OUTLINED_FUNCTION_0_35(v37, v38, v39, v40, v41, v42, v43, v44, v131, v138, v145, v151, v157, v163, v169, theArrayc, v181, v186, v192, v197, v203, v208, v209, *(&v209 + 1), v210, v211, *&time.value, time.epoch, v213, *&rhs.value, rhs.epoch) & 0x80000000) == 0)
                {
                  v45 = (v35 * v24 / Seconds);
                  do
                  {
                    *(a3 + v23) += v45;
                    OUTLINED_FUNCTION_2_32();
                    v209 = *&v222.value;
                    OUTLINED_FUNCTION_7_13();
                    v49 = CMTimeSubtract(v48, v46, v47);
                    v66 = OUTLINED_FUNCTION_6_20(v49, v50, v51, v52, v53, v54, v55, v56, v132, v139, v144, v150, v156, v162, v168, theArray, v180, *(&v180 + 1), v191, *(&v191 + 1), v202, v208, v209, *(&v209 + 1), v210, v211, time.value, *&time.timescale, time.epoch, v213, v57, rhs.value);
                    v24 -= v45;
                    if (v23 + 1 >= a4)
                    {
                      OUTLINED_FUNCTION_9_12(v58, v59, v60, v61, v62, v63, v64, v65, v133, v140, v146, v152, v158, v164, v170, theArraya, v182, v187, v66);
                    }

                    else
                    {
                      ++v23;
                    }
                  }

                  while ((OUTLINED_FUNCTION_0_35(v58, v59, v60, v61, v62, v63, v64, v65, v133, v140, v146, v152, v158, v164, v170, theArraya, v182, v187, v193, v198, v204, v208, v209, *(&v209 + 1), v210, v211, *&time.value, time.epoch, v213, *&rhs.value, rhs.epoch) & 0x80000000) == 0);
                }

                LOBYTE(v67) = 1;
              }

              else
              {
                v208 = 0;
                if (*multiplier >= 1)
                {
                  v68 = 0;
                  while (1)
                  {
                    v69 = *(*(OUTLINED_FUNCTION_12_11() + 16) + 56);
                    if (!v69)
                    {
                      goto LABEL_75;
                    }

                    Duration = v69(v21, &time2);
                    if (Duration)
                    {
                      goto LABEL_74;
                    }

                    if (!v68 || !HIBYTE(v215))
                    {
                      v70 = *(*(OUTLINED_FUNCTION_12_11() + 16) + 144);
                      if (!v70)
                      {
                        goto LABEL_75;
                      }

                      Duration = v70(v21, 0, &v208, 0, 0);
                      if (Duration)
                      {
                        goto LABEL_74;
                      }
                    }

                    OUTLINED_FUNCTION_2_32();
                    v209 = *&time2.value;
                    OUTLINED_FUNCTION_7_13();
                    v74 = CMTimeAdd(v73, v71, v72);
                    OUTLINED_FUNCTION_6_20(v74, v75, v76, v77, v78, v79, v80, v81, v130, v137, v144, v150, v156, v162, v168, theArray, v180, *(&v180 + 1), v191, *(&v191 + 1), v202, v208, v209, *(&v209 + 1), v210, v211, time.value, *&time.timescale, time.epoch, v213, v82, rhs.value);
                    v91 = OUTLINED_FUNCTION_11_12(v83, v84, v85, v86, v87, v88, v89, v90, v134, v141, v147, v153, v159, v165, v171, theArrayd, v183, v188, v194, v199, v205, v208, v209, *(&v209 + 1), v210, v211, time.value, *&time.timescale, time.epoch, v213, *&rhs.value, rhs.epoch);
                    OUTLINED_FUNCTION_1_33();
                    v92 = CMTimeGetSeconds(&rhs);
                    if (OUTLINED_FUNCTION_0_35(v93, v94, v95, v96, v97, v98, v99, v100, v135, v142, v148, v154, v160, v166, v172, theArraye, v184, v189, v195, v200, v206, v208, v209, *(&v209 + 1), v210, v211, *&time.value, time.epoch, v213, *&rhs.value, rhs.epoch) >= 1)
                    {
                      v21 = (v91 * v24 / v92);
                      do
                      {
                        *(a3 + v23) += v21;
                        OUTLINED_FUNCTION_2_32();
                        v209 = *&v222.value;
                        OUTLINED_FUNCTION_7_13();
                        v104 = CMTimeSubtract(v103, v101, v102);
                        v121 = OUTLINED_FUNCTION_6_20(v104, v105, v106, v107, v108, v109, v110, v111, v130, v137, v144, v150, v156, v162, v168, theArray, v180, *(&v180 + 1), v191, *(&v191 + 1), v202, v208, v209, *(&v209 + 1), v210, v211, time.value, *&time.timescale, time.epoch, v213, v112, rhs.value);
                        v24 -= v21;
                        if (v23 + 1 >= a4)
                        {
                          OUTLINED_FUNCTION_9_12(v113, v114, v115, v116, v117, v118, v119, v120, v136, v143, v149, v155, v161, v167, v173, theArrayb, v185, v190, v121);
                        }

                        else
                        {
                          ++v23;
                        }
                      }

                      while (OUTLINED_FUNCTION_0_35(v113, v114, v115, v116, v117, v118, v119, v120, v136, v143, v149, v155, v161, v167, v173, theArrayb, v185, v190, v196, v201, v207, v208, v209, *(&v209 + 1), v210, v211, *&time.value, time.epoch, v213, *&rhs.value, rhs.epoch) > 0);
                    }

                    v122 = *(*(OUTLINED_FUNCTION_12_11() + 16) + 168);
                    if (v122)
                    {
                      v123 = v122(v21, 1, &v217);
                    }

                    else
                    {
                      v123 = -12782;
                    }

                    if (v217 != 1 && v123 == 0)
                    {
                      v125 = -12840;
                    }

                    else
                    {
                      v125 = v123;
                    }

                    if (++v68 >= *multiplier || v125)
                    {
                      v67 = v125 == 0;
                      goto LABEL_56;
                    }
                  }
                }

                v67 = 1;
LABEL_56:
                *multiplier = 0;
                if (!v67)
                {
                  goto LABEL_62;
                }
              }

              v126 = multiplier[0];
              if (*multiplier < 1)
              {
LABEL_62:
                if (!v67)
                {
                  goto LABEL_63;
                }
              }

              else
              {
                v127 = *(*(OUTLINED_FUNCTION_12_11() + 16) + 168);
                if (!v127 || v127(v21, v126, &v217) || v217 != *multiplier)
                {
LABEL_63:
                  if (v224)
                  {
                    CFRelease(v224);
                    v224 = 0;
                  }

                  a5 = v156;
                  if (v225)
                  {
                    CFRelease(v225);
                    v225 = 0;
                  }

                  if (v226[0])
                  {
                    CFRelease(v226[0]);
                    v226[0] = 0;
                  }

                  v16 = v168 + 1;
                  if (v168 + 1 != v150)
                  {
                    goto LABEL_9;
                  }

                  goto LABEL_70;
                }
              }
            }
          }

          goto LABEL_74;
        }

        goto LABEL_75;
      }

LABEL_74:
      v128 = Duration;
      goto LABEL_76;
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
LABEL_73:
    Duration = FigSignalErrorAtGM();
    goto LABEL_74;
  }

LABEL_70:
  v128 = 0;
  if (a5)
  {
    *a5 = v222;
  }

LABEL_76:
  if (v224)
  {
    CFRelease(v224);
  }

  if (v225)
  {
    CFRelease(v225);
  }

  if (v226[0])
  {
    CFRelease(v226[0]);
  }

  return v128;
}

uint64_t FigFormatReaderUtilityGetDuration(uint64_t a1, int a2, CMTime *a3)
{
  v15 = **&MEMORY[0x1E6960C70];
  dictionaryRepresentation = 0;
  BOOLean = 0;
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v6)
  {
    goto LABEL_11;
  }

  v7 = *MEMORY[0x1E695E480];
  v8 = v6(a1, @"AccurateDurationIsKnown", *MEMORY[0x1E695E480], &BOOLean);
  if (!v8)
  {
    if (CFBooleanGetValue(BOOLean))
    {
      v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v9)
      {
        v10 = kFigFormatReaderProperty_NominalDuration;
        goto LABEL_9;
      }
    }

    else
    {
      if (!a2)
      {
        v11 = 4294949523;
        goto LABEL_12;
      }

      v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v9)
      {
        v10 = kFigFormatReaderProperty_EstimatedDuration;
LABEL_9:
        v8 = v9(a1, *v10, v7, &dictionaryRepresentation);
        if (!v8)
        {
          CMTimeMakeFromDictionary(&v15, dictionaryRepresentation);
          v11 = 0;
          goto LABEL_12;
        }

        goto LABEL_20;
      }
    }

LABEL_11:
    v11 = 4294954514;
    goto LABEL_12;
  }

LABEL_20:
  v11 = v8;
LABEL_12:
  if (a3)
  {
    *a3 = v15;
  }

  if (dictionaryRepresentation)
  {
    CFRelease(dictionaryRepresentation);
  }

  if (BOOLean)
  {
    CFRelease(BOOLean);
  }

  return v11;
}

uint64_t RegisterStaticFormatReader(char *a1, uint64_t a2)
{
  theDict = 0;
  v3 = FigFormatReaderCreatePropertyListDictionaryFromCString(a1, 1, &theDict);
  if (v3)
  {
    goto LABEL_10;
  }

  Value = CFDictionaryGetValue(theDict, @"ContainerLabelling");
  v5 = malloc_type_calloc(1uLL, 0x18uLL, 0xF00404EBE86FAuLL);
  if (!v5)
  {
    fig_log_get_emitter();
    v3 = FigSignalErrorAtGM();
LABEL_10:
    v7 = v3;
    goto LABEL_6;
  }

  v6 = v5;
  *v5 = a2;
  v5[1] = Value;
  if (Value)
  {
    CFRetain(Value);
  }

  v6[2] = 0;
  CFArrayAppendValue(_MergedGlobals_29, v6);
  v7 = 0;
LABEL_6:
  if (theDict)
  {
    CFRelease(theDict);
  }

  return v7;
}

uint64_t figTTMLDocumentWriterRegionAttributeInserter_AddCaptionData(uint64_t a1, uint64_t a2)
{
  FigTTMLDocumentWriterGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v16 = 0;
  CMBaseObject = FigCaptionDataGetCMBaseObject();
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = *MEMORY[0x1E695E480];
  v7 = v5(CMBaseObject, *MEMORY[0x1E6961240], *MEMORY[0x1E695E480], &v16);
  if (v7)
  {
    goto LABEL_18;
  }

  if (!v16)
  {
LABEL_17:
    v7 = FigTTMLDocumentWriterAddCaptionData(*DerivedStorage, a2);
    goto LABEL_18;
  }

  v8 = FigCaptionRegionGetCMBaseObject();
  v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v9)
  {
LABEL_8:
    v12 = 4294954514;
    goto LABEL_19;
  }

  v7 = v9(v8, *MEMORY[0x1E6961338], v6, &cf);
  if (v7)
  {
    goto LABEL_18;
  }

  if (FigCFEqual())
  {
    v10 = *DerivedStorage;
    v11 = kFigTTML_AttributeValue_region_top;
LABEL_15:
    v13 = *v11;
    goto LABEL_16;
  }

  if (FigCFEqual())
  {
    v10 = *DerivedStorage;
    v11 = kFigTTML_AttributeValue_region_bottom;
    goto LABEL_15;
  }

  if (FigCFEqual())
  {
    v10 = *DerivedStorage;
    v11 = kFigTTML_AttributeValue_region_left;
    goto LABEL_15;
  }

  if (FigCFEqual())
  {
    v10 = *DerivedStorage;
    v11 = kFigTTML_AttributeValue_region_right;
    goto LABEL_15;
  }

  if (!cf || !CFStringGetLength(cf))
  {
    goto LABEL_17;
  }

  v10 = *DerivedStorage;
  v13 = cf;
LABEL_16:
  v7 = FigTTMLDocumentWriterSetAttribute(v10, @"region", v13);
  if (!v7)
  {
    goto LABEL_17;
  }

LABEL_18:
  v12 = v7;
LABEL_19:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  return v12;
}

uint64_t FigTTMLDocumentWriterCreateRegionAttributeInserter_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigTTMLDocumentWriterCreateRegionAttributeInserter_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

__CFDictionary *FigMentorNotificationPayloadCreate(uint64_t a1, const void *a2, int a3, int a4, const void *a5, int a6)
{
  if (!a2 && !a3 && !a5)
  {
    return 0;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v12 = Mutable;
  if (Mutable)
  {
    if (a2)
    {
      CFDictionarySetValue(Mutable, @"Mentor_Order", a2);
    }

    if (a3)
    {
      FigCFDictionarySetInt32();
    }

    if (FigCFEqual() || FigCFEqual())
    {
      v13 = *MEMORY[0x1E695E4D0];
      v14 = *MEMORY[0x1E695E4C0];
      v15 = (a4 ? *MEMORY[0x1E695E4D0] : *MEMORY[0x1E695E4C0]);
      CFDictionarySetValue(v12, @"Mentor_SamplesWereGenerated", v15);
      if (FigCFEqual())
      {
        if (a6)
        {
          v16 = v13;
        }

        else
        {
          v16 = v14;
        }

        CFDictionarySetValue(v12, @"Mentor_LastsForever", v16);
      }
    }

    if (a5)
    {
      CFDictionarySetValue(v12, @"Mentor_NotificationThatWasRequestedButDropped", a5);
    }
  }

  else
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM();
  }

  return v12;
}

uint64_t FigSampleBufferAudioRendererAirPlayCreateWithOptions(uint64_t a1, uint64_t a2, const void *a3, void *a4)
{
  v16 = *MEMORY[0x1E69E9840];
  FigNote_AllowInternalDefaultLogs();
  OUTLINED_FUNCTION_6_2();
  fig_note_initialize_category_with_default_work_cf();
  OUTLINED_FUNCTION_6_2();
  fig_note_initialize_category_with_default_work_cf();
  v6 = 4294950916;
  if (a3 && a4)
  {
    FigSampleBufferAudioRendererGetClassID();
    v7 = CMDerivedObjectCreate();
    if (v7)
    {
      return v7;
    }

    else
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      snprintf(__str, 0x80uLL, "com.apple.coremedia.samplebufferaudiorendererairplay.state[%p]", 0);
      v9 = dispatch_queue_create(__str, 0);
      *(DerivedStorage + 16) = v9;
      if (v9 && (snprintf(__str, 0x80uLL, "com.apple.coremedia.samplebufferaudiorendererairplay.notification[%p]", 0), v10 = dispatch_queue_create(__str, 0), (*(DerivedStorage + 8) = v10) != 0))
      {
        *DerivedStorage = a3;
        CFRetain(a3);
        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterAddWeakListener();
        *(DerivedStorage + 77) = 1;
        v11 = CMBaseObjectGetDerivedStorage();
        *(v11 + 80) = 0;
        v12 = (v11 + 80);
        if (FigCFDictionaryGetStringIfPresent())
        {
          CFStringGetCString(0, v12, 10, 0x600u);
        }

        *a4 = 0;
        if (dword_1EAF16D70)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          OUTLINED_FUNCTION_7();
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        return 0;
      }

      else
      {
        return 4294950914;
      }
    }
  }

  return v6;
}

uint64_t audioRendererAirPlay_CopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v19 = 0;
  if (!a4)
  {
    return 4294950916;
  }

  v9 = DerivedStorage;
  if (FigCFEqual())
  {
    audioRendererAirPlay_copyRoutingContext(a1, a4);
LABEL_4:
    v10 = 0;
    goto LABEL_5;
  }

  if (!FigCFEqual())
  {
    if (FigCFEqual())
    {
      v14 = v9[2];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 0x40000000;
      v18[2] = __audioRendererAirPlay_CopyProperty_block_invoke;
      v18[3] = &__block_descriptor_tmp_22;
      v18[4] = a4;
      v18[5] = v9;
      v15 = v18;
    }

    else if (FigCFEqual())
    {
      v14 = v9[2];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 0x40000000;
      v17[2] = __audioRendererAirPlay_CopyProperty_block_invoke_2;
      v17[3] = &__block_descriptor_tmp_18;
      v17[4] = a4;
      v17[5] = v9;
      v15 = v17;
    }

    else
    {
      if (!FigCFEqual())
      {
        v13 = CMBaseObjectCopyProperty(*v9, a2, a3, a4);
        goto LABEL_12;
      }

      v14 = v9[2];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = __audioRendererAirPlay_CopyProperty_block_invoke_3;
      block[3] = &__block_descriptor_tmp_19;
      block[4] = a4;
      block[5] = v9;
      v15 = block;
    }

    dispatch_sync(v14, v15);
    goto LABEL_4;
  }

  audioRendererAirPlay_copyRoutingContext(a1, &v19);
  v10 = v19;
  if (!v19)
  {
    *a4 = 0;
    return v10;
  }

  v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v12)
  {
    v13 = v12(v10, *MEMORY[0x1E69AF4E8], a3, a4);
LABEL_12:
    v10 = v13;
    goto LABEL_5;
  }

  v10 = 4294954514;
LABEL_5:
  if (v19)
  {
    CFRelease(v19);
  }

  return v10;
}

uint64_t audioRendererAirPlay_removeRoutingContextListeners(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_187();
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_84_0();

    return FigNotificationCenterRemoveWeakListener();
  }

  return result;
}

uint64_t audioRendererAirPlay_removeEndpointListeners(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_187();
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_84_0();

    return FigNotificationCenterRemoveWeakListener();
  }

  return result;
}

uint64_t audioRendererAirPlay_removeBufferedAirPlayOutputListeners(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_187();
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_84_0();

    return FigNotificationCenterRemoveWeakListener();
  }

  return result;
}

void audioRendererAirPlay_routingContextRouteChangedListener(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v7 = *(DerivedStorage + 24);
  if (v7 == a4)
  {
    v8 = *(DerivedStorage + 32);
    v9 = *(*(CMBaseObjectGetVTable() + 16) + 144);
    if (v9)
    {
      v10 = v9(v7, v8, &cf);
      v11 = cf;
      if (!v10)
      {
        IsDisallowedInternal = audioRendererAirPlay_setNonBAOPlaybackIsDisallowedInternal(a2, cf);
        v11 = cf;
        if (!IsDisallowedInternal)
        {
          audioRendererAirPlay_routeToEndpointInternal(a2, cf);
          v11 = cf;
        }
      }

      if (v11)
      {
        CFRelease(v11);
      }
    }
  }
}

uint64_t audioRendererAirPlay_setNonBAOPlaybackIsDisallowedInternal(uint64_t a1, uint64_t a2)
{
  BOOLean[24] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  BOOLean[0] = 0;
  v4 = *(DerivedStorage + 24);
  if (!v4)
  {
    return v4;
  }

  v5 = DerivedStorage;
  if (a2)
  {
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v6)
    {
      goto LABEL_16;
    }

    v7 = MEMORY[0x1E69AF4C8];
  }

  else
  {
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v6)
    {
      goto LABEL_16;
    }

    v7 = MEMORY[0x1E69AF4D0];
  }

  v4 = v6(v4, *v7, 0, BOOLean);
  v8 = BOOLean[0];
  if (!v4 && BOOLean[0])
  {
    Value = CFBooleanGetValue(BOOLean[0]);
    if (dword_1EAF16D70)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_7();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v11 = *v5;
    if (Value)
    {
      v12 = MEMORY[0x1E695E4C0];
    }

    else
    {
      v12 = MEMORY[0x1E695E4D0];
    }

    v13 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v13)
    {
      v4 = v13(v11, @"NonBAOPlaybackIsDisallowed", *v12);
LABEL_17:
      v8 = BOOLean[0];
      goto LABEL_18;
    }

LABEL_16:
    v4 = 4294954514;
    goto LABEL_17;
  }

LABEL_18:
  if (v8)
  {
    CFRelease(v8);
  }

  return v4;
}

uint64_t audioRendererAirPlay_addEndpointListeners()
{
  OUTLINED_FUNCTION_187();
  result = CMBaseObjectGetDerivedStorage();
  if (v0)
  {
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_84_0();

    return FigNotificationCenterAddWeakListener();
  }

  return result;
}

uint64_t audioRendererAirPlay_endpointStreamsChangedListener(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = CMBaseObjectGetDerivedStorage();
  if (*(result + 40) == a4)
  {

    return audioRendererAirPlay_routeToEndpointInternal(a2, a4);
  }

  return result;
}

uint64_t audioRendererAirPlay_addBufferedAirPlayOutputListeners()
{
  OUTLINED_FUNCTION_187();
  result = CMBaseObjectGetDerivedStorage();
  if (v0)
  {
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_84_0();

    return FigNotificationCenterAddWeakListener();
  }

  return result;
}

uint64_t audioRendererAirPlay_setRoutingContextAndRemoteDeviceIDInternal(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (FigCFEqual() && FigCFEqual())
  {
    v19 = 0;
    v8 = 0;
    goto LABEL_22;
  }

  v7 = DerivedStorage[3];
  if (v7)
  {
    v8 = CFRetain(v7);
  }

  else
  {
    v8 = 0;
  }

  if (DerivedStorage[8])
  {
    SharedInstance = FigBufferedAirPlayGlobalRoutingRegistryGetSharedInstance();
    v10 = DerivedStorage[8];
    v11 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v11)
    {
      v11(SharedInstance, a1, v10);
    }

    v12 = DerivedStorage[8];
    if (v12)
    {
      CFRelease(v12);
      DerivedStorage[8] = 0;
    }
  }

  v13 = OUTLINED_FUNCTION_4_28();
  audioRendererAirPlay_removeRoutingContextListeners(v13, v14);
  v15 = DerivedStorage[3];
  DerivedStorage[3] = a2;
  if (a2)
  {
    CFRetain(a2);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  audioRendererAirPlay_updateRoutingRegistryInternal(a1);
  OUTLINED_FUNCTION_4_28();
  audioRendererAirPlay_addRoutingContextListeners();
  v16 = DerivedStorage[4];
  DerivedStorage[4] = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  v17 = DerivedStorage[3];
  if (!v17)
  {
    v18 = 0;
    goto LABEL_21;
  }

  v21 = DerivedStorage[4];
  v22 = *(*(CMBaseObjectGetVTable() + 16) + 144);
  if (v22)
  {
    IsDisallowedInternal = v22(v17, v21, &cf);
    if (!IsDisallowedInternal)
    {
      IsDisallowedInternal = audioRendererAirPlay_setNonBAOPlaybackIsDisallowedInternal(a1, cf);
      if (!IsDisallowedInternal)
      {
        v18 = cf;
LABEL_21:
        v19 = audioRendererAirPlay_routeToEndpointInternal(a1, v18);
        if (!v19)
        {
          goto LABEL_22;
        }

        goto LABEL_29;
      }
    }

    v19 = IsDisallowedInternal;
  }

  else
  {
    v19 = 4294954514;
  }

LABEL_29:
  if (DerivedStorage[8])
  {
    v23 = FigBufferedAirPlayGlobalRoutingRegistryGetSharedInstance();
    v24 = DerivedStorage[8];
    v25 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v25)
    {
      v25(v23, a1, v24);
    }

    v26 = DerivedStorage[8];
    if (v26)
    {
      CFRelease(v26);
      DerivedStorage[8] = 0;
    }
  }

  v27 = OUTLINED_FUNCTION_4_28();
  audioRendererAirPlay_removeRoutingContextListeners(v27, v28);
  v29 = DerivedStorage[3];
  DerivedStorage[3] = v8;
  if (v8)
  {
    CFRetain(v8);
  }

  if (v29)
  {
    CFRelease(v29);
  }

  audioRendererAirPlay_updateRoutingRegistryInternal(a1);
  OUTLINED_FUNCTION_4_28();
  audioRendererAirPlay_addRoutingContextListeners();
LABEL_22:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return v19;
}

uint64_t audioRendererAirPlay_addRoutingContextListeners()
{
  OUTLINED_FUNCTION_187();
  result = CMBaseObjectGetDerivedStorage();
  if (v0)
  {
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_84_0();

    return FigNotificationCenterAddWeakListener();
  }

  return result;
}

uint64_t __audioRendererAirPlay_setIsActiveAudioSessionApp_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 48);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 76) == v1 || (*(DerivedStorage + 76) = v1, (v3 = *(DerivedStorage + 56)) == 0))
  {
    v5 = 0;
  }

  else
  {
    v4 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (v4)
    {
      v5 = v4(v3, v1, 0, 0);
    }

    else
    {
      v5 = 4294954514;
    }
  }

  return OUTLINED_FUNCTION_12_7(v5);
}

void __audioRendererAirPlay_setBufferedAirPlayAllowed_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 77) != v3)
  {
    *(DerivedStorage + 77) = v3;
    audioRendererAirPlay_updateRoutingRegistryInternal(v2);
    audioRendererAirPlay_updateBufferedAirPlayOutput(v2);
  }

  *(*(*(a1 + 32) + 8) + 24) = 0;
}

uint64_t audioRendererAirPlay_routeToEndpointInternal_cold_1(uint64_t a1, uint64_t a2, const void **a3, const void *a4)
{
  audioRendererAirPlay_removeEndpointListeners(a1, a2);
  v6 = *a3;
  *a3 = a4;
  if (a4)
  {
    CFRetain(a4);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return audioRendererAirPlay_addEndpointListeners();
}

uint64_t audioRendererAirPlay_updateBufferedAirPlayOutput_cold_1(uint64_t a1, uint64_t a2, const void *a3)
{
  OUTLINED_FUNCTION_187();
  audioRendererAirPlay_removeBufferedAirPlayOutputListeners(v3, *v6);
  v7 = *v4;
  *v4 = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  return audioRendererAirPlay_addBufferedAirPlayOutputListeners();
}

void FigImageQueueConfigurationCreate_cold_2(const void *a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  *a2 = FigSignalErrorAtGM();

  CFRelease(a1);
}

uint64_t FigImageQueueConfigurationCreate_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigImageQueueConfigurationAddFigImageQueue_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigImageQueueConfigurationAddFigImageQueue_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigImageQueueConfigurationAddFigImageQueue_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t flumeStreamCreateReadStatsDictionary(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (!a3)
  {
    return 4294954516;
  }

  FigBaseObject = FigByteFlumeGetFigBaseObject(*DerivedStorage);
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v7)
  {
    v7(FigBaseObject, @"FBF_URL", a2, &cf);
  }

  *a3 = FigByteStreamStatsCreateStatsDictionary();
  result = cf;
  if (cf)
  {
    CFRelease(cf);
    return 0;
  }

  return result;
}

uint64_t flumeStream_issueReadAndWaitForCompletion(const void *a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v48 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v42 = 0;
  v13 = CFGetAllocator(a1);
  if (a5)
  {
    *a5 = 0;
  }

  if (a3 < 0)
  {
    goto LABEL_51;
  }

  v14 = *(CMBaseObjectGetDerivedStorage() + 8);
  v15 = v14 < a3;
  v16 = v14 - a3;
  if (v15)
  {
    v39 = FigSignalErrorAtGM();
    if (v39)
    {
LABEL_52:
      v28 = v39;
      goto LABEL_56;
    }

    if (a2)
    {
LABEL_51:
      v39 = FigSignalErrorAtGM();
      goto LABEL_52;
    }

LABEL_50:
    v18 = 0;
    v27 = 0;
    v28 = 0;
    goto LABEL_42;
  }

  if (!a2)
  {
    goto LABEL_50;
  }

  if (v16 <= 0)
  {
    goto LABEL_51;
  }

  if (v16 < a2)
  {
    a2 = v16;
  }

  if (qword_1ED4CA708 != -1)
  {
    dispatch_once_f(&qword_1ED4CA708, &qword_1ED4CA710, figFlumeStreamReadRecord_RegisterType);
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    v28 = FigSignalErrorAtGM();
    goto LABEL_55;
  }

  v18 = Instance;
  v19 = dispatch_semaphore_create(0);
  *(v18 + 72) = v19;
  if (!v19)
  {
    v28 = FigSignalErrorAtGM();
    CFRelease(v18);
LABEL_55:
    if (!v28)
    {
      v18 = 0;
      goto LABEL_13;
    }

LABEL_56:
    v18 = 0;
LABEL_57:
    v27 = 0;
    goto LABEL_42;
  }

LABEL_13:
  *(v18 + 16) = a3;
  *(v18 + 24) = a2;
  *(v18 + 32) = 0;
  *(v18 + 56) = a4;
  if (a5)
  {
    Empty = CMBlockBufferCreateEmpty(v13, 0, 0, (v18 + 64));
    if (Empty)
    {
      v28 = Empty;
      goto LABEL_57;
    }
  }

  *(v18 + 40) = FigAtomicIncrement32();
  *(v18 + 80) = 1;
  v21 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  CFRetain(v18);
  v22 = *DerivedStorage;
  v23 = *(v18 + 40);
  v24 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v24)
  {
    v25 = v24(v22, a3, a2, 0, flumeStream_incrementalReadCallback, v18, v23, &v42);
    if (v25 || (*(v18 + 48) = v42, v25 = FigThreadRegisterAbortAction(), v25))
    {
      v28 = v25;
      v27 = 0;
    }

    else
    {
      if (FigCFEqual())
      {
        v26 = dispatch_time(0, 10000000000);
      }

      else
      {
        v26 = -1;
      }

      v29 = dispatch_semaphore_wait(*(v18 + 72), v26);
      v30 = v29;
      if (v29)
      {
        v31 = OUTLINED_FUNCTION_0_36();
        if (os_log_type_enabled(v31, type))
        {
          v32 = v41;
        }

        else
        {
          v32 = v41 & 0xFFFFFFFE;
        }

        if (v32)
        {
          v43 = 136315906;
          OUTLINED_FUNCTION_3_24();
          v44 = 1024;
          v45 = v30;
          v46 = v33;
          v47 = v34;
          OUTLINED_FUNCTION_2_33();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_1_34();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        if (*v21 == 1)
        {
          kdebug_trace();
        }

        v35 = *DerivedStorage;
        v36 = v42;
        v37 = *(*(CMBaseObjectGetVTable() + 16) + 16);
        if (v37)
        {
          v37(v35, v36);
        }

        if (*v21 == 1)
        {
          kdebug_trace();
        }

        v27 = 0;
        v28 = 4294954364;
      }

      else
      {
        v27 = *(v18 + 32);
        if (a5)
        {
          *a5 = *(v18 + 64);
        }

        *(v18 + 64) = 0;
        v28 = *(v18 + 80);
      }
    }
  }

  else
  {
    v27 = 0;
    v28 = 4294954514;
  }

  if (*v21 == 1)
  {
    kdebug_trace();
  }

LABEL_42:
  if (a6)
  {
    *a6 = v27;
  }

  FigThreadUnregisterAbortAction();
  if (v18)
  {
    CFRelease(v18);
  }

  return v28;
}

uint64_t FigByteStreamCreateForByteFlume_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigFlumeStreamGetAvailableLengthAtOffset_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigFlumeStreamGetAvailableLengthAtOffset_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void stylePropertyRangeValueApplier(uint64_t a1, CFStringRef *a2)
{
  FigBaseObject = FigBytePumpGetFigBaseObject(a1);
  v44 = v4;
  FigCaptionRendererIntervalProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (ProtocolVTable)
  {
    v6 = *(ProtocolVTable + 16);
    if (v6)
    {
      v7 = *(v6 + 8);
      if (v7)
      {
        v7(a1, &FigBaseObject);
      }
    }
  }

  Value = FigCaptionRendererIntervalGetValue();
  cf = 0;
  if (!Value)
  {
    return;
  }

  v9 = Value;
  if (CFStringCompare(*a2, *MEMORY[0x1E6960990], 0) == kCFCompareEqualTo)
  {
    valuePtr = 0;
    CFNumberGetValue(v9, kCFNumberSInt32Type, &valuePtr);
    if (valuePtr != 1)
    {
      return;
    }

LABEL_17:
    v10 = OUTLINED_FUNCTION_1_35();
    goto LABEL_18;
  }

  if (CFStringCompare(*a2, *MEMORY[0x1E69608A8], 0) == kCFCompareEqualTo)
  {
    v14 = MEMORY[0x1E6961488];
    goto LABEL_16;
  }

  if (CFStringCompare(*a2, *MEMORY[0x1E69607D0], 0) == kCFCompareEqualTo)
  {
    v14 = MEMORY[0x1E69614A8];
LABEL_16:
    if (OUTLINED_FUNCTION_2_34(0, *v14))
    {
      return;
    }

    goto LABEL_17;
  }

  if (CFStringCompare(*a2, *MEMORY[0x1E6960930], 0) == kCFCompareEqualTo)
  {
    v15 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v15)
    {
      v16 = v15(v9);
    }

    else
    {
      v16 = &stru_1F0B1AFB8;
    }

    v22 = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!Mutable)
    {
      return;
    }

    v24 = Mutable;
    CMBaseObject = FigCaptionDataGetCMBaseObject();
    v26 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v26 || (v26(CMBaseObject, *MEMORY[0x1E6961248], v22, &cf), !cf))
    {
LABEL_43:
      v29 = FigCaptionDataGetCMBaseObject();
      v30 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v30)
      {
        v30(v29, *MEMORY[0x1E6961250], v22, &cf);
      }

      if (cf)
      {
        FigCaptionDynamicStyleGetInitialValue();
        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }

        v31 = MEMORY[0x1E6960B78];
        v32 = FigCFEqual();
        v33 = MEMORY[0x1E6960B70];
        if (!v32)
        {
          v33 = v31;
        }

        CFDictionarySetValue(v24, *MEMORY[0x1E6960948], *v33);
      }

      UInt32 = FigCFNumberCreateUInt32();
      if (UInt32)
      {
        CFDictionarySetValue(v24, *MEMORY[0x1E6960958], UInt32);
        v35 = CFAttributedStringCreate(v22, v16, v24);
        if (v35)
        {
          v36 = v35;
          v37 = OUTLINED_FUNCTION_1_35();
          CFAttributedStringSetAttribute(v37, v45, v38, v36);
          CFRelease(v36);
        }
      }

      CFRelease(v24);
      if (cf)
      {
        CFRelease(cf);
      }

      goto LABEL_58;
    }

    FigCaptionDynamicStyleGetInitialValue();
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (FigCFEqual())
    {
      v27 = MEMORY[0x1E6960B68];
    }

    else
    {
      v28 = *MEMORY[0x1E6960B38];
      if (FigCFEqual())
      {
        goto LABEL_42;
      }

      if (!FigCFEqual())
      {
        if (FigCFEqual())
        {
          v28 = *MEMORY[0x1E6960B48];
        }

        goto LABEL_42;
      }

      v27 = MEMORY[0x1E6960B40];
    }

    v28 = *v27;
LABEL_42:
    CFDictionarySetValue(v24, *MEMORY[0x1E6960938], v28);
    goto LABEL_43;
  }

  if (CFStringCompare(*a2, *MEMORY[0x1E6960890], 0))
  {
    v10 = OUTLINED_FUNCTION_1_35();
    v13 = v9;
LABEL_18:
    CFAttributedStringSetAttribute(v10, v11, v12, v13);
    return;
  }

  v17 = OUTLINED_FUNCTION_2_34(0, *MEMORY[0x1E6961510]);
  if (v17 == kCFCompareEqualTo)
  {
    v21 = 1;
LABEL_57:
    valuePtr = v21;
    UInt32 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
    v39 = OUTLINED_FUNCTION_1_35();
    CFAttributedStringSetAttribute(v39, v46, v40, UInt32);
LABEL_58:
    if (UInt32)
    {
      CFRelease(UInt32);
    }

    return;
  }

  v18 = OUTLINED_FUNCTION_2_34(v17, *MEMORY[0x1E6961520]);
  if (v18 == kCFCompareEqualTo)
  {
    v21 = 2;
    goto LABEL_57;
  }

  v19 = OUTLINED_FUNCTION_2_34(v18, *MEMORY[0x1E6961518]);
  if (v19 == kCFCompareEqualTo)
  {
    v21 = 3;
    goto LABEL_57;
  }

  v20 = OUTLINED_FUNCTION_2_34(v19, *MEMORY[0x1E6961500]);
  if (v20 == kCFCompareEqualTo)
  {
    v21 = 4;
    goto LABEL_57;
  }

  if (OUTLINED_FUNCTION_2_34(v20, *MEMORY[0x1E69614F8]) == kCFCompareEqualTo)
  {
    v21 = v44;
    if ((v44 - 1) <= 3)
    {
      goto LABEL_57;
    }
  }
}

uint64_t FigCaptionRendererCaptionArrayInputCreate_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCaptionRendererCaptionArrayInputCreate_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCaptionRendererCaptionArrayInputCreate_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t startInputDoAsync_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t startInputDoAsync_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t enumCaptions_applierFunc_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t copyRangedValuesOfStyleProperty_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t HandleSampleBufferConsumerRemoteMessage(uint64_t a1, void *a2)
{
  OpCode = FigXPCMessageGetOpCode();
  if (OpCode)
  {
    return OpCode;
  }

  xpc_dictionary_get_uint64(a2, *MEMORY[0x1E69615A0]);
  *&v7 = 0;
  v4 = FigXPCServerLookupAndRetainAssociatedObject();
  if (!v4)
  {
    fig_log_get_emitter();
    v4 = FigSignalErrorAtGM();
  }

  v6 = v4;
  if (!v4)
  {
    return 4294951138;
  }

  return v6;
}

void FigXPCSampleBufferConsumerServerAssociateNeighborFigSampleBufferConsumer(int a1, const void *a2)
{
  v6 = 0;
  if (a2 && (v3 = OUTLINED_FUNCTION_5_23(a1, a2), v3 == FigSampleBufferConsumerGetTypeID()))
  {
    if (CreateSampleBufferConsumerServerState(v2, &v6))
    {
      OUTLINED_FUNCTION_652();
    }

    else
    {
      OUTLINED_FUNCTION_0_37();
      OUTLINED_FUNCTION_1_36();
      OUTLINED_FUNCTION_652();

      FigXPCServerAssociateObjectWithNeighborProcess();
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    OUTLINED_FUNCTION_652();

    FigSignalErrorAtGM();
  }
}

void FigXPCSampleBufferConsumerServerAssociateCopiedNeighborFigSampleBufferConsumer(int a1, const void *a2)
{
  v6 = 0;
  if (a2 && (v3 = OUTLINED_FUNCTION_5_23(a1, a2), v3 == FigSampleBufferConsumerGetTypeID()))
  {
    if (CreateSampleBufferConsumerServerState(v2, &v6))
    {
      OUTLINED_FUNCTION_652();
    }

    else
    {
      OUTLINED_FUNCTION_0_37();
      OUTLINED_FUNCTION_1_36();
      OUTLINED_FUNCTION_652();

      FigXPCServerAssociateCopiedObjectWithNeighborProcess();
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    OUTLINED_FUNCTION_652();

    FigSignalErrorAtGM();
  }
}

void FigXPCSampleBufferConsumerServerAssociateCopiedSampleBufferConsumerWithNeighborProcessByPID(int a1, CFTypeRef cf)
{
  v6 = 0;
  if (cf && (v3 = CFGetTypeID(cf), v3 == FigSampleBufferConsumerGetTypeID()))
  {
    if (CreateSampleBufferConsumerServerState(cf, &v6))
    {
      OUTLINED_FUNCTION_652();
    }

    else
    {
      OUTLINED_FUNCTION_0_37();
      OUTLINED_FUNCTION_1_36();
      OUTLINED_FUNCTION_652();

      FigXPCServerAssociateCopiedObjectWithNeighborProcessByPID();
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    OUTLINED_FUNCTION_652();

    FigSignalErrorAtGM();
  }
}

uint64_t FigXPCSampleBufferConsumerServerLowWaterTriggerCallback(uint64_t a1)
{
  if (!FigXPCCreateBasicMessage())
  {
    xpc_connection_send_message(*(a1 + 16), 0);
  }

  return FigXPCRelease();
}

uint64_t CreateSampleBufferConsumerServerState_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figVTTCue_MapCueAttributeToCueSettings_writingMode(const void *a1, uint64_t a2, __CFDictionary *a3)
{
  if (a1)
  {
    if (CFEqual(a1, @"tb"))
    {
      v5 = kFigVTT_AttributeValue_cue_horizontal;
    }

    else if (CFEqual(a1, @"lr"))
    {
      v5 = kFigVTT_AttributeValue_cue_leftToRight;
    }

    else
    {
      if (!CFEqual(a1, @"rl"))
      {
        return 0;
      }

      v5 = kFigVTT_AttributeValue_cue_rightToLeft;
    }

    v6 = *v5;
    if (*v5 && CFStringGetLength(*v5) >= 1)
    {
      CFDictionarySetValue(a3, @"vertical", v6);
    }
  }

  return 0;
}

void figVTTCue_processCSSAttribute(void *key, uint64_t a2)
{
  if (!*(a2 + 24))
  {
    Value = CFDictionaryGetValue(*(a2 + 8), key);
    if (Value)
    {
      v5 = Value;
      v6 = CFDictionaryGetValue(*a2, key);
      if (v6)
      {
        v7 = v6;
        Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (Mutable)
        {
          v9 = Mutable;
          *(a2 + 24) = v5(v7, Mutable);
          if (FigCFDictionaryGetCount() >= 1)
          {
            CFArrayAppendValue(*(a2 + 16), v9);
          }

          CFRelease(v9);
        }

        else
        {
          *(a2 + 24) = -17882;
        }
      }
    }
  }
}

void figVTTCue_processClassStyleReference(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 24))
  {
    v4 = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v6 = Mutable;
      v7 = CFStringCreateWithFormat(v4, 0, @"<c.%@>", a1);
      v8 = CFStringCreateWithFormat(v4, 0, @"</c>");
      CFDictionarySetValue(v6, @"openTag", v7);
      CFDictionarySetValue(v6, @"closeTag", v8);
      if (v7)
      {
        CFRelease(v7);
      }

      if (v8)
      {
        CFRelease(v8);
      }

      if (FigCFDictionaryGetCount() >= 1)
      {
        CFArrayAppendValue(*(a2 + 16), v6);
      }

      CFRelease(v6);
    }

    else
    {
      *(a2 + 24) = -17882;
    }
  }
}

uint64_t FigVTTCueCreate_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_37();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figVTTCue_GetNodeType_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_37();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figVTTCue_setNodeValue_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_37();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figVTTCue_copyNodeValue_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_37();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figVTTCue_copyNodeDocumentSerialization_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_38();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figVTTCue_copyNodeDocumentSerialization_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_38();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figVTTCue_copyNodeDocumentSerialization_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_38();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figVTTCue_copyNodeDocumentSerialization_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_38();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figVTTCue_copyNodeDocumentSerialization_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_38();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figVTTCue_copyNodeDocumentSerialization_cold_6(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figVTTCue_copyNodeDocumentSerialization_cold_7(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_38();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figVTTCue_copyNodeDocumentSerialization_cold_8(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figVTTCue_copyNodeDocumentSerialization_cold_9(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_38();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figVTTCue_copyNodeDocumentSerialization_cold_10(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_35();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figVTTCue_copyNodeDocumentSerialization_cold_11(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_38();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figVTTCue_copyNodeDocumentSerialization_cold_12(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_38();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figVTTCue_copyNodeDocumentSerialization_cold_13(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_35();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figVTTCue_copyNodeDocumentSerialization_cold_14(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_35();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figVTTCue_copyNodeDocumentSerialization_cold_15(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figVTTCue_copyNodeDocumentSerialization_cold_16(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_37();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figVTTCue_MapCueAttributeToCueSettings_fromFigGeometryDimension_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_38();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figVTTCue_MapCueAttributeToCueSettings_fromFigGeometryDimension_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_35();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCPEServerStart()
{
  if (FigServer_IsMediaparserd())
  {
    fig_log_get_emitter();
    return FigSignalErrorAtGM();
  }

  else
  {
    FigServer_IsMediaplaybackd();
    result = FigXPCServerStart();
    if (!result)
    {
      return FigCPEProtectorServerStart();
    }
  }

  return result;
}

uint64_t HandleCPEMessage()
{
  result = FigXPCMessageGetOpCode();
  if (!result)
  {
    return FigSecureStopManagerServerHandleMessage();
  }

  return result;
}

uint64_t jsonParserServer_replyingMessageHandler()
{
  result = FigXPCMessageGetOpCode();
  if (!result)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    return FigSignalErrorAtGM();
  }

  return result;
}

uint64_t __FigJSONParserStartServer_block_invoke_cold_1(uint64_t a1)
{
  fig_log_get_emitter();
  result = FigSignalErrorAtGM();
  *(*(*a1 + 8) + 24) = result;
  return result;
}

uint64_t FigInterstitialCreatePropertyListsFromJSONData_Remote(uint64_t a1, CFTypeRef *a2, CFTypeRef *a3, CMTimeValue *a4, _OWORD *a5, CFTypeRef *a6)
{
  v33 = 0;
  cf = 0;
  v32 = 0;
  v29 = 0;
  v30 = 0;
  if (!a1)
  {
LABEL_53:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    OSStatus = FigSignalErrorAtGM();
    goto LABEL_54;
  }

  if (qword_1ED4CA728 != -1)
  {
    dispatch_once(&qword_1ED4CA728, &__block_literal_global_16);
  }

  v11 = _MergedGlobals_31;
  if (_MergedGlobals_31)
  {
    goto LABEL_46;
  }

  OSStatus = FigXPCCreateBasicMessage();
  if (OSStatus)
  {
    goto LABEL_54;
  }

  OSStatus = FigXPCMessageSetCFString();
  if (OSStatus)
  {
    goto LABEL_54;
  }

  FigXPCMessageSetUInt32();
  OSStatus = FigXPCMessageSetCFData();
  if (OSStatus)
  {
    goto LABEL_54;
  }

  OSStatus = FigXPCRemoteClientSendSyncMessageCreatingReply();
  if (OSStatus)
  {
    goto LABEL_54;
  }

  OSStatus = FigXPCMessageGetOSStatus();
  if (OSStatus)
  {
    goto LABEL_54;
  }

  if (a2)
  {
    *a2 = 0;
    OSStatus = FigXPCMessageCopyCFObject();
    if (OSStatus)
    {
      goto LABEL_54;
    }

    if (cf)
    {
      v13 = CFGetTypeID(cf);
      if (v13 == CFArrayGetTypeID())
      {
        if (CFArrayGetCount(cf) >= 1)
        {
          v14 = 0;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(cf, v14);
            if (!ValueAtIndex)
            {
              goto LABEL_53;
            }

            v16 = CFGetTypeID(ValueAtIndex);
            if (v16 != CFURLGetTypeID())
            {
              goto LABEL_53;
            }
          }

          while (++v14 < CFArrayGetCount(cf));
        }

        *a2 = cf;
        cf = 0;
      }
    }
  }

  if (a3)
  {
    *a3 = 0;
    OSStatus = FigXPCMessageCopyCFObject();
    if (OSStatus)
    {
      goto LABEL_54;
    }

    if (v30)
    {
      v17 = CFGetTypeID(v30);
      if (v17 == CFArrayGetTypeID())
      {
        if (CFArrayGetCount(v30) >= 1)
        {
          v18 = 0;
          do
          {
            v19 = CFArrayGetValueAtIndex(v30, v18);
            if (!v19)
            {
              goto LABEL_53;
            }

            v20 = CFGetTypeID(v19);
            if (v20 != CFNumberGetTypeID())
            {
              goto LABEL_53;
            }
          }

          while (++v18 < CFArrayGetCount(v30));
        }

        *a3 = v30;
        v30 = 0;
      }
    }
  }

  if (a4)
  {
    v27.start.value = 0;
    *a4 = 0;
    OSStatus = FigXPCMessageCopyCFObject();
    if (OSStatus)
    {
      goto LABEL_54;
    }

    *a4 = v27.start.value;
  }

  if (a5)
  {
    v28 = 0;
    v21 = MEMORY[0x1E6960C98];
    v22 = *(MEMORY[0x1E6960C98] + 16);
    *a5 = *MEMORY[0x1E6960C98];
    a5[1] = v22;
    a5[2] = *(v21 + 32);
    OSStatus = FigXPCMessageCopyCFObject();
    if (!OSStatus)
    {
      if (v28)
      {
        v23 = CFGetTypeID(v28);
        if (v23 == CFDictionaryGetTypeID())
        {
          CMTimeRangeMakeFromDictionary(&v27, v28);
          v24 = *&v27.start.epoch;
          *a5 = *&v27.start.value;
          a5[1] = v24;
          a5[2] = *&v27.duration.timescale;
        }

        if (v28)
        {
          CFRelease(v28);
        }
      }

      goto LABEL_40;
    }

LABEL_54:
    v11 = OSStatus;
    goto LABEL_46;
  }

LABEL_40:
  if (!a6)
  {
LABEL_45:
    v11 = 0;
    goto LABEL_46;
  }

  *a6 = 0;
  v11 = FigXPCMessageCopyCFObject();
  if (!v11 && v29)
  {
    v25 = CFGetTypeID(v29);
    if (v25 == CFStringGetTypeID())
    {
      v11 = 0;
      *a6 = v29;
      v29 = 0;
      goto LABEL_46;
    }

    goto LABEL_45;
  }

LABEL_46:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v30)
  {
    CFRelease(v30);
  }

  if (v29)
  {
    CFRelease(v29);
  }

  FigXPCRelease();
  FigXPCRelease();
  return v11;
}

uint64_t __fjp_ensureClientEstablished_block_invoke_cold_1()
{
  fig_log_get_emitter();
  result = FigSignalErrorAtGM();
  _MergedGlobals_31 = result;
  return result;
}

uint64_t assetDownloaderServer_handleRemoteMessage(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  OpCode = FigXPCMessageGetOpCode();
  if (OpCode)
  {
    return OpCode;
  }

  xpc_dictionary_get_uint64(a2, *MEMORY[0x1E69615A0]);
  cf[0] = 0;
  v4 = FigXPCServerLookupAndRetainAssociatedObject();
  if (!v4)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    v4 = FigSignalErrorAtGM();
  }

  v6 = v4;
  if (!v4)
  {
    return 4294950644;
  }

  return v6;
}

uint64_t assetDownloaderServer_downloadSuccessCallback(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_1_39();
    if (v2)
    {
      if (*(v1 + 32) && !FigXPCCreateBasicMessage())
      {
        xpc_connection_send_message(*(v1 + 32), 0);
      }
    }
  }

  return FigXPCRelease();
}

uint64_t assetDownloaderServer_downloadFailureCallback(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_1_39();
    if (v2)
    {
      if (*(v1 + 32))
      {
        OUTLINED_FUNCTION_2_36();
        if (!FigXPCCreateBasicMessage())
        {
          OUTLINED_FUNCTION_3_25(0);
          if (!FigXPCMessageSetCFError())
          {
            OUTLINED_FUNCTION_4_29(0);
          }
        }
      }
    }
  }

  return FigXPCRelease();
}

uint64_t assetDownloaderServer_loadedTimeRangeChangedCallback(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_1_39();
    if (v2)
    {
      if (*(v1 + 32))
      {
        if (!FigXPCCreateBasicMessage() && !FigXPCMessageSetCFDictionary() && !FigXPCMessageSetCFArray() && !FigXPCMessageSetCFDictionary())
        {
          OUTLINED_FUNCTION_3_25(0);
          if (!FigXPCMessageSetCFArray())
          {
            OUTLINED_FUNCTION_4_29(0);
          }
        }
      }
    }
  }

  return FigXPCRelease();
}

uint64_t assetDownloaderServer_didResolveMediaSelection(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_1_39();
    if (v2)
    {
      if (*(v1 + 32))
      {
        OUTLINED_FUNCTION_2_36();
        if (!FigXPCCreateBasicMessage())
        {
          OUTLINED_FUNCTION_3_25(0);
          if (!FigXPCMessageSetCFArray())
          {
            OUTLINED_FUNCTION_4_29(0);
          }
        }
      }
    }
  }

  return FigXPCRelease();
}

uint64_t assetDownloaderServer_didFinishDownloadForMediaSelection(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_1_39();
    if (v2)
    {
      if (*(v1 + 32))
      {
        OUTLINED_FUNCTION_2_36();
        if (!FigXPCCreateBasicMessage())
        {
          OUTLINED_FUNCTION_3_25(0);
          if (!FigXPCMessageSetCFArray())
          {
            OUTLINED_FUNCTION_4_29(0);
          }
        }
      }
    }
  }

  return FigXPCRelease();
}

uint64_t assetDownloaderServer_didFinishLoadingMetadata(uint64_t result)
{
  if (result)
  {
    if (!*(result + 56))
    {
      *(result + 56) = 1;
      if (!*(result + 72))
      {
        if (*(result + 64))
        {
          *(result + 72) = 1;
          return MX_RunningBoardServices_InvalidateBackgroundDownloadProcessAssertion();
        }
      }
    }
  }

  return result;
}

uint64_t assetDownloaderServer_progressUpdateCallback(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_1_39();
    if (v4)
    {
      if (*(v1 + 32))
      {
        v5 = v3;
        v6 = v2;
        if (!FigXPCCreateBasicMessage())
        {
          xpc_dictionary_set_int64(0, "ExpectedBytesToDownload", v6);
          xpc_dictionary_set_int64(0, "BytesDownloaded", v5);
          xpc_connection_send_message(*(v1 + 32), 0);
        }
      }
    }
  }

  return FigXPCRelease();
}

uint64_t assetDownloaderServer_willDownloadAlternatesCallback(uint64_t a1)
{
  value = 0;
  xdict = 0;
  if (a1)
  {
    OUTLINED_FUNCTION_1_39();
    if (v3)
    {
      if (*(v1 + 32))
      {
        OUTLINED_FUNCTION_2_36();
        if (!FigXPCCreateBasicMessage() && !FigAlternateCopyArrayOfAlternatesAsXPCObject(v2, &value))
        {
          xpc_dictionary_set_value(xdict, "Alternates", value);
          xpc_connection_send_message(*(v1 + 32), xdict);
        }
      }
    }
  }

  FigXPCRelease();
  return FigXPCRelease();
}

uint64_t assetDownloaderServer_didReceiveMetricEventCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  empty = xpc_dictionary_create_empty();
  if (a1)
  {
    if (*(a1 + 40))
    {
      if (*(a1 + 32))
      {
        if (!FigXPCCreateBasicMessage())
        {
          v6 = *(*(CMBaseObjectGetVTable() + 16) + 80);
          if (v6)
          {
            if (!v6(a3, empty))
            {
              xpc_dictionary_set_value(0, "MetricEvent", empty);
              xpc_connection_send_message(*(a1 + 32), 0);
            }
          }
        }
      }
    }
  }

  FigXPCRelease();
  return FigXPCRelease();
}

void assetDownloaderServer_finalize(uint64_t a1)
{
  if (!*(a1 + 72) && *(a1 + 64))
  {
    *(a1 + 72) = 1;
    MX_RunningBoardServices_InvalidateBackgroundDownloadProcessAssertion();
  }

  FigXPCRelease();
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 64);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 48);
  if (v5)
  {

    dispatch_release(v5);
  }
}

BOOL __assetDownloadServer_handleLoadMetataMessage_block_invoke_cold_1(CFTypeRef cf, uint64_t *a2, uint64_t *a3)
{
  if (!*(cf + 8) && !*(cf + 72))
  {
    if (*(cf + 3))
    {
      v6 = CFGetAllocator(cf);
      v7 = CFStringCreateWithFormat(v6, 0, @"FigAssetDownloadMetadata.%@", *(cf + 3));
      *(cf + 8) = MX_RunningBoardServices_CreateBackgroundDownloadProcessAssertionForBundleIdentifier();
      if (v7)
      {
        CFRelease(v7);
      }
    }
  }

  v8 = *a2;
  *a3 = *a2;
  return v8 == 0;
}

void dworch_logDownloadConfig(uint64_t a1, const __CFString *a2, const void *a3)
{
  CMBaseObjectGetDerivedStorage();
  OptimizesAuxiliaryContentConfigurations = FigStreamingAssetDownloadConfigGetOptimizesAuxiliaryContentConfigurations(a3);
  DownloadsInterstitialAssets = FigStreamingAssetDownloadConfigGetDownloadsInterstitialAssets(a3);
  v7 = *MEMORY[0x1E695E480];
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  if (Mutable)
  {
    v9 = Mutable;
    v10 = CFArrayCreateMutable(v7, 0, MEMORY[0x1E695E9C0]);
    if (!v10)
    {
      goto LABEL_15;
    }

    v11 = v10;
    v12 = CFCopyDescription(a3);
    if (v12)
    {
      if (a2)
      {
        CFStringAppend(v9, a2);
      }

      v13 = OUTLINED_FUNCTION_312();
      CFStringAppendFormat(v13, v14, v15, OptimizesAuxiliaryContentConfigurations);
      v16 = OUTLINED_FUNCTION_312();
      CFStringAppendFormat(v16, v17, v18, DownloadsInterstitialAssets);
      CFStringAppend(v9, v12);
      OUTLINED_FUNCTION_312();
      dworch_copyNextTrimmedLogFromString();
      if (v19)
      {
        v20 = v19;
        v21 = 0;
        do
        {
          CFArrayAppendValue(v11, v20);
          v21 += CFStringGetLength(v20);
          CFRelease(v20);
          dworch_copyNextTrimmedLogFromString();
          v20 = v22;
        }

        while (v22);
      }

      Count = CFArrayGetCount(v11);
      if (Count >= 1)
      {
        v24 = Count;
        for (i = 0; i != v24; ++i)
        {
          CFArrayGetValueAtIndex(v11, i);
          if (dword_1EAF16DB8)
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }
        }
      }
    }

    CFRelease(v9);
    CFRelease(v11);
    v9 = v12;
    if (v12)
    {
LABEL_15:
      CFRelease(v9);
    }
  }
}

void dworch_sendProgressUpdateCallback(const void *a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v7)
  {
    v8 = v7;
    v9 = OUTLINED_FUNCTION_11_13();
    if (v9)
    {
      v10 = v9;
      if (a1)
      {
        v11 = CFRetain(a1);
      }

      else
      {
        v11 = 0;
      }

      *v10 = v11;
      v10[1] = v8;
      v10[7] = a2;
      v10[8] = a3;
      v12 = *(DerivedStorage + 296);

      dispatch_async_f(v12, v10, dworch_sendProgressUpdateCallbackOnCallbackQueue);
    }

    else
    {
      OUTLINED_FUNCTION_429();
      if (FigSignalErrorAtGM())
      {

        CFRelease(v8);
      }
    }
  }
}

uint64_t dworch_selectAlternates_removePumpListeners()
{
  if (!*(CMBaseObjectGetDerivedStorage() + 312))
  {
    return 0;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  OUTLINED_FUNCTION_2_37();
  result = FigNotificationCenterRemoveWeakListener();
  if (!result)
  {
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_2_37();

    return FigNotificationCenterRemoveWeakListener();
  }

  return result;
}

void dworch_freeAlternateAndRenditionItem(void *a1)
{
  if (a1)
  {
    v2 = a1[2];
    if (v2)
    {
      CFRelease(v2);
    }

    v3 = a1[3];
    if (v3)
    {
      CFRelease(v3);
    }

    free(a1);
  }
}

void dworch_assetNotificationCallback(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, const __CFDictionary *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2 && (v10 = DerivedStorage, CMBaseObjectGetDerivedStorage(), !FigRetainProxyIsInvalidated()) && CFEqual(a3, @"assetNotice_PropertyLoaded") && v10[2] == a4)
  {
    FigCFDictionaryGetInt32IfPresent();
    CFDictionaryGetValue(a5, @"assetPayload_Property");
    if (FigCFEqual())
    {
      if (!v10[47])
      {
        v11 = v10[1];
        CMBaseObject = FigAssetGetCMBaseObject(v10[2]);
        v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v13)
        {
          if (!v13(CMBaseObject, @"Duration", v11, v10 + 47))
          {
            dworch_downloadMedia_symptomsReportStreamingAssetDownloadStart();
            dworch_removeAssetListeners(a2);
          }
        }
      }
    }

    OUTLINED_FUNCTION_652();
  }

  else
  {
    OUTLINED_FUNCTION_243();
    OUTLINED_FUNCTION_652();

    FigSignalErrorAtGM();
  }
}

void dworch_downloadMedia_symptomsReportStreamingAssetDownloadStart()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = **&MEMORY[0x1E6960C70];
  v1 = *(DerivedStorage + 178) == 0;
  v2 = *(DerivedStorage + 179) == 0;
  if (*(DerivedStorage + 564) == 3)
  {
    v3 = DerivedStorage;
    OUTLINED_FUNCTION_54_4();
    if (v8)
    {
      dworch_loadDuration();
      if (*(v3 + 376))
      {
        cf = 0;
        CMBaseObject = FigAssetGetCMBaseObject(*(v3 + 16));
        v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v5 && !v5(CMBaseObject, @"assetProperty_CreationOptionsDictionary", *MEMORY[0x1E695E480], &cf))
        {
          v9.value = 0;
          if (FigCFDictionaryGetInt64IfPresent())
          {
            v8 = v9.value == 0;
          }

          else
          {
            v8 = 0;
          }

          v6 = !v8;
          if (cf)
          {
            CFRelease(cf);
          }
        }

        else
        {
          v6 = 1;
        }

        CMTimeMakeFromDictionary(&v11, *(v3 + 376));
        v7 = *(v3 + 72);
        v9 = v11;
        FigSymptomsReportStreamingAssetDownloadStart(v7, &v9, v6, v1, v2, (v3 + 656));
      }
    }
  }
}

uint64_t dworch_loadDuration()
{
  result = CMBaseObjectGetDerivedStorage();
  v12 = 0;
  if (!*(result + 376))
  {
    v1 = result;
    CMBaseObjectGetDerivedStorage();
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_39_3();
    result = FigNotificationCenterAddWeakListener();
    if (result)
    {
      v2 = result == -12724;
    }

    else
    {
      v2 = 1;
    }

    if (v2)
    {
      v3 = *(v1 + 16);
      VTable = CMBaseObjectGetVTable();
      v5 = *(VTable + 16);
      result = VTable + 16;
      v6 = *(v5 + 24);
      if (v6)
      {
        result = v6(v3, @"Duration", &v12);
        if (!result)
        {
          if (v12)
          {
            v7 = *(v1 + 8);
            CMBaseObject = FigAssetGetCMBaseObject(*(v1 + 16));
            v9 = CMBaseObjectGetVTable();
            v10 = *(v9 + 8);
            result = v9 + 8;
            v11 = *(v10 + 48);
            if (v11)
            {
              return v11(CMBaseObject, @"Duration", v7, v1 + 376);
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t dworch_downloadMedia_removeMediaDownloaderListeners()
{
  OUTLINED_FUNCTION_187();
  CMNotificationCenterGetDefaultLocalCenter();
  OUTLINED_FUNCTION_39_3();
  result = FigNotificationCenterRemoveWeakListener();
  if (!result)
  {
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_39_3();
    result = FigNotificationCenterRemoveWeakListener();
    if (!result)
    {
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_39_3();

      return FigNotificationCenterRemoveWeakListener();
    }
  }

  return result;
}

uint64_t dworch_sendDidChangeLoadedTimeRangeCallback(const void *a1, const void *a2, const void *a3, const void *a4, const void *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v11)
  {
    return 0;
  }

  v12 = v11;
  v13 = OUTLINED_FUNCTION_11_13();
  if (v13)
  {
    v14 = v13;
    if (a1)
    {
      v15 = CFRetain(a1);
    }

    else
    {
      v15 = 0;
    }

    *v14 = v15;
    v14[1] = v12;
    if (a2)
    {
      v16 = CFRetain(a2);
    }

    else
    {
      v16 = 0;
    }

    v14[3] = v16;
    if (a3)
    {
      v17 = CFRetain(a3);
    }

    else
    {
      v17 = 0;
    }

    v14[4] = v17;
    if (a4)
    {
      v18 = CFRetain(a4);
    }

    else
    {
      v18 = 0;
    }

    v14[5] = v18;
    if (a5)
    {
      v19 = CFRetain(a5);
    }

    else
    {
      v19 = 0;
    }

    v14[6] = v19;
    dispatch_async_f(*(DerivedStorage + 296), v14, dworch_sendDidChangeLoadedTimeRangeOnCallbackQueue);
    return 0;
  }

  v20 = FigSignalErrorAtGM();
  if (v20)
  {
    CFRelease(v12);
  }

  return v20;
}

uint64_t dworch_downloadMetadata_pause(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 432);
  if (!v3)
  {
LABEL_7:
    dworch_releaseDiskResources();
    dworch_relinquishAccessToDestinationURL(a1);
    return 0;
  }

  v4 = DerivedStorage;
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v5)
  {
    return 4294954514;
  }

  result = v5(v3);
  if (!result)
  {
    result = dworch_ensureTemporaryMetadataOnlyStreamingCache(a1);
    if (!result)
    {
      FigAssetDownloaderGetCMBaseObject(*(v4 + 432));
      if (*(*(CMBaseObjectGetVTable() + 8) + 56))
      {
        v7 = OUTLINED_FUNCTION_308();
        result = v8(v7);
        if (result)
        {
          return result;
        }

        goto LABEL_7;
      }

      return 4294954514;
    }
  }

  return result;
}

uint64_t dworch_downloadMetadata_stop(uint64_t a1)
{
  v2 = *(CMBaseObjectGetDerivedStorage() + 432);
  if (!v2)
  {
LABEL_4:
    dworch_releaseDiskResources();
    dworch_relinquishAccessToDestinationURL(a1);
    return 0;
  }

  v3 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (v3)
  {
    result = v3(v2);
    if (result)
    {
      return result;
    }

    goto LABEL_4;
  }

  return 4294954514;
}

uint64_t dworch_downloadMetadata_pauseForInteractivePlayback(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 432))
  {
LABEL_5:
    dworch_releaseDiskResources();
    return 0;
  }

  v3 = DerivedStorage;
  result = dworch_ensureTemporaryMetadataOnlyStreamingCache(a1);
  if (result)
  {
    return result;
  }

  FigAssetDownloaderGetCMBaseObject(*(v3 + 432));
  if (*(*(CMBaseObjectGetVTable() + 8) + 56))
  {
    v5 = OUTLINED_FUNCTION_308();
    result = v6(v5);
    if (result)
    {
      return result;
    }

    goto LABEL_5;
  }

  return 4294954514;
}

uint64_t dworch_downloadMedia_pause(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = DerivedStorage;
  if (*(DerivedStorage + 553))
  {
    v4 = *(DerivedStorage + 456);
    if (v4 && CFArrayGetCount(v4) >= 1)
    {
      ValueAtIndex = FigCFArrayGetValueAtIndex();
      v6 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (!v6)
      {
        return 4294954514;
      }

      result = v6(ValueAtIndex);
      if (result)
      {
        return result;
      }
    }
  }

  else
  {
    for (i = 0; ; ++i)
    {
      Count = *(v3 + 496);
      if (Count)
      {
        Count = CFArrayGetCount(Count);
      }

      if (i >= Count)
      {
        break;
      }

      v10 = CFArrayGetValueAtIndex(*(v3 + 496), i);
      v11 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (!v11)
      {
        return 4294954514;
      }

      result = v11(v10);
      if (result)
      {
        return result;
      }
    }
  }

  result = dworch_relinquishAccessToDestinationURL(a1);
  if (!result)
  {
    FigSymptomsReportStreamingAssetDownloadPause((v3 + 656));
    dworch_issueReportingEvent(a1, 704);
    return 0;
  }

  return result;
}

uint64_t dworch_downloadMedia_stop(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = DerivedStorage;
  if (*(DerivedStorage + 553))
  {
    v4 = *(DerivedStorage + 456);
    if (v4 && CFArrayGetCount(v4) >= 1)
    {
      ValueAtIndex = FigCFArrayGetValueAtIndex();
      v6 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (!v6)
      {
        return 4294954514;
      }

      result = v6(ValueAtIndex);
      if (result)
      {
        return result;
      }
    }
  }

  else
  {
    for (i = 0; ; ++i)
    {
      Count = *(v3 + 496);
      if (Count)
      {
        Count = CFArrayGetCount(Count);
      }

      if (i >= Count)
      {
        break;
      }

      v13 = CFArrayGetValueAtIndex(*(v3 + 496), i);
      v14 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (!v14)
      {
        return 4294954514;
      }

      result = v14(v13);
      if (result)
      {
        return result;
      }
    }
  }

  result = dworch_relinquishAccessToDestinationURL(a1);
  if (!result)
  {
    v8 = *(v3 + 632);
    if (v8)
    {
      v9 = *(v3 + 556);
      v10 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v10)
      {
        v10(v8, 0x1F0B64618, 0x1F0B39DB8, v9, 0);
      }
    }

    return 0;
  }

  return result;
}

void dworch_selectAlternates_pumpTransferCallback(const void *a1, const void *a2, const void *a3)
{
  cf = 0;
  if (dworch_copyAssetDownloaderFromRetainProxy(a1, &cf))
  {
    goto LABEL_13;
  }

  v6 = cf;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = malloc_type_calloc(1uLL, 0x18uLL, 0x20040960023A9uLL);
  if (v8)
  {
    v9 = v8;
    if (v6)
    {
      v10 = CFRetain(v6);
    }

    else
    {
      v10 = 0;
    }

    *v9 = v10;
    if (a2)
    {
      v11 = CFRetain(a2);
    }

    else
    {
      v11 = 0;
    }

    v9[1] = v11;
    if (a3)
    {
      v12 = CFRetain(a3);
    }

    else
    {
      v12 = 0;
    }

    v9[2] = v12;
    dispatch_async_f(*DerivedStorage, v9, dworch_selectAlternates_pumpTransferCallbackOnQueue);
LABEL_13:
    if (!a1)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  OUTLINED_FUNCTION_429();
  FigSignalErrorAtGM();
  if (a1)
  {
LABEL_14:
    CFRelease(a1);
  }

LABEL_15:
  v13 = cf;
  if (cf)
  {

    CFRelease(v13);
  }
}

void dworch_selectAlternates_pumpTransferCallbackOnQueue(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, os_log_type_t type, unsigned int a15, int a16, uint64_t a17, __int16 a18, uint64_t a19, __int16 a20, uint64_t a21, __int16 a22, uint64_t a23, int a24, __int16 a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  OUTLINED_FUNCTION_458();
  v57 = v56;
  v58 = *v56;
  v59 = v56[1];
  v60 = v56[2];
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_604();
  CMBaseObjectGetDerivedStorage();
  if (FigRetainProxyIsInvalidated())
  {
    goto LABEL_35;
  }

  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_54_4();
  if (!v62 && !*(v61 + 561) && !*(v61 + 560) || *(v55 + 312))
  {
    goto LABEL_32;
  }

  if (v59)
  {
    v63 = CFRetain(v59);
  }

  else
  {
    v63 = 0;
  }

  *(v55 + 312) = v63;
  if (dword_1EAF16DB8)
  {
    OUTLINED_FUNCTION_147();
    v64 = OUTLINED_FUNCTION_126();
    if (os_log_type_enabled(v64, type))
    {
      v65 = a15;
    }

    else
    {
      v65 = a15 & 0xFFFFFFFE;
    }

    if (v65)
    {
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_108();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v63 = *(v55 + 312);
  }

  if (!v63)
  {
LABEL_35:
    v66 = FigSignalErrorAtGM();
LABEL_20:
    v67 = v66;
    if (!v60)
    {
      goto LABEL_21;
    }

    goto LABEL_33;
  }

  if (!*(v55 + 24))
  {
    OUTLINED_FUNCTION_265();
    v66 = dworch_selectAlternates_proceedAfterCheckingDestinationURL();
    goto LABEL_20;
  }

  if (!*(CMBaseObjectGetDerivedStorage() + 576))
  {
    v66 = FigAssetDownloadCoordinatorScheduleAccessToURL(v58, *(v55 + 24), *v55, 1, dworch_selectAlternates_gotAccessToDestinationURLCallback);
    goto LABEL_20;
  }

  dworch_selectAlternates_gotAccessToDestinationURLCallback(v58, 1, *(v55 + 576));
LABEL_32:
  v67 = 0;
  if (!v60)
  {
LABEL_21:
    if (v67)
    {
      dworch_transitionToTerminalStateWithOSStatus(v58, v67);
    }

    if (v59)
    {
      goto LABEL_24;
    }

    goto LABEL_25;
  }

LABEL_33:
  dworch_transitionToTerminalState(v58, v60);
  if (v59)
  {
LABEL_24:
    CFRelease(v59);
  }

LABEL_25:
  if (v60)
  {
    CFRelease(v60);
  }

  if (v58)
  {
    CFRelease(v58);
  }

  free(v57);
  OUTLINED_FUNCTION_457();
}

uint64_t dworch_selectAlternates_proceedAfterCheckingDestinationURL()
{
  OUTLINED_FUNCTION_187();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMBaseObjectGetDerivedStorage();
  if (FigRetainProxyIsInvalidated())
  {
    OUTLINED_FUNCTION_239();
    v8 = FigSignalErrorAtGM();
    goto LABEL_87;
  }

  if (*(DerivedStorage + 556) != 1 && !*(DerivedStorage + 560))
  {
    v8 = 0;
    goto LABEL_87;
  }

  v3 = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v70 = 0;
  v67 = 0;
  v68 = 0;
  theDict = 0;
  CMBaseObjectGetDerivedStorage();
  CMNotificationCenterGetDefaultLocalCenter();
  OUTLINED_FUNCTION_2_37();
  v4 = FigNotificationCenterAddWeakListener();
  if (v4)
  {
    goto LABEL_76;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  OUTLINED_FUNCTION_2_37();
  v4 = FigNotificationCenterAddWeakListener();
  if (v4)
  {
    goto LABEL_76;
  }

  v5 = *(v3 + 312);
  v6 = *(v3 + 592);
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 88);
  if (!v7)
  {
    v8 = 4294954514;
LABEL_25:
    FigBytePumpGetFigBaseObject(*(v3 + 312));
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v25 = OUTLINED_FUNCTION_308();
      v26(v25);
    }

    goto LABEL_79;
  }

  v8 = v7(v5, dworch_selectAlternates_bytePumpFn, 0, v6);
  if (v8)
  {
    goto LABEL_25;
  }

  v9 = MEMORY[0x1E695E4D0];
  if (*(v3 + 178))
  {
    FigBytePumpGetFigBaseObject(*(v3 + 312));
    v11 = v10;
    v12 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (!v12)
    {
      goto LABEL_78;
    }

    v4 = v12(v11, 0x1F0B1F698, *v9);
    if (v4)
    {
      goto LABEL_76;
    }
  }

  if (*(v3 + 179))
  {
    FigBytePumpGetFigBaseObject(*(v3 + 312));
    v14 = v13;
    v15 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (!v15)
    {
      goto LABEL_78;
    }

    v4 = v15(v14, 0x1F0B1F6B8, *v9);
    if (v4)
    {
      goto LABEL_76;
    }
  }

  v16 = *(v3 + 8);
  FigBytePumpGetFigBaseObject(*(v3 + 312));
  v18 = v17;
  v19 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v19)
  {
    v19(v18, 0x1F0B1F098, v16, &cf);
  }

  FigBytePumpGetFigBaseObject(*(v3 + 312));
  v21 = v20;
  v22 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v22)
  {
    goto LABEL_78;
  }

  v4 = v22(v21, 0x1F0B1F098, 0);
  if (v4)
  {
    goto LABEL_76;
  }

  if (cf)
  {
    v4 = dworch_ensureTemporaryMetadataOnlyStreamingCache(v1);
    if (v4)
    {
      goto LABEL_76;
    }

    v4 = FigStreamingCacheTransferData(cf, *(v3 + 304));
    if (v4)
    {
      goto LABEL_76;
    }
  }

  if (*(v3 + 561) || !*(CMBaseObjectGetDerivedStorage() + 576))
  {
    v4 = dworch_ensureTemporaryMetadataOnlyStreamingCache(v1);
    if (v4)
    {
      goto LABEL_76;
    }

    v24 = *(v3 + 304);
    v23 = *(v3 + 312);
  }

  else
  {
    v4 = dworch_ensurePersistentStreamingCache(v1);
    if (v4)
    {
      goto LABEL_76;
    }

    v27 = *(v3 + 304);
    if (v27)
    {
      v28 = *(v3 + 480);
      if (v28)
      {
        v4 = FigStreamingCacheTransferData(v27, v28);
        if (v4)
        {
          goto LABEL_76;
        }
      }
    }

    v23 = *(v3 + 312);
    v24 = *(v3 + 480);
  }

  FigBytePumpGetFigBaseObject(v23);
  v30 = v29;
  v31 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v31)
  {
    goto LABEL_78;
  }

  v4 = v31(v30, 0x1F0B1F098, v24);
  if (v4)
  {
    goto LABEL_76;
  }

  FigBytePumpGetFigBaseObject(*(v3 + 312));
  v33 = v32;
  v34 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v34)
  {
    goto LABEL_78;
  }

  v35 = *MEMORY[0x1E695E4C0];
  v4 = v34(v33, 0x1F0B1F418, *MEMORY[0x1E695E4C0]);
  if (v4)
  {
    goto LABEL_76;
  }

  FigBytePumpGetFigBaseObject(*(v3 + 312));
  v37 = v36;
  v38 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v38)
  {
    goto LABEL_78;
  }

  v4 = v38(v37, 0x1F0B1F438, v35);
  if (v4)
  {
    goto LABEL_76;
  }

  FigBytePumpGetFigBaseObject(*(v3 + 312));
  v40 = v39;
  v41 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v41)
  {
    goto LABEL_78;
  }

  v4 = v41(v40, 0x1F0B1F5B8, v35);
  if (v4)
  {
LABEL_76:
    v8 = v4;
    goto LABEL_79;
  }

  if (!*(v3 + 72))
  {
    goto LABEL_44;
  }

  FigBytePumpGetFigBaseObject(*(v3 + 312));
  if (!*(*(CMBaseObjectGetVTable() + 8) + 56))
  {
LABEL_78:
    v8 = 4294954514;
    goto LABEL_79;
  }

  v42 = OUTLINED_FUNCTION_501();
  v4 = v43(v42);
  if (v4)
  {
    goto LABEL_76;
  }

LABEL_44:
  FigBytePumpGetFigBaseObject(*(v3 + 312));
  v45 = v44;
  v46 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v46)
  {
    goto LABEL_78;
  }

  v4 = v46(v45, 0x1F0B1F638, 0x1F0B1B8B8);
  if (v4)
  {
    goto LABEL_76;
  }

  FigBytePumpGetFigBaseObject(*(v3 + 312));
  if (*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    v47 = OUTLINED_FUNCTION_501();
    v48(v47);
  }

  v49 = FigRCLGetNumberWithDefault(v67, @"mediaDownloadersMaxWidth");
  if (v49 <= 1)
  {
    LODWORD(v50) = 1;
  }

  else
  {
    LODWORD(v50) = v49;
  }

  if (v50 >= 6)
  {
    v50 = 6;
  }

  else
  {
    v50 = v50;
  }

  *(v3 + 512) = v50;
  FigBytePumpGetFigBaseObject(*(v3 + 312));
  if (!*(*(CMBaseObjectGetVTable() + 8) + 56))
  {
    goto LABEL_78;
  }

  v51 = OUTLINED_FUNCTION_501();
  v4 = v52(v51);
  if (v4)
  {
    goto LABEL_76;
  }

  FigBytePumpGetFigBaseObject(*(v3 + 312));
  v54 = v53;
  v55 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v55 || v55(v54, 0x1F0B1EE98, *MEMORY[0x1E695E480], &theDict) != -12783)
  {
    v59 = *(v3 + 392);
    if (v59)
    {
      CFRelease(v59);
      *(v3 + 392) = 0;
    }

    v60 = *(v3 + 400);
    if (v60)
    {
      CFRelease(v60);
      *(v3 + 400) = 0;
    }

    Value = CFDictionaryGetValue(theDict, @"FBPAIK_FigAlternateArray");
    if (Value)
    {
      Value = CFRetain(Value);
    }

    *(v3 + 392) = Value;
    v62 = CFDictionaryGetValue(theDict, @"FBPAIK_MediaSelectionArray");
    if (v62)
    {
      v62 = CFRetain(v62);
    }

    *(v3 + 400) = v62;
    goto LABEL_73;
  }

  FigBytePumpGetFigBaseObject(*(v3 + 312));
  if (!*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    goto LABEL_78;
  }

  v56 = OUTLINED_FUNCTION_501();
  v58 = v57(v56);
  if (v58 == -12783)
  {
    v63 = *(v3 + 312);
    v64 = *(*(CMBaseObjectGetVTable() + 16) + 64);
    if (v64)
    {
      v4 = v64(v63);
      goto LABEL_76;
    }

    goto LABEL_78;
  }

  v8 = v58;
  if (!v58)
  {
LABEL_73:
    v4 = dworch_selectAlternates_gotAlternates(v1);
    goto LABEL_76;
  }

LABEL_79:
  v68 = 0;
  if (cf)
  {
    CFRelease(cf);
  }

  if (theDict)
  {
    CFRelease(theDict);
  }

  if (v70)
  {
    CFRelease(v70);
  }

  if (v67)
  {
    CFRelease(v67);
  }

LABEL_87:
  if (v0)
  {
    *v0 = 0;
  }

  return v8;
}

void dworch_selectAlternates_gotAccessToDestinationURLCallback(const void *a1, int a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = CFGetTypeID(a1);
  if (v7 != FigAssetDownloaderGetTypeID() || (*(DerivedStorage + 576) = a3, CMBaseObjectGetDerivedStorage(), FigRetainProxyIsInvalidated()) || a2 && !a3)
  {
    OUTLINED_FUNCTION_303();
    IsRegisteredForDownload = FigSignalErrorAtGM();
LABEL_9:
    v9 = IsRegisteredForDownload;
    goto LABEL_10;
  }

  if (*(DerivedStorage + 556) == 1 || *(DerivedStorage + 560))
  {
    IsRegisteredForDownload = dworch_ensureAssetIsRegisteredForDownload(a1);
    if (!IsRegisteredForDownload)
    {
      IsRegisteredForDownload = dworch_selectAlternates_proceedAfterCheckingDestinationURL();
    }

    goto LABEL_9;
  }

  v9 = 0;
LABEL_10:
  dworch_relinquishAccessToDestinationURLIfNotDownloadingOrNotLoadingMetadataOrPausedForInteractivePlayback(a1);
  if (v9)
  {
    dworch_transitionToTerminalStateWithOSStatus(a1, v9);
  }

  OUTLINED_FUNCTION_652();
}

void dworch_transitionToTerminalState(const void *a1, void *a2)
{
  cf[16] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMBaseObjectGetDerivedStorage();
  if (FigRetainProxyIsInvalidated())
  {
    OUTLINED_FUNCTION_243();

    FigSignalErrorAtGM();
    return;
  }

  OUTLINED_FUNCTION_72_3();
  if (!v6 & v5)
  {
    return;
  }

  dworch_releaseDiskResources();
  dworch_relinquishAccessToDestinationURL(a1);
  v7 = CFAbsoluteTimeGetCurrent() - *(DerivedStorage + 648);
  v8 = _os_feature_enabled_impl();
  v9 = MEMORY[0x1E695E480];
  if (v8)
  {
    v10 = CMBaseObjectGetDerivedStorage();
    cf[0] = 0;
    v96 = 0;
    *v97 = 0;
    v11 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v11)
    {
      v12 = v11;
      v13 = OUTLINED_FUNCTION_60_4();
      if (v13)
      {
        v14 = *(v10 + 16);
        AllocatorForMedia = FigGetAllocatorForMedia();
        CMBaseObject = FigAssetGetCMBaseObject(v14);
        v17 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v17)
        {
          v17(CMBaseObject, @"assetProperty_InstanceUUID", AllocatorForMedia, v97);
        }

        v18 = FigAssetDownloaderGetCMBaseObject(*(v10 + 384));
        v19 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v19 && !v19(v18, @"AssetDownloaderProperty_DownloadedBytes", *MEMORY[0x1E695E480], &v96))
        {
          SInt64 = FigCFNumberGetSInt64();
          RecoverableErrorCount = FigMetricEventDownloadSummarySubscriberGetRecoverableErrorCount(*(v10 + 616));
          MediaResourceRequestCount = FigMetricEventDownloadSummarySubscriberGetMediaResourceRequestCount(*(v10 + 616));
          v23 = FigGetAllocatorForMedia();
          FigMetricDownloadSummaryEventCreate(v23, 0, *v97, a2, RecoverableErrorCount, MediaResourceRequestCount, SInt64, *(v10 + 368), v7, cf);
          if (a1)
          {
            v24 = CFRetain(a1);
          }

          else
          {
            v24 = 0;
          }

          *v13 = v24;
          v13[1] = v12;
          v25 = cf[0];
          if (cf[0])
          {
            v25 = CFRetain(cf[0]);
          }

          v13[10] = v25;
          dispatch_async_f(*(v10 + 296), v13, dworch_sendDidReceiveMetricEventOnCallbackQueue);
          goto LABEL_21;
        }

        goto LABEL_20;
      }

      OUTLINED_FUNCTION_5_8();
      if (FigSignalErrorAtGM())
      {
LABEL_20:
        CFRelease(v12);
        free(v13);
      }
    }

LABEL_21:
    if (*v97)
    {
      CFRelease(*v97);
    }

    v9 = MEMORY[0x1E695E480];
    if (v96)
    {
      CFRelease(v96);
    }

    if (cf[0])
    {
      CFRelease(cf[0]);
    }
  }

  v26 = &off_196E72000;
  if (a2)
  {
    Code = CFErrorGetCode(a2);
    if (dword_1EAF16DB8)
    {
      v28 = Code;
      LODWORD(v96) = 0;
      v29 = OUTLINED_FUNCTION_83_2();
      v30 = v96;
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v31 = v30;
      }

      else
      {
        v31 = v30 & 0xFFFFFFFE;
      }

      if (v31)
      {
        *v97 = 136315906;
        *&v97[4] = "dworch_transitionToTerminalState";
        OUTLINED_FUNCTION_42_4();
        v102 = 1024;
        LODWORD(v103) = v28;
        OUTLINED_FUNCTION_108();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_7();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v26 = &off_196E72000;
    }

    *(DerivedStorage + 556) = 4;
    v42 = *(DerivedStorage + 564);
    if (v42 != 2)
    {
      v43 = kDownloadOrchestratorStage_JumpTable[6 * v42 + 2];
      if (v43)
      {
        (v43)(a1);
      }
    }

    v44 = CMBaseObjectGetDerivedStorage();
    v45 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v45)
    {
      v38 = v45;
      v46 = OUTLINED_FUNCTION_60_4();
      if (v46)
      {
        v40 = v46;
        if (a1)
        {
          v47 = CFRetain(a1);
        }

        else
        {
          v47 = 0;
        }

        *v40 = v47;
        v40[1] = v38;
        v40[2] = CFRetain(a2);
        v48 = *(v44 + 296);
        v49 = dworch_sendDownloadFailedCallbackOnCallbackQueue;
LABEL_53:
        dispatch_async_f(v48, v40, v49);
        goto LABEL_54;
      }

LABEL_105:
      OUTLINED_FUNCTION_5_8();
      if (FigSignalErrorAtGM())
      {
        CFRelease(v38);
      }
    }
  }

  else
  {
    *(DerivedStorage + 556) = 3;
    if (*(CMBaseObjectGetDerivedStorage() + 72))
    {
      v32 = *v9;
      Current = CFAbsoluteTimeGetCurrent();
      v34 = CFDateCreate(v32, Current);
      if (v34)
      {
        v35 = v34;
        FigAssetDownloadStorageManagementSetDownloadCompletionDateForAssetAtURL();
        CFRelease(v35);
      }

      else
      {
        OUTLINED_FUNCTION_5_8();
        FigSignalErrorAtGM();
      }
    }

    v36 = CMBaseObjectGetDerivedStorage();
    v37 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v37)
    {
      v38 = v37;
      v39 = OUTLINED_FUNCTION_60_4();
      if (v39)
      {
        v40 = v39;
        if (a1)
        {
          v41 = CFRetain(a1);
        }

        else
        {
          v41 = 0;
        }

        *v40 = v41;
        v40[1] = v38;
        v48 = *(v36 + 296);
        v49 = dworch_sendDownloadSucceededCallbackOnCallbackQueue;
        goto LABEL_53;
      }

      goto LABEL_105;
    }
  }

LABEL_54:
  FigSymptomsReportStreamingAssetDownloadEnd((DerivedStorage + 656));
  uuid_clear((DerivedStorage + 656));
  if (dword_1EAF16DB8)
  {
    LODWORD(v96) = 0;
    v50 = OUTLINED_FUNCTION_83_2();
    v51 = os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT);
    if (OUTLINED_FUNCTION_115_1(v51))
    {
      v52 = *(DerivedStorage + 32);
      *v97 = *(v26 + 138);
      *&v97[4] = "dworch_transitionToTerminalState";
      v98 = 2048;
      v99 = a1;
      v100 = 2114;
      v101 = v52;
      v102 = 2048;
      v103 = v7;
      OUTLINED_FUNCTION_95_1();
      OUTLINED_FUNCTION_108();
      OUTLINED_FUNCTION_448();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_414();
  }

  if (*(DerivedStorage + 632) && *(*(CMBaseObjectGetVTable() + 16) + 56))
  {
    OUTLINED_FUNCTION_25_5();
    v55(v53, v54);
  }

  if (*(DerivedStorage + 632) && *(*(CMBaseObjectGetVTable() + 16) + 56))
  {
    OUTLINED_FUNCTION_25_5();
    v58(v56, v57);
  }

  v59 = *(DerivedStorage + 632);
  if (v59)
  {
    v60 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (v60)
    {
      v60(v59, 0x1F0B64618, 0x1F0B659F8, (v7 * 1000.0), 0);
    }
  }

  if (a2)
  {
    v61 = CMBaseObjectGetDerivedStorage();
    CFErrorGetDomain(a2);
    v62 = OUTLINED_FUNCTION_604();
    CFErrorCopyDescription(v62);
    v63 = OUTLINED_FUNCTION_200_1();
    v64 = CFErrorGetCode(v63);
    v65 = *(v61 + 632);
    if (v65)
    {
      v66 = v64;
      v67 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v67)
      {
        v67(v65, 0x1F0B64618, 0x1F0B39CB8, v66, 0);
      }

      if (*(v61 + 632))
      {
        if (*(*(CMBaseObjectGetVTable() + 16) + 48))
        {
          OUTLINED_FUNCTION_25_5();
          v70(v68, v69);
        }

        v71 = *(v61 + 632);
        if (v71)
        {
          v72 = *(*(CMBaseObjectGetVTable() + 16) + 48);
          if (v72)
          {
            v72(v71, 0x1F0B64618, 0x1F0B39FD8, v59, 0);
          }
        }
      }
    }

    v73 = *(v61 + 528);
    if (!v73)
    {
      goto LABEL_102;
    }

    if (FigAlternateGetResolution(v73) > 0.0 && v74 > 0.0)
    {
      v75 = *(v61 + 632);
      if (!v75)
      {
        goto LABEL_87;
      }

      if (*(*(CMBaseObjectGetVTable() + 16) + 56))
      {
        v76 = OUTLINED_FUNCTION_26_6();
        v77(v76);
      }

      v75 = *(v61 + 632);
      if (!v75)
      {
        goto LABEL_87;
      }

      if (*(*(CMBaseObjectGetVTable() + 16) + 56))
      {
        v78 = OUTLINED_FUNCTION_26_6();
        v79(v78);
      }
    }

    v75 = *(v61 + 632);
LABEL_87:
    FigAlternateGetVideoRangeString(*(v61 + 528));
    if (v75)
    {
      OUTLINED_FUNCTION_604();
      if (*(*(CMBaseObjectGetVTable() + 16) + 48))
      {
        OUTLINED_FUNCTION_25_5();
        v82(v80, v81);
      }
    }

    v83 = OUTLINED_FUNCTION_68_3();
    FigAlternateGetPeakBitRate(v83);
    if (v75 && *(*(CMBaseObjectGetVTable() + 16) + 56))
    {
      v84 = OUTLINED_FUNCTION_26_6();
      v85(v84);
    }

    v86 = OUTLINED_FUNCTION_68_3();
    FigAlternateGetAverageBitRate(v86);
    if (v75 && *(*(CMBaseObjectGetVTable() + 16) + 56))
    {
      v87 = OUTLINED_FUNCTION_26_6();
      v88(v87);
    }

    v89 = OUTLINED_FUNCTION_68_3();
    FigAlternateGetCodecString(v89);
    if (v75)
    {
      OUTLINED_FUNCTION_604();
      if (*(*(CMBaseObjectGetVTable() + 16) + 48))
      {
        OUTLINED_FUNCTION_25_5();
        v92(v90, v91);
      }
    }

    v93 = OUTLINED_FUNCTION_68_3();
    FigAlternateGetVideoQualityIndex(v93);
    if (v75 && *(*(CMBaseObjectGetVTable() + 16) + 56))
    {
      v94 = OUTLINED_FUNCTION_26_6();
      v95(v94);
    }

LABEL_102:
    dworch_issueReportingEvent(a1, 707);
    if (v59)
    {
      CFRelease(v59);
    }
  }
}

void dworch_selectAlternates_bytePumpFn(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, const void *a12)
{
  v22 = 0;
  v13 = dworch_copyAssetDownloaderFromRetainProxy(a2, &v22);
  v14 = v22;
  if (!v13)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v16 = malloc_type_calloc(1uLL, 0x18uLL, 0x102004093CA8EA1uLL);
    if (!v16)
    {
      OUTLINED_FUNCTION_429();
      FigSignalErrorAtGM();
      if (v14)
      {
        goto LABEL_11;
      }

LABEL_15:
      OUTLINED_FUNCTION_652();
      return;
    }

    v17 = v16;
    if (v14)
    {
      v18 = CFRetain(v14);
    }

    else
    {
      v18 = 0;
    }

    *v17 = v18;
    v17[2] = a4;
    if (a12)
    {
      v19 = CFRetain(a12);
    }

    else
    {
      v19 = 0;
    }

    *(v17 + 2) = v19;
    dispatch_async_f(*DerivedStorage, v17, dworch_selectAlternates_bytePumpFnOnQueue);
  }

  if (!v14)
  {
    goto LABEL_15;
  }

LABEL_11:
  OUTLINED_FUNCTION_652();

  CFRelease(v20);
}

uint64_t dworch_selectAlternates_gotAlternates(const void *a1)
{
  v166 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 416))
  {
    return 0;
  }

  v4 = DerivedStorage;
  *(DerivedStorage + 416) = 1;
  v5 = *(DerivedStorage + 392);
  if (!v5 || !CFArrayGetCount(v5))
  {
    v54 = CMBaseObjectGetDerivedStorage();
    if (dword_1EAF16DB8)
    {
      v55 = OUTLINED_FUNCTION_50_2();
      if (os_log_type_enabled(v55, type[0]))
      {
        v56 = values;
      }

      else
      {
        v56 = values & 0xFFFFFFFE;
      }

      if (v56)
      {
        *v156 = 136315650;
        OUTLINED_FUNCTION_10_12();
        OUTLINED_FUNCTION_108();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_7();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    *(v54 + 328) = 1;
    return dworch_selectAlternates_stageComplete(a1);
  }

  v149 = v1;
  v6 = *(v4 + 320);
  if (v6)
  {
    CFRelease(v6);
    *(v4 + 320) = 0;
  }

  v7 = FigAlternateSelectionBossCreate(*(v4 + 8), (v4 + 320));
  if (v7)
  {
    return v7;
  }

  v7 = FigAlternateSelectionBossInitializeAlternateList(*(v4 + 320), *(v4 + 392), *(v4 + 400), 0, 0);
  if (v7)
  {
    return v7;
  }

  v8 = *(v4 + 320);
  FigBytePumpGetFigBaseObject(*(v4 + 312));
  v10 = v9;
  v11 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v11)
  {
    return 4294954514;
  }

  v7 = v11(v10, 0x1F0B1F878, v8);
  if (v7)
  {
    return v7;
  }

  v12 = *(v4 + 56);
  v13 = CMBaseObjectGetDerivedStorage();
  v14 = v13;
  *&value = v13;
  if (!v12)
  {
    *type = 0;
    values = 0;
    CMBaseObjectGetDerivedStorage();
    if (FigRetainProxyIsInvalidated())
    {
      OUTLINED_FUNCTION_5_8();
    }

    else
    {
      CMBaseObjectGetDerivedStorage();
      OUTLINED_FUNCTION_54_4();
      if (!v59 && !*(v58 + 561) && !*(v58 + 560) || !*(v14 + 320))
      {
        v52 = 0;
        goto LABEL_93;
      }

      v60 = *(v14 + 40);
      if (v60)
      {
        v61 = CFArrayGetCount(v60) == 0;
      }

      else
      {
        v61 = 1;
      }

      v62 = *(v14 + 48);
      if (v62)
      {
        v63 = CFArrayGetCount(v62) == 0;
      }

      else
      {
        v63 = 1;
      }

      if (!v61)
      {
        goto LABEL_75;
      }

      OUTLINED_FUNCTION_33_5();
      SelectedMediaArrayForCriteria = FigAutomaticMediaSelectionCreateSelectedMediaArrayForCriteria(v64, v65, v66, v67, v68, 0, v69);
      if (SelectedMediaArrayForCriteria)
      {
LABEL_203:
        v52 = SelectedMediaArrayForCriteria;
        goto LABEL_93;
      }

      v71 = *(v14 + 40);
      if (v71)
      {
        CFRelease(v71);
        *(v14 + 40) = 0;
      }

      v72 = CFArrayCreate(*(v14 + 8), &values, 1, MEMORY[0x1E695E9C0]);
      *(v14 + 40) = v72;
      if (v72)
      {
        if (dword_1EAF16DB8)
        {
          v73 = OUTLINED_FUNCTION_49_3();
          if (os_log_type_enabled(v73, BYTE11(value)))
          {
            v74 = HIDWORD(value);
          }

          else
          {
            v74 = HIDWORD(value) & 0xFFFFFFFE;
          }

          if (v74)
          {
            v76 = *(value + 32);
            v75 = *(value + 40);
            if (v75)
            {
              LODWORD(v75) = CFArrayGetCount(v75);
            }

            *v156 = 136315906;
            *&v156[4] = "dworch_selectAlternates_evaluateMediaSelectionsFromCreationOptions";
            *&v156[12] = 2048;
            *&v156[14] = a1;
            *&v156[22] = 2114;
            v157 = v76;
            LOWORD(v158) = 1024;
            *(&v158 + 2) = v75;
            OUTLINED_FUNCTION_108();
            _os_log_send_and_compose_impl();
          }

          OUTLINED_FUNCTION_7();
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v14 = value;
        }

        if (v63)
        {
          v77 = *(v14 + 40);
          v78 = *(v14 + 48);
          *(v14 + 48) = v77;
          if (v77)
          {
            CFRetain(v77);
          }

          if (v78)
          {
            CFRelease(v78);
          }
        }

LABEL_75:
        v52 = dworch_selectAlternates_deduplicateSelectedMediaArrays(a1, *(v14 + 40), type);
        v79 = *type;
        if (!v52)
        {
          v80 = *(v14 + 40);
          *(v14 + 40) = *type;
          if (v79)
          {
            CFRetain(v79);
          }

          if (v80)
          {
            CFRelease(v80);
          }

          dworch_sendDidResolveMediaSelectionCallbackForSelectedMediaArray(a1, *(v14 + 40));
          v81 = *(v14 + 40);
          if (v81)
          {
            v82 = CFArrayGetCount(v81) == 0;
          }

          else
          {
            v82 = 1;
          }

          if (v82 && dword_1EAF16DB8)
          {
            v83 = OUTLINED_FUNCTION_49_3();
            if (os_log_type_enabled(v83, BYTE11(value)))
            {
              v84 = HIDWORD(value);
            }

            else
            {
              v84 = HIDWORD(value) & 0xFFFFFFFE;
            }

            if (v84)
            {
              *v156 = 136315650;
              OUTLINED_FUNCTION_10_12();
              OUTLINED_FUNCTION_108();
              _os_log_send_and_compose_impl();
            }

            OUTLINED_FUNCTION_7();
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }
        }

        if (v79)
        {
          CFRelease(v79);
        }

LABEL_93:
        if (values)
        {
          CFRelease(values);
        }

        if (v52)
        {
          return v52;
        }

        v85 = *(v4 + 40);
        if (!v85 || CFArrayGetCount(v85) <= 0)
        {
          OUTLINED_FUNCTION_5_8();
          return FigSignalErrorAtGM();
        }

        ValueAtIndex = CFArrayGetValueAtIndex(*(v4 + 40), 0);
        dworch_selectAlternates_getMediaSelectionForMediaType(ValueAtIndex);
        *(v4 + 168) = FigCFDictionaryGetValue();
        v87 = *(v4 + 8);
        v88 = *(v4 + 320);
        memcpy(cf, (v4 + 96), sizeof(cf));
        v7 = dworch_selectAlternates_chooseAlternatesFromCreationOptions(a1, v87, v88, cf, (v4 + 336), (v4 + 344));
        if (!v7)
        {
          if (*(v4 + 336) || *(v4 + 344))
          {
            v92 = CMBaseObjectGetDerivedStorage();
            v7 = dworch_setupDownloadItemsAndProgressMonitorForAlternate(a1, *(v92 + 336), *(v92 + 40));
            if (v7)
            {
              return v7;
            }

            v7 = dworch_setupDownloadItemsAndProgressMonitorForAlternate(a1, *(v92 + 344), *(v92 + 48));
            if (v7)
            {
              return v7;
            }

            if (*(v92 + 344))
            {
              v93 = 2;
            }

            else
            {
              v93 = 1;
            }

            v94 = *(v92 + 632);
            if (v94)
            {
              v95 = *(*(CMBaseObjectGetVTable() + 16) + 56);
              if (v95)
              {
                v95(v94, 0x1F0B64618, 0x1F0B39CF8, v93, 0);
              }
            }

            dworch_updateMediaSelectionsReportingKeys();
            dworch_updateAlternateInfoForReporting();
            *(v92 + 520) = *(v92 + 352);
            Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
            v97 = Mutable;
            v98 = *(v4 + 336);
            if (v98)
            {
              CFArrayAppendValue(Mutable, v98);
            }

            v99 = *(v4 + 344);
            if (v99)
            {
              CFArrayAppendValue(v97, v99);
            }

            dworch_sendWillDownloadAlternatesCallback(a1, v97);
            v52 = dworch_selectAlternates_stageComplete(a1);
            if (v97)
            {
              CFRelease(v97);
            }
          }

          else
          {
            if (dword_1EAF16DB8)
            {
              v89 = OUTLINED_FUNCTION_50_2();
              v90 = values;
              if (os_log_type_enabled(v89, type[0]))
              {
                v91 = v90;
              }

              else
              {
                v91 = v90 & 0xFFFFFFFE;
              }

              if (v91)
              {
                *v156 = 136315650;
                OUTLINED_FUNCTION_10_12();
                OUTLINED_FUNCTION_108();
                _os_log_send_and_compose_impl();
              }

              OUTLINED_FUNCTION_7();
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            return 4294950637;
          }

          return v52;
        }

        return v7;
      }

      OUTLINED_FUNCTION_5_8();
    }

    SelectedMediaArrayForCriteria = FigSignalErrorAtGM();
    goto LABEL_203;
  }

  v7 = FigStreamingAssetDownloadConfigCreate(*(v13 + 8), (v13 + 408));
  if (v7)
  {
    return v7;
  }

  v7 = dworch_selectAlternates_installDeviceCapabilityFilters(*(v14 + 8), *(v14 + 320));
  if (v7)
  {
    return v7;
  }

  v15 = CMBaseObjectGetDerivedStorage();
  cf[0] = 0;
  v16 = FigAlternateContinuousFramesOnlyFilterCreate(*(v15 + 8), cf);
  if (v16)
  {
    goto LABEL_125;
  }

  v16 = OUTLINED_FUNCTION_63_2(v16, v17, v18, v19, v20, v21, v22, v23, v146, v147, v148, v1, v150, v151, value, *(&value + 1), *type, values, *v156, *&v156[8], *&v156[16], v157, v158, v159, cf[0]);
  if (v16)
  {
    goto LABEL_125;
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
    cf[0] = 0;
  }

  v16 = FigAlternatePreferredVideoFormatFilterCreate(*(v15 + 8), 4, 8u, cf);
  if (v16)
  {
    goto LABEL_125;
  }

  v16 = OUTLINED_FUNCTION_63_2(v16, v24, v25, v26, v27, v28, v29, v30, v146, v147, v148, v149, v150, v151, value, *(&value + 1), *type, values, *v156, *&v156[8], *&v156[16], v157, v158, v159, cf[0]);
  if (v16)
  {
    goto LABEL_125;
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
    cf[0] = 0;
  }

  v16 = FigAlternateHighestRankingScoreFilterCreate(*(v15 + 8), cf);
  if (v16)
  {
    goto LABEL_125;
  }

  v16 = OUTLINED_FUNCTION_63_2(v16, v31, v32, v33, v34, v35, v36, v37, v146, v147, v148, v149, v150, v151, value, *(&value + 1), *type, values, *v156, *&v156[8], *&v156[16], v157, v158, v159, cf[0]);
  if (v16)
  {
    goto LABEL_125;
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
    cf[0] = 0;
  }

  v16 = FigAlternatePlaybackScoreAndBitRateFilterCreate(*(v15 + 8), cf);
  if (v16)
  {
    goto LABEL_125;
  }

  v16 = OUTLINED_FUNCTION_63_2(v16, v38, v39, v40, v41, v42, v43, v44, v146, v147, v148, v149, v150, v151, value, *(&value + 1), *type, values, *v156, *&v156[8], *&v156[16], v157, v158, v159, cf[0]);
  if (v16)
  {
    goto LABEL_125;
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
    cf[0] = 0;
  }

  v16 = FigAlternateFinalSelectionHighestPeakBitRateFilterCreate(*(v15 + 8), cf);
  if (v16)
  {
LABEL_125:
    v52 = v16;
    v53 = cf[0];
    goto LABEL_126;
  }

  v52 = OUTLINED_FUNCTION_63_2(v16, v45, v46, v47, v48, v49, v50, v51, v146, v147, v148, v149, v150, v151, value, *(&value + 1), *type, values, *v156, *&v156[8], *&v156[16], v157, v158, v159, cf[0]);
  v53 = cf[0];
  if (v52 || !cf[0])
  {
LABEL_126:
    if (!v53)
    {
      goto LABEL_128;
    }

    goto LABEL_127;
  }

  v52 = 0;
LABEL_127:
  CFRelease(v53);
LABEL_128:
  if (v52)
  {
    return v52;
  }

  v100 = *(v14 + 56);
  cf[0] = 0;
  *v156 = 0;
  v101 = FigStreamingAssetDownloadConfigCopyEnvironmentalConditionsForPrimary(v100, cf);
  if (v101)
  {
    goto LABEL_195;
  }

  if (cf[0])
  {
    Count = CFArrayGetCount(cf[0]);
    if (Count < 1)
    {
LABEL_136:
      v52 = 0;
      goto LABEL_137;
    }

    v103 = Count;
    v104 = 0;
    while (1)
    {
      v105 = CFArrayGetValueAtIndex(cf[0], v104);
      PrimaryContentConfig = FigStreamingAssetDownloadConfigGetPrimaryContentConfig(v100, v105);
      dworch_selectAlternates_evaluateAndCopyContentConfig(a1, PrimaryContentConfig, 0, 0, v156, v107, v108, v109, v146, v147, SHIDWORD(v147), v148, v149, v150, SWORD2(v150), SBYTE6(v150), HIBYTE(v150), v151, value, *type, values, *v156, *&v156[16], v157, v158, v159, cf[0], cf[1], cf[2], cf[3], cf[4], cf[5], cf[6], cf[7], cf[8], cf[9], cf[10], v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175);
      if (v101)
      {
        break;
      }

      v101 = FigStreamingAssetDownloadConfigSetPrimaryContentConfig(*(value + 408), *v156, v105);
      if (v101)
      {
        break;
      }

      if (v103 == ++v104)
      {
        goto LABEL_136;
      }
    }

LABEL_195:
    v52 = v101;
LABEL_137:
    v110 = value;
    if (cf[0])
    {
      CFRelease(cf[0]);
    }

    goto LABEL_140;
  }

  v52 = 0;
  v110 = value;
LABEL_140:
  if (*v156)
  {
    CFRelease(*v156);
  }

  if (!v52)
  {
    v111 = *(v110 + 56);
    cf[0] = 0;
    *v156 = 0;
    HIDWORD(v150) = FigStreamingAssetDownloadConfigGetOptimizesAuxiliaryContentConfigurations(v111);
    v112 = FigStreamingAssetDownloadConfigCopyEnvironmentalConditionsForAux(v111, cf);
    if (v112)
    {
      v52 = v112;
      v152 = a1;
LABEL_164:
      if (cf[0])
      {
        CFRelease(cf[0]);
      }

      a1 = v152;
      v110 = value;
    }

    else
    {
      if (cf[0])
      {
        v152 = a1;
        v113 = CFArrayGetCount(cf[0]);
        if (v113 < 1)
        {
LABEL_163:
          v52 = 0;
          goto LABEL_164;
        }

        v114 = v113;
        Alternate = 0;
        v116 = 0;
        while (1)
        {
          v117 = CFArrayGetValueAtIndex(cf[0], v116);
          AuxConfigs = FigStreamingAssetDownloadConfigGetAuxConfigs(v111, v117);
          if (!HIDWORD(v150))
          {
            goto LABEL_150;
          }

          v119 = FigStreamingAssetDownloadConfigGetPrimaryContentConfig(*(value + 408), v117);
          if (v119)
          {
            break;
          }

          Alternate = 0;
          if (AuxConfigs)
          {
LABEL_151:
            v120 = CFArrayGetCount(AuxConfigs);
            if (v120 >= 1)
            {
              v121 = v120;
              v122 = 0;
              do
              {
                v123 = OUTLINED_FUNCTION_177();
                v125 = CFArrayGetValueAtIndex(v123, v124);
                dworch_selectAlternates_evaluateAndCopyContentConfig(v152, v125, Alternate, 1, v156, v126, v127, v128, v146, v147, SHIDWORD(v147), v148, v149, v150, SWORD2(v150), SBYTE6(v150), HIBYTE(v150), v152, value, *type, values, *v156, *&v156[16], v157, v158, v159, cf[0], cf[1], cf[2], cf[3], cf[4], cf[5], cf[6], cf[7], cf[8], cf[9], cf[10], v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175);
                if (v129 != -16659)
                {
                  v52 = v129;
                  if (v129)
                  {
                    goto LABEL_164;
                  }

                  v130 = *v156;
                  v131 = FigStreamingAssetDownloadConfigAddAuxConfig(*(value + 408), *v156, v117);
                  if (v131)
                  {
                    v52 = v131;
                    goto LABEL_164;
                  }

                  if (v130)
                  {
                    CFRelease(v130);
                    *v156 = 0;
                  }
                }
              }

              while (v121 != ++v122);
            }
          }

LABEL_159:
          if (++v116 == v114)
          {
            goto LABEL_163;
          }
        }

        Alternate = FigStreamingAssetDownloadContentConfigGetAlternate(v119);
LABEL_150:
        if (AuxConfigs)
        {
          goto LABEL_151;
        }

        goto LABEL_159;
      }

      v52 = 0;
    }

    if (*v156)
    {
      CFRelease(*v156);
    }

    if (!v52)
    {
      v132 = *(v110 + 408);
      cf[0] = 0;
      if (!a1 || (v133 = CMBaseObjectGetDerivedStorage()) == 0 || !*(v133 + 232) || !@"kFigEnvironmentalCondition_DefaultKey" || !v132)
      {
        v145 = value;
        goto LABEL_192;
      }

      v134 = FigStreamingAssetDownloadConfigGetPrimaryContentConfig(v132, @"kFigEnvironmentalCondition_DefaultKey");
      if (v134 && (v135 = v134, FigStreamingAssetDownloadContentConfigGetMediaSelections(v134)))
      {
        v136 = *MEMORY[0x1E695E480];
        MediaSelections = FigStreamingAssetDownloadContentConfigGetMediaSelections(v135);
        MutableCopy = CFArrayCreateMutableCopy(v136, 0, MediaSelections);
      }

      else
      {
        MutableCopy = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
      }

      v139 = MutableCopy;
      if (!MutableCopy)
      {
        OUTLINED_FUNCTION_5_8();
        v52 = FigSignalErrorAtGM();
        v145 = value;
        if (v52)
        {
          return v52;
        }

        goto LABEL_192;
      }

      v140 = FigStreamingAssetDownloadConfigGetAuxConfigs(v132, @"kFigEnvironmentalCondition_DefaultKey");
      v141 = 0;
      if (!v140)
      {
        goto LABEL_183;
      }

LABEL_182:
      for (i = CFArrayGetCount(v140); v141 < i; i = 0)
      {
        v143 = FigCFArrayGetValueAtIndex();
        FigStreamingAssetDownloadContentConfigGetMediaSelections(v143);
        FigCFArrayAppendArray();
        ++v141;
        if (v140)
        {
          goto LABEL_182;
        }

LABEL_183:
        ;
      }

      v52 = dworch_selectAlternates_deduplicateSelectedMediaArrays(a1, v139, cf);
      v144 = cf[0];
      if (!v52)
      {
        dworch_sendDidResolveMediaSelectionCallbackForSelectedMediaArray(a1, cf[0]);
      }

      CFRelease(v139);
      v145 = value;
      if (v144)
      {
        CFRelease(v144);
      }

      if (!v52)
      {
LABEL_192:
        dworch_logDownloadConfig(a1, @"evaluated config: ", *(v145 + 408));
        return dworch_selectAlternates_stageComplete(a1);
      }
    }
  }

  return v52;
}

void dworch_selectAlternates_alternateListOrDurationChangedNote(uint64_t a1, const void *a2)
{
  theDict = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMBaseObjectGetDerivedStorage();
  if (FigRetainProxyIsInvalidated())
  {
    OUTLINED_FUNCTION_239();
    v14 = FigSignalErrorAtGM();
    if (!v14)
    {
      return;
    }

    goto LABEL_24;
  }

  if (!*(DerivedStorage + 564))
  {
    CMBaseObjectGetDerivedStorage();
    OUTLINED_FUNCTION_54_4();
    if (v9 || *(v4 + 561) || *(v4 + 560))
    {
      v5 = *(DerivedStorage + 312);
      if (v5)
      {
        FigBytePumpGetFigBaseObject(v5);
        v7 = v6;
        v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v8)
        {
          v9 = v8(v7, 0x1F0B1EE98, *MEMORY[0x1E695E480], &theDict) == -12783 || theDict == 0;
          if (!v9)
          {
            v10 = *(DerivedStorage + 392);
            if (v10)
            {
              CFRelease(v10);
              *(DerivedStorage + 392) = 0;
            }

            v11 = *(DerivedStorage + 400);
            if (v11)
            {
              CFRelease(v11);
              *(DerivedStorage + 400) = 0;
            }

            Value = CFDictionaryGetValue(theDict, @"FBPAIK_FigAlternateArray");
            if (Value)
            {
              Value = CFRetain(Value);
            }

            *(DerivedStorage + 392) = Value;
            v13 = CFDictionaryGetValue(theDict, @"FBPAIK_MediaSelectionArray");
            if (v13)
            {
              v13 = CFRetain(v13);
            }

            *(DerivedStorage + 400) = v13;
          }
        }

        v14 = dworch_selectAlternates_gotAlternates(a2);
        if (theDict)
        {
          CFRelease(theDict);
        }

        if (v14)
        {
LABEL_24:
          dworch_transitionToTerminalStateWithOSStatus(a2, v14);
        }
      }
    }
  }
}

void dworch_sendWillDownloadAlternatesCallback(const void *a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v5)
  {
    v6 = v5;
    v7 = OUTLINED_FUNCTION_11_13();
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
      v8[1] = v6;
      if (a2)
      {
        v10 = CFRetain(a2);
      }

      else
      {
        v10 = 0;
      }

      v8[9] = v10;
      v11 = *(DerivedStorage + 296);

      dispatch_async_f(v11, v8, dworch_sendWillDownloadAlternatesOnCallbackQueue);
    }

    else
    {
      OUTLINED_FUNCTION_429();
      if (FigSignalErrorAtGM())
      {

        CFRelease(v6);
      }
    }
  }
}

void dworch_selectAlternates_evaluateAndCopyContentConfig(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, CFTypeRef a12, const __CFArray *a13, int a14, __int16 a15, char a16, os_log_type_t type, CFTypeRef cf, __int128 value, uint64_t a20, uint64_t a21, __int128 a22, uint64_t context, __CFArray *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52)
{
  OUTLINED_FUNCTION_415();
  a51 = v52;
  a52 = v53;
  v55 = v54;
  v105 = v56;
  v58 = v57;
  v60 = v59;
  v62 = v61;
  a39 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  a12 = 0;
  CMBaseObjectGetDerivedStorage();
  cf = 0;
  a13 = 0;
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    OUTLINED_FUNCTION_243();
    v80 = 0;
    if (FigSignalErrorAtGM())
    {
      goto LABEL_26;
    }

    goto LABEL_19;
  }

  v65 = Mutable;
  MediaSelections = FigStreamingAssetDownloadContentConfigGetMediaSelections(v60);
  if (!MediaSelections)
  {
    goto LABEL_5;
  }

  v67 = MediaSelections;
  Count = CFArrayGetCount(MediaSelections);
  v69 = Count;
  if (Count >= 1)
  {
    v98 = 0;
    do
    {
      CFArrayGetValueAtIndex(v67, v98);
      OUTLINED_FUNCTION_33_5();
      FigAutomaticMediaSelectionCreateSelectedMediaArrayForCriteria(v99, v100, v101, v102, v103, 0, v104);
      CFArrayAppendValue(v65, cf);
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      ++v98;
    }

    while (v69 != v98);
    goto LABEL_48;
  }

  if (!Count)
  {
LABEL_5:
    MediaSelectionCriteria = FigStreamingAssetDownloadContentConfigGetMediaSelectionCriteria(v60);
    CMBaseObjectGetDerivedStorage();
    *&value = 0;
    if (MediaSelectionCriteria)
    {
      a25 = 0;
      a26 = 0;
      a27 = 0;
      context = v62;
      a24 = v65;
      CFDictionaryApplyFunction(MediaSelectionCriteria, dworch_selectUsingMediaSelectionCriteriaArrayForCharacteristic, &context);
      SelectedMediaArrayForCriteria = a27;
      v72 = a26 == 0;
      if (a27)
      {
        goto LABEL_14;
      }
    }

    else
    {
      SelectedMediaArrayForCriteria = 0;
      v72 = 1;
    }

    if (v72)
    {
      OUTLINED_FUNCTION_33_5();
      SelectedMediaArrayForCriteria = FigAutomaticMediaSelectionCreateSelectedMediaArrayForCriteria(v73, v74, v75, v76, v77, 0, v78);
      v79 = value;
      if (!SelectedMediaArrayForCriteria)
      {
        CFArrayAppendValue(v65, value);
        v79 = value;
      }

      if (v79)
      {
        CFRelease(v79);
      }
    }

LABEL_14:
    if (SelectedMediaArrayForCriteria)
    {
      v80 = 0;
      goto LABEL_16;
    }
  }

LABEL_48:
  SelectedMediaArrayForCriteria = dworch_selectAlternates_deduplicateSelectedMediaArrays(v62, v65, &a13);
  if (SelectedMediaArrayForCriteria)
  {
    v80 = 0;
  }

  else
  {
    v80 = a13;
  }

LABEL_16:
  CFRelease(v65);
  if (cf)
  {
    CFRelease(cf);
  }

  if (SelectedMediaArrayForCriteria)
  {
    goto LABEL_26;
  }

LABEL_19:
  FigCFArrayGetValueAtIndex();
  CMBaseObjectGetDerivedStorage();
  Alternate = FigStreamingAssetDownloadContentConfigGetAlternate(v60);
  if (Alternate)
  {
    v82 = CFRetain(Alternate);
    cf = v82;
    AlternateQualifiers = FigStreamingAssetDownloadContentConfigGetAlternateQualifiers(v60);
    if (v82)
    {
LABEL_21:
      if (!FigStreamingAssetDownloadContentConfigCreate(*(DerivedStorage + 8), &a12) && !FigStreamingAssetDownloadContentConfigSetAlternate(a12, v82) && !FigStreamingAssetDownloadContentConfigSetMediaSelections(a12, v80))
      {
        *v55 = a12;
        a12 = 0;
      }

      goto LABEL_25;
    }
  }

  else
  {
    cf = 0;
    AlternateQualifiers = FigStreamingAssetDownloadContentConfigGetAlternateQualifiers(v60);
  }

  v84 = AlternateQualifiers;
  if (v58)
  {
    v93 = OUTLINED_FUNCTION_78_2();
    v97 = dworch_selectAlternates_evaluateAndCopyAlternateWithQualifiers(v93, v94, v95, v58, v105, v96);
    v82 = cf;
    if (v97)
    {
LABEL_56:
      if (v82)
      {
LABEL_25:
        CFRelease(v82);
        goto LABEL_26;
      }

      goto LABEL_26;
    }

    if (cf)
    {
      goto LABEL_21;
    }
  }

  v85 = OUTLINED_FUNCTION_78_2();
  v89 = dworch_selectAlternates_evaluateAndCopyAlternateWithQualifiers(v85, v86, v87, 0, v105, v88);
  v82 = cf;
  if (v89)
  {
    goto LABEL_56;
  }

  if (cf)
  {
    goto LABEL_21;
  }

  if (dword_1EAF16DB8)
  {
    LODWORD(a13) = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v91 = a13;
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
    {
      v92 = v91;
    }

    else
    {
      v92 = v91 & 0xFFFFFFFE;
    }

    if (v92)
    {
      LODWORD(value) = 136315906;
      *(&value + 4) = "dworch_selectAlternates_evaluateAndCopyAlternate";
      OUTLINED_FUNCTION_42_4();
      LOWORD(a22) = 2112;
      *(&a22 + 2) = v84;
      OUTLINED_FUNCTION_95_1();
      OUTLINED_FUNCTION_108();
      OUTLINED_FUNCTION_128_0();
    }

    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_26:
  if (v80)
  {
    CFRelease(v80);
  }

  if (a12)
  {
    CFRelease(a12);
  }

  OUTLINED_FUNCTION_355();
}

uint64_t dworch_selectAlternates_deduplicateSelectedMediaArrays(uint64_t a1, const __CFArray *a2, CFTypeRef *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  theArray = a2;
  if (!a2)
  {
    return 0;
  }

  v6 = DerivedStorage;
  Mutable = CFDictionaryCreateMutable(*(DerivedStorage + 8), 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    theDict = CFDictionaryCreateMutable(*(v6 + 8), 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (theDict)
    {
      v7 = CFDictionaryCreateMutable(*(v6 + 8), 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (v7 && (v8 = CFArrayCreateMutable(*(v6 + 8), 0, MEMORY[0x1E695E9C0])) != 0)
      {
        v21 = a3;
        v22 = v8;
        Count = CFArrayGetCount(theArray);
        if (Count < 1)
        {
LABEL_18:
          v16 = v22;
          if (!CFArrayGetCount(v22))
          {
            v17 = CFArrayCreateMutable(*(v6 + 8), 0, MEMORY[0x1E695E9C0]);
            CFArrayAppendValue(v22, v17);
            if (v17)
            {
              CFRelease(v17);
            }
          }

          v18 = 0;
          v13 = 0;
          *v21 = CFRetain(v22);
        }

        else
        {
          v9 = 0;
          v23 = v6;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(theArray, v9);
            v11 = ValueAtIndex;
            v12 = ValueAtIndex ? CFArrayGetCount(ValueAtIndex) : 0;
            v13 = CFArrayCreateMutable(*(v6 + 8), 0, MEMORY[0x1E695E9C0]);
            if (!v13)
            {
              break;
            }

            if (v12 >= 1)
            {
              v26 = v9;
              v14 = 0;
              while (1)
              {
                v15 = CFArrayGetValueAtIndex(v11, v14);
                CFDictionaryGetValue(v15, @"MediaSelectionGroupMediaType");
                if (!FigCFStringGetOSTypeValue())
                {
                  goto LABEL_30;
                }

                CFDictionaryGetValue(v15, @"MediaSelectionOptionsPersistentID");
                if (v12 == ++v14)
                {
                  v6 = v23;
                  v9 = v26;
                  break;
                }
              }
            }

            CFRelease(v13);
            if (++v9 == Count)
            {
              goto LABEL_18;
            }
          }

LABEL_30:
          OUTLINED_FUNCTION_120();
          v18 = FigSignalErrorAtGM();
          v16 = v22;
        }
      }

      else
      {
        OUTLINED_FUNCTION_239();
        v18 = FigSignalErrorAtGM();
        v13 = 0;
        v16 = 0;
      }

      CFRelease(Mutable);
      CFRelease(theDict);
      if (v7)
      {
        CFRelease(v7);
      }

      if (v13)
      {
        CFRelease(v13);
      }

      if (!v16)
      {
        return v18;
      }

      v19 = v16;
    }

    else
    {
      OUTLINED_FUNCTION_239();
      v18 = FigSignalErrorAtGM();
      v19 = Mutable;
    }

    CFRelease(v19);
    return v18;
  }

  OUTLINED_FUNCTION_239();

  return FigSignalErrorAtGM();
}

void dworch_selectUsingMediaSelectionCriteriaArrayForCharacteristic(uint64_t a1, CFArrayRef theArray, uint64_t a3)
{
  if (!*(a3 + 32))
  {
    *(a3 + 16) = a1;
    CFArrayGetCount(theArray);
    v4 = OUTLINED_FUNCTION_265();

    CFArrayApplyFunction(v4, v5, v6, a3);
  }
}

uint64_t dworch_selectAlternates_evaluateAndCopyAlternateWithQualifiers(uint64_t a1, uint64_t a2, const __CFArray *a3, uint64_t a4, int a5, void *a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (!a2 && a5)
  {
    return 0;
  }

  if (a4)
  {
    PlaylistAlternateURL = FigAlternateGetPlaylistAlternateURL(a4);
    if (PlaylistAlternateURL)
    {
      v13 = FigAlternateAllowListWithURLFilterCreate(*(DerivedStorage + 8), PlaylistAlternateURL, 874, *(DerivedStorage + 584), &cf);
      if (v13)
      {
        goto LABEL_49;
      }

      v13 = OUTLINED_FUNCTION_62_2(v13, v14, v15, v16, v17, v18, v19, v20, v68, cf);
      if (v13)
      {
        goto LABEL_49;
      }

      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }
    }
  }

  MediaSelectionForMediaType = dworch_selectAlternates_getMediaSelectionForMediaType(a3);
  if (!MediaSelectionForMediaType)
  {
    v24 = 0;
    if (!a2)
    {
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  v22 = MediaSelectionForMediaType;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    v13 = FigSignalErrorAtGM();
LABEL_49:
    v66 = v13;
    goto LABEL_42;
  }

  v24 = Mutable;
  CFDictionarySetValue(Mutable, @"audioMediaSelection", v22);
  if (!a2)
  {
    goto LABEL_18;
  }

LABEL_14:
  OUTLINED_FUNCTION_66_3();
  v25 = FigAlternateMultipleAlternateQualifierFilterCreate();
  if (v25)
  {
    goto LABEL_45;
  }

  v25 = OUTLINED_FUNCTION_62_2(v25, v26, v27, v28, v29, v30, v31, v32, v68, cf);
  if (v25)
  {
    goto LABEL_45;
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

LABEL_18:
  if (a5)
  {
    v33 = OUTLINED_FUNCTION_66_3();
    v25 = FigAlternateMatchesAnyClientPredicateFilterCreate(v33, v34, v35, v36);
    if (v25)
    {
      goto LABEL_45;
    }

    v25 = OUTLINED_FUNCTION_62_2(v25, v37, v38, v39, v40, v41, v42, v43, v68, cf);
    if (v25)
    {
      goto LABEL_45;
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }
  }

  v25 = dworch_selectAlternates_chooseAppropriateAlternate(*(DerivedStorage + 320), a6);
  if (!v25)
  {
    v25 = FigAlternateSelectionBossRemoveFilter(*(DerivedStorage + 320), @"ClientPredicatesFilter");
    if (!v25)
    {
      v25 = FigAlternateSelectionBossRemoveFilter(*(DerivedStorage + 320), @"AllowListURLFilter");
      if (!v25)
      {
        v25 = FigAlternateSelectionBossRemoveFilter(*(DerivedStorage + 320), @"MatchesAnyClientPredicateFilter");
        if (!v25)
        {
          CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
          v25 = FigAlternateSuppressDoVi5StereoFilterCreate(*(DerivedStorage + 8), &cf);
          if (!v25)
          {
            v25 = OUTLINED_FUNCTION_62_2(v25, v45, v46, v47, v48, v49, v50, v51, v68, cf);
            if (!v25)
            {
              if (cf)
              {
                CFRelease(cf);
                cf = 0;
              }

              if (!CFPreferenceNumberWithDefault)
              {
LABEL_36:
                v25 = FigAlternateSuppressDoVi20MonoFilterCreate(*(DerivedStorage + 8), &cf);
                if (!v25)
                {
                  v66 = OUTLINED_FUNCTION_62_2(v25, v59, v60, v61, v62, v63, v64, v65, v69, cf);
                  if (!v66 && cf)
                  {
                    CFRelease(cf);
                    v66 = 0;
                    cf = 0;
                  }

                  if (!v24)
                  {
                    goto LABEL_42;
                  }

                  goto LABEL_41;
                }

                goto LABEL_45;
              }

              v25 = FigAlternateMediaValidationForStereoVideoFilterCreate(*(DerivedStorage + 8), &cf);
              if (!v25)
              {
                v25 = OUTLINED_FUNCTION_62_2(v25, v52, v53, v54, v55, v56, v57, v58, v69, cf);
                if (!v25)
                {
                  if (cf)
                  {
                    CFRelease(cf);
                    cf = 0;
                  }

                  goto LABEL_36;
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_45:
  v66 = v25;
  if (v24)
  {
LABEL_41:
    CFRelease(v24);
  }

LABEL_42:
  if (cf)
  {
    CFRelease(cf);
  }

  return v66;
}

uint64_t dworch_selectAlternates_chooseAppropriateAlternate(const void *a1, void *a2)
{
  theArray = 0;
  FigAlternateSelectionLogNextFilterOperation();
  v4 = FigAlternateSelectionBossApplyFilters(a1);
  if (v4)
  {
    return v4;
  }

  v5 = FigAlternateSelectionBossCopyProperty(a1, @"FilteredAlternateList", *MEMORY[0x1E695E480], &theArray);
  ValueAtIndex = theArray;
  if (!v5)
  {
    if (theArray)
    {
      if (CFArrayGetCount(theArray) < 1)
      {
        ValueAtIndex = 0;
      }

      else
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
        if (ValueAtIndex)
        {
          ValueAtIndex = CFRetain(ValueAtIndex);
        }
      }
    }

    *a2 = ValueAtIndex;
    ValueAtIndex = theArray;
  }

  if (ValueAtIndex)
  {
    CFRelease(ValueAtIndex);
  }

  return v5;
}

uint64_t dworch_setupDownloadItemsAndProgressMonitorForAlternate(uint64_t a1, const void *a2, const __CFArray *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = 0;
  v7 = 0;
  if (a2 && a3)
  {
    v8 = DerivedStorage;
    CFArrayAppendValue(*(DerivedStorage + 368), a2);
    Count = CFArrayGetCount(a3);
    if (Count < 1)
    {
LABEL_15:
      v7 = 0;
      v6 = 0;
    }

    else
    {
      v10 = Count;
      v11 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a3, v11);
        v7 = malloc_type_calloc(1uLL, 0x20uLL, 0xE00401043B4FBuLL);
        if (v7)
        {
          v7[2] = CFRetain(a2);
          v13 = ValueAtIndex ? CFRetain(ValueAtIndex) : 0;
          v7[3] = v13;
        }

        else
        {
          v16 = FigSignalErrorAtGM();
          if (v16)
          {
            v6 = v16;
            v7 = 0;
            goto LABEL_16;
          }
        }

        v14 = FigStreamingAssetProgressMonitorRegisterAlternateAndMediaSelections(*(v8 + 384), a2, ValueAtIndex);
        if (v14)
        {
          break;
        }

        v15 = *(v8 + 360);
        *v7 = 0;
        v7[1] = v15;
        *v15 = v7;
        *(v8 + 360) = v7;
        if (v10 == ++v11)
        {
          goto LABEL_15;
        }
      }

      v6 = v14;
    }
  }

LABEL_16:
  dworch_freeAlternateAndRenditionItem(v7);
  return v6;
}

uint64_t dworch_ensureAssetIsRegisteredForDownload(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = 0;
  if (!*(CMBaseObjectGetDerivedStorage() + 576) || *(DerivedStorage + 562))
  {
    return 0;
  }

  result = FigAssetDownloadCoordinatorRegisterAssetForDownloader(*(DerivedStorage + 16), a1, *(DerivedStorage + 24), *(DerivedStorage + 72), 0, &v4);
  if (!result)
  {
    *(DerivedStorage + 561) = v4;
    *(DerivedStorage + 562) = 1;
  }

  return result;
}

uint64_t dworch_downloadMetadata_proceedAfterCheckingDestinationURL(uint64_t a1)
{
  v79[16] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CMBaseObjectGetDerivedStorage();
  v70[0] = 1;
  v70[1] = dworch_downloadMetadata_downloadSuccededCallback;
  v70[2] = dworch_downloadMetadata_downloadFailedCallback;
  memset(&v70[3], 0, 24);
  v70[6] = dworch_downloadMetadata_didFinishLoadingMetadata;
  v70[7] = 0;
  v70[8] = 0;
  v70[9] = dworch_downloadMetadata_didFinishLoadingPlaylistsCallback;
  v70[10] = 0;
  v70[11] = 0;
  if (*(v3 + 432))
  {
LABEL_60:
    if (*(DerivedStorage + 561) || !*(CMBaseObjectGetDerivedStorage() + 576))
    {
      v57 = dworch_ensureTemporaryMetadataOnlyStreamingCache(a1);
      if (v57)
      {
        return v57;
      }
    }

    else
    {
      v57 = dworch_ensurePersistentStreamingCache(a1);
      if (v57)
      {
        return v57;
      }

      v58 = *(DerivedStorage + 304);
      if (v58)
      {
        v59 = *(DerivedStorage + 480);
        if (v59)
        {
          v57 = FigStreamingCacheTransferData(v58, v59);
          if (v57)
          {
            return v57;
          }
        }
      }
    }

    FigAssetDownloaderGetCMBaseObject(*(DerivedStorage + 432));
    if (!*(*(CMBaseObjectGetVTable() + 8) + 56))
    {
      return 4294954514;
    }

    v60 = OUTLINED_FUNCTION_308();
    v57 = v61(v60);
    if (!v57)
    {
      v62 = *(DerivedStorage + 432);
      v63 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v63)
      {
        return v63(v62);
      }

      return 4294954514;
    }

    return v57;
  }

  v4 = v3;
  v5 = CMBaseObjectGetDerivedStorage();
  Mutable = CFDictionaryCreateMutable(*(v5 + 8), 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v7 = Mutable;
  if (Mutable)
  {
    v8 = MEMORY[0x1E695E4D0];
    if (*(v5 + 178))
    {
      CFDictionarySetValue(Mutable, @"AssetDownloaderCreateOption_DisallowsExpensiveNetworkAccess", *MEMORY[0x1E695E4D0]);
    }

    if (*(v5 + 179))
    {
      CFDictionarySetValue(v7, @"AssetDownloaderCreateOption_DisallowsConstrainedNetworkAccess", *v8);
    }

    v9 = *(v5 + 32);
    if (v9)
    {
      CFDictionarySetValue(v7, @"AssetDownloaderCreateOption_DebugIdentifier", v9);
    }

    if (*(v5 + 442))
    {
      CFDictionarySetValue(v7, @"AssetDownloaderCreateOption_DownloadsInterstitialAssets", *v8);
    }
  }

  else
  {
    v57 = FigSignalErrorAtGM();
    if (v57)
    {
      return v57;
    }
  }

  v10 = FigStreamingAssetMetadataDownloaderCreate(*MEMORY[0x1E695E480], *(v4 + 16), v7, *(v4 + 56), a1, *v4, v70, (v4 + 432));
  if (v10)
  {
    goto LABEL_56;
  }

  if (dword_1EAF16DB8)
  {
    OUTLINED_FUNCTION_147();
    v11 = OUTLINED_FUNCTION_126();
    v19 = OUTLINED_FUNCTION_34_5(v11, v12, v13, v14, v15, v16, v17, v18, v65, v66, v67, v69, SBYTE2(v69), BYTE3(v69), SHIDWORD(v69));
    if (OUTLINED_FUNCTION_16_1(v19))
    {
      v20 = *(v4 + 32);
      v21 = *(v4 + 432);
      v71 = 136315906;
      v72 = "dworch_downloadMetadata_ensureAndSetupMetadataDownloader";
      v73 = 2048;
      v74 = a1;
      v75 = 2114;
      v76 = v20;
      v77 = 2048;
      v78 = v21;
      OUTLINED_FUNCTION_95_1();
      OUTLINED_FUNCTION_108();
      OUTLINED_FUNCTION_61_5();
      OUTLINED_FUNCTION_507();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_238_0();
  }

  v22 = *(v4 + 384);
  CMBaseObject = FigAssetDownloaderGetCMBaseObject(*(v4 + 432));
  v24 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v24)
  {
    goto LABEL_63;
  }

  v10 = v24(CMBaseObject, @"AssetDownloaderProperty_ProgressMonitor", v22);
  if (v10)
  {
    goto LABEL_56;
  }

  v25 = *(v4 + 608);
  v26 = FigAssetDownloaderGetCMBaseObject(*(v4 + 432));
  v27 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v27)
  {
    goto LABEL_63;
  }

  v10 = v27(v26, @"AssetDownloaderProperty_MetricEventTimeline", v25);
  if (v10)
  {
LABEL_56:
    v39 = v10;
    goto LABEL_57;
  }

  if (!*(v4 + 408))
  {
    goto LABEL_50;
  }

  v28 = CMBaseObjectGetDerivedStorage();
  if (*(v28 + 440))
  {
    goto LABEL_50;
  }

  v29 = v28;
  v30 = *(v28 + 408);
  v79[0] = 0;
  v31 = FigStreamingAssetDownloadConfigCopyEnvironmentalConditionsForPrimary(v30, v79);
  if (v31)
  {
    v39 = v31;
    goto LABEL_31;
  }

  if (v79[0])
  {
    Count = CFArrayGetCount(v79[0]);
    if (Count < 1)
    {
      v39 = 0;
    }

    else
    {
      v33 = Count;
      v34 = DerivedStorage;
      v35 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v79[0], v35);
        PrimaryContentConfig = FigStreamingAssetDownloadConfigGetPrimaryContentConfig(v30, ValueAtIndex);
        v38 = dworch_setupDownloadItemsForContentConfig(a1, PrimaryContentConfig);
        if (v38)
        {
          break;
        }

        if (v33 == ++v35)
        {
          v39 = 0;
          goto LABEL_29;
        }
      }

      v39 = v38;
LABEL_29:
      DerivedStorage = v34;
    }

LABEL_31:
    if (v79[0])
    {
      CFRelease(v79[0]);
    }

    if (v39)
    {
      goto LABEL_57;
    }
  }

  v40 = *(v29 + 408);
  v79[0] = 0;
  v41 = FigStreamingAssetDownloadConfigCopyEnvironmentalConditionsForAux(v40, v79);
  if (v41)
  {
    v39 = v41;
    goto LABEL_47;
  }

  if (v79[0])
  {
    v42 = CFArrayGetCount(v79[0]);
    if (v42 < 1)
    {
      v39 = 0;
    }

    else
    {
      v43 = v42;
      v68 = DerivedStorage;
      v44 = 0;
      while (1)
      {
        v45 = CFArrayGetValueAtIndex(v79[0], v44);
        AuxConfigs = FigStreamingAssetDownloadConfigGetAuxConfigs(v40, v45);
        if (AuxConfigs)
        {
          v47 = AuxConfigs;
          v48 = CFArrayGetCount(AuxConfigs);
          if (v48 >= 1)
          {
            break;
          }
        }

LABEL_43:
        if (++v44 == v43)
        {
          v39 = 0;
          DerivedStorage = v68;
          goto LABEL_47;
        }
      }

      v49 = v48;
      v50 = 0;
      while (1)
      {
        v51 = CFArrayGetValueAtIndex(v47, v50);
        v52 = dworch_setupDownloadItemsForContentConfig(a1, v51);
        if (v52)
        {
          break;
        }

        if (v49 == ++v50)
        {
          goto LABEL_43;
        }
      }

      v39 = v52;
      DerivedStorage = v68;
    }

LABEL_47:
    if (v79[0])
    {
      CFRelease(v79[0]);
    }

    if (!v39)
    {
      goto LABEL_50;
    }

LABEL_57:
    if (!v7)
    {
      goto LABEL_59;
    }

    goto LABEL_58;
  }

LABEL_50:
  v53 = (v4 + 352);
  while (1)
  {
    v53 = *v53;
    v54 = *(v4 + 432);
    if (!v53)
    {
      break;
    }

    v10 = FigStreamingAssetMetadataDownloaderConfigureMediaSelectionsForAlternate(v54, v53[2], v53[3]);
    if (v10)
    {
      goto LABEL_56;
    }
  }

  FigAssetDownloaderGetCMBaseObject(v54);
  if (*(*(CMBaseObjectGetVTable() + 8) + 56))
  {
    v55 = OUTLINED_FUNCTION_501();
    v10 = v56(v55);
    goto LABEL_56;
  }

LABEL_63:
  v39 = 4294954514;
  if (v7)
  {
LABEL_58:
    CFRelease(v7);
  }

LABEL_59:
  if (!v39)
  {
    goto LABEL_60;
  }

  return v39;
}

void dworch_downloadMetadata_didFinishLoadingPlaylistsCallback(uint64_t a1, const __CFArray *a2)
{
  value[16] = *MEMORY[0x1E69E9840];
  v111 = a1;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  theArray = 0;
  if (dword_1EAF16DB8)
  {
    OUTLINED_FUNCTION_76_4();
    v7 = OUTLINED_FUNCTION_43_4();
    v15 = OUTLINED_FUNCTION_85_2(v7, v8, v9, v10, v11, v12, v13, v14, object, v93, v94, v95, v96, v97, v99, v102, v103, v104, v105, v106, v107, v109, key, v111, theArray, v113, type[0], *&type[4], theDict);
    if (OUTLINED_FUNCTION_109_0(v15))
    {
      *cf = 136315906;
      *&cf[4] = "dworch_downloadMetadata_didFinishLoadingPlaylistsCallback";
      v117 = 2048;
      OUTLINED_FUNCTION_56_4();
      v121 = v16;
      v122 = a2;
      OUTLINED_FUNCTION_47_0();
      OUTLINED_FUNCTION_18_3();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_524();
  }

  if (!*(DerivedStorage + 561) && *(CMBaseObjectGetDerivedStorage() + 576))
  {
    if (!*(DerivedStorage + 480))
    {
      goto LABEL_135;
    }

    v17 = dworch_ensureTemporaryMetadataOnlyStreamingCache(v111);
    if (v17)
    {
      goto LABEL_136;
    }

    v17 = FigStreamingCacheTransferData(*(DerivedStorage + 480), *(DerivedStorage + 304));
    if (v17)
    {
      goto LABEL_136;
    }
  }

  if (!*(DerivedStorage + 304))
  {
LABEL_135:
    OUTLINED_FUNCTION_120();
    v17 = FigSignalErrorAtGM();
LABEL_136:
    v39 = v17;
    v38 = v111;
    goto LABEL_130;
  }

  if (!*(DerivedStorage + 442))
  {
    goto LABEL_36;
  }

  FigGetAllocatorForMedia();
  v18 = OUTLINED_FUNCTION_200_1();
  CMBaseObject = FigAssetDownloaderGetCMBaseObject(v18);
  v20 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v20)
  {
    v21 = v20(CMBaseObject, @"AssetDownloaderProperty_InterstitialURLs", v2, &theArray);
  }

  else
  {
    v21 = -12782;
  }

  if (dword_1EAF16DB8)
  {
    v22 = DerivedStorage;
    OUTLINED_FUNCTION_76_4();
    v23 = OUTLINED_FUNCTION_43_4();
    v24 = theDict;
    if (os_log_type_enabled(v23, type[0]))
    {
      v25 = v24;
    }

    else
    {
      v25 = v24 & 0xFFFFFFFE;
    }

    if (v25)
    {
      v26 = *(v22 + 32);
      v27 = theArray;
      if (theArray)
      {
        Count = CFArrayGetCount(theArray);
      }

      else
      {
        Count = 0;
      }

      *cf = 136316418;
      *&cf[4] = "dworch_downloadMetadata_didFinishLoadingPlaylistsCallback";
      v117 = 2048;
      v118 = v111;
      v119 = 2114;
      v120 = v26;
      v121 = 2048;
      v122 = v27;
      v123 = 1024;
      v124 = Count;
      v125 = 1024;
      v126 = v21;
      OUTLINED_FUNCTION_47_0();
      OUTLINED_FUNCTION_18_3();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_414();
    DerivedStorage = v22;
  }

  if (v21 || !theArray || CFArrayGetCount(theArray) < 1)
  {
LABEL_36:
    v38 = v111;
    v39 = dworch_downloadMetadata_stageComplete(v111);
    goto LABEL_130;
  }

  v98 = DerivedStorage;
  v29 = theArray;
  v30 = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF16DB8)
  {
    v32 = v30;
    OUTLINED_FUNCTION_76_4();
    v33 = OUTLINED_FUNCTION_43_4();
    v34 = theDict;
    if (os_log_type_enabled(v33, type[0]))
    {
      v35 = v34;
    }

    else
    {
      v35 = v34 & 0xFFFFFFFE;
    }

    if (v35)
    {
      v36 = *(v32 + 32);
      if (v29)
      {
        v37 = CFArrayGetCount(v29);
      }

      else
      {
        v37 = 0;
      }

      *cf = 136315906;
      *&cf[4] = "dworch_createDownloadOrchestratorsForInterstitialURLs";
      v117 = 2048;
      v118 = v111;
      v119 = 2114;
      v120 = v36;
      v121 = 1024;
      LODWORD(v122) = v37;
      OUTLINED_FUNCTION_47_0();
      OUTLINED_FUNCTION_108();
      OUTLINED_FUNCTION_128_0();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_238_0();
  }

  v40 = 0;
  v108 = *MEMORY[0x1E695E480];
  *&v31 = 136315906;
  *v100 = v31;
  v38 = v111;
  if (!v29)
  {
    goto LABEL_43;
  }

LABEL_42:
  for (i = CFArrayGetCount(v29); v40 < i; i = 0)
  {
    ValueAtIndex = FigCFArrayGetValueAtIndex();
    v43 = CMBaseObjectGetDerivedStorage();
    value[0] = 0;
    theDict = 0;
    *cf = 0;
    *type = 0;
    AllocatorForMedia = FigGetAllocatorForMedia();
    MutableCopy = CFDictionaryCreateMutableCopy(AllocatorForMedia, 0, *(v43 + 64));
    v46 = MutableCopy;
    if (!MutableCopy)
    {
      goto LABEL_72;
    }

    CFDictionaryRemoveValue(MutableCopy, @"AssetDownloaderCreateOption_DownloadsInterstitialAssets");
    v47 = FigGetAllocatorForMedia();
    if (FigStreamingAssetDownloadConfigCreate(v47, cf) || FigStreamingAssetDownloadConfigCopyContentConfigsWithOnlyQualifiers(*(v43 + 56), *cf))
    {
      OUTLINED_FUNCTION_120();
      FigSignalErrorAtGM();
LABEL_72:
      OUTLINED_FUNCTION_35_3();
      v56 = 0;
LABEL_73:
      v59 = -16650;
      goto LABEL_74;
    }

    if (FigCFDictionaryGetValueIfPresent())
    {
      if (!*type)
      {
        goto LABEL_56;
      }

      CFRetain(*type);
    }

    else
    {
      v48 = *(v43 + 56);
      if (v48)
      {
        v49 = FigStreamingAssetDownloadConfigCopyMediaSelectionCriteriaForInterstitials(v48);
        *type = v49;
        if (!v49)
        {
          goto LABEL_56;
        }

        goto LABEL_55;
      }
    }

    v49 = *type;
    if (!*type)
    {
      goto LABEL_56;
    }

LABEL_55:
    v50 = FigStreamingAssetDownloadConfigApplyMediaSelectionCriteriaToContentConfigs(*cf, v49);
    if (v50)
    {
      goto LABEL_112;
    }

LABEL_56:
    v51 = FigAssetGetCMBaseObject(*(v43 + 16));
    v52 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v52)
    {
      goto LABEL_72;
    }

    v50 = v52(v51, @"assetProperty_CreationOptionsDictionary", v108, &theDict);
    if (v50)
    {
LABEL_112:
      v59 = v50;
      OUTLINED_FUNCTION_35_3();
      v56 = 0;
      goto LABEL_74;
    }

    v53 = theDict;
    v54 = FigGetAllocatorForMedia();
    if (v53)
    {
      Mutable = CFDictionaryCreateMutableCopy(v54, 0, theDict);
    }

    else
    {
      Mutable = CFDictionaryCreateMutable(v54, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    }

    v56 = Mutable;
    if (!Mutable || (v57 = FigAssetGetCMBaseObject(*(v43 + 16)), (v58 = *(*(CMBaseObjectGetVTable() + 8) + 48)) == 0))
    {
      OUTLINED_FUNCTION_35_3();
      goto LABEL_73;
    }

    v59 = v58(v57, @"assetProperty_CustomURLLoader", v108, value);
    if (v59)
    {
      OUTLINED_FUNCTION_35_3();
      if (v61)
      {
        goto LABEL_69;
      }
    }

    else
    {
      if (value[0])
      {
        CFDictionarySetValue(v56, @"assetOption_CustomURLLoader", value[0]);
      }

      v60 = *(v43 + 384);
      if (v60)
      {
        CFDictionarySetValue(v46, @"AssetDownloaderCreateOption_ProgressMonitor", v60);
      }

      v4 = *cf;
      *cf = 0;
      v43 = v56;
      v3 = v46;
      v61 = value[0];
      v46 = 0;
      v56 = 0;
      if (value[0])
      {
LABEL_69:
        CFRelease(v61);
      }
    }

LABEL_74:
    if (theDict)
    {
      CFRelease(theDict);
    }

    if (*type)
    {
      CFRelease(*type);
    }

    if (v46)
    {
      CFRelease(v46);
    }

    if (v56)
    {
      CFRelease(v56);
    }

    v38 = v111;
    if (*cf)
    {
      CFRelease(*cf);
    }

    if (v59)
    {
LABEL_116:
      if (v4)
      {
        CFRelease(v4);
      }

      if (v3)
      {
        CFRelease(v3);
      }

      if (v43)
      {
        CFRelease(v43);
      }

      break;
    }

    v62 = CMBaseObjectGetDerivedStorage();
    *type = 0;
    theDict = 0;
    CFArrayGetCount(*(v62 + 448));
    v63 = OUTLINED_FUNCTION_312();
    if (CFArrayContainsValue(v63, v128, ValueAtIndex))
    {
      goto LABEL_86;
    }

    v65 = FigGetAllocatorForMedia();
    if (FigAssetCreateWithURL(v65, ValueAtIndex, 0, v43, &theDict) || (objecta = *v62, OUTLINED_FUNCTION_33_5(), FigStreamingAssetDownloadOrchestratorCreate(v66, v67, v68, v69, v70, v3, v4, v111, objecta, dworch_createDownloadOrchestratorForInterstitialURL_kStreamingAssetDownloadOrchestratorInterstititialCallbacks, type)))
    {
      v64 = 0;
    }

    else
    {
      if (*type)
      {
        if (dword_1EAF16DB8)
        {
          HIDWORD(v113) = 0;
          BYTE3(v113) = 0;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v72 = HIDWORD(v113);
          if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, BYTE3(v113)))
          {
            v73 = v72;
          }

          else
          {
            v73 = v72 & 0xFFFFFFFE;
          }

          if (v73)
          {
            *cf = v100[0];
            *&cf[4] = "dworch_createDownloadOrchestratorForInterstitialURL";
            v117 = 2048;
            OUTLINED_FUNCTION_56_4();
            v121 = v74;
            v122 = v75;
            OUTLINED_FUNCTION_47_0();
            OUTLINED_FUNCTION_108();
            _os_log_send_and_compose_impl();
          }

          OUTLINED_FUNCTION_7();
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v38 = v111;
        }

        CFArrayAppendValue(*(v62 + 448), ValueAtIndex);
        CFArrayAppendValue(*(v62 + 456), *type);
LABEL_86:
        v64 = 1;
        goto LABEL_90;
      }

      OUTLINED_FUNCTION_120();
      v64 = FigSignalErrorAtGM() == 0;
    }

LABEL_90:
    if (*type)
    {
      CFRelease(*type);
    }

    if (theDict)
    {
      CFRelease(theDict);
    }

    if (!v64)
    {
      goto LABEL_116;
    }

    if (v43)
    {
      CFRelease(v43);
    }

    if (v3)
    {
      CFRelease(v3);
    }

    if (v4)
    {
      CFRelease(v4);
    }

    ++v40;
    if (v29)
    {
      goto LABEL_42;
    }

LABEL_43:
    ;
  }

  v76 = v98;
  v77 = CFArrayGetCount(*(v98 + 456));
  if (dword_1EAF16DB8)
  {
    OUTLINED_FUNCTION_76_4();
    v78 = OUTLINED_FUNCTION_43_4();
    v86 = OUTLINED_FUNCTION_85_2(v78, v79, v80, v81, v82, v83, v84, v85, object, v93, v94, v95, v96, v98, v100[0], v100[1], 0x1F0B605F8, @"assetOption_CustomURLLoader", @"assetProperty_CustomURLLoader", @"assetProperty_CreationOptionsDictionary", v108, @"AssetDownloaderCreateOption_InterstitialMediaSelectionCriteria", @"AssetDownloaderCreateOption_DownloadsInterstitialAssets", v111, theArray, v113, type[0], *&type[4], theDict);
    if (OUTLINED_FUNCTION_109_0(v86))
    {
      v87 = *(v76 + 32);
      *cf = v101;
      *&cf[4] = "dworch_downloadMetadata_didFinishLoadingPlaylistsCallback";
      v117 = 2048;
      v118 = v38;
      v119 = 2114;
      v120 = v87;
      v121 = 1024;
      LODWORD(v122) = v77;
      OUTLINED_FUNCTION_47_0();
      OUTLINED_FUNCTION_18_3();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_524();
  }

  if (v77 >= 1)
  {
    for (j = 0; j != v77; ++j)
    {
      v89 = CFArrayGetValueAtIndex(*(v76 + 456), j);
      v90 = CMBaseObjectGetDerivedStorage();
      value[0] = v89;
      value[1] = 0;
      dispatch_sync_f(*v90, value, dworch_loadMetadataDispatch);
    }
  }

  v39 = 0;
LABEL_130:
  if (theArray)
  {
    CFRelease(theArray);
  }

  if (v39)
  {
    dworch_transitionToTerminalStateWithOSStatus(v38, v39);
  }
}

uint64_t dworch_downloadMetadata_stageComplete(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = DerivedStorage;
  if (!*(DerivedStorage + 24))
  {
    *(DerivedStorage + 443) = 1;
    if (dword_1EAF16DB8)
    {
      v13 = OUTLINED_FUNCTION_5_24();
      v21 = OUTLINED_FUNCTION_116_0(v13, v14, v15, v16, v17, v18, v19, v20, v26, v27, v28, v29, SBYTE2(v29), BYTE3(v29), SHIDWORD(v29));
      if (OUTLINED_FUNCTION_109_0(v21))
      {
        OUTLINED_FUNCTION_6_21();
        OUTLINED_FUNCTION_0_40();
        OUTLINED_FUNCTION_18_3();
        OUTLINED_FUNCTION_329_0();
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_524();
    }

    return 0;
  }

  *(DerivedStorage + 443) = 0;
  *(DerivedStorage + 441) = *(DerivedStorage + 480) != 0;
  if (dword_1EAF16DB8)
  {
    v4 = OUTLINED_FUNCTION_5_24();
    v12 = OUTLINED_FUNCTION_116_0(v4, v5, v6, v7, v8, v9, v10, v11, v26, v27, v28, v29, SBYTE2(v29), BYTE3(v29), SHIDWORD(v29));
    if (OUTLINED_FUNCTION_109_0(v12))
    {
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_18_3();
      OUTLINED_FUNCTION_329_0();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_524();
  }

  if (*(v3 + 442) && (v22 = *(v3 + 456)) != 0 && CFArrayGetCount(v22) > 0 || !*(v3 + 441))
  {
    v23 = a1;
    v24 = 2;
  }

  else
  {
    v23 = a1;
    v24 = 3;
  }

  result = dworch_changeStageOnQueue(v23, v24);
  if (!result)
  {
    return 0;
  }

  return result;
}

uint64_t dworch_persistMetadata_stageComplete(const void *a1)
{
  CMBaseObjectGetDerivedStorage();
  if (dword_1EAF16DB8)
  {
    OUTLINED_FUNCTION_147();
    v2 = OUTLINED_FUNCTION_126();
    v10 = OUTLINED_FUNCTION_311(v2, v3, v4, v5, v6, v7, v8, v9, v18, v19, v20, v21, SBYTE2(v21), BYTE3(v21), SHIDWORD(v21));
    if (OUTLINED_FUNCTION_115_1(v10))
    {
      OUTLINED_FUNCTION_6_21();
      OUTLINED_FUNCTION_0_40();
      OUTLINED_FUNCTION_9_13();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_414();
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v12 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v12)
  {
    v13 = v12;
    v14 = OUTLINED_FUNCTION_11_13();
    if (v14)
    {
      v15 = v14;
      if (a1)
      {
        v16 = CFRetain(a1);
      }

      else
      {
        v16 = 0;
      }

      *v15 = v16;
      v15[1] = v13;
      dispatch_async_f(*(DerivedStorage + 296), v15, dworch_sendDidPersistMetadataOnCallbackQueue);
    }

    else
    {
      OUTLINED_FUNCTION_303();
      if (FigSignalErrorAtGM())
      {
        CFRelease(v13);
      }
    }
  }

  return dworch_changeStageOnQueue(a1, 3u);
}

const void *dworch_ensureExtendedAttributesSetOnDestinationURL()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = DerivedStorage;
  v2 = *(DerivedStorage + 80);
  if (v2)
  {
    result = FigSetNameForAssetAtURL(*(DerivedStorage + 24), v2);
    if (result)
    {
      return result;
    }

    v4 = *(v1 + 80);
    if (v4)
    {
      CFRelease(v4);
      *(v1 + 80) = 0;
    }
  }

  v5 = *(v1 + 88);
  if (v5)
  {
    result = FigSetImageDataForAssetAtURL(*(v1 + 24), v5);
    if (result)
    {
      return result;
    }

    v6 = *(v1 + 88);
    if (v6)
    {
      CFRelease(v6);
      *(v1 + 88) = 0;
    }
  }

  if (!*(v1 + 72) || !*(v1 + 568))
  {
    return 0;
  }

  FigAssetDownloadStorageManagementSetContentTypeForAssetAtURL();
  FigAssetDownloadStorageManagementSetDownloadStartDateForAssetAtURL();
  result = *(v1 + 568);
  if (result)
  {
    CFRelease(result);
    result = 0;
    *(v1 + 568) = 0;
  }

  return result;
}

uint64_t dworch_downloadMedia_matchMediaDownloaderToOrchestratorStatus(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 561))
  {
    v4 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (!v4)
    {
      return 4294954514;
    }

    result = v4(a2);
    if (result)
    {
      return result;
    }
  }

  v6 = *(DerivedStorage + 556);
  if (v6 == 5)
  {
    v9 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v9)
    {
      result = v9(a2);
      if (result)
      {
        return result;
      }

      goto LABEL_15;
    }

    return 4294954514;
  }

  if (v6 != 2)
  {
    if (v6 != 1)
    {
      goto LABEL_15;
    }

    v7 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v7)
    {
      result = v7(a2);
      if (result)
      {
        return result;
      }

      goto LABEL_15;
    }

    return 4294954514;
  }

  v8 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v8)
  {
    return 4294954514;
  }

  result = v8(a2);
  if (result)
  {
    return result;
  }

LABEL_15:
  if (*(DerivedStorage + 561))
  {
    return 0;
  }

  v10 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v10)
  {
    return 4294954514;
  }

  return v10(a2);
}

uint64_t dworch_setLastTimestampClientDidPauseOnContentSteeringMonitor(uint64_t a1, uint64_t a2)
{
  valuePtr = a2;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 424))
  {
    return 0;
  }

  v3 = DerivedStorage;
  v4 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &valuePtr);
  if (v4)
  {
    v5 = v4;
    v6 = *(v3 + 424);
    v7 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v7)
    {
      v8 = v7(v6, @"AlternateFilterMonitorProperty_LastTimestampClientDidPause", v5);
    }

    else
    {
      v8 = 4294954514;
    }

    CFRelease(v5);
  }

  else
  {
    OUTLINED_FUNCTION_303();
    return FigSignalErrorAtGM();
  }

  return v8;
}

void dworch_pauseForPlaybackDispatch(uint64_t a1)
{
  v3 = *a1;
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_200_1();
  CMBaseObjectGetDerivedStorage();
  if (FigRetainProxyIsInvalidated())
  {
    OUTLINED_FUNCTION_243();
    FigSignalErrorAtGM();
LABEL_14:
    LODWORD(TimestampClientDidPauseOnContentSteeringMonitor) = 0;
    goto LABEL_12;
  }

  if (dword_1EAF16DB8)
  {
    OUTLINED_FUNCTION_147();
    v4 = OUTLINED_FUNCTION_126();
    v12 = OUTLINED_FUNCTION_64_4(v4, v5, v6, v7, v8, v9, v10, v11, v19, v20, v21, v22, SBYTE2(v22), HIBYTE(v22));
    if (OUTLINED_FUNCTION_115_1(v12))
    {
      OUTLINED_FUNCTION_139();
      OUTLINED_FUNCTION_0_40();
      OUTLINED_FUNCTION_9_13();
      OUTLINED_FUNCTION_448();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_414();
  }

  OUTLINED_FUNCTION_72_3();
  if (!v14 & v13)
  {
    goto LABEL_14;
  }

  *(v1 + 561) = 1;
  v15 = *(v1 + 564);
  if (v15 != 2)
  {
    v16 = kDownloadOrchestratorStage_JumpTable[6 * v15 + 3];
    if (v16)
    {
      v17 = (v16)(v3);
      if (v17)
      {
        TimestampClientDidPauseOnContentSteeringMonitor = v17;
        goto LABEL_11;
      }
    }
  }

  TimestampClientDidPauseOnContentSteeringMonitor = dworch_setLastTimestampClientDidPauseOnContentSteeringMonitor(v3, 0x8000000000000000);
  if (TimestampClientDidPauseOnContentSteeringMonitor)
  {
LABEL_11:
    dworch_transitionToTerminalStateWithOSStatus(*a1, TimestampClientDidPauseOnContentSteeringMonitor);
  }

LABEL_12:
  *(a1 + 8) = TimestampClientDidPauseOnContentSteeringMonitor;
}

void dworch_copyNextTrimmedLogFromString()
{
  OUTLINED_FUNCTION_187();
  Length = CFStringGetLength(v2);
  v4 = Length - v0;
  if (Length - v0 >= 1)
  {
    v10.location = 0;
    v10.length = 0;
    v5 = Length - v0;
    if (v4 >= 0x385)
    {
      v5 = 900;
      v11.location = v0;
      v11.length = 900;
      if (CFStringFindWithOptions(v1, @"\n", v11, 0, &v10))
      {
        v6 = v0 + 900;
        do
        {
          location = v10.location;
          if (v6 <= v10.length + v10.location)
          {
            break;
          }

          v12.location = v10.length + v10.location;
          v12.length = v6 - (v10.length + v10.location);
        }

        while (CFStringFindWithOptions(v1, @"\n", v12, 0, &v10));
        if (location - v0 >= v4)
        {
          v8 = v4;
        }

        else
        {
          v8 = location - v0;
        }

        if (location - v0 <= 0)
        {
          v5 = v4;
        }

        else
        {
          v5 = v8;
        }
      }
    }

    v9 = CFGetAllocator(v1);
    v13.location = v0;
    v13.length = v5;
    CFStringCreateWithSubstring(v9, v1, v13);
  }

  OUTLINED_FUNCTION_652();
}

uint64_t FigStreamingAssetDownloadOrchestratorCreate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigStreamingAssetDownloadOrchestratorCreate_cold_2(uint64_t a1, BOOL *a2)
{
  result = FigSignalErrorAtGM();
  *a2 = result != 0;
  return result;
}

__CFError *FigStreamingAssetDownloadOrchestratorCreate_cold_3(uint64_t a1, uint64_t *a2, const __CFDictionary *a3)
{
  *(a1 + 640) = FigGetCFPreferenceNumberWithDefault();
  *(a1 + 624) = FigDebugIsInternalBuild();
  if (*a2 && *(*(CMBaseObjectGetVTable() + 16) + 48))
  {
    v6 = OUTLINED_FUNCTION_14_10();
    v7(v6);
  }

  if (*a2 && *(*(CMBaseObjectGetVTable() + 16) + 56))
  {
    v8 = OUTLINED_FUNCTION_14_10();
    v9(v8);
  }

  if (*a2 && *(*(CMBaseObjectGetVTable() + 16) + 56))
  {
    v10 = OUTLINED_FUNCTION_14_10();
    v11(v10);
  }

  if (*a2 && *(*(CMBaseObjectGetVTable() + 16) + 56))
  {
    v12 = OUTLINED_FUNCTION_14_10();
    v13(v12);
  }

  if (*a2 && *(*(CMBaseObjectGetVTable() + 16) + 56))
  {
    v14 = OUTLINED_FUNCTION_14_10();
    v15(v14);
  }

  if (*(a1 + 96))
  {
    if (*a2 && *(*(CMBaseObjectGetVTable() + 16) + 56))
    {
      v16 = OUTLINED_FUNCTION_67_3();
      v17(v16);
    }

    if (*a2 && *(*(CMBaseObjectGetVTable() + 16) + 56))
    {
      v18 = OUTLINED_FUNCTION_67_3();
      v19(v18);
    }
  }

  if (*(a1 + 120))
  {
    v20 = *a2;
    if (*a2)
    {
      v21 = *(a1 + 128);
      v22 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v22)
      {
        v22(v20, 0x1F0B64618, 0x1F0B39BD8, v21, 0);
      }
    }
  }

  result = CFDictionaryGetValue(a3, @"AssetDownloaderCreateOption_RetryError");
  if (result)
  {
    v24 = result;
    v25 = *a2;
    Code = CFErrorGetCode(result);
    if (v25)
    {
      v27 = Code;
      v28 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v28)
      {
        v28(v25, 0x1F0B64618, 0x1F0B3A038, v27, 0);
      }
    }

    v29 = *a2;
    result = CFErrorGetDomain(v24);
    if (v29)
    {
      OUTLINED_FUNCTION_200_1();
      VTable = CMBaseObjectGetVTable();
      v31 = *(VTable + 16);
      result = (VTable + 16);
      if (*(v31 + 48))
      {
        v32 = OUTLINED_FUNCTION_177();
        return v33(v32);
      }
    }
  }

  return result;
}

uint64_t FigStreamingAssetDownloadOrchestratorCreate_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigStreamingAssetDownloadOrchestratorCreate_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigStreamingAssetDownloadOrchestratorCreate_cold_6(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigStreamingAssetDownloadOrchestratorCreate_cold_7(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigStreamingAssetDownloadOrchestratorCreate_cold_8(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigStreamingAssetDownloadOrchestratorCreate_cold_9(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigStreamingAssetDownloadOrchestratorCreate_cold_10(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigStreamingAssetDownloadOrchestratorCreate_cold_11(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t dworch_selectAlternates_chooseAlternatesFromCreationOptions_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t dworch_downloadMedia_downloadSucceededCallback_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void dworch_downloadMedia_downloadSucceededCallback_cold_2(uint64_t a1, const void *a2, const void *a3, _DWORD *a4)
{
  v8 = 0;
  while (1)
  {
    Count = *(a1 + 24);
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    if (v8 >= Count)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 24), v8);
    v11 = dworch_sendDidChangeLoadedTimeRangeCallback(a2, ValueAtIndex, *(a1 + 24), a3, *(a1 + 40));
    ++v8;
    if (v11)
    {
      goto LABEL_8;
    }
  }

  v11 = 0;
LABEL_8:
  *a4 = v11;
  CFRelease(a3);
}

uint64_t dworch_downloadMedia_downloadSucceededCallback_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t dworch_downloadMedia_downloadSucceededCallback_cold_4(const void *a1, _DWORD *a2)
{
  v4 = FigSignalErrorAtGM();
  *a2 = v4;
  if (!v4)
  {
    return 1;
  }

  CFRelease(a1);
  return 0;
}

uint64_t dworch_downloadMedia_downloadSucceededCallback_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t dworch_downloadMedia_downloadSucceededCallback_cold_6(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t dworch_downloadMedia_checkIfStageComplete_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t dworch_downloadMedia_startNextMediaSelectionDownload_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t dworch_start_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t dworch_downloadMedia_start_cold_2()
{
  OUTLINED_FUNCTION_48_4();
  if (*(CMBaseObjectGetDerivedStorage() + 576))
  {
    dworch_downloadMedia_gotAccessToDestinationURLCallback(v1, 0, *(v2 + 576));
    goto LABEL_3;
  }

  result = FigAssetDownloadCoordinatorScheduleAccessToURL(v1, *(v2 + 24), *v2, 0, dworch_downloadMedia_gotAccessToDestinationURLCallback);
  if (!result)
  {
LABEL_3:
    dworch_downloadMedia_symptomsReportStreamingAssetDownloadStart();
    dworch_issueReportingEvent(v1, 705);
    result = 0;
  }

  *v0 = result;
  return result;
}

uint64_t dworch_downloadMedia_pauseForInteractivePlayback_cold_1()
{
  OUTLINED_FUNCTION_187();
  v3 = *(v2 + 632);
  if (v3)
  {
    v4 = *(v1 + 561);
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (v5)
    {
      v5(v3, 0x1F0B64618, 0x1F0B39F98, v4, 0);
    }
  }

  FigSymptomsReportStreamingAssetDownloadPause((v1 + 656));

  return dworch_issueReportingEvent(v0, 704);
}

uint64_t dworch_copyAssetDownloaderFromRetainProxy_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t dworch_createStreamingCache_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t dworch_createStreamingCache_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t dworch_selectUsingMediaSelectionCriteria_cold_1(uint64_t a1)
{
  result = FigSignalErrorAtGM();
  if (result)
  {
    *(a1 + 32) = result;
  }

  return result;
}

void dworch_sendDidResolveMediaSelectionCallbackForSelectedMediaArray_cold_1(const void *a1)
{
  if (FigSignalErrorAtGM())
  {

    CFRelease(a1);
  }
}

void dworch_updateMediaSelectionsReportingKeys_cold_2(const void *a1)
{
  FigSignalErrorAtGM();

  CFRelease(a1);
}

void dworch_updateAlternateInfoForReporting_cold_1(const __CFAllocator *a1, uint64_t a2, __CFArray *a3, const void *a4)
{
  v10 = v9;
  v11 = a1;
  Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    OUTLINED_FUNCTION_3_26();
    OUTLINED_FUNCTION_44_5();
    v20 = 0;
    v16 = 0;
LABEL_102:
    OUTLINED_FUNCTION_120();
    FigSignalErrorAtGM();
    v99 = 0;
    goto LABEL_61;
  }

  v13 = OUTLINED_FUNCTION_265();
  v16 = CFArrayCreateMutable(v13, v14, v15);
  v103 = v16;
  if (!v16)
  {
    OUTLINED_FUNCTION_3_26();
    OUTLINED_FUNCTION_44_5();
    v20 = 0;
    goto LABEL_102;
  }

  v17 = OUTLINED_FUNCTION_265();
  v20 = CFArrayCreateMutable(v17, v18, v19);
  if (!v20)
  {
    OUTLINED_FUNCTION_3_26();
    OUTLINED_FUNCTION_44_5();
    goto LABEL_102;
  }

  v21 = OUTLINED_FUNCTION_265();
  v6 = CFArrayCreateMutable(v21, v22, v23);
  v102 = v6;
  if (!v6)
  {
    OUTLINED_FUNCTION_3_26();
    VideoQualityIndex = 0;
    v8 = 0;
    goto LABEL_102;
  }

  v24 = OUTLINED_FUNCTION_265();
  v8 = CFArrayCreateMutable(v24, v25, v26);
  if (!v8)
  {
    OUTLINED_FUNCTION_3_26();
    VideoQualityIndex = 0;
    goto LABEL_102;
  }

  v27 = OUTLINED_FUNCTION_265();
  VideoQualityIndex = CFArrayCreateMutable(v27, v28, v29);
  v107 = VideoQualityIndex;
  if (!VideoQualityIndex || (v30 = OUTLINED_FUNCTION_265(), (v33 = CFArrayCreateMutable(v30, v31, v32)) == 0))
  {
    OUTLINED_FUNCTION_3_26();
    goto LABEL_102;
  }

  v109 = v33;
  v34 = OUTLINED_FUNCTION_265();
  v106 = CFArrayCreateMutable(v34, v35, v36);
  if (!v106)
  {
    v10 = 0;
    v7 = 0;
    v5 = 0;
    v11 = 0;
    v108 = 0;
    goto LABEL_102;
  }

  v37 = OUTLINED_FUNCTION_265();
  v5 = CFArrayCreateMutable(v37, v38, v39);
  if (!v5)
  {
    v10 = 0;
    v7 = 0;
    v108 = 0;
LABEL_101:
    v11 = v106;
    goto LABEL_102;
  }

  v40 = OUTLINED_FUNCTION_265();
  v7 = CFArrayCreateMutable(v40, v41, v42);
  if (!v7)
  {
    v10 = 0;
    v108 = 0;
    goto LABEL_101;
  }

  v43 = OUTLINED_FUNCTION_265();
  v46 = CFArrayCreateMutable(v43, v44, v45);
  if (!v46)
  {
    v10 = 0;
    v108 = 0;
    goto LABEL_101;
  }

  v108 = v46;
  v47 = OUTLINED_FUNCTION_265();
  v10 = CFArrayCreateMutable(v47, v48, v49);
  if (!v10)
  {
    goto LABEL_101;
  }

  v50 = OUTLINED_FUNCTION_265();
  v53 = CFArrayCreateMutable(v50, v51, v52);
  if (!v53)
  {
    goto LABEL_101;
  }

  v98 = v5;
  v99 = v53;
  v104 = v8;
  v105 = v7;
  v96 = v10;
  theArray = v20;
  v54 = *(a2 + 352);
  if (v54)
  {
    v55 = 0;
    do
    {
      FigAlternateGetPeakBitRate(v54[2]);
      FigAlternateGetAverageBitRate(v54[2]);
      VideoRangeString = FigAlternateGetVideoRangeString(v54[2]);
      VideoQualityIndex = FigAlternateGetVideoQualityIndex(v54[2]);
      FigAlternateIsAudioOnly(v54[2]);
      FigAlternateGetResolution(v54[2]);
      CodecString = FigAlternateGetCodecString(v54[2]);
      FigAlternateHasBinauralAudio(v54[2]);
      FigAlternateGetMaxPlayableAudioChannelCount(v54[2]);
      FigAlternateHasLosslessAudio(v54[2]);
      BestAudioFormat = FigAlternateGetBestAudioFormat(v54[2]);
      StringFromAudioFormat = FigAlternateGetStringFromAudioFormat(BestAudioFormat);
      FigAlternateGetMaxAudioSampleRate(v54[2]);
      VideoLayoutString = FigAlternateGetVideoLayoutString(v54[2]);
      VideoContentTypeString = FigAlternateGetVideoContentTypeString(v54[2]);
      FigCFArrayAppendInt();
      FigCFArrayAppendInt();
      if (VideoRangeString)
      {
        CFArrayAppendValue(theArray, VideoRangeString);
      }

      v16 = v103;
      FigCFArrayAppendInt();
      v6 = v102;
      FigCFArrayAppendInt();
      FigCFArrayAppendInt();
      if (CodecString)
      {
        CFArrayAppendValue(a3, CodecString);
      }

      FigCFArrayAppendInt();
      FigCFArrayAppendInt();
      FigCFArrayAppendInt();
      if (StringFromAudioFormat)
      {
        CFArrayAppendValue(v98, StringFromAudioFormat);
      }

      FigCFArrayAppendInt();
      FigCFArrayAppendDouble();
      if (VideoLayoutString)
      {
        CFArrayAppendValue(v96, VideoLayoutString);
      }

      if (VideoContentTypeString)
      {
        CFArrayAppendValue(v99, VideoContentTypeString);
      }

      v54 = *v54;
      ++v55;
    }

    while (v54);
  }

  OUTLINED_FUNCTION_23_5();
  if (VideoQualityIndex)
  {
    v7 = v105;
    v20 = theArray;
    v5 = v98;
    v10 = v96;
    v8 = v104;
    if (*(*(CMBaseObjectGetVTable() + 16) + 56))
    {
      v62 = OUTLINED_FUNCTION_24_4();
      v63(v62);
    }

    OUTLINED_FUNCTION_23_5();
    v11 = v106;
    if (*(*(CMBaseObjectGetVTable() + 16) + 48))
    {
      v64 = OUTLINED_FUNCTION_24_4();
      v65(v64);
    }

    OUTLINED_FUNCTION_23_5();
    if (*(*(CMBaseObjectGetVTable() + 16) + 48))
    {
      v66 = OUTLINED_FUNCTION_24_4();
      v67(v66);
    }

    OUTLINED_FUNCTION_23_5();
    if (*(*(CMBaseObjectGetVTable() + 16) + 48))
    {
      v68 = OUTLINED_FUNCTION_24_4();
      v69(v68);
    }

    OUTLINED_FUNCTION_23_5();
    if (*(*(CMBaseObjectGetVTable() + 16) + 48))
    {
      v70 = OUTLINED_FUNCTION_24_4();
      v71(v70);
    }

    OUTLINED_FUNCTION_23_5();
    if (*(*(CMBaseObjectGetVTable() + 16) + 48))
    {
      v72 = OUTLINED_FUNCTION_24_4();
      v73(v72);
    }

    OUTLINED_FUNCTION_23_5();
    if (*(*(CMBaseObjectGetVTable() + 16) + 48))
    {
      v74 = OUTLINED_FUNCTION_24_4();
      v75(v74);
    }

    OUTLINED_FUNCTION_23_5();
    if (*(*(CMBaseObjectGetVTable() + 16) + 48))
    {
      v76 = OUTLINED_FUNCTION_24_4();
      v77(v76);
    }

    OUTLINED_FUNCTION_23_5();
    if (*(*(CMBaseObjectGetVTable() + 16) + 48))
    {
      v78 = OUTLINED_FUNCTION_24_4();
      v79(v78);
    }

    OUTLINED_FUNCTION_23_5();
    if (*(*(CMBaseObjectGetVTable() + 16) + 48))
    {
      v80 = OUTLINED_FUNCTION_24_4();
      v81(v80);
    }

    OUTLINED_FUNCTION_23_5();
    if (*(*(CMBaseObjectGetVTable() + 16) + 48))
    {
      v82 = OUTLINED_FUNCTION_24_4();
      v83(v82);
    }

    OUTLINED_FUNCTION_23_5();
    if (*(*(CMBaseObjectGetVTable() + 16) + 48))
    {
      v84 = OUTLINED_FUNCTION_24_4();
      v85(v84);
    }

    OUTLINED_FUNCTION_23_5();
    if (*(*(CMBaseObjectGetVTable() + 16) + 48))
    {
      v86 = OUTLINED_FUNCTION_24_4();
      v87(v86);
    }

    OUTLINED_FUNCTION_23_5();
    if (*(*(CMBaseObjectGetVTable() + 16) + 48))
    {
      v88 = OUTLINED_FUNCTION_24_4();
      v89(v88);
    }

    OUTLINED_FUNCTION_23_5();
    if (*(*(CMBaseObjectGetVTable() + 16) + 48))
    {
      v90 = OUTLINED_FUNCTION_24_4();
      v91(v90);
    }

    OUTLINED_FUNCTION_23_5();
    if (*(*(CMBaseObjectGetVTable() + 16) + 48))
    {
      v92 = OUTLINED_FUNCTION_24_4();
      v93(v92);
    }
  }

  else
  {
    v7 = v105;
    v20 = theArray;
    v5 = v98;
    v10 = v96;
    v8 = v104;
    v11 = v106;
  }

  VideoQualityIndex = v107;
LABEL_61:
  CFRelease(a3);
  CFRelease(a4);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (VideoQualityIndex)
  {
    CFRelease(VideoQualityIndex);
  }

  if (v109)
  {
    CFRelease(v109);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (v108)
  {
    CFRelease(v108);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v99)
  {
    OUTLINED_FUNCTION_88_3();

    CFRelease(v94);
  }

  else
  {
    OUTLINED_FUNCTION_88_3();
  }
}