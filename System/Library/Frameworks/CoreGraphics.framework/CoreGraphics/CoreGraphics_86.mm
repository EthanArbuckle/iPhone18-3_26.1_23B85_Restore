CFTypeRef CGPathCreateByNormalizingGlyphPath(CFTypeRef cf)
{
  v1 = cf;
  if (cf)
  {
    if ((CGPathDisableTypeValidation & 1) != 0 || (v2 = CFGetTypeID(cf), v2 == CGPathGetTypeID()))
    {
      CFRetain(v1);
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

void CGPathPrint(const void *a1, FILE *a2)
{
  if (a2)
  {
    v2 = a2;
  }

  else
  {
    v2 = *MEMORY[0x1E69E9858];
  }

  v3 = CFCopyDescription(a1);
  CStringPtr = CFStringGetCStringPtr(v3, 0x8000100u);
  fprintf_l(v2, 0, "%s", CStringPtr);

  CFRelease(v3);
}

void CGPathSaveAsImage(const CGPath *a1, char *a2)
{
  BoundingBox = CGPathGetBoundingBox(a1);
  width = BoundingBox.size.width;
  height = BoundingBox.size.height;
  transform.a = 1.0;
  transform.b = 0.0;
  transform.c = 0.0;
  transform.d = 1.0;
  transform.tx = 5.0 - BoundingBox.origin.x;
  transform.ty = 5.0 - BoundingBox.origin.y;
  v6 = CGPathCreateMutableCopyByTransformingPath(a1, &transform);
  v7 = CGColorSpaceCreateWithName(@"kCGColorSpaceSRGB");
  v8 = CGBitmapContextCreateWithData(0, (width + 10.0), (height + 10.0), 8uLL, 0, v7, 1u, 0, 0);
  CGContextErase(v8, v9, v10, v11, v12, v13, v14, v15);
  CGContextAddPath(v8, v6);
  clip(v8, 0, v16, v17, v18, v19, v20, v21);
  if (v6)
  {
    CFRelease(v6);
  }

  ConstantColor = CGColorGetConstantColor(@"kCGColorBlack");
  CGContextSetFillColorWithColor(v8, ConstantColor);
  v26.size.width = (width + 10.0);
  v26.size.height = (height + 10.0);
  v26.origin.x = 0.0;
  v26.origin.y = 0.0;
  CGContextFillRect(v8, v26);
  Image = CGBitmapContextCreateImage(v8);
  if (v8)
  {
    CFRelease(v8);
  }

  CGImageWriteToFile(Image, a2);
  if (Image)
  {
    CFRelease(Image);
  }
}

_DWORD *CGPathApplyDashedPath(_DWORD *cf, const CGAffineTransform *a2, uint64_t a3, _anonymous_namespace_ *this, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (cf)
  {
    v13 = cf;
    if (CGPathDisableTypeValidation)
    {
      v14 = 1;
      if (!a3)
      {
        return cf;
      }
    }

    else
    {
      v15 = CFGetTypeID(cf);
      cf = CGPathGetTypeID();
      v14 = v15 == cf;
      if (!a3)
      {
        return cf;
      }
    }

    if (v14)
    {
      if (cf)
      {
        v17 = v13[4];
        v16 = (v13 + 4);
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 0x40000000;
        v18[2] = __CGPathApplyDashedPath_block_invoke;
        v18[3] = &__block_descriptor_tmp_6_18265;
        v18[4] = a3;
        v18[5] = a2;
        if ((v17 - 10) >= 0xFFFFFFF7)
        {
          if (!a5 || !a6)
          {
            CG::Path::apply(v16, v18);
          }

          v18[6] = v18;
          operator new();
        }
      }
    }
  }

  return cf;
}

uint64_t __CGPathApplyDashedPath_block_invoke(uint64_t a1, int a2, uint64_t a3)
{
  v4 = a2;
  v5 = a3;
  return (*(a1 + 32))(*(a1 + 40), &v4);
}

_DWORD *CGPathApplyStrokedDashedPath(_DWORD *cf, const CGAffineTransform *a2, uint64_t a3, _anonymous_namespace_ *this, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (cf)
  {
    v12 = cf;
    if (CGPathDisableTypeValidation)
    {
      v13 = 1;
      if (!a3)
      {
        return cf;
      }
    }

    else
    {
      v14 = CFGetTypeID(cf);
      cf = CGPathGetTypeID();
      v13 = v14 == cf;
      if (!a3)
      {
        return cf;
      }
    }

    if (v13)
    {
      if (cf)
      {
        v15 = v12[4];
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 0x40000000;
        v16[2] = __CGPathApplyStrokedDashedPath_block_invoke;
        v16[3] = &__block_descriptor_tmp_7_18266;
        v16[4] = a3;
        v16[5] = a2;
        if ((v15 - 10) >= 0xFFFFFFF7)
        {
          v16[11] = v16;
          operator new();
        }
      }
    }
  }

  return cf;
}

uint64_t __CGPathApplyStrokedDashedPath_block_invoke(uint64_t a1, int a2, uint64_t a3)
{
  v4 = a2;
  v5 = a3;
  return (*(a1 + 32))(*(a1 + 40), &v4);
}

void CGPathApplyIterator(char *cf, path_iterator *a2)
{
  if (cf)
  {
    if (CGPathDisableTypeValidation)
    {
      v4 = 1;
      if (!a2)
      {
        return;
      }
    }

    else
    {
      v5 = CFGetTypeID(cf);
      v4 = v5 == CGPathGetTypeID();
      if (!a2)
      {
        return;
      }
    }

    if (v4)
    {

      CG::Path::apply_iterator((cf + 16), a2);
    }
  }
}

CFMutableDataRef CGPathCreateEncodedData(CFMutableDataRef cf, CFDictionaryRef theDict)
{
  if (cf)
  {
    v3 = cf;
    if ((CGPathDisableTypeValidation & 1) == 0)
    {
      v4 = CFGetTypeID(cf);
      if (v4 != CGPathGetTypeID())
      {
        return 0;
      }
    }

    theData = 0;
    v22 = 0;
    if (theDict)
    {
      Value = CFDictionaryGetValue(theDict, @"kCGPathEncodingOptionTruncatePrecision");
      if (Value)
      {
        v22 = Value == *MEMORY[0x1E695E4D0];
      }
    }

    v6 = *(v3 + 4);
    if (v6 <= 4)
    {
      if (v6 > 2)
      {
        if (v6 == 3)
        {
          create_initialized_encoding_buffer(&theData, 117, 3);
          encode_CGAffineTransform(&theData, v3 + 3);
          v14 = (v3 + 80);
          v15 = 4;
          do
          {
            encode_CGFloat(&theData, *(v14 - 1));
            v16 = *v14;
            v14 += 2;
            encode_CGFloat(&theData, v16);
            --v15;
          }

          while (v15);
          return theData;
        }

        create_initialized_encoding_buffer(&theData, 54, 4);
        bytes[0] = *(v3 + 73) | (2 * *(v3 + 72));
        CFDataAppendBytes(theData, bytes, 1);
      }

      else
      {
        if (v6 != 1)
        {
          if (v6 == 2)
          {
            create_initialized_encoding_buffer(&theData, 69, 2);
            encode_CGAffineTransform(&theData, v3 + 3);
            encode_CGFloat(&theData, *(v3 + 9));
            v7 = *(v3 + 10);
LABEL_31:
            encode_CGFloat(&theData, v7);
            return theData;
          }

          return theData;
        }

        create_initialized_encoding_buffer(&theData, 53, 1);
      }

      encode_CGAffineTransform(&theData, v3 + 3);
      return theData;
    }

    if (v6 > 7)
    {
      if (v6 == 8)
      {
        create_initialized_encoding_buffer(&theData, (16 * *(v3 + 12)) | 0xA, 8);
        bytes[0] = *(v3 + 26);
        v17 = theData;
        CFDataAppendBytes(theData, bytes, 1);
        *bytes = *(v3 + 7);
        CFDataAppendBytes(v17, bytes, 4);
        if (*(v3 + 12))
        {
          v18 = 0;
          v19 = (v3 + 40);
          do
          {
            encode_CGFloat(&theData, *(v19 - 1));
            v20 = *v19;
            v19 += 2;
            encode_CGFloat(&theData, v20);
            ++v18;
          }

          while (v18 < *(v3 + 12));
        }
      }

      else if (v6 == 9)
      {
        v8 = *(v3 + 3);
        v9 = *(v3 + 4);
        create_initialized_encoding_buffer(&theData, v9 + 16 * v8 + 21, 9);
        *bytes = v9;
        v10 = theData;
        CFDataAppendBytes(theData, bytes, 8);
        *bytes = v8;
        CFDataAppendBytes(v10, bytes, 8);
        if (v9)
        {
          v11 = -1;
          do
          {
            bytes[0] = *(*(v3 + 6) + *(v3 + 5) + v11);
            CFDataAppendBytes(v10, bytes, 1);
            --v11;
            --v9;
          }

          while (v9);
        }

        if (v8)
        {
          v12 = 0;
          do
          {
            v13 = (*(v3 + 6) + v12);
            encode_CGFloat(&theData, *v13);
            encode_CGFloat(&theData, v13[1]);
            v12 += 16;
            --v8;
          }

          while (v8);
        }
      }

      return theData;
    }

    if (v6 == 5)
    {
      create_initialized_encoding_buffer(&theData, 37, 5);
      encode_CGFloat(&theData, *(v3 + 3));
      encode_CGFloat(&theData, *(v3 + 4));
      encode_CGFloat(&theData, *(v3 + 5));
      v7 = *(v3 + 6);
      goto LABEL_31;
    }

    if (v6 == 6)
    {
      create_initialized_encoding_buffer(&theData, 85, 6);
      encode_CGAffineTransform(&theData, v3 + 3);
      encode_CGFloat(&theData, *(v3 + 9));
      encode_CGFloat(&theData, *(v3 + 10));
      encode_CGFloat(&theData, *(v3 + 11));
      v7 = *(v3 + 12);
      goto LABEL_31;
    }

    return theData;
  }

  return cf;
}

uint64_t CGPathCreateWithData(const __CFData *a1)
{
  if (!a1)
  {
    return 0;
  }

  TypeID = CGPathGetTypeID();
  Instance = CGTypeCreateInstance(TypeID, 128, v3, v4, v5, v6, v7, v8);
  v10 = (Instance + 16);
  if (*(Instance + 16))
  {
    goto LABEL_7;
  }

  BytePtr = CFDataGetBytePtr(a1);
  v75 = BytePtr;
  Length = CFDataGetLength(a1);
  v78 = Length;
  if (Length < 4)
  {
    goto LABEL_6;
  }

  v13 = *BytePtr;
  if (*BytePtr != 1)
  {
    goto LABEL_6;
  }

  v14 = Length;
  v76 = BYTE2(v13) & 1;
  if (Length == 4)
  {
    goto LABEL_6;
  }

  v16 = BytePtr[4];
  v77 = 5;
  if (v16 <= 4)
  {
    if (v16 <= 2)
    {
      if (v16 != 1)
      {
        if (v16 != 2)
        {
          goto LABEL_6;
        }

        *(Instance + 16) = 2;
        if (!decode_CGAffineTransform(&v75, (Instance + 24)))
        {
          goto LABEL_6;
        }

        if (decode_CGSize(&v75, (Instance + 72)))
        {
          return Instance;
        }

        goto LABEL_7;
      }

      *(Instance + 16) = 1;
LABEL_68:
      if (decode_CGAffineTransform(&v75, (Instance + 24)))
      {
        return Instance;
      }

      goto LABEL_7;
    }

    if (v16 != 3)
    {
      *v10 = 4;
      if (Length <= 5)
      {
        *(Instance + 72) = 0;
        goto LABEL_6;
      }

      v43 = BytePtr[5];
      v77 = 6;
      *(Instance + 72) = (v43 & 2) != 0;
      *(Instance + 73) = v43 & 1;
      goto LABEL_68;
    }

    *(Instance + 16) = 3;
    v25 = decode_CGAffineTransform(&v75, (Instance + 24));
    v26 = Instance + 72;
    v27 = v76;
    v29 = v77;
    v28 = v78;
    v30 = 4;
    v31 = v75;
    do
    {
      if (v25)
      {
        if (v27)
        {
          if ((v28 & 0x8000000000000000) != 0)
          {
            v33 = 0;
            v35 = 0;
            *v26 = 0;
            v37 = 0.0;
          }

          else
          {
            v36 = v29 + 4;
            v37 = 0.0;
            v33 = v29 + 4 <= v28;
            if (v29 + 4 > v28)
            {
              v39 = v29 + 4;
              v36 = v29;
              v38 = 0.0;
            }

            else
            {
              v38 = *&v31[v29];
              v39 = v29 + 8;
            }

            *v26 = v38;
            if (v39 <= v28)
            {
              v37 = *&v31[v36];
              v35 = 1;
              v29 = v39;
            }

            else
            {
              v35 = 0;
              v29 = v36;
            }
          }

          *(v26 + 8) = v37;
        }

        else if ((v28 & 0x8000000000000000) != 0)
        {
          v33 = 0;
          v35 = 0;
        }

        else
        {
          v32 = v29 + 8;
          v33 = v29 + 8 <= v28;
          if (v29 + 8 > v28)
          {
            v34 = v29 + 8;
            v32 = v29;
          }

          else
          {
            *v26 = *&v31[v29];
            v34 = v29 + 16;
          }

          if (v34 <= v28)
          {
            *(v26 + 8) = *&v31[v32];
            v35 = 1;
            v29 = v34;
          }

          else
          {
            v35 = 0;
            v29 = v32;
          }
        }

        v25 = v33 & v35;
      }

      else
      {
        v25 = 0;
      }

      v26 += 16;
      --v30;
    }

    while (v30);
LABEL_125:
    if (v25)
    {
      return Instance;
    }

    goto LABEL_6;
  }

  if (v16 <= 7)
  {
    if (v16 == 5)
    {
      *(Instance + 16) = 5;
      if (!decode_CGSize(&v75, (Instance + 24)))
      {
        goto LABEL_6;
      }

      if (decode_CGSize(&v75, (Instance + 40)))
      {
        return Instance;
      }

      goto LABEL_7;
    }

    if (v16 != 6)
    {
      goto LABEL_6;
    }

    *(Instance + 16) = 6;
    if (!decode_CGAffineTransform(&v75, (Instance + 24)))
    {
      goto LABEL_6;
    }

    v17 = v78;
    if (v76 == 1)
    {
      if ((v78 & 0x8000000000000000) != 0 || (v71 = v77, v72 = v77 + 4, v77 + 4 > v78))
      {
        *(Instance + 72) = 0;
        goto LABEL_6;
      }

      v73 = v75;
      *(Instance + 72) = *&v75[v77];
      if (v71 + 8 > v17)
      {
        *(Instance + 80) = 0;
        goto LABEL_6;
      }

      *(Instance + 80) = *&v73[v72];
      if (v71 + 12 > v17)
      {
        *(Instance + 88) = 0;
        goto LABEL_6;
      }

      *(Instance + 88) = *&v73[v71 + 8];
      if (v71 + 16 <= v17)
      {
        *(Instance + 96) = *&v73[v71 + 12];
        return Instance;
      }

      *(Instance + 96) = 0;
      goto LABEL_7;
    }

    if ((v78 & 0x8000000000000000) != 0)
    {
      goto LABEL_6;
    }

    v18 = v77;
    v19 = v77 + 8;
    if (v77 + 8 > v78)
    {
      goto LABEL_6;
    }

    v20 = v75;
    *(Instance + 72) = *&v75[v77];
    if (v18 + 16 > v17)
    {
      goto LABEL_6;
    }

    *(Instance + 80) = *&v20[v19];
    if (v18 + 24 > v17)
    {
      goto LABEL_6;
    }

    *(Instance + 88) = *&v20[v18 + 16];
    if (v18 + 32 > v17)
    {
      goto LABEL_6;
    }

    *(Instance + 96) = *&v20[v18 + 24];
    return Instance;
  }

  if (v16 == 8)
  {
    if (Length <= 5)
    {
      *(Instance + 16) = 8;
      *(Instance + 24) = 0;
      goto LABEL_7;
    }

    v40 = BytePtr[5];
    v25 = Length > 9;
    if (v14 < 0xA)
    {
      v41 = 0;
      v42 = 6;
    }

    else
    {
      v41 = *(BytePtr + 6);
      v42 = 10;
    }

    if (v40 > 0xA)
    {
      goto LABEL_6;
    }

    if (!BytePtr[5])
    {
      *(Instance + 16) = 8;
      *(Instance + 24) = 0;
      *(Instance + 28) = v41;
      if (v14 > 9)
      {
        return Instance;
      }

      goto LABEL_7;
    }

    v44 = 0;
    v45 = 0;
    while (1)
    {
      v46 = (v41 >> v44) & 7;
      if (v46 > 4)
      {
        break;
      }

      v45 += point_counts[v46];
      v44 += 3;
      if (3 * v40 == v44)
      {
        goto LABEL_103;
      }
    }

    v25 = 0;
LABEL_103:
    if (v45 > 7)
    {
      goto LABEL_6;
    }

    *(Instance + 16) = 8;
    *(Instance + 24) = v45;
    *(Instance + 26) = v40;
    *(Instance + 28) = v41;
    if (v45)
    {
      v59 = v13 >> 16;
      v60 = (Instance + 40);
      v61 = v45;
      do
      {
        if (v25)
        {
          if (v59)
          {
            v66 = v42 + 4;
            v67 = 0.0;
            v63 = v42 + 4 <= v14;
            if (v42 + 4 > v14)
            {
              v62 = v42 + 4;
              v66 = v42;
              v68 = 0.0;
            }

            else
            {
              v68 = *&BytePtr[v42];
              v62 = v42 + 8;
            }

            *(v60 - 1) = v68;
            v65 = v62 <= v14;
            if (v62 > v14)
            {
              v62 = v66;
            }

            else
            {
              v67 = *&BytePtr[v66];
            }

            *v60 = v67;
          }

          else
          {
            v62 = v42 + 8;
            v63 = v42 + 8 <= v14;
            if (v42 + 8 > v14)
            {
              v64 = v42 + 8;
              v62 = v42;
            }

            else
            {
              *(v60 - 1) = *&BytePtr[v42];
              v64 = v42 + 16;
            }

            if (v64 <= v14)
            {
              *v60 = *&BytePtr[v62];
              v65 = 1;
              v62 = v64;
            }

            else
            {
              v65 = 0;
            }
          }

          v25 = v63 && v65;
          v42 = v62;
        }

        else
        {
          v25 = 0;
        }

        v60 += 2;
        --v61;
      }

      while (v61);
    }

    goto LABEL_125;
  }

  if (v16 != 9)
  {
    goto LABEL_6;
  }

  if (Length >= 0xD)
  {
    v21 = *(BytePtr + 5);
    if (Length >= 0x15)
    {
      v22 = *(BytePtr + 13);
      v23 = 1;
      v24 = 21;
    }

    else
    {
      v22 = 0;
      v23 = 0;
      v24 = 13;
    }
  }

  else
  {
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 5;
  }

  *v10 = 9;
  v47 = v24 + v21;
  v48 = __CFADD__(v24, v21);
  v49 = v48 << 63 >> 63;
  if (v49 != v48 || v49 < 0)
  {
    goto LABEL_6;
  }

  v50 = (v13 & 0x10000) == 0;
  v51 = 16;
  if (!v50)
  {
    v51 = 8;
  }

  if (!is_mul_ok(v22, v51))
  {
    goto LABEL_6;
  }

  v52 = v22 * v51;
  v53 = __CFADD__(v47, v52);
  v54 = v47 + v52;
  if (v53 || v54 > Length)
  {
    goto LABEL_6;
  }

  CG::Path::reserve_space(v10, v22, v21);
  v55 = 0;
  if (!v21)
  {
LABEL_99:
    v77 = v24;
    goto LABEL_128;
  }

  v56 = -1;
  v57 = v21;
  while (v24 + 1 > v14)
  {
    v58 = 0;
    v23 = 0;
LABEL_98:
    *(*(Instance + 48) + *(Instance + 40) + v56--) = v58;
    if (!--v57)
    {
      goto LABEL_99;
    }
  }

  v58 = BytePtr[v24];
  if (v58 <= 4u)
  {
    if (v58 == 4)
    {
      ++v55;
    }

    ++v24;
    goto LABEL_98;
  }

  v23 = 0;
  v77 = v24 + 1;
  *(Instance + 32) = 0;
LABEL_128:
  if (v22)
  {
    v69 = 0;
    v70 = v22;
    do
    {
      if (v23)
      {
        v23 = decode_CGSize(&v75, &v74);
      }

      else
      {
        v23 = 0;
      }

      *(*(Instance + 48) + v69) = v74;
      v69 += 16;
      --v70;
    }

    while (v70);
  }

  *(Instance + 96) = v55;
  *(Instance + 24) = v22;
  *(Instance + 32) = v21;
  if (v23)
  {
    CG::Path::recalculate_subpath_start(v10);
    CG::Path::recalculate_bounding_box(v10);
    return Instance;
  }

LABEL_6:
  if (Instance)
  {
LABEL_7:
    CFRelease(Instance);
    return 0;
  }

  return Instance;
}

char *CGImageBlockSetCreateWithType(uint64_t a1, int a2, uint64_t a3, void *a4, uint64_t a5, uint64_t *a6, uint64_t a7, _DWORD *a8, double a9, double a10, CGFloat a11, CGFloat a12, CGFloat a13, CGFloat a14)
{
  if (a1)
  {
    v19 = *(a1 + 36);
  }

  else
  {
    v19 = 0;
  }

  return CGImageBlockSetCreateWithBitmapInfo(a1, a2, v19, a3, a4, a5, a6, a7, a9, a10, a11, a12, a13, a14, a8);
}

atomic_uint *CGImageBlockSetRetain(atomic_uint *result)
{
  if (result)
  {
    atomic_fetch_add_explicit(result, 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t CGImageBlockSetGetComponentType(uint64_t result)
{
  if (result)
  {
    return *(result + 64);
  }

  return result;
}

uint64_t CGImageBlockSetGetColorSpace(uint64_t result)
{
  if (result)
  {
    return *(result + 80);
  }

  return result;
}

uint64_t CGImageBlockSetGetPixelSize(uint64_t result)
{
  if (result)
  {
    return *(result + 72);
  }

  return result;
}

CGFloat CGImageBlockSetGetSize(const CGSize *a1)
{
  v1 = a1 + 1;
  if (!a1)
  {
    v1 = &CGSizeZero;
  }

  return v1->width;
}

CGFloat CGImageBlockSetGetRect(const CGRect *a1)
{
  v1 = &CGRectZero;
  if (a1)
  {
    v1 = a1 + 1;
  }

  return v1->origin.x;
}

uint64_t CGImageBlockSetGetCount(uint64_t result)
{
  if (result)
  {
    return *(result + 120);
  }

  return result;
}

uint64_t CGImageBlockSetGetImageBlock(uint64_t result, unint64_t a2)
{
  if (result)
  {
    if (*(result + 120) <= a2)
    {
      return 0;
    }

    else
    {
      return *(result + 8 * a2 + 128);
    }
  }

  return result;
}

void CGImageBlockSetSetProperty(uint64_t a1, const void *a2, const void *a3)
{
  if (a1 && a2 && a3)
  {
    if (!*(a1 + 88))
    {
      v6 = CGPropertiesCreate();
      v7 = 0;
      atomic_compare_exchange_strong_explicit((a1 + 88), &v7, v6, memory_order_relaxed, memory_order_relaxed);
      if (v7)
      {
        CGPropertiesRelease(v6);
      }
    }

    v8 = *(a1 + 88);

    CGPropertiesSetProperty(v8, a2, a3);
  }
}

const void *CGImageBlockSetGetProperty(uint64_t a1, const void *a2)
{
  if (a1 && a2 && (v2 = *(a1 + 88)) != 0)
  {
    return CGPropertiesGetProperty(v2, a2);
  }

  else
  {
    return 0;
  }
}

uint64_t CGGStateGetStrokeParameters(uint64_t result, void *a2, void *a3, void *a4, void *a5, _DWORD *a6, _DWORD *a7)
{
  if (a2)
  {
    *a2 = *(*(result + 128) + 8);
  }

  if (a3)
  {
    *a3 = *(*(result + 128) + 24);
  }

  if (a4)
  {
    *a4 = *(*(result + 128) + 16);
  }

  if (a5)
  {
    *a5 = *(*(result + 128) + 32);
  }

  if (a6)
  {
    *a6 = *(*(result + 128) + 2);
  }

  if (a7)
  {
    *a7 = *(*(result + 128) + 3);
  }

  return result;
}

uint64_t cache_lock_18332()
{
  if (get_cache_predicate_18333 != -1)
  {
    dispatch_once(&get_cache_predicate_18333, &__block_literal_global_7_18334);
  }

  v1 = get_cache_converter_cache;

  return pthread_mutex_lock(v1);
}

uint64_t cache_unlock_18335()
{
  if (get_cache_predicate_18333 != -1)
  {
    dispatch_once(&get_cache_predicate_18333, &__block_literal_global_7_18334);
  }

  v1 = get_cache_converter_cache;

  return pthread_mutex_unlock(v1);
}

uint64_t release_and_remove_18339(void *a1, void *value)
{
  if (get_cache_predicate_18333 != -1)
  {
    dispatch_once(&get_cache_predicate_18333, &__block_literal_global_7_18334);
  }

  cache_release_value(*(get_cache_converter_cache + 64), value);
  if (get_cache_predicate_18333 != -1)
  {
    dispatch_once(&get_cache_predicate_18333, &__block_literal_global_7_18334);
  }

  v4 = *(get_cache_converter_cache + 64);

  return cache_remove(v4, a1);
}

uint64_t __get_cache_block_invoke_18344()
{
  v11 = *MEMORY[0x1E69E9840];
  get_cache_converter_cache = malloc_type_calloc(1uLL, 0x48uLL, 0x1020040C6685353uLL);
  if (!get_cache_converter_cache)
  {
    _CGHandleAssert("get_cache_block_invoke", 191, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGvImageConverterCache.c", "converter_cache != NULL", "converter cache missing", v0, v1, v2, v8);
  }

  v10.__sig = 0;
  *v10.__opaque = 0;
  pthread_mutexattr_init(&v10);
  pthread_mutexattr_settype(&v10, 2);
  pthread_mutex_init(get_cache_converter_cache, &v10);
  pthread_mutexattr_destroy(&v10);
  attrs = *byte_1EF240D90;
  v3 = cache_create("com.apple.CoreGraphics.vImage_converter_cache", &attrs, (get_cache_converter_cache + 64));
  if (v3)
  {
    _CGHandleAssert("get_cache_block_invoke", 214, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGvImageConverterCache.c", "err == 0", "error %ld creating vImage converter cache", v4, v5, v6, v3);
  }

  return cache_set_count_hint();
}

CGDataProvider *CGDataProviderCreatePartial(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t *a7, uint64_t *a8)
{
  v8 = 0;
  if (!a1)
  {
    return v8;
  }

  if (!a4)
  {
    return v8;
  }

  v9 = a5;
  if (!a5 || !a7 || !a8)
  {
    return v8;
  }

  v12 = a1;
  v13 = a6 * a2;
  v14 = a6 * a4;
  v15 = (a6 * a2) & 7;
  if (*(a1 + 72) == partial_release_info)
  {
    v19 = *(a1 + 24);
    if (!v19)
    {
      return 0;
    }

    v16 = *(v19 + 16);
    v12 = *v19;
    v20 = v16 * a3 + (v13 >> 3) + *(v19 + 8);
    v21 = *(v19 + 72) + v15;
    v22 = (v14 + v15 + 7) >> 3;
    if (v22 >= *(v19 + 24))
    {
      v23 = *(v19 + 24);
    }

    else
    {
      v23 = v22;
    }

    v17 = *(v19 + 96);
    v24 = v20 + (v21 >> 3);
    v15 = v21 & 7;
    if (*(v19 + 32) < a5)
    {
      v9 = *(v19 + 32);
    }

    v18 = *(v19 + 96);
  }

  else
  {
    v8 = 0;
    v16 = *a7;
    v17 = *a8;
    if (*a8 > 3)
    {
      if (v17 == 4)
      {
        v25 = (a6 & 0x1F | *a7 & 3) == 0;
        v26 = 4;
      }

      else
      {
        if (v17 != 8)
        {
          return v8;
        }

        v25 = (a6 & 0x3F | *a7 & 7) == 0;
        v26 = 8;
      }

      if (v25)
      {
        v18 = v26;
      }

      else
      {
        v18 = 1;
      }
    }

    else
    {
      v18 = *a8;
      if (v17 != 1)
      {
        if (v17 != 2)
        {
          return v8;
        }

        if (a6 & 0xF | *a7 & 1)
        {
          v18 = 1;
        }

        else
        {
          v18 = 2;
        }
      }
    }

    v24 = v16 * a3 + (v13 >> 3);
    v23 = (v14 + v15 + 7) >> 3;
  }

  if (v23 > v16)
  {
    return 0;
  }

  v27 = v18;
  v28 = v24;
  v29 = malloc_type_malloc(0x68uLL, 0x10200406562210CuLL);
  v30 = v28;
  v31 = v29;
  v29[2] = v16;
  v44 = v29 + 2;
  v45 = v27;
  v29[3] = v23;
  v43 = v29 + 3;
  *v29 = 0;
  v29[1] = v30;
  v29[4] = v9;
  v29[5] = 0;
  v29[6] = 0;
  v29[7] = v9 * v23;
  v29[8] = 0;
  v29[9] = v15;
  v29[10] = 0;
  v29[11] = 0;
  v29[12] = v17;
  if (v17 == v27 && !v15)
  {
    v32 = *(v12 + 4);
    if ((v32 & 0x8000000000000000) == 0)
    {
      v33 = v23 + (v9 - 1) * v16;
      if (v33 + v30 <= v32)
      {
        if (CGDataProviderHasDataPtr(v12))
        {
          Direct = CGDataProviderCreateDirect(v31, v33, &partial_direct_callbacks);
          goto LABEL_39;
        }

        if (*(v12 + 12) || *(v12 + 14) || *(v12 + 10))
        {
          CGDataProviderCreateDirectWithInternalCallbacks(v31, v33, &partial_internal_callbacks, v34, v35, v36, v37, v38);
LABEL_39:
          v8 = Direct;
          if (Direct)
          {
            goto LABEL_42;
          }
        }
      }
    }
  }

  Sequential = CGDataProviderCreateSequential(v31, &partial_sequential_callbacks + (v15 != 0));
  v8 = Sequential;
  if (!Sequential)
  {
    free(v31);
    return v8;
  }

  *(Sequential + 4) = v31[7];
LABEL_42:
  if (v17 == v45)
  {
    CGDataProviderRetain(v12);
  }

  else
  {
    v12 = CGDataProviderCreateWithSwappedProvider(v12, v45);
  }

  *v31 = v12;
  if (!v12)
  {
    CGDataProviderRelease(v8);
    return 0;
  }

  v41 = v44;
  if (*(v8 + 5) == 1)
  {
    v41 = v43;
  }

  *a7 = *v41;
  *a8 = v17;
  return v8;
}

uint64_t partial_get_packed_bytes(uint64_t a1, char *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a3)
  {
    return 0;
  }

  v11 = *(a1 + 40);
  if (!v11)
  {
    v12 = CGAccessSessionCreate(*a1);
    if (!v12)
    {
      return 0;
    }

    v11 = v12;
    *(a1 + 40) = v12;
    *(a1 + 64) = 0;
    *(a1 + 88) = 0;
  }

  v13 = *(a1 + 48);
  v14 = *(a1 + 56);
  v15 = v14 > v13;
  v16 = v14 - v13;
  if (!v15)
  {
    return 0;
  }

  if (v16 >= a3)
  {
    v17 = a3;
  }

  else
  {
    v17 = v16;
  }

  v19 = *(a1 + 16);
  v18 = *(a1 + 24);
  v20 = *(a1 + 88);
  v21 = v13 % v18;
  v22 = v20 != 0;
  v23 = v13 % v18 + v19 * (v13 / v18);
  v24 = v23 + *(a1 + 8);
  v25 = *(a1 + 64);
  if (v20)
  {
    v26 = v24 + 1;
  }

  else
  {
    v26 = v23 + *(a1 + 8);
  }

  if (v26 < v25)
  {
    CGAccessSessionRewind(v11);
    v25 = 0;
    v22 = 0;
    *(a1 + 64) = 0;
    *(a1 + 88) = 0;
  }

  if (v22 + v24 > v25)
  {
    CGAccessSessionSkipForward(v11, v24 - v25);
    v22 = 0;
    *(a1 + 64) = v24;
    *(a1 + 88) = 0;
  }

  if (!(v21 + v22))
  {
    v27 = 0;
    goto LABEL_19;
  }

  v27 = 0;
  do
  {
    if (v18 - v21 >= v17)
    {
      v35 = v17;
    }

    else
    {
      v35 = v18 - v21;
    }

    if (v22)
    {
      if (v21 == v18 - 1)
      {
        goto LABEL_34;
      }

      v35 -= v17 > 1;
    }

    if (!v35)
    {
LABEL_34:
      Bytes = 0;
      goto LABEL_35;
    }

    Bytes = CGAccessSessionGetBytes(v11, a2, v35, a4, a5, a6, a7, a8);
    *(a1 + 64) += Bytes;
LABEL_35:
    v37 = partial_pack_bytes(a1, a2, a2, Bytes);
    *(a1 + 48) += v37;
    v27 += v37;
    if (!v37)
    {
      return v27;
    }

    v17 -= v37;
    if (!v17)
    {
      return v27;
    }

    a2 += v37;
    v21 += v37;
  }

  while (v21 < v18);
  if (v19 != v18)
  {
    CGAccessSessionSkipForward(v11, v19 - v18);
    *(a1 + 64) += v19 - v18;
  }

LABEL_19:
  if (v17 <= v18)
  {
    if (v17)
    {
      v38 = v17 == 1;
      v39 = v18 > 1;
      if (v39 && v38)
      {
        v40 = 2;
      }

      else
      {
        v40 = v17;
      }

      if (v39 && v38)
      {
        v41 = &v43;
      }

      else
      {
        v41 = a2;
      }

      v30 = CGAccessSessionGetBytes(v11, v41, v40, a4, a5, a6, a7, a8);
      *(a1 + 64) += v30;
      v31 = a1;
      v32 = a2;
      v33 = v41;
      goto LABEL_48;
    }
  }

  else
  {
    Chunks = CGAccessSessionGetChunks(v11, v18, v19 - v18, v17 / v18, a2, 0, a7, a8);
    *(a1 + 64) += Chunks;
    v29 = Chunks % v19;
    if (Chunks % v19 >= v18)
    {
      v29 = v18;
    }

    v30 = v29 + Chunks / v19 * v18;
    v31 = a1;
    v32 = a2;
    v33 = a2;
LABEL_48:
    v42 = partial_pack_bytes(v31, v32, v33, v30);
    *(a1 + 48) += v42;
    v27 += v42;
  }

  return v27;
}

unint64_t partial_pack_bytes(void *a1, _BYTE *a2, unsigned __int8 *a3, unint64_t a4)
{
  v4 = 0;
  if (a4)
  {
    v5 = a1[3];
    v6 = a1[6] % v5;
    v8 = a1[10];
    v7 = a1[11];
    v9 = a1[9];
    while (1)
    {
      if (v7)
      {
        if (v6 == v5 - 1)
        {
          v6 = v5;
        }
      }

      else
      {
        v10 = *a3++;
        v8 = v10;
        --a4;
        v6 = 1;
        v7 = 8 - (v9 & 7);
      }

      v11 = a4 + v6 >= v5 ? v5 : a4 + v6;
      v12 = v11 - v6;
      if (v11 <= v6)
      {
        v11 = v6;
      }

      else
      {
        do
        {
          v13 = *a3++;
          v8 = v13 | (v8 << 8);
          *a2++ = v8 >> v7;
          --v12;
        }

        while (v12);
        a4 = a4 + v6 - v11;
        v4 = v4 + v11 - v6;
      }

      if (v11 != v5)
      {
        break;
      }

      v7 = 0;
      v14 = 0;
      v15 = 0;
      *a2++ = v8 << v9;
      ++v4;
      v6 = v5;
      v8 = 0;
      if (!a4)
      {
        goto LABEL_19;
      }
    }

    v14 = v7;
    v15 = v8;
LABEL_19:
    a1[10] = v15;
    a1[11] = v14;
  }

  return v4;
}

void partial_rewind(uint64_t a1)
{
  *(a1 + 48) = 0;
  v2 = *(a1 + 40);
  if (v2)
  {
    CGAccessSessionRelease(v2);
    *(a1 + 40) = 0;
  }
}

uint64_t partial_get_bytes(uint64_t a1, char *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a1 + 40);
  if (!v11)
  {
    v12 = CGAccessSessionCreate(*a1);
    if (!v12)
    {
      return 0;
    }

    v11 = v12;
    *(a1 + 40) = v12;
    *(a1 + 64) = 0;
  }

  v14 = *(a1 + 48);
  v13 = *(a1 + 56);
  if (v13 <= v14)
  {
    return 0;
  }

  if (v13 - v14 < a3)
  {
    a3 = v13 - v14;
  }

  v16 = *(a1 + 16);
  v15 = *(a1 + 24);
  if (v15 == v16)
  {
    v17 = 0;
    v16 = *(a1 + 56);
  }

  else
  {
    v13 = *(a1 + 24);
    v17 = v14 / v15;
  }

  v19 = v13 * v17;
  v20 = v14 - v13 * v17;
  v21 = v20 + v16 * v17 + *(a1 + 8);
  v22 = *(a1 + 64);
  if (v21 < v22)
  {
    CGAccessSessionRewind(v11);
    v22 = 0;
    *(a1 + 64) = 0;
  }

  if (v21 > v22)
  {
    CGAccessSessionSkipForward(v11, v21 - v22);
    *(a1 + 64) = v21;
  }

  if (v14 == v19)
  {
    v18 = 0;
LABEL_17:
    if (a3 > v13)
    {
      Chunks = CGAccessSessionGetChunks(v11, v13, v16 - v13, a3 / v13, a2, 0, a7, a8);
      *(a1 + 64) += Chunks;
      v24 = Chunks % v16;
      if (Chunks % v16 >= v13)
      {
        v24 = v13;
      }

      Bytes = v24 + Chunks / v16 * v13;
      v26 = Bytes + *(a1 + 48);
      goto LABEL_31;
    }

    if (a3)
    {
      Bytes = CGAccessSessionGetBytes(v11, a2, a3, a4, a5, a6, a7, a8);
      *(a1 + 64) += Bytes;
      v26 = *(a1 + 48) + Bytes;
LABEL_31:
      *(a1 + 48) = v26;
      v18 += Bytes;
    }
  }

  else
  {
    v18 = 0;
    if (v13 - v20 >= a3)
    {
      v27 = a3;
    }

    else
    {
      v27 = v13 - v20;
    }

    while (1)
    {
      v28 = CGAccessSessionGetBytes(v11, a2, v27, a4, a5, a6, a7, a8);
      *(a1 + 64) += v28;
      *(a1 + 48) += v28;
      v18 += v28;
      if (!v28)
      {
        break;
      }

      a3 -= v28;
      if (!a3)
      {
        break;
      }

      a2 += v28;
      v27 -= v28;
      if (!v27)
      {
        if (v16 != v13)
        {
          CGAccessSessionSkipForward(v11, v16 - v13);
          *(a1 + 64) += v16 - v13;
        }

        goto LABEL_17;
      }
    }
  }

  return v18;
}

size_t partial_get_bytes_at_position(uint64_t a1, char *a2, uint64_t a3, size_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3 < 0)
  {
    _CGHandleAssert("partial_get_bytes_at_position", 408, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderPartial.c", "offset >= 0", "offset %lld", a6, a7, a8, a3);
  }

  v9 = *(a1 + 8) + a3;
  v10 = *a1;

  return CGDataProviderDirectGetBytesAtPositionInternal(v10, a2, v9, a4, a5, a6, a7, a8);
}

uint64_t partial_get_byte_pointer(uint64_t *a1)
{
  result = CGDataProviderRetainBytePtr(*a1);
  if (result)
  {
    result += a1[1];
  }

  return result;
}

void partial_release_info(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    CGAccessSessionRelease(v2);
  }

  CGDataProviderRelease(*a1);

  free(a1);
}

CGDataProvider *CGPDFAppenderWrite(uint64_t a1, uint64_t a2)
{
  result = 0;
  v211 = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    v5 = ***(*(*a1 + 16) + 16);
    if (!v5)
    {
      return 0;
    }

    result = *(v5 + 40);
    if (result)
    {
      result = CGDataProviderCopyData(result);
      if (result)
      {
        v6 = result;
        BytePtr = CFDataGetBytePtr(result);
        Length = CFDataGetLength(v6);
        if ((*(a2 + 56) & 1) == 0)
        {
          v9 = *(a2 + 72);
          if (v9)
          {
            v10 = *(a2 + 40);
            v11 = *(a2 + 48) + Length;
            *(a2 + 48) = v11;
            if (v11 > v10)
            {
              *(a2 + 40) = v11;
            }

            v9(*(a2 + 16), BytePtr, Length);
          }
        }

        CFRelease(v6);
        if (*(a1 + 24) || *(a1 + 32))
        {
          goto LABEL_13;
        }

        Count = CFDictionaryGetCount(*(a1 + 16));
        if (Count >= 1)
        {
          v29 = Count;
          v30 = malloc_type_malloc(8 * Count, 0xC0040B8AA526DuLL);
          CFDictionaryGetKeysAndValues(*(a1 + 16), 0, v30);
          v31 = *v30;
          if ((*(*v30 + 8) - 1) < 2)
          {
            free(v30);
LABEL_13:
            v12 = CFDictionaryGetCount(*(a1 + 16));
            if (v12 >= 1)
            {
              v13 = v12;
              v14 = malloc_type_malloc(8 * v12, 0xC0040B8AA526DuLL);
              CFDictionaryGetKeysAndValues(*(a1 + 16), 0, v14);
              for (i = 0; i != v13; ++i)
              {
                v16 = v14[i];
                AppendModeTraverseCFObject(a1, v16[5], &__block_literal_global_18374, &__block_literal_global_27_18375);
                AppendModeTraverseCFObject(a1, v16[5], &__block_literal_global_30_18376, &__block_literal_global_33_18377);
                v17 = v16[5];
                v201 = MEMORY[0x1E69E9820];
                v202 = 0x40000000;
                v203 = __AppendModeUpdateIndirectReferences_block_invoke_6;
                v204 = &__block_descriptor_tmp_38_18378;
                v205 = v13;
                v206 = v14;
                AppendModeTraverseCFObject(a1, v17, &__block_literal_global_36_18379, &v201);
              }

              free(v14);
            }

            Info = CGPDFDocumentGetInfo(*a1);
            v19 = MEMORY[0x1E695E480];
            if (Info)
            {
              v20 = Info;
              v201 = MEMORY[0x1E69E9820];
              v202 = 0x40000000;
              v203 = __AppendModeWrite_block_invoke;
              v204 = &__block_descriptor_tmp_18380;
              v205 = a1;
              v206 = Info;
              AppendModePopulateDocumentInfo(*(a1 + 32), &v201);
              *(a1 + 40) = *(v20 + 24);
            }

            else
            {
              v21 = *(a1 + 40);
              if (v21 | *(a1 + 48))
              {
                MutableObject = CGPDFAppenderGetMutableObject(a1, v21, *(a1 + 48));
                v201 = MEMORY[0x1E69E9820];
                v202 = 0x40000000;
                v203 = __AppendModeWrite_block_invoke_2;
                v204 = &__block_descriptor_tmp_16_18383;
                v205 = MutableObject;
                AppendModePopulateDocumentInfo(*(a1 + 32), &v201);
              }

              else
              {
                Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                v201 = MEMORY[0x1E69E9820];
                v202 = 0x40000000;
                v203 = __AppendModeWrite_block_invoke_3;
                v204 = &__block_descriptor_tmp_17_18384;
                v205 = Mutable;
                AppendModePopulateDocumentInfo(*(a1 + 32), &v201);
                *(a1 + 40) = CGPDFAppenderCreateMutableObject(a1, Mutable);
                *(a1 + 48) = v23;
                CFRelease(Mutable);
                v24 = CGPDFReferenceCreate(*(a1 + 40), *(a1 + 48));
                v25 = *a1;
                if (*a1)
                {
                  CGAnalyticsSendPDFDocumentGetCatalogEvent();
                  catalog = pdf_document_get_catalog(**(*(v25 + 2) + 16));
                }

                else
                {
                  catalog = 0;
                }

                CGPDFAppenderMutateDictionaryValue(a1, catalog, "Info", v24, 4);
                CFRelease(v24);
              }
            }

            if (*(a1 + 24))
            {
              v32 = CFDictionaryCreateMutable(*v19, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
              CGPDFAppenderDictionarySetCGPDFName(v32, "Type", "Metadata");
              CGPDFAppenderDictionarySetCGPDFName(v32, "Subtype", "XML");
              v33 = CGPDFStreamObjectCreate(v32, *(a1 + 24));
              v33[32] = 1;
              CFRelease(v32);
              v34 = *a1;
              if (*a1)
              {
                CGAnalyticsSendPDFDocumentGetCatalogEvent();
                v35 = pdf_document_get_catalog(**(*(v34 + 2) + 16));
              }

              else
              {
                v35 = 0;
              }

              CGPDFAppenderMutateDictionaryValue(a1, v35, "Metadata", v33, 4);
              CFRelease(v33);
            }

            v36 = PDFWriterCreate(a2);
            v37 = CFDictionaryGetCount(*(a1 + 16));
            v38 = malloc_type_malloc(8 * v37, 0x2004093837F09uLL);
            CFDictionaryGetKeysAndValues(*(a1 + 16), 0, v38);
            v200 = v38;
            qsort_b(v38, v37, 8uLL, &__block_literal_global_67_18394);
            v198 = v37;
            if (v37 >= 1)
            {
              v45 = v37 & 0x7FFFFFFF;
              do
              {
                v46 = *v38;
                v47 = *(*v38 + 5);
                if (v47)
                {
                  v48 = CFGetTypeID(v47);
                  if (v48 == CFDictionaryGetTypeID())
                  {
                    v49 = *(v46 + 5);
                    Value = CFDictionaryGetValue(v49, @"/Type");
                    if (Value)
                    {
                      v51 = Value;
                      v52 = CFGetTypeID(Value);
                      if (v52 == CFStringGetTypeID() && CFStringCompare(v51, @"/Annot", 0) == kCFCompareEqualTo && CFDictionaryGetValue(v49, @"/AAPL:AKExtras"))
                      {
                        Hash = CGPDFAppenderDictionaryCreateHash(v49);
                        CGPDFAppenderDictionarySetValue(v49, "AAPL:Hash", Hash);
                        CFRelease(Hash);
                      }
                    }
                  }
                }

                PDFWriterBeginObject(v36, *(v46 + 2), v46 + 6, v40, v41, v42, v43, v44);
                if ((*(v46 + 8) | 2) == 2)
                {
                  PDFWriteObject(v36, *(v46 + 5), v54, v55, v56, v57, v58, v59, v186);
                }

                else
                {
                  PDFWriterPrintf(v36, "null", v54, v55, v56, v57, v58, v59, v186);
                }

                PDFWriterEndObject(v36, 0, v60, v61, v62, v63, v64, v65);
                ++v38;
                --v45;
              }

              while (v45);
            }

            if (v36)
            {
              v66 = v200;
              if (*v36)
              {
                v67 = *(*v36 + 40);
              }

              else
              {
                v67 = 0;
              }
            }

            else
            {
              v67 = 0;
              v66 = v200;
            }

            v199 = v36;
            v195 = v67;
            v196 = a1;
            if (*(**(*(*a1 + 16) + 16) + 8))
            {
              v68 = *MEMORY[0x1E695E480];
              v69 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
              CGPDFAppenderDictionarySetCGPDFName(v69, "Type", "XRef");
              v70 = CFArrayCreateMutable(v68, 0, MEMORY[0x1E695E9C0]);
              allocator = v68;
              v71 = CFDataCreateMutable(v68, 0);
              v72 = v198;
              if (v198 >= 1)
              {
                LODWORD(v73) = 0;
                v197 = v66 + 8;
                do
                {
                  v74 = 0;
                  v75 = v73;
                  v76 = v72 - v73;
                  v77 = &v197[8 * v73];
                  while ((v198 - 1) - v73 != v74)
                  {
                    v78 = *(*v77 + 16);
                    v79 = *(*(v77 - 1) + 16) + 1;
                    v77 += 8;
                    ++v74;
                    if (v78 != v79)
                    {
                      v76 = v74;
                      break;
                    }
                  }

                  v73 = (v76 + v73);
                  v80 = v75;
                  do
                  {
                    v81 = *(*&v66[8 * v80] + 48);
                    bytes[0] = 1;
                    CFDataAppendBytes(v71, bytes, 1);
                    for (j = 24; j != -8; j -= 8)
                    {
                      bytes[0] = v81 >> j;
                      CFDataAppendBytes(v71, bytes, 1);
                    }

                    bytes[0] = 0;
                    CFDataAppendBytes(v71, bytes, 1);
                    ++v80;
                    v66 = v200;
                  }

                  while (v80 < v73);
                  CGCFArrayAppendInteger(v70, *(v200[v75] + 4));
                  CGCFArrayAppendInteger(v70, v76);
                  v72 = v198;
                }

                while (v73 < v198);
              }

              v83 = v69;
              CGPDFAppenderDictionarySetValue(v69, "Index", v70);
              CFRelease(v70);
              if (*v196)
              {
                v84 = *(*v196 + 16);
              }

              else
              {
                v84 = 0;
              }

              v98 = *(v84 + 16);
              v99 = *v98;
              CGPDFAppenderDictionarySetInt32(v69, "Prev", *(*v98 + 184));
              v100 = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
              CGCFArrayAppendInteger(v100, 1);
              CGCFArrayAppendInteger(v100, 4);
              CGCFArrayAppendInteger(v100, 1);
              CGPDFAppenderDictionarySetValue(v69, "W", v100);
              CFRelease(v100);
              trailer = pdf_xref_get_trailer(v99);
              CFDictionary = CGPDFAppenderCreateCFDictionary(trailer);
              CGPDFAppenderDictionarySetInt32(v69, "Size", *(v196 + 8));
              if (v199)
              {
                v103 = *v199;
              }

              else
              {
                v103 = 0;
              }

              DocumentID = AppendModeCreateDocumentID(v103, *(**(v84 + 16) + 48));
              CGPDFAppenderDictionarySetValue(v69, "ID", DocumentID);
              CFRelease(DocumentID);
              v105 = CGPDFNameCreate("Root");
              v106 = CFDictionaryGetValue(CFDictionary, v105);
              CFRelease(v105);
              CGPDFAppenderDictionarySetValue(v69, "Root", v106);
              v107 = CGPDFNameCreate("Encrypt");
              v108 = CFDictionaryGetValue(CFDictionary, v107);
              CFRelease(v107);
              CGPDFAppenderDictionarySetValue(v69, "Encrypt", v108);
              v109 = CGPDFNameCreate("Info");
              v110 = CFDictionaryGetValue(CFDictionary, v109);
              CFRelease(v109);
              if (v110)
              {
                v111 = CGPDFNameCreate("Info");
                CFDictionarySetValue(v69, v111, v110);
                CFRelease(v111);
                v112 = v196;
              }

              else
              {
                v112 = v196;
                v113 = *(v196 + 40);
                if (v113 | *(v196 + 48))
                {
                  CGPDFAppenderDictionarySetCGPDFReference(v83, "Info", v113, *(v196 + 48));
                }
              }

              CFRelease(CFDictionary);
              v114 = CGPDFStreamObjectCreate(v83, v71);
              *(v114 + 32) = 1;
              CFRelease(v83);
              CFRelease(v71);
              v188 = *(v112 + 8);
              v36 = v199;
              PDFWriterPrintf(v199, "%d 0 obj\n", v115, v116, v117, v118, v119, v120, v188);
              PDFWriteStreamObject(v199, v114);
              PDFWriterPrintf(v199, "endobj", v121, v122, v123, v124, v125, v126, v189);
              v127 = v195;
            }

            else
            {
              PDFWriterPrintf(v36, "xref\n", v39, v40, v41, v42, v43, v44, v186);
              v91 = *(*v66 + 16);
              v92 = v91 == 1;
              if (v91 == 1)
              {
                if (v198 <= 1)
                {
                  v93 = 1;
                }

                else
                {
                  v93 = v198;
                }

                v94 = 1;
                v95 = 1;
                while (v94 - (v93 - 1) != 1)
                {
                  v96 = v95 + 1;
                  v97 = *(*&v66[8 * v94++] + 16);
                  v95 = v97;
                  if (v97 != v96)
                  {
                    goto LABEL_85;
                  }
                }

                v94 = (v93 + 1);
LABEL_85:
                v187 = v94;
                v128 = "0 %d\n";
              }

              else
              {
                v128 = "0 1\n";
              }

              PDFWriterPrintf(v36, v128, v85, v86, v87, v88, v89, v90, v187);
              PDFWriterPrintf(v36, "0000000000 65535 f \n", v129, v130, v131, v132, v133, v134, v191);
              v141 = v198;
              if (v198 >= 1)
              {
                LODWORD(v142) = 0;
                v143 = 0uLL;
                do
                {
                  v144 = 0;
                  v145 = v142;
                  v146 = v141 - v142;
                  v147 = &v200[v142 + 1];
                  while ((v198 - 1) - v142 != v144)
                  {
                    v148 = *(*v147 + 16);
                    v149 = *(*(v147 - 8) + 16) + 1;
                    v147 += 8;
                    ++v144;
                    if (v148 != v149)
                    {
                      v146 = v144;
                      break;
                    }
                  }

                  if (!v92)
                  {
                    PDFWriterPrintf(v36, "%d %d\n", v135, v136, v137, v138, v139, v140, *(v200[v142] + 2));
                    v143 = 0uLL;
                  }

                  v142 = (v146 + v142);
                  do
                  {
                    v150 = v200[v145];
                    v151 = v150[8];
                    *bytes = v143;
                    v210 = v143;
                    __sprintf_chk(bytes, 0, 0x20uLL, "%010llu", *(v150 + 6));
                    *v207 = 0u;
                    v208 = 0u;
                    if (v151 == 1)
                    {
                      v152 = *(v150 + 12) + 1;
                    }

                    else
                    {
                      v152 = *(v150 + 12);
                    }

                    __sprintf_chk(v207, 0, 0x20uLL, "%05d", v152);
                    v36 = v199;
                    PDFWriterPrintf(v199, "%s %s %c \n", v153, v154, v155, v156, v157, v158, bytes);
                    v143 = 0uLL;
                    ++v145;
                  }

                  while (v145 < v142);
                  v92 = 0;
                  v141 = v198;
                }

                while (v142 < v198);
              }

              PDFWriterPrintf(v36, "trailer\n", v135, v136, v137, v138, v139, v140, v192);
              if (*v196)
              {
                v159 = *(*v196 + 16);
              }

              else
              {
                v159 = 0;
              }

              v127 = v67;
              v160 = **(v159 + 16);
              v161 = pdf_xref_get_trailer(v160);
              v114 = CGPDFAppenderCreateCFDictionary(v161);
              CGPDFAppenderDictionarySetInt32(v114, "Size", *(v196 + 8));
              CGPDFAppenderDictionarySetInt32(v114, "Prev", *(v160 + 184));
              if (v36)
              {
                v162 = *v36;
              }

              else
              {
                v162 = 0;
              }

              v163 = AppendModeCreateDocumentID(v162, *(**(v159 + 16) + 48));
              CGPDFAppenderDictionarySetValue(v114, "ID", v163);
              CFRelease(v163);
              v164 = CGPDFNameCreate("XRefStm");
              CFDictionaryRemoveValue(v114, v164);
              CFRelease(v164);
              PDFWriteDictionary(v36, v114);
              v66 = v200;
            }

            CFRelease(v114);
            free(v66);
            PDFWriterPrintf(v36, "\nstartxref\n", v165, v166, v167, v168, v169, v170, v190);
            PDFWriterPrintf(v36, "%O\n", v171, v172, v173, v174, v175, v176, v127);
            PDFWriterPrintf(v36, "%%%%EOF\n", v177, v178, v179, v180, v181, v182, v193);
            CGPDFAssociationRelease(v36);
            return 1;
          }

          v183 = 1;
          v184 = 1;
          do
          {
            if (*a1)
            {
              v185 = pdf_xref_resolve(**(*(*a1 + 16) + 16), *(v31 + 4), *(v31 + 12));
              if (v185)
              {
                if (!CGPDFAppenderCGPDFObjectMatchesCFType(v185, v31[5]))
                {
                  break;
                }
              }
            }

            v184 = v183 < v29;
            if (v29 == v183)
            {
              break;
            }

            v31 = v30[v183++];
          }

          while ((*(v31 + 8) - 1) >= 2);
          free(v30);
          if (v184)
          {
            goto LABEL_13;
          }
        }

        return 1;
      }
    }
  }

  return result;
}

void AppendModeTraverseCFObject(CFDictionaryRef *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, 0);
  AppendModeSafelyTraverseCFObject(a1, Mutable, a2, a3, a4);

  CFRelease(Mutable);
}

BOOL __AppendModeUpdateIndirectReferences_block_invoke_6(uint64_t a1, uint64_t a2, __CFDictionary *a3, void *a4, uint64_t a5, uint64_t a6)
{
  if (CGPDFAnnotationTypeID_onceToken != -1)
  {
    dispatch_once(&CGPDFAnnotationTypeID_onceToken, &__block_literal_global);
  }

  v11 = CGPDFAnnotationTypeID_id;
  if (CGPDFAnnotationTypeID_id == a5)
  {
    CFDictionary = *(a6 + 24);
    if (!CFDictionary)
    {
      CFDictionary = CGPDFAppenderCreateCFDictionary(*(a6 + 16));
      *(a6 + 24) = CFDictionary;
    }

    v13 = *(a1 + 32);
    if (v13 >= 1)
    {
      v14 = *(a1 + 40);
      while (1)
      {
        v15 = *v14;
        if (*(*v14 + 40) == CFDictionary)
        {
          break;
        }

        ++v14;
        if (!--v13)
        {
          goto LABEL_10;
        }
      }

      v23 = a4[2];
      v25 = *v23;
      v24 = (v23 + 1);
      if (v25 == 47)
      {
        v22 = v24;
      }

      else
      {
        v22 = a4[2];
      }

      v17 = *(v15 + 16);
      v18 = *(v15 + 24);
      goto LABEL_20;
    }

LABEL_10:
    v16 = *(a6 + 16);
    if (v16)
    {
      v17 = *(v16 + 24);
      if (v17)
      {
        v18 = *(v16 + 32);
        v19 = a4[2];
        v21 = *v19;
        v20 = (v19 + 1);
        if (v21 == 47)
        {
          v22 = v20;
        }

        else
        {
          v22 = a4[2];
        }

LABEL_20:
        CGPDFAppenderDictionarySetCGPDFReference(a3, v22, v17, v18);
        return v11 != a5;
      }
    }

    pdf_error("Failed to associate append mode annotation dictionaty with other annotation: unable to find match");
    CFDictionarySetValue(a3, a4, *MEMORY[0x1E695E738]);
  }

  return v11 != a5;
}

void AppendModePopulateDocumentInfo(const __CFDictionary *a1, uint64_t a2)
{
  if (a1)
  {
    context[0] = MEMORY[0x1E69E9820];
    context[1] = 0x40000000;
    context[2] = __AppendModePopulateDocumentInfo_block_invoke;
    context[3] = &unk_1E6E32D88;
    context[4] = a2;
    CFDictionaryApplyFunction(a1, call_dict_block, context);
  }

  v3 = *MEMORY[0x1E695E480];
  Current = CFAbsoluteTimeGetCurrent();
  v5 = CFDateCreate(v3, Current);
  (*(a2 + 16))(a2, "ModDate", v5);
  CFRelease(v5);
  Mutable = CFStringCreateMutable(v3, 0);
  CFStringAppend(Mutable, @"iOS ");
  v7 = CFCopySystemVersionString();
  if (v7)
  {
    v8 = v7;
    CFStringAppend(Mutable, v7);
    CFStringAppend(Mutable, @" ");
    CFRelease(v8);
  }

  CFStringAppendFormat(Mutable, 0, @"Quartz PDFContext, AppendMode %d.%d", 1, 1);
  (*(a2 + 16))(a2, "Producer", Mutable);
  CFRelease(Mutable);
}

CFDictionaryRef *CGPDFAppenderGetMutableObject(CFDictionaryRef *result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v5 = a3;
    if (!(a2 | a3))
    {
      return 0;
    }

    v6 = result;
    v7 = CGPDFReferenceCreate(a2, a3);
    Value = CFDictionaryGetValue(v6[2], v7);
    if (Value)
    {
      goto LABEL_5;
    }

    if (!*v6)
    {
      return 0;
    }

    result = pdf_xref_resolve(**(*(*v6 + 2) + 16), a2, v5);
    if (result)
    {
      CFObject = CGPDFAppenderCreateCFObject(result, 1);
      Value = AppendModeObjectCreate(0, a2, a3, CFObject);
      CFRelease(CFObject);
      CFDictionarySetValue(v6[2], v7, Value);
      CFRelease(Value);
LABEL_5:
      CFRelease(v7);
      return Value[5];
    }
  }

  return result;
}

uint64_t CGPDFAppenderCreateMutableObject(uint64_t a1, const void *a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    v2 = *(a1 + 8);
    *(a1 + 8) = v2 + 1;
    v4 = AppendModeObjectCreate(2, v2, 0, a2);
    v5 = CGPDFReferenceCreate(v2, 0);
    CFDictionarySetValue(*(a1 + 16), v5, v4);
    CFRelease(v5);
    CFRelease(v4);
  }

  return v2;
}

void CGPDFAppenderMutateDictionaryValue(CFDictionaryRef *a1, uint64_t *a2, const char *a3, const void *a4, int a5)
{
  if (!a1 || !a2 || !a3 || !a4)
  {
    return;
  }

  v9 = a2[3];
  v8 = a2[4];
  if (!(v9 | v8))
  {

    pdf_error("CGPDFAppenderMutateDictionaryValue(...) was called with an inline / literal object");
    return;
  }

  if (CGPDFAppenderHasMutableObject(a1, a2[3], a2[4]))
  {
    MutableObject = CGPDFAppenderGetMutableObject(a1, v9, v8);
    v13 = CGPDFNameCreate(a3);
    v14 = CFDictionaryGetValue(MutableObject, v13);
    CFRelease(v13);
    if (a5 != 2)
    {
      if (a5 != 4)
      {
        v15 = CGPDFNameCreate(a3);
        CFDictionarySetValue(MutableObject, v15, a4);

        CFRelease(v15);
        return;
      }

      goto LABEL_27;
    }

    if (!v14)
    {
LABEL_27:
      v23 = CGPDFAppenderCreateMutableObject(a1, a4);

      CGPDFAppenderDictionarySetCGPDFReference(MutableObject, a3, v23, v22);
      return;
    }

    v20 = v14[2];
    v21 = v14[3];

    CGPDFAppenderReplaceMutableObject(a1, v20, v21, a4);
  }

  else
  {
    value = 0;
    if (CGPDFDictionaryGetObject(a2, a3, &value) && value)
    {
      v16 = *(value + 2);
      v17 = (v16 | *(value + 3)) == 0;
      if (a5 == 2 && v16 | *(value + 3))
      {
        CGPDFAppenderReplaceMutableObject(a1, v16, *(value + 3), a4);
        return;
      }

      v24 = CGPDFAppenderGetMutableObject(a1, v9, v8);
      v18 = v24;
      if (a5 != 4 && (a5 != 2 || !v17))
      {
        CGPDFAppenderDictionarySetValue(v24, a3, a4);
        return;
      }
    }

    else
    {
      v18 = CGPDFAppenderGetMutableObject(a1, v9, v8);
      if (a5 != 4 && a5 != 2)
      {
        v19 = CGPDFNameCreate(a3);
        CFDictionarySetValue(v18, v19, a4);
        CFRelease(v19);
        return;
      }
    }

    v25 = CGPDFAppenderCreateMutableObject(a1, a4);
    CGPDFAppenderDictionarySetCGPDFReference(v18, a3, v25, v26);
  }
}

void PDFWriteObject(uint64_t *a1, uint64_t *cf, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = CFGetTypeID(cf);
  if (v11 == CFNullGetTypeID())
  {

    PDFWriterPrintf(a1, "null", v12, v13, v14, v15, v16, v17, a9);
  }

  else if (v11 == CFBooleanGetTypeID())
  {
    v80 = CFBooleanGetValue(cf) != 0;
    PDFWriterPrintf(a1, "%b", v18, v19, v20, v21, v22, v23, v80);
  }

  else if (v11 == CFNumberGetTypeID())
  {
    if (CFNumberIsFloatType(cf))
    {
      valuePtr = 0;
      CFNumberGetValue(cf, kCFNumberCGFloatType, &valuePtr);
      PDFWriterPrintf(a1, "%f", v30, v31, v32, v33, v34, v35, valuePtr);
    }

    else
    {
      v81 = 0;
      CFNumberGetValue(cf, kCFNumberIntType, &v81);
      PDFWriterPrintf(a1, "%d", v43, v44, v45, v46, v47, v48, v81);
    }
  }

  else
  {
    if (CGPDFNameTypeID_onceToken != -1)
    {
      dispatch_once(&CGPDFNameTypeID_onceToken, &__block_literal_global_6_20515);
    }

    if (v11 == CGPDFNameTypeID_id)
    {
      v36 = cf[2];
      if (*v36 == 47)
      {
        ++v36;
      }

      PDFWriterPrintf(a1, "/%N", v24, v25, v26, v27, v28, v29, v36);
    }

    else if (v11 == CFStringGetTypeID())
    {
      PDFWriterPrintf(a1, "%T", v37, v38, v39, v40, v41, v42, cf);
    }

    else if (v11 == CFArrayGetTypeID())
    {

      PDFWriteArray(a1, cf, v49, v50, v51, v52, v53, v54, a9);
    }

    else if (v11 == CFDictionaryGetTypeID())
    {

      PDFWriteDictionary(a1, cf);
    }

    else
    {
      if (CGPDFStreamObjectTypeID_onceToken != -1)
      {
        dispatch_once(&CGPDFStreamObjectTypeID_onceToken, &__block_literal_global_11_20529);
      }

      if (v11 == CGPDFStreamObjectTypeID_id)
      {

        PDFWriteStreamObject(a1, cf);
      }

      else
      {
        if (CGPDFReferenceTypeID_onceToken != -1)
        {
          dispatch_once(&CGPDFReferenceTypeID_onceToken, &__block_literal_global_20501);
        }

        if (v11 == CGPDFReferenceTypeID_id)
        {
          if (cf)
          {
            v61 = cf[2];
          }

          else
          {
            v61 = 0;
          }

          PDFWriterPrintf(a1, "%R", v55, v56, v57, v58, v59, v60, v61);
        }

        else if (v11 == CFDataGetTypeID())
        {
          BytePtr = CFDataGetBytePtr(cf);
          Length = CFDataGetLength(cf);
          if (a1)
          {
            v64 = Length;
            v65 = *a1;

            CGDataConsumerPutBytes(v65, BytePtr, v64);
          }
        }

        else
        {
          if (CGPDFHexDataTypeID_onceToken != -1)
          {
            dispatch_once(&CGPDFHexDataTypeID_onceToken, &__block_literal_global_15_20550);
          }

          if (v11 == CGPDFHexDataTypeID_id)
          {
            v66 = cf[2];
            v67 = CFDataGetLength(v66);
            CFDataGetBytePtr(v66);
            PDFWriterPrintf(a1, "%X", v68, v69, v70, v71, v72, v73, v67);
          }

          else if (v11 == CFDateGetTypeID())
          {
            PDFWriterPrintf(a1, "%D", v74, v75, v76, v77, v78, v79, cf);
          }

          else
          {
            pdf_error("Error: PDFWriteObject(...) encountered unknown object ID %d", v11);
          }
        }
      }
    }
  }
}

__CFArray *AppendModeCreateDocumentID(uint64_t a1, CGPDFArray *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  value = 0;
  CGPDFArrayGetString(a2, 0, &value);
  v6 = value;
  if (value)
  {
    if (*(value + 3))
    {
      decrypt_string(value);
    }

    v7 = *(v6 + 9);
  }

  else
  {
    v7 = 0;
  }

  v8 = malloc_type_malloc(2 * v7 + 3, 0x100004077774924uLL);
  *v8 = 60;
  v9 = v8 + 1;
  if (v7)
  {
    v10 = 80;
    do
    {
      v11 = value;
      if (*(value + 3))
      {
        decrypt_string(value);
      }

      sprintf(v9, "%02X", *(v11 + v10++));
      v9 += 2;
      --v7;
    }

    while (v7);
  }

  *&v8[strlen(v8)] = 62;
  v12 = strlen(v8);
  v13 = CFDataCreate(v4, v8, v12);
  free(v8);
  CFArrayAppendValue(Mutable, v13);
  CFRelease(v13);
  v14 = malloc_type_malloc(0x5CuLL, 0x100004034A301B9uLL);
  CC_MD5_Init(v14);
  if (v14)
  {
    CC_MD5_Update(v14, &AppendModeCreateDocumentID_kBaselineHash, 4u);
    ++AppendModeCreateDocumentID_kBaselineHash;
    data = time(0);
    CC_MD5_Update(v14, &data, 8u);
    if (a1)
    {
LABEL_13:
      v15 = *(a1 + 40);
      goto LABEL_16;
    }
  }

  else
  {
    ++AppendModeCreateDocumentID_kBaselineHash;
    data = time(0);
    if (a1)
    {
      goto LABEL_13;
    }
  }

  v15 = 0;
LABEL_16:
  v27 = v15;
  if (v14)
  {
    CC_MD5_Update(v14, &v27, 8u);
  }

  if (a1)
  {
    if (*(a1 + 72) == url_put_bytes)
    {
      v21 = *(a1 + 16);
      if (v21)
      {
        v22 = *v21;
        if (*v21)
        {
          v23 = CFURLGetString(*v21);
          if (v23)
          {
            v24 = v23;
            Length = CFStringGetLength(v23);
            v26 = malloc_type_malloc(2 * Length, 0x1000040BDFB0063uLL);
            v34.location = 0;
            v34.length = Length;
            CFStringGetCharacters(v24, v34, v26);
            if (v14)
            {
              md5_update(v14, v26, 2 * Length);
            }

            free(v26);
            CFRelease(v24);
          }

          CFRelease(v22);
        }
      }
    }
  }

  if (v14)
  {
    CC_MD5_Final(md, v14);
  }

  free(v14);
  __sprintf_chk(__s, 0, 0x23uLL, "<");
  v16 = 0;
  v17 = v31;
  do
  {
    sprintf(v17, "%02X", md[v16++]);
    v17 += 2;
  }

  while (v16 != 16);
  *&__s[strlen(__s)] = 62;
  v18 = strlen(__s);
  v19 = CFDataCreate(v4, __s, v18);
  CFArrayAppendValue(Mutable, v19);
  CFRelease(v19);
  return Mutable;
}

void PDFWriteStreamObject(uint64_t *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  if (CFDataGetBytePtr(v5))
  {
    v6 = *(a2 + 32);
    if (v6 == 1)
    {
      Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 0);
      v8 = CGDataConsumerCreateWithCFData(Mutable);
      FlateEncoder = CGDataConsumerCreateFlateEncoder(v8);
      BytePtr = CFDataGetBytePtr(v5);
      Length = CFDataGetLength(v5);
      CGDataConsumerPutBytes(FlateEncoder, BytePtr, Length);
      CGDataConsumerClose(FlateEncoder);
      if (FlateEncoder)
      {
        CFRelease(FlateEncoder);
      }

      if (v8)
      {
        CFRelease(v8);
      }

      CGPDFAppenderDictionarySetCGPDFName(v4, "Filter", "FlateDecode");
      v5 = Mutable;
    }

    else
    {
      Mutable = 0;
    }

    v12 = CFDataGetLength(v5);
    CGPDFAppenderDictionarySetInt32(v4, "Length", v12);
    PDFWriteDictionary(a1, *(a2 + 16));
    PDFWriterPrintf(a1, "stream\n", v13, v14, v15, v16, v17, v18, v32);
    v19 = CFDataGetBytePtr(v5);
    if (a1)
    {
      CGDataConsumerPutBytes(*a1, v19, v12);
    }

    PDFWriterPrintf(a1, "\n", v20, v21, v22, v23, v24, v25, v33);
    PDFWriterPrintf(a1, "endstream\n", v26, v27, v28, v29, v30, v31, v34);
    if (v6)
    {

      CFRelease(Mutable);
    }
  }

  else
  {

    pdf_error("Failed to get the raw data pointer for PDFWriteStreamObject(...)");
  }
}

void PDFWriteDictionary(_BYTE **a1, CFDictionaryRef theDict)
{
  Count = CFDictionaryGetCount(theDict);
  v5 = malloc_type_malloc(8 * Count, 0xC0040B8AA526DuLL);
  v6 = malloc_type_malloc(8 * Count, 0xC0040B8AA526DuLL);
  CFDictionaryGetKeysAndValues(theDict, v5, v6);
  PDFWriterPrintf(a1, "<<", v7, v8, v9, v10, v11, v12, v23);
  if (Count >= 1)
  {
    v19 = v5;
    v20 = v6;
    do
    {
      v21 = *v19++;
      PDFWriteObject(a1, v21);
      v22 = *v20++;
      PDFWriteObject(a1, v22);
      --Count;
    }

    while (Count);
  }

  PDFWriterPrintf(a1, ">>", v13, v14, v15, v16, v17, v18, v24);
  free(v6);

  free(v5);
}

void PDFWriteArray(_BYTE **a1, const __CFArray *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  PDFWriterPrintf(a1, "[", a3, a4, a5, a6, a7, a8, v21);
  Count = CFArrayGetCount(a2);
  if (Count >= 1)
  {
    v18 = Count;
    for (i = 0; i != v18; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a2, i);
      PDFWriteObject(a1, ValueAtIndex);
    }
  }

  PDFWriterPrintf(a1, "]", v12, v13, v14, v15, v16, v17, a9);
}

