uint64_t __fcks_remote_ensureClientEstablished_block_invoke_cold_1(uint64_t a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t fcks_remote_getObjectID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fcks_remote_getObjectID_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fcks_remote_getObjectID_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void fcks_remote_addChildSession_cold_1(uint64_t a1, const void *a2, _DWORD *a3)
{
  v5 = FigXPCMessageSetCFNumber();
  if (!v5)
  {
    v5 = FigXPCRemoteClientSendSyncMessage();
  }

  *a3 = v5;
  FigXPCRelease();
  CFRelease(a2);
}

uint64_t fcks_remote_addChildSession_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fcks_remote_addChildSession_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCaptionRendererCellStackLayoutRegionCreate(void *a1)
{
  *a1 = 0;
  *&v8 = 0;
  MEMORY[0x19A8D3660](&FigCaptionRendererCellStackLayoutRegionGetClassID_sRegisterFigCaptionRendererCellStackLayoutRegionBaseTypeOnce, RegisterFigCaptionRendererCellStackLayoutRegionBaseType);
  v2 = CMDerivedObjectCreate();
  if (!v2)
  {
    v3 = v8;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    FigGeometryDimensionMake();
    FigGeometryDimensionMake();
    FigGeometryPointMake();
    v5 = v8;
    *(DerivedStorage + 24) = v9;
    *(DerivedStorage + 8) = v5;
    v7 = 0;
    FigCaptionRendererStackLayoutRegionCreate(&v7);
    *DerivedStorage = v7;
    *a1 = v3;
  }

  return v2;
}

uint64_t FigCreateClosedCaptionRenderPipeline_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCreateClosedCaptionRenderPipeline_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCreateClosedCaptionRenderPipeline_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCreateClosedCaptionRenderPipeline_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figClosedCaptionRenderPipelineSetProperty()
{
  return FigSignalErrorAtGM();
}

{
  return FigSignalErrorAtGM();
}

{
  return FigSignalErrorAtGM();
}

uint64_t FigSubtitleSampleCreateFromPropertyListAndInsertInfoForRenderer(const __CFDictionary *a1, __CFDictionary **a2, _BYTE *a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  theDict = 0;
  v21 = 0;
  v13 = *(MEMORY[0x1E695F050] + 16);
  v20.origin = *MEMORY[0x1E695F050];
  v20.size = v13;
  v14 = FigSubtitleSampleCreateFromPropertyList(a1, &theDict, &v21 + 1, &v21, &v20);
  if (v14)
  {
    v18 = v14;
    v16 = 0;
    goto LABEL_9;
  }

  if (theDict)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, theDict);
    v16 = MutableCopy;
    if (MutableCopy)
    {
      inserted = FigSubtitleSampleInsertInfoForRenderer(MutableCopy, v20.origin.x, v20.origin.y, v20.size.width, v20.size.height, a4, a5, a6, a7, 0, v21);
      if (!inserted)
      {
        if (!a2)
        {
          goto LABEL_7;
        }

        goto LABEL_6;
      }
    }

    else
    {
      fig_log_get_emitter();
      inserted = FigSignalErrorAtGM();
    }

    v18 = inserted;
    goto LABEL_9;
  }

  v16 = 0;
  if (a2)
  {
LABEL_6:
    *a2 = v16;
    v16 = 0;
  }

LABEL_7:
  v18 = 0;
  if (a3)
  {
    *a3 = HIBYTE(v21);
  }

LABEL_9:
  if (theDict)
  {
    CFRelease(theDict);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  return v18;
}

uint64_t FigSubtitleSampleCreatePropertyList_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigSubtitleSampleCreateFromPropertyList_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigSubtitleSampleCreateFromPropertyList_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigSubtitleSampleInsertInfoForRenderer_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigSubtitleSampleInsertInfoForRenderer_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void digestSubtitleSampleDo(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  theDict = 0;
  v82 = 0;
  cf = 0;
  if (FigSubtitleSampleCreateFromPropertyListAndInsertInfoForRenderer(v2, &theDict, &v82, *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)))
  {
    goto LABEL_87;
  }

  if (!theDict)
  {
    goto LABEL_86;
  }

  value = 0;
  v3 = &kFigPlaybackItemProperty_IsAuthorizationRequired;
  if (CFDictionaryGetValueIfPresent(theDict, @"SubtitleSerializedCaptionGroup", &value))
  {
    if (FigCaptionSerializerCreateCaptionGroupFromCFData())
    {
      goto LABEL_87;
    }

    if (cf)
    {
      v4 = theDict;
      v92 = 0;
      v5 = *MEMORY[0x1E695E480];
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
      if (Mutable)
      {
        v7 = Mutable;
        v75 = v2;
        v77 = v1;
        memset(&v91, 0, sizeof(v91));
        CMTimeMake(&v91, 0, 0);
        memset(&v90, 0, sizeof(v90));
        CMTimeMake(&v90, 0, 0);
        v8 = CFDictionaryGetValue(v4, @"SubtitleTimeRange");
        if (v8)
        {
          v9 = v8;
          ValueAtIndex = CFArrayGetValueAtIndex(v8, 0);
          v11 = CFArrayGetValueAtIndex(v9, 1);
          memset(&v89, 0, sizeof(v89));
          CMTimeMakeFromDictionary(&v89, ValueAtIndex);
          memset(&v88, 0, sizeof(v88));
          CMTimeMakeFromDictionary(&v88, v11);
          v91 = v89;
          v90 = v88;
        }

        SliceCount = FigCaptionGroupGetSliceCount();
        v13 = CFDictionaryCreateMutable(v5, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (v13 && (v14 = CFDictionaryCreateMutable(v5, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8])) != 0)
        {
          v15 = v14;
          if (SliceCount >= 1)
          {
            for (i = 0; i != SliceCount; ++i)
            {
              CaptionData = FigCaptionGroupGetCaptionData();
              if (CaptionData)
              {
                v18 = CaptionData;
                if (v92)
                {
                  CFRelease(v92);
                  v92 = 0;
                }

                memset(&v89, 0, sizeof(v89));
                FigCaptionGroupGetDurationBeforeSlice();
                memset(&v88, 0, sizeof(v88));
                FigCaptionGroupGetDurationAfterSlice();
                v87 = v91;
                v86 = v90;
                valuePtr = v89;
                v84 = v88;
                FigCaptionDataToMarkupBasedAttributedString(v5, v18, &v87, &v86, &valuePtr, &v84, &v92, v13, v15);
                CFArrayAppendValue(v7, v92);
              }
            }
          }

          CFDictionarySetValue(v4, @"SubtitleContent", v7);
        }

        else
        {
          v15 = 0;
        }

        v2 = v75;
        if (v13)
        {
          CFRelease(v13);
        }

        if (v15)
        {
          CFRelease(v15);
        }

        v1 = v77;
        if (v92)
        {
          CFRelease(v92);
        }

        CFRelease(v7);
        v3 = &kFigPlaybackItemProperty_IsAuthorizationRequired;
      }
    }
  }

  v19 = *(v1 + 56);
  if (v19)
  {
    FigCaptionRendererLayoutContextSetSubtitleSample(v19, theDict);
  }

  v20 = CFDictionaryGetValue(theDict, @"SubtitleContentMetadata");
  if (v20)
  {
    v21 = CFDictionaryGetValue(v20, *MEMORY[0x1E6960A90]);
    Count = CFDictionaryGetCount(v21);
    if (Count >= 1)
    {
      v23 = Count;
      v76 = v2;
      v78 = v1;
      v24 = malloc_type_calloc(Count, 8uLL, 0xC0040B8AA526DuLL);
      v25 = malloc_type_calloc(v23, 8uLL, 0xC0040B8AA526DuLL);
      CFDictionaryGetKeysAndValues(v21, v24, v25);
      v26 = 0;
      v73 = *MEMORY[0x1E6960B18];
      key = *MEMORY[0x1E6960B00];
      v72 = *MEMORY[0x1E6960B08];
      do
      {
        v27 = v25[v26];
        if (v27)
        {
          v28 = CFGetTypeID(v27);
          if (v28 == CFDictionaryGetTypeID())
          {
            v29 = v24[v26];
            if (v29)
            {
              v30 = CFGetTypeID(v29);
              if (v30 == CFStringGetTypeID())
              {
                v31 = v24[v26];
                v32 = v25[v26];
                v91.value = 0;
                FigCaptionRendererStackLayoutRegionCreate(&v91);
                v90.value = 0;
                LODWORD(valuePtr.value) = 0;
                v89.value = 0;
                v88.value = 0;
                v87.value = 0;
                v86.value = 0;
                v33 = v91.value;
                FigCaptionRendererRegionProtocolGetProtocolID();
                v34 = OUTLINED_FUNCTION_2_9();
                if (v34)
                {
                  v35 = *(v34 + 16);
                  if (v35)
                  {
                    v36 = *(v35 + 8);
                    if (v36)
                    {
                      v36(v33, v31);
                    }
                  }
                }

                if (FigCFDictionaryGetCGFloatIfPresent())
                {
                  v37 = v91.value;
                  v38 = *&v90.value;
                  FigCaptionRendererRegionProtocolGetProtocolID();
                  v39 = OUTLINED_FUNCTION_2_9();
                  if (v39)
                  {
                    v40 = *(v39 + 16);
                    if (v40)
                    {
                      v41 = *(v40 + 24);
                      if (v41)
                      {
                        v41(v37, v38);
                      }
                    }
                  }

                  v42 = CFDictionaryGetValue(v32, key);
                  if (v42)
                  {
                    CFNumberGetValue(v42, kCFNumberIntType, &valuePtr);
                    v43 = v91.value;
                    value_low = LODWORD(valuePtr.value);
                    FigCaptionRendererRegionProtocolGetProtocolID();
                    v45 = OUTLINED_FUNCTION_2_9();
                    if (v45)
                    {
                      v46 = *(v45 + 16);
                      if (v46)
                      {
                        v47 = *(v46 + 40);
                        if (v47)
                        {
                          v47(v43, value_low);
                        }
                      }
                    }

                    if (CFDictionaryGetValue(v32, v73) && FigCFDictionaryGetCGFloatIfPresent() && FigCFDictionaryGetCGFloatIfPresent())
                    {
                      v48 = v91.value;
                      v49 = *&v89.value;
                      v50 = *&v88.value;
                      FigCaptionRendererRegionProtocolGetProtocolID();
                      v51 = OUTLINED_FUNCTION_2_9();
                      if (v51)
                      {
                        v52 = *(v51 + 16);
                        if (v52)
                        {
                          v53 = *(v52 + 72);
                          if (v53)
                          {
                            v53(v48, v49, 100.0 - v50);
                          }
                        }
                      }

                      if (CFDictionaryGetValue(v32, v72) && FigCFDictionaryGetCGFloatIfPresent() && FigCFDictionaryGetCGFloatIfPresent())
                      {
                        v54 = v91.value;
                        v55 = *&v87.value;
                        v56 = *&v86.value;
                        FigCaptionRendererRegionProtocolGetProtocolID();
                        v57 = OUTLINED_FUNCTION_2_9();
                        if (v57)
                        {
                          v58 = *(v57 + 16);
                          if (v58)
                          {
                            v59 = *(v58 + 56);
                            if (v59)
                            {
                              v59(v54, v55, v56);
                            }
                          }
                        }

                        v60 = *(v78 + 56);
                        if (v60)
                        {
                          FigCaptionRendererLayoutContextSetMapping(v60, v91.value, v32);
                        }

                        (*(v78 + 24))(v91.value, *(v78 + 32));
                      }
                    }
                  }
                }
              }
            }
          }
        }

        ++v26;
      }

      while (v23 != v26);
      free(v24);
      free(v25);
      v2 = v76;
      v1 = v78;
      v3 = &kFigPlaybackItemProperty_IsAuthorizationRequired;
    }
  }

  v79 = 0;
  v61 = CFDictionaryGetValue(theDict, @"SubtitleFormat");
  CFNumberGetValue(v61, kCFNumberSInt32Type, &v79);
  if (v79 == 1937142900 || v79 == 2004251764 || v79 == 2021028980)
  {
    v64 = 4;
  }

  else
  {
    v64 = 3;
  }

  v65 = CFDictionaryGetValue(theDict, v3[443]);
  if (v65)
  {
    v66 = v65;
    v67 = CFArrayGetCount(v65);
    if (v67)
    {
      v68 = v67;
      if (v67 >= 1)
      {
        for (j = 0; j != v68; ++j)
        {
          v70 = CFArrayGetValueAtIndex(v66, j);
          if (v70)
          {
            v71 = v70;
            if (CFAttributedStringGetLength(v70))
            {
              outputCueAsFigCaptionRendererCaption(v1, v64, v71, theDict);
            }
          }
        }
      }

      goto LABEL_87;
    }

LABEL_86:
    outputCueAsFigCaptionRendererCaption(v1, 5, 0, 0);
  }

LABEL_87:
  if (v2)
  {
    CFRelease(v2);
  }

  if (theDict)
  {
    CFRelease(theDict);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void outputCueAsFigCaptionRendererCaption(uint64_t a1, uint64_t a2, const void *a3, CFDictionaryRef theDict)
{
  cf[0] = 0;
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"kFigSubtitleRenderer_TextBox");
    v9 = CFDictionaryGetValue(theDict, @"SubtitleExtendedLanguageTag");
    CFDictionaryGetValue(theDict, @"kFigSubtitleRenderer_ObeySubtitleFormatting");
  }

  else
  {
    Value = 0;
    v9 = 0;
  }

  cf[1] = 0;
  cf[2] = 0;
  FigCaptionRendererCaptionCreate(cf);
  v10 = cf[0];
  FigCaptionRendererCaptionProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (ProtocolVTable)
  {
    v12 = *(ProtocolVTable + 16);
    if (v12)
    {
      v13 = *(v12 + 40);
      if (v13)
      {
        v13(v10, a2);
      }
    }
  }

  if (a2 == 5)
  {
    (*(a1 + 16))(cf[0], *(a1 + 32));
LABEL_10:
    Mutable = 0;
    goto LABEL_44;
  }

  if (!a3)
  {
    goto LABEL_10;
  }

  v15 = cf[0];
  FigCaptionRendererCaptionProtocolGetProtocolID();
  v16 = CMBaseObjectGetProtocolVTable();
  if (v16)
  {
    v17 = *(v16 + 16);
    if (v17)
    {
      v18 = *(v17 + 56);
      if (v18)
      {
        v18(v15, v9);
      }
    }
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v19 = cf[0];
  FigCaptionRendererCaptionProtocolGetProtocolID();
  v20 = CMBaseObjectGetProtocolVTable();
  if (v20)
  {
    v21 = *(v20 + 16);
    if (v21)
    {
      v22 = *(v21 + 8);
      if (v22)
      {
        v22(v19, Mutable);
      }
    }
  }

  v23 = OUTLINED_FUNCTION_0_11();
  Attribute = CFAttributedStringGetAttribute(v23, v24, v25, v26);
  if (Attribute)
  {
    CFDictionarySetValue(Mutable, @"region", Attribute);
  }

  if (Value)
  {
    CFDictionarySetValue(Mutable, @"textbox", Value);
  }

  if (a2 == 4)
  {
    v28 = *MEMORY[0x1E6960998];
    v29 = OUTLINED_FUNCTION_0_11();
    v32 = CFAttributedStringGetAttribute(v29, v30, v28, v31);
    if (v32)
    {
      OUTLINED_FUNCTION_1_10(v32);
    }

    v33 = *MEMORY[0x1E6960978];
    v34 = OUTLINED_FUNCTION_0_11();
    v37 = CFAttributedStringGetAttribute(v34, v35, v33, v36);
    if (v37)
    {
      OUTLINED_FUNCTION_1_10(v37);
    }

    v38 = *MEMORY[0x1E69608E0];
    v39 = OUTLINED_FUNCTION_0_11();
    v42 = CFAttributedStringGetAttribute(v39, v40, v38, v41);
    if (v42)
    {
      OUTLINED_FUNCTION_1_10(v42);
    }

    v43 = *MEMORY[0x1E69608D8];
    v44 = OUTLINED_FUNCTION_0_11();
    v47 = CFAttributedStringGetAttribute(v44, v45, v43, v46);
    if (v47)
    {
      OUTLINED_FUNCTION_1_10(v47);
    }

    v48 = *MEMORY[0x1E6960830];
    v49 = OUTLINED_FUNCTION_0_11();
    v52 = CFAttributedStringGetAttribute(v49, v50, v48, v51);
    if (v52)
    {
      OUTLINED_FUNCTION_1_10(v52);
    }

    v53 = *MEMORY[0x1E6960838];
    v54 = OUTLINED_FUNCTION_0_11();
    v57 = CFAttributedStringGetAttribute(v54, v55, v53, v56);
    if (v57)
    {
      OUTLINED_FUNCTION_1_10(v57);
    }
  }

  v58 = cf[0];
  FigCaptionRendererCaptionProtocolGetProtocolID();
  v59 = CMBaseObjectGetProtocolVTable();
  if (v59)
  {
    v60 = *(v59 + 16);
    if (v60)
    {
      v61 = *(v60 + 24);
      if (v61)
      {
        v61(v58, a3);
      }
    }
  }

  v62 = *(a1 + 56);
  if (v62)
  {
    FigCaptionRendererLayoutContextSetMapping(v62, cf[0], a3);
  }

  (*(a1 + 16))(cf[0], *(a1 + 32));
LABEL_44:
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

uint64_t FigCaptionRendererBasicInputCreate_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCaptionRendererBasicInputCreate_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigIFFPictureCollectionWriterCreateWithByteStream(const void *a1, const void *a2, const void *a3, const void *a4, CFTypeRef *a5)
{
  v6 = v5;
  v41 = 0;
  if (a1 && a2 && a5)
  {
    HIBYTE(v40) = 0;
    v12 = iffpcwGetWriteFileTypeOptions(a3, &v40 + 7, 0);
    if (v12)
    {
      return v12;
    }

    v13 = MovieSampleDataWriterCreate(a4, a2, 0, 0, HIBYTE(v40) != 0, 3u, &v41);
    v21 = OUTLINED_FUNCTION_6_7(v13, v14, v15, v16, v17, v18, v19, v20, v40, v41);
    if (!v5)
    {
      v22 = MovieSampleDataWriterSetDefaultByteStream(v21, a1);
      v30 = OUTLINED_FUNCTION_6_7(v22, v23, v24, v25, v26, v27, v28, v29, v40, v41);
      v31 = FigIFFPictureCollectionWriterCreateWithMovieSampleDataWriter(v30, a2, a3, a4, a5);
      v21 = OUTLINED_FUNCTION_6_7(v31, v32, v33, v34, v35, v36, v37, v38, v40, v41);
    }

    if (v21)
    {
      CFRelease(v21);
    }

    return v6;
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();

    return FigSignalErrorAtGM();
  }
}

uint64_t iffpcw_AppendHeader()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v1 = IFFItemHeaderMakerCopyGlobalMetadataAtomAsBlockBuffer(*(DerivedStorage + 32), *DerivedStorage, *(DerivedStorage + 16), &cf);
  if (v1)
  {
    appended = v1;
  }

  else
  {
    appended = MovieSampleDataWriterAppendHeader(*(DerivedStorage + 8), cf, 0);
    if (!appended)
    {
      MovieSampleDataWriterSynchronizeDefaultByteStream(*(DerivedStorage + 8), 0, 0);
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return appended;
}

size_t iffpcw_WriteHeaderToByteStream()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v16 = 0;
  v14 = 0;
  blockBufferOut = 0;
  v13 = 0;
  FigCFDictionaryGetBooleanIfPresent();
  appended = MovieSampleDataWriterPatchMediaDataAtomSizeIfNeeded(*(DerivedStorage + 8));
  if (!appended)
  {
    appended = CMBlockBufferCreateEmpty(*DerivedStorage, 0, 0, &blockBufferOut);
    if (!appended)
    {
      if (!*(DerivedStorage + 40) || (appended = MovieSampleDataWriterCopyFileTypeAtomAsBlockBuffer(*(DerivedStorage + 8), *DerivedStorage, &v14), !appended) && (OUTLINED_FUNCTION_496(), appended = CMBlockBufferAppendBufferReference(v2, v3, v4, v5, 0), !appended))
      {
        appended = IFFItemHeaderMakerCopyGlobalMetadataAtomAsBlockBuffer(*(DerivedStorage + 32), *DerivedStorage, *(DerivedStorage + 16), &v13);
        if (!appended)
        {
          OUTLINED_FUNCTION_496();
          appended = CMBlockBufferAppendBufferReference(v6, v7, v8, v9, 0);
          if (!appended)
          {
            DataLength = CMBlockBufferGetDataLength(blockBufferOut);
            appended = CMByteStreamWriteBlockBuffer();
            if (!appended)
            {
              if (DataLength)
              {
                fig_log_get_emitter();
                OUTLINED_FUNCTION_0_4();
                appended = FigSignalErrorAtGM();
              }

              else
              {
                appended = IFFItemHeaderMakerSetByteCountToAddToItemLocationExtentOffsets(*(DerivedStorage + 32), 0);
              }
            }
          }
        }
      }
    }
  }

  v11 = appended;
  if (v13)
  {
    CFRelease(v13);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  return v11;
}

void iffpcw_SetPictureProperty(uint64_t a1, int a2, uint64_t a3, const __CFDictionary *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a3)
  {
    if (!IFFInformationGetPictureByID(*(DerivedStorage + 24), a2) && FigCFEqual())
    {
      if (a4 && (v8 = CFGetTypeID(a4), v8 == CFDictionaryGetTypeID()))
      {
        IFFPictureSetStereoMetadataProperties(0, a4);
      }

      else
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0_4();
        FigSignalErrorAtGM();
      }
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();

    FigSignalErrorAtGM();
  }
}

void iffpcw_AddSampleBufferToPicture(uint64_t a1, int a2, const __CFDictionary *a3, opaqueCMSampleBuffer *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *v22 = 0;
  if (a4 && (v8 = DerivedStorage, (DataBuffer = CMSampleBufferGetDataBuffer(a4)) != 0))
  {
    v10 = DataBuffer;
    point = *MEMORY[0x1E695EFF8];
    v20 = 0;
    v19 = point;
    if (a3)
    {
      value = 0;
      if (CFDictionaryGetValueIfPresent(a3, @"TileGridPosition", &value))
      {
        v11 = CGPointMakeWithDictionaryRepresentation(value, &point);
      }

      else
      {
        v11 = 0;
      }

      if (FigCFDictionaryGetInt16IfPresent() && (dict = 0, CFDictionaryGetValueIfPresent(a3, @"OverlayItemOffset", &dict)))
      {
        v12 = CGPointMakeWithDictionaryRepresentation(dict, &v19);
        LODWORD(a3) = v12;
        if (v11 && v12)
        {
          goto LABEL_22;
        }
      }

      else
      {
        LODWORD(a3) = 0;
      }
    }

    else
    {
      v11 = 0;
    }

    FormatDescription = CMSampleBufferGetFormatDescription(a4);
    IFFInformationAddAndGetPictureItemFromPicture(*(v8 + 24), a2, v11, a3, v20, FormatDescription, v22, point.x, point.y, v19.x, v19.y);
    if (!v14)
    {
      *sizeArrayOut = 0u;
      v24 = 0u;
      NumSamples = CMSampleBufferGetNumSamples(a4);
      if (NumSamples >= 5)
      {
LABEL_22:
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0_4();
        FigSignalErrorAtGM();
        return;
      }

      v16 = NumSamples;
      if (!CMSampleBufferGetSampleSizeArray(a4, NumSamples, sizeArrayOut, 0))
      {
        iffpcwAppendPictureDataBlockBuffer(v8, *v22, v10, v16, sizeArrayOut);
      }
    }
  }

  else
  {
    fig_log_get_emitter();

    FigSignalErrorAtGM();
  }
}

uint64_t iffpcw_AddItemReference(uint64_t a1, int a2, const void *a3, int a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a3 || (v8 = DerivedStorage, v9 = CFGetTypeID(a3), v9 != CFArrayGetTypeID()))
  {
    v17 = 0;
LABEL_32:
    v16 = 4294949526;
    goto LABEL_30;
  }

  Count = CFArrayGetCount(a3);
  if (Count < 1)
  {
LABEL_20:
    v17 = 0;
    v16 = 0;
    goto LABEL_30;
  }

  v11 = Count;
  v24 = 0;
  ItemByID = IFFInformationGetItemByID(*(v8 + 24), a2);
  if (!ItemByID)
  {
    if (a4 == 1635088492)
    {
      if (*(v24 + 64) != 2)
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (a4 != 1953000802)
      {
        if (a4 != 1684630887)
        {
          if (a4 == 1667527523)
          {
            v13 = 0;
            for (i = 0; ; ++i)
            {
              v15 = *(v24 + 520);
              if (v15)
              {
                v15 = CFArrayGetCount(v15);
              }

              if (i >= v15 || v13)
              {
                break;
              }

              v13 = *FigCFArrayGetValueAtIndex() != 1667527523;
            }

            if (v13)
            {
              fig_log_get_emitter();
              OUTLINED_FUNCTION_1_4();
              FigSignalErrorAtGM();
              goto LABEL_20;
            }
          }

          goto LABEL_22;
        }

        goto LABEL_16;
      }

      if (*(v24 + 64) != 1)
      {
LABEL_16:
        fig_log_get_emitter();
        OUTLINED_FUNCTION_1_4();
        ItemByID = FigSignalErrorAtGM();
        goto LABEL_17;
      }
    }

LABEL_22:
    v17 = malloc_type_calloc(v11, 8uLL, 0x2004093837F09uLL);
    if (!v17)
    {
      v16 = 4294954450;
      goto LABEL_30;
    }

    v18 = 0;
    while (1)
    {
      v23 = 0;
      v22 = 0;
      if (!FigCFArrayGetInt32AtIndex())
      {
        goto LABEL_32;
      }

      PictureByID = IFFInformationGetPictureByID(*(v8 + 24), v22);
      if (PictureByID)
      {
        goto LABEL_29;
      }

      v21 = 0;
      PictureByID = IFFInformationGetPictureItem(v23, &v21);
      if (PictureByID)
      {
        goto LABEL_29;
      }

      v17[v18++] = v21;
      if (v11 == v18)
      {
        IFFInformationAddItemReference();
LABEL_29:
        v16 = PictureByID;
        goto LABEL_30;
      }
    }
  }

LABEL_17:
  v16 = ItemByID;
  v17 = 0;
LABEL_30:
  free(v17);
  return v16;
}

