void LibJPEGReadPlugin::readQualityPropertiesFromJPEG(uint64_t a1, uint64_t a2, IIODictionary *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = *MEMORY[0x1E695E480];
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 4, MEMORY[0x1E695E9C0]);
    if (Mutable)
    {
      v6 = Mutable;
      v7 = 0;
      v8 = *MEMORY[0x1E695E738];
      do
      {
        CFArraySetValueAtIndex(v6, v7++, v8);
      }

      while (v7 != 4);
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      *bytes = 0u;
      v17 = 0u;
      if (*(a2 + 56) >= 1)
      {
        v9 = 0;
        do
        {
          v10 = *(a2 + 304) + 96 * v9;
          v11 = *(v10 + 16);
          if (v11 <= 3)
          {
            v12 = *(a2 + 200 + 8 * v11);
            if (v12)
            {
              if (CFArrayGetValueAtIndex(v6, *(v10 + 16)) == v8)
              {
                for (i = 0; i != 128; i += 2)
                {
                  *&bytes[i] = *(v12 + i);
                }

                v14 = CFDataCreate(v4, bytes, 128);
                if (v14)
                {
                  CFArraySetValueAtIndex(v6, v11, v14);
                  CFRelease(v14);
                }
              }
            }
          }

          ++v9;
        }

        while (v9 < *(a2 + 56));
      }

      IIODictionary::setObjectForKeyGroup(a3, v6, @"Quantization", @"{JPEG}");
      CFRelease(v6);
    }

    if (*(a2 + 56) == 3)
    {
      IIONumber::IIONumber(bytes, *(*(a2 + 304) + 8));
      IIODictionary::setObjectForKeyGroup(a3, bytes, @"ChromaSubsamplingX", @"{JPEG}");
      IIONumber::~IIONumber(bytes);
      IIONumber::IIONumber(bytes, *(*(a2 + 304) + 12));
      IIODictionary::setObjectForKeyGroup(a3, bytes, @"ChromaSubsamplingY", @"{JPEG}");
      IIONumber::~IIONumber(bytes);
    }
  }
}

void sub_1860232EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  IIONumber::~IIONumber(va);
  _Unwind_Resume(a1);
}

uint64_t LibJPEGReadPlugin::validateJPEG(IIOImageReadSession **this)
{
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  IIOScanner::IIOScanner(v3, this[3]);
  IIOScanner::setEndianness(v3, 0);
  IIOScanner::seek(v3, 2uLL);
  while (IIOScanner::getVal16(v3) != 65498)
  {
    Val16 = IIOScanner::getVal16(v3);
    IIOScanner::skip(v3, Val16 - 2);
  }

  IIOScanner::~IIOScanner(v3);
  return 0;
}

void sub_1860233A4(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x186023388);
}

void readJFIFData(uint64_t a1, IIODictionary *a2)
{
  if (a1 && a2 && *(a1 + 376))
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    IIOArray::IIOArray(&v11);
    IIONumber::IIONumber(v9, *(a1 + 380));
    IIOArray::addObject(&v11, v10);
    IIONumber::~IIONumber(v9);
    IIONumber::IIONumber(v9, *(a1 + 381) >> 4);
    IIOArray::addObject(&v11, v10);
    IIONumber::~IIONumber(v9);
    IIONumber::IIONumber(v9, *(a1 + 381) & 0xF);
    IIOArray::addObject(&v11, v10);
    IIONumber::~IIONumber(v9);
    IIODictionary::setObjectForKeyGroup(a2, v12, @"JFIFVersion", @"{JFIF}");
    IIOArray::~IIOArray(&v11);
    IIONumber::IIONumber(&v11, *(a1 + 384));
    IIODictionary::setObjectForKeyGroup(a2, &v11, @"XDensity", @"{JFIF}");
    IIONumber::~IIONumber(&v11);
    IIONumber::IIONumber(&v11, *(a1 + 386));
    IIODictionary::setObjectForKeyGroup(a2, &v11, @"YDensity", @"{JFIF}");
    IIONumber::~IIONumber(&v11);
    IIONumber::IIONumber(&v11, *(a1 + 382));
    IIODictionary::setObjectForKeyGroup(a2, &v11, @"DensityUnit", @"{JFIF}");
    IIONumber::~IIONumber(&v11);
    v5 = *(a1 + 382);
    if (v5 == 2)
    {
      LOWORD(v4) = *(a1 + 384);
      *&v8 = v4 * 2.54;
      v6 = *&v8;
      LOWORD(v8) = *(a1 + 386);
      v7 = v8 * 2.54;
    }

    else
    {
      v6 = 0.0;
      v7 = 0.0;
      if (v5 == 1)
      {
        LOWORD(v4) = *(a1 + 384);
        v6 = v4;
        LOWORD(v4) = *(a1 + 386);
        v7 = v4;
      }
    }

    if (ValidDPI(v6) && ValidDPI(v7))
    {
      IIONumber::IIONumber(&v11, v6);
      IIODictionary::setObjectForKey(a2, &v11, @"DPIWidth");
      IIONumber::~IIONumber(&v11);
      IIONumber::IIONumber(&v11, v7);
      IIODictionary::setObjectForKey(a2, &v11, @"DPIHeight");
      IIONumber::~IIONumber(&v11);
    }
  }
}

void sub_186023618(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  IIONumber::~IIONumber(va);
  _Unwind_Resume(a1);
}

uint64_t copyRenderingInfo(uint64_t a1)
{
  v1 = *(a1 + 408);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  do
  {
    if (*(v1 + 8) == 225)
    {
      v3 = *(v1 + 4);
      if (v3 >= 0xB)
      {
        v4 = v1[3];
        if (*v4 == 69 && *(v4 + 1) == 120 && *(v4 + 2) == 105 && *(v4 + 3) == 102 && !*(v4 + 4) && !*(v4 + 5))
        {
          result = CreateMetadataFromDatabuffer((v4 + 6), v3 - 6);
        }
      }
    }

    v1 = *v1;
  }

  while (v1);
  return result;
}

uint64_t LibJPEGReadPlugin::copyImageBlockSetImp(uint64_t a1, const void *a2, const void *a3, uint64_t a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  *(a1 + 371) = 0;
  if (a4)
  {
    return 0;
  }

  if (*(a1 + 472) == 2)
  {
    return LibJPEGReadPlugin::copyImageBlockSetProgressive(a1, a2, a3, a5, a6, a7, a8, a9, a10);
  }

  return LibJPEGReadPlugin::copyImageBlockSetStandard(a1, a2, a3, 0, a5, a6, a7, a8, a9, a10);
}

void sub_186023760(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x186023754);
}

uint64_t LibJPEGReadPlugin::decodeImageImp(IIOReadPlugin *this, IIODecodeParameter *a2, int a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  if ((gIIODebugFlags & 0x20000) != 0)
  {
    v10 = *(this + 55);
    v11 = v10 >> 24;
    v12 = MEMORY[0x1E69E9830];
    if ((v10 >> 24) <= 0x7F)
    {
      v13 = *(MEMORY[0x1E69E9830] + 4 * v11 + 60) & 0x40000;
    }

    else
    {
      v13 = __maskrune(v11, 0x40000uLL);
      v10 = *(this + 55);
    }

    if (v13)
    {
      v14 = (v10 >> 24);
    }

    else
    {
      v14 = 46;
    }

    v15 = v10 << 8 >> 24;
    if (v15 <= 0x7F)
    {
      v16 = *(v12 + 4 * v15 + 60) & 0x40000;
    }

    else
    {
      v16 = __maskrune(v15, 0x40000uLL);
      v10 = *(this + 55);
    }

    if (v16)
    {
      v17 = (v10 << 8 >> 24);
    }

    else
    {
      v17 = 46;
    }

    v18 = v10 >> 8;
    if (v18 <= 0x7F)
    {
      v19 = *(v12 + 4 * v18 + 60) & 0x40000;
    }

    else
    {
      v19 = __maskrune(v18, 0x40000uLL);
      v10 = *(this + 55);
    }

    if (v19)
    {
      v20 = (v10 >> 8);
    }

    else
    {
      v20 = 46;
    }

    if (v10 <= 0x7F)
    {
      if ((*(v12 + 4 * v10 + 60) & 0x40000) != 0)
      {
        goto LABEL_22;
      }
    }

    else if (__maskrune(v10, 0x40000uLL))
    {
LABEL_22:
      v21 = *(this + 220);
LABEL_25:
      ImageIOLog("♦️  '%c%c%c%c' [%s] %s\n", v14, v17, v20, v21, iioTypeStr[a3], "virtual OSStatus LibJPEGReadPlugin::decodeImageImp(IIODecodeParameter *, IIOImageType, IOSurfaceRef *, CVPixelBufferRef *, CGImageBlockSetRef *)");
      goto LABEL_26;
    }

    v21 = 46;
    goto LABEL_25;
  }

LABEL_26:
  IIOReadPlugin::debugDecodeImage(this, a2);
  if (a3 != 3)
  {
    return 4294967246;
  }

  v22 = *(a2 + 1);
  v23 = *(a2 + 2);
  v24 = *(a2 + 3);
  v25 = *(a2 + 4);
  v26 = *(a2 + 5);
  v27 = *(a2 + 6);
  v28 = *(a2 + 7);
  v29 = *(a2 + 8);
  XmpData = _APP1XMP::getXmpData(a2);
  v31 = (*(*this + 208))(this, v22, v23, XmpData, v24, v25, v26, v27, v28, v29);
  if (!a6)
  {
    return 4294967246;
  }

  v32 = v31;
  result = 0;
  *a6 = v32;
  return result;
}

