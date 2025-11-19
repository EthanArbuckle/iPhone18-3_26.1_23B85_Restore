uint64_t VMC2SetProperty(uint64_t a1, const void *a2, const __CFBoolean *a3)
{
  if (!a2)
  {
    return 4294954473;
  }

  if (*(a1 + 16))
  {
    goto LABEL_35;
  }

  v4 = a3;
  if (!CFEqual(@"ObeyEmptyMediaMarkers", a2))
  {
    if (CFEqual(@"RenderEmptyMedia", a2))
    {
      if (v4)
      {
        TypeID = CFBooleanGetTypeID();
        if (TypeID == CFGetTypeID(v4))
        {
          Value = CFBooleanGetValue(v4);
          v4 = 0;
          *(a1 + 729) = Value;
          return v4;
        }
      }

      goto LABEL_35;
    }

    if (CFEqual(@"ClientPID", a2))
    {
      if (!v4)
      {
        goto LABEL_35;
      }

      v11 = CFNumberGetTypeID();
      if (v11 != CFGetTypeID(v4))
      {
        goto LABEL_35;
      }

      CFNumberGetValue(v4, kCFNumberSInt32Type, (a1 + 840));
      v12 = *(a1 + 264);
      if (v12)
      {
        FigBaseObject = FigActivitySchedulerGetFigBaseObject(v12);
        CMBaseObjectSetProperty(FigBaseObject, @"ClientPID", v4);
      }

      FigSimpleMutexLock();
      v14 = *(a1 + 64);
      if (!v14)
      {
        goto LABEL_33;
      }

      v15 = MEMORY[0x1E6983918];
      goto LABEL_31;
    }

    if (CFEqual(@"ThrottleForBackground", a2))
    {
      if (!v4)
      {
        goto LABEL_35;
      }

      v16 = CFBooleanGetTypeID();
      if (v16 != CFGetTypeID(v4))
      {
        goto LABEL_35;
      }

      *(a1 + 872) = CFBooleanGetValue(v4);
      v17 = *(a1 + 264);
      if (v17)
      {
        v18 = FigActivitySchedulerGetFigBaseObject(v17);
        CMBaseObjectSetProperty(v18, @"ThrottleForBackground", v4);
      }

      FigSimpleMutexLock();
      v14 = *(a1 + 64);
      if (!v14)
      {
        goto LABEL_33;
      }

      v15 = MEMORY[0x1E69839D0];
LABEL_31:
      v19 = *v15;
      v20 = v4;
LABEL_32:
      VTSessionSetProperty(v14, v19, v20);
LABEL_33:
      FigSimpleMutexUnlock();
      return 0;
    }

    if (CFEqual(@"FieldMode", a2))
    {
      if (v4)
      {
        v21 = CFStringGetTypeID();
        if (v21 != CFGetTypeID(v4))
        {
          goto LABEL_35;
        }
      }

      if (!FigCFEqual())
      {
        v22 = *(a1 + 736);
        *(a1 + 736) = v4;
        if (v4)
        {
          CFRetain(v4);
        }

        if (v22)
        {
          CFRelease(v22);
        }

        FigSimpleMutexLock();
        v14 = *(a1 + 64);
        if (!v14)
        {
          goto LABEL_33;
        }

        v19 = *MEMORY[0x1E6983938];
        v20 = *(a1 + 736);
        goto LABEL_32;
      }

      return 0;
    }

    if (CFEqual(@"AllowVideoQualityOfServiceAdjustments", a2))
    {
      v23 = CFBooleanGetTypeID();
      if (v23 != CFGetTypeID(v4))
      {
        goto LABEL_35;
      }

      v24 = *MEMORY[0x1E695E4D0] == v4;
      if (*(a1 + 624) == v24)
      {
        return 0;
      }

      *(a1 + 624) = v24;
      FigSimpleMutexLock();
      vmc2WhileHoldingTimebaseMutexUpdateQualityOfServiceCapability(a1);
      if (!*(a1 + 624))
      {
        vmc2ResetTroubleMonitorTimers(a1);
        vmc2ResetQualityOfService(a1);
      }

      goto LABEL_33;
    }

    if (CFEqual(@"DecoderUsage", a2))
    {
      if (!v4)
      {
        goto LABEL_35;
      }

      v25 = CFNumberGetTypeID();
      if (v25 != CFGetTypeID(v4))
      {
        goto LABEL_35;
      }

      if (!FigCFEqual())
      {
        v26 = *(a1 + 744);
        *(a1 + 744) = v4;
        CFRetain(v4);
        if (v26)
        {
          CFRelease(v26);
        }

        FigSimpleMutexLock();
        v14 = *(a1 + 64);
        if (!v14)
        {
          goto LABEL_33;
        }

        v19 = *MEMORY[0x1E69839E8];
        v20 = *(a1 + 744);
        goto LABEL_32;
      }

      return 0;
    }

    if (CFEqual(@"DecoderPriority", a2))
    {
      if (!v4)
      {
        goto LABEL_35;
      }

      v27 = CFNumberGetTypeID();
      if (v27 != CFGetTypeID(v4))
      {
        goto LABEL_35;
      }

      if (!FigCFEqual())
      {
        v28 = *(a1 + 752);
        *(a1 + 752) = v4;
        CFRetain(v4);
        if (v28)
        {
          CFRelease(v28);
        }

        FigSimpleMutexLock();
        v14 = *(a1 + 64);
        if (!v14)
        {
          goto LABEL_33;
        }

        v19 = *MEMORY[0x1E6983990];
        v20 = *(a1 + 752);
        goto LABEL_32;
      }

      return 0;
    }

    if (CFEqual(@"DecoderThreadCount", a2))
    {
      if (!v4)
      {
        goto LABEL_35;
      }

      v29 = CFNumberGetTypeID();
      if (v29 != CFGetTypeID(v4))
      {
        goto LABEL_35;
      }

      if (!FigCFEqual())
      {
        v30 = *(a1 + 760);
        *(a1 + 760) = v4;
        CFRetain(v4);
        if (v30)
        {
          CFRelease(v30);
        }

        FigSimpleMutexLock();
        v14 = *(a1 + 64);
        if (!v14)
        {
          goto LABEL_33;
        }

        v19 = *MEMORY[0x1E69839C8];
        v20 = *(a1 + 760);
        goto LABEL_32;
      }

      return 0;
    }

    if (CFEqual(@"MaxAgeForOutputPixelBufferPool", a2))
    {
      if (v4)
      {
        v31 = CFNumberGetTypeID();
        if (v31 != CFGetTypeID(v4))
        {
          goto LABEL_35;
        }

        FigSimpleMutexLock();
        vmc2PreallocatePixelBuffers(a1);
      }

      else
      {
        FigSimpleMutexLock();
        v4 = *(a1 + 1008);
      }

      v38 = *(a1 + 64);
      if (v38 && v4)
      {
        VTSessionSetProperty(v38, *MEMORY[0x1E6983958], v4);
      }

      goto LABEL_33;
    }

    if (CFEqual(@"VideoDecoderIsSecondary", a2))
    {
      if (v4)
      {
        v32 = CFBooleanGetTypeID();
        if (v32 == CFGetTypeID(v4))
        {
          if (*MEMORY[0x1E695E4D0] == v4)
          {
            v33 = 34;
          }

          else
          {
            v33 = 3;
          }

          valuePtr = v33;
          v34 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
          if (v34)
          {
            v35 = v34;
            v36 = FigActivitySchedulerGetFigBaseObject(*(a1 + 264));
            v4 = CMBaseObjectSetProperty(v36, @"ThreadPriority", v35);
            if (!v4 && FigActivitySchedulerIsProcessingCallbackCalledOnConsistentThread(*(a1 + 264)))
            {
              FigSimpleMutexLock();
              v37 = *(a1 + 64);
              if (v37)
              {
                VTSessionSetProperty(v37, *MEMORY[0x1E6983940], v35);
              }

              FigSimpleMutexUnlock();
            }

            CFRelease(v35);
          }

          else
          {
            fig_log_get_emitter();
            return FigSignalErrorAtGM();
          }

          return v4;
        }
      }

      goto LABEL_35;
    }

    if (CFEqual(@"ForceFullPowerDecode", a2))
    {
      if (v4)
      {
        v39 = CFGetTypeID(v4);
        if (v39 == CFBooleanGetTypeID())
        {
          v40 = CFBooleanGetValue(v4);
          v4 = 0;
          *(a1 + 877) = v40;
          return v4;
        }
      }

      goto LABEL_35;
    }

    if (CFEqual(@"PropagatePerFrameHDRDisplayMetadata", a2))
    {
      if (!v4)
      {
        goto LABEL_35;
      }

      v41 = CFGetTypeID(v4);
      if (v41 != CFBooleanGetTypeID())
      {
        goto LABEL_35;
      }

      v42 = CFBooleanGetValue(v4);
      if (*(a1 + 879) != v42)
      {
        *(a1 + 879) = v42;
        FigSimpleMutexLock();
        v14 = *(a1 + 64);
        if (!v14)
        {
          goto LABEL_33;
        }

        v15 = MEMORY[0x1E6983998];
        goto LABEL_31;
      }

      return 0;
    }

    if (CFEqual(@"EnableIOFenceDecode", a2))
    {
      if (!v4)
      {
        goto LABEL_35;
      }

      v43 = CFGetTypeID(v4);
      if (v43 != CFBooleanGetTypeID())
      {
        goto LABEL_35;
      }

      v44 = CFBooleanGetValue(v4);
      if (*(a1 + 878) != v44)
      {
        *(a1 + 878) = v44;
        FigSimpleMutexLock();
        v14 = *(a1 + 64);
        if (!v14)
        {
          goto LABEL_33;
        }

        v15 = MEMORY[0x1E6983928];
        goto LABEL_31;
      }

      return 0;
    }

    if (CFEqual(@"DisplayLayerSize", a2))
    {
      if (!v4)
      {
        goto LABEL_35;
      }

      v45 = CFGetTypeID(v4);
      if (v45 != CFDictionaryGetTypeID())
      {
        goto LABEL_35;
      }

      FigCFDictionaryGetCGSizeIfPresent();
      return 0;
    }

    if (!CFEqual(@"EnhancementFilterOptions", a2))
    {
      if (CFEqual(@"ColorPrimaries", a2))
      {
        if (!v4)
        {
          goto LABEL_35;
        }

        v49 = CFGetTypeID(v4);
        if (v49 != CFStringGetTypeID())
        {
          goto LABEL_35;
        }

        v50 = *(a1 + 1016);
        *(a1 + 1016) = v4;
        CFRetain(v4);
        if (v50)
        {
          CFRelease(v50);
        }

        v51 = *(a1 + 64);
        if (!v51)
        {
          return 0;
        }

        v52 = MEMORY[0x1E6983920];
      }

      else if (CFEqual(@"TransferFunction", a2))
      {
        if (!v4)
        {
          goto LABEL_35;
        }

        v54 = CFGetTypeID(v4);
        if (v54 != CFStringGetTypeID())
        {
          goto LABEL_35;
        }

        v55 = *(a1 + 1024);
        *(a1 + 1024) = v4;
        CFRetain(v4);
        if (v55)
        {
          CFRelease(v55);
        }

        v51 = *(a1 + 64);
        if (!v51)
        {
          return 0;
        }

        v52 = MEMORY[0x1E69839E0];
      }

      else if (CFEqual(@"YCbCrMatrix", a2))
      {
        if (!v4)
        {
          goto LABEL_35;
        }

        v56 = CFGetTypeID(v4);
        if (v56 != CFStringGetTypeID())
        {
          goto LABEL_35;
        }

        v57 = *(a1 + 1032);
        *(a1 + 1032) = v4;
        CFRetain(v4);
        if (v57)
        {
          CFRelease(v57);
        }

        v51 = *(a1 + 64);
        if (!v51)
        {
          return 0;
        }

        v52 = MEMORY[0x1E6983A08];
      }

      else
      {
        if (CFEqual(@"PreserveSyncFrames", a2))
        {
          if (v4)
          {
            v58 = CFGetTypeID(v4);
            if (v58 == CFBooleanGetTypeID())
            {
              v59 = CFBooleanGetValue(v4);
              v4 = 0;
              *(a1 + 731) = v59;
              return v4;
            }
          }

          goto LABEL_35;
        }

        if (!CFEqual(@"PlaybackSessionID", a2))
        {
          if (CFEqual(@"HDRCrossTalker", a2))
          {
            if (!v4)
            {
              goto LABEL_35;
            }

            v62 = CFGetTypeID(v4);
            if (v62 != FigCrossTalkerGetTypeID())
            {
              goto LABEL_35;
            }

            v63 = *(a1 + 1440);
            *(a1 + 1440) = v4;
            CFRetain(v4);
            if (v63)
            {
              CFRelease(v63);
            }

            vmc2BroadcastHDRStatus(a1);
          }

          else if (CFEqual(@"AV1FilmGrainMode", a2))
          {
            if (!v4)
            {
              goto LABEL_35;
            }

            v64 = CFGetTypeID(v4);
            if (v64 != CFStringGetTypeID() || !CFEqual(*MEMORY[0x1E69834A0], v4) && !CFEqual(*MEMORY[0x1E69834A8], v4) && !CFEqual(*MEMORY[0x1E69834B0], v4))
            {
              goto LABEL_35;
            }

            v65 = *(a1 + 768);
            *(a1 + 768) = v4;
            CFRetain(v4);
            if (v65)
            {
              CFRelease(v65);
            }

            if (*(a1 + 64))
            {
              MediaSubType = CMFormatDescriptionGetMediaSubType(*(a1 + 32));
              if (MediaSubType == 1902212657 || MediaSubType == 1635135537)
              {
                FigSimpleMutexLock();
                v14 = *(a1 + 64);
                v19 = *MEMORY[0x1E6983900];
                v20 = *(a1 + 768);
                goto LABEL_32;
              }
            }
          }

          else
          {
            if (CFEqual(@"PriorImageQueueGauge", a2))
            {
              if (v4)
              {
                v67 = CFGetTypeID(v4);
                if (v67 == FigImageQueueGaugeGetTypeID())
                {
                  FigSimpleMutexLock();
                  if (*(a1 + 1520))
                  {
                    fig_log_get_emitter();
                    v4 = FigSignalErrorAtGM();
                  }

                  else
                  {
                    *(a1 + 1520) = CFRetain(v4);
                    CMNotificationCenterGetDefaultLocalCenter();
                    FigNotificationCenterAddWeakListener();
                    CMNotificationCenterGetDefaultLocalCenter();
                    FigNotificationCenterAddWeakListener();
                    v4 = 0;
                  }

                  FigSimpleMutexUnlock();
                  vmc2OutputOccupancyChanged(a1);
                  return v4;
                }
              }

              goto LABEL_35;
            }

            if (CFEqual(@"CollectionRules", a2))
            {
              if (!v4)
              {
                return v4;
              }

              v68 = CFGetTypeID(v4);
              if (v68 == FigSampleAttachmentCollectionRulesGetTypeID())
              {
                v69 = *(a1 + 1096);
                *(a1 + 1096) = v4;
                CFRetain(v4);
                if (v69)
                {
                  CFRelease(v69);
                }
              }

              return 0;
            }

            if (!CFEqual(@"DecompressionSessionProperties", a2))
            {
              if (!CFEqual(@"MappingFromFormatDescriptionsToSidebandVideoPropertiesLookupIDs", a2))
              {
                return 4294954470;
              }

              FigSimpleMutexLock();
              v73 = *(a1 + 1536);
              *(a1 + 1536) = v4;
              if (v4)
              {
                CFRetain(v4);
              }

              if (v73)
              {
                CFRelease(v73);
              }

              goto LABEL_33;
            }

            if (!v4)
            {
              goto LABEL_35;
            }

            v70 = CFGetTypeID(v4);
            if (v70 != CFDictionaryGetTypeID())
            {
              goto LABEL_35;
            }

            v71 = *(a1 + 1048);
            *(a1 + 1048) = v4;
            CFRetain(v4);
            if (v71)
            {
              CFRelease(v71);
            }

            v72 = *(a1 + 64);
            if (v72)
            {
              VTSessionSetProperties(v72, *(a1 + 1048));
            }
          }

          return 0;
        }

        if (!v4)
        {
          goto LABEL_35;
        }

        v60 = CFGetTypeID(v4);
        if (v60 != CFStringGetTypeID())
        {
          goto LABEL_35;
        }

        v61 = *(a1 + 1040);
        *(a1 + 1040) = v4;
        CFRetain(v4);
        if (v61)
        {
          CFRelease(v61);
        }

        v51 = *(a1 + 64);
        if (!v51)
        {
          return 0;
        }

        v52 = MEMORY[0x1E6983988];
      }

      VTSessionSetProperty(v51, *v52, v4);
      return 0;
    }

    if (v4)
    {
      v46 = CFGetTypeID(v4);
      if (v46 != CFDictionaryGetTypeID())
      {
        goto LABEL_35;
      }

      v47 = *(a1 + 912);
      *(a1 + 912) = v4;
      CFRetain(v4);
      if (v47)
      {
        CFRelease(v47);
      }

      *(a1 + 920) = CFDictionaryGetValue(*(a1 + 912), @"UseFilter");
      CFDictionaryGetValue(*(a1 + 912), @"ScaleMode");
      if (FigCFEqual())
      {
        v4 = 0;
        v48 = 1;
LABEL_160:
        *(a1 + 928) = v48;
        return v4;
      }

      v4 = 0;
      if (FigCFEqual())
      {
        v48 = 2;
        goto LABEL_160;
      }
    }

    else
    {
      v53 = *(a1 + 912);
      if (v53)
      {
        CFRelease(v53);
        *(a1 + 912) = 0;
      }

      v4 = 0;
      *(a1 + 920) = 0;
    }

    *(a1 + 928) = 0;
    return v4;
  }

  if (v4)
  {
    v7 = CFBooleanGetTypeID();
    if (v7 == CFGetTypeID(v4))
    {
      v8 = CFBooleanGetValue(v4);
      v4 = 0;
      *(a1 + 728) = v8;
      return v4;
    }
  }

LABEL_35:
  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t vmc2WhileHoldingTimebaseMutexUpdateQualityOfServiceCapability(uint64_t a1)
{
  FigSimpleMutexLock();
  v2 = *(a1 + 584);
  if (v2)
  {
    v2 = *(a1 + 600);
    if (v2)
    {
      LOBYTE(v2) = *(a1 + 624) != 0;
    }
  }

  *(a1 + 625) = v2;

  return FigSimpleMutexUnlock();
}

double vmc2ResetQualityOfService(uint64_t a1)
{
  v2 = *(a1 + 600);
  if (v2 && *(a1 + 608))
  {
    CFArrayGetValueAtIndex(v2, 0);
    v3 = *MEMORY[0x1E6983A50];
    if (FigCFEqual())
    {
      valuePtr = 0x3FF0000000000000;
      v4 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberDoubleType, &valuePtr);
      VTSessionSetProperty(*(a1 + 64), *MEMORY[0x1E6983970], *MEMORY[0x1E6983A38]);
      VTSessionSetProperty(*(a1 + 64), *MEMORY[0x1E69839A8], v4);
      if (v4)
      {
        CFRelease(v4);
      }
    }

    else
    {
      v5 = *(a1 + 64);
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 600), 0);
      VTSessionSetProperties(v5, ValueAtIndex);
    }

    VTSessionSetProperty(*(a1 + 64), v3, 0);
    if (*(a1 + 608) >= 1)
    {
      ++*(a1 + 1112);
    }

    result = -NAN;
    *(a1 + 608) = -NAN;
  }

  return result;
}

void vmc2PreallocatePixelBuffers(uint64_t a1)
{
  propertyValueOut = 0;
  pixelBufferPool = 0;
  if ((*(a1 + 484) & 0x1D) == 1)
  {
    MediaSubType = CMFormatDescriptionGetMediaSubType(*(a1 + 32));
    if (MediaSubType <= 1685481572)
    {
      v3 = MediaSubType == 1667524657 || MediaSubType == 1684895096;
      v5 = 1685481521;
    }

    else
    {
      if (MediaSubType > 1902405732)
      {
        v3 = MediaSubType == 1902405733;
        v4 = 28024;
      }

      else
      {
        v3 = MediaSubType == 1685481573;
        v4 = 26673;
      }

      v5 = v4 | 0x71640000;
    }

    if (!v3 && MediaSubType != v5)
    {
      v17 = *(a1 + 472);
      CMTimeConvertScale(&v18, &v17, 30, kCMTimeRoundingMethod_RoundAwayFromZero);
      value = v18.value;
      if (v18.value >= 1)
      {
        v8 = *MEMORY[0x1E695E480];
        VTSessionCopyProperty(*(a1 + 64), *MEMORY[0x1E69839F8], *MEMORY[0x1E695E480], &propertyValueOut);
        v9 = *MEMORY[0x1E695E4D0];
        v10 = propertyValueOut;
        if (propertyValueOut)
        {
          CFRelease(propertyValueOut);
        }

        if (v9 != v10)
        {
          VTSessionCopyProperty(*(a1 + 64), *MEMORY[0x1E6983978], v8, &pixelBufferPool);
          if (pixelBufferPool)
          {
            v11 = malloc_type_calloc(value, 8uLL, 0x2004093837F09uLL);
            if (v11)
            {
              v12 = v11;
              FigSimpleMutexUnlock();
              v13 = value;
              v14 = v12;
              do
              {
                CVPixelBufferPoolCreatePixelBuffer(0, pixelBufferPool, v14++);
                --v13;
              }

              while (v13);
              v15 = 0;
              do
              {
                v16 = v12[v15];
                if (v16)
                {
                  CVPixelBufferRelease(v16);
                }

                ++v15;
              }

              while (value != v15);
              free(v12);
              CVPixelBufferPoolRelease(pixelBufferPool);
              FigSimpleMutexLock();
            }

            else
            {
              CVPixelBufferPoolRelease(pixelBufferPool);
            }
          }
        }
      }
    }
  }
}

uint64_t FigActivitySchedulerIsProcessingCallbackCalledOnConsistentThread(uint64_t a1)
{
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v2)
  {
    return 0;
  }

  return v2(a1);
}

uint64_t vmc2BroadcastHDRStatus(uint64_t a1)
{
  result = *(a1 + 32);
  if (result && *(a1 + 1440))
  {
    v3 = (CMVideoFormatDescriptionGetVideoDynamicRange() <= 1 ? MEMORY[0x1E695E4C0] : MEMORY[0x1E695E4D0]);
    FigBytePumpGetFigBaseObject(*(a1 + 1440));
    v5 = v4;
    VTable = CMBaseObjectGetVTable();
    v7 = *(VTable + 8);
    result = VTable + 8;
    v8 = *(v7 + 56);
    if (v8)
    {
      v9 = *v3;

      return v8(v5, 0x1F0B4C778, v9);
    }
  }

  return result;
}

uint64_t VMC2SetWaterLevels(uint64_t a1, __int128 *a2, __int128 *a3)
{
  FigSimpleMutexLock();
  v6 = *a2;
  *(a1 + 488) = *(a2 + 2);
  *(a1 + 472) = v6;
  v7 = *a3;
  *(a1 + 512) = *(a3 + 2);
  *(a1 + 496) = v7;
  ++*(a1 + 524);

  return FigSimpleMutexUnlock();
}

