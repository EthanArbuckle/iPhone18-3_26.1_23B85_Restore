uint64_t fcd_ttml_createRegionPropertyFromTTMLStyle_origin(const void *a1, void *a2, uint64_t *a3)
{
  v3 = *(MEMORY[0x1E6962820] + 16);
  v20 = *MEMORY[0x1E6962820];
  v21 = v3;
  if (!a1 || (v7 = CFGetTypeID(a1), v7 != CFStringGetTypeID()))
  {
    fcd_ttml_createRegionPropertyFromTTMLStyle_origin_cold_4(v19);
    return LODWORD(v19[0]);
  }

  if (FigCFEqual())
  {
    v8 = 0;
    v9 = *(MEMORY[0x1E6962810] + 8);
    if ((v9 & 0x100000000) != 0)
    {
      goto LABEL_5;
    }

LABEL_12:
    fcd_ttml_createRegionPropertyFromTTMLStyle_origin_cold_2(v19);
    goto LABEL_14;
  }

  v13 = FigTTMLCFStringArrayCreateWithNMTOKENS(a1);
  v8 = v13;
  if (!v13 || CFArrayGetCount(v13) != 2)
  {
    fcd_ttml_createRegionPropertyFromTTMLStyle_origin_cold_3(v19);
    goto LABEL_14;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(v8, 0);
  FigTTMLParseLengthSyntax(ValueAtIndex);
  v16 = v15;
  v17 = CFArrayGetValueAtIndex(v8, 1);
  FigTTMLParseLengthSyntax(v17);
  v9 = v18;
  if ((v16 & 0x100000000) == 0)
  {
    goto LABEL_12;
  }

LABEL_5:
  if ((v9 & 0x100000000) == 0)
  {
    fcd_ttml_createRegionPropertyFromTTMLStyle_origin_cold_1(v19);
LABEL_14:
    v11 = LODWORD(v19[0]);
    if (!v8)
    {
      return v11;
    }

    goto LABEL_7;
  }

  FigGeometryPointMake();
  v19[0] = v20;
  v19[1] = v21;
  v10 = FigGeometryPointCopyAsDictionary();
  v11 = 0;
  *a2 = *MEMORY[0x1E6961390];
  *a3 = v10;
  if (v8)
  {
LABEL_7:
    CFRelease(v8);
  }

  return v11;
}

uint64_t fcd_ttml_createRegionPropertyFromTTMLStyle_luminanceGain(const __CFString *a1, void *a2, uint64_t *a3)
{
  if (!a1 || (v6 = CFGetTypeID(a1), v6 != CFStringGetTypeID()))
  {
    fcd_ttml_createRegionPropertyFromTTMLStyle_luminanceGain_cold_1(&v11);
    return v11;
  }

  *a2 = *MEMORY[0x1E6961378];
  MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, a1);
  CFStringTrimWhitespace(MutableCopy);
  v8 = FigTTMLParseNumber();
  if (v8)
  {
    v9 = v8;
    if (!MutableCopy)
    {
      return v9;
    }

    goto LABEL_8;
  }

  if (-1.0 < 0.0)
  {
    v9 = 4294950720;
    if (!MutableCopy)
    {
      return v9;
    }

    goto LABEL_8;
  }

  v9 = 0;
  *a3 = FigCFNumberCreateFloat32();
  if (MutableCopy)
  {
LABEL_8:
    CFRelease(MutableCopy);
  }

  return v9;
}

uint64_t fcd_ttml_createRegionPropertyFromTTMLStyle_stereoDisparity(const __CFString *a1, void *a2, uint64_t *a3)
{
  v11 = 0;
  v12 = 0;
  if (!a1 || (v6 = CFGetTypeID(a1), v6 != CFStringGetTypeID()))
  {
    fcd_ttml_createRegionPropertyFromTTMLStyle_stereoDisparity_cold_1(&v13);
    return v13;
  }

  *a2 = *MEMORY[0x1E69613A8];
  MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, a1);
  CFStringTrimWhitespace(MutableCopy);
  v8 = FigTTMLParseLength(a1, &v12, &v11);
  if (v8 || v11 >= 6 && (v8 = FigSignalErrorAtGM(), v8))
  {
    v9 = v8;
    if (!MutableCopy)
    {
      return v9;
    }

    goto LABEL_7;
  }

  FigGeometryDimensionMake();
  v9 = 0;
  *a3 = FigGeometryDimensionCopyAsDictionary();
  if (MutableCopy)
  {
LABEL_7:
    CFRelease(MutableCopy);
  }

  return v9;
}

uint64_t fcd_ttml_createWidthRegionPropertyFromTTMLStyle_extent(const void *a1, void *a2, uint64_t *a3)
{
  if (!a1 || (v6 = CFGetTypeID(a1), v6 != CFStringGetTypeID()))
  {
    fcd_ttml_createWidthRegionPropertyFromTTMLStyle_extent_cold_3(&v16);
    return v16;
  }

  if (FigCFEqual())
  {
    FigGeometryDimensionMake();
    v7 = 0;
    if ((v8 & 0x100000000) != 0)
    {
LABEL_5:
      *a2 = *MEMORY[0x1E69613B0];
      v9 = 0;
      *a3 = FigGeometryDimensionCopyAsDictionary();
      goto LABEL_6;
    }

    goto LABEL_12;
  }

  v11 = FigTTMLCFStringArrayCreateWithNMTOKENS(a1);
  v7 = v11;
  if (v11 && CFArrayGetCount(v11) == 2)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v7, 0);
    FigTTMLParseLengthSyntax(ValueAtIndex);
    if ((v13 & 0x100000000) != 0)
    {
      goto LABEL_5;
    }

LABEL_12:
    fcd_ttml_createWidthRegionPropertyFromTTMLStyle_extent_cold_1(&v14);
    v9 = v14;
    goto LABEL_6;
  }

  fcd_ttml_createWidthRegionPropertyFromTTMLStyle_extent_cold_2(&v15);
  v9 = v15;
LABEL_6:
  if (v7)
  {
    CFRelease(v7);
  }

  return v9;
}

uint64_t fcd_ttml_createHeightRegionPropertyFromTTMLStyle_extent(const void *a1, void *a2, uint64_t *a3)
{
  if (!a1 || (v6 = CFGetTypeID(a1), v6 != CFStringGetTypeID()))
  {
    fcd_ttml_createHeightRegionPropertyFromTTMLStyle_extent_cold_3(&v16);
    return v16;
  }

  if (FigCFEqual())
  {
    FigGeometryDimensionMake();
    v7 = 0;
    if ((v8 & 0x100000000) != 0)
    {
LABEL_5:
      *a2 = *MEMORY[0x1E6961328];
      v9 = 0;
      *a3 = FigGeometryDimensionCopyAsDictionary();
      goto LABEL_6;
    }

    goto LABEL_12;
  }

  v11 = FigTTMLCFStringArrayCreateWithNMTOKENS(a1);
  v7 = v11;
  if (v11 && CFArrayGetCount(v11) == 2)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v7, 1);
    FigTTMLParseLengthSyntax(ValueAtIndex);
    if ((v13 & 0x100000000) != 0)
    {
      goto LABEL_5;
    }

LABEL_12:
    fcd_ttml_createHeightRegionPropertyFromTTMLStyle_extent_cold_1(&v14);
    v9 = v14;
    goto LABEL_6;
  }

  fcd_ttml_createHeightRegionPropertyFromTTMLStyle_extent_cold_2(&v15);
  v9 = v15;
LABEL_6:
  if (v7)
  {
    CFRelease(v7);
  }

  return v9;
}

CFTypeID OUTLINED_FUNCTION_3_75(CFTypeRef cf)
{

  return CFGetTypeID(cf);
}

uint64_t FigMediaProcessorCreateForVideoCompressionWithFormatWriter2(CFAllocatorRef allocator, int32_t a2, int32_t a3, CMVideoCodecType a4, const __CFDictionary *a5, const __CFDictionary *a6, const void *a7, void *a8, uint64_t a9, __int128 *a10, const void *a11, unsigned int a12, __int128 *a13, uint64_t a14, __int128 *a15, uint64_t a16, const void *a17, int a18, uint64_t *a19)
{
  values = a8;
  if (a8)
  {
    v26 = CFArrayCreate(allocator, &values, 1, MEMORY[0x1E695E9C0]);
    if (!v26)
    {
      FigMediaProcessorCreateForVideoCompressionWithFormatWriter2_cold_1(v35);
      return LODWORD(v35[0]);
    }
  }

  else
  {
    v26 = 0;
  }

  v28 = *a9;
  v37 = *(a9 + 16);
  v29 = a10[1];
  v35[0] = *a10;
  v35[1] = v29;
  v35[2] = a10[2];
  v36 = v28;
  v33 = *a13;
  v34 = *(a13 + 2);
  v31 = *a15;
  v32 = *(a15 + 2);
  v27 = FigMediaProcessorCreateForVideoCompressionCommon(allocator, a2, a3, a4, a5, a6, a7, v26, &v36, v35, a11, a12, 0, &v33, a14, &v31, a16, 0, a17, a18, a19);
  if (v26)
  {
    CFRelease(v26);
  }

  return v27;
}

uint64_t FigMediaProcessorCreateForVideoCompressionCommon(const __CFAllocator *a1, int32_t a2, int32_t a3, CMVideoCodecType a4, const __CFDictionary *a5, const __CFDictionary *a6, const void *a7, const __CFArray *a8, __int128 *a9, __int128 *a10, const void *a11, unsigned int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, const void *a18, const void *a19, int a20, uint64_t *a21)
{
  v42 = 0;
  v43 = 0;
  v40 = 0;
  v41 = 0;
  if ((a7 == 0) == (a8 != 0))
  {
    v22 = a11 != 0;
    if (a13)
    {
      ++v22;
    }

    if (a18)
    {
      ++v22;
    }

    if (v22 == 1)
    {
      v35 = *MEMORY[0x1E695E480];
      v24 = FigSampleBufferProcessorCreateWithVTCompressionSession(a1, a2, a3, a4, a5, a6, *MEMORY[0x1E695E480], a20, &v43);
      if (v24)
      {
        goto LABEL_31;
      }

      if (a7)
      {
        v24 = FigSampleBufferProviderCreateForBufferQueue(v35, a7, &v42);
        if (v24)
        {
          goto LABEL_31;
        }

        goto LABEL_10;
      }

      if (a8)
      {
        Count = CFArrayGetCount(a8);
        if (Count == 1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a8, 0);
          v28 = *a9;
          v39.epoch = *(a9 + 2);
          v29 = a10[1];
          v36 = *a10;
          v37 = v29;
          v38 = a10[2];
          *&v39.value = v28;
          v24 = FigSampleBufferProviderCreateForVisualContext(v35, ValueAtIndex, &v39.value, &v36, &v42);
          if (v24)
          {
            goto LABEL_31;
          }

          goto LABEL_10;
        }

        if (Count >= 2)
        {
          v30 = *a9;
          v39.epoch = *(a9 + 2);
          v31 = a10[1];
          v36 = *a10;
          v37 = v31;
          v38 = a10[2];
          *&v39.value = v30;
          v24 = FigSampleBufferProviderCreateForVisualContextGroup(v35, a8, &v39, &v36, &v42);
          if (v24)
          {
            goto LABEL_31;
          }

LABEL_10:
          if (a11)
          {
            v36 = *a14;
            *&v37 = *(a14 + 16);
            *&v39.value = *a16;
            v39.epoch = *(a16 + 16);
            v24 = FigSampleBufferConsumerCreateForFormatWriter(a11, a12, &v36, a15, &v39, a17, &v41);
            if (v24)
            {
              goto LABEL_31;
            }
          }

          else if (a18)
          {
            v24 = FigSampleBufferConsumerCreateForFrameSilo(a18, &v41);
            if (v24)
            {
              goto LABEL_31;
            }
          }

          else
          {
            v36 = *a14;
            *&v37 = *(a14 + 16);
            *&v39.value = *a16;
            v39.epoch = *(a16 + 16);
            v24 = FigSampleBufferConsumerCreateForBufferQueue2(a13, &v36, a15, &v39, a17, &v41);
            if (v24)
            {
              goto LABEL_31;
            }
          }

          if (!a19)
          {
            v32 = a1;
            v24 = FigActivitySchedulerCreateForNewThread(a1, a20, @"com.apple.coremedia.mediaprocessor.videocompression", &v40);
            if (v24)
            {
              goto LABEL_31;
            }

            goto LABEL_30;
          }

          v32 = a1;
          v24 = FigActivitySchedulerCreateForCFRunLoop(a1, a19, &v40);
          if (!v24)
          {
LABEL_30:
            v24 = FigMediaProcessorCreate(v32, v43, v42, v41, v40, a21);
          }

LABEL_31:
          v33 = v24;
          if (v42)
          {
            CFRelease(v42);
          }

          if (v40)
          {
            CFRelease(v40);
          }

          if (v43)
          {
            CFRelease(v43);
          }

          if (v41)
          {
            CFRelease(v41);
          }

          return v33;
        }
      }

      v24 = FigSignalErrorAtGM();
      goto LABEL_31;
    }
  }

  return FigSignalErrorAtGM();
}

uint64_t FigMediaProcessorCreateForVideoCompressionWithVisualContextGroupAndFormatWriter(const __CFAllocator *a1, int32_t a2, int32_t a3, CMVideoCodecType a4, const __CFDictionary *a5, const __CFDictionary *a6, const __CFArray *a7, uint64_t a8, __int128 *a9, const void *a10, unsigned int a11, __int128 *a12, uint64_t a13, __int128 *a14, uint64_t a15, const void *a16, int a17, uint64_t *a18)
{
  v18 = *a8;
  v27 = *(a8 + 16);
  v19 = a9[1];
  v25[0] = *a9;
  v25[1] = v19;
  v25[2] = a9[2];
  v26 = v18;
  v23 = *a12;
  v24 = *(a12 + 2);
  v21 = *a14;
  v22 = *(a14 + 2);
  return FigMediaProcessorCreateForVideoCompressionCommon(a1, a2, a3, a4, a5, a6, 0, a7, &v26, v25, a10, a11, 0, &v23, a13, &v21, a15, 0, a16, a17, a18);
}

uint64_t FigMediaProcessorCreateForVideoCompression(const __CFAllocator *a1, int32_t a2, int32_t a3, CMVideoCodecType a4, const __CFDictionary *a5, const __CFDictionary *a6, const void *a7, void *a8, uint64_t a9, __int128 *a10, uint64_t a11, __int128 *a12, uint64_t a13, __int128 *a14, uint64_t a15, const void *a16, int a17, uint64_t *a18)
{
  values = a8;
  if (a8)
  {
    v25 = CFArrayCreate(*MEMORY[0x1E695E480], &values, 1, MEMORY[0x1E695E9C0]);
    if (!v25)
    {
      FigMediaProcessorCreateForVideoCompression_cold_1(v34);
      return LODWORD(v34[0]);
    }
  }

  else
  {
    v25 = 0;
  }

  v27 = *a9;
  v36 = *(a9 + 16);
  v28 = a10[1];
  v34[0] = *a10;
  v34[1] = v28;
  v34[2] = a10[2];
  v35 = v27;
  v32 = *a12;
  v33 = *(a12 + 2);
  v30 = *a14;
  v31 = *(a14 + 2);
  v26 = FigMediaProcessorCreateForVideoCompressionCommon(a1, a2, a3, a4, a5, a6, a7, v25, &v35, v34, 0, 0, a11, &v32, a13, &v30, a15, 0, a16, a17, a18);
  if (v25)
  {
    CFRelease(v25);
  }

  return v26;
}

uint64_t FigMediaProcessorCreateForVideoCompressionWithFrameSilo(CFAllocatorRef allocator, int32_t a2, int32_t a3, CMVideoCodecType a4, const __CFDictionary *a5, const __CFDictionary *a6, const void *a7, void *a8, uint64_t a9, __int128 *a10, const void *a11, const void *a12, int a13, uint64_t *a14)
{
  values = a8;
  if (a8)
  {
    v21 = CFArrayCreate(allocator, &values, 1, MEMORY[0x1E695E9C0]);
    if (!v21)
    {
      FigMediaProcessorCreateForVideoCompressionWithFrameSilo_cold_1(v25);
      return LODWORD(v25[0]);
    }
  }

  else
  {
    v21 = 0;
  }

  v26 = *a9;
  v27 = *(a9 + 16);
  v23 = a10[1];
  v25[0] = *a10;
  v25[1] = v23;
  v25[2] = a10[2];
  v22 = FigMediaProcessorCreateForVideoCompressionCommon(allocator, a2, a3, a4, a5, a6, a7, v21, &v26, v25, 0, 0, 0, MEMORY[0x1E6960C70], 0, MEMORY[0x1E6960C70], 0, a11, a12, a13, a14);
  if (v21)
  {
    CFRelease(v21);
  }

  return v22;
}

CVPixelBufferPoolRef FigMediaProcessorGetPixelBufferPool(uint64_t a1)
{
  VTCompressionSession = FigMediaProcessorGetVTCompressionSession(a1);

  return VTCompressionSessionGetPixelBufferPool(VTCompressionSession);
}

uint64_t FigRemakerCreateWithAsset(const __CFAllocator *a1, const void *a2, const __CFURL *a3, const __CFDictionary *a4, const __CFDictionary *a5, CFTypeRef *a6)
{
  v54 = *MEMORY[0x1E69E9840];
  v50 = 0;
  v51 = 0;
  cf = 0;
  IsServerProcess = FigServer_IsServerProcess();
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  FigKTraceInit();
  if (IsServerProcess)
  {
    v11 = FigOSTransactionCreate();
    if (!v11)
    {
      FigRemakerCreateWithAsset_cold_1(__str);
      v45 = *__str;
      goto LABEL_58;
    }

    if (a2)
    {
      goto LABEL_4;
    }

LABEL_22:
    FigRemakerCreateWithAsset_cold_9(__str);
    goto LABEL_75;
  }

  v11 = 0;
  if (!a2)
  {
    goto LABEL_22;
  }

LABEL_4:
  CMBaseObject = FigAssetGetCMBaseObject(a2);
  v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v13)
  {
    v45 = 4294954514;
    goto LABEL_56;
  }

  v14 = *MEMORY[0x1E695E480];
  LoggingIdentifier = v13(CMBaseObject, @"assetProperty_CreationURL", *MEMORY[0x1E695E480], &v50);
  if (LoggingIdentifier)
  {
    goto LABEL_70;
  }

  if (v50)
  {
    __str[0] = 0;
    FigCFDictionaryGetBooleanIfPresent();
    if (!__str[0] && !FigCFURLIsLocalResource())
    {
      goto LABEL_69;
    }
  }

  if (!a3)
  {
    FigRemakerCreateWithAsset_cold_8(__str);
    goto LABEL_75;
  }

  if (!remakerFamily_CFURLSchemeIsFile(a3))
  {
    FigRemakerCreateWithAsset_cold_7(__str);
    goto LABEL_75;
  }

  Value = FigCFDictionaryGetValue();
  if (Value)
  {
    v17 = CFGetTypeID(Value);
    if (v17 != CFStringGetTypeID())
    {
      v45 = 4294955174;
      goto LABEL_56;
    }

    valuePtr = 0;
    CStringPtrAndBufferToFree = FigCFStringGetCStringPtrAndBufferToFree();
    v19 = CFURLCopyPathExtension(a3);
    v20 = FigCFStringGetCStringPtrAndBufferToFree();
    snprintf(__str, 0x80uLL, "-%s.%s", CStringPtrAndBufferToFree, v20);
    free(0);
    free(0);
    if (v19)
    {
      CFRelease(v19);
    }

    v21 = FigCFDictionaryGetValue();
    v22 = v21;
    if (v21)
    {
      v23 = CFGetTypeID(v21);
      if (v23 != CFURLGetTypeID())
      {
        FigRemakerCreateWithAsset_cold_2(&v52);
        v45 = v52;
        goto LABEL_56;
      }
    }

    TypeID = FigRemakerGetTypeID();
    LoggingIdentifier = remakerFamily_createTempFile(TypeID, v22, a3, __str, 0, &cf);
    if (LoggingIdentifier)
    {
      goto LABEL_70;
    }
  }

  else if (FigFileDoesFileExist())
  {
    FigRemakerCreateWithAsset_cold_3(__str);
    goto LABEL_75;
  }

  if (!a6)
  {
    FigRemakerCreateWithAsset_cold_6(__str);
    goto LABEL_75;
  }

  FigRemakerGetClassID();
  LoggingIdentifier = CMDerivedObjectCreate();
  if (LoggingIdentifier || (Storage = remakerFamily_getStorage(v51), LoggingIdentifier = remakerFamily_generateLoggingIdentifier(69, (Storage + 41)), LoggingIdentifier))
  {
LABEL_70:
    v45 = LoggingIdentifier;
    goto LABEL_56;
  }

  v26 = MEMORY[0x1E6960CC0];
  *(Storage + 88) = *MEMORY[0x1E6960CC0];
  *(Storage + 104) = *(v26 + 16);
  v27 = MEMORY[0x1E6960C88];
  *(Storage + 112) = *MEMORY[0x1E6960C88];
  *(Storage + 128) = *(v27 + 16);
  *(Storage + 456) = -1;
  *(Storage + 8) = FigReentrantMutexCreate();
  *(Storage + 64) = FigReentrantMutexCreate();
  remakerFamily_SetRemakerState(v51, 1, 0);
  *(Storage + 72) = CFRetain(a2);
  if (cf)
  {
    v28 = cf;
  }

  else
  {
    v28 = a3;
  }

  *(Storage + 160) = CFRetain(v28);
  if (IsServerProcess)
  {
    *(Storage + 448) = v11;
    v11 = 0;
  }

  v29 = CMByteStreamCreateForFileURL();
  v30 = v29 == -12204 || v29 == 0;
  if (v30 ? v29 : -12115)
  {
LABEL_69:
    LoggingIdentifier = FigSignalErrorAtGM();
    goto LABEL_70;
  }

  v32 = FigDispatchQueueCreateWithPriorityAndClientPID();
  *(Storage + 56) = v32;
  if (!v32)
  {
    FigSignalErrorAtGM();
  }

  FigCFDictionaryGetBooleanIfPresent();
  FigCFDictionaryGetBooleanIfPresent();
  FigCFDictionaryGetBooleanIfPresent();
  FigCFDictionaryGetBooleanIfPresent();
  if (!a5)
  {
    goto LABEL_46;
  }

  v33 = CFDictionaryGetValue(a5, @"Remaker_TemporaryDirectoryURL");
  if (!v33)
  {
LABEL_45:
    *(Storage + 232) = v33;
LABEL_46:
    *(Storage + 360) = -1;
    Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
    *(Storage + 80) = Mutable;
    if (Mutable)
    {
      LoggingIdentifier = remakerFamily_createFormatWriter(v51, a1, 0, 0, a4, (Storage + 184));
      if (!LoggingIdentifier)
      {
        *(Storage + 192) = FigCFWeakReferenceHolderCreateWithReferencedObject();
        CMNotificationCenterGetDefaultLocalCenter();
        LoggingIdentifier = FigNotificationCenterAddWeakListeners();
        if (!LoggingIdentifier)
        {
          v37 = *(Storage + 72);
          v38 = *(Storage + 184);
          *__str = 0;
          LODWORD(valuePtr) = 0;
          v39 = FigAssetGetCMBaseObject(v37);
          v40 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v40)
          {
            v40(v39, @"NaturalTimeScale", v14, __str);
            if (*__str)
            {
              CFNumberGetValue(*__str, kCFNumberSInt32Type, &valuePtr);
              if (valuePtr >= 1)
              {
                v41 = *__str;
                FigBaseObject = FigFormatWriterGetFigBaseObject(v38);
                v43 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                if (v43)
                {
                  v43(FigBaseObject, @"MovieTimeScale", v41);
                }
              }

              CFRelease(*__str);
            }
          }

          v45 = 0;
          *a6 = v51;
          v51 = 0;
          goto LABEL_56;
        }
      }

      goto LABEL_70;
    }

    FigRemakerCreateWithAsset_cold_5(__str);
    goto LABEL_75;
  }

  v34 = v33;
  v35 = CFGetTypeID(v33);
  if (v35 == CFURLGetTypeID())
  {
    v33 = CFRetain(v34);
    goto LABEL_45;
  }

  FigRemakerCreateWithAsset_cold_4(__str);
LABEL_75:
  v45 = *__str;
LABEL_56:
  if (v11)
  {
    os_release(v11);
  }

LABEL_58:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v50)
  {
    CFRelease(v50);
  }

  if (v51)
  {
    CFRelease(v51);
  }

  return v45;
}

BOOL FigRemakerCanFileTypeSupportMediaType(const void *a1, int a2, int a3)
{
  if (remakerFamily_useAudioFormatWriterGivenFormatWriterOption(a1))
  {

    return FigAudioFileFormatWriterCanFileTypeSupportMediaType(a1, a2);
  }

  else
  {

    return FigMovieFormatWriterCanFileTypeSupportMediaType(a1, a2, a3);
  }
}

uint64_t FigRemakerCanFileTypeSupportFormatDescription(const void *a1, const opaqueCMFormatDescription *a2, int a3)
{
  if (remakerFamily_useAudioFormatWriterGivenFormatWriterOption(a1))
  {

    return FigAudioFileFormatWriterCanFileTypeSupportFormatDescription(a1, a2);
  }

  else
  {

    return FigMovieFormatWriterCanFileTypeSupportFormatDescription(a1, a2, a3);
  }
}

uint64_t remaker_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  Storage = remakerFamily_getStorage(a1);
  if (*Storage >= 7u)
  {
    remaker_CopyProperty_cold_4(&v61);
    return LODWORD(v61.value);
  }

  v9 = Storage;
  if (!CFEqual(a2, @"Remaker_SourceDuration"))
  {
    if (CFEqual(a2, @"Remaker_Progress"))
    {
      valuePtr = 0.0;
      v13 = remakerFamily_getStorage(a1);
      if (*v13 <= 2u)
      {
        remaker_CopyProperty_cold_3(&v61);
      }

      else if (*(v13 + 72))
      {
        if (*(v13 + 184))
        {
          v14 = remakerFamily_getStorage(a1);
          dictionaryRepresentation = 0;
          v61 = **&MEMORY[0x1E6960C70];
          v60 = v61;
          ExpectedDuration = remakerFamily_getExpectedDuration(a1, &v60);
          v16 = 0.0;
          if (ExpectedDuration)
          {
            goto LABEL_88;
          }

          FigBaseObject = FigFormatWriterGetFigBaseObject(*(v14 + 184));
          v18 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (!v18)
          {
            value_low = 4294954514;
            goto LABEL_17;
          }

          ExpectedDuration = v18(FigBaseObject, @"LongestMediaDecodeDuration", a3, &dictionaryRepresentation);
          if (ExpectedDuration)
          {
LABEL_88:
            value_low = ExpectedDuration;
          }

          else
          {
            CMTimeMakeFromDictionary(&v61, dictionaryRepresentation);
            time1 = v60;
            time2 = **&MEMORY[0x1E6960CC0];
            if (CMTimeCompare(&time1, &time2))
            {
              time1 = v61;
              Seconds = CMTimeGetSeconds(&time1);
              time1 = v60;
              value_low = 0;
              v16 = Seconds / CMTimeGetSeconds(&time1);
            }

            else
            {
              value_low = 0;
            }
          }

LABEL_17:
          if (dictionaryRepresentation)
          {
            CFRelease(dictionaryRepresentation);
          }

          if (value_low)
          {
            return value_low;
          }

          v21 = remakerFamily_getStorage(a1);
          v22 = 0.0;
          if (!*(v21 + 240))
          {
            goto LABEL_30;
          }

          v23 = v21;
          v24 = *(v21 + 216);
          if (!v24 || !*(v21 + 168))
          {
            goto LABEL_30;
          }

          v61.value = 0;
          v60.value = 0;
          v25 = *(*(CMBaseObjectGetVTable() + 16) + 24);
          if (!v25)
          {
            return 4294954514;
          }

          ProgressOfCurrentPass = v25(v24, 0, &v61);
          if (ProgressOfCurrentPass)
          {
            return ProgressOfCurrentPass;
          }

          v27 = *(v23 + 168);
          v28 = *(*(CMBaseObjectGetVTable() + 16) + 24);
          if (!v28)
          {
            return 4294954514;
          }

          ProgressOfCurrentPass = v28(v27, 0, &v60);
          if (ProgressOfCurrentPass)
          {
            return ProgressOfCurrentPass;
          }

          if (v61.value >= 1)
          {
            v29 = 0;
            v22 = v60.value / v61.value;
          }

          else
          {
LABEL_30:
            v29 = 1;
          }

          v30 = remakerFamily_getStorage(a1);
          Count = CFArrayGetCount(*(v30 + 80));
          v32 = Count - 1;
          if (Count >= 1)
          {
            v33 = Count;
            v34 = 0;
            v35 = 1;
            v36 = 0.0;
            do
            {
              while (1)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(*(v30 + 80), v34);
                v38 = *(ValueAtIndex + 45);
                if (!v38)
                {
                  break;
                }

                LODWORD(v61.value) = 0;
                ProgressOfCurrentPass = VTFrameSiloGetProgressOfCurrentPass(v38, &v61);
                if (ProgressOfCurrentPass)
                {
                  return ProgressOfCurrentPass;
                }

                v39 = *(ValueAtIndex + 107);
                v40 = 1.0 - exp2f(-(v39 - 1));
                v41 = *&v61.value;
                v42 = exp2f(-v39);
                v35 = 0;
                v43 = v40 + (v41 * v42);
                if (v36 < v43)
                {
                  v36 = v43;
                }

                if (v32 == v34++)
                {
                  goto LABEL_47;
                }
              }

              if (v36 < 0.0)
              {
                v36 = 0.0;
              }

              ++v34;
            }

            while (v33 != v34);
            if (v35)
            {
              goto LABEL_48;
            }

LABEL_47:
            v16 = v36 + (1.0 - v36) * v16;
          }

LABEL_48:
          if ((v29 & 1) == 0)
          {
            v48 = remakerFamily_getStorage(a1);
            v49 = CFArrayGetCount(*(v48 + 80));
            v50 = 0.5;
            if (v49 >= 1)
            {
              v51 = v49;
              v52 = 0;
              while (*(CFArrayGetValueAtIndex(*(v48 + 80), v52) + 48))
              {
                if (v51 == ++v52)
                {
                  goto LABEL_57;
                }
              }

              v50 = 0.1;
            }

LABEL_57:
            v16 = (v22 * v50) + v16 * (1.0 - v50);
          }

          v53 = 0.0;
          if (v16 >= 0.0)
          {
            v53 = v16;
          }

          valuePtr = fminf(v53, 1.0);
          goto LABEL_61;
        }

        remaker_CopyProperty_cold_1(&v61);
      }

      else
      {
        remaker_CopyProperty_cold_2(&v61);
      }

      value_low = LODWORD(v61.value);
      if (LODWORD(v61.value))
      {
        return value_low;
      }

LABEL_61:
      v45 = *MEMORY[0x1E695E480];
      p_valuePtr = &valuePtr;
      v47 = kCFNumberFloat32Type;
      goto LABEL_62;
    }

    if (CFEqual(a2, @"Remaker_MaxFileSize"))
    {
      v45 = *MEMORY[0x1E695E480];
      p_valuePtr = (v9 + 36);
      v47 = kCFNumberSInt64Type;
LABEL_62:
      v54 = CFNumberCreate(v45, v47, p_valuePtr);
LABEL_63:
      value_low = 0;
      *a4 = v54;
      return value_low;
    }

    if (CFEqual(a2, @"Remaker_ClientPID"))
    {
      v45 = *MEMORY[0x1E695E480];
      p_valuePtr = (v9 + 9);
      v47 = kCFNumberSInt32Type;
      goto LABEL_62;
    }

    if (CFEqual(a2, @"Remaker_ThrottleForBackground"))
    {
      v55 = MEMORY[0x1E695E4D0];
      v56 = *(v9 + 40);
    }

    else
    {
      if (CFEqual(a2, @"Remaker_IOPolicy"))
      {
        v45 = *MEMORY[0x1E695E480];
        p_valuePtr = (v9 + 114);
        v47 = kCFNumberIntType;
        goto LABEL_62;
      }

      if (CFEqual(a2, @"Remaker_MaximizePowerEfficiency"))
      {
        v55 = MEMORY[0x1E695E4D0];
        v56 = *(v9 + 424);
      }

      else if (CFEqual(a2, @"Remaker_MinimizeMemoryUsage"))
      {
        v55 = MEMORY[0x1E695E4D0];
        v56 = *(v9 + 425);
      }

      else
      {
        if (!CFEqual(a2, @"Remaker_RealTime"))
        {
          if (!CFEqual(a2, @"Remaker_DestinationURL"))
          {
            return 4294954512;
          }

          v54 = *(v9 + 20);
          if (!v54)
          {
            goto LABEL_63;
          }

          goto LABEL_70;
        }

        v55 = MEMORY[0x1E695E4D0];
        v56 = *(v9 + 32);
      }
    }

    if (!v56)
    {
      v55 = MEMORY[0x1E695E4C0];
    }

    v54 = *v55;
