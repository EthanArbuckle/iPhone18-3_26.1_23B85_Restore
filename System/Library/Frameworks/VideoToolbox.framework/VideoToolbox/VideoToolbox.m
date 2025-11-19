uint64_t VTSelectAndCreateVideoDecoderInstanceInternal(uint64_t a1, uint64_t a2, int a3, CFDictionaryRef theDict, CFIndex a5, void *a6, _BYTE *a7, CFIndex *a8)
{
  LOBYTE(v59) = 0;
  LOBYTE(v65) = 0;
  v11 = MEMORY[0x1E695E480];
  if (!theDict)
  {
    goto LABEL_5;
  }

  v12 = *MEMORY[0x1E695E4C0];
  if (v12 == CFDictionaryGetValue(theDict, @"EnableHardwareAcceleratedVideoDecoder"))
  {
    v13 = OUTLINED_FUNCTION_10_2();
    if (!v13)
    {
      goto LABEL_25;
    }

    v17 = OUTLINED_FUNCTION_7_2();
    CFDictionaryRemoveValue(v17, v18);
    goto LABEL_10;
  }

  if (!CFDictionaryGetValue(theDict, @"EnableHardwareAcceleratedVideoDecoder"))
  {
LABEL_5:
    v13 = OUTLINED_FUNCTION_10_2();
    if (!v13)
    {
      goto LABEL_25;
    }

    v14 = *MEMORY[0x1E695E4D0];
    v15 = OUTLINED_FUNCTION_7_2();
    CFDictionarySetValue(v15, v16, v14);
    if (!theDict)
    {
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  v13 = 0;
LABEL_10:
  v19 = *MEMORY[0x1E695E4D0];
  if (v19 == CFDictionaryGetValue(theDict, @"RequireHardwareAcceleratedVideoDecoder") && !CFDictionaryGetValue(theDict, @"EnableHardwareAcceleratedVideoDecoder"))
  {
    if (!v13)
    {
      v13 = OUTLINED_FUNCTION_10_2();
      if (!v13)
      {
        goto LABEL_25;
      }
    }

    v20 = OUTLINED_FUNCTION_7_2();
    CFDictionarySetValue(v20, v21, v19);
  }

LABEL_15:
  if (a1 == 1635135537)
  {
    FigCFDictionaryGetBooleanIfPresent();
    FigCFDictionaryGetBooleanIfPresent();
    v22 = v65 != 0;
  }

  else
  {
    v22 = 0;
  }

  if (v22)
  {
    if (!v13)
    {
      v13 = OUTLINED_FUNCTION_10_2();
    }

    FigCFDictionarySetValue();
  }

  if (theDict && !v13)
  {
    v13 = CFRetain(theDict);
  }

LABEL_25:
  v63 = 0;
  v62 = 0;
  vtPopulateVideoDecoderRegistry();
  if (v13)
  {
    v23 = CFDictionaryGetValue(v13, @"DecoderID");
  }

  else
  {
    v23 = 0;
  }

  v24 = a1 == 1987063865 || a1 == 1903587385;
  if (v24 && !gVTAlreadyInDecodeServer)
  {
    LOBYTE(v59) = 0;
    FigCFDictionaryGetBooleanIfPresent();
    v40 = 0;
    v41 = 4294954390;
    goto LABEL_90;
  }

  if (!sVideoDecoderRegistry)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_5();
    v41 = FigSignalErrorAtGM();
    v27 = 0;
    goto LABEL_88;
  }

  v61 = 0;
  FigCFDictionaryGetInt64IfPresent();
  v59 = 0uLL;
  v60 = 0;
  if (v13)
  {
    v25 = *MEMORY[0x1E695E4D0];
    v26 = v25 == CFDictionaryGetValue(v13, @"RequireHardwareAcceleratedVideoDecoder");
  }

  else
  {
    v26 = 0;
  }

  *bytes = bswap32(a1);
  v28 = *v11;
  v29 = CFStringCreateWithBytes(*v11, bytes, 4, 0x600u, 0);
  v27 = v29;
  if (!v29)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_5();
    v39 = FigSignalErrorAtGM();
    goto LABEL_63;
  }

  *&v59 = v29;
  *(&v59 + 1) = v13;
  LOBYTE(v60) = v26;
  OUTLINED_FUNCTION_2_3();
  v30 = FigRegistryCopyFilteredItemList();
  if (v30)
  {
    goto LABEL_42;
  }

  v39 = vtCopyExpandedDecoderListForWrappers(v63, &v59, &v62, 0);
  if (v39)
  {
LABEL_63:
    v41 = v39;
    goto LABEL_64;
  }

  v31 = v62;
  if (v62)
  {
    if (v63)
    {
      CFRelease(v63);
      v31 = v62;
    }

    v63 = v31;
    v62 = 0;
    goto LABEL_43;
  }

LABEL_42:
  v31 = v63;
LABEL_43:
  v41 = 4294954390;
  if (!v31)
  {
    goto LABEL_88;
  }

  Count = CFArrayGetCount(v31);
  v41 = Count ? v30 : 4294954390;
  if (v30 || !Count)
  {
    goto LABEL_88;
  }

  if (!v23)
  {
    goto LABEL_84;
  }

  v33 = v63;
  v64 = 0;
  v65 = 0;
  v34 = CFArrayGetCount(v63);
  allocator = v28;
  theArray = CFArrayCreateMutable(v28, 0, MEMORY[0x1E695E9C0]);
  if (v34 < 1)
  {
LABEL_72:
    v41 = 0;
    v62 = theArray;
    v42 = 0;
    goto LABEL_73;
  }

  v35 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v33, v35);
    if (!ValueAtIndex)
    {
      goto LABEL_60;
    }

    v37 = ValueAtIndex;
    v38 = FigRegistryItemCopyDescription();
    if (v38)
    {
      break;
    }

    v38 = FigRegistryItemCopyMatchingInfo();
    if (v38)
    {
      break;
    }

    CFDictionaryGetValue(v65, @"CMClassImplementationID");
    if (FigCFEqual())
    {
      CFArrayAppendValue(theArray, v37);
      goto LABEL_72;
    }

    if (v65)
    {
      CFRelease(v65);
      v65 = 0;
    }

    if (v64)
    {
      CFRelease(v64);
      v64 = 0;
    }

LABEL_60:
    if (v34 == ++v35)
    {
      goto LABEL_72;
    }
  }

  v41 = v38;
  v42 = theArray;
LABEL_73:
  if (v65)
  {
    CFRelease(v65);
  }

  if (v64)
  {
    CFRelease(v64);
  }

  v28 = allocator;
  if (v42)
  {
    CFRelease(v42);
  }

  if (v41)
  {
LABEL_64:
    v40 = 0;
    if (v27)
    {
      goto LABEL_89;
    }

    goto LABEL_90;
  }

  if (v63)
  {
    CFRelease(v63);
  }

  v43 = v62;
  v63 = v62;
  v62 = 0;
  if (v43 && CFArrayGetCount(v43))
  {
LABEL_84:
    v44 = CFArrayGetCount(v63);
    MutableCopy = CFArrayCreateMutableCopy(v28, v44, v63);
    if (MutableCopy)
    {
      v46 = MutableCopy;
      v66.length = CFArrayGetCount(MutableCopy);
      v66.location = 0;
      CFArraySortValues(v46, v66, vtSortRegistryItemsByRating, v13);
      CFRelease(v63);
      v41 = 0;
      v63 = v46;
    }

    else
    {
      v41 = 0;
    }
  }

  else
  {
    v41 = 4294954390;
  }

LABEL_88:
  v40 = v63;
  v63 = 0;
  if (v27)
  {
LABEL_89:
    CFRelease(v27);
  }

LABEL_90:
  if (v62)
  {
    CFRelease(v62);
  }

  if (v63)
  {
    CFRelease(v63);
  }

  if (!v41)
  {
    if (a7)
    {
      *a7 = 0;
    }

    if (!a6)
    {
      goto LABEL_121;
    }

    if (v40)
    {
      v47 = CFArrayGetCount(v40);
      LODWORD(v48) = v47 > a5;
      if (v47)
      {
        v49 = 0;
        goto LABEL_103;
      }
    }

    else
    {
      v47 = 0;
      v48 = a5 >> 63;
    }

    v49 = -12906;
LABEL_103:
    if (v48)
    {
      v41 = v49;
    }

    else
    {
      v41 = 4294954390;
    }

    if (v41)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_5();
      FigSignalErrorAtGM();
      goto LABEL_122;
    }

    if (!v48)
    {
LABEL_121:
      v41 = 0;
      goto LABEL_122;
    }

    while (2)
    {
      *&v59 = 0;
      v65 = 0;
      CFArrayGetValueAtIndex(v40, a5);
      FigRegistryItemCopyMatchingInfo();
      FigRegistryItemCopyDescription();
      if (FigRegistryItemGetFactory())
      {
        *&v59 = 0;
LABEL_113:
        if (v65)
        {
          v50 = (v65)(a1, 0, 0, a2, a6);
        }

        else
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_0_5();
          v50 = FigSignalErrorAtGM();
        }
      }

      else
      {
        if (!v59)
        {
          goto LABEL_113;
        }

        v50 = (v59)(a1, a2, a6);
      }

      v41 = v50;
      if (!v50)
      {
        if (*a6 || (fig_log_get_emitter(), OUTLINED_FUNCTION_0_5(), v41 = FigSignalErrorAtGM(), !v41))
        {
          if (a8)
          {
            *a8 = a5;
          }

          v41 = 0;
          break;
        }
      }

      if (v47 == ++a5)
      {
        break;
      }

      continue;
    }
  }

LABEL_122:
  if (v40)
  {
    CFRelease(v40);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  return v41;
}

uint64_t VTRegisterVideoDecoderWithInfo(unsigned int a1, const __CFDictionary *a2, uint64_t a3)
{
  valuePtr = 0;
  MEMORY[0x193AE3010](&sCreateVideoDecoderRegistryOnce, vtCreateVideoDecoderRegistry);
  *bytes = bswap32(a1);
  v6 = *MEMORY[0x1E695E480];
  v7 = CFStringCreateWithBytes(*MEMORY[0x1E695E480], bytes, 4, 0x600u, 0);
  if (!v7)
  {
    fig_log_get_emitter();
    return FigSignalErrorAtGM();
  }

  v8 = v7;
  if (!a2)
  {
    Mutable = CFDictionaryCreateMutable(v6, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      goto LABEL_8;
    }

LABEL_19:
    fig_log_get_emitter();
    v13 = FigSignalErrorAtGM();
    v18 = v8;
    goto LABEL_20;
  }

  Value = CFDictionaryGetValue(a2, @"CMClassImplementationID");
  MutableCopy = CFDictionaryCreateMutableCopy(v6, 0, a2);
  if (!MutableCopy)
  {
    goto LABEL_19;
  }

  Mutable = MutableCopy;
  if (Value)
  {
    v12 = CFStringCreateMutableCopy(v6, 0, Value);
    CFStringAppendFormat(v12, 0, @".%@", v8);
    goto LABEL_9;
  }

LABEL_8:
  v14 = FigAtomicIncrement32();
  v12 = CFStringCreateMutable(v6, 0);
  CFStringAppendFormat(v12, 0, @"com.apple.videotoolbox.videodecoder.anon-%d", v14);
LABEL_9:
  CFDictionarySetValue(Mutable, @"VTCodecType", v8);
  v15 = CFStringCreateWithFormat(v6, 0, @"Dynamically Registered %@ Video Decoder", v8);
  v16 = CFNumberCreate(v6, kCFNumberSInt32Type, &valuePtr);
  if (v16)
  {
    CFDictionaryAddValue(Mutable, @"VTRating", v16);
    CFDictionarySetValue(Mutable, @"VTAllowSandboxedDecode", *MEMORY[0x1E695E4C0]);
    v17 = vtRegisterVideoDecoderInternal(v15, v12, Mutable, a3, 0);
  }

  else
  {
    fig_log_get_emitter();
    v17 = FigSignalErrorAtGM();
  }

  v13 = v17;
  if (v12)
  {
    CFRelease(v12);
  }

  CFRelease(Mutable);
  CFRelease(v8);
  if (v15)
  {
    CFRelease(v15);
  }

  if (v16)
  {
    v18 = v16;
LABEL_20:
    CFRelease(v18);
  }

  return v13;
}