void vmc2GMFigLogDumpStats(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  FigSimpleMutexLock();
  *(a1 + 1360) = 0u;
  *(a1 + 1376) = 0u;
  *(a1 + 1392) = 0u;
  *(a1 + 1408) = 0u;
  v3 = *(a1 + 1228);
  v4 = *(a1 + 1224);
  if (*(a1 + 1204))
  {
    CFStringAppendFormat(Mutable, 0, @"CodecType: %c%c%c%c", HIBYTE(*(a1 + 1204)), BYTE2(*(a1 + 1204)), BYTE1(*(a1 + 1204)), *(a1 + 1204));
  }

  if (*(a1 + 1208))
  {
    if (*(a1 + 1209))
    {
      v5 = "HW";
    }

    else
    {
      v5 = "SW";
    }

    CFStringAppendFormat(Mutable, 0, @" (%s decoder)", v5);
  }

  if (*(a1 + 1212))
  {
    CFStringAppendFormat(Mutable, 0, @", DecodedPixelBuffer: %c%c%c%c, %u x %u\n", HIBYTE(*(a1 + 1212)), BYTE2(*(a1 + 1212)), BYTE1(*(a1 + 1212)), *(a1 + 1212), *(a1 + 1216), *(a1 + 1220));
  }

  CFStringAppendCString(Mutable, "Last Decoded Frames [\n", 0x600u);
  if (v3 >= 1)
  {
    do
    {
      if (v4 <= 0)
      {
        v6 = -(-v4 & 3);
      }

      else
      {
        v6 = v4 & 3;
      }

      v7 = a1 + 1232 + 32 * v6;
      v8 = *(v7 + 24);
      v9 = *(v7 + 16);
      CFStringAppendFormat(Mutable, 0, @"{PTS: %.3f s, decode: %.3f ms", *v7, *(v7 + 8) * 1000.0);
      if (v8)
      {
        CFStringAppendFormat(Mutable, 0, @", enhancement blocked: %.3f ms", v9 * 1000.0);
      }

      CFStringAppend(Mutable, @"},\n");
      ++v4;
      --v3;
    }

    while (v3);
  }

  CFStringAppendCString(Mutable, "]\n", 0x600u);
  *(a1 + 1352) = 0;
  *(a1 + 1320) = 0u;
  *(a1 + 1336) = 0u;
  *(a1 + 1288) = 0u;
  *(a1 + 1304) = 0u;
  *(a1 + 1256) = 0u;
  *(a1 + 1272) = 0u;
  *(a1 + 1224) = 0u;
  *(a1 + 1240) = 0u;
  FigSimpleMutexUnlock();
  if (dword_1EAF18AC0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    if (dword_1EAF18AC0)
    {
      v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

uint64_t vmc2HandleSessionTerminatedNotification(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 873))
  {
    *(a2 + 1058) = 1;
  }

  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

uint64_t vmc2UpdateSessionMinAndMaxOutputPTS(uint64_t result)
{
  v8 = **&MEMORY[0x1E6960C70];
  v7 = v8;
  if (*(result + 64))
  {
    v1 = result;
    FigSimpleMutexLock();
    v2 = *(v1 + 316);
    do
    {
      FigSimpleMutexUnlock();
      VTDecompressionSessionGetMinAndMaxOutputPresentationTimeStampOfFramesBeingDecoded();
      FigSimpleMutexLock();
      v3 = v2 == *(v1 + 316);
      v2 = *(v1 + 316);
    }

    while (!v3);
    time1 = *(v1 + 320);
    v5 = v8;
    v4 = CMTimeCompare(&time1, &v5);
    if (v4)
    {
      *(v1 + 320) = v8;
    }

    time1 = *(v1 + 344);
    v5 = v7;
    if (CMTimeCompare(&time1, &v5))
    {
      *(v1 + 344) = v7;
    }

    else if (!v4)
    {
LABEL_11:
      ++*(v1 + 316);
      return FigSimpleMutexUnlock();
    }

    vmc2RecalculateUpcomingImageTimes(v1);
    goto LABEL_11;
  }

  return result;
}

__CFString *vmc2CopyFormattingDesc(void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"[VMC2 %@]", a1[108]);
  return Mutable;
}

__CFString *vmc2CopyDebugDesc(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  v4 = *(a1 + 864);
  v5 = CFGetRetainCount(a1);
  if (*(a1 + 16))
  {
    v6 = " (invalidated)";
  }

  else
  {
    v6 = "";
  }

  v7 = CFGetAllocator(a1);
  CFStringAppendFormat(Mutable, 0, @"VMC2 %p %@ retainCount: %d%s allocator: %p", a1, v4, v5, v6, v7);
  return Mutable;
}

void vmc2OutputMultiImageFrame(uint64_t a1, _DWORD *a2, int a3, unsigned int a4, uint64_t a5, CMTime *a6, uint64_t a7)
{
  v9 = *a6;
  v7 = *a7;
  v8 = *(a7 + 16);
  vmc2OutputFrameInternal(a1, a2, a3, a4, 0, a5, &v9, &v7, 0);
}

void vmc2OutputFrameInternal(uint64_t a1, _DWORD *a2, int a3, unsigned int a4, uint64_t a5, uint64_t a6, CMTime *a7, __int128 *a8, char a9)
{
  v127 = *MEMORY[0x1E69E9840];
  v114 = 0;
  pixelBufferOut = 0;
  v113 = 0;
  v104 = a4;
  if ((a4 & 8) != 0)
  {
    v13 = 0;
  }

  else
  {
    v13 = -17694;
  }

  if (a3 == -17694)
  {
    v14 = v13;
  }

  else
  {
    v14 = a3;
  }

  if (a2)
  {
    v17 = *a2;
    v16 = a2[1];
    cf = *(a2 + 1);
    value = *(a2 + 2);
    v108 = *(a2 + 5);
    v109 = *(a2 + 3);
    v101 = *(a2 + 6);
    v102 = *(a2 + 4);
    mach_absolute_time();
    v18 = *(a2 + 72);
    v19 = *(a2 + 7);
    v110 = *(a2 + 10);
    free(a2);
    v20 = v18 != 0;
    v21 = v17 & 3;
  }

  else
  {
    v20 = 0;
    v19 = 0;
    v109 = 0;
    v110 = 0;
    v101 = 0;
    v102 = 0;
    v108 = 0;
    value = 0;
    cf = 0;
    v16 = 0;
    v21 = 0;
  }

  v103 = v19;
  allocator = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v23 = Mutable;
  if (Mutable)
  {
    v24 = !v20;
  }

  else
  {
    v24 = 1;
  }

  if (!v24 && *(a1 + 731))
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x1E69604E0], *MEMORY[0x1E695E4D0]);
  }

  v107 = v23;
  if (*(a1 + 848) && *(a1 + 856) && FigMachPortHolderGetPort() - 1 <= 0xFFFFFFFD)
  {
    if (a5 && CVPixelBufferGetIOSurface(a5))
    {
      IOSurfaceSetOwnershipIdentity();
    }

    if (a6)
    {
      Count = CMTaggedBufferGroupGetCount(a6);
      if (Count >= 1)
      {
        v26 = Count;
        for (i = 0; i != v26; ++i)
        {
          CVPixelBufferAtIndex = FigTaggedBufferGroupGetCVPixelBufferAtIndex();
          if (CVPixelBufferGetIOSurface(CVPixelBufferAtIndex))
          {
            IOSurfaceSetOwnershipIdentity();
          }
        }
      }
    }
  }

  if (cf)
  {
    v29 = malloc_type_calloc(1uLL, 0x58uLL, 0x10E0040E756AD93uLL);
    if (v29)
    {
      v30 = v29;
      v29[1] = CFRetain(cf);
      *(v30 + 4) = v14;
      *(v30 + 5) = v104;
      v104 &= ~4u;
      v30[3] = CVBufferRetain(a5);
      if (a6)
      {
        v31 = CFRetain(a6);
      }

      else
      {
        v31 = 0;
      }

      v30[4] = v31;
      v32 = *&a7->value;
      v30[7] = a7->epoch;
      *(v30 + 5) = v32;
      v33 = *a8;
      v30[10] = *(a8 + 2);
      *(v30 + 4) = v33;
      *v30 = *(a1 + 800);
      *(a1 + 800) = v30;
    }
  }

  FigSimpleMutexLock();
  v34 = *(a1 + 792);
  if (v16 != v34)
  {
    a6 = 0;
    a5 = 0;
  }

  FigSimpleMutexUnlock();
  v35 = v102;
  if (!v14)
  {
    v36 = v103;
    if (v21 != 1)
    {
      goto LABEL_42;
    }

    ++*(a1 + 1120);
LABEL_41:
    vmc2ResetTroubleMonitorTimers(a1);
    a6 = 0;
    a5 = 0;
LABEL_49:
    v38 = v108;
    goto LABEL_50;
  }

  time2 = *a7;
  vmc2PostDecodeError(a1);
  v36 = v103;
  if (v21 == 1)
  {
    goto LABEL_41;
  }

LABEL_42:
  if (a5 | a6)
  {
    goto LABEL_49;
  }

  if (v16 != v34)
  {
    vmc2ResetTroubleMonitorTimers(a1);
    a6 = 0;
    a5 = 0;
    ++*(a1 + 1148);
    goto LABEL_49;
  }

  ++*(a1 + 1124);
  v37 = (a1 + 1480);
  v38 = v108;
  if ((*(a1 + 1492) & 1) != 0 && (*&lhs.value = *v37, lhs.epoch = *(a1 + 1496), rhs = *(a1 + 1452), CMTimeAdd(&time2, &lhs, &rhs), lhs = *a7, CMTimeCompare(&lhs, &time2) < 1))
  {
    v46 = *(a1 + 1504) + 1;
    *(a1 + 1504) = v46;
    if (v46 == *(a1 + 1476))
    {
      ++*(a1 + 1128);
    }
  }

  else
  {
    v39 = *&a7->value;
    *(a1 + 1496) = a7->epoch;
    *v37 = v39;
    *(a1 + 1504) = 1;
  }

  FigSimpleMutexLock();
  ++*(a1 + 1364);
  FigSimpleMutexUnlock();
  a6 = 0;
  a5 = 0;
LABEL_50:
  v40 = (a6 | a5) == 0;
  if (!(a6 | a5))
  {
    a6 = 0;
    a5 = 0;
    v41 = 0.0;
    goto LABEL_69;
  }

  v42 = *(a1 + 836);
  ++*(a1 + 1132);
  v41 = FigHostTimeToNanoseconds() * 0.000000001;
  if (!VTParavirtualizationIsRunningInGuest() && (_os_feature_enabled_impl() & 1) == 0 && v42 != 1 && v42 != 4)
  {
    v43 = CVBufferCopyAttachment(a5, @"IsDRMSubstitute", 0);
    v44 = v43;
    v45 = *MEMORY[0x1E695E4D0];
    if (v43)
    {
      CFRelease(v43);
    }

    if (v45 == v44)
    {
      v38 = v108;
      goto LABEL_69;
    }

    VTDecompressionSessionCopyBlackPixelBuffer(*(a1 + 64), &pixelBufferOut);
    v38 = v108;
    if (a5)
    {
      a5 = pixelBufferOut;
    }

    else
    {
      if (a6)
      {
        if (pixelBufferOut)
        {
          vmcCreateTaggedBufferGroupSubstitutingImageBufferInTaggedBufferGroup(pixelBufferOut, a6, &v114);
          a5 = 0;
          a6 = v114;
          goto LABEL_68;
        }

        a6 = 0;
      }

      a5 = 0;
    }

LABEL_68:
    ++*(a1 + 1156);
    ++*(a1 + 1416);
  }

LABEL_69:
  if (!(a5 | a6))
  {
    goto LABEL_173;
  }

  v47 = 4 * (v21 == 3);
  if (v21 == 2)
  {
    v47 = 3;
  }

  v99 = v47;
  FigSimpleMutexLock();
  v48 = *(a1 + 584);
  if (v48)
  {
    timebase = CFRetain(v48);
  }

  else
  {
    timebase = 0;
  }

  FigSimpleMutexUnlock();
  if (!v21)
  {
    v125 = *a7;
    if (timebase)
    {
      Rate = CMTimebaseGetRate(timebase);
      if (Rate > 0.0)
      {
        memset(&time2, 0, sizeof(time2));
        CMTimebaseGetTime(&time2, timebase);
        lhs = time2;
        rhs = v125;
        if (CMTimeCompare(&lhs, &rhs) < 1)
        {
          goto LABEL_76;
        }

LABEL_143:
        ++*(a1 + 1144);
        ++*(a1 + 1420);
        goto LABEL_76;
      }

      if (Rate < 0.0)
      {
        memset(&time2, 0, sizeof(time2));
        CMTimebaseGetTime(&time2, timebase);
        lhs = time2;
        rhs = v125;
        if (CMTimeCompare(&lhs, &rhs) < 0)
        {
          goto LABEL_143;
        }
      }
    }
  }

LABEL_76:
  if (a5)
  {
    v49 = v110;
    if (value)
    {
      CVBufferSetAttachment(a5, @"SourceRect", value, kCVAttachmentMode_ShouldPropagate);
    }

    if (v102 && v109)
    {
      CVBufferSetAttachment(a5, @"DestRect", v109, kCVAttachmentMode_ShouldPropagate);
      CVBufferSetAttachment(a5, @"VirtualDisplaySizeForDestRect", v102, kCVAttachmentMode_ShouldPropagate);
    }

    if (v38)
    {
      CVBufferSetAttachment(a5, @"SymmetricTransform", v38, kCVAttachmentMode_ShouldPropagate);
    }

    PixelFormatType = CVPixelBufferGetPixelFormatType(a5);
  }

  else
  {
    PixelFormatType = 32;
    v49 = v110;
  }

  if (!*(a1 + 904) && (!*(a1 + 905) || PixelFormatType != *(a1 + 908)) && !a6)
  {
    if ((v97 = PixelFormatType, Width = CVPixelBufferGetWidth(a5), Height = CVPixelBufferGetHeight(a5), v63 = Height, *(a1 + 905) = 0, v64 = *(a1 + 888), v64 >= Width) && *(a1 + 896) >= Height && *MEMORY[0x1E695E4C0] != *(a1 + 920) || *MEMORY[0x1E695E4D0] == *(a1 + 920))
    {
      if (Width != *(a1 + 936) || Height != *(a1 + 944) || *(a1 + 952) != v64 || *(a1 + 960) != *(a1 + 896))
      {
        vmc2FinishAndDestroyImageEnhancementFilter(a1);
      }

      if (*(a1 + 968) || (ImageEnhancementFilter = vmc2CreateImageEnhancementFilter(a1, Width, v63), *(a1 + 968)))
      {
        mach_absolute_time();
        v53 = a7;
        v125.value = a7->value;
        flags = a7->flags;
        v125.timescale = a7->timescale;
        epoch = a7->epoch;
        if (!*(a1 + 968))
        {
          if (vmc2OutputFrameInternal_cold_4(&time2))
          {
            goto LABEL_203;
          }

          v94 = time2.value;
LABEL_214:
          time2.value = v125.value;
          time2.timescale = v125.timescale;
          time2.flags = flags;
          time2.epoch = epoch;
          vmc2CopyFrameBaggageForPTS(a1, &time2, 0, 0, 0);
          v49 = v110;
          v35 = v102;
          v36 = v103;
          v38 = v108;
          if (v94 == -12218)
          {
            *(a1 + 905) = 1;
            *(a1 + 908) = v97;
          }

          goto LABEL_91;
        }

        rhs.value = a7->value;
        rhs.timescale = a7->timescale;
        lhs.value = 0;
        *&lhs.timescale = &lhs;
        lhs.epoch = 0x2000000000;
        v124 = 0;
        if ((flags & 0x1D) != 1)
        {
          vmc2OutputFrameInternal_cold_1(&lhs.timescale);
          goto LABEL_201;
        }

        if (*(a1 + 976))
        {
LABEL_125:
          v68 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          time2.value = rhs.value;
          time2.timescale = rhs.timescale;
          time2.flags = flags;
          time2.epoch = epoch;
          valuePtr = CMTimeGetSeconds(&time2);
          v69 = CFNumberCreate(allocator, kCFNumberFloat64Type, &valuePtr);
          FigCFDictionarySetInt32();
          FigCFDictionarySetInt32();
          CFDictionarySetValue(v68, @"OriginalFrame", a5);
          v70 = *(a1 + 984);
          time2.value = MEMORY[0x1E69E9820];
          *&time2.timescale = 0x40000000;
          time2.epoch = __vmc2StoreFrameBaggageForPTS_block_invoke;
          v117 = &unk_1E7479B00;
          v120 = v69;
          v121 = v68;
          p_lhs = &lhs;
          v119 = a1;
          dispatch_sync(v70, &time2);
          if (v68)
          {
            CFRelease(v68);
          }

          v53 = a7;
          if (v69)
          {
            CFRelease(v69);
          }

LABEL_201:
          v94 = *(*&lhs.timescale + 24);
          _Block_object_dispose(&lhs, 8);
          if (v94)
          {
            vmc2OutputFrameInternal_cold_2();
          }

          else
          {
            time2.value = v125.value;
            time2.timescale = v125.timescale;
            time2.flags = flags;
            time2.epoch = epoch;
            v95 = VTTemporalFilterSessionProcessFrame();
            v35 = v102;
            if (!v95)
            {
LABEL_203:
              mach_absolute_time();
              v81 = FigHostTimeToNanoseconds() * 0.000000001;
              v79 = 1;
              v80 = 1;
              v38 = v108;
              goto LABEL_148;
            }

            v94 = v95;
            vmc2OutputFrameInternal_cold_3();
          }

          goto LABEL_214;
        }

        if (*(a1 + 16))
        {
          v93 = &lhs;
        }

        else
        {
          v96 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          *(a1 + 976) = v96;
          if (v96)
          {
            goto LABEL_125;
          }

          v93 = *&lhs.timescale;
        }

        LODWORD(v93[1].value) = -12824;
        goto LABEL_201;
      }

      if (ImageEnhancementFilter)
      {
        *(a1 + 904) = 1;
      }
    }
  }

LABEL_91:
  if (*(a1 + 968))
  {
    vmc2FinishAndDestroyImageEnhancementFilter(a1);
  }

  if (!*(a1 + 128) || !a5)
  {
    v57 = (v104 >> 2) & 1;
    v58 = *(a1 + 112);
    if (v58 && a5)
    {
      v59 = *(a1 + 104);
      time2 = *a7;
      v58(v59, a5, &time2, &v113);
      if (v113)
      {
        a5 = v113;
      }
    }

    else if (!a5)
    {
      if (a6)
      {
        v71 = CMTaggedBufferGroupGetCount(a6);
        if (v71 >= 1)
        {
          v72 = v71;
          v105 = v40;
          v73 = 0;
          v74 = *MEMORY[0x1E6965F28];
          do
          {
            v75 = FigTaggedBufferGroupGetCVPixelBufferAtIndex();
            if (v75)
            {
              v76 = v75;
              if (v49)
              {
                CVBufferSetAttachment(v75, v74, v49, kCVAttachmentMode_ShouldPropagate);
              }

              if (!a9)
              {
                time2 = *a7;
                vmcAddPresentationTimeAsAttachment(v76);
                v77 = *(a1 + 1096);
                if (v77)
                {
                  v78 = *(*(CMBaseObjectGetVTable() + 16) + 40);
                  if (v78)
                  {
                    v78(v77, v103, v76);
                  }
                }
              }
            }

            ++v73;
          }

          while (v72 != v73);
          a5 = 0;
          v35 = v102;
          v36 = v103;
          v38 = v108;
          v53 = a7;
          v40 = v105;
          goto LABEL_146;
        }
      }

      a5 = 0;
      goto LABEL_145;
    }

    if (v49)
    {
      CVBufferSetAttachment(a5, *MEMORY[0x1E6965F28], v49, kCVAttachmentMode_ShouldPropagate);
    }

    if (!a9)
    {
      v53 = a7;
      time2 = *a7;
      vmcAddPresentationTimeAsAttachment(a5);
      v60 = *(a1 + 1096);
      if (v60)
      {
        FigSampleAttachmentCollectionRulesAttachAttachmentsToPixelBuffer(v60, v36, a5);
      }

      v38 = v108;
      goto LABEL_146;
    }

LABEL_145:
    v38 = v108;
    v53 = a7;
LABEL_146:
    time2 = *v53;
    vmc2InvokeOutputCallback_OutputImage(a1, a5, a6, v57, v107, &time2.value, v99);
    goto LABEL_147;
  }

  v52 = malloc_type_calloc(1uLL, 0x28uLL, 0x10200406E8F4065uLL);
  *v52 = CFRetain(a1);
  v53 = a7;
  v54 = a7->epoch;
  *(v52 + 8) = *&a7->value;
  *(v52 + 3) = v54;
  *(v52 + 8) = v99;
  v55 = *(a1 + 128);
  v56 = *(a1 + 104);
  time2 = *a7;
  v55(v56, a5, &time2, vmc2FinishOutputFrame, v52);
LABEL_147:
  v79 = 0;
  v80 = 0;
  v81 = 0.0;
LABEL_148:
  if (*(a1 + 441))
  {
    *(a1 + 440) = 0;
  }

  FigSimpleMutexLock();
  if (!v40)
  {
    if (a5 || a6 && (a5 = FigTaggedBufferGroupGetCVPixelBufferAtIndex()) != 0)
    {
      *(a1 + 1212) = CVPixelBufferGetPixelFormatType(a5);
      *(a1 + 1216) = CVPixelBufferGetWidth(a5);
      *(a1 + 1220) = CVPixelBufferGetHeight(a5);
    }

    ++*(a1 + 1360);
    *(a1 + 1368) = v41 + *(a1 + 1368);
    *(a1 + 1376) = fmax(*(a1 + 1376), v41);
  }

  if (v80)
  {
    ++*(a1 + 1384);
    *(a1 + 1392) = v81 + *(a1 + 1392);
    *(a1 + 1400) = fmax(*(a1 + 1400), v81);
  }

  time2 = *v53;
  Seconds = CMTimeGetSeconds(&time2);
  v83 = *(a1 + 1224);
  v84 = *(a1 + 1228);
  if (v84 + v83 <= 0)
  {
    v85 = -(-(v84 + v83) & 3);
  }

  else
  {
    v85 = (v84 + v83) & 3;
  }

  v86 = a1 + 32 * v85;
  *(v86 + 1232) = Seconds;
  *(v86 + 1240) = v41;
  *(v86 + 1256) = v79;
  *(v86 + 1248) = v81;
  v87 = v84 + 1;
  if (v87 > 4)
  {
    v88 = v83 + 1;
    v89 = -v88 < 0;
    v90 = -v88 & 3;
    v91 = v88 & 3;
    if (!v89)
    {
      v91 = -v90;
    }

    *(a1 + 1224) = v91;
  }

  else
  {
    *(a1 + 1228) = v87;
  }

  FigSimpleMutexUnlock();
  v92 = mach_absolute_time();
  if (FigHostTimeToNanoseconds() >= 0x165A0BC00)
  {
    *(a1 + 1192) = v92;
    if (timebase)
    {
      CMTimebaseGetTime(&time2, timebase);
      CMTimeGetSeconds(&time2);
      CMTimebaseGetRate(timebase);
    }

    vmc2GMFigLogDumpStats(a1);
  }

  if (timebase)
  {
    CFRelease(timebase);
  }

LABEL_173:
  if (v113)
  {
    CFRelease(v113);
  }

  if (pixelBufferOut)
  {
    CFRelease(pixelBufferOut);
  }

  if (v114)
  {
    CFRelease(v114);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (value)
  {
    CFRelease(value);
  }

  if (v109)
  {
    CFRelease(v109);
  }

  if (v38)
  {
    CFRelease(v38);
  }

  if (v35)
  {
    CFRelease(v35);
  }

  if (v101)
  {
    CFRelease(v101);
  }

  if (v107)
  {
    CFRelease(v107);
  }

  if (v36)
  {
    CFRelease(v36);
  }

  if (v110)
  {
    CFRelease(v110);
  }
}

void vmc2PostDecodeError(uint64_t a1)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetInt32();
  FigCFDictionarySetCMTime();
  v3 = *(a1 + 32);
  if (v3)
  {
    CMFormatDescriptionGetMediaSubType(v3);
    FigCFDictionarySetInt32();
  }

  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  ++*(a1 + 1160);
}

uint64_t vmc2CreateImageEnhancementFilter(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (*(a1 + 16))
  {
    return 0;
  }

  v8 = a1 + 888;
  v9 = 2 * a2;
  v10 = *(a1 + 888) >= (2 * a2) && *(a1 + 896) >= (2 * a3);
  v11 = *(a1 + 928);
  if (v11 == 2)
  {
    v10 = 1;
  }

  v12 = v11 != 1 && v10;
  if (!v12)
  {
    v9 = a2;
  }

  v13 = a3 << v12;
  v14 = *MEMORY[0x1E695E4D0];
  v15 = *(a1 + 920);
  if (*MEMORY[0x1E695E4D0] == v15)
  {
    v16 = 0;
  }

  else
  {
    v3 = 0;
    if (a2 > 0x500 || a3 > 0x2D0)
    {
      return v3;
    }

    v16 = @"Weak";
    if (a2 == 1280 && a3 >= 0x1F5)
    {
      v16 = @"StaticWeak";
      if (v9 == 1280 && v13 == a3)
      {
        return 0;
      }
    }
  }

  v27 = v16;
  v29.width = v9;
  v29.height = v13;
  propertyValue = CGSizeCreateDictionaryRepresentation(v29);
  v17 = *MEMORY[0x1E695E480];
  v18 = MEMORY[0x1E695E9D8];
  v19 = MEMORY[0x1E695E9E8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, *MEMORY[0x1E6984160], @"com.apple.videotoolbox.temporalfilter.SRSEnhancementFilter");
  v21 = CFDictionaryCreateMutable(v17, 0, v18, v19);
  FigCFDictionarySetInt32();
  CFDictionarySetValue(v21, *MEMORY[0x1E6984158], @"SRS");
  v22 = (a1 + 968);
  v23 = VTTemporalFilterSessionCreate();
  if (v23)
  {
    v3 = v23;
    v24 = propertyValue;
    goto LABEL_38;
  }

  *(a1 + 936) = a2;
  *(a1 + 944) = a3;
  *(v8 + 64) = vcvtq_u64_f64(*v8);
  v24 = propertyValue;
  if (propertyValue)
  {
    v25 = VTSessionSetProperty(*v22, *MEMORY[0x1E6984138], propertyValue);
    if (v25)
    {
      v3 = v25;
      vmc2CreateImageEnhancementFilter_cold_1();
LABEL_38:
      vmc2FinishAndDestroyImageEnhancementFilter(a1);
      if (!v24)
      {
        goto LABEL_31;
      }

      goto LABEL_30;
    }
  }

  v26 = VTSessionSetProperty(*v22, *MEMORY[0x1E6984118], *MEMORY[0x1E695E4C0]);
  if (v26)
  {
    v3 = v26;
    vmc2CreateImageEnhancementFilter_cold_2();
    goto LABEL_38;
  }

  if (v14 == v15)
  {
    v3 = 0;
  }

  else
  {
    v3 = VTSessionSetProperty(*v22, *MEMORY[0x1E6984120], v27);
    if (v3)
    {
      vmc2CreateImageEnhancementFilter_cold_3();
      goto LABEL_38;
    }
  }

  if (propertyValue)
  {
LABEL_30:
    CFRelease(v24);
  }

LABEL_31:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  return v3;
}

void vmc2FinishOutputFrame(char *a1, __CVBuffer *a2)
{
  v3 = *a1;
  if (!v3[16])
  {
    v7 = *(a1 + 8);
    v8 = *(a1 + 3);
    vmcAddPresentationTimeAsAttachment(a2);
    v5 = *a1;
    v6 = *(a1 + 8);
    v7 = *(a1 + 8);
    v8 = *(a1 + 3);
    vmc2InvokeOutputCallback_OutputImage(v5, a2, 0, 1, 0, &v7, v6);
    v3 = *a1;
  }

  CFRelease(v3);

  free(a1);
}

void vmcAddPresentationTimeAsAttachment(__CVBuffer *a1)
{
  v2 = CMTimeCopyAsCVBufferTimeDictionary();
  if (v2)
  {
    v3 = v2;
    CVBufferSetAttachment(a1, *MEMORY[0x1E6965C60], v2, kCVAttachmentMode_ShouldPropagate);
    CFRelease(v3);
  }
}

uint64_t FigSampleAttachmentCollectionRulesAttachAttachmentsToPixelBuffer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  VTable = CMBaseObjectGetVTable();
  v8 = *(VTable + 16);
  result = VTable + 16;
  v9 = *(v8 + 40);
  if (v9)
  {

    return v9(a1, a2, a3);
  }

  return result;
}

uint64_t vmc2InvokeOutputCallback_OutputImage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6, uint64_t a7)
{
  FigReadWriteLockLockForRead();
  if (*(a1 + 249))
  {
    v14 = *(a1 + 200);
    if (v14)
    {
      v15 = *(a1 + 152);
      v17 = *a6;
      v18 = *(a6 + 2);
      v14(v15, a2, a3, a4, a5, &v17, a7);
    }
  }

  else
  {
    vmc2InvokeOutputCallback_OutputImage_cold_1();
  }

  return FigReadWriteLockUnlockForRead();
}

void vmcTemporalFilterOutput(uint64_t a1, int a2, uint64_t a3, CMTime *a4, __CVBuffer *a5)
{
  cf = 0;
  v16 = 0;
  if (!*(a1 + 16))
  {
    v14 = *a4;
    vmc2CopyFrameBaggageForPTS(a1, &v14, &v16, &v16 + 1, &cf);
    if (a2 || !a5)
    {
      if (!cf)
      {
        fig_log_get_emitter();
        FigSignalErrorAtGM();
LABEL_8:
        if (cf)
        {
          CFRelease(cf);
        }

        return;
      }

      v13 = (v16 >> 2) & 1;
      v14 = *a4;
      vmcAddPresentationTimeAsAttachment(cf);
      v11 = cf;
      v9 = HIDWORD(v16);
      v14 = *a4;
      v10 = a1;
      v12 = v13;
    }

    else
    {
      v14 = *a4;
      vmcAddPresentationTimeAsAttachment(a5);
      v9 = HIDWORD(v16);
      v14 = *a4;
      v10 = a1;
      v11 = a5;
      v12 = 1;
    }

    vmc2InvokeOutputCallback_OutputImage(v10, v11, 0, v12, 0, &v14.value, v9);
    goto LABEL_8;
  }
}