LABEL_70:
    v54 = CFRetain(v54);
    goto LABEL_63;
  }

  CMBaseObject = FigAssetGetCMBaseObject(*(v9 + 9));
  v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v11)
  {
    return 4294954514;
  }

  return v11(CMBaseObject, @"Duration", a3, a4);
}

uint64_t remaker_SetProperty(const void *a1, const void *a2, const void *a3)
{
  Storage = remakerFamily_getStorage(a1);
  if (*Storage >= 7u)
  {
    remaker_SetProperty_cold_13(&v28);
    return v28;
  }

  v7 = Storage;
  if (!CFEqual(a2, @"Remaker_ClientSecTask"))
  {
    if (CFEqual(a2, @"Remaker_ClientPID"))
    {
      if (a3)
      {
        v11 = CFGetTypeID(a3);
        if (v11 == CFNumberGetTypeID())
        {
          CFNumberGetValue(a3, kCFNumberSInt32Type, v7 + 9);

          return remakerfamily_updateClientPID();
        }
      }

      remaker_SetProperty_cold_2(&v28);
      return v28;
    }

    if (CFEqual(a2, @"Remaker_ThrottleForBackground"))
    {
      if (a3)
      {
        v12 = CFGetTypeID(a3);
        if (v12 == CFBooleanGetTypeID())
        {
          *(v7 + 40) = CFBooleanGetValue(a3);

          return remakerfamily_updateThrottleForBackground(a1);
        }
      }

      remaker_SetProperty_cold_3(&v28);
      return v28;
    }

    if (CFEqual(a2, @"Remaker_IOPolicy"))
    {
      if (a3)
      {
        v13 = CFGetTypeID(a3);
        if (v13 == CFNumberGetTypeID())
        {
          CFNumberGetValue(a3, kCFNumberIntType, v7 + 114);

          return remakerfamily_updateIOPolicy();
        }
      }

      remaker_SetProperty_cold_4(&v28);
      return v28;
    }

    if (CFEqual(a2, @"Remaker_MinimizeMemoryUsage"))
    {
      if (a3)
      {
        v14 = CFGetTypeID(a3);
        if (v14 == CFBooleanGetTypeID())
        {
          Value = CFBooleanGetValue(a3);
          *(v7 + 425) = Value;
          remakerFamily_setMemoryUsage(a1, Value);
          return 0;
        }
      }

      remaker_SetProperty_cold_5(&v28);
      return v28;
    }

    if (*v7 >= 3u)
    {
      remaker_SetProperty_cold_12(&v28);
      return v28;
    }

    if (!CFEqual(a2, @"Remaker_MaxFileSize"))
    {
      if (CFEqual(a2, @"Remaker_Metadata"))
      {
        if (!a3)
        {
          result = *(v7 + 50);
          if (result)
          {
            CFRelease(result);
            result = 0;
            *(v7 + 50) = 0;
          }

          return result;
        }

        v18 = CFGetTypeID(a3);
        if (v18 == CFArrayGetTypeID())
        {
          v19 = *(v7 + 50);
          if (v19)
          {
            CFRelease(v19);
            *(v7 + 50) = 0;
          }

          Copy = CFArrayCreateCopy(*MEMORY[0x1E695E480], a3);
          result = 0;
          *(v7 + 50) = Copy;
          return result;
        }

        remaker_SetProperty_cold_8(&v28);
      }

      else
      {
        if (!CFEqual(a2, @"Remaker_MetadataTransferAllowList"))
        {
          if (CFEqual(a2, @"Remaker_MaximizePowerEfficiency"))
          {
            if (a3)
            {
              v24 = CFGetTypeID(a3);
              if (v24 == CFBooleanGetTypeID())
              {
                v25 = CFBooleanGetValue(a3);
                result = 0;
                *(v7 + 424) = v25;
                return result;
              }
            }

            remaker_SetProperty_cold_10(&v28);
          }

          else
          {
            if (!CFEqual(a2, @"Remaker_RealTime"))
            {
              return 4294954512;
            }

            if (a3)
            {
              v26 = CFGetTypeID(a3);
              if (v26 == CFBooleanGetTypeID())
              {
                v27 = CFBooleanGetValue(a3);
                result = 0;
                *(v7 + 32) = v27;
                return result;
              }
            }

            remaker_SetProperty_cold_11(&v28);
          }

          return v28;
        }

        if (!a3)
        {
          result = *(v7 + 51);
          if (result)
          {
            CFRelease(result);
            result = 0;
            *(v7 + 51) = 0;
          }

          return result;
        }

        v21 = CFGetTypeID(a3);
        if (v21 == CFDictionaryGetTypeID())
        {
          v22 = *(v7 + 51);
          if (v22)
          {
            CFRelease(v22);
            *(v7 + 51) = 0;
          }

          v23 = CFDictionaryCreateCopy(*MEMORY[0x1E695E480], a3);
          result = 0;
          *(v7 + 51) = v23;
          return result;
        }

        remaker_SetProperty_cold_9(&v28);
      }

      return v28;
    }

    v28 = 0;
    if (a3)
    {
      v16 = CFGetTypeID(a3);
      if (v16 != CFNumberGetTypeID())
      {
        remaker_SetProperty_cold_6(&v29);
        return v29;
      }

      CFNumberGetValue(a3, kCFNumberSInt64Type, &v28);
      v17 = v28;
      if (v28 < 0)
      {
        remaker_SetProperty_cold_7(&v29);
        return v29;
      }
    }

    else
    {
      v17 = 0;
    }

    result = 0;
    *(v7 + 18) = v17;
    return result;
  }

  if (a3)
  {
    v8 = CFGetTypeID(a3);
    if (v8 == SecTaskGetTypeID())
    {
      v9 = *(v7 + 55);
      *(v7 + 55) = a3;
      CFRetain(a3);
      if (v9)
      {
        CFRelease(v9);
      }

      return 0;
    }

    remaker_SetProperty_cold_1(&v28);
    return v28;
  }

  result = *(v7 + 55);
  if (result)
  {
    CFRelease(result);
    result = 0;
    *(v7 + 55) = 0;
  }

  return result;
}

uint64_t remaker_AddVideoTrack(const void *a1, uint64_t a2, int a3, int32_t a4, const __CFDictionary *a5, uint64_t a6, const __CFDictionary *a7, uint64_t a8, const __CFDictionary *a9, const __CFDictionary *a10, uint64_t a11, _DWORD *a12)
{
  LODWORD(v14) = a3;
  v215 = *MEMORY[0x1E69E9840];
  Storage = remakerFamily_getStorage(a1);
  v211 = 0;
  *v212 = 0;
  v210 = 1986618469;
  v209 = bswap32(a6);
  v208 = 0;
  v206 = 0;
  v207 = 0;
  propertyValueOut = 0;
  v205 = 0;
  propertyValue = 0;
  v203 = 0;
  v201 = 0;
  memset(&value[1] + 7, 0, 9);
  cf = 0;
  value[0] = 0;
  if (*Storage != 1)
  {
    remaker_AddVideoTrack_cold_1(theArray);
    goto LABEL_311;
  }

  v18 = Storage;
  v19 = *(Storage + 72);
  v20 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (v20)
  {
    v21 = v20(v19, a2, &v211);
    if (v21)
    {
      goto LABEL_320;
    }

    v22 = v211;
    v23 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v23)
    {
      v21 = v23(v22, 0, &v210);
      if (!v21)
      {
        if (v210 != 1986618469)
        {
          return FigSignalErrorAtGM();
        }

        v24 = CFGetTypeID(a1);
        v21 = remakerFamily_copyFormatDescription(v24, v211, &v207);
        if (!v21)
        {
          v25 = MEMORY[0x1E695E480];
          if (a6 != 1752589105 || !FigCFDictionaryGetValue())
          {
LABEL_61:
            v43 = CFGetAllocator(a1);
            theDict = CFDictionaryCreateMutableCopy(v43, 0, a9);
            if (theDict)
            {
              v44 = CFGetTypeID(a1);
              theArray[0].start.value = 0;
              v213.value = 0;
              v197.value = 0;
              allocator = *v25;
              CMBaseObject = FigAssetTrackGetCMBaseObject(v211);
              v46 = *(*(CMBaseObjectGetVTable() + 8) + 48);
              if (!v46)
              {
                v58 = 0;
                value_low = 4294954514;
                goto LABEL_89;
              }

              v47 = v46(CMBaseObject, @"FormatDescriptionArray", allocator, theArray);
              if (v47 == -12521)
              {
                goto LABEL_86;
              }

              value_low = v47;
              if (v47)
              {
LABEL_176:
                v58 = 0;
                goto LABEL_89;
              }

              if (theArray[0].start.value && (Count = CFArrayGetCount(theArray[0].start.value)) != 0)
              {
                v49 = Count;
                if (Count >= 2)
                {
                  CFArrayGetValueAtIndex(theArray[0].start.value, 0);
                  FigVideoFormatDescriptionCopyVEXUExtensions();
                  v50 = FigVideoFormatDescriptionContainsStereoMultiviewVideo();
                  v51 = 1;
                  do
                  {
                    CFArrayGetValueAtIndex(theArray[0].start.value, v51);
                    FigVideoFormatDescriptionCopyVEXUExtensions();
                    v52 = FigVideoFormatDescriptionContainsStereoMultiviewVideo();
                    if (!FigCFEqual() || v50 != v52)
                    {
                      goto LABEL_175;
                    }

                    if (v213.value)
                    {
                      CFRelease(v213.value);
                      v213.value = 0;
                    }
                  }

                  while (v49 != ++v51);
                }

                ValueAtIndex = CFArrayGetValueAtIndex(theArray[0].start.value, 0);
                v55 = CFDictionaryContainsKey(theDict, *MEMORY[0x1E69836E0]);
                v56 = FigVideoFormatDescriptionContainsStereoMultiviewVideo();
                Extensions = CMFormatDescriptionGetExtensions(ValueAtIndex);
                v58 = Extensions;
                if (!Extensions)
                {
LABEL_84:
                  value_low = 0;
                  goto LABEL_89;
                }

                v59 = CFGetTypeID(Extensions);
                if (v59 != CFDictionaryGetTypeID())
                {
LABEL_175:
                  value_low = 0;
                  goto LABEL_176;
                }

                MutableCopy = FigCFDictionaryCreateMutableCopy();
                v58 = MutableCopy;
                if (MutableCopy)
                {
                  if (v56 && !v55)
                  {
                    CFDictionaryRemoveValue(MutableCopy, *MEMORY[0x1E6960048]);
                    CFDictionaryRemoveValue(v58, *MEMORY[0x1E6960050]);
                    CFDictionaryRemoveValue(v58, *MEMORY[0x1E6960040]);
                    CFDictionaryRemoveValue(v58, *MEMORY[0x1E6962780]);
                  }

                  CFDictionaryApplyFunction(v58, spatialFormatDescriptionExtensionApplierFunction, theDict);
                  goto LABEL_84;
                }

                value_low = 4294955196;
              }

              else
              {
LABEL_86:
                v58 = 0;
                if (FigAssetReaderGetTypeID() == v44)
                {
                  value_low = 4294955158;
                }

                else
                {
                  value_low = 4294955173;
                }
              }

LABEL_89:
              if (theArray[0].start.value)
              {
                CFRelease(theArray[0].start.value);
              }

              if (v58)
              {
                CFRelease(v58);
              }

              if (v213.value)
              {
                CFRelease(v213.value);
              }

              if (value_low)
              {
                goto LABEL_324;
              }

              v184 = remakerFamily_IsRasterFormatDescription(v207);
              MediaSubType = CMFormatDescriptionGetMediaSubType(v207);
              v62 = 1;
              if (MediaSubType <= 1634743415)
              {
                if (MediaSubType != 1634742376 && MediaSubType != 1634742888)
                {
                  v63 = 13416;
LABEL_104:
                  if (MediaSubType != (v63 | 0x61700000))
                  {
                    v62 = 0;
                  }
                }
              }

              else if (((MediaSubType - 1634755432) > 0xB || ((1 << (MediaSubType - 104)) & 0x8C1) == 0) && ((MediaSubType - 1634759272) > 6 || ((1 << (MediaSubType - 104)) & 0x51) == 0))
              {
                v63 = 13432;
                goto LABEL_104;
              }

              v187 = v62;
              Channel = remakerFamily_createChannel(a1, a2, v210, v212);
              if (!Channel)
              {
                TrackRotationAngle = remakerFamily_getTrackRotationAngle(v211, &v208 + 1, &v208);
                if (a5 && (theArray[0].start.value = 0, CFDictionaryGetValueIfPresent(a5, @"MatrixHandling", theArray)) && CFEqual(theArray[0].start.value, @"PreserveMatrix"))
                {
                  v66 = 0;
                  TrackRotationAngle = 0;
                  v208 = 0;
                }

                else
                {
                  v66 = 1;
                }

                v190 = TrackRotationAngle;
                if (a10)
                {
                  v185 = CFDictionaryGetValue(a10, @"CustomSampleBufferProcessor");
                  v67 = CFDictionaryGetValue(a10, @"CustomSampleBufferProcessorOptions");
                  if (v67 && (v68 = CFDictionaryGetValue(v67, @"CustomSampleBufferProcessorOptions_ConvenienceString")) != 0)
                  {
                    v69 = v68;
                    v70 = CFGetAllocator(a1);
                    Mutable = CFDictionaryCreateMutable(v70, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                    CFDictionaryAddValue(Mutable, @"SampleBufferProcessor_ConvenienceString", v69);
                  }

                  else
                  {
                    Mutable = 0;
                  }

                  if (CFDictionaryContainsKey(a10, @"RemakerVideoProcessingOption_VideoFrameRateConversionAlgorithm"))
                  {
                    v71 = CFDictionaryGetValue(a10, @"RemakerVideoProcessingOption_VideoFrameRateConversionAlgorithm");
                    if (v71)
                    {
                      v72 = CFGetTypeID(v71);
                      if (v72 == CFStringGetTypeID())
                      {
                        if (FigCFEqual())
                        {
                          *(*v212 + 49) = 1;
                        }
                      }
                    }
                  }

                  TrackRotationAngle = v190;
                }

                else
                {
                  Mutable = 0;
                  v185 = 0;
                }

                if (FigCPEIsSupportedFormatDescription(v207))
                {
                  remaker_AddVideoTrack_cold_2(theArray);
                  v36 = 0;
                  v38 = 0;
                  v39 = 0;
                  v40 = 0;
                  goto LABEL_326;
                }

                if (v14 && a4)
                {
                  *(*v212 + 320) |= 1u;
                  if (a5)
                  {
                    theArray[0].start.value = 0;
                    if (CFDictionaryGetValueIfPresent(a5, *MEMORY[0x1E6983E30], theArray))
                    {
                      if (!CFEqual(theArray[0].start.value, *MEMORY[0x1E69840F0]))
                      {
                        *(*v212 + 320) |= 2u;
                      }

                      v73 = CFEqual(theArray[0].start.value, *MEMORY[0x1E69840E8]);
                      v74 = v187;
                      if (v73)
                      {
                        v74 = 1;
                      }

                      v187 = v74;
                    }
                  }
                }

                else
                {
                  Dimensions = CMVideoFormatDescriptionGetDimensions(v207);
                  LODWORD(v14) = Dimensions;
                  if (TrackRotationAngle == 90 || TrackRotationAngle == 270)
                  {
                    a4 = Dimensions;
                    v14 = HIDWORD(Dimensions);
                  }

                  else
                  {
                    a4 = HIDWORD(Dimensions);
                  }
                }

                v76 = *v212;
                *(*v212 + 48) = 0;
                *(v76 + 50) = 1;
                v77 = *(v18 + 184);
                v78 = v210;
                v79 = *(*(CMBaseObjectGetVTable() + 16) + 8);
                if (!v79)
                {
                  v36 = 0;
                  v38 = 0;
                  v39 = 0;
                  v40 = 0;
                  value_low = 4294954514;
LABEL_151:
                  v35 = theDict;
LABEL_305:
                  v37 = Mutable;
                  goto LABEL_24;
                }

                v80 = v79(v77, v78, 0, v76 + 300);
                if (!v80)
                {
                  v80 = remakerFamily_setFormatWriterTrackProperties(a1, *(*v212 + 300), a6, 0);
                  if (!v80)
                  {
                    v80 = remakerFamily_setFormatWriterProperties(a1, a6);
                    if (!v80)
                    {
                      if ((v66 & 1) == 0)
                      {
                        v213.value = 0;
                        v81 = FigAssetTrackGetCMBaseObject(v211);
                        v82 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                        if (v82)
                        {
                          v82(v81, @"PreferredTransform", allocator, &v213);
                        }

                        if (v213.value)
                        {
                          v83 = CMVideoFormatDescriptionGetDimensions(v207);
                          width = v83.width;
                          height = v83.height;
                          FigGetCGAffineTransformFrom3x3MatrixArray(v213.value, theArray);
                          *&theArray[0].duration.timescale = vmulq_f64(*&theArray[0].duration.timescale, vabsq_f64(vmlaq_n_f64(vmulq_n_f64(*&theArray[0].start.epoch, a4 / height), *&theArray[0].start.value, v14 / width)));
                          v86 = FigCreate3x3MatrixArrayFromCGAffineTransform(allocator, theArray);
                          if (v86)
                          {
                            v87 = v86;
                            v88 = *(v18 + 184);
                            v89 = *(*v212 + 300);
                            v90 = *(*(CMBaseObjectGetVTable() + 16) + 24);
                            if (v90)
                            {
                              value_low = v90(v88, v89, @"TrackMatrix", v87);
                            }

                            else
                            {
                              value_low = 4294954514;
                            }

                            CFRelease(v87);
                            CFRelease(v213.value);
                            if (value_low)
                            {
                              goto LABEL_154;
                            }
                          }

                          else
                          {
                            CFRelease(v213.value);
                          }
                        }
                      }

                      v91 = CFGetAllocator(a1);
                      v92 = v91;
                      if (v184 != 1)
                      {
                        v40 = CFArrayCreateMutable(v91, 0, MEMORY[0x1E695E9C0]);
                        if (!v40)
                        {
                          v36 = 0;
                          v38 = 0;
                          v39 = 0;
                          value_low = 0;
                          goto LABEL_151;
                        }

                        v94 = CFGetAllocator(a1);
                        Basic = FigVisualContextCreateBasic(v94, 0, value);
                        if (Basic)
                        {
                          goto LABEL_318;
                        }

                        CFArrayAppendValue(v40, value[0]);
                        if (value[0])
                        {
                          CFRelease(value[0]);
                          value[0] = 0;
                        }

                        theArray[0].start.value = 0;
                        v96 = 1;
                        if (FigCFDictionaryGetValueIfPresent() && theArray[0].start.value)
                        {
                          v97 = CFGetTypeID(theArray[0].start.value);
                          if (v97 == CFArrayGetTypeID())
                          {
                            if (theArray[0].start.value)
                            {
                              v98 = CFArrayGetCount(theArray[0].start.value);
                              v96 = v98;
                              if (v98 >= 2)
                              {
                                v99 = v98 - 1;
                                do
                                {
                                  v100 = CFGetAllocator(a1);
                                  Basic = FigVisualContextCreateBasic(v100, 0, value);
                                  if (Basic)
                                  {
                                    goto LABEL_318;
                                  }

                                  CFArrayAppendValue(v40, value[0]);
                                  if (value[0])
                                  {
                                    CFRelease(value[0]);
                                    value[0] = 0;
                                  }
                                }

                                while (--v99);
                              }
                            }

                            else
                            {
                              v96 = 0;
                            }
                          }

                          else
                          {
                            v96 = 1;
                          }
                        }

                        v183 = 0;
                        v181 = v96 == 1;
LABEL_179:
                        if (v190 || HIBYTE(v208) || (v101 = v183, v208))
                        {
                          v102 = CFGetAllocator(a1);
                          CallbacksForUnsortedSampleBuffers = CMBufferQueueGetCallbacksForUnsortedSampleBuffers();
                          Basic = CMBufferQueueCreate(v102, 0, CallbacksForUnsortedSampleBuffers, (*v212 + 248));
                          if (Basic)
                          {
                            goto LABEL_318;
                          }

                          v101 = *(*v212 + 248);
                        }

                        v182 = v101;
                        if (v185)
                        {
                          v104 = CFGetAllocator(a1);
                          v105 = CMBufferQueueGetCallbacksForUnsortedSampleBuffers();
                          Basic = CMBufferQueueCreate(v104, 0, v105, (*v212 + 272));
                          if (Basic)
                          {
                            goto LABEL_318;
                          }

                          v101 = *(*v212 + 272);
                        }

                        Basic = remakerFamily_createRemakerVideoEncoderSpecification(a1, a7, &v205);
                        if (!Basic)
                        {
                          v106 = remakerFamily_setupMultiPassTrackIfNecessary(a1, *v212);
                          v35 = theDict;
                          if (v106)
                          {
                            goto LABEL_321;
                          }

                          v198 = 0;
                          FigCFDictionaryGetBooleanIfPresent();
                          v107 = v40 ? CFArrayGetValueAtIndex(v40, 0) : 0;
                          value[0] = v107;
                          *&theArray[0].start.value = *a11;
                          theArray[0].start.epoch = *(a11 + 16);
                          v106 = remakerFamily_setupCompressionMediaProcessorAndFileOutput(a1, v14, a4, a6, &theArray[0].start, v205, 0, *v212, v101, v40, theDict);
                          if (v106)
                          {
                            goto LABEL_321;
                          }

                          if (a5)
                          {
                            v108 = CFDictionaryGetValue(a5, *MEMORY[0x1E6983E30]);
                            if (!v108 || CFEqual(v108, *MEMORY[0x1E69840F0]))
                            {
                              v109 = *(*v212 + 288);
                              if (v109)
                              {
                                SampleBufferProcessor = FigMediaProcessorGetSampleBufferProcessor(v109);
                                if (!SampleBufferProcessor)
                                {
                                  remaker_AddVideoTrack_cold_3(theArray);
                                  goto LABEL_338;
                                }

                                FigBaseObject = FigSampleBufferProcessorGetFigBaseObject(SampleBufferProcessor);
                                v112 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                                if (v112)
                                {
                                  v112(FigBaseObject, @"SampleBufferProcessor_InheritOutputCleanApertureFromInput", *MEMORY[0x1E695E4D0]);
                                }
                              }
                            }
                          }

                          FigCFDictionaryGetInt32IfPresent();
                          VTCompressionSession = FigMediaProcessorGetVTCompressionSession(*(*v212 + 288));
                          v114 = *MEMORY[0x1E69838A8];
                          v115 = CFGetAllocator(a1);
                          v106 = VTSessionCopyProperty(VTCompressionSession, v114, v115, &propertyValueOut);
                          if (v106)
                          {
LABEL_321:
                            value_low = v106;
                            v36 = 0;
                            v38 = 0;
LABEL_329:
                            v39 = 0;
                            goto LABEL_305;
                          }

                          if (!propertyValueOut)
                          {
                            remaker_AddVideoTrack_cold_10(theArray);
                            goto LABEL_338;
                          }

                          if (dword_1EAF173A8)
                          {
                            LODWORD(v197.value) = 0;
                            type[0] = OS_LOG_TYPE_DEFAULT;
                            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                            fig_log_call_emit_and_clean_up_after_send_and_compose();
                          }

                          v117 = *v212;
                          if (!*(*v212 + 272))
                          {
LABEL_214:
                            v123 = a5;
                            if (!*(v117 + 248))
                            {
                              v38 = 0;
                              goto LABEL_241;
                            }

                            *(v117 + 320) |= 4u;
                            v124 = *(v117 + 264);
                            if (!v124)
                            {
                              goto LABEL_222;
                            }

                            v125 = FigMediaProcessorGetSampleBufferProcessor(v124);
                            if (v125)
                            {
                              v126 = v125;
                              v127 = CFGetAllocator(a1);
                              v128 = FigSampleBufferProcessorGetFigBaseObject(v126);
                              v129 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                              if (v129)
                              {
                                v129(v128, @"SampleBufferProcessor_SourcePixelBufferAttributes", v127, &v201);
                              }

                              if (!v201)
                              {
                                goto LABEL_225;
                              }

                              v130 = CFDictionaryContainsKey(v201, *MEMORY[0x1E6966208]);
                              v131 = CFDictionaryContainsKey(v201, *MEMORY[0x1E69660B8]);
                              if (v130 && v131)
                              {
LABEL_222:
                                if (v201)
                                {
                                  v38 = 0;
LABEL_230:
                                  v133 = CFGetAllocator(a1);
                                  v193 = HIBYTE(v208);
                                  v186 = v208;
                                  v134 = v201;
                                  if (v183)
                                  {
                                    v135 = 0;
                                  }

                                  else
                                  {
                                    v135 = value[0];
                                  }

                                  v213 = *(v18 + 88);
                                  v197 = *(v18 + 112);
                                  CMTimeRangeFromTimeToTime(theArray, &v213, &v197);
                                  v136 = *(*v212 + 248);
                                  remakerFamily_getHighWaterLevel(*(v18 + 32), &v213);
                                  remakerFamily_getLowWaterLevel(*(v18 + 32), &v197);
                                  if (*(v18 + 32))
                                  {
                                    v137 = 0;
                                  }

                                  else
                                  {
                                    v137 = 31;
                                  }

                                  *type = *a11;
                                  v196 = *(a11 + 16);
                                  v138 = FigMediaProcessorCreateForVideoRotation(v133, v190, v193, v186, v134, v183, v135, type, &theArray[0].start.value, v136, &v213, &v197, 0, v137, (*v212 + 232));
                                  if (!v138)
                                  {
                                    CMNotificationCenterGetDefaultLocalCenter();
                                    VideoPixelTransferProperties = FigNotificationCenterAddWeakListeners();
                                    v35 = theDict;
                                    if (VideoPixelTransferProperties)
                                    {
                                      goto LABEL_328;
                                    }

                                    if (v201)
                                    {
                                      CFRelease(v201);
                                      v201 = 0;
                                    }

                                    v123 = a5;
LABEL_241:
                                    if (!v123 || (v140 = CFGetAllocator(a1), VideoPixelTransferProperties = remakerFamily_createVideoPixelTransferProperties(v140, v123, v190, &propertyValue), !VideoPixelTransferProperties))
                                    {
                                      v141 = *v212;
                                      v142 = *(*v212 + 232);
                                      if (!v142)
                                      {
                                        goto LABEL_248;
                                      }

                                      v143 = FigMediaProcessorGetSampleBufferProcessor(v142);
                                      if (v143)
                                      {
                                        v144 = v143;
                                        v145 = CFGetAllocator(a1);
                                        v146 = FigSampleBufferProcessorGetFigBaseObject(v144);
                                        v147 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                                        if (!v147)
                                        {
                                          v36 = 0;
                                          v39 = 0;
                                          value_low = 4294954514;
                                          goto LABEL_305;
                                        }

                                        VideoPixelTransferProperties = v147(v146, @"SampleBufferProcessor_SourcePixelBufferAttributes", v145, &v201);
                                        if (!VideoPixelTransferProperties)
                                        {
                                          v141 = *v212;
LABEL_248:
                                          v148 = *(v141 + 264);
                                          v149 = v201;
                                          if (!v148 || v201)
                                          {
LABEL_254:
                                            if (!v149)
                                            {
                                              v149 = CFRetain(propertyValueOut);
                                              v201 = v149;
                                            }

                                            v39 = CFRetain(v149);
                                            if (!*(*v212 + 232) && !*(*v212 + 264))
                                            {
                                              v172 = CMFormatDescriptionGetMediaSubType(v207);
                                              if (v172 == 1634759278 || v172 == 1634759272)
                                              {
                                                theArray[0].start.value = CFDictionaryGetValue(v201, *MEMORY[0x1E6966130]);
                                                if (theArray[0].start.value)
                                                {
                                                  if (v39)
                                                  {
                                                    CFRelease(v39);
                                                  }

                                                  v39 = CFDictionaryCreate(allocator, MEMORY[0x1E6966130], theArray, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                                                  if (!v39)
                                                  {
                                                    RenderPipelineOptions = FigSignalErrorAtGM();
                                                    goto LABEL_289;
                                                  }
                                                }

                                                v173 = FigMediaProcessorGetVTCompressionSession(*(*v212 + 288));
                                                RenderPipelineOptions = VTSessionSetProperty(v173, *MEMORY[0x1E6983798], propertyValue);
                                                if (RenderPipelineOptions)
                                                {
LABEL_289:
                                                  value_low = RenderPipelineOptions;
                                                  v36 = 0;
                                                  goto LABEL_305;
                                                }
                                              }
                                            }

                                            if (v201)
                                            {
                                              CFRelease(v201);
                                              v201 = 0;
                                            }

                                            v155 = CFGetAllocator(a1);
                                            v156 = v207;
                                            remakerFamily_getLowWaterLevel(*(v18 + 32), theArray);
                                            remakerFamily_getHighWaterLevel(*(v18 + 32), &v213);
                                            RenderPipelineOptions = remakerFamily_createRenderPipelineOptions(v155, v156, &theArray[0].start.value, &v213.value, 0, 0, *(v18 + 424), 1, v187, *(v18 + 32), 0, 0, 0, v18 + 41, a2, &v206);
                                            if (RenderPipelineOptions)
                                            {
                                              goto LABEL_289;
                                            }

                                            v158 = a10;
                                            if (v184)
                                            {
                                              v159 = CFGetAllocator(a1);
                                              v160 = FigRenderPipelineCreateForBufferQueue(v159, *(*v212 + 224), 0, (*v212 + 56));
                                              v36 = 0;
                                              if (v160)
                                              {
LABEL_331:
                                                value_low = v160;
                                                goto LABEL_305;
                                              }

LABEL_292:
                                              CMNotificationCenterGetDefaultLocalCenter();
                                              v160 = FigNotificationCenterAddWeakListeners();
                                              if (!v160)
                                              {
                                                if (a12)
                                                {
                                                  *a12 = *(*v212 + 300);
                                                }

                                                if ((*(a11 + 12) & 0x1D) == 1)
                                                {
                                                  v174 = *(a11 + 8);
                                                  if (v174 <= 600)
                                                  {
                                                    v174 = 600;
                                                  }

                                                  LODWORD(theArray[0].start.value) = v174;
                                                  v175 = CFNumberCreate(allocator, kCFNumberSInt32Type, theArray);
                                                  value[2] = v175;
                                                }

                                                else
                                                {
                                                  v176 = FigAssetTrackGetCMBaseObject(v211);
                                                  CMBaseObjectCopyProperty_0(v176, @"NaturalTimeScale", allocator, &value[2]);
                                                  v175 = value[2];
                                                }

                                                if (v175)
                                                {
                                                  v177 = *(v18 + 184);
                                                  v178 = *(*v212 + 300);
                                                  v179 = *(*(CMBaseObjectGetVTable() + 16) + 24);
                                                  if (v179)
                                                  {
                                                    v179(v177, v178, @"MediaTimeScale", v175);
                                                  }

                                                  remakerFamily_setFormatWriterMovieTimeScaleIfAppropriate(a1, value[2], 1986618469);
                                                  CFRelease(value[2]);
                                                }

                                                remakerFamily_commitChannel(a1, *v212);
                                                value_low = 0;
                                                *v212 = 0;
                                                goto LABEL_305;
                                              }

                                              goto LABEL_331;
                                            }

                                            RenderPipelineOptions = remakerFamily_createRemakerVideoDecoderSpecification(a1, a10, &v203);
                                            if (RenderPipelineOptions)
                                            {
                                              goto LABEL_289;
                                            }

                                            theArray[0].start.value = 0;
                                            if (FigCFDictionaryGetValueIfPresent() || FigCFDictionaryGetValueIfPresent())
                                            {
                                              if (!theArray[0].start.value || (v161 = CFArrayGetCount(theArray[0].start.value), v161 <= 0))
                                              {
                                                remaker_AddVideoTrack_cold_8(&v213);
                                                v36 = 0;
                                                value_low = LODWORD(v213.value);
LABEL_316:
                                                v37 = Mutable;
LABEL_317:
                                                v35 = theDict;
                                                goto LABEL_24;
                                              }

                                              v162 = v161;
                                              v163 = CFGetAllocator(a1);
                                              v36 = CFArrayCreateMutable(v163, v162, MEMORY[0x1E695E9C0]);
                                              if (!v36)
                                              {
                                                value_low = 4294955196;
                                                goto LABEL_316;
                                              }

                                              v164 = 0;
                                              while (1)
                                              {
                                                CFGetAllocator(a1);
                                                v165 = FigTagCollectionCreateMutable();
                                                if (v165)
                                                {
                                                  break;
                                                }

                                                v213.value = -1;
                                                FigCFArrayGetInt64AtIndex();
                                                if (v213.value < 0)
                                                {
                                                  v165 = FigSignalErrorAtGM();
                                                  break;
                                                }

                                                v166 = FigTagMakeWithSInt64Value();
                                                v168 = v167;
                                                *&v216.category = v166;
                                                v216.value = v168;
                                                CMTagCollectionAddTag(cf, v216);
                                                CFArrayAppendValue(v36, cf);
                                                if (cf)
                                                {
                                                  CFRelease(cf);
                                                  cf = 0;
                                                }

                                                if (v162 == ++v164)
                                                {
                                                  v169 = CFGetAllocator(a1);
                                                  v165 = FigVideoRenderPipelineCreateWithVisualContextGroup(v169, v203, v39, propertyValue, 1, v40, v36, 0, v206, (*v212 + 56));
                                                  if (v165)
                                                  {
                                                    break;
                                                  }

                                                  v35 = theDict;
                                                  v158 = a10;
                                                  goto LABEL_279;
                                                }
                                              }

LABEL_315:
                                              value_low = v165;
                                              goto LABEL_316;
                                            }

                                            if (v181)
                                            {
                                              v180 = CFGetAllocator(a1);
                                              v165 = FigVideoRenderPipelineCreateWithVisualContext(v180, v203, v39, propertyValue, 1, value[0], 0, v206, *v212 + 56);
                                              v36 = 0;
                                              if (v165)
                                              {
                                                goto LABEL_315;
                                              }
                                            }

                                            else
                                            {
                                              v36 = 0;
                                            }

LABEL_279:
                                            v170 = *v212;
                                            if (!*(*v212 + 56))
                                            {
                                              value_low = 4294955190;
                                              goto LABEL_316;
                                            }

                                            if (v158)
                                            {
                                              v171 = CFDictionaryGetValue(v158, @"Remaker_FieldMode");
                                              FigCFDictionaryGetBooleanIfPresent();
                                              v170 = *v212;
                                            }

                                            else
                                            {
                                              v171 = 0;
                                            }

                                            v165 = remakerFamily_setVideoRenderPipelineProperties(a1, v170, 1, HIBYTE(value[1]), v207, v171, *(v18 + 32), 0, 0, propertyValue);
                                            if (!v165)
                                            {
                                              goto LABEL_292;
                                            }

                                            goto LABEL_315;
                                          }

                                          v150 = FigMediaProcessorGetSampleBufferProcessor(v148);
                                          if (v150)
                                          {
                                            v151 = v150;
                                            v152 = CFGetAllocator(a1);
                                            v153 = FigSampleBufferProcessorGetFigBaseObject(v151);
                                            v154 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                                            if (v154)
                                            {
                                              v154(v153, @"SampleBufferProcessor_SourcePixelBufferAttributes", v152, &v201);
                                            }

                                            v149 = v201;
                                            goto LABEL_254;
                                          }

                                          remaker_AddVideoTrack_cold_9(theArray);
                                          goto LABEL_343;
                                        }

                                        goto LABEL_328;
                                      }

                                      remaker_AddVideoTrack_cold_7(theArray);
LABEL_343:
                                      v36 = 0;
                                      goto LABEL_344;
                                    }

LABEL_328:
                                    value_low = VideoPixelTransferProperties;
                                    v36 = 0;
                                    goto LABEL_329;
                                  }

                                  value_low = v138;
                                  v36 = 0;
LABEL_319:
                                  v39 = 0;
                                  goto LABEL_151;
                                }

LABEL_225:
                                v38 = 0;
                                v201 = CFRetain(propertyValueOut);
                                goto LABEL_230;
                              }

                              v38 = CFDictionaryCreateMutableCopy(allocator, 0, v201);
                              if (!v38)
                              {
                                remaker_AddVideoTrack_cold_5(theArray);
                                goto LABEL_343;
                              }

                              FigCFDictionarySetInt32();
                              FigCFDictionarySetInt32();
                              v132 = v201;
                              v201 = v38;
                              CFRetain(v38);
                              if (v132)
                              {
                                CFRelease(v132);
                              }

                              if (v201)
                              {
                                goto LABEL_230;
                              }

                              remaker_AddVideoTrack_cold_4(theArray);
                              v36 = 0;
                              v39 = 0;
LABEL_326:
                              value_low = LODWORD(theArray[0].start.value);
                              goto LABEL_151;
                            }

                            remaker_AddVideoTrack_cold_6(theArray);
LABEL_338:
                            v36 = 0;
                            v38 = 0;
LABEL_344:
                            v39 = 0;
                            value_low = LODWORD(theArray[0].start.value);
                            goto LABEL_305;
                          }

                          v118 = CFGetAllocator(a1);
                          v119 = propertyValueOut;
                          if (v182)
                          {
                            v120 = 0;
                          }

                          else
                          {
                            v120 = value[0];
                          }

                          v213 = *(v18 + 88);
                          v197 = *(v18 + 112);
                          CMTimeRangeFromTimeToTime(theArray, &v213, &v197);
                          v121 = *(*v212 + 272);
                          remakerFamily_getHighWaterLevel(*(v18 + 32), &v213);
                          remakerFamily_getLowWaterLevel(*(v18 + 32), &v197);
                          if (*(v18 + 32))
                          {
                            v122 = 0;
                          }

                          else
                          {
                            v122 = 31;
                          }

                          *type = *a11;
                          v196 = *(a11 + 16);
                          Basic = FigMediaProcessorCreateForCustom(v118, v185, Mutable, v119, v182, v120, type, &theArray[0].start.value, v121, &v213, &v197, 0, v122, (*v212 + 264));
                          if (!Basic)
                          {
                            CMNotificationCenterGetDefaultLocalCenter();
                            Basic = FigNotificationCenterAddWeakListeners();
                            if (!Basic)
                            {
                              v117 = *v212;
                              *(*v212 + 320) = -1;
                              v35 = theDict;
                              goto LABEL_214;
                            }
                          }
                        }

LABEL_318:
                        value_low = Basic;
                        v36 = 0;
                        v38 = 0;
                        goto LABEL_319;
                      }

                      v93 = CMBufferQueueGetCallbacksForUnsortedSampleBuffers();
                      v80 = CMBufferQueueCreate(v92, 0, v93, (*v212 + 224));
                      if (!v80)
                      {
                        v181 = 0;
                        v40 = 0;
                        v183 = *(*v212 + 224);
                        goto LABEL_179;
                      }
                    }
                  }
                }

                value_low = v80;
LABEL_154:
                v36 = 0;
                v38 = 0;
                v39 = 0;
                v40 = 0;
                goto LABEL_151;
              }

              value_low = Channel;
LABEL_324:
              v36 = 0;
              v37 = 0;
              v38 = 0;
              v39 = 0;
              v40 = 0;
              goto LABEL_317;
            }

            remaker_AddVideoTrack_cold_11(theArray);
LABEL_311:
            v35 = 0;
            v36 = 0;
            v37 = 0;
            v38 = 0;
            v39 = 0;
            v40 = 0;
            value_low = LODWORD(theArray[0].start.value);
            goto LABEL_24;
          }

          CFGetTypeID(a1);
          theArray[0].start.value = 0;
          v26 = FigAssetTrackGetCMBaseObject(v211);
          v27 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (!v27)
          {
            goto LABEL_57;
          }

          v28 = v27(v26, @"FormatDescriptionArray", *MEMORY[0x1E695E480], theArray);
          if (v28 != -12521)
          {
            if (v28)
            {
LABEL_57:
              v33 = 1;
              goto LABEL_58;
            }

            if (theArray[0].start.value)
            {
              v29 = CFArrayGetCount(theArray[0].start.value);
              if (v29)
              {
                v30 = v29 - 1;
                if (v29 < 1)
                {
                  v33 = 0;
                }

                else
                {
                  v31 = 0;
                  do
                  {
                    CFArrayGetValueAtIndex(theArray[0].start.value, v31);
                    v32 = FigVideoFormatDescriptionContainsStereoMultiviewVideo();
                    v33 = v32 == 0;
                    if (v32)
                    {
                      v34 = v30 == v31;
                    }

                    else
                    {
                      v34 = 1;
                    }

                    ++v31;
                  }

                  while (!v34);
                }

LABEL_58:
                v25 = MEMORY[0x1E695E480];
                if (theArray[0].start.value)
                {
                  CFRelease(theArray[0].start.value);
                }

                if (!v33)
                {
                  goto LABEL_61;
                }

                return FigSignalErrorAtGM();
              }
            }
          }

          FigAssetReaderGetTypeID();
          goto LABEL_57;
        }
      }

LABEL_320:
      value_low = v21;
      v35 = 0;
      v36 = 0;
      v37 = 0;
      v38 = 0;
      v39 = 0;
      v40 = 0;
      goto LABEL_24;
    }
  }

  v35 = 0;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v40 = 0;
  value_low = 4294954514;
LABEL_24:
  remakerFamily_discardChannel(a1, *v212);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v36)
  {
    CFRelease(v36);
  }

  if (v40)
  {
    CFRelease(v40);
  }

  if (v207)
  {
    CFRelease(v207);
  }

  if (v206)
  {
    CFRelease(v206);
  }

  if (v205)
  {
    CFRelease(v205);
  }

  if (propertyValueOut)
  {
    CFRelease(propertyValueOut);
  }

  if (v203)
  {
    CFRelease(v203);
  }

  if (v39)
  {
    CFRelease(v39);
  }

  if (propertyValue)
  {
    CFRelease(propertyValue);
  }

  if (v37)
  {
    CFRelease(v37);
  }

  if (v201)
  {
    CFRelease(v201);
  }

  if (v38)
  {
    CFRelease(v38);
  }

  if (v211)
  {
    CFRelease(v211);
  }

  if (v35)
  {
    CFRelease(v35);
  }

  return value_low;
}

