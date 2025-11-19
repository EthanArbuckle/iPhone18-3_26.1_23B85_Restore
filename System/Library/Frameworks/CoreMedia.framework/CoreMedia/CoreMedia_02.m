size_t FigGenericFormatDescriptionRegisterOnce(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  memset(v9, 0, sizeof(v9));
  v10 = 0;
  *(v9 + 12) = figGenericFormatDescriptionEqual;
  return FigDerivedFormatDescriptionRegister(0x67656E72u, v9, a3, a4, a5, a6, a7, a8);
}

size_t FigMuxedFormatDescriptionRegisterOnce(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  v9 = 0;
  v13 = figMuxedFormatDescriptionFinalize;
  v12 = figMuxedFormatDescriptionCopyDebugDesc;
  v10 = 4;
  v11 = figMuxedFormatDescriptionEqual;
  return FigDerivedFormatDescriptionRegister(0x6D757878u, &v9, a3, a4, a5, a6, a7, a8);
}

OSStatus CMMuxedFormatDescriptionCreate(CFAllocatorRef allocator, CMMuxedStreamType muxType, CFDictionaryRef extensions, CMMuxedFormatDescriptionRef *formatDescriptionOut)
{
  cf = 0;
  if (muxType && formatDescriptionOut)
  {
    FigThreadRunOnce(&sFigMuxedFormatDescriptionRegisterOnce, FigMuxedFormatDescriptionRegisterOnce);
    v19 = FigDerivedFormatDescriptionCreate(allocator, 0x6D757878, muxType, extensions, &cf, v9, v10, v11);
    v20 = cf;
    if (!v19)
    {
      *FigDerivedFormatDescriptionGetDerivedStorage(cf, v12, v13, v14, v15, v16, v17, v18) = muxType;
      v20 = cf;
      goto LABEL_9;
    }

    if (!cf)
    {
LABEL_9:
      *formatDescriptionOut = v20;
      return v19;
    }

    CFRelease(cf);
LABEL_7:
    v20 = 0;
    goto LABEL_9;
  }

  emitter = fig_log_get_emitter("com.apple.coremedia", "");
  v19 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE5AuLL, "(Fig)", 0x93, v4, v22, v23);
  if (formatDescriptionOut)
  {
    goto LABEL_7;
  }

  return v19;
}

__CFString *figMuxedFormatDescriptionCopyDebugDesc(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  DerivedStorage = FigDerivedFormatDescriptionGetDerivedStorage(a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v10, 0);
  CFStringAppendFormat(Mutable, 0, @"\t\tmuxType: '%c%c%c%c'", HIBYTE(*DerivedStorage), BYTE2(*DerivedStorage), BYTE1(*DerivedStorage), *DerivedStorage);
  return Mutable;
}

OSStatus CMVideoFormatDescriptionCreate(CFAllocatorRef allocator, CMVideoCodecType codecType, int32_t width, int32_t height, CFDictionaryRef extensions, CMVideoFormatDescriptionRef *formatDescriptionOut)
{
  cf = 0;
  if (formatDescriptionOut)
  {
    if (codecType)
    {
      FigThreadRunOnce(&sFigVideoFormatDescriptionRegisterOnce, FigVideoFormatDescriptionRegisterOnce);
      v23 = FigDerivedFormatDescriptionCreate(allocator, 0x76696465, codecType, extensions, &cf, v13, v14, v15);
      v24 = cf;
      if (!v23)
      {
        DerivedStorage = FigDerivedFormatDescriptionGetDerivedStorage(cf, v16, v17, v18, v19, v20, v21, v22);
        *DerivedStorage = codecType;
        DerivedStorage[1] = width;
        DerivedStorage[2] = height;
        v24 = cf;
        goto LABEL_12;
      }

      if (!cf)
      {
LABEL_12:
        *formatDescriptionOut = v24;
        return v23;
      }

      CFRelease(cf);
    }

    else
    {
      emitter = fig_log_get_emitter("com.apple.coremedia", "");
      v23 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE5AuLL, "(Fig)", 0x1C7, v6, v30, v31);
    }

    v24 = 0;
    goto LABEL_12;
  }

  v25 = fig_log_get_emitter("com.apple.coremedia", "");

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v25, 0xFFFFCE5AuLL, "(Fig)", 0x1C2, v6, v26, v27);
}

OSStatus CMVideoFormatDescriptionCreateForImageBuffer(CFAllocatorRef allocator, CVImageBufferRef imageBuffer, CMVideoFormatDescriptionRef *formatDescriptionOut)
{
  formatDescriptionOuta = 0;
  if (formatDescriptionOut)
  {
    if (imageBuffer)
    {
      FigThreadRunOnce(&sFigVideoFormatDescriptionRegisterOnce, FigVideoFormatDescriptionRegisterOnce);
      FigThreadRunOnce(&sFigVideoFormatDescriptionCreateKeysCommonWithImageBuffersOnce, FigVideoFormatDescriptionCreateKeysCommonWithImageBuffersOnce);
      Count = CFArrayGetCount(sExtensionKeysCommonWithImageBuffers);
      Mutable = CFDictionaryCreateMutable(allocator, Count + 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (Mutable)
      {
        v9 = Mutable;
        v10 = CFGetTypeID(imageBuffer);
        TypeID = CVPixelBufferGetTypeID();
        v12 = MEMORY[0x1E695E480];
        if (TypeID == v10)
        {
          codecType = CVPixelBufferGetPixelFormatType(imageBuffer);
          Width = CVPixelBufferGetWidth(imageBuffer);
          height = CVPixelBufferGetHeight(imageBuffer);
          valuePtr = CVPixelBufferGetBytesPerRow(imageBuffer);
          v14 = CFNumberCreate(*v12, kCFNumberSInt32Type, &valuePtr);
          if (!v14)
          {
            emitter = fig_log_get_emitter("com.apple.coremedia", "");
            v26 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE59uLL, "(Fig)", 0x215, v3, v37, v38);
LABEL_29:
            CFRelease(v9);
            goto LABEL_30;
          }

          v15 = v14;
          v39 = Width;
          v40 = allocator;
          CFDictionarySetValue(v9, @"CVBytesPerRow", v14);
        }

        else
        {
          v40 = allocator;
          EncodedSize = CVImageBufferGetEncodedSize(imageBuffer);
          codecType = 0;
          v15 = 0;
          v39 = (EncodedSize.width + 0.5);
          height = (EncodedSize.height + 0.5);
        }

        if (Count >= 1)
        {
          for (i = 0; i != Count; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(sExtensionKeysCommonWithImageBuffers, i);
            v30 = CVBufferCopyAttachment(imageBuffer, ValueAtIndex, 0);
            if (v30)
            {
              v31 = v30;
              CFDictionarySetValue(v9, ValueAtIndex, v30);
              CFRelease(v31);
            }
          }
        }

        valuePtr = 2;
        v32 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
        if (v32)
        {
          CFDictionarySetValue(v9, @"Version", v32);
          v26 = CMVideoFormatDescriptionCreate(v40, codecType, v39, height, v9, &formatDescriptionOuta);
          if (v26 && formatDescriptionOuta)
          {
            CFRelease(formatDescriptionOuta);
            formatDescriptionOuta = 0;
          }
        }

        else
        {
          v33 = fig_log_get_emitter("com.apple.coremedia", "");
          v26 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v33, 0xFFFFCE59uLL, "(Fig)", 0x22F, v3, v34, v35);
        }

        if (v15)
        {
          CFRelease(v15);
        }

        if (v32)
        {
          CFRelease(v32);
        }

        goto LABEL_29;
      }

      v20 = fig_log_get_emitter("com.apple.coremedia", "");
      v23 = v3;
      v24 = 4294954585;
      v25 = 517;
    }

    else
    {
      v20 = fig_log_get_emitter("com.apple.coremedia", "");
      v23 = v3;
      v24 = 4294954586;
      v25 = 506;
    }

    v26 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v20, v24, "(Fig)", v25, v23, v21, v22);
LABEL_30:
    *formatDescriptionOut = formatDescriptionOuta;
    return v26;
  }

  v16 = fig_log_get_emitter("com.apple.coremedia", "");

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v16, 0xFFFFCE5AuLL, "(Fig)", 0x1F5, v3, v17, v18);
}

CMVideoDimensions CMVideoFormatDescriptionGetDimensions(CMVideoFormatDescriptionRef videoDesc)
{
  DerivedStorage = FigDerivedFormatDescriptionGetDerivedStorage(videoDesc, v1, v2, v3, v4, v5, v6, v7);
  if (DerivedStorage && (v11 = DerivedStorage, CMFormatDescriptionGetMediaType(videoDesc) == 1986618469))
  {
    return *(v11 + 4);
  }

  else
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE5AuLL, "(Fig)", 0x259, v8, v14, v15);
    return 0;
  }
}

CGRect CMVideoFormatDescriptionGetCleanAperture(CMVideoFormatDescriptionRef videoDesc, Boolean originIsAtTopLeft)
{
  v2 = originIsAtTopLeft;
  Dimensions = CMVideoFormatDescriptionGetDimensions(videoDesc);
  width = Dimensions.width;
  height = Dimensions.height;
  Extension = CMFormatDescriptionGetExtension(videoDesc, *MEMORY[0x1E6965D70]);
  v8 = 0.0;
  if (!Extension)
  {
    goto LABEL_20;
  }

  v9 = Extension;
  TypeID = CFDictionaryGetTypeID();
  if (TypeID != CFGetTypeID(v9))
  {
    goto LABEL_20;
  }

  v32 = 0.0;
  valuePtr = 0.0;
  v30 = 0.0;
  v31 = 0.0;
  Value = CFDictionaryGetValue(v9, *MEMORY[0x1E6965D80]);
  if (Value)
  {
    v12 = Value;
    v13 = CFNumberGetTypeID();
    if (v13 == CFGetTypeID(v12))
    {
      CFNumberGetValue(v12, kCFNumberCGFloatType, &valuePtr);
    }
  }

  v14 = CFDictionaryGetValue(v9, *MEMORY[0x1E6965D60]);
  if (v14)
  {
    v15 = v14;
    v16 = CFNumberGetTypeID();
    if (v16 == CFGetTypeID(v15))
    {
      CFNumberGetValue(v15, kCFNumberCGFloatType, &v32);
    }
  }

  v17 = CFDictionaryGetValue(v9, *MEMORY[0x1E6965D68]);
  if (v17)
  {
    v18 = v17;
    v19 = CFNumberGetTypeID();
    if (v19 == CFGetTypeID(v18))
    {
      CFNumberGetValue(v18, kCFNumberCGFloatType, &v31);
    }
  }

  v20 = CFDictionaryGetValue(v9, *MEMORY[0x1E6965D78]);
  if (v20)
  {
    v21 = v20;
    v22 = CFNumberGetTypeID();
    if (v22 == CFGetTypeID(v21))
    {
      CFNumberGetValue(v21, kCFNumberCGFloatType, &v30);
    }
  }

  if (valuePtr <= width && valuePtr > 0.0 && v32 > 0.0 && v32 <= height && (v23 = (width - valuePtr) * 0.5, fabs(v31) <= v23))
  {
    v28 = (height - v32) * 0.5;
    v24 = 0.0;
    if (fabs(v30) <= v28)
    {
      v24 = v23 + v31;
      v29 = -v30;
      if (v2)
      {
        v29 = v30;
      }

      v8 = v28 + v29;
      height = v32;
      width = valuePtr;
    }
  }

  else
  {
LABEL_20:
    v24 = 0.0;
  }

  v25 = v8;
  v26 = width;
  v27 = height;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

CGSize CMVideoFormatDescriptionGetPresentationDimensions(CMVideoFormatDescriptionRef videoDesc, Boolean usePixelAspectRatio, Boolean useCleanAperture)
{
  v3 = useCleanAperture;
  v4 = usePixelAspectRatio;
  Dimensions = CMVideoFormatDescriptionGetDimensions(videoDesc);
  width = Dimensions.width;
  height = Dimensions.height;
  if (v3)
  {
    Extension = CMFormatDescriptionGetExtension(videoDesc, *MEMORY[0x1E6965D70]);
    if (Extension)
    {
      v10 = Extension;
      TypeID = CFDictionaryGetTypeID();
      if (TypeID == CFGetTypeID(v10))
      {
        v31 = 0.0;
        valuePtr = 0.0;
        Value = CFDictionaryGetValue(v10, *MEMORY[0x1E6965D80]);
        if (Value)
        {
          v13 = Value;
          v14 = CFNumberGetTypeID();
          if (v14 == CFGetTypeID(v13))
          {
            CFNumberGetValue(v13, kCFNumberCGFloatType, &valuePtr);
          }
        }

        v15 = CFDictionaryGetValue(v10, *MEMORY[0x1E6965D60]);
        v16 = 0.0;
        if (v15)
        {
          v17 = v15;
          v18 = CFNumberGetTypeID();
          if (v18 == CFGetTypeID(v17))
          {
            CFNumberGetValue(v17, kCFNumberCGFloatType, &v31);
            v16 = v31;
          }
        }

        v19 = valuePtr <= 0.0;
        if (v16 <= 0.0)
        {
          v19 = 1;
        }

        if (valuePtr > width)
        {
          v19 = 1;
        }

        if (v16 > height)
        {
          v19 = 1;
        }

        if (!v19)
        {
          height = v16;
          width = valuePtr;
        }
      }
    }
  }

  if (v4)
  {
    v20 = CMFormatDescriptionGetExtension(videoDesc, *MEMORY[0x1E6965EF8]);
    if (v20)
    {
      v21 = v20;
      v22 = CFDictionaryGetTypeID();
      if (v22 == CFGetTypeID(v21))
      {
        v31 = 0.0;
        valuePtr = 0.0;
        v23 = CFDictionaryGetValue(v21, *MEMORY[0x1E6965EF0]);
        if (v23)
        {
          v24 = v23;
          v25 = CFNumberGetTypeID();
          if (v25 == CFGetTypeID(v24))
          {
            CFNumberGetValue(v24, kCFNumberDoubleType, &valuePtr);
          }
        }

        v26 = CFDictionaryGetValue(v21, *MEMORY[0x1E6965F00]);
        if (v26)
        {
          v27 = v26;
          v28 = CFNumberGetTypeID();
          if (v28 == CFGetTypeID(v27))
          {
            CFNumberGetValue(v27, kCFNumberDoubleType, &v31);
            if (valuePtr > 0.0 && v31 > 0.0)
            {
              width = width * (valuePtr / v31);
            }
          }
        }
      }
    }
  }

  v29 = width;
  v30 = height;
  result.height = v30;
  result.width = v29;
  return result;
}

Boolean CMVideoFormatDescriptionMatchesImageBuffer(CMVideoFormatDescriptionRef desc, CVImageBufferRef imageBuffer)
{
  if (!desc)
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v16 = v2;
    v17 = 4294954586;
    v18 = 773;
    goto LABEL_29;
  }

  if (!imageBuffer)
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v16 = v2;
    v17 = 4294954586;
    v18 = 778;
    goto LABEL_29;
  }

  v5 = CFGetTypeID(imageBuffer);
  if (CVPixelBufferGetTypeID() == v5)
  {
    valuePtr = 0;
    PixelFormatType = CVPixelBufferGetPixelFormatType(imageBuffer);
    Width = CVPixelBufferGetWidth(imageBuffer);
    Height = CVPixelBufferGetHeight(imageBuffer);
    Extension = CMFormatDescriptionGetExtension(desc, @"CVBytesPerRow");
    if (Extension)
    {
      v10 = Extension;
      v11 = CFGetTypeID(Extension);
      if (v11 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v10, kCFNumberSInt32Type, &valuePtr);
        BytesPerRow = CVPixelBufferGetBytesPerRow(imageBuffer);
        if (valuePtr != BytesPerRow)
        {
          return 0;
        }
      }
    }
  }

  else
  {
    EncodedSize = CVImageBufferGetEncodedSize(imageBuffer);
    PixelFormatType = 0;
    Width = (EncodedSize.width + 0.5);
    Height = (EncodedSize.height + 0.5);
  }

  Dimensions = CMVideoFormatDescriptionGetDimensions(desc);
  MediaSubType = CMFormatDescriptionGetMediaSubType(desc);
  result = 0;
  if (MediaSubType == PixelFormatType && Width == Dimensions.width && Height == Dimensions.height)
  {
    FigThreadRunOnce(&sFigVideoFormatDescriptionCreateKeysCommonWithImageBuffersOnce, FigVideoFormatDescriptionCreateKeysCommonWithImageBuffersOnce);
    v24 = sExtensionKeysCommonWithImageBuffers;
    Count = CFArrayGetCount(sExtensionKeysCommonWithImageBuffers);
    if (v24)
    {
      v26 = Count;
      Extensions = CMFormatDescriptionGetExtensions(desc);
      if (Extensions)
      {
        if (v26 >= 1)
        {
          v28 = Extensions;
          v29 = 0;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v24, v29);
            Value = CFDictionaryGetValue(v28, ValueAtIndex);
            v32 = CVBufferCopyAttachment(imageBuffer, ValueAtIndex, 0);
            if (Value | v32)
            {
              v33 = v32;
              if (!Value || !v32)
              {
                if (!v32)
                {
                  return 0;
                }

LABEL_39:
                v36 = v33;
LABEL_40:
                CFRelease(v36);
                return 0;
              }

              if (!CFEqual(Value, v32))
              {
                goto LABEL_39;
              }

              CFRelease(v33);
            }

            ++v29;
            result = 1;
            if (v26 == v29)
            {
              return result;
            }
          }
        }
      }

      else if (v26 >= 1)
      {
        for (i = 0; i != v26; ++i)
        {
          v35 = CFArrayGetValueAtIndex(v24, i);
          v36 = CVBufferCopyAttachment(imageBuffer, v35, 0);
          if (v36)
          {
            goto LABEL_40;
          }

          result = 1;
        }

        return result;
      }

      return 1;
    }

    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v16 = v2;
    v17 = 4294954585;
    v18 = 815;
LABEL_29:
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v17, "(Fig)", v18, v16, v14, v15);
    return 0;
  }

  return result;
}

BOOL FigVideoFormatDescriptionContainsWideColor(const opaqueCMFormatDescription *a1)
{
  if (CMFormatDescriptionGetMediaType(a1) != 1986618469)
  {
    return 0;
  }

  Extension = CMFormatDescriptionGetExtension(a1, *MEMORY[0x1E6965D88]);
  v3 = CMFormatDescriptionGetExtension(a1, *MEMORY[0x1E6965F30]);
  v4 = CMFormatDescriptionGetExtension(a1, *MEMORY[0x1E6965F98]);

  return FigVideoFormatDescriptionColorPropertiesRequireWideColor(Extension, v3, v4);
}

BOOL FigVideoFormatDescriptionContainsHDR(const opaqueCMFormatDescription *a1)
{
  if (!a1 || CMFormatDescriptionGetMediaType(a1) != 1986618469)
  {
    return 0;
  }

  MediaSubType = CMFormatDescriptionGetMediaSubType(a1);
  Extension = CMFormatDescriptionGetExtension(a1, *MEMORY[0x1E6965F30]);
  result = 1;
  if (MediaSubType <= 1685481520)
  {
    if (MediaSubType <= 1667524656)
    {
      if (MediaSubType == 1634759272)
      {
        return result;
      }

      v6 = 1634759278;
LABEL_18:
      if (MediaSubType == v6)
      {
        return result;
      }

      return FigCFEqual(Extension, @"ITU_R_2100_HLG") || FigCFEqual(Extension, @"SMPTE_ST_2084_PQ");
    }

    if (MediaSubType != 1667524657 && MediaSubType != 1684108849)
    {
      v6 = 1684895096;
      goto LABEL_18;
    }
  }

  else if (MediaSubType > 1902405680)
  {
    if (MediaSubType != 1902405681 && MediaSubType != 1902405733)
    {
      v5 = 28024;
      goto LABEL_15;
    }
  }

  else if (MediaSubType != 1685481521 && MediaSubType != 1685481573)
  {
    v5 = 24950;
LABEL_15:
    v6 = v5 | 0x71640000;
    goto LABEL_18;
  }

  return result;
}

