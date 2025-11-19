uint64_t PixelBufferUtils::planeCountForPixelFormat(PixelBufferUtils *this)
{
  if (this > 1380401728)
  {
    if (this > 1717856626)
    {
      if (this <= 1751411058)
      {
        if (this == 1717856627)
        {
          return 0;
        }

        v2 = 1751410032;
      }

      else
      {
        if (this == 1751411059)
        {
          return 0;
        }

        if (this == 1919365990)
        {
          return 3;
        }

        v2 = 1932996149;
      }
    }

    else if (this <= 1380411456)
    {
      if (this == 1380401729)
      {
        return 0;
      }

      v2 = 1380410945;
    }

    else
    {
      if (this == 1380411457 || this == 1647392359)
      {
        return 0;
      }

      v2 = 1717855600;
    }

LABEL_29:
    if (this != v2)
    {
      goto LABEL_34;
    }

    return 0;
  }

  if (this > 875704437)
  {
    if (this <= 1111970368)
    {
      if (this == 875704438)
      {
        return 2;
      }

      v2 = 1094862674;
    }

    else
    {
      if (this == 1111970369 || this == 1278226488)
      {
        return 0;
      }

      v2 = 1278226536;
    }

    goto LABEL_29;
  }

  if (this <= 825437746)
  {
    if (this == 32)
    {
      return 0;
    }

    v2 = 825306677;
    goto LABEL_29;
  }

  if (this == 825437747 || this == 843264104)
  {
    return 0;
  }

  if (this == 875704422)
  {
    return 2;
  }

LABEL_34:
  v5 = CVPixelFormatDescriptionGetDescriptionWithPixelFormatType();
  if (!v5)
  {
    PixelBufferUtils::pixelFormatAsString(this, __p);
    if (v11 >= 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = __p[0];
    }

    NSLog(&cfstr_SDErrorPixelFo.isa, "planeCountForPixelFormat", 659, this, v9);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }

    return 0;
  }

  v6 = v5;
  v7 = [v5 objectForKeyedSubscript:*MEMORY[0x277CC4F70]];
  v8 = v7;
  if (v7)
  {
    v3 = [v7 count];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_24048C748(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void PixelBufferUtils::asVImageBuffer(PixelBufferUtils *this@<X0>, __CVBuffer *a2@<X1>, CGRect a3@<0:D0, 8:D1, 16:D2, 24:D3>, vImage_Buffer *a4@<X8>)
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(this, a2);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(this, a2);
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(this, a2);
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(this, a2);
  if (!BaseAddressOfPlane)
  {
    NSLog(&cfstr_SDErrorAsvimag.isa, "asVImageBuffer", 287);
    BytesPerRowOfPlane = 0;
    WidthOfPlane = 0;
    HeightOfPlane = 0;
  }

  v16[0] = BaseAddressOfPlane;
  v16[1] = HeightOfPlane;
  v16[2] = WidthOfPlane;
  v16[3] = BytesPerRowOfPlane;
  PixelFormatType = CVPixelBufferGetPixelFormatType(this);
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  cropVImageBuffer(a4, v16, v17, PixelFormatType, a2);
}

void cropVImageBuffer(vImage_Buffer *a1, uint64_t a2, CGRect a3, PixelBufferUtils *a4, uint64_t a5)
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v13 = *(a2 + 16);
  *&a1->data = *a2;
  *&a1->width = v13;
  *&v13 = y;
  if (!CGRectIsEmpty(a3))
  {
    v14 = PixelBufferUtils::verticalSubsamplingForPixelFormat(a4, a5);
    v15 = PixelBufferUtils::horizontalSubsamplingForPixelFormat(a4, a5);
    v16 = PixelBufferUtils::pixelSizeForPixelFormat(a4, a5);
    v17 = *(a2 + 24);
    v19 = *a2;
    v18 = *(a2 + 8);
    v20 = vcvtpd_u64_f64(width / v15);
    v21 = (*a2 + v17 * (y / v14) + x / v15 * v16);
    v22 = vcvtpd_u64_f64(height / v14);
    a1->height = v22;
    a1->width = v20;
    a1->data = v21;
    v23 = v19 + v18 * v17;
    v24 = v21 < v19 || v21 >= v23;
    if (v24 || (width >= v20 ? (v25 = height < v22) : (v25 = 1), v25))
    {
      NSLog(&cfstr_SDErrorCropOri_0.isa, "cropVImageBuffer", 262, *&x, *&y, *&width, *&height, *(a2 + 16) * v15, v18 * v14);
      *&a1->data = 0u;
      *&a1->width = 0u;
    }
  }
}

uint64_t PixelBufferUtils::verticalSubsamplingForPixelFormat(PixelBufferUtils *this, uint64_t a2)
{
  v4 = 1;
  if (this > 1380401728)
  {
    if (this > 1717856626)
    {
      if (this <= 1751411058)
      {
        if (this == 1717856627)
        {
          return v4;
        }

        v5 = 1751410032;
      }

      else
      {
        if (this == 1751411059 || this == 1919365990)
        {
          return v4;
        }

        v5 = 1932996149;
      }
    }

    else if (this <= 1380411456)
    {
      if (this == 1380401729)
      {
        return v4;
      }

      v5 = 1380410945;
    }

    else
    {
      if (this == 1380411457 || this == 1647392359)
      {
        return v4;
      }

      v5 = 1717855600;
    }
  }

  else if (this > 875704437)
  {
    if (this <= 1111970368)
    {
      if (this == 875704438)
      {
        goto LABEL_35;
      }

      v5 = 1094862674;
    }

    else
    {
      if (this == 1111970369 || this == 1278226488)
      {
        return v4;
      }

      v5 = 1278226536;
    }
  }

  else
  {
    if (this > 825437746)
    {
      if (this == 825437747 || this == 843264104)
      {
        return v4;
      }

      if (this != 875704422)
      {
        goto LABEL_30;
      }

LABEL_35:
      if (a2)
      {
        return 2;
      }

      else
      {
        return 1;
      }
    }

    if (this == 32)
    {
      return v4;
    }

    v5 = 825306677;
  }

  if (this == v5)
  {
    return v4;
  }

LABEL_30:
  v6 = CVPixelFormatDescriptionGetDescriptionWithPixelFormatType();
  if (v6)
  {
    v7 = v6;
    if (PixelBufferUtils::planeCountForPixelFormat(this))
    {
      v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277CC4F70]];
      v9 = [v8 objectAtIndexedSubscript:a2];

      v7 = v9;
    }

    v10 = [v7 objectForKeyedSubscript:*MEMORY[0x277CC4F78]];
    v11 = v10;
    if (v10)
    {
      v4 = [v10 intValue];
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {
    PixelBufferUtils::pixelFormatAsString(this, __p);
    if (v15 >= 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    NSLog(&cfstr_SDErrorPixelFo.isa, "verticalSubsamplingForPixelFormat", 521, this, v12);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }

    return 0;
  }

  return v4;
}

void sub_24048CD04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t PixelBufferUtils::horizontalSubsamplingForPixelFormat(PixelBufferUtils *this, uint64_t a2)
{
  v4 = 1;
  if (this > 1380401728)
  {
    if (this > 1717856626)
    {
      if (this <= 1751411058)
      {
        if (this == 1717856627)
        {
          return v4;
        }

        v5 = 1751410032;
      }

      else
      {
        if (this == 1751411059 || this == 1919365990)
        {
          return v4;
        }

        v5 = 1932996149;
      }
    }

    else if (this <= 1380411456)
    {
      if (this == 1380401729)
      {
        return v4;
      }

      v5 = 1380410945;
    }

    else
    {
      if (this == 1380411457 || this == 1647392359)
      {
        return v4;
      }

      v5 = 1717855600;
    }
  }

  else if (this > 875704437)
  {
    if (this <= 1111970368)
    {
      if (this == 875704438)
      {
        goto LABEL_35;
      }

      v5 = 1094862674;
    }

    else
    {
      if (this == 1111970369 || this == 1278226488)
      {
        return v4;
      }

      v5 = 1278226536;
    }
  }

  else
  {
    if (this > 825437746)
    {
      if (this == 825437747 || this == 843264104)
      {
        return v4;
      }

      if (this != 875704422)
      {
        goto LABEL_30;
      }

LABEL_35:
      if (a2)
      {
        return 2;
      }

      else
      {
        return 1;
      }
    }

    if (this == 32)
    {
      return v4;
    }

    v5 = 825306677;
  }

  if (this == v5)
  {
    return v4;
  }

LABEL_30:
  v6 = CVPixelFormatDescriptionGetDescriptionWithPixelFormatType();
  if (v6)
  {
    v7 = v6;
    if (PixelBufferUtils::planeCountForPixelFormat(this))
    {
      v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277CC4F70]];
      v9 = [v8 objectAtIndexedSubscript:a2];

      v7 = v9;
    }

    v10 = [v7 objectForKeyedSubscript:*MEMORY[0x277CC4F60]];
    v11 = v10;
    if (v10)
    {
      v4 = [v10 intValue];
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {
    PixelBufferUtils::pixelFormatAsString(this, __p);
    if (v15 >= 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    NSLog(&cfstr_SDErrorPixelFo.isa, "horizontalSubsamplingForPixelFormat", 474, this, v12);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }

    return 0;
  }

  return v4;
}

void sub_24048D014(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void PixelBufferUtils::asVImageBuffer(PixelBufferUtils *this@<X0>, CGRect a2@<0:D0, 8:D1, 16:D2, 24:D3>, vImage_Buffer *a3@<X8>)
{
  height = a2.size.height;
  width = a2.size.width;
  y = a2.origin.y;
  x = a2.origin.x;
  BaseAddress = CVPixelBufferGetBaseAddress(this);
  v11 = CVPixelBufferGetHeight(this);
  v12 = CVPixelBufferGetWidth(this);
  BytesPerRow = CVPixelBufferGetBytesPerRow(this);
  if (!BaseAddress)
  {
    NSLog(&cfstr_SDErrorAsvimag.isa, "asVImageBuffer", 305);
    BytesPerRow = 0;
    v12 = 0;
    v11 = 0;
  }

  v15[0] = BaseAddress;
  v15[1] = v11;
  v15[2] = v12;
  v15[3] = BytesPerRow;
  PixelFormatType = CVPixelBufferGetPixelFormatType(this);
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  cropVImageBuffer(a3, v15, v16, PixelFormatType, 0);
}

CVPixelBufferRef PixelBufferUtils::createPixelBuffer(size_t width, size_t height, OSType pixelFormatType, int a4)
{
  BufferAttributes = 0;
  pixelBufferOut = 0;
  v8 = *MEMORY[0x277CBECE8];
  if (a4)
  {
    BufferAttributes = getBufferAttributes();
  }

  if (CVPixelBufferCreate(v8, width, height, pixelFormatType, BufferAttributes, &pixelBufferOut))
  {
    return 0;
  }

  else
  {
    return pixelBufferOut;
  }
}

uint64_t getBufferAttributes(void)
{
  v3[2] = *MEMORY[0x277D85DE8];
  {
    v1 = *MEMORY[0x277CC4D60];
    v2[0] = *MEMORY[0x277CC4DE8];
    v2[1] = v1;
    v3[0] = MEMORY[0x277CBEC10];
    v3[1] = &unk_285252058;
    getBufferAttributes(void)::bufAttr = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:2];
  }

  return getBufferAttributes(void)::bufAttr;
}

CVPixelBufferRef PixelBufferUtils::createPixelBufferWithSameSizeAndFormat(PixelBufferUtils *this, __CVBuffer *a2)
{
  v2 = a2;
  Width = CVPixelBufferGetWidth(this);
  Height = CVPixelBufferGetHeight(this);
  PixelFormatType = CVPixelBufferGetPixelFormatType(this);

  return PixelBufferUtils::createPixelBuffer(Width, Height, PixelFormatType, v2);
}

CVPixelBufferRef PixelBufferUtils::createPixelBufferWithSameSize(PixelBufferUtils *this, __CVBuffer *a2, int a3)
{
  v4 = a2;
  Width = CVPixelBufferGetWidth(this);
  Height = CVPixelBufferGetHeight(this);

  return PixelBufferUtils::createPixelBuffer(Width, Height, v4, a3);
}

uint64_t PixelBufferUtils::componentsPerPixelForPixelFormat(PixelBufferUtils *this, uint64_t a2)
{
  v4 = 4;
  if (this > 1380401728)
  {
    if (this > 1717856626)
    {
      if (this <= 1751411058)
      {
        if (this == 1717856627)
        {
          return 1;
        }

        v5 = 1751410032;
      }

      else
      {
        if (this == 1751411059 || this == 1919365990)
        {
          return 1;
        }

        v5 = 1932996149;
      }

      goto LABEL_31;
    }

    if (this > 1380411456)
    {
      if (this == 1380411457)
      {
        return v4;
      }

      if (this == 1647392359)
      {
        return 1;
      }

      v5 = 1717855600;
      goto LABEL_31;
    }

    if (this == 1380401729)
    {
      return v4;
    }

    v6 = 1380410945;
LABEL_27:
    if (this == v6)
    {
      return v4;
    }

    goto LABEL_38;
  }

  if (this > 875704437)
  {
    if (this > 1111970368)
    {
      if (this == 1111970369)
      {
        return v4;
      }

      if (this == 1278226488)
      {
        return 1;
      }

      v5 = 1278226536;
      goto LABEL_31;
    }

    if (this == 875704438)
    {
      goto LABEL_34;
    }

    v6 = 1094862674;
    goto LABEL_27;
  }

  if (this > 825437746)
  {
    if (this != 825437747)
    {
      if (this == 843264104)
      {
        return 2;
      }

      if (this != 875704422)
      {
        goto LABEL_38;
      }

LABEL_34:
      if (a2)
      {
        return 2;
      }

      else
      {
        return 1;
      }
    }

    return 1;
  }

  if (this == 32)
  {
    return v4;
  }

  v5 = 825306677;
LABEL_31:
  if (this == v5)
  {
    return 1;
  }

LABEL_38:
  v8 = CVPixelFormatDescriptionGetDescriptionWithPixelFormatType();
  v9 = [v8 objectForKeyedSubscript:@"BitsPerComponent"];
  if (v9)
  {
    v10 = PixelBufferUtils::pixelSizeForPixelFormat(this, a2);
    [v9 floatValue];
    v4 = (v10 / ceilf(v11 * 0.125));
  }

  else
  {

    PixelBufferUtils::pixelFormatAsString(this, __p);
    if (v14 >= 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    NSLog(&cfstr_SDErrorPixelFo.isa, "componentsPerPixelForPixelFormat", 613, this, v12);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    return 0;
  }

  return v4;
}

void sub_24048D66C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL PixelBufferUtils::isPixelFormatCompressed(PixelBufferUtils *this)
{
  v2 = CVPixelFormatDescriptionGetDescriptionWithPixelFormatType();
  v3 = 0;
  v4 = *MEMORY[0x277CC4F70];
  v5 = *MEMORY[0x277CC4F18];
  while (v3 < PixelBufferUtils::planeCountForPixelFormat(this))
  {
    v6 = [v2 objectForKeyedSubscript:v4];
    v7 = [v6 objectAtIndexedSubscript:v3];

    v8 = [v7 objectForKeyedSubscript:v5];
    v9 = v8;
    if (v8 && [v8 intValue])
    {

      v11 = 1;
      goto LABEL_10;
    }

    ++v3;
  }

  v10 = [v2 objectForKeyedSubscript:v5];
  v7 = v10;
  if (v10)
  {
    v11 = [v10 intValue] != 0;
  }

  else
  {
    v11 = 0;
  }

LABEL_10:

  return v11;
}

PixelBufferUtils *PixelBufferUtils::uncompressedEquivalentForPixelFormat(PixelBufferUtils *this)
{
  v2 = CVPixelFormatDescriptionGetDescriptionWithPixelFormatType();
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277CC4F50]];
  v4 = v3;
  if (v3)
  {
    this = [v3 unsignedIntValue];
  }

  else if (PixelBufferUtils::isPixelFormatCompressed(this))
  {
    PixelBufferUtils::pixelFormatAsString(this, __p);
    if (v8 >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    NSLog(&cfstr_SDErrorPixelFo.isa, "uncompressedEquivalentForPixelFormat", 694, this, v5);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }

    this = 0;
  }

  return this;
}

void sub_24048D8C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL PixelBufferUtils::isSameDimensionAndFormat(PixelBufferUtils *this, __CVBuffer *a2, __CVBuffer *a3)
{
  Width = CVPixelBufferGetWidth(this);
  if (Width != CVPixelBufferGetWidth(a2))
  {
    return 0;
  }

  Height = CVPixelBufferGetHeight(this);
  if (Height != CVPixelBufferGetHeight(a2))
  {
    return 0;
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(this);
  return PixelFormatType == CVPixelBufferGetPixelFormatType(a2);
}

__CVBuffer *PixelBufferUtils::createRotatedPixelBuffer(PixelBufferUtils *this, __CVBuffer *a2, int a3)
{
  if (!this)
  {
    return 0;
  }

  Width = CVPixelBufferGetWidth(this);
  Height = CVPixelBufferGetHeight(this);
  PixelFormatType = CVPixelBufferGetPixelFormatType(this);
  if ((a2 & 0xFFFFFFFD) == 1)
  {
    v9 = Height;
  }

  else
  {
    v9 = Width;
  }

  if ((a2 & 0xFFFFFFFD) != 1)
  {
    Width = Height;
  }

  pixelBufferOut = 0;
  v10 = *MEMORY[0x277CBECE8];
  BufferAttributes = getBufferAttributes();
  if (CVPixelBufferCreate(v10, v9, Width, PixelFormatType, BufferAttributes, &pixelBufferOut))
  {
    v12 = 0;
  }

  else
  {
    v12 = pixelBufferOut;
  }

  if (PixelBufferUtils::rotatePixelBuffer(this, v12, a2, a3))
  {
    CVPixelBufferRelease(v12);
    return 0;
  }

  return v12;
}

uint64_t PixelBufferUtils::rotatePixelBuffer(CVPixelBufferRef pixelBuffer, __CVBuffer *a2, __CVBuffer *a3, int a4)
{
  backColor[2] = *MEMORY[0x277D85DE8];
  result = 0xFFFFFFFFLL;
  if (pixelBuffer && a2)
  {
    v9 = a3 & 0xFFFFFFFD;
    Width = CVPixelBufferGetWidth(pixelBuffer);
    if (v9 == 1)
    {
      if (Width != CVPixelBufferGetHeight(a2))
      {
        goto LABEL_15;
      }

      Height = CVPixelBufferGetHeight(pixelBuffer);
      v12 = CVPixelBufferGetWidth(a2);
    }

    else
    {
      if (Width != CVPixelBufferGetWidth(a2))
      {
        goto LABEL_15;
      }

      Height = CVPixelBufferGetHeight(pixelBuffer);
      v12 = CVPixelBufferGetHeight(a2);
    }

    if (Height == v12)
    {
      PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
      if (a4 && isVtRotateSupportFormat(PixelFormatType))
      {
        VTRotationSession = createVTRotationSession(a3, 0);
        v15 = MEMORY[0x245CC0D80](VTRotationSession, pixelBuffer, a2);
        if (VTRotationSession)
        {
          MEMORY[0x245CC0D70](VTRotationSession);
          CFRelease(VTRotationSession);
        }

        if (!v15)
        {
          return 0;
        }

        NSLog(&cfstr_SDErrorVtimage.isa, "rotatePixelBufferVT", 956);
        return 0xFFFFFFFFLL;
      }

      v16 = v9 == 1;
      v17 = CVPixelBufferGetPixelFormatType(pixelBuffer);
      CVPixelBufferLockBaseAddress(a2, 0);
      CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL);
      memset(&src, 0, sizeof(src));
      v18 = MEMORY[0x277CBF3A0];
      PixelBufferUtils::asVImageBuffer(pixelBuffer, *MEMORY[0x277CBF3A0], &src);
      memset(&dest, 0, sizeof(dest));
      PixelBufferUtils::asVImageBuffer(a2, *v18, &dest);
      if (v16)
      {
        if (src.width == dest.height)
        {
          v19 = src.height;
          v20 = dest.width;
          goto LABEL_23;
        }
      }

      else if (src.width == dest.width)
      {
        v19 = src.height;
        v20 = dest.height;
LABEL_23:
        if (v19 == v20)
        {
          backColor[0] = 0;
          backColor[1] = 0;
          if (v17 > 1380401728)
          {
            if (v17 <= 1717856626)
            {
              if (v17 <= 1380411456)
              {
                if (v17 != 1380401729)
                {
                  if (v17 != 1380410945)
                  {
                    goto LABEL_79;
                  }

                  v23 = vImageRotate90_ARGBFFFF(&src, &dest, a3, backColor, 0);
                  goto LABEL_69;
                }

                goto LABEL_68;
              }

              if (v17 == 1380411457)
              {
                v23 = vImageRotate90_ARGB16U(&src, &dest, a3, backColor, 0);
                goto LABEL_69;
              }

              if (v17 == 1647392359)
              {
                goto LABEL_64;
              }

              if (v17 != 1717855600)
              {
                goto LABEL_79;
              }

              goto LABEL_60;
            }

            if (v17 > 1919365989)
            {
              if (v17 == 1919365990)
              {
                v25 = 0;
                v22 = 0;
                do
                {
                  if (!v22)
                  {
                    PixelBufferUtils::asVImageBuffer(pixelBuffer, v25, *v18, &__p);
                    src = __p;
                    PixelBufferUtils::asVImageBuffer(a2, v25, *v18, &__p);
                    dest = __p;
                    v22 = vImageRotate90_PlanarF(&src, &dest, a3, 0.0, 0);
                  }

                  v25 = (v25 + 1);
                }

                while (v25 != 3);
                goto LABEL_70;
              }

              if (v17 != 1932996149)
              {
                if (v17 == 1919365992)
                {
                  v24 = 0;
                  v22 = 0;
                  do
                  {
                    if (!v22)
                    {
                      PixelBufferUtils::asVImageBuffer(pixelBuffer, v24, *v18, &__p);
                      src = __p;
                      PixelBufferUtils::asVImageBuffer(a2, v24, *v18, &__p);
                      dest = __p;
                      v22 = vImageRotate90_Planar16F(&src, &dest, a3, 0, 0);
                    }

                    v24 = (v24 + 1);
                  }

                  while (v24 != 3);
                  goto LABEL_70;
                }

                goto LABEL_79;
              }
            }

            else
            {
              if (v17 == 1717856627)
              {
                goto LABEL_60;
              }

              if (v17 != 1751410032)
              {
                v21 = 1751411059;
                goto LABEL_63;
              }
            }
          }

          else
          {
            if (v17 > 875704437)
            {
              if (v17 <= 1278226487)
              {
                if (v17 != 875704438)
                {
                  if (v17 != 1094862674 && v17 != 1111970369)
                  {
LABEL_79:
                    PixelBufferUtils::pixelFormatAsString(v17, &__p);
                    if ((__p.width & 0x8000000000000000) == 0)
                    {
                      p_p = &__p;
                    }

                    else
                    {
                      p_p = __p.data;
                    }

                    NSLog(&cfstr_SDErrorPixelFo.isa, "rotatePixelBufferVImage", 879, v17, p_p);
                    if (SHIBYTE(__p.width) < 0)
                    {
                      operator delete(__p.data);
                    }

                    v22 = -21773;
                    goto LABEL_70;
                  }

                  goto LABEL_68;
                }

                goto LABEL_42;
              }

              if (v17 == 1278226488)
              {
                v23 = vImageRotate90_Planar8(&src, &dest, a3, 0, 0);
                goto LABEL_69;
              }

              if (v17 != 1278226534)
              {
                v21 = 1278226536;
LABEL_63:
                if (v17 != v21)
                {
                  goto LABEL_79;
                }

                goto LABEL_64;
              }

LABEL_60:
              v23 = vImageRotate90_PlanarF(&src, &dest, a3, 0.0, 0);
              goto LABEL_69;
            }

            if (v17 <= 825437746)
            {
              if (v17 == 32)
              {
LABEL_68:
                v23 = vImageRotate90_ARGB8888(&src, &dest, a3, backColor, 0);
                goto LABEL_69;
              }

              v21 = 825306677;
              goto LABEL_63;
            }

            if (v17 != 825437747)
            {
              if (v17 == 843264104)
              {
                v23 = vImageRotate90_CbCr16F(&src, &dest, a3, backColor, 0);
                goto LABEL_69;
              }

              if (v17 != 875704422)
              {
                goto LABEL_79;
              }

LABEL_42:
              PixelBufferUtils::asVImageBuffer(pixelBuffer, 0, *v18, &src);
              PixelBufferUtils::asVImageBuffer(a2, 0, *v18, &dest);
              v22 = vImageRotate90_Planar8(&src, &dest, a3, 0, 0);
              if (v22)
              {
LABEL_70:
                CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
                CVPixelBufferUnlockBaseAddress(a2, 0);
                return v22 != 0;
              }

              PixelBufferUtils::asVImageBuffer(pixelBuffer, 1, *v18, &__p);
              src = __p;
              PixelBufferUtils::asVImageBuffer(a2, 1, *v18, &__p);
              dest = __p;
              v23 = vImageRotate90_Planar16U(&src, &dest, a3, 0, 0);
LABEL_69:
              v22 = v23;
              goto LABEL_70;
            }
          }

LABEL_64:
          v23 = vImageRotate90_Planar16U(&src, &dest, a3, 0, 0);
          goto LABEL_69;
        }
      }

      CVPixelBufferUnlockBaseAddress(a2, 0);
      CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
      return 0xFFFFFFFFLL;
    }

LABEL_15:
    NSLog(&cfstr_SDErrorInvalid.isa, "rotatePixelBuffer", 993);
    return 0xFFFFFFFFLL;
  }

  return result;
}

