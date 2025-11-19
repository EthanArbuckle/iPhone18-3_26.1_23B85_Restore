size_t OUTLINED_FUNCTION_21_7@<X0>(unsigned int a1@<W8>, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  LODWORD(v8) = bswap32(a1);
  BYTE4(v8) = 0;

  return PullParamSetSPS(va, va1);
}

void OUTLINED_FUNCTION_29_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  bzero(va, 0x200uLL);
}

void OUTLINED_FUNCTION_41(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  bzero(va, 0x200uLL);
}

uint64_t OUTLINED_FUNCTION_51()
{

  return __memcpy_chk();
}

uint64_t OUTLINED_FUNCTION_65(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = 0;
  *a4 = v6 + 2;
  *a5 = v5;
  return result;
}

uint64_t OUTLINED_FUNCTION_66()
{

  return __memcpy_chk();
}

uint64_t OUTLINED_FUNCTION_67(uint64_t a1, uint64_t a2, __CFData **a3)
{

  return RemoveEmulation3Byte(v3, v4, a3);
}

CFIndex OUTLINED_FUNCTION_68()
{

  return CFDataGetLength(v0);
}

size_t FigVideoFormatDescriptionCreateSecurityInfoExtension(unsigned int a1, char a2, char a3, unsigned int a4, const void *a5, _OWORD *a6, __CFData **a7, CMBlockBufferRef *a8)
{
  if (!a7)
  {
    FigVideoFormatDescriptionCreateSecurityInfoExtension_cold_4(&v27);
    return v27;
  }

  if (!a5)
  {
    FigVideoFormatDescriptionCreateSecurityInfoExtension_cold_3(&v27);
    return v27;
  }

  if (!a6)
  {
    FigVideoFormatDescriptionCreateSecurityInfoExtension_cold_2(&v27);
    return v27;
  }

  if (a4 == 8 || a4 == 16)
  {
    Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], a4 + 73);
    if (Mutable)
    {
      v24 = Mutable;
      CFDataSetLength(Mutable, a4 + 73);
      MutableBytePtr = CFDataGetMutableBytePtr(v24);
      *MutableBytePtr = 0x616D72660C000000;
      *(MutableBytePtr + 2) = bswap32(a1);
      *(MutableBytePtr + 12) = xmmword_1971662D0;
      *(MutableBytePtr + 7) = 256;
      *(MutableBytePtr + 8) = bswap32(a4 + 41);
      *(MutableBytePtr + 9) = 1768448883;
      *(MutableBytePtr + 10) = bswap32(a4 | 0x21);
      *(MutableBytePtr + 44) = 0x1636E6574;
      MutableBytePtr[52] = 0;
      MutableBytePtr[53] = a3 & 0xF | (16 * a2);
      *(MutableBytePtr + 27) = 1;
      *(MutableBytePtr + 56) = *a6;
      MutableBytePtr[72] = a4;
      memcpy(MutableBytePtr + 73, a5, a4);
      result = 0;
      *a7 = v24;
      return result;
    }

    FigVideoFormatDescriptionCreateSecurityInfoExtension_cold_1(&v27, v17, v18, v19, v20, v21, v22, v23);
    return v27;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE5AuLL, "(Fig)", 0xC6, v8, a7, a8);
}

size_t FigVideoFormatDescriptionCreateWithSampleDescriptionExtensionAtom(CFAllocatorRef alloc, int codecType, int32_t width, int32_t a4, int a5, const UInt8 *a6, CFIndex a7, const __CFDictionary *a8, CMVideoFormatDescriptionRef *formatDescriptionOut)
{
  v13 = 0;
  keys[1] = *MEMORY[0x1E69E9840];
  values = 0;
  keys[0] = 0;
  cf = 0;
  if (!a5 || !a6)
  {
    v16 = 0;
    v17 = 0;
    goto LABEL_14;
  }

  v16 = 0;
  v17 = 0;
  if (!a7)
  {
LABEL_14:
    FallbackExtensionsFromVUI = CMVideoFormatDescriptionCreate(alloc, codecType, width, a4, v13, formatDescriptionOut);
    goto LABEL_15;
  }

  v34 = a4;
  pStr[0] = 4;
  pStr[1] = HIBYTE(a5);
  pStr[2] = BYTE2(a5);
  pStr[3] = BYTE1(a5);
  pStr[4] = a5;
  v16 = CFStringCreateWithPascalString(alloc, pStr, 0);
  if (v16 || (v31 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE57uLL, "(Fig)", 0x115, v9, v19, v20), !v31))
  {
    keys[0] = v16;
    values = CFDataCreate(alloc, a6, a7);
    if (!values)
    {
      v30 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE57uLL, "(Fig)", 0x138, v9, v21, v22);
      goto LABEL_19;
    }

    v17 = CFDictionaryCreate(alloc, keys, &values, 1, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
    if (!v17)
    {
      v28 = v9;
      v29 = 319;
      goto LABEL_30;
    }

    if (values)
    {
      CFRelease(values);
      values = 0;
    }

    keys[0] = @"SampleDescriptionExtensionAtoms";
    values = CFRetain(v17);
    if (a8)
    {
      FallbackExtensionsFromVUI = FigCFCreateExtendedDictionary(alloc, a8, keys, &values, 1, &cf, v25, v26);
      if (FallbackExtensionsFromVUI)
      {
LABEL_15:
        v30 = FallbackExtensionsFromVUI;
        goto LABEL_20;
      }

      v13 = cf;
      if (!cf)
      {
LABEL_12:
        v28 = v9;
        v29 = 343;
LABEL_30:
        FallbackExtensionsFromVUI = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE57uLL, "(Fig)", v29, v28, v23, v24);
        goto LABEL_15;
      }
    }

    else
    {
      v13 = CFDictionaryCreate(alloc, keys, &values, 1, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
      cf = v13;
      if (!v13)
      {
        goto LABEL_12;
      }
    }

    if (codecType <= 1700886114)
    {
      if (codecType > 1667331682)
      {
        if (codecType == 1667331683)
        {
          goto LABEL_45;
        }

        v33 = 1685220713;
      }

      else
      {
        if (codecType == 1635148593)
        {
          goto LABEL_45;
        }

        v33 = 1635148595;
      }
    }

    else if (codecType <= 1902212706)
    {
      if (codecType == 1700886115)
      {
        goto LABEL_45;
      }

      v33 = 1718908515;
    }

    else
    {
      if (codecType == 1902212707 || codecType == 1902212709)
      {
        goto LABEL_45;
      }

      v33 = 2053207651;
    }

    if (codecType != v33 && !FigVideoCodecTypeIsHEVCFlavorOrDolbyVisionHEVCFlavor(codecType))
    {
LABEL_47:
      a4 = v34;
      goto LABEL_14;
    }

LABEL_45:
    FallbackExtensionsFromVUI = FigBridge_MakeFallbackExtensionsFromVUI(alloc, codecType, 0, &cf);
    if (FallbackExtensionsFromVUI)
    {
      goto LABEL_15;
    }

    v13 = cf;
    goto LABEL_47;
  }

  v30 = v31;
  v16 = 0;
LABEL_19:
  v17 = 0;
LABEL_20:
  if (values)
  {
    CFRelease(values);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  return v30;
}

OSStatus CMVideoFormatDescriptionGetH264ParameterSetAtIndex(CMFormatDescriptionRef videoDesc, size_t parameterSetIndex, const uint8_t **parameterSetPointerOut, size_t *parameterSetSizeOut, size_t *parameterSetCountOut, int *NALUnitHeaderLengthOut)
{
  if (!videoDesc || (v12 = CFGetTypeID(videoDesc), v12 != CMFormatDescriptionGetTypeID()))
  {
    CMVideoFormatDescriptionGetH264ParameterSetAtIndex_cold_4(&v21);
    return v21;
  }

  Extension = CMFormatDescriptionGetExtension(videoDesc, @"SampleDescriptionExtensionAtoms");
  if (!Extension || (v14 = Extension, v15 = CFGetTypeID(Extension), v15 != CFDictionaryGetTypeID()))
  {
    CMVideoFormatDescriptionGetH264ParameterSetAtIndex_cold_3(&v21);
    return v21;
  }

  Value = CFDictionaryGetValue(v14, @"avcC");
  if (!Value)
  {
    goto LABEL_13;
  }

  ValueAtIndex = Value;
  v18 = CFGetTypeID(Value);
  if (v18 == CFArrayGetTypeID())
  {
    if (CFArrayGetCount(ValueAtIndex) <= 0)
    {
      CMVideoFormatDescriptionGetH264ParameterSetAtIndex_cold_1(&v21);
      return v21;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(ValueAtIndex, 0);
    if (!ValueAtIndex)
    {
      goto LABEL_13;
    }
  }

  v19 = CFGetTypeID(ValueAtIndex);
  if (v19 != CFDataGetTypeID())
  {
LABEL_13:
    CMVideoFormatDescriptionGetH264ParameterSetAtIndex_cold_2(&v21);
    return v21;
  }

  return FigH264Bridge_GetH264ParameterSetAtIndex(ValueAtIndex, parameterSetIndex, parameterSetPointerOut, parameterSetSizeOut, parameterSetCountOut, NALUnitHeaderLengthOut);
}

OSStatus CMVideoFormatDescriptionGetHEVCParameterSetAtIndex(CMFormatDescriptionRef videoDesc, size_t parameterSetIndex, const uint8_t **parameterSetPointerOut, size_t *parameterSetSizeOut, size_t *parameterSetCountOut, int *NALUnitHeaderLengthOut)
{
  if (!videoDesc || (v12 = CFGetTypeID(videoDesc), v12 != CMFormatDescriptionGetTypeID()))
  {
    CMVideoFormatDescriptionGetHEVCParameterSetAtIndex_cold_4(&v21);
    return v21;
  }

  Extension = CMFormatDescriptionGetExtension(videoDesc, @"SampleDescriptionExtensionAtoms");
  if (!Extension || (v14 = Extension, v15 = CFGetTypeID(Extension), v15 != CFDictionaryGetTypeID()))
  {
    CMVideoFormatDescriptionGetHEVCParameterSetAtIndex_cold_3(&v21);
    return v21;
  }

  Value = CFDictionaryGetValue(v14, @"hvcC");
  if (!Value)
  {
    goto LABEL_13;
  }

  ValueAtIndex = Value;
  v18 = CFGetTypeID(Value);
  if (v18 == CFArrayGetTypeID())
  {
    if (CFArrayGetCount(ValueAtIndex) <= 0)
    {
      CMVideoFormatDescriptionGetHEVCParameterSetAtIndex_cold_1(&v21);
      return v21;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(ValueAtIndex, 0);
    if (!ValueAtIndex)
    {
      goto LABEL_13;
    }
  }

  v19 = CFGetTypeID(ValueAtIndex);
  if (v19 != CFDataGetTypeID())
  {
LABEL_13:
    CMVideoFormatDescriptionGetHEVCParameterSetAtIndex_cold_2(&v21);
    return v21;
  }

  return FigHEVCBridge_GetHEVCParameterSetAtIndex(ValueAtIndex, 0, parameterSetIndex, parameterSetPointerOut, parameterSetSizeOut, parameterSetCountOut, NALUnitHeaderLengthOut);
}

size_t FigVideoFormatDescriptionVisitAllParameterSets(const void *a1, uint64_t a2)
{
  if (!a1 || (v4 = CFGetTypeID(a1), v4 != CMFormatDescriptionGetTypeID()))
  {
    FigVideoFormatDescriptionVisitAllParameterSets_cold_6(&v17);
    return v17;
  }

  Extension = CMFormatDescriptionGetExtension(a1, @"SampleDescriptionExtensionAtoms");
  if (!Extension || (v6 = Extension, v7 = CFGetTypeID(Extension), v7 != CFDictionaryGetTypeID()))
  {
    FigVideoFormatDescriptionVisitAllParameterSets_cold_5(&v17);
    return v17;
  }

  if (CFDictionaryContainsKey(v6, @"avcC"))
  {
    Value = CFDictionaryGetValue(v6, @"avcC");
    if (Value)
    {
      ValueAtIndex = Value;
      v10 = CFGetTypeID(Value);
      if (v10 != CFArrayGetTypeID())
      {
        goto LABEL_10;
      }

      if (CFArrayGetCount(ValueAtIndex) <= 0)
      {
        FigVideoFormatDescriptionVisitAllParameterSets_cold_1(&v17);
        return v17;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(ValueAtIndex, 0);
      if (ValueAtIndex)
      {
LABEL_10:
        v11 = CFGetTypeID(ValueAtIndex);
        if (v11 == CFDataGetTypeID())
        {

          return FigH264Bridge_VisitAllH264ParameterSets(ValueAtIndex, 0, 0, dispatchVideoFormatParameterSetVisitor, a2);
        }
      }
    }

    FigVideoFormatDescriptionVisitAllParameterSets_cold_2(&v17);
    return v17;
  }

  result = CFDictionaryContainsKey(v6, @"hvcC");
  if (!result)
  {
    return result;
  }

  v13 = CFDictionaryGetValue(v6, @"hvcC");
  if (!v13)
  {
    goto LABEL_24;
  }

  v14 = v13;
  v15 = CFGetTypeID(v13);
  if (v15 == CFArrayGetTypeID())
  {
    if (CFArrayGetCount(v14) <= 0)
    {
      FigVideoFormatDescriptionVisitAllParameterSets_cold_3(&v17);
      return v17;
    }

    v14 = CFArrayGetValueAtIndex(v14, 0);
    if (!v14)
    {
      goto LABEL_24;
    }
  }

  v16 = CFGetTypeID(v14);
  if (v16 != CFDataGetTypeID())
  {
LABEL_24:
    FigVideoFormatDescriptionVisitAllParameterSets_cold_4(&v17);
    return v17;
  }

  return FigHEVCBridge_VisitAllHEVCParameterSets(v14, 0, 0, 0, dispatchVideoFormatParameterSetVisitor, a2);
}

size_t FigVideoFormatDescriptionCreateUpdatedFromHEVCParameterSets(const __CFAllocator *a1, CMFormatDescriptionRef desc, unint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, CMVideoFormatDescriptionRef *a7)
{
  v24 = 0;
  v25 = 0;
  theData = 0;
  if (!desc)
  {
    FigVideoFormatDescriptionCreateUpdatedFromHEVCParameterSets_cold_5(&v26);
    return v26;
  }

  Extensions = CMFormatDescriptionGetExtensions(desc);
  if (Extensions)
  {
    Value = CFDictionaryGetValue(Extensions, @"SampleDescriptionExtensionAtoms");
    if (Value)
    {
      v15 = CFDictionaryGetValue(Value, @"hvcC");
      if (v15)
      {
        v16 = FigHEVCBridge_CreateUpdatedHVCCWithAdditionalHEVCParameterSets(a1, v15, a3, a4, a5, a6, &v25, &v24, &theData);
        if (v16)
        {
LABEL_9:
          v21 = v16;
          goto LABEL_10;
        }

        v17 = v25;
        if (v25)
        {
          v18 = v24;
          if (v24)
          {
            BytePtr = CFDataGetBytePtr(theData);
            Length = CFDataGetLength(theData);
            v16 = FigVideoFormatDescriptionCreateWithSampleDescriptionExtensionAtom(a1, 1752589105, v17, v18, 1752589123, BytePtr, Length, 0, a7);
            goto LABEL_9;
          }
        }

        FigVideoFormatDescriptionCreateUpdatedFromHEVCParameterSets_cold_1(&v26);
      }

      else
      {
        FigVideoFormatDescriptionCreateUpdatedFromHEVCParameterSets_cold_2(&v26);
      }
    }

    else
    {
      FigVideoFormatDescriptionCreateUpdatedFromHEVCParameterSets_cold_3(&v26);
    }
  }

  else
  {
    FigVideoFormatDescriptionCreateUpdatedFromHEVCParameterSets_cold_4(&v26);
  }

  v21 = v26;
LABEL_10:
  if (theData)
  {
    CFRelease(theData);
  }

  return v21;
}

uint64_t FigHALAudioDeviceBrokerGetClassID()
{
  if (FigHALAudioDeviceBrokerGetClassID_sRegisterFigHALAudioDeviceBrokerClassOnce != -1)
  {
    FigHALAudioDeviceBrokerGetClassID_cold_1();
  }

  return FigHALAudioDeviceBrokerGetClassID_sFigHALAudioDeviceBrokerClassID;
}

size_t __FigHALAudioDeviceBrokerGetClassID_block_invoke()
{
  ClassID = CMBaseGetClassID();

  return FigBaseClassRegisterClass(&FigHALAudioDeviceBrokerGetClassID_sFigHALAudioDeviceBrokerClassDesc, ClassID, 1, &FigHALAudioDeviceBrokerGetClassID_sFigHALAudioDeviceBrokerClassID, v1, v2, v3, v4);
}

uint64_t FigHALAudioDeviceBrokerGetTypeID()
{
  if (FigHALAudioDeviceBrokerGetClassID_sRegisterFigHALAudioDeviceBrokerClassOnce != -1)
  {
    FigHALAudioDeviceBrokerGetClassID_cold_1();
  }

  v1 = FigHALAudioDeviceBrokerGetClassID_sFigHALAudioDeviceBrokerClassID;

  return CMBaseClassGetCFTypeID(v1);
}

uint64_t FigHALAudioDeviceBrokerRegister(const void *a1, const void *a2)
{
  if (a1)
  {
    if (a2)
    {
      if (sFigHALAudioDeviceBrokerRegistryInitOnce != -1)
      {
        FigHALAudioDeviceBrokerRegister_cold_1();
      }

      FigSimpleMutexLock(sFigHALAudioDeviceBrokerRegistry_0);
      CFDictionarySetValue(sFigHALAudioDeviceBrokerRegistry_1, a1, a2);
      FigSimpleMutexUnlock(sFigHALAudioDeviceBrokerRegistry_0);
      return 0;
    }

    else
    {
      FigHALAudioDeviceBrokerRegister_cold_2(&v5);
      return v5;
    }
  }

  else
  {
    FigHALAudioDeviceBrokerRegister_cold_3(&v6);
    return v6;
  }
}

CFMutableDictionaryRef figHALAudioDeviceRegistryOneTimeInitialization()
{
  sFigHALAudioDeviceBrokerRegistry_0 = FigSimpleMutexCreate();
  result = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  sFigHALAudioDeviceBrokerRegistry_1 = result;
  return result;
}

uint64_t FigHALAudioDeviceBrokerUnregister(const void *a1)
{
  if (a1)
  {
    if (sFigHALAudioDeviceBrokerRegistryInitOnce != -1)
    {
      FigHALAudioDeviceBrokerRegister_cold_1();
    }

    FigSimpleMutexLock(sFigHALAudioDeviceBrokerRegistry_0);
    Count = CFDictionaryGetCount(sFigHALAudioDeviceBrokerRegistry_1);
    if (Count)
    {
      v3 = Count;
      v4 = malloc_type_calloc(Count, 8uLL, 0xC0040B8AA526DuLL);
      v5 = malloc_type_calloc(v3, 8uLL, 0xC0040B8AA526DuLL);
      CFDictionaryGetKeysAndValues(sFigHALAudioDeviceBrokerRegistry_1, v4, v5);
      if (v3 >= 1)
      {
        v6 = v5;
        v7 = v4;
        while (*v6 != a1)
        {
          ++v7;
          ++v6;
          if (!--v3)
          {
            goto LABEL_11;
          }
        }

        CFDictionaryRemoveValue(sFigHALAudioDeviceBrokerRegistry_1, *v7);
      }

LABEL_11:
      free(v4);
      free(v5);
    }

    FigSimpleMutexUnlock(sFigHALAudioDeviceBrokerRegistry_0);
    return 0;
  }

  else
  {
    FigHALAudioDeviceBrokerUnregister_cold_2(&v9);
    return v9;
  }
}

uint64_t FigHALAudioDeviceBrokerCopy(const void *a1, void *a2)
{
  if (a1)
  {
    if (a2)
    {
      if (sFigHALAudioDeviceBrokerRegistryInitOnce != -1)
      {
        FigHALAudioDeviceBrokerRegister_cold_1();
      }

      FigSimpleMutexLock(sFigHALAudioDeviceBrokerRegistry_0);
      Value = CFDictionaryGetValue(sFigHALAudioDeviceBrokerRegistry_1, a1);
      if (Value)
      {
        Value = CFRetain(Value);
      }

      *a2 = Value;
      FigSimpleMutexUnlock(sFigHALAudioDeviceBrokerRegistry_0);
      return 0;
    }

    else
    {
      FigHALAudioDeviceBrokerCopy_cold_2(&v6);
      return v6;
    }
  }

  else
  {
    FigHALAudioDeviceBrokerCopy_cold_3(&v7);
    return v7;
  }
}

uint64_t FigEndpointStreamXPCRemoteGetObjectID(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  if (*DerivedStorage)
  {
    FigEndpointStreamXPCRemoteGetObjectID_cold_1(&v6);
    return v6;
  }

  else
  {
    v4 = DerivedStorage;
    if (DerivedStorage[1])
    {
      FigEndpointStreamXPCRemoteGetObjectID_cold_2(&v7);
      return v7;
    }

    else
    {
      result = 0;
      *a2 = *(v4 + 1);
    }
  }

  return result;
}

uint64_t figEndpointStreamRemoteXPC_EnsureClientEstablished()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2000000000;
  v6 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __figEndpointStreamRemoteXPC_EnsureClientEstablished_block_invoke;
  block[3] = &unk_1E74A0B50;
  block[4] = &v3;
  if (figEndpointStreamRemoteXPC_EnsureClientEstablished_sFigEndpointStreamRemoteClientSetupOnce != -1)
  {
    dispatch_once(&figEndpointStreamRemoteXPC_EnsureClientEstablished_sFigEndpointStreamRemoteClientSetupOnce, block);
  }

  v0 = *(v4 + 6);
  _Block_object_dispose(&v3, 8);
  return v0;
}

void remoteXPCEndpointStreamClient_DeadConnectionCallback(uint64_t a1)
{
  *(CMBaseObjectGetDerivedStorage(a1) + 1) = 1;

  FigEndpointStreamRemoteXPC_runAllCallbacks(a1, -16722);
}

void FigEndpointStreamRemoteXPC_runAllCallbacks(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  context = a2;
  v4 = *(DerivedStorage + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __FigEndpointStreamRemoteXPC_runAllCallbacks_block_invoke;
  block[3] = &unk_1E74A0B78;
  block[4] = &v9;
  block[5] = DerivedStorage;
  dispatch_sync(v4, block);
  v5 = v10[3];
  if (v5)
  {
    CFDictionaryApplyFunction(v5, FigEndpointStreamRemoteXPC_runOneCallback, &context);
    v6 = v10[3];
    if (v6)
    {
      CFRelease(v6);
    }
  }

  _Block_object_dispose(&v9, 8);
}

void FigEndpointStreamRemoteXPC_runOneCallback(uint64_t a1, uint64_t *a2, unsigned int *a3)
{
  v5 = *(a2 + 6);
  if (v5 == 2)
  {
    v18 = v3;
    v19 = v4;
    v10 = a2[1];
    v11 = a2[2];
    v12 = *a3;
    v13 = *a2;
    v16 = *&kCMTimeInvalid.value;
    v17 = 0;
    v14 = *&kCMTimeInvalid.value;
    v15 = 0;
    v11(v13, v12, &v16, &v14, v10, 0.0);
  }

  else if (v5 == 1)
  {
    v6 = *a3;
    v7 = *a2;
    v8 = a2[1];
    v9 = a2[2];

    v9(v7, v6, v8);
  }
}

void __remoteXPCEndpointStreamClient_handleCompletionCallback_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 24);
  if (v2)
  {
    Value = CFDictionaryGetValue(v2, *(a1 + 48));
    if (Value)
    {
      v4 = *(*(a1 + 32) + 8);
      v5 = *Value;
      *(v4 + 40) = Value[1];
      *(v4 + 24) = v5;
      v6 = *(*(*(a1 + 32) + 8) + 24);
      if (v6)
      {
        CFRetain(v6);
      }
    }

    v7 = *(a1 + 48);
    v8 = *(*(a1 + 40) + 24);

    CFDictionaryRemoveValue(v8, v7);
  }
}

uint64_t remoteXPCEndpointStream_cloneCompletionCallback(uint64_t a1, _OWORD *a2)
{
  v3 = MEMORY[0x19A8D7200](a1, 32, 0x10A0040D98738FALL, 0);
  v4 = a2[1];
  *v3 = *a2;
  *(v3 + 16) = v4;
  if (*v3)
  {
    CFRetain(*v3);
  }

  return v3;
}

void remoteXPCEndpointStream_freeCompletionCallback(CFAllocatorRef allocator, CFTypeRef *ptr)
{
  if (*ptr)
  {
    CFRelease(*ptr);
  }

  CFAllocatorDeallocate(allocator, ptr);
}

void FigEndpointStreamRemoteXPC_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  FigEndpointStreamRemoteXPC_teardown(a1);
  v3 = *(DerivedStorage + 16);
  if (v3)
  {

    dispatch_release(v3);
  }
}

uint64_t FigEndpointStreamRemoteXPC_sendMessageSynchronouslyExpectingCompletionCallback(uint64_t a1, void *a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v11 = DerivedStorage;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2000000000;
  v34 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2000000000;
  v30 = 0;
  if (a3 | a4)
  {
    if (a3)
    {
      v12 = a3;
    }

    else
    {
      v12 = a4;
    }

    v13 = *(DerivedStorage + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __FigEndpointStreamRemoteXPC_sendMessageSynchronouslyExpectingCompletionCallback_block_invoke;
    block[3] = &unk_1E74A0BC8;
    if (a3)
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }

    block[4] = &v31;
    block[5] = a1;
    block[6] = v11;
    block[7] = a1;
    block[8] = a5;
    block[9] = v12;
    v25 = v14;
    v26 = 0;
    dispatch_sync(v13, block);
    xpc_dictionary_set_uint64(a2, "CompletionID", v32[3]);
  }

  v15 = FigXPCRemoteClientSendSyncMessage(gFigEndpointStreamRemoteClient, a2);
  if (v15)
  {
    v16 = (a3 | a4) == 0;
  }

  else
  {
    v16 = 1;
  }

  if (!v16)
  {
    v17 = *(v11 + 16);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 0x40000000;
    v23[2] = __FigEndpointStreamRemoteXPC_sendMessageSynchronouslyExpectingCompletionCallback_block_invoke_2;
    v23[3] = &unk_1E74A0BF0;
    v23[4] = &v31;
    v23[5] = &v27;
    v23[6] = v11;
    dispatch_sync(v17, v23);
  }

  if (*(v28 + 24))
  {
    if (a3)
    {
      (a3)(a1, v15, a5);
    }

    else
    {
      v21 = *&kCMTimeInvalid.value;
      v22 = 0;
      v19 = *&kCMTimeInvalid.value;
      v20 = 0;
      (a4)(a1, v15, &v21, &v19, a5, 0.0);
    }
  }

  FigXPCRemoteClientKillServerOnTimeout(gFigEndpointStreamRemoteClient, v15, "FigEndpointStreamRemoteXPC_sendMessageSynchronouslyExpectingCompletionCallback", 0);
  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v31, 8);
  return v15;
}

uint64_t OUTLINED_FUNCTION_3_25(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{

  return FigEndpointStreamRemoteXPC_sendMessageSynchronouslyExpectingCompletionCallback(v12, a10, v11, 0, v10);
}

uint64_t OUTLINED_FUNCTION_4_20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  a11 = 0;
  a12 = 0;

  return FigEndpointStreamXPCRemoteGetObjectID(a1, &a11);
}

uint64_t GetEntireLengthOfByteStream(uint64_t a1, void *a2)
{
  number = 0;
  CMBaseObject = CMByteStreamGetCMBaseObject(a1);
  v4 = *(*(CMBaseObjectGetVTable(CMBaseObject) + 8) + 48);
  if (!v4)
  {
    return 4294954514;
  }

  result = v4(CMBaseObject, @"FBS_EntireLength", 0, &number);
  if (!result)
  {
    CFNumberGetValue(number, kCFNumberSInt64Type, a2);
    CFRelease(number);
    return 0;
  }

  return result;
}

uint64_t ReadBytesFromByteStreamDataSource(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *a1;
  v10 = *(*(CMBaseObjectGetVTable(*a1) + 16) + 8);
  if (!v10)
  {
    return 4294954514;
  }

  return v10(v9, a2, a3, a4, a5);
}

uint64_t ReadBBufFromByteStreamDataSource(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *a1;
  v10 = *(*(CMBaseObjectGetVTable(*a1) + 16) + 32);
  if (!v10)
  {
    return 4294954514;
  }

  return v10(v9, a2, a3, a4, a5);
}

uint64_t CommonAtomStreamInitialization(unsigned __int8 *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v2 = *(a1 + 5);
  v3 = *(a1 + 6) + v2;
  AtomHeader = ReadAtomHeader(*(a1 + 13), (a1 + 8), v2, v3, *a1, 0, 0, a1 + 64, (a1 + 72), (a1 + 88), &v8);
  if (!AtomHeader)
  {
    v5 = *(a1 + 9);
    if (v5 <= 7)
    {
      *v9 = 0;
      v10 = 0;
      AtomTypeToString(*(a1 + 16), v9);
      snprintf(__str, 0x100uLL, "Atom total length (%lld) less than an atom header size. Atom '%s' at offset %lld.");
    }

    else
    {
      if (v5 <= v3 - *(a1 + 5))
      {
        AtomHeader = 0;
        v6 = v8;
        *(a1 + 7) = v8;
        *(a1 + 10) = v5 - v6;
        return AtomHeader;
      }

      *v9 = 0;
      v10 = 0;
      AtomTypeToString(*(a1 + 16), v9);
      snprintf(__str, 0x100uLL, "Atom total length (%lld) exceeds container's length. Atom '%s' at offset %lld.");
    }

    AtomHeader = 4294954402;
    AtomStreamReportErrorMessage(*(a1 + 13), v9, -12894, __str);
  }

  return AtomHeader;
}

uint64_t FigAtomStreamInitWithParent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = *MEMORY[0x1E69E9840];
  *a3 = 0;
  v6 = *(a1 + 8);
  *(a3 + 24) = *(a1 + 24);
  *(a3 + 8) = v6;
  v7 = *(a1 + 56) + *(a1 + 40);
  *(a3 + 40) = v7;
  v8 = *(a1 + 80);
  *(a3 + 48) = v8;
  v9 = *(a1 + 104);
  *(a3 + 104) = v9;
  if (v8 >= a2)
  {
    v24 = 0;
    v16 = v8 + v7;
    v17 = (a3 + 72);
    AtomHeader = ReadAtomHeader(v9, a3 + 8, v7 + a2, v8 + v7, 0, 0, 1, a3 + 64, a3 + 72, a3 + 88, &v24);
    if (AtomHeader)
    {
      return AtomHeader;
    }

    v18 = *v17;
    if (*v17 >= 8 && v18 <= v16 - (*(a3 + 40) + a2))
    {
      AtomHeader = 0;
      v19 = v24;
      *(a3 + 56) = v24 + a2;
      *(a3 + 80) = v18 - v19;
      return AtomHeader;
    }

    *v25 = 0;
    v26 = 0;
    AtomTypeToString(*(a3 + 64), v25);
    snprintf(__str, 0x100uLL, "Atom '%s' has an invalid length %lld, offset %lld, limit %lld", v25, *(a3 + 72), *(a3 + 40) + a2, v16);
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    AtomHeader = 4294954402;
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCDA2uLL, "(Fig)", 0x1FD, v3, v22, v23);
    v14 = *(a3 + 104);
    v15 = -12894;
  }

  else
  {
    *v25 = 0;
    v26 = 0;
    snprintf(__str, 0x100uLL, "Offset %zd outside of parent container length %lld (Effective global offset %lld)", a2, v8, v7 + a2);
    v10 = fig_log_get_emitter("com.apple.coremedia", "");
    AtomHeader = 4294954403;
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v10, 0xFFFFCDA3uLL, "(Fig)", 0x1EC, v3, v12, v13);
    v14 = *(a3 + 104);
    v15 = -12893;
  }

  AtomStreamReportErrorMessage(v14, v25, v15, __str);
  return AtomHeader;
}

char *AtomTypeToString(unsigned int a1, char *__str)
{
  if ((a1 & 0x80000000) != 0)
  {
    v4 = __maskrune(HIBYTE(a1), 0x40000uLL);
  }

  else
  {
    v4 = *(MEMORY[0x1E69E9830] + 4 * HIBYTE(a1) + 60) & 0x40000;
  }

  if (!v4)
  {
    goto LABEL_17;
  }

  if (BYTE2(a1) > 0x7Fu)
  {
    if (!__maskrune(BYTE2(a1), 0x40000uLL))
    {
      goto LABEL_17;
    }
  }

  else if ((*(MEMORY[0x1E69E9830] + 4 * BYTE2(a1) + 60) & 0x40000) == 0)
  {
    goto LABEL_17;
  }

  if (BYTE1(a1) > 0x7Fu)
  {
    if (!__maskrune(BYTE1(a1), 0x40000uLL))
    {
      goto LABEL_17;
    }
  }

  else if ((*(MEMORY[0x1E69E9830] + 4 * BYTE1(a1) + 60) & 0x40000) == 0)
  {
    goto LABEL_17;
  }

  if (a1 > 0x7Fu)
  {
    if (__maskrune(a1, 0x40000uLL))
    {
      goto LABEL_15;
    }

LABEL_17:
    snprintf(__str, 0x10uLL, "0x%02x%02x%02x%02x");
    return __str;
  }

  if ((*(MEMORY[0x1E69E9830] + 4 * a1 + 60) & 0x40000) == 0)
  {
    goto LABEL_17;
  }

LABEL_15:
  snprintf(__str, 0x10uLL, "%c%c%c%c");
  return __str;
}

uint64_t FigAtomStreamGetCurrentAtomTypeAndDataLength(uint64_t a1, _DWORD *a2, void *a3)
{
  if (a2)
  {
    *a2 = *(a1 + 64);
  }

  if (a3)
  {
    *a3 = *(a1 + 80);
  }

  return 0;
}

uint64_t FigAtomStreamGetCurrentAtomUUIDType(uint64_t a1, _OWORD *a2)
{
  if (*(a1 + 64) != 1970628964)
  {
    return 4294954401;
  }

  result = 0;
  *a2 = *(a1 + 88);
  return result;
}

