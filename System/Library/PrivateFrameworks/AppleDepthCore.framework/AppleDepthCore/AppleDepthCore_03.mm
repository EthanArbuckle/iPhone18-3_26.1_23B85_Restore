BOOL PixelBufferUtilsSession::setScalingMode(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    if (a2 == 1)
    {
      v3 = *MEMORY[0x277CE28B0];
      v4 = MEMORY[0x277CE2A70];
      return VTSessionSetProperty(v2, v3, *v4) == 0;
    }

    if (!a2)
    {
      v3 = *MEMORY[0x277CE28B0];
      v4 = MEMORY[0x277CE2A78];
      return VTSessionSetProperty(v2, v3, *v4) == 0;
    }

    NSLog(&cfstr_SDErrorUnknown.isa, "setScalingMode", 4514);
  }

  else
  {
    NSLog(&cfstr_SDErrorSession.isa, "setScalingMode", 4504);
  }

  return 0;
}

uint64_t PixelBufferUtilsSession::setHardwareAcceleration(PixelBufferUtilsSession *this, int a2)
{
  v4 = *(this + 1);
  v5 = MEMORY[0x277CBED28];
  v6 = MEMORY[0x277CBED10];
  if (v4)
  {
    v7 = (a2 ? MEMORY[0x277CBED28] : MEMORY[0x277CBED10]);
    if (VTSessionSetProperty(v4, *MEMORY[0x277CE2880], *v7))
    {
      NSLog(&cfstr_SDErrorFailedS.isa, "setHardwareAcceleration", 4530);
      return 0;
    }
  }

  v8 = *(this + 2);
  if (v8)
  {
    v9 = (a2 ? v5 : v6);
    if (VTSessionSetProperty(v8, *MEMORY[0x277CE27F8], *v9))
    {
      NSLog(&cfstr_SDErrorFailedS_0.isa, "setHardwareAcceleration", 4542);
      return 0;
    }
  }

  return 1;
}

uint64_t PixelBufferUtilsSession::run(PixelBufferUtilsSession *this, __CVBuffer *a2, __CVBuffer *a3)
{
  if (!verifyPixelBufferSizeAndFormat(a2, *(this + 24), *(this + 10)) || (verifyPixelBufferSizeAndFormat(a3, *(this + 3), *(this + 16)) & 1) == 0)
  {
    NSLog(&cfstr_SDErrorProvide.isa, "run", 4560);
    return 0;
  }

  v6 = *(this + 1);
  if (*this)
  {
    v7 = *this;
  }

  else
  {
    v7 = a2;
  }

  if (!v6)
  {
    v13 = *(this + 2);
    if (!v13 || !MEMORY[0x245CC0D80](v13, v7, a3))
    {
      return 1;
    }

LABEL_18:
    NSLog(&cfstr_SDErrorRotatio_0.isa, "run", 4604);
    return 0;
  }

  if (*this)
  {
    v8 = *this;
  }

  else
  {
    v8 = a3;
  }

  v9 = VTPixelTransferSessionTransferImage(v6, a2, v8);
  v10 = *(this + 2);
  if (v10)
  {
    v11 = MEMORY[0x245CC0D80](v10, v7, a3);
    if (!v9)
    {
      if (!v11)
      {
        return 1;
      }

      goto LABEL_18;
    }

LABEL_20:
    NSLog(&cfstr_SDErrorPixelTr.isa, "run", 4598);
    return 0;
  }

  if (v9)
  {
    goto LABEL_20;
  }

  return 1;
}

uint64_t PixelBufferUtilsSession::updateCrop(PixelBufferUtilsSession *this, CGRect a2)
{
  if (!*(this + 1))
  {
    NSLog(&cfstr_SDErrorCannotU.isa, a2.origin.x, a2.origin.y, a2.size.width, a2.size.height, "updateCrop", 4616);
    return 0;
  }

  height = a2.size.height;
  width = a2.size.width;
  y = a2.origin.y;
  x = a2.origin.x;
  if (CGRectEqualToRect(a2, *(this + 72)))
  {
    return 1;
  }

  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  if (CGRectIsEmpty(v14))
  {
    DictionaryRepresentation = 0;
  }

  else
  {
    v15.origin.x = x;
    v15.origin.y = y;
    v15.size.width = width;
    v15.size.height = height;
    DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v15);
  }

  v9 = VTSessionSetProperty(*(this + 1), *MEMORY[0x277CE28B8], DictionaryRepresentation);
  if (DictionaryRepresentation)
  {
    CFRelease(DictionaryRepresentation);
  }

  if (v9)
  {
    NSLog(&cfstr_SDErrorPixelbu.isa, v10, v11, v12, v13, "updateCrop", 4638);
    return 0;
  }

  *(this + 9) = x;
  *(this + 10) = y;
  result = 1;
  *(this + 11) = width;
  *(this + 12) = height;
  return result;
}

uint64_t PixelBufferUtilsSession::copySession(PixelBufferUtilsSession *this, PixelBufferUtilsSession *a2)
{
  if (this)
  {
    operator new();
  }

  NSLog(&cfstr_SDErrorCannotC.isa, a2, "copySession", 4687);
  return 0;
}

uint64_t PixelBufferUtilsTiledView::TileConfig::TileConfig(uint64_t this)
{
  *(this + 8) = 0;
  *this = 0;
  return this;
}

{
  *(this + 8) = 0;
  *this = 0;
  return this;
}

uint64_t PixelBufferUtilsTiledView::TileConfig::TileConfig(uint64_t this, char a2, float a3, float a4)
{
  *this = a4;
  *(this + 4) = a3;
  *(this + 8) = a2;
  return this;
}

{
  *this = a4;
  *(this + 4) = a3;
  *(this + 8) = a2;
  return this;
}

int32x2_t PixelBufferUtilsTiledView::TileConfig::TileConfig(PixelBufferUtilsTiledView::TileConfig *this, int32x2_t *a2)
{
  v2 = a2[1].i8[0];
  result = vrev64_s32(*a2);
  *this = result;
  *(this + 8) = v2;
  return result;
}

{
  v2 = a2[1].i8[0];
  result = vrev64_s32(*a2);
  *this = result;
  *(this + 8) = v2;
  return result;
}

PixelBufferUtils *PixelBufferUtilsTiledView::render(PixelBufferUtilsTiledView *this, __CVBuffer **a2, uint64_t a3, __CVBuffer *a4, __CVBuffer *a5, char *a6)
{
  v6 = *(this + 2);
  v7 = *(this + 4);
  if (v7 * v6 != a3)
  {
    NSLog(&cfstr_SDErrorUnableT.isa, "render", 4747);
    return 0;
  }

  v9 = *(this + 5);
  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = (a5 | a6) == 0;
  }

  if (!v10)
  {
    NSLog(&cfstr_SDErrorUnableT_0.isa, "render", 4753);
    return 0;
  }

  v12 = MEMORY[0x277CBECE8];
  v13 = MEMORY[0x277CBF3A0];
  if (a4)
  {
    data = *(this + 6);
    if (!data)
    {
      v15 = *(this + 1);
      v16 = *(this + 3);
      pixelBufferOut.data = 0;
      v17 = *MEMORY[0x277CBECE8];
      BufferAttributes = getBufferAttributes();
      if (CVPixelBufferCreate(v17, v15, v16, 0x42475241u, BufferAttributes, &pixelBufferOut))
      {
        data = 0;
      }

      else
      {
        data = pixelBufferOut.data;
      }

      *(this + 6) = data;
    }

    PixelBufferUtils::scaleConvertRotatePixelBuffer(a4, 0, data, *v13, 0, 0, 1);
    v6 = *(this + 2);
    v7 = *(this + 4);
    v9 = *(this + 5);
  }

  v19 = v6 * *(this + 1);
  v20 = v9 + v7 * *(this + 3);
  pixelBufferOut.data = 0;
  v21 = *v12;
  v22 = getBufferAttributes();
  allocator = v21;
  v59 = v19;
  if (CVPixelBufferCreate(v21, v19, v20, 0x42475241u, v22, &pixelBufferOut))
  {
    v23 = 0;
  }

  else
  {
    v23 = pixelBufferOut.data;
  }

  CVPixelBufferLockBaseAddress(v23, 0);
  memset(&pixelBufferOut, 0, sizeof(pixelBufferOut));
  v61 = v23;
  PixelBufferUtils::asVImageBuffer(v23, *v13, &pixelBufferOut);
  v24 = *(this + 5);
  if (v24 && pixelBufferOut.rowBytes * v24 >= 4)
  {
    memset_pattern16(pixelBufferOut.data, &unk_2404C86D0, (pixelBufferOut.rowBytes * v24) & 0xFFFFFFFFFFFFFFFCLL);
  }

  v25 = v24 * 0.15;
  v60 = (v24 * 0.8);
  v26 = *(this + 2);
  v27 = *(this + 4);
  if (v27 * v26)
  {
    v28 = 0;
    v29 = 1;
    v30 = pixelBufferOut.data;
    rowBytes = pixelBufferOut.rowBytes;
    do
    {
      v32 = a2[v28];
      if (v32)
      {
        Width = CVPixelBufferGetWidth(a2[v28]);
        Height = CVPixelBufferGetHeight(v32);
        v35 = *(this + 2);
        v36 = *(this + 3);
        v37 = *(this + 1);
        v38 = v28 / v35;
        v39 = v28 % v35 * v37;
        v40 = *(this + 5) + v38 * v36;
        v41 = v36;
        v42 = Height;
        v43 = v36 / Height;
        v44 = v37;
        v45 = Width;
        v46 = v37 / Width;
        if (v43 != v46)
        {
          if (v43 < v46)
          {
            v39 += (v37 - ((v45 / v42) * v44)) >> 1;
            v37 = ((v45 / v42) * v44);
          }

          else
          {
            v40 += (v36 - ((v42 / v45) * v41)) >> 1;
            v36 = ((v42 / v45) * v41);
          }
        }

        texture = 0;
        CVPixelBufferCreateWithBytes(allocator, v37, v36, 0x42475241u, &v30[4 * v39 + rowBytes * v40], rowBytes, 0, 0, 0, &texture);
        v47 = *this + 12 * v28;
        v48 = *(v47 + 8);
        v49 = *v47;
        v50 = *(v47 + 4);
        PixelFormatType = CVPixelBufferGetPixelFormatType(v32);
        v70.width = v37;
        v70.height = v36;
        CroppedAndScaledPixelBuffer = PixelBufferUtils::createCroppedAndScaledPixelBuffer(v32, 0, *v13, v70);
        v54 = CroppedAndScaledPixelBuffer;
        if (PixelFormatType == 1717855600 || PixelFormatType == 1751411059 || PixelFormatType == 1751410032)
        {
          if (!PixelBufferUtils::colorizedDepthPixelBuffer(CroppedAndScaledPixelBuffer, 0, v48, v50, v49, 0, texture, v53) && v48 && (PixelBufferUtils::alphaBlend(*(this + 6), texture, &texture, 0.5, 1) & 1) == 0)
          {
            NSLog(&cfstr_SDErrorFailedC.isa, "render", 4849);
          }
        }

        else
        {
          PixelBufferUtils::convertPixelBufferFormat(CroppedAndScaledPixelBuffer, texture, 0);
        }

        CVPixelBufferRelease(v54);
        CVPixelBufferRelease(texture);
        v26 = *(this + 2);
        v27 = *(this + 4);
      }

      v28 = v29;
    }

    while (v27 * v26 > v29++);
  }

  v56 = v25;
  v57 = v61;
  if (a5)
  {
    v68.x = v56;
    v68.y = (*(this + 5) - v56);
    PixelBufferUtils::addTextToPixelBuffer(v61, a5, v60, v68);
  }

  if (a6)
  {
    v69.x = v59 + (strlen(a6) * v60) * -0.6 - v56;
    v69.y = (*(this + 5) - v56);
    PixelBufferUtils::addTextToPixelBuffer(v61, a6, v60, v69);
  }

  CVPixelBufferUnlockBaseAddress(v61, 0);
  return v57;
}

void PixelBufferUtilsTiledView::~PixelBufferUtilsTiledView(CVPixelBufferRef *this)
{
  CVPixelBufferRelease(this[6]);
  if (*this)
  {
    MEMORY[0x245CC10C0](*this, 0x1000C8005A209FELL);
  }
}

CVPixelBufferPoolRef PixelBufferUtils::createPixelBufferPool(PixelBufferUtils *this, CGSize a2, uint64_t a3)
{
  height = a2.height;
  width = a2.width;
  v16[6] = *MEMORY[0x277D85DE8];
  v6 = *MEMORY[0x277CC4D60];
  v15[0] = *MEMORY[0x277CC4DE8];
  v15[1] = v6;
  v16[0] = MEMORY[0x277CBEC10];
  v16[1] = &unk_285252058;
  v15[2] = *MEMORY[0x277CC4E30];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:this];
  v16[2] = v7;
  v15[3] = *MEMORY[0x277CC4EC8];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:width];
  v16[3] = v8;
  v15[4] = *MEMORY[0x277CC4DD8];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:height];
  v16[4] = v9;
  v15[5] = *MEMORY[0x277CC4E50];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a3];
  v16[5] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:6];

  poolOut = 0;
  v12 = CVPixelBufferPoolCreate(*MEMORY[0x277CBECE8], 0, v11, &poolOut);
  CFRelease(v11);
  if (!v12)
  {
    return poolOut;
  }

  NSLog(&cfstr_SDErrorFailedC_0.isa, "createPixelBufferPool", 4900, v12);
  return 0;
}

void sub_24049C1C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v6 = va_arg(va1, const void *);
  ScopedCFObject<__CFData *>::~ScopedCFObject(va);
  ScopedCFObject<CGImage *>::~ScopedCFObject(va1);

  _Unwind_Resume(a1);
}

const void **ScopedCFObject<CGImageDestination *>::~ScopedCFObject(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

const void **ScopedCFObject<__CFData *>::~ScopedCFObject(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

const void **ScopedCFObject<CGImage *>::~ScopedCFObject(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

void sub_24049C5E0(_Unwind_Exception *a1)
{
  MEMORY[0x245CC10C0](v4, v1);
  MEMORY[0x245CC10C0](v3, v2);
  _Unwind_Resume(a1);
}

void sub_24049CB60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_24049CBE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::vector<appledepth::JasperPointCloud const*>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::vector<Element *>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_24049CEE0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_24049E7DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = ADJasperPointCloud;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_2404A00A4(_Unwind_Exception *a1)
{
  objc_sync_exit(v3);

  _Unwind_Resume(a1);
}

void sub_2404A1B74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = ADReprojection;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_2404A3A40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, void *a17, void *a18, void *a19, uint64_t a20, void *a21, void *a22, void *a23, void *a24, void *a25, void *a26, void *a27, void *a28, uint64_t a29, char a30, uint64_t a31, void (*a32)(char *), uint64_t a33, void *a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  a32(&a30);

  _Unwind_Resume(a1);
}

void ADDebugUtils::setVerboseLogsEnabled(ADDebugUtils *this)
{
  v1 = this;
  v3 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v2[0] = 67109120;
    v2[1] = v1;
    _os_log_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "setting verboseLogs: %d", v2, 8u);
  }

  ADDebugUtilsADVerboseLogsEnabled = v1;
}

uint64_t debugQuickLookObjectFromCGImage(CGImage *a1)
{
  v2 = NSClassFromString(&cfstr_Uiimage.isa);
  v3 = NSSelectorFromString(&cfstr_Imagewithcgima.isa);
  v4 = [(objc_class *)v2 methodForSelector:v3];

  return v4(v2, v3, a1);
}

void sub_2404A4418(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  for (i = 32; i != -8; i -= 8)
  {
  }

  _Unwind_Resume(a1);
}