uint64_t remaker_AddPassthroughTrack(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 120);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(a1, a2, 0, a3);
}

uint64_t remaker_SetTimeRange(uint64_t a1, CMTime *a2, CMTime *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  Storage = remakerFamily_getStorage(a1);
  if (dword_1EAF173A8)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*Storage == 1)
  {
    if ((a2->flags & 0x1D) == 1)
    {
      time = *a2;
      time2 = *a3;
      if (CMTimeCompare(&time, &time2) < 0)
      {
        result = 0;
        v8 = *&a2->value;
        *(Storage + 104) = a2->epoch;
        *(Storage + 88) = v8;
        v9 = *&a3->value;
        *(Storage + 128) = a3->epoch;
        *(Storage + 112) = v9;
        return result;
      }

      remaker_SetTimeRange_cold_3(&time);
    }

    else
    {
      remaker_SetTimeRange_cold_2(&time);
    }
  }

  else
  {
    remaker_SetTimeRange_cold_1(&time);
  }

  return LODWORD(time.value);
}

uint64_t remaker_EstimateMaxSegmentDurationForFileSize(uint64_t a1, uint64_t a2, CMTime *a3)
{
  Storage = remakerFamily_getStorage(a1);
  cf = 0;
  if (*Storage >= 7u)
  {
    remaker_EstimateMaxSegmentDurationForFileSize_cold_1(&v12);
    return v12;
  }

  if (a2)
  {
    CMBaseObject = FigAssetGetCMBaseObject(*(Storage + 72));
    v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v7)
    {
      return 4294954514;
    }

    v8 = v7(CMBaseObject, @"assetProperty_FormatReader", *MEMORY[0x1E695E480], &cf);
    v9 = cf;
    if (!v8)
    {
      v8 = EstimateMaximumTrimTimeForFileSize(cf, a2, a3);
      v9 = cf;
    }

    if (v9)
    {
      CFRelease(v9);
    }

    return v8;
  }

  return FigSignalErrorAtGM();
}