uint64_t iffpcw_AddExifToPictureWithIDOut(uint64_t a1, int a2, const __CFData *a3, unsigned int a4, uint64_t a5, _DWORD *a6)
{
  sourceBytes = a4;
  v13 = *CMBaseObjectGetDerivedStorage();
  destinationBuffer = 0;
  if (a5 || !a3 || CFDataGetLength(a3) <= a4)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();
    BlockBufferWithCFDataNoCopy = FigSignalErrorAtGM();
  }

  else
  {
    BlockBufferWithCFDataNoCopy = CMBlockBufferCreateWithMemoryBlock(v13, 0, 4uLL, v13, 0, 0, 4uLL, 1u, &destinationBuffer);
    if (!BlockBufferWithCFDataNoCopy)
    {
      sourceBytes = bswap32(a4);
      BlockBufferWithCFDataNoCopy = CMBlockBufferReplaceDataBytes(&sourceBytes, destinationBuffer, 0, 4uLL);
      if (!BlockBufferWithCFDataNoCopy)
      {
        OUTLINED_FUNCTION_496();
        BlockBufferWithCFDataNoCopy = FigCreateBlockBufferWithCFDataNoCopy();
        if (!BlockBufferWithCFDataNoCopy)
        {
          OUTLINED_FUNCTION_496();
          BlockBufferWithCFDataNoCopy = CMBlockBufferAppendBufferReference(v22, v23, v24, v25, 0);
          if (!BlockBufferWithCFDataNoCopy)
          {
            BlockBufferWithCFDataNoCopy = iffpcwAddGenericMetadataToPicture(a1, a2, 0, 0, destinationBuffer, 0, 0, 0, a6);
          }
        }
      }
    }
  }

  v26 = OUTLINED_FUNCTION_6_7(BlockBufferWithCFDataNoCopy, v15, v16, v17, v18, v19, v20, v21, blockBufferOut, 0);
  if (v26)
  {
    CFRelease(v26);
  }

  if (destinationBuffer)
  {
    CFRelease(destinationBuffer);
  }

  return v6;
}

void iffpcwAppendPictureDataBlockBuffer(uint64_t a1, uint64_t a2, CMBlockBufferRef theBuffer, unint64_t a4, uint64_t *a5)
{
  HIDWORD(v45) = 0;
  v43 = 0;
  v44 = 0;
  v41 = 0;
  v42 = 0;
  v40 = 0;
  DataLength = CMBlockBufferGetDataLength(theBuffer);
  v18 = DataLength;
  v39 = DataLength;
  if (a4 <= 1)
  {
    v19 = 1;
  }

  else
  {
    v19 = a4;
  }

  if (!a4)
  {
    a5 = &v39;
  }

  if (!OUTLINED_FUNCTION_5_6(DataLength, v11, v12, v13, v14, v15, v16, v17, v36, v39, v40, v41, v42, v43, v44, v45, SHIDWORD(v45)))
  {
    v21 = v42;
    if (!v42)
    {
      IFFInformationReserveItemExtentTable(*(a2 + 24), *(a2 + 40), 0, 0, v19, 0, 0, v20, v37, v39, v40, v41, 0, v43, v44, v45, v46, v47, v48, v49);
      if (v22 || OUTLINED_FUNCTION_5_6(v22, v23, v24, v25, v26, v27, v28, v29, v38, v39, v40, v41, v42, v43, v44, v45, SHIDWORD(v45)))
      {
        return;
      }

      v21 = v42;
    }

    if (v21 != v19 || HIDWORD(v45) || v44)
    {
      fig_log_get_emitter();
      FigSignalErrorAtGM();
    }

    else
    {
      v30 = a4 - 1;
      if ((a4 > 1 || v18 == *a5) && !MovieSampleDataWriterAppendBlockBuffer(*(a1 + 8), theBuffer, &v40))
      {
        v31 = v41;
        v32 = *a5;
        *v41 = v40;
        v31[1] = v32;
        if (a4 >= 2)
        {
          v33 = v31 + 2;
          v34 = a5 + 1;
          do
          {
            v35 = *v34++;
            *v33 = *(v33 - 1) + *(v33 - 2);
            v33[1] = v35;
            v33 += 2;
            --v30;
          }

          while (v30);
        }
      }
    }
  }
}

uint64_t iffpcwAddGenericMetadataToPicture(uint64_t a1, int a2, unsigned int a3, uint64_t a4, unint64_t a5, const __CFString *a6, const __CFString *a7, const __CFString *a8, _DWORD *a9)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  *v24 = 0;
  if (!(a4 | a5) || (v17 = DerivedStorage, a4) && a5 || a3 == 3 && (!a6 || !CFStringHasPrefix(a6, @"http:") && !CFStringHasPrefix(a6, @"https:") && !CFStringHasPrefix(a6, @"urn:") && !CFStringHasPrefix(a6, @"tag:")))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    BlockBufferWithCFDataNoCopy = FigSignalErrorAtGM();
    goto LABEL_27;
  }

  IFFInformationAddAndGetMetadataItemFromPicture(*(v17 + 24), a2, a3, a6, a8, v24);
  if (BlockBufferWithCFDataNoCopy)
  {
    goto LABEL_27;
  }

  if (a7)
  {
    BlockBufferWithCFDataNoCopy = IFFInformationSetItemName(*v24, 0, a7);
    if (BlockBufferWithCFDataNoCopy)
    {
      goto LABEL_27;
    }
  }

  if (a4)
  {
    OUTLINED_FUNCTION_496();
    BlockBufferWithCFDataNoCopy = FigCreateBlockBufferWithCFDataNoCopy();
    if (!BlockBufferWithCFDataNoCopy)
    {
      v19 = 0;
      goto LABEL_16;
    }

LABEL_27:
    v21 = BlockBufferWithCFDataNoCopy;
    goto LABEL_19;
  }

  if (a5)
  {
    v19 = CFRetain(a5);
  }

  else
  {
    v19 = 0;
  }

  cf = v19;
LABEL_16:
  iffpcwAppendPictureDataBlockBuffer(v17, *v24, v19, 0, 0);
  v21 = v20;
  if (a9 && !v20)
  {
    *a9 = *(*v24 + 40);
  }

LABEL_19:
  if (cf)
  {
    CFRelease(cf);
  }

  return v21;
}

uint64_t FigIFFPictureCollectionWriterCreateWithMovieSampleDataWriter_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t FigIFFPictureCollectionWriterCreateWithMovieSampleDataWriter_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigIFFPictureCollectionWriterCreateWithMovieSampleDataWriter_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigIFFPictureCollectionWriterCreateWithMovieSampleDataWriter_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t iffpcwGetWriteFileTypeOptions_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t iffpcw_CopyProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t iffpcw_CopyProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t iffpcw_CopyProperty_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t iffpcw_SetProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t iffpcw_AddPicture_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t iffpcw_AddPicture_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t iffpcw_AddPicture_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t iffpcw_AddPicture_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t iffpcw_AddPicture_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t iffpcw_AddPicture_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t iffpcw_AddPicture_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t iffpcw_CopyPictureProperty_cold_1(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t iffpcw_AddThumbnailToPicture_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t iffpcw_AddThumbnailToPicture_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t iffpcw_AddThumbnailToPicture_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t iffpcw_AddAuxiliaryImageToPicture_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t iffpcw_AddAuxiliaryImageToPicture_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t iffpcw_AddAuxiliaryImageToPicture_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t iffpcw_AddAuxiliaryImageToPicture_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t iffpcw_AddAuxiliaryImageToPicture_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t iffpcw_AddAuxiliaryImageToPicture_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t iffpcw_AddGroup_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigXPCPlaybackCoordinatorServerHandleMessage(const void *a1, const void *a2)
{
  if (!FigXPCPlaybackCoordinatorServerHandlesMessagesForObject(a1))
  {
    goto LABEL_10;
  }

  if (!a1)
  {
    goto LABEL_10;
  }

  v4 = CFGetTypeID(a1);
  if (v4 != FigPlaybackCoordinatorGetTypeID() || !a2)
  {
    goto LABEL_10;
  }

  v5 = CFGetTypeID(a2);
  if (_MergedGlobals_17 != -1)
  {
    dispatch_once(&_MergedGlobals_17, &__block_literal_global_4);
  }

  if (v5 == qword_1ED4CA440)
  {
    result = FigXPCMessageGetOpCode();
    if (!result)
    {
      return 4294951138;
    }
  }

  else
  {
LABEL_10:

    return FigSignalErrorAtGM();
  }

  return result;
}

uint64_t serverXPCCoordinator_handleCopyProperty()
{
  result = FigXPCMessageCopyCFString();
  if (!result)
  {
    OUTLINED_FUNCTION_239();
    return FigSignalErrorAtGM();
  }

  return result;
}

uint64_t serverXPCCoordinator_handleSetProperty()
{
  result = FigXPCMessageCopyCFString();
  if (!result)
  {
    return FigSignalErrorAtGM();
  }

  return result;
}

uint64_t serverXPCCoordinator_handleBeginSuspension(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  OUTLINED_FUNCTION_2_11(a3);
  v7 = FigXPCMessageCopyTimelineCoordinatorSuspension();
  if (v7)
  {
    return v7;
  }

  v8 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v8)
  {
    return 4294954514;
  }

  v9 = v8(a1, 0);
  if (!v9)
  {
    v11 = *(a2 + 32);
    v10 = *(a2 + 40);
    *(a2 + 32) = v11 + 1;
    CFDictionarySetValue(v10, v11, 0);
    xpc_dictionary_set_int64(a4, "SuspensionID", v11);
  }

  return v9;
}

uint64_t serverXPCCoordinator_handleEndSuspensionWithReason()
{
  OUTLINED_FUNCTION_0_12();
  OUTLINED_FUNCTION_2_11(v0);
  v1 = FigXPCMessageCopyCFString();
  if (v1)
  {
    goto LABEL_5;
  }

  if (!cf)
  {
    OUTLINED_FUNCTION_239();
    v1 = FigSignalErrorAtGM();
    goto LABEL_5;
  }

  if (*(*(CMBaseObjectGetVTable() + 16) + 32))
  {
    v2 = OUTLINED_FUNCTION_298();
    v1 = v3(v2);
LABEL_5:
    v4 = v1;
    goto LABEL_7;
  }

  v4 = 4294954514;
LABEL_7:
  if (cf)
  {
    CFRelease(cf);
  }

  return v4;
}

uint64_t serverXPCCoordinator_handleHandleAssignmentOfUUIDToLocalParticipantByMedium()
{
  OUTLINED_FUNCTION_0_12();
  OUTLINED_FUNCTION_2_11(v0);
  v1 = FigXPCMessageCopyCFObject();
  if (v1)
  {
    goto LABEL_4;
  }

  if (*(*(OUTLINED_FUNCTION_5_7() + 16) + 48))
  {
    v2 = OUTLINED_FUNCTION_298();
    v1 = v3(v2);
LABEL_4:
    v4 = v1;
    goto LABEL_6;
  }

  v4 = 4294954514;
LABEL_6:
  if (cf)
  {
    CFRelease(cf);
  }

  return v4;
}

uint64_t serverXPCCoordinator_handleCopyParticipantSnapshotForUUID(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  cf = 0;
  OUTLINED_FUNCTION_2_11(a2);
  v3 = FigXPCMessageCopyCFObject();
  if (v3)
  {
LABEL_5:
    v5 = v3;
    goto LABEL_7;
  }

  v4 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (v4)
  {
    v3 = v4(a1, cf, &v7);
    if (!v3)
    {
      v3 = FigXPCMessageSetTimelineCoordinatorParticipantSnapshot();
    }

    goto LABEL_5;
  }

  v5 = 4294954514;
LABEL_7:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  return v5;
}

uint64_t serverXPCCoordinator_handleHandleRemovalOfParticipantStateFromMedium()
{
  OUTLINED_FUNCTION_0_12();
  OUTLINED_FUNCTION_2_11(v0);
  v1 = FigXPCMessageCopyCFObject();
  if (v1)
  {
    goto LABEL_4;
  }

  if (*(*(OUTLINED_FUNCTION_5_7() + 16) + 72))
  {
    v2 = OUTLINED_FUNCTION_298();
    v1 = v3(v2);
LABEL_4:
    v4 = v1;
    goto LABEL_6;
  }

  v4 = 4294954514;
LABEL_6:
  if (cf)
  {
    CFRelease(cf);
  }

  return v4;
}

uint64_t serverXPCCoordinator_handleGetExpectedTimeAtHostTime(uint64_t a1)
{
  v6 = *MEMORY[0x1E6960C70];
  v7 = *(MEMORY[0x1E6960C70] + 16);
  v4 = v6;
  v5 = v7;
  result = FigXPCMessageGetCMTime();
  if (!result)
  {
    v3 = *(*(CMBaseObjectGetVTable() + 16) + 80);
    if (v3)
    {
      v8 = v6;
      v9 = v7;
      result = v3(a1, &v8, &v4);
      if (!result)
      {
        v8 = v4;
        v9 = v5;
        return FigXPCMessageSetCMTime();
      }
    }

    else
    {
      return 4294954514;
    }
  }

  return result;
}

uint64_t serverXPCCoordinator_handleHandleUpdatedTimelineStateFromMedium()
{
  OUTLINED_FUNCTION_0_12();
  OUTLINED_FUNCTION_2_11(v0);
  v1 = FigXPCMessageCopyCFDictionary();
  if (v1)
  {
    goto LABEL_4;
  }

  if (*(*(OUTLINED_FUNCTION_5_7() + 16) + 88))
  {
    v2 = OUTLINED_FUNCTION_298();
    v1 = v3(v2);
LABEL_4:
    v4 = v1;
    goto LABEL_6;
  }

  v4 = 4294954514;
LABEL_6:
  if (cf)
  {
    CFRelease(cf);
  }

  return v4;
}

uint64_t serverXPCCoordinator_handleHandleReplacementOfAllParticipantStatesFromMedium()
{
  OUTLINED_FUNCTION_0_12();
  OUTLINED_FUNCTION_2_11(v0);
  v1 = FigXPCMessageCopyCFArray();
  if (v1)
  {
    goto LABEL_4;
  }

  if (*(*(OUTLINED_FUNCTION_5_7() + 16) + 96))
  {
    v2 = OUTLINED_FUNCTION_298();
    v1 = v3(v2);
LABEL_4:
    v4 = v1;
    goto LABEL_6;
  }

  v4 = 4294954514;
LABEL_6:
  if (cf)
  {
    CFRelease(cf);
  }

  return v4;
}

uint64_t serverXPCCoordinator_handleHandleUpdatedParticipantStateFromMedium()
{
  OUTLINED_FUNCTION_0_12();
  OUTLINED_FUNCTION_2_11(v0);
  v1 = FigXPCMessageCopyCFDictionary();
  if (v1)
  {
    goto LABEL_4;
  }

  if (*(*(OUTLINED_FUNCTION_5_7() + 16) + 104))
  {
    v2 = OUTLINED_FUNCTION_298();
    v1 = v3(v2);
LABEL_4:
    v4 = v1;
    goto LABEL_6;
  }

  v4 = 4294954514;
LABEL_6:
  if (cf)
  {
    CFRelease(cf);
  }

  return v4;
}

uint64_t serverXPCCoordinator_handleResetGroupTimelineExpectationsForIdentifier()
{
  OUTLINED_FUNCTION_0_12();
  OUTLINED_FUNCTION_2_11(v0);
  v1 = FigXPCMessageCopyCFString();
  if (v1)
  {
    goto LABEL_4;
  }

  if (*(*(OUTLINED_FUNCTION_5_7() + 16) + 128))
  {
    v2 = OUTLINED_FUNCTION_298();
    v1 = v3(v2);
LABEL_4:
    v4 = v1;
    goto LABEL_6;
  }

  v4 = 4294954514;
LABEL_6:
  if (cf)
  {
    CFRelease(cf);
  }

  return v4;
}

uint64_t FigXPCPlaybackCoordinatorServerHandleNoReplyMessage(const void *a1)
{
  if (FigXPCPlaybackCoordinatorServerHandlesMessagesForObject(a1) && a1 && (v2 = CFGetTypeID(a1), v2 == FigPlaybackCoordinatorGetTypeID()))
  {
    result = FigXPCMessageGetOpCode();
    if (!result)
    {
      return 4294951138;
    }
  }

  else
  {
    OUTLINED_FUNCTION_239();

    return FigSignalErrorAtGM();
  }

  return result;
}

uint64_t coordinatorServerMedium_broadcastTimelineState()
{
  OUTLINED_FUNCTION_4_8();
  if (!FigXPCCreateBasicMessage() && !FigXPCMessageSetCFDictionary())
  {
    xpc_connection_send_message(*(v0 + 16), message);
  }

  return FigXPCRelease();
}

uint64_t coordinatorServerMedium_broadcastParticipantState()
{
  OUTLINED_FUNCTION_4_8();
  if (!FigXPCCreateBasicMessage() && !FigXPCMessageSetCFDictionary())
  {
    xpc_connection_send_message(*(v0 + 16), message);
  }

  return FigXPCRelease();
}

uint64_t coordinatorServerMedium_asynchronouslyReloadTimelineState(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = 0;
  message = 0;
  if (!FigXPCCreateBasicMessage())
  {
    coordinatorServerMedium_cancelOutstandingFetchAndRecordNewCallback(a1, a3, a4, &v8);
    xpc_dictionary_set_int64(message, "FetchID", v8);
    FigXPCMessageSetCFString();
    xpc_connection_send_message(*(a1 + 16), message);
  }

  return FigXPCRelease();
}

BOOL FigXPCPlaybackCoordinatorServerAssociateCopiedNeighborPlaybackCoordinator_cold_2(_DWORD *a1)
{
  v2 = FigSignalErrorAtGM();
  *a1 = v2;
  return v2 == 0;
}

CFMutableDictionaryRef FigXPCPlaybackCoordinatorServerAssociateCopiedNeighborPlaybackCoordinator_cold_3(uint64_t a1, CFAllocatorRef allocator)
{
  *(a1 + 32) = 1;
  result = CFDictionaryCreateMutable(allocator, 0, 0, MEMORY[0x1E695E9E8]);
  *(a1 + 40) = result;
  return result;
}

uint64_t serverXPCCoordinator_handleEndSuspensionProposingNewTime_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

BOOL serverXPCCoordinator_handleSetWeakMediumAndCallbacks_cold_2(_DWORD *a1)
{
  v2 = FigSignalErrorAtGM();
  *a1 = v2;
  return v2 == 0;
}

uint64_t serverXPCCoordinator_handleAsyncReloadCompletion_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t serverXPCCoordinator_handleAsyncReloadCompletion_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigXPCPlaybackCoordinatorServerStartAsSubserver_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigXPCPlaybackCoordinatorServerStartAsSubserver_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t cea708_PushSample(uint64_t a1, opaqueCMSampleBuffer *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  totalLengthOut = 0;
  blockBufferOut = 0;
  dataPointerOut = 0;
  DataPointer = cea708_RenderToTime(a1, MEMORY[0x1E6960C88], 0);
  if (DataPointer)
  {
    goto LABEL_66;
  }

  if (!a2)
  {
    goto LABEL_60;
  }

  if (!CMSampleBufferGetNumSamples(a2))
  {
    goto LABEL_60;
  }

  FormatDescription = CMSampleBufferGetFormatDescription(a2);
  if (!FormatDescription)
  {
    goto LABEL_60;
  }

  MediaSubType = CMFormatDescriptionGetMediaSubType(FormatDescription);
  if (*DerivedStorage != MediaSubType)
  {
    fig_log_get_emitter();
    DataPointer = FigSignalErrorAtGM();
    goto LABEL_66;
  }

  v8 = MediaSubType;
  DataBuffer = CMSampleBufferGetDataBuffer(a2);
  v10 = DataBuffer;
  if (!DataBuffer)
  {
    goto LABEL_61;
  }

  IsRangeContiguous = CMBlockBufferIsRangeContiguous(DataBuffer, 0, 0);
  v12 = MEMORY[0x1E695E480];
  if (!IsRangeContiguous)
  {
    DataPointer = CMBlockBufferCreateContiguous(*MEMORY[0x1E695E480], v10, *MEMORY[0x1E695E480], 0, 0, 0, 0, &blockBufferOut);
    if (DataPointer)
    {
      goto LABEL_66;
    }

    v10 = blockBufferOut;
  }

  DataPointer = CMBlockBufferGetDataPointer(v10, 0, 0, &totalLengthOut, &dataPointerOut);
  if (!DataPointer)
  {
    CMSampleBufferGetOutputPresentationTimeStamp(&v40, a2);
    *(DerivedStorage + 40) = v40;
    if (v8 != 1664561208)
    {
      if (v8 == 1635017571)
      {
        v13 = dataPointerOut;
        v14 = totalLengthOut;
        v40.value = 0;
        if (totalLengthOut >= 8)
        {
          v44 = 0;
          v15 = *v12;
          v16 = MEMORY[0x1E695E9C0];
          while (1)
          {
            if (*v13 == 71 && v13[1] == 65 && v13[2] == 57 && v13[3] == 52 && v13[4] == 3)
            {
              v17 = v13 + 5;
              v18 = v14 - 5;
              DataPointer = cea708CreateDTVCCDataPacketBBufArray(DerivedStorage, v13 + 5, v14 - 5, &v40, &v44);
              if (DataPointer)
              {
                goto LABEL_66;
              }

              value = v40.value;
              if (v40.value)
              {
                Mutable = *(DerivedStorage + 72);
                if (!Mutable)
                {
                  Mutable = CFArrayCreateMutable(v15, 0, v16);
                  *(DerivedStorage + 72) = Mutable;
                }

                CFArrayAppendValue(Mutable, value);
                CFRelease(value);
                v40.value = 0;
              }

              v13 = &v17[v44];
              v14 = v18 - v44;
            }

            else
            {
              ++v13;
              --v14;
            }

            if (v14 <= 7)
            {
              goto LABEL_60;
            }
          }
        }
      }

      goto LABEL_60;
    }

    v21 = totalLengthOut;
    if (totalLengthOut >= 9)
    {
      v10 = 0;
      v22 = dataPointerOut;
      allocator = *v12;
      while (1)
      {
        v23 = bswap32(*v22);
        v25 = v21 >= v23;
        v21 -= v23;
        if (!v25)
        {
LABEL_64:
          v10 = 4294950853;
          goto LABEL_61;
        }

        v24 = v23 - 8;
        v25 = v22[1] == 1885627235 && v24 >= 0xC;
        if (v25)
        {
          break;
        }

LABEL_37:
        v22 = (v22 + v23);
        if (v21 <= 8)
        {
          goto LABEL_61;
        }
      }

      v26 = (v22 + 2);
      while (1)
      {
        if (*v26 != 150)
        {
          goto LABEL_64;
        }

        if (v26[1] != 105)
        {
          goto LABEL_64;
        }

        v27 = v26[2];
        v28 = v24 - v27;
        if (v24 < v27)
        {
          goto LABEL_64;
        }

        v29 = v26[3];
        v30 = v26[4];
        if (*(DerivedStorage + 80) == v29 >> 4)
        {
          goto LABEL_46;
        }

        v31 = v29 >> 4;
        if (v31 - 1 <= 7)
        {
          break;
        }

        v10 = 4294950853;
        if ((v26[4] & 0x40) == 0)
        {
          goto LABEL_47;
        }

LABEL_50:
        v40.value = 0;
        v33 = v30 < 0;
        v34 = 12;
        if (!v33)
        {
          v34 = 7;
        }

        v35 = -12;
        if (!v33)
        {
          v35 = -7;
        }

        DataPointer = cea708CreateDTVCCDataPacketBBufArray(DerivedStorage, &v26[v34], v35 + v24, &v40, 0);
        if (DataPointer)
        {
          goto LABEL_66;
        }

        v36 = v40.value;
        if (v40.value)
        {
          v37 = *(DerivedStorage + 72);
          if (!v37)
          {
            v37 = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
            *(DerivedStorage + 72) = v37;
          }

          CFArrayAppendValue(v37, v36);
          CFRelease(v36);
        }

        v10 = 0;
LABEL_47:
        v26 += v27;
        v24 = v28;
        if (v28 <= 0xB)
        {
          goto LABEL_37;
        }
      }

      v10 = 0;
      v32 = dword_196E72C30[v31 - 1];
      *(DerivedStorage + 80) = v31;
      *(DerivedStorage + 84) = v32;
LABEL_46:
      if ((v30 & 0x40) == 0)
      {
        goto LABEL_47;
      }

      goto LABEL_50;
    }

LABEL_60:
    v10 = 0;
    goto LABEL_61;
  }

LABEL_66:
  v10 = DataPointer;
LABEL_61:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  return v10;
}