uint64_t __AppendModeWriteObjects_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*a2 + 16);
  v4 = *(*a3 + 16);
  v5 = v3 > v4;
  if (v3 >= v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = -1;
  }

  if (v5)
  {
    return 1;
  }

  else
  {
    return v6;
  }
}

uint64_t CGPDFAppenderHasMutableObject(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (a1)
  {
    if (a2 | a3)
    {
      v4 = CGPDFReferenceCreate(a2, a3);
      v3 = CFDictionaryGetValue(*(v3 + 16), v4) != 0;
      CFRelease(v4);
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

void CGPDFAppenderReplaceMutableObject(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  if (a1 && a4)
  {
    v8 = CGPDFReferenceCreate(a2, a3);
    Value = CFDictionaryGetValue(*(a1 + 16), v8);
    if (!Value)
    {
      Value = AppendModeObjectCreate(0, a2, a3, 0);
      CFDictionarySetValue(*(a1 + 16), v8, Value);
      CFRelease(Value);
    }

    v10 = Value[5];
    if (v10)
    {
      CFRelease(v10);
    }

    Value[5] = CFRetain(a4);

    CFRelease(v8);
  }
}

uint64_t AppendModeObjectCreate(int a1, uint64_t a2, uint64_t a3, const void *a4)
{
  if (AppendModeObjectGetTypeID_onceToken != -1)
  {
    dispatch_once(&AppendModeObjectGetTypeID_onceToken, &__block_literal_global_138);
  }

  cftype = pdf_create_cftype();
  *(cftype + 16) = a2;
  *(cftype + 24) = a3;
  *(cftype + 32) = a1;
  *(cftype + 40) = a4;
  *(cftype + 48) = 0;
  if (a4)
  {
    CFRetain(a4);
  }

  return cftype;
}

uint64_t __AppendModeObjectGetTypeID_block_invoke()
{
  result = pdf_register_cftype(&AppendModeObjectGetTypeID_class);
  AppendModeObjectGetTypeID_id = result;
  return result;
}

void AppendModeFinalize(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    CFRelease(v1);
  }
}

void __AppendModePopulateDocumentInfo_block_invoke(uint64_t a1, CFStringRef theString, const __CFString *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  if (!CFStringGetCString(theString, buffer, 256, 0x600u))
  {
    pdf_error("Invalid key in documentInfo dictionary");
    return;
  }

  if (!CFEqual(theString, @"Keywords"))
  {
    (*(*(a1 + 32) + 16))();
    return;
  }

  v6 = CFGetTypeID(a3);
  if (v6 == CFStringGetTypeID())
  {
    if (CFStringGetLength(a3) < 1)
    {
      return;
    }

    v7 = CFRetain(a3);
    if (!v7)
    {
      return;
    }

    goto LABEL_18;
  }

  v8 = CFGetTypeID(a3);
  if (v8 == CFArrayGetTypeID())
  {
    Count = CFArrayGetCount(a3);
    if (Count >= 1)
    {
      v10 = Count;
      v11 = *MEMORY[0x1E695E480];
      MutableCopy = CFArrayCreateMutableCopy(*MEMORY[0x1E695E480], 0, a3);
      for (i = 0; i < v10; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(MutableCopy, i);
        v15 = CFGetTypeID(ValueAtIndex);
        if (v15 != CFStringGetTypeID() || CFStringGetLength(ValueAtIndex) <= 0)
        {
          CFArrayRemoveValueAtIndex(MutableCopy, i);
          --v10;
          --i;
        }
      }

      if (v10 < 1)
      {
        v16 = MutableCopy;
        goto LABEL_19;
      }

      v7 = CFStringCreateByCombiningStrings(v11, MutableCopy, @", ");
      CFRelease(MutableCopy);
      if (!v7)
      {
        return;
      }

LABEL_18:
      (*(*(a1 + 32) + 16))();
      v16 = v7;
LABEL_19:
      CFRelease(v16);
    }
  }
}

uint64_t __AppendModeUpdateIndirectReferences_block_invoke_4(uint64_t a1, uint64_t a2, void *a3, const void *a4, uint64_t a5)
{
  if (CGPDFStreamObjectTypeID_onceToken != -1)
  {
    dispatch_once(&CGPDFStreamObjectTypeID_onceToken, &__block_literal_global_11_20529);
  }

  if (CGPDFStreamObjectTypeID_id == a5)
  {
    MutableObject = CGPDFAppenderCreateMutableObject(a2, a3);
    v11 = CGPDFReferenceCreate(MutableObject, v10);
    CFDictionarySetValue(a3, a4, v11);
    CFRelease(v11);
  }

  return 1;
}

uint64_t __AppendModeUpdateIndirectReferences_block_invoke_3(uint64_t a1, uint64_t a2, __CFArray *a3, CFIndex a4, uint64_t a5, const void *a6)
{
  if (CGPDFStreamObjectTypeID_onceToken != -1)
  {
    dispatch_once(&CGPDFStreamObjectTypeID_onceToken, &__block_literal_global_11_20529);
  }

  if (CGPDFStreamObjectTypeID_id == a5)
  {
    MutableObject = CGPDFAppenderCreateMutableObject(a2, a6);
    v13 = CGPDFReferenceCreate(MutableObject, v12);
    CFArraySetValueAtIndex(a3, a4, v13);
    CFRelease(v13);
  }

  return 1;
}

void AppendModeSafelyTraverseCFObject(CFDictionaryRef *a1, __CFSet *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    MutableObject = a3;
    while (!CFSetContainsValue(a2, MutableObject))
    {
      CFSetAddValue(a2, MutableObject);
      v10 = CFGetTypeID(MutableObject);
      if (CGPDFReferenceTypeID_onceToken != -1)
      {
        dispatch_once(&CGPDFReferenceTypeID_onceToken, &__block_literal_global_20501);
      }

      if (v10 == CGPDFReferenceTypeID_id)
      {
        if (!CGPDFAppenderHasMutableObject(a1, MutableObject[2], MutableObject[3]))
        {
          return;
        }

        MutableObject = CGPDFAppenderGetMutableObject(a1, MutableObject[2], MutableObject[3]);
      }

      else
      {
        if (v10 == CFArrayGetTypeID())
        {
          Count = CFArrayGetCount(MutableObject);
          if (Count >= 1)
          {
            v12 = Count;
            for (i = 0; i != v12; ++i)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(MutableObject, i);
              v15 = CFGetTypeID(ValueAtIndex);
              if ((*(a4 + 16))(a4, a1, MutableObject, i, v15, ValueAtIndex))
              {
                v16 = CFArrayGetValueAtIndex(MutableObject, i);
                AppendModeSafelyTraverseCFObject(a1, a2, v16, a4, a5);
              }
            }
          }

          return;
        }

        if (v10 == CFDictionaryGetTypeID())
        {
          v17 = CFDictionaryGetCount(MutableObject);
          if (v17 >= 1)
          {
            v18 = v17;
            v24 = malloc_type_malloc(8 * v17, 0xC0040B8AA526DuLL);
            CFDictionaryGetKeysAndValues(MutableObject, v24, 0);
            for (j = 0; j != v18; ++j)
            {
              v20 = v24[j];
              CFRetain(v20);
              Value = CFDictionaryGetValue(MutableObject, v20);
              v22 = CFGetTypeID(Value);
              if ((*(a5 + 16))(a5, a1, MutableObject, v20, v22, Value))
              {
                v23 = CFDictionaryGetValue(MutableObject, v20);
                if (v23)
                {
                  AppendModeSafelyTraverseCFObject(a1, a2, v23, a4, a5);
                }
              }

              CFRelease(v20);
            }

            free(v24);
          }

          return;
        }

        if (CGPDFStreamObjectTypeID_onceToken != -1)
        {
          dispatch_once(&CGPDFStreamObjectTypeID_onceToken, &__block_literal_global_11_20529);
        }

        if (v10 != CGPDFStreamObjectTypeID_id)
        {
          return;
        }

        MutableObject = MutableObject[2];
      }

      if (!MutableObject)
      {
        return;
      }
    }
  }
}