uint64_t remaker_AddAudioMixdownTrack(const void *a1, const __CFArray *a2, uint64_t a3, size_t a4, const AudioChannelLayout *a5, uint64_t a6, const __CFDictionary *a7, _DWORD *a8)
{
  v14 = a1;
  v68 = *MEMORY[0x1E69E9840];
  v65 = 0;
  v64 = 0;
  memset(&asbd, 0, sizeof(asbd));
  v61 = 0;
  formatDescriptionOut = 0;
  v60 = 0;
  Storage = remakerFamily_getStorage(a1);
  if (*Storage != 1)
  {
    remaker_AddAudioMixdownTrack_cold_1(values);
LABEL_78:
    value_low = LODWORD(values[0].value);
    remakerFamily_discardChannel(v14, 0);
    goto LABEL_63;
  }

  if (!a2)
  {
    remaker_AddAudioMixdownTrack_cold_6(values);
    goto LABEL_78;
  }

  if (!a3)
  {
    remaker_AddAudioMixdownTrack_cold_5(values);
    goto LABEL_78;
  }

  if (!*(a3 + 28))
  {
    remaker_AddAudioMixdownTrack_cold_4(values);
    goto LABEL_78;
  }

  if (*a3 == 0.0)
  {
    remaker_AddAudioMixdownTrack_cold_3(values);
    goto LABEL_78;
  }

  v65 = bswap32(*(a3 + 8));
  v57 = a2;
  if (dword_1EAF173A8)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v55 = a3;
  v52 = a6;
  Count = CFArrayGetCount(a2);
  v17 = malloc_type_calloc(8uLL, Count, 0x926F34D1uLL);
  if (a7)
  {
    Value = CFDictionaryGetValue(a7, @"RemakerFamilyAudioProcessingOption_TimePitchAlgorithm");
  }

  else
  {
    Value = 0;
  }

  *&asbd.mBitsPerChannel = *(v55 + 32);
  v18 = *(v55 + 16);
  *&asbd.mSampleRate = *v55;
  asbd.mChannelsPerFrame = HIDWORD(v18);
  asbd.mBitsPerChannel = 32;
  *&asbd.mFormatID = 0x96C70636DLL;
  asbd.mFramesPerPacket = 1;
  asbd.mBytesPerFrame = 4 * HIDWORD(v18);
  asbd.mBytesPerPacket = 4 * HIDWORD(v18);
  v19 = CFGetAllocator(v14);
  v20 = CMAudioFormatDescriptionCreate(v19, &asbd, a4, a5, 0, 0, 0, &formatDescriptionOut);
  if (v20)
  {
    goto LABEL_72;
  }

  if (Count < 1)
  {
LABEL_79:
    remaker_AddAudioMixdownTrack_cold_2(values);
    value_low = LODWORD(values[0].value);
    goto LABEL_55;
  }

  v58 = 0;
  cf = v14;
  v21 = 0;
  v54 = v17;
  v22 = v17;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a2, v21);
    LODWORD(v66.value) = 0;
    values[0].value = 0;
    if (!FigCFDictionaryGetInt32IfPresent())
    {
      value_low = 0;
      goto LABEL_71;
    }

    values[0].value = CFDictionaryGetValue(ValueAtIndex, @"RemakerAudioMixdown_VolumeCurve");
    if (values[0].value)
    {
      v24 = cf;
      v25 = CFGetAllocator(cf);
      v26 = CFDictionaryCreate(v25, kFigAudioCurvesKey_Volume, values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (!v26)
      {
        value_low = 4294954510;
LABEL_71:
        v14 = cf;
        v17 = v54;
        goto LABEL_55;
      }
    }

    else
    {
      v26 = 0;
      v24 = cf;
    }

    v27 = Count;
    v28 = CFDictionaryGetValue(ValueAtIndex, @"RemakerAudioMixdown_AudioProcessingTap");
    v29 = CFDictionaryGetValue(ValueAtIndex, @"RemakerAudioMixdown_CinematicAudioParameters");
    v30 = CFDictionaryGetValue(ValueAtIndex, @"RemakerFamilyAudioProcessingOption_TimePitchAlgorithmSourceTrack");
    if (v30)
    {
      v31 = v30;
    }

    else
    {
      v31 = Value;
    }

    value_low = remakerFamily_createAudioMixdownSourceTrack(v24, LODWORD(v66.value), v26, v28, v29, v31, 0, 0, v22);
    if (v26)
    {
      CFRelease(v26);
    }

    Count = v27;
    a2 = v57;
    if (value_low != -12123)
    {
      if (value_low)
      {
        goto LABEL_71;
      }

      ++v58;
    }

    ++v21;
    ++v22;
  }

  while (v27 != v21);
  v14 = cf;
  v17 = v54;
  if (!v58)
  {
    goto LABEL_79;
  }

  v20 = remakerFamily_createChannel(cf, 0, 1936684398, &v64);
  if (!v20)
  {
    v32 = v64;
    *(v64 + 48) = 0;
    *(v32 + 50) = 1;
    v33 = *(Storage + 184);
    v34 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (!v34)
    {
      value_low = 4294954514;
      goto LABEL_55;
    }

    v20 = v34(v33, 1936684398, 0, v32 + 300);
    if (!v20)
    {
      v20 = remakerFamily_setFormatWriterTrackProperties(cf, *(v64 + 300), *(v55 + 8), 0);
      if (!v20)
      {
        v20 = remakerFamily_setFormatWriterProperties(cf, *(v55 + 8));
        if (!v20)
        {
          v35 = CFGetAllocator(cf);
          CallbacksForUnsortedSampleBuffers = CMBufferQueueGetCallbacksForUnsortedSampleBuffers();
          v20 = CMBufferQueueCreate(v35, 0, CallbacksForUnsortedSampleBuffers, (v64 + 208));
          if (!v20)
          {
            v20 = remakerFamily_buildMediaProcessorForAudioCompressionFromLPCMWithFormatWriter(cf, v64, formatDescriptionOut, v55, a4, a5, v52, *(v64 + 208));
            if (!v20)
            {
              v37 = *(v64 + 208);
              CMTimeMake(values, 2, 1);
              CMTimeMake(&v66, 1, 1);
              v20 = FigSampleBufferConsumerCreateForBufferQueue(v37, &values[0].value, &v66.value, &v61);
              if (!v20)
              {
                v38 = *(Storage + 32) ? 0 : 31;
                v20 = FigActivitySchedulerCreateForNewThread(*MEMORY[0x1E695E480], v38, @"com.apple.coremedia.remakerOfflineMixer", &v60);
                if (!v20)
                {
                  v39 = CFGetAllocator(cf);
                  v20 = FigAudioQueueOfflineMixerCreate(v39, &asbd, a4, a5, 0, v61, v60, (v64 + 200));
                  if (!v20)
                  {
                    CMNotificationCenterGetDefaultLocalCenter();
                    v20 = FigNotificationCenterAddWeakListeners();
                    if (!v20)
                    {
                      v40 = v54;
                      v41 = v27;
                      while (1)
                      {
                        if (*v40)
                        {
                          v42 = *(v64 + 200);
                          FigBaseObject = FigRenderPipelineGetFigBaseObject(*(*v40 + 56));
                          v44 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                          if (!v44)
                          {
                            value_low = 4294954514;
LABEL_58:
                            remakerFamily_discardChannel(cf, v64);
                            goto LABEL_59;
                          }

                          v45 = v44(FigBaseObject, @"OfflineMixer", v42);
                          if (v45)
                          {
                            value_low = v45;
                            goto LABEL_58;
                          }

                          *(*v40 + 304) = *(v64 + 300);
                        }

                        ++v40;
                        if (!--v41)
                        {
                          if (a8)
                          {
                            *a8 = *(v64 + 300);
                          }

                          v46 = v54;
                          value_low = v27;
                          do
                          {
                            remakerFamily_commitChannel(cf, *v46);
                            *v46++ = 0;
                            --value_low;
                          }

                          while (value_low);
                          remakerFamily_commitChannel(cf, v64);
                          v64 = 0;
                          goto LABEL_55;
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
  }

LABEL_72:
  value_low = v20;
LABEL_55:
  remakerFamily_discardChannel(v14, v64);
  if (v17)
  {
LABEL_59:
    if (Count >= 1)
    {
      v47 = v17;
      do
      {
        v48 = *v47++;
        remakerFamily_discardChannel(v14, v48);
        --Count;
      }

      while (Count);
    }

    free(v17);
  }

LABEL_63:
  if (formatDescriptionOut)
  {
    CFRelease(formatDescriptionOut);
  }

  if (v61)
  {
    CFRelease(v61);
  }

  if (v60)
  {
    CFRelease(v60);
  }

  return value_low;
}

uint64_t remaker_AddVideoCompositionTrack(const void *a1, const __CFArray *a2, const __CFArray *a3, const void *a4, const void *a5, __CFString *a6, const void *a7, const void *a8, int a9, const __CFArray *a10, uint64_t a11, const void *a12, uint64_t a13, unsigned int a14, int a15, int a16, int a17, int a18, CFDictionaryRef a19, unsigned int a20, const __CFDictionary *a21, const __CFDictionary *a22, const __CFDictionary *a23, CFTypeRef cf, _DWORD *a25)
{
  v113 = *MEMORY[0x1E69E9840];
  Storage = remakerFamily_getStorage(a1);
  v109 = bswap32(a20);
  value = 0;
  *v108 = 0;
  propertyValueOut = 0;
  v106 = 0;
  *&v104.value = *a13;
  v104.epoch = *(a13 + 16);
  if (*Storage != 1)
  {
    remaker_AddVideoCompositionTrack_cold_1(v112);
LABEL_119:
    v51 = LODWORD(v112[0]);
    goto LABEL_34;
  }

  if (!a2)
  {
    remaker_AddVideoCompositionTrack_cold_11(v112);
    goto LABEL_119;
  }

  if (!a7)
  {
    remaker_AddVideoCompositionTrack_cold_10(v112);
    goto LABEL_119;
  }

  if (a15 < 1 || a16 <= 0)
  {
    remaker_AddVideoCompositionTrack_cold_9(v112);
    goto LABEL_119;
  }

  v103 = a2;
  v99 = a3;
  v100 = a6;
  if (a17 < 1 || a18 <= 0)
  {
    remaker_AddVideoCompositionTrack_cold_8(v112);
    goto LABEL_119;
  }

  if (!a20)
  {
    remaker_AddVideoCompositionTrack_cold_7(v112);
    goto LABEL_119;
  }

  if ((*(a13 + 12) & 0x1D) != 1)
  {
    remaker_AddVideoCompositionTrack_cold_2(v112);
    goto LABEL_119;
  }

  v32 = Storage;
  if (cf)
  {
    v33 = CFGetTypeID(cf);
    if (v33 != CFDictionaryGetTypeID())
    {
      remaker_AddVideoCompositionTrack_cold_3(v112);
      goto LABEL_119;
    }
  }

  v97 = a7;
  v98 = a8;
  if (dword_1EAF173A8)
  {
    LODWORD(valuePtr) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  Channel = remakerFamily_createChannel(a1, 0, 1986618469, v108);
  if (Channel)
  {
    goto LABEL_109;
  }

  v36 = *v108;
  *(*v108 + 48) = 0;
  *(v36 + 50) = 1;
  v37 = v32[23];
  v38 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v38)
  {
    v51 = 4294954514;
LABEL_34:
    remakerFamily_discardChannel(a1, *v108);
    v52 = 0;
    goto LABEL_96;
  }

  Channel = v38(v37, 1986618469, 0, v36 + 300);
  if (Channel || (Channel = remakerFamily_setFormatWriterTrackProperties(a1, *(*v108 + 300), a20, 0), Channel) || (Channel = remakerFamily_setFormatWriterProperties(a1, a20), Channel) || (Channel = remakerFamily_createRemakerVideoEncoderSpecification(a1, a21, &v106), Channel) || (Channel = remakerFamily_setupMultiPassTrackIfNecessary(a1, *v108), Channel))
  {
LABEL_109:
    v51 = Channel;
    goto LABEL_34;
  }

  if (a14)
  {
    *&v104.value = *MEMORY[0x1E6960C70];
    v104.epoch = *(MEMORY[0x1E6960C70] + 16);
  }

  v39 = CFGetAllocator(a1);
  Mutable = CFArrayCreateMutable(v39, 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    v51 = 4294955196;
    goto LABEL_34;
  }

  v41 = Mutable;
  v42 = CFDictionaryGetValue(cf, @"VideoCompositionProcessor_OutputBufferDescription");
  v43 = v42;
  if (v42 && CFArrayGetCount(v42) >= 2)
  {
    Count = CFArrayGetCount(v43);
    if (Count >= 1)
    {
      v45 = Count;
      do
      {
        v46 = CFGetAllocator(a1);
        Basic = FigVisualContextCreateBasic(v46, 0, &value);
        if (Basic)
        {
          goto LABEL_108;
        }

        CFArrayAppendValue(v41, value);
        if (value)
        {
          CFRelease(value);
          value = 0;
        }
      }

      while (--v45);
    }

    *(*(*v108 + 152) + 160) = 1;
    v48 = CFRetain(v41);
    *(*(*v108 + 152) + 120) = v48;
    v49 = CFRetain(v43);
    *(*(*v108 + 152) + 152) = v49;
    FirstValue = FigCFArrayGetFirstValue();
    value = CFRetain(FirstValue);
LABEL_37:
    v54 = CFDictionaryGetValue(cf, @"VideoCompositionProcessor_SerializableLookupableSpatialVideoConfigurations");
    v55 = CFGetAllocator(a1);
    MutableCopy = CFDictionaryCreateMutableCopy(v55, 0, a22);
    if (!MutableCopy)
    {
      remaker_AddVideoCompositionTrack_cold_6(v112);
      v52 = 0;
      v51 = LODWORD(v112[0]);
      goto LABEL_95;
    }

    v95 = v54;
    v96 = MutableCopy;
    valuePtr = 0;
    v57 = remakerFamily_getStorage(a1);
    v112[0] = 0;
    v111 = 0;
    if (!FigCFArrayGetFirstValue())
    {
      Extension = 0;
      v52 = v96;
      goto LABEL_51;
    }

    SInt32 = FigCFNumberGetSInt32();
    v59 = *(v57 + 72);
    v60 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (v60)
    {
      v60(v59, SInt32, v112);
      if (v112[0])
      {
        CMBaseObject = FigAssetTrackGetCMBaseObject(v112[0]);
        v62 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        v52 = v96;
        if (v62)
        {
          v62(CMBaseObject, @"FormatDescriptionArray", *MEMORY[0x1E695E480], &v111);
        }

        v64 = FigCFArrayGetFirstValue();
        if (v64)
        {
          Extension = CMFormatDescriptionGetExtension(v64, *MEMORY[0x1E6960090]);
        }

        else
        {
          Extension = 0;
        }

        if (v112[0])
        {
          CFRelease(v112[0]);
        }

        goto LABEL_49;
      }

      Extension = 0;
    }

    else
    {
      Extension = 0;
    }

    v52 = v96;
LABEL_49:
    if (v111)
    {
      CFRelease(v111);
    }

LABEL_51:
    allocator = *MEMORY[0x1E695E480];
    if (!FigVideoCompositionCopyOutputFormatExtensions(*MEMORY[0x1E695E480], Extension, v43, v95, 0, 0, 0, &valuePtr))
    {
      if (!valuePtr)
      {
LABEL_53:
        *v112 = v104;
        v65 = remakerFamily_setupCompressionMediaProcessorAndFileOutput(a1, a17, a18, a20, v112, v106, 0, *v108, 0, v41, v52);
        if (v65)
        {
          goto LABEL_117;
        }

        if (a19)
        {
          v66 = CFDictionaryGetValue(a19, *MEMORY[0x1E6983E30]);
          if (!v66 || CFEqual(v66, *MEMORY[0x1E69840F0]))
          {
            v67 = *(*v108 + 288);
            if (v67)
            {
              SampleBufferProcessor = FigMediaProcessorGetSampleBufferProcessor(v67);
              if (!SampleBufferProcessor)
              {
                remaker_AddVideoCompositionTrack_cold_5(v112);
                v51 = LODWORD(v112[0]);
                goto LABEL_95;
              }

              FigBaseObject = FigSampleBufferProcessorGetFigBaseObject(SampleBufferProcessor);
              v70 = *(*(CMBaseObjectGetVTable() + 8) + 56);
              if (v70)
              {
                v70(FigBaseObject, @"SampleBufferProcessor_InheritOutputCleanApertureFromInput", *MEMORY[0x1E695E4D0]);
              }
            }
          }
        }

        FigCFDictionaryGetInt32IfPresent();
        VTCompressionSession = FigMediaProcessorGetVTCompressionSession(*(*v108 + 288));
        v72 = *MEMORY[0x1E69838A8];
        v73 = CFGetAllocator(a1);
        v65 = VTSessionCopyProperty(VTCompressionSession, v72, v73, &propertyValueOut);
        if (v65)
        {
LABEL_117:
          v51 = v65;
          goto LABEL_95;
        }

        if (a23)
        {
          v74 = CFDictionaryGetValue(a23, @"Remaker_FieldMode");
        }

        else
        {
          v74 = 0;
        }

        v75 = v32[60];
        v32[60] = a4;
        if (a4)
        {
          CFRetain(a4);
        }

        if (v75)
        {
          CFRelease(v75);
        }

        v76 = v32[61];
        v32[61] = a5;
        if (a5)
        {
          CFRetain(a5);
        }

        if (v76)
        {
          CFRelease(v76);
        }

        *v112 = *a13;
        v112[2] = *(a13 + 16);
        v77 = remakerFamily_finishVideoCompositionChannel(a1, *v108, v103, v99, v100, v97, v98, a9, a10, a11, a12, v112, a14, a15, a16, v74, a19, cf, v41, propertyValueOut);
        if (v77)
        {
          v51 = v77;
          v52 = v96;
          goto LABEL_95;
        }

        v78 = *v108;
        v52 = v96;
        if (a25)
        {
          *a25 = *(*v108 + 300);
        }

        v79 = *(a13 + 8);
        v112[0] = 0;
        v111 = 0;
        v80 = remakerFamily_getStorage(a1);
        v81 = v80;
        if (!a14)
        {
          if (v79 <= 600)
          {
            v89 = 600;
          }

          else
          {
            v89 = v79;
          }

          LODWORD(valuePtr) = v89;
          v88 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
          v112[0] = v88;
          goto LABEL_87;
        }

        v82 = *(v80 + 72);
        v83 = *(*(CMBaseObjectGetVTable() + 16) + 40);
        if (v83)
        {
          v84 = v83(v82, a14, &v111);
          if (v84)
          {
            v51 = v84;
            goto LABEL_92;
          }

          v85 = FigAssetTrackGetCMBaseObject(v111);
          v86 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v86)
          {
            v87 = v86(v85, @"NaturalTimeScale", allocator, v112);
            v88 = v112[0];
            if (v87)
            {
              v51 = v87;
LABEL_90:
              if (v88)
              {
                CFRelease(v88);
              }

              goto LABEL_92;
            }

LABEL_87:
            v90 = *(v81 + 184);
            v91 = *(v78 + 300);
            v92 = *(*(CMBaseObjectGetVTable() + 16) + 24);
            if (v92)
            {
              v92(v90, v91, @"MediaTimeScale", v88);
            }

            remakerFamily_setFormatWriterMovieTimeScaleIfAppropriate(a1, v112[0], 1986618469);
            v51 = 0;
            v88 = v112[0];
            goto LABEL_90;
          }
        }

        v51 = 4294954514;
LABEL_92:
        if (v111)
        {
          CFRelease(v111);
        }

        *v108 = 0;
        goto LABEL_95;
      }

      remaker_AddVideoCompositionTrack_cold_4(valuePtr, &valuePtr, v52);
    }

    if (valuePtr)
    {
      CFRelease(valuePtr);
    }

    goto LABEL_53;
  }

  v53 = CFGetAllocator(a1);
  Basic = FigVisualContextCreateBasic(v53, 0, &value);
  if (!Basic)
  {
    CFArrayAppendValue(v41, value);
    goto LABEL_37;
  }

LABEL_108:
  v51 = Basic;
  v52 = 0;
LABEL_95:
  remakerFamily_discardChannel(a1, *v108);
  CFRelease(v41);
LABEL_96:
  if (value)
  {
    CFRelease(value);
  }

  if (v106)
  {
    CFRelease(v106);
  }

  if (propertyValueOut)
  {
    CFRelease(propertyValueOut);
  }

  if (v52)
  {
    CFRelease(v52);
  }

  return v51;
}

uint64_t remaker_CanPerformFastFrameRateConversion(const void *a1, int a2, __int128 *a3)
{
  remakerFamily_getStorage(a1);
  v6 = malloc_type_malloc(0x30uLL, 0x102004002AA219BuLL);
  if (a1)
  {
    v7 = CFRetain(a1);
  }

  else
  {
    v7 = 0;
  }

  v6[4] = v7;
  v8 = *a3;
  v6[2] = *(a3 + 2);
  *v6 = v8;
  *(v6 + 6) = a2;
  v9 = FigDispatchQueueCreateWithPriorityAndClientPID();
  v6[5] = v9;
  dispatch_async_f(v9, v6, remaker_CanPerformFastFrameRateConversionWork);
  return 0;
}

uint64_t remaker_CopyTrackProperty(uint64_t a1, int a2, const void *a3, uint64_t a4, void *a5)
{
  if (*remakerFamily_getStorage(a1) >= 7u)
  {
    remaker_CopyTrackProperty_cold_2(&v19);
    return v19;
  }

  else if (a5)
  {
    Storage = remakerFamily_getStorage(a1);
    Count = CFArrayGetCount(*(Storage + 80));
    if (Count < 1)
    {
LABEL_7:

      return FigSignalErrorAtGM();
    }

    else
    {
      v11 = Count;
      v12 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(Storage + 80), v12);
        if (ValueAtIndex[75] == a2)
        {
          break;
        }

        if (v11 == ++v12)
        {
          goto LABEL_7;
        }
      }

      v15 = ValueAtIndex;
      if (CFEqual(a3, @"RemakerTrack_FinalHDRMetadataGenerationState"))
      {
        v16 = *(v15 + 55);
        if (v16)
        {
          v17 = CFRetain(v16);
        }

        else
        {
          v17 = 0;
        }

        result = 0;
        *a5 = v17;
      }

      else
      {
        return 4294955189;
      }
    }
  }

  else
  {
    remaker_CopyTrackProperty_cold_1(&v18);
    return v18;
  }

  return result;
}

uint64_t remaker_createSanitizedDestinationASBDAndAudioOptions(unsigned int a1, __int128 *a2, int a3, double a4, uint64_t a5, uint64_t a6, __CFDictionary **a7)
{
  if (!a2)
  {
    remaker_createSanitizedDestinationASBDAndAudioOptions_cold_4(&outPropertyDataSize);
    return outPropertyDataSize;
  }

  if (!a6)
  {
    remaker_createSanitizedDestinationASBDAndAudioOptions_cold_3(&outPropertyDataSize);
    return outPropertyDataSize;
  }

  if (!a7)
  {
    remaker_createSanitizedDestinationASBDAndAudioOptions_cold_2(&outPropertyDataSize);
    return outPropertyDataSize;
  }

  MutableCopy = FigCFDictionaryCreateMutableCopy();
  if (!MutableCopy)
  {
    remaker_createSanitizedDestinationASBDAndAudioOptions_cold_1(&outPropertyDataSize);
    return outPropertyDataSize;
  }

  v14 = MutableCopy;
  v16 = *a2;
  v15 = a2[1];
  *(a6 + 32) = *(a2 + 4);
  *a6 = v16;
  *(a6 + 16) = v15;
  if (*a6 == 0.0)
  {
    *a6 = a4;
  }

  else if (*a6 > a4)
  {
    outPropertyDataSize = 0;
    if (!AudioFormatGetPropertyInfo(0x61657372u, 4u, (a6 + 8), &outPropertyDataSize))
    {
      v17 = malloc_type_malloc(outPropertyDataSize, 0x9BE5C175uLL);
      if (AudioFormatGetProperty(0x61657372u, 4u, (a6 + 8), &outPropertyDataSize, v17) || outPropertyDataSize < 0x10)
      {
        free(v17);
      }

      else
      {
        v24 = 0;
        v25 = outPropertyDataSize >> 4;
        v26 = v17 + 1;
        do
        {
          if (*(v26 - 1) <= a4 && *v26 >= a4)
          {
            *a6 = a4;
            v24 = 1;
          }

          v26 += 2;
          --v25;
        }

        while (v25);
        free(v17);
        if (v24)
        {
          CFDictionarySetValue(v14, @"FigAudioCompressionOption__AudioConverterEncoderCanAdjustBitRate", *MEMORY[0x1E695E4D0]);
        }
      }
    }
  }

  v18 = *(a6 + 28);
  if (v18)
  {
    v19 = *(a6 + 28);
  }

  else
  {
    v19 = a1;
  }

  if (a3)
  {
    v20 = 0;
  }

  else
  {
    v20 = v19 > a1;
  }

  v21 = v20;
  if (!v18 || v21)
  {
    if (v21)
    {
      v19 = a1;
    }

    *(a6 + 28) = v19;
  }

  FigCFDictionaryGetInt32IfPresent();
  v22 = 0;
  *a7 = v14;
  return v22;
}

uint64_t remaker_transferTrackSettingsForPassthrough(uint64_t a1, int a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v7 = 0;
  v34[32] = *MEMORY[0x1E69E9840];
  valuePtr = 0;
  v32 = 0;
  v30 = 0;
  v34[0] = @"IsEnabled";
  v34[1] = @"EnableTrack";
  v34[2] = @"AlternateGroupID";
  v34[3] = @"AlternateGroupID";
  v34[4] = @"LanguageCode";
  v34[5] = @"LanguageTag";
  v34[6] = @"ExtendedLanguageTag";
  v34[7] = @"ExtendedLanguageTag";
  v34[8] = @"Layer";
  v34[9] = @"Layer";
  v34[10] = @"Volume";
  v34[11] = @"TrackVolume";
  v34[12] = @"PreferredTransform";
  v34[13] = @"TrackMatrix";
  v34[14] = @"TrackDimensions";
  v34[15] = @"TrackDimensions";
  v34[16] = @"CleanApertureDimensions";
  v34[17] = @"CleanApertureDimensions";
  v34[18] = @"ProductionApertureDimensions";
  v34[19] = @"ProductionApertureDimensions";
  v34[20] = @"EncodedPixelsDimensions";
  v34[21] = @"EncodedPixelsDimensions";
  v34[22] = @"NaturalTimeScale";
  v34[23] = @"MediaTimeScale";
  v34[24] = @"LoadSettings";
  v34[25] = @"QTLoadSettings";
  v34[26] = @"SampleGroupDescriptions";
  v34[27] = @"SampleGroupDescriptions";
  v34[28] = @"HEVCTemporalLevelInfoCombinations";
  v34[29] = @"HEVCTemporalLevelInfoCombinations";
  v34[30] = @"HEVCSyncSampleNALUnitTypes";
  v34[31] = @"HEVCSyncSampleNALUnitTypes";
  v8 = *MEMORY[0x1E695E480];
  do
  {
    v10 = v34[v7];
    v9 = v34[v7 + 1];
    cf = 0;
    CMBaseObject = FigAssetTrackGetCMBaseObject(a3);
    v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v12)
    {
      v12(CMBaseObject, v10, v8, &cf);
      v13 = cf;
      if (cf)
      {
        v14 = *(*(CMBaseObjectGetVTable() + 16) + 24);
        if (v14)
        {
          v15 = v14(a4, a5, v9, v13);
          CFRelease(cf);
          v17 = v15 == -12784 || v15 == -12630 || v15 == -12782;
          if (!v17 && v15)
          {
            goto LABEL_27;
          }
        }

        else
        {
          CFRelease(cf);
        }
      }
    }

    v7 += 2;
  }

  while (v7 != 32);
  v18 = FigAssetTrackGetCMBaseObject(a3);
  v19 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v19)
  {
    v19(v18, @"NaturalTimeScale", v8, &v30);
    if (v30)
    {
      remakerFamily_setFormatWriterMovieTimeScaleIfAppropriate(a1, v30, a2);
      CFRelease(v30);
    }
  }

  v20 = FigAssetTrackGetCMBaseObject(a3);
  v21 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v21)
  {
    v21(v20, @"LoadSettings", v8, &v32);
  }

  if (!v32)
  {
    return 0;
  }

  if (!FigCFDictionaryGetInt32IfPresent() || (valuePtr & 0x300000000) == 0)
  {
    v15 = 0;
LABEL_27:
    v22 = 0;
    goto LABEL_36;
  }

  LODWORD(valuePtr) = 1;
  v22 = CFNumberCreate(v8, kCFNumberIntType, &valuePtr);
  v23 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (v23)
  {
    v24 = v23(a4, a5, @"MediaDataPrecedence", v22);
  }

  else
  {
    v24 = -12782;
  }

  if ((v24 & 0xFFFFFFFD) == 0xFFFFCE10 || v24 == -12630)
  {
    v15 = 0;
  }

  else
  {
    v15 = v24;
  }

LABEL_36:
  if (v32)
  {
    CFRelease(v32);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  return v15;
}

Float64 OUTLINED_FUNCTION_6_65(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, CMTime *time, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, __int128 timea, uint64_t time_16)
{
  time_16 = *(a1 + 344);
  timea = *(a1 + 328);

  return CMTimeGetSeconds(&timea);
}

CFIndex OUTLINED_FUNCTION_13_30(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int128 a21, __int128 a22, uint64_t a23)
{

  return CFArrayGetCount(v23);
}

void OUTLINED_FUNCTION_14_33(const void *a1@<X1>, const void **a2@<X8>)
{
  if (!v2)
  {
    a2 = v3;
  }

  v6 = *a2;

  CFDictionarySetValue(v4, a1, v6);
}

uint64_t FigBufferedAirPlayOverlapLinearTimeMapperGetClassID()
{
  if (FigBufferedAirPlayOverlapLinearTimeMapperGetClassID_sRegisterFigBufferedAirPlayOverlapLinearTimeMapperBaseTypeOnce != -1)
  {
    FigBufferedAirPlayOverlapLinearTimeMapperGetClassID_cold_1();
  }

  return FigBufferedAirPlayOverlapLinearTimeMapperGetClassID_sFigBufferedAirPlayOverlapLinearTimeMapperClassID;
}

uint64_t __FigBufferedAirPlayOverlapLinearTimeMapperGetClassID_block_invoke()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigBufferedAirPlayOverlapLinearTimeMapperGetTypeID()
{
  if (FigBufferedAirPlayOverlapLinearTimeMapperGetClassID_sRegisterFigBufferedAirPlayOverlapLinearTimeMapperBaseTypeOnce != -1)
  {
    FigBufferedAirPlayOverlapLinearTimeMapperGetClassID_cold_1();
  }

  return CMBaseClassGetCFTypeID();
}

uint64_t FigBufferedAirPlayOverlapLinearTimeMapperCreate(uint64_t a1, const void *a2, const void *a3, void *a4)
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (FigBufferedAirPlayOverlapLinearTimeMapperGetClassID_sRegisterFigBufferedAirPlayOverlapLinearTimeMapperBaseTypeOnce != -1)
  {
    FigBufferedAirPlayOverlapLinearTimeMapperGetClassID_cold_1();
  }

  v7 = CMDerivedObjectCreate();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v9 = CFRetain(a2);
  }

  else
  {
    v9 = 0;
  }

  *(DerivedStorage + 40) = v9;
  if (a3)
  {
    v10 = CFRetain(a3);
  }

  else
  {
    v10 = 0;
  }

  *(DerivedStorage + 48) = v10;
  *(DerivedStorage + 56) = 0;
  v11 = MEMORY[0x1E6960CC0];
  *(DerivedStorage + 60) = *MEMORY[0x1E6960CC0];
  *(DerivedStorage + 76) = *(v11 + 16);
  *(DerivedStorage + 24) = FigSimpleMutexCreate();
  *a4 = 0;
  return v7;
}

__CFString *fbapOverlapMapper_copyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigBufferedAirPlayOverlapLinearTimeMappert %p>", a1);
  return Mutable;
}

uint64_t fbapOverlapMapper_update(uint64_t a1, int a2)
{
  CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    fbapOverlapMapper_debugPrintWithFlushInfo(a1);
  }

  return 0;
}

void fbapOverlapMapper_debugPrintType()
{
  v0[0] = 0;
  v0[1] = v0;
  v0[2] = 0x2000000000;
  v1 = 0;
  CMBaseObjectGetDerivedStorage();
  FigCFDictionaryApplyBlock();
  _Block_object_dispose(v0, 8);
}

uint64_t FigBufferedAirPlaySubPipeManagerCopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CMBaseObject = FigBufferedAirPlaySubPipeManagerGetCMBaseObject(a1);
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(CMBaseObject, a2, a3, a4);
}