CFDictionaryRef FigCreateIOSurfacePropertiesDictionary()
{
  v17 = *MEMORY[0x1E69E9840];
  keys[0] = 0;
  keys[1] = 0;
  values[0] = 0;
  values[1] = 0;
  v0 = MEMORY[0x1E696CD60];
  if ((hasMMU_checked & 1) == 0)
  {
    v13 = 16;
    v1 = IORegistryEntryFromPath(*MEMORY[0x1E696CD60], "IODeviceTree:/arm-io");
    if (v1)
    {
      v2 = v1;
      hasMMU_hasMMU = MEMORY[0x193AE3400](v1, "iommu-present", valuePtr, &v13) == 0;
      IOObjectRelease(v2);
    }

    hasMMU_checked = 1;
  }

  v3 = hasMMU_hasMMU;
  if ((hasVXD_checked & 1) == 0)
  {
    v4 = 0;
    v5 = *v0;
    while (1)
    {
      v6 = IOServiceMatching(hasVXD_vxdNames[v4]);
      MatchingService = IOServiceGetMatchingService(v5, v6);
      if (MatchingService)
      {
        break;
      }

      if (++v4 == 3)
      {
        goto LABEL_11;
      }
    }

    IOObjectRelease(MatchingService);
    hasVXD_hasSupport = 1;
LABEL_11:
    hasVXD_checked = 1;
  }

  v8 = hasVXD_hasSupport;
  MEMORY[0x193AE3010](&FigRegisterIOSurfacePixelTransferCapability_sOnlyRegisterOnce, FigRegisterIOSurfacePixelTransferCapabilityOnce);
  if (!v3)
  {
    keys[0] = *MEMORY[0x1E696CF90];
    values[0] = @"PurpleGfxMem";
    v11 = 1;
    return CFDictionaryCreate(*MEMORY[0x1E695E480], keys, values, v11, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  if ((v8 & 1) == 0)
  {
    v11 = 0;
    return CFDictionaryCreate(*MEMORY[0x1E695E480], keys, values, v11, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  valuePtr[0] = 1024;
  v9 = CFNumberCreate(0, kCFNumberIntType, valuePtr);
  keys[0] = *MEMORY[0x1E696CE60];
  values[0] = v9;
  v10 = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v9)
  {
    CFRelease(v9);
  }

  return v10;
}

uint64_t FigRegisterIOSurfacePixelTransferCapabilityOnce()
{
  v51[5] = *MEMORY[0x1E69E9840];
  v41 = 0u;
  v42 = 0u;
  v40 = 0u;
  memset(v39, 0, sizeof(v39));
  sUnsetYCbCrMatrix = CVYCbCrMatrixGetIntegerCodePointForString(0);
  sUnsetColorPrimaryMatrix = CVColorPrimariesGetIntegerCodePointForString(0);
  sUnsetTransferFunction = CVTransferFunctionGetIntegerCodePointForString(0);
  result = VTAvoidHardwarePixelTransfer();
  if (result)
  {
    return result;
  }

  scalerCapabilities(v39);
  v1 = LOBYTE(v39[0]) ? 15 : 13;
  v2 = BYTE1(v39[0]) ? v1 | 0x10 : v1;
  result = IOSurfaceAcceleratorCreate();
  if (result)
  {
    return result;
  }

  CFRelease(0);
  if ((hasH1CLCD_checked & 1) == 0)
  {
    v3 = *MEMORY[0x1E696CD60];
    v4 = IOServiceMatching("AppleH1CLCD");
    MatchingService = IOServiceGetMatchingService(v3, v4);
    hasH1CLCD_hasH1CLCDService = MatchingService != 0;
    if (MatchingService)
    {
      IOObjectRelease(MatchingService);
    }

    hasH1CLCD_checked = 1;
  }

  if (hasH1CLCD_hasH1CLCDService)
  {
    VTRegisterPixelTransferCapability(2033463856, 0x32767579u, v2, figIOSurfaceAcceleratedPixelTransfer_Validate, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_Transfer, figIOSurfaceAcceleratedPixelTransfer_Close);
    VTRegisterPixelTransferCapability(2033463856, 0x4C353635u, v2, figIOSurfaceAcceleratedPixelTransfer_Validate, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_Transfer, figIOSurfaceAcceleratedPixelTransfer_Close);
    VTRegisterPixelTransferCapability(2037741171, 0x42475241u, v2, figIOSurfaceAcceleratedPixelTransfer_Validate, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_Transfer, figIOSurfaceAcceleratedPixelTransfer_Close);
    VTRegisterPixelTransferCapability(2037741158, 0x42475241u, v2, figIOSurfaceAcceleratedPixelTransfer_Validate, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_Transfer, figIOSurfaceAcceleratedPixelTransfer_Close);
    VTRegisterPixelTransferCapability(2037741158, 0x79343230u, v2, figIOSurfaceAcceleratedPixelTransfer_Validate, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_Transfer, figIOSurfaceAcceleratedPixelTransfer_Close);
    VTRegisterPixelTransferCapability(2037741158, 0x66343230u, v2, figIOSurfaceAcceleratedPixelTransfer_Validate, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_Transfer, figIOSurfaceAcceleratedPixelTransfer_Close);
    VTRegisterPixelTransferCapability(1111970369, 0x79757673u, v2, figIOSurfaceAcceleratedPixelTransfer_Validate, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_Transfer, figIOSurfaceAcceleratedPixelTransfer_Close);
    VTRegisterPixelTransferCapability(1111970369, 0x79757666u, v2, figIOSurfaceAcceleratedPixelTransfer_Validate, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_Transfer, figIOSurfaceAcceleratedPixelTransfer_Close);
    VTRegisterPixelTransferCapability(2033463856, 0x42475241u, v2, figIOSurfaceAcceleratedPixelTransfer_Validate, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_Transfer, figIOSurfaceAcceleratedPixelTransfer_Close);
    VTRegisterPixelTransferCapability(875704438, 0x42475241u, v2, figIOSurfaceAcceleratedPixelTransfer_Validate, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_Transfer, figIOSurfaceAcceleratedPixelTransfer_Close);
    VTRegisterPixelTransferCapability(875704422, 0x42475241u, v2, figIOSurfaceAcceleratedPixelTransfer_Validate, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_Transfer, figIOSurfaceAcceleratedPixelTransfer_Close);
    VTRegisterPixelTransferCapability(875704422, 0x34323066u, v2, figIOSurfaceAcceleratedPixelTransfer_Validate, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_Transfer, figIOSurfaceAcceleratedPixelTransfer_Close);
    VTRegisterPixelTransferCapability(1111970369, 0x42475241u, v2, figIOSurfaceAcceleratedPixelTransfer_Validate, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_Transfer, figIOSurfaceAcceleratedPixelTransfer_Close);
    VTRegisterPixelTransferCapability(2037741171, 0x79757673u, v2, figIOSurfaceAcceleratedPixelTransfer_Validate, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_Transfer, figIOSurfaceAcceleratedPixelTransfer_Close);
    VTRegisterPixelTransferCapability(2037741158, 0x79757666u, v2, figIOSurfaceAcceleratedPixelTransfer_Validate, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_Transfer, figIOSurfaceAcceleratedPixelTransfer_Close);
    return VTRegisterPixelTransferCapability(2037741158, 0x34323066u, v2, figIOSurfaceAcceleratedPixelTransfer_Validate, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_Transfer, figIOSurfaceAcceleratedPixelTransfer_Close);
  }

  VTRegisterPixelTransferCapability(875704438, 0x34323076u, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
  VTRegisterPixelTransferCapability(875704422, 0x34323066u, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
  VTRegisterPixelTransferCapability(1111970369, 0x42475241u, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
  VTRegisterPixelTransferCapability(875704438, 0x42475241u, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
  VTRegisterPixelTransferCapability(875704422, 0x42475241u, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
  VTRegisterPixelTransferCapability(1111970369, 0x34323076u, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
  VTRegisterPixelTransferCapability(1111970369, 0x34323066u, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
  VTRegisterPixelTransferCapability(875704950, 0x42475241u, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
  VTRegisterPixelTransferCapability(875704934, 0x42475241u, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
  VTRegisterPixelTransferCapability(1111970369, 0x34323276u, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
  VTRegisterPixelTransferCapability(1111970369, 0x34323266u, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
  VTRegisterPixelTransferCapability(875836534, 0x42475241u, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
  VTRegisterPixelTransferCapability(875836518, 0x42475241u, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
  VTRegisterPixelTransferCapability(1111970369, 0x34343476u, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
  VTRegisterPixelTransferCapability(1111970369, 0x34343466u, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
  VTRegisterPixelTransferCapability(875704422, 0x4C353635u, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
  VTRegisterPixelTransferCapability(1278555701, 0x4C353635u, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
  VTRegisterPixelTransferCapability(1815162994, 0x42475241u, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
  VTRegisterPixelTransferCapability(1380411457, 0x42475241u, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
  VTRegisterPixelTransferCapability(1380411457, 0x52476841u, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
  if (BYTE2(v39[0]) == 1)
  {
    VTRegisterPixelTransferCapability(1111970369, 0x79757673u, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
    VTRegisterPixelTransferCapability(1111970369, 0x79757666u, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
    VTRegisterPixelTransferCapability(2037741171, 0x42475241u, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
    VTRegisterPixelTransferCapability(2037741158, 0x42475241u, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
    VTRegisterPixelTransferCapability(2037741158, 0x4C353635u, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
    VTRegisterPixelTransferCapability(2037741158, 0x34323066u, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
    VTRegisterPixelTransferCapability(2037741158, 0x79757666u, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
    VTRegisterPixelTransferCapability(2037741171, 0x79757673u, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
    VTRegisterPixelTransferCapability(875704438, 0x34323276u, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
    VTRegisterPixelTransferCapability(875704422, 0x34323266u, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
  }

  if (HIBYTE(v39[0]) == 1)
  {
    VTRegisterPixelTransferCapability(875704422, 0x34323076u, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
    VTRegisterPixelTransferCapability(875704438, 0x34323066u, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
    VTRegisterPixelTransferCapability(875704438, 0x34323266u, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
    VTRegisterPixelTransferCapability(875704422, 0x34323276u, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
  }

  if (BYTE6(v39[0]) == 1)
  {
    VTRegisterPixelTransferCapability(1278226488, 0x4C303038u, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
    VTRegisterPixelTransferCapability(1278226488, 0x42475241u, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
  }

  if (BYTE8(v39[0]) == 1)
  {
    VTRegisterPixelTransferCapability(1278226742, 0x4C303136u, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
  }

  if (BYTE3(v39[0]) == 1)
  {
    VTRegisterPixelTransferCapability(875704422, 0x52474241u, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
    VTRegisterPixelTransferCapability(875836518, 0x52474241u, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
  }

  if (BYTE4(v39[0]) == 1)
  {
    VTRegisterPixelTransferCapability(1999843442, 0x77333072u, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
    VTRegisterPixelTransferCapability(1999843442, 0x42475241u, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
    VTRegisterPixelTransferCapability(1999843442, 0x34323076u, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
    VTRegisterPixelTransferCapability(1999843442, 0x34323066u, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
    VTRegisterPixelTransferCapability(1111970369, 0x77333072u, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
    VTRegisterPixelTransferCapability(875704438, 0x77333072u, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
    VTRegisterPixelTransferCapability(875704422, 0x77333072u, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
  }

  if (BYTE5(v39[0]) == 1)
  {
    VTRegisterPixelTransferCapability(1647534392, 0x62336138u, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
  }

  if (BYTE11(v39[0]) == 1)
  {
    VTRegisterPixelTransferCapability(2016686642, 0x78343232u, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
    VTRegisterPixelTransferCapability(2019963442, 0x78663232u, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
  }

  if (BYTE4(v39[0]) == 1)
  {
    v6 = &v49[3];
    v48[0] = 1815162994;
    memset(&v49[3], 0, 64);
    v7 = BYTE14(v39[0]);
    if (BYTE14(v39[0]) == 1)
    {
      HIDWORD(v48[0]) = 644624754;
      v8 = 2;
    }

    else
    {
      v8 = 1;
    }

    qmemcpy(v49, "v024f024v224f224v444f444", 24);
    v9 = BYTE11(v39[0]);
    if (BYTE11(v39[0]) == 1)
    {
      v6 = &v49[4];
      v49[3] = 0x7866323278343232;
      v10 = 8;
    }

    else
    {
      v10 = 6;
    }

    if (BYTE12(v39[0]) == 1)
    {
      *v6 = 2016687156;
      *(v49 + v10 + 1) = 2019963956;
      v10 += 2;
    }

    if (BYTE9(v39[0]) == 1)
    {
      *(v49 + 4 * v10) = 0x7866347078343470;
      v10 += 2;
    }

    if (v7)
    {
      qmemcpy(v49 + 4 * v10, "0v8&0f8&2v8&2f8&4v8&4f8&", 24);
      if (v9)
      {
        *(&v49[3] + v10) = 645428786;
        v10 += 7;
      }

      else
      {
        v10 += 6;
      }
    }

    VTRegisterPixelTransferCapabilityMxN(v48, v8, v49, v10, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
  }

  if (BYTE13(v39[0]) == 1)
  {
    VTRegisterPixelTransferCapabilityMxN(FigRegisterIOSurfacePixelTransferCapabilityOnce_compressedHTPCPixelFormatTypes, 18, FigRegisterIOSurfacePixelTransferCapabilityOnce_uncompressedPixelFormatTypes, 52, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
    VTRegisterPixelTransferCapabilityMxN(FigRegisterIOSurfacePixelTransferCapabilityOnce_uncompressedPixelFormatTypes, 52, FigRegisterIOSurfacePixelTransferCapabilityOnce_compressedHTPCPixelFormatTypes, 18, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
    VTRegisterPixelTransferCapabilityMxN(FigRegisterIOSurfacePixelTransferCapabilityOnce_compressedHTPCPixelFormatTypes, 18, FigRegisterIOSurfacePixelTransferCapabilityOnce_compressedHTPCPixelFormatTypes, 18, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
  }

  if (BYTE14(v39[0]) == 1)
  {
    qmemcpy(v49, "0v8&2v8&4v8&0f8&2f8&4f8&0vx&2vx&4vx&0fx&2fx&4fx&0wx&2wx&4wx&p44&p4f&0vs&2vs&4vs&0vt&2vt&4vt&s4x&s4t&s4s&s2x&s2t&s2s&80v&82v&84v&0fh&2fh&4fh&80x&82x&84x&r3w&AGB&AhR&83b&h0L&80L&01L&61L&", sizeof(v49));
    if (BYTE12(v40) == 1)
    {
      qmemcpy(v50, "0v8-0f8-0v8/0f8/0v8|0f8|0vx-0fx-0vx/0fx/0vx|0fx|2vx-2fx-2vx/2fx/2vx|2fx|h0L-h0L/h0L|AhR-AhR/AhR|AGB-AGB/AGB|0fh-0fh/0fh|", sizeof(v50));
      v11 = 76;
    }

    else
    {
      v11 = 46;
    }

    VTRegisterPixelTransferCapabilityMxN(v49, v11, FigRegisterIOSurfacePixelTransferCapabilityOnce_uncompressedPixelFormatTypes, 52, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
    VTRegisterPixelTransferCapabilityMxN(FigRegisterIOSurfacePixelTransferCapabilityOnce_uncompressedPixelFormatTypes, 52, v49, v11, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
    VTRegisterPixelTransferCapabilityMxN(v49, v11, v49, v11, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
    if (BYTE8(v42) == 1)
    {
      VTRegisterPixelTransferCapabilityMxN(FigRegisterIOSurfacePixelTransferCapabilityOnce_interchangeSenselArrayPixelFormatTypes, 4, FigRegisterIOSurfacePixelTransferCapabilityOnce_uncompressedSenselArrayPixelFormatTypes, 5, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
      VTRegisterPixelTransferCapabilityMxN(FigRegisterIOSurfacePixelTransferCapabilityOnce_uncompressedSenselArrayPixelFormatTypes, 5, FigRegisterIOSurfacePixelTransferCapabilityOnce_interchangeSenselArrayPixelFormatTypes, 4, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
      VTRegisterPixelTransferCapabilityMxN(FigRegisterIOSurfacePixelTransferCapabilityOnce_interchangeSenselArrayPixelFormatTypes, 4, FigRegisterIOSurfacePixelTransferCapabilityOnce_interchangeSenselArrayPixelFormatTypes, 4, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
      VTRegisterPixelTransferCapabilityMxN(&FigRegisterIOSurfacePixelTransferCapabilityOnce_interchangeDisparityPixelFormatTypes, 1, &FigRegisterIOSurfacePixelTransferCapabilityOnce_uncompressedDisparityPixelFormatTypes, 1, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
      VTRegisterPixelTransferCapabilityMxN(&FigRegisterIOSurfacePixelTransferCapabilityOnce_uncompressedDisparityPixelFormatTypes, 1, &FigRegisterIOSurfacePixelTransferCapabilityOnce_interchangeDisparityPixelFormatTypes, 1, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
      VTRegisterPixelTransferCapabilityMxN(&FigRegisterIOSurfacePixelTransferCapabilityOnce_interchangeDisparityPixelFormatTypes, 1, &FigRegisterIOSurfacePixelTransferCapabilityOnce_interchangeDisparityPixelFormatTypes, 1, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
    }
  }

  qmemcpy(v49, "v024v224v444f024f224f444024p224p444p02fp22fp44fp02wp22wp44wp024x02fx02wx444x44fx44wxp44xp4fxr03wARGB8a3b", 104);
  v12 = HIBYTE(v40);
  if (HIBYTE(v40) == 1)
  {
    LODWORD(v49[15]) = 2016698739;
    *&v49[13] = *"8a0v8a2v8a4vsa2xsa4x";
    if (BYTE13(v40))
    {
      qmemcpy(&v49[15] + 4, "02vt22vt44vtsa2tsa4t", 20);
      if (BYTE14(v40) != 1)
      {
        v13 = 36;
        goto LABEL_70;
      }

      qmemcpy(&v49[18], "02vs22vs44vs", 12);
      v13 = 36;
      v14 = 144;
LABEL_67:
      *(&v49[1] + v14 + 4) = 0x7334617373326173;
      v13 += 5;
      goto LABEL_70;
    }

    v13 = 31;
  }

  else if (BYTE13(v40) == 1)
  {
    qmemcpy(&v49[13], "02vt22vt44vt", 12);
    v13 = 29;
  }

  else
  {
    v13 = 26;
  }

  if (BYTE14(v40))
  {
    qmemcpy(v49 + 4 * v13, "02vs22vs44vs", 12);
    if (!v12)
    {
      v13 += 3;
      goto LABEL_70;
    }

    v14 = 4 * v13;
    goto LABEL_67;
  }

LABEL_70:
  result = VTRegisterPixelTransferCapabilityMxN(v49, v13, v49, v13, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
  if (BYTE8(v42) == 1)
  {
    result = VTRegisterPixelTransferCapabilityMxN(FigRegisterIOSurfacePixelTransferCapabilityOnce_uncompressedSenselArrayPixelFormatTypes, 5, FigRegisterIOSurfacePixelTransferCapabilityOnce_uncompressedSenselArrayPixelFormatTypes, 5, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
  }

  if (BYTE7(v39[0]) == 1)
  {
    result = VTRegisterPixelTransferCapability(1278226736, 0x4C303130u, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
  }

  if (BYTE10(v39[0]) == 1 && BYTE11(v39[0]) == 1)
  {
    result = VTRegisterPixelTransferCapability(1882468912, 0x70343232u, v2, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
  }

  v15 = BYTE9(v39[0]);
  if (BYTE9(v39[0]) == 1)
  {
    qmemcpy(v48, "p44xp4fxp4wx", 12);
    v46 = 257;
    v47 = 1;
    v44 = 0;
    v45 = 0;
    v16 = 3;
  }

  else
  {
    v16 = 0;
  }

  if (BYTE12(v39[0]) == 1)
  {
    *(v48 + 4 * v16) = xmmword_18FED0160;
    v17 = v16 | 4;
    *(v48 + 4 * v17) = 0x7077343470663434;
    *(&v46 + v16) = 16843009;
    *(&v46 + v17) = 1;
    v18 = v16 + 5;
    *(&v46 + v18) = 1;
    *(&v44 + v16) = 0;
    *(&v44 + v17) = 0;
    *(&v44 + v18) = 0;
    v16 += 6;
  }

  if (BYTE11(v39[0]) == 1)
  {
    *(v48 + 4 * v16) = xmmword_18FED0170;
    v19 = v16 + 4;
    *(v48 + 4 * v19) = 0x7077323270663232;
    *(&v46 + v16) = 0;
    *(&v46 + v19) = 0;
    *(&v44 + v16) = 16843009;
    *(&v44 + v19) = 257;
    v16 += 6;
  }

  v37 = v2;
  if (BYTE10(v39[0]) == 1)
  {
    *(v48 + 4 * v16) = xmmword_18FED0180;
    v20 = v16 + 4;
    *(v48 + 4 * v20) = 0x7077323070663230;
    *(&v46 + v16) = 0;
    *(&v46 + v20) = 0;
    *(&v44 + v16) = 0;
    *(&v44 + v20) = 0;
    v16 += 6;
  }

  else if (!v16)
  {
    if (!v15)
    {
      return result;
    }

    goto LABEL_99;
  }

  v21 = 0;
  v36 = v16;
  do
  {
    if (BYTE4(v39[0]) == 1)
    {
      LODWORD(v51[0]) = 1999843442;
      v22 = v51 + 1;
      v23 = 1;
    }

    else
    {
      v23 = 0;
      v22 = v51;
    }

    v24 = *(v48 + v21);
    v25 = *(&v46 + v21);
    v38 = v21;
    v26 = *(&v44 + v21);
    *v22 = 1111970369;
    v27 = v23 + 3;
    *(v51 + 4 * v23 + 4) = 0x3432306634323076;
    if (v26)
    {
      v28 = 4 * v27;
      v27 = v23 + 5;
      *(v51 + v28) = 0x3432326634323276;
    }

    if (v25)
    {
      v29 = 4 * v27;
      v27 += 2;
      *(v51 + v29) = 0x3434346634343476;
    }

    v30 = 0;
    v31 = 4 * v27;
    do
    {
      v32 = *(v51 + v30);
      VTRegisterPixelTransferCapability(v24, v32, v37, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
      VTRegisterPixelTransferCapability(v32, v24, v37, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
      v30 += 4;
    }

    while (v31 != v30);
    result = VTRegisterPixelTransferCapability(v24, v24, v37, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
    v21 = v38 + 1;
  }

  while (v38 + 1 != v36);
  if (BYTE9(v39[0]))
  {
LABEL_99:
    if (BYTE12(v39[0]) == 1)
    {
      v33 = 0;
      qmemcpy(v51, "p44xp4fxp4wx024p02fp02wp", 24);
      qmemcpy(v43, "444x44fx44wx024x02fx02wx", sizeof(v43));
      do
      {
        v34 = *(v51 + v33);
        v35 = *&v43[v33];
        VTRegisterPixelTransferCapability(v34, v35, v37, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
        result = VTRegisterPixelTransferCapability(v35, v34, v37, figIOSurfaceAcceleratedPixelTransfer_ValidateM2, figIOSurfaceAcceleratedPixelTransfer_Open, figIOSurfaceAcceleratedPixelTransfer_TransferM2, figIOSurfaceAcceleratedPixelTransfer_Close);
        v33 += 4;
      }

      while (v33 != 24);
    }
  }

  return result;
}

uint64_t VTRegisterPixelTransferCapability(int a1, unsigned int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = a1;
  v8 = a2;
  return VTRegisterPixelTransferCapabilityMxN(&v9, 1, &v8, 1, a3, a4, a5, a6, a7);
}

uint64_t RegisterVTDecompressionSession()
{
  v0 = _CFRuntimeRegisterClass();
  sVTDecompressionSessionID = v0;
  sVTDecompressionSessionPropertyCallbacks = 0;
  *algn_1ED6D3FF8 = VTDecompressionSessionCopySupportedPropertyDictionary;
  qword_1ED6D4000 = VTDecompressionSessionSetProperty;
  qword_1ED6D4008 = VTDecompressionSessionCopyProperty;
  qword_1ED6D4010 = VTDecompressionSessionSetProperties;
  qword_1ED6D4018 = VTDecompressionSessionCopySerializableProperties;

  return VTSessionRegisterCallbacksForTypeID(&sVTDecompressionSessionPropertyCallbacks, v0);
}

uint64_t VTSessionRegisterCallbacksForTypeID(void *a1, const void *a2)
{
  MEMORY[0x193AE3010](&sVTSessionCallbacksMutexCreateOnce, vtCreateSessionCallbacksMutexOnce);
  FigSimpleMutexLock();
  if (!*a1 && a1[1] && a1[2] && a1[3] && a1[4] && a1[5] && ((Mutable = sVTSessionCallbacksPerTypeID) != 0 || (Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, 0), (sVTSessionCallbacksPerTypeID = Mutable) != 0)) && !CFDictionaryGetCountOfKey(Mutable, a2))
  {
    CFDictionarySetValue(sVTSessionCallbacksPerTypeID, a2, a1);
  }

  else
  {
    FigSignalErrorAtGM();
  }

  return FigSimpleMutexUnlock();
}

uint64_t vtCreateSessionCallbacksMutexOnce()
{
  result = FigSimpleMutexCreate();
  sVTSessionCallbacksMutex = result;
  return result;
}

double vtDecompressionSessionInit(uint64_t a1)
{
  *(a1 + 176) = 0;
  result = 0.0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

uint64_t RegisterVTVideoDecoderType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t vtDecompressionSubDuctAllocate(uint64_t a1, uint64_t *a2)
{
  *a2 = 0;
  v3 = MEMORY[0x193AE0CD0](a1, 312, 0x10E0040762E5746, 0);
  if (!v3)
  {
    return 4294954392;
  }

  v4 = v3;
  *(v3 + 304) = 0;
  *(v3 + 272) = 0u;
  *(v3 + 288) = 0u;
  *(v3 + 240) = 0u;
  *(v3 + 256) = 0u;
  *(v3 + 208) = 0u;
  *(v3 + 224) = 0u;
  *(v3 + 176) = 0u;
  *(v3 + 192) = 0u;
  *(v3 + 144) = 0u;
  *(v3 + 160) = 0u;
  *(v3 + 112) = 0u;
  *(v3 + 128) = 0u;
  *(v3 + 80) = 0u;
  *(v3 + 96) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  *v3 = 0u;
  v5 = FigSimpleMutexCreate();
  result = 0;
  *(v4 + 112) = v5;
  *(v4 + 84) = 1;
  *(v4 + 152) = 1;
  *a2 = v4;
  return result;
}

uint64_t VTDecoderSessionSetPixelBufferAttributes(uint64_t *a1, CFTypeRef cf)
{
  if (!a1)
  {
    goto LABEL_6;
  }

  if (a1[3])
  {
    v3 = a1[3];

    return VTParavirtualizationHostDecoderSessionSetPixelBufferAttributes(v3, cf);
  }

  v5 = *a1;
  if (*a1)
  {
    FigSimpleMutexLock();
    if (cf)
    {
      CFRetain(cf);
    }

    v6 = *(v5 + 64);
    if (v6)
    {
      CFRelease(v6);
    }

    *(v5 + 64) = cf;
    ++*(v5 + 84);
    FigSimpleMutexUnlock();
    return 0;
  }

  else
  {
LABEL_6:
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }
}

uint64_t vtCreateUsablePixelBufferAttributes(const __CFAllocator *a1, int a2, CFDictionaryRef theDict, const __CFDictionary *a4, int a5, __CFDictionary **a6, _BYTE *a7)
{
  v11 = MEMORY[0x1E6966208];
  v12 = MEMORY[0x1E69660B8];
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, *MEMORY[0x1E6966130]);
    v14 = CFDictionaryGetValue(theDict, *v11) != 0;
    LODWORD(v12) = CFDictionaryGetValue(theDict, *v12) != 0;
  }

  else
  {
    LODWORD(v12) = 0;
    v14 = 0;
    Value = 0;
  }

  v121 = a6;
  if (a4)
  {
    v15 = *MEMORY[0x1E69660D8];
    if (!CFDictionaryContainsKey(a4, *MEMORY[0x1E69660D8]) || theDict && CFDictionaryContainsKey(theDict, v15))
    {
      key = 0;
      v16 = 1;
    }

    else
    {
      v16 = 0;
      key = 1;
    }

    v117 = Value;
    v20 = a1;
    if (CFDictionaryContainsKey(a4, v15))
    {
      v126 = 0;
      CFDictionaryGetValue(a4, v15);
      v21 = v14;
      if (theDict)
      {
        CFDictionaryGetValue(theDict, v15);
      }

      IntIfPresent = FigCFDictionaryGetIntIfPresent();
      v23 = FigCFDictionaryGetIntIfPresent();
      if (IntIfPresent)
      {
        v24 = HIDWORD(v126) == 0;
      }

      else
      {
        v24 = 1;
      }

      v25 = !v24;
      if (v23)
      {
        v25 = 0;
      }

      v18 = v25;
    }

    else
    {
      v21 = v14;
      v18 = 0;
    }

    v26 = *MEMORY[0x1E6966038];
    v27 = OUTLINED_FUNCTION_3_3();
    v29 = CFDictionaryContainsKey(v27, v28);
    v17 = v29 != 0;
    if (theDict && v29)
    {
      if (CFDictionaryContainsKey(theDict, v26))
      {
        v17 = 0;
      }

      else
      {
        v30 = CFDictionaryGetValue(theDict, v15);
        if (v30)
        {
          v17 = CFDictionaryContainsKey(v30, *MEMORY[0x1E696CE60]) == 0;
        }

        else
        {
          v17 = 1;
        }
      }
    }

    v19 = CFDictionaryContainsKey(a4, *MEMORY[0x1E69660F0]) != 0;
    v14 = v21;
    a1 = v20;
    Value = v117;
  }

  else
  {
    v17 = 0;
    key = 0;
    v18 = 0;
    v19 = 0;
    v16 = 1;
  }

  if (theDict)
  {
    v31 = Value == 0;
  }

  else
  {
    v31 = 1;
  }

  v32 = !v31;
  if ((v32 & v14 & v12) == 1 && v16 != 0)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(a1, 0, theDict);
    v37 = MutableCopy;
    if (MutableCopy)
    {
      if (a5)
      {
        TypeID = CFArrayGetTypeID();
        CFGetTypeID(Value);
        OUTLINED_FUNCTION_5_3();
        if (!a4 || TypeID != v39)
        {
          ReorderedPixelFormatArray = v17;
          goto LABEL_137;
        }

        v96 = *MEMORY[0x1E6966130];
        v97 = OUTLINED_FUNCTION_3_3();
        v99 = CFDictionaryGetValue(v97, v98);
        ReorderedPixelFormatArray = vtCreateReorderedPixelFormatArray(a1, Value, v99);
        if (ReorderedPixelFormatArray)
        {
          CFDictionarySetValue(v37, v96, ReorderedPixelFormatArray);
          v17 = 0;
          LOBYTE(v12) = 1;
          goto LABEL_137;
        }

        v17 = 0;
      }

      else
      {
        v17 = 0;
        ReorderedPixelFormatArray = 0;
      }

      LOBYTE(v12) = 0;
      goto LABEL_137;
    }

    goto LABEL_108;
  }

  v34 = v19;
  if (theDict)
  {
    Mutable = CFDictionaryCreateMutableCopy(a1, 0, theDict);
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  v37 = Mutable;
  if (Mutable)
  {
    v118 = v14;
    v41 = key ^ 1;
    if (!a4)
    {
      v41 = 1;
    }

    if ((v41 & 1) == 0)
    {
      v42 = OUTLINED_FUNCTION_3_3();
      CFDictionaryGetValue(v42, v43);
      v44 = OUTLINED_FUNCTION_2_2();
      CFDictionarySetValue(v44, v45, v46);
    }

    v47 = v18 ^ 1;
    if (!a4)
    {
      v47 = 1;
    }

    if ((v47 & 1) == 0)
    {
      CFDictionaryGetValue(a4, *MEMORY[0x1E69660D8]);
      v48 = OUTLINED_FUNCTION_4_2();
      CFDictionaryGetValue(v48, v49);
      v50 = FigCFDictionaryCreateMutableCopy();
      if (!v50)
      {
        fig_log_get_emitter();
        v94 = FigSignalErrorAtGM();
        v17 = 0;
        ReorderedPixelFormatArray = 0;
        LOBYTE(v12) = 0;
        goto LABEL_135;
      }

      v51 = v50;
      FigCFDictionarySetValueFromKeyInDict();
      OUTLINED_FUNCTION_4_2();
      FigCFDictionarySetValue();
      CFRelease(v51);
    }

    v52 = v17 ^ 1;
    if (!a4)
    {
      v52 = 1;
    }

    if ((v52 & 1) == 0)
    {
      v53 = OUTLINED_FUNCTION_3_3();
      CFDictionaryGetValue(v53, v54);
      v55 = OUTLINED_FUNCTION_2_2();
      CFDictionarySetValue(v55, v56, v57);
    }

    v58 = !v34;
    if (!a4)
    {
      v58 = 1;
    }

    if ((v58 & 1) == 0)
    {
      v59 = OUTLINED_FUNCTION_3_3();
      CFDictionaryGetValue(v59, v60);
      v61 = OUTLINED_FUNCTION_2_2();
      CFDictionarySetValue(v61, v62, v63);
    }

    if (Value)
    {
      v64 = Value;
      v65 = v12;
      if (a5)
      {
        v66 = CFArrayGetTypeID();
        CFGetTypeID(v64);
        OUTLINED_FUNCTION_5_3();
        if (a4)
        {
          ReorderedPixelFormatArray = v17;
          v68 = v118;
          if (v66 != v67)
          {
            goto LABEL_121;
          }

          v69 = *MEMORY[0x1E6966130];
          v70 = OUTLINED_FUNCTION_3_3();
          v72 = CFDictionaryGetValue(v70, v71);
          ReorderedPixelFormatArray = vtCreateReorderedPixelFormatArray(a1, v64, v72);
          if (ReorderedPixelFormatArray)
          {
            CFDictionarySetValue(v37, v69, ReorderedPixelFormatArray);
            v17 = 0;
            LOBYTE(v12) = 1;
LABEL_120:
            v68 = v118;
LABEL_121:
            if (!v68)
            {
              v101 = *MEMORY[0x1E6966208];
              if (a4)
              {
                v102 = OUTLINED_FUNCTION_3_3();
                if (CFDictionaryGetValue(v102, v103))
                {
                  v104 = OUTLINED_FUNCTION_2_2();
                  CFDictionaryAddValue(v104, v105, v106);
                  if (v65)
                  {
                    goto LABEL_137;
                  }

                  v100 = *MEMORY[0x1E69660B8];
LABEL_129:
                  if (CFDictionaryGetValue(a4, v100))
                  {
                    v107 = OUTLINED_FUNCTION_4_2();
                    CFDictionaryAddValue(v107, v108, v109);
                    goto LABEL_137;
                  }

LABEL_133:
                  v111 = OUTLINED_FUNCTION_4_2();
                  v110 = vtAddNumberToCFDictionary(v111, v112, v113);
                  if (v110)
                  {
                    goto LABEL_134;
                  }

LABEL_137:
                  v114 = a7;
                  if (VTAvoidIOSurfaceBackings())
                  {
                    CFDictionaryRemoveValue(v37, *MEMORY[0x1E69660D8]);
                  }

                  v94 = 0;
                  *v121 = v37;
                  v37 = 0;
                  if (a7)
                  {
                    goto LABEL_140;
                  }

                  goto LABEL_141;
                }
              }

              v110 = vtAddNumberToCFDictionary(v37, v101, a2);
              if (v110)
              {
LABEL_134:
                v94 = v110;
                goto LABEL_135;
              }
            }

            if (v65)
            {
              goto LABEL_137;
            }

            v100 = *MEMORY[0x1E69660B8];
            if (!a4)
            {
              goto LABEL_133;
            }

            goto LABEL_129;
          }

          v17 = 0;
LABEL_107:
          LOBYTE(v12) = 0;
          goto LABEL_120;
        }

LABEL_119:
        ReorderedPixelFormatArray = v17;
        goto LABEL_120;
      }

LABEL_105:
      v17 = 0;
LABEL_106:
      ReorderedPixelFormatArray = 0;
      goto LABEL_107;
    }

    allocatora = a1;
    if (a4)
    {
      v73 = *MEMORY[0x1E6966130];
      v74 = CFDictionaryGetValue(a4, *MEMORY[0x1E6966130]);
      if (v74)
      {
        v75 = v74;
        v76 = CFNumberGetTypeID();
        if (v76 == CFGetTypeID(v75))
        {
          if (vtIsPixelFormatCompatibleWithAttributes(v75, theDict))
          {
            keya = v73;
            v77 = v12;
            v17 = CFRetain(v75);
LABEL_91:
            LOBYTE(v12) = v77;
            v73 = keya;
            if (v17)
            {
              v65 = v12;
              CFDictionaryAddValue(v37, keya, v17);
              goto LABEL_106;
            }
          }
        }

        else
        {
          v78 = CFArrayGetTypeID();
          if (v78 == CFGetTypeID(v75))
          {
            Count = CFArrayGetCount(v75);
            if (Count >= 1)
            {
              v80 = Count;
              keya = v73;
              v77 = v12;
              v81 = 0;
              v17 = 0;
              while (1)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(v75, v81);
                v83 = CFNumberGetTypeID();
                if (v83 == CFGetTypeID(ValueAtIndex) && vtIsPixelFormatCompatibleWithAttributes(ValueAtIndex, theDict))
                {
                  if (!v17)
                  {
                    v17 = CFArrayCreateMutable(allocatora, 0, MEMORY[0x1E695E9C0]);
                    if (!v17)
                    {
                      goto LABEL_109;
                    }
                  }

                  CFArrayAppendValue(v17, ValueAtIndex);
                }

                if (v80 == ++v81)
                {
                  goto LABEL_91;
                }
              }
            }
          }
        }

        v84 = CFGetTypeID(v75);
        if (v84 == CFNumberGetTypeID())
        {
          if (vtPixelFormatRequiresRGhAFallback(v75))
          {
            goto LABEL_118;
          }
        }

        else
        {
          v85 = CFGetTypeID(v75);
          if (v85 == CFArrayGetTypeID() && CFArrayGetCount(v75) >= 1)
          {
            v86 = 0;
            while (1)
            {
              v87 = CFArrayGetValueAtIndex(v75, v86);
              if (vtPixelFormatRequiresRGhAFallback(v87))
              {
                break;
              }

              if (CFArrayGetCount(v75) <= ++v86)
              {
                goto LABEL_99;
              }
            }

LABEL_118:
            v65 = v12;
            vtAddNumberToCFDictionary(v37, v73, 1380411457);
            OUTLINED_FUNCTION_5_3();
            if (v95)
            {
LABEL_111:
              v94 = v95;
              ReorderedPixelFormatArray = v17;
              goto LABEL_135;
            }

            goto LABEL_119;
          }
        }
      }
    }

LABEL_99:
    v65 = v12;
    v88 = 0;
    v12 = *MEMORY[0x1E6966130];
    v89 = 1;
    while (1)
    {
      valuePtr = dword_18FECDDF8[v88];
      v90 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
      if (!v90)
      {
        break;
      }

      v91 = v90;
      IsPixelFormatCompatibleWithAttributes = vtIsPixelFormatCompatibleWithAttributes(v90, theDict);
      if (IsPixelFormatCompatibleWithAttributes)
      {
        CFDictionaryAddValue(v37, v12, v91);
      }

      v17 = !IsPixelFormatCompatibleWithAttributes;
      CFRelease(v91);
      v93 = v17 & v89;
      v88 = 1;
      v89 = 0;
      if ((v93 & 1) == 0)
      {
        if (IsPixelFormatCompatibleWithAttributes)
        {
          goto LABEL_105;
        }

        vtAddNumberToCFDictionary(v37, v12, 32);
        OUTLINED_FUNCTION_5_3();
        v68 = v118;
        if (!v95)
        {
          ReorderedPixelFormatArray = 1;
          goto LABEL_121;
        }

        goto LABEL_111;
      }
    }
  }

LABEL_108:
  v17 = 0;
LABEL_109:
  ReorderedPixelFormatArray = 0;
  LOBYTE(v12) = 0;
  v94 = 4294954392;
LABEL_135:
  v114 = a7;
  if (a7)
  {
LABEL_140:
    *v114 = v12;
  }

LABEL_141:
  if (v37)
  {
    CFRelease(v37);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (ReorderedPixelFormatArray)
  {
    CFRelease(ReorderedPixelFormatArray);
  }

  return v94;
}

void vtDecompressionDuctFinalize(CFAllocatorRef allocator, void *ptr)
{
  if (ptr)
  {
    v4 = *(ptr + 1);
    if (v4)
    {
      v5 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v5)
      {
        v5(v4);
      }

      CFRelease(*(ptr + 1));
      *(ptr + 1) = 0;
    }

    v6 = *(ptr + 7);
    if (v6)
    {
      CFRelease(v6);
      *(ptr + 7) = 0;
    }

    v7 = *(ptr + 9);
    if (v7)
    {
      CFRelease(v7);
      *(ptr + 9) = 0;
    }

    if (*(ptr + 10))
    {
      FigSimpleMutexDestroy();
      *(ptr + 10) = 0;
    }

    v8 = *(ptr + 11);
    if (v8)
    {
      CFRelease(v8);
      *(ptr + 11) = 0;
    }

    *(ptr + 13) = 0;
    v9 = *(ptr + 12);
    if (v9)
    {
      CFRelease(v9);
      *(ptr + 12) = 0;
    }

    v10 = *(ptr + 23);
    if (v10)
    {
      CFRelease(v10);
      *(ptr + 23) = 0;
    }

    CFAllocatorDeallocate(allocator, ptr);
  }
}

void vtDecompressionSubDuctFinalize(const __CFAllocator *a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *(a2 + 8);
    if (v4)
    {
      v5 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v5)
      {
        v5(v4);
      }

      CFRelease(*(a2 + 8));
      *(a2 + 8) = 0;
    }

    vtDecompressionSubDuctFinishAsynchronousTransfers(a2);
    v6 = *(a2 + 120);
    if (v6)
    {
      CFRelease(v6);
      *(a2 + 120) = 0;
    }

    v7 = *(a2 + 128);
    if (v7)
    {
      CFRelease(v7);
      *(a2 + 128) = 0;
    }

    v8 = *(a2 + 16);
    if (v8)
    {
      CFRelease(v8);
      *(a2 + 16) = 0;
    }

    v9 = *(a2 + 304);
    if (v9)
    {
      CFRelease(v9);
      *(a2 + 304) = 0;
    }

    v10 = *(a2 + 272);
    if (v10)
    {
      CFRelease(v10);
      *(a2 + 272) = 0;
    }

    v11 = *(a2 + 72);
    if (v11)
    {
      CFRelease(v11);
      *(a2 + 72) = 0;
    }

    v12 = *(a2 + 144);
    if (v12)
    {
      CFRelease(v12);
      *(a2 + 144) = 0;
    }

    *(a2 + 200) = 0;
    CVPixelBufferPoolRelease(*(a2 + 96));
    *(a2 + 96) = 0;
    CVPixelBufferPoolRelease(*(a2 + 104));
    *(a2 + 104) = 0;
    v13 = *(a2 + 136);
    if (v13)
    {
      CFRelease(v13);
    }

    *(a2 + 136) = 0;
    v14 = *(a2 + 64);
    if (v14)
    {
      CFRelease(v14);
      *(a2 + 64) = 0;
    }

    if (*(a2 + 112))
    {
      FigSimpleMutexDestroy();
      *(a2 + 112) = 0;
    }

    v15 = *(a2 + 184);
    if (v15)
    {
      CFRelease(v15);
      *(a2 + 184) = 0;
    }

    v16 = *(a2 + 192);
    if (v16)
    {
      CFRelease(v16);
      *(a2 + 192) = 0;
    }

    v17 = *(a2 + 256);
    if (v17)
    {
      CFRelease(v17);
      *(a2 + 256) = 0;
    }

    v18 = *(a2 + 208);
    if (v18)
    {
      CFRelease(v18);
      *(a2 + 208) = 0;
    }

    v19 = *(a2 + 216);
    if (v19)
    {
      CFRelease(v19);
      *(a2 + 216) = 0;
    }

    v20 = *(a2 + 224);
    if (v20)
    {
      CFRelease(v20);
      *(a2 + 224) = 0;
    }

    v21 = *(a2 + 232);
    if (v21)
    {
      CFRelease(v21);
      *(a2 + 232) = 0;
    }

    v22 = *(a2 + 240);
    if (v22)
    {
      CFRelease(v22);
      *(a2 + 240) = 0;
    }

    v23 = *(a2 + 288);
    if (v23)
    {
      CFRelease(v23);
      *(a2 + 288) = 0;
    }

    v24 = *(a2 + 296);
    if (v24)
    {
      CFRelease(v24);
      *(a2 + 296) = 0;
    }

    CFAllocatorDeallocate(a1, a2);
  }
}

OSStatus VTSessionCopyProperty(VTSessionRef session, CFStringRef propertyKey, CFAllocatorRef allocator, void *propertyValueOut)
{
  if (session && (v8 = CFGetTypeID(session), CallbacksWithTypeID = VTSessionGetCallbacksWithTypeID(v8), propertyKey) && propertyValueOut && CallbacksWithTypeID)
  {
    v10 = CallbacksWithTypeID[3];

    return v10(session, propertyKey, allocator, propertyValueOut);
  }

  else
  {

    return FigSignalErrorAtGM();
  }
}

const void *VTSessionGetCallbacksWithTypeID(const void *a1)
{
  MEMORY[0x193AE3010](&sVTSessionCallbacksMutexCreateOnce, vtCreateSessionCallbacksMutexOnce);
  FigSimpleMutexLock();
  if (sVTSessionCallbacksPerTypeID)
  {
    Value = CFDictionaryGetValue(sVTSessionCallbacksPerTypeID, a1);
  }

  else
  {
    Value = 0;
  }

  FigSimpleMutexUnlock();
  return Value;
}

uint64_t VTDecompressionSessionCopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, void *a4)
{
  *a4 = 0;
  if (*(a1 + 16))
  {
LABEL_2:
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  v9 = *(a1 + 24);
  if (v9)
  {

    return VTDecompressionSessionRemoteBridge_CopyProperty(v9, a2, a3, a4);
  }

  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  if (!vtDecompressionSessionIsPropertyHandledByVideoToolbox(a2))
  {
    goto LABEL_50;
  }

  if (!vtDecompressionSessionIsPropertySupportedBySubDuct(a2))
  {
    if (CFEqual(@"NumberOfFramesBeingDecoded", a2))
    {
      LODWORD(valuePtr.value) = *(*v10 + 64);
      v12 = *MEMORY[0x1E695E480];
      p_valuePtr = &valuePtr;
      v14 = kCFNumberIntType;
LABEL_17:
      v15 = CFNumberCreate(v12, v14, p_valuePtr);
LABEL_27:
      v18 = v15;
LABEL_28:
      result = 0;
      *a4 = v18;
      return result;
    }

    if (CFEqual(@"MinOutputPresentationTimeStampOfFramesBeingDecoded", a2))
    {
      valuePtr = **&MEMORY[0x1E6960C70];
      vtDecompressionDuctGetMinOutputPresentationTimeStampOfFramesBeingDecoded(v10, &valuePtr);
LABEL_26:
      v25 = valuePtr;
      v15 = CMTimeCopyAsDictionary(&v25, a3);
      goto LABEL_27;
    }

    if (CFEqual(@"MaxOutputPresentationTimeStampOfFramesBeingDecoded", a2))
    {
      valuePtr = **&MEMORY[0x1E6960C70];
      vtDecompressionDuctGetMaxOutputPresentationTimeStampOfFramesBeingDecoded(v10, &valuePtr);
      goto LABEL_26;
    }

    if (CFEqual(@"UsingSandboxedVideoDecoder", a2))
    {
      v19 = MEMORY[0x1E695E4C0];
      if (!v11)
      {
        v19 = MEMORY[0x1E695E4D0];
      }

LABEL_32:
      v20 = *v19;
LABEL_33:
      v15 = CFRetain(v20);
      goto LABEL_27;
    }

    if (CFEqual(@"OnlyTheseFrames", a2))
    {
      if (*(v10 + 112))
      {
        v21 = *(v10 + 116);
        if (v21 > 1)
        {
          if (v21 == 2)
          {
            v19 = &kVTDecompressionProperty_OnlyTheseFrames_IFrames;
          }

          else
          {
            if (v21 != 3)
            {
              goto LABEL_2;
            }

            v19 = &kVTDecompressionProperty_OnlyTheseFrames_KeyFrames;
          }
        }

        else if (v21)
        {
          if (v21 != 1)
          {
            goto LABEL_2;
          }

          v19 = &kVTDecompressionProperty_OnlyTheseFrames_NonDroppableFrames;
        }

        else
        {
          v19 = &kVTDecompressionProperty_OnlyTheseFrames_AllFrames;
        }

        goto LABEL_32;
      }
    }

    else if (CFEqual(@"ReducedFrameDelivery", a2))
    {
      if (*(v10 + 112))
      {
        v12 = *MEMORY[0x1E695E480];
        p_valuePtr = (v10 + 128);
        v14 = kCFNumberDoubleType;
        goto LABEL_17;
      }
    }

    else
    {
      if (!CFEqual(@"SuggestedQualityOfServiceTiers", a2))
      {
        result = CFEqual(@"PowerLogSessionID", a2);
        if (!result)
        {
          return result;
        }

        v20 = *(v10 + 184);
        if (!v20)
        {
          v18 = 0;
          goto LABEL_28;
        }

        goto LABEL_33;
      }

      if (*(v10 + 112))
      {
        MEMORY[0x193AE3010](&sVTCreateSuggestedQualityOfServiceTiersOnce, vtCreateSuggestedQualityOfServiceTiers);
        v20 = sVTVideoDecoderSuggestedQualityOfServiceTiers;
        if (!sVTVideoDecoderSuggestedQualityOfServiceTiers)
        {
          goto LABEL_2;
        }

        goto LABEL_33;
      }
    }

LABEL_50:
    valuePtr.value = 0;
    VTDecompressionSessionCopySupportedPropertyDictionary(a1, &valuePtr);
    if (!valuePtr.value)
    {
      return 4294954396;
    }

    v22 = CFDictionaryContainsKey(valuePtr.value, a2);
    CFRelease(valuePtr.value);
    if (!v22)
    {
      return 4294954396;
    }

    v23 = *(v10 + 8);
    v24 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v24)
    {
      return v24(v23, a2, a3, a4);
    }

    return 4294954514;
  }

  if (v11)
  {

    return vtDecompressionSubDuctCopyProperty(v11, a2, a3, a4);
  }

  v16 = *(v10 + 8);
  v17 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v17)
  {
    return 4294954514;
  }

  return v17(v16, a2, a3, a4);
}

void vtDecompressionSessionCreatePropertiesHandledByVideoToolbox()
{
  v10[3] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E695E480];
  v1 = CFDictionaryCreate(*MEMORY[0x1E695E480], 0, 0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v1)
  {
    v2 = v1;
    Mutable = CFDictionaryCreateMutable(v0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    sVTDecompressionSessionPropertiesHandledByVideoToolboxDuct = Mutable;
    if (Mutable)
    {
      p_values = v10;
      CFDictionarySetValue(Mutable, @"NumberOfFramesBeingDecoded", v2);
      CFDictionarySetValue(sVTDecompressionSessionPropertiesHandledByVideoToolboxDuct, @"MinOutputPresentationTimeStampOfFramesBeingDecoded", v2);
      CFDictionarySetValue(sVTDecompressionSessionPropertiesHandledByVideoToolboxDuct, @"MaxOutputPresentationTimeStampOfFramesBeingDecoded", v2);
      CFDictionarySetValue(sVTDecompressionSessionPropertiesHandledByVideoToolboxDuct, @"UsingSandboxedVideoDecoder", v2);
      values = vtCreateFrameTypesArrayElement(@"AllFrames");
      v10[0] = vtCreateFrameTypesArrayElement(@"NonDroppableFrames");
      v10[1] = vtCreateFrameTypesArrayElement(@"IFrames");
      v10[2] = vtCreateFrameTypesArrayElement(@"KeyFrames");
      v5 = CFArrayCreate(v0, &values, 4, MEMORY[0x1E695E9C0]);
      if (!v5)
      {
        vtDecompressionSessionCreatePropertiesHandledByVideoToolbox_cold_1();
      }

      for (i = 0; i != 4; ++i)
      {
        v7 = v10[i - 1];
        if (v7)
        {
          CFRelease(v7);
        }
      }

      CFDictionarySetValue(sVTDecompressionSessionPropertiesHandledByVideoToolboxDuct, @"OnlyTheseFrames", v5);
      CFDictionarySetValue(sVTDecompressionSessionPropertiesHandledByVideoToolboxDuct, @"ReducedFrameDelivery", v2);
      CFDictionarySetValue(sVTDecompressionSessionPropertiesHandledByVideoToolboxDuct, @"SuggestedQualityOfServiceTiers", v2);
      CFDictionarySetValue(sVTDecompressionSessionPropertiesHandledByVideoToolboxDuct, @"PowerLogSessionID", v2);
      CFDictionarySetValue(sVTDecompressionSessionPropertiesHandledByVideoToolboxDuct, @"TemporalLevelLimit", v2);
      if (v5)
      {
        CFRelease(v5);
      }

      v8 = CFDictionaryCreateMutable(v0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      sVTDecompressionSessionPropertiesHandledByVideoToolboxSubDuct = v8;
      if (v8)
      {
        CFDictionarySetValue(v8, @"PixelBufferPool", v2);
        CFDictionarySetValue(sVTDecompressionSessionPropertiesHandledByVideoToolboxSubDuct, @"OutputPoolRequestedMinimumBufferCount", v2);
        CFDictionarySetValue(sVTDecompressionSessionPropertiesHandledByVideoToolboxSubDuct, @"PixelBufferPoolIsShared", v2);
        CFDictionarySetValue(sVTDecompressionSessionPropertiesHandledByVideoToolboxSubDuct, @"MaxAgeForOutputPixelBufferPool", v2);
        CFDictionarySetValue(sVTDecompressionSessionPropertiesHandledByVideoToolboxSubDuct, @"PixelTransferProperties", v2);
        CFDictionarySetValue(sVTDecompressionSessionPropertiesHandledByVideoToolboxSubDuct, @"PoolPixelBufferAttributesSeed", v2);
        CFDictionarySetValue(sVTDecompressionSessionPropertiesHandledByVideoToolboxSubDuct, @"PoolPixelBufferAttributes", v2);
        CFDictionarySetValue(sVTDecompressionSessionPropertiesHandledByVideoToolboxSubDuct, @"ClientPID", v2);
        CFDictionarySetValue(sVTDecompressionSessionPropertiesHandledByVideoToolboxSubDuct, @"ThrottleForBackground", v2);
        CFDictionarySetValue(sVTDecompressionSessionPropertiesHandledByVideoToolboxSubDuct, @"RealTime", v2);
        CFDictionarySetValue(sVTDecompressionSessionPropertiesHandledByVideoToolboxSubDuct, @"ColorPrimaries", v2);
        CFDictionarySetValue(sVTDecompressionSessionPropertiesHandledByVideoToolboxSubDuct, @"TransferFunction", v2);
        CFDictionarySetValue(sVTDecompressionSessionPropertiesHandledByVideoToolboxSubDuct, @"YCbCrMatrix", v2);
        CFDictionarySetValue(sVTDecompressionSessionPropertiesHandledByVideoToolboxSubDuct, @"ICCProfile", v2);
        CFDictionarySetValue(sVTDecompressionSessionPropertiesHandledByVideoToolboxSubDuct, @"MaximizePowerEfficiency", v2);
        CFDictionarySetValue(sVTDecompressionSessionPropertiesHandledByVideoToolboxSubDuct, @"GeneratePerFrameHDRDisplayMetadata", v2);
        CFDictionarySetValue(sVTDecompressionSessionPropertiesHandledByVideoToolboxSubDuct, @"NumberOfFramesInDecoder", v2);
        CFDictionarySetValue(sVTDecompressionSessionPropertiesHandledByVideoToolboxSubDuct, @"MinFrameIDOfFramesInDecoder", v2);
        CFDictionarySetValue(sVTDecompressionSessionPropertiesHandledByVideoToolboxSubDuct, @"MaxFrameIDOfFramesInDecoder", v2);
        values = 0;
        v10[0] = 0;
        if (sVTDecompressionSessionPropertiesHandledByVideoToolboxDuct)
        {
          values = sVTDecompressionSessionPropertiesHandledByVideoToolboxDuct;
        }

        else
        {
          p_values = &values;
        }

        if (sVTDecompressionSessionPropertiesHandledByVideoToolboxSubDuct)
        {
          *p_values = sVTDecompressionSessionPropertiesHandledByVideoToolboxSubDuct;
        }

        if (FigCFCreateCombinedDictionary())
        {
          fig_log_get_emitter();
          FigSignalErrorAtGM();
        }
      }

      else
      {
        vtDecompressionSessionCreatePropertiesHandledByVideoToolbox_cold_2();
      }
    }

    else
    {
      vtDecompressionSessionCreatePropertiesHandledByVideoToolbox_cold_3();
    }

    CFRelease(v2);
  }

  else
  {
    vtDecompressionSessionCreatePropertiesHandledByVideoToolbox_cold_4();
  }
}

uint64_t VTDecompressionSessionCopySupportedPropertyDictionary(uint64_t a1, void *a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v10 = 0;
  cf = 0;
  v12 = 0;
  v13[0] = 0;
  *a2 = 0;
  if (*(a1 + 16))
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  else if (*(a1 + 24))
  {
    v3 = *(a1 + 24);

    return VTDecompressionSessionRemoteBridge_CopySupportedPropertyDictionary(v3);
  }

  else
  {
    v4 = *(*(a1 + 32) + 8);
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (!v5 || ((v6 = v5(v4, &cf), v6 != -12782) ? (v7 = v6 == 0) : (v7 = 1), v7))
    {
      v9 = vtDecompressionSessionCopyPropertiesHandledByVideoToolbox(&v10);
      if (!v9)
      {
        if (cf)
        {
          v8 = v13;
          v12 = cf;
        }

        else
        {
          v8 = &v12;
        }

        if (v10)
        {
          *v8 = v10;
        }

        v9 = FigCFCreateCombinedDictionary();
      }
    }

    else
    {
      v9 = v6;
      fig_log_get_emitter();
      FigSignalErrorAtGM();
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (v10)
    {
      CFRelease(v10);
    }

    return v9;
  }
}

OSStatus VTPixelTransferSessionCreate(CFAllocatorRef allocator, VTPixelTransferSessionRef *pixelTransferSessionOut)
{
  FigKTraceInit();
  if (!pixelTransferSessionOut)
  {
    return -12902;
  }

  MEMORY[0x193AE3010](&VTPixelTransferSessionGetTypeID_sRegisterVTPixelTransferSessionOnce, RegisterVTPixelTransferSession);
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    return -12904;
  }

  v5 = Instance;
  *(Instance + 32) = 0;
  v6 = (Instance + 32);
  *(Instance + 1136) = 1;
  if (initDefaultsCommon_onceToken != -1)
  {
    VTPixelTransferSessionCreate_cold_1();
  }

  if (sAllowPixelTransferChain)
  {
    v7 = VTPixelTransferChainCreate(allocator, 0, v6);
    if (initDefaultsCommon_onceToken != -1)
    {
      VTPixelTransferSessionCreate_cold_1();
    }
  }

  else
  {
    v7 = 0;
  }

  *(v5 + 40) = sAllowPixelTransferGraph;
  *(v5 + 41) = sAllowPixelTransferFallbacks;
  v8.f64[0] = NAN;
  v8.f64[1] = NAN;
  v9 = vnegq_f64(v8);
  *(v5 + 72) = v9;
  *(v5 + 120) = v9;
  *(v5 + 769) = 1;
  *(v5 + 787) = 0;
  *(v5 + 785) = 256;
  *(v5 + 788) = sAllowSoftwareTransferSession;
  v10 = *MEMORY[0x1E695E480];
  *(v5 + 1176) = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  *(v5 + 1224) = 0u;
  if (!VTAvoidHardwarePixelTransfer())
  {
    v7 = VTMetalTransferSessionCreate(v10, 0, v5 + 1160);
    v11 = *(v5 + 1160);
    if (v11)
    {
      if (!v7)
      {
        v12 = MEMORY[0x1E695E4D0];
        if (!*(v5 + 1136))
        {
          v12 = MEMORY[0x1E695E4C0];
        }

        VTSessionSetProperty(v11, @"WriteBlackPixelsOutsideDestRect", *v12);
      }
    }
  }

  *pixelTransferSessionOut = v5;
  return v7;
}

uint64_t RegisterVTPixelTransferSession()
{
  v0 = _CFRuntimeRegisterClass();
  sVTPixelTransferSessionID = v0;
  sVTPixelTransferSessionPropertyCallbacks = 0;
  *algn_1ED6D3F38 = VTPixelTransferSessionCopySupportedPropertyDictionary;
  qword_1ED6D3F40 = VTPixelTransferSessionSetProperty;
  qword_1ED6D3F48 = VTPixelTransferSessionCopyProperty;
  qword_1ED6D3F50 = VTPixelTransferSessionSetProperties;
  qword_1ED6D3F58 = VTPixelTransferSessionCopySerializableProperties;

  return VTSessionRegisterCallbacksForTypeID(&sVTPixelTransferSessionPropertyCallbacks, v0);
}

uint64_t vtDecompressionDuctDecodeSingleFrame(uint64_t a1, CMSampleBufferRef sbuf, uint64_t a3, const __CFDictionary *a4, uint64_t a5, CMTimeEpoch a6, CMTimeValue a7, uint64_t a8)
{
  v15 = *(*a1 + 40);
  SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(sbuf, 0);
  if (!SampleAttachmentsArray)
  {
    goto LABEL_5;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(SampleAttachmentsArray, 0);
  v18 = ValueAtIndex;
  if (!ValueAtIndex)
  {
    goto LABEL_6;
  }

  v19 = CFGetTypeID(ValueAtIndex);
  if (v19 == CFDictionaryGetTypeID())
  {
    v18 = CFDictionaryGetValue(v18, *MEMORY[0x1E6960420]);
  }

  else
  {
LABEL_5:
    v18 = 0;
  }

LABEL_6:
  v47 = 0;
  if ((a3 & 2) == 0)
  {
    ++*(a1 + 192);
  }

  FigCFDictionaryGetInt64IfPresent();
  FigSimpleMutexLock();
  CMSampleBufferGetOutputPresentationTimeStamp(&time2, sbuf);
  CMSampleBufferGetOutputDuration(&v46, sbuf);
  v53 = 0;
  if (FigAtomicIncrement32() == 1)
  {
    FigSemaphoreWaitRelative();
  }

  if (*(a1 + 56) || (valueCallBacks.version = 0, valueCallBacks.retain = vtCloneDuctFrameTrackingInfo, valueCallBacks.copyDescription = 0, valueCallBacks.equal = 0, valueCallBacks.release = vtFreeDuctFrameTrackingInfo, v20 = CFGetAllocator(*a1), v21 = CFDictionaryCreateMutable(v20, 0, 0, &valueCallBacks), (*(a1 + 56) = v21) != 0))
  {
    v22 = *(a1 + 64);
    *(a1 + 64) = v22 + 1;
    v50 = time2;
    v51 = v46;
    v52 = v18;
    LOBYTE(v53) = 0;
    value.value = a7;
    *&value.timescale = a5;
    value.epoch = a6;
    cf = VTDecompressionSessionCopyAnalysisOptions(a4);
    CFDictionaryAddValue(*(a1 + 56), v22, &value);
    if (cf)
    {
      CFRelease(cf);
    }

    v23 = 0;
  }

  else
  {
    v22 = 0;
    v23 = 4294954392;
  }

  FigSimpleMutexUnlock();
  if (*(a1 + 112))
  {
    v60 = 0;
    v24 = CMSampleBufferGetSampleAttachmentsArray(sbuf, 0);
    if (!v24 || (v25 = CFArrayGetValueAtIndex(v24, 0)) == 0)
    {
      *(a1 + 144) = 0;
      *(a1 + 148) = 0x7FFFFFFF;
      CMSampleBufferGetPresentationTimeStamp(&value, sbuf);
      *(a1 + 156) = value;
      goto LABEL_57;
    }

    v26 = v25;
    v59 = 1;
    v58 = 0;
    v46.value = 0;
    v57 = 0;
    v56 = 0;
    FigCFDictionaryGetBooleanIfPresent();
    FigCFDictionaryGetBooleanIfPresent();
    v27 = HIBYTE(v58);
    FigCFDictionaryGetBooleanIfPresent();
    FigCFDictionaryGetBooleanIfPresent();
    FigCFDictionaryGetBooleanIfPresent();
    FigCFDictionaryGetIntIfPresent();
    CFDictionaryGetValueIfPresent(v26, *MEMORY[0x1E6960438], &v46);
    if (v46.value)
    {
      FigCFDictionaryGetIntIfPresent();
    }

    v28 = v58;
    if (v27 && !v58 || (*(a1 + 152) = 0, v27))
    {
      v29 = 0;
    }

    else
    {
      v29 = 1;
      if (v57 == 21 || v57 == 16)
      {
        LOBYTE(v58) = 1;
        v29 = 0;
        v28 = 1;
        if (*(a1 + 144))
        {
          *(a1 + 152) = 1;
        }
      }
    }

    if (v60 > *(a1 + 120))
    {
      goto LABEL_43;
    }

    v30 = *(a1 + 116);
    switch(v30)
    {
      case 3:
        v31 = v29;
        break;
      case 2:
        if (v28)
        {
          v31 = 1;
        }

        else
        {
          v31 = v29;
        }

        break;
      case 1:
        v31 = v59;
        break;
      default:
        v31 = 1;
        goto LABEL_42;
    }

    if (!v31)
    {
      goto LABEL_44;
    }

LABEL_42:
    v32 = *(a1 + 128) + *(a1 + 136);
    *(a1 + 136) = v32;
    if (v32 >= 1.0)
    {
      v43 = v32 + -1.0;
      if (v43 >= 1.0)
      {
        v43 = 1.0;
      }

      *(a1 + 136) = v43;
      if (*(a1 + 152))
      {
        memset(&value, 0, sizeof(value));
        CMSampleBufferGetPresentationTimeStamp(&value, sbuf);
        *&valueCallBacks.version = *&value.value;
        valueCallBacks.release = value.epoch;
        time2 = *(a1 + 156);
        if (CMTimeCompare(&valueCallBacks, &time2) < 1)
        {
          v31 = 0;
        }
      }

      if (v31 && HIBYTE(v56) && v60 <= *(a1 + 148))
      {
        *(a1 + 148) = 0x7FFFFFFF;
      }

      if (v31)
      {
        if (v56)
        {
          v44 = *(a1 + 148);
          if (v60 == v44 && v44 != 0x7FFFFFFF)
          {
            *(a1 + 148) = v60 + 1;
          }
        }
      }

LABEL_44:
      if (*(a1 + 144))
      {
        v33 = v29;
      }

      else
      {
        v33 = 1;
      }

      if ((v33 & 1) == 0 && !v58 && v60 >= *(a1 + 148))
      {
        v31 = 0;
      }

      if (v58)
      {
        v34 = 1;
      }

      else
      {
        v34 = v29;
      }

      if (v34 == 1)
      {
        *(a1 + 144) = 0;
        *(a1 + 148) = 0x7FFFFFFF;
        CMSampleBufferGetPresentationTimeStamp(&value, sbuf);
        *(a1 + 156) = value;
      }

      else if (!v31 && v59)
      {
        *(a1 + 144) = 1;
        v42 = *(a1 + 148);
        if (v42 >= v60)
        {
          v42 = v60;
        }

        *(a1 + 148) = v42;
        goto LABEL_83;
      }

      if (v31)
      {
        goto LABEL_57;
      }

LABEL_83:
      vtDecompressionDuctEmitDecodedFrame(a1, v22, v23, 2u, 0, 0);
      return v23;
    }

LABEL_43:
    v31 = 0;
    goto LABEL_44;
  }

LABEL_57:
  if (v15)
  {
    FigSimpleMutexLock();
    if (vtDecompressionSubDuctTrackFrameEnteringCodec(v15, v22, a3, v47))
    {
      fig_log_get_emitter();
      FigSignalErrorAtGM();
    }

    FigSimpleMutexUnlock();
  }

  if (*MEMORY[0x1E695FF58] == 1)
  {
    CMSampleBufferGetOutputPresentationTimeStamp(&valueCallBacks, sbuf);
    *&value.value = *&valueCallBacks.version;
    value.epoch = valueCallBacks.release;
    CMTimeGetSeconds(&value);
    kdebug_trace();
  }

  if (!a4 || (v35 = *(a1 + 8), v36 = *(CMBaseObjectGetVTable() + 16), *v36 < 4uLL) || (v37 = v36[11]) == 0 || (v23 = v37(v35, v22, sbuf, a3, a4, a8), v23 == -12782))
  {
    v38 = *(a1 + 8);
    v39 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (!v39)
    {
      goto LABEL_73;
    }

    v23 = v39(v38, v22, sbuf, a3, a8);
  }

  if (v23 != -17690)
  {
    if (!v23)
    {
      if ((a3 & 9) != 0)
      {
        return 0;
      }

LABEL_74:
      v40 = *(a1 + 56);
      if (v40)
      {
        CFDictionaryGetValue(v40, v22);
      }

      return 0;
    }

LABEL_73:
    fig_log_get_emitter();
    FigSignalErrorAtGM();
    goto LABEL_74;
  }

  return v23;
}

uint64_t vtCloneDuctFrameTrackingInfo(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x193AE0CD0](a1, 96, 0x10E0040DAC7FF16, 0);
  v4 = *(a2 + 16);
  *v3 = *a2;
  *(v3 + 16) = v4;
  v5 = *(a2 + 32);
  v6 = *(a2 + 48);
  v7 = *(a2 + 80);
  *(v3 + 64) = *(a2 + 64);
  *(v3 + 80) = v7;
  *(v3 + 32) = v5;
  *(v3 + 48) = v6;
  v8 = *(a2 + 72);
  if (v8)
  {
    v8 = CFRetain(v8);
  }

  *(v3 + 72) = v8;
  *(v3 + 8) = _Block_copy(*(a2 + 8));
  *(v3 + 16) = _Block_copy(*(a2 + 16));
  v9 = *(a2 + 88);
  if (v9)
  {
    v9 = CFRetain(v9);
  }

  *(v3 + 88) = v9;
  return v3;
}

uint64_t vtDecompressionSubDuctTrackFrameEnteringCodec(uint64_t a1, void *key, int a3, uint64_t a4)
{
  value[0] = 0;
  v8 = *(a1 + 120);
  if (!v8)
  {
    v11.version = 0;
    v11.retain = vtCloneSubDuctFrameTrackingInfo;
    v11.copyDescription = 0;
    v11.equal = 0;
    v11.release = vtFreeSubDuctFrameTrackingInfo;
    v9 = CFGetAllocator(*a1);
    v8 = CFDictionaryCreateMutable(v9, 0, 0, &v11);
    *(a1 + 120) = v8;
    if (!v8)
    {
      return 4294954392;
    }
  }

  if (*(a1 + 265))
  {
    if (!*(a1 + 266))
    {
      FigPowerReduceUtilitySFI();
      v8 = *(a1 + 120);
    }
  }

  LODWORD(value[0]) = a3;
  value[1] = *(a1 + 16);
  value[2] = a4;
  CFDictionaryAddValue(v8, key, value);
  return 0;
}

uint64_t vtCloneSubDuctFrameTrackingInfo(uint64_t a1, __int128 *a2)
{
  v3 = MEMORY[0x193AE0CD0](a1, 24, 0x1060040EB5A7A7CLL, 0);
  v4 = *a2;
  *(v3 + 16) = *(a2 + 2);
  *v3 = v4;
  v5 = *(a2 + 1);
  if (v5)
  {
    v5 = CFRetain(v5);
  }

  *(v3 + 8) = v5;
  return v3;
}

uint64_t VTDecoderSessionEmitDecodedFrame(uint64_t *a1, const void *a2, uint64_t a3, uint64_t a4, __CVBuffer *a5)
{
  if (a1)
  {
    if (a1[3])
    {
      v7 = a1[3];

      return VTParavirtualizationHostDecoderSessionEmitDecodedFrame(v7, a2, a3, a4, a5);
    }

    else
    {

      return vtDecoderSessionEmitDecodedFrameCommon(a1, a2, a3, a4, a5, 0);
    }
  }

  else
  {
    v10 = v5;
    v11 = v6;
    VTDecoderSessionEmitDecodedFrame_cold_1(&v9);
    return v9;
  }
}

void vtCopyAttachments(CFDictionaryRef theDict, __CVBuffer *a2, __CFDictionary *a3, void *key, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = &a9;
  if (key)
  {
    do
    {
      v12 = v17;
      v18 = v17 + 1;
      v13 = *v12;
      Value = CFDictionaryGetValue(theDict, key);
      if (Value)
      {
        v15 = Value;
        if (vtCVBufferAttachmentEmpty(a2, v13))
        {
          CFDictionarySetValue(a3, v13, v15);
        }
      }

      v16 = v18;
      v17 = (v18 + 1);
      key = *v16;
    }

    while (*v16);
  }
}

void vtFreeSubDuctFrameTrackingInfo(CFAllocatorRef allocator, void *ptr)
{
  v4 = ptr[1];
  if (v4)
  {
    CFRelease(v4);
    ptr[1] = 0;
  }

  CFAllocatorDeallocate(allocator, ptr);
}

uint64_t vtDecompressionSubDuctEmitTransferredFrame(uint64_t a1, const void *a2, uint64_t a3, unsigned int a4, void *a5, const void *a6)
{
  if (*a1 && (v6 = *(*a1 + 32)) != 0)
  {

    return vtDecompressionDuctEmitDecodedFrame(v6, a2, a3, a4, a5, a6);
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }
}

uint64_t vtDecompressionDuctEmitDecodedFrame(uint64_t a1, const void *a2, uint64_t a3, unsigned int a4, void *a5, const void *a6)
{
  v52 = *MEMORY[0x1E69E9840];
  v46 = a4;
  cf = a5;
  FigSimpleMutexLock();
  v11 = *(a1 + 56);
  if (!v11 || (Value = CFDictionaryGetValue(v11, a2)) == 0)
  {
    v48 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return FigSimpleMutexUnlock();
  }

  if (Value[80])
  {
    return FigSimpleMutexUnlock();
  }

  Value[80] = 1;
  v43 = *(Value + 24);
  v44 = *(Value + 5);
  v41 = *(Value + 3);
  v13 = *(Value + 9);
  v42 = *(Value + 8);
  v14 = *Value;
  v15 = *(Value + 1);
  v16 = *(Value + 2);
  v17 = *(Value + 11);
  FigSimpleMutexUnlock();
  if (v13)
  {
    CVBufferSetAttachment(a5, *MEMORY[0x1E6965E88], v13, kCVAttachmentMode_ShouldPropagate);
  }

  v18 = *a1;
  v50 = v43;
  v51 = v44;
  VTDecompressionSessionAnalyzeAndInterruptFrame(v18, a3, &v50, v17, &v46, &cf);
  v19 = *a1;
  v21 = *(*a1 + 112);
  v20 = *(*a1 + 120);
  if (!v16 && a6 && !v21)
  {
    v22 = *(v19 + 96);
    if (v22)
    {
      v23 = *(v19 + 104);
      v50 = *MEMORY[0x1E6960C70];
      v51 = *(MEMORY[0x1E6960C70] + 16);
      *v49 = v50;
      *&v49[16] = v51;
      v22(v23, v14, 4294949597, v46, 0, &v50, v49);
    }

    else if (v15)
    {
      v30 = *(v15 + 16);
      v50 = *MEMORY[0x1E6960C70];
      v51 = *(MEMORY[0x1E6960C70] + 16);
      *v49 = v50;
      *&v49[16] = v51;
      v30(v15, 4294949597, v46, 0, &v50, v49);
    }

    goto LABEL_25;
  }

  if (!cf && v21)
  {
    v50 = v43;
    v51 = v44;
    *v49 = v41;
    *&v49[16] = v42;
    v26 = v14;
    v27 = a3;
    v28 = a6;
LABEL_24:
    v21(v20, v26, v27, v46, v28, &v50, v49);
    goto LABEL_25;
  }

  if (v16 && !cf)
  {
    v29 = *(v16 + 16);
    v50 = v43;
    v51 = v44;
    *v49 = v41;
    *&v49[16] = v42;
    v29(v16, a3, v46, 0, a6, &v50, v49);
    goto LABEL_25;
  }

  v21 = *(v19 + 96);
  if (v21)
  {
    v20 = *(v19 + 104);
    v50 = v43;
    v51 = v44;
    *v49 = v41;
    *&v49[16] = v42;
    v26 = v14;
    v27 = a3;
    v28 = cf;
    goto LABEL_24;
  }

  if (v16)
  {
    v39 = *(v16 + 16);
    v50 = v43;
    v51 = v44;
    *v49 = v41;
    *&v49[16] = v42;
    v39(v16, a3, v46, cf, 0, &v50, v49);
  }

  else if (v15)
  {
    v40 = *(v15 + 16);
    v50 = v43;
    v51 = v44;
    *v49 = v41;
    *&v49[16] = v42;
    v40(v15, a3, v46, cf, &v50, v49);
  }

LABEL_25:
  v31 = cf;
  if ((v46 & 0x10) != 0)
  {
    if (!cf)
    {
      goto LABEL_30;
    }

    CFRelease(cf);
    v31 = cf;
  }

  if (v31)
  {
    ++*(a1 + 196);
  }

LABEL_30:
  FigSimpleMutexLock();
  v32 = *(a1 + 56);
  if (v32)
  {
    if (CFDictionaryGetValue(v32, a2))
    {
      CFDictionaryRemoveValue(*(a1 + 56), a2);
      if (!FigAtomicDecrement32())
      {
        FigSemaphoreSignal();
      }

      goto LABEL_45;
    }

    v48 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v36 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v37 = v48;
    if (os_log_type_enabled(v36, type))
    {
      v38 = v37;
    }

    else
    {
      v38 = v37 & 0xFFFFFFFE;
    }

    if (v38)
    {
      *v49 = 136315394;
      *&v49[4] = "vtDecompressionDuctEndFrame";
      *&v49[12] = 2048;
      *&v49[14] = a2;
      _os_log_send_and_compose_impl();
    }
  }

  else
  {
    v48 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v33 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v34 = v48;
    if (os_log_type_enabled(v33, type))
    {
      v35 = v34;
    }

    else
    {
      v35 = v34 & 0xFFFFFFFE;
    }

    if (v35)
    {
      *v49 = 136315138;
      *&v49[4] = "vtDecompressionDuctEndFrame";
      _os_log_send_and_compose_impl();
    }
  }

  fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_45:
  result = FigSimpleMutexUnlock();
  if (!*(a1 + 180))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    return CMNotificationCenterPostNotification();
  }

  return result;
}

void vtFreeDuctFrameTrackingInfo(const __CFAllocator *a1, uint64_t a2)
{
  v4 = *(a2 + 72);
  if (v4)
  {
    CFRelease(v4);
    *(a2 + 72) = 0;
  }

  _Block_release(*(a2 + 8));
  _Block_release(*(a2 + 16));
  v5 = *(a2 + 88);
  if (v5)
  {
    CFRelease(v5);
    *(a2 + 88) = 0;
  }

  CFAllocatorDeallocate(a1, a2);
}

const __CFDictionary *vtDecompressionSessionIsPropertySupportedBySubDuct(const void *a1)
{
  MEMORY[0x193AE3010](&sCreatePropertiesHandledByVideoToolboxOnce_0, vtDecompressionSessionCreatePropertiesHandledByVideoToolbox);
  result = sVTDecompressionSessionPropertiesHandledByVideoToolboxSubDuct;
  if (sVTDecompressionSessionPropertiesHandledByVideoToolboxSubDuct)
  {

    return CFDictionaryContainsKey(result, a1);
  }

  return result;
}

uint64_t vtDecompressionDuctGetMinOutputPresentationTimeStampOfFramesBeingDecoded@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = MEMORY[0x1E6960C70];
  *a2 = *MEMORY[0x1E6960C70];
  a2[2] = *(v4 + 16);
  FigSimpleMutexLock();
  v5 = *(a1 + 56);
  if (v5)
  {
    CFDictionaryApplyFunction(v5, vtDuctFrameTrackingInfoFindMinPTS, a2);
  }

  return FigSimpleMutexUnlock();
}

void VTDecompressionSessionInvalidate(VTDecompressionSessionRef session)
{
  if (session && !*(session + 16))
  {
    if (*(session + 3))
    {
      FigStopForwardingMediaServicesProcessDeathNotification();
      VTDecompressionSessionRemoteBridge_Invalidate(*(session + 3));
    }

    else
    {
      VTDecompressionSessionInvalidate_cold_1(session);
    }

    *(session + 16) = 1;
  }
}

void vtDecompressionSessionFinalize(uint64_t a1)
{
  VTDecompressionSessionInvalidate(a1);
  _Block_release(*(a1 + 176));
  *(a1 + 176) = 0;
  FigSimpleMutexDestroy();
  *(a1 + 168) = 0;
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 24) = 0;
  }

  v3 = *(a1 + 80);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 80) = 0;
  }

  v4 = *(a1 + 88);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 88) = 0;
  }

  v5 = *(a1 + 128);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 128) = 0;
  }

  v6 = *(a1 + 136);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 136) = 0;
  }

  if (*(a1 + 72))
  {
    FigSemaphoreDestroy();
    *(a1 + 72) = 0;
  }

  v7 = *(a1 + 152);
  if (v7)
  {
    os_release(v7);
    *(a1 + 152) = 0;
  }
}

void VTPixelTransferSessionInvalidate(VTPixelTransferSessionRef session)
{
  if (session && !*(session + 16))
  {
    v2 = *(session + 3);
    if (v2)
    {
      CFRelease(v2);
      *(session + 3) = 0;
    }

    v3 = *(session + 4);
    if (v3)
    {
      CFRelease(v3);
      *(session + 4) = 0;
    }

    v4 = *(session + 94);
    if (v4)
    {
      v5 = *(v4 + 64);
      if (v5)
      {
        v5(*(session + 95));
      }

      *(session + 94) = 0;
      *(session + 95) = 0;
    }

    v6 = *(session + 102);
    if (v6)
    {
      CFRelease(v6);
      *(session + 102) = 0;
    }

    v7 = *(session + 103);
    if (v7)
    {
      CFRelease(v7);
      *(session + 103) = 0;
    }

    v8 = *(session + 19);
    if (v8)
    {
      CFRelease(v8);
      *(session + 19) = 0;
    }

    v9 = *(session + 20);
    if (v9)
    {
      CFRelease(v9);
      *(session + 20) = 0;
    }

    v10 = *(session + 24);
    if (v10)
    {
      CFRelease(v10);
      *(session + 24) = 0;
    }

    v11 = *(session + 25);
    if (v11)
    {
      CFRelease(v11);
      *(session + 25) = 0;
    }

    v12 = *(session + 6);
    if (v12)
    {
      CFRelease(v12);
      *(session + 6) = 0;
    }

    v13 = *(session + 101);
    if (v13)
    {
      CFRelease(v13);
      *(session + 101) = 0;
    }

    v14 = *(session + 91);
    if (v14)
    {
      free(v14);
      *(session + 91) = 0;
    }

    v15 = *(session + 92);
    if (v15)
    {
      free(v15);
      *(session + 92) = 0;
    }

    v16 = *(session + 29);
    if (v16)
    {
      CVPixelBufferRelease(v16);
      *(session + 29) = 0;
    }

    v17 = 0;
    v18 = session + 288;
    do
    {
      v19 = *&v18[v17];
      if (v19)
      {
        free(v19);
        *&v18[v17] = 0;
      }

      v17 += 32;
    }

    while (v17 != 128);
    v20 = 0;
    v21 = session + 416;
    do
    {
      v22 = *&v21[v20];
      if (v22)
      {
        free(v22);
        *&v21[v20] = 0;
      }

      v20 += 32;
    }

    while (v20 != 128);
    v23 = *(session + 68);
    if (v23)
    {
      free(v23);
      *(session + 68) = 0;
    }

    v24 = *(session + 69);
    if (v24)
    {
      free(v24);
      *(session + 69) = 0;
    }

    v25 = *(session + 70);
    if (v25)
    {
      free(v25);
      *(session + 70) = 0;
    }

    v26 = *(session + 122);
    if (v26)
    {
      CFRelease(v26);
      *(session + 122) = 0;
    }

    v27 = *(session + 125);
    if (v27)
    {
      CFRelease(v27);
      *(session + 125) = 0;
    }

    v28 = *(session + 116);
    if (v28)
    {
      CFRelease(v28);
      *(session + 116) = 0;
    }

    v29 = *(session + 117);
    if (v29)
    {
      CFRelease(v29);
      *(session + 117) = 0;
    }

    v30 = *(session + 126);
    if (v30)
    {
      CFRelease(v30);
      *(session + 126) = 0;
    }

    VTPixelTransferSessionInvalidate(*(session + 128));
    VTPixelTransferSessionInvalidate(*(session + 129));
    v31 = *(session + 118);
    if (v31)
    {
      CFRelease(v31);
      *(session + 118) = 0;
    }

    v32 = *(session + 128);
    if (v32)
    {
      CFRelease(v32);
      *(session + 128) = 0;
    }

    v33 = *(session + 129);
    if (v33)
    {
      CFRelease(v33);
      *(session + 129) = 0;
    }

    v34 = *(session + 130);
    if (v34)
    {
      CFRelease(v34);
      *(session + 130) = 0;
    }

    v35 = *(session + 131);
    if (v35)
    {
      CFRelease(v35);
      *(session + 131) = 0;
    }

    v36 = *(session + 132);
    if (v36)
    {
      CFRelease(v36);
      *(session + 132) = 0;
    }

    v37 = *(session + 133);
    if (v37)
    {
      CFRelease(v37);
      *(session + 133) = 0;
    }

    *(session + 254) = 0;
    v38 = *(session + 123);
    if (v38)
    {
      CFRelease(v38);
      *(session + 123) = 0;
    }

    v39 = *(session + 124);
    if (v39)
    {
      CFRelease(v39);
      *(session + 124) = 0;
    }

    v40 = *(session + 119);
    if (v40)
    {
      CFRelease(v40);
      *(session + 119) = 0;
    }

    v41 = *(session + 120);
    if (v41)
    {
      CFRelease(v41);
      *(session + 120) = 0;
    }

    v42 = *(session + 121);
    if (v42)
    {
      CFRelease(v42);
      *(session + 121) = 0;
    }

    v43 = *(session + 135);
    if (v43)
    {
      CFRelease(v43);
      *(session + 135) = 0;
    }

    v44 = *(session + 136);
    if (v44)
    {
      CFRelease(v44);
      *(session + 136) = 0;
    }

    v45 = *(session + 134);
    if (v45)
    {
      CFRelease(v45);
      *(session + 134) = 0;
    }

    v46 = *(session + 137);
    if (v46)
    {
      CFRelease(v46);
      *(session + 137) = 0;
    }

    v47 = *(session + 138);
    if (v47)
    {
      CFRelease(v47);
      *(session + 138) = 0;
    }

    v48 = *(session + 139);
    if (v48)
    {
      CFRelease(v48);
      *(session + 139) = 0;
    }

    v49 = *(session + 99);
    if (v49)
    {
      CFRelease(v49);
      *(session + 99) = 0;
    }

    v50 = *(session + 100);
    if (v50)
    {
      CFRelease(v50);
      *(session + 100) = 0;
    }

    v51 = *(session + 149);
    if (v51)
    {
      CFRelease(v51);
      *(session + 149) = 0;
    }

    v52 = *(session + 150);
    if (v52)
    {
      CFRelease(v52);
      *(session + 150) = 0;
    }

    v53 = *(session + 151);
    if (v53)
    {
      CFRelease(v53);
      *(session + 151) = 0;
    }

    v54 = *(session + 152);
    if (v54)
    {
      CFRelease(v54);
      *(session + 152) = 0;
    }

    v55 = *(session + 97);
    if (v55)
    {
      CFRelease(v55);
      *(session + 97) = 0;
    }

    v56 = *(session + 146);
    if (v56)
    {
      CFRelease(v56);
      *(session + 146) = 0;
    }

    v57 = *(session + 147);
    if (v57)
    {
      CFRelease(v57);
      *(session + 147) = 0;
    }

    v58 = *(session + 90);
    if (v58)
    {
      v58(*(session + 89));
      *(session + 712) = 0u;
    }

    *(session + 144) = 0;
    *(session + 16) = 1;
  }
}

void vtPixelTransferSessionFinalize(OpaqueVTPixelTransferSession *a1)
{
  VTPixelTransferSessionInvalidate(a1);
  v2 = *(a1 + 145);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 145) = 0;
  }
}

uint64_t RegisterVTVideoEncoderType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

OSStatus VTPixelTransferSessionTransferImage(VTPixelTransferSessionRef session, CVPixelBufferRef sourceBuffer, CVPixelBufferRef destinationBuffer)
{
  v4 = 0;
  if (sourceBuffer && destinationBuffer)
  {
    CVPixelBufferGetWidth(sourceBuffer);
    CVPixelBufferGetWidth(destinationBuffer);
    CVPixelBufferGetHeight(sourceBuffer);
    CVPixelBufferGetHeight(destinationBuffer);
    PixelFormatType = CVPixelBufferGetPixelFormatType(sourceBuffer);
    printable4CC(PixelFormatType);
    v8 = CVPixelBufferGetPixelFormatType(destinationBuffer);
    printable4CC(v8);
    if (session && FigAtomicIncrement32() != 1)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_62();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v10 = MEMORY[0x1E695FF58];
    if (*MEMORY[0x1E695FF58] == 1)
    {
      kdebug_trace();
    }

    v4 = _VTPixelTransferSessionTransferImage(session, sourceBuffer, destinationBuffer);
    if (*v10 == 1)
    {
      kdebug_trace();
    }
  }

  if (session)
  {
    FigAtomicDecrement32();
  }

  return v4;
}

uint64_t vtBufferGetCleanRect(int a1, int a2, const void *a3, int *a4, int *a5, int *a6, int *a7, int *a8, int *a9)
{
  if (!a3)
  {
    goto LABEL_22;
  }

  TypeID = CFDictionaryGetTypeID();
  if (TypeID != CFGetTypeID(a3))
  {
    goto LABEL_22;
  }

  Value = CFDictionaryGetValue(a3, *MEMORY[0x1E6965D80]);
  if (!Value)
  {
    goto LABEL_22;
  }

  v18 = Value;
  v19 = CFGetTypeID(Value);
  if (v19 != CFNumberGetTypeID())
  {
    goto LABEL_22;
  }

  v36 = 0;
  valuePtr = 0;
  CFNumberGetValue(v18, kCFNumberSInt32Type, &valuePtr + 4);
  v20 = CFDictionaryGetValue(a3, *MEMORY[0x1E6965D60]);
  if (!v20)
  {
    goto LABEL_22;
  }

  v21 = v20;
  v22 = CFGetTypeID(v20);
  if (v22 != CFNumberGetTypeID())
  {
    goto LABEL_22;
  }

  CFNumberGetValue(v21, kCFNumberSInt32Type, &valuePtr);
  v23 = CFDictionaryGetValue(a3, *MEMORY[0x1E6965D68]);
  if (v23 && (v24 = v23, v25 = CFGetTypeID(v23), v25 == CFNumberGetTypeID()))
  {
    CFNumberGetValue(v24, kCFNumberFloatType, &v36 + 4);
    v26 = *(&v36 + 1);
  }

  else
  {
    HIDWORD(v36) = 0;
    v26 = 0.0;
  }

  v27 = (v26 + vcvts_n_f32_s32(a1 - HIDWORD(valuePtr), 1uLL));
  v28 = CFDictionaryGetValue(a3, *MEMORY[0x1E6965D78]);
  if (v28 && (v29 = v28, v30 = CFGetTypeID(v28), v30 == CFNumberGetTypeID()))
  {
    CFNumberGetValue(v29, kCFNumberFloatType, &v36);
  }

  else
  {
    LODWORD(v36) = 0;
  }

  if ((v27 & 0x80000000) == 0 && (v31 = HIDWORD(valuePtr), SHIDWORD(valuePtr) >= 1) && HIDWORD(valuePtr) + v27 <= a1 && (v32 = valuePtr, v33 = (*&v36 + vcvts_n_f32_s32(a2 - valuePtr, 1uLL)), (v33 & 0x80000000) == 0) && valuePtr >= 1 && valuePtr + v33 <= a2)
  {
    result = 1;
  }

  else
  {
LABEL_22:
    v27 = 0;
    v33 = 0;
    result = 0;
    v32 = a2;
    v31 = a1;
  }

  *a4 = a1;
  *a5 = a2;
  *a6 = v27;
  *a7 = v33;
  *a8 = v31;
  *a9 = v32;
  return result;
}

uint64_t vtRoundCleanRectToPixelBlockBoundary(uint64_t result, int a2, int a3, void *a4, void *a5, uint64_t *a6, uint64_t *a7)
{
  if (result <= 1983000879)
  {
    if (result <= 875704437)
    {
      if (result == 846624121)
      {
        goto LABEL_16;
      }

      v7 = 875704422;
    }

    else
    {
      if (result == 875704438 || result == 1630697081)
      {
        goto LABEL_16;
      }

      v7 = 1714696752;
    }

    goto LABEL_15;
  }

  if (result <= 2037741157)
  {
    if (result == 1983000880 || result == 1983000886)
    {
      goto LABEL_16;
    }

    v7 = 2033463856;
LABEL_15:
    if (result != v7)
    {
      return result;
    }

    goto LABEL_16;
  }

  if ((result - 2037741158) > 0xF || ((1 << (result - 102)) & 0xA001) == 0)
  {
    return result;
  }

LABEL_16:
  if (*a4)
  {
    --*a4;
    v8 = *a6 + 1;
    *a6 = v8;
    if ((v8 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v8 = *a6;
    if ((*a6 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  if (v8 < a2)
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = a2;
  }

  *a6 = v9;
LABEL_24:
  if (result > 1714696751)
  {
    if (result != 2033463856)
    {
      v10 = 1714696752;
LABEL_29:
      if (result != v10)
      {
        return result;
      }
    }
  }

  else if (result != 875704422)
  {
    v10 = 875704438;
    goto LABEL_29;
  }

  if (*a5)
  {
    --*a5;
    v11 = *a7 + 1;
    *a7 = v11;
    if ((v11 & 1) == 0)
    {
      return result;
    }
  }

  else
  {
    v11 = *a7;
    if ((*a7 & 1) == 0)
    {
      return result;
    }
  }

  if (v11 < a3)
  {
    v12 = v11 + 1;
  }

  else
  {
    v12 = a3;
  }

  *a7 = v12;
  return result;
}

IOSurfaceRef figIOSurfaceAcceleratedPixelTransfer_Validate(__CVBuffer *a1, __CVBuffer *a2)
{
  result = CVPixelBufferGetIOSurface(a1);
  if (result)
  {
    result = CVPixelBufferGetIOSurface(a2);
    if (result)
    {
      if (CVPixelBufferGetWidth(a1) > 0x1000 || CVPixelBufferGetHeight(a1) > 0x1000 || CVPixelBufferGetWidth(a2) > 0x1000)
      {
        return 0;
      }

      else
      {
        return (CVPixelBufferGetHeight(a2) <= 0x1000);
      }
    }
  }

  return result;
}

uint64_t figIOSurfaceAcceleratedPixelTransfer_Open(uint64_t a1, const __CFDictionary *a2, __CVBuffer *a3, uint64_t a4, __CVBuffer *a5, uint64_t a6, OSType **a7)
{
  v11 = malloc_type_calloc(1uLL, 0xF8uLL, 0x10200400C9AEB86uLL);
  if (v11)
  {
    v12 = v11;
    v13 = *MEMORY[0x1E695E480];
    v14 = IOSurfaceAcceleratorCreate();
    if (v14)
    {
      v15 = v14;
      fig_log_get_emitter();
      FigSignalErrorAtGM();
      free(v12);
      return v15;
    }

    v12[43] = CVPixelBufferGetPixelFormatType(a3);
    v12[44] = CVPixelBufferGetPixelFormatType(a5);
    *(v12 + 23) = getSubSampling(v12[43]);
    *(v12 + 24) = getSubSampling(v12[43]);
    *(v12 + 25) = getSubSampling(v12[44]);
    *(v12 + 26) = getSubSampling(v12[44]);
    if (a2)
    {
      Value = CFDictionaryGetValue(a2, @"DestinationYCbCrMatrix");
      v18 = CFDictionaryGetValue(a2, @"DestinationColorPrimaries");
      v19 = CFDictionaryGetValue(a2, @"DestinationTransferFunction");
      v20 = Value == 0;
      if (Value)
      {
        IntegerCodePointForString = CVYCbCrMatrixGetIntegerCodePointForString(Value);
      }

      else
      {
        IntegerCodePointForString = 0;
      }

      *(v12 + 27) = IntegerCodePointForString;
      if (v18)
      {
        v23 = CVColorPrimariesGetIntegerCodePointForString(v18);
      }

      else
      {
        v23 = 0;
      }

      *(v12 + 28) = v23;
      if (v19)
      {
        v22 = CVTransferFunctionGetIntegerCodePointForString(v19);
      }

      else
      {
        v22 = 0;
      }
    }

    else
    {
      v22 = 0;
      *(v12 + 27) = 0;
      *(v12 + 28) = 0;
      v20 = 1;
    }

    *(v12 + 29) = v22;
    *(v12 + 240) = figPixelFormatTypeContainsYCbCr(v12[43]);
    *(v12 + 241) = figPixelFormatTypeContainsYCbCr(v12[44]);
    v24 = CVPixelFormatDescriptionCreateWithPixelFormatType(v13, v12[44]);
    if (v24)
    {
      v25 = v24;
      v26 = *MEMORY[0x1E695E4D0];
      v27 = v26 == CFDictionaryGetValue(v24, *MEMORY[0x1E69662A0]);
      CFRelease(v25);
    }

    else
    {
      v27 = 0;
    }

    *(v12 + 242) = v27;
    if (v20 && *(v12 + 241) == 1 && *(v12 + 240) == 1)
    {
      v28 = CVBufferCopyAttachment(a3, *MEMORY[0x1E6965F98], 0);
      if (v28)
      {
        v29 = v28;
        *(v12 + 27) = CVYCbCrMatrixGetIntegerCodePointForString(v28);
        *a7 = v12;
        CFRelease(v29);
        return 0;
      }

      v15 = 0;
      *(v12 + 27) = 0;
    }

    else
    {
      v15 = 0;
    }

    *a7 = v12;
    return v15;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t figIOSurfaceAcceleratedPixelTransfer_TransferM2(uint64_t a1, const __CFDictionary *a2, CVPixelBufferRef texture, double *a4, void *a5, double *a6)
{
  v288 = 0u;
  v289 = 0u;
  v286 = 0u;
  v287 = 0u;
  v284 = 0u;
  v285 = 0u;
  v283 = 0u;
  v282 = 0;
  v281 = 0u;
  v280 = 0u;
  v279 = 0u;
  v278 = 0u;
  v277 = 0u;
  v276 = 0u;
  v275 = 0u;
  v274 = 0u;
  v273 = 0;
  v272 = 0u;
  v271 = 0u;
  v270 = 0u;
  v269 = 0u;
  v268 = 0u;
  v267 = 0u;
  v266 = 0u;
  v265 = 0u;
  v264 = 0;
  v263 = 0u;
  v262 = 0u;
  v261 = 0u;
  v260 = 0u;
  v259 = 0u;
  v258 = 0u;
  v257 = 0u;
  v256 = 0u;
  v255 = 132;
  v12 = CVPixelBufferRetain(texture);
  v254 = 0u;
  v253 = 0u;
  v252 = 0u;
  v251 = 0;
  if (!texture || (v13 = CFGetTypeID(texture), v13 != CVPixelBufferGetTypeID()))
  {
    figIOSurfaceAcceleratedPixelTransfer_TransferM2_cold_12(&rect);
    goto LABEL_366;
  }

  if (!a5 || (v14 = CFGetTypeID(a5), v14 != CVPixelBufferGetTypeID()))
  {
    figIOSurfaceAcceleratedPixelTransfer_TransferM2_cold_11(&rect);
    goto LABEL_366;
  }

  if (CVPixelBufferGetPixelFormatType(texture) != *(a1 + 172))
  {
    figIOSurfaceAcceleratedPixelTransfer_TransferM2_cold_1(&rect);
    goto LABEL_366;
  }

  if (CVPixelBufferGetPixelFormatType(a5) != *(a1 + 176))
  {
    figIOSurfaceAcceleratedPixelTransfer_TransferM2_cold_2(&rect);
    goto LABEL_366;
  }

  v15 = a4[2];
  if (v15 < 0.0)
  {
    figIOSurfaceAcceleratedPixelTransfer_TransferM2_cold_10(&rect);
    goto LABEL_366;
  }

  if (a4[3] < 0.0)
  {
    figIOSurfaceAcceleratedPixelTransfer_TransferM2_cold_9(&rect);
    goto LABEL_366;
  }

  v16 = v15 + a4[4];
  if (v16 > CVPixelBufferGetWidth(texture))
  {
    figIOSurfaceAcceleratedPixelTransfer_TransferM2_cold_8(&rect);
    goto LABEL_366;
  }

  v17 = a4[3] + a4[5];
  if (v17 > CVPixelBufferGetHeight(texture))
  {
    figIOSurfaceAcceleratedPixelTransfer_TransferM2_cold_7(&rect);
    goto LABEL_366;
  }

  v18 = a6[2];
  if (v18 < 0.0)
  {
    figIOSurfaceAcceleratedPixelTransfer_TransferM2_cold_6(&rect);
    goto LABEL_366;
  }

  if (a6[3] < 0.0)
  {
    figIOSurfaceAcceleratedPixelTransfer_TransferM2_cold_5(&rect);
    goto LABEL_366;
  }

  v19 = v18 + a6[4];
  if (v19 > CVPixelBufferGetWidth(a5))
  {
    figIOSurfaceAcceleratedPixelTransfer_TransferM2_cold_4(&rect);
    goto LABEL_366;
  }

  v20 = a6[3] + a6[5];
  if (v20 > CVPixelBufferGetHeight(a5))
  {
    figIOSurfaceAcceleratedPixelTransfer_TransferM2_cold_3(&rect);
LABEL_366:
    v161 = 0;
    x_low = LODWORD(rect.origin.x);
    if (v12)
    {
      goto LABEL_263;
    }

    goto LABEL_264;
  }

  v217 = a4;
  v21 = *MEMORY[0x1E695E4D0];
  v228 = *MEMORY[0x1E695E4C0];
  scalerCapabilities(&v283);
  CVPixelBufferGetIOSurface(texture);
  IOSurfaceGetBulkAttachments();
  v224 = BYTE12(v277);
  pixelBuffer = a5;
  CVPixelBufferGetIOSurface(a5);
  IOSurfaceGetBulkAttachments();
  v222 = BYTE11(v268);
  v22 = BYTE12(v268);
  v23 = CVBufferCopyAttachment(v12, *MEMORY[0x1E6965ED0], 0);
  v225 = a1;
  value = v21;
  if (!a2)
  {
    v203 = 0;
    dict = 0;
    v27 = 0;
    v213 = 0;
    v25 = v21;
    v28 = v21;
    goto LABEL_34;
  }

  v24 = v23;
  v25 = v21;
  if (CFDictionaryContainsKey(a2, @"ServiceEnableHighSpeedTransfer"))
  {
    v25 = CFDictionaryGetValue(a2, @"ServiceEnableHighSpeedTransfer");
  }

  if (CFDictionaryContainsKey(a2, @"ServiceDisableDither"))
  {
    v228 = CFDictionaryGetValue(a2, @"ServiceDisableDither");
  }

  FigCFDictionaryGetBooleanIfPresent();
  if (CFDictionaryContainsKey(a2, @"ServiceHistogramData"))
  {
    v26 = CFDictionaryGetValue(a2, @"ServiceHistogramData");
  }

  else
  {
    v26 = 0;
  }

  v29 = FigCFDictionaryGetBooleanValue() == v21;
  v213 = (FigCFDictionaryGetBooleanValue() == v21) | (2 * v29);
  if (CFDictionaryContainsKey(a2, @"Rotation"))
  {
    CFDictionaryGetValue(a2, @"Rotation");
    if (FigCFEqual())
    {
      v30 = v213 | 4;
    }

    else
    {
      if (!FigCFEqual())
      {
        v157 = FigCFEqual();
        v158 = v213;
        if (v157)
        {
          v158 = v213 ^ 7;
        }

        v213 = v158;
        goto LABEL_30;
      }

      v30 = v213 ^ 3;
    }

    v213 = v30;
  }

LABEL_30:
  v203 = v26;
  if (CFDictionaryContainsKey(a2, @"ServiceHistogramRectangle"))
  {
    dict = CFDictionaryGetValue(a2, @"ServiceHistogramRectangle");
  }

  else
  {
    dict = 0;
  }

  FigCFDictionaryGetBooleanIfPresent();
  v27 = CFDictionaryGetValue(a2, @"ReducedPrecisionFractionalOffsets");
  v23 = v24;
  v28 = v21;
LABEL_34:
  v31 = *(v225 + 224);
  v211 = *(v225 + 216);
  BYTE10(v268) = v211;
  cf = v23;
  if (v23 || !v31 || v31 == sUnsetColorPrimaryMatrix || (v34 = *(v225 + 232)) == 0 || (v33 = sUnsetTransferFunction, v34 == sUnsetTransferFunction))
  {
    if (!v31 || v31 == sUnsetColorPrimaryMatrix)
    {
      BYTE11(v268) = 0;
      v31 = BYTE11(v277);
    }

    else
    {
      v31 = 0;
    }

    v32 = *(v225 + 232);
    v33 = sUnsetTransferFunction;
    if (!v32 || v32 == sUnsetTransferFunction)
    {
      BYTE12(v268) = 0;
      v34 = BYTE12(v277);
    }

    else
    {
      v34 = 0;
    }
  }

  v210 = v34;
  if (*(v225 + 242) != 1 || v31 && v31 != sUnsetColorPrimaryMatrix || v34 && v34 != v33)
  {
    v202 = 0;
LABEL_49:
    v35 = pixelBuffer;
    goto LABEL_50;
  }

  v202 = 0;
  if (v222 && sUnsetColorPrimaryMatrix != v222)
  {
    BYTE11(v259) = v222;
    BYTE11(v268) = 0;
    v202 = 64;
  }

  if (!v22)
  {
    goto LABEL_49;
  }

  v92 = v33 == v22;
  v156 = v22;
  v35 = pixelBuffer;
  if (!v92)
  {
    v202 |= 0x80uLL;
    BYTE12(v259) = v156;
    BYTE12(v268) = 0;
  }

LABEL_50:
  v36 = MEMORY[0x1E69A85C8];
  if (v25 != v28)
  {
    v37 = v217;
    if (v228 != v28)
    {
      Mutable = 0;
      goto LABEL_63;
    }

LABEL_61:
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    goto LABEL_62;
  }

  v39 = v28;
  v40 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(v40, *MEMORY[0x1E69A84D0], v25);
  if (v228 != v39)
  {
    v37 = v217;
    Mutable = v40;
    goto LABEL_63;
  }

  v37 = v217;
  Mutable = v40;
  if (!v40)
  {
    goto LABEL_61;
  }

LABEL_62:
  FigCFDictionarySetInt32();
LABEL_63:
  if (BYTE1(v284) == 1 && v27)
  {
    v41 = Mutable;
    v42 = CFGetTypeID(v27);
    if (v42 == CFBooleanGetTypeID())
    {
      Mutable = v41;
      if (!v41)
      {
        Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      }

      CFDictionarySetValue(Mutable, @"ReducedPrecisionFractionalOffsets", v27);
    }

    else
    {
      Mutable = v41;
    }
  }

  v43 = v225;
  if (v203)
  {
    v44 = a6;
    if (!Mutable)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    }
  }

  else
  {
    v44 = a6;
  }

  CVPixelBufferGetIOSurface(texture);
  IOSurfaceBindAccel();
  v45 = Mutable;
  v46 = CVPixelBufferGetWidth(v35) & -*(v225 + 200);
  Height = CVPixelBufferGetHeight(v35);
  v48 = 0;
  v49 = 0;
  key = *MEMORY[0x1E69A85C0];
  v214 = Height & -*(v225 + 208);
  v215 = v46;
  v50 = v46;
  v51 = v45;
  v205 = *v36;
  v229 = 1;
  v198 = *MEMORY[0x1E69662D8];
  v212 = v44;
  v52 = BYTE11(v277);
  v209 = v31;
  v53 = 0;
  v54 = BYTE10(v277);
  while (1)
  {
    v207 = v49;
    v208 = v53;
    if (HIBYTE(v251))
    {
      Width = CVPixelBufferGetWidth(v12);
      v56 = CVPixelBufferGetHeight(v12);
    }

    else
    {
      if (v48)
      {
        v57 = v51;
        PixelFormatType = CVPixelBufferGetPixelFormatType(v12);
        SubSampling = getSubSampling(PixelFormatType);
        LOBYTE(PixelFormatType) = getSubSampling(PixelFormatType);
        v60 = CVPixelBufferGetWidth(v12);
        v61 = SubSampling;
        v37 = v217;
        Width = v60 & -v61;
        v62 = CVPixelBufferGetHeight(v12);
        v63 = PixelFormatType;
        v51 = v57;
      }

      else
      {
        Width = CVPixelBufferGetWidth(v12) & -*(v43 + 184);
        v62 = CVPixelBufferGetHeight(v12);
        v63 = *(v43 + 192);
      }

      v56 = v62 & -v63;
    }

    v64 = v44;
    if (!Width || !v56 || !v215 || !v214)
    {
LABEL_217:
      allocatora = v51;
      fig_log_get_emitter();
      x_low = FigSignalErrorAtGM();
      v149 = v202;
      v117 = pixelBuffer;
      goto LABEL_258;
    }

    v252 = 0uLL;
    *&v253 = Width << 16;
    *(&v253 + 1) = v56 << 16;
    if (v229)
    {
      v65 = v37[1].f64[0];
      if (v65 > 0.0 || v37[2].f64[0] < Width || v37[1].f64[1] > 0.0 || v37[2].f64[1] < v56)
      {
        v66 = v37[2].f64[0];
        v67 = v66;
        Width = vcvtas_u32_f32(v67);
        if (HIBYTE(v251))
        {
          v68 = v37[2].f64[1];
          v69 = v68;
          v56 = vcvtas_u32_f32(v69);
          v252 = vcvtq_n_u64_f64(v37[1], 0x10uLL);
          *&v253 = vcvtd_n_u64_f64(v66, 0x10uLL);
          v70 = vcvtd_n_u64_f64(v68, 0x10uLL);
        }

        else
        {
          v221 = v54;
          allocator = v52;
          v72 = v51;
          v73 = v37[2].f64[1];
          v74 = v37;
          v76 = *(v43 + 184);
          v75 = *(v43 + 192);
          isH3Platform();
          isH3Platform();
          v77 = *(v43 + 172);
          v78 = *(v43 + 184);
          v79 = v74[1].f64[0];
          v80 = vcvtas_u32_f32(v79);
          if (isH3Platform() || v77 == 2037741171 || v77 == 2037741158)
          {
            v80 &= -v78;
          }

          v252.i64[0] = v80 << 16;
          v81 = *(v43 + 172);
          v82 = *(v43 + 192);
          v83 = v217[3];
          v84 = vcvtas_u32_f32(v83);
          if (isH3Platform())
          {
            if (v81 == 2037741171 || v81 == 2037741158)
            {
              LODWORD(v84) = v84 & 0xFFFFFFFE;
            }

            else
            {
              v84 &= -v82;
            }
          }

          Width &= -v76;
          v85 = v73;
          v56 = vcvtas_u32_f32(v85) & -v75;
          v252.i64[1] = v84 << 16;
          *&v253 = Width << 16;
          v70 = v56 << 16;
          v37 = v217;
          v65 = v217[2];
          v66 = v217[4];
          v51 = v72;
          v64 = v212;
          v52 = allocator;
          v54 = v221;
        }

        *(&v253 + 1) = v70;
        if (v65 + v66 > CVPixelBufferGetWidth(v12))
        {
          goto LABEL_217;
        }

        v86 = v37[1].f64[1] + v37[2].f64[1];
        if (v86 > CVPixelBufferGetHeight(v12))
        {
          goto LABEL_217;
        }
      }

      v71 = v213 != 0;
    }

    else
    {
      v71 = 0;
    }

    v223 = v12;
    if (v71)
    {
      if (!v51)
      {
        v51 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      }

      FigCFDictionarySetInt32();
    }

    else if (v213 && v51)
    {
      CFDictionaryRemoveValue(v51, key);
    }

    v87 = v64[2].f64[0];
    v88 = -*(v43 + 200);
    v89 = vcvtas_u32_f32(v87) & v88;
    v90 = v64[2].f64[1];
    v91 = vcvtas_u32_f32(v90) & -*(v43 + 208);
    v92 = Width == v89 && v56 == v91;
    allocatora = v51;
    if (v92)
    {
      *&v254 = 0;
      v218 = Width;
      v91 = v56;
      v101 = Width;
      v102 = v56;
      *(&v254 + 1) = __PAIR64__(v56, Width);
    }

    else
    {
      v93 = v89 / Width;
      v94 = v93 > *(&v286 + 2);
      v95 = v88 & (*(&v286 + 2) * Width);
      if (v93 > *(&v286 + 2))
      {
        v89 = v95;
      }

      if (v93 < *(&v286 + 3))
      {
        v89 = (vcvtps_u32_f32(*(&v286 + 3) * Width) + *(v43 + 200) - 1) & -*(v43 + 200);
        v94 = 1;
      }

      v96 = v56;
      v97 = v91 / v56;
      if (v97 > *&v287)
      {
        v91 = -*(v43 + 208) & (*&v287 * v96);
        v94 = 1;
      }

      if (v97 < *(&v287 + 1))
      {
        v98 = *(v43 + 208);
        v99 = vcvtps_u32_f32(*(&v287 + 1) * v96) + v98 - 1;
        v100 = -v98;
        v91 = v99 & v100;
        *&v254 = 0;
        DWORD2(v254) = v89;
        HIDWORD(v254) = v99 & v100;
LABEL_141:
        v114 = 1;
        v112 = v89;
        v115 = v91;
LABEL_143:
        LODWORD(v218) = v89;
        if (v89 < v112)
        {
          goto LABEL_248;
        }

        v220 = v115;
        v219 = v112;
        if (v91 < v115)
        {
          goto LABEL_248;
        }

        goto LABEL_145;
      }

      *&v254 = 0;
      *(&v254 + 1) = __PAIR64__(v91, v89);
      if (v94)
      {
        goto LABEL_141;
      }

      v218 = v89;
      v101 = v89;
      v102 = v91;
    }

    v103 = v64[1].f64[0];
    v104 = v64[1].f64[1];
    if (v103 <= 0.0 && v104 >= v50 && v64[2].f64[1] >= v214)
    {
      v114 = 0;
      v112 = v101;
      v115 = v102;
      v89 = v218;
      goto LABEL_143;
    }

    v219 = v101;
    v220 = v102;
    v105 = v103;
    LODWORD(v254) = -*(v43 + 200) & vcvtas_u32_f32(v105);
    v106 = *(v43 + 176);
    v107 = *(v43 + 208);
    if (!isH3Platform() || (LODWORD(v108) = -2, v106 != 2037741158) && v106 != 2037741171)
    {
      v108 = -v107;
    }

    v109 = v104;
    DWORD1(v254) = v108 & vcvtas_u32_f32(v109);
    v110 = vandq_s8(vcvtq_u64_f64(vcvtq_f64_f32(vrnda_f32(vcvt_f32_f64(v64[2])))), vnegq_s64(*(v43 + 200)));
    v111 = vmovn_s64(v110);
    *(&v254 + 1) = v111;
    v112 = v111.i32[0];
    if (v215 < (v254 + v111.i32[0]) || v214 < (v110.i32[2] + DWORD1(v254)))
    {
LABEL_248:
      fig_log_get_emitter();
      x_low = FigSignalErrorAtGM();
      v12 = v223;
      goto LABEL_249;
    }

    v114 = 0;
    v115 = v111.u32[1];
    v51 = allocatora;
LABEL_145:
    if (v251)
    {
      v116 = v51;
      v234 = 0u;
      v235 = 0u;
      v232 = 0u;
      v233 = 0u;
      v231 = 0u;
      memset(&rect, 0, sizeof(rect));
      scalerCapabilities(&rect);
      if ((v234 & 1) != 0 && SDWORD1(v234) >= v234 && (BYTE4(v234) & 1) != 0 && (v136 = malloc_type_calloc(2 * (DWORD2(v234) * v234 + HIDWORD(v234) * DWORD1(v234)), 4uLL, 0x100004052888210uLL)) != 0 && ((v137 = v136, v138 = v115 / v56, v139 = v112, v140 = &v136[DWORD2(v234) * v234], v141 = &v140[DWORD2(v234) * v234], __dst = &v141[HIDWORD(v234) * DWORD1(v234)], v142 = v139 / Width, _initAsgFilter(DWORD2(v234), v234, v235, SBYTE4(v235), BYTE2(rect.size.width), v136, v138), memcpy(v140, v137, 4 * DWORD2(v234) * v234), SDWORD1(v234) >= v234) ? (v143 = v234) : (v143 = DWORD1(v234)), _initAsgFilter(HIDWORD(v234), v143, v235, SBYTE4(v235), BYTE2(rect.size.width), &v141[(DWORD1(v234) - v234) / 2 * HIDWORD(v234)], v142), memcpy(__dst, v141, 4 * HIDWORD(v234) * DWORD1(v234)), v144 = IOSurfaceAcceleratorSetCustomFilter(), v145 = BYTE2(rect.size.width), free(v137), !v144))
      {
        if (v145)
        {
          CFDictionarySetValue(v116, @"SymmetricScaling", value);
        }
      }

      else
      {
        CFDictionaryRemoveValue(v116, v205);
      }
    }

    v43 = v225;
    if ((v229 & 1) == 0 || *(v225 + 240) != 1 || *(v225 + 241) != 1 || !v54 || sUnsetYCbCrMatrix == v54 || v211 == v54 || v209 != v52 || v210 != v224)
    {
      v117 = pixelBuffer;
      v119 = CVPixelBufferGetPixelFormatType(pixelBuffer);
      v53 = 0;
      v44 = v212;
      if (!v114)
      {
        goto LABEL_160;
      }

      goto LABEL_161;
    }

    v117 = pixelBuffer;
    v44 = v212;
    if (MEMORY[0xFFFFFC080] > 214503011)
    {
      break;
    }

    v53 = v208;
    if (MEMORY[0xFFFFFC080] != -1777893647)
    {
      v118 = -1471079478;
      goto LABEL_211;
    }

LABEL_212:
    v53 = 1;
    v49 = 1111970369;
LABEL_162:
    v237 = 0;
    v235 = 0u;
    v236 = 0u;
    v233 = 0u;
    v234 = 0u;
    v231 = 0u;
    v232 = 0u;
    memset(&rect, 0, sizeof(rect));
    CVPixelBufferGetIOSurface(v117);
    ProtectionOptions = IOSurfaceGetProtectionOptions();
    v121 = ProtectionOptions;
    v122 = *(v225 + 168);
    if (v122 < 1)
    {
LABEL_169:
      texturea = 0;
    }

    else
    {
      v123 = v225 + 24;
      while (*(v123 - 8) != v218 || *v123 != v91 || *(v123 + 8) != v49 || *(v123 + 16) != ProtectionOptions)
      {
        v123 += 40;
        if (!--v122)
        {
          goto LABEL_169;
        }
      }

      v146 = *(v123 - 16);
      texturea = v146;
      if (v146)
      {
        CVPixelBufferRetain(v146);
        v12 = v223;
        goto LABEL_194;
      }
    }

    v124 = FigCreateProtectedIOSurfaceBackedCVPixelBufferWithAttributes(v219, v220, v49, 0, v121, &texturea);
    v12 = v223;
    if (v124)
    {
      x_low = v124;
      fig_log_get_emitter();
      goto LABEL_256;
    }

    if (v211)
    {
      v125 = v211 == sUnsetYCbCrMatrix;
    }

    else
    {
      v125 = 1;
    }

    v126 = v125;
    if ((v126 | v53))
    {
      v127 = v54;
    }

    else
    {
      v127 = v211;
    }

    if (v209 == sUnsetColorPrimaryMatrix || v209 == 0)
    {
      v129 = v52;
    }

    else
    {
      v129 = v209;
    }

    v130 = v210 == sUnsetTransferFunction || v210 == 0;
    BYTE10(v232) = v127;
    BYTE11(v232) = v129;
    v131 = v224;
    if (!v130)
    {
      v131 = v210;
    }

    BYTE12(v232) = v131;
    CVPixelBufferGetIOSurface(texturea);
    IOSurfaceSetBulkAttachments2();
    v132 = texturea;
    if (texturea)
    {
      v133 = *(v225 + 168);
      if (v133 <= 3)
      {
        v134 = v225 + 8 + 40 * v133;
        *v134 = CVPixelBufferRetain(texturea);
        *(v134 + 8) = CVPixelBufferGetWidth(v132);
        *(v134 + 16) = CVPixelBufferGetHeight(v132);
        *(v134 + 24) = CVPixelBufferGetPixelFormatType(v132);
        CVPixelBufferGetIOSurface(v132);
        *(v134 + 32) = IOSurfaceGetProtectionOptions();
        ++*(v225 + 168);
      }
    }

LABEL_194:
    CVPixelBufferGetIOSurface(v12);
    CVPixelBufferGetIOSurface(texturea);
    v51 = allocatora;
    v135 = IOSurfaceAcceleratorTransformSurface();
    if (v135)
    {
      x_low = v135;
      v249 = 0;
      v248 = 0u;
      v247 = 0u;
      v246 = 0u;
      v245 = 0u;
      v244 = 0u;
      v243 = 0u;
      v242 = 0u;
      v241 = 0u;
      CVPixelBufferGetIOSurface(v12);
      IOSurfaceGetBulkAttachments();
      fig_log_get_emitter();
      FigSignalErrorAtGM();
      if (texturea)
      {
        CFRelease(texturea);
      }

      goto LABEL_257;
    }

    CVPixelBufferRelease(v12);
    v229 = 0;
    v12 = texturea;
    v54 = BYTE10(v232);
    v52 = BYTE11(v232);
    v48 = 1;
    v224 = BYTE12(v232);
    v37 = v217;
  }

  v53 = v208;
  if (MEMORY[0xFFFFFC080] == 214503012)
  {
    goto LABEL_212;
  }

  v118 = 506291073;
LABEL_211:
  if (MEMORY[0xFFFFFC080] == v118)
  {
    goto LABEL_212;
  }

  v147 = allocatora;
  if (!allocatora)
  {
    v147 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  allocatora = v147;
  CFDictionarySetValue(v147, @"ITUVariantCSCEnable", value);
  v119 = v207;
  if (v114)
  {
    goto LABEL_161;
  }

LABEL_160:
  if (v53)
  {
LABEL_161:
    v49 = v119;
    goto LABEL_162;
  }

  if (v211 == sUnsetYCbCrMatrix || v211 == 0)
  {
    v151 = v54;
  }

  else
  {
    v151 = v211;
  }

  if (v209 == sUnsetColorPrimaryMatrix || v209 == 0)
  {
    v153 = v52;
  }

  else
  {
    v153 = v209;
  }

  v154 = v210 == sUnsetTransferFunction || v210 == 0;
  BYTE10(v268) = v151;
  BYTE11(v268) = v153;
  v155 = v224;
  if (!v154)
  {
    v155 = v210;
  }

  BYTE12(v268) = v155;
  CVPixelBufferGetIOSurface(v117);
  IOSurfaceSetBulkAttachments2();
  v12 = v223;
  if (!v203)
  {
    goto LABEL_254;
  }

  if (!dict)
  {
    goto LABEL_253;
  }

  memset(&rect, 0, sizeof(rect));
  if (!CGRectMakeWithDictionaryRepresentation(dict, &rect))
  {
    fig_log_get_emitter();
    x_low = FigSignalErrorAtGM();
    goto LABEL_257;
  }

  rect = CGRectStandardize(rect);
  CGRectIntegral(rect);
LABEL_253:
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
LABEL_254:
  CVPixelBufferGetIOSurface(v223);
  CVPixelBufferGetIOSurface(v117);
  v159 = allocatora;
  v160 = IOSurfaceAcceleratorTransformSurface();
  if (v160)
  {
    x_low = v160;
    v237 = 0;
    v235 = 0u;
    v236 = 0u;
    v233 = 0u;
    v234 = 0u;
    v231 = 0u;
    v232 = 0u;
    memset(&rect, 0, sizeof(rect));
    CVPixelBufferGetIOSurface(v223);
    IOSurfaceGetBulkAttachments();
    fig_log_get_emitter();
LABEL_256:
    FigSignalErrorAtGM();
LABEL_257:
    v149 = v202;
    goto LABEL_258;
  }

  v163 = v44[2].f64[0];
  v164 = v44[2].f64[1];
  v165 = CVPixelBufferGetPixelFormatType(v117);
  PlaneCount = CVPixelBufferGetPlaneCount(v117);
  if (v165 <= 1952854577)
  {
    v167 = v198;
    if (v165 <= 1936077359)
    {
      if (v165 <= 875704933)
      {
        if (v165 == 875704422)
        {
          goto LABEL_299;
        }

        v168 = 875704438;
      }

      else
      {
        if (v165 == 875704934 || v165 == 875704950)
        {
          goto LABEL_299;
        }

        v168 = 1932681587;
      }
    }

    else if (v165 > 1937125937)
    {
      if (v165 == 1937125938 || v165 == 1949458803)
      {
        goto LABEL_299;
      }

      v168 = 1952854576;
    }

    else
    {
      if (v165 == 1936077360 || v165 == 1936077362)
      {
        goto LABEL_299;
      }

      v168 = 1937125936;
    }

    goto LABEL_298;
  }

  v167 = v198;
  if (v165 > 2016567607)
  {
    if (v165 > 2016686641)
    {
      if (v165 == 2016686642 || v165 == 2019963442)
      {
        goto LABEL_299;
      }

      v168 = 2019963440;
    }

    else
    {
      if (v165 == 2016567608 || v165 == 2016567667)
      {
        goto LABEL_299;
      }

      v168 = 2016686640;
    }

    goto LABEL_298;
  }

  if (v165 > 1982882103)
  {
    if (v165 == 1982882104 || v165 == 1983013176)
    {
      goto LABEL_299;
    }

    v168 = 2016436536;
LABEL_298:
    if (v165 == v168)
    {
      goto LABEL_299;
    }

    goto LABEL_350;
  }

  if (v165 != 1952854578 && v165 != 1953903152)
  {
    v168 = 1953903154;
    goto LABEL_298;
  }

LABEL_299:
  DescriptionWithPixelFormatType = CVPixelFormatDescriptionGetDescriptionWithPixelFormatType();
  if (DescriptionWithPixelFormatType)
  {
    v170 = DescriptionWithPixelFormatType;
    LODWORD(rect.origin.x) = 1;
    LODWORD(v241) = 1;
    IntIfPresent = FigCFDictionaryGetIntIfPresent();
    if (IntIfPresent | FigCFDictionaryGetIntIfPresent() || (v172 = CFDictionaryGetValue(v170, v167)) == 0 || (v173 = v172, v174 = CFGetTypeID(v172), v174 != CFArrayGetTypeID()) || CFArrayGetCount(v173) < 1)
    {
      v179 = LODWORD(rect.origin.x);
      v180 = v241;
      v159 = allocatora;
      goto LABEL_317;
    }

    v175 = 0;
    v176 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v173, v175);
      if (ValueAtIndex)
      {
        v178 = CFGetTypeID(ValueAtIndex);
        if (v178 == CFDictionaryGetTypeID())
        {
          LODWORD(texturea) = 0;
          v290 = 0;
          FigCFDictionaryGetIntIfPresent();
          FigCFDictionaryGetIntIfPresent();
          if (texturea > SLODWORD(rect.origin.x))
          {
            LODWORD(rect.origin.x) = texturea;
          }

          if (SHIDWORD(v290) > v241)
          {
            LODWORD(v241) = HIDWORD(v290);
          }

          LODWORD(v290) = 0;
          FigCFDictionaryGetInt32IfPresent();
          if (v290 > v176)
          {
            v176 = v290;
          }
        }
      }

      ++v175;
    }

    while (CFArrayGetCount(v173) > v175);
    v159 = allocatora;
    if (!v176)
    {
      v179 = LODWORD(rect.origin.x);
      v180 = v241;
LABEL_317:
      CFDictionaryGetValue(v170, v167);
      if (PlaneCount)
      {
        v181 = 0;
        v182 = 0;
        v183 = 0;
        do
        {
          WidthOfPlane = CVPixelBufferGetWidthOfPlane(pixelBuffer, v181);
          HeightOfPlane = CVPixelBufferGetHeightOfPlane(pixelBuffer, v181);
          if (v179 == 2 && ((WidthOfPlane > 1) & WidthOfPlane & (v163 == WidthOfPlane)) != 0)
          {
            v182 = 1;
          }

          if (v180 == 2 && ((HeightOfPlane > 1) & HeightOfPlane & (v164 == HeightOfPlane)) != 0)
          {
            v183 = 1;
          }

          ++v181;
        }

        while (PlaneCount != v181);
        v159 = allocatora;
        if (v182 | v183)
        {
          CVPixelBufferLockBaseAddress(pixelBuffer, 0);
          for (i = 0; i != PlaneCount; ++i)
          {
            v187 = CVPixelBufferGetWidthOfPlane(pixelBuffer, i);
            v188 = CVPixelBufferGetHeightOfPlane(pixelBuffer, i);
            BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, i);
            BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, i);
            if (!BaseAddressOfPlane)
            {
              break;
            }

            v191 = BaseAddressOfPlane;
            if (v182 && v187 >= 2)
            {
              LODWORD(rect.origin.x) = 0;
              FigCFArrayGetValueAtIndex();
              FigCFDictionaryGetIntIfPresent();
              if (LODWORD(rect.origin.x) == 32)
              {
                if (v188)
                {
                  v196 = &v191[4 * v187 - 4];
                  v197 = v188;
                  do
                  {
                    *v196 = *(v196 - 1);
                    v196 += BytesPerRowOfPlane;
                    --v197;
                  }

                  while (v197);
                }
              }

              else if (LODWORD(rect.origin.x) == 16)
              {
                if (v188)
                {
                  v194 = &v191[2 * v187 - 2];
                  v195 = v188;
                  do
                  {
                    *v194 = *(v194 - 1);
                    v194 += BytesPerRowOfPlane;
                    --v195;
                  }

                  while (v195);
                }
              }

              else if (LODWORD(rect.origin.x) == 8 && v188)
              {
                v192 = &v191[v187 - 1];
                v193 = v188;
                do
                {
                  *v192 = *(v192 - 1);
                  v192 += BytesPerRowOfPlane;
                  --v193;
                }

                while (v193);
              }
            }

            if (v183 && v188 >= 2)
            {
              memcpy(&v191[(v188 - 1) * BytesPerRowOfPlane], &v191[(v188 - 2) * BytesPerRowOfPlane], BytesPerRowOfPlane);
            }
          }

          CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
          v159 = allocatora;
        }
      }
    }
  }

LABEL_350:
  allocatora = v159;
  x_low = v203;
  if (!v203)
  {
LABEL_249:
    v117 = pixelBuffer;
    goto LABEL_257;
  }

  bzero(&rect, 0x620uLL);
  CFDataSetLength(v203, 0);
  v117 = pixelBuffer;
  v149 = v202;
  if (!IOSurfaceAcceleratorGetHistogram())
  {
    CFDataAppendBytes(v203, bytes, 4 * LODWORD(rect.origin.x));
    CFDataAppendBytes(v203, v239, 4 * LODWORD(rect.origin.x));
    CFDataAppendBytes(v203, v240, 4 * LODWORD(rect.origin.x));
  }

  x_low = 0;
LABEL_258:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v149)
  {
    CVPixelBufferGetIOSurface(v117);
    IOSurfaceSetBulkAttachments2();
  }

  v161 = allocatora;
  if (v12)
  {
LABEL_263:
    CVPixelBufferRelease(v12);
  }

LABEL_264:
  if (v161)
  {
    CFRelease(v161);
  }

  return x_low;
}

uint64_t vtPixelTransferSession_EnsurePixelFormatPixelBlockInfoArray(OSType a1, size_t count, void *a3)
{
  if (*a3)
  {
    return 0;
  }

  v7 = malloc_type_calloc(count, 0x70uLL, 0x100004081F0E799uLL);
  v8 = v7;
  if (count)
  {
    v9 = 0;
    v10 = v7 + 110;
    while (1)
    {
      result = VTBlackFillGetPixelFormatPixelBlockInfo(a1, v9, v10 - 110, v10 - 102, v10 - 94, v10 - 86, v10 - 78, v10 - 5, v10 - 70, v10 - 6, v10 - 4, v10);
      if (result)
      {
        break;
      }

      ++v9;
      v10 += 112;
      if (count == v9)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    result = 0;
    *a3 = v8;
  }

  return result;
}

void figIOSurfaceAcceleratedPixelTransfer_Close(_DWORD *a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      CFRelease(v2);
      *a1 = 0;
    }

    v3 = a1[42];
    if (v3 >= 1)
    {
      v4 = 0;
      v5 = (a1 + 2);
      do
      {
        if (*v5)
        {
          CVPixelBufferRelease(*v5);
          *v5 = 0;
          v3 = a1[42];
        }

        ++v4;
        v5 += 5;
      }

      while (v4 < v3);
    }

    free(a1);
  }
}

OSStatus VTSessionSetProperty(VTSessionRef session, CFStringRef propertyKey, CFTypeRef propertyValue)
{
  if (session && (v6 = CFGetTypeID(session), CallbacksWithTypeID = VTSessionGetCallbacksWithTypeID(v6), propertyKey) && CallbacksWithTypeID)
  {
    v8 = CallbacksWithTypeID[2];

    return v8(session, propertyKey, propertyValue);
  }

  else
  {

    return FigSignalErrorAtGM();
  }
}

uint64_t VTPixelTransferSessionSetProperty(uint64_t a1, const __CFString *a2, const void *a3)
{
  if (a1)
  {
    if (FigAtomicIncrement32() != 1)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v8 = _VTPixelTransferSessionSetProperty(a1, a2, a3);
    FigAtomicDecrement32();
    return v8;
  }

  else
  {

    return _VTPixelTransferSessionSetProperty(0, a2, a3);
  }
}

unint64_t *vt_Copy_yuvs_2vuy_arm(unint64_t *result, void *a2, uint64_t a3, uint64_t a4)
{
  if (a3 && a4)
  {
    do
    {
      v4 = a3 >> 3;
      if (a3 >> 3)
      {
        do
        {
          v6 = *result;
          v7 = result[1];
          result += 2;
          *a2 = __rev16(v6);
          a2[1] = __rev16(v7);
          a2 += 2;
          --v4;
        }

        while (v4);
        v5 = a3 & 7;
        if ((a3 & 7) == 0)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v5 = a3;
      }

      do
      {
        v8 = *result;
        result = (result + 4);
        *a2 = __rev16(v8);
        a2 = (a2 + 4);
        --v5;
      }

      while (v5);
LABEL_8:
      --a4;
    }

    while (a4);
  }

  return result;
}

const char *vt_Copy_yuvs_420v_arm(const char *result, int8x16_t **a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v6 = a2[1];
  v7 = *a2;
  v8 = a3 & 0xFFFFFFFFFFFFFFFELL;
  if (v8)
  {
    v9 = a4;
    v10 = a4 & 0xFFFFFFFFFFFFFFFELL;
    if (v10)
    {
      v11 = a6[1];
      v12 = a5 - 2 * v8;
      v13 = *a6 - v8;
      v14 = v11 - v8;
LABEL_4:
      v15 = v8 >> 4;
      if (v8 >> 4)
      {
        do
        {
          v32 = vld2q_s8(result);
          result += 32;
          *v7++ = v32.val[0];
          *v6++ = v32.val[1];
          --v15;
        }

        while (v15);
        v16 = v8 & 0xF;
        if ((v8 & 0xF) == 0)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v16 = v8;
      }

      do
      {
        v18 = *result;
        v17 = (result + 1);
        v7->i8[0] = v18;
        v19 = &v7->i8[1];
        v20 = *v17++;
        v6->i8[0] = v20;
        v21 = &v6->i8[1];
        v22 = *v17++;
        *v19 = v22;
        v7 = (v19 + 1);
        v23 = *v17;
        result = v17 + 1;
        *v21 = v23;
        v6 = (v21 + 1);
        v16 -= 2;
      }

      while (v16);
LABEL_9:
      result += v12;
      v7 = (v7 + v13);
      v6 = (v6 + v14);
      do
      {
        v24 = v8 >> 4;
        if (v8 >> 4)
        {
          do
          {
            v26 = vld2q_s8(result);
            result += 32;
            *v7++ = v26;
            --v24;
          }

          while (v24);
          v25 = v8 & 7;
          if ((v8 & 7) == 0)
          {
            goto LABEL_15;
          }
        }

        else
        {
          v25 = v8;
        }

        do
        {
          v28 = *result;
          v27 = result + 2;
          v7->i8[0] = v28;
          v29 = &v7->i8[1];
          v30 = *v27;
          result = (v27 + 1);
          *v29 = v30;
          v7 = (v29 + 1);
          v25 -= 2;
        }

        while (v25);
LABEL_15:
        result += v12;
        v7 = (v7 + v13);
        v10 -= 2;
        if (v10)
        {
          goto LABEL_4;
        }

        v31 = (v9 & 1) == 0;
        v9 = 0;
        v10 = 2;
      }

      while (!v31);
    }
  }

  return result;
}

const char *vt_Copy_yuvs_420v_avg_arm(const char *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v6 = *(a2 + 8);
  v7 = *a2;
  v8 = a3 & 0xFFFFFFFFFFFFFFFELL;
  if (!v8 || a4 < 2)
  {
    return result;
  }

  v9 = a6[1];
  v10 = *a6;
  v11 = &result[a5];
  v12 = (v7 + v10);
  v13 = a5 - 2 * v8;
  v14 = v10 - v8;
  v15 = v9 - v8;
  do
  {
    v16 = v8 >> 4;
    if (!(v8 >> 4))
    {
      v17 = v8;
      do
      {
LABEL_8:
        v19 = *result;
        v18 = (result + 1);
        v7->i8[0] = v19;
        v20 = &v7->i8[1];
        v22 = *v11;
        v21 = (v11 + 1);
        v12->i8[0] = v22;
        v23 = &v12->i8[1];
        v25 = *v18++;
        v24 = v25;
        v26 = *v21++;
        v6->i8[0] = (v24 + v26) >> 1;
        v27 = &v6->i8[1];
        LOBYTE(v26) = *v18++;
        *v20 = v26;
        v7 = (v20 + 1);
        LOBYTE(v26) = *v21++;
        *v23 = v26;
        v12 = (v23 + 1);
        v29 = *v18;
        result = (v18 + 1);
        v28 = v29;
        v30 = *v21;
        v11 = (v21 + 1);
        *v27 = (v28 + v30) >> 1;
        v6 = (v27 + 1);
        v17 -= 2;
      }

      while (v17);
      goto LABEL_9;
    }

    do
    {
      v42 = vld2q_s8(result);
      result += 32;
      v44 = vld2q_s8(v11);
      v11 += 32;
      *v7++ = v42.val[0];
      *v12++ = v44.val[0];
      *v6++ = vhaddq_u8(v42.val[1], v44.val[1]);
      --v16;
    }

    while (v16);
    v17 = v8 & 0xF;
    if ((v8 & 0xF) != 0)
    {
      goto LABEL_8;
    }

LABEL_9:
    v31 = v11 - result;
    result = &v11[v13];
    v11 += v13 + v31;
    v32 = v12 - v7;
    v7 = (v12 + v14);
    v12 = (v12 + v14 + v32);
    v6 = (v6 + v15);
    a4 -= 2;
    if (!a4)
    {
      return result;
    }
  }

  while (a4 != 1);
  v33 = v8 >> 4;
  if (!(v8 >> 4))
  {
    v34 = v8;
    goto LABEL_15;
  }

  do
  {
    v43 = vld2q_s8(result);
    result += 32;
    *v7++ = v43.val[0];
    *v6++ = v43.val[1];
    --v33;
  }

  while (v33);
  v34 = v8 & 0xF;
  if ((v8 & 0xF) != 0)
  {
    do
    {
LABEL_15:
      v36 = *result;
      v35 = (result + 1);
      v7->i8[0] = v36;
      v37 = &v7->i8[1];
      v38 = *v35++;
      v6->i8[0] = v38;
      v39 = &v6->i8[1];
      v40 = *v35++;
      *v37 = v40;
      v7 = (v37 + 1);
      v41 = *v35;
      result = v35 + 1;
      *v39 = v41;
      v6 = (v39 + 1);
      v34 -= 2;
    }

    while (v34);
  }

  result += v13;
  return result;
}

int8x16_t *vt_Copy_420v_yuvs_arm(int8x16_t **a1, char *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v6 = a1[1];
  result = *a1;
  v8 = a3 & 0xFFFFFFFFFFFFFFFELL;
  if (v8)
  {
    v9 = a4 & 0xFFFFFFFFFFFFFFFELL;
    if (v9)
    {
      v10 = a5[1];
      v11 = *a5 - v8;
      v12 = a6 - 2 * v8;
      while (1)
      {
        v13 = v8 >> 4;
        if (!(v8 >> 4))
        {
          break;
        }

        do
        {
          v35.val[0] = *result++;
          v35.val[1] = *v6++;
          vst2q_s8(a2, v35);
          a2 += 32;
          --v13;
        }

        while (v13);
        v14 = v8 & 0xF;
        if ((v8 & 0xF) != 0)
        {
          goto LABEL_8;
        }

LABEL_9:
        v22 = (result + v11);
        v23 = (v6 - v8);
        v24 = &a2[v12];
        v25 = v9 - 1;
        v26 = v8 >> 4;
        if (v8 >> 4)
        {
          do
          {
            v36.val[0] = *v22++;
            v36.val[1] = *v23++;
            vst2q_s8(v24, v36);
            v24 += 32;
            --v26;
          }

          while (v26);
          v27 = v8 & 0xF;
          if ((v8 & 0xF) == 0)
          {
            goto LABEL_14;
          }
        }

        else
        {
          v27 = v8;
        }

        do
        {
          v29 = v22->i8[0];
          v28 = &v22->i8[1];
          *v24 = v29;
          v30 = v24 + 1;
          v32 = v23->i8[0];
          v31 = &v23->i8[1];
          *v30++ = v32;
          v33 = *v28;
          v22 = (v28 + 1);
          *v30++ = v33;
          v34 = *v31;
          v23 = (v31 + 1);
          *v30 = v34;
          v24 = v30 + 1;
          v27 -= 2;
        }

        while (v27);
LABEL_14:
        result = (v22 + v11);
        v6 = (v23 + v10 - v8);
        a2 = &v24[v12];
        v9 = v25 - 1;
        if (!v9)
        {
          return result;
        }
      }

      v14 = v8;
      do
      {
LABEL_8:
        v16 = result->i8[0];
        v15 = &result->i8[1];
        *a2 = v16;
        v17 = a2 + 1;
        v19 = v6->i8[0];
        v18 = &v6->i8[1];
        *v17++ = v19;
        v20 = *v15;
        result = (v15 + 1);
        *v17++ = v20;
        v21 = *v18;
        v6 = (v18 + 1);
        *v17 = v21;
        a2 = v17 + 1;
        v14 -= 2;
      }

      while (v14);
      goto LABEL_9;
    }
  }

  return result;
}

__n128 *vt_Copy_420v_yuvs_interp_arm(__n128 **a1, char *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, __n128 a7)
{
  v7 = a1[1];
  result = *a1;
  v9 = a3 & 0xFFFFFFFFFFFFFFFELL;
  if (v9)
  {
    v10 = a4 & 0xFFFFFFFFFFFFFFFELL;
    if (v10)
    {
      v11 = a5[1];
      v12 = *a5;
      v13 = (result + v12);
      v14 = (v7 + v11);
      v15 = &a2[a6];
      v16 = v11 - v9;
      do
      {
        v17 = v9 >> 4;
        if (v9 >> 4)
        {
          do
          {
            a7 = *result++;
            v19 = *v7++;
            v20 = *v14++;
            v34.val[1] = vrhaddq_s8(v19, v20);
            vst2q_s8(a2, *a7.n128_u64);
            a2 += 32;
            v34.val[0] = *v13++;
            vst2q_s8(v15, v34);
            v15 += 32;
            --v17;
          }

          while (v17);
          v18 = v9 & 0xF;
          if ((v9 & 0xF) == 0)
          {
            goto LABEL_9;
          }
        }

        else
        {
          v18 = v9;
        }

        do
        {
          v22 = result->n128_u8[0];
          v21 = &result->n128_u8[1];
          *a2 = v22;
          v23 = (a2 + 1);
          v25 = v13->i8[0];
          v24 = &v13->i8[1];
          *v15 = v25;
          v26 = v15 + 1;
          a7.n128_u8[0] = v7->i8[0];
          v27 = &v7->i8[1];
          v28 = 0x101010101010101;
          v28.i8[0] = v14->i8[0];
          v29 = &v14->i8[1];
          v30 = vhadd_s8(vqadd_s8(a7.n128_u64[0], 0x101010101010101), v28);
          *v23++ = v30.i8[0];
          *v26++ = v30.i8[0];
          v31 = *v21;
          result = (v21 + 1);
          *v23++ = v31;
          v32 = *v24;
          v13 = (v24 + 1);
          *v26++ = v32;
          v30.i8[0] = *v27;
          v7 = (v27 + 1);
          v33 = 0x101010101010101;
          v33.i8[0] = *v29;
          v14 = (v29 + 1);
          a7.n128_u64[0] = vhadd_s8(vqadd_s8(v30, 0x101010101010101), v33);
          *v23 = a7.n128_u8[0];
          a2 = (v23 + 1);
          *v26 = a7.n128_u8[0];
          v15 = v26 + 1;
          v18 -= 2;
        }

        while (v18);
LABEL_9:
        result = (result + 2 * v12 - v9);
        v13 = (result + v12);
        v7 = (v7 + v16);
        v14 = (v14 + v16);
        a2 = &a2[2 * a6 + -2 * v9];
        v15 = &a2[a6];
        v10 -= 2;
      }

      while (v10);
    }
  }

  return result;
}

uint8x16_t *vt_Copy_420v_yuvf_arm(uint8x16_t **a1, int8x16_t *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, double a7, double a8, double a9, uint32x4_t a10, uint32x4_t a11)
{
  v11 = a1[1];
  result = *a1;
  v13 = a3 & 0xFFFFFFFFFFFFFFFELL;
  if (v13)
  {
    v14 = a4 & 0xFFFFFFFFFFFFFFFELL;
    if (v14)
    {
      v15 = a5[1];
      v16 = *a5 - v13;
      v17 = a6 - 2 * v13;
      v18 = 0;
      v19 = vdupq_n_s16(0x950Bu);
      v20 = vdupq_n_s16(0x91B7u);
      v21 = vdupq_n_s8(0x10u);
      do
      {
        v22 = v13 >> 4;
        if (v13 >> 4)
        {
          do
          {
            v24 = *result++;
            v25 = *v11++;
            v26 = vqsubq_u8(v24, v21);
            v27 = vqsubq_u8(v25, v21);
            v28 = vmovl_u8(*v26.i8);
            v29 = vmovl_high_u8(v26);
            v30 = vmovl_u8(*v27.i8);
            v31 = vmovl_high_u8(v27);
            a10 = vqmovn_high_u16(vqmovn_u16(vqrshrn_high_n_u32(vqrshrn_n_u32(vmull_u16(*v28.i8, *v19.i8), 0xFuLL), vmull_high_u16(v28, v19), 0xFuLL)), vqrshrn_high_n_u32(vqrshrn_n_u32(vmull_u16(*v29.i8, *v19.i8), 0xFuLL), vmull_high_u16(v29, v19), 0xFuLL));
            a11 = vqmovn_high_u16(vqmovn_u16(vqrshrn_high_n_u32(vqrshrn_n_u32(vmull_u16(*v30.i8, *v20.i8), 0xFuLL), vmull_high_u16(v30, v20), 0xFuLL)), vqrshrn_high_n_u32(vqrshrn_n_u32(vmull_u16(*v31.i8, *v20.i8), 0xFuLL), vmull_high_u16(v31, v20), 0xFuLL));
            *a2 = vzip1q_s8(a10, a11);
            a2[1] = vzip2q_s8(a10, a11);
            a2 += 2;
            --v22;
          }

          while (v22);
          v23 = v13 & 0xF;
          if ((v13 & 0xF) == 0)
          {
            goto LABEL_9;
          }
        }

        else
        {
          v23 = v13;
        }

        do
        {
          a10.i16[0] = result->i16[0];
          result = (result + 2);
          a11.i16[0] = v11->i16[0];
          v11 = (v11 + 2);
          a10 = vmull_u16(*&vmovl_u8(vqsub_u8(*a10.i8, *v21.i8)), *v19.i8);
          a11 = vmull_u16(*&vmovl_u8(vqsub_u8(*a11.i8, *v21.i8)), *v20.i8);
          *a10.i8 = vqrshrn_n_u32(a10, 0xFuLL);
          *a11.i8 = vqrshrn_n_u32(a11, 0xFuLL);
          *a10.i8 = vqmovn_u16(a10);
          *a11.i8 = vqmovn_u16(a11);
          a2->i8[0] = a10.i8[0];
          a2->i8[1] = a11.i8[0];
          v32 = &a2->i8[2];
          *v32 = a10.i8[1];
          v32[1] = a11.i8[1];
          a2 = (v32 + 2);
          v23 -= 2;
        }

        while (v23);
LABEL_9:
        result = (result + v16);
        v18 ^= v15;
        v11 = (v11 + v15 - v13 - v18);
        a2 = (a2 + v17);
        --v14;
      }

      while (v14);
    }
  }

  return result;
}

_DWORD *vt_Copy_420v_y420_Chroma_arm(_DWORD *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a5 + 8);
  v7 = *(a6 + 16);
  v8 = *(a6 + 8);
  v9 = a3 & 0xFFFFFFFFFFFFFFFELL;
  if (v9)
  {
    v10 = a4 & 0xFFFFFFFFFFFFFFFELL;
    if (v10)
    {
      result = *(result + 1);
      v11 = *(a2 + 16);
      v12 = *(a2 + 8);
      v13 = v6 - v9;
      v14 = v8 - (v9 >> 1);
      v15 = v7 - (v9 >> 1);
      for (i = v10 >> 1; i; --i)
      {
        v17 = v9 >> 4;
        if (v9 >> 4)
        {
          do
          {
            v25 = vld2_s8(result);
            result += 4;
            *v12++ = v25.val[0];
            *v11++ = v25.val[1];
            --v17;
          }

          while (v17);
          v18 = v9 & 0xF;
          if ((v9 & 0xF) == 0)
          {
            goto LABEL_13;
          }

          if ((v9 & 0xFu) >= 8uLL)
          {
            v19 = 1;
            do
            {
              v22 = *result;
              v20 = result + 1;
              v21 = v22;
              v23 = *v20;
              result = v20 + 1;
              v12->i32[0] = v21 | (BYTE2(v21) << 8) | (v23 << 16) | (BYTE2(v23) << 24);
              v12 = (v12 + 4);
              v11->i32[0] = BYTE1(v21) | (HIBYTE(v21) << 8) | (BYTE1(v23) << 16) | (HIBYTE(v23) << 24);
              v11 = (v11 + 4);
              --v19;
            }

            while (v19);
            v18 = v9 & 7;
            if ((v9 & 7) == 0)
            {
              goto LABEL_13;
            }
          }
        }

        else
        {
          v18 = v9;
        }

        do
        {
          v24 = *result;
          result = (result + 2);
          v12->i8[0] = v24;
          v12 = (v12 + 1);
          v11->i8[0] = HIBYTE(v24);
          v11 = (v11 + 1);
          v18 -= 2;
        }

        while (v18);
LABEL_13:
        result = (result + v13);
        v12 = (v12 + v14);
        v11 = (v11 + v15);
      }
    }
  }

  return result;
}

void *vt_Copy_420f_420v_arm(void *result, int8x16_t **a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint16x4_t a7)
{
  if (a4)
  {
    v7 = a4;
    v8 = *result;
    v9 = *a5 - a3;
    v10 = *a2;
    v11 = *a6 - a3;
    a7.i32[0] = 56284;
    v12 = vdupq_n_s16(0x1000u);
    do
    {
      for (i = a3 >> 5; i; --i)
      {
        v14 = *v8;
        v15 = *(v8 + 1);
        v8 += 2;
        v16 = vmovl_u8(*v14.i8);
        v17 = vmovl_high_u8(v14);
        v18 = vmovl_u8(*v15.i8);
        v19 = vmovl_high_u8(v15);
        *v10 = vaddhn_high_s16(vaddhn_s16(vshrn_high_n_s32(vshrn_n_s32(vmull_lane_u16(*v16.i8, a7, 0), 8uLL), vmull_high_lane_u16(v16, a7, 0), 8uLL), v12), vshrn_high_n_s32(vshrn_n_s32(vmull_lane_u16(*v17.i8, a7, 0), 8uLL), vmull_high_lane_u16(v17, a7, 0), 8uLL), v12);
        v10[1] = vaddhn_high_s16(vaddhn_s16(vshrn_high_n_s32(vshrn_n_s32(vmull_lane_u16(*v18.i8, a7, 0), 8uLL), vmull_high_lane_u16(v18, a7, 0), 8uLL), v12), vshrn_high_n_s32(vshrn_n_s32(vmull_lane_u16(*v19.i8, a7, 0), 8uLL), vmull_high_lane_u16(v19, a7, 0), 8uLL), v12);
        v10 += 2;
      }

      v20 = a3 & 0x1F;
      if ((a3 & 0x1F) != 0)
      {
        do
        {
          v21 = *v8;
          v8 = (v8 + 1);
          v10->i8[0] = vaddhn_s16(*&vshrn_n_s64(*&vmul_s32(v21, a7), 8uLL), v12).u8[0];
          v10 = (v10 + 1);
          --v20;
        }

        while (v20);
      }

      v8 = (v8 + v9);
      v10 = (v10 + v11);
      --v7;
    }

    while (v7);
    v22 = a3 >> 1;
    v23 = result[1];
    v24 = a5[1] - 2 * v22;
    v25 = a2[1];
    v26 = a6[1] - 2 * v22;
    a7.i32[0] = 57569;
    for (j = a4 >> 1; j; --j)
    {
      for (k = v22 >> 4; k; --k)
      {
        v29 = *v23;
        v30 = v23[1];
        v23 += 2;
        v31 = vmovl_u8(*v29.i8);
        v32 = vmovl_high_u8(v29);
        v33 = vmovl_u8(*v30.i8);
        v34 = vmovl_high_u8(v30);
        *v25 = vaddhn_high_s16(vaddhn_s16(vshrn_high_n_s32(vshrn_n_s32(vmull_lane_u16(*v31.i8, a7, 0), 8uLL), vmull_high_lane_u16(v31, a7, 0), 8uLL), v12), vshrn_high_n_s32(vshrn_n_s32(vmull_lane_u16(*v32.i8, a7, 0), 8uLL), vmull_high_lane_u16(v32, a7, 0), 8uLL), v12);
        v25[1] = vaddhn_high_s16(vaddhn_s16(vshrn_high_n_s32(vshrn_n_s32(vmull_lane_u16(*v33.i8, a7, 0), 8uLL), vmull_high_lane_u16(v33, a7, 0), 8uLL), v12), vshrn_high_n_s32(vshrn_n_s32(vmull_lane_u16(*v34.i8, a7, 0), 8uLL), vmull_high_lane_u16(v34, a7, 0), 8uLL), v12);
        v25 += 2;
      }

      v35 = v22 & 0xF;
      if ((v22 & 0xF) != 0)
      {
        do
        {
          v36 = v23->u8[0];
          v37 = v23->u8[1];
          v23 = (v23 + 2);
          v25->i8[0] = vaddq_s32(vshrq_n_u32(vmul_s32(v36, *&a7), 8uLL), *&v12).i8[1];
          v25->i8[1] = vaddq_s32(vshrq_n_u32(vmul_s32(v37, *&a7), 8uLL), *&v12).i8[1];
          v25 = (v25 + 2);
          --v35;
        }

        while (v35);
      }

      v23 = (v23 + v24);
      v25 = (v25 + v26);
    }
  }

  return result;
}

uint64_t vt_Copy_BGRA_yuvs_arm(uint64_t a1, uint64_t a2, void *a3, unsigned __int8 **a4, void *a5, char **a6, uint64_t a7, int32x2_t a8, double a9, int16x8_t a10, double a11, int16x4_t a12)
{
  if (a2)
  {
    v12 = *a3 - 4 * a1;
    v13 = *a4;
    v14 = *a5 - 2 * a1;
    v15 = *a6;
    v16 = (a7 + 4);
    a8.i32[1] = *v16;
    *v17.i8 = vshl_n_s32(a8, 1uLL);
    v17.i32[0] = *--v16;
    v16 += 2;
    v17.i16[4] = *v16;
    v16 = (v16 + 2);
    v17.i16[5] = *v16;
    v16 = (v16 + 2);
    v17.i16[6] = *v16;
    v16 = (v16 + 2);
    v17.i16[7] = *v16;
    v16 = (v16 + 2);
    v18.i16[0] = *v16;
    v16 = (v16 + 2);
    v18.i16[1] = *v16;
    v18.i32[1] = *(v16 + 2);
    do
    {
      for (i = a1 >> 4; i; v15 += 32)
      {
        v31 = vld4_s8(v13);
        v20 = (v13 + 32);
        v32 = vld4_s8(v20);
        v13 = (v20 + 32);
        a10 = vmovl_u8(v31.val[0]);
        *v31.val[1].i8 = vmovl_u8(v31.val[1]);
        *v31.val[2].i8 = vmovl_u8(v31.val[2]);
        *v32.val[0].i8 = vmovl_u8(v32.val[0]);
        *v32.val[1].i8 = vmovl_u8(v32.val[1]);
        *v32.val[2].i8 = vmovl_u8(v32.val[2]);
        v21 = vmovn_s16(vshrn_high_n_s32(vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vdupq_lane_s32(*v17.i8, 0), *a10.i8, v17, 6), v31.val[1], v17, 5), v31.val[2], v17, 4), 0xFuLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vdupq_lane_s32(*v17.i8, 0), a10, v17, 6), *v31.val[1].i8, v17, 5), *v31.val[2].i8, v17, 4), 0xFuLL));
        v22 = vmovn_s16(vshrn_high_n_s32(vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vdupq_lane_s32(*v17.i8, 0), v32.val[0], v17, 6), v32.val[1], v17, 5), v32.val[2], v17, 4), 0xFuLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vdupq_lane_s32(*v17.i8, 0), *v32.val[0].i8, v17, 6), *v32.val[1].i8, v17, 5), *v32.val[2].i8, v17, 4), 0xFuLL));
        v33.val[0] = vuzp1_s8(v21, v22);
        v33.val[2] = vuzp2_s8(v21, v22);
        a10.i64[0] = vpaddq_s16(a10, a10).u64[0];
        v32.val[0] = vpaddq_s16(*v32.val[0].i8, *v32.val[0].i8).u64[0];
        v31.val[1] = vpaddq_s16(*v31.val[1].i8, *v31.val[1].i8).u64[0];
        v32.val[1] = vpaddq_s16(*v32.val[1].i8, *v32.val[1].i8).u64[0];
        a12 = vpaddq_s16(*v31.val[2].i8, *v31.val[2].i8).u64[0];
        v32.val[2] = vpaddq_s16(*v32.val[2].i8, *v32.val[2].i8).u64[0];
        v33.val[1] = vmovn_s16(vshrn_high_n_s32(vshrn_n_s32(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vdupq_lane_s32(*v17.i8, 1), *a10.i8, v18, 1), v31.val[1], v18, 0), a12, v17, 7), 0x10uLL), vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vdupq_lane_s32(*v17.i8, 1), v32.val[0], v18, 1), v32.val[1], v18, 0), v32.val[2], v17, 7), 0x10uLL));
        v33.val[3] = vmovn_s16(vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vdupq_lane_s32(*v17.i8, 1), *a10.i8, v18, 3), v31.val[1], v18, 2), a12, v18, 1), 0x10uLL), vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vdupq_lane_s32(*v17.i8, 1), v32.val[0], v18, 3), v32.val[1], v18, 2), v32.val[2], v18, 1), 0x10uLL));
        --i;
        vst4_s8(v15, v33);
      }

      for (j = (a1 >> 1) & 7; j; v15 += 4)
      {
        a10.i8[0] = *v13;
        LOBYTE(v25) = v13[1];
        a12.i8[0] = v13[2];
        LOBYTE(v26) = v13[3];
        v24 = v13 + 4;
        a10.i8[1] = *v24;
        HIBYTE(v25) = v24[1];
        a12.i8[1] = v24[2];
        HIBYTE(v26) = v24[3];
        v13 = v24 + 4;
        a10.i16[2] = v25;
        a12.i16[2] = v26;
        v27 = vmovl_u8(*a10.i8);
        v28 = vmovl_u8(a12);
        v29 = vmlal_high_laneq_s16(vmlal_laneq_s16(vdupq_lane_s32(*v17.i8, 0), *v27.i8, v17, 6), v27, v17, 5);
        a10 = vpaddlq_s16(v27);
        v29.i64[0] = vmlal_laneq_s16(v29, *v28.i8, v17, 4).u64[0];
        a12 = vpaddlq_s16(v28).u64[0];
        *v29.i8 = vshr_n_s32(*v29.i8, 0xFuLL);
        --j;
        *v15 = v29.i8[0];
        v15[1] = vshrn_n_s32(vmlal_laneq_s16(vmlal_high_lane_s16(vmlal_lane_s16(vdupq_lane_s32(*v17.i8, 1), *a10.i8, v18, 1), a10, v18, 0), a12, v17, 7), 0x10uLL).u8[0];
        v15[2] = v29.i8[4];
        v15[3] = vshrn_n_s32(vmlal_lane_s16(vmlal_high_lane_s16(vmlal_lane_s16(vdupq_lane_s32(*v17.i8, 1), *a10.i8, v18, 3), a10, v18, 2), a12, v18, 1), 0x10uLL).u8[0];
      }

      v13 += v12;
      v15 += v14;
      --a2;
    }

    while (a2);
  }

  return 0;
}

uint64_t vtPixelTransferSession_InvokeBlitter(unint64_t a1, unint64_t a2, uint64_t a3, void *a4, void *a5, CVPixelBufferRef pixelBuffer, __CVBuffer *a7, uint64_t a8, uint64_t a9)
{
  v32 = *MEMORY[0x1E69E9840];
  memset(v31, 0, sizeof(v31));
  memset(v30, 0, sizeof(v30));
  memset(v29, 0, sizeof(v29));
  memset(v28, 0, sizeof(v28));
  memset(v27, 0, sizeof(v27));
  memset(v26, 0, sizeof(v26));
  memset(v25, 0, sizeof(v25));
  memset(v24, 0, sizeof(v24));
  PlaneCount = 1;
  CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL);
  CVPixelBufferLockBaseAddress(a7, 0);
  if (CVPixelBufferIsPlanar(pixelBuffer))
  {
    PlaneCount = CVPixelBufferGetPlaneCount(pixelBuffer);
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
  v19 = vtPixelTransferSession_EnsurePixelFormatPixelBlockInfoArray(PixelFormatType, PlaneCount, a4);
  if (!v19)
  {
    v19 = vtPixelTransferSession_PrepareBlitterParameters(pixelBuffer, PlaneCount, a8, a4, v30, v29, v31, v28);
    if (!v19)
    {
      v20 = CVPixelBufferIsPlanar(a7) ? CVPixelBufferGetPlaneCount(a7) : 1;
      v21 = CVPixelBufferGetPixelFormatType(a7);
      v19 = vtPixelTransferSession_EnsurePixelFormatPixelBlockInfoArray(v21, v20, a5);
      if (!v19)
      {
        v19 = vtPixelTransferSession_PrepareBlitterParameters(a7, v20, a9, a5, v26, v25, v27, v24);
        if (!v19)
        {
          if (!(a1 | a2))
          {
            v22 = 4294954391;
            goto LABEL_11;
          }

          if (a2)
          {
            v19 = (a2)(a3, a8, v30, v31, v28, a9, v26, v27, v24);
          }

          else
          {
            v19 = (a1)(*(a8 + 16), *(a8 + 24), v31, v29, v27, v25);
          }
        }
      }
    }
  }

  v22 = v19;
LABEL_11:
  CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
  CVPixelBufferUnlockBaseAddress(a7, 0);
  return v22;
}

uint64_t vtPixelTransferSession_PrepareBlitterParameters(__CVBuffer *a1, size_t a2, uint64_t a3, void *a4, uint64_t *a5, void *a6, uint64_t *a7, size_t *a8)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  result = vtPixelTransferSession_EnsurePixelFormatPixelBlockInfoArray(PixelFormatType, a2, a4);
  if (result)
  {
    return result;
  }

  v18 = *a4;
  if (!CVPixelBufferIsPlanar(a1))
  {
    BaseAddress = CVPixelBufferGetBaseAddress(a1);
    *a5 = BaseAddress;
    *a6 = BaseAddress;
    *a7 = CVPixelBufferGetBytesPerRow(a1);
    DataSize = CVPixelBufferGetDataSize(a1);
    *a8 = DataSize;
    if (*a5)
    {
      v28 = DataSize;
      result = 4294954394;
      if (!*a7 || !v28)
      {
        return result;
      }

      goto LABEL_20;
    }

    return 4294954394;
  }

  v34 = a3;
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a1, 0);
  v20 = (CVPixelBufferGetBaseAddress(a1) - BaseAddressOfPlane);
  v21 = &v20[CVPixelBufferGetDataSize(a1)];
  v22 = a2 - 1;
  if (a2 == 1)
  {
    *a8 = v21;
    a3 = v34;
    goto LABEL_13;
  }

  v33 = v18;
  v23 = 0;
  do
  {
    v24 = CVPixelBufferGetBaseAddressOfPlane(a1, v23 + 1);
    v25 = CVPixelBufferGetBaseAddressOfPlane(a1, v23);
    a8[v23] = v24 - v25;
    v21 -= v24 - v25;
    ++v23;
  }

  while (v22 != v23);
  a8[v22] = v21;
  a3 = v34;
  v18 = v33;
  if (a2)
  {
LABEL_13:
    v29 = 0;
    do
    {
      v30 = CVPixelBufferGetBaseAddressOfPlane(a1, v29);
      a5[v29] = v30;
      a6[v29] = v30;
      BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a1, v29);
      a7[v29] = BytesPerRowOfPlane;
      v32 = !a5[v29] || BytesPerRowOfPlane == 0;
      if (v32 || !a8[v29])
      {
        return 4294954394;
      }
    }

    while (a2 != ++v29);
  }

LABEL_20:
  if (*(a3 + 40) || *(a3 + 32))
  {
    vtPixelTransferSession_PrepareOffsets(a2, a3, v18, a7, a5, a6);
  }

  return 0;
}

uint64_t RegisterVTCompressionSession()
{
  v0 = _CFRuntimeRegisterClass();
  sVTCompressionSessionID = v0;
  sVTCompressionSessionPropertyCallbacks = 0;
  *algn_1ED6D3FA8 = VTCompressionSessionCopySupportedPropertyDictionary;
  qword_1ED6D3FB0 = VTCompressionSessionSetProperty;
  qword_1ED6D3FB8 = VTCompressionSessionCopyProperty;
  qword_1ED6D3FC0 = VTCompressionSessionSetProperties;
  qword_1ED6D3FC8 = VTCompressionSessionCopySerializableProperties;

  return VTSessionRegisterCallbacksForTypeID(&sVTCompressionSessionPropertyCallbacks, v0);
}

uint64_t VTEncoderSessionSetPixelBufferAttributes(uint64_t *a1, const void *a2)
{
  if (a1)
  {
    if (a1[5])
    {
      v3 = a1[5];

      return VTParavirtualizationHostEncoderSessionSetPixelBufferAttributes(v3, a2);
    }

    else
    {
      v5 = *a1;
      if (*a1)
      {
        if (*(v5 + 16) == 2)
        {
          VTEncoderSessionSetPixelBufferAttributes_cold_1(&v7);
          return v7;
        }

        else
        {
          FigSimpleMutexLock();
          if (a2)
          {
            CFRetain(a2);
          }

          v6 = *(v5 + 512);
          if (v6)
          {
            CFRelease(v6);
          }

          *(v5 + 512) = a2;
          ++*(v5 + 520);
          FigSimpleMutexUnlock();
          return 0;
        }
      }

      else
      {
        VTEncoderSessionSetPixelBufferAttributes_cold_2(&v8);
        return v8;
      }
    }
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }
}

OSStatus VTSessionSetProperties(VTSessionRef session, CFDictionaryRef propertyDictionary)
{
  if (session && (v4 = CFGetTypeID(session), CallbacksWithTypeID = VTSessionGetCallbacksWithTypeID(v4), propertyDictionary) && (v6 = CallbacksWithTypeID) != 0 && (v7 = CFGetTypeID(propertyDictionary), v7 == CFDictionaryGetTypeID()))
  {
    v8 = v6[4];

    return v8(session, propertyDictionary);
  }

  else
  {

    return FigSignalErrorAtGM();
  }
}

uint64_t VTCompressionSessionSetProperties(uint64_t a1, CFDictionaryRef theDict)
{
  v24 = a1;
  v25 = 0;
  if (!a1)
  {
    VTCompressionSessionSetProperties_cold_2(&v25);
    return v25;
  }

  if (*(a1 + 16) == 2)
  {
    VTCompressionSessionSetProperties_cold_1(&v25);
    return v25;
  }

  v4 = *(a1 + 24);
  if (!v4)
  {
    if (theDict)
    {
      v27 = 0u;
      *cf = 0u;
      context = 0u;
      v6 = vtCompressionSessionCopyPropertiesHandledByVideoToolbox(&context);
      if (v6)
      {
        v7 = v6;
      }

      else
      {
        v8 = *(a1 + 472);
        v9 = *(*(CMBaseObjectGetVTable() + 16) + 32);
        if (!v9 || ((v10 = v9(v8, &context + 8), v10 != -12782) ? (v11 = v10 == 0) : (v11 = 1), v11))
        {
          if (!*(a1 + 850) || (v10 = VTRateControlSessionCopySupportedPropertyDictionary(*(a1 + 856), cf)) == 0)
          {
            CFDictionaryApplyFunction(theDict, vtCompressionSessionAddPropertyToPartition, &context);
            v7 = 0;
            v13 = *(&v27 + 1);
            v12 = v27;
            v14 = cf[1];
LABEL_21:
            if (context)
            {
              CFRelease(context);
            }

            if (*(&context + 1))
            {
              CFRelease(*(&context + 1));
            }

            if (cf[0])
            {
              CFRelease(cf[0]);
            }

            LODWORD(v25) = v7;
            if (!v7)
            {
              if (v14)
              {
                CFDictionaryApplyFunction(v14, vtCompressionSessionSetOneProperty_0, &v24);
              }

              if (v12)
              {
                CFDictionaryApplyFunction(v12, vtCompressionSessionSetOneProperty_0, &v24);
              }

              if (v13)
              {
                v15 = *(a1 + 472);
                v16 = *(*(CMBaseObjectGetVTable() + 16) + 40);
                if (v16 && (LODWORD(v25) = v16(v15, v13), v25 != -12782))
                {
                  if (!*(a1 + 850) && *(a1 + 851))
                  {
                    CFDictionaryApplyFunction(v13, vtCompressionSessionValidateOneProperty, &v24);
                  }

                  if (CFDictionaryContainsKey(v13, @"ProfileLevel"))
                  {
                    Value = CFDictionaryGetValue(v13, @"ProfileLevel");
                    v21 = *(a1 + 600);
                    if (v21 != Value)
                    {
                      *(a1 + 600) = Value;
                      if (Value)
                      {
                        CFRetain(Value);
                      }

                      if (v21)
                      {
                        CFRelease(v21);
                      }
                    }
                  }

                  if (CFDictionaryContainsKey(v13, @"OutputBitDepth"))
                  {
                    v22 = CFDictionaryGetValue(v13, @"OutputBitDepth");
                    v23 = (a1 + 608);
                    if (v22)
                    {
                      CFNumberGetValue(v22, kCFNumberSInt32Type, v23);
                    }

                    else
                    {
                      *v23 = 0;
                    }
                  }

                  FigCFDictionaryGetFloatIfPresent();
                  v17 = vtCoreAnalyticsSaveUserConfiguredCompressionProperty;
                  v19 = v13;
                  v18 = a1;
                }

                else
                {
                  LODWORD(v25) = 0;
                  v17 = vtCompressionSessionSetOneProperty_0;
                  v18 = &v24;
                  v19 = v13;
                }

                CFDictionaryApplyFunction(v19, v17, v18);
              }
            }

            if (v12)
            {
              CFRelease(v12);
            }

            if (v13)
            {
              CFRelease(v13);
            }

            if (v14)
            {
              CFRelease(v14);
            }

            return v25;
          }
        }

        v7 = v10;
        fig_log_get_emitter();
        FigSignalErrorAtGM();
      }

      v12 = 0;
      v13 = 0;
      v14 = 0;
      goto LABEL_21;
    }

    return v25;
  }

  return VTCompressionSessionRemote_SetProperties(v4, theDict);
}

OSStatus VTCompressionSessionEncodeFrame(VTCompressionSessionRef session, CVImageBufferRef imageBuffer, CMTime *presentationTimeStamp, CMTime *duration, CFDictionaryRef frameProperties, void *sourceFrameRefcon, VTEncodeInfoFlags *infoFlagsOut)
{
  if (!session)
  {
    VTCompressionSessionEncodeFrame_cold_4(&v18);
    return v18;
  }

  if (!imageBuffer)
  {
    VTCompressionSessionEncodeFrame_cold_3(&v18);
    return v18;
  }

  if (*(session + 4))
  {
    VTCompressionSessionEncodeFrame_cold_1(&v18);
    return v18;
  }

  if (!*(session + 569))
  {
    FigPowerReduceUtilitySFI();
  }

  v14 = *(session + 3);
  if (v14)
  {
    v18 = *&presentationTimeStamp->value;
    epoch = presentationTimeStamp->epoch;
    v16 = *&duration->value;
    v17 = duration->epoch;
    return VTCompressionSessionRemote_EncodeFrame(v14, imageBuffer, 0, &v18, &v16, frameProperties, sourceFrameRefcon, infoFlagsOut);
  }

  if (!*(session + 10))
  {
    VTCompressionSessionEncodeFrame_cold_2(&v18);
    return v18;
  }

  v18 = *&presentationTimeStamp->value;
  epoch = presentationTimeStamp->epoch;
  v16 = *&duration->value;
  v17 = duration->epoch;
  return vtCompressionSessionEncodeFrameCommon(session, imageBuffer, 0, &v18, &v16, frameProperties, 0, sourceFrameRefcon, infoFlagsOut);
}

void vtCompressionSessionConfirmSpatialAndColorProperties(uint64_t a1)
{
  v78 = 0;
  v79 = 0;
  cf = 0;
  cf1 = 0;
  v74 = 0;
  v75 = 0;
  v72 = 0;
  v73 = 0;
  v70 = 0;
  v71 = 0;
  v68 = 0;
  v69 = 0;
  IsPropertyHandledByVideoEncoder = vtCompressionSessionIsPropertyHandledByVideoEncoder(a1, @"PixelAspectRatio");
  v3 = MEMORY[0x1E695E480];
  if (!IsPropertyHandledByVideoEncoder)
  {
    goto LABEL_4;
  }

  v4 = *(a1 + 472);
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v5)
  {
    goto LABEL_4;
  }

  if (v5(v4, @"PixelAspectRatio", *v3, &v79))
  {
    goto LABEL_4;
  }

  v48 = v79;
  v49 = *(a1 + 136);
  if (v79 == v49)
  {
    goto LABEL_4;
  }

  if (!v79 || !v49)
  {
    goto LABEL_140;
  }

  if (CFEqual(v79, *(a1 + 136)))
  {
LABEL_4:
    v6 = 0;
    goto LABEL_5;
  }

  v49 = *(a1 + 136);
  v48 = v79;
LABEL_140:
  *(a1 + 136) = v48;
  if (v48)
  {
    CFRetain(v48);
  }

  if (v49)
  {
    CFRelease(v49);
  }

  v6 = 1;
LABEL_5:
  if (vtCompressionSessionIsPropertyHandledByVideoEncoder(a1, @"CleanAperture"))
  {
    v7 = *(a1 + 472);
    v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v8)
    {
      if (!v8(v7, @"CleanAperture", *v3, &v78))
      {
        v9 = v78;
        v10 = *(a1 + 144);
        if (v78 != v10)
        {
          if (v78 && v10)
          {
            if (CFEqual(v78, *(a1 + 144)))
            {
              goto LABEL_18;
            }

            v10 = *(a1 + 144);
            v9 = v78;
          }

          *(a1 + 144) = v9;
          if (v9)
          {
            CFRetain(v9);
          }

          if (v10)
          {
            CFRelease(v10);
          }

          v6 = 1;
        }
      }
    }
  }

LABEL_18:
  if (vtCompressionSessionIsPropertyHandledByVideoEncoder(a1, @"FieldCount"))
  {
    v11 = *(a1 + 472);
    v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v12)
    {
      if (!v12(v11, @"FieldCount", *v3, &cf1))
      {
        v13 = cf1;
        v14 = *(a1 + 152);
        if (cf1 != v14)
        {
          if (cf1 && v14)
          {
            if (CFEqual(cf1, *(a1 + 152)))
            {
              goto LABEL_31;
            }

            v14 = *(a1 + 152);
            v13 = cf1;
          }

          *(a1 + 152) = v13;
          if (v13)
          {
            CFRetain(v13);
          }

          if (v14)
          {
            CFRelease(v14);
          }

          v6 = 1;
        }
      }
    }
  }

LABEL_31:
  if (vtCompressionSessionIsPropertyHandledByVideoEncoder(a1, @"FieldDetail"))
  {
    v15 = *(a1 + 472);
    v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v16)
    {
      if (!v16(v15, @"FieldDetail", *v3, &cf))
      {
        v17 = cf;
        v18 = *(a1 + 160);
        if (cf != v18)
        {
          if (cf && v18)
          {
            if (CFEqual(cf, *(a1 + 160)))
            {
              goto LABEL_44;
            }

            v18 = *(a1 + 160);
            v17 = cf;
          }

          *(a1 + 160) = v17;
          if (v17)
          {
            CFRetain(v17);
          }

          if (v18)
          {
            CFRelease(v18);
          }

          v6 = 1;
        }
      }
    }
  }

LABEL_44:
  if (!vtCompressionSessionIsIPT(a1))
  {
    if (vtCompressionSessionIsPropertyHandledByVideoEncoder(a1, @"ColorPrimaries"))
    {
      v34 = *(a1 + 472);
      v35 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v35)
      {
        if (!v35(v34, @"ColorPrimaries", *v3, &v75))
        {
          v52 = v75;
          v53 = *(a1 + 176);
          if (v75 != v53)
          {
            v54 = 1;
            if (v75 && v53)
            {
              v54 = CFEqual(v75, v53) == 0;
              v52 = v75;
            }

            if (v54 && v52)
            {
              v55 = *(a1 + 176);
              *(a1 + 176) = v52;
              CFRetain(v52);
              if (v55)
              {
                CFRelease(v55);
              }

              v6 = 1;
            }
          }
        }
      }
    }

    if (vtCompressionSessionIsPropertyHandledByVideoEncoder(a1, @"TransferFunction"))
    {
      v36 = *(a1 + 472);
      v37 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v37)
      {
        if (!v37(v36, @"TransferFunction", *v3, &v74))
        {
          v56 = v74;
          v57 = *(a1 + 184);
          if (v74 != v57)
          {
            v58 = 1;
            if (v74 && v57)
            {
              v58 = CFEqual(v74, v57) == 0;
              v56 = v74;
            }

            if (v58 && v56)
            {
              v59 = *(a1 + 184);
              *(a1 + 184) = v56;
              CFRetain(v56);
              if (v59)
              {
                CFRelease(v59);
              }

              v6 = 1;
            }
          }
        }
      }
    }

    if (vtCompressionSessionIsPropertyHandledByVideoEncoder(a1, @"GammaLevel"))
    {
      v38 = *(a1 + 472);
      v39 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v39)
      {
        if (!v39(v38, @"GammaLevel", *v3, &v68))
        {
          v60 = v68;
          v61 = *(a1 + 192);
          if (v68 != v61)
          {
            v62 = 1;
            if (v68 && v61)
            {
              v62 = CFEqual(v68, v61) == 0;
              v60 = v68;
            }

            if (v62 && v60)
            {
              v63 = *(a1 + 192);
              *(a1 + 192) = v60;
              CFRetain(v60);
              if (v63)
              {
                CFRelease(v63);
              }

              v6 = 1;
            }
          }
        }
      }
    }

    if (vtCompressionSessionIsPropertyHandledByVideoEncoder(a1, @"YCbCrMatrix"))
    {
      v40 = *(a1 + 472);
      v41 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v41)
      {
        if (!v41(v40, @"YCbCrMatrix", *v3, &v73))
        {
          v64 = v73;
          v65 = *(a1 + 200);
          if (v73 != v65)
          {
            v66 = 1;
            if (v73 && v65)
            {
              v66 = CFEqual(v73, v65) == 0;
              v64 = v73;
            }

            if (v66 && v64)
            {
              v67 = *(a1 + 200);
              *(a1 + 200) = v64;
              CFRetain(v64);
              if (v67)
              {
                CFRelease(v67);
              }

              v6 = 1;
            }
          }
        }
      }
    }

    if (vtCompressionSessionIsPropertyHandledByVideoEncoder(a1, @"ICCProfile"))
    {
      v42 = *(a1 + 472);
      v43 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v43)
      {
        if (!v43(v42, @"ICCProfile", *v3, &v72))
        {
          v44 = v72;
          v45 = *(a1 + 208);
          if (v72 != v45)
          {
            v46 = 1;
            if (v72 && v45)
            {
              v46 = CFEqual(v72, v45) == 0;
              v44 = v72;
            }

            if (v46 && v44)
            {
              v47 = *(a1 + 208);
              *(a1 + 208) = v44;
              CFRetain(v44);
              if (v47)
              {
                CFRelease(v47);
              }

              v6 = 1;
            }
          }
        }
      }
    }
  }

  if (vtCompressionSessionIsPropertyHandledByVideoEncoder(a1, @"MasteringDisplayColorVolume"))
  {
    v19 = *(a1 + 472);
    v20 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v20)
    {
      if (!v20(v19, @"MasteringDisplayColorVolume", *v3, &v71))
      {
        v21 = v71;
        v22 = *(a1 + 216);
        if (v71 != v22)
        {
          if (v71 && v22)
          {
            if (CFEqual(v71, *(a1 + 216)))
            {
              goto LABEL_58;
            }

            v22 = *(a1 + 216);
            v21 = v71;
          }

          *(a1 + 216) = v21;
          if (v21)
          {
            CFRetain(v21);
          }

          if (v22)
          {
            CFRelease(v22);
          }

          v6 = 1;
        }
      }
    }
  }

LABEL_58:
  if (vtCompressionSessionIsPropertyHandledByVideoEncoder(a1, @"ContentLightLevelInfo"))
  {
    v23 = *(a1 + 472);
    v24 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v24)
    {
      if (!v24(v23, @"ContentLightLevelInfo", *v3, &v70))
      {
        v25 = v70;
        v26 = *(a1 + 224);
        if (v70 != v26)
        {
          if (!v70 || !v26)
          {
            goto LABEL_66;
          }

          if (!CFEqual(v70, *(a1 + 224)))
          {
            v26 = *(a1 + 224);
            v25 = v70;
LABEL_66:
            *(a1 + 224) = v25;
            if (v25)
            {
              CFRetain(v25);
            }

            if (v26)
            {
              CFRelease(v26);
            }

            v6 = 1;
          }
        }
      }
    }
  }

  if (!vtCompressionSessionIsPropertyHandledByVideoEncoder(a1, @"AmbientViewingEnvironment"))
  {
    goto LABEL_74;
  }

  v27 = *(a1 + 472);
  v28 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v28)
  {
    goto LABEL_74;
  }

  if (v28(v27, @"AmbientViewingEnvironment", *v3, &v69))
  {
    goto LABEL_74;
  }

  v50 = v69;
  v51 = *(a1 + 704);
  if (v69 == v51)
  {
    goto LABEL_74;
  }

  if (!v69 || !v51)
  {
    goto LABEL_150;
  }

  if (CFEqual(v69, *(a1 + 704)))
  {
LABEL_74:
    if (!v6)
    {
      goto LABEL_86;
    }

    goto LABEL_75;
  }

  v51 = *(a1 + 704);
  v50 = v69;
LABEL_150:
  *(a1 + 704) = v50;
  if (v50)
  {
    CFRetain(v50);
  }

  if (v51)
  {
    CFRelease(v51);
  }

LABEL_75:
  dispatch_group_wait(*(a1 + 280), 0xFFFFFFFFFFFFFFFFLL);
  v29 = *(a1 + 416);
  if (v29)
  {
    CFRelease(v29);
    *(a1 + 416) = 0;
  }

  v30 = *(a1 + 408);
  if (v30)
  {
    CFRelease(v30);
    *(a1 + 408) = 0;
  }

  v31 = *(a1 + 368);
  if (v31)
  {
    dispatch_release(v31);
    *(a1 + 368) = 0;
  }

  *(a1 + 376) = 0;
  v32 = *(a1 + 544);
  if (v32)
  {
    CFRelease(v32);
    *(a1 + 544) = 0;
  }

  v33 = *(a1 + 328);
  if (v33)
  {
    dispatch_release(v33);
    *(a1 + 328) = 0;
  }

  *(a1 + 336) = 0;
LABEL_86:
  if (v79)
  {
    CFRelease(v79);
  }

  if (v78)
  {
    CFRelease(v78);
  }

  if (cf1)
  {
    CFRelease(cf1);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v75)
  {
    CFRelease(v75);
  }

  if (v74)
  {
    CFRelease(v74);
  }

  if (v68)
  {
    CFRelease(v68);
  }

  if (v73)
  {
    CFRelease(v73);
  }

  if (v72)
  {
    CFRelease(v72);
  }

  if (v71)
  {
    CFRelease(v71);
  }

  if (v70)
  {
    CFRelease(v70);
  }

  if (v69)
  {
    CFRelease(v69);
  }

  *(a1 + 256) = 0;
}

BOOL vtCompressionSessionIsPropertyHandledByVideoEncoder(uint64_t a1, const void *a2)
{
  theDict = 0;
  v3 = *(a1 + 472);
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v4)
  {
    return 0;
  }

  v4(v3, &theDict);
  if (!theDict)
  {
    return 0;
  }

  v5 = CFDictionaryContainsKey(theDict, a2) != 0;
  if (theDict)
  {
    CFRelease(theDict);
  }

  return v5;
}

uint64_t vtCloneCompressionFrameTrackingInfo(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x193AE0CD0](a1, 48, 0x10E00404507F4E6, 0);
  v4 = *(a2 + 8);
  *v3 = *a2;
  if (v4)
  {
    v4 = CFRetain(v4);
  }

  *(v3 + 8) = v4;
  v5 = *(a2 + 16);
  if (v5)
  {
    v5 = CFRetain(v5);
  }

  *(v3 + 16) = v5;
  *(v3 + 24) = _Block_copy(*(a2 + 24));
  *(v3 + 41) = *(a2 + 41);
  return v3;
}

uint64_t VTEncoderSessionCreateVideoFormatDescription(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5, CMVideoFormatDescriptionRef *a6)
{
  v26[0] = 0;
  if (a1)
  {
    v7 = a5;
    v8 = a4;
    v9 = a3;
    v10 = a2;
    if (a1[5])
    {
      v11 = a1[5];

      return VTParavirtualizationHostEncoderSessionCreateVideoFormatDescription(v11, a2, a3, a4, a5, a6);
    }

    v13 = *a1;
    if (*a1)
    {
      if (*(v13 + 16) != 2)
      {
        vtCompressionSessionCopyFallbackVideoFormatDescriptionExtensions(*a1, a5, v26);
        if (*(v13 + 724))
        {
          v14 = v26[0];
          v15 = vtCompressionSessionAddDolbyVisionVideoFormatDescriptionExtensions(v13, v9, v8, v26[0]);
          if (v15)
          {
            goto LABEL_44;
          }

          if (*(v13 + 724) == 5)
          {
            if (v10 == 1902671459)
            {
              v10 = 1902405681;
            }

            else if (v10 == 1752589105)
            {
              v10 = 1685481521;
            }
          }
        }

        if (*(v13 + 689))
        {
          v14 = v26[0];
          if (*(v13 + 688))
          {
            if (!*(v13 + 690))
            {
              if (v26[0])
              {
                value = 0;
                v16 = *(v13 + 712);
                if (v16)
                {
                  v26[1] = 0;
                  v26[2] = 0;
                  BytePtr = CFDataGetBytePtr(v16);
                  Length = CFDataGetLength(*(v13 + 712));
                  v17 = *MEMORY[0x1E69600A0];
                  UpdatedHVCCWithAdditionalHEVCParameterSets = CFDictionaryGetValue(v14, *MEMORY[0x1E69600A0]);
                  Count = FigCFDictionaryGetCount();
                  if (!UpdatedHVCCWithAdditionalHEVCParameterSets)
                  {
                    goto LABEL_29;
                  }

                  v20 = Count;
                  v21 = CFGetAllocator(v13);
                  MutableCopy = CFDictionaryCreateMutableCopy(v21, v20, UpdatedHVCCWithAdditionalHEVCParameterSets);
                  if (CFDictionaryGetValue(MutableCopy, @"hvcC"))
                  {
                    CFGetAllocator(v13);
                    UpdatedHVCCWithAdditionalHEVCParameterSets = FigVideoFormatDescriptionCreateUpdatedHVCCWithAdditionalHEVCParameterSets();
                    if (!UpdatedHVCCWithAdditionalHEVCParameterSets)
                    {
                      CFDictionarySetValue(MutableCopy, @"hvcC", value);
                      CFDictionarySetValue(v14, v17, MutableCopy);
                    }

                    if (MutableCopy)
                    {
                      goto LABEL_28;
                    }
                  }

                  else
                  {
                    VTEncoderSessionCreateVideoFormatDescription_cold_1(&v30);
                    UpdatedHVCCWithAdditionalHEVCParameterSets = v30;
                    if (MutableCopy)
                    {
LABEL_28:
                      CFRelease(MutableCopy);
                    }
                  }

LABEL_29:
                  if (value)
                  {
                    CFRelease(value);
                  }

                  if (UpdatedHVCCWithAdditionalHEVCParameterSets)
                  {
LABEL_42:
                    CFRelease(v14);
                    return UpdatedHVCCWithAdditionalHEVCParameterSets;
                  }
                }
              }
            }
          }
        }

        else
        {
          v14 = v26[0];
        }

        if (v14)
        {
          v7 = v14;
        }

        v23 = CFGetAllocator(v13);
        v15 = CMVideoFormatDescriptionCreate(v23, v10, v9, v8, v7, a6);
        if (!v15)
        {
          v24 = *(v13 + 32);
          v25 = *a6;
          *(v13 + 32) = *a6;
          if (v25)
          {
            CFRetain(v25);
          }

          if (v24)
          {
            CFRelease(v24);
          }

          UpdatedHVCCWithAdditionalHEVCParameterSets = 0;
          if (!v14)
          {
            return UpdatedHVCCWithAdditionalHEVCParameterSets;
          }

          goto LABEL_42;
        }

LABEL_44:
        UpdatedHVCCWithAdditionalHEVCParameterSets = v15;
        if (!v14)
        {
          return UpdatedHVCCWithAdditionalHEVCParameterSets;
        }

        goto LABEL_42;
      }

      VTEncoderSessionCreateVideoFormatDescription_cold_2(&BytePtr);
    }

    else
    {
      VTEncoderSessionCreateVideoFormatDescription_cold_3(&BytePtr);
    }

    return BytePtr;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

void VTEncoderSessionEmitEncodedFrame(uint64_t *a1, uint64_t a2, uint64_t a3, unsigned int a4, opaqueCMSampleBuffer *a5)
{
  v44 = *MEMORY[0x1E69E9840];
  v41 = a4;
  cf = 0;
  sbuf = a5;
  if (a1)
  {
    if (a1[5])
    {
      OUTLINED_FUNCTION_15_0();

      VTParavirtualizationHostEncoderSessionEmitEncodedFrame(v6, v7, v8, v9, v10);
      return;
    }

    v13 = *a1;
    if (*a1)
    {
      if (*(v13 + 16) != 2)
      {
        if (a3)
        {
          sbuf = 0;
        }

        if (*(v13 + 850))
        {
          FigSimpleMutexLock();
          v14 = OUTLINED_FUNCTION_13_0();
          Value = CFDictionaryGetValue(v14, v15);
          if (Value)
          {
            v17 = Value[40];
            FigSimpleMutexUnlock();
            if (v17)
            {
              VTRateControlSessionBeforeEmitEncodedFrame(*(v13 + 856));
            }
          }

          else
          {
            fig_log_get_emitter();
            OUTLINED_FUNCTION_3_0();
            v38 = FigSignalErrorAtGM();
            FigSimpleMutexUnlock();
            if (v38)
            {
              goto LABEL_49;
            }
          }
        }

        FigSimpleMutexLock();
        v18 = OUTLINED_FUNCTION_13_0();
        v20 = CFDictionaryGetValue(v18, v19);
        if (v20)
        {
          if (!v20[41])
          {
            v20[41] = 1;
            v21 = *v20;
            v22 = *(v20 + 1);
            v24 = *(v20 + 2);
            v23 = *(v20 + 3);
            FigSimpleMutexUnlock();
            v25 = sbuf;
            if (!sbuf || *MEMORY[0x1E695E4D0] != *(v13 + 616) || (v22 ? (v26 = *(v13 + 724) == 0) : (v26 = 1), v26 ? (v27 = v24 == 0) : (v27 = 0), v27 || (NumSamples = CMSampleBufferGetNumSamples(sbuf), v25 = sbuf, NumSamples != 1)))
            {
              v30 = 0;
              goto LABEL_36;
            }

            if (v22)
            {
              v29 = v22;
            }

            else
            {
              v29 = v24;
            }

            if (!VTHDRMetadataGenerationSessionInsertData(*(v13 + 656), sbuf, v29, &cf))
            {
              v30 = cf;
              v25 = sbuf;
LABEL_36:
              if (v30)
              {
                v32 = v30;
              }

              else
              {
                v32 = v25;
              }

              v33 = *(v13 + 80);
              if (v33)
              {
                v33(*(v13 + 88), v21, a3, v41, v32);
              }

              else if (v23)
              {
                (*(v23 + 16))(v23, a3, v41, v32);
              }

              ++*(v13 + 884);
              if (cf)
              {
                CFRelease(cf);
              }

              FigSimpleMutexLock();
              v34 = OUTLINED_FUNCTION_13_0();
              if (CFDictionaryGetValue(v34, v35))
              {
                v36 = OUTLINED_FUNCTION_13_0();
                CFDictionaryRemoveValue(v36, v37);
                *(v13 + 120) = vadd_s32(*(v13 + 120), -1);
              }

              else
              {
                fig_log_get_emitter();
                OUTLINED_FUNCTION_3_0();
                FigSignalErrorAtGM();
              }

              FigSimpleMutexUnlock();
            }

LABEL_49:
            OUTLINED_FUNCTION_15_0();
            return;
          }
        }

        else
        {
          v43 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        FigSimpleMutexUnlock();
        goto LABEL_49;
      }
    }
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_15_0();

  FigSignalErrorAtGM();
}

void vtFreeCompressionFrameTrackingInfo(const __CFAllocator *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a2 + 16);
  if (v5)
  {
    CFRelease(v5);
  }

  _Block_release(*(a2 + 24));

  CFAllocatorDeallocate(a1, a2);
}

OSStatus VTCompressionSessionCompleteFrames(VTCompressionSessionRef session, CMTime *completeUntilPresentationTimeStamp)
{
  v10 = 0;
  if (!session)
  {
    VTCompressionSessionCompleteFrames_cold_2(&v9);
LABEL_14:
    value = v9.value;
LABEL_10:
    vtCompressionSessionPipelineContextInvalidate(&v10);
    return value;
  }

  if (*(session + 4) == 2)
  {
    VTCompressionSessionCompleteFrames_cold_1(&v9);
    goto LABEL_14;
  }

  v3 = *(session + 3);
  if (!v3)
  {
    v9 = *completeUntilPresentationTimeStamp;
    vtCompressionSessionPipelineCreateContext(session, 0, 0, 0, 0, 0, &v9.value, MEMORY[0x1E6960C70], 0, 0, &v10);
    v5 = *(session + 35);
    if (v5)
    {
      dispatch_group_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
    }

    v6 = *(session + 37);
    v7 = v10;
    if (v6)
    {
      dispatch_sync_f(v6, v10, vtCompressionSessionCompleteFramesWork);
    }

    value = v7[28];
    goto LABEL_10;
  }

  v9 = *completeUntilPresentationTimeStamp;
  return VTCompressionSessionRemote_CompleteFrames(v3, &v9);
}

void VTCompressionSessionInvalidate(VTCompressionSessionRef session)
{
  if (session)
  {
    v3 = *(session + 4);
    v2 = (session + 16);
    if (!v3)
    {
      VTCompressionSessionInvalidate_cold_1(v2, session);
    }
  }
}

void vtCompressionSessionFinalize(uint64_t a1)
{
  VTCompressionSessionInvalidate(a1);
  v2 = *(a1 + 472);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 472) = 0;
  }

  v3 = *(a1 + 512);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 512) = 0;
  }

  v4 = *(a1 + 528);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 528) = 0;
  }

  v5 = *(a1 + 536);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 536) = 0;
  }

  v6 = *(a1 + 408);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 408) = 0;
  }

  v7 = *(a1 + 544);
  if (v7)
  {
    CFRelease(v7);
    *(a1 + 544) = 0;
  }

  v8 = *(a1 + 560);
  if (v8)
  {
    CFRelease(v8);
    *(a1 + 560) = 0;
  }

  FigSimpleMutexDestroy();
  *(a1 + 504) = 0;
  v9 = *(a1 + 128);
  if (v9)
  {
    CFRelease(v9);
    *(a1 + 128) = 0;
  }

  FigSimpleMutexDestroy();
  *(a1 + 104) = 0;
  v10 = *(a1 + 136);
  if (v10)
  {
    CFRelease(v10);
    *(a1 + 136) = 0;
  }

  v11 = *(a1 + 144);
  if (v11)
  {
    CFRelease(v11);
    *(a1 + 144) = 0;
  }

  v12 = *(a1 + 152);
  if (v12)
  {
    CFRelease(v12);
    *(a1 + 152) = 0;
  }

  v13 = *(a1 + 160);
  if (v13)
  {
    CFRelease(v13);
    *(a1 + 160) = 0;
  }

  v14 = *(a1 + 168);
  if (v14)
  {
    CFRelease(v14);
    *(a1 + 168) = 0;
  }

  v15 = *(a1 + 176);
  if (v15)
  {
    CFRelease(v15);
    *(a1 + 176) = 0;
  }

  v16 = *(a1 + 184);
  if (v16)
  {
    CFRelease(v16);
    *(a1 + 184) = 0;
  }

  v17 = *(a1 + 192);
  if (v17)
  {
    CFRelease(v17);
    *(a1 + 192) = 0;
  }

  v18 = *(a1 + 200);
  if (v18)
  {
    CFRelease(v18);
    *(a1 + 200) = 0;
  }

  v19 = *(a1 + 208);
  if (v19)
  {
    CFRelease(v19);
    *(a1 + 208) = 0;
  }

  v20 = *(a1 + 216);
  if (v20)
  {
    CFRelease(v20);
    *(a1 + 216) = 0;
  }

  v21 = *(a1 + 224);
  if (v21)
  {
    CFRelease(v21);
    *(a1 + 224) = 0;
  }

  v22 = *(a1 + 416);
  if (v22)
  {
    CFRelease(v22);
    *(a1 + 416) = 0;
  }

  v23 = *(a1 + 232);
  if (v23)
  {
    CFRelease(v23);
    *(a1 + 232) = 0;
  }

  v24 = *(a1 + 240);
  if (v24)
  {
    CFRelease(v24);
    *(a1 + 240) = 0;
  }

  v25 = *(a1 + 248);
  if (v25)
  {
    CFRelease(v25);
    *(a1 + 248) = 0;
  }

  v26 = *(a1 + 656);
  if (v26)
  {
    CFRelease(v26);
    *(a1 + 656) = 0;
  }

  v27 = *(a1 + 680);
  if (v27)
  {
    CFRelease(v27);
    *(a1 + 680) = 0;
  }

  v28 = *(a1 + 704);
  if (v28)
  {
    CFRelease(v28);
    *(a1 + 704) = 0;
  }

  v29 = *(a1 + 712);
  if (v29)
  {
    CFRelease(v29);
    *(a1 + 712) = 0;
  }

  v30 = *(a1 + 600);
  if (v30)
  {
    CFRelease(v30);
    *(a1 + 600) = 0;
  }

  v31 = *(a1 + 664);
  if (v31)
  {
    CFRelease(v31);
    *(a1 + 664) = 0;
  }

  v32 = *(a1 + 672);
  if (v32)
  {
    CFRelease(v32);
    *(a1 + 672) = 0;
  }

  v33 = *(a1 + 744);
  if (v33)
  {
    CFRelease(v33);
    *(a1 + 744) = 0;
  }

  v34 = *(a1 + 752);
  if (v34)
  {
    CFRelease(v34);
    *(a1 + 752) = 0;
  }

  v35 = *(a1 + 760);
  if (v35)
  {
    CFRelease(v35);
    *(a1 + 760) = 0;
  }

  v36 = *(a1 + 776);
  if (v36)
  {
    CFRelease(v36);
    *(a1 + 776) = 0;
  }

  v37 = *(a1 + 800);
  if (v37)
  {
    CFRelease(v37);
    *(a1 + 800) = 0;
  }

  v38 = *(a1 + 264);
  if (v38)
  {
    CFRelease(v38);
    *(a1 + 264) = 0;
  }

  v39 = *(a1 + 32);
  if (v39)
  {
    CFRelease(v39);
    *(a1 + 32) = 0;
  }

  v40 = *(a1 + 56);
  if (v40)
  {
    CFRelease(v40);
    *(a1 + 56) = 0;
  }

  v41 = *(a1 + 64);
  if (v41)
  {
    CFRelease(v41);
    *(a1 + 64) = 0;
  }

  v42 = *(a1 + 72);
  if (v42)
  {
    CFRelease(v42);
    *(a1 + 72) = 0;
  }

  VTEncoderSessionTeardown(a1 + 424);
  FigSemaphoreDestroy();
  *(a1 + 312) = 0;
  FigSemaphoreDestroy();
  *(a1 + 352) = 0;
  FigSemaphoreDestroy();
  *(a1 + 384) = 0;
  FigSemaphoreDestroy();
  *(a1 + 320) = 0;
  FigSemaphoreDestroy();
  *(a1 + 360) = 0;
  FigSemaphoreDestroy();
  *(a1 + 392) = 0;
  v43 = *(a1 + 328);
  if (v43)
  {
    dispatch_release(v43);
    *(a1 + 328) = 0;
  }

  v44 = *(a1 + 296);
  if (v44)
  {
    dispatch_release(v44);
    *(a1 + 296) = 0;
  }

  v45 = *(a1 + 368);
  if (v45)
  {
    dispatch_release(v45);
    *(a1 + 368) = 0;
  }

  v46 = *(a1 + 280);
  if (v46)
  {
    dispatch_release(v46);
    *(a1 + 280) = 0;
  }

  v47 = *(a1 + 496);
  if (v47)
  {
    CFRelease(v47);
    *(a1 + 496) = 0;
  }

  free(*(a1 + 840));
  *(a1 + 840) = 0;
  v48 = *(a1 + 816);
  if (v48)
  {
    CFRelease(v48);
    *(a1 + 816) = 0;
  }

  v49 = *(a1 + 24);
  if (v49)
  {
    CFRelease(v49);
    *(a1 + 24) = 0;
  }

  v50 = *(a1 + 872);
  if (v50)
  {
    CFRelease(v50);
    *(a1 + 872) = 0;
  }

  v51 = *(a1 + 904);
  if (v51)
  {
    CFRelease(v51);
    *(a1 + 904) = 0;
  }

  v52 = *(a1 + 912);
  if (v52)
  {
    CFRelease(v52);
    *(a1 + 912) = 0;
  }

  v53 = *(a1 + 920);
  if (v53)
  {
    CFRelease(v53);
    *(a1 + 920) = 0;
  }

  v54 = *(a1 + 928);
  if (v54)
  {
    CFRelease(v54);
    *(a1 + 928) = 0;
  }

  v55 = *(a1 + 936);
  if (v55)
  {
    CFRelease(v55);
    *(a1 + 936) = 0;
  }
}

uint64_t vtRotatePixelRect180_1BPP_inplace_arm(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a1 & 3) != 0 || (a3 & 3) != 0 || (a2 & 0xF) != 0 || (a4 & 0xF) != 0 || (a5 & 0xF) != 0)
  {
    return -1;
  }

  v6 = a3 + a4 * a6;
  v7 = a6 >> 1;
  v8 = a2 - a5;
  v9 = a4 - a5;
  v10 = a5 >> 4;
  v11 = (v6 - v9);
  while (1)
  {
    do
    {
      v12 = bswap64(*a1);
      v13 = bswap64(a1[1]);
      v11 -= 2;
      v14 = bswap64(*v11);
      *a1 = bswap64(v11[1]);
      a1[1] = v14;
      a1 += 2;
      *v11 = v13;
      v11[1] = v12;
      --v10;
    }

    while (v10);
    if (!--v7)
    {
      break;
    }

    a1 = (a1 + v8);
    v11 = (v11 - v9);
    v10 = a5 >> 4;
  }

  return 0;
}