uint64_t __AppendModeUpdateIndirectReferences_block_invoke_2(uint64_t a1, CFDictionaryRef *a2, __CFDictionary *a3, const void *a4, uint64_t a5, const void *a6)
{
  if (_ZZZ22CGDisplayListGetTypeIDEUb_E4once != -1)
  {
    dispatch_once(&_ZZZ22CGDisplayListGetTypeIDEUb_E4once, &__block_literal_global_171_15843);
  }

  if (CGDisplayListGetTypeID::display_list2_type_id == a5)
  {
    CGPDFStreamObjectFromCGDisplayList = CGPDFAppenderCreateCGPDFStreamObjectFromCGDisplayList(a2, a6, 0.0, 0.0);
    v13 = v12;
    CFRetain(a4);
    v14 = CGPDFReferenceCreate(CGPDFStreamObjectFromCGDisplayList, v13);
    CFDictionarySetValue(a3, a4, v14);
    CFRelease(v14);
    CFRelease(a4);
  }

  return 1;
}

uint64_t CGPDFAppenderCreateCGPDFStreamObjectFromCGDisplayList(CFDictionaryRef *a1, const void *a2, double a3, double a4)
{
  v8 = *MEMORY[0x1E695E480];
  Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 0);
  v10 = CGDataConsumerCreateWithCFData(Mutable);
  v11 = CGPDFContextCreate(v10, 0, 0);
  if (v10)
  {
    CFRelease(v10);
  }

  v12 = CFDictionaryCreateMutable(v8, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CGCFDictionarySetPoint(v12, @"DisplayListOrigin", a3, a4);
  CGPDFContextBeginPage(v11, v12);
  CGContextDrawDisplayList(v11, a2, 0, v13, v14, v15, v16, v17);
  CGPDFContextEndPage(v11);
  CGPDFContextClose(v11);
  if (v11)
  {
    CFRelease(v11);
  }

  CFRelease(v12);
  v18 = CGDataProviderCreateWithCFData(Mutable);
  CFRelease(Mutable);
  v19 = CGPDFDocumentCreateWithProvider(v18);
  CGDataProviderRelease(v18);
  Page = CGPDFDocumentGetPage(v19, 1uLL);
  if (Page)
  {
    Page = *(*(Page + 5) + 16);
  }

  value = 0;
  if (CGPDFDictionaryGetDictionary(Page, "Resources", &value))
  {
    dict = 0;
    if (CGPDFDictionaryGetDictionary(value, "XObject", &dict))
    {
      v34 = 0;
      v35 = &v34;
      v36 = 0x2000000000;
      v37 = 0;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = __CGPDFAppenderCreateCGPDFStreamObjectFromCGDisplayList_block_invoke;
      block[3] = &unk_1E6E32D60;
      block[4] = &v34;
      CGPDFDictionaryApplyBlock(dict, block, 0);
      v21 = v35[3];
      if (v21 && (CGPDFStreamObject = CGPDFAppenderCreateCGPDFStreamObject(v21)) != 0)
      {
        v23 = CGPDFStreamObject;
        MutableObject = CGPDFAppenderCreateMutableObject(a1, CGPDFStreamObject);
        v26 = v25;
        CFRelease(v23);
        v27 = CFDictionaryCreateMutable(v8, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v28 = v27;
        v29 = v35[3];
        if (v29)
        {
          v30 = *(v29 + 24);
          v31 = *(v29 + 32);
        }

        else
        {
          v30 = 0;
          v31 = 0;
        }

        CGPDFAppenderDictionarySetReferenceToReference(v27, v30, v31, MutableObject, v26);
        AppendModeDuplicateExternalObject(a1, v19, v23, v28);
        CFRelease(v28);
        if (!v19)
        {
          goto LABEL_18;
        }
      }

      else
      {
        MutableObject = 0;
        if (!v19)
        {
LABEL_18:
          _Block_object_dispose(&v34, 8);
          return MutableObject;
        }
      }

      CFRelease(v19);
      goto LABEL_18;
    }
  }

  if (v19)
  {
    CFRelease(v19);
  }

  return 0;
}

uint64_t __CGPDFAppenderCreateCGPDFStreamObjectFromCGDisplayList_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3 || *(a3 + 8) != 9)
  {
    return 1;
  }

  value[3] = v3;
  value[4] = v4;
  v6 = *(a3 + 32);
  value[0] = 0;
  if (v6)
  {
    v7 = *(v6 + 48);
  }

  else
  {
    v7 = 0;
  }

  if (!CGPDFDictionaryGetName(v7, "Subtype", value))
  {
    return 1;
  }

  result = strcmp(value[0], "Form");
  if (result)
  {
    return 1;
  }

  *(*(*(a1 + 32) + 8) + 24) = v6;
  return result;
}