void sub_2404A4C34(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_2404A4D28(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

double ADCommonUtils::calcRotationAngle(ADCommonUtils *this, simd_float3x3 *a2)
{
  v3 = *(this + 6);
  v4 = *(this + 10);
  v8 = atan2f(v3, v4);
  v6 = *this;
  v7 = atan2f(-COERCE_FLOAT(*(this + 1)), sqrtf((v4 * v4) + (v3 * v3)));
  atan2f(*(&v6 + 1), *&v6);
  return COERCE_DOUBLE(__PAIR64__(LODWORD(v7), LODWORD(v8)));
}

void ADCommonUtils::calcRotationAngle(ADCommonUtils *this@<X0>, _OWORD *a2@<X8>)
{
  v5 = *(this + 6);
  v6 = *(this + 10);
  v11 = atan2(v5, v6);
  __x = *this;
  v10 = atan2(-*(this + 2), sqrt(v6 * v6 + v5 * v5));
  *&v7 = atan2(*(&__x + 1), *&__x);
  *&v8 = v11;
  *(&v8 + 1) = v10;
  *a2 = v8;
  a2[1] = v7;
}

__n128 ADCommonUtils::matrixFromArrayColumnFirst(ADCommonUtils *this, NSArray *a2)
{
  v2 = this;
  v27 = [(ADCommonUtils *)v2 objectAtIndexedSubscript:0];
  [v27 floatValue];
  v28 = v3;
  v26 = [(ADCommonUtils *)v2 objectAtIndexedSubscript:1];
  [v26 floatValue];
  v20 = v4;
  v25 = [(ADCommonUtils *)v2 objectAtIndexedSubscript:2];
  [v25 floatValue];
  v19 = v5;
  v24 = [(ADCommonUtils *)v2 objectAtIndexedSubscript:3];
  [v24 floatValue];
  v18 = v6;
  v23 = [(ADCommonUtils *)v2 objectAtIndexedSubscript:4];
  [v23 floatValue];
  v22 = [(ADCommonUtils *)v2 objectAtIndexedSubscript:5];
  [v22 floatValue];
  v21 = [(ADCommonUtils *)v2 objectAtIndexedSubscript:6];
  [v21 floatValue];
  v7 = [(ADCommonUtils *)v2 objectAtIndexedSubscript:7];
  [v7 floatValue];
  v8 = [(ADCommonUtils *)v2 objectAtIndexedSubscript:8];
  [v8 floatValue];
  v9 = [(ADCommonUtils *)v2 objectAtIndexedSubscript:9];
  [v9 floatValue];
  v10 = [(ADCommonUtils *)v2 objectAtIndexedSubscript:10];
  [v10 floatValue];
  v11 = [(ADCommonUtils *)v2 objectAtIndexedSubscript:11];
  [v11 floatValue];
  v12 = [(ADCommonUtils *)v2 objectAtIndexedSubscript:12];
  [v12 floatValue];
  v13 = [(ADCommonUtils *)v2 objectAtIndexedSubscript:13];
  [v13 floatValue];
  v14 = [(ADCommonUtils *)v2 objectAtIndexedSubscript:14];
  [v14 floatValue];
  v15 = [(ADCommonUtils *)v2 objectAtIndexedSubscript:15];
  [v15 floatValue];
  *&v16 = __PAIR64__(v20, v28);
  *(&v16 + 1) = __PAIR64__(v18, v19);
  v29 = v16;

  return v29;
}

void sub_2404A52F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, void *a33, void *a34)
{
  *(v44 - 112) = a1;

  _Unwind_Resume(*(v44 - 112));
}

__n128 ADCommonUtils::matrixFromArrayRowFirst(ADCommonUtils *this, NSArray *a2)
{
  v2 = this;
  v27 = [(ADCommonUtils *)v2 objectAtIndexedSubscript:0];
  [v27 floatValue];
  v28 = v3;
  v26 = [(ADCommonUtils *)v2 objectAtIndexedSubscript:4];
  [v26 floatValue];
  v20 = v4;
  v25 = [(ADCommonUtils *)v2 objectAtIndexedSubscript:8];
  [v25 floatValue];
  v19 = v5;
  v24 = [(ADCommonUtils *)v2 objectAtIndexedSubscript:12];
  [v24 floatValue];
  v18 = v6;
  v23 = [(ADCommonUtils *)v2 objectAtIndexedSubscript:1];
  [v23 floatValue];
  v22 = [(ADCommonUtils *)v2 objectAtIndexedSubscript:5];
  [v22 floatValue];
  v21 = [(ADCommonUtils *)v2 objectAtIndexedSubscript:9];
  [v21 floatValue];
  v7 = [(ADCommonUtils *)v2 objectAtIndexedSubscript:13];
  [v7 floatValue];
  v8 = [(ADCommonUtils *)v2 objectAtIndexedSubscript:2];
  [v8 floatValue];
  v9 = [(ADCommonUtils *)v2 objectAtIndexedSubscript:6];
  [v9 floatValue];
  v10 = [(ADCommonUtils *)v2 objectAtIndexedSubscript:10];
  [v10 floatValue];
  v11 = [(ADCommonUtils *)v2 objectAtIndexedSubscript:14];
  [v11 floatValue];
  v12 = [(ADCommonUtils *)v2 objectAtIndexedSubscript:3];
  [v12 floatValue];
  v13 = [(ADCommonUtils *)v2 objectAtIndexedSubscript:7];
  [v13 floatValue];
  v14 = [(ADCommonUtils *)v2 objectAtIndexedSubscript:11];
  [v14 floatValue];
  v15 = [(ADCommonUtils *)v2 objectAtIndexedSubscript:15];
  [v15 floatValue];
  *&v16 = __PAIR64__(v20, v28);
  *(&v16 + 1) = __PAIR64__(v18, v19);
  v29 = v16;

  return v29;
}

void sub_2404A56B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, void *a33, void *a34)
{
  *(v44 - 112) = a1;

  _Unwind_Resume(*(v44 - 112));
}

__n128 ADCommonUtils::extrinsics4x4FromFile(ADCommonUtils *this, const char *a2)
{
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:this];
  v3 = [v2 lowercaseString];
  v4 = [v3 hasSuffix:@".json"];

  if (v4)
  {
    v20 = 0;
    v5 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v2 options:1 error:&v20];
    v6 = v20;
    if (v6)
    {
      v7 = v6;
      v8 = [v6 description];
      NSLog(&cfstr_FailedLoadingE.isa, v8);
LABEL_8:

      v18 = 0u;
      goto LABEL_9;
    }

    v19 = 0;
    v8 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v5 options:4 error:&v19];
    v12 = v19;
    v7 = v12;
    if (v12)
    {
      v13 = [v12 description];
      NSLog(&cfstr_FailedLoadingE.isa, v13);

      goto LABEL_8;
    }

    for (i = 0; i < [v8 count]; ++i)
    {
      v16 = [v8 objectAtIndexedSubscript:i];
      [v16 floatValue];
      *(v21 + i) = v17;
    }
  }

  else
  {
    v5 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v2];
    v9 = [v5 bytes];
    v10 = v9[1];
    v21[0] = *v9;
    v21[1] = v10;
    v11 = v9[3];
    v21[2] = v9[2];
    v21[3] = v11;
  }

  v18 = v21[0];
LABEL_9:

  return v18;
}

void sub_2404A5990(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

uint64_t ADCommonUtils::extrinsicsToFile(ADCommonUtils *this, const char *a2, simd_float4x4 a3)
{
  a3.columns[0].i32[3] = 0;
  a3.columns[1].i32[3] = 0;
  a3.columns[2].i32[3] = 0;
  a3.columns[3].i32[3] = 1.0;
  return ADCommonUtils::extrinsicsToFile(this, a2, a3);
}

{
  v18 = a3;
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:this];
  v4 = [v3 lowercaseString];
  v5 = [v4 hasSuffix:@".json"];

  if (v5)
  {
    v6 = objc_opt_new();
    for (i = 0; i != 16; ++i)
    {
      LODWORD(v7) = v18.columns[0].i32[i];
      v9 = [MEMORY[0x277CCABB0] numberWithFloat:v7];
      [v6 setObject:v9 atIndexedSubscript:i];
    }

    v17 = 0;
    v10 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v6 options:1 error:&v17];
    v11 = v17;
    v12 = v11;
    if (v11)
    {
      v13 = [v11 description];
      NSLog(&cfstr_FailedWritingE.isa, v13);
    }

    v14 = [v10 writeToFile:v3 atomically:1];
  }

  else
  {
    v6 = [MEMORY[0x277CBEA90] dataWithBytes:&v18 length:64];
    v16 = 0;
    v14 = [v6 writeToFile:v3 options:1 error:&v16];
    v12 = v16;
  }

  return v14;
}

void sub_2404A5BA8(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

double ADCommonUtils::rotateSize(uint64_t a1, double a2, double a3)
{
  if ((a1 | 2) != 3)
  {
    return a2;
  }

  return a3;
}

uint64_t ADCommonUtils::reverseRotation(uint64_t a1)
{
  v1 = 3;
  if (a1 != 1)
  {
    v1 = a1;
  }

  if (a1 == 3)
  {
    return 1;
  }

  else
  {
    return v1;
  }
}

double ADCommonUtils::matrixForImageRotation(uint64_t a1)
{
  v1 = 0.0;
  if ((a1 - 1) <= 2)
  {
    v1 = flt_2404CA3DC[a1 - 1];
  }

  v2 = __sincosf_stret(v1);
  *&v3 = v2.__cosval;
  *(&v3 + 1) = -v2.__sinval;
  return v3;
}

double ADCommonUtils::computeTransform(ADCommonUtils *this, simd_float4x3 a2, simd_float4x3 a3)
{
  v3 = 0;
  a3.columns[2].i32[3] = 0;
  v4 = vzip1q_s32(a2.columns[0], a2.columns[1]);
  v4.i32[2] = a2.columns[2].i32[0];
  v5 = vzip2q_s32(a2.columns[0], a2.columns[1]);
  v5.i32[2] = a2.columns[2].i32[2];
  v6 = vzip2q_s32(vzip1q_s32(a2.columns[0], a2.columns[2]), vdupq_lane_s32(*a2.columns[1].f32, 1));
  v8[2] = a3.columns[2];
  do
  {
    *(&v9 + v3 * 16) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v4, COERCE_FLOAT(v8[v3])), v6, *&v8[v3], 1), v5, v8[v3], 2);
    ++v3;
  }

  while (v3 != 3);
  return *&v9;
}

float ADCommonUtils::calculatePoseDistance(ADCommonUtils *this, simd_float4x4 a2, simd_float4x4 a3)
{
  v3 = 0;
  v4 = vzip1q_s32(a3.columns[0], a3.columns[1]);
  v4.i32[2] = a3.columns[2].i32[0];
  v5 = vzip2q_s32(a3.columns[0], a3.columns[2]);
  v6 = vzip2q_s32(vzip1q_s32(a3.columns[0], a3.columns[2]), vdupq_lane_s32(*a3.columns[1].f32, 1));
  a3.columns[0] = vzip2q_s32(a3.columns[0], a3.columns[1]);
  a3.columns[0].i32[2] = a3.columns[2].i32[2];
  v12[2] = vzip1q_s32(v5, vdupq_laneq_s32(a3.columns[1], 2));
  do
  {
    *&v13[v3 / 4] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a2.columns[0], COERCE_FLOAT(v12[v3 / 0x10])), a2.columns[1], *&v12[v3 / 0x10], 1), a2.columns[2], v12[v3 / 0x10], 2);
    v3 += 16;
  }

  while (v3 != 48);
  a3.columns[1] = vzip1q_s32(vzip2q_s32(a2.columns[0], a2.columns[2]), vdupq_laneq_s32(a2.columns[1], 2));
  a3.columns[2] = vzip1q_s32(a2.columns[0], a2.columns[2]);
  a2.columns[0] = vtrn2q_s32(a2.columns[0], a2.columns[1]);
  a2.columns[0].i32[2] = a2.columns[2].i32[1];
  v7 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(vzip1q_s32(a3.columns[2], a2.columns[1]), a2.columns[3].f32[0]), a2.columns[0], *a2.columns[3].f32, 1), a3.columns[1], a2.columns[3], 2);
  v8 = 3.0 - v13[0] - v13[5] - v13[10];
  *&v8 = (v8 + v8) / 3.0;
  v9 = vmulq_f32(vsubq_f32(v7, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v4, a3.columns[3].f32[0]), v6, *a3.columns[3].f32, 1), a3.columns[0], a3.columns[3], 2)), vdupq_n_s32(0x3A83126Fu));
  v10 = vmulq_f32(v9, v9);
  return (v10.f32[2] + vaddv_f32(*v10.f32)) + *&v8;
}

void ADCommonUtils::extrinsicsToString(simd_float4x3 a1@<0:Q0, 16:Q1, 32:Q2, 48:Q3>, _BYTE *a2@<X8>)
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"R:[%.4f, %.4f, %.4f], [%.4f, %.4f, %.4f], [%.4f, %.4f, %.4f]. T:[%.4f, %.4f, %.4f]\n", a1.columns[0].f32[0], a1.columns[0].f32[1], a1.columns[0].f32[2], a1.columns[1].f32[0], a1.columns[1].f32[1], a1.columns[1].f32[2], a1.columns[2].f32[0], a1.columns[2].f32[1], a1.columns[2].f32[2], a1.columns[3].f32[0], a1.columns[3].f32[1], a1.columns[3].f32[2]];
  std::string::basic_string[abi:ne200100]<0>(a2, [v4 UTF8String]);
}

void ADCommonUtils::extrinsicsToString(simd_float4x4 a1@<0:Q0, 16:Q1, 32:Q2, 48:Q3>, _BYTE *a2@<X8>)
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"R:[%.4f, %.4f, %.4f, %.4f], [%.4f, %.4f, %.4f, %.4f], [%.4f, %.4f, %.4f, %.4f]. T:[%.4f, %.4f, %.4f, %.4f]\n", a1.columns[0].f32[0], a1.columns[0].f32[1], a1.columns[0].f32[2], a1.columns[0].f32[3], a1.columns[1].f32[0], a1.columns[1].f32[1], a1.columns[1].f32[2], a1.columns[1].f32[3], a1.columns[2].f32[0], a1.columns[2].f32[1], a1.columns[2].f32[2], a1.columns[2].f32[3], a1.columns[3].f32[0], a1.columns[3].f32[1], a1.columns[3].f32[2], a1.columns[3].f32[3]];
  std::string::basic_string[abi:ne200100]<0>(a2, [v4 UTF8String]);
}

void ADCommonUtils::intrinsicsToString(simd_float3x3 a1@<0:Q0, 16:Q1, 32:Q2>, _BYTE *a2@<X8>)
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"eflx:%.3f efly:%.3f ppx:%.3f ppy:%.3f\n", a1.columns[0].f32[0], a1.columns[1].f32[1], a1.columns[2].f32[0], a1.columns[2].f32[1]];
  std::string::basic_string[abi:ne200100]<0>(a2, [v4 UTF8String]);
}

uint64_t ADCommonUtils::hashArray(ADCommonUtils *this, NSArray *a2)
{
  v2 = this;
  v3 = [(ADCommonUtils *)v2 hash];
  for (i = 1; i - 1 < [(ADCommonUtils *)v2 count]; ++i)
  {
    v5 = [(ADCommonUtils *)v2 objectAtIndexedSubscript:?];
    v3 ^= [v5 hash] * i;
  }

  return v3;
}

CGFloat ADCommonUtils::computeMaximalRoi(ADCommonUtils *this, CGSize a2, CGSize a3)
{
  width = a2.height / (a3.height / a3.width);
  if (a2.width < width)
  {
    width = a2.width;
  }

  return (a2.width - width) * 0.5;
}

Float64 ADCommonUtils::machTimeToSeconds(ADCommonUtils *this)
{
  memset(&v3, 0, sizeof(v3));
  CMClockMakeHostTimeFromSystemUnits(&v3, this);
  v2 = v3;
  return CMTimeGetSeconds(&v2);
}

void ADCommonUtils::runtimePlatformANEVersionString(_BYTE *a1@<X8>)
{
  if ([MEMORY[0x277CEE958] hasANE])
  {
    v4 = [MEMORY[0x277CEE958] aneSubType];
    v3 = [v4 uppercaseString];
    std::string::basic_string[abi:ne200100]<0>(a1, [v3 UTF8String]);
  }

  else
  {

    std::string::basic_string[abi:ne200100]<0>(a1, "");
  }
}

void ADCommonUtils::runtimePlatformANEProductString(_BYTE *a1@<X8>)
{
  if ([MEMORY[0x277CEE958] hasANE])
  {
    v3 = MEMORY[0x277CCACA8];
    v8 = [MEMORY[0x277CEE958] aneSubType];
    v4 = [MEMORY[0x277CEE958] aneSubTypeVariant];
    v5 = [MEMORY[0x277CEE958] aneSubTypeProductVariant];
    v6 = [v3 stringWithFormat:@"%@%@%@", v8, v4, v5];
    v7 = [v6 uppercaseString];
    std::string::basic_string[abi:ne200100]<0>(a1, [v7 UTF8String]);
  }

  else
  {

    std::string::basic_string[abi:ne200100]<0>(a1, "");
  }
}

uint64_t ADCommonUtils::runtimePlatformANEVersionNumber(ADCommonUtils *this)
{
  ADCommonUtils::runtimePlatformANEVersionString(v4);
  if (v5 < 0)
  {
    v2 = v4[0];
    if (v4[1])
    {
      v1 = atoi((v4[0] + 1));
    }

    else
    {
      v1 = 0xFFFFFFFFLL;
    }

    operator delete(v2);
  }

  else if (v5)
  {
    return atoi(v4 + 1);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }

  return v1;
}

