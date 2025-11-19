CFMutableDictionaryRef VTCopyDecoderCapabilitiesDictionaryForCodecTypes(uint64_t a1)
{
  v2 = *MEMORY[0x1E695E480];
  v3 = MEMORY[0x1E695E9D8];
  v4 = MEMORY[0x1E695E9E8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v6 = CFDictionaryCreateMutable(v2, 0, v3, v4);
  IsHDRAllowedOnDevice = FigIsHDRAllowedOnDevice();
  MutableCopy = FigCFArrayCreateMutableCopy();
  UInt32 = FigCFNumberCreateUInt32();
  v10 = FigCFNumberCreateUInt32();
  v11 = v10;
  if (a1)
  {
    if (UInt32)
    {
      if (v10)
      {
        if (FigCFArrayContainsValue() && !FigCFArrayContainsValue())
        {
          CFArrayAppendValue(MutableCopy, v11);
        }

        v12 = 0;
LABEL_8:
        CFRelease(UInt32);
        goto LABEL_9;
      }

      VTCopyDecoderCapabilitiesDictionaryForCodecTypes_cold_1(&v22);
    }

    else
    {
      VTCopyDecoderCapabilitiesDictionaryForCodecTypes_cold_2(&v22);
    }
  }

  else
  {
    VTCopyDecoderCapabilitiesDictionaryForCodecTypes_cold_3(&v22);
  }

  v12 = v22;
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  MutableCopy = 0;
  if (UInt32)
  {
    goto LABEL_8;
  }

LABEL_9:
  if (v11)
  {
    CFRelease(v11);
  }

  if (v12)
  {
    v21 = 1;
LABEL_38:
    if (v21 && Mutable)
    {
      CFRelease(Mutable);
      Mutable = 0;
    }

LABEL_23:
    if (!v6)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if (!Mutable)
  {
    VTCopyDecoderCapabilitiesDictionaryForCodecTypes_cold_5();
    goto LABEL_23;
  }

  if (!v6)
  {
    VTCopyDecoderCapabilitiesDictionaryForCodecTypes_cold_4(&v22);
    v21 = v22;
    goto LABEL_38;
  }

  v13 = MEMORY[0x1E695E4C0];
  if (IsHDRAllowedOnDevice)
  {
    v13 = MEMORY[0x1E695E4D0];
  }

  CFDictionarySetValue(Mutable, @"VTIsHDRAllowedOnDevice", *v13);
  CFDictionarySetValue(Mutable, @"VTCodecSupportDict", v6);
  Count = CFArrayGetCount(MutableCopy);
  if (Count >= 1)
  {
    v15 = Count;
    for (i = 0; i != v15; ++i)
    {
      v22 = 0;
      FigCFArrayGetIntAtIndex();
      DecoderCapabilitiesDictionary = vtCreateDecoderCapabilitiesDictionary(v22, 0);
      if (DecoderCapabilitiesDictionary)
      {
        v18 = DecoderCapabilitiesDictionary;
        StringFromCodecType = vtCreateStringFromCodecType(v22);
        CFDictionarySetValue(v6, StringFromCodecType, v18);
        if (StringFromCodecType)
        {
          CFRelease(StringFromCodecType);
        }

        CFRelease(v18);
      }
    }

    goto LABEL_23;
  }

LABEL_24:
  CFRelease(v6);
LABEL_25:
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  return Mutable;
}

CFStringRef vtCreateStringFromCodecType(unsigned int a1)
{
  v2 = HIBYTE(a1);
  v3 = MEMORY[0x1E69E9830];
  if ((a1 & 0x80000000) != 0)
  {
    v4 = __maskrune(HIBYTE(a1), 0x40000uLL);
  }

  else
  {
    v4 = *(MEMORY[0x1E69E9830] + 4 * v2 + 60) & 0x40000;
  }

  if (BYTE2(a1) > 0x7Fu)
  {
    v5 = __maskrune(BYTE2(a1), 0x40000uLL);
  }

  else
  {
    v5 = *(v3 + 4 * BYTE2(a1) + 60) & 0x40000;
  }

  if (BYTE1(a1) > 0x7Fu)
  {
    v6 = __maskrune(BYTE1(a1), 0x40000uLL);
  }

  else
  {
    v6 = *(v3 + 4 * BYTE1(a1) + 60) & 0x40000;
  }

  if (a1 > 0x7Fu)
  {
    v7 = __maskrune(a1, 0x40000uLL);
  }

  else
  {
    v7 = *(v3 + 4 * a1 + 60) & 0x40000;
  }

  if (v6)
  {
    v8 = BYTE1(a1);
  }

  else
  {
    v8 = 46;
  }

  if (v5)
  {
    v9 = BYTE2(a1);
  }

  else
  {
    v9 = 46;
  }

  if (v4)
  {
    v10 = v2;
  }

  else
  {
    v10 = 46;
  }

  if (v7)
  {
    v11 = a1;
  }

  else
  {
    v11 = 46;
  }

  snprintf(__str, 5uLL, "%c%c%c%c", v10, v9, v8, v11);
  return CFStringCreateWithCString(*MEMORY[0x1E695E480], __str, 0x8000100u);
}

void *VTCopyHEVCDecoderCapabilitiesDictionary()
{
  DecoderCapabilitiesDictionary = vtCreateDecoderCapabilitiesDictionary(1752589105, 0);
  v1 = vtCreateDecoderCapabilitiesDictionary(1685481521, 0);
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  CFDictionaryApplyFunction(v1, vtDictionarySetValue, MutableCopy);
  if (DecoderCapabilitiesDictionary)
  {
    CFRelease(DecoderCapabilitiesDictionary);
  }

  if (v1)
  {
    CFRelease(v1);
  }

  return MutableCopy;
}

uint64_t VTGetHEVCCapabilitesForFormatDescription(CMFormatDescriptionRef desc, const __CFDictionary *a2, unint64_t a3, unint64_t a4)
{
  v13 = 0;
  if (!(a3 | a4))
  {
    VTGetHEVCCapabilitesForFormatDescription_cold_4(&v14);
    return v14;
  }

  if (!desc)
  {
    VTGetHEVCCapabilitesForFormatDescription_cold_3(&v14);
LABEL_46:
    result = v14;
    goto LABEL_35;
  }

  if (!a2)
  {
    VTGetHEVCCapabilitesForFormatDescription_cold_2(&v14);
    goto LABEL_46;
  }

  if (CMFormatDescriptionGetMediaType(desc) != 1986618469)
  {
    VTGetHEVCCapabilitesForFormatDescription_cold_1(&v14);
    goto LABEL_46;
  }

  MediaSubType = CMFormatDescriptionGetMediaSubType(desc);
  if (MediaSubType <= 1752589104)
  {
    if (MediaSubType > 1685481572)
    {
      if (MediaSubType > 1718908527)
      {
        if (MediaSubType == 1718908528)
        {
          goto LABEL_31;
        }

        v9 = 1751479857;
      }

      else
      {
        if (MediaSubType == 1685481573)
        {
          goto LABEL_31;
        }

        v9 = 1718908520;
      }
    }

    else if (MediaSubType > 1684895095)
    {
      if (MediaSubType == 1684895096)
      {
        goto LABEL_31;
      }

      v9 = 1685481521;
    }

    else
    {
      if (MediaSubType == 1667524657)
      {
        goto LABEL_31;
      }

      v9 = 1667790435;
    }

    goto LABEL_30;
  }

  if (MediaSubType <= 1902405732)
  {
    if (MediaSubType <= 1869117026)
    {
      if (MediaSubType == 1752589105)
      {
        goto LABEL_31;
      }

      v9 = 1836415073;
      goto LABEL_30;
    }

    if (MediaSubType == 1869117027)
    {
      goto LABEL_31;
    }

    v10 = 26673;
    goto LABEL_29;
  }

  if (MediaSubType <= 1902667125)
  {
    if (MediaSubType == 1902405733)
    {
      goto LABEL_31;
    }

    v10 = 28024;
LABEL_29:
    v9 = v10 | 0x71640000;
    goto LABEL_30;
  }

  if (MediaSubType == 1902667126 || MediaSubType == 1902671459)
  {
    goto LABEL_31;
  }

  v9 = 1902998904;
LABEL_30:
  if (MediaSubType != v9)
  {
    fig_log_get_emitter();
    result = FigSignalErrorAtGM();
    goto LABEL_35;
  }

LABEL_31:
  Value = CFDictionaryGetValue(a2, @"VTIsHDRAllowedOnDevice");
  if (CMVideoFormatDescriptionGetVideoDynamicRange() - 11 < 0xFFFFFFF7 || Value && !FigCFEqual())
  {
    result = vtGetHEVCDecoderCapabilitiesForFormatDescription(desc, a2, &v13 + 1, &v13);
  }

  else
  {
    result = 0;
  }

LABEL_35:
  if (a3)
  {
    *a3 = HIBYTE(v13);
  }

  if (a4)
  {
    *a4 = v13;
  }

  return result;
}

uint64_t VTGetDecoderCapabilitesForFormatDescription(CMFormatDescriptionRef desc, const __CFDictionary *a2, unint64_t a3, unint64_t a4)
{
  v15 = 0;
  if (!(a3 | a4))
  {
    VTGetDecoderCapabilitesForFormatDescription_cold_4(&v16);
    return v16;
  }

  if (!desc)
  {
    VTGetDecoderCapabilitesForFormatDescription_cold_3(&v16);
LABEL_38:
    result = v16;
    goto LABEL_28;
  }

  if (!a2)
  {
    VTGetDecoderCapabilitesForFormatDescription_cold_2(&v16);
    goto LABEL_38;
  }

  if (CMFormatDescriptionGetMediaType(desc) != 1986618469)
  {
    VTGetDecoderCapabilitesForFormatDescription_cold_1(&v16);
    goto LABEL_38;
  }

  MediaSubType = CMFormatDescriptionGetMediaSubType(desc);
  Value = CFDictionaryGetValue(a2, @"VTIsHDRAllowedOnDevice");
  if (CMVideoFormatDescriptionGetVideoDynamicRange() - 11 < 0xFFFFFFF7 || Value && !FigCFEqual())
  {
    v10 = CFDictionaryGetValue(a2, @"VTCodecSupportDict");
    if (v10)
    {
      StringFromCodecType = vtCreateStringFromCodecType(MediaSubType);
      v12 = CFDictionaryGetValue(v10, StringFromCodecType);
      if (StringFromCodecType)
      {
        CFRelease(StringFromCodecType);
      }
    }

    else
    {
      v12 = 0;
    }

    if (MediaSubType > 1635135536)
    {
      if (MediaSubType != 1635135537)
      {
        if (MediaSubType != 1752589105)
        {
          if (MediaSubType != 1685481521)
          {
LABEL_27:
            fig_log_get_emitter();
            result = FigSignalErrorAtGM();
            goto LABEL_28;
          }

          if (v10)
          {
            v14 = vtCreateStringFromCodecType(0x68766331u);
            v12 = CFDictionaryGetValue(v10, v14);
            if (v14)
            {
              CFRelease(v14);
            }
          }
        }

        if (v12)
        {
          result = vtGetHEVCDecoderCapabilitiesForFormatDescription(desc, v12, &v15 + 1, &v15);
        }

        else
        {
          result = VTGetHEVCCapabilitesForFormatDescription(desc, a2, &v15 + 1, &v15);
        }

        goto LABEL_28;
      }
    }

    else if (((MediaSubType - 1634755432) > 0xB || ((1 << (MediaSubType - 104)) & 0x8C1) == 0) && MediaSubType != 1634743400 && MediaSubType != 1634743416)
    {
      goto LABEL_27;
    }

    result = 0;
    HIBYTE(v15) = v12 != 0;
    LOBYTE(v15) = v12 != 0;
    goto LABEL_28;
  }

  result = 0;
LABEL_28:
  if (a3)
  {
    *a3 = HIBYTE(v15);
  }

  if (a4)
  {
    *a4 = v15;
  }

  return result;
}

BOOL VTIsSecTaskEntitledForSpecifyingVP9Decode(__SecTask *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = SecTaskCopyValueForEntitlement(a1, @"com.apple.coremedia.allow-specifying-alternate-video-decoder-selection", 0);
  v2 = v1 == *MEMORY[0x1E695E4D0];
  if (v1)
  {
    CFRelease(v1);
  }

  return v2;
}

uint64_t VTIsSecTaskEntitledForVP9Decode(SecTaskRef task)
{
  v1 = task;
  if (task)
  {
    v2 = SecTaskCopyValueForEntitlement(task, @"com.apple.developer.coremedia.allow-alternate-video-decoder-selection", 0);
    if (!v2)
    {
      v2 = SecTaskCopyValueForEntitlement(v1, @"com.apple.coremedia.allow-alternate-video-decoder-selection", 0);
    }

    if (v2 != *MEMORY[0x1E695E4D0] && !FigIsSecTaskGPUExtensionOfBrowserEngine())
    {
      v1 = 0;
      if (!v2)
      {
        return v1;
      }

      goto LABEL_7;
    }

    v1 = 1;
    if (v2)
    {
LABEL_7:
      CFRelease(v2);
    }
  }

  return v1;
}

uint64_t VTIsMVHEVCWithAlphaDecodingEnabledViaDefaults()
{
  if (VTIsMVHEVCWithAlphaDecodingEnabledViaDefaults_mvhevcWithAlphaCheckOnce != -1)
  {
    VTIsMVHEVCWithAlphaDecodingEnabledViaDefaults_cold_1();
  }

  return VTIsMVHEVCWithAlphaDecodingEnabledViaDefaults_enableMVHEVCWithAlphaDecoding;
}

uint64_t __VTIsMVHEVCWithAlphaDecodingEnabledViaDefaults_block_invoke()
{
  result = FigGetCFPreferenceNumberWithDefault();
  if (result == 44524)
  {
    VTIsMVHEVCWithAlphaDecodingEnabledViaDefaults_enableMVHEVCWithAlphaDecoding = 1;
  }

  return result;
}

uint64_t vtIsHardwareCodecAvailable(int a1, CFArrayRef theArray)
{
  if (!theArray)
  {
    return 0;
  }

  Count = CFArrayGetCount(theArray);
  if (Count >= 1)
  {
    v4 = Count;
    for (i = 0; i != v4; ++i)
    {
      CFArrayGetValueAtIndex(theArray, i);
      FigCFDictionaryGetBooleanIfPresent();
    }
  }

  return 0;
}

CFMutableDictionaryRef OUTLINED_FUNCTION_3_7()
{

  return CFDictionaryCreateMutable(v0, 0, v1, v2);
}

uint64_t SRSEnhancementFilter_Invalidate()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 82) = 1;
  SRSEnhancementFilter_CompleteFrames();
  v1 = *(DerivedStorage + 88);
  if (v1)
  {
    dispatch_release(v1);
  }

  v2 = *(DerivedStorage + 96);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(DerivedStorage + 56);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 56) = 0;
  }

  v4 = *(DerivedStorage + 64);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 64) = 0;
  }

  v5 = *(DerivedStorage + 72);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 72) = 0;
  }

  v6 = *(DerivedStorage + 112);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 112) = 0;
  }

  v7 = *(DerivedStorage + 144);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 144) = 0;
  }

  v8 = *(DerivedStorage + 120);
  if (v8)
  {
    CFRelease(v8);
    *(DerivedStorage + 120) = 0;
  }

  v9 = *(DerivedStorage + 40);
  if (v9)
  {
    CFRelease(v9);
    *(DerivedStorage + 40) = 0;
  }

  v10 = *(DerivedStorage + 48);
  if (v10)
  {
    CFRelease(v10);
    *(DerivedStorage + 48) = 0;
  }

  *DerivedStorage = 0;
  return 0;
}

__CFString *SRSEnhancementFilter_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<SRSEnhancementFilter %p>", a1);
  return Mutable;
}

uint64_t SRSEnhancementFilter_CompleteFrames()
{
  v0 = *(CMBaseObjectGetDerivedStorage() + 88);
  if (v0)
  {
    dispatch_group_wait(v0, 0xFFFFFFFFFFFFFFFFLL);
  }

  return 0;
}

unint64_t srsFilter_calculateOutputDimensions(unint64_t result, unint64_t a2, uint64_t a3)
{
  v3 = HIDWORD(a2);
  *a3 = result;
  if (result != a2 || HIDWORD(result) != v3)
  {
    if (__PAIR64__(2 * HIDWORD(result), 2 * result) == a2)
    {
      *a3 = a2;
    }

    else
    {
      v4 = SHIDWORD(a2) / SHIDWORD(result);
      v5 = (v4 * result);
      v6 = a2 / result;
      if (v6 <= v4)
      {
        v5 = a2;
        LODWORD(v3) = (v6 * SHIDWORD(result));
      }

      *a3 = (v5 + 1) & 0xFFFFFFFE;
      LODWORD(v3) = (v3 + 1) & 0xFFFFFFFE;
    }

    *(a3 + 4) = v3;
  }

  return result;
}

uint64_t SRSEnhancementFilter_ProcessFrame(uint64_t a1, CFTypeRef *a2, __CVBuffer *a3, __int128 *a4)
{
  v68 = 0;
  v69 = &v68;
  v70 = 0x2000000000;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v64 = 0;
  v65 = &v64;
  v66 = 0x2000000000;
  v67 = 0;
  v60 = 0;
  v61 = &v60;
  v62 = 0x2000000000;
  v63 = 0;
  v56 = 0;
  v57 = &v56;
  v58 = 0x2000000000;
  v59 = 0;
  v7 = v69[3];
  v8 = *(v7 + 28) != *(v7 + 12) || *(v7 + 24) != *(v7 + 8);
  if (*v7)
  {
    if (!*(v7 + 82))
    {
      dispatch_group_wait(*(v7 + 88), 0xFFFFFFFFFFFFFFFFLL);
      PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
      v10 = v69[3];
      if (PixelFormatType != *(v10 + 104))
      {
        v11 = *(v10 + 64);
        if (v11)
        {
          CFRelease(v11);
          *(v69[3] + 64) = 0;
        }
      }

      CVPixelBufferGetIOSurface(a3);
      ProtectionOptions = IOSurfaceGetProtectionOptions();
      v13 = v69[3];
      if (ProtectionOptions != *(v13 + 128))
      {
        v14 = *(v13 + 64);
        if (v14)
        {
          CFRelease(v14);
          v15 = v69;
          *(v69[3] + 64) = 0;
          v13 = v15[3];
        }
      }

      if (*(v13 + 136) != *(v13 + 33))
      {
        v16 = *(v13 + 64);
        if (v16)
        {
          CFRelease(v16);
          v17 = v69;
          *(v69[3] + 64) = 0;
          v13 = v17[3];
        }
      }

      v18 = MEMORY[0x1E695E480];
      if (*(v13 + 64))
      {
LABEL_35:
        *(v13 + 104) = PixelFormatType;
        *(v13 + 128) = ProtectionOptions;
        *(v13 + 136) = *(v13 + 33);
        OutputPixelBufferPool = VTTemporalFilterPluginSessionGetOutputPixelBufferPool(*v13);
        if (OutputPixelBufferPool)
        {
          v32 = *v18;
          PixelBuffer = CVPixelBufferPoolCreatePixelBuffer(v32, OutputPixelBufferPool, v65 + 3);
          if (v65[3])
          {
            v30 = PixelBuffer;
            v34 = v69[3];
            if (!*(v34 + 32) || (v35 = *(v34 + 40)) == 0)
            {
LABEL_41:
              if (a3)
              {
                v37 = CFRetain(a3);
              }

              else
              {
                v37 = 0;
              }

              v57[3] = v37;
              v38 = v69[3];
              v39 = *(v38 + 88);
              v40 = *(v38 + 96);
              block[0] = MEMORY[0x1E69E9820];
              block[1] = 0x40000000;
              block[2] = __SRSEnhancementFilter_ProcessFrame_block_invoke;
              block[3] = &unk_1E72C8328;
              block[4] = &v68;
              block[5] = &v60;
              block[6] = &v64;
              block[7] = &v56;
              v55 = v8;
              v53 = *a4;
              v54 = *(a4 + 2);
              block[8] = a2;
              dispatch_group_async(v39, v40, block);
              v41 = v69[3];
              if (!*(v41 + 81))
              {
                dispatch_group_wait(*(v41 + 88), 0xFFFFFFFFFFFFFFFFLL);
              }

              goto LABEL_46;
            }

            v36 = CVPixelBufferPoolCreatePixelBuffer(v32, v35, v61 + 3);
            if (v61[3])
            {
              v30 = v36;
              goto LABEL_41;
            }
          }
        }

        goto LABEL_79;
      }

      v19 = CMBaseObjectGetDerivedStorage();
      v20 = *v18;
      Mutable = CFDictionaryCreateMutable(*v18, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (Mutable)
      {
        v22 = Mutable;
        v50 = v8;
        v51 = a4;
        v23 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
        if (v23)
        {
          v24 = v23;
          v25 = PixelFormatType;
          if (*(v19 + 33))
          {
            goto LABEL_19;
          }

          v27 = *(v19 + 112);
          if (v27)
          {
            v28 = CFGetTypeID(*(v19 + 112));
            if (v28 == CFStringGetTypeID())
            {
              CFStringGetCString(v27, buffer, 5, 0x600u);
              v25 = bswap32(*buffer);
              goto LABEL_19;
            }
          }

          v25 = 1882468914;
          if (PixelFormatType > 1885746227)
          {
            if (PixelFormatType <= 2019963439)
            {
              if (PixelFormatType != 1885746228)
              {
                if (PixelFormatType != 1983131952)
                {
                  v43 = 2016687156;
LABEL_66:
                  if (PixelFormatType != v43)
                  {
                    goto LABEL_19;
                  }
                }

LABEL_67:
                v25 = 1882469428;
                goto LABEL_19;
              }
            }

            else
            {
              if (PixelFormatType <= 2019963955)
              {
                if (PixelFormatType != 2019963440)
                {
                  v44 = 2019963442;
                  goto LABEL_72;
                }

                goto LABEL_73;
              }

              if (PixelFormatType != 2019963956)
              {
                v44 = 2037741158;
LABEL_72:
                if (PixelFormatType != v44)
                {
                  goto LABEL_19;
                }

                goto LABEL_73;
              }
            }
          }

          else
          {
            if (PixelFormatType > 875836533)
            {
              if (PixelFormatType <= 1885745711)
              {
                if (PixelFormatType != 875836534)
                {
                  v43 = 1882469428;
                  goto LABEL_66;
                }

                goto LABEL_67;
              }

              if (PixelFormatType != 1885745712)
              {
                v44 = 1885745714;
                goto LABEL_72;
              }

LABEL_73:
              v25 = 1885745714;
              goto LABEL_19;
            }

            if (PixelFormatType == 875704422 || PixelFormatType == 875704934)
            {
              goto LABEL_73;
            }

            if (PixelFormatType != 875836518)
            {
LABEL_19:
              v49 = a2;
              addNumberToCFArray(v24, v25);
              CFDictionaryAddValue(v22, *MEMORY[0x1E6966130], v24);
              FigCFDictionarySetInt32();
              FigCFDictionarySetInt32();
              FigCFDictionarySetInt32();
              allocator = v20;
              if (ProtectionOptions)
              {
                v26 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                if (!v26)
                {
                  v30 = 4294954392;
LABEL_31:
                  CFRelease(v22);
                  CFRelease(v24);
                  if (v26)
                  {
                    CFRelease(v26);
                  }

                  a2 = v49;
                  a4 = v51;
                  v8 = v50;
                  if (v30)
                  {
                    goto LABEL_80;
                  }

                  v13 = v69[3];
                  v18 = MEMORY[0x1E695E480];
                  goto LABEL_35;
                }

                FigCFDictionarySetInt64();
                FigCFDictionarySetValue();
              }

              else
              {
                v26 = 0;
              }

              PixelBufferAttributesWithIOSurfaceSupport = FigCreatePixelBufferAttributesWithIOSurfaceSupport(v22, 0, (v19 + 64));
              if (PixelBufferAttributesWithIOSurfaceSupport || (PixelBufferAttributesWithIOSurfaceSupport = VTTemporalFilterPluginSessionSetOutputPixelBufferAttributes(*v19, *(v19 + 64)), PixelBufferAttributesWithIOSurfaceSupport))
              {
                v30 = PixelBufferAttributesWithIOSurfaceSupport;
              }

              else if (*(v19 + 32) && !*(v19 + 33))
              {
                *buffer = 0;
                FigCFDictionarySetInt32();
                FigCFDictionarySetInt32();
                v30 = FigCreatePixelBufferAttributesWithIOSurfaceSupport(v22, 0, buffer);
                CVPixelBufferPoolCreate(allocator, 0, *buffer, (v19 + 40));
                if (*buffer)
                {
                  CFRelease(*buffer);
                }
              }

              else
              {
                v30 = 0;
              }

              goto LABEL_31;
            }
          }

          v25 = 1885746228;
          goto LABEL_19;
        }

        CFRelease(v22);
      }

LABEL_79:
      v30 = 4294954392;
      goto LABEL_80;
    }

    v30 = 4294954393;
  }

  else
  {
    v30 = 4294954394;
  }

LABEL_80:
  v45 = v65[3];
  if (v45)
  {
    CFRelease(v45);
  }

  v46 = v57[3];
  if (v46)
  {
    CFRelease(v46);
  }

  v47 = v61[3];
  if (v47)
  {
    CFRelease(v47);
  }

  VTTemporalFilterPluginSessionConcludeInputFrame(*v69[3], a2);
LABEL_46:
  _Block_object_dispose(&v56, 8);
  _Block_object_dispose(&v60, 8);
  _Block_object_dispose(&v64, 8);
  _Block_object_dispose(&v68, 8);
  return v30;
}

uint64_t SRSEnhancementFilter_CopySupportedPropertyDictionary(uint64_t a1, CFTypeRef *a2)
{
  MEMORY[0x193AE3010](&gSRSFilterCreateSupportedPropertyDictionaryOnce, srsFilter_createSupportedPropertyDictionary);
  if (a2 && gSRSFilterSupportedPropertyDictionary)
  {
    *a2 = CFRetain(gSRSFilterSupportedPropertyDictionary);
    return 0;
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }
}

void addNumberToCFArray(__CFArray *a1, int a2)
{
  valuePtr = a2;
  v3 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  if (v3)
  {
    v4 = v3;
    CFArrayAppendValue(a1, v3);
    CFRelease(v4);
  }
}

void srsFilter_createSupportedPropertyDictionary()
{
  v0 = *MEMORY[0x1E695E480];
  gSRSFilterSupportedPropertyDictionary = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (gSRSFilterSupportedPropertyDictionary)
  {
    v1 = CFDictionaryCreate(v0, 0, 0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFDictionaryAddValue(gSRSFilterSupportedPropertyDictionary, @"OutputDimensions", v1);
    CFDictionaryAddValue(gSRSFilterSupportedPropertyDictionary, @"RealTime", v1);
    CFDictionaryAddValue(gSRSFilterSupportedPropertyDictionary, @"FilterSourcePixelBufferAttributes", v1);
    CFDictionaryAddValue(gSRSFilterSupportedPropertyDictionary, @"FilterDestinationPixelBufferAttributes", v1);
    CFDictionaryAddValue(gSRSFilterSupportedPropertyDictionary, @"MaxLookBehind", v1);
    CFDictionaryAddValue(gSRSFilterSupportedPropertyDictionary, @"MaxLookAhead", v1);
    CFDictionaryAddValue(gSRSFilterSupportedPropertyDictionary, @"FilterParameters", v1);
    if (v1)
    {

      CFRelease(v1);
    }
  }
}

uint64_t jpeg_setupreadbuffer(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  *(result + 24) = a2;
  *(result + 12) = 32;
  *(result + 56) = a3;
  *(result + 64) = a2 + a3;
  return result;
}

uint64_t popbytes(uint64_t result, int a2, _WORD *a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = result;
  LODWORD(result) = 0;
  v4 = v3[8];
  v5 = *v3;
  while (v5 < v4)
  {
    --a2;
    *v3 = v5 + 1;
    result = *v5++ | (result << 8);
    if (!a2)
    {
      return result;
    }
  }

  *a3 = -12909;
  return 0xFFFFFFFFLL;
}

uint64_t popbytesCallback(uint64_t result, int a2, _WORD *a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = result;
  LODWORD(result) = 0;
  v4 = v3[8];
  v5 = *v3;
  while (v5 < v4)
  {
    --a2;
    *v3 = v5 + 1;
    result = *v5++ | (result << 8);
    if (!a2)
    {
      return result;
    }
  }

  *a3 = -12909;
  return 0xFFFFFFFFLL;
}

uint64_t popbitsa(unsigned __int8 **a1, int a2)
{
  v2 = *(a1 + 2);
  v3 = *(a1 + 3);
  if (v3 >= 8)
  {
    v4 = a1[8];
    v5 = *a1;
    while (1)
    {
      v2 <<= 8;
      *(a1 + 2) = v2;
      if (v5 >= v4)
      {
        break;
      }

      v6 = v5 + 1;
      *a1 = v5 + 1;
      v9 = *v5;
      v7 = v5 + 2;
      v8 = v9;
      if (*(a1 + 5) == v9 && v7 < v4)
      {
        *a1 = v7;
        if (!*v6)
        {
          v6 = v7;
        }

        *a1 = v6;
      }

      v2 |= v8;
      v11 = v3 - 8;
      *(a1 + 2) = v2;
      *(a1 + 3) = v3 - 8;
      v5 = v6;
      v12 = v3 <= 15;
      v3 -= 8;
      if (v12)
      {
        goto LABEL_15;
      }
    }
  }

  v11 = v3;
LABEL_15:
  *(a1 + 3) = v11 + a2;
  return (v2 << v11) >> -a2;
}

uint64_t ParavirtualizedMotionEstimationProcessor_CreateInstance()
{
  v11 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v10 = 0;
  v7 = 0;
  v8 = 0;
  v6 = 0;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  cf = 0;
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  VTMotionEstimationProcessorGetClassID();
  v1 = CMDerivedObjectCreate();
  if (v1)
  {
    v3 = v1;
LABEL_18:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_3;
  }

  v3 = FigSignalErrorAtGM();
  if (v3)
  {
    goto LABEL_18;
  }

LABEL_3:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  return v3;
}

void paravirtualizedMotionEstimationProcessor_rememberPixelBufferAndUUID(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  os_unfair_lock_lock((DerivedStorage + 40));
  CFDictionarySetValue(*(DerivedStorage + 48), a2, a3);
  CFDictionaryGetCount(*(DerivedStorage + 48));

  os_unfair_lock_unlock((DerivedStorage + 40));
}

uint64_t ParavirtualizedMotionEstimationProcessor_Invalidate()
{
  v11 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = 0;
  v6 = 0;
  cf = 0;
  MessageAndByteStream = VTParavirtualizationCreateMessageAndByteStream(1835626102, 1, DerivedStorage + 8, 0, &cf, 0);
  if (MessageAndByteStream || (v9 = kVTParavirtualizationDefaultReplyTimeout, v10 = 0, MessageAndByteStream = VTParavirtualizationGuestSendMessageToHostAndCopyReplySync(cf, &v9, &v6), MessageAndByteStream))
  {
    v3 = MessageAndByteStream;
LABEL_7:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_8;
  }

  VTParavirtualizationMessageGetSInt32();
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = v8;
  }

  if (v3)
  {
    goto LABEL_7;
  }

LABEL_8:
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

void ParavirtualizedMotionEstimationProcessor_Finalize()
{
  cf[20] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf[0] = 0;
  *DerivedStorage = 0;
  *(DerivedStorage + 24) = 0;
  if (!VTParavirtualizationCreateMessageAndByteStream(762144112, 0, DerivedStorage + 8, 0, cf, 0) && VTParavirtualizationGuestSendMessageToHostAsync(cf[0]))
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (VTParavirtualizationGuestRemoveHandlerForUUID((DerivedStorage + 8)))
  {
    v2 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v3 = *(DerivedStorage + 32);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 32) = 0;
  }

  v4 = *(DerivedStorage + 48);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 48) = 0;
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
  }
}