void vmc2CopyFrameBaggageForPTS(uint64_t a1, CMTime *a2, _DWORD *a3, _DWORD *a4, const __CFDictionary **a5)
{
  v21 = 0;
  v22[0] = &v21;
  v22[1] = 0x2000000000;
  v23 = 0;
  valuePtr = 0.0;
  v20 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2000000000;
  v18 = 0;
  if (*(a1 + 976))
  {
    if ((a2->flags & 0x1D) == 1)
    {
      time = *a2;
      valuePtr = CMTimeGetSeconds(&time);
      v9 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloat64Type, &valuePtr);
      v10 = *(a1 + 984);
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 0x40000000;
      v13[2] = __vmc2CopyFrameBaggageForPTS_block_invoke;
      v13[3] = &unk_1E7479AD8;
      v13[6] = a1;
      v13[7] = v9;
      v13[4] = &v15;
      v13[5] = &v21;
      dispatch_sync(v10, v13);
      FigCFDictionaryGetInt32IfPresent();
      FigCFDictionaryGetInt32IfPresent();
      Value = v16[3];
      if (Value)
      {
        Value = CFDictionaryGetValue(Value, @"OriginalFrame");
      }

      if (a3)
      {
        goto LABEL_6;
      }

      goto LABEL_7;
    }

    vmc2CopyFrameBaggageForPTS_cold_1(v22);
  }

  else
  {
    vmc2CopyFrameBaggageForPTS_cold_2(v22);
  }

  v9 = 0;
  Value = 0;
  if (a3)
  {
LABEL_6:
    *a3 = v20;
  }

LABEL_7:
  if (a4)
  {
    *a4 = HIDWORD(v20);
  }

  if (a5)
  {
    if (Value)
    {
      Value = CFRetain(Value);
    }

    *a5 = Value;
  }

  if (v9)
  {
    CFRelease(v9);
  }

  v12 = v16[3];
  if (v12)
  {
    CFRelease(v12);
  }

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);
}

void __vmc2CopyFrameBaggageForPTS_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 48) + 976);
  if (v2)
  {
    *(*(*(a1 + 32) + 8) + 24) = CFDictionaryGetValue(v2, *(a1 + 56));
  }

  v3 = *(*(*(a1 + 32) + 8) + 24);
  if (v3)
  {
    CFRetain(v3);
    v4 = *(a1 + 56);
    v5 = *(*(a1 + 48) + 976);

    CFDictionaryRemoveValue(v5, v4);
  }

  else
  {
    fig_log_get_emitter();
    *(*(*(a1 + 40) + 8) + 24) = FigSignalErrorAtGM();
  }
}

void __vmc2StoreFrameBaggageForPTS_block_invoke(uint64_t a1)
{
  if (*(*(a1 + 40) + 976))
  {
    CFDictionaryAddValue(*(*(a1 + 40) + 976), *(a1 + 48), *(a1 + 56));
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = -12824;
  }
}

void vmc2UpdateTroubleMonitor2(uint64_t a1, int a2, int a3, int a4, int a5)
{
  FigSimpleMutexLock();
  v10 = *(a1 + 584);
  if (!v10)
  {
    FigSimpleMutexUnlock();
    v11 = 0;
    goto LABEL_6;
  }

  v11 = CFRetain(v10);
  FigSimpleMutexUnlock();
  if (!v11)
  {
LABEL_6:
    v12 = 1;
    goto LABEL_7;
  }

  if (CMTimebaseGetRate(v11) == 0.0)
  {
    vmc2ResetTroubleMonitorTimers(a1);
    vmc2ResetQualityOfService(a1);
LABEL_47:

    CFRelease(v11);
    return;
  }

  v12 = 0;
LABEL_7:
  FigSimpleMutexLock();
  if (!a2 || !a3)
  {
    *(a1 + 640) = 0;
LABEL_21:
    *(a1 + 672) = 0;
    goto LABEL_22;
  }

  if (*(a1 + 640))
  {
    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    if (a5 && UpTimeNanoseconds >= *(a1 + 648))
    {
      ++*(a1 + 1104);
      if (*(a1 + 625))
      {
        vmc2AdjustQualityOfService(a1, 1);
      }
    }

    else if (*(a1 + 640))
    {
      goto LABEL_18;
    }
  }

  *(a1 + 640) = 1;
  *(a1 + 648) = FigGetUpTimeNanoseconds() + 500000000;
LABEL_18:
  if (*(a1 + 672))
  {
    if (FigGetUpTimeNanoseconds() >= *(a1 + 680))
    {
      *(a1 + 656) = 0;
      goto LABEL_21;
    }
  }

  else if (*(a1 + 656))
  {
    *(a1 + 672) = 1;
    *(a1 + 680) = FigGetUpTimeNanoseconds() + 250000000;
  }

LABEL_22:
  if (*(a1 + 656) && a5 && !*(a1 + 640) && FigGetUpTimeNanoseconds() >= *(a1 + 664))
  {
    if (*(a1 + 625))
    {
      vmc2AdjustQualityOfService(a1, -1);
    }

    *(a1 + 656) = 0;
  }

  if (a4 && !*(a1 + 656) && *(a1 + 608) >= 1)
  {
    *(a1 + 656) = 1;
    *(a1 + 664) = FigGetUpTimeNanoseconds() + 2000000000;
  }

  if (a5 && *(a1 + 688) && FigGetUpTimeNanoseconds() >= *(a1 + 696))
  {
    if (*(a1 + 625))
    {
      vmc2AdjustQualityOfService(a1, -1);
    }

    *(a1 + 688) = 0;
  }

  if (a2)
  {
    *(a1 + 688) = 0;
  }

  else if (!*(a1 + 640) && !*(a1 + 656) && !*(a1 + 688) && *(a1 + 608) >= 1)
  {
    *(a1 + 688) = 1;
    *(a1 + 696) = FigGetUpTimeNanoseconds() + 750000000;
  }

  FigSimpleMutexUnlock();
  if ((v12 & 1) == 0)
  {
    goto LABEL_47;
  }
}

void vmc2AdjustQualityOfService(uint64_t a1, int a2)
{
  v25[16] = *MEMORY[0x1E69E9840];
  if (a2 >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = -a2;
  }

  if (v3 == 1)
  {
    v4 = a2;
  }

  else
  {
    v4 = (a2 >> 31) | 1;
  }

  v5 = *(a1 + 600);
  if (v5)
  {
    v7 = *(a1 + 608);
    v8 = *(a1 + 616) <= *(a1 + 620) ? *(a1 + 620) : *(a1 + 616);
    if ((a2 & 0x80000000) == 0 || v7)
    {
      Count = CFArrayGetCount(v5);
      if (a2 < 0 || Count != v7 + 1)
      {
        v10 = (a1 + 612);
        CFArrayGetValueAtIndex(*(a1 + 600), *(a1 + 608));
        v11 = *MEMORY[0x1E6983A50];
        v12 = FigCFEqual();
        if (v8 && v12)
        {
          v13 = *v10 - v4;
          *v10 = v13;
          if (v13 >= v8)
          {
            *(a1 + 608) += v4;
            *(a1 + 612) = v8;
            v13 = v8;
          }

          if (v13 < 0)
          {
            *(a1 + 608) = (*(a1 + 608) + v4);
          }
        }

        else
        {
          v14 = *(a1 + 608) + v4;
          *(a1 + 608) = v14;
          CFArrayGetValueAtIndex(*(a1 + 600), v14);
          if (FigCFEqual())
          {
            if (v8)
            {
              if (a2 < 0)
              {
                *v10 = 0;
              }

              else
              {
                *v10 = v8 - 1;
              }
            }

            else
            {
              *(a1 + 608) += v4;
            }
          }
        }

        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        CFArrayGetValueAtIndex(*(a1 + 600), *(a1 + 608));
        if (FigCFEqual())
        {
          v16 = *MEMORY[0x1E695E480];
          v17 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, (a1 + 612));
          VTSessionSetProperty(*(a1 + 64), v11, v17);
          if (v17)
          {
            CFRelease(v17);
          }

          if (a2 < 0)
          {
            CFArrayGetValueAtIndex(*(a1 + 600), v7);
            if (!FigCFEqual())
            {
              v18 = *(a1 + 608);
              if (v18 < 1)
              {
                v25[0] = 0x3FF0000000000000;
                v24 = CFNumberCreate(v16, kCFNumberDoubleType, v25);
                VTSessionSetProperty(*(a1 + 64), *MEMORY[0x1E6983970], *MEMORY[0x1E6983A38]);
                VTSessionSetProperty(*(a1 + 64), *MEMORY[0x1E69839A8], v24);
                if (v24)
                {
                  CFRelease(v24);
                }
              }

              else
              {
                v19 = *(a1 + 64);
                ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 600), (v18 - 1));
                VTSessionSetProperties(v19, ValueAtIndex);
              }
            }

LABEL_38:
            ++*(a1 + 1112);
LABEL_39:
            v23 = *(a1 + 608);
            if (v23 > *(a1 + 1116))
            {
              *(a1 + 1116) = v23;
            }

            return;
          }
        }

        else
        {
          v21 = *(a1 + 64);
          v22 = CFArrayGetValueAtIndex(*(a1 + 600), *(a1 + 608));
          VTSessionSetProperties(v21, v22);
          if (a2 < 0)
          {
            CFArrayGetValueAtIndex(*(a1 + 600), v7);
            if (FigCFEqual())
            {
              VTSessionSetProperty(*(a1 + 64), v11, 0);
            }

            goto LABEL_38;
          }
        }

        ++*(a1 + 1108);
        goto LABEL_39;
      }
    }
  }
}

uint64_t vmc2GetWaterLevelState(uint64_t a1)
{
  v2 = *(a1 + 524);
  if (*(a1 + 528) != v2)
  {
    FigMemoryBarrier();
    v12 = **&MEMORY[0x1E6960C70];
    FigReadWriteLockLockForRead();
    if (*(a1 + 249))
    {
      v4 = *(a1 + 168);
      if (v4)
      {
        memset(&v15, 0, sizeof(v15));
        v4(&v15, *(a1 + 152));
        v12 = v15;
      }

      FigSimpleMutexLock();
      v5 = *(a1 + 1520);
      if (v5)
      {
        v6 = *(*(CMBaseObjectGetVTable() + 16) + 32);
        if (v6)
        {
          v7 = v6(v5) == 0;
        }

        else
        {
          v7 = 0;
        }

        if ((v12.flags & 0x1D) == 1)
        {
          memset(&v15, 0, sizeof(v15));
          v8 = *(a1 + 1520);
          v9 = *(*(CMBaseObjectGetVTable() + 16) + 16);
          if (v9)
          {
            v9(&v15, v8);
          }

          else
          {
            v15 = **&MEMORY[0x1E6960CC0];
          }

          lhs = v12;
          rhs = v15;
          CMTimeAdd(&v12, &lhs, &rhs);
        }
      }

      else
      {
        v7 = 0;
      }

      FigSimpleMutexUnlock();
      v10 = !v7;
    }

    else
    {
      vmc2GetWaterLevelState_cold_1();
      v10 = 1;
    }

    FigReadWriteLockUnlockForRead();
    v15 = v12;
    FigSimpleMutexLock();
    *(a1 + 544) = v15;
    if (v10)
    {
      lhs = v15;
      rhs = *(a1 + 496);
      if (CMTimeCompare(&lhs, &rhs) < 0)
      {
        v3 = 0;
        *(a1 + 568) = 0;
        goto LABEL_27;
      }

      lhs = v15;
      rhs = *(a1 + 472);
      if (CMTimeCompare(&lhs, &rhs) < 0)
      {
        v3 = *(a1 + 568);
        if (v3 == 2)
        {
          v3 = 3;
        }

        else
        {
          if (v3)
          {
            goto LABEL_27;
          }

          v3 = 1;
        }

        *(a1 + 568) = v3;
        goto LABEL_27;
      }
    }

    v3 = 2;
    *(a1 + 568) = 2;
    *(a1 + 572) = 0;
LABEL_27:
    *(a1 + 528) = v2;
    goto LABEL_28;
  }

  FigSimpleMutexLock();
  v3 = *(a1 + 568);
LABEL_28:
  FigSimpleMutexUnlock();
  return v3;
}

uint64_t vmc2RecalculateUpcomingImageTimes2(uint64_t result)
{
  *(result + 444) = 0;
  if (!*(result + 16))
  {
    v2 = result;
    FigSimpleMutexLock();
    vmc2RecalculateUpcomingImageTimes(v2);

    return FigSimpleMutexUnlock();
  }

  return result;
}

uint64_t vmcGetCompressedFrameOutputMode(opaqueCMSampleBuffer *a1)
{
  SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(a1, 0);
  if (SampleAttachmentsArray)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(SampleAttachmentsArray, 0);
    if (ValueAtIndex)
    {
      FigCFDictionaryGetBooleanIfPresent();
      FigCFDictionaryGetBooleanIfPresent();
      FigCFDictionaryGetBooleanIfPresent();
      if (CFDictionaryGetValue(ValueAtIndex, *MEMORY[0x1E6962DD0]))
      {
        ValueAtIndex = 4;
      }

      else
      {
        ValueAtIndex = 0;
      }
    }
  }

  else
  {
    ValueAtIndex = 0;
  }

  v4 = CMGetAttachment(a1, *MEMORY[0x1E69604B0], 0);
  if (v4)
  {
    v5 = v4;
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(v5))
    {
      if (CFBooleanGetValue(v5))
      {
        v7 = CMGetAttachment(a1, *MEMORY[0x1E6960480], 0);
        if (v7)
        {
          v8 = v7;
          v9 = CFBooleanGetTypeID();
          if (v9 == CFGetTypeID(v8))
          {
            if (CFBooleanGetValue(v8))
            {
              return 2;
            }

            else
            {
              return ValueAtIndex;
            }
          }
        }
      }
    }
  }

  return ValueAtIndex;
}

void vmc2UpdateCPECryptor(uint64_t *a1)
{
  v1 = *a1;
  Decryptor = FigSampleBufferGetDecryptor();
  v3 = *(v1 + 808);
  if (Decryptor == v3)
  {
    return;
  }

  v4 = Decryptor;
  if (Decryptor)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    dispatch_resume(*(v1 + 824));
    *(v1 + 832) = 1;
    v3 = *(v1 + 808);
LABEL_12:
    *(v1 + 808) = v4;
    CFRetain(v4);
    if (!v3)
    {
      return;
    }

    goto LABEL_13;
  }

  if (Decryptor)
  {
    goto LABEL_12;
  }

  if (v3)
  {
    dispatch_suspend(*(v1 + 824));
    *(v1 + 832) = 0;
    v3 = *(v1 + 808);
  }

  *(v1 + 808) = 0;
  if (v3)
  {
LABEL_13:

    CFRelease(v3);
  }
}

_DWORD *vmcCreateSourceFrameInfo(uint64_t a1, int a2, opaqueCMSampleBuffer *a3, int a4)
{
  v7 = malloc_type_calloc(0x58uLL, 1uLL, 0x10E004093C53091uLL);
  FormatDescription = CMSampleBufferGetFormatDescription(a3);
  if (v7)
  {
    v9 = FormatDescription;
    *v7 = a2;
    v7[1] = a4;
    SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(a3, 0);
    if (SampleAttachmentsArray && (ValueAtIndex = CFArrayGetValueAtIndex(SampleAttachmentsArray, 0)) != 0)
    {
      Value = CFDictionaryGetValue(ValueAtIndex, *MEMORY[0x1E6962DD0]);
      v13 = Value;
      if (Value)
      {
        CFRetain(Value);
      }
    }

    else
    {
      v13 = 0;
    }

    *(v7 + 1) = v13;
    v14 = CMGetAttachment(a3, *MEMORY[0x1E6962E28], 0);
    *(v7 + 2) = v14;
    if (v14)
    {
      CFRetain(v14);
    }

    v15 = CMGetAttachment(a3, *MEMORY[0x1E6962DE0], 0);
    *(v7 + 3) = v15;
    if (v15)
    {
      CFRetain(v15);
    }

    v16 = CMGetAttachment(a3, *MEMORY[0x1E6962E48], 0);
    *(v7 + 4) = v16;
    if (v16)
    {
      CFRetain(v16);
    }

    v17 = CMGetAttachment(a3, *MEMORY[0x1E6962E40], 0);
    *(v7 + 5) = v17;
    if (v17)
    {
      CFRetain(v17);
    }

    v18 = CMGetAttachment(a3, *MEMORY[0x1E6960478], 0);
    *(v7 + 6) = v18;
    if (v18)
    {
      CFRetain(v18);
    }

    *(v7 + 8) = mach_absolute_time();
    if (v9)
    {
      FigSimpleMutexLock();
      *(v7 + 10) = FigCFDictionaryGetValue();
      FigSimpleMutexUnlock();
    }

    v19 = *(v7 + 10);
    if (v19)
    {
      CFRetain(v19);
    }

    v20 = CMSampleBufferGetSampleAttachmentsArray(a3, 0);
    if (v20)
    {
      v20 = CFArrayGetValueAtIndex(v20, 0);
      if (v20)
      {
        v20 = CFDictionaryGetValue(v20, *MEMORY[0x1E6960458]);
      }
    }

    *(v7 + 72) = *MEMORY[0x1E695E4D0] != v20;
  }

  return v7;
}

void vmcCreateAttachmentsDictionaryForSourceFrameInfo(uint64_t a1, uint64_t a2, uint64_t a3)
{
  cf = 0;
  if (a1)
  {
    if (a2)
    {
      v4 = *(a1 + 1096);
      if (v4 && (v6 = *(*(CMBaseObjectGetVTable() + 16) + 32)) != 0)
      {
        v6(v4, a3, &cf);
        v7 = cf;
        v8 = *(a2 + 56);
        *(a2 + 56) = cf;
        if (v7)
        {
          CFRetain(v7);
        }
      }

      else
      {
        v8 = *(a2 + 56);
        *(a2 + 56) = 0;
      }

      if (v8)
      {
        CFRelease(v8);
      }
    }

    else
    {
      vmcCreateAttachmentsDictionaryForSourceFrameInfo_cold_1();
    }
  }

  else
  {
    vmcCreateAttachmentsDictionaryForSourceFrameInfo_cold_2();
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t vmc2RebuildDecompressionSession(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    VTDecompressionSessionWaitForAsynchronousFrames(v2);
  }

  FigSimpleMutexLock();
  vmc2RemoveDecompressionSession(a1);
  v3 = vmc2BuildDecompressionSession(a1);
  FigSimpleMutexUnlock();
  return v3;
}

CFTypeRef __vmc2DequeueAndDecodeFrame_block_invoke(uint64_t a1)
{
  result = *(*(a1 + 40) + 968);
  if (result)
  {
    result = CFRetain(result);
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t FigImageQueueGaugeSetEnqueueingComplete(uint64_t a1)
{
  VTable = CMBaseObjectGetVTable();
  v4 = *(VTable + 16);
  result = VTable + 16;
  v5 = *(v4 + 24);
  if (v5)
  {

    return v5(a1, 1);
  }

  return result;
}

void *__vmc2FinishAndDestroyImageEnhancementFilter_block_invoke(void *result)
{
  *(*(result[4] + 8) + 24) = *(result[6] + 968);
  *(result[6] + 968) = 0;
  *(*(result[5] + 8) + 24) = *(result[6] + 976);
  *(result[6] + 976) = 0;
  return result;
}

uint64_t FigVisualContextCreateBasic(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  cf = 0;
  v4 = lvcCreateCommon(a1, 0, 0, &cf);
  if (v4)
  {
    v11 = v4;
    goto LABEL_20;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = MEMORY[0x1E6960C70];
  *(DerivedStorage + 128) = *MEMORY[0x1E6960C70];
  *(DerivedStorage + 144) = *(v6 + 16);
  if (!FigCFDictionaryGetDoubleIfPresent())
  {
LABEL_12:
    v11 = 0;
    *a3 = cf;
    return v11;
  }

  v7 = 0.0;
  if (0.0 < 0.005)
  {
    v7 = 0.005;
  }

  CMTimeMakeWithSeconds(&v16, v7, 1000);
  *(DerivedStorage + 128) = v16;
  snprintf(&v16, 0x64uLL, "com.apple.coremedia.localvisualcontext.autoprune.%p", cf);
  if (sCreateSharedAutoPruneDispatchQueueOnce != -1)
  {
    FigVisualContextCreateBasic_cold_1();
  }

  if (sLVCSharedAutoPruneDispatchQueue)
  {
    v8 = dispatch_queue_create_with_target_V2(&v16, 0, sLVCSharedAutoPruneDispatchQueue);
    *(DerivedStorage + 152) = v8;
    if (v8)
    {
      v9 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v8);
      *(DerivedStorage + 160) = v9;
      if (v9)
      {
        v10 = FigCFWeakReferenceHolderCreateWithReferencedObject();
        if (v10)
        {
          dispatch_set_context(*(DerivedStorage + 160), v10);
          *(DerivedStorage + 184) = voucher_copy();
          dispatch_source_set_event_handler_f(*(DerivedStorage + 160), lvcAutoPrune);
          dispatch_source_set_cancel_handler_f(*(DerivedStorage + 160), lvcCancelAutoPruneTimer);
          dispatch_resume(*(DerivedStorage + 160));
          goto LABEL_12;
        }

        v13 = 534;
      }

      else
      {
        v13 = 532;
      }

      goto LABEL_19;
    }
  }

  else
  {
    FigVisualContextCreateBasic_cold_2(DerivedStorage);
  }

  v13 = 530;
LABEL_19:
  FigVisualContextCreateBasic_cold_3(v13, &v16, &v15);
  v11 = v15;
LABEL_20:
  if (cf)
  {
    CFRelease(cf);
  }

  return v11;
}

uint64_t lvcCreateCommon(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (!a4)
  {
    lvcCreateCommon_cold_2(&v13);
    return v13;
  }

  FigVisualContextGetClassID();
  v7 = CMDerivedObjectCreate();
  if (v7)
  {
    return v7;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = FigReadWriteLockCreate();
  DerivedStorage[1] = v9;
  if (!v9)
  {
    lvcCreateCommon_cold_1(&v13);
    return v13;
  }

  DerivedStorage[21] = a2;
  DerivedStorage[22] = a3;
  if (a3)
  {
    v10 = *(a3 + 8);
    if (v10)
    {
      v7 = v10(a2, 0);
      if (v7)
      {
        return v7;
      }
    }
  }

  v11 = 0;
  *a4 = 0;
  return v11;
}

void lvcAutoPrune(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E6960C70];
  value = *MEMORY[0x1E6960C70];
  timescale = *(MEMORY[0x1E6960C70] + 8);
  if (a1)
  {
    v2 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v2)
    {
      v3 = v2;
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      if (!*DerivedStorage)
      {
        v5 = DerivedStorage;
        os_retain(*(DerivedStorage + 184));
        voucher_adopt();
        FigReadWriteLockLockForRead();
        v6 = *(v5 + 120);
        if (v6)
        {
          CMTimebaseGetTime(&v11, v6);
          value = v11.value;
          flags = v11.flags;
          timescale = v11.timescale;
          epoch = v11.epoch;
        }

        else
        {
          flags = *(v1 + 12);
          epoch = *(v1 + 16);
        }

        FigReadWriteLockUnlockForRead();
        if ((flags & 0x1D) == 1)
        {
          v9 = *MEMORY[0x1E695E480];
          v11.value = value;
          v11.timescale = timescale;
          v11.flags = flags;
          v11.epoch = epoch;
          lvcCopyImageForTime(v3, v9, &v11.value, 5, 0, 0, 0);
        }

        v10 = voucher_adopt();
        os_release(v10);
      }

      CFRelease(v3);
    }
  }
}

void lvcCancelAutoPruneTimer(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t lvcInvalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v3 = DerivedStorage;
    *DerivedStorage = 1;
    v4 = *(DerivedStorage + 176);
    if (v4)
    {
      v5 = *(v4 + 16);
      if (v5)
      {
        v5(*(DerivedStorage + 168), a1);
      }
    }

    if (*(v3 + 120))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
    }

    v6 = *(v3 + 160);
    if (v6)
    {
      dispatch_source_cancel(v6);
    }

    v7 = *(v3 + 152);
    if (v7)
    {
      dispatch_sync_f(v7, 0, lvcNoop);
      dispatch_release(*(v3 + 152));
      *(v3 + 152) = 0;
    }

    FigReadWriteLockLockForWrite();
    *(v3 + 16) = 0;
    *(v3 + 32) = 0;
    *(v3 + 48) = 0;
    v8 = *(v3 + 120);
    if (v8)
    {
      CFRelease(v8);
    }

    *(v3 + 120) = 0;
    *(v3 + 88) = 0;
    *(v3 + 96) = 0;
    *(v3 + 80) = 0;
    v9 = *(v3 + 112);
    if (v9)
    {
      CFRelease(v9);
      *(v3 + 112) = 0;
    }

    FigReadWriteLockUnlockForWrite();
  }

  return 0;
}

uint64_t lvcFinalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  lvcInvalidate(a1);
  v3 = *(DerivedStorage + 160);
  if (v3)
  {
    dispatch_release(v3);
    *(DerivedStorage + 160) = 0;
  }

  v4 = *(DerivedStorage + 184);
  if (v4)
  {
    os_release(v4);
    *(DerivedStorage + 184) = 0;
  }

  return FigReadWriteLockDestroy();
}

__CFString *lvcCopyDebugDesc(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  v5 = CFGetAllocator(a1);
  CFStringAppendFormat(Mutable, 0, @"<FigVisualContext %p [%p]>{imageAvailableImmediate:%p, imageAvailableSequential:%p, noMoreImages:%p, timebase:%p, isNewImageAvailable:%p, copyImageForTime:%p, getEarliestSequentialImageTime:%p}", a1, v5, DerivedStorage[2], DerivedStorage[4], DerivedStorage[6], DerivedStorage[15], DerivedStorage[10], DerivedStorage[11], DerivedStorage[12]);
  return Mutable;
}

uint64_t lvcCopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (*CMBaseObjectGetDerivedStorage())
  {
    lvcCopyProperty_cold_1(&v7);
    return v7;
  }

  else if (FigCFEqual())
  {
    UInt64 = FigCFNumberCreateUInt64();
    result = 0;
    *a4 = UInt64;
  }

  else
  {
    return 4294954512;
  }

  return result;
}

uint64_t lvcTimebaseRateChanged()
{
  CMBaseObjectGetDerivedStorage();
  FigReadWriteLockLockForRead();
  lvcUpdateAutoPruneTimer();

  return FigReadWriteLockUnlockForRead();
}