uint64_t FigAtomStreamGetCurrentAtomVersionAndFlags(uint64_t a1, _BYTE *a2, unsigned int *a3)
{
  v7 = 0;
  result = FigAtomStreamReadCurrentAtomData(a1, 0, 4, &v7);
  if (!result)
  {
    v6 = bswap32(v7);
    if (a2)
    {
      *a2 = HIBYTE(v6);
    }

    if (a3)
    {
      *a3 = v6 & 0xFFFFFF;
    }
  }

  return result;
}

uint64_t FigAtomStreamReadCurrentAtomData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = *MEMORY[0x1E69E9840];
  v21 = 0;
  v8 = *(a1 + 80);
  if (v8 <= a2 || a3 + a2 > v8)
  {
    *v22 = 0;
    v23 = 0;
    AtomTypeToString(*(a1 + 64), v22);
    snprintf(__str, 0x100uLL, "Attempt to read %zd bytes at %lld out of range of '%s' atom's data size %lld", a3, a2, v22, *(a1 + 80));
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v13 = 4294954405;
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCDA5uLL, "(Fig)", 0x28A, v4, v14, v15);
    v16 = *(a1 + 104);
    v17 = -12891;
LABEL_11:
    AtomStreamReportErrorMessage(v16, v22, v17, __str);
    return v13;
  }

  v13 = (*(a1 + 24))(a1 + 8, a3, *(a1 + 40) + a2 + *(a1 + 56), a4, &v21);
  if (!v13)
  {
    v10 = v21;
    if (v21 != a3)
    {
      *v22 = 0;
      v23 = 0;
      AtomTypeToString(*(a1 + 64), v22);
      snprintf(__str, 0x100uLL, "Fewer bytes read than expected (got %zd wanted %zd) %lld bytes into '%s' atom length %lld @ %lld", v10, a3, a2, v22, *(a1 + 80), *(a1 + 56) + *(a1 + 40));
      v18 = fig_log_get_emitter("com.apple.coremedia", "");
      v13 = 4294954404;
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v18, 0xFFFFCDA4uLL, "(Fig)", 0x292, v4, v19, v20);
      v16 = *(a1 + 104);
      v17 = -12892;
      goto LABEL_11;
    }

    return 0;
  }

  return v13;
}

uint64_t FigAtomStreamGetCurrentAtomGlobalOffset(void *a1, void *a2, void *a3)
{
  if (a2)
  {
    *a2 = a1[7] + a1[5] - a1[9] + a1[10];
  }

  if (a3)
  {
    *a3 = a1[9];
  }

  return 0;
}

uint64_t FigAtomStreamGetCurrentAtomDataGlobalOffset(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  if (*(a1 + 80) <= a2)
  {
    *v11 = 0;
    v12 = 0;
    AtomTypeToString(*(a1 + 64), v11);
    snprintf(__str, 0x100uLL, "Offset %lld beyond end of '%s' atom's dataLength %lld", a2, v11, *(a1 + 80));
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v6 = 4294954405;
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCDA5uLL, "(Fig)", 0x269, v3, v9, v10);
    AtomStreamReportErrorMessage(*(a1 + 104), v11, -12891, __str);
  }

  else
  {
    v6 = 0;
    *a3 = *(a1 + 40) + a2 + *(a1 + 56);
  }

  return v6;
}

uint64_t FigAtomStreamReadCurrentAtomDataAndCreateBBuf(uint64_t a1, uint64_t a2, size_t a3, CMBlockBufferRef *a4)
{
  v5 = a3;
  blockBufferOut[32] = *MEMORY[0x1E69E9840];
  v23 = 0;
  v8 = *(a1 + 80);
  if (v8 <= a2 || (a3 + a2) > v8)
  {
    *__str = 0;
    v25 = 0;
    AtomTypeToString(*(a1 + 64), __str);
    snprintf(blockBufferOut, 0x100uLL, "Attempt to read %zd bytes at %lld out of range of '%s' atom's data size %lld", v5, a2, __str, *(a1 + 80));
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    Contiguous = 4294954405;
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCDA5uLL, "(Fig)", 0x2A5, v4, v14, v15);
    v16 = *(a1 + 104);
    v17 = -12891;
LABEL_17:
    AtomStreamReportErrorMessage(v16, __str, v17, blockBufferOut);
    return Contiguous;
  }

  sourceBuffer = 0;
  if (!a3)
  {
    v5 = v8 - a2;
  }

  Contiguous = (*(a1 + 32))(a1 + 8, v5, *(a1 + 40) + a2 + *(a1 + 56), &sourceBuffer, &v23);
  if (!Contiguous)
  {
    v11 = v23;
    if (v23 != v5)
    {
      if (sourceBuffer)
      {
        CFRelease(sourceBuffer);
        v11 = v23;
      }

      *__str = 0;
      v25 = 0;
      AtomTypeToString(*(a1 + 64), __str);
      snprintf(blockBufferOut, 0x100uLL, "Fewer bytes read than expected (got %zd wanted %zd) %lld bytes into '%s' atom length %lld @ %lld", v11, v5, a2, __str, *(a1 + 80), *(a1 + 56) + *(a1 + 40));
      v18 = fig_log_get_emitter("com.apple.coremedia", "");
      Contiguous = 4294954404;
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v18, 0xFFFFCDA4uLL, "(Fig)", 0x2C3, v4, v19, v20);
      v16 = *(a1 + 104);
      v17 = -12892;
      goto LABEL_17;
    }

    if (CMBlockBufferIsRangeContiguous(sourceBuffer, 0, v5))
    {
      Contiguous = 0;
      *a4 = sourceBuffer;
    }

    else
    {
      blockBufferOut[0] = 0;
      Contiguous = CMBlockBufferCreateContiguous(*MEMORY[0x1E695E480], sourceBuffer, *MEMORY[0x1E695E480], 0, 0, v5, 0, blockBufferOut);
      *a4 = blockBufferOut[0];
      if (sourceBuffer)
      {
        CFRelease(sourceBuffer);
      }
    }
  }

  return Contiguous;
}

uint64_t FigAtomStreamReadCurrentAtomAndCreateBBuf(uint64_t a1, CMBlockBufferRef *a2)
{
  blockBufferOut[32] = *MEMORY[0x1E69E9840];
  sourceBuffer = 0;
  v14 = 0;
  v5 = *(a1 + 72);
  v6 = *(a1 + 80) - v5 + *(a1 + 40) + *(a1 + 56);
  Contiguous = (*(a1 + 32))(a1 + 8, v5, v6, &sourceBuffer, &v14);
  if (!Contiguous)
  {
    v8 = v14;
    if (v14 == v5)
    {
      if (CMBlockBufferIsRangeContiguous(sourceBuffer, 0, v5))
      {
        Contiguous = 0;
        *a2 = sourceBuffer;
      }

      else
      {
        blockBufferOut[0] = 0;
        Contiguous = CMBlockBufferCreateContiguous(*MEMORY[0x1E695E480], sourceBuffer, *MEMORY[0x1E695E480], 0, 0, v5, 0, blockBufferOut);
        *a2 = blockBufferOut[0];
        if (sourceBuffer)
        {
          CFRelease(sourceBuffer);
        }
      }
    }

    else
    {
      if (sourceBuffer)
      {
        CFRelease(sourceBuffer);
        v8 = v14;
      }

      *__str = 0;
      v16 = 0;
      AtomTypeToString(*(a1 + 64), __str);
      snprintf(blockBufferOut, 0x100uLL, "Fewer bytes read than expected (got %zd wanted %zd) for '%s' atom @ %lld", v8, v5, __str, v6);
      emitter = fig_log_get_emitter("com.apple.coremedia", "");
      Contiguous = 4294954404;
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCDA4uLL, "(Fig)", 0x2EF, v2, v10, v11);
      AtomStreamReportErrorMessage(*(a1 + 104), __str, -12892, blockBufferOut);
    }
  }

  return Contiguous;
}

uint64_t FigAtomStreamAdvanceToNextAtom(unsigned __int8 *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 6);
  v3 = *(a1 + 10) + *(a1 + 7);
  if (v3 == v2)
  {
    return 4294954406;
  }

  v18 = 0;
  v17 = 0;
  v15 = 0;
  v16 = 0uLL;
  v7 = *(a1 + 5);
  v8 = v7 + v2;
  AtomHeader = ReadAtomHeader(*(a1 + 13), (a1 + 8), v7 + v3, v7 + v2, *a1, 0, 1, &v18, &v17, &v16, &v15);
  if (!AtomHeader)
  {
    v9 = v17;
    if (v17 < 8 || v17 > v8 - (v3 + *(a1 + 5)))
    {
      *v19 = 0;
      v20 = 0;
      AtomTypeToString(v18, v19);
      snprintf(__str, 0x100uLL, "Atom '%s' has an invalid length %lld, offset %lld, limit %lld", v19, v9, *(a1 + 5) + v3, v8);
      emitter = fig_log_get_emitter("com.apple.coremedia", "");
      AtomHeader = 4294954402;
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCDA2uLL, "(Fig)", 0x316, v1, v13, v14);
      AtomStreamReportErrorMessage(*(a1 + 13), v19, -12894, __str);
    }

    else
    {
      v10 = v18;
      *(a1 + 16) = v18;
      v11 = v15;
      *(a1 + 7) = v15 + v3;
      *(a1 + 9) = v9;
      *(a1 + 10) = v9 - v11;
      AtomHeader = 0;
      if (v10 == 1970628964)
      {
        *(a1 + 88) = v16;
      }
    }
  }

  return AtomHeader;
}

uint64_t FigAtomStreamAdvanceToNextAtomWithType(unsigned __int8 *a1, int a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 6);
  v4 = *(a1 + 10) + *(a1 + 7);
  if (v4 == v3)
  {
    return 4294954406;
  }

  v7 = *(a1 + 5);
  v8 = v3 + v7;
  v20 = 0;
  v19 = 0;
  v17 = 0;
  v18 = 0uLL;
  while (1)
  {
    AtomHeader = ReadAtomHeader(*(a1 + 13), (a1 + 8), v7 + v4, v8, *a1, 0, 1, &v20, &v19, &v18, &v17);
    if (AtomHeader)
    {
      return AtomHeader;
    }

    v10 = v19;
    if (v19 < 8 || (v7 = *(a1 + 5), v19 > v8 - v4 - v7))
    {
      *v21 = 0;
      v22 = 0;
      AtomTypeToString(v20, v21);
      snprintf(__str, 0x100uLL, "Atom '%s' has an invalid length %lld, offset %lld, limit %lld", v21, v10, *(a1 + 5) + v4, v8);
      emitter = fig_log_get_emitter("com.apple.coremedia", "");
      v11 = 4294954402;
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCDA2uLL, "(Fig)", 0x347, v2, v15, v16);
      AtomStreamReportErrorMessage(*(a1 + 13), v21, -12894, __str);
      return v11;
    }

    if (v20 == a2)
    {
      break;
    }

    v4 += v19;
    if (v4 == *(a1 + 6))
    {
      return 4294954406;
    }
  }

  *(a1 + 16) = a2;
  v13 = v17;
  *(a1 + 7) = v17 + v4;
  *(a1 + 9) = v10;
  *(a1 + 10) = v10 - v13;
  v11 = 0;
  if (a2 == 1970628964)
  {
    *(a1 + 88) = v18;
  }

  return v11;
}

uint64_t FigAtomStreamPositionAtFirstAtomWithType(uint64_t a1, int a2)
{
  if (*(a1 + 64) == a2)
  {
    return 0;
  }

  else
  {
    return FigAtomStreamAdvanceToNextAtomWithType(a1, a2);
  }
}

__n128 FigAtomStreamPositionViaAtomPath(uint64_t a1, uint64_t a2, int *a3)
{
  if (*(a1 + 64) == *a3)
  {
    AtomWithType = 0;
  }

  else
  {
    AtomWithType = FigAtomStreamAdvanceToNextAtomWithType(a1, *a3);
  }

  if (a2 >= 2 && !AtomWithType)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v10 = 0u;
    if (!FigAtomStreamInitWithParent(a1, 0, &v10) && !FigAtomStreamPositionViaAtomPath(&v10, a2 - 1, a3 + 1))
    {
      v8 = v15;
      *(a1 + 64) = v14;
      *(a1 + 80) = v8;
      *(a1 + 96) = v16;
      v9 = v11;
      *a1 = v10;
      *(a1 + 16) = v9;
      result = v13;
      *(a1 + 32) = v12;
      *(a1 + 48) = result;
    }
  }

  return result;
}

uint64_t FigAtomStreamInitWithBBufAndReporter(OpaqueCMBlockBuffer *a1, unint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v18 = *MEMORY[0x1E69E9840];
  DataLength = CMBlockBufferGetDataLength(a1);
  if ((a2 & 0x8000000000000000) != 0 || DataLength <= a2)
  {
    v16[0] = 0;
    v16[1] = 0;
    snprintf(__str, 0x100uLL, "Offset %zd exceeds block buffer length %zd", a2, DataLength);
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCDA3uLL, "(Fig)", 0x3C6, v5, v14, v15);
    AtomStreamReportErrorMessage(a4, v16, -12893, __str);
    return 4294954403;
  }

  else
  {
    *a5 = 0u;
    *(a5 + 16) = 0u;
    *(a5 + 32) = 0u;
    *(a5 + 48) = 0u;
    *(a5 + 80) = 0u;
    *(a5 + 96) = 0u;
    *(a5 + 64) = 0u;
    *a5 = a3;
    *(a5 + 8) = a1;
    *(a5 + 16) = DataLength;
    *(a5 + 24) = ReadBytesFromBlockBufferDataSource;
    *(a5 + 32) = ReadBBufFromBlockBufferDataSource;
    *(a5 + 40) = a2;
    *(a5 + 48) = DataLength - a2;
    *(a5 + 104) = a4;

    return CommonAtomStreamInitialization(a5);
  }
}

uint64_t ReadBytesFromBlockBufferDataSource(CMBlockBufferRef *a1, size_t dataLength, size_t offsetToData, void *a4, size_t *a5)
{
  result = CMBlockBufferCopyDataBytes(*a1, offsetToData, dataLength, a4);
  if (result)
  {
    v8 = 0;
  }

  else
  {
    v8 = dataLength;
  }

  *a5 = v8;
  return result;
}

uint64_t ReadBBufFromBlockBufferDataSource(CMBlockBufferRef *a1, size_t dataLength, size_t a3, CMBlockBufferRef *blockBufferOut, size_t *a5)
{
  result = CMBlockBufferCreateWithBufferReference(*MEMORY[0x1E695E480], *a1, a3, dataLength, 0, blockBufferOut);
  if (result)
  {
    v8 = 0;
  }

  else
  {
    v8 = dataLength;
  }

  *a5 = v8;
  return result;
}

uint64_t FigAtomStreamInitWithMemoryBlockAndReporter(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    *a6 = 0u;
    *(a6 + 16) = 0u;
    *(a6 + 32) = 0u;
    *(a6 + 48) = 0u;
    *(a6 + 80) = 0u;
    *(a6 + 96) = 0u;
    *(a6 + 64) = 0u;
    *a6 = a4;
    *(a6 + 8) = a1;
    *(a6 + 16) = a2;
    *(a6 + 24) = ReadBytesFromMemoryBlockDataSource;
    *(a6 + 32) = ReadBBufFromMemoryBlockDataSource;
    *(a6 + 40) = a3;
    *(a6 + 48) = a2;
    *(a6 + 104) = a5;

    return CommonAtomStreamInitialization(a6);
  }

  else
  {
    v10 = v6;
    v11 = v7;
    FigAtomStreamInitWithMemoryBlockAndReporter_cold_1(&v9);
    return v9;
  }
}

uint64_t ReadBytesFromMemoryBlockDataSource(void *a1, int64_t a2, uint64_t a3, void *__dst, int64_t *a5)
{
  v5 = a1[1];
  v6 = v5 <= a3;
  v7 = v5 - a3;
  if (v6)
  {
    return 4294954404;
  }

  if (v7 >= a2)
  {
    v7 = a2;
  }

  *a5 = v7;
  if (v7)
  {
    memcpy(__dst, (*a1 + a3), v7);
  }

  return 0;
}

uint64_t ReadBBufFromMemoryBlockDataSource(void *a1, int64_t a2, uint64_t a3, CMBlockBufferRef *a4, size_t *a5)
{
  v7 = a1[1];
  v8 = v7 <= a3;
  v9 = v7 - a3;
  if (v8)
  {
    return 4294954404;
  }

  destinationBuffer[5] = v5;
  destinationBuffer[6] = v6;
  if (v9 >= a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = v9;
  }

  *a5 = v11;
  if (v11)
  {
    destinationBuffer[0] = 0;
    result = CMBlockBufferCreateWithMemoryBlock(*MEMORY[0x1E695E480], 0, v11, *MEMORY[0x1E695E480], 0, 0, v11, 1u, destinationBuffer);
    if (!result)
    {
      CMBlockBufferReplaceDataBytes((*a1 + a3), destinationBuffer[0], 0, v11);
      result = 0;
      *a4 = destinationBuffer[0];
    }
  }

  else
  {
    result = 0;
    *a4 = 0;
  }

  return result;
}

uint64_t FigAtomUtilityGetAtomTypeAndLengthInBBuf(OpaqueCMBlockBuffer *a1, unint64_t a2, _DWORD *a3, void *a4, void *a5)
{
  v26 = *MEMORY[0x1E69E9840];
  v21[0] = 0;
  v21[1] = 0;
  DataLength = CMBlockBufferGetDataLength(a1);
  if ((a2 & 0x8000000000000000) != 0 || DataLength <= a2)
  {
    snprintf(__str, 0x100uLL, "Offset %zd exceeds block buffer length %zd", a2, DataLength);
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v13 = 4294954403;
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCDA3uLL, "(Fig)", 0x484, v5, v14, v15);
  }

  else
  {
    v20 = 0;
    v18 = 0;
    v19 = 0;
    *__str = a1;
    v23 = DataLength;
    v24 = ReadBytesFromBlockBufferDataSource;
    v25 = ReadBBufFromBlockBufferDataSource;
    AtomHeader = ReadAtomHeader(0, __str, a2, DataLength, 0, 1, 1, &v20, &v19, v21, &v18);
    if (a3)
    {
      *a3 = v20;
    }

    if (a4)
    {
      *a4 = v19;
    }

    if (a5)
    {
      *a5 = v18;
    }

    if (AtomHeader + 12893 >= 2)
    {
      return AtomHeader;
    }

    else
    {
      return 4294954400;
    }
  }

  return v13;
}

uint64_t OUTLINED_FUNCTION_3_26(int a1, int a2, const char *a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char __str)
{

  return snprintf(&__str, 0x100uLL, a3);
}

char *OUTLINED_FUNCTION_4_21(unsigned int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char __str)
{

  return AtomTypeToString(a1, &__str);
}

uint64_t registerFigPriorityQueue()
{
  result = _CFRuntimeRegisterClass();
  sFigPriorityQueueID = result;
  return result;
}

uint64_t FigPriorityQueueCheckHeap(uint64_t a1)
{
  Count = CFArrayGetCount(*(a1 + 64));
  if (Count < 2)
  {
    return 0;
  }

  v3 = Count;
  if (*(CFArrayGetValueAtIndex(*(a1 + 64), 1) + 3) == 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0xFFFFFFFFLL;
  }

  if (v3 != 2)
  {
    for (i = 2; i != v3; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 64), i);
      if (comparePriorityAtIndices(a1, i, i >> 1) == -1)
      {
        v7 = -1;
      }

      else
      {
        v7 = v4;
      }

      if (i == ValueAtIndex[3])
      {
        v4 = v7;
      }

      else
      {
        v4 = 0xFFFFFFFFLL;
      }
    }
  }

  return v4;
}

uint64_t FigPriorityQueueInsertItemAndCreateUpdateToken(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    v6 = CFGetAllocator(a1);
    FigThreadRunOnce(&FigPriorityQueueNodeGetTypeID_sRegisterFigPriorityQueueNodeOnce, registerFigPriorityQueueNode);
    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v8 = Instance;
      *(Instance + 32) = a1;
      v9 = *(a1 + 16);
      if (v9)
      {
        a2 = v9(v6, a2);
      }

      v8[2] = a2;
      v8[6] = v6;
      v8[5] = *(a1 + 24);
      CFArrayAppendValue(*(a1 + 64), v8);
      Count = CFArrayGetCount(*(a1 + 64));
      v8[3] = Count - 1;
      siftUp(a1, Count - 1);
      if (a3)
      {
        result = 0;
        *a3 = v8;
      }

      else
      {
        CFRelease(v8);
        return 0;
      }
    }

    else
    {
      FigPriorityQueueInsertItemAndCreateUpdateToken_cold_1(&v12);
      return v12;
    }
  }

  else
  {
    FigPriorityQueueInsertItemAndCreateUpdateToken_cold_2(&v13);
    return v13;
  }

  return result;
}

void siftUp(uint64_t a1, int64_t a2)
{
  if (a2 >= 2)
  {
    siftUp_cold_1(a1, a2);
  }
}

uint64_t FigPriorityQueueGetItem(uint64_t a1, void *a2)
{
  if (a1)
  {
    if (CFArrayGetCount(*(a1 + 64)) < 2)
    {
      v4 = 0;
    }

    else
    {
      v4 = *(CFArrayGetValueAtIndex(*(a1 + 64), 1) + 2);
    }

    result = 0;
    if (a2)
    {
      *a2 = v4;
    }
  }

  else
  {
    FigPriorityQueueGetItem_cold_1(&v6);
    return v6;
  }

  return result;
}

uint64_t FigPriorityQueueRemoveItem(uint64_t a1)
{
  if (a1)
  {
    if (CFArrayGetCount(*(a1 + 64)) == 1)
    {
      return 0;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 64), 1);
    if (ValueAtIndex)
    {
      v3 = ValueAtIndex;
      v4 = *(a1 + 24);
      if (v4)
      {
        v5 = CFGetAllocator(a1);
        v4(v5, v3[2]);
      }

      v3[2] = 0;
      v3[3] = 0;
      v3[4] = 0;
      v6 = *(a1 + 64);
      Count = CFArrayGetCount(v6);
      swapIndices(v6, 1, Count - 1);
      v8 = *(a1 + 64);
      v9 = CFArrayGetCount(v8);
      CFArrayRemoveValueAtIndex(v8, v9 - 1);
      siftDown(a1, 1);
      return 0;
    }

    FigPriorityQueueRemoveItem_cold_1(&v11);
    return v11;
  }

  else
  {
    FigPriorityQueueRemoveItem_cold_2(&v12);
    return v12;
  }
}

void swapIndices(const __CFArray *a1, CFIndex a2, CFIndex a3)
{
  ValueAtIndex = CFArrayGetValueAtIndex(a1, a2);
  v7 = CFArrayGetValueAtIndex(a1, a3);
  ValueAtIndex[3] = a3;
  v7[3] = a2;

  CFArrayExchangeValuesAtIndices(a1, a2, a3);
}

void siftDown(uint64_t a1, CFIndex a2)
{
  Count = CFArrayGetCount(*(a1 + 64));
  v5 = 2 * a2;
  if (2 * a2 < Count)
  {
    v6 = Count;
    do
    {
      if (comparePriorityAtIndices(a1, v5, v5 | 1) == 1)
      {
        v7 = v5 + 1;
      }

      else
      {
        v7 = v5;
      }

      if (comparePriorityAtIndices(a1, v7, a2) != -1)
      {
        break;
      }

      swapIndices(*(a1 + 64), a2, v7);
      v5 = 2 * v7;
      a2 = v7;
    }

    while (2 * v7 < v6);
  }
}

double figPriorityQueueInit(uint64_t a1)
{
  *(a1 + 64) = 0;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void figPriorityQueueFinalize(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 64) = 0;
  }
}

uint64_t registerFigPriorityQueueNode()
{
  result = _CFRuntimeRegisterClass();
  sFigPriorityQueueNodeID = result;
  return result;
}

double figPriorityQueueNodeInit(uint64_t a1)
{
  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

void *figPriorityQueueNodeFinalize(void *result)
{
  v1 = result;
  if (result[2])
  {
    v2 = result[5];
    if (v2)
    {
      result = v2(result[6]);
    }
  }

  v1[2] = 0;
  v1[4] = 0;
  return result;
}

__CFString *figPriorityQueueNodeCopyFormattingDesc(void *a1, const __CFDictionary *a2)
{
  v4 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v4, 0);
  v6 = CFGetAllocator(a1);
  CFStringAppendFormat(Mutable, a2, @"<FigPriorityQueueNode %p [%p]>{\n", a1, v6);
  v7 = *(a1[4] + 32);
  if (v7 && (v8 = v7(a1[2])) != 0)
  {
    v9 = v8;
    CFStringAppend(Mutable, v8);
    CFStringAppendFormat(Mutable, a2, @"\n}\n");
    CFRelease(v9);
  }

  else
  {
    CFStringAppendFormat(Mutable, a2, @"\n}\n");
  }

  return Mutable;
}

uint64_t RegisterFigCaptionRubyReserveType()
{
  result = _CFRuntimeRegisterClass();
  sFigCaptionRubyReserveID = result;
  return result;
}

uint64_t FigCaptionRubyReserveCreate(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  if (a5)
  {
    FigThreadRunOnce(&sRegisterFigCaptionRubyReserveTypeOnce, RegisterFigCaptionRubyReserveType);
    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v20 = Instance;
      if (a2)
      {
        v21 = CFRetain(a2);
      }

      else
      {
        v21 = 0;
      }

      result = 0;
      v20[2] = v21;
      v20[3] = a3;
      v20[4] = a4;
      *a5 = v20;
    }

    else
    {
      FigCaptionRubyReserveCreate_cold_1(0, v13, v14, v15, v16, v17, v18, v19);
      return 0;
    }
  }

  else
  {
    FigCaptionRubyReserveCreate_cold_2(&v23, a2, a3, a4, 0, a6, a7, a8);
    return v23;
  }

  return result;
}

double fcrr_Init(uint64_t a1)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

void fcrr_Finalize(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t OUTLINED_FUNCTION_0_57(pthread_once_t *a1)
{

  return FigThreadRunOnce(a1, RegisterFigCaptionRubyReserveType);
}

size_t FigEndpointMessengerStartServer()
{
  v1[0] = 1;
  v1[1] = HandleEndpointMessengerRemoteMessage;
  v2 = 0u;
  v3 = 0u;
  return FigXPCServerStart("com.apple.coremedia.endpointmessenger.xpc", v1, 0, &gEndpointMessengerServer);
}

uint64_t FigCustomURLLoaderServerCopyLoaderForID(void *a1, CFTypeRef *a2)
{
  cf = 0;
  if (a1 && a2)
  {
    v3 = FigXPCServerRetainNeighborObjectFromID(gFigCustomURLLoaderServer, a1, &cf);
    if (v3)
    {
      v5 = v3;
      FigCustomURLLoaderServerCopyLoaderForID_cold_1();
      goto LABEL_11;
    }

    v4 = CFGetTypeID(cf);
    if (v4 == FigCustomURLLoaderGetCFTypeID())
    {
      v5 = 0;
      *a2 = cf;
      return v5;
    }

    FigCustomURLLoaderServerCopyLoaderForID_cold_2(&v8);
  }

  else
  {
    FigCustomURLLoaderServerCopyLoaderForID_cold_3(&v8);
  }

  v5 = v8;
LABEL_11:
  if (cf)
  {
    CFRelease(cf);
  }

  return v5;
}

uint64_t FigCustomURLLoaderServerAssociateNeighbor(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = 0;
  v6 = malloc_type_calloc(1uLL, 0x10uLL, 0x20040A4A59CD2uLL);
  v6[1] = FigOSTransactionCreate("FigCustomURLLoader", 0, 0, 0);
  FigCFWeakReferenceTableCreate(*MEMORY[0x1E695E480], 1, v6);
  v7 = FigXPCServerAssociateObjectWithNeighborProcess(gFigCustomURLLoaderServer, a1, a2, v6, figCustomURLLoaderServer_disposeServerCompanion, 0, &v10);
  if (v7)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  if (!v7)
  {
    *a3 = v10;
  }

  if (v8)
  {
    figCustomURLLoaderServer_disposeServerCompanion(v8);
  }

  return v7;
}

void figCustomURLLoaderServer_disposeServerCompanion(CFTypeRef *a1)
{
  v2 = a1[1];
  if (v2)
  {
    os_release(v2);
    a1[1] = 0;
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  free(a1);
}

size_t FigCustomURLLoaderServerStart()
{
  v10[0] = 1;
  v10[1] = figCustomURLLoaderServer_handleMessage;
  v10[2] = figCustomURLLoaderServer_handleMessageNoReply;
  memset(&v10[3], 0, 24);
  if (FigServer_IsMediaparserd())
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFC0E9uLL, "<< CustomURLLoaderServerXPC >>", 0x1CA, v0, v2, v3);
  }

  else
  {
    IsMediaplaybackd = FigServer_IsMediaplaybackd();
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v7 = Mutable;
      if (IsMediaplaybackd)
      {
        v8 = "com.apple.coremedia.mediaplaybackd.customurlloader.xpc";
      }

      else
      {
        v8 = "com.apple.coremedia.customurlloader.xpc";
      }

      v4 = FigXPCServerStart(v8, v10, v7, &gFigCustomURLLoaderServer);
      CFRelease(v7);
    }

    else
    {
      FigCustomURLLoaderServerStart_cold_1(&v11);
      return v11;
    }
  }

  return v4;
}

uint64_t OUTLINED_FUNCTION_3_27(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13)
{
  a13 = 0;

  return FigXPCMessageGetOpCode(v13, &a13);
}

uint64_t FigAtomWriterInitWithBlockBuffer(OpaqueCMBlockBuffer *a1, uint64_t a2)
{
  *(a2 + 48) = 0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *a2 = a1;
  *(a2 + 24) = CMBlockBufferGetDataLength(a1);
  return 0;
}

uint64_t FigAtomWriterInitWithParent(uint64_t a1, uint64_t a2)
{
  *(a2 + 48) = 0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  v2 = *(a1 + 40) + *(a1 + 24);
  *a2 = *a1;
  *(a2 + 16) = a1;
  *(a2 + 24) = v2;
  return 0;
}

size_t FigAtomWriterBeginAtom(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  if (*(a1 + 49))
  {
    if (FigAtomWriterBeginAtom_cold_1(v16, a2, a3, a4, a5, a6, a7, a8))
    {
      return 0;
    }

    v13 = v16[0];
    goto LABEL_13;
  }

  v9 = a3;
  v10 = a2;
  if (!*(a1 + 16))
  {
    if (*a1)
    {
      WritableForBlockBuffer = CMByteStreamCreateWritableForBlockBuffer(*MEMORY[0x1E695E480], *a1, 0, *MEMORY[0x1E695E480], 0, (a1 + 8));
      if (WritableForBlockBuffer)
      {
        goto LABEL_12;
      }
    }
  }

  v16[0] = (v9 != 0) << 24;
  v16[1] = bswap32(v10);
  WritableForBlockBuffer = CMByteStreamAppend(*(a1 + 8), 8, v16, 0);
  if (WritableForBlockBuffer)
  {
    goto LABEL_12;
  }

  *(a1 + 40) = 8;
  if (!v9)
  {
    v12 = 8;
    goto LABEL_10;
  }

  v15 = 0;
  WritableForBlockBuffer = CMByteStreamAppend(*(a1 + 8), 8, &v15, 0);
  if (WritableForBlockBuffer)
  {
LABEL_12:
    v13 = WritableForBlockBuffer;
LABEL_13:
    FigAtomWriterReleaseByteStreamIfNecessary(a1);
    return v13;
  }

  v12 = *(a1 + 40) + 8;
  *(a1 + 40) = v12;
LABEL_10:
  v13 = 0;
  *(a1 + 32) = v12;
  *(a1 + 48) = v9;
  *(a1 + 49) = 1;
  return v13;
}

void FigAtomWriterReleaseByteStreamIfNecessary(void *a1)
{
  if (!a1[2] && *a1)
  {
    v2 = a1[1];
    if (v2)
    {
      CFRelease(v2);
      a1[1] = 0;
    }
  }
}

uint64_t FigAtomWriterGetAtomGlobalDataOffset(uint64_t a1, void *a2)
{
  if (*(a1 + 49))
  {
    result = 0;
    *a2 = *(a1 + 32) + *(a1 + 24);
  }

  else
  {
    v7 = v2;
    v8 = v3;
    FigAtomWriterGetAtomGlobalDataOffset_cold_1(&v6);
    return v6;
  }

  return result;
}

uint64_t FigAtomWriterGetAtomSize(uint64_t a1, void *a2)
{
  if (*(a1 + 49))
  {
    result = 0;
    *a2 = *(a1 + 40);
  }

  else
  {
    v7 = v2;
    v8 = v3;
    FigAtomWriterGetAtomSize_cold_1(&v6);
    return v6;
  }

  return result;
}

uint64_t FigAtomWriterGetAtomDataSize(uint64_t a1, void *a2)
{
  if (*(a1 + 49))
  {
    result = 0;
    *a2 = *(a1 + 40) - *(a1 + 32);
  }

  else
  {
    v7 = v2;
    v8 = v3;
    FigAtomWriterGetAtomDataSize_cold_1(&v6);
    return v6;
  }

  return result;
}

size_t RegisterFigByteStreamProviderBaseType()
{
  ClassID = CMBaseGetClassID();

  return FigBaseClassRegisterClass(&sFigByteStreamProviderClassDesc, ClassID, 1, &sFigByteStreamProviderClassID, v1, v2, v3, v4);
}

uint64_t FigByteStreamProviderGetTypeID()
{
  FigThreadRunOnce(&FigByteStreamProviderGetClassID_sRegisterFigByteStreamProviderBaseTypeOnce, RegisterFigByteStreamProviderBaseType);
  v0 = sFigByteStreamProviderClassID;

  return CMBaseClassGetCFTypeID(v0);
}

CFTypeRef createBaseByteStreamProvider()
{
  v0 = *MEMORY[0x1E695E480];
  FigThreadRunOnce(&FigByteStreamProviderGetClassID_sRegisterFigByteStreamProviderBaseTypeOnce, RegisterFigByteStreamProviderBaseType);
  result = CMDerivedObjectCreate(v0, &kBaseByteStreamProvider_VTable, sFigByteStreamProviderClassID, &sFigBaseByteStreamProvider, v1, v2, v3, v4);
  if (!result)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage(sFigBaseByteStreamProvider);
    result = FigGetDefaultManagedFilePool();
    *(DerivedStorage + 8) = result;
    if (result)
    {

      return CFRetain(result);
    }
  }

  return result;
}