void AppendModeDuplicateExternalObject(CFDictionaryRef *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = __AppendModeDuplicateExternalObject_block_invoke;
  v5[3] = &__block_descriptor_tmp_126_18501;
  v5[4] = a4;
  v5[5] = a2;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = __AppendModeDuplicateExternalObject_block_invoke_2;
  v4[3] = &__block_descriptor_tmp_128_18502;
  v4[4] = a4;
  v4[5] = a2;
  AppendModeTraverseCFObject(a1, a3, v5, v4);
}

uint64_t __AppendModeDuplicateExternalObject_block_invoke(uint64_t a1, uint64_t a2, __CFArray *a3, CFIndex a4, uint64_t a5, uint64_t *key)
{
  if (CGPDFReferenceTypeID_onceToken != -1)
  {
    dispatch_once(&CGPDFReferenceTypeID_onceToken, &__block_literal_global_20501);
  }

  if (CGPDFReferenceTypeID_id == a5)
  {
    Value = CFDictionaryGetValue(*(a1 + 32), key);
    if (Value)
    {
      CFArraySetValueAtIndex(a3, a4, Value);
      return 0;
    }

    if (key)
    {
      v14 = key[2];
      key = key[3];
    }

    else
    {
      v14 = 0;
    }

    v15 = *(a1 + 40);
    if (v15 && (v16 = pdf_xref_resolve(**(*(v15 + 16) + 16), v14, key)) != 0)
    {
      CFObject = CGPDFAppenderCreateCFObject(v16, 1);
      if (CFObject)
      {
        v18 = CFObject;
        MutableObject = CGPDFAppenderCreateMutableObject(a2, CFObject);
        v21 = v20;
        CFRelease(v18);
        CGPDFAppenderDictionarySetReferenceToReference(*(a1 + 32), v14, key, MutableObject, v21);
        v22 = CGPDFReferenceCreate(MutableObject, v21);
        CFArraySetValueAtIndex(a3, a4, v22);
        CFRelease(v22);
      }

      else
      {
        pdf_error("Failed to convert object to its CoreFoundation equivalent");
      }
    }

    else
    {
      pdf_error("Failed to extract source document object");
    }
  }

  return 1;
}

uint64_t __AppendModeDuplicateExternalObject_block_invoke_2(uint64_t a1, uint64_t a2, __CFDictionary *a3, const void *a4, uint64_t a5, uint64_t *key)
{
  if (CGPDFReferenceTypeID_onceToken != -1)
  {
    dispatch_once(&CGPDFReferenceTypeID_onceToken, &__block_literal_global_20501);
  }

  if (CGPDFReferenceTypeID_id == a5)
  {
    Value = CFDictionaryGetValue(*(a1 + 32), key);
    if (Value)
    {
      CFDictionarySetValue(a3, a4, Value);
      return 0;
    }

    if (key)
    {
      v14 = key[2];
      key = key[3];
    }

    else
    {
      v14 = 0;
    }

    v15 = *(a1 + 40);
    if (v15 && (v16 = pdf_xref_resolve(**(*(v15 + 16) + 16), v14, key)) != 0)
    {
      CFObject = CGPDFAppenderCreateCFObject(v16, 1);
      if (CFObject)
      {
        v18 = CFObject;
        MutableObject = CGPDFAppenderCreateMutableObject(a2, CFObject);
        v21 = v20;
        CFRelease(v18);
        CGPDFAppenderDictionarySetReferenceToReference(*(a1 + 32), v14, key, MutableObject, v21);
        v22 = CGPDFReferenceCreate(MutableObject, v21);
        CFDictionarySetValue(a3, a4, v22);
        CFRelease(v22);
      }

      else
      {
        pdf_error("Failed to copy object");
      }
    }

    else
    {
      pdf_error("Failed to extract source document object");
    }
  }

  return 1;
}

uint64_t __AppendModeUpdateIndirectReferences_block_invoke(uint64_t a1, CFDictionaryRef *a2, __CFArray *a3, CFIndex a4, uint64_t a5, const void *a6)
{
  if (_ZZZ22CGDisplayListGetTypeIDEUb_E4once != -1)
  {
    dispatch_once(&_ZZZ22CGDisplayListGetTypeIDEUb_E4once, &__block_literal_global_171_15843);
  }

  if (CGDisplayListGetTypeID::display_list2_type_id == a5)
  {
    CGPDFStreamObjectFromCGDisplayList = CGPDFAppenderCreateCGPDFStreamObjectFromCGDisplayList(a2, a6, 0.0, 0.0);
    v13 = CGPDFReferenceCreate(CGPDFStreamObjectFromCGDisplayList, v12);
    CFArraySetValueAtIndex(a3, a4, v13);
    CFRelease(v13);
  }

  return 1;
}

uint64_t CGPDFAppenderCreatePageObject(uint64_t a1, CGPDFPage *a2)
{
  if (a2)
  {
    v4 = *(*(a2 + 5) + 16);
  }

  else
  {
    v4 = 0;
  }

  CFDictionary = CGPDFAppenderCreateCFDictionary(v4);
  v40 = a1;
  MutableObject = CGPDFAppenderCreateMutableObject(a1, CFDictionary);
  v41 = v7;
  v42 = MutableObject;
  CFRelease(CFDictionary);
  Count = CFDictionaryGetCount(CFDictionary);
  v9 = malloc_type_malloc(8 * Count, 0xC0040B8AA526DuLL);
  CFDictionaryGetKeysAndValues(CFDictionary, v9, 0);
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      v11 = 0;
      v12 = v9[i];
      v13 = v12[2];
      v15 = *v13;
      v14 = (v13 + 1);
      if (v15 == 47)
      {
        v16 = v14;
      }

      else
      {
        v16 = v12[2];
      }

      while (strcmp(v16, CGPDFAppenderCreatePageObject_kLegalKeyNames[v11]))
      {
        if (++v11 == 11)
        {
          CFDictionaryRemoveValue(CFDictionary, v12);
          break;
        }
      }
    }
  }

  free(v9);
  CGPDFAppenderDictionarySetCGPDFName(CFDictionary, "Type", "Page");
  for (j = 0; j != 5; ++j)
  {
    BoxRect = CGPDFPageGetBoxRect(a2, j);
    if (BoxRect.origin.x != INFINITY && BoxRect.origin.y != INFINITY)
    {
      PDFRect = CGCFArrayCreatePDFRect(BoxRect.origin.x, BoxRect.origin.y, BoxRect.size.width, BoxRect.size.height);
      CGPDFAppenderDictionarySetValue(CFDictionary, CGPDFAppenderCreatePageObject_kLegalKeyNames[j], PDFRect);
      CFRelease(PDFRect);
    }
  }

  RotationAngle = CGPDFPageGetRotationAngle(a2);
  CGPDFAppenderDictionarySetInt32(CFDictionary, "Rotate", RotationAngle);
  v21 = CGPDFNameCreate("MediaBox");
  v22 = CFDictionaryGetValue(CFDictionary, v21);
  CFRelease(v21);
  if (!v22)
  {
    v23 = CGCFArrayCreatePDFRect(0.0, 0.0, 612.0, 792.0);
    CGPDFAppenderDictionarySetValue(CFDictionary, "MediaBox", v23);
    CFRelease(v23);
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v25 = Mutable;
  if (v4)
  {
    v26 = *(v4 + 3);
    v27 = *(v4 + 4);
  }

  else
  {
    v26 = 0;
    v27 = 0;
  }

  CGPDFAppenderDictionarySetReferenceToReference(Mutable, v26, v27, v42, v41);
  value = 0;
  v28 = *v40;
  if (*v40)
  {
    CGAnalyticsSendPDFDocumentGetCatalogEvent();
    catalog = pdf_document_get_catalog(**(*(v28 + 2) + 16));
  }

  else
  {
    catalog = 0;
  }

  if (CGPDFDictionaryGetDictionary(catalog, "Pages", &value))
  {
    if (value)
    {
      v30 = *(value + 3);
      v31 = *(value + 4);
    }

    else
    {
      v30 = 0;
      v31 = 0;
    }

    v32 = CGPDFNameCreate("Parent");
    v33 = CFDictionaryGetValue(CFDictionary, v32);
    CFRelease(v32);
    if (v33)
    {
      CGPDFAppenderDictionarySetReferenceToReference(v25, v33[2], v33[3], v30, v31);
    }
  }

  v43 = 0;
  if (CGPDFDictionaryGetArray(v4, "Annots", &v43))
  {
    if (v43)
    {
      v34 = *(v43 + 6);
      v35 = *(v43 + 7);
    }

    else
    {
      v34 = 0;
      v35 = 0;
    }

    v36 = CGPDFNameCreate("Annots");
    v37 = CFDictionaryGetValue(CFDictionary, v36);
    CFRelease(v36);
    if (v37)
    {
      CGPDFAppenderDictionarySetReferenceToReference(v25, v37[2], v37[3], v34, v35);
    }
  }

  if (a2)
  {
    v38 = *(a2 + 2);
  }

  else
  {
    v38 = 0;
  }

  AppendModeDuplicateExternalObject(v40, v38, CFDictionary, v25);
  CFRelease(v25);
  return v42;
}

uint64_t CGPDFAppenderCreateAnnotationObject(CFDictionaryRef *a1, uint64_t a2, uint64_t a3)
{
  CFDictionary = *(a3 + 24);
  if (!CFDictionary)
  {
    CFDictionary = CGPDFAppenderCreateCFDictionary(*(a3 + 16));
    *(a3 + 24) = CFDictionary;
  }

  if (*(a3 + 32) != 1)
  {
    v15 = CGPDFNameCreate("P");
    CFDictionaryRemoveValue(CFDictionary, v15);
    CFRelease(v15);
    return CGPDFAppenderCreateMutableObject(a1, CFDictionary);
  }

  v7 = CGPDFNameCreate("AP");
  v8 = CFDictionaryGetValue(CFDictionary, v7);
  CFRelease(v7);
  if (v8)
  {
    v9 = CGPDFNameCreate("N");
    v8 = CFDictionaryGetValue(v8, v9);
    CFRelease(v9);
    if (v8)
    {
      v10 = CFGetTypeID(v8);
      if (_ZZZ22CGDisplayListGetTypeIDEUb_E4once != -1)
      {
        dispatch_once(&_ZZZ22CGDisplayListGetTypeIDEUb_E4once, &__block_literal_global_171_15843);
      }

      if (v10 == CGDisplayListGetTypeID::display_list2_type_id)
      {
        v11 = CGPDFNameCreate("Rect");
        memset(&v35, 0, 32);
        CGCFDictionaryGetPDFRect(CFDictionary, v11, &v35);
        CFRelease(v11);
        CGPDFStreamObjectFromCGDisplayList = CGPDFAppenderCreateCGPDFStreamObjectFromCGDisplayList(a1, v8, v35.f64[0], v35.f64[1]);
        v8 = v13;
        if (a2)
        {
          v14 = *(*(a2 + 40) + 16);
        }

        else
        {
          v14 = 0;
        }

        value = 0;
        CGPDFDictionaryGetObject(v14, "Contents", &value);
        v17 = *(value + 2);
        v18 = *(value + 3);
        if (!(v17 | v18))
        {
          v33 = 0;
          CGPDFDictionaryGetArray(v14, "Contents", &v33);
          CFArray = CGPDFAppenderCreateCFArray(v33);
          v20 = CGPDFReferenceCreate(CGPDFStreamObjectFromCGDisplayList, v8);
          CFArrayAppendValue(CFArray, v20);
          CFRelease(v20);
          CGPDFAppenderMutateDictionaryValue(a1, v14, "Contents", CFArray, 2);
          v21 = CFArray;
LABEL_18:
          CFRelease(v21);
          goto LABEL_32;
        }

        if (CGPDFAppenderHasMutableObject(a1, *(value + 2), *(value + 3)))
        {
          MutableObject = CGPDFAppenderGetMutableObject(a1, v17, v18);
          v23 = CGPDFReferenceCreate(CGPDFStreamObjectFromCGDisplayList, v8);
          CFArrayAppendValue(MutableObject, v23);
          v21 = v23;
          goto LABEL_18;
        }

        if (!a2)
        {
          goto LABEL_25;
        }

        v24 = *(a2 + 16);
        if (!v24)
        {
          goto LABEL_25;
        }

        v25 = pdf_xref_resolve(**(*(v24 + 16) + 16), v17, v18);
        if (!v25)
        {
          goto LABEL_25;
        }

        v26 = *(v25 + 2);
        if (v26 != 9)
        {
          if (v26 == 7)
          {
            CFObject = CGPDFAppenderCreateCFObject(v25, 1);
            CGPDFAppenderMutateDictionaryValue(a1, v14, "Contents", CFObject, 2);
            CFRelease(CFObject);
            v28 = CFObject;
LABEL_34:
            CGPDFAppenderArrayAppendCGPDFReference(v28, CGPDFStreamObjectFromCGDisplayList, v8);
            goto LABEL_32;
          }

LABEL_25:
          pdf_error("Unknown format for /Contents for append mode");
          goto LABEL_32;
        }

        v29 = *(v25 + 4);
        if (v29)
        {
          v30 = *(v29 + 24);
          v31 = *(v29 + 32);
        }

        else
        {
          v30 = 0;
          v31 = 0;
        }

        if (v30 | v31)
        {
          Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
          CGPDFAppenderMutateDictionaryValue(a1, v14, "Contents", Mutable, 4);
          CFRelease(Mutable);
          CGPDFAppenderArrayAppendCGPDFReference(Mutable, v30, v31);
          v28 = Mutable;
          goto LABEL_34;
        }

        pdf_error("Failed to extract contents array for append burn in of annotation");
      }

      CGPDFStreamObjectFromCGDisplayList = 0;
      v8 = 0;
      goto LABEL_32;
    }
  }

  CGPDFStreamObjectFromCGDisplayList = 0;
LABEL_32:
  result = 0;
  *(a3 + 40) = CGPDFStreamObjectFromCGDisplayList;
  *(a3 + 48) = v8;
  return result;
}

double __RIPStyleColorMatrix_block_invoke()
{
  rips_cm_cs = CGColorSpaceCreateDeviceRGB();
  if (rips_cm_cs)
  {
    *algn_1EA868958 = *&off_1EF238420;
    result = *&xmmword_1EF238450;
    *&qword_1EA868998 = *off_1EF238460;
    *&RIPStyleColorMatrix_rips_cm_cls = rips_cm_super;
    *(&RIPStyleColorMatrix_rips_cm_cls + 1) = rips_cm_size;
    qword_1EA868960 = rips_cm_release;
    *&xmmword_1EA868968 = rips_cm_Create;
    *(&xmmword_1EA868968 + 1) = rips_cm_Growth;
    qword_1EA868978 = rips_cm_ColorSpace;
    qword_1EA868980 = rips_cm_BltShape;
    *&xmmword_1EA868988 = rips_cm_BltGlyph;
    *(&xmmword_1EA868988 + 1) = rips_cm_BltImage;
    qword_1EA868998 = rips_cm_BltShade;
  }

  return result;
}

uint64_t rips_cm_BltShade(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, int32x2_t *a7, uint64_t a8)
{
  if (a3)
  {
    v8 = a3;
  }

  else
  {
    v8 = a2;
  }

  v9 = (v8 + 12);
  if (a4)
  {
    v9 = a4;
  }

  if (a5)
  {
    v9 = a5;
  }

  return rips_cm_Draw(a1, a2, a3, a4, v9, 0, 0, 0, a5, a6, a7, a8);
}

uint64_t rips_cm_Draw(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, int *a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t a10, int32x2_t *a11, uint64_t a12)
{
  v131 = *MEMORY[0x1E69E9840];
  v90 = 0uLL;
  if (!a4 || a4 == a5)
  {
    v90 = *a5;
    v18 = 1;
    if (!DWORD2(v90) || !HIDWORD(v90))
    {
      return v18;
    }
  }

  else if (!CGSBoundsIntersection(a4, a5, &v90))
  {
    return 1;
  }

  memset(v96, 0, sizeof(v96));
  if (a3)
  {
    if ((CGSBoundsIntersection((a2 + 12), (a3 + 12), v96) & 1) == 0)
    {
      return 1;
    }
  }

  else
  {
    *v96 = *(a2 + 12);
    if (!*&v96[4] || !*&v96[6])
    {
      return 1;
    }
  }

  v89[0] = 0;
  v89[1] = 0;
  if (!CGSBoundsIntersection(&v90, v96, v89))
  {
    return 1;
  }

  v26 = *(a1 + 168) | ((**(a2 + 32) & 0x3F0000u) > 0x80000);
  if (*(a1 + 168) & 1 | ((**(a2 + 32) & 0x3F0000u) > 0x80000))
  {
    v27 = 20;
  }

  else
  {
    v27 = 6;
  }

  v28 = RIPGetDepthForLayerFormat(v27, v19, v20, v21, v22, v23, v24, v25);
  v32 = RIPLayerCreate(RIPLayer_ripl_class, v89, 17, v28, *(a2 + 52), v29, v30, v31);
  if (!v32)
  {
    return 0;
  }

  v35 = v32;
  v36 = *(a12 + 16);
  v129[0] = *a12;
  v129[1] = v36;
  v37 = *(a12 + 48);
  v129[2] = *(a12 + 32);
  v129[3] = v37;
  v130 = *(a12 + 64);
  LODWORD(v129[0]) = 2;
  if (a6)
  {
    if ((RIPLayerBltShape(v32, 0, 0, a6, a10, a11, v129, v34) & 1) == 0)
    {
      return 0;
    }
  }

  else if (a7)
  {
    if ((RIPLayerBltGlyph(v32, 0, 0, a7, a10, a11, 0, v129) & 1) == 0)
    {
      return 0;
    }
  }

  else if (a8)
  {
    if ((RIPLayerBltImage(v32, 0, 0, a8, v129, a11, v33, v34) & 1) == 0)
    {
      return 0;
    }
  }

  else if (a9 && !RIPLayerBltShade(v32, 0, 0, a9, a10, v129, v33, v34))
  {
    return 0;
  }

  v40 = v35[5];
  v39 = v35[6];
  dest.data = *(v35 + 7);
  dest.height = v39;
  v41 = v35[12];
  dest.width = v40;
  dest.rowBytes = v41;
  if (*(a1 + 168) == 1)
  {
    vImageUnpremultiplyData_RGBAFFFF(&dest, &dest, 0);
  }

  if (v26)
  {
    v42 = *(a1 + 92);
    v44 = *(a1 + 104);
    v43 = *(a1 + 108);
    matrix = *(a1 + 88);
    v114 = v43;
    v45 = *(a1 + 132);
    v47 = *(a1 + 144);
    v46 = *(a1 + 148);
    v115 = *(a1 + 128);
    v116 = v46;
    v48 = *(a1 + 112);
    v49 = *(a1 + 116);
    v117 = v42;
    v118 = v48;
    v50 = *(a1 + 152);
    v51 = *(a1 + 156);
    v119 = v45;
    v120 = v50;
    v52 = *(a1 + 100);
    v121 = *(a1 + 96);
    v122 = v49;
    v53 = *(a1 + 140);
    v123 = *(a1 + 136);
    v124 = v51;
    v54 = *(a1 + 120);
    v55 = *(a1 + 124);
    v125 = v52;
    v126 = v54;
    v56 = *(a1 + 160);
    v57 = *(a1 + 164);
    v127 = v53;
    v128 = v56;
    post_bias.i64[0] = __PAIR64__(v55, v44);
    post_bias.i64[1] = __PAIR64__(v57, v47);
    vImageMatrixMultiply_ARGBFFFF(&dest, &dest, &matrix, 0, post_bias.f32, 0);
  }

  else
  {
    v62 = *(a1 + 112);
    v61 = *(a1 + 116);
    v63 = *(a1 + 140);
    matrix = *(a1 + 136);
    v114 = v61;
    v64 = *(a1 + 100);
    v66 = *(a1 + 144);
    v65 = *(a1 + 148);
    v115 = *(a1 + 96);
    v116 = v65;
    v67 = *(a1 + 128);
    v117 = *(a1 + 132);
    v118 = v62;
    v68 = *(a1 + 88);
    v69 = *(a1 + 152);
    v70 = *(a1 + 156);
    v119 = *(a1 + 92);
    v120 = v69;
    v72 = *(a1 + 104);
    v71 = *(a1 + 108);
    v121 = v67;
    v122 = v71;
    v123 = v68;
    v124 = v70;
    v73 = *(a1 + 120);
    v74 = *(a1 + 124);
    v125 = v63;
    v126 = v73;
    p_matrix = &matrix;
    v76 = *(a1 + 160);
    v77 = *(a1 + 164);
    v127 = v64;
    v128 = v76;
    v132 = vld4q_f32(p_matrix);
    post_bias.i64[0] = __PAIR64__(v74, v66);
    *v132.val[0].f32 = vmovn_s32(vcvtq_n_s32_f32(v132.val[0], 8uLL));
    *v132.val[1].f32 = vmovn_s32(vcvtq_n_s32_f32(v132.val[1], 8uLL));
    *v132.val[2].f32 = vmovn_s32(vcvtq_n_s32_f32(v132.val[2], 8uLL));
    *v132.val[3].f32 = vmovn_s32(vcvtq_n_s32_f32(v132.val[3], 8uLL));
    v78 = v96;
    post_bias.i64[1] = __PAIR64__(v77, v72);
    *v91 = vcvtq_n_s32_f32(vmulq_f32(post_bias, vdupq_n_s32(0x437F0000u)), 8uLL);
    vst4_s16(v78, *v132.val[0].f32);
    vImageMatrixMultiply_ARGB8888(&dest, &dest, v96, 256, 0, v91, 0);
  }

  if (*(a1 + 168) == 1)
  {
    vImagePremultiplyData_RGBAFFFF(&dest, &dest, 0);
  }

  v98 = xmmword_184562C90;
  v99 = unk_184562CA0;
  v102 = xmmword_184562CD0;
  v103 = unk_184562CE0;
  v100 = xmmword_184562CB0;
  v101 = unk_184562CC0;
  v106 = xmmword_184562D10;
  v107 = unk_184562D20;
  v104 = xmmword_184562CF0;
  v105 = unk_184562D00;
  v111 = 0;
  v109 = xmmword_184562D40;
  v110 = xmmword_184562D50;
  v108 = xmmword_184562D30;
  *v96 = RIPImageDataInitializer;
  v97 = unk_184562C80;
  *&v98 = *(v35 + 4);
  DWORD2(v99) = v35[5];
  DWORD2(v98) = DWORD2(v99);
  HIDWORD(v99) = v35[6];
  *&v99 = 0;
  HIDWORD(v98) = HIDWORD(v99);
  LODWORD(v100) = v35[12];
  *(&v100 + 1) = *(v35 + 7);
  *(&v101 + 1) = *(v35 + 9);
  LODWORD(v101) = v35[16];
  v102 = 0uLL;
  v86 = 0;
  v82 = *(v35 + 3);
  v87 = 0;
  v84 = 0;
  v85 = 0;
  v83 = v96;
  v79 = *(a12 + 48);
  v93 = *(a12 + 32);
  v94 = v79;
  v80 = *(a12 + 64);
  v81 = *(a12 + 16);
  *v91 = *a12;
  v92 = v81;
  v95 = v80;
  *&v94 = 0x3FF0000000000000;
  v18 = RIPLayerBltImage(a2, a3, v89, &v82, v91, v58, v59, v60);
  (*(*v35 + 24))(v35);
  return v18;
}

uint64_t rips_cm_BltImage(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, int *a5, uint64_t a6, int32x2_t *a7, uint64_t a8)
{
  v8 = a5;
  if (a3)
  {
    v9 = a3;
  }

  else
  {
    v9 = a2;
  }

  v10 = (v9 + 12);
  if (a4)
  {
    v10 = a4;
  }

  if (!a5)
  {
    a5 = v10;
  }

  return rips_cm_Draw(a1, a2, a3, a4, a5, 0, 0, v8, 0, a6, a7, a8);
}

uint64_t rips_cm_BltGlyph(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, int *a5, uint64_t a6, int32x2_t *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v10 = a5;
  if (a3)
  {
    v11 = a3;
  }

  else
  {
    v11 = a2;
  }

  v12 = (v11 + 12);
  if (a4)
  {
    v12 = a4;
  }

  if (!a5)
  {
    a5 = v12;
  }

  return rips_cm_Draw(a1, a2, a3, a4, a5, 0, v10, 0, 0, a6, a7, a10);
}

uint64_t rips_cm_BltShape(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, int32x2_t *a7, uint64_t a8)
{
  if (a3)
  {
    v9 = a3;
  }

  else
  {
    v9 = a2;
  }

  v10 = (v9 + 12);
  if (a4)
  {
    v10 = a4;
  }

  if (a5)
  {
    v11 = (a5 + 12);
  }

  else
  {
    v11 = v10;
  }

  return rips_cm_Draw(a1, a2, a3, a4, v11, a5, 0, 0, 0, a6, a7, a8);
}

_DWORD *rips_cm_Create(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = (*(a1 + 8))();
  v8 = malloc_type_calloc(1uLL, v7, 0x43352049uLL);
  v9 = v8;
  if (v8)
  {
    *v8 = a1;
    v8[2] = 1;
    Copy = CGGStateCreateCopy(a4);
    v11 = 0;
    *(v9 + 10) = Copy;
    v9[3] = 2289;
    v12 = a2 + 32;
    if (!a2)
    {
      v12 = 0;
    }

    v13 = (v12 + 8);
    do
    {
      v15 = *v13;
      v14 = v13[1];
      v13 += 2;
      *&v9[v11 + 22] = vcvt_hight_f32_f64(vcvt_f32_f64(v15), v14);
      v11 += 4;
    }

    while (v11 != 20);
    v16 = *(v9 + 25) != 0.0 || *(v9 + 30) != 0.0 || *(v9 + 35) != 0.0 || *(v9 + 37) != 0.0 || *(v9 + 38) != 0.0 || *(v9 + 39) != 0.0 || *(v9 + 40) != 1.0 || *(v9 + 41) != 0.0;
    v17 = *(v9 + 26) != 0.0 || *(v9 + 31) != 0.0 || *(v9 + 36) != 0.0 || *(v9 + 41) != 0.0;
    *(v9 + 168) = v16 || v17;
  }

  return v9;
}

void rips_cm_release(_DWORD *a1)
{
  v2 = a1[2] - 1;
  a1[2] = v2;
  if (!v2)
  {
    v4 = *(a1 + 10);
    if (v4)
    {
      CGGStateRelease(v4);
    }

    free(a1);
  }
}

uint64_t CGBufferProviderCreate(uint64_t a1, uint64_t a2, const void *a3, const void *a4, const void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    CGPostError("%s: Invalid size = %jd", 0, a3, a4, a5, a6, a7, a8, "CGBufferProviderCreate");
    return 0;
  }

  if (!a3)
  {
    return 0;
  }

  if (_block_invoke_once_18548 != -1)
  {
    dispatch_once(&_block_invoke_once_18548, &__block_literal_global_14_18549);
  }

  Instance = CGTypeCreateInstance(CGBufferProviderGetTypeID_id, 128, a3, a4, a5, a6, a7, a8);
  if (!Instance)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v16.__sig) = 136315138;
      *(&v16.__sig + 4) = "create_buffer_provider";
      _os_log_impl(&dword_183EA0000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s failed", &v16, 0xCu);
    }

    return 0;
  }

  v14 = Instance;
  *(Instance + 16) = a1;
  *(Instance + 24) = -1;
  *(Instance + 120) = 1;
  v16.__sig = 0;
  *v16.__opaque = 0;
  pthread_mutexattr_init(&v16);
  pthread_mutexattr_settype(&v16, 2);
  pthread_mutex_init((v14 + 56), &v16);
  pthread_mutexattr_destroy(&v16);
  *(v14 + 24) = a2;
  *(v14 + 32) = _Block_copy(a3);
  *(v14 + 40) = _Block_copy(a4);
  *(v14 + 48) = _Block_copy(a5);
  return v14;
}

uint64_t __CGBufferProviderGetTypeID_block_invoke_2()
{
  result = __CGTypeRegisterInternal(CGBufferProviderGetTypeID_runtime_class);
  CGBufferProviderGetTypeID_id = result;
  return result;
}

uint64_t buffer_provider_retain_count_18560(uint64_t a1, atomic_uint *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  switch(a1)
  {
    case -1:
      if (atomic_fetch_add_explicit(a2 + 30, 0xFFFFFFFF, memory_order_relaxed) == 1)
      {
        buffer_provider_finalize_18561(a2, a2, a3, a4, a5, a6, a7, a8);
        v10 = CFGetAllocator(a2);
        CFAllocatorDeallocate(v10, a2);
      }

      break;
    case 0:
      return a2[30];
    case 1:
      return atomic_fetch_add_explicit(a2 + 30, 1u, memory_order_relaxed) + 1;
  }

  return 0;
}

void buffer_provider_finalize_18561(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 128))
  {
    _CGHandleAssert("buffer_provider_finalize", 177, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGBufferProvider.c", "provider->byte_pointer == NULL", "provider byte pointer method missing", a6, a7, a8, v12);
  }

  v9 = *(a1 + 48);
  if (v9)
  {
    (*(v9 + 16))(v9, *(a1 + 16));
  }

  pthread_mutex_destroy((a1 + 56));
  v10 = *(a1 + 136);
  if (v10)
  {
    CFRelease(v10);
  }

  _Block_release(*(a1 + 32));
  _Block_release(*(a1 + 40));
  v11 = *(a1 + 48);

  _Block_release(v11);
}