const char *___ZL9GetCIProcv_block_invoke()
{
  v4 = *MEMORY[0x1E69E9840];
  strcpy(__path, "/System/Library/Frameworks/QuartzCore.framework/QuartzCore");
  v0 = dlopen(__path, 257);
  if (v0)
  {
    result = dlsym(v0, "CICreateCGImageRefFromYCbCrData");
    _MergedGlobals = result;
  }

  else
  {
    v2 = dlerror();
    return LogError("GetCIProc_block_invoke", 573, "cannot access 'QuartzCore.framework' - %s\n", v2);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, IIOImageReadSession *a54)
{

  return IIOImageReadSession::getBytes(a54, v54, 1024);
}

uint64_t OUTLINED_FUNCTION_14()
{

  return sigsetjmp((v0 + 9472), 0);
}

uint64_t OUTLINED_FUNCTION_15()
{
  v2 = *(v0 - 160);
  v3 = *(v0 - 176);

  return _ImageIO_Free(v2, v3);
}

const void *OUTLINED_FUNCTION_16(uint64_t a1, void *a2, mach_vm_size_t a3, unint64_t a4, int a5)
{
  v11 = v10;
  v12 = v7;
  v13 = v9;
  v14 = v8;

  return IIOReadPlugin::createImageBlock(v5, a2, a3, *&v11, a4, a5);
}

uint64_t OUTLINED_FUNCTION_17()
{

  return CGImageSetProperty();
}

uint64_t OUTLINED_FUNCTION_23(int a1, int a2, off_t a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{

  return IIOImageReadSession::getBytesAtOffset(v51, &a51, a3, 2);
}

double OUTLINED_FUNCTION_25(double a1, double a2, double a3, double a4)
{
  v9 = v8;
  v10 = v5;
  v11 = v7;
  v12 = v6;

  *&result = CGRectUnion(*&a1, *&v9);
  return result;
}

unint64_t *unpack_etc2_block(unint64_t *result, uint64_t a2)
{
  v14 = *result;
  v2 = v14;
  *a2 = 0;
  v3 = v2 >> 25;
  *(a2 + 11) = (v2 & 0x2000000) != 0;
  *(a2 + 10) = BYTE3(v2) & 1;
  *(a2 + 8) = v2 >> 29;
  *(a2 + 9) = (v2 >> 26) & 7;
  if (((v2 >> 25) & 1) == 0)
  {
    *(a2 + 4) = (16 * v2) & 0xF00 | BYTE1(v2) & 0xF0 | (v2 >> 20) & 0xF;
    *(a2 + 6) = (v2 >> 4) & 0xF0 | ((v2 & 0xF) << 8) | BYTE2(v2) & 0xF;
LABEL_11:
    v6 = 1;
    goto LABEL_12;
  }

  *(a2 + 4) = (v2 << 7) & 0x7C00 | (v2 >> 6) & 0xFFE0 | (v2 >> 19) & 0x1F;
  *(a2 + 6) = (v2 << 6) & 0x1C0 | (v2 >> 5) & 0x38 | BYTE2(v2) & 7;
  if ((v2 & 4) != 0)
  {
    v4 = -8;
  }

  else
  {
    v4 = 0;
  }

  if ((v2 & 0x40000) != 0)
  {
    v5 = -8;
  }

  else
  {
    v5 = 0;
  }

  if ((v2 >> 3) + (v2 & 7) + v4 > 0x1F)
  {
    v6 = 0;
    *a2 = 1;
    HIDWORD(v7) = v2 & 3 | (4 * ((v2 >> 3) & 3));
    LODWORD(v7) = v2 << 16;
    *(a2 + 4) = v7 >> 24;
    *(a2 + 6) = (v2 >> 12) & 0xFF0 | (v2 >> 28);
    *(a2 + 8) = v3 & 6 | BYTE3(v2) & 1;
    goto LABEL_12;
  }

  if (((v2 >> 8) & 4) != 0)
  {
    v10 = -8;
  }

  else
  {
    v10 = 0;
  }

  if ((v2 >> 11) + ((v2 >> 8) & 7) + v10 <= 0x1F)
  {
    if (((v2 >> 19) & 0x1F) + (WORD1(v2) & 7) + v5 > 0x1F)
    {
      *a2 = 3;
      *(a2 + 4) = (v2 >> 1) & 0x3F;
      *(a2 + 5) = (v2 << 6) & 0x40 | (v2 >> 9) & 0x3F;
      *(a2 + 6) = BYTE2(v2) & 0x18 | ((v2 & 0x80000000) != 0) | (v2 >> 3) & 0x20 | (v2 >> 15) & 6;
      *(a2 + 7) = v3 & 0x3E | BYTE3(v2) & 1;
      *(a2 + 8) = (v2 >> 33) & 0x7F;
      *(a2 + 9) = (v2 >> 27) & 0x20 | (v2 >> 43) & 0x1F;
      *(a2 + 10) = (v2 >> 37) & 0x38 | (v2 >> 53) & 7;
      *(a2 + 11) = (v2 >> 46) & 0x7C | (v2 >> 62);
      *(a2 + 12) = HIBYTE(v2) & 0x3F;
      return result;
    }

    goto LABEL_11;
  }

  *a2 = 2;
  v11 = (32 * v2) & 0xF00 | (16 * ((v2 >> 12) & 1 | (2 * (v2 & 7)))) | (v2 >> 8) & 8 | (v2 >> 7) & 6 | (v2 >> 23) & 1;
  *(a2 + 4) = (32 * v2) & 0xF00 | (16 * ((v2 >> 12) & 1 | (2 * (v2 & 7)))) | (v2 >> 8) & 8 | (v2 >> 7) & 6 | (v2 >> 23) & 1;
  v12 = (v2 >> 11) & 0xF00 | (16 * ((v2 >> 15) & 0xE | (v2 >> 31))) | (v2 >> 27) & 0xF;
  *(a2 + 6) = (v2 >> 11) & 0xF00 | (16 * ((v2 >> 15) & 0xE | (v2 >> 31))) | (v2 >> 27) & 0xF;
  v13 = BYTE3(v2) & 4 | (v2 >> 23) & 2;
  *(a2 + 8) = v13;
  if (v11 >= v12)
  {
    v6 = 0;
    *(a2 + 8) = v13 | 1;
  }

  else
  {
    v6 = 0;
  }

LABEL_12:
  for (i = 0; i != 16; ++i)
  {
    v9 = ((&v14 - (i >> 3))[7] >> (i & 7)) & 1 | (2 * (((&v14 - (i >> 3))[5] >> (i & 7)) & 1));
    if (v6)
    {
      LOBYTE(v9) = etc_selector_unscramble[v9];
    }

    *(a2 + 14 + i) = v9;
  }

  return result;
}

void decode_etc2(uint64_t a1, int8x16_t *a2, int32x4_t a3, int32x4_t a4, double a5, __n128 a6)
{
  v6 = a2;
  v110 = *MEMORY[0x1E69E9840];
  v8 = *a1;
  if (*a1 > 1)
  {
    if (v8 == 2)
    {
      v36 = 0;
      a3.i32[0] = *(a1 + 4);
      a4.i32[0] = a3.i32[0];
      a4.i32[1] = *(a1 + 6);
      a3.i32[1] = a4.i32[1];
      v37 = &etc_th_distances[*(a1 + 8)];
      v38.i64[0] = 0xF0000000FLL;
      v38.i64[1] = 0xF0000000FLL;
      v39 = vmovn_s32(vandq_s8(vshlq_u32(vzip1q_s32(a3, a3), xmmword_18620A810), v38));
      *a4.i8 = vmul_s32(vand_s8(*a4.i8, 0xF0000000FLL), 0x1100000011);
      v40 = vzip1q_s32(a4, a4);
      v41 = vld1q_dup_f32(v37);
      v47 = vsubq_s32(vmull_u16(v39, 0x11001100110011), v41);
      v42 = vaddq_s32(v40, v41);
      v43 = vsubq_s32(v40, v41);
      v44 = vmlal_u16(v41, v39, 0x11001100110011);
      v45 = vtrn2q_s32(v44, vtrn1q_s32(v44, v47));
      v46 = vtrn2q_s32(vrev64q_s32(v44), v47);
      v47.i32[3] = 0;
      v48 = vmaxq_s32(v45, 0);
      v49.i64[0] = 0xFF000000FFLL;
      v49.i64[1] = 0xFF000000FFLL;
      v108 = *&vorrq_s8(vorrq_s8(vshlq_u32(vminq_s32(vmaxq_s32(v46, 0), v49), xmmword_18620A830), vshlq_n_s32(vminq_s32(vmaxq_s32(vtrn2q_s32(vrev64q_s32(v42), v43), 0), v49), 0x18uLL)), vshlq_u32(vminq_s32(v48, v49), xmmword_18620A820)) | __PAIR128__(0xFF000000FFLL, 0xFF000000FFLL);
      v50 = a1 + 14;
      v51 = vdupq_n_s32(0x3B808081u);
      do
      {
        v52 = 0;
        v53 = v6;
        do
        {
          *v47.i8 = vshl_u32(vdup_n_s32(*(&v108 + *(v50 + v52))), 0xFFFFFFF0FFFFFFF8);
          v47.i32[2] = *(&v108 + *(v50 + v52));
          v54 = vshrq_n_u32(v47, 0x18uLL);
          v47.i32[3] = v47.i32[2];
          v55 = vandq_s8(v47, v49);
          v55.i32[2] = v54.i32[2];
          v47 = vmulq_f32(vcvtq_f32_u32(v55), v51);
          *v53++ = v47;
          v52 += 4;
        }

        while (v52 != 16);
        ++v36;
        ++v50;
        v6 += 4;
      }

      while (v36 != 4);
      return;
    }

    if (v8 == 3)
    {
      v73 = 0;
      v74 = (4 * *(a1 + 4)) | (*(a1 + 4) >> 4);
      v75 = (2 * *(a1 + 5)) | (*(a1 + 5) >> 6);
      v76 = (4 * *(a1 + 6)) | (*(a1 + 6) >> 4);
      v77 = ((4 * *(a1 + 10)) | (*(a1 + 10) >> 4)) - v74;
      v78 = ((2 * *(a1 + 11)) | (*(a1 + 11) >> 6)) - v75;
      v79 = ((4 * *(a1 + 12)) | (*(a1 + 12) >> 4)) - v76;
      v80 = vmulq_s32(vdupq_n_s32(((4 * *(a1 + 7)) | (*(a1 + 7) >> 4)) - v74), xmmword_186205980);
      v81 = vmulq_s32(vdupq_n_s32(((2 * *(a1 + 8)) | (*(a1 + 8) >> 6)) - v75), xmmword_186205980);
      v82 = vmulq_s32(vdupq_n_s32(((4 * *(a1 + 9)) | (*(a1 + 9) >> 4)) - v76), xmmword_186205980);
      v83 = (4 * v76) | 2;
      v84 = (4 * v75) | 2;
      v85 = vdupq_n_s32(0x437F0000u);
      __asm { FMOV            V19.4S, #1.0 }

      v91 = (4 * v74) | 2;
      do
      {
        i32 = a2[v73].i32;
        v93 = vmaxnmq_f32(vdivq_f32(vcvtq_f32_s32(vshrq_n_s32(vaddq_s32(vdupq_n_s32(v91), v80), 2uLL)), v85), 0);
        v94 = vmaxnmq_f32(vdivq_f32(vcvtq_f32_s32(vshrq_n_s32(vaddq_s32(vdupq_n_s32(v84), v81), 2uLL)), v85), 0);
        v95 = vminnmq_f32(vmaxnmq_f32(vdivq_f32(vcvtq_f32_s32(vshrq_n_s32(vaddq_s32(vdupq_n_s32(v83), v82), 2uLL)), v85), 0), _Q19);
        v96 = vbslq_s8(vcgtq_f32(_Q19, v94), v94, _Q19);
        v97 = vbslq_s8(vcgtq_f32(_Q19, v93), v93, _Q19);
        vst4q_f32(i32, *(&_Q19 - 3));
        v73 += 4;
        v83 += v79;
        v84 += v78;
        v91 += v77;
      }

      while (v73 != 16);
      return;
    }

    goto LABEL_52;
  }

  if (v8)
  {
    if (v8 == 1)
    {
      v9 = 0;
      v10 = etc_th_distances[*(a1 + 8)];
      v11 = *(a1 + 4);
      v12 = (v11 >> 4 << 16) & 0xFF0FFFFF | (v11 >> 4 << 20) | (((v11 >> 8) & 0xF) << 8) & 0xFFFF0FFF | (((v11 >> 8) & 0xF) << 12) | ((v11 & 0xF) << 24) | (v11 << 28);
      v13 = *(a1 + 6);
      v14 = (v13 >> 8) & 0xF | (16 * ((v13 >> 8) & 0xF));
      v15 = (v13 >> 4) | (16 * (v13 >> 4));
      v16 = v13 & 0xF | (16 * (v13 & 0xF));
      v17 = (v14 + v10) & ~((v14 + v10) >> 31);
      if (v17 >= 255)
      {
        v17 = 255;
      }

      v18 = (v15 + v10) & ~((v15 + v10) >> 31);
      if (v18 >= 255)
      {
        v18 = 255;
      }

      v19 = (v18 << 16) | (v17 << 8);
      v20 = (v16 + v10) & ~((v16 + v10) >> 31);
      if (v20 >= 255)
      {
        v20 = 255;
      }

      LODWORD(v108) = v12 | 0xFF;
      DWORD1(v108) = v19 | (v20 << 24) | 0xFF;
      v21 = (v14 << 8) | (v15 << 16) | (v16 << 24) | 0xFF;
      v22 = v14 - v10;
      v23 = v15 - v10;
      v24 = v16 - v10;
      v25 = v22 & ~(v22 >> 31);
      if (v25 >= 255)
      {
        v25 = 255;
      }

      v26 = v23 & ~(v23 >> 31);
      if (v26 >= 255)
      {
        v26 = 255;
      }

      v27 = (v26 << 16) | (v25 << 8);
      v28 = v24 & ~(v24 >> 31);
      if (v28 >= 255)
      {
        v28 = 255;
      }

      DWORD2(v108) = v21;
      HIDWORD(v108) = v27 | (v28 << 24) | 0xFF;
      v29 = a1 + 14;
      v30.i64[0] = 0xFF000000FFLL;
      v30.i64[1] = 0xFF000000FFLL;
      v31 = vdupq_n_s32(0x3B808081u);
      do
      {
        v32 = 0;
        v33 = v6;
        do
        {
          a6.n128_u64[0] = vshl_u32(vdup_n_s32(*(&v108 + *(v29 + v32))), 0xFFFFFFF0FFFFFFF8);
          a6.n128_u32[2] = *(&v108 + *(v29 + v32));
          v34 = vshrq_n_u32(a6, 0x18uLL);
          a6.n128_u32[3] = a6.n128_u32[2];
          v35 = vandq_s8(a6, v30);
          v35.i32[2] = v34.i32[2];
          a6 = vmulq_f32(vcvtq_f32_u32(v35), v31);
          *v33++ = a6;
          v32 += 4;
        }

        while (v32 != 16);
        ++v9;
        ++v29;
        v6 += 4;
      }

      while (v9 != 4);
      return;
    }

LABEL_52:
    decode_etc2();
  }

  v108 = 0u;
  v109 = 0u;
  if (*(a1 + 11) == 1)
  {
    v56 = *(a1 + 8);
    if (v56 >= 8)
    {
      decode_etc2();
    }

    v57 = *(a1 + 4);
    v58 = vand_s8(vshl_u32(vdup_n_s32(v57), 0xFFFFFFF6FFFFFFFBLL), 0x1F0000001FLL);
    v59.i64[0] = 0xFF000000FFLL;
    v59.i64[1] = 0xFF000000FFLL;
    v108 = *&vorrq_s8(vorrq_s8(vshlq_n_s32(vminq_s32(vmaxq_s32(vaddq_s32(vdupq_n_s32((8 * v58.i32[0]) | (v58.i32[0] >> 2)), etc_intensity_modifiers[v56]), 0), v59), 0x10uLL), vshlq_n_s32(vminq_s32(vmaxq_s32(vaddq_s32(vdupq_n_s32((v57 >> 2) & 7 | (8 * (v57 & 0x1F))), etc_intensity_modifiers[v56]), 0), v59), 0x18uLL)), vshlq_n_s32(vminq_s32(vmaxq_s32(vaddq_s32(vdupq_n_s32((8 * v58.i32[1]) | (v58.i32[1] >> 2)), etc_intensity_modifiers[v56]), 0), v59), 8uLL)) | __PAIR128__(0xFF000000FFLL, 0xFF000000FFLL);
    v60 = *(a1 + 9);
    if (v60 >= 8)
    {
      decode_etc2();
    }

    v61 = v57 & 0x1F;
    v62 = *(a1 + 6);
    if ((v62 & 4) != 0)
    {
      v63 = -8;
    }

    else
    {
      v63 = 0;
    }

    v64 = vand_s8(vshl_u32(vdup_n_s32(v62), 0xFFFFFFFAFFFFFFFDLL), 0x700000007);
    v65 = vadd_s32(vorr_s8((*&vcgt_u32(v64, 0x300000003) & 0xFFFFFFF8FFFFFFF8), v64), v58);
    v66 = (v63 & 0xFFFFFFF8 | v62 & 7) + v61;
    if ((v65.i32[0] | v66 | v65.i32[1]) >= 0x20)
    {
      v65 = vmin_s32(vmax_s32(v65, 0), 0x1F0000001FLL);
      v66 &= ~(v66 >> 31);
      if (v66 >= 31)
      {
        v66 = 31;
      }
    }

    v67 = (8 * v65.i32[0]) | (v65.i32[0] >> 2);
    v71 = etc_intensity_modifiers[v60];
    v68 = vaddq_s32(v71, vdupq_n_s32((8 * v65.i32[1]) | (v65.i32[1] >> 2)));
    v69 = vaddq_s32(v71, vdupq_n_s32(v67));
    v70 = vaddq_s32(v71, vdupq_n_s32((8 * v66) | (v66 >> 2)));
    v71.i32[3] = 0;
    v72.i64[0] = 0xFF000000FFLL;
    v72.i64[1] = 0xFF000000FFLL;
    v109 = *&vorrq_s8(vorrq_s8(vshlq_n_s32(vminq_s32(vmaxq_s32(v69, 0), v72), 0x10uLL), vshlq_n_s32(vminq_s32(vmaxq_s32(v70, 0), v72), 0x18uLL)), vshlq_n_s32(vminq_s32(vmaxq_s32(v68, 0), v72), 8uLL)) | __PAIR128__(0xFF000000FFLL, 0xFF000000FFLL);
  }

  else
  {
    get_abs_subblock_palette(*(a1 + 4), *(a1 + 8), &v108);
    get_abs_subblock_palette(*(a1 + 6), *(a1 + 9), &v109);
  }

  v98 = 0;
  v99 = 14;
  v100.i64[0] = 0xFF000000FFLL;
  v100.i64[1] = 0xFF000000FFLL;
  v101 = vdupq_n_s32(0x3B808081u);
  do
  {
    v102 = 0;
    v103 = v99;
    do
    {
      if (*a1)
      {
        decode_etc2();
      }

      if (*(a1 + 10))
      {
        v104 = v98;
      }

      else
      {
        v104 = v102;
      }

      v105 = *(&v108 + 4 * ((v104 & 0xFFFFFFFE) != 0) + *(a1 + v103));
      *v71.i8 = vshl_u32(vdup_n_s32(v105), 0xFFFFFFF0FFFFFFF8);
      v71.i32[2] = v105;
      v106 = vshrq_n_u32(v71, 0x18uLL);
      v71.i32[3] = v105;
      v107 = vandq_s8(v71, v100);
      v107.i32[2] = v106.i32[2];
      v71 = vmulq_f32(vcvtq_f32_u32(v107), v101);
      v6[v102++] = v71;
      v103 += 4;
    }

    while (v102 != 4);
    ++v98;
    ++v99;
    v6 += 4;
  }

  while (v98 != 4);
}

uint64_t nv::decompress_eac(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v14[2] = *MEMORY[0x1E69E9840];
  if (a3 >= 4)
  {
    nv::decompress_eac();
  }

  v13 = 0;
  v14[0] = 0;
  *(v14 + 7) = 0;
  result = unpack_eac_block(a1, &v13);
  v6 = 0;
  v7 = 0;
  v8 = (8 * v13) | 4;
  if (BYTE1(v13))
  {
    v9 = 8 * BYTE1(v13);
  }

  else
  {
    v9 = 1;
  }

  v10 = &eac_intensity_modifiers + 32 * BYTE2(v13);
  do
  {
    v11 = v8 + v9 * *&v10[4 * *(&v13 + (v7 & 0xC | (v6 >> 2)) + 3)];
    v12 = v11 & ~(v11 >> 31);
    if (v12 >= 2047)
    {
      v12 = 2047;
    }

    *(a2 + 4 * a3 + 4 * v7) = ((32 * v12) | (v12 >> 6)) / 65535.0;
    v7 += 4;
    ++v6;
  }

  while (v7 != 64);
  return result;
}

uint64_t unpack_eac_block(uint64_t result, _BYTE *a2)
{
  *a2 = *result;
  a2[2] = *(result + 1) & 0xF;
  a2[1] = *result >> 12;
  v2 = __ROR8__(*result, 56) & 0xFF000000FFLL | (BYTE2(*result) << 40) | (*result >> 8) & 0xFF000000 | (*result >> 24) & 0xFF0000 | (*result >> 40) & 0xFF00;
  v3 = a2 + 3;
  for (i = 45; i != -3; i -= 3)
  {
    *v3++ = (v2 >> i) & 7;
  }

  return result;
}

uint64_t nv::decompress_etc_eac(uint64_t a1, int8x16_t *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  memset(v18, 0, sizeof(v18));
  unpack_etc2_block((a1 + 8), v18);
  decode_etc2(v18, a2, v4, v5, v6, v7);
  v16 = 0;
  v17[0] = 0;
  *(v17 + 7) = 0;
  result = unpack_eac_block(a1, &v16);
  v9 = 0;
  v10 = 0;
  v11 = v16;
  v12 = BYTE1(v16);
  v13 = &eac_intensity_modifiers + 32 * BYTE2(v16);
  do
  {
    v14 = v11 + *&v13[4 * *(&v16 + ((v10 * 4) & 0xC | (v9 >> 2)) + 3)] * v12;
    v15 = v14 & ~(v14 >> 31);
    if (v15 >= 255)
    {
      v15 = 255;
    }

    *&a2[v10++].i32[3] = v15 / 255.0;
    ++v9;
  }

  while (v10 != 16);
  return result;
}

uint64_t nv::DecompressETC_EAC(int a1, unsigned int a2, unsigned int a3, unint64_t *a4, uint64_t a5, uint64_t a6)
{
  v7 = 0;
  v50 = *MEMORY[0x1E69E9840];
  if (a1 > 16)
  {
    if ((a1 - 17) >= 3)
    {
      return v7;
    }

    v40 = (a2 + 3) >> 2;
    v9 = (a3 + 3) >> 2;
    v8 = 1;
    if (a1 == 18)
    {
      v10 = 8;
      LODWORD(v7) = 1;
      v11 = 1;
      goto LABEL_12;
    }

LABEL_11:
    v10 = 16;
    v11 = 1;
    LODWORD(v7) = v8;
    goto LABEL_12;
  }

  switch(a1)
  {
    case 14:
LABEL_6:
      v8 = 0;
      v40 = (a2 + 3) >> 2;
      v9 = (a3 + 3) >> 2;
      v10 = 8;
      v11 = v7;
LABEL_12:
      v45 = v10;
      if (v10 > a5)
      {
        return 0;
      }

      if (!v9)
      {
        return 1;
      }

      v12 = 0;
      v13 = 0;
      v43 = a1 & 0xFFFFFFFD;
      v14 = a2;
      v15 = a3;
      v39 = v9;
      v38 = 16 * a2;
      v16 = 4 * a2;
      v44 = a1;
      while (1)
      {
        v42 = v12;
        v41 = v13;
        if (v40)
        {
          break;
        }

LABEL_43:
        v13 = v41 + 1;
        v12 = v42 + v38;
        if (v41 + 1 == v39)
        {
          return 1;
        }
      }

      v17 = 0;
      v18 = 0;
      v19 = 4 * v13;
      while (1)
      {
        memset(&v48, 0, 256);
        v46 = v18;
        v47 = a4;
        if (a1 == 16)
        {
          goto LABEL_19;
        }

        if (v43 != 17)
        {
          break;
        }

        nv::decompress_etc_eac(a4, &v48);
LABEL_20:
        v24 = 0;
        v25 = v12;
        v26 = &v48.i64[1];
        a1 = v44;
        do
        {
          v27 = v25;
          v28 = v26;
          v29 = v17;
          v30 = 4;
          do
          {
            if (v29 < v14 && v24 + v19 < v15)
            {
              v32 = *v28;
              v31 = v28[1];
              v33 = *(v28 - 1);
              v34 = (a6 + 4 * v27);
              if (!v11)
              {
                v33 = 0.0;
              }

              *v34 = *(v28 - 2);
              v34[1] = v33;
              if (!v7)
              {
                v32 = 0.0;
              }

              if (!v8)
              {
                v31 = 1.0;
              }

              v34[2] = v32;
              v34[3] = v31;
            }

            ++v29;
            v28 += 4;
            v27 += 4;
            --v30;
          }

          while (v30);
          ++v24;
          v26 += 8;
          v25 += v16;
        }

        while (v24 != 4);
        a4 = (v47 + v45);
        v18 = v46 + 1;
        v17 += 4;
        v12 += 16;
        if (v46 + 1 == v40)
        {
          goto LABEL_43;
        }
      }

      if (a1 != 18)
      {
        if (a1 == 15)
        {
          nv::decompress_eac(a4, &v48, 0);
          v35 = v47 + (v45 >> 1);
          v36 = 1;
        }

        else
        {
          if (a1 != 14)
          {
            return 0;
          }

          v35 = a4;
          v36 = 0;
        }

        nv::decompress_eac(v35, &v48, v36);
        goto LABEL_20;
      }

LABEL_19:
      memset(v49, 0, sizeof(v49));
      unpack_etc2_block(a4, v49);
      decode_etc2(v49, &v48, v20, v21, v22, v23);
      goto LABEL_20;
    case 15:
      v8 = 0;
      v40 = (a2 + 3) >> 2;
      v9 = (a3 + 3) >> 2;
      goto LABEL_11;
    case 16:
      LODWORD(v7) = 1;
      goto LABEL_6;
  }

  return v7;
}

__n128 get_abs_subblock_palette(unsigned int a1, unsigned int a2, __n128 *a3)
{
  if (a2 >= 8)
  {
    get_abs_subblock_palette();
  }

  v3 = etc_intensity_modifiers[a2];
  v4.i64[0] = 0xFF000000FFLL;
  v4.i64[1] = 0xFF000000FFLL;
  result = (*&vorrq_s8(vorrq_s8(vshlq_n_s32(vminq_s32(vmaxq_s32(vaddq_s32(v3, vdupq_n_s32((a1 >> 4) | (16 * (a1 >> 4)))), 0), v4), 0x10uLL), vshlq_n_s32(vminq_s32(vmaxq_s32(vaddq_s32(v3, vdupq_n_s32((a1 >> 8) & 0xF | (16 * ((a1 >> 8) & 0xF)))), 0), v4), 8uLL)), vshlq_n_s32(vminq_s32(vmaxq_s32(vaddq_s32(v3, vdupq_n_s32(a1 & 0xF | (16 * (a1 & 0xF)))), 0), v4), 0x18uLL)) | __PAIR128__(0xFF000000FFLL, 0xFF000000FFLL));
  *a3 = result;
  return result;
}

double PVRReadPlugin::PVRReadPlugin(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  v5 = IIOReadPlugin::IIOReadPlugin(a1, a2, a3, a4, a5);
  *v5 = &unk_1EF4D8E68;
  result = 0.0;
  *(v5 + 464) = 0u;
  *(v5 + 480) = 0u;
  *(v5 + 496) = 0u;
  *(v5 + 512) = 0u;
  *(v5 + 528) = 0u;
  *(v5 + 544) = 0u;
  *(v5 + 560) = 0u;
  *(v5 + 576) = 0u;
  *(v5 + 592) = 0;
  return result;
}

void PVRReadPlugin::~PVRReadPlugin(PVRReadPlugin *this)
{
  *this = &unk_1EF4D8E68;
  v2 = *(this + 73);
  if (v2)
  {
    (**(v2 + 8))();
  }

  IIOReadPlugin::~IIOReadPlugin(this);
}

{
  PVRReadPlugin::~PVRReadPlugin(this);

  JUMPOUT(0x186602850);
}

uint64_t PVRReadPlugin::loadDataFromXPCObject(PVRReadPlugin *this, void *a2)
{
  result = IIOReadPlugin::loadDataFromXPCObject(this, a2);
  if (!result)
  {
    length = 0;
    data = xpc_dictionary_get_data(a2, "iio_xpc_plugin_data_pvr", &length);
    if (length == 136)
    {
      v6 = data;
      result = 0;
      v7 = v6[5];
      v8 = v6[6];
      v9 = *(v6 + 16);
      *(this + 36) = v6[7];
      *(this + 29) = *v6;
      v10 = v6[1];
      v11 = v6[2];
      v12 = v6[4];
      *(this + 32) = v6[3];
      *(this + 33) = v12;
      *(this + 30) = v10;
      *(this + 31) = v11;
      *(this + 74) = v9;
      *(this + 34) = v7;
      *(this + 35) = v8;
      *(this + 73) = 0;
    }

    else
    {
      return 4294967246;
    }
  }

  return result;
}

uint64_t PVRReadPlugin::saveDataToXPCObject(PVRReadPlugin *this, void *a2)
{
  v4 = IIOReadPlugin::saveDataToXPCObject(this, a2);
  if (!v4)
  {
    iio_xpc_dictionary_add_databuffer(a2, "iio_xpc_plugin_data_pvr", this + 464, 0x88uLL);
  }

  return v4;
}

void PVRReadPlugin::addImageTypeIdentifier(PVRReadPlugin *this, CGImage *a2, const __CFString *a3, int a4)
{
  if (*(this + 520) == 1)
  {
    CGImageSetProperty();
    IIOString::IIOString(v6, 0x4B545820u);
  }

  else
  {
    CGImageSetProperty();
    IIOString::IIOString(v6, *(this + 55));
  }

  CGImageSetProperty();
  IIOString::~IIOString(v6);
  IIONumber::IIONumber(v6, a4);
  CGImageSetProperty();
  IIONumber::~IIONumber(v6);
}

void sub_186024FA8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IIOString::~IIOString(va);
  _Unwind_Resume(a1);
}

uint64_t PVRReadPlugin::validateV3Header(uint64_t a1, _DWORD *a2)
{
  if (a2[9] >= 0x11u)
  {
    _cg_jpeg_mem_term("validateV3Header", 181, "*** bad numberOfSurfaces count [%d]\n");
  }

  else
  {
    v3 = a2 + 10;
    v4 = a2[10];
    v5 = (a1 + 24);
    if (IIOImageReadSession::getSize(*(a1 + 24)) < v4)
    {
      PVRReadPlugin::validateV3Header(v3, v5);
    }

    else if (a2[4] >= 2u)
    {
      _cg_jpeg_mem_term("validateV3Header", 183, "*** bad colorSpace [%d]\n");
    }

    else if (a2[8] >= 0x11u)
    {
      _cg_jpeg_mem_term("validateV3Header", 184, "*** bad depth [%d]\n");
    }

    else
    {
      v7 = a2[12];
      v6 = a2 + 12;
      if (IIOImageReadSession::getSize(*v5) >= v7)
      {
        return 1;
      }

      PVRReadPlugin::validateV3Header(v6, v5);
    }
  }

  return 0;
}

uint64_t PVRReadPlugin::calculateOffsetToRequestedImage(PVRReadPlugin *this, uint64_t a2)
{
  v4 = *(this + 123);
  v5 = *(this + 122);
  v6 = *(this + 287);
  v7 = *(this + 56);
  if (v7)
  {
    v8 = 0;
    v9 = *(this + 127);
    v20 = *(this + 122);
    do
    {
      v10 = (v4 * v6) >> 3;
      if (v9)
      {
        v11 = 0;
        v12 = gIIODebugFlags;
        v13 = v4;
        do
        {
          v14 = v10 * v5;
          if ((*&v12 & 0x30000) != 0)
          {
            ImageIOLog("#%d  mm:%d    size: %dx%d    imgSize: %d\n", v8, v11, v13, v5, v10 * v5);
            v12 = gIIODebugFlags;
            v6 = *(this + 287);
          }

          a2 += v14;
          v13 >>= 1;
          v5 >>= 1;
          ++v11;
          v10 = (v13 * v6) >> 3;
        }

        while (v9 != v11);
        v7 = *(this + 56);
        v5 = v20;
      }

      ++v8;
    }

    while (v8 < v7);
  }

  else
  {
    v10 = (v4 * v6) >> 3;
  }

  v15 = *(this + 167);
  if (*(this + 167))
  {
    v16 = 0;
    v17 = gIIODebugFlags;
    do
    {
      v18 = v10 * v5;
      if ((*&v17 & 0x30000) != 0)
      {
        ImageIOLog("   mm:%d    size: %dx%d    imgSize: %d\n", v16, v4, v5, v10 * v5);
        v17 = gIIODebugFlags;
        v6 = *(this + 287);
        v15 = *(this + 167);
      }

      a2 += v18;
      v4 >>= 1;
      v5 >>= 1;
      v10 = (v4 * v6) >> 3;
      ++v16;
    }

    while (v16 < v15);
  }

  return a2;
}

uint64_t PVRReadPlugin::initialize(PVRReadPlugin *this, IIODictionary *a2)
{
  v59 = *MEMORY[0x1E69E9840];
  v46 = 0;
  if (*(this + 369) != 1)
  {
    goto LABEL_11;
  }

  IIOImageReadSession::getBytesAtOffset(*(this + 3), &v46, 44, 4);
  v46 = bswap32(v46);
  *(this + 167) = 0;
  v3 = IIODictionary::containsKey(*(this + 6), @"kCGImageSourceMipmapLevel");
  v4 = *(this + 6);
  if (v3)
  {
    LOWORD(Uint32ForKey) = IIODictionary::getUint32ForKey(v4, @"kCGImageSourceMipmapLevel");
  }

  else
  {
    if (!IIODictionary::containsKey(v4, @"kCGImageSourceSubsampleFactor"))
    {
      goto LABEL_8;
    }

    Uint32ForKey = IIODictionary::getUint32ForKey(*(this + 6), @"kCGImageSourceSubsampleFactor");
    if (Uint32ForKey)
    {
      Uint32ForKey = log2(Uint32ForKey);
    }
  }

  *(this + 167) = Uint32ForKey;
LABEL_8:
  if (v46 == 1347834401)
  {
    LODWORD(v50) = 0;
    v48 = 0u;
    v49 = 0u;
    v47 = 0u;
    if (IIOImageReadSession::getBytesAtOffset(*(this + 3), &v47, 0, 52) != 52)
    {
      _cg_jpeg_mem_term("initialize", 302, "*** ERROR: PVR failed to read v2 header (%d bytes) expected: %d\n");
      goto LABEL_11;
    }

    if ((PVRReadPlugin::initialize(this, &v47, this + 167, this + 25) & 1) == 0)
    {
LABEL_11:
      kdebug_trace();
      return 4294967246;
    }

    goto LABEL_112;
  }

  IIOImageReadSession::getBytesAtOffset(*(this + 3), &v46, 0, 4);
  v7 = v46;
  v46 = bswap32(v46);
  if (v7 == 55727696)
  {
    LODWORD(v50) = 0;
    v48 = 0u;
    v49 = 0u;
    v47 = 0u;
    if (IIOImageReadSession::getBytesAtOffset(*(this + 3), &v47, 0, 52) != 52)
    {
      _cg_jpeg_mem_term("initialize", 398, "*** ERROR: PVR failed to read v3 header (%d bytes) expected: %d\n");
      goto LABEL_11;
    }

    if ((PVRReadPlugin::validateV3Header(this, &v47) & 1) == 0)
    {
      PVRReadPlugin::initialize();
      goto LABEL_11;
    }

    *(this + 520) = 0;
    v8 = v49;
    *(this + 30) = v48;
    *(this + 31) = v8;
    *(this + 29) = v47;
    v9 = DWORD2(v49);
    *(this + 128) = v50;
    *(this + 129) = 3;
    *(this + 126) = v9;
    v10 = *(this + 167);
    v11 = *(this + 127);
    if (v11 <= v10)
    {
      *(this + 167) = v11 - 1;
      v10 = (v11 - 1);
    }

    *(this + 244) = vrev64_s32(vshl_u32(*(&v48 + 8), vneg_s32(vdup_n_s32(v10))));
    *(this + 572) = -1;
    *(this + 544) = -1;
    *(this + 64) = 2097160;
    *(this + 130) = 4;
    *(this + 85) = 1380401696;
    v12 = v47.u32[3];
    if (!v47.i32[3])
    {
      v23 = v47.i8[8];
      *(this + 544) = v47.i8[8];
      *(this + 522) = (v23 & 0xFEu) < 6;
      *(this + 262) = 3;
LABEL_106:
      *(this + 63) = 4 * *(this + 61);
      *(this + 20) = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
LABEL_107:
      v34 = *(this + 129);
      if (v34 == 16)
      {
        *(this + 263) = 1;
      }

      else if (v34 == 32)
      {
        *(this + 263) = 0;
      }

      goto LABEL_112;
    }

    *(this + 522) = 0;
    v13 = v47.u32[2];
    v14 = v12;
    v15 = BYTE1(v12);
    v16 = BYTE2(v12);
    v17 = HIBYTE(v12);
    v18 = HIBYTE(v12) + v12 + BYTE1(v12) + BYTE2(v12);
    *(this + 287) = v18;
    if (v18 >= 9)
    {
      if (v18 >= 0x11)
      {
        if (v18 >= 0x21)
        {
          if (v18 >= 0x41)
          {
            if (v18 >= 0x81)
            {
              _cg_jpeg_mem_term("initialize", 453, "*** ERROR: bad _bitsPerPixel: %d for RGBA channels (%d,%d,%d,%d)\n");
              goto LABEL_11;
            }

            v19 = 128;
          }

          else
          {
            v19 = 64;
          }
        }

        else
        {
          v19 = 32;
        }
      }

      else
      {
        v19 = 16;
      }
    }

    else
    {
      v19 = 8;
    }

    v28 = bswap32(v13);
    *(this + 287) = v19;
    *(this + 144) = -1;
    if (v28 <= 1912602623)
    {
      if (v28 > 1650946559)
      {
        if (v28 == 1650946560)
        {
          *(this + 572) = 1;
          *(this + 578) = v14;
          *(this + 577) = v15;
          *(this + 576) = v16;
          if (v16 != v15 || (v29 = v14, v30 = v16, v14 != v15))
          {
            _cg_jpeg_mem_term("initialize", 516, "*** ERROR unsupported 'bgr'-bitDepth: %d-%d-%d\n");
            goto LABEL_11;
          }

          goto LABEL_92;
        }

        if (v28 == 1650946657 || v28 == 1650946680)
        {
          *(this + 572) = 3;
          *(this + 578) = v14;
          *(this + 577) = v15;
          *(this + 576) = v16;
          *(this + 579) = v17;
          *(this + 262) = 3;
          if (v16 != v15 || (v29 = v14, v30 = v14, v15 != v14))
          {
            _cg_jpeg_mem_term("initialize", 538, "*** ERROR unsupported 'bgra/bgrx'-bitDepth: %d-%d-%d\n");
            goto LABEL_11;
          }

          goto LABEL_92;
        }

        goto LABEL_91;
      }

      if (v28 != 1633838962)
      {
        v31 = 1634887522;
LABEL_74:
        if (v28 == v31)
        {
          *(this + 572) = 2;
          *(this + 579) = v14;
          *(this + 576) = v15;
          *(this + 577) = v16;
          *(this + 578) = v17;
          *(this + 262) = 4;
          if (v15 != v16 || (v29 = v15, v30 = v15, v16 != v17))
          {
            _cg_jpeg_mem_term("initialize", 495, "*** ERROR unsupported 'argb/xrgb'-bitDepth: %d-%d-%d\n");
            goto LABEL_11;
          }

          goto LABEL_92;
        }

        goto LABEL_91;
      }
    }

    else
    {
      if (v28 <= 1919378039)
      {
        if (v28 == 1912602624)
        {
          *(this + 572) = 6;
          *(this + 258) = 65544;
          *(this + 85) = 1196573017;
          *(this + 576) = v14;
          *(this + 577) = -1;
          v29 = 255;
          *(this + 579) = -1;
          goto LABEL_98;
        }

        if (v28 == 1919377920)
        {
          *(this + 572) = 0;
          *(this + 576) = v14;
          *(this + 577) = v15;
          *(this + 578) = v16;
          if (v14 != v15 || v15 != v16)
          {
            _cg_jpeg_mem_term("initialize", 481, "*** ERROR unsupported 'rgb'-bitDepth: %d-%d-%d\n");
            goto LABEL_11;
          }

          *(this + 581) = 3;
          *(this + 130) = 4;
          *(this + 262) = 5;
          v29 = v15;
          v30 = v14;
          goto LABEL_92;
        }

        if (v28 != 1919378017)
        {
LABEL_91:
          _cg_jpeg_mem_term("initialize", 542, "*** ERROR unsupported 'v3Header.pixelFormatLo' 0x%08X\n", v13);
          v30 = *(this + 576);
          v29 = *(this + 577);
LABEL_92:
          if (v30 - 9 < 0xF6)
          {
            if (v29 <= 8)
            {
              _cg_jpeg_mem_term("initialize", 549, "*** _greenBits don't match _redBits  [0x%02X vs 0x%02X]\n");
              goto LABEL_11;
            }

            if (*(this + 578) <= 8u)
            {
              _cg_jpeg_mem_term("initialize", 551, "*** _blueBits don't match _redBits [0x%02X vs 0x%02X]\n");
              goto LABEL_11;
            }
          }

          if (v29 - 9 <= 0xF5 && *(this + 578) <= 8u)
          {
            _cg_jpeg_mem_term("initialize", 556, "*** _blueBits don't match _greenBits [0x%02X vs 0x%02X]\n");
            goto LABEL_11;
          }

          v14 = v30;
LABEL_98:
          if (v14 != 255 && v14 - 33 <= 0xFFFFFFE6)
          {
            _cg_jpeg_mem_term("initialize", 560, "*** _redBits out of range  [0x%02X]\n");
            goto LABEL_11;
          }

          if (v29 != 255 && v29 - 33 <= 0xFFFFFFE6)
          {
            _cg_jpeg_mem_term("initialize", 562, "*** _greenBits out of range  [0x%02X]\n");
            goto LABEL_11;
          }

          v32 = *(this + 578);
          if (v32 != 255 && (v32 - 33) <= 0xFFFFFFE6)
          {
            _cg_jpeg_mem_term("initialize", 564, "*** _blueBits out of range  [0x%02X]\n");
            goto LABEL_11;
          }

          v33 = *(this + 85);
          if (v33 == 1196573017)
          {
            *(this + 63) = *(this + 61);
            *(this + 20) = CGColorSpaceCreateWithName(*MEMORY[0x1E695F128]);
            *(this + 258) = 65544;
            goto LABEL_112;
          }

          if (v33 != 1380401696)
          {
            goto LABEL_107;
          }

          goto LABEL_106;
        }

LABEL_81:
        *(this + 572) = 2;
        *(this + 576) = v14;
        *(this + 577) = v15;
        *(this + 578) = v16;
        *(this + 579) = v17;
        *(this + 262) = 3;
        if (v14 != v15 || (v29 = v14, v30 = v14, v15 != v16))
        {
          _cg_jpeg_mem_term("initialize", 507, "*** ERROR unsupported 'rgba/rgbx'-bitDepth: %d-%d-%d\n");
          goto LABEL_11;
        }

        goto LABEL_92;
      }

      if (v28 == 1919378040)
      {
        goto LABEL_81;
      }

      if (v28 != 2019714930)
      {
        v31 = 2020763490;
        goto LABEL_74;
      }
    }

    *(this + 572) = 5;
    *(this + 579) = v14;
    *(this + 578) = v15;
    *(this + 577) = v16;
    *(this + 576) = v17;
    *(this + 262) = 4;
    if (v17 != v16 || (v29 = v15, v30 = v15, v16 != v15))
    {
      _cg_jpeg_mem_term("initialize", 527, "*** ERROR unsupported 'abgr/xbgr'-bitDepth: %d-%d-%d\n");
      goto LABEL_11;
    }

    goto LABEL_92;
  }

  v20 = *(this + 55);
  if (v20 == 1261588566)
  {
    *(this + 129) = -1;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v54 = 0u;
    Size = IIOImageReadSession::getSize(*(this + 3));
    if (IIOImageReadSession::getBytesAtOffset(*(this + 3), &v54, *(this + 26), 80) != 80)
    {
      _cg_jpeg_mem_term("initialize", 640, "*** ERROR: PVR failed to read KTX2 header (%d bytes) expected: %d\n");
      goto LABEL_11;
    }

    if (!IsKTX2Header(&v54))
    {
      goto LABEL_11;
    }

    if (Size <= v56)
    {
      _cg_jpeg_mem_term("initialize", 645, "*** ERROR: Invalid numberOfArrayElements (%d).");
      goto LABEL_11;
    }

    if (Size <= v57)
    {
      _cg_jpeg_mem_term("initialize", 646, "*** ERROR: Invalid dfdOffset (%d).");
      goto LABEL_11;
    }

    if (Size <= DWORD1(v57))
    {
      _cg_jpeg_mem_term("initialize", 647, "*** ERROR: Invalid dfdLength (%d).");
      goto LABEL_11;
    }

    if (Size <= DWORD2(v57))
    {
      _cg_jpeg_mem_term("initialize", 648, "*** ERROR: Invalid kvdOffset (%d).");
      goto LABEL_11;
    }

    if (Size <= HIDWORD(v57))
    {
      _cg_jpeg_mem_term("initialize", 649, "*** ERROR: Invalid kvdLength (%d).");
      goto LABEL_11;
    }

    if (v58 >= Size)
    {
      _cg_jpeg_mem_term("initialize", 650, "*** ERROR: Invalid scgdOffset (%d).");
      goto LABEL_11;
    }

    if (*(&v58 + 1) >= Size)
    {
      _cg_jpeg_mem_term("initialize", 651, "*** ERROR: Invalid scgdLength (%d).");
      goto LABEL_11;
    }

    v53 = 0;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0;
    if (CreateKtxStream(&v47, *(this + 3)))
    {
      goto LABEL_11;
    }

    if (ktxTexture2_CreateFromStream(&v47, 0, &v45))
    {
      _cg_jpeg_mem_term("initialize", 660, "*** ERROR: ktxTexture2_CreateFromStream failed [%d]\n");
      goto LABEL_11;
    }

    *(this + 73) = v45;
    v25 = HIDWORD(v54);
    v26 = DWORD2(v56);
    *(this + 148) = HIDWORD(v54);
    *(this + 521) = 1;
    if (v26 >= 0x14)
    {
      _cg_jpeg_mem_term("initialize", 667, "unexpected numberOfMipmapLevels == %d\n");
      goto LABEL_11;
    }

    if (DWORD1(v56) >= 0x14)
    {
      _cg_jpeg_mem_term("initialize", 668, "unexpected numberOfMipmapLevels == %d\n");
      goto LABEL_11;
    }

    if (HIDWORD(v55))
    {
      _cg_jpeg_mem_term("initialize", 669, "unexpected pixelDepth == %d\n");
      goto LABEL_11;
    }

    if (!DWORD2(v55))
    {
      PVRReadPlugin::initialize();
      goto LABEL_11;
    }

    v27 = DWORD1(v55);
    if (!DWORD1(v55))
    {
      PVRReadPlugin::initialize();
      goto LABEL_11;
    }

    *(this + 137) = GLFormatForVulkanFormat(v25);
    *(this + 372) = 0;
    *(this + 61) = v27;
    *(this + 62) = v27;
    *(this + 522) = 1;
    *(this + 130) = 4;
    *(this + 63) = 4 * v27;
    *(this + 64) = 2097160;
  }

  else
  {
    if (v20 != 1263556178)
    {
      goto LABEL_112;
    }

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    *(this + 129) = -1;
    if (IIOImageReadSession::getBytesAtOffset(*(this + 3), &v47, *(this + 26), 64) != 64)
    {
      _cg_jpeg_mem_term("initialize", 596, "*** ERROR: PVR failed to read KTX header (%d bytes) expected: %d\n");
      goto LABEL_11;
    }

    *(this + 520) = 1;
    SwapKTXHeader(&v47);
    if (DWORD2(v50) >= 0x14)
    {
      _cg_jpeg_mem_term("initialize", 601, "unexpected numberOfMipmapLevels == %d\n");
      goto LABEL_11;
    }

    if (DWORD1(v50) >= 0x14)
    {
      _cg_jpeg_mem_term("initialize", 602, "unexpected numberOfMipmapLevels == %d\n");
      goto LABEL_11;
    }

    if (HIDWORD(v49))
    {
      _cg_jpeg_mem_term("initialize", 603, "unexpected pixelDepth == %d\n");
      goto LABEL_11;
    }

    if (!DWORD2(v49))
    {
      PVRReadPlugin::initialize();
      goto LABEL_11;
    }

    v21 = DWORD1(v49);
    if (!DWORD1(v49))
    {
      PVRReadPlugin::initialize();
      goto LABEL_11;
    }

    v22 = v47.i32[3];
    *(this + 137) = HIDWORD(v48);
    *(this + 372) = v22 == 67305985;
    *(this + 61) = v21;
    *(this + 62) = v21;
    *(this + 26) = HIDWORD(v50) + 64;
    *(this + 522) = 1;
    *(this + 130) = 4;
    *(this + 63) = 4 * v21;
    *(this + 64) = 2097160;
  }

  *(this + 20) = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
  *(this + 85) = 1380401696;
  *(this + 131) = 3;
LABEL_112:
  v35 = *(this + 244);
  if (v35.i32[0] == v35.i32[1])
  {
    v36 = vdup_lane_s32(v35, 0);
  }

  else
  {
    _cg_jpeg_mem_term("initialize", 696, "*** NOTE: non-square PVR - %d x %d\n", v35.i32[0], v35.i32[1]);
    v36 = *(this + 244);
  }

  v37 = vadd_s32(v36, -1);
  v38 = vcgt_u32(veor_s8(v36, v37), v37);
  v39 = v36.i32[0];
  v40 = v36.u32[1];
  if ((v38.i32[0] & v38.i32[1] & 1) == 0)
  {
    _cg_jpeg_mem_term("initialize", 702, "*** NOTE: non-power-of-2 PVR - %d x %d\n", v36.i32[0], v36.i32[1]);
    v39 = *(this + 61);
    v40 = *(this + 62);
  }

  if (v39 < 8 || v40 <= 7)
  {
    LogError("initialize", 706, "*** ERROR: can't handle PVR - %d x %d (too small)\n");
    goto LABEL_11;
  }

  if (v39 > 0x1000 || v40 > 0x1000)
  {
    LogError("initialize", 710, "*** ERROR: can't handle PVR - %d x %d (too small)\n");
    goto LABEL_11;
  }

  if (*(this + 128) == 8 && *(this + 129) == 32)
  {
    *(this + 146) = 4;
    *(this + 72) = 2097160;
  }

  *(this + 372) = 0;
  *(this + 374) = 0;
  v41 = *(this + 264);
  v42 = *(this + 263);
  v43 = *(this + 265) != 0;
  *(this + 294) = *(this + 262) & 0x1F;
  *(this + 295) = v42 & 7;
  *(this + 296) = v41 & 0xF | (v42 >> 4);
  *(this + 297) = v43;
  *(this + 378) = 1;
  *(this + 204) = 1;
  v44 = IIO_Reader::minimumFileSize(*(this + 3));
  result = 0;
  *(this + 54) = v44;
  return result;
}

uint64_t GLFormatForVulkanFormat(int a1)
{
  if ((a1 - 1000054000) > 7)
  {
    return 0;
  }

  else
  {
    return dword_18620AB08[a1 - 1000054000];
  }
}

{
  if ((a1 - 147) > 9)
  {
    return 0;
  }

  else
  {
    return dword_1862248F0[a1 - 147];
  }
}

uint64_t PVRReadPlugin::setupCallback(uint64_t a1, CFDictionaryRef *a2)
{
  v2 = *(a1 + 408);
  if (v2 == 12)
  {
    return IIOReadPlugin::setupImageProviderCallbackV2(a1, a2);
  }

  if (v2 == 1)
  {
    return IIOReadPlugin::setupCallback(a1, a2);
  }

  return 4294967246;
}

uint64_t PVRReadPlugin::decodeImageDataV2(PVRReadPlugin *this, unsigned __int8 *a2)
{
  v2 = *(this + 544);
  switch(*(this + 544))
  {
    case 0:
      operator new();
    case 1:
      operator new();
    case 2:
      operator new();
    case 3:
      operator new();
    case 4:
      operator new();
    case 5:
      operator new();
    case 6:
    case 7:
    case 8:
    case 9:
    case 0xA:
    case 0xB:
    case 0xC:
    case 0xD:
    case 0xE:
    case 0xF:
    case 0x18:
    case 0x19:
    case 0x1C:
    case 0x1D:
    case 0x1E:
    case 0x1F:
    case 0x20:
    case 0x21:
    case 0x22:
    case 0x23:
    case 0x24:
    case 0x25:
    case 0x26:
    case 0x27:
    case 0x28:
    case 0x29:
      break;
    case 0x10:
      operator new();
    case 0x11:
      operator new();
    case 0x12:
      operator new();
    case 0x13:
      operator new();
    case 0x14:
      operator new();
    case 0x15:
      operator new();
    case 0x16:
      operator new();
    case 0x17:
      operator new();
    case 0x1A:
      operator new();
    case 0x1B:
      operator new();
    case 0x2A:
      operator new();
    case 0x2B:
      operator new();
    default:
      if (v2 == 50)
      {
        operator new();
      }

      return result;
  }

  _cg_jpeg_mem_term("decodeImageDataV2", 1104, "*** ERROR: PVRV2 PixelFormat '%02X' not handled", v2);
  return 4294967294;
}

uint64_t PVRReadPlugin::decodeImageDataV3(PVRReadPlugin *this, unsigned __int8 *a2)
{
  if (*(this + 572) != 255)
  {
    operator new();
  }

  if (*(this + 544) <= 5u)
  {
    _cg_jpeg_mem_term("decodeImageDataV3", 1181, "*** PVRTC -- should be handled by: copyImageBlockSetPVR\n");
  }

  return 4294967293;
}

uint64_t ___Z22hardware_supports_astcv_block_invoke()
{
  result = MGGetBoolAnswer();
  hardware_supports_astc(void)::supportsASTC = result;
  return result;
}

uint64_t ASTCTextureImp::loadDataFromXPCObject(ASTCTextureImp *this, xpc_object_t xdict)
{
  length = 0;
  data = xpc_dictionary_get_data(xdict, "iio_xpc_plugin_data_astc_imp", &length);
  if (length == 232)
  {
    v4 = *data;
    v5 = data[2];
    *(this + 2) = data[1];
    *(this + 3) = v5;
    *(this + 1) = v4;
    v6 = data[3];
    v7 = data[4];
    v8 = data[6];
    *(this + 6) = data[5];
    *(this + 7) = v8;
    *(this + 4) = v6;
    *(this + 5) = v7;
    v9 = data[7];
    v10 = data[8];
    v11 = data[10];
    *(this + 10) = data[9];
    *(this + 11) = v11;
    *(this + 8) = v9;
    *(this + 9) = v10;
    v12 = data[11];
    v13 = data[12];
    v14 = data[13];
    *(this + 30) = *(data + 28);
    *(this + 13) = v13;
    *(this + 14) = v14;
    *(this + 12) = v12;
    pthread_mutex_init((this + 168), 0);
    *(this + 7) = 0;
    *(this + 58) = 0;
    *(this + 30) = 0;
    *(this + 9) = 0;
    *(this + 10) = 0;
    *(this + 16) = 0;
    *(this + 17) = 0;
    *(this + 15) = 0;
  }

  return 0;
}

uint64_t ASTCTextureImp::createDecodedDataFromLZFSECompressedData(ASTCTextureImp *this, IIOImageReadSession *a2, unsigned __int8 *a3, size_t a4, unsigned __int8 **a5, uint8_t **a6)
{
  *a5 = 0;
  *a6 = 0;
  if (!a4)
  {
    return 4294967243;
  }

  v8 = a4;
  memset(&v14, 0, sizeof(v14));
  if (compression_stream_init(&v14, COMPRESSION_STREAM_DECODE, COMPRESSION_LZFSE) == COMPRESSION_STATUS_OK)
  {
    v14.src_ptr = a3;
    v14.src_size = v8;
    v10 = malloc_type_malloc(v8, 0x100004077774924uLL);
    v11 = 0;
    while (1)
    {
      if (v11 >= v8)
      {
        v8 += v8 >> 1;
        v10 = reallocf(v10, v8);
      }

      v14.dst_ptr = &v11[v10];
      v14.dst_size = v8 - v11;
      v12 = compression_stream_process(&v14, 0);
      if (v12 == COMPRESSION_STATUS_ERROR)
      {
        break;
      }

      v11 = (v14.dst_ptr - v10);
      if (v12 == COMPRESSION_STATUS_END)
      {
        compression_stream_destroy(&v14);
        result = 0;
        *a5 = v10;
        *a6 = v11;
        return result;
      }
    }

    free(v10);
    compression_stream_destroy(&v14);
  }

  return 4294967243;
}

uint64_t ASTCTextureImp::BlockFormatForASTCBlockSize(ASTCTextureImp *this, char a2)
{
  v2 = (a2 | (16 * this));
  if (v2 > 0x87)
  {
    v3 = 13;
    v11 = 14;
    if (v2 != 204)
    {
      v11 = 0;
    }

    if (v2 != 202)
    {
      v3 = v11;
    }

    v12 = 11;
    v13 = 12;
    if (v2 != 170)
    {
      v13 = 0;
    }

    if (v2 != 168)
    {
      v12 = v13;
    }

    if ((a2 | (16 * this)) <= 0xC9u)
    {
      v3 = v12;
    }

    v7 = 8;
    v14 = 9;
    v15 = 10;
    if (v2 != 166)
    {
      v15 = 0;
    }

    if (v2 != 165)
    {
      v14 = v15;
    }

    if (v2 != 136)
    {
      v7 = v14;
    }

    v10 = (a2 | (16 * this)) <= 0xA7u;
  }

  else
  {
    v3 = 6;
    v4 = 7;
    if (v2 != 134)
    {
      v4 = 0;
    }

    if (v2 != 133)
    {
      v3 = v4;
    }

    v5 = 4;
    v6 = 5;
    if (v2 != 102)
    {
      v6 = 0;
    }

    if (v2 != 101)
    {
      v5 = v6;
    }

    if ((a2 | (16 * this)) <= 0x84u)
    {
      v3 = v5;
    }

    v7 = 1;
    v8 = 2;
    v9 = 3;
    if (v2 != 85)
    {
      v9 = 0;
    }

    if (v2 != 84)
    {
      v8 = v9;
    }

    if (v2 != 68)
    {
      v7 = v8;
    }

    v10 = (a2 | (16 * this)) <= 0x64u;
  }

  if (v10)
  {
    return v7;
  }

  else
  {
    return v3;
  }
}

uint64_t ASTCTextureImp::HDRBlockFormat(ASTCTextureImp *this, at_block_format_t a2)
{
  if (this - 1 >= 0xE)
  {
    return 0;
  }

  else
  {
    return this + 16;
  }
}

uint64_t ASTCTextureImp::MetalFormatForVulkanFormat(ASTCTextureImp *this)
{
  v1 = this - 157;
  result = 204;
  switch(v1)
  {
    case 0:
      return result;
    case 1:
      result = 186;
      break;
    case 2:
      result = 205;
      break;
    case 3:
      result = 187;
      break;
    case 4:
      result = 206;
      break;
    case 5:
      result = 188;
      break;
    case 6:
      result = 207;
      break;
    case 7:
      result = 189;
      break;
    case 8:
      result = 208;
      break;
    case 9:
      result = 190;
      break;
    case 10:
      result = 210;
      break;
    case 11:
      result = 192;
      break;
    case 12:
      result = 211;
      break;
    case 13:
      result = 193;
      break;
    case 14:
      result = 212;
      break;
    case 15:
      result = 194;
      break;
    case 16:
      result = 213;
      break;
    case 17:
      result = 195;
      break;
    case 18:
      result = 214;
      break;
    case 19:
      result = 196;
      break;
    case 20:
      result = 215;
      break;
    case 21:
      result = 197;
      break;
    case 22:
      result = 216;
      break;
    case 23:
      result = 198;
      break;
    case 24:
      result = 217;
      break;
    case 25:
      result = 199;
      break;
    case 26:
      result = 218;
      break;
    case 27:
      result = 200;
      break;
    default:
      result = 0;
      break;
  }

  return result;
}

uint64_t ASTCTextureImp::GetXYdimFromMetalFormat(uint64_t this, _BYTE *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = this - 186;
  if ((this - 186) > 0x32)
  {
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v5 = byte_18620ACC0[v4];
    v6 = byte_18620ACF3[v4];
  }

  *a2 = v5;
  *a3 = v6;
  return this;
}

uint64_t ASTCTextureImp::cacheImmediately(ASTCTextureImp *this, IIOImageReadSession *a2, const __CFDictionary *a3, CGImage *a4)
{
  pthread_mutex_lock((this + 168));
  if (!*(this + 10))
  {
    if (*(this + 41))
    {
      if (*(this + 40))
      {
        LogError("cacheImmediately", 751, "*** pre-twiddled LZFSE compressed ASTC is not supported\n");
      }

      else
      {
        ASTCTextureImp::createTwiddledDataFromTwiddled(this, a2);
      }
    }

    else if (*(this + 40))
    {
      ASTCTextureImp::createTwiddledDataFromLinearLZFSE(this, a2, 0);
    }

    else
    {
      ASTCTextureImp::createTwiddledDataFromLinear(this, a2, 0);
    }
  }

  return pthread_mutex_unlock((this + 168));
}

void ASTCTextureImp::createTwiddledDataFromLinearLZFSE(ASTCTextureImp *this, IIOImageReadSession *a2, uint64_t a3)
{
  ASTCTextureImp::createTwiddler(this);
  v6 = *(this + 30);
  if (v6)
  {
    if ((ASTCTwiddler::finalized(v6) & 1) == 0)
    {
      if (!*(this + 15))
      {
        *(this + 15) = IIOImageReadSession::retainBytePointer(a2, this + 16, 1);
        v7 = IIOImageSource::cf(a2);
        *(this + 17) = v7;
        CFRetain(v7);
        if (!*(this + 15))
        {
          _cg_jpeg_mem_term("createTwiddledDataFromLinearLZFSE", 911, "*** ImageIO - can't access image data\n");
          goto LABEL_19;
        }
      }

      Size = IIOImageReadSession::getSize(a2);
      v9 = *(this + 6);
      v10 = *(this + 11);
      if (v9 + v10 > Size)
      {
        LogError("createTwiddledDataFromLinearLZFSE", 881, "*** ImageIO - bad LZFSE data - (fileSize: %ld   compressedDataOffset: %ld   compressedSize: %ld)\n");
        goto LABEL_19;
      }

      v11 = (*(this + 15) + v9);
      if (v10 >= 9 && (*v11 != 846755426 || *&v11[v10 - 4] != 611874402))
      {
        LogError("createTwiddledDataFromLinearLZFSE", 900, "*** ImageIO - bad LZFSE data - no start/end marker\n");
LABEL_19:
        *(this + 10) = 0;
        v14 = -50;
        goto LABEL_20;
      }

      ASTCTwiddler::decodeAndCopyFromLinearData(*(this + 30), v11, v10, (16 * *(this + 5)), *(this + 4));
    }

    v6 = *(this + 30);
    if (!a3)
    {
      ASTCTwiddler::finalizeTwiddling(v6);
      v6 = *(this + 30);
    }
  }

  *(this + 10) = ASTCTwiddler::twiddledData(v6);
  v13 = ASTCTwiddler::twiddledDataSize(*(this + 30));
  v14 = 0;
  *(this + 18) = v13;
  *(this + 19) = 0;
  *(this + 20) = v13;
LABEL_20:
  *(this + 58) = v14;
}

void ASTCTextureImp::createLinearDataFromLinear(ASTCTextureImp *this, IIOImageReadSession *a2)
{
  v3 = *(this + 15);
  if (v3 || (*(this + 15) = IIOImageReadSession::retainBytePointer(a2, this + 16, 1), v5 = IIOImageSource::cf(a2), *(this + 17) = v5, CFRetain(v5), (v3 = *(this + 15)) != 0))
  {
    *(this + 7) = v3 + *(this + 14);
    *(this + 43) = 1;
  }

  else
  {
    _cg_jpeg_mem_term("createLinearDataFromLinear", 979, "*** Can't access image data\n");
    *(this + 7) = 0;
  }
}

uint64_t ASTCTextureImp::decodeRGBXFromLinear(ASTCTextureImp *this, IIOImageReadSession *a2, vImage_Buffer *a3, at_alpha_t a4, at_block_format_t a5, at_texel_format_t a6)
{
  v35 = 0;
  v12 = IIOImageReadSession::retainBytePointer(a2, &v35, 0);
  Size = IIOImageReadSession::getSize(a2);
  v14 = *(this + 14);
  v15 = Size - v14;
  if (Size - v14 <= 0)
  {
    ASTCTextureImp::decodeRGBXFromLinear(a2, this + 14);
    goto LABEL_25;
  }

  v16 = *(this + 25);
  v17 = *(this + 26);
  v18 = *(this + 9);
  v19 = (v18 * (v17 * v16)) * 0.125;
  if (v15 < v19)
  {
    _cg_jpeg_mem_term("decodeRGBXFromLinear", 1162, "*** bad input data (input size: %ld  bytesNeeded: %d  (%d x %d) bpp: %g)\n", v15, v19, v16, v17, v18);
    goto LABEL_25;
  }

  if (v12)
  {
    v20 = v12 + v14;
    if ((v20 & 0xF) == 0)
    {
      v22 = 0;
      goto LABEL_10;
    }

    IIOImageReadSession::releaseBytePointer(a2, v35);
    v35 = 0;
  }

  v20 = malloc_type_malloc(v15, 0x100004077774924uLL);
  BytesAtOffset = IIOImageReadSession::getBytesAtOffset(a2, v20, *(this + 14), v15);
  if (v15 != BytesAtOffset)
  {
    _cg_jpeg_mem_term("decodeRGBXFromLinear", 1183, "got: %ld expected: %ld\n", BytesAtOffset, v15);
    v31 = 4294967246;
    v22 = v20;
    if (!v20)
    {
      goto LABEL_20;
    }

LABEL_19:
    free(v22);
    goto LABEL_20;
  }

  v22 = v20;
  if (!v20)
  {
    ASTCTextureImp::decodeRGBXFromLinear();
LABEL_25:
    v31 = 4294967246;
    goto LABEL_20;
  }

LABEL_10:
  v23 = at_encoder_create(a6, a4, a5, a4, 0);
  if (v23)
  {
    v24 = v23;
    height = a3->height;
    dest.texels = a3->data;
    rowBytes = a3->rowBytes;
    dest.validSize.x = a3->width;
    dest.validSize.y = height;
    *(&dest.validSize + 3) = 0;
    dest.rowBytes = rowBytes;
    dest.validSize.z = 1;
    dest.sliceBytes = 0;
    *&v36.x = *&dest.validSize.x;
    v36.z = 1;
    block_counts = at_encoder_get_block_counts(v23, v36);
    v28 = block_counts;
    v29 = HIDWORD(block_counts);
    src.blocks = v20;
    src.rowBytes = at_encoder_get_block_size(v24) * block_counts;
    src.sliceBytes = v29 * v28 * at_encoder_get_block_size(v24);
    if (v15 >= src.sliceBytes)
    {
      v30 = at_encoder_decompress_texels(v24, &src, &dest, at_flags_disable_multithreading);
      if (v30 == at_error_success)
      {
        v31 = 0;
LABEL_18:

        if (!v22)
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }

      LogError("decodeRGBXFromLinear", 1222, "at_encoder_decompress_texels returned: %ld\n", v30);
    }

    v31 = 4294967246;
    goto LABEL_18;
  }

  v31 = 4294967246;
  if (v22)
  {
    goto LABEL_19;
  }

LABEL_20:
  if (v35)
  {
    IIOImageReadSession::releaseBytePointer(a2, v35);
  }

  return v31;
}

uint64_t ASTCTextureImp::decodeRGBXFromMemory(ASTCTextureImp *this, void *a2, size_t a3, vImage_Buffer *a4, at_alpha_t texelAlphaType, at_block_format_t blockType, at_texel_format_t texelType)
{
  if (!a2)
  {
    ASTCTextureImp::decodeRGBXFromMemory();
    return 4294967246;
  }

  v10 = at_encoder_create(texelType, texelAlphaType, blockType, texelAlphaType, 0);
  if (!v10)
  {
    return 4294967246;
  }

  v11 = v10;
  height = a4->height;
  dest.texels = a4->data;
  rowBytes = a4->rowBytes;
  dest.validSize.x = a4->width;
  dest.validSize.y = height;
  *(&dest.validSize + 3) = 0;
  dest.rowBytes = rowBytes;
  dest.validSize.z = 1;
  dest.sliceBytes = 0;
  *&v22.x = *&dest.validSize.x;
  v22.z = 1;
  block_counts = at_encoder_get_block_counts(v10, v22);
  v15 = block_counts;
  v16 = HIDWORD(block_counts);
  src.blocks = a2;
  src.rowBytes = at_encoder_get_block_size(v11) * block_counts;
  src.sliceBytes = v16 * v15 * at_encoder_get_block_size(v11);
  if (src.sliceBytes > a3)
  {

    return 4294967246;
  }

  v18 = at_encoder_decompress_texels(v11, &src, &dest, at_flags_default);
  if (v18)
  {
    LogError("decodeRGBXFromMemory", 1289, "at_encoder_decompress_texels returned: %ld\n", v18);
    v17 = 4294967246;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

uint64_t ASTCTextureImp::decodeRGBXFromLinearLZFSE(ASTCTextureImp *this, IIOImageReadSession *a2, vImage_Buffer *a3, at_alpha_t a4, at_block_format_t a5, at_texel_format_t a6)
{
  v40 = 0;
  v12 = IIOImageReadSession::retainBytePointer(a2, &v40, 0);
  Size = IIOImageReadSession::getSize(a2);
  if (v12)
  {
    v15 = 0;
    v16 = *(this + 6);
    v17 = v12 + v16;
    v18 = *(this + 11);
  }

  else
  {
    v15 = malloc_type_malloc(*(this + 11), 0x100004077774924uLL);
    BytesAtOffset = IIOImageReadSession::getBytesAtOffset(a2, v15, *(this + 6), *(this + 11));
    v18 = *(this + 11);
    if (BytesAtOffset != v18)
    {
      _cg_jpeg_mem_term("decodeRGBXFromLinearLZFSE", 1329, "got: %ld expected: %ld\n", BytesAtOffset, v18);
LABEL_7:
      DecodedDataFromLZFSECompressedData = 4294967246;
      if (!v15)
      {
        goto LABEL_26;
      }

LABEL_25:
      free(v15);
      goto LABEL_26;
    }

    v16 = *(this + 6);
    v17 = v15;
  }

  *(this + 8) = 0;
  v20 = (this + 64);
  if (v16 + v18 > Size)
  {
    LogError("decodeRGBXFromLinearLZFSE", 1337, "*** bad file ***  (fileSize: %ld   compressedDataOffset: %ld   compressedSize: %ld\n", Size, v16, v18);
    goto LABEL_7;
  }

  v22 = *(this + 7);
  if (v22)
  {
    free(v22);
  }

  *(this + 7) = 0;
  DecodedDataFromLZFSECompressedData = ASTCTextureImp::createDecodedDataFromLZFSECompressedData(v22, v13, v17, *(this + 11), this + 7, this + 8);
  if (DecodedDataFromLZFSECompressedData || !*v20)
  {
    ASTCTextureImp::decodeRGBXFromLinearLZFSE();
    if (v15)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v23 = at_encoder_create(a6, a4, a5, a4, 0);
    if (v23)
    {
      v24 = v23;
      height = a3->height;
      dest.texels = a3->data;
      rowBytes = a3->rowBytes;
      dest.validSize.x = a3->width;
      dest.validSize.y = height;
      *(&dest.validSize + 3) = 0;
      dest.rowBytes = rowBytes;
      dest.validSize.z = 1;
      dest.sliceBytes = 0;
      v27 = height;
      *&v41.x = *&dest.validSize.x;
      v41.z = 1;
      block_counts = at_encoder_get_block_counts(v23, v41);
      v29 = block_counts;
      v30 = HIDWORD(block_counts);
      src.blocks = *(this + 7);
      src.rowBytes = at_encoder_get_block_size(v24) * block_counts;
      src.sliceBytes = v30 * v29 * at_encoder_get_block_size(v24);
      v31 = *(this + 8);
      v32 = (a3->height * a3->width);
      if (((ASTCBitsPerPixel(*(this + 28), *(this + 32)) * v32) * 0.125) > v31)
      {
        _cg_jpeg_mem_term("decodeRGBXFromLinearLZFSE", 1372, "*** bad linearDataSize: %d for image: %dx%d\n", *v20, a3->width, a3->height);
      }

      else
      {
        outSize = 0;
        *&v42.x = *&dest.validSize.x;
        v42.z = 1;
        v33.bits = at_block_get_features(a5, &src, v42, *v20, &outSize, at_flags_default).bits;
        if (outSize > *v20)
        {
          v34 = *v20 / src.rowBytes * ((v33.bits >> 22) & 0xFFF);
          if (v34 >= 0xFFFFFFFF)
          {
            LODWORD(v34) = -1;
          }

          if (v34 >= v27)
          {
            LODWORD(v34) = v27;
          }

          dest.validSize.y = v34;
        }

        v35 = at_encoder_decompress_texels(v24, &src, &dest, at_flags_default);
        if (v35)
        {
          LogError("decodeRGBXFromLinearLZFSE", 1388, "at_encoder_decompress_texels returned: %ld\n", v35);
        }
      }
    }

    DecodedDataFromLZFSECompressedData = 0;
    if (v15)
    {
      goto LABEL_25;
    }
  }

LABEL_26:
  if (v40)
  {
    IIOImageReadSession::releaseBytePointer(a2, v40);
  }

  return DecodedDataFromLZFSECompressedData;
}

uint64_t ASTCTextureImp::decodeRGBXFromTwiddled(ASTCTextureImp *this, IIOImageReadSession *a2, vImage_Buffer *a3, at_alpha_t a4, at_block_format_t a5, at_texel_format_t a6)
{
  v14 = 0;
  if (IIOImageReadSession::retainBytePointer(a2, &v14, 0))
  {
LABEL_2:
    operator new();
  }

  Size = IIOImageReadSession::getSize(a2);
  v9 = *(this + 14);
  v10 = Size - v9;
  if (Size != v9)
  {
    v11 = malloc_type_malloc(Size - v9, 0x100004077774924uLL);
    BytesAtOffset = IIOImageReadSession::getBytesAtOffset(a2, v11, *(this + 14), v10);
    if (v10 == BytesAtOffset)
    {
      if (v11)
      {
        goto LABEL_2;
      }
    }

    else
    {
      _cg_jpeg_mem_term("decodeRGBXFromTwiddled", 1446, "got: %ld expected: %ld\n", BytesAtOffset, v10);
      if (v11)
      {
        free(v11);
      }
    }
  }

  if (v14)
  {
    IIOImageReadSession::releaseBytePointer(a2, v14);
  }

  return 0;
}

uint64_t ASTCTextureImp::decodeASTCtoRGBX(ASTCTextureImp *this, IIOImageReadSession *a2, vImage_Buffer *a3, unsigned int a4, int a5)
{
  if (ASTCTextureImp::decodeASTCtoRGBX(IIOImageReadSession *,vImage_Buffer *,CGImageAlphaInfo,BOOL)::once != -1)
  {
    ASTCTextureImp::decodeASTCtoRGBX();
  }

  if (a4 > 2)
  {
    v10 = at_alpha_not_premultiplied;
  }

  else
  {
    v10 = dword_18620AD28[a4];
  }

  pthread_mutex_lock((this + 168));
  v11 = ASTCTextureImp::BlockFormatForASTCBlockSize(*(this + 28), *(this + 32));
  v13 = v11;
  if (a5)
  {
    v14 = at_texel_format_bgra8_unorm;
  }

  else
  {
    v14 = at_texel_format_rgba8_unorm;
  }

  if (*(this + 42) == 1)
  {
    v13 = ASTCTextureImp::HDRBlockFormat(v11, v12);
    v14 = at_texel_format_rgba16_float;
  }

  if (*(this + 41))
  {
    if (*(this + 40))
    {
      LogError("decodeASTCtoRGBX", 1621, "*** pre-twiddled LZFSE compressed ASTC is not supported\n");
LABEL_24:
      v16 = -50;
      goto LABEL_29;
    }

    if (ASTCTextureImp::decodeASTCtoRGBX(IIOImageReadSession *,vImage_Buffer *,CGImageAlphaInfo,BOOL)::gUntwiddle != 1)
    {
      goto LABEL_24;
    }

    if ((gIIODebugFlags & 0x20000) != 0)
    {
      ImageIOLog("♦️  'ASTC' %d: decodeRGBXFromTwiddled [%d x %d]\n", 1613, *(this + 25), *(this + 26));
    }

    v17 = ASTCTextureImp::decodeRGBXFromTwiddled(this, a2, a3, v10, v13, v14);
    if (v17)
    {
      v16 = v17;
      _cg_jpeg_mem_term("decodeASTCtoRGBX", 1616, "*** ERROR: decodeRGBXFromTwiddled failed [%d]\n");
      goto LABEL_29;
    }

LABEL_37:
    v23 = 0;
    goto LABEL_38;
  }

  if ((*(this + 40) & 1) == 0)
  {
    if ((gIIODebugFlags & 0x20000) != 0)
    {
      ImageIOLog("♦️  'ASTC' %d: decodeRGBXFromLinear [%d x %d]\n", 1591, *(this + 25), *(this + 26));
    }

    v18 = ASTCTextureImp::decodeRGBXFromLinear(this, a2, a3, v10, v13, v14);
    if (v18)
    {
      v16 = v18;
      _cg_jpeg_mem_term("decodeASTCtoRGBX", 1595, "*** ERROR: decodeRGBXFromLinear failed [%d]\n", v18);
      goto LABEL_29;
    }

    goto LABEL_37;
  }

  if ((gIIODebugFlags & 0x20000) != 0)
  {
    ImageIOLog("♦️  'ASTC' %d: decodeRGBXFromLinearLZFSE [%d x %d]\n", 1599, *(this + 25), *(this + 26));
  }

  v15 = ASTCTextureImp::decodeRGBXFromLinearLZFSE(this, a2, a3, v10, v13, v14);
  if (!v15)
  {
    goto LABEL_37;
  }

  v16 = v15;
  _cg_jpeg_mem_term("decodeASTCtoRGBX", 1603, "*** ERROR: decodeRGBXFromLinearLZFSE failed [%d]\n");
LABEL_29:
  height = a3->height;
  if (height)
  {
    data = a3->data;
    width = a3->width;
    rowBytes = a3->rowBytes;
    do
    {
      if (width)
      {
        memset_pattern16(data, &unk_18620AD40, 4 * width);
      }

      data += rowBytes;
      --height;
    }

    while (height);
  }

  if (ASTCTextureImp::decodeASTCtoRGBX(IIOImageReadSession *,vImage_Buffer *,CGImageAlphaInfo,BOOL)::gUntwiddle)
  {
    v23 = v16;
  }

  else
  {
    v23 = 0;
  }

LABEL_38:
  pthread_mutex_unlock((this + 168));
  return v23;
}

__n128 ___ZN14ASTCTextureImp16decodeASTCtoRGBXEP19IIOImageReadSessionP13vImage_Buffer16CGImageAlphaInfob_block_invoke()
{
  ASTCTextureImp::decodeASTCtoRGBX(IIOImageReadSession *,vImage_Buffer *,CGImageAlphaInfo,BOOL)::gUntwiddle = IOPreferencesGetBoolean("ImageIO_untwiddle_for_CG", 1, 0);
  if ((ASTCTextureImp::decodeASTCtoRGBX(IIOImageReadSession *,vImage_Buffer *,CGImageAlphaInfo,BOOL)::gUntwiddle & 1) == 0)
  {

    return _cg_jpeg_mem_term("decodeASTCtoRGBX_block_invoke", 1563, "*** ATX pre-twiddled data will show up as blue rects\n");
  }

  return result;
}

uint64_t ASTCTextureImp::decodeASTCtoRGBX(ASTCTextureImp *this, void *a2, size_t a3, vImage_Buffer *a4, unsigned int a5, int a6)
{
  if (a5 > 2)
  {
    v11 = at_alpha_not_premultiplied;
  }

  else
  {
    v11 = dword_18620AD28[a5];
  }

  pthread_mutex_lock((this + 168));
  v12 = ASTCTextureImp::BlockFormatForASTCBlockSize(*(this + 28), *(this + 32));
  if (a6)
  {
    v14 = at_texel_format_bgra8_unorm;
  }

  else
  {
    v14 = at_texel_format_rgba8_unorm;
  }

  if (*(this + 42) == 1)
  {
    v12 = ASTCTextureImp::HDRBlockFormat(v12, v13);
    v14 = at_texel_format_rgba16_float;
  }

  v15 = ASTCTextureImp::decodeRGBXFromMemory(v12, a2, a3, a4, v11, v12, v14);
  if (v15)
  {
    height = a4->height;
    if (height)
    {
      data = a4->data;
      width = a4->width;
      rowBytes = a4->rowBytes;
      do
      {
        if (width)
        {
          memset_pattern16(data, &unk_18620AD40, 4 * width);
        }

        data += rowBytes;
        --height;
      }

      while (height);
    }
  }

  pthread_mutex_unlock((this + 168));
  return v15;
}

void TXMPMeta<std::string>::operator=(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  *(a1 + 8) = v3;
  WXMPMeta_IncrementRefCount_1(v3);

  WXMPMeta_DecrementRefCount_1(v2);
}

void *TXMPMeta<std::string>::TXMPMeta(void *a1, uint64_t a2)
{
  *a1 = &unk_1EF4D9060;
  a1[1] = a2;
  WXMPMeta_IncrementRefCount_1(a2);
  return a1;
}

void sub_1860283CC(void *a1)
{
  __cxa_begin_catch(a1);
  WXMPMeta_DecrementRefCount_1(*(v1 + 8));
  *(v1 + 8) = 0;
  __cxa_rethrow();
}

void TXMPMeta<std::string>::~TXMPMeta(uint64_t a1)
{
  TXMPMeta<std::string>::~TXMPMeta(a1);

  JUMPOUT(0x186602850);
}

BOOL TXMPMeta<std::string>::RegisterNamespace(XMPMeta *a1, char *a2, uint64_t a3)
{
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  WXMPMeta_RegisterNamespace_1(a1, a2, a3, TXMPMeta<std::string>::SetClientString, v6);
  if (*&v6[0])
  {
    exception = __cxa_allocate_exception(0x18uLL);
    v5 = *&v6[0];
    *exception = v7;
    exception[1] = v5;
    *(exception + 16) = 0;
  }

  return v7 != 0;
}

BOOL TXMPMeta<std::string>::GetProperty(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4, uint64_t *a5)
{
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  WXMPMeta_GetProperty_1(*(a1 + 8), a2, a3, a4, a5, TXMPMeta<std::string>::SetClientString, v8);
  if (*&v8[0])
  {
    exception = __cxa_allocate_exception(0x18uLL);
    v7 = *&v8[0];
    *exception = v9;
    exception[1] = v7;
    *(exception + 16) = 0;
  }

  return v9 != 0;
}

BOOL TXMPMeta<std::string>::GetArrayItem(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  WXMPMeta_GetArrayItem_1(*(a1 + 8), a2, a3, a4, a5, a6, TXMPMeta<std::string>::SetClientString, v9);
  if (*&v9[0])
  {
    exception = __cxa_allocate_exception(0x18uLL);
    v8 = *&v9[0];
    *exception = v10;
    exception[1] = v8;
    *(exception + 16) = 0;
  }

  return v10 != 0;
}

void TXMPMeta<std::string>::SetProperty(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  WXMPMeta_SetProperty_1(*(a1 + 8), a2, a3, a4, a5, v7);
  if (*&v7[0])
  {
    exception = __cxa_allocate_exception(0x18uLL);
    v6 = *&v7[0];
    *exception = v8;
    exception[1] = v6;
    *(exception + 16) = 0;
  }
}

void TXMPMeta<std::string>::AppendArrayItem(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  WXMPMeta_AppendArrayItem_1(*(a1 + 8), a2, a3, a4, a5, a6, v8);
  if (*&v8[0])
  {
    exception = __cxa_allocate_exception(0x18uLL);
    v7 = *&v8[0];
    *exception = v9;
    exception[1] = v7;
    *(exception + 16) = 0;
  }
}

void TXMPMeta<std::string>::SetStructField(uint64_t a1, char *a2, char *a3, char *a4, char *a5, const char *a6, uint64_t a7)
{
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  WXMPMeta_SetStructField_1(*(a1 + 8), a2, a3, a4, a5, a6, a7, v9);
  if (*&v9[0])
  {
    exception = __cxa_allocate_exception(0x18uLL);
    v8 = *&v9[0];
    *exception = v10;
    exception[1] = v8;
    *(exception + 16) = 0;
  }
}

void TXMPMeta<std::string>::SetQualifier(uint64_t a1, _BYTE *a2, _BYTE *a3, _BYTE *a4, _BYTE *a5, uint64_t a6, uint64_t a7)
{
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  WXMPMeta_SetQualifier_1(*(a1 + 8), a2, a3, a4, a5, a6, a7, v9);
  if (*&v9[0])
  {
    exception = __cxa_allocate_exception(0x18uLL);
    v8 = *&v9[0];
    *exception = v10;
    exception[1] = v8;
    *(exception + 16) = 0;
  }
}

void TXMPMeta<std::string>::DeleteProperty(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  WXMPMeta_DeleteProperty_1(*(a1 + 8), a2, a3, v5);
  if (*&v5[0])
  {
    exception = __cxa_allocate_exception(0x18uLL);
    v4 = *&v5[0];
    *exception = v6;
    exception[1] = v4;
    *(exception + 16) = 0;
  }
}

BOOL TXMPMeta<std::string>::DoesPropertyExist(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  WXMPMeta_DoesPropertyExist_1(*(a1 + 8), a2, a3, v6);
  if (*&v6[0])
  {
    exception = __cxa_allocate_exception(0x18uLL);
    v5 = *&v6[0];
    *exception = v7;
    exception[1] = v5;
    *(exception + 16) = 0;
  }

  return v7 != 0;
}

BOOL TXMPMeta<std::string>::GetProperty_Bool(uint64_t a1, const char *a2, const char *a3, _BYTE *a4, unsigned int *a5)
{
  v12 = 0;
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  WXMPMeta_GetProperty_Bool_1(*(a1 + 8), a2, a3, &v12, a5, v10);
  if (*&v10[0])
  {
    exception = __cxa_allocate_exception(0x18uLL);
    v9 = *&v10[0];
    *exception = v11;
    exception[1] = v9;
    *(exception + 16) = 0;
  }

  v6 = v11;
  if (a4 && v11)
  {
    *a4 = v12;
  }

  return v6 != 0;
}

BOOL TXMPMeta<std::string>::GetProperty_Int(uint64_t a1, const char *a2, const char *a3, int *a4, unsigned int *a5)
{
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  WXMPMeta_GetProperty_Int_1(*(a1 + 8), a2, a3, a4, a5, v8);
  if (*&v8[0])
  {
    exception = __cxa_allocate_exception(0x18uLL);
    v7 = *&v8[0];
    *exception = v9;
    exception[1] = v7;
    *(exception + 16) = 0;
  }

  return v9 != 0;
}

BOOL TXMPMeta<std::string>::GetProperty_Date(uint64_t a1, _BYTE *a2, _BYTE *a3, void *a4, int *a5)
{
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  WXMPMeta_GetProperty_Date_1(*(a1 + 8), a2, a3, a4, a5, v8);
  if (*&v8[0])
  {
    exception = __cxa_allocate_exception(0x18uLL);
    v7 = *&v8[0];
    *exception = v9;
    exception[1] = v7;
    *(exception + 16) = 0;
  }

  return v9 != 0;
}

void TXMPMeta<std::string>::SetProperty_Bool(uint64_t a1, const char *a2, const char *a3, int a4, uint64_t a5)
{
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  WXMPMeta_SetProperty_Bool_1(*(a1 + 8), a2, a3, a4, a5, v7);
  if (*&v7[0])
  {
    exception = __cxa_allocate_exception(0x18uLL);
    v6 = *&v7[0];
    *exception = v8;
    exception[1] = v6;
    *(exception + 16) = 0;
  }
}

void TXMPMeta<std::string>::SetProperty_Int(uint64_t a1, const char *a2, const char *a3, uint64_t a4, uint64_t a5)
{
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  WXMPMeta_SetProperty_Int_1(*(a1 + 8), a2, a3, a4, a5, v7);
  if (*&v7[0])
  {
    exception = __cxa_allocate_exception(0x18uLL);
    v6 = *&v7[0];
    *exception = v8;
    exception[1] = v6;
    *(exception + 16) = 0;
  }
}

void TXMPMeta<std::string>::SetProperty_Int64(uint64_t a1, const char *a2, const char *a3, uint64_t a4, uint64_t a5)
{
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  WXMPMeta_SetProperty_Int64_1(*(a1 + 8), a2, a3, a4, a5, v7);
  if (*&v7[0])
  {
    exception = __cxa_allocate_exception(0x18uLL);
    v6 = *&v7[0];
    *exception = v8;
    exception[1] = v6;
    *(exception + 16) = 0;
  }
}

void TXMPMeta<std::string>::SetProperty_Float(uint64_t a1, const char *a2, const char *a3, uint64_t a4, double a5)
{
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  WXMPMeta_SetProperty_Float_1(*(a1 + 8), a2, a3, a4, v7, a5);
  if (*&v7[0])
  {
    exception = __cxa_allocate_exception(0x18uLL);
    v6 = *&v7[0];
    *exception = v8;
    exception[1] = v6;
    *(exception + 16) = 0;
  }
}

void TXMPMeta<std::string>::SetProperty_Date(uint64_t a1, _BYTE *a2, _BYTE *a3, __int128 *a4, uint64_t a5)
{
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  WXMPMeta_SetProperty_Date_1(*(a1 + 8), a2, a3, a4, a5, v7);
  if (*&v7[0])
  {
    exception = __cxa_allocate_exception(0x18uLL);
    v6 = *&v7[0];
    *exception = v8;
    exception[1] = v6;
    *(exception + 16) = 0;
  }
}

BOOL TXMPMeta<std::string>::GetLocalizedText(uint64_t a1, _BYTE *a2, _BYTE *a3, const char *a4, _BYTE *a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  WXMPMeta_GetLocalizedText_1(*(a1 + 8), a2, a3, a4, a5, a6, a7, a8, TXMPMeta<std::string>::SetClientString, v11);
  if (*&v11[0])
  {
    exception = __cxa_allocate_exception(0x18uLL);
    v10 = *&v11[0];
    *exception = v12;
    exception[1] = v10;
    *(exception + 16) = 0;
  }

  return v12 != 0;
}

void TXMPMeta<std::string>::SetLocalizedText(uint64_t a1, _BYTE *a2, _BYTE *a3, const char *a4, _BYTE *a5, const char *a6, uint64_t a7)
{
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  WXMPMeta_SetLocalizedText_1(*(a1 + 8), a2, a3, a4, a5, a6, a7, v9);
  if (*&v9[0])
  {
    exception = __cxa_allocate_exception(0x18uLL);
    v8 = *&v9[0];
    *exception = v10;
    exception[1] = v8;
    *(exception + 16) = 0;
  }
}

void TXMPMeta<std::string>::SerializeToBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, const char *a6, uint64_t a7)
{
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  WXMPMeta_SerializeToBuffer_1(*(a1 + 8), a2, a3, a4, a5, a6, a7, TXMPMeta<std::string>::SetClientString, v9);
  if (*&v9[0])
  {
    exception = __cxa_allocate_exception(0x18uLL);
    v8 = *&v9[0];
    *exception = v10;
    exception[1] = v8;
    *(exception + 16) = 0;
  }
}

void TXMPMeta<std::string>::Clone(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  memset(v2, 0, sizeof(v2));
  WXMPMeta_Clone_1(*(a1 + 8), a2, v2);
}

uint64_t TXMPMeta<std::string>::CountArrayItems(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  WXMPMeta_CountArrayItems_1(*(a1 + 8), a2, a3, v6);
  if (*&v6[0])
  {
    exception = __cxa_allocate_exception(0x18uLL);
    v5 = *&v6[0];
    *exception = v7;
    exception[1] = v5;
    *(exception + 16) = 0;
  }

  return v7;
}

void sub_186028E74(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x186028E6CLL);
}

void TXMPIterator<std::string>::~TXMPIterator(uint64_t a1)
{
  TXMPIterator<std::string>::~TXMPIterator(a1);

  JUMPOUT(0x186602850);
}

void TXMPUtils<std::string>::ComposeArrayItemPath(char *a1, char *a2, int a3, uint64_t a4)
{
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  WXMPUtils_ComposeArrayItemPath_1(a1, a2, a3, a4, TXMPUtils<std::string>::SetClientString, v6);
  if (*&v6[0])
  {
    exception = __cxa_allocate_exception(0x18uLL);
    v5 = *&v6[0];
    *exception = v7;
    exception[1] = v5;
    *(exception + 16) = 0;
  }
}

void TXMPUtils<std::string>::ComposeStructFieldPath(char *a1, char *a2, char *a3, _BYTE *a4, uint64_t a5)
{
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  WXMPUtils_ComposeStructFieldPath_1(a1, a2, a3, a4, a5, TXMPUtils<std::string>::SetClientString, v7);
  if (*&v7[0])
  {
    exception = __cxa_allocate_exception(0x18uLL);
    v6 = *&v7[0];
    *exception = v8;
    exception[1] = v6;
    *(exception + 16) = 0;
  }
}

void TXMPUtils<std::string>::ConvertFromFloat(const char *a1, uint64_t a2, double a3)
{
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  WXMPUtils_ConvertFromFloat_1(a1, a2, TXMPUtils<std::string>::SetClientString, v5, a3);
  if (*&v5[0])
  {
    exception = __cxa_allocate_exception(0x18uLL);
    v4 = *&v5[0];
    *exception = v6;
    exception[1] = v4;
    *(exception + 16) = 0;
  }
}

BOOL TXMPUtils<std::string>::ConvertToBool(XMPUtils *a1)
{
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  WXMPUtils_ConvertToBool_1(a1, v4);
  if (*&v4[0])
  {
    exception = __cxa_allocate_exception(0x18uLL);
    v3 = *&v4[0];
    *exception = v5;
    exception[1] = v3;
    *(exception + 16) = 0;
  }

  return v5 != 0;
}

BOOL TXMPUtils<std::string>::ConvertToBool(char *a1)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  return TXMPUtils<std::string>::ConvertToBool(a1);
}

uint64_t TXMPUtils<std::string>::ConvertToDate(char *a1, uint64_t a2)
{
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  result = WXMPUtils_ConvertToDate_1(a1, a2, v5);
  if (*&v5[0])
  {
    exception = __cxa_allocate_exception(0x18uLL);
    v4 = *&v5[0];
    *exception = v6;
    exception[1] = v4;
    *(exception + 16) = 0;
  }

  return result;
}

uint64_t TXMPUtils<std::string>::ConvertToUTCTime(uint64_t a1)
{
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  result = WXMPUtils_ConvertToUTCTime_1(a1, v4);
  if (*&v4[0])
  {
    exception = __cxa_allocate_exception(0x18uLL);
    v3 = *&v4[0];
    *exception = v5;
    exception[1] = v3;
    *(exception + 16) = 0;
  }

  return result;
}

void TXMPUtils<std::string>::PackageForJPEG(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  WXMPUtils_PackageForJPEG_1(*(a1 + 8), a2, a3, a4, TXMPUtils<std::string>::SetClientString, v6);
  if (*&v6[0])
  {
    exception = __cxa_allocate_exception(0x18uLL);
    v5 = *&v6[0];
    *exception = v7;
    exception[1] = v5;
    *(exception + 16) = 0;
  }
}

void TXMPUtils<std::string>::MergeFromJPEG(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  WXMPUtils_MergeFromJPEG_1(*(a1 + 8), *(a2 + 8), v4);
  if (*&v4[0])
  {
    exception = __cxa_allocate_exception(0x18uLL);
    v3 = *&v4[0];
    *exception = v5;
    exception[1] = v3;
    *(exception + 16) = 0;
  }
}

void TXMPUtils<std::string>::CatenateArrayItems(uint64_t a1, char *a2, _BYTE *a3, char *a4, const char *a5, unsigned int a6, uint64_t a7)
{
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  WXMPUtils_CatenateArrayItems_1(*(a1 + 8), a2, a3, a4, a5, a6, a7, TXMPUtils<std::string>::SetClientString, v9);
  if (*&v9[0])
  {
    exception = __cxa_allocate_exception(0x18uLL);
    v8 = *&v9[0];
    *exception = v10;
    exception[1] = v8;
    *(exception + 16) = 0;
  }
}

void TXMPUtils<std::string>::SeparateArrayItems(uint64_t a1, XMPMeta *a2, char *a3, const char *a4, char *a5)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 4;
    exception[1] = "Null output SXMPMeta pointer";
    goto LABEL_6;
  }

  v8 = 0;
  memset(v7, 0, sizeof(v7));
  WXMPUtils_SeparateArrayItems_1(*(a1 + 8), a2, a3, a4, a5, v7);
  if (*&v7[0])
  {
    exception = __cxa_allocate_exception(0x18uLL);
    v6 = *&v7[0];
    *exception = v8;
    exception[1] = v6;
LABEL_6:
    *(exception + 16) = 0;
  }
}