uint64_t CMFormatDescriptionGetWidestGamutAndLargestDynamicRangeColorPropertiesFromFormatDescriptions(const __CFArray *a1, int a2, int a3, void *a4, void *a5, void *a6)
{
  if (!a1 || (v11 = a1, v12 = CFGetTypeID(a1), v12 != CFArrayGetTypeID()))
  {
    CMFormatDescriptionGetWidestGamutAndLargestDynamicRangeColorPropertiesFromFormatDescriptions_cold_6(&v48);
    return v48;
  }

  Count = CFArrayGetCount(v11);
  if (Count <= 0)
  {
    CMFormatDescriptionGetWidestGamutAndLargestDynamicRangeColorPropertiesFromFormatDescriptions_cold_5(&v48);
    return v48;
  }

  if (!a4)
  {
    CMFormatDescriptionGetWidestGamutAndLargestDynamicRangeColorPropertiesFromFormatDescriptions_cold_4(&v48);
    return v48;
  }

  if (!a5)
  {
    CMFormatDescriptionGetWidestGamutAndLargestDynamicRangeColorPropertiesFromFormatDescriptions_cold_3(&v48);
    return v48;
  }

  if (!a6)
  {
    CMFormatDescriptionGetWidestGamutAndLargestDynamicRangeColorPropertiesFromFormatDescriptions_cold_2(&v48);
    return v48;
  }

  v40 = a3;
  v41 = a2;
  v37 = a4;
  v38 = a5;
  v39 = a6;
  v13 = 0;
  v14 = 0;
  v47 = 0;
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v15 = *MEMORY[0x1E6965F30];
  v16 = *MEMORY[0x1E6965D88];
  v17 = *MEMORY[0x1E6965F98];
  v45 = v11;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v11, v13);
    if (!ValueAtIndex || (v19 = ValueAtIndex, v20 = CFGetTypeID(ValueAtIndex), v20 != CMFormatDescriptionGetTypeID()))
    {
      CMFormatDescriptionGetWidestGamutAndLargestDynamicRangeColorPropertiesFromFormatDescriptions_cold_1(&v48);
      return v48;
    }

    Extension = CMFormatDescriptionGetExtension(v19, v15);
    if (FigCFEqual(Extension, @"SMPTE_ST_2084_PQ"))
    {
      v22 = 2;
    }

    else if (FigCFEqual(Extension, @"ITU_R_2100_HLG"))
    {
      v22 = 3;
    }

    else
    {
      v22 = 1;
    }

    v23 = CMFormatDescriptionGetExtension(v19, v16);
    v24 = CMFormatDescriptionGetExtension(v19, v15);
    v25 = CMFormatDescriptionGetExtension(v19, v17);
    if (FigCFEqual(v23, @"DCI_P3") || FigCFEqual(v23, @"P3_D65"))
    {
      v26 = 2;
    }

    else if (FigCFEqual(v23, @"ITU_R_2020") || !v23 && (FigCFEqual(v24, @"ITU_R_2100_HLG") || FigCFEqual(v24, @"SMPTE_ST_2084_PQ") || FigCFEqual(v24, @"aYCC") || FigCFEqual(v25, @"ITU_R_2020")))
    {
      v26 = 3;
    }

    else
    {
      v26 = 1;
    }

    v11 = v45;
    if (v22 > v47)
    {
      v42 = CMFormatDescriptionGetExtension(v19, v15);
      v47 = v22;
    }

    if (v26 > v14)
    {
      v44 = CMFormatDescriptionGetExtension(v19, v16);
      v43 = CMFormatDescriptionGetExtension(v19, v17);
      v14 = v26;
    }

    ++v13;
  }

  while (Count != v13);
  if (v47 > 1 && v40 == 0)
  {
    v28 = *MEMORY[0x1E6965F50];
  }

  else
  {
    v28 = v42;
  }

  if (v41 == 0 && v14 > 1)
  {
    v29 = *MEMORY[0x1E6965DB8];
  }

  else
  {
    v29 = v44;
  }

  if (v41 == 0 && v14 > 1)
  {
    v30 = *MEMORY[0x1E6965FD0];
  }

  else
  {
    v30 = v43;
  }

  if (!v29)
  {
    return 0;
  }

  v31 = CFGetTypeID(v29);
  TypeID = CFStringGetTypeID();
  result = 0;
  if (v31 == TypeID)
  {
    if (v28)
    {
      v34 = CFGetTypeID(v28);
      v35 = CFStringGetTypeID();
      result = 0;
      if (v34 == v35)
      {
        if (v30)
        {
          v36 = CFGetTypeID(v30);
          if (v36 == CFStringGetTypeID())
          {
            result = 0;
            *v37 = v29;
            *v38 = v28;
            *v39 = v30;
            return result;
          }

          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t CMFormatDescriptionGetWidestColorPropertiesFromFormatDescriptions(const void *a1, int a2, void *a3, void *a4, void *a5)
{
  if (!a1 || (v10 = CFGetTypeID(a1), v10 != CFArrayGetTypeID()))
  {
    CMFormatDescriptionGetWidestColorPropertiesFromFormatDescriptions_cold_6(&v35);
    return v35;
  }

  Count = CFArrayGetCount(a1);
  if (Count <= 0)
  {
    CMFormatDescriptionGetWidestColorPropertiesFromFormatDescriptions_cold_5(&v35);
    return v35;
  }

  if (!a3)
  {
    CMFormatDescriptionGetWidestColorPropertiesFromFormatDescriptions_cold_4(&v35);
    return v35;
  }

  if (!a4)
  {
    CMFormatDescriptionGetWidestColorPropertiesFromFormatDescriptions_cold_3(&v35);
    return v35;
  }

  if (!a5)
  {
    CMFormatDescriptionGetWidestColorPropertiesFromFormatDescriptions_cold_2(&v35);
    return v35;
  }

  v12 = Count;
  v32 = a2;
  v29 = a3;
  v30 = a4;
  v31 = a5;
  v13 = 0;
  v14 = 0;
  cf = 0;
  v15 = 0;
  v16 = *MEMORY[0x1E6965D88];
  v17 = *MEMORY[0x1E6965DB8];
  v18 = *MEMORY[0x1E6965F30];
  extensionKey = *MEMORY[0x1E6965F98];
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, v13);
    if (!ValueAtIndex || (v20 = ValueAtIndex, v21 = CFGetTypeID(ValueAtIndex), v21 != CMFormatDescriptionGetTypeID()))
    {
      CMFormatDescriptionGetWidestColorPropertiesFromFormatDescriptions_cold_1(&v35);
      return v35;
    }

    Extension = CMFormatDescriptionGetExtension(v20, v16);
    if (FigVideoFormatDescriptionContainsWideColor(v20))
    {
      break;
    }

    if (FigCFEqual(Extension, v17) || !v15 && !cf && !v14)
    {
      cf = CMFormatDescriptionGetExtension(v20, v18);
      v14 = CMFormatDescriptionGetExtension(v20, extensionKey);
      v15 = Extension;
    }

    if (v12 == ++v13)
    {
      if (!v15)
      {
        return 0;
      }

      goto LABEL_23;
    }
  }

  if (v32)
  {
    v15 = CMFormatDescriptionGetExtension(v20, v16);
    cf = CMFormatDescriptionGetExtension(v20, v18);
    v14 = CMFormatDescriptionGetExtension(v20, extensionKey);
    if (!v15)
    {
      return 0;
    }
  }

  else
  {
    cf = *MEMORY[0x1E6965F50];
    v14 = *MEMORY[0x1E6965FD0];
    v15 = v17;
    if (!v17)
    {
      return 0;
    }
  }

LABEL_23:
  v23 = CFGetTypeID(v15);
  TypeID = CFStringGetTypeID();
  result = 0;
  if (v23 == TypeID)
  {
    if (cf)
    {
      v26 = CFGetTypeID(cf);
      v27 = CFStringGetTypeID();
      result = 0;
      if (v26 == v27)
      {
        if (v14)
        {
          v28 = CFGetTypeID(v14);
          if (v28 == CFStringGetTypeID())
          {
            result = 0;
            *v29 = v15;
            *v30 = cf;
            *v31 = v14;
            return result;
          }

          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t FigVideoFormatDescriptionContainsStereoMultiviewVideo(const opaqueCMFormatDescription *a1)
{
  tagCollectionsOut = 0;
  if (CMFormatDescriptionGetMediaType(a1) != 1986618469 && CMFormatDescriptionGetMediaType(a1) != 1635088502)
  {
    return 0;
  }

  CMVideoFormatDescriptionCopyTagCollectionArray(a1, &tagCollectionsOut);
  if (tagCollectionsOut)
  {
    Count = CFArrayGetCount(tagCollectionsOut);
    if (Count < 1)
    {
      v5 = 0;
      v6 = 0;
    }

    else
    {
      v3 = Count;
      ValueAtIndex = CFArrayGetValueAtIndex(tagCollectionsOut, 0);
      if (FigTagCollectionContainsTag(ValueAtIndex, *"seye\a", 1))
      {
        v5 = 1;
      }

      else
      {
        v8 = 1;
        do
        {
          v9 = v8;
          if (v3 == v8)
          {
            break;
          }

          v10 = CFArrayGetValueAtIndex(tagCollectionsOut, v8);
          v11 = FigTagCollectionContainsTag(v10, *"seye\a", 1);
          v8 = v9 + 1;
        }

        while (!v11);
        v5 = v9 < v3;
      }

      v12 = CFArrayGetValueAtIndex(tagCollectionsOut, 0);
      if (FigTagCollectionContainsTag(v12, *"seye\a", 2))
      {
        v6 = 1;
      }

      else
      {
        v13 = 1;
        do
        {
          v14 = v13;
          if (v3 == v13)
          {
            break;
          }

          v15 = CFArrayGetValueAtIndex(tagCollectionsOut, v13);
          v16 = FigTagCollectionContainsTag(v15, *"seye\a", 2);
          v13 = v14 + 1;
        }

        while (!v16);
        v6 = v14 < v3;
      }
    }

    if (tagCollectionsOut)
    {
      CFRelease(tagCollectionsOut);
    }
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  return v6 & v5;
}

BOOL FigVideoFormatDescriptionConformsToDolbyVisionProfile84(const opaqueCMFormatDescription *a1)
{
  v3 = 0;
  DolbyVisionProfileAndCompatibilityIDIfGiven = sFigGetDolbyVisionProfileAndCompatibilityIDIfGiven(a1, &v3 + 1, &v3);
  result = 0;
  if (DolbyVisionProfileAndCompatibilityIDIfGiven)
  {
    if (HIBYTE(v3) == 8)
    {
      return v3 == 4;
    }
  }

  return result;
}

uint64_t FigVideoCodecTypeIsHEVCFlavor(int a1)
{
  result = 1;
  if (a1 > 1836415072)
  {
    if (a1 <= 1902667125)
    {
      if (a1 == 1836415073)
      {
        return result;
      }

      v3 = 1869117027;
      goto LABEL_14;
    }

    if (a1 != 1902667126 && a1 != 1902671459)
    {
      v3 = 1902998904;
LABEL_14:
      if (a1 != v3)
      {
        return 0;
      }
    }
  }

  else
  {
    if (a1 <= 1718908527)
    {
      if (a1 == 1667790435)
      {
        return result;
      }

      v3 = 1718908520;
      goto LABEL_14;
    }

    if (a1 != 1718908528 && a1 != 1751479857)
    {
      v3 = 1752589105;
      goto LABEL_14;
    }
  }

  return result;
}

__CFString *figVideoFormatDescriptionCopyDebugDesc(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  DerivedStorage = FigDerivedFormatDescriptionGetDerivedStorage(a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v10, 0);
  v12 = Mutable;
  if (*DerivedStorage > 0xFF)
  {
    CFStringAppendFormat(Mutable, 0, @"\t\tcodecType: '%c%c%c%c'", HIBYTE(*DerivedStorage), BYTE2(*DerivedStorage), BYTE1(*DerivedStorage), *DerivedStorage);
  }

  else
  {
    CFStringAppendFormat(Mutable, 0, @"\t\tcodecType: %d", *DerivedStorage);
  }

  CFStringAppendFormat(v12, 0, @"\t\tdimensions: %d x %d", DerivedStorage[1], DerivedStorage[2]);
  return v12;
}

BOOL figVideoFormatDescriptionEqual(const opaqueCMFormatDescription *a1, const opaqueCMFormatDescription *a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  DerivedStorage = FigDerivedFormatDescriptionGetDerivedStorage(a1, a2, a3, a4, a5, a6, a7, a8);
  Extensions = CMFormatDescriptionGetExtensions(a1);
  v21 = FigDerivedFormatDescriptionGetDerivedStorage(a2, v14, v15, v16, v17, v18, v19, v20);
  v22 = CMFormatDescriptionGetExtensions(a2);
  return *DerivedStorage == *v21 && DerivedStorage[1] == v21[1] && DerivedStorage[2] == v21[2] && FigFormatDescriptionExtensionsDictionariesEqualIgnoringKeys(Extensions, v22, a3, a4) != 0;
}

CFArrayRef FigVideoFormatDescriptionCreateKeysCommonWithImageBuffersOnce()
{
  values[16] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E6965E50];
  values[0] = *MEMORY[0x1E6965D70];
  values[1] = v0;
  v1 = *MEMORY[0x1E6965EF8];
  values[2] = *MEMORY[0x1E6965E58];
  values[3] = v1;
  v2 = *MEMORY[0x1E6965F30];
  values[4] = *MEMORY[0x1E6965D88];
  values[5] = v2;
  v3 = *MEMORY[0x1E6965F98];
  values[6] = *MEMORY[0x1E6965E80];
  values[7] = v3;
  v4 = *MEMORY[0x1E6965D00];
  values[8] = @"CVImageBufferICCProfile";
  values[9] = v4;
  values[10] = *MEMORY[0x1E6965CF0];
  values[11] = @"MasteringDisplayColorVolume";
  values[12] = @"ContentLightLevelInfo";
  values[13] = @"ContentColorVolume";
  values[14] = @"AmbientViewingEnvironment";
  values[15] = @"LogTransferFunction";
  result = CFArrayCreate(*MEMORY[0x1E695E480], values, 16, MEMORY[0x1E695E9C0]);
  sExtensionKeysCommonWithImageBuffers = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_1(const opaqueCMFormatDescription *a1)
{
  *(v1 - 2) = 0;

  return sFigGetDolbyVisionProfileAndCompatibilityIDIfGiven(a1, (v1 - 1), (v1 - 2));
}

uint64_t OUTLINED_FUNCTION_7_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{

  return sFigGetDolbyVisionProfileAndCompatibilityIDIfGiven(v13, &a13, &a12);
}

void FigMobileAsset_RegisterForAssetUpdates(const void *a1, int a2, const __CFDictionary *a3, const void *a4, int a5, uint64_t a6, uint64_t a7)
{
  if (figMobileAsset_Initialize_onceToken == -1)
  {
    if (!a6)
    {
      return;
    }
  }

  else
  {
    FigMobileAsset_RegisterForAssetUpdates_cold_1();
    if (!a6)
    {
      return;
    }
  }

  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, &FigMobileAssetCallbackCFArrayCallbacks);
  value[0] = a6;
  value[1] = a7;
  CFArrayAppendValue(Mutable, value);
  figMobileAsset_QueryMostRecentAsset(a1, 0, a2, 1, a3, a4, Mutable);
  if (a1)
  {
    CFRetain(a1);
  }

  if (a3)
  {
    CFRetain(a3);
  }

  if (a4)
  {
    CFRetain(a4);
  }

  if (Mutable)
  {
    CFRetain(Mutable);
  }

  if (figMobileAsset_GetNotificationQueue_onceToken != -1)
  {
    FigMobileAsset_RegisterForAssetUpdates_cold_2();
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __FigMobileAsset_RegisterForAssetUpdates_block_invoke;
  block[3] = &__block_descriptor_88_e5_v8__0l;
  block[4] = a1;
  block[5] = a3;
  block[6] = a4;
  block[7] = Mutable;
  v16 = a2;
  v17 = a5;
  block[8] = a6;
  block[9] = a7;
  dispatch_async(figMobileAsset_GetNotificationQueue_mobileAssetNotificationQueue, block);
  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

BOOL figMobileAsset_IsAssetTypeRegistered(void *key)
{
  if (figMobileAsset_Initialize_onceToken != -1)
  {
    FigMobileAsset_RegisterForAssetUpdates_cold_1();
  }

  result = 0;
  if (key)
  {
    if (_MergedGlobals_7)
    {
      return CFDictionaryContainsKey(_MergedGlobals_7, key) != 0;
    }
  }

  return result;
}

void figMobileAsset_DownloadCatalogAndRequery(CFTypeRef cf, int a2)
{
  if (cf)
  {
    CFRetain(cf);
  }

  if (figMobileAsset_GetNotificationQueue_onceToken != -1)
  {
    figMobileAsset_DownloadCatalogAndRequery_cold_1();
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __figMobileAsset_DownloadCatalogAndRequery_block_invoke;
  v4[3] = &__block_descriptor_44_e5_v8__0l;
  v4[4] = cf;
  v5 = a2;
  dispatch_async(figMobileAsset_GetNotificationQueue_mobileAssetNotificationQueue, v4);
}

void FigMobileAsset_UnregisterFromAssetUpdates(CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  if (figMobileAsset_GetNotificationQueue_onceToken != -1)
  {
    figMobileAsset_DownloadCatalogAndRequery_cold_1();
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __FigMobileAsset_UnregisterFromAssetUpdates_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = cf;
  dispatch_async(figMobileAsset_GetNotificationQueue_mobileAssetNotificationQueue, block);
}

void FigMobileAsset_UnregisterCallbackFromAssetUpdates(CFTypeRef cf, uint64_t a2, uint64_t a3)
{
  if (cf)
  {
    CFRetain(cf);
  }

  if (figMobileAsset_GetNotificationQueue_onceToken != -1)
  {
    figMobileAsset_DownloadCatalogAndRequery_cold_1();
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __FigMobileAsset_UnregisterCallbackFromAssetUpdates_block_invoke;
  block[3] = &__block_descriptor_56_e5_v8__0l;
  block[4] = cf;
  block[5] = a2;
  block[6] = a3;
  dispatch_async(figMobileAsset_GetNotificationQueue_mobileAssetNotificationQueue, block);
}

__n128 figMobileAsset_CallbackArrayRetain(uint64_t a1, __n128 *a2)
{
  v3 = MEMORY[0x19A8D7200](a1, 16, 0x80040803F642BLL, 0);
  if (v3)
  {
    result = *a2;
    *v3 = *a2;
  }

  return result;
}

void figMobileAsset_CallbackArrayRelease(CFAllocatorRef allocator, void *ptr)
{
  if (ptr)
  {
    CFAllocatorDeallocate(allocator, ptr);
  }
}

CFTypeID figMobileAsset_AddFilterToQuery(CFTypeID result, CFTypeRef cf, void *a3)
{
  if (result && cf && a3)
  {
    v5 = result;
    v6 = CFGetTypeID(cf);
    if (v6 == CFStringGetTypeID())
    {

      return [a3 addKeyValuePair:v5 with:cf];
    }

    else
    {
      v7 = CFGetTypeID(cf);
      result = CFArrayGetTypeID();
      if (v7 == result)
      {

        return [a3 addKeyValueArray:v5 with:cf];
      }
    }
  }

  return result;
}

void figMobileAsset_UpdateLastUpdatedTime(CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  if (figMobileAsset_GetNotificationQueue_onceToken != -1)
  {
    figMobileAsset_DownloadCatalogAndRequery_cold_1();
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __figMobileAsset_UpdateLastUpdatedTime_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = cf;
  dispatch_async(figMobileAsset_GetNotificationQueue_mobileAssetNotificationQueue, block);
}

void figMobileAsset_ExtractPlistFromAssetForCallback(void *a1, uint64_t a2, const __CFArray *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = [a1 getLocalFileUrl];
  if (v5)
  {
    v6 = v5;
    v7 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithContentsOfURL:{objc_msgSend(v5, "URLByAppendingPathComponent:", a2)}];
    if (!v7)
    {
      v7 = [objc_alloc(MEMORY[0x1E695DF20]) initWithContentsOfURL:{objc_msgSend(v6, "URLByAppendingPathComponent:", a2)}];
    }

    if (a3 && CFArrayGetCount(a3) >= 1)
    {
      v8 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a3, v8);
        if (*ValueAtIndex)
        {
          (*ValueAtIndex)(v7, ValueAtIndex[1]);
        }

        else
        {
          v16[0] = 0;
          type = OS_LOG_TYPE_DEFAULT;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CCC0, 0, v16, &type);
          v11 = v16[0];
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
            v16[1] = 136315138;
            v17 = "figMobileAsset_ExtractPlistFromAssetForCallback";
            v14 = _os_log_send_and_compose_impl();
            LOBYTE(v11) = v16[0];
          }

          else
          {
            v14 = 0;
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1EAF1CCC0, 0, 1, v14, v14 != &v18, v11, 0, v12);
        }

        ++v8;
      }

      while (CFArrayGetCount(a3) > v8);
    }

    if (v7)
    {
      CFRelease(v7);
    }
  }
}

void OUTLINED_FUNCTION_1_3(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  v19 = *(v17 + 3264);

  fig_log_call_emit_and_clean_up_after_send_and_compose(v19, 1u, 1, a4, a4 != &a16, v16, 0, a8);
}

uint64_t OUTLINED_FUNCTION_2_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, char a14, int a15)
{
  a15 = 0;
  a14 = 0;
  v16 = qword_1EAF1CCC0;

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(v16, 1, &a15, &a14);
}

uint64_t OUTLINED_FUNCTION_4_2()
{

  return _os_log_send_and_compose_impl();
}

BOOL OUTLINED_FUNCTION_5_2(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, os_log_type_t type, int a15)
{

  return os_log_type_enabled(a1, type);
}

uint64_t OUTLINED_FUNCTION_6_2(int a1)
{
  if (a1)
  {
    return v1;
  }

  else
  {
    return v1 & 0xFFFFFFFE;
  }
}

void OUTLINED_FUNCTION_7_1()
{
  v2 = *(v0 + 64);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);

  figMobileAsset_QueryMostRecentAsset(v3, 0, v2, 1, v4, v5, v6);
}

size_t FigNotificationCenterAddWeakListener(CFNotificationCenterRef center, void *observer, CFNotificationCallback callBack, CFStringRef name, unint64_t object, int a6, NSObject *a7)
{
  observera = 0;
  if (a7 || (a6 & 1) == 0)
  {
    if (!a7 && (a6 & 2) == 0 && !byte_1ED4CC000)
    {
      CFNotificationCenterAddObserver(center, observer, callBack, name, object, 1024);
      return 0;
    }

    v19 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"weak--%@--%p--%p--%p--listener", name, callBack, observer, object);
    if (!v19)
    {
      FigNotificationCenterAddWeakListener_cold_3(&v31);
      return v31;
    }

    v20 = v19;
    FigThreadRunOnce(&sFigNotificationCenterWeakListenerLinks, FigNotificationCenterWeakListenerLinksInitOnce);
    Instance = _CFRuntimeCreateInstance();
    if (!Instance)
    {
      FigNotificationCenterAddWeakListener_cold_2(&v31);
      v29 = v31;
      goto LABEL_20;
    }

    v22 = Instance;
    v23 = FigCFWeakReferenceHolderCreateWithReferencedObject(observer);
    *(v22 + 16) = v23;
    if (!v23)
    {
      FigNotificationCenterAddWeakListener_cold_1(&v31);
      v29 = v31;
      goto LABEL_19;
    }

    *(v22 + 24) = callBack;
    *(v22 + 48) = a6;
    if (a7)
    {
      dispatch_retain(a7);
      *(v22 + 40) = a7;
    }

    Key = FigCFWeakReferenceTableAddValueAndGetKey(qword_1ED4CBFF0, v22, &observera);
    if (Key)
    {
      v29 = Key;
      goto LABEL_19;
    }

    *(v22 + 32) = observera;
    FigSimpleMutexLock(qword_1ED4CBFF8);
    v25 = CFDictionaryContainsKey(qword_1ED4CBFE8, v20);
    if (v25)
    {
      emitter = fig_log_get_emitter("com.apple.coremedia", "");
      v29 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE4CuLL, "(Fig)", 0x2D7, v7, v27, v28);
      fncDumpWeakListenerHashesLockHeld();
      FigSimpleMutexUnlock(qword_1ED4CBFF8);
      if (v29)
      {
LABEL_35:
        FigCFWeakReferenceTableRemoveValue(qword_1ED4CBFF0, observera);
        goto LABEL_19;
      }

      if (center)
      {
        goto LABEL_16;
      }
    }

    else
    {
      CFDictionarySetValue(qword_1ED4CBFE8, v20, v22);
      FigSimpleMutexUnlock(qword_1ED4CBFF8);
      if (center)
      {
LABEL_16:
        if (observera)
        {
          if (name | object)
          {
            CFNotificationCenterAddObserver(center, observera, fncHandleWeakNotification, name, object, 0);
            v29 = 0;
LABEL_19:
            CFRelease(v22);
LABEL_20:
            CFRelease(v20);
            return v29;
          }

          v29 = 4294954571;
        }

        else
        {
          v29 = 4294954573;
        }

        goto LABEL_33;
      }
    }

    v29 = 4294954575;
LABEL_33:
    if (!v25)
    {
      FigSimpleMutexLock(qword_1ED4CBFF8);
      CFDictionaryRemoveValue(qword_1ED4CBFE8, v20);
      FigSimpleMutexUnlock(qword_1ED4CBFF8);
    }

    goto LABEL_35;
  }

  v15 = fig_log_get_emitter("com.apple.coremedia", "");

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v15, 0xFFFFCE49uLL, "(Fig)", 0x2B0, v7, v16, v17);
}

void fncDumpWeakListenerHashesLockHeld()
{
  Count = FigCFDictionaryGetCount(qword_1ED4CBFE8);
  v1 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], Count, MEMORY[0x1E695E9C0]);
  if (Count)
  {
    if (Count >> 61)
    {
      v3 = 0;
      v4 = 0;
      goto LABEL_14;
    }

    v5 = 8 * Count;
  }

  else
  {
    v5 = 0;
  }

  v4 = malloc_type_malloc(v5, 0x80040B8603338uLL);
  v6 = malloc_type_malloc(v5, 0x80040B8603338uLL);
  v3 = v6;
  if (v4)
  {
    if (v6)
    {
      CFDictionaryGetKeysAndValues(qword_1ED4CBFE8, v4, v6);
      if (Count)
      {
        for (i = 0; i != Count; ++i)
        {
          v8 = v4[i];
          if (FigCFWeakReferenceHolderIsWeakReferenceNULL(*(v3[i] + 2)))
          {
            v9 = " <- WEAK REFERENCE WAS ZEROED";
          }

          else
          {
            v9 = "";
          }

          v10 = CFStringCreateWithFormat(v1, 0, @"%@%s", v8, v9);
          CFArrayAppendValue(Mutable, v10);
          CFRelease(v10);
        }
      }
    }
  }

LABEL_14:
  free(v4);
  free(v3);
  if (Mutable)
  {
    CFArrayGetCount(Mutable);
  }

  MutableCopy = FigCFArrayCreateMutableCopy(v1, Mutable);
  v13.length = CFArrayGetCount(Mutable);
  v13.location = 0;
  CFArraySortValues(MutableCopy, v13, fncCompareCFStrings, 0);
  FigCFArrayApplyBlock(MutableCopy, &__block_literal_global_8);
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (Mutable)
  {

    CFRelease(Mutable);
  }
}

void fncHandleWeakNotification(const void *a1, void *a2, const void *a3, const void *a4, uint64_t a5)
{
  v9 = FigCFWeakReferenceTableCopyValue(qword_1ED4CBFF0, a2);
  if (!v9)
  {
    return;
  }

  v10 = v9;
  if (FigCFWeakReferenceHolderCopyReferencedObject(v9[2]))
  {
    v11 = *(v10 + 40);
    if (v11)
    {
      if (*(v10 + 48))
      {
        CFRetain(a4);
        v11 = *(v10 + 40);
      }

      v12 = *MEMORY[0x1E695E480];

      FigDeferNotificationToDispatchQueue(fncHandleDeferredNotification, a1, v10, a3, a4, a5, v11, v12);
      return;
    }

    fncCallOriginalCallbackAndReleaseWeakListener(v10, a1, a3, a4, a5);
  }

  CFRelease(v10);
}

uint64_t FigNotificationCenterRemoveWeakListener(__CFNotificationCenter *a1, const void *a2, uint64_t a3, const __CFString *a4, const void *a5)
{
  value = 0;
  v9 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"weak--%@--%p--%p--%p--listener", a4, a3, a2, a5);
  if (v9)
  {
    v10 = v9;
    FigThreadRunOnce(&sFigNotificationCenterWeakListenerLinks, FigNotificationCenterWeakListenerLinksInitOnce);
    FigSimpleMutexLock(qword_1ED4CBFF8);
    if (CFDictionaryGetValueIfPresent(qword_1ED4CBFE8, v10, &value))
    {
      CFRetain(value);
      CFDictionaryRemoveValue(qword_1ED4CBFE8, v10);
    }

    else if (byte_1ED4CC000)
    {
      FigLogBacktrace();
    }

    FigSimpleMutexUnlock(qword_1ED4CBFF8);
    if (value)
    {
      v11 = *(value + 4);
      if (a1)
      {
        if (v11)
        {
          CFNotificationCenterRemoveObserver(a1, *(value + 4), a4, a5);
          v12 = 0;
        }

        else
        {
          v12 = 4294954573;
        }
      }

      else
      {
        v12 = 4294954575;
      }

      FigCFWeakReferenceTableRemoveValue(qword_1ED4CBFF0, v11);
      CFRelease(value);
    }

    else
    {
      CFNotificationCenterRemoveObserver(a1, a2, a4, a5);
      v12 = 0;
    }

    CFRelease(v10);
  }

  else
  {
    FigNotificationCenterRemoveWeakListener_cold_1(&v15);
    return v15;
  }

  return v12;
}

uint64_t FigNotificationCenterWeakListenerLinksInitOnce()
{
  v0 = *MEMORY[0x1E695E480];
  qword_1ED4CBFE8 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  qword_1ED4CBFF8 = FigSimpleMutexCreate();
  FigCFWeakReferenceTableCreate(v0, 0, &qword_1ED4CBFF0);
  sfncWeakListenerLinkID = _CFRuntimeRegisterClass();
  if (FigGetCFPreferenceBooleanWithDefault(@"weak_hash_dump", @"com.apple.coremedia", 0))
  {
    FigInstallSysdiagnoseBlock(@"All registered weak listeners", &__block_literal_global_24);
  }

  result = FigGetCFPreferenceBooleanWithDefault(@"weak_avoid_cf_spi", @"com.apple.coremedia", 0);
  if (result)
  {
    byte_1ED4CC000 = 1;
  }

  return result;
}

CFNotificationCenterRef CMNotificationCenterGetDefaultLocalCenter()
{
  FigThreadRunOnce(&CMNotificationCenterGetDefaultLocalCenter_initOnce, FigNotificationCenterSupportInitOnce);

  return CFNotificationCenterGetLocalCenter();
}

CFNotificationCenterRef CMNotificationCenterCreate()
{
  FigThreadRunOnce(&CMNotificationCenterGetDefaultLocalCenter_initOnce, FigNotificationCenterSupportInitOnce);
  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFRetain(LocalCenter);
  return LocalCenter;
}

size_t FigNotificationCenterAddWeakListeners(CFNotificationCenterRef center, void *observer, uint64_t a3, uint64_t a4, void *object, int a6, NSObject *a7)
{
  if (!a4)
  {
    return 0;
  }

  v13 = 0;
  v14 = (a3 + 8);
  for (i = a3; ; i += 16)
  {
    v16 = *(v14 - 1) ? *(v14 - 1) : 0;
    v17 = FigNotificationCenterAddWeakListener(center, observer, v16, **v14, object, a6, a7);
    if (v17)
    {
      break;
    }

    ++v13;
    v14 += 2;
    if (a4 == v13)
    {
      return 0;
    }
  }

  v18 = v17;
  FigNotificationCenterRemoveWeakListeners(center, observer, a3, v13, object);
  return v18;
}

uint64_t FigNotificationCenterRemoveWeakListeners(__CFNotificationCenter *a1, const void *a2, uint64_t a3, uint64_t a4, const void *a5)
{
  if (!a4)
  {
    return 0;
  }

  v6 = a4;
  v7 = a3;
  LODWORD(v10) = 0;
  v11 = (a3 + 8);
  do
  {
    if (*(v11 - 1))
    {
      v12 = *(v11 - 1);
    }

    else
    {
      v12 = 0;
    }

    v13 = *v11;
    v11 += 2;
    v14 = FigNotificationCenterRemoveWeakListener(a1, a2, v12, *v13, a5);
    if (v10)
    {
      v15 = 1;
    }

    else
    {
      v15 = v14 == 0;
    }

    if (v15)
    {
      v10 = v10;
    }

    else
    {
      v10 = v14;
    }

    v7 += 16;
    --v6;
  }

  while (v6);
  return v10;
}

void fncHandleDeferredNotification(uint64_t a1, _BYTE *a2, uint64_t a3, const void *a4, uint64_t a5)
{
  fncCallOriginalCallbackAndReleaseWeakListener(a2, a1, a3, a4, a5);
  if (a2[48])
  {
    CFRelease(a4);
  }

  CFRelease(a2);
}

void fncCallOriginalCallbackAndReleaseWeakListener(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = FigCFWeakReferenceHolderCopyReferencedObject(*(a1 + 16));
  (*(a1 + 24))(a2, v10, a3, a4, a5);
  if (v10)
  {
    CFRelease(v10);
    if ((*(a1 + 48) & 2) != 0)
    {
      if (qword_1ED4CC460 != -1)
      {
        fncCallOriginalCallbackAndReleaseWeakListener_cold_1();
      }

      v11 = _MergedGlobals_8;

      dispatch_async_f(v11, v10, fncReleaseCFType);
    }

    else
    {

      CFRelease(v10);
    }
  }
}

dispatch_queue_t fncInitDeferredReleaseQueue(dispatch_queue_t *a1)
{
  result = dispatch_queue_create("com.apple.coremedia.notificationcenter.deferredRelease", 0);
  *a1 = result;
  return result;
}

uint64_t __FigNotificationCenterWeakListenerLinksInitOnce_block_invoke()
{
  FigSimpleMutexLock(qword_1ED4CBFF8);
  fncDumpWeakListenerHashesLockHeld();
  v0 = qword_1ED4CBFF8;

  return FigSimpleMutexUnlock(v0);
}

double fncWeakListenerLinkInit(uint64_t a1)
{
  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

void fncWeakListenerLinkFinalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    dispatch_release(v3);
    *(a1 + 40) = 0;
  }
}

size_t FigDeferNotificationToDispatchQueue(uint64_t a1, const void *a2, uint64_t a3, const void *a4, uint64_t a5, uint64_t a6, NSObject *a7, uint64_t a8)
{
  v17 = MEMORY[0x19A8D7200](a8, 64, 0x10E0040D4533F3FLL, 0);
  if (v17)
  {
    v20 = v17;
    *v17 = a2;
    v17[1] = a1;
    v17[2] = a3;
    v17[3] = a4;
    v17[4] = a5;
    v17[5] = a6;
    v17[6] = a8;
    if (a2)
    {
      CFRetain(a2);
      a4 = v20[3];
    }

    if (a4)
    {
      CFRetain(a4);
    }

    v21 = v20[5];
    if (v21)
    {
      CFRetain(v21);
    }

    v22 = v20[6];
    if (v22)
    {
      CFRetain(v22);
    }

    dispatch_async_f(a7, v20, figDeferredNotificationDispatchFunction);
    return 0;
  }

  else
  {

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE4AuLL, "(Fig)", 0xFE, v8, v18, v19);
  }
}

void figDeferredNotificationDispatchFunction(const void **ptr)
{
  v2 = ptr[1];
  if (v2)
  {
    v2(*ptr, ptr[2], ptr[3], ptr[4], ptr[5]);
  }

  figDeferredNotificationRelease(ptr);
}

uint64_t FigDispatchAsyncPostNotification(NSObject *a1, const void *a2, const void *a3, const void *a4, const void *a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  if (a1 && a2)
  {
    if (a3 && a4)
    {
      v11 = a6;
      v14 = *MEMORY[0x1E695E480];
      v15 = MEMORY[0x19A8D7200](*MEMORY[0x1E695E480], 64, 0x10E0040D4533F3FLL, 0);
      if (v15)
      {
        v23 = v15;
        *v15 = CFRetain(a2);
        v23[1] = 0;
        *(v23 + 14) = v11;
        v23[3] = CFRetain(a3);
        v23[4] = CFRetain(a4);
        if (a5)
        {
          v24 = CFRetain(a5);
        }

        else
        {
          v24 = 0;
        }

        v23[5] = v24;
        if (v14)
        {
          v25 = CFRetain(v14);
        }

        else
        {
          v25 = 0;
        }

        v23[6] = v25;
        dispatch_async_f(a1, v23, figDeferredPostNotification);
        return 0;
      }

      else
      {
        FigDispatchAsyncPostNotification_cold_1(&v27, v16, v17, v18, v19, v20, v21, v22);
        return v27;
      }
    }

    else
    {
      FigDispatchAsyncPostNotification_cold_2(&v28, a2, a3, a4, a5, a6, a7, a8);
      return v28;
    }
  }

  else
  {
    FigDispatchAsyncPostNotification_cold_3(&v29, a2, a3, a4, a5, a6, a7, a8);
    return v29;
  }
}

void figDeferredPostNotification(uint64_t a1)
{
  CMNotificationCenterPostNotification(*a1, *(a1 + 24), *(a1 + 32), *(a1 + 40));
  v2 = *(a1 + 32);
  if (*(a1 + 56))
  {
    if (v2)
    {
      if (qword_1ED4CC470 != -1)
      {
        figDeferredPostNotification_cold_1();
      }

      dispatch_async_f(_MergedGlobals_9, v2, fdpnReleaseCFType);
    }
  }

  else if (v2)
  {
    CFRelease(*(a1 + 32));
  }

  figDeferredNotificationRelease(a1);
}

dispatch_queue_t fdpnInitDeferredReleaseQueue(dispatch_queue_t *a1)
{
  result = dispatch_queue_create("com.apple.coremedia.deferredpostnotification.deferredRelease", 0);
  *a1 = result;
  return result;
}

void FigAttachmentsRegisterSampleBuffer()
{
  FigThreadRunOnce(&sRegisterFigSampleBufferTypeOnce, registerFigSampleBufferType);
  v0 = sFigSampleBufferID;

  FigRuntimeRegisterAttachmentBearerWithTypeID(sFigSampleBufferAttachmentBearerCallbacks, v0);
}

CFTypeRef FigSampleBufferRetain(CFTypeRef cf)
{
  if (cf)
  {
    return CFRetain(cf);
  }

  return cf;
}

size_t figSampleBufferCreateCallbackOrHandler(uint64_t a1, const void *a2, int a3, uint64_t a4, uint64_t a5, void *a6, CMFormatDescriptionRef desc, CMBlockBufferRef *a8, unint64_t a9, void *__src, unint64_t a11, void *a12, void *a13)
{
  cf = 0;
  if (!a13)
  {
    v22 = qword_1EAF1CCE0;
    v23 = v13;
    v24 = 4294954565;
    v25 = 2190;
    goto LABEL_18;
  }

  if (a8)
  {
    if (a9 >= 2 && a9 != a8)
    {
      v22 = qword_1EAF1CCE0;
      v23 = v13;
      v24 = 4294954558;
      v25 = 2210;
LABEL_18:
      v26 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v22, v24, "<<<< SampleBuffer >>>>", v25, v23, desc, a8);
      goto LABEL_19;
    }

    if (a11 >= 2 && a11 != a8)
    {
      v22 = qword_1EAF1CCE0;
      v23 = v13;
      v24 = 4294954558;
      v25 = 2218;
      goto LABEL_18;
    }
  }

  else
  {
    if (a9 >= 2)
    {
      v22 = qword_1EAF1CCE0;
      v23 = v13;
      v24 = 4294954558;
      v25 = 2197;
      goto LABEL_18;
    }

    if (a11)
    {
      v22 = qword_1EAF1CCE0;
      v23 = v13;
      v24 = 4294954558;
      v25 = 2201;
      goto LABEL_18;
    }
  }

  if (!desc || CMFormatDescriptionGetMediaType(desc) != 1936684398)
  {
    goto LABEL_28;
  }

  StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(desc);
  if (!StreamBasicDescription)
  {
    v22 = qword_1EAF1CCE0;
    v23 = v13;
    v24 = 4294954586;
    v25 = 2236;
    goto LABEL_18;
  }

  if (!StreamBasicDescription->mFramesPerPacket || !StreamBasicDescription->mBytesPerPacket)
  {
    v30 = a8;
  }

  else
  {
LABEL_28:
    v30 = 0;
  }

  v31 = sBufCreate(a1, a9, a11, v30, &cf, a6, desc, a8);
  if (!v31)
  {
    if (a2)
    {
      v32 = CFRetain(a2);
      v33 = cf;
      *(cf + 2) = v32;
    }

    else
    {
      v33 = cf;
    }

    sBufInitMakeDataReady(v33, a3, a4, a5, a6);
    v34 = FigFormatDescriptionRetain(desc);
    v35 = cf;
    *(cf + 10) = v34;
    *(v35 + 11) = a8;
    v36 = *(v35 + 12);
    if (v36)
    {
      memcpy(*(v35 + 13), __src, 72 * v36);
      sbufUpdateCachedTimestamps(cf, v37);
      v35 = cf;
    }

    v38 = *(v35 + 14);
    if (v38)
    {
      memcpy(*(v35 + 15), a12, 8 * v38);
      v35 = cf;
    }

    figSampleBufferCheckDataSize(v35);
    v26 = 0;
    v27 = cf;
    goto LABEL_21;
  }

  v26 = v31;
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_19:
  if (a13)
  {
    v27 = 0;
LABEL_21:
    *a13 = v27;
  }

  return v26;
}