__CFString *buffer_provider_copy_format_description_18567(CFStringRef a1)
{
  if (!os_variant_has_internal_content())
  {
    return @"CGBufferProvider";
  }

  if (a1)
  {
    v3 = 0;
    asprintf(&v3, "CGBufferProvider: %p size: %zu retain count: %d retained pointer: %p", a1, a1->length, LODWORD(a1[3].length), a1[4].isa);
    a1 = CFStringCreateWithFormat(0, 0, @"%s\n%@", v3, &stru_1EF244DC0);
    free(v3);
  }

  return a1;
}

uint64_t CGBufferProviderCreateWithCFData(const void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = CFGetTypeID(a1);
  if (v2 != CFDataGetTypeID())
  {
    return 0;
  }

  CFRetain(a1);
  Length = CFDataGetLength(a1);

  return CGBufferProviderCreate(a1, Length, &__block_literal_global_18579, 0, &__block_literal_global_5_18580, v4, v5, v6);
}

uint64_t CGBufferProviderGetSize(uint64_t result)
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

uint64_t CGBufferProviderGetTypeID()
{
  if (_block_invoke_once_18548 != -1)
  {
    dispatch_once(&_block_invoke_once_18548, &__block_literal_global_14_18549);
  }

  return CGBufferProviderGetTypeID_id;
}

char *CGBufferLockBytePtr(char *result)
{
  if (result)
  {
    v1 = result;
    CFRetain(result);
    pthread_mutex_lock((v1 + 56));
    result = *(v1 + 16);
    if (*(v1 + 5))
    {
      if (result)
      {
        _CGHandleAssert("CGBufferLockBytePtr", 283, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGBufferProvider.c", "provider->byte_pointer == NULL", "provider byte pointer method missing", v2, v3, v4, v5);
      }

      goto LABEL_4;
    }

    if (!result)
    {
LABEL_4:
      *(v1 + 16) = (*(*(v1 + 4) + 16))();
      v6 = 0;
      asprintf(&v6, "CGBufferProvider: %p\n", v1);
      qword_1ED4E0528 = v6;
      ERROR_CGDataProviderCreateWithData_BufferIsNotReadable();
      ERROR_CGDataProviderCreateWithData_BufferIsNotBigEnough();
      qword_1ED4E0528 = 0;
      free(v6);
      return *(v1 + 16);
    }
  }

  return result;
}

void CGBufferUnlockBytePtr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    if (!*(a1 + 128))
    {
      _CGHandleAssert("CGBufferUnlockBytePtr", 306, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGBufferProvider.c", "provider->byte_pointer != NULL", "provider byte pointer method missing", a6, a7, a8, v10);
    }

    v9 = *(a1 + 40);
    if (v9)
    {
      (*(v9 + 16))(v9, *(a1 + 16));
    }

    *(a1 + 128) = 0;
    pthread_mutex_unlock((a1 + 56));

    CFRelease(a1);
  }
}

CFTypeID CGPatternGetTypeID(void)
{
  if (kCGPatternWillDeallocate_block_invoke_once != -1)
  {
    dispatch_once(&kCGPatternWillDeallocate_block_invoke_once, &__block_literal_global_6_18603);
  }

  return CGPatternGetTypeID_pattern_type_id;
}

void release_shading(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

CGPatternRef CGPatternRetain(CGPatternRef pattern)
{
  if (pattern)
  {
    CFRetain(pattern);
  }

  return pattern;
}

void CGPatternRelease(CGPatternRef pattern)
{
  if (pattern)
  {
    CFRelease(pattern);
  }
}

void draw_image_18621(unint64_t *image, CGContextRef c)
{
  if (image)
  {
    v2 = image[5];
    v3 = image[6];
  }

  else
  {
    v2 = 0.0;
    v3 = 0.0;
  }

  v4 = 0;
  v5 = 0;
  CGContextDrawImage(c, *(&v2 - 2), image);
}

uint64_t CGPatternCreateUncoloredEmpty()
{
  if (create_empty_once != -1)
  {
    dispatch_once_f(&create_empty_once, 0, create_empty);
  }

  v0 = uncolored_empty;
  if (uncolored_empty)
  {
    CFRetain(uncolored_empty);
  }

  return v0;
}

CGPatternRef create_empty()
{
  v1.origin.x = 0.0;
  v1.origin.y = 0.0;
  v1.size.width = 0.0;
  v1.size.height = 0.0;
  colored_empty = CGPatternCreate(0, v1, &CGAffineTransformIdentity, 0.0, 0.0, kCGPatternTilingConstantSpacing, 1, &create_empty_callbacks);
  *(colored_empty + 72) = 0;
  v2.origin.x = 0.0;
  v2.origin.y = 0.0;
  v2.size.width = 0.0;
  v2.size.height = 0.0;
  result = CGPatternCreate(0, v2, &CGAffineTransformIdentity, 0.0, 0.0, kCGPatternTilingConstantSpacing, 0, &create_empty_callbacks);
  uncolored_empty = result;
  *(result + 72) = 0;
  return result;
}

uint64_t CGPatternCreateColoredEmpty()
{
  if (create_empty_once != -1)
  {
    dispatch_once_f(&create_empty_once, 0, create_empty);
  }

  v0 = colored_empty;
  if (colored_empty)
  {
    CFRetain(colored_empty);
  }

  return v0;
}

__n128 CGPatternGetMatrix@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 40);
  *a2 = *(a1 + 24);
  *(a2 + 16) = v2;
  result = *(a1 + 56);
  *(a2 + 32) = result;
  return result;
}

uint64_t CGPatternGetImage(uint64_t result)
{
  if (result)
  {
    if (*(result + 20) || *(result + 184) != 1)
    {
      return 0;
    }

    else
    {
      return *(result + 80);
    }
  }

  return result;
}