__int128 *fbapOverlapMapper_debugPrintTimeIntervalGraph(uint64_t a1, CMTime *a2, CMTime *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, unsigned int a9)
{
  time = *a2;
  Seconds = CMTimeGetSeconds(&time);
  time = *a3;
  v18 = CMTimeGetSeconds(&time) - Seconds;
  fbapOverlapMapper_debugPrintTimeIntervalGraph_sGraph = 0u;
  unk_1EAF19800 = 0u;
  xmmword_1EAF19810 = 0u;
  unk_1EAF19820 = 0u;
  unk_1EAF1982F = 0;
  if (v18 <= 0.0)
  {
    return "must: firstPTS < lastPTS; both valid.";
  }

  v40 = a8;
  v19 = a9;
  v20 = v18 / a9;
  v21 = vcvtpd_s64_f64(v20);
  if (v21 >= 70)
  {
    v22 = 70;
  }

  else
  {
    v22 = v21;
  }

  if (v21 >= 1)
  {
    memset(&fbapOverlapMapper_debugPrintTimeIntervalGraph_sGraph, 45, v22);
  }

  if ((*(a4 + 12) & 1) != 0 && (a2->flags & 0x1D) == 1 && (a3->flags & 0x1D) == 1)
  {
    time = *a4;
    v23 = CMTimeGetSeconds(&time);
    v24 = v20;
    if (*(a5 + 12))
    {
      time = *a4;
      time2 = *a5;
      v25 = CMTimeCompare(&time, &time2);
      v24 = v20;
      if (v25 < 0)
      {
        time = *a5;
        v24 = (CMTimeGetSeconds(&time) - Seconds) / v19;
      }
    }

    v26 = vcvtmd_s64_f64((v23 - Seconds) / v19);
    v27 = vcvtmd_s64_f64(v24);
    v28 = v26 & ~(v26 >> 31);
    if (v22 <= v27)
    {
      v27 = v22 - 1;
    }

    if (v27 >= v28 && v27 <= 70)
    {
      memset(&fbapOverlapMapper_debugPrintTimeIntervalGraph_sGraph + v28, 61, (v27 - v28) + 1);
    }
  }

  if ((*(a6 + 12) & 1) == 0 || (*(a7 + 12) & 1) == 0)
  {
    goto LABEL_27;
  }

  time = *a6;
  v29 = CMTimeGetSeconds(&time);
  time = *a6;
  time2 = *a7;
  if (CMTimeCompare(&time, &time2) < 0)
  {
    time = *a7;
    v20 = (CMTimeGetSeconds(&time) - Seconds) / v19;
  }

  v30 = vcvtmd_s64_f64((v29 - Seconds) / v19);
  v31 = vcvtmd_s64_f64(v20);
  v32 = v30 & ~(v30 >> 31);
  v33 = v31 >= 69 ? 69 : v31;
  v34 = __OFSUB__(v33, v32);
  v35 = v33 - v32;
  if (v35 < 0 == v34)
  {
    memset(&fbapOverlapMapper_debugPrintTimeIntervalGraph_sGraph + v32, 120, v35 + 1);
    v39 = 1;
  }

  else
  {
LABEL_27:
    v39 = 0;
  }

  if (*(a1 + 12))
  {
    time = *a1;
    v36 = vcvtmd_s64_f64((CMTimeGetSeconds(&time) - Seconds) / v19);
    if ((v36 & 0x80000000) == 0 && v22 > v36)
    {
      *(&fbapOverlapMapper_debugPrintTimeIntervalGraph_sGraph + v36) = 124;
    }
  }

  result = &fbapOverlapMapper_debugPrintTimeIntervalGraph_sGraph;
  if ((v39 & 1) == 0)
  {
    v38 = v22 - 1;
    if (v21 <= 0)
    {
      v38 = 0;
    }

    *(&fbapOverlapMapper_debugPrintTimeIntervalGraph_sGraph + v38) = v40;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_104()
{
  v3 = v1[1];
  v2[6] = *v1;
  v2[7] = v3;
  v2[8] = v1[2];
  return v0;
}

__n128 OUTLINED_FUNCTION_6_66@<Q0>(uint64_t a1@<X8>)
{
  result = *(a1 + 24);
  v1[6] = result;
  return result;
}

CFTypeRef FigURLStorageSessionCopyGlobalSession()
{
  ClassID = FigHTTPRequestGetClassID();
  if (ClassID != FigHTTPRequestNSURLSessionGetClassID())
  {
    return 0;
  }

  return _FigURLStorageSessionNSCopyGlobalSession();
}

uint64_t FigURLStorageSessionCreate(const __CFDictionary *a1, uint64_t *a2)
{
  ClassID = FigHTTPRequestGetClassID();
  if (ClassID != FigHTTPRequestNSURLSessionGetClassID())
  {
    return 4294954514;
  }

  return _FigURLStorageSessionNSCreate(a1, a2);
}

__CFString *otfw_copyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigSampleBufferConsumerForFormatWriter %p>", a1);
  return Mutable;
}

uint64_t otfw_postNotification()
{
  if (!*(CMBaseObjectGetDerivedStorage() + 16))
  {
    return 0;
  }

  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

uint64_t otfw_LowWater()
{
  result = CMBaseObjectGetDerivedStorage();
  v1 = *(result + 88);
  if (v1)
  {
    v2 = *(result + 96);

    return v1(v2);
  }

  return result;
}

void sub_19665EF14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getPATCCAccessClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__8;
  v0 = getPATCCAccessClass_softClass;
  v7 = __Block_byref_object_dispose__8;
  v8 = getPATCCAccessClass_softClass;
  if (!getPATCCAccessClass_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getPATCCAccessClass_block_invoke;
    v2[3] = &unk_1E7486A28;
    v2[4] = &v3;
    __getPATCCAccessClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_19665F004(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPAAccessLoggerClass_block_invoke(uint64_t a1)
{
  PrivacyAccountingLibrary();
  result = objc_getClass("PAAccessLogger");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getPAAccessLoggerClass_block_invoke_cold_1();
  }

  getPAAccessLoggerClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

void PrivacyAccountingLibrary()
{
  v0 = 0;
  if (!PrivacyAccountingLibraryCore())
  {
    PrivacyAccountingLibrary_cold_1(&v0);
  }
}

uint64_t PrivacyAccountingLibraryCore()
{
  if (!PrivacyAccountingLibraryCore_frameworkLibrary)
  {
    PrivacyAccountingLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  return PrivacyAccountingLibraryCore_frameworkLibrary;
}

uint64_t __PrivacyAccountingLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  PrivacyAccountingLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getPATCCAccessClass_block_invoke(uint64_t a1)
{
  PrivacyAccountingLibrary();
  result = objc_getClass("PATCCAccess");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getPATCCAccessClass_block_invoke_cold_1();
  }

  getPATCCAccessClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

Class __getPAApplicationClass_block_invoke(uint64_t a1)
{
  PrivacyAccountingLibrary();
  result = objc_getClass("PAApplication");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getPAApplicationClass_block_invoke_cold_1();
  }

  getPAApplicationClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t figVTTCaptionWriter_RegisterFigVTTCaptionWriterBaseType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigVTTCaptionWriterGetTypeID()
{
  MEMORY[0x19A8D3660](&FigVTTCaptionWriterGetClassID_sRegisterFigVTTCaptionWriterBaseTypeOnce, figVTTCaptionWriter_RegisterFigVTTCaptionWriterBaseType);

  return CMBaseClassGetCFTypeID();
}

uint64_t FigVTTCaptionWriterAddCaption(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v6)
  {
    return 4294954514;
  }

  v7 = a3[1];
  v9[0] = *a3;
  v9[1] = v7;
  v9[2] = a3[2];
  return v6(a1, a2, v9);
}

uint64_t FigVTTCaptionWriterFinish(uint64_t a1)
{
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v2)
  {
    return 4294954514;
  }

  return v2(a1);
}

uint64_t FigVTTCaptionWriterInvalidate(uint64_t a1)
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

void facPickBestDestinationNumberOfChannels(uint64_t a1, _DWORD *inSpecifier)
{
  v3 = *(a1 + 28);
  outPropertyDataSize = 0;
  if (!AudioFormatGetPropertyInfo(0x61766E63u, 0x28u, inSpecifier, &outPropertyDataSize))
  {
    v4 = malloc_type_malloc(outPropertyDataSize, 0xD5498F66uLL);
    if (AudioFormatGetProperty(0x61766E63u, 0x28u, inSpecifier, &outPropertyDataSize, v4) || outPropertyDataSize <= 3)
    {
      free(v4);
    }

    else
    {
      v5 = 0;
      v6 = 0;
      while (1)
      {
        v7 = *&v4[v5];
        if (v7 == -1 || v7 == v3)
        {
          break;
        }

        v5 += 4;
        if (v7 <= v6)
        {
          v9 = v6;
        }

        else
        {
          v9 = v7;
        }

        if (v7 < v3)
        {
          v6 = v9;
        }

        if ((outPropertyDataSize & 0xFFFFFFFC) == v5)
        {
          goto LABEL_19;
        }
      }

      v6 = v3;
LABEL_19:
      free(v4);
      if (v6)
      {
        inSpecifier[7] = v6;
      }
    }
  }
}

uint64_t findCodecs(int a1, _DWORD *a2, _DWORD *a3)
{
  outPropertyDataSize = 0;
  inSpecifier = a1;
  *a2 = 0;
  *a3 = 0;
  PropertyInfo = AudioFormatGetPropertyInfo(0x6176656Eu, 4u, &inSpecifier, &outPropertyDataSize);
  if (!PropertyInfo)
  {
    v6 = outPropertyDataSize;
    if (outPropertyDataSize)
    {
      v7 = outPropertyDataSize / 0xC;
      v8 = malloc_type_malloc(12 * (outPropertyDataSize / 0xCuLL), 0x10000403E1C8BA9uLL);
      if (!v8)
      {
        return 4294954510;
      }

      v9 = v8;
      Property = AudioFormatGetProperty(0x6176656Eu, 4u, &inSpecifier, &outPropertyDataSize, v8);
      if (Property)
      {
        PropertyInfo = Property;
        free(v9);
        return PropertyInfo;
      }

      if (v6 >= 0xC)
      {
        v11 = inSpecifier;
        v12 = v7 + 1;
        v13 = v9 + 2;
        do
        {
          if (*(v13 - 1) == v11)
          {
            if (*v13 == 1634756727)
            {
              if (!*a2)
              {
                *a2 = 1634756727;
              }
            }

            else if (!*a3)
            {
              *a3 = *v13;
            }
          }

          v13 += 3;
          --v12;
        }

        while (v12 > 1);
      }

      free(v9);
    }

    return 0;
  }

  return PropertyInfo;
}

uint64_t facCopyMixMapForInputs(int a1, _DWORD *a2, unsigned int a3, unsigned int a4, void *a5, char **a6, _DWORD *a7)
{
  v49 = *MEMORY[0x1E69E9840];
  if (!a6 || !a7)
  {
    facCopyMixMapForInputs_cold_1(&v42);
    return v42;
  }

  if (a2)
  {
    v14 = a2;
    goto LABEL_12;
  }

  if ((a1 - 1) > 1)
  {
    v14 = 0;
    goto LABEL_12;
  }

  a3 = 20 * a1 + 12;
  v15 = malloc_type_calloc(1uLL, a3, 0x1000040E0EAB150uLL);
  if (v15)
  {
    v14 = v15;
    if (a1 == 1)
    {
      v16 = 6553601;
    }

    else
    {
      v16 = 6619138;
    }

    *v15 = v16;
LABEL_12:
    v17 = a5;
    if (!a5)
    {
      if (a4 - 1 > 1)
      {
        v17 = 0;
      }

      else
      {
        v18 = malloc_type_calloc(1uLL, 20 * a4 + 12, 0x1000040E0EAB150uLL);
        v17 = v18;
        if (!v18)
        {
          fig_log_get_emitter();
          v28 = FigSignalErrorAtGM();
          v21 = 0;
          if (v14)
          {
LABEL_46:
            if (v14 != a2)
            {
              free(v14);
            }
          }

LABEL_48:
          if (v17 && v17 != a5)
          {
            free(v17);
          }

          if (v21)
          {
            free(v21);
          }

          return v28;
        }

        if (a4 == 1)
        {
          v19 = 6553601;
        }

        else
        {
          v19 = 6619138;
        }

        *v18 = v19;
      }
    }

    v41 = a4 * a1;
    v20 = malloc_type_calloc(a4 * a1, 4uLL, 0x100004052888210uLL);
    v21 = v20;
    if (!v14 || !v17)
    {
      if (a1)
      {
        v24 = 0;
        v25 = v20;
        do
        {
          if (a4)
          {
            v26 = 0;
            do
            {
              if (v26)
              {
                v27 = 0.0;
              }

              else
              {
                v27 = 1.0;
              }

              *v25++ = v27;
              ++v26;
            }

            while (a4 != v26);
          }

          ++v24;
        }

        while (v24 != a1);
      }

      v23 = 0;
      goto LABEL_36;
    }

    *outPropertyDataSize = 0;
    inSpecifier = 0;
    v48 = 0;
    v43 = 0x100000000;
    v44 = 0uLL;
    v45 = 0;
    v42 = 0;
    if (*v14 == 0x10000)
    {
      v29 = v14 + 1;
      v30 = 1668116578;
    }

    else
    {
      if (!*v14)
      {
        v22 = v14[2];
        v23 = v14;
        if (20 * v22 + 12 > a3)
        {
          v23 = v14;
          goto LABEL_42;
        }

        goto LABEL_69;
      }

      v30 = 1668116588;
      v29 = v14;
    }

    if (AudioFormatGetPropertyInfo(v30, 4u, v29, &outPropertyDataSize[1]))
    {
      goto LABEL_41;
    }

    if (outPropertyDataSize[1])
    {
      v23 = malloc_type_calloc(1uLL, outPropertyDataSize[1], 0x1000040E0EAB150uLL);
      if (v23)
      {
        if (*v14 == 0x10000)
        {
          v32 = v14 + 1;
          v33 = 1668116578;
        }

        else
        {
          v33 = 1668116588;
          v32 = v14;
        }

        if (!AudioFormatGetProperty(v33, 4u, v32, &outPropertyDataSize[1], v23))
        {
          v22 = v23[2];
LABEL_69:
          outPropertyData = v21;
          v48 = v17;
          if (v22)
          {
            v34 = 0;
            v35 = 1;
            v36 = outPropertyData;
            while (1)
            {
              if (v35)
              {
                v37 = &v23[5 * v34 + 3];
                v38 = *v37;
                v45 = *(v37 + 16);
                v44 = v38;
              }

              inSpecifier = &v42;
              outPropertyDataSize[0] = 4 * a4;
              if (!AudioFormatGetProperty(0x6D6D6170u, 0x10u, &inSpecifier, outPropertyDataSize, v36) || !v44)
              {
                goto LABEL_82;
              }

              if (v44 != -1)
              {
                break;
              }

              v35 = 0;
              LODWORD(v44) = 3;
LABEL_83:
              if (v34 >= v23[2])
              {
                goto LABEL_84;
              }
            }

            if ((v44 & 0xFFFF0000) == 0x10000)
            {
              v39 = v44;
              if (v44 >= a4)
              {
                goto LABEL_82;
              }
            }

            else
            {
              v39 = v34;
              if (v34 >= a4)
              {
LABEL_82:
                v36 += 4 * a4;
                ++v34;
                v35 = 1;
                goto LABEL_83;
              }
            }

            *&v36[4 * v39] = 1065353216;
            goto LABEL_82;
          }

LABEL_84:
          v21 = outPropertyData;
LABEL_36:
          v28 = 0;
          *a6 = v21;
          *a7 = 4 * v41;
          v21 = 0;
          if (!v23)
          {
            goto LABEL_45;
          }

          goto LABEL_43;
        }

        free(v23);
LABEL_41:
        v23 = 0;
      }
    }

    else
    {
      v23 = 0;
    }

LABEL_42:
    fig_log_get_emitter();
    v28 = FigSignalErrorAtGM();
    if (!v23)
    {
      goto LABEL_45;
    }

LABEL_43:
    if (v23 != v14)
    {
      free(v23);
    }

LABEL_45:
    if (v14)
    {
      goto LABEL_46;
    }

    goto LABEL_48;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t FigSampleBufferProcessorAcquireHardware()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();

  return acquireHardware(DerivedStorage);
}

uint64_t acquireHardware(uint64_t a1)
{
  if (!*(a1 + 72) || *(a1 + 80))
  {
    return 0;
  }

  if (!AudioConverterAcquireHardwareCodec())
  {
    *(a1 + 80) = 1;
    return 0;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t FigSampleBufferProcessorRelinquishHardware()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 80))
  {
    return 0;
  }

  v1 = DerivedStorage;
  result = AudioConverterReleaseHardwareCodec();
  *(v1 + 80) = 0;
  return result;
}

__CFString *facCopyDebugDesc()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = CFGetAllocator(DerivedStorage);
  Mutable = CFStringCreateMutable(v1, 0);
  v3 = CFGetRetainCount(DerivedStorage);
  if (DerivedStorage[16])
  {
    v4 = " (invalidated)";
  }

  else
  {
    v4 = "";
  }

  v5 = CFGetAllocator(DerivedStorage);
  CFStringAppendFormat(Mutable, 0, @"<FigSampleBufferProcessor_AudioCompression %p> retainCount: %d%s allocator: %p\n", DerivedStorage, v3, v4, v5);
  return Mutable;
}

uint64_t facCopyProperty(uint64_t a1, const void *a2, uint64_t a3, double **a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 16))
  {
    v8 = DerivedStorage;
    if (!CFEqual(a2, @"SampleBufferProcessor_iTunesGaplessInfo"))
    {
      if (CFEqual(a2, @"SampleBufferProcessor_OutputBitRate"))
      {
        LODWORD(outPropertyData) = 0;
        StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(*(v8 + 32));
        if (StreamBasicDescription && StreamBasicDescription->mSampleRate != 0.0 && (mFramesPerPacket = StreamBasicDescription->mFramesPerPacket) != 0 && (mBytesPerPacket = StreamBasicDescription->mBytesPerPacket) != 0)
        {
          LODWORD(outPropertyData) = vcvtd_n_u64_f64(StreamBasicDescription->mSampleRate / mFramesPerPacket * mBytesPerPacket, 3uLL);
        }

        else
        {
          v16 = *(v8 + 64);
          if (v16)
          {
            ioPropertyDataSize[0] = 4;
            Property = AudioConverterGetProperty(v16, 0x62726174u, ioPropertyDataSize, &outPropertyData);
          }

          else
          {
            fig_log_get_emitter();
            Property = FigSignalErrorAtGM();
          }

          v18 = Property;
          if (Property)
          {
            return v18;
          }
        }

        RichestDecodableFormat = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &outPropertyData);
      }

      else
      {
        if (!CFEqual(a2, @"SampleBufferProcessor_OutputFormatDescription"))
        {
          if (CFEqual(a2, @"SampleBufferProcessor_HardwareResourceName"))
          {
            v19 = *(v8 + 72);
            *a4 = v19;
            if (v19)
            {
              CFRetain(v19);
            }

            return 0;
          }

          else if (CFEqual(a2, @"SampleBufferProcessorProperty_ImprovedOutputFormatDescription"))
          {
            outSize = 0;
            if (AudioConverterGetPropertyInfo(*(v8 + 64), 0x636D6763u, &outSize, 0) || !outSize)
            {
              fig_log_get_emitter();
              return FigSignalErrorAtGM();
            }

            else
            {
              v20 = malloc_type_malloc(outSize, 0x48FA5FC8uLL);
              if (AudioConverterGetProperty(*(v8 + 64), 0x636D6763u, &outSize, v20) || !outSize)
              {
                fig_log_get_emitter();
                v18 = FigSignalErrorAtGM();
              }

              else
              {
                outPropertyData = 0;
                ChannelLayout = CMAudioFormatDescriptionGetChannelLayout(*(v8 + 32), &outPropertyData);
                v22 = CMAudioFormatDescriptionGetStreamBasicDescription(*(v8 + 32));
                Extensions = CMFormatDescriptionGetExtensions(*(v8 + 32));
                if (v22)
                {
                  v24 = Extensions;
                  *ioPropertyDataSize = 0;
                  v25 = CFGetAllocator(*(v8 + 32));
                  v18 = CMAudioFormatDescriptionCreate(v25, v22, outPropertyData, ChannelLayout, outSize, v20, v24, ioPropertyDataSize);
                  if (!v18)
                  {
                    *a4 = *ioPropertyDataSize;
                  }
                }

                else
                {
                  v18 = 0;
                }
              }

              if (v20)
              {
                free(v20);
              }
            }
          }

          else
          {
            return 4294954512;
          }

          return v18;
        }

        RichestDecodableFormat = *(v8 + 32);
        if (RichestDecodableFormat)
        {
          RichestDecodableFormat = CFRetain(RichestDecodableFormat);
        }
      }

LABEL_34:
      v18 = 0;
      *a4 = RichestDecodableFormat;
      return v18;
    }

    if (*(v8 + 208))
    {
      v9 = *(v8 + 200);
      RichestDecodableFormat = CMAudioFormatDescriptionGetRichestDecodableFormat(*(v8 + 32));
      if (!RichestDecodableFormat)
      {
        goto LABEL_34;
      }

      v11 = RichestDecodableFormat;
      RichestDecodableFormat = CMAudioFormatDescriptionGetMostCompatibleFormat(*(v8 + 32));
      if (!RichestDecodableFormat)
      {
        goto LABEL_34;
      }

      if (*(v11 + 2) != 1819304813)
      {
        outPropertyData = 0;
        if (*v11 == *RichestDecodableFormat)
        {
          v12 = 1;
        }

        else
        {
          v12 = (*v11 / *RichestDecodableFormat + 0.5);
          if (!v12)
          {
            goto LABEL_33;
          }
        }

        ioPropertyDataSize[0] = 8;
        if (!AudioConverterGetProperty(*(v8 + 64), 0x7072696Du, ioPropertyDataSize, &outPropertyData))
        {
          RichestDecodableFormat = FigGaplessInfoCreateEnhanced_NoCorrection(*(v8 + 32), outPropertyData, SHIDWORD(outPropertyData), v9 / v12);
          goto LABEL_34;
        }
      }
    }

LABEL_33:
    RichestDecodableFormat = 0;
    goto LABEL_34;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

unsigned __int16 *StereoMonoDownMix16SwappedEndian(unsigned __int16 *result, __int16 *a2, int a3)
{
  for (; a3; --a3)
  {
    v3 = ((2896 * (bswap32(result[1]) >> 16)) >> 12) + ((2896 * (bswap32(*result) >> 16)) >> 12);
    if (v3 >= 0x7FFF)
    {
      v4 = 0x7FFF;
    }

    else
    {
      v4 = v3;
    }

    if (v3 <= -32768)
    {
      v5 = 0x8000;
    }

    else
    {
      v5 = v3;
    }

    if (v3 <= 0)
    {
      v6 = v5;
    }

    else
    {
      v6 = v4;
    }

    *a2++ = v6;
    result += 2;
  }

  return result;
}

unsigned int *StereoMonoDownMix32SwappedEndian(unsigned int *result, unsigned int *a2, int a3)
{
  for (; a3; --a3)
  {
    v3 = *result;
    v4 = result[1];
    result += 2;
    v5 = ((11863283 * bswap32(v4)) >> 24) + ((11863283 * bswap32(v3)) >> 24);
    if (v5 >= 0x7FFFFFFF)
    {
      v6 = 0x7FFFFFFF;
    }

    else
    {
      v6 = v5;
    }

    if (v5 <= 0xFFFFFFFF80000000)
    {
      v7 = 0x80000000;
    }

    else
    {
      v7 = v5;
    }

    if (v5 <= 0)
    {
      v8 = v7;
    }

    else
    {
      v8 = v6;
    }

    *a2++ = v8;
  }

  return result;
}

uint64_t FigSampleBufferProcessorCreateWithAudioDecompression(const void *a1, uint64_t a2, size_t a3, const AudioChannelLayout *a4, uint64_t a5, void *a6)
{
  if (a6 && a2 && *(a2 + 8) == 1819304813)
  {
    FigSampleBufferProcessorGetClassID();
    result = CMDerivedObjectCreate();
    if (!result)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v13 = *(a2 + 32);
      v14 = *(a2 + 16);
      *(DerivedStorage + 40) = *a2;
      *(DerivedStorage + 56) = v14;
      *(DerivedStorage + 72) = v13;
      if (CMAudioFormatDescriptionCreate(a1, a2, a3, a4, 0, 0, 0, (DerivedStorage + 32)))
      {
        CFRelease(0);
        fig_log_get_emitter();
        return FigSignalErrorAtGM();
      }

      else
      {
        if (a1)
        {
          *(DerivedStorage + 288) = a1;
          CFRetain(a1);
        }

        result = 0;
        *a6 = 0;
      }
    }
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  return result;
}

uint64_t fadInvalidate()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigAudioDecompressorInvalidate(DerivedStorage);
  return 0;
}

void fadFinalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();

  FigAudioDecompressorInvalidate(DerivedStorage);
}

__CFString *fadCopyDebugDesc()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = CFGetAllocator(DerivedStorage);
  Mutable = CFStringCreateMutable(v1, 0);
  v3 = CFGetRetainCount(DerivedStorage);
  if (DerivedStorage[16])
  {
    v4 = " (invalidated)";
  }

  else
  {
    v4 = "";
  }

  v5 = CFGetAllocator(DerivedStorage);
  CFStringAppendFormat(Mutable, 0, @"<FigSampleBufferProcessor_AudioDecompression %p> retainCount: %d%s allocator: %p\n", DerivedStorage, v3, v4, v5);
  return Mutable;
}

void FigAudioDecompressorInvalidate(uint64_t a1)
{
  if (a1 && !*(a1 + 16))
  {
    if (*(a1 + 136))
    {
      if (*(a1 + 152))
      {
        AudioConverterReleaseHardwareCodec();
        *(a1 + 152) = 0;
      }

      v2 = *(a1 + 144);
      if (v2)
      {
        CFRelease(v2);
        *(a1 + 144) = 0;
      }

      AudioConverterDispose(*(a1 + 136));
      *(a1 + 136) = 0;
    }

    v3 = *(a1 + 104);
    if (v3)
    {
      free(v3);
      *(a1 + 104) = 0;
      *(a1 + 112) = 0;
    }

    v4 = *(a1 + 80);
    if (v4)
    {
      deallocateAndZeroBufferListDataPointers(v4, *(a1 + 296));
      free(*(a1 + 80));
      *(a1 + 80) = 0;
    }

    v5 = *(a1 + 232);
    if (v5)
    {
      free(v5);
      *(a1 + 232) = 0;
      *(a1 + 240) = 0;
    }

    *(a1 + 120) = 0;
    *(a1 + 128) = 0;
    v6 = *(a1 + 24);
    if (v6)
    {
      CFRelease(v6);
      *(a1 + 24) = 0;
    }

    v7 = *(a1 + 32);
    if (v7)
    {
      CFRelease(v7);
      *(a1 + 32) = 0;
    }

    v8 = *(a1 + 304);
    if (v8)
    {
      CFRelease(v8);
      *(a1 + 304) = 0;
    }

    v9 = *(a1 + 312);
    if (v9)
    {
      CFRelease(v9);
      *(a1 + 312) = 0;
    }

    v10 = *(a1 + 296);
    if (v10)
    {
      CFRelease(v10);
      *(a1 + 296) = 0;
    }

    v11 = *(a1 + 264);
    if (v11)
    {
      Count = CFArrayGetCount(v11);
      if (Count >= 1)
      {
        v13 = Count;
        for (i = 0; i != v13; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 264), i);
          free(ValueAtIndex);
        }
      }

      CFArrayRemoveAllValues(*(a1 + 264));
      CFRelease(*(a1 + 264));
      *(a1 + 264) = 0;
    }

    v16 = *(a1 + 224);
    if (v16)
    {
      CFRelease(v16);
      *(a1 + 224) = 0;
    }

    v17 = *(a1 + 160);
    if (v17)
    {
      CFRelease(v17);
      *(a1 + 160) = 0;
    }

    v18 = *(a1 + 168);
    if (v18)
    {
      CFRelease(v18);
      *(a1 + 168) = 0;
    }

    *(a1 + 16) = 1;
  }
}

void deallocateAndZeroBufferListDataPointers(unsigned int *a1, CFAllocatorRef allocator)
{
  if (a1)
  {
    v3 = *a1;
    if (v3)
    {
      v5 = 0;
      v6 = (a1 + 4);
      do
      {
        if (*v6)
        {
          CFAllocatorDeallocate(allocator, *v6);
          *v6 = 0;
          v3 = *a1;
        }

        *(v6 - 1) = 0;
        ++v5;
        v6 += 2;
      }

      while (v5 < v3);
    }
  }
}

uint64_t sbp_fad_setOutputCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 120) = a2;
  *(DerivedStorage + 128) = a3;
  return 0;
}

CMItemCount sbp_fad_processSampleBuffer(uint64_t a1, opaqueCMSampleBuffer *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = DerivedStorage;
  if (*(DerivedStorage + 272) == 2)
  {
    AudioConverterReset(*(DerivedStorage + 136));
    result = acquireHardware_0(v4);
    if (result)
    {
      return result;
    }

    *(v4 + 272) = 0;
  }

  return RunConverter_0(v4, a2);
}

CMItemCount sbp_fad_finishPendingProcessing()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 272) = 1;
  v1 = RunConverter_0(DerivedStorage, 0);
  *(DerivedStorage + 272) = 2;
  if (*(DerivedStorage + 152))
  {
    AudioConverterReleaseHardwareCodec();
    *(DerivedStorage + 152) = 0;
  }

  return v1;
}