void sub_24048E148(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t isVtRotateSupportFormat(int a1)
{
  result = 0;
  if (a1 <= 1717856626)
  {
    if (a1 > 1380410944)
    {
      if (a1 == 1380410945)
      {
        return result;
      }

      v3 = 1380411457;
    }

    else
    {
      if (a1 == 825306677)
      {
        return result;
      }

      v3 = 825437747;
    }

    goto LABEL_13;
  }

  if (a1 <= 1919365989)
  {
    if (a1 == 1717856627)
    {
      return result;
    }

    v3 = 1751411059;
    goto LABEL_13;
  }

  if (a1 != 1919365990 && a1 != 1919365992)
  {
    v3 = 1932996149;
LABEL_13:
    if (a1 != v3)
    {
      return 1;
    }
  }

  return result;
}

uint64_t createVTRotationSession(uint64_t a1, int a2)
{
  if (a2)
  {
    NSLog(&cfstr_SDErrorReflect.isa, "createVTRotationSession", 895);
  }

  else
  {
    v2 = VTImageRotationSessionCreate();
    result = 0;
    if (!v2)
    {
      return result;
    }

    MEMORY[0x245CC0D70](0);
    CFRelease(0);
    NSLog(&cfstr_SDErrorUnableT_2.isa, "createVTRotationSession", 916);
  }

  return 0;
}

__CVBuffer *PixelBufferUtils::createCroppedAndScaledPixelBuffer(PixelBufferUtils *this, __CVBuffer *a2, CGRect a3, CGSize a4)
{
  height = a4.height;
  width = a4.width;
  v7 = a3.size.height;
  v8 = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (CGRectIsEmpty(a3))
  {
    v8 = CVPixelBufferGetWidth(this);
    v7 = CVPixelBufferGetHeight(this);
    x = 0.0;
    y = 0.0;
  }

  if (width == *MEMORY[0x277CBF3A8] && height == *(MEMORY[0x277CBF3A8] + 8))
  {
    width = v8;
    height = v7;
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(this);
  pixelBufferOut = 0;
  v13 = *MEMORY[0x277CBECE8];
  BufferAttributes = getBufferAttributes();
  if (CVPixelBufferCreate(v13, width, height, PixelFormatType, BufferAttributes, &pixelBufferOut))
  {
    v15 = 0;
  }

  else
  {
    v15 = pixelBufferOut;
  }

  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = v8;
  v18.size.height = v7;
  if (PixelBufferUtils::cropAndScalePixelBuffer(this, v15, a2, v18, *MEMORY[0x277CBF3A0]))
  {
    CVPixelBufferRelease(v15);
    return 0;
  }

  return v15;
}

uint64_t PixelBufferUtils::cropAndScalePixelBuffer(CVPixelBufferRef pixelBuffer, __CVBuffer *a2, __CVBuffer *a3, CGRect a4, CGRect a5)
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v9 = a4.size.height;
  v10 = a4.size.width;
  v11 = a4.origin.y;
  v12 = a4.origin.x;
  if (!a3 || (v15 = CVPixelBufferGetPixelFormatType(pixelBuffer), !isVtTransferSupportFormat(v15)))
  {
    v25 = CVPixelBufferGetWidth(pixelBuffer);
    v26 = CVPixelBufferGetHeight(pixelBuffer);
    v27 = CVPixelBufferGetWidth(a2);
    v28 = CVPixelBufferGetHeight(a2);
    v63.origin.x = v12;
    v63.origin.y = v11;
    v63.size.width = v10;
    v63.size.height = v9;
    IsEmpty = CGRectIsEmpty(v63);
    v30 = v9;
    if (IsEmpty)
    {
      v12 = 0.0;
      v11 = 0.0;
      v10 = v25;
      v30 = v26;
    }

    rect = v30;
    v64.origin.x = x;
    v64.origin.y = y;
    v64.size.width = width;
    v64.size.height = height;
    v31 = CGRectIsEmpty(v64);
    if (v31)
    {
      v32 = 0.0;
    }

    else
    {
      v32 = x;
    }

    if (v31)
    {
      v33 = 0.0;
    }

    else
    {
      v33 = y;
    }

    v54 = v33;
    if (v31)
    {
      v34 = v27;
    }

    else
    {
      v34 = width;
    }

    v52 = v32;
    v53 = v34;
    if (v31)
    {
      v35 = v28;
    }

    else
    {
      v35 = height;
    }

    v65.origin.x = v12;
    v65.origin.y = v11;
    v65.size.width = v10;
    v65.size.height = rect;
    v66 = CGRectIntegral(v65);
    v36 = v66.origin.x;
    v37 = v66.origin.y;
    v38 = v66.size.width;
    v39 = v66.size.height;
    if (v66.origin.x < 0.0 || v66.origin.y < 0.0 || (v66.origin.x + v66.size.width <= v25 ? (v40 = v66.origin.y + v66.size.height <= v26) : (v40 = 0), !v40))
    {
      NSLog(&cfstr_SDErrorCropOri.isa, "cropAndScalePixelBufferVImage", 1059, *&v66.origin.x, *&v66.origin.y, *&v66.size.width, *&v66.size.height);
      return 0xFFFFFFFFLL;
    }

    if (v52 < 0.0 || v54 < 0.0 || (v52 + v53 <= v27 ? (v41 = v54 + v35 <= v28) : (v41 = 0), !v41))
    {
      NSLog(&cfstr_SDErrorDestrec.isa, "cropAndScalePixelBufferVImage", 1065, *&v52, *&v54, *&v53, *&v35);
      return 0xFFFFFFFFLL;
    }

    CVPixelBufferLockBaseAddress(a2, 0);
    CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL);
    memset(&v61, 0, sizeof(v61));
    v67.origin.x = v36;
    v67.origin.y = v37;
    v67.size.width = v38;
    v67.size.height = v39;
    PixelBufferUtils::asVImageBuffer(pixelBuffer, v67, &v61);
    memset(&v60, 0, sizeof(v60));
    v68.origin.x = v52;
    v68.origin.y = v54;
    v68.size.width = v53;
    v68.size.height = v35;
    PixelBufferUtils::asVImageBuffer(a2, v68, &v60);
    PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
    v43 = PixelFormatType;
    if (PixelFormatType > 1380401728)
    {
      if (PixelFormatType <= 1717856626)
      {
        if (PixelFormatType <= 1380411456)
        {
          if (PixelFormatType != 1380401729)
          {
            if (PixelFormatType == 1380410945)
            {
              v46 = vImageScale_ARGBFFFF(&v61, &v60, 0, 0);
              goto LABEL_79;
            }

            goto LABEL_86;
          }

          goto LABEL_78;
        }

        if (PixelFormatType == 1380411457)
        {
          v46 = vImageScale_ARGB16F(&v61, &v60, 0, 0);
          goto LABEL_79;
        }

        if (PixelFormatType != 1647392359)
        {
          if (PixelFormatType != 1717855600)
          {
            goto LABEL_86;
          }

          goto LABEL_70;
        }
      }

      else
      {
        if (PixelFormatType <= 1919365989)
        {
          if (PixelFormatType != 1717856627)
          {
            if (PixelFormatType == 1751410032)
            {
LABEL_62:
              vImageScale_NearestNeighbor<half>(&v61, &v60);
LABEL_74:
              v45 = 0;
              goto LABEL_80;
            }

            v44 = 1751411059;
            goto LABEL_61;
          }

LABEL_70:
          vImageScale_NearestNeighbor<float>(&v61, &v60);
          goto LABEL_74;
        }

        if (PixelFormatType == 1919365990)
        {
          v49 = 0;
          do
          {
            v75.origin.x = v36;
            v75.origin.y = v37;
            v75.size.width = v38;
            v75.size.height = v39;
            PixelBufferUtils::asVImageBuffer(pixelBuffer, v49, v75, &src);
            v61 = src;
            v76.origin.x = v52;
            v76.size.width = v53;
            v76.origin.y = v54;
            v76.size.height = v35;
            PixelBufferUtils::asVImageBuffer(a2, v49, v76, &src);
            v60 = src;
            v50 = vImageScale_PlanarF(&v61, &v60, 0, 0);
            v45 = v50;
            if (v49 > 1)
            {
              break;
            }

            v49 = (v49 + 1);
          }

          while (!v50);
          goto LABEL_80;
        }

        if (PixelFormatType != 1932996149)
        {
          if (PixelFormatType == 1919365992)
          {
            v47 = 0;
            do
            {
              v73.origin.x = v36;
              v73.origin.y = v37;
              v73.size.width = v38;
              v73.size.height = v39;
              PixelBufferUtils::asVImageBuffer(pixelBuffer, v47, v73, &src);
              v61 = src;
              v74.origin.x = v52;
              v74.size.width = v53;
              v74.origin.y = v54;
              v74.size.height = v35;
              PixelBufferUtils::asVImageBuffer(a2, v47, v74, &src);
              v60 = src;
              v48 = vImageScale_Planar16F(&v61, &v60, 0, 0);
              v45 = v48;
              if (v47 > 1)
              {
                break;
              }

              v47 = (v47 + 1);
            }

            while (!v48);
            goto LABEL_80;
          }

          goto LABEL_86;
        }
      }
    }

    else
    {
      if (PixelFormatType > 875836517)
      {
        if (PixelFormatType <= 1111970368)
        {
          if (PixelFormatType != 875836518 && PixelFormatType != 875836534)
          {
            if (PixelFormatType != 1094862674)
            {
              goto LABEL_86;
            }

            goto LABEL_78;
          }

LABEL_51:
          memset(&src, 0, sizeof(src));
          v69.origin.x = v36;
          v69.origin.y = v37;
          v69.size.width = v38;
          v69.size.height = v39;
          PixelBufferUtils::asVImageBuffer(pixelBuffer, 0, v69, &src);
          memset(&dest, 0, sizeof(dest));
          v70.origin.x = v52;
          v70.origin.y = v54;
          v70.size.width = v53;
          v70.size.height = v35;
          PixelBufferUtils::asVImageBuffer(a2, 0, v70, &dest);
          v45 = vImageScale_Planar8(&src, &dest, 0, 0);
          if (!v45)
          {
            memset(&v57, 0, sizeof(v57));
            v71.origin.x = v36;
            v71.origin.y = v37;
            v71.size.width = v38;
            v71.size.height = v39;
            PixelBufferUtils::asVImageBuffer(pixelBuffer, 1, v71, &v57);
            memset(&v56, 0, sizeof(v56));
            v72.origin.x = v52;
            v72.origin.y = v54;
            v72.size.width = v53;
            v72.size.height = v35;
            PixelBufferUtils::asVImageBuffer(a2, 1, v72, &v56);
            v46 = vImageScale_CbCr8(&v57, &v56, 0, 0);
LABEL_79:
            v45 = v46;
          }

LABEL_80:
          CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
          CVPixelBufferUnlockBaseAddress(a2, 0);
          return v45 != 0;
        }

        if (PixelFormatType != 1111970369)
        {
          if (PixelFormatType != 1278226534)
          {
            v44 = 1278226536;
LABEL_61:
            if (PixelFormatType == v44)
            {
              goto LABEL_62;
            }

LABEL_86:
            PixelBufferUtils::pixelFormatAsString(PixelFormatType, &src);
            if ((src.width & 0x8000000000000000) == 0)
            {
              p_src = &src;
            }

            else
            {
              p_src = src.data;
            }

            NSLog(&cfstr_SDErrorPixelFo.isa, "cropAndScalePixelBufferVImage", 1156, v43, p_src);
            if (SHIBYTE(src.width) < 0)
            {
              operator delete(src.data);
            }

            v45 = -21778;
            goto LABEL_80;
          }

          goto LABEL_70;
        }

LABEL_78:
        v46 = vImageScale_ARGB8888(&v61, &v60, 0, 0);
        goto LABEL_79;
      }

      if (PixelFormatType <= 825437746)
      {
        if (PixelFormatType == 32)
        {
          goto LABEL_78;
        }

        if (PixelFormatType != 825306677)
        {
          goto LABEL_86;
        }
      }

      else if (PixelFormatType != 825437747)
      {
        if (PixelFormatType == 875704422 || PixelFormatType == 875704438)
        {
          goto LABEL_51;
        }

        goto LABEL_86;
      }
    }

    vImageScale_NearestNeighbor<unsigned short>(&v61, &v60);
    goto LABEL_74;
  }

  v16 = v12;
  v17 = v11;
  v18 = v10;
  v19 = v9;
  v20 = x;
  v21 = y;
  v22 = width;
  v23 = height;

  return cropAndScalePixelBufferVT(pixelBuffer, a2, *&v16, *&v20);
}

void sub_24048EBB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (a38 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t isVtTransferSupportFormat(int a1)
{
  result = 0;
  if (a1 <= 1751410031)
  {
    if (a1 > 1717855599)
    {
      if (a1 == 1717855600)
      {
        return result;
      }

      v3 = 1717856627;
    }

    else
    {
      if (a1 == 825306677)
      {
        return result;
      }

      v3 = 825437747;
    }

    goto LABEL_13;
  }

  if (a1 <= 1919365989)
  {
    if (a1 == 1751410032)
    {
      return result;
    }

    v3 = 1751411059;
    goto LABEL_13;
  }

  if (a1 != 1919365990 && a1 != 1919365992)
  {
    v3 = 1932996149;
LABEL_13:
    if (a1 != v3)
    {
      return 1;
    }
  }

  return result;
}

uint64_t cropAndScalePixelBufferVT(__CVBuffer *a1, __CVBuffer *a2, CGRect a3, CGRect a4)
{
  VTTransferSession = createVTTransferSession(a3, a4);
  v7 = VTPixelTransferSessionTransferImage(VTTransferSession, a1, a2);
  if (VTTransferSession)
  {
    VTPixelTransferSessionInvalidate(VTTransferSession);
    CFRelease(VTTransferSession);
  }

  if (!v7)
  {
    return 0;
  }

  NSLog(&cfstr_SDErrorVtpixel.isa, "cropAndScalePixelBufferVT", 1221);
  return 0xFFFFFFFFLL;
}

uint64_t *vImageScale_NearestNeighbor<float>(uint64_t *result, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    v3 = 0;
    v4 = *result;
    v5 = result[1] / v2;
    v6 = result[3];
    v7 = a2[2];
    v8 = a2[3];
    v9 = *a2;
    v10 = result[2] / v7;
    do
    {
      if (v7)
      {
        for (i = 0; i != v7; ++i)
        {
          *(v9 + 4 * i) = *(v4 + v6 * (v5 * v3) + 4 * (v10 * i));
        }
      }

      ++v3;
      v9 += v8;
    }

    while (v3 != v2);
  }

  return result;
}

uint64_t *vImageScale_NearestNeighbor<unsigned short>(uint64_t *result, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    v3 = 0;
    v4 = *result;
    v5 = result[1] / v2;
    v6 = result[3];
    v7 = a2[2];
    v8 = a2[3];
    v9 = *a2;
    v10 = result[2] / v7;
    do
    {
      if (v7)
      {
        for (i = 0; i != v7; ++i)
        {
          *(v9 + 2 * i) = *(v4 + v6 * (v5 * v3) + 2 * (v10 * i));
        }
      }

      ++v3;
      v9 += v8;
    }

    while (v3 != v2);
  }

  return result;
}

uint64_t *vImageScale_NearestNeighbor<half>(uint64_t *result, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    v3 = 0;
    v4 = *result;
    v5 = result[1] / v2;
    v6 = result[3];
    v7 = a2[2];
    v8 = a2[3];
    v9 = *a2;
    v10 = result[2] / v7;
    do
    {
      if (v7)
      {
        for (i = 0; i != v7; ++i)
        {
          *(v9 + 2 * i) = *(v4 + v6 * (v5 * v3) + 2 * (v10 * i));
        }
      }

      ++v3;
      v9 += v8;
    }

    while (v3 != v2);
  }

  return result;
}

VTPixelTransferSessionRef createVTTransferSession(CGRect a1, CGRect a2)
{
  height = a2.size.height;
  width = a2.size.width;
  y = a2.origin.y;
  x = a2.origin.x;
  v6 = a1.size.height;
  v7 = a1.size.width;
  v8 = a1.origin.y;
  v9 = a1.origin.x;
  pixelTransferSessionOut = 0;
  v10 = VTPixelTransferSessionCreate(0, &pixelTransferSessionOut);
  v15.origin.x = v9;
  v15.origin.y = v8;
  v15.size.width = v7;
  v15.size.height = v6;
  if (!CGRectIsEmpty(v15))
  {
    v16.origin.x = v9;
    v16.origin.y = v8;
    v16.size.width = v7;
    v16.size.height = v6;
    DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v16);
    v10 |= VTSessionSetProperty(pixelTransferSessionOut, *MEMORY[0x277CE28B8], DictionaryRepresentation);
    CFRelease(DictionaryRepresentation);
  }

  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  if (!CGRectIsEmpty(v17))
  {
    v18.origin.x = x;
    v18.origin.y = y;
    v18.size.width = width;
    v18.size.height = height;
    v12 = CGRectCreateDictionaryRepresentation(v18);
    v10 |= VTSessionSetProperty(pixelTransferSessionOut, *MEMORY[0x277CE2868], v12);
    CFRelease(v12);
  }

  result = pixelTransferSessionOut;
  if (v10)
  {
    VTPixelTransferSessionInvalidate(pixelTransferSessionOut);
    CFRelease(pixelTransferSessionOut);
    NSLog(&cfstr_SDErrorUnableT_1.isa, "createVTTransferSession", 1192);
    return 0;
  }

  return result;
}

__CVBuffer *PixelBufferUtils::createConvertedPixelBufferFormat(PixelBufferUtils *this, __CVBuffer *a2, __CVBuffer *a3)
{
  PixelBufferWithSameSize = PixelBufferUtils::createPixelBufferWithSameSize(this, a2, 1);
  if (PixelBufferUtils::convertPixelBufferFormat(this, PixelBufferWithSameSize, a3))
  {
    CVPixelBufferRelease(PixelBufferWithSameSize);
    return 0;
  }

  return PixelBufferWithSameSize;
}