__CFString *ParavirtualizedMotionEstimationProcessor_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFStringAppendFormat(Mutable, 0, @"<ParavirtualizedMotionEstimationProcessor %p UUID %02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x>", a1, DerivedStorage[8], DerivedStorage[9], DerivedStorage[10], DerivedStorage[11], DerivedStorage[12], DerivedStorage[13], DerivedStorage[14], DerivedStorage[15], DerivedStorage[16], DerivedStorage[17], DerivedStorage[18], DerivedStorage[19], DerivedStorage[20], DerivedStorage[21], DerivedStorage[22], DerivedStorage[23]);
  return Mutable;
}

uint64_t ParavirtualizedMotionEstimationProcessor_SetProperty()
{
  v12 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = 0;
  cf = 0;
  v7 = 0;
  appended = VTParavirtualizationCreateMessageAndByteStream(1836279156, 1, DerivedStorage + 8, 0, &cf, &v8);
  if (appended || (appended = VTParavirtualizationMessageAppendCFPropertyList(), appended) || (appended = VTParavirtualizationMessageAppendCFPropertyList(), appended) || (v10 = kVTParavirtualizationDefaultReplyTimeout, v11 = 0, appended = VTParavirtualizationGuestSendMessageToHostAndCopyReplySync(cf, &v10, &v7), appended))
  {
    v3 = appended;
  }

  else
  {
    VTParavirtualizationMessageGetSInt32();
    if (v2)
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      goto LABEL_11;
    }
  }

  v4 = FigCFCopyCompactDescription();
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  if (v4)
  {
    CFRelease(v4);
  }

LABEL_11:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  return v3;
}

uint64_t ParavirtualizedMotionEstimationProcessor_ProcessFrames(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v35 = *MEMORY[0x1E69E9840];
  v32 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v30 = 0;
  v31 = 0;
  v29 = 0;
  if (!a3)
  {
    ParavirtualizedMotionEstimationProcessor_ProcessFrames_cold_7(&v33);
LABEL_40:
    v15 = 0;
    v14 = 0;
    Mutable = 0;
LABEL_44:
    v24 = v33;
    goto LABEL_23;
  }

  if (!a4)
  {
    ParavirtualizedMotionEstimationProcessor_ProcessFrames_cold_6(&v33);
    goto LABEL_40;
  }

  v11 = DerivedStorage;
  v12 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 2, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    ParavirtualizedMotionEstimationProcessor_ProcessFrames_cold_5(&v33);
    v15 = 0;
    v14 = 0;
    goto LABEL_44;
  }

  v14 = CFArrayCreateMutable(v12, 2, MEMORY[0x1E695E9C0]);
  if (!v14)
  {
    ParavirtualizedMotionEstimationProcessor_ProcessFrames_cold_4(&v33);
    v15 = 0;
    goto LABEL_44;
  }

  v15 = malloc_type_calloc(2uLL, 8uLL, 0x2004093837F09uLL);
  if (!v15)
  {
    ParavirtualizedMotionEstimationProcessor_ProcessFrames_cold_3(&v33);
    goto LABEL_44;
  }

  v16 = CFUUIDCreate(v12);
  CFArrayAppendValue(v14, v16);
  CFArrayAppendValue(Mutable, a3);
  cf = v16;
  paravirtualizedMotionEstimationProcessor_rememberPixelBufferAndUUID(a1, v16, a3);
  IOSurface = CVPixelBufferGetIOSurface(a3);
  if (!IOSurface)
  {
    ParavirtualizedMotionEstimationProcessor_ProcessFrames_cold_2(&v33);
    v18 = 0;
LABEL_47:
    v24 = v33;
LABEL_48:
    if (!v16)
    {
      goto LABEL_21;
    }

LABEL_20:
    CFRelease(v16);
    goto LABEL_21;
  }

  *v15 = IOSurface;
  v18 = CFUUIDCreate(v12);
  CFArrayAppendValue(v14, v18);
  CFArrayAppendValue(Mutable, a4);
  paravirtualizedMotionEstimationProcessor_rememberPixelBufferAndUUID(a1, v18, a4);
  v19 = CVPixelBufferGetIOSurface(a4);
  if (!v19)
  {
    ParavirtualizedMotionEstimationProcessor_ProcessFrames_cold_1(&v33);
    goto LABEL_47;
  }

  v15[1] = v19;
  appended = VTParavirtualizationCreateMessageAndByteStream(1835364454, 1, v11 + 8, 0, &v31, &v30);
  if (appended || (appended = VTParavirtualizationMessageAppendSInt64(), appended) || (appended = VTParavirtualizationMessageAppendUInt32(), appended) || a6 && (appended = VTParavirtualizationMessageAppendCFDictionary(v30, 745366895, a6), appended) || (appended = VTParavirtualizationMessageAppendCFUUIDArray(v30, 745892139, v14), appended))
  {
    v24 = appended;
    goto LABEL_48;
  }

  v21 = v31;
  Count = CFArrayGetCount(Mutable);
  v33 = kVTParavirtualizationCodecOperationReplyTimeout;
  v34 = 0;
  v23 = VTParavirtualizationGuestSendMessageWithIOSurfacesToHostAndCopyReplySync(v21, v15, Count, &v33, &v29);
  if (v23 || (VTParavirtualizationMessageGetSInt32(), v23))
  {
    v24 = v23;
  }

  else
  {
    v24 = v32;
    if (v32)
    {
      v25 = FigCFCopyCompactDescription();
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v16 = cf;
      if (v25)
      {
        CFRelease(v25);
      }

      if (!cf)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }
  }

  v16 = cf;
  if (cf)
  {
    goto LABEL_20;
  }

LABEL_21:
  if (v18)
  {
    CFRelease(v18);
  }

LABEL_23:
  if (v31)
  {
    CFRelease(v31);
  }

  if (v30)
  {
    CFRelease(v30);
  }

  if (v29)
  {
    CFRelease(v29);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  free(v15);
  return v24;
}

uint64_t ParavirtualizedMotionEstimationProcessor_SetProperties(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = 0;
  cf = 0;
  v10 = 0;
  appended = VTParavirtualizationCreateMessageAndByteStream(1835890028, 1, DerivedStorage + 8, 0, &cf, &v11);
  if (appended || (appended = VTParavirtualizationMessageAppendCFDictionary(v11, 745566831, a2), appended) || (v13 = kVTParavirtualizationDefaultReplyTimeout, v14 = 0, appended = VTParavirtualizationGuestSendMessageToHostAndCopyReplySync(cf, &v13, &v10), appended))
  {
    v6 = appended;
  }

  else
  {
    VTParavirtualizationMessageGetSInt32();
    if (v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    if (!v6)
    {
      goto LABEL_10;
    }
  }

  v7 = FigCFCopyCompactDescription();
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  if (v7)
  {
    CFRelease(v7);
  }

LABEL_10:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  return v6;
}

uint64_t OUTLINED_FUNCTION_0_9@<X0>(OpaqueCMBlockBuffer *a1@<X0>, __int128 *a2@<X8>, __int128 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  a3 = *a2;
  a4 = *(a2 + 2);

  return VTParavirtualizationGuestSendMessageToHostAndCopyReplySync(a1, &a3, &a7);
}

void OUTLINED_FUNCTION_1_9()
{

  VTParavirtualizationMessageGetSInt32();
}

void OUTLINED_FUNCTION_2_9()
{

  VTParavirtualizationMessageGetSInt32();
}

uint64_t GetConversionRoutine(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, unsigned __int8 *a7, int a8, int a9, char a10)
{
  *a2 = DoNothing;
  if (!a8)
  {
    v15 = *(a1 + 3274);
    switch(v15)
    {
      case 1:
        a8 = 944206457;
        break;
      case 4:
        a8 = 2036556651;
        break;
      case 3:
        a8 = 1497580320;
        break;
      default:
        return -12910;
    }
  }

  v10 = 0;
  v11 = IDCTFlex;
  if (a6 > 2)
  {
    if (a6 == 3)
    {
      v16 = *a7;
      if (v16 != 17)
      {
        if (v16 == 33)
        {
          if (a7[1] == 17 && a7[2] == 17)
          {
            v11 = IDCTFlex;
            v10 = 875704864;
            goto LABEL_49;
          }
        }

        else
        {
          if (v16 != 34)
          {
            goto LABEL_48;
          }

          if (a7[1] == 17 && a7[2] == 17)
          {
            v11 = IDCT;
            v10 = 875639072;
            goto LABEL_49;
          }
        }

        goto LABEL_41;
      }

      if (a7[1] != 17)
      {
        goto LABEL_48;
      }

      v12 = a7[2];
    }

    else
    {
      if (a6 != 4)
      {
        goto LABEL_49;
      }

      v13 = *a7;
      if (v13 != 17)
      {
        if (v13 == 33)
        {
          if (a7[1] == 17 && a7[2] == 17 && a7[3] == 33)
          {
            v11 = IDCTFlex;
            v14 = 875704864;
            goto LABEL_37;
          }
        }

        else
        {
          if (v13 != 34)
          {
            goto LABEL_48;
          }

          if (a7[1] == 17 && a7[2] == 17 && a7[3] == 34)
          {
            v11 = IDCTFlex;
            v14 = 875639072;
LABEL_37:
            v10 = v14 | 0x14;
            goto LABEL_49;
          }
        }

LABEL_41:
        v10 = 0;
LABEL_42:
        v11 = IDCTFlex;
        goto LABEL_49;
      }

      if (a7[1] != 17 || a7[2] != 17)
      {
        goto LABEL_48;
      }

      v12 = a7[3];
    }

LABEL_7:
    if (v12 == 17)
    {
      v10 = 1852796517;
    }

    else
    {
      v10 = 0;
    }

    goto LABEL_42;
  }

  if (a6 == 1)
  {
    v11 = IDCTFlex;
    v10 = 1852796517;
    goto LABEL_49;
  }

  if (a6 != 2)
  {
    goto LABEL_49;
  }

  if (*a7 == 17)
  {
    v12 = a7[1];
    goto LABEL_7;
  }

LABEL_48:
  v11 = IDCTFlex;
  v10 = 0;
LABEL_49:
  if (a8 != 1497580320)
  {
    if (a8 != 944206457)
    {
      return -12910;
    }

    v17 = -12910;
    if (a9 <= 875704437)
    {
      if (a9 != 32)
      {
        if (a9 == 846624121)
        {
          v18 = yto2vuyOne;
          goto LABEL_92;
        }

        return v17;
      }

      v22 = yto32ARGBOne;
    }

    else
    {
      if (a9 == 875704438)
      {
        v18 = yto420vOne;
        goto LABEL_92;
      }

      if (a9 != 1111970369)
      {
        if (a9 == 2033463856)
        {
          v18 = ytoY420One;
LABEL_92:
          *a2 = v18;
          v19 = 2;
LABEL_101:
          *(a1 + 4416) = v11;
          UpdatePinAndGammaTables(a1, v19);
          return 0;
        }

        return v17;
      }

      v22 = yto32BGRAOne;
    }

    goto LABEL_99;
  }

  if (v10 == 875704864)
  {
    v17 = -12910;
    if (a9 <= 875704437)
    {
      if (a9 != 32)
      {
        if (a9 == 846624121)
        {
          v18 = yuv422to2vuy;
          goto LABEL_92;
        }

        return v17;
      }

      v22 = yuvto32ARGB2111;
    }

    else
    {
      if (a9 == 875704438)
      {
        v18 = yuv422to420v;
        goto LABEL_92;
      }

      if (a9 != 1111970369)
      {
        if (a9 == 2033463856)
        {
          v18 = yuv422toY420;
          goto LABEL_92;
        }

        return v17;
      }

      v22 = yuvto32BGRA2111;
    }

LABEL_99:
    *a2 = v22;
LABEL_100:
    v19 = 1;
    goto LABEL_101;
  }

  if (v10 != 875639072)
  {
    v17 = -12910;
    if (a9 <= 875704437)
    {
      if (a9 == 32)
      {
        v23 = yuvto32ARGBOne;
        v19 = 1;
        v20 = 4;
      }

      else
      {
        if (a9 != 846624121)
        {
          return v17;
        }

        v20 = 2;
        v23 = yuvto2vuyOne;
        v19 = 2;
      }
    }

    else
    {
      switch(a9)
      {
        case 875704438:
          v20 = 0;
          v19 = 2;
          v21 = yuvto420vOne;
          break;
        case 2033463856:
          v20 = 0;
          v19 = 2;
          v21 = yuvtoY420One;
          break;
        case 1111970369:
          v19 = 1;
          v20 = 4;
          v21 = yuvto32BGRAOne;
          break;
        default:
          return v17;
      }

      v23 = v21;
    }

    v28 = *(a1 + 4096);
    if (v28 == 17)
    {
      *a2 = v23;
    }

    else
    {
      *a2 = UpsampleThenContinue;
      *(a3 + 56) = a6;
      *(a3 + 58) = v28;
      if (a6 >= 1)
      {
        v29 = 0;
        do
        {
          *(a3 + 62 + v29) = a7[v29];
          ++v29;
        }

        while (a6 > v29);
      }

      *(a3 + 60) = v20;
      *(a3 + 48) = v23;
    }

    goto LABEL_101;
  }

  v17 = -12910;
  if (a9 <= 875704437)
  {
    if (a9 != 32)
    {
      if (a9 == 846624121)
      {
        v18 = yuv411to2vuy;
        goto LABEL_92;
      }

      return v17;
    }

    v24 = a10 == 0;
    v25 = yuvto32ARGBTab;
    v26 = yuvto32ARGB;
    goto LABEL_95;
  }

  switch(a9)
  {
    case 875704438:
      v18 = yuv411to420v;
      goto LABEL_92;
    case 1111970369:
      v24 = a10 == 0;
      v25 = yuvto32BGRATab;
      v26 = yuvto32BGRA;
LABEL_95:
      if (v24)
      {
        v25 = v26;
      }

      *a2 = v25;
      goto LABEL_100;
    case 2033463856:
      v18 = yuv411toY420;
      goto LABEL_92;
  }

  return v17;
}

uint64_t getyuvMB(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 48);
  *(a1 + 3200) = &unk_18FECE0F0;
  v7 = *(a1 + 4128);
  if (*(a1 + 4128))
  {
    v8 = ExtractBufferedBlocks;
  }

  else
  {
    v8 = DecodeBlocks;
  }

  if (a6)
  {
    v9 = a6;
    v14 = a1 + 1632;
    v15 = *(a1 + 4416);
    v34 = 0;
    memset(v33, 0, sizeof(v33));
    if (v7)
    {
      v16 = 0;
    }

    else
    {
      v16 = v6;
    }

    v31 = (a1 + 3400);
    v17 = (a4 + 48);
    while (1)
    {
      if (v16)
      {
        v18 = *(a2 + 52);
        v19 = __OFSUB__(v18--, 1);
        *(a2 + 52) = v18;
        if ((v18 < 0) ^ v19 | (v18 == 0))
        {
          v20 = -*(a2 + 12) & 7;
          if (v20)
          {
            popbitsa(a2, v20);
          }

            ;
          }

          reset_DC_pred(a1);
          *(a2 + 52) = v16;
        }
      }

      if (v8(a1, a2, a1 + 96, v32, a3))
      {
        break;
      }

      *&v33[0] = v14;
      v21 = *(a1 + 3274);
      if (v21 >= 2)
      {
        v22 = v21 - 1;
        v24 = v33 + 1;
        v23 = v31;
        v25 = v14;
        do
        {
          v26 = *v23++;
          v25 += v26 << 7;
          *v24++ = v25;
          --v22;
        }

        while (v22);
      }

      --v9;
      v15(a1 + 96, v14, v32);
      (*(a1 + 3192))(a4, v33, a1 + 3200);
      v27 = v17;
      v28 = 3;
      do
      {
        *(v27 - 4) += *v27;
        v27 += 10;
        --v28;
      }

      while (v28);
      if (!v9)
      {
        return 0;
      }
    }

    return -1;
  }

  else
  {
    return 0;
  }
}

_WORD *FilterBlock(int a1, _WORD *a2, uint64_t *a3, int a4, int a5, int a6, int a7)
{
  result = 0;
  if (a1 > 8480)
  {
    if (a1 > 8721)
    {
      if (a1 != 8722)
      {
        if (a1 != 8737)
        {
          if (a1 != 8738)
          {
            return result;
          }

          goto LABEL_39;
        }

        v31 = 0;
        v32 = *a3;
        v33 = a2;
        v34 = *a3;
        do
        {
          v35 = 0;
          v33 += 8;
          v36 = v34;
          do
          {
            v37 = *v36++;
            *(v33 - 8) = v37;
            *v33++ = v37;
            v16 = v35++ >= 7;
          }

          while (!v16);
          v34 += 8;
          v16 = v31++ >= 3;
        }

        while (!v16);
        if (a4 != a6)
        {
          v17 = v32 + 128;
          goto LABEL_51;
        }

        if (a5 != a7)
        {
          v17 = v32 - 64;
          goto LABEL_51;
        }

        return a2;
      }

LABEL_19:
      v18 = 0;
      v19 = *a3;
      v20 = a2;
      v21 = *a3;
      do
      {
        v22 = 0;
        v23 = v21;
        do
        {
          v24 = *v23++;
          *v20 = v24;
          v20[1] = v24;
          v20 += 2;
          v16 = v22++ >= 3;
        }

        while (!v16);
        v21 += 8;
        v16 = v18++ >= 7;
      }

      while (!v16);
      if (a4 == a6)
      {
        if (a5 == a7)
        {
          return a2;
        }

        v17 = v19 + 120;
LABEL_51:
        *a3 = v17;
        return a2;
      }

      goto LABEL_40;
    }

    if (a1 != 8481)
    {
      if (a1 == 8721)
      {
        v25 = 0;
        v19 = *a3;
        v26 = a2;
        v27 = *a3;
        do
        {
          v28 = 0;
          v26 += 8;
          v29 = v27;
          do
          {
            v30 = *v29++;
            *v26 = v30;
            *(v26 - 8) = v30;
            v26[1] = v30;
            *(v26 - 7) = v30;
            v26 += 2;
            v16 = v28++ >= 3;
          }

          while (!v16);
          v27 += 8;
          v16 = v25++ >= 3;
        }

        while (!v16);
        if (a4 == a6 && a5 != a7)
        {
          v17 = v19 + 56;
          goto LABEL_51;
        }

LABEL_40:
        v17 = v19 + 8;
        goto LABEL_51;
      }

      return result;
    }

LABEL_39:
    a2 = *a3;
    v17 = *a3 + 128;
    goto LABEL_51;
  }

  if (a1 <= 4625)
  {
    if (a1 != 4369)
    {
      if (a1 == 4625)
      {
        v9 = 0;
        v10 = *a3;
        v11 = a2;
        v12 = *a3;
        do
        {
          v13 = 0;
          v11 += 8;
          v14 = v12;
          do
          {
            v15 = *v14++;
            *(v11 - 8) = v15;
            *v11++ = v15;
            v16 = v13++ >= 7;
          }

          while (!v16);
          v12 += 8;
          v16 = v9++ >= 3;
        }

        while (!v16);
        v17 = v10 + 64;
        goto LABEL_51;
      }

      return result;
    }

    goto LABEL_39;
  }

  if (a1 == 4626)
  {
    goto LABEL_39;
  }

  if (a1 == 8465)
  {
    goto LABEL_19;
  }

  return result;
}

CFArrayRef vtParavirtualizationInitializeIndexedKeys()
{
  v173 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E6960460];
  values[0] = *MEMORY[0x1E6960458];
  values[1] = v0;
  v1 = *MEMORY[0x1E6960450];
  values[2] = *MEMORY[0x1E6960448];
  values[3] = v1;
  v2 = *MEMORY[0x1E6960418];
  values[4] = *MEMORY[0x1E6960400];
  values[5] = v2;
  v3 = *MEMORY[0x1E6960410];
  values[6] = *MEMORY[0x1E6960408];
  values[7] = v3;
  v4 = *MEMORY[0x1E69603F0];
  values[8] = *MEMORY[0x1E69603E8];
  values[9] = v4;
  v5 = *MEMORY[0x1E6960490];
  values[10] = *MEMORY[0x1E6960510];
  values[11] = v5;
  v6 = *MEMORY[0x1E6960518];
  values[12] = *MEMORY[0x1E6960500];
  values[13] = v6;
  v7 = *MEMORY[0x1E6960558];
  values[14] = *MEMORY[0x1E6960560];
  values[15] = v7;
  v8 = *MEMORY[0x1E6960520];
  values[16] = *MEMORY[0x1E6960540];
  values[17] = v8;
  v9 = *MEMORY[0x1E69604B0];
  values[18] = *MEMORY[0x1E69604D0];
  values[19] = v9;
  v10 = *MEMORY[0x1E6960480];
  values[20] = *MEMORY[0x1E69604F8];
  values[21] = v10;
  v11 = *MEMORY[0x1E6960530];
  values[22] = *MEMORY[0x1E69604C8];
  values[23] = v11;
  v12 = *MEMORY[0x1E69604E8];
  values[24] = *MEMORY[0x1E6960528];
  values[25] = v12;
  v13 = *MEMORY[0x1E6962DE0];
  values[26] = *MEMORY[0x1E6962E28];
  values[27] = v13;
  v14 = *MEMORY[0x1E6962E40];
  values[28] = *MEMORY[0x1E6962E48];
  values[29] = v14;
  v15 = *MEMORY[0x1E6960550];
  values[30] = *MEMORY[0x1E6962DF0];
  values[31] = v15;
  v16 = *MEMORY[0x1E6960568];
  values[32] = *MEMORY[0x1E6960588];
  values[33] = v16;
  v17 = *MEMORY[0x1E69604B8];
  values[34] = *MEMORY[0x1E69604A8];
  values[35] = v17;
  values[36] = *MEMORY[0x1E6960478];
  values[37] = @"ReferenceWasRefreshed";
  values[38] = @"EncoderRetryCount";
  values[39] = @"RequireAcknowledgementToken";
  v18 = *MEMORY[0x1E6960CB0];
  values[40] = *MEMORY[0x1E6960CB8];
  values[41] = v18;
  v19 = *MEMORY[0x1E6960C60];
  values[42] = *MEMORY[0x1E6960C58];
  values[43] = v19;
  values[44] = @"X";
  values[45] = @"Y";
  values[46] = @"Width";
  values[47] = @"Height";
  v20 = *MEMORY[0x1E69600A0];
  values[48] = *MEMORY[0x1E6960088];
  values[49] = v20;
  v21 = *MEMORY[0x1E69600C8];
  values[50] = *MEMORY[0x1E69600D0];
  values[51] = v21;
  v22 = *MEMORY[0x1E6960028];
  values[52] = *MEMORY[0x1E6960030];
  values[53] = v22;
  v23 = *MEMORY[0x1E6965D80];
  values[54] = *MEMORY[0x1E6965D70];
  values[55] = v23;
  v24 = *MEMORY[0x1E6965D68];
  values[56] = *MEMORY[0x1E6965D60];
  values[57] = v24;
  v25 = *MEMORY[0x1E69600F8];
  values[58] = *MEMORY[0x1E6965D78];
  values[59] = v25;
  v26 = *MEMORY[0x1E6960108];
  values[60] = *MEMORY[0x1E6960100];
  values[61] = v26;
  v27 = *MEMORY[0x1E6965E58];
  values[62] = *MEMORY[0x1E6965E50];
  values[63] = v27;
  values[64] = *MEMORY[0x1E6965E78];
  values[65] = *MEMORY[0x1E6965E70];
  values[66] = *MEMORY[0x1E6965E60];
  values[67] = *MEMORY[0x1E6965E68];
  values[68] = *MEMORY[0x1E6965EF8];
  values[69] = *MEMORY[0x1E6965EF0];
  values[70] = *MEMORY[0x1E6965F00];
  v32 = *MEMORY[0x1E6965D88];
  v33 = *MEMORY[0x1E6965DB8];
  v34 = *MEMORY[0x1E6965DA0];
  v35 = *MEMORY[0x1E6965DD8];
  v36 = *MEMORY[0x1E6965F30];
  v37 = *MEMORY[0x1E6965F50];
  v38 = *MEMORY[0x1E6965F68];
  v39 = *MEMORY[0x1E6965F80];
  v40 = *MEMORY[0x1E6965E80];
  v41 = *MEMORY[0x1E6965F98];
  v42 = *MEMORY[0x1E6965FD0];
  v43 = *MEMORY[0x1E6965FC8];
  v44 = *MEMORY[0x1E6965FF0];
  v45 = *MEMORY[0x1E6960038];
  v46 = *MEMORY[0x1E6960070];
  v47 = *MEMORY[0x1E6960008];
  v48 = *MEMORY[0x1E6965D00];
  v49 = *MEMORY[0x1E6965CF0];
  v50 = *MEMORY[0x1E6965D30];
  v51 = *MEMORY[0x1E6965D20];
  v52 = *MEMORY[0x1E6965D40];
  v53 = *MEMORY[0x1E6965D38];
  v54 = *MEMORY[0x1E6965D10];
  v55 = *MEMORY[0x1E6965D08];
  v56 = *MEMORY[0x1E6965D28];
  v57 = *MEMORY[0x1E69600B8];
  v58 = *MEMORY[0x1E69600A8];
  v59 = *MEMORY[0x1E69600D8];
  v60 = *MEMORY[0x1E6960098];
  v61 = *MEMORY[0x1E69600C0];
  v62 = *MEMORY[0x1E6962760];
  v63 = *MEMORY[0x1E6962768];
  v64 = *MEMORY[0x1E6962758];
  v65 = *MEMORY[0x1E6962770];
  v66 = @"avcC";
  v67 = @"d263";
  v68 = @"uuid";
  v69 = @"UUID";
  v70 = @"sinf";
  v71 = @"pinf";
  v72 = *MEMORY[0x1E69603F8];
  v73 = @"hvcC";
  v74 = *MEMORY[0x1E695FFE0];
  v75 = *MEMORY[0x1E6960318];
  v76 = *MEMORY[0x1E6960330];
  v77 = *MEMORY[0x1E6960310];
  v78 = *MEMORY[0x1E6960308];
  v79 = *MEMORY[0x1E6960300];
  v80 = *MEMORY[0x1E69602F8];
  v81 = *MEMORY[0x1E6962738];
  v82 = *MEMORY[0x1E6962730];
  v83 = *MEMORY[0x1E6962748];
  v84 = *MEMORY[0x1E6960328];
  v85 = *MEMORY[0x1E6960360];
  v86 = *MEMORY[0x1E6960320];
  v87 = *MEMORY[0x1E69606E8];
  v88 = *MEMORY[0x1E69606C8];
  v89 = *MEMORY[0x1E69606C0];
  v90 = *MEMORY[0x1E69606B8];
  v91 = *MEMORY[0x1E69606B0];
  v92 = *MEMORY[0x1E69606A8];
  v93 = *MEMORY[0x1E69606E0];
  v94 = *MEMORY[0x1E6960730];
  v95 = *MEMORY[0x1E6960720];
  v96 = *MEMORY[0x1E6960718];
  v97 = *MEMORY[0x1E6960728];
  v98 = *MEMORY[0x1E69606D8];
  v99 = *MEMORY[0x1E6960778];
  v100 = *MEMORY[0x1E6960750];
  v101 = *MEMORY[0x1E6960758];
  v102 = *MEMORY[0x1E6960768];
  v103 = *MEMORY[0x1E6960760];
  v104 = *MEMORY[0x1E69606F8];
  v105 = *MEMORY[0x1E6960710];
  v106 = *MEMORY[0x1E6960748];
  v107 = *MEMORY[0x1E69606F0];
  v108 = *MEMORY[0x1E6960708];
  v109 = *MEMORY[0x1E6960770];
  v110 = *MEMORY[0x1E6960740];
  v111 = *MEMORY[0x1E69606D0];
  v112 = v104;
  v113 = v105;
  v114 = *MEMORY[0x1E6960C40];
  v115 = *MEMORY[0x1E6960C50];
  v116 = *MEMORY[0x1E6960C48];
  v117 = *MEMORY[0x1E6960150];
  v118 = *MEMORY[0x1E6960160];
  v119 = *MEMORY[0x1E6960158];
  v120 = *MEMORY[0x1E6960148];
  v121 = *MEMORY[0x1E6960168];
  v122 = *MEMORY[0x1E6965CB8];
  v123 = *MEMORY[0x1E6965CE8];
  v124 = *MEMORY[0x1E6965EC8];
  v125 = v32;
  v126 = v36;
  v127 = v41;
  v128 = @"ColorInfoGuessedBy";
  v129 = *MEMORY[0x1E6965C60];
  v130 = *MEMORY[0x1E6965C88];
  v131 = *MEMORY[0x1E6965C80];
  v132 = @"SceneReferredExtendedLinear";
  v133 = *MEMORY[0x1E6962E30];
  v134 = *MEMORY[0x1E6960470];
  v135 = *MEMORY[0x1E6960498];
  v136 = *MEMORY[0x1E69604A0];
  v137 = *MEMORY[0x1E6960548];
  v138 = *MEMORY[0x1E6960430];
  v139 = *MEMORY[0x1E695FFF0];
  v140 = @"auxi";
  v141 = @"ccst";
  v142 = @"slmC";
  v143 = *MEMORY[0x1E69604F0];
  v144 = *MEMORY[0x1E69604C0];
  v145 = @"FECGroupID";
  v146 = @"FECLastFrameInGroup";
  v147 = @"FECLevelOfProtection";
  v148 = @"QualityMetrics";
  v149 = @"EncodedFrameAvgQP";
  v150 = @"PadByteCount";
  v151 = @"VRAWidth";
  v152 = @"VRAHeight";
  v153 = *MEMORY[0x1E6965D48];
  v154 = @"dvvC";
  v155 = @"disc";
  v156 = *MEMORY[0x1E69601C0];
  v157 = *MEMORY[0x1E69601A0];
  v158 = *MEMORY[0x1E69601B0];
  v159 = *MEMORY[0x1E69601B8];
  v160 = *MEMORY[0x1E6960190];
  v161 = *MEMORY[0x1E6960198];
  v162 = *MEMORY[0x1E69601A8];
  v163 = *MEMORY[0x1E6960438];
  v164 = *MEMORY[0x1E6960440];
  v165 = *MEMORY[0x1E6960428];
  v166 = v138;
  v167 = *MEMORY[0x1E69603E0];
  v168 = @"av1C";
  v169 = *MEMORY[0x1E6965EE8];
  v170 = *MEMORY[0x1E6965DE0];
  v171 = *MEMORY[0x1E6960420];
  v172 = @"vpcC";
  v28 = *MEMORY[0x1E695E480];
  v29 = 0;
  sVTParavirtualizationStringToKeyIndexDict = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 212, MEMORY[0x1E695E9D8], 0);
  do
  {
    CFDictionaryAddValue(sVTParavirtualizationStringToKeyIndexDict, values[v29], v29);
    v29 = v29 + 1;
  }

  while (v29 != 212);
  result = CFArrayCreate(v28, values, 212, MEMORY[0x1E695E9C0]);
  sVTParavirtualizationArrayOfIndexedKeys = result;
  return result;
}