size_t figAudioSampleBufferCreateWithPacketDescriptionsCallbackOrHandler(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, CMFormatDescriptionRef desc, int64_t a8, __int128 *a9, void *a10, void *a11)
{
  v12 = a11;
  v84[0] = 0;
  if (!a11)
  {
    figAudioSampleBufferCreateWithPacketDescriptionsCallbackOrHandler_cold_8(&v83, a2, a3, a4, a5, a6, desc, a8);
LABEL_61:
    value_low = LODWORD(v83.value);
    goto LABEL_17;
  }

  if (a8 <= 0)
  {
    figAudioSampleBufferCreateWithPacketDescriptionsCallbackOrHandler_cold_7(&v83, a2, a3, a4, a5, a6, desc, a8);
    goto LABEL_61;
  }

  if (!desc)
  {
    figAudioSampleBufferCreateWithPacketDescriptionsCallbackOrHandler_cold_6(&v83, a2, a3, a4, a5, a6, 0, a8);
    goto LABEL_61;
  }

  v18 = a3;
  if (CMFormatDescriptionGetMediaType(desc) != 1936684398)
  {
    figAudioSampleBufferCreateWithPacketDescriptionsCallbackOrHandler_cold_1(&v83, v21, v22, v23, v24, v25, v26, v27);
    goto LABEL_61;
  }

  if ((*(a9 + 3) & 0x1D) != 1)
  {
    figAudioSampleBufferCreateWithPacketDescriptionsCallbackOrHandler_cold_2(&v83, v21, v22, v23, v24, v25, v26, v27);
    goto LABEL_61;
  }

  if (!a2 && v18)
  {
    figAudioSampleBufferCreateWithPacketDescriptionsCallbackOrHandler_cold_5(&v83, v21, v22, v23, v24, v25, v26, v27);
    goto LABEL_61;
  }

  StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(desc);
  if (!StreamBasicDescription)
  {
    value_low = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE5AuLL, "<<<< SampleBuffer >>>>", 0x967, v11, v33, v34);
    goto LABEL_17;
  }

  v35 = StreamBasicDescription;
  if (StreamBasicDescription->mFramesPerPacket)
  {
    v36 = 1;
  }

  else
  {
    v36 = a8;
  }

  if (StreamBasicDescription->mBytesPerPacket)
  {
    if (StreamBasicDescription->mFormatID == 1819304813 && (StreamBasicDescription->mFormatFlags & 0x20) != 0)
    {
LABEL_29:
      v37 = 0;
    }

    else
    {
      v37 = 1;
    }
  }

  else
  {
    if (!a10)
    {
      figAudioSampleBufferCreateWithPacketDescriptionsCallbackOrHandler_cold_4(&v83, v36, v29, v30, v31, v32, v33, v34);
      goto LABEL_66;
    }

    v39 = 0;
    v40 = 0;
    v41 = a10;
    do
    {
      if (v40)
      {
        if (*v41 != v39)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v39 = *a10;
      }

      v39 += *(v41 + 3);
      ++v40;
      v41 += 2;
    }

    while (a8 != v40);
    v37 = a8;
  }

  v79 = v37;
  v42 = sBufCreate(a1, v36, v37, a8, v84, v32, v33, v34);
  if (!v42)
  {
    if (a2)
    {
      v43 = CFRetain(a2);
      v44 = v84[0];
      *(v84[0] + 2) = v43;
      v44[24] = 0;
    }

    else
    {
      v44 = v84[0];
    }

    sBufInitMakeDataReady(v44, v18, a4, a5, a6);
    v45 = FigFormatDescriptionRetain(desc);
    v48 = v84[0];
    *(v84[0] + 10) = v45;
    *(v48 + 11) = a8;
    v49 = *(v48 + 13);
    *(v48 + 10) = *&kCMTimeInvalid.value;
    *(v48 + 22) = 0;
    v50 = *a9;
    *(v48 + 25) = *(a9 + 2);
    *(v48 + 184) = v50;
    *(v48 + 28) = 0;
    *(v48 + 13) = *&kCMTimeZero.value;
    mFramesPerPacket = v35->mFramesPerPacket;
    if (mFramesPerPacket)
    {
      CMTimeMake(&v83, mFramesPerPacket, v35->mSampleRate);
      v52 = *&v83.value;
      *(v49 + 2) = v83.epoch;
      *v49 = v52;
      v53 = *a9;
      *(v49 + 5) = *(a9 + 2);
      *(v49 + 24) = v53;
      v49[3] = *&kCMTimeInvalid.value;
      *(v49 + 8) = 0;
      v54 = v84[0];
      v55 = *(v84[0] + 22);
      v56 = *v49;
      time.epoch = *(v49 + 2);
      *&time.value = v56;
      CMTimeMultiply(&v83, &time, v55);
      *(v54 + 208) = v83;
    }

    else
    {
      *&v83.value = *a9;
      v83.epoch = *(a9 + 2);
      if (!a10)
      {
        value_low = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE45uLL, "<<<< SampleBuffer >>>>", 0x9C1, v11, v46, v47);
LABEL_67:
        v12 = a11;
LABEL_17:
        if (!value_low)
        {
          goto LABEL_52;
        }

        goto LABEL_18;
      }

      v64 = (a10 + 1);
      v65 = a8;
      do
      {
        v66 = *v64;
        v64 += 4;
        CMTimeMake(&time, v66, v35->mSampleRate);
        v67 = *&time.value;
        *(v49 + 2) = time.epoch;
        *v49 = v67;
        v68 = *&v83.value;
        *(v49 + 5) = v83.epoch;
        *(v49 + 24) = v68;
        v49[3] = *&kCMTimeInvalid.value;
        *(v49 + 8) = 0;
        v69 = v84[0];
        lhs = *(v84[0] + 208);
        v70 = *v49;
        rhs.epoch = *(v49 + 2);
        *&rhs.value = v70;
        CMTimeAdd(&time, &lhs, &rhs);
        *(v69 + 208) = time;
        time = v83;
        v71 = *v49;
        lhs.epoch = *(v49 + 2);
        *&lhs.value = v71;
        CMTimeAdd(&v83, &time, &lhs);
        v49 = (v49 + 72);
        --v65;
      }

      while (v65);
    }

    if (!v79)
    {
LABEL_44:
      if (!a10)
      {
        value_low = 0;
LABEL_51:
        v12 = a11;
        goto LABEL_52;
      }

      v72 = v84[0];
LABEL_50:
      memcpy(v72[41], a10, 16 * a8);
      value_low = 0;
      *(v84[0] + 344) = 1;
      goto LABEL_51;
    }

    v72 = v84[0];
    v73 = *(v84[0] + 15);
    mBytesPerPacket = v35->mBytesPerPacket;
    if (mBytesPerPacket)
    {
      if (v35->mFormatID != 1819304813 || (v35->mFormatFlags & 0x20) == 0)
      {
        *v73 = mBytesPerPacket;
      }

      goto LABEL_44;
    }

    if (a10)
    {
      v75 = a10 + 3;
      v76 = a8;
      do
      {
        v77 = *v75;
        v75 += 4;
        *v73++ = v77;
        --v76;
      }

      while (v76);
      goto LABEL_50;
    }

    figAudioSampleBufferCreateWithPacketDescriptionsCallbackOrHandler_cold_3(&v83, v57, v58, v59, v60, v61, v62, v63);
LABEL_66:
    value_low = LODWORD(v83.value);
    goto LABEL_67;
  }

  value_low = v42;
  v12 = a11;
LABEL_18:
  if (v84[0])
  {
    CFRelease(v84[0]);
  }

  v84[0] = 0;
LABEL_52:
  if (v12)
  {
    *v12 = v84[0];
  }

  return value_low;
}

size_t figSampleBufferCreateForImageBufferCallbackOrHandler(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, CMFormatDescriptionRef desc, uint64_t a8, void *a9)
{
  cf = 0;
  if (!a9)
  {
    figSampleBufferCreateForImageBufferCallbackOrHandler_cold_5(&v41, a2, a3, a4, a5, a6, desc, a8);
LABEL_23:
    v27 = v41;
    goto LABEL_12;
  }

  if (!a2)
  {
    figSampleBufferCreateForImageBufferCallbackOrHandler_cold_4(&v41, 0, a3, a4, a5, a6, desc, a8);
    goto LABEL_23;
  }

  if (!desc)
  {
    figSampleBufferCreateForImageBufferCallbackOrHandler_cold_3(&v41, a2, a3, a4, a5, a6, 0, a8);
    goto LABEL_23;
  }

  v15 = a3;
  if (CMFormatDescriptionGetMediaType(desc) != 1986618469 && CMFormatDescriptionGetMediaType(desc) != 1635088502 && CMFormatDescriptionGetMediaType(desc) != 1885954932)
  {
    figSampleBufferCreateForImageBufferCallbackOrHandler_cold_1(&v41, v17, v18, v19, v20, v21, v22, v23);
    goto LABEL_23;
  }

  if (!a8)
  {
    figSampleBufferCreateForImageBufferCallbackOrHandler_cold_2(&v41, v17, v18, v19, v20, v21, v22, v23);
    goto LABEL_23;
  }

  if (CMVideoFormatDescriptionMatchesImageBuffer(desc, a2))
  {
    v27 = sBufCreate(a1, 1uLL, 0, 0, &cf, v24, v25, v26);
    if (!v27)
    {
      *(cf + 24) = 1;
      v28 = CFRetain(a2);
      v29 = cf;
      *(cf + 2) = v28;
      sBufInitMakeDataReady(v29, v15, a4, a5, a6);
      v30 = FigFormatDescriptionRetain(desc);
      v31 = cf;
      *(cf + 10) = v30;
      *(v31 + 11) = 1;
      v32 = *(v31 + 13);
      v33 = *(a8 + 16);
      v34 = *(a8 + 32);
      v35 = *(a8 + 48);
      *(v32 + 64) = *(a8 + 64);
      *(v32 + 32) = v34;
      *(v32 + 48) = v35;
      *(v32 + 16) = v33;
      *v32 = *a8;
      v36 = *(a8 + 64);
      *(v31 + 10) = *(a8 + 48);
      *(v31 + 22) = v36;
      v37 = *(a8 + 40);
      *(v31 + 184) = *(a8 + 24);
      *(v31 + 25) = v37;
      v38 = *(a8 + 16);
      *(v31 + 13) = *a8;
      *(v31 + 28) = v38;
LABEL_14:
      *a9 = v31;
      return v27;
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    v27 = 4294954553;
  }

LABEL_12:
  if (a9)
  {
    v31 = 0;
    goto LABEL_14;
  }

  return v27;
}

size_t FigSampleBufferCreateForCaptionGroup(const __CFAllocator *a1, const void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  cf = 0;
  if (!a2)
  {
    FigSampleBufferCreateForCaptionGroup_cold_4(&v24, 0, a3, a4, a5, a6, a7, a8);
    return v24;
  }

  if ((*(a3 + 12) & 0x1D) != 1)
  {
    FigSampleBufferCreateForCaptionGroup_cold_1(&v24, a2, a3, a4, a5, a6, a7, a8);
    return v24;
  }

  if ((*(a4 + 12) & 0x1D) != 1)
  {
    FigSampleBufferCreateForCaptionGroup_cold_2(&v24, a2, a3, a4, a5, a6, a7, a8);
    return v24;
  }

  if (!a5)
  {
    FigSampleBufferCreateForCaptionGroup_cold_3(&v24, a2, a3, a4, 0, a6, a7, a8);
    return v24;
  }

  v13 = sBufCreate(a1, 1uLL, 0, 0, &cf, a6, a7, a8);
  v14 = cf;
  if (v13 || (*(cf + 24) = 2, v15 = CFRetain(a2), v16 = cf, *(cf + 2) = v15, *(v16 + 7) = 1, *(v16 + 40) = 0, *(v16 + 11) = 1, v13 = FigCaptionGroupFormatDescriptionCreate(a1, 1668310898, v16 + 10), v14 = cf, v13))
  {
    if (v14)
    {
      CFRelease(v14);
    }
  }

  else
  {
    v17 = *(cf + 13);
    v18 = *a3;
    *(v17 + 40) = *(a3 + 16);
    *(v17 + 24) = v18;
    *(v17 + 48) = *&kCMTimeInvalid.value;
    *(v17 + 64) = 0;
    v19 = *(a4 + 16);
    *v17 = *a4;
    *(v17 + 16) = v19;
    *(v14 + 22) = 0;
    *(v14 + 10) = *&kCMTimeInvalid.value;
    v20 = *(v17 + 40);
    *(v14 + 184) = *(v17 + 24);
    *(v14 + 25) = v20;
    v21 = *(v17 + 16);
    *(v14 + 13) = *v17;
    *(v14 + 28) = v21;
    *a5 = v14;
  }

  return v13;
}

uint64_t sBufInitMakeDataReady(uint64_t result, int a2, uint64_t a3, uint64_t a4, void *aBlock)
{
  v5 = result;
  if (a2)
  {
    *(result + 28) = 1;
LABEL_3:
    *(result + 40) = 0;
    return result;
  }

  *(result + 28) = 0;
  if (a3)
  {
    *(result + 40) = 1;
    *(result + 48) = a3;
    *(result + 56) = a4;
    result = FigSimpleMutexCreate();
    *(v5 + 64) = result;
  }

  else
  {
    if (!aBlock)
    {
      goto LABEL_3;
    }

    *(result + 40) = 3;
    result = _Block_copy(aBlock);
    *(v5 + 48) = result;
  }

  return result;
}

size_t FigSampleBufferCreateForTaggedBufferGroup(const __CFAllocator *a1, const void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  cf = 0;
  if (!a2)
  {
    FigSampleBufferCreateForTaggedBufferGroup_cold_3(&v24, 0, a3, a4, a5, a6, a7, a8);
    return v24;
  }

  if ((*(a3 + 12) & 0x1D) != 1)
  {
    FigSampleBufferCreateForTaggedBufferGroup_cold_1(&v24, a2, a3, a4, a5, a6, a7, a8);
    return v24;
  }

  if (!a5)
  {
    FigSampleBufferCreateForTaggedBufferGroup_cold_2(&v24, a2, a3, a4, 0, a6, a7, a8);
    return v24;
  }

  v13 = sBufCreate(a1, 1uLL, 0, 0, &cf, a6, a7, a8);
  v14 = cf;
  if (v13 || (*(cf + 24) = 3, v15 = CFRetain(a2), v16 = cf, *(cf + 2) = v15, *(v16 + 7) = 1, *(v16 + 40) = 0, *(v16 + 11) = 1, v13 = FigTaggedBufferGroupFormatDescriptionCreate(a1, 1952606066, v16 + 10), v14 = cf, v13))
  {
    if (v14)
    {
      CFRelease(v14);
    }
  }

  else
  {
    v17 = *(cf + 13);
    v18 = *a3;
    *(v17 + 40) = *(a3 + 16);
    *(v17 + 24) = v18;
    *(v17 + 48) = *&kCMTimeInvalid.value;
    *(v17 + 64) = 0;
    v19 = *(a4 + 16);
    *v17 = *a4;
    *(v17 + 16) = v19;
    *(v14 + 22) = 0;
    *(v14 + 10) = *&kCMTimeInvalid.value;
    v20 = *(v17 + 40);
    *(v14 + 184) = *(v17 + 24);
    *(v14 + 25) = v20;
    v21 = *(v17 + 16);
    *(v14 + 13) = *v17;
    *(v14 + 28) = v21;
    *a5 = v14;
  }

  return v13;
}

OSStatus CMSampleBufferCreateForTaggedBufferGroup(CFAllocatorRef allocator, CMTaggedBufferGroupRef taggedBufferGroup, CMTime *sbufPTS, CMTime *sbufDuration, CMTaggedBufferGroupFormatDescriptionRef formatDescription, CMSampleBufferRef *sBufOut)
{
  cf = 0;
  if (!taggedBufferGroup)
  {
    CMSampleBufferCreateForTaggedBufferGroup_cold_5(&v33, 0, sbufPTS, sbufDuration, formatDescription, sBufOut, v6, v7);
    return v33;
  }

  if ((sbufPTS->flags & 0x1D) != 1)
  {
    CMSampleBufferCreateForTaggedBufferGroup_cold_1(&v33, taggedBufferGroup, sbufPTS, sbufDuration, formatDescription, sBufOut, v6, v7);
    return v33;
  }

  if (!formatDescription)
  {
    CMSampleBufferCreateForTaggedBufferGroup_cold_4(&v33, taggedBufferGroup, sbufPTS, sbufDuration, 0, sBufOut, v6, v7);
    return v33;
  }

  if (CMFormatDescriptionGetMediaType(formatDescription) != 1952606066)
  {
    CMSampleBufferCreateForTaggedBufferGroup_cold_2(&v33, v14, v15, v16, v17, v18, v19, v20);
    return v33;
  }

  if (!sBufOut)
  {
    CMSampleBufferCreateForTaggedBufferGroup_cold_3(&v33, v14, v15, v16, v17, v18, v19, v20);
    return v33;
  }

  v21 = sBufCreate(allocator, 1uLL, 0, 0, &cf, v18, v19, v20);
  if (v21)
  {
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    *(cf + 24) = 3;
    v22 = CFRetain(taggedBufferGroup);
    v23 = cf;
    *(cf + 2) = v22;
    v23[7] = 1;
    *(v23 + 40) = 0;
    *(v23 + 11) = 1;
    v24 = FigFormatDescriptionRetain(formatDescription);
    v25 = cf;
    *(cf + 10) = v24;
    v26 = *(v25 + 13);
    epoch = sbufPTS->epoch;
    *(v26 + 24) = *&sbufPTS->value;
    *(v26 + 5) = epoch;
    *(v26 + 8) = 0;
    v26[3] = *&kCMTimeInvalid.value;
    v28 = sbufDuration->epoch;
    *v26 = *&sbufDuration->value;
    *(v26 + 2) = v28;
    *(v25 + 10) = *&kCMTimeInvalid.value;
    *(v25 + 22) = 0;
    v29 = *(v26 + 24);
    *(v25 + 25) = *(v26 + 5);
    *(v25 + 184) = v29;
    v30 = *v26;
    *(v25 + 28) = *(v26 + 2);
    *(v25 + 13) = v30;
    *sBufOut = v25;
  }

  return v21;
}

OSStatus CMSampleBufferCreateCopy(CFAllocatorRef allocator, CMSampleBufferRef sbuf, CMSampleBufferRef *sampleBufferOut)
{
  if (sbuf && sampleBufferOut)
  {
    return CMSampleBufferCreateCopyWithNewTiming(allocator, sbuf, *(sbuf + 12), *(sbuf + 13), sampleBufferOut);
  }

  else
  {
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE45uLL, "<<<< SampleBuffer >>>>", 0xBAB, v5, v3, v4);
  }
}

OSStatus CMSampleBufferCreateCopyWithNewTiming(CFAllocatorRef allocator, CMSampleBufferRef originalSBuf, CMItemCount numSampleTimingEntries, const CMSampleTimingInfo *sampleTimingArray, CMSampleBufferRef *sampleBufferOut)
{
  cf = 0;
  if (originalSBuf && sampleBufferOut)
  {
    if (!numSampleTimingEntries || sampleTimingArray)
    {
      if (numSampleTimingEntries >= 2 && *(originalSBuf + 11) != numSampleTimingEntries)
      {
        CMSampleBufferCreateCopyWithNewTiming_cold_1(&v33, originalSBuf, numSampleTimingEntries, sampleTimingArray, sampleBufferOut, v5, v6, v7);
        v15 = 0;
        v14 = v33;
        goto LABEL_22;
      }

      v16 = *(originalSBuf + 10);
      if (v16)
      {
        MediaType = CMFormatDescriptionGetMediaType(v16);
        v18 = *(originalSBuf + 14);
        if (MediaType == 1936684398)
        {
          v19 = *(originalSBuf + 42);
        }

        else
        {
          v19 = 0;
        }
      }

      else
      {
        v19 = 0;
        v18 = *(originalSBuf + 14);
      }

      v20 = sBufCreate(allocator, numSampleTimingEntries, v18, v19, &cf, v5, v6, v7);
      v15 = cf;
      if (!v20)
      {
        v20 = sBufCopyInternals(originalSBuf, cf, 0, 1, v21, v22, v23, v24);
        v15 = cf;
        if (!v20)
        {
          v26 = *(cf + 12);
          if (v26)
          {
            memcpy(*(cf + 13), sampleTimingArray, 72 * v26);
          }

          v15 = cf;
          if (*(originalSBuf + 13) == sampleTimingArray)
          {
            v14 = 0;
            v27 = *(originalSBuf + 8);
            *(cf + 18) = *(originalSBuf + 18);
            v15[8] = v27;
            v28 = *(originalSBuf + 10);
            *(v15 + 22) = *(originalSBuf + 22);
            v15[10] = v28;
            v29 = *(originalSBuf + 184);
            *(v15 + 25) = *(originalSBuf + 25);
            *(v15 + 184) = v29;
            v30 = *(originalSBuf + 13);
            *(v15 + 28) = *(originalSBuf + 28);
            v15[13] = v30;
          }

          else
          {
            sbufUpdateCachedTimestamps(cf, v25);
            v14 = 0;
            v15 = cf;
          }

          goto LABEL_22;
        }
      }

      v14 = v20;
      if (!v15)
      {
LABEL_22:
        *sampleBufferOut = v15;
        return v14;
      }

      CFRelease(v15);
    }

    else
    {
      v14 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE45uLL, "<<<< SampleBuffer >>>>", 0xC7E, v8, v6, v7);
    }

LABEL_7:
    v15 = 0;
    goto LABEL_22;
  }

  v14 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE45uLL, "<<<< SampleBuffer >>>>", 0xC7A, v8, v6, v7);
  if (sampleBufferOut)
  {
    goto LABEL_7;
  }

  return v14;
}

size_t FigSampleBufferCreateCopyWithNoData(const __CFAllocator *a1, opaqueCMSampleBuffer *a2, CMSampleBufferRef *a3)
{
  sampleBufferOut = 0;
  v5 = CMSampleBufferCreateCopy(a1, a2, &sampleBufferOut);
  if (v5)
  {
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, v5, "<<<< SampleBuffer >>>>", 0xBBE, v3, v6, v7);
  }

  v9 = sampleBufferOut;
  v10 = *(sampleBufferOut + 24);
  if (v10 > 1)
  {
    if (v10 != 2 && v10 != 3)
    {
      goto LABEL_12;
    }

LABEL_9:
    if (*(sampleBufferOut + 2))
    {
      CFRelease(*(sampleBufferOut + 2));
      v9 = sampleBufferOut;
      *(sampleBufferOut + 2) = 0;
    }

    *(v9 + 24) = 0;
    goto LABEL_12;
  }

  if (!*(sampleBufferOut + 24))
  {
    if (*(sampleBufferOut + 2))
    {
      CFRelease(*(sampleBufferOut + 2));
      v9 = sampleBufferOut;
      *(sampleBufferOut + 2) = 0;
    }

    goto LABEL_12;
  }

  if (v10 == 1)
  {
    goto LABEL_9;
  }

LABEL_12:
  if (a3)
  {
    v8 = 0;
    *a3 = v9;
  }

  else
  {
    CFRelease(v9);
    return 0;
  }

  return v8;
}

size_t sBufCopyInternals(uint64_t a1, size_t a2, int a3, int a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  if (!a2)
  {
    v9 = qword_1EAF1CCE0;

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFCE45uLL, "<<<< SampleBuffer >>>>", 0xBEB, v8, a7, a8);
  }

  v15 = *(a1 + 24);
  *(a2 + 24) = v15;
  if (v15 < 4)
  {
    v16 = *(a1 + 16);
    if (v16)
    {
      v16 = CFRetain(v16);
    }

    *(a2 + 16) = v16;
  }

  *(a2 + 40) = 0;
  sBufTrackOtherToMakeDataReady(a2, a1, 0);
  v17 = FigFormatDescriptionRetain(*(a1 + 80));
  v18 = *(a1 + 88);
  *(a2 + 80) = v17;
  *(a2 + 88) = v18;
  v19 = *(a1 + 152);
  if (v19)
  {
    v19 = CFRetain(v19);
  }

  *(a2 + 152) = v19;
  if (a3)
  {
    v20 = *(a2 + 96);
    if (v20)
    {
      memcpy(*(a2 + 104), *(a1 + 104), 72 * v20);
    }

    v21 = *(a1 + 128);
    *(a2 + 144) = *(a1 + 144);
    *(a2 + 128) = v21;
    v22 = *(a1 + 160);
    *(a2 + 176) = *(a1 + 176);
    *(a2 + 160) = v22;
    v23 = *(a1 + 184);
    *(a2 + 200) = *(a1 + 200);
    *(a2 + 184) = v23;
    v24 = *(a1 + 208);
    *(a2 + 224) = *(a1 + 224);
    *(a2 + 208) = v24;
  }

  if (a4)
  {
    v25 = *(a2 + 112);
    if (v25)
    {
      memcpy(*(a2 + 120), *(a1 + 120), 8 * v25);
    }
  }

  v26 = *(a1 + 80);
  if (v26)
  {
    if (CMFormatDescriptionGetMediaType(v26) == 1936684398)
    {
      v27 = *(a1 + 336);
      if (v27)
      {
        if (*(a1 + 344))
        {
          memcpy(*(a2 + 328), *(a1 + 328), 16 * v27);
          *(a2 + 344) = 1;
        }
      }
    }
  }

  if (!*(a1 + 304))
  {
    v32 = 0;
    v28 = 0;
    goto LABEL_33;
  }

  v28 = *(a2 + 88);
  v29 = malloc_type_calloc(v28, 8uLL, 0x2004093837F09uLL);
  if (v29)
  {
    v32 = v29;
    if (v28 >= 1)
    {
      v33 = 0;
      v34 = 3137;
      do
      {
        v35 = CFGetAllocator(a2);
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 304), v33);
        MutableCopy = CFDictionaryCreateMutableCopy(v35, 0, ValueAtIndex);
        v32[v33] = MutableCopy;
        if (!MutableCopy)
        {
          goto LABEL_31;
        }
      }

      while (v28 != ++v33);
    }

    v40 = CFGetAllocator(a1);
    v41 = CFArrayCreate(v40, v32, v28, MEMORY[0x1E695E9C0]);
    *(a2 + 304) = v41;
    if (!v41)
    {
      v34 = 3143;
LABEL_31:
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE46uLL, "<<<< SampleBuffer >>>>", v34, v8, v38, v39);
LABEL_37:
      if (v28 >= 1)
      {
        v46 = v32;
        do
        {
          if (*v46)
          {
            CFRelease(*v46);
          }

          ++v46;
          --v28;
        }

        while (v28);
      }

      free(v32);
      return 0;
    }

LABEL_33:
    if (*(a1 + 312))
    {
      v42 = CFGetAllocator(a2);
      v43 = CFDictionaryCreateMutableCopy(v42, 0, *(a1 + 312));
      *(a2 + 312) = v43;
      if (!v43)
      {
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE46uLL, "<<<< SampleBuffer >>>>", 0xC4F, v8, v44, v45);
      }
    }

    if (!v32)
    {
      return 0;
    }

    goto LABEL_37;
  }

  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE46uLL, "<<<< SampleBuffer >>>>", 0xC3A, v8, v30, v31);
  if (result)
  {
    *(a2 + 88) = 0;
  }

  return result;
}

size_t FigSampleBufferCreateCopyWithNewSizesAndDataBuffer(uint64_t a1, uint64_t a2, unint64_t a3, const void *a4, const void *a5, CFTypeRef *a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  cf = 0;
  if (!a2 || !a5 || !a6)
  {
    v19 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE45uLL, "<<<< SampleBuffer >>>>", 0xCC7, v8, a7, a8);
    if (!a6)
    {
      return v19;
    }

    goto LABEL_24;
  }

  if (a3 && a4)
  {
    if (*(a2 + 24))
    {
      FigSampleBufferCreateCopyWithNewSizesAndDataBuffer_cold_1(&v30, a2, a3, a4, a5, a6, a7, a8);
    }

    else
    {
      if (a3 == 1 || *(a2 + 88) == a3)
      {
        v15 = *(a2 + 80);
        if (v15)
        {
          MediaType = CMFormatDescriptionGetMediaType(v15);
          v17 = *(a2 + 96);
          if (MediaType == 1936684398)
          {
            v18 = *(a2 + 336);
          }

          else
          {
            v18 = 0;
          }
        }

        else
        {
          v18 = 0;
          v17 = *(a2 + 96);
        }

        v20 = sBufCreate(a1, v17, a3, v18, &cf, a6, a7, a8);
        v25 = cf;
        if (v20 || (v20 = sBufCopyInternals(a2, cf, 1, 0, v21, v22, v23, v24), v25 = cf, v20))
        {
          v19 = v20;
          if (v25)
          {
            CFRelease(v25);
            cf = 0;
          }
        }

        else
        {
          v26 = *(cf + 14);
          if (v26)
          {
            memcpy(*(cf + 15), a4, 8 * v26);
            v25 = cf;
          }

          v27 = v25[2];
          v25[2] = a5;
          CFRetain(a5);
          if (v27)
          {
            CFRelease(v27);
          }

          v19 = 0;
        }

        goto LABEL_24;
      }

      FigSampleBufferCreateCopyWithNewSizesAndDataBuffer_cold_2(&v30, a2, a3, a4, a5, a6, a7, a8);
    }

    v19 = v30;
  }

  else
  {
    v19 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE45uLL, "<<<< SampleBuffer >>>>", 0xCCB, v8, a7, a8);
  }

LABEL_24:
  *a6 = cf;
  return v19;
}

const void **FigSampleBufferCreateCopyWithNewFormatDescription(uint64_t a1, uint64_t a2, const void *a3, CFTypeRef *a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  cf = 0;
  if (!a2 || !a3 || !a4)
  {
    v19 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE45uLL, "<<<< SampleBuffer >>>>", 0xD9C, v8, a7, a8);
    goto LABEL_46;
  }

  v13 = *(a2 + 80);
  if (v13)
  {
    MediaType = CMFormatDescriptionGetMediaType(v13);
    v15 = *(a2 + 96);
    v16 = *(a2 + 112);
    if (MediaType == 1936684398)
    {
      v17 = 0;
      v18 = *(a2 + 336);
      goto LABEL_11;
    }

    v18 = 0;
  }

  else
  {
    v18 = 0;
    v15 = *(a2 + 96);
    v16 = *(a2 + 112);
  }

  v17 = 1;
LABEL_11:
  v19 = sBufCreate(a1, v15, v16, v18, &cf, a6, a7, a8);
  v20 = cf;
  if (v19)
  {
LABEL_50:
    if (v19 && v20)
    {
      CFRelease(v20);
      cf = 0;
    }

    goto LABEL_47;
  }

  v21 = *(a2 + 24);
  *(cf + 24) = v21;
  if (v21 < 4)
  {
    v22 = *(a2 + 16);
    if (v22)
    {
      v22 = CFRetain(*(a2 + 16));
      v20 = cf;
    }

    *(v20 + 2) = v22;
  }

  *(v20 + 40) = 0;
  sBufTrackOtherToMakeDataReady(v20, a2, 0);
  v23 = FigFormatDescriptionRetain(a3);
  v24 = cf;
  v25 = *(a2 + 88);
  *(cf + 10) = v23;
  *(v24 + 11) = v25;
  v26 = *(a2 + 152);
  if (v26)
  {
    v26 = CFRetain(*(a2 + 152));
    v24 = cf;
  }

  *(v24 + 19) = v26;
  v27 = *(v24 + 12);
  if (v27)
  {
    memcpy(*(v24 + 13), *(a2 + 104), 72 * v27);
    v24 = cf;
  }

  v28 = *(v24 + 14);
  if (v28)
  {
    memcpy(*(v24 + 15), *(a2 + 120), 8 * v28);
    v24 = cf;
  }

  v29 = *(a2 + 128);
  *(v24 + 18) = *(a2 + 144);
  *(v24 + 8) = v29;
  v30 = *(a2 + 160);
  *(v24 + 22) = *(a2 + 176);
  *(v24 + 10) = v30;
  v31 = *(a2 + 184);
  *(v24 + 25) = *(a2 + 200);
  *(v24 + 184) = v31;
  v32 = *(a2 + 208);
  *(v24 + 28) = *(a2 + 224);
  *(v24 + 13) = v32;
  if ((v17 & 1) == 0)
  {
    v33 = *(a2 + 336);
    if (v33)
    {
      if (*(a2 + 344))
      {
        memcpy(*(v24 + 41), *(a2 + 328), 16 * v33);
        v24 = cf;
        *(cf + 344) = 1;
      }
    }
  }

  if (!*(a2 + 304))
  {
    v19 = 0;
    v34 = 0;
    goto LABEL_36;
  }

  v34 = *(v24 + 11);
  v35 = malloc_type_calloc(v34, 8uLL, 0x2004093837F09uLL);
  if (!v35)
  {
    v19 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE46uLL, "<<<< SampleBuffer >>>>", 0xE00, v8, v36, v37);
    v20 = cf;
    goto LABEL_50;
  }

  v19 = v35;
  if (v34 >= 1)
  {
    v38 = 0;
    v39 = 3591;
    do
    {
      v40 = CFGetAllocator(cf);
      ValueAtIndex = CFArrayGetValueAtIndex(*(a2 + 304), v38);
      MutableCopy = CFDictionaryCreateMutableCopy(v40, 0, ValueAtIndex);
      v19[v38] = MutableCopy;
      if (!MutableCopy)
      {
        goto LABEL_34;
      }
    }

    while (v34 != ++v38);
  }

  v45 = CFGetAllocator(a2);
  v46 = CFArrayCreate(v45, v19, v34, MEMORY[0x1E695E9C0]);
  v24 = cf;
  *(cf + 38) = v46;
  if (!v46)
  {
    v39 = 3597;
LABEL_34:
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE46uLL, "<<<< SampleBuffer >>>>", v39, v8, v43, v44);
LABEL_40:
    if (v34 >= 1)
    {
      v51 = v19;
      do
      {
        if (*v51)
        {
          CFRelease(*v51);
        }

        ++v51;
        --v34;
      }

      while (v34);
    }

    free(v19);
    v19 = 0;
    goto LABEL_46;
  }