uint64_t cea708CreateDTVCCDataPacketBBufArray(uint64_t a1, char *a2, uint64_t a3, __CFArray **a4, void *a5)
{
  v5 = *a2;
  v6 = *a2 & 0x1F;
  v7 = 3 * (*a2 & 0x1F);
  if (a3 - 2 < v7)
  {
    return 4294950853;
  }

  if (a5)
  {
    *a5 = (v7 + 2);
    v5 = *a2;
  }

  if ((v5 & 0x40) == 0)
  {
    return 0;
  }

  v10 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (!v6)
  {
LABEL_35:
    v25 = 0;
    *a4 = Mutable;
    return v25;
  }

  v12 = 0;
  v13 = (a1 + 104);
  v14 = a2 + 4;
  while (1)
  {
    v15 = *(v14 - 2);
    v16 = v15 & 3;
    if (v15 < 0xFC || v16 < 2)
    {
      goto LABEL_34;
    }

    if (v16 == 3)
    {
      break;
    }

    if (!*v13)
    {
      *(a1 + 88) = -1;
      goto LABEL_33;
    }

    v22 = CMBlockBufferReplaceDataBytes(v14 - 1, *v13, *(a1 + 96), 2uLL);
    if (v22)
    {
      goto LABEL_37;
    }

    v23 = *(a1 + 96) + 2;
LABEL_28:
    *(a1 + 96) = v23;
    v24 = *(a1 + 104);
    if (!v24 || CMBlockBufferGetDataLength(v24) != *(a1 + 96))
    {
      goto LABEL_34;
    }

    CFArrayAppendValue(Mutable, *v13);
    if (*v13)
    {
      CFRelease(*v13);
      *v13 = 0;
    }

LABEL_33:
    *(a1 + 96) = 0;
LABEL_34:
    ++v12;
    v14 += 3;
    if (v12 >= v6)
    {
      goto LABEL_35;
    }
  }

  v18 = *(v14 - 1);
  v19 = v18 >> 6;
  v20 = *(a1 + 88);
  if (v20 == 255)
  {
    v21 = *v13;
  }

  else
  {
    if (v20 == 3)
    {
      LOBYTE(v20) = -1;
    }

    v21 = *v13;
    if (v20 + 1 != v19)
    {
      *(a1 + 88) = -1;
      *(a1 + 96) = 0;
      if (!v21)
      {
        goto LABEL_26;
      }

      goto LABEL_25;
    }
  }

  if (v21)
  {
    *(a1 + 88) = -1;
    *(a1 + 96) = 0;
LABEL_25:
    CFRelease(v21);
    *v13 = 0;
  }

LABEL_26:
  *(a1 + 88) = v19;
  v22 = CMBlockBufferCreateWithMemoryBlock(v10, 0, 2 * (v18 & 0x3F) - 1, v10, 0, 0, 2 * (v18 & 0x3F) - 1, 1u, (a1 + 104));
  if (!v22)
  {
    v22 = CMBlockBufferReplaceDataBytes(v14, *v13, 0, 1uLL);
    v23 = 1;
    if (!v22)
    {
      goto LABEL_28;
    }
  }

LABEL_37:
  v25 = v22;
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v25;
}

uint64_t cea708ProcessCharacters(uint64_t result, unsigned int a2, unsigned __int8 *a3, int a4, int a5, _DWORD *a6)
{
  if (a4 >= 1)
  {
    v6 = result + 121800 * a2;
    if (*(v6 + 113) != -1)
    {
      v7 = v6 + 120 + 15224 * *(v6 + 113);
      if (*(v7 + 69) <= *(v7 + 8))
      {
        v8 = *(v7 + 68);
        v9 = v7 + 72 + 1010 * *(v7 + 68) + 24 * (v8 >> 8);
        v10 = *a3;
        *(v9 + 2) = 1;
        v11 = v9 + 2;
        if (a5)
        {
          v12 = 95;
          switch(v10)
          {
            case ' ':
              v12 = 32;
              break;
            case '!':
              v12 = 160;
              break;
            case '""':
            case '#':
            case '$':
            case '&':
            case '\'':
            case '(':
            case ')':
            case '+':
            case '-':
            case '.':
            case '/':
            case '6':
            case '7':
            case '8':
            case ';':
            case '>':
              break;
            case '%':
              v12 = 8230;
              break;
            case '*':
              v12 = 352;
              break;
            case ',':
              v12 = 338;
              break;
            case '0':
              v12 = 9608;
              break;
            case '1':
              v12 = 8216;
              break;
            case '2':
              v12 = 8217;
              break;
            case '3':
              v12 = 8220;
              break;
            case '4':
              v12 = 8221;
              break;
            case '5':
              v12 = 8226;
              break;
            case '9':
              v12 = 8482;
              break;
            case ':':
              v12 = 353;
              break;
            case '<':
              v12 = 339;
              break;
            case '=':
              v12 = 8480;
              break;
            case '?':
              v12 = 376;
              break;
            default:
              switch(v10)
              {
                case 'v':
                  v12 = 8539;
                  break;
                case 'w':
                  v12 = 8540;
                  break;
                case 'x':
                  v12 = 8541;
                  break;
                case 'y':
                  v12 = 8542;
                  break;
                case 'z':
                  v12 = 9474;
                  break;
                case '{':
                  v12 = 9488;
                  break;
                case '|':
                  v12 = 9492;
                  break;
                case '}':
                  v12 = 9472;
                  break;
                case '~':
                  v12 = 9496;
                  break;
                case '\x7F':
                  v12 = 9484;
                  break;
                default:
                  goto LABEL_10;
              }

              break;
          }
        }

        else if (v10 == 127)
        {
          v12 = 9834;
        }

        else
        {
          v12 = v10;
        }

LABEL_10:
        *(v11 + 2) = v12;
        v13 = *(v7 + 48);
        *(v11 + 20) = *(v7 + 63);
        *(v11 + 5) = v13;
        if (*(v7 + 67) || *(v7 + 70))
        {
          *(v11 + 4) = 1;
        }

        ++*(v7 + 69);
        *(v7 + 67) = 0;
        *(v7 + 70) = 0;
        *(v7 + 72 + 1010 * v8) = 1;
        *(v6 + 112) = 1;
        *a6 = 0;
      }
    }
  }

  return result;
}

uint64_t FigCEA708CaptionDecoderCreate_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCEA708CaptionDecoderCreate_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCEA708CaptionDecoderCreate_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t cea708_CopyProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t cea708_SetProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t cea708_SetProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigReportingModeratorCreateForStreamingAssetDownloader(uint64_t a1, const void *a2, void *a3)
{
  OUTLINED_FUNCTION_1_12();
  fig_note_initialize_category_with_default_work_cf();
  OUTLINED_FUNCTION_1_12();
  fig_note_initialize_category_with_default_work_cf();
  if (!a3)
  {
    return 4294949785;
  }

  FigReportingModeratorGetClassID();
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
    v5 = 0;
    *(DerivedStorage + 8) = FigGetUpTimeNanoseconds();
    *(DerivedStorage + 40) = 0;
    *a3 = 0;
  }

  return v5;
}

void downloaderFinalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v1 = *DerivedStorage;
    if (v1)
    {

      CFRelease(v1);
    }
  }
}

uint64_t downloaderModeratorProcessEventAndCopyKeyArray(uint64_t a1, int a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = 4294949785;
  if (a3 && DerivedStorage)
  {
    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    v8 = UpTimeNanoseconds;
    switch(a2)
    {
      case 701:
        if (*(*(CMBaseObjectGetVTable() + 16) + 88))
        {
          v15 = OUTLINED_FUNCTION_3_6();
          v16(v15);
        }

        break;
      case 704:
        *(DerivedStorage + 41) = 1;
        *(DerivedStorage + 16) = UpTimeNanoseconds;
        break;
      case 705:
        if ((*(DerivedStorage + 40) & 1) == 0)
        {
          if (*(*(CMBaseObjectGetVTable() + 16) + 88))
          {
            v9 = OUTLINED_FUNCTION_3_6();
            v10(v9);
          }

          *(DerivedStorage + 40) = 1;
          *(DerivedStorage + 24) = v8;
        }

        if (*(DerivedStorage + 41) == 1)
        {
          if (*(*(CMBaseObjectGetVTable() + 16) + 88))
          {
            v11 = OUTLINED_FUNCTION_2_12();
            v12(v11);
          }

          if (*(*(CMBaseObjectGetVTable() + 16) + 64))
          {
            v13 = OUTLINED_FUNCTION_2_12();
            v14(v13);
          }

          *(DerivedStorage + 41) = 0;
        }

        else
        {
          *(DerivedStorage + 32) = v8;
        }

        v18 = *DerivedStorage;
        v19 = *(*(CMBaseObjectGetVTable() + 16) + 104);
        if (v19)
        {
          v19(v18, 0x1F0B645F8, 0x1F0B39F98);
        }

        v17 = &_MergedGlobals_18;
LABEL_26:
        OUTLINED_FUNCTION_0_13();
        MEMORY[0x19A8D3660]();
        goto LABEL_27;
      default:
        OUTLINED_FUNCTION_0_13();
        MEMORY[0x19A8D3660]();
        if (a2 != 707)
        {
          goto LABEL_29;
        }

        v17 = &qword_1ED4CA458;
LABEL_27:
        if (*v17)
        {
          v20 = CFRetain(*v17);
LABEL_30:
          result = 0;
          *a3 = v20;
          return result;
        }

LABEL_29:
        v20 = 0;
        goto LABEL_30;
    }

    v17 = &qword_1ED4CA450;
    goto LABEL_26;
  }

  return result;
}

uint64_t downloaderModeratorPostProcessPayloadForEvent(int a1, int a2, CFDictionaryRef theDict)
{
  if (theDict && CFDictionaryGetCount(theDict) >= 1)
  {
    v4 = *MEMORY[0x1E695E480];
    Copy = CFDictionaryCreateCopy(*MEMORY[0x1E695E480], theDict);
    if (Copy)
    {
      v6 = Copy;
      CFDictionaryApplyFunction(Copy, fsdrm_stringifyArrayFunc, theDict);
      CFRelease(v6);
    }

    v10 = 0;
    value = 0;
    v7 = CFDictionaryCreateCopy(v4, theDict);
    if (v7)
    {
      v8 = v7;
      CFDictionaryGetValueIfPresent(v7, @"TotBytesDown", &value);
      if (value)
      {
        CFNumberGetValue(value, kCFNumberSInt64Type, &v10);
        v10 = 1000000 * (v10 / 1000000);
        FigCFDictionarySetInt64();
      }

      CFRelease(v8);
    }
  }

  return 0;
}

CFArrayRef fsdrm_createStaticKeyArrayFromEventKeys()
{
  v10 = *MEMORY[0x1E69E9840];
  memcpy(v9, off_1E7477A30, 0x168uLL);
  v0 = OUTLINED_FUNCTION_4_9();
  result = CFArrayCreate(v0, v1, 45, 0);
  _MergedGlobals_18 = result;
  if (result)
  {
    memcpy(v9, off_1E7477B98, sizeof(v9));
    v3 = OUTLINED_FUNCTION_4_9();
    result = CFArrayCreate(v3, v4, 51, 0);
    qword_1ED4CA450 = result;
    if (result)
    {
      memcpy(v9, off_1E7477D30, 0x138uLL);
      v5 = OUTLINED_FUNCTION_4_9();
      result = CFArrayCreate(v5, v6, 39, 0);
      qword_1ED4CA458 = result;
      if (result)
      {
        memcpy(v9, off_1E7477E68, 0xD8uLL);
        v7 = OUTLINED_FUNCTION_4_9();
        result = CFArrayCreate(v7, v8, 27, 0);
        qword_1ED4CA460 = result;
      }
    }
  }

  return result;
}

void fsdrm_stringifyArrayFunc(const void *a1, const __CFArray *a2, __CFDictionary *a3)
{
  if (a3)
  {
    TypeID = CFArrayGetTypeID();
    if (TypeID == CFGetTypeID(a2))
    {
      Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
      if (Mutable)
      {
        v8 = Mutable;
        if (CFArrayGetCount(a2) >= 1)
        {
          v9 = 0;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(a2, v9);
            if (ValueAtIndex)
            {
              v11 = ValueAtIndex;
              v12 = CFNumberGetTypeID();
              if (v12 == CFGetTypeID(v11))
              {
                valuePtr = 0;
                CFNumberGetValue(v11, kCFNumberSInt64Type, &valuePtr);
                CFStringAppendFormat(v8, 0, @"%lld", valuePtr);
              }

              else
              {
                v13 = CFStringGetTypeID();
                if (v13 == CFGetTypeID(v11))
                {
                  CFStringAppendFormat(v8, 0, @"%@", v11);
                }
              }
            }

            else
            {
              CFStringAppend(v8, @"-");
            }

            if (++v9 < CFArrayGetCount(a2))
            {
              CFStringAppend(v8, @",");
            }
          }

          while (v9 < CFArrayGetCount(a2));
        }

        CFDictionarySetValue(a3, a1, v8);
        CFRelease(v8);
      }
    }
  }
}

uint64_t FigMetricMediaResourceRequestEventDeserializeAndCopy(void *a1, void *a2)
{
  v76 = *MEMORY[0x1E6960C70];
  v77 = *(MEMORY[0x1E6960C70] + 16);
  v74 = 0;
  v75 = 0;
  v73 = 0;
  v71 = 0;
  v72 = 0;
  v69 = 0;
  cf = 0;
  v67 = 0;
  v68 = 0;
  v65 = 0;
  v66 = 0;
  v63 = 0;
  v64 = 0;
  if (!a1 || !a2)
  {
    CMTime = FigSignalErrorAtGM();
LABEL_21:
    v50 = CMTime;
    goto LABEL_22;
  }

  int64 = xpc_dictionary_get_int64(a1, "EventID");
  v5 = xpc_dictionary_get_int64(a1, "ByteRangeLength");
  v6 = xpc_dictionary_get_int64(a1, "ByteRangeLocation");
  v7 = xpc_dictionary_get_BOOL(a1, "ReadFromCache");
  v8 = xpc_dictionary_get_int64(a1, "MediaType");
  CMTime = FigXPCMessageGetCMTime();
  if (CMTime)
  {
    goto LABEL_21;
  }

  CMTime = FigXPCMessageCopyCFDate();
  if (CMTime)
  {
    goto LABEL_21;
  }

  CMTime = FigXPCMessageCopyCFString();
  if (CMTime)
  {
    goto LABEL_21;
  }

  CMTime = FigXPCMessageCopyCFURL();
  if (CMTime)
  {
    goto LABEL_21;
  }

  CMTime = FigXPCMessageCopyCFString();
  if (CMTime)
  {
    goto LABEL_21;
  }

  CMTime = FigXPCMessageCopyCFData();
  if (CMTime)
  {
    goto LABEL_21;
  }

  v59 = v8;
  v60 = v7;
  CMTime = FigXPCMessageCopyCFError();
  if (CMTime)
  {
    goto LABEL_21;
  }

  CMTime = FigXPCMessageCopyCFDate();
  if (CMTime)
  {
    goto LABEL_21;
  }

  CMTime = FigXPCMessageCopyCFDate();
  if (CMTime)
  {
    goto LABEL_21;
  }

  CMTime = FigXPCMessageCopyCFDate();
  if (CMTime)
  {
    goto LABEL_21;
  }

  CMTime = FigXPCMessageCopyCFDate();
  if (CMTime)
  {
    goto LABEL_21;
  }

  switch(int64)
  {
    case 0:
      FigGetAllocatorForMedia();
      MEMORY[0x19A8CCD90](v69);
      MEMORY[0x19A8CCD90](v68);
      MEMORY[0x19A8CCD90](v67);
      MEMORY[0x19A8CCD90](v66);
      OUTLINED_FUNCTION_0_14();
      v54 = v10;
      v11 = OUTLINED_FUNCTION_1_13();
      CMTime = FigMetricMediaResourceRequestEventCreateInternal(v12, v75, v72, v13, cf, v73, v6, v5, v11, v14, v15, v16, v7, v54, 0, a2);
      goto LABEL_21;
    case 1:
      v43 = xpc_dictionary_get_BOOL(a1, "IsMultivariantPlaylist");
      FigGetAllocatorForMedia();
      MEMORY[0x19A8CCD90](v69);
      MEMORY[0x19A8CCD90](v68);
      MEMORY[0x19A8CCD90](v67);
      MEMORY[0x19A8CCD90](v66);
      OUTLINED_FUNCTION_0_14();
      OUTLINED_FUNCTION_2_13();
      v44 = OUTLINED_FUNCTION_1_13();
      CMTime = FigMetricHLSPlaylistRequestEventCreateInternal(v45, v75, v72, v46, cf, v73, v6, v5, v44, v47, v48, v49, v52, v53, v55, v56, v43, a2);
      goto LABEL_21;
    case 2:
      v58 = v6;
      v17 = v5;
      v18 = xpc_dictionary_get_BOOL(a1, "IsMapSegment");
      CMTime = FigXPCMessageCopyCFURL();
      if (!CMTime)
      {
        v19 = xpc_dictionary_get_double(a1, "SegmentDuration");
        AllocatorForMedia = FigGetAllocatorForMedia();
        v22 = v74;
        v21 = v75;
        v23 = v72;
        v24 = cf;
        v25 = v73;
        v26 = MEMORY[0x19A8CCD90](v69);
        v27 = MEMORY[0x19A8CCD90](v68);
        v28 = MEMORY[0x19A8CCD90](v67);
        MEMORY[0x19A8CCD90](v66);
        OUTLINED_FUNCTION_0_14();
        CMTime = FigMetricHLSMediaSegmentRequestEventCreateInternal(AllocatorForMedia, v21, v22, v23, &v61, v24, v25, v26, v27, v28, v31, v19, v29, v58, v17, v60, v30, 0, v59, v18, a2);
      }

      goto LABEL_21;
    case 3:
      v32 = xpc_dictionary_get_BOOL(a1, "IsClientInitiated");
      CMTime = FigContentKeyBossClientServerXPC_DeserializeAndCopyKeySpecifier(a1, &v64);
      if (!CMTime)
      {
        FigGetAllocatorForMedia();
        v33 = v75;
        v34 = v72;
        v35 = cf;
        v36 = v73;
        MEMORY[0x19A8CCD90](v69);
        MEMORY[0x19A8CCD90](v68);
        MEMORY[0x19A8CCD90](v67);
        MEMORY[0x19A8CCD90](v66);
        v61 = v76;
        v62 = v77;
        v57 = v64;
        OUTLINED_FUNCTION_2_13();
        v37 = OUTLINED_FUNCTION_1_13();
        CMTime = FigMetricContentKeyRequestEventCreateInternal(v38, v33, v34, v39, v35, v36, v6, v5, v37, v40, v41, v42, v52, v53, v55, v56, v32, v57, a2);
      }

      goto LABEL_21;
    default:
      v50 = 4294947834;
      break;
  }

LABEL_22:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v73)
  {
    CFRelease(v73);
  }

  if (v75)
  {
    CFRelease(v75);
  }

  if (v74)
  {
    CFRelease(v74);
  }

  if (v72)
  {
    CFRelease(v72);
  }

  if (v71)
  {
    CFRelease(v71);
  }

  if (v65)
  {
    CFRelease(v65);
  }

  if (v69)
  {
    CFRelease(v69);
  }

  if (v68)
  {
    CFRelease(v68);
  }

  if (v67)
  {
    CFRelease(v67);
  }

  if (v66)
  {
    CFRelease(v66);
  }

  if (v64)
  {
    CFRelease(v64);
  }

  return v50;
}

uint64_t merr_serialize(uint64_t a1, void *a2)
{
  v48 = 0;
  if (a1 && a2)
  {
    v4 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v4)
    {
      v5 = v4(a1);
    }

    else
    {
      v5 = -12782;
    }

    xpc_dictionary_set_int64(a2, "EventID", v5);
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (v6)
    {
      v6(&v46, a1);
    }

    else
    {
      v46 = *MEMORY[0x1E6960C70];
      v47 = *(MEMORY[0x1E6960C70] + 16);
    }

    v7 = FigXPCMessageSetCMTime();
    if (v7)
    {
      return v7;
    }

    v8 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v8)
    {
      v8(a1);
    }

    v7 = FigXPCMessageSetCFDate();
    if (v7)
    {
      return v7;
    }

    v9 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (v9)
    {
      v10 = v9(a1);
    }

    else
    {
      v10 = 0;
    }

    v11 = FigXPCMessageSetCFString();
    if (v11)
    {
      goto LABEL_83;
    }

    v12 = *(*(CMBaseObjectGetVTable() + 32) + 8);
    if (v12)
    {
      v12(a1);
    }

    v11 = FigXPCMessageSetCFURL();
    if (v11)
    {
      goto LABEL_83;
    }

    v13 = *(*(CMBaseObjectGetVTable() + 32) + 16);
    if (v13)
    {
      v13(a1);
    }

    v11 = FigXPCMessageSetCFString();
    if (v11)
    {
      goto LABEL_83;
    }

    v14 = *(*(CMBaseObjectGetVTable() + 32) + 24);
    if (v14)
    {
      v14(a1);
    }

    v11 = FigXPCMessageSetCFDate();
    if (v11)
    {
      goto LABEL_83;
    }

    v15 = *(*(CMBaseObjectGetVTable() + 32) + 32);
    if (v15)
    {
      v15(a1);
    }

    v11 = FigXPCMessageSetCFDate();
    if (v11)
    {
      goto LABEL_83;
    }

    v16 = *(*(CMBaseObjectGetVTable() + 32) + 40);
    if (v16)
    {
      v16(a1);
    }

    v11 = FigXPCMessageSetCFDate();
    if (v11)
    {
      goto LABEL_83;
    }

    v17 = *(*(CMBaseObjectGetVTable() + 32) + 48);
    if (v17)
    {
      v17(a1);
    }

    v11 = FigXPCMessageSetCFDate();
    if (v11)
    {
      goto LABEL_83;
    }

    v18 = *(*(CMBaseObjectGetVTable() + 32) + 72);
    if (v18)
    {
      v18(a1);
    }

    v11 = FigXPCMessageSetCFError();
    if (v11)
    {
LABEL_83:
      v40 = v11;
      goto LABEL_80;
    }

    v19 = *(*(CMBaseObjectGetVTable() + 32) + 80);
    if (v19)
    {
      v20 = v19(a1);
      if (v20)
      {
        v21 = v20;
        v22 = objc_autoreleasePoolPush();
        [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v21 requiringSecureCoding:1 error:&v48];
        if (v48)
        {
          v23 = FigSignalErrorAtGM();
        }

        else
        {
          v23 = FigXPCMessageSetCFData();
          if (!v23)
          {
            objc_autoreleasePoolPop(v22);
            goto LABEL_43;
          }
        }

        v40 = v23;
        objc_autoreleasePoolPop(v22);
LABEL_80:
        if (v10)
        {
          CFRelease(v10);
        }

        return v40;
      }
    }