size_t FigByteStreamProviderCreateForBaseURLWithSecurityOptions(int a1, CFTypeRef cf, const void *a3, int a4, CFTypeRef *a5)
{
  if (!cf)
  {
    FigByteStreamProviderCreateForBaseURLWithSecurityOptions_cold_3(&v17);
    return v17;
  }

  if (!a3)
  {
    FigByteStreamProviderCreateForBaseURLWithSecurityOptions_cold_2(&v17);
    return v17;
  }

  if (!a5)
  {
    FigByteStreamProviderCreateForBaseURLWithSecurityOptions_cold_1(&v17);
    return v17;
  }

  if (a4)
  {
    v17 = 0;
    v9 = *MEMORY[0x1E695E480];
    FigThreadRunOnce(&FigByteStreamProviderGetClassID_sRegisterFigByteStreamProviderBaseTypeOnce, RegisterFigByteStreamProviderBaseType);
    v14 = CMDerivedObjectCreate(v9, &kSecurityPolicyByteStreamProvider_VTable, sFigByteStreamProviderClassID, &v17, v10, v11, v12, v13);
    if (!v14)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage(v17);
      *DerivedStorage = CFRetain(a3);
      *(DerivedStorage + 8) = a4;
      *(DerivedStorage + 16) = CFRetain(cf);
      *a5 = v17;
    }
  }

  else
  {
    v14 = 0;
    *a5 = CFRetain(cf);
  }

  return v14;
}

size_t baseByteStreamProvider_CreateByteStreamForURL(uint64_t a1, CFURLRef relativeURL, unsigned int a3, uint64_t a4, uint64_t a5, CFTypeRef *a6)
{
  if (relativeURL)
  {
    if (a6)
    {
      v10 = CFURLCopyAbsoluteURL(relativeURL);
      if (v10)
      {
        v11 = v10;
        DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
        if ((a3 & 0xFFFFFFBF) != 0 || (v13 = *(DerivedStorage + 8)) == 0)
        {
          ByteStreamForFile = CMByteStreamCreateForFileURL(a5, v11, a3, a6);
        }

        else
        {
          ByteStreamForFile = FigManagedFilePoolCreateByteStreamForFile(v13, v11, a3, a5, a6);
        }

        v15 = ByteStreamForFile;
        CFRelease(v11);
      }

      else
      {
        baseByteStreamProvider_CreateByteStreamForURL_cold_1(&v17);
        return v17;
      }
    }

    else
    {
      baseByteStreamProvider_CreateByteStreamForURL_cold_2(&v18);
      return v18;
    }
  }

  else
  {
    baseByteStreamProvider_CreateByteStreamForURL_cold_3(&v19);
    return v19;
  }

  return v15;
}

uint64_t baseByteStreamProvider_CreateScheduledIOForURL(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, CFTypeRef *a5)
{
  cf = 0;
  v10 = *(*(CMBaseObjectGetVTable(a1) + 16) + 8);
  if (!v10)
  {
    return 4294954514;
  }

  v11 = v10(a1, a2, 0, a3, a4, &cf);
  v12 = cf;
  if (v11)
  {
    v13 = v11;
    if (!cf)
    {
      return v13;
    }

    goto LABEL_4;
  }

  v13 = FigScheduledIOCreateForReadingByteStream(a4, cf, 0, a5);
  v12 = cf;
  if (cf)
  {
LABEL_4:
    CFRelease(v12);
  }

  return v13;
}

void securityPolicyByteStreamProvider_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
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
}

size_t securityPolicyByteStreamProvider_CreateByteStreamForURL(uint64_t a1, const __CFURL *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  if (a2)
  {
    v13 = DerivedStorage;
    if (FigIsReferenceAllowedBySecurityPolicy(*DerivedStorage, a2, *(DerivedStorage + 8)))
    {
      v14 = *(v13 + 16);
      v15 = *(*(CMBaseObjectGetVTable(v14) + 16) + 8);
      if (v15)
      {

        return v15(v14, a2, a3, a4, a5, a6);
      }

      else
      {
        return 4294954514;
      }
    }

    else
    {
      emitter = fig_log_get_emitter("com.apple.coremedia", "");

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCF5EuLL, "<<< ByteStreamProvider >>>", 0x20A, v6, v18, v19);
    }
  }

  else
  {
    securityPolicyByteStreamProvider_CreateByteStreamForURL_cold_1(&v20);
    return v20;
  }
}

size_t securityPolicyByteStreamProvider_CreateScheduledIOForURL(uint64_t a1, const __CFURL *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  if (a2)
  {
    v11 = DerivedStorage;
    if (FigIsReferenceAllowedBySecurityPolicy(*DerivedStorage, a2, *(DerivedStorage + 8)))
    {
      v12 = *(v11 + 16);
      v13 = *(*(CMBaseObjectGetVTable(v12) + 16) + 16);
      if (v13)
      {

        return v13(v12, a2, a3, a4, a5);
      }

      else
      {
        return 4294954514;
      }
    }

    else
    {
      emitter = fig_log_get_emitter("com.apple.coremedia", "");

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCF5EuLL, "<<< ByteStreamProvider >>>", 0x221, v5, v16, v17);
    }
  }

  else
  {
    securityPolicyByteStreamProvider_CreateScheduledIOForURL_cold_1(&v18);
    return v18;
  }
}

uint64_t FigLogRingBufferWriteLogsAsync(uint64_t a1)
{
  if (!a1 || !*(a1 + 24))
  {
    v3 = 4294950821;
LABEL_8:
    syslog(3, "<<<< FigLogRingBuffer >>>> failed to write ring buffer to logs err %d", v3);
    return v3;
  }

  v2 = malloc_type_calloc(1uLL, 0x10uLL, 0xA0040AFF93C70uLL);
  if (!v2)
  {
    v3 = 4294950826;
    goto LABEL_8;
  }

  *v2 = a1;
  v2[1] = 0;
  dispatch_async_f(*(a1 + 24), v2, flr_FigLogRingBufferWriteLogsDispatch);
  return 0;
}

uint64_t FigLogRingBufferWriteAndCopyURLContainingLogs(uint64_t a1, uint64_t a2)
{
  if (!a1 || !*(a1 + 24))
  {
    v5 = 4294950821;
LABEL_8:
    syslog(3, "<<<< FigLogRingBuffer >>>> failed to write ring buffer to logs err %d", v5);
    return v5;
  }

  v4 = malloc_type_calloc(1uLL, 0x10uLL, 0xA0040AFF93C70uLL);
  if (!v4)
  {
    v5 = 4294950826;
    goto LABEL_8;
  }

  *v4 = a1;
  v4[1] = a2;
  dispatch_sync_f(*(a1 + 24), v4, flr_FigLogRingBufferWriteLogsDispatch);
  return 0;
}

void FigLogRingBufferRelease(dispatch_queue_t *context)
{
  if (context)
  {
    dispatch_sync_f(context[3], context, flr_FigLogRingBufferRelease);
    dispatch_release(context[3]);

    free(context);
  }
}

void flr_FigLogRingBufferRelease(uint64_t a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      free(v2);
    }

    v3 = *(a1 + 40);
    if (v3)
    {
      FigGzipDispose(v3);
    }

    v4 = *(a1 + 32);

    FigRingBufferRelease(v4);
  }
}

void flr_FigLogRingBufferCommitBuffer(uint64_t a1, uint64_t a2, __CFArray *a3, double a4)
{
  v58 = *MEMORY[0x1E69E9840];
  v8 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v10 = Mutable;
  if (a2 && a1 && Mutable)
  {
    if (!*(a2 + 8) || !*a2)
    {
      goto LABEL_68;
    }

    length = 0;
    bytes = 0;
    if (flr_FigLogRingBufferGzipBufferIntoNewBuffer(a1, a2, &bytes))
    {
      v12 = 0;
    }

    else
    {
      v11 = CFDataCreate(v8, bytes, length);
      v12 = v11;
      if (v11)
      {
        CFRetain(v11);
        CFRelease(v12);
      }
    }

    if (bytes)
    {
      free(bytes);
    }

    if (*a2)
    {
      free(*a2);
      *a2 = 0;
    }

    FigGzipReset(*(a1 + 40));
    if (!v12)
    {
LABEL_68:
      v28 = v10;
LABEL_27:
      CFRelease(v28);
      return;
    }

    Current = CFAbsoluteTimeGetCurrent();
    FigCFDictionarySetDouble(v10, @"start", a4, v14, v15, v16, v17, v18, v19);
    FigCFDictionarySetDouble(v10, @"end", Current, v20, v21, v22, v23, v24, v25);
    CFDictionarySetValue(v10, @"buffer", v12);
    if (*(a1 + 64))
    {
      v26 = CFArrayCreateMutable(v8, 0, MEMORY[0x1E695E9C0]);
      if (!v26)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v26 = 0;
    }

    if (FigRingBufferAppendValueAndEvictBuffer(*(a1 + 32), v10, v26))
    {
      goto LABEL_25;
    }

    if (!v26 || CFArrayGetCount(v26) < 1)
    {
      goto LABEL_21;
    }

    if (flr_FigLogRingBufferMakeLogFileName("/private/var/mobile/Library/Logs/CrashReporter/mediaserverd_autolog_", 1, *(a1 + 56), __filename))
    {
LABEL_25:
      CFRelease(v10);
      CFRelease(v12);
      if (!v26)
      {
        return;
      }

      v28 = v26;
      goto LABEL_27;
    }

    v29 = *(a1 + 60);
    *(a1 + 56) = (*(a1 + 56) + 1) % 10;
    if (v29 <= 9)
    {
      *(a1 + 60) = v29 + 1;
    }

    if (CFArrayGetCount(v26) < 1)
    {
      goto LABEL_21;
    }

    v30 = fopen(__filename, "wb+");
    if (!v30)
    {
      v31 = __error();
      syslog(3, "<<<< FigLogRingBuffer >>>> Error in opening file %s, errno %d", __filename, *v31);
      syslog(3, "<<<< FigLogRingBuffer >>>> failed to write ring log buffer to file %s error %d", __filename, -16477);
LABEL_21:
      if (a3)
      {
        CFArrayAppendValue(a3, v10);
      }

      v27 = malloc_type_calloc(1uLL, *(a1 + 16), 0x90B5A15uLL);
      *a1 = v27;
      if (v27)
      {
        *(a1 + 8) = 0;
        *(a1 + 48) = 0;
      }

      goto LABEL_25;
    }

    v32 = v30;
    bytes = 0;
    if (CFArrayGetCount(v26) < 1)
    {
      v50 = -16475;
    }

    else
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v26, 0);
      if (ValueAtIndex)
      {
        Value = CFDictionaryGetValue(ValueAtIndex, @"start");
        if (Value)
        {
          CFNumberGetValue(Value, kCFNumberDoubleType, &bytes);
          v35 = CFDateCreate(v8, *&bytes);
          if (v35)
          {
            v36 = v35;
            v37 = CFLocaleCopyCurrent();
            if (!v37)
            {
              CFRelease(v36);
              StringWithDate = 0;
              syslog(3, "<<<< FigLogRingBuffer >>>> failed to get the buffer start time %d", -16470);
              goto LABEL_45;
            }

            v38 = v37;
            v39 = CFDateFormatterCreate(v8, v37, kCFDateFormatterFullStyle, kCFDateFormatterFullStyle);
            v40 = v39;
            if (v39)
            {
              CFDateFormatterSetFormat(v39, @"yyyy-MM-dd HH:mm:ss.SS");
              StringWithDate = CFDateFormatterCreateStringWithDate(v8, v40, v36);
              CFRelease(v40);
              if (StringWithDate)
              {
                v51 = 0;
                LOBYTE(v40) = 1;
                goto LABEL_43;
              }

              LOBYTE(v40) = 0;
            }

            else
            {
              StringWithDate = 0;
            }

            v51 = -16470;
LABEL_43:
            CFRelease(v36);
            CFRelease(v38);
            if ((v40 & 1) == 0)
            {
              syslog(3, "<<<< FigLogRingBuffer >>>> failed to get the buffer start time %d", v51);
            }

LABEL_45:
            v52[0] = &bytes;
            if (StringWithDate)
            {
              CStringPtr = CFStringGetCStringPtr(StringWithDate, 0x8000100u);
            }

            else
            {
              CStringPtr = 0;
            }

            v43 = getpid();
            v44 = "TimeNotAvailable";
            if (CStringPtr)
            {
              v44 = CStringPtr;
            }

            v45 = snprintf(&bytes, 0x480uLL, "==== mediaserverd Rotating AutoLogFile %s PID %d start time: %s ====\n", __filename, v43, v44);
            if (v45)
            {
              if (v45 >= 0x480)
              {
                v46 = 1152;
              }

              else
              {
                v46 = v45;
              }

              v52[1] = v46;
              v53 = 0;
              v54 = 0;
              v47 = flr_FigLogRingBufferGzipBufferIntoNewBuffer(a1, v52, &v53);
              if (v47)
              {
                v48 = v47;
              }

              else
              {
                if (fwrite(v53, v54, 1uLL, v32) == 1)
                {
                  free(v53);
LABEL_60:
                  v49 = flr_FigLogRingBufferWriteBuffersToFile(v26, v32);
                  if (v49)
                  {
                    syslog(3, "<<<< FigLogRingBuffer >>>> failed to write ring log buffer to file %s error %d", __filename, v49);
                  }

                  fclose(v32);
                  if (StringWithDate)
                  {
                    CFRelease(StringWithDate);
                  }

                  goto LABEL_21;
                }

                flr_FigLogRingBufferCommitBuffer_cold_1();
                v48 = -16477;
              }

              free(v53);
            }

            else
            {
              v48 = -16478;
            }

            syslog(3, "<<<< FigLogRingBuffer >>>> failed to write the auto log file header for %s (%d)", __filename, v48);
            goto LABEL_60;
          }

          v50 = -16470;
        }

        else
        {
          v50 = -16471;
        }
      }

      else
      {
        v50 = -16474;
      }
    }

    StringWithDate = 0;
    syslog(3, "<<<< FigLogRingBuffer >>>> failed to get the buffer start time %d", v50);
    goto LABEL_45;
  }

  if (Mutable)
  {

    CFRelease(Mutable);
  }
}

void flr_FigLogRingBufferGetEntriesInternal(uint64_t a1, __CFArray *a2)
{
  FigRingBufferGetEntries(*(a1 + 32), a2);
  if (*(a1 + 8))
  {
    v4 = *a1;
    flr_FigLogRingBufferCommitBuffer(a1, &v4, a2, *(a1 + 48));
  }
}

uint64_t flr_FigLogRingBufferAppendRotatingLogFiles(int a1, int a2, FILE *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a1 >= 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = a1 + 10;
  }

  if (!a3)
  {
    flr_FigLogRingBufferAppendRotatingLogFiles_cold_2();
    return 4294950819;
  }

  if (v3 < 0)
  {
    syslog(3, "<<<< FigLogRingBuffer >>>> cannot determine the ring log file counter to use %d", v3);
    return 4294950819;
  }

  v4 = a2;
  if (a2 < 1)
  {
    return 0;
  }

  v6 = "/private/var/mobile/Library/Logs/CrashReporter/mediaserverd_autolog_";
  while (1)
  {
    LogFileName = flr_FigLogRingBufferMakeLogFileName(v6, 1, v3, __filename);
    if (LogFileName)
    {
      v15 = LogFileName;
      syslog(3, "<<<< FigLogRingBuffer >>>> failed (%d) to make the ring log file name for %d");
      return v15;
    }

    v8 = fopen(__filename, "rb");
    if (v8)
    {
      v9 = v8;
      v10 = v6;
      v11 = malloc_type_calloc(1uLL, 0x4000uLL, 0x100004077774924uLL);
      if (v11)
      {
        while (1)
        {
          if (feof(v9))
          {
            v15 = 0;
            v16 = 1;
            goto LABEL_16;
          }

          v12 = fread(v11, 1uLL, 0x4000uLL, v9);
          if (!v12)
          {
            break;
          }

          v13 = v12;
          v14 = fwrite(v11, 1uLL, v12, a3);
          if (v14 != v13)
          {
            syslog(3, "<<<< FigLogRingBuffer >>>> failed to write all the data %ld (read %ld)", v14, v13);
            goto LABEL_21;
          }
        }

        flr_FigLogRingBufferAppendRotatingLogFiles_cold_1();
LABEL_21:
        v16 = 0;
        v15 = 4294950819;
      }

      else
      {
        v16 = 0;
        v15 = 4294950826;
      }

LABEL_16:
      free(v11);
      fclose(v9);
      v6 = v10;
      if ((v16 & 1) == 0)
      {
        break;
      }
    }

    v3 = (v3 + 1) % 10;
    v17 = __OFSUB__(v4--, 1);
    if ((v4 < 0) ^ v17 | (v4 == 0))
    {
      return 0;
    }
  }

  syslog(3, "<<<< FigLogRingBuffer >>>> failed to append the ring log file %s");
  return v15;
}

void *OUTLINED_FUNCTION_0_59()
{

  return malloc_type_calloc(1uLL, 0x10uLL, 0xA0040AFF93C70uLL);
}

uint64_t CMTagCollectionAssistantGetTypeID()
{
  if (_MergedGlobals_39 != -1)
  {
    CMTagCollectionAssistantGetTypeID_cold_1();
  }

  return qword_1ED4CCBB8;
}

uint64_t tagCollectionAssistant_registerTagCollectionAssistantType()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED4CCBB8 = result;
  return result;
}

void *tagCollectionAssistant_init(void *result)
{
  result[2] = 0;
  result[3] = 0;
  result[4] = 0;
  return result;
}

CFStringRef tagCollectionAssistant_copyDebugDesc(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  v3 = CFGetRetainCount(a1);
  return CFStringCreateWithFormat(v2, 0, @"<CMTagCollectionAssistant %p retainCount: %ld> preset: %u, packingType: %llu, projectionType: %llu", a1, v3, *(a1 + 16), *(a1 + 24), *(a1 + 32));
}

OSStatus CMSwapBigEndianMetadataDescriptionToHost(uint8_t *metadataDescriptionData, size_t metadataDescriptionSize)
{
  v2 = bswap32(*(metadataDescriptionData + 2));
  v3 = bswap32(*(metadataDescriptionData + 6)) >> 16;
  v4 = bswap32(*(metadataDescriptionData + 7)) >> 16;
  *metadataDescriptionData = vrev32_s8(*metadataDescriptionData);
  *(metadataDescriptionData + 2) = v2;
  *(metadataDescriptionData + 6) = v3;
  *(metadataDescriptionData + 7) = v4;
  return 0;
}

OSStatus CMSwapHostEndianMetadataDescriptionToBig(uint8_t *metadataDescriptionData, size_t metadataDescriptionSize)
{
  v2 = bswap32(*(metadataDescriptionData + 2));
  v3 = bswap32(*(metadataDescriptionData + 6)) >> 16;
  v4 = bswap32(*(metadataDescriptionData + 7)) >> 16;
  *metadataDescriptionData = vrev32_s8(*metadataDescriptionData);
  *(metadataDescriptionData + 2) = v2;
  *(metadataDescriptionData + 6) = v3;
  *(metadataDescriptionData + 7) = v4;
  return 0;
}

size_t FigMetadataUnboxMEBXKeyTableBox(const __CFAllocator *a1, uint64_t a2, CFMutableDictionaryRef *a3)
{
  keys[2] = *MEMORY[0x1E69E9840];
  memset(v56, 0, sizeof(v56));
  v55 = 0;
  v54 = 0;
  v6 = FigAtomStreamInitWithParent(a2, 0, v56);
  if (v6 == -12893)
  {
    Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CurrentAtomVersionAndFlags = 0;
    goto LABEL_3;
  }

  CurrentAtomVersionAndFlags = v6;
  if (!v6)
  {
    v49 = a3;
    Mutable = 0;
    allocator = *MEMORY[0x1E695E480];
    v53 = *MEMORY[0x1E695E4D0];
    v52 = *MEMORY[0x1E695E4C0];
    while (1)
    {
      CurrentAtomTypeAndDataLength = FigAtomStreamGetCurrentAtomTypeAndDataLength(v56, &v55, &v54);
      if (CurrentAtomTypeAndDataLength)
      {
        CurrentAtomVersionAndFlags = CurrentAtomTypeAndDataLength;
LABEL_177:
        if (Mutable)
        {
          CFRelease(Mutable);
        }

        return CurrentAtomVersionAndFlags;
      }

      if (v55)
      {
        v10 = v55 == 1970628964;
      }

      else
      {
        v10 = 1;
      }

      if (v10)
      {
        goto LABEL_12;
      }

      valuePtr = v55;
      v61 = 0;
      v60 = 0;
      memset(v59, 0, sizeof(v59));
      value = 0uLL;
      v57 = 0uLL;
      v12 = FigAtomStreamInitWithParent(v56, 0, v59);
      if (v12)
      {
        CurrentAtomVersionAndFlags = v12;
        theDict = Mutable;
        v13 = 0;
        v14 = 0;
        v15 = 0;
LABEL_161:
        v16 = 0;
        goto LABEL_134;
      }

      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      while (1)
      {
        v17 = FigAtomStreamGetCurrentAtomTypeAndDataLength(v59, &v61, &v60);
        if (v17)
        {
LABEL_128:
          CurrentAtomVersionAndFlags = v17;
          goto LABEL_129;
        }

        if (v61 <= 1819239264)
        {
          if (v61 == 1668575347)
          {
            if (!v16)
            {
              v73 = 0;
              *v72 = 0;
              v70 = 0u;
              v71 = 0u;
              v68 = 0u;
              v69 = 0u;
              v66 = 0u;
              v67 = 0u;
              v65 = 0u;
              v63 = 0;
              cf = 0;
              v24 = FigAtomStreamInitWithParent(v59, 0, &v65);
              if (v24)
              {
                CurrentAtomVersionAndFlags = v24;
                theDict = Mutable;
                goto LABEL_161;
              }

              v25 = 0;
              do
              {
                v26 = FigAtomStreamGetCurrentAtomTypeAndDataLength(&v65, &v73, v72);
                if (v26)
                {
                  CurrentAtomVersionAndFlags = v26;
                  goto LABEL_89;
                }

                if (v73 == 1685354864)
                {
                  CurrentAtomVersionAndFlags = copyKeyOrDataTypeAtom(a1, &v65, &cf, &v63);
                  v28 = cf;
                  if (CurrentAtomVersionAndFlags)
                  {
                    if (cf)
                    {
                      CFRelease(cf);
                    }

                    goto LABEL_89;
                  }

                  if (cf && v63)
                  {
                    keys[0] = @"MetadataKeyDataTypeNameSpace";
                    keys[1] = @"MetadataKeyDataType";
                    values[0] = cf;
                    values[1] = v63;
                    v29 = CFDictionaryCreate(a1, keys, values, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                    if (!v25)
                    {
                      v25 = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
                    }

                    CFArrayAppendValue(v25, v29);
                    CFRelease(v29);
                    v28 = cf;
                  }

                  if (v28)
                  {
                    CFRelease(v28);
                    cf = 0;
                  }

                  if (v63)
                  {
                    CFRelease(v63);
                    v63 = 0;
                  }
                }

                Atom = FigAtomStreamAdvanceToNextAtom(&v65);
              }

              while (!Atom);
              CurrentAtomVersionAndFlags = Atom;
              if (Atom == -12890)
              {
                CurrentAtomVersionAndFlags = 0;
                v16 = v25;
                v25 = 0;
                goto LABEL_90;
              }

LABEL_89:
              v16 = 0;
LABEL_90:
              if (v63)
              {
                CFRelease(v63);
              }

              if (v25)
              {
                CFRelease(v25);
              }

              if (CurrentAtomVersionAndFlags)
              {
                goto LABEL_129;
              }
            }
          }

          else if (v61 == 1685354864)
          {
            if (v57 == 0)
            {
              v18 = &v57 + 1;
              p_value = &v57;
LABEL_62:
              v17 = copyKeyOrDataTypeAtom(a1, v59, v18, p_value);
              if (v17)
              {
                goto LABEL_128;
              }

              goto LABEL_105;
            }
          }

          else if (v61 == 1801812324 && value == 0)
          {
            v18 = &value + 1;
            p_value = &value;
            goto LABEL_62;
          }

          goto LABEL_105;
        }

        if (v61 != 1819239265)
        {
          break;
        }

        if (!v13)
        {
          *&v65 = 0;
          CurrentAtomVersionAndFlags = FigAtomStreamGetCurrentAtomTypeAndDataLength(v59, 0, &v65);
          v30 = 0;
          if (CurrentAtomVersionAndFlags || !v65)
          {
            goto LABEL_104;
          }

          v30 = malloc_type_malloc(v65, 0x42205A97uLL);
          if (!v30)
          {
            v39 = 267;
LABEL_103:
            FigMetadataUnboxMEBXKeyTableBox_cold_3(v39, keys);
            CurrentAtomVersionAndFlags = LODWORD(keys[0]);
LABEL_104:
            free(v30);
            v13 = 0;
            if (CurrentAtomVersionAndFlags)
            {
              theDict = Mutable;
              v42 = 0;
              v43 = 0;
              Mutable = 0;
              goto LABEL_135;
            }

            goto LABEL_105;
          }

          CurrentAtomData = FigAtomStreamReadCurrentAtomData(v59, 0, v65, v30);
          if (CurrentAtomData)
          {
            CurrentAtomVersionAndFlags = CurrentAtomData;
            theDict = Mutable;
            free(v30);
            v13 = 0;
            goto LABEL_134;
          }

          if (v30[v65 - 1])
          {
            v39 = 272;
            goto LABEL_103;
          }

          v32 = CFStringCreateWithCString(a1, v30, 0x600u);
          if (!v32)
          {
            v39 = 275;
            goto LABEL_103;
          }

          v13 = v32;
          free(v30);
        }

LABEL_105:
        v40 = FigAtomStreamAdvanceToNextAtom(v59);
        if (v40)
        {
          CurrentAtomVersionAndFlags = v40;
          if (v40 == -12890)
          {
            if (Mutable || (Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8])) != 0)
            {
              theDict = Mutable;
              v41 = *(&value + 1);
              if (!*(&value + 1))
              {
                emitter = fig_log_get_emitter("com.apple.coremedia", "");
                CurrentAtomVersionAndFlags = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE56uLL, "<<< MetadataDescBridge >>>", 0x26D, v3, v46, v47);
                goto LABEL_134;
              }

              Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
              if (Mutable)
              {
                v42 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
                if (v42)
                {
                  v43 = CFStringCreateWithFormat(a1, 0, @"%d", valuePtr);
                  if (v43)
                  {
                    CFDictionaryAddValue(Mutable, @"MetadataKeyNamespace", v41);
                    if (value)
                    {
                      CFDictionaryAddValue(Mutable, @"MetadataKeyValue", value);
                    }

                    CFDictionaryAddValue(Mutable, @"MetadataKeyLocalID", v42);
                    if (*(&v57 + 1))
                    {
                      v44 = v57;
                      if (v57)
                      {
                        CFDictionaryAddValue(Mutable, @"MetadataKeyDataTypeNameSpace", *(&v57 + 1));
                        CFDictionaryAddValue(Mutable, @"MetadataKeyDataType", v44);
                      }
                    }

                    if (v13)
                    {
                      CFDictionaryAddValue(Mutable, @"MetadataKeyLanguageTag", v13);
                    }

                    if (v14)
                    {
                      CFDictionaryAddValue(Mutable, @"MetadataKeyStructuralDependency", v14);
                    }

                    if (v15)
                    {
                      CFDictionaryAddValue(Mutable, @"MetadataKeySetupData", v15);
                    }

                    if (v16)
                    {
                      CFDictionaryAddValue(Mutable, @"MetadataKeyConformingDataTypes", v16);
                    }

                    CFDictionaryAddValue(theDict, v43, Mutable);
                    CurrentAtomVersionAndFlags = 0;
                    goto LABEL_135;
                  }

                  FigMetadataUnboxMEBXKeyTableBox_cold_4(&v65);
LABEL_171:
                  CurrentAtomVersionAndFlags = v65;
                  goto LABEL_135;
                }

                FigMetadataUnboxMEBXKeyTableBox_cold_5(&v65);
LABEL_170:
                v43 = 0;
                goto LABEL_171;
              }

              FigMetadataUnboxMEBXKeyTableBox_cold_6(&v65);
            }

            else
            {
              FigMetadataUnboxMEBXKeyTableBox_cold_7(&v65);
              theDict = 0;
            }

            v42 = 0;
            goto LABEL_170;
          }

LABEL_129:
          theDict = Mutable;
          goto LABEL_134;
        }
      }

      if (v61 != 1935962212)
      {
        if (v61 == 1936028789 && !v15)
        {
          *&v65 = 0;
          CurrentAtomVersionAndFlags = FigAtomStreamGetCurrentAtomTypeAndDataLength(v59, 0, &v65);
          if (!CurrentAtomVersionAndFlags && v65)
          {
            v20 = CFDataCreateMutable(allocator, v65);
            if (v20)
            {
              v21 = v20;
              CFDataSetLength(v20, v65);
              v22 = v65;
              MutableBytePtr = CFDataGetMutableBytePtr(v21);
              CurrentAtomVersionAndFlags = FigAtomStreamReadCurrentAtomData(v59, 0, v22, MutableBytePtr);
              if (CurrentAtomVersionAndFlags)
              {
                v15 = 0;
              }

              else
              {
                v15 = CFRetain(v21);
              }

              CFRelease(v21);
            }

            else
            {
              FigMetadataUnboxMEBXKeyTableBox_cold_1(keys);
              v15 = 0;
              CurrentAtomVersionAndFlags = LODWORD(keys[0]);
            }
          }

          if (CurrentAtomVersionAndFlags)
          {
            goto LABEL_129;
          }
        }

        goto LABEL_105;
      }

      if (v14)
      {
        goto LABEL_105;
      }

      LODWORD(cf) = 0;
      keys[0] = 0;
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v65 = 0u;
      v33 = FigAtomStreamInitWithParent(v59, 0, &v65);
      if (v33)
      {
        CurrentAtomVersionAndFlags = v33;
        goto LABEL_133;
      }

      v14 = 0;
      while (2)
      {
        v34 = FigAtomStreamGetCurrentAtomTypeAndDataLength(&v65, &cf, keys);
        if (v34)
        {
          CurrentAtomVersionAndFlags = v34;
          goto LABEL_131;
        }

        if (cf == 1935962217 && v14 == 0)
        {
          LOBYTE(v63) = 0;
          v72[0] = 0;
          CurrentAtomVersionAndFlags = FigAtomStreamGetCurrentAtomVersionAndFlags(&v65, &v63, v72);
          if (!CurrentAtomVersionAndFlags && !v63)
          {
            v36 = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            if (v36)
            {
              v14 = v36;
              if (v72[0])
              {
                v37 = v53;
              }

              else
              {
                v37 = v52;
              }

              CFDictionaryAddValue(v36, @"StructuralDependencyIsInvalidFlag", v37);
              goto LABEL_83;
            }

            FigMetadataUnboxMEBXKeyTableBox_cold_2(values);
            CurrentAtomVersionAndFlags = LODWORD(values[0]);
          }

          if (CurrentAtomVersionAndFlags)
          {
            goto LABEL_133;
          }

          v14 = 0;
        }

LABEL_83:
        v38 = FigAtomStreamAdvanceToNextAtom(&v65);
        if (!v38)
        {
          continue;
        }

        break;
      }

      CurrentAtomVersionAndFlags = v38;
      if (v38 == -12890)
      {
        goto LABEL_105;
      }

LABEL_131:
      if (v14)
      {
        CFRelease(v14);
      }

LABEL_133:
      theDict = Mutable;
      v14 = 0;
LABEL_134:
      v42 = 0;
      v43 = 0;
      Mutable = 0;
LABEL_135:
      if (*(&value + 1))
      {
        CFRelease(*(&value + 1));
      }

      if (v42)
      {
        CFRelease(v42);
      }

      if (v43)
      {
        CFRelease(v43);
      }

      if (value)
      {
        CFRelease(value);
      }

      if (Mutable)
      {
        CFRelease(Mutable);
      }

      if (*(&v57 + 1))
      {
        CFRelease(*(&v57 + 1));
      }

      Mutable = theDict;
      if (v57)
      {
        CFRelease(v57);
      }

      if (v13)
      {
        CFRelease(v13);
      }

      if (v14)
      {
        CFRelease(v14);
      }

      if (v15)
      {
        CFRelease(v15);
      }

      if (v16)
      {
        CFRelease(v16);
      }

      if (CurrentAtomVersionAndFlags)
      {
        goto LABEL_177;
      }

LABEL_12:
      v11 = FigAtomStreamAdvanceToNextAtom(v56);
      if (v11)
      {
        if (v11 == -12890)
        {
          CurrentAtomVersionAndFlags = 0;
        }

        else
        {
          CurrentAtomVersionAndFlags = v11;
        }

        a3 = v49;
LABEL_3:
        *a3 = Mutable;
        return CurrentAtomVersionAndFlags;
      }
    }
  }

  return CurrentAtomVersionAndFlags;
}

OSStatus CMMetadataFormatDescriptionCreateFromBigEndianMetadataDescriptionData(CFAllocatorRef allocator, const uint8_t *metadataDescriptionData, size_t size, CMMetadataDescriptionFlavor flavor, CMMetadataFormatDescriptionRef *formatDescriptionOut)
{
  metadataDescriptionBlockBuffer = 0;
  if (!metadataDescriptionData)
  {
    CMMetadataFormatDescriptionCreateFromBigEndianMetadataDescriptionData_cold_2();
    return 0;
  }

  if (!formatDescriptionOut)
  {
    CMMetadataFormatDescriptionCreateFromBigEndianMetadataDescriptionData_cold_1();
    return 0;
  }

  v7 = CMBlockBufferCreateWithMemoryBlock(allocator, metadataDescriptionData, size, *MEMORY[0x1E695E498], 0, 0, size, 1u, &metadataDescriptionBlockBuffer);
  v9 = metadataDescriptionBlockBuffer;
  if (v7)
  {
    v10 = v7;
    if (!metadataDescriptionBlockBuffer)
    {
      return v10;
    }

    goto LABEL_5;
  }

  v10 = CMMetadataFormatDescriptionCreateFromBigEndianMetadataDescriptionBlockBuffer(allocator, metadataDescriptionBlockBuffer, v8, formatDescriptionOut);
  v9 = metadataDescriptionBlockBuffer;
  if (metadataDescriptionBlockBuffer)
  {
LABEL_5:
    CFRelease(v9);
  }

  return v10;
}