void lvcUpdateAutoPruneTimer()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 160);
  if (v1)
  {
    if (*(DerivedStorage + 120))
    {
      Rate = CMTimebaseGetRate(*(DerivedStorage + 120));
      if (Rate != 0.0)
      {
        v4 = *(DerivedStorage + 128);
        v3 = (CMTimeGetSeconds(&v4) * 1000000000.0 / fabs(Rate));
        dispatch_source_set_timer(*(DerivedStorage + 160), 0, v3, v3 / 10);
        return;
      }

      v1 = *(DerivedStorage + 160);
    }

    dispatch_source_set_timer(v1, 0xFFFFFFFFFFFFFFFFLL, 0, 0);
  }
}

uint64_t lvcSetImageAvailableImmediateCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigReadWriteLockLockForWrite();
  if (a2 && *(DerivedStorage + 16))
  {
    fig_log_get_emitter();
    v6 = FigSignalErrorAtGM();
  }

  else
  {
    v6 = 0;
    *(DerivedStorage + 16) = a2;
    *(DerivedStorage + 24) = a3;
  }

  FigReadWriteLockUnlockForWrite();
  return v6;
}

uint64_t lvcSetImageAvailableSequentialCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigReadWriteLockLockForWrite();
  if (a2 && *(DerivedStorage + 32))
  {
    fig_log_get_emitter();
    v6 = FigSignalErrorAtGM();
  }

  else
  {
    v6 = 0;
    *(DerivedStorage + 32) = a2;
    *(DerivedStorage + 40) = a3;
  }

  FigReadWriteLockUnlockForWrite();
  return v6;
}

uint64_t lvcSetNoMoreImagesCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigReadWriteLockLockForWrite();
  if (a2 && *(DerivedStorage + 48))
  {
    fig_log_get_emitter();
    v6 = FigSignalErrorAtGM();
  }

  else
  {
    v6 = 0;
    *(DerivedStorage + 48) = a2;
    *(DerivedStorage + 56) = a3;
  }

  FigReadWriteLockUnlockForWrite();
  return v6;
}

uint64_t lvcSetBecameEmptyCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigReadWriteLockLockForWrite();
  if (a2 && *(DerivedStorage + 64))
  {
    fig_log_get_emitter();
    v6 = FigSignalErrorAtGM();
  }

  else
  {
    v6 = 0;
    *(DerivedStorage + 64) = a2;
    *(DerivedStorage + 72) = a3;
  }

  FigReadWriteLockUnlockForWrite();
  return v6;
}

uint64_t lvcIsNewImageAvailable(uint64_t a1, __int128 *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if ((*(a2 + 3) & 0x1D) != 1)
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM();
    return 0;
  }

  v5 = DerivedStorage;
  FigReadWriteLockLockForRead();
  if (!*(v5 + 80) || !*(v5 + 112) || (v6 = FigCFWeakReferenceHolderCopyReferencedObject()) == 0)
  {
    FigReadWriteLockUnlockForRead();
    return 0;
  }

  v7 = v6;
  v8 = *(v5 + 80);
  v11 = *a2;
  v12 = *(a2 + 2);
  v9 = v8(a1, &v11, v6);
  FigReadWriteLockUnlockForRead();
  CFRelease(v7);
  return v9;
}

uint64_t lvcCopyImageForTime(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, CVBufferRef *a5, CFTypeRef *a6, uint64_t a7)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  buffer = 0;
  v29 = *MEMORY[0x1E6960C70];
  v30 = *(MEMORY[0x1E6960C70] + 16);
  if ((*(a3 + 3) & 0x1D) == 1)
  {
    v15 = DerivedStorage;
    if (a5)
    {
      *a5 = 0;
    }

    FigReadWriteLockLockForRead();
    if (v15[11] && v15[14])
    {
      v16 = FigCFWeakReferenceHolderCopyReferencedObject();
      if (v16)
      {
        v17 = v15[11];
        if (a5)
        {
          p_buffer = &buffer;
        }

        else
        {
          p_buffer = 0;
        }

        if (a6)
        {
          p_cf = &cf;
        }

        else
        {
          p_cf = 0;
        }

        if (a7)
        {
          v20 = &v29;
        }

        else
        {
          v20 = 0;
        }

        v27 = *a3;
        v28 = *(a3 + 2);
        v21 = v17(a1, a2, &v27, a4, p_buffer, p_cf, v20, v16);
        if (!a5)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v21 = 0;
        if (!a5)
        {
          goto LABEL_28;
        }
      }
    }

    else
    {
      v21 = 0;
      v16 = 0;
      if (!a5)
      {
        goto LABEL_28;
      }
    }

    if (!v21)
    {
      v23 = v15[22];
      if (v23)
      {
        v24 = *(v23 + 24);
        if (v24)
        {
          v25 = v15[21];
          v27 = v29;
          v28 = v30;
          v21 = v24(v25, a2, buffer, a5, cf, a6, &v27, a7);
LABEL_34:
          FigReadWriteLockUnlockForRead();
          if (v16)
          {
            CFRelease(v16);
          }

          if (buffer)
          {
            CVBufferRelease(buffer);
          }

          if (cf)
          {
            CFRelease(cf);
          }

          return v21;
        }
      }

      v26 = a7 != 0;
      goto LABEL_29;
    }

LABEL_28:
    v26 = a7 != 0;
    if (!a5)
    {
LABEL_30:
      if (a6)
      {
        *a6 = cf;
        cf = 0;
      }

      if (v26)
      {
        *a7 = v29;
        *(a7 + 16) = v30;
      }

      goto LABEL_34;
    }

LABEL_29:
    *a5 = buffer;
    buffer = 0;
    goto LABEL_30;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t lvcConvertHostTimeToImageTime(uint64_t a1, uint64_t a2, CMTime *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  memset(&v14, 0, sizeof(v14));
  if (a3 && ((v6 = DerivedStorage, !a2) || (*(a2 + 64) & 2) != 0))
  {
    FigReadWriteLockLockForRead();
    v7 = *(v6 + 120);
    if (v7)
    {
      if (a2)
      {
        CMClockMakeHostTimeFromSystemUnits(&v14, *(a2 + 16));
        HostTimeClock = CMClockGetHostTimeClock();
        v9 = *(v6 + 120);
        v12 = v14;
        CMSyncConvertTime(&v13, &v12, HostTimeClock, v9);
      }

      else
      {
        CMTimebaseGetTime(&v13, v7);
      }

      v11 = 0;
      *a3 = v13;
    }

    else
    {
      v11 = 4294954481;
    }

    FigReadWriteLockUnlockForRead();
    return v11;
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }
}

uint64_t lvcGetEarliestSequentialImageTimeAfterTime(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, _BYTE *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a4)
  {
    v11 = MEMORY[0x1E6960C70];
    *a4 = *MEMORY[0x1E6960C70];
    *(a4 + 16) = *(v11 + 16);
  }

  if (a5)
  {
    *a5 = 0;
  }

  FigReadWriteLockLockForRead();
  if (!*(DerivedStorage + 96) || !*(DerivedStorage + 112))
  {
    v15 = 4294954483;
LABEL_10:
    FigReadWriteLockUnlockForRead();
    return v15;
  }

  v12 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v12)
  {
    v15 = 0;
    goto LABEL_10;
  }

  v13 = v12;
  v14 = *(DerivedStorage + 96);
  v17 = *a3;
  v18 = *(a3 + 2);
  v15 = v14(a1, a2, &v17, a4, a5, v12);
  FigReadWriteLockUnlockForRead();
  CFRelease(v13);
  return v15;
}

uint64_t lvcTask()
{
  result = CMBaseObjectGetDerivedStorage();
  v1 = *(result + 176);
  if (v1)
  {
    v2 = *(v1 + 32);
    if (v2)
    {
      v3 = *(result + 168);

      return v2(v3);
    }
  }

  return result;
}

uint64_t lvcImageAvailableImmediate(uint64_t a1, __int128 *a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if ((*(a2 + 3) & 0x1D) == 1)
  {
    v7 = DerivedStorage;
    FigReadWriteLockLockForRead();
    v8 = *(v7 + 16);
    if (v8)
    {
      v9 = *(v7 + 24);
      v11 = *a2;
      v12 = *(a2 + 2);
      v8(a1, &v11, a3, v9);
    }

    FigReadWriteLockUnlockForRead();
    return 0;
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }
}

uint64_t lvcImageAvailableSequential(uint64_t a1, __int128 *a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if ((*(a2 + 3) & 0x1D) == 1)
  {
    v7 = DerivedStorage;
    FigReadWriteLockLockForRead();
    v8 = *(v7 + 32);
    if (v8)
    {
      v9 = *(v7 + 40);
      v11 = *a2;
      v12 = *(a2 + 2);
      v8(a1, &v11, a3, v9);
    }

    FigReadWriteLockUnlockForRead();
    return 0;
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }
}

uint64_t lvcNoMoreImages(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigReadWriteLockLockForRead();
  v3 = *(DerivedStorage + 48);
  if (v3)
  {
    v3(a1, *(DerivedStorage + 56));
  }

  FigReadWriteLockUnlockForRead();
  return 0;
}

uint64_t lvcBecameEmpty(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigReadWriteLockLockForRead();
  v3 = *(DerivedStorage + 64);
  if (v3)
  {
    v3(a1, *(DerivedStorage + 72));
  }

  FigReadWriteLockUnlockForRead();
  return 0;
}

uint64_t lvcSetProducerCallbacks(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigReadWriteLockLockForWrite();
  v12 = *(DerivedStorage + 104);
  if (v12)
  {
    v13 = v12 == a6;
  }

  else
  {
    v13 = 1;
  }

  if (v13 || a3 && a4 && a5 || (v14 = 4294954480, !a2) && !a5 && !a4 && !a3 && !a6)
  {
    v15 = *(DerivedStorage + 112);
    if (v15)
    {
      CFRelease(v15);
      *(DerivedStorage + 112) = 0;
    }

    if (*(DerivedStorage + 120))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      v16 = *(DerivedStorage + 120);
    }

    else
    {
      v16 = 0;
    }

    *(DerivedStorage + 120) = a2;
    if (a2)
    {
      CFRetain(a2);
    }

    if (v16)
    {
      CFRelease(v16);
    }

    *(DerivedStorage + 80) = a3;
    *(DerivedStorage + 88) = a4;
    if (a2 | a5 | a3 | a4)
    {
      v17 = a6;
    }

    else
    {
      v17 = 0;
    }

    *(DerivedStorage + 96) = a5;
    *(DerivedStorage + 104) = v17;
    *(DerivedStorage + 112) = FigCFWeakReferenceHolderCreateWithReferencedObject();
    if (*(DerivedStorage + 140))
    {
      if (*(DerivedStorage + 120))
      {
        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterAddWeakListener();
      }

      lvcUpdateAutoPruneTimer();
    }

    v14 = 0;
  }

  FigReadWriteLockUnlockForWrite();
  return v14;
}

uint64_t lvcCreateSharedAutoPruneDispatchQueue()
{
  result = FigDispatchQueueCreateWithPriority();
  sLVCSharedAutoPruneDispatchQueue = result;
  return result;
}

__CFString *convertPresetEnumToUsageModeString(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      v1 = kFigVirtualDisplayUsage_Uncompressed;
      goto LABEL_11;
    case 1:
      v1 = kFigVirtualDisplayUsage_AirPlayHEVC;
      goto LABEL_11;
    case 2:
      v1 = kFigVirtualDisplayUsage_CarPlay;
      goto LABEL_11;
    case 3:
      v1 = kFigVirtualDisplayUsage_CarPlayHEVC;
      goto LABEL_11;
    case 4:
      v1 = kFigVirtualDisplayUsage_Stevenote;
      goto LABEL_11;
    case 5:
      v1 = kFigVirtualDisplayUsage_Valeria;
      goto LABEL_11;
    case 6:
      v1 = kFigVirtualDisplayUsage_AirPlay;
      goto LABEL_11;
    case 7:
    case 9:
    case 11:
    case 13:
      v1 = kFigVirtualDisplayUsage_UncompressedHDR;
      goto LABEL_11;
    case 8:
    case 10:
    case 12:
    case 14:
      v1 = kFigVirtualDisplayUsage_AirPlayHDR;
LABEL_11:
      result = *v1;
      break;
    default:
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      result = 0;
      break;
  }

  return result;
}

void sub_1964AEACC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t handleServerDiedNotification(uint64_t a1, void *a2)
{
  [a2 delegate];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = [a2 delegate];

    return [v4 screenCaptureControllerMediaServicesWereReset:a2];
  }

  return result;
}

void *conduitPushFrameCallback(void *result, uint64_t a2, unsigned int a3)
{
  if (a2)
  {
    v5 = result;
    v6 = [result delegate];

    return [v6 screenCaptureController:v5 didReceiveSampleBuffer:a2 transformFlags:a3];
  }

  return result;
}

uint64_t conduitClearScreenCallback(void *a1)
{
  [a1 delegate];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = [a1 delegate];

    return [v3 screenCaptureControllerDidReceiveClearScreen:a1];
  }

  return result;
}

uint64_t handleSourceTerminatedNotification(uint64_t a1, void *a2)
{
  [a2 delegate];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = [a2 delegate];

    return [v4 screenCaptureController:a2 didFailWithStatus:4294955218];
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_26()
{

  return fig_log_call_emit_and_clean_up_after_send_and_compose();
}

uint64_t OUTLINED_FUNCTION_1_24()
{

  return _os_log_send_and_compose_impl();
}

void OUTLINED_FUNCTION_2_25(uint64_t a1@<X8>, float a2@<S0>)
{
  *(v3 - 64) = a2;
  *(a1 + 4) = v2;
  *(v3 - 52) = 1024;
}

uint64_t OUTLINED_FUNCTION_4_19()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t FBLSupportAppendDeferredTransactionChangeToSetContentsScaleForFigCALayer(const void *a1, const void *a2, uint64_t a3, float a4)
{
  v8 = malloc_type_malloc(0x10uLL, 0x10800409227ACB4uLL);
  if (v8)
  {
    v9 = v8;
    *v8 = CFRetain(a2);
    *(v9 + 8) = a4;

    return FigDeferredTransactionAppendChangeWithCallback(a1, 1, a3, v9, disposeSetContentsScaleContext, copyDescriptionForSetContentsScaleContext, setContentsScaleForFigCALayer);
  }

  else
  {
    FBLSupportAppendDeferredTransactionChangeToSetContentsScaleForFigCALayer_cold_1(&v11);
    return v11;
  }
}

void disposeSetContentsScaleContext(id *a1)
{
  if (*a1)
  {
  }

  free(a1);
}

uint64_t FBLSupportAppendDeferredTransactionChangeToSetAllowsDisplayCompositing(const void *a1, const void *a2, char a3, uint64_t a4)
{
  v8 = malloc_type_malloc(0x10uLL, 0x1080040C20BADFCuLL);
  if (v8)
  {
    v9 = v8;
    *v8 = CFRetain(a2);
    *(v9 + 8) = a3;

    return FigDeferredTransactionAppendChangeWithCallback(a1, 1, a4, v9, disposeSetAllowsDisplayCompositingContext, copyDescriptionForSetAllowsDisplayCompositingContext, setAllowsDisplayCompositingForFigCALayer);
  }

  else
  {
    FBLSupportAppendDeferredTransactionChangeToSetAllowsDisplayCompositing_cold_1(&v11);
    return v11;
  }
}

void disposeSetAllowsDisplayCompositingContext(id *a1)
{
  if (*a1)
  {
  }

  free(a1);
}

uint64_t FBLSupportAppendDeferredTransactionChangeToSetPreferredCADynamicRange(const void *a1, const void *a2, const void *a3, uint64_t a4)
{
  v8 = malloc_type_malloc(0x10uLL, 0xE0040D30581F4uLL);
  if (v8)
  {
    v9 = v8;
    if (a2)
    {
      v10 = CFRetain(a2);
    }

    else
    {
      v10 = 0;
    }

    *v9 = v10;
    if (a3)
    {
      v11 = CFRetain(a3);
    }

    else
    {
      v11 = 0;
    }

    v9[1] = v11;

    return FigDeferredTransactionAppendChangeWithCallback(a1, 1, a4, v9, disposeSetPreferredCADynamicRangeContext, copyDescriptionForSetAllowsDisplayCompositingContext, setPreferredCADynamicRangeForFigCALayer);
  }

  else
  {
    FBLSupportAppendDeferredTransactionChangeToSetPreferredCADynamicRange_cold_1(&v13);
    return v13;
  }
}

void disposeSetPreferredCADynamicRangeContext(id *a1)
{
  if (*a1)
  {
  }

  *a1 = 0;
  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
  }

  free(a1);
}

uint64_t setPreferredCADynamicRangeForFigCALayer(uint64_t a1)
{
  if ([MEMORY[0x1E6979398] instancesRespondToSelector:NSSelectorFromString(&cfstr_Setpreferreddy.isa)])
  {
    [*a1 performSelector:NSSelectorFromString(&cfstr_Setpreferreddy.isa) withObject:*(a1 + 8)];
  }

  return 0;
}

uint64_t FBLSupportAppendDeferredTransactionChangeToSetGeometryFlipped(const void *a1, void *a2, char a3, uint64_t a4)
{
  v8 = malloc_type_malloc(0x10uLL, 0x1080040C20BADFCuLL);
  if (v8)
  {
    v9 = v8;
    *v8 = a2;
    *(v9 + 8) = a3;

    return FigDeferredTransactionAppendChangeWithCallback(a1, 1, a4, v9, disposeGeometryFlippedContext, copyDescriptionForSetGeometryFlippedContext, setGeometryFlippedForFigCALayer);
  }

  else
  {
    FBLSupportAppendDeferredTransactionChangeToSetGeometryFlipped_cold_1(&v11);
    return v11;
  }
}

void disposeGeometryFlippedContext(id *a1)
{
  if (*a1)
  {
  }

  free(a1);
}

uint64_t FigImageQueueGaugeXPCRemoteGetObjectID(uint64_t a1, void *a2)
{
  if (a1)
  {
    if (a2)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      result = 0;
      *a2 = *DerivedStorage;
    }

    else
    {
      FigImageQueueGaugeXPCRemoteGetObjectID_cold_1(&v5);
      return v5;
    }
  }

  else
  {
    FigImageQueueGaugeXPCRemoteGetObjectID_cold_2(&v6);
    return v6;
  }

  return result;
}

uint64_t FigImageQueueGaugeXPCRemoteRetainCopiedImageQueueGauge(uint64_t a1, CFTypeRef *a2)
{
  if (!a1)
  {
    FigImageQueueGaugeXPCRemoteRetainCopiedImageQueueGauge_cold_2(&cf);
    return cf;
  }

  if (!a2)
  {
    FigImageQueueGaugeXPCRemoteRetainCopiedImageQueueGauge_cold_1(&cf);
    return cf;
  }

  v4 = FigXPCRemoteClientRetainCopiedObject();
  if (!v4)
  {
    cf = 0;
    FigImageQueueGaugeGetClassID();
    v4 = CMDerivedObjectCreate();
    v5 = 0;
    if (v4 || (*CMBaseObjectGetDerivedStorage() = a1, v4 = FigXPCRemoteClientAssociateObject(), v5 = cf, v4))
    {
      if (v5)
      {
        CFRelease(v5);
      }
    }

    else
    {
      v4 = 0;
      *a2 = cf;
    }
  }

  return v4;
}

uint64_t FigImageQueueGaugeXPCRemoteStartAsSubClient(uint64_t a1)
{
  if (gImageQueueGaugeRemoteClient)
  {
    FigImageQueueGaugeXPCRemoteStartAsSubClient_cold_1(&v3);
    return v3;
  }

  if (!a1)
  {
    FigImageQueueGaugeXPCRemoteStartAsSubClient_cold_2(&v3);
    return v3;
  }

  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 0x40000000;
  v2[2] = __FigImageQueueGaugeXPCRemoteStartAsSubClient_block_invoke;
  v2[3] = &__block_descriptor_tmp_12;
  v2[4] = a1;
  if (FigImageQueueGaugeXPCRemoteStartAsSubClient_onceToken == -1)
  {
    return 0;
  }

  dispatch_once(&FigImageQueueGaugeXPCRemoteStartAsSubClient_onceToken, v2);
  return 0;
}

__CFString *remoteXPCImageQueueGauge_CopyDebugDesc(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  v5 = CFGetRetainCount(a1);
  CFStringAppendFormat(Mutable, 0, @"<FigImageQueueGaugeRemote(XPC) %p retainCount: %ld ObjectID: %016llx>", a1, v5, *DerivedStorage);
  return Mutable;
}

uint64_t remoteXPCImageQueueGauge_CopyProperty()
{
  CMBaseObjectGetDerivedStorage();
  v0 = FigXPCSendStdCopyPropertyMessage();
  FigXPCRemoteClientKillServerOnTimeout();
  return v0;
}

uint64_t remoteXPCImageQueueGauge_SetProperty()
{
  CMBaseObjectGetDerivedStorage();
  v0 = FigXPCSendStdSetPropertyMessage();
  FigXPCRemoteClientKillServerOnTimeout();
  return v0;
}

__CFString *streamReportingModeratorCopyDebugDescription()
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"\tFigStreamReportingModerator : ");
  return Mutable;
}

uint64_t fsrm_copyEventKeyArray(int a1)
{
  MEMORY[0x19A8D3660](&fsrm_copyEventKeyArray_sCreateStaticKeyArrayFromEventKeysOnce, fsrm_createStaticDataStructuresFromEventKeys);
  v2 = 0;
  v3 = &qword_1ED4CA5D8;
  if (a1 <= 113)
  {
    if (a1 > 108)
    {
      if (a1 <= 110)
      {
        if (a1 == 109)
        {
          v3 = &qword_1ED4CA5E0;
        }

        else
        {
          v3 = &qword_1ED4CA5E8;
        }
      }

      else if (a1 == 111)
      {
        v3 = &qword_1ED4CA638;
      }

      else if (a1 == 112)
      {
        v3 = &qword_1ED4CA658;
      }

      else
      {
        v3 = &qword_1ED4CA660;
      }
    }

    else if (a1 <= 104)
    {
      if (a1 != 101)
      {
        if (a1 != 103)
        {
          return v2;
        }

        v3 = &qword_1ED4CA600;
      }
    }

    else
    {
      switch(a1)
      {
        case 'i':
          v3 = &qword_1ED4CA608;
          break;
        case 'j':
          v3 = &qword_1ED4CA5F8;
          break;
        case 'k':
          v3 = &qword_1ED4CA618;
          break;
        default:
          return v2;
      }
    }
  }

  else if (a1 <= 800)
  {
    if (a1 <= 200)
    {
      if (a1 == 114)
      {
        v3 = &qword_1ED4CA668;
      }

      else
      {
        if (a1 != 115)
        {
          return v2;
        }

        v3 = &qword_1ED4CA670;
      }
    }

    else
    {
      switch(a1)
      {
        case 201:
          v3 = &qword_1ED4CA5F0;
          break;
        case 202:
          v3 = &qword_1ED4CA610;
          break;
        case 800:
          v3 = &qword_1ED4CA640;
          break;
        default:
          return v2;
      }
    }
  }

  else if (a1 > 900)
  {
    if (a1 != 901)
    {
      if (a1 == 1001)
      {
        v3 = &qword_1ED4CA620;
      }

      else
      {
        if (a1 != 1002)
        {
          return v2;
        }

        v3 = &qword_1ED4CA628;
      }
    }
  }

  else
  {
    switch(a1)
    {
      case 801:
        v3 = &qword_1ED4CA648;
        break;
      case 802:
        v3 = &qword_1ED4CA650;
        break;
      case 900:
        v3 = &qword_1ED4CA630;
        break;
      default:
        return v2;
    }
  }

  v2 = *v3;
  if (*v3)
  {
    CFRetain(*v3);
  }

  return v2;
}

uint64_t fsrm_updateProcessMemoryAndCPUSession(uint64_t a1)
{
  v46 = *MEMORY[0x1E69E9840];
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  v2 = getpid();
  result = proc_pid_rusage(v2, 6, &v17);
  if (!result)
  {
    v4 = (*(a1 + 8) > 3u) | (2u >> (*(a1 + 8) & 0xF));
    v5 = v18;
    if (qword_1ED4CA5C8 != -1)
    {
      fsrm_updateProcessMemoryAndCPUSession_cold_1();
    }

    v6 = *&mach_absolute_time_to_s_tmscale * v5 / 1000000000.0;
    if ((v4 & 1) == 0)
    {
      v13 = *(a1 + 200);
      if (v13 != 0.0 && v6 > v13)
      {
        v14 = *(a1 + 168);
        v15 = *(a1 + 176);
        v16 = *(*(CMBaseObjectGetVTable() + 16) + 64);
        if (v16)
        {
          v16(v14, v15, 0x1F0B656D8, ((v6 - v13) * 1000.0));
        }
      }
    }

    v7 = *(&v21 + 1);
    v8 = *(a1 + 168);
    v9 = *(a1 + 176);
    VTable = CMBaseObjectGetVTable();
    v11 = *(VTable + 16);
    result = VTable + 16;
    v12 = *(v11 + 72);
    if (v12)
    {
      result = v12(v8, v9, 0x1F0B65658, v7 >> 10);
    }

    *(a1 + 200) = v6;
  }

  return result;
}

double __mach_absolute_time_to_s_block_invoke()
{
  info = 0;
  if (!mach_timebase_info(&info))
  {
    LODWORD(result) = info.numer;
    LODWORD(v1) = info.denom;
    result = *&result / v1;
    mach_absolute_time_to_s_tmscale = *&result;
  }

  return result;
}

uint64_t fsrm_addToSessionStatsCountValue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 168);
  v6 = *(a1 + 176);
  VTable = CMBaseObjectGetVTable();
  v9 = *(VTable + 16);
  result = VTable + 16;
  v10 = *(v9 + 64);
  if (v10)
  {

    return v10(v5, v6, a2, a3);
  }

  return result;
}