LABEL_43:
    v24 = *(*(CMBaseObjectGetVTable() + 32) + 56);
    if (v24)
    {
      v24(a1);
      v26 = v25;
    }

    else
    {
      v26 = 0;
    }

    xpc_dictionary_set_int64(a2, "ByteRangeLength", v26);
    v27 = *(*(CMBaseObjectGetVTable() + 32) + 56);
    if (v27)
    {
      v28 = v27(a1);
    }

    else
    {
      v28 = 0;
    }

    xpc_dictionary_set_int64(a2, "ByteRangeLocation", v28);
    v29 = *(*(CMBaseObjectGetVTable() + 32) + 64);
    if (v29)
    {
      v29(a1);
      OUTLINED_FUNCTION_3_7();
    }

    else
    {
      v30 = 0;
    }

    xpc_dictionary_set_BOOL(a2, "ReadFromCache", v30);
    if (!v5)
    {
      goto LABEL_79;
    }

    v31 = 1836415096;
    v32 = *(*(CMBaseObjectGetVTable() + 32) + 96);
    if (v32)
    {
      v31 = v32(a1);
    }

    xpc_dictionary_set_int64(a2, "MediaType", v31);
    if (v5 != 3)
    {
      if (v5 == 2)
      {
        v35 = *(*(CMBaseObjectGetVTable() + 32) + 104);
        if (v35)
        {
          v35(a1);
          OUTLINED_FUNCTION_3_7();
        }

        else
        {
          v36 = 0;
        }

        xpc_dictionary_set_BOOL(a2, "IsMapSegment", v36);
        v39 = *(*(CMBaseObjectGetVTable() + 32) + 128);
        if (v39)
        {
          v39(a1);
        }

        v40 = FigXPCMessageSetCFURL();
        v41 = *(*(CMBaseObjectGetVTable() + 32) + 136);
        v42.n128_u64[0] = 0;
        if (v41)
        {
          v42.n128_f64[0] = v41(a1, v42);
        }

        xpc_dictionary_set_double(a2, "SegmentDuration", v42.n128_f64[0]);
        goto LABEL_80;
      }

      if (v5 != 1)
      {
        goto LABEL_79;
      }

      v33 = *(*(CMBaseObjectGetVTable() + 32) + 88);
      if (v33)
      {
        v33(a1);
        OUTLINED_FUNCTION_3_7();
      }

      else
      {
        v34 = 0;
      }

      v44 = "IsMultivariantPlaylist";
      goto LABEL_78;
    }

    v37 = *(*(CMBaseObjectGetVTable() + 32) + 112);
    if (v37)
    {
      v38 = v37(a1);
    }

    else
    {
      v38 = 0;
    }

    v11 = FigContentKeyBossClientServerXPC_SerializeKeySpecifier(a2, v38);
    if (!v11)
    {
      v43 = *(*(CMBaseObjectGetVTable() + 32) + 120);
      if (v43)
      {
        v43(a1);
        OUTLINED_FUNCTION_3_7();
      }

      else
      {
        v34 = 0;
      }

      v44 = "IsClientInitiated";
LABEL_78:
      xpc_dictionary_set_BOOL(a2, v44, v34);
LABEL_79:
      v40 = 0;
      goto LABEL_80;
    }

    goto LABEL_83;
  }

  return FigSignalErrorAtGM();
}

uint64_t FigMetricMediaResourceRequestEventCreateInternal_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMetricMediaResourceRequestEventCreateInternal_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMetricHLSPlaylistRequestEventCreateInternal_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMetricHLSPlaylistRequestEventCreateInternal_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMetricHLSMediaSegmentRequestEventCreateInternal_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMetricHLSMediaSegmentRequestEventCreateInternal_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMetricContentKeyRequestEventCreateInternal_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMetricContentKeyRequestEventCreateInternal_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t merr_setSessionID_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t merr_setMediaTime_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void FigCEA608DataGeneratorCaptionInfoRelease(uint64_t a1)
{
  if (a1)
  {
    v1 = *a1;
    v2 = *(a1 + 112);
    if (v2)
    {
      CFRelease(v2);
    }

    v3 = OUTLINED_FUNCTION_298();
    CFAllocatorDeallocate(v3, v4);
    if (v1)
    {

      CFRelease(v1);
    }
  }
}

void FigCEA608DataGeneratorRelease(uint64_t a1)
{
  if (a1)
  {
    v2 = *a1;
    FigCEA608DataGeneratorCaptionInfoRelease(*(a1 + 104));
    FigCEA608DataGeneratorCaptionInfoRelease(*(a1 + 112));
    v3 = *(a1 + 88);
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = OUTLINED_FUNCTION_298();
    CFAllocatorDeallocate(v4, v5);
    if (v2)
    {

      CFRelease(v2);
    }
  }
}

uint64_t FigCEA608DataGeneratorBeginCaption(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *result;
  v38 = *(result + 60);
  v39 = *(result + 76);
  if (!a4 || (v9 = result, v10 = (result + 112), *(result + 112)))
  {
LABEL_42:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();

    return FigSignalErrorAtGM();
  }

  v14 = *(result + 96);
  if (v14)
  {
    if (v14 == 2)
    {
      goto LABEL_42;
    }
  }

  else
  {
    time1 = *(result + 60);
    v36 = *(result + 12);
    cea608dgCCDataGetQuantizedTimeByFrameDuration(&time1, &v36, &range);
    *(v9 + 120) = *&range.start.value;
    *(v9 + 136) = range.start.epoch;
  }

  if (*(a2 + 12))
  {
    v15 = *a2;
    *(v9 + 136) = *(a2 + 16);
    *(v9 + 120) = v15;
  }

  if (!a3 || (FigCEA608DataGeneratorCaptionInfoRelease(*(v9 + 104)), OUTLINED_FUNCTION_4_10(v27, v28, v29, v30, v31, v32, v33, v34, v36.value, *&v36.timescale, v36.epoch, v37, v38), result = cea608dgCaptionInfoCopy(v35, a3, v8, (v9 + 104)), !result))
  {
    v16 = *(v9 + 104);
    if (v16)
    {
      v17 = v16[2];
      *&range.start.value = v16[1];
      *&range.start.epoch = v17;
      *&range.duration.timescale = v16[3];
      CMTimeRangeGetEnd(&time1, &range);
      *&range.start.value = *(a4 + 16);
      range.start.epoch = *(a4 + 32);
      result = CMTimeCompare(&time1, &range.start);
      if (result >= 1)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_20_0();
        return FigSignalErrorAtGM();
      }
    }

    OUTLINED_FUNCTION_4_10(result, a2, a3, a4, a5, a6, a7, a8, v36.value, *&v36.timescale, v36.epoch, v37, v38);
    result = cea608dgCaptionInfoCopy(v18, a4, v8, v10);
    if (!result)
    {
      v20 = *(v9 + 104);
      v19 = *(v9 + 112);
      v21 = *(v9 + 101);
      Mutable = CFDataCreateMutable(*v19, 0);
      *(v19 + 112) = Mutable;
      if (!Mutable)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_20_0();
        result = FigSignalErrorAtGM();
        if (result)
        {
          return result;
        }

        goto LABEL_38;
      }

      LOWORD(v36.value) = 0;
      v23 = *(v19 + 8);
      switch(v23)
      {
        case 3:
          v26 = *(v19 + 12);
          switch(v26)
          {
            case 4:
              v24 = 10004;
              break;
            case 3:
              v24 = 9748;
              break;
            case 2:
              v24 = 9492;
              break;
            default:
LABEL_34:
              LOWORD(range.start.value) = 11540;
LABEL_37:
              CFDataAppendBytes(Mutable, &range, 2);
              goto LABEL_38;
          }

          break;
        case 2:
          if (v20 && *(v20 + 8) == 2)
          {
            v25 = *(v20 + 80);
            *&range.start.value = *(v20 + 64);
            *&range.start.epoch = v25;
            *&range.duration.timescale = *(v20 + 96);
            CMTimeRangeGetEnd(&time1, &range);
            *&range.start.value = *(v19 + 64);
            range.start.epoch = *(v19 + 80);
            if (!CMTimeCompare(&time1, &range.start))
            {
LABEL_30:
              v23 = *(v19 + 8);
LABEL_31:
              if (v23 == 1)
              {
                if (v21)
                {
                  LOWORD(range.start.value) = 11796;
                  Mutable = *(v19 + 112);
                  goto LABEL_37;
                }
              }

              else if (v23 == 3)
              {
                Mutable = *(v19 + 112);
                goto LABEL_34;
              }

LABEL_38:
              result = 0;
              *(v9 + 96) = 1;
              return result;
            }

            Mutable = *(v19 + 112);
          }

          v24 = 10516;
          break;
        case 1:
          v24 = kFigCEA608MiscControlCodes;
          break;
        default:
          goto LABEL_31;
      }

      LOWORD(v36.value) = v24;
      CFDataAppendBytes(Mutable, &v36, 2);
      goto LABEL_30;
    }
  }

  return result;
}

uint64_t FigCEA608DataGeneratorFinish(uint64_t a1)
{
  if (!a1 || *(a1 + 112))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();

    return FigSignalErrorAtGM();
  }

  else if (!*(a1 + 104) || (result = cea608dgStoreCCDataSequentially(a1, 0, 0), !result))
  {
    result = 0;
    *(a1 + 96) = 2;
  }

  return result;
}

double cea608dgOutputCCData(uint64_t a1, CFMutableDataRef theData)
{
  if (!*(a1 + 152))
  {
    goto LABEL_7;
  }

  MutableBytePtr = CFDataGetMutableBytePtr(theData);
  for (i = CFDataGetLength(theData); i; --i)
  {
    v6 = *MutableBytePtr;
    v7 = vdupq_n_s32(v6);
    v8 = vshlq_u32(v7, xmmword_196E72F40);
    v9 = vaddq_s32(vshlq_u32(v7, xmmword_196E72F50), v8);
    v9.i32[3] = v8.i32[3];
    if ((vaddvq_s32(v9) & 1) == 0)
    {
      *MutableBytePtr = v6 | 0x80;
    }

    ++MutableBytePtr;
  }

  v10 = OUTLINED_FUNCTION_6_8();
  if (!v11(theData, &range, v10))
  {
LABEL_7:
    OUTLINED_FUNCTION_6_8();
    CMTimeRangeGetEnd(&v13, &range);
    result = *&v13.value;
    *(a1 + 120) = v13;
  }

  return result;
}

uint64_t FigCEA608DataGeneratorCaptionInfoCreate_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCEA608DataGeneratorCaptionInfoCreate_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void FigCEA608DataGeneratorCreate_cold_1(uint64_t a1, const void *a2, _DWORD *a3)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  *a3 = FigSignalErrorAtGM();
  CFRelease(a2);
}

uint64_t FigCEA608DataGeneratorCreate_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCEA608DataGeneratorCreate_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCEA608DataGeneratorCreate_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCEA608DataGeneratorCreate_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCEA608DataGeneratorCreate_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCEA608DataGeneratorCreate_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t cea608dgCaptionInfoCopy_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

BOOL FigCEA608DataGeneratorAddCaptionLine_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  v0 = FigSignalErrorAtGM();
  return OUTLINED_FUNCTION_2_14(v0);
}

BOOL FigCEA608DataGeneratorAddCaptionLine_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  v0 = FigSignalErrorAtGM();
  return OUTLINED_FUNCTION_2_14(v0);
}

BOOL FigCEA608DataGeneratorAddCaptionLine_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  v0 = FigSignalErrorAtGM();
  return OUTLINED_FUNCTION_2_14(v0);
}

void FigCEA608DataGeneratorAddCaptionLine_cold_4(__int16 *a1, _WORD *a2, __CFData *a3)
{
  OUTLINED_FUNCTION_3_8(a3, a2, *a1, v6, v7, SWORD2(v7), SBYTE6(v7), HIBYTE(v7));
  cea608dgCCDataAppendPaddingIfNeeded(a3);
  v4 = OUTLINED_FUNCTION_298();
  CFDataAppendBytes(v4, v5, 2);
}

BOOL FigCEA608DataGeneratorAddCaptionLine_cold_5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  v0 = FigSignalErrorAtGM();
  return OUTLINED_FUNCTION_2_14(v0);
}

void FigCEA608DataGeneratorAddCaptionLine_cold_6(char a1, _WORD *a2, __CFData *a3)
{
  v4 = 2;
  if (a1)
  {
    v4 = 4;
  }

  OUTLINED_FUNCTION_3_8(a3, a2, *(&kFigCEA608ForegroundAttributeCodes + v4), v7, v8, SWORD2(v8), SBYTE6(v8), HIBYTE(v8));
  cea608dgCCDataAppendPaddingIfNeeded(a3);
  v5 = OUTLINED_FUNCTION_298();
  CFDataAppendBytes(v5, v6, 2);
}

uint64_t FigCEA608DataGeneratorAddCaptionLine_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCEA608DataGeneratorAddCaptionLine_cold_8(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCEA608DataGeneratorAddCaptionLine_cold_9(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCEA608DataGeneratorAddCaptionLine_cold_10(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCEA608DataGeneratorAddCaptionLine_cold_11(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCEA608DataGeneratorAddCaptionLine_cold_12(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCEA608DataGeneratorEndCaption_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCEA608DataGeneratorEndCaption_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t cea608dgStoreCCDataSequentially_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCEA608DataGeneratorSetShouldAdjustOverlappedDataTime_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCEA608DataGeneratorSetShouldAdjustOverlappedDataTime_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCEA608DataGeneratorGetTimeLineRange_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t FigCEA608DataGeneratorGetTimeLineRange_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t FigCEA608DataGeneratorSetTimeLineRange_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCEA608DataGeneratorSetTimeLineRange_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCEA608DataGeneratorGetClosedCaptionChannel_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t cea608dgCreateEraseCCData_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t cea608dgCCDataGetDuration_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t cea608dgGetAheadDuration_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t cea608dgCCDataGetByteLengthFromDuration_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t cea608dgCCDataGetByteLengthFromDuration_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigByteRateHistoryCreate_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigByteRateHistoryAllocSampleArray_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ParseReferenceMovieAtom(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0_15();
  if (!FigAtomStreamInitWithParent())
  {
    ParseDescriptorAtoms(&v4, ParseReferenceMovieAtom_atomDispatch, 1, a2);
  }

  return 0;
}

uint64_t ParseReferenceMovieDescriptorAtom(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_0_15();
  v3 = malloc_type_calloc(1uLL, 0x20uLL, 0x20040DC1BFBCFuLL);
  if (v3)
  {
    if (!FigAtomStreamInitWithParent() && !ParseDescriptorAtoms(&v6, ParseReferenceMovieDescriptorAtom_atomDispatch, 3, v3) && v3[3])
    {
      v4 = a2[1];
      if (v4)
      {
        *v4 = v3;
      }

      else
      {
        *a2 = v3;
      }

      a2[1] = v3;
      v3 = 0;
    }
  }

  else
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM();
  }

  DisposeReferenceMovieAlternate(v3);
  return 0;
}

uint64_t ParseReferenceMovieDataRateAtom(uint64_t a1, uint64_t a2)
{
  v2 = (a2 + 8);
  if (*(a2 + 8))
  {
    return 0;
  }

  result = FigAtomStreamReadCurrentAtomDataAndCreateBBuf();
  if (result)
  {
    return result;
  }

  if (CMBlockBufferGetDataLength(*v2) == 8)
  {
    return 0;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t ParseReferenceMovieDataRefAtom_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ParseReferenceMovieVersionCheckAtom_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ParseReferenceMovieVersionCheckAtom_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigNWActivitySubmitMetricsForInitialStartup(uint64_t a1, double a2, double a3, double a4)
{
  if (!a1)
  {
    return 4294954516;
  }

  v7 = xpc_dictionary_create(0, 0, 0);
  if (!v7)
  {
    return 4294954510;
  }

  v8 = v7;
  xpc_dictionary_set_double(v7, "CMInitialStartup_ItemCreationToLTKU", a3 - a2);
  xpc_dictionary_set_double(v8, "CMInitialStartup_ItemCreationToReadyToPlay", a4 - a2);
  nw_activity_submit_metrics();
  xpc_release(v8);
  return 0;
}

CFDataRef FigNWActivityCreateToken(CFDataRef result)
{
  v3 = *MEMORY[0x1E69E9840];
  *uu = 0;
  v2 = 0;
  if (result)
  {
    nw_activity_get_token();
    if (uuid_is_null(uu))
    {
      return 0;
    }

    else
    {
      return CFDataCreate(*MEMORY[0x1E695E480], uu, 16);
    }
  }

  return result;
}

const __CFData *FigNWActivityCreateFromToken(const __CFData *result)
{
  v3 = *MEMORY[0x1E69E9840];
  *buffer = 0;
  v2 = 0;
  if (result)
  {
    v4.location = 0;
    v4.length = 16;
    CFDataGetBytes(result, v4, buffer);
    if (uuid_is_null(buffer))
    {
      return 0;
    }

    else
    {
      return nw_activity_create_from_token();
    }
  }

  return result;
}

void FigBytePumpCreateForICY(const __CFAllocator *a1, uint64_t a2, const void *a3, const __CFDictionary *a4, NSObject *a5, uint64_t a6, uint64_t a7, void *a8)
{
  OUTLINED_FUNCTION_11_4();
  fig_note_initialize_category_with_default_work_cf();
  v13 = a8;
  OUTLINED_FUNCTION_11_4();
  fig_note_initialize_category_with_default_work_cf();
  if (a2 && a8)
  {
    FigBytePumpGetClassID();
    if (CMDerivedObjectCreate())
    {
LABEL_44:
      OUTLINED_FUNCTION_252();
      return;
    }

    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (FigRetainProxyCreate())
    {
      v21 = 0;
      goto LABEL_49;
    }

    Default = a1;
    if (!a1)
    {
      Default = CFAllocatorGetDefault();
    }

    *DerivedStorage = CFRetain(Default);
    *(DerivedStorage + 72) = FigRetainProxyRetain();
    if (a5)
    {
      Local = a5;
    }

    else
    {
      Local = FigHTTPSchedulerCreateLocal(0);
      *(DerivedStorage + 80) = Local;
      if (Local)
      {
LABEL_11:
        if (a3)
        {
          v17 = CFRetain(a3);
          *(DerivedStorage + 104) = v17;
          if (!v17)
          {
            goto LABEL_18;
          }

          Value = CFDictionaryGetValue(v17, @"X-Playback-Session-Id");
          if (Value)
          {
            Value = CFRetain(Value);
          }

          v19 = 112;
        }

        else
        {
          Value = 0;
          v19 = 104;
        }

        *(DerivedStorage + v19) = Value;
LABEL_18:
        if (a4)
        {
          v20 = CFDictionaryGetValue(a4, @"FBPCreateOption_HTTPRequestOptions");
          v21 = v20;
          if (v20)
          {
            if (CFGetTypeID(v20) && CFDictionaryGetTypeID())
            {
              v22 = CFRetain(v21);
              *(DerivedStorage + 120) = v22;
              v23 = CFDictionaryGetValue(v22, @"FHRP_StorageSession");
              if (v23)
              {
                v23 = CFRetain(v23);
              }

              *(DerivedStorage + 128) = v23;
              v24 = CFDictionaryGetValue(*(DerivedStorage + 120), @"FHRP_ClientAuditToken");
              v21 = FigCFHTTPCopyClientProcessName(v24);
              v25 = CFDictionaryGetValue(a4, @"FBPCreateOption_AlternativeConfigurationOptions");
              FigCFDictionaryGetBooleanIfPresent();
              *(DerivedStorage + 379) = 1;
            }

            else
            {
              v25 = 0;
              v21 = 0;
            }
          }

          else
          {
            v25 = 0;
          }

          v26 = *MEMORY[0x1E695E4D0];
          *(DerivedStorage + 32) = v26 == CFDictionaryGetValue(a4, @"FBPCreateOption_DisallowCellularAccess");
          *(DerivedStorage + 33) = v26 == CFDictionaryGetValue(a4, @"FBPCreateOption_DisallowsExpensiveNetworkAccess");
          *(DerivedStorage + 34) = v26 == CFDictionaryGetValue(a4, @"FBPCreateOption_DisallowsConstrainedNetworkAccess");
          *(DerivedStorage + 304) = CFDictionaryGetValue(a4, @"FBPCreateOption_DisableNativeHTTPReads") == v26;
          v27 = CFDictionaryGetValue(a4, @"FBPCreateOption_CustomURLLoader");
          if (v27)
          {
            v27 = CFRetain(v27);
          }

          *(DerivedStorage + 312) = v27;
        }

        else
        {
          v25 = 0;
          v21 = 0;
        }

        if (*(DerivedStorage + 304))
        {
          if (!*(DerivedStorage + 312) || (Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]), (*(DerivedStorage + 360) = Mutable) == 0))
          {
            OUTLINED_FUNCTION_5_8();
            if (!FigSignalErrorAtGM())
            {
LABEL_42:
              if (v21)
              {
                CFRelease(v21);
              }

              goto LABEL_44;
            }

LABEL_49:
            CFRelease(0);
            goto LABEL_42;
          }
        }

        else if (!*(DerivedStorage + 136))
        {
          v38 = *(DerivedStorage + 128);
          if (!v38)
          {
            v38 = FigURLStorageSessionCopyGlobalSession();
            *(DerivedStorage + 128) = v38;
            if (!v38)
            {
              goto LABEL_49;
            }
          }

          a1 = *(DerivedStorage + 80);
          v39 = *(*(CMBaseObjectGetVTable() + 16) + 40);
          if (!v39 || v39(v38, a1, 0, DerivedStorage + 136))
          {
            goto LABEL_49;
          }
        }

        FigRCLCreateConfiguration(v21, @"kFigRemoteConfigurationLoaderStoreBagType_Pump", v25, (DerivedStorage + 296));
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        if (OUTLINED_FUNCTION_16_4(os_log_and_send_and_compose_flags_and_os_log_type, v30, v31, v32, v33, v34, v35, v36, v41, v42, v43, v44, a2, a6, a7, a4, *v50, v50[2], OS_LOG_TYPE_DEFAULT, 0))
        {
          v37 = a1;
        }

        else
        {
          v37 = a1 & 0xFFFFFFFE;
        }

        if (v37)
        {
          OUTLINED_FUNCTION_9_4();
        }

        OUTLINED_FUNCTION_7();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        *(DerivedStorage + 378) = FigRCLGetNumberWithDefault(*(DerivedStorage + 296), @"enableHTTP3Connection") != 0;
        *(DerivedStorage + 379) = FigRCLGetNumberWithDefault(*(DerivedStorage + 296), @"enableL4S") != 0;
        *(DerivedStorage + 24) = 0;
        *(DerivedStorage + 96) = CFRetain(v45);
        *(DerivedStorage + 64) = v47;
        *v13 = 0;
        goto LABEL_42;
      }
    }

    *(DerivedStorage + 80) = FigHTTPSchedulerRetain(Local);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_5_8();
  OUTLINED_FUNCTION_252();

  FigSignalErrorAtGM();
}

uint64_t FigICYBytePumpOpen(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _DWORD *a6, _BYTE *a7)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigRetainProxyLockMutex();
  if (FigRetainProxyIsInvalidated())
  {
    v13 = FigSignalErrorAtGM();
LABEL_10:
    v11 = v13;
    goto LABEL_6;
  }

  if (!*(DerivedStorage + 19) && !*(DerivedStorage + 18))
  {
    FigICY_CreateHTTPRequest(a1, *(DerivedStorage + 96), 0);
    if (v13)
    {
      goto LABEL_10;
    }
  }

  *(DerivedStorage + 18) = 1;
  *a6 = 0;
  v11 = 0;
  if (a7)
  {
    *a7 = 0;
  }

LABEL_6:
  FigRetainProxyUnlockMutex();
  return v11;
}

void FigICY_CreateHTTPRequest(uint64_t a1, const void *a2, int a3)
{
  v47 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = DerivedStorage;
  if (a3)
  {
    v8 = *(DerivedStorage + 200) & ~(*(DerivedStorage + 200) >> 63);
  }

  else
  {
    v8 = 0;
  }

  OUTLINED_FUNCTION_12_3();
  OUTLINED_FUNCTION_12_3();
  OUTLINED_FUNCTION_12_3();
  OUTLINED_FUNCTION_12_3();
  if (*(v7 + 379))
  {
    v10 = v9 | 0x10000;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(v7 + 104);
  if (v11)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, v11);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  v13 = MutableCopy;
  if (!MutableCopy)
  {
    goto LABEL_43;
  }

  CFDictionaryAddValue(MutableCopy, @"icy-metadata", @"1");
  if (!*(v7 + 304))
  {
    if (dword_1EAF16B70)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      if (OUTLINED_FUNCTION_16_4(os_log_and_send_and_compose_flags_and_os_log_type, v22, v23, v24, v25, v26, v27, v28, v37, v38, v39, v40, v41, v42, v43, v44, *v45, v45[2], OS_LOG_TYPE_DEFAULT, 0))
      {
        v29 = v3;
      }

      else
      {
        v29 = v3 & 0xFFFFFFFE;
      }

      if (v29)
      {
        OUTLINED_FUNCTION_9_4();
      }

      OUTLINED_FUNCTION_7();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v30 = *(v7 + 136);
    v31 = *(v7 + 120);
    v32 = *v7;
    v33 = *(v7 + 8);
    v34 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v34)
    {
      memset(v46, 0, 112);
      v20 = v34(v30, v32, 0, a2, 0, v13, v31, v10, v46, v8, 0, 0, FigICY_HTTPPumpFn, v33, v7 + 144, v7 + 152);
      v14 = 0;
      goto LABEL_32;
    }

    v14 = 0;
LABEL_31:
    v20 = -12782;
    goto LABEL_32;
  }

  *(v7 + 336) = 0;
  *(v7 + 344) = 0;
  *(v7 + 352) = 0;
  if (FigCustomURLRequestInfoCreateMutable() || FigCustomURLRequestInfoSetHTTPHeaders())
  {
    goto LABEL_43;
  }

  v14 = FigCFHTTPCreateUserAgent();
  if (FigCustomURLRequestInfoSetUserAgent() || v8 && (*(v7 + 336) = 1, *(v7 + 344) = v8, FigCustomURLRequestInfoSetByteRange()))
  {
    if (v14)
    {
      goto LABEL_42;
    }

    goto LABEL_43;
  }

  v15 = *(v7 + 328);
  if (v15)
  {
    CFRelease(v15);
    *(v7 + 328) = 0;
  }

  v16 = *(v7 + 312);
  v17 = *(v7 + 8);
  v18 = *(v7 + 80);
  v19 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v19)
  {
    goto LABEL_31;
  }

  v20 = v19(v16, 0, v17, v18, FigICY_CustomURLLoaderCallbackFn, v7 + 320);
LABEL_32:
  if (v8)
  {
    if (v20)
    {
      goto LABEL_34;
    }
  }

  else
  {
    *(v7 + 200) = 0;
    *(v7 + 224) = 0;
    *(v7 + 248) = 0;
    v35 = *(v7 + 216);
    if (v35)
    {
      CFRelease(v35);
      *(v7 + 216) = 0;
    }

    *(v7 + 232) = 0;
    if (v20)
    {
LABEL_34:
      if (!v14)
      {
        goto LABEL_43;
      }

LABEL_42:
      CFRelease(v14);
      goto LABEL_43;
    }
  }

  v36 = *(v7 + 96);
  if (v36)
  {
    CFRelease(v36);
  }

  *(v7 + 96) = CFRetain(a2);
  FigHTTPCreateTimer(*(v7 + 8), fbp_NetworkInactivityTimer, *(v7 + 80), (v7 + 48), 15.0);
  if (v14)
  {
    goto LABEL_42;
  }

LABEL_43:
  if (v13)
  {
    CFRelease(v13);
  }

  OUTLINED_FUNCTION_252();
}

uint64_t FigICY_CustomURLLoaderCallbackFn(uint64_t a1, uint64_t a2, const void *a3, void *a4, char a5)
{
  theBuffer = 0;
  v8 = FigICY_LockAndCopyPump(a1, a2);
  if (!v8)
  {
    goto LABEL_39;
  }

  v9 = v8;
  v10 = a5 & 1;
  if (a4)
  {
    v11 = CFRetain(a4);
  }

  else
  {
    v11 = 0;
  }

  theBuffer = v11;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v13 = DerivedStorage;
  v14 = v10;
  if (a3)
  {
    v14 = v10;
    if (!*(DerivedStorage + 328))
    {
      *(DerivedStorage + 328) = CFRetain(a3);
      value = 0;
      theDict = 0;
      if (*(v13 + 336))
      {
        v28 = 0;
        *(v13 + 337) = 1;
        FigCustomURLResponseInfoCopyHTTPHeaders();
        if (theDict)
        {
          if (CFDictionaryGetValueIfPresent(theDict, @"Content-Range", &value) && FigCFHTTPGetContentRangeFromHeaderString(value, &v28, 0, 0, 0) && v28 == *(v13 + 344))
          {
            *(v13 + 337) = 0;
          }

          if (theDict)
          {
            CFRelease(theDict);
          }
        }
      }

      v14 = 1;
    }
  }

  v15 = 0;
  if (a4 && *(v13 + 337))
  {
    if (*(v13 + 352) >= *(v13 + 344))
    {
      v15 = 0;
      *(v13 + 337) = 0;
      if (v11)
      {
        goto LABEL_24;
      }

LABEL_33:
      v21 = 0;
      v19 = 0;
      v20 = 0;
      goto LABEL_34;
    }

    DataLength = CMBlockBufferGetDataLength(a4);
    v17 = *(v13 + 352);
    v18 = *(v13 + 344) - v17;
    *(v13 + 352) = v17 + DataLength;
    if (v11)
    {
      CFRelease(v11);
      theBuffer = 0;
    }

    if (DataLength <= v18)
    {
      v21 = 0;
      v19 = 0;
      v20 = 0;
      v15 = 0;
      if (v14)
      {
        goto LABEL_41;
      }

      goto LABEL_35;
    }

    v15 = CMBlockBufferCreateWithBufferReference(*MEMORY[0x1E695E480], a4, v18, DataLength - v18, 0, &theBuffer);
    v14 = 1;
    v11 = theBuffer;
  }

  if (!v11)
  {
    goto LABEL_33;
  }

LABEL_24:
  v19 = CMBlockBufferGetDataLength(v11);
  v20 = theBuffer;
  v21 = theBuffer != 0;
  if (*(v13 + 19) && theBuffer)
  {
    CFArrayAppendValue(*(v13 + 360), theBuffer);
    v22 = *(v13 + 368) + CMBlockBufferGetDataLength(theBuffer);
    *(v13 + 368) = v22;
    if (v22 > 0x100000)
    {
      v23 = *(v13 + 312);
      v24 = *(v13 + 320);
      v25 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (v25)
      {
        v25(v23, v24);
      }

      *(v13 + 320) = 0;
      *(v13 + 376) = 1;
    }

    if (v10)
    {
      *(v13 + 377) = 1;
    }

    goto LABEL_36;
  }

LABEL_34:
  if (v14)
  {
LABEL_41:
    FigICY_HTTPCommonCallback(v9, v20, 0, v19, v10, v15);
    goto LABEL_36;
  }

LABEL_35:
  if (v21)
  {
    goto LABEL_41;
  }

LABEL_36:
  if (theBuffer)
  {
    CFRelease(theBuffer);
  }

  CFRelease(v9);
LABEL_39:
  FigRetainProxyUnlockMutex();
  return FigRetainProxyRelease();
}

uint64_t FigICY_HTTPPumpFn(uint64_t a1, int a2, uint64_t a3, OpaqueCMBlockBuffer *a4, size_t a5, size_t a6, unsigned int a7, uint64_t a8)
{
  v13 = FigICY_LockAndCopyPump(a3, a2);
  if (v13)
  {
    v14 = v13;
    FigICY_HTTPCommonCallback(v13, a4, a5, a6, (a7 >> 1) & 1, a8);
    CFRelease(v14);
  }

  FigRetainProxyUnlockMutex();

  return FigRetainProxyRelease();
}

const void *FigICY_LockAndCopyPump(uint64_t a1, uint64_t a2)
{
  FigRetainProxyRetain();
  FigRetainProxyLockMutex();
  if (FigRetainProxyIsInvalidated())
  {
    return 0;
  }

  Owner = FigRetainProxyGetOwner();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 304))
  {
    result = 0;
    if (!Owner)
    {
      return result;
    }

    v6 = *(DerivedStorage + 320);
  }

  else
  {
    result = 0;
    if (!Owner)
    {
      return result;
    }

    v6 = *(DerivedStorage + 152);
  }

  if (v6 == a2)
  {
    CFRetain(Owner);
    return Owner;
  }

  return result;
}