void ADCommonUtils::espressoEngineAsString(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      v3 = "CPU";
      goto LABEL_12;
    }

    if (a1 == 1)
    {
      v3 = "METAL";
      goto LABEL_12;
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        v3 = "MPS";
        goto LABEL_12;
      case 3:
        v3 = "ANERuntimeDirect";
        goto LABEL_12;
      case 4:
        v3 = "ANERuntime";
LABEL_12:

        std::string::basic_string[abi:ne200100]<0>(a2, v3);
        return;
    }
  }

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1];
  v4 = [v5 stringValue];
  std::string::basic_string[abi:ne200100]<0>(a2, [v4 UTF8String]);
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,PixelBufferSharedPtr>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PixelBufferSharedPtr>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PixelBufferSharedPtr>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PixelBufferSharedPtr>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,PixelBufferSharedPtr>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,PixelBufferSharedPtr>,0>(uint64_t a1)
{
  PixelBufferSharedPtr::~PixelBufferSharedPtr((a1 + 24));
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void PixelBufferSharedPtr::~PixelBufferSharedPtr(CVPixelBufferRef *this)
{
  *this = &unk_28524B848;
  CVPixelBufferRelease(this[1]);
}

{
  PixelBufferSharedPtr::~PixelBufferSharedPtr(this);

  JUMPOUT(0x245CC10E0);
}

void sub_2404A6B30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = ADEspressoRunnerV1;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_2404A73A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  std::__hash_table<std::__hash_value_type<std::string,espresso_buffer_t>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,espresso_buffer_t>>>::~__hash_table(va1);
  InstrumentsTraceGuard::~InstrumentsTraceGuard(va);
  objc_sync_exit(v4);

  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<std::string,espresso_buffer_t>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,espresso_buffer_t>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, void *a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,espresso_buffer_t>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,espresso_buffer_t>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

unint64_t std::__string_hash<char>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = *(a1 + 23);
  v2 = *a1;
  if (v1 >= 0)
  {
    v2 = a1;
  }

  if (v1 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = *(a1 + 8);
  }

  if (v3 > 0x20)
  {
    if (v3 > 0x40)
    {
      v33 = 0x9DDFEA08EB382D69;
      v43 = *(v2 + v3 - 48);
      v42 = *(v2 + v3 - 40);
      v44 = *(v2 + v3 - 24);
      v45 = *(v2 + v3 - 56);
      v46 = *(v2 + v3 - 16);
      v47 = *(v2 + v3 - 8);
      v48 = v45 + v46;
      v49 = 0x9DDFEA08EB382D69 * (v44 ^ ((0x9DDFEA08EB382D69 * (v44 ^ (v43 + v3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v44 ^ (v43 + v3))));
      v50 = 0x9DDFEA08EB382D69 * (v49 ^ (v49 >> 47));
      v51 = *(v2 + v3 - 64) + v3;
      v52 = v51 + v45 + v43;
      v53 = __ROR8__(v52, 44) + v51;
      v54 = __ROR8__(v42 + v51 + v50, 21);
      v55 = v52 + v42;
      v56 = v53 + v54;
      v57 = v48 + *(v2 + v3 - 32) - 0x4B6D499041670D8DLL;
      v58 = v57 + v44 + v46;
      v59 = v58 + v47;
      v60 = __ROR8__(v58, 44) + v57 + __ROR8__(v57 + v42 + v47, 21);
      v62 = *v2;
      v61 = v2 + 4;
      v63 = v62 - 0x4B6D499041670D8DLL * v42;
      v64 = -((v3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v65 = *(v61 - 3);
        v66 = v63 + v55 + v48 + v65;
        v67 = v61[2];
        v68 = v61[3];
        v69 = v61[1];
        v48 = v69 + v55 - 0x4B6D499041670D8DLL * __ROR8__(v48 + v56 + v67, 42);
        v70 = v50 + v59;
        v71 = *(v61 - 2);
        v72 = *(v61 - 1);
        v73 = *(v61 - 4) - 0x4B6D499041670D8DLL * v56;
        v74 = v73 + v59 + v72;
        v75 = v73 + v65 + v71;
        v55 = v75 + v72;
        v76 = __ROR8__(v75, 44) + v73;
        v77 = (0xB492B66FBE98F273 * __ROR8__(v66, 37)) ^ v60;
        v63 = 0xB492B66FBE98F273 * __ROR8__(v70, 33);
        v56 = v76 + __ROR8__(v74 + v77, 21);
        v78 = v63 + v60 + *v61;
        v59 = v78 + v69 + v67 + v68;
        v60 = __ROR8__(v78 + v69 + v67, 44) + v78 + __ROR8__(v48 + v71 + v78 + v68, 21);
        v61 += 8;
        v50 = v77;
        v64 += 64;
      }

      while (v64);
      v79 = 0x9DDFEA08EB382D69 * (v59 ^ ((0x9DDFEA08EB382D69 * (v59 ^ v55)) >> 47) ^ (0x9DDFEA08EB382D69 * (v59 ^ v55)));
      v80 = v63 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v60 ^ ((0x9DDFEA08EB382D69 * (v60 ^ v56)) >> 47) ^ (0x9DDFEA08EB382D69 * (v60 ^ v56)))) ^ ((0x9DDFEA08EB382D69 * (v60 ^ ((0x9DDFEA08EB382D69 * (v60 ^ v56)) >> 47) ^ (0x9DDFEA08EB382D69 * (v60 ^ v56)))) >> 47));
      v81 = 0x9DDFEA08EB382D69 * (v80 ^ (v77 - 0x4B6D499041670D8DLL * (v48 ^ (v48 >> 47)) - 0x622015F714C7D297 * (v79 ^ (v79 >> 47))));
      v34 = 0x9DDFEA08EB382D69 * (v80 ^ (v81 >> 47) ^ v81);
    }

    else
    {
      v8 = v2 + v3;
      v9 = *(v2 + v3 - 16);
      v10 = *(v2 + v3 - 8);
      v11 = v2[1];
      v12 = *v2 - 0x3C5A37A36834CED9 * (v9 + v3);
      v15 = v2 + 2;
      v13 = v2[2];
      v14 = v15[1];
      v16 = __ROR8__(v12 + v14, 52);
      v17 = __ROR8__(v12, 37);
      v18 = v12 + v11;
      v19 = __ROR8__(v18, 7);
      v20 = v18 + v13;
      v21 = v19 + v17;
      v22 = *(v8 - 4) + v13;
      v23 = v10 + v14;
      v24 = __ROR8__(v23 + v22, 52);
      v25 = v21 + v16;
      v26 = __ROR8__(v22, 37);
      v27 = *(v8 - 3) + v22;
      v28 = __ROR8__(v27, 7);
      v29 = v25 + __ROR8__(v20, 31);
      v30 = v27 + v9;
      v31 = v30 + v23;
      v32 = v20 + v14 + v26 + v28 + v24 + __ROR8__(v30, 31);
      v33 = 0x9AE16A3B2F90404FLL;
      v34 = v29 - 0x3C5A37A36834CED9 * ((0xC3A5C85C97CB3127 * (v31 + v29) - 0x651E95C4D06FBFB1 * v32) ^ ((0xC3A5C85C97CB3127 * (v31 + v29) - 0x651E95C4D06FBFB1 * v32) >> 47));
    }

    return (v34 ^ (v34 >> 47)) * v33;
  }

  else
  {
    if (v3 > 0x10)
    {
      v35 = v2[1];
      v36 = 0xB492B66FBE98F273 * *v2;
      v37 = 0x9AE16A3B2F90404FLL * *(v2 + v3 - 8);
      v38 = __ROR8__(v37, 30) + __ROR8__(v36 - v35, 43);
      v39 = v36 + v3 + __ROR8__(v35 ^ 0xC949D7C7509E6557, 20) - v37;
      v40 = 0x9DDFEA08EB382D69 * (v39 ^ (v38 - 0x3C5A37A36834CED9 * *(v2 + v3 - 16)));
      v41 = v39 ^ (v40 >> 47) ^ v40;
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v41) ^ ((0x9DDFEA08EB382D69 * v41) >> 47));
    }

    if (v3 >= 9)
    {
      v4 = *v2;
      v5 = *(v2 + v3 - 8);
      v6 = __ROR8__(v5 + v3, v3);
      return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ v4)))) ^ ((0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ v4)))) >> 47))) ^ v5;
    }

    if (v3 >= 4)
    {
      v82 = *v2;
      v83 = *(v2 + v3 - 4);
      v84 = 0x9DDFEA08EB382D69 * ((v3 + (8 * v82)) ^ v83);
      v41 = v83 ^ (v84 >> 47) ^ v84;
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v41) ^ ((0x9DDFEA08EB382D69 * v41) >> 47));
    }

    result = 0x9AE16A3B2F90404FLL;
    if (v3)
    {
      v85 = (0xC949D7C7509E6557 * (v3 | (4 * *(v2 + v3 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*v2 | (*(v2 + (v3 >> 1)) << 8)));
      return 0x9AE16A3B2F90404FLL * (v85 ^ (v85 >> 47));
    }
  }

  return result;
}

BOOL std::equal_to<std::string>::operator()[abi:ne200100](void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (v2 < 0)
  {
    a1 = *a1;
  }

  if (v5 < 0)
  {
    a2 = *a2;
  }

  return memcmp(a1, a2, v3) == 0;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,espresso_buffer_t>,void *>>>::operator()[abi:ne200100](char a1, void **__p)
{
  if (a1)
  {
    if (*(__p + 39) < 0)
    {
      operator delete(__p[2]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void sub_2404A8B94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  objc_sync_exit(v21);

  InstrumentsTraceGuard::~InstrumentsTraceGuard(&a9);
  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<std::string,PixelBufferSharedPtr>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PixelBufferSharedPtr>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PixelBufferSharedPtr>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PixelBufferSharedPtr>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(void *a1, void *a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_2404A90B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,PixelBufferSharedPtr>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,PixelBufferSharedPtr>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

unint64_t std::__hash_table<std::__hash_value_type<std::string,PixelBufferSharedPtr>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PixelBufferSharedPtr>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PixelBufferSharedPtr>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PixelBufferSharedPtr>>>::__erase_unique<std::string>(uint64_t *a1, void *a2)
{
  result = std::__string_hash<char>::operator()[abi:ne200100](a2);
  v5 = a1[1];
  if (v5)
  {
    v6 = result;
    v7 = vcnt_s8(v5);
    v7.i16[0] = vaddlv_u8(v7);
    v8 = v7.u32[0];
    if (v7.u32[0] > 1uLL)
    {
      v9 = result;
      if (result >= *&v5)
      {
        v9 = result % *&v5;
      }
    }

    else
    {
      v9 = (*&v5 - 1) & result;
    }

    v10 = *a1;
    v11 = *(*a1 + 8 * v9);
    if (v11)
    {
      v12 = *v11;
      if (*v11)
      {
        v13 = *&v5 - 1;
        do
        {
          v14 = v12[1];
          if (v14 == v6)
          {
            result = std::equal_to<std::string>::operator()[abi:ne200100](v12 + 2, a2);
            if (result)
            {
              v15 = v12[1];
              if (v8 > 1)
              {
                if (v15 >= *&v5)
                {
                  v15 %= *&v5;
                }
              }

              else
              {
                v15 &= v13;
              }

              v16 = *(v10 + 8 * v15);
              do
              {
                v17 = v16;
                v16 = *v16;
              }

              while (v16 != v12);
              if (v17 == a1 + 2)
              {
                goto LABEL_36;
              }

              v18 = v17[1];
              if (v8 > 1)
              {
                if (v18 >= *&v5)
                {
                  v18 %= *&v5;
                }
              }

              else
              {
                v18 &= v13;
              }

              if (v18 != v15)
              {
LABEL_36:
                if (!*v12)
                {
                  goto LABEL_37;
                }

                v19 = *(*v12 + 8);
                if (v8 > 1)
                {
                  if (v19 >= *&v5)
                  {
                    v19 %= *&v5;
                  }
                }

                else
                {
                  v19 &= v13;
                }

                if (v19 != v15)
                {
LABEL_37:
                  *(v10 + 8 * v15) = 0;
                }
              }

              v20 = *v12;
              if (*v12)
              {
                v21 = *(v20 + 8);
                if (v8 > 1)
                {
                  if (v21 >= *&v5)
                  {
                    v21 %= *&v5;
                  }
                }

                else
                {
                  v21 &= v13;
                }

                if (v21 != v15)
                {
                  *(*a1 + 8 * v21) = v17;
                  v20 = *v12;
                }
              }

              *v17 = v20;
              *v12 = 0;
              --a1[3];
              v22[0] = v12;
              v22[1] = a1;
              v23 = 1;
              memset(v24, 0, sizeof(v24));
              return std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,PixelBufferSharedPtr>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,PixelBufferSharedPtr>,void *>>>>::~unique_ptr[abi:ne200100](v22);
            }
          }

          else
          {
            if (v8 > 1)
            {
              if (v14 >= *&v5)
              {
                v14 %= *&v5;
              }
            }

            else
            {
              v14 &= v13;
            }

            if (v14 != v9)
            {
              return result;
            }
          }

          v12 = *v12;
        }

        while (v12);
      }
    }
  }

  return result;
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,PixelBufferSharedPtr>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,PixelBufferSharedPtr>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,PixelBufferSharedPtr>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void sub_2404A96F0(_Unwind_Exception *a1)
{
  v5 = v3;

  objc_sync_exit(v2);
  _Unwind_Resume(a1);
}

void sub_2404AA064(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  InstrumentsTraceGuard::~InstrumentsTraceGuard(va);

  _Unwind_Resume(a1);
}

void sub_2404AA824(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, char *a43, uint64_t a44, std::runtime_error a45)
{
  std::__tree<std::__value_type<std::string,docopt::value>,std::__map_value_compare<std::string,std::__value_type<std::string,docopt::value>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,docopt::value>>>::destroy(a43);

  _Unwind_Resume(a1);
}

void docopt::DocoptExitHelp::~DocoptExitHelp(std::runtime_error *this)
{
  std::runtime_error::~runtime_error(this);

  JUMPOUT(0x245CC10E0);
}

void docopt::DocoptLanguageError::~DocoptLanguageError(std::runtime_error *this)
{
  std::runtime_error::~runtime_error(this);

  JUMPOUT(0x245CC10E0);
}

void docopt::DocoptArgumentError::~DocoptArgumentError(std::runtime_error *this)
{
  std::runtime_error::~runtime_error(this);

  JUMPOUT(0x245CC10E0);
}

uint64_t std::__hash_table<std::__hash_value_type<e5rt_surface_format_t,std::vector<unsigned int>>,std::__unordered_map_hasher<e5rt_surface_format_t,std::__hash_value_type<e5rt_surface_format_t,std::vector<unsigned int>>,std::hash<e5rt_surface_format_t>,std::equal_to<e5rt_surface_format_t>,true>,std::__unordered_map_equal<e5rt_surface_format_t,std::__hash_value_type<e5rt_surface_format_t,std::vector<unsigned int>>,std::equal_to<e5rt_surface_format_t>,std::hash<e5rt_surface_format_t>,true>,std::allocator<std::__hash_value_type<e5rt_surface_format_t,std::vector<unsigned int>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = v2[3];
      if (v4)
      {
        v2[4] = v4;
        operator delete(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

void sub_2404AC7A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = ADEspressoRunnerV2;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_2404ACA90(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  InstrumentsTraceGuard::~InstrumentsTraceGuard(va);
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void dummyOpRelinquishFunction(const void *a1, unint64_t (*a2)(const void *))
{
  v5 = *MEMORY[0x277D85DE8];
  if (ADDebugUtilsADVerboseLogsEnabled == 1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v4 = a1;
      _os_log_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "espresso runner relinquishing dummy stream operation %p", buf, 0xCu);
      if (!a1)
      {
        return;
      }

      goto LABEL_7;
    }

LABEL_6:
    if (!a1)
    {
      return;
    }

    goto LABEL_7;
  }

  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    goto LABEL_6;
  }

  *buf = 134217984;
  v4 = a1;
  _os_log_debug_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "espresso runner relinquishing dummy stream operation %p", buf, 0xCu);
  if (!a1)
  {
    return;
  }

LABEL_7:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v4 = a1;
    _os_log_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "relinquished dummy op %p", buf, 0xCu);
  }

  e5rt_execution_stream_operation_release();
}

void sub_2404ADE94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  objc_sync_exit(v13);

  InstrumentsTraceGuard::~InstrumentsTraceGuard(&a12);
  _Unwind_Resume(a1);
}

void sub_2404AEE64(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    JUMPOUT(0x2404AE838);
  }

  _Unwind_Resume(exception_object);
}

void sub_2404AF430(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    JUMPOUT(0x2404AF1BCLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_2404AFC94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    JUMPOUT(0x2404AF984);
  }

  _Unwind_Resume(exception_object);
}

void sub_2404B0B80(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    JUMPOUT(0x2404B0850);
  }

  _Unwind_Resume(exc_buf);
}

void sub_2404B170C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  if (a2)
  {

    objc_begin_catch(exception_object);
    JUMPOUT(0x2404B11C4);
  }

  _Unwind_Resume(exception_object);
}

void createOperationInputsOutputsDescription(e5rt_execution_stream_operation *a1)
{
  objc_opt_new();
  e5rt_execution_stream_operation_get_num_inputs();
  e5rt_execution_stream_operation_get_num_outputs();
  operator new[]();
}

void sub_2404B1E50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  docopt::value::~value(va);

  _Unwind_Resume(a1);
}

void sub_2404B2B80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  v20 = v19;

  _Unwind_Resume(a1);
}

void sub_2404B3B90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = ADPreferencesObserver;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_2404B46B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  objc_sync_exit(v12);

  _Unwind_Resume(a1);
}

void sub_2404B4A04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, objc_super a11)
{
  a11.super_class = ADPreferences;
  [(_Unwind_Exception *)&a11 dealloc];
  _Unwind_Resume(a1);
}

uint64_t appledepth::JasperPointCloud::additionalData(appledepth::JasperPointCloud *this)
{
  v1 = *(this + 1);
  if (*(v1 + 104))
  {
    return v1 + *(v1 + 112);
  }

  else
  {
    return 0;
  }
}

uint64_t appledepth::JasperPointCloud::requiredStorageBytesForLength(appledepth::JasperPointCloud *this, uint64_t a2)
{
  v5[11] = *MEMORY[0x277D85DE8];
  v4 = 0;
  calculateOffsetsForLength(this, v5, &v4);
  return v4 + a2;
}

void ___ZL14InitAttributesv_block_invoke()
{
  if (!ATTRIBUTES_INFO)
  {
    operator new[]();
  }
}