{
  if (a5[23] < 0)
  {
    a5 = *a5;
  }

  TXMPUtils<std::string>::SeparateArrayItems(a1, a2, a3, a4, a5);
}

void TXMPUtils<std::string>::RemoveProperties(uint64_t a1, XMPMeta *a2, char *a3, const char *a4)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 4;
    exception[1] = "Null output SXMPMeta pointer";
    goto LABEL_6;
  }

  v7 = 0;
  memset(v6, 0, sizeof(v6));
  WXMPUtils_RemoveProperties_1(*(a1 + 8), a2, a3, a4, v6);
  if (*&v6[0])
  {
    exception = __cxa_allocate_exception(0x18uLL);
    v5 = *&v6[0];
    *exception = v7;
    exception[1] = v5;
LABEL_6:
    *(exception + 16) = 0;
  }
}

void TXMPUtils<std::string>::DuplicateSubtree(uint64_t a1, uint64_t a2, XMPMeta *a3, char *a4, char *a5, char *a6, const char *a7)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 4;
    exception[1] = "Null output SXMPMeta pointer";
    goto LABEL_6;
  }

  v10 = 0;
  memset(v9, 0, sizeof(v9));
  WXMPUtils_DuplicateSubtree_1(*(a1 + 8), *(a2 + 8), a3, a4, a5, a6, a7, v9);
  if (*&v9[0])
  {
    exception = __cxa_allocate_exception(0x18uLL);
    v8 = *&v9[0];
    *exception = v10;
    exception[1] = v8;
LABEL_6:
    *(exception + 16) = 0;
  }
}