uint64_t vtRotatePixelRect180_1BPP_arm(int8x16_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a1 & 3) != 0 || (a3 & 3) != 0)
  {
    return -1;
  }

  if ((a2 & 0x1F) != 0 || (a4 & 0x1F) != 0 || (a5 & 0x1F) != 0)
  {
    if ((a2 & 0xF) == 0 && (a4 & 0xF) == 0 && (a5 & 0xF) == 0)
    {
      v15 = a3 + a4 * a6;
      v16 = a2 - a5;
      v17 = a4 - a5;
      v18 = a5 >> 4;
      v19 = (v15 - v17);
      while (1)
      {
        do
        {
          v20 = a1->i64[0];
          v21 = a1->u64[1];
          ++a1;
          v19 -= 2;
          *v19 = bswap64(v21);
          v19[1] = bswap64(v20);
          --v18;
        }

        while (v18);
        if (!--a6)
        {
          break;
        }

        a1 = (a1 + v16);
        v19 = (v19 - v17);
        v18 = a5 >> 4;
      }

      return 0;
    }

    return -1;
  }

  v6 = a3 + a4 * a6;
  v7 = a2 - a5;
  v8 = a4 - a5;
  v9 = a5 >> 5;
  v10 = (v6 - v8);
  while (1)
  {
    do
    {
      v11 = *a1;
      v12 = a1[1];
      a1 += 2;
      v13 = vrev64q_s8(v11);
      v14 = vrev64q_s8(v12);
      v10 -= 2;
      *v10 = vextq_s8(v14, v14, 8uLL);
      v10[1] = vextq_s8(v13, v13, 8uLL);
      --v9;
    }

    while (v9);
    if (!--a6)
    {
      break;
    }

    a1 = (a1 + v7);
    v10 = (v10 - v8);
    v9 = a5 >> 5;
  }

  return 0;
}