LABEL_36:
  if (*(a2 + 312))
  {
    v47 = CFGetAllocator(v24);
    v48 = CFDictionaryCreateMutableCopy(v47, 0, *(a2 + 312));
    *(cf + 39) = v48;
    if (!v48)
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE46uLL, "<<<< SampleBuffer >>>>", 0xE16, v8, v49, v50);
    }
  }

  if (v19)
  {
    goto LABEL_40;
  }

LABEL_46:
  if (a4)
  {
LABEL_47:
    *a4 = cf;
  }

  return v19;
}

OSStatus CMSampleBufferCopySampleBufferForRange(CFAllocatorRef allocator, CMSampleBufferRef sbuf, CFRange sampleRange, CMSampleBufferRef *sampleBufferOut)
{
  v146 = *MEMORY[0x1E69E9840];
  v141 = 0;
  value = 0;
  timescale = 0;
  v142 = 0;
  v143 = 0;
  attachmentModeOut = 0;
  timingArrayEntriesNeededOut = 0;
  if (!sbuf || !sampleBufferOut)
  {
    v16 = qword_1EAF1CCE0;
    v17 = v6;
    v18 = 4294954565;
    v19 = 3657;
LABEL_21:
    v23 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v16, v18, "<<<< SampleBuffer >>>>", v19, v17, v4, v5);
    v24 = 0;
LABEL_22:
    v25 = 0;
    v26 = 0;
    goto LABEL_23;
  }

  length = sampleRange.length;
  location = sampleRange.location;
  v12 = *(sbuf + 10);
  if (!v12)
  {
    v15 = (sbuf + 120);
    if (*(sbuf + 15))
    {
      v14 = 0;
      goto LABEL_12;
    }

    goto LABEL_17;
  }

  MediaType = CMFormatDescriptionGetMediaType(v12);
  v14 = MediaType == 1936684398;
  v15 = (sbuf + 120);
  if (*(sbuf + 15))
  {
    goto LABEL_12;
  }

  if (MediaType != 1936684398)
  {
LABEL_17:
    v16 = qword_1EAF1CCE0;
    v17 = v6;
    v18 = 4294954561;
    v19 = 3675;
    goto LABEL_21;
  }

  if (!*(sbuf + 41) || !*(sbuf + 344))
  {
    v16 = qword_1EAF1CCE0;
    v17 = v6;
    v18 = 4294954561;
    v19 = 3669;
    goto LABEL_21;
  }

  v14 = 1;
LABEL_12:
  if (location < 0 || (v20 = *(sbuf + 11), location >= v20) || length < 0 || location + length > v20)
  {
    v16 = qword_1EAF1CCE0;
    v17 = v6;
    v18 = 4294954562;
    v19 = 3681;
    goto LABEL_21;
  }

  if (v14)
  {
    v21 = *(sbuf + 42) == 0;
    v22 = *(sbuf + 344) == 0;
  }

  else
  {
    v22 = 1;
    v21 = 1;
  }

  v130 = v22;
  if (length)
  {
    if (*(sbuf + 12) <= 1)
    {
      v29 = *(sbuf + 12);
    }

    else
    {
      v29 = length;
    }

    v30 = *(sbuf + 14);
    if (v30 > 1)
    {
      v30 = length;
    }

    v131 = v30;
  }

  else
  {
    v29 = 0;
    v131 = 0;
  }

  if (CMGetAttachment(sbuf, @"TrimDurationAtStart", 0) || CMGetAttachment(sbuf, @"TrimDurationAtEnd", 0) || CMGetAttachment(sbuf, @"SpeedMultiplier", 0) || CMGetAttachment(sbuf, @"Reverse", 0) || (*(sbuf + 35) & 0x1D) == 1)
  {
    OutputSampleTimingInfoArray = CMSampleBufferGetOutputSampleTimingInfoArray(sbuf, 0, 0, &timingArrayEntriesNeededOut);
    if (OutputSampleTimingInfoArray)
    {
      v23 = OutputSampleTimingInfoArray;
      v26 = 0;
      v25 = 0;
      v24 = 0;
LABEL_24:
      if (v141)
      {
        CFRelease(v141);
      }

      v141 = 0;
LABEL_27:
      free(v24);
      if (!v25)
      {
        goto LABEL_34;
      }

      goto LABEL_28;
    }

    structureAllocator = allocator;
    v24 = malloc_type_malloc(72 * timingArrayEntriesNeededOut, 0x1000040FF89C88EuLL);
    if (!v24)
    {
      v23 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE46uLL, "<<<< SampleBuffer >>>>", 0xE8E, v6, v35, v36);
      goto LABEL_22;
    }

    v37 = CMSampleBufferGetOutputSampleTimingInfoArray(sbuf, timingArrayEntriesNeededOut, v24, 0);
    if (v37)
    {
LABEL_55:
      v23 = v37;
      v26 = 0;
      v25 = 0;
      goto LABEL_24;
    }

    v128 = 0;
  }

  else
  {
    structureAllocator = allocator;
    v24 = 0;
    v128 = 1;
  }

  if (v21)
  {
    v38 = 0;
  }

  else
  {
    v38 = length;
  }

  v37 = sBufCreate(structureAllocator, v29, v131, v38, &v141, v31, v32, v33);
  if (v37)
  {
    goto LABEL_55;
  }

  v39 = *(sbuf + 24);
  v40 = v141;
  v141[24] = v39;
  v41 = location + length;
  if (v39)
  {
    if (v39 != 1 && v39 != 2 && v39 != 3)
    {
      v44 = 0;
      goto LABEL_86;
    }

    goto LABEL_82;
  }

  v42 = *(sbuf + 14);
  if (v42 < 1)
  {
LABEL_82:
    v54 = *(sbuf + 2);
    if (v54)
    {
      v54 = CFRetain(*(sbuf + 2));
      v40 = v141;
    }

    v44 = 0;
    goto LABEL_85;
  }

  if (v42 == 1)
  {
    v43 = **v15;
    v44 = v43 * location;
    v45 = v43 * length;
  }

  else
  {
    v44 = 0;
    if (location)
    {
      v46 = *v15;
      v47 = location;
      do
      {
        v48 = *v46++;
        v44 += v48;
        --v47;
      }

      while (v47);
    }

    if (length < 1)
    {
      goto LABEL_86;
    }

    v45 = 0;
    v49 = &(*v15)[location];
    v50 = length;
    do
    {
      v51 = *v49++;
      v45 += v51;
      --v50;
    }

    while (v50);
  }

  v52 = *(sbuf + 2);
  if (v52)
  {
    v53 = v45 == 0;
  }

  else
  {
    v53 = 1;
  }

  if (v53)
  {
    goto LABEL_86;
  }

  if (length >= *(sbuf + 11))
  {
    v54 = CFRetain(*(sbuf + 2));
    v40 = v141;
LABEL_85:
    *(v40 + 16) = v54;
    goto LABEL_86;
  }

  v37 = CMBlockBufferCreateWithBufferReference(structureAllocator, v52, v44, v45, 0, (v40 + 16));
  if (v37)
  {
    goto LABEL_55;
  }

  v40 = v141;
LABEL_86:
  *(v40 + 40) = 0;
  sBufTrackOtherToMakeDataReady(v40, sbuf, 0);
  v55 = FigFormatDescriptionRetain(*(sbuf + 10));
  v57 = v141;
  *(v141 + 10) = v55;
  *(v57 + 88) = length;
  v58 = *(sbuf + 19);
  if (v58)
  {
    v58 = CFRetain(*(sbuf + 19));
    v57 = v141;
  }

  *(v57 + 152) = v58;
  v59 = *(v57 + 96);
  if (v59)
  {
    v60 = 72 * v59;
    v61 = *(sbuf + 12) == 1 ? 0 : location;
    memcpy(*(v57 + 104), (*(sbuf + 13) + 72 * v61), v60);
    v57 = v141;
    if (*(sbuf + 12) == 1)
    {
      v62 = *(v141 + 13);
      v63 = *(sbuf + 13);
      v64 = *v63;
      time.epoch = *(v63 + 2);
      *&time.value = v64;
      CMTimeMultiply(&rhs, &time, location);
      lhs = *(v63 + 1);
      CMTimeAdd(&time, &lhs, &rhs);
      v56 = *&time.value;
      v62[1] = time;
      v65 = *(sbuf + 13);
      v57 = v141;
      if (*(v65 + 60))
      {
        v66 = *(v141 + 13);
        v67 = *v65;
        time.epoch = *(v65 + 2);
        *&time.value = v67;
        CMTimeMultiply(&rhs, &time, location);
        lhs = *(v65 + 2);
        CMTimeAdd(&time, &lhs, &rhs);
        v56 = *&time.value;
        v66[2] = time;
        v57 = v141;
      }

      v41 = location + length;
    }
  }

  v68 = *(v57 + 112);
  if (v68)
  {
    v69 = 8 * v68;
    if (*(sbuf + 14) == 1)
    {
      v70 = 0;
    }

    else
    {
      v70 = location;
    }

    memcpy(*(v57 + 120), (*(sbuf + 15) + 8 * v70), v69);
    v57 = v141;
  }

  sbufUpdateCachedTimestamps(v57, v56);
  if ((v128 & 1) == 0)
  {
    if (timingArrayEntriesNeededOut == *(sbuf + 11))
    {
      memset(&time, 0, sizeof(time));
      if (length >= 1)
      {
        p_presentationTimeStamp = &v24[location].presentationTimeStamp;
        v72 = location;
        do
        {
          v73 = *p_presentationTimeStamp;
          rhs.epoch = *(p_presentationTimeStamp + 16);
          *&rhs.value = v73;
          lhs = time;
          if (CMTimeCompare(&rhs, &lhs) < 0)
          {
            v74 = *p_presentationTimeStamp;
            time.epoch = *(p_presentationTimeStamp + 16);
            *&time.value = v74;
          }

          ++v72;
          p_presentationTimeStamp += 72;
        }

        while (v72 < v41);
      }

      *(v141 + 128) = time;
    }

    else
    {
      v75 = v141;
      v76 = *&v24->duration.value;
      time.epoch = v24->duration.epoch;
      *&time.value = v76;
      CMTimeMultiply(&rhs, &time, location);
      lhs = v24->presentationTimeStamp;
      CMTimeAdd(&time, &lhs, &rhs);
      *(v75 + 128) = time;
    }
  }

  if (!v130)
  {
    v77 = v141;
    if (*(sbuf + 42))
    {
      memcpy(*(v141 + 41), (*(sbuf + 41) + 16 * location), 16 * length);
      v77 = v141;
      if (*(v141 + 14) >= 1 && length >= 1)
      {
        v78 = 0;
        do
        {
          *(*(v77 + 41) + v78) -= v44;
          v78 += 16;
          --length;
        }

        while (length);
      }
    }

    v77[344] = 1;
  }

  if (!*(sbuf + 38))
  {
    v25 = 0;
    v26 = 0;
LABEL_126:
    if (*(sbuf + 39))
    {
      v91 = CFGetAllocator(v141);
      MutableCopy = CFDictionaryCreateMutableCopy(v91, 0, *(sbuf + 39));
      *(v141 + 39) = MutableCopy;
      if (!MutableCopy)
      {
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE46uLL, "<<<< SampleBuffer >>>>", 0xF35, v6, v93, v94);
        goto LABEL_147;
      }
    }

    v95 = CMGetAttachment(sbuf, @"TrimDurationAtStart", &attachmentModeOut);
    CMTimeMakeFromDictionary(&time, v95);
    value = time.value;
    flags = time.flags;
    timescale = time.timescale;
    epoch = time.epoch;
    *&v135.value = *&kCMTimeZero.value;
    v135.epoch = 0;
    if (time.flags)
    {
      memset(&time, 0, sizeof(time));
      rhs = *(v141 + 184);
      lhs = *(sbuf + 184);
      CMTimeSubtract(&time, &rhs, &lhs);
      CMRemoveAttachment(v141, @"TrimDurationAtStart");
      if (time.flags)
      {
        memset(&rhs, 0, sizeof(rhs));
        lhs.value = value;
        lhs.timescale = timescale;
        lhs.flags = flags;
        lhs.epoch = epoch;
        time2 = time;
        CMTimeSubtract(&rhs, &lhs, &time2);
        *&lhs.value = *&kCMTimeZero.value;
        lhs.epoch = 0;
        time2 = rhs;
        if (CMTimeCompare(&lhs, &time2) < 0)
        {
          lhs = rhs;
          v98 = CMTimeCopyAsDictionary(&lhs, structureAllocator);
          if (!v98)
          {
            v124 = qword_1EAF1CCE0;
            v125 = v6;
            v126 = 3917;
            goto LABEL_145;
          }

          v99 = v98;
          CMSetAttachment(v141, @"TrimDurationAtStart", v98, attachmentModeOut);
          CFRelease(v99);
          v135 = rhs;
        }
      }
    }

    v100 = CMGetAttachment(sbuf, @"TrimDurationAtEnd", &attachmentModeOut);
    CMTimeMakeFromDictionary(&time, v100);
    v142 = time.value;
    v101 = time.flags;
    v143 = time.timescale;
    if ((time.flags & 1) == 0)
    {
      goto LABEL_138;
    }

    v102 = time.epoch;
    memset(&time, 0, sizeof(time));
    lhs = *(v141 + 184);
    time2 = *(v141 + 208);
    CMTimeAdd(&rhs, &lhs, &time2);
    time2 = *(sbuf + 184);
    v133 = *(sbuf + 208);
    CMTimeAdd(&lhs, &time2, &v133);
    CMTimeSubtract(&time, &rhs, &lhs);
    CMRemoveAttachment(v141, @"TrimDurationAtEnd");
    if ((time.flags & 1) == 0)
    {
      goto LABEL_138;
    }

    memset(&rhs, 0, sizeof(rhs));
    lhs.value = v142;
    lhs.timescale = v143;
    lhs.flags = v101;
    lhs.epoch = v102;
    time2 = time;
    CMTimeAdd(&rhs, &lhs, &time2);
    *&lhs.value = *&kCMTimeZero.value;
    lhs.epoch = 0;
    time2 = rhs;
    if ((CMTimeCompare(&lhs, &time2) & 0x80000000) == 0)
    {
      goto LABEL_138;
    }

    lhs = rhs;
    v103 = CMTimeCopyAsDictionary(&lhs, structureAllocator);
    if (v103)
    {
      v104 = v103;
      CMSetAttachment(v141, @"TrimDurationAtEnd", v103, attachmentModeOut);
      CFRelease(v104);
      lhs = v135;
      time2 = rhs;
      CMTimeAdd(&v135, &lhs, &time2);
LABEL_138:
      time = v135;
      rhs = *(v141 + 208);
      if ((CMTimeCompare(&time, &rhs) & 0x80000000) == 0)
      {
        CMRemoveAttachment(v141, @"TrimDurationAtStart");
        CMRemoveAttachment(v141, @"TrimDurationAtEnd");
        time = *(v141 + 208);
        v105 = CMTimeCopyAsDictionary(&time, structureAllocator);
        if (!v105)
        {
          CMSampleBufferCopySampleBufferForRange_cold_2(&time, v106, v107, v108, v109, v110, v111, v112);
          v23 = time.value;
          goto LABEL_23;
        }

        v113 = v105;
        CMSetAttachment(v141, @"TrimDurationAtStart", v105, attachmentModeOut);
        CFRelease(v113);
      }

      v114 = CMGetAttachment(sbuf, @"SampleReferenceByteOffset", &attachmentModeOut);
      if (v114)
      {
        time.value = 0;
        CFNumberGetValue(v114, kCFNumberSInt64Type, &time);
        time.value += v44;
        SInt64 = FigCFNumberCreateSInt64(*MEMORY[0x1E695E480], time.value);
        if (SInt64)
        {
          v123 = SInt64;
          CMSetAttachment(v141, @"SampleReferenceByteOffset", SInt64, attachmentModeOut);
          CFRelease(v123);
          v23 = 0;
        }

        else
        {
          CMSampleBufferCopySampleBufferForRange_cold_1(&rhs, v116, v117, v118, v119, v120, v121, v122);
          v23 = rhs.value;
        }

LABEL_23:
        if (!v23)
        {
          goto LABEL_27;
        }

        goto LABEL_24;
      }

LABEL_147:
      v23 = 0;
      goto LABEL_27;
    }

    v124 = qword_1EAF1CCE0;
    v125 = v6;
    v126 = 3942;
LABEL_145:
    v23 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v124, 0xFFFFCE46uLL, "<<<< SampleBuffer >>>>", v126, v125, v80, v81);
    goto LABEL_23;
  }

  v26 = *(v141 + 11);
  v79 = malloc_type_calloc(v26, 8uLL, 0x2004093837F09uLL);
  v25 = v79;
  if (!v79)
  {
    v124 = qword_1EAF1CCE0;
    v125 = v6;
    v126 = 3871;
    goto LABEL_145;
  }

  v132 = v44;
  if (v26 >= 1)
  {
    v82 = v79;
    v83 = v26;
    while (1)
    {
      v84 = CFGetAllocator(v141);
      ValueAtIndex = CFArrayGetValueAtIndex(*(sbuf + 38), location);
      v86 = CFDictionaryCreateMutableCopy(v84, 0, ValueAtIndex);
      *v82 = v86;
      if (!v86)
      {
        break;
      }

      ++v82;
      ++location;
      if (!--v83)
      {
        goto LABEL_123;
      }
    }

    v127 = 3878;
    goto LABEL_151;
  }

LABEL_123:
  v89 = CFGetAllocator(sbuf);
  v90 = CFArrayCreate(v89, v25, v26, MEMORY[0x1E695E9C0]);
  *(v141 + 38) = v90;
  if (v90)
  {
    v44 = v132;
    goto LABEL_126;
  }

  v127 = 3884;
LABEL_151:
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE46uLL, "<<<< SampleBuffer >>>>", v127, v6, v87, v88);
  free(v24);
  v23 = 0;
LABEL_28:
  if (v26 >= 1)
  {
    v27 = v25;
    do
    {
      if (*v27)
      {
        CFRelease(*v27);
      }

      ++v27;
      --v26;
    }

    while (v26);
  }

  free(v25);
LABEL_34:
  if (sampleBufferOut)
  {
    *sampleBufferOut = v141;
  }

  return v23;
}

OSStatus CMSampleBufferGetOutputSampleTimingInfoArray(CMSampleBufferRef sbuf, CMItemCount timingArrayEntries, CMSampleTimingInfo *timingArrayOut, CMItemCount *timingArrayEntriesNeededOut)
{
  v68 = *MEMORY[0x1E69E9840];
  value = 0;
  timescale = 0;
  v64 = 0;
  v65 = 0;
  if (*(sbuf + 25))
  {
    v7 = qword_1EAF1CCE0;

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, 0xFFFFCE38uLL, "<<<< SampleBuffer >>>>", 0x132B, v6, v4, v5);
  }

  v10 = *(sbuf + 12);
  if (v10 && *(sbuf + 13))
  {
    flags = 0;
    v14 = CMGetAttachment(sbuf, @"TrimDurationAtStart", 0);
    v57 = 0;
    epoch = 0;
    if (v14)
    {
      CMTimeMakeFromDictionary(&time1, v14);
      value = time1.value;
      flags = time1.flags;
      timescale = time1.timescale;
      epoch = time1.epoch;
    }

    v15 = sbuf;
    v16 = CMGetAttachment(sbuf, @"TrimDurationAtEnd", 0);
    v19 = 0;
    v20 = 0;
    if (v16)
    {
      CMTimeMakeFromDictionary(&time1, v16);
      v64 = time1.value;
      v19 = time1.flags;
      v65 = time1.timescale;
      v20 = time1.epoch;
    }

    v21 = *(sbuf + 11);
    v22 = timingArrayOut;
    if (v21 > v10 && ((v19 & 0x1D) == 1 || (flags & 0x1D) == 1))
    {
      v10 = *(v15 + 11);
    }

    if (timingArrayEntriesNeededOut)
    {
      *timingArrayEntriesNeededOut = v10;
    }

    if (!timingArrayOut)
    {
      return 0;
    }

    if (v10 > timingArrayEntries)
    {
      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE3FuLL, "<<<< SampleBuffer >>>>", 0x134D, v6, v17, v18);
    }

    v24 = *(v15 + 11);
    if (v24 <= 1)
    {
      CMSampleBufferGetOutputDuration(&time1, v15);
      timingArrayOut->duration = time1;
      CMSampleBufferGetOutputPresentationTimeStamp(&time1, v15);
      timingArrayOut->presentationTimeStamp = time1;
      CMSampleBufferGetOutputDecodeTimeStamp(&time1, v15);
      result = 0;
      timingArrayOut->decodeTimeStamp = time1;
      return result;
    }

    v52 = v20;
    v53 = v19;
    v25 = &timingArrayOut[v10];
    v54 = v10;
    if (*(v15 + 12) == v24)
    {
      memcpy(timingArrayOut, *(v15 + 13), 72 * v24);
    }

    else
    {
      *&time1.value = *&kCMTimeZero.value;
      time1.epoch = 0;
      if (v10 >= 1)
      {
        v26 = timingArrayOut;
        do
        {
          v27 = *(v15 + 13);
          v28 = *v27;
          v26->duration.epoch = *(v27 + 2);
          *&v26->duration.value = v28;
          lhs = *(*(v15 + 13) + 24);
          rhs = time1;
          CMTimeAdd(&time2, &lhs, &rhs);
          v26->presentationTimeStamp = time2;
          *&v26->decodeTimeStamp.value = *&kCMTimeInvalid.value;
          v26->decodeTimeStamp.epoch = 0;
          v29 = *(v15 + 13);
          time2 = time1;
          v30 = *v29;
          lhs.epoch = *(v29 + 2);
          *&lhs.value = v30;
          CMTimeAdd(&time1, &time2, &lhs);
          ++v26;
        }

        while (v26 < v25);
      }
    }

    v31 = epoch;
    v32 = v53;
    v33 = v52;
    v34 = 0;
    if ((flags & 0x1D) == 1 && (rhs.value = value, rhs.timescale = timescale, valuePtr = 0.0, v62 = 0, v54 >= 1))
    {
      v35 = 1;
      v36 = timingArrayOut;
      while (1)
      {
        time1 = v36->duration;
        time2.value = rhs.value;
        time2.timescale = rhs.timescale;
        time2.flags = flags;
        time2.epoch = v31;
        if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
        {
          break;
        }

        if ((v34 & 1) == 0)
        {
          time2 = v36->presentationTimeStamp;
          lhs.value = rhs.value;
          lhs.timescale = rhs.timescale;
          lhs.flags = flags;
          lhs.epoch = v31;
          CMTimeAdd(&time1, &time2, &lhs);
          valuePtr = *&time1.value;
          v34 = time1.flags;
          v62 = time1.timescale;
          v57 = time1.epoch;
        }

        *&v36->presentationTimeStamp.value = valuePtr;
        v36->presentationTimeStamp.timescale = v62;
        v36->presentationTimeStamp.flags = v34;
        v36->presentationTimeStamp.epoch = v57;
        time2 = v36->decodeTimeStamp;
        lhs.value = rhs.value;
        lhs.timescale = rhs.timescale;
        lhs.flags = flags;
        lhs.epoch = v31;
        CMTimeAdd(&time1, &time2, &lhs);
        v36->decodeTimeStamp = time1;
        time2.value = rhs.value;
        time2.timescale = rhs.timescale;
        time2.flags = flags;
        time2.epoch = v31;
        lhs = v36->duration;
        CMTimeSubtract(&time1, &time2, &lhs);
        rhs.value = time1.value;
        flags = time1.flags;
        rhs.timescale = time1.timescale;
        v31 = time1.epoch;
        *&v36->duration.value = *&kCMTimeZero.value;
        v36->duration.epoch = 0;
        ++v36;
        ++v35;
        if (v36 >= v25)
        {
          --v35;
          goto LABEL_42;
        }
      }

      time2 = v36->presentationTimeStamp;
      lhs.value = rhs.value;
      lhs.timescale = rhs.timescale;
      lhs.flags = flags;
      lhs.epoch = v31;
      CMTimeAdd(&time1, &time2, &lhs);
      v36->presentationTimeStamp = time1;
      time2 = v36->decodeTimeStamp;
      lhs.value = rhs.value;
      lhs.timescale = rhs.timescale;
      lhs.flags = flags;
      lhs.epoch = v31;
      CMTimeAdd(&time1, &time2, &lhs);
      v36->decodeTimeStamp = time1;
      time2 = v36->duration;
      lhs.value = rhs.value;
      lhs.timescale = rhs.timescale;
      lhs.flags = flags;
      lhs.epoch = v31;
      CMTimeSubtract(&time1, &time2, &lhs);
      v36->duration = time1;
LABEL_42:
      v32 = v53;
      v33 = v52;
    }

    else
    {
      v35 = 0;
    }

    if ((v32 & 0x1D) == 1)
    {
      rhs.value = v64;
      rhs.timescale = v65;
      p_duration = &v25[-1].duration;
      if (&v25[-1] >= timingArrayOut)
      {
        while (1)
        {
          time1 = *p_duration;
          time2.value = rhs.value;
          time2.timescale = rhs.timescale;
          time2.flags = v32;
          time2.epoch = v33;
          v38 = v32;
          v39 = v33;
          if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
          {
            break;
          }

          time2.value = rhs.value;
          time2.timescale = rhs.timescale;
          time2.flags = v38;
          time2.epoch = v39;
          lhs = *p_duration;
          CMTimeSubtract(&time1, &time2, &lhs);
          rhs.value = time1.value;
          v32 = time1.flags;
          rhs.timescale = time1.timescale;
          v33 = time1.epoch;
          *&p_duration->value = *&kCMTimeZero.value;
          p_duration->epoch = 0;
          p_duration -= 3;
          if (p_duration < timingArrayOut)
          {
            goto LABEL_49;
          }
        }

        time2 = *p_duration;
        lhs.value = rhs.value;
        lhs.timescale = rhs.timescale;
        lhs.flags = v38;
        lhs.epoch = v39;
        CMTimeSubtract(&time1, &time2, &lhs);
        *p_duration = time1;
      }
    }

LABEL_49:
    v40 = CMGetAttachment(v15, @"SpeedMultiplier", 0);
    if (v40)
    {
      v41 = v40;
      TypeID = CFNumberGetTypeID();
      if (TypeID == CFGetTypeID(v41))
      {
        time1 = timingArrayOut->presentationTimeStamp;
        valuePtr = 1.0;
        CFNumberGetValue(v41, kCFNumberDoubleType, &valuePtr);
        if (v54 >= 1)
        {
          v43 = timingArrayOut;
          v44 = 1.0 / valuePtr;
          do
          {
            lhs = v43->duration;
            CMTimeMultiplyByFloat64(&time2, &lhs, v44);
            v43->duration = time2;
            lhs = v43->presentationTimeStamp;
            rhs = time1;
            CMTimeSubtract(&time2, &lhs, &rhs);
            CMTimeMultiplyByFloat64(&lhs, &time2, v44);
            rhs = time1;
            CMTimeAdd(&time2, &lhs, &rhs);
            v43->presentationTimeStamp = time2;
            lhs = v43->decodeTimeStamp;
            rhs = time1;
            CMTimeSubtract(&time2, &lhs, &rhs);
            CMTimeMultiplyByFloat64(&lhs, &time2, v44);
            rhs = time1;
            CMTimeAdd(&time2, &lhs, &rhs);
            v43->decodeTimeStamp = time2;
            ++v43;
          }

          while (v43 < v25);
        }
      }
    }

    v45 = CMGetAttachment(v15, @"Reverse", 0);
    if (v45 && (v46 = v45, v47 = CFBooleanGetTypeID(), v47 == CFGetTypeID(v46)) && CFBooleanGetValue(v46))
    {
      if (v54 >= 1)
      {
        v48 = timingArrayOut;
        do
        {
          time2 = v48->presentationTimeStamp;
          lhs = v48->duration;
          CMTimeAdd(&time1, &time2, &lhs);
          v48->presentationTimeStamp = time1;
          ++v48;
        }

        while (v48 < v25);
      }

      if ((*(v15 + 35) & 0x1D) != 1)
      {
        return 0;
      }

      memset(&time1, 0, sizeof(time1));
      v49 = v15 + 128;
      time2 = *(v15 + 128);
      lhs = v25[-1].presentationTimeStamp;
      CMTimeSubtract(&time1, &time2, &lhs);
      v35 = 0;
    }

    else
    {
      if ((*(v15 + 35) & 0x1D) != 1)
      {
        return 0;
      }

      v49 = v15 + 128;
      memset(&time1, 0, sizeof(time1));
      time2 = *(v15 + 128);
      lhs = timingArrayOut->presentationTimeStamp;
      CMTimeSubtract(&time1, &time2, &lhs);
    }

    if (v54 >= 1)
    {
      v50 = 0;
      do
      {
        if (v50 >= v35)
        {
          lhs = v22->presentationTimeStamp;
          rhs = time1;
          CMTimeAdd(&time2, &lhs, &rhs);
          v22->presentationTimeStamp = time2;
        }

        else
        {
          v51 = *v49;
          v22->presentationTimeStamp.epoch = *(v49 + 2);
          *&v22->presentationTimeStamp.value = v51;
        }

        lhs = v22->decodeTimeStamp;
        rhs = time1;
        CMTimeAdd(&time2, &lhs, &rhs);
        v22->decodeTimeStamp = time2;
        ++v22;
        ++v50;
      }

      while (v22 < v25);
    }

    return 0;
  }

  if (timingArrayEntriesNeededOut)
  {
    *timingArrayEntriesNeededOut = 0;
  }

  return -12736;
}

OSStatus CMSampleBufferSetDataBuffer(CMSampleBufferRef sbuf, CMBlockBufferRef dataBuffer)
{
  if (sbuf && dataBuffer)
  {
    if (*(sbuf + 25))
    {
      v5 = qword_1EAF1CCE0;
      v6 = v4;
      v7 = 4294954552;
      v8 = 4017;
    }

    else if (*(sbuf + 24))
    {
      v5 = qword_1EAF1CCE0;
      v6 = v4;
      v7 = 4294954564;
      v8 = 4022;
    }

    else
    {
      if (!*(sbuf + 2))
      {
        *(sbuf + 2) = CFRetain(dataBuffer);
        return 0;
      }

      v5 = qword_1EAF1CCE0;
      v6 = v4;
      v7 = 4294954564;
      v8 = 4027;
    }
  }

  else
  {
    v5 = qword_1EAF1CCE0;
    v6 = v4;
    v7 = 4294954565;
    v8 = 4012;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v7, "<<<< SampleBuffer >>>>", v8, v6, v2, v3);
}