uint64_t acquireHardware_0(uint64_t a1)
{
  if (!*(a1 + 144) || *(a1 + 152))
  {
    return 0;
  }

  if (!AudioConverterAcquireHardwareCodec())
  {
    *(a1 + 152) = 1;
    return 0;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t fadDecoderInputProc(uint64_t a1, _DWORD *a2, uint64_t a3, void *a4, uint64_t a5)
{
  RichestDecodableFormat = CMAudioFormatDescriptionGetRichestDecodableFormat(*(a5 + 24));
  totalLengthOut = 0;
  dataPointerOut = 0;
  sizeArrayEntriesNeededOut = 0;
  lengthAtOffsetOut = 0;
  v10 = *(a5 + 160);
  if (v10)
  {
    v11 = *(a5 + 168);
    *(a5 + 168) = v10;
    CFRetain(v10);
    if (v11)
    {
      CFRelease(v11);
    }

    *(a5 + 176) = 0;
    *(a5 + 184) = 0;
    v12 = *(a5 + 160);
    if (v12)
    {
      CFRelease(v12);
      *(a5 + 160) = 0;
    }
  }

  v13 = *(a5 + 168);
  if (!v13 || CMSampleBufferGetNumSamples(v13) == *(a5 + 184))
  {
    *a2 = 0;
    if (*(a5 + 272) == 1)
    {
      return 0;
    }

    else
    {
      return 3;
    }
  }

  if (!*(a5 + 216))
  {
    CMSampleBufferGetOutputPresentationTimeStamp(&v73, *(a5 + 168));
    *(a5 + 192) = v73;
    *(a5 + 216) = 1;
  }

  v15 = *(a5 + 168);
  NumSamples = CMSampleBufferGetNumSamples(v15);
  CMSampleBufferGetSampleSizeArray(v15, NumSamples, 0, &sizeArrayEntriesNeededOut);
  v17 = sizeArrayEntriesNeededOut;
  v18 = *(a5 + 232);
  if (sizeArrayEntriesNeededOut > *(a5 + 240))
  {
    if (v18)
    {
      free(*(a5 + 232));
      v17 = sizeArrayEntriesNeededOut;
    }

    v18 = malloc_type_malloc(8 * v17, 0x100004000313F17uLL);
    v19 = sizeArrayEntriesNeededOut;
    *(a5 + 232) = v18;
    *(a5 + 240) = v19;
  }

  v20 = *(a5 + 168);
  v21 = CMSampleBufferGetNumSamples(v20);
  CMSampleBufferGetSampleSizeArray(v20, v21, v18, &sizeArrayEntriesNeededOut);
  if (!sizeArrayEntriesNeededOut)
  {
    result = 0;
    *a2 = 0;
    return result;
  }

  if (!*(a5 + 176))
  {
    if (sizeArrayEntriesNeededOut == 1)
    {
      *(a5 + 176) = *v18;
    }

    else if (CMSampleBufferGetNumSamples(*(a5 + 168)) >= 1)
    {
      v22 = 0;
      do
      {
        v23 = *(a5 + 168);
        *(a5 + 176) += v18[v22++];
      }

      while (v22 < CMSampleBufferGetNumSamples(v23));
    }
  }

  v24 = *(a5 + 184);
  v63 = RichestDecodableFormat;
  if (v24)
  {
    if (sizeArrayEntriesNeededOut == 1)
    {
      v25 = *v18 * v24;
      v26 = *v18 * CMSampleBufferGetNumSamples(*(a5 + 168)) - v25;
    }

    else
    {
      if (v24 < 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = 0;
        v27 = v18;
        v28 = *(a5 + 184);
        do
        {
          v29 = *v27++;
          v25 += v29;
          --v28;
        }

        while (v28);
      }

      if (v24 >= CMSampleBufferGetNumSamples(*(a5 + 168)))
      {
        v26 = 0;
      }

      else
      {
        v26 = 0;
        do
        {
          v26 += v18[v24++];
        }

        while (v24 < CMSampleBufferGetNumSamples(*(a5 + 168)));
      }
    }
  }

  else
  {
    v26 = 0;
    v25 = 0;
  }

  v30 = *(a5 + 224);
  if (v30)
  {
    CFRelease(v30);
    *(a5 + 224) = 0;
  }

  v31 = CMSampleBufferGetNumSamples(*(a5 + 168));
  DataBuffer = CMSampleBufferGetDataBuffer(*(a5 + 168));
  CMBlockBufferGetDataPointer(DataBuffer, v25, &lengthAtOffsetOut, &totalLengthOut, &dataPointerOut);
  v62 = a4;
  if (lengthAtOffsetOut == v26)
  {
    goto LABEL_55;
  }

  v33 = sizeArrayEntriesNeededOut;
  v31 = *(a5 + 184);
  v34 = CMSampleBufferGetNumSamples(*(a5 + 168));
  if (v33 == 1)
  {
    if (v31 >= v34)
    {
      goto LABEL_56;
    }

    v35 = 0;
    while (1)
    {
      v26 = *v18 + v35;
      if (v26 > lengthAtOffsetOut)
      {
        break;
      }

      ++v31;
      v36 = CMSampleBufferGetNumSamples(*(a5 + 168));
      v35 = v26;
      if (v31 >= v36)
      {
        goto LABEL_54;
      }
    }
  }

  else
  {
    if (v31 >= v34)
    {
      goto LABEL_56;
    }

    v35 = 0;
    while (1)
    {
      v26 = v18[v31] + v35;
      if (v26 > lengthAtOffsetOut)
      {
        break;
      }

      ++v31;
      v37 = CMSampleBufferGetNumSamples(*(a5 + 168));
      v35 = v26;
      if (v31 >= v37)
      {
        goto LABEL_54;
      }
    }
  }

  v26 = v35;
LABEL_54:
  if (v26)
  {
LABEL_55:
    LODWORD(result) = 0;
    goto LABEL_62;
  }

LABEL_56:
  v38 = CMSampleBufferGetDataBuffer(*(a5 + 168));
  if (sizeArrayEntriesNeededOut == 1)
  {
    v39 = 0;
  }

  else
  {
    v39 = v31;
  }

  LODWORD(result) = CMBlockBufferCreateContiguous(*MEMORY[0x1E695E480], v38, *MEMORY[0x1E695E480], 0, v25, v18[v39], 0, (a5 + 224));
  if (result)
  {
    LODWORD(v26) = 0;
  }

  else
  {
    CMBlockBufferGetDataPointer(*(a5 + 224), 0, &lengthAtOffsetOut, &totalLengthOut, &dataPointerOut);
    LODWORD(result) = 0;
    v31 = *(a5 + 184) + 1;
    v26 = v18[v39];
  }

LABEL_62:
  v40 = v63;
  v41 = *(a5 + 184);
  v42 = v31 - v41;
  if (!v63->mASBD.mBytesPerPacket || (v43 = *(a5 + 184), !v63->mASBD.mFramesPerPacket))
  {
    v73.value = 0;
    packetDescriptionsSizeOut.value = 0;
    if (v42 > *(a5 + 112))
    {
      v44 = *(a5 + 104);
      if (v44)
      {
        free(v44);
      }

      *(a5 + 104) = malloc_type_malloc(16 * v42, 0x1000040451B5BE8uLL);
      *(a5 + 112) = v42;
    }

    v45 = *(a5 + 168);
    v46 = CMSampleBufferGetNumSamples(v45);
    CMSampleBufferGetSampleSizeArray(v45, v46, v18, 0);
    LODWORD(result) = CMSampleBufferGetAudioStreamPacketDescriptionsPtr(*(a5 + 168), &v73, &packetDescriptionsSizeOut);
    if (v42 >= 1)
    {
      v47 = 0;
      v48 = *(a5 + 104);
      v49 = v73.value + 16 * v41;
      v50 = v31 - v41;
      do
      {
        *(v48 + v47) = *(v49 + v47);
        v48 = *(a5 + 104);
        *(v48 + v47) -= v25;
        v47 += 16;
        --v50;
      }

      while (v50);
    }

    v43 = *(a5 + 184);
    v40 = v63;
  }

  if (!v43)
  {
    v61 = *(a5 + 248);
    v51 = *(a5 + 168);
    memset(&v73, 0, sizeof(v73));
    if (faq_getFigTimeAttachment(v51, *MEMORY[0x1E6960560], &v73))
    {
      v52 = *(a5 + 40);
      time = v73;
      CMTimeConvertScale(&v71, &time, v52, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
      value = v71.value;
      if (HIDWORD(v71.value))
      {
        return 4294954516;
      }
    }

    else
    {
      value = 0;
    }

    memset(&packetDescriptionsSizeOut, 0, sizeof(packetDescriptionsSizeOut));
    if (faq_getFigTimeAttachment(v51, *MEMORY[0x1E6960558], &packetDescriptionsSizeOut))
    {
      v54 = *(a5 + 40);
      time = packetDescriptionsSizeOut;
      CMTimeConvertScale(&v69, &time, v54, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
      v55 = v69.value;
      if (HIDWORD(v69.value))
      {
        return 4294954516;
      }
    }

    else
    {
      v55 = 0;
    }

    if (v55 | value)
    {
      v56 = *(a5 + 40);
      if (v56 != v63->mASBD.mSampleRate)
      {
        v57 = v56 / v63->mASBD.mSampleRate;
        v61 = (*(a5 + 248) * v57 + 0.5);
      }

      if (value)
      {
        v58 = malloc_type_malloc(0x10uLL, 0x1000040451B5BE8uLL);
        *v58 = v61;
        v58[1] = v61 + value;
        CFArrayAppendValue(*(a5 + 264), v58);
      }

      if (v55)
      {
        v59 = malloc_type_malloc(0x10uLL, 0x1000040451B5BE8uLL);
        CMSampleBufferGetDuration(&v73, *(a5 + 168));
        CMTimeConvertScale(&v64, &v73, *(a5 + 40), kCMTimeRoundingMethod_RoundHalfAwayFromZero);
        v60 = LODWORD(v64.value) + v61;
        *v59 = v60 - v55;
        v59[1] = v60;
        CFArrayAppendValue(*(a5 + 264), v59);
      }
    }

    LODWORD(result) = 0;
    v40 = v63;
  }

  *(a5 + 248) += v42 * v40->mASBD.mFramesPerPacket;
  *a3 = 1;
  *(a3 + 8) = v40->mASBD.mChannelsPerFrame;
  *(a3 + 12) = v26;
  *(a3 + 16) = dataPointerOut;
  *(a5 + 184) += v42;
  *a2 = v42;
  if (v62)
  {
    *v62 = *(a5 + 104);
  }

  if (v31 == v41)
  {
    return 3;
  }

  else
  {
    return result;
  }
}

uint64_t fvc_layerDefinition_Register()
{
  result = _CFRuntimeRegisterClass();
  sFigVCLayerDefinitionID = result;
  return result;
}

uint64_t FigVCLayerDefinitionGetOpacity(uint64_t a1, _DWORD *a2)
{
  if (a1)
  {
    if (a2)
    {
      v2 = *(a1 + 44);
      result = 0;
      *a2 = v2;
    }

    else
    {
      FigVCLayerDefinitionGetOpacity_cold_1(&v4);
      return v4;
    }
  }

  else
  {
    FigVCLayerDefinitionGetOpacity_cold_2(&v5);
    return v5;
  }

  return result;
}

uint64_t FigVCLayerDefinitionGetSpecifiedCropRect(uint64_t a1, _OWORD *a2)
{
  if (!a1)
  {
    FigVCLayerDefinitionGetSpecifiedCropRect_cold_2(&v14);
    return v14;
  }

  if (!a2)
  {
    FigVCLayerDefinitionGetSpecifiedCropRect_cold_1(&v14);
    return v14;
  }

  v4 = (a1 + 48);
  if (CGRectIsNull(*(a1 + 48)))
  {
    v5 = *(MEMORY[0x1E695F040] + 16);
    v14 = *MEMORY[0x1E695F040];
    v15 = v5;
    FigCFDictionaryGetCGRectIfPresent();
    if (*(a1 + 24))
    {
      Value = CFDictionaryGetValue(*(a1 + 16), @"TweenedCropRectangle");
      if (Value)
      {
        FigVideoCompositionInstructionEvaluateTweenedCropRectangle(Value, *(a1 + 40));
        *&v14 = v7;
        *(&v14 + 1) = v8;
        *&v15 = v9;
        *(&v15 + 1) = v10;
      }
    }

    v11 = v15;
    *(a1 + 48) = v14;
    *(a1 + 64) = v11;
  }

  result = 0;
  v13 = v4[1];
  *a2 = *v4;
  a2[1] = v13;
  return result;
}

uint64_t FigVCLayerDefinitionGetSpecifiedAffineTransform(uint64_t a1, _OWORD *a2)
{
  if (!a1)
  {
    FigVCLayerDefinitionGetSpecifiedAffineTransform_cold_2(v18);
    return LODWORD(v18[0]);
  }

  if (!a2)
  {
    FigVCLayerDefinitionGetSpecifiedAffineTransform_cold_1(v18);
    return LODWORD(v18[0]);
  }

  if (!*(a1 + 128))
  {
    v4 = *(MEMORY[0x1E695EFD0] + 16);
    v15 = *MEMORY[0x1E695EFD0];
    v16 = v4;
    v17 = *(MEMORY[0x1E695EFD0] + 32);
    Value = CFDictionaryGetValue(*(a1 + 16), @"ConstantAffineMatrix");
    if (Value)
    {
      v6 = Value;
      v7 = CFGetTypeID(Value);
      if (v7 == CFArrayGetTypeID())
      {
        FigGetCGAffineTransformFrom3x2MatrixArray(v6, &v15);
      }
    }

    if (*(a1 + 24))
    {
      v8 = CFDictionaryGetValue(*(a1 + 16), @"TweenedAffineMatrix");
      if (v8)
      {
        v9 = v8;
        v10 = CFGetTypeID(v8);
        if (v10 == CFArrayGetTypeID())
        {
          FigVideoCompositionInstructionEvaluateTweenedAffineMatrix(v9, v18, *(a1 + 40));
          v15 = v18[0];
          v16 = v18[1];
          v17 = v18[2];
        }
      }
    }

    v11 = v16;
    *(a1 + 80) = v15;
    *(a1 + 96) = v11;
    *(a1 + 112) = v17;
    *(a1 + 128) = 1;
  }

  result = 0;
  v13 = *(a1 + 80);
  v14 = *(a1 + 112);
  a2[1] = *(a1 + 96);
  a2[2] = v14;
  *a2 = v13;
  return result;
}

void fvc_layerDefinition_getCleanAperture(uint64_t a1, int a2, int a3, double *a4)
{
  if (a1)
  {
    FigVideoCompositorUtilityGetCleanAperture();
    if (v7)
    {
      return;
    }

    v8 = 0.0;
    v9 = a2;
    if ((a2 + (0.0 * 2.0)) <= 0.0)
    {
      v8 = a2 + (0.0 * 2.0);
    }

    if (v8 >= (v9 + (0.0 * -2.0)))
    {
      v8 = v9 + (0.0 * -2.0);
    }

    v10 = a3;
    v11 = a3 + (0.0 * 2.0);
    if (v11 > 0.0)
    {
      v11 = 0.0;
    }

    v12 = v10 + (0.0 * -2.0);
    if (v11 < v12)
    {
      v12 = v11;
    }

    v13 = (((v9 - v8) * 0.5) + 0.0);
    v14 = (((v10 - v12) * 0.5) + 0.0);
    v15 = v8;
    v16 = v12;
  }

  else
  {
    v15 = a2;
    v16 = a3;
    v14 = 0.0;
    v13 = 0.0;
  }

  *a4 = v13;
  a4[1] = v14;
  a4[2] = v15;
  a4[3] = v16;
}

uint64_t FigVCLayerDefinitionCreate(float a1, uint64_t a2, const void *a3, const void *a4, char a5, uint64_t *a6)
{
  if (a4)
  {
    if (a6)
    {
      MEMORY[0x19A8D3660](&FigVCLayerDefinitionGetTypeID_sRegisterFigVCLayerDefinitionOnce, fvc_layerDefinition_Register);
      Instance = _CFRuntimeCreateInstance();
      if (Instance)
      {
        v12 = Instance;
        if (a3)
        {
          v13 = CFRetain(a3);
        }

        else
        {
          v13 = 0;
        }

        *(v12 + 32) = v13;
        v14 = CFRetain(a4);
        result = 0;
        *(v12 + 16) = v14;
        *(v12 + 40) = a1;
        *(v12 + 24) = a5;
        v16 = MEMORY[0x1E695F050];
        *(v12 + 44) = 2143289344;
        v17 = v16[1];
        *(v12 + 48) = *v16;
        *(v12 + 64) = v17;
        *a6 = v12;
      }

      else
      {
        FigVCLayerDefinitionCreate_cold_1(&v18);
        return v18;
      }
    }

    else
    {
      FigVCLayerDefinitionCreate_cold_2(&v19);
      return v19;
    }
  }

  else
  {
    FigVCLayerDefinitionCreate_cold_3(&v20);
    return v20;
  }

  return result;
}

uint64_t FigVCLayerDefinitionOptimizeLayerDefinitionArray(__CFArray *a1, CGFloat a2, CGFloat a3)
{
  v33 = *MEMORY[0x1E69E9840];
  if (CFArrayGetCount(a1) >= 1)
  {
    v6 = 0;
    do
    {
      if (*(CFArrayGetValueAtIndex(a1, v6) + 4))
      {
        ++v6;
      }

      else
      {
        CFArrayRemoveValueAtIndex(a1, v6);
      }
    }

    while (v6 < CFArrayGetCount(a1));
  }

  if (CFArrayGetCount(a1) < 1)
  {
LABEL_14:
    if (CFArrayGetCount(a1) < 1)
    {
LABEL_22:
      if (CFArrayGetCount(a1) < 1)
      {
        v12 = 0;
LABEL_42:
        while (v12 < CFArrayGetCount(a1))
        {
          CFArrayRemoveValueAtIndex(a1, v12);
        }

        return 0;
      }

      else
      {
        v12 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a1, v12);
          v28 = 0.0;
          result = FigVCLayerDefinitionGetOpacity(ValueAtIndex, &v28);
          if (result)
          {
            break;
          }

          if (v28 == 1.0 && FigVideoCompositorIsPixelBufferOpaque(ValueAtIndex[4]))
          {
            memset(&v30, 0, sizeof(v30));
            result = FigVCLayerDefinitionGetCroppedSourceCleanApertureRect(ValueAtIndex, &v30);
            if (result)
            {
              return result;
            }

            memset(&v29, 0, sizeof(v29));
            result = FigVCLayerDefinitionGetAffineTransform(ValueAtIndex, &v29);
            if (result)
            {
              return result;
            }

            v14 = 0;
            *&v31.a = v30.origin;
            v31.c = v30.origin.x + v30.size.width;
            v31.d = v30.origin.y;
            v31.tx = v30.origin.x + v30.size.width;
            v31.ty = v30.origin.y + v30.size.height;
            *&v32 = v30.origin.x;
            *(&v32 + 1) = v30.origin.y + v30.size.height;
            c = v29.c;
            d = v29.d;
            v17 = vdupq_lane_s64(*&v29.a, 0);
            v18 = vdupq_lane_s64(*&v29.tx, 0);
            v19 = vdupq_lane_s64(*&v29.b, 0);
            v20 = vdupq_lane_s64(*&v29.ty, 0);
            do
            {
              v21 = (&v31.a + v14);
              v34 = vld2q_f64(v21);
              v35.val[0] = vaddq_f64(v18, vmlaq_f64(vmulq_n_f64(v34.val[1], c), v34.val[0], v17));
              v35.val[1] = vaddq_f64(v20, vmlaq_f64(vmulq_n_f64(v34.val[1], d), v34.val[0], v19));
              vst2q_f64(v21, v35);
              v14 += 32;
            }

            while (v14 != 64);
            if ((v31.a - v31.c) * (v31.ty - v31.d) - (v31.b - v31.d) * (v31.tx - v31.c) > 0.0)
            {
              v22 = *&v31.a;
              *&v31.a = v32;
              v23 = *&v31.c;
              *&v31.c = *&v31.tx;
              *&v31.tx = v23;
              v32 = v22;
            }

            v27[0] = 0.0;
            v27[1] = 0.0;
            v25[1] = a3;
            v26[0] = a2;
            v26[1] = 0.0;
            v24[1] = a3;
            v25[0] = a2;
            v24[0] = 0.0;
            if (fvc_layerDefinition_isPointInTetragon(v27, &v31) && fvc_layerDefinition_isPointInTetragon(v26, &v31) && fvc_layerDefinition_isPointInTetragon(v25, &v31) && fvc_layerDefinition_isPointInTetragon(v24, &v31))
            {
              ++v12;
              goto LABEL_42;
            }
          }

          if (++v12 >= CFArrayGetCount(a1))
          {
            goto LABEL_42;
          }
        }
      }
    }

    else
    {
      v10 = 0;
      while (1)
      {
        v11 = CFArrayGetValueAtIndex(a1, v10);
        memset(&v30, 0, sizeof(v30));
        result = FigVCLayerDefinitionGetCroppedSourceCleanApertureRect(v11, &v30);
        if (result)
        {
          break;
        }

        memset(&v31, 0, sizeof(v31));
        result = FigVCLayerDefinitionGetAffineTransform(v11, &v31);
        if (result)
        {
          break;
        }

        v29 = v31;
        v36 = CGRectApplyAffineTransform(v30, &v29);
        v36.origin.x = round(v36.origin.x);
        v36.origin.y = round(v36.origin.y);
        v36.size.width = round(v36.size.width);
        v36.size.height = round(v36.size.height);
        v37.origin.x = 0.0;
        v37.origin.y = 0.0;
        v37.size.width = a2;
        v37.size.height = a3;
        if (CGRectIntersectsRect(v36, v37))
        {
          ++v10;
        }

        else
        {
          CFArrayRemoveValueAtIndex(a1, v10);
        }

        if (v10 >= CFArrayGetCount(a1))
        {
          goto LABEL_22;
        }
      }
    }
  }

  else
  {
    v7 = 0;
    while (1)
    {
      v8 = CFArrayGetValueAtIndex(a1, v7);
      LODWORD(v31.a) = 0;
      result = FigVCLayerDefinitionGetOpacity(v8, &v31);
      if (result)
      {
        break;
      }

      if (*&v31.a < 0.0001)
      {
        CFArrayRemoveValueAtIndex(a1, v7);
      }

      else
      {
        ++v7;
      }

      if (v7 >= CFArrayGetCount(a1))
      {
        goto LABEL_14;
      }
    }
  }

  return result;
}

BOOL fvc_layerDefinition_isPointInTetragon(double *a1, uint64_t a2)
{
  v2 = 0;
  v3 = (a2 + 8);
  do
  {
    v4 = v2;
    if (v2 == 4)
    {
      break;
    }

    ++v2;
    v5 = (a2 + 16 * ((v4 + 1) & 3));
    v6 = round((*(v3 - 1) - *v5) * (a1[1] - v5[1]) - (*v3 - v5[1]) * (*a1 - *v5));
    v3 += 2;
  }

  while (v6 <= 0.0);
  return v4 > 3;
}

double fvc_layerDefinition_Init(uint64_t a1)
{
  *(a1 + 128) = 0;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void fvc_layerDefinition_Finalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {

    CFRelease(v3);
  }
}

CGAffineTransform *OUTLINED_FUNCTION_3_78(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __n128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, __n128 a14, CGAffineTransform *t1, CGAffineTransform *t1_8, uint64_t t1_16, uint64_t t1_24, uint64_t t1_32, uint64_t t1_40, uint64_t a21)
{
  a14 = a9;

  return CGAffineTransformConcat(&a21, &t1, &a10);
}

uint64_t sbp_vtcs_handleSessionTerminatedNotification()
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

__CFString *sbp_vtcs_copyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigSampleBufferProcessor_VideoCompression %p>", a1);
  return Mutable;
}

uint64_t sbp_vtcs_copyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 39) || !a4)
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  else
  {
    v8 = DerivedStorage;
    if (CFEqual(a2, @"SampleBufferProcessor_InheritOutputColorSpaceFromInput"))
    {
      v9 = MEMORY[0x1E695E4D0];
      v10 = *(v8 + 34);
LABEL_11:
      if (!v10)
      {
        v9 = MEMORY[0x1E695E4C0];
      }

      v11 = CFRetain(*v9);
      goto LABEL_14;
    }

    if (CFEqual(a2, @"SampleBufferProcessor_InheritOutputCleanApertureFromInput"))
    {
      v9 = MEMORY[0x1E695E4D0];
      v10 = *(v8 + 36);
      goto LABEL_11;
    }

    if (CFEqual(a2, @"SampleBufferProcessorProperty_ForceSyncSampleIntervalForSegmentation"))
    {
      v13 = *MEMORY[0x1E695E480];
      *&v15.value = *(v8 + 72);
      v14 = *(v8 + 88);
LABEL_19:
      v15.epoch = v14;
      v11 = CMTimeCopyAsDictionary(&v15, v13);
LABEL_14:
      v12 = v11;
      result = 0;
      *a4 = v12;
      return result;
    }

    if (CFEqual(a2, @"SampleBufferProcessorProperty_InitialSegmentStartTime"))
    {
      v13 = *MEMORY[0x1E695E480];
      *&v15.value = *(v8 + 48);
      v14 = *(v8 + 64);
      goto LABEL_19;
    }

    return 4294954512;
  }
}

double sbp_vtcs_setProperty(uint64_t a1, const void *a2, const __CFBoolean *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 39))
  {
    v6 = DerivedStorage;
    if (CFEqual(a2, @"SampleBufferProcessor_InheritOutputColorSpaceFromInput"))
    {
      if (a3)
      {
        TypeID = CFBooleanGetTypeID();
        if (TypeID == CFGetTypeID(a3))
        {
          *(v6 + 34) = CFBooleanGetValue(a3);
          return result;
        }
      }
    }

    else
    {
      if (!CFEqual(a2, @"SampleBufferProcessor_InheritOutputCleanApertureFromInput"))
      {
        if (CFEqual(a2, @"SampleBufferProcessorProperty_ForceSyncSampleIntervalForSegmentation"))
        {
          memset(&v12, 0, sizeof(v12));
          CMTimeMakeFromDictionary(&v12, a3);
          if ((v12.flags & 0x1D) == 1)
          {
            time1 = **&MEMORY[0x1E6960CC0];
            v10 = v12;
            if (CMTimeCompare(&time1, &v10) < 0)
            {
              result = *&v12.value;
              *(v6 + 72) = v12;
              return result;
            }
          }

          fig_log_get_emitter();
        }

        else
        {
          if (!CFEqual(a2, @"SampleBufferProcessorProperty_InitialSegmentStartTime"))
          {
            return result;
          }

          memset(&v12, 0, sizeof(v12));
          CMTimeMakeFromDictionary(&v12, a3);
          if ((v12.flags & 0x1D) == 1)
          {
            result = *&v12.value;
            *(v6 + 48) = v12;
            return result;
          }

          fig_log_get_emitter();
        }

        FigSignalErrorAtGM();
        return result;
      }

      if (a3)
      {
        v9 = CFGetTypeID(a3);
        if (v9 == CFBooleanGetTypeID())
        {
          *(v6 + 36) = CFBooleanGetValue(a3);
          return result;
        }
      }
    }
  }

  fig_log_get_emitter();

  FigSignalErrorAtGM();
  return result;
}

void sbp_vtcs_releaseCMBlockBuffer(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

BOOL sbp_CVBufferAttachmentEmpty(__CVBuffer *a1, const __CFString *a2)
{
  v2 = CVBufferCopyAttachment(a1, a2, 0);
  v3 = v2;
  if (v2)
  {
    CFRelease(v2);
  }

  return v3 == 0;
}

CMTime *sbp_vtcs_calculateNextCumulatedForceSyncSampleInterval@<X0>(uint64_t a1@<X0>, CMTime *a2@<X1>, uint64_t a3@<X8>)
{
  memset(&v9, 0, sizeof(v9));
  lhs = *a2;
  v7 = *(a1 + 48);
  CMTimeSubtract(&v9, &lhs, &v7);
  lhs = **&MEMORY[0x1E6960CC0];
  v7 = v9;
  if (CMTimeCompare(&lhs, &v7) < 0)
  {
    lhs = v9;
    v7 = *(a1 + 72);
    v5 = CMTimeDivide() + 1;
  }

  else
  {
    v5 = 1;
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  lhs = *(a1 + 72);
  return CMTimeMultiply(a3, &lhs, v5);
}

CMTime *OUTLINED_FUNCTION_4_83@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, int a18, uint64_t a19)
{
  a17 = a1;
  a18 = v19;
  a19 = v21;

  return sbp_vtcs_calculateNextCumulatedForceSyncSampleInterval(v20, &a16, v22 - 144);
}

__n128 OUTLINED_FUNCTION_6_67()
{
  result = *(v1 - 144);
  v0[6] = result;
  v0[7].n128_u64[0] = *(v1 - 128);
  return result;
}

void *frr_figRTCReportingInitOnce()
{
  result = dlopen("/System/Library/PrivateFrameworks/RTCReporting.framework/RTCReporting", 1);
  if (result)
  {
    v1 = result;
    qword_1ED4CAD28 = CFArrayCreate(*MEMORY[0x1E695E480], frr_figRTCReportingInitOnce_frameworkList, 6, 0);
    sRTCReportingAPI_InitWithSessionInfo = dlsym(v1, "RTCReportingInitWithSessionInfo");
    qword_1ED4CAD20 = dlsym(v1, "RTCReportingInitWithSessionInfoDict");
    off_1ED4CAD38 = dlsym(v1, "RTCReportingStartConfiguration");
    off_1ED4CAD48 = dlsym(v1, "RTCReportingFetchStatesWithUserInfo");
    off_1ED4CAD30 = dlsym(v1, "RTCReportingSetMessageBlock");
    off_1ED4CAD58 = dlsym(v1, "RTCReportingSendMessageWithError");
    off_1ED4CADE0 = dlsym(v1, "RTCReportingSendMessageWithDictionary");
    qword_1ED4CAD60 = dlsym(v1, "RTCReportingUploadLogWithArray");
    off_1ED4CAD40 = dlsym(v1, "RTC_relaxSessions");
    off_1ED4CAD50 = dlsym(v1, "RTCReportingSendOneMessageWithDictionary");
    v2 = dlsym(v1, "kRTCReportingSessionInfoClientType");
    if (v2)
    {
      v3 = *v2;
    }

    else
    {
      v3 = 0;
    }

    qword_1ED4CAD68 = v3;
    v4 = dlsym(v1, "kRTCReportingSessionInfoClientVersion");
    if (v4)
    {
      v5 = *v4;
    }

    else
    {
      v5 = 0;
    }

    qword_1ED4CAD70 = v5;
    v6 = dlsym(v1, "kRTCReportingSessionInfoSessionID");
    if (v6)
    {
      v7 = *v6;
    }

    else
    {
      v7 = 0;
    }

    qword_1ED4CAD78 = v7;
    v8 = dlsym(v1, "kRTCReportingSessionInfoBatchEvent");
    if (v8)
    {
      v9 = *v8;
    }

    else
    {
      v9 = 0;
    }

    qword_1ED4CAD80 = v9;
    v10 = dlsym(v1, "kRTCReportingSessionInfoContainsRealtimeEvents");
    if (v10)
    {
      v11 = *v10;
    }

    else
    {
      v11 = 0;
    }

    qword_1ED4CADA0 = v11;
    v12 = dlsym(v1, "kRTCReportingSessionInfoRequireUserInfo");
    if (v12)
    {
      v13 = *v12;
    }

    else
    {
      v13 = 0;
    }

    qword_1ED4CAD88 = v13;
    v14 = dlsym(v1, "kRTCReportingSessionInfoHierarchyToken");
    if (v14)
    {
      v15 = *v14;
    }

    else
    {
      v15 = 0;
    }

    qword_1ED4CAD90 = v15;
    v16 = dlsym(v1, "kRTCReportingSessionInfoClientBundleID");
    if (v16)
    {
      v17 = *v16;
    }

    else
    {
      v17 = 0;
    }

    qword_1ED4CAD98 = v17;
    v18 = dlsym(v1, "kRTCReportingUserInfoClientName");
    if (v18)
    {
      v19 = *v18;
    }

    else
    {
      v19 = 0;
    }

    qword_1ED4CADA8 = v19;
    v20 = dlsym(v1, "kRTCReportingUserInfoServiceName");
    if (v20)
    {
      v21 = *v20;
    }

    else
    {
      v21 = 0;
    }

    qword_1ED4CADB0 = v21;
    v22 = dlsym(v1, "kRTCReportingMessageParametersCategory");
    if (v22)
    {
      v23 = *v22;
    }

    else
    {
      v23 = 0;
    }

    qword_1ED4CADB8 = v23;
    v24 = dlsym(v1, "kRTCReportingMessageParametersFlag");
    if (v24)
    {
      v25 = *v24;
    }

    else
    {
      v25 = 0;
    }

    qword_1ED4CADC0 = v25;
    v26 = dlsym(v1, "kRTCReportingMessageParametersPayload");
    if (v26)
    {
      v27 = *v26;
    }

    else
    {
      v27 = 0;
    }

    qword_1ED4CADD0 = v27;
    v28 = dlsym(v1, "kRTCReportingMessageParametersType");
    if (v28)
    {
      v29 = *v28;
    }

    else
    {
      v29 = 0;
    }

    qword_1ED4CADC8 = v29;
    result = dlsym(v1, "kRTCReportingSessionInfoSamplingUUIID");
    if (result)
    {
      v30 = *result;
    }

    else
    {
      v30 = 0;
    }

    v31 = 0;
    qword_1ED4CADD8 = v30;
    if (qword_1ED4CAD78 && sRTCReportingAPI_InitWithSessionInfo && qword_1ED4CAD20 && off_1ED4CAD38 && off_1ED4CAD48 && off_1ED4CAD30 && off_1ED4CAD58 && off_1ED4CADE0 && qword_1ED4CAD60 && off_1ED4CAD50 && qword_1ED4CAD98 && qword_1ED4CAD68 && qword_1ED4CAD70 && qword_1ED4CAD80 && qword_1ED4CAD88 && qword_1ED4CAD90 && qword_1ED4CADA0 && qword_1ED4CADB0 && qword_1ED4CADA8 && qword_1ED4CADB8 && qword_1ED4CADC0)
    {
      if (qword_1ED4CADD0)
      {
        v31 = qword_1ED4CADC8 != 0;
      }
    }

    _MergedGlobals_73 = v31;
  }

  return result;
}

uint64_t __FigRTCReportingCreate_block_invoke_3(uint64_t a1)
{
  result = FigIsItOKToLogURLs();
  if (result)
  {
    if (*(a1 + 32))
    {
      v3 = dword_1EAF173E8 == 0;
    }

    else
    {
      v3 = 1;
    }

    if (!v3)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      return fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  return result;
}

uint64_t frr_logRTCReportingSession(int a1, int a2, int a3, int a4, int a5, CFDictionaryRef theDict, int a7)
{
  if (theDict)
  {
    CFDictionaryGetValue(theDict, @"PlayerType");
    CFDictionaryGetValue(theDict, @"PumpName");
  }

  result = FigIsItOKToLogURLs();
  if (a7 && result)
  {
    if (dword_1EAF173E8)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      return fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  return result;
}

void OUTLINED_FUNCTION_0_117()
{

  JUMPOUT(0x19A8D3660);
}

uint64_t FigImageQueueDisplayCountHistory_GetTypeID()
{
  if (sRegisterFigImageQueueDisplayCountHistoryTypeOnce != -1)
  {
    FigImageQueueDisplayCountHistory_GetTypeID_cold_1();
  }

  return sFigImageQueueDisplayCountHistoryID;
}

uint64_t FigImageQueueDisplayCountHistory_RegisterClassOnce()
{
  result = _CFRuntimeRegisterClass();
  sFigImageQueueDisplayCountHistoryID = result;
  return result;
}

uint64_t FigImageQueueDisplayCountHistory_Create(uint64_t *a1)
{
  if (sRegisterFigImageQueueDisplayCountHistoryTypeOnce != -1)
  {
    FigImageQueueDisplayCountHistory_GetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v3 = Instance;
    result = 0;
    *a1 = v3;
  }

  else
  {
    FigImageQueueDisplayCountHistory_Create_cold_2(&v5);
    return v5;
  }

  return result;
}

uint64_t FigImageQueueDisplayCountHistory_initCadencePathMutexOnce()
{
  result = FigSimpleMutexCreate();
  qword_1ED4CADF0 = result;
  return result;
}

uint64_t FigImageQueueDisplayCountHistory_TraceFlush(uint64_t result)
{
  if (*(result + 24))
  {
    ++*(result + 36);
  }

  return result;
}

uint64_t FigImageQueueDisplayCountHistory_TraceDisplayCountUsingHostTime(uint64_t result, CMTime *a2, int a3, int a4, uint64_t a5, double a6, double a7)
{
  if (*(result + 24))
  {
    v13 = result;
    for (i = 0; i != 1920; i += 64)
    {
      v15 = v13 + i;
      time1 = *(v13 + i + 40);
      v22 = *a2;
      result = CMTimeCompare(&time1, &v22);
      if (!result)
      {
        v18 = *(v13 + 36);
        epoch = a2->epoch;
        *(v15 + 40) = *&a2->value;
        *(v15 + 56) = epoch;
        *(v15 + 64) = a7;
        *(v15 + 72) = a5;
        *(v15 + 80) = a6;
        *(v15 + 92) = v18;
        *(v15 + 96) = a4;
        *(v15 + 88) = a3;
        return result;
      }
    }

    if (*(v13 + 1960) == 30)
    {
      result = FigImageQueueDisplayCountHistory_WriteAndRemoveOldestDisplayCountTraceEntry(v13);
    }

    v16 = (v13 + 96);
    v17 = 30;
    while ((*(v16 - 11) & 1) != 0)
    {
      v16 += 16;
      if (!--v17)
      {
        return result;
      }
    }

    v20 = *(v13 + 36);
    v21 = *&a2->value;
    *(v16 - 5) = a2->epoch;
    *(v16 - 14) = v21;
    *(v16 - 4) = a7;
    *(v16 - 3) = a5;
    *(v16 - 2) = a6;
    *(v16 - 1) = v20;
    *v16 = a4;
    *(v16 - 2) = a3;
    ++*(v13 + 1960);
  }

  return result;
}

uint64_t FigImageQueueDisplayCountHistory_WriteAndRemoveOldestDisplayCountTraceEntry(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v42 = *MEMORY[0x1E69E9840];
  v3 = result + 40;
  v4 = -1;
  v5 = 52;
  v6 = -1;
  do
  {
    if ((*(v1 + v5) & 1) == 0)
    {
      goto LABEL_8;
    }

    if (v4 == -1)
    {
      v6 = -1;
      goto LABEL_7;
    }

    result = FigImageQueueDisplayCountHistory_EntryIsOlderThanEntry(v1, v2, v4);
    if (result)
    {
      v6 = v4;
LABEL_7:
      v4 = v2;
      goto LABEL_8;
    }

    if (v6 == -1 || (result = FigImageQueueDisplayCountHistory_EntryIsOlderThanEntry(v1, v2, v6), result))
    {
      v6 = v2;
    }

LABEL_8:
    ++v2;
    v5 += 64;
  }

  while (v2 != 30);
  if ((v4 & 0x80000000) != 0)
  {
    *(v1 + 1960) = 0;
  }

  else
  {
    v7 = v3 + (v4 << 6);
    if ((v6 & 0x80000000) == 0)
    {
      v8 = v3 + (v6 << 6);
      if (*(v7 + 52) == *(v8 + 52))
      {
        v9 = *(v8 + 40);
        if (*(v7 + 40) == v9 && v9 != 0.0)
        {
          v10 = FigHostTimeToNanoseconds() * 0.000000001 / *(v7 + 40);
          v11 = (v10 + 0.5);
          if (vabds_f32(v11, v10) <= 0.1)
          {
            *(v7 + 48) = v11;
          }
        }
      }
    }

    v12 = *(v7 + 52);
    v13 = *(v7 + 48);
    v14 = *v7;
    v15 = *(v7 + 8);
    v40 = *(v7 + 12);
    v41 = *(v7 + 20);
    v16 = v1 + 1976;
    if (*(v1 + 1964) != v12 && *(v1 + 32) != 8)
    {
      fwrite("\n[FLUSHED]", 0xAuLL, 1uLL, *(v1 + 24));
    }

    v17 = *(v1 + 2232);
    v18 = *(v1 + 2236);
    if (v18 + v17 <= 0)
    {
      v19 = --(v18 + v17);
    }

    else
    {
      v19 = (v18 + v17);
    }

    *(v16 + v19) = v13;
    v20 = v18 + 1;
    *(v1 + 2236) = v18 + 1;
    if (v18 >= 256)
    {
      v20 = 256;
      *(v1 + 2236) = 256;
      if (v17 == 255)
      {
        v17 = 0;
      }

      else
      {
        ++v17;
      }

      *(v1 + 2232) = v17;
    }

    v21 = *(v1 + 2240);
    if (v21 < v20)
    {
      v22 = v21 + 1;
    }

    else
    {
      v22 = v20;
    }

    *(v1 + 2240) = v22;
    v23 = *(v1 + 32);
    if (v23 == 8)
    {
      time.value = v14;
      time.timescale = v15;
      *&time.flags = v40;
      HIDWORD(time.epoch) = v41;
      CMTimeGetSeconds(&time);
      fprintf(*(v1 + 24), "\n%13.6f, %13.6f, %d,");
    }

    else if (v23 == 5)
    {
      time.value = v14;
      time.timescale = v15;
      *&time.flags = v40;
      HIDWORD(time.epoch) = v41;
      CMTimeGetSeconds(&time);
      fprintf(*(v1 + 24), "\n%13.6f, %13.6f, %+9.6f,");
    }

    else
    {
      v24 = v14 / v15;
      if (v23 == 1)
      {
        v25 = *(v1 + 1968);
        if (v25 != v24)
        {
          if (v18 >= 255)
          {
            v18 = 255;
          }

          v26 = v17 + v18 - v22;
          v27 = v26 + 1;
          v28 = 1;
          while (1)
          {
            if (v22 >= 2 * v28 && v28 + v22 <= v20)
            {
              if (v22 < 1)
              {
                v35 = 0;
              }

              else
              {
                v29 = 0;
                v30 = v26;
                v31 = v27;
                while (1)
                {
                  v32 = v30 <= 0 ? --v30 : v30;
                  v33 = *(v16 + v32);
                  v34 = v31 <= 0 ? --v31 : v31;
                  if (v33 != *(v16 + v34))
                  {
                    break;
                  }

                  --v29;
                  ++v31;
                  ++v30;
                  if (!(v22 + v29))
                  {
                    goto LABEL_63;
                  }
                }

                v35 = -v29;
              }

              if (v35 == v22)
              {
                break;
              }
            }

            ++v28;
            --v26;
            if (v28 == 6)
            {
              goto LABEL_64;
            }
          }

LABEL_63:
          fprintf(*(v1 + 24), " (repeating, period %d)", v28);
          v25 = *(v1 + 1968);
LABEL_64:
          *(v1 + 2240) = 0;
          if (v25 != v24)
          {
            goto LABEL_66;
          }
        }

        if (*(v1 + 1964) != v12)
        {
LABEL_66:
          if (*(v1 + 1972) >= 1)
          {
            fprintf(*(v1 + 24), " [total %d]", *(v1 + 1972));
          }

          *(v1 + 1972) = 0;
          fprintf(*(v1 + 24), "\n[%02d:%02d:%02d]", v24 / 3600, v24 / 60 % 60, v24 % 60);
        }

        *(v1 + 1968) = v24;
        *(v1 + 1972) += v13;
      }

      else
      {
        v36 = *(v1 + 24);
        v38.value = v14;
        v38.timescale = v15;
        *&v38.flags = v40;
        HIDWORD(v38.epoch) = v41;
        CMTimeConvertScale(&time, &v38, 1000, kCMTimeRoundingMethod_RoundTowardZero);
        fprintf(v36, "\n[%02d:%02d:%02d.%03d]");
      }
    }

    *(v1 + 1964) = v12;
    result = fprintf(*(v1 + 24), " %d", v13);
    v37 = MEMORY[0x1E6960C70];
    *v7 = *MEMORY[0x1E6960C70];
    *(v7 + 16) = *(v37 + 16);
    --*(v1 + 1960);
  }

  return result;
}

void FigImageQueueDisplayCountHistory_CancelTracingDisplayCount(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    fwrite("\n\n# ABANDONING -- this image queue is for scrubbing only.\n", 0x3AuLL, 1uLL, v1);
    fclose(*(a1 + 24));
    *(a1 + 24) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    unlink(*(a1 + 16));
    free(*(a1 + 16));
    *(a1 + 16) = 0;
  }
}

void FigImageQueueDisplayCountHistory_FinishTracingDisplayCount(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    if (*(a1 + 1960))
    {
      do
      {
        FigImageQueueDisplayCountHistory_WriteAndRemoveOldestDisplayCountTraceEntry(a1);
      }

      while (*(a1 + 1960));
      v1 = *(a1 + 24);
    }

    fputc(10, v1);
    if (*(a1 + 32) != 8)
    {
      fwrite("\n# END\n", 7uLL, 1uLL, *(a1 + 24));
    }

    fclose(*(a1 + 24));
    *(a1 + 24) = 0;
    free(*(a1 + 16));
    *(a1 + 16) = 0;
  }
}

void FigImageQueueDisplayCountHistory_Finalize(uint64_t a1)
{
  if (*(a1 + 24))
  {
    FigImageQueueDisplayCountHistory_FinishTracingDisplayCount(a1);
  }
}

__CFString *FigImageQueueDisplayCountHistory_CopyDebugDesc(void *a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  v3 = a1[2];
  v4 = CFGetRetainCount(a1);
  CFStringAppendFormat(Mutable, 0, @"<FigImageQueueDisplayCountHistory %p %s> RC %d", a1, v3, v4);
  return Mutable;
}

BOOL FigImageQueueDisplayCountHistory_EntryIsOlderThanEntry(uint64_t a1, int a2, int a3)
{
  v5 = a1 + 40 + (a3 << 6);
  v6 = *(v5 + 52);
  v7 = a1 + 40 + (a2 << 6);
  v8 = *(v7 + 52);
  if (v6 > v8)
  {
    return 1;
  }

  if (v6 != v8)
  {
    return 0;
  }

  v12 = v3;
  v13 = v4;
  time1 = *v5;
  v10 = *v7;
  return CMTimeCompare(&time1, &v10) > 0;
}

uint64_t OUTLINED_FUNCTION_2_103()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

char *figcss_BuildCSSTokenInfo()
{
  result = malloc_type_calloc(0x21uLL, 0x18uLL, 0x106004067290D6BuLL);
  v1 = 0;
  v2 = result + 16;
  do
  {
    *(v2 - 2) = v1;
    *(v2 - 2) = dword_196E77D70[v1];
    *v2 = off_1E748CAE8[v1];
    v2 += 3;
    ++v1;
  }

  while (v1 != 33);
  qword_1EAF19898 = result;
  _MergedGlobals_97 = 1;
  return result;
}

void figcss_BuildCSSTokenNameMappingDictionaries()
{
  MEMORY[0x19A8D3660](&_MergedGlobals_6, figcss_BuildCSSTokenInfo);
  v0 = _MergedGlobals_97;
  if (_MergedGlobals_97)
  {
    v1 = 33;
  }

  else
  {
    v1 = 0;
  }

  v2 = qword_1EAF19898;
  v3 = *MEMORY[0x1E695E480];
  v4 = MEMORY[0x1E695E9D8];
  v5 = MEMORY[0x1E695E9E8];
  qword_1EAF198A0 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  qword_1EAF198A8 = CFDictionaryCreateMutable(v3, 0, v4, v5);
  valuePtr = 0;
  if (v0 == 1)
  {
    do
    {
      v6 = CFNumberCreate(v3, kCFNumberCFIndexType, &valuePtr);
      CFDictionarySetValue(qword_1EAF198A0, v6, *(v2 + 24 * valuePtr + 16));
      CFDictionarySetValue(qword_1EAF198A8, *(v2 + 24 * valuePtr + 16), v6);
      if (v6)
      {
        CFRelease(v6);
      }

      ++valuePtr;
    }

    while (valuePtr < v1);
  }
}

void OUTLINED_FUNCTION_0_119()
{

  JUMPOUT(0x19A8D3660);
}

uint64_t FigRenderPipelineCreateForWritingTrack(uint64_t a1, const void *a2, uint64_t a3, __int128 *a4, uint64_t a5, __int128 *a6, uint64_t a7, CFTypeRef *a8)
{
  cf = 0;
  if (a8 && a2)
  {
    FigRenderPipelineGetClassID();
    v15 = CMDerivedObjectCreate();
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      CFRetain(a2);
      *(DerivedStorage + 8) = a2;
      *(DerivedStorage + 16) = a3;
      v21 = *a4;
      v22 = *(a4 + 2);
      v19 = *a6;
      v20 = *(a6 + 2);
      v17 = FigSampleBufferConsumerCreateForFormatWriter(a2, a3, &v21, a5, &v19, a7, (DerivedStorage + 24));
      if (!v17)
      {
        *a8 = cf;
        return v17;
      }
    }

    if (cf)
    {
      CFRelease(cf);
    }

    return v17;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t figRenderPipelineForFormatWriterInvalidate()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v1 = DerivedStorage;
    if (!*DerivedStorage)
    {
      *DerivedStorage = 1;
      v2 = *(DerivedStorage + 24);
      if (v2)
      {
        CFRelease(v2);
        *(v1 + 24) = 0;
      }

      v3 = *(v1 + 8);
      if (v3)
      {
        CFRelease(v3);
        *(v1 + 8) = 0;
      }
    }
  }

  return 0;
}