uint64_t VTParavirtualizationCreateSampleBufferFromSerializedAtomDataBlockBuffer(int a1, CMBlockBufferRef theBuffer, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *MEMORY[0x1E69E9840];
  if (CMBlockBufferIsRangeContiguous(theBuffer, 0, 0))
  {
    if (a6)
    {
      if (a4)
      {
        v8 = MEMORY[0x193AE3010](&sVTParavirtualizationInitIndexedKeysOnce, vtParavirtualizationInitializeIndexedKeys);
        if (v8 || (v8 = FigAtomStreamInitWithBBuf(), v8))
        {
          value_low = v8;
        }

        else
        {
          FigAtomStreamGetCurrentAtomTypeAndDataLength();
          VTParavirtualizationCreateSampleBufferFromSerializedAtomDataBlockBuffer_cold_1(&outputPresentationTimeStamp);
          value_low = LODWORD(outputPresentationTimeStamp.value);
        }

        goto LABEL_8;
      }

      VTParavirtualizationCreateSampleBufferFromSerializedAtomDataBlockBuffer_cold_14();
    }

    else
    {
      VTParavirtualizationCreateSampleBufferFromSerializedAtomDataBlockBuffer_cold_15();
    }

    value_low = 0;
LABEL_8:
    free(0);
    free(0);
    free(0);
    return value_low;
  }

  return 4294954516;
}

CMItemCount vtParavirtualizationAtomWriterAppendNumSamples(opaqueCMSampleBuffer *a1)
{
  result = CMSampleBufferGetNumSamples(a1);
  if (result)
  {
    return vtParavirtualizationAtomWriterAppendAtomWithMemoryBlock();
  }

  return result;
}

void vtParavirtualizationAtomWriterAppendCFType(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = CFGetTypeID(a1);
  if (v6 == CFArrayGetTypeID())
  {

    vtParavirtualizationAtomWriterAppendCFArray();
  }

  else if (v6 == CFDictionaryGetTypeID())
  {

    vtParavirtualizationAtomWriterAppendCFDictionary(a1, a2, a3);
  }

  else if (v6 == CFNumberGetTypeID() || v6 == CFBooleanGetTypeID() || v6 == CFStringGetTypeID() || v6 == CFDataGetTypeID() || v6 == CFDateGetTypeID())
  {

    vtParavirtualizationAtomWriterAppendCFPropertyList();
  }

  else if (v6 == CGColorSpaceGetTypeID())
  {

    vtParavirtualizationAtomWriterAppendCGColorSpace(a1);
  }

  else if (v6 == CFURLGetTypeID())
  {

    vtParavirtualizationAtomWriterAppendCFURL(a1);
  }

  else if (v6 == CMFormatDescriptionGetTypeID())
  {

    vtParavirtualizationAtomWriterAppendCMFormatDescription(a1, a3);
  }

  else if (v6 == CFNullGetTypeID())
  {

    vtParavirtualizationAtomWriterAppendNULL();
  }
}

CFPropertyListRef vtParavirtualizationAtomWriterAppendCGColorSpace(CGColorSpace *a1)
{
  result = CGColorSpaceCopyPropertyList(a1);
  if (result)
  {
    v2 = result;
    appended = vtParavirtualizationAtomWriterAppendCFPropertyList();
    CFRelease(v2);
    return appended;
  }

  return result;
}

uint64_t vtParavirtualizationAtomWriterAppendCFURL(const __CFURL *a1)
{
  v1 = CFURLCopyAbsoluteURL(a1);
  if (v1)
  {
    v2 = v1;
    if (CFURLGetString(v1))
    {
      appended = vtParavirtualizationAtomWriterAppendCFPropertyList();
    }

    else
    {
      vtParavirtualizationAtomWriterAppendCFURL_cold_1(&v5);
      appended = v5;
    }

    CFRelease(v2);
  }

  else
  {
    vtParavirtualizationAtomWriterAppendCFURL_cold_2(&v6);
    return v6;
  }

  return appended;
}

uint64_t vtParavirtualizationAtomDataReaderCopyCFDictionary(uint64_t a1, uint64_t a2)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v4 = Mutable;
  if (a2)
  {
    if (!Mutable)
    {
      vtParavirtualizationAtomDataReaderCopyCFDictionary_cold_5(v9);
      return v9[0];
    }

    v5 = FigAtomStreamInitWithParent();
    if (v5)
    {
      v8 = v5;
      goto LABEL_7;
    }

    CurrentAtomTypeAndDataLength = FigAtomStreamGetCurrentAtomTypeAndDataLength();
    if (CurrentAtomTypeAndDataLength)
    {
      v8 = CurrentAtomTypeAndDataLength;
      goto LABEL_6;
    }

    vtParavirtualizationAtomDataReaderCopyCFDictionary_cold_1(v9);
  }

  else
  {
    vtParavirtualizationAtomDataReaderCopyCFDictionary_cold_6(v9);
  }

  v8 = v9[0];
LABEL_6:
  if (v4)
  {
LABEL_7:
    CFRelease(v4);
  }

  return v8;
}

uint64_t vtParavirtualizationAtomDataReaderCopyCFType(uint64_t a1, int a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 <= 1685349749)
  {
    if (a2 > 1668051570)
    {
      if (a2 == 1668051571)
      {
        if (a3)
        {
          vtParavirtualizationAtomDataReaderCopyCFType_cold_2(a1, a3, &v13, a4, a5, a6, a7, a8);
          return v13;
        }

        goto LABEL_30;
      }

      if (a2 == 1684628340)
      {

        return vtParavirtualizationAtomDataReaderCopyCFDictionary(a1, a3);
      }

      v10 = 1684108406;
      goto LABEL_29;
    }

    if (a2 == 1634886009)
    {

      return vtParavirtualizationAtomDataReaderCopyCFArray(a1, a3);
    }

    v10 = 1651862646;
LABEL_29:
    if (a2 != v10)
    {
LABEL_30:

      return FigSignalErrorAtGM();
    }

    goto LABEL_33;
  }

  if (a2 > 1853189227)
  {
    if (a2 == 1853189228)
    {
      v11 = CFRetain(*MEMORY[0x1E695E738]);
      result = 0;
      *a3 = v11;
      return result;
    }

    if (a2 == 1970433142)
    {
      if (a3)
      {
        vtParavirtualizationAtomDataReaderCopyCFType_cold_1(a1, a3, &v12, a4, a5, a6, a7, a8);
        return v12;
      }

      goto LABEL_30;
    }

    v10 = 1937011307;
    goto LABEL_29;
  }

  if (a2 == 1685349750)
  {
LABEL_33:

    return vtParavirtualizationAtomDataReaderCopyCFPropertyList(a1, a3);
  }

  if (a2 != 1717859171)
  {
    v10 = 1852662390;
    goto LABEL_29;
  }

  return vtParavirtualizationAtomDataReaderCopyCMFormatDescription();
}

uint64_t vtParavirtualizationAtomDataReaderCopyCFArray(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = FigAtomStreamInitWithParent();
    if (v3)
    {
      return v3;
    }

    while (1)
    {
      CurrentAtomTypeAndDataLength = FigAtomStreamGetCurrentAtomTypeAndDataLength();
      if (CurrentAtomTypeAndDataLength)
      {
        break;
      }

      Atom = FigAtomStreamAdvanceToNextAtom();
      if (Atom == -12890)
      {
        v6 = 0;
        *a2 = 0;
        return v6;
      }

      v6 = Atom;
      if (Atom)
      {
        return v6;
      }
    }

    return CurrentAtomTypeAndDataLength;
  }

  else
  {

    return FigSignalErrorAtGM();
  }
}

void *__getFigCPECryptorCreateCryptorFromSerializedRecipeSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!MediaToolboxLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 0x40000000;
    v5[3] = __MediaToolboxLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_tmp_69;
    v5[5] = v5;
    v6 = xmmword_1E72C8390;
    v7 = 0;
    MediaToolboxLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v5[0];
    v2 = MediaToolboxLibraryCore_frameworkLibrary;
    if (MediaToolboxLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = MediaToolboxLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "FigCPECryptorCreateCryptorFromSerializedRecipe");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getFigCPECryptorCreateCryptorFromSerializedRecipeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MediaToolboxLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  MediaToolboxLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_10()
{

  return FigAtomWriterInitWithParent();
}

uint64_t OUTLINED_FUNCTION_4_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;

  return vtParavirtualizationAtomDataReaderCopyCFPropertyList(a1, &a10);
}

uint64_t VTIsBackgroundRunningSupportedForClientPID(uint64_t a1, double a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if (VTIsBackgroundRunningSupportedForClientPID_onceToken != -1)
  {
    VTIsBackgroundRunningSupportedForClientPID_cold_1();
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_19:
    VTIsBackgroundRunningSupportedForClientPID_cold_2();
    return 0;
  }

  if (!a1)
  {
    goto LABEL_19;
  }

LABEL_3:
  gotLoadHelper_x8___DASContinuedProcessingTaskAssertionTag(a2);
  v4 = **(v3 + 1328);
  v5 = objc_autoreleasePoolPush();
  v6 = [MEMORY[0x1E69C75E0] identifierWithPid:a1];
  v7 = [MEMORY[0x1E69C75D0] handleForIdentifier:v6 error:0];
  if (!v7 || (v15 = 0u, v16 = 0u, v17 = 0u, v18 = 0u, v8 = [objc_msgSend(v7 "currentState")], (v9 = objc_msgSend(v8, "countByEnumeratingWithState:objects:count:", &v15, v19, 16)) == 0))
  {
    objc_autoreleasePoolPop(v5);
    return 0;
  }

  v10 = v9;
  v11 = *v16;
  while (2)
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v16 != v11)
      {
        objc_enumerationMutation(v8);
      }

      if ([*(*(&v15 + 1) + 8 * i) isEqualToString:v4])
      {
        v13 = 1;
        goto LABEL_16;
      }
    }

    v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v10)
    {
      continue;
    }

    break;
  }

  v13 = 0;
LABEL_16:
  objc_autoreleasePoolPop(v5);
  return v13;
}

void VTPixelRotationSessionInvalidate(VTPixelRotationSessionRef session)
{
  if (session)
  {
    if (!*(session + 16))
    {
      *(session + 16) = 1;
    }
  }
}

uint64_t RegisterVTPixelRotationSession()
{
  v0 = _CFRuntimeRegisterClass();
  sVTPixelRotationSessionID = v0;
  sVTPixelRotationSessionPropertyCallbacks = 0;
  *algn_1ED6D4108 = VTPixelRotationSessionCopySupportedPropertyDictionary;
  qword_1ED6D4110 = VTPixelRotationSessionSetProperty;
  qword_1ED6D4118 = VTPixelRotationSessionCopyProperty;
  qword_1ED6D4120 = VTPixelRotationSessionSetProperties;
  qword_1ED6D4128 = VTPixelRotationSessionCopySerializableProperties;

  return VTSessionRegisterCallbacksForTypeID(&sVTPixelRotationSessionPropertyCallbacks, v0);
}

uint64_t VTPixelRotationSessionCreateWithRotationAndFlip(uint64_t a1, int a2, char a3, char a4, uint64_t *a5)
{
  FigKTraceInit();
  if (a2 > 179)
  {
    if (a2 != 180 && a2 != 270)
    {
LABEL_13:
      fig_log_get_emitter();

      return FigSignalErrorAtGM();
    }
  }

  else if (a2 && a2 != 90)
  {
    goto LABEL_13;
  }

  if (!a5)
  {
    goto LABEL_13;
  }

  MEMORY[0x193AE3010](&VTPixelRotationSessionGetTypeID_sRegisterVTPixelRotationSessionOnce, RegisterVTPixelRotationSession);
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    goto LABEL_13;
  }

  v11 = Instance;
  MEMORY[0x193AE3010](&sReadGlobalVTMTSPropertiesOnce, ReadGlobalVTMTSProperties);
  *(v11 + 40) = 0;
  *(v11 + 52) = a2;
  *(v11 + 56) = a3;
  *(v11 + 57) = a4;
  *(v11 + 32) = 0;
  *(v11 + 135) = globalEnableHardwareAcceleratedTransfer;
  *(v11 + 133) = globalEnableGPUAcceleratedTransfer;
  *(v11 + 134) = 0;
  *(v11 + 132) = globalEnableSoftwareTransfer;
  *(v11 + 129) = 0;
  *(v11 + 208) = 0;
  *(v11 + 216) = 0;
  if (globalUsePixelTransferChain == 1)
  {
    VTPixelTransferChainCreate(a1, 0, (v11 + 40));
  }

  *(v11 + 48) = globalUsePixelTransferGraph;
  *(v11 + 49) = globalAllowFallbacks;
  *(v11 + 232) = 0;
  *(v11 + 152) = 0;
  *(v11 + 144) = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v12 = VTCelesteRotationNodeCreate(v11 + 224);
  if (v12)
  {
    CFRelease(v11);
  }

  else
  {
    *(v11 + 276) = 0;
    *(v11 + 268) = 0;
    v14.f64[0] = NAN;
    v14.f64[1] = NAN;
    v15 = vnegq_f64(v14);
    *(v11 + 252) = v15;
    *(v11 + 324) = 0;
    *(v11 + 316) = 0;
    *(v11 + 300) = v15;
    *a5 = v11;
  }

  return v12;
}

void ReadGlobalVTMTSProperties()
{
  globalEnableHardwareAcceleratedTransfer = 1;
  globalEnableGPUAcceleratedTransfer = 1;
  globalEnableSoftwareTransfer = 1;
  globalUsePixelTransferChain = 1;
  globalUsePixelTransferGraph = 1;
  globalAllowFallbacks = 1;
}