uint64_t fsrm_setSessionEndReasonIfFatalError(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v44 = 1;
  if (!a3 || (v12 = *(a1 + 168), (v13 = *(*(CMBaseObjectGetVTable() + 16) + 144)) == 0) || (result = v13(v12, a2, a3, &v44), v44 == 1))
  {
    v42 = 0;
    v43 = 0;
    v41 = 0;
    v15 = *(a1 + 168);
    VTable = CMBaseObjectGetVTable();
    v17 = *(VTable + 16);
    result = VTable + 16;
    v18 = *(v17 + 144);
    if (v18)
    {
      result = v18(v15, a2, a4, &v43);
      if (!result)
      {
        v19 = *(a1 + 168);
        v20 = *(a1 + 176);
        v21 = v43;
        v22 = *(*(CMBaseObjectGetVTable() + 16) + 88);
        if (v22)
        {
          v22(v19, v20, 0x1F0B65B58, v21);
        }

        v23 = *(a1 + 168);
        v24 = CMBaseObjectGetVTable();
        v25 = *(v24 + 16);
        result = v24 + 16;
        v26 = *(v25 + 152);
        if (v26)
        {
          result = v26(v23, a2, a6, &v42);
          if (!result)
          {
            v27 = *(a1 + 168);
            v28 = *(a1 + 176);
            v29 = v42;
            v30 = CMBaseObjectGetVTable();
            v31 = *(v30 + 16);
            result = v30 + 16;
            v32 = *(v31 + 80);
            if (v32)
            {
              result = v32(v27, v28, 0x1F0B65B78, v29);
            }

            if (a5)
            {
              v33 = *(a1 + 168);
              v34 = *(*(CMBaseObjectGetVTable() + 16) + 152);
              if (v34)
              {
                (v34)(v33, a2, a5, &v41);
                v34 = v41;
              }

              v36 = *(a1 + 168);
              v35 = *(a1 + 176);
              if (v34)
              {
                v37 = v34;
              }

              else
              {
                v37 = @"CoreMediaErrorDomain";
              }

              v38 = CMBaseObjectGetVTable();
              v39 = *(v38 + 16);
              result = v38 + 16;
              v40 = *(v39 + 80);
              if (v40)
              {
                return v40(v36, v35, 0x1F0B65B98, v37);
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t fsrm_getMaxArrayCount(uint64_t a1, CFArrayRef theArray)
{
  if (CFArrayGetCount(theArray) < 1)
  {
    return 0;
  }

  v4 = 0;
  v5 = 0;
  do
  {
    v9 = 0;
    v6 = *CFArrayGetValueAtIndex(theArray, v5);
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 120);
    if (v7)
    {
      v7(a1, v6, &v9);
    }

    if (v4 <= v9)
    {
      v4 = v9;
    }

    ++v5;
  }

  while (v5 < CFArrayGetCount(theArray));
  return v4;
}

uint64_t OUTLINED_FUNCTION_9_7()
{

  return CMBaseObjectGetVTable();
}

uint64_t OUTLINED_FUNCTION_10_8()
{

  return CMBaseObjectGetVTable();
}

Float64 OUTLINED_FUNCTION_11_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, CMTime *time, uint64_t a12, __int128 a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, __int128 timea, uint64_t time_16, uint64_t a20, __int128 a21, uint64_t a22)
{
  timea = a21;
  time_16 = a22;

  return CMTimeGetSeconds(&timea);
}

uint64_t OUTLINED_FUNCTION_12_6()
{

  return CMBaseObjectGetVTable();
}

uint64_t OUTLINED_FUNCTION_13_5@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{

  return fsrm_addToSessionStatsCountValue(v2, a1, v3 * a2);
}

uint64_t OUTLINED_FUNCTION_14_6()
{

  return CMBaseObjectGetVTable();
}

uint64_t OUTLINED_FUNCTION_18_5()
{

  return CMBaseObjectGetVTable();
}

uint64_t PIQCopyPerformanceDictionaryForInstanceStatistics(const __CFAllocator *a1, int *a2, __CFDictionary **a3)
{
  value = 0;
  v6 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  if (*a2)
  {
    if (*a2 >= 100)
    {
      v8 = 100;
    }

    else
    {
      v8 = *a2;
    }

    v9 = piqCopyArrayOfMilliseconds(a1, v8, a2 + 6, &value);
    v10 = value;
    if (!v9)
    {
      CFDictionarySetValue(Mutable, @"DisplayTimesOfFramesDroppedFromImageQueue", value);
    }

    if (v10)
    {
      CFRelease(v10);
      value = 0;
    }
  }

  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  if (a2[5])
  {
    FigCFDictionarySetDouble();
  }

  if (a2[4])
  {
    FigCFDictionarySetInt32();
  }

  if (a2[224])
  {
    FigCFDictionarySetInt32();
  }

  v11 = a2[4];
  if (v11)
  {
    if (v11 >= 100)
    {
      v12 = 100;
    }

    else
    {
      v12 = a2[4];
    }

    v13 = piqCopyArrayOfMilliseconds(a1, v12, a2 + 106, &value);
    v14 = value;
    if (!v13)
    {
      CFDictionarySetValue(Mutable, @"DisplayTimesOfFramesConsumedAtLeast16msLate", value);
    }

    if (v14)
    {
      CFRelease(v14);
    }
  }

  v15 = 0;
  LODWORD(v16) = 0;
  do
  {
    if (a2[v15 + 215])
    {
      v16 = (v15 + 2);
    }

    else
    {
      v16 = v16;
    }

    ++v15;
  }

  while (v15 != 9);
  if (v16 >= 2)
  {
    v17 = CFArrayCreateMutable(v6, (v16 - 1), MEMORY[0x1E695E9C0]);
    v18 = a2 + 215;
    v19 = v16 - 1;
    do
    {
      ++v18;
      FigCFArrayAppendInt32();
      --v19;
    }

    while (v19);
    CFDictionarySetValue(Mutable, @"DisplayCountHistogram", v17);
    if (v17)
    {
      CFRelease(v17);
    }
  }

  *a3 = Mutable;
  return 0;
}

uint64_t piqCopyArrayOfMilliseconds(const __CFAllocator *a1, int a2, int *a3, CFArrayRef *a4)
{
  v8 = a2;
  v9 = malloc_type_calloc(8uLL, a2, 0x85C48114uLL);
  if (v9)
  {
    v10 = v9;
    if (a2 < 1)
    {
LABEL_6:
      v16 = CFArrayCreate(a1, v10, v8, MEMORY[0x1E695E9C0]);
      *a4 = v16;
      if (v16)
      {
        v17 = 0;
LABEL_12:
        if (a2 >= 1)
        {
          v19 = v10;
          do
          {
            if (*v19)
            {
              CFRelease(*v19);
            }

            ++v19;
            --v8;
          }

          while (v8);
        }

        free(v10);
        return v17;
      }
    }

    else
    {
      v11 = *MEMORY[0x1E695E480];
      v12 = v9;
      v13 = v8;
      while (1)
      {
        v14 = *a3++;
        valuePtr = v14 * 0.001;
        v15 = CFNumberCreate(v11, kCFNumberDoubleType, &valuePtr);
        *v12 = v15;
        if (!v15)
        {
          break;
        }

        ++v12;
        if (!--v13)
        {
          goto LABEL_6;
        }
      }
    }

    v17 = FigSignalErrorAtGM();
    goto LABEL_12;
  }

  return FigSignalErrorAtGM();
}

uint64_t FigMutableCompositionServerStart()
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

uint64_t LookupMutableCompositionByObjectIDForConnection()
{
  v0 = FigXPCServerLookupAndRetainAssociatedObject();
  if (v0)
  {
    return v0;
  }

  LookupMutableCompositionByObjectIDForConnection_cold_1(&v3);
  return v3;
}

uint64_t HandleMutableCompositionDeleteTrackMessage(uint64_t a1, xpc_object_t xdict)
{
  int64 = xpc_dictionary_get_int64(xdict, "TrackID");
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a1, int64);
}

uint64_t HandleMutableCompositionSetTrackEditListMessage(uint64_t a1, uint64_t a2, xpc_object_t xdict)
{
  length = 0;
  int64 = xpc_dictionary_get_int64(xdict, "TrackID");
  v7 = xpc_dictionary_get_int64(xdict, "EditCount");
  if (v7 >= 1)
  {
    data = xpc_dictionary_get_data(xdict, "EditListData", &length);
    if (data)
    {
      if (length)
      {
        v9 = data;
        v10 = malloc_type_calloc(v7, 0x6CuLL, 0x1060040CB727B4DuLL);
        if (v10)
        {
          v11 = v10;
          EditArrayFromData = FigRemote_CreateEditArrayFromData(v9, length, *MEMORY[0x1E695E480], v7, v10);
          if (EditArrayFromData)
          {
            v18 = EditArrayFromData;
            goto LABEL_17;
          }

          v13 = 96;
          v14 = v7;
          while (1)
          {
            if (*&v11[v13])
            {
              v15 = *(a2 + 32);
              v22[0] = *(a2 + 16);
              v22[1] = v15;
              v16 = mutableCompositionServer_checkSourceURLAccess();
              if (v16)
              {
                break;
              }
            }

            v13 += 108;
            if (!--v14)
            {
              goto LABEL_12;
            }
          }

          v18 = v16;
LABEL_16:
          if (v7 < 1)
          {
LABEL_21:
            free(v11);
            return v18;
          }

LABEL_17:
          v19 = 96;
          do
          {
            v20 = *&v11[v19];
            if (v20)
            {
              CFRelease(v20);
            }

            v19 += 108;
            --v7;
          }

          while (v7);
          goto LABEL_21;
        }

        HandleMutableCompositionSetTrackEditListMessage_cold_1(v22);
      }

      else
      {
        HandleMutableCompositionSetTrackEditListMessage_cold_2(v22);
      }
    }

    else
    {
      HandleMutableCompositionSetTrackEditListMessage_cold_3(v22);
    }

    return LODWORD(v22[0]);
  }

  v11 = 0;
LABEL_12:
  v17 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (v17)
  {
    v18 = v17(a1, int64, v7, v11);
    if (!v11)
    {
      return v18;
    }

    goto LABEL_16;
  }

  v18 = 4294954514;
  if (v11)
  {
    goto LABEL_16;
  }

  return v18;
}

uint64_t HandleMutableCompositionInsertEmptyTrackSegmentMessage(uint64_t a1, xpc_object_t xdict)
{
  v7 = *MEMORY[0x1E6960CC0];
  v8 = *(MEMORY[0x1E6960CC0] + 16);
  v6 = *MEMORY[0x1E6960CC0];
  int64 = xpc_dictionary_get_int64(xdict, "TrackID");
  FigXPCMessageGetCMTime();
  FigXPCMessageGetCMTime();
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 104);
  if (!v4)
  {
    return 4294954514;
  }

  v11 = v7;
  v12 = v8;
  v9 = v6;
  v10 = v8;
  return v4(a1, int64, &v11, &v9);
}

uint64_t HandleMutableCompositionInsertEmptySegmentMessage(uint64_t a1)
{
  v5 = *MEMORY[0x1E6960CC0];
  v6 = *(MEMORY[0x1E6960CC0] + 16);
  v4 = *MEMORY[0x1E6960CC0];
  FigXPCMessageGetCMTime();
  FigXPCMessageGetCMTime();
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 112);
  if (!v2)
  {
    return 4294954514;
  }

  v9 = v5;
  v10 = v6;
  v7 = v4;
  v8 = v6;
  return v2(a1, &v9, &v7);
}

uint64_t HandleMutableCompositionDeleteTrackSegmentMessage(uint64_t a1, xpc_object_t xdict)
{
  v7 = *MEMORY[0x1E6960CC0];
  v8 = *(MEMORY[0x1E6960CC0] + 16);
  v6 = *MEMORY[0x1E6960CC0];
  int64 = xpc_dictionary_get_int64(xdict, "TrackID");
  FigXPCMessageGetCMTime();
  FigXPCMessageGetCMTime();
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 120);
  if (!v4)
  {
    return 4294954514;
  }

  v11 = v7;
  v12 = v8;
  v9 = v6;
  v10 = v8;
  return v4(a1, int64, &v11, &v9);
}

uint64_t HandleMutableCompositionDeleteSegmentMessage(uint64_t a1)
{
  v5 = *MEMORY[0x1E6960CC0];
  v6 = *(MEMORY[0x1E6960CC0] + 16);
  v4 = *MEMORY[0x1E6960CC0];
  FigXPCMessageGetCMTime();
  FigXPCMessageGetCMTime();
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 128);
  if (!v2)
  {
    return 4294954514;
  }

  v9 = v5;
  v10 = v6;
  v7 = v4;
  v8 = v6;
  return v2(a1, &v9, &v7);
}

uint64_t HandleMutableCompositionScaleTrackSegmentMessage(uint64_t a1, xpc_object_t xdict)
{
  v8 = *MEMORY[0x1E6960CC0];
  v9 = *(MEMORY[0x1E6960CC0] + 16);
  v7 = *MEMORY[0x1E6960CC0];
  v6 = *MEMORY[0x1E6960CC0];
  int64 = xpc_dictionary_get_int64(xdict, "TrackID");
  FigXPCMessageGetCMTime();
  FigXPCMessageGetCMTime();
  FigXPCMessageGetCMTime();
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 136);
  if (!v4)
  {
    return 4294954514;
  }

  v14 = v8;
  v15 = v9;
  v12 = v7;
  v13 = v9;
  v10 = v6;
  v11 = v9;
  return v4(a1, int64, &v14, &v12, &v10);
}

uint64_t HandleMutableCompositionScaleSegmentMessage(uint64_t a1)
{
  v6 = *MEMORY[0x1E6960CC0];
  v7 = *(MEMORY[0x1E6960CC0] + 16);
  v5 = *MEMORY[0x1E6960CC0];
  v4 = *MEMORY[0x1E6960CC0];
  FigXPCMessageGetCMTime();
  FigXPCMessageGetCMTime();
  FigXPCMessageGetCMTime();
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 144);
  if (!v2)
  {
    return 4294954514;
  }

  v12 = v6;
  v13 = v7;
  v10 = v5;
  v11 = v7;
  v8 = v4;
  v9 = v7;
  return v2(a1, &v12, &v10, &v8);
}

uint64_t HandleMutableCompositionDeferTracksChangedNotificationsMessage(uint64_t a1)
{
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 152);
  if (!v2)
  {
    return 4294954514;
  }

  return v2(a1);
}

uint64_t HandleMutableCompositionPostDeferredTracksChangedNotificationMessage(uint64_t a1)
{
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 160);
  if (!v2)
  {
    return 4294954514;
  }

  return v2(a1);
}

void DisposeServedMutableCompositionState(const void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      CFRelease(v2);
      *a1 = 0;
    }

    v3 = a1[1];
    if (v3)
    {
      CFRelease(v3);
      a1[1] = 0;
    }

    v4 = a1[6];
    if (v4)
    {
      os_release(v4);
    }

    free(a1);
  }
}

uint64_t mutableCompositionServer_checkSourceURLAccess()
{
  v1 = 0;
  result = _CFURLIsFileURL();
  if (result)
  {
    FigCFURLGetFileStats();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_26()
{

  return CMBaseObjectGetVTable();
}

uint64_t vcp_timedSample_Register()
{
  result = _CFRuntimeRegisterClass();
  sVCPTimedSampleClassID = result;
  return result;
}

uint64_t FigVCPTimedSampleCreateWithPixelBuffer(uint64_t a1, CFTypeRef cf, uint64_t *a3)
{
  if (!cf)
  {
    v7 = 3;
    goto LABEL_5;
  }

  v6 = CFGetTypeID(cf);
  if (v6 == CVPixelBufferGetTypeID())
  {
    v7 = 0;
LABEL_5:
    v9 = *a1;
    v10 = *(a1 + 16);
    return vcp_timedSample_createCommon(&v9, cf, v7, a3);
  }

  if (a3)
  {
    *a3 = 0;
  }

  return FigSignalErrorAtGM();
}

uint64_t vcp_timedSample_createCommon(__int128 *a1, const void *a2, int a3, uint64_t *a4)
{
  if ((*(a1 + 3) & 0x1D) == 1)
  {
    MEMORY[0x19A8D3660](&FigVCPTimedSampleGetTypeID_once, vcp_timedSample_Register);
    Instance = _CFRuntimeCreateInstance();
    v9 = Instance;
    if (Instance)
    {
      v10 = *a1;
      *(Instance + 32) = *(a1 + 2);
      *(Instance + 16) = v10;
      if (a2)
      {
        v11 = CFRetain(a2);
      }

      else
      {
        v11 = 0;
      }

      v12 = 0;
      *(v9 + 40) = v11;
      *(v9 + 48) = a3;
    }

    else
    {
      vcp_timedSample_createCommon_cold_2(&v15);
      v12 = v15;
    }
  }

  else
  {
    vcp_timedSample_createCommon_cold_1(&v14);
    v9 = 0;
    v12 = v14;
  }

  if (a4)
  {
    *a4 = v9;
  }

  else if (v9)
  {
    CFRelease(v9);
  }

  return v12;
}

uint64_t FigVCPTimedSampleCreateWithSampleBuffer(uint64_t a1, CFTypeRef cf, uint64_t *a3)
{
  if (!cf)
  {
    v7 = 3;
    goto LABEL_5;
  }

  v6 = CFGetTypeID(cf);
  if (v6 == CMSampleBufferGetTypeID())
  {
    v7 = 1;
LABEL_5:
    v9 = *a1;
    v10 = *(a1 + 16);
    return vcp_timedSample_createCommon(&v9, cf, v7, a3);
  }

  if (a3)
  {
    *a3 = 0;
  }

  return FigSignalErrorAtGM();
}

uint64_t FigVCPTimedSampleCreateWithTaggedBufferGroup(uint64_t a1, CFTypeRef cf, uint64_t *a3)
{
  if (!cf)
  {
    v7 = 3;
    goto LABEL_5;
  }

  v6 = CFGetTypeID(cf);
  if (v6 == CMTaggedBufferGroupGetTypeID())
  {
    v7 = 2;
LABEL_5:
    v9 = *a1;
    v10 = *(a1 + 16);
    return vcp_timedSample_createCommon(&v9, cf, v7, a3);
  }

  if (a3)
  {
    *a3 = 0;
  }

  return FigSignalErrorAtGM();
}

uint64_t FigVCPTimedSampleCreateWithNULL(uint64_t a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *(a1 + 16);
  return vcp_timedSample_createCommon(&v3, 0, 3, a2);
}

uint64_t FigVCPTimedSampleGetPTS@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = MEMORY[0x1E6960C70];
  *a2 = *MEMORY[0x1E6960C70];
  *(a2 + 16) = *(v2 + 16);
  if (!result)
  {
    return FigVCPTimedSampleGetPTS_cold_1();
  }

  *a2 = *(result + 16);
  *(a2 + 16) = *(result + 32);
  return result;
}

uint64_t FigVCPTimedSampleGetPixelBuffer(uint64_t a1, void *a2)
{
  if (a1)
  {
    v3 = *(a1 + 40);
    if (!v3 || !*(a1 + 48))
    {
      result = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_5;
    }

    FigVCPTimedSampleGetPixelBuffer_cold_1(&v5);
    result = v5;
  }

  else
  {
    FigVCPTimedSampleGetPixelBuffer_cold_2(&v6);
    result = v6;
  }

  if (a2 && result)
  {
    v3 = 0;
LABEL_5:
    *a2 = v3;
  }

  return result;
}

uint64_t FigVCPTimedSampleGetSampleBuffer(uint64_t a1, void *a2)
{
  if (a1)
  {
    v3 = *(a1 + 40);
    if (!v3 || *(a1 + 48) == 1)
    {
      result = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_5;
    }

    FigVCPTimedSampleGetSampleBuffer_cold_1(&v5);
    result = v5;
  }

  else
  {
    FigVCPTimedSampleGetSampleBuffer_cold_2(&v6);
    result = v6;
  }

  if (a2 && result)
  {
    v3 = 0;
LABEL_5:
    *a2 = v3;
  }

  return result;
}

uint64_t FigVCPTimedSampleGetTaggedBufferGroup(uint64_t a1, void *a2)
{
  if (a1)
  {
    v3 = *(a1 + 40);
    if (!v3 || *(a1 + 48) == 2)
    {
      result = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_5;
    }

    FigVCPTimedSampleGetTaggedBufferGroup_cold_1(&v5);
    result = v5;
  }

  else
  {
    FigVCPTimedSampleGetTaggedBufferGroup_cold_2(&v6);
    result = v6;
  }

  if (a2 && result)
  {
    v3 = 0;
LABEL_5:
    *a2 = v3;
  }

  return result;
}

BOOL FigVCPTimedSampleContainsNULL(_BOOL8 result)
{
  if (result)
  {
    return *(result + 48) == 3;
  }

  return result;
}

BOOL FigVCPTimedSampleContainsPixelBuffer(_BOOL8 result)
{
  if (result)
  {
    return *(result + 48) == 0;
  }

  return result;
}

BOOL FigVCPTimedSampleContainsSampleBuffer(_BOOL8 result)
{
  if (result)
  {
    return *(result + 48) == 1;
  }

  return result;
}

BOOL FigVCPTimedSampleContainsTaggedBufferGroup(_BOOL8 result)
{
  if (result)
  {
    return *(result + 48) == 2;
  }

  return result;
}

uint64_t FigVCPGetPTSInTimedSampleArrayAtIndex@<X0>(uint64_t a1@<X8>)
{
  result = FigCFArrayGetValueAtIndex();
  v3 = MEMORY[0x1E6960C70];
  *a1 = *MEMORY[0x1E6960C70];
  *(a1 + 16) = *(v3 + 16);
  if (!result)
  {
    return FigVCPTimedSampleGetPTS_cold_1();
  }

  *a1 = *(result + 16);
  *(a1 + 16) = *(result + 32);
  return result;
}

double vcp_timedSample_Init(uint64_t a1)
{
  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

__n128 vcp_timedSample_Finalize(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 40) = 0;
  }

  v3 = MEMORY[0x1E6960C70];
  result = *MEMORY[0x1E6960C70];
  *(a1 + 16) = *MEMORY[0x1E6960C70];
  *(a1 + 32) = *(v3 + 16);
  return result;
}

uint64_t vcp_timedSample_Equal(char *cf, uint64_t a2)
{
  if (cf == a2)
  {
    return 1;
  }

  v13 = v2;
  v14 = v3;
  if (!cf)
  {
    return 0;
  }

  if (!a2)
  {
    return 0;
  }

  v6 = CFGetTypeID(cf);
  MEMORY[0x19A8D3660](&FigVCPTimedSampleGetTypeID_once, vcp_timedSample_Register);
  if (v6 != sVCPTimedSampleClassID)
  {
    return 0;
  }

  v7 = CFGetTypeID(a2);
  MEMORY[0x19A8D3660](&FigVCPTimedSampleGetTypeID_once, vcp_timedSample_Register);
  if (v7 != sVCPTimedSampleClassID)
  {
    return 0;
  }

  time1 = *(cf + 16);
  v11 = *(a2 + 16);
  if (CMTimeCompare(&time1, &v11))
  {
    return 0;
  }

  v8 = *(cf + 12);
  v9 = *(a2 + 48);
  if (v8 == 3)
  {
    if (v9 != 3)
    {
      return 0;
    }
  }

  else if (v8 != v9 || !FigCFEqual())
  {
    return 0;
  }

  return 1;
}

CFStringRef vcp_timedSample_CopyFormattingDesc(uint64_t a1, CFDictionaryRef formatOptions)
{
  if (a1)
  {
    v4 = *(a1 + 48);
    if (v4 > 3)
    {
      v5 = "Unknown";
    }

    else
    {
      v5 = off_1E747EB70[v4];
    }

    v8 = *MEMORY[0x1E695E480];
    time = *(a1 + 16);
    Seconds = CMTimeGetSeconds(&time);
    return CFStringCreateWithFormat(v8, formatOptions, @"<FigVCPTimedSample: %p> PTS %1.3f %s <%p>", a1, *&Seconds, v5, *(a1 + 40));
  }

  else
  {
    v6 = *MEMORY[0x1E695E480];

    return CFStringCreateWithFormat(v6, formatOptions, @"NULL FigVCPTimedSample");
  }
}

uint64_t OUTLINED_FUNCTION_1_27(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, CMTime *time2, uint64_t a6, CMTime *time1, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 time2a, uint64_t time2_16, uint64_t a15, uint64_t time1a)
{
  time2a = *v16;
  time2_16 = *(v16 + 2);

  return CMTimeCompare(&time1a, &time2a);
}

uint64_t FigManifoldStartServer()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2000000000;
  v6 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __FigManifoldStartServer_block_invoke;
  block[3] = &unk_1E747EB98;
  block[4] = &v3;
  if (FigManifoldStartServer_sFigManifoldServerSetupOnce != -1)
  {
    dispatch_once(&FigManifoldStartServer_sFigManifoldServerSetupOnce, block);
  }

  v0 = *(v4 + 6);
  _Block_object_dispose(&v3, 8);
  return v0;
}

void __FigManifoldStartServer_block_invoke(uint64_t a1)
{
  AllocatorForMedia = FigGetAllocatorForMedia();
  Mutable = CFDictionaryCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v4 = Mutable;
    FigCFDictionarySetInt32();
    *(*(*(a1 + 32) + 8) + 24) = FigXPCServerStart();
    CFRelease(v4);
  }

  else
  {
    __FigManifoldStartServer_block_invoke_cold_1(a1 + 32);
  }
}

void manifoldServer_companionDestructor(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t __FigManifoldServerCompanionGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED4CA688 = result;
  return result;
}

void manifoldServerCompanion_finalize(void *a1)
{
  FigBaseObject = FigManifoldGetFigBaseObject(a1[7]);
  if (FigBaseObject)
  {
    v3 = FigBaseObject;
    v4 = *(*(CMBaseObjectGetVTable() + 8) + 24);
    if (v4)
    {
      v4(v3);
    }
  }

  v5 = a1[2];
  if (v5)
  {
    a1[2] = 0;
    xpc_release(v5);
  }

  v6 = a1[8];
  if (v6)
  {
    a1[8] = 0;
    xpc_release(v6);
  }

  v7 = a1[4];
  if (v7)
  {
    CFRelease(v7);
    a1[4] = 0;
  }

  v8 = a1[5];
  if (v8)
  {
    CFRelease(v8);
    a1[5] = 0;
  }

  v9 = a1[7];
  if (v9)
  {
    CFRelease(v9);
    a1[7] = 0;
  }

  v10 = a1[11];
  if (v10)
  {
    CFRelease(v10);
    a1[11] = 0;
  }

  v11 = a1[9];
  if (v11)
  {
    CFRelease(v11);
    a1[9] = 0;
  }

  v12 = a1[10];
  if (v12)
  {
    CFRelease(v12);
    a1[10] = 0;
  }

  v13 = a1[12];
  if (v13)
  {
    CFRelease(v13);
    a1[12] = 0;
  }

  v14 = a1[13];
  if (v14)
  {
    CFRelease(v14);
    a1[13] = 0;
  }

  v15 = a1[14];
  if (v15)
  {
    CFRelease(v15);
    a1[14] = 0;
  }

  v16 = a1[6];
  if (v16)
  {
    os_release(v16);
    a1[6] = 0;
  }
}

void manifoldServer_copyPendingCallbacksIntoReply(void *a1, uint64_t a2)
{
  v2 = *(a2 + 64);
  if (v2)
  {
    xpc_dictionary_set_value(a1, "pendingCallbacks", v2);
    v4 = *(a2 + 64);
    if (v4)
    {
      *(a2 + 64) = 0;

      xpc_release(v4);
    }
  }
}