__CFString *figRenderPipelineForFormatWriterCopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigRenderPipelineForFormatWriter %p: ", a1);
  CFStringAppendFormat(Mutable, 0, @"formatWriter %@, trackID %d, sampleBufferConsumer %@", *(DerivedStorage + 8), *(DerivedStorage + 16), *(DerivedStorage + 24));
  CFStringAppendFormat(Mutable, 0, @">");
  return Mutable;
}

uint64_t figRenderPipelineForFormatWriterCopyProperty(uint64_t a1, const void *a2, uint64_t a3, uint64_t *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage && (v7 = DerivedStorage, !*DerivedStorage))
  {
    if (CFEqual(@"SourceSampleBufferQueue", a2))
    {
      v9 = *(v7 + 1);
      v10 = *(v7 + 4);
      v11 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v11)
      {
        v12 = *MEMORY[0x1E695E480];

        return v11(v9, v10, @"SourceSampleBufferQueue", v12, a4);
      }

      else
      {
        return 4294954514;
      }
    }

    else if (CFEqual(@"SourceSampleBufferConsumer", a2))
    {
      result = *(v7 + 3);
      *a4 = result;
      if (result)
      {
        CFRetain(result);
        return 0;
      }
    }

    else
    {
      return 4294954446;
    }
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  return result;
}

uint64_t figRenderPipelineForFormatWriterSetProperty()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage && !*DerivedStorage)
  {
    return 4294954446;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t FigCaptionRendererIntervalSetValue(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 16);
  *(DerivedStorage + 16) = a2;
  if (a2)
  {
    CFRetain(a2);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return 0;
}

__CFString *FigCaptionRendererIntervalCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"\tFigCaptionRendererInterval: <%p>", a1);
  return Mutable;
}

__CFString *FigCaptionRendererInterval_FigCaptionRendererIntervalProtocol_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"\tFigCaptionRendererInterval <FigCaptionRendererIntervalProtocol> on <%p>", a1);
  return Mutable;
}

uint64_t FigCaptionRendererInterval_FigCaptionRendererIntervalProtocol_SetRange(double a1, double a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *DerivedStorage = a1;
  DerivedStorage[1] = a2;
  return 0;
}

uint64_t RegisterFigCaptionRendererIntervalBaseType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

void FigCaptionRendererParentIntervalFinalize()
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

__CFString *FigCaptionRendererParentIntervalCopyDebugDescription()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"\tFigCaptionRendererParentInterval: <%p>", DerivedStorage);
  return Mutable;
}

__CFString *FigCaptionRendererParentInterval_FigCaptionRendererIntervalProtocol_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"\tFigCaptionRendererParentInterval <FigCaptionRendererIntervalProtocol> on <%p>", a1);
  return Mutable;
}

uint64_t FigCaptionRendererParentInterval_FigCaptionRendererIntervalProtocol_GetRange(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererIntervalProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (ProtocolVTable)
  {
    v5 = *(ProtocolVTable + 16);
    if (v5)
    {
      v6 = *(v5 + 8);
      if (v6)
      {
        v6(v3, a2);
      }
    }
  }

  return 0;
}

uint64_t FigCaptionRendererParentInterval_FigCaptionRendererIntervalProtocol_SetRange(double a1, double a2)
{
  v4 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererIntervalProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (ProtocolVTable)
  {
    v6 = *(ProtocolVTable + 16);
    if (v6)
    {
      v7 = *(v6 + 16);
      if (v7)
      {
        v7(v4, a1, a2);
      }
    }
  }

  return 0;
}

__CFString *FigCaptionRendererParentInterval_FigCaptionRendererParentIntervalProtocol_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"\tFigCaptionRendererParentInterval <FigCaptionRendererParentIntervalProtocol> on <%p>", a1);
  return Mutable;
}

uint64_t FigCaptionRendererParentInterval_FigCaptionRendererParentIntervalProtocol_AddChildInterval(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigBaseObject = FigBytePumpGetFigBaseObject(DerivedStorage);
  v19 = v4;
  FigCaptionRendererIntervalProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (ProtocolVTable && (v6 = *(ProtocolVTable + 16)) != 0 && (v7 = *(v6 + 8)) != 0 && !v7(a2, &FigBaseObject))
  {
    v8 = *(DerivedStorage + 24);
    v9 = (FigBaseObject / v8);
    v10 = ((FigBaseObject + v19) / v8);
    if (v9 <= v10)
    {
      v11 = *MEMORY[0x1E695E480];
      v12 = v10 + 1;
      v13 = MEMORY[0x1E695E9C0];
      do
      {
        v14 = CFStringCreateWithFormat(v11, 0, @"%ld", v9);
        Value = CFDictionaryGetValue(*(DerivedStorage + 16), v14);
        if (!Value)
        {
          Mutable = CFArrayCreateMutable(v11, 0, v13);
          if (!Mutable)
          {
            FigCaptionRendererParentInterval_FigCaptionRendererParentIntervalProtocol_AddChildInterval_cold_1(v14);
            return 0;
          }

          Value = Mutable;
          CFDictionarySetValue(*(DerivedStorage + 16), v14, Mutable);
          CFRelease(Value);
        }

        CFArrayAppendValue(Value, a2);
        if (v14)
        {
          CFRelease(v14);
        }

        ++v9;
      }

      while (v12 != v9);
    }
  }

  else
  {
    FigCaptionRendererParentInterval_FigCaptionRendererParentIntervalProtocol_AddChildInterval_cold_2();
  }

  return 0;
}

uint64_t FigCaptionRendererParentInterval_FigCaptionRendererParentIntervalProtocol_RemoveChildInterval(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigBaseObject = FigBytePumpGetFigBaseObject(DerivedStorage);
  v19 = v4;
  FigCaptionRendererIntervalProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (ProtocolVTable && (v6 = *(ProtocolVTable + 16)) != 0 && (v7 = *(v6 + 8)) != 0 && !v7(a2, &FigBaseObject))
  {
    v8 = *(DerivedStorage + 24);
    v9 = (FigBaseObject / v8);
    v10 = ((FigBaseObject + v19) / v8);
    if (v9 <= v10)
    {
      v11 = *MEMORY[0x1E695E480];
      v12 = v10 + 1;
      while (1)
      {
        v13 = CFStringCreateWithFormat(v11, 0, @"%ld", v9);
        Value = CFDictionaryGetValue(*(DerivedStorage + 16), v13);
        if (Value)
        {
          v15 = Value;
          v20.length = CFArrayGetCount(Value);
          v20.location = 0;
          FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v15, v20, a2);
          if ((FirstIndexOfValue & 0x8000000000000000) == 0)
          {
            CFArrayRemoveValueAtIndex(v15, FirstIndexOfValue);
          }

          if (!CFArrayGetCount(v15))
          {
            break;
          }
        }

        if (v13)
        {
          goto LABEL_12;
        }

LABEL_13:
        if (v12 == ++v9)
        {
          return 0;
        }
      }

      CFDictionaryRemoveValue(*(DerivedStorage + 16), v13);
      if (!v13)
      {
        goto LABEL_13;
      }

LABEL_12:
      CFRelease(v13);
      goto LABEL_13;
    }
  }

  else
  {
    FigCaptionRendererParentInterval_FigCaptionRendererParentIntervalProtocol_RemoveChildInterval_cold_1();
  }

  return 0;
}

uint64_t FigCaptionRendererParentInterval_FigCaptionRendererParentIntervalProtocol_RemoveAllChildIntervals()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFDictionaryRemoveAllValues(*(DerivedStorage + 16));
  return 0;
}

uint64_t FigCaptionRendererParentInterval_FigCaptionRendererParentIntervalProtocol_GetChildIntervalsAt(double a1, double a2, uint64_t a3, __CFArray **a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (a2 >= 0.0)
  {
    v10 = copySubIntervalsAt(a1);
    if (v10)
    {
      v11 = v10;
      v30.length = CFArrayGetCount(v10);
      v30.location = 0;
      CFArrayAppendArray(Mutable, v11, v30);
      CFRelease(v11);
    }

    v12 = copySubIntervalsAt(a1 + a2);
    if (v12)
    {
      v13 = v12;
      v31.length = CFArrayGetCount(v12);
      v31.location = 0;
      CFArrayAppendArray(Mutable, v13, v31);
      CFRelease(v13);
    }

    Count = CFDictionaryGetCount(*(DerivedStorage + 16));
    v15 = *(DerivedStorage + 24);
    v16 = (a1 / v15);
    v17 = (a1 + a2) / v15;
    v18 = v17;
    if (v17 - v16 + 1 >= Count)
    {
      context[1] = v17;
      context[2] = Mutable;
      context[0] = v16;
      *&context[3] = a1;
      *&context[4] = a2;
      CFDictionaryApplyFunction(*(DerivedStorage + 16), fcri_getIntervalsByRange, context);
    }

    else if (v18 - 1 > v16)
    {
      v19 = v16 + 1;
      do
      {
        v20 = CFStringCreateWithFormat(v8, 0, @"%ld", v19);
        Value = CFDictionaryGetValue(*(DerivedStorage + 16), v20);
        if (Value)
        {
          v22 = Value;
          v32.length = CFArrayGetCount(Value);
          v32.location = 0;
          CFArrayAppendArray(Mutable, v22, v32);
        }

        if (v20)
        {
          CFRelease(v20);
        }

        ++v19;
      }

      while (v18 != v19);
    }

    do
    {
      if (CFArrayGetCount(Mutable) < 1)
      {
        break;
      }

      v23 = 0;
      v24 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(Mutable, v23);
        v29.length = CFArrayGetCount(Mutable);
        v29.location = 0;
        LastIndexOfValue = CFArrayGetLastIndexOfValue(Mutable, v29, ValueAtIndex);
        if (LastIndexOfValue > v23)
        {
          CFArrayRemoveValueAtIndex(Mutable, LastIndexOfValue);
          v24 = 1;
        }

        ++v23;
      }

      while (CFArrayGetCount(Mutable) > v23);
    }

    while (v24);
  }

  *a4 = Mutable;
  return 0;
}

CFMutableArrayRef copySubIntervalsAt(double a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v5 = CFStringCreateWithFormat(v3, 0, @"%ld", (a1 / *(DerivedStorage + 24)));
  Value = CFDictionaryGetValue(*(DerivedStorage + 16), v5);
  if (Value)
  {
    v7 = Value;
    *context = a1;
    context[1] = Mutable;
    v10.length = CFArrayGetCount(Value);
    v10.location = 0;
    CFArrayApplyFunction(v7, v10, findAndSaveCoveringIntervalsApplier, context);
  }

  else if (Mutable)
  {
    CFRelease(Mutable);
    Mutable = 0;
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return Mutable;
}

void fcri_getIntervalsByRange(const __CFString *a1, const __CFArray *a2, uint64_t a3)
{
  IntValue = CFStringGetIntValue(a1);
  if (*a3 <= IntValue && a2 && *(a3 + 8) >= IntValue)
  {
    v6 = *(a3 + 24);
    v7 = *(a3 + 16);
    v8.length = CFArrayGetCount(a2);
    v8.location = 0;
    CFArrayApplyFunction(a2, v8, findAndSaveOverlappingIntervalsApplier, &v6);
  }
}

void findAndSaveCoveringIntervalsApplier(const void *a1, uint64_t a2)
{
  FigBaseObject = FigBytePumpGetFigBaseObject(a1);
  v9 = v4;
  FigCaptionRendererIntervalProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (ProtocolVTable && (v6 = *(ProtocolVTable + 16)) != 0 && (v7 = *(v6 + 8)) != 0 && !v7(a1, &FigBaseObject))
  {
    if (FigBaseObject <= *a2 && *a2 <= FigBaseObject + v9)
    {
      CFArrayAppendValue(*(a2 + 8), a1);
    }
  }

  else
  {
    findAndSaveCoveringIntervalsApplier_cold_1();
  }
}

void findAndSaveOverlappingIntervalsApplier(const void *a1, uint64_t a2)
{
  FigBaseObject = FigBytePumpGetFigBaseObject(a1);
  v16 = v4;
  FigCaptionRendererIntervalProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (ProtocolVTable && (v6 = *(ProtocolVTable + 16)) != 0 && (v7 = *(v6 + 8)) != 0 && !v7(a1, &FigBaseObject))
  {
    v8 = FigBaseObject + v16;
    v9 = *a2;
    if (FigBaseObject <= *a2 && v9 <= v8)
    {
      goto LABEL_7;
    }

    v10 = v9 > v8;
    v11 = v9 + *(a2 + 8);
    v12 = v9 > FigBaseObject;
    v13 = FigBaseObject > v11;
    if (FigBaseObject > v11)
    {
      v12 = 1;
    }

    if (v11 > v8)
    {
      v13 = 1;
    }

    if (v8 > v11)
    {
      v10 = 1;
    }

    v14 = !v13 || !v12;
    if (v14 || !v10)
    {
LABEL_7:
      CFArrayAppendValue(*(a2 + 16), a1);
    }
  }

  else
  {
    findAndSaveOverlappingIntervalsApplier_cold_1();
  }
}

uint64_t RegisterFigCaptionRendererParentIntervalBaseType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

double OUTLINED_FUNCTION_4_85()
{
  result = 0.0;
  v0[5] = 0u;
  v0[6] = 0u;
  v0[3] = 0u;
  v0[4] = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_7_51()
{

  return CMBaseObjectGetVTable();
}

uint64_t OUTLINED_FUNCTION_8_36()
{

  return FigAtomStreamInitWithByteStream();
}

uint64_t FigTTMLDocumentWriterCreateDivBuilder(uint64_t a1, const void *a2, void *a3)
{
  if (!a2)
  {
    FigTTMLDocumentWriterCreateDivBuilder_cold_2(&v8);
    return v8;
  }

  if (!a3)
  {
    FigTTMLDocumentWriterCreateDivBuilder_cold_1(&v8);
    return v8;
  }

  FigTTMLDocumentWriterGetClassID();
  v5 = CMDerivedObjectCreate();
  if (!v5)
  {
    FigTTMLDocumentWriterGetCMBaseObject(0);
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *DerivedStorage = CFRetain(a2);
    DerivedStorage[1] = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    *a3 = 0;
  }

  return v5;
}

void figTTMLDocumentWriterDivBuilder_Finalize(uint64_t a1)
{
  FigTTMLDocumentWriterGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

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
}

uint64_t figTTMLDocumentWriterDivBuilder_SetAttribute(uint64_t a1, const void *a2, const void *a3)
{
  FigTTMLDocumentWriterGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigTTMLDocumentWriterElementSetAttribute(*(DerivedStorage + 24), a2, a3);
  return 0;
}

uint64_t figTTMLDocumentWriterDivBuilder_Flush(uint64_t a1)
{
  FigTTMLDocumentWriterGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage[3])
  {
    return 4294950721;
  }

  v3 = *DerivedStorage;

  return FigTTMLDocumentWriterFlush(v3);
}

uint64_t synthesizeDivAttributes(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x19A8D3660](&initPropertyToAttributeMapOnce, initPropertyToAttributeMap);
  result = FigTTMLDocumentWriterRegionTimelineWriteAttributesAndSetElements(a2, a1, sPropertyToAttributeMap);
  if (result)
  {
    *(a3 + 8) = result;
  }

  return result;
}

void initPropertyToAttributeMap()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], 0);
  CFDictionarySetValue(Mutable, *MEMORY[0x1E69612E8], FigTTMLDocumentWriterMapPropertyToAttribute_BackgroundColor);
  CFDictionarySetValue(Mutable, *MEMORY[0x1E6961330], FigTTMLDocumentWriterMapPropertyToAttribute_Hidden);
  CFDictionarySetValue(Mutable, *MEMORY[0x1E6961370], FigTTMLDocumentWriterMapPropertyToAttribute_Invisible);
  sPropertyToAttributeMap = Mutable;
}

uint64_t removeUnnecessaryChildDivElements(uint64_t a1)
{
  do
  {
    ChildrenCount = FigTTMLDocumentWriterElementGetChildrenCount(a1);
    if (ChildrenCount < 1)
    {
      break;
    }

    v3 = ChildrenCount;
    v4 = 0;
    for (i = 0; i != v3; ++i)
    {
      ChildAtIndex = FigTTMLDocumentWriterElementGetChildAtIndex(a1, i);
      if (ChildAtIndex)
      {
        v7 = ChildAtIndex;
        v8 = CFGetTypeID(ChildAtIndex);
        if (v8 == FigTTMLDocumentWriterElementGetTypeID() && FigTTMLDocumentWriterElementGetElementType(v7) == 3 && !FigTTMLDocumentWriterElementGetAttributeCount(v7))
        {
          v9 = FigTTMLDocumentWriterElementGetChildrenCount(v7);
          if (v9 < 1)
          {
LABEL_13:
            v15 = FigTTMLDocumentWriterElementGetChildrenCount(v7);
            if (v15 >= 1)
            {
              v16 = v15;
              for (j = 0; j != v16; ++j)
              {
                v18 = FigTTMLDocumentWriterElementGetChildAtIndex(v7, j);
                FigTTMLDocumentWriterElementInsertChildNodeBeforeNode(a1, v18, v7);
              }
            }

            FigTTMLDocumentWriterElementRemoveChildNode(a1, v7);
            v4 = 1;
          }

          else
          {
            v10 = v9;
            v11 = 0;
            while (1)
            {
              v12 = FigTTMLDocumentWriterElementGetChildAtIndex(v7, v11);
              if (!v12)
              {
                break;
              }

              v13 = v12;
              v14 = CFGetTypeID(v12);
              if (v14 != FigTTMLDocumentWriterElementGetTypeID() || FigTTMLDocumentWriterElementGetElementType(v13) != 3)
              {
                break;
              }

              if (v10 == ++v11)
              {
                goto LABEL_13;
              }
            }
          }
        }
      }
    }
  }

  while (v4);
  return 0;
}

uint64_t RegisterFigRemakerType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigRemakerGetTypeID()
{
  MEMORY[0x19A8D3660](&FigRemakerGetClassID_sRegisterFigRemakerTypeOnce, RegisterFigRemakerType);

  return CMBaseClassGetCFTypeID();
}

uint64_t RegisterFigAssetReaderType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigAssetReaderGetTypeID()
{
  MEMORY[0x19A8D3660](&FigAssetReaderGetClassID_sRegisterFigAssetReaderTypeOnce, RegisterFigAssetReaderType);

  return CMBaseClassGetCFTypeID();
}

uint64_t RegisterFigAssetWriterType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigAssetWriterGetTypeID()
{
  MEMORY[0x19A8D3660](&FigAssetWriterGetClassID_sRegisterFigAssetWriterTypeOnce, RegisterFigAssetWriterType);

  return CMBaseClassGetCFTypeID();
}

void figTTMLLayout_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 136);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 136) = 0;
  }

  FigTTMLReleaseNodeBaseStorage(DerivedStorage);
}

CFStringRef figTTMLLayout_CopyDebugDesc()
{
  CMBaseObjectGetDerivedStorage();
  v0 = FigCFCopyCompactDescription();
  v1 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"layout: %@", v0);
  if (v0)
  {
    CFRelease(v0);
  }

  return v1;
}

uint64_t figTTMLLayout_CopyChildNodeArray(const void *a1, CFArrayRef *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v5 = DerivedStorage;
    v6 = CFGetAllocator(a1);
    Copy = CFArrayCreateCopy(v6, *(v5 + 136));
    result = 0;
    *a2 = Copy;
  }

  else
  {
    figTTMLLayout_CopyChildNodeArray_cold_1(&v9);
    return v9;
  }

  return result;
}

uint64_t figTTMLLayout_GetNodeType(uint64_t a1, _DWORD *a2)
{
  if (a2)
  {
    result = 0;
    *a2 = 9;
  }

  else
  {
    v6 = v2;
    v7 = v3;
    figTTMLLayout_GetNodeType_cold_1(&v5);
    return v5;
  }

  return result;
}

uint64_t FigMediaRequestSchedulerAddResourceToReadQueue(uint64_t a1, const void *a2)
{
  FigSimpleMutexLock();
  Mutable = *(a1 + 128);
  if (Mutable || (AllocatorForMedia = FigGetAllocatorForMedia(), Mutable = CFArrayCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9C0]), (*(a1 + 128) = Mutable) != 0))
  {
    CFArrayAppendValue(Mutable, a2);
    v6 = 0;
  }

  else
  {
    FigMediaRequestSchedulerAddResourceToReadQueue_cold_1(&v8);
    v6 = v8;
  }

  FigSimpleMutexUnlock();
  return v6;
}

uint64_t FigMediaRequestSchedulerCreate(int a1, const void *a2, const void *a3, const void *a4, const void *a5, int a6, const void *a7, const void *a8, CFTypeRef a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, NSObject *a14, uint64_t *a15)
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (a15)
  {
    context = xmmword_1E748D100;
    if (mrs_getTypeID_once != -1)
    {
      dispatch_once_f(&mrs_getTypeID_once, &context, mrstUtil_registerClass);
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v19 = Instance;
      if (a2)
      {
        v20 = CFRetain(a2);
      }

      else
      {
        v20 = 0;
      }

      *(v19 + 24) = v20;
      if (a3)
      {
        v21 = CFRetain(a3);
      }

      else
      {
        v21 = 0;
      }

      *(v19 + 32) = v21;
      if (a4)
      {
        v22 = CFRetain(a4);
      }

      else
      {
        v22 = 0;
      }

      *(v19 + 40) = v22;
      v23 = a5;
      if (a5)
      {
        v23 = CFRetain(a5);
      }

      *(v19 + 48) = v23;
      v24 = a7;
      if (a7)
      {
        v24 = CFRetain(a7);
      }

      *(v19 + 64) = v24;
      v25 = a8;
      if (a8)
      {
        v25 = CFRetain(a8);
      }

      *(v19 + 72) = v25;
      if (a9)
      {
        v26 = CFRetain(a9);
      }

      else
      {
        v26 = 0;
      }

      *(v19 + 80) = v26;
      *(v19 + 96) = a13;
      *(v19 + 104) = a14;
      *(v19 + 56) = a6;
      *(v19 + 112) = a10;
      *(v19 + 120) = a11;
      if (a14)
      {
        dispatch_retain(a14);
      }

      v27 = FigCFWeakReferenceHolderCreateWithReferencedObject();
      *(v19 + 88) = v27;
      if (v27)
      {
        v28 = FigReentrantMutexCreate();
        *(v19 + 16) = v28;
        if (v28)
        {
          result = 0;
          *a15 = v19;
          return result;
        }

        v30 = 393;
      }

      else
      {
        v30 = 390;
      }

      FigMediaRequestSchedulerCreate_cold_1(v30, v19, &context);
    }

    else
    {
      FigMediaRequestSchedulerCreate_cold_2(&context);
    }
  }

  else
  {
    FigMediaRequestSchedulerCreate_cold_3(&context);
  }

  return context;
}