uint64_t TXMPFiles<std::string>::~TXMPFiles(uint64_t a1)
{
  *a1 = &unk_1EF4D90A0;
  WXMPFiles_DecrementRefCount_1(*(a1 + 8));
  *(a1 + 8) = 0;
  return a1;
}

void TXMPFiles<std::string>::~TXMPFiles(uint64_t a1)
{
  TXMPFiles<std::string>::~TXMPFiles(a1);

  JUMPOUT(0x186602850);
}

BOOL TXMPFiles<std::string>::OpenFile(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  WXMPFiles_OpenFile_2(*(a1 + 8), a2, a3, a4, v7);
  if (*&v7[0])
  {
    exception = __cxa_allocate_exception(0x18uLL);
    v6 = *&v7[0];
    *exception = v8;
    exception[1] = v6;
    *(exception + 16) = 0;
  }

  return v8 != 0;
}

void TXMPFiles<std::string>::CloseFile(uint64_t a1, char a2)
{
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  WXMPFiles_CloseFile_1(*(a1 + 8), a2, v4);
  if (*&v4[0])
  {
    exception = __cxa_allocate_exception(0x18uLL);
    v3 = *&v4[0];
    *exception = v5;
    exception[1] = v3;
    *(exception + 16) = 0;
  }
}

void TXMPFiles<std::string>::PutXMP(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  WXMPFiles_PutXMP_1(*(a1 + 8), *(a2 + 8), 0, 0, v4);
  if (*&v4[0])
  {
    exception = __cxa_allocate_exception(0x18uLL);
    v3 = *&v4[0];
    *exception = v5;
    exception[1] = v3;
    *(exception + 16) = 0;
  }
}

void TXMPFiles<std::string>::PutXMP(uint64_t a1, const char *a2, uint64_t a3)
{
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  WXMPFiles_PutXMP_1(*(a1 + 8), 0, a2, a3, v5);
  if (*&v5[0])
  {
    exception = __cxa_allocate_exception(0x18uLL);
    v4 = *&v5[0];
    *exception = v6;
    exception[1] = v4;
    *(exception + 16) = 0;
  }
}

BOOL TXMPFiles<std::string>::CanPutXMP(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  WXMPFiles_CanPutXMP_1(*(a1 + 8), *(a2 + 8), 0, 0, v5);
  if (*&v5[0])
  {
    exception = __cxa_allocate_exception(0x18uLL);
    v4 = *&v5[0];
    *exception = v6;
    exception[1] = v4;
    *(exception + 16) = 0;
  }

  return v6 != 0;
}

BOOL TXMPFiles<std::string>::CanPutXMP(uint64_t a1, const char *a2, uint64_t a3)
{
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  WXMPFiles_CanPutXMP_1(*(a1 + 8), 0, a2, a3, v6);
  if (*&v6[0])
  {
    exception = __cxa_allocate_exception(0x18uLL);
    v5 = *&v6[0];
    *exception = v7;
    exception[1] = v5;
    *(exception + 16) = 0;
  }

  return v7 != 0;
}

void std::vector<std::string>::clear[abi:fe200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

std::__split_buffer<std::string>::pointer std::vector<std::string>::push_back[abi:fe200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(a1, a2);
  }

  else
  {
    std::vector<std::string>::__construct_one_at_end[abi:fe200100]<std::string const&>(a1, a2);
    result = v3 + 1;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t CreateMetadataFromExtendedXMPData(const char *a1, uint64_t a2, const char *a3)
{
  kdebug_trace();
  MetadataFromXMPBufferInternal = CreateMetadataFromXMPBufferInternal(a1, a2, a3);
  kdebug_trace();
  return MetadataFromXMPBufferInternal;
}

uint64_t CreateSXMPMetaFromMetadata(const CGImageMetadata *a1)
{
  if (a1)
  {
    v1 = CFGetTypeID(a1);
    if (v1 == CGImageMetadataGetTypeID())
    {
      operator new();
    }
  }

  return 0;
}

uint64_t getDefaultMetadataValueTypeForProperty(CGImageMetadataTag *a1)
{
  Source = CGImageSourceGetSource(a1);
  v2 = *(Source + 40);
  if ((v2 + 1) <= 1)
  {
    v3 = *(Source + 48);
    v4 = CFGetTypeID(v3);
    if (v4 == CFBooleanGetTypeID())
    {
      return 1;
    }

    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      return 1;
    }

    v6 = CFGetTypeID(v3);
    if (v6 == CFStringGetTypeID())
    {
      return 1;
    }

    else
    {
      v8 = CFGetTypeID(v3);
      if (v8 == CFArrayGetTypeID())
      {
        return 3;
      }

      else
      {
        v9 = CFGetTypeID(v3);
        if (v9 == CFDictionaryGetTypeID())
        {
          return 6;
        }

        else
        {
          return v2;
        }
      }
    }
  }

  return v2;
}

void serializeArrayPropertyValue(uint64_t a1, char *a2, const char *a3, char *a4, const void *a5, unsigned int a6)
{
  if (a2)
  {
    if (a4)
    {
      if (a5)
      {
        v6 = CFGetTypeID(a5);
        if (v6 == CFArrayGetTypeID())
        {
          Count = CFArrayGetCount(a5);
          if (Count >= 1)
          {
            v7 = 0;
            while (1)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(a5, v7);
              v9 = ValueAtIndex;
              if (ValueAtIndex)
              {
                break;
              }

LABEL_65:
              if (++v7 == Count)
              {
                return;
              }
            }

            v10 = CFGetTypeID(ValueAtIndex);
            if (v10 == CGImageMetadataTagGetTypeID())
            {
              Source = CGImageSourceGetSource(v9);
              v12 = IIOString::IIOString(&v53, *(Source + 16));
              UTF8String = IIOString::createUTF8String(v12);
              IIOString::~IIOString(&v53);
              v15 = IIOString::IIOString(v14, *(Source + 24));
              v16 = IIOString::createUTF8String(v15);
              IIOString::~IIOString(&v53);
              v17 = *(Source + 48);
              if (!v17)
              {
                goto LABEL_61;
              }

              DefaultMetadataValueTypeForProperty = getDefaultMetadataValueTypeForProperty(v9);
              v19 = *(Source + 56);
              if (v19)
              {
                v20 = CFGetTypeID(v19);
                if (v20 != CFArrayGetTypeID())
                {
                  v19 = 0;
                }
              }

              if (DefaultMetadataValueTypeForProperty > 3)
              {
                switch(DefaultMetadataValueTypeForProperty)
                {
                  case 4:
                    v21 = 2560;
                    break;
                  case 5:
                    v21 = 4608;
                    break;
                  case 6:
                    v53 = 0;
                    v54 = 0;
                    v55 = 0;
                    TXMPMeta<std::string>::AppendArrayItem(a1, a2, a4, a6, 0, 256);
                    TXMPUtils<std::string>::ComposeArrayItemPath(UTF8String, a4, v7 + 1, &v53);
                    if (v55 >= 0)
                    {
                      v24 = &v53;
                    }

                    else
                    {
                      v24 = v53;
                    }

                    serializeStructPropertyValue(a1, a2, v16, v24, v17);
                    goto LABEL_60;
                  default:
                    goto LABEL_61;
                }

LABEL_56:
                v53 = 0;
                v54 = 0;
                v55 = 0;
                TXMPMeta<std::string>::AppendArrayItem(a1, a2, a4, a6, 0, v21);
                TXMPUtils<std::string>::ComposeArrayItemPath(UTF8String, a4, v7 + 1, &v53);
                if (v55 >= 0)
                {
                  v43 = &v53;
                }

                else
                {
                  v43 = v53;
                }

                serializeArrayPropertyValue(a1, a2, v16, v43, v17, v21);
LABEL_60:
                if (SHIBYTE(v55) < 0)
                {
                  operator delete(v53);
                  if (!UTF8String)
                  {
LABEL_63:
                    if (v16)
                    {
                      free(v16);
                    }

                    goto LABEL_65;
                  }

LABEL_62:
                  free(UTF8String);
                  goto LABEL_63;
                }

LABEL_61:
                if (!UTF8String)
                {
                  goto LABEL_63;
                }

                goto LABEL_62;
              }

              if (DefaultMetadataValueTypeForProperty != 1)
              {
                if (DefaultMetadataValueTypeForProperty == 2)
                {
                  v21 = 512;
                }

                else
                {
                  if (DefaultMetadataValueTypeForProperty != 3)
                  {
                    goto LABEL_61;
                  }

                  v21 = 1536;
                }

                goto LABEL_56;
              }

              v46 = 0;
              v9 = v17;
            }

            else
            {
              v22 = CFGetTypeID(v9);
              if (v22 == CFStringGetTypeID())
              {
                v16 = strdup(a3);
                UTF8String = strdup(a2);
                v46 = 0;
                v19 = 0;
              }

              else
              {
                v23 = CFGetTypeID(v9);
                if (v23 != CFNumberGetTypeID())
                {
                  v25 = CFGetTypeID(v9);
                  if (v25 != CFDictionaryGetTypeID())
                  {
                    v26 = CFGetTypeID(v9);
                    v27 = CFCopyTypeIDDescription(v26);
                    v53 = 0;
                    v54 = 0;
                    v55 = 0;
                    v28 = IIOString::IIOString(&v53, v27);
                    v29 = IIOString::utf8String(v28);
                    LogError("serializeArrayPropertyValue", 1689, "Array element has unsupported type '%s', skipping.\n", v29);
                    CFRelease(v27);
                    IIOString::~IIOString(&v53);
                  }

                  goto LABEL_65;
                }

                v16 = strdup(a3);
                UTF8String = strdup(a2);
                v9 = CFStringCreateWithFormat(0, 0, @"%@", v9);
                v19 = 0;
                v46 = v9;
              }
            }

            v30 = IIOString::IIOString(&v53, v9);
            v31 = IIOString::createUTF8String(v30);
            IIOString::~IIOString(&v53);
            if (v31)
            {
              TXMPMeta<std::string>::AppendArrayItem(a1, a2, a4, a6, v31, 0);
              if (v19 && (v32 = CFArrayGetCount(v19), v32 >= 1))
              {
                v33 = 0;
                while (1)
                {
                  v34 = CFArrayGetValueAtIndex(v19, v33);
                  v35 = CGImageSourceGetSource(v34);
                  if (!v34)
                  {
                    break;
                  }

                  v36 = v35;
                  v37 = CFGetTypeID(v34);
                  if (v37 != CGImageMetadataTagGetTypeID())
                  {
                    break;
                  }

                  v38 = IIOString::IIOString(&v53, v36[6]);
                  v39 = IIOString::createUTF8String(v38);
                  IIOString::~IIOString(&v53);
                  if (v39)
                  {
                    v53 = 0;
                    v54 = 0;
                    v55 = 0;
                    TXMPUtils<std::string>::ComposeArrayItemPath(a2, a4, v7 + 1, &v53);
                    IIOString::IIOString(v52, v36[2]);
                    v40 = IIOString::createUTF8String(v52);
                    IIOString::~IIOString(v52);
                    IIOString::IIOString(v52, v36[4]);
                    v41 = IIOString::createUTF8String(v52);
                    IIOString::~IIOString(v52);
                    if (v55 >= 0)
                    {
                      v42 = &v53;
                    }

                    else
                    {
                      v42 = v53;
                    }

                    TXMPMeta<std::string>::SetQualifier(a1, a2, v42, v40, v41, v39, 0);
                    if (v40)
                    {
                      free(v40);
                    }

                    if (v41)
                    {
                      free(v41);
                    }

                    free(v39);
                    if (SHIBYTE(v55) < 0)
                    {
                      operator delete(v53);
                    }
                  }

                  if (v32 == ++v33)
                  {
                    goto LABEL_49;
                  }
                }

                LogMetadata("serializeArrayPropertyValue", 1720, "Qualifier at index %d for tag %s/%s is not a CGImageMetadataTagRef, skipping.\n", v33, a2, a4);
              }

              else
              {
LABEL_49:
                free(v31);
              }
            }

            if (v46)
            {
              CFRelease(v46);
            }

            goto LABEL_61;
          }
        }
      }
    }
  }
}

void serializeStructPropertyValue(uint64_t a1, const char *a2, const char *a3, char *a4, const void *a5)
{
  if (a2)
  {
    if (a4)
    {
      if (a5)
      {
        v8 = CFGetTypeID(a5);
        if (v8 == CFDictionaryGetTypeID())
        {
          v9 = *MEMORY[0x1E695E480];
          v54 = a2;
          cf = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
          v50 = CFStringCreateWithCString(v9, a3, 0x8000100u);
          Count = CFDictionaryGetCount(a5);
          v10 = malloc_type_malloc(8 * Count, 0x6004044C4A2DFuLL);
          values = malloc_type_malloc(8 * Count, 0xC0040B8AA526DuLL);
          CFDictionaryGetKeysAndValues(a5, v10, values);
          v52 = v10;
          if (Count >= 1)
          {
            v11 = 0;
            while (1)
            {
              v12 = values[v11];
              if (!v12)
              {
                break;
              }

              v13 = CFGetTypeID(v12);
              TypeID = CGImageMetadataTagGetTypeID();
              v15 = values[v11];
              if (v13 != TypeID)
              {
                goto LABEL_15;
              }

              Source = CGImageSourceGetSource(values[v11]);
              v17 = Source[6];
              if (v17)
              {
                DefaultMetadataValueTypeForProperty = getDefaultMetadataValueTypeForProperty(v15);
                v19 = Source[2];
                v20 = Source[3];
                v21 = Source[7];
                if (v21)
                {
                  v22 = CFGetTypeID(v21);
                  if (v22 == CFArrayGetTypeID())
                  {
                    v23 = v21;
                  }

                  else
                  {
                    v23 = 0;
                  }
                }

                else
                {
                  v23 = 0;
                }

LABEL_17:
                v25 = IIOString::IIOString(&v59, v19);
                UTF8String = IIOString::createUTF8String(v25);
                IIOString::~IIOString(&v59);
                v28 = IIOString::IIOString(v27, v20);
                v29 = IIOString::createUTF8String(v28);
                IIOString::~IIOString(&v59);
                if (v19)
                {
                  v59 = 0;
                  v60 = 0;
                  v61 = 0;
                  if (UTF8String)
                  {
                    if (v29)
                    {
                      TXMPMeta<std::string>::RegisterNamespace(UTF8String, v29, &v59);
                      if (SHIBYTE(v61) < 0)
                      {
                        operator delete(v59);
                      }
                    }
                  }
                }

                v30 = IIOString::IIOString(&v59, v52[v11]);
                v31 = IIOString::createUTF8String(v30);
                IIOString::~IIOString(&v59);
                if (!v31)
                {
                  goto LABEL_62;
                }

                if ((DefaultMetadataValueTypeForProperty - 2) < 4)
                {
                  v59 = 0;
                  v60 = 0;
                  v61 = 0;
                  if ((DefaultMetadataValueTypeForProperty - 3) > 2)
                  {
                    v33 = 512;
                  }

                  else
                  {
                    v33 = dword_18620AE40[DefaultMetadataValueTypeForProperty - 3];
                  }

                  TXMPMeta<std::string>::SetStructField(a1, v54, a4, UTF8String, v31, 0, v33);
                  TXMPUtils<std::string>::ComposeStructFieldPath(v54, a4, UTF8String, v31, &v59);
                  if (v61 >= 0)
                  {
                    v47 = &v59;
                  }

                  else
                  {
                    v47 = v59;
                  }

                  serializeArrayPropertyValue(a1, v54, v29, v47, v17, v33);
                  goto LABEL_56;
                }

                if (DefaultMetadataValueTypeForProperty == 6)
                {
                  v59 = 0;
                  v60 = 0;
                  v61 = 0;
                  TXMPMeta<std::string>::SetStructField(a1, v54, a4, UTF8String, v31, 0, 256);
                  TXMPUtils<std::string>::ComposeStructFieldPath(v54, a4, UTF8String, v31, &v59);
                  if (v61 >= 0)
                  {
                    v48 = &v59;
                  }

                  else
                  {
                    v48 = v59;
                  }

                  serializeStructPropertyValue(a1, v54, v29, v48, v17);
LABEL_56:
                  if (SHIBYTE(v61) < 0)
                  {
                    operator delete(v59);
                    if (!UTF8String)
                    {
                      goto LABEL_59;
                    }

                    goto LABEL_58;
                  }
                }

                else if (DefaultMetadataValueTypeForProperty == 1)
                {
                  v34 = IIOString::IIOString(v32, v17);
                  v35 = IIOString::createUTF8String(v34);
                  IIOString::~IIOString(&v59);
                  if (v35)
                  {
                    TXMPMeta<std::string>::SetStructField(a1, v54, a4, UTF8String, v31, v35, 0);
                  }

                  v49 = v35;
                  if (v23)
                  {
                    v36 = CFArrayGetCount(v23);
                    if (v36 >= 1)
                    {
                      for (i = 0; i != v36; ++i)
                      {
                        ValueAtIndex = CFArrayGetValueAtIndex(v23, i);
                        v39 = CGImageSourceGetSource(ValueAtIndex);
                        if (ValueAtIndex && (v40 = v39, v41 = CFGetTypeID(ValueAtIndex), v41 == CGImageMetadataTagGetTypeID()))
                        {
                          v42 = IIOString::IIOString(&v59, v40[6]);
                          v43 = IIOString::createUTF8String(v42);
                          IIOString::~IIOString(&v59);
                          if (v43)
                          {
                            v59 = 0;
                            v60 = 0;
                            v61 = 0;
                            TXMPUtils<std::string>::ComposeStructFieldPath(v54, a4, UTF8String, v31, &v59);
                            IIOString::IIOString(v58, v40[2]);
                            v44 = IIOString::createUTF8String(v58);
                            IIOString::~IIOString(v58);
                            IIOString::IIOString(v58, v40[4]);
                            v45 = IIOString::createUTF8String(v58);
                            IIOString::~IIOString(v58);
                            if (v61 >= 0)
                            {
                              v46 = &v59;
                            }

                            else
                            {
                              v46 = v59;
                            }

                            TXMPMeta<std::string>::SetQualifier(a1, v54, v46, v44, v45, v43, 0);
                            if (v44)
                            {
                              free(v44);
                            }

                            if (v45)
                            {
                              free(v45);
                            }

                            free(v43);
                            if (SHIBYTE(v61) < 0)
                            {
                              operator delete(v59);
                            }
                          }
                        }

                        else
                        {
                          LogMetadata("serializeStructPropertyValue", 1948, "Qualifier at index %d for tag %s/%s is not a CGImageMetadataTagRef, skipping.\n", i, v54, a4);
                        }
                      }
                    }
                  }

                  if (v49)
                  {
                    free(v49);
                    if (!UTF8String)
                    {
                      goto LABEL_59;
                    }

LABEL_58:
                    free(UTF8String);
LABEL_59:
                    if (v29)
                    {
                      free(v29);
                    }

                    free(v31);
                    goto LABEL_62;
                  }
                }

                if (UTF8String)
                {
                  goto LABEL_58;
                }

                goto LABEL_59;
              }

LABEL_62:
              if (++v11 == Count)
              {
                goto LABEL_71;
              }
            }

            v15 = 0;
LABEL_15:
            v24 = CFGetTypeID(v15);
            if (v24 == CFStringGetTypeID())
            {
              v23 = 0;
              v17 = values[v11];
              DefaultMetadataValueTypeForProperty = 1;
              v20 = v50;
              v19 = cf;
              goto LABEL_17;
            }

            LogError("serializeStructPropertyValue", 1899, "Struct field has unsupported type, skipping.\n");
            goto LABEL_62;
          }

LABEL_71:
          if (cf)
          {
            CFRelease(cf);
          }

          if (v50)
          {
            CFRelease(v50);
          }

          if (values)
          {
            free(values);
          }

          if (v52)
          {
            free(v52);
          }
        }
      }
    }
  }
}

uint64_t SerializeMetadataForJPEGXMP(const CGImageMetadata *a1, char **a2, void *a3, char **a4, void *a5, char **a6, void *a7)
{
  if (a3)
  {
    *a3 = 0;
  }

  if (a5)
  {
    *a5 = 0;
    if (a3)
    {
      if (a1 && a7)
      {
        v35 = 0;
        v36 = 0;
        v37 = 0;
        v32 = 0;
        v33 = 0;
        v34 = 0;
        v29 = 0;
        v30 = 0;
        v31 = 0;
        IIO_InitializeXMPToolkit();
        SXMPMetaFromMetadata = CreateSXMPMetaFromMetadata(a1);
        v16 = SXMPMetaFromMetadata;
        if (SXMPMetaFromMetadata)
        {
          TXMPUtils<std::string>::PackageForJPEG(SXMPMetaFromMetadata, &v35, &v32, &v29);
          (*(*v16 + 8))(v16);
          if (v37 >= 0)
          {
            v17 = HIBYTE(v37);
          }

          else
          {
            v17 = v36;
          }

          v18 = malloc_type_malloc(v17 + 1, 0x100004077774924uLL);
          if (v37 >= 0)
          {
            v19 = &v35;
          }

          else
          {
            v19 = v35;
          }

          v20 = strncpy(v18, v19, v17 + 1);
          v20[v17] = 0;
          *a3 = v17 + 1;
          *a2 = v20;
          if (v34 >= 0)
          {
            v21 = HIBYTE(v34);
          }

          else
          {
            v21 = v33;
          }

          v22 = malloc_type_malloc(v21 + 1, 0x100004077774924uLL);
          if (v34 >= 0)
          {
            v23 = &v32;
          }

          else
          {
            v23 = v32;
          }

          v24 = strncpy(v22, v23, v21 + 1);
          v24[v21] = 0;
          *a5 = v21 + 1;
          *a4 = v24;
          if (v31 >= 0)
          {
            v25 = HIBYTE(v31);
          }

          else
          {
            v25 = v30;
          }

          v26 = malloc_type_malloc(v25 + 1, 0x100004077774924uLL);
          if (v31 >= 0)
          {
            v27 = &v29;
          }

          else
          {
            v27 = v29;
          }

          v28 = strncpy(v26, v27, v25 + 1);
          v28[v25] = 0;
          *a7 = v25 + 1;
          *a6 = v28;
        }

        IIO_TerminateXMPToolkit();
        SerializeMetadataForJPEGXMP_cold_1(&v29, &v32, &v35);
      }
    }
  }

  return 0;
}

BOOL IIO_XMPMeta_ErrorCallback(void *a1, int a2, int a3, const char *a4)
{
  if (!a2)
  {
    ++*a1;
  }

  return a2 == 0;
}

const char *___ZL35CreateMetadataFromXMPBufferInternalPKcmS0_mj_block_invoke()
{
  result = getenv("IIO_SkipExtendedXMP");
  if (result)
  {
    result = atoi(result);
  }

  gIIO_SkipExtendedXMP = result;
  return result;
}

void sub_18602B8F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, char a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  TXMPIterator<std::string>::~TXMPIterator(&a25);
  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (*(v33 - 137) < 0)
  {
    operator delete(*(v33 - 160));
  }

  if (*(v33 - 113) < 0)
  {
    operator delete(*(v33 - 136));
  }

  if (*(v33 - 89) < 0)
  {
    operator delete(*(v33 - 112));
  }

  _Unwind_Resume(a1);
}

void std::vector<std::string>::__construct_one_at_end[abi:fe200100]<std::string const&>(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v4;
  }

  *(a1 + 8) = v3 + 24;
}

std::__split_buffer<std::string>::pointer std::vector<std::string>::__emplace_back_slow_path<std::string const&>(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<IIOTag *>::__throw_length_error[abi:fe200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v17.__end_cap_.__value_ = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:fe200100]<std::allocator<std::string>>(a1, v6);
  }

  begin = (24 * v2);
  v17.__first_ = 0;
  v17.__begin_ = (24 * v2);
  value = 0;
  v17.__end_ = (24 * v2);
  v17.__end_cap_.__value_ = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(begin, *a2, *(a2 + 1));
    begin = v17.__begin_;
    end = v17.__end_;
    value = v17.__end_cap_.__value_;
  }

  else
  {
    v9 = *a2;
    *(24 * v2 + 0x10) = *(a2 + 2);
    *&begin->__r_.__value_.__l.__data_ = v9;
    end = (24 * v2);
  }

  v11 = end + 1;
  v12 = *(a1 + 8) - *a1;
  v13 = begin - v12;
  memcpy(begin - v12, *a1, v12);
  v14 = *a1;
  *a1 = v13;
  *(a1 + 8) = v11;
  v15 = *(a1 + 16);
  *(a1 + 16) = value;
  v17.__end_ = v14;
  v17.__end_cap_.__value_ = v15;
  v17.__first_ = v14;
  v17.__begin_ = v14;
  std::__split_buffer<std::string>::~__split_buffer(&v17);
  return v11;
}

void std::__allocate_at_least[abi:fe200100]<std::allocator<std::string>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:fe200100]();
}