uint64_t vtRotatePixelRect180_2BPP_inplace_arm(int16x8_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a1 & 3) != 0 || (a3 & 3) != 0 || (a2 & 0xF) != 0 || (a4 & 0xF) != 0 || (a5 & 0xF) != 0)
  {
    return -1;
  }

  v6 = a3 + a4 * a6;
  v7 = a6 >> 1;
  v8 = 2 * a5;
  v9 = a2 - v8;
  v10 = a4 - v8;
  v11 = v8 >> 4;
  v12 = (v6 - v10);
  while (1)
  {
    do
    {
      v13 = vrev64q_s16(*a1);
      v14 = vrev64q_s16(*--v12);
      *a1++ = vextq_s8(v14, v14, 8uLL);
      *v12 = vextq_s8(v13, v13, 8uLL);
      --v11;
    }

    while (v11);
    if (!--v7)
    {
      break;
    }

    a1 = (a1 + v9);
    v12 = (v12 - v10);
    v11 = v8 >> 4;
  }

  return 0;
}

uint64_t vtRotatePixelRect180_2BPP_arm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a1 & 3) != 0 || (a3 & 3) != 0)
  {
    return -1;
  }

  if ((a2 & 0x1F) != 0 || (a4 & 0x1F) != 0 || (a5 & 0x1F) != 0)
  {
    if ((a2 & 0xF) == 0 && (a4 & 0xF) == 0 && (a5 & 0xF) == 0)
    {
      v16 = a3 + a4 * a6;
      v17 = 2 * a5;
      v18 = a2 - v17;
      v19 = a4 - v17;
      v20 = v17 >> 4;
      v21 = (v16 - v19);
      while (1)
      {
        do
        {
          v22 = *a1;
          v23 = *(a1 + 8);
          a1 += 16;
          v21 -= 2;
          *v21 = vrev64_s16(v23);
          v21[1] = vrev64_s16(v22);
          --v20;
        }

        while (v20);
        if (!--a6)
        {
          break;
        }

        a1 += v18;
        v21 = (v21 - v19);
        v20 = v17 >> 4;
      }

      return 0;
    }

    return -1;
  }

  v6 = a3 + a4 * a6;
  v7 = 2 * a5;
  v8 = a2 - v7;
  v9 = a4 - v7;
  v10 = v7 >> 5;
  v11 = (v6 - v9);
  while (1)
  {
    do
    {
      v12 = *a1;
      v13 = *(a1 + 16);
      a1 += 32;
      v14 = vrev64q_s16(v12);
      v15 = vrev64q_s16(v13);
      v11 -= 2;
      *v11 = vextq_s8(v15, v15, 8uLL);
      v11[1] = vextq_s8(v14, v14, 8uLL);
      --v10;
    }

    while (v10);
    if (!--a6)
    {
      break;
    }

    a1 += v8;
    v11 = (v11 - v9);
    v10 = v7 >> 5;
  }

  return 0;
}