uint64_t appledepth::JasperPointCloud::prepareStorage(uint64_t this, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[11] = *MEMORY[0x277D85DE8];
  if (this)
  {
    v7 = this;
    v9 = 0;
    calculateOffsetsForLength(a3, v10, &v9);
    if (v9 + a4 <= a2)
    {
      *v7 = 2;
      *(v7 + 8) = a3;
      v10[0] = 0;
      calculateOffsetsForLength(a3, (v7 + 16), v10);
      v8 = v10[0];
      *(v7 + 104) = a4;
      *(v7 + 112) = v8;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return this;
}

appledepth::JasperPointCloud *appledepth::JasperPointCloud::JasperPointCloud(appledepth::JasperPointCloud *this)
{
  *this = 0;
  *(this + 1) = 0;
  if (InitAttributes(void)::once[0] != -1)
  {
    dispatch_once(InitAttributes(void)::once, &__block_literal_global_1543);
  }

  return this;
}

{
  *this = 0;
  *(this + 1) = 0;
  if (InitAttributes(void)::once[0] != -1)
  {
    dispatch_once(InitAttributes(void)::once, &__block_literal_global_1543);
  }

  return this;
}

_OWORD *appledepth::JasperPointCloud::JasperPointCloud(_OWORD *a1, __int128 *a2)
{
  v3 = *a2;
  *a2 = 0;
  *a1 = v3;
  if (InitAttributes(void)::once[0] != -1)
  {
    dispatch_once(InitAttributes(void)::once, &__block_literal_global_1543);
  }

  return a1;
}

{
  v3 = *a2;
  *a2 = 0;
  *a1 = v3;
  if (InitAttributes(void)::once[0] != -1)
  {
    dispatch_once(InitAttributes(void)::once, &__block_literal_global_1543);
  }

  return a1;
}

BOOL appledepth::JasperPointCloud::initWithPreparedStorage(appledepth::JasperPointCloud *this, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = *this;
  *this = 0;
  if (v4)
  {
    MEMORY[0x245CC10C0](v4, 0x1000C8077774924);
  }

  v5 = a2[1];
  *(this + 1) = a2;
  *(this + 2) = v5;
  v6 = *a2;
  if (*a2 != 2)
  {
    if (v6 == 1)
    {
      a2[13] = 0;
      *a2 = 2;
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v8[0] = 67109376;
      v8[1] = v6;
      v9 = 1024;
      v10 = 2;
      _os_log_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Got a jspp format with unknown version (%d). Will assume its compatible with known version (%d)", v8, 0xEu);
      v5 = *(*(this + 1) + 8);
    }
  }

  return v5 != 0;
}

uint64_t appledepth::JasperPointCloud::reset(appledepth::JasperPointCloud *this)
{
  result = *this;
  *this = 0;
  if (result)
  {
    result = MEMORY[0x245CC10C0](result, 0x1000C8077774924);
  }

  *(this + 1) = 0;
  return result;
}

void appledepth::JasperPointCloud::initWithLength(appledepth::JasperPointCloud *this, uint64_t a2)
{
  v6[11] = *MEMORY[0x277D85DE8];
  v4 = *this;
  *this = 0;
  if (v4)
  {
    MEMORY[0x245CC10C0](v4, 0x1000C8077774924);
  }

  *(this + 1) = 0;
  v5 = 0;
  calculateOffsetsForLength(a2, v6, &v5);
  operator new[]();
}

BOOL appledepth::JasperPointCloud::resize(appledepth::JasperPointCloud *this, unint64_t a2)
{
  v2 = *(this + 2);
  if (v2 >= a2)
  {
    *(*(this + 1) + 8) = a2;
  }

  return v2 >= a2;
}

void appledepth::JasperPointCloud::blacken(appledepth::JasperPointCloud *this)
{
  v2 = ATTRIBUTES_INFO;
  for (i = 16; i != 104; i += 8)
  {
    v4 = *v2;
    v2 += 2;
    bzero((*(this + 1) + *(*(this + 1) + i)), *(this + 2) * v4);
  }

  v5 = *(this + 1);
  v6 = *(v5 + 104);
  if (v6)
  {
    v7 = (v5 + *(v5 + 112));
  }

  else
  {
    v7 = 0;
  }

  bzero(v7, v6);
}

uint64_t appledepth::JasperPointCloud::initByMerging(appledepth::JasperPointCloud *this, uint64_t a2, const appledepth::JasperPointCloud **a3)
{
  if (a2)
  {
    v5 = 0;
    v6 = a3;
    v7 = a2;
    while (1)
    {
      v8 = *(*v6 + 1);
      if (v8)
      {
        v8 = *(v8 + 8);
      }

      v5 += v8;
      ++v6;
      if (!--v7)
      {
        appledepth::JasperPointCloud::initWithLength(this, v5);
      }
    }
  }

  v9 = *this;
  *this = 0;
  if (v9)
  {
    MEMORY[0x245CC10C0](v9, 0x1000C8077774924, a3);
  }

  *(this + 1) = 0;
  return 0;
}

uint64_t appledepth::JasperPointCloud::replacePoints(appledepth::JasperPointCloud *this, uint64_t a2, uint64_t a3, const appledepth::JasperPointCloud *a4, uint64_t a5)
{
  v10 = *(this + 1);
  if (v10)
  {
    v10 = *(v10 + 8);
  }

  if (a3 + a2 > v10)
  {
    return 0;
  }

  v11 = *(a4 + 1);
  if (v11)
  {
    v11 = *(v11 + 8);
  }

  if (a5 + a3 > v11)
  {
    return 0;
  }

  v13 = ATTRIBUTES_INFO;
  for (i = 16; i != 104; i += 8)
  {
    v15 = *v13;
    v13 += 2;
    memcpy((*(this + 1) + *(*(this + 1) + i) + v15 * a2), (*(a4 + 1) + *(*(a4 + 1) + i) + v15 * a5), v15 * a3);
  }

  return 1;
}

uint64_t appledepth::JasperPointCloud::length(appledepth::JasperPointCloud *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    return *(v1 + 8);
  }

  else
  {
    return 0;
  }
}

void appledepth::JasperPointCloud::initByCloning(appledepth::JasperPointCloud *this, const appledepth::JasperPointCloud *a2)
{
  v4 = *this;
  *this = 0;
  if (v4)
  {
    MEMORY[0x245CC10C0](v4, 0x1000C8077774924);
  }

  *(this + 1) = 0;
  v5 = *(a2 + 1);
  if (v5)
  {
    v6 = *(v5 + 8);
  }

  else
  {
    v6 = 0;
  }

  appledepth::JasperPointCloud::initWithLength(this, v6);
}

void appledepth::JasperPointCloud::~JasperPointCloud(appledepth::JasperPointCloud *this)
{
  v2 = *this;
  *this = 0;
  if (v2)
  {
    MEMORY[0x245CC10C0](v2, 0x1000C8077774924);
  }
}

{
  v2 = *this;
  *this = 0;
  if (v2)
  {
    MEMORY[0x245CC10C0](v2, 0x1000C8077774924);
  }
}

uint64_t appledepth::JasperPointCloud::totalSize(appledepth::JasperPointCloud *this)
{
  v5[11] = *MEMORY[0x277D85DE8];
  v1 = *(this + 2);
  v2 = *(*(this + 1) + 104);
  v4 = 0;
  calculateOffsetsForLength(v1, v5, &v4);
  return v4 + v2;
}

uint64_t appledepth::JasperPointCloud::merge@<X0>(appledepth::JasperPointCloud *this@<X0>, appledepth::JasperPointCloud **a2@<X1>, appledepth::JasperPointCloud *a3@<X8>)
{
  *a3 = 0;
  *(a3 + 1) = 0;
  if (InitAttributes(void)::once[0] != -1)
  {
    dispatch_once(InitAttributes(void)::once, &__block_literal_global_1543);
  }

  return appledepth::JasperPointCloud::initByMerging(a3, this, a2);
}

void sub_2404B5A64(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  *v1 = 0;
  if (v3)
  {
    MEMORY[0x245CC10C0](v3, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

const __CFNumber *appledepth::JasperPointCloud::makeWithDictionaryRepresentation@<X0>(CFDictionaryRef theDict@<X0>, appledepth::JasperPointCloud *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0;
  if (InitAttributes(void)::once[0] != -1)
  {
    dispatch_once(InitAttributes(void)::once, &__block_literal_global_1543);
  }

  return appledepth::JasperPointCloud::initWithDictionaryRepresentation(a2, theDict);
}

void sub_2404B5AEC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  *v1 = 0;
  if (v3)
  {
    MEMORY[0x245CC10C0](v3, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

const __CFNumber *appledepth::JasperPointCloud::initWithDictionaryRepresentation(appledepth::JasperPointCloud *this, CFDictionaryRef theDict)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = *this;
  *this = 0;
  if (v4)
  {
    MEMORY[0x245CC10C0](v4, 0x1000C8077774924);
  }

  *(this + 1) = 0;
  result = CFDictionaryGetValue(theDict, @"Length");
  if (result || (result = CFDictionaryGetValue(theDict, @"Size")) != 0)
  {
    v6 = result;
    v7 = CFGetTypeID(result);
    if (v7 == CFNumberGetTypeID())
    {
      valuePtr = 0;
      result = CFNumberGetValue(v6, kCFNumberIntType, &valuePtr);
      if (!result)
      {
        return result;
      }

      Value = CFDictionaryGetValue(theDict, @"AdditionalData");
      v9 = Value;
      if (!Value)
      {
        goto LABEL_10;
      }

      v10 = CFGetTypeID(Value);
      if (v10 == CFDataGetTypeID())
      {
        CFDataGetLength(v9);
LABEL_10:
        appledepth::JasperPointCloud::initWithLength(this, valuePtr);
      }
    }

    return 0;
  }

  return result;
}

uint64_t readField<CGPoint>(const __CFDictionary *a1, uint64_t a2, void *a3, const __CFString *a4, void *a5)
{
  v30 = *MEMORY[0x277D85DE8];
  v9 = a5;
  Value = CFDictionaryGetValue(a1, a4);
  if (Value)
  {
LABEL_13:
    v17 = CFGetTypeID(Value);
    if (v17 == CFDataGetTypeID())
    {
      Length = CFDataGetLength(Value);
      if (Length == 16 * a2)
      {
        BytePtr = CFDataGetBytePtr(Value);
        memcpy(a3, BytePtr, Length);
        v16 = 1;
        goto LABEL_18;
      }
    }

LABEL_17:
    v16 = 0;
    goto LABEL_18;
  }

  v22 = a3;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v12)
  {
    v13 = *v24;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v23 + 1) + 8 * i);
        Value = CFDictionaryGetValue(a1, v15);

        if (Value)
        {

          a3 = v22;
          goto LABEL_13;
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v23 objects:v29 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    CStringPtr = CFStringGetCStringPtr(a4, 0x8000100u);
    *buf = 136315138;
    v28 = CStringPtr;
    _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "can't find %s in dictionaryRepresentation", buf, 0xCu);
    goto LABEL_17;
  }

  v16 = 0;
LABEL_18:

  return v16;
}

uint64_t readField<float>(const __CFDictionary *a1, uint64_t a2, void *a3, const __CFString *a4, void *a5)
{
  v30 = *MEMORY[0x277D85DE8];
  v9 = a5;
  Value = CFDictionaryGetValue(a1, a4);
  if (Value)
  {
LABEL_13:
    v17 = CFGetTypeID(Value);
    if (v17 == CFDataGetTypeID())
    {
      Length = CFDataGetLength(Value);
      if (Length == 4 * a2)
      {
        BytePtr = CFDataGetBytePtr(Value);
        memcpy(a3, BytePtr, Length);
        v16 = 1;
        goto LABEL_18;
      }
    }

LABEL_17:
    v16 = 0;
    goto LABEL_18;
  }

  v22 = a3;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v12)
  {
    v13 = *v24;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v23 + 1) + 8 * i);
        Value = CFDictionaryGetValue(a1, v15);

        if (Value)
        {

          a3 = v22;
          goto LABEL_13;
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v23 objects:v29 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    CStringPtr = CFStringGetCStringPtr(a4, 0x8000100u);
    *buf = 136315138;
    v28 = CStringPtr;
    _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "can't find %s in dictionaryRepresentation", buf, 0xCu);
    goto LABEL_17;
  }

  v16 = 0;
LABEL_18:

  return v16;
}

uint64_t readField<unsigned char>(const __CFDictionary *a1, size_t a2, void *a3, const __CFString *a4, void *a5)
{
  v29 = *MEMORY[0x277D85DE8];
  v9 = a5;
  Value = CFDictionaryGetValue(a1, a4);
  if (Value)
  {
LABEL_13:
    v17 = CFGetTypeID(Value);
    if (v17 == CFDataGetTypeID() && CFDataGetLength(Value) == a2)
    {
      BytePtr = CFDataGetBytePtr(Value);
      memcpy(a3, BytePtr, a2);
      v16 = 1;
      goto LABEL_18;
    }

LABEL_17:
    v16 = 0;
    goto LABEL_18;
  }

  v21 = a3;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v12)
  {
    v13 = *v23;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v22 + 1) + 8 * i);
        Value = CFDictionaryGetValue(a1, v15);

        if (Value)
        {

          a3 = v21;
          goto LABEL_13;
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v22 objects:v28 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    CStringPtr = CFStringGetCStringPtr(a4, 0x8000100u);
    *buf = 136315138;
    v27 = CStringPtr;
    _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "can't find %s in dictionaryRepresentation", buf, 0xCu);
    goto LABEL_17;
  }

  v16 = 0;
LABEL_18:

  return v16;
}

uint64_t readField<unsigned int>(CFDictionaryRef theDict, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  Value = CFDictionaryGetValue(theDict, @"Flags");
  if (!Value)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = [0 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (!v7)
    {
LABEL_10:
      bzero(a3, 4 * a2);
      return 1;
    }

    v8 = *v17;
LABEL_4:
    v9 = 0;
    while (1)
    {
      if (*v17 != v8)
      {
        objc_enumerationMutation(0);
      }

      v10 = *(*(&v16 + 1) + 8 * v9);
      Value = CFDictionaryGetValue(theDict, v10);

      if (Value)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [0 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v7)
        {
          goto LABEL_4;
        }

        goto LABEL_10;
      }
    }
  }

  v11 = CFGetTypeID(Value);
  if (v11 != CFDataGetTypeID())
  {
    return 0;
  }

  Length = CFDataGetLength(Value);
  if (Length != 4 * a2)
  {
    return 0;
  }

  BytePtr = CFDataGetBytePtr(Value);
  memcpy(a3, BytePtr, Length);
  return 1;
}

uint64_t appledepth::JasperPointCloud::initByApplyingFilters(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, float a5, float a6, float a7, float a8, float a9)
{
  v10 = *(a2 + 8);
  v11 = v10[1];
  if (v11)
  {
    v20 = 0;
    v21 = 0;
    while (1)
    {
      ValidEchosForPointIndex = getValidEchosForPointIndex(v10 + v10[2], v10 + v10[3], v10 + v10[11], v10 + v10[10], v10 + v10[9], v20, v11, a3, a5, a8, a9, a4, v43);
      if ((ValidEchosForPointIndex & 0x80000000) != 0)
      {
        break;
      }

      if (ValidEchosForPointIndex)
      {
        v23 = 0;
        if (ValidEchosForPointIndex >= 3)
        {
          v24 = 3;
        }

        else
        {
          v24 = ValidEchosForPointIndex;
        }

        v25 = 4 * v20;
        v26 = 16 * v20;
        do
        {
          if (v43[v23] == 1)
          {
            v27 = *(a2 + 8) + *(*(a2 + 8) + 16);
            v28 = *(v27 + v26 + 8);
            if (v28 >= a6 && v28 <= a7)
            {
              *(*(a1 + 8) + *(*(a1 + 8) + 16) + 16 * v21) = *(v27 + 16 * v20 + 16 * v23);
              v30 = *(a2 + 8);
              v31 = *(v30 + 32);
              v32 = *(a1 + 8);
              v33 = *(v32 + 32);
              *(v32 + *(v32 + 24) + 4 * v21) = *(v30 + v25 + *(v30 + 24) + 4 * v23);
              *(v32 + v33 + 16 * v21) = *(v30 + v31 + v26);
              *(*(a1 + 8) + *(*(a1 + 8) + 40) + 16 * v21) = *(*(a2 + 8) + *(*(a2 + 8) + 40) + v26);
              v34 = *(a2 + 8);
              v35 = v34[7];
              v36 = *(a1 + 8);
              v37 = v36[7];
              *(v36 + 4 * v21 + v36[6]) = *(v34 + 4 * v23 + v25 + v34[6]);
              *(v36 + 4 * v21 + v37) = *(v34 + 4 * v23 + v25 + v35);
              v38 = v34[9];
              v39 = v36[9];
              *(v36 + 4 * v21 + v36[8]) = *(v34 + 4 * v23 + v25 + v34[8]);
              *(v36 + v39 + v21) = *(v34 + v20 + v38 + v23);
              *(*(a1 + 8) + *(*(a1 + 8) + 80) + v21) = *(*(a2 + 8) + v20 + *(*(a2 + 8) + 80) + v23);
              *(*(a1 + 8) + *(*(a1 + 8) + 88) + v21) = *(*(a2 + 8) + v20 + *(*(a2 + 8) + 88) + v23);
              *(*(a1 + 8) + *(*(a1 + 8) + 96) + 4 * v21++) = *(*(a2 + 8) + v25 + *(*(a2 + 8) + 96) + 4 * v23);
            }
          }

          ++v23;
          v26 += 16;
        }

        while (v24 != v23);
      }

      v20 += ValidEchosForPointIndex;
      v10 = *(a2 + 8);
      v11 = v10[1];
      if (v20 >= v11)
      {
        v40 = v21;
        goto LABEL_20;
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "bad point cloud format", buf, 2u);
    }

    return -22974;
  }

  else
  {
    v40 = 0;
LABEL_20:
    result = 0;
    *(*(a1 + 8) + 8) = v40;
  }

  return result;
}