void OUTLINED_FUNCTION_5_15()
{
  v3 = *(v1 + 64);

  xpc_array_append_value(v3, v0);
}

BOOL FigMediaPlaylistUtilityIterateMedia(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = *a2;
  if (*a2)
  {
    v8 = *a3;
    do
    {
      if (v8)
      {
        NextSegment = FigMediaSegmentSpecifierGetNextSegment(v8);
        if (NextSegment)
        {
          break;
        }
      }

      else
      {
        FigMediaSegmentSpecifierGetPartialSegments(v7);
        NextSegment = FigCFArrayGetFirstValue();
        if (NextSegment)
        {
          break;
        }
      }

      NextSegment = FigMediaSegmentSpecifierGetNextSegment(v7);
      v7 = NextSegment;
      if (!NextSegment)
      {
        break;
      }

      NextSegment = FigMediaSegmentSpecifierGetPartialSegments(NextSegment);
      if (!NextSegment)
      {
        break;
      }

      Count = CFArrayGetCount(NextSegment);
      v8 = 0;
      NextSegment = 0;
    }

    while (Count);
  }

  else
  {
    FigMediaPlaylistGetMediaSegmentSpecifiers(a1);
    NextSegment = FigCFArrayGetFirstValue();
    v7 = NextSegment;
    if (NextSegment)
    {
      FigMediaSegmentSpecifierGetPartialSegments(NextSegment);
      NextSegment = FigCFArrayGetFirstValue();
    }
  }

  *a2 = v7;
  *a3 = NextSegment;
  if (NextSegment)
  {
    v11 = NextSegment;
  }

  else
  {
    v11 = v7;
  }

  *a4 = v11;
  return v7 != 0;
}

double FigMediaPlaylistUtilityEnsureOffsetInDiscDomain(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16 = 0;
  v17 = 0;
  v15 = 0;
  for (i = 0.0; FigMediaPlaylistUtilityIterateMedia(a6, &v16, &v15, &v17); i = i + FigMediaSegmentSpecifierGetTimeInSeconds(v12))
  {
    v12 = v17;
    if (FigMediaSegmentSpecifierGetDiscontinuityDomain(v17) + a5 > a7)
    {
      break;
    }

    if (i + FigMediaSegmentSpecifierGetTimeInSeconds(v12) > a1 && FigMediaSegmentSpecifierGetDiscontinuityDomain(v12) + a5 == a7)
    {
      if (i < a1)
      {
        i = a1;
      }

      break;
    }
  }

  if (i != a1 && v17 != 0)
  {
    return i + FigMediaSegmentSpecifierGetTimeInSeconds(v17) * 0.125;
  }

  return i;
}

uint64_t FigMediaPlaylistUtilityDetermineSegmentToSwitchTo(uint64_t a1, const __CFData *a2, int a3, uint64_t a4, uint64_t a5, int a6, int a7, int a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, void (*a21)(const void *, uint64_t), uint64_t *a22, void *a23)
{
  valuePtr[16] = *MEMORY[0x1E69E9840];
  TargetDuration = FigMediaPlaylistGetTargetDuration(a1);
  valuePtr[0] = 0.0;
  v129 = a6;
  if (a2)
  {
    Length = CFDataGetLength(a2);
    BytePtr = CFDataGetBytePtr(a2);
    if (Length < 8)
    {
      v38 = 0;
LABEL_7:
      a6 = v129;
      goto LABEL_8;
    }

    v35 = BytePtr;
    AllocatorForMedia = FigGetAllocatorForMedia();
    Mutable = CFArrayCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9C0]);
    if (Mutable)
    {
      v38 = Mutable;
      v39 = Length >> 3;
      while (1)
      {
        v40 = FigGetAllocatorForMedia();
        v41 = CFNumberCreate(v40, kCFNumberDoubleType, valuePtr);
        valuePtr[0] = valuePtr[0] + *v35;
        if (!v41)
        {
          break;
        }

        v42 = v41;
        CFArrayAppendValue(v38, v41);
        CFRelease(v42);
        v35 += 2;
        if (!--v39)
        {
          goto LABEL_7;
        }
      }

      FigMediaPlaylistUtilityDetermineSegmentToSwitchTo_cold_1(v38, &v133);
    }

    else
    {
      FigMediaPlaylistUtilityDetermineSegmentToSwitchTo_cold_2(&v133);
    }

    v71 = v133;
    a6 = v129;
    if (v133)
    {
      return v71;
    }
  }

  v38 = 0;
LABEL_8:
  *a22 = 0;
  HasEndTag = FigMediaPlaylistHasEndTag(a1);
  v120 = a3;
  if (a13 <= a9 && !(HasEndTag | a3))
  {
    a9 = FigMediaPlaylistUtilityEnsureOffsetInDiscDomain(a9 - a13, HasEndTag, 0, v44, a5, a1, a4);
    if (dword_1EAF16A30)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  theData = a2;
  v125 = v38;
  v46 = a21;
  if (a8)
  {
    v47 = FigMediaPlaylistHasEndTag(a1) != 0;
  }

  else
  {
    v47 = 1;
  }

  v48 = 0;
  v49 = 0;
  v50 = 0;
  v51 = 0.0;
  v52 = 0.0;
  while (1)
  {
    MediaSegmentSpecifiers = FigMediaPlaylistGetMediaSegmentSpecifiers(a1);
    if (MediaSegmentSpecifiers)
    {
      MediaSegmentSpecifiers = CFArrayGetCount(MediaSegmentSpecifiers);
    }

    if (v48 >= MediaSegmentSpecifiers)
    {
      break;
    }

    v54 = FigMediaPlaylistGetMediaSegmentSpecifiers(a1);
    ValueAtIndex = CFArrayGetValueAtIndex(v54, v48);
    PartialSegments = FigMediaSegmentSpecifierGetPartialSegments(ValueAtIndex);
    if (!PartialSegments || !CFArrayGetCount(PartialSegments))
    {
      if (!v47 && FigMediaSegmentSpecifierIsMarkedAsGap(ValueAtIndex))
      {
        v52 = v52 + FigMediaSegmentSpecifierGetTimeInSeconds(ValueAtIndex);
        goto LABEL_58;
      }

      FigMediaPlaylistGetMediaSegmentSpecifiers(a1);
      if (FigCFArrayGetLastValue() == ValueAtIndex)
      {
LABEL_52:
        if (FigMediaSegmentSpecifierGetDiscontinuityDomain(ValueAtIndex) + a5 == a4)
        {
          goto LABEL_64;
        }

        if (dword_1EAF16A30)
        {
          v128 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v128, OS_LOG_TYPE_DEFAULT);
          v46 = a21;
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          a6 = v129;
        }
      }

      else
      {
        if (v47)
        {
          if (v52 + FigMediaSegmentSpecifierGetTimeInSeconds(ValueAtIndex) >= a9 && (a17 || vabdd_f64(v52 + FigMediaSegmentSpecifierGetTimeInSeconds(ValueAtIndex), a9) >= 0.001))
          {
            goto LABEL_52;
          }
        }

        else if (v52 >= a9)
        {
          goto LABEL_52;
        }

        if (FigMediaSegmentSpecifierGetNextSegment(ValueAtIndex))
        {
          NextSegment = FigMediaSegmentSpecifierGetNextSegment(ValueAtIndex);
          if (FigMediaSegmentSpecifierGetDiscontinuityDomain(NextSegment) + a5 > a4)
          {
            goto LABEL_64;
          }
        }
      }

LABEL_58:
      v52 = v52 + FigMediaSegmentSpecifierGetTimeInSeconds(ValueAtIndex);
      if (!a6)
      {
        goto LABEL_62;
      }

LABEL_59:
      IsFragment = FigMediaSegmentSpecifierIsFragment(ValueAtIndex);
      if (v46)
      {
        if (!IsFragment)
        {
          v46(ValueAtIndex, 1);
        }
      }

      goto LABEL_62;
    }

    v57 = FigMediaSegmentSpecifierGetPartialSegments(ValueAtIndex);
    v58 = 0;
    if (!v57)
    {
LABEL_40:
      Count = 0;
      goto LABEL_41;
    }

    while (1)
    {
      Count = CFArrayGetCount(v57);
LABEL_41:
      if (v58 >= Count)
      {
        break;
      }

      v59 = CFArrayGetValueAtIndex(v57, v58);
      if (FigMediaSegmentSpecifierIsFragment(v59))
      {
        if (FigMediaSegmentSpecifierIsMarkedIndependent(v59))
        {
          HasIndependentSegments = 1;
        }

        else
        {
          HasIndependentSegments = FigMediaPlaylistHasIndependentParts(a1) == 0;
        }
      }

      else
      {
        HasIndependentSegments = FigMediaPlaylistHasIndependentSegments(a1);
      }

      v61 = v52 >= a9 && v47;
      if (HasIndependentSegments && !v61 && FigMediaSegmentSpecifierGetDiscontinuityDomain(v59) + a5 == a4)
      {
        v51 = v52;
        v49 = ValueAtIndex;
        v50 = v59;
      }

      if (!v47 && FigMediaSegmentSpecifierIsMarkedAsGap(v59))
      {
        v50 = 0;
      }

      v52 = v52 + FigMediaSegmentSpecifierGetTimeInSeconds(v59);
      ++v58;
      if (!v57)
      {
        goto LABEL_40;
      }
    }

    v46 = a21;
    if (a6)
    {
      goto LABEL_59;
    }

LABEL_62:
    ++v48;
  }

  ValueAtIndex = 0;
LABEL_64:
  if (!v47 && (v51 < a9 - a15 || v50 == 0))
  {
    v50 = 0;
    ValueAtIndex = 0;
  }

  if (v46 && a6 && v50)
  {
    if (v49)
    {
      v66 = v49;
      do
      {
        v46(v66, 0);
        v66 = FigMediaSegmentSpecifierGetNextSegment(v66);
      }

      while (v66);
    }

    v67 = FigMediaSegmentSpecifierGetPartialSegments(v49);
    v68 = 0;
    if (!v67)
    {
      goto LABEL_78;
    }

LABEL_77:
    for (i = CFArrayGetCount(v67); v68 < i; i = 0)
    {
      v70 = CFArrayGetValueAtIndex(v67, v68);
      if (v70 == v50)
      {
        break;
      }

      v46(v70, 1);
      ++v68;
      if (v67)
      {
        goto LABEL_77;
      }

LABEL_78:
      ;
    }

    v52 = v51;
    ValueAtIndex = v49;
  }

  *a22 = v50;
  if (ValueAtIndex)
  {
    v71 = 0;
  }

  else
  {
    v71 = 4294954652;
  }

  if (ValueAtIndex == 0 && v47)
  {
    v71 = FigSignalErrorAtGM();
  }

  v72 = v125;
  if (v71)
  {
    if (ValueAtIndex)
    {
      goto LABEL_201;
    }

    goto LABEL_204;
  }

  if (FigMediaSegmentSpecifierIsDiscontinuity(ValueAtIndex))
  {
    TimeInSeconds = FigMediaSegmentSpecifierGetTimeInSeconds(ValueAtIndex);
    v74 = v129;
    goto LABEL_92;
  }

  if (!a7 && *a22)
  {
    goto LABEL_197;
  }

  v81 = a10;
  TimeInSeconds = FigMediaSegmentSpecifierGetTimeInSeconds(ValueAtIndex);
  v82 = a9 - v52;
  if (v120 || *a22 || FigMediaPlaylistHasIndependentSegments(a1) && FigMediaPlaylistGetPlaylistType(a1) == 2)
  {
    if (a17)
    {
      v83 = 1.0;
    }

    else
    {
      v83 = 0.0;
    }
  }

  else
  {
    v83 = TargetDuration;
  }

  if (v82 < v83)
  {
    if (v129)
    {
      v84 = v46 == 0;
    }

    else
    {
      v84 = 1;
    }

    v85 = !v84;
    while (vabdd_f64(v82, v83) >= 0.001)
    {
      PreviousSegment = FigMediaSegmentSpecifierGetPreviousSegment(ValueAtIndex);
      if (!PreviousSegment)
      {
        break;
      }

      v87 = PreviousSegment;
      if (FigMediaSegmentSpecifierGetDiscontinuityDomain(PreviousSegment) + a5 != a4)
      {
        break;
      }

      if (v85)
      {
        v46(v87, 0);
      }

      TimeInSeconds = TimeInSeconds + FigMediaSegmentSpecifierGetTimeInSeconds(v87);
      v82 = v82 + FigMediaSegmentSpecifierGetTimeInSeconds(v87);
      v52 = v52 - FigMediaSegmentSpecifierGetTimeInSeconds(v87);
      ValueAtIndex = v87;
      if (v82 >= v83)
      {
        goto LABEL_118;
      }
    }
  }

  v87 = ValueAtIndex;
LABEL_118:
  if (FigMediaPlaylistHasIndependentSegments(a1))
  {
    ValueAtIndex = v87;
    v74 = v129;
    a10 = v81;
  }

  else
  {
    v74 = v129;
    a10 = v81;
    if (v82 < TargetDuration && (v88 = FigMediaSegmentSpecifierGetPreviousSegment(v87)) != 0 && (ValueAtIndex = v88, FigMediaSegmentSpecifierGetDiscontinuityDomain(v88) + a5 == a4))
    {
      if (v129 && v46)
      {
        v46(ValueAtIndex, 0);
      }

      TimeInSeconds = TimeInSeconds + FigMediaSegmentSpecifierGetTimeInSeconds(ValueAtIndex);
      v52 = v52 - FigMediaSegmentSpecifierGetTimeInSeconds(ValueAtIndex);
    }

    else
    {
      ValueAtIndex = v87;
    }
  }

LABEL_92:
  if (a12 <= 0.0 || !a7)
  {
    goto LABEL_197;
  }

  v75 = TimeInSeconds * a11;
  AvgSegmentDuration = FigMediaPlaylistGetAvgSegmentDuration(a1);
  v77 = v75 / a12 + a14;
  v78 = v52 + FigMediaSegmentSpecifierGetTimeInSeconds(ValueAtIndex) - a9 + a10;
  v132 = a16;
  v79 = a10 / a16;
  if (dword_1EAF16A30)
  {
    v80 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (AvgSegmentDuration == 0.0)
  {
    v89 = 0;
    if (!v125)
    {
LABEL_140:
      v91 = 1;
      goto LABEL_141;
    }
  }

  else
  {
    TimeOffsetInSeconds = FigMediaSegmentSpecifierGetTimeOffsetInSeconds(ValueAtIndex);
    if (!v125)
    {
      v89 = 0;
      goto LABEL_140;
    }

    v89 = (TimeOffsetInSeconds / AvgSegmentDuration);
  }

  if (v89 < CFArrayGetCount(v125) - 1)
  {
    if (v89 >= 1)
    {
      goto LABEL_134;
    }

LABEL_137:
    v91 = 0;
    v89 = 0;
    goto LABEL_141;
  }

  if (CFArrayGetCount(v125) <= 1)
  {
    goto LABEL_137;
  }

LABEL_134:
  v91 = 0;
  if (v89 >= CFArrayGetCount(v125) - 1)
  {
    v89 = CFArrayGetCount(v125) - 1;
  }

LABEL_141:
  v92 = !v74 || a21 == 0;
  v93 = !v92;
  v94 = FigMediaSegmentSpecifierGetPreviousSegment(ValueAtIndex);
  if (!v94)
  {
LABEL_197:
    v97 = ValueAtIndex;
    if (ValueAtIndex)
    {
      goto LABEL_194;
    }

    v71 = 0;
    goto LABEL_204;
  }

  v95 = v79 - v77;
  v96 = 0.0;
  while (2)
  {
    v97 = v94;
    v98 = FigMediaSegmentSpecifierGetTimeInSeconds(v94);
    v99 = FigMediaSegmentSpecifierGetTimeOffsetInSeconds(v97);
    if (!theData || (v100 = v99, v101 = CFDataGetLength(theData), v102 = CFDataGetBytePtr(theData), v101 < 8))
    {
      BitRate = FigMediaSegmentSpecifierGetBitRate(v97);
      goto LABEL_176;
    }

    v105 = v102;
    v106 = v101 >> 3;
    v107 = v89 >= 0;
    v108 = v89 < v106;
    if (v89 < 0 || v89 >= v106)
    {
      goto LABEL_173;
    }

    v109 = 0;
    while (2)
    {
      v110 = 0;
      valuePtr[0] = 0.0;
      if ((v91 & 1) == 0)
      {
        v110 = CFArrayGetCount(v72);
      }

      if (v110 > v89)
      {
        v111 = CFArrayGetValueAtIndex(v72, v89);
        CFNumberGetValue(v111, kCFNumberDoubleType, valuePtr);
        v103 = valuePtr[0];
        if (!v109)
        {
          goto LABEL_159;
        }

LABEL_163:
        if (v109 == -1)
        {
          if (v103 < v98 + v100)
          {
            goto LABEL_172;
          }
        }

        else
        {
          v103 = v98 + v103;
          if (v103 > v100)
          {
            goto LABEL_172;
          }
        }

        v89 += v109;
        v107 = v89 >= 0;
        v108 = v89 < v106;
        if (v89 < 0 || v89 >= v106)
        {
          goto LABEL_173;
        }

        continue;
      }

      break;
    }

    FigMediaPlaylistUtilityDetermineSegmentToSwitchTo_cold_3();
    v103 = 0.0;
    if (v109)
    {
      goto LABEL_163;
    }

LABEL_159:
    if (v103 < v100)
    {
      v109 = 1;
    }

    else
    {
      v109 = -1;
    }

    if (vabdd_f64(v103, v100) > 2.22044605e-16)
    {
      goto LABEL_163;
    }

LABEL_172:
    v107 = 1;
    v108 = 1;
LABEL_173:
    BitRate = 0.0;
    if (v107 && v108)
    {
      LODWORD(v103) = *&v105[8 * v89 + 4];
      BitRate = *&v103;
    }

LABEL_176:
    if (FigMediaSegmentSpecifierIsDiscontinuity(ValueAtIndex))
    {
      goto LABEL_197;
    }

    DiscontinuityDomain = FigMediaSegmentSpecifierGetDiscontinuityDomain(v97);
    if (DiscontinuityDomain != FigMediaSegmentSpecifierGetDiscontinuityDomain(ValueAtIndex))
    {
      goto LABEL_197;
    }

    v113 = FigMediaSegmentSpecifierGetTimeInSeconds(v97);
    v114 = a11;
    if (BitRate > 0.0)
    {
      v114 = BitRate;
    }

    v115 = v114 * v113;
    if (v96 < (4 * TargetDuration))
    {
      v115 = v115 + v115;
      v96 = v96 + FigMediaSegmentSpecifierGetTimeInSeconds(ValueAtIndex);
    }

    v116 = v115 / a12 + a14;
    v78 = v78 - FigMediaSegmentSpecifierGetTimeInSeconds(ValueAtIndex);
    if (dword_1EAF16A30)
    {
      v117 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v117, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v72 = v125;
    }

    if (v116 >= v95 || v78 <= 0.0 || v78 < 30.0 && BitRate > 0.0 && BitRate > a12)
    {
      goto LABEL_197;
    }

    if (v78 <= FigMediaSegmentSpecifierGetTimeInSeconds(v97))
    {
      v116 = v116 * 1.1;
      if (v78 / v132 < v116)
      {
        goto LABEL_197;
      }
    }

    if (v93)
    {
      a21(v97, 0);
    }

    v95 = v95 - v116;
    FigMediaSegmentSpecifierGetTimeInSeconds(v97);
    v52 = v52 - FigMediaSegmentSpecifierGetTimeInSeconds(v97);
    v94 = FigMediaSegmentSpecifierGetPreviousSegment(v97);
    ValueAtIndex = v97;
    if (v94)
    {
      continue;
    }

    break;
  }

LABEL_194:
  if (FigMediaSegmentSpecifierIsFragment(v97) && !*a22)
  {
    FigMediaSegmentSpecifierGetPartialSegments(v97);
    v71 = 0;
    *a22 = FigCFArrayGetFirstValue();
  }

  else
  {
    v71 = 0;
  }

  ValueAtIndex = v97;
LABEL_201:
  if (dword_1EAF16A30)
  {
    v118 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  *a23 = ValueAtIndex;
LABEL_204:
  if (v72)
  {
    CFRelease(v72);
  }

  return v71;
}

uint64_t fmpu_bitsRequiredToSwitch(uint64_t a1, uint64_t a2, int a3, int a4, double a5, double a6)
{
  TargetDuration = FigMediaPlaylistGetTargetDuration(a2);
  if (a4 || (PlaylistType = FigMediaPlaylistGetPlaylistType(a2), v14 = TargetDuration, PlaylistType == 2))
  {
    v14 = 1.0;
    if (*(a1 + 64))
    {
      v14 = TargetDuration;
    }
  }

  v15 = v14 + TargetDuration;
  if (a5 + a6 < v15)
  {
    v15 = a5 + a6;
  }

  return ((v15 + (*(a1 + 68) + 1.0) * TargetDuration) * a3);
}

uint64_t FigMediaPlaylistUtilitySetFigAlternateBitrateCurve(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = FigAlternateCopyStreamBitrateCurve(a1, a3);
  if (!v6)
  {
    MediaSegmentSpecifiers = FigMediaPlaylistGetMediaSegmentSpecifiers(a2);
    if (MediaSegmentSpecifiers)
    {
      Count = CFArrayGetCount(MediaSegmentSpecifiers);
    }

    else
    {
      Count = 0;
    }

    Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 8 * Count);
    if (!Mutable)
    {
      FigMediaPlaylistUtilitySetFigAlternateBitrateCurve_cold_1(&v18);
      return v18;
    }

    v10 = Mutable;
    CFDataSetLength(Mutable, 8 * Count);
    MutableBytePtr = CFDataGetMutableBytePtr(v10);
    if (Count >= 1)
    {
      v12 = 0;
      v13 = (MutableBytePtr + 4);
      do
      {
        v14 = FigMediaPlaylistGetMediaSegmentSpecifiers(a2);
        ValueAtIndex = CFArrayGetValueAtIndex(v14, v12);
        TimeInSeconds = FigMediaSegmentSpecifierGetTimeInSeconds(ValueAtIndex);
        *(v13 - 1) = TimeInSeconds;
        *v13 = FigMediaSegmentSpecifierGetBitRate(ValueAtIndex);
        v13 += 2;
        ++v12;
      }

      while (Count != v12);
    }

    FigAlternateSetStreamBitrateCurve(a1, v10, a3);
    v6 = v10;
  }

  CFRelease(v6);
  return 0;
}

uint64_t playerasync_createCommon()
{
  v9 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v5 = 0u;
  v6 = 0u;
  *__str = 0u;
  FigKTraceInit();
  FigPlayerGetClassID();
  v0 = CMDerivedObjectCreate();
  if (v0)
  {
    return v0;
  }

  playerasync_createCommon_cold_10(&v3);
  return v3;
}

uint64_t fpa_checkSubPlayerHealth(uint64_t a1)
{
  number = 0;
  FigBaseObject = FigPlayerGetFigBaseObject(a1);
  v2 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v2)
  {
    v3 = v2(FigBaseObject, @"Status", *MEMORY[0x1E695E480], &number);
    if ((v3 + 12782) > 0xFFFFFFFD)
    {
      v4 = 0;
    }

    else
    {
      v4 = v3;
      if (!v3)
      {
        if (!number)
        {
          return 0;
        }

        valuePtr = 0;
        CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr);
        v4 = valuePtr;
      }
    }
  }

  else
  {
    v4 = 4294954514;
  }

  if (number)
  {
    CFRelease(number);
  }

  return v4;
}

uint64_t FigPlayerAsyncCreateWithEngineTopologyAndOptions(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v14 = 0;
  v15 = 0;
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  if (a4)
  {
    *a4 = 0;
    Common = playerasync_createCommon();
    v8 = v15;
    if (Common || (CMBaseObjectGetDerivedStorage(), Common = FigDispatchQueueHolderCreateWithDispatchQueue(), Common))
    {
      v12 = Common;
      v10 = 0;
    }

    else
    {
      CFDictionarySetValue(MutableCopy, @"AsynchronousControlQueueHolder", 0);
      v9 = playerasync_createCommand(v15, 1, 0, &v14);
      v10 = v14;
      if (!v9)
      {
        *(v14 + 32) = a2 & 0xFFFFFFBF;
        if (MutableCopy)
        {
          v11 = CFRetain(MutableCopy);
        }

        else
        {
          v11 = 0;
        }

        *(v10 + 40) = v11;
        if ((a2 & 0x200) != 0)
        {
          playerasync_runSynchronousCommand(v8, v10);
          if (*(v10 + 28))
          {
            fig_log_get_emitter();
            v12 = FigSignalErrorAtGM();
LABEL_13:
            *a4 = v8;
            fpa_releaseCommand(v10);
            goto LABEL_14;
          }
        }

        else
        {
          playerasync_runAsynchronousCommand(v8, v10);
          v10 = 0;
        }

        v12 = 0;
        goto LABEL_13;
      }

      v12 = v9;
    }

    fpa_releaseCommand(v10);
    if (v8)
    {
      CFRelease(v8);
    }
  }

  else
  {
    FigPlayerAsyncCreateWithEngineTopologyAndOptions_cold_1();
    v12 = v16;
  }

LABEL_14:
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  return v12;
}

void playerasync_runSynchronousCommand(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    playerasync_runSynchronousCommand_cold_1(a2);
  }

  else
  {
    v4 = DerivedStorage;
    v5 = *(DerivedStorage + 72);
    if (v5 == MEMORY[0x19A8D35D0]())
    {

      playerasync_runSynchronousCommandOnQueue(a2);
    }

    else
    {
      v6 = *(v4 + 56);

      dispatch_sync_f(v6, a2, playerasync_runSynchronousCommandOnQueue);
    }
  }
}

void playerasync_runAsynchronousCommand(void *a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  MEMORY[0x19A8D35D0]();
  FigSimpleMutexLock();
  *a2 = 0;
  **(DerivedStorage + 120) = a2;
  *(DerivedStorage + 120) = a2;
  FigSimpleMutexUnlock();
  CFRetain(a1);
  v5 = *(DerivedStorage + 56);

  dispatch_async_f(v5, a1, playerasync_runAsynchronousCommandOnQueue);
}

uint64_t FigPlayerAsyncDispatchToPlayerQueue(uint64_t a1, void *a2)
{
  if (a1 && (FigPlayerGetClassID(), CMBaseObjectIsMemberOfClass()) && CMBaseObjectGetVTable() == &kFigPlayerAsyncVTable)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    dispatch_async(*(DerivedStorage + 56), a2);
    return 0;
  }

  else
  {
    FigPlayerAsyncDispatchToPlayerQueue_cold_1(&v5);
    return v5;
  }
}