uint64_t vtRotatePixelRect90CW_1BPP_arm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a1 & 3) != 0 || (a3 & 3) != 0 || (a2 & 7) != 0 || (a4 & 7) != 0 || (a5 & 7) != 0 || (a6 & 7) != 0)
  {
    return -1;
  }

  v6 = (a3 + a5 - 8);
  v7 = v6;
  v8 = a5;
  for (i = a6 >> 3; ; i = a6 >> 3)
  {
    do
    {
      v11.i64[0] = *a1;
      v10 = (a1 + a2);
      v11.i64[1] = *v10;
      v12 = (v10 + a2);
      v14.i64[0] = *v12;
      v13 = (v12 + a2);
      v14.i64[1] = *v13;
      v15 = (v13 + a2);
      v17.i64[0] = *v15;
      v16 = (v15 + a2);
      v17.i64[1] = *v16;
      v18 = (v16 + a2);
      v20.i64[0] = *v18;
      v19 = (v18 + a2);
      v20.i64[1] = *v19;
      v21 = vuzp1q_s8(v11, v14);
      v22 = vuzp2q_s8(v11, v14);
      v23 = vuzp1q_s8(v21, v22);
      v24 = vuzp2q_s8(v21, v22);
      v25 = vuzp1q_s8(v23, v24);
      v26 = vuzp2q_s8(v23, v24);
      v27 = vuzp1q_s8(v17, v20);
      v28 = vuzp2q_s8(v17, v20);
      v29 = vuzp1q_s8(v27, v28);
      v30 = vuzp2q_s8(v27, v28);
      v31 = vuzp1q_s8(v29, v30);
      v32 = vuzp2q_s8(v29, v30);
      v33 = vtrn2q_s32(v25, v31);
      v34 = vtrn2q_s32(v26, v32);
      v35 = vrev64q_s8(vtrn1q_s32(v25, v31));
      v36 = vrev64q_s8(vtrn1q_s32(v26, v32));
      v37 = vrev64q_s8(v33);
      v38 = vrev64q_s8(v34);
      *v6 = v35.i64[0];
      v39 = (v6 + a4);
      *v39 = v37.i64[0];
      v40 = (v39 + a4);
      *v40 = v35.i64[1];
      v41 = (v40 + a4);
      *v41 = v37.i64[1];
      v42 = (v41 + a4);
      *v42 = v36.i64[0];
      v43 = (v42 + a4);
      *v43 = v38.i64[0];
      v44 = (v43 + a4);
      *v44 = v36.i64[1];
      v45 = (v44 + a4);
      *v45 = v38.i64[1];
      v6 = (v45 + a4);
      a1 = v19 + a2 + -8 * a2 + 8;
      --i;
    }

    while (i);
    v8 -= 8;
    if (!v8)
    {
      break;
    }

    a1 = a1 - a6 + 8 * a2;
    v6 = --v7;
  }

  return 0;
}