uint64_t CGPatternGetShading(uint64_t result)
{
  if (result)
  {
    if (*(result + 20) == 1)
    {
      return *(result + 80);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t CGContextDrawPatternCell(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 168);
    if (v2)
    {
      return v2(*(a2 + 80), result);
    }
  }

  return result;
}

void CGPatternDrawInContextDelegate(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = CGContextCreateWithDelegateAndInfo(a2, 16, a3, a4, 0, 0, a7, a8);
  if (a1)
  {
    v10 = *(a1 + 168);
    if (v10)
    {
      v10(*(a1 + 80), v9);
    }
  }

  if (v9)
  {

    CFRelease(v9);
  }
}

uint64_t CGPatternSetAssociate(uint64_t result, unint64_t a2)
{
  if (result)
  {
    v2 = 0;
    atomic_compare_exchange_strong_explicit((result + 88), &v2, a2, memory_order_relaxed, memory_order_relaxed);
    return *(result + 88);
  }

  return result;
}

uint64_t CGPatternGetAssociate(uint64_t result)
{
  if (result)
  {
    return *(result + 88);
  }

  return result;
}

void *CGPDFNodeCreateIteratorToNode(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v4 = 0;
  if (a1)
  {
    if (a2)
    {
      v4 = malloc_type_malloc(0x48uLL, 0x10A0040D82D4B19uLL);
      if (v4)
      {
        v9 = malloc_type_malloc(0x60uLL, 0x80040B8603338uLL);
        v4[8] = v9;
        if (v9)
        {
          v10 = 1;
          *v4 = 1;
          v4[1] = a1;
          v4[2] = a2;
          TextRange = CGPDFNodeGetTextRange(a1);
          v13 = v12;
          v14 = CGPDFNodeGetTextRange(a2);
          v4[4] = v14 + v15;
          if (v14 + v15 <= TextRange + v13)
          {
            if (v14 + v15 == TextRange + v13)
            {
              if (a1 != a2)
              {
                v16 = a1;
                do
                {
                  v16 = *(v16 + 8);
                  v10 = v16 != 0;
                }

                while (v16 != a2 && v16 != 0);
              }
            }

            else
            {
              v10 = 0;
            }
          }

          *(v4 + 24) = v10;
          v18 = *(a1 + 8);
          v4[5] = 0;
          v4[6] = v18;
          if (v18)
          {
            ChildIndex = CGPDFNodeGetChildIndex(a1);
          }

          else
          {
            v4[6] = a1;
            if ((*(a1 + 1) & 2) != 0)
            {
              ChildIndex = *(a1 + 44);
            }

            else
            {
              ChildIndex = 0;
            }
          }

          *(v4 + 14) = ChildIndex;
          *(v4 + 60) = v10;
          v20 = v4[8];
          if (a3)
          {
            *v20 = CGPDFNodeIteratorReject;
            if (a3 == 1)
            {
              v21 = CGPDFNodeIteratorAccept;
            }

            else
            {
              v21 = CGPDFNodeIteratorReject;
            }

            *(v4[8] + 8) = v21;
            if (a4)
            {
              v22 = CGPDFNodeIteratorAccept;
            }

            else
            {
              v22 = CGPDFNodeIteratorReject;
            }

            *(v4[8] + 24) = v22;
            *(v4[8] + 32) = v22;
            *(v4[8] + 40) = v22;
            *(v4[8] + 16) = CGPDFNodeIteratorReject;
            if (a3 > 515)
            {
              if (a3 <= 1536)
              {
                if (a3 == 516)
                {
                  *(v4[8] + 48) = CGPDFNodeIteratorReject;
                  *(v4[8] + 56) = CGPDFNodeIteratorReject;
                  *(v4[8] + 64) = CGPDFNodeIteratorReject;
                  v32 = v4[8];
                  v33 = CGPDFNodeIteratorAccept;
LABEL_59:
                  *(v32 + 72) = v33;
                  v29 = v4[8];
                  v24 = CGPDFNodeIteratorRecurseReject;
                  goto LABEL_39;
                }

                if (a3 == 517)
                {
                  *(v4[8] + 48) = CGPDFNodeIteratorReject;
                  *(v4[8] + 56) = CGPDFNodeIteratorReject;
                  *(v4[8] + 64) = CGPDFNodeIteratorReject;
                  *(v4[8] + 72) = CGPDFNodeIteratorReject;
                  *(v4[8] + 80) = CGPDFNodeIteratorReject;
                  v23 = v4[8];
                  v24 = CGPDFNodeIteratorAccept;
LABEL_40:
                  *(v23 + 88) = v24;
                  return v4;
                }

LABEL_50:
                v31 = 1;
                while (kCGPDFNodeTypeOrder[v31] != a3)
                {
                  if (++v31 == 12)
                  {
                    v31 = 0;
                    goto LABEL_58;
                  }
                }

                v31 = v31;
LABEL_58:
                *(v4[8] + 8 * v31) = CGPDFNodeIteratorAccept;
                v33 = CGPDFNodeIteratorReject;
                *(v4[8] + 48) = CGPDFNodeIteratorReject;
                *(v4[8] + 56) = CGPDFNodeIteratorReject;
                *(v4[8] + 64) = CGPDFNodeIteratorReject;
                v32 = v4[8];
                goto LABEL_59;
              }

              if (a3 != 1537)
              {
                if (a3 == 1538)
                {
                  *(v4[8] + 48) = CGPDFNodeIteratorReject;
                  *(v4[8] + 56) = CGPDFNodeIteratorReject;
                  *(v4[8] + 64) = CGPDFNodeIteratorReject;
                  *(v4[8] + 72) = CGPDFNodeIteratorReject;
                  *(v4[8] + 80) = CGPDFNodeIteratorRecurseAccept;
                  v23 = v4[8];
                  v24 = CGPDFNodeIteratorRecurseReject;
                  goto LABEL_40;
                }

                goto LABEL_50;
              }

              *(v4[8] + 48) = CGPDFNodeIteratorReject;
              *(v4[8] + 56) = CGPDFNodeIteratorAccept;
              v27 = v4[8];
              v24 = CGPDFNodeIteratorRecurseReject;
              goto LABEL_37;
            }

            if (a3 != 1)
            {
              if (a3 != 514)
              {
                if (a3 != 515)
                {
                  goto LABEL_50;
                }

                *(v4[8] + 48) = CGPDFNodeIteratorReject;
                *(v4[8] + 56) = CGPDFNodeIteratorReject;
                *(v4[8] + 64) = CGPDFNodeIteratorAccept;
                v28 = v4[8];
                v24 = CGPDFNodeIteratorRecurseReject;
LABEL_38:
                *(v28 + 72) = v24;
                v29 = v4[8];
LABEL_39:
                *(v29 + 80) = v24;
                v23 = v4[8];
                goto LABEL_40;
              }

              *(v4[8] + 48) = CGPDFNodeIteratorAccept;
              v26 = v4[8];
              v24 = CGPDFNodeIteratorRecurseReject;
              goto LABEL_36;
            }

            v25 = v4[8];
            v24 = CGPDFNodeIteratorRecurseReject;
          }

          else
          {
            *v20 = CGPDFNodeIteratorAccept;
            *(v4[8] + 8) = CGPDFNodeIteratorAccept;
            *(v4[8] + 24) = CGPDFNodeIteratorAccept;
            *(v4[8] + 32) = CGPDFNodeIteratorAccept;
            *(v4[8] + 40) = CGPDFNodeIteratorAccept;
            *(v4[8] + 16) = CGPDFNodeIteratorReject;
            v25 = v4[8];
            v24 = CGPDFNodeIteratorRecurseAccept;
          }

          *(v25 + 48) = v24;
          v26 = v4[8];
LABEL_36:
          *(v26 + 56) = v24;
          v27 = v4[8];
LABEL_37:
          *(v27 + 64) = v24;
          v28 = v4[8];
          goto LABEL_38;
        }

        free(v4);
        return 0;
      }
    }
  }

  return v4;
}

uint64_t CGPDFNodeIteratorRecurseReject(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 60);
  while (1)
  {
    v6 = *(a3 + 24);
    if (v6 != v5)
    {
      *(a3 + 60) = 0;
      if (a2 && (*(a2 + 1) & 2) != 0)
      {
        v9 = *(a2 + 44);
        if ((v6 & 1) == 0)
        {
LABEL_25:
          while (v9)
          {
            --v9;
            if (a2 && (*(a2 + 1) & 2) != 0 && *(a2 + 44) > v9 && (v15 = *(*(a2 + 56) + 8 * v9)) != 0)
            {
              v16 = *v15;
            }

            else
            {
              v16 = 0;
            }

            v17 = 1;
            while (kCGPDFNodeTypeOrder[v17] != v16)
            {
              if (++v17 == 12)
              {
                v18 = 0;
                goto LABEL_37;
              }
            }

            v18 = v17;
LABEL_37:
            if (((*(*(a3 + 64) + 8 * v18))(v9) & 1) == 0)
            {
              return 0;
            }
          }

          goto LABEL_3;
        }
      }

      else
      {
        v9 = 0;
        if ((v6 & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      if (v9)
      {
        break;
      }
    }

LABEL_3:
    v7 = ~v5;
    result = 1;
    v5 = (v5 & 1) == 0;
    *(a3 + 60) = v5;
    if ((v7 & 1) == 0)
    {
      return result;
    }
  }

  v10 = 0;
  while (1)
  {
    if (a2 && (*(a2 + 1) & 2) != 0 && v10 < *(a2 + 44) && (v11 = *(*(a2 + 56) + 8 * v10)) != 0)
    {
      v12 = *v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = 1;
    while (kCGPDFNodeTypeOrder[v13] != v12)
    {
      if (++v13 == 12)
      {
        v14 = 0;
        goto LABEL_21;
      }
    }

    v14 = v13;
LABEL_21:
    if (((*(*(a3 + 64) + 8 * v14))(v10) & 1) == 0)
    {
      return 0;
    }

    if (++v10 == v9)
    {
      goto LABEL_3;
    }
  }
}

uint64_t CGPDFNodeIteratorRecurseAccept(int a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 60);
  while (1)
  {
    v7 = *(a3 + 24);
    if (v7 == v6)
    {
      *(a3 + 40) = a2;
      if (a2)
      {
        v20 = *(a2 + 8);
      }

      else
      {
        v20 = 0;
      }

      result = 0;
      if (!v20)
      {
        v20 = a2;
      }

      *(a3 + 48) = v20;
      *(a3 + 56) = a1;
      *(a3 + 60) = (v6 & 1) == 0;
      return result;
    }

    *(a3 + 60) = 0;
    if (a2 && (*(a2 + 1) & 2) != 0)
    {
      v8 = *(a2 + 44);
      if ((v7 & 1) == 0)
      {
LABEL_24:
        while (v8)
        {
          --v8;
          if (a2 && (*(a2 + 1) & 2) != 0 && *(a2 + 44) > v8 && (v16 = *(*(a2 + 56) + 8 * v8)) != 0)
          {
            v17 = *v16;
          }

          else
          {
            v17 = 0;
          }

          v18 = 1;
          while (kCGPDFNodeTypeOrder[v18] != v17)
          {
            if (++v18 == 12)
            {
              v19 = 0;
              goto LABEL_36;
            }
          }

          v19 = v18;
LABEL_36:
          if (((*(*(a3 + 64) + 8 * v19))(v8) & 1) == 0)
          {
            return 0;
          }
        }

        goto LABEL_21;
      }
    }

    else
    {
      v8 = 0;
      if ((v7 & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    if (v8)
    {
      break;
    }

LABEL_21:
    v14 = ~v6;
    result = 1;
    v6 = (v6 & 1) == 0;
    *(a3 + 60) = v6;
    if ((v14 & 1) == 0)
    {
      return result;
    }
  }

  v9 = 0;
  while (1)
  {
    if (a2 && (*(a2 + 1) & 2) != 0 && v9 < *(a2 + 44) && (v10 = *(*(a2 + 56) + 8 * v9)) != 0)
    {
      v11 = *v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = 1;
    while (kCGPDFNodeTypeOrder[v12] != v11)
    {
      if (++v12 == 12)
      {
        v13 = 0;
        goto LABEL_19;
      }
    }

    v13 = v12;
LABEL_19:
    if (((*(*(a3 + 64) + 8 * v13))(v9) & 1) == 0)
    {
      return 0;
    }

    if (++v9 == v8)
    {
      goto LABEL_21;
    }
  }
}

uint64_t CGPDFNodeIteratorAccept(int a1, uint64_t a2, uint64_t a3)
{
  result = CGPDFNodeIsUsedGraphic(a2);
  if ((result & 1) == 0)
  {
    *(a3 + 40) = a2;
    if (a2)
    {
      v7 = *(a2 + 8);
    }

    else
    {
      v7 = 0;
    }

    if (!v7)
    {
      v7 = a2;
    }

    *(a3 + 48) = v7;
    *(a3 + 56) = a1;
  }

  *(a3 + 60) = 0;
  return result;
}

_DWORD *CGPDFNodeIteratorRetain(_DWORD *result)
{
  if (result)
  {
    ++*result;
  }

  return result;
}

void CGPDFNodeIteratorRelease(void **a1)
{
  if (a1)
  {
    if (*a1)
    {
      v2 = *a1 - 1;
      *a1 = v2;
      if (!v2)
      {
        free(a1[8]);

        free(a1);
      }
    }
  }
}

uint64_t CGPDFNodeIteratorNextNode(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 48);
    if (v2)
    {
      while (1)
      {
        *(v1 + 40) = 0;
        if ((*v2 & 0x200) == 0)
        {
          break;
        }

        v3 = *(v2 + 44);
        v4 = *(v1 + 56);
        if (v4 == v3)
        {
          goto LABEL_47;
        }

        if (!v3)
        {
          return 0;
        }

        if (*(v1 + 24) == 1)
        {
          if (v4 < v3)
          {
            do
            {
              if ((*(v2 + 1) & 2) != 0 && v4 < *(v2 + 44) && (v5 = *(*(v2 + 56) + 8 * v4)) != 0)
              {
                v6 = *v5;
              }

              else
              {
                v6 = 0;
              }

              v7 = 1;
              while (kCGPDFNodeTypeOrder[v7] != v6)
              {
                if (++v7 == 12)
                {
                  v8 = 0;
                  goto LABEL_18;
                }
              }

              v8 = v7;
LABEL_18:
              if (((*(*(v1 + 64) + 8 * v8))(v4) & 1) == 0)
              {
                goto LABEL_53;
              }
            }

            while (++v4 != v3);
          }
        }

        else
        {
          v12 = (v4 + 1);
          while (v12)
          {
            --v12;
            if ((*(v2 + 1) & 2) != 0 && *(v2 + 44) > v12 && (v13 = *(*(v2 + 56) + 8 * v12)) != 0)
            {
              v14 = *v13;
            }

            else
            {
              v14 = 0;
            }

            v15 = 1;
            while (kCGPDFNodeTypeOrder[v15] != v14)
            {
              if (++v15 == 12)
              {
                v16 = 0;
                goto LABEL_39;
              }
            }

            v16 = v15;
LABEL_39:
            if (((*(*(v1 + 64) + 8 * v16))(v12) & 1) == 0)
            {
              goto LABEL_53;
            }
          }
        }

        if (*(v1 + 24))
        {
          *(v1 + 56) = CGPDFNodeGetChildIndex(v2);
          v9 = *(v2 + 8);
          *(v1 + 48) = v9;
          if (v9)
          {
            v10 = 1;
            v2 = v9;
          }

          else
          {
            *(v1 + 48) = v2;
            *(v1 + 56) = v3;
            v10 = 1;
          }
        }

        else
        {
          do
          {
            ChildIndex = CGPDFNodeGetChildIndex(v2);
            v2 = *(v2 + 8);
          }

          while (!ChildIndex && v2);
          if (!ChildIndex)
          {
            return 0;
          }

          v10 = 0;
          *(v1 + 56) = ChildIndex - 1;
          *(v1 + 48) = v2;
        }

        result = 0;
        *(v1 + 60) = v10;
        if (!v2)
        {
          return result;
        }
      }

      if (*(v1 + 56))
      {
        return 0;
      }

      v3 = 0;
LABEL_47:
      v17 = 1;
      while (kCGPDFNodeTypeOrder[v17] != *v2)
      {
        if (++v17 == 12)
        {
          v18 = 0;
          goto LABEL_52;
        }
      }

      v18 = v17;
LABEL_52:
      if (((*(*(v1 + 64) + 8 * v18))(v3, v2, v1) & 1) == 0)
      {
LABEL_53:
        v19 = *(v1 + 40);
        if (!v19)
        {
          return *(v1 + 40);
        }

        TextRange = CGPDFNodeGetTextRange(v19);
        v22 = TextRange + v21;
        v23 = *(v1 + 24);
        v24 = *(v1 + 32);
        if (v23 == 1)
        {
          if (v22 > v24)
          {
            return 0;
          }

          if (v22 != v24)
          {
            goto LABEL_76;
          }

          v25 = *(v1 + 40);
          v26 = *(v1 + 16);
          if (v25 == v26 || !v26)
          {
            goto LABEL_76;
          }

          do
          {
            v26 = *(v26 + 8);
          }

          while (v26 != v25 && v26 != 0);
        }

        else
        {
          if (v22 < v24)
          {
            return 0;
          }

          if (v22 != v24)
          {
            goto LABEL_76;
          }

          v26 = *(v1 + 40);
          v28 = *(v1 + 16);
          if (v26 == v28 || !v26)
          {
            goto LABEL_76;
          }

          do
          {
            v26 = *(v26 + 8);
          }

          while (v26 != v28 && v26 != 0);
        }

        if (v26)
        {
          return 0;
        }

LABEL_76:
        if ((*(v1 + 60) & 1) == 0)
        {
          v30 = *(v1 + 56);
          if ((v23 & 1) == 0)
          {
            if (v30)
            {
LABEL_86:
              *(v1 + 56) = v30 - 1;
            }

            else
            {
              v33 = *(v1 + 48);
              while (v33)
              {
                v30 = CGPDFNodeGetChildIndex(v33);
                *(v1 + 56) = v30;
                v33 = *(v33 + 8);
                *(v1 + 48) = v33;
                if (v30)
                {
                  goto LABEL_86;
                }
              }
            }

            return *(v1 + 40);
          }

          *(v1 + 56) = v30 + 1;
          v31 = *(v1 + 48);
          if (v31)
          {
            if ((*(v31 + 1) & 2) != 0 && (v30 + 1) < *(v31 + 44))
            {
              return *(v1 + 40);
            }

            *(v1 + 56) = CGPDFNodeGetChildIndex(*(v1 + 48));
            v32 = *(v31 + 8);
          }

          else
          {
            v34 = CGPDFNodeGetChildIndex(0);
            v32 = 0;
            *(v1 + 56) = v34;
          }

          *(v1 + 48) = v32;
          *(v1 + 60) = 1;
        }

        return *(v1 + 40);
      }
    }

    return 0;
  }

  return result;
}

uint64_t CGPDFNodeIteratorRestart(uint64_t result)
{
  if (result)
  {
    v1 = result;
    *(result + 40) = 0;
    result = *(result + 8);
    if (result)
    {
      v2 = *(result + 8);
      *(v1 + 48) = v2;
      if (v2)
      {
        result = CGPDFNodeGetChildIndex(result);
      }

      else
      {
        *(v1 + 48) = result;
        if ((*(result + 1) & 2) != 0)
        {
          result = *(result + 44);
        }

        else
        {
          result = 0;
        }
      }
    }

    else
    {
      *(v1 + 48) = 0;
    }

    *(v1 + 56) = result;
    *(v1 + 60) = *(v1 + 24);
  }

  return result;
}

uint64_t CGPDFNodeIsHitByPoint(uint64_t result, __n128 a2, __n128 a3, double a4)
{
  if (result)
  {
    v5 = result;
    Rotation = CGPDFNodeGetRotation(result);
    v7 = Rotation;
    *&v8.x = a2.n128_u64[0];
    *&v8.y = a3.n128_u64[0];
    point = v8;
    if (Rotation != 0.0)
    {
      v10 = __sincos_stret(Rotation);
      v9.f64[0] = v10.__cosval;
      v9.f64[1] = -v10.__sinval;
      point = vaddq_f64(vmlaq_n_f64(vmulq_laneq_f64(v10, point, 1), v9, a2.n128_f64[0]), 0);
    }

    HitTestRect = CGPDFNodeGetHitTestRect(v5, a4);
    v15 = v14;
    v16 = v5->n64_u32[0];
    if (v5->n64_u32[0] == 1)
    {
      v17 = v5[1].n64_u64[0];
      if (v17)
      {
        if (v7 == 0.0)
        {
          CGPDFNodeGetHitTestRect(v17, a4);
        }

        else
        {
          v37.origin.x = CGPDFNodeGetBounds(v17).n64_f64[0];
          *(&v11 - 1) = CGRectInset(v37, a4, a4);
        }
      }
    }

    v18 = HitTestRect;
    v19 = v15;
    result = CGRectContainsPoint(*(&v11 - 1), point);
    if (result)
    {
      if (v16 == 1538 || v16 == 517)
      {
        if ((v5->n64_u8[1] & 2) == 0)
        {
          return 0;
        }

        v23 = v5[5].n64_u32[1];
        if (!v23)
        {
          return 0;
        }

        v24 = 0;
        v25 = v23 - 1;
        do
        {
          if ((v5->n64_u8[1] & 2) != 0)
          {
            v28 = a3;
            v27 = a2;
            if (v24 >= v5[5].n64_u32[1])
            {
              v26 = 0;
            }

            else
            {
              v26 = *(v5[7].n64_u64[0] + 8 * v24);
            }
          }

          else
          {
            v26 = 0;
            v28 = a3;
            v27 = a2;
          }

          result = CGPDFNodeIsHitByPoint(v26, v27, v28, a4);
          if (result)
          {
            break;
          }
        }

        while (v25 != v24++);
      }

      else
      {
        if (v16 == 516)
        {
          if ((v5->n64_u8[1] & 2) == 0)
          {
            return 0;
          }

          v20 = v5[5].n64_u32[1];
          if (!v20)
          {
            return 0;
          }

          ChildIndexAtX = CGPDFNodeGetChildIndexAtX(v5, point.x);
          if (ChildIndexAtX <= 1)
          {
            v22 = (v5->n64_u8[1] & 2) != 0 && v5[5].n64_u32[1] ? *v5[7].n64_u64[0] : 0;
            CGPDFNodeGetBounds(v22);
            if (point.y > v30 + v31 + a4)
            {
              return 0;
            }
          }

          if (ChildIndexAtX >= v20)
          {
            v32 = (v5->n64_u8[1] & 2) != 0 && v5[5].n64_u32[1] > v20 - 1 ? *(v5[7].n64_u64[0] + 8 * (v20 - 1)) : 0;
            CGPDFNodeGetBounds(v32);
            if (point.y < v33 - a4)
            {
              return 0;
            }
          }
        }

        return 1;
      }
    }
  }

  return result;
}

double CGPDFNodeGetHitTestRect(uint64_t a1, double a2)
{
  v5.n64_u64[0] = CGPDFNodeGetBounds(a1).n64_u64[0];
  v6 = v4.n64_f64[0];
  v8 = v7;
  v10 = v9;
  if (v5.n64_f64[0] == INFINITY || v4.n64_f64[0] == INFINITY)
  {
    return v5.n64_f64[0];
  }

  if (!a1 || ((v12 = *(a1 + 8), *a1 == 514) ? (v13 = v12 == 0) : (v13 = 1), v13 || ((v14.n64_u64[0] = CGPDFNodeGetBounds(*(a1 + 8)).n64_u64[0], v14.n64_f64[0] != INFINITY) ? (v18 = v15.n64_f64[0] == INFINITY) : (v18 = 1), v18)))
  {
    v26.origin.x = v5.n64_f64[0];
    v26.origin.y = v6;
    v26.size.width = v8;
    v26.size.height = v10;
    v5.n64_u64[0] = CGRectInset(v26, -a2, -a2);
    return v5.n64_f64[0];
  }

  v5.n64_u64[0] = CGRectInset(*v14.n64_u64, -a2, -a2);
  if ((*(v12 + 1) & 2) != 0)
  {
    v20 = *(v12 + 44);
    if (v20)
    {
      v21 = 0;
      v22 = 0;
      while (1)
      {
        v23 = v22;
        v22 = *(*(v12 + 56) + 8 * v21);
        if (v22 == a1)
        {
          break;
        }

        if (v20 == ++v21)
        {
          LODWORD(v21) = *(v12 + 44);
          break;
        }
      }

      v24 = v21 + 1;
      if (v23)
      {
        CGPDFNodeGetBounds(v23);
      }

      goto LABEL_27;
    }
  }

  else
  {
    LODWORD(v20) = 0;
  }

  v24 = 1;
LABEL_27:
  if (v24 < v20)
  {
    if ((*(v12 + 1) & 2) != 0 && *(v12 + 44) > v24)
    {
      v25 = *(*(v12 + 56) + 8 * v24);
    }

    else
    {
      v25 = 0;
    }

    CGPDFNodeGetBounds(v25);
  }

  return v5.n64_f64[0];
}

unint64_t CGPDFNodeGetChildIndexAtX(__n64 *a1, double a2)
{
  if (!a1)
  {
    return 0;
  }

  v4.n64_u64[0] = CGPDFNodeGetBounds(a1).n64_u64[0];
  v5 = v4.n64_f64[0];
  v7 = v6;
  if ((a1->n64_u8[1] & 2) == 0)
  {
    v8 = 0;
LABEL_17:
    v15 = v4.n64_f64[0];
LABEL_18:
    if ((v7 + v5 + v15) * 0.5 >= a2)
    {
      return v8;
    }

    else
    {
      return (v8 + 1);
    }
  }

  v8 = a1[5].n64_u32[1];
  if (!v8)
  {
    goto LABEL_17;
  }

  v9 = 0;
  v10 = v4.n64_f64[0];
  while (1)
  {
    v11 = (a1->n64_u8[1] & 2) != 0 && v9 < a1[5].n64_u32[1] ? *(a1[7].n64_u64[0] + 8 * v9) : 0;
    v12.n64_u64[0] = CGPDFNodeGetBounds(v11).n64_u64[0];
    v14 = v12.n64_f64[0] + v13;
    v15 = v10 <= v14 ? v10 : v14;
    if ((v12.n64_f64[0] + v15) * 0.5 > a2)
    {
      break;
    }

    ++v9;
    v10 = v14;
    if (v8 == v9)
    {
      v15 = v14;
      goto LABEL_18;
    }
  }

  if (v9 == v8)
  {
    goto LABEL_18;
  }

  return v9;
}

uint64_t CGPDFNodeGetNodeContainingPoint(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6)
{
  v8 = 0;
  v7 = 0;
  return CGPDFNodeGetBestNodeContainingPoint(a1, a2, a3, &v7, &v8, a4, a5, a6);
}

uint64_t CGPDFNodeGetBestNodeContainingPoint(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, _BYTE *a5, double a6, double a7, double a8)
{
  *a5 = 0;
  if (!a1 || (CGPDFNodeIsUsedGraphic(a1) & 1) != 0)
  {
    return 0;
  }

  v18 = *a1;
  if (*a1 == 513)
  {
    v19 = 1;
  }

  else
  {
    v19 = (*a1 >> 8) & 1;
  }

  if ((v18 & 0x100) != 0 || v18 == 516 || v18 == 513)
  {
    *a4 = a1;
  }

  v16.n128_f64[0] = a6;
  v17.n128_f64[0] = a7;
  if (!CGPDFNodeIsDirectlyHitByPoint(a1, v16, v17, a8))
  {
    return 0;
  }

  v22 = 1;
  if (a2 >= 2 && (a2 - 514) >= 2)
  {
    v22 = a2 == 1537;
  }

  v23 = v19 & a3;
  if (v18 == a2)
  {
    v23 = 1;
  }

  if (a2)
  {
    v24 = v23;
  }

  else
  {
    v24 = 1;
  }

  if (v18 != 1538 && v23 && a2)
  {
    if (v18 != 517 || (a3 & 1) == 0)
    {
      goto LABEL_71;
    }
  }

  else if (((v18 == 516) & ~v22) != 0 || v18 == 513)
  {
LABEL_71:
    if (!v24)
    {
      return 0;
    }

LABEL_78:
    v20.n128_f64[0] = a6;
    v21.n128_f64[0] = a7;
    *a5 = CGPDFNodeIsDirectlyHitByPoint(a1, v20, v21, 0.0);
    return a1;
  }

  v52 = v24;
  if ((*(a1 + 1) & 2) != 0)
  {
    v25 = *(a1 + 44);
    if (v25)
    {
      v26 = 0;
      v27 = 0;
      v54 = a3;
      v53 = *(a1 + 44);
      while (1)
      {
        if ((*(a1 + 1) & 2) != 0 && v26 < *(a1 + 44))
        {
          v28 = *(*(a1 + 56) + 8 * v26);
        }

        else
        {
          v28 = 0;
        }

        v61[0] = 0;
        v60 = *a4;
        BestNodeContainingPoint = CGPDFNodeGetBestNodeContainingPoint(v28, a2, a3, &v60, v61, a6, a7, a8);
        if (!BestNodeContainingPoint)
        {
          goto LABEL_69;
        }

        v30 = BestNodeContainingPoint;
        if (!v27)
        {
          v33 = v60;
          goto LABEL_68;
        }

        v31 = *a4;
        if (*a4)
        {
          v32 = v31->n64_u32[0];
        }

        else
        {
          v32 = 0;
        }

        v33 = v60;
        if (v60)
        {
          v34 = v60->n64_u32[0];
        }

        else
        {
          v34 = 0;
        }

        v55.n64_u64[0] = CGPDFNodeGetBounds(v31).n64_u64[0];
        v56 = v35;
        v57 = v36;
        v58 = v37;
        v38.n64_u64[0] = CGPDFNodeGetBounds(v33).n64_u64[0];
        v40 = v39;
        v42 = v41;
        v44 = v43;
        Rotation = CGPDFNodeGetRotation(*a4);
        v20.n128_f64[0] = CGPDFNodeGetRotation(v33);
        if (*a4 && v32 != 516 && v34 == 516)
        {
          v46 = __sincos_stret(v20.n128_f64[0] - Rotation);
          v59.a = v46.__cosval;
          v59.b = v46.__sinval;
          v59.c = -v46.__sinval;
          v59.d = v46.__cosval;
          v59.tx = 0.0;
          v59.ty = 0.0;
          v62.origin.x = v38.n64_f64[0];
          v62.origin.y = v40;
          v62.size.width = v42;
          v62.size.height = v44;
          v66 = CGRectApplyAffineTransform(v62, &v59);
          v63.origin.x = v55.n64_f64[0];
          v63.origin.y = v56;
          v63.size.width = v57;
          v63.size.height = v58;
          if (CGRectContainsRect(v63, v66))
          {
            a3 = v54;
            v25 = v53;
            goto LABEL_68;
          }
        }

        else if (v33)
        {
          if (v34 != 516 && v32 == 516)
          {
            v47 = __sincos_stret(Rotation - v20.n128_f64[0]);
            v59.a = v47.__cosval;
            v59.b = v47.__sinval;
            v59.c = -v47.__sinval;
            v59.d = v47.__cosval;
            v59.tx = 0.0;
            v59.ty = 0.0;
            v64.origin.x = v55.n64_f64[0];
            v64.origin.y = v56;
            v64.size.width = v57;
            v64.size.height = v58;
            v67 = CGRectApplyAffineTransform(v64, &v59);
            v65.origin.x = v38.n64_f64[0];
            v65.origin.y = v40;
            v65.size.width = v42;
            v65.size.height = v44;
            if (CGRectContainsRect(v65, v67))
            {
              a3 = v54;
              v25 = v53;
              goto LABEL_69;
            }
          }
        }

        if (v61[0] == 1)
        {
          a3 = v54;
          v25 = v53;
          if (*a5)
          {
LABEL_57:
            v48 = v30;
            while ((*(v48 + 1) & 3) == 0)
            {
              v48 = *(v48 + 8);
              if (!v48)
              {
                goto LABEL_62;
              }
            }

            v48 = *(v48 + 96);
LABEL_62:
            v49 = v27;
            while ((*(v49 + 1) & 3) == 0)
            {
              v49 = *(v49 + 8);
              if (!v49)
              {
                goto LABEL_67;
              }
            }

            v49 = *(v49 + 96);
LABEL_67:
            if (v48 < v49)
            {
              goto LABEL_69;
            }
          }

LABEL_68:
          *a4 = v33;
          *a5 = v61[0];
          v27 = v30;
          goto LABEL_69;
        }

        a3 = v54;
        v25 = v53;
        if ((*a5 & 1) == 0)
        {
          goto LABEL_57;
        }

LABEL_69:
        if (++v26 == v25)
        {
          goto LABEL_75;
        }
      }
    }
  }

  v27 = 0;
LABEL_75:
  v51 = v52;
  if (v27)
  {
    v51 = 0;
  }

  if (v51)
  {
    goto LABEL_78;
  }

  return v27;
}

uint64_t CGPDFNodeIsDirectlyHitByPoint(uint64_t result, __n128 a2, __n128 a3, double a4)
{
  if (result)
  {
    v5 = result;
    Rotation = CGPDFNodeGetRotation(result);
    *&v7.x = a2.n128_u64[0];
    *&v7.y = a3.n128_u64[0];
    point = v7;
    if (Rotation != 0.0)
    {
      v9 = __sincos_stret(Rotation);
      v8.f64[0] = v9.__cosval;
      v8.f64[1] = -v9.__sinval;
      point = vaddq_f64(vmlaq_n_f64(vmulq_laneq_f64(v9, point, 1), v8, a2.n128_f64[0]), 0);
    }

    v28.origin.x = CGPDFNodeGetHitTestRect(v5, a4);
    result = CGRectContainsPoint(v28, point);
    if (result)
    {
      v10 = v5->n64_u32[0];
      if (v5->n64_u32[0] == 1538 || v10 == 517)
      {
        if ((v10 & 0x200) == 0)
        {
          return 0;
        }

        v14 = v5[5].n64_u32[1];
        if (!v14)
        {
          return 0;
        }

        v15 = 0;
        v16 = v14 - 1;
        do
        {
          if ((v5->n64_u8[1] & 2) != 0)
          {
            v19 = a3;
            v18 = a2;
            if (v15 >= v5[5].n64_u32[1])
            {
              v17 = 0;
            }

            else
            {
              v17 = *(v5[7].n64_u64[0] + 8 * v15);
            }
          }

          else
          {
            v17 = 0;
            v19 = a3;
            v18 = a2;
          }

          result = CGPDFNodeIsDirectlyHitByPoint(v17, v18, v19, a4);
          if (result)
          {
            break;
          }
        }

        while (v16 != v15++);
      }

      else
      {
        if (v10 == 516)
        {
          v11 = v5[5].n64_u32[1];
          if (!v11)
          {
            return 0;
          }

          ChildIndexAtX = CGPDFNodeGetChildIndexAtX(v5, point.x);
          if (ChildIndexAtX <= 1)
          {
            v13 = (v5->n64_u8[1] & 2) != 0 && v5[5].n64_u32[1] ? *v5[7].n64_u64[0] : 0;
            CGPDFNodeGetBounds(v13);
            if (point.y > v21 + v22 + a4)
            {
              return 0;
            }
          }

          if (ChildIndexAtX >= v11)
          {
            v23 = (v5->n64_u8[1] & 2) != 0 && v5[5].n64_u32[1] > v11 - 1 ? *(v5[7].n64_u64[0] + 8 * (v11 - 1)) : 0;
            CGPDFNodeGetBounds(v23);
            if (point.y < v24 - a4)
            {
              return 0;
            }
          }
        }

        return 1;
      }
    }
  }

  return result;
}

__n64 *CGPDFNodeGetNodeAfterPoint(__n64 *a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6)
{
  v10 = 0;
  result = CGPDFNodeGetClosestNodeToPoint(a1, a2, a3, &v10, a4, a5, a6);
  if (!v10)
  {

    return CGPDFNodeGetNodeAfter(a1, result, a2, a3);
  }

  return result;
}

__n64 *CGPDFNodeGetClosestNodeToPoint(__n64 *a1, unsigned int a2, unsigned int a3, BOOL *a4, double a5, double a6, double a7)
{
  FirstDescendantOfType = a1;
  *a4 = 1;
  if (a1)
  {
    if (a2 <= 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = a2;
    }

    if (a2)
    {
      v14 = a3;
    }

    else
    {
      v14 = 1;
    }

    v15 = a1->n64_u32[0];
    if (a2 != 1538 && v15 == v13 || v14 && (v15 != 513 ? (v16 = (a1->n64_u32[0] & 0x100) == 0) : (v16 = 0), !v16))
    {
      *a4 = CGPDFNodeIsAfterPoint(a1, a5, a6, a7);
      return FirstDescendantOfType;
    }

    if (a2 == 517)
    {
      return 0;
    }

    ClosestAreaDescendantToPoint = a1;
    do
    {
      if (ClosestAreaDescendantToPoint->n64_u32[0] == 516)
      {
        if ((v13 - 514) >= 2 && v13 != 1 && v13 != 1537)
        {
          return 0;
        }

        goto LABEL_67;
      }

      ClosestAreaDescendantToPoint = ClosestAreaDescendantToPoint[1].n64_u64[0];
    }

    while (ClosestAreaDescendantToPoint);
    v71 = 0;
    v69 = 0;
    v70 = 0.0;
    v67 = 0;
    v68 = 0;
    ClosestAreaToPoint = CGPDFNodeGetClosestAreaToPoint(a1, v13, v14, a4, &v71, &v70, &v69, &v68, a5, a6, a7, &v67);
    if (!ClosestAreaToPoint)
    {
      return 0;
    }

    ClosestAreaDescendantToPoint = ClosestAreaToPoint;
    if (ClosestAreaToPoint != FirstDescendantOfType && !v71)
    {
      v19 = (v13 >> 8) & 1;
      if (a2 == 513)
      {
        v19 = 1;
      }

      if (v19)
      {
        v20 = v13;
      }

      else
      {
        v20 = 516;
      }

      v21 = ClosestAreaToPoint;
      while (1)
      {
        do
        {
          ClosestAreaDescendantToPoint = v21;
          NodeBefore = CGPDFNodeGetNodeBefore(FirstDescendantOfType, v21, v20, v14);
          if (!NodeBefore)
          {
            goto LABEL_67;
          }

          v21 = NodeBefore;
          if (!CGPDFNodeIsStrictlyAfterPoint(NodeBefore, a5, a6, a7))
          {
            goto LABEL_67;
          }

          v23 = v21;
          if (v21->n64_u32[0] == 516)
          {
            v23 = v21;
            if (v21[5].n64_u32[1])
            {
              v23 = *v21[7].n64_u64[0];
            }
          }

          v64.n64_u64[0] = CGPDFNodeGetBounds(v23).n64_u64[0];
          v61 = v24 + v25;
          Rotation = CGPDFNodeGetRotation(v23);
          v27.f64[0] = v64.n64_f64[0];
          v27.f64[1] = v61;
          if (Rotation != 0.0)
          {
            v62 = v27;
            v29 = __sincos_stret(Rotation);
            v28.f64[0] = v29.__cosval;
            v30.f64[0] = -v29.__sinval;
            v30.f64[1] = v29.__cosval;
            v28.f64[1] = v29.__sinval;
            v27 = vaddq_f64(vmlaq_n_f64(vmulq_laneq_f64(v30, v62, 1), v28, v64.n64_f64[0]), 0);
          }

          v63 = v27;
          v31 = ClosestAreaDescendantToPoint;
          if (ClosestAreaDescendantToPoint->n64_u32[0] == 516)
          {
            v32 = ClosestAreaDescendantToPoint[5].n64_u32[1];
            v31 = ClosestAreaDescendantToPoint;
            if (v32)
            {
              v31 = *(ClosestAreaDescendantToPoint[7].n64_u64[0] + 8 * (v32 - 1));
            }
          }

          v33.n64_u64[0] = CGPDFNodeGetBounds(v31).n64_u64[0];
          v65 = v34;
          v60 = v33.n64_f64[0] + v35;
          v36 = CGPDFNodeGetRotation(v31);
          v37.f64[0] = v60;
          v37.f64[1] = v65;
          v66 = v37;
          if (v36 != 0.0)
          {
            v39 = __sincos_stret(v36);
            v38.f64[0] = v39.__cosval;
            v40.f64[0] = -v39.__sinval;
            v40.f64[1] = v39.__cosval;
            v38.f64[1] = v39.__sinval;
            v66 = vaddq_f64(vmlaq_n_f64(vmulq_laneq_f64(v40, v66, 1), v38, v60), 0);
          }

          if (!CGPDFNodeIsStrictlyAfterPoint(ClosestAreaDescendantToPoint, v63.f64[0], v63.f64[1], a7))
          {
            goto LABEL_67;
          }

          v41 = CGPDFNodeGetRotation(v21);
          v42 = v66.f64[1];
          if (v41 != 0.0)
          {
            v43 = __sincos_stret(v41);
            v42 = v66.f64[1] * v43.__cosval - v43.__sinval * v66.f64[0] + 0.0;
            v66.f64[0] = v66.f64[1] * v43.__sinval + v43.__cosval * v66.f64[0] + 0.0;
          }

          v72.origin.x = CGPDFNodeGetBounds(v21).n64_f64[0];
          v73 = CGRectInset(v72, -a7, -a7);
          v44 = v73.origin.y - v42;
        }

        while (v44 > 0.0);
        if (v73.size.height + v44 < 0.0)
        {
          break;
        }

        v45 = v21->n64_u32[0];
        if (v21->n64_i32[0] > 512)
        {
          if (v45 - 513 < 2)
          {
            goto LABEL_53;
          }

          if (v45 != 516)
          {
            break;
          }

          v46 = v21[5].n64_u32[1];
          if (!v46 || CGPDFNodeGetChildIndexAtX(v21, v66.f64[0]) < v46)
          {
            break;
          }

          v47 = (v21->n64_u8[1] & 2) != 0 && v21[5].n64_u32[1] > v46 - 1 ? *(v21[7].n64_u64[0] + 8 * (v46 - 1)) : 0;
          CGPDFNodeGetBounds(v47);
          if (v42 >= v48 - a7)
          {
            break;
          }
        }

        else
        {
          if (v45 - 257 >= 2 && v45 != 1)
          {
            break;
          }

LABEL_53:
          if (v73.origin.x + v73.size.width >= v66.f64[0])
          {
            break;
          }
        }
      }
    }

LABEL_67:
    if (ClosestAreaDescendantToPoint->n64_u32[0] != 516)
    {
      return ClosestAreaDescendantToPoint;
    }

    if (a2 == 1538)
    {
      for (i = 516; i != 1538; i = ClosestAreaDescendantToPoint->n64_u32[0])
      {
        ClosestAreaDescendantToPoint = ClosestAreaDescendantToPoint[1].n64_u64[0];
        if (!ClosestAreaDescendantToPoint)
        {
          break;
        }
      }

      *a4 = CGPDFNodeIsAfterPoint(ClosestAreaDescendantToPoint, a5, a6, a7);
    }

    else
    {
      ClosestAreaDescendantToPoint = CGPDFNodeGetClosestAreaDescendantToPoint(ClosestAreaDescendantToPoint, v13, v14, a4, a5, a6, a7);
    }

    if (!ClosestAreaDescendantToPoint)
    {
      return 0;
    }

    if (ClosestAreaDescendantToPoint == FirstDescendantOfType)
    {
      return ClosestAreaDescendantToPoint;
    }

    v50 = ClosestAreaDescendantToPoint;
    do
    {
      v50 = v50[1].n64_u64[0];
    }

    while (v50 != FirstDescendantOfType && v50 != 0);
    if (v50)
    {
      return ClosestAreaDescendantToPoint;
    }

    TextRange = CGPDFNodeGetTextRange(FirstDescendantOfType);
    v55 = v54;
    v56 = CGPDFNodeGetTextRange(ClosestAreaDescendantToPoint);
    if (*a4)
    {
      v58 = 0;
    }

    else
    {
      v58 = v57;
    }

    if (v58 + v56 - TextRange <= TextRange + v55 - (v58 + v56))
    {
      FirstDescendantOfType = CGPDFNodeGetFirstDescendantOfType(FirstDescendantOfType, v13, 0);
      v59 = 1;
    }

    else
    {
      FirstDescendantOfType = CGPDFNodeGetLastDescendantOfType(FirstDescendantOfType, v13, 0);
      v59 = 0;
    }

    *a4 = v59;
  }

  return FirstDescendantOfType;
}

uint64_t CGPDFNodeGetNodeAfter(_DWORD *a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  result = 0;
  if (!a1)
  {
    return result;
  }

  v6 = a2;
  if (a1 == a2)
  {
    return result;
  }

  while (v6)
  {
    v9 = *(v6 + 8);
    if (v9 && (*(v9 + 1) & 2) != 0)
    {
      v10 = v9[11];
    }

    else
    {
      v10 = 0;
    }

    if (v6 != a1)
    {
      v13 = v6;
      do
      {
        v13 = *(v13 + 8);
      }

      while (v13 != a1 && v13 != 0);
      if (!v13)
      {
        return 0;
      }
    }

    if (v10)
    {
      v15 = 0;
      while (1)
      {
        v16 = v9 && (*(v9 + 1) & 2) != 0 && v15 < v9[11] ? *(*(v9 + 7) + 8 * v15) : 0;
        if (v16 == v6)
        {
          break;
        }

        if (v10 == ++v15)
        {
          LODWORD(v15) = v10;
          break;
        }
      }

      v12 = v15 + 1;
      goto LABEL_29;
    }

LABEL_38:
    v6 = v9;
    if (v9)
    {
      v11 = *v9;
LABEL_40:
      if (a3)
      {
        goto LABEL_43;
      }

      goto LABEL_48;
    }

    v11 = 0;
    if (a3)
    {
LABEL_43:
      if (v11 != a3 && (!v6 || !a4 || *v6 != 513 && (*v6 & 0x100) == 0))
      {
        goto LABEL_49;
      }
    }

LABEL_48:
    if (!CGPDFNodeIsUsedGraphic(v6))
    {
      return v6;
    }

LABEL_49:
    if (v6 == a1)
    {
      return 0;
    }
  }

  v11 = *a1;
  v6 = a1;
  if ((*a1 & 0x200) == 0)
  {
    goto LABEL_40;
  }

  v12 = 0;
  v10 = a1[11];
  v9 = a1;
LABEL_29:
  if (v12 >= v10)
  {
    goto LABEL_38;
  }

  v17 = v12;
  v18 = v10;
  while (1)
  {
    v19 = v9 && (*(v9 + 1) & 2) != 0 && v17 < v9[11] ? *(*(v9 + 7) + 8 * v17) : 0;
    result = CGPDFNodeGetNodeAfter(v19, 0, a3, a4);
    if (result)
    {
      return result;
    }

    if (v18 == ++v17)
    {
      goto LABEL_38;
    }
  }
}

uint64_t CGPDFNodeIsAfterPoint(uint64_t result, double a2, double a3, double a4)
{
  if (result)
  {
    v7 = result;
    *&v8 = *&CGPDFNodeTransformPoint(result, a2, a3);
    v10 = v9;
    v11 = v7;
    do
    {
      if (v11->n64_u32[0] == 516)
      {
        break;
      }

      v11 = v11[1].n64_u64[0];
    }

    while (v11);
    if (v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = v7;
    }

    v65.origin.x = CGPDFNodeGetBounds(v12).n64_f64[0];
    x = v65.origin.x;
    width = v65.size.width;
    v15 = -a4;
    v66 = CGRectInset(v65, -a4, -a4);
    if (v66.origin.y - v10 > 0.0)
    {
      return 0;
    }

    if (v66.size.height + v66.origin.y - v10 < 0.0)
    {
      return 1;
    }

    v16 = v7->n64_u32[0];
    v17 = v12->n64_u32[0];
    if (v12->n64_u32[0] == 1538 || v17 == 517)
    {
      if ((v16 & 0x200) == 0)
      {
        return 0;
      }

      v20 = v7[5].n64_u32[1];
      if (!v20)
      {
        return 0;
      }

      v21 = 0;
      v22 = v20 - 1;
      do
      {
        if ((v7->n64_u8[1] & 2) != 0 && v21 < v7[5].n64_u32[1])
        {
          v23 = *(v7[7].n64_u64[0] + 8 * v21);
        }

        else
        {
          v23 = 0;
        }

        result = CGPDFNodeIsAfterPoint(v23, a2, a3, a4);
        if (result)
        {
          break;
        }
      }

      while (v22 != v21++);
    }

    else
    {
      if (v17 != 516)
      {
        return x + width * 0.5 >= v8;
      }

      v18 = v12[5].n64_u32[1];
      if (!v18)
      {
        return 0;
      }

      v19 = v12;
      while (v19->n64_u32[0] != 516)
      {
        v19 = v19[1].n64_u64[0];
        if (!v19)
        {
          goto LABEL_36;
        }
      }

      if (v19[13].n64_u8[0] == 1)
      {
        RotatedChildIndex = CGPDFNodeGetRotatedChildIndex(v12, a2, a3);
        goto LABEL_37;
      }

LABEL_36:
      RotatedChildIndex = CGPDFNodeGetChildIndexAtX(v12, a2);
LABEL_37:
      if (v16 == 516)
      {
        if (RotatedChildIndex >= v18)
        {
          if ((v7->n64_u8[1] & 2) != 0 && v7[5].n64_u32[1] > v18 - 1)
          {
            v26 = *(v7[7].n64_u64[0] + 8 * (v18 - 1));
          }

          else
          {
            v26 = 0;
          }

          CGPDFNodeGetBounds(v26);
          v36 = a3 < v35 - a4;
          return !v36;
        }

        return 1;
      }

      if (RotatedChildIndex >= v18)
      {
        v27 = v18;
      }

      else
      {
        v27 = RotatedChildIndex;
      }

      v28 = v27 - 1;
      if (RotatedChildIndex)
      {
        v29 = v28;
      }

      else
      {
        v29 = 0;
      }

      v30 = v7;
      do
      {
        if (v30->n64_u32[0] == 515)
        {
          break;
        }

        v30 = v30[1].n64_u64[0];
      }

      while (v30);
      ChildIndex = CGPDFNodeGetChildIndex(v30);
      result = 0;
      if (v30 && ChildIndex >= v29)
      {
        if (ChildIndex > v29)
        {
          return 1;
        }

        if (v16 == 515)
        {
          CGPDFNodeGetBounds(v30);
          v34 = v33 + v32 * 0.5;
          return v34 <= a3;
        }

        if ((v30->n64_u8[1] & 2) == 0)
        {
          return 0;
        }

        v37 = v30[5].n64_u32[1];
        if (!v37)
        {
          return 0;
        }

        v38 = v12;
        while (v38->n64_u32[0] != 516)
        {
          v38 = v38[1].n64_u64[0];
          if (!v38)
          {
            goto LABEL_70;
          }
        }

        if (v38[13].n64_u8[0] == 1)
        {
          ChildIndexAtY = CGPDFNodeGetRotatedChildIndex(v30, a2, a3);
          goto LABEL_71;
        }

LABEL_70:
        ChildIndexAtY = CGPDFNodeGetChildIndexAtY(v30, a3);
LABEL_71:
        v40 = ChildIndexAtY >= v37 ? v37 : ChildIndexAtY;
        v41 = v40 - 1;
        v42 = ChildIndexAtY ? v41 : 0;
        v43 = v7;
        do
        {
          if (v43->n64_u32[0] == 1537)
          {
            break;
          }

          v43 = v43[1].n64_u64[0];
        }

        while (v43);
        v44 = CGPDFNodeGetChildIndex(v43);
        result = 0;
        if (v43)
        {
          if (v44 >= v42)
          {
            if (v44 > v42)
            {
              return 1;
            }

            v67.origin.x = CGPDFNodeGetBounds(v43).n64_f64[0];
            y = v67.origin.y;
            height = v67.size.height;
            v68 = CGRectInset(v67, v15, v15);
            if (v68.origin.y - a3 > 0.0)
            {
              return 0;
            }

            if (v68.size.height + v68.origin.y - a3 < 0.0)
            {
              return 1;
            }

            if (v16 == 1537)
            {
              v34 = y + height * 0.5;
              return v34 <= a3;
            }

            if ((v43->n64_u8[1] & 2) == 0)
            {
              return 0;
            }

            v47 = v43[5].n64_u32[1];
            if (!v47)
            {
              return 0;
            }

            while (v12->n64_u32[0] != 516)
            {
              v12 = v12[1].n64_u64[0];
              if (!v12)
              {
                goto LABEL_94;
              }
            }

            if (v12[13].n64_u8[0] == 1)
            {
              RotatedTextLineIndexAtPoint = CGPDFNodeGetRotatedTextLineIndexAtPoint(v43, a2, a3);
              goto LABEL_95;
            }

LABEL_94:
            RotatedTextLineIndexAtPoint = CGPDFNodeGetChildIndexAtY(v43, a3);
LABEL_95:
            v49 = RotatedTextLineIndexAtPoint >= v47 ? v47 : RotatedTextLineIndexAtPoint;
            v50 = v49 - 1;
            v51 = RotatedTextLineIndexAtPoint ? v50 : 0;
            v52 = v7;
            do
            {
              if (v52->n64_u32[0] == 514)
              {
                break;
              }

              v52 = v52[1].n64_u64[0];
            }

            while (v52);
            v53 = CGPDFNodeGetChildIndex(v52);
            result = 0;
            if (v52)
            {
              if (v53 >= v51)
              {
                if (v53 > v51)
                {
                  return 1;
                }

                if (v16 == 514)
                {
                  v54.n64_u64[0] = CGPDFNodeGetBounds(v52).n64_u64[0];
                  v56 = v55;
                  v57 = v52;
                  goto LABEL_109;
                }

                if ((v52->n64_u8[1] & 2) == 0)
                {
                  return 0;
                }

                result = 0;
                v58 = v52[5].n64_u32[1];
                if (v58 && v16 == 1)
                {
                  RotatedChildIndexAtX = CGPDFNodeGetRotatedChildIndexAtX(v52, a2, a3);
                  if (RotatedChildIndexAtX >= v58)
                  {
                    v60 = v58;
                  }

                  else
                  {
                    v60 = RotatedChildIndexAtX;
                  }

                  v61 = v60 - 1;
                  if (RotatedChildIndexAtX)
                  {
                    v62 = v61;
                  }

                  else
                  {
                    v62 = 0;
                  }

                  v63 = CGPDFNodeGetChildIndex(v7);
                  if (v63 >= v62)
                  {
                    if (v63 > v62)
                    {
                      return 1;
                    }

                    v54.n64_u64[0] = CGPDFNodeGetBounds(v7).n64_u64[0];
                    v56 = v64;
                    v57 = v7;
LABEL_109:
                    v36 = v54.n64_f64[0] + v56 * 0.5 < CGPDFNodeTransformPoint(v57, a2, a3).f64[0];
                    return !v36;
                  }

                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

__n64 *CGPDFNodeGetClosestAreaToPoint(__n64 *a1, uint64_t a2, uint64_t a3, BOOL *a4, BOOL *a5, double *a6, double *a7, double *a8, double a9, CGFloat a10, double a11, double *a12)
{
  *a4 = 1;
  *a5 = 0;
  *a6 = 0.0;
  *a7 = 0.0;
  *a8 = 0.0;
  *a12 = 0.0;
  if (!a1)
  {
    return 0;
  }

  v15 = a5;
  v22 = a1->n64_u32[0];
  if (a1->n64_u32[0] == 516)
  {
    v23 = 0;
    if (a2 == 513 || (a2 & 0x100) != 0)
    {
      return v23;
    }

    v137.origin.x = CGPDFNodeGetBounds(a1).n64_f64[0];
    v138 = CGRectInset(v137, -a11, -a11);
    x = v138.origin.x;
    v25 = v138.origin.y - a10;
    if (v138.origin.y - a10 > 0.0)
    {
      *a7 = -v25;
      *a4 = 0;
      return a1;
    }

    v70 = v138.size.height + v25;
    if (v70 < 0.0)
    {
      v71 = -v70;
LABEL_172:
      *a7 = v71;
      return a1;
    }

    width = v138.size.width;
    v73 = a6;
    v122 = v15;
    if ((a1->n64_u8[1] & 2) != 0)
    {
      v74 = a1[5].n64_u32[1];
    }

    else
    {
      v74 = 0;
    }

    ChildIndexAtX = CGPDFNodeGetChildIndexAtX(a1, a9);
    if (ChildIndexAtX >= v74)
    {
      v76 = v74;
    }

    else
    {
      v76 = ChildIndexAtX;
    }

    v77 = v76 - 1;
    if (!v76)
    {
      v77 = 0;
    }

    if (!v74)
    {
      v104 = x - a9;
      if (width + x - a9 >= -(x - a9))
      {
        v104 = width + x - a9;
      }

      *v73 = v104;
      return a1;
    }

    v126 = v77;
    v128 = v76;
    v78 = a8;
    v79 = 0;
    v80 = 0;
    do
    {
      v81 = v79;
      while (1)
      {
        v82 = (a1->n64_u8[1] & 2) != 0 && v81 < a1[5].n64_u32[1] ? *(a1[7].n64_u64[0] + 8 * v81) : 0;
        v147.origin.x = CGPDFNodeGetBounds(v82).n64_f64[0];
        v148 = CGRectInset(v147, -a11, -a11);
        v83 = v148.origin.x;
        v84 = v148.origin.y > a10 || a10 > v148.origin.y + v148.size.height;
        if (!v84 && v82 != 0 && (v82->n64_u8[1] & 2) != 0)
        {
          v86 = v82[5].n64_u32[1];
          if (v86)
          {
            break;
          }
        }

LABEL_127:
        if (++v81 == v74)
        {
          if ((v80 & 1) == 0)
          {
            v97 = x - a9;
            if (width + x - a9 >= -(x - a9))
            {
              v97 = width + x - a9;
            }

            *v73 = v97;
            if ((a1->n64_u8[1] & 2) != 0 && a1[5].n64_u32[1] > v126)
            {
              v98 = *(a1[7].n64_u64[0] + 8 * v126);
              if (v98)
              {
                if ((v98->n64_u8[1] & 2) != 0)
                {
                  v99 = v98[5].n64_u32[1];
                  if (v99)
                  {
                    ChildIndexAtY = CGPDFNodeGetChildIndexAtY(v98, a10);
                    if (ChildIndexAtY >= v99)
                    {
                      v101 = v99;
                    }

                    else
                    {
                      v101 = ChildIndexAtY;
                    }

                    v102 = v101 - 1;
                    if (!ChildIndexAtY)
                    {
                      v102 = 0;
                    }

                    if ((v98->n64_u8[1] & 2) != 0 && v98[5].n64_u32[1] > v102)
                    {
                      v103 = *(v98[7].n64_u64[0] + 8 * v102);
                    }

                    else
                    {
                      v103 = 0;
                    }

                    v151.origin.x = CGPDFNodeGetBounds(v103).n64_f64[0];
                    v152 = CGRectInset(v151, -a11, -a11);
                    v107 = v152.origin.x - a9;
                    v108 = v152.origin.y - a10;
                    if (v107 < 0.0)
                    {
                      v107 = v152.size.width + v107;
                      if (v107 > 0.0)
                      {
                        v107 = 0.0;
                      }
                    }

                    if (v108 < 0.0)
                    {
                      v108 = v152.size.height + v108;
                      if (v108 > 0.0)
                      {
                        v108 = 0.0;
                      }
                    }

                    *v78 = v107;
                    *a12 = -v108;
                  }
                }
              }
            }
          }

          goto LABEL_183;
        }
      }

      v87 = v148.size.width;
      v88 = 0;
      while (1)
      {
        v89 = (v82->n64_u8[1] & 2) != 0 && v88 < v82[5].n64_u32[1] ? *(v82[7].n64_u64[0] + 8 * v88) : 0;
        v149.origin.x = CGPDFNodeGetBounds(v89).n64_f64[0];
        v150 = CGRectInset(v149, -a11, -a11);
        v90 = v150.origin.y + v150.size.height;
        if (v150.origin.y <= a10 && a10 <= v90)
        {
          break;
        }

        if (v86 == ++v88)
        {
          goto LABEL_127;
        }
      }

      v92 = v83 - a9;
      if (v83 - a9 < 0.0)
      {
        v92 = v87 + v92;
        if (v92 > 0.0)
        {
          v92 = 0.0;
        }
      }

      v93 = v150.origin.x - a9;
      if (v93 < 0.0)
      {
        v93 = v150.size.width + v93;
        if (v93 > 0.0)
        {
          v93 = 0.0;
        }
      }

      if ((v80 & 1) == 0 || (v94 = fabs(v92), v95 = fabs(*v73), v94 < v95) || v94 == v95 && fabs(v93) < fabs(*a8))
      {
        *v73 = v92;
        *a8 = v93;
      }

      v79 = v81 + 1;
      v80 = 1;
    }

    while (v92 < 0.0 && v79 != v74);
LABEL_183:
    v109 = 1;
    *v122 = 1;
    if (v128 <= 1)
    {
      if ((a1->n64_u8[1] & 2) != 0 && a1[5].n64_u32[1])
      {
        v110 = *a1[7].n64_u64[0];
      }

      else
      {
        v110 = 0;
      }

      CGPDFNodeGetBounds(v110);
      if (a10 > v111 + v112 + a11)
      {
LABEL_197:
        *v122 = 0;
        return a1;
      }

      v109 = *v122;
    }

    if ((v109 & 1) == 0 || v126 + 1 != v74)
    {
      return a1;
    }

    v113 = (a1->n64_u8[1] & 2) != 0 && a1[5].n64_u32[1] > v126 ? *(a1[7].n64_u64[0] + 8 * v126) : 0;
    CGPDFNodeGetBounds(v113);
    if (a10 >= v114 - a11)
    {
      return a1;
    }

    goto LABEL_197;
  }

  v27 = v22 != 513 && (a1->n64_u32[0] & 0x100) == 0;
  if (!v27)
  {
    v28 = v22 != a2 && a3 == 0;
    if (!v28 && (CGPDFNodeIsUsedGraphic(a1) & 1) == 0)
    {
      v139.origin.x = CGPDFNodeGetBounds(a1).n64_f64[0];
      v29 = v139.origin.x;
      v30 = v139.size.width;
      v140 = CGRectInset(v139, -a11, -a11);
      v31 = v140.origin.x - a9;
      v32 = v140.origin.y - a10;
      if (v31 < 0.0)
      {
        v31 = v140.size.width + v31;
        if (v31 > 0.0)
        {
          v31 = 0.0;
        }
      }

      if (v32 >= 0.0 || (v32 = v140.size.height + v32, v33 = 0.0, v32 <= 0.0))
      {
        if (v32 < 0.0)
        {
          v34 = 1;
LABEL_169:
          *a4 = v34;
          v105 = v31 == 0.0;
          if (v32 != 0.0)
          {
            v105 = 0;
          }

          *v15 = v105;
          *a6 = v31;
          v71 = -v32;
          goto LABEL_172;
        }

        if (v32 != 0.0)
        {
          v34 = 0;
          goto LABEL_169;
        }

        v33 = v32;
      }

      v34 = a9 <= v29 + v30 * 0.5;
      v32 = v33;
      goto LABEL_169;
    }

    return 0;
  }

  if (v22 != 1538 && v22 != 517)
  {
    return 0;
  }

  if ((v22 & 0x400) != 0 && (v35 = a1[13].n64_u64[0]) != 0 && *v35 == 3)
  {
    v141.origin.x = CGPDFNodeGetBounds(a1).n64_f64[0];
    v135.x = a9;
    v135.y = a10;
    v125 = CGRectContainsPoint(v141, v135);
    v22 = a1->n64_u32[0];
  }

  else
  {
    v125 = 0;
  }

  if ((v22 & 0x200) == 0)
  {
    return 0;
  }

  v127 = a1[5].n64_u32[1];
  if (!v127)
  {
    return 0;
  }

  v123 = a8;
  v124 = a6;
  v36 = 0;
  v37 = 0;
  v23 = 0;
  v121 = v15;
  do
  {
    v38 = v23;
    if ((a1->n64_u8[1] & 2) != 0 && v36 < a1[5].n64_u32[1])
    {
      v39 = *(a1[7].n64_u64[0] + 8 * v36);
    }

    else
    {
      v39 = 0;
    }

    *v134 = 0;
    v133 = 0.0;
    v131 = 0.0;
    v132 = 0.0;
    v130 = 0.0;
    if (((!v125 | v37) & 1) == 0)
    {
      v142.origin.x = CGPDFNodeGetBounds(v39).n64_f64[0];
      v136.x = a9;
      v136.y = a10;
      v37 = 0;
      if (!CGRectContainsPoint(v142, v136))
      {
        goto LABEL_85;
      }
    }

    if (!v39)
    {
      goto LABEL_85;
    }

    ClosestAreaToPoint = CGPDFNodeGetClosestAreaToPoint(v39, a2, a3, &v134[1], v134, &v133, &v132, &v131, a9, a10, a11, &v130);
    v37 = !ClosestAreaToPoint && v125;
    if (!ClosestAreaToPoint)
    {
      goto LABEL_85;
    }

    v23 = ClosestAreaToPoint;
    v41 = v132;
    if (!v38)
    {
      goto LABEL_46;
    }

    v42 = fabs(v132);
    v43 = fabs(*a7);
    if (v42 < v43)
    {
      goto LABEL_46;
    }

    if (v42 != v43)
    {
      goto LABEL_84;
    }

    v120 = v38->n64_u32[0];
    v45 = ClosestAreaToPoint->n64_u32[0];
    v37 = ClosestAreaToPoint->n64_u32[0] == 516;
    v116.n64_u64[0] = CGPDFNodeGetBounds(v38).n64_u64[0];
    v117 = v46;
    v118 = v47;
    v119 = v48;
    v49.n64_u64[0] = CGPDFNodeGetBounds(v23).n64_u64[0];
    v51 = v50;
    v53 = v52;
    rect = v54;
    Rotation = CGPDFNodeGetRotation(v38);
    v56 = CGPDFNodeGetRotation(v23);
    if (v120 != 516)
    {
      v57 = 1;
      if (v134[0] == 1)
      {
        v27 = v45 == 516;
        v15 = v121;
        if (v27)
        {
          v58 = __sincos_stret(v56 - Rotation);
          v129.a = v58.__cosval;
          v129.b = v58.__sinval;
          v129.c = -v58.__sinval;
          v129.d = v58.__cosval;
          v129.tx = 0.0;
          v129.ty = 0.0;
          v143.origin.x = v49.n64_f64[0];
          v143.origin.y = v51;
          v143.size.width = v53;
          v143.size.height = rect;
          v153 = CGRectApplyAffineTransform(v143, &v129);
          v144.origin.x = v116.n64_f64[0];
          v144.origin.y = v117;
          v144.size.width = v118;
          v144.size.height = v119;
          if (CGRectContainsRect(v144, v153))
          {
            goto LABEL_46;
          }

          v37 = 1;
          v57 = 1;
        }

LABEL_58:
        if (v130 == 0.0)
        {
          v61 = *v124;
        }

        else
        {
          v61 = *v124;
          if (*a12 != 0.0 && fabs(v131) < fabs(v61) && fabs(*v123) < fabs(v133))
          {
            v62 = fabs(v130);
            v63 = fabs(*a12);
            if (v62 < v63)
            {
              goto LABEL_46;
            }

            if (v62 != v63)
            {
LABEL_84:
              v37 = 0;
              goto LABEL_85;
            }
          }
        }

        v64 = fabs(v133);
        v65 = fabs(v61);
        if (v64 < v65)
        {
          goto LABEL_46;
        }

        if (v64 == v65)
        {
          v66 = fabs(v131);
          v67 = fabs(*v123);
          if (v66 < v67)
          {
            goto LABEL_46;
          }

          if (v66 == v67)
          {
            if ((v37 | v57 ^ 1))
            {
              if ((v37 | v57) == 1)
              {
                goto LABEL_46;
              }
            }

            else
            {
              v68 = v23;
              while ((v68->n64_u8[1] & 3) == 0)
              {
                v68 = v68[1].n64_u64[0];
                if (!v68)
                {
                  goto LABEL_78;
                }
              }

              v68 = v68[12].n64_u64[0];
LABEL_78:
              v69 = v38;
              while ((v69->n64_u8[1] & 3) == 0)
              {
                v69 = v69[1].n64_u64[0];
                if (!v69)
                {
                  goto LABEL_83;
                }
              }

              v69 = v69[12].n64_u64[0];
LABEL_83:
              if (v68 >= v69)
              {
LABEL_46:
                v37 = 0;
                *a4 = v134[1];
                *v15 = v134[0];
                *v124 = v133;
                *a7 = v41;
                v44 = v130;
                *v123 = v131;
                *a12 = v44;
                goto LABEL_86;
              }
            }
          }
        }

        goto LABEL_84;
      }

LABEL_56:
      v15 = v121;
      goto LABEL_58;
    }

    if (v45 == 516)
    {
      v37 = 0;
      v57 = 1;
      goto LABEL_56;
    }

    v59 = __sincos_stret(Rotation - v56);
    v129.a = v59.__cosval;
    v129.b = v59.__sinval;
    v129.c = -v59.__sinval;
    v129.d = v59.__cosval;
    v129.tx = 0.0;
    v129.ty = 0.0;
    v145.origin.x = v116.n64_f64[0];
    v145.origin.y = v117;
    v145.size.width = v118;
    v145.size.height = v119;
    v154 = CGRectApplyAffineTransform(v145, &v129);
    v146.origin.x = v49.n64_f64[0];
    v146.origin.y = v51;
    v146.size.width = v53;
    v146.size.height = rect;
    v60 = CGRectContainsRect(v146, v154);
    v37 = 0;
    v57 = 0;
    v15 = v121;
    if (!v60)
    {
      goto LABEL_58;
    }

LABEL_85:
    v23 = v38;
LABEL_86:
    ++v36;
  }

  while (v36 != v127);
  if (v23 != 0 && v125)
  {
    *v15 = 1;
    *v124 = 0.0;
    *a7 = 0.0;
    *v123 = 0.0;
    *a12 = 0.0;
  }

  return v23;
}

_DWORD *CGPDFNodeGetNodeBefore(_DWORD *result, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    v6 = a2;
    v7 = result;
    if (a2)
    {
      if (a2 != result)
      {
        v8 = a2;
        do
        {
          v8 = *(v8 + 1);
        }

        while (v8 != result && v8 != 0);
        if (!v8)
        {
          return 0;
        }
      }

LABEL_18:
      v11 = *v6;
      if ((*v6 & 0x200) != 0)
      {
        v12 = v6[11];
      }

      else
      {
        v12 = 0;
      }

      for (i = v12 - 1; i != -1; --i)
      {
        if ((v11 & 0x200) != 0 && i < v6[11])
        {
          v14 = *(*(v6 + 7) + 8 * i);
        }

        else
        {
          v14 = 0;
        }

        result = CGPDFNodeGetNodeBefore(v14, 0, a3, a4);
        if (result)
        {
          return result;
        }
      }

      if (v6 != v7)
      {
        while (1)
        {
          v15 = v6;
          v6 = *(v6 + 1);
          if (!v6)
          {
            break;
          }

          if ((*(v6 + 1) & 2) != 0)
          {
            v16 = v6[11];
            if (v16 >= 2)
            {
              v17 = 0;
              while (*(*(v6 + 7) + 8 * v17) != v15)
              {
                if (v16 == ++v17)
                {
                  v18 = v6[11];
                  goto LABEL_38;
                }
              }

              v18 = v17;
LABEL_38:
              for (j = v18 - 1; j != -1; --j)
              {
                if (j >= v16)
                {
                  v20 = 0;
                }

                else
                {
                  v20 = *(*(v6 + 7) + 8 * j);
                }

                result = CGPDFNodeGetNodeBefore(v20, 0, a3, a4);
                if (result)
                {
                  return result;
                }
              }
            }
          }

          result = 0;
          if (v6 == v7)
          {
            return result;
          }
        }
      }

      return 0;
    }

    if (a3)
    {
      v10 = *result;
      if (*result != a3)
      {
        v6 = result;
        if (!a4)
        {
          goto LABEL_18;
        }

        if (v10 != 513)
        {
          v6 = result;
          if ((v10 & 0x100) == 0)
          {
            goto LABEL_18;
          }
        }
      }
    }

    v6 = result;
    if (CGPDFNodeIsUsedGraphic(result))
    {
      goto LABEL_18;
    }

    return v7;
  }

  return result;
}

uint64_t CGPDFNodeIsStrictlyAfterPoint(__n64 *a1, double a2, float64_t a3, double a4)
{
  Rotation = CGPDFNodeGetRotation(a1);
  v7.f64[0] = a2;
  v7.f64[1] = a3;
  v18 = v7;
  if (Rotation != 0.0)
  {
    v9 = __sincos_stret(Rotation);
    v8.f64[0] = v9.__cosval;
    v8.f64[1] = -v9.__sinval;
    v18 = vaddq_f64(vmlaq_n_f64(vmulq_laneq_f64(v9, v18, 1), v8, a2), 0);
  }

  v19.origin.x = CGPDFNodeGetBounds(a1).n64_f64[0];
  v20 = CGRectInset(v19, -a4, -a4);
  v10 = v20.origin.y - v18.f64[1];
  if (v10 > 0.0)
  {
    return 0;
  }

  if (v20.size.height + v10 < 0.0)
  {
    return 1;
  }

  if (!a1)
  {
    return 0;
  }

  result = 0;
  v12 = a1->n64_u32[0];
  if (a1->n64_i32[0] <= 512)
  {
    if (v12 - 257 >= 2 && v12 != 1)
    {
      return result;
    }

    return v20.origin.x > v18.f64[0];
  }

  if (v12 - 513 < 2)
  {
    return v20.origin.x > v18.f64[0];
  }

  if (v12 != 516)
  {
    return result;
  }

  if (!a1[5].n64_u32[1] || CGPDFNodeGetChildIndexAtX(a1, v18.f64[0]) > 1)
  {
    return 0;
  }

  if ((a1->n64_u8[1] & 2) != 0 && a1[5].n64_u32[1])
  {
    v13 = *a1[7].n64_u64[0];
  }

  else
  {
    v13 = 0;
  }

  CGPDFNodeGetBounds(v13);
  return v18.f64[1] > v14 + v15 + a4;
}

uint64_t CGPDFNodeGetClosestAreaDescendantToPoint(__n64 *a1, uint64_t a2, int a3, _BYTE *a4, double a5, double a6, double a7)
{
  v7 = a1;
  *a4 = 1;
  if (!a1)
  {
    return v7;
  }

  v13 = a1->n64_u32[0];
  if (a1->n64_u32[0] - 257 < 2)
  {
LABEL_5:
    if (v13 == a2 || a3 != 0)
    {
      *a4 = CGPDFNodeIsAfterPoint(a1, a5, a6, a7);
      return v7;
    }

    return 0;
  }

  if (v13 != 516)
  {
    if (v13 != 513)
    {
      return 0;
    }

    goto LABEL_5;
  }

  if ((a2 - 514) >= 3 && a2 != 1537 && a2 != 1)
  {
    return 0;
  }

  v48.origin.x = CGPDFNodeGetBounds(a1).n64_f64[0];
  v15 = -a7;
  v49 = CGRectInset(v48, -a7, -a7);
  if (v49.origin.y - a6 > 0.0)
  {
    v16 = v7;
LABEL_15:
    result = CGPDFNodeGetLastDescendantOfType(v16, a2, 0);
    *a4 = 0;
    return result;
  }

  if (v49.size.height + v49.origin.y - a6 >= 0.0)
  {
    if ((v7->n64_u8[1] & 2) == 0)
    {
      goto LABEL_107;
    }

    v19 = v7[5].n64_u32[1];
    if (!v19)
    {
      goto LABEL_107;
    }

    v20 = v7;
    while (v20->n64_u32[0] != 516)
    {
      v20 = v20[1].n64_u64[0];
      if (!v20)
      {
        goto LABEL_31;
      }
    }

    if (v20[13].n64_u8[0] == 1)
    {
      RotatedChildIndex = CGPDFNodeGetRotatedChildIndex(v7, a5, a6);
      goto LABEL_32;
    }

LABEL_31:
    RotatedChildIndex = CGPDFNodeGetChildIndexAtX(v7, a5);
LABEL_32:
    if (a2 == 516)
    {
      if (RotatedChildIndex < v19)
      {
        return v7;
      }

      v22 = (v7->n64_u8[1] & 2) != 0 && v7[5].n64_u32[1] > v19 - 1 ? *(v7[7].n64_u64[0] + 8 * (v19 - 1)) : 0;
      CGPDFNodeGetBounds(v22);
      if (a6 >= v29 - a7)
      {
        return v7;
      }

      goto LABEL_108;
    }

    if (RotatedChildIndex >= v19)
    {
      v23 = v19;
    }

    else
    {
      v23 = RotatedChildIndex;
    }

    v24 = v23 - 1;
    if (!RotatedChildIndex)
    {
      v24 = 0;
    }

    if ((v7->n64_u8[1] & 2) == 0)
    {
      goto LABEL_107;
    }

    if (v7[5].n64_u32[1] <= v24)
    {
      goto LABEL_107;
    }

    v25 = *(v7[7].n64_u64[0] + 8 * v24);
    if (!v25 || v25->n64_u32[0] != 515)
    {
      goto LABEL_107;
    }

    if (a2 == 515)
    {
      CGPDFNodeGetBounds(v25);
      v28 = v27 + v26 * 0.5;
LABEL_48:
      if (v28 > a6)
      {
        *a4 = 0;
      }

      return v25;
    }

    v30 = v25[5].n64_u32[1];
    if (!v30)
    {
      goto LABEL_107;
    }

    v31 = v7;
    while (v31->n64_u32[0] != 516)
    {
      v31 = v31[1].n64_u64[0];
      if (!v31)
      {
        goto LABEL_61;
      }
    }

    if (v31[13].n64_u8[0] == 1)
    {
      ChildIndexAtY = CGPDFNodeGetRotatedChildIndex(v25, a5, a6);
      goto LABEL_62;
    }

LABEL_61:
    ChildIndexAtY = CGPDFNodeGetChildIndexAtY(v25, a6);
LABEL_62:
    if (ChildIndexAtY >= v30)
    {
      v33 = v30;
    }

    else
    {
      v33 = ChildIndexAtY;
    }

    v34 = v33 - 1;
    if (!ChildIndexAtY)
    {
      v34 = 0;
    }

    if ((v25->n64_u8[1] & 2) == 0)
    {
      goto LABEL_107;
    }

    if (v25[5].n64_u32[1] <= v34)
    {
      goto LABEL_107;
    }

    v25 = *(v25[7].n64_u64[0] + 8 * v34);
    if (!v25 || v25->n64_u32[0] != 1537)
    {
      goto LABEL_107;
    }

    v50.origin.x = CGPDFNodeGetBounds(v25).n64_f64[0];
    y = v50.origin.y;
    height = v50.size.height;
    v51 = CGRectInset(v50, v15, v15);
    if (v51.origin.y - a6 > 0.0)
    {
      v16 = v25;
      goto LABEL_15;
    }

    if (v51.size.height + v51.origin.y - a6 < 0.0)
    {
      v18 = v25;
      goto LABEL_20;
    }

    if (a2 == 1537)
    {
      v28 = y + height * 0.5;
      goto LABEL_48;
    }

    if ((v25->n64_u8[1] & 2) == 0)
    {
      goto LABEL_107;
    }

    v37 = v25[5].n64_u32[1];
    if (!v37)
    {
      goto LABEL_107;
    }

    while (v7->n64_u32[0] != 516)
    {
      v7 = v7[1].n64_u64[0];
      if (!v7)
      {
        goto LABEL_84;
      }
    }

    if (v7[13].n64_u8[0] == 1)
    {
      RotatedTextLineIndexAtPoint = CGPDFNodeGetRotatedTextLineIndexAtPoint(v25, a5, a6);
      goto LABEL_85;
    }

LABEL_84:
    RotatedTextLineIndexAtPoint = CGPDFNodeGetChildIndexAtY(v25, a6);
LABEL_85:
    if (RotatedTextLineIndexAtPoint >= v37)
    {
      v39 = v37;
    }

    else
    {
      v39 = RotatedTextLineIndexAtPoint;
    }

    v40 = v39 - 1;
    if (!RotatedTextLineIndexAtPoint)
    {
      v40 = 0;
    }

    if ((v25->n64_u8[1] & 2) == 0)
    {
      goto LABEL_107;
    }

    if (v25[5].n64_u32[1] <= v40)
    {
      goto LABEL_107;
    }

    v7 = *(v25[7].n64_u64[0] + 8 * v40);
    if (!v7 || v7->n64_u32[0] != 514)
    {
      goto LABEL_107;
    }

    if (a2 == 514)
    {
      goto LABEL_95;
    }

    v43 = v7[5].n64_u32[1];
    if (!v43)
    {
      goto LABEL_107;
    }

    RotatedChildIndexAtX = CGPDFNodeGetRotatedChildIndexAtX(v7, a5, a6);
    if (RotatedChildIndexAtX >= v43)
    {
      v45 = v43;
    }

    else
    {
      v45 = RotatedChildIndexAtX;
    }

    v46 = v45 - 1;
    if (!RotatedChildIndexAtX)
    {
      v46 = 0;
    }

    if ((v7->n64_u8[1] & 2) != 0 && v7[5].n64_u32[1] > v46 && (v7 = *(v7[7].n64_u64[0] + 8 * v46)) != 0 && v7->n64_u32[0] == 1)
    {
LABEL_95:
      v41 = CGPDFNodeGetBounds(v7).n64_f64[0];
      if (v41 + v42 * 0.5 >= CGPDFNodeTransformPoint(v7, a5, a6).f64[0])
      {
        return v7;
      }
    }

    else
    {
LABEL_107:
      v7 = 0;
    }

LABEL_108:
    *a4 = 0;
    return v7;
  }

  v18 = v7;
LABEL_20:

  return CGPDFNodeGetFirstDescendantOfType(v18, a2, 0);
}

unint64_t CGPDFNodeGetRotatedChildIndex(uint64_t a1, double a2, double a3)
{
  if (!a1)
  {
    return 0;
  }

  if ((*(a1 + 1) & 2) != 0)
  {
    v6 = *(a1 + 44);
  }

  else
  {
    v6 = 0;
  }

  v8 = 0;
  v7 = 0;
  v9 = INFINITY;
  while (v6 != v8)
  {
    if ((*(a1 + 1) & 2) != 0 && v8 < *(a1 + 44))
    {
      v10 = *(*(a1 + 56) + 8 * v8);
    }

    else
    {
      v10 = 0;
    }

    v11.n64_u64[0] = CGPDFNodeGetBounds(v10).n64_u64[0];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = CGPDFNodeTransformPoint(v10, a2, a3).f64[0];
    v20 = v18;
    ++v8;
    if ((v18 - (v13 + v17 * 0.5)) * (v18 - (v13 + v17 * 0.5)) + (v19 - (v11.n64_f64[0] + v15 * 0.5)) * (v19 - (v11.n64_f64[0] + v15 * 0.5)) >= v9)
    {
      v7 = v7;
    }

    else
    {
      v9 = (v18 - (v13 + v17 * 0.5)) * (v18 - (v13 + v17 * 0.5)) + (v19 - (v11.n64_f64[0] + v15 * 0.5)) * (v19 - (v11.n64_f64[0] + v15 * 0.5));
      v7 = v8;
    }

    v22.origin.x = v11.n64_f64[0];
    v22.origin.y = v13;
    v22.size.width = v15;
    v22.size.height = v17;
    if (CGRectContainsPoint(v22, *&v19))
    {
      return v8;
    }
  }

  return v7;
}

unint64_t CGPDFNodeGetChildIndexAtY(__n64 *a1, double a2)
{
  if (!a1)
  {
    return 0;
  }

  CGPDFNodeGetBounds(a1);
  v5 = v4;
  v7 = v4 + v6;
  if ((a1->n64_u8[1] & 2) == 0)
  {
    v8 = 0;
LABEL_17:
    if ((v5 + v7) * 0.5 <= a2)
    {
      return v8;
    }

    else
    {
      return (v8 + 1);
    }
  }

  v8 = a1[5].n64_u32[1];
  if (!v8)
  {
    goto LABEL_17;
  }

  v9 = 0;
  while (1)
  {
    v10 = (a1->n64_u8[1] & 2) != 0 && v9 < a1[5].n64_u32[1] ? *(a1[7].n64_u64[0] + 8 * v9) : 0;
    CGPDFNodeGetBounds(v10);
    if (v7 < v11)
    {
      v7 = v11;
    }

    if ((v11 + v12 + v7) * 0.5 < a2)
    {
      break;
    }

    ++v9;
    v7 = v11;
    if (v8 == v9)
    {
      v7 = v11;
      goto LABEL_17;
    }
  }

  if (v9 == v8)
  {
    goto LABEL_17;
  }

  return v9;
}

__n64 *CGPDFNodeGetRotatedTextLineIndexAtPoint(__n64 *result, double a2, double a3)
{
  if (result)
  {
    v5 = result;
    CGPDFNodeGetBounds(result);
    if ((v5->n64_u8[1] & 2) != 0)
    {
      v6 = v5[5].n64_u32[1];
    }

    else
    {
      v6 = 0;
    }

    v7 = 0;
    v8 = v6;
    v9 = -1;
    while (v8 != v7)
    {
      if ((v5->n64_u8[1] & 2) != 0 && v7 < v5[5].n64_u32[1])
      {
        v10 = *(v5[7].n64_u64[0] + 8 * v7);
      }

      else
      {
        v10 = 0;
      }

      v11.n64_u64[0] = CGPDFNodeGetBounds(v10).n64_u64[0];
      v13 = v12;
      v15 = v14;
      v17 = v16;
      *&v18 = *&CGPDFNodeTransformPoint(v10, a2, a3);
      v20 = v18;
      v21 = v19;
      if (v9 < 0 && v19 > v13)
      {
        if (v18 >= v11.n64_f64[0])
        {
          if (v18 > v11.n64_f64[0])
          {
            v9 = v7 + 1;
          }
        }

        else
        {
          v9 = v7;
        }
      }

      v22.origin.x = v11.n64_f64[0];
      v22.origin.y = v13;
      v22.size.width = v15;
      v22.size.height = v17;
      ++v7;
      if (CGRectContainsPoint(v22, *&v20))
      {
        v9 = v7;
        break;
      }
    }

    if (v9 < 0)
    {
      return (v8 + 1);
    }

    else
    {
      return v9;
    }
  }

  return result;
}

float64x2_t CGPDFNodeTransformPoint(uint64_t a1, double a2, double a3)
{
  Rotation = CGPDFNodeGetRotation(a1);
  if (Rotation == 0.0)
  {
    result.f64[0] = a2;
    result.f64[1] = a3;
  }

  else
  {
    v6 = __sincos_stret(Rotation);
    v5.f64[0] = v6.__cosval;
    v5.f64[1] = -v6.__sinval;
    return vaddq_f64(vmlaq_n_f64(vmulq_n_f64(v6, a3), v5, a2), 0);
  }

  return result;
}

unint64_t CGPDFNodeGetRotatedChildIndexAtX(__n64 *a1, double a2, double a3)
{
  if (!a1)
  {
    return 0;
  }

  v6.n64_u64[0] = CGPDFNodeGetBounds(a1).n64_u64[0];
  v7 = v6.n64_f64[0];
  v9 = v8;
  if ((a1->n64_u8[1] & 2) == 0)
  {
    v10 = 0;
    goto LABEL_16;
  }

  v10 = a1[5].n64_u32[1];
  if (!v10)
  {
LABEL_16:
    v18 = v6.n64_f64[0];
LABEL_17:
    *&v19 = *&CGPDFNodeTransformPoint(a1, a2, a3);
    v12 = v18;
LABEL_18:
    if (v19 <= (v9 + v7 + v12) * 0.5)
    {
      return v10;
    }

    else
    {
      return (v10 + 1);
    }
  }

  v11 = 0;
  v12 = v6.n64_f64[0];
  while (1)
  {
    v13 = (a1->n64_u8[1] & 2) != 0 && v11 < a1[5].n64_u32[1] ? *(a1[7].n64_u64[0] + 8 * v11) : 0;
    v14.n64_u64[0] = CGPDFNodeGetBounds(v13).n64_u64[0];
    v16 = v15;
    *&v17 = *&CGPDFNodeTransformPoint(v13, a2, a3);
    v18 = v14.n64_f64[0] + v16;
    if (v12 > v18)
    {
      v12 = v18;
    }

    if (v17 < (v14.n64_f64[0] + v12) * 0.5)
    {
      break;
    }

    ++v11;
    v12 = v18;
    if (v10 == v11)
    {
      goto LABEL_17;
    }
  }

  *&v19 = *&CGPDFNodeTransformPoint(a1, a2, a3);
  if (v11 == v10)
  {
    goto LABEL_18;
  }

  return v11;
}

uint64_t CGPDFNodeCompareReadingOrder(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  TextRange = CGPDFNodeGetTextRange(a1);
  v6 = v5;
  v7 = CGPDFNodeGetTextRange(a2);
  if (TextRange + v6 < v7 + v8)
  {
    return -1;
  }

  if (TextRange + v6 > v7 + v8)
  {
    return 1;
  }

  if (v3 == a2)
  {
    return 0;
  }

  if (!v3)
  {
    return 1;
  }

  do
  {
    v3 = *(v3 + 8);
  }

  while (v3 != a2 && v3 != 0);
  if (v3)
  {
    return -1;
  }

  else
  {
    return 1;
  }
}

uint64_t CGPDFNodeGetTextRangeIncludingWhitespace(uint64_t a1)
{
  TextRange = CGPDFNodeGetTextRange(a1);
  v3 = TextRange;
  if (a1 && *a1 == 1)
  {
    v4 = *(a1 + 8);
    if (v4 && (*(v4 + 1) & 2) != 0 && (v5 = *(v4 + 44)) != 0)
    {
      v6 = *(a1 + 8);
      while (*v6 != 1537)
      {
        v6 = *(v6 + 8);
        if (!v6)
        {
          return TextRange - (**(v4 + 56) != a1);
        }
      }

      if (*(v6 + 112) == 0.0)
      {
        return TextRange - (**(v4 + 56) != a1);
      }

      ChildIndex = CGPDFNodeGetChildIndex(a1);
      v9 = ChildIndex;
      if (ChildIndex)
      {
        if (v5 <= ChildIndex - 1)
        {
          v10 = 0;
        }

        else
        {
          v10 = *(*(v4 + 56) + 8 * (ChildIndex - 1));
        }

        v11 = CGPDFNodeGetTextRange(v10);
        v3 = v11 + v12;
      }

      else
      {
        v3 = CGPDFNodeGetTextRange(v4);
      }

      v13 = v9 + 1;
      if (v9 + 1 < v5)
      {
        if ((*(v4 + 1) & 2) != 0 && *(v4 + 44) > v13)
        {
          v14 = *(*(v4 + 56) + 8 * v13);
        }

        else
        {
          v14 = 0;
        }

        CGPDFNodeGetTextRange(v14);
      }
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

uint64_t CGPDFNodeGetTextIndexAfterPoint(_DWORD *a1, CGFloat a2, CGFloat a3, double a4)
{
  if (!a1)
  {
    return -1;
  }

  TextRangeIncludingWhitespace = CGPDFNodeGetTextRangeIncludingWhitespace(a1);
  if (*a1 == 1)
  {
    v12 = 0;
    TextIndexAtPoint = CGPDFNodeGetTextIndexAtPoint(a1, &v12 + 1, &v12, a2, a3, a4);
    if (TextIndexAtPoint + (HIBYTE(v12) ^ 1) >= TextRangeIncludingWhitespace)
    {
      v10 = TextRangeIncludingWhitespace;
    }

    else
    {
      v10 = TextIndexAtPoint + (HIBYTE(v12) ^ 1);
    }

    if (v12)
    {
      return TextIndexAtPoint + (HIBYTE(v12) ^ 1);
    }

    else
    {
      return v10;
    }
  }

  return TextRangeIncludingWhitespace;
}

uint64_t CGPDFNodeGetTextIndexAtPoint(uint64_t a1, BOOL *a2, BOOL *a3, CGFloat a4, CGFloat a5, double a6)
{
  *a2 = 0;
  *a3 = 0;
  if (!a1)
  {
    return -1;
  }

  if (*a1 == 1)
  {
    v12 = *(a1 + 8);
    if (v12 && (v12->n64_u8[1] & 2) != 0 && v12[5].n64_u32[1])
    {
      Rotation = CGPDFNodeGetRotation(a1);
      if (Rotation == 0.0)
      {
        CGPDFNodeGetHitTestRect(v12, a6);
        y = v29;
        height = v30;
        v15 = a4;
      }

      else
      {
        v14 = __sincos_stret(Rotation);
        v15 = a5 * v14.__sinval + v14.__cosval * a4 + 0.0;
        a5 = a5 * v14.__cosval - v14.__sinval * a4 + 0.0;
        v55.origin.x = CGPDFNodeGetBounds(v12).n64_f64[0];
        v56 = CGRectInset(v55, a6, a6);
        y = v56.origin.y;
        height = v56.size.height;
      }

      TextRangeIncludingWhitespace = CGPDFNodeGetTextRangeIncludingWhitespace(a1);
      v33 = v32;
      v34 = TextRangeIncludingWhitespace + v32;
      v35 = v12;
      do
      {
        if (*v35 == 515)
        {
          break;
        }

        v35 = *(v35 + 8);
      }

      while (v35);
      TextRange = CGPDFNodeGetTextRange(v35);
      if (a5 > y + height)
      {
        *a2 = 1;
        return TextRangeIncludingWhitespace - (TextRangeIncludingWhitespace > TextRange);
      }

      if (a5 < y)
      {
        return v34 - (v34 >= TextRange + v37);
      }

      while (v12->n64_u32[0] != 517)
      {
        v12 = v12[1].n64_u64[0];
        if (!v12)
        {
          v38 = 0;
          goto LABEL_34;
        }
      }

      v38 = v12[13].n64_u64[0];
LABEL_34:
      v39 = v33 - 1;
      if (v33 < 1)
      {
        return TextRangeIncludingWhitespace;
      }

      v27 = v34 - 1;
      if (v34 <= TextRangeIncludingWhitespace + 1)
      {
        v40 = TextRangeIncludingWhitespace + 1;
      }

      else
      {
        v40 = v34;
      }

      v41 = 24 * TextRangeIncludingWhitespace;
      v42 = TextRangeIncludingWhitespace;
      while (1)
      {
        p_size = &CGRectNull.size;
        if (!v38)
        {
          goto LABEL_53;
        }

        v44 = &CGRectNull;
        if (v42 < 0)
        {
          goto LABEL_49;
        }

        p_size = &CGRectNull.size;
        if (*(v38 + 48) > v42 && (v45 = *(v38 + 24)) != 0)
        {
          v46 = *(v45 + v41);
          v47 = &v46[1];
          v48 = v46 == 0;
          if (v46)
          {
            p_size = v46 + 2;
          }

          else
          {
            p_size = &CGRectNull.size;
          }

          if (v48)
          {
            v44 = &CGRectNull;
          }

          else
          {
            v44 = v47;
          }
        }

        else
        {
LABEL_53:
          v44 = &CGRectNull;
        }

LABEL_49:
        x = v44->origin.x;
        if (v15 <= v44->origin.x + p_size->width * 0.5)
        {
          if (v42 <= TextRangeIncludingWhitespace)
          {
            *a2 = 1;
            v50 = v15 >= x - a6;
          }

          else if (v15 >= x)
          {
            v50 = 1;
            *a2 = 1;
          }

          else
          {
            --v42;
            v50 = 1;
          }

          *a3 = v50;
          return v42;
        }

        if (!v39)
        {
          v51 = x + p_size->width + a6;
          *a3 = v15 <= v51;
          if (v15 > v51)
          {
            HitTestRect = CGPDFNodeGetHitTestRect(a1, a6);
            *a3 = v15 <= HitTestRect + v53;
          }

          return v27;
        }

        ++v42;
        v41 += 24;
        --v39;
        if (v42 >= v34)
        {
          return v40;
        }
      }
    }

    return -1;
  }

  if (*a1 != 513 && (*a1 & 0x100) == 0)
  {
    return -1;
  }

  v57.origin.x = CGPDFNodeGetHitTestRect(a1, a6);
  v19 = v57.origin.x;
  v20 = v57.origin.y;
  width = v57.size.width;
  v22 = v57.size.height;
  v54.x = a4;
  v54.y = a5;
  *a3 = CGRectContainsPoint(v57, v54);
  if (a5 >= v20)
  {
    v23 = a5 > v20 + v22;
    if (a4 <= v19 + width * 0.5)
    {
      v23 = 1;
    }

    *a2 = v23;
  }

  v24 = CGPDFNodeGetTextRange(a1);
  if (*a2)
  {
    v26 = v25 - 1;
  }

  else
  {
    v26 = 0;
  }

  return v24 + v26;
}

uint64_t CGPDFNodeGetTextIndexBeforePoint(_DWORD *a1, CGFloat a2, CGFloat a3, double a4)
{
  if (!a1)
  {
    return -1;
  }

  TextRangeIncludingWhitespace = CGPDFNodeGetTextRangeIncludingWhitespace(a1);
  v10 = TextRangeIncludingWhitespace;
  v11 = v9;
  if (*a1 != 1)
  {
    v14 = TextRangeIncludingWhitespace + v9;
    return v14 - 1;
  }

  v15 = 0;
  TextIndexAtPoint = CGPDFNodeGetTextIndexAtPoint(a1, &v15 + 1, &v15, a2, a3, a4);
  result = TextIndexAtPoint - HIBYTE(v15);
  if ((v15 & 1) == 0)
  {
    v14 = v10 + v11;
    if (result < v10 + v11)
    {
      return v14 - 1;
    }
  }

  return result;
}

void CGPDFNodeGetNodeRangeBetweenPoints(__n64 *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, BOOL *a6, uint64_t *a7, double a8, double a9, double a10, double a11, double a12)
{
  v83 = 0;
  ClosestNodeToPoint = CGPDFNodeGetClosestNodeToPoint(a1, a2, a3, &v83, a8, a9, a12);
  if (v83)
  {
    NodeBefore = CGPDFNodeGetNodeBefore(a1, ClosestNodeToPoint, a2, a3);
    NodeAfter = ClosestNodeToPoint;
  }

  else
  {
    NodeAfter = CGPDFNodeGetNodeAfter(a1, ClosestNodeToPoint, a2, a3);
    NodeBefore = ClosestNodeToPoint;
  }

  v86 = NodeAfter;
  for (i = NodeBefore; ClosestNodeToPoint; ClosestNodeToPoint = ClosestNodeToPoint[1].n64_u64[0])
  {
    if (ClosestNodeToPoint->n64_u32[0] == 1538)
    {
      v26 = ClosestNodeToPoint[13].n64_u64[0];
      if (v26)
      {
        if (*v26 == 2)
        {
          break;
        }
      }
    }
  }

  v27 = CGPDFNodeGetClosestNodeToPoint(a1, a2, a3, &v83, a10, a11, a12);
  if (v83)
  {
    v28 = CGPDFNodeGetNodeBefore(a1, v27, a2, a3);
    v31 = v27;
  }

  else
  {
    v31 = CGPDFNodeGetNodeAfter(a1, v27, a2, a3);
    v28 = v27;
  }

  v84 = v31;
  for (j = v28; v27; v27 = v27[1].n64_u64[0])
  {
    if (v27->n64_u32[0] == 1538)
    {
      v32 = v27[13].n64_u64[0];
      if (v32)
      {
        if (*v32 == 2)
        {
          break;
        }
      }
    }
  }

  if (ClosestNodeToPoint == v27)
  {
    if (ClosestNodeToPoint)
    {
      v38 = ClosestNodeToPoint;
    }

    else
    {
      v38 = a1;
    }

    v29.n128_f64[0] = a8;
    v30.n128_f64[0] = a9;
    CGPDFNodeMakeLayoutAreasConsistent(v38, a2, a3, &i, &v86, &j, &v84, v29, v30, a10, a11, a12);
    NodeAfter = v86;
    v31 = v84;
    if (v86)
    {
      goto LABEL_19;
    }

LABEL_29:
    v36 = i;
    v33 = a7;
    if (v31)
    {
      *a6 = 0;
      v37 = v36;
      goto LABEL_31;
    }

    goto LABEL_41;
  }

  if (!NodeAfter)
  {
    goto LABEL_29;
  }

LABEL_19:
  v33 = a7;
  if (!v31 || (v34 = CGPDFNodeCompareReadingOrder(NodeAfter, v31), v34 == -1))
  {
    *a6 = 1;
    v36 = i;
    v29.n128_f64[0] = a8;
    v30.n128_f64[0] = a9;
    if (CGPDFNodeIsHitByPoint(i, v29, v30, a12))
    {
      v43 = v36;
    }

    else
    {
      v43 = NodeAfter;
    }

    *a4 = v43;
    v41.n128_f64[0] = a10;
    v42.n128_f64[0] = a11;
    if (CGPDFNodeIsHitByPoint(v31, v41, v42, a12))
    {
      v39 = a5;
LABEL_38:
      *v39 = v31;
      goto LABEL_83;
    }

    v39 = a5;
    *a5 = j;
    goto LABEL_83;
  }

  if (v34 == 1)
  {
    *a6 = 0;
    v29.n128_f64[0] = a8;
    v30.n128_f64[0] = a9;
    IsHitByPoint = CGPDFNodeIsHitByPoint(NodeAfter, v29, v30, a12);
    v36 = i;
    if (IsHitByPoint)
    {
      v37 = NodeAfter;
    }

    else
    {
      v37 = i;
    }

LABEL_31:
    v39 = a5;
    *a4 = v37;
    v40 = j;
    v29.n128_f64[0] = a10;
    v30.n128_f64[0] = a11;
    if (CGPDFNodeIsHitByPoint(j, v29, v30, a12))
    {
      *a5 = v40;
      goto LABEL_83;
    }

    goto LABEL_38;
  }

  v36 = i;
LABEL_41:
  v39 = a5;
  v29.n128_f64[0] = a8;
  v30.n128_f64[0] = a9;
  if (CGPDFNodeIsHitByPoint(v36, v29, v30, a12))
  {
    *a4 = v36;
    v44.n128_f64[0] = a10;
    v45.n128_f64[0] = a11;
    v46 = CGPDFNodeIsHitByPoint(v36, v44, v45, a12);
    v49 = v36;
    if (v46)
    {
      goto LABEL_43;
    }

    *a6 = 1;
    v47.n128_f64[0] = a10;
    v48.n128_f64[0] = a11;
    if (CGPDFNodeIsHitByPoint(NodeAfter, v47, v48, a12))
    {
      *a5 = NodeAfter;
    }

    else
    {
      *a5 = v36;
    }
  }

  else
  {
    v44.n128_f64[0] = a10;
    v45.n128_f64[0] = a11;
    if (!CGPDFNodeIsHitByPoint(v36, v44, v45, a12))
    {
      v58.n128_f64[0] = a8;
      v59.n128_f64[0] = a9;
      if (CGPDFNodeIsHitByPoint(NodeAfter, v58, v59, a12))
      {
        *a4 = NodeAfter;
        *a5 = NodeAfter;
        v60.n128_f64[0] = a10;
        v61.n128_f64[0] = a11;
        if ((CGPDFNodeIsHitByPoint(NodeAfter, v60, v61, a12) & 1) == 0)
        {
          *a6 = 0;
          goto LABEL_83;
        }

LABEL_44:
        v50 = *a4;
        if (*a4)
        {
          v51 = *v50;
          Rotation = CGPDFNodeGetRotation(v50);
          if (Rotation != 0.0)
          {
LABEL_46:
            v53 = __sincos_stret(Rotation);
            v54 = a9 * v53.__sinval + v53.__cosval * a8 + 0.0;
            v55 = a9 * v53.__cosval - v53.__sinval * a8 + 0.0;
            v56 = a11 * v53.__sinval + v53.__cosval * a10 + 0.0;
            v57 = a11 * v53.__cosval - v53.__sinval * a10 + 0.0;
LABEL_70:
            if (v51 == 1 || v51 == 516 || v51 == 514)
            {
              if (v54 >= v56)
              {
                v65 = v54 == v56;
                if (v55 < v57)
                {
                  v65 = 0;
                }

                goto LABEL_82;
              }

LABEL_79:
              v65 = 1;
LABEL_82:
              *a6 = v65;
              goto LABEL_83;
            }

LABEL_78:
            if (v55 <= v57)
            {
              v65 = v55 == v57;
              if (v54 > v56)
              {
                v65 = 0;
              }

              goto LABEL_82;
            }

            goto LABEL_79;
          }

          goto LABEL_69;
        }

        if (v36)
        {
          v51 = *v36;
          if (NodeAfter)
          {
LABEL_57:
            v62 = *NodeAfter;
            goto LABEL_65;
          }
        }

        else
        {
          v51 = 0;
          if (NodeAfter)
          {
            goto LABEL_57;
          }
        }

        v62 = 0;
LABEL_65:
        if (v51 != v62)
        {
          v54 = a8;
          v55 = a9;
          v56 = a10;
          v57 = a11;
          goto LABEL_78;
        }

        v63 = CGPDFNodeGetRotation(v36);
        if (v63 != 0.0)
        {
          v64 = v63;
          if (v63 == CGPDFNodeGetRotation(NodeAfter))
          {
            Rotation = v64;
            goto LABEL_46;
          }
        }

LABEL_69:
        v57 = a11;
        v56 = a10;
        v55 = a9;
        v54 = a8;
        goto LABEL_70;
      }

      v60.n128_f64[0] = a10;
      v61.n128_f64[0] = a11;
      if (CGPDFNodeIsHitByPoint(NodeAfter, v60, v61, a12))
      {
        *a4 = NodeAfter;
        *a5 = NodeAfter;
        goto LABEL_79;
      }

      v49 = 0;
      *a4 = 0;
LABEL_43:
      *a5 = v49;
      goto LABEL_44;
    }

    *a5 = v36;
    *a6 = 0;
    v58.n128_f64[0] = a8;
    v59.n128_f64[0] = a9;
    if (CGPDFNodeIsHitByPoint(NodeAfter, v58, v59, a12))
    {
      *a4 = NodeAfter;
    }

    else
    {
      *a4 = v36;
    }
  }

LABEL_83:
  if (!v33)
  {
    return;
  }

  v66 = *a4;
  v67 = *v39;
  if (!*a6)
  {
    if (v66)
    {
      if (v67)
      {
        TextIndexAfterPoint = CGPDFNodeGetTextIndexAfterPoint(*v39, a10, a11, a12);
        v69 = *a4;
LABEL_95:
        v70 = a8;
        v71 = a9;
LABEL_100:
        TextIndexBeforePoint = CGPDFNodeGetTextIndexBeforePoint(v69, v70, v71, a12);
        if (*a4 || *v39)
        {
          goto LABEL_129;
        }

        goto LABEL_102;
      }
    }

    else
    {
      v66 = *v39;
      if (!v67)
      {
        goto LABEL_96;
      }
    }

    TextIndexAfterPoint = CGPDFNodeGetTextIndexAfterPoint(v66, a10, a11, a12);
    v69 = v66;
    goto LABEL_95;
  }

  if (v66)
  {
    if (v67)
    {
      TextIndexAfterPoint = CGPDFNodeGetTextIndexAfterPoint(*a4, a8, a9, a12);
      v69 = *v39;
LABEL_99:
      v70 = a10;
      v71 = a11;
      goto LABEL_100;
    }

    v67 = *a4;
LABEL_98:
    TextIndexAfterPoint = CGPDFNodeGetTextIndexAfterPoint(v67, a8, a9, a12);
    v69 = v67;
    goto LABEL_99;
  }

  if (v67)
  {
    goto LABEL_98;
  }

LABEL_96:
  TextIndexAfterPoint = 0;
  TextIndexBeforePoint = -1;
LABEL_102:
  if (v36 | NodeAfter)
  {
    if (v36)
    {
      TextRange = CGPDFNodeGetTextRange(v36);
      v75 = TextRange + v74;
      if (!NodeAfter)
      {
        TextIndexBeforePoint = TextRange + v74 - 1;
LABEL_128:
        TextIndexAfterPoint = v75;
        goto LABEL_129;
      }
    }

    else
    {
      v75 = TextIndexAfterPoint;
      if (!NodeAfter)
      {
        goto LABEL_128;
      }
    }

    v76 = CGPDFNodeGetTextRange(NodeAfter);
    TextIndexBeforePoint = v76 - 1;
    if (v36)
    {
      TextIndexAfterPoint = v75;
    }

    else
    {
      TextIndexAfterPoint = v76;
    }

    if (v36 && *v36 == 1 && *NodeAfter == 1 && *(v36 + 8) == *(NodeAfter + 8))
    {
      if (*a6)
      {
        v77 = a8;
      }

      else
      {
        v77 = a10;
      }

      if (*a6)
      {
        v78 = a9;
      }

      else
      {
        v78 = a11;
      }

      if (!*a6)
      {
        a10 = a8;
        a11 = a9;
      }

      v79 = CGPDFNodeGetTextIndexAfterPoint(v36, v77, v78, a12);
      v80 = CGPDFNodeGetTextIndexBeforePoint(NodeAfter, a10, a11, a12);
      if (v79 <= v75)
      {
        TextIndexAfterPoint = v75;
      }

      else
      {
        TextIndexAfterPoint = v79;
      }

      if (v80 < TextIndexBeforePoint)
      {
        TextIndexBeforePoint = v80;
      }
    }
  }

LABEL_129:
  if (TextIndexBeforePoint >= TextIndexAfterPoint)
  {
    v81 = TextIndexBeforePoint - TextIndexAfterPoint + 1;
  }

  else
  {
    v81 = 0;
  }

  *v33 = TextIndexAfterPoint;
  v33[1] = v81;
}