void std::__split_buffer<std::string>::~__split_buffer(std::__split_buffer<std::string> *this)
{
  std::__split_buffer<std::string>::__destruct_at_end[abi:fe200100](this, &this->__begin_->__r_.__value_.__l.__data_);
  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

void std::__split_buffer<std::string>::__destruct_at_end[abi:fe200100](uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

void *ICOReadPlugin::ICOReadPlugin(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  result = IIOReadPlugin::IIOReadPlugin(a1, a2, a3, a4, a5);
  *result = &unk_1EF4D9110;
  return result;
}

void ICOReadPlugin::~ICOReadPlugin(ICOReadPlugin *this)
{
  IIOReadPlugin::~IIOReadPlugin(this);

  JUMPOUT(0x186602850);
}

uint64_t ICOReadPlugin::loadDataFromXPCObject(ICOReadPlugin *this, void *a2)
{
  result = IIOReadPlugin::loadDataFromXPCObject(this, a2);
  if (!result)
  {
    length = 0;
    data = xpc_dictionary_get_data(a2, "iio_xpc_plugin_data_ico", &length);
    if (length == 8)
    {
      v6 = data;
      result = 0;
      *(this + 58) = *v6;
    }

    else
    {
      return 4294967246;
    }
  }

  return result;
}

uint64_t ICOReadPlugin::saveDataToXPCObject(ICOReadPlugin *this, void *a2)
{
  v4 = IIOReadPlugin::saveDataToXPCObject(this, a2);
  if (!v4)
  {
    iio_xpc_dictionary_add_databuffer(a2, "iio_xpc_plugin_data_ico", this + 464, 8uLL);
  }

  return v4;
}

uint64_t ICOReadPlugin::initialize(IIOImageReadSession **this, IIODictionary *a2)
{
  __dst[0] = 0;
  v68 = 0;
  v67 = 0;
  v66 = 0;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  IIOScanner::IIOScanner(&v62, this[3]);
  if (*(this + 369) != 1 || (v57 = a2, IIOScanner::getBytes(&v62, &v67, 6uLL), v4 = v68, !v68) || *(this + 56) >= v68)
  {
    v23 = 4294967246;
    goto LABEL_96;
  }

  v5 = malloc_type_calloc(v68, 0x10uLL, 0x1000040451B5BE8uLL);
  if (IIOScanner::getBytes(&v62, v5, 16 * v4) != 16 * v4)
  {
    v55 = 0;
    v23 = 4294967246;
    goto LABEL_93;
  }

  v6 = 0;
  v7 = (16 * v4) | 6;
  __base = v5;
  v8 = (v5 + 3);
  do
  {
    if (BYTE2(v67) == 2)
    {
      v9 = this[7];
      IIONumber::IIONumber(&v59, *(v8 - 1));
      IIODictionary::setObjectForKey(v9, &v59, @"hotspotX");
      IIONumber::~IIONumber(&v59);
      v10 = this[7];
      IIONumber::IIONumber(&v59, *v8);
      IIODictionary::setObjectForKey(v10, &v59, @"hotspotY");
      IIONumber::~IIONumber(&v59);
      *(v8 - 1) = 65537;
      v11 = 1;
    }

    else
    {
      v11 = *v8;
    }

    v12 = *(v8 - 6);
    v13 = *(v8 - 5);
    if (v12 | v13)
    {
      v16 = (v12 - 12) > 0xFFFFFFF4 || (v13 - 12) > 0xFFFFFFF4;
      if (v16 || v11 > 0x20 || ((1 << v11) & 0x101000113) == 0 || (v17 = *(v8 + 1), v17 < 0x28) || (v18 = *(v8 + 3), v18 < v7) || v63 < v18)
      {
        _cg_jpeg_mem_term("initialize", 188, "*** ERROR: ICO#%2d - bad dimension (%3dx%3d) | bitDepth (%6d) | offset (%10ld) - skipping\n", v6, v12, v13, v11, *(v8 + 3));
        goto LABEL_40;
      }

      if (!v11 && *(v8 - 6) && *(v8 - 5))
      {
        v19 = 4 * v13;
        v20 = 4 * v13 * ((v12 + 31) >> 5);
        v21 = v20 + 40;
        if (v20 + 40 + v20 >= v17)
        {
          *v8 = 1;
          goto LABEL_41;
        }

        if ((v19 * ((2 * v12 + 31) >> 5)) + v21 - 120 >= v17)
        {
          v22 = 2;
LABEL_47:
          *v8 = v22;
          goto LABEL_41;
        }

        if (v21 + (v19 * ((4 * v12 + 31) >> 5) + 64) >= v17)
        {
          v22 = 4;
          goto LABEL_47;
        }

        if (v21 + (v19 * ((8 * v12 + 31) >> 5) + 1024) >= v17)
        {
          v22 = 8;
          goto LABEL_47;
        }

        if (v21 + (v19 * ((24 * v12 + 31) >> 5)) < v17)
        {
          if (v21 + (4 * v12 * v13) < v17)
          {
            _cg_jpeg_mem_term("initialize", 218, "*** ERROR: skipping bad ICO#%d - [2]\n", v6);
            goto LABEL_40;
          }

          v22 = 32;
          goto LABEL_47;
        }

        *v8 = 24;
      }
    }

    else
    {
      if (v11 > 0x20 || ((1 << v11) & 0x101000113) == 0)
      {
        v15 = *(v8 + 3);
LABEL_39:
        _cg_jpeg_mem_term("initialize", 172, "*** ERROR: ICO#%2d - bad dimension (%3dx%3d) | bitDepth (%6d) | offset (%10ld) - skipping\n", v6, 0, 0, v11, v15);
LABEL_40:
        *(v8 - 3) = 0;
        *(v8 + 1) = 0;
        goto LABEL_41;
      }

      v15 = *(v8 + 3);
      if (*(v8 + 1) < 0x28u || v15 < v7 || v63 < v15)
      {
        goto LABEL_39;
      }
    }

LABEL_41:
    ++v6;
    v8 += 8;
  }

  while (v4 != v6);
  v24 = v5;
  qsort_b(v5, v4, 0x10uLL, &__block_literal_global_19);
  v25 = &v5[8 * *(this + 56)];
  BytesAtOffset = IIOScanner::getBytesAtOffset(&v62, __dst, *(v25 + 3), 4uLL);
  v27.i32[0] = __dst[0];
  v28 = vmovl_u8(v27).u64[0];
  v29 = vuzp1_s8(v28, v28).u32[0];
  if (BytesAtOffset == 4 && v29 == 1196314761)
  {
    IIONumber::IIONumber(&v59, 1347307296);
    IIODictionary::setObjectForKey(v57, value[0], @"NEW_PLUGIN_ostype");
    IIONumber::~IIONumber(&v59);
    IIONumber::IIONumber(&v59, *(v25 + 3));
    IIODictionary::setObjectForKey(v57, value[0], @"NEW_PLUGIN_dataOffset");
    IIONumber::~IIONumber(&v59);
    IIONumber::IIONumber(&v59, *v25);
    IIODictionary::setObjectForKey(v57, value[0], @"NEW_PLUGIN_expectedWidth");
    IIONumber::~IIONumber(&v59);
    IIONumber::IIONumber(&v59, *(v25 + 1));
    IIODictionary::setObjectForKey(v57, value[0], @"NEW_PLUGIN_expectedHeight");
    IIONumber::~IIONumber(&v59);
    v23 = 4294967247;
    goto LABEL_76;
  }

  v31 = *(v25 + 2);
  v23 = 4294967246;
  if (v31 < 0x29 || (v32 = *(v25 + 3), !v32))
  {
LABEL_76:
    free(v24);
    goto LABEL_96;
  }

  v61 = 0;
  v59 = 0u;
  *value = 0u;
  if (IIOScanner::getBytesAtOffset(&v62, &v59, v32, 0x28uLL) != 40)
  {
LABEL_103:
    v23 = 4294967246;
    goto LABEL_76;
  }

  v33 = DWORD2(v59) >> 1;
  v34 = HIWORD(v59);
  if (DWORD1(v59) <= *v25)
  {
    v35 = *v25;
  }

  else
  {
    v35 = DWORD1(v59);
  }

  if (v33 <= *(v25 + 1))
  {
    v36 = *(v25 + 1);
  }

  else
  {
    v36 = v33;
  }

  if (v35 && (v35 - 257) < 0xFFFFFF0B)
  {
    _cg_jpeg_mem_term("initialize", 286, "*** ERROR: unsupported width: %d\n");
LABEL_102:
    v24 = __base;
    goto LABEL_103;
  }

  if (v36 && (v36 - 257) < 0xFFFFFF0B)
  {
    v37 = "*** ERROR: unsupported height: %d\n";
    v38 = 287;
    v34 = v36;
LABEL_101:
    _cg_jpeg_mem_term("initialize", v38, v37, v34);
    goto LABEL_102;
  }

  v37 = "*** ERROR: unsupported bpp: %d\n";
  v38 = 288;
  if (HIWORD(v59) > 0x20u || ((1 << SBYTE14(v59)) & 0x101000112) == 0)
  {
    goto LABEL_101;
  }

  LODWORD(v39) = 0;
  v40 = 0;
  *(this + 61) = v35;
  *(this + 62) = v36;
  if (v34 > 7)
  {
    switch(v34)
    {
      case 0x20:
        v40 = 0;
        LODWORD(v39) = 0;
        this[36] = 0x3000400200008;
        *(this + 63) = 4 * v35;
        *(this + 64) = 2097160;
        *(this + 130) = 4;
        *(this + 262) = 3;
        v48 = 1;
        v49 = 378;
        this[20] = 0;
        break;
      case 0x18:
        v40 = 0;
        LODWORD(v39) = 0;
        this[20] = 0;
        *(this + 63) = (3 * v35 + 7) & 0xFF8;
        *(this + 64) = 1572872;
        *(this + 130) = 3;
        this[36] = 0x5000400200008;
        *(this + 71) = (4 * v35 + 15) & 0xFF0;
        *(this + 262) = 0;
        v48 = 1;
        v49 = 378;
        break;
      case 8:
LABEL_79:
        v39 = 4 << v34;
        if (v31 > (4 << v34) + 40)
        {
          v40 = malloc_type_calloc(4 << v34, 1uLL, 0x100004077774924uLL);
          if (IIOScanner::getBytesAtOffset(&v62, v40, (v32 + 40), 4 << v34) == v39)
          {
            v41 = (v40 + 1);
            v42 = v40 + 2;
            v43 = 1 << v34;
            do
            {
              v44 = *v41;
              v45 = *(v41 - 1);
              *(v42 - 2) = v41[1];
              *(v42 - 1) = v44;
              *v42 = v45;
              v42 += 3;
              v41 += 4;
              --v43;
            }

            while (v43);
            v46 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
            this[20] = CGColorSpaceCreateIndexed(v46, (1 << v34) - 1, v40);
            CGColorSpaceRelease(v46);
            *(this + 129) = v34;
            *(this + 128) = v34;
            *(this + 130) = 1;
            *(this + 63) = ((v35 * v34 + 31) >> 3) & 0x7FFFFC;
            if (v34 == 1)
            {
              v47 = 1;
            }

            else
            {
              v47 = 2;
            }

            *(this + 71) = v35 << v47;
            *(this + 72) = 1048584;
            *(this + 146) = 2;
            v48 = 3;
            v49 = 294;
            break;
          }

          v5 = __base;
LABEL_107:
          v54 = 0;
          v55 = 0;
          v53 = 4294967246;
          v23 = 4294967246;
          if (!v40)
          {
            goto LABEL_93;
          }

LABEL_92:
          free(v40);
          v55 = v54;
          v23 = v53;
          goto LABEL_93;
        }

        v23 = 4294967246;
        v24 = __base;
        goto LABEL_76;
      default:
        goto LABEL_90;
    }

    *(this + v49) = v48;
    goto LABEL_90;
  }

  if (v34 == 1 || v34 == 4)
  {
    goto LABEL_79;
  }

LABEL_90:
  *(this + 85) = 1380401696;
  *(this + 372) = 0;
  *(this + 374) = 0;
  v50 = v59 + v39;
  v51 = (v59 + v39 + v32);
  this[26] = v51;
  this[58] = (v31 - v50);
  v52 = this[25];
  if (v52 <= v51)
  {
    _cg_jpeg_mem_term("initialize", 376, "bad offset %d > fileSize %d\n", v51, v52);
    v5 = __base;
    goto LABEL_107;
  }

  v53 = 0;
  v23 = 0;
  v54 = 1;
  this[49] = 1;
  *(this + 204) = 1;
  v55 = 1;
  v5 = __base;
  if (v40)
  {
    goto LABEL_92;
  }

LABEL_93:
  if (v5)
  {
    free(v5);
  }

  if ((v55 & 1) == 0)
  {
LABEL_96:
    kdebug_trace();
  }

  IIOScanner::~IIOScanner(&v62);
  return v23;
}

void sub_18602C650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  IIOScanner::~IIOScanner(va);
  _Unwind_Resume(a1);
}

uint64_t ___ZN13ICOReadPlugin10initializeEP13IIODictionary_block_invoke(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = *a2;
  if (!*a2)
  {
    v3 = 256;
  }

  if (*a3)
  {
    v4 = *a3;
  }

  else
  {
    v4 = 256;
  }

  v5 = *(a2 + 3);
  v6 = *(a3 + 3);
  if (v5 < v6)
  {
    return 1;
  }

  if (v5 > v6)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = v3 >= v4;
  if (v3 <= v4)
  {
    v9 = 0;
  }

  else
  {
    v9 = -1;
  }

  if (v8)
  {
    return v9;
  }

  else
  {
    return 1;
  }
}

uint64_t ICOReadPlugin::setupCallback(uint64_t a1, CFDictionaryRef *a2)
{
  v2 = *(a1 + 408);
  if (v2 == 12)
  {
    return IIOReadPlugin::setupImageProviderCallbackV2(a1, a2);
  }

  if (v2 == 1)
  {
    return IIOReadPlugin::setupCallback(a1, a2);
  }

  return 4294967246;
}

const char *IIODebug_ShowBacktrace(int a1)
{
  v7[128] = *MEMORY[0x1E69E9840];
  bzero(v7, 0x400uLL);
  memset(&v6, 0, sizeof(v6));
  result = backtrace(v7, 128);
  if (a1 <= 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = a1;
  }

  if (result < a1)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (v4 < result)
  {
    v5 = result;
    do
    {
      if (dladdr(v7[v4], &v6))
      {
        result = ImageIOLog("%1.*s<%s+%ld>\n");
      }

      else
      {
        result = ImageIOLog("%1.*s%08lx\n");
      }

      ++v4;
    }

    while (v5 != v4);
  }

  return result;
}

const char *LogSurfaceFormat(__IOSurface *a1, const char *a2, const char *a3, int a4)
{
  PixelFormat = IOSurfaceGetPixelFormat(a1);
  Width = IOSurfaceGetWidth(a1);
  Height = IOSurfaceGetHeight(a1);
  v7 = PixelFormat >> 24;
  v8 = MEMORY[0x1E69E9830];
  if ((PixelFormat >> 24) <= 0x7F)
  {
    v9 = *(MEMORY[0x1E69E9830] + 4 * v7 + 60) & 0x40000;
  }

  else
  {
    v9 = __maskrune(PixelFormat >> 24, 0x40000uLL);
  }

  v10 = PixelFormat << 8 >> 24;
  if (v10 <= 0x7F)
  {
    v11 = *(v8 + 4 * v10 + 60) & 0x40000;
  }

  else
  {
    v11 = __maskrune(PixelFormat << 8 >> 24, 0x40000uLL);
  }

  LODWORD(v12) = PixelFormat >> 8;
  if (v12 <= 0x7F)
  {
    v13 = *(v8 + 4 * v12 + 60) & 0x40000;
  }

  else
  {
    v13 = __maskrune(PixelFormat >> 8, 0x40000uLL);
  }

  PixelFormat = PixelFormat;
  if (PixelFormat <= 0x7F)
  {
    v14 = *(v8 + 4 * PixelFormat + 60) & 0x40000;
  }

  else
  {
    v14 = __maskrune(PixelFormat, 0x40000uLL);
  }

  if (v13)
  {
    v12 = v12;
  }

  else
  {
    v12 = 46;
  }

  if (v11)
  {
    v15 = v10;
  }

  else
  {
    v15 = 46;
  }

  if (v9)
  {
    v16 = v7;
  }

  else
  {
    v16 = 46;
  }

  if (v14)
  {
    v17 = PixelFormat;
  }

  else
  {
    v17 = 46;
  }

  v18 = CFGetRetainCount(a1);
  return ImageIOLog("❇️  %s:%d - <IOSurface:%p> %s %ldx%ld - '%c%c%c%c' - retainCount: %ld\n", a3, a4, a1, a2, Width, Height, v16, v15, v12, v17, v18);
}

const char *LogPixelFormat(int a1, const char *a2, int a3)
{
  v5 = a1;
  v6 = a1 >> 24;
  v7 = MEMORY[0x1E69E9830];
  if ((a1 >> 24) <= 0x7F)
  {
    v8 = *(MEMORY[0x1E69E9830] + 4 * v6 + 60) & 0x40000;
  }

  else
  {
    v8 = __maskrune(a1 >> 24, 0x40000uLL);
  }

  v9 = (v5 << 8) >> 24;
  if (v9 <= 0x7F)
  {
    v10 = *(v7 + 4 * v9 + 60) & 0x40000;
  }

  else
  {
    v10 = __maskrune((v5 << 8) >> 24, 0x40000uLL);
  }

  v11 = v5 >> 8;
  if (v11 <= 0x7F)
  {
    v12 = *(v7 + 4 * v11 + 60) & 0x40000;
  }

  else
  {
    v12 = __maskrune(v5 >> 8, 0x40000uLL);
  }

  v5 = v5;
  if (v5 <= 0x7F)
  {
    v13 = *(v7 + 4 * v5 + 60) & 0x40000;
  }

  else
  {
    v13 = __maskrune(v5, 0x40000uLL);
  }

  if (v12)
  {
    v14 = v11;
  }

  else
  {
    v14 = 46;
  }

  if (v10)
  {
    v15 = v9;
  }

  else
  {
    v15 = 46;
  }

  if (v8)
  {
    v16 = v6;
  }

  else
  {
    v16 = 46;
  }

  if (v13)
  {
    v17 = v5;
  }

  else
  {
    v17 = 46;
  }

  return ImageIOLog("❇️  %s:%d - '%c%c%c%c'\n", a2, a3, v16, v15, v14, v17);
}

void ImageIODebugOptionsDictionary(const __CFDictionary *a1)
{
  if (a1)
  {
    if (CFDictionaryGetCount(a1) < 1)
    {

      ImageIOLog("    options: ()\n");
    }

    else
    {
      ImageIOLog("    options:\n");

      CFDictionaryApplyFunction(a1, OptionsApplyFunction, 0);
    }
  }
}

void OptionsApplyFunction(const void *a1, const void *a2, uint64_t a3)
{
  memset(v34, 0, sizeof(v34));
  IIOString::IIOString(v34, a1);
  if (a3 >= 4)
  {
    v5 = 4;
  }

  else
  {
    v5 = a3;
  }

  if (a2)
  {
    v6 = CFGetTypeID(a2);
    if (v6 == CFStringGetTypeID())
    {
      memset(v33, 0, sizeof(v33));
      IIOString::IIOString(v33, a2);
      v7 = *(&gIndents + v5);
      v8 = IIOString::utf8String(v34);
      v9 = IIOString::utf8String(v33);
      ImageIOLog("      %s%s: %s\n", v7, v8, v9);
      IIOString::~IIOString(v33);
    }

    else
    {
      v10 = CFGetTypeID(a2);
      if (v10 == CFNumberGetTypeID())
      {
        IsFloatType = CFNumberIsFloatType(a2);
        v12 = *(&gIndents + v5);
        if (IsFloatType)
        {
          v13 = IIOString::utf8String(v34);
          IIONumber::IIONumber(v33, a2);
          v14 = IIONumber::floatNum(v33);
          ImageIOLog("      %s%s: %g\n", v12, v13, v14);
        }

        else
        {
          v23 = IIOString::utf8String(v34);
          IIONumber::IIONumber(v33, a2);
          v24 = IIONumber::uint64Num(v33);
          ImageIOLog("      %s%s: %ld\n", v12, v23, v24);
        }

        IIONumber::~IIONumber(v33);
      }

      else
      {
        v15 = CFGetTypeID(a2);
        if (v15 == CFBooleanGetTypeID())
        {
          Value = CFBooleanGetValue(a2);
          v17 = *(&gIndents + v5);
          v18 = IIOString::utf8String(v34);
          v19 = "true";
          if (!Value)
          {
            v19 = "false";
          }

          ImageIOLog("      %s%s: %s\n", v17, v18, v19);
        }

        else
        {
          v20 = CFGetTypeID(a2);
          if (v20 == CFArrayGetTypeID())
          {
            v21 = *(&gIndents + v5);
            v22 = IIOString::utf8String(v34);
            ImageIOLog("      %s%s\n", v21, v22);
            v35.length = CFArrayGetCount(a2);
            v35.location = 0;
            CFArrayApplyFunction(a2, v35, OptionsArrayApplyFunction, (v5 + 1));
          }

          else
          {
            v25 = CFGetTypeID(a2);
            if (v25 == CFDictionaryGetTypeID())
            {
              v26 = *(&gIndents + v5);
              v27 = IIOString::utf8String(v34);
              ImageIOLog("      %s%s\n", v26, v27);
              CFDictionaryApplyFunction(a2, OptionsApplyFunction, (v5 + 2));
            }

            else
            {
              v28 = CFGetTypeID(a2);
              TypeID = CFNullGetTypeID();
              v30 = *(&gIndents + v5);
              if (v28 == TypeID)
              {
                v31 = IIOString::utf8String(v34);
                ImageIOLog("      %s%s: kCFNull\n", v30, v31);
              }

              else
              {
                v32 = IIOString::utf8String(v34);
                ImageIOLog("      %s%s: ", v30, v32);
                CFShow(a2);
              }
            }
          }
        }
      }
    }
  }

  IIOString::~IIOString(v34);
}

void sub_18602CEE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  IIOString::~IIOString(va);
  _Unwind_Resume(a1);
}

void ImageIODebugOptions(int a1, const char *a2, const char *a3, CFTypeRef cf, const char *a5, uint64_t a6, const __CFDictionary *a7)
{
  if (!cf)
  {
    if (a5)
    {
LABEL_7:
      if (a6 < 0)
      {
        ImageIOLog("%s   %s - '%s'\n");
      }

      else
      {
        ImageIOLog("%s   %s[%ld] - '%s'\n");
      }

LABEL_17:
      v14 = 0;
      goto LABEL_20;
    }

LABEL_12:
    if (a6 < 0)
    {
      ImageIOLog("%s   %s\n");
    }

    else
    {
      ImageIOLog("%s   %s[%ld]\n");
    }

    goto LABEL_17;
  }

  v13 = CFCopyDescription(cf);
  v14 = v13;
  if (!a5)
  {
    if (v13)
    {
      v17 = 0;
      v18 = 0;
      v19 = 0;
      IIOString::IIOString(&v17, v13);
      v16 = IIOString::utf8String(&v17);
      if (a6 < 0)
      {
        ImageIOLog("%s   %s  %s\n", a2, a3, v16);
      }

      else
      {
        ImageIOLog("%s   %s[%ld]  %s\n", a2, a3, a6, v16);
      }

      goto LABEL_19;
    }

    goto LABEL_12;
  }

  if (!v13)
  {
    goto LABEL_7;
  }

  v17 = 0;
  v18 = 0;
  v19 = 0;
  IIOString::IIOString(&v17, v13);
  v15 = IIOString::utf8String(&v17);
  if (a6 < 0)
  {
    ImageIOLog("%s   %s - '%s' - '%s'\n", a2, a3, v15, a5);
  }

  else
  {
    ImageIOLog("%s   %s[%ld] - '%s' - '%s'\n", a2, a3, a6, v15, a5);
  }

LABEL_19:
  IIOString::~IIOString(&v17);
LABEL_20:
  if (a1 >= 2)
  {
    ImageIODebugOptionsDictionary(a7);
  }

  if (v14)
  {
    CFRelease(v14);
  }
}

void sub_18602D0D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  IIOString::~IIOString(va);
  _Unwind_Resume(a1);
}

const char *IIODebugOrientation(const char *result, int a2, IIODictionary *this)
{
  if ((gIIODebugFlags & 0x2000000000000) != 0)
  {
    if (this)
    {
      if (IIODictionary::containsKey(this, @"Orientation"))
      {
        Uint32ForKey = IIODictionary::getUint32ForKey(this, @"Orientation");
      }

      else
      {
        Uint32ForKey = 0;
      }

      Uint32ForKeyGroup = IIODictionary::containsKeyGroup(this, @"Orientation", @"{TIFF}");
      if (Uint32ForKeyGroup)
      {
        Uint32ForKeyGroup = IIODictionary::getUint32ForKeyGroup(this, @"Orientation", @"{TIFF}");
      }
    }

    else
    {
      Uint32ForKey = 0;
      Uint32ForKeyGroup = 0;
    }

    if (Uint32ForKey | Uint32ForKeyGroup)
    {
      return ImageIOLog("%s %s:%d - Orientation: top:%d  {TIFF}:%d\n");
    }

    else
    {
      return ImageIOLog("%s %s:%d - Orientation: not found\n");
    }
  }

  return result;
}

void OptionsArrayApplyFunction(const void *a1, uint64_t a2)
{
  if (a2 >= 4)
  {
    v3 = 4;
  }

  else
  {
    v3 = a2;
  }

  v4 = CFGetTypeID(a1);
  if (v4 == CFStringGetTypeID())
  {
    memset(v18, 0, sizeof(v18));
    IIOString::IIOString(v18, a1);
    v5 = *(&gIndents + v3);
    v6 = IIOString::utf8String(v18);
    ImageIOLog("      %s %s\n", v5, v6);
    IIOString::~IIOString(v18);
  }

  else
  {
    v7 = CFGetTypeID(a1);
    if (v7 == CFNumberGetTypeID())
    {
      IsFloatType = CFNumberIsFloatType(a1);
      v9 = *(&gIndents + v3);
      if (IsFloatType)
      {
        IIONumber::IIONumber(v18, a1);
        v10 = IIONumber::floatNum(v18);
        ImageIOLog("      %s %g\n", v9, v10);
      }

      else
      {
        IIONumber::IIONumber(v18, a1);
        v16 = IIONumber::uint64Num(v18);
        ImageIOLog("      %s %ld\n", v9, v16);
      }

      IIONumber::~IIONumber(v18);
    }

    else
    {
      v11 = CFGetTypeID(a1);
      if (v11 == CFBooleanGetTypeID())
      {
        Value = CFBooleanGetValue(a1);
        v13 = "true";
        if (!Value)
        {
          v13 = "false";
        }

        ImageIOLog("      %s %s\n", *(&gIndents + v3), v13);
      }

      else
      {
        v14 = CFGetTypeID(a1);
        if (v14 == CFArrayGetTypeID())
        {
          ImageIOLog("      %s\n", *(&gIndents + v3));
          v15.length = CFArrayGetCount(a1);
          v15.location = 0;

          CFArrayApplyFunction(a1, v15, OptionsArrayApplyFunction, (v3 + 1));
        }

        else
        {
          v17 = CFGetTypeID(a1);
          if (v17 == CFDictionaryGetTypeID())
          {

            CFDictionaryApplyFunction(a1, OptionsApplyFunction, (v3 + 1));
          }

          else
          {

            CFShow(a1);
          }
        }
      }
    }
  }
}

void sub_18602D460(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  IIONumber::~IIONumber(va);
  _Unwind_Resume(a1);
}

void flush_fn(uint64_t a1)
{
  io_ptr = _cg_png_get_io_ptr(a1);

  CFRelease(io_ptr);
}

void handle_write_error(uint64_t a1, const char *a2)
{
  if (a2)
  {
    if (*a2)
    {
      LogError("handle_write_error", 113, "%s\n", a2);
    }
  }

  exception = __cxa_allocate_exception(4uLL);
  *exception = -1;
  __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
}

void PNGWritePlugin::reduceFrame(PNGWritePlugin *this, unsigned __int8 *a2, unsigned __int8 *a3, unsigned __int8 *a4, int a5, unsigned int *a6, unsigned int *a7, unsigned int *a8, unsigned int *a9)
{
  v10 = a4;
  v13 = *a8;
  v14 = v13 - 1;
  v15 = *a9;
  v16 = *a9 - 1;
  if (v13 >= 2)
  {
    v17 = 2;
  }

  else
  {
    v17 = v13;
  }

  if (v15 >= 2)
  {
    v18 = 2;
  }

  else
  {
    v18 = *a9;
  }

  if (a5 == 4)
  {
    v53 = a7;
    v51 = v17;
    v52 = v13;
    v36 = a6;
    bzero(a4, *(this + 8));
    a6 = v36;
    v17 = v51;
    v13 = v52;
    a7 = v53;
    v37 = *a9;
    if (!*a9)
    {
LABEL_57:
      *a6 = v13 >> 1;
      *a7 = v15 >> 1;
      *a8 = v17;
      goto LABEL_58;
    }

    v19 = 0;
    v21 = 0;
    v38 = 0;
    v22 = 0;
    v39 = *a8;
    do
    {
      if (v39)
      {
        v40 = 0;
        do
        {
          v42 = *a2;
          a2 += 4;
          v41 = v42;
          v44 = *a3;
          a3 += 4;
          v43 = v44;
          v45 = v44 | v41;
          if (v40 >= v14)
          {
            v46 = v14;
          }

          else
          {
            v46 = v40;
          }

          if (v40 <= v21)
          {
            v47 = v21;
          }

          else
          {
            v47 = v40;
          }

          if (v38 >= v16)
          {
            v48 = v16;
          }

          else
          {
            v48 = v38;
          }

          if (v38 <= v22)
          {
            v49 = v22;
          }

          else
          {
            v49 = v38;
          }

          if (v41 != v43 && HIBYTE(v45) != 0)
          {
            v22 = v49;
            v21 = v47;
            v16 = v48;
            v14 = v46;
            ++v19;
          }

          *v10 = v41;
          v10 += 4;
          ++v40;
          v39 = *a8;
        }

        while (v40 < *a8);
        v37 = *a9;
      }

      ++v38;
    }

    while (v38 < v37);
  }

  else
  {
    if (a5 != 3 || !v15)
    {
      goto LABEL_57;
    }

    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = *a9;
    v24 = v13;
    do
    {
      if (v24)
      {
        v25 = 0;
        do
        {
          v26 = (a2[2] << 16) | (a2[1] << 8);
          v27 = *a2;
          a2 += 3;
          v28 = v26 | v27;
          v29 = (a3[2] << 16) | (a3[1] << 8);
          v30 = *a3;
          a3 += 3;
          v31 = v29 | v30;
          if (v25 >= v14)
          {
            v32 = v14;
          }

          else
          {
            v32 = v25;
          }

          if (v25 <= v21)
          {
            v33 = v21;
          }

          else
          {
            v33 = v25;
          }

          if (v20 >= v16)
          {
            v34 = v16;
          }

          else
          {
            v34 = v20;
          }

          if (v20 <= v22)
          {
            v35 = v22;
          }

          else
          {
            v35 = v20;
          }

          if (v28 != v31)
          {
            v22 = v35;
            v21 = v33;
            v16 = v34;
            v14 = v32;
            ++v19;
          }

          *v10 = v31;
          v10[2] = BYTE2(v31);
          v10 += 3;
          ++v25;
          v24 = *a8;
        }

        while (v25 < *a8);
        v23 = *a9;
      }

      ++v20;
    }

    while (v20 < v23);
  }

  if (!v19)
  {
    goto LABEL_57;
  }

  *a6 = v14;
  *a7 = v16;
  *a8 = v21 - v14 + 1;
  v18 = v22 - v16 + 1;
LABEL_58:
  *a9 = v18;
}