CMBlockBufferRef CMSampleBufferGetDataBuffer(CMSampleBufferRef sbuf)
{
  if (!sbuf)
  {
    v4 = qword_1EAF1CCE0;
    v5 = v3;
    v6 = 4294954565;
    v7 = 4043;
    goto LABEL_5;
  }

  if (*(sbuf + 25))
  {
    v4 = qword_1EAF1CCE0;
    v5 = v3;
    v6 = 4294954552;
    v7 = 4048;
LABEL_5:
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, "<<<< SampleBuffer >>>>", v7, v5, v1, v2);
    return 0;
  }

  if (!*(sbuf + 24))
  {
    return *(sbuf + 2);
  }

  return 0;
}

CVImageBufferRef CMSampleBufferGetImageBuffer(CMSampleBufferRef sbuf)
{
  if (!sbuf)
  {
    v4 = qword_1EAF1CCE0;
    v5 = v3;
    v6 = 4294954565;
    v7 = 4065;
    goto LABEL_5;
  }

  if (*(sbuf + 25))
  {
    v4 = qword_1EAF1CCE0;
    v5 = v3;
    v6 = 4294954552;
    v7 = 4070;
LABEL_5:
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, "<<<< SampleBuffer >>>>", v7, v5, v1, v2);
    return 0;
  }

  if (*(sbuf + 24) == 1)
  {
    return *(sbuf + 2);
  }

  return 0;
}

uint64_t FigSampleBufferGetCaptionGroup(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  if (a1)
  {
    if (*(a1 + 25))
    {
      FigSampleBufferGetCaptionGroup_cold_1(a1, a2, a3, a4, a5, a6, a7, a8);
    }

    else if (*(a1 + 24) == 2)
    {
      return *(a1 + 16);
    }
  }

  else
  {
    FigSampleBufferGetCaptionGroup_cold_2(0, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t FigSampleBufferGetTaggedBufferGroup(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  if (a1)
  {
    if (*(a1 + 25))
    {
      FigSampleBufferGetTaggedBufferGroup_cold_1(a1, a2, a3, a4, a5, a6, a7, a8);
    }

    else if (*(a1 + 24) == 3)
    {
      return *(a1 + 16);
    }
  }

  else
  {
    FigSampleBufferGetTaggedBufferGroup_cold_2(0, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

CMTaggedBufferGroupRef CMSampleBufferGetTaggedBufferGroup(CMSampleBufferRef sbuf)
{
  if (sbuf)
  {
    if (*(sbuf + 25))
    {
      CMSampleBufferGetTaggedBufferGroup_cold_1(sbuf, v1, v2, v3, v4, v5, v6, v7);
    }

    else if (*(sbuf + 24) == 3)
    {
      return *(sbuf + 2);
    }
  }

  else
  {
    CMSampleBufferGetTaggedBufferGroup_cold_2(0, v1, v2, v3, v4, v5, v6, v7);
  }

  return 0;
}

OSStatus CMSampleBufferSetDataReady(CMSampleBufferRef sbuf)
{
  if (sbuf)
  {
    if (*(sbuf + 25))
    {
      v5 = qword_1EAF1CCE0;
      v6 = v3;
      v7 = 4294954552;
      v8 = 4158;
    }

    else
    {
      result = sBufTransitionDataReady(sbuf, 1u, 0, 1);
      if (result == -12732)
      {
        return 0;
      }

      if (result != -16750)
      {
        return result;
      }

      v5 = qword_1EAF1CCE0;
      v7 = *(sbuf + 8);
      v6 = v3;
      v8 = 4168;
    }
  }

  else
  {
    v5 = qword_1EAF1CCE0;
    v6 = v3;
    v7 = 4294954565;
    v8 = 4153;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v7, "<<<< SampleBuffer >>>>", v8, v6, v1, v2);
}

uint64_t CMSampleBufferSetDataReadyWithNewSize(opaqueCMSampleBuffer *a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  if (!a1)
  {
    CMSampleBufferSetDataReadyWithNewSize_cold_5(&v10, a2, a3, a4, a5, a6, a7, a8);
    return v10;
  }

  if (*(a1 + 14))
  {
    CMSampleBufferSetDataReadyWithNewSize_cold_1(&v10, a2, a3, a4, a5, a6, a7, a8);
    return v10;
  }

  if (*(a1 + 15))
  {
    CMSampleBufferSetDataReadyWithNewSize_cold_2(&v10, a2, a3, a4, a5, a6, a7, a8);
    return v10;
  }

  if (a2 <= 0)
  {
    CMSampleBufferSetDataReadyWithNewSize_cold_4(&v10, a2, a3, a4, a5, a6, a7, a8);
    return v10;
  }

  if (!a3)
  {
    CMSampleBufferSetDataReadyWithNewSize_cold_3(&v10, a2, 0, a4, a5, a6, a7, a8);
    return v10;
  }

  sBufReplaceSampleSizeArray(a1, a3, a2);

  return CMSampleBufferSetDataReady(a1);
}

size_t sBufReplaceSampleSizeArray(size_t a1, const void *a2, unint64_t a3)
{
  v6 = 8 * a3;
  if (*(a1 + 112) >= a3)
  {
    if (!a3)
    {
      goto LABEL_9;
    }

    v8 = *(a1 + 120);
  }

  else
  {
    if (*(a1 + 26))
    {
      v7 = *(a1 + 120);
      if (v7)
      {
        *(a1 + 120) = 0;
        free(v7);
      }
    }

    v8 = malloc_type_malloc(v6, 0x2B2BCD84uLL);
    *(a1 + 120) = v8;
    *(a1 + 26) |= 1u;
  }

  memcpy(v8, a2, v6);
LABEL_9:
  *(a1 + 112) = a3;

  return figSampleBufferCheckDataSize(a1);
}

Boolean CMSampleBufferDataIsReady(CMSampleBufferRef sbuf)
{
  if (!sbuf)
  {
    v5 = qword_1EAF1CCE0;
    v6 = v3;
    v7 = 4294954565;
    v8 = 4224;
    goto LABEL_5;
  }

  if (*(sbuf + 25))
  {
    v5 = qword_1EAF1CCE0;
    v6 = v3;
    v7 = 4294954552;
    v8 = 4229;
LABEL_5:
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v7, "<<<< SampleBuffer >>>>", v8, v6, v1, v2);
    return 0;
  }

  if (*(sbuf + 7) == 2)
  {
    return 0;
  }

  sBufPokeTrackedSampleBufferForDataReadyTransition(sbuf);
  return *(sbuf + 7) == 1;
}

OSStatus CMSampleBufferSetDataFailed(CMSampleBufferRef sbuf, OSStatus status)
{
  if (sbuf)
  {
    if (!*(sbuf + 25))
    {
      CMSampleBufferSetDataFailed_cold_1(sbuf, status, &v10);
      return v10;
    }

    v5 = qword_1EAF1CCE0;
    v6 = v4;
    v7 = 4294954552;
    v8 = 4258;
  }

  else
  {
    v5 = qword_1EAF1CCE0;
    v6 = v4;
    v7 = 4294954565;
    v8 = 4253;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v7, "<<<< SampleBuffer >>>>", v8, v6, v2, v3);
}

Boolean CMSampleBufferHasDataFailed(CMSampleBufferRef sbuf, OSStatus *statusOut)
{
  if (!sbuf)
  {
    v6 = qword_1EAF1CCE0;
    v7 = v4;
    v8 = 4294954565;
    v9 = 4283;
    goto LABEL_5;
  }

  if (*(sbuf + 25))
  {
    v6 = qword_1EAF1CCE0;
    v7 = v4;
    v8 = 4294954552;
    v9 = 4288;
LABEL_5:
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, v8, "<<<< SampleBuffer >>>>", v9, v7, v2, v3);
    return 0;
  }

  if (*(sbuf + 7) == 1)
  {
    return 0;
  }

  sBufPokeTrackedSampleBufferForDataReadyTransition(sbuf);
  v12 = *(sbuf + 7);
  result = v12 == 2;
  if (statusOut)
  {
    if (v12 == 2)
    {
      *statusOut = *(sbuf + 8);
      return 1;
    }
  }

  return result;
}

OSStatus CMSampleBufferMakeDataReady(CMSampleBufferRef sbuf)
{
  if (!sbuf)
  {
    v5 = qword_1EAF1CCE0;
    v6 = v3;
    v7 = 4294954565;
    v8 = 4322;
    goto LABEL_5;
  }

  if (!*(sbuf + 25))
  {
    if (*(sbuf + 7))
    {
      LODWORD(DataReady) = *(sbuf + 8);
      return DataReady;
    }

    v11 = *(sbuf + 40);
    if (v11 <= 1)
    {
      if (!*(sbuf + 40))
      {
        v5 = qword_1EAF1CCE0;
        v6 = v3;
        v7 = 4294954563;
        v8 = 4338;
        goto LABEL_5;
      }

      if (v11 != 1)
      {
        goto LABEL_33;
      }

      DataReady = (*(sbuf + 6))(sbuf, *(sbuf + 7));
    }

    else
    {
      switch(v11)
      {
        case 2u:
          FigSimpleMutexLock(*(sbuf + 8));
          v15 = *(sbuf + 7);
          if (v15)
          {
            v16 = CFRetain(v15);
          }

          else
          {
            v16 = 0;
          }

          DataReady = *(sbuf + 6);
          FigSimpleMutexUnlock(*(sbuf + 8));
          if (!v16)
          {
            goto LABEL_33;
          }

          if (DataReady)
          {
            DataReady = (DataReady)(sbuf, v16);
          }

          CFRelease(v16);
          break;
        case 3u:
          v17 = _Block_copy(*(sbuf + 6));
          if (!v17)
          {
            goto LABEL_33;
          }

          v18 = v17;
          DataReady = (*(v17 + 2))(v17, sbuf);
          _Block_release(v18);
          break;
        case 4u:
          DataReady = CMSampleBufferMakeDataReady(*(sbuf + 6));
          v14 = *(*(sbuf + 6) + 32);
LABEL_29:
          if (DataReady)
          {
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, DataReady, "<<<< SampleBuffer >>>>", 0x1117, v3, v12, v13);
            return DataReady;
          }

          if (v14)
          {
            v19 = 2;
            goto LABEL_35;
          }

LABEL_33:
          v14 = 0;
          v19 = 1;
LABEL_35:
          sBufTransitionDataReady(sbuf, v19, v14, 0);
          LODWORD(DataReady) = 0;
          return DataReady;
        default:
          goto LABEL_33;
      }
    }

    v14 = 0;
    goto LABEL_29;
  }

  v5 = qword_1EAF1CCE0;
  v6 = v3;
  v7 = 4294954552;
  v8 = 4327;
LABEL_5:

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v7, "<<<< SampleBuffer >>>>", v8, v6, v1, v2);
}

size_t CMSampleBufferSetShouldReleaseMakeDataReadyRefcon(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  if (!a1)
  {
    v9 = qword_1EAF1CCE0;
    v10 = 4294954565;
    v11 = 4392;
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, v10, "<<<< SampleBuffer >>>>", v11, v8, a7, a8);
  }

  if (*(a1 + 25))
  {
    v9 = qword_1EAF1CCE0;
    v10 = 4294954552;
    v11 = 4397;
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, v10, "<<<< SampleBuffer >>>>", v11, v8, a7, a8);
  }

  if (*(a1 + 40) == 1)
  {
    *(a1 + 40) = 2;
  }

  return 0;
}

OSStatus CMSampleBufferInvalidate(CMSampleBufferRef sbuf)
{
  if (sbuf)
  {
    if (!*(sbuf + 25))
    {
      CMSampleBufferInvalidate_cold_1(sbuf, sbuf + 25);
      return 0;
    }

    v4 = qword_1EAF1CCE0;
    v5 = v3;
    v6 = 4294954552;
    v7 = 4459;
  }

  else
  {
    v4 = qword_1EAF1CCE0;
    v5 = v3;
    v6 = 4294954565;
    v7 = 4454;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, "<<<< SampleBuffer >>>>", v7, v5, v1, v2);
}

Boolean CMSampleBufferIsValid(CMSampleBufferRef sbuf)
{
  if (sbuf)
  {
    LOBYTE(sbuf) = *(sbuf + 25) == 0;
  }

  return sbuf;
}

OSStatus CMSampleBufferSetInvalidateCallback(CMSampleBufferRef sbuf, CMSampleBufferInvalidateCallback invalidateCallback, uint64_t invalidateRefCon)
{
  if (invalidateCallback)
  {
    v3 = invalidateCallback;
    invalidateCallback = v5;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 0x40000000;
    v5[2] = __CMSampleBufferSetInvalidateCallback_block_invoke;
    v5[3] = &__block_descriptor_tmp_7;
    v5[4] = v3;
    v5[5] = invalidateRefCon;
  }

  return CMSampleBufferSetInvalidateHandler(sbuf, invalidateCallback);
}

OSStatus CMSampleBufferSetInvalidateHandler(CMSampleBufferRef sbuf, CMSampleBufferInvalidateHandler invalidateHandler)
{
  if (sbuf)
  {
    if (*(sbuf + 25))
    {
      v5 = qword_1EAF1CCE0;
      v6 = v4;
      v7 = 4294954552;
      v8 = 4546;
    }

    else
    {
      v10 = *(sbuf + 9);
      if (!invalidateHandler || !v10)
      {
        *(sbuf + 9) = _Block_copy(invalidateHandler);
        _Block_release(v10);
        return 0;
      }

      v5 = qword_1EAF1CCE0;
      v6 = v4;
      v7 = 4294954565;
      v8 = 4551;
    }
  }

  else
  {
    v5 = qword_1EAF1CCE0;
    v6 = v4;
    v7 = 4294954565;
    v8 = 4541;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v7, "<<<< SampleBuffer >>>>", v8, v6, v2, v3);
}

CMItemCount CMSampleBufferGetNumSamples(CMSampleBufferRef sbuf)
{
  if (!sbuf)
  {
    v4 = qword_1EAF1CCE0;
    v5 = v3;
    v6 = 4294954565;
    v7 = 4572;
    goto LABEL_5;
  }

  if (*(sbuf + 25))
  {
    v4 = qword_1EAF1CCE0;
    v5 = v3;
    v6 = 4294954552;
    v7 = 4577;
LABEL_5:
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, "<<<< SampleBuffer >>>>", v7, v5, v1, v2);
    return 0;
  }

  return *(sbuf + 11);
}

CMTime *__cdecl CMSampleBufferGetDuration(CMTime *__return_ptr retstr, CMTime *sbuf)
{
  *&retstr->value = *&kCMTimeInvalid.value;
  retstr->epoch = 0;
  if (!sbuf)
  {
    v5 = qword_1EAF1CCE0;
    v6 = 4294954565;
    v7 = 4594;
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, "<<<< SampleBuffer >>>>", v7, v4, v2, v3);
  }

  if (BYTE1(sbuf[1].value))
  {
    v5 = qword_1EAF1CCE0;
    v6 = 4294954552;
    v7 = 4599;
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, "<<<< SampleBuffer >>>>", v7, v4, v2, v3);
  }

  if (!*&sbuf[4].timescale)
  {
    return CMTimeMake(retstr, 0, 1);
  }

  *retstr = *(sbuf + 208);
  return sbuf;
}

CMTime *__cdecl CMSampleBufferGetPresentationTimeStamp(CMTime *__return_ptr retstr, CMTime *sbuf)
{
  *&retstr->value = *&kCMTimeInvalid.value;
  retstr->epoch = 0;
  if (!sbuf)
  {
    v5 = qword_1EAF1CCE0;
    v6 = 4294954565;
    v7 = 4621;
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, "<<<< SampleBuffer >>>>", v7, v4, v2, v3);
  }

  if (BYTE1(sbuf[1].value))
  {
    v5 = qword_1EAF1CCE0;
    v6 = 4294954552;
    v7 = 4626;
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, "<<<< SampleBuffer >>>>", v7, v4, v2, v3);
  }

  if (*&sbuf[4].timescale)
  {
    *retstr = *(sbuf + 184);
  }

  return sbuf;
}

CMTime *__cdecl CMSampleBufferGetDecodeTimeStamp(CMTime *__return_ptr retstr, CMTime *sbuf)
{
  *&retstr->value = *&kCMTimeInvalid.value;
  retstr->epoch = 0;
  if (!sbuf)
  {
    v5 = qword_1EAF1CCE0;
    v6 = 4294954565;
    v7 = 4649;
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, "<<<< SampleBuffer >>>>", v7, v4, v2, v3);
  }

  if (BYTE1(sbuf[1].value))
  {
    v5 = qword_1EAF1CCE0;
    v6 = 4294954552;
    v7 = 4654;
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, "<<<< SampleBuffer >>>>", v7, v4, v2, v3);
  }

  if (*&sbuf[4].timescale)
  {
    *retstr = *(sbuf + 160);
  }

  return sbuf;
}

CMTime *__cdecl CMSampleBufferGetOutputDuration(CMTime *__return_ptr retstr, CMTime *sbuf)
{
  *&retstr->value = *&kCMTimeInvalid.value;
  retstr->epoch = 0;
  if (!sbuf)
  {
    v7 = qword_1EAF1CCE0;
    v8 = v4;
    v9 = 4294954565;
    v10 = 4678;
    goto LABEL_5;
  }

  v6 = sbuf;
  if (BYTE1(sbuf[1].value))
  {
    v7 = qword_1EAF1CCE0;
    v8 = v4;
    v9 = 4294954552;
    v10 = 4683;
LABEL_5:

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, v9, "<<<< SampleBuffer >>>>", v10, v8, v2, v3);
  }

  p_epoch = &sbuf[11].epoch;
  if ((HIDWORD(sbuf[12].value) & 0x1D) == 1)
  {
    *&retstr->value = *p_epoch;
    retstr->epoch = *&sbuf[12].timescale;
  }

  else
  {
    sbuf = CMSampleBufferGetDuration(retstr, sbuf);
    if ((retstr->flags & 0x1D) == 1)
    {
      v12 = CMGetAttachment(v6, @"TrimDurationAtStart", 0);
      v13 = CMGetAttachment(v6, @"TrimDurationAtEnd", 0);
      sbuf = CMGetAttachment(v6, @"SpeedMultiplier", 0);
      v14 = sbuf;
      if (v12)
      {
        memset(&v19, 0, sizeof(v19));
        CMTimeMakeFromDictionary(&v19, v12);
        lhs = *retstr;
        rhs = v19;
        sbuf = CMTimeSubtract(retstr, &lhs, &rhs);
      }

      if (v13)
      {
        memset(&v19, 0, sizeof(v19));
        CMTimeMakeFromDictionary(&v19, v13);
        rhs = *retstr;
        v16 = v19;
        sbuf = CMTimeSubtract(&lhs, &rhs, &v16);
        *retstr = lhs;
      }

      if (v14)
      {
        TypeID = CFNumberGetTypeID();
        sbuf = CFGetTypeID(v14);
        if (TypeID == sbuf)
        {
          rhs.value = 0x3FF0000000000000;
          CFNumberGetValue(v14, kCFNumberDoubleType, &rhs);
          lhs = *retstr;
          sbuf = CMTimeMultiplyByFloat64(&v19, &lhs, 1.0 / *&rhs.value);
          *retstr = v19;
        }
      }
    }

    *p_epoch = *&retstr->value;
    p_epoch[2] = retstr->epoch;
  }

  return sbuf;
}

CMTime *__cdecl CMSampleBufferGetOutputPresentationTimeStamp(CMTime *__return_ptr retstr, CMTime *sbuf)
{
  *&retstr->value = *&kCMTimeInvalid.value;
  retstr->epoch = 0;
  if (!sbuf)
  {
    v7 = qword_1EAF1CCE0;
    v8 = v4;
    v9 = 4294954565;
    v10 = 4730;
    goto LABEL_5;
  }

  v6 = sbuf;
  if (!BYTE1(sbuf[1].value))
  {
    if ((HIDWORD(sbuf[5].epoch) & 0x1D) == 1)
    {
      *&retstr->value = *&sbuf[5].timescale;
      value = sbuf[6].value;
    }

    else
    {
      if ((HIDWORD(sbuf[11].value) & 0x1D) == 1)
      {
        *retstr = *(sbuf + 256);
        return sbuf;
      }

      v12 = CMGetAttachment(sbuf, @"Reverse", 0);
      CMSampleBufferGetPresentationTimeStamp(retstr, v6);
      if (!v12 || (TypeID = CFBooleanGetTypeID(), TypeID != CFGetTypeID(v12)) || !CFBooleanGetValue(v12))
      {
        sbuf = CMGetAttachment(v6, @"TrimDurationAtStart", 0);
        if (sbuf)
        {
          memset(&v19, 0, sizeof(v19));
          CMTimeMakeFromDictionary(&v19, sbuf);
          lhs = *retstr;
          rhs = v19;
          sbuf = CMTimeAdd(retstr, &lhs, &rhs);
        }

        goto LABEL_11;
      }

      memset(&v19, 0, sizeof(v19));
      CMSampleBufferGetDuration(&v19, v6);
      v14 = CMGetAttachment(v6, @"TrimDurationAtEnd", 0);
      lhs = *retstr;
      rhs = v19;
      sbuf = CMTimeAdd(retstr, &lhs, &rhs);
      if (!v14)
      {
LABEL_11:
        *&v6[10].epoch = *&retstr->value;
        *&v6[11].timescale = retstr->epoch;
        return sbuf;
      }

      memset(&lhs, 0, sizeof(lhs));
      CMTimeMakeFromDictionary(&lhs, v14);
      v16 = *retstr;
      v15 = lhs;
      sbuf = CMTimeSubtract(&rhs, &v16, &v15);
      *&retstr->value = *&rhs.value;
      value = rhs.epoch;
    }

    retstr->epoch = value;
    goto LABEL_11;
  }

  v7 = qword_1EAF1CCE0;
  v8 = v4;
  v9 = 4294954552;
  v10 = 4735;
LABEL_5:

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, v9, "<<<< SampleBuffer >>>>", v10, v8, v2, v3);
}

OSStatus CMSampleBufferSetOutputPresentationTimeStamp(CMSampleBufferRef sbuf, CMTime *outputPresentationTimeStamp)
{
  if (!sbuf)
  {
    v5 = qword_1EAF1CCE0;
    v6 = 4294954565;
    v7 = 4785;
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, "<<<< SampleBuffer >>>>", v7, v4, v2, v3);
  }

  if (*(sbuf + 25))
  {
    v5 = qword_1EAF1CCE0;
    v6 = 4294954552;
    v7 = 4789;
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, "<<<< SampleBuffer >>>>", v7, v4, v2, v3);
  }

  v9 = *&outputPresentationTimeStamp->value;
  *(sbuf + 18) = outputPresentationTimeStamp->epoch;
  *(sbuf + 8) = v9;
  return 0;
}

CMTime *__cdecl CMSampleBufferGetOutputDecodeTimeStamp(CMTime *__return_ptr retstr, CMTime *sbuf)
{
  *&retstr->value = *&kCMTimeInvalid.value;
  retstr->epoch = 0;
  memset(&v17, 0, sizeof(v17));
  if (!sbuf)
  {
    v7 = qword_1EAF1CCE0;
    v8 = v4;
    v9 = 4294954565;
    v10 = 4807;
    goto LABEL_5;
  }

  v6 = sbuf;
  if (BYTE1(sbuf[1].value))
  {
    v7 = qword_1EAF1CCE0;
    v8 = v4;
    v9 = 4294954552;
    v10 = 4812;
LABEL_5:

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, v9, "<<<< SampleBuffer >>>>", v10, v8, v2, v3);
  }

  if ((HIDWORD(sbuf[10].value) & 0x1D) == 1)
  {
    *retstr = *(sbuf + 232);
  }

  else
  {
    CMSampleBufferGetOutputPresentationTimeStamp(retstr, sbuf);
    CMSampleBufferGetDecodeTimeStamp(&lhs, v6);
    CMSampleBufferGetPresentationTimeStamp(&rhs, v6);
    CMTimeSubtract(&v17, &lhs, &rhs);
    v11 = CMGetAttachment(v6, @"SpeedMultiplier", 0);
    if (v11)
    {
      v12 = v11;
      TypeID = CFNumberGetTypeID();
      if (TypeID == CFGetTypeID(v12))
      {
        valuePtr = 1.0;
        CFNumberGetValue(v12, kCFNumberDoubleType, &valuePtr);
        rhs = v17;
        CMTimeMultiplyByFloat64(&lhs, &rhs, 1.0 / valuePtr);
        v17 = lhs;
      }
    }

    lhs = *retstr;
    rhs = v17;
    sbuf = CMTimeAdd(retstr, &lhs, &rhs);
    *&v6[9].epoch = *&retstr->value;
    *&v6[10].timescale = retstr->epoch;
  }

  return sbuf;
}

OSStatus CMSampleBufferGetSampleTimingInfoArray(CMSampleBufferRef sbuf, CMItemCount numSampleTimingEntries, CMSampleTimingInfo *timingArrayOut, CMItemCount *timingArrayEntriesNeededOut)
{
  if (!sbuf)
  {
    v8 = qword_1EAF1CCE0;
    v9 = v6;
    v10 = 4294954565;
    v11 = 4851;
    goto LABEL_5;
  }

  if (*(sbuf + 25))
  {
    v8 = qword_1EAF1CCE0;
    v9 = v6;
    v10 = 4294954552;
    v11 = 4856;
LABEL_5:

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v8, v10, "<<<< SampleBuffer >>>>", v11, v9, v4, v5);
  }

  v14 = *(sbuf + 12);
  if (v14 && *(sbuf + 13))
  {
    if (timingArrayOut && v14 > numSampleTimingEntries)
    {
      result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE3FuLL, "<<<< SampleBuffer >>>>", 0x1304, v6, v4, v5);
      if (!timingArrayEntriesNeededOut)
      {
        return result;
      }

LABEL_20:
      *timingArrayEntriesNeededOut = *(sbuf + 12);
      return result;
    }

    if (timingArrayOut)
    {
      memcpy(timingArrayOut, *(sbuf + 13), 72 * v14);
    }

    result = 0;
    if (timingArrayEntriesNeededOut)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (timingArrayEntriesNeededOut)
    {
      *timingArrayEntriesNeededOut = 0;
    }

    return -12736;
  }

  return result;
}

OSStatus CMSampleBufferGetSampleTimingInfo(CMSampleBufferRef sbuf, CMItemIndex sampleIndex, CMSampleTimingInfo *timingInfoOut)
{
  if (sbuf && timingInfoOut)
  {
    if (*(sbuf + 25))
    {
      v8 = qword_1EAF1CCE0;
      v9 = v5;
      v10 = 4294954552;
      v11 = 5089;
    }

    else
    {
      v13 = *(sbuf + 12);
      if (!v13)
      {
        return -12736;
      }

      if ((sampleIndex & 0x8000000000000000) == 0)
      {
        v14 = *(sbuf + 11);
        if (v14 > sampleIndex)
        {
          if (v13 == v14)
          {
            result = 0;
            v15 = *(sbuf + 13) + 72 * sampleIndex;
            *&timingInfoOut->duration.value = *v15;
            v16 = *(v15 + 16);
            v17 = *(v15 + 32);
            v18 = *(v15 + 48);
            timingInfoOut->decodeTimeStamp.epoch = *(v15 + 64);
            *&timingInfoOut->presentationTimeStamp.timescale = v17;
            *&timingInfoOut->decodeTimeStamp.value = v18;
            *&timingInfoOut->duration.epoch = v16;
          }

          else
          {
            v19 = *(sbuf + 13);
            v20 = *(v19 + 2);
            v24 = *v19;
            *&v25[0] = v20;
            *&v22.value = v24;
            v22.epoch = v20;
            CMTimeMultiply(&rhs, &v22, sampleIndex);
            v22 = *(v19 + 1);
            CMTimeAdd((v25 + 8), &v22, &rhs);
            result = 0;
            *&timingInfoOut->presentationTimeStamp.timescale = v25[1];
            *&timingInfoOut->decodeTimeStamp.value = *&kCMTimeInvalid.value;
            timingInfoOut->decodeTimeStamp.epoch = 0;
            v21 = v25[0];
            *&timingInfoOut->duration.value = v24;
            *&timingInfoOut->duration.epoch = v21;
          }

          return result;
        }
      }

      v8 = qword_1EAF1CCE0;
      v9 = v5;
      v10 = 4294954562;
      v11 = 5099;
    }
  }

  else
  {
    v8 = qword_1EAF1CCE0;
    v9 = v5;
    v10 = 4294954565;
    v11 = 5084;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v8, v10, "<<<< SampleBuffer >>>>", v11, v9, v3, v4);
}

OSStatus CMSampleBufferGetSampleSizeArray(CMSampleBufferRef sbuf, CMItemCount sizeArrayEntries, size_t *sizeArrayOut, CMItemCount *sizeArrayEntriesNeededOut)
{
  if (!sbuf)
  {
    v8 = qword_1EAF1CCE0;
    v9 = v6;
    v10 = 4294954565;
    v11 = 5136;
    goto LABEL_5;
  }

  if (*(sbuf + 25))
  {
    v8 = qword_1EAF1CCE0;
    v9 = v6;
    v10 = 4294954552;
    v11 = 5141;
LABEL_5:

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v8, v10, "<<<< SampleBuffer >>>>", v11, v9, v4, v5);
  }

  v14 = *(sbuf + 14);
  if (v14 && *(sbuf + 15))
  {
    if (sizeArrayOut && v14 > sizeArrayEntries)
    {
      result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE3FuLL, "<<<< SampleBuffer >>>>", 0x1421, v6, v4, v5);
      if (!sizeArrayEntriesNeededOut)
      {
        return result;
      }

LABEL_20:
      *sizeArrayEntriesNeededOut = *(sbuf + 14);
      return result;
    }

    if (sizeArrayOut)
    {
      memcpy(sizeArrayOut, *(sbuf + 15), 8 * v14);
    }

    result = 0;
    if (sizeArrayEntriesNeededOut)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (sizeArrayEntriesNeededOut)
    {
      *sizeArrayEntriesNeededOut = 0;
    }

    return -12735;
  }

  return result;
}

size_t CMSampleBufferGetSampleSize(CMSampleBufferRef sbuf, CMItemIndex sampleIndex)
{
  if (!sbuf)
  {
    v5 = qword_1EAF1CCE0;
    v6 = v4;
    v7 = 4294954565;
    v8 = 5176;
    goto LABEL_12;
  }

  if (*(sbuf + 25))
  {
    v5 = qword_1EAF1CCE0;
    v6 = v4;
    v7 = 4294954552;
    v8 = 5181;
LABEL_12:
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v7, "<<<< SampleBuffer >>>>", v8, v6, v2, v3);
    return 0;
  }

  v9 = *(sbuf + 14);
  if (!v9)
  {
    v5 = qword_1EAF1CCE0;
    v6 = v4;
    v7 = 4294954561;
    v8 = 5186;
    goto LABEL_12;
  }

  if (sampleIndex < 0 || *(sbuf + 11) <= sampleIndex)
  {
    v5 = qword_1EAF1CCE0;
    v6 = v4;
    v7 = 4294954562;
    v8 = 5191;
    goto LABEL_12;
  }

  v10 = *(sbuf + 15);
  if (v9 == 1)
  {
    return *v10;
  }

  else
  {
    return v10[sampleIndex];
  }
}