uint64_t getValidEchosForPointIndex(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, float a9, float a10, float a11, unint64_t a12, uint64_t a13)
{
  v13 = 0;
  v40[6] = *MEMORY[0x277D85DE8];
  *(a13 + 2) = 0;
  *a13 = 0;
  v14 = *(a4 + a6);
  v15 = a5 + a6;
  v16 = *(a5 + a6);
  v38 = 0;
  v37 = 0;
  v17 = a1 + 16 * a6;
  while (1)
  {
    if (v16 != *(v15 + v13))
    {
      result = v13;
LABEL_12:
      if (((1 << v16) & a12) != 0)
      {
        v20 = a8 != 1;
        v21 = a8 == 1 ? 1 : 3;
        if (a8 == 5)
        {
          v20 = 0;
          v22 = 2;
        }

        else
        {
          v22 = v21;
        }

        v23 = a8 && v20;
        v24 = a8 ? v22 : 0;
        if (result)
        {
          v25 = 0;
          v26 = v40;
          v27 = v40;
          do
          {
            if (v23 || v24 == v34[v25])
            {
              v28 = *v27 > a10 && *(&v37 + v25) >= a9 || *v27 <= a10 && *(&v37 + v25) >= a11;
              *(a13 + v25) = v28;
            }

            ++v25;
            v27 += 4;
          }

          while (result != v25);
          v29 = 0;
          v30 = 0;
          do
          {
            v30 += *(a13 + v29++);
          }

          while (result != v29);
          if (v30 > 1)
          {
            if (a8 == 4)
            {
              *(a13 + 2) = 0;
              *a13 = 0;
            }

            else if (a8 == 2)
            {
              v31 = 0;
              v32 = 0;
              v33 = 1.0e10;
              do
              {
                if (*(a13 + v31) == 1 && *v26 < v33)
                {
                  v32 = v31;
                  v33 = *v26;
                }

                ++v31;
                v26 += 4;
              }

              while (result != v31);
              *(a13 + 2) = 0;
              *a13 = 0;
              *(a13 + v32) = 1;
            }
          }
        }
      }

      return result;
    }

    if (a6 + v13 >= a7 || v13 > 2)
    {
      break;
    }

    *&v39[16 * v13] = *(v17 + 16 * v13);
    *(&v37 + v13) = *(a2 + 4 * a6 + 4 * v13);
    v34[v13] = *(a3 + a6 + v13);
    result = v13 + 1;
    v19 = *(a4 + a6 + 1 + v13++);
    if (v14 != v19)
    {
      goto LABEL_12;
    }
  }

  result = v13;
  if (a6 + v13 >= a7)
  {
    goto LABEL_12;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    v36 = 3;
    _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Error: Found more than %d echos. this is not supported and may indicate incorrect point cloud format", buf, 8u);
  }

  return 0xFFFFFFFFLL;
}

uint64_t appledepth::JasperPointCloud::projectJasperPoints(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, __CVBuffer *a6, int a7, CGFloat a8, CGFloat a9, CGFloat a10, CGFloat a11, float a12, float a13, float a14, float a15, float a16)
{
  v217 = *MEMORY[0x277D85DE8];
  v208 = 335678764;
  v209 = 0u;
  v210 = 0u;
  kdebug_trace();
  if (a6)
  {
    pixelBuffer = a6;
    PixelFormatType = CVPixelBufferGetPixelFormatType(a6);
    v26 = PixelFormatType;
    if (PixelFormatType <= 1751410031)
    {
      if (PixelFormatType != 1717855600)
      {
        if (PixelFormatType == 1717856627)
        {
          Width = CVPixelBufferGetWidth(pixelBuffer);
          Height = CVPixelBufferGetHeight(pixelBuffer);
          BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBuffer);
          v30 = *(a1 + 8);
          v31 = *(v30 + 32);
          v190 = v30;
          v186 = *(v30 + 16);
          v218.origin.x = a8;
          v218.origin.y = a9;
          v218.size.width = a10;
          v218.size.height = a11;
          IsEmpty = CGRectIsEmpty(v218);
          v33 = Width;
          v34 = Height;
          if (IsEmpty)
          {
            if ((a2 & 0xFFFFFFFFFFFFFFFDLL) != 0)
            {
              a10 = Height;
            }

            else
            {
              a10 = Width;
            }

            if ((a2 & 0xFFFFFFFFFFFFFFFDLL) != 0)
            {
              a11 = Width;
            }

            else
            {
              a11 = Height;
            }

            a8 = 0.0;
            a9 = 0.0;
          }

          v35 = 1.0;
          if (a2 > 1)
          {
            if (a2 != 2)
            {
              v36 = 1.0;
              if (a2 != 3)
              {
                goto LABEL_74;
              }

LABEL_62:
              v35 = v34 / a10;
              v68 = v33 / a11;
LABEL_73:
              v36 = v68;
              goto LABEL_74;
            }
          }

          else if (a2)
          {
            v36 = 1.0;
            if (a2 != 1)
            {
LABEL_74:
              CVPixelBufferLockBaseAddress(pixelBuffer, 0);
              BaseAddress = CVPixelBufferGetBaseAddress(pixelBuffer);
              if (a7)
              {
                DataSize = CVPixelBufferGetDataSize(pixelBuffer);
                bzero(BaseAddress, DataSize);
              }

              *buf = 0u;
              v213 = 0u;
              v214 = 1065353216;
              v73 = *(a1 + 8);
              v74 = v73[1];
              if (v74)
              {
                v75 = 0;
                v196 = BytesPerRow >> 2;
                v76 = v35;
                v77 = (a10 * v35);
                v78 = v36;
                v79 = v77;
                v80 = (a11 * v36);
                v180 = v31 + v190 + 8;
                while (1)
                {
                  ValidEchosForPointIndex = getValidEchosForPointIndex(v186 + v190, v73 + v73[3], v73 + v73[11], v73 + v73[10], v73 + v73[9], v75, v74, a3, a12, a15, a16, a4, v215);
                  if ((ValidEchosForPointIndex & 0x80000000) != 0)
                  {
                    goto LABEL_232;
                  }

                  v84 = ValidEchosForPointIndex;
                  if (ValidEchosForPointIndex)
                  {
                    break;
                  }

LABEL_111:
                  v75 += v84;
                  v73 = *(a1 + 8);
                  v74 = v73[1];
                  if (v75 >= v74)
                  {
                    goto LABEL_231;
                  }
                }

                if (ValidEchosForPointIndex >= 3)
                {
                  v85 = 3;
                }

                else
                {
                  v85 = ValidEchosForPointIndex;
                }

                v86 = (v180 + 16 * v75);
                v87 = v186 + 16 * v75 + v190;
                v88 = v215;
                while (1)
                {
                  v89 = *v88++;
                  if (v89 != 1)
                  {
                    goto LABEL_110;
                  }

                  *&v83 = (*(v86 - 1) - a8) * v76;
                  *&v82 = (*v86 - a9) * v78;
                  *&v90 = __PAIR64__(v82, v83);
                  DWORD2(v90) = *(v87 + 8);
                  if (a2 == 1)
                  {
                    break;
                  }

                  if (a2 == 2)
                  {
                    *&v83 = v79 - *&v83;
                    *(&v83 + 1) = v80 - *&v82;
                    DWORD2(v83) = *(v87 + 8);
                    v90 = v83;
                  }

                  else if (a2 == 3)
                  {
                    *&v82 = v80 - *&v82;
                    *(&v82 + 1) = (*(v86 - 1) - a8) * v76;
LABEL_91:
                    DWORD2(v82) = *(v87 + 8);
                    v90 = v82;
                  }

                  v91 = *&v90;
                  if (*&v90 < Width && (v91 & 0x80000000) == 0)
                  {
                    v92 = *(&v90 + 1);
                    if (*(&v90 + 1) < Height && (v92 & 0x80000000) == 0)
                    {
                      v93 = *(&v90 + 2);
                      if (*(&v90 + 2) >= a13 && *(&v90 + 2) <= a14)
                      {
                        v95 = v91 + v196 * v92;
                        v211 = v95;
                        if (!a5)
                        {
                          goto LABEL_107;
                        }

                        v96 = std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::find<int>(*buf, *&buf[8], v95);
                        if (!v96 || a5 != 1 && (a5 != 2 || *(v96 + 5) >= v93))
                        {
                          *v216 = &v211;
                          *(std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(buf, v95) + 5) = v93;
LABEL_107:
                          v97 = v93 / 1000.0;
                          if ((v93 / 1000.0) != 0.0)
                          {
                            v97 = 1.0 / (v93 / 1000.0);
                          }

                          *(BaseAddress + v211) = v97;
                        }
                      }
                    }
                  }

LABEL_110:
                  v86 += 2;
                  v87 += 16;
                  if (!--v85)
                  {
                    goto LABEL_111;
                  }
                }

                *(&v82 + 1) = v79 - *&v83;
                goto LABEL_91;
              }

              goto LABEL_231;
            }

            goto LABEL_62;
          }

          v35 = v33 / a10;
          v68 = v34 / a11;
          goto LABEL_73;
        }

        goto LABEL_34;
      }

      v48 = CVPixelBufferGetWidth(pixelBuffer);
      v49 = CVPixelBufferGetHeight(pixelBuffer);
      v50 = CVPixelBufferGetBytesPerRow(pixelBuffer);
      v51 = *(a1 + 8);
      v52 = *(v51 + 32);
      v194 = v51;
      v192 = *(v51 + 16);
      v220.origin.x = a8;
      v220.origin.y = a9;
      v220.size.width = a10;
      v220.size.height = a11;
      v53 = CGRectIsEmpty(v220);
      v54 = v48;
      v55 = v49;
      if (v53)
      {
        if ((a2 & 0xFFFFFFFFFFFFFFFDLL) != 0)
        {
          a10 = v49;
        }

        else
        {
          a10 = v48;
        }

        if ((a2 & 0xFFFFFFFFFFFFFFFDLL) != 0)
        {
          a11 = v48;
        }

        else
        {
          a11 = v49;
        }

        a8 = 0.0;
        a9 = 0.0;
      }

      v56 = 1.0;
      if (a2 > 1)
      {
        if (a2 != 2)
        {
          v57 = 1.0;
          if (a2 != 3)
          {
            goto LABEL_156;
          }

LABEL_68:
          v56 = v55 / a10;
          v70 = v54 / a11;
LABEL_155:
          v57 = v70;
          goto LABEL_156;
        }
      }

      else if (a2)
      {
        v57 = 1.0;
        if (a2 != 1)
        {
LABEL_156:
          CVPixelBufferLockBaseAddress(pixelBuffer, 0);
          v188 = CVPixelBufferGetBaseAddress(pixelBuffer);
          if (a7)
          {
            v129 = CVPixelBufferGetDataSize(pixelBuffer);
            bzero(v188, v129);
          }

          *buf = 0u;
          v213 = 0u;
          v214 = 1065353216;
          v130 = *(a1 + 8);
          v131 = v130[1];
          if (v131)
          {
            v132 = 0;
            v198 = v50 >> 2;
            v133 = v56;
            v134 = v57;
            v135 = (a10 * v133);
            v184 = (v52 + v194 + 8);
            v136 = (a11 * v134);
            while (1)
            {
              v137 = getValidEchosForPointIndex(v194 + v192, v130 + v130[3], v130 + v130[11], v130 + v130[10], v130 + v130[9], v132, v131, a3, a12, a15, a16, a4, v215);
              if ((v137 & 0x80000000) != 0)
              {
                goto LABEL_232;
              }

              v140 = v137;
              if (v137)
              {
                break;
              }

LABEL_191:
              v132 += v140;
              v130 = *(a1 + 8);
              v131 = v130[1];
              if (v132 >= v131)
              {
                goto LABEL_231;
              }
            }

            if (v137 >= 3)
            {
              v141 = 3;
            }

            else
            {
              v141 = v137;
            }

            v142 = &v184[16 * v132];
            v143 = v194 + v192 + 16 * v132;
            v144 = v215;
            while (1)
            {
              v145 = *v144++;
              if (v145 != 1)
              {
                goto LABEL_190;
              }

              *&v139 = (*(v142 - 1) - a8) * v133;
              *&v138 = (*v142 - a9) * v134;
              *&v146 = __PAIR64__(v138, v139);
              DWORD2(v146) = *(v143 + 8);
              if (a2 == 1)
              {
                break;
              }

              if (a2 == 2)
              {
                *&v139 = v135 - *&v139;
                *(&v139 + 1) = v136 - *&v138;
                DWORD2(v139) = *(v143 + 8);
                v146 = v139;
              }

              else if (a2 == 3)
              {
                *&v138 = v136 - *&v138;
                *(&v138 + 1) = (*(v142 - 1) - a8) * v133;
LABEL_173:
                DWORD2(v138) = *(v143 + 8);
                v146 = v138;
              }

              v147 = *&v146;
              if (*&v146 >= v48)
              {
                goto LABEL_190;
              }

              if (v147 < 0)
              {
                goto LABEL_190;
              }

              v148 = *(&v146 + 1);
              if (*(&v146 + 1) >= v49 || v148 < 0)
              {
                goto LABEL_190;
              }

              v149 = *(&v146 + 2);
              if (*(&v146 + 2) < a13 || *(&v146 + 2) > a14)
              {
                goto LABEL_190;
              }

              v151 = v147 + v198 * v148;
              v211 = v151;
              if (a5)
              {
                v152 = std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::find<int>(*buf, *&buf[8], v151);
                if (v152 && (a5 == 1 || a5 == 2 && *(v152 + 5) < v149))
                {
                  goto LABEL_190;
                }

                *v216 = &v211;
                *(std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(buf, v151) + 5) = v149;
                v151 = v211;
              }

              *(v188 + v151) = v149 / 1000.0;
LABEL_190:
              v142 += 2;
              v143 += 16;
              if (!--v141)
              {
                goto LABEL_191;
              }
            }

            *(&v138 + 1) = v135 - *&v139;
            goto LABEL_173;
          }

LABEL_231:
          CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
          v37 = 0;
LABEL_235:
          std::__hash_table<std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>>>::~__hash_table(buf);
          goto LABEL_236;
        }

        goto LABEL_68;
      }

      v56 = v54 / a10;
      v70 = v55 / a11;
      goto LABEL_155;
    }

    if (PixelFormatType != 1751410032)
    {
      if (PixelFormatType != 1751411059)
      {
LABEL_34:
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          PixelBufferUtils::pixelFormatAsString(v26, buf);
          v179 = (SBYTE7(v213) & 0x80u) == 0 ? buf : *buf;
          *v216 = 136315138;
          *&v216[4] = v179;
          _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "cannot project jasper points into provided pixel format (%s). please use kCVPixelFormatType_DepthFloat32/16 or kCVPixelFormatType_DisparityFloat32/16", v216, 0xCu);
          if (SBYTE7(v213) < 0)
          {
            operator delete(*buf);
          }
        }

        v37 = -22956;
        goto LABEL_236;
      }

      v38 = CVPixelBufferGetWidth(pixelBuffer);
      v39 = CVPixelBufferGetHeight(pixelBuffer);
      v40 = CVPixelBufferGetBytesPerRow(pixelBuffer);
      v41 = *(a1 + 8);
      v42 = *(v41 + 32);
      v191 = v41;
      v187 = *(v41 + 16);
      v219.origin.x = a8;
      v219.origin.y = a9;
      v219.size.width = a10;
      v219.size.height = a11;
      v43 = CGRectIsEmpty(v219);
      v44 = v38;
      v45 = v39;
      if (v43)
      {
        if ((a2 & 0xFFFFFFFFFFFFFFFDLL) != 0)
        {
          a10 = v39;
        }

        else
        {
          a10 = v38;
        }

        if ((a2 & 0xFFFFFFFFFFFFFFFDLL) != 0)
        {
          a11 = v38;
        }

        else
        {
          a11 = v39;
        }

        a8 = 0.0;
        a9 = 0.0;
      }

      v46 = 1.0;
      if (a2 > 1)
      {
        if (a2 != 2)
        {
          v47 = 1.0;
          if (a2 != 3)
          {
LABEL_115:
            CVPixelBufferLockBaseAddress(pixelBuffer, 0);
            v183 = CVPixelBufferGetBaseAddress(pixelBuffer);
            if (a7)
            {
              v98 = CVPixelBufferGetDataSize(pixelBuffer);
              bzero(v183, v98);
            }

            *buf = 0u;
            v213 = 0u;
            v214 = 1065353216;
            v99 = *(a1 + 8);
            v100 = v99[1];
            if (!v100)
            {
              goto LABEL_231;
            }

            v101 = 0;
            v197 = v40 >> 1;
            v102 = v46;
            v103 = (a10 * v46);
            v104 = v47;
            v105 = v103;
            v106 = (a11 * v47);
            v181 = v42 + v191 + 8;
            while (1)
            {
              v107 = getValidEchosForPointIndex(v187 + v191, v99 + v99[3], v99 + v99[11], v99 + v99[10], v99 + v99[9], v101, v100, a3, a12, a15, a16, a4, v215);
              if ((v107 & 0x80000000) != 0)
              {
                goto LABEL_232;
              }

              v110 = v107;
              if (v107)
              {
                break;
              }

LABEL_152:
              v101 += v110;
              v99 = *(a1 + 8);
              v100 = v99[1];
              if (v101 >= v100)
              {
                goto LABEL_231;
              }
            }

            if (v107 >= 3)
            {
              v111 = 3;
            }

            else
            {
              v111 = v107;
            }

            v112 = (v181 + 16 * v101);
            v113 = v187 + 16 * v101 + v191;
            v114 = v215;
            while (1)
            {
              v115 = *v114++;
              if (v115 != 1)
              {
                goto LABEL_151;
              }

              *&v109 = (*(v112 - 1) - a8) * v102;
              *&v108 = (*v112 - a9) * v104;
              *&v116 = __PAIR64__(v108, v109);
              DWORD2(v116) = *(v113 + 8);
              if (a2 == 1)
              {
                break;
              }

              if (a2 == 2)
              {
                *&v109 = v105 - *&v109;
                *(&v109 + 1) = v106 - *&v108;
                DWORD2(v109) = *(v113 + 8);
                v116 = v109;
              }

              else if (a2 == 3)
              {
                *&v108 = v106 - *&v108;
                *(&v108 + 1) = (*(v112 - 1) - a8) * v102;
LABEL_132:
                DWORD2(v108) = *(v113 + 8);
                v116 = v108;
              }

              v117 = *&v116;
              if (*&v116 < v38 && (v117 & 0x80000000) == 0)
              {
                v118 = *(&v116 + 1);
                if (*(&v116 + 1) < v39 && (v118 & 0x80000000) == 0)
                {
                  v119 = *(&v116 + 2);
                  if (*(&v116 + 2) >= a13 && *(&v116 + 2) <= a14)
                  {
                    v121 = v117 + v197 * v118;
                    v211 = v121;
                    if (!a5)
                    {
                      goto LABEL_148;
                    }

                    v122 = std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::find<int>(*buf, *&buf[8], v121);
                    if (!v122 || a5 != 1 && (a5 != 2 || *(v122 + 5) >= v119))
                    {
                      *v216 = &v211;
                      *(std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(buf, v121) + 5) = v119;
LABEL_148:
                      v123 = v119 / 1000.0;
                      if ((v119 / 1000.0) != 0.0)
                      {
                        v123 = 1.0 / (v119 / 1000.0);
                      }

                      _S0 = v123;
                      __asm { FCVT            H0, S0 }

                      *(v183 + v211) = LOWORD(_S0);
                    }
                  }
                }
              }

LABEL_151:
              v112 += 2;
              v113 += 16;
              if (!--v111)
              {
                goto LABEL_152;
              }
            }

            *(&v108 + 1) = v105 - *&v109;
            goto LABEL_132;
          }

          goto LABEL_65;
        }
      }

      else if (a2)
      {
        v47 = 1.0;
        if (a2 != 1)
        {
          goto LABEL_115;
        }

LABEL_65:
        v46 = v45 / a10;
        v69 = v44 / a11;
LABEL_114:
        v47 = v69;
        goto LABEL_115;
      }

      v46 = v44 / a10;
      v69 = v45 / a11;
      goto LABEL_114;
    }

    v58 = CVPixelBufferGetWidth(pixelBuffer);
    v59 = CVPixelBufferGetHeight(pixelBuffer);
    v60 = CVPixelBufferGetBytesPerRow(pixelBuffer);
    v61 = *(a1 + 8);
    v62 = *(v61 + 32);
    v195 = v61;
    v193 = *(v61 + 16);
    v221.origin.x = a8;
    v221.origin.y = a9;
    v221.size.width = a10;
    v221.size.height = a11;
    v63 = CGRectIsEmpty(v221);
    v64 = v58;
    v65 = v59;
    if (v63)
    {
      if ((a2 & 0xFFFFFFFFFFFFFFFDLL) != 0)
      {
        a10 = v59;
      }

      else
      {
        a10 = v58;
      }

      if ((a2 & 0xFFFFFFFFFFFFFFFDLL) != 0)
      {
        a11 = v58;
      }

      else
      {
        a11 = v59;
      }

      a8 = 0.0;
      a9 = 0.0;
    }

    v66 = 1.0;
    if (a2 > 1)
    {
      if (a2 != 2)
      {
        v67 = 1.0;
        if (a2 != 3)
        {
LABEL_195:
          CVPixelBufferLockBaseAddress(pixelBuffer, 0);
          v189 = CVPixelBufferGetBaseAddress(pixelBuffer);
          if (a7)
          {
            v153 = CVPixelBufferGetDataSize(pixelBuffer);
            bzero(v189, v153);
          }

          *buf = 0u;
          v213 = 0u;
          v214 = 1065353216;
          v154 = *(a1 + 8);
          v155 = v154[1];
          if (!v155)
          {
            goto LABEL_231;
          }

          v156 = 0;
          v199 = v60 >> 1;
          v157 = v66;
          v158 = v67;
          v159 = (a10 * v157);
          v185 = (v62 + v195 + 8);
          v160 = (a11 * v158);
          while (1)
          {
            v161 = getValidEchosForPointIndex(v195 + v193, v154 + v154[3], v154 + v154[11], v154 + v154[10], v154 + v154[9], v156, v155, a3, a12, a15, a16, a4, v215);
            if ((v161 & 0x80000000) != 0)
            {
LABEL_232:
              CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                *v216 = 0;
                _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "bad point cloud format", v216, 2u);
              }

              v37 = -22974;
              goto LABEL_235;
            }

            v164 = v161;
            if (v161)
            {
              break;
            }

LABEL_230:
            v156 += v164;
            v154 = *(a1 + 8);
            v155 = v154[1];
            if (v156 >= v155)
            {
              goto LABEL_231;
            }
          }

          if (v161 >= 3)
          {
            v165 = 3;
          }

          else
          {
            v165 = v161;
          }

          v166 = &v185[16 * v156];
          v167 = v195 + v193 + 16 * v156;
          v168 = v215;
          while (1)
          {
            v169 = *v168++;
            if (v169 != 1)
            {
              goto LABEL_229;
            }

            *&v163 = (*(v166 - 1) - a8) * v157;
            *&v162 = (*v166 - a9) * v158;
            *&v170 = __PAIR64__(v162, v163);
            DWORD2(v170) = *(v167 + 8);
            if (a2 == 1)
            {
              break;
            }

            if (a2 == 2)
            {
              *&v163 = v159 - *&v163;
              *(&v163 + 1) = v160 - *&v162;
              DWORD2(v163) = *(v167 + 8);
              v170 = v163;
            }

            else if (a2 == 3)
            {
              *&v162 = v160 - *&v162;
              *(&v162 + 1) = (*(v166 - 1) - a8) * v157;
LABEL_212:
              DWORD2(v162) = *(v167 + 8);
              v170 = v162;
            }

            v171 = *&v170;
            if (*&v170 >= v58)
            {
              goto LABEL_229;
            }

            if (v171 < 0)
            {
              goto LABEL_229;
            }

            v172 = *(&v170 + 1);
            if (*(&v170 + 1) >= v59 || v172 < 0)
            {
              goto LABEL_229;
            }

            v173 = *(&v170 + 2);
            if (*(&v170 + 2) < a13 || *(&v170 + 2) > a14)
            {
              goto LABEL_229;
            }

            v175 = v171 + v199 * v172;
            v211 = v175;
            if (a5)
            {
              v176 = std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::find<int>(*buf, *&buf[8], v175);
              if (v176 && (a5 == 1 || a5 == 2 && *(v176 + 5) < v173))
              {
                goto LABEL_229;
              }

              *v216 = &v211;
              *(std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(buf, v175) + 5) = v173;
              v175 = v211;
            }

            _S0 = v173 / 1000.0;
            __asm { FCVT            H0, S0 }

            *(v189 + v175) = LOWORD(_S0);
LABEL_229:
            v166 += 2;
            v167 += 16;
            if (!--v165)
            {
              goto LABEL_230;
            }
          }

          *(&v162 + 1) = v159 - *&v163;
          goto LABEL_212;
        }

        goto LABEL_71;
      }
    }

    else if (a2)
    {
      v67 = 1.0;
      if (a2 != 1)
      {
        goto LABEL_195;
      }

LABEL_71:
      v66 = v65 / a10;
      v71 = v64 / a11;
LABEL_194:
      v67 = v71;
      goto LABEL_195;
    }

    v66 = v64 / a10;
    v71 = v65 / a11;
    goto LABEL_194;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "output buffer nil at projectJasperPoints", buf, 2u);
  }

  v37 = -22953;
