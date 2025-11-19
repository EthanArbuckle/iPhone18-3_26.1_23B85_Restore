CFTypeID CVPixelBufferGetTypeID(void)
{
  if (CVPixelBufferGetTypeID::once != -1)
  {
    CVPixelBufferGetTypeID_cold_1();
  }

  return kCVPixelBufferID;
}

uint64_t OUTLINED_FUNCTION_0_7(uint64_t a1, const void *a2)
{

  return CVDictionaryGetIntValueWithDefault(v2, a2, 0);
}

uint64_t classInitialize_CVPixelBuffer(void *a1)
{
  result = _CFRuntimeRegisterClass();
  kCVPixelBufferID = result;
  return result;
}

const __CFDictionary *setComponentsProperties(const __CFDictionary *theDict, __CFDictionary *a2, CFIndex a3, unint64_t a4, __CFDictionary *a5)
{
  v7 = theDict;
  v58 = *MEMORY[0x1E69E9840];
  v57 = 0uLL;
  if (!a2 && a4 > 1 || a4 == 1 && !a5)
  {
    goto LABEL_126;
  }

  Value = CFDictionaryGetValue(theDict, @"Planes");
  ValueAtIndex = v7;
  if (Value)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(Value, a3);
  }

  BoolValueWithDefault = CVDictionaryGetBoolValueWithDefault(v7, @"ContainsYCbCr", 0);
  v11 = CVDictionaryGetBoolValueWithDefault(v7, @"ContainsRGB", 0);
  v12 = CVDictionaryGetBoolValueWithDefault(v7, @"ContainsAlpha", 0);
  v13 = CVDictionaryGetBoolValueWithDefault(v7, @"ContainsGrayscale", 0);
  v14 = CVDictionaryGetBoolValueWithDefault(v7, @"ContainsSenselArray", 0);
  if (a3)
  {
    v15 = 1;
  }

  else
  {
    v15 = BoolValueWithDefault == 0;
  }

  v16 = !v15;
  if (a4 >= 2 && (v16 & 1) != 0 || (v17 = 0, a4 >= 3) && a3 && BoolValueWithDefault && !v12)
  {
    v17 = 1;
  }

  if (((a4 == 1) & v16) != 0)
  {
    v18 = v17 + 3;
  }

  else
  {
    v18 = v17;
  }

  if (a3 == 1 && BoolValueWithDefault && (a4 == 2 || a4 == 3 && v12))
  {
    v18 += 2;
  }

  v19 = v11 && v12 == 0;
  v20 = v19;
  v53 = BoolValueWithDefault;
  if (a4 == 2 && !a3 && v20)
  {
    ++v18;
  }

  else
  {
    if (a3 != 1)
    {
      v20 = 0;
    }

    if (a4 == 2 && v20)
    {
      v18 += 2;
    }

    else
    {
      if (v11)
      {
        v21 = a4 >= 3;
      }

      else
      {
        v21 = 1;
      }

      if (!v21 && a3 == 0)
      {
        v18 += 3;
      }
    }
  }

  v24 = a4 > 2 && v11 != 0;
  v51 = v14;
  v52 = v12;
  if (v12)
  {
    v25 = a3 + 1 == a4;
  }

  else
  {
    v25 = 0;
  }

  if (v25)
  {
    ++v24;
  }

  v55 = v13;
  if (v13)
  {
    ++v24;
  }

  v26 = v24 + v18;
  v27 = v11;
  if (v14)
  {
    IntValueWithDefault = CVDictionaryGetIntValueWithDefault(ValueAtIndex, @"BlockWidth", 1);
    v29 = CVDictionaryGetIntValueWithDefault(ValueAtIndex, @"BlockHeight", 1);
    v30 = v26 + 2;
    if (IntValueWithDefault != 2)
    {
      v30 = v26;
    }

    if (v29 == 2)
    {
      v26 = v30 + 2;
    }

    else
    {
      v26 = v30;
    }
  }

  v31 = 0;
  v32 = v26 <= 1 ? 1 : v26;
  v33 = v32;
  v34 = 4 * v32;
  do
  {
    *(&v57 + v31) = CVDictionaryGetIntValueWithDefault(v7, @"BitsPerComponent", 8);
    v31 += 4;
  }

  while (v34 != v31);
  v35 = *MEMORY[0x1E696D008];
  if (a2)
  {
    theDict = CVDictionarySetSInt32Array(a2, v35, &v57, v33);
    v36 = v27;
    v37 = a5;
  }

  else
  {
    v37 = a5;
    theDict = CVDictionarySetSInt32Array(a5, v35, &v57, v33);
    v36 = v27;
  }

  if (theDict)
  {
    goto LABEL_126;
  }

  v38 = CFDictionaryGetValue(v7, @"ComponentRange");
  if (v38)
  {
    v39 = v38;
    if (CFEqual(v38, @"VideoRange"))
    {
      v40 = 2;
LABEL_87:
      LODWORD(v57) = v40;
      goto LABEL_89;
    }

    if (CFEqual(v39, @"FullRange"))
    {
      v40 = 1;
      goto LABEL_87;
    }

    if (CFEqual(v39, @"WideRange"))
    {
      v40 = 3;
      goto LABEL_87;
    }
  }

  v40 = 0;
  LODWORD(v57) = 0;
LABEL_89:
  if (v26 >= 2)
  {
    v41 = 0;
    v42 = vdupq_n_s64(v26 - 2);
    v43 = &v57 + 2;
    do
    {
      v44 = vdupq_n_s64(v41);
      v45 = vmovn_s64(vcgeq_u64(v42, vorrq_s8(v44, xmmword_19D17B510)));
      if (vuzp1_s16(v45, *v42.i8).u8[0])
      {
        *(v43 - 1) = v40;
      }

      if (vuzp1_s16(v45, *&v42).i8[2])
      {
        *v43 = v40;
      }

      if (vuzp1_s16(*&v42, vmovn_s64(vcgeq_u64(v42, vorrq_s8(v44, xmmword_19D17B520)))).i32[1])
      {
        v43[1] = v40;
        v43[2] = v40;
      }

      v41 += 4;
      v43 += 4;
    }

    while (((v26 + 2) & 0x1FFFFFFFCLL) != v41);
  }

  if (a2)
  {
    v46 = a2;
  }

  else
  {
    v46 = v37;
  }

  theDict = CVDictionarySetSInt32Array(v46, *MEMORY[0x1E696D018], &v57, v33);
  if (!theDict)
  {
    if (v53)
    {
      if (!a3)
      {
        LODWORD(v57) = 5;
        if (v26 == 3)
        {
          *(&v57 + 4) = 0x600000007;
        }

        goto LABEL_122;
      }

      if (a3 == 1)
      {
        v47 = 0x600000007;
LABEL_106:
        *&v57 = v47;
        goto LABEL_122;
      }

      if (a3 != 2 || !v52)
      {
        goto LABEL_122;
      }

      goto LABEL_120;
    }

    if (v36)
    {
      if (!a3)
      {
        if (a4 != 2 || v52)
        {
          *&v57 = 0x300000004;
          DWORD2(v57) = 2;
          if (v26 == 4)
          {
            HIDWORD(v57) = 1;
          }

          goto LABEL_122;
        }

LABEL_135:
        v48 = 2;
        goto LABEL_121;
      }

      if (a3 != 1 || (v52 & 1) == 0)
      {
        if (!v52 && a3 == 1)
        {
          v47 = 0x400000003;
          goto LABEL_106;
        }

        if (a3 != 2 || v52)
        {
LABEL_122:
          if (a2)
          {
            v49 = a2;
          }

          else
          {
            v49 = v37;
          }

          theDict = CVDictionarySetSInt32Array(v49, *MEMORY[0x1E696D010], &v57, v33);
          goto LABEL_126;
        }

        goto LABEL_135;
      }
    }

    else if (!(v55 | v52))
    {
      if (v51)
      {
        bzero(&v57, 4 * v33);
      }

      else
      {
        LODWORD(v57) = 0;
      }

      goto LABEL_122;
    }

LABEL_120:
    v48 = 1;
LABEL_121:
    LODWORD(v57) = v48;
    goto LABEL_122;
  }

LABEL_126:
  v50 = *MEMORY[0x1E69E9840];
  return theDict;
}

IOSurfaceRef IOOrEXSurfaceGetBaseAddress(IOSurfaceRef buffer)
{
  if (buffer)
  {
    return IOSurfaceGetBaseAddress(buffer);
  }

  return buffer;
}

const __CFNumber *CVPixelBufferBacking::getPixelFormatDescription(CVPixelBufferBacking *this, const __CFDictionary *a2, unsigned int *a3)
{
  valuePtr = 0;
  result = CFDictionaryGetValue(this, @"PixelFormatDescription");
  if (!result)
  {
    result = CFDictionaryGetValue(this, @"PixelFormatType");
    if (result)
    {
      v6 = result;
      v7 = CFGetTypeID(result);
      if (v7 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v6, kCFNumberSInt32Type, &valuePtr);
        result = CVPixelFormatDescriptionGetDescriptionWithPixelFormatType(valuePtr);
      }

      else
      {
        v8 = CFGetTypeID(v6);
        if (v8 == CFArrayGetTypeID() && (Count = CFArrayGetCount(v6), Count >= 1))
        {
          v10 = Count;
          for (i = 0; i != v10; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v6, i);
            CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, &valuePtr);
            result = CVPixelFormatDescriptionGetDescriptionWithPixelFormatType(valuePtr);
            if (result)
            {
              break;
            }
          }
        }

        else
        {
          result = 0;
        }
      }
    }
  }

  if (a2)
  {
    *a2 = valuePtr;
  }

  return result;
}

uint64_t CVDictionaryGetIntValueWithDefault(const void *a1, const void *a2, uint64_t a3)
{
  v3 = a3;
  valuePtr = a3;
  if (a1)
  {
    v6 = CFGetTypeID(a1);
    TypeID = CFDictionaryGetTypeID();
    if (a2)
    {
      if (v6 == TypeID)
      {
        Value = CFDictionaryGetValue(a1, a2);
        if (Value)
        {
          v9 = Value;
          v10 = CFGetTypeID(Value);
          if (v10 == CFNumberGetTypeID())
          {
            CFNumberGetValue(v9, kCFNumberLongType, &valuePtr);
            return valuePtr;
          }
        }
      }
    }
  }

  return v3;
}

void *CVPixelBuffer::alloc(CVPixelBuffer *this, const __CFAllocator *a2)
{
  if (_cvUseTrackingAllocator)
  {
    this = _cvTrackingGetCFAllocator(@"CVPixelBuffer");
  }

  if (CVPixelBufferGetTypeID::once != -1)
  {
    CVPixelBufferGetTypeID_cold_1();
  }

  v3 = CVObject::alloc(kCVPixelBufferID, this, 0x18, 0x80uLL);
  v4 = v3;
  if (v3)
  {
    v5 = v3[2];
    CVImageBuffer::CVImageBuffer(v5, v3);
    *v5 = &unk_1F1087E68;
    CVGetIOSurfacePropertyKeyForCVBufferAttachmentKey(0);
    *(v5 + 104) = 1;
    *(v5 + 108) = 0;
    *(v5 + 120) = 0;
    *(v5 + 96) = 0;
  }

  return v4;
}

CVBufferBacking *CVPixelBufferBacking::retainUsage(CVPixelBufferBacking *this)
{
  v2 = *(this + 57);
  if (v2)
  {
    IOOrEXSurfaceIncrementUseCount(v2);
  }

  return CVBufferBacking::retainUsage(this);
}

CVBufferBacking *CVBufferBacking::retainUsage(CVBufferBacking *this)
{
  v2 = *(this + 11);
  if (v2)
  {
    (*(*v2 + 176))(v2);
  }

  CVIncrementAtomic(this + 4);
  if (!v3)
  {
    v4 = *(this + 11);
    if (!v4)
    {
      return this;
    }

    (*(*v4 + 64))(v4, this);
  }

  v5 = *(this + 11);
  if (v5)
  {
    (*(*v5 + 192))(v5);
  }

  return this;
}

CVReturn CVPixelBufferCreate(CFAllocatorRef allocator, size_t width, size_t height, OSType pixelFormatType, CFDictionaryRef pixelBufferAttributes, CVPixelBufferRef *pixelBufferOut)
{
  v32 = *MEMORY[0x1E69E9840];
  v28 = 0;
  {
    CVPixelBufferCreate::ktrace_seed = arc4random();
  }

  if (gCVKTraceEnabled)
  {
    ++CVPixelBufferCreate::ktrace_seed;
    kdebug_trace();
  }

  if (!pixelBufferOut || !width || !height)
  {
    v13 = 0;
    v20 = 0;
    v17 = 0;
    v25 = -6661;
    goto LABEL_34;
  }

  *pixelBufferOut = 0;
  if (pixelBufferAttributes)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(allocator, 0, pixelBufferAttributes);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  v13 = MutableCopy;
  if (!MutableCopy)
  {
    v20 = 0;
    v17 = 0;
LABEL_47:
    v25 = -6662;
    goto LABEL_34;
  }

  if (!pixelFormatType)
  {
    if (CFDictionaryGetValue(MutableCopy, @"PixelFormatDescription"))
    {
      goto LABEL_15;
    }

LABEL_32:
    v20 = 0;
    v17 = 0;
    v25 = -6680;
    goto LABEL_34;
  }

  DescriptionWithPixelFormatType = CVPixelFormatDescriptionGetDescriptionWithPixelFormatType(pixelFormatType);
  if (!DescriptionWithPixelFormatType)
  {
    goto LABEL_32;
  }

  CFDictionarySetValue(v13, @"PixelFormatDescription", DescriptionWithPixelFormatType);
LABEL_15:
  if (!CFDictionaryGetValue(v13, @"IOSurfaceProperties") && CVIsPixelFormatCompressed(pixelFormatType))
  {
    v28 = -6662;
    snprintf(__str, 0x80uLL, "CoreVideo: Error, CVPixelBufferCreate() for non-IOSurface backed compressed format %c%c%c%c is not allowed.", HIBYTE(pixelFormatType), BYTE2(pixelFormatType), BYTE1(pixelFormatType), pixelFormatType);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v30 = __str;
      _os_log_impl(&dword_19D11B000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
    }

    goto LABEL_25;
  }

  v16 = CVPixelBufferBacking::alloc(allocator, v15);
  v17 = v16;
  if (!v16)
  {
    v20 = 0;
    goto LABEL_47;
  }

  if (!(*(*v16[2] + 248))(v16[2], width, height, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, v13, 0, 0, 0, 0, 0, &v28))
  {
    if (v28)
    {
LABEL_25:
      v20 = 0;
      v17 = 0;
LABEL_35:
      v24 = 1;
      goto LABEL_36;
    }

    v20 = 0;
    v17 = 0;
    v25 = -6660;
LABEL_34:
    v28 = v25;
    goto LABEL_35;
  }

  v19 = CVPixelBuffer::alloc(allocator, v18);
  v20 = v19;
  if (v19)
  {
    if ((*(**(v19 + 2) + 248))(*(v19 + 2), v17[2]))
    {
      *pixelBufferOut = v20;
      v20 = 0;
      goto LABEL_28;
    }

    v21 = -6660;
  }

  else
  {
    v21 = -6662;
  }

  v28 = v21;
LABEL_28:
  v22 = v17[2];
  if (v22 && (*(*v22 + 160))(v22))
  {
    v23 = (*(*v17[2] + 160))(v17[2]);
    IOOrEXSurfaceGetID(v23);
    kdebug_trace();
    v24 = 0;
    goto LABEL_37;
  }

  v24 = 0;
LABEL_36:
  kdebug_trace();
LABEL_37:
  if (v20)
  {
    CFRelease(v20);
  }

  if ((v24 & 1) == 0)
  {
    CFRelease(v17);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  result = v28;
  v27 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CVPixelBufferBacking::performStandardMemoryLayoutAndCopyIOSurfaceCreationProperties(CVPixelBufferBacking *this, void *a2, uint64_t a3, const __CFAllocator *a4, const __CFDictionary *a5, const __CFDictionary *a6, const __CFDictionary *a7, const __CFDictionary *a8, unint64_t a9, __int128 a10, unint64_t a11, unint64_t a12, unint64_t a13, unint64_t a14, unint64_t a15, unint64_t a16, unint64_t *a17, void **a18, unint64_t *a19, unint64_t *a20, unint64_t *a21, unint64_t *a22, unint64_t *a23, __IOSurface **a24, __IOSurface *a25, __CVBuffer *a26, unsigned int *a27, unint64_t *a28, void **a29, const __CFDictionary **a30)
{
  MEMORY[0x1EEE9AC00](this, a2, a3, a4, a5, a6, a7, a8);
  v318 = v30;
  v32 = v31;
  v302 = v33;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v392[17] = *MEMORY[0x1E69E9840];
  memset(v392, 0, 128);
  v391 = 0u;
  v390 = 0u;
  v389 = 0u;
  v388 = 0u;
  v387 = 0u;
  v386 = 0u;
  v385 = 0u;
  *v384 = 0u;
  memset(v383, 0, sizeof(v383));
  memset(v382, 0, sizeof(v382));
  memset(v381, 0, sizeof(v381));
  memset(v380, 0, sizeof(v380));
  memset(v379, 0, sizeof(v379));
  memset(v378, 0, sizeof(v378));
  memset(v377, 0, sizeof(v377));
  memset(v376, 0, sizeof(v376));
  memset(v375, 0, sizeof(v375));
  memset(v374, 0, sizeof(v374));
  memset(v373, 0, sizeof(v373));
  memset(v372, 0, sizeof(v372));
  memset(v371, 0, sizeof(v371));
  memset(v370, 0, sizeof(v370));
  memset(v369, 0, sizeof(v369));
  memset(v368, 0, sizeof(v368));
  memset(v367, 0, sizeof(v367));
  memset(v366, 0, sizeof(v366));
  memset(v365, 0, sizeof(v365));
  memset(v364, 0, sizeof(v364));
  memset(v363, 0, sizeof(v363));
  memset(v362, 0, sizeof(v362));
  memset(v361, 0, sizeof(v361));
  v358 = 0;
  v357 = 0;
  v356 = 0;
  memset(v360, 0, sizeof(v360));
  v40 = _os_feature_enabled_impl();
  v41 = 8;
  memset(&v359[6], 0, 32);
  if (v40)
  {
    v41 = 1;
  }

  v332 = v41;
  memset(v359, 0, 96);
  if (a25)
  {
    BufferBacking = CVPixelBufferGetBufferBacking(a25);
    if (BufferBacking)
    {
      a24 = *(BufferBacking[2] + 456);
    }
  }

  if (a29)
  {
    *a29 = 0;
  }

  Value = CFDictionaryGetValue(v32, @"Planes");
  v44 = Value;
  theDict = v32;
  v311 = v39;
  v307 = v37;
  if (Value)
  {
    Count = CFArrayGetCount(Value);
    if (Count == 1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v44, 0);
      v349 = 1;
    }

    else
    {
      if (Count > 0x10)
      {
        v113 = 4294960635;
        goto LABEL_224;
      }

      v349 = Count;
      ValueAtIndex = 0;
    }
  }

  else
  {
    v349 = 0;
    ValueAtIndex = v32;
  }

  v47 = a13;
  v48 = CFDictionaryGetValue(v35, @"IOSurfaceProperties");
  v345 = v35;
  if (v48)
  {
    Mutable = v48;
    IntValueWithDefault = CVDictionaryGetIntValueWithDefault(v48, local_kIOSurfaceProtectionOptions, 0);
    v51 = IntValueWithDefault == 0;
    v301 = IntValueWithDefault != 0;
    v303 = CVDictionaryGetBoolValueWithDefault(Mutable, local_kIOSurfaceProhibitUseCount, 0) == 0;
    CFRetain(Mutable);
LABEL_16:
    v300 = v51;
    v52 = CFDictionaryGetValue(Mutable, @"Planes");
    v325 = v52;
    v314 = 0;
    goto LABEL_29;
  }

  v53 = CFDictionaryGetValue(v35, @"IOSurfaceCoreAnimationCompatibility");
  if (v53)
  {
    v54 = CFBooleanGetValue(v53);
    v55 = v35;
    v56 = v54;
    v57 = v54 != 0;
    v52 = CFDictionaryGetValue(v55, @"MetalCompatibility");
    if (!v52)
    {
      v47 = a13;
      if (!v56)
      {
LABEL_24:
        Mutable = 0;
        v301 = 0;
        v325 = 0;
        v314 = 1;
LABEL_28:
        v300 = 1;
        v303 = 1;
        goto LABEL_29;
      }

LABEL_25:
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      CFDictionarySetValue(Mutable, @"IOSurfacePurgeWhenNotInUse", *MEMORY[0x1E695E4D0]);
      v301 = 0;
      v51 = 1;
      if (Mutable)
      {
        v303 = 1;
        goto LABEL_16;
      }

      v314 = 1;
      v325 = 0;
      goto LABEL_28;
    }

LABEL_22:
    v47 = a13;
    v52 = CFBooleanGetValue(v52);
    if (!v52 && !v57)
    {
      goto LABEL_24;
    }

    goto LABEL_25;
  }

  v52 = CFDictionaryGetValue(v35, @"MetalCompatibility");
  v57 = 0;
  if (v52)
  {
    goto LABEL_22;
  }

  v301 = 0;
  Mutable = 0;
  v325 = 0;
  v314 = 1;
  v300 = 1;
  v303 = 1;
  v47 = a13;
LABEL_29:
  DefaultBytesPerRowAlignment = CVPixelBufferBacking::getDefaultBytesPerRowAlignment(v52);
  if (DefaultBytesPerRowAlignment >= 0)
  {
    v59 = DefaultBytesPerRowAlignment;
  }

  else
  {
    v59 = -DefaultBytesPerRowAlignment;
  }

  if (v47 >= 0)
  {
    v60 = v47;
  }

  else
  {
    v60 = -v47;
  }

  if (v59 <= v60)
  {
    v61 = v60;
  }

  else
  {
    v61 = v59;
  }

  if (v59 < v60)
  {
    v60 = v59;
  }

  if (v60)
  {
    if (v60 < 1)
    {
      v62 = v61;
    }

    else
    {
      do
      {
        v62 = v60;
        v60 = v61 % v60;
        v61 = v62;
      }

      while (v60 > 0);
    }
  }

  else if (v61 <= 1)
  {
    v62 = 1;
  }

  else
  {
    v62 = v61;
  }

  v316 = DefaultBytesPerRowAlignment * v47 / v62;
  theArray = v44;
  if (!v349)
  {
    if (a20)
    {
      *a20 = 0;
    }

    propertiesa = CVDictionaryGetIntValueWithDefault(ValueAtIndex, @"BitsPerBlock", 1);
    CVDictionaryGetIntValueWithDefault(ValueAtIndex, @"HorizontalSubsampling", 1);
    CVDictionaryGetIntValueWithDefault(ValueAtIndex, @"VerticalSubsampling", 1);
    v82 = CVDictionaryGetIntValueWithDefault(ValueAtIndex, @"BlockWidth", 1);
    v83 = CVDictionaryGetIntValueWithDefault(ValueAtIndex, @"BlockHeight", 1);
    v84 = CVDictionaryGetIntValueWithDefault(ValueAtIndex, @"BlockHorizontalAlignment", 1);
    v85 = CVDictionaryGetIntValueWithDefault(ValueAtIndex, @"BlockVerticalAlignment", 1);
    v86 = CVDictionaryGetIntValueWithDefault(v345, @"ExactBytesPerRow", 0);
    v87 = CVDictionaryGetIntValueWithDefault(v345, @"ExactHeight", 0);
    if (!v87 || v87 == *(&a10 + 1) + a9 + a12)
    {
      v287 = a25;
      v288 = a29;
      BoolValueWithDefault = CVDictionaryGetBoolValueWithDefault(theDict, @"ContainsSenselArray", 0);
      v89 = CVDictionaryGetBoolValueWithDefault(theDict, @"ContainsRegroupedSenselArray", 0);
      if (!BoolValueWithDefault || v89 || (a9 & 1) == 0 && ((a12 | DWORD2(a10)) & 1) == 0)
      {
        v358 = 0;
        v383[0] = 0;
        if (!a27 || !a24)
        {
          v184 = 8;
          if (!v86)
          {
            v184 = 16;
          }

          v113 = _CVPixelBufferLayoutPlane(v82, v83, propertiesa, v84, v85, v318, a9, a10, *(&a10 + 1), a11, a12, v184, v332, v316, a15, a16, v86, &v356, v384, &v358, &v357);
          if (!v113)
          {
            v76 = 0;
            v79 = 0;
            v80 = 0;
            v78 = v358;
            v382[0] = v358;
            v81 = 1;
            v77 = v345;
            v44 = theArray;
            goto LABEL_72;
          }

LABEL_222:
          if (Mutable)
          {
            CFRelease(Mutable);
          }

          goto LABEL_224;
        }

        v356 = a13;
        v78 = a13 * a9;
        v358 = a13 * a9;
        AllocSize = IOSurfaceGetAllocSize(a24);
        v91 = *a27;
        if (*a27 + a13 * a9 <= AllocSize)
        {
          v384[0] = *a27;
          if (((v91 + 63) & 0xFFFFFFFFFFFFFFC0) == v91)
          {
            v80 = 0;
            v79 = 0;
            v76 = 0;
            v296 = 1;
            v81 = 1;
            v77 = v345;
            v44 = theArray;
            goto LABEL_230;
          }
        }
      }
    }

    goto LABEL_221;
  }

  cf = Mutable;
  v63 = 0;
  properties = 0;
  v64 = 0;
  *v355 = 0;
  do
  {
    v65 = CFArrayGetValueAtIndex(v44, v63);
    if (v65)
    {
      v66 = v65;
      v67 = CVDictionaryGetIntValueWithDefault(v65, @"HorizontalSubsampling", 1);
      v68 = CVDictionaryGetIntValueWithDefault(v66, @"VerticalSubsampling", 1);
      v69 = properties;
      if (v67 > properties)
      {
        v69 = v67;
      }

      properties = v69;
      if (v68 > v64)
      {
        v64 = v68;
      }
    }

    ++v63;
  }

  while (v349 != v63);
  v287 = a25;
  v288 = a29;
  v312 = CVDictionaryGetIntValueWithDefault(v345, @"CompressedDataRegionAlignment", 512);
  v70 = 0;
  v71 = 0;
  do
  {
    v72 = CFArrayGetValueAtIndex(v44, v70);
    v73 = CVDictionaryGetIntValueWithDefault(v72, @"CompressionType", 0);
    v380[v70] = v73;
    v74 = CVDictionaryGetIntValueWithDefault(v72, @"TiledAddressFormat", 0);
    *&v365[2 * v70] = v74;
    if (v73 || v74 == 5)
    {
      if (v73 > 4)
      {
LABEL_217:
        v113 = 4294960634;
        goto LABEL_218;
      }

      v71 = 1;
    }

    ++v70;
    v44 = theArray;
  }

  while (v349 != v70);
  v75 = 8 * v349;
  if (v71)
  {
    v75 = 0;
  }

  if (v349 == 1 && v71 == 0)
  {
    v76 = 0;
  }

  else
  {
    v76 = v349;
  }

  if (a20)
  {
    *a20 = v76;
  }

  *v355 = (a14 - 1 + v75) / a14 * a14;
  v77 = v345;
  if (v349 == 1 && v71 == 0)
  {
    v78 = 0;
    v79 = 0;
    v80 = 0;
    v81 = 1;
    goto LABEL_71;
  }

  v298 = v76;
  v330 = 0;
  v262 = 0;
  v265 = 0;
  v92 = 0;
  v93 = 0;
  if (a27)
  {
    v94 = a24 == 0;
  }

  else
  {
    v94 = 1;
  }

  v267 = *MEMORY[0x1E696D0A0];
  v264 = *MEMORY[0x1E696D0C0];
  v261 = *MEMORY[0x1E696D078];
  v260 = *MEMORY[0x1E696CFD8];
  v258 = *MEMORY[0x1E696CFF0];
  v259 = *MEMORY[0x1E696D080];
  v269 = *MEMORY[0x1E696CE28];
  v277 = (v318 - 1);
  v289 = a9 - 1;
  v95 = !v94;
  v263 = v95;
  v81 = 1;
  v96 = v356;
  while (2)
  {
    v283 = v96;
    v97 = CFArrayGetValueAtIndex(v44, v93);
    v343 = Mutable;
    if (v325)
    {
      v343 = v92;
      if (v93 < CFArrayGetCount(v325))
      {
        v343 = CFArrayGetValueAtIndex(v325, v93);
      }
    }

    v305 = CVDictionaryGetIntValueWithDefault(v97, @"BitsPerBlock", 1);
    v381[v93] = v305;
    v98 = 1;
    v99 = 1;
    if (v349 != 1)
    {
      v98 = CVDictionaryGetIntValueWithDefault(v97, @"HorizontalSubsampling", 1);
      v99 = CVDictionaryGetIntValueWithDefault(v97, @"VerticalSubsampling", 1);
    }

    v294 = CVDictionaryGetIntValueWithDefault(v97, @"BlockWidth", 1);
    v309 = CVDictionaryGetIntValueWithDefault(v97, @"BlockHeight", 1);
    CVDictionaryGetIntValueWithDefault(v97, @"BlockHorizontalAlignment", 1);
    v327 = v97;
    CVDictionaryGetIntValueWithDefault(v97, @"BlockVerticalAlignment", 1);
    if (v98 <= 1)
    {
      v100 = 1;
    }

    else
    {
      v100 = v98;
    }

    if (v99 <= 1)
    {
      v101 = 1;
    }

    else
    {
      v101 = v99;
    }

    IntInArrayWithDefault = CVDictionaryGetIntInArrayWithDefault(v77, @"ExactBytesPerRow", v93, 0);
    v103 = CVDictionaryGetIntValueWithDefault(theDict, @"ExactRatioBetweenBytesPerRowOfPlanes", 0);
    v320 = v81;
    if (v349 == 2 && v93 == 1 && v103)
    {
      if (IntInArrayWithDefault)
      {
        if (v392[0] * v103 != IntInArrayWithDefault)
        {
          goto LABEL_217;
        }
      }

      else
      {
        IntInArrayWithDefault = v392[0] * v103;
      }
    }

    v104 = IntInArrayWithDefault;
    v105 = 8;
    if (!IntInArrayWithDefault)
    {
      v105 = 16;
    }

    if (v98 > v105)
    {
      v106 = 1;
    }

    else
    {
      v106 = v105 / v100;
    }

    v107 = v332 / v101;
    if (v99 > v332)
    {
      v107 = 1;
    }

    v271 = v107;
    v274 = v106;
    v108 = v277 + v100;
    v109 = __CFADD__(v277, v100);
    v110 = __CFADD__(v289, v101);
    v364[v93] = a10 / v100;
    v111 = a11 / v100;
    v363[v93] = a11 / v100;
    v112 = *(&a10 + 1) / v101;
    v362[v93] = *(&a10 + 1) / v101;
    v297 = a12 / v101;
    v361[v93] = a12 / v101;
    v113 = 4294960634;
    if (v109 || v110)
    {
      goto LABEL_218;
    }

    v270 = a10 / v100;
    v335 = (v289 + v101) / v101;
    v114 = CVDictionaryGetBoolValueWithDefault(theDict, @"ContainsSenselArray", 0);
    v115 = CVDictionaryGetBoolValueWithDefault(theDict, @"ContainsRegroupedSenselArray", 0);
    if (v114 && !v115 && v349 != 4 && (v335 & 1) != 0)
    {
      goto LABEL_217;
    }

    v116 = v108 / v100;
    a21[v93] = v108 / v100;
    a22[v93] = v335;
    v77 = v345;
    v117 = CVDictionaryGetIntValueWithDefault(v345, @"ExactHeight", 0);
    if (v117)
    {
      if (v117 != *(&a10 + 1) + a9 + a12)
      {
        goto LABEL_217;
      }
    }

    v118 = (a14 - 1 + *v355) / a14 * a14;
    *v355 = v118;
    v119 = v380[v93];
    v44 = theArray;
    v291 = v116;
    if ((v119 - 1) < 2)
    {
LABEL_134:
      v118 = (v118 + v312 - 1) / v312 * v312;
      *v355 = v118;
      goto LABEL_135;
    }

    if (v119)
    {
      if ((v119 - 3) <= 1)
      {
        v286 = v380[v93];
        if (areUniversalCompressedBuffers2KAligned())
        {
          v145 = (v118 + v312 - 1) / v312 * v312;
          v312 = (v312 + 2047) & 0xFFFFFFFFFFFFF800;
          if (v145 != v118)
          {
            CVDictionaryGetIntValueWithDefault(theDict, @"PixelFormat", 0);
          }
        }

        v119 = v286;
        goto LABEL_134;
      }

LABEL_135:
      v120 = (v383 + v330);
      v383[v93] = v118;
      if ((v119 - 2) >= 3)
      {
        if (v119)
        {
          if (v119 != 1)
          {
            goto LABEL_180;
          }

          v126 = v365[2 * v93];
          v285 = CVDictionaryGetIntValueWithDefault(v345, @"CompressedTileHeaderGroupBytesPerRowAlignment", 128);
          v368[v93] = CVDictionaryGetIntValueWithDefault(v343, v261, 1);
          v127 = CVDictionaryGetIntValueWithDefault(v343, v260, 4);
          v373[v93] = v127;
          if (v127 != 8 && v127 != 4)
          {
            goto LABEL_217;
          }

          v273 = v127;
          v268 = (v383 + v330);
          v128 = CVDictionaryGetIntValueWithDefault(v327, @"TileWidth", 1);
          v379[v93] = v128;
          if ((v128 - 1024) < 0xFFFFFFFFFFFFFC01)
          {
            goto LABEL_217;
          }

          v129 = v128;
          if (((v128 + 1023) & v128) != 0)
          {
            goto LABEL_217;
          }

          v275 = v118;
          v130 = CVDictionaryGetIntValueWithDefault(v327, @"TileHeight", 1);
          v378[v93] = v130;
          if ((v130 - 1024) < 0xFFFFFFFFFFFFFC01)
          {
            goto LABEL_217;
          }

          v131 = v130;
          if (((v130 + 1023) & v130) != 0)
          {
            goto LABEL_217;
          }

          v328 = v126;
          v132 = CVDictionaryGetIntValueWithDefault(v343, v267, 0);
          v375[v93] = v132;
          if (v132 > v129)
          {
            goto LABEL_217;
          }

          v133 = v132;
          v134 = CVDictionaryGetIntValueWithDefault(v343, v264, 0);
          v374[v93] = v134;
          if (v134 > v131)
          {
            goto LABEL_217;
          }

          v135 = v134;
          v136 = CVDictionaryGetIntValueWithDefault(v343, v259, 0);
          v366[v93] = v136;
          if (v136 > 3)
          {
            goto LABEL_217;
          }

          if (a10 != 0)
          {
            goto LABEL_217;
          }

          if (v129 % v294)
          {
            goto LABEL_217;
          }

          v137 = (v291 + v129 + v111 + v133 - 1) / v129;
          if (v137 * v129 < v129)
          {
            goto LABEL_217;
          }

          v372[v93] = v137;
          if (v131 % v309)
          {
            goto LABEL_217;
          }

          v138 = ((v131 << v136) + v335 + v297 + v135 - 1) / (v131 << v136) * (v131 << v136);
          if (v138 < v131 << v136)
          {
            goto LABEL_217;
          }

          v139 = v138 / v131;
          v371[v93] = v138 / v131;
          v140 = (v273 * v137) << v136;
          v141 = v136;
          v142 = CVDictionaryGetIntValueWithDefault(v343, v258, (v140 + v285 - 1) / v285 * v285);
          v367[v93] = v142;
          if (v142 < v140)
          {
            goto LABEL_217;
          }

          v384[v93] = v275;
          v143 = (v312 + v142 * (v139 >> v141) + v275 - 1) / v312 * v312;
          v369[v93] = v143;
          v144 = (v131 * v129 * v305 + 7) >> 3;
          v360[v93] = v144;
          *v355 = v143 + v139 * v137 * v144;
          v265 = 1;
          v77 = v345;
          v81 = v320;
LABEL_209:
          v159 = v328;
          goto LABEL_210;
        }

        if (*&v365[2 * v93] != 5)
        {
          goto LABEL_180;
        }
      }

      v284 = v119;
      v121 = v365[2 * v93];
      v122 = CVDictionaryGetIntValueWithDefault(v327, @"BytesPerTileHeader", 2);
      v123 = v122;
      v373[v93] = v122;
      v268 = (v383 + v330);
      switch(v122)
      {
        case 32:
          v272 = 32;
          v124 = 32;
          break;
        case 8:
          v272 = 16;
          v124 = 16;
          break;
        case 2:
          v124 = 16;
          if (v305 <= 0x20)
          {
            v125 = 16;
          }

          else
          {
            v125 = 8;
          }

          v272 = v125;
          break;
        default:
          goto LABEL_217;
      }

      v146 = CVDictionaryGetIntValueWithDefault(v327, @"TileWidth", 1);
      v379[v93] = v146;
      if ((v146 - 1024) < 0xFFFFFFFFFFFFFC01)
      {
        goto LABEL_217;
      }

      v147 = v146;
      if (((v146 + 1023) & v146) != 0)
      {
        goto LABEL_217;
      }

      v276 = v118;
      v148 = CVDictionaryGetIntValueWithDefault(v327, @"TileHeight", 1);
      v378[v93] = v148;
      if ((v148 - 1024) < 0xFFFFFFFFFFFFFC01)
      {
        goto LABEL_217;
      }

      v149 = v148;
      if (((v148 + 1023) & v148) != 0)
      {
        goto LABEL_217;
      }

      v328 = v121;
      if (v284 != 2)
      {
        v150 = CVDictionaryGetBoolValueWithDefault(theDict, @"MultiSlice", 0);
        if (v150)
        {
          v151 = v150;
          v320 = CVDictionaryGetIntValueWithDefault(v345, @"NumberOfSlices", 0);
          if (v320 < 2)
          {
            v113 = 4294960635;
            goto LABEL_218;
          }

          v262 = v151;
        }

        else
        {
          v262 = 0;
        }
      }

      v160 = CVDictionaryGetIntValueWithDefault(v343, v267, 0);
      v375[v93] = v160;
      if (v160 > v147)
      {
        goto LABEL_217;
      }

      v161 = v160;
      v162 = CVDictionaryGetIntValueWithDefault(v343, v264, 0);
      v374[v93] = v162;
      if (v162 > v149)
      {
        goto LABEL_217;
      }

      v163 = (v291 + v111 + v161 + v147 - 1) / v147;
      if (v163 * v147 < v147)
      {
        goto LABEL_217;
      }

      v164 = v123;
      v372[v93] = v163;
      v165 = (v162 + v335 + v149 + v297 - 1) / v149;
      if (v165 * v149 < v149)
      {
        goto LABEL_217;
      }

      v371[v93] = v165;
      if (a10 != 0 || v147 % v294 || v149 % v309)
      {
        goto LABEL_217;
      }

      v166 = v163 * v147 / v272;
      v167 = __clz(v166);
      if (0x80000000 >> v167 >= v166)
      {
        v168 = 31;
      }

      else
      {
        v168 = 32;
      }

      v169 = v168 - v167;
      v170 = v165 * v149 / v124;
      v171 = __clz(v170);
      if (0x80000000 >> v171 >= v170)
      {
        v172 = 31;
      }

      else
      {
        v172 = 32;
      }

      v173 = v164 << v169;
      v367[v93] = v164 << v169;
      v174 = (v147 * v149 * v305 + 7) >> 3;
      v360[v93] = v174;
      if ((v284 - 3) > 1)
      {
        v177 = 128;
      }

      else
      {
        v175 = v172;
        v176 = areUniversalCompressedBuffers2KAligned();
        v172 = v175;
        v177 = 128;
        if (v176)
        {
          v177 = 2048;
        }
      }

      v178 = (v165 * v163 * v174 + 127) & 0xFFFFFFFFFFFFFF80;
      v179 = ((v173 << (v172 - v171)) + 127) & 0xFFFFFFFFFFFFFF80;
      *(v359 + v93) = v179;
      v384[v93] = v276;
      v369[v93] = v276;
      v377[v93] = v178;
      v81 = v320;
      v180 = v178 + ((v178 + v177 - 1) & -v177) * (v320 - 1) + v276;
      v370[v93] = v180;
      v376[v93] = v179;
      *v355 = v180 + v179 * v320;
      v265 = 1;
      v77 = v345;
      v44 = theArray;
      goto LABEL_209;
    }

    if (*&v365[2 * v93] == 5)
    {
      goto LABEL_134;
    }

    v120 = &v383[v93];
    *v120 = v118;
LABEL_180:
    if (v263)
    {
      if (v104)
      {
        v152 = v104;
      }

      else
      {
        v152 = a13;
      }

      v356 = v152;
      v153 = CVDictionaryGetIntValueWithDefault(v343, @"BytesPerRowAlignment", v152);
      v392[v93] = v153;
      v154 = IOSurfaceGetAllocSize(a24);
      v155 = (v309 + v335 - 1) / v309 * v153;
      *v355 = v155;
      v156 = *&a27[2 * v93];
      if (v156 + v155 > v154)
      {
        goto LABEL_217;
      }

      v384[v93] = v156;
      if (((v156 + 63) & 0xFFFFFFFFFFFFFFC0) != v156)
      {
        goto LABEL_217;
      }

      *v120 = v156;
      v382[v93] = v155;
      *&v365[2 * v93] = CVDictionaryGetIntValueWithDefault(v343, v269, 0);
      v157 = a9;
      v81 = v320;
LABEL_213:
      Mutable = cf;
      goto LABEL_214;
    }

    v268 = v120;
    v158 = _CVPixelBufferLayoutPlane(v294, v309, v305, properties, v64, v291, v335, v270, v112, v111, v297, v274, v271, v316, 0, 0, v104, (v392 + v330), (v384 + v330), v355, 0);
    v159 = 0;
    v81 = v320;
    if (v158)
    {
      v113 = v158;
LABEL_218:
      Mutable = cf;
      goto LABEL_222;
    }

LABEL_210:
    *&v365[2 * v93] = CVDictionaryGetIntValueWithDefault(v343, v269, v159);
    if (!a24)
    {
      v181 = *v355;
      v382[v93] = *v355 - *v268;
      v157 = a9;
      v152 = (v289 + v181) / a9;
      goto LABEL_213;
    }

    Mutable = cf;
    v157 = a9;
    v152 = v283;
LABEL_214:
    v96 = (v152 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v356 = v96;
    if (!is_mul_ok(v157, v96))
    {
      goto LABEL_217;
    }

    v78 = v96 * v157;
    v358 = v96 * v157;
    ++v93;
    v330 = (v330 + 8);
    v92 = v343;
    if (v349 != v93)
    {
      continue;
    }

    break;
  }

  v76 = v298;
  v79 = v265;
  v80 = v262;
LABEL_71:
  v357 = v78;
LABEL_72:
  if (a24)
  {
    v296 = 1;
    goto LABEL_230;
  }

  v244 = __CFADD__(v78, v316);
  v78 += v316;
  if (v244)
  {
LABEL_221:
    v113 = 4294960634;
    goto LABEL_222;
  }

  v296 = 0;
  v358 = v78;
LABEL_230:
  v113 = a28;
  if ((v314 & 1) == 0)
  {
    v355[0] = kIOSurfaceSubsamplingNone;
    v190 = CFGetTypeID(Mutable);
    if (v190 != CFDictionaryGetTypeID())
    {
      v194 = 0;
      goto LABEL_373;
    }

    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, Mutable);
    v192 = *MEMORY[0x1E695E4D0];
    v193 = v77;
    v194 = MutableCopy;
    if (v192 != CFDictionaryGetValue(v193, @"IOSurfacePurgeable"))
    {
      CFDictionarySetValue(v194, *MEMORY[0x1E696CFA0], v192);
    }

    if (!v303)
    {
      CFDictionarySetValue(v194, *MEMORY[0x1E696D0E8], v192);
    }

    v195 = v80;
    CVDictionarySetSInt64Value(v194, *MEMORY[0x1E696D130], v318);
    CVDictionarySetSInt64Value(v194, *MEMORY[0x1E696CF58], a9);
    if (!v79)
    {
      CVDictionarySetSInt64Value(v194, *MEMORY[0x1E696CE58], v356);
    }

    v196 = *MEMORY[0x1E696CFA8];
    if (v76)
    {
      v197 = 0;
    }

    else
    {
      v197 = v384[0];
    }

    setIntValue(v194, *MEMORY[0x1E696CFA8], v197);
    v198 = *MEMORY[0x1E696CE30];
    if (v296)
    {
      v199 = v358;
    }

    else
    {
      v200 = CVDictionaryGetIntValueWithDefault(v194, v198, 0);
      if (v358 <= v200)
      {
        v199 = v200;
      }

      else
      {
        v199 = v358;
      }

      v358 = v199;
    }

    CVDictionarySetSInt64Value(v194, v198, v199);
    if (!v79)
    {
      v201 = *MEMORY[0x1E696CE50];
      v202 = CVDictionaryGetIntValueWithDefault(theDict, @"BitsPerBlock", 8);
      setIntValue(v194, v201, v202 / 8);
    }

    v203 = *MEMORY[0x1E696CF10];
    propertiesb = v194;
    v204 = CVDictionaryGetIntValueWithDefault(theDict, @"BlockWidth", 1);
    setIntValue(v194, v203, v204);
    v205 = *MEMORY[0x1E696CF08];
    v206 = CVDictionaryGetIntValueWithDefault(theDict, @"BlockHeight", 1);
    setIntValue(v194, v205, v206);
    if (a24)
    {
      v207 = CVDictionaryGetIntValueWithDefault(Mutable, v196, 0);
      if (((v207 + 63) & 0xFFFFFFFFFFFFFFC0) != v207)
      {
        goto LABEL_373;
      }

      setIntValue(v194, v196, v207);
    }

    if (v195)
    {
      v208 = v81 > 1;
    }

    else
    {
      v208 = 0;
    }

    v209 = v208;
    v295 = v209;
    if (v209 == 1)
    {
      setIntValue(v194, *MEMORY[0x1E696D100], v81);
    }

    v321 = v81;
    v210 = CFDictionaryGetValue(theDict, @"PixelFormat");
    if (v210)
    {
      CFDictionarySetValue(v194, *MEMORY[0x1E696CFC0], v210);
    }

    v299 = v76;
    if (v76)
    {
      v266 = v79;
      cfa = Mutable;
      v342 = CFArrayCreateMutable(0, v76, MEMORY[0x1E695E9C0]);
      v211 = 0;
      v341 = *MEMORY[0x1E696D0C8];
      v340 = *MEMORY[0x1E696D090];
      v337 = *MEMORY[0x1E696CFD0];
      v336 = *MEMORY[0x1E696D0B0];
      v334 = *MEMORY[0x1E696D0B8];
      v350 = *MEMORY[0x1E696D060];
      v347 = *MEMORY[0x1E696D058];
      v310 = *MEMORY[0x1E696CE28];
      v333 = *MEMORY[0x1E696D048];
      v331 = *MEMORY[0x1E696CFF0];
      v329 = *MEMORY[0x1E696CFD8];
      v326 = *MEMORY[0x1E696D038];
      v324 = *MEMORY[0x1E696D030];
      v323 = *MEMORY[0x1E696D0A0];
      v322 = *MEMORY[0x1E696D0C0];
      v319 = *MEMORY[0x1E696D0D0];
      v317 = *MEMORY[0x1E696D098];
      v304 = (LODWORD(v372[0]) * LODWORD(v360[0]));
      v315 = *MEMORY[0x1E696D020];
      v313 = *MEMORY[0x1E696D028];
      v292 = *MEMORY[0x1E696CFF8];
      v293 = *MEMORY[0x1E696D000];
      v308 = *MEMORY[0x1E696CFE0];
      v281 = *MEMORY[0x1E696D088];
      v282 = *MEMORY[0x1E696D050];
      v278 = *MEMORY[0x1E696D040];
      v280 = *MEMORY[0x1E696D078];
      v279 = *MEMORY[0x1E696D080];
      v290 = *MEMORY[0x1E696CFE8];
      v306 = v356;
      while (1)
      {
        v212 = CFArrayGetValueAtIndex(v44, v211);
        v213 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        CVDictionarySetSInt64Value(v213, v341, a21[v211]);
        CVDictionarySetSInt64Value(v213, v340, a22[v211]);
        CVDictionarySetSInt64Value(v213, v337, v383[v211]);
        v214 = v384[v211];
        CVDictionarySetSInt64Value(v213, v336, v214);
        CVDictionarySetSInt64Value(v213, v334, v382[v211]);
        v215 = CVDictionaryGetIntValueWithDefault(v212, @"BlockWidth", 1);
        setIntValue(v213, v350, v215);
        v216 = v212;
        v217 = CVDictionaryGetIntValueWithDefault(v212, @"BlockHeight", 1);
        setIntValue(v213, v347, v217);
        v218 = v364[v211];
        if (v218)
        {
          setIntValue(v213, local_kIOSurfacePlaneExtendedPixelsOnLeft, v218);
        }

        v219 = v363[v211];
        if (v219)
        {
          setIntValue(v213, local_kIOSurfacePlaneExtendedPixelsOnRight, v219);
        }

        v220 = v362[v211];
        if (v220)
        {
          setIntValue(v213, local_kIOSurfacePlaneExtendedPixelsOnTop, v220);
        }

        v221 = v361[v211];
        if (v221)
        {
          setIntValue(v213, local_kIOSurfacePlaneExtendedPixelsOnBottom, v221);
        }

        v222 = *&v365[2 * v211];
        if (v222)
        {
          setIntValue(v213, v310, *&v365[2 * v211]);
        }

        v223 = v380[v211];
        if ((v223 - 1) >= 4 && (v223 || v222 != 5))
        {
          setIntValue(v213, v308, SLODWORD(v381[v211]) / 8);
          CVDictionarySetSInt64Value(v213, v290, v392[v211]);
          goto LABEL_298;
        }

        setIntValue(v213, v333, v380[v211]);
        setIntValue(v213, v331, v367[v211]);
        setIntValue(v213, v329, v373[v211]);
        v224 = v379[v211];
        setIntValue(v213, v326, v224);
        v225 = v378[v211];
        setIntValue(v213, v324, v225);
        setIntValue(v213, v323, v375[v211]);
        setIntValue(v213, v322, v374[v211]);
        v226 = v372[v211];
        setIntValue(v213, v319, v226);
        setIntValue(v213, v317, v371[v211]);
        setIntValue(v213, local_kIOSurfacePlaneBitsPerElement, v381[v211]);
        if ((v223 - 2) < 3)
        {
          break;
        }

        if (v223)
        {
          setIntValue(v213, v280, v368[v211]);
          setIntValue(v213, v279, v366[v211]);
          setIntValue(v213, v313, v214);
          setIntValue(v213, v315, v369[v211]);
          goto LABEL_298;
        }

        if (v222 == 5)
        {
          setIntValue(v213, v315, v214);
          setIntValue(v213, v313, v370[v211]);
LABEL_292:
          v227 = v360[v211];
          setIntValue(v213, v293, v227);
          setIntValue(v213, v292, v227 * v226);
          setIntValue(v213, v350, v224);
          setIntValue(v213, v347, v225);
          setIntValue(v213, v308, v227);
          if (v295)
          {
            setIntValue(v213, v282, v377[v211]);
            setIntValue(v213, v281, v376[v211]);
          }

          v306 = v304;
          if (v223 == 4)
          {
            v228 = CVDictionaryGetIntValueWithDefault(v216, @"CompressionFootprint", 0);
            if (!v228)
            {
              v356 = v304;
              Mutable = cfa;
              v194 = propertiesb;
              goto LABEL_373;
            }

            setIntValue(v213, v278, v228);
            v306 = v304;
          }
        }

LABEL_298:
        v76 = v299;
        setComponentsProperties(theDict, v213, v211, v299, propertiesb);
        getSubsamplingForIOSurfaceProperty(v216, theDict, v355);
        CFArrayAppendValue(v342, v213);
        CFRelease(v213);
        ++v211;
        v44 = theArray;
        if (v299 == v211)
        {
          v356 = v306;
          CFDictionarySetValue(propertiesb, *MEMORY[0x1E696D0A8], v342);
          setIntValue(propertiesb, *MEMORY[0x1E696D108], v355[0]);
          CFRelease(v342);
          Mutable = cfa;
          v229 = v287;
          v230 = v302;
          v79 = v266;
          goto LABEL_320;
        }
      }

      setIntValue(v213, v315, v214);
      setIntValue(v213, v313, v370[v211]);
      if ((v223 - 3) > 1)
      {
        goto LABEL_298;
      }

      goto LABEL_292;
    }

    setComponentsProperties(theDict, 0, 0, 1uLL, v194);
    getSubsamplingForIOSurfaceProperty(theDict, theDict, v355);
    setIntValue(v194, *MEMORY[0x1E696D108], v355[0]);
    if (a10)
    {
      setIntValue(v194, local_kIOSurfacePlaneExtendedPixelsOnLeft, a10);
    }

    v229 = v287;
    v230 = v302;
    if (*(&a10 + 1))
    {
      setIntValue(propertiesb, local_kIOSurfacePlaneExtendedPixelsOnTop, SDWORD2(a10));
    }

    if (a11)
    {
      setIntValue(propertiesb, local_kIOSurfacePlaneExtendedPixelsOnRight, a11);
    }

    if (a12)
    {
      setIntValue(propertiesb, local_kIOSurfacePlaneExtendedPixelsOnBottom, a12);
    }

LABEL_320:
    v231 = CFDictionaryGetValue(v345, @"CacheMode");
    if (v231)
    {
      v232 = v231;
      TypeID = CFArrayGetTypeID();
      if (TypeID == CFGetTypeID(v232) && CFArrayGetCount(v232) >= 1)
      {
        v234 = CFArrayGetValueAtIndex(v232, 0);
        CFDictionarySetValue(propertiesb, *MEMORY[0x1E696CE60], v234);
      }
    }

    if (v230)
    {
      v235 = CFDictionaryGetValue(v230, @"PixelBufferPoolNameKey");
      if (v235)
      {
        CFDictionarySetValue(propertiesb, *MEMORY[0x1E696CF98], v235);
      }
    }

    if (v311)
    {
      if (a24)
      {
        if (v229)
        {
          v236 = v229;
          v194 = propertiesb;
          ChildIOSurface = CreateChildIOSurface(v236, propertiesb, v76, a26);
        }

        else
        {
          v194 = propertiesb;
          ChildIOSurface = IOSurfaceCreateChildSurface();
        }
      }

      else
      {
        v194 = propertiesb;
        ChildIOSurface = IOOrEXSurfaceCreate(propertiesb);
      }

      v238 = ChildIOSurface;
      if (!ChildIOSurface)
      {
LABEL_373:
        v113 = 4294960634;
        goto LABEL_374;
      }

      v239 = v79;
      v240 = v300 ^ 1;
      if (!v79)
      {
        v240 = 1;
      }

      if ((v240 & 1) == 0 && v76)
      {
        for (i = 0; v76 != i; ++i)
        {
          v242 = CFArrayGetValueAtIndex(theArray, i);
          v243 = v380[i];
          if (v243 == 3)
          {
            if (v321 <= 1)
            {
              goto LABEL_346;
            }
          }

          else
          {
            v244 = v243 != 4 || v321 >= 2;
            if (!v244)
            {
LABEL_346:
              BaseAddressOfCompressedTileHeaderRegionOfPlane = IOSurfaceGetBaseAddressOfCompressedTileHeaderRegionOfPlane();
              valuePtr = 0;
              v246 = CFDictionaryGetValue(v242, @"CompressionMetadataPatternSignallingConstant");
              if (v246)
              {
                v247 = v246;
                v248 = CFGetTypeID(v246);
                v94 = v248 == CFNumberGetTypeID();
                v76 = v299;
                if (v94)
                {
                  CFNumberGetValue(v247, kCFNumberSInt8Type, &valuePtr);
                  memset(BaseAddressOfCompressedTileHeaderRegionOfPlane, valuePtr, *(v359 + i));
                }
              }
            }
          }
        }
      }

      v249 = v301;
      if (v239)
      {
        v249 = 1;
      }

      if (((v296 | v249) & 1) == 0)
      {
        BaseAddress = IOOrEXSurfaceGetBaseAddress(v238);
        if (v76)
        {
          v251 = (BaseAddress + 4);
          v252 = v392;
          v253 = v384;
          do
          {
            v255 = *v253++;
            v254 = v255;
            v256 = *v252;
            v252 += 2;
            *(v251 - 1) = bswap32(v254);
            *v251 = bswap32(v256);
            v251 += 2;
            --v76;
          }

          while (v76);
        }
      }

      if (a17)
      {
        *a17 = 0;
      }

      if (a18)
      {
        *a18 = v356;
      }

      if (a19)
      {
        *a19 = v357;
      }

      if (a23)
      {
        *a23 = CFRetain(v238);
      }

      if (a28)
      {
        *a28 = 0;
      }

      CFRelease(v238);
    }

    v113 = 0;
    if (v288)
    {
      v194 = propertiesb;
      if (propertiesb)
      {
        v113 = 0;
        *v288 = CFRetain(propertiesb);
        goto LABEL_375;
      }
    }

    else
    {
      v194 = propertiesb;
    }

LABEL_374:
    if (!v194)
    {
      goto LABEL_222;
    }

LABEL_375:
    CFRelease(v194);
    goto LABEL_222;
  }

  if (!v311)
  {
    v113 = 0;
    goto LABEL_222;
  }

  v185 = MEMORY[0x19EAF6BD0](v307, v78, 418029834, 0);
  if (v185)
  {
    v186 = (v185 + v316 - 1) / v316 * v316;
    if (v76)
    {
      for (j = 0; j != v76; ++j)
      {
        v188 = (v186 + j * 8);
        v189 = bswap32(v392[j]);
        *v188 = bswap32(v384[j]);
        v188[1] = v189;
      }
    }

    else
    {
      v186 += v384[0];
    }

    if (a17)
    {
      *a17 = v186;
    }

    if (a18)
    {
      *a18 = v356;
    }

    if (a19)
    {
      *a19 = v357;
    }

    if (a23)
    {
      *a23 = 0;
    }

    if (a28)
    {
      v113 = 0;
      *a28 = v185;
    }

    goto LABEL_222;
  }

  v113 = 4294960634;
LABEL_224:
  v182 = *MEMORY[0x1E69E9840];
  return v113;
}

CFTypeRef *CVPixelBuffer::initWithPixelBufferBacking(CFTypeRef *this, CVPixelBufferBacking *a2)
{
  v3 = this;
  if (!CVImageBuffer::init(this))
  {
    return 0;
  }

  (*(*a2 + 32))(a2);
  v3[15] = a2;
  if (*(v3 + 104) == 1)
  {
    (*(*a2 + 64))(a2);
  }

  return v3;
}

CFTypeRef *CVPixelBufferBacking::initWithPixelBufferDescription(CFTypeRef *this, unint64_t a2, uint64_t a3, void *a4, unint64_t a5, unint64_t a6, unint64_t a7, void **a8, unint64_t *a9, unint64_t *a10, unint64_t *a11, void (*a12)(void *, const void *), void (*a13)(void *, const void *, unint64_t, unint64_t, const void **), void *a14, const __CFDictionary *a15, const __CFDictionary *a16, __IOSurface *a17, __int128 a18, unint64_t *a19, int *a20)
{
  v27 = this;
  v28 = CFGetAllocator(this[1]);
  *a20 = 0;
  if (!CVBufferBacking::init(v27))
  {
    v27 = 0;
    *a20 = -6662;
    return v27;
  }

  v30 = a15;
  if (!a15)
  {
LABEL_44:
    v40 = -6660;
    goto LABEL_45;
  }

  v27[22] = a2;
  v27[23] = a3;
  if (a3 | a2)
  {
    if (!a2)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v27[22] = CVDictionaryGetIntValueWithDefault(a15, @"Width", 0);
    IntValueWithDefault = CVDictionaryGetIntValueWithDefault(a15, @"Height", 0);
    v30 = a15;
    a3 = IntValueWithDefault;
    v27[23] = IntValueWithDefault;
    if (!v27[22])
    {
LABEL_21:
      v40 = -6681;
LABEL_45:
      *a20 = v40;
LABEL_46:
      (*(*v27 + 5))(v27);
      return 0;
    }
  }

  if (a7 > 0x10 || !a3)
  {
    goto LABEL_21;
  }

  v127[0] = 0;
  v32 = v30;
  PixelFormatDescription = CVPixelBufferBacking::getPixelFormatDescription(v30, v127, v29);
  if (!PixelFormatDescription)
  {
    v40 = -6680;
    goto LABEL_45;
  }

  v34 = PixelFormatDescription;
  v27[135] = CFDictionaryCreateCopy(v28, PixelFormatDescription);
  v27[136] = CFDictionaryCreateCopy(v28, v32);
  v27[131] = CVDictionaryGetIntValueWithDefault(v32, @"ExtendedPixelsLeft", 0);
  v27[133] = CVDictionaryGetIntValueWithDefault(v32, @"ExtendedPixelsTop", 0);
  v27[132] = CVDictionaryGetIntValueWithDefault(v32, @"ExtendedPixelsRight", 0);
  v27[134] = CVDictionaryGetIntValueWithDefault(v32, @"ExtendedPixelsBottom", 0);
  v126 = CVDictionaryGetIntValueWithDefault(v34, @"BitsPerBlock", 0);
  v124 = v34;
  v125 = CVDictionaryGetIntValueWithDefault(v34, @"BlockWidth", 1);
  if (a4 || a8 || a17)
  {
    v27[143] = a12;
    v27[144] = a13;
    v27[145] = a14;
    *(v27 + 1168) = 1;
    v27[57] = a17;
    if (a17)
    {
      CFRetain(a17);
    }

    v27[56] = a4;
    if (a7)
    {
      v27[129] = a5;
      if (a5)
      {
        if (!a6)
        {
          a6 = a5 / v27[23];
        }

        v27[126] = a6;
      }

      v41 = 0;
      v27[130] = a7;
      v42 = (v27 + 40);
      do
      {
        if (a8)
        {
          v43 = a8[v41];
        }

        else
        {
          v43 = 0;
        }

        v42[38] = a11[v41];
        *(v42 - 16) = a9[v41];
        v44 = a10[v41];
        v42[22] = v43;
        *v42++ = v44;
        ++v41;
      }

      while (v41 < v27[130]);
    }

    else
    {
      v27[126] = a6;
      v27[129] = a5;
    }

    *a20 = 0;
    goto LABEL_156;
  }

  DefaultBytesPerRowAlignment = CVPixelBufferBacking::getDefaultBytesPerRowAlignment(0);
  Value = CFDictionaryGetValue(v32, @"MetalCompatibility");
  v37 = Value;
  if (Value)
  {
    v38 = CFBooleanGetValue(Value);
    if (v38)
    {
      v39 = 64;
    }

    else
    {
      v39 = 16;
    }

    if (v38)
    {
      DefaultBytesPerRowAlignment = 64;
    }
  }

  else
  {
    v39 = 16;
  }

  v45 = CFDictionaryGetValue(v32, @"MemoryAllocator");
  if (!v45)
  {
    v45 = CFGetAllocator(v27[1]);
  }

  v27[137] = CFRetain(v45);
  v46 = CFDictionaryGetValue(v32, @"CustomMemoryLayoutCallBacks");
  if (v46)
  {
    v47 = v46;
    if (v37 && CFBooleanGetValue(v37))
    {
      goto LABEL_44;
    }

    BytePtr = CFDataGetBytePtr(v47);
    v50 = *BytePtr;
    if ((*BytePtr | 2) != 2)
    {
      *a20 = -6682;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        CVPixelBufferBacking::initWithPixelBufferDescription(v50);
      }

      goto LABEL_46;
    }

    if (!BytePtr[1] || !BytePtr[2])
    {
      *a20 = -6682;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        CVPixelBufferBacking::initWithPixelBufferDescription();
      }

      goto LABEL_46;
    }

    v27[138] = v50;
    v51 = BytePtr[1];
    v27[139] = v51;
    v27[140] = BytePtr[2];
    v27[141] = BytePtr[3];
  }

  else
  {
    v51 = v27[139];
  }

  if (!v51)
  {
    v27[138] = 3;
    v27[139] = _CVPixelBufferStandardMemoryLayout;
    v27[140] = _CVPixelBufferStandardMemoryDispose;
    v27[141] = 0;
  }

  if (a16)
  {
    v52 = CVDictionaryGetIntValueWithDefault(a16, @"WorstCaseBytesPerRow", 0);
    v53 = CVDictionaryGetIntValueWithDefault(a16, @"AdjustableBaseAddressGranularity", 0);
    v54 = CFDictionaryGetValue(a16, @"PixelBufferPoolNameKey");
    if (v54)
    {
      CVBufferBacking::setPoolName(v27, v54);
    }
  }

  else
  {
    v53 = 0;
    v52 = 0;
  }

  v55 = CVDictionaryGetIntValueWithDefault(v32, @"BytesPerRowAlignment", 0);
  if (v55)
  {
    if (DefaultBytesPerRowAlignment >= 0)
    {
      v56 = DefaultBytesPerRowAlignment;
    }

    else
    {
      v56 = -DefaultBytesPerRowAlignment;
    }

    if (v55 >= 0)
    {
      v57 = v55;
    }

    else
    {
      v57 = -v55;
    }

    if (v56 <= v57)
    {
      v58 = v57;
    }

    else
    {
      v58 = v56;
    }

    if (v56 >= v57)
    {
      v56 = v57;
    }

    if (v56)
    {
      v59 = v32;
      if (v56 < 1)
      {
        v60 = v58;
      }

      else
      {
        do
        {
          v60 = v56;
          v56 = v58 % v56;
          v58 = v60;
        }

        while (v56 > 0);
      }
    }

    else
    {
      if (v58 <= 1)
      {
        v60 = 1;
      }

      else
      {
        v60 = v58;
      }

      v59 = v32;
    }

    DefaultBytesPerRowAlignment = v55 * DefaultBytesPerRowAlignment / v60;
  }

  else
  {
    v59 = v32;
  }

  v61 = CVDictionaryGetIntValueWithDefault(v59, @"PlaneAlignment", 0);
  if (v61)
  {
    if (v61 >= 0)
    {
      v62 = v61;
    }

    else
    {
      v62 = -v61;
    }

    if (v39 <= v62)
    {
      v63 = v62;
    }

    else
    {
      v63 = v39;
    }

    if (v61)
    {
      v64 = v32;
      if (v62 < 1)
      {
        v66 = v63;
      }

      else
      {
        if (v39 >= v62)
        {
          v65 = v62;
        }

        else
        {
          v65 = v39;
        }

        do
        {
          v66 = v65;
          v65 = v63 % v65;
          v63 = v66;
        }

        while (v65 > 0);
      }
    }

    else
    {
      if (v63 <= 1)
      {
        v66 = 1;
      }

      else
      {
        v66 = v63;
      }

      v64 = v32;
    }

    v39 = v61 * v39 / v66;
  }

  else
  {
    v64 = v32;
  }

  if (v39 >= 0)
  {
    v67 = v39;
  }

  else
  {
    v67 = -v39;
  }

  if (DefaultBytesPerRowAlignment >= 0)
  {
    v68 = DefaultBytesPerRowAlignment;
  }

  else
  {
    v68 = -DefaultBytesPerRowAlignment;
  }

  if (v67 <= v68)
  {
    v69 = v68;
  }

  else
  {
    v69 = v67;
  }

  if (v67 >= v68)
  {
    v67 = v68;
  }

  if (v67)
  {
    if (v67 < 1)
    {
      v70 = v69;
    }

    else
    {
      do
      {
        v70 = v67;
        v67 = v69 % v67;
        v69 = v70;
      }

      while (v67 > 0);
    }
  }

  else if (v69 <= 1)
  {
    v70 = 1;
  }

  else
  {
    v70 = v69;
  }

  v71 = v39 * DefaultBytesPerRowAlignment / v70;
  if (a18 == 0)
  {
    if (v71 >= 0)
    {
      v72 = v39 * DefaultBytesPerRowAlignment / v70;
    }

    else
    {
      v72 = -v71;
    }

    if (v72 <= 512)
    {
      v73 = 512;
    }

    else
    {
      v73 = v72;
    }

    if (v72 < 1)
    {
      v75 = v73;
    }

    else
    {
      if (v72 >= 0x200)
      {
        v74 = 512;
      }

      else
      {
        v74 = v72;
      }

      do
      {
        v75 = v74;
        v74 = v73 % v74;
        v73 = v75;
      }

      while (v74);
    }

    v71 = (v71 << 9) / v75;
  }

  v76 = v27[138];
  v77 = v71;
  v78 = v27[139];
  v79 = v27[141];
  v80 = v27[137];
  v81 = v27[22];
  v82 = v27[23];
  v83 = v27[131];
  v84 = v27[133];
  v85 = (v27 + 56);
  v86 = v27[132];
  v87 = v27[134];
  v88 = (v27 + 130);
  if (v76 == 2)
  {
    v118 = v27 + 40;
    v119 = v27 + 142;
    v116 = v27 + 130;
    v117 = v27 + 24;
    v114 = v27 + 126;
    v115 = v27 + 129;
    v113 = v27 + 56;
  }

  else
  {
    if (v76 != 3)
    {
      v89 = v78(v79, v80, v124, v81, v82, v83, v84, v86, v87, DefaultBytesPerRowAlignment, v52, v53, v27 + 56, v27 + 126, v27 + 129, v27 + 130, v27 + 24, v27 + 40, v27 + 142);
      goto LABEL_147;
    }

    v122 = a19;
    v123 = v27 + 142;
    v121 = v27 + 59;
    v119 = v27 + 57;
    v120 = a18;
    v117 = v27 + 24;
    v118 = v27 + 40;
    v115 = v27 + 129;
    v116 = v27 + 130;
    v113 = v27 + 56;
    v114 = v27 + 126;
  }

  v89 = (v78)(v79, v80, v64, a16, 0, v124, v81, v82, v83, v84, v86, v87, DefaultBytesPerRowAlignment, v77, v52, v53, v113, v114, v115, v116, v117, v118, v119, v120, *(&v120 + 1), v121, v122, v123);
LABEL_147:
  *a20 = v89;
  v90 = v27[57];
  if (v90)
  {
    if ((v91 = v27[131]) == 0 && !v27[133] && !v27[132] && !v27[134] || (setIOSurfaceIntValue(v90, @"ExtendedPixelsLeft", v91), setIOSurfaceIntValue(v27[57], @"ExtendedPixelsRight", *(v27 + 264)), setIOSurfaceIntValue(v27[57], @"ExtendedPixelsTop", *(v27 + 266)), setIOSurfaceIntValue(v27[57], @"ExtendedPixelsBottom", *(v27 + 268)), v27[57]))
    {
      v92 = *MEMORY[0x1E695E4D0];
      if (v92 == CFDictionaryGetValue(v32, @"IOSurfaceWiringAssertion"))
      {
        *(v27 + 122) |= 2u;
      }
    }
  }

  if (!*a20)
  {
    if (*v88)
    {
      if (!v27[57])
      {
        v102 = *v85;
        v103 = CFDictionaryGetValue(v124, @"Planes");
        if (*v88)
        {
          v104 = v103;
          v105 = 0;
          v106 = v27 + 62;
          v107 = (v102 + 4);
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v104, v105);
            v109 = CVDictionaryGetIntValueWithDefault(ValueAtIndex, @"BitsPerBlock", 0);
            v110 = CVDictionaryGetIntValueWithDefault(ValueAtIndex, @"BlockWidth", 1);
            *v106 = bswap32(*(v107 - 1)) + *v85;
            v111 = *v107;
            v107 += 2;
            v112 = bswap32(v111);
            v106[16] = v112;
            v106[32] = 8 * v112 / (v109 / v110);
            v106[48] = v109 / v110;
            ++v105;
            ++v106;
          }

          while (v105 < *v88);
        }
      }
    }
  }

LABEL_156:
  v93 = v126 / v125;
  if (v125 <= v126)
  {
    v94 = 8 * v27[126] / v93;
  }

  else
  {
    v94 = 0;
  }

  v27[127] = v94;
  v27[128] = v93;
  if (*a20)
  {
    goto LABEL_46;
  }

  if ((v27[146] & 1) == 0)
  {
    v95 = *(v27 + 118);
    v96 = *(v27 + 122);
    pthread_once(&shouldTraceBackingSummary(void)::once, initPixelBufferBackingSummary);
    if (gPixelBufferBackingSummaryBag)
    {
      v97 = (*(*v27 + 34))(v27);
      v98 = (*(*v27 + 35))(v27);
      v99 = (*(*v27 + 24))(v27);
      v100 = (*(*v27 + 38))(v27);
      PoolName = CVBufferBacking::getPoolName(v27);
      addBackingSummaryToGlobalBagAndTrace(v97, v98, v99, v100, v95, v96, PoolName);
    }

    *(v27 + 1169) = 1;
  }

  return v27;
}

void CVTracePoolAction(int a1, void *a2, void **a3, const char *a4, uint64_t a5, uint64_t a6)
{
  v31 = *MEMORY[0x1E69E9840];
  if (!CVTracePools(a1))
  {
    goto LABEL_24;
  }

  v24 = 0;
  v25 = 0;
  v23 = 0;
  __str[0] = 0;
  v29[0] = 0;
  v28[0] = 0;
  if (a2)
  {
    v11 = a2[2];
    if (v11 && (*(*v11 + 88))(v11))
    {
      v12 = (*(*a2[2] + 88))(a2[2]);
      CFStringGetCString(v12, buffer, 128, 0x600u);
      asprintf(&v23, " (%s)", buffer);
      v13 = v23;
    }

    else
    {
      v13 = 0;
    }

    if (!v13)
    {
      v13 = "";
    }

    asprintf(&v24, " pool %p%s:", a2, v13);
  }

  if (a3)
  {
    snprintf(__str, 0x20uLL, " backing %p", a3);
    v14 = (*(*a3[2] + 160))(a3[2]);
    if (v14)
    {
      v15 = v14;
      ID = IOOrEXSurfaceGetID(v14);
      *buffer = xmmword_19D17B470;
      v27 = unk_19D17B480;
      v17 = IOSurfaceCopyValue(v15, *MEMORY[0x1E696CF98]);
      if (!v17)
      {
        snprintf(v29, 0x40uLL, " (IOSurface ID 0x%llx (%s))", ID, buffer);
        if (!a2)
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }

      v18 = v17;
      v19 = CFGetTypeID(v17);
      if (v19 == CFStringGetTypeID())
      {
        CFStringGetCString(v18, buffer, 32, 0);
      }

      snprintf(v29, 0x40uLL, " (IOSurface ID 0x%llx (%s))", ID, buffer);
      CFRelease(v18);
    }
  }

  if (a2)
  {
LABEL_17:
    snprintf(v28, 0x40uLL, " [now %ld in pool: %ld in use, %ld free]", a6 + a5, a5, a6);
  }

LABEL_18:
  v20 = v24;
  if (!v24)
  {
    v20 = "";
  }

  asprintf(&v25, "CoreVideo:%s%s%s %s%s", v20, __str, v29, a4, v28);
  v21 = v25;
  if (v25 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buffer = 136315138;
    *&buffer[4] = v21;
    _os_log_impl(&dword_19D11B000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s", buffer, 0xCu);
    v21 = v25;
  }

  free(v21);
  free(v24);
  free(v23);
LABEL_24:
  v22 = *MEMORY[0x1E69E9840];
}

uint64_t CVTracePools(int a1)
{
  v10 = *MEMORY[0x1E69E9840];
  keyExistsAndHasValidFormat = 0;
  if ((CVTracePools(int)::sDidCheck & 1) == 0)
  {
    AppBooleanValue = CFPreferencesGetAppBooleanValue(@"pools_trace", @"com.apple.corevideo", 0);
    CVTracePools(int)::sTracePools = AppBooleanValue != 0;
    if (AppBooleanValue)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v9 = "CoreVideo: will trace pool activity -- thank you for setting defaults write com.apple.corevideo pools_trace -BOOL YES";
        _os_log_impl(&dword_19D11B000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
      }

      AppIntegerValue = CFPreferencesGetAppIntegerValue(@"pools_trace_level", @"com.apple.corevideo", &keyExistsAndHasValidFormat);
      if (keyExistsAndHasValidFormat)
      {
        v4 = AppIntegerValue;
      }

      else
      {
        v4 = 3;
      }

      CVTracePools(int)::sTraceLevel = v4;
    }

    CVTracePools(int)::sDidCheck = 1;
  }

  if (CVTracePools(int)::sTraceLevel >= a1)
  {
    result = CVTracePools(int)::sTracePools;
  }

  else
  {
    result = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

CFTypeRef *CVImageBuffer::init(CFTypeRef *this)
{
  if (CVBuffer::init(this))
  {
    return this;
  }

  else
  {
    return 0;
  }
}

void CVBuffer::CVBuffer(CVBuffer *this, const void *a2)
{
  CVObject::CVObject(this, a2);
  *v2 = &unk_1F1087B80;
  v2[10] = 0;
  v2[11] = 0;
}

const void *CVGetIOSurfacePropertyKeyForCVBufferAttachmentKey(const __CFString *a1)
{
  pthread_once(&intializeAndGetIOSurfaceTranslationDictionaries(__CFDictionary const**,__CFDictionary const**)::once, initCVBufferKeyToIOSurfaceKeyDictionary);
  if (!a1)
  {
    return 0;
  }

  v2 = cvBufferKeyToIOSurfaceKeyDictionary;

  return CFDictionaryGetValue(v2, a1);
}

void IOOrEXSurfaceIncrementUseCount(IOSurfaceRef buffer)
{
  if (buffer)
  {
    IOSurfaceIncrementUseCount(buffer);
  }
}

CFTypeRef *CVBuffer::init(CFTypeRef *this)
{
  v1 = this;
  v9 = *MEMORY[0x1E69E9840];
  v2 = CFGetAllocator(this[1]);
  pthread_mutexattr_init(&v8);
  pthread_mutexattr_settype(&v8, 2);
  pthread_mutex_init((v1 + 2), &v8);
  pthread_mutexattr_destroy(&v8);
  v3 = MEMORY[0x1E695E528];
  v4 = MEMORY[0x1E695E9E8];
  v1[10] = CFDictionaryCreateMutable(v2, 0, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
  Mutable = CFDictionaryCreateMutable(v2, 0, v3, v4);
  v1[11] = Mutable;
  if (!v1[10] || !Mutable)
  {
    (*(*v1 + 5))(v1);
    v1 = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
  return v1;
}

uint64_t CVDictionaryGetIntInArrayWithDefault(const void *a1, const void *a2, CFIndex a3, uint64_t a4)
{
  v4 = a4;
  valuePtr = a4;
  if (a1)
  {
    v8 = CFGetTypeID(a1);
    TypeID = CFDictionaryGetTypeID();
    if (a2)
    {
      if (v8 == TypeID)
      {
        Value = CFDictionaryGetValue(a1, a2);
        if (Value)
        {
          v11 = Value;
          v12 = CFGetTypeID(Value);
          v13 = CFArrayGetTypeID();
          if ((a3 & 0x8000000000000000) == 0 && v12 == v13 && CFArrayGetCount(v11) > a3)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v11, a3);
            if (ValueAtIndex)
            {
              v15 = ValueAtIndex;
              v16 = CFGetTypeID(ValueAtIndex);
              if (v16 == CFNumberGetTypeID())
              {
                CFNumberGetValue(v15, kCFNumberLongType, &valuePtr);
                return valuePtr;
              }
            }
          }
        }
      }
    }
  }

  return v4;
}

CVBufferBacking *CVBufferBacking::init(CVBufferBacking *this)
{
  v5 = *MEMORY[0x1E69E9840];
  pthread_mutexattr_init(&v4);
  pthread_mutexattr_settype(&v4, 2);
  pthread_mutex_init((this + 24), &v4);
  v2 = *MEMORY[0x1E69E9840];
  return this;
}

uint64_t CVDictionarySetSInt64Value(__CFDictionary *a1, const void *a2, uint64_t a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
  v6 = v5;
  if (a1 && v5)
  {
    CFDictionarySetValue(a1, a2, v5);
    v7 = 0;
LABEL_5:
    CFRelease(v6);
    return v7;
  }

  v7 = 4294960634;
  if (v5)
  {
    goto LABEL_5;
  }

  return v7;
}

uint64_t CVDictionaryGetBoolValueWithDefault(const void *a1, const void *a2, uint64_t a3)
{
  if (a1)
  {
    v6 = CFGetTypeID(a1);
    TypeID = CFDictionaryGetTypeID();
    if (a2)
    {
      if (v6 == TypeID)
      {
        Value = CFDictionaryGetValue(a1, a2);
        if (Value)
        {
          v9 = Value;
          if (CFEqual(Value, *MEMORY[0x1E695E4D0]))
          {
            return 1;
          }

          else if (CFEqual(v9, *MEMORY[0x1E695E4C0]))
          {
            return 0;
          }

          else
          {
            return a3;
          }
        }
      }
    }
  }

  return a3;
}

uint64_t CVPixelBufferBacking::getDefaultBytesPerRowAlignment(CVPixelBufferBacking *this)
{
  if ((CVPixelBufferBacking::getDefaultBytesPerRowAlignment(void)::didCheck & 1) == 0)
  {
    keyExistsAndHasValidFormat = 0;
    AppIntegerValue = CFPreferencesGetAppIntegerValue(@"corevideo_minimum_alignment", @"com.apple.corevideo", &keyExistsAndHasValidFormat);
    if (keyExistsAndHasValidFormat)
    {
      CVPixelBufferBacking::getDefaultBytesPerRowAlignment(void)::result = AppIntegerValue;
    }

    CVPixelBufferBacking::getDefaultBytesPerRowAlignment(void)::didCheck = 1;
  }

  return CVPixelBufferBacking::getDefaultBytesPerRowAlignment(void)::result;
}

void setIntValue(__CFDictionary *a1, const __CFString *a2, int a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  CFDictionarySetValue(a1, a2, v5);
  CFRelease(v5);
}

uint64_t CVDictionarySetSInt32Array(__CFDictionary *a1, const void *a2, char *a3, CFIndex capacity)
{
  if (!capacity)
  {
    return 0;
  }

  v7 = capacity;
  Mutable = CFArrayCreateMutable(0, capacity, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    return 4294960634;
  }

  v9 = Mutable;
  while (1)
  {
    v10 = CFNumberCreate(0, kCFNumberSInt32Type, a3);
    if (!v10)
    {
      break;
    }

    v11 = v10;
    CFArrayAppendValue(v9, v10);
    CFRelease(v11);
    a3 += 4;
    if (!--v7)
    {
      CFDictionarySetValue(a1, a2, v9);
      v12 = 0;
      goto LABEL_10;
    }
  }

  v12 = 4294960634;
LABEL_10:
  CFRelease(v9);
  return v12;
}

void CVIncrementAtomic(atomic_uint *a1)
{
  do
  {
    v2 = *a1;
    v3 = *a1;
    atomic_compare_exchange_strong(a1, &v3, *a1 + 1);
  }

  while (v3 != v2);
}

void *_getCVPixelBuffer(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    if (v2 == CVPixelBufferGetTypeID())
    {
      return v1[2];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void pixelBufferBackingCreateIOSurfaceWiringAssertion(__IOSurface *a1, os_unfair_lock_t lock, uint64_t *a3, int *a4, int a5)
{
  if (!a1)
  {
    return;
  }

  os_unfair_lock_lock(lock);
  if (!*a3 && (*a4 & 0xE) == 2)
  {
    WiringAssertion = IOSurfaceCreateWiringAssertion();
    *a3 = WiringAssertion;
    v11 = *a4;
    if (WiringAssertion)
    {
      *a4 = v11 | 4;
      goto LABEL_14;
    }

LABEL_13:
    *a4 = v11 | 8;
    ID = IOSurfaceGetID(a1);
    syslog(3, "CoreVideo: Failed to create wiring assertion for IOSurface ID 0x%x", ID);
    goto LABEL_14;
  }

  if (a5 && !*a3 && !*a4)
  {
    v12 = IOSurfaceCreateWiringAssertion();
    if (v12)
    {
      CFRelease(v12);
      goto LABEL_14;
    }

    v11 = *a4;
    goto LABEL_13;
  }

LABEL_14:

  os_unfair_lock_unlock(lock);
}

IOSurfaceRef CVPixelBufferGetIOSurface(CVPixelBufferRef pixelBuffer)
{
  result = _getCVPixelBuffer(pixelBuffer);
  if (result)
  {
    v2 = *(**(result + 15) + 152);

    return v2();
  }

  return result;
}

uint64_t copyIOSurfaceAttachment(__IOSurface *a1, const __CFString *a2)
{
  if (!a2)
  {
    return 0;
  }

  if (!_os_feature_enabled_impl() || !CFEqual(a2, *MEMORY[0x1E696CEE0]))
  {
    v5 = 0;
    goto LABEL_10;
  }

  valuePtr = 0;
  v4 = IOSurfaceCopyValue(a1, *MEMORY[0x1E696CEE8]);
  v5 = v4;
  if (!v4 || (v6 = CFGetTypeID(v4), v6 != CFNumberGetTypeID()) || (CFNumberGetValue(v5, kCFNumberSInt32Type, &valuePtr), !valuePtr) || (v7 = CGColorSpaceCreateWithID()) == 0)
  {
LABEL_10:
    v9 = IOSurfaceCopyValue(a1, a2);
    v8 = copyAttachmentDeserializedIfNecessary(a2, v9);
    if (!v5)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v8 = v7;
  v9 = 0;
LABEL_11:
  CFRelease(v5);
LABEL_12:
  if (v9)
  {
    CFRelease(v9);
  }

  return v8;
}

void *_getCVBuffer(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    if (v2 == CVPixelBufferGetTypeID() || v2 == CVDataBufferGetTypeID())
    {
      return v1[2];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

OSType CVPixelBufferGetPixelFormatType(CVPixelBufferRef pixelBuffer)
{
  CVPixelBuffer = _getCVPixelBuffer(pixelBuffer);
  if (CVPixelBuffer)
  {
    v2 = *(*CVPixelBuffer[15] + 192);

    LODWORD(CVPixelBuffer) = v2();
  }

  return CVPixelBuffer;
}

const void *CVPixelBuffer::copyAttachment(CVPixelBuffer *this, const __CFString *a2, CVAttachmentMode *a3)
{
  if (_os_feature_enabled_impl())
  {
    v6 = (*(**(this + 15) + 152))(*(this + 15));
    if (v6)
    {
      v8 = v6;
      v9 = CVGetIOSurfacePropertyKeyForCVBufferAttachmentKey(a2);
      pthread_mutex_lock((this + 16));
      v10 = copyIOSurfaceAttachment(v8, v9);
      if (v10)
      {
        v11 = v10;
        if (a3)
        {
          if (CFEqual(*MEMORY[0x1E696D128], v9))
          {
            *a3 = kCVAttachmentMode_ShouldNotPropagate;
          }

          else
          {
            *a3 = kCVAttachmentMode_ShouldPropagate;
          }
        }

        goto LABEL_18;
      }

      Value = CFDictionaryGetValue(*(this + 11), a2);
      if (Value)
      {
        v11 = Value;
        if (a3)
        {
          *a3 = kCVAttachmentMode_ShouldPropagate;
        }
      }

      else
      {
        v11 = CFDictionaryGetValue(*(this + 10), a2);
        if (!v11)
        {
LABEL_18:
          pthread_mutex_unlock((this + 16));
          return v11;
        }

        if (a3)
        {
          *a3 = kCVAttachmentMode_ShouldNotPropagate;
        }
      }

      CFRetain(v11);
      goto LABEL_18;
    }
  }

  return CVBuffer::copyAttachment(this, a2, a3);
}

CFTypeRef CVBufferCopyAttachment(CVBufferRef buffer, CFStringRef key, CVAttachmentMode *attachmentMode)
{
  result = _getCVBuffer(buffer);
  if (result)
  {
    v4 = *(*result + 80);

    return v4();
  }

  return result;
}

size_t CVPixelBufferGetHeight(CVPixelBufferRef pixelBuffer)
{
  result = _getCVPixelBuffer(pixelBuffer);
  if (result)
  {
    v2 = *(**(result + 120) + 280);

    return v2();
  }

  return result;
}

size_t CVPixelBufferGetWidth(CVPixelBufferRef pixelBuffer)
{
  result = _getCVPixelBuffer(pixelBuffer);
  if (result)
  {
    v2 = *(**(result + 120) + 272);

    return v2();
  }

  return result;
}

CFTypeRef copyAttachmentDeserializedIfNecessary(const __CFString *a1, CFTypeRef cf)
{
  if (cf)
  {
    v4 = CFRetain(cf);
    if (!a1)
    {
      return v4;
    }
  }

  else
  {
    v4 = 0;
    if (!a1)
    {
      return v4;
    }
  }

  v5 = CFEqual(*MEMORY[0x1E696CEE0], a1);
  if (!cf || !v5)
  {
    return v4;
  }

  pthread_mutex_lock(&sCVPixelBufferGlobalCache_Mutex);
  if (sCVPixelBufferGlobalCache_CFPropertyList == cf || sCVPixelBufferGlobalCache_CFPropertyList && CFEqual(sCVPixelBufferGlobalCache_CFPropertyList, cf))
  {
    if (sCVPixelBufferGlobalCache_ColorSpace)
    {
      v6 = CFRetain(sCVPixelBufferGlobalCache_ColorSpace);
      pthread_mutex_unlock(&sCVPixelBufferGlobalCache_Mutex);
      if (!v6)
      {
LABEL_21:
        if (!v4)
        {
          goto LABEL_23;
        }

        goto LABEL_22;
      }

LABEL_20:
      CFRetain(v6);
      goto LABEL_21;
    }
  }

  else
  {
    v7 = CGColorSpaceCreateWithPropertyList(cf);
    if (v7)
    {
      v6 = v7;
      CFRetain(v7);
      if (sCVPixelBufferGlobalCache_ColorSpace)
      {
        CFRelease(sCVPixelBufferGlobalCache_ColorSpace);
      }

      sCVPixelBufferGlobalCache_ColorSpace = v6;
      CFRetain(cf);
      if (sCVPixelBufferGlobalCache_CFPropertyList)
      {
        CFRelease(sCVPixelBufferGlobalCache_CFPropertyList);
      }

      sCVPixelBufferGlobalCache_CFPropertyList = cf;
      pthread_mutex_unlock(&sCVPixelBufferGlobalCache_Mutex);
      goto LABEL_20;
    }
  }

  pthread_mutex_unlock(&sCVPixelBufferGlobalCache_Mutex);
  v6 = 0;
  if (v4)
  {
LABEL_22:
    CFRelease(v4);
  }

LABEL_23:
  if (v6)
  {
    CFRelease(v6);
  }

  return v6;
}

IOSurfaceRef IOOrEXSurfaceGetBytesPerElementOfPlane(IOSurfaceRef buffer, size_t planeIndex)
{
  if (buffer)
  {
    return IOSurfaceGetBytesPerElementOfPlane(buffer, planeIndex);
  }

  return buffer;
}

uint64_t getNumberFromDict(const __CFDictionary *a1, const __CFString *a2, uint64_t a3)
{
  v3 = a3;
  valuePtr = a3;
  if (a1)
  {
    v6 = CFGetTypeID(a1);
    if (v6 == CFDictionaryGetTypeID())
    {
      Value = CFDictionaryGetValue(a1, a2);
      if (Value)
      {
        v8 = Value;
        TypeID = CFNumberGetTypeID();
        if (TypeID == CFGetTypeID(v8))
        {
          CFNumberGetValue(v8, kCFNumberCFIndexType, &valuePtr);
          return valuePtr;
        }
      }
    }
  }

  return v3;
}

IOSurfaceRef IOOrEXSurfaceGetElementWidthOfPlane(IOSurfaceRef buffer, size_t planeIndex)
{
  if (buffer)
  {
    return IOSurfaceGetElementWidthOfPlane(buffer, planeIndex);
  }

  return buffer;
}

CFDictionaryRef CVPixelFormatDescriptionCreateWithPixelFormatType(CFAllocatorRef allocator, OSType pixelFormat)
{
  result = CVPixelFormatDescriptionGetDescriptionWithPixelFormatType(pixelFormat);
  if (result)
  {

    return CFDictionaryCreateCopy(allocator, result);
  }

  return result;
}

uint64_t _CVPixelBufferLayoutPlane(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, unint64_t a9, unint64_t a10, unint64_t a11, unint64_t a12, unint64_t a13, unint64_t a14, unint64_t a15, unint64_t a16, unint64_t a17, unint64_t *a18, unint64_t *a19, unint64_t *a20, unint64_t *a21)
{
  v22 = a15;
  v60 = a8;
  result = 4294960634;
  if (a4)
  {
    if (a2)
    {
      if (a1)
      {
        if (a6)
        {
          if (a7)
          {
            v27 = a12;
            if (a12)
            {
              v58 = 0;
              v56 = 0;
              if (CVRoundToMultipleDidOverflow(a8, a1, &v60))
              {
                return 4294960634;
              }

              if (CVRoundToMultipleDidOverflow(a10, a1, &a10))
              {
                return 4294960634;
              }

              if (CVRoundToMultipleDidOverflow(a9, a2, &a9))
              {
                return 4294960634;
              }

              if (CVRoundToMultipleDidOverflow(a11, a2, &a11))
              {
                return 4294960634;
              }

              if (__CFADD__(a10, v60))
              {
                return 4294960634;
              }

              v31 = a10 + v60;
              if (__CFADD__(a10 + v60, a6))
              {
                return 4294960634;
              }

              v58 = v31 + a6;
              if (CVRoundToMultipleDidOverflow(v31 + a6, a4 * a1, &v58) || CVRoundToMultipleDidOverflow(v58, v27, &v58))
              {
                return 4294960634;
              }

              v32 = a14;
              v33 = (a3 + 7) >> 3;
              v34 = v33 * a4;
              if ((a14 & 0x80000000) == 0)
              {
                v35 = a14;
              }

              else
              {
                v35 = -a14;
              }

              if ((v34 & 0x80000000) == 0)
              {
                v36 = v33 * a4;
              }

              else
              {
                v36 = -v34;
              }

              if (v35 <= v36)
              {
                v37 = v36;
              }

              else
              {
                v37 = v35;
              }

              if (v35 < v36)
              {
                v36 = v35;
              }

              v38 = v58 / a1;
              if (v36)
              {
                if (v36 < 1)
                {
                  v39 = v37;
                }

                else
                {
                  do
                  {
                    v39 = v36;
                    v36 = v37 % v36;
                    v37 = v39;
                  }

                  while (v36 > 0);
                }
              }

              else
              {
                v39 = v37 <= 1 ? 1 : v37;
              }

              if (!is_mul_ok(v33, v38))
              {
                return 4294960634;
              }

              v40 = a17;
              v41 = a14 * v34 / v39;
              v42 = v41;
              v43 = v38 * v33;
              v59 = v38 * v33;
              if (a17)
              {
                if (v43 > a17)
                {
                  return 4294960634;
                }

                v59 = a17;
              }

              else if (CVRoundToMultipleDidOverflow(v43, v41, &v59))
              {
                return 4294960634;
              }

              if (v22)
              {
                if (CVRoundToMultipleDidOverflow(v22, v42, &a15))
                {
                  return 4294960634;
                }

                v44 = v59;
                if (v59 <= a15)
                {
                  v44 = a15;
                }

                v59 = v44;
              }

              if (!v40)
              {
                if (v59 % v34)
                {
                  _CVPixelBufferLayoutPlane();
                }

                if (v59 % v32)
                {
                  _CVPixelBufferLayoutPlane();
                }

                if (v59 % v33)
                {
                  _CVPixelBufferLayoutPlane();
                }
              }

              if (__CFADD__(a11, a9))
              {
                return 4294960634;
              }

              v45 = a11 + a9;
              if (__CFADD__(a11 + a9, a7))
              {
                return 4294960634;
              }

              v57 = v45 + a7;
              v46 = CVRoundToMultipleDidOverflow(v45 + a7, a5 * a2, &v57);
              if (v46 || CVRoundToMultipleDidOverflow(v57, a13, &v57))
              {
                return 4294960634;
              }

              v47 = v57;
              result = 4294960634;
              if (v57 && v58)
              {
                v48 = v60 / a1 * v33;
                if (!CVRoundToMultipleDidOverflow(v48, v32, &v56))
                {
                  v49 = v56;
                  v50 = v57;
                  v51 = v48 >= v56 ? 0 : v32;
                  v52 = v59;
                  *a18 = v59;
                  if (v52 <= ~v51 / v50)
                  {
                    v54 = a20;
                    v53 = a21;
                    v55 = a16;
                    *a19 = *a20 + v49 + a9 * v52;
                    *v54 += v51 + v55 + v52 * (v47 / a2);
                    result = 0;
                    if (v53)
                    {
                      *v53 = a7 / a2 * v52 - v48;
                    }

                    return result;
                  }
                }

                return 4294960634;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t CVRoundToMultipleDidOverflow(uint64_t a1, unint64_t a2, void *a3)
{
  if (!a3)
  {
    return 1;
  }

  if (__CFADD__(a1, a2 - 1))
  {
    return 1;
  }

  v3 = (a1 + a2 - 1) / a2;
  if (!is_mul_ok(v3, a2))
  {
    return 1;
  }

  result = 0;
  *a3 = v3 * a2;
  return result;
}

uint64_t getSubsamplingForIOSurfaceProperty(const __CFDictionary *a1, const __CFDictionary *a2, IOSurfaceSubsampling *a3)
{
  IntValueWithDefault = CVDictionaryGetIntValueWithDefault(a1, @"HorizontalSubsampling", 1);
  v7 = CVDictionaryGetIntValueWithDefault(a1, @"VerticalSubsampling", 1);
  result = CVDictionaryGetBoolValueWithDefault(a2, @"ContainsSenselArray", 0);
  if (IntValueWithDefault == 2 && v7 == 2 && result == 0)
  {
    v13 = kIOSurfaceSubsampling420;
    goto LABEL_19;
  }

  if (IntValueWithDefault == 2 && v7 < 2)
  {
    v13 = kIOSurfaceSubsampling422;
LABEL_19:
    *a3 = v13;
    return result;
  }

  if (IntValueWithDefault == 4 && v7 <= 1)
  {
    v13 = kIOSurfaceSubsampling411;
    goto LABEL_19;
  }

  return result;
}

CFDictionaryRef CVBufferCopyAttachments(CVBufferRef buffer, CVAttachmentMode attachmentMode)
{
  result = _getCVBuffer(buffer);
  if (result)
  {
    v3 = *(*result + 72);

    return v3();
  }

  return result;
}

CFDictionaryRef CVPixelBuffer::copyAttachments(CVPixelBuffer *this, unsigned int a2)
{
  if (_os_feature_enabled_impl())
  {
    context = 0;
    v4 = (*(**(this + 15) + 152))(*(this + 15));
    pthread_mutex_lock((this + 16));
    if (a2 == 1 && v4)
    {
      v5 = IOSurfaceCopyAllValues(v4);
      if (!v5)
      {
        v7 = CVBuffer::copyAttachments(this, 1u);
LABEL_19:
        pthread_mutex_unlock((this + 16));
        return v7;
      }

      v6 = v5;
      context = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      insertColorSpaceIntoDictionaryUsingID(v6, context);
      CFDictionaryApplyFunction(v6, translateIOSurfaceKeyToCoreVideoAttachmentKeyAndStoreIt, &context);
      CVBuffer::setAttachments(this, context, 1u);
      v7 = CVBuffer::copyAttachments(this, 1u);
      CFRelease(v6);
      Mutable = context;
      if (!context)
      {
        goto LABEL_19;
      }
    }

    else
    {
      Mutable = 0;
      if (!a2 && v4)
      {
        v10 = IOSurfaceCopyValue(v4, *MEMORY[0x1E696D128]);
        if (v10 && (v11 = v10, v12 = CFGetTypeID(v10), v12 == CFNumberGetTypeID()))
        {
          Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          context = Mutable;
          CFDictionarySetValue(Mutable, @"ProResRAW_BayerPattern", v11);
          CVBuffer::setAttachments(this, Mutable, 0);
        }

        else
        {
          Mutable = 0;
        }
      }

      v7 = CVBuffer::copyAttachments(this, a2);
      if (!Mutable)
      {
        goto LABEL_19;
      }
    }

    CFRelease(Mutable);
    goto LABEL_19;
  }

  return CVBuffer::copyAttachments(this, a2);
}

void insertColorSpaceIntoDictionaryUsingID(const __CFDictionary *a1, __CFDictionary *a2)
{
  v4 = _os_feature_enabled_impl();
  if (a2)
  {
    if (v4)
    {
      if (CVDictionaryGetIntValueWithDefault(a1, *MEMORY[0x1E696CEE8], 0))
      {
        v5 = CGColorSpaceCreateWithID();
        if (v5)
        {
          v6 = v5;
          CFDictionarySetValue(a2, @"CGColorSpace", v5);

          CFRelease(v6);
        }
      }
    }
  }
}

uint64_t CVBuffer::finalize(CVBuffer *this)
{
  pthread_mutex_destroy((this + 16));
  v2 = *(this + 10);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 11);
  if (v3)
  {
    CFRelease(v3);
  }

  *(this + 10) = 0;
  *(this + 11) = 0;

  return CVObject::finalize(this);
}

uint64_t CVPixelBuffer::setAttachment(uint64_t a1, const __CFString *a2, void *a3, unsigned int a4)
{
  v8 = OUTLINED_FUNCTION_1_2(a1);
  v10 = (*(v9 + 152))(v8);
  v11 = CVGetIOSurfacePropertyKeyForCVBufferAttachmentKey(a2);
  pthread_mutex_lock((a1 + 16));
  Value = CFDictionaryGetValue(*(a1 + 80), a2);
  v13 = Value;
  if (Value)
  {
    CFRetain(Value);
  }

  CFDictionaryRemoveValue(*(a1 + 80), a2);
  v14 = CFDictionaryGetValue(*(a1 + 88), a2);
  v15 = v14;
  if (v14)
  {
    CFRetain(v14);
  }

  CFDictionaryRemoveValue(*(a1 + 88), a2);
  if (!v10 || !v11 || a4 != 1 && !CFEqual(*MEMORY[0x1E696D128], v11))
  {
    CFDictionarySetValue(*(a1 + 80 + 8 * a4), a2, a3);
    goto LABEL_12;
  }

  if (*MEMORY[0x1E696CEE0] == v11)
  {
    TypeID = CGColorSpaceGetTypeID();
    if (TypeID == CFGetTypeID(a3))
    {
      setCGColorSpaceID(v10, a3);
      v16 = CVPixelBufferGlobalCacheCreateOrCopyPropertyListFromColorSpace(a3);
      a3 = v16;
      if (!v16)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

LABEL_12:
    v16 = 0;
    goto LABEL_16;
  }

  v16 = 0;
LABEL_15:
  IOSurfaceSetValue(v10, v11, a3);
LABEL_16:
  if (v13)
  {
    CFRelease(v13);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  return pthread_mutex_unlock((a1 + 16));
}

uint64_t CVPixelBuffer::finalize(CVPixelBuffer *this)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *(this + 15);
  if (v2)
  {
    if (*(v2 + 456))
    {
      v3 = *(v2 + 168);
      if (v3 >= 1)
      {
        snprintf(__str, 0xC8uLL, "Finalizing CVPixelBuffer %p while lock count is %d.", *(this + 1), v3);
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v10 = __str;
          _os_log_impl(&dword_19D11B000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
        }

        v2 = *(this + 15);
      }
    }

    if ((*(*v2 + 160))(v2))
    {
      v4 = 0;
      v5 = 1;
      do
      {
        v6 = v5;
        __str[0] = 0;
        do
        {
          CVDecrementAtomicCounter(this + v4 + 27, __str);
          if (!__str[0])
          {
            break;
          }

          IOSurfaceDecrementUseCountForCategory();
        }

        while (__str[0]);
        v5 = 0;
        v4 = 1;
      }

      while ((v6 & 1) != 0);
    }

    if (*(this + 104) == 1)
    {
      (*(**(this + 15) + 72))(*(this + 15));
    }

    (*(**(this + 15) + 40))(*(this + 15));
    *(this + 15) = 0;
  }

  result = CVImageBuffer::finalize(this);
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void CVBufferBacking::releaseUsage(atomic_uint *this)
{
  CVDecrementAtomic(this + 4);
  if (v2 == 1)
  {
    *(this + 13) = CVGetCurrentHostTime();
    v3 = *(this + 11);
    if (v3 && ((*(*v3 + 176))(v3), *(this + 11)))
    {
      (*(*this + 136))(this);
      (*(**(this + 11) + 72))(*(this + 11), this);
      v4 = *(this + 11);
      if (v4)
      {
        v5 = *(*v4 + 192);

        v5();
      }
    }

    else
    {
      v6 = *(*this + 112);

      v6(this);
    }
  }
}

void CVPixelBufferBacking::releaseUsage(CVPixelBufferBacking *this)
{
  v2 = *(this + 57);
  if (v2)
  {
    IOOrEXSurfaceDecrementUseCount(v2);
  }

  CVBufferBacking::releaseUsage(this);
}

uint64_t CVDecrementAtomicCounter(atomic_uint *a1, BOOL *a2)
{
  do
  {
    result = *a1;
    if (!result)
    {
      break;
    }

    v4 = *a1;
    atomic_compare_exchange_strong(a1, &v4, result - 1);
  }

  while (v4 != result);
  *a2 = result != 0;
  return result;
}

void IOOrEXSurfaceDecrementUseCount(IOSurfaceRef buffer)
{
  if (buffer)
  {
    IOSurfaceDecrementUseCount(buffer);
  }
}

uint64_t classInitialize_CVPixelBufferBacking(void *a1)
{
  result = _CFRuntimeRegisterClass();
  kCVPixelBufferBackingID = result;
  return result;
}

uint64_t areUniversalLossyCompressionFormatsSupported(void)
{
  if ((areUniversalLossyCompressionFormatsSupported(void)::didCheck & 1) == 0 && !disableCompression())
  {
    if (isRunningInAppleVirtualMachine(void)::sCheckOnce != -1)
    {
      _pixelFormatDictionaryInit();
    }

    if (!isRunningInAppleVirtualMachine(void)::isAppleVirtualMachine)
    {
      v0 = MGCopyAnswer();
      if (v0)
      {
        v1 = v0;
        v2 = *MEMORY[0x1E695E4D0];
        if (v2 == CFDictionaryGetValue(v0, @"universal-lossy-buffer-compression"))
        {
          areUniversalLossyCompressionFormatsSupported(void)::result = 1;
        }

        CFRelease(v1);
      }

      if (!areUniversalLossyCompressionFormatsSupported(void)::result)
      {
        keyExistsAndHasValidFormat = 0;
        AppBooleanValue = CFPreferencesGetAppBooleanValue(@"universal-lossy-buffer-compression", @"com.apple.corevideo", &keyExistsAndHasValidFormat);
        if (keyExistsAndHasValidFormat)
        {
          v4 = AppBooleanValue;
          v5 = "enable";
          if (!AppBooleanValue)
          {
            v5 = "disable";
          }

          v6 = "YES";
          if (!AppBooleanValue)
          {
            v6 = "NO";
          }

          syslog(3, "CoreVideo: Will %s universal buffer compression -- thank you for setting defaults write com.apple.corevideo universal-lossy-buffer-compression -BOOL %s\n", v5, v6);
          areUniversalLossyCompressionFormatsSupported(void)::result = v4;
        }
      }

      areUniversalLossyCompressionFormatsSupported(void)::didCheck = 1;
    }
  }

  return areUniversalLossyCompressionFormatsSupported(void)::result;
}

void _pixelFormatDictionaryInit()
{
  dispatch_once(&isRunningInAppleVirtualMachine(void)::sCheckOnce, &__block_literal_global_0);
}

{
  dispatch_once(&isRunningInAppleVirtualMachine(void)::sCheckOnce, &__block_literal_global_0);
}

void registerConstantClassesPixelFormat(const __CFDictionary *a1, const char *a2, void *key, CFDictionaryRef theDict, __CFArray *a5)
{
  v25 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v5 = *MEMORY[0x1E69E9840];

    registerDescriptionWithPixelFormatTypeInPixelFormatDictionaryAndArray(a1, key, theDict, a5);
  }

  else
  {
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
    *__str = 0u;
    v10 = 0u;
    snprintf(__str, 0x100uLL, "Warning: Could not initialize pixel format: %s", a2);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v8 = __str;
      _os_log_impl(&dword_19D11B000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
    }

    v6 = *MEMORY[0x1E69E9840];
  }
}

void registerDescriptionWithPixelFormatTypeInPixelFormatDictionaryAndArray(const __CFDictionary *a1, void *key, CFDictionaryRef theDict, __CFArray *a4)
{
  v6 = key;
  v18 = *MEMORY[0x1E69E9840];
  valuePtr = key;
  v8 = key;
  if (CFDictionaryGetValue(theDict, key))
  {
    if (v6 < 0x65)
    {
      snprintf(__str, 0x80uLL, "Warning: Re-registering an existing pixelformat %d.");
    }

    else
    {
      snprintf(__str, 0x80uLL, "Warning: Re-registering an existing pixelformat %c%c%c%c.");
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v16 = __str;
      _os_log_impl(&dword_19D11B000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
    }
  }

  else
  {
    v9 = *MEMORY[0x1E695E480];
    Copy = CFDictionaryCreateCopy(*MEMORY[0x1E695E480], a1);
    if (Copy)
    {
      v11 = Copy;
      CFDictionarySetValue(theDict, v8, Copy);
      v12 = CFNumberCreate(v9, kCFNumberSInt32Type, &valuePtr);
      v19.length = CFArrayGetCount(a4);
      v19.location = 0;
      if (!CFArrayContainsValue(a4, v19, v12))
      {
        CFArrayAppendValue(a4, v12);
      }

      if (v12)
      {
        CFRelease(v12);
      }

      CFRelease(v11);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

void ___ZL30isRunningInAppleVirtualMachinev_block_invoke()
{
  v1 = 4;
  v0 = sysctlbyname("kern.hv_vmm_present", &isRunningInAppleVirtualMachine(void)::isAppleVirtualMachine, &v1, 0, 0);
  if (v0)
  {
    syslog(3, "sysctlbyname for kern.hv_vmm_present failed with status %d", v0);
  }
}

uint64_t areUniversalCompressionFormatsSupported(void)
{
  if ((areUniversalCompressionFormatsSupported(void)::didCheck & 1) == 0 && !disableCompression())
  {
    if (isRunningInAppleVirtualMachine(void)::sCheckOnce != -1)
    {
      _pixelFormatDictionaryInit();
    }

    if (!isRunningInAppleVirtualMachine(void)::isAppleVirtualMachine)
    {
      v0 = MGCopyAnswer();
      if (v0)
      {
        v1 = v0;
        v2 = *MEMORY[0x1E695E4D0];
        if (v2 == CFDictionaryGetValue(v0, @"universal-buffer-compression"))
        {
          areUniversalCompressionFormatsSupported(void)::result = 1;
        }

        CFRelease(v1);
      }

      areUniversalCompressionFormatsSupported(void)::didCheck = 1;
    }
  }

  return areUniversalCompressionFormatsSupported(void)::result;
}

void fig_ktrace_initialize()
{
  v0 = CFPreferencesCopyAppValue(@"ktrace", @"com.apple.corevideo");
  if (v0)
  {
    v1 = v0;
    v2 = CFGetTypeID(v0);
    if (v2 == CFStringGetTypeID())
    {
      IntValue = CFStringGetIntValue(v1);
      if (IntValue)
      {
        goto LABEL_17;
      }

      IntValue = 1;
      if (CFStringCompare(v1, @"true", 1uLL) == kCFCompareEqualTo)
      {
        goto LABEL_17;
      }

      IntValue = 1;
      if (CFStringCompare(v1, @"yes", 1uLL) == kCFCompareEqualTo)
      {
        goto LABEL_17;
      }

      if (CFStringCompare(v1, @"false", 1uLL) && CFStringCompare(v1, @"no", 1uLL))
      {
        CFStringCompare(v1, @"0", 1uLL);
      }
    }

    else
    {
      v4 = CFGetTypeID(v1);
      if (v4 == CFNumberGetTypeID())
      {
        valuePtr = 0;
        if (CFNumberGetValue(v1, kCFNumberIntType, &valuePtr))
        {
          IntValue = valuePtr;
        }

        else
        {
          IntValue = 0;
        }

        goto LABEL_17;
      }

      v5 = CFGetTypeID(v1);
      if (v5 == CFBooleanGetTypeID())
      {
        IntValue = CFEqual(v1, *MEMORY[0x1E695E4D0]);
LABEL_17:
        CFRelease(v1);
        goto LABEL_18;
      }
    }

    IntValue = 0;
    goto LABEL_17;
  }

  IntValue = 0;
LABEL_18:
  gCVKTraceEnabled = IntValue;
}

void _pixelFormatDictionaryInit(void)
{
  v650 = *MEMORY[0x1E69E9840];
  if ((areHTPCFormatsSupported(void)::didCheck & 1) == 0 && !disableCompression())
  {
    if (isRunningInAppleVirtualMachine(void)::sCheckOnce != -1)
    {
      _pixelFormatDictionaryInit();
    }

    if (!isRunningInAppleVirtualMachine(void)::isAppleVirtualMachine)
    {
      v0 = MGCopyAnswer();
      if (v0)
      {
        v1 = v0;
        v2 = *MEMORY[0x1E695E4D0];
        if (v2 == CFDictionaryGetValue(v0, @"media-compression"))
        {
          areHTPCFormatsSupported(void)::result = 1;
        }

        CFRelease(v1);
      }

      areHTPCFormatsSupported(void)::didCheck = 1;
    }
  }

  v3 = areHTPCFormatsSupported(void)::result;
  if ((areAGXFormatsSupported(void)::didCheck & 1) == 0 && !disableCompression())
  {
    if (isRunningInAppleVirtualMachine(void)::sCheckOnce != -1)
    {
      _pixelFormatDictionaryInit();
    }

    if (!isRunningInAppleVirtualMachine(void)::isAppleVirtualMachine)
    {
      v4 = MGCopyAnswer();
      if (v4)
      {
        v5 = v4;
        v6 = *MEMORY[0x1E695E4D0];
        if (v6 == CFDictionaryGetValue(v4, @"buffer-compression"))
        {
          areAGXFormatsSupported(void)::result = 1;
        }

        if (v6 == CFDictionaryGetValue(v5, @"universal-buffer-compression"))
        {
          areAGXFormatsSupported(void)::result = 1;
        }

        CFRelease(v5);
      }

      areAGXFormatsSupported(void)::didCheck = 1;
    }
  }

  v642 = v3;
  v7 = areAGXFormatsSupported(void)::result;
  v8 = areUniversalCompressionFormatsSupported();
  v645 = areUniversalLossyCompressionFormatsSupported();
  if ((areUniversalMultiSliceFormatsSupported(void)::didCheck & 1) == 0 && !disableCompression())
  {
    if (isRunningInAppleVirtualMachine(void)::sCheckOnce != -1)
    {
      _pixelFormatDictionaryInit();
    }

    if (!isRunningInAppleVirtualMachine(void)::isAppleVirtualMachine)
    {
      v9 = MGCopyAnswer();
      if (v9)
      {
        v10 = v9;
        v11 = *MEMORY[0x1E695E4D0];
        if (v11 == CFDictionaryGetValue(v9, @"universal-multislice-buffer-compression"))
        {
          areUniversalMultiSliceFormatsSupported(void)::result = 1;
        }

        CFRelease(v10);
      }

      if (!areUniversalMultiSliceFormatsSupported(void)::result)
      {
        keyExistsAndHasValidFormat[0] = 0;
        AppBooleanValue = CFPreferencesGetAppBooleanValue(@"universal-multislice-buffer-compression", @"com.apple.corevideo", keyExistsAndHasValidFormat);
        if (keyExistsAndHasValidFormat[0])
        {
          v13 = AppBooleanValue;
          v14 = "enable";
          if (!AppBooleanValue)
          {
            v14 = "disable";
          }

          v15 = "YES";
          if (!AppBooleanValue)
          {
            v15 = "NO";
          }

          syslog(3, "CoreVideo: Will %s universal multi-slice buffer compression -- thank you for setting defaults write com.apple.corevideo universal-multislice-buffer-compression -BOOL %s\n", v14, v15);
          areUniversalMultiSliceFormatsSupported(void)::result = v13;
        }
      }

      areUniversalMultiSliceFormatsSupported(void)::didCheck = 1;
    }
  }

  v644 = areUniversalMultiSliceFormatsSupported(void)::result;
  if ((areUniversalpARGB10101010FormatsSupported(void)::didCheck & 1) == 0 && !disableCompression())
  {
    if (isRunningInAppleVirtualMachine(void)::sCheckOnce != -1)
    {
      _pixelFormatDictionaryInit();
    }

    if (!isRunningInAppleVirtualMachine(void)::isAppleVirtualMachine)
    {
      v16 = MGCopyAnswer();
      if (v16)
      {
        v17 = v16;
        v18 = *MEMORY[0x1E695E4D0];
        if (v18 == CFDictionaryGetValue(v16, @"universal-pARGB10101010-buffer-compression"))
        {
          areUniversalpARGB10101010FormatsSupported(void)::result = 1;
        }

        CFRelease(v17);
      }

      if (!areUniversalpARGB10101010FormatsSupported(void)::result)
      {
        keyExistsAndHasValidFormat[0] = 0;
        v19 = CFPreferencesGetAppBooleanValue(@"universal-pARGB10101010-buffer-compression", @"com.apple.corevideo", keyExistsAndHasValidFormat);
        if (keyExistsAndHasValidFormat[0])
        {
          v20 = v19;
          v21 = "enable";
          if (!v19)
          {
            v21 = "disable";
          }

          v22 = "YES";
          if (!v19)
          {
            v22 = "NO";
          }

          syslog(3, "CoreVideo: Will %s universal pARGB10101010 buffer compression -- thank you for setting defaults write com.apple.corevideo universal-pARGB10101010-buffer-compression -BOOL %s\n", v21, v22);
          areUniversalpARGB10101010FormatsSupported(void)::result = v20;
        }
      }

      areUniversalpARGB10101010FormatsSupported(void)::didCheck = 1;
    }
  }

  v643 = areUniversalpARGB10101010FormatsSupported(void)::result;
  v23 = v7 ^ 1;
  if (v8)
  {
    v23 = 1;
  }

  v646 = v23;
  v647 = v8;
  if (arePackedFormatsSupported(void)::didCheck == 1)
  {
    v641 = arePackedFormatsSupported(void)::result;
  }

  else
  {
    if (isRunningInAppleVirtualMachine(void)::sCheckOnce != -1)
    {
      _pixelFormatDictionaryInit();
    }

    v641 = isRunningInAppleVirtualMachine(void)::isAppleVirtualMachine == 0;
    arePackedFormatsSupported(void)::result = isRunningInAppleVirtualMachine(void)::isAppleVirtualMachine == 0;
    arePackedFormatsSupported(void)::didCheck = 1;
  }

  v24 = *MEMORY[0x1E695E480];
  v25 = MEMORY[0x1E695E9E8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 400, 0, MEMORY[0x1E695E9E8]);
  v27 = CFArrayCreateMutable(v24, 400, MEMORY[0x1E695E9C0]);
  v28 = CFDictionaryCreateMutable(v24, 0, MEMORY[0x1E695E9D8], v25);
  if (doesThisDeviceSupportOpenGLES(void)::didCheck)
  {
    if ((doesThisDeviceSupportOpenGLES(void)::supportOpenGLES & 1) == 0)
    {
      v29 = sGlobalVariantBitfield;
      goto LABEL_69;
    }
  }

  else
  {
    doesThisDeviceSupportOpenGLES(void)::supportOpenGLES = 1;
    doesThisDeviceSupportOpenGLES(void)::didCheck = 1;
  }

  v29 = sGlobalVariantBitfield | 1;
  sGlobalVariantBitfield |= 1u;
LABEL_69:
  PixelFormat_kCVPixelFormatType_OneComponent8 = retrievePixelFormat_kCVPixelFormatType_OneComponent8(v29);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_OneComponent8, "kCVPixelFormatType_OneComponent8", 0x4C303038, Mutable, v27);
  CFDictionaryRemoveAllValues(v28);
  cleanupContentsOfArrayOfVariants();
  if (doesThisDeviceSupportOpenGLES(void)::didCheck)
  {
    if ((doesThisDeviceSupportOpenGLES(void)::supportOpenGLES & 1) == 0)
    {
      v31 = sGlobalVariantBitfield;
      goto LABEL_74;
    }
  }

  else
  {
    doesThisDeviceSupportOpenGLES(void)::supportOpenGLES = 1;
    doesThisDeviceSupportOpenGLES(void)::didCheck = 1;
  }

  v31 = sGlobalVariantBitfield | 1;
  sGlobalVariantBitfield |= 1u;
LABEL_74:
  PixelFormat_kCVPixelFormatType_OneComponent16 = retrievePixelFormat_kCVPixelFormatType_OneComponent16(v31);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_OneComponent16, "kCVPixelFormatType_OneComponent16", 0x4C303136, Mutable, v27);
  CFDictionaryRemoveAllValues(v28);
  cleanupContentsOfArrayOfVariants();
  if (doesThisDeviceSupportOpenGLES(void)::didCheck)
  {
    if ((doesThisDeviceSupportOpenGLES(void)::supportOpenGLES & 1) == 0)
    {
      v33 = sGlobalVariantBitfield;
      goto LABEL_79;
    }
  }

  else
  {
    doesThisDeviceSupportOpenGLES(void)::supportOpenGLES = 1;
    doesThisDeviceSupportOpenGLES(void)::didCheck = 1;
  }

  v33 = sGlobalVariantBitfield | 2;
  sGlobalVariantBitfield |= 2u;
LABEL_79:
  PixelFormat_kCVPixelFormatType_OneComponent16Half = retrievePixelFormat_kCVPixelFormatType_OneComponent16Half(v33);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_OneComponent16Half, "kCVPixelFormatType_OneComponent16Half", 0x4C303068, Mutable, v27);
  CFDictionaryRemoveAllValues(v28);
  cleanupContentsOfArrayOfVariants();
  if (doesThisDeviceSupportOpenGLES(void)::didCheck)
  {
    if ((doesThisDeviceSupportOpenGLES(void)::supportOpenGLES & 1) == 0)
    {
      v35 = sGlobalVariantBitfield;
      goto LABEL_84;
    }
  }

  else
  {
    doesThisDeviceSupportOpenGLES(void)::supportOpenGLES = 1;
    doesThisDeviceSupportOpenGLES(void)::didCheck = 1;
  }

  v35 = sGlobalVariantBitfield | 4;
LABEL_84:
  sGlobalVariantBitfield = v35 | 8;
  PixelFormat_kCVPixelFormatType_DisparityFloat16 = retrievePixelFormat_kCVPixelFormatType_DisparityFloat16(v35 | 8u);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_DisparityFloat16, "kCVPixelFormatType_DisparityFloat16", 0x68646973, Mutable, v27);
  PixelFormat_kCVPixelFormatType_DepthFloat16 = retrievePixelFormat_kCVPixelFormatType_DepthFloat16(sGlobalVariantBitfield);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_DepthFloat16, "kCVPixelFormatType_DepthFloat16", 0x68646570, Mutable, v27);
  CFDictionaryRemoveAllValues(v28);
  cleanupContentsOfArrayOfVariants();
  if (doesThisDeviceSupportOpenGLES(void)::didCheck)
  {
    if ((doesThisDeviceSupportOpenGLES(void)::supportOpenGLES & 1) == 0)
    {
      v38 = sGlobalVariantBitfield;
      goto LABEL_89;
    }
  }

  else
  {
    doesThisDeviceSupportOpenGLES(void)::supportOpenGLES = 1;
    doesThisDeviceSupportOpenGLES(void)::didCheck = 1;
  }

  v38 = sGlobalVariantBitfield | 4;
LABEL_89:
  sGlobalVariantBitfield = v38 | 8;
  PixelFormat_kCVPixelFormatType_DisparityFloat32 = retrievePixelFormat_kCVPixelFormatType_DisparityFloat32(v38 | 8u);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_DisparityFloat32, "kCVPixelFormatType_DisparityFloat32", 0x66646973, Mutable, v27);
  *keyExistsAndHasValidFormat = 1717855600;
  v40 = CFNumberCreate(v24, kCFNumberSInt32Type, keyExistsAndHasValidFormat);
  CFDictionarySetValue(v28, @"PixelFormat", v40);
  CFRelease(v40);
  PixelFormat_kCVPixelFormatType_DepthFloat32 = retrievePixelFormat_kCVPixelFormatType_DepthFloat32(sGlobalVariantBitfield);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_DepthFloat32, "kCVPixelFormatType_DepthFloat32", 0x66646570, Mutable, v27);
  CFDictionaryRemoveAllValues(v28);
  cleanupContentsOfArrayOfVariants();
  if (doesThisDeviceSupportOpenGLES(void)::didCheck)
  {
    if ((doesThisDeviceSupportOpenGLES(void)::supportOpenGLES & 1) == 0)
    {
      v42 = sGlobalVariantBitfield;
      goto LABEL_94;
    }
  }

  else
  {
    doesThisDeviceSupportOpenGLES(void)::supportOpenGLES = 1;
    doesThisDeviceSupportOpenGLES(void)::didCheck = 1;
  }

  v42 = sGlobalVariantBitfield | 1;
LABEL_94:
  sGlobalVariantBitfield = v42 | 0x10;
  v43 = areHTPCFormatsSupportedByCA();
  v44 = sGlobalVariantBitfield;
  if (v43)
  {
    v44 = sGlobalVariantBitfield | 0x20;
    sGlobalVariantBitfield |= 0x20u;
  }

  PixelFormat_kCVPixelFormatType_32BGRA = retrievePixelFormat_kCVPixelFormatType_32BGRA(v44);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_32BGRA, "kCVPixelFormatType_32BGRA", 0x42475241, Mutable, v27);
  CFDictionaryRemoveAllValues(v28);
  cleanupContentsOfArrayOfVariants();
  sGlobalVariantBitfield |= 1u;
  v46 = areHTPCFormatsSupportedByCA();
  v47 = sGlobalVariantBitfield;
  if (v46)
  {
    v47 = sGlobalVariantBitfield | 2;
    sGlobalVariantBitfield |= 2u;
  }

  PixelFormat_kCVPixelFormatType_RGBPlanarHalf = retrievePixelFormat_kCVPixelFormatType_RGBPlanarHalf(v47);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_RGBPlanarHalf, "kCVPixelFormatType_RGBPlanarHalf", 0x72673368, Mutable, v27);
  cleanupContentsOfArrayOfVariants();
  PixelFormat_kCVPixelFormatType_32ARGB = retrievePixelFormat_kCVPixelFormatType_32ARGB(sGlobalVariantBitfield);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_32ARGB, "kCVPixelFormatType_32ARGB", 0x20, Mutable, v27);
  CFDictionaryRemoveAllValues(v28);
  cleanupContentsOfArrayOfVariants();
  PixelFormat_kCVPixelFormatType_24RGB = retrievePixelFormat_kCVPixelFormatType_24RGB(sGlobalVariantBitfield);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_24RGB, "kCVPixelFormatType_24RGB", 0x18, Mutable, v27);
  CFDictionaryRemoveAllValues(v28);
  cleanupContentsOfArrayOfVariants();
  PixelFormat_kCVPixelFormatType_16BE555 = retrievePixelFormat_kCVPixelFormatType_16BE555(sGlobalVariantBitfield);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_16BE555, "kCVPixelFormatType_16BE555", 0x10, Mutable, v27);
  CFDictionaryRemoveAllValues(v28);
  cleanupContentsOfArrayOfVariants();
  if (doesThisDeviceSupportOpenGLES(void)::didCheck)
  {
    if ((doesThisDeviceSupportOpenGLES(void)::supportOpenGLES & 1) == 0)
    {
      v52 = sGlobalVariantBitfield;
      goto LABEL_103;
    }
  }

  else
  {
    doesThisDeviceSupportOpenGLES(void)::supportOpenGLES = 1;
    doesThisDeviceSupportOpenGLES(void)::didCheck = 1;
  }

  v52 = sGlobalVariantBitfield | 1;
  sGlobalVariantBitfield |= 1u;
LABEL_103:
  PixelFormat_kCVPixelFormatType_16LE565 = retrievePixelFormat_kCVPixelFormatType_16LE565(v52);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_16LE565, "kCVPixelFormatType_16LE565", 0x4C353635, Mutable, v27);
  PixelFormat_kCVPixelFormatType_16LE5551 = retrievePixelFormat_kCVPixelFormatType_16LE5551(sGlobalVariantBitfield);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_16LE5551, "kCVPixelFormatType_16LE5551", 0x35353531, Mutable, v27);
  PixelFormat_kCVPixelFormatType_16LE555 = retrievePixelFormat_kCVPixelFormatType_16LE555(sGlobalVariantBitfield);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_16LE555, "kCVPixelFormatType_16LE555", 0x4C353535, Mutable, v27);
  CFDictionaryRemoveAllValues(v28);
  cleanupContentsOfArrayOfVariants();
  if (doesThisDeviceSupportOpenGLES(void)::didCheck)
  {
    if ((doesThisDeviceSupportOpenGLES(void)::supportOpenGLES & 1) == 0)
    {
      v56 = sGlobalVariantBitfield;
      goto LABEL_108;
    }
  }

  else
  {
    doesThisDeviceSupportOpenGLES(void)::supportOpenGLES = 1;
    doesThisDeviceSupportOpenGLES(void)::didCheck = 1;
  }

  v56 = sGlobalVariantBitfield | 1;
  sGlobalVariantBitfield |= 1u;
LABEL_108:
  PixelFormat_kCVPixelFormatType_422YpCbCr8 = retrievePixelFormat_kCVPixelFormatType_422YpCbCr8(v56);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_422YpCbCr8, "kCVPixelFormatType_422YpCbCr8", 0x32767579, Mutable, v27);
  CFDictionaryRemoveAllValues(v28);
  cleanupContentsOfArrayOfVariants();
  PixelFormat_kCVPixelFormatType_422YpCbCr8FullRange_2vuf = retrievePixelFormat_kCVPixelFormatType_422YpCbCr8FullRange_2vuf(sGlobalVariantBitfield);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_422YpCbCr8FullRange_2vuf, "kCVPixelFormatType_422YpCbCr8FullRange_2vuf", 0x32767566, Mutable, v27);
  CFDictionaryRemoveAllValues(v28);
  cleanupContentsOfArrayOfVariants();
  if (doesThisDeviceSupportOpenGLES(void)::didCheck)
  {
    if ((doesThisDeviceSupportOpenGLES(void)::supportOpenGLES & 1) == 0)
    {
      v59 = sGlobalVariantBitfield;
      goto LABEL_113;
    }
  }

  else
  {
    doesThisDeviceSupportOpenGLES(void)::supportOpenGLES = 1;
    doesThisDeviceSupportOpenGLES(void)::didCheck = 1;
  }

  v59 = sGlobalVariantBitfield | 1;
  sGlobalVariantBitfield |= 1u;
LABEL_113:
  PixelFormat_kCVPixelFormatType_422YpCbCr8_yuvs = retrievePixelFormat_kCVPixelFormatType_422YpCbCr8_yuvs(v59);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_422YpCbCr8_yuvs, "kCVPixelFormatType_422YpCbCr8_yuvs", 0x79757673, Mutable, v27);
  CFDictionaryRemoveAllValues(v28);
  PixelFormat_kCVPixelFormatType_422YpCbCr8FullRange = retrievePixelFormat_kCVPixelFormatType_422YpCbCr8FullRange(sGlobalVariantBitfield);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_422YpCbCr8FullRange, "kCVPixelFormatType_422YpCbCr8FullRange", 0x79757666, Mutable, v27);
  CFDictionaryRemoveAllValues(v28);
  cleanupContentsOfArrayOfVariants();
  PixelFormat_kCVPixelFormatType_8IndexedGray_WhiteIsZero = retrievePixelFormat_kCVPixelFormatType_8IndexedGray_WhiteIsZero(sGlobalVariantBitfield);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_8IndexedGray_WhiteIsZero, "kCVPixelFormatType_8IndexedGray_WhiteIsZero", 0x28, Mutable, v27);
  CFDictionaryRemoveAllValues(v28);
  PixelFormat_kCVPixelFormatType_OneComponent10 = retrievePixelFormat_kCVPixelFormatType_OneComponent10(sGlobalVariantBitfield);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_OneComponent10, "kCVPixelFormatType_OneComponent10", 0x4C303130, Mutable, v27);
  PixelFormat_kCVPixelFormatType_OneComponent12 = retrievePixelFormat_kCVPixelFormatType_OneComponent12(sGlobalVariantBitfield);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_OneComponent12, "kCVPixelFormatType_OneComponent12", 0x4C303132, Mutable, v27);
  CFDictionaryRemoveAllValues(v28);
  PixelFormat_kCVPixelFormatType_OneComponent12LSB = retrievePixelFormat_kCVPixelFormatType_OneComponent12LSB(sGlobalVariantBitfield);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_OneComponent12LSB, "kCVPixelFormatType_OneComponent12LSB", 0x4C31324C, Mutable, v27);
  CFDictionaryRemoveAllValues(v28);
  if (doesThisDeviceSupportOpenGLES(void)::didCheck)
  {
    if ((doesThisDeviceSupportOpenGLES(void)::supportOpenGLES & 1) == 0)
    {
      v66 = sGlobalVariantBitfield;
      goto LABEL_118;
    }
  }

  else
  {
    doesThisDeviceSupportOpenGLES(void)::supportOpenGLES = 1;
    doesThisDeviceSupportOpenGLES(void)::didCheck = 1;
  }

  v66 = sGlobalVariantBitfield | 1;
  sGlobalVariantBitfield |= 1u;
LABEL_118:
  PixelFormat_kCVPixelFormatType_TwoComponent8 = retrievePixelFormat_kCVPixelFormatType_TwoComponent8(v66);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_TwoComponent8, "kCVPixelFormatType_TwoComponent8", 0x32433038, Mutable, v27);
  cleanupContentsOfArrayOfVariants();
  if (doesThisDeviceSupportOpenGLES(void)::didCheck)
  {
    if ((doesThisDeviceSupportOpenGLES(void)::supportOpenGLES & 1) == 0)
    {
      v68 = sGlobalVariantBitfield;
      goto LABEL_123;
    }
  }

  else
  {
    doesThisDeviceSupportOpenGLES(void)::supportOpenGLES = 1;
    doesThisDeviceSupportOpenGLES(void)::didCheck = 1;
  }

  v68 = sGlobalVariantBitfield | 1;
  sGlobalVariantBitfield |= 1u;
LABEL_123:
  PixelFormat_kCVPixelFormatType_TwoComponent16 = retrievePixelFormat_kCVPixelFormatType_TwoComponent16(v68);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_TwoComponent16, "kCVPixelFormatType_TwoComponent16", 0x32433136, Mutable, v27);
  cleanupContentsOfArrayOfVariants();
  PixelFormat_kCVPixelFormatType_LuminanceAlpha8 = retrievePixelFormat_kCVPixelFormatType_LuminanceAlpha8(sGlobalVariantBitfield);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_LuminanceAlpha8, "kCVPixelFormatType_LuminanceAlpha8", 0x4C413038, Mutable, v27);
  PixelFormat_kCVPixelFormatType_LuminanceAlpha16 = retrievePixelFormat_kCVPixelFormatType_LuminanceAlpha16(sGlobalVariantBitfield);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_LuminanceAlpha16, "kCVPixelFormatType_LuminanceAlpha16", 0x4C413136, Mutable, v27);
  PixelFormat_kCVPixelFormatType_ThreeComponent16 = retrievePixelFormat_kCVPixelFormatType_ThreeComponent16(sGlobalVariantBitfield);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_ThreeComponent16, "kCVPixelFormatType_ThreeComponent16", 0x33433136, Mutable, v27);
  PixelFormat_kCVPixelFormatType_FourComponent16 = retrievePixelFormat_kCVPixelFormatType_FourComponent16(sGlobalVariantBitfield);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_FourComponent16, "kCVPixelFormatType_FourComponent16", 0x34433136, Mutable, v27);
  PixelFormat_kCVPixelFormatType_FiveComponent16 = retrievePixelFormat_kCVPixelFormatType_FiveComponent16(sGlobalVariantBitfield);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_FiveComponent16, "kCVPixelFormatType_FiveComponent16", 0x35433136, Mutable, v27);
  PixelFormat_kCVPixelFormatType_SixComponent16 = retrievePixelFormat_kCVPixelFormatType_SixComponent16(sGlobalVariantBitfield);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_SixComponent16, "kCVPixelFormatType_SixComponent16", 0x36433136, Mutable, v27);
  PixelFormat_kCVPixelFormatType_SevenComponent16 = retrievePixelFormat_kCVPixelFormatType_SevenComponent16(sGlobalVariantBitfield);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_SevenComponent16, "kCVPixelFormatType_SevenComponent16", 0x37433136, Mutable, v27);
  PixelFormat_kCVPixelFormatType_EightComponent16 = retrievePixelFormat_kCVPixelFormatType_EightComponent16(sGlobalVariantBitfield);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_EightComponent16, "kCVPixelFormatType_EightComponent16", 0x38433136, Mutable, v27);
  PixelFormat_kCVPixelFormatType_NineComponent16 = retrievePixelFormat_kCVPixelFormatType_NineComponent16(sGlobalVariantBitfield);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_NineComponent16, "kCVPixelFormatType_NineComponent16", 0x39433136, Mutable, v27);
  PixelFormat_kCVPixelFormatType_4444YpCbCrA8R = retrievePixelFormat_kCVPixelFormatType_4444YpCbCrA8R(sGlobalVariantBitfield);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_4444YpCbCrA8R, "kCVPixelFormatType_4444YpCbCrA8R", 0x72343038, Mutable, v27);
  PixelFormat_kCVPixelFormatType_4444YpCbCrA8 = retrievePixelFormat_kCVPixelFormatType_4444YpCbCrA8(sGlobalVariantBitfield);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_4444YpCbCrA8, "kCVPixelFormatType_4444YpCbCrA8", 0x76343038, Mutable, v27);
  PixelFormat_kCVPixelFormatType_4444AYpCbCr8 = retrievePixelFormat_kCVPixelFormatType_4444AYpCbCr8(sGlobalVariantBitfield);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_4444AYpCbCr8, "kCVPixelFormatType_4444AYpCbCr8", 0x79343038, Mutable, v27);
  cleanupContentsOfArrayOfVariants();
  if ((shouldSupporty416ForCoreAnimation(void)::sDidCheck & 1) == 0)
  {
    keyExistsAndHasValidFormat[0] = 0;
    v82 = CFPreferencesGetAppBooleanValue(@"support_ca_y416", @"com.apple.corevideo", keyExistsAndHasValidFormat);
    if (keyExistsAndHasValidFormat[0])
    {
      shouldSupporty416ForCoreAnimation(void)::sShouldSupport16Bit = v82;
      v83 = "enable";
      if (!v82)
      {
        v83 = "disable";
      }

      v84 = "yes";
      if (!v82)
      {
        v84 = "no";
      }

      syslog(3, "CoreVideo: Will %s (y416) YCbCr 16 bit support for CoreAnimation -- thank you for setting defaults write com.apple.corevideo support_ca_y416 -BOOL %s\n", v83, v84);
    }

    shouldSupporty416ForCoreAnimation(void)::sDidCheck = 1;
  }

  v85 = sGlobalVariantBitfield;
  if (shouldSupporty416ForCoreAnimation(void)::sShouldSupport16Bit)
  {
    v85 = sGlobalVariantBitfield | 1;
    sGlobalVariantBitfield |= 1u;
  }

  PixelFormat_kCVPixelFormatType_4444AYpCbCr16 = retrievePixelFormat_kCVPixelFormatType_4444AYpCbCr16(v85);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_4444AYpCbCr16, "kCVPixelFormatType_4444AYpCbCr16", 0x79343136, Mutable, v27);
  cleanupContentsOfArrayOfVariants();
  PixelFormat_kCVPixelFormatType_64ARGB = retrievePixelFormat_kCVPixelFormatType_64ARGB(sGlobalVariantBitfield);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_64ARGB, "kCVPixelFormatType_64ARGB", 0x62363461, Mutable, v27);
  PixelFormat_kCVPixelFormatType_48RGB = retrievePixelFormat_kCVPixelFormatType_48RGB(sGlobalVariantBitfield);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_48RGB, "kCVPixelFormatType_48RGB", 0x62343872, Mutable, v27);
  PixelFormat_kCVPixelFormatType_32AlphaGray = retrievePixelFormat_kCVPixelFormatType_32AlphaGray(sGlobalVariantBitfield);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_32AlphaGray, "kCVPixelFormatType_32AlphaGray", 0x62333261, Mutable, v27);
  PixelFormat_kCVPixelFormatType_16Gray = retrievePixelFormat_kCVPixelFormatType_16Gray(sGlobalVariantBitfield);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_16Gray, "kCVPixelFormatType_16Gray", 0x62313667, Mutable, v27);
  PixelFormat_kCVPixelFormatType_30RGB = retrievePixelFormat_kCVPixelFormatType_30RGB(sGlobalVariantBitfield);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_30RGB, "kCVPixelFormatType_30RGB", 0x5231306B, Mutable, v27);
  PixelFormat_kCVPixelFormatType_30RGBPad2Most = retrievePixelFormat_kCVPixelFormatType_30RGBPad2Most(sGlobalVariantBitfield);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_30RGBPad2Most, "kCVPixelFormatType_30RGBPad2Most", 0x72323130, Mutable, v27);
  PixelFormat_kCVPixelFormatType_444YpCbCr8 = retrievePixelFormat_kCVPixelFormatType_444YpCbCr8(sGlobalVariantBitfield);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_444YpCbCr8, "kCVPixelFormatType_444YpCbCr8", 0x76333038, Mutable, v27);
  if ((shouldSupportv216ForCoreAnimation(void)::sDidCheck & 1) == 0)
  {
    keyExistsAndHasValidFormat[0] = 0;
    v94 = CFPreferencesGetAppBooleanValue(@"support_ca_v216", @"com.apple.corevideo", keyExistsAndHasValidFormat);
    if (keyExistsAndHasValidFormat[0])
    {
      shouldSupportv216ForCoreAnimation(void)::sShouldSupport16Bit = v94;
      v95 = "enable";
      if (!v94)
      {
        v95 = "disable";
      }

      v96 = "yes";
      if (!v94)
      {
        v96 = "no";
      }

      syslog(3, "CoreVideo: Will %s (v216) YCbCr 16 bit 4:2:2 support for CoreAnimation -- thank you for setting defaults write com.apple.corevideo support_ca_v216 -BOOL %s\n", v95, v96);
    }

    shouldSupportv216ForCoreAnimation(void)::sDidCheck = 1;
  }

  v97 = sGlobalVariantBitfield;
  if (shouldSupportv216ForCoreAnimation(void)::sShouldSupport16Bit)
  {
    v97 = sGlobalVariantBitfield | 1;
    sGlobalVariantBitfield |= 1u;
  }

  PixelFormat_kCVPixelFormatType_422YpCbCr16 = retrievePixelFormat_kCVPixelFormatType_422YpCbCr16(v97);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_422YpCbCr16, "kCVPixelFormatType_422YpCbCr16", 0x76323136, Mutable, v27);
  CFDictionaryRemoveAllValues(v28);
  cleanupContentsOfArrayOfVariants();
  PixelFormat_kCVPixelFormatType_422YpCbCr10 = retrievePixelFormat_kCVPixelFormatType_422YpCbCr10(sGlobalVariantBitfield);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_422YpCbCr10, "kCVPixelFormatType_422YpCbCr10", 0x76323130, Mutable, v27);
  CFDictionaryRemoveAllValues(v28);
  PixelFormat_kCVPixelFormatType_444YpCbCr10 = retrievePixelFormat_kCVPixelFormatType_444YpCbCr10(sGlobalVariantBitfield);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_444YpCbCr10, "kCVPixelFormatType_444YpCbCr10", 0x76343130, Mutable, v27);
  cleanupContentsOfArrayOfVariants();
  PixelFormat_kCVPixelFormatType_4444AYpCbCrFloat = retrievePixelFormat_kCVPixelFormatType_4444AYpCbCrFloat(sGlobalVariantBitfield);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_4444AYpCbCrFloat, "kCVPixelFormatType_4444AYpCbCrFloat", 0x7234666C, Mutable, v27);
  cleanupContentsOfArrayOfVariants();
  PixelFormat_kCVPixelFormatType_14Bayer_GRBG = retrievePixelFormat_kCVPixelFormatType_14Bayer_GRBG(sGlobalVariantBitfield);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_14Bayer_GRBG, "kCVPixelFormatType_14Bayer_GRBG", 0x67726234, Mutable, v27);
  PixelFormat_kCVPixelFormatType_14Bayer_RGGB = retrievePixelFormat_kCVPixelFormatType_14Bayer_RGGB(sGlobalVariantBitfield);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_14Bayer_RGGB, "kCVPixelFormatType_14Bayer_RGGB", 0x72676734, Mutable, v27);
  PixelFormat_kCVPixelFormatType_14Bayer_BGGR = retrievePixelFormat_kCVPixelFormatType_14Bayer_BGGR(sGlobalVariantBitfield);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_14Bayer_BGGR, "kCVPixelFormatType_14Bayer_BGGR", 0x62676734, Mutable, v27);
  PixelFormat_kCVPixelFormatType_14Bayer_GBRG = retrievePixelFormat_kCVPixelFormatType_14Bayer_GBRG(sGlobalVariantBitfield);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_14Bayer_GBRG, "kCVPixelFormatType_14Bayer_GBRG", 0x67627234, Mutable, v27);
  v106 = CFPreferencesGetAppBooleanValue(@"disable_420", @"com.apple.corevideo", 0) == 0;
  v107 = calculatePixelFormatVariantBitfieldForBiPlanarFormatOnThisDevice(0, v106);
  PixelFormat_kCVPixelFormatType_420YpCbCr8BiPlanarVideoRange = retrievePixelFormat_kCVPixelFormatType_420YpCbCr8BiPlanarVideoRange(v107);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_420YpCbCr8BiPlanarVideoRange, "kCVPixelFormatType_420YpCbCr8BiPlanarVideoRange", 0x34323076, Mutable, v27);
  v109 = calculatePixelFormatVariantBitfieldForBiPlanarFormatOnThisDevice(0, v106);
  PixelFormat_kCVPixelFormatType_420YpCbCr8BiPlanarFullRange = retrievePixelFormat_kCVPixelFormatType_420YpCbCr8BiPlanarFullRange(v109);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_420YpCbCr8BiPlanarFullRange, "kCVPixelFormatType_420YpCbCr8BiPlanarFullRange", 0x34323066, Mutable, v27);
  if (doesThisDeviceSupportOpenGLES(void)::didCheck)
  {
    if (doesThisDeviceSupportOpenGLES(void)::supportOpenGLES)
    {
      v111 = 0x80000;
    }

    else
    {
      v111 = 0;
    }
  }

  else
  {
    doesThisDeviceSupportOpenGLES(void)::supportOpenGLES = 1;
    doesThisDeviceSupportOpenGLES(void)::didCheck = 1;
    v111 = 0x80000;
  }

  PixelFormat_kCVPixelFormatType_411YpCbCr8BiPlanarVideoRange = retrievePixelFormat_kCVPixelFormatType_411YpCbCr8BiPlanarVideoRange(v111);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_411YpCbCr8BiPlanarVideoRange, "kCVPixelFormatType_411YpCbCr8BiPlanarVideoRange", 0x34313176, Mutable, v27);
  if (doesThisDeviceSupportOpenGLES(void)::didCheck)
  {
    if (doesThisDeviceSupportOpenGLES(void)::supportOpenGLES)
    {
      v113 = 0x80000;
    }

    else
    {
      v113 = 0;
    }
  }

  else
  {
    doesThisDeviceSupportOpenGLES(void)::supportOpenGLES = 1;
    doesThisDeviceSupportOpenGLES(void)::didCheck = 1;
    v113 = 0x80000;
  }

  PixelFormat_kCVPixelFormatType_411YpCbCr8BiPlanarFullRange = retrievePixelFormat_kCVPixelFormatType_411YpCbCr8BiPlanarFullRange(v113);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_411YpCbCr8BiPlanarFullRange, "kCVPixelFormatType_411YpCbCr8BiPlanarFullRange", 0x34313166, Mutable, v27);
  if (doesThisDeviceSupportOpenGLES(void)::didCheck)
  {
    if (doesThisDeviceSupportOpenGLES(void)::supportOpenGLES)
    {
      v115 = 0x80000;
    }

    else
    {
      v115 = 0;
    }
  }

  else
  {
    doesThisDeviceSupportOpenGLES(void)::supportOpenGLES = 1;
    doesThisDeviceSupportOpenGLES(void)::didCheck = 1;
    v115 = 0x80000;
  }

  PixelFormat_kCVPixelFormatType_422YpCbCr8BiPlanarVideoRange = retrievePixelFormat_kCVPixelFormatType_422YpCbCr8BiPlanarVideoRange(v115);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_422YpCbCr8BiPlanarVideoRange, "kCVPixelFormatType_422YpCbCr8BiPlanarVideoRange", 0x34323276, Mutable, v27);
  if (doesThisDeviceSupportOpenGLES(void)::didCheck)
  {
    if (doesThisDeviceSupportOpenGLES(void)::supportOpenGLES)
    {
      v117 = 0x80000;
    }

    else
    {
      v117 = 0;
    }
  }

  else
  {
    doesThisDeviceSupportOpenGLES(void)::supportOpenGLES = 1;
    doesThisDeviceSupportOpenGLES(void)::didCheck = 1;
    v117 = 0x80000;
  }

  PixelFormat_kCVPixelFormatType_422YpCbCr8BiPlanarFullRange = retrievePixelFormat_kCVPixelFormatType_422YpCbCr8BiPlanarFullRange(v117);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_422YpCbCr8BiPlanarFullRange, "kCVPixelFormatType_422YpCbCr8BiPlanarFullRange", 0x34323266, Mutable, v27);
  v119 = calculatePixelFormatVariantBitfieldForBiPlanarFormatOnThisDevice(2, 1);
  PixelFormat_kCVPixelFormatType_444YpCbCr8BiPlanarVideoRange = retrievePixelFormat_kCVPixelFormatType_444YpCbCr8BiPlanarVideoRange(v119);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_444YpCbCr8BiPlanarVideoRange, "kCVPixelFormatType_444YpCbCr8BiPlanarVideoRange", 0x34343476, Mutable, v27);
  v121 = calculatePixelFormatVariantBitfieldForBiPlanarFormatOnThisDevice(2, 1);
  PixelFormat_kCVPixelFormatType_444YpCbCr8BiPlanarFullRange = retrievePixelFormat_kCVPixelFormatType_444YpCbCr8BiPlanarFullRange(v121);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_444YpCbCr8BiPlanarFullRange, "kCVPixelFormatType_444YpCbCr8BiPlanarFullRange", 0x34343466, Mutable, v27);
  if (areHTPCFormatsSupportedByCA())
  {
    v123 = 196608;
  }

  else
  {
    v123 = 0x10000;
  }

  v124 = v123 | 0x80000;
  if (doesThisDeviceSupportOpenGLES(void)::didCheck)
  {
    if ((doesThisDeviceSupportOpenGLES(void)::supportOpenGLES & 1) == 0)
    {
      v124 = v123;
    }
  }

  else
  {
    doesThisDeviceSupportOpenGLES(void)::supportOpenGLES = 1;
    doesThisDeviceSupportOpenGLES(void)::didCheck = 1;
  }

  PixelFormat_kCVPixelFormatType_420YpCbCr8VideoRange_8A_TriPlanar = retrievePixelFormat_kCVPixelFormatType_420YpCbCr8VideoRange_8A_TriPlanar(v124);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_420YpCbCr8VideoRange_8A_TriPlanar, "kCVPixelFormatType_420YpCbCr8VideoRange_8A_TriPlanar", 0x76306138, Mutable, v27);
  PixelFormat_kCVPixelFormatType_420YpCbCr8Planar = retrievePixelFormat_kCVPixelFormatType_420YpCbCr8Planar(sGlobalVariantBitfield);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_420YpCbCr8Planar, "kCVPixelFormatType_420YpCbCr8Planar", 0x79343230, Mutable, v27);
  PixelFormat_kCVPixelFormatType_420YpCbCr8PlanarFullRange = retrievePixelFormat_kCVPixelFormatType_420YpCbCr8PlanarFullRange(sGlobalVariantBitfield);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_420YpCbCr8PlanarFullRange, "kCVPixelFormatType_420YpCbCr8PlanarFullRange", 0x66343230, Mutable, v27);
  PixelFormat_kCVPixelFormatType_422YpCbCr_4A_8BiPlanar = retrievePixelFormat_kCVPixelFormatType_422YpCbCr_4A_8BiPlanar(sGlobalVariantBitfield);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_422YpCbCr_4A_8BiPlanar, "kCVPixelFormatType_422YpCbCr_4A_8BiPlanar", 0x61327679, Mutable, v27);
  CFDictionaryRemoveAllValues(v28);
  if (doesThisDeviceSupportOpenGLES(void)::didCheck)
  {
    if ((doesThisDeviceSupportOpenGLES(void)::supportOpenGLES & 1) == 0)
    {
      v129 = sGlobalVariantBitfield;
      goto LABEL_175;
    }
  }

  else
  {
    doesThisDeviceSupportOpenGLES(void)::supportOpenGLES = 1;
    doesThisDeviceSupportOpenGLES(void)::didCheck = 1;
  }

  v129 = sGlobalVariantBitfield | 2;
LABEL_175:
  sGlobalVariantBitfield = v129 | 4;
  PixelFormat_kCVPixelFormatType_OneComponent32Float = retrievePixelFormat_kCVPixelFormatType_OneComponent32Float(v129 | 4u);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_OneComponent32Float, "kCVPixelFormatType_OneComponent32Float", 0x4C303066, Mutable, v27);
  cleanupContentsOfArrayOfVariants();
  if (doesThisDeviceSupportOpenGLES(void)::didCheck)
  {
    if ((doesThisDeviceSupportOpenGLES(void)::supportOpenGLES & 1) == 0)
    {
      v131 = sGlobalVariantBitfield;
      goto LABEL_180;
    }
  }

  else
  {
    doesThisDeviceSupportOpenGLES(void)::supportOpenGLES = 1;
    doesThisDeviceSupportOpenGLES(void)::didCheck = 1;
  }

  v131 = sGlobalVariantBitfield | 2;
  sGlobalVariantBitfield |= 2u;
LABEL_180:
  PixelFormat_kCVPixelFormatType_TwoComponent16Half = retrievePixelFormat_kCVPixelFormatType_TwoComponent16Half(v131);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_TwoComponent16Half, "kCVPixelFormatType_TwoComponent16Half", 0x32433068, Mutable, v27);
  CFDictionaryRemoveAllValues(v28);
  cleanupContentsOfArrayOfVariants();
  if (doesThisDeviceSupportOpenGLES(void)::didCheck)
  {
    if ((doesThisDeviceSupportOpenGLES(void)::supportOpenGLES & 1) == 0)
    {
      v133 = sGlobalVariantBitfield;
      goto LABEL_185;
    }
  }

  else
  {
    doesThisDeviceSupportOpenGLES(void)::supportOpenGLES = 1;
    doesThisDeviceSupportOpenGLES(void)::didCheck = 1;
  }

  v133 = sGlobalVariantBitfield | 2;
  sGlobalVariantBitfield |= 2u;
LABEL_185:
  PixelFormat_kCVPixelFormatType_TwoComponent32Float = retrievePixelFormat_kCVPixelFormatType_TwoComponent32Float(v133);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_TwoComponent32Float, "kCVPixelFormatType_TwoComponent32Float", 0x32433066, Mutable, v27);
  CFDictionaryRemoveAllValues(v28);
  cleanupContentsOfArrayOfVariants();
  PixelFormat_kCVPixelFormatType_TwoComponentHalfAndOneComponentHalfBiPlanar = retrievePixelFormat_kCVPixelFormatType_TwoComponentHalfAndOneComponentHalfBiPlanar(sGlobalVariantBitfield);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_TwoComponentHalfAndOneComponentHalfBiPlanar, "kCVPixelFormatType_TwoComponentHalfAndOneComponentHalfBiPlanar", 0x32314368, Mutable, v27);
  CFDictionaryRemoveAllValues(v28);
  cleanupContentsOfArrayOfVariants();
  if (doesThisDeviceSupportOpenGLES(void)::didCheck)
  {
    if ((doesThisDeviceSupportOpenGLES(void)::supportOpenGLES & 1) == 0)
    {
      v136 = sGlobalVariantBitfield;
      goto LABEL_190;
    }
  }

  else
  {
    doesThisDeviceSupportOpenGLES(void)::supportOpenGLES = 1;
    doesThisDeviceSupportOpenGLES(void)::didCheck = 1;
  }

  v136 = sGlobalVariantBitfield | 8;
LABEL_190:
  sGlobalVariantBitfield = v136 | 0x10;
  v137 = areHTPCFormatsSupportedByCA();
  v138 = sGlobalVariantBitfield;
  if (v137)
  {
    v138 = sGlobalVariantBitfield | 0x20;
    sGlobalVariantBitfield |= 0x20u;
  }

  PixelFormat_kCVPixelFormatType_64RGBAHalf = retrievePixelFormat_kCVPixelFormatType_64RGBAHalf(v138);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_64RGBAHalf, "kCVPixelFormatType_64RGBAHalf", 0x52476841, Mutable, v27);
  CFDictionaryRemoveAllValues(v28);
  cleanupContentsOfArrayOfVariants();
  if (doesThisDeviceSupportOpenGLES(void)::didCheck)
  {
    if ((doesThisDeviceSupportOpenGLES(void)::supportOpenGLES & 1) == 0)
    {
      v140 = sGlobalVariantBitfield;
      goto LABEL_197;
    }
  }

  else
  {
    doesThisDeviceSupportOpenGLES(void)::supportOpenGLES = 1;
    doesThisDeviceSupportOpenGLES(void)::didCheck = 1;
  }

  v140 = sGlobalVariantBitfield | 8;
LABEL_197:
  sGlobalVariantBitfield = v140 | 0x20;
  PixelFormat_kCVPixelFormatType_128RGBAFloat = retrievePixelFormat_kCVPixelFormatType_128RGBAFloat(v140 | 0x20u);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_128RGBAFloat, "kCVPixelFormatType_128RGBAFloat", 0x52476641, Mutable, v27);
  cleanupContentsOfArrayOfVariants();
  PixelFormat_kCVPixelFormatType_RGBPlanarFloat = retrievePixelFormat_kCVPixelFormatType_RGBPlanarFloat(sGlobalVariantBitfield);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_RGBPlanarFloat, "kCVPixelFormatType_RGBPlanarFloat", 0x72673366, Mutable, v27);
  PixelFormat_kCVPixelFormatType_ARGB2101010LEPacked = retrievePixelFormat_kCVPixelFormatType_ARGB2101010LEPacked(sGlobalVariantBitfield);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_ARGB2101010LEPacked, "kCVPixelFormatType_ARGB2101010LEPacked", 0x6C313072, Mutable, v27);
  if (isCoreAnimation_10BitRGBCapable(void)::didCheck == 1)
  {
    v144 = isCoreAnimation_10BitRGBCapable(void)::result;
  }

  else
  {
    v144 = MGGetBoolAnswer();
    isCoreAnimation_10BitRGBCapable(void)::result = v144;
    isCoreAnimation_10BitRGBCapable(void)::didCheck = 1;
  }

  v145 = sGlobalVariantBitfield;
  if (v144)
  {
    sGlobalVariantBitfield |= 4u;
    v146 = areHTPCFormatsSupportedByCA();
    v145 = sGlobalVariantBitfield;
    if (v146)
    {
      v145 = sGlobalVariantBitfield | 8;
      sGlobalVariantBitfield |= 8u;
    }
  }

  PixelFormat_kCVPixelFormatType_30RGBLEPackedWideGamut = retrievePixelFormat_kCVPixelFormatType_30RGBLEPackedWideGamut(v145);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_30RGBLEPackedWideGamut, "kCVPixelFormatType_30RGBLEPackedWideGamut", 0x77333072, Mutable, v27);
  CFDictionaryRemoveAllValues(v28);
  cleanupContentsOfArrayOfVariants();
  if (isCoreAnimation_10BitYCbCrCapable(void)::didCheck == 1)
  {
    v148 = isCoreAnimation_10BitYCbCrCapable(void)::result;
  }

  else
  {
    v148 = MGGetBoolAnswer();
    isCoreAnimation_10BitYCbCrCapable(void)::result = v148;
    isCoreAnimation_10BitYCbCrCapable(void)::didCheck = 1;
  }

  v149 = sGlobalVariantBitfield;
  if (v148)
  {
    sGlobalVariantBitfield |= 1u;
    v150 = areHTPCFormatsSupportedByCA();
    v149 = sGlobalVariantBitfield;
    if (v150)
    {
      v149 = sGlobalVariantBitfield | 2;
      sGlobalVariantBitfield |= 2u;
    }
  }

  PixelFormat_kCVPixelFormatType_40ARGBLEWideGamut = retrievePixelFormat_kCVPixelFormatType_40ARGBLEWideGamut(v149);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_40ARGBLEWideGamut, "kCVPixelFormatType_40ARGBLEWideGamut", 0x77343061, Mutable, v27);
  cleanupContentsOfArrayOfVariants();
  PixelFormat_kCVPixelFormatType_40ARGBLEWideGamutPremultiplied = retrievePixelFormat_kCVPixelFormatType_40ARGBLEWideGamutPremultiplied(sGlobalVariantBitfield);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_40ARGBLEWideGamutPremultiplied, "kCVPixelFormatType_40ARGBLEWideGamutPremultiplied", 0x7734306D, Mutable, v27);
  CFDictionaryRemoveAllValues(v28);
  if ((doesThisDeviceSupportOpenGLES(void)::didCheck & 1) == 0)
  {
    doesThisDeviceSupportOpenGLES(void)::supportOpenGLES = 1;
    doesThisDeviceSupportOpenGLES(void)::didCheck = 1;
    goto LABEL_213;
  }

  if (doesThisDeviceSupportOpenGLES(void)::supportOpenGLES == 1)
  {
LABEL_213:
    sGlobalVariantBitfield |= 4u;
  }

  if (isCoreAnimation_10BitYCbCrCapable(void)::didCheck == 1)
  {
    v153 = isCoreAnimation_10BitYCbCrCapable(void)::result;
  }

  else
  {
    v153 = MGGetBoolAnswer();
    isCoreAnimation_10BitYCbCrCapable(void)::result = v153;
    isCoreAnimation_10BitYCbCrCapable(void)::didCheck = 1;
  }

  v154 = sGlobalVariantBitfield;
  if (v153)
  {
    sGlobalVariantBitfield |= 8u;
    v155 = areHTPCFormatsSupportedByCA();
    v154 = sGlobalVariantBitfield;
    if (v155)
    {
      v154 = sGlobalVariantBitfield | 0x10;
      sGlobalVariantBitfield |= 0x10u;
    }
  }

  PixelFormat_kCVPixelFormatType_420YpCbCr10BiPlanarVideoRange = retrievePixelFormat_kCVPixelFormatType_420YpCbCr10BiPlanarVideoRange(v154);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_420YpCbCr10BiPlanarVideoRange, "kCVPixelFormatType_420YpCbCr10BiPlanarVideoRange", 0x78343230, Mutable, v27);
  PixelFormat_kCVPixelFormatType_420YpCbCr10BiPlanarFullRange = retrievePixelFormat_kCVPixelFormatType_420YpCbCr10BiPlanarFullRange(sGlobalVariantBitfield);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_420YpCbCr10BiPlanarFullRange, "kCVPixelFormatType_420YpCbCr10BiPlanarFullRange", 0x78663230, Mutable, v27);
  CFDictionaryRemoveAllValues(v28);
  cleanupContentsOfArrayOfVariants();
  if (isCoreAnimation_10BitYCbCrCapable(void)::didCheck == 1)
  {
    v158 = isCoreAnimation_10BitYCbCrCapable(void)::result;
  }

  else
  {
    v158 = MGGetBoolAnswer();
    isCoreAnimation_10BitYCbCrCapable(void)::result = v158;
    isCoreAnimation_10BitYCbCrCapable(void)::didCheck = 1;
  }

  v159 = sGlobalVariantBitfield;
  if (v158)
  {
    sGlobalVariantBitfield |= 1u;
    v160 = areHTPCFormatsSupportedByCA();
    v159 = sGlobalVariantBitfield;
    if (v160)
    {
      v159 = sGlobalVariantBitfield | 2;
      sGlobalVariantBitfield |= 2u;
    }
  }

  PixelFormat_kCVPixelFormatType_422YpCbCr10BiPlanarVideoRange = retrievePixelFormat_kCVPixelFormatType_422YpCbCr10BiPlanarVideoRange(v159);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_422YpCbCr10BiPlanarVideoRange, "kCVPixelFormatType_422YpCbCr10BiPlanarVideoRange", 0x78343232, Mutable, v27);
  PixelFormat_kCVPixelFormatType_444YpCbCr10BiPlanarVideoRange = retrievePixelFormat_kCVPixelFormatType_444YpCbCr10BiPlanarVideoRange(sGlobalVariantBitfield);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_444YpCbCr10BiPlanarVideoRange, "kCVPixelFormatType_444YpCbCr10BiPlanarVideoRange", 0x78343434, Mutable, v27);
  PixelFormat_kCVPixelFormatType_420YpCbCr10BiPlanarWideGamut = retrievePixelFormat_kCVPixelFormatType_420YpCbCr10BiPlanarWideGamut(sGlobalVariantBitfield);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_420YpCbCr10BiPlanarWideGamut, "kCVPixelFormatType_420YpCbCr10BiPlanarWideGamut", 0x78773230, Mutable, v27);
  PixelFormat_kCVPixelFormatType_422YpCbCr10BiPlanarWideGamut = retrievePixelFormat_kCVPixelFormatType_422YpCbCr10BiPlanarWideGamut(sGlobalVariantBitfield);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_422YpCbCr10BiPlanarWideGamut, "kCVPixelFormatType_422YpCbCr10BiPlanarWideGamut", 0x78773232, Mutable, v27);
  PixelFormat_kCVPixelFormatType_444YpCbCr10BiPlanarWideGamut = retrievePixelFormat_kCVPixelFormatType_444YpCbCr10BiPlanarWideGamut(sGlobalVariantBitfield);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_444YpCbCr10BiPlanarWideGamut, "kCVPixelFormatType_444YpCbCr10BiPlanarWideGamut", 0x78773434, Mutable, v27);
  PixelFormat_kCVPixelFormatType_422YpCbCr10BiPlanarFullRange = retrievePixelFormat_kCVPixelFormatType_422YpCbCr10BiPlanarFullRange(sGlobalVariantBitfield);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_422YpCbCr10BiPlanarFullRange, "kCVPixelFormatType_422YpCbCr10BiPlanarFullRange", 0x78663232, Mutable, v27);
  PixelFormat_kCVPixelFormatType_444YpCbCr10BiPlanarFullRange = retrievePixelFormat_kCVPixelFormatType_444YpCbCr10BiPlanarFullRange(sGlobalVariantBitfield);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_444YpCbCr10BiPlanarFullRange, "kCVPixelFormatType_444YpCbCr10BiPlanarFullRange", 0x78663434, Mutable, v27);
  CFDictionaryRemoveAllValues(v28);
  cleanupContentsOfArrayOfVariants();
  if (isCoreAnimation_10BitYCbCrCapable(void)::didCheck == 1)
  {
    v168 = isCoreAnimation_10BitYCbCrCapable(void)::result;
  }

  else
  {
    v168 = MGGetBoolAnswer();
    isCoreAnimation_10BitYCbCrCapable(void)::result = v168;
    isCoreAnimation_10BitYCbCrCapable(void)::didCheck = 1;
  }

  v169 = sGlobalVariantBitfield;
  if (v168)
  {
    sGlobalVariantBitfield |= 2u;
    v170 = areHTPCFormatsSupportedByCA();
    v169 = sGlobalVariantBitfield;
    if (v170)
    {
      v169 = sGlobalVariantBitfield | 4;
      sGlobalVariantBitfield |= 4u;
    }
  }

  PixelFormat_kCVPixelFormatType_444YpCbCr10PackedVideoRange = retrievePixelFormat_kCVPixelFormatType_444YpCbCr10PackedVideoRange(v169);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_444YpCbCr10PackedVideoRange, "kCVPixelFormatType_444YpCbCr10PackedVideoRange", 0x78343470, Mutable, v27);
  PixelFormat_kCVPixelFormatType_444YpCbCr10PackedFullRange = retrievePixelFormat_kCVPixelFormatType_444YpCbCr10PackedFullRange(sGlobalVariantBitfield);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_444YpCbCr10PackedFullRange, "kCVPixelFormatType_444YpCbCr10PackedFullRange", 0x78663470, Mutable, v27);
  CFDictionaryRemoveAllValues(v28);
  cleanupContentsOfArrayOfVariants();
  if (isCoreAnimation_10BitYCbCrCapable(void)::didCheck == 1)
  {
    v173 = isCoreAnimation_10BitYCbCrCapable(void)::result;
  }

  else
  {
    v173 = MGGetBoolAnswer();
    isCoreAnimation_10BitYCbCrCapable(void)::result = v173;
    isCoreAnimation_10BitYCbCrCapable(void)::didCheck = 1;
  }

  v174 = 0x1ED568000;
  v175 = sGlobalVariantBitfield;
  if (v173)
  {
    sGlobalVariantBitfield |= 2u;
    v176 = areHTPCFormatsSupportedByCA();
    v175 = sGlobalVariantBitfield;
    if (v176)
    {
      v175 = sGlobalVariantBitfield | 4;
      sGlobalVariantBitfield |= 4u;
    }
  }

  PixelFormat_kCVPixelFormatType_444YpCbCr10PackedWideGamut = retrievePixelFormat_kCVPixelFormatType_444YpCbCr10PackedWideGamut(v175);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_444YpCbCr10PackedWideGamut, "kCVPixelFormatType_444YpCbCr10PackedWideGamut", 0x78773470, Mutable, v27);
  CFDictionaryRemoveAllValues(v28);
  cleanupContentsOfArrayOfVariants();
  PixelFormat_kCVPixelFormatType_422YpCbCr10PackedVideoRange = retrievePixelFormat_kCVPixelFormatType_422YpCbCr10PackedVideoRange(sGlobalVariantBitfield);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_422YpCbCr10PackedVideoRange, "kCVPixelFormatType_422YpCbCr10PackedVideoRange", 0x78323270, Mutable, v27);
  CFDictionaryRemoveAllValues(v28);
  PixelFormat_kCVPixelFormatType_422YpCbCr10PackedFullRange = retrievePixelFormat_kCVPixelFormatType_422YpCbCr10PackedFullRange(sGlobalVariantBitfield);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_422YpCbCr10PackedFullRange, "kCVPixelFormatType_422YpCbCr10PackedFullRange", 0x78663270, Mutable, v27);
  CFDictionaryRemoveAllValues(v28);
  if (isCoreAnimation_10BitYCbCrCapable(void)::didCheck == 1)
  {
    v180 = isCoreAnimation_10BitYCbCrCapable(void)::result;
  }

  else
  {
    v180 = MGGetBoolAnswer();
    isCoreAnimation_10BitYCbCrCapable(void)::result = v180;
    isCoreAnimation_10BitYCbCrCapable(void)::didCheck = 1;
  }

  v181 = v647;
  if (v180)
  {
    sGlobalVariantBitfield |= 1u;
    if (areHTPCFormatsSupportedByCA())
    {
      sGlobalVariantBitfield |= 2u;
    }
  }

  if (v641)
  {
    PixelFormat_kCVPixelFormatType_420YpCbCr10PackedBiPlanarVideoRange = retrievePixelFormat_kCVPixelFormatType_420YpCbCr10PackedBiPlanarVideoRange(sGlobalVariantBitfield);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_420YpCbCr10PackedBiPlanarVideoRange, "kCVPixelFormatType_420YpCbCr10PackedBiPlanarVideoRange", 0x70343230, Mutable, v27);
    PixelFormat_kCVPixelFormatType_422YpCbCr10PackedBiPlanarVideoRange = retrievePixelFormat_kCVPixelFormatType_422YpCbCr10PackedBiPlanarVideoRange(sGlobalVariantBitfield);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_422YpCbCr10PackedBiPlanarVideoRange, "kCVPixelFormatType_422YpCbCr10PackedBiPlanarVideoRange", 0x70343232, Mutable, v27);
    PixelFormat_kCVPixelFormatType_444YpCbCr10PackedBiPlanarVideoRange = retrievePixelFormat_kCVPixelFormatType_444YpCbCr10PackedBiPlanarVideoRange(sGlobalVariantBitfield);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_444YpCbCr10PackedBiPlanarVideoRange, "kCVPixelFormatType_444YpCbCr10PackedBiPlanarVideoRange", 0x70343434, Mutable, v27);
    PixelFormat_kCVPixelFormatType_420YpCbCr10PackedBiPlanarFullRange = retrievePixelFormat_kCVPixelFormatType_420YpCbCr10PackedBiPlanarFullRange(sGlobalVariantBitfield);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_420YpCbCr10PackedBiPlanarFullRange, "kCVPixelFormatType_420YpCbCr10PackedBiPlanarFullRange", 0x70663230, Mutable, v27);
    PixelFormat_kCVPixelFormatType_422YpCbCr10PackedBiPlanarFullRange = retrievePixelFormat_kCVPixelFormatType_422YpCbCr10PackedBiPlanarFullRange(sGlobalVariantBitfield);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_422YpCbCr10PackedBiPlanarFullRange, "kCVPixelFormatType_422YpCbCr10PackedBiPlanarFullRange", 0x70663232, Mutable, v27);
    PixelFormat_kCVPixelFormatType_444YpCbCr10PackedBiPlanarFullRange = retrievePixelFormat_kCVPixelFormatType_444YpCbCr10PackedBiPlanarFullRange(sGlobalVariantBitfield);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_444YpCbCr10PackedBiPlanarFullRange, "kCVPixelFormatType_444YpCbCr10PackedBiPlanarFullRange", 0x70663434, Mutable, v27);
    cleanupContentsOfArrayOfVariants();
    PixelFormat_kCVPixelFormatType_400YpCbCr10PackedVideoRange = retrievePixelFormat_kCVPixelFormatType_400YpCbCr10PackedVideoRange(sGlobalVariantBitfield);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_400YpCbCr10PackedVideoRange, "kCVPixelFormatType_400YpCbCr10PackedVideoRange", 0x70343030, Mutable, v27);
  }

  else
  {
    cleanupContentsOfArrayOfVariants();
  }

  if (isCoreAnimation_10BitYCbCrCapable(void)::didCheck == 1)
  {
    if (!isCoreAnimation_10BitYCbCrCapable(void)::result)
    {
      goto LABEL_253;
    }
  }

  else
  {
    v189 = MGGetBoolAnswer();
    isCoreAnimation_10BitYCbCrCapable(void)::result = v189;
    isCoreAnimation_10BitYCbCrCapable(void)::didCheck = 1;
    if (!v189)
    {
      goto LABEL_253;
    }
  }

  sGlobalVariantBitfield |= 1u;
  if (areHTPCFormatsSupportedByCA())
  {
    sGlobalVariantBitfield |= 2u;
  }

LABEL_253:
  if (v641)
  {
    PixelFormat_kCVPixelFormatType_420YpCbCr10PackedBiPlanarWideRange = retrievePixelFormat_kCVPixelFormatType_420YpCbCr10PackedBiPlanarWideRange(sGlobalVariantBitfield);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_420YpCbCr10PackedBiPlanarWideRange, "kCVPixelFormatType_420YpCbCr10PackedBiPlanarWideRange", 0x70773230, Mutable, v27);
    PixelFormat_kCVPixelFormatType_422YpCbCr10PackedBiPlanarWideRange = retrievePixelFormat_kCVPixelFormatType_422YpCbCr10PackedBiPlanarWideRange(sGlobalVariantBitfield);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_422YpCbCr10PackedBiPlanarWideRange, "kCVPixelFormatType_422YpCbCr10PackedBiPlanarWideRange", 0x70773232, Mutable, v27);
    PixelFormat_kCVPixelFormatType_444YpCbCr10PackedBiPlanarWideRange = retrievePixelFormat_kCVPixelFormatType_444YpCbCr10PackedBiPlanarWideRange(sGlobalVariantBitfield);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_444YpCbCr10PackedBiPlanarWideRange, "kCVPixelFormatType_444YpCbCr10PackedBiPlanarWideRange", 0x70773434, Mutable, v27);
  }

  CFDictionaryRemoveAllValues(v28);
  cleanupContentsOfArrayOfVariants();
  if (isCoreAnimation_10BitYCbCrCapable(void)::didCheck == 1)
  {
    v193 = isCoreAnimation_10BitYCbCrCapable(void)::result;
  }

  else
  {
    v193 = MGGetBoolAnswer();
    isCoreAnimation_10BitYCbCrCapable(void)::result = v193;
    isCoreAnimation_10BitYCbCrCapable(void)::didCheck = 1;
  }

  v194 = sGlobalVariantBitfield;
  if (v193)
  {
    sGlobalVariantBitfield |= 1u;
    v195 = areHTPCFormatsSupportedByCA();
    v194 = sGlobalVariantBitfield;
    if (v195)
    {
      v194 = sGlobalVariantBitfield | 2;
      sGlobalVariantBitfield |= 2u;
    }
  }

  PixelFormat_kCVPixelFormatType_30RGBLE_8A_BiPlanar = retrievePixelFormat_kCVPixelFormatType_30RGBLE_8A_BiPlanar(v194);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_30RGBLE_8A_BiPlanar, "kCVPixelFormatType_30RGBLE_8A_BiPlanar", 0x62336138, Mutable, v27);
  CFDictionaryRemoveAllValues(v28);
  cleanupContentsOfArrayOfVariants();
  PixelFormat_kCVPixelFormatType_160BayerPacked10_BGGR = retrievePixelFormat_kCVPixelFormatType_160BayerPacked10_BGGR(sGlobalVariantBitfield);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_160BayerPacked10_BGGR, "kCVPixelFormatType_160BayerPacked10_BGGR", 0x62677030, Mutable, v27);
  PixelFormat_kCVPixelFormatType_160BayerPacked10_GRBG = retrievePixelFormat_kCVPixelFormatType_160BayerPacked10_GRBG(sGlobalVariantBitfield);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_160BayerPacked10_GRBG, "kCVPixelFormatType_160BayerPacked10_GRBG", 0x67727030, Mutable, v27);
  PixelFormat_kCVPixelFormatType_160BayerPacked10_RGGB = retrievePixelFormat_kCVPixelFormatType_160BayerPacked10_RGGB(sGlobalVariantBitfield);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_160BayerPacked10_RGGB, "kCVPixelFormatType_160BayerPacked10_RGGB", 0x72677030, Mutable, v27);
  PixelFormat_kCVPixelFormatType_160BayerPacked10_GBRG = retrievePixelFormat_kCVPixelFormatType_160BayerPacked10_GBRG(sGlobalVariantBitfield);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_160BayerPacked10_GBRG, "kCVPixelFormatType_160BayerPacked10_GBRG", 0x67627030, Mutable, v27);
  PixelFormat_kCVPixelFormatType_96BayerPacked12_BGGR = retrievePixelFormat_kCVPixelFormatType_96BayerPacked12_BGGR(sGlobalVariantBitfield);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_96BayerPacked12_BGGR, "kCVPixelFormatType_96BayerPacked12_BGGR", 0x62677032, Mutable, v27);
  PixelFormat_kCVPixelFormatType_96VersatileBayerPacked12 = retrievePixelFormat_kCVPixelFormatType_96VersatileBayerPacked12(sGlobalVariantBitfield);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_96VersatileBayerPacked12, "kCVPixelFormatType_96VersatileBayerPacked12", 0x62747032, Mutable, v27);
  PixelFormat_kCVPixelFormatType_224BayerPacked14_BGGR = retrievePixelFormat_kCVPixelFormatType_224BayerPacked14_BGGR(sGlobalVariantBitfield);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_224BayerPacked14_BGGR, "kCVPixelFormatType_224BayerPacked14_BGGR", 0x62677034, Mutable, v27);
  PixelFormat_kCVPixelFormatType_12BayerCompandedIn8_BGGR = retrievePixelFormat_kCVPixelFormatType_12BayerCompandedIn8_BGGR(sGlobalVariantBitfield);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_12BayerCompandedIn8_BGGR, "kCVPixelFormatType_12BayerCompandedIn8_BGGR", 0x62676338, Mutable, v27);
  PixelFormat_kCVPixelFormatType_12BayerCompandedIn8_GRBG = retrievePixelFormat_kCVPixelFormatType_12BayerCompandedIn8_GRBG(sGlobalVariantBitfield);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_12BayerCompandedIn8_GRBG, "kCVPixelFormatType_12BayerCompandedIn8_GRBG", 0x67726338, Mutable, v27);
  PixelFormat_kCVPixelFormatType_12BayerCompandedIn8_RGGB = retrievePixelFormat_kCVPixelFormatType_12BayerCompandedIn8_RGGB(sGlobalVariantBitfield);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_12BayerCompandedIn8_RGGB, "kCVPixelFormatType_12BayerCompandedIn8_RGGB", 0x72676338, Mutable, v27);
  PixelFormat_kCVPixelFormatType_12BayerCompandedIn8_GBRG = retrievePixelFormat_kCVPixelFormatType_12BayerCompandedIn8_GBRG(sGlobalVariantBitfield);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_12BayerCompandedIn8_GBRG, "kCVPixelFormatType_12BayerCompandedIn8_GBRG", 0x67626338, Mutable, v27);
  PixelFormat_kCVPixelFormatType_SpecialPassthrough1 = retrievePixelFormat_kCVPixelFormatType_SpecialPassthrough1(sGlobalVariantBitfield);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_SpecialPassthrough1, "kCVPixelFormatType_SpecialPassthrough1", 0x3D3D3D31, Mutable, v27);
  CFDictionaryRemoveAllValues(v28);
  PixelFormat_kCVPixelFormatType_SpecialPassthrough2 = retrievePixelFormat_kCVPixelFormatType_SpecialPassthrough2(sGlobalVariantBitfield);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_SpecialPassthrough2, "kCVPixelFormatType_SpecialPassthrough2", 0x3D3D3D32, Mutable, v27);
  CFDictionaryRemoveAllValues(v28);
  PixelFormat_kCVPixelFormatType_SpecialPassthrough3 = retrievePixelFormat_kCVPixelFormatType_SpecialPassthrough3(sGlobalVariantBitfield);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_SpecialPassthrough3, "kCVPixelFormatType_SpecialPassthrough3", 0x3D3D3D33, Mutable, v27);
  CFDictionaryRemoveAllValues(v28);
  PixelFormat_kCVPixelFormatType_64RGBALE = retrievePixelFormat_kCVPixelFormatType_64RGBALE(sGlobalVariantBitfield);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_64RGBALE, "kCVPixelFormatType_64RGBALE", 0x6C363472, Mutable, v27);
  cleanupContentsOfArrayOfVariants();
  if ((isCoreAnimation_12BitYCbCrCapable(void)::didCheck & 1) == 0)
  {
    isCoreAnimation_12BitYCbCrCapable(void)::didCheck = 1;
  }

  PixelFormat_kCVPixelFormatType_420YpCbCr12BiPlanarVideoRange = retrievePixelFormat_kCVPixelFormatType_420YpCbCr12BiPlanarVideoRange(sGlobalVariantBitfield);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_420YpCbCr12BiPlanarVideoRange, "kCVPixelFormatType_420YpCbCr12BiPlanarVideoRange", 0x74763230, Mutable, v27);
  PixelFormat_kCVPixelFormatType_422YpCbCr12BiPlanarVideoRange = retrievePixelFormat_kCVPixelFormatType_422YpCbCr12BiPlanarVideoRange(sGlobalVariantBitfield);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_422YpCbCr12BiPlanarVideoRange, "kCVPixelFormatType_422YpCbCr12BiPlanarVideoRange", 0x74763232, Mutable, v27);
  PixelFormat_kCVPixelFormatType_444YpCbCr12BiPlanarVideoRange = retrievePixelFormat_kCVPixelFormatType_444YpCbCr12BiPlanarVideoRange(sGlobalVariantBitfield);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_444YpCbCr12BiPlanarVideoRange, "kCVPixelFormatType_444YpCbCr12BiPlanarVideoRange", 0x74763434, Mutable, v27);
  PixelFormat_kCVPixelFormatType_420YpCbCr12BiPlanarFullRange = retrievePixelFormat_kCVPixelFormatType_420YpCbCr12BiPlanarFullRange(sGlobalVariantBitfield);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_420YpCbCr12BiPlanarFullRange, "kCVPixelFormatType_420YpCbCr12BiPlanarFullRange", 0x74663230, Mutable, v27);
  PixelFormat_kCVPixelFormatType_422YpCbCr12BiPlanarFullRange = retrievePixelFormat_kCVPixelFormatType_422YpCbCr12BiPlanarFullRange(sGlobalVariantBitfield);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_422YpCbCr12BiPlanarFullRange, "kCVPixelFormatType_422YpCbCr12BiPlanarFullRange", 0x74663232, Mutable, v27);
  PixelFormat_kCVPixelFormatType_444YpCbCr12BiPlanarFullRange = retrievePixelFormat_kCVPixelFormatType_444YpCbCr12BiPlanarFullRange(sGlobalVariantBitfield);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_444YpCbCr12BiPlanarFullRange, "kCVPixelFormatType_444YpCbCr12BiPlanarFullRange", 0x74663434, Mutable, v27);
  PixelFormat_kCVPixelFormatType_420YpCbCr12BiPlanarWideGamut = retrievePixelFormat_kCVPixelFormatType_420YpCbCr12BiPlanarWideGamut(sGlobalVariantBitfield);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_420YpCbCr12BiPlanarWideGamut, "kCVPixelFormatType_420YpCbCr12BiPlanarWideGamut", 0x74773230, Mutable, v27);
  PixelFormat_kCVPixelFormatType_422YpCbCr12BiPlanarWideGamut = retrievePixelFormat_kCVPixelFormatType_422YpCbCr12BiPlanarWideGamut(sGlobalVariantBitfield);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_422YpCbCr12BiPlanarWideGamut, "kCVPixelFormatType_422YpCbCr12BiPlanarWideGamut", 0x74773232, Mutable, v27);
  PixelFormat_kCVPixelFormatType_444YpCbCr12BiPlanarWideGamut = retrievePixelFormat_kCVPixelFormatType_444YpCbCr12BiPlanarWideGamut(sGlobalVariantBitfield);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_444YpCbCr12BiPlanarWideGamut, "kCVPixelFormatType_444YpCbCr12BiPlanarWideGamut", 0x74773434, Mutable, v27);
  CFDictionaryRemoveAllValues(v28);
  cleanupContentsOfArrayOfVariants();
  if ((isCoreAnimation_12BitYCbCrCapable(void)::didCheck & 1) == 0)
  {
    isCoreAnimation_12BitYCbCrCapable(void)::didCheck = 1;
  }

  PixelFormat_kCVPixelFormatType_420YpCbCr12PackedBiPlanarVideoRange = retrievePixelFormat_kCVPixelFormatType_420YpCbCr12PackedBiPlanarVideoRange(sGlobalVariantBitfield);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_420YpCbCr12PackedBiPlanarVideoRange, "kCVPixelFormatType_420YpCbCr12PackedBiPlanarVideoRange", 0x70747630, Mutable, v27);
  PixelFormat_kCVPixelFormatType_422YpCbCr12PackedBiPlanarVideoRange = retrievePixelFormat_kCVPixelFormatType_422YpCbCr12PackedBiPlanarVideoRange(sGlobalVariantBitfield);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_422YpCbCr12PackedBiPlanarVideoRange, "kCVPixelFormatType_422YpCbCr12PackedBiPlanarVideoRange", 0x70747632, Mutable, v27);
  PixelFormat_kCVPixelFormatType_444YpCbCr12PackedBiPlanarVideoRange = retrievePixelFormat_kCVPixelFormatType_444YpCbCr12PackedBiPlanarVideoRange(sGlobalVariantBitfield);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_444YpCbCr12PackedBiPlanarVideoRange, "kCVPixelFormatType_444YpCbCr12PackedBiPlanarVideoRange", 0x70747634, Mutable, v27);
  PixelFormat_kCVPixelFormatType_420YpCbCr12PackedBiPlanarFullRange = retrievePixelFormat_kCVPixelFormatType_420YpCbCr12PackedBiPlanarFullRange(sGlobalVariantBitfield);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_420YpCbCr12PackedBiPlanarFullRange, "kCVPixelFormatType_420YpCbCr12PackedBiPlanarFullRange", 0x70746630, Mutable, v27);
  PixelFormat_kCVPixelFormatType_422YpCbCr12PackedBiPlanarFullRange = retrievePixelFormat_kCVPixelFormatType_422YpCbCr12PackedBiPlanarFullRange(sGlobalVariantBitfield);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_422YpCbCr12PackedBiPlanarFullRange, "kCVPixelFormatType_422YpCbCr12PackedBiPlanarFullRange", 0x70746632, Mutable, v27);
  PixelFormat_kCVPixelFormatType_444YpCbCr12PackedBiPlanarFullRange = retrievePixelFormat_kCVPixelFormatType_444YpCbCr12PackedBiPlanarFullRange(sGlobalVariantBitfield);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_444YpCbCr12PackedBiPlanarFullRange, "kCVPixelFormatType_444YpCbCr12PackedBiPlanarFullRange", 0x70746634, Mutable, v27);
  PixelFormat_kCVPixelFormatType_420YpCbCr12PackedBiPlanarWideGamut = retrievePixelFormat_kCVPixelFormatType_420YpCbCr12PackedBiPlanarWideGamut(sGlobalVariantBitfield);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_420YpCbCr12PackedBiPlanarWideGamut, "kCVPixelFormatType_420YpCbCr12PackedBiPlanarWideGamut", 0x70747730, Mutable, v27);
  PixelFormat_kCVPixelFormatType_422YpCbCr12PackedBiPlanarWideGamut = retrievePixelFormat_kCVPixelFormatType_422YpCbCr12PackedBiPlanarWideGamut(sGlobalVariantBitfield);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_422YpCbCr12PackedBiPlanarWideGamut, "kCVPixelFormatType_422YpCbCr12PackedBiPlanarWideGamut", 0x70747732, Mutable, v27);
  PixelFormat_kCVPixelFormatType_444YpCbCr12PackedBiPlanarWideGamut = retrievePixelFormat_kCVPixelFormatType_444YpCbCr12PackedBiPlanarWideGamut(sGlobalVariantBitfield);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_444YpCbCr12PackedBiPlanarWideGamut, "kCVPixelFormatType_444YpCbCr12PackedBiPlanarWideGamut", 0x70747734, Mutable, v27);
  CFDictionaryRemoveAllValues(v28);
  cleanupContentsOfArrayOfVariants();
  if (v647)
  {
    v230 = 1;
  }

  else
  {
    v230 = v642;
  }

  if (v230 == 1)
  {
    v231 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(1, &_pixelFormatDictionaryInit(void)::planeCompressionLumaOnly, _pixelFormatDictionaryInit(void)::addressFormatLumaOnlyCompressed, 1);
    PixelFormat_kCVPixelFormatType_HTPC128x1_14Bayer_BGGR = retrievePixelFormat_kCVPixelFormatType_HTPC128x1_14Bayer_BGGR(v231);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_HTPC128x1_14Bayer_BGGR, "kCVPixelFormatType_HTPC128x1_14Bayer_BGGR", 0x7B626734, Mutable, v27);
  }

  if (v642)
  {
    v233 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(2, &_pixelFormatDictionaryInit(void)::planeCompressionLumaAndChroma, _pixelFormatDictionaryInit(void)::addressFormatLumaAndChroma, 2);
    PixelFormat_kCVPixelFormatType_HTPC32x4_420YpCbCr8BiPlanarVideoRange = retrievePixelFormat_kCVPixelFormatType_HTPC32x4_420YpCbCr8BiPlanarVideoRange(v233);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_HTPC32x4_420YpCbCr8BiPlanarVideoRange, "kCVPixelFormatType_HTPC32x4_420YpCbCr8BiPlanarVideoRange", 0x7D387630, Mutable, v27);
    v235 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(2, &_pixelFormatDictionaryInit(void)::planeCompressionLumaAndChroma, _pixelFormatDictionaryInit(void)::addressFormatLumaAndChroma, 2);
    PixelFormat_kCVPixelFormatType_HTPC32x4_420YpCbCr8BiPlanarFullRange = retrievePixelFormat_kCVPixelFormatType_HTPC32x4_420YpCbCr8BiPlanarFullRange(v235);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_HTPC32x4_420YpCbCr8BiPlanarFullRange, "kCVPixelFormatType_HTPC32x4_420YpCbCr8BiPlanarFullRange", 0x7D386630, Mutable, v27);
    v237 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(2, &_pixelFormatDictionaryInit(void)::planeCompressionLumaAndChroma, _pixelFormatDictionaryInit(void)::addressFormatLumaAndChroma, 2);
    PixelFormat_kCVPixelFormatType_HTPC32x4_422YpCbCr8BiPlanarVideoRange = retrievePixelFormat_kCVPixelFormatType_HTPC32x4_422YpCbCr8BiPlanarVideoRange(v237);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_HTPC32x4_422YpCbCr8BiPlanarVideoRange, "kCVPixelFormatType_HTPC32x4_422YpCbCr8BiPlanarVideoRange", 0x7D387632, Mutable, v27);
    v239 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(2, &_pixelFormatDictionaryInit(void)::planeCompressionLumaAndChroma, _pixelFormatDictionaryInit(void)::addressFormatLumaAndChroma, 2);
    PixelFormat_kCVPixelFormatType_HTPC32x4_422YpCbCr8BiPlanarFullRange = retrievePixelFormat_kCVPixelFormatType_HTPC32x4_422YpCbCr8BiPlanarFullRange(v239);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_HTPC32x4_422YpCbCr8BiPlanarFullRange, "kCVPixelFormatType_HTPC32x4_422YpCbCr8BiPlanarFullRange", 0x7D386632, Mutable, v27);
    v241 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(2, &_pixelFormatDictionaryInit(void)::planeCompressionLumaAndChroma, _pixelFormatDictionaryInit(void)::addressFormatLumaAndChroma, 2);
    PixelFormat_kCVPixelFormatType_HTPC32x4_420YpCbCr10BiPlanarVideoRange = retrievePixelFormat_kCVPixelFormatType_HTPC32x4_420YpCbCr10BiPlanarVideoRange(v241);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_HTPC32x4_420YpCbCr10BiPlanarVideoRange, "kCVPixelFormatType_HTPC32x4_420YpCbCr10BiPlanarVideoRange", 0x7D787630, Mutable, v27);
    v243 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(2, &_pixelFormatDictionaryInit(void)::planeCompressionLumaAndChroma, _pixelFormatDictionaryInit(void)::addressFormatLumaAndChroma, 2);
    PixelFormat_kCVPixelFormatType_HTPC32x4_420YpCbCr10BiPlanarFullRange = retrievePixelFormat_kCVPixelFormatType_HTPC32x4_420YpCbCr10BiPlanarFullRange(v243);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_HTPC32x4_420YpCbCr10BiPlanarFullRange, "kCVPixelFormatType_HTPC32x4_420YpCbCr10BiPlanarFullRange", 0x7D786630, Mutable, v27);
    v245 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(2, &_pixelFormatDictionaryInit(void)::planeCompressionLumaAndChroma, _pixelFormatDictionaryInit(void)::addressFormatLumaAndChroma, 2);
    PixelFormat_kCVPixelFormatType_HTPC32x4_420YpCbCr10BiPlanarWideRange = retrievePixelFormat_kCVPixelFormatType_HTPC32x4_420YpCbCr10BiPlanarWideRange(v245);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_HTPC32x4_420YpCbCr10BiPlanarWideRange, "kCVPixelFormatType_HTPC32x4_420YpCbCr10BiPlanarWideRange", 0x7D787730, Mutable, v27);
    v247 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(2, &_pixelFormatDictionaryInit(void)::planeCompressionLumaAndChroma, _pixelFormatDictionaryInit(void)::addressFormatLumaAndChroma, 2);
    PixelFormat_kCVPixelFormatType_HTPC32x4_422YpCbCr10BiPlanarVideoRange = retrievePixelFormat_kCVPixelFormatType_HTPC32x4_422YpCbCr10BiPlanarVideoRange(v247);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_HTPC32x4_422YpCbCr10BiPlanarVideoRange, "kCVPixelFormatType_HTPC32x4_422YpCbCr10BiPlanarVideoRange", 0x7D787632, Mutable, v27);
    v249 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(2, &_pixelFormatDictionaryInit(void)::planeCompressionLumaAndChroma, _pixelFormatDictionaryInit(void)::addressFormatLumaAndChroma, 2);
    PixelFormat_kCVPixelFormatType_HTPC32x4_422YpCbCr10BiPlanarFullRange = retrievePixelFormat_kCVPixelFormatType_HTPC32x4_422YpCbCr10BiPlanarFullRange(v249);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_HTPC32x4_422YpCbCr10BiPlanarFullRange, "kCVPixelFormatType_HTPC32x4_422YpCbCr10BiPlanarFullRange", 0x7D786632, Mutable, v27);
    v251 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(2, &_pixelFormatDictionaryInit(void)::planeCompressionLumaAndChroma, _pixelFormatDictionaryInit(void)::addressFormatLumaAndChroma, 2);
    PixelFormat_kCVPixelFormatType_HTPC32x4_422YpCbCr10BiPlanarWideRange = retrievePixelFormat_kCVPixelFormatType_HTPC32x4_422YpCbCr10BiPlanarWideRange(v251);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_HTPC32x4_422YpCbCr10BiPlanarWideRange, "kCVPixelFormatType_HTPC32x4_422YpCbCr10BiPlanarWideRange", 0x7D787732, Mutable, v27);
    v253 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(2, &_pixelFormatDictionaryInit(void)::planeCompressionLumaAndChroma, _pixelFormatDictionaryInit(void)::addressFormatLumaAndChroma, 2);
    PixelFormat_kCVPixelFormatType_HTPC32x4_444YpCbCr10BiPlanarVideoRange = retrievePixelFormat_kCVPixelFormatType_HTPC32x4_444YpCbCr10BiPlanarVideoRange(v253);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_HTPC32x4_444YpCbCr10BiPlanarVideoRange, "kCVPixelFormatType_HTPC32x4_444YpCbCr10BiPlanarVideoRange", 0x7D787634, Mutable, v27);
    v255 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(2, &_pixelFormatDictionaryInit(void)::planeCompressionLumaAndChroma, _pixelFormatDictionaryInit(void)::addressFormatLumaAndChroma, 2);
    PixelFormat_kCVPixelFormatType_HTPC32x4_444YpCbCr10BiPlanarFullRange = retrievePixelFormat_kCVPixelFormatType_HTPC32x4_444YpCbCr10BiPlanarFullRange(v255);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_HTPC32x4_444YpCbCr10BiPlanarFullRange, "kCVPixelFormatType_HTPC32x4_444YpCbCr10BiPlanarFullRange", 0x7D786634, Mutable, v27);
    v257 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(2, &_pixelFormatDictionaryInit(void)::planeCompressionLumaAndChroma, _pixelFormatDictionaryInit(void)::addressFormatLumaAndChroma, 2);
    PixelFormat_kCVPixelFormatType_HTPC32x4_444YpCbCr10BiPlanarWideRange = retrievePixelFormat_kCVPixelFormatType_HTPC32x4_444YpCbCr10BiPlanarWideRange(v257);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_HTPC32x4_444YpCbCr10BiPlanarWideRange, "kCVPixelFormatType_HTPC32x4_444YpCbCr10BiPlanarWideRange", 0x7D787734, Mutable, v27);
    v259 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(2, &_pixelFormatDictionaryInit(void)::planeCompressionLumaOnly, _pixelFormatDictionaryInit(void)::addressFormatAVEReference, 2);
    PixelFormat_kCVPixelFormatType_HTPC16x8LumaOnly_420YpCbCr8BiPlanarVideoRange = retrievePixelFormat_kCVPixelFormatType_HTPC16x8LumaOnly_420YpCbCr8BiPlanarVideoRange(v259);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_HTPC16x8LumaOnly_420YpCbCr8BiPlanarVideoRange, "kCVPixelFormatType_HTPC16x8LumaOnly_420YpCbCr8BiPlanarVideoRange", 0x5D387630, Mutable, v27);
    v261 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(2, &_pixelFormatDictionaryInit(void)::planeCompressionLumaOnly, _pixelFormatDictionaryInit(void)::addressFormatAVEReference, 2);
    PixelFormat_kCVPixelFormatType_HTPC16x8LumaOnly_422YpCbCr8BiPlanarVideoRange = retrievePixelFormat_kCVPixelFormatType_HTPC16x8LumaOnly_422YpCbCr8BiPlanarVideoRange(v261);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_HTPC16x8LumaOnly_422YpCbCr8BiPlanarVideoRange, "kCVPixelFormatType_HTPC16x8LumaOnly_422YpCbCr8BiPlanarVideoRange", 0x5D387632, Mutable, v27);
    v263 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(2, &_pixelFormatDictionaryInit(void)::planeCompressionLumaOnly, _pixelFormatDictionaryInit(void)::addressFormatAVEReference, 2);
    PixelFormat_kCVPixelFormatType_HTPC16x8LumaOnly_444YpCbCr8BiPlanarVideoRange = retrievePixelFormat_kCVPixelFormatType_HTPC16x8LumaOnly_444YpCbCr8BiPlanarVideoRange(v263);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_HTPC16x8LumaOnly_444YpCbCr8BiPlanarVideoRange, "kCVPixelFormatType_HTPC16x8LumaOnly_444YpCbCr8BiPlanarVideoRange", 0x5D387634, Mutable, v27);
    v265 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(2, &_pixelFormatDictionaryInit(void)::planeCompressionLumaOnly, _pixelFormatDictionaryInit(void)::addressFormatAVEReference, 2);
    PixelFormat_kCVPixelFormatType_HTPC16x8LumaOnly_420YpCbCr8BiPlanarFullRange = retrievePixelFormat_kCVPixelFormatType_HTPC16x8LumaOnly_420YpCbCr8BiPlanarFullRange(v265);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_HTPC16x8LumaOnly_420YpCbCr8BiPlanarFullRange, "kCVPixelFormatType_HTPC16x8LumaOnly_420YpCbCr8BiPlanarFullRange", 0x5D386630, Mutable, v27);
    v267 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(2, &_pixelFormatDictionaryInit(void)::planeCompressionLumaOnly, _pixelFormatDictionaryInit(void)::addressFormatAVEReference, 2);
    PixelFormat_kCVPixelFormatType_HTPC16x8LumaOnly_422YpCbCr8BiPlanarFullRange = retrievePixelFormat_kCVPixelFormatType_HTPC16x8LumaOnly_422YpCbCr8BiPlanarFullRange(v267);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_HTPC16x8LumaOnly_422YpCbCr8BiPlanarFullRange, "kCVPixelFormatType_HTPC16x8LumaOnly_422YpCbCr8BiPlanarFullRange", 0x5D386632, Mutable, v27);
    v269 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(2, &_pixelFormatDictionaryInit(void)::planeCompressionLumaOnly, _pixelFormatDictionaryInit(void)::addressFormatAVEReference, 2);
    PixelFormat_kCVPixelFormatType_HTPC16x8LumaOnly_444YpCbCr8BiPlanarFullRange = retrievePixelFormat_kCVPixelFormatType_HTPC16x8LumaOnly_444YpCbCr8BiPlanarFullRange(v269);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_HTPC16x8LumaOnly_444YpCbCr8BiPlanarFullRange, "kCVPixelFormatType_HTPC16x8LumaOnly_444YpCbCr8BiPlanarFullRange", 0x5D386634, Mutable, v27);
    v271 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(2, &_pixelFormatDictionaryInit(void)::planeCompressionLumaOnly, _pixelFormatDictionaryInit(void)::addressFormatAVEReference, 2);
    PixelFormat_kCVPixelFormatType_HTPC16x8LumaOnly_420YpCbCr10BiPlanarVideoRange = retrievePixelFormat_kCVPixelFormatType_HTPC16x8LumaOnly_420YpCbCr10BiPlanarVideoRange(v271);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_HTPC16x8LumaOnly_420YpCbCr10BiPlanarVideoRange, "kCVPixelFormatType_HTPC16x8LumaOnly_420YpCbCr10BiPlanarVideoRange", 0x5D787630, Mutable, v27);
    v273 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(2, &_pixelFormatDictionaryInit(void)::planeCompressionLumaOnly, _pixelFormatDictionaryInit(void)::addressFormatAVEReference, 2);
    PixelFormat_kCVPixelFormatType_HTPC16x8LumaOnly_422YpCbCr10BiPlanarVideoRange = retrievePixelFormat_kCVPixelFormatType_HTPC16x8LumaOnly_422YpCbCr10BiPlanarVideoRange(v273);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_HTPC16x8LumaOnly_422YpCbCr10BiPlanarVideoRange, "kCVPixelFormatType_HTPC16x8LumaOnly_422YpCbCr10BiPlanarVideoRange", 0x5D787632, Mutable, v27);
    v275 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(2, &_pixelFormatDictionaryInit(void)::planeCompressionLumaOnly, _pixelFormatDictionaryInit(void)::addressFormatAVEReference, 2);
    PixelFormat_kCVPixelFormatType_HTPC16x8LumaOnly_444YpCbCr10BiPlanarVideoRange = retrievePixelFormat_kCVPixelFormatType_HTPC16x8LumaOnly_444YpCbCr10BiPlanarVideoRange(v275);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_HTPC16x8LumaOnly_444YpCbCr10BiPlanarVideoRange, "kCVPixelFormatType_HTPC16x8LumaOnly_444YpCbCr10BiPlanarVideoRange", 0x5D787634, Mutable, v27);
    v277 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(2, &_pixelFormatDictionaryInit(void)::planeCompressionLumaOnly, _pixelFormatDictionaryInit(void)::addressFormatAVEReference, 2);
    PixelFormat_kCVPixelFormatType_HTPC16x8LumaOnly_420YpCbCr10BiPlanarFullRange = retrievePixelFormat_kCVPixelFormatType_HTPC16x8LumaOnly_420YpCbCr10BiPlanarFullRange(v277);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_HTPC16x8LumaOnly_420YpCbCr10BiPlanarFullRange, "kCVPixelFormatType_HTPC16x8LumaOnly_420YpCbCr10BiPlanarFullRange", 0x5D786630, Mutable, v27);
    v279 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(2, &_pixelFormatDictionaryInit(void)::planeCompressionLumaOnly, _pixelFormatDictionaryInit(void)::addressFormatAVEReference, 2);
    PixelFormat_kCVPixelFormatType_HTPC16x8LumaOnly_422YpCbCr10BiPlanarFullRange = retrievePixelFormat_kCVPixelFormatType_HTPC16x8LumaOnly_422YpCbCr10BiPlanarFullRange(v279);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_HTPC16x8LumaOnly_422YpCbCr10BiPlanarFullRange, "kCVPixelFormatType_HTPC16x8LumaOnly_422YpCbCr10BiPlanarFullRange", 0x5D786632, Mutable, v27);
    v181 = v647;
    v174 = 0x1ED568000;
    v281 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(2, &_pixelFormatDictionaryInit(void)::planeCompressionLumaOnly, _pixelFormatDictionaryInit(void)::addressFormatAVEReference, 2);
    PixelFormat_kCVPixelFormatType_HTPC16x8LumaOnly_444YpCbCr10BiPlanarFullRange = retrievePixelFormat_kCVPixelFormatType_HTPC16x8LumaOnly_444YpCbCr10BiPlanarFullRange(v281);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_HTPC16x8LumaOnly_444YpCbCr10BiPlanarFullRange, "kCVPixelFormatType_HTPC16x8LumaOnly_444YpCbCr10BiPlanarFullRange", 0x5D786634, Mutable, v27);
    v283 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(2, &_pixelFormatDictionaryInit(void)::planeCompressionLumaAndChroma, _pixelFormatDictionaryInit(void)::addressFormatLumaAndChroma, 2);
    PixelFormat_kCVPixelFormatType_HTPC16x8_420YpCbCr8BiPlanarVideoRange = retrievePixelFormat_kCVPixelFormatType_HTPC16x8_420YpCbCr8BiPlanarVideoRange(v283);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_HTPC16x8_420YpCbCr8BiPlanarVideoRange, "kCVPixelFormatType_HTPC16x8_420YpCbCr8BiPlanarVideoRange", 0x5B387630, Mutable, v27);
    v285 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(2, &_pixelFormatDictionaryInit(void)::planeCompressionLumaAndChroma, _pixelFormatDictionaryInit(void)::addressFormatLumaAndChroma, 2);
    PixelFormat_kCVPixelFormatType_HTPC16x8_422YpCbCr8BiPlanarVideoRange = retrievePixelFormat_kCVPixelFormatType_HTPC16x8_422YpCbCr8BiPlanarVideoRange(v285);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_HTPC16x8_422YpCbCr8BiPlanarVideoRange, "kCVPixelFormatType_HTPC16x8_422YpCbCr8BiPlanarVideoRange", 0x5B387632, Mutable, v27);
    v287 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(2, &_pixelFormatDictionaryInit(void)::planeCompressionLumaAndChroma, _pixelFormatDictionaryInit(void)::addressFormatLumaAndChroma, 2);
    PixelFormat_kCVPixelFormatType_HTPC16x8_444YpCbCr8BiPlanarVideoRange = retrievePixelFormat_kCVPixelFormatType_HTPC16x8_444YpCbCr8BiPlanarVideoRange(v287);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_HTPC16x8_444YpCbCr8BiPlanarVideoRange, "kCVPixelFormatType_HTPC16x8_444YpCbCr8BiPlanarVideoRange", 0x5B387634, Mutable, v27);
    v289 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(2, &_pixelFormatDictionaryInit(void)::planeCompressionLumaAndChroma, _pixelFormatDictionaryInit(void)::addressFormatLumaAndChroma, 2);
    PixelFormat_kCVPixelFormatType_HTPC16x8_420YpCbCr8BiPlanarFullRange = retrievePixelFormat_kCVPixelFormatType_HTPC16x8_420YpCbCr8BiPlanarFullRange(v289);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_HTPC16x8_420YpCbCr8BiPlanarFullRange, "kCVPixelFormatType_HTPC16x8_420YpCbCr8BiPlanarFullRange", 0x5B386630, Mutable, v27);
    v291 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(2, &_pixelFormatDictionaryInit(void)::planeCompressionLumaAndChroma, _pixelFormatDictionaryInit(void)::addressFormatLumaAndChroma, 2);
    PixelFormat_kCVPixelFormatType_HTPC16x8_422YpCbCr8BiPlanarFullRange = retrievePixelFormat_kCVPixelFormatType_HTPC16x8_422YpCbCr8BiPlanarFullRange(v291);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_HTPC16x8_422YpCbCr8BiPlanarFullRange, "kCVPixelFormatType_HTPC16x8_422YpCbCr8BiPlanarFullRange", 0x5B386632, Mutable, v27);
    v293 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(2, &_pixelFormatDictionaryInit(void)::planeCompressionLumaAndChroma, _pixelFormatDictionaryInit(void)::addressFormatLumaAndChroma, 2);
    PixelFormat_kCVPixelFormatType_HTPC16x8_444YpCbCr8BiPlanarFullRange = retrievePixelFormat_kCVPixelFormatType_HTPC16x8_444YpCbCr8BiPlanarFullRange(v293);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_HTPC16x8_444YpCbCr8BiPlanarFullRange, "kCVPixelFormatType_HTPC16x8_444YpCbCr8BiPlanarFullRange", 0x5B386634, Mutable, v27);
    v295 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(2, &_pixelFormatDictionaryInit(void)::planeCompressionLumaAndChroma, _pixelFormatDictionaryInit(void)::addressFormatLumaAndChroma, 18);
    PixelFormat_kCVPixelFormatType_HTPC16x8_420YpCbCr10BiPlanarVideoRange = retrievePixelFormat_kCVPixelFormatType_HTPC16x8_420YpCbCr10BiPlanarVideoRange(v295);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_HTPC16x8_420YpCbCr10BiPlanarVideoRange, "kCVPixelFormatType_HTPC16x8_420YpCbCr10BiPlanarVideoRange", 0x5B787630, Mutable, v27);
    v297 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(2, &_pixelFormatDictionaryInit(void)::planeCompressionLumaAndChroma, _pixelFormatDictionaryInit(void)::addressFormatLumaAndChroma, 2);
    PixelFormat_kCVPixelFormatType_HTPC16x8_422YpCbCr10BiPlanarVideoRange = retrievePixelFormat_kCVPixelFormatType_HTPC16x8_422YpCbCr10BiPlanarVideoRange(v297);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_HTPC16x8_422YpCbCr10BiPlanarVideoRange, "kCVPixelFormatType_HTPC16x8_422YpCbCr10BiPlanarVideoRange", 0x5B787632, Mutable, v27);
    v299 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(2, &_pixelFormatDictionaryInit(void)::planeCompressionLumaAndChroma, _pixelFormatDictionaryInit(void)::addressFormatLumaAndChroma, 2);
    PixelFormat_kCVPixelFormatType_HTPC16x8_444YpCbCr10BiPlanarVideoRange = retrievePixelFormat_kCVPixelFormatType_HTPC16x8_444YpCbCr10BiPlanarVideoRange(v299);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_HTPC16x8_444YpCbCr10BiPlanarVideoRange, "kCVPixelFormatType_HTPC16x8_444YpCbCr10BiPlanarVideoRange", 0x5B787634, Mutable, v27);
    v301 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(2, &_pixelFormatDictionaryInit(void)::planeCompressionLumaAndChroma, _pixelFormatDictionaryInit(void)::addressFormatLumaAndChroma, 18);
    PixelFormat_kCVPixelFormatType_HTPC16x8_420YpCbCr10BiPlanarFullRange = retrievePixelFormat_kCVPixelFormatType_HTPC16x8_420YpCbCr10BiPlanarFullRange(v301);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_HTPC16x8_420YpCbCr10BiPlanarFullRange, "kCVPixelFormatType_HTPC16x8_420YpCbCr10BiPlanarFullRange", 0x5B786630, Mutable, v27);
    v303 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(2, &_pixelFormatDictionaryInit(void)::planeCompressionLumaAndChroma, _pixelFormatDictionaryInit(void)::addressFormatLumaAndChroma, 2);
    PixelFormat_kCVPixelFormatType_HTPC16x8_422YpCbCr10BiPlanarFullRange = retrievePixelFormat_kCVPixelFormatType_HTPC16x8_422YpCbCr10BiPlanarFullRange(v303);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_HTPC16x8_422YpCbCr10BiPlanarFullRange, "kCVPixelFormatType_HTPC16x8_422YpCbCr10BiPlanarFullRange", 0x5B786632, Mutable, v27);
    v305 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(2, &_pixelFormatDictionaryInit(void)::planeCompressionLumaAndChroma, _pixelFormatDictionaryInit(void)::addressFormatLumaAndChroma, 2);
    PixelFormat_kCVPixelFormatType_HTPC16x8_444YpCbCr10BiPlanarFullRange = retrievePixelFormat_kCVPixelFormatType_HTPC16x8_444YpCbCr10BiPlanarFullRange(v305);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_HTPC16x8_444YpCbCr10BiPlanarFullRange, "kCVPixelFormatType_HTPC16x8_444YpCbCr10BiPlanarFullRange", 0x5B786634, Mutable, v27);
    v307 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(2, &_pixelFormatDictionaryInit(void)::planeCompressionLumaAndChroma, _pixelFormatDictionaryInit(void)::addressFormatLumaAndChroma, 2);
    PixelFormat_kCVPixelFormatType_HTPC16x8_420YpCbCr12BiPlanarVideoRange = retrievePixelFormat_kCVPixelFormatType_HTPC16x8_420YpCbCr12BiPlanarVideoRange(v307);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_HTPC16x8_420YpCbCr12BiPlanarVideoRange, "kCVPixelFormatType_HTPC16x8_420YpCbCr12BiPlanarVideoRange", 0x5B747630, Mutable, v27);
    v309 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(2, &_pixelFormatDictionaryInit(void)::planeCompressionLumaAndChroma, _pixelFormatDictionaryInit(void)::addressFormatLumaAndChroma, 2);
    PixelFormat_kCVPixelFormatType_HTPC16x8_422YpCbCr12BiPlanarVideoRange = retrievePixelFormat_kCVPixelFormatType_HTPC16x8_422YpCbCr12BiPlanarVideoRange(v309);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_HTPC16x8_422YpCbCr12BiPlanarVideoRange, "kCVPixelFormatType_HTPC16x8_422YpCbCr12BiPlanarVideoRange", 0x5B747632, Mutable, v27);
    v311 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(2, &_pixelFormatDictionaryInit(void)::planeCompressionLumaAndChroma, _pixelFormatDictionaryInit(void)::addressFormatLumaAndChroma, 2);
    PixelFormat_kCVPixelFormatType_HTPC16x8_444YpCbCr12BiPlanarVideoRange = retrievePixelFormat_kCVPixelFormatType_HTPC16x8_444YpCbCr12BiPlanarVideoRange(v311);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_HTPC16x8_444YpCbCr12BiPlanarVideoRange, "kCVPixelFormatType_HTPC16x8_444YpCbCr12BiPlanarVideoRange", 0x5B747634, Mutable, v27);
    v313 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(2, &_pixelFormatDictionaryInit(void)::planeCompressionLumaAndChroma, _pixelFormatDictionaryInit(void)::addressFormatLumaAndChroma, 2);
    PixelFormat_kCVPixelFormatType_HTPC16x8_420YpCbCr12BiPlanarFullRange = retrievePixelFormat_kCVPixelFormatType_HTPC16x8_420YpCbCr12BiPlanarFullRange(v313);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_HTPC16x8_420YpCbCr12BiPlanarFullRange, "kCVPixelFormatType_HTPC16x8_420YpCbCr12BiPlanarFullRange", 0x5B746630, Mutable, v27);
    v315 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(2, &_pixelFormatDictionaryInit(void)::planeCompressionLumaAndChroma, _pixelFormatDictionaryInit(void)::addressFormatLumaAndChroma, 2);
    PixelFormat_kCVPixelFormatType_HTPC16x8_422YpCbCr12BiPlanarFullRange = retrievePixelFormat_kCVPixelFormatType_HTPC16x8_422YpCbCr12BiPlanarFullRange(v315);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_HTPC16x8_422YpCbCr12BiPlanarFullRange, "kCVPixelFormatType_HTPC16x8_422YpCbCr12BiPlanarFullRange", 0x5B746632, Mutable, v27);
    v317 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(2, &_pixelFormatDictionaryInit(void)::planeCompressionLumaAndChroma, _pixelFormatDictionaryInit(void)::addressFormatLumaAndChroma, 2);
    PixelFormat_kCVPixelFormatType_HTPC16x8_444YpCbCr12BiPlanarFullRange = retrievePixelFormat_kCVPixelFormatType_HTPC16x8_444YpCbCr12BiPlanarFullRange(v317);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_HTPC16x8_444YpCbCr12BiPlanarFullRange, "kCVPixelFormatType_HTPC16x8_444YpCbCr12BiPlanarFullRange", 0x5B746634, Mutable, v27);
  }

  if (v646)
  {
    if (!v181)
    {
      goto LABEL_277;
    }

    v319 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(1, &_pixelFormatDictionaryInit(void)::planeInterchange, _pixelFormatDictionaryInit(void)::addressFormatInterchange, 41);
    PixelFormat_kCVPixelFormatType_AGX_32BGRA_Universal = retrievePixelFormat_kCVPixelFormatType_AGX_32BGRA_Universal(v319);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_AGX_32BGRA_Universal, "kCVPixelFormatType_AGX_32BGRA", 0x26424741, Mutable, v27);
    v321 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(1, &_pixelFormatDictionaryInit(void)::planeInterchange, _pixelFormatDictionaryInit(void)::addressFormatInterchange, 41);
    PixelFormat_kCVPixelFormatType_AGX_30RGBLEPackedWideGamut_Universal = retrievePixelFormat_kCVPixelFormatType_AGX_30RGBLEPackedWideGamut_Universal(v321);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_AGX_30RGBLEPackedWideGamut_Universal, "kCVPixelFormatType_AGX_30RGBLEPackedWideGamut", 0x26773372, Mutable, v27);
    v323 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(1, &_pixelFormatDictionaryInit(void)::planeInterchange, _pixelFormatDictionaryInit(void)::addressFormatInterchange, 41);
    PixelFormat_kCVPixelFormatType_AGX_40ARGBLEWideGamut_Universal = retrievePixelFormat_kCVPixelFormatType_AGX_40ARGBLEWideGamut_Universal(v323);
  }

  else
  {
    v325 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(1, &_pixelFormatDictionaryInit(void)::planeAGX, _pixelFormatDictionaryInit(void)::addressFormatAGX, 1);
    PixelFormat_kCVPixelFormatType_AGX_16LE565 = retrievePixelFormat_kCVPixelFormatType_AGX_16LE565(v325);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_AGX_16LE565, "kCVPixelFormatType_AGX_16LE565", 0x264C3536, Mutable, v27);
    v327 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(1, &_pixelFormatDictionaryInit(void)::planeAGX, _pixelFormatDictionaryInit(void)::addressFormatAGX, 41);
    PixelFormat_kCVPixelFormatType_AGX_32BGRA_AGX = retrievePixelFormat_kCVPixelFormatType_AGX_32BGRA_AGX(v327);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_AGX_32BGRA_AGX, "kCVPixelFormatType_AGX_32BGRA", 0x26424741, Mutable, v27);
    v329 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(1, &_pixelFormatDictionaryInit(void)::planeAGX, _pixelFormatDictionaryInit(void)::addressFormatAGX, 41);
    PixelFormat_kCVPixelFormatType_AGX_30RGBLEPackedWideGamut_AGX = retrievePixelFormat_kCVPixelFormatType_AGX_30RGBLEPackedWideGamut_AGX(v329);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_AGX_30RGBLEPackedWideGamut_AGX, "kCVPixelFormatType_AGX_30RGBLEPackedWideGamut", 0x26773372, Mutable, v27);
    v331 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(1, &_pixelFormatDictionaryInit(void)::planeAGX, _pixelFormatDictionaryInit(void)::addressFormatAGX, 41);
    PixelFormat_kCVPixelFormatType_AGX_40ARGBLEWideGamut_Universal = retrievePixelFormat_kCVPixelFormatType_AGX_40ARGBLEWideGamut_AGX(v331);
  }

  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_AGX_40ARGBLEWideGamut_Universal, "kCVPixelFormatType_AGX_40ARGBLEWideGamut", 0x26773461, Mutable, v27);
LABEL_277:
  if (v643)
  {
    v332 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(1, &_pixelFormatDictionaryInit(void)::planeInterchange, _pixelFormatDictionaryInit(void)::addressFormatInterchange, 41);
    PixelFormat_kCVPixelFormatType_Lossless_Packed40ARGBLEFullRange = retrievePixelFormat_kCVPixelFormatType_Lossless_Packed40ARGBLEFullRange(v332);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_Lossless_Packed40ARGBLEFullRange, "kCVPixelFormatType_Lossless_Packed40ARGBLEFullRange", 0x266C3461, Mutable, v27);
  }

  if (v646)
  {
    if (!v181)
    {
      goto LABEL_284;
    }

    v334 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(1, &_pixelFormatDictionaryInit(void)::planeInterchange, _pixelFormatDictionaryInit(void)::addressFormatInterchange, 4);
    PixelFormat_kCVPixelFormatType_AGX_OneComponent8_Universal = retrievePixelFormat_kCVPixelFormatType_AGX_OneComponent8_Universal(v334);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_AGX_OneComponent8_Universal, "kCVPixelFormatType_AGX_OneComponent8", 0x264C3038, Mutable, v27);
    v336 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(1, &_pixelFormatDictionaryInit(void)::planeInterchange, _pixelFormatDictionaryInit(void)::addressFormatInterchange, 4);
    PixelFormat_kCVPixelFormatType_AGX_OneComponent10_Universal = retrievePixelFormat_kCVPixelFormatType_AGX_OneComponent10_Universal(v336);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_AGX_OneComponent10_Universal, "kCVPixelFormatType_AGX_OneComponent10", 0x264C3130, Mutable, v27);
    v338 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(1, &_pixelFormatDictionaryInit(void)::planeInterchange, _pixelFormatDictionaryInit(void)::addressFormatInterchange, 41);
    PixelFormat_kCVPixelFormatType_AGX_64RGBAHalf_Universal = retrievePixelFormat_kCVPixelFormatType_AGX_64RGBAHalf_Universal(v338);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_AGX_64RGBAHalf_Universal, "kCVPixelFormatType_AGX_64RGBAHalf", 0x26526841, Mutable, v27);
    v340 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(2, &_pixelFormatDictionaryInit(void)::planeInterchange, _pixelFormatDictionaryInit(void)::addressFormatInterchange, 34);
    PixelFormat_kCVPixelFormatType_AGX_420YpCbCr8BiPlanarVideoRange_Universal = retrievePixelFormat_kCVPixelFormatType_AGX_420YpCbCr8BiPlanarVideoRange_Universal(v340);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_AGX_420YpCbCr8BiPlanarVideoRange_Universal, "kCVPixelFormatType_AGX_420YpCbCr8BiPlanarVideoRange", 0x26387630, Mutable, v27);
    v342 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(2, &_pixelFormatDictionaryInit(void)::planeInterchange, _pixelFormatDictionaryInit(void)::addressFormatInterchange, 34);
    PixelFormat_kCVPixelFormatType_AGX_422YpCbCr8BiPlanarVideoRange_Universal = retrievePixelFormat_kCVPixelFormatType_AGX_422YpCbCr8BiPlanarVideoRange_Universal(v342);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_AGX_422YpCbCr8BiPlanarVideoRange_Universal, "kCVPixelFormatType_AGX_422YpCbCr8BiPlanarVideoRange", 0x26387632, Mutable, v27);
    v344 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(2, &_pixelFormatDictionaryInit(void)::planeInterchange, _pixelFormatDictionaryInit(void)::addressFormatInterchange, 34);
    PixelFormat_kCVPixelFormatType_AGX_444YpCbCr8BiPlanarVideoRange_Universal = retrievePixelFormat_kCVPixelFormatType_AGX_444YpCbCr8BiPlanarVideoRange_Universal(v344);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_AGX_444YpCbCr8BiPlanarVideoRange_Universal, "kCVPixelFormatType_AGX_444YpCbCr8BiPlanarVideoRange", 0x26387634, Mutable, v27);
    v346 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(2, &_pixelFormatDictionaryInit(void)::planeInterchange, _pixelFormatDictionaryInit(void)::addressFormatInterchange, 34);
    PixelFormat_kCVPixelFormatType_AGX_420YpCbCr8BiPlanarFullRange_Universal = retrievePixelFormat_kCVPixelFormatType_AGX_420YpCbCr8BiPlanarFullRange_Universal(v346);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_AGX_420YpCbCr8BiPlanarFullRange_Universal, "kCVPixelFormatType_AGX_420YpCbCr8BiPlanarFullRange", 0x26386630, Mutable, v27);
    v348 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(2, &_pixelFormatDictionaryInit(void)::planeInterchange, _pixelFormatDictionaryInit(void)::addressFormatInterchange, 34);
    PixelFormat_kCVPixelFormatType_AGX_422YpCbCr8BiPlanarFullRange_Universal = retrievePixelFormat_kCVPixelFormatType_AGX_422YpCbCr8BiPlanarFullRange_Universal(v348);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_AGX_422YpCbCr8BiPlanarFullRange_Universal, "kCVPixelFormatType_AGX_422YpCbCr8BiPlanarFullRange", 0x26386632, Mutable, v27);
    v350 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(2, &_pixelFormatDictionaryInit(void)::planeInterchange, _pixelFormatDictionaryInit(void)::addressFormatInterchange, 34);
    PixelFormat_kCVPixelFormatType_AGX_444YpCbCr8BiPlanarFullRange_Universal = retrievePixelFormat_kCVPixelFormatType_AGX_444YpCbCr8BiPlanarFullRange_Universal(v350);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_AGX_444YpCbCr8BiPlanarFullRange_Universal, "kCVPixelFormatType_AGX_444YpCbCr8BiPlanarFullRange", 0x26386634, Mutable, v27);
    v352 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(2, &_pixelFormatDictionaryInit(void)::planeInterchange, _pixelFormatDictionaryInit(void)::addressFormatInterchange, 34);
    PixelFormat_kCVPixelFormatType_AGX_420YpCbCr10PackedBiPlanarVideoRange = retrievePixelFormat_kCVPixelFormatType_AGX_420YpCbCr10PackedBiPlanarVideoRange(v352);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_AGX_420YpCbCr10PackedBiPlanarVideoRange, "kCVPixelFormatType_AGX_420YpCbCr10PackedBiPlanarVideoRange", 0x26787630, Mutable, v27);
    v354 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(2, &_pixelFormatDictionaryInit(void)::planeInterchange, _pixelFormatDictionaryInit(void)::addressFormatInterchange, 34);
    PixelFormat_kCVPixelFormatType_AGX_422YpCbCr10PackedBiPlanarVideoRange = retrievePixelFormat_kCVPixelFormatType_AGX_422YpCbCr10PackedBiPlanarVideoRange(v354);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_AGX_422YpCbCr10PackedBiPlanarVideoRange, "kCVPixelFormatType_AGX_422YpCbCr10PackedBiPlanarVideoRange", 0x26787632, Mutable, v27);
    v356 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(2, &_pixelFormatDictionaryInit(void)::planeInterchange, _pixelFormatDictionaryInit(void)::addressFormatInterchange, 34);
    PixelFormat_kCVPixelFormatType_AGX_444YpCbCr10PackedBiPlanarVideoRange = retrievePixelFormat_kCVPixelFormatType_AGX_444YpCbCr10PackedBiPlanarVideoRange(v356);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_AGX_444YpCbCr10PackedBiPlanarVideoRange, "kCVPixelFormatType_AGX_444YpCbCr10PackedBiPlanarVideoRange", 0x26787634, Mutable, v27);
    v358 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(2, &_pixelFormatDictionaryInit(void)::planeInterchange, _pixelFormatDictionaryInit(void)::addressFormatInterchange, 34);
    PixelFormat_kCVPixelFormatType_AGX_420YpCbCr10PackedBiPlanarFullRange = retrievePixelFormat_kCVPixelFormatType_AGX_420YpCbCr10PackedBiPlanarFullRange(v358);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_AGX_420YpCbCr10PackedBiPlanarFullRange, "kCVPixelFormatType_AGX_420YpCbCr10PackedBiPlanarFullRange", 0x26786630, Mutable, v27);
    v360 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(2, &_pixelFormatDictionaryInit(void)::planeInterchange, _pixelFormatDictionaryInit(void)::addressFormatInterchange, 34);
    PixelFormat_kCVPixelFormatType_AGX_422YpCbCr10PackedBiPlanarFullRange = retrievePixelFormat_kCVPixelFormatType_AGX_422YpCbCr10PackedBiPlanarFullRange(v360);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_AGX_422YpCbCr10PackedBiPlanarFullRange, "kCVPixelFormatType_AGX_422YpCbCr10PackedBiPlanarFullRange", 0x26786632, Mutable, v27);
    v362 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(2, &_pixelFormatDictionaryInit(void)::planeInterchange, _pixelFormatDictionaryInit(void)::addressFormatInterchange, 34);
    PixelFormat_kCVPixelFormatType_AGX_444YpCbCr10PackedBiPlanarFullRange = retrievePixelFormat_kCVPixelFormatType_AGX_444YpCbCr10PackedBiPlanarFullRange(v362);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_AGX_444YpCbCr10PackedBiPlanarFullRange, "kCVPixelFormatType_AGX_444YpCbCr10PackedBiPlanarFullRange", 0x26786634, Mutable, v27);
    v364 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(2, &_pixelFormatDictionaryInit(void)::planeInterchange, _pixelFormatDictionaryInit(void)::addressFormatInterchange, 34);
    PixelFormat_kCVPixelFormatType_AGX_420YpCbCr10PackedBiPlanarWideRange = retrievePixelFormat_kCVPixelFormatType_AGX_420YpCbCr10PackedBiPlanarWideRange(v364);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_AGX_420YpCbCr10PackedBiPlanarWideRange, "kCVPixelFormatType_AGX_420YpCbCr10PackedBiPlanarWideRange", 0x26787730, Mutable, v27);
    v366 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(2, &_pixelFormatDictionaryInit(void)::planeInterchange, _pixelFormatDictionaryInit(void)::addressFormatInterchange, 34);
    PixelFormat_kCVPixelFormatType_AGX_422YpCbCr10PackedBiPlanarWideRange = retrievePixelFormat_kCVPixelFormatType_AGX_422YpCbCr10PackedBiPlanarWideRange(v366);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_AGX_422YpCbCr10PackedBiPlanarWideRange, "kCVPixelFormatType_AGX_422YpCbCr10PackedBiPlanarWideRange", 0x26787732, Mutable, v27);
    v368 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(2, &_pixelFormatDictionaryInit(void)::planeInterchange, _pixelFormatDictionaryInit(void)::addressFormatInterchange, 34);
    PixelFormat_kCVPixelFormatType_AGX_444YpCbCr10PackedBiPlanarWideRange = retrievePixelFormat_kCVPixelFormatType_AGX_444YpCbCr10PackedBiPlanarWideRange(v368);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_AGX_444YpCbCr10PackedBiPlanarWideRange, "kCVPixelFormatType_AGX_444YpCbCr10PackedBiPlanarWideRange", 0x26787734, Mutable, v27);
    v370 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(2, &_pixelFormatDictionaryInit(void)::planeInterchange, _pixelFormatDictionaryInit(void)::addressFormatInterchange, 34);
    PixelFormat_kCVPixelFormatType_AGX_420YpCbCr12PackedBiPlanarVideoRange = retrievePixelFormat_kCVPixelFormatType_AGX_420YpCbCr12PackedBiPlanarVideoRange(v370);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_AGX_420YpCbCr12PackedBiPlanarVideoRange, "kCVPixelFormatType_AGX_420YpCbCr12PackedBiPlanarVideoRange", 0x26747630, Mutable, v27);
    v372 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(2, &_pixelFormatDictionaryInit(void)::planeInterchange, _pixelFormatDictionaryInit(void)::addressFormatInterchange, 34);
    PixelFormat_kCVPixelFormatType_AGX_422YpCbCr12PackedBiPlanarVideoRange = retrievePixelFormat_kCVPixelFormatType_AGX_422YpCbCr12PackedBiPlanarVideoRange(v372);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_AGX_422YpCbCr12PackedBiPlanarVideoRange, "kCVPixelFormatType_AGX_422YpCbCr12PackedBiPlanarVideoRange", 0x26747632, Mutable, v27);
    v374 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(2, &_pixelFormatDictionaryInit(void)::planeInterchange, _pixelFormatDictionaryInit(void)::addressFormatInterchange, 34);
    PixelFormat_kCVPixelFormatType_AGX_444YpCbCr12PackedBiPlanarVideoRange = retrievePixelFormat_kCVPixelFormatType_AGX_444YpCbCr12PackedBiPlanarVideoRange(v374);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_AGX_444YpCbCr12PackedBiPlanarVideoRange, "kCVPixelFormatType_AGX_444YpCbCr12PackedBiPlanarVideoRange", 0x26747634, Mutable, v27);
    v376 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(2, &_pixelFormatDictionaryInit(void)::planeInterchange, _pixelFormatDictionaryInit(void)::addressFormatInterchange, 34);
    PixelFormat_kCVPixelFormatType_AGX_420YpCbCr12PackedBiPlanarFullRange = retrievePixelFormat_kCVPixelFormatType_AGX_420YpCbCr12PackedBiPlanarFullRange(v376);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_AGX_420YpCbCr12PackedBiPlanarFullRange, "kCVPixelFormatType_AGX_420YpCbCr12PackedBiPlanarFullRange", 0x26746630, Mutable, v27);
    v378 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(2, &_pixelFormatDictionaryInit(void)::planeInterchange, _pixelFormatDictionaryInit(void)::addressFormatInterchange, 34);
    PixelFormat_kCVPixelFormatType_AGX_422YpCbCr12PackedBiPlanarFullRange = retrievePixelFormat_kCVPixelFormatType_AGX_422YpCbCr12PackedBiPlanarFullRange(v378);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_AGX_422YpCbCr12PackedBiPlanarFullRange, "kCVPixelFormatType_AGX_422YpCbCr12PackedBiPlanarFullRange", 0x26746632, Mutable, v27);
    v380 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(2, &_pixelFormatDictionaryInit(void)::planeInterchange, _pixelFormatDictionaryInit(void)::addressFormatInterchange, 34);
    PixelFormat_kCVPixelFormatType_AGX_444YpCbCr12PackedBiPlanarFullRange = retrievePixelFormat_kCVPixelFormatType_AGX_444YpCbCr12PackedBiPlanarFullRange(v380);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_AGX_444YpCbCr12PackedBiPlanarFullRange, "kCVPixelFormatType_AGX_444YpCbCr12PackedBiPlanarFullRange", 0x26746634, Mutable, v27);
    v382 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(2, &_pixelFormatDictionaryInit(void)::planeInterchange, _pixelFormatDictionaryInit(void)::addressFormatInterchange, 34);
    PixelFormat_kCVPixelFormatType_AGX_420YpCbCr16BiPlanarFullRange = retrievePixelFormat_kCVPixelFormatType_AGX_420YpCbCr16BiPlanarFullRange(v382);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_AGX_420YpCbCr16BiPlanarFullRange, "kCVPixelFormatType_AGX_420YpCbCr16BiPlanarFullRange", 0x26736630, Mutable, v27);
    v384 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(2, &_pixelFormatDictionaryInit(void)::planeInterchange, _pixelFormatDictionaryInit(void)::addressFormatInterchange, 34);
    PixelFormat_kCVPixelFormatType_AGX_422YpCbCr16BiPlanarFullRange = retrievePixelFormat_kCVPixelFormatType_AGX_422YpCbCr16BiPlanarFullRange(v384);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_AGX_422YpCbCr16BiPlanarFullRange, "kCVPixelFormatType_AGX_422YpCbCr16BiPlanarFullRange", 0x26736632, Mutable, v27);
    v386 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(2, &_pixelFormatDictionaryInit(void)::planeInterchange, _pixelFormatDictionaryInit(void)::addressFormatInterchange, 34);
    PixelFormat_kCVPixelFormatType_AGX_444YpCbCr16BiPlanarFullRange = retrievePixelFormat_kCVPixelFormatType_AGX_444YpCbCr16BiPlanarFullRange(v386);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_AGX_444YpCbCr16BiPlanarFullRange, "kCVPixelFormatType_AGX_444YpCbCr16BiPlanarFullRange", 0x26736634, Mutable, v27);
    v388 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(2, &_pixelFormatDictionaryInit(void)::planeInterchange, _pixelFormatDictionaryInit(void)::addressFormatInterchange, 34);
    PixelFormat_kCVPixelFormatType_AGX_420YpCbCr16BiPlanarVideoRange = retrievePixelFormat_kCVPixelFormatType_AGX_420YpCbCr16BiPlanarVideoRange(v388);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_AGX_420YpCbCr16BiPlanarVideoRange, "kCVPixelFormatType_AGX_420YpCbCr16BiPlanarVideoRange", 0x26737630, Mutable, v27);
    v390 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(2, &_pixelFormatDictionaryInit(void)::planeInterchange, _pixelFormatDictionaryInit(void)::addressFormatInterchange, 34);
    PixelFormat_kCVPixelFormatType_AGX_422YpCbCr16BiPlanarVideoRange = retrievePixelFormat_kCVPixelFormatType_AGX_422YpCbCr16BiPlanarVideoRange(v390);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_AGX_422YpCbCr16BiPlanarVideoRange, "kCVPixelFormatType_AGX_422YpCbCr16BiPlanarVideoRange", 0x26737632, Mutable, v27);
    v392 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(2, &_pixelFormatDictionaryInit(void)::planeInterchange, _pixelFormatDictionaryInit(void)::addressFormatInterchange, 34);
    PixelFormat_kCVPixelFormatType_AGX_444YpCbCr16BiPlanarVideoRange = retrievePixelFormat_kCVPixelFormatType_AGX_444YpCbCr16BiPlanarVideoRange(v392);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_AGX_444YpCbCr16BiPlanarVideoRange, "kCVPixelFormatType_AGX_444YpCbCr16BiPlanarVideoRange", 0x26737634, Mutable, v27);
    v394 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(1, &_pixelFormatDictionaryInit(void)::planeInterchange, _pixelFormatDictionaryInit(void)::addressFormatInterchange, 34);
    PixelFormat_kCVPixelFormatType_AGX_444YpCbCr10PackedVideoRange = retrievePixelFormat_kCVPixelFormatType_AGX_444YpCbCr10PackedVideoRange(v394);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_AGX_444YpCbCr10PackedVideoRange, "kCVPixelFormatType_AGX_444YpCbCr10PackedVideoRange", 0x26343470, Mutable, v27);
    v396 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(1, &_pixelFormatDictionaryInit(void)::planeInterchange, _pixelFormatDictionaryInit(void)::addressFormatInterchange, 34);
    PixelFormat_kCVPixelFormatType_AGX_444YpCbCr10PackedFullRange = retrievePixelFormat_kCVPixelFormatType_AGX_444YpCbCr10PackedFullRange(v396);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_AGX_444YpCbCr10PackedFullRange, "kCVPixelFormatType_AGX_444YpCbCr10PackedFullRange", 0x26663470, Mutable, v27);
    v398 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(1, &_pixelFormatDictionaryInit(void)::planeInterchange, _pixelFormatDictionaryInit(void)::addressFormatInterchange, 2);
    PixelFormat_kCVPixelFormatType_AGX_422YpCbCr8VideoRange = retrievePixelFormat_kCVPixelFormatType_AGX_422YpCbCr8VideoRange(v398);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_AGX_422YpCbCr8VideoRange, "kCVPixelFormatType_AGX_422YpCbCr8VideoRange", 0x26797573, Mutable, v27);
    v400 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(1, &_pixelFormatDictionaryInit(void)::planeInterchange, _pixelFormatDictionaryInit(void)::addressFormatInterchange, 2);
    PixelFormat_kCVPixelFormatType_AGX_422YpCbCr8FullRange = retrievePixelFormat_kCVPixelFormatType_AGX_422YpCbCr8FullRange(v400);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_AGX_422YpCbCr8FullRange, "kCVPixelFormatType_AGX_422YpCbCr8FullRange", 0x26797566, Mutable, v27);
    v402 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(1, &_pixelFormatDictionaryInit(void)::planeInterchange, _pixelFormatDictionaryInit(void)::addressFormatInterchange, 4);
    PixelFormat_kCVPixelFormatType_AGX_OneComponent16 = retrievePixelFormat_kCVPixelFormatType_AGX_OneComponent16(v402);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_AGX_OneComponent16, "kCVPixelFormatType_AGX_OneComponent16", 0x264C3136, Mutable, v27);
    v404 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(1, &_pixelFormatDictionaryInit(void)::planeInterchange, _pixelFormatDictionaryInit(void)::addressFormatInterchange, 4);
    PixelFormat_kCVPixelFormatType_AGX_OneComponent16Half = retrievePixelFormat_kCVPixelFormatType_AGX_OneComponent16Half(v404);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_AGX_OneComponent16Half, "kCVPixelFormatType_AGX_OneComponent16Half", 0x264C3068, Mutable, v27);
    v406 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(1, &_pixelFormatDictionaryInit(void)::planeInterchange, _pixelFormatDictionaryInit(void)::addressFormatInterchange, 4);
    PixelFormat_kCVPixelFormatType_AGX_TwoComponent16Half = retrievePixelFormat_kCVPixelFormatType_AGX_TwoComponent16Half(v406);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_AGX_TwoComponent16Half, "kCVPixelFormatType_AGX_TwoComponent16Half", 0x26323068, Mutable, v27);
    v408 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(1, &_pixelFormatDictionaryInit(void)::planeInterchange, _pixelFormatDictionaryInit(void)::addressFormatInterchange, 41);
    PixelFormat_kCVPixelFormatType_AGX_ARGB2101010LEPacked = retrievePixelFormat_kCVPixelFormatType_AGX_ARGB2101010LEPacked(v408);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_AGX_ARGB2101010LEPacked, "kCVPixelFormatType_AGX_ARGB2101010LEPacked", 0x266C3172, Mutable, v27);
    v410 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(2, &_pixelFormatDictionaryInit(void)::planeInterchange, _pixelFormatDictionaryInit(void)::addressFormatInterchange, 41);
    PixelFormat_kCVPixelFormatType_AGX_30RGBLE_8A_BiPlanar = retrievePixelFormat_kCVPixelFormatType_AGX_30RGBLE_8A_BiPlanar(v410);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_AGX_30RGBLE_8A_BiPlanar, "kCVPixelFormatType_AGX_30RGBLE_8A_BiPlanar", 0x26623338, Mutable, v27);
    v412 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(2, &_pixelFormatDictionaryInit(void)::planeInterchange, _pixelFormatDictionaryInit(void)::addressFormatInterchange, 41);
    PixelFormat_kCVPixelFormatType_AGX_30RGBLEFullRange_8A_BiPlanar = retrievePixelFormat_kCVPixelFormatType_AGX_30RGBLEFullRange_8A_BiPlanar(v412);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_AGX_30RGBLEFullRange_8A_BiPlanar, "kCVPixelFormatType_AGX_30RGBLEFullRange_8A_BiPlanar", 0x26663338, Mutable, v27);
    v414 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(1, &_pixelFormatDictionaryInit(void)::planeInterchange, _pixelFormatDictionaryInit(void)::addressFormatInterchange, 4);
    PixelFormat_kCVPixelFormatType_AGX_OneComponent12 = retrievePixelFormat_kCVPixelFormatType_AGX_OneComponent12(v414);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_AGX_OneComponent12, "kCVPixelFormatType_AGX_OneComponent12", 0x264C3132, Mutable, v27);
    v416 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(1, &_pixelFormatDictionaryInit(void)::planeInterchange, _pixelFormatDictionaryInit(void)::addressFormatInterchange, 4);
    PixelFormat_kCVPixelFormatType_AGX_TwoComponent8 = retrievePixelFormat_kCVPixelFormatType_AGX_TwoComponent8(v416);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_AGX_TwoComponent8, "kCVPixelFormatType_AGX_TwoComponent8", 0x26323038, Mutable, v27);
    v418 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(3, &_pixelFormatDictionaryInit(void)::planeInterchange, _pixelFormatDictionaryInit(void)::addressFormatInterchange, 42);
    PixelFormat_kCVPixelFormatType_AGX_420YpCbCr8VideoRange_8A_TriPlanar = retrievePixelFormat_kCVPixelFormatType_AGX_420YpCbCr8VideoRange_8A_TriPlanar(v418);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_AGX_420YpCbCr8VideoRange_8A_TriPlanar, "kCVPixelFormatType_AGX_420YpCbCr8VideoRange_8A_TriPlanar", 0x26763038, Mutable, v27);
    v420 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(3, &_pixelFormatDictionaryInit(void)::planeInterchange, _pixelFormatDictionaryInit(void)::addressFormatInterchange, 42);
    PixelFormat_kCVPixelFormatType_AGX_422YpCbCr8VideoRange_8A_TriPlanar = retrievePixelFormat_kCVPixelFormatType_AGX_422YpCbCr8VideoRange_8A_TriPlanar(v420);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_AGX_422YpCbCr8VideoRange_8A_TriPlanar, "kCVPixelFormatType_AGX_422YpCbCr8VideoRange_8A_TriPlanar", 0x26763238, Mutable, v27);
    v422 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(3, &_pixelFormatDictionaryInit(void)::planeInterchange, _pixelFormatDictionaryInit(void)::addressFormatInterchange, 42);
    PixelFormat_kCVPixelFormatType_AGX_444YpCbCr8VideoRange_8A_TriPlanar = retrievePixelFormat_kCVPixelFormatType_AGX_444YpCbCr8VideoRange_8A_TriPlanar(v422);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_AGX_444YpCbCr8VideoRange_8A_TriPlanar, "kCVPixelFormatType_AGX_444YpCbCr8VideoRange_8A_TriPlanar", 0x26763438, Mutable, v27);
    v424 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(3, &_pixelFormatDictionaryInit(void)::planeInterchange, _pixelFormatDictionaryInit(void)::addressFormatInterchange, 42);
    PixelFormat_kCVPixelFormatType_AGX_444YpCbCr10PackedVideoRange_16A_TriPlanar = retrievePixelFormat_kCVPixelFormatType_AGX_444YpCbCr10PackedVideoRange_16A_TriPlanar(v424);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_AGX_444YpCbCr10PackedVideoRange_16A_TriPlanar, "kCVPixelFormatType_AGX_444YpCbCr10PackedVideoRange_16A_TriPlanar", 0x26783473, Mutable, v27);
    v426 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(3, &_pixelFormatDictionaryInit(void)::planeInterchange, _pixelFormatDictionaryInit(void)::addressFormatInterchange, 42);
    PixelFormat_kCVPixelFormatType_AGX_444YpCbCr12PackedVideoRange_16A_TriPlanar = retrievePixelFormat_kCVPixelFormatType_AGX_444YpCbCr12PackedVideoRange_16A_TriPlanar(v426);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_AGX_444YpCbCr12PackedVideoRange_16A_TriPlanar, "kCVPixelFormatType_AGX_444YpCbCr12PackedVideoRange_16A_TriPlanar", 0x26743473, Mutable, v27);
    v428 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(3, &_pixelFormatDictionaryInit(void)::planeInterchange, _pixelFormatDictionaryInit(void)::addressFormatInterchange, 42);
    PixelFormat_kCVPixelFormatType_AGX_444YpCbCr16VideoRange_16A_TriPlanar = retrievePixelFormat_kCVPixelFormatType_AGX_444YpCbCr16VideoRange_16A_TriPlanar(v428);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_AGX_444YpCbCr16VideoRange_16A_TriPlanar, "kCVPixelFormatType_AGX_444YpCbCr16VideoRange_16A_TriPlanar", 0x26733473, Mutable, v27);
    v430 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(3, &_pixelFormatDictionaryInit(void)::planeInterchange, _pixelFormatDictionaryInit(void)::addressFormatInterchange, 42);
    PixelFormat_kCVPixelFormatType_AGX_422YpCbCr10PackedVideoRange_16A_TriPlanar = retrievePixelFormat_kCVPixelFormatType_AGX_422YpCbCr10PackedVideoRange_16A_TriPlanar(v430);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_AGX_422YpCbCr10PackedVideoRange_16A_TriPlanar, "kCVPixelFormatType_AGX_422YpCbCr10PackedVideoRange_16A_TriPlanar", 0x26783273, Mutable, v27);
    v432 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(3, &_pixelFormatDictionaryInit(void)::planeInterchange, _pixelFormatDictionaryInit(void)::addressFormatInterchange, 42);
    PixelFormat_kCVPixelFormatType_AGX_422YpCbCr12PackedVideoRange_16A_TriPlanar = retrievePixelFormat_kCVPixelFormatType_AGX_422YpCbCr12PackedVideoRange_16A_TriPlanar(v432);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_AGX_422YpCbCr12PackedVideoRange_16A_TriPlanar, "kCVPixelFormatType_AGX_422YpCbCr12PackedVideoRange_16A_TriPlanar", 0x26743273, Mutable, v27);
    v434 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(3, &_pixelFormatDictionaryInit(void)::planeInterchange, _pixelFormatDictionaryInit(void)::addressFormatInterchange, 42);
    PixelFormat_kCVPixelFormatType_AGX_422YpCbCr16VideoRange_16A_TriPlanar = retrievePixelFormat_kCVPixelFormatType_AGX_422YpCbCr16VideoRange_16A_TriPlanar(v434);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_AGX_422YpCbCr16VideoRange_16A_TriPlanar, "kCVPixelFormatType_AGX_422YpCbCr16VideoRange_16A_TriPlanar", 0x26733273, Mutable, v27);
    v436 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(3, &_pixelFormatDictionaryInit(void)::planeInterchange, _pixelFormatDictionaryInit(void)::addressFormatInterchange, 42);
    PixelFormat_kCVPixelFormatType_AGX_420YpCbCr10VideoRange_8A_TriPlanar = retrievePixelFormat_kCVPixelFormatType_AGX_420YpCbCr10VideoRange_8A_TriPlanar(v436);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_AGX_420YpCbCr10VideoRange_8A_TriPlanar, "kCVPixelFormatType_AGX_420YpCbCr10VideoRange_8A_TriPlanar", 0x26783038, Mutable, v27);
    v438 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(3, &_pixelFormatDictionaryInit(void)::planeInterchange, _pixelFormatDictionaryInit(void)::addressFormatInterchange, 42);
    PixelFormat_kCVPixelFormatType_AGX_422YpCbCr10VideoRange_8A_TriPlanar = retrievePixelFormat_kCVPixelFormatType_AGX_422YpCbCr10VideoRange_8A_TriPlanar(v438);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_AGX_422YpCbCr10VideoRange_8A_TriPlanar, "kCVPixelFormatType_AGX_422YpCbCr10VideoRange_8A_TriPlanar", 0x26783238, Mutable, v27);
    v440 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(3, &_pixelFormatDictionaryInit(void)::planeInterchange, _pixelFormatDictionaryInit(void)::addressFormatInterchange, 42);
    PixelFormat_kCVPixelFormatType_AGX_444YpCbCr10VideoRange_8A_TriPlanar = retrievePixelFormat_kCVPixelFormatType_AGX_444YpCbCr10VideoRange_8A_TriPlanar(v440);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_AGX_444YpCbCr10VideoRange_8A_TriPlanar, "kCVPixelFormatType_AGX_444YpCbCr10VideoRange_8A_TriPlanar", 0x26783438, Mutable, v27);
    v442 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(2, &_pixelFormatDictionaryInit(void)::planeInterchangeUncompressed, _pixelFormatDictionaryInit(void)::addressFormatInterchange, 2);
    PixelFormat_kCVPixelFormatType_UncompressedTiled_420YpCbCr8BiPlanarVideoRange = retrievePixelFormat_kCVPixelFormatType_UncompressedTiled_420YpCbCr8BiPlanarVideoRange(v442);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_UncompressedTiled_420YpCbCr8BiPlanarVideoRange, "kCVPixelFormatType_UncompressedTiled_420YpCbCr8BiPlanarVideoRange", 0x23387630, Mutable, v27);
    v181 = v647;
    v444 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(2, &_pixelFormatDictionaryInit(void)::planeInterchangeUncompressed, _pixelFormatDictionaryInit(void)::addressFormatInterchange, 2);
    PixelFormat_kCVPixelFormatType_UncompressedTiled_420YpCbCr8BiPlanarFullRange = retrievePixelFormat_kCVPixelFormatType_UncompressedTiled_420YpCbCr8BiPlanarFullRange(v444);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_UncompressedTiled_420YpCbCr8BiPlanarFullRange, "kCVPixelFormatType_UncompressedTiled_420YpCbCr8BiPlanarFullRange", 0x23386630, Mutable, v27);
    v446 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(2, &_pixelFormatDictionaryInit(void)::planeInterchange, _pixelFormatDictionaryInit(void)::addressFormatInterchange, 2);
    PixelFormat_kCVPixelFormatType_Lossless_420YpCbCrFloat16BiPlanarFullRange = retrievePixelFormat_kCVPixelFormatType_Lossless_420YpCbCrFloat16BiPlanarFullRange(v446);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_Lossless_420YpCbCrFloat16BiPlanarFullRange, "kCVPixelFormatType_Lossless_420YpCbCrFloat16BiPlanarFullRange", 0x26686630, Mutable, v27);
    v448 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(2, &_pixelFormatDictionaryInit(void)::planeInterchange, _pixelFormatDictionaryInit(void)::addressFormatInterchange, 2);
    PixelFormat_kCVPixelFormatType_Lossless_422YpCbCrFloat16BiPlanarFullRange = retrievePixelFormat_kCVPixelFormatType_Lossless_422YpCbCrFloat16BiPlanarFullRange(v448);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_Lossless_422YpCbCrFloat16BiPlanarFullRange, "kCVPixelFormatType_Lossless_422YpCbCrFloat16BiPlanarFullRange", 0x26686632, Mutable, v27);
    v450 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(2, &_pixelFormatDictionaryInit(void)::planeInterchange, _pixelFormatDictionaryInit(void)::addressFormatInterchange, 2);
    PixelFormat_kCVPixelFormatType_Lossless_444YpCbCrFloat16BiPlanarFullRange = retrievePixelFormat_kCVPixelFormatType_Lossless_444YpCbCrFloat16BiPlanarFullRange(v450);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_Lossless_444YpCbCrFloat16BiPlanarFullRange, "kCVPixelFormatType_Lossless_444YpCbCrFloat16BiPlanarFullRange", 0x26686634, Mutable, v27);
    v452 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(1, &_pixelFormatDictionaryInit(void)::planeInterchange, _pixelFormatDictionaryInit(void)::addressFormatInterchange, 192);
    PixelFormat_kCVPixelFormatType_Lossless_64HalfRegroupedSenselArray = retrievePixelFormat_kCVPixelFormatType_Lossless_64HalfRegroupedSenselArray(v452);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_Lossless_64HalfRegroupedSenselArray, "kCVPixelFormatType_Lossless_64HalfRegroupedSenselArray", 0x26623668, Mutable, v27);
    v454 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(1, &_pixelFormatDictionaryInit(void)::planeInterchange, _pixelFormatDictionaryInit(void)::addressFormatInterchange, 192);
    PixelFormat_kCVPixelFormatType_Lossless_RegroupedSenselArray12CompandedIn8 = retrievePixelFormat_kCVPixelFormatType_Lossless_RegroupedSenselArray12CompandedIn8(v454);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_Lossless_RegroupedSenselArray12CompandedIn8, "kCVPixelFormatType_Lossless_RegroupedSenselArray12CompandedIn8", 0x26746338, Mutable, v27);
    v456 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(1, &_pixelFormatDictionaryInit(void)::planeInterchange, _pixelFormatDictionaryInit(void)::addressFormatInterchange, 192);
    PixelFormat_kCVPixelFormatType_Lossless_RegroupedSenselArray10CompandedIn8 = retrievePixelFormat_kCVPixelFormatType_Lossless_RegroupedSenselArray10CompandedIn8(v456);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_Lossless_RegroupedSenselArray10CompandedIn8, "kCVPixelFormatType_Lossless_RegroupedSenselArray10CompandedIn8", 0x26786338, Mutable, v27);
    v458 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(1, &_pixelFormatDictionaryInit(void)::planeInterchange, _pixelFormatDictionaryInit(void)::addressFormatInterchange, 192);
    PixelFormat_kCVPixelFormatType_Lossless_64SixteenRegroupedSenselArray = retrievePixelFormat_kCVPixelFormatType_Lossless_64SixteenRegroupedSenselArray(v458);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_Lossless_64SixteenRegroupedSenselArray, "kCVPixelFormatType_Lossless_64SixteenRegroupedSenselArray", 0x26623673, Mutable, v27);
    v460 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(1, &_pixelFormatDictionaryInit(void)::planeInterchange, _pixelFormatDictionaryInit(void)::addressFormatInterchange, 0);
    PixelFormat_kCVPixelFormatType_Lossless_DisparityFloat16 = retrievePixelFormat_kCVPixelFormatType_Lossless_DisparityFloat16(v460);
    v462 = "kCVPixelFormatType_Lossless_DisparityFloat16";
    v463 = 644375667;
  }

  else
  {
    v464 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(1, &_pixelFormatDictionaryInit(void)::planeAGX, _pixelFormatDictionaryInit(void)::addressFormatAGX, 4);
    PixelFormat_kCVPixelFormatType_AGX_OneComponent8_AGX = retrievePixelFormat_kCVPixelFormatType_AGX_OneComponent8_AGX(v464);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_AGX_OneComponent8_AGX, "kCVPixelFormatType_AGX_OneComponent8", 0x264C3038, Mutable, v27);
    v466 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(1, &_pixelFormatDictionaryInit(void)::planeAGX, _pixelFormatDictionaryInit(void)::addressFormatAGX, 4);
    PixelFormat_kCVPixelFormatType_AGX_OneComponent10_AGX = retrievePixelFormat_kCVPixelFormatType_AGX_OneComponent10_AGX(v466);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_AGX_OneComponent10_AGX, "kCVPixelFormatType_AGX_OneComponent10", 0x264C3130, Mutable, v27);
    v468 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(1, &_pixelFormatDictionaryInit(void)::planeAGX, _pixelFormatDictionaryInit(void)::addressFormatAGX, 41);
    PixelFormat_kCVPixelFormatType_AGX_64RGBAHalf_AGX = retrievePixelFormat_kCVPixelFormatType_AGX_64RGBAHalf_AGX(v468);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_AGX_64RGBAHalf_AGX, "kCVPixelFormatType_AGX_64RGBAHalf", 0x26526841, Mutable, v27);
    v470 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(2, &_pixelFormatDictionaryInit(void)::planeAGX, _pixelFormatDictionaryInit(void)::addressFormatAGX, 34);
    PixelFormat_kCVPixelFormatType_AGX_420YpCbCr8BiPlanarVideoRange_AGX = retrievePixelFormat_kCVPixelFormatType_AGX_420YpCbCr8BiPlanarVideoRange_AGX(v470);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_AGX_420YpCbCr8BiPlanarVideoRange_AGX, "kCVPixelFormatType_AGX_420YpCbCr8BiPlanarVideoRange", 0x26387630, Mutable, v27);
    v472 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(2, &_pixelFormatDictionaryInit(void)::planeAGX, _pixelFormatDictionaryInit(void)::addressFormatAGX, 34);
    PixelFormat_kCVPixelFormatType_AGX_422YpCbCr8BiPlanarVideoRange_AGX = retrievePixelFormat_kCVPixelFormatType_AGX_422YpCbCr8BiPlanarVideoRange_AGX(v472);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_AGX_422YpCbCr8BiPlanarVideoRange_AGX, "kCVPixelFormatType_AGX_422YpCbCr8BiPlanarVideoRange", 0x26387632, Mutable, v27);
    v474 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(2, &_pixelFormatDictionaryInit(void)::planeAGX, _pixelFormatDictionaryInit(void)::addressFormatAGX, 34);
    PixelFormat_kCVPixelFormatType_AGX_444YpCbCr8BiPlanarVideoRange_AGX = retrievePixelFormat_kCVPixelFormatType_AGX_444YpCbCr8BiPlanarVideoRange_AGX(v474);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_AGX_444YpCbCr8BiPlanarVideoRange_AGX, "kCVPixelFormatType_AGX_444YpCbCr8BiPlanarVideoRange", 0x26387634, Mutable, v27);
    v476 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(2, &_pixelFormatDictionaryInit(void)::planeAGX, _pixelFormatDictionaryInit(void)::addressFormatAGX, 34);
    PixelFormat_kCVPixelFormatType_AGX_420YpCbCr8BiPlanarFullRange_AGX = retrievePixelFormat_kCVPixelFormatType_AGX_420YpCbCr8BiPlanarFullRange_AGX(v476);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_AGX_420YpCbCr8BiPlanarFullRange_AGX, "kCVPixelFormatType_AGX_420YpCbCr8BiPlanarFullRange", 0x26386630, Mutable, v27);
    v478 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(2, &_pixelFormatDictionaryInit(void)::planeAGX, _pixelFormatDictionaryInit(void)::addressFormatAGX, 34);
    PixelFormat_kCVPixelFormatType_AGX_422YpCbCr8BiPlanarFullRange_AGX = retrievePixelFormat_kCVPixelFormatType_AGX_422YpCbCr8BiPlanarFullRange_AGX(v478);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_AGX_422YpCbCr8BiPlanarFullRange_AGX, "kCVPixelFormatType_AGX_422YpCbCr8BiPlanarFullRange", 0x26386632, Mutable, v27);
    v480 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(2, &_pixelFormatDictionaryInit(void)::planeAGX, _pixelFormatDictionaryInit(void)::addressFormatAGX, 34);
    PixelFormat_kCVPixelFormatType_Lossless_DisparityFloat16 = retrievePixelFormat_kCVPixelFormatType_AGX_444YpCbCr8BiPlanarFullRange_AGX(v480);
    v462 = "kCVPixelFormatType_AGX_444YpCbCr8BiPlanarFullRange";
    v463 = 641230388;
  }

  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_Lossless_DisparityFloat16, v462, v463, Mutable, v27);
LABEL_284:
  if (v644)
  {
    v481 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(1, &_pixelFormatDictionaryInit(void)::planeInterchangeMultiSlice, _pixelFormatDictionaryInit(void)::addressFormatInterchange, 4);
    PixelFormat_kCVPixelFormatType_MultiSlice_Lossless_OneComponent16Half = retrievePixelFormat_kCVPixelFormatType_MultiSlice_Lossless_OneComponent16Half(v481);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_MultiSlice_Lossless_OneComponent16Half, "kCVPixelFormatType_MultiSlice_Lossless_OneComponent16Half", 0x2A264C68, Mutable, v27);
    v483 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(1, &_pixelFormatDictionaryInit(void)::planeInterchangeUncompressedMultiSlice, _pixelFormatDictionaryInit(void)::addressFormatInterchange, 4);
    PixelFormat_kCVPixelFormatType_MultiSlice_UncompressedTiled_OneComponent16Half = retrievePixelFormat_kCVPixelFormatType_MultiSlice_UncompressedTiled_OneComponent16Half(v483);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_MultiSlice_UncompressedTiled_OneComponent16Half, "kCVPixelFormatType_MultiSlice_UncompressedTiled_OneComponent16Half", 0x2A234C68, Mutable, v27);
  }

  if (v645)
  {
    v485 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(2, &_pixelFormatDictionaryInit(void)::planeInterchangeLossy75, _pixelFormatDictionaryInit(void)::addressFormatInterchange, 34);
    PixelFormat_kCVPixelFormatType_Lossy75_420YpCbCr8BiPlanarVideoRange = retrievePixelFormat_kCVPixelFormatType_Lossy75_420YpCbCr8BiPlanarVideoRange(v485);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_Lossy75_420YpCbCr8BiPlanarVideoRange, "kCVPixelFormatType_Lossy75_420YpCbCr8BiPlanarVideoRange", 0x2D387630, Mutable, v27);
    v487 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(2, &_pixelFormatDictionaryInit(void)::planeInterchangeLossy75, _pixelFormatDictionaryInit(void)::addressFormatInterchange, 34);
    PixelFormat_kCVPixelFormatType_Lossy75_420YpCbCr8BiPlanarFullRange = retrievePixelFormat_kCVPixelFormatType_Lossy75_420YpCbCr8BiPlanarFullRange(v487);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_Lossy75_420YpCbCr8BiPlanarFullRange, "kCVPixelFormatType_Lossy75_420YpCbCr8BiPlanarFullRange", 0x2D386630, Mutable, v27);
    v489 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(2, &_pixelFormatDictionaryInit(void)::planeInterchangeLossy75, _pixelFormatDictionaryInit(void)::addressFormatInterchange, 2);
    PixelFormat_kCVPixelFormatType_Lossy75_420YpCbCrFloat16BiPlanarFullRange = retrievePixelFormat_kCVPixelFormatType_Lossy75_420YpCbCrFloat16BiPlanarFullRange(v489);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_Lossy75_420YpCbCrFloat16BiPlanarFullRange, "kCVPixelFormatType_Lossy75_420YpCbCrFloat16BiPlanarFullRange", 0x2D686630, Mutable, v27);
    v491 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(2, &_pixelFormatDictionaryInit(void)::planeInterchangeLossy62, _pixelFormatDictionaryInit(void)::addressFormatInterchange, 2);
    PixelFormat_kCVPixelFormatType_Lossy62_420YpCbCrFloat16BiPlanarFullRange = retrievePixelFormat_kCVPixelFormatType_Lossy62_420YpCbCrFloat16BiPlanarFullRange(v491);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_Lossy62_420YpCbCrFloat16BiPlanarFullRange, "kCVPixelFormatType_Lossy62_420YpCbCrFloat16BiPlanarFullRange", 0x2F686630, Mutable, v27);
    v493 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(2, &_pixelFormatDictionaryInit(void)::planeInterchangeLossy50, _pixelFormatDictionaryInit(void)::addressFormatInterchange, 2);
    PixelFormat_kCVPixelFormatType_Lossy50_420YpCbCrFloat16BiPlanarFullRange = retrievePixelFormat_kCVPixelFormatType_Lossy50_420YpCbCrFloat16BiPlanarFullRange(v493);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_Lossy50_420YpCbCrFloat16BiPlanarFullRange, "kCVPixelFormatType_Lossy50_420YpCbCrFloat16BiPlanarFullRange", 0x7C686630, Mutable, v27);
    v495 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(2, &_pixelFormatDictionaryInit(void)::planeInterchangeLossy62_8bit, _pixelFormatDictionaryInit(void)::addressFormatInterchange, 34);
    PixelFormat_kCVPixelFormatType_Lossy62_420YpCbCr8BiPlanarVideoRange = retrievePixelFormat_kCVPixelFormatType_Lossy62_420YpCbCr8BiPlanarVideoRange(v495);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_Lossy62_420YpCbCr8BiPlanarVideoRange, "kCVPixelFormatType_Lossy62_420YpCbCr8BiPlanarVideoRange", 0x2F387630, Mutable, v27);
    v497 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(2, &_pixelFormatDictionaryInit(void)::planeInterchangeLossy62_8bit, _pixelFormatDictionaryInit(void)::addressFormatInterchange, 34);
    PixelFormat_kCVPixelFormatType_Lossy62_420YpCbCr8BiPlanarFullRange = retrievePixelFormat_kCVPixelFormatType_Lossy62_420YpCbCr8BiPlanarFullRange(v497);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_Lossy62_420YpCbCr8BiPlanarFullRange, "kCVPixelFormatType_Lossy62_420YpCbCr8BiPlanarFullRange", 0x2F386630, Mutable, v27);
    v499 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(2, &_pixelFormatDictionaryInit(void)::planeInterchangeLossy50, _pixelFormatDictionaryInit(void)::addressFormatInterchange, 34);
    PixelFormat_kCVPixelFormatType_Lossy50_420YpCbCr8BiPlanarVideoRange = retrievePixelFormat_kCVPixelFormatType_Lossy50_420YpCbCr8BiPlanarVideoRange(v499);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_Lossy50_420YpCbCr8BiPlanarVideoRange, "kCVPixelFormatType_Lossy50_420YpCbCr8BiPlanarVideoRange", 0x7C387630, Mutable, v27);
    v501 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(2, &_pixelFormatDictionaryInit(void)::planeInterchangeLossy50, _pixelFormatDictionaryInit(void)::addressFormatInterchange, 34);
    PixelFormat_kCVPixelFormatType_Lossy50_420YpCbCr8BiPlanarFullRange = retrievePixelFormat_kCVPixelFormatType_Lossy50_420YpCbCr8BiPlanarFullRange(v501);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_Lossy50_420YpCbCr8BiPlanarFullRange, "kCVPixelFormatType_Lossy50_420YpCbCr8BiPlanarFullRange", 0x7C386630, Mutable, v27);
    v503 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(2, &_pixelFormatDictionaryInit(void)::planeInterchangeLossy75, _pixelFormatDictionaryInit(void)::addressFormatInterchange, 34);
    PixelFormat_kCVPixelFormatType_Lossy75_420YpCbCr10PackedBiPlanarVideoRange = retrievePixelFormat_kCVPixelFormatType_Lossy75_420YpCbCr10PackedBiPlanarVideoRange(v503);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_Lossy75_420YpCbCr10PackedBiPlanarVideoRange, "kCVPixelFormatType_Lossy75_420YpCbCr10PackedBiPlanarVideoRange", 0x2D787630, Mutable, v27);
    v505 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(2, &_pixelFormatDictionaryInit(void)::planeInterchangeLossy75, _pixelFormatDictionaryInit(void)::addressFormatInterchange, 34);
    PixelFormat_kCVPixelFormatType_Lossy75_420YpCbCr10PackedBiPlanarFullRange = retrievePixelFormat_kCVPixelFormatType_Lossy75_420YpCbCr10PackedBiPlanarFullRange(v505);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_Lossy75_420YpCbCr10PackedBiPlanarFullRange, "kCVPixelFormatType_Lossy75_420YpCbCr10PackedBiPlanarFullRange", 0x2D786630, Mutable, v27);
    v507 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(2, &_pixelFormatDictionaryInit(void)::planeInterchangeLossy62, _pixelFormatDictionaryInit(void)::addressFormatInterchange, 34);
    PixelFormat_kCVPixelFormatType_Lossy62_420YpCbCr10PackedBiPlanarVideoRange = retrievePixelFormat_kCVPixelFormatType_Lossy62_420YpCbCr10PackedBiPlanarVideoRange(v507);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_Lossy62_420YpCbCr10PackedBiPlanarVideoRange, "kCVPixelFormatType_Lossy62_420YpCbCr10PackedBiPlanarVideoRange", 0x2F787630, Mutable, v27);
    v509 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(2, &_pixelFormatDictionaryInit(void)::planeInterchangeLossy62, _pixelFormatDictionaryInit(void)::addressFormatInterchange, 34);
    PixelFormat_kCVPixelFormatType_Lossy62_420YpCbCr10PackedBiPlanarFullRange = retrievePixelFormat_kCVPixelFormatType_Lossy62_420YpCbCr10PackedBiPlanarFullRange(v509);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_Lossy62_420YpCbCr10PackedBiPlanarFullRange, "kCVPixelFormatType_Lossy62_420YpCbCr10PackedBiPlanarFullRange", 0x2F786630, Mutable, v27);
    v511 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(2, &_pixelFormatDictionaryInit(void)::planeInterchangeLossy50_10bit, _pixelFormatDictionaryInit(void)::addressFormatInterchange, 34);
    PixelFormat_kCVPixelFormatType_Lossy50_420YpCbCr10PackedBiPlanarVideoRange = retrievePixelFormat_kCVPixelFormatType_Lossy50_420YpCbCr10PackedBiPlanarVideoRange(v511);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_Lossy50_420YpCbCr10PackedBiPlanarVideoRange, "kCVPixelFormatType_Lossy50_420YpCbCr10PackedBiPlanarVideoRange", 0x7C787630, Mutable, v27);
    v513 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(2, &_pixelFormatDictionaryInit(void)::planeInterchangeLossy50_10bit, _pixelFormatDictionaryInit(void)::addressFormatInterchange, 34);
    PixelFormat_kCVPixelFormatType_Lossy50_420YpCbCr10PackedBiPlanarFullRange = retrievePixelFormat_kCVPixelFormatType_Lossy50_420YpCbCr10PackedBiPlanarFullRange(v513);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_Lossy50_420YpCbCr10PackedBiPlanarFullRange, "kCVPixelFormatType_Lossy50_420YpCbCr10PackedBiPlanarFullRange", 0x7C786630, Mutable, v27);
    v515 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(2, &_pixelFormatDictionaryInit(void)::planeInterchangeLossy75, _pixelFormatDictionaryInit(void)::addressFormatInterchange, 34);
    PixelFormat_kCVPixelFormatType_Lossy75_422YpCbCr10PackedBiPlanarVideoRange = retrievePixelFormat_kCVPixelFormatType_Lossy75_422YpCbCr10PackedBiPlanarVideoRange(v515);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_Lossy75_422YpCbCr10PackedBiPlanarVideoRange, "kCVPixelFormatType_Lossy75_422YpCbCr10PackedBiPlanarVideoRange", 0x2D787632, Mutable, v27);
    v517 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(2, &_pixelFormatDictionaryInit(void)::planeInterchangeLossy75, _pixelFormatDictionaryInit(void)::addressFormatInterchange, 34);
    PixelFormat_kCVPixelFormatType_Lossy75_422YpCbCr10PackedBiPlanarFullRange = retrievePixelFormat_kCVPixelFormatType_Lossy75_422YpCbCr10PackedBiPlanarFullRange(v517);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_Lossy75_422YpCbCr10PackedBiPlanarFullRange, "kCVPixelFormatType_Lossy75_422YpCbCr10PackedBiPlanarFullRange", 0x2D786632, Mutable, v27);
    v519 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(2, &_pixelFormatDictionaryInit(void)::planeInterchangeLossy62, _pixelFormatDictionaryInit(void)::addressFormatInterchange, 34);
    PixelFormat_kCVPixelFormatType_Lossy62_422YpCbCr10PackedBiPlanarVideoRange = retrievePixelFormat_kCVPixelFormatType_Lossy62_422YpCbCr10PackedBiPlanarVideoRange(v519);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_Lossy62_422YpCbCr10PackedBiPlanarVideoRange, "kCVPixelFormatType_Lossy62_422YpCbCr10PackedBiPlanarVideoRange", 0x2F787632, Mutable, v27);
    v521 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(2, &_pixelFormatDictionaryInit(void)::planeInterchangeLossy62, _pixelFormatDictionaryInit(void)::addressFormatInterchange, 34);
    PixelFormat_kCVPixelFormatType_Lossy62_422YpCbCr10PackedBiPlanarFullRange = retrievePixelFormat_kCVPixelFormatType_Lossy62_422YpCbCr10PackedBiPlanarFullRange(v521);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_Lossy62_422YpCbCr10PackedBiPlanarFullRange, "kCVPixelFormatType_Lossy62_422YpCbCr10PackedBiPlanarFullRange", 0x2F786632, Mutable, v27);
    v523 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(2, &_pixelFormatDictionaryInit(void)::planeInterchangeLossy50_10bit, _pixelFormatDictionaryInit(void)::addressFormatInterchange, 34);
    PixelFormat_kCVPixelFormatType_Lossy50_422YpCbCr10PackedBiPlanarVideoRange = retrievePixelFormat_kCVPixelFormatType_Lossy50_422YpCbCr10PackedBiPlanarVideoRange(v523);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_Lossy50_422YpCbCr10PackedBiPlanarVideoRange, "kCVPixelFormatType_Lossy50_422YpCbCr10PackedBiPlanarVideoRange", 0x7C787632, Mutable, v27);
    v525 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(2, &_pixelFormatDictionaryInit(void)::planeInterchangeLossy50_10bit, _pixelFormatDictionaryInit(void)::addressFormatInterchange, 34);
    PixelFormat_kCVPixelFormatType_Lossy50_422YpCbCr10PackedBiPlanarFullRange = retrievePixelFormat_kCVPixelFormatType_Lossy50_422YpCbCr10PackedBiPlanarFullRange(v525);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_Lossy50_422YpCbCr10PackedBiPlanarFullRange, "kCVPixelFormatType_Lossy50_422YpCbCr10PackedBiPlanarFullRange", 0x7C786632, Mutable, v27);
    v527 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(1, &_pixelFormatDictionaryInit(void)::planeInterchangeLossy75, _pixelFormatDictionaryInit(void)::addressFormatInterchange, 41);
    PixelFormat_kCVPixelFormatType_Lossy75_32BGRA = retrievePixelFormat_kCVPixelFormatType_Lossy75_32BGRA(v527);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_Lossy75_32BGRA, "kCVPixelFormatType_Lossy75_32BGRA", 0x2D424741, Mutable, v27);
    v529 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(1, &_pixelFormatDictionaryInit(void)::planeInterchangeLossy62, _pixelFormatDictionaryInit(void)::addressFormatInterchange, 41);
    PixelFormat_kCVPixelFormatType_Lossy62_32BGRA = retrievePixelFormat_kCVPixelFormatType_Lossy62_32BGRA(v529);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_Lossy62_32BGRA, "kCVPixelFormatType_Lossy62_32BGRA", 0x2F424741, Mutable, v27);
    v531 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(1, &_pixelFormatDictionaryInit(void)::planeInterchangeLossy50, _pixelFormatDictionaryInit(void)::addressFormatInterchange, 41);
    PixelFormat_kCVPixelFormatType_Lossy50_32BGRA = retrievePixelFormat_kCVPixelFormatType_Lossy50_32BGRA(v531);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_Lossy50_32BGRA, "kCVPixelFormatType_Lossy50_32BGRA", 0x7C424741, Mutable, v27);
    v533 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(1, &_pixelFormatDictionaryInit(void)::planeInterchangeLossy75, _pixelFormatDictionaryInit(void)::addressFormatInterchange, 4);
    PixelFormat_kCVPixelFormatType_Lossy75_OneComponent16Half = retrievePixelFormat_kCVPixelFormatType_Lossy75_OneComponent16Half(v533);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_Lossy75_OneComponent16Half, "kCVPixelFormatType_Lossy75_OneComponent16Half", 0x2D4C3068, Mutable, v27);
    v535 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(1, &_pixelFormatDictionaryInit(void)::planeInterchangeLossy62, _pixelFormatDictionaryInit(void)::addressFormatInterchange, 4);
    PixelFormat_kCVPixelFormatType_Lossy62_OneComponent16Half = retrievePixelFormat_kCVPixelFormatType_Lossy62_OneComponent16Half(v535);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_Lossy62_OneComponent16Half, "kCVPixelFormatType_Lossy62_OneComponent16Half", 0x2F4C3068, Mutable, v27);
    v537 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(1, &_pixelFormatDictionaryInit(void)::planeInterchangeLossy50, _pixelFormatDictionaryInit(void)::addressFormatInterchange, 4);
    PixelFormat_kCVPixelFormatType_Lossy50_OneComponent16Half = retrievePixelFormat_kCVPixelFormatType_Lossy50_OneComponent16Half(v537);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_Lossy50_OneComponent16Half, "kCVPixelFormatType_Lossy50_OneComponent16Half", 0x7C4C3068, Mutable, v27);
    v539 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(1, &_pixelFormatDictionaryInit(void)::planeInterchangeLossy75, _pixelFormatDictionaryInit(void)::addressFormatInterchange, 4);
    PixelFormat_kCVPixelFormatType_Lossy75_OneComponent8 = retrievePixelFormat_kCVPixelFormatType_Lossy75_OneComponent8(v539);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_Lossy75_OneComponent8, "kCVPixelFormatType_Lossy75_OneComponent8", 0x2D4C3038, Mutable, v27);
    v541 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(1, &_pixelFormatDictionaryInit(void)::planeInterchangeLossy62, _pixelFormatDictionaryInit(void)::addressFormatInterchange, 4);
    PixelFormat_kCVPixelFormatType_Lossy62_OneComponent8 = retrievePixelFormat_kCVPixelFormatType_Lossy62_OneComponent8(v541);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_Lossy62_OneComponent8, "kCVPixelFormatType_Lossy62_OneComponent8", 0x2F4C3038, Mutable, v27);
    v543 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(1, &_pixelFormatDictionaryInit(void)::planeInterchangeLossy50, _pixelFormatDictionaryInit(void)::addressFormatInterchange, 4);
    PixelFormat_kCVPixelFormatType_Lossy50_OneComponent8 = retrievePixelFormat_kCVPixelFormatType_Lossy50_OneComponent8(v543);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_Lossy50_OneComponent8, "kCVPixelFormatType_Lossy50_OneComponent8", 0x7C4C3038, Mutable, v27);
    v545 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(1, &_pixelFormatDictionaryInit(void)::planeInterchangeLossy75, _pixelFormatDictionaryInit(void)::addressFormatInterchange, 4);
    PixelFormat_kCVPixelFormatType_Lossy75_TwoComponent8 = retrievePixelFormat_kCVPixelFormatType_Lossy75_TwoComponent8(v545);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_Lossy75_TwoComponent8, "kCVPixelFormatType_Lossy75_TwoComponent8", 0x2D323038, Mutable, v27);
    v547 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(1, &_pixelFormatDictionaryInit(void)::planeInterchangeLossy50, _pixelFormatDictionaryInit(void)::addressFormatInterchange, 4);
    PixelFormat_kCVPixelFormatType_Lossy50_TwoComponent8 = retrievePixelFormat_kCVPixelFormatType_Lossy50_TwoComponent8(v547);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_Lossy50_TwoComponent8, "kCVPixelFormatType_Lossy50_TwoComponent8", 0x7C323038, Mutable, v27);
    v549 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(1, &_pixelFormatDictionaryInit(void)::planeInterchangeLossy75, _pixelFormatDictionaryInit(void)::addressFormatInterchange, 4);
    PixelFormat_kCVPixelFormatType_Lossy75_TwoComponent16Half = retrievePixelFormat_kCVPixelFormatType_Lossy75_TwoComponent16Half(v549);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_Lossy75_TwoComponent16Half, "kCVPixelFormatType_Lossy75_TwoComponent16Half", 0x2D323068, Mutable, v27);
    v551 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(1, &_pixelFormatDictionaryInit(void)::planeInterchangeLossy62, _pixelFormatDictionaryInit(void)::addressFormatInterchange, 4);
    PixelFormat_kCVPixelFormatType_Lossy62_TwoComponent16Half = retrievePixelFormat_kCVPixelFormatType_Lossy62_TwoComponent16Half(v551);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_Lossy62_TwoComponent16Half, "kCVPixelFormatType_Lossy62_TwoComponent16Half", 0x2F323068, Mutable, v27);
    v553 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(1, &_pixelFormatDictionaryInit(void)::planeInterchangeLossy50, _pixelFormatDictionaryInit(void)::addressFormatInterchange, 4);
    PixelFormat_kCVPixelFormatType_Lossy50_TwoComponent16Half = retrievePixelFormat_kCVPixelFormatType_Lossy50_TwoComponent16Half(v553);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_Lossy50_TwoComponent16Half, "kCVPixelFormatType_Lossy50_TwoComponent16Half", 0x7C323068, Mutable, v27);
    v555 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(1, &_pixelFormatDictionaryInit(void)::planeInterchangeLossy75, _pixelFormatDictionaryInit(void)::addressFormatInterchange, 41);
    PixelFormat_kCVPixelFormatType_Lossy75_64RGBAHalf = retrievePixelFormat_kCVPixelFormatType_Lossy75_64RGBAHalf(v555);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_Lossy75_64RGBAHalf, "kCVPixelFormatType_Lossy75_64RGBAHalf", 0x2D526841, Mutable, v27);
    v181 = v647;
    v557 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(1, &_pixelFormatDictionaryInit(void)::planeInterchangeLossy62, _pixelFormatDictionaryInit(void)::addressFormatInterchange, 41);
    PixelFormat_kCVPixelFormatType_Lossy62_64RGBAHalf = retrievePixelFormat_kCVPixelFormatType_Lossy62_64RGBAHalf(v557);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_Lossy62_64RGBAHalf, "kCVPixelFormatType_Lossy62_64RGBAHalf", 0x2F526841, Mutable, v27);
    v174 = 0x1ED568000uLL;
    v559 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(1, &_pixelFormatDictionaryInit(void)::planeInterchangeLossy50, _pixelFormatDictionaryInit(void)::addressFormatInterchange, 41);
    PixelFormat_kCVPixelFormatType_Lossy50_64RGBAHalf = retrievePixelFormat_kCVPixelFormatType_Lossy50_64RGBAHalf(v559);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_Lossy50_64RGBAHalf, "kCVPixelFormatType_Lossy50_64RGBAHalf", 0x7C526841, Mutable, v27);
  }

  if (v181)
  {
    v561 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(1, &_pixelFormatDictionaryInit(void)::planeInterchangeLossy75, _pixelFormatDictionaryInit(void)::addressFormatInterchange, 192);
    PixelFormat_kCVPixelFormatType_Lossy75_64HalfRegroupedSenselArray = retrievePixelFormat_kCVPixelFormatType_Lossy75_64HalfRegroupedSenselArray(v561);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_Lossy75_64HalfRegroupedSenselArray, "kCVPixelFormatType_Lossy75_64HalfRegroupedSenselArray", 0x2D623668, Mutable, v27);
    v563 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(1, &_pixelFormatDictionaryInit(void)::planeInterchangeLossy62, _pixelFormatDictionaryInit(void)::addressFormatInterchange, 192);
    PixelFormat_kCVPixelFormatType_Lossy62_64HalfRegroupedSenselArray = retrievePixelFormat_kCVPixelFormatType_Lossy62_64HalfRegroupedSenselArray(v563);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_Lossy62_64HalfRegroupedSenselArray, "kCVPixelFormatType_Lossy62_64HalfRegroupedSenselArray", 0x2F623668, Mutable, v27);
    v565 = calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(1, &_pixelFormatDictionaryInit(void)::planeInterchangeLossy50, _pixelFormatDictionaryInit(void)::addressFormatInterchange, 192);
    PixelFormat_kCVPixelFormatType_Lossy50_64HalfRegroupedSenselArray = retrievePixelFormat_kCVPixelFormatType_Lossy50_64HalfRegroupedSenselArray(v565);
    registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_Lossy50_64HalfRegroupedSenselArray, "kCVPixelFormatType_Lossy50_64HalfRegroupedSenselArray", 0x7C623668, Mutable, v27);
  }

  if (areHTPCFormatsSupportedByCA())
  {
    v567 = 983040;
  }

  else
  {
    v567 = 720896;
  }

  PixelFormat_kCVPixelFormatType_422YpCbCr8VideoRange_8A_TriPlanar = retrievePixelFormat_kCVPixelFormatType_422YpCbCr8VideoRange_8A_TriPlanar(v567 | sGlobalVariantBitfield);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_422YpCbCr8VideoRange_8A_TriPlanar, "kCVPixelFormatType_422YpCbCr8VideoRange_8A_TriPlanar", 0x76326138, Mutable, v27);
  if (areHTPCFormatsSupportedByCA())
  {
    v569 = 983040;
  }

  else
  {
    v569 = 720896;
  }

  PixelFormat_kCVPixelFormatType_444YpCbCr8VideoRange_8A_TriPlanar = retrievePixelFormat_kCVPixelFormatType_444YpCbCr8VideoRange_8A_TriPlanar(v569 | sGlobalVariantBitfield);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_444YpCbCr8VideoRange_8A_TriPlanar, "kCVPixelFormatType_444YpCbCr8VideoRange_8A_TriPlanar", 0x76346138, Mutable, v27);
  PixelFormat_kCVPixelFormatType_444YpCbCr8PackedFullRange = retrievePixelFormat_kCVPixelFormatType_444YpCbCr8PackedFullRange(sGlobalVariantBitfield | 0x30000u);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_444YpCbCr8PackedFullRange, "kCVPixelFormatType_444YpCbCr8PackedFullRange", 0x66333038, Mutable, v27);
  if (areHTPCFormatsSupportedByCA())
  {
    v572 = 983040;
  }

  else
  {
    v572 = 720896;
  }

  PixelFormat_kCVPixelFormatType_444YpCbCr10VideoRange_16A_TriPlanar = retrievePixelFormat_kCVPixelFormatType_444YpCbCr10VideoRange_16A_TriPlanar(v572 | sGlobalVariantBitfield);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_444YpCbCr10VideoRange_16A_TriPlanar, "kCVPixelFormatType_444YpCbCr10VideoRange_16A_TriPlanar", 0x78346173, Mutable, v27);
  if (areHTPCFormatsSupportedByCA())
  {
    v574 = 983040;
  }

  else
  {
    v574 = 720896;
  }

  PixelFormat_kCVPixelFormatType_444YpCbCr12VideoRange_16A_TriPlanar = retrievePixelFormat_kCVPixelFormatType_444YpCbCr12VideoRange_16A_TriPlanar(v574 | sGlobalVariantBitfield);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_444YpCbCr12VideoRange_16A_TriPlanar, "kCVPixelFormatType_444YpCbCr12VideoRange_16A_TriPlanar", 0x74346173, Mutable, v27);
  if (isCoreAnimation_YCbCr16Capable(void)::didCheck == 1)
  {
    if (isCoreAnimation_YCbCr16Capable(void)::deviceSupports16bitYCbCr)
    {
      goto LABEL_304;
    }
  }

  else
  {
    v577 = areUniversalCompressionFormatsSupported();
    isCoreAnimation_YCbCr16Capable(void)::deviceSupports16bitYCbCr = v577;
    isCoreAnimation_YCbCr16Capable(void)::didCheck = 1;
    if (v577)
    {
LABEL_304:
      if (areHTPCFormatsSupportedByCA())
      {
        v576 = 983040;
      }

      else
      {
        v576 = 720896;
      }

      goto LABEL_309;
    }
  }

  v576 = 196608;
LABEL_309:
  PixelFormat_kCVPixelFormatType_444YpCbCr16VideoRange_16A_TriPlanar = retrievePixelFormat_kCVPixelFormatType_444YpCbCr16VideoRange_16A_TriPlanar(sGlobalVariantBitfield | v576);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_444YpCbCr16VideoRange_16A_TriPlanar, "kCVPixelFormatType_444YpCbCr16VideoRange_16A_TriPlanar", 0x73346173, Mutable, v27);
  if (areHTPCFormatsSupportedByCA())
  {
    v579 = 983040;
  }

  else
  {
    v579 = 720896;
  }

  PixelFormat_kCVPixelFormatType_422YpCbCr10VideoRange_16A_TriPlanar = retrievePixelFormat_kCVPixelFormatType_422YpCbCr10VideoRange_16A_TriPlanar(v579 | sGlobalVariantBitfield);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_422YpCbCr10VideoRange_16A_TriPlanar, "kCVPixelFormatType_422YpCbCr10VideoRange_16A_TriPlanar", 0x78326173, Mutable, v27);
  if (areHTPCFormatsSupportedByCA())
  {
    v581 = 983040;
  }

  else
  {
    v581 = 720896;
  }

  PixelFormat_kCVPixelFormatType_422YpCbCr12VideoRange_16A_TriPlanar = retrievePixelFormat_kCVPixelFormatType_422YpCbCr12VideoRange_16A_TriPlanar(v581 | sGlobalVariantBitfield);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_422YpCbCr12VideoRange_16A_TriPlanar, "kCVPixelFormatType_422YpCbCr12VideoRange_16A_TriPlanar", 0x74326173, Mutable, v27);
  if (isCoreAnimation_YCbCr16Capable(void)::didCheck == 1)
  {
    if (isCoreAnimation_YCbCr16Capable(void)::deviceSupports16bitYCbCr)
    {
      goto LABEL_317;
    }
  }

  else
  {
    v584 = areUniversalCompressionFormatsSupported();
    isCoreAnimation_YCbCr16Capable(void)::deviceSupports16bitYCbCr = v584;
    isCoreAnimation_YCbCr16Capable(void)::didCheck = 1;
    if (v584)
    {
LABEL_317:
      if (areHTPCFormatsSupportedByCA())
      {
        v583 = 983040;
      }

      else
      {
        v583 = 720896;
      }

      goto LABEL_322;
    }
  }

  v583 = 196608;
LABEL_322:
  PixelFormat_kCVPixelFormatType_422YpCbCr16VideoRange_16A_TriPlanar = retrievePixelFormat_kCVPixelFormatType_422YpCbCr16VideoRange_16A_TriPlanar(sGlobalVariantBitfield | v583);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_422YpCbCr16VideoRange_16A_TriPlanar, "kCVPixelFormatType_422YpCbCr16VideoRange_16A_TriPlanar", 0x73326173, Mutable, v27);
  if (areHTPCFormatsSupportedByCA())
  {
    v586 = 983040;
  }

  else
  {
    v586 = 720896;
  }

  PixelFormat_kCVPixelFormatType_420YpCbCr10VideoRange_8A_TriPlanar = retrievePixelFormat_kCVPixelFormatType_420YpCbCr10VideoRange_8A_TriPlanar(v586 | sGlobalVariantBitfield);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_420YpCbCr10VideoRange_8A_TriPlanar, "kCVPixelFormatType_420YpCbCr10VideoRange_8A_TriPlanar", 0x78306138, Mutable, v27);
  if (areHTPCFormatsSupportedByCA())
  {
    v588 = 983040;
  }

  else
  {
    v588 = 720896;
  }

  PixelFormat_kCVPixelFormatType_422YpCbCr10VideoRange_8A_TriPlanar = retrievePixelFormat_kCVPixelFormatType_422YpCbCr10VideoRange_8A_TriPlanar(v588 | sGlobalVariantBitfield);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_422YpCbCr10VideoRange_8A_TriPlanar, "kCVPixelFormatType_422YpCbCr10VideoRange_8A_TriPlanar", 0x78326138, Mutable, v27);
  if (areHTPCFormatsSupportedByCA())
  {
    v590 = 983040;
  }

  else
  {
    v590 = 720896;
  }

  PixelFormat_kCVPixelFormatType_444YpCbCr10VideoRange_8A_TriPlanar = retrievePixelFormat_kCVPixelFormatType_444YpCbCr10VideoRange_8A_TriPlanar(v590 | sGlobalVariantBitfield);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_444YpCbCr10VideoRange_8A_TriPlanar, "kCVPixelFormatType_444YpCbCr10VideoRange_8A_TriPlanar", 0x78346138, Mutable, v27);
  if (isCoreAnimation_YCbCr16Capable(void)::didCheck == 1)
  {
    if (isCoreAnimation_YCbCr16Capable(void)::deviceSupports16bitYCbCr)
    {
      goto LABEL_333;
    }

LABEL_337:
    v592 = 196608;
    goto LABEL_338;
  }

  v593 = areUniversalCompressionFormatsSupported();
  isCoreAnimation_YCbCr16Capable(void)::deviceSupports16bitYCbCr = v593;
  isCoreAnimation_YCbCr16Capable(void)::didCheck = 1;
  if (!v593)
  {
    goto LABEL_337;
  }

LABEL_333:
  if (areHTPCFormatsSupportedByCA())
  {
    v592 = 983040;
  }

  else
  {
    v592 = 720896;
  }

LABEL_338:
  PixelFormat_kCVPixelFormatType_420YpCbCr16BiPlanarVideoRange = retrievePixelFormat_kCVPixelFormatType_420YpCbCr16BiPlanarVideoRange(sGlobalVariantBitfield | v592);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_420YpCbCr16BiPlanarVideoRange, "kCVPixelFormatType_420YpCbCr16BiPlanarVideoRange", 0x73763230, Mutable, v27);
  if (isCoreAnimation_YCbCr16Capable(void)::didCheck == 1)
  {
    if (isCoreAnimation_YCbCr16Capable(void)::deviceSupports16bitYCbCr)
    {
      goto LABEL_340;
    }

LABEL_344:
    v595 = 196608;
    goto LABEL_345;
  }

  v596 = areUniversalCompressionFormatsSupported();
  isCoreAnimation_YCbCr16Capable(void)::deviceSupports16bitYCbCr = v596;
  isCoreAnimation_YCbCr16Capable(void)::didCheck = 1;
  if (!v596)
  {
    goto LABEL_344;
  }

LABEL_340:
  if (areHTPCFormatsSupportedByCA())
  {
    v595 = 983040;
  }

  else
  {
    v595 = 720896;
  }

LABEL_345:
  PixelFormat_kCVPixelFormatType_422YpCbCr16BiPlanarVideoRange = retrievePixelFormat_kCVPixelFormatType_422YpCbCr16BiPlanarVideoRange(sGlobalVariantBitfield | v595);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_422YpCbCr16BiPlanarVideoRange, "kCVPixelFormatType_422YpCbCr16BiPlanarVideoRange", 0x73763232, Mutable, v27);
  if (isCoreAnimation_YCbCr16Capable(void)::didCheck == 1)
  {
    if (isCoreAnimation_YCbCr16Capable(void)::deviceSupports16bitYCbCr)
    {
      goto LABEL_347;
    }

LABEL_351:
    v598 = 196608;
    goto LABEL_352;
  }

  v599 = areUniversalCompressionFormatsSupported();
  isCoreAnimation_YCbCr16Capable(void)::deviceSupports16bitYCbCr = v599;
  isCoreAnimation_YCbCr16Capable(void)::didCheck = 1;
  if (!v599)
  {
    goto LABEL_351;
  }

LABEL_347:
  if (areHTPCFormatsSupportedByCA())
  {
    v598 = 983040;
  }

  else
  {
    v598 = 720896;
  }

LABEL_352:
  PixelFormat_kCVPixelFormatType_444YpCbCr16BiPlanarVideoRange = retrievePixelFormat_kCVPixelFormatType_444YpCbCr16BiPlanarVideoRange(sGlobalVariantBitfield | v598);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_444YpCbCr16BiPlanarVideoRange, "kCVPixelFormatType_444YpCbCr16BiPlanarVideoRange", 0x73763434, Mutable, v27);
  if (isCoreAnimation_YCbCr16Capable(void)::didCheck == 1)
  {
    if (isCoreAnimation_YCbCr16Capable(void)::deviceSupports16bitYCbCr)
    {
      goto LABEL_354;
    }

LABEL_358:
    v601 = 196608;
    goto LABEL_359;
  }

  v602 = areUniversalCompressionFormatsSupported();
  isCoreAnimation_YCbCr16Capable(void)::deviceSupports16bitYCbCr = v602;
  isCoreAnimation_YCbCr16Capable(void)::didCheck = 1;
  if (!v602)
  {
    goto LABEL_358;
  }

LABEL_354:
  if (areHTPCFormatsSupportedByCA())
  {
    v601 = 983040;
  }

  else
  {
    v601 = 720896;
  }

LABEL_359:
  PixelFormat_kCVPixelFormatType_420YpCbCr16BiPlanarFullRange = retrievePixelFormat_kCVPixelFormatType_420YpCbCr16BiPlanarFullRange(sGlobalVariantBitfield | v601);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_420YpCbCr16BiPlanarFullRange, "kCVPixelFormatType_420YpCbCr16BiPlanarFullRange", 0x73663230, Mutable, v27);
  if (isCoreAnimation_YCbCr16Capable(void)::didCheck == 1)
  {
    if (isCoreAnimation_YCbCr16Capable(void)::deviceSupports16bitYCbCr)
    {
      goto LABEL_361;
    }
  }

  else
  {
    v605 = areUniversalCompressionFormatsSupported();
    isCoreAnimation_YCbCr16Capable(void)::deviceSupports16bitYCbCr = v605;
    isCoreAnimation_YCbCr16Capable(void)::didCheck = 1;
    if (v605)
    {
LABEL_361:
      if (areHTPCFormatsSupportedByCA())
      {
        v604 = 983040;
      }

      else
      {
        v604 = 720896;
      }

      goto LABEL_366;
    }
  }

  v604 = 196608;
LABEL_366:
  PixelFormat_kCVPixelFormatType_422YpCbCr16BiPlanarFullRange = retrievePixelFormat_kCVPixelFormatType_422YpCbCr16BiPlanarFullRange(sGlobalVariantBitfield | v604);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_422YpCbCr16BiPlanarFullRange, "kCVPixelFormatType_422YpCbCr16BiPlanarFullRange", 0x73663232, Mutable, v27);
  if (isCoreAnimation_YCbCr16Capable(void)::didCheck == 1)
  {
    v607 = isCoreAnimation_YCbCr16Capable(void)::deviceSupports16bitYCbCr;
  }

  else
  {
    v607 = areUniversalCompressionFormatsSupported();
    isCoreAnimation_YCbCr16Capable(void)::deviceSupports16bitYCbCr = v607;
    isCoreAnimation_YCbCr16Capable(void)::didCheck = 1;
  }

  if (v607)
  {
    if (areHTPCFormatsSupportedByCA())
    {
      v608 = 983040;
    }

    else
    {
      v608 = 720896;
    }
  }

  else
  {
    v608 = 196608;
  }

  PixelFormat_kCVPixelFormatType_444YpCbCr16BiPlanarFullRange = retrievePixelFormat_kCVPixelFormatType_444YpCbCr16BiPlanarFullRange(sGlobalVariantBitfield | v608);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_444YpCbCr16BiPlanarFullRange, "kCVPixelFormatType_444YpCbCr16BiPlanarFullRange", 0x73663434, Mutable, v27);
  PixelFormat_kCVPixelFormatType_12RLSB_12G12BMSB = retrievePixelFormat_kCVPixelFormatType_12RLSB_12G12BMSB(sGlobalVariantBitfield);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_12RLSB_12G12BMSB, "kCVPixelFormatType_12RLSB_12G12BMSB", 0x72746762, Mutable, v27);
  PixelFormat_kCVPixelFormatType_16VersatileBayer = retrievePixelFormat_kCVPixelFormatType_16VersatileBayer(sGlobalVariantBitfield);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_16VersatileBayer, "kCVPixelFormatType_16VersatileBayer", 0x62703136, Mutable, v27);
  PixelFormat_kCVPixelFormatType_16VersatileBayerQuadPlanar = retrievePixelFormat_kCVPixelFormatType_16VersatileBayerQuadPlanar(sGlobalVariantBitfield);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_16VersatileBayerQuadPlanar, "kCVPixelFormatType_16VersatileBayerQuadPlanar", 0x62313671, Mutable, v27);
  PixelFormat_kCVPixelFormatType_64RGBA_DownscaledProResRAW = retrievePixelFormat_kCVPixelFormatType_64RGBA_DownscaledProResRAW(sGlobalVariantBitfield | 0x30000u);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_64RGBA_DownscaledProResRAW, "kCVPixelFormatType_64RGBA_DownscaledProResRAW", 0x62703634, Mutable, v27);
  PixelFormat_kCVPixelFormatType_30RGB_DownscaledBayer = retrievePixelFormat_kCVPixelFormatType_30RGB_DownscaledBayer(sGlobalVariantBitfield);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_30RGB_DownscaledBayer, "kCVPixelFormatType_30RGB_DownscaledBayer", 0x62703330, Mutable, v27);
  PixelFormat_kCVPixelFormatType_420YpCbCrFloat16BiPlanarFullRange = retrievePixelFormat_kCVPixelFormatType_420YpCbCrFloat16BiPlanarFullRange(sGlobalVariantBitfield | 0x30000u);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_420YpCbCrFloat16BiPlanarFullRange, "kCVPixelFormatType_420YpCbCrFloat16BiPlanarFullRange", 0x68663230, Mutable, v27);
  PixelFormat_kCVPixelFormatType_422YpCbCrFloat16BiPlanarFullRange = retrievePixelFormat_kCVPixelFormatType_422YpCbCrFloat16BiPlanarFullRange(sGlobalVariantBitfield | 0x30000u);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_422YpCbCrFloat16BiPlanarFullRange, "kCVPixelFormatType_422YpCbCrFloat16BiPlanarFullRange", 0x68663232, Mutable, v27);
  PixelFormat_kCVPixelFormatType_444YpCbCrFloat16BiPlanarFullRange = retrievePixelFormat_kCVPixelFormatType_444YpCbCrFloat16BiPlanarFullRange(sGlobalVariantBitfield | 0x30000u);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_444YpCbCrFloat16BiPlanarFullRange, "kCVPixelFormatType_444YpCbCrFloat16BiPlanarFullRange", 0x68663434, Mutable, v27);
  PixelFormat_kCVPixelFormatType_OneComponent10_Packed88882222 = retrievePixelFormat_kCVPixelFormatType_OneComponent10_Packed88882222(sGlobalVariantBitfield | 0x30000u);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_OneComponent10_Packed88882222, "kCVPixelFormatType_OneComponent10_Packed88882222", 0x71387132, Mutable, v27);
  PixelFormat_kCVPixelFormatType_VersatileSenselArrayUnpacked10LSB = retrievePixelFormat_kCVPixelFormatType_VersatileSenselArrayUnpacked10LSB(sGlobalVariantBitfield);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_VersatileSenselArrayUnpacked10LSB, "kCVPixelFormatType_VersatileSenselArrayUnpacked10LSB", 0x62753130, Mutable, v27);
  PixelFormat_kCVPixelFormatType_VersatileSenselArrayPacked10_88882222 = retrievePixelFormat_kCVPixelFormatType_VersatileSenselArrayPacked10_88882222(sGlobalVariantBitfield);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_VersatileSenselArrayPacked10_88882222, "kCVPixelFormatType_VersatileSenselArrayPacked10_88882222", 0x62713832, Mutable, v27);
  PixelFormat_kCVPixelFormatType_16HalfVersatileSenselArray = retrievePixelFormat_kCVPixelFormatType_16HalfVersatileSenselArray(sGlobalVariantBitfield);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_16HalfVersatileSenselArray, "kCVPixelFormatType_16HalfVersatileSenselArray", 0x62766568, Mutable, v27);
  PixelFormat_kCVPixelFormatType_64HalfRegroupedSenselArray = retrievePixelFormat_kCVPixelFormatType_64HalfRegroupedSenselArray(sGlobalVariantBitfield);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_64HalfRegroupedSenselArray, "kCVPixelFormatType_64HalfRegroupedSenselArray", 0x62363468, Mutable, v27);
  PixelFormat_kCVPixelFormatType_16HalfVersatileSenselArrayQuadPlanar = retrievePixelFormat_kCVPixelFormatType_16HalfVersatileSenselArrayQuadPlanar(sGlobalVariantBitfield);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_16HalfVersatileSenselArrayQuadPlanar, "kCVPixelFormatType_16HalfVersatileSenselArrayQuadPlanar", 0x62766871, Mutable, v27);
  PixelFormat_kCVPixelFormatType_VersatileSenselArray12CompandedIn8 = retrievePixelFormat_kCVPixelFormatType_VersatileSenselArray12CompandedIn8(sGlobalVariantBitfield);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_VersatileSenselArray12CompandedIn8, "kCVPixelFormatType_VersatileSenselArray12CompandedIn8", 0x62766338, Mutable, v27);
  PixelFormat_kCVPixelFormatType_VersatileSenselArray10CompandedIn8 = retrievePixelFormat_kCVPixelFormatType_VersatileSenselArray10CompandedIn8(sGlobalVariantBitfield);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_VersatileSenselArray10CompandedIn8, "kCVPixelFormatType_VersatileSenselArray10CompandedIn8", 0x62786338, Mutable, v27);
  PixelFormat_kCVPixelFormatType_48RGBLE = retrievePixelFormat_kCVPixelFormatType_48RGBLE(sGlobalVariantBitfield | 0x30000u);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_48RGBLE, "kCVPixelFormatType_48RGBLE", 0x6C343872, Mutable, v27);
  if (areHTPCFormatsSupportedByCA())
  {
    v627 = 983040;
  }

  else
  {
    v627 = 720896;
  }

  PixelFormat_kCVPixelFormatType_30RGBLEFullRange_8A_BiPlanar = retrievePixelFormat_kCVPixelFormatType_30RGBLEFullRange_8A_BiPlanar(v627 | sGlobalVariantBitfield);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_30RGBLEFullRange_8A_BiPlanar, "kCVPixelFormatType_30RGBLEFullRange_8A_BiPlanar", 0x66336138, Mutable, v27);
  PixelFormat_kCVPixelFormatType_40ARGBLEFullRange = retrievePixelFormat_kCVPixelFormatType_40ARGBLEFullRange(sGlobalVariantBitfield | 0x30000u);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_40ARGBLEFullRange, "kCVPixelFormatType_40ARGBLEFullRange", 0x6C343061, Mutable, v27);
  PixelFormat_kCVPixelFormatType_OneComponent1 = retrievePixelFormat_kCVPixelFormatType_OneComponent1(sGlobalVariantBitfield | 0x30000u);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_OneComponent1, "kCVPixelFormatType_OneComponent1", 0x4C303031, Mutable, v27);
  PixelFormat_kCVPixelFormatType_1VersatileSensel = retrievePixelFormat_kCVPixelFormatType_1VersatileSensel(sGlobalVariantBitfield);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_1VersatileSensel, "kCVPixelFormatType_1VersatileSensel", 0x62703031, Mutable, v27);
  PixelFormat_kCVPixelFormatType_12RGBLEPacked_R12L = retrievePixelFormat_kCVPixelFormatType_12RGBLEPacked_R12L(sGlobalVariantBitfield);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_12RGBLEPacked_R12L, "kCVPixelFormatType_12RGBLEPacked_R12L", 0x5231324C, Mutable, v27);
  PixelFormat_kCVPixelFormatType_12RGBPacked_R12B = retrievePixelFormat_kCVPixelFormatType_12RGBPacked_R12B(sGlobalVariantBitfield);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_12RGBPacked_R12B, "kCVPixelFormatType_12RGBPacked_R12B", 0x52313242, Mutable, v27);
  if (*(v174 + 1610) == 1)
  {
    if (doesThisDeviceSupportOpenGLES(void)::supportOpenGLES)
    {
      v634 = 0x20000;
    }

    else
    {
      v634 = 0;
    }
  }

  else
  {
    doesThisDeviceSupportOpenGLES(void)::supportOpenGLES = 1;
    *(v174 + 1610) = 1;
    v634 = 0x20000;
  }

  PixelFormat_kCVPixelFormatType_FixedPointUnsigned13_3 = retrievePixelFormat_kCVPixelFormatType_FixedPointUnsigned13_3(v634);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_FixedPointUnsigned13_3, "kCVPixelFormatType_FixedPointUnsigned13_3", 0x31332E33, Mutable, v27);
  if (*(v174 + 1610) == 1)
  {
    if (doesThisDeviceSupportOpenGLES(void)::supportOpenGLES)
    {
      v636 = 0x20000;
    }

    else
    {
      v636 = 0;
    }
  }

  else
  {
    doesThisDeviceSupportOpenGLES(void)::supportOpenGLES = 1;
    *(v174 + 1610) = 1;
    v636 = 0x20000;
  }

  PixelFormat_kCVPixelFormatType_FixedPointUnsigned11_5 = retrievePixelFormat_kCVPixelFormatType_FixedPointUnsigned11_5(v636);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_FixedPointUnsigned11_5, "kCVPixelFormatType_FixedPointUnsigned11_5", 0x31312E35, Mutable, v27);
  if (*(v174 + 1610) == 1)
  {
    if (doesThisDeviceSupportOpenGLES(void)::supportOpenGLES)
    {
      v638 = 0x20000;
    }

    else
    {
      v638 = 0;
    }
  }

  else
  {
    doesThisDeviceSupportOpenGLES(void)::supportOpenGLES = 1;
    *(v174 + 1610) = 1;
    v638 = 0x20000;
  }

  PixelFormat_kCVPixelFormatType_FixedPointSigned7_5 = retrievePixelFormat_kCVPixelFormatType_FixedPointSigned7_5(v638);
  registerConstantClassesPixelFormat(PixelFormat_kCVPixelFormatType_FixedPointSigned7_5, "kCVPixelFormatType_FixedPointSigned7_5", 0x73372E35, Mutable, v27);
  CFRelease(v28);
  CFRelease(sGlobalArrayOfVariants);
  sGlobalArrayOfVariants = 0;
  _pixelFormatDictionary = Mutable;
  _pixelFormatTypes = v27;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *keyExistsAndHasValidFormat = 136315138;
    v649 = "Pixel format registry initialized. Constant classes enabled.";
    _os_log_impl(&dword_19D11B000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s", keyExistsAndHasValidFormat, 0xCu);
  }

  v640 = *MEMORY[0x1E69E9840];
}

uint64_t disableCompression(void)
{
  if ((disableCompression(void)::didCheck & 1) == 0)
  {
    keyExistsAndHasValidFormat = 0;
    AppBooleanValue = CFPreferencesGetAppBooleanValue(@"disable-buffer-compression", @"com.apple.corevideo", &keyExistsAndHasValidFormat);
    if (keyExistsAndHasValidFormat)
    {
      v1 = AppBooleanValue;
      v2 = "disable";
      if (!AppBooleanValue)
      {
        v2 = "enable";
      }

      v3 = "YES";
      if (!AppBooleanValue)
      {
        v3 = "NO";
      }

      syslog(3, "CoreVideo: Will %s  buffer compression -- thank you for setting defaults write com.apple.corevideo disable-buffer-compression -BOOL %s\n", v2, v3);
      disableCompression(void)::result = v1;
    }

    disableCompression(void)::didCheck = 1;
  }

  return disableCompression(void)::result;
}

void *retrievePixelFormat_kCVPixelFormatType_OneComponent8(int a1)
{
  v1 = &unk_1F108C5F0;
  if (a1)
  {
    v1 = 0;
  }

  if (a1 == 1)
  {
    return &unk_1F108C5C8;
  }

  else
  {
    return v1;
  }
}

void cleanupContentsOfArrayOfVariants(void)
{
  Mutable = sGlobalArrayOfVariants;
  if (!sGlobalArrayOfVariants)
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    sGlobalArrayOfVariants = Mutable;
  }

  v1.length = CFArrayGetCount(Mutable);
  v1.location = 0;
  CFArrayApplyFunction(Mutable, v1, cleanupContentsOfArrayOfVariantsApplierFunction, 0);
  sGlobalVariantBitfield = 0;
}

void *retrievePixelFormat_kCVPixelFormatType_OneComponent16(int a1)
{
  v1 = &unk_1F108C640;
  if (a1)
  {
    v1 = 0;
  }

  if (a1 == 1)
  {
    return &unk_1F108C618;
  }

  else
  {
    return v1;
  }
}

uint64_t areHTPCFormatsSupportedByCA(void)
{
  if ((areHTPCFormatsSupportedByCA(void)::didCheck & 1) == 0 && !disableCompression())
  {
    if (isRunningInAppleVirtualMachine(void)::sCheckOnce != -1)
    {
      _pixelFormatDictionaryInit();
    }

    if (!isRunningInAppleVirtualMachine(void)::isAppleVirtualMachine)
    {
      v0 = MGCopyAnswer();
      if (v0)
      {
        v1 = v0;
        v2 = *MEMORY[0x1E695E4D0];
        if (v2 == CFDictionaryGetValue(v0, @"buffer-compression"))
        {
          areHTPCFormatsSupportedByCA(void)::result = 1;
        }

        CFRelease(v1);
      }

      areHTPCFormatsSupportedByCA(void)::didCheck = 1;
    }
  }

  return areHTPCFormatsSupportedByCA(void)::result;
}

CVReturn CVPixelBufferCreateWithIOSurface(CFAllocatorRef allocator, IOSurfaceRef surface, CFDictionaryRef pixelBufferAttributes, CVPixelBufferRef *pixelBufferOut)
{
  cf = 0;
  v8 = _os_feature_enabled_impl();
  v9 = -6661;
  if (!surface || !pixelBufferOut)
  {
    return v9;
  }

  v10 = v8;
  *pixelBufferOut = 0;
  IOOrEXSurfaceGetID(surface);
  kdebug_trace();
  if (pixelBufferAttributes)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(allocator, 0, pixelBufferAttributes);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  v13 = MutableCopy;
  if (!MutableCopy)
  {
    v14 = 0;
    v16 = 0;
    goto LABEL_40;
  }

  if (v10)
  {
    v14 = 0;
  }

  else
  {
    v14 = IOSurfaceCopyAllValues(surface);
  }

  cf = CVPixelBufferBacking::alloc(allocator, v12);
  if (cf)
  {
    if (checkIOOrEXSurfaceAndCreatePixelBufferBacking(surface, v13, &cf))
    {
LABEL_28:
      v16 = 0;
      goto LABEL_30;
    }

    v16 = CVPixelBuffer::alloc(allocator, v15);
    if (v16)
    {
      v17 = *MEMORY[0x1E695E4D0];
      if (v17 == CFDictionaryGetValue(v13, @"IOSurfaceDoNotIncrementUseCount"))
      {
        v18 = CFGetTypeID(v16);
        if (v18 == CVPixelBufferGetTypeID())
        {
          v19 = v16[2];
        }

        else
        {
          v19 = 0;
        }

        CVPixelBuffer::setDoNotAutomaticallyBumpUseCount(v19);
      }

      v20 = *(cf + 2);
      v21 = OUTLINED_FUNCTION_2(v16[2]);
      if ((*(v22 + 248))(v21))
      {
        if ((v10 & 1) == 0)
        {
          v23 = CFGetTypeID(v16);
          if (v23 == CVPixelBufferGetTypeID())
          {
            v24 = v16[2];
            if (v24)
            {
              CVPixelBuffer::pullAttachmentsFromIOSurface(v24, v14);
            }
          }

          if (v14)
          {
            Value = CFDictionaryGetValue(v14, *MEMORY[0x1E696CF98]);
            if (Value)
            {
              v26 = Value;
              v27 = CFGetTypeID(Value);
              if (v27 == CFStringGetTypeID())
              {
                CVBufferBacking::setPoolName(*(cf + 2), v26);
              }
            }
          }
        }

        CVTracePoolAction(1, 0, cf, "created from IOSurface", 0, 0);
        v9 = 0;
        *pixelBufferOut = v16;
        goto LABEL_28;
      }

      v9 = -6660;
LABEL_30:
      if (cf)
      {
        CFRelease(cf);
      }

      if (!v13)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }

LABEL_40:
    v9 = -6662;
    goto LABEL_30;
  }

  v16 = 0;
  v9 = -6662;
LABEL_33:
  CFRelease(v13);
LABEL_34:
  if (v14)
  {
    CFRelease(v14);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  return v9;
}

uint64_t checkIOOrEXSurfaceAndCreatePixelBufferBacking(__IOSurface *a1, const __CFDictionary *a2, void *a3)
{
  v120[16] = *MEMORY[0x1E69E9840];
  v116 = 0;
  memset(v117, 0, sizeof(v117));
  v114 = 0;
  v115 = 0;
  v112 = 0;
  v113 = 0;
  if (!a1)
  {
    goto LABEL_49;
  }

  v3 = a2;
  if (!a2)
  {
    goto LABEL_105;
  }

  v4 = a3;
  if (!a3 || !*a3)
  {
    goto LABEL_105;
  }

  Width = IOOrEXSurfaceGetWidth(a1);
  Height = IOOrEXSurfaceGetHeight(a1);
  PixelFormat = IOOrEXSurfaceGetPixelFormat(a1);
  BytesPerRow = IOOrEXSurfaceGetBytesPerRow(a1);
  AllocSize = IOOrEXSurfaceGetAllocSize(a1);
  PlaneCount = IOOrEXSurfaceGetPlaneCount(a1);
  if (PlaneCount > 0x10)
  {
LABEL_49:
    v32 = -6661;
LABEL_55:
    v116 = v32;
    goto LABEL_56;
  }

  v10 = PlaneCount;
  v107 = Height;
  v110 = Width;
  if (!PlaneCount)
  {
    v108 = 1;
LABEL_24:
    v120[0] = IOOrEXSurfaceGetWidth(a1);
    v119[0] = IOOrEXSurfaceGetHeight(a1);
    v118[0] = IOOrEXSurfaceGetBytesPerRow(a1);
    v10 = 0;
    *&v117[0] = IOOrEXSurfaceGetBaseAddress(a1);
    goto LABEL_25;
  }

  v11 = 0;
  v12 = 0;
  do
  {
    CompressionTypeOfPlane = IOSurfaceGetCompressionTypeOfPlane();
    AddressFormatOfPlane = IOSurfaceGetAddressFormatOfPlane();
    if ((CompressionTypeOfPlane - 1) < 3 || (!CompressionTypeOfPlane ? (v15 = AddressFormatOfPlane == 5) : (v15 = 0), !v15 ? (v16 = 0) : (v16 = 1), CompressionTypeOfPlane == 4 || v16))
    {
      v11 = 1;
    }

    ++v12;
  }

  while (v10 != v12);
  v108 = v11 == 0;
  if (v10 == 1)
  {
    goto LABEL_24;
  }

  v17 = 0;
  do
  {
    v120[v17] = IOOrEXSurfaceGetWidthOfPlane(a1, v17);
    v119[v17] = IOOrEXSurfaceGetHeightOfPlane(a1, v17);
    v118[v17] = IOOrEXSurfaceGetBytesPerRowOfPlane(a1, v17);
    *(v117 + v17) = IOOrEXSurfaceGetBaseAddressOfPlane(a1, v17);
    ++v17;
  }

  while (v10 != v17);
LABEL_25:
  if (PixelFormat)
  {
    DescriptionWithPixelFormatType = CVPixelFormatDescriptionGetDescriptionWithPixelFormatType(PixelFormat);
    if (!DescriptionWithPixelFormatType)
    {
      valuePtr = 0;
      Value = CFDictionaryGetValue(v3, @"PixelFormatDescription");
      if (!Value)
      {
        goto LABEL_54;
      }

      DescriptionWithPixelFormatType = Value;
      v34 = CFDictionaryGetValue(Value, @"PixelFormat");
      if (!v34)
      {
        goto LABEL_54;
      }

      v35 = v34;
      v36 = CFGetTypeID(v34);
      if (v36 != CFNumberGetTypeID())
      {
        goto LABEL_54;
      }

      CFNumberGetValue(v35, kCFNumberIntType, &valuePtr);
      if (PixelFormat != valuePtr)
      {
        goto LABEL_54;
      }
    }

    CFDictionarySetValue(v3, @"PixelFormatDescription", DescriptionWithPixelFormatType);
  }

  else
  {
    if (!CFDictionaryGetValue(v3, @"PixelFormatDescription"))
    {
LABEL_54:
      v32 = -6680;
      goto LABEL_55;
    }

    DescriptionWithPixelFormatType = 0;
  }

  v19 = CFDictionaryGetValue(v3, @"MetalCompatibility");
  if (v19 && CFBooleanGetValue(v19))
  {
    if (v10 <= 1)
    {
      v20 = 1;
    }

    else
    {
      v20 = v10;
    }

    v21 = v117;
    v22 = v118;
    do
    {
      v23 = *v22;
      v22 += 8;
      if ((v23 & 0x3F) != 0 || (*v21 & 0x3F) != 0)
      {
        goto LABEL_49;
      }

      v21 += 8;
    }

    while (--v20);
  }

  IntValueWithDefault = CVDictionaryGetIntValueWithDefault(v3, @"BytesPerRowAlignment", 0);
  if (IntValueWithDefault)
  {
    if (v10 <= 1)
    {
      v25 = 1;
    }

    else
    {
      v25 = v10;
    }

    v26 = v118;
    do
    {
      v27 = *v26++;
      if (v27 % IntValueWithDefault)
      {
        goto LABEL_49;
      }
    }

    while (--v25);
  }

  v104 = DescriptionWithPixelFormatType;
  v28 = CFDictionaryGetValue(v3, @"ExactBytesPerRow");
  if (v28)
  {
    v29 = v28;
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(v29))
    {
      v31 = CVDictionaryGetIntValueWithDefault(v3, @"ExactBytesPerRow", 0);
      if (v118[0] != v31)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v39 = CFArrayGetTypeID();
      if (v39 == CFGetTypeID(v29))
      {
        v40 = 0;
        if (v10 <= 1)
        {
          v41 = 1;
        }

        else
        {
          v41 = v10;
        }

        do
        {
          IntInArrayWithDefault = CVDictionaryGetIntInArrayWithDefault(v3, @"ExactBytesPerRow", v40, 0);
          if (IntInArrayWithDefault)
          {
            if (v118[v40] != IntInArrayWithDefault)
            {
              goto LABEL_49;
            }
          }
        }

        while (v41 != ++v40);
      }
    }
  }

  v43 = CVDictionaryGetIntValueWithDefault(v3, @"PlaneAlignment", 0);
  v44 = v104;
  if (v43)
  {
    if (v10 <= 1)
    {
      v45 = 1;
    }

    else
    {
      v45 = v10;
    }

    v46 = v117;
    while (!(*v46 % v43))
    {
      ++v46;
      if (!--v45)
      {
        goto LABEL_71;
      }
    }

    goto LABEL_49;
  }

LABEL_71:
  ParentID = IOSurfaceGetParentID();
  if (!v108)
  {
    if (!v104)
    {
      goto LABEL_105;
    }

    v65 = CFDictionaryGetValue(v104, @"Planes");
    if (IOSurfaceGetCompressionTypeOfPlane() - 3 <= 0xFFFFFFFD)
    {
      BoolValueWithDefault = CVDictionaryGetBoolValueWithDefault(v104, @"MultiSlice", 0);
      SliceCount = IOSurfaceGetSliceCount();
      if (BoolValueWithDefault)
      {
        if (SliceCount - 0x100000000 <= 0xFFFFFFFF00000001)
        {
          goto LABEL_49;
        }

        v68 = 0;
        goto LABEL_108;
      }

      if (SliceCount >= 2)
      {
        goto LABEL_49;
      }
    }

    v68 = 1;
    LODWORD(SliceCount) = 1;
LABEL_108:
    if (v10)
    {
      v100 = v3;
      v101 = v4;
      v75 = 0;
      v76 = 0;
      if (SliceCount < 2)
      {
        v68 = 1;
      }

      v102 = v68;
      v109 = SliceCount;
      v77 = v65;
      v78 = v65;
      while (1)
      {
        v103 = v75;
        ValueAtIndex = CFArrayGetValueAtIndex(v77, v76);
        NumberFromDict = getNumberFromDict(ValueAtIndex, @"BytesPerTileHeader", 1);
        v81 = getNumberFromDict(ValueAtIndex, @"TileWidth", 1);
        v82 = getNumberFromDict(ValueAtIndex, @"TileHeight", 1);
        v83 = getNumberFromDict(ValueAtIndex, @"BitsPerBlock", 8);
        WidthInCompressedTilesOfPlane = IOSurfaceGetWidthInCompressedTilesOfPlane();
        if (!is_mul_ok(WidthInCompressedTilesOfPlane, v81))
        {
          goto LABEL_105;
        }

        v85 = WidthInCompressedTilesOfPlane;
        HeightInCompressedTilesOfPlane = IOSurfaceGetHeightInCompressedTilesOfPlane();
        if (!is_mul_ok(HeightInCompressedTilesOfPlane, v82))
        {
          goto LABEL_105;
        }

        v87 = ((v82 * v81 * v83 + 7) >> 3) * v85 * HeightInCompressedTilesOfPlane;
        v88 = v85 * NumberFromDict * HeightInCompressedTilesOfPlane;
        v89 = v88 + v103 + v87;
        if (v103 >= v89)
        {
          goto LABEL_105;
        }

        if ((v102 & 1) == 0)
        {
          v90 = 1;
          do
          {
            v91 = v87 + IOSurfaceGetBaseAddressOfCompressedTileDataRegionOfSliceAndPlane();
            if (v91 != IOSurfaceGetBaseAddressOfCompressedTileDataRegionOfSliceAndPlane())
            {
              goto LABEL_49;
            }

            v92 = v88 + IOSurfaceGetBaseAddressOfCompressedTileHeaderRegionOfSliceAndPlane();
            if (v92 != IOSurfaceGetBaseAddressOfCompressedTileHeaderRegionOfSliceAndPlane())
            {
              goto LABEL_49;
            }
          }

          while (v109 != ++v90);
        }

        ++v76;
        v75 = v88 + v103 + v87;
        v77 = v78;
        if (v76 == v10)
        {
          v62 = AllocSize;
          v63 = v89 > AllocSize;
LABEL_91:
          v3 = v100;
          v4 = v101;
          Width = v110;
          v44 = v104;
          BytesPerRowOfPlane = BytesPerRow;
          if (v63)
          {
            goto LABEL_105;
          }

          goto LABEL_123;
        }
      }
    }

    BytesPerRowOfPlane = IOSurfaceGetBytesPerRowOfPlane(a1, 0);
    v62 = AllocSize;
    goto LABEL_123;
  }

  if (v10)
  {
    v48 = ParentID;
    v100 = v3;
    v101 = v4;
    if (v104)
    {
      v44 = CFDictionaryGetValue(v104, @"Planes");
    }

    v49 = 0;
    v50 = 0;
    while (1)
    {
      v51 = v44 ? CFArrayGetValueAtIndex(v44, v50) : 0;
      BytesPerElementOfPlane = IOOrEXSurfaceGetBytesPerElementOfPlane(a1, v50);
      if (BytesPerElementOfPlane >> 61)
      {
        goto LABEL_105;
      }

      v53 = getNumberFromDict(v51, @"BitsPerBlock", 8 * BytesPerElementOfPlane);
      v54 = v53 >= 0 ? v53 : v53 + 7;
      ElementWidthOfPlane = IOOrEXSurfaceGetElementWidthOfPlane(a1, v50);
      v56 = getNumberFromDict(v51, @"BlockWidth", ElementWidthOfPlane);
      v57 = v119[v50];
      v58 = v118[v50];
      if (!is_mul_ok(v57, v58))
      {
        goto LABEL_105;
      }

      if (!v48)
      {
        v59 = v49 + v58 * v57;
        v60 = v49 >= v59;
        v49 = v59;
        if (v60)
        {
          goto LABEL_105;
        }
      }

      v61 = v120[v50];
      if (!is_mul_ok(v61, v54 >> 3) || !is_mul_ok(v58, v56) || v61 * (v54 >> 3) > v58 * v56)
      {
        goto LABEL_105;
      }

      if (v10 == ++v50)
      {
        v62 = AllocSize;
        v63 = v49 > AllocSize;
        goto LABEL_91;
      }
    }
  }

  BytesPerElement = IOOrEXSurfaceGetBytesPerElement(a1);
  BytesPerRowOfPlane = BytesPerRow;
  if (BytesPerElement >> 61 || (v70 = getNumberFromDict(v104, @"BitsPerBlock", 8 * BytesPerElement) / 8, ElementWidth = IOOrEXSurfaceGetElementWidth(a1), v72 = getNumberFromDict(v104, @"BlockWidth", ElementWidth), ElementHeight = IOOrEXSurfaceGetElementHeight(a1), v74 = getNumberFromDict(v104, @"BlockHeight", ElementHeight), v62 = AllocSize, !is_mul_ok(Width, v70)) || !is_mul_ok(BytesPerRow, v72) || v70 * Width > v72 * BytesPerRow || (v44 = v104, !is_mul_ok(v107, BytesPerRow)) || (v107 + v74 - 1) / v74 * BytesPerRow > AllocSize)
  {
LABEL_105:
    v32 = -6662;
    goto LABEL_55;
  }

LABEL_123:
  IOSurfaceGetExtendedPixelsOfPlane();
  if (CVDictionaryGetBoolValueWithDefault(v44, @"ContainsSenselArray", 0))
  {
    v93 = CFDictionaryGetValue(v44, @"Planes");
    if (v93)
    {
      v94 = v93;
      if (CFArrayGetCount(v93) == 4)
      {
        v95 = CFArrayGetValueAtIndex(v94, 0);
        if (v95)
        {
          v96 = v95;
          v97 = CVDictionaryGetIntValueWithDefault(v95, @"HorizontalSubsampling", 1);
          v98 = CVDictionaryGetIntValueWithDefault(v96, @"VerticalSubsampling", 1);
          v114 *= v98;
          v115 *= v97;
          v112 *= v98;
          v113 *= v97;
        }
      }
    }
  }

  CVDictionarySetSInt64Value(v3, @"ExtendedPixelsLeft", v115);
  CVDictionarySetSInt64Value(v3, @"ExtendedPixelsTop", v114);
  CVDictionarySetSInt64Value(v3, @"ExtendedPixelsRight", v113);
  CVDictionarySetSInt64Value(v3, @"ExtendedPixelsBottom", v112);
  if ((*(**(*v4 + 16) + 248))(*(*v4 + 16), Width, v107, 0, v62, BytesPerRowOfPlane, v10, 0, v120, v119, v118, 0, 0, 0, v3, 0, a1, 0, 0, 0, &v116))
  {
    v99 = *MEMORY[0x1E695E4D0];
    if (v99 == CFDictionaryGetValue(v3, @"IOSurfaceWiringAssertion"))
    {
      *(*(*v4 + 16) + 488) |= 2u;
    }
  }

  else
  {
    *v4 = 0;
  }

LABEL_56:
  result = v116;
  v38 = *MEMORY[0x1E69E9840];
  return result;
}

void CVBufferBacking::CVBufferBacking(CVBufferBacking *this, const void *a2)
{
  CVObject::CVObject(this, a2);
  *v2 = &unk_1F10866B0;
  *(v2 + 88) = 0;
  *(v2 + 113) = 0;
  *(v2 + 120) = 0;
  *(v2 + 128) = 0;
}

const void *CVPixelFormatDescriptionGetDescriptionWithPixelFormatType(unsigned int a1)
{
  CVKTraceInit();
  if (!_pixelFormatDictionary)
  {
    pthread_once(&once, _pixelFormatDictionaryInit);
  }

  pthread_mutex_lock(&_pixelFormatMutex);
  Value = CFDictionaryGetValue(_pixelFormatDictionary, a1);
  pthread_mutex_unlock(&_pixelFormatMutex);
  return Value;
}

CVImageBacking **CVPixelBufferBacking::alloc(CVPixelBufferBacking *this, const __CFAllocator *a2)
{
  if (_cvUseTrackingAllocator)
  {
    this = _cvTrackingGetCFAllocator(@"CVPixelBufferBacking");
  }

  if (CVPixelBufferBackingGetTypeID(void)::once != -1)
  {
    CVPixelBufferBackingGetTypeID();
  }

  v3 = CVObject::alloc(kCVPixelBufferBackingID, this, 0x18, 0x498uLL);
  v4 = v3;
  if (v3)
  {
    CVImageBacking::CVImageBacking(v3[2], v3);
    *v5 = &unk_1F1087728;
    *(v5 + 496) = 0;
    *(v5 + 168) = 0;
    *(v5 + 1080) = 0;
    *(v5 + 1088) = 0u;
    *(v5 + 1112) = 0u;
    *(v5 + 144) = 1;
    *(v5 + 1136) = 0;
    *(v5 + 448) = 0;
    *(v5 + 456) = 0;
    *(v5 + 476) = 0;
  }

  return v4;
}

uint64_t CVObject::alloc(CVObject *this, unint64_t a2, const __CFAllocator *a3, size_t a4)
{
  v5 = (a3 + 15) & 0xFFFFFFFFFFFFFFF0;
  Instance = _CFRuntimeCreateInstance();
  v7 = Instance;
  if (Instance)
  {
    *(Instance + 16) = v5 + Instance;
    bzero((v5 + Instance), a4);
  }

  return v7;
}

void CVKTraceInit()
{
  if (initializeOnceToken != -1)
  {
    CVKTraceInit_cold_1();
  }
}

__IOSurface *IOOrEXSurfaceGetID(__IOSurface *result)
{
  if (result)
  {
    return IOSurfaceGetID(result);
  }

  return result;
}

IOSurfaceRef IOOrEXSurfaceGetHeight(IOSurfaceRef buffer)
{
  if (buffer)
  {
    return IOSurfaceGetHeight(buffer);
  }

  return buffer;
}

IOSurfaceRef IOOrEXSurfaceGetWidth(IOSurfaceRef buffer)
{
  if (buffer)
  {
    return IOSurfaceGetWidth(buffer);
  }

  return buffer;
}

IOSurfaceRef IOOrEXSurfaceGetPixelFormat(IOSurfaceRef buffer)
{
  if (buffer)
  {
    return IOSurfaceGetPixelFormat(buffer);
  }

  return buffer;
}

IOSurfaceRef IOOrEXSurfaceGetPlaneCount(IOSurfaceRef buffer)
{
  if (buffer)
  {
    return IOSurfaceGetPlaneCount(buffer);
  }

  return buffer;
}

IOSurfaceRef IOOrEXSurfaceGetBytesPerRow(IOSurfaceRef buffer)
{
  if (buffer)
  {
    return IOSurfaceGetBytesPerRow(buffer);
  }

  return buffer;
}

IOSurfaceRef IOOrEXSurfaceGetAllocSize(IOSurfaceRef buffer)
{
  if (buffer)
  {
    return IOSurfaceGetAllocSize(buffer);
  }

  return buffer;
}

IOSurfaceRef IOOrEXSurfaceGetHeightOfPlane(IOSurfaceRef buffer, size_t planeIndex)
{
  if (buffer)
  {
    return IOSurfaceGetHeightOfPlane(buffer, planeIndex);
  }

  return buffer;
}

IOSurfaceRef IOOrEXSurfaceGetWidthOfPlane(IOSurfaceRef buffer, size_t planeIndex)
{
  if (buffer)
  {
    return IOSurfaceGetWidthOfPlane(buffer, planeIndex);
  }

  return buffer;
}

IOSurfaceRef IOOrEXSurfaceGetBaseAddressOfPlane(IOSurfaceRef buffer, size_t planeIndex)
{
  if (buffer)
  {
    return IOSurfaceGetBaseAddressOfPlane(buffer, planeIndex);
  }

  return buffer;
}

IOSurfaceRef IOOrEXSurfaceGetBytesPerRowOfPlane(IOSurfaceRef buffer, size_t planeIndex)
{
  if (buffer)
  {
    return IOSurfaceGetBytesPerRowOfPlane(buffer, planeIndex);
  }

  return buffer;
}

void *retrievePixelFormat_kCVPixelFormatType_32BGRA(int a1)
{
  if (a1 > 16)
  {
    if (a1 == 17)
    {
      return &unk_1F108C988;
    }

    if (a1 != 48)
    {
      if (a1 == 49)
      {
        return &unk_1F108C9D8;
      }

      return 0;
    }

    return &unk_1F108C9B0;
  }

  else
  {
    if (!a1)
    {
      return &unk_1F108CA00;
    }

    if (a1 != 1)
    {
      if (a1 == 16)
      {
        return &unk_1F108C960;
      }

      return 0;
    }

    return &unk_1F108C938;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_OneComponent16Half(int a1)
{
  v1 = &unk_1F108C690;
  if (a1)
  {
    v1 = 0;
  }

  if (a1 == 2)
  {
    return &unk_1F108C668;
  }

  else
  {
    return v1;
  }
}

uint64_t retrievePixelFormat_kCVPixelFormatType_DisparityFloat16(int a1)
{
  HIDWORD(v2) = a1;
  LODWORD(v2) = a1;
  v1 = v2 >> 2;
  if (v1 > 3)
  {
    return 0;
  }

  else
  {
    return qword_1E75D5FB8[v1];
  }
}

uint64_t retrievePixelFormat_kCVPixelFormatType_DepthFloat16(int a1)
{
  HIDWORD(v2) = a1;
  LODWORD(v2) = a1;
  v1 = v2 >> 2;
  if (v1 > 3)
  {
    return 0;
  }

  else
  {
    return qword_1E75D5FD8[v1];
  }
}

uint64_t retrievePixelFormat_kCVPixelFormatType_DisparityFloat32(int a1)
{
  HIDWORD(v2) = a1;
  LODWORD(v2) = a1;
  v1 = v2 >> 2;
  if (v1 > 3)
  {
    return 0;
  }

  else
  {
    return qword_1E75D5FF8[v1];
  }
}

uint64_t retrievePixelFormat_kCVPixelFormatType_DepthFloat32(int a1)
{
  HIDWORD(v2) = a1;
  LODWORD(v2) = a1;
  v1 = v2 >> 2;
  if (v1 > 3)
  {
    return 0;
  }

  else
  {
    return qword_1E75D6018[v1];
  }
}

void *retrievePixelFormat_kCVPixelFormatType_32ARGB(int a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return &unk_1F108CAA0;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_24RGB(int a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return &unk_1F108CAC8;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_16BE555(int a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return &unk_1F108CAF0;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_16LE565(int a1)
{
  v1 = &unk_1F108CB40;
  if (a1)
  {
    v1 = 0;
  }

  if (a1 == 1)
  {
    return &unk_1F108CB18;
  }

  else
  {
    return v1;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_16LE5551(int a1)
{
  v1 = &unk_1F108CB90;
  if (a1)
  {
    v1 = 0;
  }

  if (a1 == 1)
  {
    return &unk_1F108CB68;
  }

  else
  {
    return v1;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_422YpCbCr8FullRange(int a1)
{
  v1 = &unk_1F108CCF8;
  if (a1)
  {
    v1 = 0;
  }

  if (a1 == 1)
  {
    return &unk_1F108CCD0;
  }

  else
  {
    return v1;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_8IndexedGray_WhiteIsZero(int a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return &unk_1F108CD20;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_16LE555(int a1)
{
  v1 = &unk_1F108CBE0;
  if (a1)
  {
    v1 = 0;
  }

  if (a1 == 1)
  {
    return &unk_1F108CBB8;
  }

  else
  {
    return v1;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_422YpCbCr8(int a1)
{
  v1 = &unk_1F108CC30;
  if (a1)
  {
    v1 = 0;
  }

  if (a1 == 1)
  {
    return &unk_1F108CC08;
  }

  else
  {
    return v1;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_422YpCbCr8FullRange_2vuf(int a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return &unk_1F108CC58;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_422YpCbCr8_yuvs(int a1)
{
  v1 = &unk_1F108CCA8;
  if (a1)
  {
    v1 = 0;
  }

  if (a1 == 1)
  {
    return &unk_1F108CC80;
  }

  else
  {
    return v1;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_OneComponent10(int a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return &unk_1F108CD48;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_OneComponent12(int a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return &unk_1F108CD70;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_OneComponent12LSB(int a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return &unk_1F108CD98;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_TwoComponent8(int a1)
{
  v1 = &unk_1F108CDE8;
  if (a1)
  {
    v1 = 0;
  }

  if (a1 == 1)
  {
    return &unk_1F108CDC0;
  }

  else
  {
    return v1;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_TwoComponent16(int a1)
{
  v1 = &unk_1F108CE38;
  if (a1)
  {
    v1 = 0;
  }

  if (a1 == 1)
  {
    return &unk_1F108CE10;
  }

  else
  {
    return v1;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_LuminanceAlpha8(int a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return &unk_1F108CE60;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_LuminanceAlpha16(int a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return &unk_1F108CE88;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_ThreeComponent16(int a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return &unk_1F108CEB0;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_FourComponent16(int a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return &unk_1F108CED8;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_FiveComponent16(int a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return &unk_1F108CF00;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_SixComponent16(int a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return &unk_1F108CF28;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_SevenComponent16(int a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return &unk_1F108CF50;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_EightComponent16(int a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return &unk_1F108CF78;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_NineComponent16(int a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return &unk_1F108CFA0;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_4444YpCbCrA8R(int a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return &unk_1F108CFC8;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_4444YpCbCrA8(int a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return &unk_1F108CFF0;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_4444AYpCbCr8(int a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return &unk_1F108D018;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_4444AYpCbCr16(int a1)
{
  v1 = &unk_1F108D068;
  if (a1)
  {
    v1 = 0;
  }

  if (a1 == 1)
  {
    return &unk_1F108D040;
  }

  else
  {
    return v1;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_64ARGB(int a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return &unk_1F108D090;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_48RGB(int a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return &unk_1F108D0B8;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_32AlphaGray(int a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return &unk_1F108D0E0;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_16Gray(int a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return &unk_1F108D108;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_30RGB(int a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return &unk_1F108D130;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_30RGBPad2Most(int a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return &unk_1F108D158;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_444YpCbCr8(int a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return &unk_1F108D180;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_422YpCbCr16(int a1)
{
  v1 = &unk_1F108D1D0;
  if (a1)
  {
    v1 = 0;
  }

  if (a1 == 1)
  {
    return &unk_1F108D1A8;
  }

  else
  {
    return v1;
  }
}

void *CVPixelBufferPool::createPixelBuffer(CVPixelBufferPool *this, const __CFAllocator *a2, const __CFDictionary *a3, int *a4)
{
  v48 = 0;
  (*(**(this + 2) + 160))(*(this + 2));
  {
    CVPixelBufferPool::createPixelBuffer(__CFAllocator const*,__CFDictionary const*,int *)::ktrace_seed = arc4random();
  }

  ++CVPixelBufferPool::createPixelBuffer(__CFAllocator const*,__CFDictionary const*,int *)::ktrace_seed;
  (*(*this + 24))(this);
  v8 = *(this + 2);
  if (v8)
  {
    (*(*v8 + 96))(v8);
    v9 = *(this + 2);
    if (v9)
    {
      (*(*v9 + 104))(v9);
    }
  }

  kdebug_trace();
  if (a3)
  {
    v10 = *MEMORY[0x1E695E4D0];
    Value = CFDictionaryGetValue(a3, @"PreferIOSurfaceWithWiringAssertion");
    v12 = CFDictionaryGetValue(a3, @"RequireIOSurfaceWithoutWiringAssertion");
    v13 = v10 == Value;
    if (v10 == Value && v10 == v12)
    {
      v21 = 0;
      v22 = -6691;
      goto LABEL_41;
    }

    if (v10 == Value)
    {
      v15 = 1;
    }

    else
    {
      v15 = 2 * (v10 == v12);
    }
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  v17 = (*(**(this + 2) + 128))(*(this + 2), &v48, v15);
  v18 = v48;
  if (v13 && !v48)
  {
    v17 = (*(**(this + 2) + 128))(*(this + 2), &v48, 0);
    v18 = v48;
  }

  if (!v18)
  {
    goto LABEL_68;
  }

  v19 = (*(*v18 + 24))(v18);
  if (v48)
  {
    if ((*(*v48 + 160))(v48))
    {
      v20 = (*(*v48 + 160))(v48);
      IOOrEXSurfaceGetID(v20);
    }

    else if (v48)
    {
      (*(*v48 + 24))(v48);
    }
  }

  (*(*this + 24))(this);
  v23 = *(this + 2);
  if (v23)
  {
    (*(*v23 + 96))(v23);
    v24 = *(this + 2);
    if (v24)
    {
      (*(*v24 + 104))(v24);
    }
  }

  kdebug_trace();
  if (!v19)
  {
LABEL_68:
    if (a3 && (v25 = CFDictionaryGetValue(a3, @"BufferPoolAllocationThreshold"), valuePtr = 0, v25) && (v26 = v25, v27 = CFGetTypeID(v25), v27 == CFNumberGetTypeID()) && (CFNumberGetValue(v26, kCFNumberLongType, &valuePtr), v28 = valuePtr, v28 <= (*(**(this + 2) + 96))(*(this + 2)) + v17))
    {
      v21 = 0;
      v22 = -6689;
    }

    else
    {
      v29 = CVPixelBufferBacking::alloc(a2, v16);
      v19 = v29;
      if (v29)
      {
        if (!(*(*v29[2] + 248))(v29[2], 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, *(this + 5), *(this + 4), 0, 0, 0, 0, a4))
        {
          v21 = 0;
          goto LABEL_60;
        }

        (*(**(this + 2) + 112))(*(this + 2), *(v19 + 16), 1, 0);
        v30 = (*(*this + 24))(this);
        v31 = (*(**(this + 2) + 96))(*(this + 2));
        v32 = (*(**(this + 2) + 104))(*(this + 2));
        CVTracePoolAction(1, v30, v19, "created", v31 + 1, v32);
        if (*(this + 136))
        {
          (*(**(v19 + 16) + 88))(*(v19 + 16));
        }

        goto LABEL_46;
      }

      v21 = 0;
      v22 = -6660;
    }

LABEL_41:
    *a4 = v22;
    goto LABEL_60;
  }

  if ((*(**(v19 + 16) + 152))(*(v19 + 16)))
  {
    LODWORD(valuePtr) = 0;
    IOSurfaceGetYCbCrMatrix();
    IOSurfaceClearDataProperties();
  }

  v34 = (*(**(v19 + 16) + 152))(*(v19 + 16));
  if (v34)
  {
    v35 = v34;
    v36 = CFDictionaryGetValue(*(this + 5), @"PropagatedAttachments");
    if (!v36 || !CFDictionaryContainsKey(v36, @"LogTransferFunction"))
    {
      IOSurfaceRemoveValue(v35, @"LogTransferFunction");
    }
  }

LABEL_46:
  v37 = CVPixelBuffer::alloc(a2, v33);
  v21 = v37;
  if (v37 && (*(*v37[2] + 248))(v37[2], *(v19 + 16)))
  {
    (*(*v21[2] + 144))(v21[2], *(this + 5));
    if (a3)
    {
      v38 = CFDictionaryGetValue(a3, @"BaseAddressAdjustment");
      valuePtr = 0;
      if (v38 && (v39 = v38, v40 = CFGetTypeID(v38), v40 == CFNumberGetTypeID()))
      {
        CFNumberGetValue(v39, kCFNumberLongType, &valuePtr);
        v41 = valuePtr;
      }

      else
      {
        v41 = 0;
      }

      (*(*v21[2] + 256))(v21[2], v41);
    }

    v42 = 0;
  }

  else
  {
    (*(**(this + 2) + 120))(*(this + 2), *(v19 + 16));
    v42 = -6660;
  }

  *a4 = v42;
  v43 = *(v19 + 16);
  if (v43 && (*(*v43 + 160))(v43))
  {
    (*(*this + 24))(this);
    v44 = (*(**(v19 + 16) + 160))(*(v19 + 16));
    IOOrEXSurfaceGetID(v44);
    v45 = *(this + 2);
    if (!v45)
    {
      goto LABEL_62;
    }

    goto LABEL_61;
  }

LABEL_60:
  (*(*this + 24))(this);
  v45 = *(this + 2);
  if (v45)
  {
LABEL_61:
    (*(*v45 + 104))(v45);
  }

LABEL_62:
  kdebug_trace();
  (*(**(this + 2) + 168))(*(this + 2));
  (*(**(this + 2) + 136))(*(this + 2));
  return v21;
}

uint64_t CVLocklessBunchPair::initNewBacking(CVLocklessBunchPair *this, CVBufferBacking *a2, char a3, char a4)
{
  do
  {
    v13 = *(this + 62);
    v12 = v13;
    if ((v13 & 0xFF0000) != 0)
    {
      v12 = v13 - 0x10000;
    }

    else if (a4)
    {
      return 4294960597;
    }

    if (v12 == v13)
    {
      break;
    }

    v7 = *(this + 62);
    v8 = v7;
    atomic_compare_exchange_strong_explicit(this + 62, &v8, v12, memory_order_relaxed, memory_order_relaxed);
  }

  while (v8 != v7);
  if (a2)
  {
    (*(*a2 + 96))(a2, this);
    if ((a3 & 1) == 0)
    {
      v9 = *(this + 28);
      v10 = (*(*a2 + 24))(a2);
      CVAtomicBunchAddObject(v9, v10);
    }
  }

  return 0;
}

void CVBufferBacking::setBunchPair(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = (*(*a2 + 24))(a2);
    CFRetain(v4);
  }

  v5 = *(a1 + 88);
  if (v5)
  {
    v6 = (*(*v5 + 24))(v5);
    CFRelease(v6);
  }

  *(a1 + 88) = a2;
}

uint64_t CVLocklessBunchPair::getFreeBackingsCount(CVLocklessBunchPair *this)
{
  result = *(this + 28);
  if (result)
  {
    return CVAtomicBunchGetCount(result);
  }

  return result;
}

uint64_t CVLocklessBunchPair::getUsedBackingsCount(CVLocklessBunchPair *this)
{
  result = *(this + 29);
  if (result)
  {
    return CVAtomicBunchGetCount(result);
  }

  return result;
}

uint64_t CVAtomicBunchAddObject(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 3;
  }

  v4 = *(a1 + 16);
  v21 = v4;
  if (!v4)
  {
    goto LABEL_27;
  }

  v5 = 3;
  do
  {
    v20 = *(v4 + 4);
    if (v20)
    {
      v5 = 2;
    }

    else if ((v20 & 4) == 0 && !HIWORD(v20))
    {
      v23 = 0;
      v22 = 0;
      do
      {
        v23 = *(v4 + 4);
        v22 = (v23 | 1) + 0x10000;
        v6 = v23;
        v7 = v23;
        atomic_compare_exchange_strong_explicit(v4 + 4, &v7, v22, memory_order_relaxed, memory_order_relaxed);
      }

      while (v7 != v6);
      v8 = v23;
      if (v23)
      {
        v5 = 2;
      }

      else if ((v23 & 4) == 0 && !HIWORD(v23))
      {
        v4[1] = a2;
        CVMemoryBarrier();
        v23 = 0;
        v22 = 0;
        do
        {
          v23 = *(v4 + 4);
          v22 = v23 | 4;
          v9 = v23;
          v10 = v23;
          atomic_compare_exchange_strong_explicit(v4 + 4, &v10, v23 | 4, memory_order_relaxed, memory_order_relaxed);
        }

        while (v10 != v9);
        v5 = 1;
        atomic_fetch_add_explicit(*(a1 + 32), 1 << *(a1 + 40), memory_order_relaxed);
      }

      v23 = 0;
      v22 = 0;
      do
      {
        v23 = *(v4 + 4);
        v22 = v23 - 0x10000;
        if ((v8 & 1) == 0)
        {
          v22 &= ~1u;
          if ((v23 & 2) != 0)
          {
            v22 &= 0xFFFFFFF9;
          }
        }

        v11 = v23;
        v12 = v23;
        atomic_compare_exchange_strong_explicit(v4 + 4, &v12, v22, memory_order_relaxed, memory_order_relaxed);
      }

      while (v12 != v11);
    }

    v4 = *v4;
    v21 = v4;
  }

  while (v5 != 1 && v4);
  if (v5 != 1)
  {
LABEL_27:
    result = CVAtomicBunchIncreaseSizeAndReserveElement(a1, 0x10u, &v21);
    if (result != 1)
    {
      return result;
    }

    v21[1] = a2;
    CVMemoryBarrier();
    v14 = v21;
    v23 = 0;
    v22 = 0;
    do
    {
      v23 = *(v14 + 4);
      v22 = v23 | 4;
      v15 = v23;
      v16 = v23;
      atomic_compare_exchange_strong_explicit(v14 + 4, &v16, v23 | 4, memory_order_relaxed, memory_order_relaxed);
    }

    while (v16 != v15);
    atomic_fetch_add_explicit(*(a1 + 32), 1 << *(a1 + 40), memory_order_relaxed);
    v17 = v21;
    v23 = 0;
    v22 = 0;
    do
    {
      v23 = *(v17 + 4);
      v22 = (v23 - 0x10000) & 0xFFFFFFFE;
      if ((v23 & 2) != 0)
      {
        v22 &= ~4u;
        v22 &= ~2u;
      }

      v18 = v23;
      v19 = v23;
      atomic_compare_exchange_strong_explicit(v17 + 4, &v19, v22, memory_order_relaxed, memory_order_relaxed);
    }

    while (v19 != v18);
  }

  return 1;
}

uint64_t CVAtomicBunchApply(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  if (!a1)
  {
    return 3;
  }

  v4 = *(a1 + 16);
  if (!v4)
  {
    return 1;
  }

  v7 = 1;
  do
  {
    v15 = *(v4 + 4);
    if (v15)
    {
      LOBYTE(v8) = 0;
      v7 = 2;
    }

    else if ((v15 & 4) != 0)
    {
      do
      {
        v17 = *(v4 + 4);
        v10 = v17;
        v11 = v17;
        atomic_compare_exchange_strong_explicit(v4 + 4, &v11, (v17 | 1) + 0x10000, memory_order_relaxed, memory_order_relaxed);
      }

      while (v11 != v10);
      if (v17)
      {
        v8 = 0;
        v7 = 2;
      }

      else if ((v17 & 4) != 0)
      {
        v8 = a2(a3, v4[1]);
      }

      else
      {
        v8 = 0;
      }

      do
      {
        v16 = *(v4 + 4) - 0x10000;
        if ((v17 & 1) == 0)
        {
          v16 &= ~1u;
          if (v4[2] & 2 | (v8 >> 1) & 1)
          {
            v16 &= 0xFFFFFFF9;
          }
        }

        v12 = *(v4 + 4);
        v13 = v12;
        atomic_compare_exchange_strong_explicit(v4 + 4, &v13, v16, memory_order_relaxed, memory_order_relaxed);
      }

      while (v13 != v12);
      if ((v8 & 2) != 0)
      {
        atomic_fetch_add_explicit(*(a1 + 32), -1 << *(a1 + 40), memory_order_relaxed);
      }
    }

    else
    {
      LOBYTE(v8) = 0;
    }

    v4 = *v4;
    if (v4)
    {
      v9 = (v8 & 1) == 0;
    }

    else
    {
      v9 = 0;
    }
  }

  while (v9);
  return v7;
}

uint64_t CVLocklessBunchPair::bufferBackingNotInUse(CVLocklessBunchPair *this, CVBufferBacking *a2)
{
  v4 = *(this + 29);
  v5 = (*(*a2 + 24))(a2);
  CVAtomicBunchRemoveObject(v4, v5, 1);
  v6 = *(this + 28);
  v7 = (*(*a2 + 24))(a2);

  return CVAtomicBunchAddObject(v6, v7);
}

CVReturn CVPixelBufferPoolCreatePixelBuffer(CFAllocatorRef allocator, CVPixelBufferPoolRef pixelBufferPool, CVPixelBufferRef *pixelBufferOut)
{
  v8 = -6660;
  CVPixelBufferPool = _getCVPixelBufferPool(pixelBufferPool);
  v6 = -6661;
  if (pixelBufferOut && CVPixelBufferPool)
  {
    *pixelBufferOut = (*(*CVPixelBufferPool + 104))(CVPixelBufferPool, allocator, 0, &v8);
    return v8;
  }

  return v6;
}

uint64_t areUniversalCompressedBuffers2KAligned(void)
{
  if ((areUniversalCompressedBuffers2KAligned(void)::didCheck & 1) == 0)
  {
    v0 = MGCopyAnswer();
    if (v0)
    {
      v1 = v0;
      v2 = *MEMORY[0x1E695E4D0];
      if (v2 == CFDictionaryGetValue(v0, @"universal-buffer-compression-requires-plane-alignment-2048"))
      {
        areUniversalCompressedBuffers2KAligned(void)::result = 1;
      }

      CFRelease(v1);
    }

    if (!areUniversalCompressedBuffers2KAligned(void)::result)
    {
      keyExistsAndHasValidFormat = 0;
      AppBooleanValue = CFPreferencesGetAppBooleanValue(@"universal-buffer-compression-requires-plane-alignment-2048", @"com.apple.corevideo", &keyExistsAndHasValidFormat);
      if (keyExistsAndHasValidFormat)
      {
        areUniversalCompressedBuffers2KAligned(void)::result = AppBooleanValue;
      }
    }

    areUniversalCompressedBuffers2KAligned(void)::didCheck = 1;
  }

  return areUniversalCompressedBuffers2KAligned(void)::result;
}

CFTypeID CVPixelBufferPoolGetTypeID(void)
{
  if (CVPixelBufferPoolGetTypeID::once != -1)
  {
    CVPixelBufferPoolGetTypeID_cold_1();
  }

  return kCVPixelBufferPoolID;
}

void *_getCVPixelBufferPool(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    if (v2 == CVPixelBufferPoolGetTypeID())
    {
      return v1[2];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t CVLocklessBunchPair::tryToReuseABacking(uint64_t a1, void *a2, int a3)
{
  v6 = 0;
  v7 = 0;
  v8 = a3;
  CVAtomicBunchApply(*(a1 + 224), _tryToReuseABacking, &v6);
  v4 = v6;
  if (v6)
  {
    v4 = *(v6 + 16);
  }

  *a2 = v4;
  return v7;
}

void CVBufferBacking::setPoolName(atomic_uint *this, CFTypeRef cf)
{
  v4 = 0;
  atomic_compare_exchange_strong_explicit(this + 32, &v4, 1u, memory_order_relaxed, memory_order_relaxed);
  if (cf)
  {
    CFRetain(cf);
  }

  v5 = *(this + 15);
  if (v5)
  {
    CFRelease(v5);
  }

  *(this + 15) = cf;
}

uint64_t CVBunchPair::notifyPoolBufferBackingInUse(uint64_t this, CVBufferBacking *a2)
{
  if (*(this + 216))
  {
    return (*(**(*(this + 216) + 16) + 72))(*(*(this + 216) + 16), a2);
  }

  return this;
}

uint64_t CVAtomicBunchRemoveObject(uint64_t a1, uint64_t a2, int a3)
{
  if (a1)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      while (v3[1] != a2)
      {
        v4 = 3;
LABEL_14:
        v3 = *v3;
        if (v4 != 3 || !v3)
        {
          return v4;
        }
      }

      do
      {
        v15 = *(v3 + 4);
        v5 = v15;
        v6 = v15;
        atomic_compare_exchange_strong_explicit(v3 + 4, &v6, (v15 | 1) + 0x10000, memory_order_relaxed, memory_order_relaxed);
      }

      while (v6 != v5);
      v7 = v15;
      v8 = (v15 & 1) == 0;
      if ((v15 & 4) != 0 && (v15 & 2) == 0 && v3[1] == a2)
      {
        if (!a3 && (v15 & 1) != 0)
        {
          v4 = 2;
          goto LABEL_10;
        }

        do
        {
          v17 = *(v3 + 4);
          v11 = v17;
          v12 = v17;
          atomic_compare_exchange_strong_explicit(v3 + 4, &v12, v17 | 3, memory_order_relaxed, memory_order_relaxed);
        }

        while (v12 != v11);
        v8 = (v17 & 1) == 0;
        if ((v7 & 1) == 0)
        {
          v8 = 1;
        }

        if ((v17 & 4) != 0 && (v17 & 2) == 0)
        {
          atomic_fetch_add_explicit(*(a1 + 32), -1 << *(a1 + 40), memory_order_relaxed);
          v4 = 1;
          goto LABEL_10;
        }
      }

      v4 = 3;
      do
      {
LABEL_10:
        v16 = *(v3 + 4);
        v14 = v16 - 0x10000;
        if (v8)
        {
          v14 &= ~1u;
          if ((v16 & 2) != 0)
          {
            v14 &= 0xFFFFFFF9;
          }
        }

        v9 = *(v3 + 4);
        v10 = v9;
        atomic_compare_exchange_strong_explicit(v3 + 4, &v10, v14, memory_order_relaxed, memory_order_relaxed);
      }

      while (v10 != v9);
      goto LABEL_14;
    }
  }

  return 3;
}

uint64_t CVLocklessBunchPair::bufferBackingInUse(CVLocklessBunchPair *this, CVBufferBacking *a2)
{
  v4 = *(this + 28);
  for (i = (*(*a2 + 24))(a2); CVAtomicBunchRemoveObject(v4, i, 0) == 2; i = (*(*a2 + 24))(a2))
  {
    sched_yield();
    v4 = *(this + 28);
  }

  v6 = *(this + 29);
  v7 = (*(*a2 + 24))(a2);

  return CVAtomicBunchAddObject(v6, v7);
}

const void *CVPixelBuffer::setDefaultAttachments(CFMutableDictionaryRef *this, const __CFDictionary *a2)
{
  CFDictionaryRemoveAllValues(this[10]);
  CFDictionaryRemoveAllValues(this[11]);
  result = _os_feature_enabled_impl();
  if (result)
  {
    result = (*(*this[15] + 152))(this[15]);
    if (result)
    {
      result = IOSurfaceRemoveCoreVideoBridgedValues();
    }
  }

  if (a2)
  {
    Value = CFDictionaryGetValue(a2, @"PropagatedAttachments");
    if (Value)
    {
      v6 = Value;
      v7 = CFGetTypeID(Value);
      if (v7 == CFDictionaryGetTypeID())
      {
        (*(*this + 17))(this, v6, 1);
      }
    }

    result = CFDictionaryGetValue(a2, @"NonPropagatedAttachments");
    if (result)
    {
      v8 = result;
      v9 = CFGetTypeID(result);
      result = CFDictionaryGetTypeID();
      if (v9 == result)
      {
        v10 = *(*this + 17);

        return v10(this, v8, 0);
      }
    }
  }

  return result;
}

void *CVPixelBufferGetBufferBacking(void *a1)
{
  result = _getCVPixelBuffer(a1);
  if (result)
  {
    v2 = *(*result[15] + 24);

    return v2();
  }

  return result;
}

void CVPixelBufferGetExtendedPixels(CVPixelBufferRef pixelBuffer, size_t *extraColumnsOnLeft, size_t *extraColumnsOnRight, size_t *extraRowsOnTop, size_t *extraRowsOnBottom)
{
  CVPixelBuffer = _getCVPixelBuffer(pixelBuffer);
  if (CVPixelBuffer)
  {
    v10 = *(*CVPixelBuffer[15] + 400);

    v10();
  }

  else
  {
    if (extraColumnsOnLeft)
    {
      *extraColumnsOnLeft = 0;
    }

    if (extraRowsOnTop)
    {
      *extraRowsOnTop = 0;
    }

    if (extraColumnsOnRight)
    {
      *extraColumnsOnRight = 0;
    }

    if (extraRowsOnBottom)
    {
      *extraRowsOnBottom = 0;
    }
  }
}

void CVBufferRemoveAttachment(CVBufferRef buffer, CFStringRef key)
{
  CVBuffer = _getCVBuffer(buffer);
  if (CVBuffer)
  {
    v3 = *(*CVBuffer + 112);

    v3();
  }
}

void CVBufferSetAttachments(CVBufferRef buffer, CFDictionaryRef theAttachments, CVAttachmentMode attachmentMode)
{
  CVBuffer = _getCVBuffer(buffer);
  if (CVBuffer)
  {
    v4 = *(*CVBuffer + 136);

    v4();
  }
}

uint64_t CVPixelBuffer::setAttachments(CVPixelBuffer *this, const __CFDictionary *a2, unsigned int a3)
{
  if (_os_feature_enabled_impl())
  {
    v6 = (*(**(this + 15) + 152))(*(this + 15));
    v7 = 4294960635;
    if (a2 && a3 <= 1)
    {
      v8 = v6;
      cf[0] = 0;
      ValueIfPresent = CFDictionaryGetValueIfPresent(a2, @"ProResRAW_BayerPattern", cf);
      if (a3 == 1 && v8)
      {
        keysAndValues[0] = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        pthread_mutex_lock((this + 16));
        context = *(this + 5);
        keysAndValues[1] = v8;
        CFDictionaryApplyFunction(a2, translateCoreVideoAttachmentKeyToIOSurfaceKeyAndStoreIt, &context);
        IOSurfaceSetValues(v8, keysAndValues[0]);
        pthread_mutex_unlock((this + 16));
        CFRelease(keysAndValues[0]);
        return 0;
      }

      if (a3)
      {
        return CVBuffer::setAttachments(this, a2, a3);
      }

      v25 = !v8 || ValueIfPresent == 0;
      if (v25 || cf[0] == 0)
      {
        return CVBuffer::setAttachments(this, a2, a3);
      }

      v27 = CFGetTypeID(cf[0]);
      if (v27 != CFNumberGetTypeID())
      {
        return CVBuffer::setAttachments(this, a2, a3);
      }

      IOSurfaceSetValue(v8, *MEMORY[0x1E696D128], cf[0]);
      MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, a2);
      if (!MutableCopy)
      {
        return 4294960634;
      }

      v29 = MutableCopy;
      CFDictionaryRemoveValue(MutableCopy, @"ProResRAW_BayerPattern");
      v7 = CVBuffer::setAttachments(this, v29, 0);
      v24 = v29;
LABEL_35:
      CFRelease(v24);
    }
  }

  else
  {
    v48 = 0;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    context = 0u;
    *keysAndValues = 0u;
    v7 = CVBuffer::setAttachments(this, a2, a3);
    v10 = (*(**(this + 15) + 152))(*(this + 15));
    if (a3 == 1 && !v7)
    {
      v11 = v10;
      if (v10)
      {
        v12 = CVGetNumberOfEntriesInCVBufferAttachmentKeyMappingTable();
        if (v12 < 1)
        {
          return 0;
        }

        v13 = v12;
        v14 = 0;
        Mutable = 0;
        v7 = 0;
        v16 = MEMORY[0x1E695E9D8];
        v17 = MEMORY[0x1E695E9E8];
        do
        {
          cf[0] = 0;
          v18 = CVGetCVBufferAttachmentKeyAtIndexInMappingTable(v14);
          Value = CFDictionaryGetValue(a2, v18);
          if (Value)
          {
            v20 = Value;
            v21 = CVGetCVBufferAttachmentKeyAtIndexInMappingTable(v14);
            v22 = convertAttachmentToIOSurfaceStruct(v21, v20, &context, cf);
            v7 |= cf[0];
            if (!v22)
            {
              if (!Mutable)
              {
                Mutable = CFDictionaryCreateMutable(0, 0, v16, v17);
              }

              v23 = CVGetCVBufferAttachmentKeyAtIndexInMappingTable(v14);
              CVPixelBuffer::addIOSurfaceAttachmentToDictionary(this, Mutable, v23, v20);
            }
          }

          ++v14;
        }

        while (v13 != v14);
        if (v7)
        {
          v37 = v46;
          v38 = v47;
          v39 = v48;
          v33 = v42;
          v34 = v43;
          v35 = v44;
          v36 = v45;
          *cf = context;
          v32 = *keysAndValues;
          v7 = setBulkAttachmentsOnIOSurface(v11, cf, v7);
        }

        if (Mutable)
        {
          IOSurfaceSetValues(v11, Mutable);
          v24 = Mutable;
          goto LABEL_35;
        }
      }
    }
  }

  return v7;
}

const void *CVPixelBuffer::getAttachment(CVPixelBuffer *this, const __CFString *a2, CVAttachmentMode *a3)
{
  if (_os_feature_enabled_impl())
  {
    v6 = (*(**(this + 15) + 152))(*(this + 15));
    if (v6)
    {
      v8 = v6;
      v9 = CVGetIOSurfacePropertyKeyForCVBufferAttachmentKey(a2);
      pthread_mutex_lock((this + 16));
      v10 = copyIOSurfaceAttachment(v8, v9);
      if (!v10)
      {
        Value = CFDictionaryGetValue(*(this + 11), a2);
        if (Value)
        {
          v11 = Value;
          if (a3)
          {
            *a3 = kCVAttachmentMode_ShouldPropagate;
          }
        }

        else
        {
          v14 = CFDictionaryGetValue(*(this + 10), a2);
          v11 = v14;
          if (a3 && v14)
          {
            *a3 = kCVAttachmentMode_ShouldNotPropagate;
          }
        }

        goto LABEL_17;
      }

      v11 = v10;
      if (CFEqual(*MEMORY[0x1E696D128], v9))
      {
        CFDictionarySetValue(*(this + 10), a2, v11);
        if (a3)
        {
          v12 = kCVAttachmentMode_ShouldNotPropagate;
LABEL_15:
          *a3 = v12;
        }
      }

      else
      {
        CFDictionarySetValue(*(this + 11), a2, v11);
        if (a3)
        {
          v12 = kCVAttachmentMode_ShouldPropagate;
          goto LABEL_15;
        }
      }

      CFRelease(v11);
LABEL_17:
      pthread_mutex_unlock((this + 16));
      return v11;
    }
  }

  return CVBuffer::getAttachment(this, a2, a3);
}