size_t CMSampleBufferGetTotalSampleSize(CMSampleBufferRef sbuf)
{
  if (!sbuf)
  {
    v5 = qword_1EAF1CCE0;
    v6 = v3;
    v7 = 4294954565;
    v8 = 5212;
    goto LABEL_5;
  }

  if (*(sbuf + 25))
  {
    v5 = qword_1EAF1CCE0;
    v6 = v3;
    v7 = 4294954552;
    v8 = 5217;
LABEL_5:
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v7, "<<<< SampleBuffer >>>>", v8, v6, v1, v2);
    return 0;
  }

  v10 = *(sbuf + 14);
  if (v10)
  {
    if (v10 == 1)
    {
      return **(sbuf + 15) * *(sbuf + 11);
    }

    if (v10 < 1)
    {
      return 0;
    }

    result = 0;
    v15 = *(sbuf + 15);
    do
    {
      v16 = *v15++;
      result += v16;
      --v10;
    }

    while (v10);
  }

  else
  {
    result = *(sbuf + 10);
    if (result)
    {
      MediaType = CMFormatDescriptionGetMediaType(result);
      if (MediaType == 1986618469)
      {
        result = CMSampleBufferGetImageBuffer(sbuf);
        if (result)
        {
          v17 = result;
          result = CVPixelBufferGetDataSize(result);
          if (!result)
          {
            BytesPerRow = CVPixelBufferGetBytesPerRow(v17);
            return CVPixelBufferGetHeight(v17) * BytesPerRow;
          }
        }
      }

      else
      {
        if (MediaType != 1936684398)
        {
          return 0;
        }

        if (!*(sbuf + 344))
        {
          return 0;
        }

        v12 = *(sbuf + 42);
        if (!v12)
        {
          return 0;
        }

        result = 0;
        v13 = (*(sbuf + 41) + 12);
        do
        {
          v14 = *v13;
          v13 += 4;
          result += v14;
          --v12;
        }

        while (v12);
      }
    }
  }

  return result;
}

CMFormatDescriptionRef CMSampleBufferGetFormatDescription(CMSampleBufferRef sbuf)
{
  if (!sbuf)
  {
    v4 = qword_1EAF1CCE0;
    v5 = v3;
    v6 = 4294954565;
    v7 = 5265;
    goto LABEL_5;
  }

  if (*(sbuf + 25))
  {
    v4 = qword_1EAF1CCE0;
    v5 = v3;
    v6 = 4294954552;
    v7 = 5270;
LABEL_5:
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, "<<<< SampleBuffer >>>>", v7, v5, v1, v2);
    return 0;
  }

  return *(sbuf + 10);
}

CFArrayRef CMSampleBufferGetSampleAttachmentsArray(CMSampleBufferRef sbuf, Boolean createIfNecessary)
{
  if (!sbuf)
  {
    v6 = qword_1EAF1CCE0;
    v7 = v4;
    v8 = 4294954565;
    v9 = 5290;
    goto LABEL_5;
  }

  if (*(sbuf + 25))
  {
    v6 = qword_1EAF1CCE0;
    v7 = v4;
    v8 = 4294954552;
    v9 = 5295;
LABEL_5:
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, v8, "<<<< SampleBuffer >>>>", v9, v7, v2, v3);
    return 0;
  }

  v10 = *(sbuf + 38);
  if (createIfNecessary && !v10)
  {
    v12 = *(sbuf + 11);
    if (!v12)
    {
      return 0;
    }

    v13 = malloc_type_calloc(*(sbuf + 11), 8uLL, 0x2004093837F09uLL);
    v14 = v13;
    if (v12 >= 1)
    {
      v15 = MEMORY[0x1E695E528];
      v16 = MEMORY[0x1E695E9E8];
      v17 = v13;
      v18 = v12;
      while (1)
      {
        v19 = CFGetAllocator(sbuf);
        Mutable = CFDictionaryCreateMutable(v19, 0, v15, v16);
        *v17 = Mutable;
        if (!Mutable)
        {
          break;
        }

        ++v17;
        if (!--v18)
        {
          goto LABEL_15;
        }
      }

      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE46uLL, "<<<< SampleBuffer >>>>", 0x14BC, v4, v21, v22);
      v10 = 0;
      goto LABEL_20;
    }

LABEL_15:
    v23 = CFGetAllocator(sbuf);
    v10 = CFArrayCreate(v23, v14, v12, MEMORY[0x1E695E9C0]);
    *(sbuf + 38) = v10;
    if (!v10)
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE46uLL, "<<<< SampleBuffer >>>>", 0x14C2, v4, v24, v25);
    }

    if (v14)
    {
LABEL_20:
      if (v12 >= 1)
      {
        v26 = v14;
        do
        {
          if (*v26)
          {
            CFRelease(*v26);
          }

          ++v26;
          --v12;
        }

        while (v12);
      }

      free(v14);
    }
  }

  return v10;
}

OSStatus CMSampleBufferCallForEachSample(CMSampleBufferRef sbuf, OSStatus (__cdecl *callback)(CMSampleBufferRef, CMItemCount, void *), void *refcon)
{
  v63 = 0;
  blockBufferOut = 0;
  timingArrayEntriesNeededOut = 0;
  if (!sbuf)
  {
    v7 = qword_1EAF1CCE0;
    v8 = v5;
    v9 = 4294954565;
    v10 = 5375;
    goto LABEL_5;
  }

  if (*(sbuf + 25))
  {
    v7 = qword_1EAF1CCE0;
    v8 = v5;
    v9 = 4294954552;
    v10 = 5380;
LABEL_5:
    OutputSampleTimingInfoArray = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, v9, "<<<< SampleBuffer >>>>", v10, v8, v3, v4);
LABEL_6:
    v12 = OutputSampleTimingInfoArray;
    v13 = 0;
    goto LABEL_7;
  }

  NumSamples = CMSampleBufferGetNumSamples(sbuf);
  FormatDescription = CMSampleBufferGetFormatDescription(sbuf);
  DataBuffer = CMSampleBufferGetDataBuffer(sbuf);
  SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(sbuf, 0);
  if (NumSamples == 1 || (v21 = SampleAttachmentsArray, (StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(FormatDescription)) != 0) && StreamBasicDescription->mFormatID == 1819304813)
  {
    OutputSampleTimingInfoArray = (callback)(sbuf, 0, refcon);
    goto LABEL_6;
  }

  if (NumSamples < 2)
  {
    v13 = 0;
LABEL_47:
    v12 = 0;
    goto LABEL_7;
  }

  if (CMGetAttachment(sbuf, @"TrimDurationAtStart", 0) || CMGetAttachment(sbuf, @"TrimDurationAtEnd", 0) || CMGetAttachment(sbuf, @"SpeedMultiplier", 0) || CMGetAttachment(sbuf, @"Reverse", 0) || (*(sbuf + 35) & 0x1D) == 1)
  {
    OutputSampleTimingInfoArray = CMSampleBufferGetOutputSampleTimingInfoArray(sbuf, 0, 0, &timingArrayEntriesNeededOut);
    if (OutputSampleTimingInfoArray)
    {
      goto LABEL_6;
    }

    v13 = malloc_type_malloc(72 * timingArrayEntriesNeededOut, 0x1000040FF89C88EuLL);
    if (v13)
    {
      SampleTimingInfo = CMSampleBufferGetOutputSampleTimingInfoArray(sbuf, timingArrayEntriesNeededOut, v13, 0);
      if (!SampleTimingInfo)
      {
        v52 = 0;
        goto LABEL_28;
      }
    }

    else
    {
      v48 = qword_1EAF1CCE0;
      v49 = v5;
      v50 = 4294954566;
      v51 = 5412;
LABEL_49:
      SampleTimingInfo = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v48, v50, "<<<< SampleBuffer >>>>", v51, v49, v23, v24);
    }

LABEL_50:
    v12 = SampleTimingInfo;
    goto LABEL_7;
  }

  v13 = 0;
  v52 = 1;
LABEL_28:
  v26 = 0;
  v27 = 0;
  v28 = 0uLL;
  p_presentationTimeStamp = &v13->presentationTimeStamp;
  while (1)
  {
    timingInfoOut.decodeTimeStamp.epoch = 0;
    *&timingInfoOut.presentationTimeStamp.timescale = v28;
    *&timingInfoOut.decodeTimeStamp.value = v28;
    *&timingInfoOut.duration.value = v28;
    *&timingInfoOut.duration.epoch = v28;
    sampleIndex = v27;
    SampleSize = CMSampleBufferGetSampleSize(sbuf, v27);
    v61 = SampleSize;
    if (!SampleSize)
    {
      v48 = qword_1EAF1CCE0;
      v49 = v5;
      v50 = 4294954557;
      v51 = 5426;
      goto LABEL_49;
    }

    dataLength = SampleSize;
    v30 = CFGetAllocator(DataBuffer);
    v53 = v26;
    SampleTimingInfo = CMBlockBufferCreateWithBufferReference(v30, DataBuffer, v26, dataLength, 0, &blockBufferOut);
    if (SampleTimingInfo)
    {
      goto LABEL_50;
    }

    SampleTimingInfo = CMSampleBufferGetSampleTimingInfo(sbuf, sampleIndex, &timingInfoOut);
    if (SampleTimingInfo)
    {
      goto LABEL_50;
    }

    v31 = CFGetAllocator(sbuf);
    SampleTimingInfo = figSampleBufferCreateCallbackOrHandler(v31, blockBufferOut, 0, 0, 0, 0, FormatDescription, 1, 1uLL, &timingInfoOut, 1uLL, &v61, &v63);
    if (SampleTimingInfo)
    {
      goto LABEL_50;
    }

    CFRelease(blockBufferOut);
    v32 = 0;
    blockBufferOut = 0;
    if (*(sbuf + 19))
    {
      v32 = CFRetain(*(sbuf + 19));
    }

    v33 = v63;
    *(v63 + 19) = v32;
    SampleTimingInfo = CMSampleBufferTrackDataReadiness(v33, sbuf);
    if (SampleTimingInfo)
    {
      goto LABEL_50;
    }

    v34 = sampleIndex;
    if (v21)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v21, sampleIndex);
      v36 = CMSampleBufferGetSampleAttachmentsArray(v63, 1u);
      v37 = CFArrayGetValueAtIndex(v36, 0);
      CFDictionaryApplyFunction(ValueAtIndex, sBufDictionarySetValue, v37);
      v34 = sampleIndex;
    }

    if (v52)
    {
      v38 = v63;
    }

    else
    {
      v38 = v63;
      v39 = v63 + 280;
      if (timingArrayEntriesNeededOut == NumSamples)
      {
        v40 = *&p_presentationTimeStamp[-1].value;
        *(v63 + 37) = p_presentationTimeStamp[-1].epoch;
        *v39 = v40;
        v41 = *&p_presentationTimeStamp->value;
        *(v38 + 18) = p_presentationTimeStamp->epoch;
        *(v38 + 8) = v41;
        v42 = *&p_presentationTimeStamp[1].value;
        *(v38 + 31) = p_presentationTimeStamp[1].epoch;
        *(v38 + 232) = v42;
      }

      else
      {
        v43 = *&v13->duration.value;
        *(v63 + 37) = v13->duration.epoch;
        *v39 = v43;
        v44 = *&v13->duration.value;
        time.epoch = v13->duration.epoch;
        *&time.value = v44;
        CMTimeMultiply(&rhs, &time, sampleIndex);
        lhs = v13->presentationTimeStamp;
        CMTimeAdd(&time, &lhs, &rhs);
        v34 = sampleIndex;
        *(v38 + 128) = time;
        v38 = v63;
        *(v63 + 232) = *&kCMTimeInvalid.value;
        *(v38 + 31) = 0;
      }
    }

    v45 = (callback)(v38, v34, refcon);
    if (v45)
    {
      break;
    }

    CFRelease(v63);
    v63 = 0;
    v26 = dataLength + v53;
    v27 = sampleIndex + 1;
    p_presentationTimeStamp += 3;
    v28 = 0uLL;
    if (NumSamples == sampleIndex + 1)
    {
      goto LABEL_47;
    }
  }

  v12 = v45;
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, v45, "<<<< SampleBuffer >>>>", 0x157A, v5, v46, v47);
LABEL_7:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  if (v63)
  {
    CFRelease(v63);
  }

  if (v13)
  {
    free(v13);
  }

  return v12;
}

OSStatus CMSampleBufferSetDataBufferFromAudioBufferList(CMSampleBufferRef sbuf, CFAllocatorRef blockBufferStructureAllocator, CFAllocatorRef blockBufferBlockAllocator, uint32_t flags, const AudioBufferList *bufferList)
{
  blockBufferOut = 0;
  sizeOut = 0;
  dataPointerOut = 0;
  if (!sbuf || !bufferList)
  {
    v10 = qword_1EAF1CCE0;
    v11 = v7;
    v12 = 4294954565;
    v13 = 5579;
    goto LABEL_6;
  }

  if (*(sbuf + 25))
  {
    v10 = qword_1EAF1CCE0;
    v11 = v7;
    v12 = 4294954552;
    v13 = 5584;
LABEL_6:
    v14 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v10, v12, "<<<< SampleBuffer >>>>", v13, v11, v5, v6);
LABEL_7:
    if (v14)
    {
      v15 = blockBufferOut == 0;
    }

    else
    {
      v15 = 1;
    }

    if (!v15)
    {
      CFRelease(blockBufferOut);
    }

    return v14;
  }

  if (*(sbuf + 24))
  {
    v10 = qword_1EAF1CCE0;
    v11 = v7;
    v12 = 4294954564;
    v13 = 5590;
    goto LABEL_6;
  }

  if (*(sbuf + 2))
  {
    v10 = qword_1EAF1CCE0;
    v11 = v7;
    v12 = 4294954564;
    v13 = 5596;
    goto LABEL_6;
  }

  v17 = flags;
  StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(*(sbuf + 10));
  if (!StreamBasicDescription)
  {
    v10 = qword_1EAF1CCE0;
    v11 = v7;
    v12 = 4294954586;
    v13 = 5604;
    goto LABEL_6;
  }

  v21 = StreamBasicDescription;
  if (StreamBasicDescription->mFormatID == 1819304813 && (StreamBasicDescription->mFormatFlags & 0x20) != 0)
  {
    mChannelsPerFrame = StreamBasicDescription->mChannelsPerFrame;
    if (bufferList->mNumberBuffers == mChannelsPerFrame)
    {
      mNumberChannels = 1;
      if (mChannelsPerFrame != 1)
      {
        goto LABEL_35;
      }

      goto LABEL_22;
    }

LABEL_33:
    v10 = qword_1EAF1CCE0;
    v11 = v7;
    v12 = 4294954565;
    v13 = 5613;
    goto LABEL_6;
  }

  if (bufferList->mNumberBuffers != 1)
  {
    goto LABEL_33;
  }

  mNumberChannels = StreamBasicDescription->mChannelsPerFrame;
LABEL_22:
  if (mNumberChannels != bufferList->mBuffers[0].mNumberChannels)
  {
    FormatList = CMAudioFormatDescriptionGetFormatList(*(sbuf + 10), &sizeOut);
    if (FormatList)
    {
      if (sizeOut >= 0x31)
      {
        v24 = 0;
        v25 = 1;
        while (FormatList[v24].mASBD.mChannelsPerFrame != bufferList->mBuffers[0].mNumberChannels)
        {
          v24 = v25;
          if (sizeOut / 0x30 <= v25++)
          {
            goto LABEL_35;
          }
        }

        mNumberChannels = bufferList->mBuffers[0].mNumberChannels;
      }
    }
  }

LABEL_35:
  mNumberBuffers = bufferList->mNumberBuffers;
  if (mNumberBuffers)
  {
    v29 = 0;
    v30 = 0;
    p_mData = &bufferList->mBuffers[0].mData;
    while (*(p_mData - 2) == mNumberChannels)
    {
      v32 = *(p_mData - 1);
      if (!v32 || !*p_mData)
      {
        break;
      }

      if (v30)
      {
        if (v30 != v32)
        {
          v10 = qword_1EAF1CCE0;
          v11 = v7;
          v12 = 4294954565;
          v13 = 5653;
          goto LABEL_6;
        }
      }

      else
      {
        v30 = *(p_mData - 1);
      }

      v29 += v30;
      p_mData += 2;
      if (!--mNumberBuffers)
      {
        goto LABEL_48;
      }
    }

    v10 = qword_1EAF1CCE0;
    v11 = v7;
    v12 = 4294954565;
    v13 = 5645;
    goto LABEL_6;
  }

  v30 = 0;
  v29 = 0;
LABEL_48:
  if (v21->mFormatID == 1819304813)
  {
    v33 = *(sbuf + 13);
    if (!v33 || *(sbuf + 12) != 1 || (CMTimeMake(&time2, 1, v21->mSampleRate), v34 = *v33, time1.epoch = *(v33 + 2), *&time1.value = v34, CMTimeCompare(&time1, &time2)))
    {
      v10 = qword_1EAF1CCE0;
      v11 = v7;
      v12 = 4294954565;
      v13 = 5668;
      goto LABEL_6;
    }

    if (*(sbuf + 11) != v30 / v21->mBytesPerFrame)
    {
      v10 = qword_1EAF1CCE0;
      v11 = v7;
      v12 = 4294954565;
      v13 = 5675;
      goto LABEL_6;
    }
  }

  if ((v17 & 1) != 0 && (v30 & 0xF) != 0)
  {
    v35 = ((v30 + 15) & 0xFFFFFFFFFFFFFFF0) * bufferList->mNumberBuffers;
    v36 = MEMORY[0x19A8D7200](blockBufferBlockAllocator, v35, 1572287987, 0);
    if (!v36)
    {
      v14 = -12730;
      goto LABEL_7;
    }

    v37 = v36;
    v38 = CMBlockBufferCreateEmpty(blockBufferStructureAllocator, bufferList->mNumberBuffers, 0, &blockBufferOut);
    if (v38)
    {
      v14 = v38;
      CFAllocatorDeallocate(blockBufferBlockAllocator, v37);
      goto LABEL_7;
    }

    blockLength = v35;
    if (bufferList->mNumberBuffers)
    {
      v39 = 0;
      v40 = 0;
      v41 = *MEMORY[0x1E695E498];
      v42 = &bufferList->mBuffers[0].mData;
      do
      {
        if (v39)
        {
          v43 = v41;
        }

        else
        {
          v43 = blockBufferBlockAllocator;
        }

        CMBlockBufferAppendMemoryBlock(blockBufferOut, v37, blockLength, v43, 0, v40, v30, 0);
        v44 = *v42;
        v42 += 2;
        memcpy(&v37[v40], v44, v30);
        v40 += (v30 + 15) & 0xFFFFFFFFFFFFFFF0;
        ++v39;
      }

      while (v39 < bufferList->mNumberBuffers);
    }
  }

  else
  {
    v14 = CMBlockBufferCreateWithMemoryBlock(blockBufferStructureAllocator, 0, v29, blockBufferBlockAllocator, 0, 0, v29, 1u, &blockBufferOut);
    if (v14)
    {
      goto LABEL_7;
    }

    CMSampleBufferSetDataBufferFromAudioBufferList_cold_1(&blockBufferOut, &dataPointerOut, bufferList, v30);
  }

  if (v21->mFormatID == 1819304813 && (v21->mFormatFlags & 0x20) != 0)
  {
    *(sbuf + 14) = 0;
    *(sbuf + 15) = 0;
  }

  *(sbuf + 2) = blockBufferOut;
  blockBufferOut = 0;
  sBufTransitionDataReady(sbuf, 1u, 0, 0);
  return 0;
}

OSStatus CMSampleBufferGetAudioBufferListWithRetainedBlockBuffer(CMSampleBufferRef sbuf, size_t *bufferListSizeNeededOut, AudioBufferList *bufferListOut, size_t bufferListSize, CFAllocatorRef blockBufferStructureAllocator, CFAllocatorRef blockBufferBlockAllocator, uint32_t flags, CMBlockBufferRef *blockBufferOut)
{
  if (!sbuf)
  {
    v10 = qword_1EAF1CCE0;
    v11 = v8;
    v12 = 4294954565;
    v13 = 5870;
    goto LABEL_5;
  }

  if (*(sbuf + 25))
  {
    v10 = qword_1EAF1CCE0;
    v11 = v8;
    v12 = 4294954552;
    v13 = 5875;
LABEL_5:

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v10, v12, "<<<< SampleBuffer >>>>", v13, v11, flags, blockBufferOut);
  }

  v16 = flags;
  StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(*(sbuf + 10));
  if (!StreamBasicDescription)
  {
    v10 = qword_1EAF1CCE0;
    v11 = v8;
    v12 = 4294954586;
    v13 = 5883;
    goto LABEL_5;
  }

  if (StreamBasicDescription->mFormatID == 1819304813 && (StreamBasicDescription->mFormatFlags & 0x20) != 0)
  {
    mChannelsPerFrame = StreamBasicDescription->mChannelsPerFrame;
    if (!mChannelsPerFrame)
    {
      v10 = qword_1EAF1CCE0;
      v11 = v8;
      v12 = 4294954553;
      v13 = 5889;
      goto LABEL_5;
    }

    v23 = 1;
  }

  else
  {
    v23 = StreamBasicDescription->mChannelsPerFrame;
    mChannelsPerFrame = 1;
  }

  v25 = (16 * mChannelsPerFrame) | 8;
  if (bufferListSizeNeededOut)
  {
    *bufferListSizeNeededOut = v25;
  }

  if (!bufferListOut)
  {
    return 0;
  }

  if (v25 != bufferListSize)
  {
    v10 = qword_1EAF1CCE0;
    v11 = v8;
    v12 = 4294954559;
    v13 = 5907;
    goto LABEL_5;
  }

  if (!blockBufferOut)
  {
    v10 = qword_1EAF1CCE0;
    v11 = v8;
    v12 = 4294954565;
    v13 = 5912;
    goto LABEL_5;
  }

  v26 = *(sbuf + 2);
  if (!v26 || *(sbuf + 7) != 1)
  {
    v10 = qword_1EAF1CCE0;
    v11 = v8;
    v12 = 4294954563;
    v13 = 5917;
    goto LABEL_5;
  }

  return DataBufferToAudioListWorker(v26, blockBufferStructureAllocator, blockBufferBlockAllocator, mChannelsPerFrame, v23, v16 & 1, bufferListOut, blockBufferOut);
}

uint64_t DataBufferToAudioListWorker(OpaqueCMBlockBuffer *a1, const __CFAllocator *a2, const __CFAllocator *a3, signed int a4, int a5, int a6, signed int *a7, CMBlockBufferRef *a8)
{
  dataPointerOut = 0;
  lengthAtOffsetOut = 0;
  blockBufferOut = 0;
  *a7 = a4;
  DataLength = CMBlockBufferGetDataLength(a1);
  if (a4 <= 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = a4;
  }

  v14 = DataLength / a4;
  CMBlockBufferGetDataPointer(a1, 0, &lengthAtOffsetOut, 0, &dataPointerOut);
  if (lengthAtOffsetOut >= v14)
  {
    v16 = 0;
    v17 = 1;
    v15 = 1;
    while (!a6 || (dataPointerOut & 0xF) == 0)
    {
      v15 = v17 < a4;
      if (v13 == v17)
      {
        if (a1)
        {
          v21 = CFRetain(a1);
        }

        else
        {
          v21 = 0;
        }

        blockBufferOut = v21;
        goto LABEL_18;
      }

      v16 += v14;
      CMBlockBufferGetDataPointer(a1, v16, &lengthAtOffsetOut, 0, &dataPointerOut);
      ++v17;
      if (lengthAtOffsetOut < v14)
      {
        break;
      }
    }
  }

  else
  {
    v15 = 1;
  }

  appended = CMBlockBufferCreateEmpty(a2, a4, 0, &blockBufferOut);
  if (!appended)
  {
LABEL_18:
    v22 = 0;
    v23 = (a7 + 4);
    do
    {
      CMBlockBufferGetDataPointer(a1, v22, &lengthAtOffsetOut, 0, &dataPointerOut);
      if (v15)
      {
        if (lengthAtOffsetOut < v14 || a6 && (dataPointerOut & 0xF) != 0)
        {
          appended = CMBlockBufferAppendMemoryBlock(blockBufferOut, 0, v14, a3, 0, 0, v14, 1u);
          if (appended)
          {
            goto LABEL_12;
          }

          CMBlockBufferGetDataPointer(blockBufferOut, v22, 0, 0, &dataPointerOut);
          CMBlockBufferCopyDataBytes(a1, v22, v14, dataPointerOut);
        }

        else
        {
          CMBlockBufferAppendBufferReference(blockBufferOut, a1, v22, v14, 0);
        }
      }

      *v23 = dataPointerOut;
      *(v23 - 2) = a5;
      *(v23 - 1) = v14;
      v22 += v14;
      v23 += 2;
      --v13;
    }

    while (v13);
    v19 = 0;
    v20 = blockBufferOut;
    goto LABEL_28;
  }

LABEL_12:
  v19 = appended;
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
    v20 = 0;
LABEL_28:
    *a8 = v20;
  }

  return v19;
}

OSStatus CMSampleBufferGetAudioStreamPacketDescriptionsPtr(CMSampleBufferRef sbuf, const AudioStreamPacketDescription **packetDescriptionsPointerOut, size_t *packetDescriptionsSizeOut)
{
  if (!sbuf)
  {
    v7 = qword_1EAF1CCE0;
    v8 = v5;
    v9 = 4294954565;
    v10 = 6024;
    goto LABEL_18;
  }

  if (*(sbuf + 25))
  {
    v7 = qword_1EAF1CCE0;
    v8 = v5;
    v9 = 4294954552;
    v10 = 6030;
LABEL_18:

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, v9, "<<<< SampleBuffer >>>>", v10, v8, v3, v4);
  }

  if (!(packetDescriptionsPointerOut | packetDescriptionsSizeOut))
  {
    v7 = qword_1EAF1CCE0;
    v8 = v5;
    v9 = 4294954565;
    v10 = 6036;
    goto LABEL_18;
  }

  v13 = *(sbuf + 10);
  if (!v13)
  {
    v7 = qword_1EAF1CCE0;
    v8 = v5;
    v9 = 4294954555;
    v10 = 6042;
    goto LABEL_18;
  }

  if (CMFormatDescriptionGetMediaType(v13) != 1936684398)
  {
    v7 = qword_1EAF1CCE0;
    v8 = v5;
    v9 = 4294954555;
    v10 = 6048;
    goto LABEL_18;
  }

  if (*(sbuf + 344) || (result = sBufComputeAudioStreamPacketDescriptions(sbuf)) == 0)
  {
    if (packetDescriptionsPointerOut)
    {
      v14 = *(sbuf + 42);
      if (v14)
      {
        v14 = *(sbuf + 41);
      }

      *packetDescriptionsPointerOut = v14;
    }

    result = 0;
    if (packetDescriptionsSizeOut)
    {
      *packetDescriptionsSizeOut = 16 * *(sbuf + 42);
    }
  }

  return result;
}

size_t sBufComputeAudioStreamPacketDescriptions(uint64_t a1)
{
  memset(&timingInfoOut, 0, sizeof(timingInfoOut));
  StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(*(a1 + 80));
  if (!StreamBasicDescription)
  {
    v9 = qword_1EAF1CCE0;
    v10 = v1;
    v11 = 4294954586;
    v12 = 6127;
    goto LABEL_7;
  }

  if (*(a1 + 344))
  {
    goto LABEL_8;
  }

  v6 = StreamBasicDescription;
  NumSamples = CMSampleBufferGetNumSamples(a1);
  if (v6->mFramesPerPacket)
  {
    p_mBytesPerPacket = &v6->mBytesPerPacket;
    if (v6->mBytesPerPacket)
    {
      *(a1 + 336) = 0;
      goto LABEL_8;
    }

    goto LABEL_12;
  }

  if (!*(a1 + 104))
  {
    v9 = qword_1EAF1CCE0;
    v10 = v1;
    v11 = 4294954560;
    v12 = 6141;
    goto LABEL_7;
  }

  p_mBytesPerPacket = &v6->mBytesPerPacket;
  if (!v6->mBytesPerPacket)
  {
LABEL_12:
    if (!*(a1 + 120))
    {
      v9 = qword_1EAF1CCE0;
      v10 = v1;
      v11 = 4294954561;
      v12 = 6150;
      goto LABEL_7;
    }
  }

  *(a1 + 336) = NumSamples;
  if (!NumSamples)
  {
    goto LABEL_8;
  }

  v14 = 0;
  v15 = 0;
  v16 = *p_mBytesPerPacket;
  v17 = 1;
  SampleSize = *p_mBytesPerPacket;
  while (1)
  {
    if (!v16)
    {
      SampleSize = CMSampleBufferGetSampleSize(a1, v17 - 1);
    }

    if (v6->mFramesPerPacket)
    {
      value = 0;
      *(*(a1 + 328) + v14) = v15;
      goto LABEL_23;
    }

    result = CMSampleBufferGetSampleTimingInfo(a1, v17 - 1, &timingInfoOut);
    if (result)
    {
      return result;
    }

    mSampleRate = v6->mSampleRate;
    duration = timingInfoOut.duration;
    CMTimeConvertScale(&v23, &duration, mSampleRate, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
    if ((v23.flags & 0x1D) != 1)
    {
      break;
    }

    value = v23.value;
    mFramesPerPacket = v6->mFramesPerPacket;
    *(*(a1 + 328) + v14) = v15;
    if (mFramesPerPacket)
    {
      value = 0;
    }

LABEL_23:
    *(*(a1 + 328) + v14 + 8) = value;
    *(*(a1 + 328) + v14 + 12) = SampleSize;
    if (v17 >= *(a1 + 336))
    {
      goto LABEL_8;
    }

    v15 += SampleSize;
    v16 = *p_mBytesPerPacket;
    v14 += 16;
    ++v17;
  }

  v9 = qword_1EAF1CCE0;
  v10 = v1;
  v11 = 4294954556;
  v12 = 6178;
LABEL_7:
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, v11, "<<<< SampleBuffer >>>>", v12, v10, v4, v5);
  if (!result)
  {
LABEL_8:
    result = 0;
    *(a1 + 344) = 1;
  }

  return result;
}

OSStatus CMSampleBufferGetAudioStreamPacketDescriptions(CMSampleBufferRef sbuf, size_t packetDescriptionsSize, AudioStreamPacketDescription *packetDescriptionsOut, size_t *packetDescriptionsSizeNeededOut)
{
  __n = 0;
  packetDescriptionsPointerOut = 0;
  result = CMSampleBufferGetAudioStreamPacketDescriptionsPtr(sbuf, &packetDescriptionsPointerOut, &__n);
  if (!result)
  {
    if (packetDescriptionsSizeNeededOut)
    {
      *packetDescriptionsSizeNeededOut = __n;
    }

    if (!packetDescriptionsOut)
    {
      return 0;
    }

    if (__n > packetDescriptionsSize)
    {
      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE3FuLL, "<<<< SampleBuffer >>>>", 0x17D2, v4, v9, v10);
    }

    result = 0;
    if (__n && packetDescriptionsPointerOut)
    {
      memcpy(packetDescriptionsOut, packetDescriptionsPointerOut, __n);
      return 0;
    }
  }

  return result;
}