uint64_t PixelBufferUtils::convertPixelBufferFormat(PixelBufferUtils *this, __CVBuffer *a2, __CVBuffer *a3)
{
  v3 = 0xFFFFFFFFLL;
  if (!this || !a2)
  {
    return v3;
  }

  v5 = a3;
  PixelFormatType = CVPixelBufferGetPixelFormatType(this);
  v10 = CVPixelBufferGetPixelFormatType(a2);
  if (v5 && isVtTransferSupportFormat(PixelFormatType) && isVtTransferSupportFormat(v10))
  {
    v11 = *MEMORY[0x277CBF3A0];
    v12 = *(MEMORY[0x277CBF3A0] + 8);
    v13 = *(MEMORY[0x277CBF3A0] + 16);
    v14 = *(MEMORY[0x277CBF3A0] + 24);
    v15 = *MEMORY[0x277CBF3A0];
    v16 = v12;
    v17 = v13;
    v18 = v14;

    return cropAndScalePixelBufferVT(this, a2, *&v11, *&v15);
  }

  if (PixelFormatType == v10)
  {

    return PixelBufferUtils::copyPixelBuffer(a2, this, 0);
  }

  v20 = 1;
  if (PixelFormatType > 1751410031)
  {
    if (PixelFormatType != 1751410032)
    {
      v21 = 1751411059;
      goto LABEL_18;
    }

LABEL_21:
    v20 = v10 != 1751411059 && v10 != 1717856627;
    goto LABEL_27;
  }

  if (PixelFormatType == 1717855600)
  {
    goto LABEL_21;
  }

  v21 = 1717856627;
LABEL_18:
  if (PixelFormatType == v21)
  {
    v20 = 0;
    if (v10 != 1717855600)
    {
      v20 = v10 != 1751410032;
    }
  }

LABEL_27:
  if (PixelFormatType <= 1380401728)
  {
    if (PixelFormatType > 1094862673)
    {
      if (PixelFormatType <= 1278226487)
      {
        if (PixelFormatType == 1094862674)
        {
          goto LABEL_67;
        }

        v27 = 1111970369;
        goto LABEL_66;
      }

      if (PixelFormatType == 1278226488)
      {
        if (v10 > 1380401728)
        {
          if (v10 == 1380401729 || v10 == 1380411457)
          {
            goto LABEL_159;
          }

          v50 = 1380410945;
        }

        else
        {
          if (v10 == 32 || v10 == 1094862674)
          {
            goto LABEL_159;
          }

          v50 = 1111970369;
        }

        if (v10 != v50)
        {
          PixelBufferUtils::pixelFormatAsString(v10, &src);
          if ((src.width & 0x8000000000000000) == 0)
          {
            p_src = &src;
          }

          else
          {
            p_src = src.data;
          }

          NSLog(&cfstr_SDErrorPixelFo.isa, "convertPixelBufferFormat", 2323, v10, p_src);
          goto LABEL_211;
        }

        goto LABEL_159;
      }

      if (PixelFormatType == 1278226534)
      {
        goto LABEL_83;
      }

      v23 = 1278226536;
      goto LABEL_78;
    }

    if (PixelFormatType <= 875704421)
    {
      if (PixelFormatType == 32)
      {
        goto LABEL_67;
      }

      if (PixelFormatType == 825437747)
      {
        goto LABEL_49;
      }

      goto LABEL_133;
    }

    if (PixelFormatType != 875704422 && PixelFormatType != 875704438)
    {
      goto LABEL_133;
    }

    if (v10 > 1380401728)
    {
      if (v10 <= 1380411456)
      {
        if (v10 == 1380401729)
        {
          goto LABEL_182;
        }

        v34 = 26177;
      }

      else
      {
        if (v10 == 1919365992)
        {

          return createRGBPlanarHalfFromBuffer(this, a2);
        }

        if (v10 == 1919365990)
        {

          return createRGBPlanarFloatFromBuffer(this, a2, v8, v9);
        }

        v34 = 26689;
      }

      v26 = v34 | 0x52470000;
LABEL_181:
      if (v10 == v26)
      {
        goto LABEL_182;
      }

LABEL_203:
      PixelBufferUtils::pixelFormatAsString(v10, &src);
      if ((src.width & 0x8000000000000000) == 0)
      {
        data = &src;
      }

      else
      {
        data = src.data;
      }

      NSLog(&cfstr_SDErrorPixelFo.isa, "convertPixelBufferFormat", 2258, v10, data);
      goto LABEL_211;
    }

    if (v10 <= 875704437)
    {
      if (v10 == 32)
      {
        goto LABEL_182;
      }

      if (v10 != 875704422)
      {
        goto LABEL_203;
      }
    }

    else if (v10 != 875704438)
    {
      if (v10 != 1094862674)
      {
        v26 = 1111970369;
        goto LABEL_181;
      }

LABEL_182:

      return createBGRAPermutesFromYUV(this, v10, a2);
    }

    NSLog(&cfstr_WarningIncorre.isa);
    v56 = *MEMORY[0x277CBF348];
    v57 = *(MEMORY[0x277CBF348] + 8);
    v58 = *MEMORY[0x277CBF3A0];
    v59 = *(MEMORY[0x277CBF3A0] + 8);
    v60 = *(MEMORY[0x277CBF3A0] + 16);
    v61 = *(MEMORY[0x277CBF3A0] + 24);

    return copyPixelBufferMultiPlane(a2, *&v56, this, *&v58);
  }

  if (PixelFormatType > 1717856626)
  {
    if (PixelFormatType > 1751411058)
    {
      if (PixelFormatType != 1751411059)
      {
        if (PixelFormatType == 1919365990)
        {

          return convertRGBPlanarFloat(this, a2);
        }

        if (PixelFormatType == 1919365992)
        {

          return convertRGBPlanarHalf(this, a2);
        }

        goto LABEL_133;
      }

LABEL_79:
      if (v10 <= 1717856626)
      {
        if (v10 == 1278226534)
        {
          goto LABEL_96;
        }

        v30 = 25968;
      }

      else
      {
        if (v10 == 1751411059 || v10 == 1751410032)
        {
          v31 = &__block_literal_global_224;
          goto LABEL_125;
        }

        v30 = 26995;
      }

      if (v10 != (v30 | 0x66640000))
      {
        goto LABEL_159;
      }

LABEL_96:
      v32 = convertFloat16ToFloat32(this, a2);
      if (v32 == 0 && !v20)
      {
        v33 = &__block_literal_global_222;
        goto LABEL_138;
      }

      return v32;
    }

    if (PixelFormatType == 1717856627)
    {
LABEL_83:
      if (v10 > 1717856626)
      {
        if (v10 != 1717856627)
        {
          if (v10 != 1751411059 && v10 != 1751410032)
          {
            goto LABEL_159;
          }

LABEL_91:
          v32 = convertFloat32ToFloat16(this, a2);
          if (v32 == 0 && !v20)
          {
            v33 = &__block_literal_global_216;
LABEL_138:
            PixelBufferUtils::forEveryPixel(a2, v33, -1);
            return 0;
          }

          return v32;
        }

LABEL_90:
        v31 = &__block_literal_global_220;
LABEL_125:
        PixelBufferUtils::forEveryPixel(this, a2, v31, 0xFFFFFFFFuLL);
        return 0;
      }

      if (v10 == 1278226536)
      {
        goto LABEL_91;
      }

      if (v10 == 1717855600)
      {
        goto LABEL_90;
      }

LABEL_159:

      return convertGrayscaleAsColor(this, v10, a2);
    }

    v23 = 1751410032;
LABEL_78:
    if (PixelFormatType != v23)
    {
      goto LABEL_133;
    }

    goto LABEL_79;
  }

  if (PixelFormatType <= 1380411456)
  {
    if (PixelFormatType == 1380401729)
    {
      goto LABEL_67;
    }

    v27 = 1380410945;
LABEL_66:
    if (PixelFormatType == v27)
    {
      goto LABEL_67;
    }

LABEL_133:
    PixelBufferUtils::pixelFormatAsString(PixelFormatType, &src);
    if ((src.width & 0x8000000000000000) == 0)
    {
      v51 = &src;
    }

    else
    {
      v51 = src.data;
    }

    NSLog(&cfstr_SDErrorPixelFo.isa, "convertPixelBufferFormat", 2330, PixelFormatType, v51);
LABEL_211:
    if (SHIBYTE(src.width) < 0)
    {
      operator delete(src.data);
    }

    return 0xFFFFFFFFLL;
  }

  if (PixelFormatType != 1380411457)
  {
    if (PixelFormatType != 1647392359)
    {
      if (PixelFormatType != 1717855600)
      {
        goto LABEL_133;
      }

      goto LABEL_83;
    }

LABEL_49:
    v24 = CVPixelBufferGetPixelFormatType(a2);
    CVPixelBufferLockBaseAddress(this, 1uLL);
    CVPixelBufferLockBaseAddress(a2, 0);
    memset(&src, 0, sizeof(src));
    v25 = MEMORY[0x277CBF3A0];
    PixelBufferUtils::asVImageBuffer(this, *MEMORY[0x277CBF3A0], &src);
    memset(&dest, 0, sizeof(dest));
    PixelBufferUtils::asVImageBuffer(a2, *v25, &dest);
    if (v24 == 1278226536 || v24 == 1751410032)
    {
      width = src.width;
      if (src.width == dest.width)
      {
        height = src.height;
        if (src.height == dest.height)
        {
          v37 = src.data;
          if (src.data)
          {
            v38 = dest.data;
            if (dest.data)
            {
              if (src.height)
              {
                v39 = 0;
                rowBytes = src.rowBytes;
                v41 = dest.rowBytes;
                do
                {
                  v42 = v37;
                  v43 = v38;
                  for (i = width; i; --i)
                  {
                    v45 = *v42++;
                    _S2 = (v45 * 0.000125) + 0.0;
                    __asm { FCVT            H2, S2 }

                    *v43++ = LOWORD(_S2);
                  }

                  v3 = 0;
                  ++v39;
                  v38 += v41;
                  v37 = (v37 + rowBytes);
                }

                while (v39 != height);
              }

              else
              {
                v3 = 0;
              }

              goto LABEL_168;
            }
          }
        }
      }
    }

    else
    {
      if (v24 == 1717855600)
      {
        if (vImageConvert_16UToF(&src, &dest, 0.0, 0.000125, 0))
        {
          v3 = 0xFFFFFFFFLL;
        }

        else
        {
          v3 = 0;
        }

        goto LABEL_168;
      }

      PixelBufferUtils::pixelFormatAsString(v24, __p);
      if (v65 >= 0)
      {
        v54 = __p;
      }

      else
      {
        v54 = __p[0];
      }

      NSLog(&cfstr_SDErrorPixelFo.isa, "convertfp13_3ToDepthMeters", 1813, v24, v54);
      if (v65 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v3 = 0xFFFFFFFFLL;
LABEL_168:
    CVPixelBufferUnlockBaseAddress(this, 1uLL);
    CVPixelBufferUnlockBaseAddress(a2, 0);
    return v3;
  }

LABEL_67:
  if (v10 > 1380401728)
  {
    if (v10 <= 1380411456)
    {
      if (v10 == 1380401729)
      {
        goto LABEL_107;
      }

      v29 = 26177;
    }

    else
    {
      if (v10 == 1919365992)
      {
        if (PixelFormatType == 1380410945)
        {

          return convert4ChannelToPlanar<float,half>(this, a2);
        }

        else if (PixelFormatType == 1380411457)
        {

          return convert4ChannelToPlanar<half,half>(this, a2);
        }

        else
        {

          return convert4ChannelToPlanar<unsigned char,half>(this, a2);
        }
      }

      if (v10 == 1919365990)
      {
        if (PixelFormatType == 1380410945)
        {

          return convert4ChannelToPlanar<float,float>(this, a2);
        }

        else if (PixelFormatType == 1380411457)
        {

          return convert4ChannelToPlanar<half,float>(this, a2);
        }

        else
        {

          return convert4ChannelToPlanar<unsigned char,float>(this, a2);
        }
      }

      v29 = 26689;
    }

    v28 = v29 | 0x52470000;
LABEL_106:
    if (v10 == v28)
    {
      goto LABEL_107;
    }

    goto LABEL_150;
  }

  if (v10 > 875704437)
  {
    if (v10 != 875704438)
    {
      if (v10 != 1094862674)
      {
        v28 = 1111970369;
        goto LABEL_106;
      }

LABEL_107:

      return convert4ChannelFormats(this, v10, a2);
    }

    goto LABEL_100;
  }

  if (v10 == 32)
  {
    goto LABEL_107;
  }

  if (v10 == 875704422)
  {
LABEL_100:

    return YUVFromBGRAPermutes(this, a2, v8);
  }

LABEL_150:
  if (PixelBufferUtils::planeCountForPixelFormat(v10) || PixelBufferUtils::componentsPerPixelForPixelFormat(v10, 0) != 1)
  {
    PixelBufferUtils::pixelFormatAsString(v10, &src);
    if ((src.width & 0x8000000000000000) == 0)
    {
      v55 = &src;
    }

    else
    {
      v55 = src.data;
    }

    NSLog(&cfstr_SDErrorPixelFo.isa, "convertPixelBufferFormat", 2219, v10, v55);
    goto LABEL_211;
  }

  return convertColorToGrayscale(this, a2, v52, v53);
}

void sub_24048FD4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (*(v19 - 57) < 0)
  {
    operator delete(*(v19 - 80));
  }

  _Unwind_Resume(exception_object);
}

uint64_t PixelBufferUtils::copyPixelBuffer(PixelBufferUtils *this, CVPixelBufferRef pixelBuffer, __CVBuffer *a3)
{
  v3 = a3;
  PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
  if (PixelFormatType != CVPixelBufferGetPixelFormatType(this))
  {
    return 0xFFFFFFFFLL;
  }

  if (v3 && isVtTransferSupportFormat(PixelFormatType))
  {
    v7 = *MEMORY[0x277CBF3A0];
    v8 = *(MEMORY[0x277CBF3A0] + 8);
    v9 = *(MEMORY[0x277CBF3A0] + 16);
    v10 = *(MEMORY[0x277CBF3A0] + 24);
    v11 = *MEMORY[0x277CBF3A0];
    v12 = v8;
    v13 = v9;
    v14 = v10;

    return cropAndScalePixelBufferVT(pixelBuffer, this, *&v7, *&v11);
  }

  else
  {
    v16 = *MEMORY[0x277CBF348];
    v17 = *(MEMORY[0x277CBF348] + 8);
    v18 = *MEMORY[0x277CBF3A0];
    v19 = *(MEMORY[0x277CBF3A0] + 8);
    v20 = *(MEMORY[0x277CBF3A0] + 16);
    v21 = *(MEMORY[0x277CBF3A0] + 24);

    return copyPixelBufferVImage(this, *&v16, pixelBuffer, *&v18);
  }
}

uint64_t convert4ChannelFormats(__CVBuffer *a1, int a2, __CVBuffer *a3)
{
  v90 = *MEMORY[0x277D85DE8];
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v7 = RGBA_FORMAT_MAP();
  LODWORD(v86.data) = a2;
  HIDWORD(v86.data) = PixelFormatType;
  src.data = &v86;
  v8 = std::__hash_table<std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(v7, v86.data);
  v9 = v8[3];
  v10 = *(v8 + 8);
  CVPixelBufferLockBaseAddress(a3, 0);
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  memset(&src, 0, sizeof(src));
  v11 = MEMORY[0x277CBF3A0];
  PixelBufferUtils::asVImageBuffer(a1, *MEMORY[0x277CBF3A0], &src);
  memset(&v86, 0, sizeof(v86));
  PixelBufferUtils::asVImageBuffer(a3, *v11, &v86);
  maxFloat = xmmword_2404C86C0;
  minFloat[0] = 0;
  minFloat[1] = 0;
  v13 = -1;
  if (v10 > 3)
  {
    if (v10 > 5)
    {
      if (v10 == 6)
      {
        height = src.height;
        if (src.height != v86.height)
        {
          goto LABEL_42;
        }

        width = src.width;
        if (src.width != v86.width)
        {
          goto LABEL_42;
        }

        if (!src.height)
        {
          goto LABEL_63;
        }

        v73 = 0;
        rowBytes = v86.rowBytes;
        data = src.data;
        v76 = src.rowBytes;
        v77 = v86.data;
        do
        {
          if (width)
          {
            v78 = &v77[v73 * rowBytes];
            v79 = width;
            v80 = &data[v73 * v76];
            do
            {
              _H0 = *v80;
              __asm { FCVT            S0, H0 }

              *&v78[4 * *v9] = _S0;
              LOWORD(_S0) = *(v80 + 1);
              __asm { FCVT            S0, H0 }

              *&v78[4 * v9[1]] = _S0;
              LOWORD(_S0) = *(v80 + 2);
              __asm { FCVT            S0, H0 }

              *&v78[4 * v9[2]] = _S0;
              LOWORD(_S0) = *(v80 + 3);
              __asm { FCVT            S0, H0 }

              *&v78[4 * v9[3]] = _S0;
              v80 += 8;
              v78 += 16;
              --v79;
            }

            while (v79);
          }

          v13 = 0;
          ++v73;
        }

        while (v73 != height);
      }

      else
      {
        if (v10 != 7)
        {
          goto LABEL_42;
        }

        v46 = src.height;
        if (src.height != v86.height)
        {
          goto LABEL_42;
        }

        v47 = src.width;
        if (src.width != v86.width)
        {
          goto LABEL_42;
        }

        if (!src.height)
        {
          goto LABEL_63;
        }

        v48 = 0;
        do
        {
          if (v47)
          {
            v49 = 0;
            v50 = v86.data + v86.rowBytes * v48;
            v51 = (src.data + src.rowBytes * v48);
            do
            {
              _H0 = *v51;
              __asm { FCVT            S0, H0 }

              v50[*v9] = (_S0 * 255.0);
              LOWORD(_S0) = v51[1];
              __asm { FCVT            S0, H0 }

              v50[v9[1]] = (_S0 * 255.0);
              LOWORD(_S0) = v51[2];
              __asm { FCVT            S0, H0 }

              v50[v9[2]] = (_S0 * 255.0);
              LOWORD(_S0) = v51[3];
              __asm { FCVT            S0, H0 }

              v50[v9[3]] = (_S0 * 255.0);
              ++v49;
              v51 += 4;
              v50 += 4;
              v47 = src.width;
            }

            while (v49 < src.width);
            v46 = src.height;
          }

          v13 = 0;
          ++v48;
        }

        while (v48 < v46);
      }
    }

    else
    {
      if (v10 == 4)
      {
        v45 = vImagePermuteChannels_ARGBFFFF(&src, &v86, v9, 0);
        goto LABEL_41;
      }

      v27 = src.height;
      if (src.height != v86.height)
      {
        goto LABEL_42;
      }

      v28 = src.width;
      if (src.width != v86.width)
      {
        goto LABEL_42;
      }

      if (!src.height)
      {
        goto LABEL_63;
      }

      v29 = 0;
      v31 = v86.rowBytes;
      v30 = src.data;
      v32 = src.rowBytes;
      v33 = v86.data;
      do
      {
        if (v28)
        {
          v34 = &v33[v29 * v31];
          v35 = v28;
          v36 = &v30[v29 * v32];
          do
          {
            _S0 = *v36;
            __asm { FCVT            H0, S0 }

            *&v34[2 * *v9] = _S0;
            _S0 = *(v36 + 1);
            __asm { FCVT            H0, S0 }

            *&v34[2 * v9[1]] = _S0;
            _S0 = *(v36 + 2);
            __asm { FCVT            H0, S0 }

            *&v34[2 * v9[2]] = _S0;
            _S0 = *(v36 + 3);
            __asm { FCVT            H0, S0 }

            *&v34[2 * v9[3]] = _S0;
            v36 += 16;
            v34 += 8;
            --v35;
          }

          while (v35);
        }

        v13 = 0;
        ++v29;
      }

      while (v29 != v27);
    }
  }

  else
  {
    if (v10 <= 1)
    {
      if (v10)
      {
        if (v10 != 1)
        {
          goto LABEL_42;
        }

        v14 = src.height;
        if (src.height != v86.height)
        {
          goto LABEL_42;
        }

        v15 = src.width;
        if (src.width != v86.width)
        {
          goto LABEL_42;
        }

        if (src.height)
        {
          v16 = 0;
          v18 = v86.rowBytes;
          v17 = src.data;
          v19 = src.rowBytes;
          v20 = v86.data;
          do
          {
            if (v15)
            {
              v21 = &v20[v16 * v18];
              v22 = v15;
              v23 = &v17[v16 * v19];
              do
              {
                LOBYTE(_S1) = *v23;
                *&v24 = LODWORD(_S1) * 0.0039216;
                *&v21[4 * *v9] = *&v24;
                LOBYTE(v24) = v23[1];
                *&v25 = v24 * 0.0039216;
                *&v21[4 * v9[1]] = *&v25;
                LOBYTE(v25) = v23[2];
                *&v26 = v25 * 0.0039216;
                *&v21[4 * v9[2]] = *&v26;
                LOBYTE(v26) = v23[3];
                _S1 = v26 * 0.0039216;
                *&v21[4 * v9[3]] = _S1;
                v23 += 4;
                v21 += 16;
                --v22;
              }

              while (v22);
            }

            v13 = 0;
            ++v16;
          }

          while (v16 != v14);
          goto LABEL_42;
        }

LABEL_63:
        v13 = 0;
        goto LABEL_42;
      }

      v45 = vImagePermuteChannels_ARGB8888(&src, &v86, v9, 0);
LABEL_41:
      v13 = v45;
      goto LABEL_42;
    }

    if (v10 != 2)
    {
      v45 = vImageConvert_ARGBFFFFtoARGB8888_dithered(&src, &v86, &maxFloat, minFloat, 0, v9, 0);
      goto LABEL_41;
    }

    v58 = src.height;
    if (src.height != v86.height)
    {
      goto LABEL_42;
    }

    v59 = src.width;
    if (src.width != v86.width)
    {
      goto LABEL_42;
    }

    if (!src.height)
    {
      goto LABEL_63;
    }

    v60 = 0;
    v62 = v86.rowBytes;
    v61 = src.data;
    v63 = src.rowBytes;
    v64 = v86.data;
    do
    {
      if (v59)
      {
        v65 = &v64[v60 * v62];
        v66 = v59;
        v67 = &v61[v60 * v63];
        do
        {
          LOBYTE(_S1) = *v67;
          *&_S1 = LODWORD(_S1) * 0.0039216;
          __asm { FCVT            H1, S1 }

          *&v65[2 * *v9] = _S1;
          LOBYTE(_S1) = v67[1];
          *&_S1 = _S1 * 0.0039216;
          __asm { FCVT            H1, S1 }

          *&v65[2 * v9[1]] = _S1;
          LOBYTE(_S1) = v67[2];
          *&_S1 = _S1 * 0.0039216;
          __asm { FCVT            H1, S1 }

          *&v65[2 * v9[2]] = _S1;
          LOBYTE(_S1) = v67[3];
          _S1 = _S1 * 0.0039216;
          __asm { FCVT            H1, S1 }

          *&v65[2 * v9[3]] = LOWORD(_S1);
          v67 += 4;
          v65 += 8;
          --v66;
        }

        while (v66);
      }

      v13 = 0;
      ++v60;
    }

    while (v60 != v58);
  }

LABEL_42:
  CVPixelBufferUnlockBaseAddress(a3, 0);
  CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  if (v13)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

BOOL YUVFromBGRAPermutes(__CVBuffer *a1, __CVBuffer *a2, __CVBuffer *a3)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  if (PixelFormatType == 1380411457 || (v6 = PixelFormatType, PixelFormatType == 1380410945))
  {
    v6 = 1111970369;
    PixelBufferWithSameSize = PixelBufferUtils::createPixelBufferWithSameSize(a1, 0x42475241, 1);
    v8 = convert4ChannelFormats(a1, 1111970369, PixelBufferWithSameSize);
  }

  else
  {
    v8 = 0;
    PixelBufferWithSameSize = a1;
  }

  v9 = RGBA_FORMAT_MAP();
  destYp.data = ((v6 << 32) | 0x20);
  src.data = &destYp;
  v10 = std::__hash_table<std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(v9, destYp.data)[3];
  CVPixelBufferLockBaseAddress(a2, 0);
  CVPixelBufferLockBaseAddress(PixelBufferWithSameSize, 1uLL);
  memset(&src, 0, sizeof(src));
  v11 = MEMORY[0x277CBF3A0];
  PixelBufferUtils::asVImageBuffer(PixelBufferWithSameSize, *MEMORY[0x277CBF3A0], &src);
  memset(&destYp, 0, sizeof(destYp));
  PixelBufferUtils::asVImageBuffer(a2, 0, *v11, &destYp);
  memset(&destCbCr, 0, sizeof(destCbCr));
  PixelBufferUtils::asVImageBuffer(a2, 1, *v11, &destCbCr);
  if ((YUVFromBGRAPermutes(__CVBuffer *,unsigned int,__CVBuffer *)::isConvesionInfoDefined & 1) == 0)
  {
    v14 = *ymmword_2404CA3A0;
    v8 = vImageConvert_ARGBToYpCbCr_GenerateConversion(*MEMORY[0x277CB86C8], &v14, &YUVFromBGRAPermutes(__CVBuffer *,unsigned int,__CVBuffer *)::conversionInfo, kvImageARGB8888, kvImage420Yp8_CbCr8, 0);
    YUVFromBGRAPermutes(__CVBuffer *,unsigned int,__CVBuffer *)::isConvesionInfoDefined = 1;
  }

  if (v8)
  {
    v12 = 1;
  }

  else
  {
    v12 = vImageConvert_ARGB8888To420Yp8_CbCr8(&src, &destYp, &destCbCr, &YUVFromBGRAPermutes(__CVBuffer *,unsigned int,__CVBuffer *)::conversionInfo, v10, 0) != 0;
  }

  CVPixelBufferUnlockBaseAddress(PixelBufferWithSameSize, 1uLL);
  CVPixelBufferUnlockBaseAddress(a2, 0);
  if (CVPixelBufferGetPixelFormatType(a1) == 1380410945)
  {
    CVPixelBufferRelease(PixelBufferWithSameSize);
  }

  return v12;
}

uint64_t convert4ChannelToPlanar<half,float>(__CVBuffer *a1, __CVBuffer *a2)
{
  v46 = *MEMORY[0x277D85DE8];
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v5 = CVPixelBufferGetPixelFormatType(a2);
  v6 = PixelBufferUtils::planeCountForPixelFormat(v5);
  if (PixelBufferUtils::componentsPerPixelForPixelFormat(PixelFormatType, 0) == 4)
  {
    if (v6)
    {
      CVPixelBufferLockBaseAddress(a2, 0);
      CVPixelBufferLockBaseAddress(a1, 1uLL);
      v7 = RGBA_FORMAT_MAP();
      LODWORD(v43.data) = v5;
      HIDWORD(v43.data) = PixelFormatType;
      __p[0] = &v43;
      v8 = std::__hash_table<std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(v7, v43.data);
      v9 = *(v8 + 8) - 1;
      v10 = 1.0;
      if (v9 <= 6)
      {
        v10 = flt_2404CA3C0[v9];
      }

      v11 = v8[3];
      memset(&v43, 0, sizeof(v43));
      v12 = MEMORY[0x277CBF3A0];
      PixelBufferUtils::asVImageBuffer(a1, *MEMORY[0x277CBF3A0], &v43);
      v13 = 0;
      v42 = 0;
      do
      {
        v15 = *v11++;
        v14 = v15;
        if (v6 <= v15)
        {
          v18 = &__p[v13];
          *v18 = &v42;
          v18[1] = 0;
          v18[2] = 0;
          v18[3] = 0;
        }

        else
        {
          PixelBufferUtils::asVImageBuffer(a2, v14, *v12, &v41);
          v16 = &__p[v13];
          v17 = *&v41.width;
          *v16 = *&v41.data;
          *(v16 + 1) = v17;
        }

        v13 += 4;
      }

      while (v13 != 16);
      height = v43.height;
      if (v43.height)
      {
        v20 = 0;
        v21 = *&v43.width;
        data = v43.data;
        do
        {
          v23 = 0;
          v24 = data;
          do
          {
            v25 = &__p[4 * v23];
            v26 = *v25;
            v27 = v25[3];
            if (&v26[v27 * v20] != &v42 && v21 != 0)
            {
              v29 = &v26[v20 * v27];
              v30 = v24;
              v31 = v21;
              do
              {
                v32 = *v30;
                v30 += 4;
                _H0 = v32;
                __asm { FCVT            S0, H0 }

                *v29++ = v10 * _S0;
                --v31;
              }

              while (v31);
            }

            ++v23;
            ++v24;
          }

          while (v23 != 4);
          ++v20;
          data += *(&v21 + 1);
        }

        while (v20 != height);
      }

      CVPixelBufferUnlockBaseAddress(a2, 0);
      CVPixelBufferUnlockBaseAddress(a1, 1uLL);
      return 0;
    }

    else
    {
      PixelBufferUtils::pixelFormatAsString(v5, __p);
      if (v45 >= 0)
      {
        v40 = __p;
      }

      else
      {
        v40 = __p[0];
      }

      NSLog(&cfstr_SDErrorPixelFo.isa, "convert4ChannelToPlanar", 1376, v5, v40);
      if (v45 < 0)
      {
        operator delete(__p[0]);
      }

      return 4294967294;
    }
  }

  else
  {
    PixelBufferUtils::pixelFormatAsString(PixelFormatType, __p);
    if (v45 >= 0)
    {
      v39 = __p;
    }

    else
    {
      v39 = __p[0];
    }

    NSLog(&cfstr_SDErrorPixelFo.isa, "convert4ChannelToPlanar", 1370, PixelFormatType, v39);
    if (v45 < 0)
    {
      operator delete(__p[0]);
    }

    return 0xFFFFFFFFLL;
  }
}

void sub_2404908FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t convert4ChannelToPlanar<float,float>(__CVBuffer *a1, __CVBuffer *a2)
{
  v41 = *MEMORY[0x277D85DE8];
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v5 = CVPixelBufferGetPixelFormatType(a2);
  v6 = PixelBufferUtils::planeCountForPixelFormat(v5);
  if (PixelBufferUtils::componentsPerPixelForPixelFormat(PixelFormatType, 0) == 4)
  {
    if (v6)
    {
      CVPixelBufferLockBaseAddress(a2, 0);
      CVPixelBufferLockBaseAddress(a1, 1uLL);
      v7 = RGBA_FORMAT_MAP();
      LODWORD(v38.data) = v5;
      HIDWORD(v38.data) = PixelFormatType;
      __p[0] = &v38;
      v8 = std::__hash_table<std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(v7, v38.data);
      v9 = *(v8 + 8) - 1;
      v10 = 1.0;
      if (v9 <= 6)
      {
        v10 = flt_2404CA3C0[v9];
      }

      v11 = v8[3];
      memset(&v38, 0, sizeof(v38));
      v12 = MEMORY[0x277CBF3A0];
      PixelBufferUtils::asVImageBuffer(a1, *MEMORY[0x277CBF3A0], &v38);
      v13 = 0;
      v37 = 0;
      do
      {
        v15 = *v11++;
        v14 = v15;
        if (v6 <= v15)
        {
          v18 = &__p[v13];
          *v18 = &v37;
          v18[1] = 0;
          v18[2] = 0;
          v18[3] = 0;
        }

        else
        {
          PixelBufferUtils::asVImageBuffer(a2, v14, *v12, &v36);
          v16 = &__p[v13];
          v17 = *&v36.width;
          *v16 = *&v36.data;
          *(v16 + 1) = v17;
        }

        v13 += 4;
      }

      while (v13 != 16);
      height = v38.height;
      if (v38.height)
      {
        v20 = 0;
        v21 = *&v38.width;
        data = v38.data;
        do
        {
          v23 = 0;
          v24 = data;
          do
          {
            v25 = &__p[4 * v23];
            v26 = *v25;
            v27 = v25[3];
            if (&v26[v27 * v20] != &v37 && v21 != 0)
            {
              v29 = &v26[v20 * v27];
              v30 = v24;
              v31 = v21;
              do
              {
                v32 = *v30;
                v30 += 4;
                *v29++ = v10 * v32;
                --v31;
              }

              while (v31);
            }

            ++v23;
            ++v24;
          }

          while (v23 != 4);
          ++v20;
          data = (data + *(&v21 + 1));
        }

        while (v20 != height);
      }

      CVPixelBufferUnlockBaseAddress(a2, 0);
      CVPixelBufferUnlockBaseAddress(a1, 1uLL);
      return 0;
    }

    else
    {
      PixelBufferUtils::pixelFormatAsString(v5, __p);
      if (v40 >= 0)
      {
        v35 = __p;
      }

      else
      {
        v35 = __p[0];
      }

      NSLog(&cfstr_SDErrorPixelFo.isa, "convert4ChannelToPlanar", 1376, v5, v35);
      if (v40 < 0)
      {
        operator delete(__p[0]);
      }

      return 4294967294;
    }
  }

  else
  {
    PixelBufferUtils::pixelFormatAsString(PixelFormatType, __p);
    if (v40 >= 0)
    {
      v34 = __p;
    }

    else
    {
      v34 = __p[0];
    }

    NSLog(&cfstr_SDErrorPixelFo.isa, "convert4ChannelToPlanar", 1370, PixelFormatType, v34);
    if (v40 < 0)
    {
      operator delete(__p[0]);
    }

    return 0xFFFFFFFFLL;
  }
}

void sub_240490C00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t convert4ChannelToPlanar<unsigned char,float>(__CVBuffer *a1, __CVBuffer *a2)
{
  v41 = *MEMORY[0x277D85DE8];
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v5 = CVPixelBufferGetPixelFormatType(a2);
  v6 = PixelBufferUtils::planeCountForPixelFormat(v5);
  if (PixelBufferUtils::componentsPerPixelForPixelFormat(PixelFormatType, 0) == 4)
  {
    if (v6)
    {
      CVPixelBufferLockBaseAddress(a2, 0);
      CVPixelBufferLockBaseAddress(a1, 1uLL);
      v7 = RGBA_FORMAT_MAP();
      LODWORD(v38.data) = v5;
      HIDWORD(v38.data) = PixelFormatType;
      __p[0] = &v38;
      v8 = std::__hash_table<std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(v7, v38.data);
      v9 = *(v8 + 8) - 1;
      v10 = 1.0;
      if (v9 <= 6)
      {
        v10 = flt_2404CA3C0[v9];
      }

      v11 = v8[3];
      memset(&v38, 0, sizeof(v38));
      v12 = MEMORY[0x277CBF3A0];
      PixelBufferUtils::asVImageBuffer(a1, *MEMORY[0x277CBF3A0], &v38);
      v13 = 0;
      v37 = 0;
      do
      {
        v15 = *v11++;
        v14 = v15;
        if (v6 <= v15)
        {
          v18 = &__p[v13];
          *v18 = &v37;
          v18[1] = 0;
          v18[2] = 0;
          v18[3] = 0;
        }

        else
        {
          PixelBufferUtils::asVImageBuffer(a2, v14, *v12, &v36);
          v16 = &__p[v13];
          v17 = *&v36.width;
          *v16 = *&v36.data;
          *(v16 + 1) = v17;
        }

        v13 += 4;
      }

      while (v13 != 16);
      height = v38.height;
      if (v38.height)
      {
        v20 = 0;
        v21 = *&v38.width;
        data = v38.data;
        do
        {
          v23 = 0;
          v24 = data;
          do
          {
            v25 = &__p[4 * v23];
            v26 = *v25;
            v27 = v25[3];
            if (&v26[v27 * v20] != &v37 && v21 != 0)
            {
              v29 = &v26[v20 * v27];
              v30 = v24;
              v31 = v21;
              do
              {
                v32 = *v30;
                v30 += 4;
                *v29++ = v10 * v32;
                --v31;
              }

              while (v31);
            }

            ++v23;
            ++v24;
          }

          while (v23 != 4);
          ++v20;
          data += *(&v21 + 1);
        }

        while (v20 != height);
      }

      CVPixelBufferUnlockBaseAddress(a2, 0);
      CVPixelBufferUnlockBaseAddress(a1, 1uLL);
      return 0;
    }

    else
    {
      PixelBufferUtils::pixelFormatAsString(v5, __p);
      if (v40 >= 0)
      {
        v35 = __p;
      }

      else
      {
        v35 = __p[0];
      }

      NSLog(&cfstr_SDErrorPixelFo.isa, "convert4ChannelToPlanar", 1376, v5, v35);
      if (v40 < 0)
      {
        operator delete(__p[0]);
      }

      return 4294967294;
    }
  }

  else
  {
    PixelBufferUtils::pixelFormatAsString(PixelFormatType, __p);
    if (v40 >= 0)
    {
      v34 = __p;
    }

    else
    {
      v34 = __p[0];
    }

    NSLog(&cfstr_SDErrorPixelFo.isa, "convert4ChannelToPlanar", 1370, PixelFormatType, v34);
    if (v40 < 0)
    {
      operator delete(__p[0]);
    }

    return 0xFFFFFFFFLL;
  }
}

void sub_240490F08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t convert4ChannelToPlanar<half,half>(__CVBuffer *a1, __CVBuffer *a2)
{
  v47 = *MEMORY[0x277D85DE8];
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v5 = CVPixelBufferGetPixelFormatType(a2);
  v6 = PixelBufferUtils::planeCountForPixelFormat(v5);
  if (PixelBufferUtils::componentsPerPixelForPixelFormat(PixelFormatType, 0) == 4)
  {
    if (v6)
    {
      CVPixelBufferLockBaseAddress(a2, 0);
      CVPixelBufferLockBaseAddress(a1, 1uLL);
      v7 = RGBA_FORMAT_MAP();
      LODWORD(v44.data) = v5;
      HIDWORD(v44.data) = PixelFormatType;
      __p[0] = &v44;
      v8 = std::__hash_table<std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(v7, v44.data);
      v9 = *(v8 + 8) - 1;
      v10 = 1.0;
      if (v9 <= 6)
      {
        v10 = flt_2404CA3C0[v9];
      }

      v11 = v8[3];
      memset(&v44, 0, sizeof(v44));
      v12 = MEMORY[0x277CBF3A0];
      PixelBufferUtils::asVImageBuffer(a1, *MEMORY[0x277CBF3A0], &v44);
      v13 = 0;
      v43 = 0;
      do
      {
        v15 = *v11++;
        v14 = v15;
        if (v6 <= v15)
        {
          v18 = &__p[v13];
          *v18 = &v43;
          v18[1] = 0;
          v18[2] = 0;
          v18[3] = 0;
        }

        else
        {
          PixelBufferUtils::asVImageBuffer(a2, v14, *v12, &v42);
          v16 = &__p[v13];
          v17 = *&v42.width;
          *v16 = *&v42.data;
          *(v16 + 1) = v17;
        }

        v13 += 4;
      }

      while (v13 != 16);
      height = v44.height;
      if (v44.height)
      {
        v20 = 0;
        v21 = *&v44.width;
        data = v44.data;
        do
        {
          v23 = 0;
          v24 = data;
          do
          {
            v25 = &__p[4 * v23];
            v26 = *v25;
            v27 = v25[3];
            if (&v26[v27 * v20] != &v43 && v21 != 0)
            {
              v29 = &v26[v20 * v27];
              v30 = v24;
              v31 = v21;
              do
              {
                v32 = *v30;
                v30 += 4;
                _H0 = v32;
                __asm { FCVT            S0, H0 }

                _S0 = v10 * _S0;
                __asm { FCVT            H0, S0 }

                *v29 = LOWORD(_S0);
                v29 += 2;
                --v31;
              }

              while (v31);
            }

            ++v23;
            ++v24;
          }

          while (v23 != 4);
          ++v20;
          data += *(&v21 + 1);
        }

        while (v20 != height);
      }

      CVPixelBufferUnlockBaseAddress(a2, 0);
      CVPixelBufferUnlockBaseAddress(a1, 1uLL);
      return 0;
    }

    else
    {
      PixelBufferUtils::pixelFormatAsString(v5, __p);
      if (v46 >= 0)
      {
        v41 = __p;
      }

      else
      {
        v41 = __p[0];
      }

      NSLog(&cfstr_SDErrorPixelFo.isa, "convert4ChannelToPlanar", 1376, v5, v41);
      if (v46 < 0)
      {
        operator delete(__p[0]);
      }

      return 4294967294;
    }
  }

  else
  {
    PixelBufferUtils::pixelFormatAsString(PixelFormatType, __p);
    if (v46 >= 0)
    {
      v40 = __p;
    }

    else
    {
      v40 = __p[0];
    }

    NSLog(&cfstr_SDErrorPixelFo.isa, "convert4ChannelToPlanar", 1370, PixelFormatType, v40);
    if (v46 < 0)
    {
      operator delete(__p[0]);
    }

    return 0xFFFFFFFFLL;
  }
}

void sub_240491218(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t convert4ChannelToPlanar<float,half>(__CVBuffer *a1, __CVBuffer *a2)
{
  v47 = *MEMORY[0x277D85DE8];
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v5 = CVPixelBufferGetPixelFormatType(a2);
  v6 = PixelBufferUtils::planeCountForPixelFormat(v5);
  if (PixelBufferUtils::componentsPerPixelForPixelFormat(PixelFormatType, 0) == 4)
  {
    if (v6)
    {
      CVPixelBufferLockBaseAddress(a2, 0);
      CVPixelBufferLockBaseAddress(a1, 1uLL);
      v7 = RGBA_FORMAT_MAP();
      LODWORD(v44.data) = v5;
      HIDWORD(v44.data) = PixelFormatType;
      __p[0] = &v44;
      v8 = std::__hash_table<std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(v7, v44.data);
      v9 = *(v8 + 8) - 1;
      v10 = 1.0;
      if (v9 <= 6)
      {
        v10 = flt_2404CA3C0[v9];
      }

      v11 = v8[3];
      memset(&v44, 0, sizeof(v44));
      v12 = MEMORY[0x277CBF3A0];
      PixelBufferUtils::asVImageBuffer(a1, *MEMORY[0x277CBF3A0], &v44);
      v13 = 0;
      v43 = 0;
      do
      {
        v15 = *v11++;
        v14 = v15;
        if (v6 <= v15)
        {
          v18 = &__p[v13];
          *v18 = &v43;
          v18[1] = 0;
          v18[2] = 0;
          v18[3] = 0;
        }

        else
        {
          PixelBufferUtils::asVImageBuffer(a2, v14, *v12, &v42);
          v16 = &__p[v13];
          v17 = *&v42.width;
          *v16 = *&v42.data;
          *(v16 + 1) = v17;
        }

        v13 += 4;
      }

      while (v13 != 16);
      height = v44.height;
      if (v44.height)
      {
        v20 = 0;
        v21 = *&v44.width;
        data = v44.data;
        do
        {
          v23 = 0;
          v24 = data;
          do
          {
            v25 = &__p[4 * v23];
            v26 = *v25;
            v27 = v25[3];
            if (&v26[v27 * v20] != &v43 && v21 != 0)
            {
              v29 = &v26[v20 * v27];
              v30 = v24;
              v31 = v21;
              do
              {
                v32 = *v30;
                v30 += 4;
                _S0 = v32;
                __asm
                {
                  FCVT            H0, S0
                  FCVT            S0, H0
                }

                _S0 = v10 * _S0;
                __asm { FCVT            H0, S0 }

                *v29 = LOWORD(_S0);
                v29 += 2;
                --v31;
              }

              while (v31);
            }

            ++v23;
            ++v24;
          }

          while (v23 != 4);
          ++v20;
          data += *(&v21 + 1);
        }

        while (v20 != height);
      }

      CVPixelBufferUnlockBaseAddress(a2, 0);
      CVPixelBufferUnlockBaseAddress(a1, 1uLL);
      return 0;
    }

    else
    {
      PixelBufferUtils::pixelFormatAsString(v5, __p);
      if (v46 >= 0)
      {
        v41 = __p;
      }

      else
      {
        v41 = __p[0];
      }

      NSLog(&cfstr_SDErrorPixelFo.isa, "convert4ChannelToPlanar", 1376, v5, v41);
      if (v46 < 0)
      {
        operator delete(__p[0]);
      }

      return 4294967294;
    }
  }

  else
  {
    PixelBufferUtils::pixelFormatAsString(PixelFormatType, __p);
    if (v46 >= 0)
    {
      v40 = __p;
    }

    else
    {
      v40 = __p[0];
    }

    NSLog(&cfstr_SDErrorPixelFo.isa, "convert4ChannelToPlanar", 1370, PixelFormatType, v40);
    if (v46 < 0)
    {
      operator delete(__p[0]);
    }

    return 0xFFFFFFFFLL;
  }
}

void sub_24049152C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t convert4ChannelToPlanar<unsigned char,half>(__CVBuffer *a1, __CVBuffer *a2)
{
  v45 = *MEMORY[0x277D85DE8];
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v5 = CVPixelBufferGetPixelFormatType(a2);
  v6 = PixelBufferUtils::planeCountForPixelFormat(v5);
  if (PixelBufferUtils::componentsPerPixelForPixelFormat(PixelFormatType, 0) == 4)
  {
    if (v6)
    {
      CVPixelBufferLockBaseAddress(a2, 0);
      CVPixelBufferLockBaseAddress(a1, 1uLL);
      v7 = RGBA_FORMAT_MAP();
      LODWORD(v42.data) = v5;
      HIDWORD(v42.data) = PixelFormatType;
      __p[0] = &v42;
      v8 = std::__hash_table<std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(v7, v42.data);
      v9 = *(v8 + 8) - 1;
      v10 = 1.0;
      if (v9 <= 6)
      {
        v10 = flt_2404CA3C0[v9];
      }

      v11 = v8[3];
      memset(&v42, 0, sizeof(v42));
      v12 = MEMORY[0x277CBF3A0];
      PixelBufferUtils::asVImageBuffer(a1, *MEMORY[0x277CBF3A0], &v42);
      v13 = 0;
      v41 = 0;
      do
      {
        v15 = *v11++;
        v14 = v15;
        if (v6 <= v15)
        {
          v18 = &__p[v13];
          *v18 = &v41;
          v18[1] = 0;
          v18[2] = 0;
          v18[3] = 0;
        }

        else
        {
          PixelBufferUtils::asVImageBuffer(a2, v14, *v12, &v40);
          v16 = &__p[v13];
          v17 = *&v40.width;
          *v16 = *&v40.data;
          *(v16 + 1) = v17;
        }

        v13 += 4;
      }

      while (v13 != 16);
      height = v42.height;
      if (v42.height)
      {
        v20 = 0;
        v21 = *&v42.width;
        data = v42.data;
        do
        {
          v23 = 0;
          v24 = data;
          do
          {
            v25 = &__p[4 * v23];
            v26 = *v25;
            v27 = v25[3];
            if (&v26[v27 * v20] != &v41 && v21 != 0)
            {
              v29 = &v26[v20 * v27];
              v30 = v24;
              v31 = v21;
              do
              {
                v32 = *v30;
                v30 += 4;
                _S0 = v10 * v32;
                __asm { FCVT            H0, S0 }

                *v29 = LOWORD(_S0);
                v29 += 2;
                --v31;
              }

              while (v31);
            }

            ++v23;
            ++v24;
          }

          while (v23 != 4);
          ++v20;
          data += *(&v21 + 1);
        }

        while (v20 != height);
      }

      CVPixelBufferUnlockBaseAddress(a2, 0);
      CVPixelBufferUnlockBaseAddress(a1, 1uLL);
      return 0;
    }

    else
    {
      PixelBufferUtils::pixelFormatAsString(v5, __p);
      if (v44 >= 0)
      {
        v39 = __p;
      }

      else
      {
        v39 = __p[0];
      }

      NSLog(&cfstr_SDErrorPixelFo.isa, "convert4ChannelToPlanar", 1376, v5, v39);
      if (v44 < 0)
      {
        operator delete(__p[0]);
      }

      return 4294967294;
    }
  }

  else
  {
    PixelBufferUtils::pixelFormatAsString(PixelFormatType, __p);
    if (v44 >= 0)
    {
      v38 = __p;
    }

    else
    {
      v38 = __p[0];
    }

    NSLog(&cfstr_SDErrorPixelFo.isa, "convert4ChannelToPlanar", 1370, PixelFormatType, v38);
    if (v44 < 0)
    {
      operator delete(__p[0]);
    }

    return 0xFFFFFFFFLL;
  }
}

void sub_24049183C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t convertColorToGrayscale(__CVBuffer *a1, __CVBuffer *a2, uint64_t a3, BOOL a4)
{
  ConvertedPixelBufferFormat = PixelBufferUtils::createConvertedPixelBufferFormat(a1, 0x34323066, 0, a4);
  if (ConvertedPixelBufferFormat)
  {
    v6 = ConvertedPixelBufferFormat;
    CVPixelBufferLockBaseAddress(a2, 0);
    memset(&dest, 0, sizeof(dest));
    v7 = MEMORY[0x277CBF3A0];
    PixelBufferUtils::asVImageBuffer(a2, 0, *MEMORY[0x277CBF3A0], &dest);
    CVPixelBufferLockBaseAddress(v6, 1uLL);
    memset(&src, 0, sizeof(src));
    PixelBufferUtils::asVImageBuffer(v6, 0, *v7, &src);
    PixelFormatType = CVPixelBufferGetPixelFormatType(a2);
    v9 = PixelFormatType;
    if (PixelFormatType > 1278226535)
    {
      if (PixelFormatType != 1278226536 && PixelFormatType != 1647392359)
      {
LABEL_10:
        PixelBufferUtils::pixelFormatAsString(PixelFormatType, __p);
        if (v15 >= 0)
        {
          v12 = __p;
        }

        else
        {
          v12 = __p[0];
        }

        NSLog(&cfstr_SDErrorPixelFo.isa, "convertColorToGrayscale", 2137, v9, v12);
        if (v15 < 0)
        {
          operator delete(__p[0]);
        }

        v10 = 1;
        goto LABEL_19;
      }

      v11 = vImageConvert_Planar8toPlanar16F(&src, &dest, 0);
    }

    else
    {
      if (PixelFormatType == 1278226488)
      {
        vImageCopyBuffer(&src, &dest, 1uLL, 0);
      }

      else if (PixelFormatType != 1278226534)
      {
        goto LABEL_10;
      }

      v11 = vImageConvert_Planar8toPlanarF(&src, &dest, 1.0, 0.0, 0);
    }

    v10 = v11 != 0;
LABEL_19:
    CVPixelBufferUnlockBaseAddress(v6, 1uLL);
    CVPixelBufferUnlockBaseAddress(a2, 0);
    CVPixelBufferRelease(v6);
    return v10;
  }

  return 0xFFFFFFFFLL;
}

void sub_240491A38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t convertRGBPlanarFloat(__CVBuffer *a1, __CVBuffer *a2)
{
  minFloat[2] = *MEMORY[0x277D85DE8];
  if (CVPixelBufferGetPixelFormatType(a1) != 1919365990)
  {
    return 0xFFFFFFFFLL;
  }

  CVPixelBufferLockBaseAddress(a1, 1uLL);
  CVPixelBufferLockBaseAddress(a2, 0);
  memset(&dest, 0, sizeof(dest));
  v4 = MEMORY[0x277CBF3A0];
  PixelBufferUtils::asVImageBuffer(a2, *MEMORY[0x277CBF3A0], &dest);
  memset(&blue, 0, sizeof(blue));
  PixelBufferUtils::asVImageBuffer(a1, 0, *v4, &blue);
  memset(&green, 0, sizeof(green));
  PixelBufferUtils::asVImageBuffer(a1, 1, *v4, &green);
  memset(&red, 0, sizeof(red));
  PixelBufferUtils::asVImageBuffer(a1, 2, *v4, &red);
  minFloat[0] = 0;
  minFloat[1] = 0;
  maxFloat = xmmword_2404C86C0;
  PixelFormatType = CVPixelBufferGetPixelFormatType(a2);
  v6 = PixelFormatType;
  if (PixelFormatType <= 1111970368)
  {
    if (PixelFormatType == 32)
    {
      v7 = vImageConvert_PlanarFToXRGB8888(0xFFu, &blue, &green, &red, &dest, &maxFloat, minFloat, 0);
      goto LABEL_14;
    }

    if (PixelFormatType == 1094862674)
    {
      v7 = vImageConvert_PlanarFToXRGB8888(0xFFu, &red, &green, &blue, &dest, &maxFloat, minFloat, 0);
      goto LABEL_14;
    }

LABEL_19:
    PixelBufferUtils::pixelFormatAsString(PixelFormatType, __p);
    if (v12 >= 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    NSLog(&cfstr_SDErrorPixelFo.isa, "convertRGBPlanarFloat", 2001, v6, v10);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }

    v9 = -21783;
    goto LABEL_15;
  }

  if (PixelFormatType == 1111970369)
  {
    v7 = vImageConvert_PlanarFToBGRX8888(&red, &green, &blue, 0xFFu, &dest, &maxFloat, minFloat, 0);
    goto LABEL_14;
  }

  if (PixelFormatType == 1380401729)
  {
    v7 = vImageConvert_PlanarFToBGRX8888(&blue, &green, &red, 0xFFu, &dest, &maxFloat, minFloat, 0);
    goto LABEL_14;
  }

  if (PixelFormatType != 1380410945)
  {
    goto LABEL_19;
  }

  v7 = vImageConvert_PlanarFToBGRXFFFF(&blue, &green, &red, 1.0, &dest, 0);
LABEL_14:
  v9 = v7;
LABEL_15:
  CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  CVPixelBufferUnlockBaseAddress(a2, 0);
  if (v9)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

void sub_240491D2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t convertRGBPlanarHalf(__CVBuffer *a1, __CVBuffer *a2)
{
  if (CVPixelBufferGetPixelFormatType(a1) != 1919365992)
  {
    return 0xFFFFFFFFLL;
  }

  PixelBufferWithSameSize = PixelBufferUtils::createPixelBufferWithSameSize(a1, 0x72673366, 1);
  v5 = convertFloat16ToFloat32(a1, PixelBufferWithSameSize);
  if (!v5)
  {
    v5 = convertRGBPlanarFloat(PixelBufferWithSameSize, a2);
  }

  CVPixelBufferRelease(PixelBufferWithSameSize);
  return v5;
}

uint64_t createBGRAPermutesFromYUV(CVPixelBufferRef pixelBuffer, int a2, __CVBuffer *this)
{
  v6 = a2 == 1380411457 || a2 == 1380410945;
  PixelBufferWithSameSize = this;
  v8 = a2;
  if (v6)
  {
    v8 = 1111970369;
    PixelBufferWithSameSize = PixelBufferUtils::createPixelBufferWithSameSize(this, 0x42475241, 1);
  }

  CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL);
  CVPixelBufferLockBaseAddress(PixelBufferWithSameSize, 0);
  memset(&srcYp, 0, sizeof(srcYp));
  v9 = MEMORY[0x277CBF3A0];
  PixelBufferUtils::asVImageBuffer(pixelBuffer, 0, *MEMORY[0x277CBF3A0], &srcYp);
  memset(&srcCbCr, 0, sizeof(srcCbCr));
  PixelBufferUtils::asVImageBuffer(pixelBuffer, 1, *v9, &srcCbCr);
  memset(&dest, 0, sizeof(dest));
  PixelBufferUtils::asVImageBuffer(PixelBufferWithSameSize, *v9, &dest);
  v10 = RGBA_FORMAT_MAP();
  v15 = v8 | 0x2000000000;
  *&v14.Yp_bias = &v15;
  v11 = std::__hash_table<std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(v10, v15)[3];
  if ((createBGRAPermutesFromYUV(__CVBuffer *,unsigned int,__CVBuffer *)::isConvesionInfoDefined & 1) != 0 || (v14 = *ymmword_2404CA3A0, v12 = vImageConvert_YpCbCrToARGB_GenerateConversion(*MEMORY[0x277CB86E0], &v14, &createBGRAPermutesFromYUV(__CVBuffer *,unsigned int,__CVBuffer *)::conversionInfo, kvImage420Yp8_CbCr8, kvImageARGB8888, 0), createBGRAPermutesFromYUV(__CVBuffer *,unsigned int,__CVBuffer *)::isConvesionInfoDefined = 1, !v12))
  {
    v12 = vImageConvert_420Yp8_CbCr8ToARGB8888(&srcYp, &srcCbCr, &dest, &createBGRAPermutesFromYUV(__CVBuffer *,unsigned int,__CVBuffer *)::conversionInfo, v11, 0xFFu, 0);
  }

  CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
  CVPixelBufferUnlockBaseAddress(PixelBufferWithSameSize, 0);
  if (a2 == 1380411457 || a2 == 1380410945)
  {
    v12 = convert4ChannelFormats(PixelBufferWithSameSize, a2, this);
    CVPixelBufferRelease(PixelBufferWithSameSize);
  }

  if (v12)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t createRGBPlanarFloatFromBuffer(__CVBuffer *a1, __CVBuffer *a2, uint64_t a3, BOOL a4)
{
  ConvertedPixelBufferFormat = PixelBufferUtils::createConvertedPixelBufferFormat(a1, 0x52476641, 0, a4);
  if (!ConvertedPixelBufferFormat)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = ConvertedPixelBufferFormat;
  CVPixelBufferLockBaseAddress(ConvertedPixelBufferFormat, 1uLL);
  CVPixelBufferLockBaseAddress(a2, 0);
  memset(&srcARGB, 0, sizeof(srcARGB));
  v7 = MEMORY[0x277CBF3A0];
  PixelBufferUtils::asVImageBuffer(v6, *MEMORY[0x277CBF3A0], &srcARGB);
  memset(&destA, 0, sizeof(destA));
  PixelBufferUtils::asVImageBuffer(a2, 0, *v7, &destA);
  memset(&destR, 0, sizeof(destR));
  PixelBufferUtils::asVImageBuffer(a2, 1, *v7, &destR);
  memset(&destG, 0, sizeof(destG));
  PixelBufferUtils::asVImageBuffer(a2, 2, *v7, &destG);
  if (MEMORY[0x245CC1C40](&v11, srcARGB.height, srcARGB.width, 32, 0))
  {
    v8 = 0xFFFFFFFFLL;
  }

  else
  {
    v9 = vImageConvert_ARGBFFFFtoPlanarF(&srcARGB, &destA, &destR, &destG, &v11, 0);
    free(v11.data);
    if (v9)
    {
      v8 = 0xFFFFFFFFLL;
    }

    else
    {
      v8 = 0;
    }
  }

  CVPixelBufferUnlockBaseAddress(v6, 1uLL);
  CVPixelBufferUnlockBaseAddress(a2, 0);
  CVPixelBufferRelease(v6);
  return v8;
}

uint64_t createRGBPlanarHalfFromBuffer(__CVBuffer *a1, __CVBuffer *this)
{
  PixelBufferWithSameSize = PixelBufferUtils::createPixelBufferWithSameSize(this, 0x72673366, 1);
  if (createRGBPlanarFloatFromBuffer(a1, PixelBufferWithSameSize, v5, v6))
  {
    v7 = 0xFFFFFFFFLL;
  }

  else
  {
    v7 = convertFloat32ToFloat16(PixelBufferWithSameSize, this);
  }

  CVPixelBufferRelease(PixelBufferWithSameSize);
  return v7;
}

uint64_t copyPixelBufferMultiPlane(__CVBuffer *a1, CGPoint a2, __CVBuffer *a3, CGRect a4)
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a2.y;
  v10 = a2.x;
  PlaneCount = CVPixelBufferGetPlaneCount(a3);
  PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
  CVPixelBufferLockBaseAddress(a1, 0);
  CVPixelBufferLockBaseAddress(a3, 1uLL);
  if (PlaneCount)
  {
    v14 = 0;
    v15 = MEMORY[0x277CBF3A0];
    while (1)
    {
      v16 = PixelBufferUtils::pixelSizeForPixelFormat(PixelFormatType, v14);
      memset(&src, 0, sizeof(src));
      PixelBufferUtils::asVImageBuffer(a3, v14, *v15, &src);
      memset(&v18, 0, sizeof(v18));
      PixelBufferUtils::asVImageBuffer(a1, v14, *v15, &v18);
      v20.origin.x = x;
      v20.origin.y = y;
      v20.size.width = width;
      v20.size.height = height;
      if (updateVImageBufferToRegion(&src, v20, v16))
      {
        return 0xFFFFFFFFLL;
      }

      v21.size.width = src.width;
      v21.size.height = src.height;
      v21.origin.x = v10;
      v21.origin.y = v9;
      if (updateVImageBufferToRegion(&v18, v21, v16))
      {
        return 0xFFFFFFFFLL;
      }

      vImageCopyBuffer(&src, &v18, v16, 0);
      v14 = (v14 + 1);
      if (PlaneCount == v14)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    CVPixelBufferUnlockBaseAddress(a1, 0);
    CVPixelBufferUnlockBaseAddress(a3, 1uLL);
    return 0;
  }
}

uint64_t convertFloat32ToFloat16(__CVBuffer *a1, __CVBuffer *a2)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v5 = PixelBufferUtils::planeCountForPixelFormat(PixelFormatType);
  v6 = CVPixelBufferGetPixelFormatType(a2);
  if (v5 == PixelBufferUtils::planeCountForPixelFormat(v6))
  {
    CVPixelBufferLockBaseAddress(a1, 1uLL);
    CVPixelBufferLockBaseAddress(a2, 0);
    if (v5)
    {
      v7 = 1;
      v8 = MEMORY[0x277CBF3A0];
      do
      {
        memset(&src, 0, sizeof(src));
        PixelBufferUtils::asVImageBuffer(a1, (v7 - 1), *v8, &src);
        memset(&dest, 0, sizeof(dest));
        PixelBufferUtils::asVImageBuffer(a2, (v7 - 1), *v8, &dest);
        v9 = vImageConvert_PlanarFtoPlanar16F(&src, &dest, 0);
        v10 = v9;
        if (v7 >= v5)
        {
          break;
        }

        ++v7;
      }

      while (!v9);
    }

    else
    {
      memset(&src, 0, sizeof(src));
      v12 = MEMORY[0x277CBF3A0];
      PixelBufferUtils::asVImageBuffer(a1, *MEMORY[0x277CBF3A0], &src);
      memset(&dest, 0, sizeof(dest));
      PixelBufferUtils::asVImageBuffer(a2, *v12, &dest);
      v10 = vImageConvert_PlanarFtoPlanar16F(&src, &dest, 0);
    }

    CVPixelBufferUnlockBaseAddress(a1, 1uLL);
    CVPixelBufferUnlockBaseAddress(a2, 0);
    return v10 != 0;
  }

  else
  {
    NSLog(&cfstr_SDErrorInputAn.isa, "convertFloat32ToFloat16", 1704);
    return 0xFFFFFFFFLL;
  }
}

void PixelBufferUtils::forEveryPixel(__CVBuffer *a1, void *a2, int a3)
{
  v18 = a2;
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v6 = PixelBufferUtils::pixelSizeForPixelFormat(PixelFormatType, a3);
  PlaneCount = CVPixelBufferGetPlaneCount(a1);
  if (PlaneCount)
  {
    v8 = 3773;
    v9 = @"%s:%d - ERROR - multiplane pixel buffer with nonmatching plane index";
    if (a3 < 0 || PlaneCount <= a3)
    {
      goto LABEL_7;
    }
  }

  else if (a3 != -1)
  {
    v8 = 3778;
    v9 = @"%s:%d - ERROR - cannot request plane for single-plane image";
LABEL_7:
    NSLog(&v9->isa, "forEveryPixel", v8);
    goto LABEL_17;
  }

  CVPixelBufferLockBaseAddress(a1, 0);
  pixelBuffer = a1;
  if (PlaneCount)
  {
    PixelBufferUtils::asVImageBuffer(a1, a3, *MEMORY[0x277CBF3A0], &v19);
  }

  else
  {
    PixelBufferUtils::asVImageBuffer(a1, *MEMORY[0x277CBF3A0], &v19);
  }

  data = v19.data;
  height = v19.height;
  width = v19.width;
  rowBytes = v19.rowBytes;
  if (v19.height)
  {
    v14 = 0;
    do
    {
      v15 = data;
      for (i = width; i; --i)
      {
        (v18)[2](v18, v15, PixelFormatType);
        v15 += v6;
      }

      ++v14;
      data += rowBytes;
    }

    while (v14 != height);
  }

  CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
LABEL_17:
}

void PixelBufferUtils::forEveryPixel(__CVBuffer *a1, __CVBuffer *a2, void *a3, vImagePixelCount a4)
{
  v31 = a3;
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v9 = CVPixelBufferGetPixelFormatType(a2);
  v10 = PixelBufferUtils::pixelSizeForPixelFormat(PixelFormatType, 0);
  v11 = PixelBufferUtils::pixelSizeForPixelFormat(v9, 0);
  PlaneCount = CVPixelBufferGetPlaneCount(a1);
  if (PlaneCount != CVPixelBufferGetPlaneCount(a2))
  {
    v13 = 3813;
    v14 = @"%s:%d - ERROR - mismatching planes number in input buffers";
LABEL_7:
    NSLog(&v14->isa, "forEveryPixel", v13);
    goto LABEL_28;
  }

  if (PlaneCount)
  {
    v13 = 3818;
    v14 = @"%s:%d - ERROR - multiplane pixel buffers with nonmatching plane index";
    if ((a4 & 0x80000000) != 0 || PlaneCount <= a4)
    {
      goto LABEL_7;
    }
  }

  else if (a4 != -1)
  {
    NSLog(&cfstr_SDErrorCannotR_0.isa, "forEveryPixel", 3823);
    goto LABEL_28;
  }

  CVPixelBufferLockBaseAddress(a1, 0);
  CVPixelBufferLockBaseAddress(a2, 0);
  if (PlaneCount)
  {
    if ((a4 & 0x80000000) != 0)
    {
      goto LABEL_16;
    }

    v15 = MEMORY[0x277CBF3A0];
    PixelBufferUtils::asVImageBuffer(a1, a4, *MEMORY[0x277CBF3A0], &v32);
    height = v32.height;
    data = v32.data;
    rowBytes = v32.rowBytes;
    width = v32.width;
    PixelBufferUtils::asVImageBuffer(a2, a4, *v15, &v32);
  }

  else
  {
    v16 = MEMORY[0x277CBF3A0];
    PixelBufferUtils::asVImageBuffer(a1, *MEMORY[0x277CBF3A0], &v32);
    height = v32.height;
    data = v32.data;
    rowBytes = v32.rowBytes;
    width = v32.width;
    PixelBufferUtils::asVImageBuffer(a2, *v16, &v32);
  }

  v4 = v32.data;
  a4 = v32.height;
  PlaneCount = v32.width;
  v25 = v32.rowBytes;
  if (height != v32.height || width != v32.width)
  {
LABEL_16:
    NSLog(&cfstr_WarningSizesIn.isa);
    if (height >= a4)
    {
      v17 = a4;
    }

    else
    {
      v17 = height;
    }

    v18 = width;
    if (width >= PlaneCount)
    {
      v18 = PlaneCount;
    }

    width = v18;
    height = v17;
  }

  pixelBuffer = a1;
  v24 = a2;
  v19 = data;
  if (height)
  {
    for (i = 0; i != height; ++i)
    {
      v30 = v19;
      v21 = v4;
      for (j = width; j; --j)
      {
        v31[2](v31, v19, PixelFormatType, v21, v9);
        v21 += v11;
        v19 += v10;
      }

      v4 += v25;
      v19 = &v30[rowBytes];
    }
  }

  CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
  CVPixelBufferUnlockBaseAddress(v24, 0);
LABEL_28:
}

uint64_t convertGrayscaleAsColor(__CVBuffer *a1, PixelBufferUtils *a2, __CVBuffer *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  if (a2 > 1380401728)
  {
    if (a2 == 1380401729 || a2 == 1380410945)
    {
      goto LABEL_9;
    }

    v7 = 1380411457;
  }

  else
  {
    if (a2 == 32 || a2 == 1094862674)
    {
      goto LABEL_9;
    }

    v7 = 1111970369;
  }

  if (a2 != v7)
  {
    PixelBufferUtils::pixelFormatAsString(a2, &red);
    if ((red.width & 0x8000000000000000) == 0)
    {
      p_red = &red;
    }

    else
    {
      p_red = red.data;
    }

    NSLog(&cfstr_SDErrorPixelFo.isa, "convertGrayscaleAsColor", 1580, a2, p_red);
    if ((SHIBYTE(red.width) & 0x80000000) == 0)
    {
      return 0xFFFFFFFFLL;
    }

    data = red.data;
    goto LABEL_54;
  }

LABEL_9:
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  CVPixelBufferLockBaseAddress(a3, 0);
  memset(&red, 0, sizeof(red));
  v8 = MEMORY[0x277CBF3A0];
  PixelBufferUtils::asVImageBuffer(a1, *MEMORY[0x277CBF3A0], &red);
  memset(&dest, 0, sizeof(dest));
  PixelBufferUtils::asVImageBuffer(a3, *v8, &dest);
  v9 = RGBA_FORMAT_MAP();
  *&maxFloat = a2 | 0x2000000000;
  src.data = &maxFloat;
  ConvertedPixelBufferFormat = 0;
  v11 = 0;
  v13 = std::__hash_table<std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(v9, maxFloat)[3];
  maxFloat = xmmword_2404C86C0;
  minFloat[0] = 0;
  minFloat[1] = 0;
  if (PixelFormatType <= 1717855599)
  {
    if (PixelFormatType == 1278226488)
    {
      if (a2 == 1380411457)
      {
        PixelBufferWithSameSize = PixelBufferUtils::createPixelBufferWithSameSize(a3, 0x52476641, 1);
        CVPixelBufferLockBaseAddress(PixelBufferWithSameSize, 0);
        memset(&src, 0, sizeof(src));
        PixelBufferUtils::asVImageBuffer(PixelBufferWithSameSize, *v8, &src);
        v15 = vImageConvert_Planar8ToBGRXFFFF(&red, &red, &red, 1.0, &src, &maxFloat, minFloat, 0);
        if (!v15)
        {
          src.width *= 4;
          v15 = vImageConvert_PlanarFtoPlanar16F(&src, &dest, 0);
        }

        ConvertedPixelBufferFormat = 0;
        goto LABEL_40;
      }

      if (a2 == 1380410945)
      {
        v20 = vImageConvert_Planar8ToXRGBFFFF(1.0, &red, &red, &red, &dest, &maxFloat, minFloat, 0);
      }

      else if (*v13 == 3)
      {
        v20 = vImageConvert_Planar8ToBGRX8888(&red, &red, &red, 0xFFu, &dest, 0);
      }

      else
      {
        if (*v13)
        {
          ConvertedPixelBufferFormat = 0;
          goto LABEL_66;
        }

        v20 = vImageConvert_Planar8ToXRGB8888(0xFFu, &red, &red, &red, &dest, 0);
      }

      v15 = v20;
      ConvertedPixelBufferFormat = 0;
      goto LABEL_39;
    }

    if (PixelFormatType == 1278226534)
    {
LABEL_21:
      if (a2 == 1380411457)
      {
        PixelBufferWithSameSize = PixelBufferUtils::createPixelBufferWithSameSize(a3, 0x52476641, 1);
        CVPixelBufferLockBaseAddress(PixelBufferWithSameSize, 0);
        memset(&src, 0, sizeof(src));
        PixelBufferUtils::asVImageBuffer(PixelBufferWithSameSize, *v8, &src);
        v15 = vImageConvert_PlanarFToBGRXFFFF(&red, &red, &red, 1.0, &src, 0);
        if (!v15)
        {
          src.width *= 4;
          v15 = vImageConvert_PlanarFtoPlanar16F(&src, &dest, 0);
        }

        goto LABEL_40;
      }

      if (a2 == 1380410945)
      {
        v17 = vImageConvert_PlanarFToBGRXFFFF(&red, &red, &red, 1.0, &dest, 0);
LABEL_38:
        v15 = v17;
LABEL_39:
        PixelBufferWithSameSize = 0;
LABEL_40:
        v11 = 1;
        goto LABEL_41;
      }

      if (*v13 == 3)
      {
        v17 = vImageConvert_PlanarFToBGRX8888(&red, &red, &red, 0xFFu, &dest, &maxFloat, minFloat, 0);
        goto LABEL_38;
      }

      if (!*v13)
      {
        v17 = vImageConvert_PlanarFToXRGB8888(0xFFu, &red, &red, &red, &dest, &maxFloat, minFloat, 0);
        goto LABEL_38;
      }

LABEL_66:
      PixelBufferWithSameSize = 0;
      v11 = 0;
      v15 = 0;
      goto LABEL_41;
    }

    v16 = 1278226536;
    goto LABEL_19;
  }

  if (PixelFormatType > 1751410031)
  {
    if (PixelFormatType == 1751411059)
    {
LABEL_20:
      ConvertedPixelBufferFormat = PixelBufferUtils::createConvertedPixelBufferFormat(a1, 0x4C303066, 0, v12);
      CVPixelBufferLockBaseAddress(ConvertedPixelBufferFormat, 1uLL);
      PixelBufferUtils::asVImageBuffer(ConvertedPixelBufferFormat, *v8, &red);
      goto LABEL_21;
    }

    v16 = 1751410032;
LABEL_19:
    PixelBufferWithSameSize = 0;
    v15 = 0;
    if (PixelFormatType != v16)
    {
      goto LABEL_41;
    }

    goto LABEL_20;
  }

  if (PixelFormatType == 1717855600)
  {
    goto LABEL_21;
  }

  PixelBufferWithSameSize = 0;
  v15 = 0;
  if (PixelFormatType == 1717856627)
  {
    goto LABEL_21;
  }

LABEL_41:
  CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  CVPixelBufferUnlockBaseAddress(a3, 0);
  if (ConvertedPixelBufferFormat)
  {
    CVPixelBufferUnlockBaseAddress(ConvertedPixelBufferFormat, 1uLL);
    CVPixelBufferRelease(ConvertedPixelBufferFormat);
  }

  if (PixelBufferWithSameSize)
  {
    CVPixelBufferUnlockBaseAddress(PixelBufferWithSameSize, 0);
    CVPixelBufferRelease(PixelBufferWithSameSize);
  }

  if ((v11 & 1) == 0)
  {
    PixelBufferUtils::pixelFormatAsString(PixelFormatType, &src);
    if ((src.width & 0x8000000000000000) == 0)
    {
      p_src = &src;
    }

    else
    {
      p_src = src.data;
    }

    NSLog(&cfstr_SDErrorPixelFo.isa, "convertGrayscaleAsColor", 1692, PixelFormatType, p_src);
    if ((SHIBYTE(src.width) & 0x80000000) == 0)
    {
      return 0xFFFFFFFFLL;
    }

    data = src.data;
LABEL_54:
    operator delete(data);
    return 0xFFFFFFFFLL;
  }

  if (v15)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

void sub_240492F2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t convertFloat16ToFloat32(__CVBuffer *a1, __CVBuffer *a2)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v5 = PixelBufferUtils::planeCountForPixelFormat(PixelFormatType);
  v6 = CVPixelBufferGetPixelFormatType(a2);
  if (v5 == PixelBufferUtils::planeCountForPixelFormat(v6))
  {
    CVPixelBufferLockBaseAddress(a1, 1uLL);
    CVPixelBufferLockBaseAddress(a2, 0);
    if (v5)
    {
      v7 = 1;
      v8 = MEMORY[0x277CBF3A0];
      do
      {
        memset(&src, 0, sizeof(src));
        PixelBufferUtils::asVImageBuffer(a1, (v7 - 1), *v8, &src);
        memset(&dest, 0, sizeof(dest));
        PixelBufferUtils::asVImageBuffer(a2, (v7 - 1), *v8, &dest);
        v9 = vImageConvert_Planar16FtoPlanarF(&src, &dest, 0);
        v10 = v9;
        if (v7 >= v5)
        {
          break;
        }

        ++v7;
      }

      while (!v9);
    }

    else
    {
      memset(&src, 0, sizeof(src));
      v12 = MEMORY[0x277CBF3A0];
      PixelBufferUtils::asVImageBuffer(a1, *MEMORY[0x277CBF3A0], &src);
      memset(&dest, 0, sizeof(dest));
      PixelBufferUtils::asVImageBuffer(a2, *v12, &dest);
      v10 = vImageConvert_Planar16FtoPlanarF(&src, &dest, 0);
    }

    CVPixelBufferUnlockBaseAddress(a1, 1uLL);
    CVPixelBufferUnlockBaseAddress(a2, 0);
    return v10 != 0;
  }

  else
  {
    NSLog(&cfstr_SDErrorInputAn.isa, "convertFloat16ToFloat32", 1738);
    return 0xFFFFFFFFLL;
  }
}

__int16 ___ZL23invertPixelBufferValuesIDhEiP10__CVBufferS1__block_invoke@<H0>(uint64_t a1@<X0>, short float *a2@<X1>, uint64_t a3@<X2>, short float *a4@<X3>)
{
  *&result = COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)) / *a2;
  *a4 = *&result;
  return result;
}