void FigICY_HTTPCommonCallback(uint64_t a1, OpaqueCMBlockBuffer *a2, size_t a3, size_t a4, int a5, uint64_t a6)
{
  HIDWORD(v132) = a5;
  destination[16] = *MEMORY[0x1E69E9840];
  blockBufferOut = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  appended = a6;
  HIDWORD(v130) = a6;
  if (a6)
  {
    goto LABEL_195;
  }

  *(DerivedStorage + 40) = FigGetUpTimeNanoseconds();
  *(DerivedStorage + 56) = 0;
  if (HIDWORD(v132))
  {
    FigHTTPStopAndReleaseTimer((DerivedStorage + 48));
  }

  if (*(DerivedStorage + 19))
  {
    *(DerivedStorage + 288) = FigGetUpTimeNanoseconds();
  }

  if (!a2)
  {
    appended = 0;
    goto LABEL_155;
  }

  v6 = *MEMORY[0x1E695E480];
  appended = CMBlockBufferCreateContiguous(*MEMORY[0x1E695E480], a2, *MEMORY[0x1E695E480], 0, a3, a4, 2u, &blockBufferOut);
  if (!appended)
  {
    a2 = blockBufferOut;
  }

  DataLength = CMBlockBufferGetDataLength(a2);
  v15 = DataLength;
  v16 = *(DerivedStorage + 216);
  if (v16 && DataLength)
  {
    v17 = CMBlockBufferGetDataLength(a2);
    appended = CMBlockBufferAppendBufferReference(v16, a2, 0, v17, 0);
    v15 = CMBlockBufferGetDataLength(*(DerivedStorage + 216));
  }

  else if (a2 && DataLength)
  {
    *(DerivedStorage + 216) = CFRetain(a2);
    *(DerivedStorage + 232) = 0;
  }

  if (HIDWORD(v132))
  {
    v18 = 0;
  }

  else
  {
    v18 = v15 > 0x10000;
  }

  v19 = v18;
  HIDWORD(v123) = v19;
  v128 = 0x1F0B1FC18;
  v127 = 0x1F0B1FC38;
  v129 = @"FHRP_HTTPFinalURL";
  inTagClass = *MEMORY[0x1E6963718];
  v124 = @"FHRP_PayloadLength";
  v125 = @"FHRP_HTTPResponseHeaders";
LABEL_23:
  while (2)
  {
    switch(*(DerivedStorage + 224))
    {
      case 0:
        HIDWORD(v133) = 0;
        url = 0;
        if (*(DerivedStorage + 304))
        {
          if (!*(DerivedStorage + 328))
          {
            appended = 4294954651;
            goto LABEL_195;
          }

          v20 = FigCustomURLResponseInfoCopyFinalURL();
        }

        else
        {
          v67 = *(*(OUTLINED_FUNCTION_17_3() + 8) + 48);
          if (!v67)
          {
            appended = 4294954514;
            goto LABEL_195;
          }

          v20 = v67(appended, @"FHRP_HTTPFinalURL", 0, &url);
        }

        appended = v20;
        if (v20)
        {
          goto LABEL_195;
        }

        if (!url)
        {
          goto LABEL_83;
        }

        appended = CFURLCopyPathExtension(url);
        CFRelease(url);
        if (!appended)
        {
          goto LABEL_83;
        }

        if (CFStringCompare(appended, @"pls", 1uLL) == kCFCompareEqualTo || CFStringCompare(appended, @"m3u8", 1uLL) == kCFCompareEqualTo || CFStringCompare(appended, @"m3u", 1uLL) == kCFCompareEqualTo)
        {
          CFRelease(appended);
          if (*(DerivedStorage + 168))
          {
            goto LABEL_192;
          }

          v58 = OUTLINED_FUNCTION_14_2();
          if (v58)
          {
            goto LABEL_193;
          }

          v74 = *(DerivedStorage + 280) + 1;
          *(DerivedStorage + 280) = v74;
          if (v74 >= 2)
          {
            goto LABEL_192;
          }

          goto LABEL_117;
        }

        CFRelease(appended);
LABEL_83:
        destination[0] = 0;
        if (*(DerivedStorage + 304))
        {
          if (!*(DerivedStorage + 328))
          {
            goto LABEL_110;
          }

          appended = FigCustomURLResponseInfoCopyUniversalTypeIdentifier();
          v68 = destination[0];
          if (!appended)
          {
            v69 = UTTypeCopyPreferredTagWithClass(destination[0], inTagClass);
            v68 = destination[0];
            if (!destination[0])
            {
              goto LABEL_104;
            }

            goto LABEL_102;
          }

          v69 = 0;
          if (destination[0])
          {
            goto LABEL_102;
          }
        }

        else
        {
          *cf = 0;
          if (*(*(OUTLINED_FUNCTION_17_3() + 8) + 48))
          {
            v75 = OUTLINED_FUNCTION_10_4();
            appended = v76(v75);
            if (!appended)
            {
              v69 = FigCFHTTPCopyMimeTypeFromHTTPResponse(*cf);
              v68 = *cf;
LABEL_102:
              CFRelease(v68);
              goto LABEL_104;
            }

            v69 = 0;
          }

          else
          {
            v69 = 0;
            appended = 4294954514;
          }
        }

LABEL_104:
        if (appended)
        {
          goto LABEL_195;
        }

        if (v69)
        {
          if (CFStringCompare(v69, @"audio/mpegurl", 1uLL) == kCFCompareEqualTo || CFStringCompare(v69, @"audio/x-mpegurl", 1uLL) == kCFCompareEqualTo || CFStringCompare(v69, @"audio/scpls", 1uLL) == kCFCompareEqualTo)
          {
            CFRelease(v69);
LABEL_115:
            if (*(DerivedStorage + 168))
            {
LABEL_192:
              OUTLINED_FUNCTION_43_1();
              v58 = FigSignalErrorAtGM();
LABEL_193:
              appended = v58;
              goto LABEL_194;
            }

            v58 = OUTLINED_FUNCTION_14_2();
            if (v58)
            {
              goto LABEL_193;
            }

LABEL_117:
            appended = 0;
            *(DerivedStorage + 224) = 5;
            continue;
          }

          appended = CFStringCompare(v69, @"audio/x-scpls", 1uLL);
          CFRelease(v69);
          if (!appended)
          {
            goto LABEL_115;
          }
        }

LABEL_110:
        *(DerivedStorage + 208) = 0;
        if (*(DerivedStorage + 304))
        {
          destination[0] = 0;
          if (*(DerivedStorage + 328) && !FigCustomURLResponseInfoGetContentLength())
          {
            goto LABEL_113;
          }
        }

        else
        {
          destination[0] = 0;
          *cf = 0;
          v77 = *(*(OUTLINED_FUNCTION_17_3() + 8) + 48);
          if (v77 && !v77(appended, @"FHRP_PayloadLength", 0, cf) && CFNumberGetValue(*cf, kCFNumberSInt64Type, destination))
          {
LABEL_113:
            *(DerivedStorage + 208) = destination[0];
          }
        }

        destination[0] = 0;
        *cf = 0;
        v133 = 0;
        if (*(DerivedStorage + 304))
        {
          if (*(DerivedStorage + 328) && !FigCustomURLResponseInfoCopyHTTPHeaders())
          {
            FigCFDictionaryGetValueForCaseInsensitiveKeyIfPresent();
          }
        }

        else if (*(*(OUTLINED_FUNCTION_17_3() + 8) + 48))
        {
          v78 = OUTLINED_FUNCTION_10_4();
          if (!v79(v78))
          {
            v133 = CFHTTPMessageCopyHeaderFieldValue(*cf, @"icy-metaint");
          }
        }

        if (destination[0])
        {
          CFRelease(destination[0]);
        }

        if (*cf)
        {
          CFRelease(*cf);
        }

        if (v133)
        {
          *(DerivedStorage + 60) = 1;
          fbp_SetMetadataPeriod(DerivedStorage, v133);
          CFRelease(v133);
          v56 = 0;
          *(DerivedStorage + 224) = 2;
        }

        else if (fbp_CopyChars(DerivedStorage, destination, 0xCuLL))
        {
          if (!strncasecmp(destination, "ICY 200 OK\r\n", 0xCuLL))
          {
            fbp_AdvanceChars(DerivedStorage, 0xCuLL);
            v80 = 1;
          }

          else
          {
            v80 = 2;
          }

          v56 = 0;
          *(DerivedStorage + 224) = v80;
        }

        else
        {
LABEL_90:
          v56 = 1;
        }

LABEL_133:
        appended = 0;
        if (v56)
        {
          goto LABEL_148;
        }

        continue;
      case 1:
        *cf = 0;
        LOBYTE(url) = 0;
        break;
      case 2:
        v39 = *(DerivedStorage + 216);
        if (!v39)
        {
          goto LABEL_192;
        }

        v40 = CMBlockBufferGetDataLength(v39);
        v41 = *(DerivedStorage + 232);
        v42 = *(DerivedStorage + 240);
        v43 = v40 - v41;
        if (!v42)
        {
          v70 = OUTLINED_FUNCTION_298();
          if (fbp_SendDataCallback(v70, v71, v72, a2, 0, v73, MEMORY[0x1E6960C70], 0))
          {
            goto LABEL_210;
          }

          *(DerivedStorage + 232) += v43;
          OUTLINED_FUNCTION_2_15(*(DerivedStorage + 192), vdupq_n_s64(v43));
          goto LABEL_90;
        }

        destination[0] = 0;
        v44 = *(DerivedStorage + 248);
        v45 = v42 - v44;
        if (v42 - v44 >= v43)
        {
          v46 = v40 - v41;
        }

        else
        {
          v46 = v42 - v44;
        }

        PlaylistFileParserFromData = CMBlockBufferCreateWithBufferReference(*DerivedStorage, *(DerivedStorage + 216), v41, v46, 0, destination);
        if (PlaylistFileParserFromData)
        {
          goto LABEL_188;
        }

        v47 = OUTLINED_FUNCTION_3_10();
        v53 = fbp_SendDataCallback(v47, v48, v49, v50, v51, v52, MEMORY[0x1E6960C70], 0);
        if (destination[0])
        {
          CFRelease(destination[0]);
        }

        if (v53)
        {
          goto LABEL_210;
        }

        *(DerivedStorage + 248) += v46;
        *(DerivedStorage + 232) += v46;
        OUTLINED_FUNCTION_2_15(*(DerivedStorage + 192), vdupq_n_s64(v46));
        if (v54 >= v55)
        {
          *(DerivedStorage + 224) = 3;
          *(DerivedStorage + 248) = 0;
        }

        v56 = v43 <= v45;
        goto LABEL_133;
      case 3:
        LOBYTE(destination[0]) = 0;
        *(DerivedStorage + 248) = 0;
        v57 = *(DerivedStorage + 216);
        if (!v57)
        {
          goto LABEL_192;
        }

        v58 = CMBlockBufferCopyDataBytes(v57, *(DerivedStorage + 232), 1uLL, destination);
        if (v58)
        {
          goto LABEL_193;
        }

        v59 = LOBYTE(destination[0]);
        *(DerivedStorage + 256) = LOBYTE(destination[0]);
        if (v59)
        {
          v60 = *(DerivedStorage + 272);
          if (v60)
          {
            CFAllocatorDeallocate(v6, v60);
            *(DerivedStorage + 272) = 0;
            v59 = *(DerivedStorage + 256);
          }

          *(DerivedStorage + 256) = 16 * v59;
          v61 = MEMORY[0x19A8CC720](v6, (16 * v59) | 1, 0x100004077774924, 0);
          *(DerivedStorage + 272) = v61;
          if (v61)
          {
            *(v61 + *(DerivedStorage + 256)) = 0;
          }

          *(DerivedStorage + 264) = 0;
          v62 = 4;
        }

        else
        {
          v62 = 2;
        }

        *(DerivedStorage + 224) = v62;
        v28 = *(DerivedStorage + 232) + 1;
        *(DerivedStorage + 232) = v28;
        OUTLINED_FUNCTION_2_15(*(DerivedStorage + 192), vdupq_n_s64(1uLL));
        v38 = CMBlockBufferGetDataLength(*(DerivedStorage + 216));
        appended = 0;
        goto LABEL_93;
      case 4:
        v21 = *(DerivedStorage + 216);
        if (!v21)
        {
          goto LABEL_192;
        }

        v22 = CMBlockBufferGetDataLength(v21);
        v23 = *(DerivedStorage + 232);
        v24 = *(DerivedStorage + 256);
        v25 = *(DerivedStorage + 264);
        if (v22 - v23 >= v24 - v25)
        {
          v26 = v24 - v25;
        }

        else
        {
          v26 = v22 - v23;
        }

        v27 = *(DerivedStorage + 272);
        if (!v27)
        {
          goto LABEL_34;
        }

        appended = CMBlockBufferCopyDataBytes(*(DerivedStorage + 216), v23, v26, (v27 + v25));
        if (appended)
        {
          goto LABEL_195;
        }

        v23 = *(DerivedStorage + 232);
        v24 = *(DerivedStorage + 256);
        v25 = *(DerivedStorage + 264);
LABEL_34:
        v28 = v23 + v26;
        *(DerivedStorage + 232) = v23 + v26;
        v29 = v25 + v26;
        *(DerivedStorage + 264) = v29;
        if (v29 < v24)
        {
          goto LABEL_39;
        }

        *(DerivedStorage + 224) = 2;
        v30 = *(DerivedStorage + 272);
        if (!v30)
        {
          goto LABEL_39;
        }

        destination[0] = 0;
        PlaylistFileParserFromData = CMBlockBufferCreateWithMemoryBlock(*DerivedStorage, v30, v24 + 1, v6, 0, 0, v24 + 1, 0, destination);
        if (PlaylistFileParserFromData)
        {
          goto LABEL_188;
        }

        *(DerivedStorage + 272) = 0;
        CMSetAttachment(destination[0], @"FBPAKey_TimedData", @"FBPA_TimedData_ICY", 0);
        v32 = OUTLINED_FUNCTION_3_10();
        appended = fbp_SendDataCallback(v32, v33, v34, v35, v36, v37, MEMORY[0x1E6960C70], 0);
        CFRelease(destination[0]);
        if (appended)
        {
          goto LABEL_210;
        }

        v28 = *(DerivedStorage + 232);
LABEL_39:
        OUTLINED_FUNCTION_2_15(*(DerivedStorage + 192), vdupq_n_s64(v26));
        v38 = CMBlockBufferGetDataLength(*(DerivedStorage + 216));
LABEL_93:
        if (v28 >= v38)
        {
          goto LABEL_148;
        }

        continue;
      case 5:
        if (!HIDWORD(v123))
        {
          goto LABEL_148;
        }

        goto LABEL_192;
      default:
        continue;
    }

    break;
  }

  do
  {
    if (!fbp_CopyChars(DerivedStorage, destination, 0x20uLL))
    {
      goto LABEL_146;
    }

    if (!strncasecmp(destination, "icy-metaint:", 0xCuLL))
    {
      appended = fbp_GrabHeaderPayload(DerivedStorage, 0xCuLL, cf, &url);
      if (!appended)
      {
        v63 = *cf;
        if (*cf)
        {
          *(DerivedStorage + 60) = 1;
          fbp_SetMetadataPeriod(DerivedStorage, v63);
          CFRelease(*cf);
          appended = 0;
        }
      }
    }

    else
    {
      if (!strncasecmp(destination, "\r\n", 2uLL))
      {
        fbp_AdvanceChars(DerivedStorage, 2uLL);
        *(DerivedStorage + 224) = 2;
LABEL_72:
        appended = 0;
        v64 = (DerivedStorage + 232);
        v65 = vld1q_dup_f64(v64);
        OUTLINED_FUNCTION_2_15(*(DerivedStorage + 192), v65);
        if (v66)
        {
LABEL_148:
          v81 = *(DerivedStorage + 216);
          if (!v81)
          {
            goto LABEL_155;
          }

          v82 = *(DerivedStorage + 232);
          if (v82 >= v15)
          {
            CFRelease(*(DerivedStorage + 216));
            *(DerivedStorage + 216) = 0;
            goto LABEL_155;
          }

          destination[0] = 0;
          PlaylistFileParserFromData = CMBlockBufferCreateWithBufferReference(*DerivedStorage, v81, v82, 0, 0, destination);
          if (PlaylistFileParserFromData)
          {
            goto LABEL_188;
          }

          v83 = *(DerivedStorage + 216);
          if (v83)
          {
            CFRelease(v83);
          }

          appended = 0;
          *(DerivedStorage + 216) = destination[0];
          *(DerivedStorage + 232) = 0;
LABEL_155:
          if (HIDWORD(v132))
          {
            if (*(DerivedStorage + 224) != 5)
            {
              goto LABEL_165;
            }

            destination[0] = 0;
            PlaylistFileParserFromData = CreatePlaylistFileParserFromData(*(DerivedStorage + 216), 0, destination);
            if (PlaylistFileParserFromData)
            {
              goto LABEL_188;
            }

            v84 = destination[0];
            if (destination[0])
            {
              v85 = *(DerivedStorage + 168);
              if (v85)
              {
                PlaylistFileParserDestroy(v85);
                v84 = destination[0];
              }

              *(DerivedStorage + 168) = v84;
              *(DerivedStorage + 176) = 0;
            }

            v86 = *(DerivedStorage + 216);
            if (v86)
            {
              CFRelease(v86);
            }

            *(DerivedStorage + 216) = 0;
            *(DerivedStorage + 232) = 0;
LABEL_165:
            v87 = *(DerivedStorage + 168);
            if (v87 && (v88 = PlaylistFileParserItemCount(v87), (v89 = *(DerivedStorage + 168)) != 0))
            {
              v90 = *(DerivedStorage + 176);
              if (v90 < v88)
              {
                destination[0] = 0;
                PlaylistFileParserFromData = PlaylistFileParserCopyItem(v89, v90, destination);
                if (!PlaylistFileParserFromData)
                {
                  ++*(DerivedStorage + 176);
                  FigICY_InvalidateHTTP(DerivedStorage);
                  *(DerivedStorage + 20) = 0;
                  v6 = CFURLCreateWithString(*MEMORY[0x1E695E480], destination[0], 0);
                  CFRelease(destination[0]);
                  if (!v6)
                  {
                    *(DerivedStorage + 224) = 0;
                    *(DerivedStorage + 21) = 1;
                    goto LABEL_210;
                  }

                  appended = FigICY_CreateHTTPRequest(a1, v6, 0);
                  CFRelease(v6);
                  *(DerivedStorage + 224) = 0;
                  *(DerivedStorage + 21) = 1;
                  goto LABEL_194;
                }

LABEL_188:
                appended = PlaylistFileParserFromData;
                goto LABEL_195;
              }

              if (dword_1EAF16B70)
              {
                LODWORD(url) = 0;
                v94 = OUTLINED_FUNCTION_8_3();
                if (OUTLINED_FUNCTION_15_3(v94, v95, v96, v97, v98, v99, v100, v101, v122, v123, v124, v125, v126, v127, v128, v129, v130, inTagClass, v132, OS_LOG_TYPE_DEFAULT, SHIDWORD(v133), url))
                {
                  v102 = v6;
                }

                else
                {
                  v102 = v6 & 0xFFFFFFFE;
                }

                if (v102)
                {
                  v103 = *(DerivedStorage + 176);
                  *cf = 136315650;
                  *&cf[4] = "FigICY_HTTPCommonCallback";
                  v137 = 1024;
                  v138 = v103;
                  v139 = 1024;
                  v140 = v88;
                  OUTLINED_FUNCTION_66();
                  OUTLINED_FUNCTION_7_4();
                  _os_log_send_and_compose_impl();
                }

                goto LABEL_185;
              }
            }

            else if (dword_1EAF16B70)
            {
              LODWORD(url) = 0;
              v91 = OUTLINED_FUNCTION_8_3();
              v92 = url;
              if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
              {
                v93 = v92;
              }

              else
              {
                v93 = v92 & 0xFFFFFFFE;
              }

              if (v93)
              {
                *cf = 136315138;
                *&cf[4] = "FigICY_HTTPCommonCallback";
                OUTLINED_FUNCTION_66();
                OUTLINED_FUNCTION_7_4();
                _os_log_send_and_compose_impl();
              }

LABEL_185:
              OUTLINED_FUNCTION_7();
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            v104 = OUTLINED_FUNCTION_298();
            v109 = 0;
            goto LABEL_209;
          }

LABEL_194:
          if (appended)
          {
            goto LABEL_195;
          }

          goto LABEL_210;
        }

        goto LABEL_23;
      }

      appended = fbp_GrabHeaderPayload(DerivedStorage, 0, 0, &url);
    }
  }

  while (!url && !appended);
  if (!appended)
  {
    if (!url)
    {
      goto LABEL_72;
    }

LABEL_146:
    appended = 0;
    OUTLINED_FUNCTION_2_15(*(DerivedStorage + 192), vdupq_n_s64(v15));
    goto LABEL_148;
  }

LABEL_195:
  v110 = *(DerivedStorage + 216);
  if (v110)
  {
    CFRelease(v110);
    *(DerivedStorage + 216) = 0;
  }

  *(DerivedStorage + 232) = 0;
  if (HIDWORD(v132) || HIDWORD(v130))
  {
    FigICY_InvalidateHTTP(DerivedStorage);
    if (HIDWORD(v130))
    {
      v111 = OUTLINED_FUNCTION_298();
      fbp_CancelAndRetryRequest(v111, v112, appended);
      goto LABEL_210;
    }
  }

  if (dword_1EAF16B70)
  {
    LODWORD(url) = 0;
    v113 = OUTLINED_FUNCTION_8_3();
    if (OUTLINED_FUNCTION_15_3(v113, v114, v115, v116, v117, v118, v119, v120, v122, v123, v124, v125, v126, v127, v128, v129, v130, inTagClass, v132, OS_LOG_TYPE_DEFAULT, SHIDWORD(v133), url))
    {
      v121 = v6;
    }

    else
    {
      v121 = v6 & 0xFFFFFFFE;
    }

    if (v121)
    {
      *cf = 136315394;
      *&cf[4] = "FigICY_HTTPCommonCallback";
      v137 = 1024;
      v138 = appended;
      OUTLINED_FUNCTION_66();
      OUTLINED_FUNCTION_7_4();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v104 = OUTLINED_FUNCTION_298();
  v109 = appended;
LABEL_209:
  fbp_SendDataCallback(v104, v105, v106, 0, 2, v107, v108, v109);
LABEL_210:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }
}

uint64_t fbp_CopyChars(uint64_t result, void *a2, size_t a3)
{
  if (result)
  {
    v3 = result;
    result = *(result + 216);
    if (result)
    {
      DataLength = CMBlockBufferGetDataLength(result);
      v7 = *(v3 + 232);
      if (DataLength - v7 < a3)
      {
        return 0;
      }

      else
      {
        if (DataLength != v7)
        {
          CMBlockBufferCopyDataBytes(*(v3 + 216), v7, a3, a2);
        }

        return 1;
      }
    }
  }

  return result;
}

void fbp_AdvanceChars(uint64_t a1, size_t a2)
{
  if (a1)
  {
    v3 = *(a1 + 216);
    if (v3)
    {
      DataLength = CMBlockBufferGetDataLength(v3);
      v6 = *(a1 + 232);
      if (DataLength - v6 <= a2)
      {
        v8 = *(a1 + 216);
        if (v8)
        {
          CFRelease(v8);
        }

        v7 = 0;
        *(a1 + 216) = 0;
      }

      else
      {
        v7 = v6 + a2;
      }

      *(a1 + 232) = v7;
    }
  }
}

uint64_t FigICYBytePumpCopyProperty_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigICYBytePumpClientHasEnough_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigICYBytePumpClientNeedsMore_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigICYBytePumpSetCallback_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigICYBytePumpSetPlayerRate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t patchMediaDataAtomSizeIfNeeded(uint64_t a1)
{
  if (*(a1 + 108) != 1)
  {
    return 0;
  }

  v7[3] = v1;
  v7[4] = v2;
  v7[0] = 0;
  v4 = *(a1 + 40);
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v5)
  {
    return 4294954514;
  }

  result = v5(v4, 0, v7);
  if (!result)
  {
    return patchMediaDataAtomSize(a1, *(a1 + 112), v7[0] - *(a1 + 112), *(a1 + 106));
  }

  return result;
}

uint64_t writeFreeAtom(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 <= 7)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();

    return FigSignalErrorAtGM();
  }

  else
  {
    v10[0] = bswap32(a3);
    v10[1] = 1701147238;
    v9 = 0;
    v6 = *(a1 + 40);
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v7)
    {
      result = v7(v6, 8, a2, v10, &v9);
      if (!result)
      {
        if (v9 == 8)
        {
          return writeZeroData(a1, *(a1 + 40), a2 + 8, a3 - 8);
        }

        else
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_0_4();
          return FigSignalErrorAtGM();
        }
      }
    }

    else
    {
      return 4294954514;
    }
  }

  return result;
}