uint64_t FigPacketDependencyInfoCopyAsSampleDependencyAttributeDictionary(const __CFAllocator *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  v9 = a2;
  if (FigPacketDependencyInfoCopyAsSampleDependencyAttributeDictionary_onceToken != -1)
  {
    FigPacketDependencyInfoCopyAsSampleDependencyAttributeDictionary_cold_1();
  }

  if (!v9)
  {
    v11 = FigPacketDependencyInfoCopyAsSampleDependencyAttributeDictionary_sDependentPacketAttributes;
    if (FigPacketDependencyInfoCopyAsSampleDependencyAttributeDictionary_sDependentPacketAttributes)
    {
      goto LABEL_9;
    }

LABEL_13:
    FigPacketDependencyInfoCopyAsSampleDependencyAttributeDictionary_cold_2(&v15, a2, a3, a4, a5, a6, a7, a8);
    return v15;
  }

  a2 = HIDWORD(v9);
  if ((v9 & 0x8000000000000000) != 0 || SHIDWORD(v9) > 3)
  {
    SampleDependencyAttributeDictionaryForAudioRefreshCount = createSampleDependencyAttributeDictionaryForAudioRefreshCount(a1, SHIDWORD(v9));
    if (SampleDependencyAttributeDictionaryForAudioRefreshCount)
    {
      goto LABEL_10;
    }

    goto LABEL_13;
  }

  v11 = FigPacketDependencyInfoCopyAsSampleDependencyAttributeDictionary_sIndependentPacketAttributes[a2];
  if (!v11)
  {
    goto LABEL_13;
  }

LABEL_9:
  SampleDependencyAttributeDictionaryForAudioRefreshCount = CFRetain(v11);
  if (!SampleDependencyAttributeDictionaryForAudioRefreshCount)
  {
    goto LABEL_13;
  }

LABEL_10:
  v13 = 0;
  *a3 = SampleDependencyAttributeDictionaryForAudioRefreshCount;
  return v13;
}

CFDictionaryRef InitializePacketAttributes(uint64_t a1)
{
  AllocatorForPermanentAllocations = FigGetAllocatorForPermanentAllocations();
  v3 = 0;
  **a1 = CFDictionaryCreate(AllocatorForPermanentAllocations, &kCMSampleAttachmentKey_NotSync, MEMORY[0x1E695E4D0], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  do
  {
    v4 = FigGetAllocatorForPermanentAllocations();
    result = createSampleDependencyAttributeDictionaryForAudioRefreshCount(v4, v3);
    *(*(a1 + 8) + 8 * v3++) = result;
  }

  while (v3 != 4);
  return result;
}

CFDictionaryRef createSampleDependencyAttributeDictionaryForAudioRefreshCount(const __CFAllocator *a1, int a2)
{
  v15 = *MEMORY[0x1E69E9840];
  valuePtr = a2;
  v14 = xmmword_1E749DFE0;
  v12 = *MEMORY[0x1E695E4D0];
  v3 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v13 = v3;
  if (valuePtr)
  {
    v5 = &v14;
    v6 = &v12;
    v7 = a1;
    v8 = 2;
  }

  else
  {
    v5 = &v14 + 1;
    v6 = &v13;
    v7 = a1;
    v8 = 1;
  }

  v9 = CFDictionaryCreate(v7, v5, v6, v8, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFRelease(v4);
  return v9;
}

uint64_t FigAudioStreamPacketDependencyInfoCopyAsSampleDependencyAttributeDictionary(const __CFAllocator *a1, _DWORD *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  if (*a2)
  {
    v8 = 0;
  }

  else
  {
    v8 = a2[1] << 32;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = v8 + 1;
  }

  return FigPacketDependencyInfoCopyAsSampleDependencyAttributeDictionary(a1, v9, a3, a4, a5, a6, a7, a8);
}

void FigSampleBufferSetDecryptor(uint64_t a1, CFTypeRef cf)
{
  v2 = *(a1 + 152);
  *(a1 + 152) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v2)
  {

    CFRelease(v2);
  }
}

size_t CMSampleBufferCreateReadyForCVDataBuffer(const __CFAllocator *a1, void *cf, const opaqueCMFormatDescription *a3, uint64_t a4, void *a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  cfa = 0;
  blockBufferOut = 0;
  memset(&customBlockSource, 0, sizeof(customBlockSource));
  if (!a5)
  {
    CMSampleBufferCreateReadyForCVDataBuffer_cold_7(&v60, cf, a3, a4, 0, a6, a7, a8);
LABEL_21:
    v44 = v60;
    goto LABEL_22;
  }

  if (!cf)
  {
    CMSampleBufferCreateReadyForCVDataBuffer_cold_6(&v60, 0, a3, a4, a5, a6, a7, a8);
    goto LABEL_21;
  }

  v13 = CFGetTypeID(cf);
  if (v13 != CVDataBufferGetTypeID())
  {
    CMSampleBufferCreateReadyForCVDataBuffer_cold_1(&v60, v14, v15, v16, v17, v18, v19, v20);
    goto LABEL_21;
  }

  if (!a3)
  {
    CMSampleBufferCreateReadyForCVDataBuffer_cold_5(&v60, v14, v15, v16, v17, v18, v19, v20);
    goto LABEL_21;
  }

  if (!a4)
  {
    CMSampleBufferCreateReadyForCVDataBuffer_cold_4(&v60, v14, v15, v16, v17, v18, v19, v20);
    goto LABEL_21;
  }

  IOSurface = CVDataBufferGetIOSurface();
  if (!IOSurface)
  {
    CMSampleBufferCreateReadyForCVDataBuffer_cold_3(&v60, v22, v23, v24, v25, v26, v27, v28);
    goto LABEL_21;
  }

  v29 = IOSurface;
  PixelFormatType = CVDataBufferGetPixelFormatType();
  if (CMFormatDescriptionGetMediaSubType(a3) != PixelFormatType)
  {
    CMSampleBufferCreateReadyForCVDataBuffer_cold_2(&v60, v31, v32, v33, v34, v35, v36, v37);
    goto LABEL_21;
  }

  CVDataBufferGetDataSize();
  v41 = sBufCreate(a1, 1uLL, 1uLL, 0, &cfa, v38, v39, v40);
  if (v41)
  {
    v44 = v41;
  }

  else
  {
    IOSurfaceLock(v29, 1u, 0);
    BaseAddress = IOSurfaceGetBaseAddress(v29);
    AllocSize = IOSurfaceGetAllocSize(v29);
    CFRetain(cf);
    customBlockSource.version = 0;
    customBlockSource.refCon = cf;
    customBlockSource.AllocateBlock = 0;
    customBlockSource.FreeBlock = sbufReleaseCVDataBufferAfterUnlockingIOSurface;
    v44 = CMBlockBufferCreateWithMemoryBlock(a1, BaseAddress, AllocSize, 0, &customBlockSource, 0, AllocSize, 0, &blockBufferOut);
    if (!v44)
    {
      CMSetAttachment(blockBufferOut, @"CVDataBuffer", cf, 0);
      v45 = cfa;
      v46 = blockBufferOut;
      *(cfa + 24) = 0;
      v45[2] = v46;
      blockBufferOut = 0;
      *(v45 + 7) = 1;
      *(v45 + 40) = 0;
      v47 = FigFormatDescriptionRetain(a3);
      v48 = cfa;
      *(cfa + 10) = v47;
      *(v48 + 11) = 1;
      **(v48 + 15) = AllocSize;
      v49 = *(v48 + 13);
      v51 = *(a4 + 32);
      v50 = *(a4 + 48);
      v52 = *(a4 + 16);
      *(v49 + 64) = *(a4 + 64);
      *(v49 + 32) = v51;
      *(v49 + 48) = v50;
      *(v49 + 16) = v52;
      *v49 = *a4;
      v53 = *(a4 + 64);
      *(v48 + 10) = *(a4 + 48);
      *(v48 + 22) = v53;
      v54 = *(a4 + 40);
      *(v48 + 184) = *(a4 + 24);
      *(v48 + 25) = v54;
      v55 = *(a4 + 16);
      *(v48 + 13) = *a4;
      *(v48 + 28) = v55;
      *a5 = v48;
      cfa = 0;
      goto LABEL_11;
    }

    IOSurfaceUnlock(v29, 1u, 0);
    CFRelease(cf);
  }

LABEL_22:
  if (cfa)
  {
    CFRelease(cfa);
  }

LABEL_11:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  return v44;
}

void sbufReleaseCVDataBufferAfterUnlockingIOSurface(const void *a1)
{
  IOSurface = CVDataBufferGetIOSurface();
  IOSurfaceUnlock(IOSurface, 1u, 0);

  CFRelease(a1);
}

uint64_t FigSampleBufferPayloadTypeForSwiftOverlay(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (!*(a1 + 24))
  {
    if (*(a1 + 16))
    {
      return 0;
    }

    else if (*(a1 + 88) || *(a1 + 80))
    {
      if (*(a1 + 28) == 1)
      {
        return 5;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 4;
    }
  }

  return v1;
}

void FigSampleBufferSetPayloadForSwiftOverlay(uint64_t a1, CFTypeRef cf)
{
  v2 = *(a1 + 24);
  if (v2 < 4)
  {
    v3 = *(a1 + 16);
    *(a1 + 16) = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    if (v3)
    {

      CFRelease(v3);
    }
  }
}

void FigSampleBufferBufferSetFormatDescriptionForSwiftOverlay(uint64_t a1, CFTypeRef cf)
{
  v2 = *(a1 + 80);
  *(a1 + 80) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v2)
  {

    CFRelease(v2);
  }
}

double FigSampleBufferGetFirstSampleTimingsForSwiftOverlay@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 96) == 1)
  {
    v2 = *(a1 + 104);
    v3 = *(v2 + 48);
    *(a2 + 32) = *(v2 + 32);
    *(a2 + 48) = v3;
    *(a2 + 64) = *(v2 + 64);
    v4 = *(v2 + 16);
    *a2 = *v2;
    *(a2 + 16) = v4;
  }

  else
  {
    *(a2 + 64) = 0;
    *&v4 = 0;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return *&v4;
}

double FigSampleBufferSetFirstSampleTimingsForSwiftOverlay(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 96) == 1)
  {
    v2 = *(a1 + 104);
    *v2 = *a2;
    v3 = *(a2 + 16);
    v4 = *(a2 + 32);
    v5 = *(a2 + 48);
    *(v2 + 64) = *(a2 + 64);
    *(v2 + 32) = v4;
    *(v2 + 48) = v5;
    *(v2 + 16) = v3;
    *&result = sbufUpdateCachedTimestamps(a1, v3).n128_u64[0];
  }

  return result;
}

void *FigSampleBufferGetSampleInfosForSwiftOverlay(void *result, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v6 = result[14];
  *a2 = result[15];
  *a3 = v6;
  v7 = result[12];
  *a4 = result[13];
  *a5 = v7;
  *a6 = result[38];
  return result;
}

void FigSampleBufferSetSampleInfosForSwiftOverlay(size_t a1, const void *a2, unint64_t a3, const void *a4, unint64_t a5, const void *a6, __n128 a7)
{
  v13 = 72 * a5;
  if (*(a1 + 96) >= a5)
  {
    if (!a5)
    {
      goto LABEL_9;
    }

    v15 = *(a1 + 104);
  }

  else
  {
    if ((*(a1 + 26) & 2) != 0)
    {
      v14 = *(a1 + 104);
      if (v14)
      {
        *(a1 + 104) = 0;
        free(v14);
      }
    }

    v15 = malloc_type_malloc(v13, 0xA3CBD731uLL);
    *(a1 + 104) = v15;
    *(a1 + 26) |= 2u;
  }

  memcpy(v15, a4, v13);
LABEL_9:
  *(a1 + 96) = a5;
  sbufUpdateCachedTimestamps(a1, a7);
  sBufReplaceSampleSizeArray(a1, a2, a3);
  v16 = *(a1 + 304);
  *(a1 + 304) = a6;
  if (a6)
  {
    CFRetain(a6);
  }

  if (v16)
  {

    CFRelease(v16);
  }
}

const void *FigSampleBufferGetSingleSampleAttachments(opaqueCMSampleBuffer *a1)
{
  SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(a1, 0);

  return FigCFArrayGetValueAtIndex(SampleAttachmentsArray, 0);
}

void FigSampleBufferSetSingleSampleAttachments(opaqueCMSampleBuffer *a1, const __CFDictionary *a2)
{
  if (FigCFDictionaryGetCount(a2))
  {
    SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(a1, 1u);
    ValueAtIndex = CFArrayGetValueAtIndex(SampleAttachmentsArray, 0);
    FigCFDictionaryRemoveAllValues(ValueAtIndex);

    FigCFDictionarySetAllValuesFromDictionary(ValueAtIndex, a2);
  }

  else
  {
    v6 = CMSampleBufferGetSampleAttachmentsArray(a1, 0);
    if (v6)
    {
      v7 = v6;
      if (CFArrayGetCount(v6) >= 1)
      {
        v8 = CFArrayGetValueAtIndex(v7, 0);

        FigCFDictionaryRemoveAllValues(v8);
      }
    }
  }
}

__CFString *sBufCopyDebugDesc(uint64_t a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  v3 = CFGetRetainCount(a1);
  v4 = CFGetAllocator(a1);
  CFStringAppendFormat(Mutable, 0, @"CMSampleBuffer %p retainCount: %d allocator: %p\n", a1, v3, v4);
  if (*(a1 + 25))
  {
    v5 = "YES";
  }

  else
  {
    v5 = "NO";
  }

  CFStringAppendFormat(Mutable, 0, @"\tinvalid = %s\n", v5);
  v6 = *(a1 + 28);
  if (v6 == 2)
  {
    CFStringAppendFormat(Mutable, 0, @"\tdataFailed = YES (%d)\n", *(a1 + 32));
  }

  else if (v6 == 1)
  {
    CFStringAppendFormat(Mutable, 0, @"\tdataReady = YES\n", v37);
  }

  else
  {
    if (v6)
    {
      goto LABEL_17;
    }

    CFStringAppendFormat(Mutable, 0, @"\tdataReady = NO\n", v37);
  }

  if (!*(a1 + 28))
  {
    v7 = *(a1 + 40);
    if ((v7 - 1) < 2)
    {
      CFStringAppendFormat(Mutable, 0, @"\tmakeDataReadyCallback = %p\n\tmakeDataReadyRefcon = %p\n", *(a1 + 48), *(a1 + 56));
    }

    else if (v7 != 3)
    {
      if (v7 == 4)
      {
        CFStringAppendFormat(Mutable, 0, @"\tsbufToTrackReadiness = %p\n", *(a1 + 48));
      }

      goto LABEL_17;
    }

    CFStringAppendFormat(Mutable, 0, @"\tmakeDataReadyHandler = %p\n", *(a1 + 48));
  }

LABEL_17:
  if (*(a1 + 312) || *(a1 + 320))
  {
    CFStringAppendFormat(Mutable, 0, @"\tbuffer-level attachments:\n");
    v8 = *(a1 + 312);
    if (v8)
    {
      context.value = Mutable;
      *&context.timescale = 1;
      CFDictionaryApplyFunction(v8, describeSBufAnnotation, &context);
    }
  }

  v9 = *(a1 + 320);
  if (v9)
  {
    *&context.value = Mutable;
    CFDictionaryApplyFunction(v9, describeSBufAnnotation, &context);
  }

  v10 = *(a1 + 80);
  if (v10)
  {
    v11 = CFCopyDescription(v10);
    CFStringAppendFormat(Mutable, 0, @"\tformatDescription = %@\n", v11);
    if (v11)
    {
      CFRelease(v11);
    }
  }

  else
  {
    CFStringAppendFormat(Mutable, 0, @"\tformatDescription = %@\n", 0);
  }

  CFStringAppendFormat(Mutable, 0, @"\tnumSamples = %ld\n", *(a1 + 88));
  v12 = CFGetAllocator(a1);
  CMSampleBufferGetOutputPresentationTimeStamp(&context, a1);
  v13 = CMTimeCopyDescription(v12, &context);
  CFStringAppendFormat(Mutable, 0, @"\toutputPTS = %@", v13);
  if (v13)
  {
    CFRelease(v13);
  }

  if ((*(a1 + 140) & 0x1D) == 1)
  {
    CFStringAppendFormat(Mutable, 0, @"(based on outputPresentationTimeStamp)\n");
  }

  else if ((*(a1 + 268) & 0x1D) == 1)
  {
    CFStringAppendFormat(Mutable, 0, @"(based on cachedOutputPresentationTimeStamp)\n");
  }

  else
  {
    CFStringAppendFormat(Mutable, 0, @"(computed from PTS, duration and attachments)\n");
  }

  if (*(a1 + 96))
  {
    CFStringAppendFormat(Mutable, 0, @"\tsampleTimingArray[%d] = {\n", *(a1 + 96));
    if (*(a1 + 96) >= 1)
    {
      v14 = 0;
      v15 = 0;
      do
      {
        v16 = CFGetAllocator(a1);
        v17 = (*(a1 + 104) + v14);
        v18 = *v17;
        context.epoch = *(v17 + 2);
        *&context.value = v18;
        v19 = CMTimeCopyDescription(v16, &context);
        v20 = CFGetAllocator(a1);
        v21 = *(a1 + 104) + v14;
        v22 = *(v21 + 24);
        context.epoch = *(v21 + 40);
        *&context.value = v22;
        v23 = CMTimeCopyDescription(v20, &context);
        v24 = CFGetAllocator(a1);
        v25 = *(a1 + 104) + v14;
        v26 = *(v25 + 48);
        context.epoch = *(v25 + 64);
        *&context.value = v26;
        v27 = CMTimeCopyDescription(v24, &context);
        CFStringAppendFormat(Mutable, 0, @"\t\t{PTS = %@, DTS = %@, duration = %@},\n", v23, v27, v19);
        CFRelease(v19);
        CFRelease(v23);
        CFRelease(v27);
        ++v15;
        v14 += 72;
      }

      while (v15 < *(a1 + 96));
    }

    CFStringAppendFormat(Mutable, 0, @"\t}\n");
  }

  if (*(a1 + 112))
  {
    CFStringAppendFormat(Mutable, 0, @"\tsampleSizeArray[%d] = {\n", *(a1 + 112));
    if (*(a1 + 112) >= 1)
    {
      v28 = 0;
      do
      {
        CFStringAppendFormat(Mutable, 0, @"\t\tsampleSize = %zu,\n", *(*(a1 + 120) + 8 * v28++));
      }

      while (v28 < *(a1 + 112));
    }

    CFStringAppendFormat(Mutable, 0, @"\t}\n");
  }

  if (*(a1 + 304))
  {
    CFStringAppendFormat(Mutable, 0, @"\tsampleAttachmentsArray[%d] = {\n", *(a1 + 112));
    if (*(a1 + 88) >= 1)
    {
      v29 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 304), v29);
        CFStringAppendFormat(Mutable, 0, @"\t\tsample %d:\n", v29);
        CFDictionaryApplyFunction(ValueAtIndex, appendSampleAnnotation, Mutable);
        ++v29;
      }

      while (v29 < *(a1 + 88));
    }

    CFStringAppendFormat(Mutable, 0, @"\t}\n");
  }

  v31 = *(a1 + 24);
  if (v31 > 1)
  {
    if (v31 == 2)
    {
      CFStringAppendFormat(Mutable, 0, @"\tcaptionGroup = %p\n", *(a1 + 16));
    }

    else if (v31 == 3)
    {
      CFStringAppendFormat(Mutable, 0, @"\ttaggedBufferGroup = %p\n", *(a1 + 16));
    }
  }

  else
  {
    if (!*(a1 + 24))
    {
      v32 = *(a1 + 16);
      if (v32)
      {
        v33 = CFCopyDescription(v32);
        if (v33)
        {
          v34 = v33;
          CFStringAppendFormat(Mutable, 0, @"\tdataBuffer = {\n%@}\n", v33);
          CFRelease(v34);
          return Mutable;
        }

        v35 = *(a1 + 16);
      }

      else
      {
        v35 = 0;
      }

      CFStringAppendFormat(Mutable, 0, @"\tdataBuffer = %p\n", v35);
      return Mutable;
    }

    if (v31 == 1)
    {
      CFStringAppendFormat(Mutable, 0, @"\timageBuffer = %p\n", *(a1 + 16));
    }
  }

  return Mutable;
}

void sBufReleaseMakeDataReady(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      *(a1 + 40) = 0;
      _Block_release(*(a1 + 48));
    }

    else
    {
      if (v2 != 4)
      {
        return;
      }

      *(a1 + 40) = 0;
      v5 = *(a1 + 48);
      if (!v5)
      {
        return;
      }

      CFRelease(v5);
    }

LABEL_13:
    *(a1 + 48) = 0;
    return;
  }

  if (v2 == 1)
  {
    *(a1 + 40) = 0;
    *(a1 + 56) = 0;
    goto LABEL_13;
  }

  if (v2 == 2)
  {
    FigSimpleMutexLock(*(a1 + 64));
    v4 = *(a1 + 56);
    v3 = *(a1 + 64);
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    FigSimpleMutexUnlock(v3);
    if (v4)
    {
      CFRelease(v4);
    }

    *(a1 + 40) = 0;
  }
}

void describeSBufAnnotation(const __CFString *a1, uint64_t a2, uint64_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v19 = 0;
  v18 = 0u;
  v17 = 0u;
  v16 = 0u;
  v15 = 0u;
  v14 = 0u;
  v13 = 0u;
  v12 = 0u;
  v11 = 0u;
  v10 = 0u;
  v9 = 0u;
  v8 = 0u;
  v7 = 0u;
  *buffer = 1061109567;
  CFStringGetCString(a1, buffer, 200, 0x8000100u);
  if (*(a3 + 8) == 1)
  {
    v5 = "(P)";
  }

  else
  {
    v5 = "   ";
  }

  CFStringAppendFormat(*a3, 0, @"\t\t%-10s%s = %@\n", buffer, v5, a2);
}

void appendSampleAnnotation(const __CFString *a1, uint64_t a2, __CFString *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v18 = 0;
  v17 = 0u;
  v16 = 0u;
  v15 = 0u;
  v14 = 0u;
  v13 = 0u;
  v12 = 0u;
  v11 = 0u;
  v10 = 0u;
  v9 = 0u;
  v8 = 0u;
  v7 = 0u;
  v6 = 0u;
  *buffer = 1061109567;
  CFStringGetCString(a1, buffer, 200, 0x8000100u);
  CFStringAppendFormat(a3, 0, @"\t\t\t%-10s = %@\n", buffer, a2);
}

double sBufRemoveAttachment(uint64_t a1, CFTypeRef cf1, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  if (*(a1 + 25))
  {
    v9 = qword_1EAF1CCE0;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFCE38uLL, "<<<< SampleBuffer >>>>", 0x720, v8, a7, a8);
  }

  else
  {
    v13 = *(a1 + 312);
    if (v13)
    {
      CFDictionaryRemoveValue(v13, cf1);
    }

    v14 = *(a1 + 320);
    if (v14)
    {
      CFDictionaryRemoveValue(v14, cf1);
    }

    return checkCacheKeys(a1, cf1);
  }

  return result;
}

double sBufRemoveAllAttachments(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  if (*(a1 + 25))
  {
    v9 = qword_1EAF1CCE0;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFCE38uLL, "<<<< SampleBuffer >>>>", 0x738, v8, a7, a8);
  }

  else
  {
    v12 = *(a1 + 312);
    if (v12)
    {
      CFRelease(v12);
      *(a1 + 312) = 0;
    }

    v13 = *(a1 + 320);
    if (v13)
    {
      CFRelease(v13);
      *(a1 + 320) = 0;
    }

    return checkCacheKeys(a1, @"TrimDurationAtStart");
  }

  return result;
}

CFDictionaryRef sBufCopyDictionaryOfAttachments(const __CFAllocator *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  if (*(a2 + 25))
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CCE0, 0xFFFFCE38uLL, "<<<< SampleBuffer >>>>", 0x753, v8, a7, a8);
    return 0;
  }

  v10 = 320;
  if (a3 == 1)
  {
    v10 = 312;
  }

  v11 = *(a2 + v10);
  if (!v11)
  {
    return 0;
  }

  return CFDictionaryCreateCopy(a1, v11);
}

uint64_t registerFigSimpleQueueType()
{
  result = _CFRuntimeRegisterClass();
  sFigSimpleQueueID = result;
  return result;
}

CFTypeRef FigSimpleQueueRetain(CFTypeRef cf)
{
  if (cf)
  {
    return CFRetain(cf);
  }

  return cf;
}

void FigSimpleQueueRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

OSStatus CMSimpleQueueCreate(CFAllocatorRef allocator, int32_t capacity, CMSimpleQueueRef *queueOut)
{
  if (capacity && queueOut)
  {
    if (capacity < 0)
    {
      result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE1CuLL, "(Fig)", 0x184, v5, v3, v4);
      v12 = 0;
    }

    else
    {
      v8 = 8 * capacity;
      FigThreadRunOnce(&sRegisterFigSimpleQueueTypeOnce, registerFigSimpleQueueType);
      Instance = _CFRuntimeCreateInstance();
      v12 = Instance;
      if (Instance)
      {
        bzero((Instance + 16), v8 + 24);
        result = 0;
        *(v12 + 4) = capacity;
      }

      else
      {
        result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE1EuLL, "(Fig)", 0x18F, v5, v10, v11);
      }
    }

    goto LABEL_10;
  }

  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE1DuLL, "(Fig)", 0x17F, v5, v3, v4);
  v12 = 0;
  if (queueOut)
  {
LABEL_10:
    *queueOut = v12;
  }

  return result;
}

OSStatus CMSimpleQueueEnqueue(CMSimpleQueueRef queue, const void *element)
{
  if (queue && element)
  {
    v6 = *(queue + 6);
    v7 = (v6 + 1) % (*(queue + 4) + 1);
    if (v7 == *(queue + 5))
    {
      return -12773;
    }

    else
    {
      *(queue + v6 + 4) = element;
      FigMemoryBarrier();
      *(queue + 6) = v7;
      FigMemoryBarrier();
      return 0;
    }
  }

  else
  {

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE1DuLL, "(Fig)", 0x1B3, v4, v2, v3);
  }
}

const void *__cdecl CMSimpleQueueDequeue(CMSimpleQueueRef queue)
{
  if (!queue)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE1DuLL, "(Fig)", 0x1D3, v3, v1, v2);
    return 0;
  }

  v5 = *(queue + 5);
  if (v5 == *(queue + 6))
  {
    return 0;
  }

  v6 = *(queue + v5 + 4);
  v7 = (v5 + 1) % (*(queue + 4) + 1);
  FigMemoryBarrier();
  *(queue + 5) = v7;
  FigMemoryBarrier();
  return v6;
}

const void *__cdecl CMSimpleQueueGetHead(CMSimpleQueueRef queue)
{
  if (queue)
  {
    v4 = *(queue + 5);
    if (v4 == *(queue + 6))
    {
      return 0;
    }

    else
    {
      return *(queue + v4 + 4);
    }
  }

  else
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE1DuLL, "(Fig)", 0x1EA, v3, v1, v2);
    return 0;
  }
}

OSStatus CMSimpleQueueReset(CMSimpleQueueRef queue)
{
  if (!queue)
  {
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE1DuLL, "(Fig)", 0x1FF, v3, v1, v2);
  }

  *(queue + 5) = 0;
  *(queue + 6) = 0;
  return 0;
}

int32_t CMSimpleQueueGetCapacity(CMSimpleQueueRef queue)
{
  if (queue)
  {
    LODWORD(queue) = *(queue + 4);
  }

  return queue;
}

int32_t CMSimpleQueueGetCount(CMSimpleQueueRef queue)
{
  if (queue)
  {
    v1 = queue;
    v2 = *(queue + 5);
    v3 = *(queue + 6);
    LODWORD(queue) = v3 - v2;
    if (v3 != v2 && v3 <= v2)
    {
      LODWORD(queue) = queue + *(v1 + 4) + 1;
    }
  }

  return queue;
}

size_t FigSimpleQueueSetQueueIsFullErrorLoggingEnabled(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE1DuLL, "(Fig)", 0x233, v8, a7, a8);
  }
}

__CFString *simpQCopyDebugDesc(unsigned int *a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  v3 = CFGetRetainCount(a1);
  v4 = CFGetAllocator(a1);
  CFStringAppendFormat(Mutable, 0, @"<CMSimpleQueue %p retainCount: %ld allocator: %p\n", a1, v3, v4);
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  if (v7 <= v6)
  {
    LODWORD(v8) = v5 - v6 + v7 + 1;
  }

  else
  {
    LODWORD(v8) = v7 - v6;
  }

  if (v7 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = v8;
  }

  CFStringAppendFormat(Mutable, 0, @"\tcapacity = %d\n\tcount = %d\n\treadIndex = %d\n\twriteIndex = %d\n", v5, v8, a1[5], v7);
  CFStringAppend(Mutable, @"\telements[readIndex..(writeIndex-1) %% (capacity+1)] = {\n");
  v9 = a1[5];
  if (v9 != a1[6])
  {
    CFStringAppendFormat(Mutable, 0, @"\t\t%p", *&a1[2 * v9 + 8]);
    for (i = (a1[5] + 1) % (a1[4] + 1); i != a1[6]; i = (i + 1) % (a1[4] + 1))
    {
      CFStringAppendFormat(Mutable, 0, @",\n\t\t%p", *&a1[2 * i + 8]);
    }
  }

  CFStringAppendFormat(Mutable, 0, @"}\n>\n");
  return Mutable;
}

size_t FigEndpointStreamStartServer()
{
  v8[0] = 1;
  v8[1] = HandleEndpointStreamRemoteMessage;
  v9 = 0u;
  v10 = 0u;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetInt32(Mutable, @"xpcServerOption_SelfTerminationTimeout", 30, v1, v2, v3, v4, v5);
  v6 = FigXPCServerStart("com.apple.coremedia.endpointstream.xpc", v8, Mutable, &gEndpointStreamServer);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v6;
}

uint64_t FigXPCEndpointStreamServerAssociateNeighborFigEndpointStream(uint64_t a1, CFTypeRef cf, uint64_t a3)
{
  v11 = 0;
  v6 = CFGetTypeID(cf);
  if (v6 != FigEndpointStreamGetTypeID())
  {
    FigXPCEndpointStreamServerAssociateNeighborFigEndpointStream_cold_1(&v12);
    v8 = 0;
    v9 = v12;
    if (!v12)
    {
      return v9;
    }

    goto LABEL_4;
  }

  v7 = CreateEndpointStreamServerState(cf, &v11);
  v8 = v11;
  if (v7)
  {
    v9 = v7;
    goto LABEL_4;
  }

  v9 = FigXPCServerAssociateObjectWithNeighborProcess(gEndpointStreamServer, a1, cf, v11, DisposeEndpointStreamServerState, 0, a3);
  if (v9)
  {
LABEL_4:
    DisposeEndpointStreamServerState(v8);
  }

  return v9;
}

uint64_t CreateEndpointStreamServerState(const void *a1, void *a2)
{
  v4 = malloc_type_calloc(1uLL, 0x18uLL, 0x1020040984C81BBuLL);
  if (v4)
  {
    if (a1)
    {
      v5 = CFRetain(a1);
    }

    else
    {
      v5 = 0;
    }

    result = 0;
    v4[2] = v5;
  }

  else
  {
    CreateEndpointStreamServerState_cold_1(&v7);
    result = v7;
  }

  *a2 = v4;
  return result;
}

void DisposeEndpointStreamServerState(void *a1)
{
  if (a1)
  {
    v2 = a1[1];
    if (v2)
    {
      CFRelease(v2);
      a1[1] = 0;
    }

    v3 = a1[2];
    if (v3)
    {
      CFRelease(v3);
    }

    free(a1);
  }
}