float ___ZL23invertPixelBufferValuesIfEiP10__CVBuffer_block_invoke(uint64_t a1, float *a2)
{
  result = 1.0 / *a2;
  *a2 = result;
  return result;
}

uint64_t RGBA_FORMAT_MAP(void)
{
  v1 = *MEMORY[0x277D85DE8];
  {
    operator new();
  }

  return RGBA_FORMAT_MAP(void)::result;
}

void sub_24049363C(_Unwind_Exception *a1)
{
  MEMORY[0x245CC10E0](v1, 0x10A0C408EF24B1CLL);
  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
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
      if (v7 >= *&v2)
      {
        v7 %= *&v2;
      }
    }

    else
    {
      v7 &= *&v2 - 1;
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

  if (v6[2] != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

void std::__hash_table<std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
LABEL_6:
    if (!(prime >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
      if (prime)
      {
        goto LABEL_6;
      }

      v8 = *a1;
      *a1 = 0;
      if (v8)
      {
        operator delete(v8);
      }

      *(a1 + 8) = 0;
    }
  }
}

uint64_t std::unordered_map<unsigned long long,std::pair<unsigned char *,int>>::unordered_map(uint64_t result, unint64_t *a2, uint64_t a3)
{
  *result = 0u;
  *(result + 16) = 0u;
  *(result + 32) = 1065353216;
  if (a3)
  {
    for (i = a2; i != &a2[3 * a3]; i += 3)
    {
      v4 = *i;
      v5 = *(result + 8);
      if (!*&v5)
      {
        goto LABEL_19;
      }

      v6 = vcnt_s8(v5);
      v6.i16[0] = vaddlv_u8(v6);
      if (v6.u32[0] > 1uLL)
      {
        v7 = *i;
        if (v4 >= *&v5)
        {
          v7 = v4 % *&v5;
        }
      }

      else
      {
        v7 = (*&v5 - 1) & v4;
      }

      v8 = *(*result + 8 * v7);
      if (!v8 || (v9 = *v8) == 0)
      {
LABEL_19:
        operator new();
      }

      while (1)
      {
        v10 = v9[1];
        if (v10 == v4)
        {
          break;
        }

        if (v6.u32[0] > 1uLL)
        {
          if (v10 >= *&v5)
          {
            v10 %= *&v5;
          }
        }

        else
        {
          v10 &= *&v5 - 1;
        }

        if (v10 != v7)
        {
          goto LABEL_19;
        }

LABEL_18:
        v9 = *v9;
        if (!v9)
        {
          goto LABEL_19;
        }
      }

      if (v9[2] != v4)
      {
        goto LABEL_18;
      }
    }
  }

  return result;
}

void sub_240493CEC(_Unwind_Exception *a1)
{
  operator delete(v2);
  std::__hash_table<std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>>>::~__hash_table(v1);
  _Unwind_Resume(a1);
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
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

float ___ZL23invertPixelBufferValuesIfEiP10__CVBufferS1__block_invoke(uint64_t a1, float *a2, uint64_t a3, float *a4)
{
  result = 1.0 / *a2;
  *a4 = result;
  return result;
}

__int16 ___ZL23invertPixelBufferValuesIDhEiP10__CVBuffer_block_invoke@<H0>(uint64_t a1@<X0>, short float *a2@<X1>)
{
  *&result = COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)) / *a2;
  *a2 = *&result;
  return result;
}