uint64_t vtRotatePixelRect90CCW_1BPP_arm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a1 & 3) != 0 || (a3 & 3) != 0 || (a2 & 7) != 0 || (a4 & 7) != 0 || (a5 & 7) != 0 || (a6 & 7) != 0)
  {
    return -1;
  }

  v6 = (a3 + a4 * (a6 - 1));
  v7 = v6;
  v8 = -a4;
  v9 = a5;
  for (i = a6 >> 3; ; i = a6 >> 3)
  {
    do
    {
      v12.i64[0] = *a1;
      v11 = (a1 + a2);
      v12.i64[1] = *v11;
      v13 = (v11 + a2);
      v15.i64[0] = *v13;
      v14 = (v13 + a2);
      v15.i64[1] = *v14;
      v16 = (v14 + a2);
      v18.i64[0] = *v16;
      v17 = (v16 + a2);
      v18.i64[1] = *v17;
      v19 = (v17 + a2);
      v21.i64[0] = *v19;
      v20 = (v19 + a2);
      v21.i64[1] = *v20;
      v22 = vuzp1q_s8(v12, v15);
      v23 = vuzp2q_s8(v12, v15);
      v24 = vuzp1q_s8(v22, v23);
      v25 = vuzp2q_s8(v22, v23);
      v26 = vuzp1q_s8(v24, v25);
      v27 = vuzp2q_s8(v24, v25);
      v28 = vuzp1q_s8(v18, v21);
      v29 = vuzp2q_s8(v18, v21);
      v30 = vuzp1q_s8(v28, v29);
      v31 = vuzp2q_s8(v28, v29);
      v32 = vuzp1q_s8(v30, v31);
      v33 = vuzp2q_s8(v30, v31);
      v34 = vtrn1q_s32(v26, v32);
      v35 = vtrn2q_s32(v26, v32);
      v36 = vtrn1q_s32(v27, v33);
      v37 = vtrn2q_s32(v27, v33);
      *v6 = v34.i64[0];
      v38 = (v6 + v8);
      *v38 = v35.i64[0];
      v39 = (v38 + v8);
      *v39 = v34.i64[1];
      v40 = (v39 + v8);
      *v40 = v35.i64[1];
      v41 = (v40 + v8);
      *v41 = v36.i64[0];
      v42 = (v41 + v8);
      *v42 = v37.i64[0];
      v43 = (v42 + v8);
      *v43 = v36.i64[1];
      v44 = (v43 + v8);
      *v44 = v37.i64[1];
      v6 = (v44 + v8);
      a1 = v20 + a2 + -8 * a2 + 8;
      --i;
    }

    while (i);
    v9 -= 8;
    if (!v9)
    {
      break;
    }

    a1 = a1 - a6 + 8 * a2;
    v6 = ++v7;
  }

  return 0;
}