void mrs_resourceLoadDidProduceDataOutput(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  FigSimpleMutexLock();
  v15 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v15)
  {
    v16 = v15;
    FigSimpleMutexUnlock();
    v17 = CFGetTypeID(*(a2 + 160));
    TypeID = FigSessionDataSpecifierGetTypeID();
    if (!a8 && v17 == TypeID)
    {
      FigMediaRequestDeliverOnceWithCacheSaveDataToCache(a1, a6);
    }

    (**(a2 + 96))(a2, *(a2 + 160), v16, a3, a4, a5, a6, a7);
    FigSimpleMutexLock();
    if (a7)
    {
      mrs_readNextResource(a2);
    }

    FigSimpleMutexUnlock();

    CFRelease(v16);
  }

  else
  {
    mrs_resourceLoadDidProduceDataOutput_cold_1();
  }
}

void mrs_resourceLoadDidFail(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a2 + 16;
  FigSimpleMutexLock();
  v7 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v7)
  {
    mrs_resourceLoadDidFail_cold_1(v6, a2, v7, a4);
  }

  else
  {
    mrs_resourceLoadDidFail_cold_2();
  }
}

void mrs_issueDidFinishReadQueueCallbackOnCallbackQueue(void *a1)
{
  (*(a1[2] + 16))(*a1, a1[1]);
  if (*a1)
  {
    CFRelease(*a1);
  }

  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
  }

  MallocZoneForMedia = FigGetMallocZoneForMedia();

  malloc_zone_free(MallocZoneForMedia, a1);
}

void mrs_finalize(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    CFRelease(v2);
    a1[3] = 0;
  }

  v3 = a1[4];
  if (v3)
  {
    CFRelease(v3);
    a1[4] = 0;
  }

  v4 = a1[5];
  if (v4)
  {
    CFRelease(v4);
    a1[5] = 0;
  }

  v5 = a1[6];
  if (v5)
  {
    CFRelease(v5);
    a1[6] = 0;
  }

  v6 = a1[8];
  if (v6)
  {
    CFRelease(v6);
    a1[8] = 0;
  }

  v7 = a1[9];
  if (v7)
  {
    CFRelease(v7);
    a1[9] = 0;
  }

  v8 = a1[10];
  if (v8)
  {
    CFRelease(v8);
    a1[10] = 0;
  }

  v9 = a1[11];
  if (v9)
  {
    CFRelease(v9);
    a1[11] = 0;
  }

  v10 = a1[16];
  if (v10)
  {
    CFRelease(v10);
    a1[16] = 0;
  }

  v11 = a1[19];
  if (v11)
  {
    CFRelease(v11);
    a1[19] = 0;
  }

  v12 = a1[20];
  if (v12)
  {
    CFRelease(v12);
    a1[20] = 0;
  }

  FigSimpleMutexDestroy();
  v13 = a1[13];
  if (v13)
  {
    dispatch_release(v13);
    a1[13] = 0;
  }
}

uint64_t mrstUtil_registerClass(uint64_t a1)
{
  result = _CFRuntimeRegisterClass();
  **(a1 + 8) = result;
  return result;
}

uint64_t __streamPlaylistParserRemote_ensureClientEstablished_block_invoke(uint64_t a1)
{
  result = FigXPCRemoteClientCreate();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t __FigStreamPlaylistParserRemoteGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED4CAE28 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_3_82()
{

  return FigCFStringGetCStringPtrAndBufferToFree();
}

void OUTLINED_FUNCTION_4_86(uint64_t value)
{

  xpc_dictionary_set_uint64(v2, v1, value);
}

uint64_t FigXMLServiceStartServer()
{
  if (FigXMLServiceStartServer_sFigXMLServiceServerSetupOnce != -1)
  {
    FigXMLServiceStartServer_cold_1();
  }

  return FigXMLServiceStartServer_err;
}

uint64_t __FigXMLServiceStartServer_block_invoke()
{
  result = FigXPCServerStart();
  FigXMLServiceStartServer_err = result;
  return result;
}

CFStringRef CopyKeyStringForTrackReferenceOSType(const __CFAllocator *a1, int a2)
{
  if (a2 > 1919837297)
  {
    if (a2 > 1936945762)
    {
      if (a2 == 1936945763)
      {
        v4 = @"ssrc";

        return CFRetain(v4);
      }

      if (a2 == 1953325924)
      {
        v4 = @"tmcd";

        return CFRetain(v4);
      }
    }

    else
    {
      if (a2 == 1919837298)
      {
        v4 = @"rndr";

        return CFRetain(v4);
      }

      if (a2 == 1935832172)
      {
        v4 = @"sbtl";

        return CFRetain(v4);
      }
    }
  }

  else if (a2 > 1667785071)
  {
    if (a2 == 1667785072)
    {
      v4 = @"chap";

      return CFRetain(v4);
    }

    if (a2 == 1717660780)
    {
      v4 = @"fall";

      return CFRetain(v4);
    }
  }

  else
  {
    if (a2 == 1667523952)
    {
      v4 = @"cdep";

      return CFRetain(v4);
    }

    if (a2 == 1667527523)
    {
      v4 = @"cdsc";

      return CFRetain(v4);
    }
  }

  return CFStringCreateWithFormat(a1, 0, @"%c%c%c%c", HIBYTE(a2), BYTE2(a2), BYTE1(a2), a2, v2, v3);
}

uint64_t GetTrackReferenceOSTypeFromKeyString(const __CFString *cf2)
{
  if (CFEqual(@"chap", cf2))
  {
    return 1667785072;
  }

  if (CFEqual(@"sbtl", cf2))
  {
    return 1935832172;
  }

  if (CFEqual(@"tmcd", cf2))
  {
    return 1953325924;
  }

  if (CFEqual(@"ssrc", cf2))
  {
    return 1936945763;
  }

  if (CFEqual(@"fall", cf2))
  {
    return 1717660780;
  }

  v2 = 1667523952;
  if (CFEqual(@"cdsc", cf2))
  {
    return 1667527523;
  }

  if (CFEqual(@"rndr", cf2))
  {
    return 1919837298;
  }

  if (!CFEqual(@"cdep", cf2))
  {
    if (CFStringGetLength(cf2) == 4)
    {
      *buffer = 0;
      v7.location = 0;
      v7.length = 4;
      Bytes = CFStringGetBytes(cf2, v7, 0, 0, 0, buffer, 4, 0);
      v4 = bswap32(*buffer);
      if (Bytes)
      {
        return v4;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

uint64_t FigAudioProcessingUnitPackedCurveGetTypeID()
{
  if (_MergedGlobals_76 != -1)
  {
    FigAudioProcessingUnitPackedCurveGetTypeID_cold_1();
  }

  return qword_1ED4CAE38;
}

BOOL fapupc_Equal(void *a1, void *a2)
{
  v2 = 40 * a1[2];
  if (v2 + 12 * (a1[4] + a1[3]) == 12 * (a2[4] + a2[3]) + 40 * a2[2] && (a1[2] == a2[2] ? (v3 = a1[3] == a2[3]) : (v3 = 0), v3 ? (v4 = a1[4] == a2[4]) : (v4 = 0), v4))
  {
    return memcmp(a1 + 9, a2 + 9, v2 + 12 * (a1[4] + a1[3])) == 0;
  }

  else
  {
    return 0;
  }
}

uint64_t __FigAudioProcessingUnitPackedCurveGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED4CAE38 = result;
  return result;
}

uint64_t FigAudioProcessingUnitPackedCurveIteratorGetSnapshot(uint64_t a1, void *a2, void *a3, void *a4)
{
  *a2 = *(*(a1 + 16) + 40);
  *a3 = *(a1 + 32);
  *a4 = *(*(a1 + 16) + 24);
  return 0;
}

uint64_t FigAudioProcessingUnitCurveIteratorGetTypeID()
{
  if (qword_1ED4CAE40 != -1)
  {
    FigAudioProcessingUnitCurveIteratorGetTypeID_cold_1();
  }

  return qword_1ED4CAE48;
}

void fapuci_Finalize(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t __FigAudioProcessingUnitCurveIteratorGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED4CAE48 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_109(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMTime *time1, uint64_t a8, CMTime *time2, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, __int128 time1a, uint64_t time1_16, uint64_t a16, uint64_t time2a, uint64_t time2_8, uint64_t time2_16, __int128 a20, uint64_t a21)
{
  time1a = a20;
  time1_16 = a21;

  return CMTimeCompare(&time1a, &time2a);
}

CMTime *OUTLINED_FUNCTION_2_106(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, CMTime *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{

  return CMTimeMake(&a19, 1, 1000000000);
}

CMTime *OUTLINED_FUNCTION_3_83(uint64_t a1, uint64_t a2, uint64_t a3, CMTime *rhs, CMTime *lhs, uint64_t a6, CMTime *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t rhsa, uint64_t rhs_8, uint64_t rhs_16, uint64_t lhsa, uint64_t lhs_8, uint64_t lhs_16, uint64_t a18, uint64_t a19)
{

  return CMTimeSubtract(&a19, &lhsa, &rhsa);
}

CMTime *OUTLINED_FUNCTION_6_70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, CMTime *time, CMTime *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t timea, uint64_t time_8, uint64_t time_16, uint64_t a22)
{

  return CMTimeAbsoluteValue(&a22, &timea);
}

uint64_t OUTLINED_FUNCTION_7_52(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, CMTime *time2, CMTime *time1, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t time2a, uint64_t time2_8, uint64_t time2_16, uint64_t time1a)
{

  return CMTimeCompare(&time1a, &time2a);
}

uint64_t FigTTMLExtensionCreate(const __CFAllocator *a1, uint64_t a2, __int128 *a3, void *a4)
{
  v8 = FigTTMLGetLibXMLAccess();
  if (!v8)
  {
    FigTTMLExtensionCreate_cold_4(&v16);
LABEL_15:
    v11 = 0;
LABEL_17:
    v14 = v16;
    goto LABEL_20;
  }

  if (!a4)
  {
    FigTTMLExtensionCreate_cold_3(&v16);
    goto LABEL_15;
  }

  FigTTMLNodeGetClassID();
  v9 = CMDerivedObjectCreate();
  if (v9 || (DerivedStorage = CMBaseObjectGetDerivedStorage(), v9 = FigTTMLInitializeNodeBaseStorage(DerivedStorage, a3), v9) || (v9 = FigTTMLAddCurrentElementAttributesToDictionary(a2, *(DerivedStorage + 24)), v9))
  {
    v14 = v9;
    v11 = 0;
    goto LABEL_20;
  }

  v11 = (*(v8 + 104))(a2);
  v12 = CFStringCreateWithCString(a1, v11, 0x8000100u);
  if (!v12)
  {
    FigTTMLExtensionCreate_cold_1(&v16);
    goto LABEL_17;
  }

  v13 = v12;
  if (!CFStringGetLength(v12))
  {
    FigTTMLExtensionCreate_cold_1(&v16);
    v14 = v16;
    goto LABEL_19;
  }

  v14 = FigTTMLSkipNode(a2, a3, *(DerivedStorage + 128));
  if (v14)
  {
LABEL_19:
    CFRelease(v13);
LABEL_20:
    if (!v8)
    {
      return v14;
    }

    goto LABEL_10;
  }

  *(DerivedStorage + 144) = v13;
  *a4 = 0;
LABEL_10:
  (*(v8 + 112))(v11);
  return v14;
}

void figTTMLExtension_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 136);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 136) = 0;
  }

  v2 = *(DerivedStorage + 144);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 144) = 0;
  }

  FigTTMLReleaseNodeBaseStorage(DerivedStorage);
}

CFStringRef figTTMLExtension_CopyDebugDesc()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = FigCFCopyCompactDescription();
  v2 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"extension[%@] : %@(%@)", v1, *(DerivedStorage + 144), *(DerivedStorage + 136));
  if (v1)
  {
    CFRelease(v1);
  }

  return v2;
}

uint64_t figTTMLExtension_CopyChildNodeArray(const void *a1, CFMutableArrayRef *a2)
{
  if (a2)
  {
    v3 = CFGetAllocator(a1);
    Mutable = CFArrayCreateMutable(v3, 0, MEMORY[0x1E695E9C0]);
    result = 0;
    *a2 = Mutable;
  }

  else
  {
    figTTMLExtension_CopyChildNodeArray_cold_1(&v6);
    return v6;
  }

  return result;
}

uint64_t figTTMLExtension_GetNodeType(uint64_t a1, _DWORD *a2)
{
  if (a2)
  {
    result = 0;
    *a2 = 19;
  }

  else
  {
    v6 = v2;
    v7 = v3;
    figTTMLExtension_GetNodeType_cold_1(&v5);
    return v5;
  }

  return result;
}

uint64_t FigRemakerRemoteCreateWithURLs(uint64_t a1, const __CFURL *a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7, unsigned int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 *a13, __int128 *a14, uint64_t a15, const __CFURL *a16, uint64_t a17, const __CFDictionary *a18, _DWORD *a19, _DWORD *a20, void *a21)
{
  v42 = 0;
  v43 = 0;
  v40 = 0;
  v41 = 0;
  v39 = 0;
  cf = 0;
  MEMORY[0x19A8D3660](&frr_OneTimeInitialization_sInitRemoteRemakerOnlyOnce, frr_OneTimeInitializationWork);
  if (!gRemakerRemoteClient)
  {
    v31 = 0;
    v32 = 4294955196;
LABEL_38:
    FigXPCRemoteClientKillServerOnTimeout();
    FigXPCRelease();
    FigXPCRelease();
    if (v31)
    {
      CFRelease(v31);
    }

    if (v40)
    {
      CFRelease(v40);
    }

    if (v39)
    {
      CFRelease(v39);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    return v32;
  }

  if (a2 && FigCFURLIsLocalResource() && a16 && remakerFamily_CFURLSchemeIsFile(a16) && a21)
  {
    if (a19)
    {
      *a19 = 0;
    }

    if (a20)
    {
      *a20 = 0;
    }

    v25 = FigXPCCreateBasicMessage();
    if (v25 || (v25 = FigXPCMessageSetCFURL(), v25) || (v25 = FigXPCMessageSetCFString(), v25) || (v25 = FigXPCMessageSetCFDictionary(), v25) || (xpc_dictionary_set_int64(v42, "Width", a5), xpc_dictionary_set_int64(v42, "Height", a6), v25 = FigXPCMessageSetCFDictionary(), v25) || (xpc_dictionary_set_uint64(v42, "VideoCodecType", a8), v25 = FigXPCMessageSetCFDictionary(), v25) || (v25 = FigXPCMessageSetCFDictionary(), v25) || (v25 = FigXPCMessageSetCFDictionary(), v25) || (v25 = FigXPCMessageSetCFDictionary(), v25) || (v35 = *a13, *&v36 = *(a13 + 2), v25 = FigXPCMessageSetCMTime(), v25) || (v26 = a14[1], v35 = *a14, v36 = v26, v37 = a14[2], v25 = FigXPCMessageSetCMTimeRange(), v25) || (v25 = FigXPCMessageSetCFURL(), v25) || (v25 = FigXPCMessageSetCFDictionary(), v25) || (v25 = FigXPCMessageSetCFDictionary(), v25) || (v25 = frr_SandboxRegisterURLAddToXPCMessageAndCopyRegistration(a2, 1, v42, 0x196EFB1C5, &v40), v25) || (v25 = frr_SandboxRegisterURLAddToXPCMessageAndCopyRegistration(a16, 0, v42, 0x196EFB1E5, &v39), v25) || CFDictionaryContainsKey(a18, @"Remaker_TemporaryDirectoryURL") && (Value = CFDictionaryGetValue(a18, @"Remaker_TemporaryDirectoryURL"), v25 = frr_SandboxRegisterURLAddToXPCMessageAndCopyRegistration(Value, 0, v42, 0x196EFB203, &cf), v25) || (v25 = FigXPCRemoteClientSendSyncMessageCreatingReply(), v25))
    {
      v32 = v25;
      v31 = 0;
    }

    else
    {
      int64 = xpc_dictionary_get_int64(v41, "WriterAudioTrackIDOut");
      v28 = xpc_dictionary_get_int64(v41, "WriterVideoTrackIDOut");
      uint64 = xpc_dictionary_get_uint64(v41, *MEMORY[0x1E69615A0]);
      if (uint64)
      {
        v30 = frr_CreateEmptyWrapper(1, uint64, &v43);
        v31 = v43;
        if (v30)
        {
          v32 = v30;
        }

        else
        {
          remoteRemakerFamily_storeSandboxRegistration(v43, v40);
          remoteRemakerFamily_storeSandboxRegistration(v31, v39);
          remoteRemakerFamily_storeSandboxRegistration(v31, cf);
          *a21 = v31;
          if (a19)
          {
            *a19 = int64;
          }

          v31 = 0;
          v32 = 0;
          if (a20)
          {
            *a20 = v28;
          }
        }
      }

      else
      {
        FigRemakerRemoteCreateWithURLs_cold_1(&v35);
        v31 = 0;
        v32 = v35;
      }
    }

    goto LABEL_38;
  }

  return FigSignalErrorAtGM();
}

const void *frr_CreateEmptyWrapper(int a1, uint64_t a2, void *a3)
{
  if (a1 == 2)
  {
    FigAssetReaderGetClassID();
  }

  else if (a1 == 1)
  {
    FigRemakerGetClassID();
  }

  else
  {
    FigAssetWriterGetClassID();
  }

  v6 = CMDerivedObjectCreate();
  if (!v6)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *(DerivedStorage + 4) = a1;
    *(DerivedStorage + 36) = 0;
    v8 = FigXPCRemoteClientAssociateObject();
    if (v8)
    {
      return v8;
    }

    else
    {
      *(DerivedStorage + 8) = a2;
      *(DerivedStorage + 128) = 0;
      if (sRemoteRemakerPixelBufferOrigin != -1)
      {
        frr_CreateEmptyWrapper_cold_1();
      }

      v12 = 0;
      if (frr_shouldUseFigPixelBufferMemorySharing_onceToken != -1)
      {
        frr_CreateEmptyWrapper_cold_2();
      }

      FigSimpleMutexLock();
      v9 = CMBaseObjectGetDerivedStorage();
      if (qword_1ED4CAE68)
      {
        FigPixelBufferOriginServerCopyPixelBufferOriginForObjectID();
        qword_1ED4CAE68 = 0;
      }

      ObjectID = remoteRemakerFamily_CreateXPCMessage(0, 2003136610, &v12);
      if (ObjectID || (ObjectID = FigPixelBufferOriginBeginEstablishingPixelBufferRecipientByFillingInXPCMessage1(), ObjectID) || (ObjectID = FigXPCRemoteClientSendSyncMessageCreatingReply(), ObjectID) || (ObjectID = FigPixelBufferOriginCompleteEstablishingPixelBufferRecipientUsingXPCMessage2(), ObjectID) || (ObjectID = FigPixelBufferOriginGetObjectID(), ObjectID))
      {
        v6 = ObjectID;
      }

      else
      {
        v6 = *(v9 + 16);
        *(v9 + 16) = 0;
        if (v6)
        {
          CFRelease(v6);
          v6 = 0;
        }
      }

      FigSimpleMutexUnlock();
      FigXPCRelease();
      FigXPCRelease();
      if (!v6)
      {
        *a3 = 0;
      }
    }
  }

  return v6;
}

uint64_t FigRemakerRemoteCreateBaseWithURLs(uint64_t a1, const __CFURL *a2, uint64_t a3, const __CFURL *a4, uint64_t a5, uint64_t a6, const __CFDictionary *a7, void *a8)
{
  v27 = 0;
  v28 = 0;
  cf = 0;
  xdict = 0;
  v23 = 0;
  v24 = 0;
  MEMORY[0x19A8D3660](&frr_OneTimeInitialization_sInitRemoteRemakerOnlyOnce, frr_OneTimeInitializationWork);
  if (!gRemakerRemoteClient)
  {
    v20 = 0;
    v19 = 4294955196;
    goto LABEL_30;
  }

  if (a7)
  {
    v13 = *MEMORY[0x1E695E4D0];
    v14 = v13 == CFDictionaryGetValue(a7, @"Remaker_PermitNonLocalSourceURLs");
  }

  else
  {
    v14 = 0;
  }

  if (a2 | a3)
  {
    if (!a2 || (FigCFURLIsLocalResource() ? (v15 = 1) : (v15 = v14), (v15 & 1) != 0))
    {
      if (a4 && remakerFamily_CFURLSchemeIsFile(a4) && a8)
      {
        ObjectID = FigXPCCreateBasicMessage();
        if (ObjectID)
        {
          goto LABEL_43;
        }

        ObjectID = FigXPCMessageSetCFURL();
        if (ObjectID)
        {
          goto LABEL_43;
        }

        if (a3)
        {
          v22 = 0;
          ObjectID = FigFormatReaderXPCRemoteGetObjectID(a3, &v22);
          if (ObjectID)
          {
            goto LABEL_43;
          }

          FigRemakerRemoteCreateBaseWithURLs_cold_2(&v27, &v22);
        }

        ObjectID = FigXPCMessageSetCFURL();
        if (!ObjectID)
        {
          ObjectID = FigXPCMessageSetCFDictionary();
          if (!ObjectID)
          {
            ObjectID = FigXPCMessageSetCFDictionary();
            if (!ObjectID)
            {
              ObjectID = frr_SandboxRegisterURLAddToXPCMessageAndCopyRegistration(a2, 1, v27, 0x196EFB1C5, &cf);
              if (!ObjectID)
              {
                ObjectID = frr_SandboxRegisterURLAddToXPCMessageAndCopyRegistration(a4, 0, v27, 0x196EFB1E5, &v24);
                if (!ObjectID)
                {
                  Value = FigCFDictionaryGetValue();
                  if (!Value || (ObjectID = frr_SandboxRegisterURLAddToXPCMessageAndCopyRegistration(Value, 0, v27, 0x196EFB203, &v23), !ObjectID))
                  {
                    ObjectID = FigXPCRemoteClientSendSyncMessageCreatingReply();
                    if (!ObjectID)
                    {
                      uint64 = xpc_dictionary_get_uint64(xdict, *MEMORY[0x1E69615A0]);
                      if (!uint64)
                      {
                        FigRemakerRemoteCreateBaseWithURLs_cold_1(&v29);
                        v20 = 0;
                        v19 = v29;
                        goto LABEL_30;
                      }

                      v19 = frr_CreateEmptyWrapper(1, uint64, &v28);
                      v20 = v28;
                      if (v19)
                      {
LABEL_30:
                        FigXPCRemoteClientKillServerOnTimeout();
                        FigXPCRelease();
                        FigXPCRelease();
                        if (v20)
                        {
                          CFRelease(v20);
                        }

                        if (cf)
                        {
                          CFRelease(cf);
                        }

                        if (v24)
                        {
                          CFRelease(v24);
                        }

                        if (v23)
                        {
                          CFRelease(v23);
                        }

                        return v19;
                      }

                      remoteRemakerFamily_storeSandboxRegistration(v28, cf);
                      remoteRemakerFamily_storeSandboxRegistration(v20, v24);
                      remoteRemakerFamily_storeSandboxRegistration(v20, v23);
                      *a8 = v20;
LABEL_29:
                      v20 = 0;
                      goto LABEL_30;
                    }
                  }
                }
              }
            }
          }
        }

LABEL_43:
        v19 = ObjectID;
        goto LABEL_29;
      }
    }
  }

  return FigSignalErrorAtGM();
}

uint64_t FigAssetReaderRemoteCreateWithURLAndFormatReader(const __CFAllocator *a1, const __CFURL *a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5, void *a6)
{
  v24 = 0;
  v25 = 0;
  xdict = 0;
  v23 = 0;
  cf = 0;
  MEMORY[0x19A8D3660](&frr_OneTimeInitialization_sInitRemoteRemakerOnlyOnce, frr_OneTimeInitializationWork);
  if (!gRemakerRemoteClient)
  {
    v19 = 0;
    Mutable = 0;
    v18 = 4294955196;
    goto LABEL_24;
  }

  if (a5)
  {
    v11 = *MEMORY[0x1E695E4D0];
    v12 = v11 == CFDictionaryGetValue(a5, @"AssetReader_PermitNonLocalSourceURLs");
  }

  else
  {
    v12 = 0;
  }

  if (a2 | a3)
  {
    if (!a2 || (FigCFURLIsLocalResource() ? (v13 = 1) : (v13 = v12), (v13 & 1) != 0))
    {
      if (a6)
      {
        ObjectID = FigXPCCreateBasicMessage();
        if (ObjectID)
        {
          goto LABEL_34;
        }

        ObjectID = FigXPCMessageSetCFURL();
        if (ObjectID)
        {
          goto LABEL_34;
        }

        if (a3)
        {
          ObjectID = FigFormatReaderXPCRemoteGetObjectID(a3, &v24);
          if (ObjectID)
          {
            goto LABEL_34;
          }

          xpc_dictionary_set_uint64(v23, "SourceFormatReaderToken", v24);
        }

        ObjectID = FigXPCMessageSetCFDictionary();
        if (!ObjectID)
        {
          ObjectID = frr_SandboxRegisterURLAddToXPCMessageAndCopyRegistration(a2, 1, v23, 0x196EFB1C5, &cf);
          if (!ObjectID)
          {
            ObjectID = FigXPCRemoteClientSendSyncMessageCreatingReply();
            if (!ObjectID)
            {
              uint64 = xpc_dictionary_get_uint64(xdict, *MEMORY[0x1E69615A0]);
              if (uint64)
              {
                v16 = uint64;
                Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                if (Mutable)
                {
                  v18 = frr_CreateEmptyWrapper(2, v16, &v25);
                  v19 = v25;
                  if (!v18)
                  {
                    *(CMBaseObjectGetDerivedStorage() + 88) = Mutable;
                    remoteRemakerFamily_storeSandboxRegistration(v19, cf);
                    Mutable = 0;
                    *a6 = v19;
                    v19 = 0;
                  }

                  goto LABEL_24;
                }

                FigAssetReaderRemoteCreateWithURLAndFormatReader_cold_1(&v26);
                v19 = 0;
              }

              else
              {
                FigAssetReaderRemoteCreateWithURLAndFormatReader_cold_2(&v26);
                v19 = 0;
                Mutable = 0;
              }

              v18 = v26;
LABEL_24:
              FigXPCRemoteClientKillServerOnTimeout();
              FigXPCRelease();
              FigXPCRelease();
              if (v19)
              {
                CFRelease(v19);
              }

              if (cf)
              {
                CFRelease(cf);
              }

              if (Mutable)
              {
                CFRelease(Mutable);
              }

              return v18;
            }
          }
        }

LABEL_34:
        v18 = ObjectID;
        v19 = 0;
        Mutable = 0;
        goto LABEL_24;
      }
    }
  }

  return FigSignalErrorAtGM();
}

uint64_t FigAssetWriterRemoteCreateWithURL(uint64_t a1, const __CFURL *a2, uint64_t a3, const __CFDictionary *a4, uint64_t a5, void *a6)
{
  cf = 0;
  v21 = 0;
  v18 = 0;
  xdict = 0;
  v17 = 0;
  MEMORY[0x19A8D3660](&frr_OneTimeInitialization_sInitRemoteRemakerOnlyOnce, frr_OneTimeInitializationWork);
  if (!gRemakerRemoteClient)
  {
    v14 = 4294955196;
    goto LABEL_16;
  }

  if (a2 && remakerFamily_CFURLSchemeIsFile(a2) && a6)
  {
    v9 = FigXPCCreateBasicMessage();
    if (!v9)
    {
      v9 = FigXPCMessageSetCFURL();
      if (!v9)
      {
        v9 = FigXPCMessageSetCFDictionary();
        if (!v9)
        {
          v9 = FigXPCMessageSetCFDictionary();
          if (!v9)
          {
            v9 = frr_SandboxRegisterURLAddToXPCMessageAndCopyRegistration(a2, 0, cf, 0x196EFB1E5, &v18);
            if (!v9)
            {
              if (!CFDictionaryContainsKey(a4, @"Remaker_TemporaryDirectoryURL") || (Value = CFDictionaryGetValue(a4, @"Remaker_TemporaryDirectoryURL"), v9 = frr_SandboxRegisterURLAddToXPCMessageAndCopyRegistration(Value, 0, cf, 0x196EFB203, &v17), !v9))
              {
                v9 = FigXPCRemoteClientSendSyncMessageCreatingReply();
                if (!v9)
                {
                  uint64 = xpc_dictionary_get_uint64(xdict, *MEMORY[0x1E69615A0]);
                  if (!uint64)
                  {
                    FigAssetWriterRemoteCreateWithURL_cold_2(&v22);
                    goto LABEL_35;
                  }

                  v9 = frr_CreateEmptyWrapper(3, uint64, &v21);
                  if (!v9)
                  {
                    v11 = v21;
                    DerivedStorage = CMBaseObjectGetDerivedStorage();
                    *(DerivedStorage + 80) = 0;
                    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                    *(DerivedStorage + 88) = Mutable;
                    if (Mutable)
                    {
                      remoteRemakerFamily_storeSandboxRegistration(v11, v18);
                      remoteRemakerFamily_storeSandboxRegistration(v11, v17);
                      v14 = 0;
                      *a6 = v11;
                      v21 = 0;
LABEL_16:
                      FigXPCRemoteClientKillServerOnTimeout();
                      if (cf)
                      {
                        CFRelease(cf);
                      }

                      if (xdict)
                      {
                        CFRelease(xdict);
                      }

                      if (v21)
                      {
                        CFRelease(v21);
                      }

                      if (v18)
                      {
                        CFRelease(v18);
                      }

                      if (v17)
                      {
                        CFRelease(v17);
                      }

                      return v14;
                    }

                    FigAssetWriterRemoteCreateWithURL_cold_1(&v22);
LABEL_35:
                    v14 = v22;
                    goto LABEL_16;
                  }
                }
              }
            }
          }
        }
      }
    }

    v14 = v9;
    goto LABEL_16;
  }

  return FigSignalErrorAtGM();
}