size_t LocalIDEmitterApplierFunction(const __CFNumber *a1, uint64_t a2)
{
  valuePtr = 0;
  result = CFNumberGetValue(a1, kCFNumberSInt32Type, &valuePtr);
  if (valuePtr >= 1)
  {
    valuePtr = bswap32(valuePtr);
    return FigAtomWriterAppendData(a2, &valuePtr, 4);
  }

  return result;
}

uint64_t DependencyListsEmitterApplierFunction(const __CFString *a1, const void *a2, uint64_t a3)
{
  TypeID = CFStringGetTypeID();
  if (TypeID != CFGetTypeID(a1))
  {
    return DependencyListsEmitterApplierFunction_cold_1();
  }

  v7 = CFArrayGetTypeID();
  if (v7 != CFGetTypeID(a2))
  {
    return DependencyListsEmitterApplierFunction_cold_2();
  }

  result = CFStringGetIntValue(a1);
  if (result)
  {
    v9 = bswap32(result);
    v23 = 0;
    memset(v22, 0, sizeof(v22));
    FigAtomWriterInitWithParent(a3, v22);
    FigAtomWriterBeginAtom(v22, v9, 0, v10, v11, v12, v13, v14);
    v24.length = CFArrayGetCount(a2);
    v24.location = 0;
    CFArrayApplyFunction(a2, v24, LocalIDEmitterApplierFunction, v22);
    return FigAtomWriterEndAtom(v22, v15, v16, v17, v18, v19, v20, v21);
  }

  return result;
}

OSStatus CMMetadataFormatDescriptionCopyAsBigEndianMetadataDescriptionBlockBuffer(CFAllocatorRef allocator, CMMetadataFormatDescriptionRef metadataFormatDescription, CMMetadataDescriptionFlavor flavor, CMBlockBufferRef *blockBufferOut)
{
  v48 = 0;
  memset(v47, 0, sizeof(v47));
  v45 = 0xFFFF000000000000;
  blockBufferOuta = 0;
  if (!metadataFormatDescription)
  {
    CMMetadataFormatDescriptionCopyAsBigEndianMetadataDescriptionBlockBuffer_cold_3(&v49);
    goto LABEL_33;
  }

  if (!blockBufferOut)
  {
    CMMetadataFormatDescriptionCopyAsBigEndianMetadataDescriptionBlockBuffer_cold_2(&v49);
    goto LABEL_33;
  }

  Extensions = CMFormatDescriptionGetExtensions(metadataFormatDescription);
  if (!Extensions)
  {
    CMMetadataFormatDescriptionCopyAsBigEndianMetadataDescriptionBlockBuffer_cold_1(&v49);
LABEL_33:
    v11 = 0;
    v37 = v49;
    if (!v49)
    {
      goto LABEL_34;
    }

    goto LABEL_22;
  }

  v9 = Extensions;
  Value = CFDictionaryGetValue(Extensions, @"MetadataKeyTable");
  if (Value)
  {
    v11 = Value;
    CFRetain(Value);
  }

  else
  {
    v11 = CFDictionaryCreate(*MEMORY[0x1E695E480], 0, 0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  v12 = CFDictionaryGetValue(v9, @"MetadataPrimaryLocalIDs");
  v13 = CFDictionaryGetValue(v9, @"MetadataLocalIDDependencyLists");
  if (CMFormatDescriptionGetMediaSubType(metadataFormatDescription) != 1835360888)
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v33 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE53uLL, "<<< MetadataDescBridge >>>", 0x613, v4, v35, v36);
LABEL_21:
    v37 = v33;
    if (v33)
    {
      goto LABEL_22;
    }

LABEL_34:
    *blockBufferOut = blockBufferOuta;
    blockBufferOuta = 0;
    if (!v11)
    {
      return v37;
    }

    goto LABEL_25;
  }

  appended = CMBlockBufferCreateEmpty(allocator, 8u, 0, &blockBufferOuta);
  if (!appended)
  {
    appended = FigAtomWriterInitWithBlockBuffer(blockBufferOuta, v47);
    if (!appended)
    {
      appended = FigAtomWriterBeginAtom(v47, 1835360888, 0, v15, v16, v17, v18, v19);
      if (!appended)
      {
        FigAtomWriterAppendData(v47, &v45, 8);
        appended = FigMetadataAppendMEBXKeyTableBox(v47, v11);
        if (!appended)
        {
          if (!v12)
          {
            goto LABEL_17;
          }

          if (CFArrayGetCount(v12) < 1 || !v13 || CFDictionaryGetCount(v13) < 1)
          {
            if (CFArrayGetCount(v12) <= 0)
            {
LABEL_17:
              if (v13)
              {
                CFDictionaryGetCount(v13);
              }
            }

LABEL_19:
            v33 = FigAtomWriterEndAtom(v47, v20, v21, v22, v23, v24, v25, v26);
            goto LABEL_21;
          }

          appended = FigMetadataAppendMEBXPrimaryLocalIDsBox(v47, v12, v27, v28, v29, v30, v31, v32);
          if (!appended)
          {
            appended = FigMetadataAppendMEBXLocalIDDependencyListBoxes(v47, v13, v39, v40, v41, v42, v43, v44);
            if (!appended)
            {
              goto LABEL_19;
            }
          }
        }
      }
    }
  }

  v37 = appended;
LABEL_22:
  if (blockBufferOuta)
  {
    CFRelease(blockBufferOuta);
  }

  if (v11)
  {
LABEL_25:
    CFRelease(v11);
  }

  return v37;
}

size_t KeyEmitter_EmitDatatypeDeclarationBox(uint64_t a1, CFDictionaryRef theDict)
{
  Value = CFDictionaryGetValue(theDict, @"MetadataKeyDataTypeNameSpace");
  valuePtr = 0;
  if (!Value)
  {
    KeyEmitter_EmitDatatypeDeclarationBox_cold_4(v35);
    return LODWORD(v35[0]);
  }

  v36 = 0;
  memset(v35, 0, sizeof(v35));
  CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
  valuePtr = bswap32(valuePtr);
  v6 = CFDictionaryGetValue(theDict, @"MetadataKeyDataType");
  if (!v6)
  {
    KeyEmitter_EmitDatatypeDeclarationBox_cold_3(bytes);
    return *bytes;
  }

  v7 = v6;
  CFRetain(v6);
  TypeID = CFStringGetTypeID();
  if (TypeID == CFGetTypeID(v7))
  {
    Length = CFStringGetLength(v7);
    if (Length >= 1)
    {
      v10 = Length;
      v11 = malloc_type_calloc(1uLL, Length + 1, 0xB49872DCuLL);
      if (CFStringGetCString(v7, v11, v10 + 1, 0x600u))
      {
        CFRelease(v7);
        v7 = CFDataCreate(*MEMORY[0x1E695E480], v11, v10);
      }

      free(v11);
      if (!v7)
      {
        goto LABEL_11;
      }
    }

    goto LABEL_13;
  }

  v12 = CFNumberGetTypeID();
  if (v12 == CFGetTypeID(v7))
  {
    *bytes = 0;
    CFNumberGetValue(v7, kCFNumberSInt32Type, bytes);
    CFRelease(v7);
    *bytes = bswap32(*bytes);
    v7 = CFDataCreate(0, bytes, 4);
    if (!v7)
    {
LABEL_11:
      KeyEmitter_EmitDatatypeDeclarationBox_cold_2(bytes);
      return *bytes;
    }

    goto LABEL_13;
  }

  v13 = CFDataGetTypeID();
  if (v13 == CFGetTypeID(v7))
  {
LABEL_13:
    if (CFDataGetLength(v7))
    {
      appended = FigAtomWriterInitWithParent(a1, v35);
      if (!appended)
      {
        appended = FigAtomWriterBeginAtom(v35, 1685354864, 0, v15, v16, v17, v18, v19);
        if (!appended)
        {
          appended = FigAtomWriterAppendData(v35, &valuePtr, 4);
          if (!appended)
          {
            BytePtr = CFDataGetBytePtr(v7);
            v21 = CFDataGetLength(v7);
            appended = FigAtomWriterAppendData(v35, BytePtr, v21);
            if (!appended)
            {
              appended = FigAtomWriterEndAtom(v35, v22, v23, v24, v25, v26, v27, v28);
            }
          }
        }
      }
    }

    else
    {
      emitter = fig_log_get_emitter("com.apple.coremedia", "");
      appended = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE55uLL, "<<< MetadataDescBridge >>>", 0x439, v2, v30, v31);
    }

    v32 = appended;
    goto LABEL_21;
  }

  KeyEmitter_EmitDatatypeDeclarationBox_cold_1(bytes);
  v32 = *bytes;
LABEL_21:
  CFRelease(v7);
  return v32;
}

uint64_t OUTLINED_FUNCTION_5_22(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __int128 a11, uint64_t a12)
{
  a12 = 0;
  a10 = 0u;
  a11 = 0u;
  a9 = 0u;

  return FigAtomWriterInitWithParent(a1, &a9);
}

uint64_t OUTLINED_FUNCTION_7_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  return FigAtomWriterInitWithParent(v10, va);
}

void FigSandboxServerXPC_RemoveAssertionForPID(int a1, uint64_t a2)
{
  if (gFigSandboxServerXPC_0)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 0x40000000;
    v2[2] = __FigSandboxServerXPC_RemoveAssertionForPID_block_invoke;
    v2[3] = &__block_descriptor_tmp_43;
    v3 = a1;
    v2[4] = a2;
    dispatch_sync(gFigSandboxServerXPC_0, v2);
  }
}

void fsbsxpc_removeAssertionForPIDOnQueue(int a1)
{
  v2 = a1;
  v3 = MEMORY[0x19A8D7460](gFigSandboxServerXPC_2, a1);
  if (v3 >= 1)
  {
    v4 = v3;
    CFBagRemoveValue(gFigSandboxServerXPC_2, v2);
    if (v4 == 1)
    {
      SInt32 = FigCFNumberCreateSInt32(*MEMORY[0x1E695E480], a1);
      value = 0;
      if (CFDictionaryGetValueIfPresent(gFigSandboxServerXPC_1, SInt32, &value))
      {
        CFArrayGetCount(value);
        CFDictionaryRemoveValue(gFigSandboxServerXPC_1, SInt32);
      }

      if (SInt32)
      {
        CFRelease(SInt32);
      }
    }
  }
}

void FigSandboxServerXPC_AddAssertionForPID(int a1, uint64_t a2)
{
  if (gFigSandboxServerXPC_0)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 0x40000000;
    v2[2] = __FigSandboxServerXPC_AddAssertionForPID_block_invoke;
    v2[3] = &__block_descriptor_tmp_3_1;
    v3 = a1;
    v2[4] = a2;
    dispatch_sync(gFigSandboxServerXPC_0, v2);
  }
}

uint64_t FigSandboxRegistrationServerStart()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2000000000;
  v6 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __FigSandboxRegistrationServerStart_block_invoke;
  block[3] = &unk_1E74A0D28;
  block[4] = &v3;
  if (FigSandboxRegistrationServerStart_static_init != -1)
  {
    dispatch_once(&FigSandboxRegistrationServerStart_static_init, block);
  }

  v0 = *(v4 + 6);
  _Block_object_dispose(&v3, 8);
  return v0;
}