uint64_t VTPixelTransferChainAppendSoftwareNode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t))
{
  VTPixelTransferNodeGetClassID();
  v8 = CMDerivedObjectCreate();
  FigSignalErrorAtGM();
  if (a5)
  {
    a6(a5);
  }

  return v8;
}

uint64_t vtPixelTransferChainAppendDynamicNode()
{
  VTPixelTransferNodeGetClassID();
  v0 = CMDerivedObjectCreate();
  FigSignalErrorAtGM();
  return v0;
}

void vtFreePlanarBuffers(uint64_t a1)
{
  for (i = 0; i != 128; i += 32)
  {
    v3 = *(a1 + i);
    if (v3)
    {
      free(v3);
      *(a1 + i) = 0;
    }
  }
}

uint64_t VTPixelTransferSessionCopySupportedPropertyDictionary(uint64_t a1, CFTypeRef *a2)
{
  if (!*(a1 + 16) && (MEMORY[0x193AE3010](&sCreateSupportedPropertyDictionaryOnce, vtPixelTransferSessionCreateSupportedPropertyDictionary), a2) && sVTPixelTransferSessionSupportedPropertyDictionary)
  {
    *a2 = CFRetain(sVTPixelTransferSessionSupportedPropertyDictionary);
    return 0;
  }

  else
  {

    return FigSignalErrorAtGM();
  }
}