void playerasync_InvalidateOnQueue(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 5))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    *(DerivedStorage + 5) = 0;
  }

  FigSimpleMutexLock();
  *v11 = *(DerivedStorage + 112);
  *(DerivedStorage + 112) = 0;
  *(DerivedStorage + 120) = DerivedStorage + 112;
  FigSimpleMutexUnlock();
  for (i = v11[0]; v11[0]; i = v11[0])
  {
    v11[0] = *i;
    if (!v11[0])
    {
      v11[1] = v11;
    }

    fpa_releaseCommand(i);
  }

  if (*(DerivedStorage + 24))
  {
    FigCFWeakReferenceTableApplyFunction();
  }

  FigSimpleMutexLock();
  v4 = *(DerivedStorage + 32);
  if (!v4)
  {
    FigSimpleMutexUnlock();
    Copy = 0;
    goto LABEL_13;
  }

  Copy = CFSetCreateCopy(*MEMORY[0x1E695E480], v4);
  FigSimpleMutexUnlock();
  if (!Copy)
  {
LABEL_13:
    v6 = 1;
    goto LABEL_14;
  }

  CFSetApplyFunction(Copy, playerasync_InvalidateItem, 0);
  v6 = 0;
LABEL_14:
  v7 = *(DerivedStorage + 16);
  if (v7)
  {
    FigBaseObject = FigPlayerGetFigBaseObject(v7);
    if (FigBaseObject)
    {
      v9 = FigBaseObject;
      v10 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v10)
      {
        v10(v9);
      }
    }
  }

  if ((v6 & 1) == 0)
  {
    CFRelease(Copy);
  }

  CFRelease(a1);
}

void itemasync_InvalidateInternal(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v3)
  {
    v4 = CMBaseObjectGetDerivedStorage();
  }

  else
  {
    v4 = 0;
  }

  if (*(DerivedStorage + 4))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    *(DerivedStorage + 4) = 0;
  }

  if (v3)
  {
    FigSimpleMutexLock();
    *(DerivedStorage + 8) = -12785;
    MEMORY[0x19A8D12E0](*(v4 + 128));
    FigSimpleMutexUnlock();
    if (*(DerivedStorage + 16))
    {
      FigCFWeakReferenceTableRemoveValue();
    }

    else
    {
      FigSimpleMutexLock();
      CFSetRemoveValue(*(v4 + 32), a1);
      FigSimpleMutexUnlock();
    }

    v9 = CMBaseObjectGetDerivedStorage();
    if (!*v9)
    {
      v10 = v9;
      FigSimpleMutexLock();
      for (i = *(v10 + 14); i; i = *i)
      {
        if (i[2] == a1)
        {
          *(i + 6) |= 0x10000u;
        }
      }

      v9 = FigSimpleMutexUnlock();
    }

    if (*(DerivedStorage + 16))
    {
      v12 = *(v4 + 72);
      if (v12 == MEMORY[0x19A8D35D0](v9))
      {
        FigBaseObject = FigPlaybackItemGetFigBaseObject(*(DerivedStorage + 16));
        if (FigBaseObject)
        {
          v18 = FigBaseObject;
          v19 = *(*(CMBaseObjectGetVTable() + 8) + 24);
          if (v19)
          {
            v19(v18);
          }
        }
      }

      else
      {
        v13 = FigSimpleMutexLock();
        *(v4 + 72) = MEMORY[0x19A8D35D0](v13);
        v14 = FigPlaybackItemGetFigBaseObject(*(DerivedStorage + 16));
        if (v14)
        {
          v15 = v14;
          v16 = *(*(CMBaseObjectGetVTable() + 8) + 24);
          if (v16)
          {
            v16(v15);
          }
        }

        *(v4 + 72) = 0;
        FigSimpleMutexUnlock();
      }
    }

    playerasync_removeItemFromPlayQueueWithoutInformingSubPlayer(v3, a1);

    CFRelease(v3);
  }

  else
  {
    v5 = *(DerivedStorage + 16);
    if (v5)
    {
      v6 = FigPlaybackItemGetFigBaseObject(v5);
      if (v6)
      {
        v7 = v6;
        v8 = *(*(CMBaseObjectGetVTable() + 8) + 24);
        if (v8)
        {

          v8(v7);
        }
      }
    }
  }
}

void playerasync_runImmediateCommand(const void *a1, uint64_t a2, int a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    playerasync_runImmediateCommand_cold_1(a2);
    return;
  }

  v7 = DerivedStorage;
  v8 = *(DerivedStorage + 72);
  if (v8 != MEMORY[0x19A8D35D0]())
  {
    if (a3)
    {
      if (FigSimpleMutexTryLock())
      {
LABEL_5:
        *(v7 + 72) = MEMORY[0x19A8D35D0]();
        playerasync_runOneCommand(a1, a2);
        *(v7 + 72) = 0;

        FigSimpleMutexUnlock();
        return;
      }
    }

    else if (!FigSimpleMutexLock())
    {
      goto LABEL_5;
    }

    *(a2 + 28) = -12783;
    return;
  }

  playerasync_runOneCommand(a1, a2);
}

void playerasync_runOneCommand(const void *a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v59 = 0;
  *(a2 + 28) = 0;
  v5 = (a2 + 28);
  v6 = *(a2 + 24);
  if ((v6 & 0x10000) == 0)
  {
    v7 = DerivedStorage;
    if (*DerivedStorage)
    {
      fig_log_get_emitter();
      *v5 = FigSignalErrorAtGM();
      return;
    }

    if (*(a2 + 16))
    {
      v8 = CMBaseObjectGetDerivedStorage();
      v6 = *(a2 + 24);
    }

    else
    {
      v8 = 0;
    }

    if (v6 == 1)
    {
      v9 = *(a2 + 16);
      if (!v9)
      {
LABEL_9:
        v10 = CFGetAllocator(a1);
        v11 = FigSharedPlayerCreateWithOptions(v10, *(a2 + 32) & 0xFFFFFFBF, *(a2 + 40), &v59);
        *(a2 + 28) = v11;
        if (v11 || (CMNotificationCenterGetDefaultLocalCenter(), v11 = FigNotificationCenterAddWeakListener(), (*v5 = v11) != 0))
        {
          v12 = v11;
          FigSimpleMutexLock();
        }

        else
        {
          *(v7 + 5) = 1;
          v12 = fpa_checkSubPlayerHealth(v59);
          *v5 = v12;
          FigSimpleMutexLock();
          if (!v12)
          {
            v15 = v59;
            if (v59)
            {
              v15 = CFRetain(v59);
            }

            v12 = 0;
            *(v7 + 2) = v15;
            v13 = 1;
            goto LABEL_13;
          }
        }

        v13 = 0;
LABEL_13:
        v7[2] = v12;
        MEMORY[0x19A8D12E0](*(v7 + 16));
        FigSimpleMutexUnlock();
        if ((v13 & 1) == 0)
        {
          playerasync_postPlayerStatusChanged();
        }

        goto LABEL_81;
      }
    }

    else
    {
      if (!*(v7 + 2))
      {
        playerasync_runOneCommand_cold_1();
        goto LABEL_81;
      }

      v9 = *(a2 + 16);
      if (!v9)
      {
        goto LABEL_21;
      }

      if (v6 == 16)
      {
LABEL_18:
        SubItem = playerasync_createSubItem(a1, v9, *(a2 + 32), *(a2 + 40), *(a2 + 48));
        *(a2 + 28) = SubItem;
        if (SubItem)
        {
          itemasync_postItemStatusChanged();
        }

        goto LABEL_81;
      }
    }

    if (*(v8 + 16))
    {
LABEL_21:
      switch(v6)
      {
        case 1:
          goto LABEL_9;
        case 2:
          playerasync_runCopyPropertyCommand(a2);
          goto LABEL_81;
        case 3:
          if (FigCFEqual())
          {
            v29 = *(a2 + 40);
            if (v29 && (Count = CFArrayGetCount(*(a2 + 40)), Count >= 1))
            {
              v31 = Count;
              Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], Count, MEMORY[0x1E695E9C0]);
              for (i = 0; i != v31; ++i)
              {
                CFArrayGetValueAtIndex(v29, i);
                CMBaseObjectGetDerivedStorage();
                FigCFArrayAppendValue();
              }
            }

            else
            {
              Mutable = 0;
            }

            FigBaseObject = FigPlayerGetFigBaseObject(*(v7 + 2));
            *v5 = CMBaseObjectSetProperty(FigBaseObject, @"ItemsToPrebuffer", Mutable);
            if (Mutable)
            {
              CFRelease(Mutable);
            }
          }

          else
          {
            v48 = *(v7 + 2);
            v20 = *(a2 + 32);
            v21 = *(a2 + 40);
            v22 = FigPlayerGetFigBaseObject(v48);
LABEL_79:
            Rate = CMBaseObjectSetProperty(v22, v20, v21);
LABEL_80:
            *(a2 + 28) = Rate;
          }

          break;
        case 4:
          Rate = FigPlayerSetProperties(*(v7 + 2), *(a2 + 32), a2 + 40);
          goto LABEL_80;
        case 6:
          if (*(a2 + 32))
          {
            v37 = CMBaseObjectGetDerivedStorage();
            v38 = *(v7 + 2);
            v39 = *(v8 + 16);
            if (v37)
            {
              v40 = *(v37 + 16);
            }

            else
            {
              v40 = 0;
            }
          }

          else
          {
            v40 = 0;
            v38 = *(v7 + 2);
            v39 = *(v8 + 16);
          }

          v52 = FigPlayerAddToPlayQueue(v38, v39, v40);
          *v5 = v52;
          if (!v52 && !*v7)
          {
            CFSetAddValue(*(v7 + 6), *(a2 + 16));
          }

          goto LABEL_81;
        case 7:
          if (v8)
          {
            v34 = *(v8 + 16);
          }

          else
          {
            v34 = 0;
          }

          v49 = FigPlayerRemoveFromPlayQueue(*(v7 + 2), v34);
          *v5 = v49;
          if (!v49 && !*v7)
          {
            v50 = *(a2 + 16);
            v51 = *(v7 + 6);
            if (v50)
            {
              CFSetRemoveValue(v51, v50);
            }

            else
            {
              CFSetRemoveAllValues(v51);
            }
          }

          goto LABEL_81;
        case 8:
          playerasync_runCopyPlayQueueItemCommand(a2);
          goto LABEL_81;
        case 9:
          Rate = FigPlayerSetRate(*(v7 + 2), *(a2 + 32));
          goto LABEL_80;
        case 10:
          Rate = FigPlayerGetRate(*(v7 + 2), *(a2 + 32));
          goto LABEL_80;
        case 11:
          v41 = *(v7 + 2);
          v42 = *(a2 + 32);
          v57 = *(a2 + 36);
          v58 = *(a2 + 52);
          Rate = FigPlayerSetRateWithFade(v41, &v57, v42);
          goto LABEL_80;
        case 12:
          Rate = FigPlayerStartPreroll(*(v7 + 2), *(a2 + 36), *(a2 + 32));
          goto LABEL_80;
        case 13:
          Rate = FigPlayerStepByCount(*(v7 + 2), *(a2 + 32));
          goto LABEL_80;
        case 15:
          v26 = *(v7 + 2);
          v27 = *(a2 + 32);
          v28 = *(a2 + 84);
          v57 = *(a2 + 36);
          v58 = *(a2 + 52);
          v55 = *(a2 + 60);
          v56 = *(a2 + 76);
          Rate = FigPlayerSetRateAndAnchorTime(v26, &v57, &v55, v28, v27);
          goto LABEL_80;
        case 16:
          goto LABEL_18;
        case 17:
          Rate = FigPlayerSetRateWithOptions(*(v7 + 2), *(a2 + 64), *(a2 + 32));
          goto LABEL_80;
        case 18:
          Rate = FigPlayerAddExternalStartupTask(*(v7 + 2), *(a2 + 32));
          goto LABEL_80;
        case 19:
          Rate = FigPlayerRemoveExternalStartupTask(*(v7 + 2), *(a2 + 32));
          goto LABEL_80;
        case 20:
          *v5 = FigPlayerBeginInterruption(*(v7 + 2));
          goto LABEL_81;
        case 21:
          Rate = FigPlayerEndInterruption(*(v7 + 2), *(a2 + 32));
          goto LABEL_80;
        case 22:
          Rate = FigPlayerSetConnectionActive(*(v7 + 2), *(a2 + 32));
          goto LABEL_80;
        case 23:
          Rate = FigPlayerDuckVolume(*(v7 + 2), *(a2 + 32), *(a2 + 36), *(a2 + 40));
          goto LABEL_80;
        case 24:
          Rate = FigPlayerSilentMute(*(v7 + 2), *(a2 + 32));
          goto LABEL_80;
        case 25:
          Rate = FigPlaybackItemCopyProperty(*(v8 + 16), *(a2 + 32), *(a2 + 40), *(a2 + 48));
          goto LABEL_80;
        case 26:
          v20 = *(a2 + 32);
          v21 = *(a2 + 40);
          v22 = FigPlaybackItemGetFigBaseObject(*(v8 + 16));
          goto LABEL_79;
        case 27:
          Rate = FigPlaybackItemSetProperties(*(v8 + 16), *(a2 + 32), a2 + 40);
          goto LABEL_80;
        case 28:
          Rate = FigPlaybackItemGetDimensions(*(v8 + 16), *(a2 + 32), *(a2 + 40));
          goto LABEL_80;
        case 29:
          Rate = FigPlaybackItemGetDuration(*(v8 + 16), *(a2 + 32));
          goto LABEL_80;
        case 30:
          v45 = *(v8 + 16);
          v46 = *(a2 + 56);
          v57 = *(a2 + 32);
          v58 = *(a2 + 48);
          Rate = FigPlaybackItemSetCurrentTime(v45, &v57, v46);
          goto LABEL_80;
        case 31:
          Rate = FigPlaybackItemGetCurrentTime_0(*(v8 + 16), *(a2 + 32));
          goto LABEL_80;
        case 32:
          Rate = FigPlaybackItemCopyTrackProperty(*(v8 + 16), *(a2 + 32), *(a2 + 40), *(a2 + 48), *(a2 + 56));
          goto LABEL_80;
        case 33:
          Rate = FigPlaybackItemMakeReadyForInspection(*(v8 + 16), *(a2 + 32), *(a2 + 40));
          goto LABEL_80;
        case 35:
          Rate = FigPlaybackItemCopyCommonMetadata(*(v8 + 16), *(a2 + 32), *(a2 + 40), *(a2 + 48));
          goto LABEL_80;
        case 36:
          Rate = FigPlaybackItemCopyChapterImageData(*(v8 + 16), *(a2 + 32), *(a2 + 40), *(a2 + 48));
          goto LABEL_80;
        case 37:
          v23 = *(v8 + 16);
          v24 = *(a2 + 56);
          v25 = *(a2 + 64);
          v57 = *(a2 + 32);
          v58 = *(a2 + 48);
          Rate = FigPlaybackItemGetNextThumbnailTime(v23, &v57, v24, v25);
          goto LABEL_80;
        case 40:
          v43 = *(v8 + 16);
          v44 = *(a2 + 56);
          v57 = *(a2 + 32);
          v58 = *(a2 + 48);
          v55 = *(a2 + 60);
          v56 = *(a2 + 76);
          v53 = *(a2 + 84);
          v54 = *(a2 + 100);
          Rate = FigPlaybackItemSetCurrentTimeWithRange(v43, &v57, v44, &v55, &v53);
          goto LABEL_80;
        case 41:
          Rate = FigPlaybackItemSetTrackProperty(*(v8 + 16), *(a2 + 32), *(a2 + 40), *(a2 + 48));
          goto LABEL_80;
        case 42:
          Rate = FigPlaybackItemCopyFormatReader(*(v8 + 16), *(a2 + 32));
          goto LABEL_80;
        case 43:
          Rate = FigPlaybackItemSeekToDateWithID(*(v8 + 16), *(a2 + 32), *(a2 + 40));
          goto LABEL_80;
        case 44:
          v17 = *(v8 + 16);
          v18 = *(a2 + 56);
          v19 = *(a2 + 108);
          v57 = *(a2 + 32);
          v58 = *(a2 + 48);
          v55 = *(a2 + 60);
          v56 = *(a2 + 76);
          v53 = *(a2 + 84);
          v54 = *(a2 + 100);
          Rate = FigPlaybackItemSetCurrentTimeWithRangeAndID(v17, &v57, v18, &v55, &v53, v19);
          goto LABEL_80;
        case 45:
          Rate = FigPlaybackItemCopyAsset(*(v8 + 16), *(a2 + 32));
          goto LABEL_80;
        case 46:
          Rate = FigPlaybackItemExtractAndRetainNextSampleBuffer(*(v8 + 16), *(a2 + 32), *(a2 + 36), *(a2 + 40));
          goto LABEL_80;
        case 47:
          v35 = *(v8 + 16);
          v57 = *(a2 + 32);
          v36 = *(a2 + 56);
          v58 = *(a2 + 48);
          Rate = FigPlaybackItemSetCurrentTimeWithOptions(v35, &v57, v36);
          goto LABEL_80;
        case 48:
          Rate = FigPlayerCopyDisplayedCVPixelBuffer(*(v7 + 2), *(a2 + 32), *(a2 + 40));
          goto LABEL_80;
        default:
          goto LABEL_81;
      }

      goto LABEL_81;
    }

    playerasync_runOneCommand_cold_2();
LABEL_81:
    if (v59)
    {
      CFRelease(v59);
    }
  }
}

void playerasync_postPlayerStatusChanged()
{
  if (CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]))
  {
    playerasync_postPlayerStatusChanged_cold_1();
  }

  else
  {
    playerasync_postPlayerStatusChanged_cold_2();
  }
}

uint64_t playerasync_runCopyPropertyCommand(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(a1 + 48);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 16))
  {
    playerasync_runCopyPropertyCommand_cold_1();
    result = v12;
    goto LABEL_18;
  }

  if (!CFEqual(v3, @"SynchronizedNULL"))
  {
    if (CFEqual(v3, @"UserVolume"))
    {
      FigSimpleMutexLock();
      v7 = *(DerivedStorage + 88);
      if (v7)
      {
        v7 = CFRetain(v7);
      }

      *v4 = v7;
      FigSimpleMutexUnlock();
      if (*v4)
      {
LABEL_8:
        result = 0;
        goto LABEL_18;
      }

      FigBaseObject = FigPlayerGetFigBaseObject(*(DerivedStorage + 16));
      v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v9)
      {
        result = v9(FigBaseObject, v3, v2, v4);
        if (result)
        {
          goto LABEL_18;
        }

        if (*v4)
        {
          FigSimpleMutexLock();
          *(DerivedStorage + 88) = CFRetain(*v4);
          FigSimpleMutexUnlock();
        }

        goto LABEL_8;
      }
    }

    else
    {
      if (CFEqual(v3, @"Topology"))
      {
        result = FPSupport_CreatePlayerTopology(*MEMORY[0x1E695E480], @"Async", *(DerivedStorage + 16), v4);
        goto LABEL_18;
      }

      v10 = FigPlayerGetFigBaseObject(*(DerivedStorage + 16));
      v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v11)
      {
        result = v11(v10, v3, v2, v4);
        goto LABEL_18;
      }
    }

    result = 4294954514;
    goto LABEL_18;
  }

  result = 0;
  *v4 = 0;
LABEL_18:
  *(a1 + 28) = result;
  return result;
}

uint64_t FigPlayerSetProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 112);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(a1, a2, a3);
}

uint64_t FigPlayerAddToPlayQueue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(a1, a2, a3);
}

uint64_t FigPlayerRemoveFromPlayQueue(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a1, a2);
}

void playerasync_runCopyPlayQueueItemCommand(uint64_t a1)
{
  v2 = *(a1 + 16);
  cf = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (v2 && (v2 = *(CMBaseObjectGetDerivedStorage() + 16)) == 0)
  {
    playerasync_runCopyPlayQueueItemCommand_cold_1();
    v8 = 0;
    v6 = v10;
  }

  else
  {
    v4 = *(DerivedStorage + 16);
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v5)
    {
      v6 = v5(v4, v2, &cf);
      v7 = cf;
      if (cf)
      {
        if (*DerivedStorage)
        {
          v8 = 0;
          v6 = -12785;
        }

        else
        {
          v8 = FigCFWeakReferenceTableCopyValue();
          if (!v8)
          {
            v6 = -12785;
          }

          v7 = cf;
        }

        CFRelease(v7);
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
      v6 = -12782;
    }
  }

  *(a1 + 28) = v6;
  **(a1 + 32) = v8;
}

uint64_t FigPlayerSetRate(uint64_t a1, float a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v4)
  {
    return 4294954514;
  }

  v5.n128_f32[0] = a2;

  return v4(a1, v5);
}

uint64_t FigPlayerSetRateWithFade(uint64_t a1, __int128 *a2, float a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v6)
  {
    return 4294954514;
  }

  v8 = *a2;
  v9 = *(a2 + 2);
  return v6(a1, &v8, a3);
}

uint64_t FigPlayerStartPreroll(uint64_t a1, uint64_t a2, float a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (!v6)
  {
    return 4294954514;
  }

  v7.n128_f32[0] = a3;

  return v6(a1, a2, v7);
}

uint64_t FigPlayerStepByCount(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 72);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a1, a2);
}

uint64_t FigPlayerSetRateAndAnchorTime(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4, float a5)
{
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 88);
  if (!v10)
  {
    return 4294954514;
  }

  v14 = *a2;
  v15 = *(a2 + 2);
  v12 = *a3;
  v13 = *(a3 + 2);
  return v10(a1, &v14, &v12, a4, a5);
}

uint64_t playerasync_createSubItem(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v11 = *(DerivedStorage + 16);
  if (v11)
  {
    if (a3)
    {
      v12 = *(*(CMBaseObjectGetVTable() + 16) + 96);
      if (v12)
      {
        v13 = v12(v11, a3, a4, a5, &cf);
        if (!v13)
        {
          CMNotificationCenterGetDefaultLocalCenter();
          v13 = FigNotificationCenterAddWeakListener();
          if (!v13)
          {
            *(v10 + 4) = 1;
            FigSimpleMutexLock();
            CFSetRemoveValue(*(DerivedStorage + 32), a2);
            FigSimpleMutexUnlock();
            FigCFWeakReferenceTableAddValueAssociatedWithKey();
            FigSimpleMutexLock();
            v16 = cf;
            if (cf)
            {
              v16 = CFRetain(cf);
            }

            goto LABEL_14;
          }
        }

        v14 = v13;
      }

      else
      {
        v14 = 4294954514;
      }

      FigSimpleMutexLock();
      goto LABEL_8;
    }

    playerasync_createSubItem_cold_1(&v18);
  }

  else
  {
    playerasync_createSubItem_cold_2();
  }

  v14 = v18;
  FigSimpleMutexLock();
  if (!v14)
  {
    v16 = 0;
LABEL_14:
    v14 = 0;
    *(v10 + 16) = v16;
  }

LABEL_8:
  *(v10 + 8) = v14;
  MEMORY[0x19A8D12E0](*(DerivedStorage + 128));
  FigSimpleMutexUnlock();
  if (cf)
  {
    CFRelease(cf);
  }

  return v14;
}

void itemasync_postItemStatusChanged()
{
  if (CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]))
  {
    itemasync_postItemStatusChanged_cold_1();
  }

  else
  {
    itemasync_postItemStatusChanged_cold_2();
  }
}

uint64_t FigPlayerSetRateWithOptions(uint64_t a1, uint64_t a2, float a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 104);
  if (!v6)
  {
    return 4294954514;
  }

  v7.n128_f32[0] = a3;

  return v6(a1, a2, v7);
}

uint64_t FigPlayerAddExternalStartupTask(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 128);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a1, a2);
}

uint64_t FigPlayerRemoveExternalStartupTask(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 136);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a1, a2);
}

uint64_t FigPlayerBeginInterruption(uint64_t a1)
{
  v2 = *(CMBaseObjectGetVTable() + 24);
  if (!v2)
  {
    return 4294954514;
  }

  v3 = *(v2 + 8);
  if (!v3)
  {
    return 4294954514;
  }

  return v3(a1);
}

uint64_t FigPlayerEndInterruption(uint64_t a1, uint64_t a2)
{
  v4 = *(CMBaseObjectGetVTable() + 24);
  if (!v4)
  {
    return 4294954514;
  }

  v5 = *(v4 + 16);
  if (!v5)
  {
    return 4294954514;
  }

  return v5(a1, a2);
}

uint64_t FigPlayerDuckVolume(uint64_t a1, uint64_t a2, float a3, float a4)
{
  v8 = *(CMBaseObjectGetVTable() + 32);
  if (!v8)
  {
    return 4294954514;
  }

  v11 = *(v8 + 8);
  if (!v11)
  {
    return 4294954514;
  }

  v9.n128_f32[0] = a3;
  v10.n128_f32[0] = a4;

  return v11(a1, a2, v9, v10);
}

uint64_t FigPlayerSilentMute(uint64_t a1, uint64_t a2)
{
  v4 = *(CMBaseObjectGetVTable() + 32);
  if (!v4)
  {
    return 4294954514;
  }

  v5 = *(v4 + 16);
  if (!v5)
  {
    return 4294954514;
  }

  return v5(a1, a2);
}

uint64_t FigPlaybackItemCopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  FigBaseObject = FigPlaybackItemGetFigBaseObject(a1);
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(FigBaseObject, a2, a3, a4);
}

uint64_t FigPlaybackItemSetProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 160);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(a1, a2, a3);
}

uint64_t FigPlaybackItemGetDimensions(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(a1, a2, a3);
}

uint64_t FigPlaybackItemSetCurrentTime(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v6)
  {
    return 4294954514;
  }

  v8 = *a2;
  v9 = *(a2 + 2);
  return v6(a1, &v8, a3);
}

uint64_t FigPlaybackItemSetCurrentTimeWithOptions(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 176);
  if (!v6)
  {
    return 4294954514;
  }

  v8 = *a2;
  v9 = *(a2 + 2);
  return v6(a1, &v8, a3);
}

uint64_t FigPlaybackItemGetCurrentTime_0(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a1, a2);
}

uint64_t FigPlaybackItemCopyTrackProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v10)
  {
    return 4294954514;
  }

  return v10(a1, a2, a3, a4, a5);
}

uint64_t FigPlaybackItemCopyCommonMetadata(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(a1, a2, a3, a4);
}

uint64_t FigPlaybackItemCopyChapterImageData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 72);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(a1, a2, a3, a4);
}

uint64_t FigPlaybackItemGetNextThumbnailTime(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 80);
  if (!v8)
  {
    return 4294954514;
  }

  v10 = *a2;
  v11 = *(a2 + 2);
  return v8(a1, &v10, a3, a4);
}