void __FigSandboxRegistrationServerStart_block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (FigServer_IsMediaparserd())
  {
    v2 = 0;
  }

  else if (FigServer_IsMediaplaybackd())
  {
    v2 = "com.apple.coremedia.mediaplaybackd.sandboxserver.xpc";
  }

  else
  {
    v2 = "com.apple.coremedia.sandboxserver.xpc";
  }

  v12[0] = 0;
  type = OS_LOG_TYPE_DEFAULT;
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(0, 1, v12, &type);
  v4 = v12[0];
  if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
  {
    v6 = v4;
  }

  else
  {
    v6 = v4 & 0xFFFFFFFE;
  }

  if (v6)
  {
    v12[1] = 136315394;
    v13 = "FigSandboxRegistrationServerStart_block_invoke";
    v14 = 2080;
    v15 = v2;
    v7 = _os_log_send_and_compose_impl();
    LOBYTE(v4) = v12[0];
  }

  else
  {
    v7 = 0;
  }

  fig_log_call_emit_and_clean_up_after_send_and_compose(0, 1u, 1, v7, v7 != &v16, v4, 0, v5);
  gFigSandboxServerXPC_0 = dispatch_queue_create("FigSandboxServerXPCQueue", 0);
  v8 = *MEMORY[0x1E695E480];
  gFigSandboxServerXPC_1 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  gFigSandboxServerXPC_2 = CFBagCreateMutable(v8, 0, 0);
  FigInstallSysdiagnoseBlock(@"FigSandboxSupportDump", &__block_literal_global_35);
  if (v2)
  {
    Mutable = CFDictionaryCreateMutable(v8, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v10 = *MEMORY[0x1E695E4D0];
    FigCFDictionarySetValue(Mutable, @"xpcServerOption_SelfTerminateOnError", *MEMORY[0x1E695E4D0]);
    FigCFDictionarySetValue(Mutable, @"xpcServerOption_OptOutOfPurge", v10);
    *(*(*(a1 + 32) + 8) + 24) = FigXPCServerStart(v2, FigSandboxRegistrationServerStart_callbacks, Mutable, &gFigSandboxRegistrationServerXPC);
    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  else
  {
    __FigSandboxRegistrationServerStart_block_invoke_cold_1(a1);
  }
}

void __FigSandboxRegistrationServerStart_block_invoke_2()
{
  v28 = *MEMORY[0x1E69E9840];
  v22 = 0;
  type = OS_LOG_TYPE_DEFAULT;
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(0, 1, &v22, &type);
  v1 = v22;
  if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
  {
    v3 = v1;
  }

  else
  {
    v3 = v1 & 0xFFFFFFFE;
  }

  if (v3)
  {
    Count = CFDictionaryGetCount(gFigSandboxServerXPC_1);
    v23 = 136315394;
    v24 = "FigSandboxRegistrationServerStart_block_invoke_2";
    v25 = 1024;
    LODWORD(v26) = Count;
    v5 = _os_log_send_and_compose_impl();
    LOBYTE(v1) = v22;
  }

  else
  {
    v5 = 0;
  }

  fig_log_call_emit_and_clean_up_after_send_and_compose(0, 1u, 1, v5, v5 != v27, v1, 0, v2);
  v6 = *MEMORY[0x1E695E480];
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v8 = CFStringCreateMutable(v6, 0);
  v9 = v8;
  if (Mutable)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    if (!Mutable)
    {
      if (!v8)
      {
        return;
      }

      goto LABEL_14;
    }
  }

  else if (CFDictionaryGetCount(gFigSandboxServerXPC_1) >= 1)
  {
    CFDictionaryApplyFunction(gFigSandboxServerXPC_1, figSandboxRegistrationServerCompactDictionaryDescription, Mutable);
    v22 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(0, 1, &v22, &type);
    v12 = v22;
    if (os_log_type_enabled(v11, type))
    {
      v14 = v12;
    }

    else
    {
      v14 = v12 & 0xFFFFFFFE;
    }

    if (v14)
    {
      v23 = 136315394;
      v24 = "FigSandboxRegistrationServerStart_block_invoke";
      v25 = 2112;
      v26 = Mutable;
      v15 = _os_log_send_and_compose_impl();
      LOBYTE(v12) = v22;
    }

    else
    {
      v15 = 0;
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose(0, 1u, 1, v15, v15 != v27, v12, 0, v13);
    CFDictionaryApplyFunction(gFigSandboxServerXPC_1, figSandboxRegistrationServerPublicDictionaryDescription, v9);
    v22 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(0, 1, &v22, &type);
    v17 = v22;
    if (os_log_type_enabled(v16, type))
    {
      v19 = v17;
    }

    else
    {
      v19 = v17 & 0xFFFFFFFE;
    }

    if (v19)
    {
      v23 = 136315394;
      v24 = "FigSandboxRegistrationServerStart_block_invoke";
      v25 = 2114;
      v26 = v9;
      v20 = _os_log_send_and_compose_impl();
      LOBYTE(v17) = v22;
    }

    else
    {
      v20 = 0;
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose(0, 1u, 1, v20, v20 != v27, v17, 0, v18);
  }

  CFRelease(Mutable);
  if (!v9)
  {
    return;
  }

LABEL_14:
  CFRelease(v9);
}

void figSandboxRegistrationServerCompactDictionaryDescription(const __CFNumber *a1, const __CFArray *a2, __CFString *a3)
{
  SInt32 = FigCFNumberGetSInt32(a1);
  CFStringAppendFormat(a3, 0, @"pid : %d = {", SInt32);
  v6 = FigCFCopyCompactDescription(a2);
  CFStringAppendFormat(a3, 0, @"%@} ", v6);
  if (v6)
  {

    CFRelease(v6);
  }
}

void figSandboxRegistrationServerPublicDictionaryDescription(const __CFNumber *a1, const __CFArray *a2, __CFString *a3)
{
  SInt32 = FigCFNumberGetSInt32(a1);
  CFStringAppendFormat(a3, 0, @"pid : %d = {", SInt32);
  Count = CFArrayGetCount(a2);
  CFStringAppendFormat(a3, 0, @"%d} ", Count);
}

uint64_t FigSandboxRegistrationServerCopyRegistrationForID(void *a1, CFTypeRef *a2)
{
  if (gFigSandboxRegistrationServerXPC)
  {
    v3 = FigXPCServerRetainNeighborObjectFromID(gFigSandboxRegistrationServerXPC, a1, a2);
    if (v3)
    {
      v5 = v3;
    }

    else
    {
      if (*a2)
      {
        v4 = CFGetTypeID(*a2);
        if (v4 == FigSandboxRegistrationGetTypeID())
        {
          return 0;
        }
      }

      FigSandboxRegistrationServerCopyRegistrationForID_cold_1(&v7);
      v5 = v7;
    }
  }

  else
  {
    FigSandboxRegistrationServerCopyRegistrationForID_cold_2(&v8);
    v5 = v8;
  }

  if (a2 && v5 && *a2)
  {
    CFRelease(*a2);
    *a2 = 0;
  }

  return v5;
}

void FigSandboxRegistrationServerDumpMappings(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  if (Mutable)
  {
    v3 = Mutable;
    if (CFDictionaryGetCount(gFigSandboxServerXPC_1) >= 1)
    {
      CFDictionaryApplyFunction(gFigSandboxServerXPC_1, figSandboxRegistrationServerPublicDictionaryDescription, v3);
      v10[0] = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(0, 1, v10, &type);
      v5 = v10[0];
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
      {
        v7 = v5;
      }

      else
      {
        v7 = v5 & 0xFFFFFFFE;
      }

      if (v7)
      {
        v10[1] = 136315650;
        v11 = "FigSandboxRegistrationServerDumpMappings";
        v12 = 2048;
        v13 = a1;
        v14 = 2114;
        v15 = v3;
        v8 = _os_log_send_and_compose_impl();
        LOBYTE(v5) = v10[0];
      }

      else
      {
        v8 = 0;
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose(0, 1u, 1, v8, v8 != &v16, v5, 0, v6);
    }

    CFRelease(v3);
  }
}

void DisposeServedSandboxRegistrationState(void *a1)
{
  if (a1)
  {
    v2 = a1[1];
    if (v2)
    {
      v3 = CFRetain(v2);
      v4 = *a1;
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 0x40000000;
      v6[2] = __DisposeServedSandboxRegistrationState_block_invoke;
      v6[3] = &__block_descriptor_tmp_29;
      v7 = v4;
      v6[4] = v3;
      dispatch_async(gFigSandboxServerXPC_0, v6);
      v5 = a1[1];
      if (v5)
      {
        CFRelease(v5);
      }
    }

    free(a1);
  }
}

void __HandleSandboxRegistrationCreationMessage_block_invoke(uint64_t a1)
{
  value = 0;
  if (CFDictionaryGetValueIfPresent(gFigSandboxServerXPC_1, *(a1 + 32), &value))
  {
    CFRetain(value);
  }

  else
  {
    value = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    CFDictionarySetValue(gFigSandboxServerXPC_1, *(a1 + 32), value);
  }

  CFArrayAppendValue(value, *(a1 + 40));
  if (value)
  {
    CFRelease(value);
    value = 0;
  }

  v2 = *(a1 + 48);
  MEMORY[0x19A8D7460](gFigSandboxServerXPC_2, v2);
  CFBagAddValue(gFigSandboxServerXPC_2, v2);
}

void __DisposeServedSandboxRegistrationState_block_invoke(uint64_t a1)
{
  fsbsxpc_removeAssertionForPIDOnQueue(*(a1 + 40));
  v2 = *(a1 + 32);

  CFRelease(v2);
}

void __HandleDestroySandboxRegistrationMessage_block_invoke(uint64_t a1)
{
  SInt32 = FigCFNumberCreateSInt32(*MEMORY[0x1E695E480], *(a1 + 40));
  value = 0;
  if (CFDictionaryGetValueIfPresent(gFigSandboxServerXPC_1, SInt32, &value))
  {
    v3 = value == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3 && CFArrayGetCount(value) >= 1)
  {
    v4 = value;
    v8.length = CFArrayGetCount(value);
    v8.location = 0;
    FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v4, v8, *(a1 + 32));
    if (FirstIndexOfValue != -1)
    {
      CFArrayRemoveValueAtIndex(value, FirstIndexOfValue);
    }
  }

  if (SInt32)
  {
    CFRelease(SInt32);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    CFRelease(v6);
  }
}

size_t FigMetadataFormatDescriptionRegisterOnce(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  v9 = 0;
  v13 = figMetadataFormatDescriptionFinalize;
  v12 = figMetadataFormatDescriptionCopyDebugDesc;
  v10 = 48;
  v11 = figMetadataFormatDescriptionEqual;
  return FigDerivedFormatDescriptionRegister(0x6D657461u, &v9, a3, a4, a5, a6, a7, a8);
}

size_t FigMetadataFormatDescriptionCreateWithKeysAndDependencies(const __CFAllocator *a1, int a2, CFArrayRef theArray, const __CFString *a4, const __CFString *a5, uint64_t *a6)
{
  v112[2] = *MEMORY[0x1E69E9840];
  valuePtr = 0;
  cf = 0;
  if (!a6)
  {
    FigMetadataFormatDescriptionCreateWithKeysAndDependencies_cold_15(keys);
    goto LABEL_146;
  }

  if (!theArray || (v8 = a6, !CFArrayGetCount(theArray)))
  {
    FigMetadataFormatDescriptionCreateWithKeysAndDependencies_cold_14(keys);
LABEL_146:
    v17 = 0;
    theDict = 0;
    v102 = 0;
    v18 = 0;
    v19 = 0;
    v96 = 0;
    v98 = 0;
    v100 = 0;
    v70 = 0;
    v53 = 0;
    DynamicBaseDataType = 0;
    v22 = 0;
    v69 = LODWORD(keys[0]);
    goto LABEL_118;
  }

  if (a2 != 1835360888)
  {
    FigMetadataFormatDescriptionCreateWithKeysAndDependencies_cold_1(keys);
    goto LABEL_146;
  }

  FigThreadRunOnce(&sFigMetadataFormatDescriptionRegisterOnce, FigMetadataFormatDescriptionRegisterOnce);
  FigThreadRunOnce(&sFigMetadataFormatDescriptionCreateCanonicalToWellKnownTypeAssociationsOnce, FigMetadataFormatDescriptionCreateCanonicalToWellKnownTypeAssociationsOnce);
  capacity = CFArrayGetCount(theArray);
  if (capacity < 1)
  {
    v17 = 0;
    theDict = 0;
    v102 = 0;
    v18 = 0;
    v19 = 0;
    v96 = 0;
    v98 = 0;
    v100 = 0;
    DynamicBaseDataType = 0;
    v21 = 0;
    v22 = 0;
    goto LABEL_107;
  }

  v102 = 0;
  theArraya = theArray;
  v90 = a4;
  v91 = a5;
  v93 = v8;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v96 = 0;
  v98 = 0;
  v100 = 0;
  theDict = 0;
  DynamicBaseDataType = 0;
  v21 = 0;
  v22 = 0;
  allocator = *MEMORY[0x1E695E480];
  alloc = a1;
  while (1)
  {
    if (v22)
    {
      CFRelease(v22);
    }

    if (v21)
    {
      CFRelease(v21);
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (DynamicBaseDataType)
    {
      CFRelease(DynamicBaseDataType);
    }

    if (v17)
    {
      CFRelease(v17);
    }

    ValueAtIndex = CFArrayGetValueAtIndex(theArraya, v16);
    if (ValueAtIndex)
    {
      v21 = CFRetain(ValueAtIndex);
    }

    else
    {
      v21 = 0;
    }

    v24 = CFGetTypeID(v21);
    if (v24 != CFDictionaryGetTypeID())
    {
      FigMetadataFormatDescriptionCreateWithKeysAndDependencies_cold_2(keys);
      v22 = 0;
      goto LABEL_148;
    }

    Value = CFDictionaryGetValue(v21, @"MetadataKeyLocalID");
    if (Value)
    {
      if (CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr + 4))
      {
        LocalIDUInt32 = FigMetadataKeyGetLocalIDUInt32(v21);
        HIDWORD(valuePtr) = LocalIDUInt32;
        if (LocalIDUInt32)
        {
          break;
        }
      }
    }

    v22 = 0;
LABEL_48:
    DynamicBaseDataType = 0;
    v17 = 0;
LABEL_49:
    if (++v16 == capacity)
    {
      if (theDict)
      {
        v8 = v93;
        if (CFDictionaryGetCount(theDict) >= 1)
        {
          *keys = xmmword_1E74A0E60;
          v112[0] = 0;
          values = theDict;
          v65 = &v109;
          v109 = 0;
          v110 = 0;
          v66 = &keys[1];
          if (v90)
          {
            keys[1] = @"MetadataPrimaryLocalIDs";
            v109 = v90;
            v67 = 2;
            v66 = v112;
            v65 = &v110;
          }

          else
          {
            v67 = 1;
          }

          if (v91)
          {
            *v66 = @"MetadataLocalIDDependencyLists";
            ++v67;
            *v65 = v91;
          }

          v71 = CFDictionaryCreate(a1, keys, &values, v67, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          v75 = a1;
          v70 = v71;
          if (v71)
          {
            v69 = FigDerivedFormatDescriptionCreate(v75, 0x6D657461, 1835360888, v71, v93, v72, v73, v74);
            if (!v69)
            {
              DerivedStorage = FigDerivedFormatDescriptionGetDerivedStorage(*v93, v76, v77, v78, v79, v80, v81, v82);
              *DerivedStorage = v102;
              DerivedStorage[1] = v100;
              DerivedStorage[2] = v98;
              DerivedStorage[3] = v96;
              DerivedStorage[4] = v19;
              DerivedStorage[5] = v18;
              v100 = 0;
              v98 = 0;
              v84 = 0;
              v19 = 0;
              v18 = 0;
              v102 = 0;
LABEL_115:
              v96 = v84;
              v53 = 0;
              goto LABEL_116;
            }
          }

          else
          {
            FigMetadataFormatDescriptionCreateWithKeysAndDependencies_cold_13(&v107);
            v69 = v107;
          }

          v84 = v96;
          goto LABEL_115;
        }
      }

      else
      {
        theDict = 0;
        v8 = v93;
      }

LABEL_107:
      v68 = FigDerivedFormatDescriptionCreate(a1, 0x6D657461, 1835360888, 0, v8, v13, v14, v15);
      goto LABEL_108;
    }
  }

  v22 = CFStringCreateWithFormat(a1, 0, @"%d", LocalIDUInt32);
  if (!v22)
  {
    goto LABEL_48;
  }

  KeyNamespaceUInt32 = FigMetadataKeyGetKeyNamespaceUInt32(v21);
  if (KeyNamespaceUInt32 != 1634627438 && !CFDictionaryGetValue(v21, @"MetadataKeyValue"))
  {
    goto LABEL_48;
  }

  Mutable = theDict;
  if (!theDict)
  {
    Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!Mutable)
    {
      FigMetadataFormatDescriptionCreateWithKeysAndDependencies_cold_12(keys);
      DynamicBaseDataType = 0;
      v53 = 0;
      v70 = 0;
      theDict = 0;
      goto LABEL_149;
    }
  }

  theDict = Mutable;
  CFDictionaryAddValue(Mutable, v22, v21);
  v29 = v100;
  if (!v100)
  {
    v29 = CFDictionaryCreateMutable(a1, capacity, 0, MEMORY[0x1E695E9E8]);
    if (!v29)
    {
      FigMetadataFormatDescriptionCreateWithKeysAndDependencies_cold_11(keys);
      DynamicBaseDataType = 0;
      v53 = 0;
      v70 = 0;
      v100 = 0;
      goto LABEL_149;
    }
  }

  v100 = v29;
  CFDictionaryAddValue(v29, HIDWORD(valuePtr), v21);
  v30 = CFDictionaryGetValue(v21, @"MetadataKeyValue");
  if (FigMetadataCreateIdentifierForKeyAndOSTypeKeySpace(a1, v30, KeyNamespaceUInt32, &cf))
  {
    FigMetadataFormatDescriptionCreateWithKeysAndDependencies_cold_3(keys);
    goto LABEL_148;
  }

  v31 = v102;
  if (!v102)
  {
    v31 = CFArrayCreateMutable(a1, capacity, MEMORY[0x1E695E9C0]);
    if (!v31)
    {
      FigMetadataFormatDescriptionCreateWithKeysAndDependencies_cold_10(keys);
      DynamicBaseDataType = 0;
      v53 = 0;
      v70 = 0;
      v102 = 0;
      goto LABEL_149;
    }
  }

  v113.length = CFArrayGetCount(v31);
  v102 = v31;
  v113.location = 0;
  if (!CFArrayContainsValue(v31, v113, cf))
  {
    CFArrayAppendValue(v31, cf);
  }

  v32 = CFDictionaryGetValue(v21, @"MetadataKeyDataType");
  v33 = CFDictionaryGetValue(v21, @"MetadataKeyDataTypeNameSpace");
  v99 = -1;
  if (!v32 || (v34 = v33) == 0)
  {
LABEL_52:
    v38 = CFRetain(@"com.apple.metadata.datatype.raw-data");
LABEL_53:
    DynamicBaseDataType = v38;
    goto LABEL_54;
  }

  TypeID = CFDataGetTypeID();
  if (TypeID != CFGetTypeID(v32))
  {
    FigMetadataFormatDescriptionCreateWithKeysAndDependencies_cold_4(keys);
LABEL_148:
    DynamicBaseDataType = 0;
    v53 = 0;
    v70 = 0;
LABEL_149:
    v17 = 0;
    goto LABEL_150;
  }

  v36 = CFNumberGetTypeID();
  if (v36 != CFGetTypeID(v34))
  {
    FigMetadataFormatDescriptionCreateWithKeysAndDependencies_cold_5(keys);
    goto LABEL_148;
  }

  CFNumberGetValue(v34, kCFNumberSInt32Type, &valuePtr);
  if (valuePtr == 1)
  {
    DynamicBaseDataType = CFStringCreateFromExternalRepresentation(alloc, v32, 0x600u);
    v99 = -1;
    if (DynamicBaseDataType)
    {
      goto LABEL_54;
    }

    goto LABEL_52;
  }

  if (valuePtr || CFDataGetLength(v32) != 4)
  {
    v99 = -1;
    goto LABEL_52;
  }

  v99 = bswap32(*CFDataGetBytePtr(v32));
  v37 = CFDictionaryGetValue(sWellKnownTypeToCanonicalMap, v99);
  if (v37)
  {
    v38 = CFRetain(v37);
    if (v38)
    {
      goto LABEL_53;
    }
  }

  DynamicBaseDataType = FigMetadataCreateDynamicBaseDataType(alloc, v99);
  if (!DynamicBaseDataType)
  {
    goto LABEL_52;
  }

LABEL_54:
  v39 = CFDictionaryGetValue(v21, @"MetadataKeyConformingDataTypes");
  if (!v39)
  {
    v17 = 0;
LABEL_82:
    a1 = alloc;
    v58 = v99;
LABEL_83:
    if (v58 == -1)
    {
      if (!v18)
      {
        v18 = CFArrayCreateMutable(a1, capacity, 0);
        if (!v18)
        {
          FigMetadataFormatDescriptionCreateWithKeysAndDependencies_cold_9(keys);
          goto LABEL_165;
        }
      }

      CFArrayAppendValue(v18, HIDWORD(valuePtr));
      v58 = 0;
      if (v19)
      {
        goto LABEL_90;
      }
    }

    else if (v19)
    {
LABEL_90:
      CFDictionaryAddValue(v19, HIDWORD(valuePtr), v58);
      v60 = CFDictionaryGetValue(v21, @"MetadataKeyLanguageTag");
      if (cf)
      {
        *keys = xmmword_1E74A0E48;
        v112[0] = @"MetadataExtendedLanguageTag";
        values = cf;
        v109 = DynamicBaseDataType;
        v110 = v60;
        if (v60)
        {
          v61 = 3;
        }

        else
        {
          v61 = 2;
        }

        v62 = CFDictionaryCreate(a1, keys, &values, v61, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (!v62)
        {
          v86 = 596;
          goto LABEL_162;
        }

        v63 = v62;
        v64 = v98;
        if (!v98)
        {
          v64 = CFDictionaryCreateMutable(a1, capacity, 0, MEMORY[0x1E695E9E8]);
          if (!v64)
          {
            v98 = 0;
            v86 = 599;
LABEL_162:
            emitter = fig_log_get_emitter("com.apple.coremedia", "");
            v68 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE59uLL, "<<< MetadataFormatDescription >>>", v86, v6, v88, v89);
LABEL_108:
            v69 = v68;
            v53 = 0;
            v70 = 0;
            goto LABEL_116;
          }
        }

        v98 = v64;
        CFDictionaryAddValue(v64, HIDWORD(valuePtr), v63);
        CFRelease(v63);
      }

      goto LABEL_49;
    }

    v19 = CFDictionaryCreateMutable(a1, capacity, 0, 0);
    if (!v19)
    {
      FigMetadataFormatDescriptionCreateWithKeysAndDependencies_cold_8(keys);
LABEL_165:
      v53 = 0;
      v70 = 0;
      goto LABEL_150;
    }

    goto LABEL_90;
  }

  v40 = v39;
  v95 = v19;
  Count = CFArrayGetCount(v39);
  if (Count < 1)
  {
    v17 = 0;
    goto LABEL_82;
  }

  v42 = Count;
  v94 = v18;
  v17 = 0;
  v43 = 0;
  while (2)
  {
    v44 = CFArrayGetValueAtIndex(v40, v43);
    if (!v44)
    {
      goto LABEL_75;
    }

    v45 = v44;
    v46 = CFDictionaryGetTypeID();
    if (v46 != CFGetTypeID(v45))
    {
      goto LABEL_75;
    }

    DatatypeNamespaceUInt32 = FigMetadataKeyGetDatatypeNamespaceUInt32(v45);
    LODWORD(valuePtr) = DatatypeNamespaceUInt32;
    if (DatatypeNamespaceUInt32 == 1)
    {
      v54 = CFDictionaryGetValue(v45, @"MetadataKeyDataType");
      if (!v54)
      {
        goto LABEL_75;
      }

      v55 = v54;
      v56 = CFDataGetTypeID();
      if (v56 != CFGetTypeID(v55))
      {
        goto LABEL_75;
      }

      v57 = CFStringCreateFromExternalRepresentation(alloc, v55, 0x600u);
      goto LABEL_71;
    }

    if (DatatypeNamespaceUInt32)
    {
      goto LABEL_75;
    }

    v48 = CFDictionaryGetValue(v45, @"MetadataKeyDataType");
    if (!v48)
    {
      goto LABEL_75;
    }

    v49 = v48;
    v50 = CFDataGetTypeID();
    if (v50 != CFGetTypeID(v49) || CFDataGetLength(v49) != 4)
    {
      goto LABEL_75;
    }

    v99 = bswap32(*CFDataGetBytePtr(v49));
    v51 = CFDictionaryGetValue(sWellKnownTypeToCanonicalMap, v99);
    if (!v51 || (v52 = CFRetain(v51)) == 0)
    {
      v57 = FigMetadataCreateDynamicBaseDataType(alloc, v99);
LABEL_71:
      v53 = v57;
      if (v57)
      {
        goto LABEL_72;
      }

      goto LABEL_75;
    }

    v53 = v52;
LABEL_72:
    if (!v17)
    {
      v17 = CFArrayCreateMutable(allocator, v42, MEMORY[0x1E695E9C0]);
      if (!v17)
      {
        FigMetadataFormatDescriptionCreateWithKeysAndDependencies_cold_6(keys);
        v70 = 0;
        v69 = LODWORD(keys[0]);
        v18 = v94;
        v19 = v95;
        goto LABEL_116;
      }
    }

    CFArrayAppendValue(v17, v53);
    CFRelease(v53);
LABEL_75:
    if (v42 != ++v43)
    {
      continue;
    }

    break;
  }

  v58 = v99;
  if (!v17)
  {
    v18 = v94;
    v19 = v95;
    a1 = alloc;
    goto LABEL_83;
  }

  v18 = v94;
  v19 = v95;
  v59 = v96;
  a1 = alloc;
  if (v96 || (v59 = CFDictionaryCreateMutable(alloc, capacity, 0, MEMORY[0x1E695E9E8])) != 0)
  {
    v96 = v59;
    CFDictionaryAddValue(v59, HIDWORD(valuePtr), v17);
    goto LABEL_83;
  }

  FigMetadataFormatDescriptionCreateWithKeysAndDependencies_cold_7(keys);
  v53 = 0;
  v70 = 0;
  v96 = 0;
LABEL_150:
  v69 = LODWORD(keys[0]);
LABEL_116:
  if (v21)
  {
    CFRelease(v21);
  }

LABEL_118:
  if (cf)
  {
    CFRelease(cf);
  }

  if (DynamicBaseDataType)
  {
    CFRelease(DynamicBaseDataType);
  }

  if (v53)
  {
    CFRelease(v53);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (theDict)
  {
    CFRelease(theDict);
  }

  if (v70)
  {
    CFRelease(v70);
  }

  if (v102)
  {
    CFRelease(v102);
  }

  if (v100)
  {
    CFRelease(v100);
  }

  if (v98)
  {
    CFRelease(v98);
  }

  if (v96)
  {
    CFRelease(v96);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  return v69;
}

OSStatus CMMetadataFormatDescriptionCreateWithKeys(CFAllocatorRef allocator, CMMetadataFormatType metadataType, CFArrayRef keys, CMMetadataFormatDescriptionRef *formatDescriptionOut)
{
  if (metadataType != 1835360888 && keys == 0)
  {
    return CMFormatDescriptionCreate(allocator, 0x6D657461u, metadataType, 0, formatDescriptionOut);
  }

  else
  {
    return FigMetadataFormatDescriptionCreateWithKeysAndDependencies(allocator, metadataType, keys, 0, 0, formatDescriptionOut);
  }
}

size_t FigMetadataFormatDescriptionCreateWithExtensions(const __CFAllocator *a1, FourCharCode a2, CFTypeRef cf, uint64_t *a4)
{
  if (!a4)
  {
    FigMetadataFormatDescriptionCreateWithExtensions_cold_6(&v20);
    return v20;
  }

  *a4 = 0;
  if (!a2)
  {
    FigMetadataFormatDescriptionCreateWithExtensions_cold_5(&v20);
    return v20;
  }

  if (a2 == 1835360888 && cf)
  {
    v8 = CFGetTypeID(cf);
    if (v8 == CFDictionaryGetTypeID())
    {
      Value = CFDictionaryGetValue(cf, @"MetadataKeyTable");
      if (Value)
      {
        v10 = Value;
        v11 = CFGetTypeID(Value);
        if (v11 == CFDictionaryGetTypeID())
        {
          Count = CFDictionaryGetCount(v10);
          Mutable = CFArrayCreateMutable(a1, Count, MEMORY[0x1E695E9C0]);
          if (Mutable)
          {
            v14 = Mutable;
            CFDictionaryApplyFunction(v10, appendValuesToArray_dictionaryCallback, Mutable);
            v15 = CFDictionaryGetValue(cf, @"MetadataPrimaryLocalIDs");
            v16 = CFDictionaryGetValue(cf, @"MetadataLocalIDDependencyLists");
            v17 = FigMetadataFormatDescriptionCreateWithKeysAndDependencies(a1, 1835360888, v14, v15, v16, a4);
            CFRelease(v14);
            return v17;
          }

          FigMetadataFormatDescriptionCreateWithExtensions_cold_3(&v20);
        }

        else
        {
          FigMetadataFormatDescriptionCreateWithExtensions_cold_2(&v20);
        }
      }

      else
      {
        FigMetadataFormatDescriptionCreateWithExtensions_cold_4(&v20);
      }
    }

    else
    {
      FigMetadataFormatDescriptionCreateWithExtensions_cold_1(&v20);
    }

    return v20;
  }

  FigThreadRunOnce(&sFigMetadataFormatDescriptionRegisterOnce, FigMetadataFormatDescriptionRegisterOnce);
  v19 = *MEMORY[0x1E695E480];

  return CMFormatDescriptionCreate(v19, 0x6D657461u, a2, cf, a4);
}

OSStatus CMMetadataFormatDescriptionCreateWithMetadataSpecifications(CFAllocatorRef allocator, CMMetadataFormatType metadataType, CFArrayRef metadataSpecifications, CMMetadataFormatDescriptionRef *formatDescriptionOut)
{
  if (metadataSpecifications)
  {
    if (CFArrayGetCount(metadataSpecifications))
    {
      Count = CFArrayGetCount(metadataSpecifications);
      Mutable = CFArrayCreateMutable(allocator, Count, MEMORY[0x1E695E9C0]);
      if (Mutable)
      {
        v10 = Mutable;
        v11 = metadataFormatDescriptionCreateWithMetadataSpecifications(allocator, metadataType, 1u, metadataSpecifications, Mutable, 0, 0, formatDescriptionOut);
        CFRelease(v10);
        return v11;
      }

      else
      {
        CMMetadataFormatDescriptionCreateWithMetadataSpecifications_cold_1(&v13);
        return v13;
      }
    }

    else
    {
      CMMetadataFormatDescriptionCreateWithMetadataSpecifications_cold_2(&v14);
      return v14;
    }
  }

  else
  {
    CMMetadataFormatDescriptionCreateWithMetadataSpecifications_cold_3(&v15);
    return v15;
  }
}

size_t metadataFormatDescriptionCreateWithMetadataSpecifications(const __CFAllocator *a1, int a2, unsigned int a3, const __CFArray *a4, CFArrayRef theArray, const __CFArray *a6, const __CFDictionary *a7, uint64_t *a8)
{
  Count = CFArrayGetCount(theArray);
  v44[0] = 1;
  if (!a8)
  {
    metadataFormatDescriptionCreateWithMetadataSpecifications_cold_2(&context);
    return context;
  }

  if (a2 != 1835360888)
  {
    metadataFormatDescriptionCreateWithMetadataSpecifications_cold_1(&context);
    return context;
  }

  v16 = Count;
  v36 = a6;
  v17 = a7;
  capacity = 0;
  v41 = 0u;
  v42 = 0u;
  context = 0u;
  LODWORD(valuePtr[0]) = 0;
  v18 = *MEMORY[0x1E695E480];
  v19 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, valuePtr);
  v20 = CFNumberCreate(v18, kCFNumberSInt32Type, v44);
  v21 = CFArrayGetCount(a4);
  LODWORD(context) = 0;
  *(&context + 1) = a1;
  *&v41 = a3 | 0x6D65627800000000;
  *(&v41 + 1) = v19;
  *&v42 = v20;
  *(&v42 + 1) = theArray;
  LODWORD(capacity) = 0;
  v22 = v21;
  v45.location = 0;
  v45.length = v21;
  CFArrayApplyFunction(a4, v45, metadataFormatDescriptionCreateWithMetadataSpecifications1_arrayCallback, &context);
  v23 = context;
  if (context)
  {
    v28 = 0;
    MutableCopy = 0;
    goto LABEL_35;
  }

  if (capacity)
  {
    cf = 0;
    valuePtr[0] = 0;
    if (v36 && v17)
    {
      v24 = CFArrayGetCount(v36);
      MutableCopy = CFArrayCreateMutableCopy(a1, v24 + v22, v36);
      v26 = CFDictionaryGetCount(v17);
      Mutable = CFDictionaryCreateMutableCopy(a1, v26 + capacity, v17);
    }

    else
    {
      MutableCopy = CFArrayCreateMutable(a1, v22 + v16, MEMORY[0x1E695E9C0]);
      if (v16 >= 1)
      {
        for (i = 0; i != v16; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
          Value = CFDictionaryGetValue(ValueAtIndex, @"MetadataKeyLocalID");
          if (Value)
          {
            CFArrayAppendValue(MutableCopy, Value);
          }
        }
      }

      Mutable = CFDictionaryCreateMutable(a1, capacity, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    }

    v28 = Mutable;
    v34 = FigMetadataFormatDescriptionCreateWithKeysAndDependencies(a1, 1835360888, theArray, 0, 0, &cf);
    if (v34)
    {
      v23 = v34;
    }

    else
    {
      LODWORD(valuePtr[0]) = 0;
      valuePtr[1] = a1;
      valuePtr[2] = cf;
      valuePtr[3] = MutableCopy;
      valuePtr[4] = v28;
      valuePtr[5] = 0;
      v46.location = 0;
      v46.length = v22;
      CFArrayApplyFunction(a4, v46, metadataFormatDescriptionCreateWithMetadataSpecifications2_arrayCallback, valuePtr);
      CFRelease(cf);
      v23 = LODWORD(valuePtr[0]);
      if (!LODWORD(valuePtr[0]))
      {
LABEL_19:
        v29 = a8;
        v30 = v20;
        goto LABEL_20;
      }
    }

LABEL_35:
    v30 = v20;
    if (!v19)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v28 = 0;
  if (!v36)
  {
    MutableCopy = 0;
    goto LABEL_19;
  }

  MutableCopy = 0;
  v29 = a8;
  v30 = v20;
  if (v17)
  {
    MutableCopy = CFRetain(v36);
    v28 = CFRetain(v17);
  }

LABEL_20:
  v23 = FigMetadataFormatDescriptionCreateWithKeysAndDependencies(a1, 1835360888, theArray, MutableCopy, v28, v29);
  if (v19)
  {
LABEL_21:
    CFRelease(v19);
  }

LABEL_22:
  if (v30)
  {
    CFRelease(v30);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (v28)
  {
    CFRelease(v28);
  }

  return v23;
}

const __CFDictionary *FigMetadataFormatDescriptionGetLocalIDForMetadataIdentifyingFactors(const opaqueCMFormatDescription *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  DerivedStorage = FigDerivedFormatDescriptionGetDerivedStorage(a1, a2, a3, a4, a5, a6, a7, a8);
  if (!a1)
  {
    FigMetadataFormatDescriptionGetLocalIDForMetadataIdentifyingFactors_cold_5();
    return 0;
  }

  v13 = DerivedStorage;
  if (CMFormatDescriptionGetMediaType(a1) != 1835365473)
  {
    FigMetadataFormatDescriptionGetLocalIDForMetadataIdentifyingFactors_cold_1();
    return 0;
  }

  if (CMFormatDescriptionGetMediaSubType(a1) != 1835360888)
  {
    FigMetadataFormatDescriptionGetLocalIDForMetadataIdentifyingFactors_cold_2();
    return 0;
  }

  if (!a2)
  {
    FigMetadataFormatDescriptionGetLocalIDForMetadataIdentifyingFactors_cold_4();
    return 0;
  }

  if (!a3)
  {
    FigMetadataFormatDescriptionGetLocalIDForMetadataIdentifyingFactors_cold_3();
    return 0;
  }

  v16 = 0;
  result = *(v13 + 16);
  if (result)
  {
    v15[0] = a2;
    v15[1] = a3;
    v15[2] = a4;
    HIDWORD(v16) = 0;
    LOBYTE(v16) = 0;
    CFDictionaryApplyFunction(result, figMetadataFormatDescriptionGetLocalIDForMetadataIdentifyingFactors_dictionaryCallback, v15);
    return HIDWORD(v16);
  }

  return result;
}

uint64_t figMetadataFormatDescriptionGetLocalIDForMetadataIdentifyingFactors_dictionaryCallback(uint64_t result, CFDictionaryRef theDict, uint64_t a3)
{
  if (!*(a3 + 28))
  {
    v5 = result;
    Value = CFDictionaryGetValue(theDict, @"MetadataIdentifier");
    result = FigCFEqual(Value, *a3);
    if (result)
    {
      if (*(a3 + 24) || (v7 = CFDictionaryGetValue(theDict, @"MetadataDataType"), result = FigCFEqual(v7, *(a3 + 8)), result) && (v8 = CFDictionaryGetValue(theDict, @"MetadataExtendedLanguageTag"), result = FigCFEqual(v8, *(a3 + 16)), result))
      {
        *(a3 + 28) = v5;
      }
    }
  }

  return result;
}

const __CFDictionary *FigMetadataFormatDescriptionGetFirstLocalIDForIdentifier(const opaqueCMFormatDescription *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  DerivedStorage = FigDerivedFormatDescriptionGetDerivedStorage(a1, a2, a3, a4, a5, a6, a7, a8);
  if (!a1)
  {
    FigMetadataFormatDescriptionGetFirstLocalIDForIdentifier_cold_4();
    return 0;
  }

  v11 = DerivedStorage;
  if (CMFormatDescriptionGetMediaType(a1) != 1835365473)
  {
    FigMetadataFormatDescriptionGetFirstLocalIDForIdentifier_cold_1();
    return 0;
  }

  if (CMFormatDescriptionGetMediaSubType(a1) != 1835360888)
  {
    FigMetadataFormatDescriptionGetFirstLocalIDForIdentifier_cold_2();
    return 0;
  }

  if (!a2)
  {
    FigMetadataFormatDescriptionGetFirstLocalIDForIdentifier_cold_3();
    return 0;
  }

  v14 = 0;
  result = *(v11 + 16);
  if (result)
  {
    HIDWORD(v14) = 0;
    v13[1] = 0;
    v13[2] = 0;
    v13[0] = a2;
    LOBYTE(v14) = 1;
    CFDictionaryApplyFunction(result, figMetadataFormatDescriptionGetLocalIDForMetadataIdentifyingFactors_dictionaryCallback, v13);
    return HIDWORD(v14);
  }

  return result;
}

const void *getIdentifyingFactorForLocalID(const opaqueCMFormatDescription *a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  v9 = a2;
  DerivedStorage = FigDerivedFormatDescriptionGetDerivedStorage(a1, a2, a3, a4, a5, a6, a7, a8);
  if (!a1)
  {
    getIdentifyingFactorForLocalID_cold_4();
    return 0;
  }

  v12 = DerivedStorage;
  if (CMFormatDescriptionGetMediaType(a1) != 1835365473)
  {
    getIdentifyingFactorForLocalID_cold_1();
    return 0;
  }

  if (CMFormatDescriptionGetMediaSubType(a1) != 1835360888)
  {
    getIdentifyingFactorForLocalID_cold_2();
    return 0;
  }

  if (!v9)
  {
    getIdentifyingFactorForLocalID_cold_3();
    return 0;
  }

  v13 = *(v12 + 16);
  if (!v13)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(v13, v9);
  if (!Value)
  {
    return 0;
  }

  return CFDictionaryGetValue(Value, a3);
}

const void *FigMetadataFormatDescriptionGetConformingDataTypesForLocalID(const opaqueCMFormatDescription *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  v8 = a2;
  DerivedStorage = FigDerivedFormatDescriptionGetDerivedStorage(a1, a2, a3, a4, a5, a6, a7, a8);
  if (!a1)
  {
    FigMetadataFormatDescriptionGetConformingDataTypesForLocalID_cold_4();
    return 0;
  }

  v11 = DerivedStorage;
  if (CMFormatDescriptionGetMediaType(a1) != 1835365473)
  {
    FigMetadataFormatDescriptionGetConformingDataTypesForLocalID_cold_1();
    return 0;
  }

  if (CMFormatDescriptionGetMediaSubType(a1) != 1835360888)
  {
    FigMetadataFormatDescriptionGetConformingDataTypesForLocalID_cold_2();
    return 0;
  }

  if (!v8)
  {
    FigMetadataFormatDescriptionGetConformingDataTypesForLocalID_cold_3();
    return 0;
  }

  v12 = *(v11 + 24);
  if (!v12)
  {
    return 0;
  }

  return CFDictionaryGetValue(v12, v8);
}

const __CFDictionary *FigMetadataFormatDescriptionGetQuickTimeWellKnownTypeForLocalID(const opaqueCMFormatDescription *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  v8 = a2;
  DerivedStorage = FigDerivedFormatDescriptionGetDerivedStorage(a1, a2, a3, a4, a5, a6, a7, a8);
  if (!a1)
  {
    FigMetadataFormatDescriptionGetQuickTimeWellKnownTypeForLocalID_cold_4();
    return 0;
  }

  v11 = DerivedStorage;
  if (CMFormatDescriptionGetMediaType(a1) != 1835365473)
  {
    FigMetadataFormatDescriptionGetQuickTimeWellKnownTypeForLocalID_cold_1();
    return 0;
  }

  if (CMFormatDescriptionGetMediaSubType(a1) != 1835360888)
  {
    FigMetadataFormatDescriptionGetQuickTimeWellKnownTypeForLocalID_cold_2();
    return 0;
  }

  if (!v8)
  {
    FigMetadataFormatDescriptionGetQuickTimeWellKnownTypeForLocalID_cold_3();
    return 0;
  }

  result = *(v11 + 32);
  if (result)
  {
    result = CFDictionaryGetCountOfKey(result, v8);
    if (result)
    {
      return CFDictionaryGetValue(*(v11 + 32), v8);
    }
  }

  return result;
}

const void *FigMetadataFormatDescriptionGetSetupDataForLocalID(const opaqueCMFormatDescription *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  v8 = a2;
  DerivedStorage = FigDerivedFormatDescriptionGetDerivedStorage(a1, a2, a3, a4, a5, a6, a7, a8);
  if (!a1)
  {
    FigMetadataFormatDescriptionGetSetupDataForLocalID_cold_4();
    return 0;
  }

  v11 = DerivedStorage;
  if (CMFormatDescriptionGetMediaType(a1) != 1835365473)
  {
    FigMetadataFormatDescriptionGetSetupDataForLocalID_cold_1();
    return 0;
  }

  if (CMFormatDescriptionGetMediaSubType(a1) != 1835360888)
  {
    FigMetadataFormatDescriptionGetSetupDataForLocalID_cold_2();
    return 0;
  }

  if (!v8)
  {
    FigMetadataFormatDescriptionGetSetupDataForLocalID_cold_3();
    return 0;
  }

  v12 = *(v11 + 8);
  if (!v12)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(v12, v8);
  if (!Value)
  {
    return 0;
  }

  return CFDictionaryGetValue(Value, @"MetadataKeySetupData");
}

uint64_t FigMetadataFormatDescriptionQuickTimeWellKnownTypeIsRecognized(const opaqueCMFormatDescription *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  v8 = a2;
  QuickTimeWellKnownTypeForLocalID = FigMetadataFormatDescriptionGetQuickTimeWellKnownTypeForLocalID(a1, a2, a3, a4, a5, a6, a7, a8);
  if (!QuickTimeWellKnownTypeForLocalID)
  {
    DerivedStorage = FigDerivedFormatDescriptionGetDerivedStorage(a1, v11, v12, v13, v14, v15, v16, v17);
    if (a1)
    {
      v22 = DerivedStorage;
      if (CMFormatDescriptionGetMediaType(a1) == 1835365473)
      {
        if (CMFormatDescriptionGetMediaSubType(a1) == 1835360888)
        {
          if (v8)
          {
            v23 = *(v22 + 40);
            if (!v23)
            {
              return 1;
            }

            v25.length = CFArrayGetCount(*(v22 + 40));
            v25.location = 0;
            return CFArrayContainsValue(v23, v25, v8) == 0;
          }

          FigMetadataFormatDescriptionQuickTimeWellKnownTypeIsRecognized_cold_3();
        }

        else
        {
          FigMetadataFormatDescriptionQuickTimeWellKnownTypeIsRecognized_cold_2();
        }
      }

      else
      {
        FigMetadataFormatDescriptionQuickTimeWellKnownTypeIsRecognized_cold_1();
      }
    }

    else
    {
      FigMetadataFormatDescriptionQuickTimeWellKnownTypeIsRecognized_cold_4();
    }

    return 0;
  }

  v18 = QuickTimeWellKnownTypeForLocalID;
  FigThreadRunOnce(&sFigMetadataFormatDescriptionCreateCanonicalToWellKnownTypeAssociationsOnce, FigMetadataFormatDescriptionCreateCanonicalToWellKnownTypeAssociationsOnce);
  v19 = sWellKnownTypeToCanonicalMap;

  return CFDictionaryContainsKey(v19, v18);
}

OSStatus CMMetadataFormatDescriptionCreateWithMetadataFormatDescriptionAndMetadataSpecifications(CFAllocatorRef allocator, CMMetadataFormatDescriptionRef sourceDescription, CFArrayRef metadataSpecifications, CMMetadataFormatDescriptionRef *formatDescriptionOut)
{
  if (!metadataSpecifications)
  {
    CMMetadataFormatDescriptionCreateWithMetadataFormatDescriptionAndMetadataSpecifications_cold_6(context);
    return context[0];
  }

  if (!sourceDescription)
  {
    CMMetadataFormatDescriptionCreateWithMetadataFormatDescriptionAndMetadataSpecifications_cold_5(context);
    return context[0];
  }

  if (CMFormatDescriptionGetMediaSubType(sourceDescription) != 1835360888)
  {
    CMMetadataFormatDescriptionCreateWithMetadataFormatDescriptionAndMetadataSpecifications_cold_1(context);
    return context[0];
  }

  Extensions = CMFormatDescriptionGetExtensions(sourceDescription);
  if (!Extensions || (v9 = Extensions, Value = CFDictionaryGetValue(Extensions, @"MetadataKeyTable"), v11 = CFDictionaryGetValue(v9, @"MetadataPrimaryLocalIDs"), v12 = CFDictionaryGetValue(v9, @"MetadataLocalIDDependencyLists"), !Value))
  {
    CMMetadataFormatDescriptionCreateWithMetadataFormatDescriptionAndMetadataSpecifications_cold_4(context);
    return context[0];
  }

  v13 = v12;
  Count = CFArrayGetCount(metadataSpecifications);
  Mutable = CFArrayCreateMutable(allocator, Count, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    CMMetadataFormatDescriptionCreateWithMetadataFormatDescriptionAndMetadataSpecifications_cold_3(context);
    return context[0];
  }

  v16 = Mutable;
  v25 = 0;
  context[0] = sourceDescription;
  context[1] = Mutable;
  v28.length = CFArrayGetCount(metadataSpecifications);
  v28.location = 0;
  CFArrayApplyFunction(metadataSpecifications, v28, figMetadataFormatDescriptionCreateWithMetadataFormatDescriptionAndMetadataSpecifications_arrayCallback, context);
  if (!CFArrayGetCount(v16))
  {
    v21 = 0;
    *formatDescriptionOut = CFRetain(sourceDescription);
LABEL_11:
    v22 = v16;
    goto LABEL_12;
  }

  v17 = CFArrayGetCount(metadataSpecifications);
  v18 = CFDictionaryGetCount(Value);
  v19 = CFArrayCreateMutable(allocator, v18 + v17, MEMORY[0x1E695E9C0]);
  if (!v19)
  {
    CMMetadataFormatDescriptionCreateWithMetadataFormatDescriptionAndMetadataSpecifications_cold_2(&v27);
    v21 = v27;
    goto LABEL_11;
  }

  v20 = v19;
  v24 = v19;
  LODWORD(v25) = 0;
  CFDictionaryApplyFunction(Value, figMetadataFormatDescriptionCreateWithMetadataFormatDescriptionAndMetadataSpecifications_dictionaryCallback, &v24);
  v21 = metadataFormatDescriptionCreateWithMetadataSpecifications(allocator, 1835360888, v25 + 1, v16, v20, v11, v13, formatDescriptionOut);
  CFRelease(v16);
  v22 = v20;
LABEL_12:
  CFRelease(v22);
  return v21;
}

void figMetadataFormatDescriptionCreateWithMetadataFormatDescriptionAndMetadataSpecifications_arrayCallback(const __CFDictionary *a1, const opaqueCMFormatDescription **a2)
{
  v4 = *a2;
  Value = CFDictionaryGetValue(a1, @"MetadataIdentifier");
  v6 = CFDictionaryGetValue(a1, @"MetadataDataType");
  v7 = CFDictionaryGetValue(a1, @"MetadataExtendedLanguageTag");
  if (!FigMetadataFormatDescriptionGetLocalIDForMetadataIdentifyingFactors(v4, Value, v6, v7, v8, v9, v10, v11))
  {
    v12 = a2[1];

    CFArrayAppendValue(v12, a1);
  }
}

void figMetadataFormatDescriptionCreateWithMetadataFormatDescriptionAndMetadataSpecifications_dictionaryCallback(const __CFString *a1, const void *a2, uint64_t a3)
{
  valuePtr = -1;
  TypeID = CFStringGetTypeID();
  if (TypeID == CFGetTypeID(a1))
  {
    IntValue = CFStringGetIntValue(a1);
LABEL_5:
    valuePtr = IntValue;
    goto LABEL_7;
  }

  v8 = CFNumberGetTypeID();
  if (v8 == CFGetTypeID(a1))
  {
    IntValue = CFNumberGetValue(a1, kCFNumberSInt32Type, &valuePtr);
    goto LABEL_5;
  }

  IntValue = -1;
LABEL_7:
  if (*(a3 + 8) < IntValue)
  {
    *(a3 + 8) = IntValue;
  }

  if (a2)
  {
    CFArrayAppendValue(*a3, a2);
  }
}

OSStatus CMMetadataFormatDescriptionCreateByMergingMetadataFormatDescriptions(CFAllocatorRef allocator, CMMetadataFormatDescriptionRef sourceDescription, CMMetadataFormatDescriptionRef otherSourceDescription, CMMetadataFormatDescriptionRef *formatDescriptionOut)
{
  if (!sourceDescription)
  {
    CMMetadataFormatDescriptionCreateByMergingMetadataFormatDescriptions_cold_9(&v51);
    return v51;
  }

  MediaSubType = CMFormatDescriptionGetMediaSubType(sourceDescription);
  if (!otherSourceDescription)
  {
    CMMetadataFormatDescriptionCreateByMergingMetadataFormatDescriptions_cold_8(&v51);
    return v51;
  }

  v9 = MediaSubType;
  if (MediaSubType != CMFormatDescriptionGetMediaSubType(otherSourceDescription))
  {
    CMMetadataFormatDescriptionCreateByMergingMetadataFormatDescriptions_cold_1(&v51);
    return v51;
  }

  if (v9 == 1768126752 || v9 == 1768174368 || CMFormatDescriptionEqual(sourceDescription, otherSourceDescription))
  {
    v10 = 0;
    *formatDescriptionOut = CFRetain(sourceDescription);
    return v10;
  }

  if (v9 != 1835360888)
  {
    CMMetadataFormatDescriptionCreateByMergingMetadataFormatDescriptions_cold_2(&v51);
    return v51;
  }

  Extensions = CMFormatDescriptionGetExtensions(sourceDescription);
  if (!Extensions || (v13 = Extensions, Value = CFDictionaryGetValue(Extensions, @"MetadataKeyTable"), v15 = CFDictionaryGetValue(v13, @"MetadataPrimaryLocalIDs"), v45 = CFDictionaryGetValue(v13, @"MetadataLocalIDDependencyLists"), !Value))
  {
    CMMetadataFormatDescriptionCreateByMergingMetadataFormatDescriptions_cold_7(&v51);
    return v51;
  }

  v16 = CMFormatDescriptionGetExtensions(otherSourceDescription);
  if (!v16 || (v17 = v16, v18 = CFDictionaryGetValue(v16, @"MetadataKeyTable"), v19 = CFDictionaryGetValue(v17, @"MetadataPrimaryLocalIDs"), theDict = CFDictionaryGetValue(v17, @"MetadataLocalIDDependencyLists"), !v18))
  {
    CMMetadataFormatDescriptionCreateByMergingMetadataFormatDescriptions_cold_6(&v51);
    return v51;
  }

  Count = CFDictionaryGetCount(v18);
  v21 = CFDictionaryGetCount(Value);
  Mutable = CFArrayCreateMutable(allocator, v21 + Count, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    CMMetadataFormatDescriptionCreateByMergingMetadataFormatDescriptions_cold_5(&v51);
    return v51;
  }

  v23 = Mutable;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0;
  v49 = 0;
  v50 = 0;
  context = Mutable;
  v56 = 0;
  CFDictionaryApplyFunction(Value, figMetadataFormatDescriptionCreateByMergingMetadataFormatDescriptions_dictionaryCallback1, &context);
  v47 = CFDictionaryCreateMutable(allocator, Count, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v47)
  {
    v24 = CFDictionaryCreateMutable(allocator, Count, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (v24)
    {
      v25 = v24;
      *&v51 = allocator;
      *(&v51 + 1) = v23;
      *&v52 = sourceDescription;
      *(&v52 + 1) = otherSourceDescription;
      LODWORD(v54) = v56 + 1;
      *&v53 = v47;
      *(&v53 + 1) = v24;
      CFDictionaryApplyFunction(v18, figMetadataFormatDescriptionCreateByMergingMetadataFormatDescriptions_dictionaryCallback2, &v51);
      if (!v19 || !theDict)
      {
        v32 = 0;
        MutableCopy = 0;
        if (!v15)
        {
          v33 = v47;
          goto LABEL_37;
        }

        v33 = v47;
        if (!v45)
        {
LABEL_37:
          v10 = FigMetadataFormatDescriptionCreateWithKeysAndDependencies(allocator, 1835360888, v23, MutableCopy, v32, formatDescriptionOut);
          goto LABEL_38;
        }

        v34 = CFArrayGetCount(v15);
        v35 = CFDictionaryGetCount(v18);
        MutableCopy = CFArrayCreateMutableCopy(allocator, v35 + v34, v15);
        v32 = CFRetain(v45);
        v49 = MutableCopy;
        v50 = v25;
        v36 = figMetadataFormatDescriptionCreateByMergingMetadataFormatDescriptions_dictionaryCallback3;
        v37 = &v49;
        v38 = v18;
LABEL_36:
        CFDictionaryApplyFunction(v38, v36, v37);
        goto LABEL_37;
      }

      v26 = CFArrayGetCount(v19);
      v27 = CFDictionaryGetCount(theDict);
      if (v15 && v45)
      {
        v28 = CFArrayGetCount(v15);
        MutableCopy = CFArrayCreateMutableCopy(allocator, v28 + v26, v15);
        if (MutableCopy)
        {
          v30 = CFDictionaryGetCount(v45);
          v31 = CFDictionaryCreateMutableCopy(allocator, v30 + v27, v45);
          if (v31)
          {
            v32 = v31;
LABEL_28:
            if (v26 >= 1)
            {
              for (i = 0; i != v26; ++i)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(v19, i);
                v42 = CFDictionaryGetValue(v25, ValueAtIndex);
                if (v42)
                {
                  ValueAtIndex = v42;
                }

                v58.length = CFArrayGetCount(MutableCopy);
                v58.location = 0;
                if (!CFArrayContainsValue(MutableCopy, v58, ValueAtIndex))
                {
                  CFArrayAppendValue(MutableCopy, ValueAtIndex);
                }
              }
            }

            v48[0] = allocator;
            v48[1] = v32;
            v38 = theDict;
            v33 = v47;
            v48[2] = v47;
            v48[3] = v25;
            v36 = figMetadataFormatDescriptionCreateByMergingMetadataFormatDescriptions_dictionaryCallback4;
            v37 = v48;
            goto LABEL_36;
          }

          v44 = 1994;
        }

        else
        {
          v44 = 1992;
        }

        CMMetadataFormatDescriptionCreateByMergingMetadataFormatDescriptions_cold_3(v44, v48, v57);
        v32 = 0;
        v10 = v57[0];
        v33 = v47;
LABEL_38:
        CFRelease(v23);
        if (MutableCopy)
        {
          CFRelease(MutableCopy);
        }

        if (!v32)
        {
          goto LABEL_42;
        }

        goto LABEL_41;
      }

      v39 = CFDictionaryGetCount(Value);
      MutableCopy = CFArrayCreateMutable(allocator, v39 + v26, MEMORY[0x1E695E9C0]);
      v32 = CFDictionaryCreateMutable(allocator, v27, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v49 = MutableCopy;
      v50 = 0;
      CFDictionaryApplyFunction(Value, figMetadataFormatDescriptionCreateByMergingMetadataFormatDescriptions_dictionaryCallback3, &v49);
      goto LABEL_28;
    }

    v43 = 1971;
  }

  else
  {
    v43 = 1969;
  }

  CMMetadataFormatDescriptionCreateByMergingMetadataFormatDescriptions_cold_4(v43, v48);
  v25 = 0;
  v10 = v48[0];
  v32 = v23;
  v33 = v47;
LABEL_41:
  CFRelease(v32);
LABEL_42:
  if (v33)
  {
    CFRelease(v33);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  return v10;
}

void figMetadataFormatDescriptionCreateByMergingMetadataFormatDescriptions_dictionaryCallback1(const __CFString *a1, const void *a2, uint64_t a3)
{
  valuePtr = -1;
  TypeID = CFStringGetTypeID();
  if (TypeID == CFGetTypeID(a1))
  {
    IntValue = CFStringGetIntValue(a1);
LABEL_5:
    valuePtr = IntValue;
    goto LABEL_7;
  }

  v8 = CFNumberGetTypeID();
  if (v8 == CFGetTypeID(a1))
  {
    IntValue = CFNumberGetValue(a1, kCFNumberSInt32Type, &valuePtr);
    goto LABEL_5;
  }

  IntValue = -1;
LABEL_7:
  if (*(a3 + 8) < IntValue)
  {
    *(a3 + 8) = IntValue;
  }

  if (a2)
  {
    CFArrayAppendValue(*a3, a2);
  }
}

void figMetadataFormatDescriptionCreateByMergingMetadataFormatDescriptions_dictionaryCallback2(const __CFString *a1, const __CFDictionary *a2, uint64_t a3)
{
  HIDWORD(v43) = -1;
  TypeID = CFStringGetTypeID();
  if (TypeID == CFGetTypeID(a1))
  {
    IntValue = CFStringGetIntValue(a1);
LABEL_5:
    v14 = IntValue;
    HIDWORD(v43) = IntValue;
    goto LABEL_7;
  }

  v13 = CFNumberGetTypeID();
  if (v13 == CFGetTypeID(a1))
  {
    IntValue = CFNumberGetValue(a1, kCFNumberSInt32Type, &v43 + 4);
    goto LABEL_5;
  }

  v14 = 0xFFFFFFFFLL;
LABEL_7:
  v15 = *(a3 + 16);
  IdentifyingFactorForLocalID = getIdentifyingFactorForLocalID(*(a3 + 24), v14, @"MetadataIdentifier", v8, v9, v10, v11, v12);
  v22 = getIdentifyingFactorForLocalID(*(a3 + 24), HIDWORD(v43), @"MetadataDataType", v17, v18, v19, v20, v21);
  v28 = getIdentifyingFactorForLocalID(*(a3 + 24), HIDWORD(v43), @"MetadataExtendedLanguageTag", v23, v24, v25, v26, v27);
  LocalIDForMetadataIdentifyingFactors = FigMetadataFormatDescriptionGetLocalIDForMetadataIdentifyingFactors(v15, IdentifyingFactorForLocalID, v22, v28, v29, v30, v31, v32);
  v34 = LocalIDForMetadataIdentifyingFactors;
  if (LocalIDForMetadataIdentifyingFactors)
  {
    LODWORD(v43) = LocalIDForMetadataIdentifyingFactors;
    v35 = LocalIDForMetadataIdentifyingFactors;
    if (LocalIDForMetadataIdentifyingFactors == HIDWORD(v43))
    {
      return;
    }

LABEL_13:
    v37 = CFStringCreateWithFormat(*a3, 0, @"%d", v35, v43);
    v38 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &v43);
    CFDictionarySetValue(*(a3 + 32), a1, v37);
    v39 = *(a3 + 40);
    Value = CFDictionaryGetValue(a2, @"MetadataKeyLocalID");
    CFDictionarySetValue(v39, Value, v38);
    MutableCopy = 0;
    if (!v34)
    {
      v41 = *a3;
      Count = CFDictionaryGetCount(a2);
      MutableCopy = CFDictionaryCreateMutableCopy(v41, Count, a2);
      CFDictionarySetValue(MutableCopy, @"MetadataKeyLocalID", v38);
    }

    CFRelease(v37);
    CFRelease(v38);
    if (MutableCopy)
    {
      goto LABEL_16;
    }

    return;
  }

  v35 = *(a3 + 48);
  *(a3 + 48) = v35 + 1;
  LODWORD(v43) = v35;
  if (v35 != HIDWORD(v43))
  {
    goto LABEL_13;
  }

  MutableCopy = CFRetain(a2);
  if (MutableCopy)
  {
LABEL_16:
    CFArrayAppendValue(*(a3 + 8), MutableCopy);
    CFRelease(MutableCopy);
  }
}

void figMetadataFormatDescriptionCreateByMergingMetadataFormatDescriptions_dictionaryCallback3(int a1, CFDictionaryRef theDict, const __CFArray **a3)
{
  Value = CFDictionaryGetValue(theDict, @"MetadataKeyLocalID");
  v5 = a3[1];
  if (v5)
  {
    v5 = CFDictionaryGetValue(v5, Value);
  }

  if (v5)
  {
    Value = v5;
  }

  v6 = *a3;
  v9.length = CFArrayGetCount(*a3);
  v9.location = 0;
  if (!CFArrayContainsValue(v6, v9, Value))
  {
    v7 = *a3;

    CFArrayAppendValue(v7, Value);
  }
}

void figMetadataFormatDescriptionCreateByMergingMetadataFormatDescriptions_dictionaryCallback4(const void *a1, CFArrayRef theArray, CFAllocatorRef *a3)
{
  Count = CFArrayGetCount(theArray);
  Mutable = CFArrayCreateMutable(*a3, Count, MEMORY[0x1E695E9C0]);
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
      Value = CFDictionaryGetValue(a3[3], ValueAtIndex);
      if (Value)
      {
        v11 = Value;
        v12 = Mutable;
      }

      else
      {
        v12 = Mutable;
        v11 = ValueAtIndex;
      }

      CFArrayAppendValue(v12, v11);
    }
  }

  v13 = CFDictionaryGetValue(a3[2], a1);
  if (v13)
  {
    a1 = v13;
  }

  v14 = CFDictionaryGetValue(a3[1], a1);
  if (v14)
  {
    v15 = v14;
    v16 = CFArrayGetCount(v14);
    v17 = CFArrayGetCount(Mutable);
    MutableCopy = CFArrayCreateMutableCopy(*a3, v17 + v16, v15);
    if (v17 >= 1)
    {
      for (j = 0; j != v17; ++j)
      {
        v20 = CFArrayGetValueAtIndex(Mutable, j);
        v22.location = 0;
        v22.length = v16;
        if (!CFArrayContainsValue(v15, v22, v20))
        {
          CFArrayAppendValue(MutableCopy, v20);
        }
      }
    }

    CFDictionarySetValue(a3[1], a1, MutableCopy);
    CFRelease(MutableCopy);
  }

  else
  {
    CFDictionarySetValue(a3[1], a1, Mutable);
  }

  CFRelease(Mutable);
}

CFDictionaryRef CMMetadataFormatDescriptionGetKeyWithLocalID(CMMetadataFormatDescriptionRef desc, OSType localKeyID)
{
  if (!desc)
  {
    CMMetadataFormatDescriptionGetKeyWithLocalID_cold_3();
    return 0;
  }

  if (CMFormatDescriptionGetMediaType(desc) != 1835365473)
  {
    CMMetadataFormatDescriptionGetKeyWithLocalID_cold_1();
    return 0;
  }

  if (CMFormatDescriptionGetMediaSubType(desc) != 1835360888)
  {
    CMMetadataFormatDescriptionGetKeyWithLocalID_cold_2();
    return 0;
  }

  DerivedStorage = FigDerivedFormatDescriptionGetDerivedStorage(desc, v4, v5, v6, v7, v8, v9, v10);
  if (!DerivedStorage)
  {
    return 0;
  }

  v12 = *(DerivedStorage + 8);
  if (!v12)
  {
    return 0;
  }

  return CFDictionaryGetValue(v12, localKeyID);
}

CFArrayRef CMMetadataFormatDescriptionGetIdentifiers(CMMetadataFormatDescriptionRef desc)
{
  if (!desc)
  {
    CMMetadataFormatDescriptionGetIdentifiers_cold_3();
    return 0;
  }

  if (CMFormatDescriptionGetMediaType(desc) != 1835365473)
  {
    CMMetadataFormatDescriptionGetIdentifiers_cold_1();
    return 0;
  }

  if (CMFormatDescriptionGetMediaSubType(desc) != 1835360888)
  {
    CMMetadataFormatDescriptionGetIdentifiers_cold_2();
    return 0;
  }

  result = FigDerivedFormatDescriptionGetDerivedStorage(desc, v2, v3, v4, v5, v6, v7, v8);
  if (result)
  {
    return *result;
  }

  return result;
}

void figMetadataFormatDescriptionFinalize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  DerivedStorage = FigDerivedFormatDescriptionGetDerivedStorage(a1, a2, a3, a4, a5, a6, a7, a8);
  if (DerivedStorage)
  {
    v9 = DerivedStorage;
    v10 = *DerivedStorage;
    if (v10)
    {
      CFRelease(v10);
    }

    v11 = v9[1];
    if (v11)
    {
      CFRelease(v11);
    }

    v12 = v9[2];
    if (v12)
    {
      CFRelease(v12);
    }

    v13 = v9[3];
    if (v13)
    {
      CFRelease(v13);
    }

    v14 = v9[4];
    if (v14)
    {
      CFRelease(v14);
    }

    v15 = v9[5];
    if (v15)
    {

      CFRelease(v15);
    }
  }
}

__CFString *figMetadataFormatDescriptionCopyDebugDesc(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  DerivedStorage = FigDerivedFormatDescriptionGetDerivedStorage(a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v10, 0);
  v12 = Mutable;
  if (*DerivedStorage)
  {
    CFStringAppendFormat(Mutable, 0, @"\t\tidentifierToDataTypes %p", *DerivedStorage);
  }

  if (DerivedStorage[1])
  {
    CFStringAppendFormat(v12, 0, @"\t\tlocalKeyIDToKeyEntryMapping %p", DerivedStorage[1]);
  }

  if (DerivedStorage[2])
  {
    CFStringAppendFormat(v12, 0, @"\t\tlocalKeyIDToMetadataSpecificationMapping %p", DerivedStorage[2]);
  }

  if (DerivedStorage[3])
  {
    CFStringAppendFormat(v12, 0, @"\t\tlocalKeyIDToConformingDataTypes %p", DerivedStorage[3]);
  }

  if (DerivedStorage[4])
  {
    CFStringAppendFormat(v12, 0, @"\t\tlocalKeyIDToQuickTimeWellKnownTypeMapping %p", DerivedStorage[4]);
  }

  if (DerivedStorage[5])
  {
    CFStringAppendFormat(v12, 0, @"\t\tlocalKeyIDsThatDoNotHaveAWellKnownType %p", DerivedStorage[5]);
  }

  return v12;
}

uint64_t figMetadataFormatDescriptionEqual(const opaqueCMFormatDescription *a1, const opaqueCMFormatDescription *a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  DerivedStorage = FigDerivedFormatDescriptionGetDerivedStorage(a1, a2, a3, a4, a5, a6, a7, a8);
  Extensions = CMFormatDescriptionGetExtensions(a1);
  v21 = FigDerivedFormatDescriptionGetDerivedStorage(a2, v14, v15, v16, v17, v18, v19, v20);
  v22 = CMFormatDescriptionGetExtensions(a2);
  result = FigCFEqual(*DerivedStorage, *v21);
  if (result)
  {
    result = FigCFEqual(DerivedStorage[1], v21[1]);
    if (result)
    {
      result = FigCFEqual(DerivedStorage[2], v21[2]);
      if (result)
      {
        result = FigCFEqual(DerivedStorage[3], v21[3]);
        if (result)
        {
          result = FigCFEqual(DerivedStorage[4], v21[4]);
          if (result)
          {
            result = FigCFEqual(DerivedStorage[5], v21[5]);
            if (result)
            {
              return FigFormatDescriptionExtensionsDictionariesEqualIgnoringKeys(Extensions, v22, a3, a4) != 0;
            }
          }
        }
      }
    }
  }

  return result;
}

void FigMetadataFormatDescriptionCreateCanonicalToWellKnownTypeAssociationsOnce()
{
  v73 = *MEMORY[0x1E69E9840];
  v5 = @"com.apple.metadata.datatype.raw-data";
  v6 = 0;
  v7 = @"com.apple.metadata.datatype.UTF-8";
  v8 = 1;
  v9 = @"com.apple.metadata.datatype.UTF-16";
  v10 = 2;
  v11 = @"com.apple.metadata.datatype.UTF-8-sort";
  v12 = 4;
  v13 = @"com.apple.metadata.datatype.UTF-16-sort";
  v14 = 5;
  v15 = @"com.apple.metadata.datatype.GIF";
  v16 = 12;
  v17 = @"com.apple.metadata.datatype.JPEG";
  v18 = 13;
  v19 = @"com.apple.metadata.datatype.PNG";
  v21 = @"com.apple.metadata.datatype.UPC";
  v20 = 14;
  v22 = 25;
  v23 = @"com.apple.metadata.datatype.BMP";
  v25 = @"com.apple.metadata.datatype.QuickTime-metadata-box";
  v24 = 27;
  v26 = 28;
  v27 = @"com.apple.metadata.datatype.float32";
  v29 = @"com.apple.metadata.datatype.float64";
  v28 = 23;
  v30 = 24;
  v31 = @"com.apple.metadata.datatype.pixel-density";
  v33 = @"com.apple.metadata.datatype.int8";
  v32 = 30;
  v34 = 65;
  v35 = @"com.apple.metadata.datatype.int16";
  v37 = @"com.apple.metadata.datatype.int32";
  v36 = 66;
  v38 = 67;
  v39 = @"com.apple.metadata.datatype.int64";
  v40 = 74;
  v41 = @"com.apple.metadata.datatype.uint8";
  v42 = 75;
  v43 = @"com.apple.metadata.datatype.uint16";
  v44 = 76;
  v45 = @"com.apple.metadata.datatype.uint32";
  v46 = 77;
  v47 = @"com.apple.metadata.datatype.uint64";
  v48 = 78;
  v49 = @"com.apple.metadata.datatype.array-collection";
  v50 = 68;
  v51 = @"com.apple.metadata.datatype.record-collection";
  v52 = 69;
  v53 = @"com.apple.metadata.datatype.point-float32";
  v54 = 70;
  v55 = @"com.apple.metadata.datatype.dimensions-float32";
  v56 = 71;
  v57 = @"com.apple.metadata.datatype.rectangle-float32";
  v58 = 72;
  v59 = @"com.apple.metadata.affine-transform-float64";
  v60 = 79;
  v61 = @"com.apple.metadata.datatype.polygon-float32";
  v62 = 80;
  v63 = @"com.apple.metadata.datatype.polyline-float32";
  v64 = 81;
  v65 = @"com.apple.metadata.datatype.JSON";
  v66 = 82;
  v67 = @"com.apple.metadata.perspective-transform-float64";
  v68 = 83;
  v69 = @"com.apple.metadata.datatype.raster-rectangle-value";
  v70 = 84;
  v71 = @"com.apple.metadata.datatype.extended-raster-rectangle-value";
  v72 = 85;
  v0 = *MEMORY[0x1E695E480];
  v1 = MEMORY[0x1E695E9E8];
  sCanonicalToWellKnownTypeMap = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 34, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v2 = 0;
  sWellKnownTypeToCanonicalMap = CFDictionaryCreateMutable(v0, 34, 0, v1);
  do
  {
    *bytes = bswap32(*(&v5 + v2 + 8));
    v3 = CFDataCreate(v0, bytes, 4);
    CFDictionarySetValue(sCanonicalToWellKnownTypeMap, *(&v5 + v2), v3);
    CFDictionarySetValue(sWellKnownTypeToCanonicalMap, *(&v5 + v2 + 8), *(&v5 + v2));
    CFRelease(v3);
    v2 += 16;
  }

  while (v2 != 544);
}

void metadataFormatDescriptionCreateWithMetadataSpecifications1_arrayCallback(const __CFDictionary *a1, _DWORD *a2)
{
  v120 = *MEMORY[0x1E69E9840];
  if (*a2)
  {
    return;
  }

  v3 = a2;
  TypeID = CFDictionaryGetTypeID();
  if (TypeID != CFGetTypeID(a1))
  {
    metadataFormatDescriptionCreateWithMetadataSpecifications1_arrayCallback_cold_1(bytes);
    goto LABEL_122;
  }

  v6 = *(v3 + 1);
  v7 = v3[4];
  v8 = v3[5];
  v103 = *(v3 + 3);
  v101 = *(v3 + 4);
  v9 = *(v3 + 5);
  valuePtr = 0;
  v110 = v7;
  theArray = v9;
  keyOut = 0;
  Count = CFArrayGetCount(v9);
  Value = CFDictionaryGetValue(a1, @"MetadataIdentifier");
  if (!Value)
  {
    metadataFormatDescriptionCreateWithMetadataSpecifications1_arrayCallback_cold_16(bytes);
    v50 = 0;
    Mutable = 0;
    v52 = 0;
    v36 = 0;
LABEL_130:
    v39 = *bytes;
    goto LABEL_92;
  }

  v12 = CFStringGetTypeID();
  if (v12 != CFGetTypeID(Value))
  {
    metadataFormatDescriptionCreateWithMetadataSpecifications1_arrayCallback_cold_2(bytes);
LABEL_129:
    v50 = 0;
    Mutable = 0;
    v52 = 0;
    v36 = 0;
    Value = 0;
    goto LABEL_130;
  }

  theDict = a1;
  v13 = CFDictionaryGetValue(a1, @"MetadataDataType");
  if (!v13)
  {
    metadataFormatDescriptionCreateWithMetadataSpecifications1_arrayCallback_cold_15(bytes);
    goto LABEL_76;
  }

  v14 = v13;
  v15 = CFStringGetTypeID();
  if (v15 != CFGetTypeID(v14))
  {
    metadataFormatDescriptionCreateWithMetadataSpecifications1_arrayCallback_cold_3(bytes);
    goto LABEL_76;
  }

  cf1 = v8;
  v16 = Value;
  v17 = v14;
  a1 = theDict;
  v18 = CFDictionaryGetValue(theDict, @"MetadataExtendedLanguageTag");
  if (v18)
  {
    v19 = CFStringGetTypeID();
    if (v19 != CFGetTypeID(v18))
    {
      metadataFormatDescriptionCreateWithMetadataSpecifications1_arrayCallback_cold_4(bytes);
      goto LABEL_129;
    }
  }

  v20 = CFDictionaryGetValue(theDict, @"StructuralDependency");
  if (v20)
  {
    v21 = CFDictionaryGetTypeID();
    if (v21 != CFGetTypeID(v20))
    {
      metadataFormatDescriptionCreateWithMetadataSpecifications1_arrayCallback_cold_5(bytes);
      goto LABEL_129;
    }
  }

  allocator = v6;
  v22 = CFDictionaryGetValue(theDict, @"MetadataKeySetupData");
  if (v22)
  {
    v23 = CFDataGetTypeID();
    if (v23 != CFGetTypeID(v22))
    {
      metadataFormatDescriptionCreateWithMetadataSpecifications1_arrayCallback_cold_6(bytes);
      goto LABEL_129;
    }
  }

  v97 = v22;
  v24 = CFDictionaryGetValue(theDict, @"MetadataConformingDataTypes");
  v95 = v20;
  v98 = v18;
  if (!v24)
  {
    v29 = v17;
    BaseDataTypeForConformingDataType = CMMetadataDataTypeRegistryGetBaseDataTypeForConformingDataType(v17);
    if (BaseDataTypeForConformingDataType)
    {
      v31 = BaseDataTypeForConformingDataType;
      ConformingDataTypes = 0;
      goto LABEL_23;
    }

    goto LABEL_43;
  }

  v25 = v24;
  v26 = CFArrayGetTypeID();
  if (v26 != CFGetTypeID(v25))
  {
    metadataFormatDescriptionCreateWithMetadataSpecifications1_arrayCallback_cold_7(bytes);
    goto LABEL_129;
  }

  v27 = CFArrayGetCount(v25);
  if (v27)
  {
    ConformingDataTypes = v25;
  }

  else
  {
    ConformingDataTypes = 0;
  }

  v29 = v17;
  v30 = CMMetadataDataTypeRegistryGetBaseDataTypeForConformingDataType(v17);
  if (!v30)
  {
    if (v27 >= 1)
    {
      v45 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(ConformingDataTypes, v45);
        v30 = CMMetadataDataTypeRegistryGetBaseDataTypeForConformingDataType(ValueAtIndex);
        if (v30)
        {
          goto LABEL_20;
        }
      }

      while (v27 != ++v45);
    }

LABEL_43:
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v39 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE5AuLL, "<<< MetadataFormatDescription >>>", 0x333, v2, v48, v49);
    v50 = 0;
    Mutable = 0;
    v52 = 0;
    v36 = 0;
    Value = 0;
LABEL_47:
    a1 = theDict;
    goto LABEL_92;
  }

LABEL_20:
  v31 = v30;
LABEL_23:
  if (cf1 != 1835360888)
  {
    goto LABEL_75;
  }

  FigThreadRunOnce(&sFigMetadataFormatDescriptionCreateCanonicalToWellKnownTypeAssociationsOnce, FigMetadataFormatDescriptionCreateCanonicalToWellKnownTypeAssociationsOnce);
  v33 = CFDictionaryGetValue(sCanonicalToWellKnownTypeMap, v31);
  if (v33)
  {
    Copy = CFDataCreateCopy(allocator, v33);
    goto LABEL_28;
  }

  QTWellKnownTypeFromDynamicBaseDataType = FigMetadataGetQTWellKnownTypeFromDynamicBaseDataType(v31);
  if (!QTWellKnownTypeFromDynamicBaseDataType)
  {
LABEL_75:
    metadataFormatDescriptionCreateWithMetadataSpecifications1_arrayCallback_cold_14(bytes);
LABEL_76:
    v50 = 0;
    Mutable = 0;
    v52 = 0;
    v36 = 0;
    Value = 0;
    v39 = *bytes;
    goto LABEL_47;
  }

  *bytes = bswap32(QTWellKnownTypeFromDynamicBaseDataType);
  Copy = CFDataCreate(*MEMORY[0x1E695E480], bytes, 4);
LABEL_28:
  v36 = Copy;
  if (!Copy)
  {
    goto LABEL_75;
  }

  v96 = v3;
  if (CMMetadataDataTypeRegistryDataTypeIsBaseDataType(v29))
  {
    ExternalRepresentation = CFRetain(v36);
    v37 = v103;
  }

  else
  {
    v37 = v101;
    ExternalRepresentation = CFStringCreateExternalRepresentation(allocator, v29, 0x600u, 0);
    if (!ExternalRepresentation)
    {
      metadataFormatDescriptionCreateWithMetadataSpecifications1_arrayCallback_cold_13(bytes);
      v50 = 0;
      Mutable = 0;
      v52 = 0;
      Value = 0;
      v39 = *bytes;
      goto LABEL_46;
    }
  }

  v38 = CMMetadataCreateKeyFromIdentifierAsCFData(allocator, v16, &keyOut);
  if (v38)
  {
    v39 = v38;
    if (v38 != -16308)
    {
      Mutable = 0;
      v52 = 0;
      Value = 0;
LABEL_45:
      v50 = ExternalRepresentation;
LABEL_46:
      v3 = v96;
      goto LABEL_47;
    }
  }

  KeySpaceAsOSTypeFromIdentifier = FigMetadataGetKeySpaceAsOSTypeFromIdentifier(v16);
  valuePtr = KeySpaceAsOSTypeFromIdentifier;
  if (!KeySpaceAsOSTypeFromIdentifier)
  {
    metadataFormatDescriptionCreateWithMetadataSpecifications1_arrayCallback_cold_12(bytes);
LABEL_133:
    Mutable = 0;
    v52 = 0;
    Value = 0;
    v39 = *bytes;
    goto LABEL_45;
  }

  if (KeySpaceAsOSTypeFromIdentifier != 1634627438 && !keyOut)
  {
    metadataFormatDescriptionCreateWithMetadataSpecifications1_arrayCallback_cold_11(bytes);
    goto LABEL_133;
  }

  cf = v36;
  v41 = *MEMORY[0x1E695E480];
  v42 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  v43 = CFNumberCreate(v41, kCFNumberSInt32Type, &v110);
  v117 = xmmword_1E74A0E98;
  v118 = unk_1E74A0EA8;
  v119 = 0;
  *bytes = xmmword_1E74A0E78;
  v116 = *&off_1E74A0E88;
  v94 = v43;
  v113[0] = v43;
  v113[1] = v42;
  cf1a = v42;
  v113[2] = v37;
  v113[3] = ExternalRepresentation;
  memset(v114, 0, sizeof(v114));
  if (keyOut)
  {
    v91 = (&v117 + 8);
    v92 = &v114[1];
    *&v117 = @"MetadataKeyValue";
    v114[0] = keyOut;
    v44 = 5;
  }

  else
  {
    v91 = &v117;
    v92 = v114;
    v44 = 4;
  }

  v93 = v44;
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      v54 = CFArrayGetValueAtIndex(theArray, i);
      v55 = CFDictionaryGetValue(v54, @"MetadataKeyNamespace");
      if (FigCFEqual(cf1a, v55))
      {
        v56 = keyOut;
        v57 = CFDictionaryGetValue(v54, @"MetadataKeyValue");
        if (FigCFEqual(v56, v57))
        {
          v58 = CFDictionaryGetValue(v54, @"MetadataKeyDataTypeNameSpace");
          if (FigCFEqual(v37, v58))
          {
            v59 = CFDictionaryGetValue(v54, @"MetadataKeyDataType");
            if (FigCFEqual(ExternalRepresentation, v59))
            {
              v60 = CFDictionaryGetValue(v54, @"MetadataKeyLanguageTag");
              if (FigCFEqual(v98, v60))
              {
                v61 = CFDictionaryGetValue(v54, @"MetadataKeySetupData");
                if (FigCFEqual(v97, v61))
                {
                  if (!ConformingDataTypes || (v62 = CFDictionaryGetValue(v54, @"MetadataKeyConformingDataTypes"), FigCFEqual(ConformingDataTypes, v62)))
                  {
                    Mutable = 0;
                    v52 = 0;
                    Value = 0;
                    v39 = 0;
                    v78 = theDict;
                    v50 = ExternalRepresentation;
                    v36 = cf;
                    v80 = cf1a;
                    v3 = v96;
LABEL_110:
                    v81 = v94;
                    goto LABEL_87;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v3 = v96;
  if (!ConformingDataTypes && (ConformingDataTypes = CMMetadataDataTypeRegistryGetConformingDataTypes(v29)) == 0 || (v63 = CFArrayGetCount(ConformingDataTypes), v63 < 1))
  {
    v52 = 0;
    Mutable = 0;
    v78 = theDict;
    v50 = ExternalRepresentation;
    v36 = cf;
    v79 = allocator;
    v75 = v97;
    v74 = v98;
    v76 = v95;
    goto LABEL_78;
  }

  v64 = v63;
  Mutable = CFArrayCreateMutable(allocator, v63, MEMORY[0x1E695E9C0]);
  v65 = 0;
  v52 = 0;
  v66 = MEMORY[0x1E695E9D8];
  v67 = MEMORY[0x1E695E9E8];
  do
  {
    if (v52)
    {
      CFRelease(v52);
    }

    v68 = CFArrayGetValueAtIndex(ConformingDataTypes, v65);
    if (CMMetadataDataTypeRegistryDataTypeIsBaseDataType(v68))
    {
      if (CFStringCompare(v31, v68, 0) == kCFCompareEqualTo)
      {
        v52 = CFRetain(cf);
        v69 = v103;
        v70 = allocator;
        goto LABEL_70;
      }

      metadataFormatDescriptionCreateWithMetadataSpecifications1_arrayCallback_cold_8(keys);
      v52 = 0;
LABEL_114:
      Value = 0;
      v39 = keys[0];
      goto LABEL_115;
    }

    v71 = CFArrayGetValueAtIndex(ConformingDataTypes, v65);
    v70 = allocator;
    v52 = CFStringCreateExternalRepresentation(allocator, v71, 0x600u, 0);
    v69 = v101;
    if (!v52)
    {
      metadataFormatDescriptionCreateWithMetadataSpecifications1_arrayCallback_cold_9(keys);
      goto LABEL_114;
    }

LABEL_70:
    *keys = xmmword_1E74A0EC0;
    values[0] = v69;
    values[1] = v52;
    v72 = CFDictionaryCreate(v70, keys, values, 2, v66, v67);
    if (!v72)
    {
      v88 = fig_log_get_emitter("com.apple.coremedia", "");
      v39 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v88, 0xFFFFCE59uLL, "<<< MetadataFormatDescription >>>", 0x39C, v2, v89, v90);
      Value = 0;
LABEL_115:
      v3 = v96;
      v78 = theDict;
      v50 = ExternalRepresentation;
      v36 = cf;
      v80 = cf1a;
      goto LABEL_110;
    }

    v73 = v72;
    CFArrayAppendValue(Mutable, v72);
    CFRelease(v73);
    ++v65;
  }

  while (v64 != v65);
  v75 = v97;
  v74 = v98;
  v76 = v95;
  if (Mutable)
  {
    *v91 = @"MetadataKeyConformingDataTypes";
    v77 = v93 + 1;
    *v92 = Mutable;
    v3 = v96;
    v78 = theDict;
    v50 = ExternalRepresentation;
    v36 = cf;
    v80 = cf1a;
    v79 = allocator;
    v81 = v94;
    goto LABEL_79;
  }

  v3 = v96;
  v78 = theDict;
  v50 = ExternalRepresentation;
  v36 = cf;
  v79 = allocator;
LABEL_78:
  v80 = cf1a;
  v77 = v93;
  v81 = v94;
LABEL_79:
  if (v74)
  {
    *&bytes[8 * v77] = @"MetadataKeyLanguageTag";
    v113[v77++] = v74;
  }

  if (v76)
  {
    *&bytes[8 * v77] = @"MetadataKeyStructuralDependency";
    v113[v77++] = v76;
  }

  if (v75)
  {
    *&bytes[8 * v77] = @"MetadataKeySetupData";
    v113[v77++] = v75;
  }

  Value = CFDictionaryCreate(v79, bytes, v113, v77, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Value)
  {
    CFArrayAppendValue(theArray, Value);
    v39 = 0;
  }

  else
  {
    metadataFormatDescriptionCreateWithMetadataSpecifications1_arrayCallback_cold_10(keys);
    v39 = keys[0];
  }

LABEL_87:
  if (v81)
  {
    CFRelease(v81);
  }

  if (v80)
  {
    CFRelease(v80);
  }

  a1 = v78;
LABEL_92:
  if (keyOut)
  {
    CFRelease(keyOut);
  }

  if (v50)
  {
    CFRelease(v50);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v52)
  {
    CFRelease(v52);
  }

  if (v36)
  {
    CFRelease(v36);
  }

  if (Value)
  {
    CFRelease(Value);
  }

  if (!v39)
  {
    ++v3[4];
    v82 = CFDictionaryGetValue(a1, @"MetadataDependentSpecifications");
    if (!v82)
    {
      return;
    }

    v83 = v82;
    v84 = CFArrayGetTypeID();
    if (v84 == CFGetTypeID(v83))
    {
      v85 = CFArrayGetCount(v83);
      if (v85 >= 1)
      {
        v121.length = v85;
        v86 = *(v3 + 1);
        *bytes = *v3;
        v116 = v86;
        v117 = *(v3 + 2);
        *&v118 = *(v3 + 6);
        v121.location = 0;
        CFArrayApplyFunction(v83, v121, metadataFormatDescriptionCreateWithMetadataSpecifications1_arrayCallback, bytes);
        v87 = v118;
        v3[4] = v116;
        v3[12] = v87 + 1;
      }

      return;
    }

    metadataFormatDescriptionCreateWithMetadataSpecifications1_arrayCallback_cold_17(bytes);
LABEL_122:
    v39 = *bytes;
    if (!*bytes)
    {
      return;
    }
  }

  if (!*v3)
  {
    *v3 = v39;
  }
}

void metadataFormatDescriptionCreateWithMetadataSpecifications2_arrayCallback(const __CFDictionary *a1, __int128 *a2)
{
  if (!*a2)
  {
    v41 = v2;
    v42 = v3;
    v6 = *(a2 + 2);
    Value = CFDictionaryGetValue(a1, @"MetadataIdentifier");
    v8 = CFDictionaryGetValue(a1, @"MetadataDataType");
    v9 = CFDictionaryGetValue(a1, @"MetadataExtendedLanguageTag");
    LocalIDForMetadataIdentifyingFactors = FigMetadataFormatDescriptionGetLocalIDForMetadataIdentifyingFactors(v6, Value, v8, v9, v10, v11, v12, v13);
    if (LocalIDForMetadataIdentifyingFactors)
    {
      v15 = LocalIDForMetadataIdentifyingFactors;
      KeyWithLocalID = CMMetadataFormatDescriptionGetKeyWithLocalID(*(a2 + 2), LocalIDForMetadataIdentifyingFactors);
      if (KeyWithLocalID)
      {
        v17 = CFDictionaryGetValue(KeyWithLocalID, @"MetadataKeyLocalID");
        if (v17)
        {
          v18 = v17;
          v19 = CFStringCreateWithFormat(*(a2 + 1), 0, @"%d", v15);
          if (v19)
          {
            v20 = v19;
            v21 = *(a2 + 5);
            if (v21)
            {
              v43.length = CFArrayGetCount(*(a2 + 5));
              v43.location = 0;
              if (!CFArrayContainsValue(v21, v43, v18))
              {
                CFArrayAppendValue(*(a2 + 5), v18);
              }

              v22 = CFDictionaryGetValue(a1, @"MetadataDependentSpecifications");
              if (!v22)
              {
                goto LABEL_25;
              }

              v23 = v22;
              v24 = a2[1];
              context = *a2;
              v39 = v24;
              *theArray = a2[2];
              v44.length = CFArrayGetCount(v22);
              v44.location = 0;
              CFArrayApplyFunction(v23, v44, metadataFormatDescriptionCreateWithMetadataSpecifications2_arrayCallback, &context);
            }

            else
            {
              v25 = *(a2 + 3);
              v45.length = CFArrayGetCount(v25);
              v45.location = 0;
              if (!CFArrayContainsValue(v25, v45, v18))
              {
                CFArrayAppendValue(*(a2 + 3), v18);
              }

              v26 = CFDictionaryGetValue(a1, @"MetadataDependentSpecifications");
              if (!v26)
              {
                goto LABEL_25;
              }

              v27 = v26;
              v28 = a2[1];
              context = *a2;
              v39 = v28;
              theArray[0] = *(a2 + 4);
              Count = CFArrayGetCount(v26);
              theArray[1] = CFArrayCreateMutable(*(a2 + 1), Count, MEMORY[0x1E695E9C0]);
              v46.location = 0;
              v46.length = Count;
              CFArrayApplyFunction(v27, v46, metadataFormatDescriptionCreateWithMetadataSpecifications2_arrayCallback, &context);
              if (!context)
              {
                v30 = CFDictionaryGetValue(*(a2 + 4), v20);
                if (v30)
                {
                  v31 = v30;
                  v32 = CFArrayGetCount(v30);
                  v33 = CFArrayGetCount(theArray[1]);
                  MutableCopy = CFArrayCreateMutableCopy(*(a2 + 1), v33 + v32, v31);
                  if (v33 >= 1)
                  {
                    for (i = 0; i != v33; ++i)
                    {
                      ValueAtIndex = CFArrayGetValueAtIndex(theArray[1], i);
                      v47.location = 0;
                      v47.length = v32;
                      if (!CFArrayContainsValue(v31, v47, ValueAtIndex))
                      {
                        CFArrayAppendValue(MutableCopy, ValueAtIndex);
                      }
                    }
                  }

                  CFDictionarySetValue(*(a2 + 4), v20, MutableCopy);
                  CFRelease(MutableCopy);
                }

                else
                {
                  CFDictionarySetValue(*(a2 + 4), v20, theArray[1]);
                }
              }

              CFRelease(theArray[1]);
              if (*a2)
              {
                goto LABEL_25;
              }
            }

            *a2 = context;
LABEL_25:
            CFRelease(v20);
            return;
          }

          v37 = 1081;
        }

        else
        {
          v37 = 1079;
        }
      }

      else
      {
        v37 = 1077;
      }
    }

    else
    {
      v37 = 1075;
    }

    metadataFormatDescriptionCreateWithMetadataSpecifications2_arrayCallback_cold_1(a2, v37);
  }
}

CMTimeRange *__cdecl CMTimeRangeMake(CMTimeRange *__return_ptr retstr, CMTimeRange *start, CMTime *duration)
{
  if (duration->epoch)
  {
    *&retstr->start.epoch = 0u;
    *&retstr->duration.timescale = 0u;
    *&retstr->start.value = 0u;
  }

  else
  {
    *v3 = start->start.epoch;
    *&v3[8] = *duration;
    *&retstr->start.value = *&start->start.value;
    *&retstr->start.epoch = *v3;
    *&retstr->duration.timescale = *&v3[16];
  }

  return start;
}

CMTimeMapping *__cdecl CMTimeMappingMake(CMTimeMapping *__return_ptr retstr, CMTimeMapping *source, CMTimeRange *target)
{
  if (source->source.duration.epoch || target->duration.epoch)
  {
    *&retstr->target.start.epoch = 0u;
    *&retstr->target.duration.timescale = 0u;
    *&retstr->source.duration.timescale = 0u;
    *&retstr->target.start.value = 0u;
    *&retstr->source.start.value = 0u;
    *&retstr->source.start.epoch = 0u;
  }

  else
  {
    v4 = *&source->source.start.epoch;
    v3 = *&source->source.duration.timescale;
    v6 = *&target->start.epoch;
    v5 = *&target->duration.timescale;
    v7 = *&target->start.value;
    *&retstr->source.start.value = *&source->source.start.value;
    *&retstr->source.start.epoch = v4;
    *&retstr->source.duration.timescale = v3;
    *&retstr->target.start.value = v7;
    *&retstr->target.start.epoch = v6;
    *&retstr->target.duration.timescale = v5;
  }

  return source;
}

CMTimeMapping *__cdecl CMTimeMappingMakeEmpty(CMTimeMapping *__return_ptr retstr, CMTimeMapping *target)
{
  if (target->source.duration.epoch)
  {
    *&retstr->target.start.epoch = 0u;
    *&retstr->target.duration.timescale = 0u;
    *&retstr->source.duration.timescale = 0u;
    *&retstr->target.start.value = 0u;
    *&retstr->source.start.value = 0u;
    *&retstr->source.start.epoch = 0u;
  }

  else
  {
    v2 = *&target->source.start.epoch;
    *&retstr->target.start.value = *&target->source.start.value;
    *&retstr->target.start.epoch = v2;
    v3 = *&target->source.duration.timescale;
    *&retstr->source.start.value = 0u;
    *&retstr->source.start.epoch = 0u;
    *&retstr->source.duration.timescale = 0u;
    *&retstr->target.duration.timescale = v3;
    retstr->target.duration.epoch = 0;
  }

  return target;
}

CMTimeRange *__cdecl CMTimeRangeGetUnion(CMTimeRange *__return_ptr retstr, CMTimeRange *range, CMTimeRange *otherRange)
{
  memset(&v12, 0, sizeof(v12));
  memset(&v10, 0, sizeof(v10));
  if (range->start.epoch != otherRange->start.epoch)
  {
    goto LABEL_9;
  }

  v5 = range;
  *time1 = *&range->start.value;
  *&time1[16] = range->start.epoch;
  time2 = otherRange->start;
  CMTimeMinimum(&v12, time1, &time2);
  if (v5->duration.epoch)
  {
    memset(&v9, 0, sizeof(v9));
  }

  else
  {
    *time1 = *&v5->start.value;
    *&time1[16] = v5->start.epoch;
    *&time2.value = *&v5->duration.value;
    time2.epoch = 0;
    CMTimeAdd(&v9, time1, &time2);
  }

  v11 = v9;
  if (otherRange->duration.epoch)
  {
    memset(&v9, 0, sizeof(v9));
  }

  else
  {
    *time1 = *&otherRange->start.value;
    *&time1[16] = otherRange->start.epoch;
    *&time2.value = *&otherRange->duration.value;
    time2.epoch = 0;
    CMTimeAdd(&v9, time1, &time2);
  }

  time2 = v9;
  *time1 = v11;
  CMTimeMaximum(&v10, time1, &v9);
  *time1 = v10;
  v8 = v12;
  range = CMTimeSubtract(&v9, time1, &v8);
  if (!v9.epoch)
  {
    *&time1[16] = v12.epoch;
    *&time1[24] = v9.value;
    v6 = *&time1[16];
    v7 = *&v9.timescale;
    *&retstr->start.value = *&v12.value;
    *&retstr->start.epoch = v6;
    *&retstr->duration.timescale = v7;
  }

  else
  {
LABEL_9:
    *&retstr->start.epoch = 0u;
    *&retstr->duration.timescale = 0u;
    *&retstr->start.value = 0u;
  }

  return range;
}

CMTime *__cdecl CMTimeRangeGetEnd(CMTime *__return_ptr retstr, CMTime *range)
{
  if (range[1].epoch)
  {
    *&retstr->value = *&kCMTimeInvalid.value;
    retstr->epoch = 0;
  }

  else
  {
    v6 = v2;
    v7 = v3;
    lhs = *range;
    v4 = range[1];
    return CMTimeAdd(retstr, &lhs, &v4);
  }

  return range;
}

CMTimeRange *__cdecl CMTimeRangeGetIntersection(CMTimeRange *__return_ptr retstr, CMTimeRange *range, CMTimeRange *otherRange)
{
  memset(v11, 0, 24);
  memset(&v10[32], 0, 24);
  memset(v10, 0, 24);
  memset(&v9, 0, sizeof(v9));
  if (range->start.epoch != otherRange->start.epoch)
  {
    goto LABEL_11;
  }

  v5 = range;
  *&time1.value = *&range->start.value;
  time1.epoch = range->start.epoch;
  *&v11[24] = otherRange->start;
  CMTimeMaximum(v11, &time1, &v11[24]);
  if (v5->duration.epoch)
  {
    memset(&v8, 0, sizeof(v8));
  }

  else
  {
    *&time1.value = *&v5->start.value;
    time1.epoch = v5->start.epoch;
    *&v11[24] = *&v5->duration.value;
    *&v11[40] = 0;
    CMTimeAdd(&v8, &time1, &v11[24]);
  }

  *&v10[32] = v8;
  if (otherRange->duration.epoch)
  {
    memset(&v8, 0, sizeof(v8));
  }

  else
  {
    *&time1.value = *&otherRange->start.value;
    time1.epoch = otherRange->start.epoch;
    *&v11[24] = *&otherRange->duration.value;
    *&v11[40] = 0;
    CMTimeAdd(&v8, &time1, &v11[24]);
  }

  *v10 = v8;
  time1 = *&v10[32];
  *&v11[24] = v8;
  CMTimeMinimum(&v9, &time1, &v11[24]);
  time1 = *v11;
  *&v11[24] = v9;
  range = CMTimeCompare(&time1, &v11[24]);
  if ((range & 0x80000000) == 0)
  {
    *retstr = kCMTimeRangeZero;
    return range;
  }

  time1 = v9;
  v8 = *v11;
  range = CMTimeSubtract(&v11[24], &time1, &v8);
  if (!*&v11[40])
  {
    v6 = *&v11[16];
    v7 = *&v11[32];
    *&retstr->start.value = *v11;
    *&retstr->start.epoch = v6;
    *&retstr->duration.timescale = v7;
  }

  else
  {
LABEL_11:
    *&retstr->start.epoch = 0u;
    *&retstr->duration.timescale = 0u;
    *&retstr->start.value = 0u;
  }

  return range;
}

Boolean CMTimeRangeEqual(CMTimeRange *range1, CMTimeRange *range2)
{
  if (range1->start.epoch != range2->start.epoch)
  {
    return 0;
  }

  v9 = v2;
  v10 = v3;
  time1 = range1->start;
  start = range2->start;
  if (CMTimeCompare(&time1, &start))
  {
    return 0;
  }

  time1 = range1->duration;
  start = range2->duration;
  return CMTimeCompare(&time1, &start) == 0;
}

Boolean CMTimeRangeContainsTime(CMTimeRange *range, CMTime *time)
{
  time1 = range->start;
  time2 = *time;
  if (CMTimeCompare(&time1, &time2) <= 0)
  {
    if (range->duration.epoch)
    {
      memset(&v6, 0, sizeof(v6));
    }

    else
    {
      time1 = range->start;
      *&time2.value = *&range->duration.value;
      time2.epoch = 0;
      CMTimeAdd(&v6, &time1, &time2);
    }

    time1 = *time;
    return CMTimeCompare(&time1, &v6) >> 31;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

Boolean CMTimeRangeContainsTimeRange(CMTimeRange *range, CMTimeRange *otherRange)
{
  if (range->start.epoch == otherRange->start.epoch)
  {
    v14 = v2;
    v15 = v3;
    v6 = *&range->start.epoch;
    *&rangea.start.value = *&range->start.value;
    *&rangea.start.epoch = v6;
    *&rangea.duration.timescale = *&range->duration.timescale;
    start = otherRange->start;
    v7 = CMTimeRangeContainsTime(&rangea, &start);
    if (v7)
    {
      if (otherRange->duration.epoch)
      {
        memset(&time, 0, sizeof(time));
      }

      else
      {
        *&rangea.start.value = *&otherRange->start.value;
        rangea.start.epoch = otherRange->start.epoch;
        *&start.value = *&otherRange->duration.value;
        start.epoch = 0;
        CMTimeAdd(&time, &rangea.start, &start);
      }

      v8 = *&range->start.epoch;
      *&rangea.start.value = *&range->start.value;
      *&rangea.start.epoch = v8;
      *&rangea.duration.timescale = *&range->duration.timescale;
      if (CMTimeRangeContainsTime(&rangea, &time))
      {
        goto LABEL_8;
      }

      if (range->duration.epoch)
      {
        memset(&time, 0, sizeof(time));
      }

      else
      {
        *&rangea.start.value = *&range->start.value;
        rangea.start.epoch = range->start.epoch;
        *&start.value = *&range->duration.value;
        start.epoch = 0;
        CMTimeAdd(&time, &rangea.start, &start);
      }

      if (otherRange->duration.epoch)
      {
        memset(&v10, 0, sizeof(v10));
      }

      else
      {
        *&rangea.start.value = *&otherRange->start.value;
        rangea.start.epoch = otherRange->start.epoch;
        *&start.value = *&otherRange->duration.value;
        start.epoch = 0;
        CMTimeAdd(&v10, &rangea.start, &start);
      }

      if (!CMTimeCompare(&time, &v10))
      {
LABEL_8:
        LOBYTE(v7) = 1;
      }

      else
      {
        LOBYTE(v7) = 0;
      }
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

CMTime *__cdecl CMTimeMapDurationFromRangeToRange(CMTime *__return_ptr retstr, CMTime *dur, CMTimeRange *fromRange, CMTimeRange *toRange)
{
  time1 = fromRange->duration;
  duration = toRange->duration;
  result = CMTimeCompare(&time1, &duration);
  if ((dur->flags & 0x1D) == 1 && dur->epoch || (fromRange->start.flags & 0x1D) != 1 || (toRange->start.flags & 0x1D) != 1)
  {
    goto LABEL_17;
  }

  if (((~fromRange->duration.flags & 0x11) == 0 || (fromRange->duration.flags & 5) == 5) && ((~toRange->duration.flags & 0x11) == 0 || (toRange->duration.flags & 5) == 5))
  {
    if (!result)
    {
LABEL_21:
      v9 = dur;
      goto LABEL_18;
    }

LABEL_20:
    time1 = toRange->duration;
    Seconds = CMTimeGetSeconds(&time1);
    time1 = fromRange->duration;
    v11 = CMTimeGetSeconds(&time1);
    duration = *dur;
    result = CMTimeMultiplyByFloat64(&time1, &duration, Seconds / v11);
    *dur = time1;
    goto LABEL_21;
  }

  if ((fromRange->duration.flags & 0x1D) != 1 || fromRange->duration.value < 1 || fromRange->duration.epoch || (toRange->duration.flags & 0x1D) != 1)
  {
LABEL_17:
    v9 = &kCMTimeInvalid;
    goto LABEL_18;
  }

  v9 = &kCMTimeInvalid;
  if (toRange->duration.value >= 1 && !toRange->duration.epoch)
  {
    v9 = dur;
    if (result)
    {
      goto LABEL_20;
    }
  }

LABEL_18:
  *&retstr->value = *&v9->value;
  retstr->epoch = v9->epoch;
  return result;
}

CMTime *__cdecl CMTimeMapTimeFromRangeToRange(CMTime *__return_ptr retstr, CMTime *t, CMTimeRange *fromRange, CMTimeRange *toRange)
{
  time1 = fromRange->start;
  time2 = toRange->start;
  v8 = CMTimeCompare(&time1, &time2);
  time1 = fromRange->duration;
  time2 = toRange->duration;
  result = CMTimeCompare(&time1, &time2);
  if ((fromRange->start.flags & 0x1D) != 1 || (toRange->start.flags & 0x1D) != 1)
  {
    goto LABEL_19;
  }

  if ((v10 = result, (~fromRange->duration.flags & 0x11) != 0) && (fromRange->duration.flags & 5) != 5 || (~toRange->duration.flags & 0x11) != 0 && (toRange->duration.flags & 5) != 5)
  {
    if ((fromRange->duration.flags & 0x1D) != 1 || fromRange->duration.value < 1 || fromRange->duration.epoch || (toRange->duration.flags & 0x1D) != 1 || toRange->duration.value < 1 || toRange->duration.epoch)
    {
      goto LABEL_19;
    }
  }

  if ((t->flags & 0x1D) != 1)
  {
    goto LABEL_20;
  }

  if (t->epoch != fromRange->start.epoch)
  {
LABEL_19:
    t = &kCMTimeInvalid;
    goto LABEL_20;
  }

  if (v8 | result)
  {
    time2 = *t;
    start = fromRange->start;
    CMTimeSubtract(&time1, &time2, &start);
    *t = time1;
    if (v10)
    {
      time1 = toRange->duration;
      Seconds = CMTimeGetSeconds(&time1);
      time1 = fromRange->duration;
      v12 = CMTimeGetSeconds(&time1);
      time2 = *t;
      CMTimeMultiplyByFloat64(&time1, &time2, Seconds / v12);
      *t = time1;
    }

    time2 = *t;
    start = toRange->start;
    result = CMTimeAdd(&time1, &time2, &start);
    *t = time1;
  }

LABEL_20:
  *&retstr->value = *&t->value;
  retstr->epoch = t->epoch;
  return result;
}

CMTime *__cdecl CMTimeClampToRange(CMTime *__return_ptr retstr, CMTime *time, CMTimeRange *range)
{
  if ((range->start.flags & 0x1D) != 1 || ((v5 = time, (~range->duration.flags & 5) != 0) ? (v6 = (range->duration.flags & 0x11) == 17) : (v6 = 1), !v6 && ((range->duration.flags & 0x1D) != 1 || range->duration.value < 1 || range->duration.epoch)))
  {
LABEL_20:
    *&retstr->value = *&kCMTimeInvalid.value;
    epoch = 0;
    goto LABEL_21;
  }

  flags = time->flags;
  if ((~flags & 0x11) == 0 || (flags & 1) == 0)
  {
LABEL_23:
    *&retstr->value = *&v5->value;
    epoch = v5->epoch;
    goto LABEL_21;
  }

  time1 = *time;
  time2 = range->start;
  time = CMTimeCompare(&time1, &time2);
  if (time > 0)
  {
    if (range->duration.epoch)
    {
      memset(&v9, 0, sizeof(v9));
    }

    else
    {
      time1 = range->start;
      *&time2.value = *&range->duration.value;
      time2.epoch = 0;
      CMTimeAdd(&v9, &time1, &time2);
    }

    time1 = *v5;
    time = CMTimeCompare(&time1, &v9);
    if ((time & 0x80000000) == 0)
    {
      if (!range->duration.epoch)
      {
        time1 = range->start;
        *&time2.value = *&range->duration.value;
        time2.epoch = 0;
        return CMTimeAdd(retstr, &time1, &time2);
      }

      goto LABEL_20;
    }

    goto LABEL_23;
  }

  *&retstr->value = *&range->start.value;
  epoch = range->start.epoch;
LABEL_21:
  retstr->epoch = epoch;
  return time;
}

CMTime *__cdecl CMTimeFoldIntoRange(CMTime *__return_ptr retstr, CMTime *time, CMTimeRange *foldRange)
{
  *&retstr->value = *&kCMTimeInvalid.value;
  retstr->epoch = 0;
  memset(&v10, 0, sizeof(v10));
  memset(&v9, 0, sizeof(v9));
  lhs = *time;
  rhs = foldRange->start;
  CMTimeSubtract(&v10, &lhs, &rhs);
  lhs = v10;
  *&rhs.value = *&kCMTimeZero.value;
  rhs.epoch = 0;
  if (CMTimeCompare(&lhs, &rhs) < 0)
  {
    rhs = v10;
    duration = foldRange->duration;
    CMTimeRemainder(&rhs.value, &duration.value, &lhs);
    v10 = lhs;
    rhs = lhs;
    duration = foldRange->duration;
    CMTimeAdd(&lhs, &rhs, &duration);
    v10 = lhs;
  }

  lhs = v10;
  rhs = foldRange->duration;
  CMTimeRemainder(&lhs.value, &rhs.value, &v9);
  lhs = v9;
  rhs = foldRange->start;
  return CMTimeAdd(retstr, &lhs, &rhs);
}

CFDictionaryRef CMTimeRangeCopyAsDictionary(CMTimeRange *range, CFAllocatorRef allocator)
{
  v12 = *MEMORY[0x1E69E9840];
  time = range->start;
  v4 = CMTimeCopyAsDictionary(&time, 0);
  time = range->duration;
  v5 = CMTimeCopyAsDictionary(&time, 0);
  v6 = v5;
  if (v4 && v5)
  {
    *&time.value = xmmword_1E74A0EF0;
    v10[0] = v4;
    v10[1] = v5;
    v7 = CFDictionaryCreate(allocator, &time, v10, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  else
  {
    v7 = 0;
    v8 = 0;
    if (!v4)
    {
      goto LABEL_6;
    }
  }

  CFRelease(v4);
  v8 = v7;
LABEL_6:
  if (v6)
  {
    CFRelease(v6);
  }

  return v8;
}

CMTimeRange *__cdecl CMTimeRangeMakeFromDictionary(CMTimeRange *__return_ptr retstr, CMTimeRange *dictionaryRepresentation)
{
  if (dictionaryRepresentation && (v3 = dictionaryRepresentation, TypeID = CFDictionaryGetTypeID(), dictionaryRepresentation = CFGetTypeID(v3), TypeID == dictionaryRepresentation) && (Value = CFDictionaryGetValue(v3, @"start"), dictionaryRepresentation = CFDictionaryGetValue(v3, @"duration"), Value) && (v6 = dictionaryRepresentation) != 0)
  {
    CMTimeMakeFromDictionary(&v9, Value);
    dictionaryRepresentation = CMTimeMakeFromDictionary(&v8, v6);
    if (v8.epoch)
    {
      memset(v11, 0, sizeof(v11));
      v10 = 0u;
    }

    else
    {
      v10 = *&v9.value;
      *&v11[0] = v9.epoch;
      *(v11 + 8) = *&v8.value;
      *(&v11[1] + 1) = 0;
    }

    v7 = v11[0];
    *&retstr->start.value = v10;
    *&retstr->start.epoch = v7;
    *&retstr->duration.timescale = v11[1];
  }

  else
  {
    *&retstr->start.epoch = 0u;
    *&retstr->duration.timescale = 0u;
    *&retstr->start.value = 0u;
  }

  return dictionaryRepresentation;
}

CFDictionaryRef CMTimeMappingCopyAsDictionary(CMTimeMapping *mapping, CFAllocatorRef allocator)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = *&mapping->source.start.epoch;
  *&range.start.value = *&mapping->source.start.value;
  *&range.start.epoch = v4;
  *&range.duration.timescale = *&mapping->source.duration.timescale;
  v5 = CMTimeRangeCopyAsDictionary(&range, 0);
  v6 = *&mapping->target.start.epoch;
  *&range.start.value = *&mapping->target.start.value;
  *&range.start.epoch = v6;
  *&range.duration.timescale = *&mapping->target.duration.timescale;
  v7 = CMTimeRangeCopyAsDictionary(&range, 0);
  v8 = v7;
  if (v5 && v7)
  {
    *&range.start.value = xmmword_1E74A0F00;
    v12[0] = v5;
    v12[1] = v7;
    v9 = CFDictionaryCreate(allocator, &range, v12, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
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

CMTimeMapping *__cdecl CMTimeMappingMakeFromDictionary(CMTimeMapping *__return_ptr retstr, CMTimeMapping *dictionaryRepresentation)
{
  if (dictionaryRepresentation && (v3 = dictionaryRepresentation, TypeID = CFDictionaryGetTypeID(), dictionaryRepresentation = CFGetTypeID(v3), TypeID == dictionaryRepresentation) && (Value = CFDictionaryGetValue(v3, @"source"), dictionaryRepresentation = CFDictionaryGetValue(v3, @"target"), Value) && (v6 = dictionaryRepresentation) != 0)
  {
    CMTimeRangeMakeFromDictionary(&v11, Value);
    dictionaryRepresentation = CMTimeRangeMakeFromDictionary(&v10, v6);
    if (v11.duration.epoch || v10.duration.epoch)
    {
      v14 = 0u;
      v15 = 0u;
      v13 = 0u;
      memset(&v12, 0, sizeof(v12));
    }

    else
    {
      v12 = v11;
      v13 = *&v10.start.value;
      v14 = *&v10.start.epoch;
      v15 = *&v10.duration.timescale;
    }

    v7 = v13;
    *&retstr->source.duration.timescale = *&v12.duration.timescale;
    *&retstr->target.start.value = v7;
    v8 = v15;
    *&retstr->target.start.epoch = v14;
    *&retstr->target.duration.timescale = v8;
    v9 = *&v12.start.epoch;
    *&retstr->source.start.value = *&v12.start.value;
    *&retstr->source.start.epoch = v9;
  }

  else
  {
    *&retstr->target.start.epoch = 0u;
    *&retstr->target.duration.timescale = 0u;
    *&retstr->source.duration.timescale = 0u;
    *&retstr->target.start.value = 0u;
    *&retstr->source.start.value = 0u;
    *&retstr->source.start.epoch = 0u;
  }

  return dictionaryRepresentation;
}

CFStringRef CMTimeRangeCopyDescription(CFAllocatorRef allocator, CMTimeRange *range)
{
  Mutable = CFStringCreateMutable(allocator, 0);
  if (!Mutable)
  {
    return Mutable;
  }

  start = range->start;
  v5 = CMTimeCopyDescription(allocator, &start);
  start = range->duration;
  v6 = CMTimeCopyDescription(allocator, &start);
  v7 = v6;
  if (v5 && v6)
  {
    CFStringAppend(Mutable, @"{");
    CFStringAppend(Mutable, v5);
    CFStringAppend(Mutable, @", ");
    CFStringAppend(Mutable, v7);
    CFStringAppend(Mutable, @"}");
  }

  else
  {
    CFStringAppendFormat(Mutable, 0, @"{ERROR CONSTRUCTING DESCRIPTION}");
    if (!v5)
    {
      goto LABEL_7;
    }
  }

  CFRelease(v5);
LABEL_7:
  if (v7)
  {
    CFRelease(v7);
  }

  return Mutable;
}

void CMTimeRangeShow(CMTimeRange *range)
{
  v35 = *MEMORY[0x1E69E9840];
  v1 = *MEMORY[0x1E695E480];
  v2 = *&range->start.epoch;
  *&rangea.start.value = *&range->start.value;
  *&rangea.start.epoch = v2;
  *&rangea.duration.timescale = *&range->duration.timescale;
  v3 = CMTimeRangeCopyDescription(v1, &rangea);
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v6 = 0u;
  memset(&rangea, 0, sizeof(rangea));
  if (v3)
  {
    v4 = v3;
    if (CFStringGetCString(v3, &rangea, 512, 0))
    {
      fprintf(*MEMORY[0x1E69E9848], "%s\n", &rangea);
    }

    CFRelease(v4);
  }
}

CFStringRef CMTimeMappingCopyDescription(CFAllocatorRef allocator, CMTimeMapping *mapping)
{
  Mutable = CFStringCreateMutable(allocator, 0);
  if (!Mutable)
  {
    return Mutable;
  }

  v5 = *&mapping->source.start.epoch;
  *&v11.start.value = *&mapping->source.start.value;
  *&v11.start.epoch = v5;
  *&v11.duration.timescale = *&mapping->source.duration.timescale;
  v6 = CMTimeRangeCopyDescription(allocator, &v11);
  v7 = *&mapping->target.start.epoch;
  *&v11.start.value = *&mapping->target.start.value;
  *&v11.start.epoch = v7;
  *&v11.duration.timescale = *&mapping->target.duration.timescale;
  v8 = CMTimeRangeCopyDescription(allocator, &v11);
  v9 = v8;
  if (v6 && v8)
  {
    CFStringAppend(Mutable, @"{");
    CFStringAppend(Mutable, v6);
    CFStringAppend(Mutable, @", ");
    CFStringAppend(Mutable, v9);
    CFStringAppend(Mutable, @"}");
  }

  else
  {
    CFStringAppendFormat(Mutable, 0, @"{ERROR CONSTRUCTING DESCRIPTION}");
    if (!v6)
    {
      goto LABEL_7;
    }
  }

  CFRelease(v6);
LABEL_7:
  if (v9)
  {
    CFRelease(v9);
  }

  return Mutable;
}

void CMTimeMappingShow(CMTimeMapping *mapping)
{
  v34 = *MEMORY[0x1E69E9840];
  v1 = *MEMORY[0x1E695E480];
  v2 = *&mapping->target.start.value;
  *&mappinga.source.duration.timescale = *&mapping->source.duration.timescale;
  *&mappinga.target.start.value = v2;
  v3 = *&mapping->target.duration.timescale;
  *&mappinga.target.start.epoch = *&mapping->target.start.epoch;
  *&mappinga.target.duration.timescale = v3;
  v4 = *&mapping->source.start.epoch;
  *&mappinga.source.start.value = *&mapping->source.start.value;
  *&mappinga.source.start.epoch = v4;
  v5 = CMTimeMappingCopyDescription(v1, &mappinga);
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
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  memset(&mappinga, 0, sizeof(mappinga));
  if (v5)
  {
    v6 = v5;
    if (CFStringGetCString(v5, &mappinga, 512, 0))
    {
      fprintf(*MEMORY[0x1E69E9848], "%s\n", &mappinga);
    }

    CFRelease(v6);
  }
}

CMTimeRange *__cdecl CMTimeRangeFromTimeToTime(CMTimeRange *__return_ptr retstr, CMTime *start, CMTime *end)
{
  v13 = *MEMORY[0x1E69E9840];
  *time1 = *start;
  time2 = *end;
  result = CMTimeCompare(time1, &time2);
  if (result >= 1 || (time2 = *end, v9 = *start, result = CMTimeSubtract(time1, &time2, &v9), v11 = *time1, *&time1[16]))
  {
    *&retstr->start.epoch = 0u;
    *&retstr->duration.timescale = 0u;
    *&retstr->start.value = 0u;
  }

  else
  {
    *&time1[16] = start->epoch;
    *time1 = *&start->value;
    v7 = *(&v11 + 1);
    *&time1[24] = v11;
    v8 = *&time1[16];
    *&retstr->start.value = *time1;
    *&retstr->start.epoch = v8;
    *&retstr->duration.timescale = v7;
    retstr->duration.epoch = 0;
  }

  return result;
}

CMTime *CMSpeedRampMapTimeFromTargetToSource@<X0>(CMTime *result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, CMTime *a4@<X8>)
{
  v4 = result;
  v93 = *MEMORY[0x1E69E9840];
  if ((result->flags & 0x1D) != 1)
  {
    *&a4->value = *&result->value;
    a4->epoch = result->epoch;
    return result;
  }

  v5 = a3;
  v6 = a2;
  v7 = 0;
  v8 = a3 - 1;
  v9 = 1;
  v10 = 999999;
  v55 = a3 - 1;
  while (1)
  {
    if (v8 < 0)
    {
      *&time[0].start.value = *&v4->value;
      time[0].start.epoch = v4->epoch;
      lhs = *(v6 + 48);
      CMTimeSubtract(&time1.start, &time[0].start, &lhs);
      *&time[0].start.value = *v6;
      time[0].start.epoch = *(v6 + 16);
      p_time1 = &time1;
      p_rhs = time;
      v35 = a4;
      return CMTimeAdd(v35, &p_time1->start, &p_rhs->start);
    }

    if (v7 >= v5)
    {
      break;
    }

    if (v7 > v8)
    {
      goto LABEL_25;
    }

    v11 = v9;
    v59 = v7;
    v60 = v8;
    v12 = (v7 + v8) >> 1;
    v13 = v6 + 96 * v12;
    v90.value = v4->value;
    flags = v4->flags;
    v90.timescale = v4->timescale;
    epoch = v4->epoch;
    v16 = (v13 + 48);
    value = *(v13 + 48);
    v17 = *(v13 + 60);
    timescale = *(v13 + 56);
    v18 = *(v13 + 64);
    v19 = (flags & 0x1F) == 3 || (v17 & 0x1F) == 3;
    if (v19 && (memset(&time1, 0, 24), lhs.value = v4->value, lhs.timescale = v4->timescale, lhs.flags = flags, lhs.epoch = epoch, rhs.value = *v16, rhs.timescale = *(v13 + 56), rhs.flags = v17, rhs.epoch = v18, CMTimeSubtract(&time[0].start, &lhs, &rhs), CMTimeAbsoluteValue(&time1.start, &time[0].start), CMTimeMake(&time[0].start, 1, 1000000000), lhs = time1.start, CMTimeCompare(&lhs, &time[0].start) <= 0))
    {
      v20 = v11;
    }

    else
    {
      time1.start.value = v90.value;
      time1.start.timescale = v90.timescale;
      time1.start.flags = flags;
      time1.start.epoch = epoch;
      time[0].start.value = value;
      time[0].start.timescale = timescale;
      time[0].start.flags = v17;
      time[0].start.epoch = v18;
      v20 = v11;
      if (CMTimeCompare(&time1.start, &time[0].start) < 0)
      {
        v8 = v12 - 1;
        v7 = v59;
        goto LABEL_23;
      }
    }

    if (*(v13 + 88))
    {
      memset(&v90, 0, sizeof(v90));
    }

    else
    {
      *&time1.start.value = *v16;
      time1.start.epoch = *(v13 + 64);
      *&time[0].start.value = *(v13 + 72);
      time[0].start.epoch = 0;
      CMTimeAdd(&v90, &time1.start, &time[0].start);
    }

    value = v4->value;
    v21 = v4->flags;
    timescale = v4->timescale;
    v22 = v4->epoch;
    if ((v21 & 0x1F) != 3 && (v90.flags & 0x1F) != 3 || (memset(&time1, 0, 24), lhs.value = v4->value, lhs.timescale = v4->timescale, lhs.flags = v21, lhs.epoch = v22, rhs = v90, CMTimeSubtract(&time[0].start, &lhs, &rhs), CMTimeAbsoluteValue(&time1.start, &time[0].start), CMTimeMake(&time[0].start, 1, 1000000000), lhs = time1.start, CMTimeCompare(&lhs, &time[0].start) > 0))
    {
      time1.start.value = value;
      time1.start.timescale = timescale;
      time1.start.flags = v21;
      time1.start.epoch = v22;
      time[0].start = v90;
      if (CMTimeCompare(&time1.start, &time[0].start) < 0)
      {
        lhs = *v4;
        v38 = *(v13 + 64);
        *&time1.start.value = *v16;
        *&time1.start.epoch = v38;
        *&time1.duration.timescale = *(v13 + 80);
        v39 = *(v13 + 16);
        *&time[0].start.value = *v13;
        *&time[0].start.epoch = v39;
        *&time[0].duration.timescale = *(v13 + 32);
        return CMTimeMapTimeFromRangeToRange(a4, &lhs, &time1, time);
      }
    }

    v7 = v12 + 1;
    v8 = v60;
LABEL_23:
    v9 = v20 + 1;
    --v10;
    v5 = a3;
    v6 = a2;
    if (!v10)
    {
      v9 = 1000000;
LABEL_25:
      if (v7 <= 1)
      {
        v23 = 1;
      }

      else
      {
        v23 = v7;
      }

      v24 = v23 - 1;
      if (v24 >= v5)
      {
        v24 = v55;
      }

      v61 = v24;
      if (v7 >= v5)
      {
        v25 = v55;
      }

      else
      {
        v25 = v7;
      }

      LODWORD(rhs.value) = 0;
      LOBYTE(v90.value) = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CE60, 0, &rhs, &v90);
      v27 = rhs.value;
      v28 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v90.value);
      v30 = v27 & 0xFFFFFFFE;
      if (v28)
      {
        v30 = v27;
      }

      if (v30)
      {
        *&time1.start.value = *&v4->value;
        time1.start.epoch = v4->epoch;
        Seconds = CMTimeGetSeconds(&time1.start);
        *&time1.start.value = *(v6 + 48);
        time1.start.epoch = *(v6 + 64);
        v32 = CMTimeGetSeconds(&time1.start);
        if (*(v6 + 88))
        {
          memset(&lhs, 0, sizeof(lhs));
        }

        else
        {
          *&time1.start.value = *(v6 + 48);
          time1.start.epoch = *(v6 + 64);
          *&time[0].start.value = *(v6 + 72);
          time[0].start.epoch = 0;
          CMTimeAdd(&lhs, &time1.start, &time[0].start);
        }

        v40 = CMTimeGetSeconds(&lhs);
        v41 = v6 + 96 * v61;
        *&time1.start.value = *(v41 + 48);
        time1.start.epoch = *(v41 + 64);
        v42 = CMTimeGetSeconds(&time1.start);
        if (*(v41 + 88))
        {
          memset(&lhs, 0, sizeof(lhs));
        }

        else
        {
          *&time1.start.value = *(v41 + 48);
          time1.start.epoch = *(v41 + 64);
          *&time[0].start.value = *(v41 + 72);
          time[0].start.epoch = 0;
          CMTimeAdd(&lhs, &time1.start, &time[0].start);
        }

        v43 = CMTimeGetSeconds(&lhs);
        v44 = v6 + 96 * v25;
        *&time1.start.value = *(v44 + 48);
        time1.start.epoch = *(v44 + 64);
        v45 = CMTimeGetSeconds(&time1.start);
        if (*(v44 + 88))
        {
          memset(&lhs, 0, sizeof(lhs));
        }

        else
        {
          *&time1.start.value = *(v44 + 48);
          time1.start.epoch = *(v44 + 64);
          *&time[0].start.value = *(v44 + 72);
          time[0].start.epoch = 0;
          CMTimeAdd(&lhs, &time1.start, &time[0].start);
        }

        v46 = CMTimeGetSeconds(&lhs);
        v47 = v6 + 96 * v55;
        *&time1.start.value = *(v47 + 48);
        time1.start.epoch = *(v47 + 64);
        v48 = CMTimeGetSeconds(&time1.start);
        if (*(v47 + 88))
        {
          memset(&lhs, 0, sizeof(lhs));
        }

        else
        {
          *&time1.start.value = *(v47 + 48);
          time1.start.epoch = *(v47 + 64);
          *&time[0].start.value = *(v47 + 72);
          time[0].start.epoch = 0;
          CMTimeAdd(&lhs, &time1.start, &time[0].start);
        }

        v49 = CMTimeGetSeconds(&lhs);
        LODWORD(time1.start.value) = 136319234;
        *(&time1.start.value + 4) = "CMSpeedRampMapTimeFromTargetToSource";
        LOWORD(time1.start.flags) = 2048;
        *(&time1.start.flags + 2) = Seconds;
        HIWORD(time1.start.epoch) = 1024;
        LODWORD(time1.duration.value) = v5;
        WORD2(time1.duration.value) = 2048;
        *(&time1.duration.value + 6) = v32;
        HIWORD(time1.duration.flags) = 2048;
        time1.duration.epoch = v40;
        v65 = 1024;
        v66 = v61;
        v67 = 2048;
        v68 = v42;
        v69 = 2048;
        v70 = v43;
        v71 = 1024;
        v72 = v25;
        v73 = 2048;
        v74 = v45;
        v75 = 2048;
        v76 = v46;
        v77 = 1024;
        v78 = v5 - 1;
        v79 = 2048;
        v80 = v48;
        v81 = 2048;
        v82 = v49;
        v83 = 1024;
        v84 = v7;
        v85 = 1024;
        v86 = v8;
        v87 = 1024;
        v88 = v9;
        v37 = _os_log_send_and_compose_impl();
        LOBYTE(v27) = rhs.value;
      }

      else
      {
        v37 = 0;
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1EAF1CE60, 0, 1, v37, v37 != time, v27, 0, v29);
      *&lhs.value = *&v4->value;
      v50 = (v6 + 96 * v25);
      v51 = v50[4];
      v52 = v50[5];
      v53 = v50[2];
      *&time1.start.value = v50[3];
      *&time1.start.epoch = v51;
      *&time1.duration.timescale = v52;
      v54 = v50[1];
      *&time[0].start.value = *v50;
      *&time[0].start.epoch = v54;
      lhs.epoch = v4->epoch;
      *&time[0].duration.timescale = v53;
      return CMTimeMapTimeFromRangeToRange(a4, &lhs, &time1, time);
    }
  }

  v36 = v6 + 96 * v55;
  if (*(v36 + 88))
  {
    memset(&rhs, 0, sizeof(rhs));
  }

  else
  {
    *&time1.start.value = *(v36 + 48);
    time1.start.epoch = *(v36 + 64);
    *&time[0].start.value = *(v36 + 72);
    time[0].start.epoch = 0;
    CMTimeAdd(&rhs, &time1.start, &time[0].start);
  }

  *&time1.start.value = *&v4->value;
  time1.start.epoch = v4->epoch;
  CMTimeSubtract(&lhs, &time1.start, &rhs);
  if (*(v36 + 40))
  {
    memset(&rhs, 0, sizeof(rhs));
  }

  else
  {
    *&time1.start.value = *v36;
    time1.start.epoch = *(v36 + 16);
    *&time[0].start.value = *(v36 + 24);
    time[0].start.epoch = 0;
    CMTimeAdd(&rhs, &time1.start, &time[0].start);
  }

  p_time1 = &lhs;
  p_rhs = &rhs;
  v35 = a4;
  return CMTimeAdd(v35, &p_time1->start, &p_rhs->start);
}

CMTime *CMSpeedRampMapTimeFromSourceToTarget@<X0>(CMTime *result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, CMTime *a4@<X8>)
{
  v4 = result;
  v88 = *MEMORY[0x1E69E9840];
  if ((result->flags & 0x1D) == 1)
  {
    v5 = a3;
    v6 = a2;
    v7 = 0;
    v8 = a3 - 1;
    v9 = 1;
    v10 = 999999;
    v51 = a3 - 1;
    while (1)
    {
      if (v8 < 0)
      {
        *&time[0].start.value = *&v4->value;
        time[0].start.epoch = v4->epoch;
        lhs = *v6;
        CMTimeSubtract(&time1.start, &time[0].start, &lhs);
        *&time[0].start.value = *(v6 + 48);
        time[0].start.epoch = *(v6 + 64);
        p_time1 = &time1;
        p_rhs = time;
        v32 = a4;
        return CMTimeAdd(v32, &p_time1->start, &p_rhs->start);
      }

      if (v7 >= v5)
      {
        break;
      }

      if (v7 > v8)
      {
        goto LABEL_24;
      }

      v55 = v8;
      v11 = (v7 + v8) >> 1;
      v12 = v6 + 96 * v11;
      v85.value = v4->value;
      flags = v4->flags;
      v85.timescale = v4->timescale;
      epoch = v4->epoch;
      value = *v12;
      v15 = *(v12 + 12);
      timescale = *(v12 + 8);
      v16 = *(v12 + 16);
      v17 = (flags & 0x1F) == 3 || (v15 & 0x1F) == 3;
      if ((!v17 || (memset(&time1, 0, 24), lhs.value = v4->value, lhs.timescale = v4->timescale, lhs.flags = flags, lhs.epoch = epoch, rhs.value = *v12, rhs.timescale = *(v12 + 8), rhs.flags = v15, rhs.epoch = v16, CMTimeSubtract(&time[0].start, &lhs, &rhs), CMTimeAbsoluteValue(&time1.start, &time[0].start), CMTimeMake(&time[0].start, 1, 1000000000), lhs = time1.start, CMTimeCompare(&lhs, &time[0].start) > 0)) && (time1.start.value = v85.value, time1.start.timescale = v85.timescale, time1.start.flags = flags, time1.start.epoch = epoch, time[0].start.value = value, time[0].start.timescale = timescale, time[0].start.flags = v15, time[0].start.epoch = v16, CMTimeCompare(&time1.start, &time[0].start) < 0))
      {
        v8 = v11 - 1;
      }

      else
      {
        if (*(v12 + 40))
        {
          memset(&v85, 0, sizeof(v85));
        }

        else
        {
          *&time1.start.value = *v12;
          time1.start.epoch = *(v12 + 16);
          *&time[0].start.value = *(v12 + 24);
          time[0].start.epoch = 0;
          CMTimeAdd(&v85, &time1.start, &time[0].start);
        }

        value = v4->value;
        v18 = v4->flags;
        timescale = v4->timescale;
        v19 = v4->epoch;
        if ((v18 & 0x1F) != 3 && (v85.flags & 0x1F) != 3 || (memset(&time1, 0, 24), lhs.value = v4->value, lhs.timescale = v4->timescale, lhs.flags = v18, lhs.epoch = v19, rhs = v85, CMTimeSubtract(&time[0].start, &lhs, &rhs), CMTimeAbsoluteValue(&time1.start, &time[0].start), CMTimeMake(&time[0].start, 1, 1000000000), lhs = time1.start, CMTimeCompare(&lhs, &time[0].start) > 0))
        {
          time1.start.value = value;
          time1.start.timescale = timescale;
          time1.start.flags = v18;
          time1.start.epoch = v19;
          time[0].start = v85;
          if (CMTimeCompare(&time1.start, &time[0].start) < 0)
          {
            *&lhs.value = *&v4->value;
            v35 = *(v12 + 16);
            *&time1.start.value = *v12;
            *&time1.start.epoch = v35;
            v36 = *(v12 + 48);
            *&time1.duration.timescale = *(v12 + 32);
            v37 = *(v12 + 64);
            v38 = *(v12 + 80);
            goto LABEL_55;
          }
        }

        v7 = v11 + 1;
        v8 = v55;
      }

      ++v9;
      --v10;
      v5 = a3;
      v6 = a2;
      if (!v10)
      {
        v9 = 1000000;
LABEL_24:
        if (v7 <= 1)
        {
          v20 = 1;
        }

        else
        {
          v20 = v7;
        }

        v21 = v20 - 1;
        if (v21 >= v5)
        {
          v21 = v51;
        }

        v56 = v21;
        if (v7 >= v5)
        {
          v22 = v51;
        }

        else
        {
          v22 = v7;
        }

        LODWORD(rhs.value) = 0;
        LOBYTE(v85.value) = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CE60, 0, &rhs, &v85);
        v24 = rhs.value;
        v25 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v85.value);
        v27 = v24 & 0xFFFFFFFE;
        if (v25)
        {
          v27 = v24;
        }

        if (v27)
        {
          *&time1.start.value = *&v4->value;
          time1.start.epoch = v4->epoch;
          Seconds = CMTimeGetSeconds(&time1.start);
          *&time1.start.value = *v6;
          time1.start.epoch = *(v6 + 16);
          v29 = CMTimeGetSeconds(&time1.start);
          if (*(v6 + 40))
          {
            memset(&lhs, 0, sizeof(lhs));
          }

          else
          {
            *&time1.start.value = *v6;
            time1.start.epoch = *(v6 + 16);
            *&time[0].start.value = *(v6 + 24);
            time[0].start.epoch = 0;
            CMTimeAdd(&lhs, &time1.start, &time[0].start);
          }

          v39 = CMTimeGetSeconds(&lhs);
          v40 = v6 + 96 * v56;
          *&time1.start.value = *v40;
          time1.start.epoch = *(v40 + 16);
          v41 = CMTimeGetSeconds(&time1.start);
          if (*(v40 + 40))
          {
            memset(&lhs, 0, sizeof(lhs));
          }

          else
          {
            *&time1.start.value = *v40;
            time1.start.epoch = *(v40 + 16);
            *&time[0].start.value = *(v40 + 24);
            time[0].start.epoch = 0;
            CMTimeAdd(&lhs, &time1.start, &time[0].start);
          }

          v42 = CMTimeGetSeconds(&lhs);
          v43 = v6 + 96 * v22;
          *&time1.start.value = *v43;
          time1.start.epoch = *(v43 + 16);
          v44 = CMTimeGetSeconds(&time1.start);
          if (*(v43 + 40))
          {
            memset(&lhs, 0, sizeof(lhs));
          }

          else
          {
            *&time1.start.value = *v43;
            time1.start.epoch = *(v43 + 16);
            *&time[0].start.value = *(v43 + 24);
            time[0].start.epoch = 0;
            CMTimeAdd(&lhs, &time1.start, &time[0].start);
          }

          v45 = CMTimeGetSeconds(&lhs);
          v46 = v6 + 96 * v51;
          *&time1.start.value = *v46;
          time1.start.epoch = *(v46 + 16);
          v47 = CMTimeGetSeconds(&time1.start);
          if (*(v46 + 40))
          {
            memset(&lhs, 0, sizeof(lhs));
          }

          else
          {
            *&time1.start.value = *v46;
            time1.start.epoch = *(v46 + 16);
            *&time[0].start.value = *(v46 + 24);
            time[0].start.epoch = 0;
            CMTimeAdd(&lhs, &time1.start, &time[0].start);
          }

          v48 = CMTimeGetSeconds(&lhs);
          LODWORD(time1.start.value) = 136319234;
          *(&time1.start.value + 4) = "CMSpeedRampMapTimeFromSourceToTarget";
          LOWORD(time1.start.flags) = 2048;
          *(&time1.start.flags + 2) = Seconds;
          HIWORD(time1.start.epoch) = 1024;
          LODWORD(time1.duration.value) = v5;
          WORD2(time1.duration.value) = 2048;
          *(&time1.duration.value + 6) = v29;
          HIWORD(time1.duration.flags) = 2048;
          time1.duration.epoch = v39;
          v60 = 1024;
          v61 = v56;
          v62 = 2048;
          v63 = v41;
          v64 = 2048;
          v65 = v42;
          v66 = 1024;
          v67 = v22;
          v68 = 2048;
          v69 = v44;
          v70 = 2048;
          v71 = v45;
          v72 = 1024;
          v73 = v5 - 1;
          v74 = 2048;
          v75 = v47;
          v76 = 2048;
          v77 = v48;
          v78 = 1024;
          v79 = v7;
          v80 = 1024;
          v81 = v8;
          v82 = 1024;
          v83 = v9;
          v34 = _os_log_send_and_compose_impl();
          LOBYTE(v24) = rhs.value;
        }

        else
        {
          v34 = 0;
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1EAF1CE60, 0, 1, v34, v34 != time, v24, 0, v26);
        *&lhs.value = *&v4->value;
        v49 = (v6 + 96 * v22);
        v50 = v49[1];
        *&time1.start.value = *v49;
        *&time1.start.epoch = v50;
        v36 = v49[3];
        *&time1.duration.timescale = v49[2];
        v37 = v49[4];
        v38 = v49[5];
LABEL_55:
        *&time[0].start.value = v36;
        *&time[0].start.epoch = v37;
        lhs.epoch = v4->epoch;
        *&time[0].duration.timescale = v38;
        return CMTimeMapTimeFromRangeToRange(a4, &lhs, &time1, time);
      }
    }

    v33 = v6 + 96 * v51;
    if (*(v33 + 40))
    {
      memset(&rhs, 0, sizeof(rhs));
    }

    else
    {
      *&time1.start.value = *v33;
      time1.start.epoch = *(v33 + 16);
      *&time[0].start.value = *(v33 + 24);
      time[0].start.epoch = 0;
      CMTimeAdd(&rhs, &time1.start, &time[0].start);
    }

    *&time1.start.value = *&v4->value;
    time1.start.epoch = v4->epoch;
    CMTimeSubtract(&lhs, &time1.start, &rhs);
    if (*(v33 + 88))
    {
      memset(&rhs, 0, sizeof(rhs));
    }

    else
    {
      *&time1.start.value = *(v33 + 48);
      time1.start.epoch = *(v33 + 64);
      *&time[0].start.value = *(v33 + 72);
      time[0].start.epoch = 0;
      CMTimeAdd(&rhs, &time1.start, &time[0].start);
    }

    p_time1 = &lhs;
    p_rhs = &rhs;
    v32 = a4;
    return CMTimeAdd(v32, &p_time1->start, &p_rhs->start);
  }

  else
  {
    *&a4->value = *&result->value;
    a4->epoch = result->epoch;
  }

  return result;
}

double CMFindFirstDivergenceBetweenTimeMappingArrays(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, CMTime *a5, CMTime *a6, CMTime *a7, CMTime *a8)
{
  v109 = *MEMORY[0x1E69E9840];
  *&v96.value = *&kCMTimeZero.value;
  v96.epoch = 0;
  *&v95.value = *&kCMTimeZero.value;
  v95.epoch = 0;
  memset(&v94, 0, sizeof(v94));
  memset(&start, 0, sizeof(start));
  if (a1)
  {
    v12 = a2;
  }

  else
  {
    v12 = 0;
  }

  if (a3)
  {
    v13 = a4;
  }

  else
  {
    v13 = 0;
  }

  v80 = v13;
  if (v12)
  {
    v15 = 0;
    v16 = a1 + 48;
    v17 = 1;
    while (1)
    {
      if (*(v16 - 8))
      {
        memset(&time1, 0, 24);
      }

      else
      {
        *&lhs[0].start.value = *(v16 - 48);
        lhs[0].start.epoch = *(v16 - 32);
        *&rhs.start.value = *(v16 - 24);
        rhs.start.epoch = 0;
        CMTimeAdd(&time1.start, &lhs[0].start, &rhs.start);
      }

      *&lhs[0].start.value = *&a5->value;
      lhs[0].start.epoch = a5->epoch;
      if (CMTimeCompare(&time1.start, &lhs[0].start) >= 1)
      {
        if (*(v16 + 40))
        {
          memset(&time1, 0, 24);
        }

        else
        {
          *&lhs[0].start.value = *v16;
          lhs[0].start.epoch = *(v16 + 16);
          *&rhs.start.value = *(v16 + 24);
          rhs.start.epoch = 0;
          CMTimeAdd(&time1.start, &lhs[0].start, &rhs.start);
        }

        *&lhs[0].start.value = *&a6->value;
        lhs[0].start.epoch = a6->epoch;
        if (CMTimeCompare(&time1.start, &lhs[0].start) > 0)
        {
          break;
        }
      }

      v17 = ++v15 < a2;
      v16 += 96;
      if (a2 == v15)
      {
        v15 = v12;
        break;
      }
    }

    v13 = v80;
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

  v79 = v12;
  v18 = 0;
  if (v13)
  {
    v19 = a3 + 48;
    v20 = 1;
    while (1)
    {
      if (*(v19 - 8))
      {
        memset(&time1, 0, 24);
      }

      else
      {
        *&lhs[0].start.value = *(v19 - 48);
        lhs[0].start.epoch = *(v19 - 32);
        *&rhs.start.value = *(v19 - 24);
        rhs.start.epoch = 0;
        CMTimeAdd(&time1.start, &lhs[0].start, &rhs.start);
      }

      *&lhs[0].start.value = *&a5->value;
      lhs[0].start.epoch = a5->epoch;
      if (CMTimeCompare(&time1.start, &lhs[0].start) >= 1)
      {
        if (*(v19 + 40))
        {
          memset(&time1, 0, 24);
        }

        else
        {
          *&lhs[0].start.value = *v19;
          lhs[0].start.epoch = *(v19 + 16);
          *&rhs.start.value = *(v19 + 24);
          rhs.start.epoch = 0;
          CMTimeAdd(&time1.start, &lhs[0].start, &rhs.start);
        }

        *&lhs[0].start.value = *&a6->value;
        lhs[0].start.epoch = a6->epoch;
        if (CMTimeCompare(&time1.start, &lhs[0].start) > 0)
        {
          break;
        }
      }

      v20 = ++v18 < a4;
      v19 += 96;
      if (a4 == v18)
      {
        v18 = v80;
        break;
      }
    }

    if (v17)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v20 = 0;
    if (v17)
    {
LABEL_34:
      v21 = (a1 + 96 * v15);
      v22 = v21[1];
      *&lhs[0].start.value = *v21;
      *&lhs[0].start.epoch = v22;
      *&lhs[0].duration.timescale = v21[2];
      *&rhs.start.value = *&a5->value;
      rhs.start.epoch = a5->epoch;
      v23 = CMTimeRangeContainsTime(lhs, &rhs.start);
      v24 = v21[4];
      *&lhs[0].start.value = v21[3];
      *&lhs[0].start.epoch = v24;
      *&lhs[0].duration.timescale = v21[5];
      *&rhs.start.value = *&a6->value;
      rhs.start.epoch = a6->epoch;
      v25 = v23 != 0;
      v26 = CMTimeRangeContainsTime(lhs, &rhs.start) != 0;
      goto LABEL_37;
    }
  }

  v25 = 0;
  v26 = 0;
LABEL_37:
  v77 = a1;
  if (v20)
  {
    v27 = a3;
    v28 = (a3 + 96 * v18);
    v29 = v28[1];
    *&lhs[0].start.value = *v28;
    *&lhs[0].start.epoch = v29;
    *&lhs[0].duration.timescale = v28[2];
    *&rhs.start.value = *&a5->value;
    rhs.start.epoch = a5->epoch;
    v30 = CMTimeRangeContainsTime(lhs, &rhs.start);
    v31 = v28[4];
    *&lhs[0].start.value = v28[3];
    *&lhs[0].start.epoch = v31;
    *&lhs[0].duration.timescale = v28[5];
    *&rhs.start.value = *&a6->value;
    rhs.start.epoch = a6->epoch;
    v32 = v30 != 0;
    v33 = CMTimeRangeContainsTime(lhs, &rhs.start) != 0;
  }

  else
  {
    v32 = 0;
    v33 = 0;
    v27 = a3;
  }

  memset(lhs, 0, sizeof(lhs));
  cmtime_getMappingFromArrayOrExtrapolate(v77, v79, v15, lhs);
  v34 = *&a5->value;
  rhs = lhs[0];
  *&v90.value = v34;
  *&time1.start.value = *&lhs[1].start.value;
  *&time1.start.epoch = *&lhs[1].start.epoch;
  memset(&v91, 0, sizeof(v91));
  v90.epoch = a5->epoch;
  *&time1.duration.timescale = *&lhs[1].duration.timescale;
  CMTimeMapTimeFromRangeToRange(&v91, &v90, &rhs, &time1);
  *&v87.value = *&a6->value;
  rhs = lhs[1];
  *&time1.start.value = *&lhs[0].start.value;
  *&time1.start.epoch = *&lhs[0].start.epoch;
  memset(&v90, 0, sizeof(v90));
  v87.epoch = a6->epoch;
  *&time1.duration.timescale = *&lhs[0].duration.timescale;
  CMTimeMapTimeFromRangeToRange(&v90, &v87, &rhs, &time1);
  cmtime_getMappingFromArrayOrExtrapolate(v27, v80, v18, lhs);
  *&v86.value = *&a5->value;
  rhs = lhs[0];
  *&time1.start.value = *&lhs[1].start.value;
  *&time1.start.epoch = *&lhs[1].start.epoch;
  memset(&v87, 0, sizeof(v87));
  v86.epoch = a5->epoch;
  *&time1.duration.timescale = *&lhs[1].duration.timescale;
  CMTimeMapTimeFromRangeToRange(&v87, &v86, &rhs, &time1);
  *&time2.value = *&a6->value;
  rhs = lhs[1];
  *&time1.start.value = *&lhs[0].start.value;
  *&time1.start.epoch = *&lhs[0].start.epoch;
  memset(&v86, 0, sizeof(v86));
  time2.epoch = a6->epoch;
  *&time1.duration.timescale = *&lhs[0].duration.timescale;
  CMTimeMapTimeFromRangeToRange(&v86, &time2, &rhs, &time1);
  if ((v25 || v32) && (rhs.start = v91, time1.start = v87, CMTimeCompareExtraApproximately(&rhs.start, &time1.start)))
  {
    v94 = *a5;
    rhs.start = v91;
    time1.start = v87;
    CMTimeMinimum(&start, &rhs.start, &time1.start);
    v35 = 0;
  }

  else
  {
    v35 = 1;
  }

  v36 = v79;
  if (v26 || v33)
  {
    rhs.start = v90;
    time1.start = v86;
    if (CMTimeCompareExtraApproximately(&rhs.start, &time1.start))
    {
      time1.start = v90;
      time2 = v86;
      CMTimeMinimum(&rhs.start, &time1.start, &time2);
      time1.start = v94;
      CMTimeMinimum(&v94, &time1.start, &rhs.start);
      time1.start = start;
      time2 = *a6;
      CMTimeMinimum(&rhs.start, &time1.start, &time2);
      start = rhs.start;
LABEL_103:
      *&time1.start.value = *&a5->value;
      time1.start.epoch = a5->epoch;
      time2 = v94;
      CMTimeMaximum(&rhs.start, &time1.start, &time2);
      v94 = rhs.start;
      *&time1.start.value = *&a6->value;
      time1.start.epoch = a6->epoch;
      time2 = start;
      CMTimeMaximum(&rhs.start, &time1.start, &time2);
      *&v40 = rhs.start.value;
      start = rhs.start;
      v45 = a8;
      goto LABEL_104;
    }
  }

  if ((v35 & 1) == 0)
  {
    goto LABEL_103;
  }

  *&rhs.start.value = *&a5->value;
  rhs.start.epoch = a5->epoch;
  time1.start = v90;
  v37 = CMTimeCompare(&rhs.start, &time1.start);
  if (v37 < 0)
  {
    v38 = a6;
  }

  else
  {
    v38 = a5;
  }

  v39 = &v90;
  if (v37 >= 0)
  {
    v39 = &v91;
  }

  v96 = *v38;
  v40 = *&v39->value;
  v95 = *v39;
  v41 = v80;
  v42 = v18 < v80;
  v43 = v15 < v79;
  v44 = a3;
  v45 = a8;
  if (v15 < v79 || v18 < v80)
  {
    while (v43)
    {
      v46 = v77 + 96 * v15;
      if (!v42)
      {
        v64 = *(v46 + 40);
        *&v104[16] = *(v46 + 32);
        v65 = *(v46 + 88);
        *&v102[16] = *(v46 + 80);
        v66 = *(v46 + 16);
        v103 = *v46;
        *v104 = v66;
        v67 = *(v46 + 64);
        v101 = *(v46 + 48);
        *v102 = v67;
        *&rhs.start.value = *(v46 + 24);
        rhs.start.epoch = v64;
        *&time1.start.value = *(v46 + 72);
        time1.start.epoch = v65;
        if (CMTimeCompareExtraApproximately(&rhs.start, &time1.start))
        {
LABEL_109:
          v94 = v96;
          *&v40 = v95.value;
          start = v95;
          goto LABEL_104;
        }

        if (v64)
        {
          memset(&time2, 0, sizeof(time2));
        }

        else
        {
          *&rhs.start.value = v103;
          rhs.start.epoch = *v104;
          *&time1.start.value = *&v104[8];
          time1.start.epoch = 0;
          CMTimeAdd(&time2, &rhs.start, &time1.start);
        }

        v96 = time2;
        if (v65)
        {
          memset(&time2, 0, sizeof(time2));
        }

        else
        {
          *&rhs.start.value = v101;
          rhs.start.epoch = *v102;
          *&time1.start.value = *&v102[8];
          time1.start.epoch = 0;
          CMTimeAdd(&time2, &rhs.start, &time1.start);
        }

        ++v15;
        goto LABEL_85;
      }

      v47 = v45;
      v48 = *(v46 + 24);
      v49 = *(v46 + 32);
      v50 = *(v46 + 40);
      v99 = *(v46 + 48);
      v51 = *(v46 + 72);
      v100 = *(v46 + 64);
      v52 = *(v46 + 80);
      v73 = *(v46 + 84);
      v53 = *(v46 + 88);
      v54 = (v44 + 96 * v18);
      v83 = *v54;
      v55 = *(v54 + 3);
      v84 = *(v54 + 2);
      v56 = *(v54 + 4);
      v57 = *(v54 + 5);
      v58 = *(v54 + 9);
      v98 = *(v54 + 8);
      v97 = v54[3];
      v72 = *(v54 + 10);
      if (v48 * v58 * v56 * v52 != v51 * v55 * v49 * v72)
      {
        v94 = v96;
        *&v40 = v95.value;
        start = v95;
        v45 = v47;
        goto LABEL_104;
      }

      v75 = *(v54 + 11);
      memset(&time2, 0, sizeof(time2));
      if (v50)
      {
        memset(&time2, 0, sizeof(time2));
      }

      else
      {
        *&rhs.start.value = *v46;
        rhs.start.epoch = *(v46 + 16);
        time1.start.value = v48;
        *&time1.start.timescale = v49;
        time1.start.epoch = 0;
        v71 = v56;
        CMTimeAdd(&time2, &rhs.start, &time1.start);
        v56 = v71;
      }

      memset(&v82, 0, sizeof(v82));
      if (v57)
      {
        memset(&v82, 0, sizeof(v82));
      }

      else
      {
        *&rhs.start.value = v83;
        rhs.start.epoch = v84;
        time1.start.value = v55;
        *&time1.start.timescale = v56;
        time1.start.epoch = 0;
        CMTimeAdd(&v82, &rhs.start, &time1.start);
      }

      v45 = v47;
      rhs.start = time2;
      time1.start = v82;
      v68 = CMTimeCompareExtraApproximately(&rhs.start, &time1.start);
      if (v68 == 1)
      {
        v96 = v82;
        if (v75)
        {
          memset(&v81, 0, sizeof(v81));
        }

        else
        {
          *&rhs.start.value = v97;
          rhs.start.epoch = v98;
          time1.start.value = v58;
          *&time1.start.timescale = v72;
          time1.start.epoch = 0;
          CMTimeAdd(&v81, &rhs.start, &time1.start);
        }

        v44 = a3;
        v36 = v79;
        v41 = v80;
LABEL_99:
        ++v18;
LABEL_102:
        *&v40 = v81.value;
        *&v95.value = *&v81.value;
        epoch = v81.epoch;
LABEL_86:
        v95.epoch = epoch;
        goto LABEL_87;
      }

      if (!v68)
      {
        v96 = time2;
        v44 = a3;
        if (v53)
        {
          memset(&v81, 0, sizeof(v81));
        }

        else
        {
          *&rhs.start.value = v99;
          rhs.start.epoch = v100;
          time1.start.value = v51;
          time1.start.timescale = v52;
          time1.start.flags = v73;
          time1.start.epoch = 0;
          CMTimeAdd(&v81, &rhs.start, &time1.start);
        }

        v36 = v79;
        v41 = v80;
        ++v15;
        goto LABEL_99;
      }

      v44 = a3;
      if (v68 == -1)
      {
        v96 = time2;
        if (v53)
        {
          memset(&v81, 0, sizeof(v81));
        }

        else
        {
          *&rhs.start.value = v99;
          rhs.start.epoch = v100;
          time1.start.value = v51;
          time1.start.timescale = v52;
          time1.start.flags = v73;
          time1.start.epoch = 0;
          CMTimeAdd(&v81, &rhs.start, &time1.start);
        }

        v36 = v79;
        v41 = v80;
        ++v15;
        goto LABEL_102;
      }

      v36 = v79;
      v41 = v80;
LABEL_87:
      v42 = v18 < v41;
      v43 = v15 < v36;
      if (v15 >= v36 && v18 >= v41)
      {
        goto LABEL_104;
      }
    }

    v59 = (v44 + 96 * v18);
    v60 = *(v59 + 5);
    *&v108[16] = *(v59 + 4);
    v61 = *(v59 + 11);
    *&v106[16] = *(v59 + 10);
    v62 = v59[1];
    v107 = *v59;
    *v108 = v62;
    v63 = v59[4];
    v105 = v59[3];
    *v106 = v63;
    *&rhs.start.value = *(v59 + 24);
    rhs.start.epoch = v60;
    *&time1.start.value = *(v59 + 72);
    time1.start.epoch = v61;
    if (CMTimeCompareExtraApproximately(&rhs.start, &time1.start))
    {
      goto LABEL_109;
    }

    if (v60)
    {
      memset(&time2, 0, sizeof(time2));
    }

    else
    {
      *&rhs.start.value = v107;
      rhs.start.epoch = *v108;
      *&time1.start.value = *&v108[8];
      time1.start.epoch = 0;
      CMTimeAdd(&time2, &rhs.start, &time1.start);
    }

    v96 = time2;
    if (v61)
    {
      memset(&time2, 0, sizeof(time2));
    }

    else
    {
      *&rhs.start.value = v105;
      rhs.start.epoch = *v106;
      *&time1.start.value = *&v106[8];
      time1.start.epoch = 0;
      CMTimeAdd(&time2, &rhs.start, &time1.start);
    }

    ++v18;
LABEL_85:
    *&v40 = time2.value;
    *&v95.value = *&time2.value;
    epoch = time2.epoch;
    goto LABEL_86;
  }

LABEL_104:
  if (a7)
  {
    *&v40 = v94.value;
    *a7 = v94;
  }

  if (v45)
  {
    *&v40 = start.value;
    *v45 = start;
  }

  return *&v40;
}