uint64_t FigXPCEndpointStreamServerAssociateCopiedNeighborFigEndpointStream(uint64_t a1, CFTypeRef cf, uint64_t a3)
{
  v11 = 0;
  v6 = CFGetTypeID(cf);
  if (v6 != FigEndpointStreamGetTypeID())
  {
    FigXPCEndpointStreamServerAssociateCopiedNeighborFigEndpointStream_cold_1(&v12);
    v8 = 0;
    v9 = v12;
    if (!v12)
    {
      return v9;
    }

    goto LABEL_4;
  }

  v7 = CreateEndpointStreamServerState(cf, &v11);
  v8 = v11;
  if (v7)
  {
    v9 = v7;
    goto LABEL_4;
  }

  v9 = FigXPCServerAssociateCopiedObjectWithNeighborProcess(gEndpointStreamServer, a1, cf, v11, DisposeEndpointStreamServerState, 0, a3);
  if (v9)
  {
LABEL_4:
    DisposeEndpointStreamServerState(v8);
  }

  return v9;
}

uint64_t FigXPCEndpointStreamServerAssociateCopiedEndpointStreamWithNeighborProcessByPID(uint64_t a1, CFTypeRef cf, uint64_t a3)
{
  v11 = 0;
  v6 = CFGetTypeID(cf);
  if (v6 != FigEndpointStreamGetTypeID())
  {
    FigXPCEndpointStreamServerAssociateCopiedEndpointStreamWithNeighborProcessByPID_cold_1(&v12);
    v8 = 0;
    v9 = v12;
    if (!v12)
    {
      return v9;
    }

    goto LABEL_4;
  }

  v7 = CreateEndpointStreamServerState(cf, &v11);
  v8 = v11;
  if (v7)
  {
    v9 = v7;
    goto LABEL_4;
  }

  v9 = FigXPCServerAssociateCopiedObjectWithNeighborProcessByPID(gEndpointStreamServer, a1, cf, v11, DisposeEndpointStreamServerState, 0, a3);
  if (v9)
  {
LABEL_4:
    DisposeEndpointStreamServerState(v8);
  }

  return v9;
}

uint64_t FigXPCEndpointStreamServerRetainEndpointStreamForID(void *a1, CFTypeRef *a2)
{
  v3 = FigXPCServerRetainNeighborObjectFromID(gEndpointStreamServer, a1, a2);
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    if (*a2)
    {
      v4 = CFGetTypeID(*a2);
      if (v4 == FigEndpointStreamGetTypeID())
      {
        return 0;
      }
    }

    FigXPCEndpointStreamServerRetainEndpointStreamForID_cold_1(&v7);
    v5 = v7;
  }

  if (a2 && v5 && *a2)
  {
    CFRelease(*a2);
    *a2 = 0;
  }

  return v5;
}

void *CreateCompletionCallbackParametersFromMessageAndConnection(void *a1, void *a2)
{
  uint64 = xpc_dictionary_get_uint64(a1, "CompletionID");
  if (!uint64)
  {
    return 0;
  }

  v5 = uint64;
  v6 = malloc_type_calloc(1uLL, 0x18uLL, 0x10200403ED2C137uLL);
  v7 = v6;
  if (v6)
  {
    *v6 = v5;
    v6[1] = xpc_dictionary_get_uint64(a1, ".objectID");
    v7[2] = FigXPCRetain(a2);
  }

  else
  {
    CreateCompletionCallbackParametersFromMessageAndConnection_cold_1();
  }

  return v7;
}

void DestroyCompletionCallbackParameters(xpc_object_t *a1)
{
  if (a1)
  {
    FigXPCRelease(a1[2]);

    free(a1);
  }
}

uint64_t FigEndpointPlaybackSessionGetClassID()
{
  if (_MergedGlobals_10 != -1)
  {
    FigEndpointPlaybackSessionGetClassID_cold_1();
  }

  return qword_1ED4CC488;
}

size_t playbackSession_getClassID(void *a1)
{
  ClassID = CMBaseGetClassID();

  return FigBaseClassRegisterClass(&playbackSession_getClassID_sFigEndpointPlaybackSessionClassDesc, ClassID, 1, a1, v3, v4, v5, v6);
}

uint64_t FigEndpointPlaybackSessionGetTypeID()
{
  if (_MergedGlobals_10 != -1)
  {
    FigEndpointPlaybackSessionGetClassID_cold_1();
  }

  v1 = qword_1ED4CC488;

  return CMBaseClassGetCFTypeID(v1);
}

__CFString *fur_redactURL(void *a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 absoluteString];
  v3 = [v2 lowercaseString];

  if (fur_getSaltForCryptographicHash_sOnceToken != -1)
  {
    fur_redactURL_cold_1();
  }

  v4 = gSaltForCryptographicHash;
  *md = 0;
  v30 = 0;
  v5 = FigDigestMD5Create();
  v6 = [v4 length];
  if (v6)
  {
    if (v5)
    {
      FigDigestMD5AppendData(v5, [v4 bytes], objc_msgSend(v4, "length"));
      FigDigestMD5AppendData(v5, [v3 UTF8String], objc_msgSend(v3, "lengthOfBytesUsingEncoding:", 4));
      FigDigestMD5GetDigest(v5, md);
      v14 = [MEMORY[0x1E695DEF0] dataWithBytes:md length:16];
      v15 = [v14 base64EncodedStringWithOptions:0];
      v16 = [v15 substringToIndex:6];
      v17 = [v16 uppercaseString];

      FigDigestMD5Destroy(v5);
      v18 = [v1 scheme];
      v19 = [v18 lowercaseString];

      v20 = [v1 pathExtension];
      v21 = [v20 lowercaseString];

      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"redacted-%@", v17];
      if ([&unk_1F0B8F5A0 containsObject:v19])
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ // %@", v19, v22];
      }

      else
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"??? // %@", v22, v27];
      }
      v23 = ;

      if ([&unk_1F0B8F5B8 containsObject:v21])
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ // %@", v23, v21];
      }

      else
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ // ???", v23, v28];
      }
      v24 = ;

      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@>", v24];

      goto LABEL_12;
    }

    fur_redactURL_cold_2(v6, v7, v8, v9, v10, v11, v12, v13);
  }

  else
  {
    fur_redactURL_cold_3(0, v7, v8, v9, v10, v11, v12, v13);
  }

  v25 = @"<redacted>";
LABEL_12:

  return v25;
}

void __fur_ensureLoggingInitialized_block_invoke()
{
  v0 = FigNote_AllowInternalDefaultLogs() != 0;
  fig_note_initialize_category_with_default_work_cf(&gFigNoteURLRedaction[1], @"figURLRedaction", @"com.apple.coremedia", "", "com.apple.coremedia", v0, 0, gFigNoteURLRedaction);

  fig_note_initialize_category_with_default_work_cf(algn_1EAF1CD08, @"figURLRedaction", @"com.apple.coremedia", "", "com.apple.coremedia", 1u, 0, &qword_1EAF1CD00);
}

void __fur_getSaltForCryptographicHash_block_invoke()
{
  v1 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:16];
  v2 = [v1 mutableBytes];
  if (SecRandomCopyBytes(*MEMORY[0x1E697B308], 0x10uLL, v2))
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CD00, 0, "<<< FigURLRedaction >>>", 0x4B, v0, v3, v4);
  }

  v5 = gSaltForCryptographicHash;
  gSaltForCryptographicHash = v1;
}

uint64_t FigCreatePathForPersistentURL(void *a1, uint64_t a2)
{
  if (sPUTFunctionsLoadedOnce != -1)
  {
    FigCreatePathForPersistentURL_cold_1();
  }

  if (figPersistentURLIsMediaLibraryURL(a1))
  {
    if (!figPersistentURLCanTranslateUsingMPMediaLibrary())
    {
      return 0;
    }

    v4 = objc_autoreleasePoolPush();
    v5 = [objc_msgSend(getMPMediaLibraryClass() "defaultMediaLibrary")];
    v6 = v5;
    if (v5)
    {
      CFRetain(v5);
    }

    objc_autoreleasePoolPop(v4);
    return v6;
  }

  else
  {
    v7 = sPUTCreatePathForPersistentURL;

    return v7(a1, a2);
  }
}

void *LoadPUTFunctions()
{
  v1 = dlopen("/System/Library/PrivateFrameworks/PhotoLibraryServicesCore.framework/PhotoLibraryServicesCore", 4);
  if (v1)
  {
    v2 = v1;
    sPUTCreatePathForPersistentURL = dlsym(v1, "PUTCreatePathForPersistentURL");
    sPUTCreateSandboxExtensionURLForPersistentURL = dlsym(v2, "PUTCreateSandboxExtensionURLForPersistentURL");
    sPUTIsPersistentURL = dlsym(v2, "PUTIsPersistentURL");
    result = dlsym(v2, "PUTGetCurrentAccessForURLAndToken");
    sPUTGetCurrentAccessForURLAndToken = result;
  }

  else
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFFD66uLL, "<<<< FigPersistentURLTranslation >>>>", 0x88, v0, v5, v6);
  }

  return result;
}

uint64_t figPersistentURLIsMediaLibraryURL(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if ([MEMORY[0x1E695DFF8] instancesRespondToSelector:sel_msv_isValidMediaAssetURL])
  {
    v3 = [a1 msv_isValidMediaAssetURL];
  }

  else
  {
    v3 = 0;
  }

  objc_autoreleasePoolPop(v2);
  return v3;
}

uint64_t FigCreateSecurityScopedFileURLForPersistentURL(void *a1)
{
  if (sPUTFunctionsLoadedOnce != -1)
  {
    FigCreatePathForPersistentURL_cold_1();
  }

  if (figPersistentURLIsMediaLibraryURL(a1))
  {
    if (!figPersistentURLCanTranslateUsingMPMediaLibrary())
    {
      return 0;
    }

    v2 = objc_autoreleasePoolPush();
    v3 = [objc_msgSend(getMPMediaLibraryClass() "defaultMediaLibrary")];
    v4 = v3;
    if (v3)
    {
      CFRetain(v3);
    }

    objc_autoreleasePoolPop(v2);
    return v4;
  }

  else
  {
    v5 = sPUTCreateSandboxExtensionURLForPersistentURL;

    return v5(a1);
  }
}

uint64_t FigIsPersistentURL(const __CFURL *a1)
{
  v2 = CFURLCopyScheme(a1);
  if (!v2)
  {
    goto LABEL_5;
  }

  v3 = v2;
  if (CFStringCompare(v2, @"file", 1uLL) == kCFCompareEqualTo || CFStringCompare(v3, @"http", 1uLL) == kCFCompareEqualTo)
  {
    CFRelease(v3);
    return 0;
  }

  v4 = CFStringCompare(v3, @"https", 1uLL);
  CFRelease(v3);
  if (v4 == kCFCompareEqualTo)
  {
    return 0;
  }

LABEL_5:
  if (sPUTFunctionsLoadedOnce != -1)
  {
    FigCreatePathForPersistentURL_cold_1();
  }

  if (sPUTIsPersistentURL(a1))
  {
    return 1;
  }

  result = figPersistentURLIsMediaLibraryURL(a1);
  if (result)
  {
    return 1;
  }

  return result;
}

BOOL FigMayAccessPersistentURLOnBehalfOfClientWithAuditToken(void *a1, _OWORD *a2)
{
  if (sPUTFunctionsLoadedOnce != -1)
  {
    FigCreatePathForPersistentURL_cold_1();
  }

  if (figPersistentURLIsMediaLibraryURL(a1))
  {
    return 1;
  }

  v5 = a2[1];
  v6[0] = *a2;
  v6[1] = v5;
  return sPUTGetCurrentAccessForURLAndToken(a1, v6) == 2;
}

uint64_t figPersistentURLCanTranslateUsingMPMediaLibrary()
{
  result = [MEMORY[0x1E695DFF8] instancesRespondToSelector:sel_msv_isValidMediaAssetURL];
  if (result)
  {
    return MediaPlayerLibraryCore() != 0;
  }

  return result;
}

uint64_t getMPMediaLibraryClass()
{
  v2 = 0;
  v3 = &v2;
  v4 = 0x3052000000;
  v5 = __Block_byref_object_copy__0;
  v0 = getMPMediaLibraryClass_softClass;
  v6 = __Block_byref_object_dispose__0;
  v7 = getMPMediaLibraryClass_softClass;
  if (!getMPMediaLibraryClass_softClass)
  {
    MediaPlayerLibraryCore();
    v3[5] = objc_getClass("MPMediaLibrary");
    getMPMediaLibraryClass_softClass = v3[5];
    v0 = v3[5];
  }

  _Block_object_dispose(&v2, 8);
  return v0;
}

void sub_196FD5990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t MediaPlayerLibraryCore()
{
  if (!MediaPlayerLibraryCore_frameworkLibrary)
  {
    MediaPlayerLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  return MediaPlayerLibraryCore_frameworkLibrary;
}

uint64_t __MediaPlayerLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getMPMediaLibraryClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibraryCore();
  result = objc_getClass("MPMediaLibrary");
  *(*(*(a1 + 32) + 8) + 40) = result;
  getMPMediaLibraryClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

double FigGeometryDimensionMakeMirrored(uint64_t a1, int a2)
{
  result = -*&a1;
  if (a2 == 622862368)
  {
    return 100.0 - *&a1;
  }

  return result;
}

uint64_t FigGeometryPointMake@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t FigGeometrySizeMake@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t FigGeometryVectorMake@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t FigGeometryRectMake@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  return result;
}

uint64_t FigGeometryPointMakeZeroedPoint@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 8) | 0x100000000;
  *a2 = 0;
  a2[1] = v2;
  v3 = *(result + 24) | 0x100000000;
  a2[2] = 0;
  a2[3] = v3;
  return result;
}

uint64_t FigGeometrySizeMakeZeroedSize@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 8) | 0x100000000;
  *a2 = 0;
  a2[1] = v2;
  v3 = *(result + 24) | 0x100000000;
  a2[2] = 0;
  a2[3] = v3;
  return result;
}

uint64_t FigGeometryVectorMakeZeroedVector@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 8) | 0x100000000;
  *a2 = 0;
  a2[1] = v2;
  v3 = *(result + 24) | 0x100000000;
  a2[2] = 0;
  a2[3] = v3;
  return result;
}

unsigned int *FigGeometryRectMakeZeroedRect@<X0>(unsigned int *result@<X0>, void *a2@<X8>)
{
  v2 = result[2] | 0x100000000;
  v3 = result[6] | 0x100000000;
  *a2 = 0;
  a2[1] = v2;
  a2[2] = 0;
  a2[3] = v3;
  v4 = result[10] | 0x100000000;
  v5 = result[14] | 0x100000000;
  a2[4] = 0;
  a2[5] = v4;
  a2[6] = 0;
  a2[7] = v5;
  return result;
}

__n128 FigGeometryPointMakeFromPointAndReferenceUnits@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = *a1;
  v4 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v4;
  *(a3 + 8) = *(a2 + 8);
  *(a3 + 24) = *(a2 + 24);
  return result;
}

__n128 FigGeometrySizeMakeFromSizeAndReferenceUnits@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = *a1;
  v4 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v4;
  *(a3 + 8) = *(a2 + 8);
  *(a3 + 24) = *(a2 + 24);
  return result;
}

__n128 FigGeometryVectorMakeFromVectorAndReferenceUnits@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = *a1;
  v4 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v4;
  *(a3 + 8) = *(a2 + 8);
  *(a3 + 24) = *(a2 + 24);
  return result;
}

double FigGeometryRectMakeFromRectAndReferenceUnits@<D0>(uint64_t *a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a1;
  *(a3 + 12) = *(a1 + 12);
  v4 = *(a1 + 5);
  v5 = *(a1 + 7);
  *(a3 + 8) = a2[2];
  v6 = a2[6];
  *a3 = v3;
  *(a3 + 20) = v4;
  *(a3 + 24) = v6;
  *(a3 + 28) = v5;
  result = *(a1 + 4);
  v8 = *(a1 + 13);
  *(a3 + 44) = *(a1 + 44);
  v9 = *(a1 + 15);
  v10 = a2[10];
  v11 = a2[14];
  *(a3 + 32) = result;
  *(a3 + 40) = v10;
  *(a3 + 52) = v8;
  *(a3 + 56) = v11;
  *(a3 + 60) = v9;
  return result;
}

BOOL FigGeometryPointEqualToPoint(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if ((v3 ^ v2) >> 32)
  {
    return 0;
  }

  if (v2 != v3 || *a1 != *a2)
  {
    return 0;
  }

  v5 = *(a1 + 24);
  v6 = *(a2 + 24);
  if ((v6 ^ v5) >> 32)
  {
    return 0;
  }

  return *(a1 + 16) == *(a2 + 16) && v5 == v6;
}

BOOL FigGeometrySizeEqualToSize(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if ((v3 ^ v2) >> 32)
  {
    return 0;
  }

  if (v2 != v3 || *a1 != *a2)
  {
    return 0;
  }

  v5 = *(a1 + 24);
  v6 = *(a2 + 24);
  if ((v6 ^ v5) >> 32)
  {
    return 0;
  }

  return *(a1 + 16) == *(a2 + 16) && v5 == v6;
}

BOOL FigGeometryVectorEqualToVector(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if ((v3 ^ v2) >> 32)
  {
    return 0;
  }

  if (v2 != v3 || *a1 != *a2)
  {
    return 0;
  }

  v5 = *(a1 + 24);
  v6 = *(a2 + 24);
  if ((v6 ^ v5) >> 32)
  {
    return 0;
  }

  return *(a1 + 16) == *(a2 + 16) && v5 == v6;
}

BOOL FigGeometryRectEqualToRect(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if ((v3 ^ v2) >> 32)
  {
    return 0;
  }

  v4 = *(a1 + 24);
  v5 = *(a2 + 24);
  v6 = v2 == v3 && *a1 == *a2;
  if (!v6 || (v5 ^ v4) >> 32 != 0)
  {
    return 0;
  }

  if (v4 != v5 || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v9 = *(a1 + 40);
  v10 = *(a2 + 40);
  v11 = (v10 ^ v9) >> 32;
  if (v11)
  {
    return 0;
  }

  if (v9 == v10)
  {
    v12 = *(a1 + 56);
    v13 = *(a2 + 56);
    if (*(a1 + 32) == *(a2 + 32) && (v13 ^ v12) >> 32 == 0)
    {
      return *(a1 + 48) == *(a2 + 48) && v12 == v13;
    }
  }

  return v11;
}

__CFString *FigGeometryDimensionCopyDescription(const __CFAllocator *a1, uint64_t a2, unint64_t a3)
{
  Mutable = CFStringCreateMutable(a1, 0);
  v6 = Mutable;
  if (Mutable)
  {
    if ((a3 & 0x100000000) != 0)
    {
      if ((a3 & 0x1000000000) != 0)
      {
        v10 = &off_1E749E6E8;
        v11 = 13;
        v12 = "<missing>";
        while (*(v10 - 2) != a3)
        {
          v10 += 2;
          if (!--v11)
          {
            goto LABEL_16;
          }
        }

        v12 = *v10;
LABEL_16:
        CFStringAppendFormat(Mutable, 0, @"{INDEFINITE}%s", v12);
      }

      else if ((a3 & 0x400000000) != 0)
      {
        v13 = &off_1E749E6E8;
        v14 = 13;
        v15 = "<missing>";
        while (*(v13 - 2) != a3)
        {
          v13 += 2;
          if (!--v14)
          {
            goto LABEL_22;
          }
        }

        v15 = *v13;
LABEL_22:
        CFStringAppendFormat(Mutable, 0, @"{+INFINITY}%s", v15);
      }

      else if ((a3 & 0x800000000) != 0)
      {
        v16 = &off_1E749E6E8;
        v17 = 13;
        v18 = "<missing>";
        while (*(v16 - 2) != a3)
        {
          v16 += 2;
          if (!--v17)
          {
            goto LABEL_35;
          }
        }

        v18 = *v16;
LABEL_35:
        CFStringAppendFormat(Mutable, 0, @"{-INFINITY}%s", v18);
      }

      else
      {
        v7 = &off_1E749E6E8;
        v8 = 13;
        v9 = "<missing>";
        while (*(v7 - 2) != a3)
        {
          v7 += 2;
          if (!--v8)
          {
            goto LABEL_28;
          }
        }

        v9 = *v7;
LABEL_28:
        CFStringAppendFormat(Mutable, 0, @"%0.2f%s", a2, v9);
        if ((a3 & 0x200000000) != 0)
        {
          CFStringAppendFormat(v6, 0, @"<rounded>");
        }

        if ((a3 & 0x2000000000) != 0)
        {
          CFStringAppendFormat(v6, 0, @"<reversed>");
        }

        if (a3 >> 38)
        {
          CFStringAppendFormat(v6, 0, @"<flags=0x%08x>", HIDWORD(a3));
        }
      }
    }

    else
    {
      CFStringAppendFormat(Mutable, 0, @"{INVALID}");
    }
  }

  return v6;
}

__CFString *FigGeometryPointCopyDescription(const __CFAllocator *a1, uint64_t a2)
{
  Mutable = CFStringCreateMutable(a1, 0);
  v5 = FigGeometryDimensionCopyDescription(a1, *a2, *(a2 + 8));
  v6 = FigGeometryDimensionCopyDescription(a1, *(a2 + 16), *(a2 + 24));
  v7 = v6;
  if (!Mutable || (v5 ? (v8 = v6 == 0) : (v8 = 1), v8))
  {
    if (!v5)
    {
      goto LABEL_9;
    }
  }

  else
  {
    CFStringAppendFormat(Mutable, 0, @"(%@, %@)", v5, v6);
  }

  CFRelease(v5);
LABEL_9:
  if (v7)
  {
    CFRelease(v7);
  }

  return Mutable;
}

__CFString *FigGeometrySizeCopyDescription(const __CFAllocator *a1, uint64_t a2)
{
  Mutable = CFStringCreateMutable(a1, 0);
  v5 = FigGeometryDimensionCopyDescription(a1, *a2, *(a2 + 8));
  v6 = FigGeometryDimensionCopyDescription(a1, *(a2 + 16), *(a2 + 24));
  v7 = v6;
  if (!Mutable || (v5 ? (v8 = v6 == 0) : (v8 = 1), v8))
  {
    if (!v5)
    {
      goto LABEL_9;
    }
  }

  else
  {
    CFStringAppendFormat(Mutable, 0, @"(%@, %@)", v5, v6);
  }

  CFRelease(v5);
LABEL_9:
  if (v7)
  {
    CFRelease(v7);
  }

  return Mutable;
}

__CFString *FigGeometryVectorCopyDescription(const __CFAllocator *a1, uint64_t a2)
{
  Mutable = CFStringCreateMutable(a1, 0);
  v5 = FigGeometryDimensionCopyDescription(a1, *a2, *(a2 + 8));
  v6 = FigGeometryDimensionCopyDescription(a1, *(a2 + 16), *(a2 + 24));
  v7 = v6;
  if (!Mutable || (v5 ? (v8 = v6 == 0) : (v8 = 1), v8))
  {
    if (!v5)
    {
      goto LABEL_9;
    }
  }

  else
  {
    CFStringAppendFormat(Mutable, 0, @"<%@, %@>", v5, v6);
  }

  CFRelease(v5);
LABEL_9:
  if (v7)
  {
    CFRelease(v7);
  }

  return Mutable;
}

__CFString *FigGeometryRectCopyDescription(const __CFAllocator *a1, __int128 *a2)
{
  Mutable = CFStringCreateMutable(a1, 0);
  v5 = a2[1];
  v11 = *a2;
  v12 = v5;
  v6 = FigGeometryPointCopyDescription(a1, &v11);
  v7 = a2[3];
  v11 = a2[2];
  v12 = v7;
  v8 = FigGeometrySizeCopyDescription(a1, &v11);
  v9 = v8;
  if (Mutable && v6 && v8)
  {
    CFStringAppendFormat(Mutable, 0, @"{origin:%@, size:%@}", v6, v8);
  }

  else if (!v6)
  {
    goto LABEL_7;
  }

  CFRelease(v6);
LABEL_7:
  if (v9)
  {
    CFRelease(v9);
  }

  return Mutable;
}

_OWORD *FigGeometryPointMakeFromCGPointAndReferenceUnits@<X0>(_OWORD *result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  *a2 = *result;
  *(a2 + 12) = *(result + 12);
  *a2 = a3;
  *(a2 + 12) = 1;
  *(a2 + 16) = a4;
  *(a2 + 28) = 1;
  return result;
}

_OWORD *FigGeometrySizeMakeFromCGSizeAndReferenceUnits@<X0>(_OWORD *result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  *a2 = *result;
  *(a2 + 12) = *(result + 12);
  *a2 = a3;
  *(a2 + 12) = 1;
  *(a2 + 16) = a4;
  *(a2 + 28) = 1;
  return result;
}

_OWORD *FigGeometryVectorMakeFromCGVectorAndReferenceUnits@<X0>(_OWORD *result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  *a2 = *result;
  *(a2 + 12) = *(result + 12);
  *a2 = a3;
  *(a2 + 12) = 1;
  *(a2 + 16) = a4;
  *(a2 + 28) = 1;
  return result;
}

_DWORD *FigGeometryRectMakeFromCGRectAndReferenceUnits@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v6 = result[2];
  v7 = result[6];
  *a2 = a3;
  *(a2 + 8) = v6;
  *(a2 + 12) = 1;
  *(a2 + 16) = a4;
  *(a2 + 24) = v7;
  *(a2 + 28) = 1;
  v8 = result[10];
  v9 = result[14];
  *(a2 + 32) = a5;
  *(a2 + 40) = v8;
  *(a2 + 44) = 1;
  *(a2 + 48) = a6;
  *(a2 + 56) = v9;
  *(a2 + 60) = 1;
  return result;
}

CFDictionaryRef FigGeometryDimensionCopyAsDictionary(uint64_t a1, uint64_t a2, const __CFAllocator *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  valuePtr = a1;
  v10 = a2;
  *keys = xmmword_1E749E688;
  v13 = @"flags";
  v4 = *MEMORY[0x1E695E480];
  values[0] = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberCGFloatType, &valuePtr);
  values[1] = CFNumberCreate(v4, kCFNumberSInt32Type, &v10);
  values[2] = CFNumberCreate(v4, kCFNumberSInt32Type, &v10 + 4);
  v5 = CFDictionaryCreate(a3, keys, values, 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  for (i = 0; i != 3; ++i)
  {
    v7 = values[i];
    if (v7)
    {
      CFRelease(v7);
    }
  }

  return v5;
}

CFDictionaryRef FigGeometryPointCopyAsDictionary(uint64_t *a1, const __CFAllocator *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = FigGeometryDimensionCopyAsDictionary(*a1, a1[1], a2);
  v5 = FigGeometryDimensionCopyAsDictionary(a1[2], a1[3], a2);
  v6 = v5;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    *keys = xmmword_1E749E6A0;
    v11[0] = v4;
    v11[1] = v5;
    v10 = CFDictionaryCreate(a2, keys, v11, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    goto LABEL_10;
  }

  v10 = 0;
  v8 = 0;
  if (v4)
  {
LABEL_10:
    CFRelease(v4);
    v8 = v10;
    if (!v6)
    {
      return v8;
    }

    goto LABEL_8;
  }

  if (v5)
  {
LABEL_8:
    CFRelease(v6);
  }

  return v8;
}

CFDictionaryRef FigGeometrySizeCopyAsDictionary(uint64_t *a1, const __CFAllocator *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = FigGeometryDimensionCopyAsDictionary(*a1, a1[1], a2);
  v5 = FigGeometryDimensionCopyAsDictionary(a1[2], a1[3], a2);
  v6 = v5;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    *keys = xmmword_1E749E6B0;
    v11[0] = v4;
    v11[1] = v5;
    v10 = CFDictionaryCreate(a2, keys, v11, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    goto LABEL_10;
  }

  v10 = 0;
  v8 = 0;
  if (v4)
  {
LABEL_10:
    CFRelease(v4);
    v8 = v10;
    if (!v6)
    {
      return v8;
    }

    goto LABEL_8;
  }

  if (v5)
  {
LABEL_8:
    CFRelease(v6);
  }

  return v8;
}

CFDictionaryRef FigGeometryVectorCopyAsDictionary(uint64_t *a1, const __CFAllocator *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = FigGeometryDimensionCopyAsDictionary(*a1, a1[1], a2);
  v5 = FigGeometryDimensionCopyAsDictionary(a1[2], a1[3], a2);
  v6 = v5;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    *keys = xmmword_1E749E6C0;
    v11[0] = v4;
    v11[1] = v5;
    v10 = CFDictionaryCreate(a2, keys, v11, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    goto LABEL_10;
  }

  v10 = 0;
  v8 = 0;
  if (v4)
  {
LABEL_10:
    CFRelease(v4);
    v8 = v10;
    if (!v6)
    {
      return v8;
    }

    goto LABEL_8;
  }

  if (v5)
  {
LABEL_8:
    CFRelease(v6);
  }

  return v8;
}

CFDictionaryRef FigGeometryRectCopyAsDictionary(_OWORD *a1, const __CFAllocator *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a1[1];
  *keys = *a1;
  v14 = v4;
  v5 = FigGeometryPointCopyAsDictionary(keys, a2);
  v6 = a1[3];
  *keys = a1[2];
  v14 = v6;
  v7 = FigGeometrySizeCopyAsDictionary(keys, a2);
  v8 = v7;
  if (v5 && v7)
  {
    *keys = xmmword_1E749E6D0;
    v12[0] = v5;
    v12[1] = v7;
    v9 = CFDictionaryCreate(a2, keys, v12, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  else
  {
    v9 = 0;
    v10 = 0;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  CFRelease(v5);
  v10 = v9;
LABEL_6:
  if (v8)
  {
    CFRelease(v8);
  }

  return v10;
}

double OUTLINED_FUNCTION_0_14@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return FigGeometryDimensionMakeFromDictionary(a9);
}

CFTypeID OUTLINED_FUNCTION_2_4(CFTypeRef cf)
{

  return CFGetTypeID(cf);
}

uint64_t _FigEndpointStreamAudioFormatDescriptionCopyXPCObject(uint64_t a1, void *a2)
{
  if (!a1)
  {
    _FigEndpointStreamAudioFormatDescriptionCopyXPCObject_cold_3(v16);
    return LODWORD(v16[0]);
  }

  if (!a2)
  {
    _FigEndpointStreamAudioFormatDescriptionCopyXPCObject_cold_2(v16);
    return LODWORD(v16[0]);
  }

  ASBD = FigEndpointStreamAudioFormatDescriptionGetASBD(a1);
  v5 = *(ASBD + 32);
  v6 = *(ASBD + 16);
  v16[0] = *ASBD;
  v16[1] = v6;
  v17 = v5;
  ChannelLayoutTag = FigEndpointStreamAudioFormatDescriptionGetChannelLayoutTag(a1);
  v7 = xpc_data_create(v16, 0x2CuLL);
  *a2 = v7;
  if (v7)
  {
    return 0;
  }

  _FigEndpointStreamAudioFormatDescriptionCopyXPCObject_cold_1(&v19, v8, v9, v10, v11, v12, v13, v14);
  return v19;
}

xpc_object_t FigXPCMessageCopyFigEndpointStreamAudioFormatDescription(uint64_t a1, xpc_object_t xdict, char *key, uint64_t *a4)
{
  if (xdict)
  {
    if (key)
    {
      if (a4)
      {
        result = xpc_dictionary_get_value(xdict, key);
        if (result)
        {

          return _FigEndpointStreamAudioFormatDescriptionCreateWithXPCObject(a1, result, a4);
        }

        else
        {
          *a4 = 0;
        }
      }

      else
      {
        FigXPCMessageCopyFigEndpointStreamAudioFormatDescription_cold_1(&v7);
        return v7;
      }
    }

    else
    {
      FigXPCMessageCopyFigEndpointStreamAudioFormatDescription_cold_2(&v8);
      return v8;
    }
  }

  else
  {
    FigXPCMessageCopyFigEndpointStreamAudioFormatDescription_cold_3(&v9);
    return v9;
  }

  return result;
}