LABEL_236:
  InstrumentsTraceGuard::~InstrumentsTraceGuard(&v208);
  return v37;
}

void sub_2404B7F68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  std::__hash_table<std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>>>::~__hash_table(&a33);
  InstrumentsTraceGuard::~InstrumentsTraceGuard(&a27);
  _Unwind_Resume(a1);
}

uint64_t *std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::find<int>(uint64_t a1, unint64_t a2, int a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = vcnt_s8(a2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a3;
    if (a3 >= a2)
    {
      v4 = a3 % a2;
    }
  }

  else
  {
    v4 = (a2 - 1) & a3;
  }

  v5 = *(a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  for (result = *v5; result; result = *result)
  {
    v7 = result[1];
    if (v7 == a3)
    {
      if (*(result + 4) == a3)
      {
        return result;
      }
    }

    else
    {
      if (v3.u32[0] > 1uLL)
      {
        if (v7 >= a2)
        {
          v7 %= a2;
        }
      }

      else
      {
        v7 &= a2 - 1;
      }

      if (v7 != v4)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(void *a1, int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= v2)
      {
        v7 %= v2;
      }
    }

    else
    {
      v7 &= v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (*(v6 + 4) != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

__CFDictionary *appledepth::JasperPointCloud::createDictionaryRepresentation(appledepth::JasperPointCloud *this)
{
  v2 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  valuePtr = 7;
  v4 = CFNumberCreate(v2, kCFNumberIntType, &valuePtr);
  CFDictionaryAddValue(Mutable, @"Version", v4);
  CFRelease(v4);
  v36 = *(*(this + 1) + 8);
  v5 = CFNumberCreate(v2, kCFNumberIntType, &v36);
  CFDictionaryAddValue(Mutable, @"Length", v5);
  CFRelease(v5);
  v6 = *(this + 1);
  if (v6)
  {
    v7 = *(v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  addField<CGPoint>(Mutable, v7, (v6 + *(v6 + 32)), @"CameraPixels");
  v8 = *(this + 1);
  if (v8)
  {
    v9 = *(v8 + 8);
  }

  else
  {
    v9 = 0;
  }

  addField<CGPoint>(Mutable, v9, (v8 + *(v8 + 40)), @"UndistortedCameraPixels");
  v10 = *(this + 1);
  if (v10)
  {
    v11 = *(v10 + 8);
  }

  else
  {
    v11 = 0;
  }

  addField<float>(Mutable, v11, (v10 + *(v10 + 48)), @"EuclideanDistances");
  v12 = *(this + 1);
  if (v12)
  {
    v13 = 16 * *(v12 + 8);
  }

  else
  {
    v13 = 0;
  }

  v14 = CFDataCreate(v2, (v12 + *(v12 + 16)), v13);
  CFDictionaryAddValue(Mutable, @"Points", v14);
  CFRelease(v14);
  v15 = *(this + 1);
  if (v15)
  {
    v16 = *(v15 + 8);
  }

  else
  {
    v16 = 0;
  }

  addField<float>(Mutable, v16, (v15 + *(v15 + 56)), @"Intensities");
  v17 = *(this + 1);
  if (v17)
  {
    v18 = *(v17 + 8);
  }

  else
  {
    v18 = 0;
  }

  addField<float>(Mutable, v18, (v17 + *(v17 + 24)), @"Confidences");
  v19 = *(this + 1);
  if (v19)
  {
    v20 = *(v19 + 8);
  }

  else
  {
    v20 = 0;
  }

  addField<float>(Mutable, v20, (v19 + *(v19 + 64)), @"SignalToNoiseRatios");
  v21 = *(this + 1);
  if (v21)
  {
    v22 = *(v21 + 8);
  }

  else
  {
    v22 = 0;
  }

  addField<unsigned char>(Mutable, v22, (v21 + *(v21 + 72)), @"BankIds");
  v23 = *(this + 1);
  if (v23)
  {
    v24 = *(v23 + 8);
  }

  else
  {
    v24 = 0;
  }

  addField<unsigned char>(Mutable, v24, (v23 + *(v23 + 80)), @"SpotIds");
  v25 = *(this + 1);
  if (v25)
  {
    v26 = *(v25 + 8);
  }

  else
  {
    v26 = 0;
  }

  addField<unsigned char>(Mutable, v26, (v25 + *(v25 + 88)), @"EchoIds");
  v27 = *(this + 1);
  if (v27)
  {
    v28 = 4 * *(v27 + 8);
  }

  else
  {
    v28 = 0;
  }

  v29 = CFDataCreate(v2, (v27 + *(v27 + 96)), v28);
  CFDictionaryAddValue(Mutable, @"Flags", v29);
  CFRelease(v29);
  v30 = *(this + 1);
  v31 = *(v30 + 104);
  if (v31)
  {
    v32 = (v30 + *(v30 + 112));
    v33 = Mutable;
  }

  else
  {
    v33 = Mutable;
    v32 = 0;
  }

  addField<unsigned char>(v33, v31, v32, @"AdditionalData");
  return Mutable;
}

void addField<CGPoint>(__CFDictionary *a1, uint64_t a2, UInt8 *bytes, const void *a4)
{
  v6 = CFDataCreate(*MEMORY[0x277CBECE8], bytes, 16 * a2);
  CFDictionaryAddValue(a1, a4, v6);

  CFRelease(v6);
}

void addField<float>(__CFDictionary *a1, uint64_t a2, UInt8 *bytes, const void *a4)
{
  v6 = CFDataCreate(*MEMORY[0x277CBECE8], bytes, 4 * a2);
  CFDictionaryAddValue(a1, a4, v6);

  CFRelease(v6);
}

void addField<unsigned char>(__CFDictionary *a1, CFIndex length, UInt8 *bytes, const void *a4)
{
  v6 = CFDataCreate(*MEMORY[0x277CBECE8], bytes, length);
  CFDictionaryAddValue(a1, a4, v6);

  CFRelease(v6);
}

void appledepth::JasperPointCloud::applyPerformanceOverrides(appledepth::JasperPointCloud *this)
{
  v87 = *MEMORY[0x277D85DE8];
  if ((*(*(this + 1) + *(*(this + 1) + 96)) & 0x80000000) == 0)
  {
    if (ADJasperPerformanceOverride::getInstance(void)::once[0] != -1)
    {
      dispatch_once(ADJasperPerformanceOverride::getInstance(void)::once, &__block_literal_global);
    }

    v2 = ADJasperPerformanceOverride::getInstance(void)::singleton;
    if (*(ADJasperPerformanceOverride::getInstance(void)::singleton + 31) < 0)
    {
      std::string::__init_copy_ctor_external(&v85, *(ADJasperPerformanceOverride::getInstance(void)::singleton + 8), *(ADJasperPerformanceOverride::getInstance(void)::singleton + 16));
    }

    else
    {
      v3 = *(ADJasperPerformanceOverride::getInstance(void)::singleton + 8);
      v85.__r_.__value_.__r.__words[2] = *(ADJasperPerformanceOverride::getInstance(void)::singleton + 24);
      *&v85.__r_.__value_.__l.__data_ = v3;
    }

    v4 = SHIBYTE(v85.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(v85.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      size = v85.__r_.__value_.__l.__size_;
      if (v85.__r_.__value_.__l.__size_ != 3)
      {
LABEL_29:
        if (size)
        {
          goto LABEL_30;
        }

LABEL_63:
        if (*v2)
        {
          HIBYTE(buf.__x_[5]) = 12;
          strcpy(&buf, "/dev/urandom");
          std::random_device::random_device(&v84, &buf);
          if (SHIBYTE(buf.__x_[5]) < 0)
          {
            operator delete(*buf.__x_);
          }

          v50 = arc4random();
          buf.__x_[0] = v50;
          for (i = 1; i != 624; ++i)
          {
            v50 = i + 1812433253 * (v50 ^ (v50 >> 30));
            buf.__x_[i] = v50;
          }

          buf.__i_ = 0;
          v53 = *(this + 1);
          if (v53)
          {
            v54 = v53[1];
            if (v54)
            {
              v55 = 0;
              v56 = 0;
              v57 = 1.0;
              do
              {
                if (*(v53 + v53[9] + v56) <= 7uLL && *(v53 + v53[10] + v56) <= 0x8Fu)
                {
                  v58 = (*v2 + 1728 * *(v53 + v53[9] + v56) + 12 * *(v53 + v53[10] + v56));
                  v59 = v53[6];
                  v60 = *(v53 + 4 * v56 + v59);
                  if (v60 >= *v58 && v60 <= v58[1])
                  {
                    v62 = v58[2];
                    if (v62 != 100.0)
                    {
                      v63 = v53 + v53[8];
                      v64 = *&v63[4 * v56];
                      v65 = v62 / 100.0 * v64;
                      *&v63[4 * v56] = v65;
                      v66 = v65;
                      v67 = v66 * 0.33 + -2.7;
                      v68 = v67 <= 1.0 ? v66 * 0.33 + -2.7 : 1.0;
                      v69 = v67 >= 0.0 ? v68 : 0.0;
                      *(v53 + 4 * v56 + v53[3]) = *(v53 + 4 * v56 + v53[3]) * v69;
                      v70 = (v57 / v66 - v57 / v64) * 50.45;
                      if (v70 > 0.2)
                      {
                        v71 = *(v53 + 4 * v56 + v59);
                        v72 = v71;
                        v73 = v51;
                        if ((v55 & 1) == 0)
                        {
                          do
                          {
                            do
                            {
                              v74 = (vcvts_n_f32_u32(std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(&buf), 0x20uLL) * 2.0) + -1.0;
                              v75 = (vcvts_n_f32_u32(std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(&buf), 0x20uLL) * 2.0) + -1.0;
                              v76 = (v75 * v75) + (v74 * v74);
                            }

                            while (v76 > 1.0);
                          }

                          while (v76 == 0.0);
                          v77 = sqrtf((logf((v75 * v75) + (v74 * v74)) * -2.0) / v76);
                          v51 = v75 * v77;
                          v73 = v74 * v77;
                          v59 = v53[6];
                          v72 = *(v53 + 4 * v56 + v59);
                          v57 = 1.0;
                        }

                        v55 ^= 1u;
                        v78 = (v73 + 0.0) * v70;
                        if (v78 < (1.0 - v71))
                        {
                          v78 = 1.0 - v71;
                        }

                        *(v53 + 4 * v56 + v59) = v78 + v72;
                        v79 = (v71 + v78) / v71;
                        *(&v53[2 * v56] + v53[2]) = v79 * *(&v53[2 * v56] + v53[2]);
                        v80 = *(this + 1) + *(*(this + 1) + 16) + 16 * v56;
                        *(v80 + 4) = v79 * *(v80 + 4);
                        v81 = *(this + 1) + *(*(this + 1) + 16) + 16 * v56;
                        *(v81 + 8) = v79 * *(v81 + 8);
                        v53 = *(this + 1);
                      }
                    }
                  }

                  else
                  {
                    *(v53 + 4 * v56 + v53[3]) = 0;
                  }
                }

                *(v53 + 4 * v56++ + v53[12]) |= 0x80000000;
              }

              while (v56 != v54);
            }
          }

          std::random_device::~random_device(&v84);
        }

LABEL_95:
        if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v85.__r_.__value_.__l.__data_);
        }

        return;
      }

      v8 = v85.__r_.__value_.__r.__words[0];
      if (*v85.__r_.__value_.__l.__data_ != 13654 || *(v85.__r_.__value_.__r.__words[0] + 2) != 51)
      {
        if (*v85.__r_.__value_.__l.__data_ != 13654 || *(v85.__r_.__value_.__r.__words[0] + 2) != 52)
        {
LABEL_30:
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            v11 = v85.__r_.__value_.__r.__words[0];
            if (v4 >= 0)
            {
              v11 = &v85;
            }

            buf.__x_[0] = 136315138;
            *&buf.__x_[1] = v11;
            _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unknown device to emulate: %s", &buf, 0xCu);
          }

          goto LABEL_63;
        }

LABEL_36:
        data_low = LOWORD(v8->__r_.__value_.__l.__data_);
        v14 = v8->__r_.__value_.__s.__data_[2];
        if (data_low != 13654 || v14 != 52)
        {
          __assert_rtn("applyPerformanceOverrides", "JasperPointCloud.mm", 922, "false");
        }

        v12 = 0x4038312741FDF5C3;
        goto LABEL_42;
      }
    }

    else
    {
      if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) != 3)
      {
LABEL_17:
        size = SHIBYTE(v85.__r_.__value_.__r.__words[2]);
        goto LABEL_29;
      }

      if (LOWORD(v85.__r_.__value_.__l.__data_) != 13654 || v85.__r_.__value_.__s.__data_[2] != 51)
      {
        if (LOWORD(v85.__r_.__value_.__l.__data_) != 13654 || v85.__r_.__value_.__s.__data_[2] != 52)
        {
          goto LABEL_17;
        }

        v8 = &v85;
        goto LABEL_36;
      }
    }

    v12 = 0x3FA624DD41CC1062;
LABEL_42:
    v16 = 0;
    v17 = *(this + 1);
    v18 = -1;
    v19 = -1;
    if (!v17)
    {
      goto LABEL_44;
    }

LABEL_43:
    for (j = *(v17 + 8); v16 < j; j = 0)
    {
      if (*(v17 + *(v17 + 24) + 4 * v16) > 0.8)
      {
        if (v18 == -1)
        {
          v21 = v16;
        }

        else
        {
          v21 = v18;
        }

        if (v19 == -1)
        {
          v19 = v16;
        }

        else
        {
          v18 = v21;
        }
      }

      ++v16;
      if (v17)
      {
        goto LABEL_43;
      }

LABEL_44:
      ;
    }

    if (v18 == -1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.__x_[0]) = 0;
        _os_log_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "V5x emulation: point cloud doesn't contain high confidence points, emulation won't take place", &buf, 2u);
      }

      goto LABEL_95;
    }

    if (*(v17 + 8))
    {
      v22 = 0;
      v23 = 0;
      v24 = v17 + *(v17 + 16);
      v25 = *(v24 + 16 * v19);
      v26 = *(v24 + 16 * v18);
      v27 = v17 + *(v17 + 40);
      v28 = *(v27 + 16 * v19);
      v29 = vdup_laneq_s32(v25, 2);
      *v26.i32 = vaddvq_f64(vdivq_f64(vsubq_f64(*(v27 + 16 * v18), v28), vcvtq_f64_f32(vsub_f32(vdiv_f32(*v26.i8, vdup_laneq_s32(v26, 2)), vdiv_f32(*v25.i8, v29))))) * 0.5;
      v30 = (*v26.i32 * v12.f32[0]);
      v31 = vmuls_lane_f32(*v26.i32, v12, 1);
      v82 = vdupq_lane_s64(COERCE__INT64(*v26.i32), 0);
      v83 = vsubq_f64(v28, vcvtq_f64_f32(vdiv_f32(vmul_n_f32(*v25.i8, *v26.i32), v29)));
      do
      {
        v32 = *(v17 + 16);
        v33 = *(v17 + 40);
        v34 = *(v17 + *(v17 + 48) + 4 * v23);
        v35 = arc4random();
        v36 = (v17 + v32 + v22);
        v37 = (v17 + v33 + v22);
        v38 = 13.0;
        if (v34 > 300.0)
        {
          v38 = 11.0;
        }

        v39 = ((v35 + v35) / 4294967300.0 + -1.0) * v38;
        v40 = v36[1].f32[0];
        v41 = v40 + v39;
        if (v41 < 1.0)
        {
          v41 = 1.0;
        }

        v42 = 1.0 / v41;
        v43 = v37[1];
        _Q1.f64[0] = *v37 + v30 * ((1.0 / v40) - v42);
        *v37 = _Q1.f64[0];
        _Q1.f64[1] = v43 + v31 * ((1.0 / v36[1].f32[0]) - v42);
        v37[1] = _Q1.f64[1];
        _D0 = vcvt_f32_f64(vdivq_f64(vsubq_f64(_Q1, v83), v82));
        _S2 = _D0.i32[1];
        __asm { FMLA            S1, S2, V0.S[1] }

        *_Q1.f64 = v34 / sqrtf(*_Q1.f64);
        v36[1].i32[0] = LODWORD(_Q1.f64[0]);
        *v36 = vmul_n_f32(_D0, *_Q1.f64);
        v17 = *(this + 1);
        *(v17 + *(v17 + 96) + 4 * v23++) |= 0x80000000;
        v22 += 16;
      }

      while (v23 < *(v17 + 8));
    }

    goto LABEL_63;
  }
}