uint64_t FigPlaybackItemSetCurrentTimeWithRange(uint64_t a1, __int128 *a2, uint64_t a3, __int128 *a4, __int128 *a5)
{
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 104);
  if (!v10)
  {
    return 4294954514;
  }

  v16 = *a2;
  v17 = *(a2 + 2);
  v14 = *a4;
  v15 = *(a4 + 2);
  v12 = *a5;
  v13 = *(a5 + 2);
  return v10(a1, &v16, a3, &v14, &v12);
}

uint64_t FigPlaybackItemSetTrackProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 112);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(a1, a2, a3, a4);
}

uint64_t FigPlaybackItemCopyFormatReader(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 120);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a1, a2);
}

uint64_t FigPlaybackItemSeekToDateWithID(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 128);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(a1, a2, a3);
}

uint64_t FigPlaybackItemSetCurrentTimeWithRangeAndID(uint64_t a1, __int128 *a2, uint64_t a3, __int128 *a4, __int128 *a5, uint64_t a6)
{
  v12 = *(*(CMBaseObjectGetVTable() + 16) + 144);
  if (!v12)
  {
    return 4294954514;
  }

  v18 = *a2;
  v19 = *(a2 + 2);
  v16 = *a4;
  v17 = *(a4 + 2);
  v14 = *a5;
  v15 = *(a5 + 2);
  return v12(a1, &v18, a3, &v16, &v14, a6);
}

uint64_t FigPlaybackItemCopyAsset(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 152);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a1, a2);
}

uint64_t FigPlaybackItemExtractAndRetainNextSampleBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 168);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(a1, a2, a3, a4);
}

uint64_t FigPlayerCopyDisplayedCVPixelBuffer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 152);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(a1, a2, a3);
}

uint64_t playerasync_handleSetProperty(const void *a1, uint64_t a2, const void *a3, const void *a4, _BYTE *a5, CFTypeRef *a6, void *a7)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    playerasync_handleSetProperty_cold_1(&v31);
    return v31;
  }

  if (!a3)
  {
    playerasync_handleSetProperty_cold_5(&v31);
    return v31;
  }

  v14 = DerivedStorage;
  if (CFEqual(@"WantsVolumeChangesWhenPausedOrInactive", a3))
  {
    FigSimpleMutexLock();
    v15 = *(v14 + 11);
    if (v15)
    {
      CFRelease(v15);
      *(v14 + 11) = 0;
    }

    FigSimpleMutexUnlock();
    goto LABEL_9;
  }

  if (CFEqual(@"OnMediaServer", a3))
  {
    *(v14 + 4) = *MEMORY[0x1E695E4D0] == a4;
LABEL_9:
    *a5 = 0;
    *a6 = CFRetain(a3);
    if (a4)
    {
      v16 = CFRetain(a4);
    }

    else
    {
      v16 = 0;
    }

    *a7 = v16;
    if (CFEqual(a3, @"UserVolume") || CFEqual(a3, @"UserMuted") || CFEqual(a3, @"EQPreset"))
    {
      playerasync_cancelQueuedCommandsMatching(a1, 3u, 0);
    }

    return 0;
  }

  if (CFEqual(@"AudioDeviceUID", a3))
  {
    v31 = 0;
    v19 = playerasync_createCommand(a1, 3, 0, &v31);
    if (v19)
    {
      return v19;
    }

    v20 = CFRetain(a3);
    v21 = v31;
    *(v31 + 32) = v20;
    if (a4)
    {
      v22 = CFRetain(a4);
    }

    else
    {
      v22 = 0;
    }

    *(v21 + 40) = v22;
    playerasync_runSynchronousCommand(a1, v21);
    v17 = *(v21 + 28);
    fpa_releaseCommand(v21);
    *a5 = 1;
    return v17;
  }

  if (!CFEqual(@"ItemsToPrebuffer", a3))
  {
    goto LABEL_9;
  }

  if (!a4)
  {
    v29 = *(v14 + 20);
    *(v14 + 20) = 0;
LABEL_38:
    if (v29)
    {
      CFRelease(v29);
    }

    goto LABEL_9;
  }

  v23 = CFGetTypeID(a4);
  if (v23 != CFArrayGetTypeID())
  {
    playerasync_handleSetProperty_cold_2(&v31);
    return v31;
  }

  Count = CFArrayGetCount(a4);
  if (Count < 1)
  {
LABEL_34:
    v29 = *(v14 + 20);
    *(v14 + 20) = a4;
    CFRetain(a4);
    goto LABEL_38;
  }

  v24 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a4, v24);
    if (!ValueAtIndex || (v26 = CFGetTypeID(ValueAtIndex), v26 != FigPlaybackItemGetTypeID()))
    {
      playerasync_handleSetProperty_cold_4(&v31);
      return v31;
    }

    if (CMBaseObjectGetVTable() != &kFigPlaybackItemAsyncVTable)
    {
      playerasync_handleSetProperty_cold_3(&v31);
      return v31;
    }

    CMBaseObjectGetDerivedStorage();
    v27 = FigCFWeakReferenceHolderCopyReferencedObject();
    v28 = v27;
    if (v27 != a1)
    {
      break;
    }

    if (a1)
    {
      CFRelease(v27);
    }

    if (Count == ++v24)
    {
      goto LABEL_34;
    }
  }

  fig_log_get_emitter();
  v17 = FigSignalErrorAtGM();
  if (v28)
  {
    CFRelease(v28);
  }

  return v17;
}

void playerasync_cancelQueuedCommandsMatching(const void *a1, unsigned int a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v13 = 0;
  v14 = 0;
  v15 = &v14;
  FigSimpleMutexLock();
  v7 = *(DerivedStorage + 112);
  if (v7)
  {
    while (1)
    {
      if (*(v7 + 6) != a2 || v7[2] != a3)
      {
        goto LABEL_21;
      }

      if (a2 != 26)
      {
        v8 = a2;
        if (a2 != 3)
        {
          goto LABEL_8;
        }
      }

      if (FigCFEqual())
      {
        break;
      }

LABEL_21:
      v7 = *v7;
      if (!v7)
      {
        goto LABEL_22;
      }
    }

    v8 = *(v7 + 6);
LABEL_8:
    if (v8 > 0x2F || ((1 << v8) & 0x980000000000) == 0)
    {
LABEL_20:
      *(v7 + 6) = v8 | 0x10000;
      goto LABEL_21;
    }

    v12 = 0;
    if (v8 != 43)
    {
      if (v8 == 47)
      {
        FigCFDictionaryGetInt32IfPresent();
      }

      else if (v8 == 44)
      {
        v9 = *(v7 + 27);
LABEL_16:
        v12 = v9;
      }

      playerasync_createCommand(a1, 44, a3, &v13);
      v10 = v13;
      if (v13)
      {
        *(v13 + 108) = v12;
        *v10 = 0;
        *v15 = v10;
        v15 = v10;
      }

      v8 = *(v7 + 6);
      goto LABEL_20;
    }

    v9 = *(v7 + 10);
    goto LABEL_16;
  }

LABEL_22:
  FigSimpleMutexUnlock();
  for (i = v14; v14; i = v14)
  {
    v14 = *i;
    if (!v14)
    {
      v15 = &v14;
    }

    itemasync_postSeekWasCanceled();
    fpa_releaseCommand(i);
  }
}

void itemasync_InvalidateOnQueue(const void *a1)
{
  itemasync_InvalidateInternal(a1);

  CFRelease(a1);
}

uint64_t itemasync_handleSetProperty(uint64_t a1, uint64_t a2, const void *a3, const void *a4, _BYTE *a5, CFTypeRef *a6, void *a7)
{
  if (*CMBaseObjectGetDerivedStorage())
  {
    itemasync_handleSetProperty_cold_1(&v17);
    return v17;
  }

  if (!a3)
  {
    itemasync_handleSetProperty_cold_4(&v17);
    return v17;
  }

  v12 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v12)
  {
    itemasync_handleSetProperty_cold_3(&v17);
    return v17;
  }

  v13 = v12;
  if (*CMBaseObjectGetDerivedStorage())
  {
    itemasync_handleSetProperty_cold_2(&v17);
    v15 = v17;
  }

  else
  {
    *a5 = 0;
    *a6 = CFRetain(a3);
    if (a4)
    {
      v14 = CFRetain(a4);
    }

    else
    {
      v14 = 0;
    }

    v15 = 0;
    *a7 = v14;
  }

  CFRelease(v13);
  return v15;
}

uint64_t itemasync_CopyTrackProperty(const void *a1, int a2, const void *a3, const void *a4, void *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v18 = 0;
  if (a5 && (*a5 = 0, !*DerivedStorage) && a3)
  {
    v12 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v12)
    {
      v13 = v12;
      if (*CMBaseObjectGetDerivedStorage())
      {
        itemasync_CopyTrackProperty_cold_1(&v19);
        v15 = 0;
        v17 = v19;
      }

      else
      {
        v14 = playerasync_createCommand(v13, 32, a1, &v18);
        v15 = v18;
        if (v14)
        {
          v17 = v14;
        }

        else
        {
          *(v18 + 32) = a2;
          *(v15 + 40) = CFRetain(a3);
          if (a4)
          {
            v16 = CFRetain(a4);
          }

          else
          {
            v16 = 0;
          }

          *(v15 + 48) = v16;
          *(v15 + 56) = a5;
          playerasync_runSynchronousCommand(v13, v15);
          v17 = *(v15 + 28);
        }
      }

      fpa_releaseCommand(v15);
      CFRelease(v13);
    }

    else
    {
      itemasync_CopyTrackProperty_cold_2();
      return v19;
    }

    return v17;
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }
}

uint64_t itemasync_CopyCommonMetadata(const void *a1, const void *a2, const void *a3, void *a4)
{
  v17 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a4 && (*a4 = 0, !*DerivedStorage))
  {
    v10 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v10)
    {
      v11 = v10;
      if (*CMBaseObjectGetDerivedStorage())
      {
        itemasync_CopyCommonMetadata_cold_1(&v18);
        v14 = 0;
        v16 = v18;
      }

      else
      {
        v12 = playerasync_createCommand(v11, 35, a1, &v17);
        if (v12)
        {
          v16 = v12;
          v14 = v17;
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

          v14 = v17;
          *(v17 + 32) = v13;
          if (a3)
          {
            v15 = CFRetain(a3);
          }

          else
          {
            v15 = 0;
          }

          *(v14 + 40) = v15;
          *(v14 + 48) = a4;
          playerasync_runSynchronousCommand(v11, v14);
          v16 = *(v14 + 28);
        }
      }

      fpa_releaseCommand(v14);
      CFRelease(v11);
    }

    else
    {
      itemasync_CopyCommonMetadata_cold_2();
      return v18;
    }

    return v16;
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }
}

uint64_t itemasync_CopyChapterImageData(const void *a1, uint64_t a2, void *a3, void *a4)
{
  v15 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a3 && (*a3 = 0, a4) && (*a4 = 0, !*DerivedStorage))
  {
    v10 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v10)
    {
      v11 = v10;
      if (*CMBaseObjectGetDerivedStorage())
      {
        itemasync_CopyChapterImageData_cold_1(&v16);
        v13 = 0;
        v14 = v16;
      }

      else
      {
        v12 = playerasync_createCommand(v11, 36, a1, &v15);
        v13 = v15;
        if (v12)
        {
          v14 = v12;
        }

        else
        {
          *(v15 + 32) = a2;
          *(v13 + 40) = a3;
          *(v13 + 48) = a4;
          playerasync_runSynchronousCommand(v11, v13);
          v14 = *(v13 + 28);
        }
      }

      fpa_releaseCommand(v13);
      CFRelease(v11);
    }

    else
    {
      itemasync_CopyChapterImageData_cold_2();
      return v16;
    }

    return v14;
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }
}

uint64_t itemasync_GetNextThumbnailTime(const void *a1, __int128 *a2, int a3, uint64_t a4)
{
  v17 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a4 && (v9 = MEMORY[0x1E6960C70], *a4 = *MEMORY[0x1E6960C70], *(a4 + 16) = *(v9 + 16), !*DerivedStorage))
  {
    v11 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v11)
    {
      v12 = v11;
      if (*CMBaseObjectGetDerivedStorage())
      {
        itemasync_GetNextThumbnailTime_cold_1(&v18);
        v14 = 0;
        v16 = v18;
      }

      else
      {
        v13 = playerasync_createCommand(v12, 37, a1, &v17);
        v14 = v17;
        if (v13)
        {
          v16 = v13;
        }

        else
        {
          v15 = *a2;
          *(v17 + 48) = *(a2 + 2);
          *(v14 + 32) = v15;
          *(v14 + 56) = a3;
          *(v14 + 64) = a4;
          playerasync_runSynchronousCommand(v12, v14);
          v16 = *(v14 + 28);
        }
      }

      fpa_releaseCommand(v14);
      CFRelease(v12);
    }

    else
    {
      itemasync_GetNextThumbnailTime_cold_2();
      return v18;
    }

    return v16;
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }
}

uint64_t itemasync_SetCurrentTimeWithRange(const void *a1, __int128 *a2, int a3, __int128 *a4, __int128 *a5)
{
  v18 = 0;
  if (*CMBaseObjectGetDerivedStorage())
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  else
  {
    v11 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v11)
    {
      v12 = v11;
      if (*CMBaseObjectGetDerivedStorage())
      {
        itemasync_SetCurrentTimeWithRange_cold_1(&v19);
        v14 = 0;
        v13 = v19;
      }

      else
      {
        playerasync_removeQueuedSeekCommands(v12, a1);
        v13 = playerasync_createCommand(v12, 40, a1, &v18);
        v14 = v18;
        if (!v13)
        {
          v15 = *a2;
          *(v18 + 6) = *(a2 + 2);
          *(v14 + 2) = v15;
          *(v14 + 14) = a3;
          v16 = *a4;
          *(v14 + 76) = *(a4 + 2);
          *(v14 + 60) = v16;
          v17 = *a5;
          *(v14 + 100) = *(a5 + 2);
          *(v14 + 84) = v17;
          playerasync_runAsynchronousCommand(v12, v14);
          v14 = 0;
        }
      }

      fpa_releaseCommand(v14);
      CFRelease(v12);
    }

    else
    {
      itemasync_SetCurrentTimeWithRange_cold_2();
      return v19;
    }

    return v13;
  }
}

uint64_t itemasync_SetTrackProperty(const void *a1, int a2, const void *a3, const void *a4)
{
  v16 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a3 && !*DerivedStorage)
  {
    v10 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v10)
    {
      v11 = v10;
      if (*CMBaseObjectGetDerivedStorage())
      {
        itemasync_SetTrackProperty_cold_1(&v17);
        v13 = 0;
        v15 = v17;
      }

      else
      {
        v12 = playerasync_createCommand(v11, 41, a1, &v16);
        v13 = v16;
        if (v12)
        {
          v15 = v12;
        }

        else
        {
          *(v16 + 32) = a2;
          v13[5] = CFRetain(a3);
          if (a4)
          {
            v14 = CFRetain(a4);
          }

          else
          {
            v14 = 0;
          }

          v13[6] = v14;
          playerasync_runAsynchronousCommand(v11, v13);
          v13 = 0;
          v15 = 0;
        }
      }

      fpa_releaseCommand(v13);
      CFRelease(v11);
    }

    else
    {
      itemasync_SetTrackProperty_cold_2();
      return v17;
    }

    return v15;
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }
}

uint64_t itemasync_CopyFormatReader(const void *a1, uint64_t a2)
{
  v11 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2 && !*DerivedStorage)
  {
    v6 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v6)
    {
      v7 = v6;
      if (*CMBaseObjectGetDerivedStorage())
      {
        itemasync_CopyFormatReader_cold_1(&v12);
        v9 = 0;
        v10 = v12;
      }

      else
      {
        v8 = playerasync_createCommand(v7, 42, a1, &v11);
        v9 = v11;
        if (v8)
        {
          v10 = v8;
        }

        else
        {
          *(v11 + 32) = a2;
          playerasync_runSynchronousCommand(v7, v9);
          v10 = v9[7];
        }
      }

      fpa_releaseCommand(v9);
      CFRelease(v7);
    }

    else
    {
      itemasync_CopyFormatReader_cold_2();
      return v12;
    }

    return v10;
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }
}

uint64_t itemasync_SeekToDateWithID(const void *a1, const void *a2, int a3)
{
  v14 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2 && !*DerivedStorage)
  {
    v8 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v8)
    {
      v9 = v8;
      if (*CMBaseObjectGetDerivedStorage())
      {
        itemasync_SeekToDateWithID_cold_1(&v15);
        v13 = 0;
        v10 = v15;
      }

      else
      {
        playerasync_removeQueuedSeekCommands(v9, a1);
        v10 = playerasync_createCommand(v9, 43, a1, &v14);
        if (v10)
        {
          v13 = v14;
        }

        else
        {
          v11 = CFRetain(a2);
          v12 = v14;
          v14[4] = v11;
          *(v12 + 10) = a3;
          playerasync_runAsynchronousCommand(v9, v12);
          v13 = 0;
        }
      }

      fpa_releaseCommand(v13);
      CFRelease(v9);
    }

    else
    {
      itemasync_SeekToDateWithID_cold_2();
      return v15;
    }

    return v10;
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }
}

uint64_t itemasync_SetCurrentTimeWithRangeAndID(const void *a1, __int128 *a2, int a3, __int128 *a4, __int128 *a5, int a6)
{
  v20 = 0;
  if (*CMBaseObjectGetDerivedStorage())
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  else
  {
    v13 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v13)
    {
      v14 = v13;
      if (*CMBaseObjectGetDerivedStorage())
      {
        itemasync_SetCurrentTimeWithRangeAndID_cold_1(&v21);
        v16 = 0;
        v15 = v21;
      }

      else
      {
        playerasync_removeQueuedSeekCommands(v14, a1);
        v15 = playerasync_createCommand(v14, 44, a1, &v20);
        v16 = v20;
        if (!v15)
        {
          v17 = *a2;
          *(v20 + 6) = *(a2 + 2);
          *(v16 + 2) = v17;
          *(v16 + 14) = a3;
          v18 = *a4;
          *(v16 + 76) = *(a4 + 2);
          *(v16 + 60) = v18;
          v19 = *a5;
          *(v16 + 100) = *(a5 + 2);
          *(v16 + 84) = v19;
          *(v16 + 27) = a6;
          playerasync_runAsynchronousCommand(v14, v16);
          v16 = 0;
        }
      }

      fpa_releaseCommand(v16);
      CFRelease(v14);
    }

    else
    {
      itemasync_SetCurrentTimeWithRangeAndID_cold_2();
      return v21;
    }

    return v15;
  }
}

uint64_t itemasync_CopyAsset(const void *a1, uint64_t a2)
{
  v11 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2 && !*DerivedStorage)
  {
    v6 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v6)
    {
      v7 = v6;
      if (*CMBaseObjectGetDerivedStorage())
      {
        itemasync_CopyAsset_cold_1(&v12);
        v9 = 0;
        v10 = v12;
      }

      else
      {
        v8 = playerasync_createCommand(v7, 45, a1, &v11);
        v9 = v11;
        if (v8)
        {
          v10 = v8;
        }

        else
        {
          *(v11 + 32) = a2;
          playerasync_runSynchronousCommand(v7, v9);
          v10 = v9[7];
        }
      }

      fpa_releaseCommand(v9);
      CFRelease(v7);
    }

    else
    {
      itemasync_CopyAsset_cold_2();
      return v12;
    }

    return v10;
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }
}

uint64_t itemasync_ExtractAndRetainNextSampleBuffer(const void *a1, int a2, int a3, uint64_t a4)
{
  v15 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a4 && !*DerivedStorage)
  {
    v10 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v10)
    {
      v11 = v10;
      if (*CMBaseObjectGetDerivedStorage())
      {
        itemasync_ExtractAndRetainNextSampleBuffer_cold_1(&v16);
        v13 = 0;
        v14 = v16;
      }

      else
      {
        v12 = playerasync_createCommand(v11, 46, a1, &v15);
        v13 = v15;
        if (v12)
        {
          v14 = v12;
        }

        else
        {
          *(v15 + 32) = a2;
          *(v13 + 36) = a3;
          *(v13 + 40) = a4;
          playerasync_runSynchronousCommand(v11, v13);
          v14 = *(v13 + 28);
        }
      }

      fpa_releaseCommand(v13);
      CFRelease(v11);
    }

    else
    {
      itemasync_ExtractAndRetainNextSampleBuffer_cold_2();
      return v16;
    }

    return v14;
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }
}

uint64_t itemasync_SetCurrentTimeWithOptions(const void *a1, __int128 *a2, const void *a3)
{
  v14 = 0;
  if (*CMBaseObjectGetDerivedStorage())
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  else
  {
    v7 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v7)
    {
      v8 = v7;
      if (*CMBaseObjectGetDerivedStorage())
      {
        itemasync_SetCurrentTimeWithOptions_cold_1(&v15);
        v10 = 0;
        v13 = v15;
      }

      else
      {
        playerasync_removeQueuedSeekCommands(v8, a1);
        v9 = playerasync_createCommand(v8, 47, a1, &v14);
        v10 = v14;
        if (v9)
        {
          v13 = v9;
        }

        else
        {
          v11 = *a2;
          *(v14 + 48) = *(a2 + 2);
          *(v10 + 32) = v11;
          if (a3)
          {
            v12 = CFRetain(a3);
          }

          else
          {
            v12 = 0;
          }

          *(v10 + 56) = v12;
          playerasync_runAsynchronousCommand(v8, v10);
          v10 = 0;
          v13 = 0;
        }
      }

      fpa_releaseCommand(v10);
      CFRelease(v8);
    }

    else
    {
      itemasync_SetCurrentTimeWithOptions_cold_2();
      return v15;
    }

    return v13;
  }
}

void playerasync_removeQueuedSeekCommands(const void *a1, const void *a2)
{
  playerasync_cancelQueuedCommandsMatching(a1, 0x1Eu, a2);
  playerasync_cancelQueuedCommandsMatching(a1, 0x28u, a2);
  playerasync_cancelQueuedCommandsMatching(a1, 0x2Cu, a2);
  playerasync_cancelQueuedCommandsMatching(a1, 0x2Bu, a2);

  playerasync_cancelQueuedCommandsMatching(a1, 0x2Fu, a2);
}

void itemasync_postSeekWasCanceled()
{
  if (CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]))
  {
    itemasync_postSeekWasCanceled_cold_1();
  }

  else
  {
    itemasync_postSeekWasCanceled_cold_2();
  }
}

uint64_t playerasync_CopyPlayQueueItem(const void *a1, const void *a2, void *a3)
{
  v13 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v7 = CMBaseObjectGetDerivedStorage();
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_6:
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  v7 = 0;
  if (!a3)
  {
    goto LABEL_6;
  }

LABEL_3:
  *a3 = 0;
  if (*DerivedStorage)
  {
    goto LABEL_6;
  }

  if (!v7)
  {
    v9 = 0;
LABEL_14:
    v10 = playerasync_createCommand(a1, 8, a2, &v13);
    v11 = v13;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      *(v13 + 32) = a3;
      playerasync_runSynchronousCommand(a1, v11);
      v12 = v11[7];
    }

    goto LABEL_16;
  }

  if (*v7)
  {
    goto LABEL_6;
  }

  v9 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v9 == a1)
  {
    goto LABEL_14;
  }

  playerasync_CopyPlayQueueItem_cold_1(&v14);
  v11 = 0;
  v12 = v14;
LABEL_16:
  fpa_releaseCommand(v11);
  if (v9)
  {
    CFRelease(v9);
  }

  return v12;
}

uint64_t playerasync_SetRateWithFade(void *a1, __int128 *a2, float a3)
{
  v10 = 0;
  if (*CMBaseObjectGetDerivedStorage())
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  else
  {
    v7 = playerasync_createCommand(a1, 11, 0, &v10);
    v8 = v10;
    if (!v7)
    {
      *(v10 + 8) = a3;
      v9 = *a2;
      *(v8 + 52) = *(a2 + 2);
      *(v8 + 36) = v9;
      playerasync_runAsynchronousCommand(a1, v8);
      v8 = 0;
    }

    fpa_releaseCommand(v8);
    return v7;
  }
}

uint64_t playerasync_StartPreroll(void *a1, int a2, float a3)
{
  v9 = 0;
  if (*CMBaseObjectGetDerivedStorage())
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  else
  {
    v7 = playerasync_createCommand(a1, 12, 0, &v9);
    v8 = v9;
    if (!v7)
    {
      *(v9 + 8) = a3;
      *(v8 + 9) = a2;
      playerasync_runAsynchronousCommand(a1, v8);
      v8 = 0;
    }

    fpa_releaseCommand(v8);
    return v7;
  }
}

uint64_t playerasync_StepByCount(void *a1, int a2)
{
  v7 = 0;
  if (*CMBaseObjectGetDerivedStorage())
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  else
  {
    v5 = playerasync_createCommand(a1, 13, 0, &v7);
    v6 = v7;
    if (!v5)
    {
      *(v7 + 8) = a2;
      playerasync_runAsynchronousCommand(a1, v6);
      v6 = 0;
    }

    fpa_releaseCommand(v6);
    return v5;
  }
}

uint64_t playerasync_SetRateAndAnchorTime(void *a1, __int128 *a2, __int128 *a3, int a4, float a5)
{
  v15 = 0;
  if (*CMBaseObjectGetDerivedStorage())
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  else
  {
    v11 = playerasync_createCommand(a1, 15, 0, &v15);
    v12 = v15;
    if (!v11)
    {
      *(v15 + 8) = a5;
      v13 = *a2;
      *(v12 + 52) = *(a2 + 2);
      *(v12 + 36) = v13;
      v14 = *a3;
      *(v12 + 76) = *(a3 + 2);
      *(v12 + 60) = v14;
      *(v12 + 21) = a4;
      playerasync_runAsynchronousCommand(a1, v12);
      v12 = 0;
    }

    fpa_releaseCommand(v12);
    return v11;
  }
}

uint64_t playerasync_CreatePlaybackItemFromAsset(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = 0;
  if (a5)
  {
    *a5 = 0;
    CFGetAllocator(a1);
    FigPlaybackItemGetClassID();
    v5 = CMDerivedObjectCreate();
    playerasync_CreatePlaybackItemFromAsset_cold_2(v5, &v9);
    v7 = v9;
    fpa_releaseCommand(v8);
    return v7;
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }
}

uint64_t playerasync_SetRateWithOptions(void *a1, const void *a2, float a3)
{
  v10 = 0;
  if (*CMBaseObjectGetDerivedStorage())
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  else
  {
    v7 = playerasync_createCommand(a1, 17, 0, &v10);
    v8 = v10;
    if (!v7)
    {
      *(v10 + 8) = a3;
      if (a2)
      {
        v9 = CFRetain(a2);
      }

      else
      {
        v9 = 0;
      }

      v8[8] = v9;
      playerasync_runAsynchronousCommand(a1, v8);
      v8 = 0;
    }

    fpa_releaseCommand(v8);
    return v7;
  }
}