uint64_t appendFileTypeAtomAndMediaDataAtomHeaderAndPaddingIfNeeded(uint64_t a1, CMBlockBufferRef a2)
{
  cf = 0;
  blockBufferOut = 0;
  v4 = CMBlockBufferCreateEmpty(*MEMORY[0x1E695E480], 3u, 0, &blockBufferOut);
  if (v4)
  {
    v19 = v4;
    goto LABEL_35;
  }

  FileTypeAtomIfNeeded = createFileTypeAtomIfNeeded(a1, &cf);
  if (FileTypeAtomIfNeeded)
  {
    goto LABEL_38;
  }

  v6 = cf;
  if (cf)
  {
    FileTypeAtomIfNeeded = OUTLINED_FUNCTION_1_14(blockBufferOut, cf);
    if (FileTypeAtomIfNeeded)
    {
      goto LABEL_38;
    }

    DataLength = CMBlockBufferGetDataLength(v6);
  }

  else
  {
    DataLength = 0;
  }

  v25 = 0;
  if (*(a1 + 105) != 1 || *(a1 + 108))
  {
    v10 = 0;
    goto LABEL_40;
  }

  FileTypeAtomIfNeeded = MovieHeaderMakerCopyMediaDataAtomHeaderAsBlockBuffer(*(a1 + 16), *(a1 + 104), *(a1 + 136), &v25);
  if (!FileTypeAtomIfNeeded)
  {
    v8 = *(a1 + 104) != 0;
    if (*(a1 + 136))
    {
      v9 = 2;
    }

    else
    {
      v9 = 1;
    }

    *(a1 + 108) = v9;
    v10 = v25;
    if (v25)
    {
      v22 = 0;
      v11 = *(a1 + 40);
      v12 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (!v12)
      {
        v19 = 4294954514;
        goto LABEL_31;
      }

      PreferredChunkAlignment = v12(v11, 0, &v22);
      if (PreferredChunkAlignment)
      {
        goto LABEL_41;
      }

      v14 = 8 * v8 + DataLength + v22;
      *(a1 + 112) = v14;
      if (!*(a1 + 120))
      {
        *(a1 + 128) = v14;
        *(a1 + 120) = 1;
      }

      PreferredChunkAlignment = OUTLINED_FUNCTION_1_14(blockBufferOut, v10);
      if (PreferredChunkAlignment)
      {
        goto LABEL_41;
      }

      if (!a2)
      {
        goto LABEL_26;
      }

      v15 = CMBlockBufferGetDataLength(v10);
      v16 = v22;
      v21 = 0;
      PreferredChunkAlignment = MovieSampleDataWriterTrackGetPreferredChunkAlignment(a1, a2, &v21);
      if (PreferredChunkAlignment)
      {
LABEL_41:
        v19 = PreferredChunkAlignment;
LABEL_31:
        if (v10)
        {
          CFRelease(v10);
        }

        goto LABEL_33;
      }

      v25 = 0;
      if (v21 >= 2)
      {
        v17 = (v15 + DataLength + v16) % v21;
        if (v17)
        {
          PreferredChunkAlignment = createPadding(a1, v21 - v17, &v25);
          if (!PreferredChunkAlignment)
          {
            a2 = v25;
            if (v25)
            {
              appended = OUTLINED_FUNCTION_1_14(blockBufferOut, v25);
              if (appended)
              {
LABEL_27:
                v19 = appended;
                if (a2)
                {
                  CFRelease(a2);
                }

                goto LABEL_31;
              }
            }

LABEL_26:
            appended = byteStreamAppendBlockBuffer(*(a1 + 40), blockBufferOut);
            goto LABEL_27;
          }

          goto LABEL_41;
        }
      }
    }

LABEL_40:
    a2 = 0;
    goto LABEL_26;
  }

LABEL_38:
  v19 = FileTypeAtomIfNeeded;
LABEL_33:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_35:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  return v19;
}

uint64_t checkIfMediaDataAtomSizeExceededPredeterminedSizeIfNeeded(uint64_t *a1)
{
  if (!a1[17])
  {
    return 0;
  }

  v3 = 0;
  result = MediaDataChunkWriterGetEntireLength(a1[4], a1[5], &v3);
  if (!result)
  {
    if (v3 - a1[14] > a1[17])
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_4();
      return FigSignalErrorAtGM();
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t writeZeroData(uint64_t a1, uint64_t a2, uint64_t a3, size_t a4)
{
  v8 = 0;
  if (!a4)
  {
    return 0;
  }

  v4 = createPadding(a1, a4, &v8);
  v5 = v8;
  if (!v4)
  {
    v4 = CMByteStreamWriteBlockBuffer();
    if (!v4)
    {
      fig_log_get_emitter();
      v4 = FigSignalErrorAtGM();
    }
  }

  v7 = v4;
  if (v5)
  {
    CFRelease(v5);
  }

  return v7;
}

uint64_t createFileTypeAtomIfNeeded(uint64_t a1, CMBlockBufferRef *a2)
{
  v6 = 0;
  if (*(a1 + 72) != 1 || *(a1 + 73))
  {
    v5 = 0;
  }

  else
  {
    result = MovieHeaderMakerCopyFileTypeAtomAsBlockBuffer(*(a1 + 16), *(a1 + 80), *(a1 + 88), *(a1 + 96), &v6);
    if (result)
    {
      return result;
    }

    *(a1 + 73) = 1;
    v5 = v6;
  }

  result = 0;
  *a2 = v5;
  return result;
}

uint64_t byteStreamAppendBlockBuffer(int a1, CMBlockBufferRef theBuffer)
{
  result = CMBlockBufferGetDataLength(theBuffer);
  if (result)
  {
    result = CMByteStreamAppendBlockBuffer();
    if (!result)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_4();
      return FigSignalErrorAtGM();
    }
  }

  return result;
}

uint64_t MovieSampleDataWriterCreate_cold_2(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t MovieSampleDataWriterCreate_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieSampleDataWriterCreate_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieSampleDataWriterCreate_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieSampleDataWriterAddTrack_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieSampleDataWriterAddTrack_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieSampleDataWriterAddTrack_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieSampleDataWriterAddTrack_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieSampleDataWriterSetThreadPriorityAndClientPID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieSampleDataWriterSetThreadPriorityAndClientPID_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieSampleDataWriterSetThreadPriorityAndClientPID_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieSampleDataWriterFlushPendingAsynchronousTasks_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieSampleDataWriterPatchMediaDataAtomSizeIfNeeded_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieSampleDataWriterPatchMediaDataAtomSizeIfNeeded_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieSampleDataWriterGetFirstMediaDataAtomOffset_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieSampleDataWriterGetFirstMediaDataAtomOffset_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieSampleDataWriterGetFirstMediaDataAtomOffset_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieSampleDataWriterPatchFirstMediaDataAtomSize_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieSampleDataWriterPatchFirstMediaDataAtomSize_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieSampleDataWriterPatchFirstMediaDataAtomSize_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieSampleDataWriterPatchFirstMediaDataAtomSize_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t patchMediaDataAtomSize_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t patchMediaDataAtomSize_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t patchMediaDataAtomSize_cold_3(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t MovieSampleDataWriterSetPredeterminedMediaDataAtomSize_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieSampleDataWriterSetPredeterminedMediaDataAtomSize_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieSampleDataWriterSetPredeterminedMediaDataAtomSize_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieSampleDataWriterSetDefaultByteStream_cold_1(uint64_t a1, const void *a2, unsigned int *a3)
{
  FigSimpleMutexLock();
  v6 = *(a1 + 40);
  *(a1 + 40) = a2;
  CFRetain(a2);
  if (v6)
  {
    CFRelease(v6);
  }

  started = startNewChunkForAllTracks(a1);
  *a3 = started;
  if (!started)
  {
    *(a1 + 108) = 0;
  }

  return FigSimpleMutexUnlock();
}

uint64_t MovieSampleDataWriterSetDefaultByteStream_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieSampleDataWriterSetDefaultByteStream_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieSampleDataWriterGetLengthOfDefaultByteStream_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieSampleDataWriterGetLengthOfDefaultByteStream_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieSampleDataWriterGetLengthOfDefaultByteStream_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieSampleDataWriterCopyURLOfDefaultByteStream_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieSampleDataWriterCopyURLOfDefaultByteStream_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieSampleDataWriterCopyURLOfDefaultByteStream_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieSampleDataWriterSynchronizeDefaultByteStream_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieSampleDataWriterSynchronizeDefaultByteStream_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieSampleDataWriterSynchronizeDefaultByteStream_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieSampleDataWriterSynchronizeDefaultByteStream_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieSampleDataWriterWriteData_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieSampleDataWriterWriteData_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieSampleDataWriterWriteData_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieSampleDataWriterWriteData_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieSampleDataWriterWriteData_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieSampleDataWriterWriteFreeAtom_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieSampleDataWriterWriteFreeAtom_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieSampleDataWriterAppendFreeAtom_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieSampleDataWriterAppendFreeAtom_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieSampleDataWriterAppendBlockBuffer_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieSampleDataWriterAppendBlockBuffer_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieSampleDataWriterAppendBlockBuffer_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieSampleDataWriterAppendBlockBuffer_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieSampleDataWriterAppendHeader_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieSampleDataWriterAppendHeader_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieSampleDataWriterAppendHeader_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieSampleDataWriterAppendHeader_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieSampleDataWriterAppendHeader_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieSampleDataWriterFlush_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieSampleDataWriterFlush_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieSampleDataWriterTrackAppendSampleData_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieSampleDataWriterTrackAppendSampleData_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieSampleDataWriterTrackAppendSampleData_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieSampleDataWriterTrackAppendSampleReference_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieSampleDataWriterTrackAppendSampleReference_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieSampleDataWriterTrackSetPreferredChunkSize_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieSampleDataWriterTrackSetPreferredChunkSize_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieSampleDataWriterTrackGetPreferredChunkSize_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieSampleDataWriterTrackGetPreferredChunkSize_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieSampleDataWriterTrackGetPreferredChunkSize_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieSampleDataWriterTrackSetPreferredChunkDuration_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieSampleDataWriterTrackSetPreferredChunkDuration_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieSampleDataWriterTrackGetPreferredChunkDuration_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieSampleDataWriterTrackGetPreferredChunkDuration_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieSampleDataWriterTrackGetPreferredChunkDuration_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieSampleDataWriterTrackSetPreferredChunkAlignment_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieSampleDataWriterTrackSetPreferredChunkAlignment_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieSampleDataWriterTrackGetPreferredChunkAlignment_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieSampleDataWriterTrackGetPreferredChunkAlignment_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieSampleDataWriterTrackGetPreferredChunkAlignment_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieSampleDataWriterCopyFileTypeAtomAsBlockBuffer_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieSampleDataWriterCopyFileTypeAtomAsBlockBuffer_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieSampleDataWriterSetMajorBrand_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieSampleDataWriterSetMajorBrand_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieSampleDataWriterSetMajorBrand_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieSampleDataWriterCopyMajorBrand_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieSampleDataWriterCopyMajorBrand_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieSampleDataWriterSetMinorVersion_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieSampleDataWriterSetMinorVersion_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieSampleDataWriterSetMinorVersion_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieSampleDataWriterCopyMinorVersion_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieSampleDataWriterCopyMinorVersion_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieSampleDataWriterSetCompatibleBrands_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieSampleDataWriterSetCompatibleBrands_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieSampleDataWriterSetCompatibleBrands_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieSampleDataWriterCopyCompatibleBrands_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieSampleDataWriterCopyCompatibleBrands_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void FigCLCPCaptionFormatConformerCreate_cold_1(int a1, CFTypeRef *a2, _DWORD *a3)
{
  fig_log_get_emitter();
  FigSignalErrorAtGM();
  if (*a2)
  {
    CFRelease(*a2);
  }

  *a3 = a1;
}

uint64_t FigCLCPCaptionFormatConformerCreate_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t clcpcfc_CopyProperty_cold_1(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t clcpcfc_SetProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t clcpcfc_CreateConformedCaptionData_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t clcpcfc_CreateConformedCaptionData_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t clcpcfc_CreateConformedCaptionData_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t clcpcfc_CreateConformedCaptionData_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t clcpcfc_CreateConformedCaptionData_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t clcpcfcFromSbufOutputCallback_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigManifoldCreateForICY(const __CFAllocator *a1, CMBlockBufferRef theBuffer, uint64_t a3, uint64_t a4, uint64_t a5, void **a6)
{
  inPropertyData[2] = *MEMORY[0x1E69E9840];
  values = @"IcyManifoldMemoryPool";
  theBuffera = 0;
  if (!theBuffer || !CMBlockBufferGetDataLength(theBuffer))
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  inClientData = 0;
  FigManifoldGetClassID();
  v12 = CMDerivedObjectCreate();
  if (v12)
  {
LABEL_51:
    v37 = v12;
    v21 = 0;
    goto LABEL_40;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Default = a1;
  if (!a1)
  {
    Default = CFAllocatorGetDefault();
  }

  *DerivedStorage = CFRetain(Default);
  v15 = FigReentrantMutexCreate();
  *(DerivedStorage + 8) = v15;
  if (!v15)
  {
    v21 = 0;
    v37 = 12;
LABEL_39:
    CFRelease(inClientData);
    goto LABEL_40;
  }

  *(DerivedStorage + 464) = 0;
  *(DerivedStorage + 472) = DerivedStorage + 464;
  *(DerivedStorage + 48) = 100;
  v16 = MEMORY[0x1E6960C70];
  v17 = *MEMORY[0x1E6960C70];
  *(DerivedStorage + 280) = *MEMORY[0x1E6960C70];
  v18 = *(v16 + 16);
  *(DerivedStorage + 296) = v18;
  *(DerivedStorage + 480) = v17;
  *(DerivedStorage + 496) = v18;
  *(DerivedStorage + 576) = v17;
  *(DerivedStorage + 592) = v18;
  *(DerivedStorage + 600) = v17;
  *(DerivedStorage + 616) = v18;
  *(DerivedStorage + 528) = 0;
  Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  *(DerivedStorage + 560) = Mutable;
  if (!Mutable)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_6_9();
    v12 = FigSignalErrorAtGM();
    goto LABEL_51;
  }

  v20 = CFDictionaryCreate(*MEMORY[0x1E695E480], MEMORY[0x1E69628C8], &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v21 = v20;
  if (!v20 || (v22 = CMMemoryPoolCreate(v20), (*(DerivedStorage + 16) = v22) == 0))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_6_9();
    v37 = FigSignalErrorAtGM();
    goto LABEL_40;
  }

  if (CMBlockBufferIsRangeContiguous(theBuffer, 0, 0))
  {
    theBuffera = CFRetain(theBuffer);
  }

  else
  {
    ContiguousBlockBuffer = FigMemoryPoolCreateContiguousBlockBuffer();
    if (ContiguousBlockBuffer)
    {
      return ContiguousBlockBuffer;
    }
  }

  v39 = a3;
  v40 = a4;
  v41 = a5;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  do
  {
    while (1)
    {
      *(DerivedStorage + 35) = 0;
      fim_DestroyAudioStream(DerivedStorage + 80);
      OUTLINED_FUNCTION_8_4();
      *(DerivedStorage + 552) = 0;
      v28 = possibleAudioTypes[v24];
      *(DerivedStorage + 144) = v28;
      v29 = AudioFileStreamOpen(inClientData, AudioFileStreamStartupPropertyListener, AudioFileStreamStartupPackets, v28, (DerivedStorage + 152));
      if (v29)
      {
        v37 = v29;
        goto LABEL_39;
      }

      inPropertyData[0] = 0x5052495669643365;
      AudioFileStreamSetProperty(*(DerivedStorage + 152), 0x6F707470u, 8u, inPropertyData);
      *(DerivedStorage + 33) = 1;
      FigIcyManifoldInjectData(inClientData, v30, v31, theBuffera);
      *(DerivedStorage + 33) = 0;
      if (!*(DerivedStorage + 35) || (v32 = *(DerivedStorage + 136), v32 < 2))
      {
LABEL_23:
        if (v27)
        {
          goto LABEL_26;
        }

        goto LABEL_24;
      }

      v33 = *(DerivedStorage + 144);
      if (v32 <= v25)
      {
        break;
      }

      v36 = v33 != v28 || v24++ >= 3;
      v27 = 1;
      v25 = *(DerivedStorage + 136);
      v26 = *(DerivedStorage + 144);
      if (v36)
      {
        goto LABEL_36;
      }
    }

    if (v32 != v25 || v33 == v26)
    {
      goto LABEL_23;
    }

LABEL_24:
    v35 = *(DerivedStorage + 552);
    if (v35 > CMBlockBufferGetDataLength(theBuffera))
    {
      v37 = 4294951248;
      goto LABEL_39;
    }

    v27 = 0;
LABEL_26:
    v36 = v24++ >= 3;
  }

  while (!v36);
  v33 = v26;
  if (!v27)
  {
    v37 = 4294951252;
    goto LABEL_39;
  }

LABEL_36:
  *(DerivedStorage + 52) = v33;
  *(DerivedStorage + 56) = v39;
  *(DerivedStorage + 64) = v40;
  *(DerivedStorage + 72) = v41;
  *(DerivedStorage + 35) = 0;
  fim_DestroyAudioStream(DerivedStorage + 80);
  OUTLINED_FUNCTION_8_4();
  *(DerivedStorage + 552) = 0;
  v37 = fim_NewAudioStream(inClientData);
  if (v37)
  {
    goto LABEL_39;
  }

  *a6 = inClientData;
LABEL_40:
  if (theBuffera)
  {
    CFRelease(theBuffera);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  return v37;
}

uint64_t AudioFileStreamStartupPropertyListener(uint64_t a1, OpaqueAudioFileStreamID *a2, int a3, unsigned int *a4)
{
  result = CMBaseObjectGetDerivedStorage();
  v7 = result;
  outPropertyData = 0;
  switch(a3)
  {
    case 1684434292:
      v12 = OUTLINED_FUNCTION_4_12();
      result = AudioFileStreamGetProperty(v12, 0x64666D74u, v13, (v7 + 232));
      if (!result && *(v7 + 232) != 0.0 && *(v7 + 240))
      {
        *(v7 + 35) = 1;
      }

      break;
    case 1768174437:
      v10 = OUTLINED_FUNCTION_4_12();
      result = AudioFileStreamGetProperty(v10, 0x69643365u, v11, &outPropertyData);
      if (!result)
      {
        return ProcessID3HeaderTagFromAudioFileStream(a1, outPropertyData);
      }

      break;
    case 1717988724:
      v8 = OUTLINED_FUNCTION_4_12();
      return AudioFileStreamGetProperty(v8, 0x66666D74u, v9, (v7 + 144));
  }

  return result;
}

uint64_t fim_MakePushSampleBufferCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, void, void, opaqueCMSampleBuffer *), uint64_t a5, CMSampleBufferRef sbuf)
{
  if (!a4)
  {
    return 0;
  }

  v6 = sbuf;
  v12 = CMSampleBufferGetFormatDescription(sbuf);
  v13 = 0;
  if (*(a2 + 276) && v12)
  {
    if (CMFormatDescriptionGetMediaType(v12) == 1936684398)
    {
      v50 = a1;
      v58 = 0;
      v59 = 0;
      blockBufferOut = 0;
      packetDescriptionsPointerOut = 0;
      sampleBufferOut = 0;
      v14 = CMSampleBufferGetNumSamples(v6);
      v15 = CMSampleBufferGetFormatDescription(v6);
      CMSampleBufferGetPresentationTimeStamp(&v57, v6);
      DataBuffer = CMSampleBufferGetDataBuffer(v6);
      if (DataBuffer)
      {
        v17 = DataBuffer;
        formatDescription = v15;
        AudioStreamPacketDescriptionsPtr = CMSampleBufferGetAudioStreamPacketDescriptionsPtr(v6, &packetDescriptionsPointerOut, 0);
        if (!AudioStreamPacketDescriptionsPtr)
        {
          v49 = a3;
          v19 = *MEMORY[0x1E695E480];
          v20 = CMBlockBufferCreateEmpty(*MEMORY[0x1E695E480], v14, 0, &blockBufferOut);
          if (!v20)
          {
            OUTLINED_FUNCTION_11_5();
            numSamples = v21;
            packetDescriptions = malloc_type_calloc(v21, 0x10uLL, v22);
            if (packetDescriptions)
            {
              v48 = a5;
              v23 = *(a2 + 200);
              v24 = MEMORY[0x1E6960FB8];
              if (v23 != 1700998451)
              {
                v24 = MEMORY[0x1E6960FA0];
              }

              if (v23 == 1633889587)
              {
                v25 = MEMORY[0x1E6960FB0];
              }

              else
              {
                v25 = v24;
              }

              if (!v14)
              {
LABEL_28:
                v41 = *a2;
                presentationTimeStamp = v57;
                v42 = CMAudioSampleBufferCreateWithPacketDescriptions(v41, blockBufferOut, 1u, 0, 0, formatDescription, numSamples, &presentationTimeStamp, packetDescriptions, &sampleBufferOut);
                a5 = v48;
                a3 = v49;
                a1 = v50;
                if (v42)
                {
                  v13 = 0;
                }

                else
                {
                  v13 = sampleBufferOut;
                  sampleBufferOut = 0;
                }

LABEL_35:
                if (v59)
                {
                  CFRelease(v59);
                }

                if (v58)
                {
                  CFRelease(v58);
                }

                if (blockBufferOut)
                {
                  CFRelease(blockBufferOut);
                }

                free(packetDescriptions);
                if (sampleBufferOut)
                {
                  CFRelease(sampleBufferOut);
                }

                v6 = v13;
                if (v42)
                {
                  goto LABEL_53;
                }

                goto LABEL_44;
              }

              v26 = 0;
              v27 = *v25;
              v28 = *MEMORY[0x1E6961000];
              while (1)
              {
                DataLength = CMBlockBufferGetDataLength(blockBufferOut);
                v30 = &packetDescriptions[v26];
                v30->mStartOffset = DataLength;
                v31 = *&packetDescriptionsPointerOut[v26].mVariableFramesInPacket;
                *&v30->mVariableFramesInPacket = v31;
                v32 = HIDWORD(v31);
                appended = CMBlockBufferCreateWithMemoryBlock(*a2, 0, HIDWORD(v31), v19, 0, 0, HIDWORD(v31), 1u, &v58);
                if (appended)
                {
                  break;
                }

                CMBlockBufferCreateWithBufferReference(*a2, v17, packetDescriptionsPointerOut[v26].mStartOffset, v32, 0, &v59);
                v34 = *(a2 + 568);
                v35 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                if (!v35)
                {
                  goto LABEL_31;
                }

                appended = v35(v34, v28, v27);
                if (appended)
                {
                  break;
                }

                v36 = *(a2 + 568);
                v37 = v58;
                v38 = v59;
                v39 = *(CMBaseObjectGetVTable() + 16);
                if (*v39 < 4uLL || (v40 = v39[4]) == 0)
                {
LABEL_31:
                  v13 = 0;
                  v42 = 4294954514;
                  goto LABEL_32;
                }

                appended = v40(v36, v38, v37);
                if (appended)
                {
                  break;
                }

                appended = CMBlockBufferAppendBufferReference(blockBufferOut, v58, 0, 0, 0);
                if (appended)
                {
                  break;
                }

                if (v59)
                {
                  CFRelease(v59);
                  v59 = 0;
                }

                if (v58)
                {
                  CFRelease(v58);
                  v58 = 0;
                }

                if (numSamples == ++v26)
                {
                  goto LABEL_28;
                }
              }

              v42 = appended;
              v13 = 0;
LABEL_32:
              a5 = v48;
              goto LABEL_33;
            }

            fig_log_get_emitter();
            v20 = FigSignalErrorAtGM();
          }

          v42 = v20;
          v13 = 0;
          packetDescriptions = 0;
LABEL_33:
          a3 = v49;
LABEL_34:
          a1 = v50;
          goto LABEL_35;
        }

        v42 = AudioStreamPacketDescriptionsPtr;
        v13 = 0;
      }

      else
      {
        v13 = 0;
        v42 = 0;
      }

      packetDescriptions = 0;
      goto LABEL_34;
    }

    v13 = 0;
  }

LABEL_44:
  v43 = *(a2 + 24);
  *(a2 + 24) = 0;
  if (v43 >= 1)
  {
    v44 = v43;
    do
    {
      FigSimpleMutexUnlock();
      --v44;
    }

    while (v44);
  }

  v42 = a4(a1, a3, a5, 0, 0, v6);
  do
  {
    FigSimpleMutexLock();
    OUTLINED_FUNCTION_7_5();
  }

  while (v45 < v43);
  if (!v42)
  {
    if (!*(a2 + 32) && !*(a2 + 37))
    {
      v42 = 0;
      if (!v13)
      {
        return v42;
      }

      goto LABEL_54;
    }

    v42 = 4294951251;
  }

LABEL_53:
  if (v13)
  {
LABEL_54:
    CFRelease(v13);
  }

  return v42;
}

uint64_t FigIcyManifoldInstallCallbacksForTrack(uint64_t a1, int a2, void *a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v8 = *(DerivedStorage + 24);
  *(DerivedStorage + 24) = v8 + 1;
  if (a3 && *(DerivedStorage + 32))
  {
    v9 = 4294954511;
    goto LABEL_15;
  }

  if (!a2)
  {
    goto LABEL_10;
  }

  if (*(DerivedStorage + 80) == a2)
  {
    if (a3)
    {
      *(DerivedStorage + 88) = *a3;
      *(DerivedStorage + 96) = a3[1];
      *(DerivedStorage + 104) = a3[2];
    }

    else
    {
      *(DerivedStorage + 88) = 0;
      *(DerivedStorage + 96) = 0;
      *(DerivedStorage + 104) = 0;
    }

    v9 = 0;
    *(DerivedStorage + 112) = a4;
    goto LABEL_15;
  }

  if (*(DerivedStorage + 400) != a2)
  {
LABEL_10:
    fig_log_get_emitter();
    v9 = FigSignalErrorAtGM();
    v8 = *(DerivedStorage + 24) - 1;
    goto LABEL_15;
  }

  if (a3)
  {
    *(DerivedStorage + 408) = *a3;
    *(DerivedStorage + 416) = a3[1];
    *(DerivedStorage + 424) = a3[2];
  }

  else
  {
    *(DerivedStorage + 408) = 0;
    *(DerivedStorage + 416) = 0;
    *(DerivedStorage + 424) = 0;
  }

  v9 = 0;
  *(DerivedStorage + 432) = a4;
LABEL_15:
  *(DerivedStorage + 24) = v8;
  FigSimpleMutexUnlock();
  return v9;
}

uint64_t FigIcyManifoldCopyTrackProperty(uint64_t a1, int a2, const void *a3, uint64_t a4, CFNumberRef *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  OUTLINED_FUNCTION_7_5();
  if (*(DerivedStorage + 32))
  {
    v11 = 4294954511;
  }

  else if (*(DerivedStorage + 80) == a2)
  {
    if (CFEqual(a3, @"FMFD_TrackEstimatedDataRate"))
    {
      ioPropertyDataSize = 4;
      outPropertyData = 0;
      Property = AudioFileStreamGetProperty(*(DerivedStorage + 152), 0x62726174u, &ioPropertyDataSize, &outPropertyData);
      if (Property)
      {
        v11 = Property;
      }

      else
      {
        outPropertyData >>= 3;
        v10 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &outPropertyData);
        *a5 = v10;
        if (v10)
        {
          v11 = 0;
        }

        else
        {
          v11 = 4294954510;
        }
      }
    }

    else
    {
      v11 = 4294954512;
    }
  }

  else if (*(DerivedStorage + 400) == a2)
  {
    v11 = 4294954513;
  }

  else
  {
    v11 = 4294951254;
  }

  OUTLINED_FUNCTION_12_4();
  return v11;
}

uint64_t FigIcyManifoldReannounceUnregisteredTracks(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  OUTLINED_FUNCTION_7_5();
  if (*(DerivedStorage + 32))
  {
    fig_log_get_emitter();
    v4 = FigSignalErrorAtGM();
  }

  else
  {
    *(DerivedStorage + 37) = 0;
    if (!*(DerivedStorage + 56) || ((v3 = *(DerivedStorage + 80), !v3) || *(DerivedStorage + 88) || *(DerivedStorage + 96) || (v4 = fim_ReannounceTrack(a1, v3, *(DerivedStorage + 120), 0), !v4)) && ((v6 = *(DerivedStorage + 400), !v6) || *(DerivedStorage + 408) || *(DerivedStorage + 416) || (v7 = *(DerivedStorage + 456)) == 0 || (v4 = fim_ReannounceTrack(a1, v6, v7, 0), !v4)))
    {
      v5 = 0;
      goto LABEL_14;
    }
  }

  v5 = v4;
LABEL_14:
  OUTLINED_FUNCTION_12_4();
  return v5;
}

uint64_t fim_MakeFormatDescriptionCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!a4)
  {
    return 0;
  }

  v14 = *(a2 + 24);
  *(a2 + 24) = 0;
  if (v14 >= 1)
  {
    v15 = v14;
    do
    {
      FigSimpleMutexUnlock();
      --v15;
    }

    while (v15);
  }

  v16 = a4(a1, a3, a5, a6, a7);
  do
  {
    FigSimpleMutexLock();
    v17 = *(a2 + 24);
    *(a2 + 24) = v17 + 1;
  }

  while (v17 + 1 < v14);
  if (!v16)
  {
    if (*(a2 + 32) || *(a2 + 37))
    {
      return 4294951251;
    }

    if (!*(a2 + 38))
    {
      return 0;
    }

    v16 = 0;
    v19 = *(a2 + 80);
    if (v19 && (v19 & 1) == 0)
    {
      *(a2 + 38) = 0;
      v20 = *(a2 + 64);
      if (v20)
      {
        *(a2 + 24) = 0;
        if ((v17 & 0x8000000000000000) == 0)
        {
          v21 = v17 + 1;
          do
          {
            FigSimpleMutexUnlock();
            --v21;
          }

          while (v21);
          v20 = *(a2 + 64);
        }

        v20(a1, *(a2 + 72));
        do
        {
          FigSimpleMutexLock();
          v22 = *(a2 + 24);
          *(a2 + 24) = v22 + 1;
        }

        while (v22 < v17);
        if (*(a2 + 32) || *(a2 + 37))
        {
          return 4294951251;
        }
      }

      return 0;
    }
  }

  return v16;
}