void vtPixelTransferSessionCreateSupportedPropertyDictionary()
{
  v62 = *MEMORY[0x1E69E9840];
  v53 = 0;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v48 = 0u;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v40 = 0u;
  keys = @"PropertyType";
  v47 = @"ReadWriteStatus";
  v38 = @"Enumeration";
  v39 = @"ReadWrite";
  values = @"Normal";
  v55 = @"CropSourceToCleanAperture";
  v56 = @"Letterbox";
  v57 = @"Trim";
  v0 = *MEMORY[0x1E695E480];
  v1 = CFArrayCreate(*MEMORY[0x1E695E480], &values, 4, MEMORY[0x1E695E9C0]);
  if (!v1)
  {
    FigSignalErrorAtGM();
    FigSignalErrorAtGM();
    return;
  }

  v2 = v1;
  *&v48 = @"SupportedValueList";
  *&v40 = v1;
  v3 = CFDictionaryCreate(v0, &keys, &v38, 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v3)
  {
    FigSignalErrorAtGM();
    v26 = v2;
LABEL_57:
    CFRelease(v26);
    return;
  }

  cf = v3;
  v38 = @"ReadWrite";
  keys = @"ReadWriteStatus";
  v4 = CFDictionaryCreate(v0, &keys, &v38, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v5 = v4;
  if (!v4)
  {
    FigSignalErrorAtGM();
    v22 = 0;
    v27 = 0;
    v28 = 0;
    v35 = 0;
    v36 = 0;
    v33 = 0;
    v34 = 0;
    v17 = 0;
    v32 = 0;
    v21 = 0;
    v19 = 0;
    v20 = 0;
    v24 = 0;
    goto LABEL_29;
  }

  v31 = CFRetain(v4);
  keys = @"PropertyType";
  v47 = @"ReadWriteStatus";
  v38 = @"Enumeration";
  v39 = @"ReadWrite";
  values = @"Decimate";
  v55 = @"Average";
  v6 = CFArrayCreate(v0, &values, 2, MEMORY[0x1E695E9C0]);
  if (!v6)
  {
    FigSignalErrorAtGM();
    FigSignalErrorAtGM();
    v27 = 0;
    v28 = 0;
    v35 = 0;
    v36 = 0;
    v33 = 0;
    v34 = 0;
    v17 = 0;
    v32 = 0;
    v21 = 0;
    v19 = 0;
    v20 = 0;
    v24 = 0;
    v22 = v31;
    goto LABEL_29;
  }

  *&v48 = @"SupportedValueList";
  v30 = v6;
  *&v40 = v6;
  v29 = CFDictionaryCreate(v0, &keys, &v38, 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v29)
  {
    FigSignalErrorAtGM();
    v28 = 0;
    v35 = 0;
    v36 = 0;
    v33 = 0;
    v34 = 0;
    v17 = 0;
    v32 = 0;
    v21 = 0;
    v19 = 0;
    v20 = 0;
    v24 = 0;
    v27 = v30;
    v22 = v31;
    goto LABEL_29;
  }

  v36 = CFRetain(v5);
  v35 = CFRetain(v5);
  keys = @"PropertyType";
  v47 = @"ReadWriteStatus";
  v38 = @"Enumeration";
  v39 = @"ReadWrite";
  v7 = *MEMORY[0x1E6965DA0];
  values = *MEMORY[0x1E6965DB8];
  v55 = v7;
  v8 = *MEMORY[0x1E6965DC0];
  v56 = *MEMORY[0x1E6965DD8];
  v57 = v8;
  v9 = *MEMORY[0x1E6965DD0];
  v58 = *MEMORY[0x1E6965D98];
  v59 = v9;
  v60 = *MEMORY[0x1E6965DB0];
  v10 = CFArrayCreate(v0, &values, 7, MEMORY[0x1E695E9C0]);
  if (!v10)
  {
    FigSignalErrorAtGM();
    FigSignalErrorAtGM();
    v33 = 0;
    v34 = 0;
LABEL_24:
    v17 = 0;
    v32 = 0;
LABEL_25:
    v21 = 0;
    v19 = 0;
LABEL_26:
    v20 = 0;
    goto LABEL_27;
  }

  *&v48 = @"SupportedValueList";
  v33 = v10;
  *&v40 = v10;
  v11 = CFDictionaryCreate(v0, &keys, &v38, 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v11)
  {
    FigSignalErrorAtGM();
    v34 = 0;
    goto LABEL_24;
  }

  v34 = v11;
  keys = @"PropertyType";
  v47 = @"ReadWriteStatus";
  v38 = @"Enumeration";
  v39 = @"ReadWrite";
  v12 = *MEMORY[0x1E6965F68];
  values = *MEMORY[0x1E6965F50];
  v55 = v12;
  v13 = *MEMORY[0x1E6965F40];
  v56 = *MEMORY[0x1E6965F80];
  v57 = v13;
  v14 = *MEMORY[0x1E6965F70];
  v58 = *MEMORY[0x1E6965F78];
  v59 = v14;
  v15 = *MEMORY[0x1E6965F60];
  v60 = *MEMORY[0x1E6965F48];
  v61 = v15;
  v16 = CFArrayCreate(v0, &values, 8, MEMORY[0x1E695E9C0]);
  if (!v16)
  {
    FigSignalErrorAtGM();
    FigSignalErrorAtGM();
    goto LABEL_24;
  }

  *&v48 = @"SupportedValueList";
  v32 = v16;
  *&v40 = v16;
  v17 = CFDictionaryCreate(v0, &keys, &v38, 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v17)
  {
    FigSignalErrorAtGM();
    goto LABEL_25;
  }

  keys = @"PropertyType";
  v47 = @"ReadWriteStatus";
  v38 = @"Enumeration";
  v39 = @"ReadWrite";
  YCbCrMatricesArray = vtPixelTransferSessionCreateYCbCrMatricesArray();
  v19 = YCbCrMatricesArray;
  if (!YCbCrMatricesArray)
  {
    FigSignalErrorAtGM();
    v21 = 0;
    goto LABEL_26;
  }

  *&v48 = @"SupportedValueList";
  *&v40 = YCbCrMatricesArray;
  v20 = CFDictionaryCreate(v0, &keys, &v38, 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v20)
  {
    keys = @"ReadWriteStatus";
    v38 = @"ReadWrite";
    v21 = CFDictionaryCreate(v0, &keys, &v38, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v22 = v31;
    if (v21)
    {
      v23 = CFDictionaryCreate(v0, &keys, &v38, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v24 = v23;
      if (!v23 || (keys = @"ScalingMode", v47 = @"DestinationPixelAspectRatio", v38 = cf, v39 = v5, *&v48 = @"DestinationCleanAperture", *(&v48 + 1) = @"DownsamplingMode", *&v40 = v31, *(&v40 + 1) = v29, *&v49 = @"SourceCropRectangle", *(&v49 + 1) = @"DestinationRectangle", *&v41 = v36, *(&v41 + 1) = v35, *&v50 = @"DestinationYCbCrMatrix", *(&v50 + 1) = @"DestinationColorPrimaries", *&v42 = v20, *(&v42 + 1) = v34, v25 = *MEMORY[0x1E6965EC8], *&v51 = @"DestinationTransferFunction", *(&v51 + 1) = v25, *&v43 = v17, *(&v43 + 1) = v21, *&v52 = @"Label", *&v44 = v23, (sVTPixelTransferSessionSupportedPropertyDictionary = CFDictionaryCreate(v0, &keys, &v38, 11, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8])) == 0))
      {
        FigSignalErrorAtGM();
      }
    }

    else
    {
      FigSignalErrorAtGM();
      v24 = 0;
    }

    goto LABEL_28;
  }

  FigSignalErrorAtGM();
  v21 = 0;
LABEL_27:
  v24 = 0;
  v22 = v31;
LABEL_28:
  v28 = v29;
  v27 = v30;
LABEL_29:
  CFRelease(v2);
  CFRelease(cf);
  if (v5)
  {
    CFRelease(v5);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (v27)
  {
    CFRelease(v27);
  }

  if (v28)
  {
    CFRelease(v28);
  }

  if (v36)
  {
    CFRelease(v36);
  }

  if (v35)
  {
    CFRelease(v35);
  }

  if (v34)
  {
    CFRelease(v34);
  }

  if (v33)
  {
    CFRelease(v33);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (v32)
  {
    CFRelease(v32);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (v24)
  {
    v26 = v24;
    goto LABEL_57;
  }
}

uint64_t _VTPixelTransferSessionSetProperty(uint64_t a1, const __CFString *a2, const void *a3)
{
  theDict = 0;
  if (!*(a1 + 16))
  {
    VTMetalTransferSessionCopySupportedPropertyDictionary(*(a1 + 1160), &theDict);
    if (CFEqual(a2, @"DestinationCleanAperture"))
    {
      v7 = *(a1 + 152);
      if (v7)
      {
        CFRelease(v7);
      }

      *(a1 + 152) = a3;
      if (!a3)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    if (CFEqual(a2, @"DestinationPixelAspectRatio"))
    {
      v8 = *(a1 + 160);
      if (v8)
      {
        CFRelease(v8);
      }

      *(a1 + 160) = a3;
      if (!a3)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    if (CFEqual(a2, @"ScalingMode"))
    {
      v9 = *(a1 + 48);
      if (v9)
      {
        CFRelease(v9);
      }

      *(a1 + 48) = a3;
      if (!a3)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    if (CFEqual(a2, @"DownsamplingMode"))
    {
      v10 = *(a1 + 808);
      if (v10)
      {
        CFRelease(v10);
      }

      *(a1 + 808) = a3;
      if (!a3)
      {
        goto LABEL_25;
      }

LABEL_24:
      CFRetain(a3);
LABEL_25:
      v11 = 0;
      v12 = 0;
      goto LABEL_26;
    }

    if (CFEqual(a2, @"SourceCropRectangle"))
    {
      if (!a3)
      {
        v11 = 0;
        v12 = 0;
        *(a1 + 88) = 0;
        *(a1 + 96) = 0;
        v22.f64[0] = NAN;
        v22.f64[1] = NAN;
        *(a1 + 72) = vnegq_f64(v22);
        goto LABEL_26;
      }

      v18 = CFGetTypeID(a3);
      if (v18 == CFDictionaryGetTypeID())
      {
        *(a1 + 88) = 0;
        *(a1 + 96) = 0;
        v19.f64[0] = NAN;
        v19.f64[1] = NAN;
        *(a1 + 72) = vnegq_f64(v19);
        memset(&cf, 0, sizeof(cf));
        if (CGRectMakeWithDictionaryRepresentation(a3, &cf))
        {
          cf = CGRectStandardize(cf);
          v81 = CGRectIntegral(cf);
          v11 = 0;
          v12 = 0;
          *(a1 + 88) = v81.origin.x;
          *(a1 + 96) = v81.origin.y;
          *(a1 + 72) = v81.size.width;
          *(a1 + 80) = v81.size.height;
          goto LABEL_26;
        }
      }

      goto LABEL_80;
    }

    if (CFEqual(a2, @"DestinationRectangle"))
    {
      if (!a3)
      {
        v11 = 0;
        v12 = 0;
        *(a1 + 136) = 0;
        *(a1 + 144) = 0;
        v25.f64[0] = NAN;
        v25.f64[1] = NAN;
        *(a1 + 120) = vnegq_f64(v25);
        goto LABEL_26;
      }

      v20 = CFGetTypeID(a3);
      if (v20 == CFDictionaryGetTypeID())
      {
        *(a1 + 136) = 0;
        *(a1 + 144) = 0;
        v21.f64[0] = NAN;
        v21.f64[1] = NAN;
        *(a1 + 120) = vnegq_f64(v21);
        memset(&cf, 0, sizeof(cf));
        if (CGRectMakeWithDictionaryRepresentation(a3, &cf))
        {
          cf = CGRectStandardize(cf);
          v82 = CGRectIntegral(cf);
          v11 = 0;
          v12 = 0;
          *(a1 + 136) = v82.origin.x;
          *(a1 + 144) = v82.origin.y;
          *(a1 + 120) = v82.size.width;
          *(a1 + 128) = v82.size.height;
          goto LABEL_26;
        }
      }

      goto LABEL_80;
    }

    if (CFEqual(a2, @"EnableHardwareAcceleratedTransfer"))
    {
      if (initDefaultsCommon_onceToken != -1)
      {
        _VTPixelTransferSessionSetProperty_cold_1();
      }

      v33 = byte_1ED6D3B09;
      v34 = (a1 + 769);
      goto LABEL_123;
    }

    if (CFEqual(a2, @"EnableHighSpeedTransfer"))
    {
      LOBYTE(cf.origin.x) = 0;
      v35 = (a1 + 770);
    }

    else if (CFEqual(a2, @"DisableDither"))
    {
      LOBYTE(cf.origin.x) = 0;
      v35 = (a1 + 784);
    }

    else if (CFEqual(a2, @"UseOptimalMSRCoefficients"))
    {
      LOBYTE(cf.origin.x) = 0;
      v35 = (a1 + 785);
    }

    else
    {
      if (!CFEqual(a2, @"EnableHistogram"))
      {
        if (CFEqual(a2, @"HistogramRectangle"))
        {
          memset(&cf, 0, sizeof(cf));
          if (a3)
          {
            TypeID = CFDictionaryGetTypeID();
            if (TypeID == CFGetTypeID(a3) && CGRectMakeWithDictionaryRepresentation(a3, &cf))
            {
              v24 = *(a1 + 800);
              *(a1 + 800) = a3;
              goto LABEL_61;
            }

            goto LABEL_80;
          }

          v24 = *(a1 + 800);
          *(a1 + 800) = 0;
          if (!v24)
          {
LABEL_84:
            vtPixelTransferSessionUpdateTransferOptions(a1);
            goto LABEL_25;
          }

          goto LABEL_83;
        }

        if (CFEqual(a2, @"EnableGPUAcceleratedTransfer"))
        {
          if (initDefaultsCommon_onceToken != -1)
          {
            _VTPixelTransferSessionSetProperty_cold_1();
          }

          v33 = _MergedGlobals;
          v34 = (a1 + 786);
          goto LABEL_123;
        }

        if (!CFEqual(a2, @"EnableSoftwareTransfer"))
        {
          if (CFEqual(a2, @"SetGPUPriorityLow"))
          {
            v34 = (a1 + 787);
          }

          else
          {
            if (CFEqual(a2, @"DestinationColorPrimaries"))
            {
              if (a3)
              {
                v26 = CFStringGetTypeID();
                if (v26 != CFGetTypeID(a3))
                {
                  goto LABEL_80;
                }
              }

              if (*(a1 + 1188))
              {
                v27 = *(a1 + 1080);
                if (v27)
                {
                  CFRelease(v27);
                  *(a1 + 1080) = 0;
                }

                v28 = *(a1 + 1088);
                if (v28)
                {
                  CFRelease(v28);
                  *(a1 + 1088) = 0;
                }

                *(a1 + 1188) = 0;
              }

              v12 = *(a1 + 1080);
              *(a1 + 1080) = a3;
              if (!a3)
              {
LABEL_130:
                if (v12)
                {
LABEL_131:
                  CFRelease(v12);
                  goto LABEL_25;
                }

                goto LABEL_147;
              }

LABEL_129:
              CFRetain(a3);
              goto LABEL_130;
            }

            if (CFEqual(a2, @"DestinationTransferFunction"))
            {
              if (a3)
              {
                v30 = CFStringGetTypeID();
                if (v30 != CFGetTypeID(a3))
                {
                  goto LABEL_80;
                }
              }

              if (*(a1 + 1188))
              {
                v31 = *(a1 + 1080);
                if (v31)
                {
                  CFRelease(v31);
                  *(a1 + 1080) = 0;
                }

                v32 = *(a1 + 1088);
                if (v32)
                {
                  CFRelease(v32);
                }

                v12 = 0;
                *(a1 + 1188) = 0;
              }

              else
              {
                v12 = *(a1 + 1088);
              }

              *(a1 + 1088) = a3;
              if (!a3)
              {
                goto LABEL_130;
              }

              goto LABEL_129;
            }

            if (CFEqual(a2, @"DestinationICCProfile"))
            {
              if (a3)
              {
                v36 = CFDataGetTypeID();
                if (v36 != CFGetTypeID(a3))
                {
                  goto LABEL_80;
                }
              }

              if (*(a1 + 1188))
              {
                v37 = *(a1 + 1080);
                if (v37)
                {
                  CFRelease(v37);
                  *(a1 + 1080) = 0;
                }

                v38 = *(a1 + 1088);
                if (v38)
                {
                  CFRelease(v38);
                  *(a1 + 1088) = 0;
                }

                *(a1 + 1188) = 0;
              }

              v12 = *(a1 + 1008);
              *(a1 + 1008) = a3;
              if (!a3)
              {
                goto LABEL_130;
              }

              goto LABEL_129;
            }

            if (CFEqual(a2, @"DestinationYCbCrMatrix"))
            {
              if (!a3)
              {
                v12 = *(a1 + 1072);
                *(a1 + 1072) = 0;
                if (v12)
                {
                  goto LABEL_131;
                }

LABEL_147:
                v11 = 0;
                goto LABEL_26;
              }

              v41 = CFStringGetTypeID();
              if (v41 != CFGetTypeID(a3))
              {
                goto LABEL_80;
              }

              v12 = *(a1 + 1072);
              *(a1 + 1072) = a3;
              goto LABEL_129;
            }

            if (CFEqual(a2, @"WriteBlackPixelsOutsideDestRect"))
            {
              if (*MEMORY[0x1E695E738] == a3 || a3 == 0)
              {
                a3 = *MEMORY[0x1E695E4D0];
              }

              if (!a3)
              {
                goto LABEL_80;
              }

              v43 = CFBooleanGetTypeID();
              if (v43 != CFGetTypeID(a3))
              {
                goto LABEL_80;
              }

              v11 = 0;
              v12 = 0;
              *(a1 + 1136) = CFBooleanGetValue(a3);
              goto LABEL_26;
            }

            if (CFEqual(a2, @"RealTime"))
            {
              if (a3)
              {
                v44 = CFGetTypeID(a3);
                if (v44 == CFBooleanGetTypeID())
                {
                  v24 = *(a1 + 1128);
                  *(a1 + 1128) = a3;
LABEL_61:
                  CFRetain(a3);
                  if (!v24)
                  {
                    goto LABEL_84;
                  }

                  goto LABEL_83;
                }

LABEL_80:
                v29 = FigSignalErrorAtGM();
LABEL_81:
                v11 = v29;
                v12 = v29;
                goto LABEL_26;
              }

              v24 = *(a1 + 1128);
              *(a1 + 1128) = 0;
              if (!v24)
              {
                goto LABEL_84;
              }

LABEL_83:
              CFRelease(v24);
              goto LABEL_84;
            }

            if (CFEqual(a2, @"ClientPID"))
            {
              if (!a3)
              {
                goto LABEL_80;
              }

              v45 = CFGetTypeID(a3);
              if (v45 != CFNumberGetTypeID())
              {
                goto LABEL_80;
              }

              LODWORD(cf.origin.x) = 0;
              CFNumberGetValue(a3, kCFNumberSInt32Type, &cf);
              v11 = 0;
              v12 = 0;
              *(a1 + 1124) = LODWORD(cf.origin.x);
              goto LABEL_26;
            }

            if (CFEqual(a2, @"ForceDisableVectorInstructions"))
            {
              v34 = (a1 + 208);
            }

            else if (CFEqual(a2, @"ForceSingleThreaded"))
            {
              v34 = (a1 + 209);
            }

            else
            {
              if (CFEqual(a2, @"PQEOTFOpticalScale"))
              {
                v46 = *(a1 + 1160);
                if (v46)
                {
                  v17 = VTSessionSetProperty(v46, a2, a3);
                  if (v17)
                  {
                    goto LABEL_35;
                  }
                }

                v47 = *(a1 + 1176);
                if (v47)
                {
                  if (a3)
                  {
                    CFDictionarySetValue(v47, a2, a3);
LABEL_177:
                    v50 = CFGetTypeID(a3);
                    if (v50 != CFNumberGetTypeID())
                    {
                      goto LABEL_80;
                    }

                    if (FigCFEqual())
                    {
                      goto LABEL_25;
                    }

                    v51 = *(a1 + 1192);
                    *(a1 + 1192) = a3;
                    goto LABEL_224;
                  }

                  CFDictionaryRemoveValue(v47, a2);
                }

                else if (a3)
                {
                  goto LABEL_177;
                }

                v52 = *(a1 + 1192);
                if (v52)
                {
                  CFRelease(v52);
                  v11 = 0;
                  v12 = 0;
                  a3 = 0;
                  *(a1 + 1192) = 0;
LABEL_227:
                  *(a1 + 744) = 1;
                  goto LABEL_26;
                }

                goto LABEL_232;
              }

              if (CFEqual(a2, @"PQInvEOTFOpticalScale"))
              {
                v48 = *(a1 + 1160);
                if (v48)
                {
                  v17 = VTSessionSetProperty(v48, a2, a3);
                  if (v17)
                  {
                    goto LABEL_35;
                  }
                }

                v49 = *(a1 + 1176);
                if (v49)
                {
                  if (a3)
                  {
                    CFDictionarySetValue(v49, a2, a3);
LABEL_191:
                    v55 = CFGetTypeID(a3);
                    if (v55 != CFNumberGetTypeID())
                    {
                      goto LABEL_80;
                    }

                    if (FigCFEqual())
                    {
                      goto LABEL_25;
                    }

                    v51 = *(a1 + 1200);
                    *(a1 + 1200) = a3;
                    goto LABEL_224;
                  }

                  CFDictionaryRemoveValue(v49, a2);
                }

                else if (a3)
                {
                  goto LABEL_191;
                }

                v56 = *(a1 + 1200);
                if (v56)
                {
                  CFRelease(v56);
                  v11 = 0;
                  v12 = 0;
                  a3 = 0;
                  *(a1 + 1200) = 0;
                  goto LABEL_227;
                }

LABEL_232:
                v11 = 0;
                v12 = 0;
                a3 = 0;
                goto LABEL_26;
              }

              if (CFEqual(a2, @"HLGOETFOpticalScale"))
              {
                v53 = *(a1 + 1160);
                if (v53)
                {
                  v17 = VTSessionSetProperty(v53, a2, a3);
                  if (v17)
                  {
                    goto LABEL_35;
                  }
                }

                v54 = *(a1 + 1176);
                if (v54)
                {
                  if (a3)
                  {
                    CFDictionarySetValue(v54, a2, a3);
LABEL_207:
                    v59 = CFGetTypeID(a3);
                    if (v59 != CFNumberGetTypeID())
                    {
                      goto LABEL_80;
                    }

                    if (FigCFEqual())
                    {
                      goto LABEL_25;
                    }

                    v51 = *(a1 + 1208);
                    *(a1 + 1208) = a3;
                    goto LABEL_224;
                  }

                  CFDictionaryRemoveValue(v54, a2);
                }

                else if (a3)
                {
                  goto LABEL_207;
                }

                v60 = *(a1 + 1208);
                if (v60)
                {
                  CFRelease(v60);
                  v11 = 0;
                  v12 = 0;
                  a3 = 0;
                  *(a1 + 1208) = 0;
                  goto LABEL_227;
                }

                goto LABEL_232;
              }

              if (CFEqual(a2, @"HLGInvOETFOpticalScale"))
              {
                v57 = *(a1 + 1160);
                if (v57)
                {
                  v17 = VTSessionSetProperty(v57, a2, a3);
                  if (v17)
                  {
                    goto LABEL_35;
                  }
                }

                v58 = *(a1 + 1176);
                if (v58)
                {
                  if (a3)
                  {
                    CFDictionarySetValue(v58, a2, a3);
LABEL_221:
                    v62 = CFGetTypeID(a3);
                    if (v62 != CFNumberGetTypeID())
                    {
                      goto LABEL_80;
                    }

                    if (FigCFEqual())
                    {
                      goto LABEL_25;
                    }

                    v51 = *(a1 + 1216);
                    *(a1 + 1216) = a3;
LABEL_224:
                    CFRetain(a3);
                    if (v51)
                    {
                      CFRelease(v51);
                    }

                    v11 = 0;
                    v12 = 0;
                    goto LABEL_227;
                  }

                  CFDictionaryRemoveValue(v58, a2);
                }

                else if (a3)
                {
                  goto LABEL_221;
                }

                v63 = *(a1 + 1216);
                if (v63)
                {
                  CFRelease(v63);
                  v11 = 0;
                  v12 = 0;
                  a3 = 0;
                  *(a1 + 1216) = 0;
                  goto LABEL_227;
                }

                goto LABEL_232;
              }

              if (!CFEqual(a2, @"AllowLowQualityScaling"))
              {
                if (CFEqual(a2, @"vImageFlags"))
                {
                  if (!a3 || *MEMORY[0x1E695E738] == a3)
                  {
                    v11 = 0;
                    v12 = 0;
                    *(a1 + 1144) = 0;
                  }

                  else
                  {
                    v61 = CFNumberGetTypeID();
                    if (v61 != CFGetTypeID(a3))
                    {
                      goto LABEL_80;
                    }

                    v11 = 0;
                    v12 = 0;
                    *(a1 + 1144) = FigCFNumberGetUInt64();
                  }

LABEL_26:
                  if (!theDict)
                  {
                    return v11;
                  }

                  if (CFDictionaryContainsKey(theDict, a2))
                  {
                    v13 = *(a1 + 1176);
                    if (a3)
                    {
                      CFDictionarySetValue(v13, a2, a3);
                    }

                    else
                    {
                      CFDictionaryRemoveValue(v13, a2);
                    }

                    v14 = *(a1 + 1160);
                    v11 = v12;
                    if (v14)
                    {
                      goto LABEL_32;
                    }
                  }

LABEL_36:
                  if (theDict)
                  {
                    CFRelease(theDict);
                  }

                  return v11;
                }

                if (CFEqual(a2, @"AllowPixelTransferChain"))
                {
                  LOBYTE(cf.origin.x) = *(a1 + 32) != 0;
                  if (initDefaultsCommon_onceToken != -1)
                  {
                    _VTPixelTransferSessionSetProperty_cold_1();
                  }

                  v11 = setBooleanPropertyWithDefault(a3, sAllowPixelTransferChain, &cf, (a1 + 744));
                  v68 = *(a1 + 32);
                  if (LOBYTE(cf.origin.x))
                  {
                    if (!v68)
                    {
                      v69 = CFGetAllocator(a1);
                      v11 = VTPixelTransferChainCreate(v69, 0, (a1 + 32));
                    }
                  }

                  else if (v68)
                  {
                    CFRelease(v68);
                    *(a1 + 32) = 0;
                  }

                  goto LABEL_103;
                }

                if (CFEqual(a2, @"AllowPixelTransferGraph"))
                {
                  if (initDefaultsCommon_onceToken != -1)
                  {
                    _VTPixelTransferSessionSetProperty_cold_1();
                  }

                  v33 = sAllowPixelTransferGraph;
                  v34 = (a1 + 40);
                }

                else
                {
                  if (!CFEqual(a2, @"AllowFallbacks"))
                  {
                    if (!CFEqual(a2, @"ReducedPrecisionFractionalOffsets"))
                    {
                      if (!CFEqual(a2, @"Convert10BitHDRToSDRFor8BitDestinationWithUnspecifiedColorProperties"))
                      {
                        if (CFEqual(a2, @"RequireDeviceRegistryID"))
                        {
                          if (!a3 || FigCFEqual())
                          {
                            goto LABEL_241;
                          }

                          v65 = CFGetTypeID(a3);
                          if (v65 != CFNumberGetTypeID())
                          {
                            goto LABEL_80;
                          }

                          if (FigCFNumberGetUInt64())
                          {
                            v11 = 0;
                            v12 = 0;
                            *(a1 + 1185) = 1;
                          }

                          else
                          {
LABEL_241:
                            v11 = 0;
                            v12 = 0;
                            *(a1 + 1185) = 0;
                          }

                          goto LABEL_26;
                        }

                        if (CFEqual(a2, @"Label"))
                        {
                          if (!a3 || FigCFEqual())
                          {
                            v64 = *(a1 + 24);
                            if (v64)
                            {
                              CFRelease(v64);
                              *(a1 + 24) = 0;
                            }

                            CFDictionaryRemoveValue(*(a1 + 1176), a2);
                            v14 = *(a1 + 1160);
                            if (v14)
                            {
                              v15 = a2;
                              v16 = 0;
                              goto LABEL_34;
                            }

                            goto LABEL_264;
                          }

                          v70 = CFGetTypeID(a3);
                          if (v70 == CFStringGetTypeID())
                          {
                            v71 = *(a1 + 24);
                            *(a1 + 24) = a3;
                            CFRetain(a3);
                            if (v71)
                            {
                              CFRelease(v71);
                            }

                            CFDictionarySetValue(*(a1 + 1176), a2, a3);
                            v14 = *(a1 + 1160);
                            if (v14)
                            {
LABEL_32:
                              v15 = a2;
LABEL_33:
                              v16 = a3;
LABEL_34:
                              v17 = VTSessionSetProperty(v14, v15, v16);
LABEL_35:
                              v11 = v17;
                              goto LABEL_36;
                            }

                            goto LABEL_264;
                          }

LABEL_292:
                          v17 = FigSignalErrorAtGM();
                          goto LABEL_35;
                        }

                        if (FigCFEqual())
                        {
                          if (a3 && !FigCFEqual())
                          {
                            if (FigCFEqual() || FigCFEqual())
                            {
                              v74 = *(a1 + 1176);
                              if (v74)
                              {
                                CFDictionarySetValue(v74, a2, a3);
                              }

                              v14 = *(a1 + 1160);
                              if (v14)
                              {
                                v15 = @"AllowOnePassMetalScaling";
                                goto LABEL_33;
                              }

                              goto LABEL_264;
                            }

                            goto LABEL_292;
                          }

                          VTGetOnePassScalingPropertyValue(*(a1 + 1160), *(a1 + 1176));
                          v66 = *(a1 + 1176);
                          if (v66)
                          {
                            CFDictionaryRemoveValue(v66, a2);
                          }

                          v67 = *(a1 + 1160);
                          if (v67)
                          {
                            v17 = VTSessionSetProperty(v67, @"AllowOnePassMetalScaling", 0);
                            if (v17)
                            {
                              goto LABEL_35;
                            }

                            v67 = *(a1 + 1160);
                          }

                          VTGetOnePassScalingPropertyValue(v67, *(a1 + 1176));
                        }

                        else
                        {
                          if (FigCFEqual())
                          {
                            IsTypeOfDispatchQueue = FigIsTypeOfDispatchQueue();
                            v73 = *MEMORY[0x1E695E738];
                            if (a3 && !IsTypeOfDispatchQueue && v73 != a3)
                            {
                              goto LABEL_292;
                            }
                          }

                          else
                          {
                            if (!FigCFEqual())
                            {
                              v12 = 0;
                              v11 = 4294954396;
                              goto LABEL_26;
                            }

                            v75 = FigIsTypeOfDispatchQueue();
                            v73 = *MEMORY[0x1E695E738];
                            if (a3 && !v75 && v73 != a3)
                            {
                              goto LABEL_292;
                            }
                          }

                          cf.origin.x = 0.0;
                          _VTPixelTransferSessionCopyProperty(a1, a2, *MEMORY[0x1E695E480], &cf);
                          if (!FigCFEqual())
                          {
                            v76 = *(a1 + 1160);
                            if (v76)
                            {
                              v17 = VTSessionSetProperty(v76, a2, a3);
                              if (v17)
                              {
                                goto LABEL_35;
                              }
                            }

                            v77 = *(a1 + 1176);
                            if (v77)
                            {
                              if (!a3 || v73 == a3)
                              {
                                CFDictionaryRemoveValue(v77, a2);
                              }

                              else
                              {
                                CFDictionarySetValue(v77, a2, a3);
                              }
                            }
                          }

                          if (*&cf.origin.x)
                          {
                            CFRelease(*&cf.origin.x);
                          }
                        }

LABEL_264:
                        v11 = 0;
                        goto LABEL_36;
                      }

                      v34 = (a1 + 1120);
                      goto LABEL_126;
                    }

                    LOBYTE(cf.origin.x) = 0;
                    v11 = setBooleanPropertyWithDefault(a3, 0, (a1 + 1187), &cf);
                    if (LOBYTE(cf.origin.x))
                    {
                      vtPixelTransferSessionUpdateTransferOptions(a1);
                      *(a1 + 744) = 1;
                    }

LABEL_103:
                    v12 = v11;
                    goto LABEL_26;
                  }

                  if (initDefaultsCommon_onceToken != -1)
                  {
                    _VTPixelTransferSessionSetProperty_cold_1();
                  }

                  v33 = sAllowPixelTransferFallbacks;
                  v34 = (a1 + 41);
                }

LABEL_123:
                v39 = (a1 + 744);
                v40 = a3;
LABEL_124:
                v29 = setBooleanPropertyWithDefault(v40, v33, v34, v39);
                goto LABEL_81;
              }

              v34 = (a1 + 210);
            }
          }

LABEL_126:
          v39 = (a1 + 744);
          v40 = a3;
          v33 = 0;
          goto LABEL_124;
        }

        if (initDefaultsCommon_onceToken != -1)
        {
          _VTPixelTransferSessionSetProperty_cold_1();
        }

        v33 = sAllowSoftwareTransferSession;
        v34 = (a1 + 788);
        goto LABEL_123;
      }

      LOBYTE(cf.origin.x) = 0;
      v35 = (a1 + 789);
    }

    v11 = setBooleanPropertyWithDefault(a3, 0, v35, &cf);
    if (LOBYTE(cf.origin.x))
    {
      vtPixelTransferSessionUpdateTransferOptions(a1);
    }

    goto LABEL_103;
  }

  return FigSignalErrorAtGM();
}