uint64_t updateVImageBufferToRegion(vImage_Buffer *a1, CGRect a2, uint64_t a3)
{
  height = a2.size.height;
  width = a2.size.width;
  y = a2.origin.y;
  x = a2.origin.x;
  if (CGRectIsEmpty(a2))
  {
    return 0;
  }

  v10 = a1->width;
  if (x < v10 && ((v11 = a1->height, y < v11) ? (v12 = width <= v10) : (v12 = 0), v12 ? (v13 = height <= v11) : (v13 = 0), v13))
  {
    result = 0;
    a1->data = a1->data + a1->rowBytes * y + x * a3;
    a1->height = height;
    a1->width = width;
  }

  else
  {
    NSLog(&cfstr_SDErrorRegionI.isa, "updateVImageBufferToRegion", 2037);
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t copyPixelBufferVImage(__CVBuffer *a1, CGPoint a2, __CVBuffer *a3, CGRect a4)
{
  if (a1 == a3)
  {
    return 0;
  }

  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a2.y;
  v10 = a2.x;
  PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
  if (PixelFormatType != CVPixelBufferGetPixelFormatType(a1))
  {
    return 0xFFFFFFFFLL;
  }

  if (!CVPixelBufferGetPlaneCount(a3))
  {
    v20 = CVPixelBufferGetPixelFormatType(a3);
    CVPixelBufferLockBaseAddress(a1, 0);
    CVPixelBufferLockBaseAddress(a3, 1uLL);
    memset(&src, 0, sizeof(src));
    v21 = MEMORY[0x277CBF3A0];
    PixelBufferUtils::asVImageBuffer(a3, *MEMORY[0x277CBF3A0], &src);
    memset(&v23, 0, sizeof(v23));
    PixelBufferUtils::asVImageBuffer(a1, *v21, &v23);
    v22 = PixelBufferUtils::pixelSizeForPixelFormat(v20, 0);
    v26.origin.x = x;
    v26.origin.y = y;
    v26.size.width = width;
    v26.size.height = height;
    if (updateVImageBufferToRegion(&src, v26, v22))
    {
      return 0xFFFFFFFFLL;
    }

    v27.size.width = src.width;
    v27.size.height = src.height;
    v27.origin.x = v10;
    v27.origin.y = v9;
    if (updateVImageBufferToRegion(&v23, v27, v22))
    {
      return 0xFFFFFFFFLL;
    }

    vImageCopyBuffer(&src, &v23, v22, 0);
    CVPixelBufferUnlockBaseAddress(a1, 0);
    CVPixelBufferUnlockBaseAddress(a3, 1uLL);
    return 0;
  }

  v13 = v10;
  v14 = v9;
  v15 = x;
  v16 = y;
  v17 = width;
  v18 = height;

  return copyPixelBufferMultiPlane(a1, *&v13, a3, *&v15);
}

uint64_t PixelBufferUtils::countDifferentPixels(PixelBufferUtils *this, __CVBuffer *a2, __CVBuffer *a3, float a4, float a5)
{
  Width = CVPixelBufferGetWidth(this);
  Height = CVPixelBufferGetHeight(this);
  v11 = CVPixelBufferGetWidth(a2);
  v12 = CVPixelBufferGetHeight(a2);
  PixelFormatType = CVPixelBufferGetPixelFormatType(this);
  result = -1;
  if (Width == v11 && Height == v12)
  {
    CVPixelBufferLockBaseAddress(this, 1uLL);
    CVPixelBufferLockBaseAddress(a2, 1uLL);
    memset(&v34, 0, sizeof(v34));
    v15 = MEMORY[0x277CBF3A0];
    PixelBufferUtils::asVImageBuffer(this, *MEMORY[0x277CBF3A0], &v34);
    memset(&v33, 0, sizeof(v33));
    PixelBufferUtils::asVImageBuffer(a2, *v15, &v33);
    if (PixelFormatType > 1380401728)
    {
      if (PixelFormatType <= 1717856626)
      {
        if (PixelFormatType > 1380411456)
        {
          if (PixelFormatType == 1380411457)
          {
            v22 = 4;
            goto LABEL_40;
          }

          if (PixelFormatType != 1647392359)
          {
            if (PixelFormatType != 1717855600)
            {
              goto LABEL_51;
            }

            goto LABEL_45;
          }

          goto LABEL_39;
        }

        if (PixelFormatType != 1380401729)
        {
          if (PixelFormatType == 1380410945)
          {
            v20 = 4;
            goto LABEL_46;
          }

          goto LABEL_51;
        }

        goto LABEL_35;
      }

      if (PixelFormatType > 1751411058)
      {
        if (PixelFormatType == 1751411059)
        {
          goto LABEL_39;
        }

        if (PixelFormatType != 1919365990)
        {
          if (PixelFormatType != 1919365992)
          {
            goto LABEL_51;
          }

          v19 = 0;
          do
          {
            PixelBufferUtils::asVImageBuffer(this, v19, *v15, &v34);
            PixelBufferUtils::asVImageBuffer(a2, v19, *v15, &v33);
            v19 = (v19 + 1);
          }

          while (v19 != 3);
LABEL_39:
          v22 = 1;
LABEL_40:
          v21 = countDiffsRawBuffers<half>(&v34, &v33, v22, a4, a5);
          goto LABEL_47;
        }

        v29 = 0;
        do
        {
          PixelBufferUtils::asVImageBuffer(this, v29, *v15, &v34);
          PixelBufferUtils::asVImageBuffer(a2, v29, *v15, &v33);
          v29 = (v29 + 1);
        }

        while (v29 != 3);
LABEL_45:
        v20 = 1;
        goto LABEL_46;
      }

      if (PixelFormatType == 1717856627)
      {
        goto LABEL_45;
      }

      v18 = 1751410032;
LABEL_38:
      if (PixelFormatType != v18)
      {
        goto LABEL_51;
      }

      goto LABEL_39;
    }

    if (PixelFormatType <= 875704437)
    {
      if (PixelFormatType <= 843264103)
      {
        if (PixelFormatType != 32)
        {
          if (PixelFormatType == 843264102)
          {
            v20 = 2;
LABEL_46:
            v21 = countDiffsRawBuffers<float>(&v34, &v33, v20, a4, a5);
            goto LABEL_47;
          }

LABEL_51:
          PixelBufferUtils::pixelFormatAsString(PixelFormatType, __p);
          if (v32 >= 0)
          {
            v30 = __p;
          }

          else
          {
            v30 = __p[0];
          }

          NSLog(&cfstr_SDErrorPixelFo.isa, "countDifferentPixels", 2485, PixelFormatType, v30);
          if (v32 < 0)
          {
            operator delete(__p[0]);
          }

          v28 = 0;
          goto LABEL_48;
        }

LABEL_35:
        v21 = countDiffsRawBuffers<unsigned char>(&v34, &v33, 4, a4, a5, v16, v17);
LABEL_47:
        v28 = v21;
        goto LABEL_48;
      }

      if (PixelFormatType == 843264104)
      {
        v22 = 2;
        goto LABEL_40;
      }

      if (PixelFormatType != 875704422)
      {
        goto LABEL_51;
      }
    }

    else
    {
      if (PixelFormatType > 1278226487)
      {
        if (PixelFormatType == 1278226488 || PixelFormatType == 1278226534)
        {
          goto LABEL_45;
        }

        v18 = 1278226536;
        goto LABEL_38;
      }

      if (PixelFormatType != 875704438)
      {
        if (PixelFormatType != 1111970369)
        {
          goto LABEL_51;
        }

        goto LABEL_35;
      }
    }

    PixelBufferUtils::asVImageBuffer(this, 0, *v15, &v34);
    PixelBufferUtils::asVImageBuffer(a2, 0, *v15, &v33);
    v25 = countDiffsRawBuffers<unsigned char>(&v34, &v33, 1, a4, a5, v23, v24);
    PixelBufferUtils::asVImageBuffer(this, 1, *v15, &v34);
    PixelBufferUtils::asVImageBuffer(a2, 1, *v15, &v33);
    v28 = countDiffsRawBuffers<unsigned char>(&v34, &v33, 2, a4, a5, v26, v27) + v25;
LABEL_48:
    CVPixelBufferUnlockBaseAddress(this, 1uLL);
    CVPixelBufferUnlockBaseAddress(a2, 1uLL);
    return v28;
  }

  return result;
}

void sub_2404944EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t countDiffsRawBuffers<unsigned char>(unint64_t result, uint64_t *a2, uint64_t a3, float a4, float a5, double a6, float a7)
{
  v7 = result;
  v8 = *(result + 8);
  if (v8 == a2[1])
  {
    v9 = *(result + 16);
    if (v9 == a2[2])
    {
      if (v8)
      {
        v10 = 0;
        result = 0;
        v11 = *v7;
        v12 = v7[3];
        v13 = *a2;
        v14 = v9 * a3;
        do
        {
          if (v14)
          {
            v15 = 0;
            do
            {
              LOBYTE(a7) = *(v11 + v15);
              v16 = *(v13 + v15);
              a7 = vabds_f32(LODWORD(a7), v16);
              if (a7 > a5)
              {
                a7 = a7 / (v16 + 1.0e-22);
                if (a7 > a4)
                {
                  result = (result + 1);
                }
              }

              ++v15;
            }

            while (v14 > v15);
          }

          ++v10;
          v13 += a2[3];
          v11 += v12;
        }

        while (v8 > v10);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

unint64_t countDiffsRawBuffers<float>(unint64_t result, uint64_t *a2, uint64_t a3, float a4, float a5)
{
  v5 = result;
  v6 = *(result + 8);
  if (v6 == a2[1])
  {
    v7 = *(result + 16);
    if (v7 == a2[2])
    {
      if (v6)
      {
        v8 = 0;
        result = 0;
        v9 = *v5;
        v10 = v5[3];
        v11 = *a2;
        v12 = v7 * a3;
        do
        {
          if (v12)
          {
            v13 = 0;
            do
            {
              v14 = *(v11 + 4 * v13);
              v15 = vabds_f32(*(v9 + 4 * v13), v14);
              if (v15 > a5)
              {
                v16 = v15 / (v14 + 1.0e-22);
                if (v16 > a4)
                {
                  result = (result + 1);
                }
              }

              ++v13;
            }

            while (v12 > v13);
          }

          ++v8;
          v11 += a2[3];
          v9 += v10;
        }

        while (v6 > v8);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

unint64_t countDiffsRawBuffers<half>(unint64_t result, uint64_t *a2, uint64_t a3, float a4, float a5)
{
  v5 = result;
  v6 = *(result + 8);
  if (v6 == a2[1])
  {
    v7 = *(result + 16);
    if (v7 == a2[2])
    {
      if (v6)
      {
        v8 = 0;
        result = 0;
        v9 = *v5;
        v10 = v5[3];
        v11 = *a2;
        v12 = v7 * a3;
        do
        {
          if (v12)
          {
            v13 = 0;
            do
            {
              _H3 = *(v9 + 2 * v13);
              __asm { FCVT            S4, H3 }

              _H3 = *(v11 + 2 * v13);
              __asm { FCVT            S5, H3 }

              v22 = vabds_f32(_S4, _S5);
              if (v22 > a5)
              {
                __asm { FCVT            D3, H3 }

                *&_D3 = v22 / (_D3 + 1.0e-22);
                if (*&_D3 > a4)
                {
                  result = (result + 1);
                }
              }

              ++v13;
            }

            while (v12 > v13);
          }

          ++v8;
          v11 += a2[3];
          v9 += v10;
        }

        while (v6 > v8);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

__CVBuffer *PixelBufferUtils::errorsPixelBuffer(PixelBufferUtils *this, __CVBuffer *a2, __CVBuffer *a3, int a4)
{
  v5 = a3;
  PixelFormatType = CVPixelBufferGetPixelFormatType(this);
  if (PixelFormatType == CVPixelBufferGetPixelFormatType(a2))
  {
    Width = CVPixelBufferGetWidth(this);
    if (Width == CVPixelBufferGetWidth(a2))
    {
      Height = CVPixelBufferGetHeight(this);
      if (Height == CVPixelBufferGetHeight(a2))
      {
        v11 = CVPixelBufferGetPixelFormatType(this);
        PixelBufferWithSameSize = PixelBufferUtils::createPixelBufferWithSameSize(this, v11, 1);
        CVPixelBufferLockBaseAddress(this, 1uLL);
        CVPixelBufferLockBaseAddress(a2, 1uLL);
        CVPixelBufferLockBaseAddress(PixelBufferWithSameSize, 0);
        memset(&v42, 0, sizeof(v42));
        v13 = MEMORY[0x277CBF3A0];
        PixelBufferUtils::asVImageBuffer(this, *MEMORY[0x277CBF3A0], &v42);
        memset(&v41, 0, sizeof(v41));
        PixelBufferUtils::asVImageBuffer(a2, *v13, &v41);
        memset(&v40, 0, sizeof(v40));
        PixelBufferUtils::asVImageBuffer(PixelBufferWithSameSize, *v13, &v40);
        if (v11 > 1278226535)
        {
          if (v11 <= 1717855599)
          {
            if (v11 <= 1380410944)
            {
              if (v11 != 1278226536)
              {
                v15 = 1380401729;
                goto LABEL_15;
              }

              goto LABEL_35;
            }

            if (v11 != 1380410945)
            {
              v22 = 1647392359;
LABEL_34:
              if (v11 == v22)
              {
                goto LABEL_35;
              }

LABEL_43:
              PixelBufferUtils::pixelFormatAsString(v11, __p);
              if (v39 >= 0)
              {
                v37 = __p;
              }

              else
              {
                v37 = __p[0];
              }

              NSLog(&cfstr_SDErrorPixelFo.isa, "errorsPixelBuffer", 2556, v11, v37);
              if (v39 < 0)
              {
                operator delete(__p[0]);
              }

              goto LABEL_40;
            }

            rowBytes = v40.rowBytes;
            data = v41.data;
            v32 = v41.rowBytes;
            v33 = v40.data;
            v34 = v5;
            v35 = a4;
            v36 = 4;
LABEL_39:
            calcDiffsRaw<float>(&v42, data, v32, v33, rowBytes, v34, v35, v36);
            goto LABEL_40;
          }

          if (v11 > 1751410031)
          {
            if (v11 == 1751410032)
            {
LABEL_35:
              v24 = v40.rowBytes;
              v23 = v41.data;
              v25 = v41.rowBytes;
              v26 = v40.data;
              v27 = v5;
              v28 = a4;
              v29 = 1;
LABEL_36:
              calcDiffsRaw<half>(&v42, v23, v25, v26, v24, v27, v28, v29);
              goto LABEL_40;
            }

            v22 = 1751411059;
            goto LABEL_34;
          }

          if (v11 != 1717855600)
          {
            v17 = 1717856627;
            goto LABEL_28;
          }

          goto LABEL_38;
        }

        if (v11 <= 875704437)
        {
          if (v11 == 32)
          {
LABEL_24:
            v19 = v5;
            v20 = a4;
            v21 = 4;
            goto LABEL_25;
          }

          if (v11 == 843264104)
          {
            v24 = v40.rowBytes;
            v23 = v41.data;
            v25 = v41.rowBytes;
            v26 = v40.data;
            v27 = v5;
            v28 = a4;
            v29 = 2;
            goto LABEL_36;
          }

          if (v11 != 875704422)
          {
            goto LABEL_43;
          }
        }

        else
        {
          if (v11 > 1278226487)
          {
            if (v11 != 1278226488)
            {
              v17 = 1278226534;
LABEL_28:
              if (v11 != v17)
              {
                goto LABEL_43;
              }

              goto LABEL_38;
            }

            calcDiffsRaw<unsigned char>(&v42, &v41, &v40, v5, a4, 1, v14);
LABEL_38:
            rowBytes = v40.rowBytes;
            data = v41.data;
            v32 = v41.rowBytes;
            v33 = v40.data;
            v34 = v5;
            v35 = a4;
            v36 = 1;
            goto LABEL_39;
          }

          if (v11 != 875704438)
          {
            v15 = 1111970369;
LABEL_15:
            if (v11 != v15)
            {
              goto LABEL_43;
            }

            goto LABEL_24;
          }
        }

        PixelBufferUtils::asVImageBuffer(this, 0, *v13, &v42);
        PixelBufferUtils::asVImageBuffer(a2, 0, *v13, &v41);
        calcDiffsRaw<unsigned char>(&v42, &v41, &v40, v5, a4, 1, v18);
        PixelBufferUtils::asVImageBuffer(this, 1, *v13, &v42);
        PixelBufferUtils::asVImageBuffer(a2, 1, *v13, &v41);
        v19 = v5;
        v20 = a4;
        v21 = 2;
LABEL_25:
        calcDiffsRaw<unsigned char>(&v42, &v41, &v40, v19, v20, v21, v14);
LABEL_40:
        CVPixelBufferUnlockBaseAddress(this, 1uLL);
        CVPixelBufferUnlockBaseAddress(a2, 1uLL);
        CVPixelBufferUnlockBaseAddress(PixelBufferWithSameSize, 0);
        return PixelBufferWithSameSize;
      }
    }
  }

  return 0;
}

void sub_240494B9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void calcDiffsRaw<unsigned char>(void *a1, void *a2, void *a3, int a4, int a5, uint64_t a6, float a7)
{
  v7 = a1[1];
  if (v7)
  {
    LODWORD(v13) = 0;
    v14 = a5;
    v15 = a1[2];
    do
    {
      v16 = v13;
      if (v15 * a6)
      {
        v17 = 0;
        v18 = *a1 + a1[3] * v13;
        v19 = *a2 + a2[3] * v13;
        v20 = *a3 + a3[3] * v13;
        do
        {
          LOBYTE(a7) = *(v18 + v17);
          v21 = *(v19 + v17);
          v22 = LODWORD(a7);
          v23 = v21 + 1.0e-20;
          if (!a4)
          {
            v23 = 1.0;
          }

          v24 = pow(((v21 - v22) / v23), v14);
          a7 = fabsf(v24);
          *(v20 + v17++) = a7;
          v15 = a1[2];
        }

        while (v15 * a6 > v17);
        v7 = a1[1];
      }

      v13 = (v16 + 1);
    }

    while (v7 > v13);
  }
}

void calcDiffsRaw<float>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, uint64_t a8)
{
  v8 = a1[1];
  if (v8)
  {
    v13 = 0;
    v14 = *a1;
    v15 = a1[3];
    v16 = a1[2] * a8;
    v17 = a7;
    do
    {
      if (v16)
      {
        v18 = 0;
        do
        {
          v19 = *(a2 + 4 * v18);
          v20 = v19 + 1.0e-20;
          if (!a6)
          {
            v20 = 1.0;
          }

          v21 = pow(((v19 - *(v14 + 4 * v18)) / v20), v17);
          *(a4 + 4 * v18++) = fabsf(v21);
        }

        while (v16 > v18);
      }

      ++v13;
      v14 += v15;
      a2 += a3;
      a4 += a5;
    }

    while (v8 > v13);
  }
}

void calcDiffsRaw<half>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, uint64_t a8)
{
  v8 = a1[1];
  if (v8)
  {
    v13 = 0;
    v14 = *a1;
    v15 = a1[3];
    v16 = a1[2] * a8;
    v17 = a7;
    do
    {
      if (v16)
      {
        v18 = 0;
        do
        {
          _H0 = *(v14 + 2 * v18);
          __asm { FCVT            S0, H0 }

          _H1 = *(a2 + 2 * v18);
          __asm
          {
            FCVT            S2, H1
            FCVT            D1, H1
          }

          v28 = _D1 + 1.0e-20;
          if (!a6)
          {
            v28 = 1.0;
          }

          _S0 = pow(((_S2 - _S0) / v28), v17);
          __asm { FCVT            H0, S0 }

          *(a4 + 2 * v18++) = fabsl(*&_S0);
        }

        while (v16 > v18);
      }

      ++v13;
      v14 += v15;
      a2 += a3;
      a4 += a5;
    }

    while (v8 > v13);
  }
}

uint64_t PixelBufferUtils::scaleConvertRotatePixelBuffer(PixelBufferUtils *this, __CVBuffer *a2, CVPixelBufferRef pixelBuffer, CGRect a4, CVPixelBufferRef *a5, __CVBuffer **a6, __CVBuffer **a7)
{
  v56 = pixelBuffer;
  v57 = this;
  if (!this)
  {
    return 0xFFFFFFFFLL;
  }

  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v54[0] = a7;
  *&v54[1] = 0;
  texture = 0;
  if (a5)
  {
    p_texture = a5;
  }

  else
  {
    p_texture = &texture;
  }

  v17 = &v54[1];
  if (a6)
  {
    v17 = a6;
  }

  v51 = v17;
  *pixelFormatType = p_texture;
  v18 = CVPixelBufferGetWidth(pixelBuffer);
  v19 = CVPixelBufferGetHeight(pixelBuffer);
  v20 = CVPixelBufferGetPixelFormatType(pixelBuffer);
  v21 = CVPixelBufferGetPixelFormatType(this);
  if ((a2 & 0xFFFFFFFD) == 1)
  {
    v22 = v18;
  }

  else
  {
    v22 = v19;
  }

  if ((a2 & 0xFFFFFFFD) == 1)
  {
    v23 = v19;
  }

  else
  {
    v23 = v18;
  }

  v24 = CVPixelBufferGetWidth(this);
  v25 = CVPixelBufferGetHeight(this);
  v26 = CVPixelBufferGetPixelFormatType(this);
  v59.origin.x = x;
  v59.origin.y = y;
  v59.size.width = width;
  v59.size.height = height;
  v64 = CGRectIntegral(v59);
  v60.origin.x = x;
  v60.origin.y = y;
  v60.size.width = width;
  v60.size.height = height;
  if (!CGRectEqualToRect(v60, v64))
  {
    NSLog(&cfstr_SDErrorCropDim.isa, "scaleConvertRotatePixelBuffer", 2663);
    return 0xFFFFFFFFLL;
  }

  v61.origin.x = x;
  v61.origin.y = y;
  v61.size.width = width;
  v61.size.height = height;
  if (CGRectIsEmpty(v61))
  {
    x = 0.0;
    y = 0.0;
    width = v24;
    height = v25;
  }

  v65.origin.x = 0.0;
  v65.origin.y = 0.0;
  v62.origin.x = x;
  v62.origin.y = y;
  v62.size.width = width;
  v62.size.height = height;
  v65.size.width = v24;
  v65.size.height = v25;
  v27 = !CGRectEqualToRect(v62, v65);
  if (v23 != v24)
  {
    v27 = 1;
  }

  v28 = v22 != v25 || v27;
  v29 = v21 != v20;
  if ((v28 & 1) == 0 && v21 == v20 && !a2)
  {
    return PixelBufferUtils::copyPixelBuffer(pixelBuffer, this, v54[0]);
  }

  v50 = v20;
  if ((v28 & v54[0]) == 1 && isVtTransferSupportFormat(v26))
  {
    v29 = (v21 != v20) & ~isVtTransferSupportFormat(v20);
  }

  v32 = v51;
  if (v28)
  {
    v33 = *pixelFormatType;
  }

  else
  {
    v33 = &v57;
  }

  if (v29)
  {
    v34 = v51;
  }

  else
  {
    v34 = v33;
  }

  v49 = v34;
  if (!a2)
  {
    v32 = &v56;
  }

  v35 = v29 ^ 1;
  if (a2)
  {
    v36 = v28 ^ 1;
  }

  else
  {
    v36 = 1;
  }

  v37 = v32;
  if ((v36 & v35) != 0)
  {
    v38 = v32;
  }

  else
  {
    v38 = *pixelFormatType;
  }

  if (v28)
  {
    v39 = v33;
    v40 = *v38;
    if (!*v38)
    {
      v41 = v50;
      if (v29)
      {
        v41 = v21;
      }

      pixelFormatTypea = v41;
      pixelBufferOut = 0;
      v42 = *MEMORY[0x277CBECE8];
      BufferAttributes = getBufferAttributes();
      if (CVPixelBufferCreate(v42, v23, v22, pixelFormatTypea, BufferAttributes, &pixelBufferOut))
      {
        v40 = 0;
      }

      else
      {
        v40 = pixelBufferOut;
      }

      *v38 = v40;
    }

    v63.origin.x = x;
    v63.origin.y = y;
    v63.size.width = width;
    v63.size.height = height;
    v44 = v54[0];
    v30 = PixelBufferUtils::cropAndScalePixelBuffer(this, v40, v54[0], v63, *MEMORY[0x277CBF3A0]);
    v33 = v39;
  }

  else
  {
    v30 = 0;
    v44 = v54[0];
  }

  if (v30)
  {
    v45 = 1;
  }

  else
  {
    v45 = v35;
  }

  if (v45)
  {
LABEL_61:
    if (a2)
    {
      goto LABEL_62;
    }

    goto LABEL_73;
  }

  v46 = *v33;
  if (*v37)
  {
    v30 = PixelBufferUtils::convertPixelBufferFormat(v46, *v37, v44);
    goto LABEL_61;
  }

  ConvertedPixelBufferFormat = PixelBufferUtils::createConvertedPixelBufferFormat(v46, v50, v44);
  *v37 = ConvertedPixelBufferFormat;
  if (ConvertedPixelBufferFormat)
  {
    v30 = 0;
  }

  else
  {
    v30 = 0xFFFFFFFFLL;
  }

  if (a2)
  {
LABEL_62:
    if (!v30)
    {
      v47 = *v49;
      if (v56)
      {
        v30 = PixelBufferUtils::rotatePixelBuffer(v47, v56, a2, v44);
      }

      else if (PixelBufferUtils::createRotatedPixelBuffer(v47, a2, v44))
      {
        v30 = 0;
      }

      else
      {
        v30 = 0xFFFFFFFFLL;
      }
    }
  }

LABEL_73:
  if (!a5)
  {
    CVPixelBufferRelease(texture);
  }

  if (!a6)
  {
    CVPixelBufferRelease(*&v54[1]);
  }

  return v30;
}

CVPixelBufferRef PixelBufferUtils::pixelBufferFromCGImage(PixelBufferUtils *this, CGImage *a2)
{
  v2 = a2;
  v26[3] = *MEMORY[0x277D85DE8];
  ColorSpace = CGImageGetColorSpace(this);
  BitsPerComponent = CGImageGetBitsPerComponent(this);
  BitmapInfo = CGImageGetBitmapInfo(this);
  Name = CGColorSpaceGetName(ColorSpace);
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v9 = CGColorSpaceGetName(DeviceRGB);
  if (!Name)
  {
    Name = v9;
    ColorSpace = DeviceRGB;
  }

  if (CFEqual(Name, v9))
  {
    BitmapInfo = 6;
    v10 = 32;
    ColorSpace = DeviceRGB;
  }

  else
  {
    v11 = *MEMORY[0x277CBF4B8];
    if (CFEqual(Name, *MEMORY[0x277CBF4B8]))
    {
      v12 = BitsPerComponent == 8;
    }

    else
    {
      v12 = 0;
    }

    if (v12 || CFEqual(Name, *MEMORY[0x277CBF3E0]) || CFEqual(Name, *MEMORY[0x277CBF488]))
    {
      BitmapInfo = 6;
    }

    else
    {
      if (CFEqual(Name, v11) && BitsPerComponent == 32)
      {
        BitmapInfo = 257;
        v10 = 1380410945;
        goto LABEL_13;
      }

      if (!CFEqual(Name, *MEMORY[0x277CBF460]))
      {
        if (CFEqual(Name, *MEMORY[0x277CBF448]))
        {
          v10 = 1278226488;
          if (BitsPerComponent == 8)
          {
            goto LABEL_13;
          }

          v10 = 1278226534;
          if (BitsPerComponent == 16)
          {
            v10 = 1647392359;
            goto LABEL_13;
          }

          if (BitsPerComponent == 32)
          {
            goto LABEL_13;
          }

          NSLog(&cfstr_SDErrorThisCon.isa, "pixelBufferFromCGImage", 2857);
        }

        else
        {
          NSLog(&cfstr_SDErrorThisCon.isa, "pixelBufferFromCGImage", 2863);
        }

        return 0;
      }

      BitmapInfo = 2;
    }

    v10 = 32;
  }

LABEL_13:
  if (v2 == 1061109567)
  {
    v13 = v10;
  }

  else
  {
    v13 = v2;
  }

  Width = CGImageGetWidth(this);
  Height = CGImageGetHeight(this);
  v16 = *MEMORY[0x277CC4D68];
  v25[0] = *MEMORY[0x277CC4D70];
  v25[1] = v16;
  v26[0] = MEMORY[0x277CBEC38];
  v26[1] = MEMORY[0x277CBEC38];
  v25[2] = *MEMORY[0x277CC4DE8];
  v26[2] = MEMORY[0x277CBEC10];
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:3];
  pixelBufferOut = 0;
  if (CVPixelBufferCreate(*MEMORY[0x277CBECE8], Width, Height, v13, v17, &pixelBufferOut))
  {
    NSLog(&cfstr_SDErrorCouldNo.isa, "pixelBufferFromCGImage", 2887);
    CGColorSpaceRelease(DeviceRGB);
    v18 = 0;
  }

  else
  {
    CVPixelBufferLockBaseAddress(pixelBufferOut, 0);
    BaseAddress = CVPixelBufferGetBaseAddress(pixelBufferOut);
    BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBufferOut);
    v21 = CGBitmapContextCreate(BaseAddress, Width, Height, BitsPerComponent, BytesPerRow, ColorSpace, BitmapInfo);
    v22 = v21;
    if (v21)
    {
      v27.size.width = Width;
      v27.size.height = Height;
      v27.origin.x = 0.0;
      v27.origin.y = 0.0;
      CGContextDrawImage(v21, v27, this);
      CGContextRelease(v22);
      CVPixelBufferUnlockBaseAddress(pixelBufferOut, 0);
    }

    else
    {
      NSLog(&cfstr_SDErrorCouldNo_0.isa, "pixelBufferFromCGImage", 2909);
      CVPixelBufferUnlockBaseAddress(pixelBufferOut, 0);
      CVPixelBufferRelease(pixelBufferOut);
      pixelBufferOut = 0;
    }

    CGColorSpaceRelease(DeviceRGB);
    v18 = pixelBufferOut;
  }

  return v18;
}

void PixelBufferUtils::pixelBufferToImageFile(PixelBufferUtils *this, PixelBufferUtils *a2, const __CFString *a3, const __CFString *a4)
{
  v6 = PixelBufferUtils::pixelBufferToCGImage(a2, a2);
  v7 = MEMORY[0x277CBEBC0];
  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:this];
  url = [v7 fileURLWithPath:v8];
  if (!a3)
  {
    a3 = @"public.png";
  }

  v9 = CGImageDestinationCreateWithURL(url, a3, 1uLL, 0);
  CGImageDestinationAddImage(v9, v6, 0);
  CGImageDestinationFinalize(v9);
  CFRelease(v9);
  CGImageRelease(v6);
}

CGImageRef PixelBufferUtils::pixelBufferToCGImage(PixelBufferUtils *this, __CVBuffer *a2)
{
  Width = CVPixelBufferGetWidth(this);
  Height = CVPixelBufferGetHeight(this);
  ConvertedPixelBufferFormat = PixelBufferUtils::createConvertedPixelBufferFormat(this, 0x20, 0);
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  CVPixelBufferLockBaseAddress(ConvertedPixelBufferFormat, 1uLL);
  BaseAddress = CVPixelBufferGetBaseAddress(ConvertedPixelBufferFormat);
  BytesPerRow = CVPixelBufferGetBytesPerRow(ConvertedPixelBufferFormat);
  v9 = CGBitmapContextCreate(BaseAddress, Width, Height, 8uLL, BytesPerRow, DeviceRGB, 6u);
  CFRelease(DeviceRGB);
  Image = CGBitmapContextCreateImage(v9);
  CVPixelBufferUnlockBaseAddress(ConvertedPixelBufferFormat, 1uLL);
  CGContextRelease(v9);
  CVPixelBufferRelease(ConvertedPixelBufferFormat);
  return Image;
}

uint64_t PixelBufferUtils::pixelBufferFromRawFileWithBuffer(PixelBufferUtils *this, NSData *a2, __CVBuffer *a3)
{
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:this];
  v5 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v4];
  v7 = v5;
  if (v5)
  {
    v8 = PixelBufferUtils::pixelBufferFromData(v5, a2, v6);
  }

  else
  {
    NSLog(&cfstr_SDErrorFailedR.isa, "pixelBufferFromRawFileWithBuffer", 3029);
    v8 = 0xFFFFFFFFLL;
  }

  return v8;
}

uint64_t PixelBufferUtils::pixelBufferFromData(PixelBufferUtils *this, NSData *a2, __CVBuffer *a3)
{
  v4 = this;
  PixelFormatType = CVPixelBufferGetPixelFormatType(a2);
  v6 = PixelBufferUtils::pixelSizeForPixelFormat(PixelFormatType, 0);
  v7 = PixelBufferUtils::planeCountForPixelFormat(PixelFormatType);
  Width = CVPixelBufferGetWidth(a2);
  Height = CVPixelBufferGetHeight(a2);
  BytesPerRow = CVPixelBufferGetBytesPerRow(a2);
  if (!v7)
  {
    v28 = BytesPerRow;
    v29 = [(PixelBufferUtils *)v4 length];
    v30 = Width * v6 * Height;
    if (v29 == v30 || [(PixelBufferUtils *)v4 length]== v28 * Height)
    {
      v31 = [(PixelBufferUtils *)v4 bytes];
      v32 = CVPixelBufferGetPixelFormatType(a2);
      v33 = CVPixelBufferGetWidth(a2);
      v34 = CVPixelBufferGetHeight(a2);
      v35 = CVPixelBufferGetBytesPerRow(a2);
      v36 = PixelBufferUtils::pixelSizeForPixelFormat(v32, 0);
      v37 = v36 * v33;
      if (v29 == v30)
      {
        v38 = v36 * v33;
      }

      else
      {
        v38 = v35;
      }

      CVPixelBufferLockBaseAddress(a2, 0);
      BaseAddress = CVPixelBufferGetBaseAddress(a2);
      if (v34)
      {
        v40 = BaseAddress;
        do
        {
          memcpy(v40, v31, v37);
          v40 += v35;
          v31 += v38;
          --v34;
        }

        while (v34);
      }

      CVPixelBufferUnlockBaseAddress(a2, 0);
      goto LABEL_25;
    }

    NSLog(&cfstr_SDErrorDataSiz.isa, "pixelBufferFromData", 3056);
LABEL_28:
    v41 = 0xFFFFFFFFLL;
    goto LABEL_29;
  }

  v11 = 0;
  v12 = 0;
  v13 = 0;
  do
  {
    v14 = PixelBufferUtils::pixelSizeForPixelFormat(PixelFormatType, v11);
    WidthOfPlane = CVPixelBufferGetWidthOfPlane(a2, v11);
    v13 += WidthOfPlane * v14 * CVPixelBufferGetHeightOfPlane(a2, v11);
    v12 += CVPixelBufferGetBytesPerRowOfPlane(a2, v11++);
  }

  while (v7 != v11);
  v47 = [(PixelBufferUtils *)v4 length];
  if (v47 != v13 && [(PixelBufferUtils *)v4 length]!= v12)
  {
    NSLog(&cfstr_SDErrorDataSiz.isa, "pixelBufferFromData", 3080);
    goto LABEL_28;
  }

  v16 = [(PixelBufferUtils *)v4 bytes];
  v45 = CVPixelBufferGetPixelFormatType(a2);
  PlaneCount = CVPixelBufferGetPlaneCount(a2);
  CVPixelBufferLockBaseAddress(a2, 0);
  v43 = v4;
  if (PlaneCount)
  {
    v17 = 0;
    v44 = a2;
    do
    {
      BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a2, v17);
      v19 = PixelBufferUtils::pixelSizeForPixelFormat(v45, v17);
      v20 = CVPixelBufferGetWidthOfPlane(a2, v17);
      HeightOfPlane = CVPixelBufferGetHeightOfPlane(a2, v17);
      BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a2, v17);
      v23 = BytesPerRowOfPlane;
      v24 = v20 * v19;
      if (v47 == v13)
      {
        v25 = v24;
      }

      else
      {
        v25 = BytesPerRowOfPlane;
      }

      if (HeightOfPlane)
      {
        v26 = v16;
        v27 = HeightOfPlane;
        do
        {
          memcpy(BaseAddressOfPlane, v26, v24);
          BaseAddressOfPlane += v23;
          v26 += v25;
          --v27;
        }

        while (v27);
      }

      v16 += v24 * HeightOfPlane;
      ++v17;
      a2 = v44;
    }

    while (v17 != PlaneCount);
  }

  v4 = v43;
  CVPixelBufferUnlockBaseAddress(a2, 0);
LABEL_25:
  v41 = 0;
LABEL_29:

  return v41;
}

__CVBuffer *PixelBufferUtils::pixelBufferFromRawFile(PixelBufferUtils *this, unint64_t a2, size_t a3, OSType a4)
{
  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:this];
  v9 = v8;
  if (a4 == 1061109567)
  {
    v10 = [v8 pathExtension];
    v11 = [v10 UTF8String];
    a4 = PixelBufferUtils::pixelFormatFromFileExtension(v11, v12);

    if (!a4)
    {
      NSLog(&cfstr_SDErrorCannotR.isa, "pixelBufferFromRawFile", 3103);
      goto LABEL_23;
    }
  }

  if (!a2 || !a3)
  {
    if (a3 | a2)
    {
      NSLog(&cfstr_SDErrorBadDime.isa, "pixelBufferFromRawFile", 3112);
      goto LABEL_23;
    }

    v16 = [v9 stringByDeletingPathExtension];
    v17 = [v16 pathExtension];

    if ([v17 isEqualToString:&stru_28524BA50])
    {
      NSLog(&cfstr_SDErrorDidNotF.isa, "pixelBufferFromRawFile", 3119);
    }

    else
    {
      v18 = [v17 lowercaseString];
      v19 = [v18 componentsSeparatedByString:@"x"];

      if ([v19 count] == 2)
      {
        a3 = [v19 objectAtIndexedSubscript:0];
        LODWORD(a2) = [a3 intValue];

        v20 = [v19 objectAtIndexedSubscript:1];
        LODWORD(a3) = [v20 intValue];

        v21 = 3136;
        v22 = @"%s:%d - ERROR - did not find dimensions in file name - width/height ill formatted";
        if (a2 && a3)
        {
          a2 = a2;
          a3 = a3;

          goto LABEL_5;
        }
      }

      else
      {
        v21 = 3125;
        v22 = @"%s:%d - ERROR - did not find dimensions in file name - extension ill formatted";
      }

      NSLog(&v22->isa, "pixelBufferFromRawFile", v21);
    }

    goto LABEL_23;
  }

LABEL_5:
  pixelBufferOut = 0;
  BufferAttributes = getBufferAttributes();
  if (CVPixelBufferCreate(*MEMORY[0x277CBECE8], a2, a3, a4, BufferAttributes, &pixelBufferOut))
  {
    v15 = 0;
  }

  else
  {
    v15 = pixelBufferOut;
  }

  if (PixelBufferUtils::pixelBufferFromRawFileWithBuffer(this, v15, v14))
  {
    CVPixelBufferRelease(v15);
LABEL_23:
    v15 = 0;
  }

  return v15;
}

void PixelBufferUtils::pixelBufferToRawFile(PixelBufferUtils *this, CVPixelBufferRef pixelBuffer, __CVBuffer *a3)
{
  if (pixelBuffer)
  {
    ConvertedPixelBufferFormat = pixelBuffer;
    PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
    isPixelFormatCompressed = PixelBufferUtils::isPixelFormatCompressed(PixelFormatType);
    if (isPixelFormatCompressed && (v6 = PixelBufferUtils::uncompressedEquivalentForPixelFormat(PixelFormatType), (ConvertedPixelBufferFormat = PixelBufferUtils::createConvertedPixelBufferFormat(ConvertedPixelBufferFormat, v6, 1)) == 0))
    {
      PixelBufferUtils::pixelFormatAsString(PixelFormatType, &v53);
      if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v46 = &v53;
      }

      else
      {
        v46 = v53.__r_.__value_.__r.__words[0];
      }

      NSLog(&cfstr_SDErrorPixelFo.isa, "pixelBufferToRawFile", 3167, PixelFormatType, v46);
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&v53, this);
      v7 = MEMORY[0x277CBEBC0];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:this];
      v9 = [v7 fileURLWithPath:v8];
      v10 = [v9 pathExtension];
      v11 = [v10 isEqualToString:&stru_28524BA50];

      if (v11)
      {
        std::string::append(&v53, ".");
        Width = CVPixelBufferGetWidth(ConvertedPixelBufferFormat);
        Height = CVPixelBufferGetHeight(ConvertedPixelBufferFormat);
        std::to_string(&v49, Width);
        v14 = std::string::append(&v49, "x");
        v15 = *&v14->__r_.__value_.__l.__data_;
        v50.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
        *&v50.__r_.__value_.__l.__data_ = v15;
        v14->__r_.__value_.__l.__size_ = 0;
        v14->__r_.__value_.__r.__words[2] = 0;
        v14->__r_.__value_.__r.__words[0] = 0;
        std::to_string(&v48, Height);
        if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v16 = &v48;
        }

        else
        {
          v16 = v48.__r_.__value_.__r.__words[0];
        }

        if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v48.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v48.__r_.__value_.__l.__size_;
        }

        v18 = std::string::append(&v50, v16, size);
        v19 = *&v18->__r_.__value_.__l.__data_;
        v52 = v18->__r_.__value_.__r.__words[2];
        *__p = v19;
        v18->__r_.__value_.__l.__size_ = 0;
        v18->__r_.__value_.__r.__words[2] = 0;
        v18->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v48.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v50.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v49.__r_.__value_.__l.__data_);
        }

        if (v52 >= 0)
        {
          v20 = __p;
        }

        else
        {
          v20 = __p[0];
        }

        if (v52 >= 0)
        {
          v21 = HIBYTE(v52);
        }

        else
        {
          v21 = __p[1];
        }

        std::string::append(&v53, v20, v21);
        std::string::append(&v53, ".");
        v22 = CVPixelBufferGetPixelFormatType(ConvertedPixelBufferFormat);
        PixelBufferUtils::pixelFormatAsFileExtension(v22, &v50);
        if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v23 = &v50;
        }

        else
        {
          v23 = v50.__r_.__value_.__r.__words[0];
        }

        if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v24 = HIBYTE(v50.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v24 = v50.__r_.__value_.__l.__size_;
        }

        std::string::append(&v53, v23, v24);
        if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v50.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v52) < 0)
        {
          operator delete(__p[0]);
        }
      }

      if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v25 = &v53;
      }

      else
      {
        v25 = v53.__r_.__value_.__r.__words[0];
      }

      v26 = fopen(v25, "wb");
      if (v26)
      {
        if (CVPixelBufferGetPlaneCount(ConvertedPixelBufferFormat))
        {
          CVPixelBufferLockBaseAddress(ConvertedPixelBufferFormat, 1uLL);
          v27 = CVPixelBufferGetPixelFormatType(ConvertedPixelBufferFormat);
          PlaneCount = CVPixelBufferGetPlaneCount(ConvertedPixelBufferFormat);
          if (PlaneCount)
          {
            for (i = 0; i != PlaneCount; ++i)
            {
              v30 = PixelBufferUtils::pixelSizeForPixelFormat(v27, i);
              HeightOfPlane = CVPixelBufferGetHeightOfPlane(ConvertedPixelBufferFormat, i);
              WidthOfPlane = CVPixelBufferGetWidthOfPlane(ConvertedPixelBufferFormat, i);
              BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(ConvertedPixelBufferFormat, i);
              BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(ConvertedPixelBufferFormat, i);
              if (HeightOfPlane)
              {
                v35 = BaseAddressOfPlane;
                do
                {
                  fwrite(v35, v30, WidthOfPlane, v26);
                  v35 += BytesPerRowOfPlane;
                  --HeightOfPlane;
                }

                while (HeightOfPlane);
              }
            }
          }
        }

        else
        {
          CVPixelBufferLockBaseAddress(ConvertedPixelBufferFormat, 1uLL);
          v39 = CVPixelBufferGetPixelFormatType(ConvertedPixelBufferFormat);
          v40 = PixelBufferUtils::pixelSizeForPixelFormat(v39, 0);
          v41 = CVPixelBufferGetHeight(ConvertedPixelBufferFormat);
          v42 = CVPixelBufferGetWidth(ConvertedPixelBufferFormat);
          BytesPerRow = CVPixelBufferGetBytesPerRow(ConvertedPixelBufferFormat);
          BaseAddress = CVPixelBufferGetBaseAddress(ConvertedPixelBufferFormat);
          if (v41)
          {
            v45 = BaseAddress;
            do
            {
              fwrite(v45, v40, v42, v26);
              v45 += BytesPerRow;
              --v41;
            }

            while (v41);
          }
        }

        CVPixelBufferUnlockBaseAddress(ConvertedPixelBufferFormat, 1uLL);
      }

      else
      {
        if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v36 = &v53;
        }

        else
        {
          v36 = v53.__r_.__value_.__r.__words[0];
        }

        v37 = __error();
        v38 = strerror(*v37);
        NSLog(&cfstr_SDErrorFailedO.isa, "pixelBufferToRawFile", 3192, v36, v38);
      }

      fclose(v26);
      if (isPixelFormatCompressed)
      {
        CVPixelBufferRelease(ConvertedPixelBufferFormat);
      }
    }

    if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v53.__r_.__value_.__l.__data_);
    }
  }
}