uint64_t ProcessID3HeaderTagFromAudioFileStream(uint64_t a1, unsigned int a2)
{
  v32 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  theBuffer = 0;
  if (DerivedStorage[65])
  {
    return 0;
  }

  v5 = DerivedStorage;
  outPropertyData = 0;
  if (DerivedStorage[66])
  {
    goto LABEL_20;
  }

  if ((a2 & 0x80000000) != 0)
  {
    v8 = -a2;
    memcpy(&__dst, DerivedStorage + 10 - v8 + 504, v8);
    memcpy(&__dst + v8, v5[40], 10 - v8);
    v7 = v5[41];
  }

  else
  {
    v6 = DerivedStorage[41];
    if (v6 < a2)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_20_0();
      goto LABEL_38;
    }

    v7 = v6 - a2;
    if (v7 < 0xA)
    {
      v12 = 0;
      DerivedStorage[66] = v7;
      return v12;
    }

    v8 = 0;
    v9 = (DerivedStorage[40] + a2);
    v10 = *(v9 + 4);
    __dst = *v9;
    v31 = v10;
  }

  HIDWORD(outPropertyData) = 4;
  Property = AudioFormatGetProperty(0x69643373u, 0xAu, &__dst, &outPropertyData + 1, &outPropertyData);
  if (Property)
  {
    goto LABEL_30;
  }

  if (*(v5 + 33))
  {
    v12 = 0;
    v5[69] += outPropertyData;
    goto LABEL_33;
  }

  if (outPropertyData < 0xB)
  {
LABEL_20:
    v12 = 0;
    goto LABEL_33;
  }

  v13 = v7 + v8;
  if (v7 + v8 >= outPropertyData)
  {
    v14 = outPropertyData;
  }

  else
  {
    v14 = v7 + v8;
  }

  if (v8)
  {
    OUTLINED_FUNCTION_9_5();
    v16 = malloc_type_malloc(v8, v15);
    if (v16)
    {
      v17 = v16;
      memcpy(v16, &__dst, v8);
      v18 = *MEMORY[0x1E695E480];
      GlobalCFAllocatorFigMalloc = FigGetGlobalCFAllocatorFigMalloc();
      Property = CMBlockBufferCreateWithMemoryBlock(v18, v17, v8, GlobalCFAllocatorFigMalloc, 0, 0, v8, 0, &theBuffer);
      if (Property)
      {
        goto LABEL_30;
      }

      appended = CMBlockBufferAppendBufferReference(theBuffer, v5[42], v5[43], v14 - v8, 0);
      goto LABEL_22;
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
LABEL_38:
    Property = FigSignalErrorAtGM();
    goto LABEL_30;
  }

  appended = CMBlockBufferCreateWithBufferReference(*MEMORY[0x1E695E480], v5[42], v5[43] + a2, v14, 0, &theBuffer);
LABEL_22:
  v12 = appended;
  if (appended)
  {
    goto LABEL_33;
  }

  v21 = outPropertyData;
  if (v13 < outPropertyData)
  {
    v22 = theBuffer;
    v5[65] = theBuffer;
    theBuffer = 0;
    v5[68] = v21;
    v12 = 0;
    v5[67] = v21 - CMBlockBufferGetDataLength(v22);
    goto LABEL_33;
  }

  v23 = theBuffer;
  if (a2)
  {
    v24 = malloc_type_malloc(0x18uLL, 0x102004062D53EE8uLL);
    if (v24)
    {
      v25 = v24;
      if (v23)
      {
        v26 = CFRetain(v23);
      }

      else
      {
        v26 = 0;
      }

      v12 = 0;
      v25[4] = 1768174368;
      v25[5] = a2;
      *v25 = 0;
      *(v25 + 1) = v26;
      *v5[59] = v25;
      v5[59] = v25;
      goto LABEL_33;
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    goto LABEL_38;
  }

  Property = fim_PushMetaData(a1, theBuffer, 0x69643320u);
LABEL_30:
  v12 = Property;
LABEL_33:
  if (theBuffer)
  {
    CFRelease(theBuffer);
  }

  return v12;
}

uint64_t fim_NewAudioStream(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = AudioFileStreamOpen(a1, AudioFileStreamPropertyListener, AudioFileStreamPackets, *(DerivedStorage + 52), (DerivedStorage + 152));
  if (!v3)
  {
    fim_ConfigureAudioFileStreamOptionalProperties(DerivedStorage, 0);
  }

  return v3;
}

void AudioFileStreamPropertyListener(void *a1, OpaqueAudioFileStreamID *a2, int a3, unsigned int *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = DerivedStorage;
  v25 = 0;
  outPropertyData = 0;
  if (a3 == 1684434292)
  {
    v21 = OUTLINED_FUNCTION_3_11();
    Property = AudioFileStreamGetProperty(v21, 0x64666D74u, v22, (v7 + 232));
    if (!Property)
    {
      *(v7 + 272) = 1;
      return;
    }

    goto LABEL_33;
  }

  if (a3 != 1986225779)
  {
    if (a3 == 1768174437)
    {
      v19 = OUTLINED_FUNCTION_3_11();
      Property = AudioFileStreamGetProperty(v19, 0x69643365u, v20, &outPropertyData + 4);
      if (!Property)
      {
        Property = ProcessID3HeaderTagFromAudioFileStream(a1, HIDWORD(outPropertyData));
        if (!Property)
        {
          return;
        }
      }
    }

    else
    {
      if (a3 != 1818586995)
      {
        if (a3 == 1717988724)
        {

          fim_ConfigureAudioFileStreamOptionalProperties(DerivedStorage, 0);
        }

        return;
      }

      v14 = OUTLINED_FUNCTION_3_11();
      Property = AudioFileStreamGetProperty(v14, 0x6C656F73u, v15, &outPropertyData);
      if (!Property)
      {
        v17 = outPropertyData;
        v18 = CMBaseObjectGetDerivedStorage();
        if ((v17 & 0x80000000) == 0)
        {
          *(v18 + 352) = 1;
          *(v18 + 356) = v17;
        }

        return;
      }
    }

LABEL_33:
    fim_EndAllTracks(a1, Property);
    return;
  }

  v8 = CMBaseObjectGetDerivedStorage();
  outPropertyDataSize = 0;
  if (AudioFileStreamGetPropertyInfo(*(v8 + 152), 0x76636673u, &outPropertyDataSize, 0) || !outPropertyDataSize)
  {
    v12 = 0;
    v9 = 0;
  }

  else
  {
    v9 = malloc_type_calloc(1uLL, outPropertyDataSize, 0x10E0040CAA52137uLL);
    if (v9)
    {
      if (!AudioFileStreamGetProperty(*(v8 + 152), 0x76636673u, &outPropertyDataSize, v9))
      {
        v10 = *MEMORY[0x1E695E480];
        v27 = 0;
        theArray = 0;
        if (FigMetadataArrayCreateWithAudioFileMetadataItemList(v10, v9, 0, 0, 1, &theArray))
        {
          v12 = 0;
          v13 = 0;
LABEL_26:
          if (theArray)
          {
            CFRelease(theArray);
          }

          if (v12)
          {
            v23 = v13;
          }

          else
          {
            v23 = 0;
          }

          if (v23)
          {
            fim_PushMetaData(a1, v12, 0x706C7374u);
          }

          goto LABEL_37;
        }

        if (theArray)
        {
          if (CFArrayGetCount(theArray) < 1)
          {
            v12 = 0;
            v13 = 1;
          }

          else
          {
            v11 = FigMetadataCreateFigPropertyListBlockBufferFromMetadataItems(v10, theArray, &v27);
            v12 = v27;
            v13 = v11 == 0;
          }

          goto LABEL_26;
        }
      }
    }

    else
    {
      fig_log_get_emitter();
      FigSignalErrorAtGM();
    }

    v12 = 0;
  }

LABEL_37:
  FigReleaseAudioFileMetadataItems(v9);
  free(v9);
  if (v12)
  {
    CFRelease(v12);
  }
}

void AudioFileStreamPackets(void *a1, unsigned int a2, unsigned int a3, char *a4, AudioStreamPacketDescription *a5)
{
  keys[1] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  outWritable = 0;
  v10 = *(DerivedStorage + 275);
  v133 = 0;
  values = 0;
  keys[0] = 0;
  if (*(DerivedStorage + 32) || (v11 = DerivedStorage, *(DerivedStorage + 37)) || *(DerivedStorage + 44))
  {
    v117 = 0;
    cf = 0;
    goto LABEL_205;
  }

  *(DerivedStorage + 128) += a3;
  v121 = a5;
  if (*(DerivedStorage + 272) || (v20 = *(DerivedStorage + 80), !v20) || !*(DerivedStorage + 120))
  {
    ioPropertyDataSize[0] = 32;
    outPropertyDataSize = 0;
    Property = AudioFileStreamGetProperty(*(DerivedStorage + 152), 0x636D6170u, ioPropertyDataSize, (DerivedStorage + 160));
    v13 = 0;
    if (!AudioFileStreamGetPropertyInfo(*(v11 + 152), 0x6D676963u, &outPropertyDataSize, &outWritable))
    {
      if (outPropertyDataSize)
      {
        OUTLINED_FUNCTION_9_5();
        v13 = malloc_type_malloc(v14, v15);
        if (v13)
        {
          if (AudioFileStreamGetProperty(*(v11 + 152), 0x6D676963u, &outPropertyDataSize, v13))
          {
            outPropertyDataSize = 0;
            free(v13);
            v13 = 0;
          }
        }
      }
    }

    v16 = *(v11 + 120);
    if (v16)
    {
      CFRelease(v16);
      *(v11 + 120) = 0;
    }

    v17 = *(v11 + 136);
    if (v17 >= 1)
    {
      memset(&outPropertyData, 0, sizeof(outPropertyData));
      CMTimeMake(&outPropertyData, v17, *(v11 + 192));
      v18 = (v11 + 280);
      if (*(v11 + 292))
      {
        *&lhs.value = *v18;
        lhs.epoch = *(v11 + 296);
        rhs = outPropertyData;
        CMTimeAdd(&presentationTimeStamp, &lhs, &rhs);
        *v18 = *&presentationTimeStamp.value;
        epoch = presentationTimeStamp.epoch;
      }

      else
      {
        *v18 = *&outPropertyData.value;
        epoch = outPropertyData.epoch;
      }

      *(v11 + 296) = epoch;
    }

    *(v11 + 136) = 0;
    v23 = *(v11 + 248);
    *(v11 + 192) = *(v11 + 232);
    *(v11 + 208) = v23;
    *(v11 + 224) = *(v11 + 264);
    *(v11 + 276) = 0;
    if (!*(v11 + 568) || (FigBasicAESCPECryptorGetClassID(), !CMBaseObjectIsMemberOfClass()))
    {
LABEL_36:
      v26 = *(v11 + 200);
      if ((v26 - 2053202739) <= 0x3D && ((1 << (v26 - 51)) & 0x2020000000000001) != 0 || (v26 != 1667331683 ? (v27 = v26 == 1700886115) : (v27 = 1), !v27 ? (v28 = v26 == 1902212707) : (v28 = 1), !v28 ? (v29 = v26 == 2053202275) : (v29 = 1), !v29 ? (v30 = v26 == 2053464883) : (v30 = 1), !v30 ? (v31 = v26 == 2053207651) : (v31 = 1), v31))
      {
        inited = PKDCreateTransportStreamEncryptionInitData(1936684398, v26);
        if (!inited)
        {
          cf = 0;
          goto LABEL_223;
        }

        v34 = *MEMORY[0x1E69627C8];
        values = inited;
        keys[0] = v34;
        cf = inited;
        v32 = 1;
      }

      else
      {
        v32 = 0;
        cf = 0;
      }

      v35 = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, &values, v32, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
      if (v35)
      {
        if (Property)
        {
          v36 = 0;
        }

        else
        {
          v36 = (v11 + 160);
        }

        v117 = v35;
        v37 = CMAudioFormatDescriptionCreate(*v11, (v11 + 192), 32 * (Property == 0), v36, outPropertyDataSize, v13, v35, (v11 + 120));
        free(v13);
        if (v37)
        {
          goto LABEL_204;
        }

        a5 = v121;
        if (!*(v11 + 80))
        {
          v38 = CMBaseObjectGetDerivedStorage();
          *(v38 + 38) = 1;
          v39 = *(v38 + 48);
          *(v38 + 80) = v39;
          *(v38 + 48) = v39 + 2;
          v40 = *(v38 + 56);
          if (v40)
          {
            v41 = v38;
            v42 = *(v38 + 24);
            *(v38 + 24) = 0;
            if (v42 >= 1)
            {
              v43 = v42;
              do
              {
                FigSimpleMutexUnlock();
                --v43;
              }

              while (v43);
              v40 = *(v41 + 56);
              v39 = *(v41 + 80);
            }

            v37 = v40(a1, *(v41 + 72), 1936684398, v39);
            do
            {
              FigSimpleMutexLock();
              v44 = *(v41 + 24) + 1;
              *(v41 + 24) = v44;
            }

            while (v44 < v42);
            if (v37)
            {
              goto LABEL_204;
            }

            if (*(v41 + 32) || *(v41 + 37))
            {
              v37 = 4294951251;
              goto LABEL_204;
            }
          }
        }

        LODWORD(outPropertyData.value) = 0;
        LODWORD(presentationTimeStamp.value) = 4;
        AudioFileStreamGetProperty(*(v11 + 152), 0x72726170u, &presentationTimeStamp, &outPropertyData);
        *(v11 + 360) = LODWORD(outPropertyData.value) != 0;
        v20 = *(v11 + 80);
        goto LABEL_75;
      }

LABEL_223:
      v117 = 0;
      v37 = 4294954510;
      goto LABEL_204;
    }

    *(v11 + 276) = 1;
    if (*(v11 + 200) == 2053464883)
    {
      v24 = 1700998451;
    }

    else
    {
      OUTLINED_FUNCTION_10_5();
      if (v27)
      {
        v24 = 1633889587;
      }

      else
      {
        OUTLINED_FUNCTION_10_5();
        if (v27)
        {
          v25 = 72;
        }

        else
        {
          OUTLINED_FUNCTION_10_5();
          if (!v27)
          {
            OUTLINED_FUNCTION_10_5();
            if (!v27)
            {
              *(v11 + 276) = 0;
              goto LABEL_36;
            }

            v24 = 1633772320;
            goto LABEL_35;
          }

          v25 = 80;
        }

        v24 = v25 | 0x61616320;
      }
    }

LABEL_35:
    *(v11 + 200) = v24;
    goto LABEL_36;
  }

  v21 = 0;
  if (!v10)
  {
    v22 = 0;
    goto LABEL_82;
  }

  v117 = 0;
  cf = 0;
LABEL_75:
  if (*(v11 + 88))
  {
    v45 = *(v11 + 88);
  }

  else
  {
    v45 = 0;
  }

  FormatDescriptionCallback = fim_MakeFormatDescriptionCallback(a1, v11, v20, v45, *(v11 + 112), *(v11 + 120), *(v11 + 568));
  if (FormatDescriptionCallback)
  {
    v37 = FormatDescriptionCallback;
    *(v11 + 44) = FormatDescriptionCallback;
    goto LABEL_204;
  }

  if (*(v11 + 44))
  {
    goto LABEL_205;
  }

  *(v11 + 275) = 0;
  *(v11 + 272) = 0;
  v21 = v117;
  v22 = cf;
LABEL_82:
  v47 = *(v11 + 240);
  v48 = MEMORY[0x1E695E4D0];
  v117 = v21;
  cf = v22;
  if (((v47 - 2053202739) > 0x3D || ((1 << (v47 - 51)) & 0x2020000000000001) == 0) && v47 != 2053464883 && v47 != 2053202275)
  {
    goto LABEL_95;
  }

  v50 = *(v11 + 568);
  if (*(v11 + 276))
  {
    v51 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v51)
    {
      v37 = 4294954514;
      goto LABEL_204;
    }

    v52 = v51(v50, *MEMORY[0x1E6961118], *MEMORY[0x1E695E480], &v133);
    if (v52)
    {
      v37 = v52;
      goto LABEL_204;
    }
  }

  else if (v50)
  {
LABEL_95:
    v133 = CFRetain(*MEMORY[0x1E695E4D0]);
  }

  v116 = v133;
  v53 = CMBaseObjectGetDerivedStorage();
  v54 = v53;
  *ioPropertyDataSize = 0;
  v55 = *(v53 + 320);
  if (v55 > a4 || &a4[a2] > &v55[*(v53 + 328)])
  {
    v56 = CMBlockBufferCreateWithMemoryBlock(*v53, 0, a2, *v53, 0, 0, a2, 1u, ioPropertyDataSize);
    v57 = *ioPropertyDataSize;
    if (v56)
    {
      goto LABEL_218;
    }

    v56 = CMBlockBufferReplaceDataBytes(a4, *ioPropertyDataSize, 0, a2);
LABEL_100:
    v57 = *ioPropertyDataSize;
    if (!v56)
    {
      v58 = *ioPropertyDataSize;
      goto LABEL_102;
    }

LABEL_218:
    v37 = v56;
    if (!v57)
    {
      goto LABEL_203;
    }

LABEL_202:
    CFRelease(v57);
    goto LABEL_203;
  }

  v110 = *(v53 + 344);
  if (v55 != a4 || v110)
  {
    v56 = CMBlockBufferCreateWithBufferReference(*v53, *(v53 + 336), a4 - v55 + v110, a2, 0, ioPropertyDataSize);
    goto LABEL_100;
  }

  v57 = 0;
  v58 = *(v53 + 336);
LABEL_102:
  v59 = *(v54 + 212);
  if (v59)
  {
    LODWORD(v60) = (*(v54 + 192) / (2 * v59));
  }

  else if (a5)
  {
    if (!a3)
    {
      goto LABEL_212;
    }

    v60 = 0;
    v61 = 0;
    p_mVariableFramesInPacket = &a5->mVariableFramesInPacket;
    while (1)
    {
      v63 = *p_mVariableFramesInPacket;
      p_mVariableFramesInPacket += 4;
      v61 += v63;
      if (*(v54 + 192) * 0.5 < v61)
      {
        break;
      }

      if (a3 == ++v60)
      {
        goto LABEL_109;
      }
    }
  }

  else
  {
LABEL_109:
    LODWORD(v60) = a3;
  }

  if (v60 <= 1)
  {
    LODWORD(v60) = 1;
  }

  v120 = v60;
  if (!a3)
  {
LABEL_212:
    v37 = 0;
    if (!v57)
    {
      goto LABEL_203;
    }

    goto LABEL_202;
  }

  theBuffer = v58;
  v64 = 0;
  v125 = (v54 + 368);
  v126 = a1;
  v115 = *MEMORY[0x1E695E4C0];
  v114 = *MEMORY[0x1E69604D0];
  v127 = (v54 + 384);
  v128 = (v54 + 392);
  v65 = (v54 + 464);
  v112 = *(v54 + 128) - a3;
  v111 = &a5->mVariableFramesInPacket;
  v113 = *v48;
  do
  {
    v122 = a3;
    if (v120 >= a3)
    {
      v66 = a3;
    }

    else
    {
      v66 = v120;
    }

    v123 = v66;
    v124 = v64;
    lhs.value = 0;
    rhs.value = 0;
    if (!a5)
    {
      goto LABEL_199;
    }

    v67 = &a5[v64];
    v68 = &v67[(v66 - 1)];
    mStartOffset = v67->mStartOffset;
    if (v67->mStartOffset)
    {
      v70 = v68->mStartOffset + v68->mDataByteSize;
      value = theBuffer;
LABEL_122:
      if (*(v54 + 312) < v66)
      {
        OUTLINED_FUNCTION_11_5();
        v76 = malloc_type_realloc(v73, v74, v75);
        *(v54 + 304) = v76;
        if (!v76)
        {
          goto LABEL_199;
        }

        *(v54 + 312) = v66;
      }

      v77 = CMBlockBufferCreateWithBufferReference(*v54, value, mStartOffset, v70 - mStartOffset, 0, &lhs);
      if (v77)
      {
        goto LABEL_200;
      }

      v78 = 0;
      value = lhs.value;
      v79 = *(v54 + 304);
      v80 = v66;
      do
      {
        v79[v78] = v67[v78];
        v79 = *(v54 + 304);
        v79[v78].mStartOffset = v67[v78].mStartOffset - mStartOffset;
        ++v78;
        --v80;
      }

      while (v80);
      goto LABEL_128;
    }

    value = theBuffer;
    v72 = CMBlockBufferGetDataLength(theBuffer);
    v70 = v68->mStartOffset + v68->mDataByteSize;
    if (v72 > v70)
    {
      mStartOffset = v67->mStartOffset;
      goto LABEL_122;
    }

    v79 = v67;
LABEL_128:
    fim_GetCurrentAudioTime(v54 + 80, &presentationTimeStamp);
    outPropertyData = presentationTimeStamp;
    fim_AdjustPTS(v54, &outPropertyData);
    v81 = *v54;
    v82 = *(v54 + 120);
    presentationTimeStamp = outPropertyData;
    v77 = CMAudioSampleBufferCreateWithPacketDescriptions(v81, value, 1u, 0, 0, v82, v66, &presentationTimeStamp, v79, &rhs);
    if (v77)
    {
      goto LABEL_200;
    }

    if (!*(v54 + 96))
    {
      goto LABEL_159;
    }

    if (*(v54 + 274))
    {
      CMSetAttachment(rhs.value, v114, v113, 1u);
    }

    if (*(v54 + 360))
    {
      a5 = v121;
      dataLengtha = CMSampleBufferGetSampleAttachmentsArray(rhs.value, 1u);
      if (dataLengtha)
      {
        v83 = 0;
        v84 = v112 + v124;
        v85 = v66;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(dataLengtha, v83);
          outPropertyDataSize = 16;
          presentationTimeStamp.value = v84;
          *&presentationTimeStamp.timescale = 0;
          if (!ValueAtIndex)
          {
LABEL_196:
            fig_log_get_emitter();
            OUTLINED_FUNCTION_0_16();
            v37 = FigSignalErrorAtGM();
            goto LABEL_197;
          }

          v87 = ValueAtIndex;
          v88 = AudioFileStreamGetProperty(*(v54 + 152), 0x706B6470u, &outPropertyDataSize, &presentationTimeStamp);
          if (v88)
          {
            v37 = v88;
            fig_log_get_emitter();
            OUTLINED_FUNCTION_0_16();
            FigSignalErrorAtGM();
LABEL_197:
            a5 = v121;
            goto LABEL_180;
          }

          flags = presentationTimeStamp.flags;
          if (presentationTimeStamp.timescale)
          {
            if (presentationTimeStamp.flags)
            {
              v90 = (v54 + 384);
              v91 = *v127;
              if (*v127)
              {
                if (*(v54 + 376) == presentationTimeStamp.flags)
                {
                  a1 = v126;
                  goto LABEL_152;
                }

                CFRelease(v91);
                v90 = (v54 + 384);
                *v127 = 0;
              }

              if (FigPacketDependencyInfoCopyAsSampleDependencyAttributeDictionary())
              {
                fig_log_get_emitter();
                OUTLINED_FUNCTION_0_16();
                v37 = FigSignalErrorAtGM();
                a5 = v121;
                a1 = v126;
                goto LABEL_180;
              }

              *(v54 + 376) = flags;
              v92 = v90;
              a1 = v126;
            }

            else
            {
              v91 = *v125;
              if (*v125)
              {
                goto LABEL_152;
              }

              v92 = (v54 + 368);
              if (FigPacketDependencyInfoCopyAsSampleDependencyAttributeDictionary())
              {
                goto LABEL_196;
              }
            }
          }

          else
          {
            v91 = *v128;
            if (*v128)
            {
              goto LABEL_152;
            }

            v92 = (v54 + 392);
            if (FigPacketDependencyInfoCopyAsSampleDependencyAttributeDictionary())
            {
              goto LABEL_196;
            }
          }

          v91 = *v92;
          if (!*v92)
          {
            goto LABEL_196;
          }

LABEL_152:
          CFDictionaryApplyFunction(v91, appendAttributesToDictionary, v87);
          ++v83;
          ++v84;
          if (!--v85)
          {
            goto LABEL_153;
          }
        }
      }

LABEL_199:
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_16();
      v77 = FigSignalErrorAtGM();
LABEL_200:
      v37 = v77;
      goto LABEL_180;
    }

LABEL_153:
    v93 = *(v54 + 560);
    if (v116 == v115)
    {
      CFArrayAppendValue(v93, rhs.value);
      a5 = v121;
    }

    else
    {
      a5 = v121;
      if (CFArrayGetCount(v93) >= 1)
      {
        CFArrayGetCount(*(v54 + 560));
        v106 = OUTLINED_FUNCTION_2_16();
        CFArrayApplyFunction(v106, v141, v107, a1);
        CFArrayRemoveAllValues(*(v54 + 560));
      }

      if (*(v54 + 96))
      {
        v108 = *(v54 + 96);
      }

      else
      {
        v108 = 0;
      }

      PushSampleBufferCallback = fim_MakePushSampleBufferCallback(a1, v54, *(v54 + 80), v108, *(v54 + 112), rhs.value);
      if (PushSampleBufferCallback)
      {
        v37 = PushSampleBufferCallback;
        *(v54 + 44) = PushSampleBufferCallback;
        goto LABEL_180;
      }
    }

    v94 = *(v54 + 440);
    if (!v94)
    {
      goto LABEL_159;
    }

    v37 = fim_PushMetaData(a1, v94, *(v54 + 448));
    v95 = *(v54 + 440);
    if (v95)
    {
      CFRelease(v95);
      *(v54 + 440) = 0;
    }

    if (!v37)
    {
LABEL_159:
      *(v54 + 274) = 0;
      v96 = *(v54 + 464);
      if (v96)
      {
        v97 = 0;
        do
        {
          v98 = &v67[v97];
          if (v96)
          {
            do
            {
              if (v98->mStartOffset < *(v96 + 5))
              {
                break;
              }

              v77 = fim_PushMetaData(a1, v96[1], *(v96 + 4));
              if (v77)
              {
                goto LABEL_200;
              }

              v99 = **v65;
              *v65 = v99;
              if (!v99)
              {
                *(v54 + 472) = v65;
              }

              v100 = v96[1];
              if (v100)
              {
                CFRelease(v100);
              }

              free(v96);
              v96 = *v65;
            }

            while (*v65);
          }

          mVariableFramesInPacket = *(v54 + 212);
          if (!mVariableFramesInPacket)
          {
            mVariableFramesInPacket = v98->mVariableFramesInPacket;
          }

          *(v54 + 136) += mVariableFramesInPacket;
          ++v97;
        }

        while (v97 != v66);
        v37 = 0;
      }

      else
      {
        v102 = *(v54 + 212);
        if (v102)
        {
          v37 = 0;
          v103 = *(v54 + 136) + (v102 * v66);
        }

        else
        {
          v103 = *(v54 + 136);
          v104 = &v111[4 * v124];
          do
          {
            v105 = *v104;
            v104 += 4;
            v103 += v105;
            --v66;
          }

          while (v66);
          v37 = 0;
        }

        *(v54 + 136) = v103;
      }
    }

LABEL_180:
    if (rhs.value)
    {
      CFRelease(rhs.value);
    }

    if (lhs.value)
    {
      CFRelease(lhs.value);
    }

    if (v37)
    {
      break;
    }

    v64 = v123 + v124;
    a3 = v122 - v123;
  }

  while (v122 != v123);
  v57 = *ioPropertyDataSize;
  if (*ioPropertyDataSize)
  {
    goto LABEL_202;
  }