uint64_t PNGWritePlugin::writeAPNGFrame(PNGWritePlugin *this, IIOImagePixelDataProvider *a2, IIODictionary *a3)
{
  v68 = 0;
  v67 = 0;
  Ref = IIOImageSource::imageReadRef(a2);
  CGImageGetImageProvider();
  v7 = IIOImageSource::count(a2);
  v8 = IIO_Reader::testHeaderSize(a2);
  BytesPerRow = IIOImagePixelDataProvider::getBytesPerRow(a2);
  Property = CGImageProviderGetProperty();
  if (Property)
  {
    v11 = Property == *MEMORY[0x1E695E4D0];
  }

  else
  {
    v11 = 0;
  }

  image = Ref;
  if (!v11)
  {
    goto LABEL_5;
  }

  v14 = *(this + 124);
  v13 = BytesPerRow;
  if (v14)
  {
LABEL_9:
    v12 = v14 ^ 1;
    *(this + 123) = 0;
    goto LABEL_10;
  }

  if (BytesPerRow == v7)
  {
    v13 = 3 * v7;
    goto LABEL_9;
  }

LABEL_5:
  v12 = 0;
  v13 = BytesPerRow;
LABEL_10:
  v15 = v8;
  v16 = BytesPerRow * v8;
  if (IIOImagePixelDataProvider::hasAlpha(a2) || (*(this + 121) & 1) != 0 || (IIOImagePixelDataProvider::srcFormat(a2, v63), DWORD1(v63[0]) != 24))
  {
    v59 = 0;
    v62 = BytesPerRow * v8;
  }

  else
  {
    _cg_png_set_appleflags(a2, 32);
    BytesPerRow = 4 * (v7 & 0x3FFFFFFF);
    v62 = 4 * v7 * v8;
    v59 = 1;
  }

  size = v13 * v8;
  if (*(this + 36) == 1)
  {
    ImageIOLog("            bufferSize:  %d\n", v62);
    ImageIOLog("           dstRowbytes:  %d\n", v13);
    ImageIOLog("              rowbytes:  %d\n", BytesPerRow);
    ImageIOLog("    expandIndexedToRGB:  %d\n", v12);
    ImageIOLog("        expandRGB2RGBA:  %d\n", v59);
    ImageIOLog("      _optimizeForSize:  %d\n", *(this + 123));
  }

  v58 = v12;
  v60 = v8;
  if (*(this + 18) >= 2u && !*(this + 7))
  {
    *(this + 8) = size;
    *(this + 7) = malloc_type_malloc(size, 0x100004077774924uLL);
  }

  v68 = malloc_type_malloc(v62, 0x100004077774924uLL);
  v67 = malloc_type_malloc(size, 0x100004077774924uLL);
  v17 = @"UnclampedDelayTime";
  if ((IIODictionary::containsKeyGroup(a3, @"UnclampedDelayTime", @"{PNG}") & 1) != 0 || (v17 = @"DelayTime", IIODictionary::containsKeyGroup(a3, @"DelayTime", @"{PNG}")))
  {
    v18 = (IIODictionary::getDoubleForKeyGroup(a3, v17, @"{PNG}") * 1000.0);
  }

  else
  {
    v18 = 100;
  }

  *v66 = 0;
  v64 = v8;
  v65 = v7;
  Bytes = IIOImagePixelDataProvider::getBytes(a2, v68);
  if (Bytes != v16)
  {
    _cg_jpeg_mem_term("writeAPNGFrame", 1342, "    iPixelDataProvider->getBytes - expected: %d  got: %d\n", v16, Bytes);
    v52 = 0;
    goto LABEL_59;
  }

  if (v59)
  {
    memset(v63, 0, sizeof(v63));
    IIOPixelConverterRGB::IIOPixelConverterRGB(v63, 0, 3, 8u, 8, 8, 0, 2, 8u, 0, 0);
    malloc_type_malloc(4 * (v7 & 0x3FFFFFFF), 0x100004077774924uLL);
    v54 = 3 * v7;
    v55 = 4 * (v7 & 0x3FFFFFFF) * (v8 - 1);
    for (i = v54 * (v60 - 1); ; i -= v54)
    {
      IIOPixelConverterRGB::convertRow(v63, &v68[i], &v68[v55], v7);
      v55 -= 4 * (v7 & 0x3FFFFFFF);
    }
  }

  if (v58)
  {
    ColorSpace = CGImageGetColorSpace(image);
    BaseColorSpace = CGColorSpaceGetBaseColorSpace(ColorSpace);
    NumberOfComponents = CGColorSpaceGetNumberOfComponents(BaseColorSpace);
    ColorTableCount = CGColorSpaceGetColorTableCount(ColorSpace);
    v24 = malloc_type_calloc(NumberOfComponents, ColorTableCount, 0x100004077774924uLL);
    CGColorSpaceGetColorTable(ColorSpace, v24);
    if (v15)
    {
      for (j = 0; j != v15; ++j)
      {
        if (v7)
        {
          v26 = &v67[j * v13];
          v27 = v7;
          v28 = &v68[j * BytesPerRow];
          do
          {
            v29 = *v28++;
            v30 = &v24[3 * v29];
            *v26 = *v30;
            v26[1] = v30[1];
            v26[2] = v30[2];
            v26 += 3;
            --v27;
          }

          while (v27);
        }
      }
    }

    free(v24);
  }

  if (*(this + 19) && *(this + 123) == 1 && (*(this + 124) & 1) == 0)
  {
    PNGWritePlugin::reduceFrame(this, v68, *(this + 7), v67, 4, &v66[1], v66, &v65, &v64);
    if (*(this + 36) == 1)
    {
      ImageIOLog("            orig-frame:  {%6d, %6d, %6d, %6d}\n", 0, 0, v7, v60);
      ImageIOLog("         reduced-frame:  {%6d, %6d, %6d, %6d}\n", v66[1], v66[0], v65, v64);
    }

    if (v58)
    {
      goto LABEL_46;
    }

    goto LABEL_42;
  }

  if ((v58 & 1) == 0)
  {
    if (v62 >= size)
    {
      v31 = size;
    }

    else
    {
      v31 = v62;
    }

    memcpy(v67, v68, v31);
LABEL_42:
    if (v62 >= *(this + 8))
    {
      v32 = *(this + 8);
    }

    else
    {
      v32 = v62;
    }

    memcpy(*(this + 7), v68, v32);
  }

LABEL_46:
  v33 = v64;
  v34 = v66[0];
  v35 = v66[1];
  _cg_png_write_frame_head(*(this + 5), *(this + 6), 0, v65, v64, v66[1], v66[0], v18, 0x3E8u, 0, 0);
  if (v33)
  {
    v36 = 0;
    v37 = &v67[4 * v35 + v13 * v34];
    v38 = v7;
    v39 = &v37[2 * v7 - 1];
    v40 = &v37[4 * v7 - 2];
    v41 = &v37[v7 - 1];
    do
    {
      if (*(this + 122) == 1)
      {
        if (*(this + 84) == 4)
        {
          if (v38)
          {
            v42 = v40;
            v43 = v41;
            v44 = v38;
            do
            {
              v45 = *v43--;
              v46 = 3 * (v45 >> 4);
              *(v42 - 2) = *(*(this + 14) + v46);
              *(v42 - 1) = *(*(this + 14) + v46 + 1);
              *v42 = *(*(this + 14) + v46 + 2);
              v42[1] = v45 & 0xF | (16 * v45);
              v42 -= 4;
              --v44;
            }

            while (v44);
          }
        }

        else
        {
          v47 = v40;
          v48 = v39;
          for (k = v38; k; --k)
          {
            v50 = *(v48 - 1);
            v51 = *v48;
            v48 -= 2;
            v50 *= 3;
            *(v47 - 2) = *(*(this + 14) + v50);
            *(v47 - 1) = *(*(this + 14) + v50 + 1);
            *v47 = *(*(this + 14) + v50 + 2);
            v47[1] = v51;
            v47 -= 4;
          }
        }
      }

      _cg_png_write_row_sized(*(this + 5), v37, v13);
      ++v36;
      v37 += v13;
      v39 += v13;
      v40 += v13;
      v41 += v13;
    }

    while (v36 != v33);
  }

  _cg_png_write_frame_tail(*(this + 5));
  v52 = 1;
LABEL_59:
  if (v67)
  {
    free(v67);
  }

  if (v68)
  {
    free(v68);
  }

  return v52;
}

void sub_18602DE2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  IIOPixelConverterRGB::~IIOPixelConverterRGB(va);
  _Unwind_Resume(a1);
}

uint64_t imagePNG_write_error_break(uint64_t a1)
{
  LogError("imagePNG_write_error_break", 90, "*** ERROR: imagePNG_write_error_break\n");
  *gCrashMessage = 0;
  result = snprintf(gCrashMessage, 0x200uLL, "*** ERROR: PNG-writeAll  %dx%d  bpc: %d  cs: %d", *(a1 + 280), *(a1 + 284), *(a1 + 392), *(a1 + 391));
  qword_1ED5688A0 = gCrashMessage;
  return result;
}

uint64_t PNGWritePlugin::WriteImageWithSession(PNGWritePlugin *this, IIOImageWriteSession *a2, IIOImageDestination *a3, IIOImagePixelDataProvider *a4, IIODictionary *a5, IIODictionary *a6)
{
  v18 = 0u;
  v19 = 0u;
  memset(v17, 0, sizeof(v17));
  v15 = 0u;
  v16 = 0u;
  memset(v14, 0, sizeof(v14));
  IIOWritePlugin::IIOWritePlugin(v14, this, a2, 1347307296);
  *&v17[0] = 0;
  DWORD2(v17[0]) = 1;
  *(v17 + 12) = 0;
  BYTE4(v17[1]) = 0;
  *(&v19 + 9) = 1;
  *(&v15 + 1) = 0;
  v16 = 0uLL;
  *&v14[0] = &unk_1EF4D92B8;
  *(&v18 + 1) = 0;
  *&v19 = 0;
  PNGWritePlugin::writePrologue(v14, a3, a4);
  v8 = PNGWritePlugin::writePNG(v14, a3, a4);
  PNGWritePlugin::writeEpilogue(v14, v9, v10);
  PNGWritePlugin::~PNGWritePlugin(v14, v11, v12);
  return v8;
}

void sub_18602DFE8(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x18602DFD0);
}

uint64_t TIFFNoEncode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 120);
  v9 = &registeredCODECS;
  while (1)
  {
    v9 = *v9;
    if (!v9)
    {
      break;
    }

    v10 = v9[1];
    if (*(v10 + 8) == v8)
    {
      v11 = *v10;
      return TIFFErrorExtR(a1, *a1, "%s %s encoding is not implemented", a4, a5, a6, a7, a8, v11);
    }
  }

  LOBYTE(v11) = _TIFFBuiltinCODECS;
  if (_TIFFBuiltinCODECS)
  {
    if (word_1EF4D54B8 == v8)
    {
      return TIFFErrorExtR(a1, *a1, "%s %s encoding is not implemented", a4, a5, a6, a7, a8, v11);
    }

    for (i = &word_1EF4D54D0; ; i += 12)
    {
      v11 = *(i - 1);
      if (!v11)
      {
        break;
      }

      v13 = *i;
      if (v13 == v8)
      {
        return TIFFErrorExtR(a1, *a1, "%s %s encoding is not implemented", a4, a5, a6, a7, a8, v11);
      }
    }
  }

  return TIFFErrorExtR(a1, *a1, "Compression scheme %hu %s encoding is not implemented", a4, a5, a6, a7, a8, *(a1 + 120));
}

uint64_t TIFFNoDecode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 120);
  v9 = &registeredCODECS;
  while (1)
  {
    v9 = *v9;
    if (!v9)
    {
      break;
    }

    v10 = v9[1];
    if (*(v10 + 8) == v8)
    {
      v11 = *v10;
      return TIFFErrorExtR(a1, *a1, "%s %s decoding is not implemented", a4, a5, a6, a7, a8, v11);
    }
  }

  LOBYTE(v11) = _TIFFBuiltinCODECS;
  if (_TIFFBuiltinCODECS)
  {
    if (word_1EF4D54B8 == v8)
    {
      return TIFFErrorExtR(a1, *a1, "%s %s decoding is not implemented", a4, a5, a6, a7, a8, v11);
    }

    for (i = &word_1EF4D54D0; ; i += 12)
    {
      v11 = *(i - 1);
      if (!v11)
      {
        break;
      }

      v13 = *i;
      if (v13 == v8)
      {
        return TIFFErrorExtR(a1, *a1, "%s %s decoding is not implemented", a4, a5, a6, a7, a8, v11);
      }
    }
  }

  return TIFFErrorExtR(a1, *a1, "Compression scheme %hu %s decoding is not implemented", a4, a5, a6, a7, a8, *(a1 + 120));
}

uint64_t _TIFFSetDefaultCompressionState(uint64_t result)
{
  *(result + 952) = _TIFFNoFixupTags;
  *(result + 944) = 1;
  *(result + 960) = _TIFFtrue;
  *(result + 968) = _TIFFNoPreCode;
  *(result + 1008) = _TIFFNoRowDecode;
  *(result + 1024) = _TIFFNoStripDecode;
  *(result + 1040) = _TIFFNoTileDecode;
  *(result + 984) = 1;
  *(result + 976) = _TIFFtrue;
  *(result + 992) = _TIFFNoPreCode;
  *(result + 1000) = _TIFFtrue;
  *(result + 1016) = _TIFFNoRowEncode;
  *(result + 1032) = _TIFFNoStripEncode;
  *(result + 1048) = _TIFFNoTileEncode;
  *(result + 1056) = _TIFFvoid;
  *(result + 1064) = _TIFFNoSeek;
  *(result + 1072) = _TIFFvoid;
  *(result + 1080) = _TIFFDefaultStripSize;
  *(result + 1088) = _TIFFDefaultTileSize;
  *(result + 16) &= 0xFFFDFEFF;
  return result;
}

uint64_t TIFFSetCompressionScheme(uint64_t a1, uint64_t a2)
{
  v4 = &registeredCODECS;
  while (1)
  {
    v4 = *v4;
    if (!v4)
    {
      break;
    }

    v5 = v4[1];
    if (*(v5 + 4) == a2)
    {
      goto LABEL_4;
    }
  }

  if (!_TIFFBuiltinCODECS)
  {
LABEL_11:
    _TIFFSetDefaultCompressionState(a1);
    return 1;
  }

  v5 = &_TIFFBuiltinCODECS;
  while (*(v5 + 4) != a2)
  {
    v8 = v5[3];
    v5 += 3;
    if (!v8)
    {
      goto LABEL_11;
    }
  }

LABEL_4:
  _TIFFSetDefaultCompressionState(a1);
  v6 = v5[2];

  return (v6)(a1, a2);
}

char **_cg_TIFFFindCODEC(int a1)
{
  v1 = &registeredCODECS;
  while (1)
  {
    v1 = *v1;
    if (!v1)
    {
      break;
    }

    i = v1[1];
    if (*(i + 4) == a1)
    {
      return i;
    }
  }

  i = _TIFFBuiltinCODECS;
  if (_TIFFBuiltinCODECS)
  {
    for (i = &_TIFFBuiltinCODECS; *(i + 4) != a1; i += 3)
    {
      if (!i[3])
      {
        return 0;
      }
    }
  }

  return i;
}

uint64_t IIOSavePermissionsToXPCObject(void *a1)
{
  if (gPermissionsChanged == 1)
  {
    v1 = iio_xpc_add_permission_dict(a1);
    if (v1)
    {
      xpc_dictionary_set_uint64(v1, "iio_xpc_permission_data", gPermissions);
    }
  }

  return 0;
}

uint64_t IIOSaveAllowedTypesToXPCObject(void *a1)
{
  if (gAllowedTypesChanged == 1)
  {
    v1 = iio_xpc_add_permission_dict(a1);
    if (v1)
    {
      iio_xpc_dictionary_add_CFDictionary(v1, "iio_xpc_permission_allowed_types_array");
    }
  }

  return 0;
}

uint64_t IIOXPCUpdatePermissions(void *a1)
{
  permission_dict = iio_xpc_get_permission_dict(a1);
  if (!permission_dict)
  {
    return 0;
  }

  uint64 = xpc_dictionary_get_uint64(permission_dict, "iio_xpc_permission_data");
  v3 = uint64;
  if ((uint64 & 1) == 0)
  {
    return 0;
  }

  v6 = gPermissions ^ uint64;
  if (((gPermissions ^ uint64) & 2) != 0)
  {
    v4 = IIODisableRAWDecoding();
    IIOXPCLog("🔄 RAWDecoding disabled\n");
    v6 = gPermissions ^ v3;
    if (((gPermissions ^ v3) & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v4 = 0;
  if (((gPermissions ^ uint64) & 4) != 0)
  {
LABEL_9:
    v4 = IIODisableMetadataParsing();
    IIOXPCLog("🔄 MetadataParsing disabled\n");
    v6 = gPermissions ^ v3;
  }

LABEL_10:
  if ((v6 & 8) == 0)
  {
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_12;
    }

LABEL_15:
    v4 = IIOEnableRestrictedDecoding();
    IIOXPCLog("🔄 RestrictedDecoding enabled\n");
    if (((gPermissions ^ v3) & 0x20) == 0)
    {
      return v4;
    }

    goto LABEL_16;
  }

  v4 = IIODisableHardwareDecoding();
  IIOXPCLog("🔄 HardwareDecoding disabled\n");
  v6 = gPermissions ^ v3;
  if (((gPermissions ^ v3) & 0x10) != 0)
  {
    goto LABEL_15;
  }

LABEL_12:
  if ((v6 & 0x20) == 0)
  {
    return v4;
  }

LABEL_16:
  v7 = IIODisableCaching();
  IIOXPCLog("🔄 caching disabled\n");
  return v7;
}

uint64_t IIODisableRAWDecoding()
{
  kdebug_trace();
  v3 = 0;
  v4 = &v3;
  v5 = 0x2000000000;
  v6 = -50;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __IIODisableRAWDecoding_block_invoke;
  block[3] = &unk_1E6F09738;
  block[4] = &v3;
  if (IIODisableRAWDecoding::onceToken != -1)
  {
    dispatch_once(&IIODisableRAWDecoding::onceToken, block);
  }

  v0 = *(v4 + 6);
  _Block_object_dispose(&v3, 8);
  return v0;
}

uint64_t IIODisableMetadataParsing()
{
  kdebug_trace();
  v3 = 0;
  v4 = &v3;
  v5 = 0x2000000000;
  v6 = -50;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __IIODisableMetadataParsing_block_invoke;
  block[3] = &unk_1E6F09760;
  block[4] = &v3;
  if (IIODisableMetadataParsing::onceToken != -1)
  {
    dispatch_once(&IIODisableMetadataParsing::onceToken, block);
  }

  v0 = *(v4 + 6);
  _Block_object_dispose(&v3, 8);
  return v0;
}

uint64_t IIODisableHardwareDecoding()
{
  kdebug_trace();
  v3 = 0;
  v4 = &v3;
  v5 = 0x2000000000;
  v6 = -50;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __IIODisableHardwareDecoding_block_invoke;
  block[3] = &unk_1E6F09788;
  block[4] = &v3;
  if (IIODisableHardwareDecoding::onceToken != -1)
  {
    dispatch_once(&IIODisableHardwareDecoding::onceToken, block);
  }

  v0 = *(v4 + 6);
  _Block_object_dispose(&v3, 8);
  return v0;
}

uint64_t IIODisableCaching()
{
  kdebug_trace();
  v3 = 0;
  v4 = &v3;
  v5 = 0x2000000000;
  v6 = -50;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __IIODisableCaching_block_invoke;
  block[3] = &unk_1E6F097D8;
  block[4] = &v3;
  if (IIODisableCaching::onceToken != -1)
  {
    dispatch_once(&IIODisableCaching::onceToken, block);
  }

  v0 = *(v4 + 6);
  _Block_object_dispose(&v3, 8);
  return v0;
}

uint64_t IIOXPCUpdateAllowableTypes(void *a1)
{
  if (gAllowedTypesChanged)
  {
    return 0;
  }

  permission_dict = iio_xpc_get_permission_dict(a1);
  if (!permission_dict)
  {
    return 0;
  }

  if (!xpc_dictionary_get_array(permission_dict, "iio_xpc_permission_allowed_types_array"))
  {
    return 0;
  }

  v2 = _CFXPCCreateCFObjectFromXPCObject();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = IIODecodingSetAllowableTypes(v2);
  IIOXPCLog("🔄 AllowableTypes updated\n");
  CFRelease(v3);
  return v4;
}

uint64_t __IIODisableRAWDecoding_block_invoke(IIO_ReaderHandler *a1)
{
  v1 = a1;
  if ((gIIODebugFlags & 0x4000000000000) != 0)
  {
    a1 = IIO_OSAppleInternalBuild();
    if (a1)
    {
      a1 = ImageIOLog("••• CGImageSourceDisableRAWDecoding - RAW formats will no longer be handled in this process\n");
    }
  }

  ReaderHandler = IIO_ReaderHandler::GetReaderHandler(a1);
  result = IIO_ReaderHandler::disableRAWPlugins(ReaderHandler);
  *(*(*(v1 + 4) + 8) + 24) = result;
  if (!*(*(*(v1 + 4) + 8) + 24))
  {
    gPermissions &= ~2uLL;
    gPermissionsChanged = 1;
  }

  return result;
}

uint64_t __IIODisableMetadataParsing_block_invoke(uint64_t result)
{
  v1 = result;
  if ((gIIODebugFlags & 0x4000000000000) != 0)
  {
    result = IIO_OSAppleInternalBuild();
    if (result)
    {
      result = ImageIOLog("••• Ⓜ️  CGImageSourceDisableMetadataParsing - image metadata will no longer be handled in this process\n");
    }
  }

  gPermissions &= ~4uLL;
  gPermissionsChanged = 1;
  *(*(*(v1 + 32) + 8) + 24) = 0;
  return result;
}

uint64_t __IIODisableHardwareDecoding_block_invoke(uint64_t result)
{
  v1 = result;
  if ((gIIODebugFlags & 0x4000000000000) != 0)
  {
    result = IIO_OSAppleInternalBuild();
    if (result)
    {
      result = ImageIOLog("••• CGImageSourceDisableHardwareDecoding - JPEG/HEIF hardware decoder will no longer be used in this process\n");
    }
  }

  gPermissions &= ~8uLL;
  gPermissionsChanged = 1;
  *(*(*(v1 + 32) + 8) + 24) = 0;
  return result;
}

uint64_t __IIODisableCaching_block_invoke(uint64_t result)
{
  v1 = result;
  if ((gIIODebugFlags & 0x4000000000000) != 0)
  {
    result = IIO_OSAppleInternalBuild();
    if (result)
    {
      result = ImageIOLog("••• CGImageSourceDisableCaching - caching is disabled for this process\n");
    }
  }

  gPermissionsChanged = 0;
  *(*(*(v1 + 32) + 8) + 24) = 0;
  return result;
}

BOOL onlyspaces(unsigned __int8 *a1)
{
  do
  {
    v2 = *a1++;
    v1 = v2;
  }

  while (v2 == 32);
  return v1 == 0;
}

uint64_t stringType(unsigned __int8 *a1, int a2)
{
  v2 = 0;
  if (a2)
  {
    while (1)
    {
      v3 = a2--;
      while ((*a1 & 0x80000000) == 0)
      {
        ++a1;
        --a2;
        if (!--v3)
        {
          return v2;
        }
      }

      v4 = *a1;
      if ((v4 - 254) < 0xFFFFFFC2)
      {
        break;
      }

      v5 = 0;
      do
      {
        v6 = v5;
        v7 = v5++ + 2;
        --a2;
      }

      while (((v4 << v7) & 0x80) != 0);
      if (v3 < v5 + 1)
      {
        break;
      }

      v8 = 0;
      v9 = v4 & ~(-1 << (6 - v5));
      v10 = v6 + 1;
      do
      {
        v11 = v9;
        v9 = a1[++v8] & 0x3F | (v9 << 6);
      }

      while (v10 != v8);
      v2 = 2;
      if (v11 << 6 >> 16 <= 0x10 && v9 >= stringType::vmin[v5 + 1])
      {
        a1 += v5 + 1;
        v2 = 1;
        if (a2)
        {
          continue;
        }
      }

      return v2;
    }

    return 2;
  }

  return v2;
}

IIOImageRead *IIO_Reader_HEIF::createGlobalInfoData(IIO_Reader_HEIF *this, IIOImageReadSession *a2)
{
  result = IIOImageReadSession::globalInfoForType(a2, 1212500294);
  if (result)
  {

    return GlobalHEIFInfo::createDataRepresentation(result);
  }

  return result;
}

BOOL IIO_Reader_HEIF::addBasicProperties(IIO_Reader_HEIF *this, unsigned __int8 *a2, unsigned int a3, __CFDictionary *a4, unsigned int *a5, const __CFData **a6)
{
  v43 = 0;
  IIO_LoadHEIFSymbols();
  v11 = IIOCreateCMPhotoDecompressionSession(&v43);
  if (v11)
  {
    v12 = v11;
    v13 = IIOCMErrorString(v11);
    _cg_jpeg_mem_term("addBasicProperties", 366, "*** CMPhotoDecompressionSessionCreate  err = %s [%d]\n", v13, v12);
    return 0;
  }

  else
  {
    v42 = 0;
    v41 = 0;
    v15 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], a2, a3, *MEMORY[0x1E695E498]);
    if (v15)
    {
      v16 = v15;
      v17 = gFunc_CMPhotoDecompressionSessionCreateContainer(v43, 0, v15, &v41, &v42);
      if (v17)
      {
        v18 = v17;
        v19 = IIOCMErrorString(v17);
        _cg_jpeg_mem_term("addBasicProperties", 381, "*** CMPhotoDecompressionSessionCreateContainer  err = %s [%d]\n", v19, v18);
        v14 = 0;
      }

      else
      {
        v40 = 0;
        v20 = gFunc_CMPhotoDecompressionContainerCreateDictionaryDescription(v42, &v40);
        v14 = v20 == 0;
        if (v20)
        {
          v21 = v20;
          v22 = IIOCMErrorString(v20);
          _cg_jpeg_mem_term("addBasicProperties", 391, "*** CMPhotoDecompressionContainerCreateDictionaryDescription  err = %s [%d]\n", v22, v21);
        }

        else
        {
          memset(v39, 0, sizeof(v39));
          IIODictionary::IIODictionary(v39, a4);
          IIODictionary::IIODictionary(v38, v40);
          ObjectForKey = IIODictionary::getObjectForKey(v38, *gIIO_kCMPhotoDecompressionContainerDescription_MainImages);
          IIODictionary::~IIODictionary(v38);
          if (ObjectForKey && CFArrayGetCount(ObjectForKey) >= 1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(ObjectForKey, 0);
            memset(v38, 0, sizeof(v38));
            IIODictionary::IIODictionary(v38, ValueAtIndex);
            ObjectForKeyGroup = IIODictionary::getObjectForKeyGroup(v38, @"Width", *gIIO_kCMPhotoDecompressionContainerDescription_Dimensions);
            IIODictionary::setObjectForKey(v39, ObjectForKeyGroup, @"PixelXDimension");
            v26 = IIODictionary::getObjectForKeyGroup(v38, @"Height", *gIIO_kCMPhotoDecompressionContainerDescription_Dimensions);
            IIODictionary::setObjectForKey(v39, v26, @"PixelYDimension");
            v27 = IIODictionary::getObjectForKey(v38, *gIIO_kCMPhotoDecompressionContainerDescription_ThumbnailImages);
            v28 = CFArrayGetValueAtIndex(v27, 0);
            memset(v37, 0, sizeof(v37));
            IIODictionary::IIODictionary(v37, v28);
            v29 = IIODictionary::getObjectForKeyGroup(v37, @"Width", *gIIO_kCMPhotoDecompressionContainerDescription_Dimensions);
            IIODictionary::setObjectForKey(v39, v29, @"ThumbnailWidth");
            v30 = IIODictionary::getObjectForKeyGroup(v37, @"Height", *gIIO_kCMPhotoDecompressionContainerDescription_Dimensions);
            IIODictionary::setObjectForKey(v39, v30, @"ThumbnailHeight");
            Uint32ForKey = IIODictionary::getUint32ForKey(v37, *gIIO_kCMPhotoDecompressionContainerDescription_DataLength);
            v32 = IIODictionary::getUint32ForKey(v37, *gIIO_kCMPhotoDecompressionContainerDescription_DataOffset);
            IIONumber::IIONumber(v35, Uint32ForKey);
            IIODictionary::setObjectForKey(v39, value, @"ThumbnailSize");
            IIONumber::~IIONumber(v35);
            IIONumber::IIONumber(v35, v32);
            IIODictionary::setObjectForKey(v39, value, @"ThumbnailOffset");
            IIONumber::~IIONumber(v35);
            if (a6)
            {
              v34 = 0;
              v35[0] = 0;
              if (!gFunc_CMPhotoDecompressionContainerCopyExifForIndexWithOptions(v42, 0, 0, 0, &v34, v35))
              {
                if (v35[0])
                {
                  *a6 = v35[0];
                  *a5 = v34;
                }
              }
            }

            IIODictionary::~IIODictionary(v37);
            IIODictionary::~IIODictionary(v38);
          }

          CFRelease(v40);
          IIODictionary::~IIODictionary(v39);
        }

        CFRelease(v42);
      }

      CFRelease(v16);
    }

    else
    {
      v14 = 0;
    }

    CFRelease(v43);
  }

  return v14;
}

void sub_18602F338(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va2, a8);
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  va_copy(va2, va1);
  v13 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  IIODictionary::~IIODictionary(va);
  IIODictionary::~IIODictionary(va1);
  IIODictionary::~IIODictionary(va2);
  _Unwind_Resume(a1);
}