void sub_2404963DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (*(v39 - 89) < 0)
  {
    operator delete(*(v39 - 112));
  }

  _Unwind_Resume(exception_object);
}

PixelBufferUtils *PixelBufferUtils::pixelBufferToData(PixelBufferUtils *this, __CVBuffer *a2)
{
  if (!this)
  {
LABEL_23:
    v16 = 0;
    goto LABEL_24;
  }

  ConvertedPixelBufferFormat = this;
  PixelFormatType = CVPixelBufferGetPixelFormatType(this);
  isPixelFormatCompressed = PixelBufferUtils::isPixelFormatCompressed(PixelFormatType);
  if (isPixelFormatCompressed)
  {
    v4 = PixelBufferUtils::uncompressedEquivalentForPixelFormat(PixelFormatType);
    ConvertedPixelBufferFormat = PixelBufferUtils::createConvertedPixelBufferFormat(ConvertedPixelBufferFormat, v4, 1);
    if (!ConvertedPixelBufferFormat)
    {
      PixelBufferUtils::pixelFormatAsString(PixelFormatType, __p);
      if (v33 >= 0)
      {
        v27 = __p;
      }

      else
      {
        v27 = __p[0];
      }

      NSLog(&cfstr_SDErrorPixelFo.isa, "pixelBufferToData", 3278, PixelFormatType, v27);
      if (v33 < 0)
      {
        operator delete(__p[0]);
      }

      goto LABEL_23;
    }
  }

  if (CVPixelBufferGetPlaneCount(ConvertedPixelBufferFormat))
  {
    v31 = [MEMORY[0x277CBEB28] data];
    CVPixelBufferLockBaseAddress(ConvertedPixelBufferFormat, 1uLL);
    v30 = CVPixelBufferGetPixelFormatType(ConvertedPixelBufferFormat);
    PlaneCount = CVPixelBufferGetPlaneCount(ConvertedPixelBufferFormat);
    if (PlaneCount)
    {
      for (i = 0; i != PlaneCount; ++i)
      {
        v7 = PixelBufferUtils::pixelSizeForPixelFormat(v30, i);
        HeightOfPlane = CVPixelBufferGetHeightOfPlane(ConvertedPixelBufferFormat, i);
        WidthOfPlane = CVPixelBufferGetWidthOfPlane(ConvertedPixelBufferFormat, i);
        BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(ConvertedPixelBufferFormat, i);
        BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(ConvertedPixelBufferFormat, i);
        v12 = [MEMORY[0x277CBEB28] dataWithLength:HeightOfPlane * v7 * WidthOfPlane];
        v13 = [v12 mutableBytes];
        if (HeightOfPlane)
        {
          v14 = v13;
          v15 = WidthOfPlane * v7;
          do
          {
            memcpy(v14, BaseAddressOfPlane, v15);
            v14 += v15;
            BaseAddressOfPlane += BytesPerRowOfPlane;
            --HeightOfPlane;
          }

          while (HeightOfPlane);
        }

        [(PixelBufferUtils *)v31 appendData:v12];
      }
    }

    CVPixelBufferUnlockBaseAddress(ConvertedPixelBufferFormat, 1uLL);
    v16 = v31;
  }

  else
  {
    CVPixelBufferLockBaseAddress(ConvertedPixelBufferFormat, 1uLL);
    v17 = CVPixelBufferGetPixelFormatType(ConvertedPixelBufferFormat);
    v18 = PixelBufferUtils::pixelSizeForPixelFormat(v17, 0);
    Height = CVPixelBufferGetHeight(ConvertedPixelBufferFormat);
    Width = CVPixelBufferGetWidth(ConvertedPixelBufferFormat);
    BytesPerRow = CVPixelBufferGetBytesPerRow(ConvertedPixelBufferFormat);
    BaseAddress = CVPixelBufferGetBaseAddress(ConvertedPixelBufferFormat);
    v23 = Width * v18;
    v24 = [MEMORY[0x277CBEB28] dataWithLength:v23 * Height];
    v25 = [v24 mutableBytes];
    if (Height)
    {
      v26 = v25;
      do
      {
        memcpy(v26, BaseAddress, v23);
        v26 += v23;
        BaseAddress += BytesPerRow;
        --Height;
      }

      while (Height);
    }

    CVPixelBufferUnlockBaseAddress(ConvertedPixelBufferFormat, 1uLL);
    v16 = v24;
  }

  if (isPixelFormatCompressed)
  {
    CVPixelBufferRelease(ConvertedPixelBufferFormat);
  }

LABEL_24:

  return v16;
}

void sub_2404967A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

CVPixelBufferRef PixelBufferUtils::pixelBufferFromImageFile(PixelBufferUtils *this, CGImage *a2)
{
  if (this)
  {
    v3 = MEMORY[0x277CBEBC0];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:this];
    v5 = [v3 fileURLWithPath:v4];

    v6 = CGImageSourceCreateWithURL(v5, 0);
    v7 = v6;
    if (v6)
    {
      if (CGImageSourceGetCount(v6))
      {
        ImageAtIndex = CGImageSourceCreateImageAtIndex(v7, 0, 0);
        v9 = PixelBufferUtils::pixelBufferFromCGImage(ImageAtIndex, a2);
        CGImageRelease(ImageAtIndex);
        CFRelease(v7);
LABEL_8:

        return v9;
      }

      CFRelease(v7);
    }

    v9 = 0;
    goto LABEL_8;
  }

  return 0;
}