LABEL_203:
  if (v37)
  {
LABEL_204:
    fim_EndAllTracks(a1, v37);
  }

LABEL_205:
  if (v133)
  {
    CFRelease(v133);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v117)
  {
    CFRelease(v117);
  }
}

uint64_t FigIcyManifoldInjectData(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigIcyManifoldCopyProperty(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigIcyManifoldSetProperty(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigIcyManifoldFlush(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void FigIcyManifoldFlush(uint64_t a1, void *a2)
{
  if (CFArrayGetCount(*(a1 + 560)) >= 1)
  {
    CFArrayGetCount(*(a1 + 560));
    v4 = OUTLINED_FUNCTION_2_16();
    CFArrayApplyFunction(v4, v6, v5, a2);
    CFArrayRemoveAllValues(*(a1 + 560));
  }
}

uint64_t FigIcyManifoldNoteStreamEnd(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigIcyManifoldCopyCurrentFormatDescriptionForTrack(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fim_PushMetaData(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigStreamingLiveServerClockCreate_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigContentKeySessionCreateWithCallbacks(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v11 = *MEMORY[0x1E69E9840];
  FigNote_AllowInternalDefaultLogs();
  OUTLINED_FUNCTION_7_6();
  fig_note_initialize_category_with_default_work_cf();
  OUTLINED_FUNCTION_7_6();
  fig_note_initialize_category_with_default_work_cf();
  if (!a6 || (*a6 = 0, MEMORY[0x19A8D3660](&FigContentKeySessionGetClassID_sRegisterFigContentKeySessionTypeOnce, RegisterFigContentKeySessionType), v7 = CMDerivedObjectCreate(), !v7))
  {
    OUTLINED_FUNCTION_1_15();
    v7 = FigSignalErrorAtGM();
  }

  v10 = v7;
  if (dword_1EAF16B90)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return v10;
}

uint64_t fcks_invalidate()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF16B90)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  if (!*DerivedStorage)
  {
    v2 = *(DerivedStorage + 16);
    if (v2)
    {
      v3 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v3)
      {
        v3(v2);
      }
    }

    *DerivedStorage = 1;
  }

  FigSimpleMutexUnlock();
  return 0;
}

uint64_t fcks_finalize(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  fcks_freeAllCryptorEntries(a1);
  fcks_removeListenersForSecureStopGenerationOnDefaultManager(a1);
  if (a1 && DerivedStorage[21])
  {
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_0_17();
    FigNotificationCenterRemoveWeakListener();
  }

  v3 = DerivedStorage[1];
  if (v3)
  {
    CFRelease(v3);
    DerivedStorage[1] = 0;
  }

  v4 = DerivedStorage[2];
  if (v4)
  {
    CFRelease(v4);
    DerivedStorage[2] = 0;
  }

  v5 = DerivedStorage[3];
  if (v5)
  {
    CFRelease(v5);
    DerivedStorage[3] = 0;
  }

  v6 = DerivedStorage[4];
  if (v6)
  {
    CFRelease(v6);
    DerivedStorage[4] = 0;
  }

  v7 = DerivedStorage[6];
  if (v7)
  {
    CFRelease(v7);
    DerivedStorage[6] = 0;
  }

  v8 = DerivedStorage[8];
  if (v8)
  {
    dispatch_release(v8);
    DerivedStorage[8] = 0;
  }

  v9 = DerivedStorage[15];
  if (v9)
  {
    CFRelease(v9);
    DerivedStorage[15] = 0;
  }

  v10 = DerivedStorage[18];
  if (v10)
  {
    CFRelease(v10);
    DerivedStorage[18] = 0;
  }

  v11 = DerivedStorage[19];
  if (v11)
  {
    CFRelease(v11);
    DerivedStorage[19] = 0;
  }

  v12 = DerivedStorage[20];
  if (v12)
  {
    CFRelease(v12);
    DerivedStorage[20] = 0;
  }

  v13 = DerivedStorage[21];
  if (v13)
  {
    CFRelease(v13);
    DerivedStorage[21] = 0;
  }

  v14 = DerivedStorage[22];
  if (v14)
  {
    CFRelease(v14);
    DerivedStorage[22] = 0;
  }

  FigSimpleMutexUnlock();

  return FigSimpleMutexDestroy();
}

uint64_t fcks_removeListenersForSecureStopGenerationOnDefaultManager(uint64_t a1)
{
  cf = 0;
  if (!a1)
  {
    return 0;
  }

  v1 = FigSecureStopManagerCopyDefaultRuntimeInstance(*MEMORY[0x1E695E480], &cf);
  if (v1)
  {
    goto LABEL_5;
  }

  if (!cf)
  {
    return 0;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  OUTLINED_FUNCTION_0_17();
  v1 = FigNotificationCenterRemoveWeakListener();
LABEL_5:
  v2 = v1;
  if (cf)
  {
    CFRelease(cf);
  }

  return v2;
}

void fcks_persistentKeyUpdatedCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a5)
  {
    return;
  }

  OUTLINED_FUNCTION_5_9();
  theDict = 0;
  if (v8)
  {
    v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v9)
    {
      return;
    }

    v10 = v9(v7, *MEMORY[0x1E69610A8], *MEMORY[0x1E695E480], &theDict);
    v11 = theDict;
    if (v10)
    {
      v7 = 0;
      if (theDict)
      {
LABEL_9:
        CFRelease(v11);
      }
    }

    else
    {
      Value = CFDictionaryGetValue(theDict, *MEMORY[0x1E6960F28]);
      if (Value)
      {
        v7 = CFRetain(Value);
      }

      else
      {
        v7 = 0;
      }

      v11 = theDict;
      if (theDict)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_303();
    v10 = FigSignalErrorAtGM();
  }

  if (!v10)
  {
    v13 = CFDictionaryGetValue(v6, *MEMORY[0x1E6961080]);
    if (v13)
    {
      v14 = CFRetain(v13);
      if (v14)
      {
        v15 = v14;
        v16 = *(*(CMBaseObjectGetVTable() + 16) + 48);
        if (v16)
        {
          v16(v5, v7, v15);
        }

        goto LABEL_17;
      }
    }

    OUTLINED_FUNCTION_303();
    FigSignalErrorAtGM();
  }

  v15 = 0;
LABEL_17:
  if (v7)
  {
    CFRelease(v7);
  }

  if (v15)
  {
    CFRelease(v15);
  }
}

void fcks_keyResponseErrorOccurredCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  cf = 0;
  if (!a5)
  {
    return;
  }

  OUTLINED_FUNCTION_5_9();
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v8 && !v8(v7, *MEMORY[0x1E6961130], *MEMORY[0x1E695E480], &cf))
  {
    if (FigCFDictionaryGetInt64IfPresent())
    {
      Value = CFDictionaryGetValue(v6, *MEMORY[0x1E6961020]);
      if (Value)
      {
        v10 = CFRetain(Value);
        if (v10)
        {
          v11 = v10;
          v12 = cf;
          v13 = *(*(CMBaseObjectGetVTable() + 16) + 32);
          if (v13)
          {
            v13(v5, v12, 0, v11);
          }

          goto LABEL_11;
        }
      }
    }

    OUTLINED_FUNCTION_303();
    FigSignalErrorAtGM();
  }

  v11 = 0;
LABEL_11:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v11)
  {
    CFRelease(v11);
  }
}

void fcks_keyResponseSuccessfullyProcessedCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  cf = 0;
  if (a5)
  {
    OUTLINED_FUNCTION_5_9();
    v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v7 && !v7(v6, *MEMORY[0x1E6961130], *MEMORY[0x1E695E480], &cf))
    {
      if (FigCFDictionaryGetInt64IfPresent())
      {
        v8 = cf;
        v9 = *(*(CMBaseObjectGetVTable() + 16) + 40);
        if (v9)
        {
          v9(v5, v8, 0);
        }
      }

      else
      {
        OUTLINED_FUNCTION_303();
        FigSignalErrorAtGM();
      }
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }
}

void fcks_externalProtectionStateChangedCallback(int a1, int a2, int a3, CFTypeRef cf, uint64_t a5)
{
  cfa = 0;
  if (a5)
  {
    if (cf && (v5 = CFGetTypeID(cf), v5 == FigCPECryptorGetTypeID()))
    {
      FigCFDictionaryGetInt32IfPresent();
    }

    else
    {
      FigSignalErrorAtGM();
    }
  }
}

uint64_t fcks_ensureSecureStopManager(const void *a1)
{
  v2 = (CMBaseObjectGetDerivedStorage() + 168);
  if (*v2)
  {
    return 0;
  }

  v3 = CFGetAllocator(a1);
  result = FigSecureStopManagerCreate(v3, v2);
  if (!result)
  {
    if (!a1 || !*v2 || (CMNotificationCenterGetDefaultLocalCenter(), OUTLINED_FUNCTION_0_17(), result = FigNotificationCenterAddWeakListener(), !result))
    {

      return fcks_removeListenersForSecureStopGenerationOnDefaultManager(a1);
    }
  }

  return result;
}

uint64_t fcks_setClientAuditTokenForChildSession(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexUnlock();
  if (FigCFEqual())
  {
    v6 = 0;
    goto LABEL_9;
  }

  v7 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (v7)
  {
    v8 = v7(a2);
    if (v8)
    {
LABEL_7:
      v6 = v8;
      goto LABEL_9;
    }

    v9 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v9)
    {
      v8 = v9(a2, *MEMORY[0x1E6960F80], a3);
      goto LABEL_7;
    }
  }

  v6 = 4294954514;
LABEL_9:
  FigSimpleMutexLock();
  if (!*DerivedStorage)
  {
    return v6;
  }

  return FigSignalErrorAtGM();
}