uint64_t IIO_Reader_HEIF::updateSourceProperties(IIO_Reader_HEIF *this, IIOImageReadSession *a2, IIODictionary *a3, IIODictionary *a4, IIODictionary *a5, CGImageSourceStatus *a6)
{
  IIO_LoadHEIFSymbols();
  if ((IIOImageReadSession::isFinal(a2) & 1) == 0)
  {
    IIO_Reader_HEIF::updateSourceProperties();
    v85 = 4294967257;
LABEL_140:
    if (a6 && v85 == -39)
    {
      *a6 = kCGImageStatusIncomplete;
      return 4294967257;
    }

    return v85;
  }

  v90 = a5;
  v10 = IIOImageReadSession::globalInfoForType(a2, 1212500294);
  if (!v10)
  {
    operator new();
  }

  v11 = (*(*this + 272))(this, v10, a2, 0);
  if (v11)
  {
    v85 = v11;
    LogError("updateSourceProperties", 748, "*** ERROR: extractImageInfo failed: %d\n", v11);
    goto LABEL_140;
  }

  NumberOfAuxImages = HEIFMainImage::getNumberOfAuxImages(v10);
  v89 = v10;
  if (!NumberOfAuxImages)
  {
    goto LABEL_32;
  }

  v13 = NumberOfAuxImages;
  v92 = this;
  v111 = 0;
  v112 = 0;
  v113 = 0;
  IIOArray::IIOArray(&v111);
  for (i = 0; i != v13; ++i)
  {
    HEIFAuxImageAtIndex = HEIFMainImage::getHEIFAuxImageAtIndex(v10, i);
    if (!HEIFAuxImageAtIndex)
    {
      continue;
    }

    v108 = 0;
    v109 = 0;
    v110 = 0;
    IIODictionary::IIODictionary(&v108);
    GroupPictureIndexListCount = HEIFGroupItem::getGroupPictureIndexListCount(HEIFAuxImageAtIndex);
    GroupType = HEIFGroupItem::getGroupType(HEIFAuxImageAtIndex);
    if (GroupType == 1634497650)
    {
      IIODictionary::setObjectForKey(&v108, @"Alternate", @"GroupType");
      v105 = 0;
      v106 = 0;
      v107 = 0;
      IIOArray::IIOArray(&v105);
      if (GroupPictureIndexListCount)
      {
        for (j = 0; j != GroupPictureIndexListCount; ++j)
        {
          GroupPictureIndexAtIndex = HEIFGroupItem::getGroupPictureIndexAtIndex(HEIFAuxImageAtIndex, j);
          IIONumber::IIONumber(&v102, GroupPictureIndexAtIndex);
          IIOArray::addObject(&v105, v104);
          IIONumber::~IIONumber(&v102);
        }
      }

      IIODictionary::setObjectForKey(&v108, v106, @"GroupImages");
    }

    else
    {
      if (GroupType != 1937007986 || (GroupPictureIndexListCount & 0xFFFFFFFE) != 2)
      {
        goto LABEL_29;
      }

      IIODictionary::setObjectForKey(&v108, @"StereoPair", @"GroupType");
      v18 = HEIFGroupItem::getGroupPictureIndexAtIndex(HEIFAuxImageAtIndex, 0);
      IIONumber::IIONumber(&v105, v18);
      IIODictionary::setObjectForKey(&v108, v107, @"GroupImageIndexLeft");
      IIONumber::~IIONumber(&v105);
      v19 = HEIFGroupItem::getGroupPictureIndexAtIndex(HEIFAuxImageAtIndex, 1u);
      IIONumber::IIONumber(&v105, v19);
      IIODictionary::setObjectForKey(&v108, v107, @"GroupImageIndexRight");
      IIONumber::~IIONumber(&v105);
      if (GroupPictureIndexListCount == 3)
      {
        v20 = HEIFGroupItem::getGroupPictureIndexAtIndex(HEIFAuxImageAtIndex, 2u);
        IIONumber::IIONumber(&v105, v20);
        IIODictionary::setObjectForKey(&v108, v107, @"GroupImageIndexMonoscopic");
        IIONumber::~IIONumber(&v105);
        MonoscopicImageLocationString = HEIFGroupItem::getMonoscopicImageLocationString(HEIFAuxImageAtIndex);
        if (MonoscopicImageLocationString)
        {
          IIODictionary::setObjectForKey(&v108, MonoscopicImageLocationString, @"GroupImageIndexMonoscopicImageLocation");
        }
      }

      if (HEIFGroupItem::hasDisparityAdjustment(HEIFAuxImageAtIndex))
      {
        DisparityAdjustment = HEIFGroupItem::getDisparityAdjustment(HEIFAuxImageAtIndex);
        IIONumber::IIONumber(&v105, DisparityAdjustment);
        IIODictionary::setObjectForKey(&v108, v107, @"GroupImageDisparityAdjustment");
        IIONumber::~IIONumber(&v105);
      }

      StereoAggressorCount = HEIFGroupItem::getStereoAggressorCount(HEIFAuxImageAtIndex);
      if (!StereoAggressorCount)
      {
        goto LABEL_29;
      }

      v105 = 0;
      v106 = 0;
      v107 = 0;
      IIOArray::IIOArray(&v105);
      for (k = 0; k != StereoAggressorCount; ++k)
      {
        StereoAggressorAtIndex = HEIFGroupItem::getStereoAggressorAtIndex(HEIFAuxImageAtIndex, k);
        v102 = 0;
        v103 = 0;
        v104 = 0;
        IIODictionary::IIODictionary(&v102);
        v26 = IIOImageSource::cf(StereoAggressorAtIndex);
        IIODictionary::setObjectForKey(&v102, v26, @"Type");
        if (IIOImageSource::imageReadRef(StereoAggressorAtIndex))
        {
          Ref = IIOImageSource::imageReadRef(StereoAggressorAtIndex);
          IIODictionary::setObjectForKey(&v102, Ref, @"SubTypeURI");
        }

        if (HEIFStereoAggressor::hasSeverity(StereoAggressorAtIndex))
        {
          Severity = HEIFStereoAggressor::getSeverity(StereoAggressorAtIndex);
          IIONumber::IIONumber(&v99, Severity);
          IIODictionary::setObjectForKey(&v102, v101, @"Severity");
          IIONumber::~IIONumber(&v99);
        }

        IIOArray::addObject(&v105, v103);
        IIODictionary::~IIODictionary(&v102);
      }

      IIODictionary::setObjectForKey(&v108, v106, @"GroupImageStereoAggressors");
      v10 = v89;
    }

    IIOArray::~IIOArray(&v105);
LABEL_29:
    IsAnonymous = TIFFFieldIsAnonymous(HEIFAuxImageAtIndex);
    IIONumber::IIONumber(&v105, IsAnonymous);
    IIODictionary::setObjectForKey(&v108, v107, @"GroupIndex");
    IIONumber::~IIONumber(&v105);
    IIOArray::addObject(&v111, v109);
    IIODictionary::~IIODictionary(&v108);
  }

  IIODictionary::setObjectForKey(a3, v112, @"{Groups}");
  IIOArray::~IIOArray(&v111);
  this = v92;
LABEL_32:
  if (GlobalHEIFInfo::hasHEIFSequence(v10) && GlobalHEIFInfo::useHEIFSequence(v10))
  {
    NumberOfMainImages = GlobalHEIFInfo::getNumberOfMainImages(v10);
    if (NumberOfMainImages)
    {
      v33 = NumberOfMainImages;
      v111 = 0;
      v112 = 0;
      v113 = 0;
      IIODictionary::IIODictionary(&v111);
      IIODictionary::setObjectForKey(v34, *MEMORY[0x1E695E4D0], @"CanAnimate");
      HEIFMainImageAtIndex = GlobalHEIFInfo::getHEIFMainImageAtIndex(v10, 0);
      v36 = HEIFMainImage::width(HEIFMainImageAtIndex);
      v37 = HEIFMainImage::height(HEIFMainImageAtIndex);
      ColorSpaceName = HEIFMainImage::getColorSpaceName(HEIFMainImageAtIndex);
      if (v36)
      {
        IIONumber::IIONumber(&v108, v36);
        IIODictionary::setObjectForKey(&v111, v110, @"CanvasPixelWidth");
        IIONumber::~IIONumber(&v108);
      }

      if (v37)
      {
        IIONumber::IIONumber(&v108, v37);
        IIODictionary::setObjectForKey(&v111, v110, @"CanvasPixelHeight");
        IIONumber::~IIONumber(&v108);
      }

      if (ColorSpaceName)
      {
        IIODictionary::setObjectForKey(&v111, ColorSpaceName, @"NamedColorSpace");
      }

      v108 = 0;
      v109 = 0;
      v110 = 0;
      IIOArray::IIOArray(&v108);
      for (m = 0; m != v33; ++m)
      {
        v40 = GlobalHEIFInfo::getHEIFMainImageAtIndex(v10, m);
        FrameDuration = HEIFMainImage::getFrameDuration(v40);
        v105 = 0;
        v106 = 0;
        v107 = 0;
        IIODictionary::IIODictionary(&v105);
        IIONumber::IIONumber(&v102, FrameDuration);
        IIODictionary::setObjectForKey(&v105, v104, @"DelayTime");
        IIONumber::~IIONumber(&v102);
        IIOArray::addObject(&v108, v106);
        IIODictionary::~IIODictionary(&v105);
      }

      IIODictionary::setObjectForKey(&v111, v109, @"FrameInfo");
      v42 = &kCGImagePropertyAVISDictionary;
      if (*(this + 6) != 1096173907)
      {
        v42 = &kCGImagePropertyHEICSDictionary;
      }

      v43 = *v42;
      IIODictionary::setObjectForKey(a3, v112, *v42);
      LoopCount = GlobalHEIFInfo::getLoopCount(v10);
      IIONumber::IIONumber(&v105, LoopCount);
      IIODictionary::setObjectForKeyGroup(a3, &v105, @"LoopCount", v43);
      IIONumber::~IIONumber(&v105);
      IIOArray::~IIOArray(&v108);
      IIODictionary::~IIODictionary(&v111);
    }

    return 0;
  }

  v111 = 0;
  v112 = 0;
  v113 = 0;
  IIOArray::IIOArray(&v111);
  v45 = GlobalHEIFInfo::getNumberOfMainImages(v10);
  IIONumber::IIONumber(&v108, v45);
  IIODictionary::setObjectForKeyGroup(a3, v110, @"ImageCount", @"{FileContents}");
  IIONumber::~IIONumber(&v108);
  if (GlobalHEIFInfo::hasHEIFSequence(v10))
  {
    v88 = *MEMORY[0x1E695E4D0];
    IIODictionary::setObjectForKey(a3, *MEMORY[0x1E695E4D0], @"CanAnimate");
  }

  else
  {
    IIODictionary::setObjectForKey(a3, *MEMORY[0x1E695E4C0], @"CanAnimate");
    v88 = *MEMORY[0x1E695E4D0];
  }

  v91 = 0;
  v46 = 0;
  while (2)
  {
    if (v91 < GlobalHEIFInfo::getNumberOfMainImages(v10))
    {
      v47 = GlobalHEIFInfo::getHEIFMainImageAtIndex(v10, v91);
      v108 = 0;
      v109 = 0;
      v110 = 0;
      IIODictionary::IIODictionary(&v108);
      v48 = HEIFMainImage::width(v47);
      v49 = HEIFMainImage::height(v47);
      v50 = *(v47 + 38);
      v51 = HEIFMainImage::getColorSpaceName(v47);
      v52 = v90 && IIODictionary::containsKey(v90, @"kCGImageSourceAddHEIFContainerItemID") && IIODictionary::getBoolForKey(v90, @"kCGImageSourceAddHEIFContainerItemID");
      IIONumber::IIONumber(&v105, v91);
      IIODictionary::setObjectForKey(&v108, v107, @"ImageIndex");
      IIONumber::~IIONumber(&v105);
      if (v48)
      {
        IIONumber::IIONumber(v53, v48);
        IIODictionary::setObjectForKey(&v108, v107, @"Width");
        IIONumber::~IIONumber(&v105);
      }

      if (v49)
      {
        IIONumber::IIONumber(v53, v49);
        IIODictionary::setObjectForKey(&v108, v107, @"Height");
        IIONumber::~IIONumber(&v105);
      }

      if (v50)
      {
        IIONumber::IIONumber(v53, v50);
        IIODictionary::setObjectForKey(&v108, v107, @"Orientation");
        IIONumber::~IIONumber(&v105);
      }

      if (v51)
      {
        IIODictionary::setObjectForKey(&v108, v51, @"NamedColorSpace");
      }

      if (v52)
      {
        FrameCount = GlobalGIFInfo::lastFrameCount(v47);
        IIONumber::IIONumber(&v105, FrameCount);
        IIODictionary::setObjectForKey(&v108, &v105, @"ContainerItemID");
        IIONumber::~IIONumber(&v105);
      }

      SubsampleFactor = IIOImagePlus::getSubsampleFactor(v47);
      switch(SubsampleFactor)
      {
        case 1:
          v56 = @"4:4:4";
          break;
        case 3:
          v56 = @"4:2:2";
          break;
        case 5:
          v56 = @"4:2:0";
          break;
        default:
LABEL_72:
          v105 = 0;
          v106 = 0;
          v107 = 0;
          IIOArray::IIOArray(&v105);
          for (n = 0; n < HEIFMainImage::getNumberOfThumbnailImages(v47); ++n)
          {
            v102 = 0;
            v103 = 0;
            v104 = 0;
            IIODictionary::IIODictionary(&v102);
            HEIFThumbnailImageAtIndex = HEIFMainImage::getHEIFThumbnailImageAtIndex(v47, n);
            v59 = HEIFGroupItem::getGroupType(HEIFThumbnailImageAtIndex);
            v60 = TIFFFieldIsAnonymous(HEIFThumbnailImageAtIndex);
            v61 = IIO_Reader::osType(HEIFThumbnailImageAtIndex);
            v62 = HEIFThumbnailImage::dataLength(HEIFThumbnailImageAtIndex);
            if (v59)
            {
              IIONumber::IIONumber(&v99, v59);
              IIODictionary::setObjectForKey(&v102, v101, @"Width");
              IIONumber::~IIONumber(&v99);
            }

            if (v60)
            {
              IIONumber::IIONumber(&v99, v60);
              IIODictionary::setObjectForKey(&v102, v101, @"Height");
              IIONumber::~IIONumber(&v99);
            }

            if (v61)
            {
              IIONumber::IIONumber(&v99, v61);
              IIODictionary::setObjectForKey(&v102, v101, @"ThumbnailOffset");
              IIONumber::~IIONumber(&v99);
              IIONumber::IIONumber(v63, v62);
              IIODictionary::setObjectForKey(&v102, v101, @"ThumbnailSize");
              IIONumber::~IIONumber(&v99);
            }

            if (v50)
            {
              IIONumber::IIONumber(&v99, v50);
              IIODictionary::setObjectForKey(&v102, v101, @"Orientation");
              IIONumber::~IIONumber(&v99);
            }

            IIOArray::addObject(&v105, v103);
            IIODictionary::~IIODictionary(&v102);
          }

          IIODictionary::setObjectForKey(&v108, v106, @"ThumbnailImages");
          v102 = 0;
          v103 = 0;
          v104 = 0;
          IIOArray::IIOArray(&v102);
          v64 = 0;
LABEL_84:
          if (v64 >= HEIFMainImage::getNumberOfAuxImages(v47))
          {
            v10 = v89;
            if (IIOArray::getCount(&v102))
            {
              IIODictionary::setObjectForKey(&v108, v103, @"AuxiliaryData");
              v46 = 1;
            }

            v99 = 0;
            v100 = 0;
            v101 = 0;
            IIOArray::IIOArray(&v99);
            v81 = HEIFGroupItem::getStereoAggressorCount(v47);
            if (v81)
            {
              IIODictionary::setObjectForKey(&v108, v88, @"FlexRange");
              for (ii = 0; ii != v81; ++ii)
              {
                v96 = 0;
                v97 = 0;
                v98 = 0;
                IIODictionary::IIODictionary(&v96);
                v93 = 0;
                v94 = 0;
                v95 = 0;
                IIODictionary::IIODictionary(&v93);
                HEIFAlternateImageAtIndex = HEIFMainImage::getHEIFAlternateImageAtIndex(v47, ii);
                HEIFAlternateImage::addInfoToProperties(HEIFAlternateImageAtIndex, &v96);
                IIOArray::addObject(&v99, v97);
                HEIFAlternateImage::addAsAuxImageToProperties(HEIFAlternateImageAtIndex, &v93);
                if ((v46 & 1) == 0)
                {
                  IIODictionary::setObjectForKey(&v108, v103, @"AuxiliaryData");
                }

                IIOArray::addObject(&v102, v94);
                IIODictionary::~IIODictionary(&v93);
                IIODictionary::~IIODictionary(&v96);
                v46 = 1;
              }
            }

            if (IIOArray::getCount(&v99))
            {
              IIODictionary::setObjectForKey(&v108, v100, @"DerivationDetails");
            }

            IIOArray::addObject(&v111, v109);
            IIOArray::~IIOArray(&v99);
            IIOArray::~IIOArray(&v102);
            IIOArray::~IIOArray(&v105);
            IIODictionary::~IIODictionary(&v108);
            ++v91;
            continue;
          }

          v99 = 0;
          v100 = 0;
          v101 = 0;
          IIODictionary::IIODictionary(&v99);
          v65 = HEIFMainImage::getHEIFAuxImageAtIndex(v47, v64);
          v66 = HEIFAuxImage::auxiliaryType(v65);
          v67 = v66;
          if (v66 >= 6 && v66 != 99)
          {
LABEL_119:
            IIODictionary::~IIODictionary(&v99);
            ++v64;
            goto LABEL_84;
          }

          v68 = HEIFGroupItem::getGroupType(v65);
          v69 = TIFFFieldIsAnonymous(v65);
          v70 = HEIFGroupItem::getDisparityAdjustment(v65);
          v71 = HEIFAuxImage::auxiliaryPixelFormat(v65);
          if (v68)
          {
            IIONumber::IIONumber(&v96, v68);
            IIODictionary::setObjectForKey(&v99, v98, @"Width");
            IIONumber::~IIONumber(&v96);
          }

          if (v69)
          {
            IIONumber::IIONumber(&v96, v69);
            IIODictionary::setObjectForKey(&v99, v98, @"Height");
            IIONumber::~IIONumber(&v96);
          }

          if (v70)
          {
            IIONumber::IIONumber(&v96, v70);
            IIODictionary::setObjectForKey(&v99, v98, @"Orientation");
            IIONumber::~IIONumber(&v96);
          }

          if (v71)
          {
            IIONumber::IIONumber(&v96, v71);
            IIODictionary::setObjectForKey(&v99, v98, @"PixelFormat");
            IIONumber::~IIONumber(&v96);
          }

          if (v67 <= 3)
          {
            v72 = @"kCGImageAuxiliaryDataTypeDisparity";
            if (v67 != 1)
            {
              v72 = @"kCGImageAuxiliaryDataTypeDepth";
              if (v67 != 2)
              {
                if (v67 != 3)
                {
LABEL_115:
                  _cg_jpeg_mem_term("updateSourceProperties", 1064, "*** ERROR: auxType %d is not handled", v67);
                }

LABEL_118:
                IIOArray::addObject(&v102, v100);
                goto LABEL_119;
              }
            }

LABEL_117:
            IIODictionary::setObjectForKey(&v99, v72, @"AuxiliaryDataType");
            goto LABEL_118;
          }

          if (v67 != 4)
          {
            if (v67 == 5)
            {
              v72 = @"kCGImageAuxiliaryDataTypePortraitEffectsMatte";
              goto LABEL_117;
            }

            if (v67 != 99)
            {
              goto LABEL_115;
            }
          }

          Size = IIOImageWriteSession::getSize(v65);
          if (Size)
          {
            v74 = Size;
          }

          else
          {
            v74 = @"unknown URN";
          }

          v75 = CFStringCompare(v74, *gIIO_kCMPhotoAuxiliaryImageTypeURN_SemanticSkinMatte, 0);
          v72 = @"kCGImageAuxiliaryDataTypeSemanticSegmentationSkinMatte";
          if (v75)
          {
            v76 = CFStringCompare(v74, *gIIO_kCMPhotoAuxiliaryImageTypeURN_SemanticHairMatte, 0);
            v72 = @"kCGImageAuxiliaryDataTypeSemanticSegmentationHairMatte";
            if (v76)
            {
              v77 = CFStringCompare(v74, *gIIO_kCMPhotoAuxiliaryImageTypeURN_SemanticTeethMatte, 0);
              v72 = @"kCGImageAuxiliaryDataTypeSemanticSegmentationTeethMatte";
              if (v77)
              {
                v78 = CFStringCompare(v74, *gIIO_kCMPhotoAuxiliaryImageTypeURN_SemanticGlassesMatte, 0);
                v72 = @"kCGImageAuxiliaryDataTypeSemanticSegmentationGlassesMatte";
                if (v78)
                {
                  v79 = CFStringCompare(v74, *gIIO_kCMPhotoAuxiliaryImageTypeURN_SemanticSkyMatte, 0);
                  v72 = @"kCGImageAuxiliaryDataTypeSemanticSegmentationSkyMatte";
                  if (v79)
                  {
                    if (CFStringCompare(v74, *gIIO_kCMPhotoAuxiliaryImageTypeURN_HDRGainMap, 0))
                    {
                      IIODictionary::setObjectForKey(&v99, v74, @"AuxiliaryDataType");
                    }

                    else
                    {
                      IIODictionary::setObjectForKey(&v99, @"kCGImageAuxiliaryDataTypeHDRGainMap", @"AuxiliaryDataType");
                      v80 = HEIFAuxImage::meteorHeadroomFromMakerNote(v65);
                      if (v80 != 0.0 || (v80 = HEIFAuxImage::meteorHeadroomFromProperties(v65), v80 != 0.0))
                      {
                        IIONumber::IIONumber(&v96, v80);
                        IIODictionary::setObjectForKey(&v99, v98, @"HDRHeadroom");
                        IIONumber::~IIONumber(&v96);
                      }
                    }

                    goto LABEL_118;
                  }
                }
              }
            }
          }

          goto LABEL_117;
      }

      IIODictionary::setObjectForKey(&v108, v56, @"ChromaSubsampling");
      goto LABEL_72;
    }

    break;
  }

  IIODictionary::setObjectForKeyGroup(a3, v112, @"Images", @"{FileContents}");
  if (GlobalHEIFInfo::getNumberOfMainImages(v10) >= 2)
  {
    PrimaryImageIndex = GlobalHEIFInfo::getPrimaryImageIndex(v10);
    IIONumber::IIONumber(&v108, PrimaryImageIndex);
    IIODictionary::setObjectForKey(a3, v110, @"PrimaryImage");
    IIONumber::~IIONumber(&v108);
  }

  IIOArray::~IIOArray(&v111);
  return 0;
}

void sub_1860305D4(_Unwind_Exception *a1)
{
  IIONumber::~IIONumber((v1 - 152));
  IIODictionary::~IIODictionary((v1 - 128));
  _Unwind_Resume(a1);
}

HEIFMainImage *IIO_Reader_HEIF::initThumbnail(CFStringRef **a1, uint64_t a2, unsigned int a3, unint64_t a4)
{
  IIO_LoadHEIFSymbols();
  Session = CGImagePluginGetSession(a2);
  Source = CGImageSourceGetSource(Session);
  v10 = IIOImageReadSession::globalInfoForType(Source, 1212500294);
  if (!v10)
  {
    operator new();
  }

  v11 = ((*a1)[34])(a1, v10, Source, 0);
  if (v11)
  {
    v13 = v11;
    LogError("initThumbnail", 1192, "*** ERROR: extractImageInfo failed: %d\n", v11);
  }

  else
  {
    HEIFMainImageAtIndex = GlobalHEIFInfo::getHEIFMainImageAtIndex(v10, a3);
    v13 = HEIFMainImageAtIndex;
    if (HEIFMainImageAtIndex)
    {
      if (HEIFMainImage::width(HEIFMainImageAtIndex) < a4 && HEIFMainImage::height(v13) < a4)
      {
        v14 = HEIFMainImage::width(v13);
        v15 = HEIFMainImage::height(v13);
        LogError("initThumbnail", 1199, "*** ERROR: kCGImageSourceThumbnailMaxPixelSize: %d is larger than image-dimension: %dx%d\n", a4, v14, v15);
        v16 = HEIFMainImage::width(v13);
        if (v16 <= HEIFMainImage::height(v13))
        {
          HEIFMainImage::height(v13);
        }

        else
        {
          HEIFMainImage::width(v13);
        }
      }

      HEIFThumbnailImageAtIndex = HEIFMainImage::getHEIFThumbnailImageAtIndex(v13, 0);
      if (HEIFThumbnailImageAtIndex)
      {
        v18 = HEIFThumbnailImageAtIndex;
        v13 = HEIFThumbnailImage::dataLength(HEIFThumbnailImageAtIndex);
        IIO_Reader::osType(v18);
        GroupType = HEIFGroupItem::getGroupType(v18);
        if (GroupType <= TIFFFieldIsAnonymous(v18))
        {
          TIFFFieldIsAnonymous(v18);
        }

        else
        {
          HEIFGroupItem::getGroupType(v18);
        }

        if (v13)
        {
          CFStringCompare(*a1[1], @"public.jpeg", 0);
          operator new();
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return v13;
}

void sub_186030BD4(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x186030B8CLL);
}

void IIO_Reader_HEIF::CreateGlobalHEIFInfoIfNeeded(IIO_Reader_HEIF *this, IIOImageReadSession *a2, int a3)
{
  v4 = a2;
  ReaderHandler = IIO_ReaderHandler::GetReaderHandler(this);
  v7 = IIO_ReaderHandler::readerForUTType(ReaderHandler, @"public.heic");
  if (v7)
  {
    v8 = v7;
    v14 = 0;
    memset(v13, 0, sizeof(v13));
    IIODictionary::IIODictionary(v13);
    IIONumber::IIONumber(v11, v4);
    IIODictionary::setObjectForKey(v13, value, @"JPEGOffset");
    IIONumber::~IIONumber(v11);
    IIONumber::IIONumber(v11, a3);
    IIODictionary::setObjectForKey(v13, value, @"JPEGLength");
    IIONumber::~IIONumber(v11);
    v9 = IIOImageReadSession::releaseGlobalInfoPtr(this);
    if (v9)
    {
      _cg_jpeg_mem_term("CreateGlobalHEIFInfoIfNeeded", 1373, "*** ERROR: releaseGlobalInfoPtr: err: %d\n", v9);
    }

    v10 = (*(*v8 + 32))(v8, this, v13, 0, &v14);
    if (v10)
    {
      _cg_jpeg_mem_term("CreateGlobalHEIFInfoIfNeeded", 1376, "*** ERROR: CreateGlobalHEIFInfoIfNeeded: err: %d\n", v10);
    }

    IIODictionary::~IIODictionary(v13);
  }
}

void sub_186030DA4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  IIONumber::~IIONumber(va);
  IIODictionary::~IIODictionary(va1);
  _Unwind_Resume(a1);
}

void IIO_Reader_PDF::createReadPlugin()
{
  operator new();
}

{
  operator new();
}

uint64_t IIO_Reader_PDF::testHeader(int a1, uint64_t a2, unint64_t a3, CFStringRef theString1)
{
  if (theString1 && CFStringCompare(theString1, @"com.adobe.pdf", 0) == kCFCompareEqualTo)
  {
    v6 = 1024;
    if (a3 < 0x400)
    {
      v6 = a3;
    }

    if (a3 < 7)
    {
      return 0;
    }
  }

  else
  {
    v6 = 10;
  }

  v7 = (v6 - 6);
  for (i = (a2 + 2); *(i - 2) != 37 || *(i - 1) != 80 || *i != 68 || i[1] != 70 || i[2] != 45 || i[3] - 49 >= 2; ++i)
  {
    if (!--v7)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t IIO_Reader_PDF::updateSourceProperties(IIO_Reader_PDF *this, IIOImageReadSession *a2, IIODictionary *a3, IIODictionary *a4, IIODictionary *a5, CGImageSourceStatus *a6)
{
  *a6 = kCGImageStatusIncomplete;
  if (!IIOImageReadSession::isFinal(a2))
  {
    return 4294967246;
  }

  v51 = 0;
  memset(v50, 0, sizeof(v50));
  IIOScanner::IIOScanner(v50, a2);
  v49 = 0;
  v8 = CreateSessionPDFRef(v50, &v49);
  v9 = v8;
  if (v8)
  {
    IsEncrypted = CGPDFDocumentIsEncrypted(v8);
    v11 = *MEMORY[0x1E695E4D0];
    v12 = *MEMORY[0x1E695E4C0];
    if (IsEncrypted)
    {
      v13 = *MEMORY[0x1E695E4D0];
    }

    else
    {
      v13 = *MEMORY[0x1E695E4C0];
    }

    IIODictionary::setObjectForKeyGroup(a3, v13, @"IsEncrypted", @"{PDF}");
    if (CGPDFDocumentIsUnlocked(v9))
    {
      v14 = v11;
    }

    else
    {
      v14 = v12;
    }

    IIODictionary::setObjectForKeyGroup(a3, v14, @"IsUnlocked", @"{PDF}");
    AccessPermissions = CGPDFDocumentGetAccessPermissions(v9);
    if (AccessPermissions)
    {
      v16 = v11;
    }

    else
    {
      v16 = v12;
    }

    IIODictionary::setObjectForKeyGroup(a3, v16, @"AllowsLowQualityPrinting", @"{PDF}");
    if ((AccessPermissions & 2) != 0)
    {
      v17 = v11;
    }

    else
    {
      v17 = v12;
    }

    IIODictionary::setObjectForKeyGroup(a3, v17, @"AllowsHighQualityPrinting", @"{PDF}");
    if ((AccessPermissions & 4) != 0)
    {
      v18 = v11;
    }

    else
    {
      v18 = v12;
    }

    IIODictionary::setObjectForKeyGroup(a3, v18, @"AllowsDocumentChanges", @"{PDF}");
    if ((AccessPermissions & 8) != 0)
    {
      v19 = v11;
    }

    else
    {
      v19 = v12;
    }

    IIODictionary::setObjectForKeyGroup(a3, v19, @"AllowsDocumentAssembly", @"{PDF}");
    if ((AccessPermissions & 0x10) != 0)
    {
      v20 = v11;
    }

    else
    {
      v20 = v12;
    }

    IIODictionary::setObjectForKeyGroup(a3, v20, @"AllowsContentCopying", @"{PDF}");
    if ((AccessPermissions & 0x20) != 0)
    {
      v21 = v11;
    }

    else
    {
      v21 = v12;
    }

    IIODictionary::setObjectForKeyGroup(a3, v21, @"AllowsContentAccessibility", @"{PDF}");
    if ((AccessPermissions & 0x40) != 0)
    {
      v22 = v11;
    }

    else
    {
      v22 = v12;
    }

    IIODictionary::setObjectForKeyGroup(a3, v22, @"AllowsCommenting", @"{PDF}");
    if (AccessPermissions < 0)
    {
      v23 = v11;
    }

    else
    {
      v23 = v12;
    }

    IIODictionary::setObjectForKeyGroup(a3, v23, @"AllowsFormFieldEntry", @"{PDF}");
    v24 = CGPDFDocumentCopyInfoDictionary();
    if (v24)
    {
      v25 = CFLocaleCopyCurrent();
      v26 = *MEMORY[0x1E695E480];
      v27 = CFDateFormatterCreate(*MEMORY[0x1E695E480], v25, kCFDateFormatterNoStyle, kCFDateFormatterNoStyle);
      CFDateFormatterSetFormat(v27, @"yyyy:MM:dd HH:mm:ss");
      memset(v48, 0, sizeof(v48));
      IIODictionary::IIODictionary(v48, v24);
      v28 = *MEMORY[0x1E695F3F0];
      if (IIODictionary::containsKey(v48, *MEMORY[0x1E695F3F0]))
      {
        ObjectForKey = IIODictionary::getObjectForKey(v48, v28);
        StringWithDate = CFDateFormatterCreateStringWithDate(v26, v27, ObjectForKey);
        IIODictionary::setObjectForKeyGroup(a3, StringWithDate, @"ModificationDate", @"{PDF}");
        CFRelease(StringWithDate);
      }

      v31 = *MEMORY[0x1E695F3D8];
      if (IIODictionary::containsKey(v48, *MEMORY[0x1E695F3D8]))
      {
        v32 = IIODictionary::getObjectForKey(v48, v31);
        v33 = CFDateFormatterCreateStringWithDate(v26, v27, v32);
        IIODictionary::setObjectForKeyGroup(a3, v33, @"CreationDate", @"{PDF}");
        CFRelease(v33);
      }

      CFRelease(v25);
      CFRelease(v27);
      v34 = *MEMORY[0x1E695F3F8];
      if (IIODictionary::containsKey(v48, *MEMORY[0x1E695F3F8]))
      {
        v35 = IIODictionary::getObjectForKey(v48, v34);
        IIODictionary::setObjectForKeyGroup(a3, v35, @"Producer", @"{PDF}");
      }

      v36 = *MEMORY[0x1E695F3E0];
      if (IIODictionary::containsKey(v48, *MEMORY[0x1E695F3E0]))
      {
        v37 = IIODictionary::getObjectForKey(v48, v36);
        IIODictionary::setObjectForKeyGroup(a3, v37, @"Creator", @"{PDF}");
      }

      v38 = *MEMORY[0x1E695F3E8];
      if (IIODictionary::containsKey(v48, *MEMORY[0x1E695F3E8]))
      {
        v39 = IIODictionary::getObjectForKey(v48, v38);
        IIODictionary::setObjectForKeyGroup(a3, v39, @"Keywords", @"{PDF}");
      }

      v40 = *MEMORY[0x1E695F400];
      if (IIODictionary::containsKey(v48, *MEMORY[0x1E695F400]))
      {
        v41 = IIODictionary::getObjectForKey(v48, v40);
        IIODictionary::setObjectForKeyGroup(a3, v41, @"Subject", @"{PDF}");
      }

      v42 = *MEMORY[0x1E695F3D0];
      if (IIODictionary::containsKey(v48, *MEMORY[0x1E695F3D0]))
      {
        v43 = IIODictionary::getObjectForKey(v48, v42);
        IIODictionary::setObjectForKeyGroup(a3, v43, @"Author", @"{PDF}");
      }

      v44 = *MEMORY[0x1E695F408];
      if (IIODictionary::containsKey(v48, *MEMORY[0x1E695F408]))
      {
        v45 = IIODictionary::getObjectForKey(v48, v44);
        IIODictionary::setObjectForKeyGroup(a3, v45, @"Title", @"{PDF}");
      }

      CFRelease(v24);
      IIODictionary::~IIODictionary(v48);
    }

    CGPDFDocumentRelease(v9);
    v46 = 0;
  }

  else
  {
    if (v49)
    {
      IIODictionary::setObjectForKeyGroup(a3, *MEMORY[0x1E695E4D0], @"IsLocked", @"{PDF}");
    }

    v46 = 4294967246;
  }

  IIOScanner::~IIOScanner(v50);
  return v46;
}

void sub_1860314D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  IIODictionary::~IIODictionary(&a9);
  IIOScanner::~IIOScanner(&a13);
  _Unwind_Resume(a1);
}

uint64_t IIO_Reader_PDF::getImageCount(IIO_Reader_PDF *this, IIOImageReadSession *a2, IIODictionary *a3, CGImageSourceStatus *a4, unsigned int *a5)
{
  *a4 = kCGImageStatusIncomplete;
  if (!IIOImageReadSession::isFinal(a2))
  {
    return 4294967246;
  }

  v13 = 0;
  memset(v12, 0, sizeof(v12));
  IIOScanner::IIOScanner(v12, a2);
  SessionPDFRef = CreateSessionPDFRef(v12, 0);
  v9 = SessionPDFRef;
  if (SessionPDFRef)
  {
    if (a5)
    {
      *a5 = CGPDFDocumentGetNumberOfPages(SessionPDFRef);
    }

    CGPDFDocumentRelease(v9);
    v10 = 0;
    *a4 = kCGImageStatusComplete;
  }

  else
  {
    v10 = 4294967246;
  }

  IIOScanner::~IIOScanner(v12);
  return v10;
}

BOOL IIO_Reader_PDF::compareOptions(IIO_Reader_PDF *this, const __CFDictionary *a2, const __CFDictionary *a3)
{
  memset(v10, 0, sizeof(v10));
  IIODictionary::IIODictionary(v10, a2);
  memset(v9, 0, sizeof(v9));
  IIODictionary::IIODictionary(v9, a3);
  FloatForKey = 0.0;
  if (IIODictionary::containsKey(v10, @"kCGImageSourceRasterizationDPI"))
  {
    FloatForKey = IIODictionary::getFloatForKey(v10, @"kCGImageSourceRasterizationDPI");
  }

  v5 = IIODictionary::containsKey(v9, @"kCGImageSourceRasterizationDPI");
  v6 = 0.0;
  if (v5)
  {
    v6 = IIODictionary::getFloatForKey(v9, @"kCGImageSourceRasterizationDPI");
  }

  v7 = FloatForKey == v6;
  IIODictionary::~IIODictionary(v9);
  IIODictionary::~IIODictionary(v10);
  return v7;
}

void sub_1860316B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

__CFString *_CGImageMetadataCopyFormattingDescription(CFDictionaryRef *cf, const __CFDictionary *a2)
{
  Mutable = 0;
  if (cf && *MEMORY[0x1E695E738] != cf)
  {
    v4 = CFGetTypeID(cf);
    if (qword_1ED569DD0 != -1)
    {
      CGImageMetadataGetTypeID_cold_1();
    }

    if (v4 == _MergedGlobals_1 && cf[3])
    {
      v5 = *MEMORY[0x1E695E480];
      Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
      CFStringAppend(Mutable, @"(\n");
      Count = CFDictionaryGetCount(cf[3]);
      v13 = malloc_type_calloc(8uLL, Count, 0x2004093837F09uLL);
      v14 = malloc_type_calloc(8uLL, Count, 0x2004093837F09uLL);
      CFDictionaryGetKeysAndValues(cf[3], v13, v14);
      if (Count >= 1)
      {
        v7 = v14;
        do
        {
          v8 = CFStringCreateWithFormat(v5, 0, @"%@", *v7);
          if (v8)
          {
            v9 = v8;
            MutableCopy = CFStringCreateMutableCopy(v5, 0, v8);
            if (MutableCopy)
            {
              v11 = MutableCopy;
              v15.length = CFStringGetLength(MutableCopy);
              v15.location = 0;
              CFStringFindAndReplace(v11, @"\n", @"\n        ", v15, 0);
              CFStringAppendFormat(Mutable, 0, @"    %@\n", v11);
              CFRelease(v11);
            }

            CFRelease(v9);
          }

          ++v7;
          --Count;
        }

        while (Count);
      }

      CFStringAppend(Mutable, @"\n"));
      if (v13)
      {
        free(v13);
      }

      if (v14)
      {
        free(v14);
      }
    }

    else
    {
      return 0;
    }
  }

  return Mutable;
}

CFStringRef _CGImageMetadataCopyDescription(CFDictionaryRef *cf)
{
  v1 = 0;
  if (!cf || *MEMORY[0x1E695E738] == cf)
  {
    return v1;
  }

  v3 = CFGetTypeID(cf);
  if (qword_1ED569DD0 != -1)
  {
    CGImageMetadataGetTypeID_cold_1();
  }

  if (v3 != _MergedGlobals_1)
  {
    return 0;
  }

  if (IIO_OSAppleInternalBuild())
  {
    memset(&v41, 0, sizeof(v41));
    if (cf[3])
    {
      std::to_string(&__dst, cf);
      v4 = std::string::insert(&__dst, 0, "<CGImageMetadata: ");
      v5 = *&v4->__r_.__value_.__l.__data_;
      v40.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
      *&v40.__r_.__value_.__l.__data_ = v5;
      v4->__r_.__value_.__l.__size_ = 0;
      v4->__r_.__value_.__r.__words[2] = 0;
      v4->__r_.__value_.__r.__words[0] = 0;
      v6 = std::string::append(&v40, "> (\n");
      v7 = *&v6->__r_.__value_.__l.__data_;
      __p[0].__col_ = v6->__r_.__value_.__r.__words[2];
      *&__p[0].__loc_.__locale_ = v7;
      v6->__r_.__value_.__l.__size_ = 0;
      v6->__r_.__value_.__r.__words[2] = 0;
      v6->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(__p[0].__col_) >= 0)
      {
        locale = __p;
      }

      else
      {
        locale = __p[0].__loc_.__locale_;
      }

      if (SHIBYTE(__p[0].__col_) >= 0)
      {
        col_high = HIBYTE(__p[0].__col_);
      }

      else
      {
        col_high = __p[0].__ct_;
      }

      std::string::append(&v41, locale, col_high);
      if (SHIBYTE(__p[0].__col_) < 0)
      {
        operator delete(__p[0].__loc_.__locale_);
      }

      if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v40.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      Count = CFDictionaryGetCount(cf[3]);
      std::to_string(&v37, Count);
      v11 = std::string::insert(&v37, 0, "    ");
      v12 = *&v11->__r_.__value_.__l.__data_;
      v38.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
      *&v38.__r_.__value_.__l.__data_ = v12;
      v11->__r_.__value_.__l.__size_ = 0;
      v11->__r_.__value_.__r.__words[2] = 0;
      v11->__r_.__value_.__r.__words[0] = 0;
      v13 = std::string::append(&v38, " tag");
      v14 = *&v13->__r_.__value_.__l.__data_;
      __dst.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
      *&__dst.__r_.__value_.__l.__data_ = v14;
      v13->__r_.__value_.__l.__size_ = 0;
      v13->__r_.__value_.__r.__words[2] = 0;
      v13->__r_.__value_.__r.__words[0] = 0;
      if (Count == 1)
      {
        v15 = "";
      }

      else
      {
        v15 = "s";
      }

      v16 = std::string::append(&__dst, v15);
      v17 = *&v16->__r_.__value_.__l.__data_;
      v40.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
      *&v40.__r_.__value_.__l.__data_ = v17;
      v16->__r_.__value_.__l.__size_ = 0;
      v16->__r_.__value_.__r.__words[2] = 0;
      v16->__r_.__value_.__r.__words[0] = 0;
      v18 = std::string::append(&v40, "\n");
      v19 = *&v18->__r_.__value_.__l.__data_;
      __p[0].__col_ = v18->__r_.__value_.__r.__words[2];
      *&__p[0].__loc_.__locale_ = v19;
      v18->__r_.__value_.__l.__size_ = 0;
      v18->__r_.__value_.__r.__words[2] = 0;
      v18->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(__p[0].__col_) >= 0)
      {
        v20 = __p;
      }

      else
      {
        v20 = __p[0].__loc_.__locale_;
      }

      if (SHIBYTE(__p[0].__col_) >= 0)
      {
        ct = HIBYTE(__p[0].__col_);
      }

      else
      {
        ct = __p[0].__ct_;
      }

      std::string::append(&v41, v20, ct);
      if (SHIBYTE(__p[0].__col_) < 0)
      {
        operator delete(__p[0].__loc_.__locale_);
      }

      if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v40.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v38.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v37.__r_.__value_.__l.__data_);
      }

      v22 = malloc_type_calloc(8uLL, Count, 0x2004093837F09uLL);
      CFDictionaryGetKeysAndValues(cf[3], v22, 0);
      __p[0].__loc_.__locale_ = compareCGImageMetadataTagKey;
      v23 = 126 - 2 * __clz(Count);
      if (Count)
      {
        v24 = v23;
      }

      else
      {
        v24 = 0;
      }

      std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(IIOTag *,IIOTag *),IIOTag **,false>(v22, &v22[Count], __p, v24, 1);
      if (Count >= 1)
      {
        v25 = *MEMORY[0x1E695E480];
        v26 = v22;
        do
        {
          Value = CFDictionaryGetValue(cf[3], *v26);
          v28 = CFStringCreateWithFormat(v25, 0, @"%@", Value);
          if (v28)
          {
            memset(&v40, 0, sizeof(v40));
            v29 = IIOString::IIOString(&v40, v28);
            memset(&__dst, 0, sizeof(__dst));
            v30 = IIOString::utf8String(v29);
            v31 = strlen(v30);
            if (v31 < 0x7FFFFFFFFFFFFFF8)
            {
              v32 = v31;
              if (v31 < 0x17)
              {
                *(&__dst.__r_.__value_.__s + 23) = v31;
                if (v31)
                {
                  memmove(&__dst, v30, v31);
                }

                __dst.__r_.__value_.__s.__data_[v32] = 0;
                std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:fe200100](__p, "[\\\\]*<CGImageMetadataTag 0x[0-9a-f]*> ", 0);
              }

              operator new();
            }

            std::string::__throw_length_error[abi:fe200100]();
          }

          ++v26;
          --Count;
        }

        while (Count);
      }

      std::string::append(&v41, ")\n");
      if (v22)
      {
        free(v22);
      }
    }

    if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v33 = &v41;
    }

    else
    {
      v33 = v41.__r_.__value_.__r.__words[0];
    }

    if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v41.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v41.__r_.__value_.__l.__size_;
    }

    v1 = CFStringCreateWithBytes(*MEMORY[0x1E695E480], v33, size, 0x8000100u, 0);
    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v41.__r_.__value_.__l.__data_);
    }

    return v1;
  }

  return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"<CGImageMetadata %p> %@", cf, cf);
}