__CVBuffer *PixelBufferUtils::blacken(__CVBuffer *this, __CVBuffer *a2)
{
  if (this)
  {
    v2 = this;
    PlaneCount = CVPixelBufferGetPlaneCount(this);
    CVPixelBufferLockBaseAddress(v2, 0);
    if (PlaneCount)
    {
      for (i = 0; i != PlaneCount; ++i)
      {
        BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(v2, i);
        v6 = CVPixelBufferGetHeightOfPlane(v2, i) * BytesPerRowOfPlane;
        BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(v2, i);
        bzero(BaseAddressOfPlane, v6);
      }
    }

    else
    {
      DataSize = CVPixelBufferGetDataSize(v2);
      BaseAddress = CVPixelBufferGetBaseAddress(v2);
      bzero(BaseAddress, DataSize);
    }

    return CVPixelBufferUnlockBaseAddress(v2, 0);
  }

  return this;
}

float PixelBufferUtils::getTurboColor(PixelBufferUtils *this, float a2, float *a3, float *a4, float *a5)
{
  v5 = (a2 * 255.0);
  if (v5 + 1 < 0xFF)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = 255;
  }

  v7 = -((a2 * 255.0) - (a2 * 255.0));
  *this = PixelBufferUtils::getTurboColor(float,float &,float &,float &)::redMap[v5] + ((PixelBufferUtils::getTurboColor(float,float &,float &,float &)::redMap[v6] - PixelBufferUtils::getTurboColor(float,float &,float &,float &)::redMap[v5]) * v7);
  *a3 = PixelBufferUtils::getTurboColor(float,float &,float &,float &)::greenMap[v5] + ((PixelBufferUtils::getTurboColor(float,float &,float &,float &)::greenMap[v6] - PixelBufferUtils::getTurboColor(float,float &,float &,float &)::greenMap[v5]) * v7);
  result = PixelBufferUtils::getTurboColor(float,float &,float &,float &)::blueMap[v5] + ((PixelBufferUtils::getTurboColor(float,float &,float &,float &)::blueMap[v6] - PixelBufferUtils::getTurboColor(float,float &,float &,float &)::blueMap[v5]) * v7);
  *a4 = result;
  return result;
}

float *PixelBufferUtils::getJetColor(float *this, float a2, float *a3, float *a4, float *a5)
{
  *this = 1.5 - fabsf((a2 * 4.0) + -3.0);
  *a3 = 1.5 - fabsf((a2 * 4.0) + -2.0);
  *a4 = 1.5 - fabsf((a2 * 4.0) + -1.0);
  v5 = 0.0;
  if (*this <= 1.0)
  {
    v6 = *this;
  }

  else
  {
    v6 = 1.0;
  }

  if (*this >= 0.0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0.0;
  }

  *this = v7;
  if (*a3 <= 1.0)
  {
    v8 = *a3;
  }

  else
  {
    v8 = 1.0;
  }

  if (*a3 >= 0.0)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0.0;
  }

  *a3 = v9;
  if (*a4 >= 0.0)
  {
    v5 = 1.0;
    if (*a4 <= 1.0)
    {
      v5 = *a4;
    }
  }

  *a4 = v5;
  return this;
}

uint64_t PixelBufferUtils::colorizedDepthPixelBuffer(PixelBufferUtils *this, __CVBuffer *a2, int a3, float a4, float a5, uint64_t a6, __CVBuffer *a7, __CVBuffer *a8)
{
  _S8 = a5;
  v13 = a2;
  PixelFormatType = CVPixelBufferGetPixelFormatType(this);
  CVPixelBufferLockBaseAddress(this, 1uLL);
  CVPixelBufferLockBaseAddress(a7, 0);
  memset(&v119, 0, sizeof(v119));
  v16 = MEMORY[0x277CBF3A0];
  PixelBufferUtils::asVImageBuffer(this, *MEMORY[0x277CBF3A0], &v119);
  memset(&v118, 0, sizeof(v118));
  PixelBufferUtils::asVImageBuffer(a7, *v16, &v118);
  pixelBuffer = this;
  if (PixelFormatType > 1717855599)
  {
    if (PixelFormatType <= 1751410031)
    {
      if (PixelFormatType == 1717855600 || PixelFormatType == 1717856627)
      {
        height = v119.height;
        data = v119.data;
        if (v13)
        {
          if (!v119.height)
          {
            goto LABEL_110;
          }

          v74 = 0;
          _S8 = *v119.data;
          a4 = *v119.data;
          do
          {
            if (v119.width)
            {
              v75 = (v119.data + v119.rowBytes * v74);
              v76 = 1;
              do
              {
                v77 = *v75++;
                v78 = v77;
                if (v77 < _S8)
                {
                  _S8 = v78;
                }

                if (a4 < v78)
                {
                  a4 = v78;
                }

                v32 = v119.width > v76++;
              }

              while (v32);
            }

            ++v74;
          }

          while (v119.height > v74);
        }

        if (v119.height)
        {
          v79 = 0;
          v80 = 0;
          rowBytes = v118.rowBytes;
          v109 = v119.height;
          width = v119.width;
          v100 = v118.data + 3;
          v103 = v119.rowBytes;
          v82 = v119.width;
          do
          {
            if (v82)
            {
              v115 = v80;
              v83 = &v100[rowBytes * v80];
              v84 = &data[v103 * v79];
              v85 = 1;
              do
              {
                v86 = *v84;
                if (a3 && v86 == 0.0)
                {
                  *v83 = 0;
                }

                else
                {
                  v87 = (v86 - _S8) / (a4 - _S8);
                  if (v87 <= 1.0)
                  {
                    v88 = v87;
                  }

                  else
                  {
                    v88 = 1.0;
                  }

                  LODWORD(__p[0]) = 0;
                  if (v87 >= 0.0)
                  {
                    v89 = v88;
                  }

                  else
                  {
                    v89 = 0.0;
                  }

                  *v120 = 0;
                  if (a6)
                  {
                    v90 = (a6 + 12 * (v89 * 255.0));
                    v91 = v90 + 1;
                    v92 = (v90 + 1);
                  }

                  else
                  {
                    v90 = __p;
                    v91 = &v120[1];
                    v92 = v120;
                    PixelBufferUtils::getTurboColor(__p, v89, &v120[1], v120, v17);
                  }

                  v93 = *v91;
                  v94 = *v90;
                  *(v83 - 3) = (*v92 * 255.0);
                  *(v83 - 2) = (v93 * 255.0);
                  *(v83 - 1) = (v94 * 255.0);
                  *v83 = -1;
                }

                ++v84;
                v32 = width > v85++;
                v83 += 4;
              }

              while (v32);
              v82 = width;
              height = v109;
              v80 = v115;
            }

            v79 = ++v80;
          }

          while (height > v80);
        }

        goto LABEL_110;
      }

      goto LABEL_113;
    }

    if (PixelFormatType == 1751410032 || PixelFormatType == 1751411059)
    {
      goto LABEL_10;
    }

    v19 = 1932996149;
  }

  else
  {
    if (PixelFormatType > 1278226535)
    {
      if (PixelFormatType != 1278226536)
      {
        if (PixelFormatType != 1278226742)
        {
          v19 = 1647392359;
          goto LABEL_44;
        }

LABEL_45:
        v50 = v119.height;
        v111 = v119.data;
        if (!v13)
        {
LABEL_56:
          if (v119.height)
          {
            v56 = 0;
            v57 = 0;
            v58 = a4 - _S8;
            v105 = v118.rowBytes;
            v108 = v119.height;
            v59 = v119.width;
            v99 = v118.data + 3;
            v102 = v119.rowBytes;
            v60 = v119.width;
            do
            {
              if (v60)
              {
                v114 = v57;
                v61 = &v99[v105 * v57];
                v62 = &v111[v102 * v56];
                v63 = 1;
                do
                {
                  v64 = *v62;
                  if (!a3 || *v62)
                  {
                    v65 = (v64 - _S8) / v58;
                    if (v65 <= 1.0)
                    {
                      v66 = (v64 - _S8) / v58;
                    }

                    else
                    {
                      v66 = 1.0;
                    }

                    LODWORD(__p[0]) = 0;
                    if (v65 >= 0.0)
                    {
                      v67 = v66;
                    }

                    else
                    {
                      v67 = 0.0;
                    }

                    *v120 = 0;
                    if (a6)
                    {
                      v68 = (a6 + 12 * (v67 * 255.0));
                      v69 = v68 + 1;
                      v70 = (v68 + 1);
                    }

                    else
                    {
                      v68 = __p;
                      v69 = &v120[1];
                      v70 = v120;
                      PixelBufferUtils::getTurboColor(__p, v67, &v120[1], v120, v17);
                    }

                    v71 = *v69;
                    v72 = *v68;
                    *(v61 - 3) = (*v70 * 255.0);
                    *(v61 - 2) = (v71 * 255.0);
                    *(v61 - 1) = (v72 * 255.0);
                    *v61 = -1;
                  }

                  else
                  {
                    *v61 = 0;
                  }

                  v62 += 2;
                  v32 = v59 > v63++;
                  v61 += 4;
                }

                while (v32);
                v60 = v59;
                v50 = v108;
                v57 = v114;
              }

              v56 = ++v57;
            }

            while (v50 > v57);
          }

          goto LABEL_110;
        }

        if (v119.height)
        {
          v51 = 0;
          LOWORD(v18) = *v119.data;
          _S8 = v18;
          a4 = v18;
          do
          {
            if (v119.width)
            {
              v52 = (v119.data + v119.rowBytes * v51);
              v53 = 1;
              do
              {
                v54 = *v52++;
                v55 = v54;
                if (_S8 > v54)
                {
                  _S8 = v55;
                }

                if (a4 < v55)
                {
                  a4 = v55;
                }

                v32 = v119.width > v53++;
              }

              while (v32);
            }

            ++v51;
          }

          while (v119.height > v51);
          goto LABEL_56;
        }

LABEL_110:
        CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
        result = a7;
        if (a7)
        {
          CVPixelBufferUnlockBaseAddress(a7, 0);
          return 0;
        }

        return result;
      }

LABEL_10:
      v20 = v119.height;
      v110 = v119.data;
      if (v13)
      {
        if (!v119.height)
        {
          goto LABEL_110;
        }

        v21 = 0;
        _H0 = *v119.data;
        __asm { FCVT            S8, H0 }

        a4 = _S8;
        do
        {
          if (v119.width)
          {
            v27 = (v119.data + v119.rowBytes * v21);
            v28 = 1;
            do
            {
              v29 = *v27++;
              _H0 = v29;
              __asm { FCVT            S0, H0 }

              if (_S8 > _S0)
              {
                _S8 = _S0;
              }

              if (a4 < _S0)
              {
                a4 = _S0;
              }

              v32 = v119.width > v28++;
            }

            while (v32);
          }

          ++v21;
        }

        while (v119.height > v21);
      }

      if (v119.height)
      {
        v33 = 0;
        v34 = 0;
        v104 = v118.rowBytes;
        v107 = v119.height;
        v35 = v119.width;
        v98 = v118.data + 3;
        v101 = v119.rowBytes;
        v36 = v119.width;
        do
        {
          if (v36)
          {
            v113 = v34;
            v37 = &v98[v104 * v34];
            v38 = &v110[v101 * v33];
            v39 = 1;
            do
            {
              _H0 = *v38;
              __asm { FCVT            S1, H0 }

              if (a3 && _S1 == 0.0)
              {
                *v37 = 0;
              }

              else
              {
                v42 = (_S1 - _S8) / (a4 - _S8);
                if (v42 <= 1.0)
                {
                  v43 = (_S1 - _S8) / (a4 - _S8);
                }

                else
                {
                  v43 = 1.0;
                }

                LODWORD(__p[0]) = 0;
                if (v42 >= 0.0)
                {
                  v44 = v43;
                }

                else
                {
                  v44 = 0.0;
                }

                *v120 = 0;
                if (a6)
                {
                  v45 = (a6 + 12 * (v44 * 255.0));
                  v46 = v45 + 1;
                  v47 = (v45 + 1);
                }

                else
                {
                  v45 = __p;
                  v46 = &v120[1];
                  v47 = v120;
                  PixelBufferUtils::getTurboColor(__p, v44, &v120[1], v120, v17);
                }

                v48 = *v46;
                v49 = *v45;
                *(v37 - 3) = (*v47 * 255.0);
                *(v37 - 2) = (v48 * 255.0);
                *(v37 - 1) = (v49 * 255.0);
                *v37 = -1;
              }

              v38 += 2;
              v32 = v35 > v39++;
              v37 += 4;
            }

            while (v32);
            v36 = v35;
            v20 = v107;
            v34 = v113;
          }

          v33 = ++v34;
        }

        while (v20 > v34);
      }

      goto LABEL_110;
    }

    if (PixelFormatType == 825306677)
    {
      goto LABEL_45;
    }

    v19 = 825437747;
  }

LABEL_44:
  if (PixelFormatType == v19)
  {
    goto LABEL_45;
  }

LABEL_113:
  PixelBufferUtils::pixelFormatAsString(PixelFormatType, __p);
  if (v117 >= 0)
  {
    v96 = __p;
  }

  else
  {
    v96 = __p[0];
  }

  NSLog(&cfstr_SDErrorPixelFo.isa, "colorizedDepthPixelBuffer", 3516, PixelFormatType, v96);
  if (v117 < 0)
  {
    operator delete(__p[0]);
  }

  CVPixelBufferUnlockBaseAddress(a7, 0);
  return 0xFFFFFFFFLL;
}

