const char *ASTCTwiddler::finalizeTwiddling(ASTCTwiddler *this)
{
  result = *(this + 1);
  if (result)
  {
    return ASTCTwiddler::ASTCTwiddlerImpl::finalizeTwiddlingImp(result);
  }

  return result;
}

uint64_t ASTCTwiddler::twiddledDataSize(ASTCTwiddler *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    return [*(v1 + 56) size];
  }

  else
  {
    return 0;
  }
}

uint64_t ASTCTwiddler::twiddledData(ASTCTwiddler *this)
{
  v1 = *(this + 1);
  if (v1 && *(v1 + 64) == 1)
  {
    return *(v1 + 40);
  }

  else
  {
    return 0;
  }
}

int32x2_t *png_read_filter_row_avg_neon(int32x2_t *result, int32x2_t *a2, unint64_t a3, int32x4_t *a4, unint64_t a5, double a6, double a7, double a8, double a9, int32x2_t a10)
{
  if (a3 < a2 || (v10 = result[1], v10 > a3 - a2) || a5 < a4 || (v10 <= a5 - a4 ? (v11 = a3 > a2) : (v11 = 0), v11 ? (v12 = a5 > a4) : (v12 = 0), !v12 || ((a2->i8[0] += a4->i8[0] >> 1, a2 + 1 < a3) ? (v13 = &a2->i8[1] >= a2) : (v13 = 0), (v14 = &a4->i8[1], v13) ? (v15 = v14 >= a5) : (v15 = 1), !v15 ? (v16 = v14 >= a4) : (v16 = 0), !v16 || (a2->i8[1] += *v14 >> 1, a2 + 2 >= a3) || &a2->i16[1] < a2 || (v17 = &a4->i8[2], a4->u64 + 2 >= a5) || v17 < a4 || (a2->i8[2] += *v17 >> 1, a2 + 3 >= a3) || (a2->i32 + 3) < a2 || a4->u64 + 3 >= a5 || (a4->i32 + 3) < a4)))
  {
LABEL_72:
    __break(0x5519u);
    return result;
  }

  a2->i8[3] += a4->i8[3] >> 1;
  v18 = (a2 + 4);
  v19 = (a4->i64 + 4);
  v20 = v10 - 4;
  if (v10 - 4 < 0x10)
  {
    v21 = v10 - 4;
  }

  else
  {
    a10.i32[0] = a2->i32[0];
    v21 = v10 - 4;
    do
    {
      v22 = *v19++;
      v23 = vaddq_s8(vhaddq_u8(vdupq_lane_s32(*v22.i8, 0), vdupq_lane_s32(a10, 0)), vdupq_lane_s32(*v18, 0));
      v24 = vdupq_lane_s32(*v22.i8, 1);
      v24.i32[0] = v23.i32[0];
      v25 = vaddq_s8(vqtbl1q_s8(*v18->i8, xmmword_1862270A0), vhaddq_u8(v23, v24));
      v24.i64[0] = v25.i64[0];
      v24.i64[1] = vdupq_laneq_s32(v22, 2).i64[1];
      v26 = vaddq_s8(vqtbl1q_s8(*v18->i8, xmmword_1862270B0), vhaddq_u8(v25, v24));
      v27 = v26;
      v27.i32[3] = v22.i32[3];
      v28 = vaddq_s8(vqtbl1q_s8(*v18->i8, xmmword_1862270C0), vhaddq_u8(v26, v27));
      *v18->i8 = v28;
      v18 += 2;
      a10 = vextq_s8(v28, 0, 0xCuLL).u64[0];
      v21 -= 16;
    }

    while (v21 > 0xF);
  }

  if (v21 >= 4)
  {
    v29 = (a2 + (v20 & 0xFFFFFFFFFFFFFFF0));
    while (v18 < a3)
    {
      if (v18 < a2)
      {
        break;
      }

      v32 = v18->i8[0];
      v30 = (v18 + 1);
      v31 = v32;
      if (v30 >= a3)
      {
        break;
      }

      if (v30 < a2)
      {
        break;
      }

      v35 = v30->i8[0];
      v33 = (v30 + 1);
      v34 = v35;
      if (v33 >= a3)
      {
        break;
      }

      if (v33 < a2)
      {
        break;
      }

      v38 = v33->i8[0];
      v36 = (v33 + 1);
      v37 = v38;
      if (v36 >= a3)
      {
        break;
      }

      if (v36 < a2)
      {
        break;
      }

      if (v29 >= a3)
      {
        break;
      }

      if (v29 < a2)
      {
        break;
      }

      v41 = v29->u8[0];
      v39 = (v29 + 1);
      v40 = v41;
      if (v39 >= a3)
      {
        break;
      }

      if (v39 < a2)
      {
        break;
      }

      v44 = v39->u8[0];
      v42 = (v39 + 1);
      v43 = v44;
      if (v42 >= a3)
      {
        break;
      }

      if (v42 < a2)
      {
        break;
      }

      v47 = v42->u8[0];
      v45 = (v42 + 1);
      v46 = v47;
      if (v45 >= a3)
      {
        break;
      }

      if (v45 < a2)
      {
        break;
      }

      if (v19 >= a5)
      {
        break;
      }

      if (v19 < a4)
      {
        break;
      }

      v50 = v19->u8[0];
      v49 = &v19->u8[1];
      v48 = v50;
      if (v49 >= a5)
      {
        break;
      }

      if (v49 < a4)
      {
        break;
      }

      v53 = *v49;
      v52 = v49 + 1;
      v51 = v53;
      if (v52 >= a5)
      {
        break;
      }

      if (v52 < a4)
      {
        break;
      }

      v54 = v52 + 1;
      if (v54 >= a5)
      {
        break;
      }

      if (v54 < a4)
      {
        break;
      }

      result = (v36 - 3);
      if (&v36[-1] + 5 >= a3)
      {
        break;
      }

      if (result < a2)
      {
        break;
      }

      v55 = v36->i8[0];
      v56 = v45->u8[0];
      v57 = *(v54 - 1);
      v58 = *v54;
      result->i8[0] = v31 + ((v48 + v40) >> 1);
      result = (result + 1);
      if (result >= a3)
      {
        break;
      }

      if (result < a2)
      {
        break;
      }

      result->i8[0] = v34 + ((v51 + v43) >> 1);
      result = (result + 1);
      if (result >= a3)
      {
        break;
      }

      if (result < a2)
      {
        break;
      }

      result->i8[0] = v37 + ((v57 + v46) >> 1);
      result = (result + 1);
      if (result >= a3 || result < a2)
      {
        break;
      }

      result->i8[0] = v55 + ((v58 + v56) >> 1);
      result = (result + 1);
      v21 -= 4;
      v29 = (v45 + 1);
      v19 = (v54 + 1);
      v18 = result;
      if (v21 <= 3)
      {
        return result;
      }
    }

    goto LABEL_72;
  }

  return result;
}

uint64_t png_read_filter_row_paeth_multibyte_pixel(uint64_t result, unsigned __int8 *a2, unint64_t a3, unsigned __int8 *a4, unint64_t a5)
{
  v5 = (*(result + 19) + 7) >> 3;
  v6 = &a2[v5];
  if (&a2[v5] > a2)
  {
    v7 = (*(result + 19) + 7) >> 3;
    v8 = a2;
    v9 = a4;
    while (v8 < a3 && v8 >= a2 && v9 < a5 && v9 >= a4)
    {
      v10 = *v9++;
      *v8++ += v10;
      if (!--v7)
      {
        goto LABEL_10;
      }
    }

    goto LABEL_35;
  }

  v9 = a4;
  v6 = a2;
LABEL_10:
  v11 = *(result + 8);
  if (v6 < &a2[v11])
  {
    v12 = -v5;
    v13 = &a2[v11] - v6;
    while (1)
    {
      v14 = &v9[v12];
      if (&v9[v12] >= a5 || v14 < a4)
      {
        break;
      }

      v16 = &v6[v12];
      if (&v6[v12] >= a3 || v16 < a2 || v9 >= a5 || v9 < a4 || v6 >= a3 || v6 < a2)
      {
        break;
      }

      v17 = *v14;
      v19 = *v9++;
      v18 = v19;
      v20 = v19 - v17;
      v21 = *v16;
      v22 = v21 - v17;
      v23 = v21 - v17 + v19 - v17;
      if (v23 < 0)
      {
        v23 = -v23;
      }

      if (v22 < 0)
      {
        v22 = v17 - v21;
      }

      if (v20 < 0)
      {
        v20 = -v20;
      }

      if (v22 < v20)
      {
        v20 = v22;
        LOBYTE(v21) = v18;
      }

      if (v23 < v20)
      {
        LOBYTE(v21) = v17;
      }

      *v6++ += v21;
      if (!--v13)
      {
        return result;
      }
    }

LABEL_35:
    __break(0x5519u);
  }

  return result;
}

CGColorSpaceRef CGColorSpaceCreateCalGray(float a1, float a2, float a3)
{
  if (fabs(a1 + -0.3127) < 0.0005 && fabs(a2 + -0.329) < 0.0005)
  {
    if (fabs(a3 + -2.2) < 0.0005)
    {
      v6 = MEMORY[0x1E695F128];
      goto LABEL_7;
    }

    if (fabs(a3 + -1.0) < 0.0005)
    {
      v6 = MEMORY[0x1E695F1A0];
LABEL_7:
      v7 = CGColorSpaceCreateWithName(*v6);
      if (v7)
      {
        return v7;
      }

      return CGColorSpaceCreateWithName(*MEMORY[0x1E695F128]);
    }
  }

  memset(v22, 0, sizeof(v22));
  IIODictionary::IIODictionary(v22);
  v19 = 0;
  value = 0;
  v21 = 0;
  IIOArray::IIOArray(&v19);
  v16 = 0;
  v17 = 0;
  v18 = 0;
  IIOArray::IIOArray(&v16);
  v13 = 0;
  v14 = 0;
  v15 = 0;
  IIOArray::IIOArray(&v13);
  v8 = *MEMORY[0x1E695E4D0];
  IIODictionary::setObjectForKey(v22, *MEMORY[0x1E695E4D0], @"skipPhosphorsCheck");
  IIODictionary::setObjectForKey(v22, @"Calibrated Gray Colorspace", @"description");
  IIODictionary::setObjectForKey(v22, v8, @"unrestrictedGamma");
  IIODictionary::setObjectForKey(v22, @"calGray", @"profileType");
  IIOAddDateComponents(&v19);
  IIODictionary::setObjectForKey(v22, value, @"Date");
  IIONumber::IIONumber(v12, a3);
  IIODictionary::setObjectForKey(v22, v12, @"kGamma");
  IIONumber::~IIONumber(v12);
  IIOAddXYZfrom_xy(&v16, a1, a2, 1.0);
  IIODictionary::setObjectForKey(v22, v17, @"wtpt");
  IIOAddXYZfrom_xy(&v13, 0.0, 0.0, 0.0);
  IIODictionary::setObjectForKey(v22, v14, @"bkpt");
  Profile = ColorSyncMakeProfile();
  IIOArray::~IIOArray(&v13);
  IIOArray::~IIOArray(&v16);
  IIOArray::~IIOArray(&v19);
  IIODictionary::~IIODictionary(v22);
  if (!Profile)
  {
    return CGColorSpaceCreateWithName(*MEMORY[0x1E695F128]);
  }

  v10 = MEMORY[0x186601190](Profile, 0);
  CFRelease(Profile);
  if (!v10)
  {
    return CGColorSpaceCreateWithName(*MEMORY[0x1E695F128]);
  }

  return v10;
}

void sub_185ED76D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va3, a2);
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  va_copy(va3, va2);
  v12 = va_arg(va3, void);
  v14 = va_arg(va3, void);
  v15 = va_arg(va3, void);
  IIONumber::~IIONumber(va);
  IIOArray::~IIOArray(va1);
  IIOArray::~IIOArray(va2);
  IIOArray::~IIOArray(va3);
  IIODictionary::~IIODictionary((v2 - 72));
  _Unwind_Resume(a1);
}

uint64_t displayCheck(void)
{
  result = MGGetBoolAnswer();
  gIsWideGamutDisplay = result;
  return result;
}

uint64_t png_chunk_warning(uint64_t a1, unsigned __int8 *a2)
{
  *&v7[2] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    memset(v6, 0, sizeof(v6));
    png_format_buffer(a1, v6, v7, a2);
    return png_warning(a1, v6);
  }

  else
  {
    v4 = MEMORY[0x1E69E9848];
    fprintf(*MEMORY[0x1E69E9848], "libpng warning: %s", a2);
    v5 = *v4;

    return fputc(10, v5);
  }
}

uint64_t png_format_buffer(uint64_t a1, unint64_t a2, unint64_t a3, unsigned __int8 *a4)
{
  v4 = 0;
  LODWORD(v5) = *(a1 + 312);
  for (i = 24; i != -8; i -= 8)
  {
    v7 = v5 >> i;
    v8 = (v5 >> i);
    v9 = v8 - 123;
    result = (v8 - 91);
    v11 = (a2 + v4);
    v13 = v11 < a3 && v11 >= a2;
    if (v9 >= 0xFFFFFFC6 && result > 5)
    {
      if (!v13)
      {
        goto LABEL_44;
      }

      ++v4;
      *v11 = v7;
    }

    else
    {
      if (!v13)
      {
        goto LABEL_44;
      }

      *v11 = 91;
      v15 = &png_digit[v7 >> 4];
      if (v15 >= "")
      {
        goto LABEL_44;
      }

      if (v15 < "0123456789ABCDEF")
      {
        goto LABEL_44;
      }

      v16 = v11 + 1;
      if ((v11 + 1) >= a3)
      {
        goto LABEL_44;
      }

      if (v16 < a2)
      {
        goto LABEL_44;
      }

      *v16 = *v15;
      v17 = &png_digit[v7 & 0xF];
      if (v17 >= "")
      {
        goto LABEL_44;
      }

      if (v17 < "0123456789ABCDEF")
      {
        goto LABEL_44;
      }

      if ((v11 + 2) >= a3)
      {
        goto LABEL_44;
      }

      if ((v11 + 2) < a2)
      {
        goto LABEL_44;
      }

      v11[2] = *v17;
      v18 = v11 + 3;
      if (v18 >= a3 || v18 < a2)
      {
        goto LABEL_44;
      }

      v4 += 4;
      *v18 = 93;
    }
  }

  v19 = (a2 + v4);
  LODWORD(v5) = v19 < a3 && v19 >= a2;
  if (a4)
  {
    if (!v5)
    {
      goto LABEL_44;
    }

    LODWORD(v5) = 58;
    *v19 = 58;
    v21 = v19 + 1;
    if (v21 >= a3 || v21 < a2)
    {
      goto LABEL_44;
    }

    v5 = 0;
    i = v4 + 2;
    *v21 = 32;
    v22 = v4 + 197;
    v23 = (a2 + i);
    do
    {
      v25 = *a4++;
      v24 = v25;
      if (!v25)
      {
        goto LABEL_45;
      }

      if (v23 >= a3 || v23 < a2)
      {
        goto LABEL_44;
      }

      *v23++ = v24;
      --v5;
    }

    while (v5 != -195);
    while (1)
    {
      v19 = (a2 + v22);
      if (v19 < a3 && v19 >= a2)
      {
        break;
      }

LABEL_44:
      __break(0x5519u);
LABEL_45:
      v22 = i - v5;
    }
  }

  else if ((v5 & 1) == 0)
  {
    goto LABEL_44;
  }

  *v19 = 0;
  return result;
}

uint64_t png_app_warning(uint64_t a1, char *a2)
{
  if ((*(a1 + 82) & 0x20) == 0)
  {
    _cg_png_error(a1, a2);
  }

  return png_warning(a1, a2);
}

uint64_t iioSkipCallback(int a1, IIOImageReadSession **a2)
{
  if (IIOImageReadSession::skipBytes(*a2, a1) == a1)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void ReadComponentsConfiguration(uint64_t a1, uint64_t a2, const __CFString *a3, const __CFString *a4, const __CFString *a5, const void *a6, uint64_t a7)
{
  v12 = a7 + 8;
  v17 = 0;
  value = 0;
  v19 = 0;
  IIOArray::IIOArray(&v17);
  for (i = 0; i != 4; ++i)
  {
    IIOString::IIOString(v15, 0, @"%d", *(v12 + i));
    IIOArray::addObject(&v17, v16);
    IIOString::~IIOString(v15);
  }

  v14 = CGImageMetadataTagCreate(a3, a4, a5, kCGImageMetadataTypeArrayOrdered, value);
  if (v14)
  {
    CGImageMetadataAddTagWithKey(a1, a6, v14);
    CFRelease(v14);
  }

  IIOArray::~IIOArray(&v17);
}

void sub_185ED7B20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  IIOArray::~IIOArray(va);
  _Unwind_Resume(a1);
}

const __CFArray *IIOArray::getObjectAtIndex(IIOArray *this, CFIndex a2)
{
  result = *(this + 1);
  if (result)
  {
    return CFArrayGetValueAtIndex(result, a2);
  }

  return result;
}

IIOImageRead *IIOImageReadSession::skipBytes(IIOImageReadSession *this, uint64_t a2)
{
  v3 = MEMORY[0x1EEE9AC00](this, a2);
  v12 = *MEMORY[0x1E69E9840];
  result = *(v3 + 4);
  if (result)
  {
    v5 = v2;
    Size = IIOImageRead::getSize(result);
    if (Size == -1)
    {
      bzero(v11, 0x2000uLL);
      if (v5)
      {
        v8 = v5;
        do
        {
          if (v8 >= 0x400)
          {
            v9 = 1024;
          }

          else
          {
            v9 = v8;
          }

          Bytes = IIOImageReadSession::getBytes(v3, v11, v9);
          if (!Bytes)
          {
            break;
          }

          v8 -= Bytes;
        }

        while (v8);
      }

      else
      {
        v8 = 0;
      }

      return (v5 - v8);
    }

    else
    {
      v7 = *(v3 + 5);
      if (Size - v7 >= v5)
      {
        result = v5;
      }

      else
      {
        result = (Size - v7);
      }

      *(v3 + 5) = result + v7;
    }
  }

  return result;
}

void ReadExifVers(uint64_t a1, uint64_t a2, const __CFString *a3, const __CFString *a4, const __CFString *a5, const void *a6, uint64_t a7)
{
  v16 = 0;
  if (*(a7 + 4) == 4)
  {
    *cStr = *(a7 + 8);
    v12 = CFStringCreateWithCString(*MEMORY[0x1E695E480], cStr, 0x600u);
    if (v12)
    {
      v13 = v12;
      v14 = CGImageMetadataTagCreate(a3, a4, a5, kCGImageMetadataTypeString, v12);
      CFRelease(v13);
      if (v14)
      {
        CGImageMetadataAddTagWithKey(a1, a6, v14);
        CFRelease(v14);
      }
    }
  }
}

IIO_Reader *CGImageSourceGetTypeWithData(const __CFData *a1, __CFString *a2, _BYTE *a3)
{
  IIOInitDebugFlags();
  v6 = (gIIODebugFlags >> 14);
  if (gIIODebugFlags >> 14)
  {
    ImageIODebugOptions(v6, "S", "CGImageSourceGetTypeWithData", 0, 0, -1, 0);
  }

  v9 = 0uLL;
  ReaderHandler = IIO_ReaderHandler::GetReaderHandler(v6);
  v10 = 0;
  return IIO_ReaderHandler::typeForData(ReaderHandler, a1, a2, &v9, a3);
}

void IIOString::IIOString(IIOString *this, const __CFDictionary *a2, const __CFString *a3, ...)
{
  va_start(va, a3);
  *this = &unk_1EF4D41F0;
  *(this + 1) = 0;
  *(this + 2) = CFStringCreateWithFormatAndArguments(*MEMORY[0x1E695E480], a2, a3, va);
}

uint64_t GetMajorVersionFromPropertyValue(const __CFString *cf, SInt32 *a2)
{
  result = 0;
  if (cf && a2)
  {
    v5 = CFGetTypeID(cf);
    if (v5 == CFStringGetTypeID() && CFStringGetLength(cf) == 4)
    {
      v8.location = 0;
      v8.length = 2;
      v6 = CFStringCreateWithSubstring(*MEMORY[0x1E695E480], cf, v8);
      if (v6)
      {
        v7 = v6;
        *a2 = CFStringGetIntValue(v6);
        CFRelease(v7);
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t GetMinorVersionFromPropertyValue(const __CFString *a1, SInt32 *a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    v5 = CFGetTypeID(a1);
    if (v5 == CFStringGetTypeID() && CFStringGetLength(a1) == 4)
    {
      v2 = 1;
      v9.location = 2;
      v9.length = 1;
      v6 = CFStringCreateWithSubstring(*MEMORY[0x1E695E480], a1, v9);
      if (v6)
      {
        v7 = v6;
        *a2 = CFStringGetIntValue(v6);
        CFRelease(v7);
        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

uint64_t GetRevisionVersionFromPropertyValue(const __CFString *a1, SInt32 *a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    v5 = CFGetTypeID(a1);
    if (v5 == CFStringGetTypeID() && CFStringGetLength(a1) == 4)
    {
      v2 = 1;
      v9.location = 3;
      v9.length = 1;
      v6 = CFStringCreateWithSubstring(*MEMORY[0x1E695E480], a1, v9);
      if (v6)
      {
        v7 = v6;
        *a2 = CFStringGetIntValue(v6);
        CFRelease(v7);
        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

uint64_t CGImageCreatePixelBufferAttributesForHDRTarget(int a1, void *a2, void *a3, void *a4)
{
  IIOInitDebugFlags();
  IIO_LoadJPEGSymbols();

  return IIOCreatePixelBufferAttributesForHDRType(a1, a2, a3, a4);
}

uint64_t IIOCreatePixelBufferAttributesForHDRType(int a1, void *a2, void *a3, void *a4)
{
  v8 = objc_autoreleasePoolPush();
  v9 = a2;
  v10 = a3;
  v11 = [HDRImageConverter imageConverterWithOptions:v10];
  context = v8;
  if ([v11 canProcessPixelBufferWithAttributes:v9])
  {
    v12 = [v9 objectForKeyedSubscript:*gIIO_kCVPixelBufferWidthKey];
    v93 = [v12 unsignedLongValue];

    v13 = [v9 objectForKeyedSubscript:*gIIO_kCVPixelBufferHeightKey];
    v92 = [v13 unsignedLongValue];

    v14 = [v10 objectForKeyedSubscript:@"kCGTargetPixelFormat"];
    v15 = [v14 unsignedIntValue];

    v16 = [v9 objectForKeyedSubscript:*gIIO_kCVPixelBufferPixelFormatTypeKey];
    v17 = [v16 unsignedIntValue];

    if (v15)
    {
      v18 = v15;
    }

    else
    {
      v18 = v17;
    }

    v91 = gFunc_CVPixelFormatDescriptionCreateWithPixelFormatType(0, v18);
    v19 = [v91 objectForKeyedSubscript:*gIIO_kCVPixelFormatContainsYCbCr];
    v89 = [v19 BOOLValue];

    v20 = [v9 objectForKeyedSubscript:*gIIO_kCVImageBufferCGColorSpaceKey];

    if (v15)
    {
      if ([v11 isPixelFormatSupported:v15])
      {
        v21 = v15;
      }

      else
      {
        v21 = 0;
      }

      v95 = v21;
    }

    else
    {
      v95 = 0;
    }

    v23 = [v10 objectForKeyedSubscript:@"kCGTargetYCCMatrix"];
    if (v23)
    {
      v94 = v23;
      if ([v11 isYCCMatrixSupported:?])
      {
        goto LABEL_16;
      }
    }

    v94 = 0;
LABEL_16:
    v90 = a4;
    name = [v10 objectForKeyedSubscript:@"kCGTargetColorSpace"];
    v24 = [v10 objectForKeyedSubscript:?];

    if (name)
    {
      v25 = CGColorSpaceCreateWithName(name);
      if (v25)
      {
        goto LABEL_23;
      }

      LogError("IIOCreatePixelBufferAttributesForHDRType", 929, "Unrecognized color space name: %s", [(__CFString *)name UTF8String]);
    }

    if (!v24)
    {
      v27 = 0;
      v25 = 0;
      v28 = 1;
      goto LABEL_25;
    }

    if ((gIIODebugFlags & 0x300000) != 0)
    {
      v26 = CFCopyDescription(v24);
      ImageIOLog("☀️ Using provided alternate space: %s\n", [(__CFString *)v26 UTF8String]);
    }

    v25 = v24;
LABEL_23:
    v27 = CGColorSpaceUsesExtendedRange(v25);
    LODWORD(v24) = CGColorSpaceUsesITUR_2100TF(v25);
    v28 = 0;
LABEL_25:
    v99 = [v9 objectForKeyedSubscript:@"IOSurfaceContentHeadroom"];
    v96 = [v10 objectForKeyedSubscript:@"kCGTargetHeadroom"];
    if (v99 && v96)
    {
      [v99 floatValue];
      v30 = v29;
      [v96 floatValue];
      v32 = fminf(v30, v31);
    }

    else if (v99)
    {
      [v99 floatValue];
      v32 = v33;
    }

    else
    {
      v32 = 0.0;
    }

    if (a1 != 3)
    {
      if (a1 != 2)
      {
        v34 = v99;
        if (a1 != 1)
        {
          LogError("IIOCreatePixelBufferAttributesForHDRType", 1071, "Unsupported HDR type: %d", a1);
          v22 = 4294967246;
LABEL_134:

          goto LABEL_135;
        }

        if ((v28 | v27 | v24))
        {
          v35 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F0B8]);
        }

        else
        {
          v35 = CGColorSpaceRetain(v25);
        }

        v37 = v35;
        if (v89)
        {
          v46 = 875704422;
        }

        else
        {
          v46 = 1111970369;
        }

        v47 = v95;
        if (!v95)
        {
          v47 = v46;
        }

        v95 = v47;
        if (v89)
        {
          v48 = v94;
          if (!v94)
          {
            v48 = *gIIO_kCVImageBufferYCbCrMatrix_ITU_R_601_4;
          }
        }

        else
        {
          v48 = 0;
        }

        v49 = v48;
        v50 = 0;
        v32 = 1.0;
LABEL_128:
        v79 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:5];
        v80 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v93];
        [v79 setObject:v80 forKeyedSubscript:*gIIO_kCVPixelBufferWidthKey];

        v81 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v92];
        [v79 setObject:v81 forKeyedSubscript:*gIIO_kCVPixelBufferHeightKey];

        v82 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v95];
        [v79 setObject:v82 forKeyedSubscript:*gIIO_kCVPixelBufferPixelFormatTypeKey];

        [v79 setObject:v37 forKeyedSubscript:*gIIO_kCVImageBufferCGColorSpaceKey];
        [v79 setObject:v49 forKeyedSubscript:*gIIO_kCVImageBufferYCbCrMatrixKey];
        [v79 setObject:v50 forKeyedSubscript:@"kCGFlexRangeAlternateColorSpace"];
        if (v32 <= 0.0)
        {
          v84 = 0;
        }

        else
        {
          *&v83 = v32;
          v84 = [MEMORY[0x1E696AD98] numberWithFloat:v83];
        }

        [v79 setObject:v84 forKeyedSubscript:@"IOSurfaceContentHeadroom"];
        if (v32 > 0.0)
        {
        }

        *v90 = v79;

        v22 = 0;
        v34 = v99;
        goto LABEL_134;
      }

      if (!(v28 & 1 | !v27))
      {
        v37 = CGColorSpaceRetain(v25);
        v43 = v95;
        v44 = v95 != 0;
        if (!v95)
        {
          v43 = 1380411457;
        }

        v95 = v43;
        if ((v44 & v89) == 1)
        {
          v45 = v94;
          if (!v94)
          {
            v45 = *gIIO_kCVImageBufferYCbCrMatrix_ITU_R_601_4;
          }
        }

        else
        {
          v45 = 0;
        }

        v49 = v45;
        v50 = 0;
        goto LABEL_128;
      }

      v100 = 0.0;
      if (v28 & 1 | ((v24 & 1) == 0))
      {
        v36 = IIODefaultHDRColorSpace(v20);
        v37 = CGColorSpaceCreateWithName(v36);
      }

      else
      {
        v37 = CGColorSpaceRetain(v25);
        if (CGColorSpaceContainsFlexGTCInfo())
        {
          v52 = CGColorSpaceCopyFlexGTCInfo();
          if ([HDRImage getGainMapHeadroom:&v100 fromFlexGTCInfo:v52]&& v32 < (v100 + -0.01))
          {
            if ((gIIODebugFlags & 0x300000) != 0)
            {
              ImageIOLog("☀️ Requested headroom (%0.1f) is less than FlexGTC headroom (%0.1f), dropping FlexGTC info\n", v32, v100);
            }

            CGColorSpaceRelease(v37);
            v37 = CGColorSpaceCopyBaseColorSpace();
            v100 = 0.0;
          }
        }
      }

      if ((gIIODebugFlags & 0x300000) != 0)
      {
        v53 = CFCopyDescription(v37);
        ImageIOLog("☀️ HDR output colorspace: %s\n", [(__CFString *)v53 UTF8String]);
      }

      v54 = v100;
      if (v100 == 0.0)
      {
        if (CGColorSpaceIsPQBased(v37))
        {
          v100 = 49.261;
          v54 = 49.261;
          goto LABEL_107;
        }

        v54 = v100;
      }

      if (v54 == 0.0)
      {
        if (CGColorSpaceIsHLGBased(v37))
        {
          v100 = 4.9261;
          v54 = 4.9261;
        }

        else
        {
          v54 = v100;
        }
      }

LABEL_107:
      v67 = fminf(v32, v54);
      if ((gIIODebugFlags & 0x300000) != 0)
      {
        ImageIOLog("☀️ HDR input headroom: %0.1f, destination: %0.1f, output headroom: %0.1f\n", v32, v54, v67);
      }

      if (v95)
      {
        if (!v89)
        {
          v49 = 0;
LABEL_127:
          v50 = 0;
          v32 = v67;
          goto LABEL_128;
        }
      }

      else
      {
        v68 = gFunc_CVPixelFormatDescriptionCreateWithPixelFormatType(0, v17);
        v69 = [v68 objectForKeyedSubscript:*gIIO_kCVPixelFormatContainsYCbCr];
        v70 = [v69 BOOLValue];

        if (v70)
        {
          v71 = [v68 objectForKeyedSubscript:*gIIO_kCVPixelFormatPlanes];
          v95 = 2019963440;
          if ([v71 count] == 2)
          {
            v72 = [v71 objectAtIndexedSubscript:1];
            v73 = [v72 objectForKeyedSubscript:*gIIO_kCVPixelFormatHorizontalSubsampling];
            v74 = [v73 unsignedShortValue];

            v75 = [v72 objectForKeyedSubscript:*gIIO_kCVPixelFormatVerticalSubsampling];
            v76 = [v75 unsignedShortValue];

            if (v76 == 2)
            {
              v77 = 2019963440;
            }

            else
            {
              v77 = 2019963442;
            }

            if (v74 != 2)
            {
              v77 = 2019963956;
            }

            v95 = v77;
          }
        }

        else
        {
          v95 = 1815162994;
        }
      }

      if (v94)
      {
        v78 = v94;
      }

      else
      {
        v78 = IIODefaultHDRYCCMatrix(v37);
      }

      v49 = v78;
      goto LABEL_127;
    }

    v38 = [v10 objectForKeyedSubscript:@"kCGFlexRangeOptions"];

    if (!v38)
    {
      v37 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F128]);
      v49 = 0;
      v50 = 0;
      v95 = 1278226488;
      v51 = 2;
LABEL_101:
      v32 = 0.0;
      v92 /= v51;
      v93 /= v51;
      goto LABEL_128;
    }

    v87 = [v10 objectForKeyedSubscript:@"kCGFlexRangeOptions"];
    v39 = [v87 objectForKeyedSubscript:@"kCGFlexRangeSubsample"];
    v40 = v39;
    if (v39)
    {
      v41 = [v39 BOOLValue];
      v42 = 1;
      if (v41)
      {
        v42 = 2;
      }
    }

    else
    {
      v42 = 2;
    }

    v86 = v42;
    v88 = [v87 objectForKeyedSubscript:@"kCGFlexRangeAlternateColorSpace"];
    if (!v88 || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v56 = v88, (isKindOfClass & 1) == 0))
    {
      if (((v24 | v27) & 1) == 0)
      {
        v58 = IIODefaultHDRColorSpace(v20);
        goto LABEL_87;
      }

      if (v20 && (v101 = 0, CGColorSpaceGetCICPInfo()) && v101 == 12)
      {
        v57 = MEMORY[0x1E695F0B8];
      }

      else
      {
        v57 = MEMORY[0x1E695F1C0];
      }

      v56 = *v57;
    }

    v58 = v56;
LABEL_87:
    v50 = v58;
    v59 = v40;
    v60 = v95;
    v61 = v95 != 0;
    if (!v95)
    {
      v60 = 1278226488;
    }

    v95 = v60;
    if ((v61 & v89) == 1)
    {
      v62 = v94;
      if (!v94)
      {
        v63 = CGColorSpaceCreateWithName(v58);
        if (v28)
        {
          v64 = v20;
        }

        else
        {
          v64 = v25;
        }

        v65 = [v87 objectForKeyedSubscript:@"kCGFlexRangeUseAlternateColor"];
        v66 = v65;
        if (v65 && ([v65 BOOLValue] & (v63 != 0)) != 0)
        {
          v64 = v63;
        }

        v62 = IIODefaultHDRYCCMatrix(v64);
        CGColorSpaceRelease(v63);
      }

      v49 = v62;
      v94 = v49;
    }

    else
    {
      v49 = 0;
    }

    v37 = 0;
    v51 = v86;
    goto LABEL_101;
  }

  v22 = 4294967246;
LABEL_135:

  objc_autoreleasePoolPop(context);
  return v22;
}

uint64_t CGImageConvertHDRPixelBufferToSDR(uint64_t a1, uint64_t a2, void *a3)
{
  IIOInitDebugFlags();
  IIO_LoadJPEGSymbols();

  return IIOConvertHDRData(a1, a2, a3);
}

uint64_t IIOConvertHDRData(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = objc_autoreleasePoolPush();
  v7 = a3;
  v8 = [v7 objectForKeyedSubscript:@"kCGImageAuxiliaryDataInfoMetadata"];

  v9 = [[HDRImage alloc] initWithImageBuffer:a1 gainMapBuffer:0 gainMapMetadata:v8 imageProperties:v7];
  v10 = [[HDRImage alloc] initWithImageBuffer:a2];
  v11 = [HDRImageConverter imageConverterWithOptions:v7];
  if ([v11 convertImage:v9 toImage:v10])
  {
    v12 = 0;
  }

  else
  {
    v12 = 4294967246;
  }

  objc_autoreleasePoolPop(v6);
  return v12;
}

uint64_t CGImageApplyHDRGainMap(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  IIOInitDebugFlags();
  IIO_LoadJPEGSymbols();
  IIOApplyHDRGainMap(a1, a2, a3, a4);
  return 0;
}

uint64_t IIOApplyHDRGainMap(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = objc_autoreleasePoolPush();
  kdebug_trace();
  v9 = a4;
  v10 = [v9 objectForKeyedSubscript:@"kCGImageAuxiliaryDataInfoMetadata"];

  v11 = [[HDRImage alloc] initWithImageBuffer:a1 gainMapBuffer:a2 gainMapMetadata:v10 imageProperties:v9];
  if ([(HDRImage *)v11 type]== 5)
  {
    v12 = [v9 objectForKeyedSubscript:@"kCGFlexRangeAlternateColorSpace"];

    if (v12)
    {
      v13 = CFGetTypeID(v12);
      if (v13 == CGColorSpaceGetTypeID())
      {
        v14 = [(HDRImage *)v11 flexRangeParams];
        [v14 setAlternateColorSpace:v12];
      }

      else
      {
        LogError("IIOApplyHDRGainMap", 317, "kCGFlexRangeAlternateColorSpace option must be a CGColorSpace object");
      }
    }

    else
    {
      LogError("IIOApplyHDRGainMap", 315, "kCGFlexRangeAlternateColorSpace option must be set for FlexRange");
    }
  }

  v15 = [v9 objectForKeyedSubscript:@"Orientation"];

  if (v15)
  {
    v16 = [v9 objectForKeyedSubscript:@"Orientation"];
    -[HDRImage setGainMapOrientation:](v11, "setGainMapOrientation:", [v16 intValue]);
  }

  v17 = [[HDRImage alloc] initWithImageBuffer:a3];
  v18 = [v9 objectForKeyedSubscript:@"kCGTargetHeadroom"];

  if (v18)
  {
    v19 = [v9 objectForKeyedSubscript:@"kCGTargetHeadroom"];
    [v19 floatValue];
    v21 = v20;
  }

  else
  {
    v21 = 16.0;
  }

  [(HDRImage *)v11 headroom];
  v23 = v22;
  [(HDRImage *)v17 headroom];
  if (v23 >= v21)
  {
    v25 = v21;
  }

  else
  {
    v25 = v23;
  }

  if (v25 >= *&v24)
  {
    v26 = *&v24;
  }

  else
  {
    v26 = v25;
  }

  if ((gIIODebugFlags & 0x300000) != 0)
  {
    [(HDRImage *)v11 headroom];
    v28 = v27;
    [(HDRImage *)v17 headroom];
    ImageIOLog("☀️  gain map headroom: %0.1f requested: %0.1f capacity: %0.1f -> %0.1f\n", v28, v21, v29, v26);
  }

  *&v24 = v26;
  [(HDRImage *)v17 setHeadroom:v24];
  v30 = [HDRImageConverter imageConverterWithOptions:v9];
  [v30 convertImage:v11 toImage:v17];
  v31 = v9;
  v32 = v31;
  if (v31)
  {
    v33 = [v31 objectForKeyedSubscript:@"kCGGenerateFlexGTC"];
    v34 = [v33 BOOLValue];

    v35 = [v32 objectForKeyedSubscript:@"kCGImageSourceGenerateImageSpecificLumaScaling"];
    v36 = [v35 BOOLValue];

    if ((v34 | v36))
    {
      if ((gIIODebugFlags & 0x300000) != 0)
      {
        ImageIOLog("☀️  generating FlexGTC info as requested...\n");
      }

      [(HDRImage *)v17 colorSpace];
      if (CGColorSpaceContainsFlexGTCInfo())
      {
        [(HDRImage *)v17 colorSpace];
        v37 = CGColorSpaceCopyFlexGTCInfo();
        v38 = v37;
        if ((gIIODebugFlags & 0x300000) != 0)
        {
          v39 = [v37 description];
          ImageIOLog("☀️  destination already has FlexGTC info: %s\n", [v39 UTF8String]);
        }

        v52 = 0.0;
        if ([HDRImage getGainMapHeadroom:&v52 fromFlexGTCInfo:v38]&& vabds_f32(v52, v26) > 0.01)
        {
          LogError("IIOApplyHDRGainMap", 351, "FlexGTC headroom (%0.01f) doesn't match target headroom (%0.01f)\n", v52, v26);
        }
      }

      else
      {
        v40 = [v30 generateToneMappingCurveForImage:v11 targetHeadroom:v26];
        v41 = v40;
        if ((gIIODebugFlags & 0x300000) != 0)
        {
          v42 = [v40 description];
          ImageIOLog("☀️  generated FlexGTC info: %s\n", [v42 UTF8String]);
        }

        if (v41)
        {
          CopyWithFlexGTCInfo = IIO_ColorSpaceCreateCopyWithFlexGTCInfo([(HDRImage *)v17 colorSpace], v41);
          v44 = CopyWithFlexGTCInfo;
          if ((gIIODebugFlags & 0x300000) != 0)
          {
            v45 = CFCopyDescription(CopyWithFlexGTCInfo);
            ImageIOLog("☀️  generated FlexGTC space: %s\n", [(__CFString *)v45 UTF8String]);
          }

          if (v44)
          {
            gFunc_CVImageBufferSetColorSpace(a3, v44);
            CGColorSpaceRelease(v44);
          }

          else
          {
            LogError("IIOApplyHDRGainMap", 364, "*** ERROR: Failed to generate FlexGTC color space\n");
          }
        }

        else
        {
          LogError("IIOApplyHDRGainMap", 368, "*** ERROR: Failed to generate FlexGTC info\n");
        }
      }
    }

    v46 = [v32 objectForKeyedSubscript:@"kCGComputeHDRStats"];
    v47 = [v46 BOOLValue];

    if (v47)
    {
      if ((gIIODebugFlags & 0x300000) != 0)
      {
        ImageIOLog("☀️  computing HDRStats as requested...\n");
      }

      v48 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F150]);
      v49 = [v30 computeHDRStatisticsForImage:v17 targetSpace:v48];
      CGColorSpaceRelease(v48);
      if ((gIIODebugFlags & 0x300000) != 0)
      {
        v50 = [v49 description];
        ImageIOLog("☀️ Stats data: %s\n", [v50 UTF8String]);
      }

      IIOHDRPixelBufferSetAttachmentsFromStatistics([(HDRImage *)v17 imageBuffer], v49);
    }
  }

  kdebug_trace();

  objc_autoreleasePoolPop(v8);
  return 0;
}

uint64_t CGImageCreateHDRGainMap(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  IIOInitDebugFlags();
  IIO_LoadJPEGSymbols();

  return IIOConvertHDRGainMap(a1, 0, a2, a3, 0, a4);
}

uint64_t CGImageConvertHDRGainMap(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, CGImageMetadata **a5, void *a6)
{
  IIOInitDebugFlags();
  IIO_LoadCMPhotoSymbols();

  return IIOConvertHDRGainMap(a1, a2, a3, a4, a5, a6);
}

uint64_t IIOConvertHDRGainMap(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, CGImageMetadata **a5, void *a6)
{
  v12 = objc_autoreleasePoolPush();
  kdebug_trace();
  v13 = a6;
  v14 = [v13 objectForKeyedSubscript:@"kCGImageAuxiliaryDataInfoMetadata"];

  v15 = [[HDRImage alloc] initWithImageBuffer:a1 gainMapBuffer:a2 gainMapMetadata:v14 imageProperties:v13];
  if ([(HDRImage *)v15 type]== 5)
  {
    v16 = [v13 objectForKeyedSubscript:@"kCGFlexRangeAlternateColorSpace"];

    if (v16)
    {
      v17 = CFGetTypeID(v16);
      if (v17 == CGColorSpaceGetTypeID())
      {
        v18 = [(HDRImage *)v15 flexRangeParams];
        [v18 setAlternateColorSpace:v16];
      }

      else
      {
        LogError("IIOConvertHDRGainMap", 423, "kCGFlexRangeAlternateColorSpace option must be a CGColorSpace object");
      }
    }

    else
    {
      LogError("IIOConvertHDRGainMap", 421, "kCGFlexRangeAlternateColorSpace option must be set for FlexRange");
    }
  }

  v19 = [v13 objectForKeyedSubscript:@"Orientation"];

  if (v19)
  {
    v20 = [v13 objectForKeyedSubscript:@"Orientation"];
    -[HDRImage setGainMapOrientation:](v15, "setGainMapOrientation:", [v20 intValue]);
  }

  v21 = [v13 objectForKeyedSubscript:@"kCGTargetHeadroom"];

  if (v21)
  {
    v22 = [v13 objectForKeyedSubscript:@"kCGTargetHeadroom"];
    [v22 floatValue];
    v24 = v23;
  }

  else
  {
    v24 = 8.0;
  }

  [(HDRImage *)v15 headroom];
  v26 = v25;
  if (v24 <= v26)
  {
    v27 = v24;
  }

  else
  {
    v27 = v26;
  }

  if ((gIIODebugFlags & 0x300000) != 0)
  {
    [(HDRImage *)v15 headroom];
    ImageIOLog("☀️  gain map headroom: %0.1f requested: %0.1f -> %0.1f\n", v28, v24, v27);
  }

  v29 = [v13 objectForKeyedSubscript:@"kCGFlexRangeOptions"];
  if (v29 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    *&v30 = v27;
    v31 = [HDRImage flexRangeParametersWithHeadroom:v29 options:v30];
  }

  else
  {
    v31 = 0;
  }

  v32 = [[HDRImage alloc] initWithImageBuffer:a3 gainMapBuffer:a4 flexRangeParameters:v31];
  v33 = v27;
  *&v34 = v33;
  [(HDRImage *)v32 setHeadroom:v34];
  v35 = [HDRImageConverter imageConverterWithOptions:v13];
  if ([v35 convertImage:v15 toImage:v32] && (!v31 ? (*&v36 = v33, v37 = +[HDRImage createGainMapMetadataWithHeadroom:](HDRImage, "createGainMapMetadataWithHeadroom:", v36)) : (v37 = objc_msgSend(v31, "createFlexRangeMetadata")), v37))
  {
    v38 = 0;
    if (a5)
    {
      *a5 = v37;
    }
  }

  else
  {
    v38 = 4294967246;
  }

  kdebug_trace();

  objc_autoreleasePoolPop(v12);
  return v38;
}

uint64_t CGImageComputeHDRGainMap(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, CGImageMetadata **a5, void *a6)
{
  IIOInitDebugFlags();
  IIO_LoadCMPhotoSymbols();

  return IIOComputeHDRGainMap(a1, a2, a3, a4, a5, a6);
}

uint64_t IIOComputeHDRGainMap(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, CGImageMetadata **a5, void *a6)
{
  v12 = objc_autoreleasePoolPush();
  kdebug_trace();
  v13 = a6;
  v14 = [[HDRImage alloc] initWithImageBuffer:a1 alternateBuffer:a2];
  [(HDRImage *)v14 headroom];
  v16 = v15;
  [(HDRImage *)v14 alternateHeadroom];
  v18 = v17;
  v19 = [v13 objectForKeyedSubscript:@"kCGTargetHeadroom"];
  v20 = fmaxf(v16, v18);

  if (v19)
  {
    v21 = [v13 objectForKeyedSubscript:@"kCGTargetHeadroom"];
    [v21 floatValue];
    v23 = v22;

    v20 = fminf(v20, v23);
    v24 = v23;
  }

  else
  {
    v24 = 0.0;
  }

  if ((gIIODebugFlags & 0x300000) != 0)
  {
    [(HDRImage *)v14 headroom];
    v26 = v25;
    [(HDRImage *)v14 alternateHeadroom];
    ImageIOLog("☀️ base headroom: %0.1f alt headroom: %0.1f requested: %0.1f -> %0.1f\n", v26, v27, v24, v20);
  }

  v28 = [v13 objectForKeyedSubscript:@"kCGFlexRangeOptions"];
  if (v28 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    *&v29 = v20;
    v30 = [HDRImage flexRangeParametersWithHeadroom:v28 options:v29];
  }

  else
  {
    v30 = 0;
  }

  v31 = [HDRImage alloc];
  if (a4)
  {
    v32 = a4;
  }

  else
  {
    v32 = a1;
  }

  v33 = [(HDRImage *)v31 initWithImageBuffer:v32 gainMapBuffer:a3 flexRangeParameters:v30];
  *&v34 = v20;
  [(HDRImage *)v33 setHeadroom:v34];
  if (!a4)
  {
    [(HDRImage *)v33 setIsImageReadOnly:1];
  }

  v35 = [HDRImageConverter imageConverterWithOptions:v13];
  if ([v35 convertImage:v14 toImage:v33] && (!v30 ? (*&v36 = v20, v37 = +[HDRImage createGainMapMetadataWithHeadroom:](HDRImage, "createGainMapMetadataWithHeadroom:", v36)) : (v37 = objc_msgSend(v30, "createFlexRangeMetadata")), v37))
  {
    v38 = 0;
    if (a5)
    {
      *a5 = v37;
    }
  }

  else
  {
    v38 = 4294967246;
  }

  kdebug_trace();

  objc_autoreleasePoolPop(v12);
  return v38;
}

uint64_t CGImageCreateFlexGTCInfo(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  IIOInitDebugFlags();
  IIO_LoadJPEGSymbols();

  return IIOCreateHDRFlexGTCInfo(a1, a2, a3, a4);
}

uint64_t IIOCreateHDRFlexGTCInfo(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = objc_autoreleasePoolPush();
  kdebug_trace();
  v9 = a4;
  v10 = [v9 objectForKeyedSubscript:@"kCGImageAuxiliaryDataInfoMetadata"];

  v11 = [[HDRImage alloc] initWithImageBuffer:a1 gainMapBuffer:a2 gainMapMetadata:v10 imageProperties:v9];
  if ([(HDRImage *)v11 type]== 5)
  {
    v12 = [v9 objectForKeyedSubscript:@"kCGFlexRangeAlternateColorSpace"];

    if (v12)
    {
      v13 = CFGetTypeID(v12);
      if (v13 == CGColorSpaceGetTypeID())
      {
        v14 = [(HDRImage *)v11 flexRangeParams];
        [v14 setAlternateColorSpace:v12];
      }

      else
      {
        LogError("IIOCreateHDRFlexGTCInfo", 564, "kCGFlexRangeAlternateColorSpace option must be a CGColorSpace object");
      }
    }

    else
    {
      LogError("IIOCreateHDRFlexGTCInfo", 562, "kCGFlexRangeAlternateColorSpace option must be set for FlexRange");
    }
  }

  v15 = [v9 objectForKeyedSubscript:@"Orientation"];

  if (v15)
  {
    v16 = [v9 objectForKeyedSubscript:@"Orientation"];
    -[HDRImage setGainMapOrientation:](v11, "setGainMapOrientation:", [v16 intValue]);
  }

  v17 = [v9 objectForKeyedSubscript:@"kCGTargetHeadroom"];

  if (v17)
  {
    v18 = [v9 objectForKeyedSubscript:@"kCGTargetHeadroom"];
    [v18 floatValue];
    v20 = v19;
  }

  else
  {
    v20 = 8.0;
  }

  [(HDRImage *)v11 headroom];
  v22 = v21;
  if (v20 <= v22)
  {
    v23 = v20;
  }

  else
  {
    v23 = v22;
  }

  if ((gIIODebugFlags & 0x300000) != 0)
  {
    [(HDRImage *)v11 headroom];
    ImageIOLog("☀️ FlexGTC gain map headroom: %0.1f requested: %0.1f -> %0.1f\n", v24, v20, v23);
  }

  v25 = [HDRImageConverter imageConverterWithOptions:v9];
  v26 = [v25 generateToneMappingCurveForImage:v11 targetHeadroom:v23];
  v27 = v26;
  if ((gIIODebugFlags & 0x300000) != 0)
  {
    v28 = [v26 description];
    ImageIOLog("☀️ FlexGTC curve data: %s\n", [v28 UTF8String]);
  }

  if (a3 && v27)
  {
    *a3 = v27;
  }

  v29 = [v27 objectForKeyedSubscript:@"com.apple.ColorSync.MonoGainMapParams"];
  v30 = [v29 objectForKeyedSubscript:@"com.apple.ColorSync.GainMapBaselineHeadroom"];
  [v30 floatValue];

  v31 = [v9 objectForKeyedSubscript:@"{MakerApple}"];
  v32 = [v31 objectForKeyedSubscript:@"33"];
  [v32 floatValue];

  v33 = [v9 objectForKeyedSubscript:@"{MakerApple}"];
  v34 = [v33 objectForKeyedSubscript:@"48"];
  [v34 floatValue];

  kdebug_trace();
  if (v27)
  {
    v35 = 0;
  }

  else
  {
    v35 = 4294967246;
  }

  objc_autoreleasePoolPop(v8);
  return v35;
}

uint64_t CGImageCreateFlexRangeMetadata(uint64_t a1, uint64_t *a2)
{
  IIOInitDebugFlags();
  IIO_LoadCMPhotoSymbols();

  return IIOCreateFlexRangeMetadataFromDictionary(a1, a2);
}

uint64_t IIOCreateFlexRangeMetadataFromDictionary(uint64_t a1, uint64_t *a2)
{
  v3 = [HDRFlexRangeParameters flexRangeParametersFromDictionary:a1];
  v4 = v3;
  if (v3 && (v5 = [v3 createFlexRangeMetadata]) != 0)
  {
    v6 = 0;
    *a2 = v5;
  }

  else
  {
    v6 = 4294967246;
  }

  return v6;
}

uint64_t CGImageCreateFlexRangeDictionary(uint64_t a1, void *a2)
{
  IIOInitDebugFlags();
  IIO_LoadCMPhotoSymbols();

  return IIOCreateFlexRangeDictionaryFromMetadata(a1, a2);
}

uint64_t IIOCreateFlexRangeDictionaryFromMetadata(uint64_t a1, void *a2)
{
  v3 = [HDRFlexRangeParameters flexRangeParametersFromMetadata:a1];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 createFlexRangeDictionary];
    v6 = v5;
    if (v5)
    {
      v7 = 0;
      *a2 = v5;
    }

    else
    {
      v7 = 4294967246;
    }
  }

  else
  {
    v7 = 4294967246;
  }

  return v7;
}

double CGImageGetHDRGainMapHeadroom(uint64_t a1, uint64_t a2)
{
  IIOInitDebugFlags();
  IIO_LoadCMPhotoSymbols();
  return IIOHDRGainMapMetadataGetHeadroom(a1, a2);
}

float IIOHDRGainMapMetadataGetHeadroom(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  if (a1)
  {
    v5 = [HDRFlexRangeParameters flexRangeParametersFromMetadata:a1];
    v6 = v5;
    if (v5)
    {
      [v5 baseHeadroom];
      v8 = v7;
      [v6 alternateHeadroom];
      v10 = exp2(fmaxf(v8, v9));

      goto LABEL_9;
    }

    v13 = 0.0;
    if ([HDRImage getGainMapHeadroom:&v13 fromMetadata:a1])
    {
      v10 = v13;
      goto LABEL_9;
    }
  }

  v12 = 0.0;
  if ([HDRImage getGainMapHeadroom:&v12 fromProperties:a2])
  {
    v10 = v12;
  }

  else
  {
    v10 = 1.0;
  }

LABEL_9:
  objc_autoreleasePoolPop(v4);
  return v10;
}

double CGImageGetHDRPixelBufferHeadroom(uint64_t a1)
{
  IIOInitDebugFlags();
  IIO_LoadHEIFSymbols();
  return IIOHDRPixelBufferGetHeadroom(a1);
}

float IIOHDRPixelBufferGetHeadroom(uint64_t a1)
{
  if (a1)
  {
    v2 = objc_autoreleasePoolPush();
    v3 = gFunc_CVBufferCopyAttachment(a1, *gIIO_kCVImageBufferTransferFunctionKey, 0);
    v4 = v3;
    if (v3)
    {
      if (([v3 isEqualToString:*gIIO_kCVImageBufferTransferFunction_ITU_R_2100_HLG] & 1) == 0)
      {
        v5 = 1.0;
        if (![v4 isEqualToString:*gIIO_kCVImageBufferTransferFunction_SMPTE_ST_2084_PQ])
        {
LABEL_38:

          objc_autoreleasePoolPop(v2);
          return v5;
        }
      }
    }

    else
    {
      v6 = gFunc_CVBufferCopyAttachment(a1, *gIIO_kCVImageBufferCGColorSpaceKey, 0);
      v7 = v6;
      if (v6)
      {
        v8 = CGColorSpaceUsesITUR_2100TF(v6);
        if (CGColorSpaceUsesExtendedRange(v7))
        {
          PixelFormatType = gFunc_CVImageBufferGetPixelFormatType(a1);
          IsFloat = IIO_IOSurfaceFormatIsFloat(PixelFormatType);
        }

        else
        {
          IsFloat = 0;
        }

        CGColorSpaceRelease(v7);
      }

      else
      {
        IsFloat = 0;
        v8 = 0;
      }

      if (!v8)
      {
        v5 = 1.0;
        if ((IsFloat & 1) == 0)
        {
          goto LABEL_38;
        }
      }
    }

    v11 = gFunc_CVBufferCopyAttachment(a1, @"IOSurfaceContentHeadroom", 0);
    if (v11 || (IOSurface = gFunc_CVPixelBufferGetIOSurface(a1)) != 0 && (v11 = IOSurfaceCopyValue(IOSurface, @"IOSurfaceContentHeadroom")) != 0)
    {
      [v11 floatValue];
      v5 = v12;
    }

    else
    {
      v14 = gFunc_CVBufferCopyAttachment(a1, *gIIO_kCVImageBufferMasteringDisplayColorVolumeKey, 0);
      v15 = v14;
      if (v14 && [v14 length] == 24)
      {
        v16 = *([v15 bytes] + 16);
      }

      else
      {
        v16 = 0;
      }

      v17 = gFunc_CVBufferCopyAttachment(a1, *gIIO_kCVImageBufferContentLightLevelInfoKey, 0);
      v18 = v17;
      if (v17 && [v17 length] == 4)
      {
        v19 = *[v18 bytes];
      }

      else
      {
        v19 = 0;
      }

      v20 = __rev16(v19);
      v21 = bswap32(v16) * 0.0001;
      v22 = 1000.0;
      if (v15)
      {
        v22 = v21;
      }

      if (v21 <= v20 && v15 != 0)
      {
        v20 = v21;
      }

      if (!v18)
      {
        v20 = v22;
      }

      v5 = fmaxf(v20 / 203.0, 1.0);

      v11 = 0;
    }

    goto LABEL_38;
  }

  return 0.0;
}

uint64_t CGImageComputeHDRImageStatistics(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  IIOInitDebugFlags();
  IIO_LoadHEIFSymbols();

  return IIOComputeHDRImageStats(a1, a2, a3, a4);
}

uint64_t IIOComputeHDRImageStats(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = objc_autoreleasePoolPush();
  v9 = a4;
  v10 = [v9 objectForKeyedSubscript:@"kCGImageAuxiliaryDataInfoMetadata"];

  v11 = [[HDRImage alloc] initWithImageBuffer:a1 gainMapBuffer:a2 gainMapMetadata:v10 imageProperties:v9];
  if ([(HDRImage *)v11 type]== 5)
  {
    v12 = [v9 objectForKeyedSubscript:@"kCGFlexRangeAlternateColorSpace"];

    if (v12)
    {
      v13 = CFGetTypeID(v12);
      if (v13 == CGColorSpaceGetTypeID())
      {
        v14 = [(HDRImage *)v11 flexRangeParams];
        [v14 setAlternateColorSpace:v12];
      }

      else
      {
        LogError("IIOComputeHDRImageStats", 626, "kCGFlexRangeAlternateColorSpace option must be a CGColorSpace object");
      }
    }

    else
    {
      LogError("IIOComputeHDRImageStats", 624, "kCGFlexRangeAlternateColorSpace option must be set for FlexRange");
    }
  }

  v15 = [v9 objectForKeyedSubscript:@"Orientation"];

  if (v15)
  {
    v16 = [v9 objectForKeyedSubscript:@"Orientation"];
    -[HDRImage setGainMapOrientation:](v11, "setGainMapOrientation:", [v16 intValue]);
  }

  v17 = [v9 objectForKeyedSubscript:@"kCGTargetColorSpace"];
  v18 = v17;
  if (!v17)
  {
    v17 = *MEMORY[0x1E695F150];
  }

  v19 = CGColorSpaceCreateWithName(v17);
  v20 = [HDRImageConverter imageConverterWithOptions:v9];
  v21 = [v20 computeHDRStatisticsForImage:v11 targetSpace:v19];
  v22 = v21;
  if ((gIIODebugFlags & 0x300000) != 0)
  {
    v23 = [v21 description];
    ImageIOLog("☀️ Stats data: %s\n", [v23 UTF8String]);
  }

  if (a3 && v22)
  {
    *a3 = v22;
  }

  CGColorSpaceRelease(v19);
  if (v22)
  {
    v24 = 0;
  }

  else
  {
    v24 = 4294967246;
  }

  objc_autoreleasePoolPop(v8);
  return v24;
}

uint64_t CGImageGetHDRPixelBufferStatistics(uint64_t a1, uint64_t *a2)
{
  IIOInitDebugFlags();
  IIO_LoadHEIFSymbols();
  if (!a2)
  {
    return 4294967246;
  }

  v4 = IIOHDRPixelBufferCopyStatisticsFromAttachments(a1);
  result = 0;
  *a2 = v4;
  return result;
}

uint64_t IIOHDRPixelBufferCopyStatisticsFromAttachments(uint64_t a1)
{
  v15[2] = *MEMORY[0x1E69E9840];
  v1 = gFunc_CVBufferCopyAttachment(a1, *gIIO_kCVImageBufferContentLightLevelInfoKey, 0);
  v2 = v1;
  if (!v1 || [v1 length] != 4)
  {
    if ((gIIODebugFlags & 0x300000) != 0)
    {
      ImageIOLog("☀️ Missing CLLI data\n");
    }

    goto LABEL_12;
  }

  v3 = [v2 bytes];
  v5 = __rev16(*v3);
  v6 = v3[1];
  v7 = __rev16(v6);
  if (*v3)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if ((gIIODebugFlags & 0x300000) != 0)
    {
      ImageIOLog("☀️ Invalid CLLI data: (%u,%u)\n", v5, v7);
    }

LABEL_12:
    v13 = 0;
    goto LABEL_13;
  }

  *&v4 = v5 / 203.0;
  v14[0] = @"kCGContentHeadroom";
  v10 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
  *&v11 = v7 / 203.0;
  v15[0] = v10;
  v14[1] = @"kCGContentBrightness";
  v12 = [MEMORY[0x1E696AD98] numberWithFloat:v11];
  v15[1] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];

  if ((gIIODebugFlags & 0x300000) != 0)
  {
    ImageIOLog("☀️ Read CLLI data: (%u,%u)\n", v5, v7);
  }

LABEL_13:

  return v13;
}

void IIOHDRPixelBufferSetAttachmentsFromStatistics(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [v13 objectForKeyedSubscript:@"kCGContentHeadroom"];
  [v3 floatValue];
  v5 = v4;

  v6 = [v13 objectForKeyedSubscript:@"kCGContentBrightness"];
  [v6 floatValue];
  v8 = v7;

  v9 = [MEMORY[0x1E695DF88] dataWithLength:4];
  v10 = [v9 mutableBytes];
  v11 = vcvtps_s32_f32(v5 * 203.0);
  v12 = vcvtps_s32_f32(v8 * 203.0);
  *v10 = __rev16(v11);
  v10[1] = __rev16(v12);
  gFunc_CVBufferSetAttachment(a1, *gIIO_kCVImageBufferContentLightLevelInfoKey, v9, 1);
  if ((gIIODebugFlags & 0x300000) != 0)
  {
    ImageIOLog("☀️ Wrote CLLI data: (%u,%u)\n", v11, v12);
  }
}

uint64_t IIOCreateHDRGainMapMetadata(CGImageMetadata **a1, float a2)
{
  v4 = objc_autoreleasePoolPush();
  *&v5 = a2;
  v6 = [HDRImage createGainMapMetadataWithHeadroom:v5];
  if (a1)
  {
    *a1 = v6;
  }

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = 4294967246;
  }

  objc_autoreleasePoolPop(v4);
  return v7;
}

uint64_t IIODefaultHDRColorSpace(CGColorSpace *a1)
{
  if (a1)
  {
    CGColorSpaceGetCICPInfo();
  }

  return *MEMORY[0x1E695F178];
}

uint64_t IIODefaultHDRYCCMatrix(CGColorSpace *a1)
{
  if (a1)
  {
    CGColorSpaceGetCICPInfo();
  }

  return *gIIO_kCVImageBufferYCbCrMatrix_ITU_R_601_4;
}

uint64_t xdr_CVPixelBufferCopyColorSpace(__CVBuffer *a1)
{
  ColorSpaceFromAttachments = gFunc_CVBufferCopyAttachment(a1, *gIIO_kCVImageBufferCGColorSpaceKey, 0);
  if (!ColorSpaceFromAttachments)
  {
    v3 = gFunc_CVBufferCopyAttachments(a1, 1);
    v4 = v3;
    if (v3)
    {
      ColorSpaceFromAttachments = gFunc_CVImageBufferCreateColorSpaceFromAttachments(v3);
    }

    else
    {
      v5 = CFCopyDescription(a1);
      memset(v8, 0, sizeof(v8));
      IIOString::IIOString(v8, v5);
      v6 = IIOString::utf8String(v8);
      LogError("xdr_CVPixelBufferCopyColorSpace", 715, "*** ERROR: CVPixelBuffer without colorSpace information:  %s\n", v6);
      if (v5)
      {
        CFRelease(v5);
      }

      IIOString::~IIOString(v8);
      ColorSpaceFromAttachments = 0;
    }
  }

  return ColorSpaceFromAttachments;
}

void sub_185EE1BA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = HDRImage;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_185EE411C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58, uint64_t a59, uint64_t a60, uint64_t a61, char a62)
{
  _Block_object_dispose(&a47, 8);
  _Block_object_dispose(&a58, 8);
  _Block_object_dispose(&a62, 8);
  _Block_object_dispose(&STACK[0x200], 8);
  _Block_object_dispose(&STACK[0x220], 8);
  _Block_object_dispose(&STACK[0x278], 8);
  _Block_object_dispose(&STACK[0x298], 8);
  _Block_object_dispose(&STACK[0x2F0], 8);
  _Block_object_dispose(&STACK[0x310], 8);
  _Block_object_dispose(&STACK[0x370], 8);
  _Block_object_dispose(&STACK[0x390], 8);
  _Block_object_dispose(&STACK[0x3E8], 8);
  _Block_object_dispose(&STACK[0x408], 8);
  _Block_object_dispose((v64 - 248), 8);
  _Block_object_dispose((v64 - 216), 8);
  _Block_object_dispose((v64 - 128), 8);

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy_(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  v3 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = result;
  *(a1 + 64) = v3;
  return result;
}

__n128 __Block_byref_object_copy__96(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  v3 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v3;
  *(a1 + 48) = result;
  return result;
}

__n128 __Block_byref_object_copy__99(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  v3 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = result;
  *(a1 + 64) = v3;
  return result;
}

id HDRPixelTransformInDescription(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%g, %g, %g, %g, %g, %g]", COERCE_FLOAT(*(a1 + 96)), COERCE_FLOAT(HIDWORD(*(a1 + 96))), COERCE_FLOAT(*(a1 + 104)), COERCE_FLOAT(HIDWORD(*(a1 + 104))), COERCE_FLOAT(*(a1 + 112)), COERCE_FLOAT(HIDWORD(*(a1 + 112)))];
  v3 = MEMORY[0x1E696AEC0];
  if (*a1 == 4)
  {
    v4 = YCCMatrixToString(*(a1 + 48));
    v5 = HDRPixelRangeToString(*(a1 + 16), *(a1 + 32));
    v6 = [v3 stringWithFormat:@"%@ %@ %@ affine: %@", @"YCC", v4, v5, v2];
  }

  else
  {
    v4 = HDRPixelTypeToString(*a1);
    v6 = [v3 stringWithFormat:@"%@ affine: %@", v4, v2];
  }

  return v6;
}

__CFString *HDRColorTRCToString(uint64_t a1)
{
  v1 = @"none";
  switch(*a1)
  {
    case 0:
      goto LABEL_24;
    case 1:
      [MEMORY[0x1E696AEC0] stringWithFormat:@"Y = X^%g", *(a1 + 44), v7, v8, v9, v10, v11, v12, v13];
      goto LABEL_23;
    case 2:
      [MEMORY[0x1E696AEC0] stringWithFormat:@"Y = (%g*X+%g)^%g [X >= %g], Y = 0 [X < %g]", *(a1 + 16), *(a1 + 20), *(a1 + 44), (-*(a1 + 20) / *(a1 + 16)), (-*(a1 + 20) / *(a1 + 16)), v11, v12, v13];
      goto LABEL_23;
    case 3:
      [MEMORY[0x1E696AEC0] stringWithFormat:@"Y = (%g*X+%g)^%g + %g [X >= %g], Y = %g [X < %g]", *(a1 + 16), *(a1 + 20), *(a1 + 44), *(a1 + 24), (-*(a1 + 20) / *(a1 + 16)), *(a1 + 24), (-*(a1 + 20) / *(a1 + 16)), v13];
      goto LABEL_23;
    case 4:
      v2 = *(a1 + 44);
      v3 = *(a1 + 28);
      if (fabs(v2 + -2.4) < 0.0000999999975 && fabs(v3 + -0.04045) < 0.0000999999975 && fabs(*(a1 + 24) + -0.0773993808) < 0.0000999999975)
      {
        v1 = @"sRGB -> Linear";
        goto LABEL_24;
      }

      [MEMORY[0x1E696AEC0] stringWithFormat:@"Y = (%g*X+%g)^%g [X >= %g], Y = %g*X [X < %g]", *(a1 + 16), *(a1 + 20), *&v2, *&v3, *(a1 + 24), *&v3, v12, v13];
      goto LABEL_23;
    case 5:
      v4 = *(a1 + 44);
      v5 = *(a1 + 28);
      if (fabs(v4 + -0.416666667) >= 0.0000999999975 || fabs(v5 + -0.00313080495) >= 0.0000999999975 || fabs(*(a1 + 24) + -12.92) >= 0.0000999999975)
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"Y = (%g*X+%g)^%g + %g [X >= %g], Y = %g*X + %g [X < %g]", *(a1 + 16), *(a1 + 20), *&v4, *(a1 + 32), *&v5, *(a1 + 24), *(a1 + 36), *&v5];
        v1 = LABEL_23:;
      }

      else
      {
        v1 = @"Linear -> sRGB";
      }

LABEL_24:

      return v1;
    case 6:
      v1 = @"LUT";
      goto LABEL_24;
    case 7:
      [MEMORY[0x1E696AEC0] stringWithFormat:@"PQ EOTF (scale=%g)", *(a1 + 36), v7, v8, v9, v10, v11, v12, v13];
      goto LABEL_23;
    case 8:
      [MEMORY[0x1E696AEC0] stringWithFormat:@"PQ EOTF Inv (scale=%g)", *(a1 + 36), v7, v8, v9, v10, v11, v12, v13];
      goto LABEL_23;
    case 9:
      [MEMORY[0x1E696AEC0] stringWithFormat:@"HLG OETF (scale=%g, black=%g)", (*(a1 + 28) * 12.0), *(a1 + 36), v8, v9, v10, v11, v12, v13];
      goto LABEL_23;
    case 0xA:
      [MEMORY[0x1E696AEC0] stringWithFormat:@"HLG OETF Inv (scale=%g, black=%g)", *(a1 + 32), *(a1 + 36), v8, v9, v10, v11, v12, v13];
      goto LABEL_23;
    case 0xB:
      [MEMORY[0x1E696AEC0] stringWithFormat:@"HLG OETF (scale=%g, black=%g) x OOTF (scale=%g, gamma=%g)", *(a1 + 32), *(a1 + 36), *(a1 + 40), (*(a1 + 44) + 1.0), v10, v11, v12, v13];
      goto LABEL_23;
    case 0xC:
      [MEMORY[0x1E696AEC0] stringWithFormat:@"HLG OETF Inv (scale=%g, black=%g) x OOTF (scale=%g, gamma=%g)", *(a1 + 32), *(a1 + 36), *(a1 + 40), (*(a1 + 44) + 1.0), v10, v11, v12, v13];
      goto LABEL_23;
    default:
      v1 = @"????";
      goto LABEL_24;
  }
}

__CFString *HDRColorMatrixToString(float32x4_t *a1)
{
  if (a1[3].i8[0])
  {
    v2 = @"identity";
  }

  else
  {
    v5 = *a1;
    v6 = a1[1];
    v7 = COERCE_FLOAT(*a1);
    LODWORD(v8) = HIDWORD(a1[1].i64[0]);
    v9 = v8;
    v10 = v8 / 0.96679826;
    if (vabdd_f64(v7 / 0.822426, v10) >= 0.0000999999975 || fabs(v10 + a1[2].f32[2] / -0.9105512) >= 0.0000999999975)
    {
      if (vabdd_f64(v7 / 1.22500277, v9 / 1.04207075) >= 0.0000999999975 || fabs(v9 / 1.04207075 + a1[2].f32[2] / -1.09823489) >= 0.0000999999975)
      {
        if (vabdd_f64(v7 / 0.62737658, v9 / 0.91951445) >= 0.0000999999975 || fabs(v9 / 0.91951445 + a1[2].f32[2] / -0.895617337) >= 0.0000999999975)
        {
          if (vabdd_f64(v7 / 1.66059811, v9 / 1.1329555) >= 0.0000999999975 || fabs(v9 / 1.1329555 + a1[2].f32[2] / -1.1187012) >= 0.0000999999975)
          {
            if (vabds_f32(v5.f32[0], v8) >= 0.0001 || vabds_f32(v8, a1[2].f32[2]) >= 0.0001 || (v22 = a1[1], v11 = a1[2], v23 = *a1, v12 = vmulq_f32(*a1, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v11, v11, 0xCuLL), v11, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v22, v22), v22, 0xCuLL))), vextq_s8(vuzp1q_s32(v11, v11), v11, 0xCuLL), vextq_s8(vextq_s8(v22, v22, 0xCuLL), v22, 8uLL))), v13 = cbrtf(v12.f32[2] + vaddv_f32(*v12.f32)), v6 = v22, v5 = v23, vabds_f32(v13, *&v22.i32[1]) >= 0.0001))
            {
              [MEMORY[0x1E696AEC0] stringWithFormat:@"{{%f, %f, %f}, {%f, %f, %f}, {%f, %f, %f}}", *&v7, v5.f32[1], v5.f32[2], *v6.i32, *&v9, *&v6.i32[2], COERCE_FLOAT(*&a1[2]), COERCE_FLOAT(HIDWORD(a1[2].i64[0])), COERCE_FLOAT(a1[2].i64[1])];
            }

            else
            {
              [MEMORY[0x1E696AEC0] stringWithFormat:@"identity (scale=%g)", *&v22.i32[1], v14, v15, v16, v17, v18, v19, v20, v21];
            }
          }

          else
          {
            [MEMORY[0x1E696AEC0] stringWithFormat:@"BT.2020 -> sRGB (scale=%g)", v9 / 1.1329555, v14, v15, v16, v17, v18, v19, v20, v21];
          }
        }

        else
        {
          [MEMORY[0x1E696AEC0] stringWithFormat:@"sRGB -> BT.2020 (scale=%g)", v9 / 0.91951445, v14, v15, v16, v17, v18, v19, v20, v21];
        }
      }

      else
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"P3 -> sRGB (scale=%g)", v9 / 1.04207075, v14, v15, v16, v17, v18, v19, v20, v21];
      }
    }

    else
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"sRGB -> P3 (scale=%g)", v8 / 0.96679826, v14, v15, v16, v17, v18, v19, v20, v21];
    }
    v2 = ;
  }

  return v2;
}

__CFString *HDRToneMappingToString(uint64_t a1)
{
  v2 = *a1;
  v3 = @"???";
  if (v2 <= 2)
  {
    switch(v2)
    {
      case 0:
        v3 = @"none";
        goto LABEL_17;
      case 1:
        [MEMORY[0x1E696AEC0] stringWithFormat:@"PQ EETF (scale=%g)", *(a1 + 40), v5];
        break;
      case 2:
        [MEMORY[0x1E696AEC0] stringWithFormat:@"HLG OOTF (scale=%g, gamma=%g)", *(a1 + 40), (*(a1 + 44) + 1.0)];
        break;
      default:
        goto LABEL_17;
    }
  }

  else if (v2 > 4)
  {
    if (v2 == 5)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"FlexGTC (scale=%g)", *(a1 + 40), v5];
    }

    else
    {
      if (v2 != 6)
      {
        goto LABEL_17;
      }

      [MEMORY[0x1E696AEC0] stringWithFormat:@"3D-LUT (grid=%0.f)", cbrtf(vcvts_n_f32_u64(objc_msgSend(*(a1 + 80), "length"), 3uLL)), v5];
    }
  }

  else
  {
    if (v2 == 3)
    {
      v3 = @"EXR Tone Mapping";
      goto LABEL_17;
    }

    [MEMORY[0x1E696AEC0] stringWithFormat:@"RWTMO (scale=%g)", *(a1 + 36), v5];
  }
  v3 = ;
LABEL_17:

  return v3;
}

__CFString *HDRGainMappingToString(int *a1)
{
  v1 = *a1;
  if (*a1)
  {
    if (v1 == 2)
    {
      v2 = *(a1 + 5);
      v3 = *(a1 + 6);
      v4 = MEMORY[0x1E696AEC0];
      v52 = COERCE_FLOAT(HIDWORD(*(a1 + 12)));
      v53 = v3.f32[0];
      v54 = v3;
      v5 = v3.f32[2];
      v7 = *(a1 + 1);
      v6 = *(a1 + 2);
      v50 = v6.f32[0];
      v51 = v5;
      LODWORD(v8) = HIDWORD(*(a1 + 4));
      v9 = COERCE_FLOAT(*(a1 + 5));
      v48 = v6.f32[2];
      v49 = v6.f32[1];
      v46 = *(&v7 + 1);
      v47 = *&v7;
      v10 = *(&v7 + 2);
      v11 = *(a1 + 3);
      v12 = *(a1 + 4);
      v44 = v11.f32[0];
      v45 = v10;
      LODWORD(v13) = HIDWORD(*(a1 + 6));
      v43 = v11.f32[1];
      v14 = COERCE_FLOAT(*(a1 + 7));
      v41 = *&v12;
      v42 = v11.f32[2];
      v39 = *(&v12 + 1);
      v15 = *(&v12 + 2);
      v16 = *&v2;
      v17 = *(&v2 + 1);
      v18 = *(&v2 + 2);
      v40 = exp2f(vmulq_f32(*(a1 + 6), vaddq_f32(v6, v11)).f32[0]);
      v19 = exp2f(vmuls_lane_f32(v8 + v13, *v54.f32, 1));
      [v4 stringWithFormat:@"FlexRange {Y = 2^([%g, %g, %g]*([%g, %g, %g] * (G^[%g, %g, %g]) + [%g, %g, %g])) * (X + [%g, %g, %g]) - [%g, %g, %g]} (headroom=[%g, %g, %g])", *&v53, *&v52, *&v51, *&v50, *&v49, *&v48, *&v47, *&v46, *&v45, *&v44, *&v43, *&v42, *&v41, *&v39, *&v15, *&v16, *&v17, *&v18, *&v40, *&v19, exp2f(vmuls_lane_f32(v9 + v14, v54, 2))];
      goto LABEL_6;
    }

    if (v1 == 1)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"Meteor+ {Y = (%g * (G^%g) + %g) * X} (headroom=%g)", *(a1 + 8), *(a1 + 4), *(a1 + 12), (*(a1 + 8) + 1.0), v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38];
      v20 = LABEL_6:;
      goto LABEL_9;
    }

    v20 = @"???";
  }

  else
  {
    v20 = @"none";
  }

LABEL_9:

  return v20;
}

void sub_185EE7788(_Unwind_Exception *a1)
{
  v3 = v1;

  _Unwind_Resume(a1);
}

__CFString *HDRPixelTransformOutDescription(uint64_t a1)
{
  if (*a1)
  {
    if (*a1 == 4)
    {
      v2 = *(a1 + 96);
      v3 = vceq_s16(v2, 0x200020001);
      v3.i16[3] = v3.i16[2];
      if ((vminv_u16(v3) & 0x8000) != 0)
      {
        v14 = @"420";
      }

      else
      {
        v4 = vceq_s16(v2, 0x400040002);
        v4.i16[3] = v4.i16[2];
        if ((vminv_u16(v4) & 0x8000) != 0)
        {
          v14 = @"420/2";
        }

        else
        {
          v5 = vceq_s16(v2, 0x800080004);
          v5.i16[3] = v5.i16[2];
          if ((vminv_u16(v5) & 0x8000) != 0)
          {
            v14 = @"420/4";
          }

          else
          {
            v6 = vceq_s16(v2, 0x100020001);
            v6.i16[3] = v6.i16[2];
            if ((vminv_u16(v6) & 0x8000) != 0)
            {
              v14 = @"422";
            }

            else
            {
              v7 = vceq_s16(v2, 0x200040002);
              v7.i16[3] = v7.i16[2];
              if ((vminv_u16(v7) & 0x8000) != 0)
              {
                v14 = @"422/2";
              }

              else
              {
                v8 = vceq_s16(v2, 0x400080004);
                v8.i16[3] = v8.i16[2];
                if ((vminv_u16(v8) & 0x8000) != 0)
                {
                  v14 = @"422/4";
                }

                else
                {
                  v9 = vceq_s16(v2, 0x1000100010001);
                  v9.i16[3] = v9.i16[2];
                  if ((vminv_u16(v9) & 0x8000) != 0)
                  {
                    v14 = @"444";
                  }

                  else
                  {
                    v10 = vceq_s16(v2, 0x2000200020002);
                    v10.i16[3] = v10.i16[2];
                    v11 = vminv_u16(v10);
                    v12 = vceq_s16(v2, 0x4000400040004);
                    v12.i16[3] = v12.i16[2];
                    if ((vminv_u16(v12) & 0x8000) != 0)
                    {
                      v13 = @"444/4";
                    }

                    else
                    {
                      v13 = 0;
                    }

                    if ((v11 & 0x8000) != 0)
                    {
                      v14 = @"444/2";
                    }

                    else
                    {
                      v14 = v13;
                    }
                  }
                }
              }
            }
          }
        }
      }

      v18 = MEMORY[0x1E696AEC0];
      v17 = HDRPixelTypeToString(*a1);
      v19 = YCCMatrixToString(*(a1 + 48));
      v20 = HDRPixelRangeToString(*(a1 + 16), *(a1 + 32));
      v15 = [v18 stringWithFormat:@"%@ %@ %@ subsample: %@", v17, v19, v20, v14];
    }

    else
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"1/%u", *(a1 + 96)];
      v16 = MEMORY[0x1E696AEC0];
      v17 = HDRPixelTypeToString(*a1);
      v15 = [v16 stringWithFormat:@"%@ subsample: %@", v17, v14];
    }
  }

  else
  {
    v15 = @"N/A";
  }

  return v15;
}

__CFString *HDRPixelTypeToString(unsigned int a1)
{
  if (a1 > 5)
  {
    return @"???";
  }

  else
  {
    return off_1E6EF86A0[a1];
  }
}

__CFString *YCCMatrixToString(simd_float3x3 a1)
{
  v1 = a1.columns[2].f32[0];
  if (fabs(v1 + -1.402) < 0.001 && fabs(a1.columns[1].f32[2] + -1.772) < 0.001)
  {
    return @"601(in)";
  }

  if (fabs(v1 + -1.5748) < 0.0001 && fabs(a1.columns[1].f32[2] + -1.8556) < 0.0001)
  {
    return @"709(in)";
  }

  if (fabs(v1 + -1.4746) < 0.0001 && fabs(a1.columns[1].f32[2] + -1.8814) < 0.0001)
  {
    return @"2020(in)";
  }

  v3 = a1.columns[0].f32[0];
  if (fabs(v3 + -0.299) < 0.001 && fabs(a1.columns[1].f32[0] + -0.587) < 0.001 && fabs(v1 + -0.114) < 0.001)
  {
    return @"601(out)";
  }

  if (fabs(v3 + -0.2126) < 0.0001 && fabs(a1.columns[1].f32[0] + -0.7152) < 0.0001 && fabs(v1 + -0.0722) < 0.0001)
  {
    return @"709(out)";
  }

  if (fabs(v3 + -0.2627) >= 0.0001 || fabs(a1.columns[1].f32[0] + -0.678) >= 0.0001 || fabs(v1 + -0.0593) >= 0.0001)
  {
    return @"???";
  }

  return @"2020(out)";
}

__CFString *HDRPixelRangeToString(__n128 a1, __n128 a2)
{
  v4 = a1.n128_f32[0] == 1.0 && a1.n128_f32[1] == 1.0;
  if (v4 && a2.n128_f32[0] == 0.0 && a2.n128_f32[1] == 0.0)
  {
    v5 = @"Full Range";

    return v5;
  }

  if (fabs(a1.n128_f32[0] + -1.0) >= 0.0000999999975)
  {
    goto LABEL_35;
  }

  if (fabsf(a1.n128_f32[1] + -1.0039) < 0.0001 || fabsf(a1.n128_f32[1] + -0.99608) < 0.0001)
  {
    v5 = @"Full Range (8-bits)";

    return v5;
  }

  if (fabsf(a1.n128_f32[1] + -1.001) < 0.0001 || fabsf(a1.n128_f32[1] + -0.99902) < 0.0001)
  {
    v5 = @"Full Range (10-bits)";

    return v5;
  }

  if (fabsf(a1.n128_f32[1] + -1.0002) < 0.0001 || fabsf(a1.n128_f32[1] + -0.99976) < 0.0001)
  {
    v5 = @"Full Range (12-bits)";

    return v5;
  }

  if (fabsf(a1.n128_f32[1] + -1.0) >= 0.0001 && fabsf(a1.n128_f32[1] + -0.99998) >= 0.0001)
  {
LABEL_35:
    if ((fabsf(a1.n128_f32[0] + -1.1644) >= 0.0001 || fabsf(a1.n128_f32[1] + -1.1384) >= 0.0001) && (fabsf(a1.n128_f32[0] + -0.85882) >= 0.0001 || fabsf(a1.n128_f32[1] + -0.87843) >= 0.0001))
    {
      if ((fabsf(a1.n128_f32[0] + -1.1678) >= 0.0001 || fabsf(a1.n128_f32[1] + -1.1417) >= 0.0001) && (fabsf(a1.n128_f32[0] + -0.85631) >= 0.0001 || fabsf(a1.n128_f32[1] + -0.87586) >= 0.0001))
      {
        if ((fabsf(a1.n128_f32[0] + -1.1687) >= 0.0001 || fabsf(a1.n128_f32[1] + -1.1426) >= 0.0001) && (fabsf(a1.n128_f32[0] + -0.85568) >= 0.0001 || fabsf(a1.n128_f32[1] + -0.87521) >= 0.0001))
        {
          if ((fabsf(a1.n128_f32[0] + -1.1689) >= 0.0001 || fabsf(a1.n128_f32[1] + -1.1428) >= 0.0001) && (fabsf(a1.n128_f32[0] + -0.85548) >= 0.0001 || fabsf(a1.n128_f32[1] + -0.87501) >= 0.0001))
          {
            v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[scale:(%f, %f, %f) offset:(%f, %f, %f)]", a1.n128_f32[0], a1.n128_f32[1], a1.n128_f32[2], a2.n128_f32[0], a2.n128_f32[1], a2.n128_f32[2], v2];
          }

          else
          {
            v5 = @"Video Range (16-bits)";
          }
        }

        else
        {
          v5 = @"Video Range (12-bits)";
        }
      }

      else
      {
        v5 = @"Video Range (10-bits)";
      }
    }

    else
    {
      v5 = @"Video Range (8-bits)";
    }
  }

  else
  {
    v5 = @"Full Range (16-bits)";
  }

  return v5;
}

uint64_t xdr::PixelFormat::choosePixelFormat(int a1, int a2, void *a3)
{
  LODWORD(v5) = a1;
  if (a1 <= 1278226735)
  {
    if (a1 > 875836533)
    {
      if (a1 > 1278226487)
      {
        if (a1 != 1278226488)
        {
          if (a1 == 1278226534)
          {
            if (!a2)
            {
              if (a3)
              {
                operator new();
              }

              return 1;
            }

            goto LABEL_91;
          }

          if (a1 == 1278226536)
          {
            if (!a2)
            {
              if (a3)
              {
                operator new();
              }

              return 1;
            }

            goto LABEL_91;
          }

          goto LABEL_66;
        }

LABEL_48:
        if (!a2)
        {
          if (a3)
          {
            operator new();
          }

          return 1;
        }

        goto LABEL_91;
      }

      if (a1 != 875836534)
      {
        if (a1 == 1111970369)
        {
          if (!a2)
          {
            if (a3)
            {
              operator new();
            }

            return 1;
          }

          goto LABEL_91;
        }

        goto LABEL_66;
      }
    }

    else if (a1 <= 875704933)
    {
      if (a1 != 875704422)
      {
        v7 = 875704438;
LABEL_40:
        if (a1 != v7)
        {
          goto LABEL_66;
        }
      }
    }

    else if (a1 != 875704934 && a1 != 875704950)
    {
      v7 = 875836518;
      goto LABEL_40;
    }

    if (a2 == 1)
    {
      if (a3)
      {
        operator new();
      }

      return 1;
    }

    goto LABEL_48;
  }

  if (a1 > 2016686639)
  {
    if (a1 > 2019963439)
    {
      if (a1 != 2019963440 && a1 != 2019963442)
      {
        v6 = 2019963956;
LABEL_29:
        if (a1 == v6)
        {
          goto LABEL_30;
        }

        goto LABEL_66;
      }
    }

    else if (a1 != 2016686640 && a1 != 2016686642)
    {
      v6 = 2016687156;
      goto LABEL_29;
    }

LABEL_30:
    if (a2)
    {
      if (a3)
      {
        operator new();
      }

      return 1;
    }

LABEL_60:
    if (a3)
    {
      operator new();
    }

    return 1;
  }

  if (a1 > 1380411456)
  {
    switch(a1)
    {
      case 1380411457:
        if (!a2)
        {
          if (a3)
          {
            operator new();
          }

          return 1;
        }

        goto LABEL_91;
      case 1815162994:
        if (!a2)
        {
          if (a3)
          {
            operator new();
          }

          return 1;
        }

        goto LABEL_91;
      case 1815491698:
        if (!a2)
        {
          if (a3)
          {
            operator new();
          }

          return 1;
        }

        goto LABEL_91;
    }

LABEL_66:
    v9 = a1 >> 24;
    if ((a1 >> 24) <= 0x7F)
    {
      v10 = *(MEMORY[0x1E69E9830] + 4 * v9 + 60) & 0x40000;
    }

    else
    {
      v10 = __maskrune(a1 >> 24, 0x40000uLL);
    }

    if (v10)
    {
      v11 = v9;
    }

    else
    {
      v11 = 46;
    }

    v12 = (v5 << 8) >> 24;
    if (v12 <= 0x7F)
    {
      v13 = *(MEMORY[0x1E69E9830] + 4 * v12 + 60) & 0x40000;
    }

    else
    {
      v13 = __maskrune((v5 << 8) >> 24, 0x40000uLL);
    }

    if (v13)
    {
      v14 = v12;
    }

    else
    {
      v14 = 46;
    }

    v15 = v5 >> 8;
    if (v15 <= 0x7F)
    {
      v16 = *(MEMORY[0x1E69E9830] + 4 * v15 + 60) & 0x40000;
    }

    else
    {
      v16 = __maskrune(v5 >> 8, 0x40000uLL);
    }

    if (v16)
    {
      v17 = v15;
    }

    else
    {
      v17 = 46;
    }

    if (v5 <= 0x7F)
    {
      v18 = *(MEMORY[0x1E69E9830] + 4 * v5 + 60) & 0x40000;
    }

    else
    {
      v18 = __maskrune(v5, 0x40000uLL);
    }

    if (v18)
    {
      v19 = v5;
    }

    else
    {
      v19 = 46;
    }

    LogError("choosePixelFormat", 292, "Unsupported pixel format: '%c%c%c%c'", v11, v14, v17, v19);
    goto LABEL_91;
  }

  if (a1 != 1278226736)
  {
    if (a1 == 1380410945)
    {
      if (!a2)
      {
        if (a3)
        {
          operator new();
        }

        return 1;
      }

      goto LABEL_91;
    }

    goto LABEL_66;
  }

  if (!a2)
  {
    goto LABEL_60;
  }

LABEL_91:
  v8 = 0;
  if (a3 && (gIIODebugFlags & 0x300000) != 0)
  {
    v20 = v5 >> 24;
    if ((v5 >> 24) <= 0x7F)
    {
      v21 = *(MEMORY[0x1E69E9830] + 4 * v20 + 60) & 0x40000;
    }

    else
    {
      v21 = __maskrune(v5 >> 24, 0x40000uLL);
    }

    if (v21)
    {
      v22 = v20;
    }

    else
    {
      v22 = 46;
    }

    v23 = (v5 << 8) >> 24;
    if (v23 <= 0x7F)
    {
      v24 = *(MEMORY[0x1E69E9830] + 4 * v23 + 60) & 0x40000;
    }

    else
    {
      v24 = __maskrune((v5 << 8) >> 24, 0x40000uLL);
    }

    if (v24)
    {
      v25 = v23;
    }

    else
    {
      v25 = 46;
    }

    LODWORD(v26) = v5 >> 8;
    if (v26 <= 0x7F)
    {
      v27 = *(MEMORY[0x1E69E9830] + 4 * v26 + 60) & 0x40000;
    }

    else
    {
      v27 = __maskrune(v5 >> 8, 0x40000uLL);
    }

    if (v27)
    {
      v26 = v26;
    }

    else
    {
      v26 = 46;
    }

    LODWORD(v5) = v5;
    if (v5 <= 0x7F)
    {
      v28 = *(MEMORY[0x1E69E9830] + 4 * v5 + 60) & 0x40000;
    }

    else
    {
      v28 = __maskrune(v5, 0x40000uLL);
    }

    if (v28)
    {
      v5 = v5;
    }

    else
    {
      v5 = 46;
    }

    if (*a3)
    {
      v29 = (*(**a3 + 32))(*a3);
    }

    else
    {
      v29 = "???";
    }

    ImageIOLog("☀️  PixelFormat::choosePixelFormat: '%c%c%c%c' plane: %u -> %s\n", v22, v25, v26, v5, a2, v29);
  }

  return v8;
}

void sub_185EEABD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  xdr::ColorBox<HDRColorTransformOut>::~ColorBox(&a13);
  xdr::ColorBox<HDRColorTransformOut>::~ColorBox(&a19);
  _ZN3xdr8ImageBoxI20HDRPixelTransformOutLNS_7TextureIDv2_tDv2_fDv2_iE10AccessModeE1EED2Ev(&a59);
  _ZN3xdr8ImageBoxI20HDRPixelTransformOutLNS_7TextureIDv2_tDv2_fDv2_iE10AccessModeE1EED2Ev(&a63);
  _Unwind_Resume(a1);
}

void sub_185EEB248(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  xdr::ColorBox<HDRColorTransformOut>::~ColorBox(&a33);
  xdr::ColorBox<HDRColorTransformOut>::~ColorBox(&a61);
  _ZN3xdr8ImageBoxI20HDRPixelTransformOutLNS_7TextureIDv2_tDv2_fDv2_iE10AccessModeE1EED2Ev(&STACK[0x370]);
  _ZN3xdr8ImageBoxI20HDRPixelTransformOutLNS_7TextureIDv2_tDv2_fDv2_iE10AccessModeE1EED2Ev(&STACK[0x390]);
  _ZN3xdr8ImageBoxI20HDRPixelTransformOutLNS_7TextureIDv2_tDv2_fDv2_iE10AccessModeE1EED2Ev(&STACK[0x3B0]);
  _Unwind_Resume(a1);
}

void sub_185EEBB08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  xdr::ColorBox<HDRColorTransformOut>::~ColorBox(&a39);
  xdr::ColorBox<HDRColorTransformOut>::~ColorBox(&a45);
  xdr::ColorBox<HDRColorTransformOut>::~ColorBox(&a51);
  _ZN3xdr8ImageBoxI20HDRPixelTransformOutLNS_7TextureIDv2_tDv2_fDv2_iE10AccessModeE1EED2Ev(&STACK[0x310]);
  _ZN3xdr8ImageBoxI20HDRPixelTransformOutLNS_7TextureIDv2_tDv2_fDv2_iE10AccessModeE1EED2Ev(&STACK[0x330]);
  _ZN3xdr8ImageBoxI20HDRPixelTransformOutLNS_7TextureIDv2_tDv2_fDv2_iE10AccessModeE1EED2Ev(&STACK[0x350]);
  _Unwind_Resume(a1);
}

void sub_185EEC57C(_Unwind_Exception *a1)
{
  xdr::ColorBox<HDRColorTransformOut>::~ColorBox(&STACK[0x250]);
  xdr::ColorBox<HDRColorTransformOut>::~ColorBox(&STACK[0x330]);
  xdr::ColorBox<HDRColorTransformOut>::~ColorBox(&STACK[0x410]);
  _ZN3xdr8ImageBoxI20HDRPixelTransformOutLNS_7TextureIDv2_tDv2_fDv2_iE10AccessModeE1EED2Ev(&STACK[0x660]);
  _ZN3xdr8ImageBoxI20HDRPixelTransformOutLNS_7TextureIDv2_tDv2_fDv2_iE10AccessModeE1EED2Ev(&STACK[0x680]);
  _ZN3xdr8ImageBoxI20HDRPixelTransformOutLNS_7TextureIDv2_tDv2_fDv2_iE10AccessModeE1EED2Ev(&STACK[0x6A0]);
  _ZN3xdr8ImageBoxI20HDRPixelTransformOutLNS_7TextureIDv2_tDv2_fDv2_iE10AccessModeE1EED2Ev(&STACK[0x6C0]);
  _Unwind_Resume(a1);
}

void sub_185EECC04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45)
{
  xdr::ColorBox<HDRColorTransformOut>::~ColorBox(&a39);
  xdr::ColorBox<HDRColorTransformOut>::~ColorBox(&a45);
  _ZN3xdr8ImageBoxI20HDRPixelTransformOutLNS_7TextureIDv2_tDv2_fDv2_iE10AccessModeE1EED2Ev(&STACK[0x2F0]);
  _ZN3xdr8ImageBoxI20HDRPixelTransformOutLNS_7TextureIDv2_tDv2_fDv2_iE10AccessModeE1EED2Ev(&STACK[0x310]);
  _ZN3xdr8ImageBoxI20HDRPixelTransformOutLNS_7TextureIDv2_tDv2_fDv2_iE10AccessModeE1EED2Ev(&STACK[0x330]);
  _Unwind_Resume(a1);
}

void sub_185EED5A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  xdr::ColorBox<HDRColorTransformOut>::~ColorBox(&a41);
  xdr::ColorBox<HDRColorTransformOut>::~ColorBox(&a69);
  xdr::ColorBox<HDRColorTransformOut>::~ColorBox(&STACK[0x210]);
  _ZN3xdr8ImageBoxI20HDRPixelTransformOutLNS_7TextureIDv2_tDv2_fDv2_iE10AccessModeE1EED2Ev(&STACK[0x460]);
  _ZN3xdr8ImageBoxI20HDRPixelTransformOutLNS_7TextureIDv2_tDv2_fDv2_iE10AccessModeE1EED2Ev(&STACK[0x480]);
  _ZN3xdr8ImageBoxI20HDRPixelTransformOutLNS_7TextureIDv2_tDv2_fDv2_iE10AccessModeE1EED2Ev(&STACK[0x4A0]);
  _ZN3xdr8ImageBoxI20HDRPixelTransformOutLNS_7TextureIDv2_tDv2_fDv2_iE10AccessModeE1EED2Ev(&STACK[0x4C0]);
  _Unwind_Resume(a1);
}

void sub_185EED838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  xdr::ColorBox<HDRColorTransformOut>::~ColorBox(&a31);
  _ZN3xdr8ImageBoxI20HDRPixelTransformOutLNS_7TextureIDv2_tDv2_fDv2_iE10AccessModeE1EED2Ev(&STACK[0x200]);
  _ZN3xdr8ImageBoxI20HDRPixelTransformOutLNS_7TextureIDv2_tDv2_fDv2_iE10AccessModeE1EED2Ev(&STACK[0x220]);
  _Unwind_Resume(a1);
}

void xdr::dispatch_compute_luma_gain_histogram<(unsigned short)2,(unsigned short)2,(unsigned short)4>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, double a7, uint16x4_t a8, uint32x4_t a9)
{
  a8.i32[0] = a6;
  a9.i64[0] = 0x700000007;
  v15 = vand_s8(*&vaddw_u16(a9, a8), 0xFFFF0000FFFFLL);
  v18 = vshr_n_u32(v15, 3uLL);
  v19 = vdivq_f32(xmmword_1862059A0, vaddq_f32(vorrq_s8(vmovl_u16(vdup_n_s32(a6)), vdupq_n_s32(0x4B400000u)), vdupq_n_s32(0xCB400000)));
  v17 = vshr_n_u32(vsra_n_u32(0x700000007, v15, 3uLL), 3uLL);
  v16 = malloc_type_calloc(0x40uLL, 0x1000uLL, 0x1000040BAFFE814uLL);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZN3xdr36dispatch_compute_luma_gain_histogramILt2ELt2ELt4EEEvRKNS_7imageInES3_RKNS_16colorTransformInERKNS_15gainTransformInERNS_11histogram2DEDv2_fDv2_t_block_invoke;
  block[3] = &__block_descriptor_104_e8_v16__0Q8l;
  v32 = v17.i16[2];
  v31 = v17.i16[0];
  v34 = v18.i16[2];
  v33 = v18.i16[0];
  v25 = a1;
  v26 = a2;
  v27 = a3;
  v28 = a4;
  v29 = v16;
  v30 = a7;
  v24 = v19;
  dispatch_apply(0x40uLL, 0, block);
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x2020000000;
  v21[3] = &v22;
  v22 = 0;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = ___ZN3xdr36dispatch_compute_luma_gain_histogramILt2ELt2ELt4EEEvRKNS_7imageInES3_RKNS_16colorTransformInERKNS_15gainTransformInERNS_11histogram2DEDv2_fDv2_t_block_invoke_2;
  v20[3] = &unk_1E6EF8798;
  v20[5] = v16;
  v20[6] = a5;
  v20[4] = v21;
  dispatch_apply(0x20uLL, 0, v20);
  free(v16);
  _Block_object_dispose(v21, 8);
}

void xdr::dispatch_compute_image_stats<(unsigned short)8,(unsigned short)8,(unsigned short)1>(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint16x4_t a5, uint32x4_t a6)
{
  a5.i32[0] = a4;
  a6.i64[0] = 0x700000007;
  v10 = vand_s8(*&vaddw_u16(a6, a5), 0xFFFF0000FFFFLL);
  v18 = vshr_n_u32(v10, 3uLL);
  v16 = vshr_n_u32(vsra_n_u32(0x700000007, v10, 3uLL), 3uLL);
  v17 = vdivq_f32(xmmword_1862059A0, vaddq_f32(vorrq_s8(vmovl_u16(vdup_n_s32(a4)), vdupq_n_s32(0x4B400000u)), vdupq_n_s32(0xCB400000)));
  v11 = malloc_type_calloc(0x40uLL, 0xCuLL, 0x10000403E1C8BA9uLL);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZN3xdr28dispatch_compute_image_statsILt8ELt8ELt1EEEvRKNS_7imageInERKNS_16colorTransformInERNS_10imageStatsEDv2_t_block_invoke;
  block[3] = &__block_descriptor_84_e8_v16__0Q8l;
  v25 = v16.i16[2];
  v24 = v16.i16[0];
  v27 = v18.i16[2];
  v26 = v18.i16[0];
  v21 = a1;
  v22 = a2;
  v23 = v11;
  v20 = v17;
  v28 = a4;
  dispatch_apply(0x40uLL, 0, block);
  v12 = 0;
  v14 = *a3;
  v13 = *(a3 + 4);
  v15 = *(a3 + 8);
  do
  {
    v14 = fmaxf(*&v11[v12], v14);
    v13 = *&v11[v12 + 4] + v13;
    *a3 = v14;
    *(a3 + 4) = v13;
    v15 += *&v11[v12 + 8];
    *(a3 + 8) = v15;
    v12 += 12;
  }

  while (v12 != 768);
  *(a3 + 4) = v13 / v15;
  free(v11);
}

void xdr::dispatch_compute_image_stats<(unsigned short)8,(unsigned short)8,(unsigned short)2>(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint16x4_t a5, uint32x4_t a6)
{
  a5.i32[0] = a4;
  a6.i64[0] = 0xF0000000FLL;
  v10 = vand_s8(*&vaddw_u16(a6, a5), 0xFFFF0000FFFFLL);
  v18 = vshr_n_u32(v10, 4uLL);
  v16 = vshr_n_u32(vsra_n_u32(0x700000007, v10, 4uLL), 3uLL);
  v17 = vdivq_f32(xmmword_1862059A0, vaddq_f32(vorrq_s8(vmovl_u16(vdup_n_s32(a4)), vdupq_n_s32(0x4B400000u)), vdupq_n_s32(0xCB400000)));
  v11 = malloc_type_calloc(0x40uLL, 0xCuLL, 0x10000403E1C8BA9uLL);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZN3xdr28dispatch_compute_image_statsILt8ELt8ELt2EEEvRKNS_7imageInERKNS_16colorTransformInERNS_10imageStatsEDv2_t_block_invoke;
  block[3] = &__block_descriptor_84_e8_v16__0Q8l;
  v25 = v16.i16[2];
  v24 = v16.i16[0];
  v27 = v18.i16[2];
  v26 = v18.i16[0];
  v21 = a1;
  v22 = a2;
  v23 = v11;
  v20 = v17;
  v28 = a4;
  dispatch_apply(0x40uLL, 0, block);
  v12 = 0;
  v14 = *a3;
  v13 = *(a3 + 4);
  v15 = *(a3 + 8);
  do
  {
    v14 = fmaxf(*&v11[v12], v14);
    v13 = *&v11[v12 + 4] + v13;
    *a3 = v14;
    *(a3 + 4) = v13;
    v15 += *&v11[v12 + 8];
    *(a3 + 8) = v15;
    v12 += 12;
  }

  while (v12 != 768);
  *(a3 + 4) = v13 / v15;
  free(v11);
}

void xdr::dispatch_compute_image_stats<(unsigned short)8,(unsigned short)8,(unsigned short)4>(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint16x4_t a5, uint32x4_t a6)
{
  a5.i32[0] = a4;
  a6.i64[0] = 0x1F0000001FLL;
  v10 = vand_s8(*&vaddw_u16(a6, a5), 0xFFFF0000FFFFLL);
  v18 = vshr_n_u32(v10, 5uLL);
  v16 = vshr_n_u32(vsra_n_u32(0x700000007, v10, 5uLL), 3uLL);
  v17 = vdivq_f32(xmmword_1862059A0, vaddq_f32(vorrq_s8(vmovl_u16(vdup_n_s32(a4)), vdupq_n_s32(0x4B400000u)), vdupq_n_s32(0xCB400000)));
  v11 = malloc_type_calloc(0x40uLL, 0xCuLL, 0x10000403E1C8BA9uLL);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZN3xdr28dispatch_compute_image_statsILt8ELt8ELt4EEEvRKNS_7imageInERKNS_16colorTransformInERNS_10imageStatsEDv2_t_block_invoke;
  block[3] = &__block_descriptor_84_e8_v16__0Q8l;
  v25 = v16.i16[2];
  v24 = v16.i16[0];
  v27 = v18.i16[2];
  v26 = v18.i16[0];
  v21 = a1;
  v22 = a2;
  v23 = v11;
  v20 = v17;
  v28 = a4;
  dispatch_apply(0x40uLL, 0, block);
  v12 = 0;
  v14 = *a3;
  v13 = *(a3 + 4);
  v15 = *(a3 + 8);
  do
  {
    v14 = fmaxf(*&v11[v12], v14);
    v13 = *&v11[v12 + 4] + v13;
    *a3 = v14;
    *(a3 + 4) = v13;
    v15 += *&v11[v12 + 8];
    *(a3 + 8) = v15;
    v12 += 12;
  }

  while (v12 != 768);
  *(a3 + 4) = v13 / v15;
  free(v11);
}

void xdr::dispatch_compute_image_stats<(unsigned short)8,(unsigned short)8,(unsigned short)8>(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint16x4_t a5, uint32x4_t a6)
{
  a5.i32[0] = a4;
  a6.i64[0] = 0x3F0000003FLL;
  v10 = vand_s8(*&vaddw_u16(a6, a5), 0xFFFF0000FFFFLL);
  v18 = vshr_n_u32(v10, 6uLL);
  v16 = vshr_n_u32(vsra_n_u32(0x700000007, v10, 6uLL), 3uLL);
  v17 = vdivq_f32(xmmword_1862059A0, vaddq_f32(vorrq_s8(vmovl_u16(vdup_n_s32(a4)), vdupq_n_s32(0x4B400000u)), vdupq_n_s32(0xCB400000)));
  v11 = malloc_type_calloc(0x40uLL, 0xCuLL, 0x10000403E1C8BA9uLL);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZN3xdr28dispatch_compute_image_statsILt8ELt8ELt8EEEvRKNS_7imageInERKNS_16colorTransformInERNS_10imageStatsEDv2_t_block_invoke;
  block[3] = &__block_descriptor_84_e8_v16__0Q8l;
  v25 = v16.i16[2];
  v24 = v16.i16[0];
  v27 = v18.i16[2];
  v26 = v18.i16[0];
  v21 = a1;
  v22 = a2;
  v23 = v11;
  v20 = v17;
  v28 = a4;
  dispatch_apply(0x40uLL, 0, block);
  v12 = 0;
  v14 = *a3;
  v13 = *(a3 + 4);
  v15 = *(a3 + 8);
  do
  {
    v14 = fmaxf(*&v11[v12], v14);
    v13 = *&v11[v12 + 4] + v13;
    *a3 = v14;
    *(a3 + 4) = v13;
    v15 += *&v11[v12 + 8];
    *(a3 + 8) = v15;
    v12 += 12;
  }

  while (v12 != 768);
  *(a3 + 4) = v13 / v15;
  free(v11);
}

void xdr::dispatch_compute_image_stats<(unsigned short)8,(unsigned short)8,(unsigned short)16>(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint16x4_t a5, uint32x4_t a6)
{
  a5.i32[0] = a4;
  a6.i64[0] = 0x7F0000007FLL;
  v10 = vand_s8(*&vaddw_u16(a6, a5), 0xFFFF0000FFFFLL);
  v18 = vshr_n_u32(v10, 7uLL);
  v16 = vshr_n_u32(vsra_n_u32(0x700000007, v10, 7uLL), 3uLL);
  v17 = vdivq_f32(xmmword_1862059A0, vaddq_f32(vorrq_s8(vmovl_u16(vdup_n_s32(a4)), vdupq_n_s32(0x4B400000u)), vdupq_n_s32(0xCB400000)));
  v11 = malloc_type_calloc(0x40uLL, 0xCuLL, 0x10000403E1C8BA9uLL);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZN3xdr28dispatch_compute_image_statsILt8ELt8ELt16EEEvRKNS_7imageInERKNS_16colorTransformInERNS_10imageStatsEDv2_t_block_invoke;
  block[3] = &__block_descriptor_84_e8_v16__0Q8l;
  v25 = v16.i16[2];
  v24 = v16.i16[0];
  v27 = v18.i16[2];
  v26 = v18.i16[0];
  v21 = a1;
  v22 = a2;
  v23 = v11;
  v20 = v17;
  v28 = a4;
  dispatch_apply(0x40uLL, 0, block);
  v12 = 0;
  v14 = *a3;
  v13 = *(a3 + 4);
  v15 = *(a3 + 8);
  do
  {
    v14 = fmaxf(*&v11[v12], v14);
    v13 = *&v11[v12 + 4] + v13;
    *a3 = v14;
    *(a3 + 4) = v13;
    v15 += *&v11[v12 + 8];
    *(a3 + 8) = v15;
    v12 += 12;
  }

  while (v12 != 768);
  *(a3 + 4) = v13 / v15;
  free(v11);
}

void xdr::dispatch_compute_image_stats<(unsigned short)8,(unsigned short)8,(unsigned short)32>(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint16x4_t a5, uint32x4_t a6)
{
  a5.i32[0] = a4;
  a6.i64[0] = 0xFF000000FFLL;
  v10 = vand_s8(*&vaddw_u16(a6, a5), 0xFFFF0000FFFFLL);
  v18 = vshr_n_u32(v10, 8uLL);
  v16 = vshr_n_u32(vsra_n_u32(0x700000007, v10, 8uLL), 3uLL);
  v17 = vdivq_f32(xmmword_1862059A0, vaddq_f32(vorrq_s8(vmovl_u16(vdup_n_s32(a4)), vdupq_n_s32(0x4B400000u)), vdupq_n_s32(0xCB400000)));
  v11 = malloc_type_calloc(0x40uLL, 0xCuLL, 0x10000403E1C8BA9uLL);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZN3xdr28dispatch_compute_image_statsILt8ELt8ELt32EEEvRKNS_7imageInERKNS_16colorTransformInERNS_10imageStatsEDv2_t_block_invoke;
  block[3] = &__block_descriptor_84_e8_v16__0Q8l;
  v25 = v16.i16[2];
  v24 = v16.i16[0];
  v27 = v18.i16[2];
  v26 = v18.i16[0];
  v21 = a1;
  v22 = a2;
  v23 = v11;
  v20 = v17;
  v28 = a4;
  dispatch_apply(0x40uLL, 0, block);
  v12 = 0;
  v14 = *a3;
  v13 = *(a3 + 4);
  v15 = *(a3 + 8);
  do
  {
    v14 = fmaxf(*&v11[v12], v14);
    v13 = *&v11[v12 + 4] + v13;
    *a3 = v14;
    *(a3 + 4) = v13;
    v15 += *&v11[v12 + 8];
    *(a3 + 8) = v15;
    v12 += 12;
  }

  while (v12 != 768);
  *(a3 + 4) = v13 / v15;
  free(v11);
}

void xdr::dispatch_compute_image_stats<(unsigned short)8,(unsigned short)8,(unsigned short)64>(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint16x4_t a5, uint32x4_t a6)
{
  a5.i32[0] = a4;
  a6.i64[0] = 0x100000001;
  v10 = vand_s8(*&vaddw_u16(a6, a5), 0xFFFF0000FFFFLL);
  v18 = vshr_n_u32(v10, 9uLL);
  v16 = vshr_n_u32(vsra_n_u32(0x700000007, v10, 9uLL), 3uLL);
  v17 = vdivq_f32(xmmword_1862059A0, vaddq_f32(vorrq_s8(vmovl_u16(vdup_n_s32(a4)), vdupq_n_s32(0x4B400000u)), vdupq_n_s32(0xCB400000)));
  v11 = malloc_type_calloc(0x40uLL, 0xCuLL, 0x10000403E1C8BA9uLL);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZN3xdr28dispatch_compute_image_statsILt8ELt8ELt64EEEvRKNS_7imageInERKNS_16colorTransformInERNS_10imageStatsEDv2_t_block_invoke;
  block[3] = &__block_descriptor_84_e8_v16__0Q8l;
  v25 = v16.i16[2];
  v24 = v16.i16[0];
  v27 = v18.i16[2];
  v26 = v18.i16[0];
  v21 = a1;
  v22 = a2;
  v23 = v11;
  v20 = v17;
  v28 = a4;
  dispatch_apply(0x40uLL, 0, block);
  v12 = 0;
  v14 = *a3;
  v13 = *(a3 + 4);
  v15 = *(a3 + 8);
  do
  {
    v14 = fmaxf(*&v11[v12], v14);
    v13 = *&v11[v12 + 4] + v13;
    *a3 = v14;
    *(a3 + 4) = v13;
    v15 += *&v11[v12 + 8];
    *(a3 + 8) = v15;
    v12 += 12;
  }

  while (v12 != 768);
  *(a3 + 4) = v13 / v15;
  free(v11);
}

void sub_185EEEA54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  xdr::ColorBox<HDRColorTransformOut>::~ColorBox(&a31);
  _ZN3xdr8ImageBoxI20HDRPixelTransformOutLNS_7TextureIDv2_tDv2_fDv2_iE10AccessModeE1EED2Ev(&STACK[0x200]);
  _ZN3xdr8ImageBoxI20HDRPixelTransformOutLNS_7TextureIDv2_tDv2_fDv2_iE10AccessModeE1EED2Ev(&STACK[0x220]);
  _Unwind_Resume(a1);
}

void xdr::dispatch_compute_image_gainmap_stats<(unsigned short)2,(unsigned short)2,(unsigned short)4>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint16x4_t a7, uint32x4_t a8)
{
  a7.i32[0] = a6;
  a8.i64[0] = 0x700000007;
  v14 = vand_s8(*&vaddw_u16(a8, a7), 0xFFFF0000FFFFLL);
  v22 = vshr_n_u32(v14, 3uLL);
  v20 = vshr_n_u32(vsra_n_u32(0x700000007, v14, 3uLL), 3uLL);
  v21 = vdivq_f32(xmmword_1862059A0, vaddq_f32(vorrq_s8(vmovl_u16(vdup_n_s32(a6)), vdupq_n_s32(0x4B400000u)), vdupq_n_s32(0xCB400000)));
  v15 = malloc_type_calloc(0x40uLL, 0xCuLL, 0x10000403E1C8BA9uLL);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZN3xdr36dispatch_compute_image_gainmap_statsILt2ELt2ELt4EEEvRKNS_7imageInES3_RKNS_16colorTransformInERKNS_15gainTransformInERNS_10imageStatsEDv2_t_block_invoke;
  block[3] = &__block_descriptor_100_e8_v16__0Q8l;
  v31 = v20.i16[2];
  v30 = v20.i16[0];
  v33 = v22.i16[2];
  v32 = v22.i16[0];
  v25 = a1;
  v26 = a2;
  v27 = a3;
  v28 = a4;
  v29 = v15;
  v24 = v21;
  v34 = a6;
  dispatch_apply(0x40uLL, 0, block);
  v16 = 0;
  v18 = *a5;
  v17 = *(a5 + 4);
  v19 = *(a5 + 8);
  do
  {
    v18 = fmaxf(*&v15[v16], v18);
    v17 = *&v15[v16 + 4] + v17;
    *a5 = v18;
    *(a5 + 4) = v17;
    v19 += *&v15[v16 + 8];
    *(a5 + 8) = v19;
    v16 += 12;
  }

  while (v16 != 768);
  *(a5 + 4) = v17 / v19;
  free(v15);
}

double xdr::PixelFormatBGRA8Unorm::read(xdr::PixelFormatBGRA8Unorm *this, const unsigned __int8 *a2, int a3, uint8x8_t a4)
{
  a4.i32[0] = *&a2[4 * a3];
  v4 = vrev64q_s32(vdivq_f32(vaddq_f32(vorrq_s8(vmovl_u16(*&vmovl_u8(a4)), vdupq_n_s32(0x4B400000u)), vdupq_n_s32(0xCB400000)), vdupq_n_s32(0x437F0000u)));
  *&result = vextq_s8(v4, v4, 0xCuLL).u64[0];
  return result;
}

int8x8_t xdr::PixelFormatBGRA8Unorm::write(int32x4_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v4 = vrev64q_s32(a1);
  v5 = vdupq_n_s32(0x437F0000u);
  v6.i64[0] = 0x3F0000003F000000;
  v6.i64[1] = 0x3F0000003F000000;
  *v4.i8 = vmovn_s32(vcvtq_s32_f32(vminnmq_f32(vmaxnmq_f32(vmlaq_f32(v6, v5, vextq_s8(v4, v4, 0xCuLL)), 0), v5)));
  result = vuzp1_s8(*v4.i8, *v4.i8);
  *(a3 + 4 * a4) = result.i32[0];
  return result;
}

__n64 xdr::PixelFormatR8Unorm::read(xdr::PixelFormatR8Unorm *this, const unsigned __int8 *a2, int a3, float a4)
{
  LOBYTE(a4) = a2[a3];
  result.n64_f32[0] = LODWORD(a4) / 255.0;
  result.n64_u32[1] = 0;
  return result;
}

double xdr::PixelFormatR8Unorm::write(float32x4_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v4 = vdupq_n_s32(0x437F0000u);
  v5.i64[0] = 0x3F0000003F000000;
  v5.i64[1] = 0x3F0000003F000000;
  *&result = vminnmq_f32(vmaxnmq_f32(vmlaq_f32(v5, v4, a1), 0), v4).u64[0];
  *(a3 + a4) = *&result;
  return result;
}

float32x2_t xdr::PixelFormatRG8Unorm::read(xdr::PixelFormatRG8Unorm *this, const unsigned __int8 *a2, int a3)
{
  v3 = &a2[2 * a3];
  v4.i32[0] = *v3;
  v4.i32[1] = v3[1];
  return vdiv_f32(vadd_f32(vorr_s8(v4, vdup_n_s32(0x4B400000u)), vdup_n_s32(0xCB400000)), vdup_n_s32(0x437F0000u));
}

double xdr::PixelFormatRG8Unorm::write(float32x4_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v4 = vdupq_n_s32(0x437F0000u);
  v5 = (a3 + 2 * a4);
  v6.i64[0] = 0x3F0000003F000000;
  v6.i64[1] = 0x3F0000003F000000;
  *&result = vcvtq_s32_f32(vminnmq_f32(vmaxnmq_f32(vmlaq_f32(v6, v4, a1), 0), v4)).u64[0];
  v5[1] = BYTE4(result);
  *v5 = LOBYTE(result);
  return result;
}

__n64 xdr::PixelFormatR16Unorm::read(xdr::PixelFormatR16Unorm *this, const unsigned __int8 *a2, int a3, float a4)
{
  LOWORD(a4) = *&a2[2 * a3];
  result.n64_f32[0] = LODWORD(a4) / 65535.0;
  result.n64_u32[1] = 0;
  return result;
}

double xdr::PixelFormatR16Unorm::write(float32x4_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v4 = vdupq_n_s32(0x477FFF00u);
  v5.i64[0] = 0x3F0000003F000000;
  v5.i64[1] = 0x3F0000003F000000;
  *&result = vminnmq_f32(vmaxnmq_f32(vmlaq_f32(v5, v4, a1), 0), v4).u64[0];
  *(a3 + 2 * a4) = *&result;
  return result;
}

float32x2_t xdr::PixelFormatRG16Unorm::read(xdr::PixelFormatRG16Unorm *this, const unsigned __int8 *a2, int a3)
{
  v3 = &a2[4 * a3];
  v4.i32[0] = *v3;
  v4.i32[1] = *(v3 + 1);
  return vdiv_f32(vadd_f32(vorr_s8(v4, vdup_n_s32(0x4B400000u)), vdup_n_s32(0xCB400000)), vdup_n_s32(0x477FFF00u));
}

double xdr::PixelFormatRG16Unorm::write(float32x4_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v4 = vdupq_n_s32(0x477FFF00u);
  v5 = (a3 + 4 * a4);
  v6.i64[0] = 0x3F0000003F000000;
  v6.i64[1] = 0x3F0000003F000000;
  *&result = vcvtq_s32_f32(vminnmq_f32(vmaxnmq_f32(vmlaq_f32(v6, v4, a1), 0), v4)).u64[0];
  v5[1] = WORD2(result);
  *v5 = LOWORD(result);
  return result;
}

__n64 xdr::PixelFormatR16Float::read(xdr::PixelFormatR16Float *this, const unsigned __int8 *a2, int a3)
{
  _H0 = *&a2[2 * a3];
  __asm { FCVT            S0, H0 }

  result.n64_u32[1] = 0;
  return result;
}

__int16 xdr::PixelFormatR16Float::write@<H0>(float _S0@<S0>, uint64_t a2@<X0>, uint64_t a3@<X1>, unsigned int a4@<W2>)
{
  __asm { FCVT            H0, S0 }

  *(a3 + 2 * a4) = result;
  return result;
}

double xdr::PixelFormatBGR10A2Unorm::read(xdr::PixelFormatBGR10A2Unorm *this, const unsigned __int8 *a2, int a3)
{
  v3 = &a2[4 * a3];
  v4 = vld1q_dup_f32(v3);
  *&result = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v4, xmmword_1862059B0), xmmword_1862059C0)), xmmword_1862059D0).u64[0];
  return result;
}

float xdr::PixelFormatBGR10A2Unorm::write(int8x16_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v4.i64[0] = 0x3F0000003F000000;
  v4.i64[1] = 0x3F0000003F000000;
  v5 = vminnmq_f32(vmaxnmq_f32(vmlaq_f32(v4, xmmword_1862059E0, vextq_s8(a1, a1, 0xCuLL)), 0), xmmword_1862059E0);
  v6.i64[0] = 0x4F0000004F000000;
  v6.i64[1] = 0x4F0000004F000000;
  v7 = vcgtq_f32(v5, v6);
  v8 = vcvtq_s32_f32(vsubq_f32(v5, vandq_s8(v6, v7)));
  v6.i64[0] = 0x8000000080000000;
  v6.i64[1] = 0x8000000080000000;
  result = COERCE_FLOAT(vaddvq_s32(vshlq_u32(vaddq_s32(vandq_s8(v7, v6), v8), xmmword_1862059F0)));
  *(a3 + 4 * a4) = result;
  return result;
}

float16x4_t xdr::PixelFormatRGBA16Float::write(float32x4_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  result = vcvt_f16_f32(a1);
  *(a3 + 8 * a4) = result;
  return result;
}

int16x4_t xdr::PixelFormatRGBA16Unorm::write(float32x4_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v4 = vdupq_n_s32(0x477FFF00u);
  v5.i64[0] = 0x3F0000003F000000;
  v5.i64[1] = 0x3F0000003F000000;
  result = vmovn_s32(vcvtq_s32_f32(vminnmq_f32(vmaxnmq_f32(vmlaq_f32(v5, v4, a1), 0), v4)));
  *(a3 + 8 * a4) = result;
  return result;
}

void *_ZN3xdr8ImageBoxI19HDRPixelTransformInLNS_7TextureIDv2_tDv2_fDv2_iE10AccessModeE0EEC2EP10__CVBufferRKS1_(void *result, uint64_t a2, int *a3)
{
  *result = a2;
  result[1] = a3;
  result[2] = 0;
  result[3] = 0;
  v3 = *a3;
  if ((*a3 - 1) < 3)
  {
    goto LABEL_4;
  }

  if (v3 == 4)
  {
    operator new();
  }

  if (v3 == 5)
  {
LABEL_4:
    operator new();
  }

  return result;
}

uint64_t xdr::PixelBufferTexture::PixelBufferTexture(uint64_t a1, const void *a2, unsigned int a3, int a4)
{
  v8 = a3;
  WidthOfPlane = gFunc_CVPixelBufferGetWidthOfPlane(a2, a3);
  HeightOfPlane = gFunc_CVPixelBufferGetHeightOfPlane(a2, v8);
  *(a1 + 8) = a4;
  *(a1 + 12) = WidthOfPlane;
  *(a1 + 14) = HeightOfPlane;
  *a1 = &unk_1EF4D2340;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = CFRetain(a2);
  if (!gFunc_CVPixelBufferLockBaseAddress(a2, a4 == 0))
  {
    *(a1 + 24) = gFunc_CVPixelBufferGetBaseAddressOfPlane(a2, v8);
    *(a1 + 32) = gFunc_CVPixelBufferGetBytesPerRowOfPlane(a2, v8);
  }

  PixelFormatType = gFunc_CVPixelBufferGetPixelFormatType(a2);
  xdr::PixelFormat::choosePixelFormat(PixelFormatType, a3, (a1 + 40));
  return a1;
}

void xdr::PixelBufferTexture::~PixelBufferTexture(xdr::PixelBufferTexture *this)
{
  xdr::PixelBufferTexture::~PixelBufferTexture(this);

  JUMPOUT(0x186602850);
}

{
  *this = &unk_1EF4D2340;
  v2 = *(this + 5);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  gFunc_CVPixelBufferUnlockBaseAddress(*(this + 2), *(this + 2) == 0);
  CFRelease(*(this + 2));
}

double xdr::PixelBufferTexture::read(uint64_t a1, __int32 a2, uint16x4_t a3)
{
  a3.i32[0] = a2;
  v3 = vmovl_u16(a3).u64[0];
  v4.i32[0] = *(a1 + 12);
  v4.i32[1] = *(a1 + 14);
  v5 = vcgt_u32(v4, vand_s8(v3, 0xFFFF0000FFFFLL));
  if ((vminv_u16(vuzp1_s16(v5, v5)) & 0x8000) == 0)
  {
    return 0.0;
  }

  v6 = *(a1 + 40);
  if (!v6)
  {
    return 0.0;
  }

  v7 = *(a1 + 24);
  if (!v7)
  {
    return 0.0;
  }

  (*(*v6 + 16))(*(a1 + 40), v7 + *(a1 + 32) * v3.u16[2], a2);
  return result;
}

uint64_t xdr::PixelBufferTexture::write(uint64_t result, __int32 a2, double a3, uint16x4_t a4)
{
  a4.i32[0] = a2;
  v4 = vmovl_u16(a4).u64[0];
  v5.i32[0] = *(result + 12);
  v5.i32[1] = *(result + 14);
  v6 = vcgt_u32(v5, vand_s8(v4, 0xFFFF0000FFFFLL));
  if ((vminv_u16(vuzp1_s16(v6, v6)) & 0x8000) != 0)
  {
    v7 = *(result + 40);
    if (v7)
    {
      v8 = *(result + 24);
      if (v8)
      {
        return (*(*v7 + 24))(*(result + 40), v8 + *(result + 32) * v4.u16[2], a2);
      }
    }
  }

  return result;
}

void *_ZN3xdr8ImageBoxI20HDRPixelTransformOutLNS_7TextureIDv2_tDv2_fDv2_iE10AccessModeE1EEC2EP10__CVBufferRKS1_(void *result, uint64_t a2, int *a3)
{
  *result = a2;
  result[1] = a3;
  result[2] = 0;
  result[3] = 0;
  v3 = *a3;
  if ((*a3 - 1) < 3)
  {
    goto LABEL_4;
  }

  if (v3 == 4)
  {
    operator new();
  }

  if (v3 == 5)
  {
LABEL_4:
    operator new();
  }

  return result;
}

uint64_t xdr::ColorBox<HDRColorTransformIn>::ColorBox(uint64_t result, _DWORD *a2)
{
  *result = a2;
  *(result + 8) = 0u;
  *(result + 24) = 0u;
  if (*a2 == 6)
  {
    operator new();
  }

  v2 = a2[20];
  if (v2 == 5)
  {
    operator new();
  }

  if (v2 == 6)
  {
    operator new();
  }

  if (a2[60] == 6)
  {
    operator new();
  }

  return result;
}

xdr::TableTexture *xdr::TableTexture::TableTexture(xdr::TableTexture *this, NSData *a2)
{
  v3 = a2;
  v4 = [(NSData *)v3 length];
  *(this + 2) = 0;
  *(this + 6) = v4 >> 1;
  *this = &unk_1EF4D2398;
  *(this + 2) = 0;
  v5 = [(NSData *)v3 bytes];
  *(this + 4) = 0;
  *(this + 3) = v5;
  v6 = v3;
  *(this + 2) = v6;
  xdr::PixelFormat::choosePixelFormat(1278226536, 0, this + 4);

  return this;
}

void xdr::TableTexture::~TableTexture(xdr::TableTexture *this)
{
  xdr::TableTexture::~TableTexture(this);

  JUMPOUT(0x186602850);
}

{
  *this = &unk_1EF4D2398;
  v1 = *(this + 2);
  v2 = *(this + 4);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }
}

double xdr::TableTexture::read(xdr::TableTexture *this, uint64_t a2)
{
  if (*(this + 6) <= a2)
  {
    return 0.0;
  }

  v3 = *(this + 4);
  if (!v3)
  {
    return 0.0;
  }

  v5 = *(this + 3);
  if (!v5)
  {
    return 0.0;
  }

  (*(*v3 + 16))(v3, v5, a2);
  return result;
}

uint64_t xdr::TableTexture::write(uint64_t result, uint64_t a2)
{
  if (*(result + 12) > a2)
  {
    v2 = result;
    result = *(result + 32);
    if (result)
    {
      v4 = *(v2 + 24);
      if (v4)
      {
        return (*(*result + 24))(result, v4, a2);
      }
    }
  }

  return result;
}

int16x4_t *xdr::CubeTexture::CubeTexture(int16x4_t *this, NSData *a2)
{
  v3 = a2;
  v4 = xdr::CubeTexture::cubeSize([(NSData *)v3 length]>> 3);
  this[1].i32[0] = 0;
  this[2] = v4;
  *this = &unk_1EF4D23F0;
  this[3] = 0;
  v5 = [(NSData *)v3 bytes];
  this[7] = 0;
  this[4] = v5;
  v6 = v3;
  this[3] = v6;
  v7 = this[2];
  v8 = 8 * v7.u16[0];
  this[5] = v8;
  this[6] = (v8 * v7.u16[1]);
  xdr::PixelFormat::choosePixelFormat(1380411457, 0, &this[7]);

  return this;
}

int16x4_t xdr::CubeTexture::cubeSize(unint64_t this)
{
  v2 = llroundf(cbrtf(this));
  if (v2 * v2 * v2 != this)
  {
    xdr::CubeTexture::cubeSize();
  }

  return vdup_n_s16(v2);
}

void xdr::CubeTexture::~CubeTexture(xdr::CubeTexture *this)
{
  xdr::CubeTexture::~CubeTexture(this);

  JUMPOUT(0x186602850);
}

{
  *this = &unk_1EF4D23F0;
  v1 = *(this + 3);
  v2 = *(this + 7);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }
}

double xdr::CubeTexture::read(uint16x4_t *a1, uint16x4_t a2)
{
  v2 = vcgt_u16(a1[2], a2);
  v2.i16[3] = v2.i16[2];
  if ((vminv_u16(v2) & 0x8000) == 0)
  {
    return 0.0;
  }

  v3 = a1[7];
  if (!*&v3)
  {
    return 0.0;
  }

  v4 = a1[4];
  if (!*&v4)
  {
    return 0.0;
  }

  (*(**&v3 + 16))(*&a1[7], *&v4 + *&a1[5] * a2.u16[1] + *&a1[6] * a2.u16[2], a2.u16[0]);
  return result;
}

uint16x4_t *xdr::CubeTexture::write(uint16x4_t *result, double a2, uint16x4_t a3)
{
  v3 = vcgt_u16(result[2], a3);
  v3.i16[3] = v3.i16[2];
  if ((vminv_u16(v3) & 0x8000) != 0)
  {
    v4 = result;
    result = result[7];
    if (result)
    {
      v5 = v4[4];
      if (v5)
      {
        return (*(*result + 24))(result, *&v5 + *&v4[5] * a3.u16[1] + *&v4[6] * a3.u16[2], a3.u16[0]);
      }
    }
  }

  return result;
}

uint64_t xdr::ColorBox<HDRColorTransformOut>::ColorBox(uint64_t result, _DWORD *a2)
{
  *result = a2;
  *(result + 8) = 0u;
  *(result + 24) = 0u;
  if (a2[76] == 6)
  {
    operator new();
  }

  v2 = a2[16];
  if (v2 == 5)
  {
    operator new();
  }

  if (v2 == 6)
  {
    operator new();
  }

  if (a2[56] == 6)
  {
    operator new();
  }

  return result;
}

void *xdr::ColorBox<HDRColorTransformOut>::~ColorBox(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = a1[4];
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  return a1;
}

uint64_t _ZN3xdr8ImageBoxI20HDRPixelTransformOutLNS_7TextureIDv2_tDv2_fDv2_iE10AccessModeE1EED2Ev(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void ___ZN3xdr36dispatch_convert_image_to_image_loopILt1ELt1EEEvRKNS_7imageInERKNS_8imageOutERKNS_16colorTransformInERKNS_17colorTransformOutEDv2_t_block_invoke(uint64_t a1, __int16 a2, double a3, double a4, uint16x4_t a5)
{
  v9 = 0x100000000;
  v10 = 1;
  if (*(a1 + 80))
  {
    v7 = 0;
    do
    {
      HIWORD(v8) = a2;
      LOWORD(v8) = v7;
      xdr::convert_image_to_image_loop<(unsigned short)1,(unsigned short)1>(*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), v8, &v9, *(a1 + 32), a4, a5);
      ++v7;
    }

    while (*(a1 + 80) > v7);
  }
}

double xdr::convert_image_to_image_loop<(unsigned short)1,(unsigned short)1>(uint64_t a1, float32x4_t *a2, float32x4_t *a3, float32x4_t *a4, __int32 a5, _DWORD *a6, int8x16_t a7, double a8, uint16x4_t a9)
{
  v20 = *MEMORY[0x1E69E9840];
  a9.i32[0] = a5;
  xdr::image_sample(a1, a6, COERCE_DOUBLE(vmla_f32(*&vextq_s8(a7, a7, 8uLL), vadd_f32(vorr_s8(*&vmovl_u16(a9), vdup_n_s32(0x4B400000u)), vdup_n_s32(0xCB400000)), *a7.i8)));
  v18 = v12.i32[3];
  *v13.i64 = xdr::apply_color_trc(a3, v12);
  xdr::apply_tone_mapping(&a3[5], v13);
  if ((a3[23].i8[0] & 1) == 0)
  {
    v14 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a3[20], v14.f32[0]), a3[21], *v14.f32, 1), a3[22], v14, 2);
  }

  if ((a4[3].i8[0] & 1) == 0)
  {
    v14 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*a4, v14.f32[0]), a4[1], *v14.f32, 1), a4[2], v14, 2);
  }

  xdr::apply_tone_mapping(&a4[4], v14);
  *v16.i64 = xdr::apply_color_trc(&a4[19], v15);
  v16.i32[3] = v18;
  v19 = v16;
  *&result = xdr::image_write_loop<(unsigned short)1,(unsigned short)1>(a2, &v19, *v16.f32);
  return result;
}

__int16 xdr::image_write_loop<(unsigned short)1,(unsigned short)1>@<H0>(float32x4_t *a1@<X0>, float32x4_t *a2@<X1>, int16x4_t a3@<D0>)
{
  v4 = a1[1].i32[0];
  if (v4 <= 2)
  {
    if (v4 != 1 && v4 != 2)
    {
      return a3.i16[0];
    }

LABEL_8:
    if (a1[7].i16[0] != 1)
    {
      return a3.i16[0];
    }

    v5 = *a2;
    goto LABEL_12;
  }

  if (v4 != 3)
  {
    if (v4 == 4)
    {
      a3 = *a1[7].f32;
      v9 = vceq_s16(a3, 0x200020001);
      v9.i16[3] = v9.i16[2];
      if ((vminv_u16(v9) & 0x8000) != 0)
      {
        return a3.i16[0];
      }

      v10 = vceq_s16(a3, 0x100020001);
      v10.i16[3] = v10.i16[2];
      if ((vminv_u16(v10) & 0x8000) != 0)
      {
        return a3.i16[0];
      }

      a3 = vceq_s16(a3, 0x1000100010001);
      a3.i16[3] = a3.i16[2];
      a3.i16[0] = vminv_u16(a3);
      if ((a3.i16[0] & 0x8000) == 0)
      {
        return a3.i16[0];
      }

      v11 = *a2;
      v11.i32[3] = 0;
      v12 = vmaxnmq_f32(v11, 0);
      v12.i32[3] = 0;
      v13 = vminnmq_f32(v12, xmmword_186205A00);
      v14 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a1[4], v13.f32[0]), a1[5], *v13.f32, 1), a1[6], v13, 2);
      v14.i32[3] = 1.0;
      v16 = vmlaq_f32(a1[3], v14, a1[2]);
      (*(*a1->i64[0] + 24))(*v16.i32);
      v7 = a1->i64[1];
      v6.n128_u64[0] = vextq_s8(v16, v16, 4uLL).u64[0];
      v6.n128_u64[1] = 0x3F80000000000000;
      goto LABEL_13;
    }

    if (v4 != 5)
    {
      return a3.i16[0];
    }

    goto LABEL_8;
  }

  if (a1[7].i16[0] != 1)
  {
    return a3.i16[0];
  }

  v5 = vmulq_laneq_f32(*a2, *a2, 3);
  v5.i32[3] = HIDWORD(*a2);
LABEL_12:
  v6 = vmlaq_f32(a1[3], v5, a1[2]);
  v7 = a1->i64[0];
LABEL_13:
  v8 = *(*v7 + 24);

  v8(v6);
  return a3.i16[0];
}

void xdr::image_sample(uint64_t a1, _DWORD *a2, double a3)
{
  v5 = vadd_f32(*(a1 + 128), vmla_lane_f32(vmul_n_f32(*(a1 + 112), *&a3), *(a1 + 120), *&a3, 1));
  _ZNK3xdr7TextureIDv2_tDv2_fDv2_iE6sampleERKNS_7SamplerES2_S3_(*a1, a2, v5, 0);
  if (*(a1 + 16) == 4)
  {
    _ZNK3xdr7TextureIDv2_tDv2_fDv2_iE6sampleERKNS_7SamplerES2_S3_(*(a1 + 8), a2, v5, 0);
  }
}

double xdr::apply_color_trc(uint64_t a1, float32x4_t a2)
{
  _Q3 = a2;
  v4 = *a1;
  if (*a1 > 6)
  {
    if (v4 > 9)
    {
      if (v4 == 10)
      {
        a2.i32[0] = *(a1 + 36);
        v67 = vmlaq_n_f32(vdupq_lane_s32(*a2.f32, 0), vabsq_f32(_Q3), 1.0 - a2.f32[0]);
        v67.i32[3] = 0;
        v68 = vmaxnmq_f32(v67, 0);
        v131 = vmulq_f32(v68, v68);
        v136 = _Q3;
        v118 = v68;
        v123 = *(a1 + 32);
        v69 = vdivq_f32(vsubq_f32(v68, vdupq_lane_s32(*(a1 + 24), 0)), vdupq_lane_s32(*(a1 + 16), 0));
        v69.i32[3] = 0;
        v70 = _simd_exp_f4(v69);
        v71.i64[0] = 0x3F0000003F000000;
        v71.i64[1] = 0x3F0000003F000000;
        v72 = vcgtq_f32(v118, v71);
        v72.i32[3] = 0;
        v28 = vbslq_s8(vcltzq_s32(v72), vmulq_n_f32(vaddq_f32(v70, vdupq_lane_s32(*(a1 + 20), 0)), COERCE_FLOAT(*(a1 + 28))), vmulq_n_f32(v131, *&v123));
        goto LABEL_27;
      }

      if (v4 != 11)
      {
        if (v4 == 12)
        {
          a2.i32[0] = *(a1 + 36);
          v35 = vmlaq_n_f32(vdupq_lane_s32(*a2.f32, 0), vabsq_f32(_Q3), 1.0 - a2.f32[0]);
          v35.i32[3] = 0;
          v36 = vmaxnmq_f32(v35, 0);
          v35.i64[0] = 0x8000000080000000;
          v35.i64[1] = 0x8000000080000000;
          __asm { FMOV            V2.4S, #1.0 }

          v138 = vbslq_s8(vorrq_s8(vcltzq_f32(_Q3), vcgtzq_f32(_Q3)), vorrq_s8(vandq_s8(_Q3, v35), _Q2), 0);
          v128 = vmulq_f32(v36, v36);
          v117 = v36;
          v122 = *(a1 + 32);
          v38 = vdivq_f32(vsubq_f32(v36, vdupq_lane_s32(*(a1 + 24), 0)), vdupq_lane_s32(*(a1 + 16), 0));
          v38.i32[3] = 0;
          v39 = _simd_exp_f4(v38);
          v40 = vmulq_n_f32(v128, *&v122);
          v41.i64[0] = 0x3F0000003F000000;
          v41.i64[1] = 0x3F0000003F000000;
          v42 = vcgtq_f32(v117, v41);
          v42.i32[3] = 0;
          v139 = vmulq_f32(v138, vbslq_s8(vcltzq_s32(v42), vmulq_n_f32(vaddq_f32(v39, vdupq_lane_s32(*(a1 + 20), 0)), COERCE_FLOAT(*(a1 + 28))), v40));
          _Q0 = *(a1 + 48);
          _Q4 = vmulq_f32(_Q0, v139);
          _S2 = fmaxf(v139.f32[0], fmaxf(v139.f32[1], v139.f32[2]));
          __asm { FMLA            S4, S2, V0.S[3] }

          v46 = fmaxf(fabsf(*_Q4.i32), 0.000061035);
          v47.i64[0] = 0x8000000080000000;
          v47.i64[1] = 0x8000000080000000;
          v40.i32[0] = 1.0;
          LODWORD(v48) = vbslq_s8(v47, v40, _Q4).u32[0];
          if (*_Q4.i32 == 0.0)
          {
            v48 = 0.0;
          }

          _Q3.i64[0] = vmulq_n_f32(v139, *(a1 + 40) * (v48 * powf(v46, *(a1 + 44)))).u64[0];
        }

        return *_Q3.i64;
      }

      _Q0 = *(a1 + 48);
      _Q2 = vmulq_f32(_Q3, _Q0);
      v142 = _Q3;
      _Q3.f32[0] = fmaxf(_Q3.f32[0], fmaxf(_Q3.f32[1], _Q3.f32[2]));
      __asm { FMLA            S2, S3, V0.S[3] }

      v104 = fmaxf(fabsf(*_Q2.i32), 0.000061035);
      _Q3.i32[0] = 1.0;
      v105.i64[0] = 0x8000000080000000;
      v105.i64[1] = 0x8000000080000000;
      _Q3.i32[0] = vbslq_s8(v105, _Q3, _Q2).u32[0];
      if (*_Q2.i32 == 0.0)
      {
        _Q3.f32[0] = 0.0;
      }

      v106 = vmulq_n_f32(v142, *(a1 + 40) * (_Q3.f32[0] * powf(v104, *(a1 + 44))));
      v107 = vabsq_f32(vmulq_n_f32(v106, COERCE_FLOAT(*(a1 + 32))));
      v108.i64[0] = 0x8000000080000000;
      v108.i64[1] = 0x8000000080000000;
      __asm
      {
        FMOV            V2.4S, #1.0
        FMOV            V3.4S, #3.0
      }

      v111 = vmulq_f32(v107, _Q3);
      v111.i32[3] = 0;
      v143 = vbslq_s8(vorrq_s8(vcltzq_f32(v106), vcgtzq_f32(v106)), vorrq_s8(vandq_s8(v106, v108), _Q2), 0);
      v135 = vsqrtq_f32(v111);
      v119 = v107;
      v124 = *(a1 + 16);
      __asm { FMOV            V1.4S, #12.0 }

      v113 = vmlaq_f32(vnegq_f32(vdupq_lane_s32(*(a1 + 20), 0)), _Q1, v107);
      v113.i32[3] = 0;
      v114 = _simd_log_f4(v113);
      v115 = vcgtq_f32(v119, vdupq_lane_s32(*(a1 + 28), 0));
      v115.i32[3] = 0;
      v28 = vbslq_s8(vcltzq_s32(v115), vmlaq_n_f32(vdupq_lane_s32(*(a1 + 24), 0), v114, *&v124), v135);
      v58 = v143;
    }

    else
    {
      v136 = a2;
      if (v4 != 7)
      {
        if (v4 == 8)
        {
          v89 = vmulq_n_f32(vabsq_f32(a2), COERCE_FLOAT(*(a1 + 36)));
          v89.i32[3] = 0;
          v90 = _simd_pow_f4(v89, xmmword_186205A20);
          __asm { FMOV            V3.4S, #1.0 }

          v133 = _Q3;
          v92 = vdivq_f32(vmlaq_f32(vdupq_n_s32(0x3F560000u), vdupq_n_s32(0x4196D000u), v90), vmlaq_f32(_Q3, vdupq_n_s32(0x41958000u), v90));
          v92.i32[3] = 0;
          v28 = _simd_pow_f4(v92, xmmword_186205A30);
          _Q3 = v133;
          v73 = vorrq_s8(vcltzq_f32(v136), vcgtzq_f32(v136));
          v93.i64[0] = 0x8000000080000000;
          v93.i64[1] = 0x8000000080000000;
          v75 = vandq_s8(v136, v93);
          goto LABEL_30;
        }

        if (v4 != 9)
        {
          return *_Q3.i64;
        }

        v20 = vabsq_f32(vmulq_n_f32(a2, COERCE_FLOAT(*(a1 + 32))));
        __asm { FMOV            V0.4S, #3.0 }

        v22 = vmulq_f32(v20, _Q0);
        v23 = v20;
        v116 = v20;
        v22.i32[3] = 0;
        v120 = *(a1 + 16);
        v126 = vsqrtq_f32(v22);
        __asm { FMOV            V1.4S, #12.0 }

        v25 = vmlaq_f32(vnegq_f32(vdupq_lane_s32(*(a1 + 20), 0)), _Q1, v23);
        v25.i32[3] = 0;
        v26 = _simd_log_f4(v25);
        v27 = vcgtq_f32(v116, vdupq_lane_s32(*(a1 + 28), 0));
        v27.i32[3] = 0;
        v28 = vbslq_s8(vcltzq_s32(v27), vmlaq_n_f32(vdupq_lane_s32(*(a1 + 24), 0), v26, *&v120), v126);
LABEL_27:
        v73 = vorrq_s8(vcltzq_f32(v136), vcgtzq_f32(v136));
        v74.i64[0] = 0x8000000080000000;
        v74.i64[1] = 0x8000000080000000;
        v75 = vandq_s8(v136, v74);
        __asm { FMOV            V3.4S, #1.0 }

LABEL_30:
        v58 = vandq_s8(vorrq_s8(v75, _Q3), v73);
        goto LABEL_31;
      }

      LODWORD(v129) = *(a1 + 36);
      v52 = vabsq_f32(a2);
      v52.i32[3] = 0;
      v53 = _simd_pow_f4(v52, xmmword_186205A40);
      v54 = vaddq_f32(v53, vdupq_n_s32(0xBF560000));
      v54.i32[3] = 0;
      v55 = vdivq_f32(vmaxnmq_f32(v54, 0), vmlaq_f32(vdupq_n_s32(0x4196D000u), vdupq_n_s32(0xC1958000), v53));
      v55.i32[3] = 0;
      v28 = _simd_pow_f4(v55, xmmword_186205A50);
      v56.i64[0] = 0x8000000080000000;
      v56.i64[1] = 0x8000000080000000;
      __asm { FMOV            V3.4S, #1.0 }

      v58 = vmulq_n_f32(vandq_s8(vorrq_s8(vandq_s8(v136, v56), _Q3), vorrq_s8(vcltzq_f32(v136), vcgtzq_f32(v136))), v129);
    }

LABEL_31:
    _Q3.i64[0] = vmulq_f32(v58, v28).u64[0];
    return *_Q3.i64;
  }

  if (v4 > 3)
  {
    if (v4 == 4)
    {
      v59 = vmlaq_n_f32(vdupq_lane_s32(*(a1 + 20), 0), a2, COERCE_FLOAT(*(a1 + 16)));
      v60 = vabsq_f32(v59);
      v60.i32[3] = 0;
      v140 = _Q3;
      v61 = vmaxnmq_f32(v60, xmmword_186205A60);
      v62.i64[0] = 0x8000000080000000;
      v62.i64[1] = 0x8000000080000000;
      __asm { FMOV            V4.4S, #1.0 }

      v130 = vbslq_s8(vorrq_s8(vcltzq_f32(v59), vcgtzq_f32(v59)), vorrq_s8(vandq_s8(v59, v62), _Q4), 0);
      v61.i32[3] = 0;
      v64 = vdupq_lane_s32(*(a1 + 44), 0);
      v64.i32[3] = 0;
      v65 = _simd_pow_f4(v61, v64);
      _Q3 = v140;
      v19 = vmulq_f32(v65, v130);
      v18 = vdupq_lane_s32(*(a1 + 28), 0);
      v16 = vmulq_n_f32(v140, COERCE_FLOAT(*(a1 + 24)));
      goto LABEL_25;
    }

    if (v4 != 5)
    {
      if (v4 == 6)
      {
        _Q3.i32[3] = 0;
        v29 = *(a1 + 64);
        v30 = vmaxnmq_f32(_Q3, 0);
        v30.i32[3] = 0;
        v137 = vminnmq_f32(v30, xmmword_186205A00);
        v145 = 1;
        v144 = 0x100000000;
        *v31.i64 = xdr::Texture<unsigned short,float,int>::sample(v29, &v144, 0, v137.f32[0], 1.0);
        v127 = v31;
        v145 = 1;
        v144 = 0x100000000;
        *v33.i64 = xdr::Texture<unsigned short,float,int>::sample(v29, &v144, 0, v137.f32[1], v32);
        v121 = v33;
        v145 = 1;
        v144 = 0x100000000;
        xdr::Texture<unsigned short,float,int>::sample(v29, &v144, 0, v137.f32[2], v34);
        _Q3.i64[0] = vzip1q_s32(v127, v121).u64[0];
      }

      return *_Q3.i64;
    }

    v94 = vmlaq_n_f32(vdupq_lane_s32(*(a1 + 20), 0), a2, COERCE_FLOAT(*(a1 + 16)));
    v95 = vabsq_f32(v94);
    v95.i32[3] = 0;
    v141 = _Q3;
    v96 = vmaxnmq_f32(v95, xmmword_186205A60);
    v97.i64[0] = 0x8000000080000000;
    v97.i64[1] = 0x8000000080000000;
    __asm { FMOV            V4.4S, #1.0 }

    v134 = vbslq_s8(vorrq_s8(vcltzq_f32(v94), vcgtzq_f32(v94)), vorrq_s8(vandq_s8(v94, v97), _Q4), 0);
    v96.i32[3] = 0;
    v99 = vdupq_lane_s32(*(a1 + 44), 0);
    v99.i32[3] = 0;
    v85 = vaddq_f32(vdupq_lane_s32(*(a1 + 32), 0), vmulq_f32(_simd_pow_f4(v96, v99), v134));
    v88 = vmlaq_n_f32(vdupq_lane_s32(*(a1 + 36), 0), v141, COERCE_FLOAT(*(a1 + 24)));
    v100 = vcgtq_f32(vdupq_lane_s32(*(a1 + 28), 0), v141);
    v100.i32[3] = 0;
    v87 = vcltzq_s32(v100);
LABEL_33:
    _Q3.i64[0] = vbslq_s8(v87, v88, v85).u64[0];
    return *_Q3.i64;
  }

  v136 = a2;
  switch(v4)
  {
    case 1:
      v49 = vabsq_f32(a2);
      v49.i32[3] = 0;
      v50 = vmaxnmq_f32(v49, xmmword_186205A60);
      v50.i32[3] = 0;
      v51 = vdupq_lane_s32(*(a1 + 44), 0);
      v51.i32[3] = 0;
      v28 = _simd_pow_f4(v50, v51);
      goto LABEL_27;
    case 2:
      v77 = vmlaq_n_f32(vdupq_lane_s32(*(a1 + 20), 0), a2, COERCE_FLOAT(*(a1 + 16)));
      v78 = vabsq_f32(v77);
      v78.i32[3] = 0;
      v79 = vmaxnmq_f32(v78, xmmword_186205A60);
      v80.i64[0] = 0x8000000080000000;
      v80.i64[1] = 0x8000000080000000;
      __asm { FMOV            V4.4S, #1.0 }

      v132 = vbslq_s8(vorrq_s8(vcltzq_f32(v77), vcgtzq_f32(v77)), vorrq_s8(vandq_s8(v77, v80), _Q4), 0);
      v79.i32[3] = 0;
      v82 = vdupq_lane_s32(*(a1 + 44), 0);
      v82.i32[3] = 0;
      v83 = _simd_pow_f4(v79, v82);
      *v84.i32 = -*(a1 + 20) / *(a1 + 16);
      v85 = vmulq_f32(v83, v132);
      v86 = vcgtq_f32(vdupq_lane_s32(v84, 0), v136);
      v86.i32[3] = 0;
      v87 = vcltzq_s32(v86);
      v88 = 0uLL;
      goto LABEL_33;
    case 3:
      v5 = vmlaq_n_f32(vdupq_lane_s32(*(a1 + 20), 0), a2, COERCE_FLOAT(*(a1 + 16)));
      v6 = vabsq_f32(v5);
      v6.i32[3] = 0;
      v7 = vmaxnmq_f32(v6, xmmword_186205A60);
      v8.i64[0] = 0x8000000080000000;
      v8.i64[1] = 0x8000000080000000;
      __asm { FMOV            V4.4S, #1.0 }

      v125 = vbslq_s8(vorrq_s8(vcltzq_f32(v5), vcgtzq_f32(v5)), vorrq_s8(vandq_s8(v5, v8), _Q4), 0);
      v7.i32[3] = 0;
      v14 = vdupq_lane_s32(*(a1 + 44), 0);
      v14.i32[3] = 0;
      v15 = _simd_pow_f4(v7, v14);
      v16 = vdupq_lane_s32(*(a1 + 24), 0);
      *v17.i32 = -*(a1 + 20) / *(a1 + 16);
      v18 = vdupq_lane_s32(v17, 0);
      v19 = vaddq_f32(v16, vmulq_f32(v15, v125));
      _Q3 = v136;
LABEL_25:
      v66 = vcgtq_f32(v18, _Q3);
      v66.i32[3] = 0;
      _Q3.i64[0] = vbslq_s8(vcltzq_s32(v66), v16, v19).u64[0];
      break;
  }

  return *_Q3.i64;
}

void xdr::apply_tone_mapping(uint64_t a1, float32x4_t a2)
{
  _Q3 = a2;
  if ((*(a1 + 128) & 1) == 0)
  {
    _Q3 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*(a1 + 80), a2.f32[0]), *(a1 + 96), *a2.f32, 1), *(a1 + 112), a2, 2);
  }

  v4 = *a1;
  if (*a1 > 3)
  {
    switch(v4)
    {
      case 4:
        v69 = vmulq_n_f32(_Q3, COERCE_FLOAT(*(a1 + 36)));
        v42 = fmaxf(v69.f32[0], fmaxf(v69.f32[1], v69.f32[2]));
        if (v42 >= 0.001)
        {
          v43 = v42;
        }

        else
        {
          v43 = 0.001;
        }

        xdr::rw_curve<float>(a1 + 16, v43);
        _Q3 = vmulq_n_f32(v69, v44 / v43);
        break;
      case 5:
        v54 = *(a1 + 144);
        _Q1 = *(a1 + 48);
        v71 = _Q3;
        _S2 = fmaxf(_Q3.f32[0], fmaxf(_Q3.f32[1], _Q3.f32[2]));
        __asm { FMLA            S0, S2, V1.S[3] }

        v58 = *(a1 + 40);
        v73 = 1;
        v72 = 0x100000000;
        v59 = xdr::Texture<unsigned short,float,int>::sample(v54, &v72, 0, _S0, *&_Q1);
        v52 = v71;
        v53 = v58 * *&v59;
        goto LABEL_26;
      case 6:
        v26 = *(a1 + 152);
        v73 = 1;
        v72 = 0x100000000;
        *v27.i64 = _ZNK3xdr7TextureIDv3_tDv3_fDv3_iE6sampleERKNS_7SamplerES2_S3_(v26, &v72, _Q3, 0);
        _Q3 = v27;
        break;
    }
  }

  else
  {
    if (v4 != 1)
    {
      if (v4 != 2)
      {
        if (v4 == 3)
        {
          v5 = *(a1 + 28);
          v6 = *&v5.i32[1];
          v7 = vsubq_f32(_Q3, vdupq_lane_s32(*(a1 + 16), 0));
          v7.i32[3] = 0;
          v60 = vmulq_n_f32(vmaxnmq_f32(v7, 0), COERCE_FLOAT(*(a1 + 20)));
          v61 = vdupq_lane_s32(*(a1 + 24), 0);
          v62 = vdupq_lane_s32(v5, 0);
          v64 = v5;
          __asm { FMOV            V0.4S, #1.0 }

          v65 = _Q0;
          LODWORD(v67) = *(a1 + 36);
          v13 = vmlaq_n_f32(_Q0, vsubq_f32(v60, v61), *v5.i32);
          v13.i32[3] = 0;
          v14 = _simd_log_f4(v13);
          v15 = vcgtq_f32(v60, v61);
          v15.i32[3] = 0;
          v63 = vbslq_s8(vcltzq_s32(v15), vaddq_f32(v61, vdivq_f32(v14, v62)), v60);
          v16 = vabsq_f32(v63);
          v16.i32[3] = 0;
          v17 = vmaxnmq_f32(v16, xmmword_186205A60);
          v17.i32[3] = 0;
          v18 = vdupq_lane_s32(v64, 1);
          v18.i32[3] = 0;
          v19 = _simd_pow_f4(v17, v18);
          v20.i64[0] = 0x8000000080000000;
          v20.i64[1] = 0x8000000080000000;
          v21 = vbslq_s8(vorrq_s8(vcltzq_f32(v63), vcgtzq_f32(v63)), vorrq_s8(vandq_s8(v63, v20), v65), 0);
          if (v6 == 1.0)
          {
            v22 = 0;
          }

          else
          {
            v22 = -1;
          }

          v23 = vdupq_n_s32(v22);
          v23.i32[3] = 0;
          v24 = vmulq_n_f32(vbslq_s8(vcltzq_s32(v23), vmulq_f32(v19, v21), v63), v67);
          v24.i32[3] = 0;
          v25 = vmaxnmq_f32(v24, 0);
          v25.i32[3] = 0;
          _Q3 = vminnmq_f32(v25, xmmword_186205A00);
        }

        goto LABEL_27;
      }

      _Q0 = *(a1 + 48);
      v46 = *(a1 + 40);
      _Q2 = vmulq_f32(_Q3, _Q0);
      v70 = _Q3;
      _Q3.f32[0] = fmaxf(_Q3.f32[0], fmaxf(_Q3.f32[1], _Q3.f32[2]));
      __asm { FMLA            S2, S3, V0.S[3] }

      v48 = fmaxf(fabsf(*_Q2.i32), 0.000061035);
      _Q3.i32[0] = 1.0;
      v49.i64[0] = 0x8000000080000000;
      v49.i64[1] = 0x8000000080000000;
      _Q3.i32[0] = vbslq_s8(v49, _Q3, _Q2).u32[0];
      if (*_Q2.i32 == 0.0)
      {
        _Q3.f32[0] = 0.0;
      }

      v50 = _Q3.f32[0];
      v51 = powf(v48, *(a1 + 44));
      v52 = v70;
      v53 = v46 * (v50 * v51);
LABEL_26:
      _Q3 = vmulq_n_f32(v52, v53);
      goto LABEL_27;
    }

    v28 = *(a1 + 16);
    v29 = *(a1 + 20);
    v30 = *(a1 + 24);
    v31 = *(a1 + 28);
    v32 = *(a1 + 32);
    v33 = *(a1 + 36);
    v68 = _Q3;
    v34 = vmulq_f32(_Q3, *(a1 + 48));
    v35 = v34.f32[2] + vaddv_f32(*v34.f32);
    v66 = *(a1 + 40);
    v36 = powf(fminf(fmaxf(v35 / v66, 0.0), 1.0), 0.1593);
    v37 = ((v36 * 18.852) + 0.83594) / ((v36 * 18.688) + 1.0);
    v38 = powf(v37, 78.844);
    v39 = xdr::pq_eetf<float>(v38, v29, v28, v31, v30, v32, v33);
    v40 = 1.0;
    if (v35 > 0.0)
    {
      v41 = powf(v39, 0.012683);
      v40 = (v66 * powf(fmaxf(v41 + -0.83594, 0.0) / ((v41 * -18.688) + 18.852), 6.2774)) / v35;
    }

    _Q3 = vmulq_n_f32(v68, v40);
  }

LABEL_27:
  xdr::apply_color_trc(a1 + 160, _Q3);
}

float xdr::pq_eetf<float>(float a1, float a2, float a3, float a4, float a5, float a6, float a7)
{
  v7 = a3 - a2;
  v8 = (a1 - a2) / v7;
  v9 = (v8 - a6) * a7;
  v10 = (1.0 - a6) * ((v9 * (v9 * v9)) + (v9 * v9) * -2.0 + v9) + (1.0 - ((v9 * v9) * 3.0 - (v9 * (v9 * v9)) * 2.0)) * a6 + ((v9 * v9) * 3.0 + (v9 * (v9 * v9)) * -2.0) * a5;
  if (v8 > a6)
  {
    v8 = v10;
  }

  v11 = (1.0 - v8) * (1.0 - v8);
  v12 = v8 + (a4 * (v11 * v11));
  if (v8 > 1.0)
  {
    v12 = v8;
  }

  if (v8 <= 0.0)
  {
    v13 = a4;
  }

  else
  {
    v13 = v12;
  }

  return a2 + (v13 * v7);
}

void xdr::rw_curve<float>(uint64_t a1, float a2)
{
  _S8 = a2;
  v12 = *(a1 + 32);
  v4 = *(a1 + 48);
  v5 = *(a1 + 24) * a2;
  __asm { FMLA            S9, S8, V1.S[3] }

  v11 = xdr::rw_spline<float>(a1, a2);
  if (v4 >= _S8)
  {
    v11 = v5;
  }

  if (*&v12 >= _S8)
  {
    _S9 = v11;
  }

  powf(fmaxf(fabsf(*(a1 + 16) * _S9), 0.000061035), *(a1 + 28));
}

uint64_t ___ZN3xdr36dispatch_convert_image_to_image_loopILt2ELt1EEEvRKNS_7imageInERKNS_8imageOutERKNS_16colorTransformInERKNS_17colorTransformOutEDv2_t_block_invoke(uint64_t result, __int16 a2, double a3, uint16x4_t a4)
{
  v8 = 0x100000000;
  v9 = 1;
  if (*(result + 80))
  {
    v5 = result;
    v6 = 0;
    do
    {
      HIWORD(v7) = a2;
      LOWORD(v7) = v6;
      result = xdr::convert_image_to_image_loop<(unsigned short)2,(unsigned short)1>(*(v5 + 48), *(v5 + 56), *(v5 + 64), *(v5 + 72), v7, &v8, *(v5 + 32), a4);
      ++v6;
    }

    while (*(v5 + 80) > v6);
  }

  return result;
}

uint64_t xdr::convert_image_to_image_loop<(unsigned short)2,(unsigned short)1>(uint64_t a1, uint64_t a2, float32x4_t *a3, float32x4_t *a4, __int32 a5, _DWORD *a6, int8x16_t a7, uint16x4_t a8)
{
  v14 = 0;
  v32 = *MEMORY[0x1E69E9840];
  a8.i32[0] = a5;
  v30 = 0u;
  v31 = 0u;
  v15 = &v30;
  v16 = vshl_u32(*&vmovl_u16(a8), 1);
  v17 = vdup_n_s32(0x4B400000u);
  v28 = *a7.i8;
  v27 = vextq_s8(a7, a7, 8uLL).u64[0];
  v18 = vdup_n_s32(0xCB400000);
  v19 = 1;
  do
  {
    v20 = v19;
    xdr::image_sample(a1, a6, COERCE_DOUBLE(vmla_f32(v27, vadd_f32(vorr_s8(vand_s8(vadd_s32(v14, v16), 0xFFFF0000FFFFLL), v17), v18), v28)));
    v29 = v21.i32[3];
    *v22.i64 = xdr::apply_color_trc(a3, v21);
    xdr::apply_tone_mapping(&a3[5], v22);
    if ((a3[23].i8[0] & 1) == 0)
    {
      v23 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a3[20], v23.f32[0]), a3[21], *v23.f32, 1), a3[22], v23, 2);
    }

    if ((a4[3].i8[0] & 1) == 0)
    {
      v23 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*a4, v23.f32[0]), a4[1], *v23.f32, 1), a4[2], v23, 2);
    }

    xdr::apply_tone_mapping(&a4[4], v23);
    *&v25 = xdr::apply_color_trc(&a4[19], v24);
    v19 = 0;
    HIDWORD(v25) = v29;
    *v15 = v25;
    v14 = 1;
    v15 = &v31;
  }

  while ((v20 & 1) != 0);
  return xdr::image_write_loop<(unsigned short)2,(unsigned short)1>(a2, &v30, a5, *&v25);
}

uint64_t xdr::image_write_loop<(unsigned short)2,(unsigned short)1>(uint64_t result, uint64_t a2, __int32 a3, uint16x4_t a4)
{
  v5 = result;
  a4.i32[0] = a3;
  v6 = vmovl_u16(a4).u64[0];
  v7 = *(result + 16);
  if (v7 <= 2)
  {
    if (v7 == 1)
    {
LABEL_12:
      if (*(result + 112) == 1)
      {
        v13 = 0;
        v14 = vshl_u32(v6, 1);
        v15 = 1;
        do
        {
          v16 = v15;
          v17 = vadd_s32(v13, v14);
          HIWORD(v52) = v17.i16[2];
          LOWORD(v52) = v17.i16[0];
          result = (*(*v5->i64[0] + 24))(v5->i64[0], v52, vmlaq_f32(v5[3], *(a2 + 16 * v13), v5[2]));
          v15 = 0;
          v13 = 1;
        }

        while ((v16 & 1) != 0);
      }

      return result;
    }

    if (v7 == 2 && *(result + 112) == 1)
    {
      v8 = 0;
      v9 = vshl_u32(v6, 1);
      v10 = 1;
      do
      {
        v11 = v10;
        v12 = vadd_s32(v8, v9);
        HIWORD(v50) = v12.i16[2];
        LOWORD(v50) = v12.i16[0];
        result = (*(*v5->i64[0] + 24))(v5->i64[0], v50, vmlaq_f32(v5[3], *(a2 + 16 * v8), v5[2]));
        v10 = 0;
        v8 = 1;
      }

      while ((v11 & 1) != 0);
    }
  }

  else
  {
    switch(v7)
    {
      case 3:
        if (*(result + 112) == 1)
        {
          v18 = 0;
          v19 = vshl_u32(v6, 1);
          v20 = 1;
          do
          {
            v21 = v20;
            v22 = vmulq_laneq_f32(*(a2 + 16 * v18), *(a2 + 16 * v18), 3);
            v22.i32[3] = HIDWORD(*(a2 + 16 * v18));
            v23 = vmlaq_f32(v5[3], v22, v5[2]);
            *v22.f32 = vadd_s32(v18, v19);
            HIWORD(v51) = v22.i16[2];
            LOWORD(v51) = v22.i16[0];
            result = (*(*v5->i64[0] + 24))(v5->i64[0], v51, v23);
            v20 = 0;
            v18 = 1;
          }

          while ((v21 & 1) != 0);
        }

        break;
      case 4:
        v24 = *(result + 112);
        v25 = vceq_s16(v24, 0x200020001);
        v25.i16[3] = v25.i16[2];
        if ((vminv_u16(v25) & 0x8000) == 0)
        {
          v26 = vceq_s16(v24, 0x100020001);
          v26.i16[3] = v26.i16[2];
          if ((vminv_u16(v26) & 0x8000) != 0)
          {
            v37 = 0;
            v38 = vshl_u32(v6, 1);
            v39 = 0;
            v40 = 1;
            do
            {
              v41 = *(a2 + 16 * v37);
              v41.i32[3] = 0;
              v42 = vmaxnmq_f32(v41, 0);
              v42.i32[3] = 0;
              v43 = vminnmq_f32(v42, xmmword_186205A00);
              v44 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v5[4], v43.f32[0]), v5[5], *v43.f32, 1), v5[6], v43, 2);
              v44.i32[3] = 1.0;
              v45 = v40;
              v46 = vmlaq_f32(v5[3], v44, v5[2]);
              v44.i64[0] = vextq_s8(v46, v46, 4uLL).u64[0];
              v43.i32[0] = v46.i32[0];
              *v46.i8 = vadd_s32(v37, v38);
              HIWORD(v54) = v46.i16[2];
              v39 = vadd_f32(v39, *v44.f32);
              LOWORD(v54) = v46.i16[0];
              (*(*v5->i64[0] + 24))(v5->i64[0], v54, v43.f32[0]);
              v40 = 0;
              v37 = 1;
            }

            while ((v45 & 1) != 0);
            v47.n128_u64[0] = vmul_f32(v39, 0x3F0000003F000000);
            v47.n128_u64[1] = 0x3F80000000000000;
            v48 = *(*v5->i64[1] + 24);

            return v48(v47);
          }

          else
          {
            v27 = vceq_s16(v24, 0x1000100010001);
            v27.i16[3] = v27.i16[2];
            if ((vminv_u16(v27) & 0x8000) != 0)
            {
              v28 = 0;
              v29 = vshl_u32(v6, 1);
              v30 = 1;
              do
              {
                v31 = *(a2 + 16 * v28);
                v32 = v30;
                v31.i32[3] = 0;
                v33 = vmaxnmq_f32(v31, 0);
                v33.i32[3] = 0;
                v34 = vminnmq_f32(v33, xmmword_186205A00);
                v35 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v5[4], v34.f32[0]), v5[5], *v34.f32, 1), v5[6], v34, 2);
                v35.i32[3] = 1.0;
                v49 = vmlaq_f32(v5[3], v35, v5[2]);
                *v35.f32 = vadd_s32(v28, v29);
                HIWORD(v53) = v35.i16[2];
                LOWORD(v53) = v35.i16[0];
                (*(*v5->i64[0] + 24))(v5->i64[0], v53, *v49.i32);
                v36.n128_u64[0] = vextq_s8(v49, v49, 4uLL).u64[0];
                v36.n128_u64[1] = 0x3F80000000000000;
                result = (*(*v5->i64[1] + 24))(v5->i64[1], v53, v36);
                v30 = 0;
                v28 = 1;
              }

              while ((v32 & 1) != 0);
            }
          }
        }

        break;
      case 5:
        goto LABEL_12;
      default:
        return result;
    }
  }

  return result;
}

float32x4_t *___ZN3xdr36dispatch_convert_image_to_image_loopILt2ELt2EEEvRKNS_7imageInERKNS_8imageOutERKNS_16colorTransformInERKNS_17colorTransformOutEDv2_t_block_invoke(float32x4_t *result, __int16 a2, double a3, uint16x4_t a4)
{
  v8 = 0x100000000;
  v9 = 1;
  if (result[5].i16[0])
  {
    v5 = result;
    v6 = 0;
    do
    {
      HIWORD(v7) = a2;
      LOWORD(v7) = v6;
      result = xdr::convert_image_to_image_loop<(unsigned short)2,(unsigned short)2>(v5[3].i64[0], v5[3].i64[1], v5[4].i64[0], v5[4].i64[1], v7, &v8, v5[2], a4);
      ++v6;
    }

    while (v5[5].u16[0] > v6);
  }

  return result;
}

float32x4_t *xdr::convert_image_to_image_loop<(unsigned short)2,(unsigned short)2>(uint64_t a1, float32x4_t *a2, float32x4_t *a3, float32x4_t *a4, __int32 a5, _DWORD *a6, int8x16_t a7, uint16x4_t a8)
{
  v13 = 0;
  v34 = *MEMORY[0x1E69E9840];
  a8.i32[0] = a5;
  v14 = vmovl_u16(a8).u64[0];
  memset(v33, 0, sizeof(v33));
  v15 = vadd_s32(v14, v14);
  v31 = *a7.i8;
  v30 = vextq_s8(a7, a7, 8uLL).u64[0];
  v16 = 1;
  v17 = vdup_n_s32(0x4B400000u);
  v18 = vdup_n_s32(0xCB400000);
  do
  {
    v19 = 0;
    v20 = v16;
    v21 = 1;
    do
    {
      v22 = v21;
      xdr::image_sample(a1, a6, COERCE_DOUBLE(vmla_f32(v30, vadd_f32(vorr_s8(vand_s8(vorr_s8(__PAIR64__(v13, v19), v15), 0xFFFF0000FFFFLL), v17), v18), v31)));
      v32 = v23.i32[3];
      *v24.i64 = xdr::apply_color_trc(a3, v23);
      xdr::apply_tone_mapping(&a3[5], v24);
      if ((a3[23].i8[0] & 1) == 0)
      {
        v25 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a3[20], v25.f32[0]), a3[21], *v25.f32, 1), a3[22], v25, 2);
      }

      if ((a4[3].i8[0] & 1) == 0)
      {
        v25 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*a4, v25.f32[0]), a4[1], *v25.f32, 1), a4[2], v25, 2);
      }

      xdr::apply_tone_mapping(&a4[4], v25);
      *&v27 = xdr::apply_color_trc(&a4[19], v26);
      v21 = 0;
      HIDWORD(v27) = v32;
      v33[2 * v19 + v13] = v27;
      v19 = 1;
    }

    while ((v22 & 1) != 0);
    v16 = 0;
    v13 = 1;
  }

  while ((v20 & 1) != 0);
  return xdr::image_write_loop<(unsigned short)2,(unsigned short)2>(a2, v33, a5, *&v27);
}

float32x4_t *xdr::image_write_loop<(unsigned short)2,(unsigned short)2>(float32x4_t *result, uint64_t a2, __int32 a3, uint16x4_t a4)
{
  v5 = result;
  a4.i32[0] = a3;
  v6 = vmovl_u16(a4).u64[0];
  v7 = result[1].i32[0];
  if (v7 <= 2)
  {
    if (v7 != 1)
    {
      if (v7 == 2 && result[7].i16[0] == 1)
      {
        v8 = 0;
        v9 = vadd_s32(v6, v6);
        v10 = 1;
        do
        {
          v11 = 0;
          v12 = v10;
          v13 = 1;
          do
          {
            v14 = v13;
            v15 = vorr_s8(__PAIR64__(v8, v11), v9);
            HIWORD(v115) = v15.i16[2];
            LOWORD(v115) = v15.i16[0];
            result = (*(*v5->i64[0] + 24))(v5->i64[0], v115, vmlaq_f32(v5[3], *(a2 + 32 * v11 + 16 * v8), v5[2]));
            v13 = 0;
            v11 = 1;
          }

          while ((v14 & 1) != 0);
          v10 = 0;
          v8 = 1;
        }

        while ((v12 & 1) != 0);
      }

      return result;
    }
  }

  else
  {
    if (v7 == 3)
    {
      if (result[7].i16[0] == 1)
      {
        v28 = 0;
        v29 = vadd_s32(v6, v6);
        v30 = 1;
        do
        {
          v31 = 0;
          v32 = v30;
          v33 = 1;
          do
          {
            v34 = v33;
            v35 = *(a2 + 32 * v31 + 16 * v28);
            v36 = vmulq_laneq_f32(v35, v35, 3);
            v36.i32[3] = v35.i32[3];
            v37 = vmlaq_f32(v5[3], v36, v5[2]);
            *v36.f32 = vorr_s8(__PAIR64__(v28, v31), v29);
            HIWORD(v116) = v36.i16[2];
            LOWORD(v116) = v36.i16[0];
            result = (*(*v5->i64[0] + 24))(v5->i64[0], v116, v37);
            v33 = 0;
            v31 = 1;
          }

          while ((v34 & 1) != 0);
          v30 = 0;
          v28 = 1;
        }

        while ((v32 & 1) != 0);
      }

      return result;
    }

    if (v7 == 4)
    {
      v38 = *result[7].f32;
      v39 = vceq_s16(v38, 0x200020001);
      v39.i16[3] = v39.i16[2];
      if ((vminv_u16(v39) & 0x8000) != 0)
      {
        v64 = 0;
        v65 = vadd_s32(v6, v6);
        v66 = 0;
        v67 = 1;
        v68 = 0uLL;
        v69 = xmmword_186205A00;
        v70 = 1.0;
        do
        {
          v71 = 0;
          v72 = v67;
          v73 = 1;
          do
          {
            v74 = *(a2 + 32 * v71 + 16 * v64);
            v74.i32[3] = 0;
            v75 = vmaxnmq_f32(v74, v68);
            v75.i32[3] = 0;
            v76 = vminnmq_f32(v75, v69);
            v77 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v5[4], v76.f32[0]), v5[5], *v76.f32, 1), v5[6], v76, 2);
            v77.f32[3] = v70;
            v78 = v73;
            v79 = vmlaq_f32(v5[3], v77, v5[2]);
            v77.i64[0] = vextq_s8(v79, v79, 4uLL).u64[0];
            v76.i32[0] = v79.i32[0];
            *v79.i8 = vorr_s8(__PAIR64__(v64, v71), v65);
            HIWORD(v121) = v79.i16[2];
            v66 = vadd_f32(v66, *v77.f32);
            LOWORD(v121) = v79.i16[0];
            (*(*v5->i64[0] + 24))(v5->i64[0], v121, v76.f32[0]);
            v69 = xmmword_186205A00;
            v70 = 1.0;
            v68 = 0uLL;
            v73 = 0;
            v71 = 1;
          }

          while ((v78 & 1) != 0);
          v67 = 0;
          v64 = 1;
        }

        while ((v72 & 1) != 0);
        v27 = v5->i64[1];
        __asm { FMOV            V0.2S, #0.25 }

        v26.n128_u64[0] = vmul_f32(v66, _D0);
      }

      else
      {
        v40 = vceq_s16(v38, 0x100020001);
        v40.i16[3] = v40.i16[2];
        if ((vminv_u16(v40) & 0x8000) != 0)
        {
          v82 = 0;
          v83 = vadd_s32(v6, v6);
          v38.i32[0] = a3;
          v84 = 2 * v6.i16[2];
          v85 = 1;
          v86 = vmovl_u16(v38).u16[0];
          do
          {
            v87 = 0;
            v88 = v85;
            v89 = 0;
            v90 = 1;
            do
            {
              v91 = *(a2 + 32 * v87 + 16 * v82);
              v91.i32[3] = 0;
              v92 = vmaxnmq_f32(v91, 0);
              v92.i32[3] = 0;
              v93 = vminnmq_f32(v92, xmmword_186205A00);
              v94 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v5[4], v93.f32[0]), v5[5], *v93.f32, 1), v5[6], v93, 2);
              v94.i32[3] = 1.0;
              v95 = v90;
              v96 = vmlaq_f32(v5[3], v94, v5[2]);
              v94.i64[0] = vextq_s8(v96, v96, 4uLL).u64[0];
              v93.i32[0] = v96.i32[0];
              *v96.i8 = vorr_s8(__PAIR64__(v82, v87), v83);
              HIWORD(v120) = v96.i16[2];
              v89 = vadd_f32(v89, *v94.f32);
              LOWORD(v120) = v96.i16[0];
              (*(*v5->i64[0] + 24))(v5->i64[0], v120, v93.f32[0]);
              v90 = 0;
              v87 = 1;
            }

            while ((v95 & 1) != 0);
            v97.n128_u64[0] = vmul_f32(v89, 0x3F0000003F000000);
            v97.n128_u64[1] = 0x3F80000000000000;
            HIWORD(v119) = v82 | v84;
            LOWORD(v119) = v86;
            result = (*(*v5->i64[1] + 24))(v5->i64[1], v119, v97);
            v85 = 0;
            v82 = 1;
          }

          while ((v88 & 1) != 0);
          return result;
        }

        v41 = vceq_s16(v38, 0x1000100010001);
        v41.i16[3] = v41.i16[2];
        if ((vminv_u16(v41) & 0x8000) != 0)
        {
          v98 = 0;
          v99 = vadd_s32(v6, v6);
          v100 = 1;
          v101 = 0uLL;
          v102 = xmmword_186205A00;
          v103 = 1.0;
          do
          {
            v104 = 0;
            v105 = v100;
            v106 = 1;
            do
            {
              v107 = *(a2 + 32 * v104 + 16 * v98);
              v108 = v106;
              v107.i32[3] = 0;
              v109 = vmaxnmq_f32(v107, v101);
              v109.i32[3] = 0;
              v110 = vminnmq_f32(v109, v102);
              v111 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v5[4], v110.f32[0]), v5[5], *v110.f32, 1), v5[6], v110, 2);
              v111.f32[3] = v103;
              v114 = vmlaq_f32(v5[3], v111, v5[2]);
              *v111.f32 = vorr_s8(__PAIR64__(v98, v104), v99);
              HIWORD(v118) = v111.i16[2];
              LOWORD(v118) = v111.i16[0];
              (*(*v5->i64[0] + 24))(v5->i64[0], v118, *v114.i32);
              v112.n128_u64[0] = vextq_s8(v114, v114, 4uLL).u64[0];
              v112.n128_u64[1] = 0x3F80000000000000;
              result = (*(*v5->i64[1] + 24))(v5->i64[1], v118, v112);
              v102 = xmmword_186205A00;
              v103 = 1.0;
              v101 = 0uLL;
              v106 = 0;
              v104 = 1;
            }

            while ((v108 & 1) != 0);
            v100 = 0;
            v98 = 1;
          }

          while ((v105 & 1) != 0);
          return result;
        }

        v42 = vceq_s16(v38, 0x2000200020002);
        v42.i16[3] = v42.i16[2];
        if ((vminv_u16(v42) & 0x8000) == 0)
        {
          return result;
        }

        v43 = 0;
        v44 = 1;
        v45 = 0uLL;
        do
        {
          v46 = 0;
          v47 = v44;
          v48 = 1;
          do
          {
            v49 = *(a2 + 32 * v46 + 16 * v43);
            v49.i32[3] = 0;
            v50 = vmaxnmq_f32(v49, 0);
            v50.i32[3] = 0;
            v51 = vminnmq_f32(v50, xmmword_186205A00);
            v52 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(result[4], v51.f32[0]), result[5], *v51.f32, 1), result[6], v51, 2);
            v52.i32[3] = 1.0;
            v53 = v48;
            v45 = vaddq_f32(v45, vmlaq_f32(result[3], v52, result[2]));
            v46 = 1;
            v48 = 0;
          }

          while ((v53 & 1) != 0);
          v44 = 0;
          v43 = 1;
        }

        while ((v47 & 1) != 0);
        v54.n128_f32[0] = 0.25 * v45.f32[0];
        v54.n128_u32[1] = 0;
        v54.n128_u32[2] = 0;
        v54.n128_u32[3] = 1.0;
        v113 = v45;
        (*(*result->i64[0] + 24))(v54);
        v27 = v5->i64[1];
        __asm { FMOV            V1.2S, #0.25 }

        v26.n128_u64[0] = vmul_f32(*&vextq_s8(v113, v113, 4uLL), _D1);
      }

      v26.n128_u64[1] = 0x3F80000000000000;
LABEL_45:
      v81 = *(*v27 + 24);

      return v81(v26);
    }

    if (v7 != 5)
    {
      return result;
    }
  }

  v16 = result[7].u16[0];
  if (v16 != 1)
  {
    if (v16 != 2)
    {
      return result;
    }

    v17 = 0;
    v18 = 0uLL;
    v19 = 1;
    do
    {
      v20 = v19;
      v18 = vaddq_f32(vaddq_f32(v18, *(a2 + 16 * v17)), *(a2 + 16 * v17 + 32));
      v17 = 1;
      v19 = 0;
    }

    while ((v20 & 1) != 0);
    __asm { FMOV            V1.4S, #0.25 }

    v26 = vmlaq_f32(result[3], vmulq_f32(v18, _Q1), result[2]);
    v27 = result->i64[0];
    goto LABEL_45;
  }

  v56 = 0;
  v57 = vadd_s32(v6, v6);
  v58 = 1;
  do
  {
    v59 = 0;
    v60 = v58;
    v61 = 1;
    do
    {
      v62 = v61;
      v63 = vorr_s8(__PAIR64__(v56, v59), v57);
      HIWORD(v117) = v63.i16[2];
      LOWORD(v117) = v63.i16[0];
      result = (*(*v5->i64[0] + 24))(v5->i64[0], v117, vmlaq_f32(v5[3], *(a2 + 32 * v59 + 16 * v56), v5[2]));
      v61 = 0;
      v59 = 1;
    }

    while ((v62 & 1) != 0);
    v58 = 0;
    v56 = 1;
  }

  while ((v60 & 1) != 0);
  return result;
}

void ___ZN3xdr44dispatch_convert_gainmap_image_to_image_loopILt1ELt1EEEvRKNS_7imageInES3_RKNS_8imageOutERKNS_16colorTransformInERKNS_15gainTransformInERKNS_17colorTransformOutEDv2_t_block_invoke(int8x16_t *a1, __int16 a2, double a3, uint16x4_t a4)
{
  v12 = *MEMORY[0x1E69E9840];
  v9 = 0x100000000;
  v10 = 1;
  if (a1[6].i16[0])
  {
    v6 = 0;
    do
    {
      HIWORD(v8) = a2;
      LOWORD(v8) = v6;
      v7 = a1[4].i64[0];
      v11 = xdr::convert_gainmap_image_to_image(a1[3].i64[0], a1[3].i64[1], a1[4].i64[1], a1[5].i64[0], a1[5].i64[1], v8, &v9, a1[2], a4);
      xdr::image_write_loop<(unsigned short)1,(unsigned short)1>(v7, &v11, v11.n128_u64[0]);
      ++v6;
    }

    while (a1[6].u16[0] > v6);
  }
}

__n128 xdr::convert_gainmap_image_to_image(uint64_t a1, uint64_t a2, float32x4_t *a3, float32x4_t *a4, float32x4_t *a5, __int32 a6, _DWORD *a7, int8x16_t a8, uint16x4_t a9)
{
  a9.i32[0] = a6;
  v21 = COERCE_DOUBLE(vmla_f32(*&vextq_s8(a8, a8, 8uLL), vadd_f32(vorr_s8(*&vmovl_u16(a9), vdup_n_s32(0x4B400000u)), vdup_n_s32(0xCB400000)), *a8.i8));
  xdr::image_sample(a1, a7, v21);
  v23 = v14;
  xdr::image_sample(a2, a7, v21);
  v22 = v15;
  *v16.i64 = xdr::apply_color_trc(a3, v23);
  xdr::apply_tone_mapping(&a3[5], v16);
  if ((a3[23].i8[0] & 1) == 0)
  {
    v17 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a3[20], v17.f32[0]), a3[21], *v17.f32, 1), a3[22], v17, 2);
  }

  *v18.i64 = xdr::apply_gain_mapping(a4, v17, v22);
  if ((a4[10].i8[0] & 1) == 0)
  {
    v18 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a4[7], v18.f32[0]), a4[8], *v18.f32, 1), a4[9], v18, 2);
  }

  if ((a5[3].i8[0] & 1) == 0)
  {
    v18 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*a5, v18.f32[0]), a5[1], *v18.f32, 1), a5[2], v18, 2);
  }

  xdr::apply_tone_mapping(&a5[4], v18);
  result.n128_f64[0] = xdr::apply_color_trc(&a5[19], v19);
  result.n128_u32[3] = v23.u32[3];
  return result;
}

double xdr::apply_gain_mapping(uint64_t a1, float32x4_t a2, float32x4_t a3)
{
  if (*a1 == 2)
  {
    v16 = *(a1 + 16);
    v25 = *(a1 + 32);
    v17 = vabsq_f32(a3);
    v17.i32[3] = 0;
    v29 = a2;
    v18 = vmaxnmq_f32(v17, xmmword_186205A60);
    v18.i32[3] = 0;
    v16.i32[3] = 0;
    v27 = a3;
    v19 = _simd_pow_f4(v18, v16);
    v20.i64[0] = 0x8000000080000000;
    v20.i64[1] = 0x8000000080000000;
    __asm { FMOV            V5.4S, #1.0 }

    v22 = vmulq_f32(*(a1 + 96), vmlaq_f32(*(a1 + 48), vmulq_f32(vandq_s8(vorrq_s8(vandq_s8(v27, v20), _Q5), vorrq_s8(vcltzq_f32(v27), vcgtzq_f32(v27))), v19), v25));
    v22.i32[3] = 0;
    a2.i64[0] = vmlaq_f32(vnegq_f32(*(a1 + 80)), vaddq_f32(*(a1 + 64), v29), _simd_exp2_f4(v22)).u64[0];
  }

  else if (*a1 == 1)
  {
    v6 = *(a1 + 16);
    v24 = *(a1 + 32);
    v7 = vabsq_f32(a3);
    v7.i32[3] = 0;
    v28 = a2;
    v8 = vmaxnmq_f32(v7, xmmword_186205A60);
    v8.i32[3] = 0;
    v6.i32[3] = 0;
    v26 = a3;
    v9 = _simd_pow_f4(v8, v6);
    v10.i64[0] = 0x8000000080000000;
    v10.i64[1] = 0x8000000080000000;
    __asm { FMOV            V4.4S, #1.0 }

    a2.i64[0] = vmulq_f32(vmlaq_f32(*(a1 + 48), vmulq_f32(vandq_s8(vorrq_s8(vandq_s8(v26, v10), _Q4), vorrq_s8(vcltzq_f32(v26), vcgtzq_f32(v26))), v9), v24), v28).u64[0];
  }

  return *a2.i64;
}

uint64_t ___ZN3xdr44dispatch_convert_gainmap_image_to_image_loopILt2ELt1EEEvRKNS_7imageInES3_RKNS_8imageOutERKNS_16colorTransformInERKNS_15gainTransformInERKNS_17colorTransformOutEDv2_t_block_invoke(uint64_t result, unsigned int a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v19 = 0x100000000;
  v20 = 1;
  if (*(result + 96))
  {
    v3 = result;
    v4 = 0;
    do
    {
      HIWORD(v16) = a2;
      LOWORD(v16) = v4;
      v5 = *(v3 + 48);
      v6 = *(v3 + 56);
      v7 = *(v3 + 64);
      v8 = *(v3 + 72);
      v9 = *(v3 + 80);
      v10 = *(v3 + 88);
      v11 = *(v3 + 32);
      v21 = 0u;
      v22 = 0u;
      v14 = vshl_u32(__PAIR64__(a2, v4), 1);
      v15 = v11;
      HIWORD(v18) = v14.i16[2];
      LOWORD(v18) = v14.i16[0];
      v21 = xdr::convert_gainmap_image_to_image(v5, v6, v8, v9, v10, v18, &v19, v11, v14);
      v12 = vadd_s32(v14, 1);
      HIWORD(v17) = v12.i16[2];
      LOWORD(v17) = v12.i16[0];
      v22 = xdr::convert_gainmap_image_to_image(v5, v6, v8, v9, v10, v17, &v19, v15, v13);
      result = xdr::image_write_loop<(unsigned short)2,(unsigned short)1>(v7, &v21, v16, v22.n128_u64[0]);
      ++v4;
    }

    while (*(v3 + 96) > v4);
  }

  return result;
}

float32x4_t *___ZN3xdr44dispatch_convert_gainmap_image_to_image_loopILt2ELt2EEEvRKNS_7imageInES3_RKNS_8imageOutERKNS_16colorTransformInERKNS_15gainTransformInERKNS_17colorTransformOutEDv2_t_block_invoke(float32x4_t *result, __int16 a2)
{
  v6 = 0x100000000;
  v7 = 1;
  if (result[6].i16[0])
  {
    v3 = result;
    v4 = 0;
    do
    {
      HIWORD(v5) = a2;
      LOWORD(v5) = v4;
      result = xdr::convert_gainmap_image_to_image_loop<(unsigned short)2,(unsigned short)2>(v3[3].i64[0], v3[3].i64[1], v3[4].i64[0], v3[4].i64[1], v3[5].i64[0], v3[5].i64[1], v5, &v6, v3[2]);
      ++v4;
    }

    while (v3[6].u16[0] > v4);
  }

  return result;
}

float32x4_t *xdr::convert_gainmap_image_to_image_loop<(unsigned short)2,(unsigned short)2>(uint64_t a1, uint64_t a2, float32x4_t *a3, float32x4_t *a4, float32x4_t *a5, float32x4_t *a6, __int32 a7, _DWORD *a8, int8x16_t a9)
{
  v30 = a9;
  v15 = 0;
  v37 = *MEMORY[0x1E69E9840];
  a9.i32[0] = a7;
  v16 = vmovl_u16(*a9.i8).u64[0];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v17 = &v33;
  v18 = &v35;
  v29 = vadd_s32(v16, v16);
  v19 = 1;
  do
  {
    v20 = v19;
    v21.i32[0] = 0;
    v21.i32[1] = v15;
    v28 = v15;
    LOWORD(v32) = v29.i16[0];
    HIWORD(v32) = vorr_s8(v29, v21).i16[2];
    *v17 = xdr::convert_gainmap_image_to_image(a1, a2, a4, a5, a6, v32, a8, v30, v21);
    v22.i32[1] = v28;
    v22.i32[0] = 1;
    v23 = vorr_s8(v22, v29);
    HIWORD(v31) = v23.i16[2];
    LOWORD(v31) = v23.i16[0];
    v24 = xdr::convert_gainmap_image_to_image(a1, a2, a4, a5, a6, v31, a8, v30, v22);
    v19 = 0;
    *v18 = v24;
    v18 = &v36;
    v17 = &v34;
    v15 = 1;
  }

  while ((v20 & 1) != 0);
  return xdr::image_write_loop<(unsigned short)2,(unsigned short)2>(a3, &v33, a7, v24.n128_u64[0]);
}

void ___ZN3xdr44dispatch_convert_image_to_gainmap_image_loopILt1ELt1EEEvRKNS_7imageInERKNS_8imageOutES6_RKNS_16colorTransformInES9_RKNS_17colorTransformOutERKNS_16gainTransformOutEDv2_t_block_invoke(uint64_t a1, __int16 a2, double a3, uint16x4_t a4)
{
  v8 = 0x100000000;
  v9 = 1;
  if (*(a1 + 104))
  {
    v6 = 0;
    do
    {
      HIWORD(v7) = a2;
      LOWORD(v7) = v6;
      xdr::convert_image_to_gainmap_image_loop<(unsigned short)1,(unsigned short)1>(*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96), v7, *(a1 + 32), a4, &v8);
      ++v6;
    }

    while (*(a1 + 104) > v6);
  }
}

double xdr::convert_image_to_gainmap_image_loop<(unsigned short)1,(unsigned short)1>(uint64_t a1, float32x4_t *a2, float32x4_t *a3, float32x4_t *a4, float32x4_t *a5, float32x4_t *a6, uint64_t a7, __int32 a8, int8x16_t a9, uint16x4_t a10, _DWORD *a11)
{
  v19 = *MEMORY[0x1E69E9840];
  v16.i32[2] = 0;
  v16.i64[0] = 0;
  v18 = xdr::convert_image_to_gainmap_image(a1, a4, a5, a6, a7, &v16, a8, a11, a9, a10);
  v13 = v16;
  v13.i32[3] = 0;
  v17 = v13;
  v14 = xdr::image_write_loop<(unsigned short)1,(unsigned short)1>(a2, &v18, *v16.f32);
  *&result = xdr::image_write_loop<(unsigned short)1,(unsigned short)1>(a3, &v17, v14);
  return result;
}

__n128 xdr::convert_image_to_gainmap_image(uint64_t a1, float32x4_t *a2, float32x4_t *a3, float32x4_t *a4, uint64_t a5, _OWORD *a6, __int32 a7, _DWORD *a8, int8x16_t a9, uint16x4_t a10)
{
  a10.i32[0] = a7;
  xdr::image_sample(a1, a8, COERCE_DOUBLE(vmla_f32(*&vextq_s8(a9, a9, 8uLL), vadd_f32(vorr_s8(*&vmovl_u16(a10), vdup_n_s32(0x4B400000u)), vdup_n_s32(0xCB400000)), *a9.i8)));
  v26 = v15;
  *v16.i64 = xdr::apply_color_trc(a2, v15);
  xdr::apply_tone_mapping(&a2[5], v16);
  if ((a2[23].i8[0] & 1) == 0)
  {
    v17 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a2[20], v17.f32[0]), a2[21], *v17.f32, 1), a2[22], v17, 2);
  }

  v25 = v17;
  *v18.i64 = xdr::apply_color_trc(a3, v26);
  xdr::apply_tone_mapping(&a3[5], v18);
  v20 = v19;
  if ((a3[23].i8[0] & 1) == 0)
  {
    v20 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a3[20], v19.f32[0]), a3[21], *v19.f32, 1), a3[22], v19, 2);
  }

  *&v21 = xdr::apply_gain_transform(a5, v25, v20);
  *a6 = v21;
  if (a4[3].i8[0])
  {
    v22 = v25;
  }

  else
  {
    v22 = vmlaq_f32(vmlaq_f32(vmulq_n_f32(*a4, v25.f32[0]), vdupq_lane_s32(*v25.f32, 1), a4[1]), vdupq_laneq_s32(v25, 2), a4[2]);
  }

  xdr::apply_tone_mapping(&a4[4], v22);
  result.n128_f64[0] = xdr::apply_color_trc(&a4[19], v23);
  result.n128_u32[3] = v26.u32[3];
  return result;
}

double xdr::apply_gain_transform(uint64_t a1, float32x4_t a2, float32x4_t a3)
{
  if ((*(a1 + 160) & 1) == 0)
  {
    v6 = *(a1 + 128);
    v5 = *(a1 + 144);
    v7 = *(a1 + 112);
    a2 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v7, a2.f32[0]), v6, *a2.f32, 1), v5, a2, 2);
    a3 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v7, a3.f32[0]), v6, *a3.f32, 1), v5, a3, 2);
  }

  v8 = *(a1 + 176);
  a2.i32[3] = 0;
  result = 0.0;
  v10 = vmaxnmq_f32(a2, 0);
  v10.i32[3] = 0;
  v11 = vdupq_lane_s32(v8, 0);
  v11.i32[3] = 0;
  a3.i32[3] = 0;
  v12 = vmaxnmq_f32(a3, 0);
  v12.i32[3] = 0;
  v13 = vdupq_lane_s32(v8, 1);
  v14 = vminnmq_f32(v10, v11);
  v13.i32[3] = 0;
  v15 = vminnmq_f32(v12, v13);
  if (*(a1 + 208) == 1)
  {
    v16 = *(a1 + 192);
    v14.i32[3] = fmaxf(v14.f32[0], fmaxf(v14.f32[1], v14.f32[2]));
    v17 = vmulq_f32(v14, v16);
    *v17.i8 = vadd_f32(*v17.i8, *&vextq_s8(v17, v17, 8uLL));
    v15.i32[3] = fmaxf(v15.f32[0], fmaxf(v15.f32[1], v15.f32[2]));
    v18 = vmulq_f32(v15, v16);
    *v18.i8 = vadd_f32(*v18.i8, *&vextq_s8(v18, v18, 8uLL));
    v14 = vdupq_lane_s32(vadd_f32(*v17.i8, vdup_lane_s32(*v17.i8, 1)), 0);
    v15 = vdupq_lane_s32(vadd_f32(*v18.i8, vdup_lane_s32(*v18.i8, 1)), 0);
  }

  if (*a1 == 2)
  {
    v20 = vdivq_f32(vaddq_f32(*(a1 + 80), v15), vaddq_f32(*(a1 + 64), v14));
    v20.i32[3] = 0;
    v19 = _simd_log2_f4(v20);
  }

  else
  {
    if (*a1 != 1)
    {
      return result;
    }

    v19 = vdivq_f32(vaddq_f32(*(a1 + 64), v15), vaddq_f32(*(a1 + 64), v14));
  }

  v21 = *(a1 + 16);
  v22 = vmlaq_f32(*(a1 + 48), v19, *(a1 + 32));
  v23 = vabsq_f32(v22);
  v23.i32[3] = 0;
  v24 = vmaxnmq_f32(v23, xmmword_186205A60);
  v25.i64[0] = 0x8000000080000000;
  v25.i64[1] = 0x8000000080000000;
  __asm { FMOV            V4.4S, #1.0 }

  v24.i32[3] = 0;
  v21.i32[3] = 0;
  *&result = vmulq_f32(_simd_pow_f4(v24, v21), vbslq_s8(vorrq_s8(vcltzq_f32(v22), vcgtzq_f32(v22)), vorrq_s8(vandq_s8(v22, v25), _Q4), 0)).u64[0];
  return result;
}

uint64_t ___ZN3xdr44dispatch_convert_image_to_gainmap_image_loopILt2ELt1EEEvRKNS_7imageInERKNS_8imageOutES6_RKNS_16colorTransformInES9_RKNS_17colorTransformOutERKNS_16gainTransformOutEDv2_t_block_invoke(uint64_t result, __int16 a2)
{
  v6 = 0x100000000;
  v7 = 1;
  if (*(result + 104))
  {
    v3 = result;
    v4 = 0;
    do
    {
      HIWORD(v5) = a2;
      LOWORD(v5) = v4;
      result = xdr::convert_image_to_gainmap_image_loop<(unsigned short)2,(unsigned short)1>(*(v3 + 48), *(v3 + 56), *(v3 + 64), *(v3 + 72), *(v3 + 80), *(v3 + 88), *(v3 + 96), v5, *(v3 + 32), &v6);
      ++v4;
    }

    while (*(v3 + 104) > v4);
  }

  return result;
}

uint64_t xdr::convert_image_to_gainmap_image_loop<(unsigned short)2,(unsigned short)1>(uint64_t a1, uint64_t a2, uint64_t a3, float32x4_t *a4, float32x4_t *a5, float32x4_t *a6, uint64_t a7, __int32 a8, int8x16_t a9, _DWORD *a10)
{
  v29 = a9;
  v14 = 0;
  v37 = *MEMORY[0x1E69E9840];
  a9.i32[0] = a8;
  v35 = 0u;
  v36 = 0u;
  v15 = &v35;
  v33 = 0u;
  v34 = 0u;
  v16 = &v33;
  v17 = 1;
  v18 = vshl_u32(*&vmovl_u16(*a9.i8), 1);
  v19 = 1;
  do
  {
    v20 = v19;
    DWORD2(v32) = 0;
    *&v32 = 0;
    v21 = vadd_s32(v14, v18);
    HIWORD(v31) = v21.i16[2];
    LOWORD(v31) = v21.i16[0];
    v22 = xdr::convert_image_to_gainmap_image(a1, a4, a5, a6, a7, &v32, v31, a10, v29, v17);
    v19 = 0;
    *v15 = v22;
    v23 = v32;
    HIDWORD(v23) = *(v16 + 3);
    *v16 = v23;
    v14 = 1;
    v16 = &v34;
    v15 = &v36;
  }

  while ((v20 & 1) != 0);
  xdr::image_write_loop<(unsigned short)2,(unsigned short)1>(a2, &v35, a8, *&v23);
  return xdr::image_write_loop<(unsigned short)2,(unsigned short)1>(a3, &v33, a8, v24);
}

float32x4_t *___ZN3xdr44dispatch_convert_image_to_gainmap_image_loopILt2ELt2EEEvRKNS_7imageInERKNS_8imageOutES6_RKNS_16colorTransformInES9_RKNS_17colorTransformOutERKNS_16gainTransformOutEDv2_t_block_invoke(float32x4_t *result, __int16 a2)
{
  v6 = 0x100000000;
  v7 = 1;
  if (result[6].i16[4])
  {
    v3 = result;
    v4 = 0;
    do
    {
      HIWORD(v5) = a2;
      LOWORD(v5) = v4;
      result = xdr::convert_image_to_gainmap_image_loop<(unsigned short)2,(unsigned short)2>(v3[3].i64[0], v3[3].i64[1], v3[4].i64[0], v3[4].i64[1], v3[5].i64[0], v3[5].i64[1], v3[6].i64[0], v5, v3[2], &v6);
      ++v4;
    }

    while (v3[6].u16[4] > v4);
  }

  return result;
}

float32x4_t *xdr::convert_image_to_gainmap_image_loop<(unsigned short)2,(unsigned short)2>(uint64_t a1, float32x4_t *a2, float32x4_t *a3, float32x4_t *a4, float32x4_t *a5, float32x4_t *a6, uint64_t a7, __int32 a8, int8x16_t a9, _DWORD *a10)
{
  v14 = a9;
  v16 = 0;
  v39 = *MEMORY[0x1E69E9840];
  a9.i32[0] = a8;
  v17 = 0;
  memset(v38, 0, sizeof(v38));
  v18 = vmovl_u16(*a9.i8).u64[0];
  memset(v37, 0, sizeof(v37));
  v19 = vadd_s32(v18, v18);
  v20 = 1;
  v34 = v14;
  do
  {
    v21 = 0;
    v33 = v20;
    v22 = 1;
    do
    {
      v23 = v22;
      DWORD2(v36) = 0;
      *&v36 = 0;
      v24 = vorr_s8(__PAIR64__(v16, v21), v19);
      HIWORD(v35) = v24.i16[2];
      LOWORD(v35) = v24.i16[0];
      v25 = xdr::convert_image_to_gainmap_image(a1, a4, a5, a6, a7, &v36, v35, a10, v14, v17);
      v14 = v34;
      v22 = 0;
      v38[2 * v21 + v16] = v25;
      v27 = v36;
      v26 = &v37[2 * v21 + v16];
      HIDWORD(v27) = *(v26 | 0xC);
      *v26 = v27;
      v21 = 1;
    }

    while ((v23 & 1) != 0);
    v20 = 0;
    v16 = 1;
  }

  while ((v33 & 1) != 0);
  xdr::image_write_loop<(unsigned short)2,(unsigned short)2>(a2, v38, a8, *&v27);
  return xdr::image_write_loop<(unsigned short)2,(unsigned short)2>(a3, v37, a8, v28);
}

uint64_t ___ZN3xdr44dispatch_convert_image_to_gainmap_image_loopILt4ELt2EEEvRKNS_7imageInERKNS_8imageOutES6_RKNS_16colorTransformInES9_RKNS_17colorTransformOutERKNS_16gainTransformOutEDv2_t_block_invoke(uint64_t result, __int16 a2, double a3, uint16x4_t a4)
{
  v8 = 0x100000000;
  v9 = 1;
  if (*(result + 104))
  {
    v5 = result;
    v6 = 0;
    do
    {
      HIWORD(v7) = a2;
      LOWORD(v7) = v6;
      result = xdr::convert_image_to_gainmap_image_loop<(unsigned short)4,(unsigned short)2>(*(v5 + 48), *(v5 + 56), *(v5 + 64), *(v5 + 72), *(v5 + 80), *(v5 + 88), *(v5 + 96), v7, *(v5 + 32), a4, &v8);
      ++v6;
    }

    while (*(v5 + 104) > v6);
  }

  return result;
}

uint64_t xdr::convert_image_to_gainmap_image_loop<(unsigned short)4,(unsigned short)2>(uint64_t a1, uint64_t a2, uint64_t a3, float32x4_t *a4, float32x4_t *a5, float32x4_t *a6, uint64_t a7, __int32 a8, int8x16_t a9, uint16x4_t a10, _DWORD *a11)
{
  v15 = a9;
  v17 = 0;
  v37 = *MEMORY[0x1E69E9840];
  a10.i32[0] = a8;
  v18 = vmovl_u16(a10).u64[0];
  v19 = vshl_u32(v18, 0x100000002);
  memset(v36, 0, 128);
  v20 = 1;
  memset(v35, 0, sizeof(v35));
  do
  {
    v21 = 0;
    v31 = v20;
    v22 = v17;
    do
    {
      DWORD2(v34) = 0;
      *&v34 = 0;
      v23 = vadd_s32(__PAIR64__(v17, v21), v19);
      HIWORD(v33) = v23.i16[2];
      LOWORD(v33) = v23.i16[0];
      v24 = xdr::convert_image_to_gainmap_image(a1, a4, a5, a6, a7, &v34, v33, a11, v15, v18);
      v15 = a9;
      *&v36[v22 * 16] = v24;
      v25 = v34;
      HIDWORD(v25) = HIDWORD(v35[v22]);
      v35[v22] = v25;
      ++v21;
      v22 += 2;
    }

    while (v21 != 4);
    v20 = 0;
    v17 = 1;
  }

  while ((v31 & 1) != 0);
  xdr::image_write_loop<(unsigned short)4,(unsigned short)2>(a2, v36, a8, *&v25);
  return xdr::image_write_loop<(unsigned short)4,(unsigned short)2>(a3, v35, a8, v26);
}

uint64_t xdr::image_write_loop<(unsigned short)4,(unsigned short)2>(uint64_t result, uint64_t a2, __int32 a3, uint16x4_t a4)
{
  v5 = result;
  a4.i32[0] = a3;
  v6 = vmovl_u16(a4).u64[0];
  v7 = *(result + 16);
  if (v7 <= 2)
  {
    if (v7 == 1)
    {
LABEL_14:
      v16 = *(result + 112);
      if (v16 == 1)
      {
        v70 = 0;
        v71 = vshl_u32(v6, 0x100000002);
        v72 = 1;
        do
        {
          v73 = 0;
          v74 = v72;
          v75 = (a2 + 16 * v70);
          do
          {
            v76 = *v75;
            v75 += 2;
            v77 = vadd_s32(__PAIR64__(v70, v73), v71);
            HIWORD(v165) = v77.i16[2];
            LOWORD(v165) = v77.i16[0];
            result = (*(*v5->i64[0] + 24))(v5->i64[0], v165, vmlaq_f32(v5[3], v76, v5[2]));
            ++v73;
          }

          while (v73 != 4);
          v72 = 0;
          v70 = 1;
        }

        while ((v74 & 1) != 0);
      }

      else if (v16 == 2)
      {
        v17 = 0;
        v18 = vshl_u32(v6, 1);
        v19 = 1;
        __asm { FMOV            V0.4S, #0.25 }

        v160 = _Q0;
        do
        {
          v25 = 0;
          v26 = v19;
          v27 = 1;
          v28 = 0uLL;
          do
          {
            v29 = v27;
            v28 = vaddq_f32(vaddq_f32(v28, *(a2 + (v17 << 6) + 16 * v25)), *(a2 + 32 * ((2 * (v17 & 0x3FFFFFFFFFFFFFFFLL)) | 1) + 16 * v25));
            v25 = 1;
            v27 = 0;
          }

          while ((v29 & 1) != 0);
          v30 = vadd_s32(v17, v18);
          HIWORD(v166) = v30.i16[2];
          LOWORD(v166) = v30.i16[0];
          result = (*(*v5->i64[0] + 24))(v5->i64[0], v166, vmlaq_f32(v5[3], vmulq_f32(v28, v160), v5[2]));
          v19 = 0;
          v17 = 1;
        }

        while ((v26 & 1) != 0);
      }

      return result;
    }

    if (v7 == 2 && *(result + 112) == 1)
    {
      v8 = 0;
      v9 = vshl_u32(v6, 0x100000002);
      v10 = 1;
      do
      {
        v11 = 0;
        v12 = v10;
        v13 = (a2 + 16 * v8);
        do
        {
          v14 = *v13;
          v13 += 2;
          v15 = vadd_s32(__PAIR64__(v8, v11), v9);
          HIWORD(v163) = v15.i16[2];
          LOWORD(v163) = v15.i16[0];
          result = (*(*v5->i64[0] + 24))(v5->i64[0], v163, vmlaq_f32(v5[3], v14, v5[2]));
          ++v11;
        }

        while (v11 != 4);
        v10 = 0;
        v8 = 1;
      }

      while ((v12 & 1) != 0);
    }
  }

  else
  {
    switch(v7)
    {
      case 3:
        if (*(result + 112) == 1)
        {
          v31 = 0;
          v32 = vshl_u32(v6, 0x100000002);
          v33 = 1;
          do
          {
            v34 = 0;
            v35 = v33;
            v36 = (a2 + 16 * v31);
            do
            {
              v37 = *v36;
              v36 += 2;
              v38 = vmulq_laneq_f32(v37, v37, 3);
              v38.i32[3] = v37.i32[3];
              v39 = vmlaq_f32(v5[3], v38, v5[2]);
              *v38.f32 = vadd_s32(__PAIR64__(v31, v34), v32);
              HIWORD(v164) = v38.i16[2];
              LOWORD(v164) = v38.i16[0];
              result = (*(*v5->i64[0] + 24))(v5->i64[0], v164, v39);
              ++v34;
            }

            while (v34 != 4);
            v33 = 0;
            v31 = 1;
          }

          while ((v35 & 1) != 0);
        }

        break;
      case 4:
        v40 = *(result + 112);
        v41 = vceq_s16(v40, 0x200020001);
        v41.i16[3] = v41.i16[2];
        if ((vminv_u16(v41) & 0x8000) != 0)
        {
          v78 = 0;
          v79 = vshl_u32(v6, 0x100000002);
          v80 = vshl_u32(v6, 1);
          v81 = 1;
          __asm { FMOV            V10.2S, #0.25 }

          do
          {
            v83 = 0;
            v84 = v81;
            v85 = 0;
            v86 = 1;
            do
            {
              v87 = 0;
              v88 = v86;
              v89 = 1;
              do
              {
                v90 = v87 | (2 * v78);
                v91 = *(a2 + 32 * v90 + 16 * v83);
                v91.i32[3] = 0;
                v92 = vmaxnmq_f32(v91, 0);
                v92.i32[3] = 0;
                v93 = vminnmq_f32(v92, xmmword_186205A00);
                v94 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v5[4], v93.f32[0]), v5[5], *v93.f32, 1), v5[6], v93, 2);
                v94.i32[3] = 1.0;
                v95 = v89;
                v96 = vmlaq_f32(v5[3], v94, v5[2]);
                v94.i64[0] = vextq_s8(v96, v96, 4uLL).u64[0];
                v93.i32[0] = v96.i32[0];
                *v96.i8 = vadd_s32(__PAIR64__(v83, v90), v79);
                HIWORD(v173) = v96.i16[2];
                v85 = vadd_f32(v85, *v94.f32);
                LOWORD(v173) = v96.i16[0];
                (*(*v5->i64[0] + 24))(v5->i64[0], v173, v93.f32[0]);
                v89 = 0;
                v87 = 1;
              }

              while ((v95 & 1) != 0);
              v86 = 0;
              v83 = 1;
            }

            while ((v88 & 1) != 0);
            v97.n128_u64[0] = vmul_f32(v85, _D10);
            v97.n128_u64[1] = 0x3F80000000000000;
            v98 = vadd_s32(v78, v80);
            HIWORD(v172) = v98.i16[2];
            LOWORD(v172) = v98.i16[0];
            result = (*(*v5->i64[1] + 24))(v5->i64[1], v172, v97);
            v81 = 0;
            v78 = 1;
          }

          while ((v84 & 1) != 0);
        }

        else
        {
          v42 = vceq_s16(v40, 0x100020001);
          v42.i16[3] = v42.i16[2];
          if ((vminv_u16(v42) & 0x8000) != 0)
          {
            v99 = 0;
            v100 = vshl_u32(v6, 0x100000002);
            v101 = 2 * a3;
            v102 = 2 * v6.i16[2];
            v103.i32[1] = 1065353216;
            v104 = 1;
            do
            {
              v105 = 0;
              v106 = v104;
              v107 = 2 * v99;
              v103.i32[0] = v101 | v99;
              v108 = 1;
              v109 = vmovl_u16(v103).u16[0];
              do
              {
                v110 = 0;
                v111 = v108;
                v112 = 0;
                v113 = 1;
                do
                {
                  v114 = v110 | v107;
                  v115 = *(a2 + 32 * v114 + 16 * v105);
                  v115.i32[3] = 0;
                  v116 = vmaxnmq_f32(v115, 0);
                  v116.i32[3] = 0;
                  v117 = vminnmq_f32(v116, xmmword_186205A00);
                  v118 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v5[4], v117.f32[0]), v5[5], *v117.f32, 1), v5[6], v117, 2);
                  v118.i32[3] = 1.0;
                  v119 = v113;
                  v120 = vmlaq_f32(v5[3], v118, v5[2]);
                  v118.i64[0] = vextq_s8(v120, v120, 4uLL).u64[0];
                  v117.i32[0] = v120.i32[0];
                  *v120.i8 = vadd_s32(__PAIR64__(v105, v114), v100);
                  HIWORD(v171) = v120.i16[2];
                  v112 = vadd_f32(v112, *v118.f32);
                  LOWORD(v171) = v120.i16[0];
                  (*(*v5->i64[0] + 24))(v5->i64[0], v171, v117.f32[0]);
                  v113 = 0;
                  v110 = 1;
                }

                while ((v119 & 1) != 0);
                v121.n128_u64[0] = vmul_f32(v112, 0x3F0000003F000000);
                v121.n128_u64[1] = 0x3F80000000000000;
                HIWORD(v170) = v105 | v102;
                LOWORD(v170) = v109;
                result = (*(*v5->i64[1] + 24))(v5->i64[1], v170, v121);
                v108 = 0;
                v105 = 1;
              }

              while ((v111 & 1) != 0);
              v104 = 0;
              v99 = 1;
            }

            while ((v106 & 1) != 0);
          }

          else
          {
            v43 = vceq_s16(v40, 0x1000100010001);
            v43.i16[3] = v43.i16[2];
            if ((vminv_u16(v43) & 0x8000) != 0)
            {
              v122 = 0;
              v123 = vshl_u32(v6, 0x100000002);
              v124 = 1;
              v125 = 0uLL;
              v126 = xmmword_186205A00;
              v127 = 1.0;
              do
              {
                v128 = 0;
                v129 = v124;
                v130 = (a2 + 16 * v122);
                do
                {
                  v131 = *v130;
                  v130 += 2;
                  v132 = v131;
                  v132.i32[3] = 0;
                  v133 = vmaxnmq_f32(v132, v125);
                  v133.i32[3] = 0;
                  v134 = vminnmq_f32(v133, v126);
                  v135 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v5[4], v134.f32[0]), v5[5], *v134.f32, 1), v5[6], v134, 2);
                  v135.f32[3] = v127;
                  v136 = vadd_s32(__PAIR64__(v122, v128), v123);
                  v161 = vmlaq_f32(v5[3], v135, v5[2]);
                  HIWORD(v169) = v136.i16[2];
                  LOWORD(v169) = v136.i16[0];
                  (*(*v5->i64[0] + 24))(v5->i64[0], v169, *v161.i32);
                  v137.n128_u64[0] = vextq_s8(v161, v161, 4uLL).u64[0];
                  v137.n128_u64[1] = 0x3F80000000000000;
                  result = (*(*v5->i64[1] + 24))(v5->i64[1], v169, v137);
                  v126 = xmmword_186205A00;
                  v127 = 1.0;
                  v125 = 0uLL;
                  ++v128;
                }

                while (v128 != 4);
                v124 = 0;
                v122 = 1;
              }

              while ((v129 & 1) != 0);
            }

            else
            {
              v44 = vceq_s16(v40, 0x2000200020002);
              v44.i16[3] = v44.i16[2];
              if ((vminv_u16(v44) & 0x8000) != 0)
              {
                v138 = 0;
                v139 = vshl_u32(v6, 1);
                v140 = 1;
                v141 = 0uLL;
                v142 = xmmword_186205A00;
                v143 = 1.0;
                __asm { FMOV            V10.2S, #0.25 }

                do
                {
                  v145 = 0;
                  v146 = v140;
                  v147 = 1;
                  v148 = 0uLL;
                  do
                  {
                    v149 = 0;
                    v150 = v147;
                    v151 = 1;
                    do
                    {
                      v152 = *(a2 + 32 * v149 + 16 * v145);
                      v152.i32[3] = 0;
                      v153 = vmaxnmq_f32(v152, v141);
                      v153.i32[3] = 0;
                      v154 = vminnmq_f32(v153, v142);
                      v155 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v5[4], v154.f32[0]), v5[5], *v154.f32, 1), v5[6], v154, 2);
                      v155.i32[3] = v143;
                      v156 = v151;
                      v148 = vaddq_f32(v148, vmlaq_f32(v5[3], v155, v5[2]));
                      v149 = 1;
                      v151 = 0;
                    }

                    while ((v156 & 1) != 0);
                    v147 = 0;
                    v145 = 1;
                  }

                  while ((v150 & 1) != 0);
                  v157.n128_f32[0] = 0.25 * v148.f32[0];
                  v157.n128_u32[1] = 0;
                  v157.n128_u32[2] = 0;
                  v157.n128_u32[3] = v143;
                  v158 = vadd_s32(v138, v139);
                  HIWORD(v168) = v158.i16[2];
                  LOWORD(v168) = v158.i16[0];
                  v162 = v148;
                  (*(*v5->i64[0] + 24))(v5->i64[0], v168, v157);
                  v159.n128_u64[0] = vmul_f32(*&vextq_s8(v162, v162, 4uLL), _D10);
                  v159.n128_u64[1] = 0x3F80000000000000;
                  result = (*(*v5->i64[1] + 24))(v5->i64[1], v168, v159);
                  v143 = 1.0;
                  v142 = xmmword_186205A00;
                  v141 = 0uLL;
                  v140 = 0;
                  v138 = 1;
                }

                while ((v146 & 1) != 0);
              }

              else
              {
                v45 = vceq_s16(v40, 0x200040002);
                v45.i16[3] = v45.i16[2];
                if ((vminv_u16(v45) & 0x8000) != 0)
                {
                  v46 = 0;
                  v47 = vshl_u32(v6, 1);
                  v48 = 0;
                  v49 = 1;
                  v50 = 0uLL;
                  v51 = xmmword_186205A00;
                  v52 = 1.0;
                  __asm { FMOV            V10.2S, #0.25 }

                  do
                  {
                    v54 = 0;
                    v55 = v49;
                    v56 = 1;
                    v57 = 0uLL;
                    do
                    {
                      v58 = 0;
                      v59 = v56;
                      v60 = 1;
                      do
                      {
                        v61 = *(a2 + 32 * (v58 | (2 * v46)) + 16 * v54);
                        v61.i32[3] = 0;
                        v62 = vmaxnmq_f32(v61, v50);
                        v62.i32[3] = 0;
                        v63 = vminnmq_f32(v62, v51);
                        v64 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v5[4], v63.f32[0]), v5[5], *v63.f32, 1), v5[6], v63, 2);
                        v64.i32[3] = v52;
                        v65 = v60;
                        v57 = vaddq_f32(v57, vmlaq_f32(v5[3], v64, v5[2]));
                        v58 = 1;
                        v60 = 0;
                      }

                      while ((v65 & 1) != 0);
                      v56 = 0;
                      v54 = 1;
                    }

                    while ((v59 & 1) != 0);
                    v66.n128_f32[0] = 0.25 * v57.f32[0];
                    v66.n128_u32[1] = 0;
                    v66.n128_u32[2] = 0;
                    v48 = vmla_f32(v48, _D10, *&vextq_s8(v57, v57, 4uLL));
                    v66.n128_u32[3] = v52;
                    v67 = vadd_s32(v46, v47);
                    HIWORD(v167) = v67.i16[2];
                    LOWORD(v167) = v67.i16[0];
                    (*(*v5->i64[0] + 24))(v5->i64[0], v167, v66);
                    v52 = 1.0;
                    v51 = xmmword_186205A00;
                    v50 = 0uLL;
                    v49 = 0;
                    v46 = 1;
                  }

                  while ((v55 & 1) != 0);
                  v68.n128_u64[0] = vmul_f32(v48, 0x3F0000003F000000);
                  v68.n128_u64[1] = 0x3F80000000000000;
                  v69 = *(*v5->i64[1] + 24);

                  return v69(v68);
                }
              }
            }
          }
        }

        break;
      case 5:
        goto LABEL_14;
      default:
        return result;
    }
  }

  return result;
}

float32x4_t *___ZN3xdr44dispatch_convert_image_to_gainmap_image_loopILt4ELt4EEEvRKNS_7imageInERKNS_8imageOutES6_RKNS_16colorTransformInES9_RKNS_17colorTransformOutERKNS_16gainTransformOutEDv2_t_block_invoke(float32x4_t *result, __int16 a2, double a3, uint16x4_t a4)
{
  v8 = 0x100000000;
  v9 = 1;
  if (result[6].i16[4])
  {
    v5 = result;
    v6 = 0;
    do
    {
      HIWORD(v7) = a2;
      LOWORD(v7) = v6;
      result = xdr::convert_image_to_gainmap_image_loop<(unsigned short)4,(unsigned short)4>(v5[3].i64[0], v5[3].i64[1], v5[4].i64[0], v5[4].i64[1], v5[5].i64[0], v5[5].i64[1], v5[6].i64[0], v7, v5[2], a4, &v8);
      ++v6;
    }

    while (v5[6].u16[4] > v6);
  }

  return result;
}

float32x4_t *xdr::convert_image_to_gainmap_image_loop<(unsigned short)4,(unsigned short)4>(uint64_t a1, float32x4_t *a2, float32x4_t *a3, float32x4_t *a4, float32x4_t *a5, float32x4_t *a6, uint64_t a7, __int32 a8, int8x16_t a9, uint16x4_t a10, _DWORD *a11)
{
  v15 = a9;
  v17 = 0;
  v18 = 0;
  v36 = *MEMORY[0x1E69E9840];
  a10.i32[0] = a8;
  v19 = vmovl_u16(a10).u64[0];
  memset(v35, 0, sizeof(v35));
  v20 = vshl_n_s32(v19, 2uLL);
  memset(v34, 0, sizeof(v34));
  do
  {
    v21 = 0;
    v30 = v17;
    do
    {
      v33.i32[2] = 0;
      v33.i64[0] = 0;
      v22 = vadd_s32(__PAIR64__(v18, v21), v20);
      HIWORD(v32) = v22.i16[2];
      LOWORD(v32) = v22.i16[0];
      v23 = xdr::convert_image_to_gainmap_image(a1, a4, a5, a6, a7, &v33, v32, a11, v15, v19);
      v15 = a9;
      *(v35 + v17) = v23;
      v24 = v33;
      v24.i32[3] = *(&v34[0].i32[3] + v17);
      *(v34 + v17) = v24;
      ++v21;
      v17 += 64;
    }

    while (v21 != 4);
    ++v18;
    v17 = v30 + 16;
  }

  while (v18 != 4);
  xdr::image_write_loop<(unsigned short)4,(unsigned short)4>(a2, v35, a8, *v24.f32);
  return xdr::image_write_loop<(unsigned short)4,(unsigned short)4>(a3, v34, a8, v25);
}

float32x4_t *xdr::image_write_loop<(unsigned short)4,(unsigned short)4>(float32x4_t *result, float32x4_t *a2, __int32 a3, uint16x4_t a4)
{
  v5 = result;
  a4.i32[0] = a3;
  v6 = vmovl_u16(a4).u64[0];
  v7 = result[1].i32[0];
  if (v7 <= 2)
  {
    if (v7 != 1)
    {
      if (v7 == 2 && result[7].i16[0] == 1)
      {
        v8 = 0;
        v9 = vshl_n_s32(v6, 2uLL);
        do
        {
          v10 = 0;
          v11 = a2;
          do
          {
            v12 = *v11;
            v11 += 4;
            v13 = vadd_s32(__PAIR64__(v8, v10), v9);
            HIWORD(v202) = v13.i16[2];
            LOWORD(v202) = v13.i16[0];
            result = (*(*v5->i64[0] + 24))(v5->i64[0], v202, vmlaq_f32(v5[3], v12, v5[2]));
            ++v10;
          }

          while (v10 != 4);
          ++v8;
          ++a2;
        }

        while (v8 != 4);
      }

      return result;
    }

    goto LABEL_14;
  }

  if (v7 == 3)
  {
    if (result[7].i16[0] == 1)
    {
      v26 = 0;
      v27 = vshl_n_s32(v6, 2uLL);
      do
      {
        v28 = 0;
        v29 = a2;
        do
        {
          v30 = *v29;
          v29 += 4;
          v31 = vmulq_laneq_f32(v30, v30, 3);
          v31.i32[3] = v30.i32[3];
          v32 = vmlaq_f32(v5[3], v31, v5[2]);
          *v31.f32 = vadd_s32(__PAIR64__(v26, v28), v27);
          HIWORD(v203) = v31.i16[2];
          LOWORD(v203) = v31.i16[0];
          result = (*(*v5->i64[0] + 24))(v5->i64[0], v203, v32);
          ++v28;
        }

        while (v28 != 4);
        ++v26;
        ++a2;
      }

      while (v26 != 4);
    }

    return result;
  }

  if (v7 != 4)
  {
    if (v7 != 5)
    {
      return result;
    }

LABEL_14:
    v14 = result[7].u16[0];
    switch(v14)
    {
      case 1:
        v104 = 0;
        v105 = vshl_n_s32(v6, 2uLL);
        do
        {
          v106 = 0;
          v107 = a2;
          do
          {
            v108 = *v107;
            v107 += 4;
            v109 = vadd_s32(__PAIR64__(v104, v106), v105);
            HIWORD(v204) = v109.i16[2];
            LOWORD(v204) = v109.i16[0];
            result = (*(*v5->i64[0] + 24))(v5->i64[0], v204, vmlaq_f32(v5[3], v108, v5[2]));
            ++v106;
          }

          while (v106 != 4);
          ++v104;
          ++a2;
        }

        while (v104 != 4);
        break;
      case 2:
        v67 = 0;
        v68 = vadd_s32(v6, v6);
        v69 = 1;
        __asm { FMOV            V0.4S, #0.25 }

        v199 = _Q0;
        do
        {
          v71 = 0;
          v72 = v69;
          v73 = 1;
          do
          {
            v74 = 0;
            v75 = v73;
            v76 = 0uLL;
            v77 = 1;
            do
            {
              v78 = v77;
              v76 = vaddq_f32(vaddq_f32(v76, a2[8 * v71 + (v74 | (2 * v67))]), a2[4 * ((2 * (v71 & 0x3FFFFFFFFFFFFFFFLL)) | 1) + (v74 | (2 * v67))]);
              v74 = 1;
              v77 = 0;
            }

            while ((v78 & 1) != 0);
            v79 = vorr_s8(__PAIR64__(v67, v71), v68);
            HIWORD(v205) = v79.i16[2];
            LOWORD(v205) = v79.i16[0];
            result = (*(*v5->i64[0] + 24))(v5->i64[0], v205, vmlaq_f32(v5[3], vmulq_f32(v76, v199), v5[2]));
            v73 = 0;
            v71 = 1;
          }

          while ((v75 & 1) != 0);
          v69 = 0;
          v67 = 1;
        }

        while ((v72 & 1) != 0);
        break;
      case 4:
        v15 = 0;
        v16 = 0uLL;
        do
        {
          for (i = 0; i != 16; i += 4)
          {
            v16 = vaddq_f32(v16, a2[i]);
          }

          ++v15;
          ++a2;
        }

        while (v15 != 4);
        __asm { FMOV            V1.4S, #0.25 }

        v23 = vmlaq_f32(result[3], vmulq_f32(v16, _Q1), result[2]);
        v24 = result->i64[0];
LABEL_22:
        v25 = *(*v24 + 24);

        return v25(v23);
      default:
        return result;
    }

    return result;
  }

  v33 = *result[7].f32;
  v34 = vceq_s16(v33, 0x200020001);
  v34.i16[3] = v34.i16[2];
  if ((vminv_u16(v34) & 0x8000) != 0)
  {
    v80 = 0;
    v81 = vshl_n_s32(v6, 2uLL);
    v82 = vadd_s32(v6, v6);
    v83 = 1;
    __asm { FMOV            V10.2S, #0.25 }

    do
    {
      v85 = 0;
      v196 = v83;
      v86 = 1;
      do
      {
        v87 = 0;
        v88 = v86;
        v89 = 0;
        v90 = 1;
        do
        {
          v91 = 0;
          v92 = v90;
          v93 = v87 | (2 * v80);
          v94 = 1;
          do
          {
            v95 = v91 | (2 * v85);
            v96 = a2[4 * v95 + v93];
            v96.i32[3] = 0;
            v97 = vmaxnmq_f32(v96, 0);
            v97.i32[3] = 0;
            v98 = vminnmq_f32(v97, xmmword_186205A00);
            v99 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v5[4], v98.f32[0]), v5[5], *v98.f32, 1), v5[6], v98, 2);
            v99.i32[3] = 1.0;
            v100 = v94;
            v101 = vmlaq_f32(v5[3], v99, v5[2]);
            v99.i64[0] = vextq_s8(v101, v101, 4uLL).u64[0];
            v98.i32[0] = v101.i32[0];
            *v101.i8 = vadd_s32(__PAIR64__(v93, v95), v81);
            HIWORD(v214) = v101.i16[2];
            v89 = vadd_f32(v89, *v99.f32);
            LOWORD(v214) = v101.i16[0];
            (*(*v5->i64[0] + 24))(v5->i64[0], v214, v98.f32[0]);
            v94 = 0;
            v91 = 1;
          }

          while ((v100 & 1) != 0);
          v90 = 0;
          v87 = 1;
        }

        while ((v92 & 1) != 0);
        v102.n128_u64[0] = vmul_f32(v89, _D10);
        v102.n128_u64[1] = 0x3F80000000000000;
        v103 = vorr_s8(__PAIR64__(v80, v85), v82);
        HIWORD(v213) = v103.i16[2];
        LOWORD(v213) = v103.i16[0];
        result = (*(*v5->i64[1] + 24))(v5->i64[1], v213, v102);
        v86 = 0;
        v85 = 1;
      }

      while ((v88 & 1) != 0);
      v83 = 0;
      v80 = 1;
    }

    while ((v196 & 1) != 0);
  }

  else
  {
    v35 = vceq_s16(v33, 0x100020001);
    v35.i16[3] = v35.i16[2];
    if ((vminv_u16(v35) & 0x8000) != 0)
    {
      v110 = 0;
      v111 = vshl_n_s32(v6, 2uLL);
      v112 = 2 * a3;
      v113 = 4 * v6.i16[2];
      v6.i32[1] = 1065353216;
      v114 = 1;
      do
      {
        v115 = 0;
        v116 = v114;
        v117 = 2 * v110;
        v6.i32[0] = v112 | v110;
        v118 = vmovl_u16(v6).u16[0];
        do
        {
          v119 = 0;
          v120 = 0;
          v121 = 1;
          do
          {
            v122 = v119 | v117;
            v123 = a2[4 * v122 + v115];
            v123.i32[3] = 0;
            v124 = vmaxnmq_f32(v123, 0);
            v124.i32[3] = 0;
            v125 = vminnmq_f32(v124, xmmword_186205A00);
            v126 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v5[4], v125.f32[0]), v5[5], *v125.f32, 1), v5[6], v125, 2);
            v126.i32[3] = 1.0;
            v127 = v121;
            v128 = vmlaq_f32(v5[3], v126, v5[2]);
            v126.i64[0] = vextq_s8(v128, v128, 4uLL).u64[0];
            v125.i32[0] = v128.i32[0];
            *v128.i8 = vadd_s32(__PAIR64__(v115, v122), v111);
            HIWORD(v212) = v128.i16[2];
            v120 = vadd_f32(v120, *v126.f32);
            LOWORD(v212) = v128.i16[0];
            (*(*v5->i64[0] + 24))(v5->i64[0], v212, v125.f32[0]);
            v121 = 0;
            v119 = 1;
          }

          while ((v127 & 1) != 0);
          v129.n128_u64[0] = vmul_f32(v120, 0x3F0000003F000000);
          v129.n128_u64[1] = 0x3F80000000000000;
          HIWORD(v211) = v115 + v113;
          LOWORD(v211) = v118;
          result = (*(*v5->i64[1] + 24))(v5->i64[1], v211, v129);
          ++v115;
        }

        while (v115 != 4);
        v114 = 0;
        v110 = 1;
      }

      while ((v116 & 1) != 0);
    }

    else
    {
      v36 = vceq_s16(v33, 0x1000100010001);
      v36.i16[3] = v36.i16[2];
      if ((vminv_u16(v36) & 0x8000) != 0)
      {
        v130 = 0;
        v131 = vshl_n_s32(v6, 2uLL);
        v132 = 0uLL;
        v133 = xmmword_186205A00;
        v134 = 1.0;
        do
        {
          v135 = 0;
          v136 = a2;
          do
          {
            v137 = *v136;
            v136 += 4;
            v138 = v137;
            v138.i32[3] = 0;
            v139 = vmaxnmq_f32(v138, v132);
            v139.i32[3] = 0;
            v140 = vminnmq_f32(v139, v133);
            v141 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v5[4], v140.f32[0]), v5[5], *v140.f32, 1), v5[6], v140, 2);
            v141.f32[3] = v134;
            v142 = vadd_s32(__PAIR64__(v130, v135), v131);
            v200 = vmlaq_f32(v5[3], v141, v5[2]);
            HIWORD(v210) = v142.i16[2];
            LOWORD(v210) = v142.i16[0];
            (*(*v5->i64[0] + 24))(v5->i64[0], v210, *v200.i32);
            v143.n128_u64[0] = vextq_s8(v200, v200, 4uLL).u64[0];
            v143.n128_u64[1] = 0x3F80000000000000;
            result = (*(*v5->i64[1] + 24))(v5->i64[1], v210, v143);
            v133 = xmmword_186205A00;
            v134 = 1.0;
            v132 = 0uLL;
            ++v135;
          }

          while (v135 != 4);
          ++v130;
          ++a2;
        }

        while (v130 != 4);
      }

      else
      {
        v37 = vceq_s16(v33, 0x2000200020002);
        v37.i16[3] = v37.i16[2];
        if ((vminv_u16(v37) & 0x8000) != 0)
        {
          v144 = 0;
          v145 = vadd_s32(v6, v6);
          v146 = 1;
          v147 = 0uLL;
          v148 = xmmword_186205A00;
          v149 = 1.0;
          __asm { FMOV            V10.2S, #0.25 }

          do
          {
            v151 = 0;
            v152 = v146;
            v153 = 1;
            do
            {
              v154 = 0;
              v155 = v153;
              v156 = 0uLL;
              v157 = 1;
              do
              {
                v158 = 0;
                v159 = v157;
                v160 = 1;
                do
                {
                  v161 = a2[4 * v158 + v154];
                  v161.i32[3] = 0;
                  v162 = vmaxnmq_f32(v161, v147);
                  v162.i32[3] = 0;
                  v163 = vminnmq_f32(v162, v148);
                  v164 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v5[4], v163.f32[0]), v5[5], *v163.f32, 1), v5[6], v163, 2);
                  v164.i32[3] = v149;
                  v165 = v160;
                  v156 = vaddq_f32(v156, vmlaq_f32(v5[3], v164, v5[2]));
                  v158 = 1;
                  v160 = 0;
                }

                while ((v165 & 1) != 0);
                v157 = 0;
                v154 = 1;
              }

              while ((v159 & 1) != 0);
              v166.n128_f32[0] = 0.25 * v156.f32[0];
              v166.n128_u32[1] = 0;
              v166.n128_u32[2] = 0;
              v166.n128_u32[3] = v149;
              v167 = vorr_s8(__PAIR64__(v144, v151), v145);
              HIWORD(v209) = v167.i16[2];
              LOWORD(v209) = v167.i16[0];
              v201 = v156;
              (*(*v5->i64[0] + 24))(v5->i64[0], v209, v166);
              v168.n128_u64[0] = vmul_f32(*&vextq_s8(v201, v201, 4uLL), _D10);
              v168.n128_u64[1] = 0x3F80000000000000;
              result = (*(*v5->i64[1] + 24))(v5->i64[1], v209, v168);
              v149 = 1.0;
              v148 = xmmword_186205A00;
              v147 = 0uLL;
              v153 = 0;
              v151 = 1;
            }

            while ((v155 & 1) != 0);
            v146 = 0;
            v144 = 1;
          }

          while ((v152 & 1) != 0);
        }

        else
        {
          v38 = vceq_s16(v33, 0x200040002);
          v38.i16[3] = v38.i16[2];
          if ((vminv_u16(v38) & 0x8000) == 0)
          {
            v39 = vceq_s16(v33, 0x400040002);
            v39.i16[3] = v39.i16[2];
            if ((vminv_u16(v39) & 0x8000) == 0)
            {
              return result;
            }

            v40 = 0;
            v41 = vadd_s32(v6, v6);
            v42 = 0;
            v43 = 1;
            v44 = 0uLL;
            v45 = xmmword_186205A00;
            v46 = 1.0;
            __asm { FMOV            V10.2S, #0.25 }

            do
            {
              v48 = 0;
              v49 = v43;
              v50 = 1;
              do
              {
                v51 = 0;
                v52 = v50;
                v53 = 0uLL;
                v54 = 1;
                do
                {
                  v55 = 0;
                  v56 = v54;
                  v57 = v51 | (2 * v40);
                  v58 = 1;
                  do
                  {
                    v59 = a2[4 * (v55 | (2 * v48)) + v57];
                    v59.i32[3] = 0;
                    v60 = vmaxnmq_f32(v59, v44);
                    v60.i32[3] = 0;
                    v61 = vminnmq_f32(v60, v45);
                    v62 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v5[4], v61.f32[0]), v5[5], *v61.f32, 1), v5[6], v61, 2);
                    v62.i32[3] = v46;
                    v63 = v58;
                    v53 = vaddq_f32(v53, vmlaq_f32(v5[3], v62, v5[2]));
                    v55 = 1;
                    v58 = 0;
                  }

                  while ((v63 & 1) != 0);
                  v54 = 0;
                  v51 = 1;
                }

                while ((v56 & 1) != 0);
                v64 = vextq_s8(v53, v53, 4uLL).u64[0];
                v65.n128_f32[0] = 0.25 * v53.f32[0];
                v65.n128_u32[1] = 0;
                v65.n128_u32[2] = 0;
                v42 = vmla_f32(v42, _D10, v64);
                v65.n128_u32[3] = v46;
                v66 = vorr_s8(__PAIR64__(v40, v48), v41);
                HIWORD(v206) = v66.i16[2];
                LOWORD(v206) = v66.i16[0];
                (*(*v5->i64[0] + 24))(v5->i64[0], v206, v65);
                v46 = 1.0;
                v45 = xmmword_186205A00;
                v44 = 0uLL;
                v50 = 0;
                v48 = 1;
              }

              while ((v52 & 1) != 0);
              v43 = 0;
              v40 = 1;
            }

            while ((v49 & 1) != 0);
            v24 = v5->i64[1];
            v23.n128_u64[0] = vmul_f32(v42, _D10);
            v23.n128_u64[1] = 0x3F80000000000000;
            goto LABEL_22;
          }

          v169 = 0;
          v170 = vadd_s32(v6, v6);
          v33.i32[0] = a3;
          v197 = vmovl_u16(v33).u32[0];
          v171 = 2 * v6.u16[2];
          v172 = 1;
          __asm { FMOV            V9.2S, #0.25 }

          do
          {
            v174 = 0;
            v175 = v172;
            LODWORD(v176) = v197;
            HIDWORD(v176) = v169 | v171;
            v198 = v176;
            v177 = 0;
            v178 = 1;
            do
            {
              v179 = 0;
              v180 = v178;
              v181 = 0uLL;
              v182 = 1;
              do
              {
                v183 = 0;
                v184 = v182;
                v185 = v179 | (2 * v169);
                v186 = 1;
                do
                {
                  v187 = a2[4 * (v183 | (2 * v174)) + v185];
                  v187.i32[3] = 0;
                  v188 = vmaxnmq_f32(v187, 0);
                  v188.i32[3] = 0;
                  v189 = vminnmq_f32(v188, xmmword_186205A00);
                  v190 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v5[4], v189.f32[0]), v5[5], *v189.f32, 1), v5[6], v189, 2);
                  v190.i32[3] = 1.0;
                  v191 = v186;
                  v181 = vaddq_f32(v181, vmlaq_f32(v5[3], v190, v5[2]));
                  v183 = 1;
                  v186 = 0;
                }

                while ((v191 & 1) != 0);
                v182 = 0;
                v179 = 1;
              }

              while ((v184 & 1) != 0);
              v192 = vextq_s8(v181, v181, 4uLL).u64[0];
              v193.n128_f32[0] = 0.25 * v181.f32[0];
              v193.n128_u32[1] = 0;
              v193.n128_u32[2] = 0;
              v177 = vmla_f32(v177, _D9, v192);
              v193.n128_u32[3] = 1.0;
              v194 = vorr_s8(__PAIR64__(v169, v174), v170);
              HIWORD(v208) = v194.i16[2];
              LOWORD(v208) = v194.i16[0];
              (*(*v5->i64[0] + 24))(v5->i64[0], v208, v193);
              v178 = 0;
              v174 = 1;
            }

            while ((v180 & 1) != 0);
            HIWORD(v207) = WORD2(v198);
            LOWORD(v207) = v198;
            v195.n128_u64[0] = vmul_f32(v177, 0x3F0000003F000000);
            v195.n128_u64[1] = 0x3F80000000000000;
            result = (*(*v5->i64[1] + 24))(v5->i64[1], v207, v195);
            v172 = 0;
            v169 = 1;
          }

          while ((v175 & 1) != 0);
        }
      }
    }
  }

  return result;
}

void ___ZN3xdr52dispatch_convert_gainmap_image_to_gainmap_image_loopILt1ELt1EEEvRKNS_7imageInES3_RKNS_8imageOutES6_RKNS_16colorTransformInERKNS_15gainTransformInES9_SC_RKNS_17colorTransformOutERKNS_16gainTransformOutEDv2_t_block_invoke(uint64_t a1, unsigned __int16 a2)
{
  v5 = 0x100000000;
  v6 = 1;
  if (*(a1 + 128))
  {
    v4 = 0;
    do
    {
      xdr::convert_gainmap_image_to_gainmap_image_loop<(unsigned short)1,(unsigned short)1>(*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 32), *(a1 + 112), *(a1 + 120), v4++, a2, &v5);
    }

    while (*(a1 + 128) > v4);
  }
}

double xdr::convert_gainmap_image_to_gainmap_image_loop<(unsigned short)1,(unsigned short)1>(uint64_t a1, uint64_t a2, float32x4_t *a3, float32x4_t *a4, float32x4_t *a5, float32x4_t *a6, float32x4_t *a7, float32x4_t *a8, int8x16_t a9, float32x4_t *a10, uint64_t a11, unsigned __int16 a12, unsigned __int16 a13, _DWORD *a14)
{
  v22 = *MEMORY[0x1E69E9840];
  v19.i32[2] = 0;
  v19.i64[0] = 0;
  v21 = xdr::convert_gainmap_image_to_gainmap_image(a1, a2, a5, a6, a7, a8, a10, a11, a9, &v19, a12, a13, a14);
  v16 = v19;
  v16.i32[3] = 0;
  v20 = v16;
  v17 = xdr::image_write_loop<(unsigned short)1,(unsigned short)1>(a3, &v21, *v19.f32);
  *&result = xdr::image_write_loop<(unsigned short)1,(unsigned short)1>(a4, &v20, v17);
  return result;
}

__n128 xdr::convert_gainmap_image_to_gainmap_image(uint64_t a1, uint64_t a2, float32x4_t *a3, float32x4_t *a4, float32x4_t *a5, float32x4_t *a6, float32x4_t *a7, uint64_t a8, int8x16_t a9, _OWORD *a10, unsigned __int16 a11, unsigned __int16 a12, _DWORD *a13)
{
  v20.i32[0] = a11;
  v20.i32[1] = a12;
  v35 = COERCE_DOUBLE(vmla_f32(*&vextq_s8(a9, a9, 8uLL), vadd_f32(vorr_s8(v20, vdup_n_s32(0x4B400000u)), vdup_n_s32(0xCB400000)), *a9.i8));
  xdr::image_sample(a1, a13, v35);
  v37 = v21;
  xdr::image_sample(a2, a13, v35);
  v34 = v22;
  *v23.i64 = xdr::apply_color_trc(a3, v37);
  xdr::apply_tone_mapping(&a3[5], v23);
  if ((a3[23].i8[0] & 1) == 0)
  {
    v24 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a3[20], v24.f32[0]), a3[21], *v24.f32, 1), a3[22], v24, 2);
  }

  *v25.i64 = xdr::apply_gain_mapping(a4, v24, v34);
  if ((a4[10].i8[0] & 1) == 0)
  {
    v25 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a4[7], v25.f32[0]), a4[8], *v25.f32, 1), a4[9], v25, 2);
  }

  v36 = v25;
  *v26.i64 = xdr::apply_color_trc(a5, v37);
  xdr::apply_tone_mapping(&a5[5], v26);
  if ((a5[23].i8[0] & 1) == 0)
  {
    v27 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a5[20], v27.f32[0]), a5[21], *v27.f32, 1), a5[22], v27, 2);
  }

  *v28.i64 = xdr::apply_gain_mapping(a6, v27, v34);
  v29 = v28;
  if ((a6[10].i8[0] & 1) == 0)
  {
    v29 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a6[7], v28.f32[0]), a6[8], *v28.f32, 1), a6[9], v28, 2);
  }

  *&v30 = xdr::apply_gain_transform(a8, v36, v29);
  *a10 = v30;
  if (a7[3].i8[0])
  {
    v31 = v36;
  }

  else
  {
    v31 = vmlaq_f32(vmlaq_f32(vmulq_n_f32(*a7, v36.f32[0]), vdupq_lane_s32(*v36.f32, 1), a7[1]), vdupq_laneq_s32(v36, 2), a7[2]);
  }

  xdr::apply_tone_mapping(&a7[4], v31);
  result.n128_f64[0] = xdr::apply_color_trc(&a7[19], v32);
  result.n128_u32[3] = v37.u32[3];
  return result;
}

uint64_t ___ZN3xdr52dispatch_convert_gainmap_image_to_gainmap_image_loopILt2ELt1EEEvRKNS_7imageInES3_RKNS_8imageOutES6_RKNS_16colorTransformInERKNS_15gainTransformInES9_SC_RKNS_17colorTransformOutERKNS_16gainTransformOutEDv2_t_block_invoke(uint64_t result, __int16 a2)
{
  v6 = 0x100000000;
  v7 = 1;
  if (*(result + 128))
  {
    v3 = result;
    v4 = 0;
    do
    {
      HIWORD(v5) = a2;
      LOWORD(v5) = v4;
      result = xdr::convert_gainmap_image_to_gainmap_image_loop<(unsigned short)2,(unsigned short)1>(*(v3 + 48), *(v3 + 56), *(v3 + 64), *(v3 + 72), *(v3 + 80), *(v3 + 88), *(v3 + 96), *(v3 + 104), *(v3 + 32), *(v3 + 112), *(v3 + 120), v5, &v6);
      ++v4;
    }

    while (*(v3 + 128) > v4);
  }

  return result;
}

uint64_t xdr::convert_gainmap_image_to_gainmap_image_loop<(unsigned short)2,(unsigned short)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float32x4_t *a5, float32x4_t *a6, float32x4_t *a7, float32x4_t *a8, int8x16_t a9, float32x4_t *a10, uint64_t a11, __int32 a12, _DWORD *a13)
{
  v28 = a9;
  v15 = 0;
  v38 = *MEMORY[0x1E69E9840];
  a9.i32[0] = a12;
  v36 = 0u;
  v37 = 0u;
  v16 = &v36;
  v34 = 0u;
  v35 = 0u;
  v17 = &v34;
  v18 = vshl_u32(*&vmovl_u16(*a9.i8), 1);
  v19 = 1;
  do
  {
    v20 = v19;
    DWORD2(v33) = 0;
    v21 = vadd_s32(v15, v18);
    *&v33 = 0;
    v22 = xdr::convert_gainmap_image_to_gainmap_image(a1, a2, a5, a6, a7, a8, a10, a11, v28, &v33, v21.u16[0], v21.u16[2], a13);
    v19 = 0;
    *v16 = v22;
    v23 = v33;
    HIDWORD(v23) = *(v17 + 3);
    *v17 = v23;
    v15 = 1;
    v17 = &v35;
    v16 = &v37;
  }

  while ((v20 & 1) != 0);
  xdr::image_write_loop<(unsigned short)2,(unsigned short)1>(a3, &v36, a12, *&v23);
  return xdr::image_write_loop<(unsigned short)2,(unsigned short)1>(a4, &v34, a12, v24);
}

float32x4_t *___ZN3xdr52dispatch_convert_gainmap_image_to_gainmap_image_loopILt2ELt2EEEvRKNS_7imageInES3_RKNS_8imageOutES6_RKNS_16colorTransformInERKNS_15gainTransformInES9_SC_RKNS_17colorTransformOutERKNS_16gainTransformOutEDv2_t_block_invoke(float32x4_t *result, __int16 a2)
{
  v6 = 0x100000000;
  v7 = 1;
  if (result[8].i16[0])
  {
    v3 = result;
    v4 = 0;
    do
    {
      HIWORD(v5) = a2;
      LOWORD(v5) = v4;
      result = xdr::convert_gainmap_image_to_gainmap_image_loop<(unsigned short)2,(unsigned short)2>(v3[3].i64[0], v3[3].i64[1], v3[4].i64[0], v3[4].i64[1], v3[5].i64[0], v3[5].i64[1], v3[6].i64[0], v3[6].i64[1], v3[2], v3[7].i64[0], v3[7].i64[1], v5, &v6);
      ++v4;
    }

    while (v3[8].u16[0] > v4);
  }

  return result;
}

float32x4_t *xdr::convert_gainmap_image_to_gainmap_image_loop<(unsigned short)2,(unsigned short)2>(uint64_t a1, uint64_t a2, float32x4_t *a3, float32x4_t *a4, float32x4_t *a5, float32x4_t *a6, float32x4_t *a7, float32x4_t *a8, int8x16_t a9, float32x4_t *a10, uint64_t a11, __int32 a12, _DWORD *a13)
{
  v17 = a9;
  v20 = 0;
  v21 = a13;
  v41 = *MEMORY[0x1E69E9840];
  a9.i32[0] = a12;
  v22 = vmovl_u16(*a9.i8).u64[0];
  memset(v40, 0, sizeof(v40));
  memset(v39, 0, sizeof(v39));
  v23 = vadd_s32(v22, v22);
  v24 = 1;
  v36 = v17;
  do
  {
    v25 = 0;
    v35 = v24;
    v26 = 1;
    do
    {
      v37 = v26;
      DWORD2(v38) = 0;
      v27 = vorr_s8(__PAIR64__(v20, v25), v23);
      *&v38 = 0;
      v28 = xdr::convert_gainmap_image_to_gainmap_image(a1, a2, a5, a6, a7, a8, a10, a11, v17, &v38, v27.u16[0], v27.u16[2], v21);
      v17 = v36;
      v26 = 0;
      v40[2 * v25 + v20] = v28;
      v30 = v38;
      v29 = &v39[2 * v25 + v20];
      HIDWORD(v30) = *(v29 | 0xC);
      v21 = a13;
      *v29 = v30;
      v25 = 1;
    }

    while ((v37 & 1) != 0);
    v24 = 0;
    v20 = 1;
  }

  while ((v35 & 1) != 0);
  xdr::image_write_loop<(unsigned short)2,(unsigned short)2>(a3, v40, a12, *&v30);
  return xdr::image_write_loop<(unsigned short)2,(unsigned short)2>(a4, v39, a12, v31);
}

uint64_t ___ZN3xdr52dispatch_convert_gainmap_image_to_gainmap_image_loopILt4ELt2EEEvRKNS_7imageInES3_RKNS_8imageOutES6_RKNS_16colorTransformInERKNS_15gainTransformInES9_SC_RKNS_17colorTransformOutERKNS_16gainTransformOutEDv2_t_block_invoke(uint64_t result, __int16 a2, double a3, uint16x4_t a4)
{
  v8 = 0x100000000;
  v9 = 1;
  if (*(result + 128))
  {
    v5 = result;
    v6 = 0;
    do
    {
      HIWORD(v7) = a2;
      LOWORD(v7) = v6;
      result = xdr::convert_gainmap_image_to_gainmap_image_loop<(unsigned short)4,(unsigned short)2>(*(v5 + 48), *(v5 + 56), *(v5 + 64), *(v5 + 72), *(v5 + 80), *(v5 + 88), *(v5 + 96), *(v5 + 104), *(v5 + 32), a4, *(v5 + 112), *(v5 + 120), v7, &v8);
      ++v6;
    }

    while (*(v5 + 128) > v6);
  }

  return result;
}

uint64_t xdr::convert_gainmap_image_to_gainmap_image_loop<(unsigned short)4,(unsigned short)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float32x4_t *a5, float32x4_t *a6, float32x4_t *a7, float32x4_t *a8, int8x16_t a9, uint16x4_t a10, float32x4_t *a11, uint64_t a12, __int32 a13, _DWORD *a14)
{
  v17 = a9;
  v34 = 0;
  v38 = *MEMORY[0x1E69E9840];
  a10.i32[0] = a13;
  v20 = vshl_u32(*&vmovl_u16(a10), 0x100000002);
  memset(v37, 0, sizeof(v37));
  v21 = 1;
  memset(v36, 0, sizeof(v36));
  v32 = a5;
  do
  {
    v22 = 0;
    v31 = v21;
    v23 = v34;
    do
    {
      v24 = vadd_s32(__PAIR64__(v34, v22), v20);
      DWORD2(v35) = 0;
      *&v35 = 0;
      v25 = xdr::convert_gainmap_image_to_gainmap_image(a1, a2, a5, a6, a7, a8, a11, a12, v17, &v35, v24.u16[0], v24.u16[2], a14);
      v17 = a9;
      a5 = v32;
      v37[v23] = v25;
      v26 = v35;
      HIDWORD(v26) = HIDWORD(v36[v23]);
      v36[v23] = v26;
      ++v22;
      v23 += 2;
    }

    while (v22 != 4);
    v21 = 0;
    v34 = 1;
  }

  while ((v31 & 1) != 0);
  xdr::image_write_loop<(unsigned short)4,(unsigned short)2>(a3, v37, a13, *&v26);
  return xdr::image_write_loop<(unsigned short)4,(unsigned short)2>(a4, v36, a13, v27);
}

float32x4_t *___ZN3xdr52dispatch_convert_gainmap_image_to_gainmap_image_loopILt4ELt4EEEvRKNS_7imageInES3_RKNS_8imageOutES6_RKNS_16colorTransformInERKNS_15gainTransformInES9_SC_RKNS_17colorTransformOutERKNS_16gainTransformOutEDv2_t_block_invoke(float32x4_t *result, __int16 a2, double a3, uint16x4_t a4)
{
  v8 = 0x100000000;
  v9 = 1;
  if (result[8].i16[0])
  {
    v5 = result;
    v6 = 0;
    do
    {
      HIWORD(v7) = a2;
      LOWORD(v7) = v6;
      result = xdr::convert_gainmap_image_to_gainmap_image_loop<(unsigned short)4,(unsigned short)4>(v5[3].i64[0], v5[3].i64[1], v5[4].i64[0], v5[4].i64[1], v5[5].i64[0], v5[5].i64[1], v5[6].i64[0], v5[6].i64[1], v5[2], a4, v5[7].i64[0], v5[7].i64[1], v7, &v8);
      ++v6;
    }

    while (v5[8].u16[0] > v6);
  }

  return result;
}

float32x4_t *xdr::convert_gainmap_image_to_gainmap_image_loop<(unsigned short)4,(unsigned short)4>(uint64_t a1, uint64_t a2, float32x4_t *a3, float32x4_t *a4, float32x4_t *a5, float32x4_t *a6, float32x4_t *a7, float32x4_t *a8, int8x16_t a9, uint16x4_t a10, float32x4_t *a11, uint64_t a12, __int32 a13, _DWORD *a14)
{
  v16 = a9;
  v19 = 0;
  v20 = 0;
  v37 = *MEMORY[0x1E69E9840];
  a10.i32[0] = a13;
  memset(v36, 0, sizeof(v36));
  v21 = vshl_n_s32(*&vmovl_u16(a10), 2uLL);
  memset(v35, 0, sizeof(v35));
  v31 = a6;
  v32 = a5;
  do
  {
    v22 = 0;
    v30 = v19;
    do
    {
      v23 = vadd_s32(__PAIR64__(v20, v22), v21);
      v34.i32[2] = 0;
      v34.i64[0] = 0;
      v24 = xdr::convert_gainmap_image_to_gainmap_image(a1, a2, a5, a6, a7, a8, a11, a12, v16, &v34, v23.u16[0], v23.u16[2], a14);
      a6 = v31;
      a5 = v32;
      *(v36 + v19) = v24;
      v16 = a9;
      v25 = v34;
      v25.i32[3] = *(&v35[0].i32[3] + v19);
      *(v35 + v19) = v25;
      ++v22;
      v19 += 64;
    }

    while (v22 != 4);
    ++v20;
    v19 = v30 + 16;
  }

  while (v20 != 4);
  xdr::image_write_loop<(unsigned short)4,(unsigned short)4>(a3, v36, a13, *v25.f32);
  return xdr::image_write_loop<(unsigned short)4,(unsigned short)4>(a4, v35, a13, v26);
}

void ___ZN3xdr29dispatch_compute_gainmap_loopILt1ELt1EEEvRKNS_7imageInES3_RKNS_8imageOutERKNS_16colorTransformInES9_RKNS_16gainTransformOutEDv2_t_block_invoke(uint64_t a1, __int16 a2, double a3, uint16x4_t a4)
{
  v13 = *MEMORY[0x1E69E9840];
  v10 = 0x100000000;
  v11 = 1;
  if (*(a1 + 96))
  {
    v6 = 0;
    do
    {
      HIWORD(v9) = a2;
      LOWORD(v9) = v6;
      v7 = *(a1 + 64);
      *v8.i64 = xdr::compute_gainmap(*(a1 + 48), *(a1 + 56), *(a1 + 72), *(a1 + 80), *(a1 + 88), v9, &v10, *(a1 + 32), a4);
      v8.i32[3] = 0;
      v12 = v8;
      xdr::image_write_loop<(unsigned short)1,(unsigned short)1>(v7, &v12, *v8.f32);
      ++v6;
    }

    while (*(a1 + 96) > v6);
  }
}

double xdr::compute_gainmap(uint64_t a1, uint64_t a2, float32x4_t *a3, float32x4_t *a4, uint64_t a5, __int32 a6, _DWORD *a7, int8x16_t a8, uint16x4_t a9)
{
  a9.i32[0] = a6;
  v22 = COERCE_DOUBLE(vmla_f32(*&vextq_s8(a8, a8, 8uLL), vadd_f32(vorr_s8(*&vmovl_u16(a9), vdup_n_s32(0x4B400000u)), vdup_n_s32(0xCB400000)), *a8.i8));
  xdr::image_sample(a1, a7, v22);
  v24 = v14;
  xdr::image_sample(a2, a7, v22);
  v23 = v15;
  *v16.i64 = xdr::apply_color_trc(a3, v24);
  xdr::apply_tone_mapping(&a3[5], v16);
  if ((a3[23].i8[0] & 1) == 0)
  {
    v17 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a3[20], v17.f32[0]), a3[21], *v17.f32, 1), a3[22], v17, 2);
  }

  v25 = v17;
  *v18.i64 = xdr::apply_color_trc(a4, v23);
  xdr::apply_tone_mapping(&a4[5], v18);
  v20 = v19;
  if ((a4[23].i8[0] & 1) == 0)
  {
    v20 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a4[20], v19.f32[0]), a4[21], *v19.f32, 1), a4[22], v19, 2);
  }

  return xdr::apply_gain_transform(a5, v25, v20);
}

uint64_t ___ZN3xdr29dispatch_compute_gainmap_loopILt2ELt1EEEvRKNS_7imageInES3_RKNS_8imageOutERKNS_16colorTransformInES9_RKNS_16gainTransformOutEDv2_t_block_invoke(uint64_t result, unsigned int a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v20 = 0x100000000;
  v21 = 1;
  if (*(result + 96))
  {
    v3 = result;
    v4 = 0;
    do
    {
      HIWORD(v17) = a2;
      LOWORD(v17) = v4;
      v5 = *(v3 + 48);
      v6 = *(v3 + 56);
      v7 = *(v3 + 64);
      v8 = *(v3 + 72);
      v9 = *(v3 + 80);
      v10 = *(v3 + 88);
      v11 = *(v3 + 32);
      v22 = 0u;
      v23 = 0u;
      v15 = vshl_u32(__PAIR64__(a2, v4), 1);
      v16 = v11;
      HIWORD(v19) = v15.i16[2];
      LOWORD(v19) = v15.i16[0];
      *&v12 = xdr::compute_gainmap(v5, v6, v8, v9, v10, v19, &v20, v11, v15);
      HIDWORD(v12) = *(&v22 | 0xC);
      v22 = v12;
      *&v12 = vadd_s32(v15, 1);
      HIWORD(v18) = WORD2(v12);
      LOWORD(v18) = v12;
      *&v14 = xdr::compute_gainmap(v5, v6, v8, v9, v10, v18, &v20, v16, v13);
      HIDWORD(v14) = HIDWORD(v23);
      v23 = v14;
      result = xdr::image_write_loop<(unsigned short)2,(unsigned short)1>(v7, &v22, v17, *&v14);
      ++v4;
    }

    while (*(v3 + 96) > v4);
  }

  return result;
}

float32x4_t *___ZN3xdr29dispatch_compute_gainmap_loopILt2ELt2EEEvRKNS_7imageInES3_RKNS_8imageOutERKNS_16colorTransformInES9_RKNS_16gainTransformOutEDv2_t_block_invoke(float32x4_t *result, __int16 a2)
{
  v6 = 0x100000000;
  v7 = 1;
  if (result[6].i16[0])
  {
    v3 = result;
    v4 = 0;
    do
    {
      HIWORD(v5) = a2;
      LOWORD(v5) = v4;
      result = xdr::compute_gainmap_loop<(unsigned short)2,(unsigned short)2>(v3[3].i64[0], v3[3].i64[1], v3[4].i64[0], v3[4].i64[1], v3[5].i64[0], v3[5].i64[1], v5, &v6, v3[2]);
      ++v4;
    }

    while (v3[6].u16[0] > v4);
  }

  return result;
}

float32x4_t *xdr::compute_gainmap_loop<(unsigned short)2,(unsigned short)2>(uint64_t a1, uint64_t a2, float32x4_t *a3, float32x4_t *a4, float32x4_t *a5, uint64_t a6, __int32 a7, _DWORD *a8, int8x16_t a9)
{
  v13 = a9;
  v16 = 0;
  v34 = *MEMORY[0x1E69E9840];
  a9.i32[0] = a7;
  v17 = vmovl_u16(*a9.i8).u64[0];
  v18 = 0;
  memset(v33, 0, sizeof(v33));
  v19 = vadd_s32(v17, v17);
  v20 = 1;
  v31 = v13;
  do
  {
    v21 = 0;
    v30 = v20;
    v22 = 1;
    do
    {
      v23 = v22;
      v24 = vorr_s8(__PAIR64__(v16, v21), v19);
      HIWORD(v32) = v24.i16[2];
      LOWORD(v32) = v24.i16[0];
      *&v26 = xdr::compute_gainmap(a1, a2, a4, a5, a6, v32, a8, v13, v18);
      v13 = v31;
      v22 = 0;
      v25 = &v33[2 * v21 + v16];
      HIDWORD(v26) = *(v25 | 0xC);
      *v25 = v26;
      v21 = 1;
    }

    while ((v23 & 1) != 0);
    v20 = 0;
    v16 = 1;
  }

  while ((v30 & 1) != 0);
  return xdr::image_write_loop<(unsigned short)2,(unsigned short)2>(a3, v33, a7, *&v26);
}

void ___ZN3xdr35dispatch_compute_gainmap_image_loopILt1ELt1EEEvRKNS_7imageInES3_RKNS_8imageOutES6_RKNS_16colorTransformInES9_RKNS_16gainTransformOutERKNS_17colorTransformOutEDv2_t_block_invoke(uint64_t a1, __int16 a2, double a3, uint16x4_t a4)
{
  v23 = *MEMORY[0x1E69E9840];
  v19 = 0x100000000;
  v20 = 1;
  if (*(a1 + 112))
  {
    v6 = 0;
    do
    {
      HIWORD(v18) = a2;
      LOWORD(v18) = v6;
      v7 = *(a1 + 48);
      v8 = *(a1 + 56);
      v9 = *(a1 + 64);
      v10 = *(a1 + 72);
      v11 = *(a1 + 80);
      v12 = *(a1 + 88);
      v13 = *(a1 + 96);
      v14 = *(a1 + 104);
      v15 = *(a1 + 32);
      v21 = 0uLL;
      v16 = xdr::compute_gainmap_image(v7, v8, v11, v12, v13, v14, &v21, v18, v15, a4, &v19);
      v16.n128_u32[3] = 0;
      v22 = v16;
      v17 = xdr::image_write_loop<(unsigned short)1,(unsigned short)1>(v9, &v22, v16.n128_u64[0]);
      xdr::image_write_loop<(unsigned short)1,(unsigned short)1>(v10, &v21, v17);
      ++v6;
    }

    while (*(a1 + 112) > v6);
  }
}

__n128 xdr::compute_gainmap_image(uint64_t a1, uint64_t a2, float32x4_t *a3, float32x4_t *a4, uint64_t a5, float32x4_t *a6, _OWORD *a7, __int32 a8, int8x16_t a9, uint16x4_t a10, _DWORD *a11)
{
  a10.i32[0] = a8;
  v31 = COERCE_DOUBLE(vmla_f32(*&vextq_s8(a9, a9, 8uLL), vadd_f32(vorr_s8(*&vmovl_u16(a10), vdup_n_s32(0x4B400000u)), vdup_n_s32(0xCB400000)), *a9.i8));
  xdr::image_sample(a1, a11, v31);
  v33 = v17;
  xdr::image_sample(a2, a11, v31);
  v29 = v18;
  *v19.i64 = xdr::apply_color_trc(a3, v33);
  xdr::apply_tone_mapping(&a3[5], v19);
  if ((a3[23].i8[0] & 1) == 0)
  {
    v20 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a3[20], v20.f32[0]), a3[21], *v20.f32, 1), a3[22], v20, 2);
  }

  v32 = v20;
  *v21.i64 = xdr::apply_color_trc(a4, v29);
  xdr::apply_tone_mapping(&a4[5], v21);
  v23 = v22;
  if ((a4[23].i8[0] & 1) == 0)
  {
    v23 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a4[20], v22.f32[0]), a4[21], *v22.f32, 1), a4[22], v22, 2);
  }

  *&v24 = xdr::apply_gain_transform(a5, v32, v23);
  v30 = v24;
  if (a6[3].i8[0])
  {
    v25 = v32;
  }

  else
  {
    v25 = vmlaq_f32(vmlaq_f32(vmulq_n_f32(*a6, v32.f32[0]), vdupq_lane_s32(*v32.f32, 1), a6[1]), vdupq_laneq_s32(v32, 2), a6[2]);
  }

  xdr::apply_tone_mapping(&a6[4], v25);
  *&v27 = xdr::apply_color_trc(&a6[19], v26);
  HIDWORD(v27) = v33.i32[3];
  *a7 = v27;
  return v30;
}

uint64_t ___ZN3xdr35dispatch_compute_gainmap_image_loopILt2ELt1EEEvRKNS_7imageInES3_RKNS_8imageOutES6_RKNS_16colorTransformInES9_RKNS_16gainTransformOutERKNS_17colorTransformOutEDv2_t_block_invoke(uint64_t result, __int16 a2, double a3, uint16x4_t a4)
{
  v8 = 0x100000000;
  v9 = 1;
  if (*(result + 112))
  {
    v5 = result;
    v6 = 0;
    do
    {
      HIWORD(v7) = a2;
      LOWORD(v7) = v6;
      result = xdr::compute_gainmap_image_loop<(unsigned short)2,(unsigned short)1>(*(v5 + 48), *(v5 + 56), *(v5 + 64), *(v5 + 72), *(v5 + 80), *(v5 + 88), *(v5 + 96), *(v5 + 104), *(v5 + 32), a4, v7, &v8);
      ++v6;
    }

    while (*(v5 + 112) > v6);
  }

  return result;
}

uint64_t xdr::compute_gainmap_image_loop<(unsigned short)2,(unsigned short)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float32x4_t *a5, float32x4_t *a6, uint64_t a7, float32x4_t *a8, int8x16_t a9, uint16x4_t a10, __int32 a11, _DWORD *a12)
{
  v33 = *MEMORY[0x1E69E9840];
  a10.i32[0] = a11;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v24 = vshl_u32(*&vmovl_u16(a10), 1);
  HIWORD(v27) = v24.i16[2];
  LOWORD(v27) = v24.i16[0];
  v19 = xdr::compute_gainmap_image(a1, a2, a5, a6, a7, a8, &v29, v27, a9, v24, a12);
  v19.n128_u32[3] = *(&v31 | 0xC);
  v31 = v19;
  v19.n128_u64[0] = vadd_s32(v24, 1);
  HIWORD(v28) = v19.n128_u16[2];
  LOWORD(v28) = v19.n128_u16[0];
  v21 = xdr::compute_gainmap_image(a1, a2, a5, a6, a7, a8, &v30, v28, a9, v20, a12);
  v21.n128_u32[3] = v32.n128_u32[3];
  v32 = v21;
  xdr::image_write_loop<(unsigned short)2,(unsigned short)1>(a3, &v31, a11, v21.n128_u64[0]);
  return xdr::image_write_loop<(unsigned short)2,(unsigned short)1>(a4, &v29, a11, v22);
}

float32x4_t *___ZN3xdr35dispatch_compute_gainmap_image_loopILt2ELt2EEEvRKNS_7imageInES3_RKNS_8imageOutES6_RKNS_16colorTransformInES9_RKNS_16gainTransformOutERKNS_17colorTransformOutEDv2_t_block_invoke(float32x4_t *result, __int16 a2)
{
  v6 = 0x100000000;
  v7 = 1;
  if (result[7].i16[0])
  {
    v3 = result;
    v4 = 0;
    do
    {
      HIWORD(v5) = a2;
      LOWORD(v5) = v4;
      result = xdr::compute_gainmap_image_loop<(unsigned short)2,(unsigned short)2>(v3[3].i64[0], v3[3].i64[1], v3[4].i64[0], v3[4].i64[1], v3[5].i64[0], v3[5].i64[1], v3[6].i64[0], v3[6].i64[1], v3[2], v5, &v6);
      ++v4;
    }

    while (v3[7].u16[0] > v4);
  }

  return result;
}

float32x4_t *xdr::compute_gainmap_image_loop<(unsigned short)2,(unsigned short)2>(uint64_t a1, uint64_t a2, float32x4_t *a3, float32x4_t *a4, float32x4_t *a5, float32x4_t *a6, uint64_t a7, float32x4_t *a8, int8x16_t a9, __int32 a10, _DWORD *a11)
{
  v15 = a9;
  v18 = 0;
  v38 = *MEMORY[0x1E69E9840];
  a9.i32[0] = a10;
  v19 = 0;
  memset(v37, 0, sizeof(v37));
  v20 = vmovl_u16(*a9.i8).u64[0];
  memset(v36, 0, sizeof(v36));
  v21 = vadd_s32(v20, v20);
  v22 = 1;
  v34 = v15;
  do
  {
    v23 = 0;
    v33 = v22;
    v24 = 1;
    do
    {
      v25 = v24;
      v26 = vorr_s8(__PAIR64__(v18, v23), v21);
      HIWORD(v35) = v26.i16[2];
      LOWORD(v35) = v26.i16[0];
      v28 = xdr::compute_gainmap_image(a1, a2, a5, a6, a7, a8, &v36[2 * v23 + v18], v35, v15, v19, a11);
      v15 = v34;
      v24 = 0;
      v27 = &v37[2 * v23 + v18];
      v28.n128_u32[3] = *(v27 | 0xC);
      *v27 = v28;
      v23 = 1;
    }

    while ((v25 & 1) != 0);
    v22 = 0;
    v18 = 1;
  }

  while ((v33 & 1) != 0);
  xdr::image_write_loop<(unsigned short)2,(unsigned short)2>(a3, v37, a10, v28.n128_u64[0]);
  return xdr::image_write_loop<(unsigned short)2,(unsigned short)2>(a4, v36, a10, v29);
}

uint64_t ___ZN3xdr35dispatch_compute_gainmap_image_loopILt4ELt2EEEvRKNS_7imageInES3_RKNS_8imageOutES6_RKNS_16colorTransformInES9_RKNS_16gainTransformOutERKNS_17colorTransformOutEDv2_t_block_invoke(uint64_t result, __int16 a2, double a3, uint16x4_t a4)
{
  v8 = 0x100000000;
  v9 = 1;
  if (*(result + 112))
  {
    v5 = result;
    v6 = 0;
    do
    {
      HIWORD(v7) = a2;
      LOWORD(v7) = v6;
      result = xdr::compute_gainmap_image_loop<(unsigned short)4,(unsigned short)2>(*(v5 + 48), *(v5 + 56), *(v5 + 64), *(v5 + 72), *(v5 + 80), *(v5 + 88), *(v5 + 96), *(v5 + 104), *(v5 + 32), a4, v7, &v8);
      ++v6;
    }

    while (*(v5 + 112) > v6);
  }

  return result;
}

uint64_t xdr::compute_gainmap_image_loop<(unsigned short)4,(unsigned short)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float32x4_t *a5, float32x4_t *a6, uint64_t a7, float32x4_t *a8, int8x16_t a9, uint16x4_t a10, __int32 a11, _DWORD *a12)
{
  v16 = a9;
  v19 = 0;
  v36 = *MEMORY[0x1E69E9840];
  a10.i32[0] = a11;
  v20 = vmovl_u16(a10).u64[0];
  v21 = vshl_u32(v20, 0x100000002);
  memset(v35, 0, 128);
  v22 = 1;
  memset(v34, 0, sizeof(v34));
  do
  {
    v23 = 0;
    v31 = v22;
    v24 = v19;
    do
    {
      v25 = vadd_s32(__PAIR64__(v19, v23), v21);
      HIWORD(v33) = v25.i16[2];
      LOWORD(v33) = v25.i16[0];
      v26 = xdr::compute_gainmap_image(a1, a2, a5, a6, a7, a8, &v34[v24], v33, v16, v20, a12);
      v16 = a9;
      v26.n128_u32[3] = *&v35[v24 * 16 + 12];
      *&v35[v24 * 16] = v26;
      ++v23;
      v24 += 2;
    }

    while (v23 != 4);
    v22 = 0;
    v19 = 1;
  }

  while ((v31 & 1) != 0);
  xdr::image_write_loop<(unsigned short)4,(unsigned short)2>(a3, v35, a11, v26.n128_u64[0]);
  return xdr::image_write_loop<(unsigned short)4,(unsigned short)2>(a4, v34, a11, v27);
}

float32x4_t *___ZN3xdr35dispatch_compute_gainmap_image_loopILt4ELt4EEEvRKNS_7imageInES3_RKNS_8imageOutES6_RKNS_16colorTransformInES9_RKNS_16gainTransformOutERKNS_17colorTransformOutEDv2_t_block_invoke(float32x4_t *result, __int16 a2, double a3, uint16x4_t a4)
{
  v8 = 0x100000000;
  v9 = 1;
  if (result[7].i16[0])
  {
    v5 = result;
    v6 = 0;
    do
    {
      HIWORD(v7) = a2;
      LOWORD(v7) = v6;
      result = xdr::compute_gainmap_image_loop<(unsigned short)4,(unsigned short)4>(v5[3].i64[0], v5[3].i64[1], v5[4].i64[0], v5[4].i64[1], v5[5].i64[0], v5[5].i64[1], v5[6].i64[0], v5[6].i64[1], v5[2], a4, v7, &v8);
      ++v6;
    }

    while (v5[7].u16[0] > v6);
  }

  return result;
}

float32x4_t *xdr::compute_gainmap_image_loop<(unsigned short)4,(unsigned short)4>(uint64_t a1, uint64_t a2, float32x4_t *a3, float32x4_t *a4, float32x4_t *a5, float32x4_t *a6, uint64_t a7, float32x4_t *a8, int8x16_t a9, uint16x4_t a10, __int32 a11, _DWORD *a12)
{
  v16 = a9;
  v19 = 0;
  v20 = 0;
  v35 = *MEMORY[0x1E69E9840];
  a10.i32[0] = a11;
  v21 = vmovl_u16(a10).u64[0];
  memset(v34, 0, sizeof(v34));
  v22 = vshl_n_s32(v21, 2uLL);
  memset(v33, 0, sizeof(v33));
  do
  {
    v23 = 0;
    v30 = v19;
    do
    {
      v24 = vadd_s32(__PAIR64__(v20, v23), v22);
      HIWORD(v32) = v24.i16[2];
      LOWORD(v32) = v24.i16[0];
      v25 = xdr::compute_gainmap_image(a1, a2, a5, a6, a7, a8, (v33[0].f32 + v19), v32, v16, v21, a12);
      v16 = a9;
      v25.n128_u32[3] = *(&v34[0].u32[3] + v19);
      *(v34 + v19) = v25;
      ++v23;
      v19 += 64;
    }

    while (v23 != 4);
    ++v20;
    v19 = v30 + 16;
  }

  while (v20 != 4);
  xdr::image_write_loop<(unsigned short)4,(unsigned short)4>(a3, v34, a11, v25.n128_u64[0]);
  return xdr::image_write_loop<(unsigned short)4,(unsigned short)4>(a4, v33, a11, v26);
}

void ___ZN3xdr36dispatch_compute_luma_gain_histogramILt2ELt2ELt4EEEvRKNS_7imageInES3_RKNS_16colorTransformInERKNS_15gainTransformInERNS_11histogram2DEDv2_fDv2_t_block_invoke(uint64_t a1, unint64_t a2)
{
  v2 = 0x100000000;
  v14 = 0x100000000;
  v15 = 1;
  if (*(a1 + 98))
  {
    v5 = 0;
    v6.i32[0] = a2 & 7;
    v6.i32[1] = a2 >> 3;
    v2.i16[0] = *(a1 + 96);
    v2.i16[2] = *(a1 + 98);
    v12 = v6;
    do
    {
      v7 = v2.u16[2];
      if (v2.i16[0])
      {
        v8 = 0;
        do
        {
          v9 = vmla_s32(__PAIR64__(v5, v8), v2, v6);
          v10.i32[0] = *(a1 + 100);
          v10.i32[1] = *(a1 + 102);
          v11 = vcgt_u32(v10, vand_s8(v9, 0xFFFF0000FFFFLL));
          if ((vminv_u16(vuzp1_s16(v11, v11)) & 0x8000) != 0)
          {
            HIWORD(v13) = v9.i16[2];
            LOWORD(v13) = v9.i16[0];
            v2 = xdr::compute_luma_gain_histogram_loop<(unsigned short)2,(unsigned short)2,(unsigned short)4>(*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80) + (a2 << 12), v13, &v14, *(a1 + 88), *(a1 + 32));
            v6 = v12;
            v2.i16[0] = *(a1 + 96);
            v2.i16[2] = *(a1 + 98);
            v7 = v2.u16[2];
          }

          ++v8;
        }

        while (v8 < v2.u16[0]);
      }

      ++v5;
    }

    while (v5 < v7);
  }
}

uint16x4_t xdr::compute_luma_gain_histogram_loop<(unsigned short)2,(unsigned short)2,(unsigned short)4>(uint64_t a1, uint64_t a2, float32x4_t *a3, uint64_t a4, uint64_t a5, __int32 a6, _DWORD *a7, uint16x4_t a8, int8x16_t a9)
{
  v50 = a8;
  v15 = 0;
  a8.i32[0] = a6;
  v16 = vmovl_u16(a8).u64[0];
  v17 = vadd_s32(v16, v16);
  v53 = vextq_s8(a9, a9, 8uLL).u64[0];
  v54 = *a9.i8;
  v18 = 0;
  v19 = vdup_n_s32(0x4B400000u);
  v20 = vdup_n_s32(0xCB400000);
  v52 = vdupq_n_s32(0x3EAAAAABu);
  v21 = 1;
  __asm
  {
    FMOV            V8.2S, #4.0
    FMOV            V0.4S, #1.0
  }

  v51 = _Q0;
  do
  {
    v28 = 0;
    v29 = v21;
    v30 = 1;
    do
    {
      v31 = v30;
      v32 = COERCE_DOUBLE(vmla_f32(v53, vmul_f32(vadd_f32(vadd_f32(vorr_s8(vand_s8(vorr_s8(__PAIR64__(v15, v28), v17), 0xFFFF0000FFFFLL), v19), v20), 0x3F0000003F000000), _D8), v54));
      xdr::image_sample(a1, a7, v32);
      v55 = v33;
      xdr::image_sample(a2, a7, v32);
      v57 = v34;
      *v35.i64 = xdr::apply_color_trc(a3, v55);
      xdr::apply_tone_mapping(&a3[5], v35);
      if ((a3[23].i8[0] & 1) == 0)
      {
        v36 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a3[20], v36.f32[0]), a3[21], *v36.f32, 1), a3[22], v36, 2);
      }

      *v37.i64 = xdr::apply_gain_mapping(a4, v36, v57);
      v38 = v37;
      if (*a4 == 2 || *a4 == 1)
      {
        v39 = vabsq_f32(v57);
        v39.i32[3] = 0;
        v40 = *(a4 + 16);
        v41 = vmaxnmq_f32(v39, xmmword_186205A60);
        v41.i32[3] = 0;
        v40.i32[3] = 0;
        v56 = v38;
        v42 = _simd_pow_f4(v41, v40);
        v38 = v56;
        v43.i64[0] = 0x8000000080000000;
        v43.i64[1] = 0x8000000080000000;
        v44 = vmulq_f32(vandq_s8(vorrq_s8(vandq_s8(v57, v43), v51), vorrq_s8(vcltzq_f32(v57), vcgtzq_f32(v57))), v42);
      }

      else
      {
        v44 = v57;
      }

      v30 = 0;
      v45 = vmulq_f32(v38, v52);
      v45.f32[0] = v45.f32[2] + vaddv_f32(*v45.f32);
      v45.f32[0] = v45.f32[0] + ((fmaxf(v38.f32[0], fmaxf(v38.f32[1], v38.f32[2])) - v45.f32[0]) * 0.5);
      v46 = vmulq_f32(v44, v52);
      v45.f32[1] = v46.f32[2] + vaddv_f32(*v46.f32);
      v18 = vadd_f32(v18, *v45.f32);
      v28 = 1;
    }

    while ((v31 & 1) != 0);
    v21 = 0;
    v15 = 1;
  }

  while ((v29 & 1) != 0);
  __asm { FMOV            V0.2S, #0.25 }

  v48 = vcvt_n_s32_f32(vmul_f32(vmul_f32(v50, _D0), v18), 5uLL);
  result = vmin_u16(vuzp1_s16(v48, v48).u32[0], 2031647);
  ++*(a5 + (result.u16[0] << 7) + 4 * result.u16[1]);
  return result;
}

void *___ZN3xdr36dispatch_compute_luma_gain_histogramILt2ELt2ELt4EEEvRKNS_7imageInES3_RKNS_16colorTransformInERKNS_15gainTransformInERNS_11histogram2DEDv2_fDv2_t_block_invoke_2(void *result, uint64_t a2)
{
  v2 = 0;
  v3 = 0;
  v4 = result[5] + (a2 << 7);
  v5 = result[6] + (a2 << 7);
  do
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v7 += *(v4 + v6);
      v6 += 4096;
    }

    while (v6 != 0x40000);
    *(v5 + 4 * v2) = v7;
    v3 += v7;
    ++v2;
    v4 += 4;
  }

  while (v2 != 32);
  atomic_fetch_add_explicit(*(*(result[4] + 8) + 24), v3, memory_order_relaxed);
  return result;
}

void ___ZN3xdr28dispatch_compute_image_statsILt8ELt8ELt1EEEvRKNS_7imageInERKNS_16colorTransformInERNS_10imageStatsEDv2_t_block_invoke(uint64_t a1, unint64_t a2)
{
  v2 = 0x100000000;
  v14 = 0x100000000;
  v15 = 1;
  if (*(a1 + 74))
  {
    v5 = 0;
    v6.i32[0] = a2 & 7;
    v6.i32[1] = a2 >> 3;
    v2.i16[0] = *(a1 + 72);
    v2.i16[2] = *(a1 + 74);
    v12 = v6;
    do
    {
      v7 = v2.u16[2];
      if (v2.i16[0])
      {
        v8 = 0;
        do
        {
          v9 = vmla_s32(__PAIR64__(v5, v8), v2, v6);
          v10.i32[0] = *(a1 + 76);
          v10.i32[1] = *(a1 + 78);
          v11 = vcgt_u32(v10, vand_s8(v9, 0xFFFF0000FFFFLL));
          if ((vminv_u16(vuzp1_s16(v11, v11)) & 0x8000) != 0)
          {
            HIWORD(v13) = v9.i16[2];
            LOWORD(v13) = v9.i16[0];
            xdr::compute_image_stats_loop<(unsigned short)8,(unsigned short)8,(unsigned short)1>(*(a1 + 48), *(a1 + 56), *(a1 + 64) + 12 * a2, v13, *(a1 + 80), &v14, *(a1 + 32), v9);
            v6 = v12;
            v2.i16[0] = *(a1 + 72);
            v2.i16[2] = *(a1 + 74);
            v7 = v2.u16[2];
          }

          ++v8;
        }

        while (v8 < v2.u16[0]);
      }

      ++v5;
    }

    while (v5 < v7);
  }
}

void xdr::compute_image_stats_loop<(unsigned short)8,(unsigned short)8,(unsigned short)1>(uint64_t a1, float32x4_t *a2, uint64_t a3, __int32 a4, __int32 a5, _DWORD *a6, int8x16_t a7, uint16x4_t a8)
{
  v12 = 0;
  a8.i32[0] = a4;
  v13 = vmovl_u16(a8).u64[0];
  a8.i32[0] = a5;
  v14 = vshl_n_s32(v13, 3uLL);
  v30 = *a7.i8;
  v29 = vextq_s8(a7, a7, 8uLL).u64[0];
  v15 = vand_s8(*&vmovl_u16(a8), 0xFFFF0000FFFFLL);
  v16 = vdup_n_s32(0x4B400000u);
  v17 = vdup_n_s32(0xCB400000);
  do
  {
    v18 = 0;
    do
    {
      v19 = vand_s8(vadd_s32(__PAIR64__(v12, v18), v14), 0xFFFF0000FFFFLL);
      v20 = vcgt_u32(v15, v19);
      if ((vminv_u16(vuzp1_s16(v20, v20)) & 0x8000) != 0)
      {
        xdr::image_sample(a1, a6, COERCE_DOUBLE(vmla_f32(v29, vadd_f32(vadd_f32(vorr_s8(v19, v16), v17), 0x3F0000003F000000), v30)));
        *v22.i64 = xdr::apply_color_trc(a2, v21);
        xdr::apply_tone_mapping(&a2[5], v22);
        if ((a2[23].i8[0] & 1) == 0)
        {
          v23 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a2[20], v23.f32[0]), a2[21], *v23.f32, 1), a2[22], v23, 2);
        }

        v24 = fmaxf(v23.f32[0], fmaxf(v23.f32[1], v23.f32[2]));
        v25 = fmaxf(v24, *a3);
        v26 = v24 + *(a3 + 4);
        *a3 = v25;
        *(a3 + 4) = v26;
        ++*(a3 + 8);
      }

      v27 = v18++;
    }

    while (v27 < 7);
    v28 = v12++;
  }

  while (v28 < 7);
}

void ___ZN3xdr28dispatch_compute_image_statsILt8ELt8ELt2EEEvRKNS_7imageInERKNS_16colorTransformInERNS_10imageStatsEDv2_t_block_invoke(uint64_t a1, unint64_t a2)
{
  v2 = 0x100000000;
  v14 = 0x100000000;
  v15 = 1;
  if (*(a1 + 74))
  {
    v5 = 0;
    v6.i32[0] = a2 & 7;
    v6.i32[1] = a2 >> 3;
    v2.i16[0] = *(a1 + 72);
    v2.i16[2] = *(a1 + 74);
    v12 = v6;
    do
    {
      v7 = v2.u16[2];
      if (v2.i16[0])
      {
        v8 = 0;
        do
        {
          v9 = vmla_s32(__PAIR64__(v5, v8), v2, v6);
          v10.i32[0] = *(a1 + 76);
          v10.i32[1] = *(a1 + 78);
          v11 = vcgt_u32(v10, vand_s8(v9, 0xFFFF0000FFFFLL));
          if ((vminv_u16(vuzp1_s16(v11, v11)) & 0x8000) != 0)
          {
            HIWORD(v13) = v9.i16[2];
            LOWORD(v13) = v9.i16[0];
            xdr::compute_image_stats_loop<(unsigned short)8,(unsigned short)8,(unsigned short)2>(*(a1 + 48), *(a1 + 56), *(a1 + 64) + 12 * a2, v13, *(a1 + 80), &v14, *(a1 + 32), v9);
            v6 = v12;
            v2.i16[0] = *(a1 + 72);
            v2.i16[2] = *(a1 + 74);
            v7 = v2.u16[2];
          }

          ++v8;
        }

        while (v8 < v2.u16[0]);
      }

      ++v5;
    }

    while (v5 < v7);
  }
}

void xdr::compute_image_stats_loop<(unsigned short)8,(unsigned short)8,(unsigned short)2>(uint64_t a1, float32x4_t *a2, uint64_t a3, __int32 a4, unsigned int a5, _DWORD *a6, int8x16_t a7, uint16x4_t a8)
{
  v12 = 0;
  a8.i32[0] = a4;
  v13 = vshl_n_s32(*&vmovl_u16(a8), 3uLL);
  v30 = *a7.i8;
  v29 = vextq_s8(a7, a7, 8uLL).u64[0];
  v14 = vdup_n_s32(a5);
  v15 = vdup_n_s32(0x4B400000u);
  v16 = vdup_n_s32(0xCB400000);
  do
  {
    v17 = 0;
    do
    {
      v18 = vadd_s32(__PAIR64__(v12, v17), v13);
      v19 = vuzp1_s16(v18, v18);
      if ((vminv_u16(vcgt_u16(v14, vadd_s16(v19, v19))) & 0x8000) != 0)
      {
        v20 = vadd_f32(vadd_f32(vorr_s8(vand_s8(v18, 0xFFFF0000FFFFLL), v15), v16), 0x3F0000003F000000);
        xdr::image_sample(a1, a6, COERCE_DOUBLE(vmla_f32(v29, vadd_f32(v20, v20), v30)));
        *v22.i64 = xdr::apply_color_trc(a2, v21);
        xdr::apply_tone_mapping(&a2[5], v22);
        if ((a2[23].i8[0] & 1) == 0)
        {
          v23 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a2[20], v23.f32[0]), a2[21], *v23.f32, 1), a2[22], v23, 2);
        }

        v24 = fmaxf(v23.f32[0], fmaxf(v23.f32[1], v23.f32[2]));
        v25 = fmaxf(v24, *a3);
        v26 = v24 + *(a3 + 4);
        *a3 = v25;
        *(a3 + 4) = v26;
        ++*(a3 + 8);
      }

      v27 = v17++;
    }

    while (v27 < 7);
    v28 = v12++;
  }

  while (v28 < 7);
}

void ___ZN3xdr28dispatch_compute_image_statsILt8ELt8ELt4EEEvRKNS_7imageInERKNS_16colorTransformInERNS_10imageStatsEDv2_t_block_invoke(uint64_t a1, unint64_t a2)
{
  v2 = 0x100000000;
  v14 = 0x100000000;
  v15 = 1;
  if (*(a1 + 74))
  {
    v5 = 0;
    v6.i32[0] = a2 & 7;
    v6.i32[1] = a2 >> 3;
    v2.i16[0] = *(a1 + 72);
    v2.i16[2] = *(a1 + 74);
    v12 = v6;
    do
    {
      v7 = v2.u16[2];
      if (v2.i16[0])
      {
        v8 = 0;
        do
        {
          v9 = vmla_s32(__PAIR64__(v5, v8), v2, v6);
          v10.i32[0] = *(a1 + 76);
          v10.i32[1] = *(a1 + 78);
          v11 = vcgt_u32(v10, vand_s8(v9, 0xFFFF0000FFFFLL));
          if ((vminv_u16(vuzp1_s16(v11, v11)) & 0x8000) != 0)
          {
            HIWORD(v13) = v9.i16[2];
            LOWORD(v13) = v9.i16[0];
            xdr::compute_image_stats_loop<(unsigned short)8,(unsigned short)8,(unsigned short)4>(*(a1 + 48), *(a1 + 56), *(a1 + 64) + 12 * a2, v13, *(a1 + 80), &v14, *(a1 + 32), v9);
            v6 = v12;
            v2.i16[0] = *(a1 + 72);
            v2.i16[2] = *(a1 + 74);
            v7 = v2.u16[2];
          }

          ++v8;
        }

        while (v8 < v2.u16[0]);
      }

      ++v5;
    }

    while (v5 < v7);
  }
}

void xdr::compute_image_stats_loop<(unsigned short)8,(unsigned short)8,(unsigned short)4>(uint64_t a1, float32x4_t *a2, uint64_t a3, __int32 a4, unsigned int a5, _DWORD *a6, int8x16_t a7, uint16x4_t a8)
{
  v12 = 0;
  a8.i32[0] = a4;
  v13 = vshl_n_s32(*&vmovl_u16(a8), 3uLL);
  v33 = *a7.i8;
  v32 = vextq_s8(a7, a7, 8uLL).u64[0];
  v14 = vdup_n_s32(a5);
  v15 = vdup_n_s32(0x4B400000u);
  v16 = vdup_n_s32(0xCB400000);
  __asm { FMOV            V14.2S, #4.0 }

  do
  {
    v22 = 0;
    do
    {
      v23 = vadd_s32(__PAIR64__(v12, v22), v13);
      if ((vminv_u16(vcgt_u16(v14, vshl_n_s16(vuzp1_s16(v23, v23), 2uLL))) & 0x8000) != 0)
      {
        xdr::image_sample(a1, a6, COERCE_DOUBLE(vmla_f32(v32, vmul_f32(vadd_f32(vadd_f32(vorr_s8(vand_s8(v23, 0xFFFF0000FFFFLL), v15), v16), 0x3F0000003F000000), _D14), v33)));
        *v25.i64 = xdr::apply_color_trc(a2, v24);
        xdr::apply_tone_mapping(&a2[5], v25);
        if ((a2[23].i8[0] & 1) == 0)
        {
          v26 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a2[20], v26.f32[0]), a2[21], *v26.f32, 1), a2[22], v26, 2);
        }

        v27 = fmaxf(v26.f32[0], fmaxf(v26.f32[1], v26.f32[2]));
        v28 = fmaxf(v27, *a3);
        v29 = v27 + *(a3 + 4);
        *a3 = v28;
        *(a3 + 4) = v29;
        ++*(a3 + 8);
      }

      v30 = v22++;
    }

    while (v30 < 7);
    v31 = v12++;
  }

  while (v31 < 7);
}

void ___ZN3xdr28dispatch_compute_image_statsILt8ELt8ELt8EEEvRKNS_7imageInERKNS_16colorTransformInERNS_10imageStatsEDv2_t_block_invoke(uint64_t a1, unint64_t a2)
{
  v2 = 0x100000000;
  v14 = 0x100000000;
  v15 = 1;
  if (*(a1 + 74))
  {
    v5 = 0;
    v6.i32[0] = a2 & 7;
    v6.i32[1] = a2 >> 3;
    v2.i16[0] = *(a1 + 72);
    v2.i16[2] = *(a1 + 74);
    v12 = v6;
    do
    {
      v7 = v2.u16[2];
      if (v2.i16[0])
      {
        v8 = 0;
        do
        {
          v9 = vmla_s32(__PAIR64__(v5, v8), v2, v6);
          v10.i32[0] = *(a1 + 76);
          v10.i32[1] = *(a1 + 78);
          v11 = vcgt_u32(v10, vand_s8(v9, 0xFFFF0000FFFFLL));
          if ((vminv_u16(vuzp1_s16(v11, v11)) & 0x8000) != 0)
          {
            HIWORD(v13) = v9.i16[2];
            LOWORD(v13) = v9.i16[0];
            xdr::compute_image_stats_loop<(unsigned short)8,(unsigned short)8,(unsigned short)8>(*(a1 + 48), *(a1 + 56), *(a1 + 64) + 12 * a2, v13, *(a1 + 80), &v14, *(a1 + 32), v9);
            v6 = v12;
            v2.i16[0] = *(a1 + 72);
            v2.i16[2] = *(a1 + 74);
            v7 = v2.u16[2];
          }

          ++v8;
        }

        while (v8 < v2.u16[0]);
      }

      ++v5;
    }

    while (v5 < v7);
  }
}

void xdr::compute_image_stats_loop<(unsigned short)8,(unsigned short)8,(unsigned short)8>(uint64_t a1, float32x4_t *a2, uint64_t a3, __int32 a4, unsigned int a5, _DWORD *a6, int8x16_t a7, uint16x4_t a8)
{
  v12 = 0;
  a8.i32[0] = a4;
  v13 = vshl_n_s32(*&vmovl_u16(a8), 3uLL);
  v28 = *a7.i8;
  v27 = vextq_s8(a7, a7, 8uLL).u64[0];
  v14 = vdup_n_s32(a5);
  v15 = vdup_n_s32(0x4B400000u);
  v16 = vdup_n_s32(0xCB400000);
  do
  {
    v17 = 0;
    do
    {
      v18 = vadd_s32(__PAIR64__(v12, v17), v13);
      if ((vminv_u16(vcgt_u16(v14, vshl_n_s16(vuzp1_s16(v18, v18), 3uLL))) & 0x8000) != 0)
      {
        xdr::image_sample(a1, a6, COERCE_DOUBLE(vmla_f32(v27, vmul_f32(vadd_f32(vadd_f32(vorr_s8(vand_s8(v18, 0xFFFF0000FFFFLL), v15), v16), 0x3F0000003F000000), 0x4100000041000000), v28)));
        *v20.i64 = xdr::apply_color_trc(a2, v19);
        xdr::apply_tone_mapping(&a2[5], v20);
        if ((a2[23].i8[0] & 1) == 0)
        {
          v21 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a2[20], v21.f32[0]), a2[21], *v21.f32, 1), a2[22], v21, 2);
        }

        v22 = fmaxf(v21.f32[0], fmaxf(v21.f32[1], v21.f32[2]));
        v23 = fmaxf(v22, *a3);
        v24 = v22 + *(a3 + 4);
        *a3 = v23;
        *(a3 + 4) = v24;
        ++*(a3 + 8);
      }

      v25 = v17++;
    }

    while (v25 < 7);
    v26 = v12++;
  }

  while (v26 < 7);
}

void ___ZN3xdr28dispatch_compute_image_statsILt8ELt8ELt16EEEvRKNS_7imageInERKNS_16colorTransformInERNS_10imageStatsEDv2_t_block_invoke(uint64_t a1, unint64_t a2)
{
  v2 = 0x100000000;
  v14 = 0x100000000;
  v15 = 1;
  if (*(a1 + 74))
  {
    v5 = 0;
    v6.i32[0] = a2 & 7;
    v6.i32[1] = a2 >> 3;
    v2.i16[0] = *(a1 + 72);
    v2.i16[2] = *(a1 + 74);
    v12 = v6;
    do
    {
      v7 = v2.u16[2];
      if (v2.i16[0])
      {
        v8 = 0;
        do
        {
          v9 = vmla_s32(__PAIR64__(v5, v8), v2, v6);
          v10.i32[0] = *(a1 + 76);
          v10.i32[1] = *(a1 + 78);
          v11 = vcgt_u32(v10, vand_s8(v9, 0xFFFF0000FFFFLL));
          if ((vminv_u16(vuzp1_s16(v11, v11)) & 0x8000) != 0)
          {
            HIWORD(v13) = v9.i16[2];
            LOWORD(v13) = v9.i16[0];
            xdr::compute_image_stats_loop<(unsigned short)8,(unsigned short)8,(unsigned short)16>(*(a1 + 48), *(a1 + 56), *(a1 + 64) + 12 * a2, v13, *(a1 + 80), &v14, *(a1 + 32), v9);
            v6 = v12;
            v2.i16[0] = *(a1 + 72);
            v2.i16[2] = *(a1 + 74);
            v7 = v2.u16[2];
          }

          ++v8;
        }

        while (v8 < v2.u16[0]);
      }

      ++v5;
    }

    while (v5 < v7);
  }
}

void xdr::compute_image_stats_loop<(unsigned short)8,(unsigned short)8,(unsigned short)16>(uint64_t a1, float32x4_t *a2, uint64_t a3, __int32 a4, unsigned int a5, _DWORD *a6, int8x16_t a7, uint16x4_t a8)
{
  v12 = 0;
  a8.i32[0] = a4;
  v13 = vshl_n_s32(*&vmovl_u16(a8), 3uLL);
  v33 = *a7.i8;
  v32 = vextq_s8(a7, a7, 8uLL).u64[0];
  v14 = vdup_n_s32(a5);
  v15 = vdup_n_s32(0x4B400000u);
  v16 = vdup_n_s32(0xCB400000);
  __asm { FMOV            V14.2S, #16.0 }

  do
  {
    v22 = 0;
    do
    {
      v23 = vadd_s32(__PAIR64__(v12, v22), v13);
      if ((vminv_u16(vcgt_u16(v14, vshl_n_s16(vuzp1_s16(v23, v23), 4uLL))) & 0x8000) != 0)
      {
        xdr::image_sample(a1, a6, COERCE_DOUBLE(vmla_f32(v32, vmul_f32(vadd_f32(vadd_f32(vorr_s8(vand_s8(v23, 0xFFFF0000FFFFLL), v15), v16), 0x3F0000003F000000), _D14), v33)));
        *v25.i64 = xdr::apply_color_trc(a2, v24);
        xdr::apply_tone_mapping(&a2[5], v25);
        if ((a2[23].i8[0] & 1) == 0)
        {
          v26 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a2[20], v26.f32[0]), a2[21], *v26.f32, 1), a2[22], v26, 2);
        }

        v27 = fmaxf(v26.f32[0], fmaxf(v26.f32[1], v26.f32[2]));
        v28 = fmaxf(v27, *a3);
        v29 = v27 + *(a3 + 4);
        *a3 = v28;
        *(a3 + 4) = v29;
        ++*(a3 + 8);
      }

      v30 = v22++;
    }

    while (v30 < 7);
    v31 = v12++;
  }

  while (v31 < 7);
}

void ___ZN3xdr28dispatch_compute_image_statsILt8ELt8ELt32EEEvRKNS_7imageInERKNS_16colorTransformInERNS_10imageStatsEDv2_t_block_invoke(uint64_t a1, unint64_t a2)
{
  v2 = 0x100000000;
  v14 = 0x100000000;
  v15 = 1;
  if (*(a1 + 74))
  {
    v5 = 0;
    v6.i32[0] = a2 & 7;
    v6.i32[1] = a2 >> 3;
    v2.i16[0] = *(a1 + 72);
    v2.i16[2] = *(a1 + 74);
    v12 = v6;
    do
    {
      v7 = v2.u16[2];
      if (v2.i16[0])
      {
        v8 = 0;
        do
        {
          v9 = vmla_s32(__PAIR64__(v5, v8), v2, v6);
          v10.i32[0] = *(a1 + 76);
          v10.i32[1] = *(a1 + 78);
          v11 = vcgt_u32(v10, vand_s8(v9, 0xFFFF0000FFFFLL));
          if ((vminv_u16(vuzp1_s16(v11, v11)) & 0x8000) != 0)
          {
            HIWORD(v13) = v9.i16[2];
            LOWORD(v13) = v9.i16[0];
            xdr::compute_image_stats_loop<(unsigned short)8,(unsigned short)8,(unsigned short)32>(*(a1 + 48), *(a1 + 56), *(a1 + 64) + 12 * a2, v13, *(a1 + 80), &v14, *(a1 + 32), v9);
            v6 = v12;
            v2.i16[0] = *(a1 + 72);
            v2.i16[2] = *(a1 + 74);
            v7 = v2.u16[2];
          }

          ++v8;
        }

        while (v8 < v2.u16[0]);
      }

      ++v5;
    }

    while (v5 < v7);
  }
}

void xdr::compute_image_stats_loop<(unsigned short)8,(unsigned short)8,(unsigned short)32>(uint64_t a1, float32x4_t *a2, uint64_t a3, __int32 a4, unsigned int a5, _DWORD *a6, int8x16_t a7, uint16x4_t a8)
{
  v12 = 0;
  a8.i32[0] = a4;
  v13 = vshl_n_s32(*&vmovl_u16(a8), 3uLL);
  v28 = *a7.i8;
  v27 = vextq_s8(a7, a7, 8uLL).u64[0];
  v14 = vdup_n_s32(a5);
  v15 = vdup_n_s32(0x4B400000u);
  v16 = vdup_n_s32(0xCB400000);
  do
  {
    v17 = 0;
    do
    {
      v18 = vadd_s32(__PAIR64__(v12, v17), v13);
      if ((vminv_u16(vcgt_u16(v14, vshl_n_s16(vuzp1_s16(v18, v18), 5uLL))) & 0x8000) != 0)
      {
        xdr::image_sample(a1, a6, COERCE_DOUBLE(vmla_f32(v27, vmul_f32(vadd_f32(vadd_f32(vorr_s8(vand_s8(v18, 0xFFFF0000FFFFLL), v15), v16), 0x3F0000003F000000), 0x4200000042000000), v28)));
        *v20.i64 = xdr::apply_color_trc(a2, v19);
        xdr::apply_tone_mapping(&a2[5], v20);
        if ((a2[23].i8[0] & 1) == 0)
        {
          v21 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a2[20], v21.f32[0]), a2[21], *v21.f32, 1), a2[22], v21, 2);
        }

        v22 = fmaxf(v21.f32[0], fmaxf(v21.f32[1], v21.f32[2]));
        v23 = fmaxf(v22, *a3);
        v24 = v22 + *(a3 + 4);
        *a3 = v23;
        *(a3 + 4) = v24;
        ++*(a3 + 8);
      }

      v25 = v17++;
    }

    while (v25 < 7);
    v26 = v12++;
  }

  while (v26 < 7);
}

void ___ZN3xdr28dispatch_compute_image_statsILt8ELt8ELt64EEEvRKNS_7imageInERKNS_16colorTransformInERNS_10imageStatsEDv2_t_block_invoke(uint64_t a1, unint64_t a2)
{
  v2 = 0x100000000;
  v14 = 0x100000000;
  v15 = 1;
  if (*(a1 + 74))
  {
    v5 = 0;
    v6.i32[0] = a2 & 7;
    v6.i32[1] = a2 >> 3;
    v2.i16[0] = *(a1 + 72);
    v2.i16[2] = *(a1 + 74);
    v12 = v6;
    do
    {
      v7 = v2.u16[2];
      if (v2.i16[0])
      {
        v8 = 0;
        do
        {
          v9 = vmla_s32(__PAIR64__(v5, v8), v2, v6);
          v10.i32[0] = *(a1 + 76);
          v10.i32[1] = *(a1 + 78);
          v11 = vcgt_u32(v10, vand_s8(v9, 0xFFFF0000FFFFLL));
          if ((vminv_u16(vuzp1_s16(v11, v11)) & 0x8000) != 0)
          {
            HIWORD(v13) = v9.i16[2];
            LOWORD(v13) = v9.i16[0];
            xdr::compute_image_stats_loop<(unsigned short)8,(unsigned short)8,(unsigned short)64>(*(a1 + 48), *(a1 + 56), *(a1 + 64) + 12 * a2, v13, *(a1 + 80), &v14, *(a1 + 32), v9);
            v6 = v12;
            v2.i16[0] = *(a1 + 72);
            v2.i16[2] = *(a1 + 74);
            v7 = v2.u16[2];
          }

          ++v8;
        }

        while (v8 < v2.u16[0]);
      }

      ++v5;
    }

    while (v5 < v7);
  }
}

void xdr::compute_image_stats_loop<(unsigned short)8,(unsigned short)8,(unsigned short)64>(uint64_t a1, float32x4_t *a2, uint64_t a3, __int32 a4, unsigned int a5, _DWORD *a6, int8x16_t a7, uint16x4_t a8)
{
  v12 = 0;
  a8.i32[0] = a4;
  v13 = vshl_n_s32(*&vmovl_u16(a8), 3uLL);
  v14 = vdup_n_s32(a5);
  v29 = *a7.i8;
  v28 = vextq_s8(a7, a7, 8uLL).u64[0];
  v15 = vdup_n_s32(0x4B400000u);
  v16 = vdup_n_s32(0xCB400000);
  v17 = vdup_n_s32(0x42800000u);
  do
  {
    v18 = 0;
    do
    {
      v19 = vadd_s32(__PAIR64__(v12, v18), v13);
      if ((vminv_u16(vcgt_u16(v14, vshl_n_s16(vuzp1_s16(v19, v19), 6uLL))) & 0x8000) != 0)
      {
        xdr::image_sample(a1, a6, COERCE_DOUBLE(vmla_f32(v28, vmul_f32(vadd_f32(vadd_f32(vorr_s8(vand_s8(v19, 0xFFFF0000FFFFLL), v15), v16), 0x3F0000003F000000), v17), v29)));
        *v21.i64 = xdr::apply_color_trc(a2, v20);
        xdr::apply_tone_mapping(&a2[5], v21);
        if ((a2[23].i8[0] & 1) == 0)
        {
          v22 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a2[20], v22.f32[0]), a2[21], *v22.f32, 1), a2[22], v22, 2);
        }

        v23 = fmaxf(v22.f32[0], fmaxf(v22.f32[1], v22.f32[2]));
        v24 = fmaxf(v23, *a3);
        v25 = v23 + *(a3 + 4);
        *a3 = v24;
        *(a3 + 4) = v25;
        ++*(a3 + 8);
      }

      v26 = v18++;
    }

    while (v26 < 7);
    v27 = v12++;
  }

  while (v27 < 7);
}

void ___ZN3xdr36dispatch_compute_image_gainmap_statsILt2ELt2ELt4EEEvRKNS_7imageInES3_RKNS_16colorTransformInERKNS_15gainTransformInERNS_10imageStatsEDv2_t_block_invoke(uint64_t a1, unint64_t a2)
{
  v2 = 0x100000000;
  v14 = 0x100000000;
  v15 = 1;
  if (*(a1 + 90))
  {
    v5 = 0;
    v6.i32[0] = a2 & 7;
    v6.i32[1] = a2 >> 3;
    v2.i16[0] = *(a1 + 88);
    v2.i16[2] = *(a1 + 90);
    v12 = v6;
    do
    {
      v7 = v2.u16[2];
      if (v2.i16[0])
      {
        v8 = 0;
        do
        {
          v9 = vmla_s32(__PAIR64__(v5, v8), v2, v6);
          v10.i32[0] = *(a1 + 92);
          v10.i32[1] = *(a1 + 94);
          v11 = vcgt_u32(v10, vand_s8(v9, 0xFFFF0000FFFFLL));
          if ((vminv_u16(vuzp1_s16(v11, v11)) & 0x8000) != 0)
          {
            HIWORD(v13) = v9.i16[2];
            LOWORD(v13) = v9.i16[0];
            xdr::compute_image_gainmap_stats_loop<(unsigned short)2,(unsigned short)2,(unsigned short)4>(*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80) + 12 * a2, v13, *(a1 + 96), &v14, *(a1 + 32), v9);
            v6 = v12;
            v2.i16[0] = *(a1 + 88);
            v2.i16[2] = *(a1 + 90);
            v7 = v2.u16[2];
          }

          ++v8;
        }

        while (v8 < v2.u16[0]);
      }

      ++v5;
    }

    while (v5 < v7);
  }
}

void xdr::compute_image_gainmap_stats_loop<(unsigned short)2,(unsigned short)2,(unsigned short)4>(uint64_t a1, uint64_t a2, float32x4_t *a3, uint64_t a4, uint64_t a5, __int32 a6, unsigned int a7, _DWORD *a8, int8x16_t a9, uint16x4_t a10)
{
  v16 = 0;
  a10.i32[0] = a6;
  v17 = vmovl_u16(a10).u64[0];
  v18 = vadd_s32(v17, v17);
  v42 = *a9.i8;
  v41 = vextq_s8(a9, a9, 8uLL).u64[0];
  v19 = vdup_n_s32(a7);
  v20 = vdup_n_s32(0x4B400000u);
  v21 = vdup_n_s32(0xCB400000);
  v22 = 1;
  __asm { FMOV            V15.2S, #4.0 }

  do
  {
    v28 = 0;
    v29 = v22;
    v30 = 1;
    do
    {
      v31 = v30;
      v32 = vorr_s8(__PAIR64__(v16, v28), v18);
      if ((vminv_u16(vcgt_u16(v19, vshl_n_s16(vuzp1_s16(v32, v32), 2uLL))) & 0x8000) != 0)
      {
        v33 = COERCE_DOUBLE(vmla_f32(v41, vmul_f32(vadd_f32(vadd_f32(vorr_s8(vand_s8(v32, 0xFFFF0000FFFFLL), v20), v21), 0x3F0000003F000000), _D15), v42));
        xdr::image_sample(a1, a8, v33);
        v43 = v34;
        xdr::image_sample(a2, a8, v33);
        v44 = v35;
        *v36.i64 = xdr::apply_color_trc(a3, v43);
        xdr::apply_tone_mapping(&a3[5], v36);
        if ((a3[23].i8[0] & 1) == 0)
        {
          v37 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a3[20], v37.f32[0]), a3[21], *v37.f32, 1), a3[22], v37, 2);
        }

        v38 = xdr::apply_gain_mapping(a4, v37, v44);
        *&v38 = fmaxf(*&v38, fmaxf(*(&v38 + 1), v39));
        v40 = fmaxf(*&v38, *a5);
        *&v38 = *&v38 + *(a5 + 4);
        *a5 = v40;
        *(a5 + 4) = LODWORD(v38);
        ++*(a5 + 8);
      }

      v30 = 0;
      v28 = 1;
    }

    while ((v31 & 1) != 0);
    v22 = 0;
    v16 = 1;
  }

  while ((v29 & 1) != 0);
}

void sub_185EF8D94(_Unwind_Exception *a1)
{
  v9 = v7;

  _Unwind_Resume(a1);
}

void sub_185EF8F70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = HDRMetalContext;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_185EFA4F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = HDRImageConverter_Metal;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_185EFA6D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_185EFB81C(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_185F00FAC(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

uint64_t _cg_jinit_huff_encoder(uint64_t a1)
{
  result = (**(a1 + 8))();
  *(a1 + 560) = result;
  *result = start_pass_huff;
  *(result + 64) = 0u;
  *(result + 80) = 0u;
  *(result + 96) = 0u;
  *(result + 112) = 0u;
  *(result + 160) = 0u;
  *(result + 176) = 0u;
  *(result + 128) = 0u;
  *(result + 144) = 0u;
  if (*(a1 + 348))
  {
    *(result + 240) = 0;
  }

  return result;
}

void start_pass_huff(uint64_t a1, int a2)
{
  v4 = *(a1 + 560);
  if (a2)
  {
    *(v4 + 16) = finish_pass_gather;
    if (!*(a1 + 348))
    {
      v5 = encode_mcu_gather;
LABEL_13:
      *(v4 + 8) = v5;
      goto LABEL_17;
    }
  }

  else
  {
    *(v4 + 16) = finish_pass_huff;
    if (!*(a1 + 348))
    {
      v5 = encode_mcu_huff;
      goto LABEL_13;
    }
  }

  *(v4 + 216) = a1;
  *(v4 + 192) = a2;
  v6 = *(a1 + 460);
  if (*(a1 + 468))
  {
    if (v6)
    {
      *(v4 + 8) = encode_mcu_AC_refine;
      if (!*(v4 + 240))
      {
        *(v4 + 240) = (**(a1 + 8))(a1, 1, 1000);
      }

      goto LABEL_16;
    }

    v7 = encode_mcu_DC_refine;
  }

  else if (v6)
  {
    v7 = encode_mcu_AC_first;
  }

  else
  {
    v7 = encode_mcu_DC_first;
  }

  *(v4 + 8) = v7;
LABEL_16:
  v8 = *(*(a1 + 376) + 24);
  *(v4 + 228) = 0;
  *(v4 + 232) = 0;
  *(v4 + 224) = v8;
LABEL_17:
  if (*(a1 + 372) >= 1)
  {
    v9 = 0;
    v10 = v4 + 128;
    v11 = v4 + 160;
    do
    {
      v12 = *(a1 + 8 * v9 + 376);
      if (!*(a1 + 460) && !*(a1 + 468))
      {
        v13 = *(v12 + 20);
        v14 = v13;
        if (a2)
        {
          if (v13 >= 4)
          {
            v15 = *a1;
            *(v15 + 10) = 52;
            *(v15 + 12) = v13;
            (**a1)(a1);
          }

          v16 = *(v10 + 8 * v14);
          if (!v16)
          {
            v16 = (**(a1 + 8))(a1, 1, 2056);
            *(v10 + 8 * v14) = v16;
          }

          bzero(v16, 0x808uLL);
        }

        else
        {
          jpeg_make_c_derived_tbl(a1, 1, v13, (v4 + 64 + 8 * v13));
        }

        *(v4 + 36 + 4 * v9) = 0;
      }

      if (*(a1 + 464))
      {
        v17 = *(v12 + 24);
        v18 = v17;
        if (a2)
        {
          if (v17 >= 4)
          {
            v19 = *a1;
            *(v19 + 10) = 52;
            *(v19 + 12) = v17;
            (**a1)(a1);
          }

          v20 = *(v11 + 8 * v18);
          if (!v20)
          {
            v20 = (**(a1 + 8))(a1, 1, 2056);
            *(v11 + 8 * v18) = v20;
          }

          bzero(v20, 0x808uLL);
        }

        else
        {
          jpeg_make_c_derived_tbl(a1, 0, v17, (v4 + 96 + 8 * v17));
        }
      }

      ++v9;
    }

    while (v9 < *(a1 + 372));
  }

  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  *(v4 + 56) = *(a1 + 316);
}

void finish_pass_gather(uint64_t a1)
{
  v15[2] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 560);
  if (*(a1 + 348))
  {
    emit_eobrun(*(a1 + 560));
  }

  v15[0] = 0;
  v15[1] = 0;
  v14[0] = 0;
  v14[1] = 0;
  if (*(a1 + 372) >= 1)
  {
    v3 = a1 + 160;
    v13 = v2 + 128;
    v4 = a1 + 192;
    v5 = v2 + 160;
    v6 = 47;
    do
    {
      v7 = *(a1 + 8 * v6);
      if (!*(a1 + 460) && !*(a1 + 468))
      {
        v8 = *(v7 + 20);
        if (!*(v15 + v8))
        {
          v9 = *(v3 + 8 * v8);
          if (!v9)
          {
            v9 = _cg_jpeg_alloc_huff_table(a1);
            *(v3 + 8 * v8) = v9;
          }

          jpeg_gen_optimal_table(a1, v9, *(v13 + 8 * v8));
          *(v15 + v8) = 1;
        }
      }

      if (*(a1 + 464))
      {
        v10 = *(v7 + 24);
        if (!*(v14 + v10))
        {
          v11 = *(v4 + 8 * v10);
          if (!v11)
          {
            v11 = _cg_jpeg_alloc_huff_table(a1);
            *(v4 + 8 * v10) = v11;
          }

          jpeg_gen_optimal_table(a1, v11, *(v5 + 8 * v10));
          *(v14 + v10) = 1;
        }
      }

      v12 = v6 - 46;
      ++v6;
    }

    while (v12 < *(a1 + 372));
  }
}

uint64_t finish_pass_huff(uint64_t result)
{
  v1 = result;
  v2 = *(result + 560);
  v3 = *(result + 40);
  v4 = *v3;
  if (*(result + 348))
  {
    v5 = v3[1];
    *(v2 + 200) = v4;
    *(v2 + 208) = v5;
    result = emit_eobrun(v2);
    if (!*(v2 + 192))
    {
      v6 = *(v2 + 32);
      if (v6 >= 1)
      {
        v7 = (127 << (17 - v6)) | *(v2 + 24);
        v8 = v6 + 15;
        do
        {
          v9 = *(v2 + 200);
          *(v2 + 200) = v9 + 1;
          *v9 = BYTE2(v7);
          v10 = *(v2 + 208) - 1;
          *(v2 + 208) = v10;
          if (!v10)
          {
            result = dump_buffer_e(v2);
          }

          if ((~v7 & 0xFF0000) == 0)
          {
            v11 = *(v2 + 200);
            *(v2 + 200) = v11 + 1;
            *v11 = 0;
            v12 = *(v2 + 208) - 1;
            *(v2 + 208) = v12;
            if (!v12)
            {
              result = dump_buffer_e(v2);
            }
          }

          LODWORD(v7) = v7 << 8;
          v8 -= 8;
        }

        while (v8 > 15);
      }
    }

    *(v2 + 24) = 0;
    *(v2 + 32) = 0;
    v13 = v1[5];
    v14 = *(v2 + 208);
    *v13 = *(v2 + 200);
    v13[1] = v14;
    return result;
  }

  v15 = v3[1];
  v16 = *(v2 + 24);
  v17 = *(v2 + 32);
  v24 = *(v2 + 36);
  v25 = *(v2 + 52);
  if (v17 < 1)
  {
LABEL_22:
    v17 = 0;
    v16 = 0;
    goto LABEL_24;
  }

  v18 = (127 << (17 - v17)) | v16;
  v19 = v17 + 15;
  while (1)
  {
    *v4++ = BYTE2(v18);
    if (!--v15)
    {
      v20 = v1[5];
      result = (*(v20 + 24))(v1);
      if (!result)
      {
        goto LABEL_23;
      }

      v4 = *v20;
      v15 = *(v20 + 8);
    }

    if ((~v18 & 0xFF0000) == 0)
    {
      *v4++ = 0;
      if (!--v15)
      {
        break;
      }
    }

LABEL_21:
    LODWORD(v18) = v18 << 8;
    v19 -= 8;
    if (v19 <= 15)
    {
      goto LABEL_22;
    }
  }

  v21 = v1[5];
  result = (*(v21 + 24))(v1);
  if (result)
  {
    v4 = *v21;
    v15 = *(v21 + 8);
    goto LABEL_21;
  }

LABEL_23:
  v22 = *v1;
  *(v22 + 40) = 25;
  result = (*v22)(v1);
  v15 = 0;
LABEL_24:
  v23 = v1[5];
  *v23 = v4;
  v23[1] = v15;
  *(v2 + 24) = v16;
  *(v2 + 32) = v17;
  *(v2 + 36) = v24;
  *(v2 + 52) = v25;
  return result;
}