void sub_2404B90A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, void *__p, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (SHIBYTE(a19) < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::mersenne_twister_engine<unsigned int, 32, 624, 397, 31, 2567483615, 11, 4294967295, 7, 2636928640, 15, 4022730752, 18, 1812433253>::result_type std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(std::mersenne_twister_engine<unsigned int, 32, 624, 397, 31, 2567483615, 11, 4294967295, 7, 2636928640, 15, 4022730752, 18, 1812433253> *this)
{
  i = this->__i_;
  v2 = (i + 1) % 0x270;
  v3 = this->__x_[v2];
  if (v3)
  {
    v4 = -1727483681;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 ^ this->__x_[(i + 397) % 0x270] ^ ((v3 & 0x7FFFFFFE | this->__x_[i] & 0x80000000) >> 1);
  this->__x_[i] = v5;
  this->__i_ = v2;
  v6 = ((v5 ^ (v5 >> 11)) << 7) & 0x9D2C5680 ^ v5 ^ (v5 >> 11);
  return (v6 << 15) & 0xEFC60000 ^ v6 ^ (((v6 << 15) & 0xEFC60000 ^ v6) >> 18);
}

void appledepth::JasperPointCloud::initPerformanceOverrides(uint64_t *a1)
{
  if (ADJasperPerformanceOverride::getInstance(void)::once[0] != -1)
  {
    dispatch_once(ADJasperPerformanceOverride::getInstance(void)::once, &__block_literal_global);
  }

  v2 = ADJasperPerformanceOverride::getInstance(void)::singleton;

  ADJasperPerformanceOverride::initFromCsv(v2, a1);
}

uint64_t appledepth::JasperPointCloud::resetPerformanceOverrides(appledepth::JasperPointCloud *this)
{
  if (ADJasperPerformanceOverride::getInstance(void)::once[0] != -1)
  {
    dispatch_once(ADJasperPerformanceOverride::getInstance(void)::once, &__block_literal_global);
  }

  result = *ADJasperPerformanceOverride::getInstance(void)::singleton;
  *ADJasperPerformanceOverride::getInstance(void)::singleton = 0;
  if (result)
  {

    JUMPOUT(0x245CC10E0);
  }

  return result;
}

std::string *appledepth::JasperPointCloud::setEmulatedDevice(std::string *__str)
{
  if (ADJasperPerformanceOverride::getInstance(void)::once[0] != -1)
  {
    dispatch_once(ADJasperPerformanceOverride::getInstance(void)::once, &__block_literal_global);
  }

  v2 = (ADJasperPerformanceOverride::getInstance(void)::singleton + 8);

  return std::string::operator=(v2, __str);
}

void sub_2404B9478(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_2404B9548(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_2404B960C(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_2404B9A50(_Unwind_Exception *a1)
{
  InstrumentsTraceGuard::~InstrumentsTraceGuard((v4 - 296));
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_2404B9BF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  objc_sync_exit(v19);

  _Unwind_Resume(a1);
}

id dataToFloatsArray(NSData *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [(NSData *)v1 length];
    v4 = [(NSData *)v2 bytes];
    v5 = v3 >> 2;
    v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:v3 >> 2];
    if (v3 >= 4)
    {
      v8 = 0;
      do
      {
        LODWORD(v7) = *(v4 + 4 * v8);
        v9 = [MEMORY[0x277CCABB0] numberWithFloat:v7];
        [v6 setObject:v9 atIndexedSubscript:v8];

        ++v8;
      }

      while (v5 != v8);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

BOOL getDistortionCenterFromDictionary(NSDictionary *a1, CGPoint *a2)
{
  v3 = [(NSDictionary *)a1 objectForKeyedSubscript:@"lensDistortionCenter"];
  v4 = v3;
  if (v3)
  {
    v5 = CGPointMakeWithDictionaryRepresentation(v3, a2);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

objc_object *getTableAsNSData(objc_object *a1)
{
  v1 = a1;
  if (!v1)
  {
LABEL_8:
    v3 = 0;
    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v1;
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  v2 = v1;
  v3 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:{4 * -[objc_object count](v2, "count")}];
  v4 = [(objc_object *)v3 bytes];
  for (i = 0; i < [(objc_object *)v2 count]; ++i)
  {
    v6 = [(objc_object *)v2 objectAtIndexedSubscript:i];
    [v6 floatValue];
    *(v4 + 4 * i) = v7;
  }

LABEL_10:

  return v3;
}

void sub_2404BB88C(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

double rotateUVPoint(uint64_t a1, double result, double a3, double a4, double a5)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      return a4 - result;
    }

    if (a1 == 3)
    {
      return a5 - a3;
    }
  }

  else
  {
    if (!a1)
    {
      return result;
    }

    if (a1 == 1)
    {
      return a3;
    }
  }

  v8 = v5;
  v9 = v6;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *v7 = 0;
    _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "unknown rotation constant", v7, 2u);
  }

  return *MEMORY[0x277CBF348];
}

void sub_2404BC4C4(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void sub_2404BCECC(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

uint64_t applyDistortionCoefficients(uint64_t result, float64x2_t *a2, double a3, CGPoint a4, double a5, const float *a6, float64x2_t *a7)
{
  if (result)
  {
    v7 = a3 * a3;
    v8 = v7 * (a5 * a5);
    y = a4.y;
    do
    {
      v10 = vsubq_f64(*a2, a4);
      v11 = v7 * (COERCE_DOUBLE(*&vmulq_f64(v10, v10).f64[1]) + v10.f64[0] * v10.f64[0]);
      if (v11 <= v8)
      {
        v12 = v11 * v11;
        v13 = v11 * (v11 * v11);
        v14 = (v11 * a6[1] + *a6 + a6[2] * v12 + a6[3] * v13 + a6[4] * (v12 * v12) + a6[5] * (v11 * v11 * v13) + a6[6] * (v13 * v13) + a6[7] * (v12 * v12 * v13)) / 100.0 + 1.0;
        if (v14 <= 0.0)
        {
          v15 = 1.0;
        }

        else
        {
          v15 = 1.0 / v14;
        }

        *a7 = vmlaq_n_f64(a4, v10, v15);
      }

      else
      {
        *a7 = *a2;
      }

      ++a7;
      ++a2;
      --result;
    }

    while (result);
  }

  return result;
}

char *ADWarperMesh::apply(ADWarperMesh *this, uint64_t a2, float64x2_t *a3, CGSize a4, float64x2_t *a5)
{
  width = a4.width;
  height = a4.height;
  refDimensions = this->_refDimensions;
  type = this[1]._type;
  p_typeOffset = &this->_typeOffset;
  v11 = *&this->_offsetX;
  v12 = vld1_dup_f32(p_typeOffset);
  result = [(NSData *)this->_warperMesh bytes];
  if (a2)
  {
    v14.f64[0] = width;
    v14.f64[1] = height;
    v15 = vcvt_f32_f64(vdivq_f64(v14, refDimensions));
    v16 = vsub_f32(v12, type);
    __asm { FMOV            V2.2S, #1.0 }

    v22 = vcvtq_f64_f32(vdiv_f32(_D2, v15));
    v23 = vcvtq_f64_f32(vsub_f32(vadd_f32(type, vcvt_f32_s32(v11)), v12));
    width_low = LODWORD(this[1]._refDimensions.width);
    v25 = HIDWORD(this[1]._refDimensions.width) - 2;
    do
    {
      v26 = *a3++;
      v27 = vcvt_f32_f64(vmlaq_f64(v23, v22, v26));
      v28 = vcvt_s32_f32(v27);
      v29 = vcltz_s32(v28);
      v30 = v28.i32[1];
      v31 = v28.i32[0];
      if (width_low - 2 < v28.i32[0])
      {
        v31 = width_low - 2;
      }

      if (v29.i8[0])
      {
        v31 = 0;
      }

      if (v25 < v28.i32[1])
      {
        v30 = v25;
      }

      if (v29.i8[4])
      {
        v30 = 0;
      }

      v32 = v27.f32[0] - v31;
      v33 = v27.f32[1] - v30;
      v34 = v31 + v30 * width_low;
      *a5++ = vcvtq_f64_f32(vmul_f32(vadd_f32(v16, vmla_n_f32(vmla_n_f32(vmla_n_f32(vmul_n_f32(vmul_n_f32(*&result[8 * v34 + 8], v32), 1.0 - v33), vmul_n_f32(*&result[8 * v34], 1.0 - v32), 1.0 - v33), vmul_n_f32(*&result[8 * v34 + 8 * width_low], 1.0 - v32), v33), vmul_n_f32(*&result[8 * v34 + 8 + 8 * width_low], v32), v33)), v15));
      --a2;
    }

    while (a2);
  }

  return result;
}

objc_class *allocateDistortionModelWithName(NSString *a1)
{
  v20[5] = *MEMORY[0x277D85DE8];
  v1 = a1;
  {
    v19[0] = @"None";
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v20[0] = v10;
    v19[1] = @"XTheta";
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v20[1] = v12;
    v19[2] = @"RadiiLookup";
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v20[2] = v14;
    v19[3] = @"MagnificationForRadius";
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v20[3] = v16;
    v19[4] = @"Coefficients";
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v20[4] = v18;
    allocateDistortionModelWithName(NSString *)::legacyDistortionNamesMap = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:5];
  }

  if (!v1)
  {
    v2 = objc_opt_class();
    v1 = NSStringFromClass(v2);
  }

  v3 = [allocateDistortionModelWithName(NSString *)::legacyDistortionNamesMap allKeys];
  v4 = [v3 containsObject:v1];

  if (v4)
  {
    v5 = [allocateDistortionModelWithName(NSString *)::legacyDistortionNamesMap objectForKeyedSubscript:v1];

    v1 = v5;
  }

  v6 = NSClassFromString(v1);
  v7 = v6;
  if (v6)
  {
    if (class_conformsToProtocol(v6, &unk_285257530))
    {
      v7 = objc_alloc(objc_opt_class());
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

void sub_2404C0790(_Unwind_Exception *a1)
{

  _Unwind_Resume(a1);
}

void sub_2404C17A0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t CMCaptureLibraryCore()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = 0;
  v3 = &v2;
  v4 = 0x2020000000;
  v0 = CMCaptureLibraryCore::frameworkLibrary;
  v5 = CMCaptureLibraryCore::frameworkLibrary;
  if (!CMCaptureLibraryCore::frameworkLibrary)
  {
    v6 = xmmword_278CA60D0;
    v7 = *off_278CA60E0;
    v8 = 0;
    v3[3] = _sl_dlopen();
    CMCaptureLibraryCore::frameworkLibrary = v3[3];
    v0 = v3[3];
  }

  _Block_object_dispose(&v2, 8);
  return v0;
}

void sub_2404C1A08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkFigCaptureSampleBufferAttachmentKey_MetadataDictionarySymbolLoc(void)
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkFigCaptureSampleBufferAttachmentKey_MetadataDictionarySymbolLoc(void)::ptr;
  v6 = getkFigCaptureSampleBufferAttachmentKey_MetadataDictionarySymbolLoc(void)::ptr;
  if (!getkFigCaptureSampleBufferAttachmentKey_MetadataDictionarySymbolLoc(void)::ptr)
  {
    v1 = CMCaptureLibrary();
    v4[3] = dlsym(v1, "kFigCaptureSampleBufferAttachmentKey_MetadataDictionary");
    getkFigCaptureSampleBufferAttachmentKey_MetadataDictionarySymbolLoc(void)::ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_2404C1AF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *___ZL67getkFigCaptureSampleBufferAttachmentKey_MetadataDictionarySymbolLocv_block_invoke(uint64_t a1)
{
  v2 = CMCaptureLibrary();
  result = dlsym(v2, "kFigCaptureSampleBufferAttachmentKey_MetadataDictionary");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkFigCaptureSampleBufferAttachmentKey_MetadataDictionarySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t CMCaptureLibrary()
{
  v0 = CMCaptureLibraryCore();
  if (!v0)
  {
    v2 = abort_report_np();
    free(v2);
  }

  return v0;
}

uint64_t __CMCaptureLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  CMCaptureLibraryCore::frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getkFigCaptureStreamMetadata_RawSensorWidthSymbolLoc(void)
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkFigCaptureStreamMetadata_RawSensorWidthSymbolLoc(void)::ptr;
  v6 = getkFigCaptureStreamMetadata_RawSensorWidthSymbolLoc(void)::ptr;
  if (!getkFigCaptureStreamMetadata_RawSensorWidthSymbolLoc(void)::ptr)
  {
    v1 = CMCaptureLibrary();
    v4[3] = dlsym(v1, "kFigCaptureStreamMetadata_RawSensorWidth");
    getkFigCaptureStreamMetadata_RawSensorWidthSymbolLoc(void)::ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_2404C21D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkFigCaptureStreamMetadata_RawSensorWidth(void)
{
  v0 = getkFigCaptureStreamMetadata_RawSensorWidthSymbolLoc();
  if (v0)
  {
    return *v0;
  }

  dlerror();
  abort_report_np();
  return getkFigCaptureStreamMetadata_RawSensorHeightSymbolLoc();
}

uint64_t getkFigCaptureStreamMetadata_RawSensorHeightSymbolLoc(void)
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkFigCaptureStreamMetadata_RawSensorHeightSymbolLoc(void)::ptr;
  v6 = getkFigCaptureStreamMetadata_RawSensorHeightSymbolLoc(void)::ptr;
  if (!getkFigCaptureStreamMetadata_RawSensorHeightSymbolLoc(void)::ptr)
  {
    v1 = CMCaptureLibrary();
    v4[3] = dlsym(v1, "kFigCaptureStreamMetadata_RawSensorHeight");
    getkFigCaptureStreamMetadata_RawSensorHeightSymbolLoc(void)::ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_2404C22FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkFigCaptureStreamMetadata_RawSensorHeight(void)
{
  v0 = getkFigCaptureStreamMetadata_RawSensorHeightSymbolLoc();
  if (v0)
  {
    return *v0;
  }

  dlerror();
  abort_report_np();
  return getkFigCaptureStreamMetadata_SensorCropRectSymbolLoc();
}

uint64_t getkFigCaptureStreamMetadata_SensorCropRectSymbolLoc(void)
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkFigCaptureStreamMetadata_SensorCropRectSymbolLoc(void)::ptr;
  v6 = getkFigCaptureStreamMetadata_SensorCropRectSymbolLoc(void)::ptr;
  if (!getkFigCaptureStreamMetadata_SensorCropRectSymbolLoc(void)::ptr)
  {
    v1 = CMCaptureLibrary();
    v4[3] = dlsym(v1, "kFigCaptureStreamMetadata_SensorCropRect");
    getkFigCaptureStreamMetadata_SensorCropRectSymbolLoc(void)::ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_2404C2424(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkFigCaptureStreamMetadata_SensorCropRect(void)
{
  v0 = getkFigCaptureStreamMetadata_SensorCropRectSymbolLoc();
  if (v0)
  {
    return *v0;
  }

  dlerror();
  abort_report_np();
  return getkFigCaptureStreamMetadata_PinholeCameraFocalLengthSymbolLoc();
}

uint64_t getkFigCaptureStreamMetadata_PinholeCameraFocalLengthSymbolLoc(void)
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkFigCaptureStreamMetadata_PinholeCameraFocalLengthSymbolLoc(void)::ptr;
  v6 = getkFigCaptureStreamMetadata_PinholeCameraFocalLengthSymbolLoc(void)::ptr;
  if (!getkFigCaptureStreamMetadata_PinholeCameraFocalLengthSymbolLoc(void)::ptr)
  {
    v1 = CMCaptureLibrary();
    v4[3] = dlsym(v1, "kFigCaptureStreamMetadata_PinholeCameraFocalLength");
    getkFigCaptureStreamMetadata_PinholeCameraFocalLengthSymbolLoc(void)::ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_2404C254C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkFigCaptureStreamMetadata_PracticalFocalLengthSymbolLoc(void)
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkFigCaptureStreamMetadata_PracticalFocalLengthSymbolLoc(void)::ptr;
  v6 = getkFigCaptureStreamMetadata_PracticalFocalLengthSymbolLoc(void)::ptr;
  if (!getkFigCaptureStreamMetadata_PracticalFocalLengthSymbolLoc(void)::ptr)
  {
    v1 = CMCaptureLibrary();
    v4[3] = dlsym(v1, "kFigCaptureStreamMetadata_PracticalFocalLength");
    getkFigCaptureStreamMetadata_PracticalFocalLengthSymbolLoc(void)::ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_2404C2638(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkFigCaptureStreamMetadata_DistortionOpticalCenterSymbolLoc(void)
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkFigCaptureStreamMetadata_DistortionOpticalCenterSymbolLoc(void)::ptr;
  v6 = getkFigCaptureStreamMetadata_DistortionOpticalCenterSymbolLoc(void)::ptr;
  if (!getkFigCaptureStreamMetadata_DistortionOpticalCenterSymbolLoc(void)::ptr)
  {
    v1 = CMCaptureLibrary();
    v4[3] = dlsym(v1, "kFigCaptureStreamMetadata_DistortionOpticalCenter");
    getkFigCaptureStreamMetadata_DistortionOpticalCenterSymbolLoc(void)::ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_2404C2724(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkFigCaptureStreamMetadata_OpticalCenterSymbolLoc(void)
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkFigCaptureStreamMetadata_OpticalCenterSymbolLoc(void)::ptr;
  v6 = getkFigCaptureStreamMetadata_OpticalCenterSymbolLoc(void)::ptr;
  if (!getkFigCaptureStreamMetadata_OpticalCenterSymbolLoc(void)::ptr)
  {
    v1 = CMCaptureLibrary();
    v4[3] = dlsym(v1, "kFigCaptureStreamMetadata_OpticalCenter");
    getkFigCaptureStreamMetadata_OpticalCenterSymbolLoc(void)::ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_2404C2810(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkFigCaptureStreamMetadata_DynamicDistortionFactorSymbolLoc(void)
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkFigCaptureStreamMetadata_DynamicDistortionFactorSymbolLoc(void)::ptr;
  v6 = getkFigCaptureStreamMetadata_DynamicDistortionFactorSymbolLoc(void)::ptr;
  if (!getkFigCaptureStreamMetadata_DynamicDistortionFactorSymbolLoc(void)::ptr)
  {
    v1 = CMCaptureLibrary();
    v4[3] = dlsym(v1, "kFigCaptureStreamMetadata_DynamicDistortionFactor");
    getkFigCaptureStreamMetadata_DynamicDistortionFactorSymbolLoc(void)::ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_2404C28FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkFigCaptureStreamMetadata_TotalSensorCropRectSymbolLoc(void)
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkFigCaptureStreamMetadata_TotalSensorCropRectSymbolLoc(void)::ptr;
  v6 = getkFigCaptureStreamMetadata_TotalSensorCropRectSymbolLoc(void)::ptr;
  if (!getkFigCaptureStreamMetadata_TotalSensorCropRectSymbolLoc(void)::ptr)
  {
    v1 = CMCaptureLibrary();
    v4[3] = dlsym(v1, "kFigCaptureStreamMetadata_TotalSensorCropRect");
    getkFigCaptureStreamMetadata_TotalSensorCropRectSymbolLoc(void)::ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_2404C29E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *getkFigCaptureStreamMetadata_TotalSensorCropRect(void)
{
  v0 = getkFigCaptureStreamMetadata_TotalSensorCropRectSymbolLoc();
  if (v0)
  {
    return *v0;
  }

  dlerror();
  v2 = abort_report_np();
  return ___ZL57getkFigCaptureStreamMetadata_TotalSensorCropRectSymbolLocv_block_invoke(v2);
}

void *___ZL57getkFigCaptureStreamMetadata_TotalSensorCropRectSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = CMCaptureLibrary();
  result = dlsym(v2, "kFigCaptureStreamMetadata_TotalSensorCropRect");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkFigCaptureStreamMetadata_TotalSensorCropRectSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL61getkFigCaptureStreamMetadata_DynamicDistortionFactorSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = CMCaptureLibrary();
  result = dlsym(v2, "kFigCaptureStreamMetadata_DynamicDistortionFactor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkFigCaptureStreamMetadata_DynamicDistortionFactorSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL51getkFigCaptureStreamMetadata_OpticalCenterSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = CMCaptureLibrary();
  result = dlsym(v2, "kFigCaptureStreamMetadata_OpticalCenter");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkFigCaptureStreamMetadata_OpticalCenterSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL61getkFigCaptureStreamMetadata_DistortionOpticalCenterSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = CMCaptureLibrary();
  result = dlsym(v2, "kFigCaptureStreamMetadata_DistortionOpticalCenter");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkFigCaptureStreamMetadata_DistortionOpticalCenterSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL58getkFigCaptureStreamMetadata_PracticalFocalLengthSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = CMCaptureLibrary();
  result = dlsym(v2, "kFigCaptureStreamMetadata_PracticalFocalLength");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkFigCaptureStreamMetadata_PracticalFocalLengthSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL62getkFigCaptureStreamMetadata_PinholeCameraFocalLengthSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = CMCaptureLibrary();
  result = dlsym(v2, "kFigCaptureStreamMetadata_PinholeCameraFocalLength");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkFigCaptureStreamMetadata_PinholeCameraFocalLengthSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL52getkFigCaptureStreamMetadata_SensorCropRectSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = CMCaptureLibrary();
  result = dlsym(v2, "kFigCaptureStreamMetadata_SensorCropRect");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkFigCaptureStreamMetadata_SensorCropRectSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL53getkFigCaptureStreamMetadata_RawSensorHeightSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = CMCaptureLibrary();
  result = dlsym(v2, "kFigCaptureStreamMetadata_RawSensorHeight");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkFigCaptureStreamMetadata_RawSensorHeightSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL52getkFigCaptureStreamMetadata_RawSensorWidthSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = CMCaptureLibrary();
  result = dlsym(v2, "kFigCaptureStreamMetadata_RawSensorWidth");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkFigCaptureStreamMetadata_RawSensorWidthSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getkFigCaptureStreamGDCCoefficientsKey_BasePolynomialSymbolLoc(void)
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkFigCaptureStreamGDCCoefficientsKey_BasePolynomialSymbolLoc(void)::ptr;
  v6 = getkFigCaptureStreamGDCCoefficientsKey_BasePolynomialSymbolLoc(void)::ptr;
  if (!getkFigCaptureStreamGDCCoefficientsKey_BasePolynomialSymbolLoc(void)::ptr)
  {
    v1 = CMCaptureLibrary();
    v4[3] = dlsym(v1, "kFigCaptureStreamGDCCoefficientsKey_BasePolynomial");
    getkFigCaptureStreamGDCCoefficientsKey_BasePolynomialSymbolLoc(void)::ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_2404C32A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkFigCaptureStreamGDCCoefficientsKey_DynamicPolynomialSymbolLoc(void)
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkFigCaptureStreamGDCCoefficientsKey_DynamicPolynomialSymbolLoc(void)::ptr;
  v6 = getkFigCaptureStreamGDCCoefficientsKey_DynamicPolynomialSymbolLoc(void)::ptr;
  if (!getkFigCaptureStreamGDCCoefficientsKey_DynamicPolynomialSymbolLoc(void)::ptr)
  {
    v1 = CMCaptureLibrary();
    v4[3] = dlsym(v1, "kFigCaptureStreamGDCCoefficientsKey_DynamicPolynomial");
    getkFigCaptureStreamGDCCoefficientsKey_DynamicPolynomialSymbolLoc(void)::ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_2404C3390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *___ZL65getkFigCaptureStreamGDCCoefficientsKey_DynamicPolynomialSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = CMCaptureLibrary();
  result = dlsym(v2, "kFigCaptureStreamGDCCoefficientsKey_DynamicPolynomial");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkFigCaptureStreamGDCCoefficientsKey_DynamicPolynomialSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL62getkFigCaptureStreamGDCCoefficientsKey_BasePolynomialSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = CMCaptureLibrary();
  result = dlsym(v2, "kFigCaptureStreamGDCCoefficientsKey_BasePolynomial");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkFigCaptureStreamGDCCoefficientsKey_BasePolynomialSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getkFigCaptureStreamMetadata_ISPMotionDataSymbolLoc(void)
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkFigCaptureStreamMetadata_ISPMotionDataSymbolLoc(void)::ptr;
  v6 = getkFigCaptureStreamMetadata_ISPMotionDataSymbolLoc(void)::ptr;
  if (!getkFigCaptureStreamMetadata_ISPMotionDataSymbolLoc(void)::ptr)
  {
    v1 = CMCaptureLibrary();
    v4[3] = dlsym(v1, "kFigCaptureStreamMetadata_ISPMotionData");
    getkFigCaptureStreamMetadata_ISPMotionDataSymbolLoc(void)::ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_2404C3BF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *___ZL51getkFigCaptureStreamMetadata_ISPMotionDataSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = CMCaptureLibrary();
  result = dlsym(v2, "kFigCaptureStreamMetadata_ISPMotionData");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkFigCaptureStreamMetadata_ISPMotionDataSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getkFigCaptureSampleBufferAttachmentKey_OriginalPresentationTimeStampSymbolLoc(void)
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkFigCaptureSampleBufferAttachmentKey_OriginalPresentationTimeStampSymbolLoc(void)::ptr;
  v6 = getkFigCaptureSampleBufferAttachmentKey_OriginalPresentationTimeStampSymbolLoc(void)::ptr;
  if (!getkFigCaptureSampleBufferAttachmentKey_OriginalPresentationTimeStampSymbolLoc(void)::ptr)
  {
    v1 = CMCaptureLibrary();
    v4[3] = dlsym(v1, "kFigCaptureSampleBufferAttachmentKey_OriginalPresentationTimeStamp");
    getkFigCaptureSampleBufferAttachmentKey_OriginalPresentationTimeStampSymbolLoc(void)::ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_2404C3E24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *___ZL78getkFigCaptureSampleBufferAttachmentKey_OriginalPresentationTimeStampSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = CMCaptureLibrary();
  result = dlsym(v2, "kFigCaptureSampleBufferAttachmentKey_OriginalPresentationTimeStamp");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkFigCaptureSampleBufferAttachmentKey_OriginalPresentationTimeStampSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getkFigCaptureStreamMetadata_RollingShutterSkewSymbolLoc(void)
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkFigCaptureStreamMetadata_RollingShutterSkewSymbolLoc(void)::ptr;
  v6 = getkFigCaptureStreamMetadata_RollingShutterSkewSymbolLoc(void)::ptr;
  if (!getkFigCaptureStreamMetadata_RollingShutterSkewSymbolLoc(void)::ptr)
  {
    v1 = CMCaptureLibrary();
    v4[3] = dlsym(v1, "kFigCaptureStreamMetadata_RollingShutterSkew");
    getkFigCaptureStreamMetadata_RollingShutterSkewSymbolLoc(void)::ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_2404C40B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkFigCaptureStreamMetadata_ExposureTimeSymbolLoc(void)
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkFigCaptureStreamMetadata_ExposureTimeSymbolLoc(void)::ptr;
  v6 = getkFigCaptureStreamMetadata_ExposureTimeSymbolLoc(void)::ptr;
  if (!getkFigCaptureStreamMetadata_ExposureTimeSymbolLoc(void)::ptr)
  {
    v1 = CMCaptureLibrary();
    v4[3] = dlsym(v1, "kFigCaptureStreamMetadata_ExposureTime");
    getkFigCaptureStreamMetadata_ExposureTimeSymbolLoc(void)::ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_2404C419C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *___ZL50getkFigCaptureStreamMetadata_ExposureTimeSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = CMCaptureLibrary();
  result = dlsym(v2, "kFigCaptureStreamMetadata_ExposureTime");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkFigCaptureStreamMetadata_ExposureTimeSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL56getkFigCaptureStreamMetadata_RollingShutterSkewSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = CMCaptureLibrary();
  result = dlsym(v2, "kFigCaptureStreamMetadata_RollingShutterSkew");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkFigCaptureStreamMetadata_RollingShutterSkewSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

CGRect CGRectIntegral(CGRect rect)
{
  MEMORY[0x2821115D0](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}

simd_float4x4 __invert_f4(simd_float4x4 a1)
{
  MEMORY[0x2822043A8](a1.columns[0], a1.columns[1], a1.columns[2], a1.columns[3]);
  result.columns[3].i64[1] = v8;
  result.columns[3].i64[0] = v7;
  result.columns[2].i64[1] = v6;
  result.columns[2].i64[0] = v5;
  result.columns[1].i64[1] = v4;
  result.columns[1].i64[0] = v3;
  result.columns[0].i64[1] = v2;
  result.columns[0].i64[0] = v1;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x2822043C8](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}