uint64_t VTPixelRotationSessionCopySupportedPropertyDictionary(uint64_t a1, CFDictionaryRef *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v27 = 0;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  v19 = 0;
  v18 = 0u;
  v17 = 0u;
  v16 = 0u;
  v15 = 0u;
  v14 = 0u;
  *a2 = 0;
  if (!*(a1 + 16))
  {
    keys = @"PropertyType";
    v21 = @"ReadWriteStatus";
    values = @"Boolean";
    v13 = @"ReadWrite";
    v4 = *MEMORY[0x1E695E480];
    v5 = CFDictionaryCreate(*MEMORY[0x1E695E480], &keys, &values, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (v5)
    {
      v6 = v5;
      keys = @"PropertyType";
      v21 = @"ReadWriteStatus";
      values = @"Boolean";
      v13 = @"ReadOnly";
      v7 = CFDictionaryCreate(v4, &keys, &values, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (v7)
      {
        v8 = v7;
        v21 = @"FlipVerticalOrientation";
        values = v6;
        v13 = v6;
        *&v22 = @"Rotation";
        *&v14 = v6;
        *(&v14 + 1) = v7;
        *(&v22 + 1) = @"ScalingSupported";
        *&v23 = @"NonIntegralSourceBoundingOriginSupported";
        *&v15 = v7;
        *(&v15 + 1) = v6;
        *(&v23 + 1) = @"ForceDisableVectorInstructions";
        *&v24 = @"ForceSingleThreaded";
        *&v16 = v6;
        *(&v16 + 1) = v6;
        *(&v24 + 1) = @"EnableSoftwareTransfer";
        *&v25 = @"AllowPixelTransferChain";
        *&v17 = v6;
        *(&v17 + 1) = v6;
        *(&v25 + 1) = @"AllowPixelTransferGraph";
        *&v26 = @"EnableGPUAcceleratedTransfer";
        *&v18 = v6;
        *(&v18 + 1) = v6;
        *(&v26 + 1) = @"SetGPUPriorityLow";
        v27 = @"EnableHardwareAcceleratedTransfer";
        v28 = @"Label";
        v19 = v6;
        keys = v6;
        v9 = CFDictionaryCreate(v4, &keys, &values, 14, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (v9)
        {
          v10 = 0;
          *a2 = v9;
        }

        else
        {
          VTPixelRotationSessionCopySupportedPropertyDictionary_cold_1(&v11);
          v10 = v11;
        }

        CFRelease(v6);
        CFRelease(v8);
        return v10;
      }

      VTPixelRotationSessionCopySupportedPropertyDictionary_cold_2(v6, &v11);
    }

    else
    {
      VTPixelRotationSessionCopySupportedPropertyDictionary_cold_3(&v11);
    }

    return v11;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t VTPixelRotationSessionSetProperty(uint64_t a1, __CFString *a2, const __CFBoolean *a3)
{
  v101 = *MEMORY[0x1E69E9840];
  v99 = 0;
  if (!*(a1 + 16))
  {
    if (FigAtomicIncrement32() != 1)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      v8 = fig_log_call_emit_and_clean_up_after_send_and_compose();
      VTPixelTransferSessionThreadBearTrap(v8);
    }

    VTMetalTransferSessionCopySupportedPropertyDictionary(*(a1 + 136), &v99);
    if (CFEqual(a2, @"FlipHorizontalOrientation"))
    {
      if (*MEMORY[0x1E695E738] == a3 || a3 == 0)
      {
        a3 = *MEMORY[0x1E695E4C0];
      }

      TypeID = CFBooleanGetTypeID();
      if (TypeID == CFGetTypeID(a3))
      {
        v11 = *(a1 + 56);
        if (v11 != CFBooleanGetValue(a3))
        {
          x_low = 0;
          *(a1 + 56) = CFBooleanGetValue(a3);
LABEL_32:
          *(a1 + 32) = 0;
          goto LABEL_33;
        }

        goto LABEL_24;
      }

      goto LABEL_29;
    }

    if (CFEqual(a2, @"FlipVerticalOrientation"))
    {
      if (*MEMORY[0x1E695E738] == a3 || a3 == 0)
      {
        a3 = *MEMORY[0x1E695E4C0];
      }

      v14 = CFBooleanGetTypeID();
      if (v14 == CFGetTypeID(a3))
      {
        v15 = *(a1 + 57);
        if (v15 != CFBooleanGetValue(a3))
        {
          x_low = 0;
          *(a1 + 57) = CFBooleanGetValue(a3);
          goto LABEL_32;
        }

        goto LABEL_24;
      }

      goto LABEL_29;
    }

    if (CFEqual(a2, @"Rotation"))
    {
      VTPixelRotationSessionSetProperty_cold_1(a1, a3, cf);
      x_low = LODWORD(cf[0].origin.x);
      goto LABEL_33;
    }

    v16 = @"RotationEnableHighSpeedTransfer";
    if (CFEqual(a2, @"RotationEnableHighSpeedTransfer"))
    {
      v17 = *(a1 + 224);
      if (!v17)
      {
LABEL_29:
        fig_log_get_emitter();
        v18 = FigSignalErrorAtGM();
LABEL_30:
        x_low = v18;
        goto LABEL_33;
      }

LABEL_43:
      v18 = VTPixelTransferNodeCelesteRotationSetProperty(v17, v16, a3);
      goto LABEL_30;
    }

    v16 = @"RotationZeroFillData";
    if (CFEqual(a2, @"RotationZeroFillData"))
    {
      v17 = *(a1 + 224);
      if (!v17)
      {
        goto LABEL_29;
      }

      goto LABEL_43;
    }

    v16 = @"RotationEnableHistogram";
    if (CFEqual(a2, @"RotationEnableHistogram"))
    {
      v17 = *(a1 + 224);
      if (!v17)
      {
        goto LABEL_29;
      }

      goto LABEL_43;
    }

    v16 = @"RotationHistogramRectangle";
    if (CFEqual(a2, @"RotationHistogramRectangle"))
    {
      v17 = *(a1 + 224);
      if (!v17)
      {
        goto LABEL_29;
      }

      goto LABEL_43;
    }

    if (FigCFEqual())
    {
      if (*MEMORY[0x1E695E738] == a3)
      {
        a3 = 0;
      }

      if (a3)
      {
        v19 = CFGetTypeID(a3);
        if (v19 != CFStringGetTypeID())
        {
          goto LABEL_29;
        }
      }

      if (!FigCFEqual())
      {
        v20 = *(a1 + 104);
        *(a1 + 104) = a3;
        if (!a3)
        {
          goto LABEL_61;
        }

        goto LABEL_60;
      }

      goto LABEL_24;
    }

    if (FigCFEqual())
    {
      if (*MEMORY[0x1E695E738] == a3)
      {
        a3 = 0;
      }

      if (a3)
      {
        v21 = CFGetTypeID(a3);
        if (v21 != CFStringGetTypeID())
        {
          goto LABEL_29;
        }
      }

      if (FigCFEqual())
      {
        goto LABEL_24;
      }

      v20 = *(a1 + 112);
      *(a1 + 112) = a3;
      if (!a3)
      {
LABEL_61:
        if (!v20)
        {
LABEL_64:
          x_low = 0;
          goto LABEL_32;
        }

        v22 = v20;
LABEL_63:
        CFRelease(v22);
        goto LABEL_64;
      }

LABEL_60:
      CFRetain(a3);
      goto LABEL_61;
    }

    if (FigCFEqual())
    {
      if (a3)
      {
        v23 = CFGetTypeID(a3);
        if (v23 != CFDataGetTypeID())
        {
          goto LABEL_29;
        }
      }

      if (*MEMORY[0x1E695E738] == a3)
      {
        v24 = 0;
      }

      else
      {
        v24 = a3;
      }

      if (!FigCFEqual())
      {
        v25 = *(a1 + 88);
        *(a1 + 88) = v24;
        if (v24)
        {
          CFRetain(v24);
        }

        if (!v25)
        {
          goto LABEL_64;
        }

        v22 = v25;
        goto LABEL_63;
      }

      goto LABEL_24;
    }

    if (FigCFEqual())
    {
      if (*MEMORY[0x1E695E738] == a3)
      {
        a3 = 0;
      }

      if (a3)
      {
        v26 = CFGetTypeID(a3);
        if (v26 != CFStringGetTypeID())
        {
          goto LABEL_29;
        }
      }

      if (FigCFEqual())
      {
        goto LABEL_24;
      }

      v20 = *(a1 + 96);
      *(a1 + 96) = a3;
      if (!a3)
      {
        goto LABEL_61;
      }

      goto LABEL_60;
    }

    if (FigCFEqual())
    {
      if (*MEMORY[0x1E695E738] == a3 || a3 == 0)
      {
        a3 = *MEMORY[0x1E695E4C0];
      }

      v28 = CFBooleanGetTypeID();
      if (v28 != CFGetTypeID(a3))
      {
        goto LABEL_29;
      }

      v29 = *(a1 + 129);
      if (v29 != CFBooleanGetValue(a3))
      {
        x_low = 0;
        *(a1 + 129) = CFBooleanGetValue(a3);
        goto LABEL_32;
      }

      goto LABEL_24;
    }

    if (FigCFEqual())
    {
      if (!a3 || *MEMORY[0x1E695E738] == a3)
      {
        a3 = *MEMORY[0x1E695E4C0];
        if (!*MEMORY[0x1E695E4C0])
        {
          goto LABEL_29;
        }
      }

      v30 = CFBooleanGetTypeID();
      if (v30 != CFGetTypeID(a3))
      {
        goto LABEL_29;
      }

      v31 = *(a1 + 130);
      if (v31 != CFBooleanGetValue(a3))
      {
        x_low = 0;
        *(a1 + 130) = CFBooleanGetValue(a3);
        goto LABEL_32;
      }

      goto LABEL_24;
    }

    if (FigCFEqual())
    {
      if (!a3 || *MEMORY[0x1E695E738] == a3)
      {
        v32 = (globalEnableSoftwareTransfer ? MEMORY[0x1E695E4D0] : MEMORY[0x1E695E4C0]);
        a3 = *v32;
        if (!*v32)
        {
          goto LABEL_29;
        }
      }

      v33 = CFBooleanGetTypeID();
      if (v33 != CFGetTypeID(a3))
      {
        goto LABEL_29;
      }

      v34 = *(a1 + 132);
      if (v34 != CFBooleanGetValue(a3))
      {
        x_low = 0;
        *(a1 + 132) = CFBooleanGetValue(a3);
        goto LABEL_32;
      }

      goto LABEL_24;
    }

    if (FigCFEqual())
    {
      if (globalUsePixelTransferChain)
      {
        v35 = MEMORY[0x1E695E4D0];
      }

      else
      {
        v35 = MEMORY[0x1E695E4C0];
      }

      if (*MEMORY[0x1E695E738] == a3 || a3 == 0)
      {
        a3 = *v35;
      }

      v37 = CFBooleanGetTypeID();
      if (v37 != CFGetTypeID(a3))
      {
        goto LABEL_29;
      }

      v38 = (a1 + 40);
      if (!*(a1 + 40))
      {
        goto LABEL_347;
      }

      Value = CFBooleanGetValue(a3);
      v40 = *v38;
      if (!Value)
      {
        if (v40)
        {
          CFRelease(v40);
          *v38 = 0;
        }

        goto LABEL_64;
      }

      if (!v40)
      {
LABEL_347:
        if (CFBooleanGetValue(a3))
        {
          v41 = CFGetAllocator(a1);
          VTPixelTransferChainCreate(v41, 0, (a1 + 40));
          goto LABEL_64;
        }
      }

      goto LABEL_24;
    }

    if (FigCFEqual())
    {
      if (globalUsePixelTransferGraph)
      {
        v42 = MEMORY[0x1E695E4D0];
      }

      else
      {
        v42 = MEMORY[0x1E695E4C0];
      }

      if (*MEMORY[0x1E695E738] == a3 || a3 == 0)
      {
        a3 = *v42;
      }

      v44 = CFBooleanGetTypeID();
      if (v44 != CFGetTypeID(a3))
      {
        goto LABEL_29;
      }

      v45 = CFBooleanGetValue(a3);
      if (v45 != *(a1 + 48))
      {
        x_low = 0;
        *(a1 + 48) = v45;
        goto LABEL_32;
      }

      goto LABEL_24;
    }

    if (FigCFEqual())
    {
      if (globalEnableGPUAcceleratedTransfer)
      {
        v46 = MEMORY[0x1E695E4D0];
      }

      else
      {
        v46 = MEMORY[0x1E695E4C0];
      }

      if (*MEMORY[0x1E695E738] == a3 || a3 == 0)
      {
        a3 = *v46;
      }

      v48 = CFBooleanGetTypeID();
      if (v48 != CFGetTypeID(a3))
      {
        goto LABEL_29;
      }

      v49 = *(a1 + 133);
      if (v49 != CFBooleanGetValue(a3))
      {
        x_low = 0;
        *(a1 + 133) = CFBooleanGetValue(a3);
        goto LABEL_32;
      }

      goto LABEL_24;
    }

    if (FigCFEqual())
    {
      if (*MEMORY[0x1E695E738] == a3 || a3 == 0)
      {
        a3 = *MEMORY[0x1E695E4C0];
      }

      v51 = CFBooleanGetTypeID();
      if (v51 != CFGetTypeID(a3))
      {
        goto LABEL_29;
      }

      v52 = *(a1 + 134);
      if (v52 != CFBooleanGetValue(a3))
      {
        x_low = 0;
        *(a1 + 134) = CFBooleanGetValue(a3);
        goto LABEL_32;
      }

      goto LABEL_24;
    }

    if (FigCFEqual())
    {
      if (globalEnableHardwareAcceleratedTransfer)
      {
        v53 = MEMORY[0x1E695E4D0];
      }

      else
      {
        v53 = MEMORY[0x1E695E4C0];
      }

      if (*MEMORY[0x1E695E738] == a3 || a3 == 0)
      {
        a3 = *v53;
      }

      v55 = CFBooleanGetTypeID();
      if (v55 != CFGetTypeID(a3))
      {
        goto LABEL_29;
      }

      v56 = *(a1 + 135);
      if (v56 != CFBooleanGetValue(a3))
      {
        x_low = 0;
        *(a1 + 135) = CFBooleanGetValue(a3);
        goto LABEL_32;
      }

      goto LABEL_24;
    }

    if (CFEqual(a2, @"PQEOTFOpticalScale"))
    {
      v57 = *(a1 + 136);
      if (v57)
      {
        v18 = VTSessionSetProperty(v57, a2, a3);
        if (v18)
        {
          goto LABEL_30;
        }
      }

      VTPRS_AddOrRemoveFromDictionary(*(a1 + 144), a2, a3);
      if (!a3)
      {
        v61 = *(a1 + 176);
        if (v61)
        {
          CFRelease(v61);
          x_low = 0;
          *(a1 + 176) = 0;
          goto LABEL_33;
        }

        goto LABEL_24;
      }

      v58 = CFGetTypeID(a3);
      if (v58 != CFNumberGetTypeID())
      {
        goto LABEL_29;
      }

      if (!FigCFEqual())
      {
        v20 = *(a1 + 176);
        *(a1 + 176) = a3;
        goto LABEL_60;
      }

LABEL_24:
      x_low = 0;
LABEL_33:
      FigAtomicDecrement32();
      return x_low;
    }

    if (CFEqual(a2, @"PQInvEOTFOpticalScale"))
    {
      v59 = *(a1 + 136);
      if (v59)
      {
        v18 = VTSessionSetProperty(v59, a2, a3);
        if (v18)
        {
          goto LABEL_30;
        }
      }

      VTPRS_AddOrRemoveFromDictionary(*(a1 + 144), a2, a3);
      if (!a3)
      {
        v64 = *(a1 + 184);
        if (v64)
        {
          CFRelease(v64);
          x_low = 0;
          *(a1 + 184) = 0;
          goto LABEL_33;
        }

        goto LABEL_24;
      }

      v60 = CFGetTypeID(a3);
      if (v60 != CFNumberGetTypeID())
      {
        goto LABEL_29;
      }

      if (!FigCFEqual())
      {
        v20 = *(a1 + 184);
        *(a1 + 184) = a3;
        goto LABEL_60;
      }

      goto LABEL_24;
    }

    if (CFEqual(a2, @"HLGOETFOpticalScale"))
    {
      v62 = *(a1 + 136);
      if (v62)
      {
        v18 = VTSessionSetProperty(v62, a2, a3);
        if (v18)
        {
          goto LABEL_30;
        }
      }

      VTPRS_AddOrRemoveFromDictionary(*(a1 + 144), a2, a3);
      if (!a3)
      {
        v67 = *(a1 + 192);
        if (v67)
        {
          CFRelease(v67);
          x_low = 0;
          *(a1 + 192) = 0;
          goto LABEL_33;
        }

        goto LABEL_24;
      }

      v63 = CFGetTypeID(a3);
      if (v63 != CFNumberGetTypeID())
      {
        goto LABEL_29;
      }

      if (!FigCFEqual())
      {
        v20 = *(a1 + 192);
        *(a1 + 192) = a3;
        goto LABEL_60;
      }

      goto LABEL_24;
    }

    if (CFEqual(a2, @"HLGInvOETFOpticalScale"))
    {
      v65 = *(a1 + 136);
      if (v65)
      {
        v18 = VTSessionSetProperty(v65, a2, a3);
        if (v18)
        {
          goto LABEL_30;
        }
      }

      VTPRS_AddOrRemoveFromDictionary(*(a1 + 144), a2, a3);
      if (!a3)
      {
        v71 = *(a1 + 200);
        if (v71)
        {
          CFRelease(v71);
          x_low = 0;
          *(a1 + 200) = 0;
          goto LABEL_33;
        }

        goto LABEL_24;
      }

      v66 = CFGetTypeID(a3);
      if (v66 != CFNumberGetTypeID())
      {
        goto LABEL_29;
      }

      if (!FigCFEqual())
      {
        v20 = *(a1 + 200);
        *(a1 + 200) = a3;
        goto LABEL_60;
      }

      goto LABEL_24;
    }

    if (CFEqual(a2, @"DisableDither"))
    {
      if (*MEMORY[0x1E695E738] == a3 || a3 == 0)
      {
        a3 = *MEMORY[0x1E695E4C0];
      }

      if (!a3)
      {
        goto LABEL_29;
      }

      v69 = CFBooleanGetTypeID();
      if (v69 != CFGetTypeID(a3))
      {
        goto LABEL_29;
      }

      v70 = CFBooleanGetValue(a3);
      if (v70 != *(a1 + 208))
      {
        x_low = 0;
        *(a1 + 208) = v70;
        goto LABEL_32;
      }

      goto LABEL_24;
    }

    if (CFEqual(a2, @"vImageFlags"))
    {
      v18 = 0;
      UInt64 = 0;
      if (a3 && *MEMORY[0x1E695E738] != a3)
      {
        UInt64 = *(a1 + 216);
        v73 = CFNumberGetTypeID();
        if (v73 == CFGetTypeID(a3))
        {
          UInt64 = FigCFNumberGetUInt64();
          v18 = 0;
        }

        else
        {
          fig_log_get_emitter();
          v18 = FigSignalErrorAtGM();
        }
      }

      if (UInt64 != *(a1 + 216))
      {
        *(a1 + 216) = UInt64;
        *(a1 + 32) = 0;
      }

      goto LABEL_30;
    }

    if (CFEqual(a2, @"AllowFallbacks"))
    {
      if (!a3 || *MEMORY[0x1E695E738] == a3)
      {
        v74 = (globalAllowFallbacks ? MEMORY[0x1E695E4D0] : MEMORY[0x1E695E4C0]);
        a3 = *v74;
        if (!*v74)
        {
          goto LABEL_29;
        }
      }

      v75 = CFBooleanGetTypeID();
      if (v75 != CFGetTypeID(a3))
      {
        goto LABEL_29;
      }

      v76 = CFBooleanGetValue(a3);
      if (v76 != *(a1 + 49))
      {
        x_low = 0;
        *(a1 + 49) = v76;
        goto LABEL_32;
      }

      goto LABEL_24;
    }

    if (CFEqual(a2, @"ReducedPrecisionFractionalOffsets"))
    {
      if (*MEMORY[0x1E695E738] == a3 || a3 == 0)
      {
        a3 = *MEMORY[0x1E695E4C0];
      }

      if (!a3)
      {
        goto LABEL_29;
      }

      v78 = CFGetTypeID(a3);
      if (v78 != CFBooleanGetTypeID())
      {
        goto LABEL_29;
      }

      v79 = CFBooleanGetValue(a3);
      if (v79 != *(a1 + 234))
      {
        v80 = v79;
        IOSurfaceAcceleratorCapabilityFractionalDimensions = FigGetIOSurfaceAcceleratorCapabilityFractionalDimensions();
        if (v80 && !IOSurfaceAcceleratorCapabilityFractionalDimensions)
        {
          x_low = 4294954394;
          goto LABEL_33;
        }

        *(a1 + 234) = v80;
        v85 = *(a1 + 224);
        if (v85)
        {
          x_low = VTPixelTransferNodeCelesteRotationSetProperty(v85, @"ReducedPrecisionFractionalOffsets", a3);
          goto LABEL_32;
        }

        goto LABEL_64;
      }

      goto LABEL_24;
    }

    if (CFEqual(a2, @"WriteBlackPixelsOutsideDestRect"))
    {
      if (!a3 || FigCFEqual())
      {
        a3 = *MEMORY[0x1E695E4C0];
        if (!*MEMORY[0x1E695E4C0])
        {
          goto LABEL_29;
        }
      }

      v82 = CFBooleanGetTypeID();
      if (v82 != CFGetTypeID(a3))
      {
        goto LABEL_29;
      }

      *(a1 + 232) = CFBooleanGetValue(a3);
      v83 = *(a1 + 136);
      if (v83)
      {
        v18 = VTSessionSetProperty(v83, a2, a3);
        if (v18)
        {
          goto LABEL_30;
        }
      }

LABEL_283:
      VTPRS_AddOrRemoveFromDictionary(*(a1 + 144), a2, a3);
      goto LABEL_24;
    }

    if (!FigCFEqual() && !FigCFEqual())
    {
      if (CFEqual(a2, @"Label"))
      {
        if (a3 && !FigCFEqual())
        {
          v86 = CFGetTypeID(a3);
          if (v86 != CFStringGetTypeID())
          {
            goto LABEL_29;
          }

          v87 = *(a1 + 24);
          *(a1 + 24) = a3;
          CFRetain(a3);
          if (v87)
          {
            CFRelease(v87);
          }
        }

        else
        {
          v84 = *(a1 + 24);
          if (v84)
          {
            CFRelease(v84);
            *(a1 + 24) = 0;
          }
        }

        goto LABEL_283;
      }

      if (CFEqual(a2, @"DownsamplingMode"))
      {
        if (!a3 || FigCFEqual())
        {
          goto LABEL_289;
        }

        if (FigCFEqual())
        {
          x_low = 0;
          *(a1 + 131) = 1;
          goto LABEL_33;
        }

        if (FigCFEqual())
        {
LABEL_289:
          x_low = 0;
          *(a1 + 131) = 0;
          goto LABEL_33;
        }

        goto LABEL_29;
      }

      if (!FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual())
      {
        if (FigCFEqual())
        {
          IsTypeOfDispatchQueue = FigIsTypeOfDispatchQueue();
          v89 = *MEMORY[0x1E695E738];
          if (a3 && !IsTypeOfDispatchQueue && v89 != a3)
          {
            goto LABEL_29;
          }
        }

        else
        {
          if (!FigCFEqual())
          {
            if (CFEqual(a2, @"SourceCropRectangle"))
            {
              if (!a3)
              {
                x_low = 0;
                *(a1 + 276) = 0;
                *(a1 + 268) = 0;
                v97.f64[0] = NAN;
                v97.f64[1] = NAN;
                *(a1 + 252) = vnegq_f64(v97);
                goto LABEL_33;
              }

              if (!FigCFEqual())
              {
                v93 = CFGetTypeID(a3);
                if (v93 != CFDictionaryGetTypeID())
                {
                  goto LABEL_29;
                }
              }

              *(a1 + 268) = 0;
              *(a1 + 276) = 0;
              v94.f64[0] = NAN;
              v94.f64[1] = NAN;
              *(a1 + 252) = vnegq_f64(v94);
              if (!FigCFEqual())
              {
                memset(cf, 0, 32);
                if (CGRectMakeWithDictionaryRepresentation(a3, cf))
                {
                  cf[0] = CGRectStandardize(cf[0]);
                  v103 = CGRectIntegral(cf[0]);
                  x_low = 0;
                  *(a1 + 268) = v103.origin.x;
                  *(a1 + 276) = v103.origin.y;
                  *(a1 + 252) = v103.size.width;
                  *(a1 + 260) = v103.size.height;
                  goto LABEL_33;
                }

                goto LABEL_29;
              }
            }

            else
            {
              if (!CFEqual(a2, @"DestinationRectangle"))
              {
                x_low = 4294954396;
                goto LABEL_33;
              }

              if (!a3)
              {
                x_low = 0;
                *(a1 + 324) = 0;
                *(a1 + 316) = 0;
                v98.f64[0] = NAN;
                v98.f64[1] = NAN;
                *(a1 + 300) = vnegq_f64(v98);
                goto LABEL_33;
              }

              if (!FigCFEqual())
              {
                v95 = CFGetTypeID(a3);
                if (v95 != CFDictionaryGetTypeID())
                {
                  goto LABEL_29;
                }
              }

              *(a1 + 316) = 0;
              *(a1 + 324) = 0;
              v96.f64[0] = NAN;
              v96.f64[1] = NAN;
              *(a1 + 300) = vnegq_f64(v96);
              if (!FigCFEqual())
              {
                memset(cf, 0, 32);
                if (CGRectMakeWithDictionaryRepresentation(a3, cf))
                {
                  cf[0] = CGRectStandardize(cf[0]);
                  v104 = CGRectIntegral(cf[0]);
                  x_low = 0;
                  *(a1 + 316) = v104.origin.x;
                  *(a1 + 324) = v104.origin.y;
                  *(a1 + 300) = v104.size.width;
                  *(a1 + 308) = v104.size.height;
                  goto LABEL_33;
                }

                goto LABEL_29;
              }
            }

            goto LABEL_24;
          }

          v90 = FigIsTypeOfDispatchQueue();
          v89 = *MEMORY[0x1E695E738];
          if (a3 && !v90 && v89 != a3)
          {
            goto LABEL_29;
          }
        }

        cf[0].origin.x = 0.0;
        VTPixelRotationSessionCopyProperty(a1, a2, *MEMORY[0x1E695E480], cf);
        if (!FigCFEqual())
        {
          v91 = *(a1 + 136);
          if (v91)
          {
            v18 = VTSessionSetProperty(v91, a2, a3);
            if (v18)
            {
              goto LABEL_30;
            }
          }

          v92 = *(a1 + 144);
          if (v92)
          {
            if (!a3 || v89 == a3)
            {
              CFDictionaryRemoveValue(v92, a2);
            }

            else
            {
              CFDictionarySetValue(v92, a2, a3);
            }
          }
        }

        if (*&cf[0].origin.x)
        {
          CFRelease(*&cf[0].origin.x);
        }

        goto LABEL_24;
      }
    }

    v18 = VTPixelRotationSessionSetMetalProperty(a1, a2, a3, *(a1 + 136), *(a1 + 144));
    goto LABEL_30;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

void VTPRS_AddOrRemoveFromDictionary(CFMutableDictionaryRef theDict, void *key, const void *a3)
{
  if (theDict)
  {
    if (a3 && !FigCFEqual())
    {

      CFDictionarySetValue(theDict, key, a3);
    }

    else
    {

      CFDictionaryRemoveValue(theDict, key);
    }
  }
}

uint64_t VTPixelRotationSessionCopyProperty(uint64_t a1, const __CFString *a2, const __CFAllocator *a3, void *a4)
{
  *a4 = 0;
  if (!*(a1 + 16))
  {
    if (FigAtomicIncrement32() != 1)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      v10 = fig_log_call_emit_and_clean_up_after_send_and_compose();
      VTPixelTransferSessionThreadBearTrap(v10);
    }

    if (CFEqual(a2, @"FlipHorizontalOrientation"))
    {
      v11 = MEMORY[0x1E695E4D0];
      v12 = *(a1 + 56);
      goto LABEL_11;
    }

    if (CFEqual(a2, @"FlipVerticalOrientation"))
    {
      v11 = MEMORY[0x1E695E4D0];
      v12 = *(a1 + 57);
LABEL_11:
      if (!v12)
      {
        v11 = MEMORY[0x1E695E4C0];
      }

      goto LABEL_13;
    }

    if (CFEqual(a2, @"Rotation"))
    {
      v15 = *(a1 + 52);
      if (v15 > 179)
      {
        if (v15 == 180)
        {
          v11 = &kVTRotation_180;
          goto LABEL_13;
        }

        if (v15 == 270)
        {
          v11 = &kVTRotation_CCW90;
          goto LABEL_13;
        }
      }

      else
      {
        if (!v15)
        {
          v11 = &kVTRotation_0;
          goto LABEL_13;
        }

        if (v15 == 90)
        {
          v11 = &kVTRotation_CW90;
LABEL_13:
          UInt64 = *v11;
LABEL_14:
          UInt64 = CFRetain(UInt64);
LABEL_15:
          v14 = 0;
          *a4 = UInt64;
LABEL_16:
          FigAtomicDecrement32();
          return v14;
        }
      }

      goto LABEL_29;
    }

    v16 = @"ScalingSupported";
    if (CFEqual(a2, @"ScalingSupported") || (v16 = @"NonIntegralSourceBoundingOriginSupported", CFEqual(a2, @"NonIntegralSourceBoundingOriginSupported")))
    {
      v17 = *(a1 + 224);
      if (!v17)
      {
        v11 = MEMORY[0x1E695E4C0];
        goto LABEL_13;
      }

      goto LABEL_25;
    }

    v16 = @"RotationEnableHighSpeedTransfer";
    if (CFEqual(a2, @"RotationEnableHighSpeedTransfer"))
    {
      v17 = *(a1 + 224);
      if (!v17)
      {
LABEL_29:
        fig_log_get_emitter();
        v18 = FigSignalErrorAtGM();
        goto LABEL_30;
      }

LABEL_25:
      v18 = VTPixelTransferNodeCelesteRotationCopyProperty(v17, v16, *MEMORY[0x1E695E480], a4);
      goto LABEL_30;
    }

    v16 = @"RotationZeroFillData";
    if (CFEqual(a2, @"RotationZeroFillData"))
    {
      v17 = *(a1 + 224);
      if (!v17)
      {
        goto LABEL_29;
      }

      goto LABEL_25;
    }

    v16 = @"RotationEnableHistogram";
    if (CFEqual(a2, @"RotationEnableHistogram"))
    {
      v17 = *(a1 + 224);
      if (!v17)
      {
        goto LABEL_29;
      }

      goto LABEL_25;
    }

    v16 = @"RotationHistogramData";
    if (CFEqual(a2, @"RotationHistogramData"))
    {
      v17 = *(a1 + 224);
      if (!v17)
      {
        goto LABEL_29;
      }

      goto LABEL_25;
    }

    v16 = @"RotationHistogramRectangle";
    if (CFEqual(a2, @"RotationHistogramRectangle"))
    {
      v17 = *(a1 + 224);
      if (!v17)
      {
        goto LABEL_29;
      }

      goto LABEL_25;
    }

    if (FigCFEqual())
    {
      UInt64 = *(a1 + 104);
      if (!UInt64)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    if (FigCFEqual())
    {
      UInt64 = *(a1 + 112);
      if (!UInt64)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    if (FigCFEqual())
    {
      UInt64 = *(a1 + 88);
      if (!UInt64)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    if (FigCFEqual())
    {
      UInt64 = *(a1 + 96);
      if (!UInt64)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    if (CFEqual(a2, @"ForceDisableVectorInstructions"))
    {
      v19 = MEMORY[0x1E695E4D0];
      v20 = *(a1 + 129);
    }

    else if (CFEqual(a2, @"ForceSingleThreaded"))
    {
      v19 = MEMORY[0x1E695E4D0];
      v20 = *(a1 + 130);
    }

    else if (CFEqual(a2, @"EnableSoftwareTransfer"))
    {
      v19 = MEMORY[0x1E695E4D0];
      v20 = *(a1 + 132);
    }

    else
    {
      if (CFEqual(a2, @"AllowPixelTransferChain"))
      {
        v19 = MEMORY[0x1E695E4D0];
        v21 = MEMORY[0x1E695E4C0];
        v22 = *(a1 + 40) == 0;
LABEL_68:
        if (v22)
        {
          v19 = v21;
        }

        goto LABEL_70;
      }

      if (CFEqual(a2, @"AllowPixelTransferGraph"))
      {
        v19 = MEMORY[0x1E695E4D0];
        v20 = *(a1 + 48);
      }

      else if (CFEqual(a2, @"EnableGPUAcceleratedTransfer"))
      {
        v19 = MEMORY[0x1E695E4D0];
        v20 = *(a1 + 133);
      }

      else if (CFEqual(a2, @"SetGPUPriorityLow"))
      {
        v19 = MEMORY[0x1E695E4D0];
        v20 = *(a1 + 134);
      }

      else if (CFEqual(a2, @"EnableHardwareAcceleratedTransfer"))
      {
        v19 = MEMORY[0x1E695E4D0];
        v20 = *(a1 + 135);
      }

      else
      {
        if (CFEqual(a2, @"PQEOTFOpticalScale"))
        {
          UInt64 = *(a1 + 176);
          if (!UInt64)
          {
            goto LABEL_15;
          }

          goto LABEL_14;
        }

        if (CFEqual(a2, @"PQInvEOTFOpticalScale"))
        {
          UInt64 = *(a1 + 184);
          if (!UInt64)
          {
            goto LABEL_15;
          }

          goto LABEL_14;
        }

        if (CFEqual(a2, @"HLGOETFOpticalScale"))
        {
          UInt64 = *(a1 + 192);
          if (!UInt64)
          {
            goto LABEL_15;
          }

          goto LABEL_14;
        }

        if (CFEqual(a2, @"HLGInvOETFOpticalScale"))
        {
          UInt64 = *(a1 + 200);
          if (!UInt64)
          {
            goto LABEL_15;
          }

          goto LABEL_14;
        }

        if (CFEqual(a2, @"DisableDither"))
        {
          v19 = MEMORY[0x1E695E4D0];
          v20 = *(a1 + 208);
        }

        else
        {
          if (CFEqual(a2, @"vImageFlags"))
          {
            if (!*(a1 + 216))
            {
              v14 = 0;
              *a4 = 0;
              goto LABEL_16;
            }

            UInt64 = FigCFNumberCreateUInt64();
            goto LABEL_15;
          }

          if (CFEqual(a2, @"AllowFallbacks"))
          {
            v19 = MEMORY[0x1E695E4D0];
            v20 = *(a1 + 49);
          }

          else if (CFEqual(a2, @"ReducedPrecisionFractionalOffsets"))
          {
            v19 = MEMORY[0x1E695E4D0];
            v20 = *(a1 + 234);
          }

          else
          {
            if (CFEqual(a2, @"HardwareSupportsFractionalDimensions"))
            {
              IOSurfaceAcceleratorCapabilityFractionalDimensions = FigGetIOSurfaceAcceleratorCapabilityFractionalDimensions();
              v19 = MEMORY[0x1E695E4D0];
              if (!IOSurfaceAcceleratorCapabilityFractionalDimensions)
              {
                v19 = MEMORY[0x1E695E4C0];
              }

LABEL_70:
              UInt64 = *v19;
              if (!*v19)
              {
                goto LABEL_15;
              }

              goto LABEL_14;
            }

            if (!CFEqual(a2, @"WriteBlackPixelsOutsideDestRect"))
            {
              if (!FigCFEqual() && !FigCFEqual())
              {
                if (CFEqual(a2, @"Label"))
                {
                  UInt64 = *(a1 + 24);
                  if (!UInt64)
                  {
                    goto LABEL_15;
                  }

                  goto LABEL_14;
                }

                if (CFEqual(a2, @"DownsamplingMode"))
                {
                  if (*(a1 + 131))
                  {
                    v19 = &kVTDownsamplingMode_Average;
                  }

                  else
                  {
                    v19 = &kVTDownsamplingMode_Decimate;
                  }

                  goto LABEL_70;
                }

                if (FigCFEqual())
                {
                  v24 = VTGetOnePassScalingPropertyValue(*(a1 + 136), *(a1 + 144));
                  v14 = 0;
                  v25 = MEMORY[0x1E695E4D0];
                  if (!v24)
                  {
                    v25 = MEMORY[0x1E695E4C0];
                  }

                  *a4 = *v25;
                  goto LABEL_16;
                }

                if (FigCFEqual() || FigCFEqual())
                {
                  v26 = *(a1 + 136);
                  if (!v26)
                  {
                    v27 = *(a1 + 144);
                    if (!v27)
                    {
                      v14 = 4294954394;
                      goto LABEL_16;
                    }

                    UInt64 = CFDictionaryGetValue(v27, a2);
                    if (!UInt64)
                    {
                      goto LABEL_15;
                    }

                    goto LABEL_14;
                  }

                  v18 = VTSessionCopyProperty(v26, a2, a3, a4);
LABEL_30:
                  v14 = v18;
                  goto LABEL_16;
                }

                if (CFEqual(a2, @"MostRecentChainDescription"))
                {
                  UInt64 = *(a1 + 40);
                  if (UInt64)
                  {
                    UInt64 = VTPixelTransferChainCopyDescriptionChain(UInt64);
                  }

                  goto LABEL_15;
                }

                if (!FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual())
                {
                  v14 = 4294954396;
                  goto LABEL_16;
                }
              }

              v18 = VTPixelRotationSessionCopyMetalProperty(a2, *MEMORY[0x1E695E480], *(a1 + 136), *(a1 + 144), a4);
              goto LABEL_30;
            }

            v19 = MEMORY[0x1E695E4D0];
            v20 = *(a1 + 232);
          }
        }
      }
    }

    v21 = MEMORY[0x1E695E4C0];
    v22 = v20 == 0;
    goto LABEL_68;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t VTPixelRotationSessionCopyMetalProperty(CFStringRef propertyKey, CFAllocatorRef allocator, VTSessionRef session, int a4, void *propertyValueOut)
{
  if (session)
  {

    return VTSessionCopyProperty(session, propertyKey, allocator, propertyValueOut);
  }

  else
  {
    Value = FigCFDictionaryGetValue();
    if (Value)
    {
      v10 = CFRetain(Value);
      *propertyValueOut = v10;
      if (v10)
      {
        return 0;
      }
    }

    else
    {
      *propertyValueOut = 0;
    }

    return VTMetalTransferSessionCopyDefaultProperty(propertyKey, allocator, propertyValueOut);
  }
}

uint64_t VTPixelRotationSessionSetProperties(uint64_t a1, CFDictionaryRef theDict)
{
  v3 = a1;
  if (*(a1 + 16))
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  else if (theDict)
  {
    v4 = 0;
    CFDictionaryApplyFunction(theDict, vtPixelRotationSessionSetOneProperty, &v3);
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t vtPixelRotationSessionSetOneProperty(__CFString *a1, const __CFBoolean *a2, uint64_t a3)
{
  result = VTPixelRotationSessionSetProperty(*a3, a1, a2);
  if (!*(a3 + 8))
  {
    *(a3 + 8) = result;
  }

  return result;
}

uint64_t VTPixelRotationSessionCopySerializableProperties()
{
  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

OSStatus VTPixelRotationSessionRotateImage(VTPixelRotationSessionRef session, CVPixelBufferRef sourceBuffer, CVPixelBufferRef destinationBuffer)
{
  if (*(session + 16) || !sourceBuffer || !destinationBuffer)
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  v7 = (session + 260);
  v8 = *(session + 252);
  v9 = *(session + 260);
  if (v8 == 0x7FFFFFFFFFFFFFFFLL && v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    Width = CVPixelBufferGetWidth(sourceBuffer);
    Height = CVPixelBufferGetHeight(sourceBuffer);
    v11 = 0.0;
    v12 = 0.0;
  }

  else
  {
    v11 = *(session + 268);
    v12 = *(session + 276);
    Width = v8;
    Height = v9;
  }

  v15 = v7[5];
  v16 = v7[6];
  if (v15 == 0x7FFFFFFFFFFFFFFFLL && v16 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v20 = CVPixelBufferGetWidth(destinationBuffer);
    v21 = CVPixelBufferGetHeight(destinationBuffer);
    v18 = 0.0;
    v19 = 0.0;
  }

  else
  {
    v18 = v7[7];
    v19 = v7[8];
    v20 = v15;
    v21 = v16;
  }

  v22 = CVBufferCopyAttachment(sourceBuffer, *MEMORY[0x1E6965D70], 0);
  Mutable = 0;
  if (v22)
  {
    FigCFDictionaryGetCGFloatIfPresent();
    FigCFDictionaryGetCGFloatIfPresent();
    FigCFDictionaryGetCGFloatIfPresent();
    FigCFDictionaryGetCGFloatIfPresent();
    v31.origin = 0u;
    v31.size = 0u;
    Mutable = 0;
    if (!CGRectIsEmpty(v31))
    {
      v24 = *(session + 13);
      if (v24 <= 179)
      {
        if (v24)
        {
          if (v24 != 90)
          {
            goto LABEL_32;
          }

          goto LABEL_28;
        }

        goto LABEL_27;
      }

      if (v24 == 270)
      {
LABEL_28:
        v26 = v19;
        v27 = v18;
        v28 = v12;
        v29 = v11;
        goto LABEL_29;
      }

      if (v24 == 180)
      {
LABEL_27:
        v26 = v19;
        v27 = v18;
        v28 = v12;
        v29 = v11;
LABEL_29:
        Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (Mutable)
        {
          FigCFDictionarySetCGFloat();
          FigCFDictionarySetCGFloat();
          FigCFDictionarySetCGFloat();
          FigCFDictionarySetCGFloat();
        }

        v12 = v28;
        v11 = v29;
        v19 = v26;
        v18 = v27;
      }
    }
  }

LABEL_32:
  v25 = VTPixelRotationSessionRotateSubImage(session, sourceBuffer, destinationBuffer, v11, v12, Width, Height, v18, v19, v20, v21);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  return v25;
}

uint64_t _VTPixelRotationSessionRotateSubImage(uint64_t a1, __CVBuffer *a2, __CVBuffer *a3, double a4, double a5, double a6, double a7, float64_t a8, float64_t a9, float64_t a10, float64_t a11)
{
  v259[5] = *MEMORY[0x1E69E9840];
  *v228.i64 = a4;
  *&v228.i64[1] = a5;
  *v229.i64 = a6;
  *&v229.i64[1] = a7;
  v226.f64[0] = a8;
  v226.f64[1] = a9;
  v227.f64[0] = a10;
  v227.f64[1] = a11;
  v225 = 0;
  VTIsPixelBufferProtected(a2);
  VTIsPixelBufferProtected(a3);
  PixelFormatType = CVPixelBufferGetPixelFormatType(a2);
  Width = CVPixelBufferGetWidth(a2);
  Height = CVPixelBufferGetHeight(a2);
  v21 = CVPixelBufferGetPixelFormatType(a3);
  v206 = CVPixelBufferGetWidth(a3);
  v204 = CVPixelBufferGetHeight(a3);
  v22 = *MEMORY[0x1E695E480];
  v222 = CVPixelFormatDescriptionCreateWithPixelFormatType(*MEMORY[0x1E695E480], v21);
  buffer = CVPixelBufferGetIOSurface(a2);
  theDict = CVPixelBufferGetIOSurface(a3);
  v23 = *MEMORY[0x1E6965D88];
  v217 = CVBufferCopyAttachment(a2, *MEMORY[0x1E6965D88], 0);
  v24 = *MEMORY[0x1E6965F30];
  v216 = CVBufferCopyAttachment(a2, *MEMORY[0x1E6965F30], 0);
  v25 = *MEMORY[0x1E6965ED0];
  v218 = CVBufferCopyAttachment(a2, *MEMORY[0x1E6965ED0], 0);
  v26 = *MEMORY[0x1E6965F98];
  v221 = CVBufferCopyAttachment(a2, *MEMORY[0x1E6965F98], 0);
  v27 = *MEMORY[0x1E6965EC8];
  v220 = CVBufferCopyAttachment(a2, *MEMORY[0x1E6965EC8], 0);
  v28 = *MEMORY[0x1E6965CE8];
  v219 = CVBufferCopyAttachment(a2, *MEMORY[0x1E6965CE8], 0);
  cf = CFDictionaryCreateMutable(v22, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFAbsoluteTimeGetCurrent();
  if (*(a1 + 16) || (v191 = v25, v193 = v28, v189 = v21, key = v26, v196 = v24, v197 = v23, v199 = v27, allocator = v22, CFEqual(a2, a3)))
  {
    fig_log_get_emitter();
    v29 = FigSignalErrorAtGM();
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = v216;
    v35 = v217;
    v36 = v218;
    v37 = cf;
    v38 = v222;
    goto LABEL_4;
  }

  if (buffer)
  {
    IOSurfaceGetID(buffer);
  }

  v40 = a1;
  if (theDict)
  {
    IOSurfaceGetID(theDict);
  }

  value = *MEMORY[0x1E695E4D0];
  FigCFDictionarySetValue();
  FigCFDictionarySetBoolean();
  v41 = *(a1 + 52);
  if (v41 > 179)
  {
    if (v41 != 180 && v41 != 270)
    {
      goto LABEL_161;
    }
  }

  else if (v41 && v41 != 90)
  {
LABEL_161:
    fig_log_get_emitter();
    v29 = FigSignalErrorAtGM();
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v38 = v222;
    v34 = v216;
    v35 = v217;
    v36 = v218;
    v37 = cf;
    goto LABEL_4;
  }

  v42 = -a6;
  v43 = a4 + a6;
  if (a6 >= 0.0)
  {
    v42 = a6;
    v43 = a4;
  }

  v44 = -a7;
  v45 = a5 + a7;
  if (a7 >= 0.0)
  {
    v44 = a7;
    v45 = a5;
  }

  *v228.i64 = v43;
  *&v228.i64[1] = v45;
  *v229.i64 = v42;
  *&v229.i64[1] = v44;
  v46 = -a10;
  v47 = a8 + a10;
  if (a10 >= 0.0)
  {
    v46 = a10;
    v47 = a8;
  }

  v48 = a9 + a11;
  if (a11 >= 0.0)
  {
    v48 = a9;
  }

  v226.f64[0] = v47;
  v226.f64[1] = v48;
  if (a11 >= 0.0)
  {
    v49 = a11;
  }

  else
  {
    v49 = -a11;
  }

  v227.f64[0] = v46;
  v227.f64[1] = v49;
  v50 = CVPixelBufferGetPixelFormatType(a2);
  v51 = CVPixelBufferGetPixelFormatType(a3);
  v234 = 0;
  v230 = 0;
  v253.i8[0] = 0;
  LOBYTE(v251) = 0;
  *&v238 = 0;
  v259[0] = 0;
  v257.i64[0] = 0;
  v255.i64[0] = 0;
  v52 = CVPixelFormatDescriptionCreateWithPixelFormatType(v22, v50);
  FigCFDictionaryGetBooleanIfPresent();
  if (v52)
  {
    CFRelease(v52);
  }

  v183 = a3;
  v53 = CVPixelFormatDescriptionCreateWithPixelFormatType(v22, v51);
  FigCFDictionaryGetBooleanIfPresent();
  if (v53)
  {
    CFRelease(v53);
  }

  v54 = CVBufferCopyAttachment(a2, key, 0);
  VTCreateYCbCrCFStringsAndProvideDefaults(v54, v253.u8[0], *(a1 + 96), v251, &v234, &v230);
  v55 = CVBufferCopyAttachment(a2, v28, 0);
  v56 = CVBufferCopyAttachment(a2, v199, 0);
  v57 = CVBufferCopyAttachment(a2, v23, 0);
  v58 = CVBufferCopyAttachment(a2, v196, 0);
  v59 = CVBufferCopyAttachment(a2, v191, 0);
  if ((v50 == 1651521076 || v50 == 1647392369) && (v60 = CVBufferCopyAttachment(a2, *MEMORY[0x1E69661F8], 0)) != 0)
  {
    CFRelease(v60);
    VTCreateColorAttachments(0, 0, *MEMORY[0x1E6965DB0], *MEMORY[0x1E6965F60], 0, *MEMORY[0x1E6965FB0], v50, 0, *(a1 + 88), *(a1 + 104), *(a1 + 112), 0, v230, v51, 0, &v238, v259);
  }

  else
  {
    VTCreateColorAttachments(v55, v56, v57, v58, v59, v234, v50, 0, *(a1 + 88), *(a1 + 104), *(a1 + 112), 0, v230, v51, 0, &v238, v259);
  }

  VTCreateColorSpacesFromDictionaries(v238, v259[0], &v257, &v255);
  if (FigCFEqual())
  {
    v61 = 1;
  }

  else
  {
    v61 = FigCFEqual() != 0;
  }

  if (FigCFEqual())
  {
    v62 = 1;
  }

  else
  {
    v62 = FigCFEqual() != 0;
  }

  if (v55)
  {
    v63 = v61;
  }

  else
  {
    v63 = 1;
  }

  if ((v63 & 1) == 0)
  {
    v61 = CGColorSpaceUsesITUR_2100TF(v55);
  }

  v64 = v238;
  *&v238 = 0;
  buffera = v64;
  theDicta = v259[0];
  v259[0] = 0;
  if (v61 || v62)
  {
    v65 = FigCFEqual();
    v66 = v257.i64[0];
    v257.i64[0] = 0;
    v184 = v255.i64[0];
    v185 = v66;
    v255.i64[0] = 0;
    v38 = v222;
    if (!v65)
    {
      goto LABEL_76;
    }
  }

  else
  {
    v67 = v257.i64[0];
    v257.i64[0] = 0;
    v184 = v255.i64[0];
    v185 = v67;
    v255.i64[0] = 0;
    v38 = v222;
  }

  if (FigCFEqual())
  {
    FigCFEqual();
  }

LABEL_76:
  if (v234)
  {
    CFRelease(v234);
  }

  if (v230)
  {
    CFRelease(v230);
  }

  if (v54)
  {
    CFRelease(v54);
  }

  if (v55)
  {
    CFRelease(v55);
  }

  if (v56)
  {
    CFRelease(v56);
  }

  if (v57)
  {
    CFRelease(v57);
  }

  if (v58)
  {
    CFRelease(v58);
  }

  if (v59)
  {
    CFRelease(v59);
  }

  if (v257.i64[0])
  {
    CFRelease(v257.i64[0]);
  }

  if (v255.i64[0])
  {
    CFRelease(v255.i64[0]);
  }

  v187 = 0;
  if (v185 && v184)
  {
    v187 = FigCFEqual() == 0;
  }

  v68 = CVBufferCopyAttachments(a2, kCVAttachmentMode_ShouldPropagate);
  if (v68 | theDicta)
  {
    v69 = v68;
    LOBYTE(v234) = 0;
    FigCFDictionaryGetBooleanIfPresent();
    MutableCopy = FigCFDictionaryCreateMutableCopy();
    if (v69)
    {
      CFRelease(v69);
    }

    CFDictionaryRemoveValue(MutableCopy, *MEMORY[0x1E6965D70]);
    CFDictionaryRemoveValue(MutableCopy, *MEMORY[0x1E6965EF8]);
    CFDictionaryRemoveValue(MutableCopy, *MEMORY[0x1E6965DE8]);
    FigCFDictionarySetValueFromKeyInDict();
    FigCFDictionarySetValueFromKeyInDict();
    FigCFDictionarySetValueFromKeyInDict();
    FigCFDictionarySetValueFromKeyInDict();
    if (v234)
    {
      CFDictionaryRemoveValue(MutableCopy, key);
    }

    if (MutableCopy)
    {
      CVBufferSetAttachments(v183, MutableCopy, kCVAttachmentMode_ShouldPropagate);
      CFRelease(MutableCopy);
    }
  }

  v71 = *(a1 + 32);
  if (!v71)
  {
    v81 = 0;
    goto LABEL_116;
  }

  v73 = *(a1 + 88);
  v72 = *(a1 + 96);
  v75 = *(a1 + 104);
  v74 = *(a1 + 112);
  v76 = *(a1 + 336);
  if (v76 != CVPixelBufferGetPixelFormatType(a2) || (v77 = *(a1 + 400), v77 != CVPixelBufferGetPixelFormatType(v183)))
  {
    v81 = 0;
    v38 = v222;
    goto LABEL_116;
  }

  v38 = v222;
  if (!v72)
  {
    if (v73 || (v81 = 1, v75) && v74)
    {
      v130 = CVBufferCopyAttachment(a2, v193, 0);
      v131 = CVBufferCopyAttachment(a2, v199, 0);
      v132 = CVBufferCopyAttachment(a2, v197, 0);
      v194 = CVBufferCopyAttachment(a2, v196, 0);
      v78 = CVBufferCopyAttachment(a2, v191, 0);
      if (FigCFEqual())
      {
        v80 = Height;
        if (FigCFEqual() && FigCFEqual() && FigCFEqual())
        {
          if (FigCFEqual())
          {
            v133 = v71;
          }

          else
          {
            v133 = 0;
          }
        }

        else
        {
          v133 = 0;
        }
      }

      else
      {
        v133 = 0;
        v80 = Height;
      }

      *(a1 + 32) = v133;
      v36 = v218;
      if (v130)
      {
        CFRelease(v130);
      }

      v35 = v217;
      if (v131)
      {
        CFRelease(v131);
      }

      v34 = v216;
      if (v132)
      {
        CFRelease(v132);
      }

      v38 = v222;
      if (v194)
      {
        CFRelease(v194);
      }

      goto LABEL_247;
    }

LABEL_116:
    *(a1 + 32) = v81;
    v34 = v216;
    v35 = v217;
    v36 = v218;
    v80 = Height;
    v82 = v189;
    goto LABEL_117;
  }

  v78 = CVBufferCopyAttachment(a2, key, 0);
  if (FigCFEqual())
  {
    v79 = v71;
  }

  else
  {
    v79 = 0;
  }

  *(a1 + 32) = v79;
  v34 = v216;
  v35 = v217;
  v36 = v218;
  v80 = Height;
LABEL_247:
  v82 = v189;
  if (v78)
  {
    CFRelease(v78);
  }

LABEL_117:
  *(a1 + 336) = PixelFormatType;
  *(a1 + 344) = Width;
  *(a1 + 352) = v80;
  v83 = v229;
  *(a1 + 368) = v228;
  *(a1 + 384) = v83;
  v84 = *(a1 + 472);
  if (v84)
  {
    CFRelease(v84);
  }

  v85 = *(a1 + 480);
  if (v85)
  {
    CFRelease(v85);
  }

  v86 = *(a1 + 488);
  if (v86)
  {
    CFRelease(v86);
  }

  v87 = *(a1 + 496);
  if (v87)
  {
    CFRelease(v87);
  }

  v88 = *(a1 + 504);
  if (v88)
  {
    CFRelease(v88);
  }

  v89 = *(a1 + 512);
  if (v89)
  {
    CFRelease(v89);
  }

  v90 = v219;
  if (v219)
  {
    v90 = CFRetain(v219);
  }

  *(a1 + 472) = v90;
  v91 = v220;
  if (v220)
  {
    v91 = CFRetain(v220);
  }

  *(a1 + 480) = v91;
  v92 = v221;
  if (v221)
  {
    v92 = CFRetain(v221);
  }

  *(a1 + 488) = v92;
  if (v35)
  {
    v93 = CFRetain(v35);
  }

  else
  {
    v93 = 0;
  }

  *(a1 + 496) = v93;
  if (v34)
  {
    v94 = CFRetain(v34);
  }

  else
  {
    v94 = 0;
  }

  *(a1 + 504) = v94;
  if (v36)
  {
    v95 = CFRetain(v36);
  }

  else
  {
    v95 = 0;
  }

  *(a1 + 512) = v95;
  *(a1 + 400) = v82;
  *(a1 + 408) = v206;
  *(a1 + 416) = v204;
  v96 = v227;
  *(a1 + 432) = v226;
  *(a1 + 448) = v96;
  if (*(a1 + 32))
  {
    v29 = 0;
  }

  else
  {
    if (*(a1 + 48))
    {
      v236 = v228;
      v237 = v229;
      v232 = v226;
      v233 = v227;
      v234 = Width;
      v235 = v80;
      v230 = v206;
      v231 = v204;
      *&v238 = v206;
      *(&v238 + 1) = v204;
      v239 = vcvtq_s64_f64(v227);
      v240 = vcvtq_s64_f64(v226);
      VTRequiresUnalignedBlackFill();
      VTAvoidHardwarePixelTransfer();
      VTPixelTransferSessionCanUseMetalInTheBackground();
      if (*(a1 + 133))
      {
        v99 = (a1 + 136);
        if (!*(a1 + 136) && !VTAvoidHardwarePixelTransfer())
        {
          VTMetalTransferSessionCreate(allocator, 0, a1 + 136);
          if (*v99)
          {
            if (*(a1 + 232))
            {
              v100 = value;
            }

            else
            {
              v100 = *MEMORY[0x1E695E4C0];
            }

            VTSessionSetProperty(*v99, @"WriteBlackPixelsOutsideDestRect", v100);
            VTMetalTransferSessionSetProperties(*(a1 + 136), *(a1 + 144));
          }
        }
      }

      FigRegisterIOSurfacePixelTransferCapability();
    }

    v29 = 0;
    v134 = *(a1 + 40);
    if (v134)
    {
      if (!VTPixelTransferChainHasNodes(v134))
      {
        v29 = vtPixelRotation_BuildChain(*(a1 + 40), a2, v183, theDicta, v187, *(a1 + 135), *(a1 + 133), *(a1 + 52), *v228.i64, *&v228.i64[1], *v229.i64, *&v229.i64[1], v226.f64[0], v226.f64[1], v227.f64[0], v227.f64[1], *(a1 + 56), HIBYTE(*(a1 + 56)), *(a1 + 232), *(a1 + 144), *(a1 + 134), a1 + 336, &v225);
        if (v29)
        {
          v135 = *(a1 + 40);
          if (v135)
          {
            CFRelease(v135);
            *(a1 + 40) = 0;
          }
        }
      }
    }
  }

  v97 = *(a1 + 40);
  if (v97 && !v225)
  {
    v98 = vtPixelRotationChainDoTransfer(v97, a2, v228.i8, v183, &v226);
    v97 = *(a1 + 40);
    if (v98)
    {
      if (v97)
      {
        CFRelease(v97);
        *(a1 + 40) = 0;
      }

      goto LABEL_164;
    }

    v29 = 0;
  }

  if (v97)
  {
    goto LABEL_263;
  }

LABEL_164:
  v203 = v228;
  v101 = *&v228.i64[1];
  v207 = v229;
  v102 = *&v229.i64[1];
  v205 = v226;
  v103 = v226.f64[1];
  v210 = v227;
  v104 = v227.f64[1];
  v105 = CVPixelBufferGetPixelFormatType(a2);
  v238 = 0u;
  v239 = 0u;
  memset(v259, 0, 32);
  v257 = 0u;
  v258 = 0u;
  v255 = 0u;
  v256 = 0u;
  v253 = 0u;
  v254 = 0u;
  v251 = 0u;
  v252 = 0u;
  v249 = 0u;
  v250 = 0u;
  v247 = 0u;
  v248 = 0u;
  *(a1 + 233) = 0;
  if (!*(a1 + 135) || VTAvoidHardwarePixelTransfer())
  {
    v29 = 0;
    goto LABEL_167;
  }

  v29 = vt_Rotate_Celeste(*(a1 + 224), a2, buffera, v183, v203.f64[0], v101, v207.f64[0], v102, v205.f64[0], v103, v210.f64[0], v104, theDicta, *(a1 + 52), *(a1 + 56), *(a1 + 57));
  if (v29)
  {
LABEL_167:
    v181 = v105;
    if (*(a1 + 133))
    {
      v106 = (a1 + 136);
      if (*(a1 + 136))
      {
        goto LABEL_176;
      }

      if (!VTAvoidHardwarePixelTransfer())
      {
        VTMetalTransferSessionCreate(allocator, 0, a1 + 136);
        if (!*v106)
        {
          goto LABEL_195;
        }

        if (*(a1 + 232))
        {
          v107 = value;
        }

        else
        {
          v107 = *MEMORY[0x1E695E4C0];
        }

        VTSessionSetProperty(*v106, @"WriteBlackPixelsOutsideDestRect", v107);
        VTMetalTransferSessionSetProperties(*(a1 + 136), *(a1 + 144));
      }

      if (*v106)
      {
LABEL_176:
        v108 = MEMORY[0x1E695E9D8];
        v109 = MEMORY[0x1E695E9E8];
        Mutable = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v111 = CFDictionaryCreateMutable(allocator, 0, v108, v109);
        v112 = CFDictionaryCreateMutable(allocator, 0, v108, v109);
        v186 = CFDictionaryGetValue(theDicta, v197);
        v188 = CFDictionaryGetValue(theDicta, v196);
        v190 = CFDictionaryGetValue(theDicta, key);
        v113 = v111;
        v192 = CFDictionaryGetValue(theDicta, v199);
        if (*(a1 + 52))
        {
          FigCFDictionarySetInt();
        }

        if (*(a1 + 56))
        {
          CFDictionarySetValue(v111, @"FlipHorizontalOrientation", value);
        }

        if (*(a1 + 57))
        {
          CFDictionarySetValue(v111, @"FlipVerticalOrientation", value);
        }

        FigCFDictionarySetFloat32();
        FigCFDictionarySetFloat32();
        FigCFDictionarySetFloat32();
        FigCFDictionarySetFloat32();
        FigCFDictionarySetFloat32();
        FigCFDictionarySetFloat32();
        FigCFDictionarySetFloat32();
        FigCFDictionarySetFloat32();
        if (v186)
        {
          CFDictionarySetValue(v112, v197, v186);
        }

        v36 = v218;
        if (v188)
        {
          CFDictionarySetValue(v112, v196, v188);
        }

        v114 = v222;
        if (v190)
        {
          CFDictionarySetValue(v112, key, v190);
        }

        v34 = v216;
        if (v192)
        {
          CFDictionarySetValue(v112, v199, v192);
        }

        CFDictionarySetValue(Mutable, @"SourceAmendments", v113);
        CFDictionarySetValue(Mutable, @"DestinationAmendments", v112);
        if (*(a1 + 134))
        {
          CFDictionarySetValue(Mutable, @"SetGPUPriorityLow", value);
        }

        v29 = VTMetalTransferSessionTransferImageSync(*(a1 + 136), a2, v183, Mutable);
        if (!v29)
        {
          v115 = 0;
          *(a1 + 233) = 1;
          if (!Mutable)
          {
            goto LABEL_255;
          }

          goto LABEL_254;
        }

LABEL_196:
        if (!*(a1 + 132))
        {
          fig_log_get_emitter();
          v29 = FigSignalErrorAtGM();
          goto LABEL_253;
        }

        CFDictionaryGetValue(buffera, v197);
        if (FigCFEqual())
        {
          CFDictionaryGetValue(buffera, v196);
          if (FigCFEqual())
          {
            CFDictionaryGetValue(theDicta, v197);
            if (FigCFEqual())
            {
              CFDictionaryGetValue(theDicta, v196);
              if (FigCFEqual())
              {
                v116 = vmovn_s64(vceqq_f64(v207, v210));
                v117 = vuzp1_s16(v116, v116);
                if ((v117.i8[4] & 1) != 0 && (v117.i8[6] & 1) != 0 && !*(a1 + 52) && !*(a1 + 56) && !*(a1 + 57))
                {
                  v215 = v112;
                  v200 = CVPixelBufferGetPixelFormatType(a2);
                  v198 = CVPixelBufferGetPixelFormatType(v183);
                  CVPixelBufferLockBaseAddress(a2, 1uLL);
                  CVPixelBufferLockBaseAddress(v183, 0);
                  v234 = CVPixelBufferGetWidth(a2);
                  v235 = CVPixelBufferGetHeight(a2);
                  v236 = vcvtq_s64_f64(v207);
                  v237 = vcvtq_s64_f64(v203);
                  v230 = CVPixelBufferGetWidth(v183);
                  v231 = CVPixelBufferGetHeight(v183);
                  v232 = vcvtq_s64_f64(v210);
                  v233 = vcvtq_s64_f64(v205);
                  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a2, 0);
                  v246[0] = BytesPerRowOfPlane;
                  v143 = CVPixelBufferGetBytesPerRowOfPlane(a2, 1uLL);
                  v246[1] = v143;
                  v144 = CVPixelBufferGetBytesPerRowOfPlane(v183, 0);
                  v245[0] = v144;
                  v145 = CVPixelBufferGetBytesPerRowOfPlane(v183, 1uLL);
                  v245[1] = v145;
                  v244[0] = CVPixelBufferGetBaseAddressOfPlane(a2, 0);
                  v244[1] = CVPixelBufferGetBaseAddressOfPlane(a2, 1uLL);
                  v243[0] = CVPixelBufferGetBaseAddressOfPlane(v183, 0);
                  v243[1] = CVPixelBufferGetBaseAddressOfPlane(v183, 1uLL);
                  v242[0] = CVPixelBufferGetHeightOfPlane(a2, 0) * BytesPerRowOfPlane;
                  v242[1] = CVPixelBufferGetHeightOfPlane(a2, 1uLL) * v143;
                  v241[0] = CVPixelBufferGetHeightOfPlane(v183, 0) * v144;
                  v241[1] = CVPixelBufferGetHeightOfPlane(v183, 1uLL) * v145;
                  v146 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                  v115 = v146;
                  v147 = *(a1 + 176);
                  if (v147)
                  {
                    CFDictionarySetValue(v146, @"kCGPQEOTFOpticalScale", v147);
                  }

                  v148 = *(a1 + 184);
                  if (v148)
                  {
                    CFDictionarySetValue(v115, @"kCGPQInvEOTFOpticalScale", v148);
                  }

                  v149 = *(a1 + 192);
                  v114 = v222;
                  v112 = v215;
                  if (v149)
                  {
                    CFDictionarySetValue(v115, @"kCGHLGOETFOpticalScale", v149);
                  }

                  v150 = *(a1 + 200);
                  if (v150)
                  {
                    CFDictionarySetValue(v115, @"kCGHLGInvOETFOpticalScale", v150);
                  }

                  if (*(a1 + 152) || (v29 = VTPixelBlitterColorHandlingOptimized_setup(v200, buffera, v198, theDicta, v115, *(a1 + 129), *(a1 + 130), (a1 + 152), (a1 + 168), 0, (a1 + 160)), !v29))
                  {
                    v151 = *(a1 + 168);
                    if (v151)
                    {
                      v29 = v151(*(a1 + 152), &v234, v244, v246, v242, &v230, v243, v245, v241);
                    }

                    CVPixelBufferUnlockBaseAddress(a2, 1uLL);
                    CVPixelBufferUnlockBaseAddress(v183, 0);
                  }

                  v34 = v216;
                  if (!Mutable)
                  {
                    goto LABEL_255;
                  }

                  goto LABEL_254;
                }
              }
            }
          }
        }

        if (*(a1 + 56) && *(a1 + 57) || !VTDoColorDictionariesMatch(buffera, theDicta))
        {
          fig_log_get_emitter();
          v29 = FigSignalErrorAtGM();
          v115 = 0;
          if (!Mutable)
          {
            goto LABEL_255;
          }

          goto LABEL_254;
        }

        v118 = floor(v203.f64[0]);
        v119 = floor(v101);
        v120 = ceil(v203.f64[0] + v207.f64[0]) - v118;
        v121 = ceil(v101 + v102) - v119;
        v122 = floor(v205.f64[0]);
        v123 = floor(v103);
        v124 = v103 + v104;
        v125 = ceil(v205.f64[0] + v210.f64[0]) - v122;
        v126 = ceil(v124) - v123;
        if (!vtPixelRotation_IsValidForSoftware(*(a1 + 52), a2, v183, v118, v119, v120, v121, v122, v123, v125, v126))
        {
          fig_log_get_emitter();
          v29 = FigSignalErrorAtGM();
LABEL_262:
          v38 = v114;
          v35 = v217;
          goto LABEL_263;
        }

        PlaneCount = 1;
        CVPixelBufferLockBaseAddress(a2, 1uLL);
        CVPixelBufferLockBaseAddress(v183, 0);
        if (CVPixelBufferIsPlanar(a2))
        {
          PlaneCount = CVPixelBufferGetPlaneCount(a2);
        }

        v128 = vtPixelRotationSession_PrepareRotationParameters(a2, PlaneCount, &v238, v259, &v255, &v257, (a1 + 72), (a1 + 64), v118, v119, v120, v121);
        if (v128)
        {
          goto LABEL_251;
        }

        v129 = CVPixelBufferIsPlanar(v183) ? CVPixelBufferGetPlaneCount(v183) : 1;
        v128 = vtPixelRotationSession_PrepareRotationParameters(v183, v129, &v253, &v251, &v247, &v249, (a1 + 72), (a1 + 64), v122, v123, v125, v126);
        if (v128)
        {
          goto LABEL_251;
        }

        v136 = *(a1 + 52);
        if (v136)
        {
          if (v181 <= 1815491697)
          {
            if (v181 > 1278226533)
            {
              if (v181 > 1647534391)
              {
                if (v181 > 1717856626)
                {
                  if (v181 != 1717856627)
                  {
                    if (v181 == 1751410032)
                    {
                      goto LABEL_377;
                    }

                    v137 = 1751411059;
                    goto LABEL_340;
                  }

                  goto LABEL_410;
                }

                if (v181 == 1647534392)
                {
                  v153 = vt_Rotate_b3a8(&v253, &v251, &v257, &v255, &v249, &v247, v136);
                  if (v153)
                  {
                    goto LABEL_520;
                  }

                  if (*(a1 + 56))
                  {
                    vt_Flip_b3a8(&v253, &v251, &v249, &v247, &v249, &v247, *(a1 + 56), *(a1 + 57));
                    goto LABEL_520;
                  }

                  goto LABEL_413;
                }

                v141 = 1717855600;
LABEL_384:
                v40 = a1;
                if (v181 != v141)
                {
                  goto LABEL_459;
                }

                goto LABEL_410;
              }

              if (v181 <= 1278226741)
              {
                if (v181 != 1278226534)
                {
                  v137 = 1278226536;
LABEL_340:
                  if (v181 != v137)
                  {
                    goto LABEL_459;
                  }

LABEL_377:
                  v163 = vt_Rotate_16(&v253, &v251, &v257, &v255, &v249, &v247, v136);
                  if (!v163)
                  {
                    if (*(a1 + 56))
                    {
                      vt_Flip_16(v253.i64, &v251, v249.i64, &v247, v249.i64, &v247, *(a1 + 56), *(a1 + 57));
                      goto LABEL_520;
                    }

LABEL_413:
                    v29 = 0;
LABEL_521:
                    v114 = v222;
                    v40 = a1;
                    goto LABEL_522;
                  }

                  goto LABEL_411;
                }

LABEL_410:
                v163 = vt_Rotate_32(&v253, &v251, &v257, &v255, &v249, &v247, v136);
                if (!v163)
                {
                  if (*(v40 + 56))
                  {
                    vt_Flip_32(v253.i64, &v251, v249.i64, &v247, v249.i64, &v247, *(v40 + 56), *(v40 + 57));
                    goto LABEL_520;
                  }

                  goto LABEL_413;
                }

                goto LABEL_411;
              }

              if (v181 == 1278226742)
              {
                goto LABEL_377;
              }

              if (v181 == 1380411457)
              {
                goto LABEL_374;
              }

              goto LABEL_459;
            }

            if (v181 > 875836517)
            {
              if (v181 > 1111970368)
              {
                if (v181 == 1111970369)
                {
                  goto LABEL_410;
                }

                if (v181 == 1278226488)
                {
                  v153 = vt_Rotate_8(&v253, &v251, &v257, &v255, &v249, &v247, v136);
                  if (v153)
                  {
                    goto LABEL_520;
                  }

                  if (*(a1 + 56))
                  {
                    vt_Flip_8(v253.i64, &v251, v249.i64, &v247, v249.i64, &v247, *(a1 + 56), *(a1 + 57));
                    goto LABEL_520;
                  }

                  goto LABEL_413;
                }

                goto LABEL_459;
              }

              if (v181 != 875836518)
              {
                v155 = 875836534;
                goto LABEL_391;
              }
            }

            else
            {
              if (v181 <= 875704421)
              {
                if (v181 == 32)
                {
                  goto LABEL_410;
                }

                if (v181 != 846624121)
                {
                  goto LABEL_459;
                }

                v153 = vt_Rotate_2vuy(v253.i64, &v251, v257.i64, &v255, v249.i64, &v247, v136);
                if (!v153)
                {
                  if (!*(a1 + 56))
                  {
                    goto LABEL_413;
                  }

                  vt_Flip_2vuy(v253.i64, &v251, v249.i64, &v247, v249.i64, &v247, *(a1 + 56), *(a1 + 57));
                }

                goto LABEL_520;
              }

              if (v181 != 875704422)
              {
                v155 = 875704438;
LABEL_391:
                if (v181 != v155)
                {
                  goto LABEL_459;
                }
              }
            }

            v163 = vt_Rotate_420v(&v253, &v251, &v257, &v255, &v249, &v247, v136);
            if (!v163)
            {
              if (*(a1 + 56))
              {
                vt_Flip_420v(v253.i64, &v251, v249.i64, &v247, v249.i64, &v247, *(a1 + 56), *(a1 + 57));
                goto LABEL_520;
              }

              goto LABEL_413;
            }

LABEL_411:
            v29 = v163;
            v114 = v222;
LABEL_522:
            v34 = v216;
            goto LABEL_252;
          }

          if (v181 > 2019963441)
          {
            if (v181 > 2021077553)
            {
              if (v181 > 2021078127)
              {
                if (v181 == 2037741171)
                {
                  v153 = vt_Rotate_yuvs(v253.i64, &v251, v257.i64, &v255, v249.i64, &v247, v136);
                  if (v153)
                  {
                    goto LABEL_520;
                  }

                  if (*(a1 + 56))
                  {
                    vt_Flip_yuvs(v253.i64, &v251, v249.i64, &v247, v249.i64, &v247, *(a1 + 56), *(a1 + 57));
                    goto LABEL_520;
                  }

                  goto LABEL_413;
                }

                if (v181 == 2033463856)
                {
                  v153 = vt_Rotate_y420(&v253, &v251, &v257, &v255, &v249, &v247, v136);
                  if (v153)
                  {
                    goto LABEL_520;
                  }

                  if (*(a1 + 56))
                  {
                    v153 = vt_Flip_y420(&v253, &v251, &v249, &v247, &v249, &v247, *(a1 + 56), *(a1 + 57));
                    goto LABEL_520;
                  }

                  goto LABEL_413;
                }

                v141 = 2021078128;
                goto LABEL_384;
              }

              v40 = a1;
              if (v181 == 2021077554)
              {
                goto LABEL_407;
              }

              v164 = 13364;
              goto LABEL_388;
            }

            if (v181 > 2019964015)
            {
              if (v181 == 2019964016)
              {
                goto LABEL_410;
              }

              v164 = 12848;
LABEL_388:
              v165 = v164 | 0x78770000;
              goto LABEL_406;
            }

            if (v181 == 2019963442)
            {
              goto LABEL_407;
            }

            v154 = 13364;
            goto LABEL_405;
          }

          if (v181 > 2016686641)
          {
            if (v181 > 2016687215)
            {
              if (v181 == 2016687216)
              {
                goto LABEL_410;
              }

              v154 = 12848;
LABEL_405:
              v165 = v154 | 0x78660000;
LABEL_406:
              if (v181 != v165)
              {
                goto LABEL_459;
              }

LABEL_407:
              v163 = vt_Rotate_x420(&v253, &v251, &v257, &v255, &v249, &v247, v136);
              if (!v163)
              {
                if (*(v40 + 56))
                {
                  vt_Flip_x420(v253.i64, &v251, v249.i64, &v247, v249.i64, &v247, *(v40 + 56), *(v40 + 57));
                  goto LABEL_520;
                }

                goto LABEL_413;
              }

              goto LABEL_411;
            }

            if (v181 == 2016686642)
            {
              goto LABEL_407;
            }

            v156 = 13364;
          }

          else
          {
            if (v181 <= 1999843441)
            {
              if (v181 == 1815491698)
              {
LABEL_374:
                v153 = vt_Rotate_64(&v253, &v251, &v257, &v255, &v249, &v247, v136);
                if (!v153)
                {
                  if (!*(a1 + 56))
                  {
                    goto LABEL_413;
                  }

                  vt_Flip_64(v253.i64, &v251, v249.i64, &v247, v249.i64, &v247, *(a1 + 56), *(a1 + 57));
                }

                goto LABEL_520;
              }

              if (v181 != 1983000886)
              {
LABEL_459:
                fig_log_get_emitter();
                v163 = FigSignalErrorAtGM();
                goto LABEL_411;
              }

              v153 = vt_Rotate_v216(v253.i64, &v251, &v257, &v255, &v249, &v247, v136);
              if (!v153)
              {
                if (!*(a1 + 56))
                {
                  goto LABEL_413;
                }

                vt_Flip_v216(v253.i64, &v251, &v249, &v247, &v249, &v247, *(a1 + 56), *(a1 + 57));
              }

LABEL_520:
              v29 = v153;
              goto LABEL_521;
            }

            if (v181 == 1999843442)
            {
              goto LABEL_410;
            }

            v156 = 12848;
          }

          v165 = v156 | 0x78340000;
          goto LABEL_406;
        }

        v138 = *(a1 + 56);
        if (*(a1 + 56) || *(a1 + 57))
        {
          if (v181 <= 1815491697)
          {
            if (v181 > 1278226533)
            {
              if (v181 > 1647534391)
              {
                if (v181 > 1717856626)
                {
                  v139 = v181;
                  v114 = v222;
                  v40 = a1;
                  v34 = v216;
                  if (v181 != 1717856627)
                  {
                    if (v181 != 1751410032)
                    {
                      v140 = 1751411059;
                      goto LABEL_361;
                    }

LABEL_424:
                    vt_Flip_16(v253.i64, &v251, v257.i64, v255.i64, v249.i64, &v247, v138, *(v40 + 57));
                    goto LABEL_251;
                  }

LABEL_449:
                  vt_Flip_32(v253.i64, &v251, v257.i64, v255.i64, v249.i64, &v247, v138, *(v40 + 57));
                  goto LABEL_251;
                }

                if (v181 == 1647534392)
                {
                  v40 = a1;
                  vt_Flip_b3a8(&v253, &v251, &v249, &v247, &v249, &v247, v138, *(a1 + 57));
                  goto LABEL_411;
                }

                v152 = 1717855600;
LABEL_429:
                v114 = v222;
                v40 = a1;
                v34 = v216;
                if (v181 != v152)
                {
                  goto LABEL_471;
                }

                goto LABEL_449;
              }

              if (v181 <= 1278226741)
              {
                v139 = v181;
                v114 = v222;
                v40 = a1;
                v34 = v216;
                if (v181 != 1278226534)
                {
                  v140 = 1278226536;
LABEL_361:
                  if (v139 != v140)
                  {
                    goto LABEL_471;
                  }

                  goto LABEL_424;
                }

                goto LABEL_449;
              }

              v114 = v222;
              v40 = a1;
              v34 = v216;
              if (v181 == 1278226742)
              {
                goto LABEL_424;
              }

              if (v181 == 1380411457)
              {
                goto LABEL_423;
              }

              goto LABEL_471;
            }

            if (v181 > 875836517)
            {
              if (v181 > 1111970368)
              {
                v114 = v222;
                v40 = a1;
                v34 = v216;
                if (v181 == 1111970369)
                {
                  goto LABEL_449;
                }

                if (v181 == 1278226488)
                {
                  vt_Flip_8(v253.i64, &v251, v257.i64, v255.i64, v249.i64, &v247, v138, *(a1 + 57));
                  goto LABEL_251;
                }

                goto LABEL_471;
              }

              v160 = v181;
              v114 = v222;
              v40 = a1;
              v34 = v216;
              if (v181 != 875836518)
              {
                v161 = 875836534;
                goto LABEL_436;
              }
            }

            else
            {
              if (v181 <= 875704421)
              {
                v114 = v222;
                v40 = a1;
                v34 = v216;
                if (v181 == 32)
                {
                  goto LABEL_449;
                }

                if (v181 != 846624121)
                {
                  goto LABEL_471;
                }

                vt_Flip_2vuy(v253.i64, &v251, v257.i64, v255.i64, v249.i64, &v247, v138, *(a1 + 57));
                goto LABEL_251;
              }

              v160 = v181;
              v114 = v222;
              v40 = a1;
              v34 = v216;
              if (v181 != 875704422)
              {
                v161 = 875704438;
LABEL_436:
                if (v160 != v161)
                {
                  goto LABEL_471;
                }
              }
            }

            vt_Flip_420v(v253.i64, &v251, v257.i64, v255.i64, v249.i64, &v247, v138, *(v40 + 57));
            goto LABEL_251;
          }

          if (v181 > 2019963441)
          {
            if (v181 > 2021077553)
            {
              if (v181 > 2021078127)
              {
                if (v181 == 2037741171)
                {
                  v40 = a1;
                  vt_Flip_yuvs(v253.i64, &v251, v257.i64, v255.i64, v249.i64, &v247, v138, *(a1 + 57));
                  goto LABEL_411;
                }

                if (v181 == 2033463856)
                {
                  v40 = a1;
                  v163 = vt_Flip_y420(&v253, &v251, &v257, &v255, &v249, &v247, v138, *(a1 + 57));
                  goto LABEL_411;
                }

                v152 = 2021078128;
                goto LABEL_429;
              }

              v158 = v181;
              v114 = v222;
              v40 = a1;
              v34 = v216;
              if (v181 == 2021077554)
              {
                goto LABEL_448;
              }

              v167 = 13364;
              goto LABEL_433;
            }

            if (v181 > 2019964015)
            {
              v158 = v181;
              v114 = v222;
              v40 = a1;
              v34 = v216;
              if (v181 == 2019964016)
              {
                goto LABEL_449;
              }

              v167 = 12848;
LABEL_433:
              v168 = v167 | 0x78770000;
              goto LABEL_447;
            }

            v158 = v181;
            v114 = v222;
            v40 = a1;
            v34 = v216;
            if (v181 == 2019963442)
            {
              goto LABEL_448;
            }

            v159 = 13364;
            goto LABEL_446;
          }

          if (v181 > 2016686641)
          {
            if (v181 > 2016687215)
            {
              v158 = v181;
              v114 = v222;
              v40 = a1;
              v34 = v216;
              if (v181 == 2016687216)
              {
                goto LABEL_449;
              }

              v159 = 12848;
LABEL_446:
              v168 = v159 | 0x78660000;
LABEL_447:
              if (v158 != v168)
              {
                goto LABEL_471;
              }

LABEL_448:
              vt_Flip_x420(v253.i64, &v251, v257.i64, v255.i64, v249.i64, &v247, v138, *(v40 + 57));
              goto LABEL_251;
            }

            v158 = v181;
            v114 = v222;
            v40 = a1;
            v34 = v216;
            if (v181 == 2016686642)
            {
              goto LABEL_448;
            }

            v162 = 13364;
          }

          else
          {
            if (v181 <= 1999843441)
            {
              v114 = v222;
              v40 = a1;
              v34 = v216;
              if (v181 == 1815491698)
              {
LABEL_423:
                vt_Flip_64(v253.i64, &v251, v257.i64, v255.i64, v249.i64, &v247, v138, *(v40 + 57));
                goto LABEL_251;
              }

              if (v181 != 1983000886)
              {
LABEL_471:
                fig_log_get_emitter();
                v128 = FigSignalErrorAtGM();
                goto LABEL_251;
              }

              vt_Flip_v216(v253.i64, &v251, &v257, v255.i64, &v249, &v247, v138, *(a1 + 57));
LABEL_251:
              v29 = v128;
LABEL_252:
              CVPixelBufferUnlockBaseAddress(a2, 1uLL);
              CVPixelBufferUnlockBaseAddress(v183, 0);
LABEL_253:
              v115 = 0;
              if (!Mutable)
              {
LABEL_255:
                if (v113)
                {
                  CFRelease(v113);
                }

                if (v112)
                {
                  CFRelease(v112);
                }

                if (v115)
                {
                  CFRelease(v115);
                }

                v36 = v218;
                goto LABEL_262;
              }

LABEL_254:
              CFRelease(Mutable);
              goto LABEL_255;
            }

            v158 = v181;
            v114 = v222;
            v40 = a1;
            v34 = v216;
            if (v181 == 1999843442)
            {
              goto LABEL_449;
            }

            v162 = 12848;
          }

          v168 = v162 | 0x78340000;
          goto LABEL_447;
        }

        if (v181 <= 1815491697)
        {
          if (v181 > 1278226533)
          {
            if (v181 > 1647534391)
            {
              if (v181 > 1717856626)
              {
                if (v181 != 1717856627)
                {
                  if (v181 != 1751410032)
                  {
                    v157 = 1751411059;
                    goto LABEL_475;
                  }

LABEL_489:
                  v172 = v255.i64[0];
                  v173 = v257.i64[0];
                  v174 = v247;
                  v175 = v249.i64[0];
                  v176 = v253.i64[0];
                  v177 = v251;
LABEL_490:
                  v178 = 2;
                  goto LABEL_519;
                }

                goto LABEL_517;
              }

              if (v181 != 1647534392)
              {
                v166 = 1717855600;
LABEL_495:
                if (v181 != v166)
                {
                  goto LABEL_529;
                }

                goto LABEL_517;
              }

              v153 = vtCopyPlane(v255.i64[0], v257.i64[0], v247, v249.i64[0], v253.i64[0], v251, 4);
              if (v153)
              {
                goto LABEL_520;
              }

              v172 = v255.i64[1];
              v173 = v257.i64[1];
              v174 = *(&v247 + 1);
              v175 = v249.i64[1];
              v176 = v253.i64[1];
              v177 = *(&v251 + 1);
LABEL_528:
              v178 = 1;
              goto LABEL_519;
            }

            if (v181 <= 1278226741)
            {
              if (v181 != 1278226534)
              {
                v157 = 1278226536;
LABEL_475:
                if (v181 != v157)
                {
                  goto LABEL_529;
                }

                goto LABEL_489;
              }

              goto LABEL_517;
            }

            if (v181 == 1278226742)
            {
              goto LABEL_489;
            }

            if (v181 == 1380411457)
            {
LABEL_488:
              v172 = v255.i64[0];
              v173 = v257.i64[0];
              v174 = v247;
              v175 = v249.i64[0];
              v176 = v253.i64[0];
              v177 = v251;
              v178 = 8;
LABEL_519:
              v153 = vtCopyPlane(v172, v173, v174, v175, v176, v177, v178);
              goto LABEL_520;
            }

LABEL_529:
            fig_log_get_emitter();
            v153 = FigSignalErrorAtGM();
            goto LABEL_520;
          }

          if (v181 > 875836517)
          {
            if (v181 > 1111970368)
            {
              if (v181 == 1111970369)
              {
                goto LABEL_517;
              }

              if (v181 == 1278226488)
              {
                v172 = v255.i64[0];
                v173 = v257.i64[0];
                v174 = v247;
                v175 = v249.i64[0];
                v176 = v253.i64[0];
                v177 = v251;
                goto LABEL_528;
              }

              goto LABEL_529;
            }

            if (v181 == 875836518)
            {
LABEL_503:
              v153 = vtCopyPlane(v255.i64[0], v257.i64[0], v247, v249.i64[0], v253.i64[0], v251, 1);
              if (v153)
              {
                goto LABEL_520;
              }

              v172 = v255.i64[1];
              v173 = v257.i64[1];
              v174 = *(&v247 + 1);
              v175 = v249.i64[1];
              v176 = v253.i64[1];
              v177 = *(&v251 + 1);
              goto LABEL_490;
            }

            v170 = 875836534;
          }

          else
          {
            if (v181 <= 875704421)
            {
              if (v181 != 32)
              {
                v157 = 846624121;
                goto LABEL_475;
              }

LABEL_517:
              v172 = v255.i64[0];
              v173 = v257.i64[0];
              v174 = v247;
              v175 = v249.i64[0];
              v176 = v253.i64[0];
              v177 = v251;
LABEL_518:
              v178 = 4;
              goto LABEL_519;
            }

            if (v181 == 875704422)
            {
              goto LABEL_503;
            }

            v170 = 875704438;
          }

          if (v181 != v170)
          {
            goto LABEL_529;
          }

          goto LABEL_503;
        }

        if (v181 > 2019963441)
        {
          if (v181 > 2021077553)
          {
            if (v181 > 2021078127)
            {
              if (v181 == 2037741171)
              {
                goto LABEL_489;
              }

              if (v181 != 2033463856)
              {
                v166 = 2021078128;
                goto LABEL_495;
              }

              v153 = vtCopyPlane(v255.i64[0], v257.i64[0], v247, v249.i64[0], v253.i64[0], v251, 1);
              if (v153)
              {
                goto LABEL_520;
              }

              v153 = vtCopyPlane(v255.i64[1], v257.i64[1], *(&v247 + 1), v249.i64[1], v253.i64[1], *(&v251 + 1), 1);
              if (v153)
              {
                goto LABEL_520;
              }

              v172 = v256;
              v173 = v258;
              v174 = v248;
              v175 = v250;
              v176 = v254;
              v177 = v252;
              goto LABEL_528;
            }

            if (v181 == 2021077554)
            {
              goto LABEL_515;
            }

            v179 = 13364;
            goto LABEL_499;
          }

          if (v181 > 2019964015)
          {
            if (v181 == 2019964016)
            {
              goto LABEL_517;
            }

            v179 = 12848;
LABEL_499:
            v180 = v179 | 0x78770000;
            goto LABEL_514;
          }

          if (v181 == 2019963442)
          {
            goto LABEL_515;
          }

          v169 = 13364;
          goto LABEL_513;
        }

        if (v181 > 2016686641)
        {
          if (v181 > 2016687215)
          {
            if (v181 == 2016687216)
            {
              goto LABEL_517;
            }

            v169 = 12848;
LABEL_513:
            v180 = v169 | 0x78660000;
LABEL_514:
            if (v181 != v180)
            {
              goto LABEL_529;
            }

LABEL_515:
            v153 = vtCopyPlane(v255.i64[0], v257.i64[0], v247, v249.i64[0], v253.i64[0], v251, 2);
            if (v153)
            {
              goto LABEL_520;
            }

            v172 = v255.i64[1];
            v173 = v257.i64[1];
            v174 = *(&v247 + 1);
            v175 = v249.i64[1];
            v176 = v253.i64[1];
            v177 = *(&v251 + 1);
            goto LABEL_518;
          }

          if (v181 == 2016686642)
          {
            goto LABEL_515;
          }

          v171 = 13364;
        }

        else
        {
          if (v181 <= 1999843441)
          {
            if (v181 != 1815491698)
            {
              v166 = 1983000886;
              goto LABEL_495;
            }

            goto LABEL_488;
          }

          if (v181 == 1999843442)
          {
            goto LABEL_517;
          }

          v171 = 12848;
        }

        v180 = v171 | 0x78340000;
        goto LABEL_514;
      }
    }

LABEL_195:
    v114 = v38;
    v113 = 0;
    v112 = 0;
    Mutable = 0;
    goto LABEL_196;
  }

LABEL_263:
  if (!*(v40 + 232))
  {
    v37 = cf;
LABEL_267:
    *(v40 + 32) = 1;
    goto LABEL_268;
  }

  v37 = cf;
  v234 = CVPixelBufferGetWidth(v183);
  v235 = CVPixelBufferGetHeight(v183);
  v236 = vcvtq_s64_f64(v227);
  v237 = vcvtq_s64_f64(v226);
  v29 = VTFillPixelsOutsideDestRectWithBlack(v183, &v234, (v40 + 64));
  if (!v29)
  {
    goto LABEL_267;
  }

LABEL_268:
  v30 = buffera;
  v31 = theDicta;
  v33 = v184;
  v32 = v185;
LABEL_4:
  if (v37)
  {
    CFRelease(v37);
  }

  if (v35)
  {
    CFRelease(v35);
  }

  if (v34)
  {
    CFRelease(v34);
  }

  if (v36)
  {
    CFRelease(v36);
  }

  if (v221)
  {
    CFRelease(v221);
  }

  if (v220)
  {
    CFRelease(v220);
  }

  if (v219)
  {
    CFRelease(v219);
  }

  if (v30)
  {
    CFRelease(v30);
  }

  if (v31)
  {
    CFRelease(v31);
  }

  if (v32)
  {
    CFRelease(v32);
  }

  if (v33)
  {
    CFRelease(v33);
  }

  if (v38)
  {
    CFRelease(v38);
  }

  return v29;
}

void VTPixelTransferNodeRotationFinalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  free(*(DerivedStorage + 40));
  *(DerivedStorage + 40) = 0;

  VTPixelTransferNodeBaseFinalize();
}

uint64_t VTPixelTransferNodeRotationDoTransfer(uint64_t a1, __CVBuffer *a2, double *a3, __CVBuffer *a4, double *a5)
{
  v42 = *MEMORY[0x1E69E9840];
  memset(v41, 0, sizeof(v41));
  memset(v40, 0, sizeof(v40));
  memset(v39, 0, sizeof(v39));
  memset(v38, 0, sizeof(v38));
  memset(v37, 0, sizeof(v37));
  memset(v36, 0, sizeof(v36));
  memset(v35, 0, sizeof(v35));
  memset(v34, 0, sizeof(v34));
  v7 = a3[2];
  v8 = a3[3];
  v9 = a3[4];
  v10 = a3[5];
  v11 = a5[2];
  v12 = a5[3];
  v13 = a5[4];
  v14 = a5[5];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v16 = floor(v7);
  v17 = floor(v8);
  v18 = ceil(v7 + v9) - v16;
  v19 = ceil(v8 + v10) - v17;
  v20 = floor(v11);
  v21 = floor(v12);
  v22 = v11 + v13;
  v23 = v16;
  v24 = ceil(v22) - v20;
  v25 = v12 + v14;
  v26 = v17;
  v27 = ceil(v25) - v21;
  if (vtPixelRotation_IsValidForSoftware(*(DerivedStorage + 32), a2, a4, v16, v17, v18, v19, v20, v21, v24, v27))
  {
    PlaneCount = 1;
    CVPixelBufferLockBaseAddress(a2, 1uLL);
    CVPixelBufferLockBaseAddress(a4, 0);
    if (CVPixelBufferIsPlanar(a2))
    {
      PlaneCount = CVPixelBufferGetPlaneCount(a2);
    }

    v29 = vtPixelRotationSession_PrepareRotationParameters(a2, PlaneCount, v41, v40, v38, v39, (DerivedStorage + 36), (DerivedStorage + 40), v23, v26, v18, v19);
    if (!v29)
    {
      v30 = CVPixelBufferIsPlanar(a4) ? CVPixelBufferGetPlaneCount(a4) : 1;
      v29 = vtPixelRotationSession_PrepareRotationParameters(a4, v30, v37, v36, v34, v35, (DerivedStorage + 36), (DerivedStorage + 40), v20, v21, v24, v27);
      if (!v29)
      {
        v32 = *(DerivedStorage + 24);
        if (!v32)
        {
          v33 = 0;
          goto LABEL_15;
        }

        v29 = v32(v41, v40, v39, v38, v37, v36, v35, v34);
      }
    }

    v33 = v29;
LABEL_15:
    CVPixelBufferUnlockBaseAddress(a2, 1uLL);
    CVPixelBufferUnlockBaseAddress(a4, 0);
    return v33;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t vtPixelRotation_IsValidForSoftware(int a1, CVPixelBufferRef pixelBuffer, __CVBuffer *a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
  v23 = CVPixelBufferGetPixelFormatType(a3);
  Width = CVPixelBufferGetWidth(pixelBuffer);
  Height = CVPixelBufferGetHeight(pixelBuffer);
  v26 = CVPixelBufferGetWidth(a3);
  v27 = CVPixelBufferGetHeight(a3);
  if (PixelFormatType != v23 || a4 < 0.0)
  {
    return 0;
  }

  v29 = v27;
  result = 0;
  if (a4 + a6 > Width || a5 < 0.0 || a5 + a7 > Height)
  {
    return result;
  }

  if (a8 < 0.0)
  {
    return 0;
  }

  result = 0;
  if (a8 + a10 > v26 || a9 < 0.0 || a9 + a11 > v29)
  {
    return result;
  }

  if (a1 <= 179)
  {
    if (a1)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  if (a1 != 270)
  {
    if (a1 != 180)
    {
      return 1;
    }

LABEL_17:
    result = 0;
    if (a6 != a10 || a7 != a11)
    {
      return result;
    }

LABEL_19:
    if (a1 == 90)
    {
      goto LABEL_20;
    }

    return 1;
  }

LABEL_20:
  result = 0;
  if (a6 == a11 && a7 == a10)
  {
    return 1;
  }

  return result;
}

uint64_t vtPixelRotationSession_PrepareRotationParameters(__CVBuffer *a1, size_t a2, size_t *a3, size_t *a4, void **a5, size_t *a6, OSType *a7, void *a8, double a9, double a10, double a11, double a12)
{
  v22 = a10 != 0.0 || a9 != 0.0;
  v23 = a11;
  Width = CVPixelBufferGetWidth(a1);
  v52 = a12;
  Height = CVPixelBufferGetHeight(a1);
  v25 = Height;
  v48 = v22;
  v49 = v23;
  if (!v22 && Width == v23 && Height == v52)
  {
LABEL_18:
    if (CVPixelBufferIsPlanar(a1))
    {
      if (!a2)
      {
        return 0;
      }

      v33 = 0;
      do
      {
        a3[v33] = CVPixelBufferGetWidthOfPlane(a1, v33);
        a4[v33] = CVPixelBufferGetHeightOfPlane(a1, v33);
        a5[v33] = CVPixelBufferGetBaseAddressOfPlane(a1, v33);
        a6[v33] = CVPixelBufferGetBytesPerRowOfPlane(a1, v33);
        ++v33;
      }

      while (a2 != v33);
    }

    else
    {
      *a3 = CVPixelBufferGetWidth(a1);
      *a4 = CVPixelBufferGetHeight(a1);
      *a5 = CVPixelBufferGetBaseAddress(a1);
      *a6 = CVPixelBufferGetBytesPerRow(a1);
    }

    v34 = !v48;
    if (!a2)
    {
      v34 = 1;
    }

    if ((v34 & 1) == 0)
    {
      v35 = 0;
      v36 = a2;
      do
      {
        v37 = (*a8 + v35);
        v38 = *a6++;
        *a5 = *a5 + (v37[2] >> 3) * (a9 / (v37[3] * *v37)) + v38 * (a10 / (v37[4] * v37[1]));
        ++a5;
        v35 += 112;
        --v36;
      }

      while (v36);
    }

    v39 = v25;
    if (Width != v49 && a2)
    {
      v40 = (*a8 + 24);
      v41 = a2;
      do
      {
        v42 = *v40;
        v40 += 14;
        *a3++ = (v49 - 1 + v42) / v42;
        --v41;
      }

      while (v41);
    }

    v43 = 0;
    if (v39 == v52 || !a2)
    {
      return v43;
    }

    v44 = (*a8 + 32);
    do
    {
      v45 = *v44;
      v44 += 14;
      *a4++ = (v52 - 1 + v45) / v45;
      --a2;
    }

    while (a2);
    return 0;
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v28 = *a8;
  pixelFormat = PixelFormatType;
  if (*a7 == PixelFormatType)
  {
    if (v28)
    {
      goto LABEL_18;
    }
  }

  else
  {
    free(v28);
    *a8 = 0;
    *a7 = 0;
  }

  v47 = a8;
  v29 = malloc_type_calloc(a2, 0x70uLL, 0x100004081F0E799uLL);
  if (!a2)
  {
LABEL_17:
    *a7 = pixelFormat;
    *v47 = v29;
    a8 = v47;
    goto LABEL_18;
  }

  v30 = 0;
  v31 = 0;
  while (1)
  {
    PixelFormatPixelBlockInfo = VTBlackFillGetPixelFormatPixelBlockInfo(pixelFormat, v31, &v29[v30], &v29[v30 + 8], &v29[v30 + 16], &v29[v30 + 24], &v29[v30 + 32], &v29[v30 + 105], &v29[v30 + 40], &v29[v30 + 104], &v29[v30 + 106], &v29[v30 + 110]);
    if (PixelFormatPixelBlockInfo)
    {
      break;
    }

    ++v31;
    v30 += 112;
    if (a2 == v31)
    {
      goto LABEL_17;
    }
  }

  v43 = PixelFormatPixelBlockInfo;
  free(v29);
  return v43;
}

double vtPixelRotationSessionInit(uint64_t a1)
{
  *(a1 + 512) = 0;
  result = 0.0;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void vtPixelRotationSessionFinalize(uint64_t a1)
{
  if (a1 && !*(a1 + 16))
  {
    *(a1 + 16) = 1;
  }

  if (*(a1 + 152))
  {
    v2 = *(a1 + 160);
    if (v2)
    {
      v2();
      *(a1 + 168) = 0;
    }
  }

  free(*(a1 + 64));
  *(a1 + 64) = 0;
  v3 = *(a1 + 176);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 176) = 0;
  }

  v4 = *(a1 + 184);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 184) = 0;
  }

  v5 = *(a1 + 192);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 192) = 0;
  }

  v6 = *(a1 + 200);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 200) = 0;
  }

  v7 = *(a1 + 224);
  if (v7)
  {
    CFRelease(v7);
    *(a1 + 224) = 0;
  }

  v8 = *(a1 + 136);
  if (v8)
  {
    CFRelease(v8);
    *(a1 + 136) = 0;
  }

  v9 = *(a1 + 144);
  if (v9)
  {
    CFRelease(v9);
    *(a1 + 144) = 0;
  }

  v10 = *(a1 + 472);
  if (v10)
  {
    CFRelease(v10);
    *(a1 + 472) = 0;
  }

  v11 = *(a1 + 480);
  if (v11)
  {
    CFRelease(v11);
    *(a1 + 480) = 0;
  }

  v12 = *(a1 + 488);
  if (v12)
  {
    CFRelease(v12);
    *(a1 + 488) = 0;
  }

  v13 = *(a1 + 496);
  if (v13)
  {
    CFRelease(v13);
    *(a1 + 496) = 0;
  }

  v14 = *(a1 + 504);
  if (v14)
  {
    CFRelease(v14);
    *(a1 + 504) = 0;
  }

  v15 = *(a1 + 512);
  if (v15)
  {
    CFRelease(v15);
    *(a1 + 512) = 0;
  }

  v16 = *(a1 + 40);
  if (v16)
  {
    CFRelease(v16);
    *(a1 + 40) = 0;
  }
}

__CFString *vtPixelRotationSessionCopyDebugDesc(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  VTGetOnePassScalingPropertyValue(*(a1 + 136), *(a1 + 144));
  v6 = 0;
  VTPixelRotationSessionCopyMetalBooleanProperty(@"PreferRenderKernel", *(a1 + 136), *(a1 + 144), &v6 + 1);
  VTPixelRotationSessionCopyMetalBooleanProperty(@"AllowLowQualityScaling", *(a1 + 136), *(a1 + 144), &v6);
  v4 = CFGetAllocator(a1);
  CFStringAppendFormat(Mutable, 0, @"<VTPixelRotationSession %p [%p]>{", a1, v4);
  CFStringAppendFormat(Mutable, 0, @"}");
  return Mutable;
}

uint64_t vtPixelRotationChainDoTransfer(uint64_t result, CVPixelBufferRef pixelBuffer, __int128 *a3, __CVBuffer *a4, __int128 *a5)
{
  if (result)
  {
    v9 = result;
    *&v13[0] = CVPixelBufferGetWidth(pixelBuffer);
    *(&v13[0] + 1) = CVPixelBufferGetHeight(pixelBuffer);
    v10 = a3[1];
    v13[1] = *a3;
    v13[2] = v10;
    *&v12[0] = CVPixelBufferGetWidth(a4);
    *(&v12[0] + 1) = CVPixelBufferGetHeight(a4);
    v11 = a5[1];
    v12[1] = *a5;
    v12[2] = v11;
    return VTPixelTransferChainDoTransfer(v9, pixelBuffer, v13, a4, v12);
  }

  return result;
}

uint64_t vtPixelRotation_BuildChain(uint64_t a1, CVPixelBufferRef pixelBuffer, __CVBuffer *a3, const __CFDictionary *a4, int a5, uint64_t appended, int a7, int a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, unsigned __int8 a17, unsigned __int8 a18, char a19, uint64_t a20, char a21, uint64_t a22, _BYTE *a23)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
  v94 = CVPixelBufferGetPixelFormatType(a3);
  session[0] = 0;
  v92 = a1;
  VTPixelTransferChainRemoveAllNodes(a1);
  if (appended)
  {
    if (VTAvoidHardwarePixelTransfer())
    {
      appended = 0;
    }

    else
    {
      appended = VTPixelTransferChainAppendCelesteRotationNode(a1, a8, a17, a18, 0);
      if (!appended)
      {
        v39 = 0;
        *(a22 + 128) = 3;
        goto LABEL_289;
      }
    }
  }

  v91 = a8;
  v93 = a5;
  if (!a7 || VTAvoidHardwarePixelTransfer())
  {
    v36 = 0;
    Mutable = 0;
    v38 = 0;
    goto LABEL_8;
  }

  v45 = appended;
  v46 = *MEMORY[0x1E695E480];
  VTMetalTransferSessionCreate(*MEMORY[0x1E695E480], 0, session);
  if (!session[0])
  {
    v36 = 0;
    v38 = 0;
    appended = v45;
    Mutable = 0;
LABEL_8:
    if (v93)
    {
      v39 = 4294954382;
      goto LABEL_283;
    }

    if (a8 != 180 && a8)
    {
      v39 = 4294954382;
      if (a11 != a16 || a12 != a15)
      {
        goto LABEL_283;
      }
    }

    else
    {
      v39 = 4294954382;
      if (a11 != a15 || a12 != a16)
      {
        goto LABEL_283;
      }
    }

    if (PixelFormatType != v94)
    {
      goto LABEL_282;
    }

    if (PixelFormatType > 1751410031)
    {
      if (PixelFormatType > 2019963439)
      {
        if (PixelFormatType > 2021078067)
        {
          if (PixelFormatType > 2033463855)
          {
            if (PixelFormatType == 2033463856)
            {
              v40 = a18 | a17;
              if (a8 || v40)
              {
                v41 = 0;
                v79 = a8 == 90;
                v80 = a8;
                if (a8 == 90)
                {
                  v42 = vt_Rotate_y420_90CW;
                }

                else
                {
                  v42 = vt_Rotate_y420_180;
                }

                if (!v79 && v80 != 180)
                {
                  v41 = 0;
                  if (v91 == 270)
                  {
                    v42 = vt_Rotate_y420_90CCW;
                  }

                  else
                  {
                    v42 = 0;
                  }
                }
              }

              else
              {
                v41 = vt_Copy_y420_Crop;
                v42 = 0;
              }

              if (a17)
              {
                v56 = vt_Flip_y420_Hor;
              }

              else
              {
                v56 = 0;
              }

              v57 = a18 == 0;
              v58 = vt_Flip_y420_Ver;
              goto LABEL_274;
            }

            if (PixelFormatType == 2037741158 || PixelFormatType == 2037741171)
            {
              v40 = a18 | a17;
              if (a8 || v40)
              {
                v41 = 0;
                v65 = a8 == 90;
                v66 = a8;
                if (a8 == 90)
                {
                  v42 = vt_Rotate_yuvs_90CW;
                }

                else
                {
                  v42 = vt_Rotate_yuvs_180;
                }

                if (!v65 && v66 != 180)
                {
                  v41 = 0;
                  if (v91 == 270)
                  {
                    v42 = vt_Rotate_yuvs_90CCW;
                  }

                  else
                  {
                    v42 = 0;
                  }
                }
              }

              else
              {
                v41 = vt_Copy_NonPlanar16_Crop;
                v42 = 0;
              }

              if (a17)
              {
                v56 = vt_Flip_yuvs_Hor;
              }

              else
              {
                v56 = 0;
              }

              v57 = a18 == 0;
              v58 = vt_Flip_yuvs_Ver;
LABEL_274:
              if (v57)
              {
                v72 = v56;
              }

              else
              {
                v72 = v58;
              }

              if (!v40 && v41)
              {
                appended = VTPixelTransferChainAppendSoftwareNode(v92, 0, v41, 0, 0, 0);
                v40 = 0;
                *(a22 + 128) = 1;
              }

              goto LABEL_280;
            }

LABEL_223:
            v72 = 0;
            if (!(a18 | a17))
            {
LABEL_282:
              v39 = appended;
              goto LABEL_283;
            }

LABEL_293:
            v39 = VTPixelTransferChainAppendRotationNode(v92, v72);
            *(a22 + 128) = 1;
            goto LABEL_283;
          }

          if (PixelFormatType != 2021078068)
          {
            v43 = 2021078128;
            goto LABEL_115;
          }

LABEL_119:
          v40 = a18 | a17;
          if (a8 || v40)
          {
            v41 = 0;
            v59 = a8 == 90;
            v60 = a8;
            if (a8 == 90)
            {
              v42 = vt_Rotate_x420_90CW;
            }

            else
            {
              v42 = vt_Rotate_x420_180;
            }

            if (!v59 && v60 != 180)
            {
              v41 = 0;
              if (v91 == 270)
              {
                v42 = vt_Rotate_x420_90CCW;
              }

              else
              {
                v42 = 0;
              }
            }
          }

          else
          {
            v42 = 0;
            v41 = vt_Copy_x420_Crop;
            if (PixelFormatType != 2016686640 && PixelFormatType != 2019963440 && PixelFormatType != 2021077552)
            {
              v42 = 0;
              v41 = vt_Copy_x444_Crop;
            }
          }

          if (a17)
          {
            v56 = vt_Flip_x420_Hor;
          }

          else
          {
            v56 = 0;
          }

          v57 = a18 == 0;
          v58 = vt_Flip_x420_Ver;
          goto LABEL_274;
        }

        if (PixelFormatType > 2019964015)
        {
          if (PixelFormatType == 2019964016)
          {
            goto LABEL_116;
          }

          v52 = 2021077552;
        }

        else
        {
          if (PixelFormatType == 2019963440)
          {
            goto LABEL_119;
          }

          v52 = 2019963956;
        }

LABEL_85:
        if (PixelFormatType != v52)
        {
          goto LABEL_223;
        }

        goto LABEL_119;
      }

      if (PixelFormatType <= 1999843441)
      {
        if (PixelFormatType <= 1815491697)
        {
          if (PixelFormatType == 1751410032)
          {
            goto LABEL_96;
          }

          v44 = 1751411059;
          goto LABEL_95;
        }

        if (PixelFormatType != 1815491698)
        {
          if (PixelFormatType == 1983000886)
          {
            v40 = a18 | a17;
            if (a8 || v40)
            {
              v41 = 0;
              v77 = a8 == 90;
              v78 = a8;
              if (a8 == 90)
              {
                v42 = vt_Rotate_v216_90CW;
              }

              else
              {
                v42 = vt_Rotate_v216_180;
              }

              if (!v77 && v78 != 180)
              {
                v41 = 0;
                if (v91 == 270)
                {
                  v42 = vt_Rotate_v216_90CCW;
                }

                else
                {
                  v42 = 0;
                }
              }
            }

            else
            {
              v41 = vt_Copy_NonPlanar32_Crop;
              v42 = 0;
            }

            if (a17)
            {
              v56 = vt_Flip_v216_Hor;
            }

            else
            {
              v56 = 0;
            }

            v57 = a18 == 0;
            v58 = vt_Flip_v216_Ver;
            goto LABEL_274;
          }

          goto LABEL_223;
        }

LABEL_176:
        v40 = a18 | a17;
        if (a8 || v40)
        {
          v69 = a8 == 90;
          v70 = a8;
          if (a8 == 90)
          {
            v42 = vt_Rotate_64_90CW;
          }

          else
          {
            v42 = vt_Rotate_64_180;
          }

          if (!v69 && v70 != 180)
          {
            if (v91 == 270)
            {
              v42 = vt_Rotate_64_90CCW;
            }

            else
            {
              v42 = 0;
            }
          }
        }

        else
        {
          v42 = 0;
        }

        if (a17)
        {
          v71 = vt_Flip_64_Hor;
        }

        else
        {
          v71 = 0;
        }

        if (a18)
        {
          v72 = vt_Flip_64_Ver;
        }

        else
        {
          v72 = v71;
        }

LABEL_280:
        if (v42)
        {
          appended = VTPixelTransferChainAppendRotationNode(v92, v42);
          *(a22 + 128) = 1;
          if (!v40)
          {
            goto LABEL_282;
          }
        }

        else if (!v40)
        {
          goto LABEL_282;
        }

        goto LABEL_293;
      }

      if (PixelFormatType <= 2016687155)
      {
        if (PixelFormatType == 1999843442)
        {
          goto LABEL_116;
        }

        v52 = 2016686640;
        goto LABEL_85;
      }

      if (PixelFormatType == 2016687156)
      {
        goto LABEL_119;
      }

      v43 = 2016687216;
      goto LABEL_115;
    }

    if (PixelFormatType > 1278226487)
    {
      if (PixelFormatType > 1380411456)
      {
        if (PixelFormatType <= 1717855599)
        {
          if (PixelFormatType != 1380411457)
          {
            if (PixelFormatType == 1647534392)
            {
              v40 = a18 | a17;
              if (a8 || v40)
              {
                v41 = 0;
                v75 = a8 == 90;
                v76 = a8;
                if (a8 == 90)
                {
                  v42 = vt_Rotate_b3a8_90CW;
                }

                else
                {
                  v42 = vt_Rotate_b3a8_180;
                }

                if (!v75 && v76 != 180)
                {
                  v41 = 0;
                  if (v91 == 270)
                  {
                    v42 = vt_Rotate_b3a8_90CCW;
                  }

                  else
                  {
                    v42 = 0;
                  }
                }
              }

              else
              {
                v41 = vt_Copy_b3a8_b3a8_Crop;
                v42 = 0;
              }

              if (a17)
              {
                v56 = vt_Flip_b3a8_Hor;
              }

              else
              {
                v56 = 0;
              }

              v57 = a18 == 0;
              v58 = vt_Flip_b3a8_Ver;
              goto LABEL_274;
            }

            goto LABEL_223;
          }

          goto LABEL_176;
        }

        if (PixelFormatType == 1717855600)
        {
          goto LABEL_116;
        }

        v43 = 1717856627;
      }

      else
      {
        if (PixelFormatType > 1278226535)
        {
          if (PixelFormatType == 1278226536)
          {
            goto LABEL_96;
          }

          v44 = 1278226742;
LABEL_95:
          if (PixelFormatType != v44)
          {
            goto LABEL_223;
          }

LABEL_96:
          v40 = a18 | a17;
          if (a8 || v40)
          {
            v41 = 0;
            v63 = a8 == 90;
            v64 = a8;
            if (a8 == 90)
            {
              v42 = vt_Rotate_16_90CW;
            }

            else
            {
              v42 = vt_Rotate_16_180;
            }

            if (!v63 && v64 != 180)
            {
              v41 = 0;
              if (v91 == 270)
              {
                v42 = vt_Rotate_16_90CCW;
              }

              else
              {
                v42 = 0;
              }
            }
          }

          else
          {
            v41 = vt_Copy_NonPlanar16_Crop;
            v42 = 0;
          }

          if (a17)
          {
            v56 = vt_Flip_16_Hor;
          }

          else
          {
            v56 = 0;
          }

          v57 = a18 == 0;
          v58 = vt_Flip_16_Ver;
          goto LABEL_274;
        }

        if (PixelFormatType == 1278226488)
        {
          v40 = a18 | a17;
          if (a8 || v40)
          {
            v41 = 0;
            v73 = a8 == 90;
            v74 = a8;
            if (a8 == 90)
            {
              v42 = vt_Rotate_8_90CW;
            }

            else
            {
              v42 = vt_Rotate_8_180;
            }

            if (!v73 && v74 != 180)
            {
              v41 = 0;
              if (v91 == 270)
              {
                v42 = vt_Rotate_8_90CCW;
              }

              else
              {
                v42 = 0;
              }
            }
          }

          else
          {
            v41 = vt_Copy_NonPlanar8_Crop;
            v42 = 0;
          }

          if (a17)
          {
            v56 = vt_Flip_8_Hor;
          }

          else
          {
            v56 = 0;
          }

          v57 = a18 == 0;
          v58 = vt_Flip_8_Ver;
          goto LABEL_274;
        }

        v43 = 1278226534;
      }

LABEL_115:
      if (PixelFormatType != v43)
      {
        goto LABEL_223;
      }

LABEL_116:
      v40 = a18 | a17;
      if (a8 || v40)
      {
        v41 = 0;
        v54 = a8 == 90;
        v55 = a8;
        if (a8 == 90)
        {
          v42 = vt_Rotate_32_90CW;
        }

        else
        {
          v42 = vt_Rotate_32_180;
        }

        if (!v54 && v55 != 180)
        {
          v41 = 0;
          if (v91 == 270)
          {
            v42 = vt_Rotate_32_90CCW;
          }

          else
          {
            v42 = 0;
          }
        }
      }

      else
      {
        v41 = vt_Copy_NonPlanar32_Crop;
        v42 = 0;
      }

      if (a17)
      {
        v56 = vt_Flip_32_Hor;
      }

      else
      {
        v56 = 0;
      }

      v57 = a18 == 0;
      v58 = vt_Flip_32_Ver;
      goto LABEL_274;
    }

    if (PixelFormatType > 875704437)
    {
      if (PixelFormatType > 875836533)
      {
        if (PixelFormatType != 875836534)
        {
          v43 = 1111970369;
          goto LABEL_115;
        }

LABEL_101:
        v40 = a18 | a17;
        if (a8 || v40)
        {
          v41 = 0;
          v61 = a8 == 90;
          v62 = a8;
          if (a8 == 90)
          {
            v42 = vt_Rotate_420v_90CW;
          }

          else
          {
            v42 = vt_Rotate_420v_180;
          }

          if (!v61 && v62 != 180)
          {
            v41 = 0;
            if (v91 == 270)
            {
              v42 = vt_Rotate_420v_90CCW;
            }

            else
            {
              v42 = 0;
            }
          }
        }

        else
        {
          v42 = 0;
          if ((PixelFormatType & 0xFFFFFFEF) == 0x34323066)
          {
            v41 = vt_Copy_420v_Crop;
          }

          else
          {
            v41 = vt_Copy_444v_Crop;
          }
        }

        if (a17)
        {
          v56 = vt_Flip_420v_Hor;
        }

        else
        {
          v56 = 0;
        }

        v57 = a18 == 0;
        v58 = vt_Flip_420v_Ver;
        goto LABEL_274;
      }

      if (PixelFormatType == 875704438)
      {
        goto LABEL_101;
      }

      v53 = 875836518;
    }

    else
    {
      if (PixelFormatType <= 846624120)
      {
        if (PixelFormatType == 32)
        {
          goto LABEL_116;
        }

        if (PixelFormatType != 846624102)
        {
          goto LABEL_223;
        }

LABEL_173:
        v40 = a18 | a17;
        if (a8 || v40)
        {
          v41 = 0;
          v67 = a8 == 90;
          v68 = a8;
          if (a8 == 90)
          {
            v42 = vt_Rotate_2vuy_90CW;
          }

          else
          {
            v42 = vt_Rotate_2vuy_180;
          }

          if (!v67 && v68 != 180)
          {
            v41 = 0;
            if (v91 == 270)
            {
              v42 = vt_Rotate_2vuy_90CCW;
            }

            else
            {
              v42 = 0;
            }
          }
        }

        else
        {
          v41 = vt_Copy_NonPlanar16_Crop;
          v42 = 0;
        }

        if (a17)
        {
          v56 = vt_Flip_2vuy_Hor;
        }

        else
        {
          v56 = 0;
        }

        v57 = a18 == 0;
        v58 = vt_Flip_2vuy_Ver;
        goto LABEL_274;
      }

      if (PixelFormatType == 846624121)
      {
        goto LABEL_173;
      }

      v53 = 875704422;
    }

    if (PixelFormatType != v53)
    {
      goto LABEL_223;
    }

    goto LABEL_101;
  }

  v47 = MEMORY[0x1E695E9D8];
  v48 = MEMORY[0x1E695E9E8];
  theDict = CFDictionaryCreateMutable(v46, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  Mutable = CFDictionaryCreateMutable(v46, 0, v47, v48);
  v36 = CFDictionaryCreateMutable(v46, 0, v47, v48);
  key = *MEMORY[0x1E6965D88];
  value = CFDictionaryGetValue(a4, *MEMORY[0x1E6965D88]);
  v83 = *MEMORY[0x1E6965F30];
  v87 = CFDictionaryGetValue(a4, *MEMORY[0x1E6965F30]);
  v84 = *MEMORY[0x1E6965F98];
  v88 = CFDictionaryGetValue(a4, *MEMORY[0x1E6965F98]);
  v85 = *MEMORY[0x1E6965EC8];
  v89 = CFDictionaryGetValue(a4, *MEMORY[0x1E6965EC8]);
  v49 = *MEMORY[0x1E695E4D0];
  if (a19)
  {
    v50 = *MEMORY[0x1E695E4D0];
  }

  else
  {
    v50 = *MEMORY[0x1E695E4C0];
  }

  VTSessionSetProperty(session[0], @"WriteBlackPixelsOutsideDestRect", v50);
  VTMetalTransferSessionSetProperties(session[0], a20);
  if (a8)
  {
    FigCFDictionarySetInt();
  }

  if (a17)
  {
    CFDictionarySetValue(Mutable, @"FlipHorizontalOrientation", v49);
  }

  if (a18)
  {
    CFDictionarySetValue(Mutable, @"FlipVerticalOrientation", v49);
  }

  FigCFDictionarySetFloat32();
  FigCFDictionarySetFloat32();
  FigCFDictionarySetFloat32();
  FigCFDictionarySetFloat32();
  FigCFDictionarySetFloat32();
  FigCFDictionarySetFloat32();
  FigCFDictionarySetFloat32();
  FigCFDictionarySetFloat32();
  if (value)
  {
    CFDictionarySetValue(v36, key, value);
  }

  v38 = theDict;
  if (v87)
  {
    CFDictionarySetValue(v36, v83, v87);
  }

  if (v88)
  {
    CFDictionarySetValue(v36, v84, v88);
  }

  if (v89)
  {
    CFDictionarySetValue(v36, v85, v89);
  }

  CFDictionarySetValue(theDict, @"SourceAmendments", Mutable);
  CFDictionarySetValue(theDict, @"DestinationAmendments", v36);
  if (a21)
  {
    CFDictionarySetValue(theDict, @"SetGPUPriorityLow", v49);
  }

  v51 = VTMetalTransferSessionTransferImageSync(session[0], pixelBuffer, a3, theDict);
  if (v51)
  {
    goto LABEL_65;
  }

  if (a23)
  {
    *a23 = 1;
  }

  *(a22 + 128) = 2;
  v51 = VTPixelTransferChainAppendNode(v92, session[0]);
  if (v51)
  {
LABEL_65:
    appended = v51;
    goto LABEL_8;
  }

  v39 = 0;
LABEL_283:
  if (v38)
  {
    CFRelease(v38);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v36)
  {
    CFRelease(v36);
  }

LABEL_289:
  if (session[0])
  {
    CFRelease(session[0]);
  }

  return v39;
}

uint64_t vt_Copy_RGhA_TRC_Tone_Mat_TRC_420vf_neon_fp16(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
{
  v60 = a7;
  v61 = a8;
  v66 = a4;
  v67 = a5;
  v59 = a3;
  v68 = *MEMORY[0x1E69E9840];
  v58 = a1;
  v9 = *(a1 + 162);
  v10 = a2[1];
  v12 = a2[2];
  v11 = a2[3];
  v14 = a2[4];
  v13 = a2[5];
  v15 = *a6;
  v62 = *a2;
  v63 = v15;
  v16 = a6[1];
  v17 = a6[2];
  v18 = a6[3];
  v19 = a6[4];
  v20 = a6[5];
  v64 = v16;
  v65 = v10;
  v22 = v13 + v11 != v10 || v20 + v18 != v16;
  LODWORD(v57) = v22;
  if (v9 == 255)
  {
    v23 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v23)
    {
      v24 = 0;
LABEL_61:
      free(v23);
      return v24;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00]();
    v23 = (&v56 - v25);
    bzero(&v56 - v25, v26);
  }

  v27 = v17 - 1;
  v28 = a9;
  v29 = v12 - 1;
  if (v19)
  {
    v30 = v14 + 1;
  }

  else
  {
    v29 = v12;
    v30 = v14;
  }

  if (v19)
  {
    v31 = v19 + 1;
  }

  else
  {
    v27 = v17;
    v31 = v19;
  }

  v32 = v29 - (v27 & 1);
  v33 = v27 & 0xFFFFFFFFFFFFFFFELL;
  v34 = v18 - 1;
  v35 = v11 - 1;
  if (v20)
  {
    v36 = v13 + 1;
  }

  else
  {
    v35 = v11;
    v36 = v13;
  }

  if (v20)
  {
    v37 = v20 + 1;
  }

  else
  {
    v34 = v18;
    v37 = v20;
  }

  if (v34)
  {
    if ((v57 & 1) != 0 || (*v66 * (v35 + 1 + v36)) > *v67 || (v38 = v34 + 1 + v37, (*v61 * v38) > *a9) || (v61[1] * (v38 / 2)) > a9[1] || (v61[2] * v38) > a9[2])
    {
      --v34;
      --v35;
    }

    else
    {
      ++v64;
      ++v65;
      ++v35;
      ++v34;
    }
  }

  if (v32 + v30 > v62)
  {
    v32 = v62 - v30;
  }

  if (v33 + v31 > v63)
  {
    v33 = v63 - v31;
  }

  if (v35 + v36 > v65)
  {
    v35 = v65 - v36;
  }

  if (v34 + v37 > v64)
  {
    v34 = v64 - v37;
  }

  if (v32 >= v33)
  {
    v39 = v33;
  }

  else
  {
    v39 = v32;
  }

  if (v35 >= v34)
  {
    v40 = v34;
  }

  else
  {
    v40 = v35;
  }

  if (((v36 + v40 - 1) * *v66 + 8 * (v39 + v30)) > *v67)
  {
    v57 = v36;
    v41 = v30;
    v42 = v31;
    v43 = v9;
    v44 = a9;
    goto LABEL_54;
  }

  v45 = v40 + v37 - 1;
  v46 = v39 + v31;
  if ((v39 + v31 + *v61 * v45) > *a9)
  {
    v57 = v36;
    v41 = v30;
    v42 = v31;
    v43 = v9;
    v44 = a9;
    goto LABEL_54;
  }

  v47 = v60;
  if (*(v60 + 8) && ((v46 + 1 + ((v46 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v61[1] * ((v40 + v37 + 1) / 2 - 1) > a9[1])
  {
    v57 = v36;
    v41 = v30;
    v42 = v31;
    v43 = v9;
    v44 = a9;
    goto LABEL_54;
  }

  if (*(v60 + 16) && (v46 + v61[2] * v45) > a9[2])
  {
    v57 = v36;
    v41 = v30;
    v42 = v31;
    v43 = v9;
    v44 = a9;
LABEL_54:
    fig_log_get_emitter();
    v24 = FigSignalErrorAtGM();
    v47 = v60;
    v28 = v44;
    v9 = v43;
    v31 = v42;
    v30 = v41;
    v36 = v57;
    if (v24)
    {
      goto LABEL_60;
    }
  }

  *v23 = v9;
  *(v23 + 4) = v62;
  v48 = v64;
  *(v23 + 12) = v65;
  *(v23 + 20) = v39;
  *(v23 + 28) = v40;
  *(v23 + 36) = v30;
  *(v23 + 44) = v36;
  v23[11] = v48;
  v23[12] = v39;
  v23[13] = v40;
  v23[14] = v31;
  v49 = v66;
  v23[7] = v59;
  v23[8] = v49;
  v50 = v63;
  v23[9] = v67;
  v23[10] = v50;
  v23[15] = v37;
  v23[16] = v47;
  v23[17] = v61;
  v23[18] = v28;
  v23[19] = v58;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v9, global_queue, v23, vt_Copy_RGhA_TRC_Tone_Mat_TRC_420vf_neon_fp16_GCD);
  if (!v9)
  {
    return 0;
  }

  v52 = (v23 + 20);
  v53 = v9;
  while (1)
  {
    v54 = *v52++;
    v24 = v54;
    if (v54)
    {
      break;
    }

    if (!--v53)
    {
      v24 = 0;
      break;
    }
  }

LABEL_60:
  if (v9 == 255)
  {
    goto LABEL_61;
  }

  return v24;
}

uint64_t vt_Copy_RGhA_TRC_Tone_Mat_TRC_420vf_neon_fp16_GCD(unsigned __int8 *a1, uint64_t a2, __n128 _Q0, float32x4_t a4, float16x8_t _Q2, float32x4_t a6, double a7, double a8, double a9, float16x8_t _Q7)
{
  v10 = 0;
  v11 = *(a1 + 36);
  v230 = *(a1 + 24);
  v12 = 2 * *a1;
  v13 = *(a1 + 44) + 2 * (*(a1 + 28) * a2 / v12);
  v14 = *(a1 + 13);
  v15 = *(a1 + 14);
  v16 = v14 * a2;
  v17 = *(a1 + 19);
  v18 = *(a1 + 7);
  v19 = *(a1 + 15);
  v20 = *(a1 + 16);
  v21 = *(a1 + 17);
  result = **(a1 + 8);
  v23 = *v18;
  v24 = *v21;
  v25 = v21[1];
  v27 = *v20;
  v26 = v20[1];
  v28 = v21[2];
  v29 = v20[2];
  v30 = v19 + 2 * (v16 / v12);
  v279 = *(v17 + 154);
  v31 = *(v17 + 144);
  v32 = *(v17 + 146);
  v33 = *(v17 + 148);
  v34 = *(v17 + 150);
  v35 = *(v17 + 152);
  v274 = *(v17 + 36);
  v273 = *(v17 + 40);
  a6.i32[0] = *(v17 + 48);
  v272 = *(v17 + 44);
  a4.i32[0] = *(v17 + 52);
  _Q0.n128_u32[0] = *(v17 + 56);
  v36 = *(v17 + 60);
  _Q2.i32[0] = *(v17 + 64);
  v37 = (v14 + v16) / v12 - v16 / v12;
  v38 = *(v17 + 68);
  v271 = *(v17 + 72);
  v270 = *(v17 + 76);
  v269 = *(v17 + 80);
  v268 = *(v17 + 84);
  v267 = *(v17 + 88);
  v229 = v25;
  v39 = v25 * (v30 / 2);
  v266 = *(v17 + 92);
  v265 = *(v17 + 96);
  v264 = *(v17 + 100);
  v263 = *(v17 + 104);
  _S18 = *(v17 + 108);
  _S19 = *(v17 + 112);
  _S20 = *(v17 + 116);
  _S21 = *(v17 + 120);
  memset(v278, 0, sizeof(v278));
  do
  {
    v44 = 0;
    v45 = *(&v279 + v10);
    v46 = *(v278 + v10);
    do
    {
      v277 = v46;
      *(&v277 | v44 & 7) = v45 + 4 * v44;
      v46 = v277;
      ++v44;
    }

    while (v44 != 8);
    *(v278 + v10++) = v277;
  }

  while (v10 != 4);
  v228 = 2 * v37;
  if (2 * v37 >= 1)
  {
    v47 = 0;
    v262 = v31;
    v48 = v32;
    v261 = v33;
    v275 = v34;
    v49 = v35;
    a6.i32[1] = v36;
    __asm { FMOV            V4.2S, #0.25 }

    *a6.f32 = vmul_f32(*a6.f32, _D4);
    a4.i32[1] = _Q2.i32[0];
    *a4.f32 = vmul_f32(*a4.f32, _D4);
    _Q0.n128_u32[1] = v38;
    *_Q2.i8 = vmul_f32(_Q0.n128_u64[0], _D4);
    v55 = v17 + 16548;
    _Q0.n128_f32[0] = v274;
    __asm { FCVT            H0, S0 }

    v257 = *_Q0.n128_u16;
    v56 = v230 & 0xFFFFFFFE;
    _Q0.n128_f32[0] = v273;
    __asm { FCVT            H0, S0 }

    v255 = *_Q0.n128_u16;
    v256 = vdupq_lane_s32(vcvt_f16_f32(a6), 0);
    v57 = v17 + 32932;
    v58 = v17 + 164;
    _Q0.n128_f32[0] = v272;
    __asm { FCVT            H0, S0 }

    v253 = *_Q0.n128_u16;
    v254 = vdupq_lane_s32(vcvt_f16_f32(a4), 0);
    _Q0.n128_u64[0] = vcvt_f16_f32(_Q2);
    v59 = vdupq_lane_s32(_Q0.n128_u64[0], 0);
    __asm { FCVT            H0, S18 }

    v251 = *_Q0.n128_u16;
    v252 = v59;
    __asm { FCVT            H0, S19 }

    v250 = *_Q0.n128_u16;
    __asm { FCVT            H0, S20 }

    v249 = *_Q0.n128_u16;
    __asm { FCVT            H0, S21 }

    v248 = *_Q0.n128_u16;
    _Q0.n128_f32[0] = v271;
    __asm { FCVT            H0, S0 }

    v247 = _Q0;
    _Q0.n128_f32[0] = v270;
    __asm { FCVT            H0, S0 }

    v246 = *_Q0.n128_u16;
    _Q0.n128_f32[0] = v269;
    __asm { FCVT            H0, S0 }

    v245 = _Q0;
    _Q0.n128_f32[0] = v268;
    __asm { FCVT            H0, S0 }

    v244 = *_Q0.n128_u16;
    _Q0.n128_f32[0] = v267;
    __asm { FCVT            H0, S0 }

    v243 = *_Q0.n128_u16;
    _Q0.n128_f32[0] = v266;
    __asm { FCVT            H0, S0 }

    v242 = _Q0;
    _Q0.n128_f32[0] = v265;
    __asm { FCVT            H0, S0 }

    v276 = _Q0;
    _Q0.n128_f32[0] = v264;
    __asm { FCVT            H0, S0 }

    v241 = *_Q0.n128_u16;
    _Q0.n128_f32[0] = v263;
    __asm { FCVT            H0, S0 }

    v240 = *_Q0.n128_u16;
    *_Q0.n128_u16 = v31;
    v60 = vdupq_lane_s16(_Q0.n128_u64[0], 0);
    *_Q0.n128_u16 = v32;
    v61 = vdupq_lane_s16(_Q0.n128_u64[0], 0);
    v238 = v61;
    v239 = v60;
    *v61.i16 = v33;
    v62 = vdupq_lane_s16(*v61.i8, 0);
    *v61.i16 = v34;
    v63 = vdupq_lane_s16(*v61.i8, 0);
    v236 = v63;
    v237 = v62;
    if (v29)
    {
      v64 = v29 + v28 * v30 + v15;
    }

    else
    {
      v64 = 0;
    }

    *v63.i16 = v35;
    _Q0 = vdupq_lane_s16(*v63.i8, 0);
    v235 = _Q0;
    v66 = (v26 + v39 + v15);
    v67 = (v27 + v24 * v30 + v15);
    v68 = (v23 + result * v13 + 8 * v11);
    v259 = a4.f32[0];
    v260 = a6.f32[0];
    v233 = a4.f32[1];
    v234 = a6.f32[1];
    v258 = _Q2.i64[0];
    v232 = *&_Q2.i32[1];
    v226 = v24;
    v227 = result;
    v225 = v28;
    do
    {
      v69 = v68 + result;
      v70 = v67 + v24;
      v71 = (v64 + v28);
      v231 = v64 + v28;
      if (v230 < 8)
      {
        v121 = 0;
        v74 = (v68 + result);
        v73 = (v67 + v24);
        v120 = v66;
      }

      else
      {
        v72 = 0;
        v73 = (v67 + v24);
        v74 = (v68 + result);
        do
        {
          v281 = vld4q_s16(v68);
          v68 += 32;
          v280 = vld4q_s16(v74);
          v74 += 32;
          if (v64)
          {
            v75 = vdupq_n_s16(0x5BF8u);
            v76 = vmovn_s16(vcvtq_u16_f16(vmulq_f16(v281.val[3], v75)));
            v77 = vmovn_s16(vcvtq_u16_f16(vmulq_f16(v280.val[3], v75)));
          }

          else
          {
            v76 = 0;
            v77 = 0;
          }

          v78.i64[0] = 0x7000700070007000;
          v78.i64[1] = 0x7000700070007000;
          v79 = vmulq_f16(v280.val[0], v78);
          v80.i64[0] = 0x9000900090009000;
          v80.i64[1] = 0x9000900090009000;
          v81 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_f16(v281.val[0], v78), 0), v80));
          v82.i16[0] = *(v58 + 2 * v81.u16[0]);
          v82.i16[1] = *(v58 + 2 * v81.u16[1]);
          v82.i16[2] = *(v58 + 2 * v81.u16[2]);
          v82.i16[3] = *(v58 + 2 * v81.u16[3]);
          v82.i16[4] = *(v58 + 2 * v81.u16[4]);
          v82.i16[5] = *(v58 + 2 * v81.u16[5]);
          v82.i16[6] = *(v58 + 2 * v81.u16[6]);
          v82.i16[7] = *(v58 + 2 * v81.u16[7]);
          v83 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_f16(v281.val[1], v78), 0), v80));
          v84.i16[0] = *(v58 + 2 * v83.u16[0]);
          v84.i16[1] = *(v58 + 2 * v83.u16[1]);
          v84.i16[2] = *(v58 + 2 * v83.u16[2]);
          v84.i16[3] = *(v58 + 2 * v83.u16[3]);
          v84.i16[4] = *(v58 + 2 * v83.u16[4]);
          v84.i16[5] = *(v58 + 2 * v83.u16[5]);
          v84.i16[6] = *(v58 + 2 * v83.u16[6]);
          v84.i16[7] = *(v58 + 2 * v83.u16[7]);
          v85 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_f16(v281.val[2], v78), 0), v80));
          v86.i16[0] = *(v58 + 2 * v85.u16[0]);
          v86.i16[1] = *(v58 + 2 * v85.u16[1]);
          v86.i16[2] = *(v58 + 2 * v85.u16[2]);
          v86.i16[3] = *(v58 + 2 * v85.u16[3]);
          v86.i16[4] = *(v58 + 2 * v85.u16[4]);
          v86.i16[5] = *(v58 + 2 * v85.u16[5]);
          v86.i16[6] = *(v58 + 2 * v85.u16[6]);
          v86.i16[7] = *(v58 + 2 * v85.u16[7]);
          v87 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v79, 0), v80));
          v79.i16[0] = *(v58 + 2 * v87.u16[0]);
          v79.i16[1] = *(v58 + 2 * v87.u16[1]);
          v79.i16[2] = *(v58 + 2 * v87.u16[2]);
          v79.i16[3] = *(v58 + 2 * v87.u16[3]);
          v79.i16[4] = *(v58 + 2 * v87.u16[4]);
          v79.i16[5] = *(v58 + 2 * v87.u16[5]);
          v79.i16[6] = *(v58 + 2 * v87.u16[6]);
          v79.i16[7] = *(v58 + 2 * v87.u16[7]);
          v88 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_f16(v280.val[1], v78), 0), v80));
          v89.i16[0] = *(v58 + 2 * v88.u16[0]);
          v89.i16[1] = *(v58 + 2 * v88.u16[1]);
          v89.i16[2] = *(v58 + 2 * v88.u16[2]);
          v89.i16[3] = *(v58 + 2 * v88.u16[3]);
          v89.i16[4] = *(v58 + 2 * v88.u16[4]);
          v89.i16[5] = *(v58 + 2 * v88.u16[5]);
          v89.i16[6] = *(v58 + 2 * v88.u16[6]);
          v89.i16[7] = *(v58 + 2 * v88.u16[7]);
          v90 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_f16(v280.val[2], v78), 0), v80));
          v91.i16[0] = *(v58 + 2 * v90.u16[0]);
          v91.i16[1] = *(v58 + 2 * v90.u16[1]);
          v91.i16[2] = *(v58 + 2 * v90.u16[2]);
          v91.i16[3] = *(v58 + 2 * v90.u16[3]);
          v91.i16[4] = *(v58 + 2 * v90.u16[4]);
          v91.i16[5] = *(v58 + 2 * v90.u16[5]);
          v91.i16[6] = *(v58 + 2 * v90.u16[6]);
          v91.i16[7] = *(v58 + 2 * v90.u16[7]);
          v92 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v82, v251), v84, v250), v86, v249), vmaxq_f16(vmaxq_f16(v82, v84), v86), v248), 0), v80));
          v93.i16[0] = *(v55 + 2 * v92.u16[0]);
          v93.i16[1] = *(v55 + 2 * v92.u16[1]);
          v93.i16[2] = *(v55 + 2 * v92.u16[2]);
          v93.i16[3] = *(v55 + 2 * v92.u16[3]);
          v93.i16[4] = *(v55 + 2 * v92.u16[4]);
          v93.i16[5] = *(v55 + 2 * v92.u16[5]);
          v93.i16[6] = *(v55 + 2 * v92.u16[6]);
          v93.i16[7] = *(v55 + 2 * v92.u16[7]);
          v94 = vmulq_f16(v82, v93);
          v95 = vmulq_f16(v84, v93);
          v96 = vmulq_f16(v86, v93);
          v97 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v79, v251), v89, v250), v91, v249), vmaxq_f16(vmaxq_f16(v79, v89), v91), v248), 0), v80));
          v98.i16[0] = *(v55 + 2 * v97.u16[0]);
          v98.i16[1] = *(v55 + 2 * v97.u16[1]);
          v98.i16[2] = *(v55 + 2 * v97.u16[2]);
          v98.i16[3] = *(v55 + 2 * v97.u16[3]);
          v98.i16[4] = *(v55 + 2 * v97.u16[4]);
          v98.i16[5] = *(v55 + 2 * v97.u16[5]);
          v98.i16[6] = *(v55 + 2 * v97.u16[6]);
          v98.i16[7] = *(v55 + 2 * v97.u16[7]);
          v99 = vmulq_f16(v79, v98);
          v100 = vmulq_f16(v89, v98);
          v101 = vmulq_f16(v91, v98);
          v102.i16[7] = v247.n128_i16[7];
          v86.i16[7] = v245.n128_i16[7];
          v103.i16[7] = v242.n128_i16[7];
          v104 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v94, v244), v95, v243), v96, *v242.n128_u16);
          v105 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v96, v240), v95, v241), v94, *v276.n128_u16);
          v106 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v99, v244), v100, v243), v101, *v242.n128_u16);
          v107 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v94, *v247.n128_u16), v95, v246), v96, *v245.n128_u16), 0), v80));
          v103.i16[0] = *(v57 + 2 * v107.u16[0]);
          v103.i16[1] = *(v57 + 2 * v107.u16[1]);
          v103.i16[2] = *(v57 + 2 * v107.u16[2]);
          v103.i16[3] = *(v57 + 2 * v107.u16[3]);
          v103.i16[4] = *(v57 + 2 * v107.u16[4]);
          v103.i16[5] = *(v57 + 2 * v107.u16[5]);
          v103.i16[6] = *(v57 + 2 * v107.u16[6]);
          v108 = v107.u16[7];
          v109 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v104, 0), v80));
          v86.i16[0] = *(v57 + 2 * v109.u16[0]);
          v86.i16[1] = *(v57 + 2 * v109.u16[1]);
          v86.i16[2] = *(v57 + 2 * v109.u16[2]);
          v86.i16[3] = *(v57 + 2 * v109.u16[3]);
          v86.i16[4] = *(v57 + 2 * v109.u16[4]);
          v86.i16[5] = *(v57 + 2 * v109.u16[5]);
          v86.i16[6] = *(v57 + 2 * v109.u16[6]);
          v110 = vuzp1q_s16(v103, v86);
          v103.i16[7] = *(v57 + 2 * v108);
          v86.i16[7] = *(v57 + 2 * v109.u16[7]);
          v111 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v105, 0), v80));
          v109.i16[0] = *(v57 + 2 * v111.u16[0]);
          v109.i16[1] = *(v57 + 2 * v111.u16[1]);
          v109.i16[2] = *(v57 + 2 * v111.u16[2]);
          v109.i16[3] = *(v57 + 2 * v111.u16[3]);
          v109.i16[4] = *(v57 + 2 * v111.u16[4]);
          v109.i16[5] = *(v57 + 2 * v111.u16[5]);
          v109.i16[6] = *(v57 + 2 * v111.u16[6]);
          v112 = vmlaq_n_f16(vmulq_n_f16(v101, v240), v100, v241);
          v113 = (v57 + 2 * v111.u16[7]);
          a4 = v109;
          a4.i16[7] = *v113;
          v114 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v99, *v247.n128_u16), v100, v246), v101, *v245.n128_u16), 0), v80));
          v101.i16[0] = *(v57 + 2 * v114.u16[0]);
          v101.i16[1] = *(v57 + 2 * v114.u16[1]);
          v101.i16[2] = *(v57 + 2 * v114.u16[2]);
          v101.i16[3] = *(v57 + 2 * v114.u16[3]);
          v101.i16[4] = *(v57 + 2 * v114.u16[4]);
          v101.i16[5] = *(v57 + 2 * v114.u16[5]);
          v101.i16[6] = *(v57 + 2 * v114.u16[6]);
          v96.i16[7] = v276.n128_i16[7];
          LOWORD(v113) = v114.i16[7];
          v115 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v106, 0), v80));
          v62.i16[0] = *(v57 + 2 * v115.u16[0]);
          v62.i16[1] = *(v57 + 2 * v115.u16[1]);
          v62.i16[2] = *(v57 + 2 * v115.u16[2]);
          v62.i16[3] = *(v57 + 2 * v115.u16[3]);
          v62.i16[4] = *(v57 + 2 * v115.u16[4]);
          v62.i16[5] = *(v57 + 2 * v115.u16[5]);
          v62.i16[6] = *(v57 + 2 * v115.u16[6]);
          v116 = vuzp1q_s16(v101, v62);
          v101.i16[7] = *(v57 + 2 * v113);
          v62.i16[7] = *(v57 + 2 * v115.u16[7]);
          v117 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v112, v99, *v276.n128_u16), 0), v80));
          v102.i16[0] = *(v57 + 2 * v117.u16[0]);
          v102.i16[1] = *(v57 + 2 * v117.u16[1]);
          v102.i16[2] = *(v57 + 2 * v117.u16[2]);
          v102.i16[3] = *(v57 + 2 * v117.u16[3]);
          v102.i16[4] = *(v57 + 2 * v117.u16[4]);
          v102.i16[5] = *(v57 + 2 * v117.u16[5]);
          v102.i16[6] = *(v57 + 2 * v117.u16[6]);
          v118 = (v57 + 2 * v117.u16[7]);
          v119 = v102;
          v119.i16[7] = *v118;
          *v67++ = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v239, v103, v257), v86, v255), a4, v253), v239), v237)));
          *v73++ = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v239, v101, v257), v62, v255), v119, v253), v239), v237)));
          _Q7 = vuzp2q_s16(v103, v86);
          _Q0 = vaddq_f16(vaddq_f16(vaddq_f16(v110, _Q7), v116), vuzp2q_s16(v101, v62));
          v62.i32[1] = v256.i32[1];
          _Q2 = vmlaq_f16(vmlaq_f16(vmlaq_f16(v238, v256, vzip1q_s16(_Q0, _Q0)), v254, vzip2q_s16(_Q0, _Q0)), v252, vaddq_f16(vaddq_f16(vaddq_f16(vtrn1q_s16(v109, v109), vtrn2q_s16(a4, a4)), vtrn1q_s16(v102, v102)), vtrn2q_s16(v119, v119)));
          a4.i32[1] = v235.i32[1];
          *_Q0.i8 = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(_Q2, v236), v235)));
          *&v66[v72] = _Q0.i64[0];
          if (v64)
          {
            *v64 = v76;
            v64 += 8;
            *v71++ = v77;
          }

          v72 += 8;
        }

        while (v72 < v230 - 7);
        v120 = &v66[v72];
        v121 = v230 & 0xFFFFFFF8;
      }

      if (v121 < v56)
      {
        v122 = 0;
        v123 = v68 + 4;
        v124 = v74 + 4;
        do
        {
          v125 = v122 + 2 * v279;
          _Q0.i16[0] = *(v123 + v125 - 8);
          v126 = v122 + 2 * BYTE1(v279);
          v127 = v122 + 2 * BYTE2(v279);
          _Q0.i16[1] = *(v123 + v126 - 8);
          v128 = vdup_n_s32(0x45FFF800u);
          _D0 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(*&vcvtq_f32_f16(*_Q0.i8), v128), 0), v128)));
          _D0.i16[0] = *(v58 + 2 * _D0.u32[0]);
          a4.i16[0] = *(v123 + v127 - 8);
          __asm { FCVT            S30, H0 }

          _D0.i16[0] = *(v58 + 2 * _D0.u32[1]);
          __asm { FCVT            S8, H0 }

          a4.i16[1] = *(v123 + v125);
          *_Q0.i8 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(*&vcvtq_f32_f16(*a4.f32), v128), 0), v128)));
          _H1 = *(v58 + 2 * _Q0.u32[0]);
          __asm { FCVT            S12, H1 }

          v134 = fmaxf(_S30, fmaxf(_S8, _S12));
          v135 = (((_S19 * _S8) + (_S18 * _S30)) + (_S20 * _S12)) + (_S21 * v134);
          v136 = 8191.0;
          if (v135 <= 8191.0)
          {
            v136 = (((_S19 * _S8) + (_S18 * _S30)) + (_S20 * _S12)) + (_S21 * v134);
            if (v135 < 0.0)
            {
              v136 = 0.0;
            }
          }

          a4.i16[0] = *(v123 + v126);
          _H0 = *(v58 + 2 * _Q0.u32[1]);
          a4.i16[1] = *(v123 + v127);
          __asm { FCVT            S14, H0 }

          *_Q0.i8 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(*&vcvtq_f32_f16(*a4.f32), v128), 0), v128)));
          _Q0.i16[0] = *(v58 + 2 * _Q0.u32[0]);
          __asm { FCVT            S15, H0 }

          _Q0.i16[0] = *(v58 + 2 * _Q0.u32[1]);
          __asm { FCVT            S0, H0 }

          v140 = (((_S19 * _S15) + (_S18 * _S14)) + (_S20 * *_Q0.i32)) + (_S21 * fmaxf(_S14, fmaxf(_S15, *_Q0.i32)));
          a4.i32[0] = 1174403072;
          if (v140 <= 8191.0)
          {
            a4.f32[0] = v140;
            if (v140 < 0.0)
            {
              a4.i64[0] = 0;
            }
          }

          _Q2.i16[0] = *(v124 + v125 - 8);
          _Q2.i16[1] = *(v124 + v126 - 8);
          *_Q2.i8 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(*&vcvtq_f32_f16(*_Q2.i8), v128), 0), v128)));
          _Q2.i16[0] = *(v58 + 2 * _Q2.u32[0]);
          v141 = (v124 + v127);
          v62.i16[0] = *(v124 + v127 - 8);
          __asm { FCVT            S2, H2 }

          _H3 = *(v58 + 2 * _Q2.u32[1]);
          __asm { FCVT            S3, H3 }

          v62.i16[1] = *(v124 + v125);
          v144 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(*&vcvtq_f32_f16(*v62.i8), v128), 0), v128)));
          _H4 = *(v58 + 2 * v144.u32[0]);
          __asm { FCVT            S4, H4 }

          v147 = (((_S19 * _S3) + (_S18 * *_Q2.i32)) + (_S20 * _S4)) + (_S21 * fmaxf(*_Q2.i32, fmaxf(_S3, _S4)));
          v148 = 8191.0;
          if (v147 <= 8191.0)
          {
            v148 = v147;
            if (v147 < 0.0)
            {
              v148 = 0.0;
            }
          }

          v149 = v122 + 2 * HIBYTE(v279);
          v150 = (v124 + v149);
          v151.i16[0] = *(v124 + v149 - 8);
          _Q7.i16[0] = *(v124 + v126);
          v151.i16[1] = *(v123 + v149 - 8);
          v151.i16[2] = *(v123 + v149);
          _H6 = *(v58 + 2 * v144.u32[1]);
          _Q7.i16[1] = *v141;
          __asm { FCVT            S6, H6 }

          *_Q7.i8 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(*&vcvtq_f32_f16(*_Q7.i8), v128), 0), v128)));
          _Q7.i16[0] = *(v58 + 2 * _Q7.u32[0]);
          __asm { FCVT            S16, H7 }

          _Q7.i16[0] = *(v58 + 2 * _Q7.u32[1]);
          __asm { FCVT            S17, H7 }

          _Q7.i16[0] = *(v55 + 2 * llroundf(v136));
          __asm { FCVT            S11, H7 }

          v157 = _S30 * _S11;
          *_Q7.i32 = _S8 * _S11;
          v158 = _S12 * _S11;
          _H1 = *(v55 + 2 * llroundf(a4.f32[0]));
          __asm { FCVT            S1, H1 }

          v161 = _S14 * _S1;
          v162 = _S15 * _S1;
          v163 = *_Q0.i32 * _S1;
          _H0 = *(v55 + 2 * llroundf(v148));
          __asm { FCVT            S1, H0 }

          v166 = *_Q2.i32 * _S1;
          v167 = _S3 * _S1;
          v168 = _S4 * _S1;
          v169 = _S18;
          v170 = (((_S19 * _S16) + (_S18 * _S6)) + (_S20 * _S17)) + (_S21 * fmaxf(_S6, fmaxf(_S16, _S17)));
          v171 = 8191.0;
          if (v170 <= 8191.0)
          {
            v171 = v170;
            if (v170 < 0.0)
            {
              v171 = 0.0;
            }
          }

          _H3 = *(v55 + 2 * llroundf(v171));
          __asm { FCVT            S3, H3 }

          _S4 = _S6 * _S3;
          v175 = _S16 * _S3;
          _S3 = _S17 * _S3;
          _S6 = ((v270 * *_Q7.i32) + (v157 * v271)) + (v158 * v269);
          v178 = ((v267 * *_Q7.i32) + (v157 * v268)) + (v158 * v266);
          _S7 = ((v264 * *_Q7.i32) + (v157 * v265)) + (v158 * v263);
          v180 = ((v270 * v162) + (v161 * v271)) + (v163 * v269);
          v181 = ((v267 * v162) + (v161 * v268)) + (v163 * v266);
          v182 = ((v264 * v162) + (v161 * v265)) + (v163 * v263);
          v183 = ((v270 * v167) + (v166 * v271)) + (v168 * v269);
          v184 = ((v267 * v167) + (v166 * v268)) + (v168 * v266);
          v185 = ((v264 * v167) + (v166 * v265)) + (v168 * v263);
          v186 = (v267 * v175) + (_S4 * v268);
          _S2 = (v264 * v175) + (_S4 * v265);
          _S5 = ((v270 * v175) + (_S4 * v271)) + (_S3 * v269);
          v189 = v186 + (_S3 * v266);
          v190 = _S2 + (_S3 * v263);
          _H0 = *(v57 + 2 * llroundf(fminf(fmaxf(_S6, 0.0), 8191.0)));
          LOWORD(_S2) = *(v57 + 2 * llroundf(fminf(fmaxf(v178, 0.0), 8191.0)));
          __asm
          {
            FCVT            S1, H0
            FCVT            S0, H2
          }

          LOWORD(_S2) = *(v57 + 2 * llroundf(fminf(fmaxf(_S7, 0.0), 8191.0)));
          __asm { FCVT            S30, H2 }

          LOWORD(_S2) = *(v57 + 2 * llroundf(fminf(fmaxf(v180, 0.0), 8191.0)));
          __asm { FCVT            S2, H2 }

          LOWORD(_S3) = *(v57 + 2 * llroundf(fminf(fmaxf(v181, 0.0), 8191.0)));
          __asm { FCVT            S3, H3 }

          LOWORD(_S4) = *(v57 + 2 * llroundf(fminf(fmaxf(v182, 0.0), 8191.0)));
          __asm { FCVT            S8, H4 }

          LOWORD(_S4) = *(v57 + 2 * llroundf(fminf(fmaxf(v183, 0.0), 8191.0)));
          LOWORD(_S6) = *(v57 + 2 * llroundf(fminf(fmaxf(v184, 0.0), 8191.0)));
          __asm
          {
            FCVT            S12, H4
            FCVT            S4, H6
          }

          LOWORD(_S6) = *(v57 + 2 * llroundf(fminf(fmaxf(v185, 0.0), 8191.0)));
          __asm { FCVT            S11, H6 }

          LOWORD(_S5) = *(v57 + 2 * llroundf(fminf(fmaxf(_S5, 0.0), 8191.0)));
          __asm { FCVT            S5, H5 }

          LOWORD(_S6) = *(v57 + 2 * llroundf(fminf(fmaxf(v189, 0.0), 8191.0)));
          __asm { FCVT            S6, H6 }

          LOWORD(_S7) = *(v57 + 2 * llroundf(fminf(fmaxf(v190, 0.0), 8191.0)));
          __asm { FCVT            S31, H7 }

          v204 = (((v273 * _S0) + (v274 * _S1)) + (v272 * _S30)) + v262;
          if (v204 < v262)
          {
            v205 = v262;
          }

          else
          {
            v205 = (((v273 * _S0) + (v274 * _S1)) + (v272 * _S30)) + v262;
          }

          v206 = v204 <= v261;
          v207 = (((v273 * _S3) + (v274 * _S2)) + (v272 * _S8)) + v262;
          if (!v206)
          {
            v205 = v33;
          }

          v208 = llroundf(v205);
          if (v207 < v262)
          {
            v209 = v262;
          }

          else
          {
            v209 = (((v273 * _S3) + (v274 * _S2)) + (v272 * _S8)) + v262;
          }

          v206 = v207 <= v261;
          v210 = (((v273 * _S4) + (v274 * _S12)) + (v272 * _S11)) + v262;
          if (!v206)
          {
            v209 = v33;
          }

          v211 = llroundf(v209);
          if (v210 < v262)
          {
            v212 = v262;
          }

          else
          {
            v212 = (((v273 * _S4) + (v274 * _S12)) + (v272 * _S11)) + v262;
          }

          v206 = v210 <= v261;
          v213 = (((v273 * _S6) + (v274 * _S5)) + (v272 * _S31)) + v262;
          if (!v206)
          {
            v212 = v33;
          }

          v214 = llroundf(v212);
          if (v213 < v262)
          {
            v215 = v262;
          }

          else
          {
            v215 = (((v273 * _S6) + (v274 * _S5)) + (v272 * _S31)) + v262;
          }

          if (v213 <= v261)
          {
            v216 = v215;
          }

          else
          {
            v216 = v33;
          }

          v217 = ((_S1 + _S2) + _S12) + _S5;
          v218 = ((_S0 + _S3) + _S4) + _S6;
          v151.i16[3] = *v150;
          v67->i8[0] = v208;
          v67->i8[1] = v211;
          v73->i8[0] = v214;
          v73->i8[1] = llroundf(v216);
          v219 = ((_S30 + _S8) + _S11) + _S31;
          v62.i32[1] = HIDWORD(v258);
          *v62.i32 = ((v48 + (v217 * v260)) + (v218 * v259)) + (v219 * *&v258);
          v220 = v35;
          if (*v62.i32 <= v49)
          {
            v220 = ((v48 + (v217 * v260)) + (v218 * v259)) + (v219 * *&v258);
            if (*v62.i32 < v275)
            {
              v220 = v34;
            }
          }

          v221 = ((v48 + (v217 * v234)) + (v218 * v233)) + (v219 * v232);
          *v120 = llroundf(v220);
          v222 = v35;
          if (v221 <= v49)
          {
            v222 = v221;
            if (v221 < v275)
            {
              v222 = v34;
            }
          }

          v120[1] = llroundf(v222);
          _S18 = v169;
          if (v64)
          {
            _Q2 = vdupq_n_s32(0x437F0000u);
            *a4.f32 = vmovn_s32(vcvtq_s32_f32(vrndaq_f32(vmulq_f32(vcvtq_f32_f16(v151), _Q2))));
            *_Q0.i8 = vbic_s8(*a4.f32, vceqd_s64(v64, 0));
            *v64 = _Q0.i8[2];
            *(v64 + 1) = _Q0.i8[4];
            v64 += 2;
            v71->i8[0] = _Q0.i8[0];
            v71->i8[1] = _Q0.i8[6];
            v71 = (v71 + 2);
          }

          v121 += 2;
          v122 += 16;
          v67 = (v67 + 2);
          v73 = (v73 + 2);
          v120 += 2;
        }

        while (v121 < v56);
      }

      v24 = v226;
      result = v227;
      v68 = &v69[v227];
      v67 = &v70[v226];
      v66 += v229;
      v28 = v225;
      v64 = v231 + v225;
      v47 += 2;
    }

    while (v47 < v228);
  }

  *&a1[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_RGhA_TRC_Tone_Mat_TRC_420vf(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
{
  v60 = a7;
  v61 = a8;
  v66 = a4;
  v67 = a5;
  v59 = a3;
  v68 = *MEMORY[0x1E69E9840];
  v58 = a1;
  v9 = *(a1 + 162);
  v10 = a2[1];
  v12 = a2[2];
  v11 = a2[3];
  v14 = a2[4];
  v13 = a2[5];
  v15 = *a6;
  v62 = *a2;
  v63 = v15;
  v16 = a6[1];
  v17 = a6[2];
  v18 = a6[3];
  v19 = a6[4];
  v20 = a6[5];
  v64 = v16;
  v65 = v10;
  v22 = v13 + v11 != v10 || v20 + v18 != v16;
  LODWORD(v57) = v22;
  if (v9 == 255)
  {
    v23 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v23)
    {
      v24 = 0;
LABEL_61:
      free(v23);
      return v24;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00]();
    v23 = (&v56 - v25);
    bzero(&v56 - v25, v26);
  }

  v27 = v17 - 1;
  v28 = a9;
  v29 = v12 - 1;
  if (v19)
  {
    v30 = v14 + 1;
  }

  else
  {
    v29 = v12;
    v30 = v14;
  }

  if (v19)
  {
    v31 = v19 + 1;
  }

  else
  {
    v27 = v17;
    v31 = v19;
  }

  v32 = v29 - (v27 & 1);
  v33 = v27 & 0xFFFFFFFFFFFFFFFELL;
  v34 = v18 - 1;
  v35 = v11 - 1;
  if (v20)
  {
    v36 = v13 + 1;
  }

  else
  {
    v35 = v11;
    v36 = v13;
  }

  if (v20)
  {
    v37 = v20 + 1;
  }

  else
  {
    v34 = v18;
    v37 = v20;
  }

  if (v34)
  {
    if ((v57 & 1) != 0 || (*v66 * (v35 + 1 + v36)) > *v67 || (v38 = v34 + 1 + v37, (*v61 * v38) > *a9) || (v61[1] * (v38 / 2)) > a9[1] || (v61[2] * v38) > a9[2])
    {
      --v34;
      --v35;
    }

    else
    {
      ++v64;
      ++v65;
      ++v35;
      ++v34;
    }
  }

  if (v32 + v30 > v62)
  {
    v32 = v62 - v30;
  }

  if (v33 + v31 > v63)
  {
    v33 = v63 - v31;
  }

  if (v35 + v36 > v65)
  {
    v35 = v65 - v36;
  }

  if (v34 + v37 > v64)
  {
    v34 = v64 - v37;
  }

  if (v32 >= v33)
  {
    v39 = v33;
  }

  else
  {
    v39 = v32;
  }

  if (v35 >= v34)
  {
    v40 = v34;
  }

  else
  {
    v40 = v35;
  }

  if (((v36 + v40 - 1) * *v66 + 8 * (v39 + v30)) > *v67)
  {
    v57 = v36;
    v41 = v30;
    v42 = v31;
    v43 = v9;
    v44 = a9;
    goto LABEL_54;
  }

  v45 = v40 + v37 - 1;
  v46 = v39 + v31;
  if ((v39 + v31 + *v61 * v45) > *a9)
  {
    v57 = v36;
    v41 = v30;
    v42 = v31;
    v43 = v9;
    v44 = a9;
    goto LABEL_54;
  }

  v47 = v60;
  if (*(v60 + 8) && ((v46 + 1 + ((v46 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v61[1] * ((v40 + v37 + 1) / 2 - 1) > a9[1])
  {
    v57 = v36;
    v41 = v30;
    v42 = v31;
    v43 = v9;
    v44 = a9;
    goto LABEL_54;
  }

  if (*(v60 + 16) && (v46 + v61[2] * v45) > a9[2])
  {
    v57 = v36;
    v41 = v30;
    v42 = v31;
    v43 = v9;
    v44 = a9;
LABEL_54:
    fig_log_get_emitter();
    v24 = FigSignalErrorAtGM();
    v47 = v60;
    v28 = v44;
    v9 = v43;
    v31 = v42;
    v30 = v41;
    v36 = v57;
    if (v24)
    {
      goto LABEL_60;
    }
  }

  *v23 = v9;
  *(v23 + 4) = v62;
  v48 = v64;
  *(v23 + 12) = v65;
  *(v23 + 20) = v39;
  *(v23 + 28) = v40;
  *(v23 + 36) = v30;
  *(v23 + 44) = v36;
  v23[11] = v48;
  v23[12] = v39;
  v23[13] = v40;
  v23[14] = v31;
  v49 = v66;
  v23[7] = v59;
  v23[8] = v49;
  v50 = v63;
  v23[9] = v67;
  v23[10] = v50;
  v23[15] = v37;
  v23[16] = v47;
  v23[17] = v61;
  v23[18] = v28;
  v23[19] = v58;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v9, global_queue, v23, vt_Copy_RGhA_TRC_Tone_Mat_TRC_420vf_GCD);
  if (!v9)
  {
    return 0;
  }

  v52 = (v23 + 20);
  v53 = v9;
  while (1)
  {
    v54 = *v52++;
    v24 = v54;
    if (v54)
    {
      break;
    }

    if (!--v53)
    {
      v24 = 0;
      break;
    }
  }

LABEL_60:
  if (v9 == 255)
  {
    goto LABEL_61;
  }

  return v24;
}