void sub_240497240(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__CVBuffer *PixelBufferUtils::createColorizedDepthPixelBuffer(PixelBufferUtils *this, __CVBuffer *a2, __CVBuffer **a3, float a4, float a5, uint64_t a6, PixelBufferUtils *a7, __CVBuffer *a8, float a9)
{
  PixelBufferWithSameSize = PixelBufferUtils::createPixelBufferWithSameSize(this, 0x42475241, 1);
  texture = PixelBufferWithSameSize;
  if (PixelBufferUtils::colorizedDepthPixelBuffer(this, a2, a3, a5, a4, a6, PixelBufferWithSameSize, v18))
  {
    CVPixelBufferRelease(PixelBufferWithSameSize);
    PixelBufferWithSameSize = 0;
    texture = 0;
  }

  if (a7)
  {
    ConvertedPixelBufferFormat = PixelBufferUtils::createConvertedPixelBufferFormat(a7, 0x42475241, 0);
    if (ConvertedPixelBufferFormat)
    {
      v20 = ConvertedPixelBufferFormat;
      v21 = PixelBufferUtils::alphaBlend(ConvertedPixelBufferFormat, PixelBufferWithSameSize, &texture, a9, a3);
      v22 = v20;
    }

    else
    {
      CVPixelBufferRelease(PixelBufferWithSameSize);
      texture = 0;
      v21 = PixelBufferUtils::alphaBlend(0, 0, &texture, a9, a3);
      v22 = 0;
    }

    CVPixelBufferRelease(v22);
    PixelBufferWithSameSize = texture;
    if ((v21 & 1) == 0)
    {
      CVPixelBufferRelease(texture);
      return 0;
    }
  }

  return PixelBufferWithSameSize;
}

uint64_t PixelBufferUtils::alphaBlend(PixelBufferUtils *this, __CVBuffer *a2, __CVBuffer **a3, float a4, __CVBuffer **a5)
{
  v5 = a5;
  PixelFormatType = CVPixelBufferGetPixelFormatType(this);
  Width = CVPixelBufferGetWidth(this);
  Height = CVPixelBufferGetHeight(this);
  v13 = CVPixelBufferGetPixelFormatType(a2);
  v14 = CVPixelBufferGetWidth(a2);
  v15 = CVPixelBufferGetHeight(a2);
  if (PixelFormatType == v13 && Width == v14 && Height == v15)
  {
    PixelBufferWithSameSize = *a3;
    if (!*a3)
    {
      PixelBufferWithSameSize = PixelBufferUtils::createPixelBufferWithSameSize(this, PixelFormatType, 1);
      *a3 = PixelBufferWithSameSize;
    }

    pixelBuffer = PixelBufferWithSameSize;
    v142 = v5;
    if (PixelFormatType <= 1380401728)
    {
      if (PixelFormatType > 875704437)
      {
        if (PixelFormatType > 1111970368)
        {
          if (PixelFormatType != 1111970369)
          {
            if (PixelFormatType != 1278226534)
            {
              if (PixelFormatType != 1278226536)
              {
                goto LABEL_108;
              }

              goto LABEL_41;
            }

LABEL_82:
            v101 = CVPixelBufferGetWidth(this);
            v102 = CVPixelBufferGetHeight(this);
            CVPixelBufferLockBaseAddress(PixelBufferWithSameSize, 0);
            CVPixelBufferLockBaseAddress(this, 1uLL);
            CVPixelBufferLockBaseAddress(a2, 1uLL);
            BytesPerRow = CVPixelBufferGetBytesPerRow(this);
            v104 = CVPixelBufferGetBytesPerRow(a2);
            v105 = PixelBufferWithSameSize;
            v106 = CVPixelBufferGetBytesPerRow(PixelBufferWithSameSize);
            BaseAddress = CVPixelBufferGetBaseAddress(this);
            v108 = CVPixelBufferGetBaseAddress(a2);
            v109 = CVPixelBufferGetBaseAddress(v105);
            v110 = CVPixelBufferGetPixelFormatType(this);
            v111 = PixelBufferUtils::componentsPerPixelForPixelFormat(v110, 0);
            v112 = v111 * v101;
            if (v142)
            {
              if (v102)
              {
                for (i = 0; i != v102; ++i)
                {
                  if (v112)
                  {
                    v114 = &v109[i * v106];
                    v115 = &v108[i * v104];
                    v116 = v111 * v101;
                    v117 = &BaseAddress[i * BytesPerRow];
                    do
                    {
                      v118 = *v115++;
                      v119 = v118;
                      v120 = *v117++;
                      v121 = v120;
                      v122 = ((1.0 - a4) * v119) + (v120 * a4);
                      if (v119 == 0.0)
                      {
                        v123 = v121;
                      }

                      else
                      {
                        v123 = v122;
                      }

                      *v114++ = v123;
                      --v116;
                    }

                    while (v116);
                  }
                }
              }
            }

            else if (v102)
            {
              for (j = 0; j != v102; ++j)
              {
                if (v112)
                {
                  v125 = &v109[j * v106];
                  v126 = &v108[j * v104];
                  v127 = v111 * v101;
                  v128 = &BaseAddress[j * BytesPerRow];
                  do
                  {
                    v129 = *v128++;
                    v130 = v129;
                    v131 = *v126++;
                    *v125++ = ((1.0 - a4) * v131) + (v130 * a4);
                    --v127;
                  }

                  while (v127);
                }
              }
            }

            goto LABEL_106;
          }

LABEL_62:
          v76 = CVPixelBufferGetWidth(this);
          v77 = CVPixelBufferGetHeight(this);
          CVPixelBufferLockBaseAddress(PixelBufferWithSameSize, 0);
          CVPixelBufferLockBaseAddress(this, 1uLL);
          CVPixelBufferLockBaseAddress(a2, 1uLL);
          v78 = CVPixelBufferGetBytesPerRow(this);
          v79 = CVPixelBufferGetBytesPerRow(a2);
          v80 = CVPixelBufferGetBytesPerRow(PixelBufferWithSameSize);
          v81 = CVPixelBufferGetBaseAddress(this);
          v82 = CVPixelBufferGetBaseAddress(a2);
          v83 = CVPixelBufferGetBaseAddress(PixelBufferWithSameSize);
          v84 = CVPixelBufferGetPixelFormatType(this);
          v85 = PixelBufferUtils::componentsPerPixelForPixelFormat(v84, 0);
          v86 = v85 * v76;
          if (v142)
          {
            if (v77)
            {
              for (k = 0; k != v77; ++k)
              {
                if (v86)
                {
                  v88 = &v83[k * v80];
                  v89 = &v82[k * v79];
                  v90 = v85 * v76;
                  v91 = &v81[k * v78];
                  do
                  {
                    v92 = *v91;
                    if (*v89)
                    {
                      v92 = (((1.0 - a4) * *v89) + (v92 * a4));
                    }

                    *v88++ = v92;
                    ++v91;
                    ++v89;
                    --v90;
                  }

                  while (v90);
                }
              }
            }
          }

          else if (v77)
          {
            for (m = 0; m != v77; ++m)
            {
              if (v86)
              {
                v94 = &v83[m * v80];
                v95 = &v82[m * v79];
                v96 = v85 * v76;
                v97 = &v81[m * v78];
                do
                {
                  v98 = *v97++;
                  v99 = v98;
                  v100 = *v95++;
                  *v94++ = (((1.0 - a4) * v100) + (v99 * a4));
                  --v96;
                }

                while (v96);
              }
            }
          }

          goto LABEL_106;
        }

        if (PixelFormatType == 875704438)
        {
          goto LABEL_62;
        }

        v20 = 1094862674;
        goto LABEL_61;
      }

      if (PixelFormatType <= 843264103)
      {
        if (PixelFormatType == 32)
        {
          goto LABEL_62;
        }

        v19 = 825437747;
        goto LABEL_30;
      }

      if (PixelFormatType != 843264104)
      {
        v20 = 875704422;
LABEL_61:
        if (PixelFormatType == v20)
        {
          goto LABEL_62;
        }

LABEL_108:
        PixelBufferUtils::pixelFormatAsString(PixelFormatType, __p);
        if (v145 >= 0)
        {
          v141 = __p;
        }

        else
        {
          v141 = __p[0];
        }

        NSLog(&cfstr_SDErrorPixelFo.isa, "alphaBlend", 4246, PixelFormatType, v141);
        if (v145 < 0)
        {
          operator delete(__p[0]);
        }

        return 0;
      }

      goto LABEL_41;
    }

    if (PixelFormatType <= 1717855599)
    {
      if (PixelFormatType > 1380411456)
      {
        if (PixelFormatType != 1380411457)
        {
          v19 = 1647392359;
LABEL_30:
          if (PixelFormatType == v19)
          {
            v21 = CVPixelBufferGetWidth(this);
            v22 = CVPixelBufferGetHeight(this);
            CVPixelBufferLockBaseAddress(PixelBufferWithSameSize, 0);
            CVPixelBufferLockBaseAddress(this, 1uLL);
            CVPixelBufferLockBaseAddress(a2, 1uLL);
            v23 = CVPixelBufferGetBytesPerRow(this);
            v24 = CVPixelBufferGetBytesPerRow(a2);
            v25 = CVPixelBufferGetBytesPerRow(PixelBufferWithSameSize);
            v26 = CVPixelBufferGetBaseAddress(this);
            v27 = CVPixelBufferGetBaseAddress(a2);
            v28 = CVPixelBufferGetBaseAddress(PixelBufferWithSameSize);
            v29 = CVPixelBufferGetPixelFormatType(this);
            v30 = PixelBufferUtils::componentsPerPixelForPixelFormat(v29, 0);
            v31 = v30 * v21;
            if (v142)
            {
              if (v22)
              {
                for (n = 0; n != v22; ++n)
                {
                  if (v31)
                  {
                    v33 = &v28[n * v25];
                    v34 = &v27[n * v24];
                    v35 = v30 * v21;
                    v36 = &v26[n * v23];
                    do
                    {
                      v37 = *v36;
                      if (*v34)
                      {
                        v37 = (((1.0 - a4) * *v34) + (v37 * a4));
                      }

                      *v33 = v37;
                      v33 += 2;
                      v36 += 2;
                      v34 += 2;
                      --v35;
                    }

                    while (v35);
                  }
                }
              }
            }

            else if (v22)
            {
              for (ii = 0; ii != v22; ++ii)
              {
                if (v31)
                {
                  v133 = &v28[ii * v25];
                  v134 = &v27[ii * v24];
                  v135 = v30 * v21;
                  v136 = &v26[ii * v23];
                  do
                  {
                    v137 = *v136;
                    v136 += 2;
                    v138 = v137;
                    v139 = *v134;
                    v134 += 2;
                    *v133 = (((1.0 - a4) * v139) + (v138 * a4));
                    v133 += 2;
                    --v135;
                  }

                  while (v135);
                }
              }
            }

            goto LABEL_106;
          }

          goto LABEL_108;
        }

LABEL_41:
        v38 = CVPixelBufferGetWidth(this);
        v39 = CVPixelBufferGetHeight(this);
        CVPixelBufferLockBaseAddress(PixelBufferWithSameSize, 0);
        CVPixelBufferLockBaseAddress(this, 1uLL);
        CVPixelBufferLockBaseAddress(a2, 1uLL);
        v40 = CVPixelBufferGetBytesPerRow(this);
        v41 = CVPixelBufferGetBytesPerRow(a2);
        v42 = CVPixelBufferGetBytesPerRow(PixelBufferWithSameSize);
        v43 = CVPixelBufferGetBaseAddress(this);
        v44 = CVPixelBufferGetBaseAddress(a2);
        v45 = CVPixelBufferGetBaseAddress(PixelBufferWithSameSize);
        v46 = CVPixelBufferGetPixelFormatType(this);
        v47 = PixelBufferUtils::componentsPerPixelForPixelFormat(v46, 0);
        v48 = v47 * v38;
        if (v142)
        {
          if (v39)
          {
            for (jj = 0; jj != v39; ++jj)
            {
              if (v48)
              {
                v50 = &v45[jj * v42];
                v51 = &v44[jj * v41];
                v52 = v47 * v38;
                v53 = &v43[jj * v40];
                do
                {
                  __asm { FCMP            H1, #0 }

                  if (_ZF)
                  {
                    _H1 = *v53;
                  }

                  else
                  {
                    __asm { FCVT            S1, H1 }

                    _H2 = *v53;
                    __asm { FCVT            S2, H2 }

                    _S1 = ((1.0 - a4) * _S1) + (_S2 * a4);
                    __asm { FCVT            H1, S1 }
                  }

                  *v50 = _H1;
                  v50 += 2;
                  v53 += 2;
                  v51 += 2;
                  --v52;
                }

                while (v52);
              }
            }
          }
        }

        else if (v39)
        {
          for (kk = 0; kk != v39; ++kk)
          {
            if (v48)
            {
              v65 = &v45[kk * v42];
              v66 = &v44[kk * v41];
              v67 = v47 * v38;
              v68 = &v43[kk * v40];
              do
              {
                v69 = *v68;
                v68 += 2;
                _H1 = v69;
                __asm { FCVT            S1, H1 }

                v72 = *v66;
                v66 += 2;
                _H2 = v72;
                __asm { FCVT            S2, H2 }

                _S1 = ((1.0 - a4) * _S2) + (_S1 * a4);
                __asm { FCVT            H1, S1 }

                *v65 = LOWORD(_S1);
                v65 += 2;
                --v67;
              }

              while (v67);
            }
          }
        }

LABEL_106:
        v17 = 1;
        CVPixelBufferUnlockBaseAddress(this, 1uLL);
        CVPixelBufferUnlockBaseAddress(a2, 1uLL);
        CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
        return v17;
      }

      if (PixelFormatType == 1380401729)
      {
        goto LABEL_62;
      }

      v18 = 1380410945;
    }

    else if (PixelFormatType <= 1751410031)
    {
      if (PixelFormatType == 1717855600)
      {
        goto LABEL_82;
      }

      v18 = 1717856627;
    }

    else
    {
      if (PixelFormatType == 1751410032 || PixelFormatType == 1751411059)
      {
        goto LABEL_41;
      }

      v18 = 1919365990;
    }

    if (PixelFormatType == v18)
    {
      goto LABEL_82;
    }

    goto LABEL_108;
  }

  NSLog(&cfstr_SDErrorCannotA.isa, "alphaBlend", 4195);
  return 0;
}

void sub_240497C3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void PixelBufferUtils::colorizePointCloudOnPixelBuffer(CVPixelBufferRef pixelBuffer, __CVBuffer *a2, unint64_t a3, const CGPoint *a4, const float *a5, float a6, float a7, float a8)
{
  if (a8 <= 0.0)
  {
    CVPixelBufferGetWidth(pixelBuffer);
    CVPixelBufferGetHeight(pixelBuffer);
  }

  operator new[]();
}

void sub_240497EBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  MEMORY[0x245CC10C0](v13, 0x1000C8052888210);
  MEMORY[0x245CC10C0](v14, 0x1000C8052888210);
  MEMORY[0x245CC10C0](v12, 0x1000C8052888210);
  MEMORY[0x245CC10C0](a12, 0x1000C8052888210);
  _Unwind_Resume(a1);
}

uint64_t PixelBufferUtils::addCirclesToPixelBuffer(PixelBufferUtils *this, __CVBuffer *a2, float a3, uint64_t a4, CGPoint *a5, float *a6, float *a7, float *a8, const float *a9)
{
  if (!this || !a4 || (v10 = a5) == 0 || (v11 = a6) == 0 || (v12 = a7) == 0 || (v13 = a8) == 0)
  {
    NSLog(&cfstr_SDErrorCannotA_2.isa, a2, a4, a5, a6, a7, a8, a9, "addCirclesToPixelBuffer", 4330);
    return 0;
  }

  v14 = a2;
  PixelFormatType = CVPixelBufferGetPixelFormatType(this);
  v18 = CVPixelBufferGetWidth(this);
  Height = CVPixelBufferGetHeight(this);
  if (PixelFormatType != 1111970369)
  {
    PixelBufferUtils::pixelFormatAsString(PixelFormatType, __p);
    if (v42 >= 0)
    {
      v38 = __p;
    }

    else
    {
      v38 = __p[0];
    }

    NSLog(&cfstr_SDErrorPixelFo.isa, "addCirclesToPixelBuffer", 4340, PixelFormatType, v38);
    if (v42 < 0)
    {
      operator delete(__p[0]);
    }

    return 0;
  }

  v20 = Height;
  widtha = v18;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  CVPixelBufferLockBaseAddress(this, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(this);
  BytesPerRow = CVPixelBufferGetBytesPerRow(this);
  v24 = widtha;
  width = DeviceRGB;
  v25 = CGBitmapContextCreate(BaseAddress, v24, v20, 8uLL, BytesPerRow, DeviceRGB, 0x2002u);
  if (v14)
  {
    v26 = (a4 + 8);
    do
    {
      v27 = *(v26 - 1);
      v28 = v20 - *v26;
      v29 = *v10++;
      v30 = v29;
      v31 = *v11++;
      v32 = v31;
      v33 = *v12++;
      v34 = v33;
      v35 = *v13++;
      GenericRGB = CGColorCreateGenericRGB(v30, v32, v34, v35);
      CGContextSetFillColorWithColor(v25, GenericRGB);
      v43.origin.x = (v27 - a3);
      v43.origin.y = (v28 - a3);
      v43.size.width = (a3 + a3);
      v43.size.height = v43.size.width;
      CGContextFillEllipseInRect(v25, v43);
      CFRelease(GenericRGB);
      v26 += 2;
      v14 = (v14 - 1);
    }

    while (v14);
  }

  CVPixelBufferUnlockBaseAddress(this, 0);
  CFRelease(width);
  CGContextRelease(v25);
  return 1;
}

void sub_24049817C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t PixelBufferUtils::createColorizedPointCloud(PixelBufferUtils *this, unint64_t a2, const CGPoint *a3, const float *a4, size_t a5, const float *a6, float a7, float a8, float a9)
{
  pixelBufferOut = 0;
  v18 = *MEMORY[0x277CBECE8];
  BufferAttributes = getBufferAttributes();
  v21 = CVPixelBufferCreate(v18, a4, a5, 0x42475241u, BufferAttributes, &pixelBufferOut);
  result = 0;
  v23 = pixelBufferOut;
  if (v21)
  {
    v24 = 1;
  }

  else
  {
    v24 = pixelBufferOut == 0;
  }

  if (!v24)
  {
    PixelBufferUtils::blacken(pixelBufferOut, v20);
    PixelBufferUtils::colorizePointCloudOnPixelBuffer(v23, this, a2, a3, a6, a7, a8, a9);
  }

  return result;
}

__CVBuffer *PixelBufferUtils::createPixelBufferCopy(PixelBufferUtils *this, __CVBuffer *a2)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(this);
  PixelBufferWithSameSize = PixelBufferUtils::createPixelBufferWithSameSize(this, PixelFormatType, 1);
  if (PixelBufferUtils::copyPixelBuffer(PixelBufferWithSameSize, this, 0))
  {
    CVPixelBufferRelease(PixelBufferWithSameSize);
    return 0;
  }

  return PixelBufferWithSameSize;
}

CVPixelBufferRef PixelBufferUtils::asPixelBuffer(size_t this, size_t a2, PixelBufferUtils *a3, void *a4, void *a5)
{
  planeWidth[3] = *MEMORY[0x277D85DE8];
  if (PixelBufferUtils::planeCountForPixelFormat(a3))
  {
    v20 = 0;
    v9 = PixelBufferUtils::planeCountForPixelFormat(a3);
    if ((v9 - 4) > 0xFFFFFFFFFFFFFFFCLL)
    {
      v12 = v9;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      planeWidth[0] = this;
      planeWidth[1] = this;
      planeWidth[2] = this;
      planeHeight[0] = a2;
      planeHeight[1] = a2;
      planeHeight[2] = a2;
      v23[0] = this;
      v23[1] = this;
      v24 = this;
      planeBaseAddress[1] = 0;
      v22 = 0;
      planeBaseAddress[0] = a4;
      do
      {
        v16 = PixelBufferUtils::horizontalSubsamplingForPixelFormat(a3, v15);
        v17 = PixelBufferUtils::verticalSubsamplingForPixelFormat(a3, v15);
        v23[v14] *= PixelBufferUtils::pixelSizeForPixelFormat(a3, v15) / v16;
        planeWidth[v14] /= v16;
        planeHeight[v14] /= v17;
        if (v13)
        {
          planeBaseAddress[v14] = planeBaseAddress[v14 - 1] + planeHeight[v14 - 1] * v23[v14 - 1];
        }

        ++v15;
        ++v14;
        --v13;
      }

      while (v12 + v13);
      v18 = *MEMORY[0x277CBECE8];
      BufferAttributes = getBufferAttributes();
      CVPixelBufferCreateWithPlanarBytes(v18, this, a2, a3, 0, 0, v12, planeBaseAddress, planeWidth, planeHeight, v23, 0, 0, BufferAttributes, &v20);
      return v20;
    }

    else
    {
      NSLog(&cfstr_SDErrorOnlyUpT.isa, "asPixelBufferMultiPlane", 3707);
      return 0;
    }
  }

  else
  {
    planeWidth[0] = 0;
    v11 = PixelBufferUtils::pixelSizeForPixelFormat(a3, 0);
    CVPixelBufferCreateWithBytes(*MEMORY[0x277CBECE8], this, a2, a3, a4, v11 * this, 0, 0, 0, planeWidth);
    return planeWidth[0];
  }
}

void PixelBufferUtils::inPlaceColorScaling(PixelBufferUtils *this, __CVBuffer *a2, float a3, float a4, int a5)
{
  v6 = a2;
  PixelFormatType = CVPixelBufferGetPixelFormatType(this);
  v10 = PixelFormatType;
  if (PixelFormatType <= 1380401728)
  {
    if (PixelFormatType <= 875704437)
    {
      if (PixelFormatType > 825437746)
      {
        if (PixelFormatType != 825437747)
        {
          if (PixelFormatType != 843264104)
          {
            if (PixelFormatType != 875704422)
            {
              goto LABEL_80;
            }

            goto LABEL_72;
          }

          goto LABEL_60;
        }

        goto LABEL_25;
      }

      if (PixelFormatType != 32)
      {
        v12 = 825306677;
LABEL_24:
        if (PixelFormatType == v12)
        {
LABEL_25:
          CVPixelBufferLockBaseAddress(this, 0);
          v47 = CVPixelBufferGetPixelFormatType(this);
          PlaneCount = CVPixelBufferGetPlaneCount(this);
          v14 = PlaneCount;
          v15 = 0;
          v16 = 0;
          if (PlaneCount <= 1)
          {
            v17 = 1;
          }

          else
          {
            v17 = PlaneCount;
          }

          v46 = v17;
          v18 = MEMORY[0x277CBF3A0];
          do
          {
            if (v14)
            {
              PixelBufferUtils::asVImageBuffer(this, v15, *v18, &__p);
            }

            else
            {
              PixelBufferUtils::asVImageBuffer(this, *v18, &__p);
              v15 = 0;
            }

            data = __p.data;
            height = __p.height;
            width = __p.width;
            rowBytes = __p.rowBytes;
            v23 = PixelBufferUtils::componentsPerPixelForPixelFormat(v47, v15);
            if (height)
            {
              v25 = 0;
              v26 = width * v23;
              do
              {
                if (v26)
                {
                  for (i = 0; i != v26; ++i)
                  {
                    if (i % v23 != 0x7FFFFFFF)
                    {
                      LOWORD(v24) = *&data[2 * i];
                      v28 = LODWORD(v24);
                      v29 = (v28 + a4) * a3;
                      v24 = a4 + (v28 * a3);
                      if (!v6)
                      {
                        v24 = v29;
                      }

                      *&data[2 * i] = v24;
                    }
                  }
                }

                ++v25;
                data += rowBytes;
              }

              while (v25 != height);
            }

            v15 = ++v16;
          }

          while (v46 > v16);

          CVPixelBufferUnlockBaseAddress(this, 0);
          return;
        }

LABEL_80:
        PixelBufferUtils::pixelFormatAsString(PixelFormatType, &__p);
        if ((__p.width & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.data;
        }

        NSLog(&cfstr_SDErrorPixelFo.isa, "inPlaceColorScaling", 3957, v10, p_p);
        if (SHIBYTE(__p.width) < 0)
        {
          operator delete(__p.data);
        }

        return;
      }

      goto LABEL_54;
    }

    if (PixelFormatType <= 1111970368)
    {
      if (PixelFormatType == 875704438)
      {
LABEL_72:
        v41 = this;
        v42 = a3;
        v43 = a4;
        v44 = v6;
        v35 = 0x7FFFFFFF;
        goto LABEL_73;
      }

      if (PixelFormatType != 1094862674)
      {
        goto LABEL_80;
      }

LABEL_54:
      if (a5)
      {
        v35 = 0x7FFFFFFF;
      }

      else
      {
        v35 = 0;
      }

LABEL_71:
      v41 = this;
      v42 = a3;
      v43 = a4;
      v44 = v6;
LABEL_73:

      scaleColorsRawInPlace<unsigned char>(v41, v44, v35, v42, v43);
      return;
    }

    if (PixelFormatType != 1111970369)
    {
      if (PixelFormatType != 1278226534)
      {
        v11 = 1278226536;
        goto LABEL_59;
      }

      goto LABEL_64;
    }

    goto LABEL_68;
  }

  if (PixelFormatType > 1717856626)
  {
    if (PixelFormatType <= 1751411058)
    {
      if (PixelFormatType != 1717856627)
      {
        v11 = 1751410032;
LABEL_59:
        if (PixelFormatType != v11)
        {
          goto LABEL_80;
        }

LABEL_60:
        v36 = this;
        v37 = a3;
        v38 = a4;
        v39 = v6;
        v40 = 0x7FFFFFFF;
LABEL_61:

        scaleColorsRawInPlace<half>(v36, v39, v40, v37, v38);
        return;
      }
    }

    else
    {
      if (PixelFormatType == 1751411059)
      {
        goto LABEL_60;
      }

      if (PixelFormatType != 1919365990)
      {
        v12 = 1932996149;
        goto LABEL_24;
      }
    }

    goto LABEL_64;
  }

  if (PixelFormatType > 1380411456)
  {
    if (PixelFormatType == 1380411457)
    {
      if (a5)
      {
        v40 = 0x7FFFFFFF;
      }

      else
      {
        v40 = 3;
      }

      v36 = this;
      v37 = a3;
      v38 = a4;
      v39 = v6;
      goto LABEL_61;
    }

    if (PixelFormatType == 1647392359)
    {
      goto LABEL_25;
    }

    if (PixelFormatType != 1717855600)
    {
      goto LABEL_80;
    }

LABEL_64:
    v31 = this;
    v32 = a3;
    v33 = a4;
    v34 = v6;
    v30 = 0x7FFFFFFF;
    goto LABEL_65;
  }

  if (PixelFormatType == 1380401729)
  {
LABEL_68:
    if (a5)
    {
      v35 = 0x7FFFFFFF;
    }

    else
    {
      v35 = 3;
    }

    goto LABEL_71;
  }

  if (PixelFormatType != 1380410945)
  {
    goto LABEL_80;
  }

  if (a5)
  {
    v30 = 0x7FFFFFFF;
  }

  else
  {
    v30 = 3;
  }

  v31 = this;
  v32 = a3;
  v33 = a4;
  v34 = v6;
LABEL_65:

  scaleColorsRawInPlace<float>(v31, v34, v30, v32, v33);
}

void sub_240498A18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t scaleColorsRawInPlace<float>(__CVBuffer *a1, int a2, int a3, float a4, float a5)
{
  CVPixelBufferLockBaseAddress(a1, 0);
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v30 = a1;
  PlaneCount = CVPixelBufferGetPlaneCount(a1);
  v11 = PlaneCount;
  v12 = 0;
  v13 = 0;
  if (PlaneCount <= 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = PlaneCount;
  }

  v28 = v14;
  v15 = MEMORY[0x277CBF3A0];
  do
  {
    if (v11)
    {
      PixelBufferUtils::asVImageBuffer(v30, v12, *v15, &v31);
    }

    else
    {
      PixelBufferUtils::asVImageBuffer(v30, *v15, &v31);
      v12 = 0;
    }

    data = v31.data;
    height = v31.height;
    width = v31.width;
    rowBytes = v31.rowBytes;
    v20 = PixelBufferUtils::componentsPerPixelForPixelFormat(PixelFormatType, v12);
    if (height)
    {
      v21 = 0;
      v22 = width * v20;
      do
      {
        if (v22)
        {
          for (i = 0; i != v22; ++i)
          {
            if (i % v20 != a3)
            {
              v24 = data[i];
              v25 = (v24 + a5) * a4;
              v26 = a5 + (v24 * a4);
              if (!a2)
              {
                v26 = v25;
              }

              data[i] = v26;
            }
          }
        }

        ++v21;
        data = (data + rowBytes);
      }

      while (v21 != height);
    }

    v12 = ++v13;
  }

  while (v28 > v13);

  return CVPixelBufferUnlockBaseAddress(v30, 0);
}

uint64_t scaleColorsRawInPlace<half>(__CVBuffer *a1, int a2, int a3, float a4, float a5)
{
  CVPixelBufferLockBaseAddress(a1, 0);
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v36 = a1;
  PlaneCount = CVPixelBufferGetPlaneCount(a1);
  v11 = PlaneCount;
  v12 = 0;
  v13 = 0;
  if (PlaneCount <= 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = PlaneCount;
  }

  v34 = v14;
  v15 = MEMORY[0x277CBF3A0];
  do
  {
    if (v11)
    {
      PixelBufferUtils::asVImageBuffer(v36, v12, *v15, &v37);
    }

    else
    {
      PixelBufferUtils::asVImageBuffer(v36, *v15, &v37);
      v12 = 0;
    }

    data = v37.data;
    height = v37.height;
    width = v37.width;
    rowBytes = v37.rowBytes;
    v20 = PixelBufferUtils::componentsPerPixelForPixelFormat(PixelFormatType, v12);
    if (height)
    {
      v21 = 0;
      v22 = width * v20;
      do
      {
        if (v22)
        {
          for (i = 0; i != v22; ++i)
          {
            if (i % v20 != a3)
            {
              _H0 = *&data[2 * i];
              __asm { FCVT            S0, H0 }

              v30 = (_S0 + a5) * a4;
              _S0 = a5 + (_S0 * a4);
              if (!a2)
              {
                _S0 = v30;
              }

              __asm { FCVT            H0, S0 }

              *&data[2 * i] = _H0;
            }
          }
        }

        ++v21;
        data += rowBytes;
      }

      while (v21 != height);
    }

    v12 = ++v13;
  }

  while (v34 > v13);

  return CVPixelBufferUnlockBaseAddress(v36, 0);
}

uint64_t scaleColorsRawInPlace<unsigned char>(__CVBuffer *a1, int a2, int a3, float a4, float a5)
{
  CVPixelBufferLockBaseAddress(a1, 0);
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v30 = a1;
  PlaneCount = CVPixelBufferGetPlaneCount(a1);
  v11 = PlaneCount;
  v12 = 0;
  v13 = 0;
  if (PlaneCount <= 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = PlaneCount;
  }

  v28 = v14;
  v15 = MEMORY[0x277CBF3A0];
  do
  {
    if (v11)
    {
      PixelBufferUtils::asVImageBuffer(v30, v12, *v15, &v31);
    }

    else
    {
      PixelBufferUtils::asVImageBuffer(v30, *v15, &v31);
      v12 = 0;
    }

    data = v31.data;
    height = v31.height;
    width = v31.width;
    rowBytes = v31.rowBytes;
    v20 = PixelBufferUtils::componentsPerPixelForPixelFormat(PixelFormatType, v12);
    if (height)
    {
      v22 = 0;
      v23 = width * v20;
      do
      {
        if (v23)
        {
          for (i = 0; i != v23; ++i)
          {
            if (i % v20 != a3)
            {
              LOBYTE(v21) = data[i];
              v25 = LODWORD(v21);
              v26 = (v25 + a5) * a4;
              v21 = a5 + (v25 * a4);
              if (!a2)
              {
                v21 = v26;
              }

              data[i] = v21;
            }
          }
        }

        ++v22;
        data += rowBytes;
      }

      while (v22 != height);
    }

    v12 = ++v13;
  }

  while (v28 > v13);

  return CVPixelBufferUnlockBaseAddress(v30, 0);
}

uint64_t PixelBufferUtils::rotationAngleAndMirroringFromExifOrientation(PixelBufferUtils *this, BOOL *a2, BOOL *a3)
{
  if (this <= 4)
  {
    if (this == 4)
    {
      v11 = 180;
    }

    else
    {
      v11 = 0;
    }

    v12 = this == 4;
    if (this == 3)
    {
      v13 = 180;
    }

    else
    {
      v13 = v11;
    }

    if (this == 3)
    {
      v12 = 0;
    }

    v14 = this == 2;
    if (this == 2)
    {
      result = 0;
    }

    else
    {
      result = v13;
    }

    v5 = v14 || v12;
    if (a2)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if (this == 8)
    {
      v3 = 270;
    }

    else
    {
      v3 = 0;
    }

    if (this == 7)
    {
      v4 = 90;
    }

    else
    {
      v4 = v3;
    }

    v5 = this == 7;
    if (this == 6)
    {
      v6 = 90;
    }

    else
    {
      v6 = 0;
    }

    if (this == 5)
    {
      v7 = 270;
    }

    else
    {
      v7 = v6;
    }

    v8 = this == 5;
    v9 = this <= 6;
    if (this <= 6)
    {
      result = v7;
    }

    else
    {
      result = v4;
    }

    if (v9)
    {
      v5 = v8;
    }

    if (a2)
    {
LABEL_21:
      *a2 = v5;
    }
  }

  return result;
}

uint64_t PixelBufferUtils::rotationBetweenOrientations(PixelBufferUtils *this, PixelBufferUtils *a2, BOOL *a3)
{
  v8 = 0;
  v4 = PixelBufferUtils::rotationAngleAndMirroringFromExifOrientation(this, &v8 + 1, a3);
  v6 = PixelBufferUtils::rotationAngleAndMirroringFromExifOrientation(a2, &v8, v5);
  if (HIBYTE(v8) == v8)
  {
    if ((v6 - v4) <= 0xFFFFFE97)
    {
      result = (v6 - v4);
    }

    else
    {
      result = (v6 - v4 + 360);
    }

    if (result > 179)
    {
      if (result == 180)
      {
        return 2;
      }

      if (result == 270)
      {
        return 1;
      }
    }

    else
    {
      if (!result)
      {
        return result;
      }

      if (result == 90)
      {
        return 3;
      }
    }
  }

  return 0xFFFFFFFFLL;
}

__CVBuffer *PixelBufferUtils::savePlyFromDepthBuffer(__CVBuffer *this, __CVBuffer *a2, const char *a3, float a4, CGPoint a5, float a6, float a7, float a8)
{
  if (this)
  {
    v8 = this;
    CVPixelBufferGetWidth(this);
    CVPixelBufferGetHeight(v8);
    CVPixelBufferLockBaseAddress(v8, 1uLL);
    CVPixelBufferGetBytesPerRow(v8);
    CVPixelBufferGetBaseAddress(v8);
    operator new[]();
  }

  return this;
}

uint64_t PixelBufferUtils::addTextToPixelBuffer(PixelBufferUtils *this, __CVBuffer *a2, const char *a3, CGPoint a4)
{
  v34[3] = *MEMORY[0x277D85DE8];
  if (!this || !a2)
  {
    NSLog(&cfstr_SDErrorCannotA_0.isa, a2, a3, a4.x, a4.y, "addTextToPixelBuffer", 4261);
    return 0;
  }

  y = a4.y;
  x = a4.x;
  PixelFormatType = CVPixelBufferGetPixelFormatType(this);
  Width = CVPixelBufferGetWidth(this);
  Height = CVPixelBufferGetHeight(this);
  v12 = Height;
  if (PixelFormatType != 32 && PixelFormatType != 1111970369)
  {
    PixelBufferUtils::pixelFormatAsString(PixelFormatType, &__p);
    if (__p.c >= 0.0)
    {
      a = COERCE_DOUBLE(&__p);
    }

    else
    {
      a = __p.a;
    }

    NSLog(&cfstr_SDErrorPixelFo.isa, "addTextToPixelBuffer", 4271, PixelFormatType, *&a);
    if (SHIBYTE(__p.c) < 0)
    {
      operator delete(*&__p.a);
    }

    return 0;
  }

  v13 = Height;
  if (x > Width || y > v13)
  {
    NSLog(&cfstr_SDErrorCannotA_1.isa, "addTextToPixelBuffer", 4277);
    return 0;
  }

  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  CVPixelBufferLockBaseAddress(this, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(this);
  BytesPerRow = CVPixelBufferGetBytesPerRow(this);
  v20 = CGBitmapContextCreate(BaseAddress, Width, v12, 8uLL, BytesPerRow, DeviceRGB, 6u);
  v21 = *(MEMORY[0x277CBF2C0] + 16);
  *&__p.a = *MEMORY[0x277CBF2C0];
  *&__p.c = v21;
  *&__p.tx = *(MEMORY[0x277CBF2C0] + 32);
  CGContextSetTextMatrix(v20, &__p);
  CGContextSetTextDrawingMode(v20, kCGTextFill);
  GenericRGB = CGColorCreateGenericRGB(1.0, 1.0, 1.0, 1.0);
  v23 = CGColorCreateGenericRGB(0.0, 0.0, 0.0, 0.0);
  v24 = CTFontCreateWithName(@"Courier", a3, 0);
  {
    {
      v31 = *MEMORY[0x277CC49C0];
      v33[0] = *MEMORY[0x277CC4838];
      v33[1] = v31;
      v34[0] = v24;
      v34[1] = GenericRGB;
      v33[2] = *MEMORY[0x277CC4820];
      v34[2] = v23;
      PixelBufferUtils::addTextToPixelBuffer(__CVBuffer *,char const*,unsigned long,CGPoint)::stringAttributes = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:3];
    }
  }

  v25 = objc_alloc(MEMORY[0x277CCA898]);
  v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:a2];
  v27 = [v25 initWithString:v26 attributes:{PixelBufferUtils::addTextToPixelBuffer(__CVBuffer *, char const*, unsigned long, CGPoint)::stringAttributes}];

  v28 = CTLineCreateWithAttributedString(v27);
  v29 = x;
  v30 = v13 - y;
  CGContextSetTextPosition(v20, v29, v30);
  CTLineDraw(v28, v20);
  CVPixelBufferUnlockBaseAddress(this, 0);
  CFRelease(DeviceRGB);
  CGContextRelease(v20);
  CFRelease(GenericRGB);
  CFRelease(v23);
  CFRelease(v24);

  return 1;
}

uint64_t PixelBufferUtilsSession::PixelBufferUtilsSession(uint64_t a1, int a2, OSType a3, uint64_t a4, int a5, double a6, double a7, double a8, double a9, CGFloat a10, CGFloat a11, CGFloat a12, CGFloat a13, CGFloat a14, CGFloat a15, CGFloat a16, CGFloat a17)
{
  v23 = a13;
  v24 = a12;
  v25 = a11;
  v26 = a10;
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  v33 = (a1 + 8);
  *(a1 + 24) = a6;
  *(a1 + 32) = a7;
  *(a1 + 40) = a2;
  *(a1 + 48) = a8;
  *(a1 + 56) = a9;
  *(a1 + 64) = a3;
  *(a1 + 72) = a10;
  *(a1 + 80) = a11;
  *(a1 + 88) = a12;
  *(a1 + 96) = a13;
  *(a1 + 104) = a14;
  *(a1 + 112) = a15;
  *(a1 + 120) = a16;
  *(a1 + 128) = a17;
  *(a1 + 136) = a4;
  *(a1 + 140) = a5;
  v48.origin.x = a10;
  v48.origin.y = a11;
  v48.size.width = a12;
  v48.size.height = a13;
  if (CGRectIsEmpty(v48))
  {
    v26 = 0.0;
    v25 = 0.0;
    v24 = a6;
    v23 = a7;
  }

  if (a2 != a3 || a6 != a8 || a7 != a9)
  {
    v34 = (a5 | a4) == 0;
    goto LABEL_11;
  }

  v34 = (a5 | a4) == 0;
  if (v24 != a6 || v23 != a7)
  {
LABEL_11:
    if (!isVtTransferSupportFormat(a2) || (isVtTransferSupportFormat(a3) & 1) == 0)
    {
      NSLog(&cfstr_SDErrorTransfe.isa, "PixelBufferUtilsSession", 4410);
      return a1;
    }

    v35 = 1;
    if (v34)
    {
      goto LABEL_14;
    }

    goto LABEL_19;
  }

  v35 = 0;
  if (!(a5 | a4))
  {
    goto LABEL_14;
  }

LABEL_19:
  if ((isVtRotateSupportFormat(a3) & 1) == 0)
  {
    NSLog(&cfstr_SDErrorRotatio.isa, "PixelBufferUtilsSession", 4416);
    return a1;
  }

  if (!v35)
  {
    goto LABEL_30;
  }

  v38 = a8;
  if ((a4 & 0xFFFFFFFD) == 1)
  {
    v39 = a9;
  }

  else
  {
    v39 = a8;
  }

  if ((a4 & 0xFFFFFFFD) != 1)
  {
    v38 = a9;
  }

  v40 = v39;
  v41 = v38;
  pixelBufferOut = 0;
  v42 = *MEMORY[0x277CBECE8];
  BufferAttributes = getBufferAttributes();
  v44 = CVPixelBufferCreate(v42, v40, v41, a3, BufferAttributes, &pixelBufferOut);
  v45 = pixelBufferOut;
  if (v44)
  {
    v45 = 0;
  }

  *a1 = v45;
  if (!v45)
  {
    NSLog(&cfstr_SDErrorFailedA.isa, "PixelBufferUtilsSession", 4440);
    return a1;
  }

LABEL_14:
  v49.origin.x = v26;
  v49.origin.y = v25;
  v49.size.width = v24;
  v49.size.height = v23;
  v50.origin.x = a14;
  v50.origin.y = a15;
  v50.size.width = a16;
  v50.size.height = a17;
  VTTransferSession = createVTTransferSession(v49, v50);
  *v33 = VTTransferSession;
  if (!VTTransferSession)
  {
    CVPixelBufferRelease(*a1);
    *a1 = 0;
    return a1;
  }

  if (!v34)
  {
LABEL_30:
    VTRotationSession = createVTRotationSession(a4, a5);
    *(a1 + 16) = VTRotationSession;
    if (!VTRotationSession)
    {
      CVPixelBufferRelease(*a1);
      *a1 = 0;
      destroyVTTransferSession(v33);
    }
  }

  return a1;
}

{
  return PixelBufferUtilsSession::PixelBufferUtilsSession(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17);
}

void destroyVTTransferSession(CFTypeRef *a1)
{
  v2 = *a1;
  if (v2)
  {
    VTPixelTransferSessionInvalidate(v2);
    CFRelease(*a1);
  }

  *a1 = 0;
}

void PixelBufferUtilsSession::~PixelBufferUtilsSession(PixelBufferUtilsSession *this)
{
  CVPixelBufferRelease(*this);
  *this = 0;
  if (*(this + 2))
  {
    MEMORY[0x245CC0D70]();
    CFRelease(*(this + 2));
  }

  *(this + 2) = 0;
  destroyVTTransferSession(this + 1);
}

CVPixelBufferRef PixelBufferUtilsSession::createOutputPixelBuffer(PixelBufferUtilsSession *this)
{
  v1 = *(this + 16);
  v2 = *(this + 6);
  v3 = *(this + 7);
  pixelBufferOut = 0;
  v4 = *MEMORY[0x277CBECE8];
  BufferAttributes = getBufferAttributes();
  if (CVPixelBufferCreate(v4, v2, v3, v1, BufferAttributes, &pixelBufferOut))
  {
    return 0;
  }

  else
  {
    return pixelBufferOut;
  }
}

__CVBuffer *verifyPixelBufferSizeAndFormat(__CVBuffer *result, CGSize a2, int a3)
{
  if (result)
  {
    height = a2.height;
    v5 = result;
    if (a2.width == CVPixelBufferGetWidth(result) && height == CVPixelBufferGetHeight(v5))
    {
      return (CVPixelBufferGetPixelFormatType(v5) == a3);
    }

    else
    {
      return 0;
    }
  }

  return result;
}