void sub_186031FD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (*(v43 - 121) < 0)
  {
    operator delete(*(v43 - 144));
  }

  if (a43 < 0)
  {
    operator delete(a38);
  }

  if (a36 < 0)
  {
    operator delete(a31);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (*(v43 - 89) < 0)
  {
    operator delete(*(v43 - 112));
  }

  _Unwind_Resume(exception_object);
}

uint64_t CGImageMetadataCreateImmutableCopy(uint64_t a1)
{
  v2 = *MEMORY[0x1E695E480];
  if (qword_1ED569DD0 != -1)
  {
    CGImageMetadataGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  v4 = Instance;
  if (Instance)
  {
    *(Instance + 16) = 0;
    MutableCopy = CFDictionaryCreateMutableCopy(v2, 0, *(a1 + 24));
    *(v4 + 24) = MutableCopy;
    CFDictionaryApplyFunction(MutableCopy, makeTagsImmutableDictionaryApplier, 0);
    v6 = *(a1 + 40);
    if (v6)
    {
      *(v4 + 40) = CFDictionaryCreateMutableCopy(v2, 0, v6);
    }

    v7 = *(a1 + 32);
    if (v7)
    {
      *(v4 + 32) = CFDictionaryCreateMutableCopy(v2, 0, v7);
    }

    v8 = *(a1 + 48);
    if (v8)
    {
      *(v4 + 48) = CFDictionaryCreateMutableCopy(v2, 0, v8);
    }

    v9 = *(a1 + 56);
    if (v9)
    {
      *(v4 + 56) = CFStringCreateCopy(v2, v9);
    }

    v10 = *(a1 + 64);
    if (v10)
    {
      *(v4 + 64) = CFStringCreateCopy(v2, v10);
    }

    initRecursivePthread_mutex((v4 + 72));
    pthread_mutex_init((v4 + 136), 0);
    initRecursivePthread_mutex((v4 + 208));
  }

  return v4;
}

void makeTagsImmutableDictionaryApplier(const void *a1, CFTypeRef cf, void *a3)
{
  if (cf)
  {
    v4 = CFGetTypeID(cf);
    if (v4 == CGImageMetadataTagGetTypeID())
    {
      Source = CGImageSourceGetSource(cf);
      *(Source + 64) = 0;
      v6 = *(Source + 48);
      if (v6)
      {
        v7 = CFGetTypeID(v6);
        TypeID = CFArrayGetTypeID();
        v9 = *(Source + 48);
        if (v7 == TypeID)
        {
          v10.length = CFArrayGetCount(*(Source + 48));
          v10.location = 0;

          CFArrayApplyFunction(v9, v10, makeTagsImmutableArrayApplier, 0);
        }

        else if (v9)
        {
          v11 = CFGetTypeID(*(Source + 48));
          if (v11 == CFDictionaryGetTypeID())
          {
            v12 = *(Source + 48);

            CFDictionaryApplyFunction(v12, makeTagsImmutableDictionaryApplier, 0);
          }
        }
      }
    }
  }
}

CGImageMetadataTagRef CGImageMetadataCopyTagWithPath(CGImageMetadataRef metadata, CGImageMetadataTagRef parent, CFStringRef path)
{
  IIOInitDebugFlags();
  if ((~gIIODebugFlags & 0x3000) == 0)
  {
    IIOString::IIOString(v11, path);
    v6 = IIOString::utf8String(v11);
    ImageIODebugOptions(3, "A", "CGImageMetadataCopyTagWithPath", 0, v6, -1, 0);
    IIOString::~IIOString(v11);
  }

  if (!metadata)
  {
    goto LABEL_9;
  }

  v7 = CFGetTypeID(metadata);
  if (qword_1ED569DD0 != -1)
  {
    CGImageMetadataCopyTagWithPath_cold_1();
  }

  if (v7 == _MergedGlobals_1)
  {
    pthread_mutex_lock((metadata + 72));
    TagWithPath = CGImageMetadataGetTagWithPath(metadata, parent, path);
    if (TagWithPath)
    {
      v9 = CGImageMetadataTagCopy(TagWithPath);
    }

    else
    {
      v9 = 0;
    }

    pthread_mutex_unlock((metadata + 72));
  }

  else
  {
LABEL_9:
    LogMetadata("CGImageMetadataCopyTagWithPath", 576, "metadata is NULL or not a CGImageMetadataRef");
    return 0;
  }

  return v9;
}

void sub_1860324BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IIOString::~IIOString(va);
  _Unwind_Resume(a1);
}

uint64_t __CGImageMetadataGetTagWithPath_block_invoke(uint64_t result, CFTypeRef cf, uint64_t a3, _BYTE *a4)
{
  if (cf)
  {
    v6 = result;
    v7 = CFGetTypeID(cf);
    result = CGImageMetadataTagGetTypeID();
    if (v7 == result)
    {
      result = CGImageSourceGetSource(cf);
      v8 = *(result + 56);
      if (v8)
      {
        result = CFArrayGetCount(*(result + 56));
        if (result >= 1)
        {
          v9 = result;
          v10 = 0;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v8, v10);
            DefaultString = CGImageMetadataGetDefaultString(ValueAtIndex);
            result = CFStringCompare(DefaultString, *(v6 + 48), 0);
            if (!result)
            {
              break;
            }

            if (v9 == ++v10)
            {
              goto LABEL_8;
            }
          }

          *(*(*(v6 + 32) + 8) + 24) = cf;
          *(*(*(v6 + 40) + 8) + 24) = 1;
        }

LABEL_8:
        if (*(*(*(v6 + 40) + 8) + 24) == 1)
        {
          *a4 = 1;
        }
      }
    }
  }

  return result;
}

uint64_t __CGImageMetadataGetTagWithPath_block_invoke_2(uint64_t result, CFTypeRef cf)
{
  if (cf)
  {
    v3 = result;
    v4 = CFGetTypeID(cf);
    result = CGImageMetadataTagGetTypeID();
    if (v4 == result)
    {
      Source = CGImageSourceGetSource(cf);
      result = CFStringCompare(*(Source + 24), *(v3 + 40), 0);
      if (!result)
      {
        result = CFStringCompare(*(Source + 32), *(v3 + 48), 0);
        if (!result)
        {
          *(*(*(v3 + 32) + 8) + 24) = cf;
        }
      }
    }
  }

  return result;
}

CFStringRef CGImageMetadataCopyStringValueWithPath(CGImageMetadataRef metadata, CGImageMetadataTagRef parent, CFStringRef path)
{
  IIOInitDebugFlags();
  if ((~gIIODebugFlags & 0x3000) == 0)
  {
    ImageIODebugOptions(3, "A", "CGImageMetadataCopyStringValueWithPath", 0, 0, -1, 0);
  }

  if (!metadata)
  {
    return 0;
  }

  v6 = CFGetTypeID(metadata);
  if (qword_1ED569DD0 != -1)
  {
    CGImageMetadataGetTypeID_cold_1();
  }

  if (v6 != _MergedGlobals_1)
  {
    return 0;
  }

  pthread_mutex_lock((metadata + 72));
  TagWithPath = CGImageMetadataGetTagWithPath(metadata, parent, path);
  if (TagWithPath && (DefaultString = CGImageMetadataGetDefaultString(TagWithPath)) != 0)
  {
    Copy = CFStringCreateCopy(*MEMORY[0x1E695E480], DefaultString);
  }

  else
  {
    Copy = 0;
  }

  pthread_mutex_unlock((metadata + 72));
  return Copy;
}

uint64_t __CGImageMetadataSetValueWithPath_block_invoke(uint64_t result, CFTypeRef cf, uint64_t a3, _BYTE *a4)
{
  if (cf)
  {
    v6 = result;
    v7 = CFGetTypeID(cf);
    result = CGImageMetadataTagGetTypeID();
    if (v7 == result)
    {
      Source = CGImageSourceGetSource(cf);
      result = CFStringCompare(*(Source + 24), *(v6 + 48), 0);
      if (!result)
      {
        result = CFStringCompare(*(Source + 32), *(v6 + 56), 0);
        if (!result)
        {
          result = CFRetain(cf);
          *(*(*(v6 + 32) + 8) + 24) = result;
          *(*(*(v6 + 40) + 8) + 24) = 1;
          *a4 = 1;
        }
      }
    }
  }

  return result;
}

void __CGImageMetadataRemoveTagWithPath_block_invoke(int a1, CFTypeRef cf, uint64_t a3)
{
  if (cf)
  {
    v5 = CFGetTypeID(cf);
    if (v5 == CGImageMetadataTagGetTypeID())
    {
      v6 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"[%ld]", a3);
      if (v6)
      {
        v7 = v6;
        CGImageMetadataTagSetName(cf, v6);

        CFRelease(v7);
      }
    }
  }
}

uint64_t __CGImageMetadataRemoveTagWithPath_block_invoke_2(uint64_t result, CFTypeRef cf, uint64_t a3, _BYTE *a4)
{
  if (cf)
  {
    v7 = result;
    v8 = CFGetTypeID(cf);
    result = CGImageMetadataTagGetTypeID();
    if (v8 == result)
    {
      result = *(CGImageSourceGetSource(cf) + 56);
      if (result)
      {
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 0x40000000;
        v11[2] = __CGImageMetadataRemoveTagWithPath_block_invoke_3;
        v11[3] = &unk_1E6F098B8;
        v9 = *(v7 + 64);
        v14 = a3;
        v15 = v9;
        v10 = *(v7 + 48);
        v12 = *(v7 + 32);
        v13 = v10;
        result = IIOArrayEnumerateUsingBlock(result, v11);
        if (*(*(*(v7 + 40) + 8) + 24) == 1)
        {
          *a4 = 1;
        }
      }
    }
  }

  return result;
}

void __CGImageMetadataRemoveTagWithPath_block_invoke_4(uint64_t a1, CFTypeRef cf, CFIndex a3)
{
  if (cf)
  {
    v6 = CFGetTypeID(cf);
    if (v6 == CGImageMetadataTagGetTypeID())
    {
      Source = CGImageSourceGetSource(cf);
      if (CFStringCompare(*(Source + 24), *(a1 + 40), 0) == kCFCompareEqualTo && CFStringCompare(*(Source + 32), *(a1 + 48), 0) == kCFCompareEqualTo)
      {
        CFArrayRemoveValueAtIndex(*(a1 + 56), a3);
        *(*(*(a1 + 32) + 8) + 24) = 1;
      }
    }
  }
}

CGImageMetadataTagRef CGImageMetadataCopyTagMatchingImageProperty(CGImageMetadataRef metadata, CFStringRef dictionaryName, CFStringRef propertyName)
{
  IIOInitDebugFlags();
  if ((~gIIODebugFlags & 0x3000) == 0)
  {
    ImageIODebugOptions(3, "A", "CGImageMetadataCopyTagMatchingImageProperty", 0, 0, -1, 0);
  }

  v12 = 0;
  v13 = &v12;
  v14 = 0x2000000000;
  v15 = 0;
  if (dictionaryName)
  {
    v6 = CFGetTypeID(dictionaryName);
    TypeID = CFStringGetTypeID();
    if (propertyName)
    {
      if (v6 == TypeID)
      {
        v8 = CFGetTypeID(propertyName);
        if (v8 == CFStringGetTypeID())
        {
          v11[0] = MEMORY[0x1E69E9820];
          v11[1] = 0x40000000;
          v11[2] = __CGImageMetadataCopyTagMatchingImageProperty_block_invoke;
          v11[3] = &unk_1E6F09930;
          v11[6] = propertyName;
          v11[7] = metadata;
          v11[4] = &v12;
          v11[5] = dictionaryName;
          XMPMappingIterateUsingBlock(v11);
        }
      }
    }
  }

  v9 = v13[3];
  _Block_object_dispose(&v12, 8);
  return v9;
}

void sub_186032B60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __CGImageMetadataCopyTagMatchingImageProperty_block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = CFStringCompare(*(a1 + 40), **a2, 0);
  if (!result)
  {
    result = CFStringCompare(*(a1 + 48), **(a2 + 8), 0);
    if (!result)
    {
      pthread_mutex_lock((*(a1 + 56) + 72));
      TopLevelTag = CGImageMetadataGetTopLevelTag(*(a1 + 56), **(a2 + 24), **(a2 + 32));
      if (TopLevelTag)
      {
        *(*(*(a1 + 32) + 8) + 24) = CGImageMetadataTagCopy(TopLevelTag);
      }

      result = pthread_mutex_unlock((*(a1 + 56) + 72));
      *a3 = 1;
    }
  }

  return result;
}

BOOL CGImageMetadataSetValueMatchingImageProperty(CGMutableImageMetadataRef metadata, CFStringRef dictionaryName, CFStringRef propertyName, CFTypeRef value)
{
  IIOInitDebugFlags();
  if ((~gIIODebugFlags & 0x3000) == 0)
  {
    ImageIODebugOptions(3, "A", "CGImageMetadataSetValueMatchingImageProperty", 0, 0, -1, 0);
  }

  v14 = 0;
  v15 = &v14;
  v16 = 0x2000000000;
  v17 = 0;
  if (dictionaryName)
  {
    v8 = CFGetTypeID(dictionaryName);
    TypeID = CFStringGetTypeID();
    if (propertyName)
    {
      if (v8 == TypeID)
      {
        v10 = CFGetTypeID(propertyName);
        if (v10 == CFStringGetTypeID())
        {
          v13[0] = MEMORY[0x1E69E9820];
          v13[1] = 0x40000000;
          v13[2] = __CGImageMetadataSetValueMatchingImageProperty_block_invoke;
          v13[3] = &unk_1E6F09980;
          v13[4] = &v14;
          v13[5] = dictionaryName;
          v13[6] = propertyName;
          v13[7] = metadata;
          v13[8] = value;
          XMPMappingIterateUsingBlock(v13);
        }
      }
    }
  }

  v11 = *(v15 + 24);
  _Block_object_dispose(&v14, 8);
  return v11;
}

void sub_186032D6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __CGImageMetadataSetValueMatchingImageProperty_block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (CFStringCompare(*(a1 + 40), **a2, 0) == kCFCompareEqualTo && CFStringCompare(*(a1 + 48), **(a2 + 8), 0) == kCFCompareEqualTo)
  {
    v6 = *MEMORY[0x1E695E480];
    v7 = CGImageMetadataDefaultPrefixForNamespace(**(a2 + 24));
    v8 = CFStringCreateWithFormat(v6, 0, @"%@:%@", v7, **(a2 + 32));
    if (v8)
    {
      v9 = v8;
      *(*(*(a1 + 32) + 8) + 24) = CGImageMetadataSetValueWithPath(*(a1 + 56), 0, v8, *(a1 + 64));
      CFRelease(v9);
    }

    *a3 = 1;
  }
}

void std::basic_regex<char,std::regex_traits<char>>::~basic_regex(std::locale *this)
{
  locale = this[6].__locale_;
  if (locale)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](locale);
  }

  std::locale::~locale(this);
}

unint64_t compareCGImageMetadataTagKey(CFStringRef *a1, CFStringRef *a2)
{
  v4 = CFStringCompare(*a1, *a2, 0x61uLL);
  if (v4 < 0)
  {
    return 1;
  }

  if (v4)
  {
    return 0;
  }

  return CFStringCompare(a1[1], a2[1], 0x61uLL) >> 63;
}

std::string *std::regex_replace[abi:fe200100]<std::back_insert_iterator<std::string>,std::__wrap_iter<char const*>,std::regex_traits<char>,char>(std::string *a1, std::__wrap_iter<const char *> a2, std::__wrap_iter<const char *> a3, const std::regex_iterator<std::__wrap_iter<const char *>, char>::regex_type *a4, char *a5, unsigned __int32 __m)
{
  v6 = __m;
  i = a2.__i_;
  memset(&v19, 0, sizeof(v19));
  std::regex_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::regex_iterator(&v19, a2, a3, a4, __m);
  memset(&v18, 0, sizeof(v18));
  if (std::regex_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::operator==(&v19, &v18))
  {
    if ((v6 & 0x200) == 0)
    {
      while (i != a3.__i_)
      {
        std::string::push_back(a1, *i++);
      }
    }
  }

  else
  {
    v11 = strlen(a5);
    v12 = 0;
    v13 = 0;
    while (!std::regex_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::operator==(&v19, &v18))
    {
      if ((v6 & 0x200) == 0)
      {
        v14 = v19.__match_.__prefix_.first.__i_;
        v15 = v19.__match_.__prefix_.second.__i_;
        while (v14 != v15)
        {
          std::string::push_back(a1, *v14++);
        }
      }

      std::match_results<std::__wrap_iter<char const*>>::format<std::back_insert_iterator<std::string>>(&v19.__match_, a1, a5, &a5[v11], v6);
      a1 = v16;
      v12 = v19.__match_.__suffix_.first.__i_;
      v13 = v19.__match_.__suffix_.second.__i_;
      if ((v6 & 0x400) != 0)
      {
        break;
      }

      std::regex_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::operator++(&v19);
    }

    if ((v6 & 0x200) == 0)
    {
      while (v12 != v13)
      {
        std::string::push_back(a1, *v12++);
      }
    }
  }

  if (v18.__match_.__matches_.__begin_)
  {
    v18.__match_.__matches_.__end_ = v18.__match_.__matches_.__begin_;
    operator delete(v18.__match_.__matches_.__begin_);
  }

  if (v19.__match_.__matches_.__begin_)
  {
    v19.__match_.__matches_.__end_ = v19.__match_.__matches_.__begin_;
    operator delete(v19.__match_.__matches_.__begin_);
  }

  return a1;
}

void sub_1860330B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a31)
  {
    operator delete(a31);
  }

  _Unwind_Resume(exception_object);
}

BOOL std::regex_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::operator==(const std::regex_iterator<std::__wrap_iter<const char *>, char> *this, const std::regex_iterator<std::__wrap_iter<const char *>, char> *__x)
{
  p_match = &this->__match_;
  begin = this->__match_.__matches_.__begin_;
  end = p_match->__matches_.__end_;
  v9 = &__x->__match_;
  v7 = __x->__match_.__matches_.__begin_;
  v8 = v9->__matches_.__end_;
  v10 = v8 == v7 && end == begin;
  if (end != begin && v8 != v7)
  {
    return this->__begin_.__i_ == __x->__begin_.__i_ && this->__end_.__i_ == __x->__end_.__i_ && this->__pregex_ == __x->__pregex_ && this->__flags_ == __x->__flags_ && std::sub_match<std::__wrap_iter<char const*>>::compare[abi:fe200100](begin, v7) == 0;
  }

  return v10;
}

void std::match_results<std::__wrap_iter<char const*>>::format<std::back_insert_iterator<std::string>>(uint64_t a1, std::string *this, unsigned __int8 *a3, unsigned __int8 *a4, __int16 a5)
{
  if ((*(a1 + 96) & 1) == 0)
  {
LABEL_59:
    __break(1u);
    return;
  }

  v6 = a3;
  if ((a5 & 0x100) != 0)
  {
    if (a3 == a4)
    {
      return;
    }

    while (1)
    {
      v30 = *v6;
      if (v30 == 92)
      {
        v35 = v6 + 1;
        if (v6 + 1 != a4)
        {
          v30 = *v35;
          v36 = v30 - 48;
          if ((v30 - 48) <= 9)
          {
            v37 = *a1 + 24 * (v30 - 48);
            if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3) <= v36)
            {
              v37 = a1 + 24;
            }

            v38 = *v37;
            v39 = *(v37 + 8);
            while (v38 != v39)
            {
              v40 = *v38++;
              std::string::push_back(this, v40);
            }

            goto LABEL_57;
          }

          ++v6;
        }
      }

      else if (v30 == 38)
      {
        v31 = *a1;
        if (*(a1 + 8) == *a1)
        {
          goto LABEL_59;
        }

        v32 = *v31;
        v33 = v31[1];
        while (v32 != v33)
        {
          v34 = *v32++;
          std::string::push_back(this, v34);
        }

        goto LABEL_56;
      }

      std::string::push_back(this, v30);
LABEL_56:
      v35 = v6;
LABEL_57:
      v6 = v35 + 1;
      if (v35 + 1 == a4)
      {
        return;
      }
    }
  }

  if (a3 != a4)
  {
    while (1)
    {
      v9 = *v6;
      v10 = v6 + 1;
      if (v9 != 36 || v10 == a4)
      {
        goto LABEL_9;
      }

      v9 = *v10;
      if (v9 > 0x26)
      {
        break;
      }

      if (v9 == 36)
      {
        goto LABEL_10;
      }

      if (v9 != 38)
      {
        goto LABEL_25;
      }

      v12 = *a1;
      if (*(a1 + 8) == *a1)
      {
        goto LABEL_59;
      }

      v13 = *v12;
      v14 = v12[1];
      while (v13 != v14)
      {
        v15 = *v13++;
        std::string::push_back(this, v15);
      }

LABEL_11:
      v6 = v10 + 1;
      if (v10 + 1 == a4)
      {
        return;
      }
    }

    if (v9 == 39)
    {
      v27 = *(a1 + 72);
      v28 = *(a1 + 80);
      while (v27 != v28)
      {
        v29 = *v27++;
        std::string::push_back(this, v29);
      }

      goto LABEL_11;
    }

    if (v9 == 96)
    {
      v16 = *(a1 + 48);
      v17 = *(a1 + 56);
      while (v16 != v17)
      {
        v18 = *v16++;
        std::string::push_back(this, v18);
      }

      goto LABEL_11;
    }

LABEL_25:
    LODWORD(v19) = v9 - 48;
    if (v19 <= 9)
    {
      v19 = v19;
      if (v6 + 2 != a4)
      {
        v20 = v6[2];
        v21 = v20 - 48;
        v22 = v20 + 10 * v19 - 48;
        if (v21 > 9)
        {
          v10 = v6 + 1;
        }

        else
        {
          v19 = v22;
          v10 = v6 + 2;
        }
      }

      if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3) <= v19)
      {
        v23 = a1 + 24;
      }

      else
      {
        v23 = *a1 + 24 * v19;
      }

      v24 = *v23;
      v25 = *(v23 + 8);
      while (v24 != v25)
      {
        v26 = *v24++;
        std::string::push_back(this, v26);
      }

      goto LABEL_11;
    }

    LOBYTE(v9) = 36;
LABEL_9:
    v10 = v6;
LABEL_10:
    std::string::push_back(this, v9);
    goto LABEL_11;
  }
}

std::regex_iterator<std::__wrap_iter<const char *>, char> *__cdecl std::regex_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::operator++(std::regex_iterator<std::__wrap_iter<const char *>, char> *this)
{
  p_match = &this->__match_;
  begin = this->__match_.__matches_.__begin_;
  i = p_match[-1].__position_start_.__i_;
  flags = i | 0x800;
  LODWORD(p_match[-1].__position_start_.__i_) = i | 0x800;
  if (p_match->__matches_.__end_ == begin)
  {
    p_unmatched = &p_match->__unmatched_;
  }

  else
  {
    p_unmatched = begin;
  }

  v7 = p_unmatched->second.__i_;
  if (p_unmatched->first.__i_ != v7)
  {
    v8 = p_unmatched->second.__i_;
LABEL_6:
    this->__flags_ = flags | 0x80;
    v10 = this->__end_.__i_;
    pregex = this->__pregex_;
    memset(&__p, 0, sizeof(__p));
    v11 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(pregex, v8, v10, &__p, flags | 0x80);
    std::match_results<std::__wrap_iter<char const*>>::__assign[abi:fe200100]<char const*,std::allocator<std::sub_match<char const*>>>(&p_match->__matches_, v8, v10, &__p, (flags & 0x800) != 0);
    if (__p.__matches_.__begin_)
    {
      __p.__matches_.__end_ = __p.__matches_.__begin_;
      operator delete(__p.__matches_.__begin_);
    }

    if (v11)
    {
      this->__match_.__prefix_.first.__i_ = v7;
      this->__match_.__prefix_.matched = this->__match_.__prefix_.second.__i_ != v7;
      return this;
    }

    begin = p_match->__matches_.__begin_;
    goto LABEL_16;
  }

  v12 = this->__end_.__i_;
  if (v12 == v7)
  {
LABEL_16:
    if (begin)
    {
      this->__match_.__matches_.__end_ = begin;
      operator delete(begin);
      p_match->__matches_.__begin_ = 0;
      p_match->__matches_.__end_ = 0;
      p_match->__matches_.__end_cap_.__value_ = 0;
    }

    this->__match_.__ready_ = 0;
    *&p_match->__matches_.__begin_ = 0u;
    *&p_match->__matches_.__end_cap_.__value_ = 0u;
    *(&p_match->__unmatched_.std::pair<std::__wrap_iter<const char *>, std::__wrap_iter<const char *>> + 1) = 0u;
    this->__match_.__prefix_.first.__i_ = 0;
    this->__match_.__prefix_.second.__i_ = 0;
    this->__match_.__prefix_.matched = 0;
    this->__match_.__suffix_.first.__i_ = 0;
    this->__match_.__suffix_.second.__i_ = 0;
    this->__match_.__suffix_.matched = 0;
    this->__match_.__position_start_.__i_ = 0;
    return this;
  }

  v13 = this->__pregex_;
  memset(&__p, 0, sizeof(__p));
  v14 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(v13, v7, v12, &__p, i | 0x860u);
  std::match_results<std::__wrap_iter<char const*>>::__assign[abi:fe200100]<char const*,std::allocator<std::sub_match<char const*>>>(&p_match->__matches_, v7, v12, &__p, 1);
  if (__p.__matches_.__begin_)
  {
    __p.__matches_.__end_ = __p.__matches_.__begin_;
    operator delete(__p.__matches_.__begin_);
  }

  if ((v14 & 1) == 0)
  {
    v8 = v7 + 1;
    flags = this->__flags_;
    goto LABEL_6;
  }

  return this;
}

void sub_1860335B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::regex_iterator<std::__wrap_iter<const char *>, char> *__cdecl std::regex_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::regex_iterator(std::regex_iterator<std::__wrap_iter<const char *>, char> *this, std::__wrap_iter<const char *> __a, std::__wrap_iter<const char *> __b, const std::regex_iterator<std::__wrap_iter<const char *>, char>::regex_type *__re, std::regex_constants::match_flag_type __m)
{
  v5 = __m;
  this->__begin_ = __a;
  this->__end_ = __b;
  this->__pregex_ = __re;
  *&this->__match_.__matches_.__begin_ = 0u;
  p_match = &this->__match_;
  this->__flags_ = __m;
  this->__match_.__prefix_.first.__i_ = 0;
  this->__match_.__prefix_.second.__i_ = 0;
  this->__match_.__prefix_.matched = 0;
  this->__match_.__suffix_.first.__i_ = 0;
  this->__match_.__suffix_.second.__i_ = 0;
  this->__match_.__suffix_.matched = 0;
  this->__match_.__ready_ = 0;
  this->__match_.__position_start_.__i_ = 0;
  *&this->__match_.__matches_.__end_cap_.__value_ = 0u;
  *(&this->__match_.__unmatched_.std::pair<std::__wrap_iter<const char *>, std::__wrap_iter<const char *>> + 1) = 0u;
  memset(&__p, 0, sizeof(__p));
  std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(__re, __a.__i_, __b.__i_, &__p, __m);
  std::match_results<std::__wrap_iter<char const*>>::__assign[abi:fe200100]<char const*,std::allocator<std::sub_match<char const*>>>(&p_match->__matches_, __a.__i_, __b.__i_, &__p, (v5 & 0x800) != 0);
  if (__p.__matches_.__begin_)
  {
    __p.__matches_.__end_ = __p.__matches_.__begin_;
    operator delete(__p.__matches_.__begin_);
  }

  return this;
}