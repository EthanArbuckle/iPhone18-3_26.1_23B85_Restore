uint64_t appendGlobalMetadataAtom_cold_12(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t appendGlobalMetadataAtom_cold_13(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t appendGlobalMetadataAtom_cold_14(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t appendGlobalMetadataAtom_cold_15(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t appendGlobalMetadataAtom_cold_16(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t appendGlobalMetadataAtom_cold_17(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t appendGlobalMetadataAtom_cold_18(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t appendGlobalMetadataAtom_cold_19(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t appendGlobalMetadataAtom_cold_20(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigSampleBufferProcessorCreateForMakingDataReady_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sbufmakeready_CopyProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sbufmakeready_CopyProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAssetImageGeneratorCreateFromAssetWithOptions(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  if (!a2)
  {
    return 4294954863;
  }

  FigAssetImageGeneratorGetClassID();
  v7 = CMDerivedObjectCreate();
  if (v7)
  {
    return v7;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *DerivedStorage = 0;
  v9 = CFRetain(a2);
  *(DerivedStorage + 8) = 0;
  *(DerivedStorage + 16) = 0;
  *(DerivedStorage + 24) = v9;
  *(DerivedStorage + 32) = 0;
  *(DerivedStorage + 40) = 0;
  *(DerivedStorage + 48) = 0;
  v10 = FigSimpleMutexCreate();
  *(DerivedStorage + 56) = v10;
  if (!v10)
  {
    goto LABEL_13;
  }

  *(DerivedStorage + 64) = 0;
  *(DerivedStorage + 72) = DerivedStorage + 64;
  v11 = FigSemaphoreCreate();
  *(DerivedStorage + 80) = v11;
  if (!v11)
  {
    goto LABEL_13;
  }

  *(DerivedStorage + 105) = 0;
  *(DerivedStorage + 88) = 0;
  *(DerivedStorage + 96) = 0;
  BooleanIfPresent = FigCFDictionaryGetBooleanIfPresent();
  v13 = 2;
  if (!BooleanIfPresent)
  {
    v13 = 0;
  }

  *(DerivedStorage + 108) = v13;
  FigCFDictionaryGetBooleanIfPresent();
  FigCFDictionaryGetBooleanIfPresent();
  MEMORY[0x19A8D3660](&sAIGCreateNotificationQueueOnce, aig_createNotificationQueueOnce);
  if (!sAIGNotificationQueue)
  {
LABEL_13:
    fig_log_get_emitter();
    return FigSignalErrorAtGM();
  }

  FigCFWeakReferenceStore();
  CMBaseObject = FigAssetGetCMBaseObject(a2);
  v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v15)
  {
    v15(CMBaseObject, @"assetProperty_CreationURL", a1, DerivedStorage + 8);
  }

  v16 = 0;
  *a4 = 0;
  return v16;
}

uint64_t aig_SetProperty(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = 4294954516;
  if (a2 && a3)
  {
    if (*DerivedStorage)
    {
      fig_log_get_emitter();

      return FigSignalErrorAtGM();
    }

    else if (CFEqual(a2, @"ClientPID"))
    {
      v7 = *(DerivedStorage + 120);
      *(DerivedStorage + 120) = a3;
      CFRetain(a3);
      if (v7)
      {
        CFRelease(v7);
      }

      return 0;
    }

    else if (CFEqual(a2, @"AllowAlternateDecoderSelection"))
    {
      result = 0;
      *(DerivedStorage + 128) = *MEMORY[0x1E695E4D0] == a3;
    }

    else
    {
      return 4294954512;
    }
  }

  return result;
}

uint64_t aig_RequestCGImageAtTimeAsync(uint64_t a1, uint64_t a2, const void *a3, const void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v18 = 0;
  if (*DerivedStorage)
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  else
  {
    v9 = DerivedStorage;
    v10 = *(DerivedStorage + 100) + 1;
    *(DerivedStorage + 100) = v10;
    v16 = *a2;
    v17 = *(a2 + 16);
    v11 = FAIGCommon_createImageRequest(&v16, a3, a4, v10, &v18);
    if (v11)
    {
      return v11;
    }

    FigSimpleMutexLock();
    *v18 = 0;
    v12 = v18;
    **(v9 + 72) = v18;
    *(v9 + 72) = v12;
    if (*(v9 + 96))
    {
      FigSimpleMutexUnlock();
      return 0;
    }

    else
    {
      v14 = *(v9 + 88);
      *(v9 + 96) = 1;
      if (v14)
      {
        *(v9 + 88) = 0;
        FigSimpleMutexUnlock();
        FigThreadJoin();
      }

      else
      {
        FigSimpleMutexUnlock();
      }

      *&v16 = @"com.apple.coremedia.player.processimagerequest";
      v15 = CFDictionaryCreate(*MEMORY[0x1E695E480], MEMORY[0x1E69631F0], &v16, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      FigSimpleMutexLock();
      v13 = FigThreadCreate();
      FigSimpleMutexUnlock();
      if (v15)
      {
        CFRelease(v15);
      }

      if (v13)
      {
        *(v9 + 96) = 0;
      }
    }

    return v13;
  }
}

uint64_t aig_createImageAtTimeInternal(void *a1, const void *a2, _DWORD *a3, uint64_t a4, void *a5, uint64_t a6)
{
  values = a1;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  valuePtr = 0;
  v213 = *MEMORY[0x1E6960C70];
  *&v226.value = *MEMORY[0x1E6960C70];
  v11 = *(MEMORY[0x1E6960C70] + 16);
  v226.epoch = v11;
  v225 = **&MEMORY[0x1E6960C88];
  v224 = v225;
  v222 = 0;
  *v223 = 0;
  v220 = 0;
  v221 = 0;
  v219 = 1;
  keys = @"AIGRequestedNotificationWhenConsumed";
  v227 = 2000000000;
  if (!*a1)
  {
    v26 = CMBaseObjectGetDerivedStorage();
    v27 = CMBaseObjectGetDerivedStorage();
    time1.value = 0;
    lhs.value = 0;
    rhs.value = 0;
    v216.value = 0;
    if (*v27)
    {
      v28 = 4294954511;
      goto LABEL_125;
    }

    if (*(v27 + 1))
    {
      v28 = 0;
    }

    else
    {
      v49 = *(v27 + 24);
      if (v49 && (v50 = CFRetain(v49)) != 0)
      {
        v51 = v50;
        CFGetAllocator(a2);
        FigAssetGetCMBaseObject(v51);
        if (*(*(CMBaseObjectGetVTable() + 8) + 48))
        {
          v52 = OUTLINED_FUNCTION_3_119();
          v54 = v53(v52);
          if (v54)
          {
            v28 = v54;
          }

          else
          {
            fig_log_get_emitter();
            OUTLINED_FUNCTION_0_92();
            v28 = FigSignalErrorAtGM();
          }
        }

        else
        {
          v28 = 4294954514;
        }

        CFRelease(v51);
      }

      else
      {
        v28 = 4294954863;
      }
    }

    if (v28)
    {
      goto LABEL_125;
    }

    v43 = *(v26 + 48);
    if (v43 && (v44 = *(v26 + 16)) != 0)
    {
      v45 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (!v45)
      {
        goto LABEL_124;
      }

      v46 = v45(v44, v43, a1, 0);
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_92();
      v46 = FigSignalErrorAtGM();
    }

    v28 = v46;
    if (v46)
    {
      goto LABEL_125;
    }
  }

  if ((*(a4 + 24) & 0x1D) != 1)
  {
    v28 = 4294954863;
    goto LABEL_125;
  }

  v12 = *(a4 + 40);
  if (v12)
  {
    Value = CFDictionaryGetValue(v12, @"TimeFlags");
    if (Value)
    {
      v14 = Value;
      v15 = CFGetTypeID(Value);
      if (v15 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v14, kCFNumberIntType, &valuePtr);
      }
    }

    v16 = CFDictionaryGetValue(*(a4 + 40), @"TimeoutInterval");
    if (v16)
    {
      v17 = v16;
      v18 = CFGetTypeID(v16);
      if (v18 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v17, kCFNumberSInt64Type, &v227);
      }
    }

    v19 = CFDictionaryGetValue(*(a4 + 40), @"TimeToleranceBefore");
    if (v19)
    {
      v20 = v19;
      v21 = CFGetTypeID(v19);
      if (v21 == CFDictionaryGetTypeID())
      {
        CMTimeMakeFromDictionary(&v225, v20);
      }
    }

    v22 = CFDictionaryGetValue(*(a4 + 40), @"TimeToleranceAfter");
    if (v22)
    {
      v23 = v22;
      v24 = CFGetTypeID(v22);
      if (v24 == CFDictionaryGetTypeID())
      {
        CMTimeMakeFromDictionary(&v224, v23);
      }
    }
  }

  if ((valuePtr - 2) > 3)
  {
    v25 = 257;
  }

  else
  {
    v25 = dword_196E78C80[valuePtr - 2];
  }

  v29 = *values;
  lhs = *(a4 + 12);
  rhs = v225;
  CMTimeSubtract(&time1, &lhs, &rhs);
  OUTLINED_FUNCTION_4_114();
  v216 = v224;
  CMTimeAdd(&lhs, &rhs, &v216);
  OUTLINED_FUNCTION_4_114();
  Basic = FigPlaybackBossSnapTimeToIFrameWithRange(v29, 0, &rhs, v25, &time1, &lhs, &v226);
  if (Basic)
  {
    goto LABEL_225;
  }

  if ((v226.flags & 0x1D) != 1)
  {
    v28 = 4294954865;
    goto LABEL_125;
  }

  time1 = *(values + 56);
  lhs = v226;
  v31 = CMTimeCompare(&time1, &lhs);
  v32 = values;
  if (v31)
  {
    if (*(values + 2))
    {
LABEL_100:
      if (v32[20] && v32[21] && v32[6])
      {
        goto LABEL_110;
      }

      v71 = *(a4 + 48);
      v72 = CMBaseObjectGetDerivedStorage();
      v73 = *v32;
      v74 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (v74)
      {
        Basic = v74(v73, v32 + 20);
        if (Basic)
        {
          goto LABEL_225;
        }

        Basic = FigSampleGeneratorCreateForFormatReaderUsingByteStreams(v71, *(v72 + 16), *v32, *(v72 + 32), 0, 2, v32 + 21);
        if (Basic)
        {
          goto LABEL_225;
        }

        Basic = FigVisualContextCreateBasic(v71, 0, v32 + 6);
        if (Basic)
        {
          goto LABEL_225;
        }

        v32[11] = *(v72 + 80);
        v75 = v32 + 11;
        v76 = *(v75 - 5);
        v77 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (v77)
        {
          Basic = v77(v76, FAIGCommon_decodedImageBecameAvailable, v75);
          if (Basic)
          {
            goto LABEL_225;
          }

          v32 = values;
LABEL_110:
          Basic = FAIGCommon_getOutputImagePropertiesForImageRetrieval(v32[2], *(a4 + 40), *(v32 + 36), v223, &v220);
          if (Basic)
          {
            goto LABEL_225;
          }

          FAIGCommon_checkAndUpdateOutputImagePropertiesForImageRetrieval(a3, *v223, values + 18, v220, &v219);
          if (v220)
          {
            CFRelease(v220);
            v220 = 0;
          }

          v78 = values;
          if (*(values + 26) && !v219)
          {
            goto LABEL_183;
          }

          v196 = values + 208;
          v206 = *(a4 + 48);
          v204 = *(a4 + 40);
          v80 = v223[0];
          v79 = v223[1];
          LODWORD(rhs.value) = 0;
          LODWORD(v216.value) = 0;
          v81 = CMBaseObjectGetDerivedStorage();
          v82 = *MEMORY[0x1E695E480];
          Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          aig_cleanupVideoRenderPipelineAndMentorsForImageRetrieval(v78);
          allocator = v82;
          v84 = CFArrayCreate(v82, v78 + 2, 1, MEMORY[0x1E695E9C0]);
          v205 = v84;
          if (!v84)
          {
LABEL_228:
            fig_log_get_emitter();
            OUTLINED_FUNCTION_0_92();
            DestinationPixelBufferAttributes = FigSignalErrorAtGM();
            goto LABEL_158;
          }

          if (FigExportSettings_GetMaximumBitsPerComponent(v84) <= 8)
          {
            v85 = 1111970369;
          }

          else
          {
            v85 = 1380411457;
          }

          LODWORD(rhs.value) = v85;
          v86 = *(v81 + 104) == 0;
          if (*(v81 + 128))
          {
            CFDictionarySetValue(Mutable, *MEMORY[0x1E69841E0], *MEMORY[0x1E695E4D0]);
          }

          v87 = *(v81 + 108);
          if (v87 == 1)
          {
            v88 = MEMORY[0x1E695E4D0];
          }

          else
          {
            if (v87 != 2)
            {
              goto LABEL_132;
            }

            v88 = MEMORY[0x1E695E4C0];
          }

          CFDictionarySetValue(Mutable, *MEMORY[0x1E6984200], *v88);
LABEL_132:
          if (*(v81 + 105))
          {
            CFDictionarySetValue(Mutable, *MEMORY[0x1E69841F0], *MEMORY[0x1E695E4D0]);
          }

          if (*(v81 + 106))
          {
            CFDictionarySetValue(Mutable, *MEMORY[0x1E6984218], *MEMORY[0x1E695E4D0]);
          }

          DestinationPixelBufferAttributes = FPSupport_CreateDestinationPixelBufferAttributes(v80, v79, &rhs, 1, 0, v86, 0, 0, 0, v78 + 5);
          if (DestinationPixelBufferAttributes)
          {
            goto LABEL_158;
          }

          v91 = v78[2];
          CMTimeMake(&time1, 1, 30);
          CMTimeMake(&lhs, 1, 30);
          v92 = v206;
          DestinationPixelBufferAttributes = FAIGCommon_createRenderPipelineOptions(v206, v91, 0, &time1, &lhs, v78 + 17);
          if (DestinationPixelBufferAttributes)
          {
            goto LABEL_158;
          }

          cfa = v78 + 19;
          DestinationPixelBufferAttributes = FigVideoRenderPipelineCreateWithVisualContext(v206, Mutable, v78[5], v78[18], 1, v78[6], 0, v78[17], (v78 + 19));
          if (DestinationPixelBufferAttributes)
          {
            goto LABEL_158;
          }

          v93 = v78[2];
          if (v93)
          {
            CMFormatDescriptionGetExtensions(v93);
            Int32IfPresent = FigCFDictionaryGetInt32IfPresent();
            if (Int32IfPresent)
            {
              if (SLODWORD(v216.value) >= 2)
              {
                v102 = OUTLINED_FUNCTION_1_151(Int32IfPresent, v95, v96, v97, v98, v99, v100, v101, v190, v193, v196, allocator, v204, v205, v206, cfa);
                FigBaseObject = FigRenderPipelineGetFigBaseObject(v102);
                v104 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                if (!v104)
                {
                  goto LABEL_178;
                }

                DestinationPixelBufferAttributes = v104(FigBaseObject, @"FieldMode", *MEMORY[0x1E6983A20]);
                if (DestinationPixelBufferAttributes)
                {
                  goto LABEL_158;
                }
              }
            }
          }

          DestinationPixelBufferAttributes = FAIGCommon_standardDynamicRangeIsPreferred(v204);
          if (DestinationPixelBufferAttributes != 1)
          {
            goto LABEL_160;
          }

          DestinationPixelBufferAttributes = v78[2];
          if (!DestinationPixelBufferAttributes)
          {
            goto LABEL_160;
          }

          CMFormatDescriptionGetExtension(DestinationPixelBufferAttributes, *MEMORY[0x1E6965F30]);
          if (!FigCFEqual())
          {
            DestinationPixelBufferAttributes = FigCFEqual();
            if (!DestinationPixelBufferAttributes)
            {
              goto LABEL_160;
            }
          }

          v204 = Mutable;
          Extension = CMFormatDescriptionGetExtension(v78[2], *MEMORY[0x1E6965D88]);
          v113 = CMFormatDescriptionGetExtension(v78[2], *MEMORY[0x1E6965F98]);
          if (!Extension || (v114 = v113, v115 = CFGetTypeID(Extension), v115 != CFStringGetTypeID()) || !v114 || (v116 = CFGetTypeID(v114), TypeID = CFStringGetTypeID(), v116 != TypeID))
          {
            fig_log_get_emitter();
            OUTLINED_FUNCTION_0_92();
            v128 = FigSignalErrorAtGM();
            goto LABEL_232;
          }

          v125 = OUTLINED_FUNCTION_1_151(TypeID, v118, v119, v120, v121, v122, v123, v124, v190, v193, v196, allocator, v204, v205, v206, cfa);
          v126 = FigRenderPipelineGetFigBaseObject(v125);
          v127 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v127)
          {
            v128 = v127(v126, @"ColorPrimaries", Extension);
            if (v128)
            {
              goto LABEL_232;
            }

            v136 = OUTLINED_FUNCTION_1_151(v128, v129, v130, v131, v132, v133, v134, v135, v191, v194, v197, allocatora, v204, v205, v207, cfb);
            v137 = FigRenderPipelineGetFigBaseObject(v136);
            v138 = *(*(CMBaseObjectGetVTable() + 8) + 56);
            v92 = v208;
            if (v138)
            {
              v128 = v138(v137, @"TransferFunction", *MEMORY[0x1E6965F50]);
              if (!v128)
              {
                v146 = OUTLINED_FUNCTION_1_151(v128, v139, v140, v141, v142, v143, v144, v145, v192, v195, v198, allocatorb, v204, v205, v208, cfc);
                v147 = FigRenderPipelineGetFigBaseObject(v146);
                v148 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                if (v148)
                {
                  DestinationPixelBufferAttributes = v148(v147, @"YCbCrMatrix", v114);
                  Mutable = v204;
                  if (DestinationPixelBufferAttributes)
                  {
                    goto LABEL_158;
                  }

LABEL_160:
                  v149 = *(v81 + 120);
                  if (!v149)
                  {
                    goto LABEL_163;
                  }

                  v150 = Mutable;
                  v151 = OUTLINED_FUNCTION_1_151(DestinationPixelBufferAttributes, v105, v106, v107, v108, v109, v110, v111, v190, v193, v196, allocator, v204, v205, v206, cfa);
                  v152 = FigRenderPipelineGetFigBaseObject(v151);
                  v153 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                  if (v153)
                  {
                    DestinationPixelBufferAttributes = v153(v152, @"ClientPID", v149);
                    Mutable = v150;
                    if (DestinationPixelBufferAttributes)
                    {
                      goto LABEL_158;
                    }

LABEL_163:
                    v154 = FigRenderPipelineGetFigBaseObject(v78[19]);
                    v155 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                    if (v155)
                    {
                      DestinationPixelBufferAttributes = v155(v154, @"SourceSampleBufferQueue", v92, v78 + 23);
                      if (!DestinationPixelBufferAttributes)
                      {
                        v163 = OUTLINED_FUNCTION_1_151(DestinationPixelBufferAttributes, v156, v157, v158, v159, v160, v161, v162, v190, v193, v196, allocator, v204, v205, v206, cfa);
                        v164 = *MEMORY[0x1E695E4D0];
                        v165 = FigRenderPipelineGetFigBaseObject(v163);
                        v166 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                        if (v166)
                        {
                          v166(v165, @"ObeyEmptyMediaMarkers", v164);
                        }

                        CMNotificationCenterGetDefaultLocalCenter();
                        DestinationPixelBufferAttributes = OUTLINED_FUNCTION_2_143();
                        if (!DestinationPixelBufferAttributes)
                        {
                          CMNotificationCenterGetDefaultLocalCenter();
                          DestinationPixelBufferAttributes = OUTLINED_FUNCTION_2_143();
                          if (!DestinationPixelBufferAttributes)
                          {
                            v167 = v78[23];
                            CMTimeMake(&time1, 3, 30);
                            CMTimeMake(&lhs, 2, 30);
                            DestinationPixelBufferAttributes = FigSampleBufferConsumerCreateForBufferQueue(v167, &time1.value, &lhs.value, v78 + 22);
                            if (!DestinationPixelBufferAttributes)
                            {
                              MutableCopy = FigCFDictionaryCreateMutableCopy();
                              if (MutableCopy)
                              {
                                v169 = MutableCopy;
                                CFDictionarySetValue(MutableCopy, @"OptimizeSampleCursorIPCForPower", v164);
                                v170 = VideoMentorNew(v78[20], v78[21], v78[22], v169, v78 + 25);
                                if (v170)
                                {
                                  v28 = v170;
                                }

                                else
                                {
                                  v171 = Mutable;
                                  CMNotificationCenterGetDefaultLocalCenter();
                                  v172 = OUTLINED_FUNCTION_2_143();
                                  if (v172)
                                  {
                                    goto LABEL_233;
                                  }

                                  v173 = FigTrackReaderGetFigBaseObject(*v78);
                                  v174 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                                  if (v174)
                                  {
                                    v174(v173, @"EditCursorService", allocatorc, v78 + 1);
                                  }

                                  v172 = EditMentorNewWithChildVideoMentor(v78[25], v78[1], v199);
                                  if (v172)
                                  {
LABEL_233:
                                    v28 = v172;
                                    Mutable = v171;
                                  }

                                  else
                                  {
                                    Mutable = v171;
                                    v28 = 0;
                                    if (!v78[27])
                                    {
                                      v78[27] = CFDictionaryCreate(allocatorc, &kMentorKey_ModeChangePolicy, &kMentorModeChangePolicy_RepurposeOrCancelPreviousOutput, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                                    }
                                  }
                                }

                                CFRelease(v169);
                                if (Mutable)
                                {
                                  goto LABEL_179;
                                }

                                goto LABEL_180;
                              }

                              goto LABEL_228;
                            }
                          }
                        }
                      }

LABEL_158:
                      v28 = DestinationPixelBufferAttributes;
                      if (!Mutable)
                      {
                        goto LABEL_180;
                      }

LABEL_179:
                      CFRelease(Mutable);
                      goto LABEL_180;
                    }

LABEL_178:
                    v28 = 4294954514;
                    if (!Mutable)
                    {
                      goto LABEL_180;
                    }

                    goto LABEL_179;
                  }

                  v28 = 4294954514;
                  Mutable = v150;
                  if (v150)
                  {
                    goto LABEL_179;
                  }

LABEL_180:
                  if (v205)
                  {
                    CFRelease(v205);
                  }

                  if (v28)
                  {
                    goto LABEL_125;
                  }

LABEL_183:
                  v175 = CFGetAllocator(a2);
                  v176 = CFDictionaryCreate(v175, &keys, &values, 1, MEMORY[0x1E695E9D8], 0);
                  if (v176)
                  {
                    v58 = v176;
                    v177 = values;
                    *(values + 6) = v213;
                    v177[14] = v11;
                    v178 = v177[16];
                    v177[16] = v176;
                    CFRetain(v176);
                    if (v178)
                    {
                      CFRelease(v178);
                    }

                    v179 = *(values + 26);
                    v180 = *(values + 27);
                    time1 = v226;
                    v181 = EditMentorSetModeToScrub(v179, &time1.value, v180, 0, v58, 0);
                    if (!v181)
                    {
                      if (!*DerivedStorage)
                      {
                        do
                        {
                          RotatedCVImageBuffer = FigSemaphoreWaitRelative();
                          if (RotatedCVImageBuffer)
                          {
                            goto LABEL_222;
                          }

                          v28 = *(values + 30);
                          if (v28)
                          {
                            goto LABEL_58;
                          }

                          if (*DerivedStorage)
                          {
                            v28 = 4294954511;
                            goto LABEL_58;
                          }

                          if (*(a4 + 8))
                          {
                            v28 = 4294954864;
                            goto LABEL_58;
                          }
                        }

                        while ((*(values + 108) & 1) == 0);
                        v183 = *(values + 6);
                        v184 = *(a4 + 48);
                        lhs = *(values + 4);
                        v185 = *(*(CMBaseObjectGetVTable() + 16) + 48);
                        if (!v185)
                        {
                          v28 = 4294954514;
                          goto LABEL_58;
                        }

                        time1 = lhs;
                        RotatedCVImageBuffer = v185(v183, v184, &time1, 3, &v222, 0, 0);
                        if (!RotatedCVImageBuffer)
                        {
                          if (!v222)
                          {
                            v28 = 4294954865;
                            goto LABEL_58;
                          }

                          v186 = *(values + 8);
                          v187 = *(values + 37);
                          if (!v186 && !*(values + 37))
                          {
                            if (!*(values + 38))
                            {
                              goto LABEL_202;
                            }

                            v187 = 0;
                          }

                          time1.value = 0;
                          RotatedCVImageBuffer = FAIGCommon_createRotatedCVImageBuffer(v222, *(values + 5), v186, v187, *(values + 38), DerivedStorage[104], *(a4 + 48), &time1);
                          if (!RotatedCVImageBuffer)
                          {
                            CFRelease(v222);
                            v222 = time1.value;
LABEL_202:
                            IsPreferred = FAIGCommon_standardDynamicRangeIsPreferred(*(a4 + 40));
                            FigCreateCGImageFromPixelBufferWithDynamicRangeConversion(v222, 1, IsPreferred, &v221);
                            v189 = v221;
                            if (!v221)
                            {
                              v28 = 4294954862;
                              goto LABEL_58;
                            }

                            if (*(values + 10) && (CFRelease(*(values + 10)), v32 = values, *(values + 10) = 0, (v189 = v221) == 0))
                            {
                              v48 = 0;
                            }

                            else
                            {
                              CFRetain(v189);
                              v48 = v221;
                              v32 = values;
                            }

                            v57 = a5;
                            v56 = a6;
                            *(v32 + 7) = *(v32 + 6);
                            v32[9] = v32[14];
                            v32[10] = v48;
                            if (!a5)
                            {
                              goto LABEL_56;
                            }

                            goto LABEL_55;
                          }
                        }

LABEL_222:
                        v28 = RotatedCVImageBuffer;
                        goto LABEL_58;
                      }

                      fig_log_get_emitter();
                      OUTLINED_FUNCTION_0_92();
                      v181 = FigSignalErrorAtGM();
                    }

                    v28 = v181;
LABEL_59:
                    CFRelease(v58);
                    goto LABEL_125;
                  }

                  fig_log_get_emitter();
                  OUTLINED_FUNCTION_0_92();
                  Basic = FigSignalErrorAtGM();
LABEL_225:
                  v28 = Basic;
                  goto LABEL_125;
                }

                goto LABEL_211;
              }

LABEL_232:
              v28 = v128;
LABEL_212:
              Mutable = v204;
              if (v204)
              {
                goto LABEL_179;
              }

              goto LABEL_180;
            }
          }

LABEL_211:
          v28 = 4294954514;
          goto LABEL_212;
        }
      }

LABEL_124:
      v28 = 4294954514;
      goto LABEL_125;
    }

    v33 = *(a4 + 40);
    lhs.value = 0;
    rhs.value = 0;
    v34 = *values;
    time1.value = 0;
    v35 = *MEMORY[0x1E695E480];
    v36 = FigTrackReaderGetFigBaseObject(v34);
    v37 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    cf = v33;
    if (!v37)
    {
      v55 = 0;
      v28 = 4294954514;
      v39 = v35;
      goto LABEL_63;
    }

    v38 = v36;
    v39 = v35;
    v40 = v37(v38, @"TrackFormatDescriptionArray", v35, &time1);
    if (!v40)
    {
      if (time1.value && CFArrayGetCount(time1.value))
      {
        CFArrayGetValueAtIndex(time1.value, 0);
        v32[2] = FigFormatDescriptionRetain();
        LODWORD(v216.value) = 0;
        v41 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (v41)
        {
          v41(v34, &v216, 0);
          value_low = LODWORD(v216.value);
        }

        else
        {
          value_low = 0;
        }

        v55 = FigCPECreateFormatDescriptionIdentifierForTrackIDAndIndex(v35, value_low, 0);
        v28 = 0;
LABEL_63:
        if (time1.value)
        {
          CFRelease(time1.value);
        }

        if (v28)
        {
          goto LABEL_92;
        }

        *(v32 + 35) = 0;
        *(v32 + 8) = 0;
        if (!cf)
        {
          goto LABEL_91;
        }

        if (CFDictionaryGetValue(cf, @"ApplyVideoTrackMatrix") == *MEMORY[0x1E695E4D0])
        {
          v216.value = 0;
          v62 = FigTrackReaderGetFigBaseObject(*v32);
          v63 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v63)
          {
            v63(v62, @"TrackMatrix", v39, &v216);
            if (v216.value)
            {
              FigGetCGAffineTransformFrom3x3MatrixArray(v216.value, &time1);
              *(v32 + 8) = FigGetRotationAngleAndFlipsFromCGAffineTransform(&time1.value, v32 + 37, v32 + 38);
              CFRelease(v216.value);
              v64 = *(v32 + 8);
              v66 = v64 == 90 || v64 == 270;
              *(v32 + 36) = v66;
            }
          }
        }

        v60 = v32[3];
        if (!v60)
        {
          goto LABEL_91;
        }

        v61 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v61 && !v61(v60, @"AllowsImageGeneration", v39, &lhs) && CFBooleanGetValue(lhs.value))
        {
          v67 = v32[24];
          if (v67)
          {
            CFRelease(v67);
            v32[24] = 0;
          }

          v68 = v32[3];
          v69 = *(*(CMBaseObjectGetVTable() + 16) + 8);
          if (v69)
          {
            v70 = v69(v68, v39, 1, 0, v55, &rhs);
            if (v70 == -12164)
            {
LABEL_91:
              v28 = 0;
              goto LABEL_92;
            }

            v28 = v70;
            if (!v70 && rhs.value)
            {
              v32[24] = CFDictionaryCreate(v39, &kMentorCreationOptionKey_SampleBufferCryptor, &rhs, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
              goto LABEL_91;
            }

            if (!v70)
            {
              goto LABEL_91;
            }
          }

          else
          {
            v28 = 4294954514;
          }
        }

        else
        {
          v28 = 4294951072;
        }

LABEL_92:
        if (v55)
        {
          CFRelease(v55);
        }

        if (lhs.value)
        {
          CFRelease(lhs.value);
        }

        if (rhs.value)
        {
          CFRelease(rhs.value);
        }

        if (v28)
        {
          goto LABEL_125;
        }

        v32 = values;
        goto LABEL_100;
      }

      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_92();
      v40 = FigSignalErrorAtGM();
    }

    v28 = v40;
    v55 = 0;
    goto LABEL_63;
  }

  v47 = *(values + 10);
  if (v47)
  {
    CFRetain(v47);
    v32 = values;
    v48 = *(values + 10);
  }

  else
  {
    v48 = 0;
  }

  v57 = a5;
  v56 = a6;
  v58 = 0;
  v221 = v48;
  *(v32 + 6) = *(v32 + 7);
  v32[14] = v32[9];
  if (a5)
  {
LABEL_55:
    *v57 = v48;
    v221 = 0;
  }

LABEL_56:
  v28 = 0;
  if (v56)
  {
    v59 = *(v32 + 6);
    *(v56 + 16) = v32[14];
    *v56 = v59;
  }

LABEL_58:
  if (v58)
  {
    goto LABEL_59;
  }

LABEL_125:
  if (v221)
  {
    CFRelease(v221);
  }

  if (v222)
  {
    CFRelease(v222);
  }

  return v28;
}

uint64_t TrackFragmentBuilderCreate(int a1, const __CFDictionary *a2, uint64_t a3, uint64_t a4, const void *a5, void *a6)
{
  if (!a6)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    v19 = FigSignalErrorAtGM();
    goto LABEL_17;
  }

  v12 = MEMORY[0x19A8CC720](a5, 96, 0x1060040999B399ELL, 0);
  v13 = v12;
  if (!v12)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    v22 = FigSignalErrorAtGM();
    goto LABEL_23;
  }

  v12[4] = 0u;
  v12[5] = 0u;
  v12[2] = 0u;
  v12[3] = 0u;
  *v12 = 0u;
  v12[1] = 0u;
  if (a5)
  {
    v14 = CFRetain(a5);
  }

  else
  {
    v14 = 0;
  }

  *v13 = v14;
  *(v13 + 2) = a1;
  *(v13 + 5) = a3;
  *(v13 + 6) = 0;
  *(v13 + 56) = xmmword_196E788A0;
  *(v13 + 9) = 0x8000000000000000;
  *(v13 + 10) = 0;
  if (a2)
  {
    context = 0;
    v15 = MovieSampleGroupCollectionCreate(a5, &context);
    if (v15)
    {
      v19 = v15;
      if (!context)
      {
        goto LABEL_18;
      }

      v21 = context;
      goto LABEL_20;
    }

    CFDictionaryApplyFunction(a2, trbCreateSampleGroupCollectionWithDescriptionArraysApplierFunction, context);
    *(v13 + 4) = context;
  }

  if (a4)
  {
    Mutable = CFDictionaryCreateMutable(a5, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v17 = Mutable;
      v18 = FigCFDictionarySetInt32();
      if (!v18)
      {
        v18 = FigCFDictionarySetInt32();
        if (!v18)
        {
          v18 = FigCFDictionarySetInt32();
          if (!v18)
          {
            v18 = FigCFDictionarySetInt32();
            if (!v18)
            {
              *(v13 + 2) = v17;
              goto LABEL_16;
            }
          }
        }
      }

      v19 = v18;
      v21 = v17;
LABEL_20:
      CFRelease(v21);
      goto LABEL_18;
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    v22 = FigSignalErrorAtGM();
    if (!v22)
    {
      goto LABEL_16;
    }

LABEL_23:
    v19 = v22;
    goto LABEL_18;
  }

LABEL_16:
  v19 = 0;
  *a6 = v13;
LABEL_17:
  v13 = 0;
LABEL_18:
  TrackFragmentBuilderRelease(v13);
  return v19;
}

uint64_t TrackFragmentBuilderNumSamplesAtTrackRunIndex(uint64_t a1, CFIndex a2, _DWORD *a3)
{
  v5 = 0;
  if (a1 && a3)
  {
    result = tfbGetTrackRunAtIndex(a1, a2, &v5);
    if (!result)
    {
      *a3 = *v5;
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

uint64_t TrackFragmentBuilderGetDataOffsetAtTrackRunIndex(uint64_t a1, CFIndex a2, void *a3)
{
  v5 = 0;
  if (a1 && a3)
  {
    result = tfbGetTrackRunAtIndex(a1, a2, &v5);
    if (!result)
    {
      *a3 = *(v5 + 8);
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

uint64_t TrackFragmentBuilderGetFirstSampleFlagsAtTrackRunIndex(uint64_t a1, CFIndex a2, _DWORD *a3, _BYTE *a4)
{
  v8 = 0;
  if (a1 && a3 && a4)
  {
    result = tfbGetTrackRunAtIndex(a1, a2, &v8);
    if (!result)
    {
      v7 = v8;
      *a3 = *(v8 + 20);
      *a4 = *(v7 + 16);
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

uint64_t tfbGetSampleValueArrayBbufAtTrackRunIndex(uint64_t a1, CFIndex a2, const void *a3, _DWORD *a4, void *a5)
{
  v11 = 0;
  result = tfbGetTrackRunAtIndex(a1, a2, &v11);
  if (!result)
  {
    result = CFDictionaryGetValue(*(v11 + 24), a3);
    if (result)
    {
      v9 = *(result + 8);
      v10 = *(result + 16);
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }

    *a4 = v9;
    *a5 = v10;
  }

  return result;
}

uint64_t TrackFragmentBuilderAppendSampleInformation(const __CFAllocator **a1, int a2, uint64_t a3, int a4, uint64_t a5, int64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, const __CFArray *a10, uint64_t a11, uint64_t *a12, void *a13)
{
  if (a1 && a7 && a9)
  {
    v14 = a5;
    v15 = a1;
    v16 = a10;
    if (a2)
    {
      v18 = *a1;
      if (!a1[11])
      {
        v20 = MEMORY[0x19A8CC720](*a1, 72, 0x10200403EBEFDCFLL, 0);
        v21 = v20;
        if (v20 && (*(v20 + 64) = 0, *(v20 + 32) = 0u, *(v20 + 48) = 0u, *v20 = 0u, *(v20 + 16) = 0u, Mutable = CFDictionaryCreateMutable(v18, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]), (v21[1] = Mutable) != 0) && (v23 = CFArrayCreateMutable(v18, 0, 0), (v21[5] = v23) != 0))
        {
          v21[2] = *(v15 + 48) + *(v15 + 40);
          v21[4] = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_3_2();
          CurrentTrackRun = FigSignalErrorAtGM();
          tfbTrackFragmentRelease(v18, v21);
          if (CurrentTrackRun)
          {
            return CurrentTrackRun;
          }

          v21 = 0;
        }

        *(v15 + 88) = v21;
        VideoSyncSampleEntryFromSampleAttachment = tfbSetTrackFragmentHeaderDefaultValueIfNeeded(v15, @"SampleDescriptionIndexKey", a4);
        if (VideoSyncSampleEntryFromSampleAttachment)
        {
          return VideoSyncSampleEntryFromSampleAttachment;
        }

        v18 = *v15;
      }

      v25 = MEMORY[0x19A8CC720](v18, 32, 0x1020040FCFC97F3, 0);
      v26 = v25;
      if (v25 && (*v25 = 0u, v25[1] = 0u, v27 = CFDictionaryCreateMutable(v18, 4, MEMORY[0x1E695E9D8], 0), (v26[3] = v27) != 0))
      {
        v26[1] = a3;
        CFArrayAppendValue(*(*(v15 + 88) + 40), v26);
        tfbTrackRunRelease(v18, 0);
        v14 = a5;
        v16 = a10;
      }

      else
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_3_2();
        CurrentTrackRun = FigSignalErrorAtGM();
        tfbTrackRunRelease(v18, v26);
        v14 = a5;
        v16 = a10;
        if (CurrentTrackRun)
        {
          return CurrentTrackRun;
        }
      }
    }

    v28 = OUTLINED_FUNCTION_5_99();
    VideoSyncSampleEntryFromSampleAttachment = tfbAddSampleToSampleTable(v28, v29, a6, a7, v30, v31);
    if (VideoSyncSampleEntryFromSampleAttachment)
    {
      return VideoSyncSampleEntryFromSampleAttachment;
    }

    v32 = OUTLINED_FUNCTION_5_99();
    VideoSyncSampleEntryFromSampleAttachment = tfbAddSampleToSampleTable(v32, v33, a8, a9, v34, v35);
    if (VideoSyncSampleEntryFromSampleAttachment)
    {
      return VideoSyncSampleEntryFromSampleAttachment;
    }

    if (v16)
    {
      CFArrayGetCount(v16);
    }

    v36 = OUTLINED_FUNCTION_5_99();
    VideoSyncSampleEntryFromSampleAttachment = tfbAddSampleToSampleTable(v36, v37, v38, v16, v39, v40);
    if (VideoSyncSampleEntryFromSampleAttachment)
    {
      return VideoSyncSampleEntryFromSampleAttachment;
    }

    OUTLINED_FUNCTION_10_55();
    v42 = v42 || v41 == 1986618469;
    if (v42 || v41 == 1885954932)
    {
      v122 = OUTLINED_FUNCTION_5_99();
      VideoSyncSampleEntryFromSampleAttachment = tfbAddSampleToSampleTable(v122, v123, a6, a7, v124, v125);
      if (VideoSyncSampleEntryFromSampleAttachment)
      {
        return VideoSyncSampleEntryFromSampleAttachment;
      }
    }

    v164 = a7;
    if (v16)
    {
      Count = CFArrayGetCount(v16);
      if (Count >= 1)
      {
        v44 = 0;
        key = *MEMORY[0x1E69603F0];
        v167 = v15;
        v168 = *MEMORY[0x1E69603F8];
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v16, v44);
          Value = CFDictionaryGetValue(ValueAtIndex, key);
          v47 = CFDictionaryGetValue(ValueAtIndex, v168);
          if (!(Value | v47))
          {
            goto LABEL_61;
          }

          theData = v47;
          v48 = *v15;
          v49 = *(v15 + 88);
          v50 = *(v49 + 6);
          if (!v50)
          {
            break;
          }

LABEL_36:
          if (v44 + *v49 == *(v50 + 1))
          {
            v172 = Value;
            if (Value)
            {
              Length = CFDataGetLength(Value);
              v57 = Value;
              Value = Length;
              CFDataGetBytePtr(v57);
              VideoSyncSampleEntryFromSampleAttachment = CMByteStreamAppend();
              v58 = theData;
              if (VideoSyncSampleEntryFromSampleAttachment)
              {
                return VideoSyncSampleEntryFromSampleAttachment;
              }

              if (Value)
              {
                goto LABEL_69;
              }

              if (theData)
              {
                goto LABEL_43;
              }
            }

            else
            {
              v58 = theData;
              if (theData)
              {
LABEL_43:
                if (CFDataGetLength(v58) >= 0x80000 || (v59 = CMByteStreamAppend(), !v59))
                {
LABEL_69:
                  fig_log_get_emitter();
                  OUTLINED_FUNCTION_3_2();
                  v59 = FigSignalErrorAtGM();
                }

                CurrentTrackRun = v59;
                v15 = v167;
                goto LABEL_63;
              }
            }

            if (*(v50 + 1))
            {
              if (v50[40] != (v172 != 0) || v50[41] != (v58 != 0))
              {
                goto LABEL_69;
              }

              v15 = v167;
              if (Value != *v50 && !*(v50 + 2))
              {
                v175 = 0;
                *&v176.byte0 = 0;
                v174 = 0;
                OUTLINED_FUNCTION_8_60();
                BlockBufferByteStream = tfbCreateBlockBufferByteStream(v48, v60, v61);
                if (BlockBufferByteStream)
                {
                  CurrentTrackRun = BlockBufferByteStream;
LABEL_66:
                  v16 = a10;
                  if (CurrentTrackRun)
                  {
                    return CurrentTrackRun;
                  }
                }

                else
                {
                  v63 = v175;
                  if (*(v50 + 1))
                  {
                    v64 = CMByteStreamAppend();
                    if (!v64)
                    {
                      fig_log_get_emitter();
                      OUTLINED_FUNCTION_3_2();
                      v64 = FigSignalErrorAtGM();
                    }

                    CurrentTrackRun = v64;
                    goto LABEL_66;
                  }

                  *v50 = 0;
                  *(v50 + 1) = *&v176.byte0;
                  *(v50 + 2) = v63;
                  v16 = a10;
                }
              }
            }

            else
            {
              v50[40] = v172 != 0;
              v50[41] = v58 != 0;
              *v50 = Value;
              v15 = v167;
            }

            if (!*(v50 + 2))
            {
              ++*(v50 + 1);
              goto LABEL_61;
            }

            VideoSyncSampleEntryFromSampleAttachment = CMByteStreamAppend();
            if (VideoSyncSampleEntryFromSampleAttachment)
            {
              return VideoSyncSampleEntryFromSampleAttachment;
            }
          }

          fig_log_get_emitter();
          OUTLINED_FUNCTION_3_2();
          CurrentTrackRun = FigSignalErrorAtGM();
LABEL_63:
          if (CurrentTrackRun)
          {
            return CurrentTrackRun;
          }

LABEL_61:
          if (++v44 == Count)
          {
            goto LABEL_76;
          }
        }

        v175 = 0;
        *&v176.byte0 = 0;
        OUTLINED_FUNCTION_8_60();
        v53 = tfbCreateBlockBufferByteStream(v48, v51, v52);
        if (!v53)
        {
          v54 = MEMORY[0x19A8CC720](v48, 48, 0x102004031FD023DLL, 0);
          if (v54)
          {
            v50 = v54;
            *(v54 + 16) = 0u;
            *(v54 + 32) = 0u;
            *v54 = 0u;
            v55 = v175;
            *(v54 + 24) = *&v176.byte0;
            *(v54 + 32) = v55;
LABEL_35:
            *(v49 + 6) = v50;
            goto LABEL_36;
          }

          fig_log_get_emitter();
          OUTLINED_FUNCTION_3_2();
          v53 = FigSignalErrorAtGM();
        }

        CurrentTrackRun = v53;
        if (v53)
        {
          return CurrentTrackRun;
        }

        v50 = 0;
        goto LABEL_35;
      }
    }

LABEL_76:
    OUTLINED_FUNCTION_10_55();
    if (v42 || v66 == 1885954932 || v66 == 1986618469)
    {
      if (v16)
      {
        v69 = v164;
        if (v14 >= 1)
        {
          while (1)
          {
            v176.byte0 = 0;
            LOBYTE(v175) = 0;
            CFArrayGetValueAtIndex(a10, 0);
            OUTLINED_FUNCTION_8_60();
            VideoSyncSampleEntryFromSampleAttachment = FigMovieGetVideoSyncSampleEntryFromSampleAttachment(v70, v71, v72);
            if (VideoSyncSampleEntryFromSampleAttachment)
            {
              return VideoSyncSampleEntryFromSampleAttachment;
            }

            MovieSampleGroupTypeSpecMakeBasic(1937337955);
            v73 = OUTLINED_FUNCTION_2_144();
            VideoSyncSampleEntryFromSampleAttachment = tfbAddSampleGroupForGroupType(v73, v74, v75, 0, 1u, v76, 1uLL, v77);
            if (VideoSyncSampleEntryFromSampleAttachment)
            {
              return VideoSyncSampleEntryFromSampleAttachment;
            }

            OUTLINED_FUNCTION_7_75();
            if (v42)
            {
              while (1)
              {
                *&v176.byte0 = 0;
                *&v176.byte8 = 0;
                v177 = 0;
                LOBYTE(v175) = 0;
                CFArrayGetValueAtIndex(a10, 0);
                OUTLINED_FUNCTION_8_60();
                VideoSyncSampleEntryFromSampleAttachment = FigMovieGetVideoTemporalLayerEntryFromSampleAttachment(v78, v79, v80);
                if (VideoSyncSampleEntryFromSampleAttachment)
                {
                  return VideoSyncSampleEntryFromSampleAttachment;
                }

                MovieSampleGroupTypeSpecMakeBasic(1953719148);
                v81 = OUTLINED_FUNCTION_2_144();
                VideoSyncSampleEntryFromSampleAttachment = tfbAddSampleGroupForGroupType(v81, v82, v83, 1, 1u, v84, 0x14uLL, v85);
                if (VideoSyncSampleEntryFromSampleAttachment)
                {
                  return VideoSyncSampleEntryFromSampleAttachment;
                }

                OUTLINED_FUNCTION_7_75();
                if (v42)
                {
                  while (1)
                  {
                    v176.byte0 = 0;
                    CFArrayGetValueAtIndex(a10, 0);
                    FigCFDictionaryGetBooleanIfPresent();
                    MovieSampleGroupTypeSpecMakeBasic(1953718643);
                    v86 = OUTLINED_FUNCTION_3_120();
                    VideoSyncSampleEntryFromSampleAttachment = OUTLINED_FUNCTION_11_57(v86, v87, v88, v89, v90, v91);
                    if (VideoSyncSampleEntryFromSampleAttachment)
                    {
                      return VideoSyncSampleEntryFromSampleAttachment;
                    }

                    OUTLINED_FUNCTION_7_75();
                    if (v42)
                    {
                      while (1)
                      {
                        v176.byte0 = 0;
                        CFArrayGetValueAtIndex(a10, 0);
                        FigCFDictionaryGetBooleanIfPresent();
                        MovieSampleGroupTypeSpecMakeBasic(1937011553);
                        v92 = OUTLINED_FUNCTION_3_120();
                        VideoSyncSampleEntryFromSampleAttachment = OUTLINED_FUNCTION_11_57(v92, v93, v94, v95, v96, v97);
                        if (VideoSyncSampleEntryFromSampleAttachment)
                        {
                          return VideoSyncSampleEntryFromSampleAttachment;
                        }

                        OUTLINED_FUNCTION_7_75();
                        if (v42)
                        {
                          goto LABEL_132;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }

        goto LABEL_132;
      }

      MovieSampleGroupTypeSpecMakeBasic(1937337955);
      v126 = OUTLINED_FUNCTION_3_120();
      VideoSyncSampleEntryFromSampleAttachment = OUTLINED_FUNCTION_4_115(v126, v127, v128, 0);
      v69 = v164;
      if (VideoSyncSampleEntryFromSampleAttachment)
      {
        return VideoSyncSampleEntryFromSampleAttachment;
      }

      MovieSampleGroupTypeSpecMakeBasic(1953719148);
      v129 = OUTLINED_FUNCTION_3_120();
      VideoSyncSampleEntryFromSampleAttachment = OUTLINED_FUNCTION_4_115(v129, v130, v131, 1);
      if (VideoSyncSampleEntryFromSampleAttachment)
      {
        return VideoSyncSampleEntryFromSampleAttachment;
      }

      Basic = MovieSampleGroupTypeSpecMakeBasic(1953718643);
      v133 = 1;
      VideoSyncSampleEntryFromSampleAttachment = OUTLINED_FUNCTION_4_115(v15, Basic, v134, 1);
      if (VideoSyncSampleEntryFromSampleAttachment)
      {
        return VideoSyncSampleEntryFromSampleAttachment;
      }

      v135 = 1937011553;
    }

    else
    {
      v69 = v164;
      if (v66 != 1936684398)
      {
        goto LABEL_132;
      }

      *&v176.byte0 = 0;
      LOBYTE(v175) = 0;
      LOBYTE(v174) = 0;
      if (a11)
      {
        OUTLINED_FUNCTION_8_60();
        VideoSyncSampleEntryFromSampleAttachment = FigMovieGetAudioRollRecoveryValueFromSampleBufferAttachment(v98, v99, v100, &v174);
        v101 = a10;
        if (VideoSyncSampleEntryFromSampleAttachment)
        {
          return VideoSyncSampleEntryFromSampleAttachment;
        }

        v102 = *&v176.byte0;
      }

      else
      {
        v102 = 0;
        v101 = a10;
      }

      *&v176.byte0 = __rev16(v102);
      if (v174)
      {
        v103 = v175 == 0;
      }

      else
      {
        v103 = 1;
      }

      v104 = !v103;
      MovieSampleGroupTypeSpecMakeBasic(1919904876);
      v105 = OUTLINED_FUNCTION_2_144();
      VideoSyncSampleEntryFromSampleAttachment = tfbAddSampleGroupForGroupType(v105, v106, v107, 0, v14, v104, 2uLL, v108);
      if (VideoSyncSampleEntryFromSampleAttachment)
      {
        return VideoSyncSampleEntryFromSampleAttachment;
      }

      if (v101)
      {
        if (v14 >= 1)
        {
          while (1)
          {
            *&v176.byte0 = 0;
            LOBYTE(v175) = 0;
            CFArrayGetValueAtIndex(a10, 0);
            OUTLINED_FUNCTION_8_60();
            VideoSyncSampleEntryFromSampleAttachment = FigMovieGetAudioIndependentSampleDecoderRefreshCountFromSampleAttachment(v109, v110, v111);
            if (VideoSyncSampleEntryFromSampleAttachment)
            {
              return VideoSyncSampleEntryFromSampleAttachment;
            }

            *&v176.byte0 = bswap32(*&v176.byte0) >> 16;
            MovieSampleGroupTypeSpecMakeBasic(1886547820);
            v112 = OUTLINED_FUNCTION_2_144();
            VideoSyncSampleEntryFromSampleAttachment = tfbAddSampleGroupForGroupType(v112, v113, v114, 0, 1u, v115, 2uLL, v116);
            if (VideoSyncSampleEntryFromSampleAttachment)
            {
              return VideoSyncSampleEntryFromSampleAttachment;
            }

            OUTLINED_FUNCTION_7_75();
            if (v42)
            {
              while (1)
              {
                *&v176.byte0 = 0;
                *&v176.byte8 = 0;
                SeamUUIDBytesFromSampleAttachmentArray = FigMovieGetSeamUUIDBytesFromSampleAttachmentArray(a10, 0, &v176);
                MovieSampleGroupTypeSpecMakeBasic(1936023917);
                v118 = OUTLINED_FUNCTION_2_144();
                VideoSyncSampleEntryFromSampleAttachment = tfbAddSampleGroupForGroupType(v118, v119, v120, 0, 1u, SeamUUIDBytesFromSampleAttachmentArray, 0x10uLL, v121);
                if (VideoSyncSampleEntryFromSampleAttachment)
                {
                  return VideoSyncSampleEntryFromSampleAttachment;
                }

                OUTLINED_FUNCTION_7_75();
                if (v42)
                {
                  goto LABEL_132;
                }
              }
            }
          }
        }

        goto LABEL_132;
      }

      MovieSampleGroupTypeSpecMakeBasic(1886547820);
      v136 = OUTLINED_FUNCTION_3_120();
      VideoSyncSampleEntryFromSampleAttachment = OUTLINED_FUNCTION_4_115(v136, v137, v138, 0);
      if (VideoSyncSampleEntryFromSampleAttachment)
      {
        return VideoSyncSampleEntryFromSampleAttachment;
      }

      v133 = 0;
      v135 = 1936023917;
    }

    MovieSampleGroupTypeSpecMakeBasic(v135);
    v139 = OUTLINED_FUNCTION_3_120();
    VideoSyncSampleEntryFromSampleAttachment = OUTLINED_FUNCTION_4_115(v139, v140, v141, v133);
    if (VideoSyncSampleEntryFromSampleAttachment)
    {
      return VideoSyncSampleEntryFromSampleAttachment;
    }

LABEL_132:
    v142 = *(v15 + 48);
    v143 = v142 + *(v15 + 40);
    v144 = a6;
    if (a6 == 1)
    {
      v145 = v69[3] - v69[6];
      v146 = v145 + v143;
      v147 = v145 + v143 + *v69 * (v14 - 1);
      v148 = *v69 * v14;
      v149 = v147 + *v69;
      LODWORD(v150) = v145;
      v152 = a12;
      v151 = a13;
    }

    else
    {
      v152 = a12;
      v151 = a13;
      v148 = 0;
      if (a6 < 1)
      {
        v146 = 0x7FFFFFFFFFFFFFFFLL;
        v149 = 0x8000000000000000;
        LODWORD(v150) = 0x7FFFFFFF;
        LODWORD(v145) = 0x80000000;
        v147 = 0x8000000000000000;
      }

      else
      {
        v153 = v69 + 3;
        LODWORD(v145) = 0x80000000;
        v147 = 0x8000000000000000;
        v146 = 0x7FFFFFFFFFFFFFFFLL;
        LODWORD(v150) = 0x7FFFFFFF;
        v149 = 0x8000000000000000;
        v154 = v142 + *(v15 + 40);
        do
        {
          v155 = *(v153 - 3);
          v156 = *v153 - v153[3];
          v157 = v156 + v154;
          v154 += v155;
          v148 += v155;
          if (v157 < v146)
          {
            v146 = v157;
          }

          v158 = v157 + v155;
          if (v147 < v157)
          {
            v149 = v158;
          }

          if (v147 <= v157)
          {
            v147 = v157;
          }

          if (v156 < v150)
          {
            v150 = *v153 - v153[3];
          }

          if (v156 > v145)
          {
            v145 = *v153 - v153[3];
          }

          v153 += 9;
          --v144;
        }

        while (v144);
      }
    }

    v159 = *(v15 + 56);
    if (v146 < v159)
    {
      v159 = v146;
    }

    *(v15 + 56) = v159;
    v160 = *(v15 + 88);
    v161 = *(v160 + 32);
    if (v146 < v161)
    {
      v161 = v146;
    }

    *(v160 + 32) = v161;
    if (*(v15 + 64) < v147)
    {
      *(v15 + 64) = v147;
      *(v15 + 72) = v149;
    }

    if (v150 >= *(v15 + 84))
    {
      LODWORD(v150) = *(v15 + 84);
    }

    if (v145 <= *(v15 + 80))
    {
      v162 = *(v15 + 80);
    }

    else
    {
      v162 = v145;
    }

    *(v15 + 80) = v162;
    *(v15 + 84) = v150;
    *(v15 + 48) = v148 + v142;
    *(v160 + 24) += v148;
    if (v152)
    {
      *v152 = v146;
    }

    if (v151)
    {
      *v151 = v143;
    }

    *&v176.byte0 = 0;
    *v160 += v14;
    CurrentTrackRun = tfbGetCurrentTrackRun(v15, &v176);
    if (!CurrentTrackRun)
    {
      **&v176.byte0 += v14;
    }

    return CurrentTrackRun;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_3_2();

  return FigSignalErrorAtGM();
}

uint64_t tfbAddSampleToSampleTable(const __CFAllocator **a1, uint64_t a2, unint64_t a3, uint64_t a4, const void *a5, uint64_t (*a6)(uint64_t))
{
  v49 = *a1;
  cf = 0;
  v52 = 0;
  v50 = 0;
  CurrentTrackRun = tfbGetCurrentTrackRun(a1, &v52);
  if (CurrentTrackRun)
  {
    goto LABEL_44;
  }

  v13 = a1[11];
  if (v13)
  {
    v14 = *(v13 + 5);
    if (v14)
    {
      if (CFArrayGetCount(v14) == 1 && !*v52)
      {
        v15 = OUTLINED_FUNCTION_184();
        v16 = a6(v15);
        tfbSetTrackFragmentHeaderDefaultValueIfNeeded(a1, a5, v16);
      }
    }
  }

  if (FigCFEqual())
  {
    v54 = 0;
    v53 = 0;
    CurrentTrackRun = tfbGetCurrentTrackRun(a1, &v54);
    if (CurrentTrackRun)
    {
      goto LABEL_44;
    }

    v17 = a1[11];
    if (v17 && (v18 = *(v17 + 5)) != 0 && CFArrayGetCount(v18) == 1)
    {
      v19 = v54;
      v20 = *v54;
      if (v20 <= 1 && v20 + a2 >= 2)
      {
        v22 = OUTLINED_FUNCTION_184();
        v23 = a6(v22);
        CurrentTrackRun = tfbGetTrackFragmentGlobalDefaultValue(a1, @"SampleFlagsKey", &v53);
        if (!CurrentTrackRun)
        {
          v24 = v53;
          if (v53 == v23)
          {
            goto LABEL_24;
          }

          tfbSetTrackFragmentHeaderDefaultValueIfNeeded(a1, @"SampleFlagsKey", v23);
LABEL_22:
          *(v19 + 16) = 1;
          v19[5] = v24;
          goto LABEL_24;
        }

LABEL_44:
        v27 = CurrentTrackRun;
        goto LABEL_48;
      }
    }

    else
    {
      v19 = v54;
      if (*v54)
      {
        goto LABEL_24;
      }

      v25 = OUTLINED_FUNCTION_184();
      v24 = a6(v25);
      TrackFragmentGlobalDefaultValue = tfbGetTrackFragmentGlobalDefaultValue(a1, @"SampleFlagsKey", &v53);
      v27 = TrackFragmentGlobalDefaultValue;
      if (!TrackFragmentGlobalDefaultValue && v53 != v24)
      {
        goto LABEL_22;
      }

      if (TrackFragmentGlobalDefaultValue)
      {
        goto LABEL_48;
      }
    }
  }

LABEL_24:
  v28 = v52;
  Value = CFDictionaryGetValue(v52[3], a5);
  if (Value)
  {
LABEL_25:
    if (a2 < 1)
    {
LABEL_29:
      v27 = 0;
      Value[2] += a2;
      goto LABEL_48;
    }

    v30 = 0;
    while (1)
    {
      v31 = OUTLINED_FUNCTION_184();
      LODWORD(v54) = bswap32(a6(v31));
      CurrentTrackRun = CMByteStreamAppend();
      if (CurrentTrackRun)
      {
        goto LABEL_44;
      }

      if (a2 == ++v30)
      {
        goto LABEL_29;
      }
    }
  }

  LODWORD(v54) = 0;
  v32 = tfbGetTrackFragmentGlobalDefaultValue(a1, a5, &v54);
  if (v32)
  {
    goto LABEL_70;
  }

  if (!FigCFEqual())
  {
    v36 = v54;
    if (a3 > 1)
    {
      goto LABEL_52;
    }

    v38 = OUTLINED_FUNCTION_184();
    if (v36 != a6(v38))
    {
      goto LABEL_52;
    }

LABEL_47:
    v27 = 0;
    goto LABEL_48;
  }

  v33 = *v28;
  if (v33 + a2 <= 1)
  {
    v34 = -1;
  }

  else
  {
    v34 = 1 - v33;
  }

  if (v33 >= 2)
  {
    v35 = 0;
  }

  else
  {
    v35 = v34;
  }

  if ((v35 & 0x80000000) != 0)
  {
    goto LABEL_47;
  }

  v36 = v54;
  if (!a3)
  {
    if ((a6)(0, a4, 0) != v36)
    {
      goto LABEL_52;
    }

    goto LABEL_47;
  }

  if (v35 >= a2)
  {
    goto LABEL_47;
  }

  while (1)
  {
    v37 = OUTLINED_FUNCTION_184();
    if (a6(v37) != v36)
    {
      break;
    }

    if (a2 == ++v35)
    {
      goto LABEL_47;
    }
  }

LABEL_52:
  v32 = tfbCreateBlockBufferByteStream(v49, &cf, &v50);
  if (!v32)
  {
    if (*v28)
    {
      v40 = 0;
      v41 = bswap32(v36);
      v42 = v50;
      while (1)
      {
        v53 = 0;
        v43 = FigCFEqual();
        v44 = v41;
        if (!v40)
        {
          v44 = v41;
          if (v43)
          {
            v44 = v41;
            if (*(v28 + 16))
            {
              v44 = bswap32(*(v28 + 5));
            }
          }
        }

        v53 = v44;
        v45 = CMByteStreamAppend();
        if (v45)
        {
          break;
        }

        if (++v40 >= *v28)
        {
          goto LABEL_61;
        }
      }

      v27 = v45;
      if (v42)
      {
        goto LABEL_65;
      }

      goto LABEL_48;
    }

LABEL_61:
    v46 = MEMORY[0x19A8CC720](v49, 32, 0x10600409BD8FBF5, 0);
    if (v46)
    {
      Value = v46;
      *v46 = 0u;
      v46[1] = 0u;
      if (a5)
      {
        v47 = CFRetain(a5);
      }

      else
      {
        v47 = 0;
      }

      *Value = v47;
      Value[2] = *v28;
      v48 = v50;
      *(Value + 2) = cf;
      *(Value + 3) = v48;
      CFDictionaryAddValue(v28[3], a5, Value);
      cf = 0;
      if (FigCFEqual())
      {
        *(v28 + 16) = 0;
      }

      goto LABEL_25;
    }

    fig_log_get_emitter();
    v32 = FigSignalErrorAtGM();
  }

LABEL_70:
  v27 = v32;
  v42 = v50;
  if (v50)
  {
LABEL_65:
    CFRelease(v42);
  }

LABEL_48:
  if (cf)
  {
    CFRelease(cf);
  }

  return v27;
}

void trbCreateSampleGroupCollectionWithDescriptionArraysApplierFunction(uint64_t a1, _DWORD *a2, CFTypeRef cf)
{
  v6 = CFGetAllocator(cf);
  Basic = MovieSampleGroupTypeSpecMakeBasic(a1);
  cfa = 0;
  if (!MovieSampleGroupCreate(v6, Basic, v8, &cfa) && !MovieSampleGroupSetDescriptionArray(cfa, a2))
  {
    MovieSampleGroupCollectionAddSampleGroup(cf, cfa);
  }

  if (cfa)
  {
    CFRelease(cfa);
  }
}

uint64_t tfbAddSampleGroupForGroupType(uint64_t a1, unint64_t a2, unsigned int a3, int a4, unsigned __int32 a5, int a6, size_t a7, const void *a8)
{
  v13 = *(a1 + 88);
  v15 = *(v13 + 56);
  if (v15)
  {
    v15 = MovieSampleGroupCollectionLookupAndRetainSampleGroup(v15, a2, a3);
  }

  v16 = 0;
  cf = v15;
  v17 = 0;
  if (a6 && !v15)
  {
    v18 = *a1;
    v19 = *(a1 + 32);
    if (v19)
    {
      v17 = MovieSampleGroupCollectionLookupAndRetainSampleGroup(v19, a2, a3);
    }

    else
    {
      v17 = 0;
    }

    if (a4)
    {
      v20 = MovieSampleGroupCreateCompactForFragment(v18, a2, a3, v17, &cf);
      if (!v20)
      {
LABEL_10:
        v21 = *(*(a1 + 88) + 64);
        if (v21 && (Value = CFDictionaryGetValue(v21, a2)) != 0)
        {
          v40 = CFRetain(Value);
          if (v40)
          {
LABEL_21:
            v16 = v40;
            v27 = MovieSampleGroupSetDescriptionArray(cf, v40);
            if (v27)
            {
              goto LABEL_37;
            }

            v28 = cf;
            v29 = *(a1 + 88);
            v32 = *(v29 + 56);
            v31 = (v29 + 56);
            v30 = v32;
            if (!v32)
            {
              v27 = MovieSampleGroupCollectionCreate(*a1, v31);
              if (v27)
              {
                goto LABEL_37;
              }

              v30 = *v31;
            }

            v27 = MovieSampleGroupCollectionAddSampleGroup(v30, v28);
            if (v27)
            {
              goto LABEL_37;
            }

            if (*v13)
            {
              MovieSampleGroupAppendSamplesWithDescriptionIndex(cf, *v13, 0);
              if (v27)
              {
                goto LABEL_37;
              }
            }

            v15 = cf;
            goto LABEL_29;
          }
        }

        else
        {
          v40 = 0;
        }

        v23 = MovieSampleGroupDescriptionArrayCreate(*a1, a2, &v40);
        if (!v23)
        {
          v24 = v40;
          v25 = *(a1 + 88);
          LODWORD(key) = 0;
          if (!*(v25 + 64))
          {
            Mutable = CFDictionaryCreateMutable(*a1, 0, 0, MEMORY[0x1E695E9E8]);
            *(v25 + 64) = Mutable;
            if (!Mutable)
            {
LABEL_50:
              fig_log_get_emitter();
              v34 = FigSignalErrorAtGM();
              if (!v34)
              {
                goto LABEL_21;
              }

LABEL_48:
              v35 = v40;
              if (v40)
              {
                goto LABEL_39;
              }

              goto LABEL_40;
            }
          }

          v23 = MovieSampleGroupDescriptionArrayCopyInfo(v24, &key, 0, 0, 0, 0);
          if (!v23)
          {
            if (!CFDictionaryGetValue(*(v25 + 64), key))
            {
              CFDictionarySetValue(*(v25 + 64), key, v24);
              goto LABEL_21;
            }

            goto LABEL_50;
          }
        }

        v34 = v23;
        goto LABEL_48;
      }
    }

    else
    {
      v20 = MovieSampleGroupCreateForFragment(v18, a2, a3, v17, &cf);
      if (!v20)
      {
        goto LABEL_10;
      }
    }

    v34 = v20;
    goto LABEL_40;
  }

LABEL_29:
  if (v15)
  {
    v40 = 0;
    if (a6)
    {
      v27 = MovieSampleGroupAddDescription(v15, a7, a8, &v40, 0);
      if (v27)
      {
        goto LABEL_37;
      }

      v15 = cf;
      v33 = v40;
    }

    else
    {
      v33 = 0;
    }

    MovieSampleGroupAppendSamplesWithDescriptionIndex(v15, a5, v33);
LABEL_37:
    v34 = v27;
    if (!v16)
    {
      goto LABEL_40;
    }

    goto LABEL_38;
  }

  v34 = 0;
  if (v16)
  {
LABEL_38:
    v35 = v16;
LABEL_39:
    CFRelease(v35);
  }

LABEL_40:
  if (v17)
  {
    CFRelease(v17);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v34;
}

uint64_t TrackFragmentBuilderGetMinDecodeToDisplay_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t TrackFragmentBuilderGetMinDecodeToDisplay_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t TrackFragmentBuilderGetMaxDecodeToDisplay_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t TrackFragmentBuilderGetMaxDecodeToDisplay_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t TrackFragmentBuilderGetTrackFragmentHeaderSampleDescriptionIndex_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t TrackFragmentBuilderGetTrackFragmentHeaderSampleDescriptionIndex_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t TrackFragmentBuilderGetTrackFragmentHeaderSampleDescriptionIndex_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t TrackFragmentBuilderGetTrackFragmentHeaderDefaultSampleDuration_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t TrackFragmentBuilderGetTrackFragmentHeaderDefaultSampleDuration_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t TrackFragmentBuilderGetTrackFragmentHeaderDefaultSampleDuration_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t TrackFragmentBuilderGetTrackFragmentHeaderDefaultSampleSize_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t TrackFragmentBuilderGetTrackFragmentHeaderDefaultSampleSize_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t TrackFragmentBuilderGetTrackFragmentHeaderDefaultSampleSize_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t TrackFragmentBuilderGetTrackFragmentHeaderDefaultSampleFlags_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t TrackFragmentBuilderGetTrackFragmentHeaderDefaultSampleFlags_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t TrackFragmentBuilderGetTrackFragmentHeaderDefaultSampleFlags_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t TrackFragmentBuilderGetSampleAuxInformation_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t TrackFragmentBuilderCopySampleGroupDescriptionArrays_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t TrackFragmentBuilderCopySampleGroupDescriptionArrays_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t TrackFragmentBuilderCopySampleGroupArray_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t TrackFragmentBuilderCopySampleGroupArray_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t TrackFragmentBuilderSetInitialBaseMediaDecodeTimeValue_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t TrackFragmentBuilderSetInitialBaseMediaDecodeTimeValue_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t TrackFragmentBuilderGetTrackFragmentBaseMediaDecodeTimeValue_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t TrackFragmentBuilderGetTrackFragmentBaseMediaDecodeTimeValue_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t TrackFragmentBuilderGetTrackFragmentBaseMediaDecodeTimeValue_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t TrackFragmentBuilderGetTrackFragmentLowestDisplayStartTimeValue_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t TrackFragmentBuilderGetTrackFragmentLowestDisplayStartTimeValue_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t TrackFragmentBuilderGetTrackFragmentMediaDecodeDuration_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t TrackFragmentBuilderGetTrackFragmentMediaDecodeDuration_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t TrackFragmentBuilderNumTrackRuns_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t TrackFragmentBuilderNumTrackRuns_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t tfbGetTrackRunAtIndex_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t TrackFragmentBuilderGetSampleDurationArrayBbufAtTrackRunIndex_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t TrackFragmentBuilderGetSampleDurationArrayBbufAtTrackRunIndex_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t TrackFragmentBuilderGetSampleDurationArrayBbufAtTrackRunIndex_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t TrackFragmentBuilderGetSampleSizeArrayBbufAtTrackRunIndex_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t TrackFragmentBuilderGetSampleSizeArrayBbufAtTrackRunIndex_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t TrackFragmentBuilderGetSampleSizeArrayBbufAtTrackRunIndex_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t TrackFragmentBuilderGetSampleFlagsArrayBbufAtTrackRunIndex_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t TrackFragmentBuilderGetSampleFlagsArrayBbufAtTrackRunIndex_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t TrackFragmentBuilderGetSampleFlagsArrayBbufAtTrackRunIndex_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t TrackFragmentBuilderGetSampleCompositionTimeOffsetArrayBbufAtTrackRunIndex_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t TrackFragmentBuilderGetSampleCompositionTimeOffsetArrayBbufAtTrackRunIndex_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t TrackFragmentBuilderGetSampleCompositionTimeOffsetArrayBbufAtTrackRunIndex_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t tfbGetSampleDurationAtIndexFunc_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t tfbGetSampleDurationAtIndexFunc_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t tfbGetSampleSizeAtIndexFunc_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t tfbGetSampleSizeAtIndexFunc_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t tfbGetSampleFlagsAtIndexFunc_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t tfbGetSampleCompositionTimeOffsetAtIndexFunc_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t tfbGetSampleCompositionTimeOffsetAtIndexFunc_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t tfbSetTrackFragmentHeaderDefaultValueIfNeeded_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t tfbGetTrackFragmentGlobalDefaultValue_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigTTMLStyleCreate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieHeaderMakerCreateWithMovieInformation(const void *a1, const void *a2, int a3, void *a4)
{
  if (a2 && a4)
  {
    v8 = MEMORY[0x19A8CC720](a1, 144, 0x10600409F09A6F5, 0);
    if (v8)
    {
      v9 = v8;
      bzero(v8, 0x90uLL);
      if (a1)
      {
        v10 = CFRetain(a1);
      }

      else
      {
        v10 = 0;
      }

      *v9 = v10;
      v9[1] = CFRetain(a2);
      *(v9 + 4) = a3;
      OUTLINED_FUNCTION_613();
      Mutable = CFArrayCreateMutable(v11, v12, v13);
      result = 0;
      v9[11] = Mutable;
      *a4 = v9;
    }

    else
    {
      return 4294950966;
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_4();

    return FigSignalErrorAtGM();
  }

  return result;
}

uint64_t addTrack(uint64_t a1, const void *a2, void *a3)
{
  v6 = MEMORY[0x19A8CC720](*a1, 88, 0x1060040405E464ALL, 0);
  if (!v6)
  {
    return 4294950966;
  }

  v7 = v6;
  *(v6 + 80) = 0;
  *(v6 + 48) = 0u;
  *(v6 + 64) = 0u;
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0u;
  *v6 = 0u;
  if (a2)
  {
    v8 = CFRetain(a2);
  }

  else
  {
    v8 = 0;
  }

  *v7 = v8;
  v7[16] = 257;
  *(v7 + 34) = 1;
  v7[18] = 257;
  *(v7 + 11) = 0;
  CFArrayAppendValue(*(a1 + 88), v7);
  result = 0;
  if (a3)
  {
    *a3 = v7;
  }

  return result;
}

CFIndex MovieHeaderMakerCopyMovieHeaderAsBlockBuffer(uint64_t a1, const __CFAllocator *a2, uint64_t a3, const __CFURL *a4, CFIndex appended)
{
  v9 = a1;
  v142 = *MEMORY[0x1E69E9840];
  v114 = 0;
  v112 = 0u;
  v113 = 0u;
  v111 = 0u;
  v10 = *(a1 + 8);
  blockBufferOut = 0;
  v110 = 0;
  if (!isMovieHeaderMakerSupportedFileType() || !appended)
  {
    fig_log_get_emitter();
    appended = FigSignalErrorAtGM();
    v106 = 0;
    goto LABEL_126;
  }

  v105 = appended;
  if (a4)
  {
    v106 = CFURLCopyPathExtension(a4);
    if (FigGetFileTypeForMovieFamilyExtension(v106))
    {
      FigCFEqual();
    }
  }

  else
  {
    v106 = 0;
  }

  TrackReferenceDictionary = MovieInformationCreateTrackReferenceDictionary(a2, v10, &v110);
  if (TrackReferenceDictionary)
  {
    goto LABEL_134;
  }

  v12 = v110;
  *(v9 + 96) = a4;
  *(v9 + 104) = v12;
  *(v9 + 112) = a3;
  *(v9 + 120) = FigFileTypeIsISOFileType();
  TrackReferenceDictionary = CMBlockBufferCreateEmpty(a2, 0x20u, 0, &blockBufferOut);
  if (TrackReferenceDictionary)
  {
    goto LABEL_134;
  }

  TrackReferenceDictionary = FigAtomWriterInitWithBlockBuffer();
  if (TrackReferenceDictionary)
  {
    goto LABEL_134;
  }

  if ((*(v9 + 16) & 2) != 0)
  {
    TrackCount = MovieInformationGetTrackCount(v10);
    if (TrackCount >= 1)
    {
      v14 = TrackCount;
      v15 = 0;
      while (1)
      {
        v16 = OUTLINED_FUNCTION_517();
        TrackForTrackIndex = MovieInformationFindTrackForTrackIndex(v16, v17);
        TrackReferenceDictionary = addTrack(v9, TrackForTrackIndex, 0);
        if (TrackReferenceDictionary)
        {
          break;
        }

        if (v14 == ++v15)
        {
          goto LABEL_15;
        }
      }

LABEL_134:
      appended = TrackReferenceDictionary;
      goto LABEL_126;
    }
  }

LABEL_15:
  v19 = *(v9 + 88);
  if (v19)
  {
    Count = CFArrayGetCount(v19);
  }

  else
  {
    Count = 0;
  }

  PSSHDataEntries = FigAtomWriterBeginAtom();
  if (PSSHDataEntries)
  {
    goto LABEL_143;
  }

  *&v21 = OUTLINED_FUNCTION_17_38();
  v22 = *(v9 + 8);
  v118 = 0;
  v128 = 0.0;
  *&v125 = 0.0;
  memset(newTimescale, 0, sizeof(newTimescale));
  LODWORD(v121) = 0;
  *v119 = v21;
  v120 = v21;
  MovieInformationGetMovieDuration(v22, valuePtr);
  value = *&valuePtr[0];
  NextTrackID = MovieInformationGetNextTrackID(v22);
  v135 = 0;
  v133 = 0u;
  v134 = 0u;
  v131 = 0u;
  v132 = 0u;
  *theString = 0u;
  v130 = 0u;
  memset(v141, 0, 32);
  v139 = 0u;
  v140 = 0u;
  memset(buffer, 0, sizeof(buffer));
  if (MovieInformationGetBasicMetrics(v22, &v128, &v125, newTimescale, v119))
  {
    goto LABEL_142;
  }

  v108 = v9;
  if (FigCFEqual())
  {
    v25 = *(v9 + 88);
    if (v25)
    {
      v26 = CFArrayGetCount(v25);
      v124 = **&MEMORY[0x1E6960CC0];
      if (v26 >= 1)
      {
        v27 = v26;
        v28 = 0;
        appended = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(v9 + 88), appended);
          if (MovieTrackGetMediaTimeScale(*ValueAtIndex))
          {
            memset(&time, 0, sizeof(time));
            MediaDurationValue = MovieTrackGetMediaDurationValue(*ValueAtIndex);
            MediaTimeScale = MovieTrackGetMediaTimeScale(*ValueAtIndex);
            CMTimeMake(&time, MediaDurationValue, MediaTimeScale);
            time1 = time;
            time2 = v124;
            if (CMTimeCompare(&time1, &time2) >= 1)
            {
              v124 = time;
              v28 = *ValueAtIndex;
            }

            v9 = v108;
          }

          ++appended;
        }

        while (v27 != appended);
        if (v28)
        {
          memset(&time, 0, sizeof(time));
          time1 = v124;
          CMTimeConvertScale(&time, &time1, newTimescale[0], kCMTimeRoundingMethod_QuickTime);
          value = time.value;
        }
      }
    }
  }

  if (MovieInformationGetTimeInfo(v22, &v118, &newTimescale[1]))
  {
    goto LABEL_142;
  }

  v32 = MEMORY[0x1E695E460];
  if ((*(v9 + 16) & 1) == 0)
  {
    *&newTimescale[1] = (CFAbsoluteTimeGetCurrent() + *v32);
  }

  v33 = v128;
  v34 = *&v125;
  if (FigAtomWriterInitWithParent() || FigAtomWriterBeginAtom())
  {
LABEL_142:
    OUTLINED_FUNCTION_34_25();
    goto LABEL_138;
  }

  v35 = bswap32(vcvtd_n_s64_f64(v33, 0x10uLL));
  v36 = bswap32(vcvtd_n_s64_f64(v34, 8uLL));
  v37 = bswap32(NextTrackID);
  if (HIDWORD(value) || HIDWORD(v118) || HIDWORD(*&newTimescale[1]))
  {
    appended = buffer;
    *(buffer + 4) = bswap64(v118);
    *(&buffer[1] + 4) = bswap64(*&newTimescale[1]);
    LODWORD(buffer[0]) = 1;
    HIDWORD(buffer[2]) = bswap32(newTimescale[0]);
    buffer[3] = bswap64(value);
    LODWORD(buffer[4]) = v35;
    HIDWORD(buffer[4]) = HIWORD(v36);
    buffer[5] = 0;
    figMatrixToBigEndianMatrixRecord(v119, &v139);
    memset(v141 + 4, 0, 24);
    HIDWORD(v141[1]) = v37;
  }

  else
  {
    LODWORD(theString[0]) = 0;
    HIDWORD(theString[0]) = bswap32(v118);
    theString[1] = _byteswap_uint64(*newTimescale);
    *&v130 = __PAIR64__(v35, bswap32(value));
    *(&v130 + 1) = HIWORD(v36);
    LODWORD(v131) = 0;
    figMatrixToBigEndianMatrixRecord(v119, &v131 + 4);
    v134 = 0uLL;
    *(&v133 + 1) = 0;
    v135 = v37;
  }

  FigAtomWriterAppendData();
  OUTLINED_FUNCTION_34_25();
  FigAtomWriterEndAtom();
  if (appended)
  {
    goto LABEL_139;
  }

  if (Count >= 1)
  {
    v38 = 0;
    v39 = *v32;
    while (1)
    {
      v40 = CFArrayGetValueAtIndex(*(v9 + 88), v38);
      if (hasFormatDescriptionAndNonZeroMediaTimeScale(*v40))
      {
        break;
      }

      if (++v38 == Count)
      {
        goto LABEL_73;
      }
    }

    v122 = 0;
    v120 = 0u;
    v121 = 0u;
    *v119 = 0u;
    v41 = FigAtomWriterInitWithParent();
    if (v41 || (v41 = FigAtomWriterBeginAtom(), v41))
    {
      appended = v41;
      goto LABEL_138;
    }

    OUTLINED_FUNCTION_17_38();
    v42 = *v40;
    time1.value = 0;
    time2.value = 0;
    LODWORD(v118) = 0;
    TrackDurationValue = MovieTrackGetTrackDurationValue(v42);
    Volume = MovieTrackGetVolume(v42);
    Layer = MovieTrackGetLayer(v42);
    DefaultAlternateGroupID = MovieTrackGetDefaultAlternateGroupID(v42);
    newTimescale[1] = 0;
    v128 = 0.0;
    v127 = 0;
    memset(valuePtr, 0, sizeof(valuePtr));
    LODWORD(v134) = 0;
    v132 = 0u;
    v133 = 0u;
    v130 = 0u;
    v131 = 0u;
    *theString = 0u;
    v140 = 0u;
    v141[0] = 0u;
    v139 = 0u;
    memset(buffer, 0, sizeof(buffer));
    if (*(v9 + 120))
    {
      MovieTrackGetTrackType(*v40);
      OUTLINED_FUNCTION_21_32();
      if (v48)
      {
        v49 = 5;
      }

      else
      {
        v49 = 1;
      }

      if (v47 == 1885954932)
      {
        v50 = 7;
      }

      else
      {
        v50 = v49;
      }
    }

    else
    {
      v50 = 15;
    }

    if (OUTLINED_FUNCTION_41_22())
    {
      *&v125 = 0.0;
      OUTLINED_FUNCTION_613();
      BasicMetrics = MovieInformationGetBasicMetrics(v51, v52, v53, v54, 0);
      if (BasicMetrics)
      {
LABEL_133:
        appended = BasicMetrics;
        FigAtomWriterEndAtom();
LABEL_138:
        FigAtomWriterEndAtom();
        goto LABEL_139;
      }

      if (MovieTrackGetMediaTimeScale(v42))
      {
        memset(&v124, 0, sizeof(v124));
        v56 = MovieTrackGetMediaDurationValue(v42);
        v57 = MovieTrackGetMediaTimeScale(v42);
        CMTimeMake(&time, v56, v57);
        CMTimeConvertScale(&v124, &time, v125, kCMTimeRoundingMethod_QuickTime);
        TrackDurationValue = v124.value;
      }
    }

    BasicMetrics = MovieTrackGetBasicInfo(v42, 0, &v118);
    if (!BasicMetrics)
    {
      BasicMetrics = MovieTrackGetTrackTimeInfo(v42, &time1, &time2);
      if (!BasicMetrics)
      {
        if ((*(v9 + 16) & 1) == 0)
        {
          time2.value = (v39 + CFAbsoluteTimeGetCurrent());
        }

        MovieTrackGetSpatialInformation(v42, &newTimescale[1], &v128, valuePtr);
        v58 = *&newTimescale[1];
        v59 = v128;
        BasicMetrics = FigAtomWriterInitWithParent();
        if (!BasicMetrics)
        {
          BasicMetrics = FigAtomWriterBeginAtom();
          if (!BasicMetrics)
          {
            if (MovieTrackIsEnabled(v42))
            {
              v60 = v50;
            }

            else
            {
              v60 = v50 & 0xE;
            }

            v61 = (TrackDurationValue | time2.value | time1.value) >> 32;
            v62 = bswap32(v60 | ((v61 != 0) << 24));
            if (v61)
            {
              *(buffer + 4) = bswap64(time1.value);
              *(&buffer[1] + 4) = bswap64(time2.value);
              v64 = &buffer[5];
              v63 = &buffer[4] + 4;
              LODWORD(buffer[0]) = v62;
              *(&buffer[2] + 4) = bswap32(v118);
              v65 = &buffer[5] + 6;
              v66 = (&buffer[5] + 4);
              v68 = &v139 + 2;
              v67 = &v139;
              *(&buffer[3] + 4) = bswap64(TrackDurationValue);
              v70 = v141 + 8;
              v69 = &v139 + 4;
              v71 = (v141 + 12);
              appended = 96;
            }

            else
            {
              theString[0] = __PAIR64__(bswap32(time1.value), v62);
              v64 = &v130 + 3;
              v63 = &v130 + 8;
              theString[1] = _byteswap_uint64(__PAIR64__(time2.value, v118));
              v65 = &v131 + 2;
              v66 = &v131;
              v68 = &v131 + 6;
              v67 = (&v131 + 4);
              LODWORD(v130) = 0;
              DWORD1(v130) = bswap32(TrackDurationValue);
              v70 = &v133 + 12;
              v69 = &v131 + 8;
              v71 = &v134;
              appended = 84;
            }

            *v63 = 0;
            *v64 = 0;
            *v66 = bswap32(Layer) >> 16;
            *v65 = bswap32(DefaultAlternateGroupID) >> 16;
            *v67 = bswap32(vcvtd_n_s64_f64(Volume, 8uLL)) >> 16;
            *v68 = 0;
            figMatrixToBigEndianMatrixRecord(valuePtr, v69);
            *v70 = bswap32(vcvtd_n_s64_f64(v58, 0x10uLL));
            *v71 = bswap32(vcvtd_n_s64_f64(v59, 0x10uLL));
            FigAtomWriterAppendData();
            OUTLINED_FUNCTION_34_25();
            FigAtomWriterEndAtom();
            v9 = v108;
            goto LABEL_138;
          }
        }
      }
    }

    goto LABEL_133;
  }

LABEL_73:
  if (*(v9 + 40))
  {
    CMBlockBufferGetDataLength(*(v9 + 40));
    appended = FigAtomWriterAppendBlockBufferData();
  }

  else
  {
    v119[0] = 0;
    memset(buffer, 0, 32);
    *theString = 0u;
    v130 = 0u;
    OUTLINED_FUNCTION_41_22();
    v72 = 0;
    v73 = 0;
    cf.value = @"com.apple.quicktime.mdta";
    *&cf.timescale = @"com.apple.quicktime.udta";
    cf.epoch = @"org.mp4ra";
    v137 = @"com.apple.itunes";
    do
    {
      v74 = *(&cf.value + v72);
      MovieMetadataItemArray = MovieInformationGetMovieMetadataItemArray(*(v108 + 8), v74);
      if (MovieMetadataItemArray)
      {
        buffer[v73] = v74;
        theString[v73++] = MovieMetadataItemArray;
      }

      v72 += 8;
    }

    while (v72 != 32);
    v9 = v108;
    v76 = OUTLINED_FUNCTION_33_24();
    MetadataSerializerDictionaryWithMetadata = createMetadataSerializerDictionaryWithMetadata(v76, v77, v78, v79, 0, v80, v81, v82, v104);
    v84 = v119[0];
    if (!MetadataSerializerDictionaryWithMetadata)
    {
      MetadataSerializerDictionaryWithMetadata = appendMetadataFromMetadataSerializerDictionary(v119[0]);
    }

    appended = MetadataSerializerDictionaryWithMetadata;
    if (v84)
    {
      CFRelease(v84);
    }
  }

  if (appended)
  {
    goto LABEL_139;
  }

  if (*(v9 + 48))
  {
    OUTLINED_FUNCTION_9_57();
    v85 = *(v9 + 88);
    if (v85)
    {
      v86 = CFArrayGetCount(v85);
    }

    else
    {
      v86 = 0;
    }

    v87 = FigAtomWriterInitWithParent();
    if (v87 || (v87 = FigAtomWriterBeginAtom(), v87))
    {
      appended = v87;
      goto LABEL_138;
    }

    if (*(v9 + 64))
    {
      OUTLINED_FUNCTION_2_145();
      LODWORD(time.value) = 0;
      v124.value = 0;
      DWORD2(valuePtr[0]) = 0;
      *&valuePtr[0] = 0;
      OUTLINED_FUNCTION_613();
      if (MovieInformationGetBasicMetrics(v88, v89, v90, v91, 0) || (*v119 = *(v9 + 52), *&v120 = *(v9 + 68), CMTimeConvertScale(&cf, v119, time.value, kCMTimeRoundingMethod_RoundHalfAwayFromZero), v92 = cf.value, FigAtomWriterInitWithParent()) || FigAtomWriterBeginAtom())
      {
LABEL_136:
        OUTLINED_FUNCTION_15_45();
        FigAtomWriterEndAtom();
        goto LABEL_138;
      }

      if (v92 < 0x100000000)
      {
        LODWORD(v124.value) = 0;
        HIDWORD(v124.value) = bswap32(v92);
      }

      else
      {
        LODWORD(valuePtr[0]) = 1;
        *(valuePtr + 4) = bswap64(v92);
      }

      FigAtomWriterAppendData();
      OUTLINED_FUNCTION_15_45();
      FigAtomWriterEndAtom();
    }

    if (v86 >= 1)
    {
      for (i = 0; v86 != i; ++i)
      {
        v94 = CFArrayGetValueAtIndex(*(v9 + 88), i);
        if (hasFormatDescriptionAndNonZeroMediaTimeScale(*v94))
        {
          OUTLINED_FUNCTION_2_145();
          v95 = *v94;
          LODWORD(v119[0]) = 0;
          memset(&cf, 0, sizeof(cf));
          LODWORD(valuePtr[0]) = 0;
          LODWORD(v124.value) = 0;
          LODWORD(time.value) = 0;
          LODWORD(time1.value) = 0;
          if (MovieTrackGetBasicInfo(v95, 0, v119) || MovieTrackGetTrackExtendsDefaultValues(v95, valuePtr, &v124, &time, &time1) || FigAtomWriterInitWithParent() || FigAtomWriterBeginAtom())
          {
            goto LABEL_136;
          }

          LODWORD(cf.value) = 0;
          HIDWORD(cf.value) = bswap32(v119[0]);
          *&cf.timescale = _byteswap_uint64(__PAIR64__(valuePtr[0], v124.value));
          cf.epoch = _byteswap_uint64(__PAIR64__(time.value, time1.value));
          OUTLINED_FUNCTION_26_30();
          FigAtomWriterAppendData();
          OUTLINED_FUNCTION_15_45();
          FigAtomWriterEndAtom();
        }
      }
    }

    FigAtomWriterEndAtom();
  }

  OUTLINED_FUNCTION_2_145();
  v96 = *(v9 + 8);
  theString[0] = 0;
  cf.value = 0;
  v119[0] = 0;
  LODWORD(valuePtr[0]) = 0;
  PSSHDataEntries = MovieInformationGetPSSHDataEntries(v96, theString);
  if (PSSHDataEntries)
  {
LABEL_143:
    appended = PSSHDataEntries;
    goto LABEL_139;
  }

  if (!theString[0])
  {
    goto LABEL_124;
  }

  v97 = FigAtomWriterInitWithParent();
  if (v97)
  {
LABEL_135:
    appended = v97;
    v9 = v108;
LABEL_139:
    FigAtomWriterEndAtom();
    goto LABEL_126;
  }

  if (CFArrayGetCount(theString[0]) < 1)
  {
LABEL_124:
    FigAtomWriterEndAtom();
    v9 = v108;
    goto LABEL_125;
  }

  v98 = 0;
  while (1)
  {
    v99 = CFArrayGetValueAtIndex(theString[0], v98);
    if (!CFDictionaryGetValueIfPresent(v99, @"SystemID", &cf) || !CFDictionaryGetValueIfPresent(v99, @"Data", v119))
    {
      goto LABEL_123;
    }

    DataLength = CMBlockBufferGetDataLength(cf.value);
    v101 = CMBlockBufferGetDataLength(v119[0]);
    if (!DataLength)
    {
      break;
    }

    v102 = v101;
    if (!v101)
    {
      break;
    }

    v97 = FigAtomWriterBeginAtom();
    if (v97)
    {
      goto LABEL_135;
    }

    OUTLINED_FUNCTION_296();
    v97 = FigAtomWriterAppendVersionAndFlags();
    if (v97)
    {
      goto LABEL_135;
    }

    v97 = FigAtomWriterAppendBlockBufferData();
    if (v97)
    {
      goto LABEL_135;
    }

    LODWORD(valuePtr[0]) = bswap32(v102);
    v97 = FigAtomWriterAppendData();
    if (v97)
    {
      goto LABEL_135;
    }

    v97 = FigAtomWriterAppendBlockBufferData();
    if (v97)
    {
      goto LABEL_135;
    }

    v97 = FigAtomWriterEndAtom();
    if (v97)
    {
      goto LABEL_135;
    }

LABEL_123:
    if (++v98 >= CFArrayGetCount(theString[0]))
    {
      goto LABEL_124;
    }
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_120();
  appended = FigSignalErrorAtGM();
  FigAtomWriterEndAtom();
  v9 = v108;
  if (!appended)
  {
LABEL_125:
    appended = 0;
    *v105 = blockBufferOut;
    blockBufferOut = 0;
  }

LABEL_126:
  *(v9 + 96) = 0;
  *(v9 + 104) = 0;
  *(v9 + 120) = 0;
  *(v9 + 112) = 0;
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  if (v110)
  {
    CFRelease(v110);
  }

  if (v106)
  {
    CFRelease(v106);
  }

  return appended;
}

uint64_t getTimeValueToAddToCompositionOffsets(uint64_t a1, uint64_t a2, int a3, int *a4, _BYTE *a5, _BYTE *a6)
{
  v10 = *(a1 + 8);
  v11 = *a2;
  value = 0;
  LOBYTE(v12) = *(a1 + 120);
  if (!v12)
  {
    goto LABEL_19;
  }

  v12 = *(a2 + 44);
  if (v12 == 1)
  {
    goto LABEL_19;
  }

  if (!v12)
  {
    MovieTrackGetMediaType(v11);
    OUTLINED_FUNCTION_21_32();
    v15 = v15 || v14 == 1986618469;
    if (v15 || v14 == 1885954932)
    {
      v17 = MovieTrackCopyFormatDescriptionArray(v11);
      if (v17)
      {
        v18 = v17;
        Count = CFArrayGetCount(v17);
        if (Count >= 1)
        {
          v20 = Count;
          v21 = 0;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v18, v21);
            if (CMFormatDescriptionGetMediaSubType(ValueAtIndex) == 1635148593)
            {
              break;
            }

            if (v20 == ++v21)
            {
              goto LABEL_17;
            }
          }

          CFRelease(v18);
          goto LABEL_28;
        }

LABEL_17:
        CFRelease(v18);
      }
    }

    LOBYTE(v12) = 1;
    goto LABEL_19;
  }

LABEL_28:
  result = getCompositionOffsetToDTDDeltaShift(v10, v11, a3, &value);
  if (result)
  {
    return result;
  }

  if ((*(a2 + 68) & 0x1D) == 1)
  {
    MediaTimeScale = MovieTrackGetMediaTimeScale(v11);
    memset(&v28, 0, sizeof(v28));
    time = *(a2 + 56);
    CMTimeConvertScale(&v28, &time, MediaTimeScale, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
    if (v28.value < value)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1_4();
      return FigSignalErrorAtGM();
    }

    LOBYTE(v12) = 0;
    value = v28.value;
  }

  else
  {
    LOBYTE(v12) = 0;
  }

LABEL_19:
  v23 = *(a2 + 48);
  if (v23)
  {
    v24 = value;
    v23 = *(a2 + 52) != value;
  }

  else
  {
    *(a2 + 48) = 1;
    v24 = value;
    *(a2 + 52) = value;
  }

  *a4 = v24;
  if (a5)
  {
    *a5 = v12;
  }

  result = 0;
  if (a6)
  {
    *a6 = v23;
  }

  return result;
}

uint64_t getCompositionOffsetToDTDDeltaShift(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v11 = 0;
  result = MovieTrackGetCompositionOffsetRange(a1, a2, &v11, 0);
  if (!result)
  {
    if (a3)
    {
      v9 = v11;
    }

    else
    {
      v10 = 0;
      result = MovieTrackFragmentGetCompositionOffsetRange(a1, a2, &v10, 0);
      if (result)
      {
        return result;
      }

      v9 = v11;
      if (v11 >= v10)
      {
        v9 = v10;
      }
    }

    result = 0;
    *a4 = -v9 & (v9 >> 31);
  }

  return result;
}

uint64_t appendMediaInfoAtom(uint64_t a1, uint64_t *a2)
{
  v604 = *MEMORY[0x1E69E9840];
  v572 = 0;
  *v546 = 0u;
  v559 = 0u;
  *v533 = 0u;
  v5 = FigAtomWriterInitWithParent();
  if (v5 || (v5 = FigAtomWriterBeginAtom(), v5))
  {
    BlockBufferWithCFDataNoCopy = v5;
    goto LABEL_302;
  }

  MovieTrackGetMediaType(*a2);
  OUTLINED_FUNCTION_21_32();
  v7 = v7 || v6 == 1986618469;
  if (v7)
  {
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_35_20();
  if (v8 == v9)
  {
    OUTLINED_FUNCTION_0_161();
    *&v596 = 0;
    if (FigAtomWriterInitWithParent() || FigAtomWriterBeginAtom())
    {
      goto LABEL_16;
    }

    *&v596 = 0;
    goto LABEL_15;
  }

  if (v8 == 1885954932)
  {
LABEL_9:
    OUTLINED_FUNCTION_0_161();
    DWORD2(v596) = 0;
    *&v596 = 0;
    v10 = *(a1 + 120) == 0;
    if (FigAtomWriterInitWithParent() || FigAtomWriterBeginAtom())
    {
      goto LABEL_16;
    }

    LODWORD(v596) = 0x1000000;
    *(&v596 + 4) = OUTLINED_FUNCTION_31_26(vcltz_s32(vshl_n_s32(vdup_n_s32(v10), 0x1FuLL)), 0x8000004000);
LABEL_15:
    FigAtomWriterAppendData();
LABEL_16:
    OUTLINED_FUNCTION_20_32();
    goto LABEL_17;
  }

  if (*(a1 + 120))
  {
    OUTLINED_FUNCTION_0_161();
    if (!FigAtomWriterInitWithParent() && !FigAtomWriterBeginAtom())
    {
      OUTLINED_FUNCTION_296();
      FigAtomWriterAppendVersionAndFlags();
    }

    goto LABEL_16;
  }

  v589 = 0;
  v587 = 0u;
  v588 = 0u;
  *cf = 0u;
  MediaType = MovieTrackGetMediaType(*a2);
  v339 = FigAtomWriterInitWithParent();
  if (v339 || (v339 = FigAtomWriterBeginAtom(), v339))
  {
    BlockBufferWithCFDataNoCopy = v339;
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_0_161();
  v340 = *(a1 + 120) == 0;
  if (FigAtomWriterInitWithParent() || FigAtomWriterBeginAtom())
  {
LABEL_345:
    OUTLINED_FUNCTION_20_32();
    goto LABEL_346;
  }

  *(&v596 + 4) = OUTLINED_FUNCTION_31_26(vcltz_s32(vshl_n_s32(vdup_n_s32(v340), 0x1FuLL)), 0x8000004000);
  LODWORD(v596) = 0;
  HIDWORD(v596) = 0;
  FigAtomWriterAppendData();
  OUTLINED_FUNCTION_20_32();
  FigAtomWriterEndAtom();
  if (BlockBufferWithCFDataNoCopy)
  {
    goto LABEL_17;
  }

  if (MediaType == 1952807028)
  {
    OUTLINED_FUNCTION_0_161();
    MovieTrackGetTrackType(*a2);
    v596 = 0x3F800000uLL;
    *(v597 + 4) = 0;
    *(&v597[1] + 4) = 0x3F80000000000000;
    LODWORD(v597[0]) = 1065353216;
    LODWORD(v593) = 0;
    *blockBufferOut = 0u;
    *v592 = 0u;
    if (!FigAtomWriterInitWithParent() && !FigAtomWriterBeginAtom())
    {
      figMatrixToBigEndianMatrixRecord(&v596, blockBufferOut);
      FigAtomWriterAppendData();
    }

    goto LABEL_345;
  }

  if (MediaType == 1953325924)
  {
    *&v341 = OUTLINED_FUNCTION_8_61();
    v594 = 0;
    *v592 = v341;
    v593 = v341;
    *blockBufferOut = v341;
    v342 = *a2;
    memset(relativeURL, 0, 20);
    bzero(buffer, 0x100uLL);
    MovieTrackGetTrackType(v342);
    LOBYTE(temporaryBlock) = 0;
    MustBeShown = MovieTrackGetTimecodeMustBeShown(v342, &temporaryBlock);
    if (!MustBeShown)
    {
      MustBeShown = FigAtomWriterInitWithParent();
      if (!MustBeShown)
      {
        MustBeShown = FigAtomWriterBeginAtom();
        if (!MustBeShown)
        {
          MustBeShown = FigAtomWriterInitWithParent();
          if (!MustBeShown)
          {
            MustBeShown = FigAtomWriterBeginAtom();
            if (!MustBeShown)
            {
              MustBeShown = FigAtomWriterAppendVersionAndFlags();
              if (!MustBeShown)
              {
                *relativeURL = 5632;
                *&relativeURL[4] = 3072;
                *&relativeURL[6] = 0;
                *&relativeURL[14] = -1;
                *&relativeURL[18] = -1;
                MustBeShown = FigAtomWriterAppendData();
                if (!MustBeShown)
                {
                  SystemEncoding = CFStringGetSystemEncoding();
                  if (!CFStringGetPascalString(@"Courier", buffer, 256, SystemEncoding))
                  {
                    BlockBufferWithCFDataNoCopy = 4294950961;
                    goto LABEL_320;
                  }

                  MustBeShown = FigAtomWriterAppendData();
                }
              }
            }
          }
        }
      }
    }

    BlockBufferWithCFDataNoCopy = MustBeShown;
LABEL_320:
    FigAtomWriterEndAtom();
LABEL_346:
    FigAtomWriterEndAtom();
    goto LABEL_17;
  }

  BlockBufferWithCFDataNoCopy = 0;
LABEL_17:
  FigAtomWriterEndAtom();
  if (BlockBufferWithCFDataNoCopy)
  {
    goto LABEL_302;
  }

  if (!*(a1 + 120))
  {
    OUTLINED_FUNCTION_8_61();
    bzero(buffer, 0x100uLL);
    blockBufferOut[0] = 0;
    blockBufferOut[1] = 0;
    LOWORD(v592[1]) = 0;
    v592[0] = 0;
    appended = FigAtomWriterInitWithParent();
    if (appended)
    {
      goto LABEL_386;
    }

    appended = FigAtomWriterBeginAtom();
    if (appended)
    {
      goto LABEL_386;
    }

    *blockBufferOut = xmmword_196E78CB0;
    v592[0] = 0;
    appended = FigAtomWriterAppendData();
    if (appended)
    {
      goto LABEL_386;
    }

    v12 = CFStringGetSystemEncoding();
    PascalString = CFStringGetPascalString(@"Core Media Data Handler", buffer, 256, v12);
    if (!PascalString)
    {
      BlockBufferWithCFDataNoCopy = 4294950961;
      goto LABEL_301;
    }

    OUTLINED_FUNCTION_14_49(PascalString, v14, v15, v16, v17, v18, v19, v20, v403, v410, v417, v424, v431, v438, v445, extensionKey, v459, v466, v473, flavor, v487, v495, v502, v509, v516, allocator, 0, 0, 0, 0, 0, 0, 0, v579, cf[0], cf[1], v587, *(&v587 + 1), v588, *(&v588 + 1), v589, v590, blockBufferOut[0], blockBufferOut[1], v592[0], v592[1], v593, *(&v593 + 1), v594, v595, v596);
    BlockBufferWithCFDataNoCopy = FigAtomWriterAppendData();
    FigAtomWriterEndAtom();
    if (BlockBufferWithCFDataNoCopy)
    {
      goto LABEL_302;
    }
  }

  OUTLINED_FUNCTION_8_61();
  appended = FigAtomWriterInitWithParent();
  if (appended || (appended = FigAtomWriterBeginAtom(), appended))
  {
LABEL_386:
    BlockBufferWithCFDataNoCopy = appended;
    goto LABEL_301;
  }

  OUTLINED_FUNCTION_0_161();
  LODWORD(blockBufferOut[1]) = 0;
  blockBufferOut[0] = 0;
  v21 = *a2;
  cf[0] = 0;
  NumDataSources = MovieTrackGetNumDataSources(v21);
  v30 = MEMORY[0x1E695E480];
  v517 = a1;
  v488 = a2;
  if (!NumDataSources)
  {
    BlockBufferWithCFDataNoCopy = 0;
LABEL_64:
    FigAtomWriterEndAtom();
    v42 = 0;
    goto LABEL_65;
  }

  v31 = NumDataSources;
  OUTLINED_FUNCTION_14_49(NumDataSources, v23, v24, v25, v26, v27, v28, v29, v403, v410, v417, v424, v431, v438, v445, extensionKey, v459, v466, v473, flavor, a2, v495, v502, v509, a1, allocator, v533[0], v533[1], v546[0], v546[1], v559, *(&v559 + 1), v572, v579, cf[0], cf[1], v587, *(&v587 + 1), v588, *(&v588 + 1), v589, v590, blockBufferOut[0], blockBufferOut[1], v592[0], v592[1], v593, *(&v593 + 1), v594, v595, v596);
  v32 = FigAtomWriterInitWithParent();
  if (v32 || (v32 = FigAtomWriterBeginAtom(), v32) || (OUTLINED_FUNCTION_296(), v32 = FigAtomWriterAppendVersionAndFlags(), v32) || (*relativeURL = bswap32(v31), v32 = FigAtomWriterAppendData(), v32))
  {
    BlockBufferWithCFDataNoCopy = v32;
    goto LABEL_64;
  }

  v36 = 0;
  allocatora = 0;
  v37 = *v30;
  while (1)
  {
    *relativeURL = 0;
    MovieTrackGetDataSourceAtIndex(*(a1 + 8), v21, v36, 0, relativeURL, v33, v34, v35, v403, v410, v417, v424, v431, v438, v445, extensionKey, v459, v466, v473, flavor, v488, v495, v502, v509);
    if (v38)
    {
      goto LABEL_389;
    }

    if (*relativeURL && !FigCFEqual())
    {
      break;
    }

    if (*(a1 + 120))
    {
      v39 = 543978101;
    }

    else
    {
      v39 = 1936288865;
    }

    LODWORD(blockBufferOut[0]) = 201326592;
    HIDWORD(blockBufferOut[0]) = v39;
    LODWORD(blockBufferOut[1]) = 0x1000000;
    v38 = FigAtomWriterAppendData();
    if (v38)
    {
      goto LABEL_389;
    }

LABEL_60:
    if (v31 == ++v36)
    {
      FigAtomWriterEndAtom();
      BlockBufferWithCFDataNoCopy = 0;
      v42 = 0;
      goto LABEL_62;
    }
  }

  if (FigFileTypeDoesSupportExternalSampleReferences(*(a1 + 112)) != 1)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_120();
    v38 = FigSignalErrorAtGM();
LABEL_389:
    BlockBufferWithCFDataNoCopy = v38;
    v42 = 0;
LABEL_390:
    FigAtomWriterEndAtom();
    goto LABEL_62;
  }

  v40 = CFURLCopyAbsoluteURL(*relativeURL);
  if (!a2[3])
  {
LABEL_50:
    v42 = v40;
    goto LABEL_51;
  }

  v41 = FigCFURLCreateRelativeURLWithURLAndBaseURL();
  if (v41 == -12996)
  {
    if (allocatora <= 4)
    {
      CFLog();
      ++allocatora;
    }

    goto LABEL_50;
  }

  BlockBufferWithCFDataNoCopy = v41;
  if (v41)
  {
    v42 = v40;
    goto LABEL_390;
  }

  v42 = cf[0];
  if (cf[0])
  {
    CFRetain(cf[0]);
  }

  if (v40)
  {
    CFRelease(v40);
  }

LABEL_51:
  v43 = CFURLGetString(v42);
  Length = CFStringGetLength(v43);
  v45 = MEMORY[0x19A8CC720](v37, Length + 1, 3507656629, 0);
  if (!v45)
  {
    BlockBufferWithCFDataNoCopy = 4294950966;
    goto LABEL_390;
  }

  v46 = v45;
  if (!CFStringGetCString(v43, v45, Length + 1, 0x8000100u))
  {
    BlockBufferWithCFDataNoCopy = 4294950961;
    goto LABEL_393;
  }

  LODWORD(blockBufferOut[0]) = bswap32(Length + 13);
  *(blockBufferOut + 4) = 543978101;
  v47 = FigAtomWriterAppendData();
  if (!v47)
  {
    v47 = FigAtomWriterAppendData();
    if (!v47)
    {
      CFAllocatorDeallocate(v37, v46);
      if (cf[0])
      {
        CFRelease(cf[0]);
        cf[0] = 0;
      }

      a1 = v517;
      if (v42)
      {
        CFRelease(v42);
      }

      a2 = v488;
      goto LABEL_60;
    }
  }

  BlockBufferWithCFDataNoCopy = v47;
LABEL_393:
  FigAtomWriterEndAtom();
  CFAllocatorDeallocate(v37, v46);
LABEL_62:
  v30 = MEMORY[0x1E695E480];
LABEL_65:
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (v42)
  {
    CFRelease(v42);
  }

  FigAtomWriterEndAtom();
  if (BlockBufferWithCFDataNoCopy)
  {
    goto LABEL_302;
  }

  OUTLINED_FUNCTION_8_61();
  appended = FigAtomWriterInitWithParent();
  if (appended)
  {
    goto LABEL_386;
  }

  appended = FigAtomWriterBeginAtom();
  if (appended)
  {
    goto LABEL_386;
  }

  OUTLINED_FUNCTION_0_161();
  v48 = *v488;
  blockBufferOut[0] = 0;
  v49 = MovieTrackCopyFormatDescriptionArray(v48);
  v50 = v49;
  if (v49)
  {
    Count = CFArrayGetCount(v49);
  }

  else
  {
    Count = 0;
  }

  allocatorb = *v30;
  Mutable = CFArrayCreateMutable(*v30, Count, MEMORY[0x1E695E9C0]);
  v53 = Mutable;
  if (!Mutable)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_120();
    SampleDescriptionInformationAtIndex = FigSignalErrorAtGM();
LABEL_402:
    BlockBufferWithCFDataNoCopy = SampleDescriptionInformationAtIndex;
    goto LABEL_158;
  }

  if (Count < 1)
  {
    LODWORD(v502) = 0;
LABEL_147:
    NumSampleDescriptions = MovieTrackGetNumSampleDescriptions(v48);
    if (!NumSampleDescriptions)
    {
LABEL_157:
      BlockBufferWithCFDataNoCopy = 0;
      goto LABEL_158;
    }

    v122 = NumSampleDescriptions;
    OUTLINED_FUNCTION_14_49(NumSampleDescriptions, v115, v116, v117, v118, v119, v120, v121, v403, v410, v417, v424, v431, v438, v445, extensionKey, v459, v466, v473, flavor, v488, v495, v502, v509, v517, allocatorb, v533[0], v533[1], v546[0], v546[1], v559, *(&v559 + 1), v572, v579, cf[0], cf[1], v587, *(&v587 + 1), v588, *(&v588 + 1), v589, v590, blockBufferOut[0], blockBufferOut[1], v592[0], v592[1], v593, *(&v593 + 1), v594, v595, v596);
    SampleDescriptionInformationAtIndex = FigAtomWriterInitWithParent();
    if (!SampleDescriptionInformationAtIndex)
    {
      SampleDescriptionInformationAtIndex = FigAtomWriterBeginAtom();
      if (!SampleDescriptionInformationAtIndex)
      {
        SampleDescriptionInformationAtIndex = FigAtomWriterAppendVersionAndFlags();
        if (!SampleDescriptionInformationAtIndex)
        {
          LODWORD(cf[0]) = bswap32(v122);
          SampleDescriptionInformationAtIndex = FigAtomWriterAppendData();
          if (!SampleDescriptionInformationAtIndex)
          {
            v123 = 0;
            while (1)
            {
              cf[0] = -1;
              v600 = 0;
              *relativeURL = -1;
              temporaryBlock = 0;
              SampleDescriptionInformationAtIndex = MovieTrackGetSampleDescriptionInformationAtIndex(v48, v123, cf, relativeURL);
              if (SampleDescriptionInformationAtIndex)
              {
                break;
              }

              Count = CFArrayGetValueAtIndex(v53, cf[0]);
              *&relativeURL[20] = bswap32(*relativeURL + 1) >> 16;
              SampleDescriptionInformationAtIndex = CMBlockBufferReplaceDataBytes(&relativeURL[20], Count, 0xEuLL, 2uLL);
              if (SampleDescriptionInformationAtIndex)
              {
                break;
              }

              OUTLINED_FUNCTION_613();
              SampleDescriptionInformationAtIndex = CMBlockBufferGetDataPointer(v124, v125, v126, v127, v128);
              if (SampleDescriptionInformationAtIndex)
              {
                break;
              }

              FigAtomWriterAppendData();
              if (v122 == ++v123)
              {
                goto LABEL_157;
              }
            }
          }
        }
      }
    }

    goto LABEL_402;
  }

  v54 = 0;
  LODWORD(v502) = 0;
  v466 = *MEMORY[0x1E6960610];
  v473 = @"public.3gpp";
  v495 = *MEMORY[0x1E6960618];
  v459 = *MEMORY[0x1E69601C8];
  v431 = @"com.apple.m4a-audio";
  v438 = @"com.apple.m4v-video";
  v55 = 1;
  v445 = *MEMORY[0x1E69601D8];
  v424 = *MEMORY[0x1E6962858];
  v417 = *MEMORY[0x1E69601D0];
  flavor = *MEMORY[0x1E6960628];
  extensionKey = *MEMORY[0x1E69600D0];
  v509 = Mutable;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v50, v54);
    v57 = CMFormatDescriptionGetMediaType(ValueAtIndex);
    MediaSubType = CMFormatDescriptionGetMediaSubType(ValueAtIndex);
    if (v57 == 1668047728)
    {
      v84 = OUTLINED_FUNCTION_3_121(MediaSubType, v59, v60, v61, v62, v63, v64, v65, v403, v410, v417, v424, v431, v438, v445, extensionKey, v459, v466, v473, flavor, v488, v495, v502, v509, v517, allocatorb);
      v88 = CMClosedCaptionFormatDescriptionCopyAsBigEndianClosedCaptionDescriptionBlockBuffer(v84, v85, v86, v87);
      goto LABEL_116;
    }

    if (v57 != 1751216244)
    {
      break;
    }

    OUTLINED_FUNCTION_3_121(MediaSubType, v59, v60, v61, v62, v63, v64, v65, v403, v410, v417, v424, v431, v438, v445, extensionKey, v459, v466, v473, flavor, v488, v495, v502, v509, v517, allocatorb);
    v88 = CMHapticFormatDescriptionCopyAsBigEndianHapticDescriptionBlockBuffer();
LABEL_116:
    BlockBufferWithCFDataNoCopy = v88;
    v72 = 0;
    if (v88)
    {
      goto LABEL_158;
    }

LABEL_117:
    OUTLINED_FUNCTION_35_20();
    if (v57 == v96)
    {
      goto LABEL_118;
    }

LABEL_128:
    OUTLINED_FUNCTION_613();
    IsRangeContiguous = CMBlockBufferIsRangeContiguous(v104, v105, v106);
    v108 = blockBufferOut[0];
    if (!IsRangeContiguous)
    {
      cf[0] = 0;
      SampleDescriptionInformationAtIndex = CMBlockBufferCreateContiguous(allocatorb, blockBufferOut[0], allocatorb, 0, 0, 0, 0, cf);
      if (SampleDescriptionInformationAtIndex)
      {
        goto LABEL_402;
      }

      v109 = blockBufferOut[0];
      blockBufferOut[0] = cf[0];
      if (cf[0])
      {
        CFRetain(cf[0]);
      }

      if (v109)
      {
        CFRelease(v109);
      }

      if (cf[0])
      {
        CFRelease(cf[0]);
      }

      v108 = blockBufferOut[0];
    }

    CFArrayAppendValue(v53, v108);
    if (blockBufferOut[0])
    {
      CFRelease(blockBufferOut[0]);
      blockBufferOut[0] = 0;
    }

    v54 = v55;
    if (Count <= v55++)
    {
      goto LABEL_147;
    }
  }

  if (v57 == 1835365473)
  {
    v92 = OUTLINED_FUNCTION_3_121(MediaSubType, v59, v60, v61, v62, v63, v64, v65, v403, v410, v417, v424, v431, v438, v445, extensionKey, v459, v466, v473, flavor, v488, v495, v502, v509, v517, allocatorb);
    v88 = CMMetadataFormatDescriptionCopyAsBigEndianMetadataDescriptionBlockBuffer(v92, v93, v94, v95);
    goto LABEL_116;
  }

  v66 = v48;
  v67 = Count;
  v68 = v50;
  if (v57 == 1935832172)
  {
    goto LABEL_99;
  }

  if (v57 == 1935893870)
  {
    OUTLINED_FUNCTION_3_121(MediaSubType, v59, v60, v61, v62, v63, v64, v65, v403, v410, v417, v424, v431, v438, v445, extensionKey, v459, v466, v473, flavor, v488, v495, v502, v509, v517, allocatorb);
    v79 = CMSceneFormatDescriptionCopyAsBigEndianSceneDescriptionBlockBuffer();
    goto LABEL_102;
  }

  Count = *(v517 + 112);
  v69 = *(v517 + 120);
  OUTLINED_FUNCTION_35_20();
  if (v57 == v70)
  {
    v89 = FigCFEqual();
    v90 = v495;
    if (!v69)
    {
      v90 = 0;
    }

    if (v89)
    {
      v72 = v466;
    }

    else
    {
      v72 = v90;
    }

    SampleDescriptionInformationAtIndex = CMAudioFormatDescriptionCopyAsBigEndianSoundDescriptionBlockBuffer(allocatorb, ValueAtIndex, v72, blockBufferOut);
    v50 = v68;
    Count = v67;
    v48 = v66;
    v53 = v509;
    if (SampleDescriptionInformationAtIndex)
    {
      goto LABEL_402;
    }

LABEL_118:
    v97 = CMDoesBigEndianSoundDescriptionRequireLegacyCBRSampleTableLayout(blockBufferOut[0], v72);
    OUTLINED_FUNCTION_613();
    SampleOverrides = MovieTrackGetSampleOverrides(v98, v99, v100);
    if (!v97 || SampleOverrides)
    {
      if (FigCFEqual())
      {
        v102 = MEMORY[0x19A8D3150](blockBufferOut[0], 1);
        v103 = v502;
        if (v102)
        {
          v103 = 1;
        }

        LODWORD(v502) = v103;
      }
    }

    else
    {
      if (blockBufferOut[0])
      {
        CFRelease(blockBufferOut[0]);
        blockBufferOut[0] = 0;
      }

      SampleDescriptionInformationAtIndex = CMAudioFormatDescriptionCopyAsBigEndianSoundDescriptionBlockBuffer(allocatorb, ValueAtIndex, flavor, blockBufferOut);
      if (SampleDescriptionInformationAtIndex)
      {
        goto LABEL_402;
      }
    }

    goto LABEL_128;
  }

  switch(v57)
  {
    case 0x74657874u:
LABEL_99:
      v75 = OUTLINED_FUNCTION_3_121(MediaSubType, v59, v60, v61, v62, v63, v64, v65, v403, v410, v417, v424, v431, v438, v445, extensionKey, v459, v466, v473, flavor, v488, v495, v502, v509, v517, allocatorb);
      v79 = CMTextFormatDescriptionCopyAsBigEndianTextDescriptionBlockBuffer(v75, v76, v77, v78);
LABEL_102:
      BlockBufferWithCFDataNoCopy = v79;
      v72 = 0;
      goto LABEL_103;
    case 0x746D6364u:
      v80 = OUTLINED_FUNCTION_3_121(MediaSubType, v59, v60, v61, v62, v63, v64, v65, v403, v410, v417, v424, v431, v438, v445, extensionKey, v459, v466, v473, flavor, v488, v495, v502, v509, v517, allocatorb);
      v79 = CMTimeCodeFormatDescriptionCopyAsBigEndianTimeCodeDescriptionBlockBuffer(v80, v81, v82, v83);
      goto LABEL_102;
    case 0x76696465u:
      v71 = MediaSubType;
      v72 = v459;
      if (!FigCFEqual())
      {
        v72 = v445;
        if (!FigCFEqual())
        {
          v72 = v445;
          if (!FigCFEqual())
          {
            if (v69)
            {
              v74 = v71 == 1635148595 || v71 == 1685481573 || v71 == 1751479857;
              v72 = v424;
              if (!v74)
              {
                v72 = v417;
              }
            }

            else
            {
              v72 = 0;
            }
          }
        }
      }

      v113 = CFStringGetSystemEncoding();
      BlockBufferWithCFDataNoCopy = CMVideoFormatDescriptionCopyAsBigEndianImageDescriptionBlockBuffer(allocatorb, ValueAtIndex, v113, v72, blockBufferOut);
LABEL_103:
      v50 = v68;
LABEL_104:
      Count = v67;
      v48 = v66;
      v53 = v509;
      if (BlockBufferWithCFDataNoCopy)
      {
        goto LABEL_158;
      }

      goto LABEL_117;
  }

  Extension = CMFormatDescriptionGetExtension(ValueAtIndex, extensionKey);
  if (!Extension)
  {
    BlockBufferWithCFDataNoCopy = 4294950962;
    v50 = v68;
    goto LABEL_399;
  }

  Count = Extension;
  v112 = CFGetTypeID(Extension);
  v50 = v68;
  if (v112 == CFDataGetTypeID())
  {
    BlockBufferWithCFDataNoCopy = FigCreateBlockBufferWithCFDataNoCopy();
    v72 = 0;
    goto LABEL_104;
  }

  BlockBufferWithCFDataNoCopy = 4294950962;
LABEL_399:
  v53 = v509;
LABEL_158:
  FigAtomWriterEndAtom();
  if (blockBufferOut[0])
  {
    CFRelease(blockBufferOut[0]);
  }

  v129 = v517;
  v130 = v488;
  if (v53)
  {
    CFRelease(v53);
  }

  if (v50)
  {
    CFRelease(v50);
  }

  if (BlockBufferWithCFDataNoCopy)
  {
    goto LABEL_301;
  }

  appended = appendSampleGroupDescriptionAtoms(v488, MovieTrackCopySampleGroupDescriptionArrays);
  if (appended)
  {
    goto LABEL_386;
  }

  appended = appendSampleToGroupAtoms(v517, v488, MovieTrackCopySampleGroupArray);
  if (appended)
  {
    goto LABEL_386;
  }

  OUTLINED_FUNCTION_0_161();
  v131 = *v488;
  v132 = MovieSampleTableNumTimeToSampleEntries(*v488);
  TimeToSampleTable = MovieSampleTableGetTimeToSampleTable(v131);
  OUTLINED_FUNCTION_14_49(TimeToSampleTable, v134, v135, v136, v137, v138, v139, v140, v403, v410, v417, v424, v431, v438, v445, extensionKey, v459, v466, v473, flavor, v488, v495, v502, v509, v517, allocatorb, v533[0], v533[1], v546[0], v546[1], v559, *(&v559 + 1), v572, v579, cf[0], cf[1], v587, *(&v587 + 1), v588, *(&v588 + 1), v589, v590, blockBufferOut[0], blockBufferOut[1], v592[0], v592[1], v593, *(&v593 + 1), v594, v595, v596);
  TimeValueToAddToCompositionOffsets = FigAtomWriterInitWithParent();
  if (TimeValueToAddToCompositionOffsets)
  {
    goto LABEL_382;
  }

  TimeValueToAddToCompositionOffsets = FigAtomWriterBeginAtom();
  if (TimeValueToAddToCompositionOffsets)
  {
    goto LABEL_382;
  }

  OUTLINED_FUNCTION_296();
  TimeValueToAddToCompositionOffsets = FigAtomWriterAppendVersionAndFlags();
  if (TimeValueToAddToCompositionOffsets)
  {
    goto LABEL_382;
  }

  v142 = OUTLINED_FUNCTION_6_87();
  BlockBufferWithCFDataNoCopy = v142;
  if (!v142 && TimeToSampleTable)
  {
    OUTLINED_FUNCTION_11_58(v142, v143, v144, 8 * v132, v145, v146, v147, v148, v404, v411, v418, v425, v432, v439, v446, extensionKeya, v460, v467, v474, flavora, v489, v496, v503, v510, v518, allocatorc, v534, v540, v547, v553, v560, v566, v573, v580, cf[0], cf[1], v587, *(&v587 + 1), v588, *(&v588 + 1), v589, v590, blockBufferOut[0], blockBufferOut[1], v592[0], v592[1], v593, *(&v593 + 1), v594, v595, v596, *(&v596 + 1), v597[0], v597[1], v597[2], v598, v599, v600, *relativeURL, *&relativeURL[8], *&relativeURL[16], temporaryBlock, buffer[0]);
    BlockBufferWithCFDataNoCopy = FigAtomWriterAppendBlockBufferData();
  }

  FigAtomWriterEndAtom();
  if (BlockBufferWithCFDataNoCopy)
  {
    goto LABEL_301;
  }

  OUTLINED_FUNCTION_0_161();
  v149 = OUTLINED_FUNCTION_32_25();
  v150 = MovieSampleTableNumCompositionOffsetEntries(v149);
  if (!v150 || (v151 = v150, v150 == 1) && !MovieSampleTableGetCompositionOffsetDisplayOffset(Count, 0))
  {
    FigAtomWriterEndAtom();
    goto LABEL_178;
  }

  LODWORD(temporaryBlock) = 0;
  CompositionOffsetTable = MovieSampleTableGetCompositionOffsetTable(Count);
  LOBYTE(v600) = 0;
  TimeValueToAddToCompositionOffsets = getTimeValueToAddToCompositionOffsets(v129, v130, 1, &temporaryBlock, &v600, 0);
  if (TimeValueToAddToCompositionOffsets)
  {
    goto LABEL_382;
  }

  v352 = temporaryBlock;
  if (!temporaryBlock)
  {
    v360 = 0;
LABEL_350:
    DataLength = CMBlockBufferGetDataLength(CompositionOffsetTable);
    OUTLINED_FUNCTION_14_49(DataLength, v374, v375, v376, v377, v378, v379, v380, v404, v411, v418, v425, v432, v439, v446, extensionKeya, v460, v467, v474, flavora, v489, v496, v503, v510, v518, allocatorc, v534, v540, v547, v553, v560, v566, v573, v580, cf[0], cf[1], v587, *(&v587 + 1), v588, *(&v588 + 1), v589, v590, blockBufferOut[0], blockBufferOut[1], v592[0], v592[1], v593, *(&v593 + 1), v594, v595, v596);
    if (!FigAtomWriterInitWithParent() && !FigAtomWriterBeginAtom() && !FigAtomWriterAppendVersionAndFlags())
    {
      v381 = OUTLINED_FUNCTION_6_87();
      if (!v381)
      {
        OUTLINED_FUNCTION_22_31(v381, v382, v383, v384, v385, v386, v387, v388, v404, v411, v418, v425, v432, v439, v446, extensionKeya, v460, v467, v474, flavora, v489, v496, v503, v510, v518, allocatorc, v534, v540, v547, v553, v560, v566, v573, v580, cf[0], cf[1], v587, *(&v587 + 1), v588, *(&v588 + 1), v589, v590, blockBufferOut[0], blockBufferOut[1], v592[0], v592[1], v593, *(&v593 + 1), v594, v595, v596, *(&v596 + 1), v597[0], v597[1], v597[2], v598, v599, v600, *relativeURL, *&relativeURL[8], *&relativeURL[16], temporaryBlock, buffer[0]);
        FigAtomWriterAppendBlockBufferData();
      }
    }

    OUTLINED_FUNCTION_20_32();
    FigAtomWriterEndAtom();
    if (v360)
    {
      CFRelease(v360);
    }

LABEL_178:
    if (!*(v129 + 120))
    {
      OUTLINED_FUNCTION_0_161();
      v152 = *v130;
      v153 = MovieSampleTableNumCompositionOffsetEntries(*v130);
      if (v153 && (v153 != 1 || MovieSampleTableGetCompositionOffsetDisplayOffset(v152, 0)))
      {
        LODWORD(v600) = 0;
        *&relativeURL[16] = 0;
        *blockBufferOut = *MEMORY[0x1E6960C70];
        v592[0] = *(MEMORY[0x1E6960C70] + 16);
        *cf = *blockBufferOut;
        *&v587 = v592[0];
        LODWORD(temporaryBlock) = 0;
        v154 = OUTLINED_FUNCTION_517();
        TimeValueToAddToCompositionOffsets = MovieTrackGetCompositionOffsetRange(v154, v155, v156, 0);
        if (TimeValueToAddToCompositionOffsets)
        {
          goto LABEL_382;
        }

        v157 = temporaryBlock;
        v158 = OUTLINED_FUNCTION_517();
        TimeValueToAddToCompositionOffsets = MovieTrackGetCompositionOffsetRange(v158, v159, v160, v161);
        if (TimeValueToAddToCompositionOffsets)
        {
          goto LABEL_382;
        }

        v162 = OUTLINED_FUNCTION_517();
        DisplayTimeRange = MovieTrackGetDisplayTimeRange(v162, v163, v164, v165);
        OUTLINED_FUNCTION_14_49(DisplayTimeRange, v167, v168, v169, v170, v171, v172, v173, v404, v411, v418, v425, v432, v439, v446, extensionKeya, v460, v467, v474, flavora, v489, v496, v503, v510, v518, allocatorc, v534, v540, v547, v553, v560, v566, v573, v580, cf[0], cf[1], v587, *(&v587 + 1), v588, *(&v588 + 1), v589, v590, blockBufferOut[0], blockBufferOut[1], v592[0], v592[1], v593, *(&v593 + 1), v594, v595, v596);
        TimeValueToAddToCompositionOffsets = FigAtomWriterInitWithParent();
        if (TimeValueToAddToCompositionOffsets)
        {
          goto LABEL_382;
        }

        TimeValueToAddToCompositionOffsets = FigAtomWriterBeginAtom();
        if (TimeValueToAddToCompositionOffsets)
        {
          goto LABEL_382;
        }

        OUTLINED_FUNCTION_296();
        TimeValueToAddToCompositionOffsets = FigAtomWriterAppendVersionAndFlags();
        if (TimeValueToAddToCompositionOffsets)
        {
          goto LABEL_382;
        }

        *relativeURL = _byteswap_uint64(__PAIR64__(-v157 & (v157 >> 31), v600));
        *&relativeURL[8] = _byteswap_uint64(__PAIR64__(*&relativeURL[20], blockBufferOut[0]));
        *&relativeURL[16] = bswap32(cf[0]);
        FigAtomWriterAppendData();
        OUTLINED_FUNCTION_20_32();
        FigAtomWriterEndAtom();
      }

      else
      {
        FigAtomWriterEndAtom();
      }
    }

    OUTLINED_FUNCTION_0_161();
    v174 = OUTLINED_FUNCTION_32_25();
    SyncSampleTable = MovieSampleTableGetSyncSampleTable(v174);
    if (SyncSampleTable)
    {
      v176 = SyncSampleTable;
      Count = MovieSampleTableNumSyncSampleEntries(Count);
      v177 = CMBlockBufferGetDataLength(v176);
      OUTLINED_FUNCTION_14_49(v177, v178, v179, v180, v181, v182, v183, v184, v404, v411, v418, v425, v432, v439, v446, extensionKeya, v460, v467, v474, flavora, v489, v496, v503, v510, v518, allocatorc, v534, v540, v547, v553, v560, v566, v573, v580, cf[0], cf[1], v587, *(&v587 + 1), v588, *(&v588 + 1), v589, v590, blockBufferOut[0], blockBufferOut[1], v592[0], v592[1], v593, *(&v593 + 1), v594, v595, v596);
      TimeValueToAddToCompositionOffsets = FigAtomWriterInitWithParent();
      if (TimeValueToAddToCompositionOffsets)
      {
        goto LABEL_382;
      }

      TimeValueToAddToCompositionOffsets = FigAtomWriterBeginAtom();
      if (TimeValueToAddToCompositionOffsets)
      {
        goto LABEL_382;
      }

      OUTLINED_FUNCTION_296();
      TimeValueToAddToCompositionOffsets = FigAtomWriterAppendVersionAndFlags();
      if (TimeValueToAddToCompositionOffsets)
      {
        goto LABEL_382;
      }

      TimeValueToAddToCompositionOffsets = OUTLINED_FUNCTION_6_87();
      if (TimeValueToAddToCompositionOffsets)
      {
        goto LABEL_382;
      }

      OUTLINED_FUNCTION_11_58(TimeValueToAddToCompositionOffsets, v185, v186, v187, v188, v189, v190, v191, v405, v412, v419, v426, v433, v440, v447, extensionKeyb, v461, v468, v475, flavorb, v490, v497, v504, v511, v519, allocatord, v535, v541, v548, v554, v561, v567, v574, v581, cf[0], cf[1], v587, *(&v587 + 1), v588, *(&v588 + 1), v589, v590, blockBufferOut[0], blockBufferOut[1], v592[0], v592[1], v593, *(&v593 + 1), v594, v595, v596, *(&v596 + 1), v597[0], v597[1], v597[2], v598, v599, v600, *relativeURL, *&relativeURL[8], *&relativeURL[16], temporaryBlock, buffer[0]);
      FigAtomWriterAppendBlockBufferData();
      OUTLINED_FUNCTION_20_32();
      FigAtomWriterEndAtom();
    }

    else
    {
      FigAtomWriterEndAtom();
    }

    OUTLINED_FUNCTION_0_161();
    v192 = *v130;
    if (MovieSampleTableNumPartialSyncSampleEntries(*v130))
    {
      PartialSyncSampleTable = MovieSampleTableGetPartialSyncSampleTable(v192);
      v194 = CMBlockBufferGetDataLength(PartialSyncSampleTable);
      OUTLINED_FUNCTION_14_49(v194, v195, v196, v197, v198, v199, v200, v201, v404, v411, v418, v425, v432, v439, v446, extensionKeya, v460, v467, v474, flavora, v489, v496, v503, v510, v518, allocatorc, v534, v540, v547, v553, v560, v566, v573, v580, cf[0], cf[1], v587, *(&v587 + 1), v588, *(&v588 + 1), v589, v590, blockBufferOut[0], blockBufferOut[1], v592[0], v592[1], v593, *(&v593 + 1), v594, v595, v596);
      TimeValueToAddToCompositionOffsets = FigAtomWriterInitWithParent();
      if (TimeValueToAddToCompositionOffsets)
      {
        goto LABEL_382;
      }

      TimeValueToAddToCompositionOffsets = FigAtomWriterBeginAtom();
      if (TimeValueToAddToCompositionOffsets)
      {
        goto LABEL_382;
      }

      OUTLINED_FUNCTION_296();
      TimeValueToAddToCompositionOffsets = FigAtomWriterAppendVersionAndFlags();
      if (TimeValueToAddToCompositionOffsets)
      {
        goto LABEL_382;
      }

      TimeValueToAddToCompositionOffsets = OUTLINED_FUNCTION_6_87();
      if (TimeValueToAddToCompositionOffsets)
      {
        goto LABEL_382;
      }

      OUTLINED_FUNCTION_11_58(TimeValueToAddToCompositionOffsets, v202, v203, v204, v205, v206, v207, v208, v406, v413, v420, v427, v434, v441, v448, extensionKeyc, v462, v469, v476, flavorc, v491, v498, v505, v512, v520, allocatore, v536, v542, v549, v555, v562, v568, v575, v582, cf[0], cf[1], v587, *(&v587 + 1), v588, *(&v588 + 1), v589, v590, blockBufferOut[0], blockBufferOut[1], v592[0], v592[1], v593, *(&v593 + 1), v594, v595, v596, *(&v596 + 1), v597[0], v597[1], v597[2], v598, v599, v600, *relativeURL, *&relativeURL[8], *&relativeURL[16], temporaryBlock, buffer[0]);
      FigAtomWriterAppendBlockBufferData();
      OUTLINED_FUNCTION_20_32();
      FigAtomWriterEndAtom();
    }

    else
    {
      FigAtomWriterEndAtom();
    }

    OUTLINED_FUNCTION_0_161();
    v209 = *v130;
    v210 = MovieSampleTableNumSampleDependencyEntries(*v130);
    if (v210)
    {
      Count = v210;
      SampleDependencyTable = MovieSampleTableGetSampleDependencyTable(v209);
      blockBufferOut[0] = 0;
      cf[0] = 0;
      v212 = Count;
      *relativeURL = 0;
      LOBYTE(temporaryBlock) = 0;
      DataPointer = CMBlockBufferCreateWithMemoryBlock(allocatorc, 0, Count, allocatorc, 0, 0, Count, 1u, blockBufferOut);
      if (!DataPointer)
      {
        OUTLINED_FUNCTION_613();
        DataPointer = CMBlockBufferGetDataPointer(v214, v215, v216, 0, v217);
        if (!DataPointer)
        {
          Count = 0;
          while (1)
          {
            DataPointer = CMBlockBufferAccessDataBytes(SampleDependencyTable, Count, 1uLL, &temporaryBlock, cf);
            if (DataPointer)
            {
              break;
            }

            **relativeURL = *cf[0] & 0xBF;
            OUTLINED_FUNCTION_18_39();
            *relativeURL = v218 + 1;
            if (v212 == ++Count)
            {
              v219 = blockBufferOut[0];
              Count = CMBlockBufferGetDataLength(blockBufferOut[0]);
              OUTLINED_FUNCTION_14_49(Count, v220, v221, v222, v223, v224, v225, v226, v404, v411, v418, v425, v432, v439, v446, extensionKeya, v460, v467, v474, flavora, v489, v496, v503, v510, v518, allocatorc, v534, v540, v547, v553, v560, v566, v573, v580, cf[0], cf[1], v587, *(&v587 + 1), v588, *(&v588 + 1), v589, v590, blockBufferOut[0], blockBufferOut[1], v592[0], v592[1], v593, *(&v593 + 1), v594, v595, v596);
              if (!FigAtomWriterInitWithParent() && !FigAtomWriterBeginAtom())
              {
                OUTLINED_FUNCTION_296();
                v227 = FigAtomWriterAppendVersionAndFlags();
                if (!v227)
                {
                  OUTLINED_FUNCTION_11_58(v227, v228, v229, v230, v231, v232, v233, v234, v404, v411, v418, v425, v432, v439, v446, extensionKeya, v460, v467, v474, flavora, v489, v496, v503, v510, v518, allocatorc, v534, v540, v547, v553, v560, v566, v573, v580, cf[0], cf[1], v587, *(&v587 + 1), v588, *(&v588 + 1), v589, v590, blockBufferOut[0], blockBufferOut[1], v592[0], v592[1], v593, *(&v593 + 1), v594, v595, v596, *(&v596 + 1), v597[0], v597[1], v597[2], v598, v599, v600, *relativeURL, *&relativeURL[8], *&relativeURL[16], temporaryBlock, buffer[0]);
                  FigAtomWriterAppendBlockBufferData();
                }
              }

              OUTLINED_FUNCTION_20_32();
              FigAtomWriterEndAtom();
              if (v219)
              {
                CFRelease(v219);
              }

              goto LABEL_221;
            }
          }
        }
      }

      BlockBufferWithCFDataNoCopy = DataPointer;
      if (blockBufferOut[0])
      {
        CFRelease(blockBufferOut[0]);
      }
    }

    else
    {
      BlockBufferWithCFDataNoCopy = 0;
    }

    FigAtomWriterEndAtom();
LABEL_221:
    if (BlockBufferWithCFDataNoCopy)
    {
      goto LABEL_301;
    }

    OUTLINED_FUNCTION_0_161();
    v235 = OUTLINED_FUNCTION_32_25();
    v236 = MovieSampleTableNumSampleToChunkEntries(v235);
    SampleToChunkTable = MovieSampleTableGetSampleToChunkTable(Count);
    v245 = SampleToChunkTable;
    if (v236 >= 2)
    {
      SampleToChunkSamplesPerChunk = MovieSampleTableGetSampleToChunkSamplesPerChunk(Count, v236 - 2);
      SampleToChunkSampleDescriptionID = MovieSampleTableGetSampleToChunkSampleDescriptionID(Count, v236 - 2);
      v248 = MovieSampleTableGetSampleToChunkSamplesPerChunk(Count, v236 - 1);
      SampleToChunkTable = MovieSampleTableGetSampleToChunkSampleDescriptionID(Count, v236 - 1);
      v249 = SampleToChunkSampleDescriptionID == SampleToChunkTable && SampleToChunkSamplesPerChunk == v248;
      v130 = v489;
      if (v249)
      {
        --v236;
      }
    }

    OUTLINED_FUNCTION_14_49(SampleToChunkTable, v238, v239, v240, v241, v242, v243, v244, v404, v411, v418, v425, v432, v439, v446, extensionKeya, v460, v467, v474, flavora, v489, v496, v503, v510, v518, allocatorc, v534, v540, v547, v553, v560, v566, v573, v580, cf[0], cf[1], v587, *(&v587 + 1), v588, *(&v588 + 1), v589, v590, blockBufferOut[0], blockBufferOut[1], v592[0], v592[1], v593, *(&v593 + 1), v594, v595, v596);
    TimeValueToAddToCompositionOffsets = FigAtomWriterInitWithParent();
    if (!TimeValueToAddToCompositionOffsets)
    {
      TimeValueToAddToCompositionOffsets = FigAtomWriterBeginAtom();
      if (!TimeValueToAddToCompositionOffsets)
      {
        OUTLINED_FUNCTION_296();
        TimeValueToAddToCompositionOffsets = FigAtomWriterAppendVersionAndFlags();
        if (!TimeValueToAddToCompositionOffsets)
        {
          v250 = OUTLINED_FUNCTION_6_87();
          BlockBufferWithCFDataNoCopy = v250;
          if (!v250 && v245)
          {
            OUTLINED_FUNCTION_22_31(v250, v251, v252, 12 * v236, v253, v254, v255, v256, v407, v414, v421, v428, v435, v442, v449, extensionKeyd, v463, v470, v477, flavord, v492, v499, v506, v513, v521, allocatorf, v537, v543, v550, v556, v563, v569, v576, v583, cf[0], cf[1], v587, *(&v587 + 1), v588, *(&v588 + 1), v589, v590, blockBufferOut[0], blockBufferOut[1], v592[0], v592[1], v593, *(&v593 + 1), v594, v595, v596, *(&v596 + 1), v597[0], v597[1], v597[2], v598, v599, v600, *relativeURL, *&relativeURL[8], *&relativeURL[16], temporaryBlock, buffer[0]);
            BlockBufferWithCFDataNoCopy = FigAtomWriterAppendBlockBufferData();
          }

          FigAtomWriterEndAtom();
          if (BlockBufferWithCFDataNoCopy)
          {
            goto LABEL_301;
          }

          v257 = *v130;
          if (*(v130 + 35))
          {
            if (MovieSampleTableGetCommonSampleSize(*v130))
            {
              v257 = *v130;
            }

            else
            {
              MinSampleSizeFieldSize = MovieSampleTableGetMinSampleSizeFieldSize(v257);
              v257 = *v130;
              if (MinSampleSizeFieldSize <= 31)
              {
                OUTLINED_FUNCTION_0_161();
                v315 = MovieSampleTableNumSampleSizeEntries(v257);
                if (!v315)
                {
                  FigAtomWriterEndAtom();
                  goto LABEL_248;
                }

                v316 = v315;
                MovieSampleTableGetSampleSizeTable(v257);
                v317 = MovieSampleTableGetMinSampleSizeFieldSize(v257);
                v324 = v317;
                blockBufferOut[0] = 0;
                cf[0] = 0;
                *relativeURL = 0;
                LODWORD(temporaryBlock) = 0;
                if (v317 == 16 || v317 == 8)
                {
                  v326 = (v317 >> 3) * v316;
                }

                else
                {
                  if (v317 != 4)
                  {
                    BlockBufferWithCFDataNoCopy = 4294950958;
                    goto LABEL_359;
                  }

                  v326 = (v316 + 1) >> 1;
                }

                v353 = OUTLINED_FUNCTION_7_76(v317, v318, v326, v319, v320, v321, v322, v323, v407, v414, v421, v428, v435, v442, v449, extensionKeyd, v463, v470, v477, flavord, v492, v499, v506, v513, v521, allocatorf, v537, v543, v550, v556, v563, v569, v576, v583, cf[0], cf[1], v587, *(&v587 + 1), v588, *(&v588 + 1), v589, v590, blockBufferOut[0]);
                if (v353)
                {
                  goto LABEL_394;
                }

                OUTLINED_FUNCTION_613();
                v353 = CMBlockBufferGetDataPointer(v361, v362, v363, 0, v364);
                if (v353)
                {
                  goto LABEL_394;
                }

                switch(v324)
                {
                  case 4u:
                    v390 = 0;
                    LODWORD(Count) = 0;
                    v391 = v316;
                    while (1)
                    {
                      v353 = OUTLINED_FUNCTION_19_37(v353, v365, v366, v367, v368, v369, v370, v371, v409, v416, v423, v430, v437, v444, v451, extensionKeyf, v465, v472, v479, flavorf, v494, v501, v508, v515, v523, allocatorh, v539, v545, v552, v558, v565, v571, v578, v585, cf[0], cf[1], v587, *(&v587 + 1), v588, *(&v588 + 1), v589, v590, blockBufferOut[0], blockBufferOut[1], v592[0], v592[1], v593, *(&v593 + 1), v594, v595, v596, *(&v596 + 1), v597[0], v597[1], v597[2], v598, v599, v600, *relativeURL, *&relativeURL[8], *&relativeURL[16], temporaryBlock);
                      if (v353)
                      {
                        goto LABEL_394;
                      }

                      Count = Count | ((*(*relativeURL + 3) & 0xF) << ((4 * (v390 & 1)) ^ 4));
                      if (v391 == 1 || (v390 & 1) != 0)
                      {
                        *cf[0] = Count;
                        Count = 0;
                        OUTLINED_FUNCTION_18_39();
                      }

                      OUTLINED_FUNCTION_23_40();
                      ++v390;
                      if (!--v391)
                      {
                        goto LABEL_371;
                      }
                    }

                  case 8u:
                    v389 = v316;
                    while (1)
                    {
                      v353 = OUTLINED_FUNCTION_19_37(v353, v365, v366, v367, v368, v369, v370, v371, v409, v416, v423, v430, v437, v444, v451, extensionKeyf, v465, v472, v479, flavorf, v494, v501, v508, v515, v523, allocatorh, v539, v545, v552, v558, v565, v571, v578, v585, cf[0], cf[1], v587, *(&v587 + 1), v588, *(&v588 + 1), v589, v590, blockBufferOut[0], blockBufferOut[1], v592[0], v592[1], v593, *(&v593 + 1), v594, v595, v596, *(&v596 + 1), v597[0], v597[1], v597[2], v598, v599, v600, *relativeURL, *&relativeURL[8], *&relativeURL[16], temporaryBlock);
                      if (v353)
                      {
                        goto LABEL_394;
                      }

                      *cf[0] = *(*relativeURL + 3);
                      OUTLINED_FUNCTION_18_39();
                      OUTLINED_FUNCTION_23_40();
                      if (!--v389)
                      {
                        goto LABEL_371;
                      }
                    }

                  case 0x10u:
                    v372 = v316;
                    while (1)
                    {
                      v353 = OUTLINED_FUNCTION_19_37(v353, v365, v366, v367, v368, v369, v370, v371, v409, v416, v423, v430, v437, v444, v451, extensionKeyf, v465, v472, v479, flavorf, v494, v501, v508, v515, v523, allocatorh, v539, v545, v552, v558, v565, v571, v578, v585, cf[0], cf[1], v587, *(&v587 + 1), v588, *(&v588 + 1), v589, v590, blockBufferOut[0], blockBufferOut[1], v592[0], v592[1], v593, *(&v593 + 1), v594, v595, v596, *(&v596 + 1), v597[0], v597[1], v597[2], v598, v599, v600, *relativeURL, *&relativeURL[8], *&relativeURL[16], temporaryBlock);
                      if (v353)
                      {
                        goto LABEL_394;
                      }

                      *cf[0] = *(*relativeURL + 2);
                      cf[0] = cf[0] + 2;
                      OUTLINED_FUNCTION_23_40();
                      if (!--v372)
                      {
                        goto LABEL_371;
                      }
                    }
                }

LABEL_371:
                v392 = blockBufferOut[0];
                v393 = CMBlockBufferGetDataLength(blockBufferOut[0]);
                LODWORD(v600) = v324 << 24;
                OUTLINED_FUNCTION_14_49(v393, v394, v395, v396, v397, v398, v399, v400, v409, v416, v423, v430, v437, v444, v451, extensionKeyf, v465, v472, v479, flavorf, v494, v501, v508, v515, v523, allocatorh, v539, v545, v552, v558, v565, v571, v578, v585, cf[0], cf[1], v587, *(&v587 + 1), v588, *(&v588 + 1), v589, v590, blockBufferOut[0], blockBufferOut[1], v592[0], v592[1], v593, *(&v593 + 1), v594, v595, v596);
                v401 = FigAtomWriterInitWithParent();
                if (v401)
                {
                  BlockBufferWithCFDataNoCopy = v401;
                }

                else
                {
                  v402 = FigAtomWriterBeginAtom();
                  if (!v402)
                  {
                    OUTLINED_FUNCTION_296();
                    v402 = FigAtomWriterAppendVersionAndFlags();
                    if (!v402)
                    {
                      v402 = FigAtomWriterAppendData();
                      if (!v402)
                      {
                        v402 = OUTLINED_FUNCTION_6_87();
                        if (!v402)
                        {
                          v402 = FigAtomWriterAppendBlockBufferData();
                        }
                      }
                    }
                  }

                  BlockBufferWithCFDataNoCopy = v402;
                }

                FigAtomWriterEndAtom();
                if (v392)
                {
                  CFRelease(v392);
                }

LABEL_247:
                if (BlockBufferWithCFDataNoCopy)
                {
                  goto LABEL_301;
                }

LABEL_248:
                OUTLINED_FUNCTION_0_161();
                v274 = OUTLINED_FUNCTION_32_25();
                v275 = v129;
                v276 = MovieSampleTableNumChunkTableEntries(v274);
                ChunkOffsetTable = MovieSampleTableGetChunkOffsetTable(Count);
                v278 = MovieSampleTableHave64BitChunkOffsetTable(Count);
                v286 = v278;
                if (!*(v275 + 80))
                {
                  v309 = 0;
                  goto LABEL_292;
                }

                TrackCount = MovieInformationGetTrackCount(Count);
                v294 = *(v275 + 80);
                blockBufferOut[0] = 0;
                if (v286)
                {
                  v295 = 8;
                }

                else
                {
                  v295 = 4;
                }

                cf[0] = 0;
                *relativeURL = 0;
                temporaryBlock = 0;
                LODWORD(v600) = 0;
                v296 = v294 + TrackCount;
                v297 = (v294 + TrackCount) > 0xEE6B2800;
                v298 = 2;
                if ((v294 + TrackCount) > 0xEE6B2800)
                {
                  v298 = 3;
                }

                v299 = OUTLINED_FUNCTION_7_76(TrackCount, v288, v276 << v298, v289, v290, v291, v292, v293, v407, v414, v421, v428, v435, v442, v449, extensionKeyd, v463, v470, v477, flavord, v492, v499, v506, v513, v521, allocatorf, v537, v543, v550, v556, v563, v569, v576, v583, cf[0], cf[1], v587, *(&v587 + 1), v588, *(&v588 + 1), v589, v590, blockBufferOut[0]);
                if (v299 || (OUTLINED_FUNCTION_613(), v299 = CMBlockBufferGetDataPointer(v300, v301, v302, 0, v303), v299))
                {
                  BlockBufferWithCFDataNoCopy = v299;
                  v309 = 0;
                }

                else
                {
                  v304 = MEMORY[0x19A8CC720](allocatorf, v295, 192749786, 0);
                  if (v304)
                  {
                    v305 = v304;
                    LODWORD(v521) = v297;
                    if (v286)
                    {
                      if (v296 <= 0xEE6B2800)
                      {
                        if (v276)
                        {
                          v313 = 0;
                          v314 = v276;
                          do
                          {
                            v308 = OUTLINED_FUNCTION_28_27(v304, v279, v280, v281, v282, v283, v284, v285, v407, v414, v421, v428, v435, v442, v449, extensionKeyd, v463, v470, v477, flavord, v492, v499, v506, v513, v521, allocatorf, v537, v543, v550, v556, v563, v569, v576, v583, cf[0], cf[1], v587, *(&v587 + 1), v588, *(&v588 + 1), v589, v590, blockBufferOut[0], blockBufferOut[1], v592[0], v592[1], v593, *(&v593 + 1), v594, v595, v596, *(&v596 + 1), v597[0], v597[1], v597[2], v598, v599, v600, *relativeURL);
                            if (v308)
                            {
                              goto LABEL_385;
                            }

                            OUTLINED_FUNCTION_39_19();
                            LODWORD(v600) = bswap32(bswap64(temporaryBlock) + v294);
                            *cf[0] = v600;
                            OUTLINED_FUNCTION_4_116();
                            v313 += v295;
                          }

                          while (--v314);
                        }
                      }

                      else if (v276)
                      {
                        v306 = 0;
                        v307 = v276;
                        while (1)
                        {
                          v308 = OUTLINED_FUNCTION_28_27(v304, v279, v280, v281, v282, v283, v284, v285, v407, v414, v421, v428, v435, v442, v449, extensionKeyd, v463, v470, v477, flavord, v492, v499, v506, v513, v521, allocatorf, v537, v543, v550, v556, v563, v569, v576, v583, cf[0], cf[1], v587, *(&v587 + 1), v588, *(&v588 + 1), v589, v590, blockBufferOut[0], blockBufferOut[1], v592[0], v592[1], v593, *(&v593 + 1), v594, v595, v596, *(&v596 + 1), v597[0], v597[1], v597[2], v598, v599, v600, *relativeURL);
                          if (v308)
                          {
                            break;
                          }

                          OUTLINED_FUNCTION_39_19();
                          temporaryBlock = bswap64(bswap64(temporaryBlock) + v294);
                          *cf[0] = temporaryBlock;
                          OUTLINED_FUNCTION_4_116();
                          v306 += v295;
                          if (!--v307)
                          {
                            goto LABEL_287;
                          }
                        }

LABEL_385:
                        BlockBufferWithCFDataNoCopy = v308;
                        v309 = 0;
                        goto LABEL_288;
                      }

LABEL_287:
                      BlockBufferWithCFDataNoCopy = 0;
                      v309 = blockBufferOut[0];
                      blockBufferOut[0] = 0;
LABEL_288:
                      CFAllocatorDeallocate(allocatorf, v305);
                      goto LABEL_289;
                    }

                    if (v296 <= 0xEE6B2800)
                    {
                      if (!v276)
                      {
                        goto LABEL_287;
                      }

                      v327 = 0;
                      v328 = v276;
                      while (1)
                      {
                        v312 = OUTLINED_FUNCTION_27_27(v304, v279, v280, v281, v282, v283, v284, v285, v407, v414, v421, v428, v435, v442, v449, extensionKeyd, v463, v470, v477, flavord, v492, v499, v506, v513, v521, allocatorf, v537, v543, v550, v556, v563, v569, v576, v583, cf[0], cf[1], v587, *(&v587 + 1), v588, *(&v588 + 1), v589, v590, blockBufferOut[0], blockBufferOut[1], v592[0], v592[1], v593, *(&v593 + 1), v594, v595, v596, *(&v596 + 1), v597[0], v597[1], v597[2], v598, v599, v600, *relativeURL);
                        if (v312)
                        {
                          break;
                        }

                        OUTLINED_FUNCTION_38_18();
                        LODWORD(v600) = bswap32(bswap32(v600) + v294);
                        *cf[0] = v600;
                        OUTLINED_FUNCTION_4_116();
                        v327 += v295;
                        if (!--v328)
                        {
                          goto LABEL_287;
                        }
                      }
                    }

                    else
                    {
                      if (!v276)
                      {
                        goto LABEL_287;
                      }

                      v310 = 0;
                      v311 = v276;
                      while (1)
                      {
                        v312 = OUTLINED_FUNCTION_27_27(v304, v279, v280, v281, v282, v283, v284, v285, v407, v414, v421, v428, v435, v442, v449, extensionKeyd, v463, v470, v477, flavord, v492, v499, v506, v513, v521, allocatorf, v537, v543, v550, v556, v563, v569, v576, v583, cf[0], cf[1], v587, *(&v587 + 1), v588, *(&v588 + 1), v589, v590, blockBufferOut[0], blockBufferOut[1], v592[0], v592[1], v593, *(&v593 + 1), v594, v595, v596, *(&v596 + 1), v597[0], v597[1], v597[2], v598, v599, v600, *relativeURL);
                        if (v312)
                        {
                          break;
                        }

                        OUTLINED_FUNCTION_38_18();
                        temporaryBlock = bswap64(v294 + bswap32(v600));
                        *cf[0] = temporaryBlock;
                        OUTLINED_FUNCTION_4_116();
                        v310 += v295;
                        if (!--v311)
                        {
                          goto LABEL_287;
                        }
                      }
                    }

                    BlockBufferWithCFDataNoCopy = v312;
                    v309 = 0;
                    goto LABEL_288;
                  }

                  v309 = 0;
                  BlockBufferWithCFDataNoCopy = 4294950966;
                }

LABEL_289:
                v278 = blockBufferOut[0];
                if (blockBufferOut[0])
                {
                  CFRelease(blockBufferOut[0]);
                }

                ChunkOffsetTable = v309;
                if (BlockBufferWithCFDataNoCopy)
                {
                  goto LABEL_299;
                }

LABEL_292:
                OUTLINED_FUNCTION_14_49(v278, v279, v280, v281, v282, v283, v284, v285, v407, v414, v421, v428, v435, v442, v449, extensionKeyd, v463, v470, v477, flavord, v492, v499, v506, v513, v521, allocatorf, v537, v543, v550, v556, v563, v569, v576, v583, cf[0], cf[1], v587, *(&v587 + 1), v588, *(&v588 + 1), v589, v590, blockBufferOut[0], blockBufferOut[1], v592[0], v592[1], v593, *(&v593 + 1), v594, v595, v596);
                v329 = FigAtomWriterInitWithParent();
                if (!v329)
                {
                  v329 = FigAtomWriterBeginAtom();
                  if (!v329)
                  {
                    OUTLINED_FUNCTION_296();
                    v329 = FigAtomWriterAppendVersionAndFlags();
                    if (!v329)
                    {
                      BlockBufferWithCFDataNoCopy = OUTLINED_FUNCTION_6_87();
                      if (BlockBufferWithCFDataNoCopy || !ChunkOffsetTable)
                      {
LABEL_299:
                        FigAtomWriterEndAtom();
                        if (v309)
                        {
                          CFRelease(v309);
                        }

                        goto LABEL_301;
                      }

                      v330 = CMBlockBufferGetDataLength(ChunkOffsetTable);
                      OUTLINED_FUNCTION_22_31(v330, v331, v332, v330, v333, v334, v335, v336, v408, v415, v422, v429, v436, v443, v450, extensionKeye, v464, v471, v478, flavore, v493, v500, v507, v514, v522, allocatorg, v538, v544, v551, v557, v564, v570, v577, v584, cf[0], cf[1], v587, *(&v587 + 1), v588, *(&v588 + 1), v589, v590, blockBufferOut[0], blockBufferOut[1], v592[0], v592[1], v593, *(&v593 + 1), v594, v595, v596, *(&v596 + 1), v597[0], v597[1], v597[2], v598, v599, v600, *relativeURL, *&relativeURL[8], *&relativeURL[16], temporaryBlock, buffer[0]);
                      v329 = FigAtomWriterAppendBlockBufferData();
                    }
                  }
                }

                BlockBufferWithCFDataNoCopy = v329;
                goto LABEL_299;
              }
            }
          }

          OUTLINED_FUNCTION_0_161();
          MovieSampleTableNumSampleSizeEntries(v257);
          Count = MovieSampleTableGetCommonSampleSize(v257);
          SampleSizeTable = MovieSampleTableGetSampleSizeTable(v257);
          LODWORD(cf[0]) = bswap32(Count);
          OUTLINED_FUNCTION_14_49(SampleSizeTable, v260, v261, v262, v263, v264, v265, v266, v407, v414, v421, v428, v435, v442, v449, extensionKeyd, v463, v470, v477, flavord, v492, v499, v506, v513, v521, allocatorf, v537, v543, v550, v556, v563, v569, v576, v583, cf[0], cf[1], v587, *(&v587 + 1), v588, *(&v588 + 1), v589, v590, blockBufferOut[0], blockBufferOut[1], v592[0], v592[1], v593, *(&v593 + 1), v594, v595, v596);
          TimeValueToAddToCompositionOffsets = FigAtomWriterInitWithParent();
          if (!TimeValueToAddToCompositionOffsets)
          {
            TimeValueToAddToCompositionOffsets = FigAtomWriterBeginAtom();
            if (!TimeValueToAddToCompositionOffsets)
            {
              OUTLINED_FUNCTION_296();
              TimeValueToAddToCompositionOffsets = FigAtomWriterAppendVersionAndFlags();
              if (!TimeValueToAddToCompositionOffsets)
              {
                TimeValueToAddToCompositionOffsets = FigAtomWriterAppendData();
                if (!TimeValueToAddToCompositionOffsets)
                {
                  BlockBufferWithCFDataNoCopy = OUTLINED_FUNCTION_6_87();
                  if (!BlockBufferWithCFDataNoCopy && SampleSizeTable)
                  {
                    v267 = CMBlockBufferGetDataLength(SampleSizeTable);
                    OUTLINED_FUNCTION_11_58(v267, v268, v269, v267, v270, v271, v272, v273, v407, v414, v421, v428, v435, v442, v449, extensionKeyd, v463, v470, v477, flavord, v492, v499, v506, v513, v521, allocatorf, v537, v543, v550, v556, v563, v569, v576, v583, cf[0], cf[1], v587, *(&v587 + 1), v588, *(&v588 + 1), v589, v590, blockBufferOut[0], blockBufferOut[1], v592[0], v592[1], v593, *(&v593 + 1), v594, v595, v596, *(&v596 + 1), v597[0], v597[1], v597[2], v598, v599, v600, *relativeURL, *&relativeURL[8], *&relativeURL[16], temporaryBlock, buffer[0]);
                    BlockBufferWithCFDataNoCopy = FigAtomWriterAppendBlockBufferData();
                  }

                  FigAtomWriterEndAtom();
                  goto LABEL_247;
                }
              }
            }
          }
        }
      }
    }

LABEL_382:
    BlockBufferWithCFDataNoCopy = TimeValueToAddToCompositionOffsets;
    goto LABEL_383;
  }

  v353 = OUTLINED_FUNCTION_7_76(0, v346, 8 * v151, v347, v348, v349, v350, v351, v404, v411, v418, v425, v432, v439, v446, extensionKeya, v460, v467, v474, flavora, v489, v496, v503, v510, v518, allocatorc, v534, v540, v547, v553, v560, v566, v573, v580, 0, cf[1], v587, *(&v587 + 1), v588, *(&v588 + 1), v589, v590, 0);
  if (!v353)
  {
    OUTLINED_FUNCTION_613();
    v353 = CMBlockBufferGetDataPointer(v354, v355, v356, 0, v357);
    if (!v353)
    {
      Count = 0;
      v358 = v151;
      while (1)
      {
        *relativeURL = 0;
        v353 = CMBlockBufferCopyDataBytes(CompositionOffsetTable, Count, 8uLL, relativeURL);
        if (v353)
        {
          break;
        }

        v359 = cf[0];
        *cf[0] = *relativeURL;
        v359[1] = bswap32(bswap32(*&relativeURL[4]) + v352);
        cf[0] = v359 + 2;
        Count += 8;
        if (!--v358)
        {
          v360 = blockBufferOut[0];
          CompositionOffsetTable = blockBufferOut[0];
          goto LABEL_350;
        }
      }
    }
  }

LABEL_394:
  BlockBufferWithCFDataNoCopy = v353;
LABEL_359:
  if (blockBufferOut[0])
  {
    CFRelease(blockBufferOut[0]);
  }

LABEL_383:
  FigAtomWriterEndAtom();
LABEL_301:
  FigAtomWriterEndAtom();
LABEL_302:
  FigAtomWriterEndAtom();
  return BlockBufferWithCFDataNoCopy;
}

uint64_t appendSampleGroupDescriptionAtoms(void *a1, uint64_t (*a2)(void, CFDictionaryRef *))
{
  v3 = a1;
  theDict = 0;
  v4 = a2(*a1, &theDict);
  if (v4)
  {
    v8 = v4;
    v9 = 0;
    v7 = 0;
  }

  else
  {
    Count = FigCFDictionaryGetCount();
    if (Count)
    {
      v6 = Count;
      if (Count >> 61)
      {
        v7 = 0;
LABEL_5:
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0_4();
        v8 = FigSignalErrorAtGM();
        v9 = 0;
        goto LABEL_57;
      }

      v7 = malloc_type_malloc(8 * Count, 0x100004000313F17uLL);
      if (!v7)
      {
        goto LABEL_5;
      }

      v10 = malloc_type_malloc(8 * v6, 0x2004093837F09uLL);
      if (!v10)
      {
        goto LABEL_5;
      }

      v9 = v10;
      CFDictionaryGetKeysAndValues(theDict, v7, v10);
      v11 = 0;
      OUTLINED_FUNCTION_25_29();
      v37 = v3;
      allocator = *v12;
      v35 = v6;
      v36 = v9;
      while (1)
      {
        v13 = v7[v11];
        if (*(v3 + 36))
        {
          v14 = 0;
        }

        else
        {
          v14 = v13 == v2;
        }

        if (v14)
        {
          goto LABEL_46;
        }

        v15 = v9[v11];
        v41 = 0;
        theArray = 0;
        v40 = 0;
        v16 = MovieSampleGroupDescriptionArrayCopyInfo(v15, 0, &theArray, 0, &v41, &v40);
        if (v16)
        {
          v8 = v16;
        }

        else
        {
          v17 = theArray;
          if (theArray)
          {
            v2 = v41;
            v18 = CFArrayGetCount(theArray);
            Mutable = CFDataCreateMutable(allocator, 0);
            if (Mutable)
            {
              v20 = Mutable;
              v21 = v7;
              if (v18 >= 1)
              {
                for (i = 0; i != v18; ++i)
                {
                  ValueAtIndex = CFArrayGetValueAtIndex(v17, i);
                  BytePtr = CFDataGetBytePtr(ValueAtIndex);
                  Length = CFDataGetLength(ValueAtIndex);
                  v26 = Length;
                  if (!v2)
                  {
                    *bytes = bswap32(Length);
                    CFDataAppendBytes(v20, bytes, 4);
                  }

                  CFDataAppendBytes(v20, BytePtr, v26);
                }
              }

              v27 = v41;
              v28 = v40;
              v45 = v13;
              OUTLINED_FUNCTION_16_43();
              if (v18)
              {
                if (v28)
                {
                  LODWORD(v2) = 2;
                }

                else
                {
                  LODWORD(v2) = 1;
                }

                v29 = FigAtomWriterInitWithParent();
                if (v29)
                {
                  v8 = v29;
                  v7 = v21;
                  v3 = v37;
                  v6 = v35;
                }

                else
                {
                  v30 = FigAtomWriterBeginAtom();
                  v6 = v35;
                  if (v30 || (v30 = FigAtomWriterAppendVersionAndFlags(), v30) || (v45 = bswap32(v13), v30 = FigAtomWriterAppendData(), v30) || (v43 = bswap32(v27), v30 = FigAtomWriterAppendData(), v30))
                  {
                    v8 = v30;
                    v7 = v21;
LABEL_33:
                    v3 = v37;
                  }

                  else
                  {
                    v7 = v21;
                    if (v28)
                    {
                      v31 = OUTLINED_FUNCTION_37_24(bswap32(v28));
                      if (v31)
                      {
                        v8 = v31;
                        goto LABEL_33;
                      }
                    }

                    appended = OUTLINED_FUNCTION_37_24(bswap32(v18));
                    v3 = v37;
                    if (!appended)
                    {
                      CFDataGetBytePtr(v20);
                      CFDataGetLength(v20);
                      appended = FigAtomWriterAppendData();
                    }

                    v8 = appended;
                  }
                }

                OUTLINED_FUNCTION_25_29();
                v9 = v36;
              }

              else
              {
                v8 = 0;
                v7 = v21;
                v9 = v36;
                v3 = v37;
                v6 = v35;
                OUTLINED_FUNCTION_25_29();
              }

              FigAtomWriterEndAtom();
              goto LABEL_42;
            }
          }

          else
          {
            v32 = CFDataCreateMutable(allocator, 0);
            if (v32)
            {
              v20 = v32;
              OUTLINED_FUNCTION_16_43();
              FigAtomWriterEndAtom();
              v8 = 0;
              OUTLINED_FUNCTION_25_29();
LABEL_42:
              CFRelease(v20);
              goto LABEL_43;
            }
          }

          fig_log_get_emitter();
          OUTLINED_FUNCTION_120();
          v8 = FigSignalErrorAtGM();
          if (!v8)
          {
            OUTLINED_FUNCTION_16_43();
            FigAtomWriterEndAtom();
          }

          OUTLINED_FUNCTION_25_29();
        }

LABEL_43:
        if (theArray)
        {
          CFRelease(theArray);
        }

        if (v8)
        {
          goto LABEL_57;
        }

LABEL_46:
        if (++v11 == v6)
        {
          goto LABEL_56;
        }
      }
    }

    v9 = 0;
    v7 = 0;
LABEL_56:
    v8 = 0;
  }

LABEL_57:
  free(v9);
  free(v7);
  if (theDict)
  {
    CFRelease(theDict);
  }

  return v8;
}

uint64_t appendMetadataFromMetadataSerializerDictionary(const __CFDictionary *a1)
{
  value = 0;
  v2 = *MEMORY[0x1E695E480];
  Count = CFDictionaryGetCount(a1);
  MutableCopy = CFDictionaryCreateMutableCopy(v2, Count, a1);
  v5 = CFDictionaryGetValue(MutableCopy, @"com.apple.itunes");
  if (!v5)
  {
LABEL_34:
    if (FigFileTypeIsQTMovieFileType())
    {
      v21 = CFDictionaryGetValue(MutableCopy, @"com.apple.quicktime.mdta");
      if (v21)
      {
        appended = appendMetadataToAtomWriter(v21);
        if (appended)
        {
          goto LABEL_46;
        }
      }

      v22 = @"com.apple.quicktime.udta";
    }

    else
    {
      v22 = @"org.mp4ra";
    }

    v23 = CFDictionaryGetValue(MutableCopy, v22);
    if (!v23)
    {
      v20 = 0;
      goto LABEL_40;
    }

    appended = appendMetadataToAtomWriter(v23);
    goto LABEL_46;
  }

  v6 = v5;
  if (FigFileTypeIsQTMovieFileType())
  {
    v7 = &kFigMetadataFormat_QuickTimeUserData;
  }

  else
  {
    v7 = &kFigMetadataFormat_ISOUserData;
  }

  v8 = *v7;
  v9 = CFDictionaryGetValue(MutableCopy, *v7);
  value = v9;
  if (v9)
  {
    v10 = CFRetain(v9);
    value = v10;
  }

  else
  {
    appended = createMetadataSerializerForFormat(v8, v2, &value);
    if (appended)
    {
LABEL_46:
      v20 = appended;
      goto LABEL_40;
    }

    CFDictionaryAddValue(MutableCopy, v8, value);
    v10 = value;
  }

  cf = 0;
  theBuffer = 0;
  v12 = *(*(CMBaseObjectGetVTable() + 24) + 8);
  if (!v12)
  {
LABEL_27:
    v20 = 4294954514;
    goto LABEL_28;
  }

  CFDataWithBlockBufferNoCopy = v12(v6, &theBuffer);
  if (CFDataWithBlockBufferNoCopy)
  {
    goto LABEL_26;
  }

  if (theBuffer)
  {
    DataLength = CMBlockBufferGetDataLength(theBuffer);
    if (!CMBlockBufferIsRangeContiguous(theBuffer, 0, DataLength))
    {
      blockBufferOut = 0;
      CFDataWithBlockBufferNoCopy = CMBlockBufferCreateContiguous(v2, theBuffer, v2, 0, 0, DataLength, 0, &blockBufferOut);
      if (CFDataWithBlockBufferNoCopy)
      {
        goto LABEL_26;
      }

      v15 = theBuffer;
      theBuffer = blockBufferOut;
      if (blockBufferOut)
      {
        CFRetain(blockBufferOut);
      }

      if (v15)
      {
        CFRelease(v15);
      }

      if (blockBufferOut)
      {
        CFRelease(blockBufferOut);
      }
    }

    CFDataWithBlockBufferNoCopy = FigCreateCFDataWithBlockBufferNoCopy();
    if (!CFDataWithBlockBufferNoCopy)
    {
      if (FigFileTypeIsQTMovieFileType())
      {
        v16 = kFigUserDataKeyspace;
      }

      else
      {
        v16 = kFigISOUserDataKeyspace;
      }

      FigMetadataWriter = FigMetadataSerializerGetFigMetadataWriter(v10);
      v18 = cf;
      v19 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v19)
      {
        CFDataWithBlockBufferNoCopy = v19(FigMetadataWriter, *v16, @"meta", v18, 0);
        goto LABEL_26;
      }

      goto LABEL_27;
    }

LABEL_26:
    v20 = CFDataWithBlockBufferNoCopy;
    goto LABEL_28;
  }

  v20 = 0;
LABEL_28:
  if (cf)
  {
    CFRelease(cf);
  }

  if (theBuffer)
  {
    CFRelease(theBuffer);
  }

  if (!v20)
  {
    CFDictionaryRemoveValue(MutableCopy, @"com.apple.itunes");
    goto LABEL_34;
  }

LABEL_40:
  if (value)
  {
    CFRelease(value);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  return v20;
}

uint64_t appendMetadataToAtomWriter(uint64_t a1)
{
  theBuffer = 0;
  v2 = *(*(CMBaseObjectGetVTable() + 24) + 8);
  if (!v2)
  {
    return 4294954514;
  }

  v3 = v2(a1, &theBuffer);
  v4 = theBuffer;
  if (v3)
  {
    appended = v3;
    if (!theBuffer)
    {
      return appended;
    }

LABEL_5:
    CFRelease(v4);
    return appended;
  }

  if (!theBuffer)
  {
    return 0;
  }

  CMBlockBufferGetDataLength(theBuffer);
  appended = FigAtomWriterAppendBlockBufferData();
  v4 = theBuffer;
  if (theBuffer)
  {
    goto LABEL_5;
  }

  return appended;
}

uint64_t MovieHeaderMakerAddTrack_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieHeaderMakerAddTrack_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieHeaderMakerAddTrack_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieHeaderMakerSetShouldWriteMovieExtendsAtom_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieHeaderMakerSetShouldAllow64BitDataOffsetInTrackRunAtom_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieHeaderMakerSetMovieMetadataBlockBuffer_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieHeaderMakerTrackSetTrackMetadataBlockBuffer_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieHeaderMakerTrackSetTrackMetadataBlockBuffer_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieHeaderMakerTrackSetShouldWriteCleanApertureDimensionsAtom_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieHeaderMakerTrackSetShouldWriteCleanApertureDimensionsAtom_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieHeaderMakerTrackSetShouldWriteProductionApertureDimensionsAtom_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieHeaderMakerTrackSetShouldWriteProductionApertureDimensionsAtom_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieHeaderMakerTrackSetShouldWriteEncodedPixelsDimensionsAtom_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieHeaderMakerTrackSetShouldWriteEncodedPixelsDimensionsAtom_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieHeaderMakerTrackSetSampleReferenceBaseURL_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieHeaderMakerTrackSetSampleReferenceBaseURL_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieHeaderMakerTrackSetShouldWriteCompactSampleSizeAtomIfPossible_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieHeaderMakerTrackSetShouldWriteCompactSampleSizeAtomIfPossible_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieHeaderMakerTrackSetShouldWriteRollSampleGroupAtoms_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieHeaderMakerTrackSetShouldWriteRollSampleGroupAtoms_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieHeaderMakerTrackSetNegativeCompositionOffsetsInISOFilePolicy_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieHeaderMakerTrackSetNegativeCompositionOffsetsInISOFilePolicy_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieHeaderMakerTrackGetNegativeCompositionOffsetsInISOFilePolicy_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieHeaderMakerTrackGetNegativeCompositionOffsetsInISOFilePolicy_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieHeaderMakerTrackGetNegativeCompositionOffsetsInISOFilePolicy_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieHeaderMakerTrackSetShouldWriteSampleAuxiliaryInformationAtoms_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieHeaderMakerTrackSetShouldWriteSampleAuxiliaryInformationAtoms_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieHeaderMakerAddByteCountToTrackRunDataOffsets_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieHeaderMakerTrackSetShouldWriteEditAtom_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieHeaderMakerTrackSetShouldWriteEditAtomInTrackFragment_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieHeaderMakerTrackSetShouldWriteEditAtomInTrackFragment_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieHeaderMakerTrackSetShouldAllowWritingZeroTrackDurationInEditListAtom_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieHeaderMakerTrackSetShouldAllowWritingZeroTrackDurationInEditListAtom_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieHeaderMakerSetShouldWriteBaseMediaDecodeTimeAtomInTrackFragment_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieHeaderMakerSetShouldWriteBaseDataOffsetIsMovieFragmentAtomFlagInTrackFragment_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieHeaderMakerAddByteCountToChunkOffsets_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieHeaderMakerTrackDidWriteEditAtom_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieHeaderMakerTrackDidWriteEditAtom_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieHeaderMakerTrackDidWriteEditAtom_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieHeaderMakerSetMovieExtendsHeaderFragmentDuration_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieHeaderMakerSetMovieExtendsHeaderFragmentDuration_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieHeaderMakerCopyFileTypeMajorBrand_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieHeaderMakerCopyFileTypeMajorBrand_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieHeaderMakerCopyFileTypeMinorVersion_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieHeaderMakerCopyFileTypeMinorVersion_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieHeaderMakerCopyFileTypeCompatibleBrands_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieHeaderMakerCopyFileTypeCompatibleBrands_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieHeaderMakerCopyFileTypeCompatibleBrands_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieHeaderMakerCopyFileTypeAtomAsBlockBuffer_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieHeaderMakerCopyFileTypeAtomAsBlockBuffer_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieHeaderMakerCopyFileTypeAtomAsBlockBuffer_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieHeaderMakerCopyFileTypeAtomAsBlockBuffer_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieHeaderMakerCopyMediaDataAtomHeaderAsBlockBuffer_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieHeaderMakerCopyMediaDataAtomHeaderAsBlockBuffer_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieHeaderMakerCopyMediaDataAtomHeaderAsBlockBuffer_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieHeaderMakerCopyMovieFragmentHeaderAsBlockBuffer_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieHeaderMakerCopyMovieFragmentHeaderAsBlockBuffer_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieHeaderMakerCopyMovieFragmentHeaderAsBlockBuffer_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t createMetadataSerializerDictionaryWithMetadata_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t createMetadataSerializerDictionaryWithMetadata_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigGetMatchingMediaSelectionOptionWithEnhancedSpeechIntelligibility(const void *a1, uint64_t a2)
{
  if (_MergedGlobals_103 == -1)
  {
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_14:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    FigSignalErrorAtGM();
    return 0;
  }

  OUTLINED_FUNCTION_0_162();
  dispatch_once_f(v7, v8, v9);
  if (!a2)
  {
    goto LABEL_14;
  }

LABEL_3:
  if (!qword_1ED4CB680)
  {
    return 0;
  }

  FigCFDictionaryGetValue();
  if (!FigCFArrayContainsAnyValueInArray() || (Value = FigCFDictionaryGetValue()) == 0)
  {
    if (a1)
    {
      v5 = CFRetain(a1);
    }

    else
    {
      v5 = 0;
    }

    FigCFDictionaryGetValue();
    FigCFEqual();
    FigCFArrayApplyFunction();
    if (v5)
    {
      CFRelease(v5);
    }

    FigCFArrayApplyFunction();
    return 0;
  }

  return Value;
}

void CopyOptionWithMatchingLanguageTag(const void *a1, uint64_t a2)
{
  Value = FigCFDictionaryGetValue();
  if (*(a2 + 8) && !*(a2 + 16))
  {
    if (!FigCFEqual())
    {
      return;
    }
  }

  else if (Value && !FigCFEqual())
  {
    return;
  }

  Mutable = *a2;
  if (*a2 || (Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]), (*a2 = Mutable) != 0))
  {

    CFArrayAppendValue(Mutable, a1);
  }
}

uint64_t MatchEveryCharacteristic(uint64_t a1, uint64_t *a2)
{
  FigCFDictionaryGetValue();
  result = FigCFArrayContainsEachValueInArray();
  if (result)
  {
    if (*a2 || (result = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]), (*a2 = result) != 0))
    {

      return FigCFArrayAppendValue();
    }
  }

  return result;
}

uint64_t FigCFAppendStringWithSmartComma_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCFAppendStringWithSmartComma_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t pwdKeyExchangeReceiverAOCP_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = 4294947742;
  if (a2 && a4)
  {
    v8 = DerivedStorage;
    FigSimpleMutexLock();
    if (CFEqual(a2, @"PWDReceiverCryptor"))
    {
      v10 = 0;
      v7 = pwdKeyExchangeReceiverAOCP_EnsureAndCopyCryptorWrappingDecryptor(v8, &v10);
      if (!v7)
      {
        *a4 = v10;
      }
    }

    else
    {
      v7 = 0;
    }

    FigSimpleMutexUnlock();
  }

  return v7;
}

uint64_t pwdKeyExchangeReceiverAOCP_EnsureAndCopyCryptorWrappingDecryptor(uint64_t a1, void *a2)
{
  v12 = 0;
  cf = 0;
  if (!a1)
  {
    return 4294947742;
  }

  v4 = *(a1 + 80);
  if (v4)
  {
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (!v5 || v5(v4, &v12))
    {
LABEL_16:
      v10 = FigSignalErrorAtGM();
      goto LABEL_17;
    }

    if (*(a1 + 80) && v12 == *(a1 + 88))
    {
LABEL_13:
      v9 = *(a1 + 80);
      if (v9)
      {
        v9 = CFRetain(v9);
      }

      v10 = 0;
      *a2 = v9;
      goto LABEL_17;
    }
  }

  v6 = *(a1 + 88);
  if (v6)
  {
    if (!FigPKDCPELimitedCryptorCreateWithExternalProtectionMethods(v6, *(a1 + 112), *MEMORY[0x1E695E480], &cf))
    {
      v7 = *(a1 + 80);
      v8 = cf;
      *(a1 + 80) = cf;
      if (v8)
      {
        CFRetain(v8);
      }

      if (v7)
      {
        CFRelease(v7);
      }

      goto LABEL_13;
    }

    goto LABEL_16;
  }

  v10 = 4294947742;
LABEL_17:
  if (cf)
  {
    CFRelease(cf);
  }

  return v10;
}

uint64_t FigPWDKeyExchangeReceiverCreateForAOCP_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t pwdKeyExchangeReceiverAOCP_ProcessIncomingMessageAndCreateReply_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t pwdKeyExchangeReceiverAOCP_ProcessIncomingMessageAndCreateReply_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t pwdKeyExchangeReceiverAOCP_ProcessIncomingMessageAndCreateReply_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t pwdKeyExchangeReceiverAOCP_ProcessIncomingMessageAndCreateReply_cold_6(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t pwdKeyExchangeReceiverAOCP_ProcessIncomingMessageAndCreateReply_cold_7(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t pwdKeyExchangeReceiverAOCP_ProcessIncomingMessageAndCreateReply_cold_9(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t pwdKeyExchangeReceiverAOCP_ProcessIncomingMessageAndCreateReply_cold_11(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t pwdKeyExchangeReceiverAOCP_ProcessIncomingMessageAndCreateReply_cold_13(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t pwdKeyExchangeReceiverAOCP_ProcessIncomingMessageAndCreateReply_cold_14(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t pwdKeyExchangeReceiverAOCP_ProcessIncomingMessageAndCreateReply_cold_15(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t pwdKeyExchangeReceiverAOCP_ProcessIncomingMessageAndCreateReply_cold_16(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t pwdKeyExchangeReceiverAOCP_ProcessIncomingMessageAndCreateReply_cold_17(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t pwdKeyExchangeReceiverAOCP_SetCryptorOnSampleBuffer_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigTTMLCGColorCreateWithColorSyntax(const __CFString *a1)
{
  v5 = 0;
  v4 = 0;
  v3 = 0;
  FigTTMLParseColor(a1, &v5, &v4, &v3 + 1, &v3);
  if (v1)
  {
    return 0;
  }

  else
  {
    return FigCreateCGColorSRGB();
  }
}

uint64_t FigTTMLParseLengthSyntax(const __CFString *a1)
{
  v1 = *MEMORY[0x1E6962808];
  v3 = 0;
  if (!FigTTMLParseLength(a1, &v3 + 1, &v3) && v3 <= 5)
  {
    return FigGeometryDimensionMake();
  }

  return v1;
}

uint64_t videoReceiverCommon_receiveCAXPCImageQueueMessage(uint64_t a1, uint64_t a2, const void *a3)
{
  v5 = FigCFWeakReferenceHolderCopyReferencedObject();
  Identifier = CAImageQueueGetIdentifier();
  v7 = CAXPCImageQueueCommandForMessage();
  if (v7 == 4)
  {
    if (a3)
    {
      CFRelease(a3);
    }

    if (v5)
    {
      v8 = *(*(CMBaseObjectGetVTable() + 24) + 24);
      if (v8)
      {
        v8(v5, Identifier);
      }
    }
  }

  else if (v5)
  {
    v9 = v7;
    v10 = *(CMBaseObjectGetVTable() + 24);
    if (v9 == 1)
    {
      v11 = *(v10 + 16);
      if (v11)
      {
        v11(v5, Identifier, 0, a2);
      }
    }

    else
    {
      v12 = *(v10 + 32);
      if (v12)
      {
        v12(v5, Identifier, a2);
      }
    }
  }

  return FigDeferCFRelease();
}

uint64_t FigVideoReceiverCommonCreateEndpointID(uint64_t a1, void *a2)
{
  cf = 0;
  value = 0;
  v4 = *MEMORY[0x1E695E480];
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v5 || (v5(a1, @"ConnectionHelper", v4, &cf), (v6 = cf) == 0))
  {
    v7 = FigVideoReceiverConnectionHelperCreate(v4, a1, &cf);
    if (v7)
    {
      goto LABEL_13;
    }

    v8 = cf;
    v9 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (!v9)
    {
      v10 = 4294954514;
      goto LABEL_10;
    }

    v7 = v9(a1, @"ConnectionHelper", v8);
    if (v7)
    {
LABEL_13:
      v10 = v7;
      goto LABEL_10;
    }

    v6 = cf;
  }

  v10 = FigVideoReceiverConnectionHelperCopyBootstrapEndpoint(v6, &value);
  if (!v10)
  {
    v11 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_value(v11, kFigVideoReceiverEndpoint, value);
    *a2 = v11;
  }

LABEL_10:
  FigXPCRelease();
  FigXPCRelease();
  if (cf)
  {
    CFRelease(cf);
  }

  return v10;
}

uint64_t FigVideoReceiverDataChannelSettingsCopySerializable_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoReceiverDataChannelSettingsCopySerializable_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoReceiverDataChannelSettingsCopySerializable_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoReceiverDataChannelSettingsCopySerializable_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoReceiverDataChannelSettingsCopySerializable_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoReceiverDataChannelSettingsCopyDeserialized_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoReceiverDataChannelSettingsCopyDeserialized_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoReceiverDataChannelSettingsCopyDeserialized_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void FigVideoReceiverForBufferDeliveryCreateCAXPCImageQueue_cold_1(const void *a1, const void *a2, _DWORD *a3)
{
  *a3 = FigSignalErrorAtGM();
  CFRelease(a1);
  CFRelease(a2);
}

uint64_t FigVideoReceiverForBufferDeliveryCreateCAXPCImageQueue_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoReceiverForBufferDeliveryCreateCAXPCImageQueue_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoReceiverForBufferDeliveryCreateCAXPCImageQueue_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoReceiverForBufferDeliveryCreateCAXPCImageQueue_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoReceiverCommonCopyImageQueuesFromConfiguration_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoReceiverCommonCopyImageQueuesFromConfiguration_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoReceiverCommonCopyLastSampledPixelBufferFromConfiguration_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t aqOfflineMixer_processUntilHighWaterMet(uint64_t a1)
{
  v337 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E6960C70];
  dictionaryRepresentation.value = 0;
  v266 = *MEMORY[0x1E6960C70];
  v334.value = *MEMORY[0x1E6960C70];
  HIDWORD(v265) = *(MEMORY[0x1E6960C70] + 8);
  v334.timescale = HIDWORD(v265);
  FigSimpleMutexLock();
  v277 = (a1 + 432);
  if ((*(a1 + 444) & 1) != 0 || CFArrayGetCount(*(a1 + 296)) != 1)
  {
    FigSimpleMutexUnlock();
    value_low = 0;
  }

  else
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 296), 0);
    if (ValueAtIndex)
    {
      value_low = CFRetain(ValueAtIndex);
    }

    else
    {
      value_low = 0;
    }

    FigSimpleMutexUnlock();
    v5 = CFGetAllocator(value_low);
    if (!FigAudioQueueCopyProperty(value_low, @"DynamicLatency", v5, &dictionaryRepresentation))
    {
      CMTimeMakeFromDictionary(&time.duration, dictionaryRepresentation.value);
      v334.value = time.duration.value;
      flags = time.duration.flags;
      v334.timescale = time.duration.timescale;
      if (time.duration.flags)
      {
        epoch = time.duration.epoch;
        v277->value = v334.value;
        *(a1 + 440) = v334.timescale;
        *(a1 + 444) = flags;
        *(a1 + 448) = epoch;
        if (*(a1 + 216) == 1819304813)
        {
          *(a1 + 408) = v334.value;
          *(a1 + 416) = v334.timescale;
          *(a1 + 420) = flags;
          *(a1 + 424) = epoch;
        }

        else if (!*(a1 + 350))
        {
          OUTLINED_FUNCTION_26_31((a1 + 356));
          *&rhs.duration.value = *&v277->value;
          rhs.duration.epoch = *(a1 + 448);
          CMTimeAdd(&time.duration, &lhs, &rhs.duration);
          *(a1 + 380) = *&time.duration.value;
          *(a1 + 396) = time.duration.epoch;
        }
      }
    }
  }

  if (dictionaryRepresentation.value)
  {
    CFRelease(dictionaryRepresentation.value);
  }

  v262 = (a1 + 408);
  if (value_low)
  {
    CFRelease(value_low);
  }

  FigSimpleMutexLock();
  v278 = a1 + 324;
  v321 = *(a1 + 324);
  v322 = *(a1 + 332);
  v283 = *(a1 + 340);
  v284 = *(a1 + 336);
  v285 = v284 & 0x1D;
  v8 = v285 == 1;
  FigSimpleMutexUnlock();
  FigSimpleMutexLock();
  if (dword_1EAF17670)
  {
    v287 = (v284 & 0x1D) == 1;
    v10 = OUTLINED_FUNCTION_6_88();
    value_low = LODWORD(rhs.duration.value);
    if (os_log_type_enabled(v10, v334.value))
    {
      v11 = value_low;
    }

    else
    {
      v11 = value_low & 0xFFFFFFFE;
    }

    if (v11)
    {
      v12 = *(a1 + 75);
      v13 = *(a1 + 321);
      v14 = *(*(OUTLINED_FUNCTION_35_21() + 16) + 16);
      v295 = v13;
      if (v14)
      {
        v292 = v14(value_low);
      }

      else
      {
        v292 = 0;
      }

      v15 = *(a1 + 32);
      VTable = CMBaseObjectGetVTable();
      v25 = *(VTable + 16);
      v24 = VTable + 16;
      v26 = *(v25 + 24);
      v27 = v12;
      if (v26)
      {
        v24 = v26(v15);
        v28 = v24;
      }

      else
      {
        v28 = 0;
      }

      v29 = *(a1 + 322);
      v30 = *(a1 + 74);
      OUTLINED_FUNCTION_2_146(v24, v17, v18, v19, v20, v21, v22, v23, blockBufferOut, v246, sampleSizeArray, v248, v249, v250, v251, v252, v253, v255, v256, v257, v259, v261, v262, v263, v265, v266, v267, v269, v271, *(&v271 + 1), v272, allocator, key, v277, v278, v280, v283, v284);
      Seconds = CMTimeGetSeconds(&time.duration);
      LODWORD(lhs.value) = 136317954;
      v32 = "No (";
      if (v285 == 1)
      {
        v32 = "Until ";
      }

      *(&lhs.value + 4) = "aqOfflineMixer_processUntilHighWaterMet";
      v33 = ")";
      LOWORD(lhs.flags) = 2048;
      if (v285 == 1)
      {
        v33 = "";
      }

      *(&lhs.flags + 2) = a1;
      HIWORD(lhs.epoch) = 2082;
      v316 = a1 + 456;
      v317 = 1024;
      *v318 = v27;
      *&v318[4] = 1024;
      *&v318[6] = v295;
      *&v318[10] = 1024;
      *&v318[12] = v292;
      *&v318[16] = 1024;
      *&v318[18] = v28;
      *&v318[22] = 1024;
      *&v318[24] = v29;
      *&v318[28] = 1024;
      *&v318[30] = v30;
      *&v318[34] = 2082;
      *&v318[36] = v32;
      *&v318[44] = 2048;
      *&v318[46] = Seconds;
      *&v318[54] = 2082;
      *&v318[56] = v33;
      OUTLINED_FUNCTION_9_58();
      OUTLINED_FUNCTION_108();
      _os_log_send_and_compose_impl();
      value_low = LODWORD(rhs.duration.value);
      v2 = MEMORY[0x1E6960C70];
    }

    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v8 = v287;
  }

  v281 = a1 + 456;
  v270 = a1 + 504;
  v268 = (a1 + 528);
  allocatora = *MEMORY[0x1E695E480];
  keya = *MEMORY[0x1E6960560];
  v34 = v2[1].n128_i64[0];
  LODWORD(v258) = *(MEMORY[0x1E6960CC0] + 12);
  HIDWORD(v258) = v2->n128_u32[3];
  v286 = *(MEMORY[0x1E6960CC0] + 16);
  v264 = *MEMORY[0x1E6960558];
  *&v9 = 136317442;
  v260 = v9;
  *&v9 = 136316674;
  v254 = v9;
  v35 = vdupq_n_s64(4uLL);
  for (i = v35; ; v35 = i)
  {
    if (!*(a1 + 75) || !*(a1 + 321) || (v36 = OUTLINED_FUNCTION_35_21(), v35 = i, (v37 = *(*(v36 + 16) + 16)) != 0) && (v38 = v37(value_low), v35 = i, v38))
    {
      if (!(*(a1 + 322) | v8))
      {
        LOBYTE(v8) = 0;
        goto LABEL_233;
      }
    }

    if (*(a1 + 74))
    {
      goto LABEL_233;
    }

    v307 = 0;
    *&v306.value = *v2;
    v306.epoch = v34;
    *&v305.value = *&v306.value;
    v305.epoch = v34;
    v296 = *&v306.value;
    *&v304.value = *&v306.value;
    v304.epoch = v34;
    v303 = 0;
    memset(&rhs, 0, sizeof(rhs));
    timingArrayEntriesNeededOut = 0;
    v39 = *(a1 + 280);
    v40 = *v39;
    if (v40)
    {
      v41 = *(a1 + 276);
      v42 = (v40 + 3) & 0x1FFFFFFFCLL;
      v43 = vdupq_n_s64(v40 - 1);
      v44 = v39 + 11;
      v45 = xmmword_196E73090;
      v46 = xmmword_196E73080;
      do
      {
        v47 = vmovn_s64(vcgeq_u64(v43, v45));
        if (vuzp1_s16(v47, *v43.i8).u8[0])
        {
          *(v44 - 8) = v41;
        }

        if (vuzp1_s16(v47, *&v43).i8[2])
        {
          *(v44 - 4) = v41;
        }

        if (vuzp1_s16(*&v43, vmovn_s64(vcgeq_u64(v43, *&v46))).i32[1])
        {
          *v44 = v41;
          v44[4] = v41;
        }

        v46 = vaddq_s64(v46, v35);
        v45 = vaddq_s64(v45, v35);
        v44 += 16;
        v42 -= 4;
      }

      while (v42);
    }

    v48 = AQOfflineMixerRender();
    if (v48)
    {
      v49 = v48;
      goto LABEL_65;
    }

    *(a1 + 320) = v303;
    v50 = v307;
    if (!v307 || *(a1 + 322))
    {
      v51 = 0;
      v52 = 0;
LABEL_54:
      OUTLINED_FUNCTION_1_152();
      lhs = *(a1 + 124);
      v53 = OUTLINED_FUNCTION_17_39();
      if ((CMTimeCompare(v53, v54) & 0x80000000) == 0)
      {
        *(a1 + 322) = 1;
      }

      if (*(a1 + 320) || *(a1 + 322))
      {
        if (!*(a1 + 348))
        {
          CMNotificationCenterGetDefaultLocalCenter();
          CMNotificationCenterPostNotification();
          *(a1 + 348) = 1;
        }

        v49 = 0;
        *(a1 + 75) = 0;
      }

      else
      {
        v49 = 0;
      }

      goto LABEL_61;
    }

    theBuffer.value = 0;
    sbuf.value = 0;
    dataPointerOut = 0;
    OUTLINED_FUNCTION_24_28();
    if (v56)
    {
      v57 = (*(a1 + 220) >> 5) & 1;
    }

    else
    {
      LOBYTE(v57) = 0;
    }

    v58 = *(a1 + 228);
    v288 = v8;
    if (v58)
    {
      v59 = (v58 * v50);
      v60 = *(a1 + 256);
      *(v60 + 48) = v296;
      *(v60 + 64) = v34;
      v61 = *(a1 + 256);
      v62 = *(a1 + 116);
      *(v61 + 24) = *(a1 + 100);
      *(v61 + 40) = v62;
      v63 = *(a1 + 256);
      CMTimeMake(&time.duration, *(a1 + 228), *(a1 + 96));
      v64 = *&time.duration.value;
      *(v63 + 16) = time.duration.epoch;
      *v63 = v64;
      v65 = 1;
    }

    else
    {
      v66 = 0;
      v59 = 0;
      OUTLINED_FUNCTION_1_152();
      v67 = 8;
      v68 = v50;
      do
      {
        v59 += *(*(a1 + 248) + v67);
        v69 = *(a1 + 256) + v66;
        *(v69 + 48) = v296;
        *(v69 + 64) = v34;
        v70 = *(a1 + 256) + v66;
        v71 = time.duration.epoch;
        *(v70 + 24) = *&time.duration.value;
        *(v70 + 40) = v71;
        v72 = *(a1 + 256) + v66;
        CMTimeMake(&lhs, *(*(a1 + 248) + v67), *(a1 + 96));
        v73 = *&lhs.value;
        *(v72 + 16) = lhs.epoch;
        *v72 = v73;
        v74 = (*(a1 + 256) + v66);
        lhs = time.duration;
        v75 = *v74;
        v334.epoch = *(v74 + 2);
        *&v334.value = v75;
        v76 = OUTLINED_FUNCTION_5_101();
        CMTimeAdd(v78, v76, v77);
        v66 += 72;
        v67 += 16;
        --v68;
      }

      while (v68);
      v65 = v50;
      v2 = MEMORY[0x1E6960C70];
    }

    v79 = *(a1 + 224);
    if (v79)
    {
      value_low = (v79 * v50);
      if (v57)
      {
        v80 = 0;
      }

      else
      {
        **(a1 + 264) = v79;
        v80 = 1;
      }
    }

    else
    {
      value_low = 0;
      v81 = *(a1 + 264);
      v82 = (*(a1 + 248) + 12);
      v83 = v50;
      do
      {
        v84 = *v82;
        v82 += 4;
        value_low += v84;
        *v81++ = v84;
        --v83;
      }

      while (v83);
      v80 = v50;
    }

    v85 = **(a1 + 280);
    DataPointer = CMBlockBufferCreateWithMemoryBlock(*(a1 + 40), 0, value_low * v85, *(a1 + 40), 0, 0, value_low * v85, 0, &theBuffer);
    if (DataPointer || (DataPointer = CMBlockBufferAssureBlockMemory(theBuffer.value)) != 0 || (DataPointer = CMBlockBufferGetDataPointer(theBuffer.value, 0, 0, 0, &dataPointerOut)) != 0)
    {
      v49 = DataPointer;
      v55 = 0;
      v59 = 0;
      v8 = v288;
      goto LABEL_132;
    }

    if (v85 >= 1)
    {
      v87 = dataPointerOut;
      v88 = 16;
      do
      {
        memcpy(v87, *(*(a1 + 280) + v88), value_low);
        v87 = &dataPointerOut[value_low];
        dataPointerOut += value_low;
        v88 += 16;
        --v85;
      }

      while (v85);
    }

    v89 = CMSampleBufferCreate(*(a1 + 40), theBuffer.value, 1u, 0, 0, *(a1 + 200), v50, v65, *(a1 + 256), v80, *(a1 + 264), &sbuf);
    v8 = v288;
    if (v89)
    {
      v49 = v89;
      v55 = 0;
      v59 = 0;
      v2 = MEMORY[0x1E6960C70];
      goto LABEL_132;
    }

    v2 = MEMORY[0x1E6960C70];
    if (*(a1 + 404))
    {
      sampleBufferOut = 0;
      value_low = CMSampleBufferGetNumSamples(sbuf.value);
      *&lhs.value = v296;
      lhs.epoch = v34;
      memset(&v334, 0, sizeof(v334));
      CMSampleBufferGetOutputDuration(&v334, sbuf.value);
      memcpy(&time, MEMORY[0x1E6960CF0], sizeof(time));
      *&dictionaryRepresentation.value = *MEMORY[0x1E6960CC0];
      dictionaryRepresentation.epoch = v286;
      v271 = *&dictionaryRepresentation.value;
      if (value_low >= 1)
      {
        v90 = 0;
        while (1)
        {
          SampleTimingInfo = CMSampleBufferGetSampleTimingInfo(sbuf.value, v90, &time);
          if (SampleTimingInfo)
          {
            break;
          }

          duration = dictionaryRepresentation;
          *&v310.value = *&time.duration.value;
          OUTLINED_FUNCTION_22_32(time.duration.epoch);
          CMTimeAdd(v94, v92, v93);
          duration = *(a1 + 380);
          v95 = OUTLINED_FUNCTION_15_46();
          if (CMTimeCompare(v95, v96) > 0)
          {
            goto LABEL_99;
          }

          OUTLINED_FUNCTION_8_62();
          duration = time.duration;
          v97 = OUTLINED_FUNCTION_15_46();
          CMTimeAdd(v99, v97, v98);
          if (value_low == ++v90)
          {
            v90 = value_low;
LABEL_99:
            value_low = v90;
            goto LABEL_101;
          }
        }

LABEL_223:
        v49 = SampleTimingInfo;
LABEL_109:
        v55 = 0;
        v59 = 0;
        goto LABEL_132;
      }

      LODWORD(v90) = 0;
      value_low = 0;
LABEL_101:
      OUTLINED_FUNCTION_8_62();
      *&duration.value = v100;
      duration.epoch = v101;
      v102 = OUTLINED_FUNCTION_15_46();
      v104 = v103;
      if (CMTimeCompare(v102, v105) < 1)
      {
        *(a1 + 380) = v271;
        *(a1 + 396) = v104;
        *(a1 + 404) = 0;
      }

      else
      {
        duration = *(a1 + 380);
        *&v310.value = *&dictionaryRepresentation.value;
        OUTLINED_FUNCTION_22_32(dictionaryRepresentation.epoch);
        CMTimeSubtract(v108, v106, v107);
        *(a1 + 380) = outputPresentationTimeStamp;
        OUTLINED_FUNCTION_8_62();
        duration = v334;
        v109 = OUTLINED_FUNCTION_15_46();
        if (!CMTimeCompare(v109, v110))
        {
          v49 = 0;
          goto LABEL_109;
        }

        v338.length = CMSampleBufferGetNumSamples(sbuf.value) - value_low;
        v338.location = value_low;
        SampleTimingInfo = CMSampleBufferCopySampleBufferForRange(*(a1 + 40), sbuf.value, v338, &sampleBufferOut);
        if (SampleTimingInfo)
        {
          goto LABEL_223;
        }

        CMSampleBufferGetOutputPresentationTimeStamp(&lhs, sbuf.value);
        outputPresentationTimeStamp = lhs;
        SampleTimingInfo = CMSampleBufferSetOutputPresentationTimeStamp(sampleBufferOut, &outputPresentationTimeStamp);
        if (SampleTimingInfo)
        {
          goto LABEL_223;
        }

        *(a1 + 380) = v271;
        *(a1 + 396) = v286;
        *(a1 + 404) = 0;
        v111 = *(a1 + 228);
        if (v111)
        {
          v59 -= (v111 * v90);
        }

        else if (v90)
        {
          v112 = v90;
          v113 = (*(a1 + 248) + 8);
          do
          {
            v114 = *v113;
            v113 += 4;
            v59 -= v114;
            --v112;
          }

          while (v112);
        }

        value_low = sbuf.value;
        sbuf.value = sampleBufferOut;
        if (sampleBufferOut)
        {
          CFRetain(sampleBufferOut);
        }

        if (value_low)
        {
          CFRelease(value_low);
        }

        if (sampleBufferOut)
        {
          CFRelease(sampleBufferOut);
        }
      }
    }

    v115 = v59 / *(a1 + 96);
    v116 = *(a1 + 468);
    *(a1 + 468) = v116 + 1;
    if (v116 < 10)
    {
      goto LABEL_123;
    }

    v117 = v115 + *(a1 + 472);
    *(a1 + 472) = v117;
    if (v117 >= 1.0)
    {
      *(a1 + 472) = v117 + -1.0;
LABEL_123:
      v118 = 1;
      goto LABEL_124;
    }

    v118 = 3;
LABEL_124:
    if (v118 <= dword_1EAF17670)
    {
      value_low = OUTLINED_FUNCTION_14_50();
      value = v334.value;
      if (os_log_type_enabled(value_low, dictionaryRepresentation.value))
      {
        v120 = value;
      }

      else
      {
        v120 = value & 0xFFFFFFFE;
      }

      if (v120)
      {
        v121 = *(a1 + 468);
        v122 = sbuf.value;
        v123 = v115;
        OUTLINED_FUNCTION_1_152();
        v124 = CMTimeGetSeconds(&time.duration);
        OUTLINED_FUNCTION_1_152();
        v125 = CMTimeGetSeconds(&time.duration);
        LODWORD(lhs.value) = v260;
        *(&lhs.value + 4) = "aqOfflineMixer_createSampleBuffer";
        LOWORD(lhs.flags) = 2048;
        *(&lhs.flags + 2) = a1;
        HIWORD(lhs.epoch) = 2082;
        v316 = v281;
        v317 = 1024;
        *v318 = v121;
        *&v318[4] = 2048;
        *&v318[6] = v122;
        *&v318[14] = 2048;
        *&v318[16] = v123;
        *&v318[24] = 2048;
        *&v318[26] = v124;
        *&v318[34] = 2048;
        *&v318[36] = v125 + v123;
        *&v318[44] = 1024;
        *&v318[46] = v50;
        *&v318[50] = 1024;
        *&v318[52] = v59;
        OUTLINED_FUNCTION_9_58();
        OUTLINED_FUNCTION_108();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_7();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v8 = v288;
    }

    v49 = 0;
    v55 = sbuf.value;
    sbuf.value = 0;
LABEL_132:
    if (theBuffer.value)
    {
      CFRelease(theBuffer.value);
    }

    if (sbuf.value)
    {
      CFRelease(sbuf.value);
    }

    v52 = 0;
    if (v49 || !v55)
    {
      goto LABEL_228;
    }

    CMTimeMake(&v306, v59, *(a1 + 96));
    OUTLINED_FUNCTION_28_28();
    v334 = v306;
    v126 = OUTLINED_FUNCTION_5_101();
    CMTimeAdd(v128, v126, v127);
    *(a1 + 100) = *&time.duration.value;
    *(a1 + 116) = time.duration.epoch;
    if (v8)
    {
      OUTLINED_FUNCTION_1_152();
      lhs.value = v321;
      lhs.timescale = v322;
      lhs.flags = v284;
      lhs.epoch = v283;
      v129 = OUTLINED_FUNCTION_17_39();
      value_low = CMTimeCompare(v129, v130);
      if (dword_1EAF17670)
      {
        v131 = OUTLINED_FUNCTION_14_50();
        v132 = v334.value;
        if (os_log_type_enabled(v131, dictionaryRepresentation.value))
        {
          v133 = v132;
        }

        else
        {
          v133 = v132 & 0xFFFFFFFE;
        }

        if (v133)
        {
          OUTLINED_FUNCTION_1_152();
          v134 = CMTimeGetSeconds(&time.duration);
          OUTLINED_FUNCTION_2_146(v135, v136, v137, v138, v139, v140, v141, v142, blockBufferOut, v246, sampleSizeArray, v248, v249, v250, v251, v252, v254, *(&v254 + 1), v256, v258, v260, *(&v260 + 1), v262, v264, v265, v266, v268, v270, v271, *(&v271 + 1), v272, allocatora, keya, v277, v278, v281, v283, v284);
          v143 = CMTimeGetSeconds(&time.duration);
          LODWORD(lhs.value) = v254;
          v144 = ">=";
          if (value_low < 0)
          {
            v144 = "<";
          }

          *(&lhs.value + 4) = "aqOfflineMixer_processUntilHighWaterMet";
          v145 = "drain completed";
          if (value_low < 0)
          {
            v145 = "continue draining";
          }

          LOWORD(lhs.flags) = 2048;
          *(&lhs.flags + 2) = a1;
          HIWORD(lhs.epoch) = 2082;
          v316 = v281;
          v317 = 2048;
          *v318 = v134;
          *&v318[8] = 2082;
          *&v318[10] = v144;
          *&v318[18] = 2048;
          *&v318[20] = v143;
          *&v318[28] = 2082;
          *&v318[30] = v145;
          LODWORD(v246) = 72;
          blockBufferOut = &lhs;
          OUTLINED_FUNCTION_108();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_7();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v8 = value_low >> 31;
    }

    else
    {
      v8 = 0;
    }

    OUTLINED_FUNCTION_24_28();
    v146 = v296;
    if (!v56)
    {
      goto LABEL_172;
    }

    if ((*(a1 + 420) & 1) == 0 || (value_low = v262, v262->value < 1))
    {
      v51 = v55;
      goto LABEL_159;
    }

    v147 = v8;
    dictionaryRepresentation.value = 0;
    *&time.duration.value = *&v262->value;
    OUTLINED_FUNCTION_18_40(v262->epoch);
    v148 = OUTLINED_FUNCTION_17_39();
    CMTimeMinimum(v150, v148, v149);
    lhs = *v262;
    v334 = v305;
    v151 = OUTLINED_FUNCTION_5_101();
    CMTimeSubtract(v153, v151, v152);
    OUTLINED_FUNCTION_25_30();
    CMSampleBufferGetNumSamples(v55);
    OUTLINED_FUNCTION_30_25();
    CMSampleBufferGetOutputDuration(v154, v55);
    v155 = *(a1 + 208);
    lhs = v305;
    CMTimeConvertScale(&v300, &lhs, v155, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
    value_low = v300.value;
    NumSamples = CMSampleBufferGetNumSamples(v55);
    v157 = NumSamples - value_low;
    if (NumSamples != value_low)
    {
      v164 = CFGetAllocator(v55);
      v339.location = value_low;
      v339.length = v157;
      v49 = CMSampleBufferCopySampleBufferForRange(v164, v55, v339, &dictionaryRepresentation);
      v8 = v147;
      if (v49)
      {
        goto LABEL_164;
      }

      v51 = dictionaryRepresentation.value;
      if (dictionaryRepresentation.value)
      {
        CFRetain(dictionaryRepresentation.value);
      }

      CFRelease(v55);
      if (dictionaryRepresentation.value)
      {
        CFRelease(dictionaryRepresentation.value);
      }

      v146 = v296;
LABEL_159:
      if (*(a1 + 444))
      {
        OUTLINED_FUNCTION_30_25();
        CMSampleBufferGetOutputPresentationTimeStamp(v158, v51);
        memset(&lhs, 0, sizeof(lhs));
        CMSampleBufferGetPresentationTimeStamp(&lhs, v51);
        memset(&v334, 0, sizeof(v334));
        CMTimeMake(&v334, *(a1 + 228), *(a1 + 96));
        CMSampleBufferGetPresentationTimeStamp(&outputPresentationTimeStamp, v51);
        duration = *v277;
        v159 = OUTLINED_FUNCTION_15_46();
        CMTimeSubtract(v161, v159, v160);
        rhs.presentationTimeStamp = dictionaryRepresentation;
        *&rhs.decodeTimeStamp.value = v296;
        rhs.decodeTimeStamp.epoch = v34;
        rhs.duration = v334;
        dictionaryRepresentation.value = 0;
        v162 = CFGetAllocator(v51);
        v163 = CMSampleBufferCreateCopyWithNewTiming(v162, v51, 1, &rhs, &dictionaryRepresentation);
        if (v163)
        {
          v49 = v163;
          v52 = 0;
          goto LABEL_61;
        }

        v55 = dictionaryRepresentation.value;
        if (dictionaryRepresentation.value)
        {
          CFRetain(dictionaryRepresentation.value);
        }

        if (v51)
        {
          CFRelease(v51);
        }

        if (dictionaryRepresentation.value)
        {
          CFRelease(dictionaryRepresentation.value);
        }

        CMSampleBufferGetOutputSampleTimingInfoArray(v55, 1, &rhs, &timingArrayEntriesNeededOut);
        v146 = v296;
      }

      else
      {
        v55 = v51;
      }

LABEL_172:
      v289 = v8;
      if ((*(a1 + 420) & 1) != 0 && v262->value || (value_low = a1 + 340, *(a1 + 380) < 1))
      {
        v52 = 0;
      }

      else
      {
        *&time.duration.value = *(a1 + 380);
        OUTLINED_FUNCTION_18_40(*(a1 + 396));
        v165 = OUTLINED_FUNCTION_17_39();
        CMTimeMinimum(v167, v165, v166);
        lhs = *(a1 + 380);
        v334 = v304;
        v168 = OUTLINED_FUNCTION_5_101();
        CMTimeSubtract(v170, v168, v169);
        *(a1 + 380) = *&time.duration.value;
        *(a1 + 396) = time.duration.epoch;
        *&time.duration.value = *&v304.value;
        OUTLINED_FUNCTION_11_59(v304.epoch);
        v52 = CMTimeCopyAsDictionary(v171, allocatora);
        if (!v52)
        {
          OUTLINED_FUNCTION_3_122();
          v49 = FigSignalErrorAtGM();
LABEL_228:
          v51 = v55;
LABEL_61:
          v55 = v51;
          if (!v51)
          {
            goto LABEL_63;
          }

          goto LABEL_62;
        }

        CMSetAttachment(v55, keya, v52, 1u);
        v146 = v296;
      }

      *&time.duration.value = v146;
      time.duration.epoch = v34;
      *&lhs.value = v146;
      lhs.epoch = v34;
      v334.epoch = v34;
      dataPointerOut = v266;
      timescale = HIDWORD(v265);
      *&v334.value = v146;
      *&dictionaryRepresentation.value = v146;
      dictionaryRepresentation.epoch = v34;
      v326 = v266;
      v327 = HIDWORD(v265);
      v313 = 0;
      FigSimpleMutexLock();
      v324 = *(a1 + 172);
      v172 = *(a1 + 184);
      v325 = *(a1 + 180);
      v173 = *(a1 + 188);
      FigSimpleMutexUnlock();
      if ((v172 & 0x1D) != 1)
      {
        goto LABEL_203;
      }

      if (!v55)
      {
        OUTLINED_FUNCTION_3_122();
        FigSignalErrorAtGM();
        v51 = v313;
        goto LABEL_205;
      }

      CMSampleBufferGetDuration(&outputPresentationTimeStamp, v55);
      OUTLINED_FUNCTION_29();
      if (!v56 || (CMSampleBufferGetPresentationTimeStamp(&duration, v55), OUTLINED_FUNCTION_29(), !v56) || (CMSampleBufferGetOutputPresentationTimeStamp(&time.duration, v55), CMSampleBufferGetDuration(&v310, v55), dataPointerOut = v310.value, value_low = v310.flags, timescale = v310.timescale, v174 = v310.epoch, CMSampleBufferGetOutputDuration(&v334, v55), *&v310.value = *&time.duration.value, OUTLINED_FUNCTION_16_44(time.duration.epoch), v175 = OUTLINED_FUNCTION_20_33(), CMTimeAdd(v177, v175, v176), OUTLINED_FUNCTION_19_38(), v310.epoch = v173, theBuffer = lhs, v178 = OUTLINED_FUNCTION_20_33(), (CMTimeCompare(v178, v179) & 0x80000000) == 0) || (v180 = CFGetAllocator(v55), CMSampleBufferCreateCopy(v180, v55, &v313)))
      {
LABEL_203:
        v51 = v313;
        if (v313)
        {
          v8 = v289;
          if (v55)
          {
            CFRelease(v55);
          }

          goto LABEL_208;
        }

        v51 = v55;
LABEL_205:
        v8 = v289;
LABEL_208:
        v200 = *(*(OUTLINED_FUNCTION_35_21() + 16) + 8);
        if (v200)
        {
          v200(value_low, v51);
        }

        ++*(a1 + 476);
        CMSampleBufferGetPresentationTimeStamp(&v299, v51);
        if (v299.flags)
        {
          CMSampleBufferGetDuration(&v298, v51);
          if (v298.flags)
          {
            if ((*(a1 + 492) & 1) == 0)
            {
              CMSampleBufferGetPresentationTimeStamp(&time.duration, v51);
              *(a1 + 480) = *&time.duration.value;
              *(a1 + 496) = time.duration.epoch;
            }

            CMSampleBufferGetPresentationTimeStamp(&lhs, v51);
            CMSampleBufferGetDuration(&v334, v51);
            v201 = OUTLINED_FUNCTION_5_101();
            CMTimeAdd(v203, v201, v202);
            *v270 = *&time.duration.value;
            *(v270 + 16) = time.duration.epoch;
            CMSampleBufferGetDuration(&lhs, v51);
            value_low = v268;
            v334 = *v268;
            CMTimeAdd(&time.duration, &v334, &lhs);
            OUTLINED_FUNCTION_25_30();
          }
        }

        *(a1 + 350) = 1;
        *&time.duration.value = *(a1 + 148);
        time.duration.epoch = *(a1 + 164);
        OUTLINED_FUNCTION_28_28();
        if (aqOfflineMixer_passedTimelineMilestone(a1, &time, &lhs))
        {
          aqOfflineMixer_postMilestoneNotification(a1);
        }

        goto LABEL_54;
      }

      v251 = v174;
      v181 = CMGetAttachment(v55, keya, 0);
      CMTimeMakeFromDictionary(&v310, v181);
      sampleBufferOut = v310.value;
      v182 = v310.flags;
      v333 = v310.timescale;
      if (v310.flags)
      {
        v183 = v310.epoch;
      }

      else
      {
        sampleBufferOut = *MEMORY[0x1E6960CC0];
        v333 = *(MEMORY[0x1E6960CC0] + 8);
        v182 = v258;
        v183 = v286;
      }

      v297 = v173;
      LODWORD(v271) = value_low;
      v184 = CMGetAttachment(v55, v264, 0);
      CMTimeMakeFromDictionary(&v310, v184);
      v330 = v310.value;
      v185 = v310.flags;
      v331 = v310.timescale;
      if (v310.flags)
      {
        v250 = v310.epoch;
        value_low = MEMORY[0x1E6960CC0];
        v186 = v286;
      }

      else
      {
        value_low = MEMORY[0x1E6960CC0];
        v330 = *MEMORY[0x1E6960CC0];
        v331 = *(MEMORY[0x1E6960CC0] + 8);
        v185 = v258;
        v186 = v286;
        v250 = v286;
      }

      OUTLINED_FUNCTION_19_38();
      v310.epoch = v297;
      theBuffer = time.duration;
      v187 = OUTLINED_FUNCTION_20_33();
      CMTimeSubtract(v189, v187, v188);
      theBuffer = dictionaryRepresentation;
      sbuf.value = sampleBufferOut;
      *&sbuf.timescale = __PAIR64__(v182, v333);
      sbuf.epoch = v183;
      OUTLINED_FUNCTION_21_33();
      dictionaryRepresentation = v310;
      *&theBuffer.value = *value_low;
      theBuffer.epoch = v186;
      v190 = OUTLINED_FUNCTION_20_33();
      if (CMTimeCompare(v190, v191) > 0)
      {
        *&v310.value = *&dictionaryRepresentation.value;
        OUTLINED_FUNCTION_16_44(dictionaryRepresentation.epoch);
        v195 = OUTLINED_FUNCTION_20_33();
        v197 = CMTimeCompare(v195, v196);
        v2 = MEMORY[0x1E6960C70];
        value_low = v271;
        if (v197 < 1)
        {
          theBuffer.value = v324;
          *&theBuffer.timescale = __PAIR64__(v172, v325);
          theBuffer.epoch = v297;
          sbuf = time.duration;
          OUTLINED_FUNCTION_21_33();
          v328 = v310.value;
          v329 = v310.timescale;
          theBuffer.value = dataPointerOut;
          *&theBuffer.timescale = __PAIR64__(v271, timescale);
          theBuffer.epoch = v251;
          sbuf = v310;
          OUTLINED_FUNCTION_21_33();
          v328 = v310.value;
          v185 = v310.flags;
          v329 = v310.timescale;
          v192 = v310.epoch;
          v193 = HIDWORD(v258);
          v194 = v34;
        }

        else
        {
          v328 = v330;
          v329 = v331;
          v193 = HIDWORD(v258);
          v194 = v34;
          v192 = v250;
        }
      }

      else
      {
        v328 = v266;
        v329 = HIDWORD(v265);
        v326 = dataPointerOut;
        v327 = timescale;
        v185 = HIDWORD(v258);
        v192 = v34;
        v2 = MEMORY[0x1E6960C70];
        v193 = v271;
        v194 = v251;
      }

      if ((v193 & 0x1D) == 1)
      {
        v310.value = v326;
        v310.timescale = v327;
        v310.flags = v193;
        v310.epoch = v194;
        v198 = CMTimeCopyAsDictionary(&v310, allocatora);
        if (!v198)
        {
          goto LABEL_229;
        }

        value_low = v198;
        CMSetAttachment(v313, keya, v198, 1u);
        CFRelease(value_low);
      }

      if ((v185 & 0x1D) != 1)
      {
        CMRemoveAttachment(v313, v264);
        goto LABEL_203;
      }

      v310.value = v328;
      v310.timescale = v329;
      v310.flags = v185;
      v310.epoch = v192;
      v199 = CMTimeCopyAsDictionary(&v310, allocatora);
      if (v199)
      {
        value_low = v199;
        CMSetAttachment(v313, v264, v199, 1u);
        CFRelease(value_low);
        goto LABEL_203;
      }

LABEL_229:
      OUTLINED_FUNCTION_3_122();
      FigSignalErrorAtGM();
      goto LABEL_203;
    }

    v49 = 0;
    v8 = v147;
LABEL_164:
    v52 = 0;
LABEL_62:
    CFRelease(v55);
LABEL_63:
    if (v52)
    {
      CFRelease(v52);
    }

LABEL_65:
    if (!v307)
    {
      break;
    }

    if (v49)
    {
      FigSimpleMutexUnlock();
      FigSimpleMutexLock();
    }
  }

  if (!v49)
  {
    v204 = *(a1 + 320) != 0;
    goto LABEL_234;
  }

LABEL_233:
  v204 = 1;
LABEL_234:
  if (dword_1EAF17670)
  {
    v290 = v8;
    v205 = OUTLINED_FUNCTION_6_88();
    v206 = rhs.duration.value;
    if (os_log_type_enabled(v205, v334.value))
    {
      v207 = v206;
    }

    else
    {
      v207 = v206 & 0xFFFFFFFE;
    }

    if (v207)
    {
      if (a1)
      {
        v208 = v281;
      }

      else
      {
        v208 = "";
      }

      v209 = *(a1 + 75);
      v210 = *(a1 + 321);
      v211 = *(a1 + 32);
      v212 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      v294 = v210;
      if (v212)
      {
        v291 = v212(v211);
      }

      else
      {
        v291 = 0;
      }

      v213 = *(a1 + 32);
      v214 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      v215 = v208;
      v216 = v209;
      if (v214)
      {
        v217 = v214(v213);
      }

      else
      {
        v217 = 0;
      }

      v218 = *(a1 + 322);
      v219 = *(a1 + 74);
      *&time.duration.value = *&v268->value;
      OUTLINED_FUNCTION_11_59(v268->epoch);
      v221 = CMTimeGetSeconds(v220);
      *&time.duration.value = *(a1 + 480);
      OUTLINED_FUNCTION_11_59(*(a1 + 496));
      v223 = CMTimeGetSeconds(v222);
      *&time.duration.value = *v270;
      OUTLINED_FUNCTION_11_59(*(v270 + 16));
      v225 = CMTimeGetSeconds(v224);
      v226 = *(a1 + 476);
      LODWORD(lhs.value) = 136318466;
      *(&lhs.value + 4) = "aqOfflineMixer_processUntilHighWaterMet";
      LOWORD(lhs.flags) = 2048;
      *(&lhs.flags + 2) = a1;
      HIWORD(lhs.epoch) = 2082;
      v316 = v215;
      v317 = 1024;
      *v318 = v216;
      *&v318[4] = 1024;
      *&v318[6] = v294;
      *&v318[10] = 1024;
      *&v318[12] = v291;
      *&v318[16] = 1024;
      *&v318[18] = v217;
      *&v318[22] = 1024;
      *&v318[24] = v218;
      *&v318[28] = 1024;
      *&v318[30] = v219;
      *&v318[34] = 1024;
      *&v318[36] = v290;
      *&v318[40] = 2048;
      *&v318[42] = v221;
      *&v318[50] = 2048;
      *&v318[52] = v223;
      *&v318[60] = 2048;
      *&v318[62] = v225;
      v319 = 1024;
      v320 = v226;
      OUTLINED_FUNCTION_9_58();
      OUTLINED_FUNCTION_108();
      _os_log_send_and_compose_impl();
      v2 = MEMORY[0x1E6960C70];
    }

    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    LOBYTE(v8) = v290;
  }

  FigSimpleMutexUnlock();
  v227 = FigSimpleMutexLock();
  if (v285 == 1 && !v8)
  {
    OUTLINED_FUNCTION_2_146(v227, v228, v229, v230, v231, v232, v233, v234, blockBufferOut, v246, sampleSizeArray, v248, v249, v250, v251, v252, v254, *(&v254 + 1), v256, v258, v260, *(&v260 + 1), v262, v264, v265, v266, v268, v270, v271, *(&v271 + 1), v272, allocatora, keya, v277, v278, v281, v283, v284);
    OUTLINED_FUNCTION_26_31(v279);
    v235 = OUTLINED_FUNCTION_17_39();
    if (!CMTimeCompare(v235, v236))
    {
      *v279 = *v2;
      v279[1].n128_u64[0] = v34;
      if (dword_1EAF17670)
      {
        v237 = OUTLINED_FUNCTION_6_88();
        v238 = rhs.duration.value;
        if (os_log_type_enabled(v237, v334.value))
        {
          v239 = v238;
        }

        else
        {
          v239 = v238 & 0xFFFFFFFE;
        }

        if (v239)
        {
          LODWORD(lhs.value) = 136315650;
          *(&lhs.value + 4) = "aqOfflineMixer_processUntilHighWaterMet";
          LOWORD(lhs.flags) = 2048;
          *(&lhs.flags + 2) = a1;
          HIWORD(lhs.epoch) = 2082;
          v316 = v282;
          OUTLINED_FUNCTION_9_58();
          OUTLINED_FUNCTION_108();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_7();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }
  }

  result = FigSimpleMutexUnlock();
  if (!v204)
  {
    FigSimpleMutexLock();
    if (*(a1 + 16))
    {
      return FigSimpleMutexUnlock();
    }

    v241 = *(a1 + 312);
    if (v241 && CFArrayGetCount(v241))
    {
      return FigSimpleMutexUnlock();
    }

    else
    {
      v242 = *(a1 + 296);
      if (v242)
      {
        v243.length = CFArrayGetCount(v242);
        v244 = *(a1 + 296);
      }

      else
      {
        v244 = 0;
        v243.length = 0;
      }

      v243.location = 0;
      CFArrayAppendArray(*(a1 + 312), v244, v243);
      FigSimpleMutexUnlock();
      CMNotificationCenterGetDefaultLocalCenter();
      return CMNotificationCenterPostNotification();
    }
  }

  return result;
}

BOOL aqOfflineMixer_passedTimelineMilestone(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = **&MEMORY[0x1E6960CC0];
  v7 = v8;
  if ((*(a2 + 12) & 1) == 0 || (*(a3 + 12) & 1) == 0)
  {
    return 0;
  }

  lhs = *a3;
  v5 = *a2;
  CMTimeSubtract(&v8, &lhs, &v5);
  CMTimeMake(&v7, *(a1 + 352), 1000);
  lhs = v8;
  v5 = v7;
  return CMTimeCompare(&lhs, &v5) >= 0;
}

uint64_t FigAudioQueueOfflineMixerConnectAudioQueue(uint64_t a1, const void *a2)
{
  FigSimpleMutexLock();
  if (*(a1 + 16))
  {
    OUTLINED_FUNCTION_243();
    v5 = FigSignalErrorAtGM();
    goto LABEL_13;
  }

  v5 = AQOfflineMixerConnectAudioQueue();
  if (v5)
  {
LABEL_13:
    v15 = v5;
    goto LABEL_11;
  }

  CFArrayAppendValue(*(a1 + 296), a2);
  CFArrayAppendValue(*(a1 + 304), a2);
  *(a1 + 321) = 0;
  if (dword_1EAF17670)
  {
    v6 = OUTLINED_FUNCTION_13_42();
    if (OUTLINED_FUNCTION_304(v6, v7, v8, v9, v10, v11, v12, v13, v17, v18, v19, v20, SBYTE2(v20), BYTE3(v20), SHIDWORD(v20)))
    {
      v14 = v2;
    }

    else
    {
      v14 = v2 & 0xFFFFFFFE;
    }

    if (v14)
    {
      CFArrayGetCount(*(a1 + 296));
      OUTLINED_FUNCTION_4_117();
      OUTLINED_FUNCTION_108();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListeners();
  v15 = 0;
LABEL_11:
  FigSimpleMutexUnlock();
  return v15;
}

uint64_t FigAudioQueueOfflineMixerDisconnectAudioQueue(uint64_t a1, const void *a2)
{
  FigSimpleMutexLock();
  if (*(a1 + 16) || (v5 = *(a1 + 296), v32.length = CFArrayGetCount(v5), v32.location = 0, FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v5, v32, a2), FirstIndexOfValue == -1))
  {
    OUTLINED_FUNCTION_243();
    v8 = FigSignalErrorAtGM();
    goto LABEL_11;
  }

  v7 = FirstIndexOfValue;
  v8 = AQOfflineMixerDisconnectAudioQueue();
  if (v8)
  {
LABEL_11:
    v18 = v8;
    goto LABEL_20;
  }

  CFArrayRemoveValueAtIndex(*(a1 + 296), v7);
  if (dword_1EAF17670)
  {
    v9 = OUTLINED_FUNCTION_13_42();
    if (OUTLINED_FUNCTION_304(v9, v10, v11, v12, v13, v14, v15, v16, v28, v29, v30, v31, SBYTE2(v31), BYTE3(v31), SHIDWORD(v31)))
    {
      v17 = v2;
    }

    else
    {
      v17 = v2 & 0xFFFFFFFE;
    }

    if (v17)
    {
      CFArrayGetCount(*(a1 + 296));
      OUTLINED_FUNCTION_4_117();
      OUTLINED_FUNCTION_108();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  CFArrayGetCount(*(a1 + 296));
  v19 = OUTLINED_FUNCTION_10_56();
  if (!CFArrayContainsValue(v19, v33, v20))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListeners();
  }

  CFArrayGetCount(*(a1 + 304));
  v21 = OUTLINED_FUNCTION_10_56();
  v23 = CFArrayGetFirstIndexOfValue(v21, v34, v22);
  if (v23 != -1)
  {
    CFArrayRemoveValueAtIndex(*(a1 + 304), v23);
    *(a1 + 321) = CFArrayGetCount(*(a1 + 304)) == 0;
  }

  CFArrayGetCount(*(a1 + 312));
  v24 = OUTLINED_FUNCTION_10_56();
  v26 = CFArrayGetFirstIndexOfValue(v24, v35, v25);
  if (v26 != -1)
  {
    CFArrayRemoveValueAtIndex(*(a1 + 312), v26);
  }

  v18 = 0;
LABEL_20:
  FigSimpleMutexUnlock();
  return v18;
}

uint64_t FigAudioQueueOfflineMixerStartRenderingForTimeRange(uint64_t a1, uint64_t a2, CMTime *a3)
{
  v47 = *MEMORY[0x1E69E9840];
  value = 0;
  FigSimpleMutexLock();
  if (*(a1 + 16) || (OUTLINED_FUNCTION_29(), !v5))
  {
    OUTLINED_FUNCTION_303();
LABEL_17:
    v26 = FigSignalErrorAtGM();
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_33_25();
  OUTLINED_FUNCTION_3_51();
  if (CMTimeCompare(&time1, &time2) <= 0)
  {
    OUTLINED_FUNCTION_303();
    goto LABEL_17;
  }

  if (dword_1EAF17670)
  {
    LODWORD(rhs.value) = 0;
    HIBYTE(v38) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  OUTLINED_FUNCTION_3_51();
  v8 = CMTimeConvertScale(&time1, &time2, v7, kCMTimeRoundingMethod_RoundTowardZero);
  OUTLINED_FUNCTION_29_26(v8, v9, v10, v11, v12, v13, v14, v15, v29, v31, v33, v35.value, *&v35.timescale, v35.epoch, rhs.value, *&rhs.timescale, rhs.epoch, v37, v38, value, time2.value, *&time2.timescale, time2.epoch, v41, v42, v43, v44, v45, time1.value, *&time1.timescale, time1.epoch);
  v16 = *(a1 + 96);
  time2 = *a3;
  CMTimeConvertScale(&time1, &time2, v16, kCMTimeRoundingMethod_RoundAwayFromZero);
  *(a1 + 124) = time1;
  *(a1 + 322) = 0;
  if (!*(a1 + 404) && *(a1 + 380) >= 1)
  {
    time2 = *(a1 + 100);
    rhs = *(a1 + 380);
    v17 = CMTimeSubtract(&time1, &time2, &rhs);
    OUTLINED_FUNCTION_29_26(v17, v18, v19, v20, v21, v22, v23, v24, v30, v32, v34, v35.value, *&v35.timescale, v35.epoch, rhs.value, *&rhs.timescale, rhs.epoch, v37, v38, value, time2.value, *&time2.timescale, time2.epoch, v41, v42, v43, v44, v45, time1.value, *&time1.timescale, time1.epoch);
  }

  OUTLINED_FUNCTION_29();
  if (!v5)
  {
    OUTLINED_FUNCTION_303();
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_32_26();
  CMTimeConvertScale(&v35, &time1, v25, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
  value = v35.value;
  v26 = AQOfflineMixerSetProperty();
  if (!v26)
  {
    v26 = FigAudioQueueOfflineMixerGo(a1);
  }

LABEL_14:
  v27 = v26;
  FigSimpleMutexUnlock();
  return v27;
}

uint64_t FigAudioQueueOfflineMixerReset(uint64_t a1, uint64_t a2, char a3)
{
  if (dword_1EAF17670)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  FigSimpleMutexLock();
  if (*(a1 + 16))
  {
    OUTLINED_FUNCTION_243();
    v7 = FigSignalErrorAtGM();
    goto LABEL_17;
  }

  v7 = AQOfflineMixerReset();
  if (v7)
  {
    goto LABEL_17;
  }

  *(a1 + 380) = *(a1 + 356);
  *(a1 + 396) = *(a1 + 372);
  v8 = MEMORY[0x1E6960C70];
  v9 = *MEMORY[0x1E6960C70];
  *(a1 + 432) = *MEMORY[0x1E6960C70];
  v10 = *(v8 + 16);
  *(a1 + 448) = v10;
  v20 = v9;
  *(a1 + 408) = v9;
  *(a1 + 424) = v10;
  *(a1 + 404) = a3;
  v11 = *(a1 + 296);
  if (v11)
  {
    Count = CFArrayGetCount(v11);
    if (Count >= 1)
    {
      v13 = Count;
      for (i = 0; i != v13; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 296), i);
        FigAudioQueueRestoreParameters(ValueAtIndex);
      }
    }
  }

  if (!a2)
  {
    goto LABEL_13;
  }

  v16 = *(*(OUTLINED_FUNCTION_35_21() + 16) + 72);
  if (!v16)
  {
    v18 = 4294954514;
    goto LABEL_15;
  }

  v7 = v16(a2);
  if (v7)
  {
LABEL_17:
    v18 = v7;
    goto LABEL_15;
  }

  *(a1 + 476) = 0;
  *(a1 + 480) = v20;
  *(a1 + 496) = v10;
  *(a1 + 504) = v20;
  *(a1 + 520) = v10;
  v17 = MEMORY[0x1E6960CC0];
  *(a1 + 528) = *MEMORY[0x1E6960CC0];
  *(a1 + 544) = *(v17 + 16);
LABEL_13:
  v18 = 0;
  *(a1 + 320) = 0;
  *(a1 + 75) = 0;
  *(a1 + 348) = 0;
  *(a1 + 322) = 0;
  *(a1 + 100) = v20;
  *(a1 + 116) = v10;
  *(a1 + 124) = v20;
  *(a1 + 140) = v10;
  *(a1 + 148) = v20;
  *(a1 + 164) = v10;
  *(a1 + 188) = v10;
  *(a1 + 172) = v20;
  *(a1 + 321) = 0;
LABEL_15:
  FigSimpleMutexUnlock();
  FigSimpleMutexUnlock();
  return v18;
}

uint64_t FigAudioQueueOfflineMixerStop_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAudioQueueOfflineMixerWaitUntilCompletelyStopped_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAudioQueueOfflineMixerCreate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAudioQueueOfflineMixerCreate_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAudioQueueOfflineMixerCreate_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAudioQueueOfflineMixerCreate_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAudioQueueOfflineMixerCreate_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAudioQueueOfflineMixerCreate_cold_6(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAudioQueueOfflineMixerCreate_cold_7(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAudioQueueOfflineMixerCreate_cold_8(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAudioQueueOfflineMixerCreate_cold_9(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAudioQueueOfflineMixerCreate_cold_10(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAudioQueueOfflineMixerCreate_cold_11(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAudioQueueOfflineMixerCopyProperty_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAudioQueueOfflineMixerSetProperty_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAudioQueueOfflineMixerGo_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAudioQueueOfflineMixerStartDrainingSampleBuffersUntilTime_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAudioQueueOfflineMixerStartDrainingSampleBuffersUntilTime_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAudioQueueOfflineMixerInterruptAndStop_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAudioQueueOfflineMixerInterruptAndStop_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCoreAnimationRendererCreate_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCoreAnimationRendererCreate_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCoreAnimationRendererCreate_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCoreAnimationRendererCreate_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCoreAnimationRendererCreate_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCoreAnimationRendererCreate_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCoreAnimationRendererCreate_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCoreAnimationRendererCreate_cold_8(_DWORD *a1)
{
  [MEMORY[0x1E6979518] commit];
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCoreAnimationRendererCreate_cold_9(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t FigCoreAnimationRendererCreate_cold_10(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCoreAnimationRendererCreate_cold_11(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCoreAnimationRendererCreate_cold_12(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCoreAnimationRendererCreate_cold_13(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fcar_ensureBufferAttributesCompatibleWithHWProcessing_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCoreAnimationRendererCopyPixelBufferAtTime_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

BOOL FigCoreAnimationRendererCopyPixelBufferAtTime_cold_2(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  v3 = FigSignalErrorAtGM();
  *a2 = v3;
  return v3 == 0;
}

uint64_t FigCoreAnimationRendererCopyPixelBufferAtTime_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCoreAnimationRendererCopyPixelBufferAtTime_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCoreAnimationRendererCopyPixelBufferAtTime_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigRemote_CreatePixelBufferAndPoolAttributesDictionary_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigRemote_CreatePixelBufferAndPoolAttributesDictionary_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigRemote_CopyPixelBufferAndPoolAttributesFromDictionary_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigRemote_CopyPixelBufferAndPoolAttributesFromDictionary_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigRemote_CopyPixelBufferAndPoolAttributesFromDictionary_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigFairPlaySharedContextLoad(const void *a1, CFTypeRef cf, const __CFDictionary *a3)
{
  if (_MergedGlobals_104 == -1)
  {
    if (cf)
    {
LABEL_3:
      v6 = CFRetain(cf);
      goto LABEL_6;
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_163(&_MergedGlobals_104);
    if (cf)
    {
      goto LABEL_3;
    }
  }

  v6 = FigFairPlayCopyDefaultKeybagFolderURL();
LABEL_6:
  v7 = v6;
  if (!v6)
  {
    return 4294955146;
  }

  FigSimpleMutexLock();
  v8 = FigFairPlayCopyAbsolutePathFromURL(v7);
  if (!CFDictionaryContainsKey(qword_1ED4CB6A0, v8))
  {
    MEMORY[0x19A8D3660](&FigFairPlaySharedContextGetClassID_sRegisterFigFairPlaySharedContextTypeOnce, RegisterFigFairPlaySharedContextType);
    v9 = CMDerivedObjectCreate();
    if (v9)
    {
      goto LABEL_32;
    }

    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (a1)
    {
      v11 = CFRetain(a1);
    }

    else
    {
      v11 = 0;
    }

    *DerivedStorage = v11;
    *(DerivedStorage + 8) = FigSimpleMutexCreate();
    *(DerivedStorage + 16) = CFSetCreateMutable(a1, 0, 0);
    if (v8)
    {
      v12 = CFRetain(v8);
    }

    else
    {
      v12 = 0;
    }

    *(DerivedStorage + 24) = v12;
    *(DerivedStorage + 32) = dispatch_queue_create("FigFPSharedContextFPInitializationQueue", 0);
    if (a3)
    {
      Value = CFDictionaryGetValue(a3, @"InitializeForInspection");
      v16 = Value && (v14 = Value, v15 = CFGetTypeID(Value), v15 == CFBooleanGetTypeID()) && CFBooleanGetValue(v14) != 0;
      v17 = CFDictionaryGetValue(a3, @"InitializeForAudioPlayback");
      if (v17)
      {
        v18 = v17;
        v19 = CFGetTypeID(v17);
        if (v19 == CFBooleanGetTypeID())
        {
          if (CFBooleanGetValue(v18))
          {
            v16 = 1;
          }
        }
      }

      v20 = CFDictionaryGetValue(a3, @"InitializeForVideoPlayback");
      if (v20)
      {
        v21 = v20;
        v22 = CFGetTypeID(v20);
        if (v22 == CFBooleanGetTypeID())
        {
          if (!(CFBooleanGetValue(v21) | v16))
          {
            goto LABEL_31;
          }

          goto LABEL_30;
        }
      }

      if (v16)
      {
LABEL_30:
        dispatch_async_f(*(DerivedStorage + 32), 0, FigFairPlaySharedContextLoad_EnsureFairPlayContext);
      }
    }

LABEL_31:
    CFDictionaryAddValue(qword_1ED4CB6A0, v8, 0);
    goto LABEL_32;
  }

  v9 = 0;
LABEL_32:
  if (v8)
  {
    CFRelease(v8);
  }

  FigSimpleMutexUnlock();
  CFRelease(v7);
  return v9;
}

uint64_t FigFairPlaySharedContextUnload(CFTypeRef cf)
{
  if (_MergedGlobals_104 == -1)
  {
    if (cf)
    {
LABEL_3:
      v2 = CFRetain(cf);
      goto LABEL_6;
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_163(&_MergedGlobals_104);
    if (cf)
    {
      goto LABEL_3;
    }
  }

  v2 = FigFairPlayCopyDefaultKeybagFolderURL();
LABEL_6:
  v3 = v2;
  if (!v2)
  {
    return 4294955146;
  }

  FigSimpleMutexLock();
  v4 = FigFairPlayCopyAbsolutePathFromURL(v3);
  Value = CFDictionaryGetValue(qword_1ED4CB6A0, v4);
  if (Value)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    Count = CFSetGetCount(*(DerivedStorage + 16));
    FigSimpleMutexUnlock();
    if (Count <= 0)
    {
      v8 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v8)
      {
        Value = v8(Value);
        if (!Value)
        {
          CFDictionaryRemoveValue(qword_1ED4CB6A0, v4);
        }
      }

      else
      {
        Value = 4294954514;
      }
    }

    else
    {
      Value = 4294955138;
    }
  }

  if (v4)
  {
    CFRelease(v4);
  }

  FigSimpleMutexUnlock();
  CFRelease(v3);
  return Value;
}

uint64_t FigFairPlaySharedContextCopyForKeybagURLAndClient(const void *a1, const void *a2, const void *a3, void *a4)
{
  v4 = 4294955146;
  if (a2 && a3 && a4)
  {
    v8 = FigFairPlaySharedContextLoad(a1, a2, 0);
    if (v8)
    {
      return v8;
    }

    FigSimpleMutexLock();
    v9 = FigFairPlayCopyAbsolutePathFromURL(a2);
    Value = CFDictionaryGetValue(qword_1ED4CB6A0, v9);
    if (Value)
    {
      v11 = Value;
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      FigSimpleMutexLock();
      CFSetAddValue(*(DerivedStorage + 16), a3);
      FigSimpleMutexUnlock();
      v13 = CFRetain(v11);
      v4 = 0;
      *a4 = v13;
      if (!v9)
      {
LABEL_8:
        FigSimpleMutexUnlock();
        return v4;
      }
    }

    else
    {
      v4 = 4294955138;
      if (!v9)
      {
        goto LABEL_8;
      }
    }

    CFRelease(v9);
    goto LABEL_8;
  }

  return v4;
}

uint64_t FigFairPlaySharedContextCopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = 4294955146;
  if (a4 && a2 && DerivedStorage)
  {
    if (CFEqual(a2, @"3721370B-B25B-4EED-A8C8-F27CAA873C75"))
    {
      dispatch_sync_f(*(DerivedStorage + 32), DerivedStorage, EnsureFairPlayContext);
      v8 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, (DerivedStorage + 44));
    }

    else
    {
      if (!CFEqual(a2, @"ED1C2894-E22E-4BCB-9D7F-BE48EF1B699E"))
      {
        return 4294955144;
      }

      v8 = CFRetain(*(DerivedStorage + 24));
    }

    v9 = v8;
    result = 0;
    *a4 = v9;
  }

  return result;
}