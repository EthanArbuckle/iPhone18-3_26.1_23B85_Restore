void __default_focus_ring_color_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  DeviceGray = CGColorSpaceCreateDeviceGray();
  v1 = xmmword_1844DF970;
  default_focus_ring_color_focus_ring_color = CGColorCreate(DeviceGray, &v1);
  CGColorSpaceRelease(DeviceGray);
}

void *rips_f_BltImage(uint64_t a1, int *a2, uint64_t a3, int *a4, int *a5, uint64_t a6, int32x2_t *a7, uint64_t a8)
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

  return rips_f_DrawRing(a1, a2, a3, a4, a5, 0, 0, v8, 0, a6, a7, a8);
}

void *rips_f_BltGlyph(uint64_t a1, int *a2, uint64_t a3, int *a4, int *a5, uint64_t a6, int32x2_t *a7, uint64_t a8, uint64_t a9, uint64_t a10)
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

  return rips_f_DrawRing(a1, a2, a3, a4, a5, 0, v10, 0, 0, a6, a7, a10);
}

void *rips_f_BltShape(uint64_t a1, int *a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, int32x2_t *a7, uint64_t a8)
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

  return rips_f_DrawRing(a1, a2, a3, a4, v11, a5, 0, 0, 0, a6, a7, a8);
}

CGColorSpaceRef rips_f_ColorSpace(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 88);
  if (!v8)
  {
    return rips_f_cs;
  }

  if ((v8 & 0x8000000000000000) != 0)
  {
    return CGTaggedColorGetColorSpace(v8, a2, a3, a4, a5, a6, a7, a8);
  }

  return *(v8 + 24);
}

uint64_t rips_f_Growth(uint64_t a1, unsigned int *a2)
{
  v2 = vcvtmd_s64_f64(*(a1 + 104) + 0.5);
  *a2 = ~v2;
  a2[1] = ~v2;
  v3 = 2 * v2 + 2;
  a2[2] = v3;
  a2[3] = v3;
  return 1;
}

double *rips_f_Create(uint64_t a1, uint64_t a2, double *a3, uint64_t a4, double a5)
{
  if (a2)
  {
    v5 = a2 + 32;
  }

  else
  {
    v5 = 0;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = (*(a1 + 8))();
  v12 = malloc_type_calloc(1uLL, v11, 0x933FC33uLL);
  v13 = v12;
  if (v12)
  {
    *v12 = a1;
    *(v12 + 1) = 0xF100000001;
    *(v12 + 10) = CGGStateCreateCopy(a4);
    v13[19] = 0.0;
    if (a3)
    {
      v14 = sqrt(fabs(*a3 * a3[3] - a3[1] * a3[2]));
    }

    else
    {
      v14 = 1.0;
    }

    v15 = *(a2 + 24);
    if (v15 && (v15 < 1 || !*(v15 + 32)))
    {
      CFRetain(v15);
      *(v13 + 11) = v15;
    }

    v16 = v14 * *(v5 + 24);
    v13[12] = *(v5 + 16);
    v13[13] = v16;
    v13[14] = *(v5 + 32);
    v17 = *(v5 + 8);
    *(v13 + 30) = v17;
    v18 = *(v13 + 3);
    if (v17 != 1)
    {
      if (v17 != 2)
      {
        v19 = v18 | 0x400;
        goto LABEL_19;
      }

      v18 |= 0x300u;
    }

    v19 = v18 | 0x600;
LABEL_19:
    *(v13 + 3) = v19;
    v20 = *(v5 + 72);
    *(v13 + 35) = v20;
    if (v20 < 0)
    {
      v26 = 0;
      v27 = 0;
      *(v13 + 34) = 0;
      v28 = 132;
    }

    else
    {
      v37 = CGRectStandardize(*(v5 + 40));
      x = v37.origin.x * a5;
      if (a5 > 1.0)
      {
        v37.origin.y = v37.origin.y * a5;
        width = v37.size.width * a5;
      }

      else
      {
        x = v37.origin.x;
        width = v37.size.width;
      }

      if (a5 > 1.0)
      {
        height = v37.size.height * a5;
      }

      else
      {
        height = v37.size.height;
      }

      v24 = x + width;
      if (x <= 1073741820.0)
      {
        v29 = vcvtmd_s64_f64(x + 0.0);
        if (x >= -1073741820.0)
        {
          v25 = v29;
        }

        else
        {
          v25 = -1073741823;
        }
      }

      else
      {
        v25 = 0x3FFFFFFF;
      }

      *(v13 + 31) = v25;
      if (v24 <= 1073741820.0)
      {
        v31 = vcvtpd_s64_f64(v24);
        if (v24 >= -1073741820.0)
        {
          v30 = v31;
        }

        else
        {
          v30 = -1073741823;
        }
      }

      else
      {
        v30 = 0x3FFFFFFF;
      }

      *(v13 + 33) = v30 - v25;
      v32 = v37.origin.y + height;
      if (v37.origin.y <= 1073741820.0)
      {
        v34 = vcvtmd_s64_f64(v37.origin.y + 0.0);
        if (v37.origin.y >= -1073741820.0)
        {
          v33 = v34;
        }

        else
        {
          v33 = -1073741823;
        }
      }

      else
      {
        v33 = 0x3FFFFFFF;
      }

      *(v13 + 32) = v33;
      if (v32 <= 1073741820.0)
      {
        if (v32 >= -1073741820.0)
        {
          v35 = vcvtpd_s64_f64(v32);
        }

        else
        {
          v35 = -1073741823;
        }
      }

      else
      {
        v35 = 0x3FFFFFFF;
      }

      v26 = v35 - v33;
      v27 = 1;
      v28 = 136;
    }

    *(v13 + v28) = v26;
    *(v13 + 144) = v27;
  }

  return v13;
}

void rips_f_release(_DWORD *a1)
{
  v2 = a1[2] - 1;
  a1[2] = v2;
  if (!v2)
  {
    v4 = *(a1 + 19);
    if (v4)
    {
      (*(*v4 + 24))(v4);
    }

    v5 = *(a1 + 11);
    if (v5)
    {
      CFRelease(v5);
    }

    v6 = *(a1 + 10);
    if (v6)
    {
      CGGStateRelease(v6);
    }

    free(a1);
  }
}

CGContextRef CGPDFContextCreate(CGDataConsumerRef consumer, const CGRect *mediaBox, CFDictionaryRef auxiliaryInfo)
{
  if (CGPDFContextCreate_once != -1)
  {
    dispatch_once_f(&CGPDFContextCreate_once, 0, load_pdf_context_creator);
  }

  if (!creator_10542)
  {
    return 0;
  }

  if (auxiliaryInfo)
  {
    Value = CFDictionaryGetValue(auxiliaryInfo, @"CGPDFContextCreatePDFA");
    if (Value)
    {
      v9 = Value;
      v10 = CFGetTypeID(Value);
      if (v10 == CFBooleanGetTypeID())
      {
        CFBooleanGetValue(v9);
      }
    }

    v11 = CFDictionaryGetValue(auxiliaryInfo, @"kCGPDFContextOwnerPassword");
    v12 = v11;
    if (v11 && !is_valid_password(v11))
    {
      return 0;
    }

    v13 = CFDictionaryGetValue(auxiliaryInfo, @"kCGPDFContextUserPassword");
    v14 = v13;
    if (v13)
    {
      if (!is_valid_password(v13))
      {
        return 0;
      }
    }

    v15 = CFDictionaryGetValue(auxiliaryInfo, @"kCGPDFContextEncryptionKeyLength");
    valuePtr = 0;
    if (v15)
    {
      CFNumberGetValue(v15, kCFNumberIntType, &valuePtr);
      v16 = 1;
    }

    else
    {
      v16 = (v12 | v14) != 0;
      valuePtr = 128;
    }

    v17 = CFDictionaryGetValue(auxiliaryInfo, @"kCGPDFContextEncryptionCipher");
    if (valuePtr > 128)
    {
      return 0;
    }

    if (v17)
    {
      if (CFEqual(v17, @"kCGPDFContextEncryptionCipherAESv3"))
      {
        return 0;
      }
    }

    else if (v16)
    {
      if (valuePtr == 128)
      {
        v18 = @"kCGPDFContextEncryptionCipherAESv2";
      }

      else
      {
        v18 = @"kCGPDFContextEncryptionCipherRC4";
      }

      auxiliaryInfo = CFDictionaryCreateMutableCopy(0, 0, auxiliaryInfo);
      CFDictionarySetValue(auxiliaryInfo, @"kCGPDFContextEncryptionCipher", v18);
    }
  }

  v19 = CGContextCreateWithDelegateAndInfo(0, 1, 0, 0, 0, 0, v3, v4);
  v27 = v19;
  if (!v19)
  {
    CGPostError("%s: failed to create PDF context.", v20, v21, v22, v23, v24, v25, v26, "CGPDFContextCreate");
    return v27;
  }

  *(*(v19 + 112) + 8) = vdupq_n_s64(0x4062000000000000uLL);
  v28 = creator_10542(consumer, mediaBox, auxiliaryInfo);
  *(v27 + 5) = v28;
  if (!v28)
  {
    CGPostError("%s: failed to create PDF context delegate.", v29, v30, v31, v32, v33, v34, v35, "CGPDFContextCreate");
    CFRelease(v27);
    return 0;
  }

  return v27;
}

uint64_t is_valid_password(const __CFString *a1)
{
  v2 = CFGetTypeID(a1);
  if (v2 != CFStringGetTypeID())
  {
    return 0;
  }

  Length = CFStringGetLength(a1);
  if (Length)
  {
    v13.location = 0;
    v13.length = Length;
    if (CFStringGetBytes(a1, v13, 0x600u, 0, 0, 0, Length, 0) < Length)
    {
      CGPostError("Specified password cannot be converted to ASCII.", v4, v5, v6, v7, v8, v9, v10, usedBufLen);
      return 0;
    }
  }

  return 1;
}

void load_pdf_context_creator(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = &links;
  v10 = 6;
  while (strcmp("__CGPDFContextDelegateCreate", *v9))
  {
    v9 += 2;
    if (!--v10)
    {
      goto LABEL_7;
    }
  }

  if (v9[1])
  {
    creator_10542 = v9[1];
    return;
  }

LABEL_7:

  CGPostError("Failed to load PDF context.", v11, v12, v13, v14, v15, v16, v17, a9);
}

CGContextRef CGPDFContextCreateWithURL(CFURLRef url, const CGRect *mediaBox, CFDictionaryRef auxiliaryInfo)
{
  v5 = CGDataConsumerCreateWithURL(url);
  v6 = CGPDFContextCreate(v5, mediaBox, auxiliaryInfo);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

CGContextRef CGPDFContextCreateWithFilename(char *cStr, const CGRect *a2, const __CFDictionary *a3)
{
  v5 = CFStringCreateWithCString(0, cStr, 0x8000100u);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = CFURLCreateWithFileSystemPath(0, v5, kCFURLPOSIXPathStyle, 0);
  CFRelease(v6);
  if (!v7)
  {
    return 0;
  }

  v8 = CGDataConsumerCreateWithURL(v7);
  v9 = CGPDFContextCreate(v8, a2, a3);
  if (v8)
  {
    CFRelease(v8);
  }

  CFRelease(v7);
  return v9;
}

void CGPDFContextClose(CGContextRef context)
{
  if (context && *(context + 4) == 1129601108 && *(context + 6) == 1)
  {
    CGContextDelegateFinalize(*(context + 5));
  }

  else
  {
    handle_invalid_context("CGPDFContextClose", context, v1, v2, v3, v4, v5, v6);
  }
}

void CGPDFContextBeginPage(CGContextRef context, CFDictionaryRef pageInfo)
{
  if (context && *(context + 4) == 1129601108 && *(context + 6) == 1)
  {
    v9 = *(context + 22);
    *(context + 22) = v9 + 1;
    if (v9)
    {
      CGPostError("%s: Don't nest calls to this function -- the results will not be what you expect.", pageInfo, v2, v3, v4, v5, v6, v7, "CGPDFContextBeginPage");
    }

    else
    {
      CGContextResetTopGState(context, pageInfo, v2, v3, v4, v5, v6, v7);
      v10 = *(context + 5);
      if (v10)
      {
        v11 = *(v10 + 152);
        if (v11)
        {

          v11();
        }
      }
    }
  }

  else
  {

    handle_invalid_context("CGPDFContextBeginPage", context, v2, v3, v4, v5, v6, v7);
  }
}

void CGPDFContextEndPage(CGContextRef context)
{
  if (context && *(context + 4) == 1129601108 && *(context + 6) == 1)
  {
    v9 = *(context + 22) - 1;
    *(context + 22) = v9;
    if (v9)
    {
      CGPostError("%s: Don't nest calls to this function -- the results will not be what you expect.", v1, v2, v3, v4, v5, v6, v7, "CGPDFContextEndPage");
    }

    else
    {
      v10 = *(context + 5);
      if (v10)
      {
        v11 = *(v10 + 160);
        if (v11)
        {

          v11();
        }
      }
    }
  }

  else
  {

    handle_invalid_context("CGPDFContextEndPage", context, v2, v3, v4, v5, v6, v7);
  }
}

void CGPDFContextSetURLForRect(CGContextRef context, CFURLRef url, CGRect rect)
{
  if (context)
  {
    if (*(context + 4) == 1129601108)
    {
      if (*(context + 6) == 1)
      {
        height = rect.size.height;
        width = rect.size.width;
        y = rect.origin.y;
        x = rect.origin.x;
        v15 = MEMORY[0x1E695E9D8];
        v16 = MEMORY[0x1E695E9E8];
        Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v18 = CFDictionaryCreateMutable(0, 0, v15, v16);
        CFDictionarySetValue(v18, @"/Type", @"/Action");
        CFDictionarySetValue(v18, @"/S", @"/URI");
        CFDictionarySetValue(v18, @"/URI", url);
        CFDictionarySetValue(Mutable, @"/A", v18);
        CFDictionarySetValue(Mutable, @"/Type", @"/Annot");
        CFDictionarySetValue(Mutable, @"/Subtype", @"/Link");
        if (v18)
        {
          CFRelease(v18);
        }

        v27 = CGContainerCreateWithRect(x, y, width, height, v19, v20, v21, v22, v23, v24, v25, v26);
        CFDictionarySetValue(Mutable, @"/Rect", v27);
        CFRelease(v27);
        v28 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
        CGCFArrayAppendInteger(v28, 0);
        CGCFArrayAppendInteger(v28, 0);
        CGCFArrayAppendInteger(v28, 0);
        CFDictionarySetValue(Mutable, @"/Border", v28);
        if (v28)
        {
          CFRelease(v28);
        }

        CGPDFContextAddAnnotation(context, Mutable, v29, v30, v31, v32, v33, v34);

        CFRelease(Mutable);
      }

      return;
    }

    v35 = context;
  }

  else
  {
    v35 = 0;
  }

  handle_invalid_context("CGPDFContextSetURLForRect", v35, v3, v4, v5, v6, v7, v8);
}

void CGPDFContextAddAnnotation(uint64_t a1, CFDictionaryRef theDict, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    if (*(a1 + 16) == 1129601108)
    {
      if (*(a1 + 24) == 1)
      {
        value = 0;
        if (CFDictionaryGetValueIfPresent(theDict, @"Subtype", &value) && (v10 = CFGetTypeID(value), v10 == CFStringGetTypeID()) && CFStringCompare(value, @"Screen", 0) && CFDictionaryGetValueIfPresent(theDict, @"P", &value) && (v11 = CFGetTypeID(value), v11 == CFDictionaryGetTypeID()) && CFDictionaryGetValueIfPresent(value, @"Type", &value) && (v12 = CFGetTypeID(value), v12 == CFStringGetTypeID()) && CFStringCompare(value, @"Page", 0) == kCFCompareEqualTo)
        {
          MutableCopy = CFDictionaryCreateMutableCopy(0, 0, theDict);
          CFDictionaryRemoveValue(MutableCopy, @"P");
        }

        else
        {
          MutableCopy = CFRetain(theDict);
        }

        v14 = *(a1 + 40);
        if (v14)
        {
          v15 = *(v14 + 168);
          if (v15)
          {
            v15();
          }
        }

        CFRelease(MutableCopy);
      }

      return;
    }

    v16 = a1;
  }

  else
  {
    v16 = 0;
  }

  handle_invalid_context("CGPDFContextAddAnnotation", v16, a3, a4, a5, a6, a7, a8);
}

void CGPDFContextAddDestinationAtPoint(CGContextRef context, CFStringRef name, CGPoint point)
{
  if (context)
  {
    if (*(context + 4) == 1129601108)
    {
      if (*(context + 6) == 1)
      {
        y = point.y;
        x = point.x;
        Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        CFDictionarySetValue(Mutable, @"Label", name);
        CGCFDictionarySetPoint(Mutable, @"Point", x, y);
        v14 = *(context + 5);
        if (v14)
        {
          v15 = *(v14 + 168);
          if (v15)
          {
            v15();
          }
        }

        if (Mutable)
        {

          CFRelease(Mutable);
        }
      }

      return;
    }

    v16 = context;
  }

  else
  {
    v16 = 0;
  }

  handle_invalid_context("CGPDFContextAddDestinationAtPoint", v16, v3, v4, v5, v6, v7, v8);
}

void CGPDFContextSetDestinationForRect(CGContextRef context, CFStringRef name, CGRect rect)
{
  if (context)
  {
    if (*(context + 4) == 1129601108)
    {
      if (*(context + 6) == 1)
      {
        height = rect.size.height;
        width = rect.size.width;
        y = rect.origin.y;
        x = rect.origin.x;
        Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        CFDictionarySetValue(Mutable, @"/Type", @"/Annot");
        CFDictionarySetValue(Mutable, @"/Subtype", @"/Link");
        v24 = CGContainerCreateWithRect(x, y, width, height, v16, v17, v18, v19, v20, v21, v22, v23);
        CFDictionarySetValue(Mutable, @"/Rect", v24);
        CFRelease(v24);
        v25 = CFStringCreateMutable(0, 0);
        CFStringAppend(v25, @"/>");
        CFStringAppend(v25, name);
        CFDictionarySetValue(Mutable, @"/Dest", v25);
        CFRelease(v25);
        v26 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
        CGCFArrayAppendInteger(v26, 0);
        CGCFArrayAppendInteger(v26, 0);
        CGCFArrayAppendInteger(v26, 0);
        CFDictionarySetValue(Mutable, @"/Border", v26);
        if (v26)
        {
          CFRelease(v26);
        }

        CGPDFContextAddAnnotation(context, Mutable, v27, v28, v29, v30, v31, v32);

        CFRelease(Mutable);
      }

      return;
    }

    v33 = context;
  }

  else
  {
    v33 = 0;
  }

  handle_invalid_context("CGPDFContextSetDestinationForRect", v33, v3, v4, v5, v6, v7, v8);
}

void CGPDFContextAddCatalogEntry(uint64_t a1, const void *a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    if (*(a1 + 16) == 1129601108)
    {
      if (*(a1 + 24) == 1 && a2 != 0 && a3 != 0)
      {
        Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        CFDictionarySetValue(Mutable, @"Key", a2);
        CFDictionarySetValue(Mutable, @"Value", a3);
        v15 = *(a1 + 40);
        if (v15)
        {
          v16 = *(v15 + 168);
          if (v16)
          {
            v16();
          }
        }

        if (Mutable)
        {

          CFRelease(Mutable);
        }
      }

      return;
    }

    v13 = a1;
  }

  else
  {
    v13 = 0;
  }

  handle_invalid_context("CGPDFContextAddCatalogEntry", v13, a3, a4, a5, a6, a7, a8);
}

void CGPDFContextAddDocumentMetadata(CGContextRef context, CFDataRef metadata)
{
  if (context && *(context + 4) == 1129601108 && *(context + 6) == 1)
  {
    if (metadata)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      CFDictionarySetValue(Mutable, @"/Type", @"/Metadata");
      CFDictionarySetValue(Mutable, @"/Subtype", @"/XML");
      CFDictionarySetValue(Mutable, @"/%Stream", metadata);
      CGPDFContextAddCatalogEntry(context, @"/Metadata", Mutable, v11, v12, v13, v14, v15);

      CFRelease(Mutable);
    }
  }

  else
  {

    handle_invalid_context("CGPDFContextAddDocumentMetadata", context, v2, v3, v4, v5, v6, v7);
  }
}

void CGPDFContextSetParentTree(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && *(a1 + 16) == 1129601108 && *(a1 + 24) == 1)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v11 = Mutable;
    if (a2)
    {
      CFDictionarySetValue(Mutable, @"ParentTree", a2);
    }

    v12 = *(a1 + 40);
    if (v12)
    {
      v13 = *(v12 + 168);
      if (v13)
      {
        v13();
      }
    }

    if (v11)
    {

      CFRelease(v11);
    }
  }

  else
  {

    handle_invalid_context("CGPDFContextSetParentTree", a1, a3, a4, a5, a6, a7, a8);
  }
}

void CGPDFContextSetIDTree(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && *(a1 + 16) == 1129601108 && *(a1 + 24) == 1)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v11 = Mutable;
    if (a2)
    {
      CFDictionarySetValue(Mutable, @"IDTree", a2);
    }

    v12 = *(a1 + 40);
    if (v12)
    {
      v13 = *(v12 + 168);
      if (v13)
      {
        v13();
      }
    }

    if (v11)
    {

      CFRelease(v11);
    }
  }

  else
  {

    handle_invalid_context("CGPDFContextSetIDTree", a1, a3, a4, a5, a6, a7, a8);
  }
}

void CGPDFContextSetPageTagStructureTree(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && *(a1 + 16) == 1129601108 && *(a1 + 24) == 1)
  {
    v8 = *(a1 + 40);
    if (v8)
    {
      v9 = *(v8 + 168);
      if (v9)
      {
        v9();
      }
    }
  }

  else
  {
    handle_invalid_context("CGPDFContextSetPageTagStructureTree", a1, a3, a4, a5, a6, a7, a8);
  }
}

void CGPDFContextAddPDFXInfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && *(a1 + 16) == 1129601108 && *(a1 + 24) == 1)
  {
    v8 = *(a1 + 40);
    if (v8)
    {
      v9 = *(v8 + 168);
      if (v9)
      {
        v9();
      }
    }
  }

  else
  {
    handle_invalid_context("CGPDFContextAddPDFXInfo", a1, a3, a4, a5, a6, a7, a8);
  }
}

void CGPDFContextSetOutputIntent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && *(a1 + 16) == 1129601108 && *(a1 + 24) == 1)
  {
    v8 = *(a1 + 40);
    if (v8)
    {
      v9 = *(v8 + 168);
      if (v9)
      {
        v9();
      }
    }
  }

  else
  {
    handle_invalid_context("CGPDFContextSetOutputIntent", a1, a3, a4, a5, a6, a7, a8);
  }
}

void CGPDFContextSetShouldDeflate(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && *(a1 + 16) == 1129601108 && *(a1 + 24) == 1)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v11 = Mutable;
    v12 = MEMORY[0x1E695E4D0];
    if (!a2)
    {
      v12 = MEMORY[0x1E695E4C0];
    }

    CFDictionarySetValue(Mutable, @"ShouldDeflate", *v12);
    v13 = *(a1 + 40);
    if (v13)
    {
      v14 = *(v13 + 168);
      if (v14)
      {
        v14();
      }
    }

    if (v11)
    {

      CFRelease(v11);
    }
  }

  else
  {

    handle_invalid_context("CGPDFContextSetShouldDeflate", a1, a3, a4, a5, a6, a7, a8);
  }
}

void CGPDFContextBeginDrawingHiddenText(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && *(a1 + 16) == 1129601108 && *(a1 + 24) == 1)
  {
    v8 = *(a1 + 40);
    if (v8)
    {
      v9 = *(v8 + 168);
      if (v9)
      {
        v9();
      }
    }
  }

  else
  {
    handle_invalid_context("CGPDFContextBeginDrawingHiddenText", a1, a3, a4, a5, a6, a7, a8);
  }
}

void CGPDFContextEndDrawingHiddenText(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && *(a1 + 16) == 1129601108 && *(a1 + 24) == 1)
  {
    v8 = *(a1 + 40);
    if (v8)
    {
      v9 = *(v8 + 168);
      if (v9)
      {
        v9();
      }
    }
  }

  else
  {
    handle_invalid_context("CGPDFContextEndDrawingHiddenText", a1, a3, a4, a5, a6, a7, a8);
  }
}

void CGPDFContextSetImageTag(uint64_t a1, const void *a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && *(a1 + 16) == 1129601108 && *(a1 + 24) == 1)
  {
    if (a2 && a3)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      CFDictionarySetValue(Mutable, @"Image", a2);
      CFDictionarySetValue(Mutable, @"Tag", a3);
      v12 = *(a1 + 40);
      if (v12)
      {
        v13 = *(v12 + 168);
        if (v13)
        {
          v13();
        }
      }

      if (Mutable)
      {

        CFRelease(Mutable);
      }
    }
  }

  else
  {

    handle_invalid_context("CGPDFContextSetImageTag", a1, a3, a4, a5, a6, a7, a8);
  }
}

void CGPDFContextSetOutline(CGContextRef context, CFDictionaryRef outline)
{
  if (outline)
  {
    if (!CFDictionaryContainsKey(outline, @"Title"))
    {
      v10 = convertOutlineTree(outline);
      if (v10)
      {
        v16 = v10;
        CGPDFContextAddCatalogEntry(context, @"/Outlines", v10, v11, v12, v13, v14, v15);

        CFRelease(v16);
      }
    }
  }

  else
  {
    if (context)
    {
      if (*(context + 4) == 1129601108)
      {
        return;
      }

      v17 = context;
    }

    else
    {
      v17 = 0;
    }

    handle_invalid_context("CGPDFContextAddCatalogEntry", v17, v2, v3, v4, v5, v6, v7);
  }
}

__CFDictionary *convertOutlineTree(const __CFDictionary *a1)
{
  v47 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  Value = CFDictionaryGetValue(a1, @"Title");
  if (!Value)
  {
    goto LABEL_15;
  }

  CFDictionarySetValue(Mutable, @"/Title", Value);
  v4 = CFDictionaryGetValue(a1, @"Destination");
  v5 = CFGetTypeID(v4);
  if (v5 == CFNumberGetTypeID())
  {
    v6 = CFDictionaryGetValue(a1, @"DestinationRect");
    valuePtr = 0u;
    *v46 = 0u;
    if (v6 && (v7 = v6, get_point_from_dict(v6, &valuePtr), v8) && (get_size_from_dict(v7, v46), v9))
    {
      if (fabs(v46[0]) <= 2.22044605e-16 || fabs(v46[1]) <= 2.22044605e-16)
      {
        values = CFStringCreateWithFormat(0, 0, @"/#%@", v4);
        v40 = @"/XYZ";
        v41 = CFNumberCreate(0, kCFNumberCGFloatType, &valuePtr);
        v35 = CFNumberCreate(0, kCFNumberCGFloatType, &valuePtr + 8);
        v36 = *MEMORY[0x1E695E738];
        v42 = v35;
        v43 = v36;
        v10 = CFArrayCreate(0, &values, 5, MEMORY[0x1E695E9C0]);
        CFRelease(values);
        CFRelease(v41);
        v11 = v42;
      }

      else
      {
        v37 = v46[1] + *(&valuePtr + 1);
        v38 = v46[0] + *&valuePtr;
        values = CFStringCreateWithFormat(0, 0, @"/#%@", v4);
        v40 = @"/FitR";
        v41 = CFNumberCreate(0, kCFNumberCGFloatType, &valuePtr);
        v42 = CFNumberCreate(0, kCFNumberCGFloatType, &valuePtr + 8);
        v43 = CFNumberCreate(0, kCFNumberCGFloatType, &v38);
        v44 = CFNumberCreate(0, kCFNumberCGFloatType, &v37);
        v10 = CFArrayCreate(0, &values, 6, MEMORY[0x1E695E9C0]);
        CFRelease(values);
        CFRelease(v41);
        CFRelease(v42);
        CFRelease(v43);
        v11 = v44;
      }
    }

    else
    {
      values = CFStringCreateWithFormat(0, 0, @"/#%@", v4);
      v40 = @"/XYZ";
      v41 = *MEMORY[0x1E695E738];
      v42 = v41;
      v43 = v41;
      v10 = CFArrayCreate(0, &values, 5, MEMORY[0x1E695E9C0]);
      v11 = values;
    }

    CFRelease(v11);
    v13 = @"/Dest";
    goto LABEL_14;
  }

  v12 = CFGetTypeID(v4);
  if (v12 != CFURLGetTypeID())
  {
    CFRelease(Mutable);
    return 0;
  }

  values = @"/S";
  v40 = @"/URI";
  *&valuePtr = @"/URI";
  *(&valuePtr + 1) = CFURLGetString(v4);
  v10 = CFDictionaryCreate(0, &values, &valuePtr, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v13 = @"/A";
LABEL_14:
  CFDictionarySetValue(Mutable, v13, v10);
  CFRelease(v10);
LABEL_15:
  v14 = CFDictionaryGetValue(a1, @"Children");
  if (v14)
  {
    v15 = v14;
    Count = CFArrayGetCount(v14);
    v18 = Count;
    values = Count;
    if (Count < 1)
    {
      v23 = Count;
      if (Value)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v19 = 8 * Count;
      MEMORY[0x1EEE9AC00](Count, v17);
      v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
      if (v19 >= 0x200)
      {
        v21 = 512;
      }

      else
      {
        v21 = 8 * v18;
      }

      bzero(&v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v21);
      bzero(&v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * v18);
      v22 = 0;
      v23 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v15, v22);
        v25 = convertOutlineTree(ValueAtIndex);
        if (v25)
        {
          *&v20[8 * v23++] = v25;
        }

        ++v22;
      }

      while (v18 != v22);
      values = v23;
      v26 = *v20;
      CFDictionarySetValue(Mutable, @"/First", *v20);
      v27 = &v20[8 * v23];
      v28 = *(v27 - 1);
      CFDictionarySetValue(Mutable, @"/Last", v28);
      if (v23 > 1)
      {
        v29 = *(v20 + 1);
        CFDictionarySetValue(v26, @"/Next", v29);
        CFDictionarySetValue(v28, @"/Prev", *(v27 - 2));
        v30 = v23 - 2;
        if (v23 != 2)
        {
          v31 = (v20 + 16);
          do
          {
            v32 = *v31;
            CFDictionarySetValue(v29, @"/Next", *v31);
            CFDictionarySetValue(v29, @"/Prev", *(v31 - 2));
            ++v31;
            v29 = v32;
            --v30;
          }

          while (v30);
        }
      }

      if (Value)
      {
        goto LABEL_30;
      }
    }

    values = -v23;
LABEL_30:
    v33 = CFNumberCreate(0, kCFNumberSInt64Type, &values);
    CFDictionarySetValue(Mutable, @"/Count", v33);
    CFRelease(v33);
  }

  return Mutable;
}

const char *__cdecl CGPDFTagTypeGetName(CGPDFTagType tagType)
{
  if (tagType > CGPDFTagTypeTable)
  {
    if (tagType <= CGPDFTagTypeCode)
    {
      if (tagType > (CGPDFTagTypeTableDataCell|0x60))
      {
        if (tagType > CGPDFTagTypeNote)
        {
          if (tagType == CGPDFTagTypeReference)
          {
            return "/Reference";
          }

          else if (tagType == CGPDFTagTypeBibliography)
          {
            return "/BibEntry";
          }

          else
          {
            return "/Code";
          }
        }

        else if (tagType == CGPDFTagTypeSpan)
        {
          return "/Span";
        }

        else if (tagType == CGPDFTagTypeQuote)
        {
          return "/Quote";
        }

        else
        {
          return "/Note";
        }
      }

      else
      {
        if (tagType > CGPDFTagTypeTableDataCell)
        {
          switch(tagType)
          {
            case CGPDFTagTypeTableHeader:
              return "/THead";
            case CGPDFTagTypeTableBody:
              return "/TBody";
            case CGPDFTagTypeTableFooter:
              return "/TFoot";
          }

          return 0;
        }

        if (tagType == CGPDFTagTypeTableRow)
        {
          return "/TR";
        }

        else if (tagType == CGPDFTagTypeTableHeaderCell)
        {
          return "/TH";
        }

        else
        {
          return "/TD";
        }
      }
    }

    else if (tagType <= CGPDFTagTypeRubyPunctuation)
    {
      if (tagType <= CGPDFTagTypeRuby)
      {
        switch(tagType)
        {
          case CGPDFTagTypeLink:
            return "/Link";
          case CGPDFTagTypeAnnotation:
            return "/Annot";
          case CGPDFTagTypeRuby:
            return "/Ruby";
        }

        return 0;
      }

      if (tagType == CGPDFTagTypeRubyBaseText)
      {
        return "/RB";
      }

      else if (tagType == CGPDFTagTypeRubyAnnotationText)
      {
        return "/RT";
      }

      else
      {
        return "/RP";
      }
    }

    else
    {
      if (tagType <= 699)
      {
        switch(tagType)
        {
          case CGPDFTagTypeWarichu:
            return "/Warichu";
          case CGPDFTagTypeWarichuText:
            return "/WT";
          case CGPDFTagTypeWarichuPunctiation:
            return "/WP";
        }

        return 0;
      }

      if (tagType > CGPDFTagTypeFormula)
      {
        if (tagType == CGPDFTagTypeForm)
        {
          return "/Form";
        }

        if (tagType == 800)
        {
          return "/OBJR";
        }

        return 0;
      }

      if (tagType == CGPDFTagTypeFigure)
      {
        return "/Figure";
      }

      else
      {
        return "/Formula";
      }
    }
  }

  else if (tagType <= 199)
  {
    if (tagType > CGPDFTagTypeBlockQuote)
    {
      if (tagType > CGPDFTagTypeTOCI)
      {
        switch(tagType)
        {
          case CGPDFTagTypeIndex:
            return "/Index";
          case CGPDFTagTypeNonStructure:
            return "/NonStruct";
          case CGPDFTagTypePrivate:
            return "/Private";
        }

        return 0;
      }

      if (tagType == CGPDFTagTypeCaption)
      {
        return "/Caption";
      }

      else if (tagType == CGPDFTagTypeTOC)
      {
        return "/TOC";
      }

      else
      {
        return "/TOCI";
      }
    }

    else
    {
      if (tagType <= CGPDFTagTypeArt)
      {
        switch(tagType)
        {
          case CGPDFTagTypeDocument:
            return "/Document";
          case CGPDFTagTypePart:
            return "/Part";
          case CGPDFTagTypeArt:
            return "/Art";
        }

        return 0;
      }

      if (tagType == CGPDFTagTypeSection)
      {
        return "/Sect";
      }

      else if (tagType == CGPDFTagTypeDiv)
      {
        return "/Div";
      }

      else
      {
        return "/BlockQuote";
      }
    }
  }

  else
  {
    if (tagType > CGPDFTagTypeHeader4)
    {
      if (tagType <= CGPDFTagTypeList)
      {
        switch(tagType)
        {
          case CGPDFTagTypeHeader5:
            return "/H5";
          case CGPDFTagTypeHeader6:
            return "/H6";
          case CGPDFTagTypeList:
            return "/L";
        }
      }

      else
      {
        if (tagType <= CGPDFTagTypeLabel)
        {
          if (tagType == CGPDFTagTypeListItem)
          {
            return "/LI";
          }

          else
          {
            return "/Lbl";
          }
        }

        if (tagType == CGPDFTagTypeListBody)
        {
          return "/LBody";
        }

        if (tagType == CGPDFTagTypeTable)
        {
          return "/Table";
        }
      }

      return 0;
    }

    if (tagType > CGPDFTagTypeHeader1)
    {
      if (tagType == CGPDFTagTypeHeader2)
      {
        return "/H2";
      }

      else if (tagType == CGPDFTagTypeHeader3)
      {
        return "/H3";
      }

      else
      {
        return "/H4";
      }
    }

    else if (tagType == CGPDFTagTypeParagraph)
    {
      return "/P";
    }

    else if (tagType == CGPDFTagTypeHeader)
    {
      return "/H";
    }

    else
    {
      return "/H1";
    }
  }
}

void CGPDFContextBeginTag(CGContextRef context, CGPDFTagType tagType, CFDictionaryRef tagProperties)
{
  if (context && *(context + 4) == 1129601108 && *(context + 6) == 1)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CGCFDictionarySetInteger(Mutable, @"TagType", tagType);
    if (tagProperties)
    {
      CFDictionarySetValue(Mutable, @"TagProperties", tagProperties);
    }

    v12 = *(context + 5);
    if (v12)
    {
      v13 = *(v12 + 168);
      if (v13)
      {
        v13();
      }
    }

    if (Mutable)
    {

      CFRelease(Mutable);
    }
  }

  else
  {

    handle_invalid_context("CGPDFContextBeginTag", context, tagProperties, v3, v4, v5, v6, v7);
  }
}

void CGPDFContextEndTag(CGContextRef context)
{
  if (context && *(context + 4) == 1129601108 && *(context + 6) == 1)
  {
    v7 = *(context + 5);
    if (v7)
    {
      v8 = *(v7 + 168);
      if (v8)
      {
        v8();
      }
    }
  }

  else
  {
    handle_invalid_context("CGPDFContextEndTag", context, v1, v2, v3, v4, v5, v6);
  }
}

void CGPDFContextSetRedactionPath(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && *(a1 + 16) == 1129601108 && *(a1 + 24) == 1)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v11 = Mutable;
    if (a2)
    {
      CFDictionarySetValue(Mutable, @"RedactionPath", a2);
    }

    v12 = *(a1 + 40);
    if (v12)
    {
      v13 = *(v12 + 168);
      if (v13)
      {
        v13();
      }
    }

    if (v11)
    {

      CFRelease(v11);
    }
  }

  else
  {

    handle_invalid_context("CGPDFContextSetRedactionPath", a1, a3, a4, a5, a6, a7, a8);
  }
}

void CGPDFContextBeginAccessibilitySpan(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    v10 = 0;
LABEL_8:
    handle_invalid_context("CGPDFContextBeginAccessibilitySpan", v10, a3, a4, a5, a6, a7, a8);
    return;
  }

  if (*(a1 + 16) != 1129601108)
  {
    v10 = a1;
    goto LABEL_8;
  }

  if (*(a1 + 24) == 1)
  {
    v8 = *(a1 + 40);
    if (v8)
    {
      v9 = *(v8 + 168);
      if (v9)
      {
        v9();
      }
    }
  }
}

void CGPDFContextEndAccessibilitySpan(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    v10 = 0;
LABEL_8:
    handle_invalid_context("CGPDFContextEndAccessibilitySpan", v10, a3, a4, a5, a6, a7, a8);
    return;
  }

  if (*(a1 + 16) != 1129601108)
  {
    v10 = a1;
    goto LABEL_8;
  }

  if (*(a1 + 24) == 1)
  {
    v8 = *(a1 + 40);
    if (v8)
    {
      v9 = *(v8 + 168);
      if (v9)
      {
        v9();
      }
    }
  }
}

const __CFString *CGPDFContextIsValidPassword(const __CFString *result)
{
  if (result)
  {
    v1 = result;
    Length = CFStringGetLength(result);
    if (Length <= 32)
    {
      v3.location = 0;
      v3.length = Length;
      return (CFStringGetBytes(v1, v3, 0x600u, 0, 0, 0, 0, 0) == Length);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_1841B839C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  MEMORY[0x1865EE610](v20, v21);
  _Unwind_Resume(a1);
}

void Type1::~Type1(Type1 *this)
{
  SimpleFont::~SimpleFont(this);

  JUMPOUT(0x1865EE610);
}

void sub_1841B85DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__10758(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1841B8794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1841B8AC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1841B8BE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1841B8D44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

CGShadingRef CGShadingCreateAxial(CGColorSpaceRef space, CGPoint start, CGPoint end, CGFunctionRef function, BOOL extendStart, BOOL extendEnd)
{
  v7 = extendEnd;
  if (function)
  {
    v8 = *(function + 5);
  }

  else
  {
    v8 = 0;
  }

  return CGShadingCreateAxialInternal(space, 0, 0, v8, function, extendStart, v7, v6, start.x, start.y, end.x, end.y);
}

uint64_t CGShadingCreateAxialWithContentHeadroom(CGColorSpace *a1, void *a2, uint64_t a3, uint64_t a4, float a5, double a6, double a7, double a8, double a9)
{
  if (CGColorSpaceGetModel(a1) != kCGColorSpaceModelRGB || !CGColorSpaceUsesITUR_2100TF(a1) && !CGColorSpaceUsesExtendedRange(a1))
  {
    return 0;
  }

  if (a2)
  {
    v19 = a2[5];
  }

  else
  {
    v19 = 0;
  }

  result = CGShadingCreateAxialInternal(a1, 0, 0, v19, a2, a3, a4, v18, a6, a7, a8, a9);
  v21 = 1.0;
  if (a5 >= 1.0 || a5 <= 0.0)
  {
    v21 = a5;
  }

  if (a5 < 0.0)
  {
    v21 = 0.0;
  }

  *(result + 96) = v21;
  return result;
}

uint64_t CGShadingCreateAxialWithGradient(void *a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  v21 = CFGetTypeID(a1);
  if (kCGGradientInterpolatesPremultiplied_block_invoke_once[0] != -1)
  {
    dispatch_once(kCGGradientInterpolatesPremultiplied_block_invoke_once, &__block_literal_global_18_14085);
  }

  if (v21 != CGGradientGetTypeID_gradient_type_id)
  {
    return 0;
  }

  if (a1)
  {
    v22 = a1[3];
  }

  else
  {
    v22 = 0;
  }

  Function = CGGradientGetFunction(a1, v14, v15, v16, v17, v18, v19, v20);
  if (Function)
  {
    v26 = *(Function + 5);
  }

  else
  {
    v26 = 0;
  }

  AxialInternal = CGShadingCreateAxialInternal(v22, 0, 0, v26, Function, a2, a3, v25, a4, a5, a6, a7);
  *(AxialInternal + 96) = CGGradientGetContentHeadroom(a1);
  return AxialInternal;
}

CGShadingRef CGShadingCreateRadial(CGColorSpaceRef space, CGPoint start, CGFloat startRadius, CGPoint end, CGFloat endRadius, CGFunctionRef function, BOOL extendStart, BOOL extendEnd)
{
  v9 = extendEnd;
  if (function)
  {
    v10 = *(function + 5);
  }

  else
  {
    v10 = 0;
  }

  return CGShadingCreateRadialInternal(space, 0, 0, v10, function, extendStart, v9, v8, start.x, start.y, startRadius, end.x, end.y, endRadius);
}

uint64_t CGShadingCreateRadialWithContentHeadroom(CGColorSpace *a1, void *a2, uint64_t a3, uint64_t a4, float a5, double a6, double a7, double a8, double a9, double a10, double a11)
{
  if (CGColorSpaceGetModel(a1) != kCGColorSpaceModelRGB || !CGColorSpaceUsesITUR_2100TF(a1) && !CGColorSpaceUsesExtendedRange(a1))
  {
    return 0;
  }

  if (a2)
  {
    v23 = a2[5];
  }

  else
  {
    v23 = 0;
  }

  result = CGShadingCreateRadialInternal(a1, 0, 0, v23, a2, a3, a4, v22, a6, a7, a8, a9, a10, a11);
  v25 = 1.0;
  if (a5 >= 1.0 || a5 <= 0.0)
  {
    v25 = a5;
  }

  if (a5 < 0.0)
  {
    v25 = 0.0;
  }

  *(result + 96) = v25;
  return result;
}

uint64_t CGShadingCreateRadialWithGradient(void *a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v25 = CFGetTypeID(a1);
  if (kCGGradientInterpolatesPremultiplied_block_invoke_once[0] != -1)
  {
    dispatch_once(kCGGradientInterpolatesPremultiplied_block_invoke_once, &__block_literal_global_18_14085);
  }

  if (v25 != CGGradientGetTypeID_gradient_type_id)
  {
    return 0;
  }

  if (a1)
  {
    v26 = a1[3];
  }

  else
  {
    v26 = 0;
  }

  Function = CGGradientGetFunction(a1, v18, v19, v20, v21, v22, v23, v24);
  if (Function)
  {
    v30 = *(Function + 5);
  }

  else
  {
    v30 = 0;
  }

  RadialInternal = CGShadingCreateRadialInternal(v26, 0, 0, v30, Function, a2, a3, v29, a4, a5, a6, a7, a8, a9);
  *(RadialInternal + 96) = CGGradientGetContentHeadroom(a1);
  return RadialInternal;
}

uint64_t CGShadingCreateConic(void *a1, void *a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (!a2 || !a1)
  {
    return 0;
  }

  v12 = *(a1[3] + 48);
  v13 = a2[6];
  if (v13 != v12 && v13 != v12 + 1)
  {
    return 0;
  }

  v18 = a2[5];
  Empty = CGShadingCreateEmpty(3, a1, 0, 0, a8, a9, a10, a11);
  *(Empty + 128) = a3;
  *(Empty + 136) = a4;
  *(Empty + 144) = a5;
  CFRetain(a2);
  *(Empty + 168) = a2;
  if (v18)
  {
    *(Empty + 152) = *v18;
    v20 = v18[1];
  }

  else
  {
    *(Empty + 152) = 0;
    v20 = 1.0;
  }

  *(Empty + 160) = v20;
  return Empty;
}

uint64_t CGShadingCreateCustom(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, _OWORD *a5, void *a6, uint64_t a7, uint64_t a8)
{
  Empty = 0;
  if (a1 && a6)
  {
    v11 = *(a1[3] + 48);
    v12 = a6[6];
    if (v12 == v11 || v12 == v11 + 1)
    {
      Empty = CGShadingCreateEmpty(4, a1, a2, a3, a5, a6, a7, a8);
      CFRetain(a6);
      *(Empty + 160) = a6;
      v16 = a5[1];
      v15 = a5[2];
      *(Empty + 168) = *a5;
      *(Empty + 184) = v16;
      *(Empty + 200) = v15;
      for (i = 16; i != 20; ++i)
      {
        v18 = *a4++;
        *(Empty + 8 * i) = v18;
      }
    }

    else
    {
      return 0;
    }
  }

  return Empty;
}

CGShadingRef CGShadingRetain(CGShadingRef shading)
{
  if (shading)
  {
    CFRetain(shading);
  }

  return shading;
}

void CGShadingRelease(CGShadingRef shading)
{
  if (shading)
  {
    CFRelease(shading);
  }
}

CGFloat CGShadingGetBounds(uint64_t a1)
{
  v1 = (a1 + 48);
  if (*(a1 + 40) != 1)
  {
    v1 = &CGRectInfinite;
  }

  return v1->origin.x;
}

uint64_t CGShadingGetDescriptor(uint64_t result)
{
  if (result)
  {
    if ((*(result + 20) - 1) >= 4)
    {
      return 0;
    }

    else
    {
      result += 128;
    }
  }

  return result;
}

uint64_t CGShadingSetAssociate(uint64_t result, unint64_t a2)
{
  if (result)
  {
    v2 = 0;
    atomic_compare_exchange_strong_explicit((result + 88), &v2, a2, memory_order_relaxed, memory_order_relaxed);
    return *(result + 88);
  }

  return result;
}

uint64_t CGShadingGetAssociate(uint64_t result)
{
  if (result)
  {
    return *(result + 88);
  }

  return result;
}

float CGShadingGetContentHeadroom(_DWORD *a1)
{
  v1 = 0.0;
  if (a1)
  {
    v3 = CFGetTypeID(a1);
    if (_block_invoke_once_10784 != -1)
    {
      dispatch_once(&_block_invoke_once_10784, &__block_literal_global_5_10785);
    }

    if (v3 == CGShadingGetTypeID_shading_type_id)
    {
      return *(a1 + 24);
    }
  }

  return v1;
}

CFTypeID CGShadingGetTypeID(void)
{
  if (_block_invoke_once_10784 != -1)
  {
    dispatch_once(&_block_invoke_once_10784, &__block_literal_global_5_10785);
  }

  return CGShadingGetTypeID_shading_type_id;
}

void CGShadingDrawInContextDelegate(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    if (*(a1 + 112))
    {
      v9 = CGContextCreateWithDelegateAndInfo(a2, 17, a3, a4, 0, 0, a7, a8);
      (*(a1 + 112))(*(a1 + 80), v9);
      if (v9)
      {

        CFRelease(v9);
      }
    }
  }
}

double cmap_yyensure_buffer_stack(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    v3 = a1[4];
    if (a1[3] >= (v3 - 1))
    {
      v4 = v3 + 8;
      v5 = malloc_type_realloc(v2, 8 * (v3 + 8), 0xB6775A77uLL);
      a1[5] = v5;
      if (v5)
      {
        v6 = &v5[8 * a1[4]];
        result = 0.0;
        *(v6 + 2) = 0u;
        *(v6 + 3) = 0u;
        *v6 = 0u;
        *(v6 + 1) = 0u;
        a1[4] = v4;
        return result;
      }

LABEL_8:
      fatal_scanner_error();
    }
  }

  else
  {
    v8 = malloc_type_malloc(8uLL, 0x4ADC8BA7uLL);
    a1[5] = v8;
    if (!v8)
    {
      goto LABEL_8;
    }

    *v8 = 0;
    result = 0.0;
    *(a1 + 3) = xmmword_18439C670;
  }

  return result;
}

uint64_t cmap_yy_create_buffer(uint64_t a1, uint64_t a2)
{
  v4 = malloc_type_malloc(0x48uLL, 0x4ADC8BA7uLL);
  if (!v4 || (v5 = v4, v4[3] = 0x4000, v6 = malloc_type_malloc(0x4002uLL, 0x4ADC8BA7uLL), (*(v5 + 8) = v6) == 0))
  {
    fatal_scanner_error();
  }

  *(v5 + 40) = 1;
  cmap_yy_init_buffer(v5, a1, a2);
  return v5;
}

uint64_t yy_get_previous_state(uint64_t a1)
{
  v1 = *(a1 + 84);
  v2 = *(a1 + 136);
  v3 = *(a1 + 72);
  if (v2 < v3)
  {
    do
    {
      if (*v2)
      {
        v4 = yy_ec[*v2];
      }

      else
      {
        v4 = 2u;
      }

      if (yy_accept[v1])
      {
        *(a1 + 112) = v1;
        *(a1 + 120) = v2;
      }

      v5 = v1;
      v6 = yy_base[v1] + v4;
      if (v1 != yy_chk[v6])
      {
        do
        {
          v5 = yy_def[v5];
          if (v5 >= 253)
          {
            v4 = yy_meta[v4];
          }

          v6 = yy_base[v5] + v4;
        }

        while (yy_chk[v6] != v5);
      }

      v1 = yy_nxt[v6];
      ++v2;
    }

    while (v2 != v3);
  }

  return v1;
}

int *cmap_yy_init_buffer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *__error();
  if (a1)
  {
    *(a1 + 32) = 0;
    **(a1 + 8) = 0;
    *(*(a1 + 8) + 1) = 0;
    *(a1 + 16) = *(a1 + 8);
    *(a1 + 48) = 1;
    *(a1 + 64) = 0;
    v7 = *(a3 + 40);
    if (v7)
    {
      v8 = *(v7 + 8 * *(a3 + 24));
    }

    else
    {
      v8 = 0;
    }

    if (v8 == a1)
    {
      v9 = *(a3 + 24);
      v10 = *(v7 + 8 * v9);
      *(a3 + 56) = *(v10 + 32);
      v11 = *(v10 + 16);
      *(a3 + 72) = v11;
      *(a3 + 136) = v11;
      *(a3 + 8) = **(v7 + 8 * v9);
      *(a3 + 48) = *v11;
      *a1 = a2;
      *(a1 + 60) = 1;
      goto LABEL_10;
    }
  }

  else
  {
    v7 = *(a3 + 40);
  }

  *a1 = a2;
  *(a1 + 60) = 1;
  if (v7)
  {
LABEL_10:
    v7 = *(v7 + 8 * *(a3 + 24));
  }

  if (v7 != a1)
  {
    *(a1 + 52) = 1;
  }

  *(a1 + 44) = 0;
  result = __error();
  *result = v6;
  return result;
}

void cmap_yy_delete_buffer(void **a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  if (v3)
  {
    v4 = *(v3 + 8 * *(a2 + 24));
  }

  else
  {
    v4 = 0;
  }

  if (v4 == a1)
  {
    *(v3 + 8 * *(a2 + 24)) = 0;
  }

  if (*(a1 + 10))
  {
    free(a1[1]);
  }

  free(a1);
}

char *CGPDFSecurityManagerCreateCryptFilter(uint64_t a1, char *__s1)
{
  v2 = __s1;
  if (!__s1)
  {
    return v2;
  }

  if (!strcmp(__s1, "Identity"))
  {
    v2 = malloc_type_calloc(1uLL, 0x18uLL, 0x10200409B6930F5uLL);
    __CFSetLastAllocationEventName();
    if (v2)
    {
      *v2 = a1;
      v2[12] = 1;
      *(v2 + 2) = 0;
      *(v2 + 2) = 0;
    }

    return v2;
  }

  value = 0;
  if (!CGPDFDictionaryGetDictionary(*(a1 + 24), v2, &value))
  {
    return 0;
  }

  v2 = value;
  if (value)
  {
    v11 = 0;
    __s1a = 0;
    v10 = 0;
    if (CGPDFDictionaryGetName(value, "CFM", &__s1a))
    {
      v4 = __s1a;
    }

    else
    {
      v4 = "None";
      __s1a = "None";
    }

    if (*v4 == 86 && v4[1] == 50 && !v4[2])
    {
      v5 = 1;
    }

    else if (!strcmp(v4, "AESV2"))
    {
      v5 = 2;
    }

    else
    {
      if (strcmp(v4, "AESV3"))
      {
        return 0;
      }

      v5 = 3;
    }

    if (CGPDFDictionaryGetInteger(v2, "Length", &v10))
    {
      v6 = v10;
      if ((v10 - 5) > 0x1B)
      {
        goto LABEL_24;
      }

      v6 = 8 * v10;
    }

    else
    {
      v6 = 128;
    }

    v10 = v6;
LABEL_24:
    if ((v6 - 40) > 0xD8 || (v6 & 7) != 0)
    {
      return 0;
    }

    if (CGPDFDictionaryGetName(v2, "AuthEvent", &v11))
    {
      v7 = v11;
    }

    else
    {
      v7 = "DocOpen";
      v11 = "DocOpen";
    }

    if (strcmp(v7, "DocOpen"))
    {
      return 0;
    }

    v2 = malloc_type_calloc(1uLL, 0x18uLL, 0x10200409B6930F5uLL);
    __CFSetLastAllocationEventName();
    if (v2)
    {
      *v2 = a1;
      *(v2 + 2) = v5;
      v2[12] = 0;
      *(v2 + 2) = v10 / 8;
    }
  }

  return v2;
}

uint64_t CGPDFSecurityManagerUnlock(uint64_t a1, _OWORD *a2, size_t a3)
{
  v3 = *(a1 + 16);
  if (v3 && (a2 || !a3))
  {
    pthread_mutex_lock(&lock);
    if (!CGPDFSecurityHandlerAuthenticateUserPassword(v3, a2, a3))
    {
      if (!CGPDFSecurityHandlerAuthenticateOwnerPassword(v3, a2, a3))
      {
        *(v3 + 184) = 0;
        *(v3 + 188) = 0;
LABEL_34:
        pthread_mutex_unlock(&lock);
        v6 = *(v3 + 184);
        return v6 & 1;
      }

      *(v3 + 184) = 257;
      v15 = 4095;
LABEL_33:
      *(v3 + 188) = v15;
      goto LABEL_34;
    }

    *(v3 + 184) = 1;
    if ((*v3 - 3) >= 4)
    {
      if (*v3 != 2)
      {
        LOWORD(v15) = 0;
LABEL_32:
        v15 = v15;
        goto LABEL_33;
      }

      v16 = *(v3 + 16);
      if ((v16 & 0x10) != 0)
      {
        v12 = (v16 << 29 >> 31) & 7 | 0x38;
      }

      else
      {
        v12 = (v16 << 29 >> 31) & 7;
      }

      if ((v16 & 8) != 0)
      {
        LOWORD(v12) = v12 | 0xC40;
        v17 = 960;
      }

      else
      {
        v17 = 832;
      }

      v13 = v12 | v17;
      v14 = (*(v3 + 16) & 0x20) == 0;
    }

    else
    {
      v7 = *(v3 + 16);
      if ((v7 & 0x800) != 0)
      {
        v8 = 7;
      }

      else
      {
        v8 = 3;
      }

      v9 = v8 & ((v7 << 29) >> 31);
      if ((v7 & 0x10) != 0)
      {
        v9 |= 0x28u;
      }

      v10 = v9 | (v7 >> 5) & 0x10;
      if ((v7 & 8) != 0)
      {
        v10 |= 0x840u;
        v11 = 960;
      }

      else
      {
        v11 = 832;
      }

      v12 = v10 | v11 & ((v7 << 26) >> 31);
      if ((v7 & 0x100) != 0)
      {
        LOWORD(v12) = v12 | 0x240;
      }

      v13 = v12 | 0x440;
      v14 = (*(v3 + 16) & 0x408) == 0;
    }

    if (v14)
    {
      LOWORD(v15) = v12;
    }

    else
    {
      LOWORD(v15) = v13;
    }

    goto LABEL_32;
  }

  v6 = 0;
  return v6 & 1;
}

uint64_t CGPDFSecurityManagerGetDecryptionKey(uint64_t a1, void *a2, void *a3)
{
  if (!a1)
  {
    return 0;
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  pthread_mutex_lock(&lock);
  v6 = *(v3 + 184);
  if (v6 == 1)
  {
    if (a2)
    {
      memcpy(a2, (v3 + 192), *(v3 + 8));
    }

    *a3 = *(v3 + 8);
  }

  pthread_mutex_unlock(&lock);
  return v6;
}

void *CGPDFSecurityManagerCreateDecryptor(uint64_t a1, uint64_t a2, char *__s1, void *a4)
{
  v4 = *(a1 + 16);
  if (!v4 || *(v4 + 184) != 1)
  {
    return 0;
  }

  if (a2)
  {
    v7 = *(a2 + 24);
    v8 = *(a2 + 32);
    if (__s1)
    {
LABEL_5:
      CryptFilter = CGPDFSecurityManagerCreateCryptFilter(a1, __s1);
      if (CryptFilter)
      {
        v10 = CryptFilter;
        Decryptor = CGPDFCryptFilterCreateDecryptor(CryptFilter, v7, v8, a4);
        free(v10);
        return Decryptor;
      }

      return 0;
    }
  }

  else
  {
    LODWORD(v7) = 0;
    v8 = 0;
    if (__s1)
    {
      goto LABEL_5;
    }
  }

  v13 = *(a1 + 32);

  return CGPDFCryptFilterCreateDecryptor(v13, v7, v8, a4);
}

CGContextRef CGBitmapContextCreateAdaptive(size_t a1, size_t a2, CFTypeRef cf, const void *a4, const void *a5, const void *a6, const void *a7, uint64_t a8)
{
  if (useDebugBitmap_predicate_10881 != -1)
  {
    dispatch_once(&useDebugBitmap_predicate_10881, &__block_literal_global_10882);
  }

  if (useDebugBitmap_use_bitmap_10883)
  {
    v15 = CGColorSpaceCreateWithName(@"kCGColorSpaceSRGB");
    return CGBitmapContextCreateWithData(0, a1, a2, 8uLL, 0, v15, 1u, 0, 0);
  }

  if (!cf || (v17 = CFGetTypeID(cf), v17 == CFDictionaryGetTypeID()))
  {
    if (a1 - 0x80000000 >= 0xFFFFFFFF80000001 && a2 - 0x80000000 >= 0xFFFFFFFF80000001)
    {
      v18 = malloc_type_calloc(1uLL, 0x48uLL, 0x10E00409E4AD1ABuLL);
      if (v18)
      {
        v19 = v18;
        v18->i64[0] = a1;
        v18->i64[1] = a2;
        v18[1] = vdupq_n_s64(0x4052000000000000uLL);
        v18[2].i64[0] = _Block_copy(a4);
        *(v19 + 40) = _Block_copy(a5);
        *(v19 + 48) = _Block_copy(a6);
        *(v19 + 56) = _Block_copy(a7);
        if (cf)
        {
          v22 = CFRetain(cf);
        }

        else
        {
          v22 = 0;
        }

        *(v19 + 64) = v22;
        v23 = CGContextCreateWithDelegateAndInfo(0, 13, 0, 0, v19, adaptive_bitmap_context_context_finalize, v20, v21);
        if (!v23)
        {
          CGPostError("%s: failed to create btimap context with delegates.", v24, v25, v26, v27, v28, v29, v30, "CGBitmapContextCreateAdaptive");
          adaptive_bitmap_context_info_release(v19, v66, v67, v68, v69, v70, v71, v72);
          return v23;
        }

        v75 = *(v19 + 32);
        v76 = *(v19 + 48);
        v31 = *(v19 + 64);
        v77 = v31;
        v73 = *v19;
        v74 = *(v19 + 16);
        LODWORD(v78[0]) = 0;
        if (CGCFDictionaryGetInteger(v31, @"kCGAdaptiveMaximumBitDepth", v78))
        {
          v32 = v78[0];
        }

        else
        {
          v32 = 5;
        }

        Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
        v78[0] = 0;
        v78[1] = 0;
        v79 = vcvtq_f64_u64(*v19);
        CGDisplayList = CG::DisplayList::createCGDisplayList(0, v78, v34, v35, v36, v37, v38, v39);
        if (CGDisplayList)
        {
          v48 = CGDisplayList;
          v49 = CGDisplayListContextCreate(CGDisplayList, v41, v42, v43, v44, v45, v46, v47);
          if (v49)
          {
            v50 = v49;
            v51 = malloc_type_calloc(1uLL, 0x148uLL, 0x10E0040685F387CuLL);
            if (v51)
            {
              v52 = v51;
              *(v51 + 2) = v75;
              *(v51 + 3) = v76;
              *v51 = v73;
              *(v51 + 1) = v74;
              *(v51 + 8) = v77;
              *(v51 + 9) = v48;
              *(v51 + 10) = v50;
              *(v51 + 11) = 0;
              *(v51 + 24) = v32;
              *(v51 + 108) = 0;
              *(v51 + 100) = 0;
              *(v51 + 29) = 1;
              *(v51 + 15) = 850045863;
              *(v51 + 9) = 0u;
              *(v51 + 10) = 0u;
              *(v51 + 8) = 0u;
              *(v51 + 22) = 0;
              *(v51 + 23) = Mutable;
              *(v51 + 40) = 0;
              *(v51 + 18) = 0u;
              *(v51 + 19) = 0u;
              *(v51 + 16) = 0u;
              *(v51 + 17) = 0u;
              *(v51 + 14) = 0u;
              *(v51 + 15) = 0u;
              *(v51 + 12) = 0u;
              *(v51 + 13) = 0u;
              pthread_mutex_init((v51 + 120), 0);
              v60 = CGContextDelegateCreate(v52, v53, v54, v55, v56, v57, v58, v59);
              CGContextDelegateSetCallbacks(v60, &RIPAdaptiveBitmapContextCreate_callbacks, 19, v61, v62, v63, v64, v65);
              v23[5] = v60;
              if (v60)
              {
                return v23;
              }

              goto LABEL_30;
            }

            CFRelease(v48);
          }

          else
          {
            v50 = v48;
          }

          CFRelease(v50);
        }

        v23[5] = 0;
LABEL_30:
        CGPostError("%s: failed to create delegate.", v41, v42, v43, v44, v45, v46, v47, "CGBitmapContextCreateAdaptive");
        CFRelease(v23);
        return 0;
      }
    }
  }

  CGPostError("%s: failed to create CGAdaptiveContextInfo.", a2, cf, a4, a5, a6, a7, a8, "CGBitmapContextCreateAdaptive");
  return 0;
}

void adaptive_bitmap_context_info_release(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    _CGHandleAssert("adaptive_bitmap_context_info_release", 22, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/API/CGAdaptiveBitmapContext.c", "info", "info is NULL", a6, a7, a8, v10);
  }

  _Block_release(*(a1 + 32));
  _Block_release(*(a1 + 40));
  _Block_release(*(a1 + 48));
  _Block_release(*(a1 + 56));
  v9 = *(a1 + 64);
  if (v9)
  {
    CFRelease(v9);
  }

  free(a1);
}

void adaptive_bitmap_context_context_finalize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    if (*(a1 + 16) == 1129601108)
    {
      adaptive_bitmap_context_info_release(*(a1 + 32), a1, a3, a4, a5, a6, a7, a8);
    }

    else
    {
      handle_invalid_context("adaptive_bitmap_context_context_finalize", a1, a3, a4, a5, a6, a7, a8);
    }
  }
}

const void *__useDebugBitmap_block_invoke_10894()
{
  v1 = 0;
  result = get_BOOLean_property("CONTEXT_WITH_DELEGATES_USE_BITMAP", copy_local_domain_value, &v1);
  if (result)
  {
    useDebugBitmap_use_bitmap_10883 = v1;
  }

  return result;
}

CGFloat *cg_function_type2_create(CGPDFDictionary *a1)
{
  result = malloc_type_calloc(1uLL, 0x40uLL, 0x108004052750FCFuLL);
  if (result)
  {
    v3 = result;
    if (!CGPDFDictionaryGetNumbers(a1, "Domain", (result + 1), 2))
    {
      goto LABEL_21;
    }

    v10 = 0;
    v11 = 0;
    *v3 = 1;
    v4 = pdf_dictionary_copy_numbers(a1, "C0", &v11);
    *(v3 + 5) = v4;
    if (!v4)
    {
      v11 = 1;
      v5 = malloc_type_malloc(8uLL, 0x100004000313F17uLL);
      *(v3 + 5) = v5;
      if (!v5)
      {
        goto LABEL_21;
      }

      *v5 = 0;
    }

    if (v11)
    {
      *(v3 + 3) = v11;
      v6 = pdf_dictionary_copy_numbers(a1, "C1", &v11);
      *(v3 + 6) = v6;
      if (v6)
      {
        goto LABEL_10;
      }

      v11 = 1;
      v7 = malloc_type_malloc(8uLL, 0x100004000313F17uLL);
      *(v3 + 6) = v7;
      if (v7)
      {
        *v7 = 0x3FF0000000000000;
LABEL_10:
        if (v11 == *(v3 + 3))
        {
          if (CGPDFDictionaryGetNumber(a1, "N", &v10))
          {
            *(v3 + 7) = v10;
            v8 = pdf_dictionary_copy_numbers(a1, "Range", &v11);
            *(v3 + 4) = v8;
            v9 = *(v3 + 3);
            if (v8 && v11 != 2 * v9)
            {
            }

            else
            {
              result = CGFunctionCreate(v3, *v3, v3 + 1, v9, v8, &type2_callbacks);
              if (result)
              {
                return result;
              }

              pdf_error("unable to create Type 2 function.", v10);
            }
          }

          else
          {
          }
        }

        else
        {
        }
      }
    }

    else
    {
    }

LABEL_21:
    type2_release(v3);
    return 0;
  }

  return result;
}

void type2_release(void **a1)
{
  if (a1)
  {
    free(a1[4]);
    free(a1[5]);
    free(a1[6]);

    free(a1);
  }
}

void type2_evaluate(uint64_t a1, long double *a2, double *a3)
{
  if (a1)
  {
    v5 = *(a1 + 56);
    v6 = *a2;
    v7 = pow(*a2, v5);
    if (v5 == 1.0)
    {
      v7 = v6;
    }

    v8 = *(a1 + 24);
    if (v8)
    {
      v9 = *(a1 + 40);
      v10 = *(a1 + 48);
      do
      {
        v11 = *v9++;
        v12 = v11;
        v13 = *v10++;
        *a3++ = v12 + v7 * (v13 - v12);
        --v8;
      }

      while (v8);
    }
  }
}

uint64_t CGFontDefaultAllowsFontSmoothing()
{
  if (once != -1)
  {
    dispatch_once_f(&once, 0, get_font_rendering_defaults);
  }

  return allows_font_smoothing;
}

uint64_t CGFontDefaultGetAntialiasingStyle()
{
  if (once != -1)
  {
    dispatch_once_f(&once, 0, get_font_rendering_defaults);
  }

  return default_antialiasing_style;
}

uint64_t CGFontDefaultGetSmoothingStyle()
{
  if (once != -1)
  {
    dispatch_once_f(&once, 0, get_font_rendering_defaults);
  }

  return default_smoothing_style;
}

double CGFontDefaultGetSmoothingContrast()
{
  if (once != -1)
  {
    dispatch_once_f(&once, 0, get_font_rendering_defaults);
  }

  return 2.0;
}

double CGFontGetDilationParameters(double a1, uint64_t a2, double *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = a4;
  if (CGFontGetDilationParameters_defaultsOnce != -1)
  {
    dispatch_once_f(&CGFontGetDilationParameters_defaultsOnce, 0, get_glyph_debugging_defaults);
  }

  if ((v10 & 2) != 0)
  {
    v13 = (v10 >> 4) & 7;
    if (v13 <= 3)
    {
      if (((v10 >> 4) & 7) <= 1)
      {
        v14 = 0.0;
        if (v13 != 1)
        {
          goto LABEL_25;
        }

        goto LABEL_27;
      }

      if (v13 != 2)
      {
LABEL_18:
        v14 = 0.0120999999;
        goto LABEL_27;
      }

LABEL_22:
      v14 = 0.00798599981;
      goto LABEL_27;
    }

    if (((v10 >> 4) & 7) <= 5)
    {
      if (v13 == 4)
      {
        v14 = 0.0169399995;
      }

      else
      {
        v14 = 0.00124999997;
      }

      goto LABEL_27;
    }

    if (v13 == 6)
    {
      v14 = 0.104999997;
      goto LABEL_27;
    }

LABEL_21:
    v14 = a1 * 0.300000012;
    goto LABEL_27;
  }

  v12 = ((v10 & 0xD80) - 128) >> 7;
  if (v12 > 6)
  {
    if (v12 - 7 >= 2)
    {
LABEL_25:
      abort();
    }

    goto LABEL_21;
  }

  if (!v12)
  {
    goto LABEL_22;
  }

  if (v12 != 1)
  {
    if (v12 != 2)
    {
      goto LABEL_25;
    }

    goto LABEL_18;
  }

  v14 = 0.0100429999;
LABEL_27:
  v15 = v14 * sqrt(fabs(a3[1] * a3[2] + *a3 * a3[3]));
  if (v15 <= 0.300000012)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0.300000012;
  }

  if (default_glyph_debugging == 1)
  {
    CGPostError("%s Effective dilation parameters are: dilation width = %f dilation height = %f", a3, a4, a5, a6, a7, a8, a9, "CGFontGetDilationParameters");
  }

  return v16;
}

const void *get_glyph_debugging_defaults()
{
  get_BOOLean_property("CGFontDebugGlyphBitmaps", copy_local_domain_value, &default_glyph_bitmap_debugging);

  return get_BOOLean_property("CGFontDebugGlyphs", copy_local_domain_value, &default_glyph_debugging);
}

uint64_t __cmyk_to_rgb_info_block_invoke()
{
  v0 = CGColorSpaceCreateWithName(@"kCGColorSpaceGenericCMYK");
  v1 = CGColorSpaceCreateWithName(@"kCGColorSpaceSRGB");
  cmyk_to_rgb_info_cmyk_to_rgb_standard = CGColorConversionInfoCreateFromListInternal(0, 0, v0, v2, 0, v3, v4, v5, v1);
  v6 = CGColorSpaceCreateWithName(@"kCGColorSpaceExtendedSRGB");
  result = CGColorConversionInfoCreateFromListInternal(0, 0, v0, v7, 0, v8, v9, v10, v6);
  cmyk_to_rgb_info_cmyk_to_rgb_extended = result;
  return result;
}

uint64_t __cmyk_to_gray_info_block_invoke()
{
  v0 = CGColorSpaceCreateWithName(@"kCGColorSpaceGenericCMYK");
  v1 = CGColorSpaceCreateWithName(@"kCGColorSpaceGenericGrayGamma2_2");
  result = CGColorConversionInfoCreateFromListInternal(0, 0, v0, v2, 0, v3, v4, v5, v1);
  cmyk_to_gray_info_cmyk_to_gray = result;
  return result;
}

uint64_t __rgb_to_cmyk_info_block_invoke()
{
  v0 = CGColorSpaceCreateWithName(@"kCGColorSpaceSRGB");
  v1 = CGColorSpaceCreateWithName(@"kCGColorSpaceGenericCMYK");
  result = CGColorConversionInfoCreateFromListInternal(0, 0, v0, v2, 0, v3, v4, v5, v1);
  rgb_to_cmyk_info_rgb_to_cmyk = result;
  return result;
}

uint64_t __rgb_to_gray_info_block_invoke()
{
  v0 = CGColorSpaceCreateWithName(@"kCGColorSpaceLinearSRGB");
  v1 = CGColorSpaceCreateWithName(@"kCGColorSpaceLinearGray");
  rgb_to_gray_info_rgb_to_gray_standard = CGColorConversionInfoCreateFromListInternal(0, 0, v0, v2, 0, v3, v4, v5, v1);
  v6 = CGColorSpaceCreateWithName(@"kCGColorSpaceExtendedLinearGray");
  v7 = CGColorSpaceCreateWithName(@"kCGColorSpaceExtendedLinearSRGB");
  result = CGColorConversionInfoCreateFromListInternal(0, 0, v7, v8, 0, v9, v10, v11, v6);
  rgb_to_gray_info_rgb_to_gray_extended = result;
  return result;
}

uint64_t __gray_to_cmyk_info_block_invoke()
{
  v0 = CGColorSpaceCreateWithName(@"kCGColorSpaceGenericGrayGamma2_2");
  v1 = CGColorSpaceCreateWithName(@"kCGColorSpaceGenericCMYK");
  result = CGColorConversionInfoCreateFromListInternal(0, 0, v0, v2, 0, v3, v4, v5, v1);
  gray_to_cmyk_info_gray_to_cmyk = result;
  return result;
}

uint64_t __gray_to_rgb_info_block_invoke()
{
  v0 = CGColorSpaceCreateWithName(@"kCGColorSpaceLinearGray");
  v1 = CGColorSpaceCreateWithName(@"kCGColorSpaceLinearSRGB");
  gray_to_rgb_info_gray_to_rgb_standard = CGColorConversionInfoCreateFromListInternal(0, 0, v0, v2, 0, v3, v4, v5, v1);
  v6 = CGColorSpaceCreateWithName(@"kCGColorSpaceExtendedLinearGray");
  v7 = CGColorSpaceCreateWithName(@"kCGColorSpaceExtendedLinearSRGB");
  result = CGColorConversionInfoCreateFromListInternal(0, 0, v6, v8, 0, v9, v10, v11, v7);
  gray_to_rgb_info_gray_to_rgb_extended = result;
  return result;
}

void rle_filter_finalize(const void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      CFRelease(v2);
    }

    free(a1);
  }
}

uint64_t rle_filter_refill(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  while (result + 128 < a3 && (*(a1 + 8) & 1) == 0)
  {
    v11 = CGPDFSourceGetc(*a1, a2, a3, a4, a5, a6, a7, a8);
    if (v11 == -1)
    {
      goto LABEL_17;
    }

    v12 = v11;
    if (v11 <= 127)
    {
      v13 = (v11 + 1);
      while (1)
      {
        v14 = CGPDFSourceGetc(*a1, a2, a3, a4, a5, a6, a7, a8);
        if (v14 == -1)
        {
          break;
        }

        v16 = *(a1 + 16);
        v15 = *(a1 + 24);
        *(a1 + 16) = v16 + 1;
        *(v15 + v16) = v14;
        if (!--v13)
        {
          goto LABEL_16;
        }
      }

LABEL_17:
      pdf_error("RunLengthDecode: encountered unexpected EOF.");
LABEL_18:
      *(a1 + 8) = 1;
      return *(a1 + 16);
    }

    if (v11 == 128)
    {
      goto LABEL_18;
    }

    v17 = CGPDFSourceGetc(*a1, a2, a3, a4, a5, a6, a7, a8);
    if (v17 == -1)
    {
      goto LABEL_17;
    }

    LODWORD(v18) = 257 - v12;
    if ((257 - v12) <= 1)
    {
      v18 = 1;
    }

    else
    {
      v18 = v18;
    }

    do
    {
      v20 = *(a1 + 16);
      v19 = *(a1 + 24);
      *(a1 + 16) = v20 + 1;
      *(v19 + v20) = v17;
      --v18;
    }

    while (v18);
LABEL_16:
    result = *(a1 + 16);
  }

  return result;
}

void *PDFImageSetCreate(uint64_t a1)
{
  v2 = malloc_type_calloc(1uLL, 0x28uLL, 0x10200401C8C6399uLL);
  __CFSetLastAllocationEventName();
  *v2 = a1;
  v2[1] = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, &image_key_callbacks, &image_callbacks);
  v2[2] = 0;
  *(v2 + 8) = 0;
  return v2;
}

atomic_uint *image_retain(uint64_t a1, atomic_uint *a2)
{
  result = a2;
  if (a2)
  {
    atomic_fetch_add_explicit(a2, 1u, memory_order_relaxed);
  }

  return result;
}

BOOL image_key_equal(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  result = CGColorEqualToColor(*(a1 + 16), *(a2 + 16));
  if (result)
  {
    return *(a1 + 8) == *(a2 + 8);
  }

  return result;
}

void image_key_release(int a1, void *a2)
{
  v3 = a2[2];
  if (v3)
  {
    CFRelease(v3);
  }

  free(a2);
}

_DWORD *image_key_retain(uint64_t a1, uint64_t a2)
{
  v3 = malloc_type_malloc(0x18uLL, 0x10200406E52F545uLL);
  v4 = v3;
  if (v3)
  {
    *v3 = *a2;
    v3[2] = *(a2 + 8);
    v5 = *(a2 + 16);
    if (v5)
    {
      CFRetain(v5);
    }

    *(v4 + 2) = v5;
  }

  return v4;
}

void PDFImageSetRelease(uint64_t a1)
{
  if (a1)
  {
    CFRelease(*(a1 + 8));
    CGOrderedSetRelease(*(a1 + 16));
    v2 = *(a1 + 24);
    if (v2)
    {
      CFRelease(v2);
    }

    free(a1);
  }
}

const void *add_image(uint64_t a1, uint64_t a2, const void *a3, int a4, unsigned int a5)
{
  Value = 0;
  if (a1 && a2)
  {
    if (add_image_predicate != -1)
    {
      dispatch_once(&add_image_predicate, &__block_literal_global_10959);
    }

    key[0] = add_image_f(a2);
    key[1] = a5;
    key[2] = a3;
    Value = CFDictionaryGetValue(*(a1 + 8), key);
    if (!Value)
    {
      if (a4)
      {
        v11 = *a1;
        v12 = *(a1 + 32) + 1;
        *(a1 + 32) = v12;
        v13 = a2;
        v14 = a3;
        v15 = a5;
        v16 = 1;
      }

      else
      {
        v17 = *(a1 + 24);
        if (v17)
        {
          v18 = CFDictionaryGetValue(v17, *(a2 + 24));
          if (v18)
          {
            v19 = v18;
            v11 = *a1;
            v12 = *(a1 + 32) + 1;
            *(a1 + 32) = v12;
            v13 = 0;
            v14 = 0;
            v15 = 0;
            v16 = 0;
LABEL_13:
            Value = create_image(v11, v13, v14, v15, v16, v19, v12);
            CFDictionarySetValue(*(a1 + 8), key, Value);
            v20 = *(a1 + 16);
            if (!v20)
            {
              v20 = CGOrderedSetCreate();
              *(a1 + 16) = v20;
            }

            CGOrderedSetAddValue(v20, Value);
            PDFImageRelease(Value);
            return Value;
          }
        }

        v11 = *a1;
        v12 = *(a1 + 32) + 1;
        *(a1 + 32) = v12;
        v13 = a2;
        v14 = 0;
        v15 = a5;
        v16 = 0;
      }

      v19 = 0;
      goto LABEL_13;
    }
  }

  return Value;
}

void *__add_image_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (CGLibraryLoadImageIODYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadImageIODYLD_once, &__block_literal_global_5_22103);
  }

  if (!CGLibraryLoadImageIODYLD_handle)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 28, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "handle != NULL", "Handle for %s failed to load", a6, a7, a8, "CGImageGetHash");
  }

  result = dlsym(CGLibraryLoadImageIODYLD_handle, "CGImageGetHash");
  if (!result)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 30, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "ptr != NULL", "Could not find symbol %s in library handle %p", v9, v10, v11, "CGImageGetHash");
  }

  add_image_f = result;
  return result;
}

uint64_t PDFImageSetEmitDefinitions(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 16);
    if (v2)
    {
      do
      {
        *(v1 + 16) = 0;
        v3 = *(v2 + 8);
        v4.length = CFArrayGetCount(v3);
        v4.location = 0;
        CFArrayApplyFunction(v3, v4, emit_image_definition, 0);
        CGOrderedSetRelease(v2);
        v2 = *(v1 + 16);
      }

      while (v2);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void emit_image_definition(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1;
  v9 = *(a1 + 48);
  if (!v9)
  {
    goto LABEL_19;
  }

  EPSRep = CGImageGetEPSRep(*(a1 + 48));
  if (EPSRep)
  {
    v11 = EPSRep;
    v12 = *(v8 + 8);
    v13 = PDFXRefTableAddObject(*(v12 + 504));
    v14 = PDFStreamCreateWithObjectNumber(v12, v13);
    v21 = v14;
    if (v14)
    {
      v22 = v14[1];
      v23 = v22;
    }

    else
    {
      v23 = 0;
      v22 = MEMORY[8];
    }

    *(v8 + 56) = v23;
    PDFDocumentBeginObject(*v14, v22, v15, v16, v17, v18, v19, v20);
    PDFDocumentPrintf(*v21, "<<", v24, v25, v26, v27, v28, v29, decode);
    PDFDocumentPrintf(*(v8 + 8), "/Type /AAPL:EPSData", v30, v31, v32, v33, v34, v35, decodec);
    PDFStreamBeginData(v21);
    v36 = v11[2];
    v37 = malloc_type_malloc(0x5000uLL, 0xE0DAC87uLL);
    v43 = CGAccessSessionCreate(v36);
    while (1)
    {
      Bytes = CGAccessSessionGetBytes(v43, v37, 20480, v38, v39, v40, v41, v42);
      if (!Bytes)
      {
        break;
      }

      CGDataConsumerPutBytes(v21[3], v37, Bytes);
    }

    CGAccessSessionRelease(v43);
    free(v37);
    PDFStreamEndData(v21);
    PDFStreamEnd(v21);
    PDFStreamRelease(v21);
    v9 = v11[3];
    if (!v9)
    {
      goto LABEL_19;
    }
  }

  v45 = *(v9 + 36);
  if ((v45 & 0x2000000) != 0)
  {
    if (*(v9 + 56) < 2uLL)
    {
      v116 = *(v8 + 16);
      PDFDocumentBeginObject(*v116, *(v116 + 8), a3, a4, a5, a6, a7, a8);
      PDFDocumentPrintf(*v116, "<<", v117, v118, v119, v120, v121, v122, decode);
      PDFDocumentPrintf(*(v8 + 8), "/Type /XObject", v123, v124, v125, v126, v127, v128, decodei);
      PDFDocumentPrintf(*(v8 + 8), "/Subtype /Image", v129, v130, v131, v132, v133, v134, decodej);
      PDFDocumentPrintf(*(v8 + 8), "/Width %z", v135, v136, v137, v138, v139, v140, *(v9 + 40));
      PDFDocumentPrintf(*(v8 + 8), "/Height %z", v141, v142, v143, v144, v145, v146, *(v9 + 48));
      PDFDocumentPrintf(*(v8 + 8), "/ImageMask true", v147, v148, v149, v150, v151, v152, decodek);
      emit_interpolation(v8, v153, v154, v155, v156, v157, v158, v159, decodel);
      v160 = CGImageGetDecode(v9);
      emit_decode(v8, v160, 2, v161, v162, v163, v164, v165, decodem);
      if (*(v8 + 104) != -1)
      {
        PDFDocumentPrintf(*(v8 + 8), "/StructParent %d", v166, v167, v168, v169, v170, v171, *(v8 + 104));
      }

      if (*(v8 + 73) == 1)
      {
        goto LABEL_44;
      }

      v172 = v8;
      v173 = v9;
      if (*(v8 + 74) == 1)
      {
LABEL_47:
        emit_jpeg2000_data(v172, v173, v166, v167, v168, v169, v170, v171);
        goto LABEL_50;
      }

LABEL_49:
      PDFImageEmitData(v172, v173);
      goto LABEL_50;
    }

    pdf_error("unsupported image mask: bits/component > 1.");
LABEL_19:
    emit_empty_image(v8, a2, a3, a4, a5, a6, a7, a8);
    goto LABEL_207;
  }

  if (*(v8 + 72) == 1)
  {
    v46 = *(v8 + 16);
    PDFDocumentBeginObject(*v46, *(v46 + 8), a3, a4, a5, a6, a7, a8);
    PDFDocumentPrintf(*v46, "<<", v47, v48, v49, v50, v51, v52, decode);
    PDFDocumentPrintf(*(v8 + 8), "/Type /XObject", v53, v54, v55, v56, v57, v58, decoded);
    PDFDocumentPrintf(*(v8 + 8), "/Subtype /Image", v59, v60, v61, v62, v63, v64, decodee);
    PDFDocumentPrintf(*(v8 + 8), "/Width %z", v65, v66, v67, v68, v69, v70, *(v9 + 40));
    PDFDocumentPrintf(*(v8 + 8), "/Height %z", v71, v72, v73, v74, v75, v76, *(v9 + 48));
    PDFDocumentPrintf(*(v8 + 8), "/ColorSpace /DeviceGray", v77, v78, v79, v80, v81, v82, decodef);
    emit_interpolation(v8, v83, v84, v85, v86, v87, v88, v89, decodeg);
    v90 = CGImageGetDecode(v9);
    emit_decode(v8, v90, 2, v91, v92, v93, v94, v95, decodeh);
    if (*(v8 + 104) != -1)
    {
      PDFDocumentPrintf(*(v8 + 8), "/StructParent %d", v97, v98, v99, v100, v101, v102, *(v8 + 104));
    }

    v103 = *(v8 + 64);
    if (v103)
    {
      if (v103 < 0)
      {
        NumberOfComponents = CGTaggedColorGetNumberOfComponents(v103, v96, v97, v98, v99, v100, v101, v102);
        v103 = *(v8 + 64);
      }

      else
      {
        NumberOfComponents = *(v103 + 56);
      }

      Components = CGColorGetComponents(v103);
      PDFDocumentPrintf(*(v8 + 8), "/Matte [", v177, v178, v179, v180, v181, v182, decodea);
      v189 = NumberOfComponents - 1;
      if (NumberOfComponents != 1)
      {
        do
        {
          v190 = *Components++;
          PDFDocumentPrintf(*(v8 + 8), "%f", v183, v184, v185, v186, v187, v188, v190);
          --v189;
        }

        while (v189);
      }

      PDFDocumentPrintf(*(v8 + 8), "]", v183, v184, v185, v186, v187, v188, decodeb);
    }

    if (*(v8 + 73) == 1)
    {
      PDFDocumentPrintf(*(v8 + 8), "/BitsPerComponent %z", v97, v98, v99, v100, v101, v102, *(v9 + 56));
LABEL_44:
      emit_jpeg_data(v8);
LABEL_50:
      PDFStreamEnd(*(v8 + 16));
      goto LABEL_207;
    }

    if (*(v8 + 74) == 1)
    {
      PDFDocumentPrintf(*(v8 + 8), "/BitsPerComponent %z", v97, v98, v99, v100, v101, v102, *(v9 + 56));
      v172 = v8;
      v173 = v9;
      goto LABEL_47;
    }

    v172 = v8;
    v173 = v9;
    goto LABEL_49;
  }

  if ((*(v8 + 74) & 1) != 0 || (v45 & 0x4000000) == 0)
  {
    v174 = v8;
    v175 = v9;
LABEL_206:
    emit_image(v174, v175, a3, a4, a5, a6, a7, a8);
    goto LABEL_207;
  }

  PixelComponentType = CGImageGetPixelComponentType(v9);
  if (PixelComponentType == 3 || !PixelComponentType)
  {
    PixelComponentType = CGImageGetUpscaledComponentType(v9);
  }

  if (PixelComponentType - 6 >= 0xFFFFFFFFFFFFFFFCLL)
  {
    v106 = 2;
  }

  else
  {
    v106 = PixelComponentType;
  }

  if (!*(v9 + 176))
  {
    memset(__src, 0, 304);
    CGBitmapPixelInfoInitializeWithImage(__src, __src, v9);
    if ((v106 - 6) >= 0xFFFFFFFFFFFFFFFDLL)
    {
      _CGHandleAssert("stream_create_from_image_without_softmask", 284, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageStream.c", "preblended ? CGPixelComponentLessThanOrEqual(pixel_component_type, kCGPixelComponent8BitInteger) : CGPixelComponentLessThanOrEqual(pixel_component_type, kCGPixelComponent16BitInteger)", "preblended %d", v195, v196, v197, 0);
    }

    LODWORD(__src[0]) = v106;
    *(&__src[0] + 1) = CGPixelComponentGetBitsPerComponent(v106, v191, v192, v193, v194, v195, v196, v197);
    if (v106 == 2)
    {
      v198 = 12288;
    }

    else
    {
      v198 = 0;
    }

    if ((*(v9 + 36) & 0xC000000) != 0)
    {
      v199 = 3;
    }

    else
    {
      v199 = 0;
    }

    *(&__src[1] + 1) = __PAIR64__(v198, v199);
    v200 = *(v9 + 40);
    v201 = *(v9 + 48);
    memcpy(__dst, __src, 0x130uLL);
    v209 = (CGBitmapPixelInfoGetBitsPerPixel(__dst, v202, v203, v204, v205, v206, v207, v208) * v200 + 7) >> 3;
    v210 = (*(&__src[0] + 1) * v200 + 7) >> 3;
    RenderingIntent = CGImageGetRenderingIntent(v9);
    memcpy(__dst, __src, 0x130uLL);
    v212 = CGDataProviderCreateForDestinationWithImage(0, __dst, v200, v201, v9, RenderingIntent, 0);
    v213 = v212;
    if (v212 && (v214 = *(v212 + 168)) != 0)
    {
      v215 = v214(*(v212 + 24));
    }

    else
    {
      v215 = 0;
    }

    ColorSpace = CGImageGetColorSpace(v9);
    if (DWORD2(__src[1]))
    {
      v269 = v210;
    }

    else
    {
      v269 = 0;
    }

    memcpy(__dst, __src, 0x130uLL);
    image_stream = create_image_stream(ColorSpace, __dst, 0, v200, v201, v209, v269, v209, v269, v215, 0, v213, 0, 0);
    goto LABEL_116;
  }

  Mask = CGImageGetMask(v9);
  if (!Mask)
  {
    _CGHandleAssert("stream_create_from_image_with_softmask", 449, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageStream.c", "mask != NULL", "mask missing", v108, v109, v110, decode);
  }

  v111 = Mask;
  v112 = CGImageGetPixelComponentType(v9);
  v113 = CGImageGetPixelComponentType(v9);
  v114 = CGImageGetPixelComponentType(v111);
  v115 = *(v9 + 40) != *(v111 + 40) || *(v9 + 48) != *(v111 + 48);
  v216 = *(v9 + 36);
  if ((v216 & 0x4000000) == 0)
  {
    v217 = (v216 >> 27) & 1;
    if (v112 != v106)
    {
      v217 = 1;
    }

    if (((v217 | v115) & 1) == 0 && v113 == v114)
    {
      v218 = CGImageGetMask(v9);
      memset(__src, 0, 304);
      CGBitmapPixelInfoInitializeWithImage(__src, __src, v9);
      memset(__dst, 0, 304);
      CGBitmapPixelInfoInitializeWithImage(__dst, __dst, v218);
      if (CGImageGetPixelComponentType(v9) - 6 >= 0xFFFFFFFFFFFFFFFDLL)
      {
        v381 = CGImageGetPixelComponentType(v9);
        _CGHandleAssert("stream_create_from_image_and_softmask_providers", 329, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageStream.c", "CGPixelComponentLessThanOrEqual(CGImageGetPixelComponentType(image), kCGPixelComponent16BitInteger)", "type %d", v382, v383, v384, v381);
      }

      if (CGImageGetPixelComponentType(v218) - 6 >= 0xFFFFFFFFFFFFFFFDLL)
      {
        v385 = CGImageGetPixelComponentType(v218);
        _CGHandleAssert("stream_create_from_image_and_softmask_providers", 330, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageStream.c", "CGPixelComponentLessThanOrEqual(CGImageGetPixelComponentType(smask), kCGPixelComponent16BitInteger)", "mask %d", v386, v387, v388, v385);
      }

      LODWORD(__src[0]) = v106;
      *(&__src[0] + 1) = CGPixelComponentGetBitsPerComponent(v106, v219, v220, v221, v222, v223, v224, v225);
      if (CGImageGetPixelComponentType(v9) == 2)
      {
        v233 = 12288;
      }

      else
      {
        v233 = 0;
      }

      HIDWORD(__src[1]) = v233;
      if (DWORD2(__src[1]))
      {
        _CGHandleAssert("stream_create_from_image_and_softmask_providers", 340, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageStream.c", "image_info.alpha_info == kCGImageAlphaNone", "alpha %d", v230, v231, v232, SBYTE8(__src[1]));
      }

      LODWORD(__dst[0]) = v106;
      *(&__src[0] + 1) = CGPixelComponentGetBitsPerComponent(v106, v226, v227, v228, v229, v230, v231, v232);
      if (CGImageGetPixelComponentType(v218) == 2)
      {
        v234 = 12288;
      }

      else
      {
        v234 = 0;
      }

      HIDWORD(__dst[1]) = v234;
      v235 = *(v9 + 40);
      v236 = *(v9 + 48);
      memcpy(v414, __src, sizeof(v414));
      v244 = (CGBitmapPixelInfoGetBitsPerPixel(v414, v237, v238, v239, v240, v241, v242, v243) * v235 + 7) >> 3;
      v245 = *(&__src[0] + 1) * v235 + 7;
      v246 = CGImageGetRenderingIntent(v9);
      memcpy(v414, __src, sizeof(v414));
      v247 = CGDataProviderCreateForDestinationWithImage(0, v414, v235, v236, v9, v246, 0);
      v248 = CGImageGetRenderingIntent(v218);
      memcpy(v414, __dst, sizeof(v414));
      v249 = CGDataProviderCreateForDestinationWithImage(0, v414, v235, v236, v218, v248, 0);
      provider = v244;
      if (v247 && (v250 = *(v247 + 21)) != 0)
      {
        v409 = v250(*(v247 + 3));
      }

      else
      {
        v409 = 0;
      }

      v271 = v245 >> 3;
      v272 = v9;
      if (v249 && (v273 = *(v249 + 21)) != 0)
      {
        v274 = v273(*(v249 + 3));
      }

      else
      {
        v274 = 0;
      }

      v275 = CGImageGetColorSpace(v272);
      Matte = CGImageGetMatte(v272);
      memcpy(v414, __src, sizeof(v414));
      v403 = v274;
      v9 = v272;
      v267 = create_image_stream(v275, v414, 0, v235, v236, provider, v271, provider, v271, v409, v403, v247, v249, Matte);
      CGDataProviderRelease(v247);
      v277 = v249;
      goto LABEL_117;
    }
  }

  if ((v106 - 3) >= 3)
  {
    v251 = v106;
  }

  else
  {
    v251 = 2;
  }

  if ((v106 - 6) < 0xFFFFFFFFFFFFFFFBLL)
  {
    v252 = 1;
  }

  else
  {
    v252 = v251;
  }

  v253 = CGImageGetMask(v9);
  v254 = CGImageGetMatte(v9);
  memset(__src, 0, 304);
  CGBitmapPixelInfoInitializeWithImage(__src, __src, v9);
  DWORD2(__src[1]) = 3;
  LODWORD(__src[0]) = v252;
  *(&__src[0] + 1) = CGPixelComponentGetBitsPerComponent(v252, v255, v256, v257, v258, v259, v260, v261);
  if (v252 == 2)
  {
    v262 = 12288;
  }

  else
  {
    v262 = 0;
  }

  HIDWORD(__src[1]) = v262;
  v263 = *(v9 + 40);
  v264 = *(v9 + 48);
  if (!v253)
  {
LABEL_107:
    v278 = CGImageGetRenderingIntent(v9);
    memcpy(__dst, __src, 0x130uLL);
    v213 = CGDataProviderCreateWithSoftMaskAndMatte(0, __dst, v263, v264, v9, v278);
    memcpy(__dst, __src, 0x130uLL);
    v286 = (CGBitmapPixelInfoGetBitsPerPixel(__dst, v279, v280, v281, v282, v283, v284, v285) * v263 + 7) >> 3;
    if (v213)
    {
      v287 = *(v213 + 21);
      if (v287)
      {
        v288 = v287(*(v213 + 3));
      }

      else
      {
        v288 = 0;
      }

      v289 = *(v213 + 22);
      if (v289)
      {
        v290 = v289(*(v213 + 3));
LABEL_115:
        v291 = v9;
        v292 = CGImageGetColorSpace(v9);
        memcpy(__dst, __src, 0x130uLL);
        v293 = v292;
        v9 = v291;
        image_stream = create_image_stream(v293, __dst, 1, v263, v264, v286, v286, v286, v286, v288, v290, v213, 0, v254);
LABEL_116:
        v267 = image_stream;
        v277 = v213;
LABEL_117:
        CGDataProviderRelease(v277);
        goto LABEL_118;
      }
    }

    else
    {
      v288 = 0;
    }

    v290 = 0;
    goto LABEL_115;
  }

  v265 = v253[5];
  if (v265 - 0x4000000 >= 0xFFFFFFFFFC000001)
  {
    v266 = v253[6];
    if (v266 - 0x4000000 >= 0xFFFFFFFFFC000001)
    {
      if (v265 > v263)
      {
        v263 = v253[5];
      }

      if (v266 > v264)
      {
        v264 = v253[6];
      }

      goto LABEL_107;
    }
  }

  v267 = 0;
LABEL_118:
  if (!v267)
  {
    goto LABEL_205;
  }

  v294 = (*(v267 + 2) * *(v267 + 3) * *(v267 + 39) + 7) >> 3;
  v295 = *MEMORY[0x1E695E480];
  Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], v294 * *(v267 + 40));
  if (!Mutable)
  {
    goto LABEL_205;
  }

  v297 = Mutable;
  if (!*(v267 + 42))
  {
    image = v9;
    v405 = v8;
    v298 = 0;
    v300 = 0;
    goto LABEL_124;
  }

  v298 = (*(v267 + 39) * *(v267 + 2) + 7) >> 3;
  v299 = CFDataCreateMutable(v295, v298 * *(v267 + 40));
  if (!v299)
  {
    CFRelease(v297);
LABEL_205:
    v174 = v8;
    v175 = 0;
    goto LABEL_206;
  }

  v300 = v299;
  image = v9;
  v405 = v8;
LABEL_124:
  for (providera = 0; ; providera = (providera + v312))
  {
    v301 = *(v267 + 40);
    v302 = v301 > providera;
    v303 = v301 - providera;
    if (!v302)
    {
      break;
    }

    if (v303 >= *(v267 + 43))
    {
      v304 = *(v267 + 43);
    }

    else
    {
      v304 = v303;
    }

    if (v267[521] == 1)
    {
      v305 = *(v267 + 67) == 0;
      v306 = (v267 + 384);
      if (*(v267 + 67))
      {
        v306 = (v267 + 368);
      }
    }

    else
    {
      v305 = 0;
      v306 = (v267 + 368);
    }

    ChunksAtPosition = CGAccessSessionGetChunksAtPosition(*(v267 + 84), *(v267 + 44) * providera, *(v267 + 41), *(v267 + 44) - *(v267 + 41), v304, *v306, 0, a8);
    v308 = *(v267 + 41);
    v309 = ChunksAtPosition + v308 - 1;
    if (v308 <= 1)
    {
      v310 = 1;
    }

    else
    {
      v310 = *(v267 + 41);
    }

    v311 = *(v267 + 85);
    v312 = v309 / v310;
    if (v311)
    {
      v313 = v304;
      v314 = v309;
      v315 = CGAccessSessionGetChunksAtPosition(v311, *(v267 + 45) * providera, *(v267 + 42), *(v267 + 45) - *(v267 + 42), v313, *(v267 + 47), 0, v309);
      v309 = v314;
      v318 = (v315 + *(v267 + 42) - 1) / *(v267 + 42);
      if (v318 != v312)
      {
        _CGHandleAssert("CGImageStreamRead", 576, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageStream.c", "smask_rows_read == rows_read", "%zu %zu", v316, v317, v314, v318);
      }
    }

    if (!v305)
    {
      goto LABEL_187;
    }

    v406 = *(v267 + 48);
    v407 = v310;
    v319 = *(v267 + 39);
    v408 = v309;
    memcpy(&__src[2] + 8, v267 + 696, 0x130uLL);
    v320 = *(v267 + 41);
    v321 = v298;
    v322 = *(v267 + 46);
    memcpy(&__dst[2] + 8, v267 + 1000, 0x130uLL);
    v323 = *(v267 + 86);
    *&__src[0] = v406;
    *(&__src[0] + 1) = v319;
    *&__src[1] = v312;
    *(&__src[1] + 1) = v320;
    *&__src[2] = 0;
    *&__dst[0] = v322;
    *(&__dst[0] + 1) = v319;
    v298 = v321;
    *&__dst[1] = v312;
    *(&__dst[1] + 1) = v320;
    *&__dst[2] = 0;
    vImageConverterConvert(v323, __src, __dst, 0);
    v310 = v407;
    v309 = v408;
    if (v407 > v408)
    {
      goto LABEL_187;
    }

    v324 = 0;
    v325 = *(v267 + 89);
    v326 = *(v267 + 88);
    v328 = *(v267 + 47);
    v327 = *(v267 + 48);
    v329 = v326 - 24;
    do
    {
      v330 = *(v267 + 39);
      if (!v330)
      {
        goto LABEL_186;
      }

      LODWORD(j) = 0;
      v332 = 0;
      v333 = 0;
      LODWORD(v334) = 0;
      v335 = 0;
      v336 = v328;
      v337 = v327;
      do
      {
        if (v325)
        {
          for (i = 0; i != v325; ++i)
          {
            if (v326 < 0x19)
            {
              v342 = v326;
            }

            else
            {
              if (v334 > 0x17)
              {
                v340 = v334;
              }

              else
              {
                do
                {
                  v339 = *v337++;
                  v335 = v339 | (v335 << 8);
                  v340 = v334 + 8;
                  v341 = v334 >= 0x10;
                  LODWORD(v334) = v334 + 8;
                }

                while (!v341);
              }

              LODWORD(v334) = v340 - 24;
              v342 = v326 - 24;
            }

            if (v342 > v334)
            {
              do
              {
                v343 = *v337++;
                v335 = v343 | (v335 << 8);
                v334 = (v334 + 8);
              }

              while (v342 > v334);
            }

            LODWORD(v334) = v334 - v342;
          }
        }

        if (v326 <= 0x18)
        {
          v346 = 0;
          v347 = v334;
          v348 = v326;
        }

        else
        {
          if (v334 > 0x17)
          {
            v345 = v334;
          }

          else
          {
            do
            {
              v344 = *v337++;
              v335 = v344 | (v335 << 8);
              v345 = v334 + 8;
              v341 = v334 >= 0x10;
              LODWORD(v334) = v334 + 8;
            }

            while (!v341);
          }

          v347 = (v345 - 24);
          v346 = ((v335 >> (v345 - 24)) & 0xFFFFFF) << v329;
          LODWORD(v334) = v347;
          v348 = v326 - 24;
        }

        if (v348 > v347)
        {
          do
          {
            v349 = *v337++;
            v335 = v349 | (v335 << 8);
            v334 = (v334 + 8);
          }

          while (v348 > v334);
        }

        LODWORD(v334) = v334 - v348;
        v350 = (v335 >> v334) & ~(-1 << v348) | v346;
        if (v326 < 0x19)
        {
          v351 = v326;
          if (j < 8)
          {
            goto LABEL_177;
          }
        }

        else
        {
          if (j >= 8)
          {
            for (j = j; j > 7; *v336++ = v333 >> j)
            {
              j -= 8;
            }
          }

          LODWORD(j) = j | 0x18;
          v333 = (v350 >> v329) & 0xFFFFFF | (v333 << 24);
          v351 = v326 - 24;
        }

        v352 = (j - 8);
        do
        {
          LODWORD(j) = j - 8;
          *v336++ = v333 >> v352;
          v352 -= 8;
        }

        while (j > 7);
        v330 = *(v267 + 39);
LABEL_177:
        v333 = (v333 << v351) | v350 & ~(-1 << v351);
        LODWORD(j) = j + v351;
        ++v332;
      }

      while (v332 < v330);
      if (v336 && j)
      {
        do
        {
          if (j < 8)
          {
            LODWORD(k) = j;
          }

          else
          {
            for (k = j; k > 7; *v336++ = v333 >> k)
            {
              k -= 8;
            }
          }

          v354 = -j & 7;
          v333 <<= v354;
          LODWORD(j) = k + v354;
        }

        while (j);
      }

LABEL_186:
      v327 += *(v267 + 41);
      v328 += *(v267 + 42);
      ++v324;
    }

    while (v324 != v312);
LABEL_187:
    if (v310 > v309)
    {
      break;
    }

    v355 = 0;
    do
    {
      CFDataAppendBytes(v297, (*(v267 + 46) + *(v267 + 41) * v355), v294);
      if (v300)
      {
        CFDataAppendBytes(v300, (*(v267 + 47) + *(v267 + 42) * v355), v298);
      }

      ++v355;
    }

    while (v312 != v355);
  }

  providerb = CGDataProviderCreateWithCFData(v297);
  CFRelease(v297);
  shouldInterpolate = CGImageGetShouldInterpolate(image);
  v356 = CGImageGetRenderingIntent(image);
  CopyWithStandardRange = CGColorSpaceCreateCopyWithStandardRange(*v267);
  v359 = *(v267 + 39);
  v358 = *(v267 + 40);
  v360 = *(v267 + 2);
  v361 = *(v267 + 3) * v360;
  memcpy(__src, v267 + 8, 0x130uLL);
  CGImageBitmapInfo = CGBitmapPixelInfoGetCGImageBitmapInfo(__src);
  v363 = CGImageCreate(v359, v358, v360, v361, v294, CopyWithStandardRange, CGImageBitmapInfo & 0xFFFFFFE0, providerb, *(v267 + 6), shouldInterpolate, v356);
  CGDataProviderRelease(providerb);
  CGColorSpaceRelease(CopyWithStandardRange);
  if (v300)
  {
    v364 = CGDataProviderCreateWithCFData(v300);
    CFRelease(v300);
    DeviceGray = CGColorSpaceCreateDeviceGray();
    v366 = *(v267 + 39);
    v367 = *(v267 + 40);
    v368 = *(v267 + 2);
    memcpy(__src, v267 + 8, 0x130uLL);
    v369 = CGBitmapPixelInfoGetCGImageBitmapInfo(__src);
    v370 = CGImageCreate(v366, v367, v368, v368, v298, DeviceGray, v369 & 0xFFFFFFE0, v364, 0, 0, kCGRenderingIntentDefault);
    CGColorSpaceRelease(DeviceGray);
    CGDataProviderRelease(v364);
    if (v267[520])
    {
      v371 = (v267 + 392);
    }

    else
    {
      v371 = 0;
    }

    v372 = CGImageCreateWithMaskAndMatte(v363, v370, v371);
    v8 = v405;
    if (v363)
    {
      CFRelease(v363);
    }

    if (v370)
    {
      CFRelease(v370);
    }
  }

  else
  {
    v372 = v363;
    v8 = v405;
  }

  CGImageStreamRelease(v267);
  emit_image(v8, v372, v373, v374, v375, v376, v377, v378);
  if (v372)
  {
    CFRelease(v372);
  }

LABEL_207:
  v379 = *(v8 + 48);
  if (v379)
  {
    CFRelease(v379);
  }

  *(v8 + 48) = 0;
  v380 = *(v8 + 80);
  if (v380)
  {
    CFRelease(v380);
    *(v8 + 80) = 0;
  }

  CGColorSpaceRelease(*(v8 + 88));
  *(v8 + 88) = 0;
}

char *CGContextCopyTopGState(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    v8 = *(a1 + 96);

    return CGGStateCreateCopy(v8);
  }

  else
  {
    handle_invalid_context("CGContextCopyTopGState", a1, a3, a4, a5, a6, a7, a8);
    return 0;
  }
}

void CGContextReplaceTopGState(CGContext *c, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (c)
  {
    if (*(c + 4) == 1129601108)
    {
      if (a2)
      {
        v10 = *(c + 13);
        v11 = v10[1];
        if (v11 != v10)
        {
          v13 = *v11;
          v12 = v11[1];
          *(v13 + 8) = v12;
          *v12 = v13;
          *v11 = v11;
          v11[1] = v11;
          CGGStateRelease(v11);
        }

        Copy = CGGStateCreateCopy(a2);
        v15 = v10[1];
        v10[1] = Copy;
        *Copy = v10;
        *v15 = Copy;
        *(Copy + 1) = v15;
        *(c + 12) = v10[1];
      }

      else
      {

        CGContextResetTopGState(c, 0, a3, a4, a5, a6, a7, a8);
      }

      return;
    }

    v16 = c;
  }

  else
  {
    v16 = 0;
  }

  handle_invalid_context("CGContextReplaceTopGState", v16, a3, a4, a5, a6, a7, a8);
}

void CGContextResetTopGState(CGContext *c, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (c)
  {
    if (*(c + 4) == 1129601108)
    {
      *(*(c + 12) + 24) = CGAffineTransformIdentity;
      CGContextResetClip(c);
      v9 = *(c + 12);

      CGGStateReset(v9);
      return;
    }

    v10 = c;
  }

  else
  {
    v10 = 0;
  }

  handle_invalid_context("CGContextResetTopGState", v10, a3, a4, a5, a6, a7, a8);
}

void CGContextResetClip(CGContextRef c)
{
  if (c && *(c + 4) == 1129601108)
  {
    CGGStateResetClip(*(c + 12));
  }

  else
  {
    handle_invalid_context("CGContextResetClip", c, v1, v2, v3, v4, v5, v6);
  }
}

void CGContextResetCTM(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    *(*(a1 + 96) + 24) = CGAffineTransformIdentity;
  }

  else
  {
    handle_invalid_context("CGContextResetCTM", a1, a3, a4, a5, a6, a7, a8);
  }
}

void CGContextSetCTM(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    if (*(a1 + 16) == 1129601108)
    {
      v8 = *(a1 + 96);
      v9 = *a2;
      v10 = a2[1];
      *(v8 + 56) = a2[2];
      *(v8 + 40) = v10;
      *(v8 + 24) = v9;
      return;
    }

    v11 = a1;
  }

  else
  {
    v11 = 0;
  }

  handle_invalid_context("CGContextSetCTM", v11, a3, a4, a5, a6, a7, a8);
}

void CGContextRotateCTM(CGContextRef c, CGFloat angle)
{
  if (c && *(c + 4) == 1129601108)
  {
    v9 = *(c + 12);
    v11 = *(v9 + 40);
    v12 = *(v9 + 24);
    v13 = *(v9 + 56);
    v10 = __sincos_stret(angle);
    *(v9 + 24) = vmlaq_n_f64(vmulq_n_f64(v11, v10.__sinval), v12, v10.__cosval);
    *(v9 + 40) = vmlsq_lane_f64(vmulq_n_f64(v11, v10.__cosval), v12, v10.__sinval, 0);
    *(v9 + 56) = vaddq_f64(v13, vmlaq_f64(vmulq_f64(v11, 0), 0, v12));
  }

  else
  {

    handle_invalid_context("CGContextRotateCTM", c, v2, v3, v4, v5, v6, v7);
  }
}

double CGContextGetLineWidth(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    return *(*(*(a1 + 96) + 128) + 8);
  }

  handle_invalid_context("CGContextGetLineWidth", a1, a3, a4, a5, a6, a7, a8);
  return 0.0;
}

uint64_t CGContextGetLineCap(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    return *(*(*(a1 + 96) + 128) + 2);
  }

  handle_invalid_context("CGContextGetLineCap", a1, a3, a4, a5, a6, a7, a8);
  return 0;
}

uint64_t CGContextGetLineJoin(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    return *(*(*(a1 + 96) + 128) + 3);
  }

  handle_invalid_context("CGContextGetLineJoin", a1, a3, a4, a5, a6, a7, a8);
  return 0;
}

double CGContextGetMiterLimit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    return *(*(*(a1 + 96) + 128) + 16);
  }

  handle_invalid_context("CGContextGetMiterLimit", a1, a3, a4, a5, a6, a7, a8);
  return 0.0;
}

uint64_t CGContextGetLineDashCount(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    v8 = *(*(*(a1 + 96) + 128) + 32);
    if (v8)
    {
      return *(v8 + 16);
    }
  }

  else
  {
    handle_invalid_context("CGContextGetLineDashCount", a1, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

double CGContextGetLineDashPattern(uint64_t a1, double *a2, double *a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double result)
{
  if (!a1)
  {
    v10 = 0;
LABEL_7:
    handle_invalid_context("CGContextGetLineDashPattern", v10, a3, a4, a5, a6, a7, a8);
    return result;
  }

  if (*(a1 + 16) != 1129601108)
  {
    v10 = a1;
    goto LABEL_7;
  }

  v9 = *(*(*(a1 + 96) + 128) + 32);
  if (a2)
  {
    if (v9)
    {
      result = *(v9 + 8);
    }

    else
    {
      result = 0.0;
    }

    *a2 = result;
  }

  if (v9)
  {
    v11 = *(v9 + 16);
  }

  else
  {
    v11 = 0;
  }

  if (v9)
  {
    v12 = (v9 + 24);
  }

  else
  {
    v12 = 0;
  }

  if (v11 >= a4)
  {
    v11 = a4;
  }

  for (; v11; --v11)
  {
    v13 = *v12++;
    result = v13;
    *a3++ = v13;
  }

  return result;
}

uint64_t CGContextGetRenderingIntent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    return ((*(*(*(a1 + 96) + 120) + 4) << 12) >> 28);
  }

  handle_invalid_context("CGContextGetRenderingIntent", a1, a3, a4, a5, a6, a7, a8);
  return 2;
}

uint64_t CGContextGetContentToneMappingInfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    return *(*(*(a1 + 96) + 120) + 56);
  }

  handle_invalid_context("CGContextGetContentToneMappingInfo", a1, a3, a4, a5, a6, a7, a8);
  return 0;
}

void CGContextSetContentToneMappingInfo(uint64_t a1, int a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    if (*(a1 + 16) == 1129601108)
    {
      CGGStateSetContentToneMappingInfo(*(a1 + 96), a2, a3);
      return;
    }

    v8 = a1;
  }

  else
  {
    v8 = 0;
  }

  handle_invalid_context("CGContextSetContentToneMappingInfo", v8, a3, a4, a5, a6, a7, a8);
}

uint64_t CGContextGetStrokeAdjust(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    v8 = *(*(*(a1 + 96) + 128) + 1);
  }

  else
  {
    handle_invalid_context("CGContextGetStrokeAdjust", a1, a3, a4, a5, a6, a7, a8);
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t CGContextGetFillColorAsColor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    v8 = *(a1 + 96);

    return CGGStateGetFillColor(v8);
  }

  else
  {
    handle_invalid_context("CGContextGetFillColorAsColor", a1, a3, a4, a5, a6, a7, a8);
    return 0;
  }
}

uint64_t CGContextGetStrokeColorAsColor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    v8 = *(a1 + 96);

    return CGGStateGetStrokeColor(v8);
  }

  else
  {
    handle_invalid_context("CGContextGetStrokeColorAsColor", a1, a3, a4, a5, a6, a7, a8);
    return 0;
  }
}

unint64_t CGContextGetFillColorSpace(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    result = CGGStateGetFillColor(*(a1 + 96));
    if (result)
    {
      if ((result & 0x8000000000000000) != 0)
      {

        return CGTaggedColorGetColorSpace(result, v9, v10, v11, v12, v13, v14, v15);
      }

      else
      {
        return *(result + 24);
      }
    }
  }

  else
  {
    handle_invalid_context("CGContextGetFillColorSpace", a1, a3, a4, a5, a6, a7, a8);
    return 0;
  }

  return result;
}

unint64_t CGContextGetStrokeColorSpace(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    result = CGGStateGetStrokeColor(*(a1 + 96));
    if (result)
    {
      if ((result & 0x8000000000000000) != 0)
      {

        return CGTaggedColorGetColorSpace(result, v9, v10, v11, v12, v13, v14, v15);
      }

      else
      {
        return *(result + 24);
      }
    }
  }

  else
  {
    handle_invalid_context("CGContextGetStrokeColorSpace", a1, a3, a4, a5, a6, a7, a8);
    return 0;
  }

  return result;
}

void CGContextGetFillColor(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    FillColor = CGGStateGetFillColor(*(a1 + 96));
    Components = CGColorGetComponents(FillColor);
    if (!FillColor)
    {
      return;
    }

    v18 = Components;
    if (FillColor < 0)
    {
      NumberOfComponents = CGTaggedColorGetNumberOfComponents(FillColor, v11, v12, v13, v14, v15, v16, v17);
      if (!NumberOfComponents)
      {
        return;
      }
    }

    else
    {
      NumberOfComponents = *(FillColor + 56);
      if (!NumberOfComponents)
      {
        return;
      }
    }

    do
    {
      v20 = *v18++;
      *a2++ = v20;
      --NumberOfComponents;
    }

    while (NumberOfComponents);
  }

  else
  {

    handle_invalid_context("CGContextGetFillColor", a1, a3, a4, a5, a6, a7, a8);
  }
}

void CGContextGetStrokeColor(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    StrokeColor = CGGStateGetStrokeColor(*(a1 + 96));
    Components = CGColorGetComponents(StrokeColor);
    if (!StrokeColor)
    {
      return;
    }

    v18 = Components;
    if (StrokeColor < 0)
    {
      NumberOfComponents = CGTaggedColorGetNumberOfComponents(StrokeColor, v11, v12, v13, v14, v15, v16, v17);
      if (!NumberOfComponents)
      {
        return;
      }
    }

    else
    {
      NumberOfComponents = *(StrokeColor + 56);
      if (!NumberOfComponents)
      {
        return;
      }
    }

    do
    {
      v20 = *v18++;
      *a2++ = v20;
      --NumberOfComponents;
    }

    while (NumberOfComponents);
  }

  else
  {

    handle_invalid_context("CGContextGetStrokeColor", a1, a3, a4, a5, a6, a7, a8);
  }
}

void CGContextSetFillPattern(CGContextRef c, CGPatternRef pattern, const CGFloat *components)
{
  if (c)
  {
    if (*(c + 4) == 1129601108)
    {
      if (!pattern || !components)
      {
        CGPostError("%s: pattern and components may not be NULL.", pattern, components, v3, v4, v5, v6, v7, "CGContextSetFillPattern");
        return;
      }

      FillColor = CGGStateGetFillColor(*(c + 12));
      if (FillColor)
      {
        v19 = FillColor;
        if ((FillColor & 0x8000000000000000) != 0)
        {
          ColorSpace = CGTaggedColorGetColorSpace(FillColor, v12, v13, v14, v15, v16, v17, v18);
          if (ColorSpace)
          {
            goto LABEL_8;
          }
        }

        else
        {
          ColorSpace = *(FillColor + 24);
          if (ColorSpace)
          {
LABEL_8:
            if (CGColorSpaceGetType(ColorSpace) == 9)
            {
              if ((CGColorEqualToColorComponents(v19, ColorSpace, pattern, components, v24, v25, v26, v27) & 1) == 0)
              {
                v28 = CGColorCreateWithPattern(ColorSpace, pattern, components);
                CGContextSetFillColorWithColor(c, v28);
                if (v28)
                {

                  CFRelease(v28);
                }
              }
            }

            else
            {
              CGPostError("%s: pattern specified with non-pattern color space.", v21, v22, v23, v24, v25, v26, v27, "CGContextSetFillPattern");
            }

            return;
          }
        }
      }

      CGPostError("%s: no color space specified for fill pattern.", v12, v13, v14, v15, v16, v17, v18, "CGContextSetFillPattern");
      return;
    }

    v29 = c;
  }

  else
  {
    v29 = 0;
  }

  handle_invalid_context("CGContextSetFillPattern", v29, components, v3, v4, v5, v6, v7);
}

uint64_t CGContextGetFillPattern(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1 || *(a1 + 16) != 1129601108)
  {
    handle_invalid_context("CGContextGetFillPattern", a1, a3, a4, a5, a6, a7, a8);
    return 0;
  }

  FillColor = CGGStateGetFillColor(*(a1 + 96));
  Components = CGColorGetComponents(FillColor);
  if (!FillColor)
  {
    return 0;
  }

  v18 = Components;
  if (FillColor < 0)
  {
    NumberOfComponents = CGTaggedColorGetNumberOfComponents(FillColor, v11, v12, v13, v14, v15, v16, v17);
    if (!NumberOfComponents)
    {
      goto LABEL_11;
    }
  }

  else
  {
    NumberOfComponents = *(FillColor + 56);
    if (!NumberOfComponents)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v21 = *v18++;
    *a2++ = v21;
    --NumberOfComponents;
  }

  while (NumberOfComponents);
LABEL_11:
  if (FillColor < 1)
  {
    return 0;
  }

  return *(FillColor + 32);
}

void CGContextSetStrokePattern(CGContextRef c, CGPatternRef pattern, const CGFloat *components)
{
  if (c)
  {
    if (*(c + 4) == 1129601108)
    {
      if (!pattern || !components)
      {
        CGPostError("%s: pattern and components may not be NULL.", pattern, components, v3, v4, v5, v6, v7, "CGContextSetStrokePattern");
        return;
      }

      StrokeColor = CGGStateGetStrokeColor(*(c + 12));
      if (StrokeColor)
      {
        v19 = StrokeColor;
        if ((StrokeColor & 0x8000000000000000) != 0)
        {
          ColorSpace = CGTaggedColorGetColorSpace(StrokeColor, v12, v13, v14, v15, v16, v17, v18);
          if (ColorSpace)
          {
            goto LABEL_8;
          }
        }

        else
        {
          ColorSpace = *(StrokeColor + 24);
          if (ColorSpace)
          {
LABEL_8:
            if (CGColorSpaceGetType(ColorSpace) == 9)
            {
              if ((CGColorEqualToColorComponents(v19, ColorSpace, pattern, components, v24, v25, v26, v27) & 1) == 0)
              {
                v28 = CGColorCreateWithPattern(ColorSpace, pattern, components);
                CGContextSetStrokeColorWithColor(c, v28);
                if (v28)
                {

                  CFRelease(v28);
                }
              }
            }

            else
            {
              CGPostError("%s: pattern specified with non-pattern color space.", v21, v22, v23, v24, v25, v26, v27, "CGContextSetStrokePattern");
            }

            return;
          }
        }
      }

      CGPostError("%s: no color space specified for stroke pattern.", v12, v13, v14, v15, v16, v17, v18, "CGContextSetStrokePattern");
      return;
    }

    v29 = c;
  }

  else
  {
    v29 = 0;
  }

  handle_invalid_context("CGContextSetStrokePattern", v29, components, v3, v4, v5, v6, v7);
}

uint64_t CGContextGetStrokePattern(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1 || *(a1 + 16) != 1129601108)
  {
    handle_invalid_context("CGContextGetStrokePattern", a1, a3, a4, a5, a6, a7, a8);
    return 0;
  }

  StrokeColor = CGGStateGetStrokeColor(*(a1 + 96));
  Components = CGColorGetComponents(StrokeColor);
  if (!StrokeColor)
  {
    return 0;
  }

  v18 = Components;
  if (StrokeColor < 0)
  {
    NumberOfComponents = CGTaggedColorGetNumberOfComponents(StrokeColor, v11, v12, v13, v14, v15, v16, v17);
    if (!NumberOfComponents)
    {
      goto LABEL_11;
    }
  }

  else
  {
    NumberOfComponents = *(StrokeColor + 56);
    if (!NumberOfComponents)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v21 = *v18++;
    *a2++ = v21;
    --NumberOfComponents;
  }

  while (NumberOfComponents);
LABEL_11:
  if (StrokeColor < 1)
  {
    return 0;
  }

  return *(StrokeColor + 32);
}

void CGContextSetGrayFillColor(CGContextRef c, CGFloat gray, CGFloat alpha)
{
  v18[2] = *MEMORY[0x1E69E9840];
  if (c)
  {
    if (*(c + 4) == 1129601108)
    {
      v18[0] = gray;
      v18[1] = alpha;
      DeviceGray = CGColorSpaceCreateDeviceGray();
      set_fill_color_with_components(c, DeviceGray, v18, v11, v12, v13, v14, v15, v17);
      CGColorSpaceRelease(DeviceGray);
      return;
    }

    v16 = c;
  }

  else
  {
    v16 = 0;
  }

  handle_invalid_context("CGContextSetGrayFillColor", v16, v3, v4, v5, v6, v7, v8);
}

void CGContextSetGrayStrokeColor(CGContextRef c, CGFloat gray, CGFloat alpha)
{
  v18[2] = *MEMORY[0x1E69E9840];
  if (c)
  {
    if (*(c + 4) == 1129601108)
    {
      v18[0] = gray;
      v18[1] = alpha;
      DeviceGray = CGColorSpaceCreateDeviceGray();
      set_stroke_color_with_components(c, DeviceGray, v18, v11, v12, v13, v14, v15, v17);
      CGColorSpaceRelease(DeviceGray);
      return;
    }

    v16 = c;
  }

  else
  {
    v16 = 0;
  }

  handle_invalid_context("CGContextSetGrayStrokeColor", v16, v3, v4, v5, v6, v7, v8);
}

void CGContextSetRGBStrokeColor(CGContextRef c, CGFloat red, CGFloat green, CGFloat blue, CGFloat alpha)
{
  v20[4] = *MEMORY[0x1E69E9840];
  if (c)
  {
    if (*(c + 4) == 1129601108)
    {
      v20[0] = red;
      v20[1] = green;
      v20[2] = blue;
      v20[3] = alpha;
      DeviceRGB = CGColorSpaceCreateDeviceRGB();
      set_stroke_color_with_components(c, DeviceRGB, v20, v13, v14, v15, v16, v17, v19);
      CGColorSpaceRelease(DeviceRGB);
      return;
    }

    v18 = c;
  }

  else
  {
    v18 = 0;
  }

  handle_invalid_context("CGContextSetRGBStrokeColor", v18, v5, v6, v7, v8, v9, v10);
}

void CGContextSetCMYKFillColor(CGContextRef c, CGFloat cyan, CGFloat magenta, CGFloat yellow, CGFloat black, CGFloat alpha)
{
  v20[5] = *MEMORY[0x1E69E9840];
  if (c)
  {
    if (*(c + 4) == 1129601108)
    {
      LOBYTE(v20[0]) = LOBYTE(cyan);
      v20[1] = magenta;
      v20[2] = yellow;
      v20[3] = black;
      v20[4] = alpha;
      DeviceCMYK = CGColorSpaceCreateDeviceCMYK();
      set_fill_color_with_components(c, DeviceCMYK, v20, v14, v15, v16, v17, v18, SLOBYTE(v20[0]));
      CGColorSpaceRelease(DeviceCMYK);
      return;
    }

    v19 = c;
  }

  else
  {
    v19 = 0;
  }

  handle_invalid_context("CGContextSetCMYKFillColor", v19, v6, v7, v8, v9, v10, v11);
}

void CGContextSetCMYKStrokeColor(CGContextRef c, CGFloat cyan, CGFloat magenta, CGFloat yellow, CGFloat black, CGFloat alpha)
{
  v20[5] = *MEMORY[0x1E69E9840];
  if (c)
  {
    if (*(c + 4) == 1129601108)
    {
      LOBYTE(v20[0]) = LOBYTE(cyan);
      v20[1] = magenta;
      v20[2] = yellow;
      v20[3] = black;
      v20[4] = alpha;
      DeviceCMYK = CGColorSpaceCreateDeviceCMYK();
      set_stroke_color_with_components(c, DeviceCMYK, v20, v14, v15, v16, v17, v18, SLOBYTE(v20[0]));
      CGColorSpaceRelease(DeviceCMYK);
      return;
    }

    v19 = c;
  }

  else
  {
    v19 = 0;
  }

  handle_invalid_context("CGContextSetCMYKStrokeColor", v19, v6, v7, v8, v9, v10, v11);
}

uint64_t CGContextGetFont(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    return *(*(*(a1 + 96) + 136) + 8);
  }

  handle_invalid_context("CGContextGetFont", a1, a3, a4, a5, a6, a7, a8);
  return 0;
}

double CGContextGetFontSize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    return *(*(*(a1 + 96) + 136) + 16);
  }

  handle_invalid_context("CGContextGetFontSize", a1, a3, a4, a5, a6, a7, a8);
  return 0.0;
}

double CGContextGetCharacterSpacing(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    return *(*(*(a1 + 96) + 136) + 24);
  }

  handle_invalid_context("CGContextGetCharacterSpacing", a1, a3, a4, a5, a6, a7, a8);
  return 0.0;
}

void CGContextSetCharacterSpacing(CGContextRef c, CGFloat spacing)
{
  if (c && *(c + 4) == 1129601108)
  {
    v10 = *(c + 12);
    if (*(*(v10 + 136) + 24) != spacing)
    {
      maybe_copy_text_state(*(c + 12));
      *(*(v10 + 136) + 24) = spacing;
    }
  }

  else
  {

    handle_invalid_context("CGContextSetCharacterSpacing", c, v2, v3, v4, v5, v6, v7);
  }
}

uint64_t CGContextGetTextDrawingMode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    return *(*(*(a1 + 96) + 136) + 1);
  }

  handle_invalid_context("CGContextGetTextDrawingMode", a1, a3, a4, a5, a6, a7, a8);
  return 0;
}

double CGContextGetTextGreekingThreshold(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    return *(*(*(a1 + 96) + 136) + 32);
  }

  handle_invalid_context("CGContextGetTextGreekingThreshold", a1, a3, a4, a5, a6, a7, a8);
  return 0.0;
}

void CGContextSetTextGreekingThreshold(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    v11 = *(a1 + 96);
    if (*(*(v11 + 136) + 32) != a2)
    {
      maybe_copy_text_state(*(a1 + 96));
      *(*(v11 + 136) + 32) = a2;
    }
  }

  else
  {

    handle_invalid_context("CGContextSetTextGreekingThreshold", a1, a4, a5, a6, a7, a8, a9);
  }
}

uint64_t CGContextGetShouldAntialiasFonts(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    return (**(*(a1 + 96) + 136) >> 2) & 1;
  }

  handle_invalid_context("CGContextGetShouldAntialiasFonts", a1, a3, a4, a5, a6, a7, a8);
  return 1;
}

void CGContextSetShouldAntialiasFonts(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    if (*(a1 + 16) == 1129601108)
    {
      CGGStateSetShouldAntialiasFonts(*(a1 + 96), a2);
      return;
    }

    v8 = a1;
  }

  else
  {
    v8 = 0;
  }

  handle_invalid_context("CGContextSetShouldAntialiasFonts", v8, a3, a4, a5, a6, a7, a8);
}

uint64_t CGContextGetShouldSmoothFonts(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    return (**(*(a1 + 96) + 136) >> 3) & 1;
  }

  handle_invalid_context("CGContextGetShouldSmoothFonts", a1, a3, a4, a5, a6, a7, a8);
  return 1;
}

uint64_t CGContextGetShouldSubpixelPositionFonts(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    return (**(*(a1 + 96) + 136) >> 4) & 1;
  }

  handle_invalid_context("CGContextGetShouldSubpixelPositionFonts", a1, a3, a4, a5, a6, a7, a8);
  return 1;
}

void CGContextSetShouldSubpixelPositionFonts(CGContextRef c, BOOL shouldSubpixelPositionFonts)
{
  if (c)
  {
    if (*(c + 4) == 1129601108)
    {
      CGGStateSetShouldSubpixelPositionFonts(*(c + 12), shouldSubpixelPositionFonts);
      return;
    }

    v8 = c;
  }

  else
  {
    v8 = 0;
  }

  handle_invalid_context("CGContextSetShouldSubpixelPositionFonts", v8, v2, v3, v4, v5, v6, v7);
}

uint64_t CGContextGetShouldSubpixelQuantizeFonts(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    return (**(*(a1 + 96) + 136) >> 5) & 1;
  }

  handle_invalid_context("CGContextGetShouldSubpixelQuantizeFonts", a1, a3, a4, a5, a6, a7, a8);
  return 1;
}

void CGContextSetShouldSubpixelQuantizeFonts(CGContextRef c, BOOL shouldSubpixelQuantizeFonts)
{
  if (c)
  {
    if (*(c + 4) == 1129601108)
    {
      CGGStateSetShouldSubpixelQuantizeFonts(*(c + 12), shouldSubpixelQuantizeFonts);
      return;
    }

    v8 = c;
  }

  else
  {
    v8 = 0;
  }

  handle_invalid_context("CGContextSetShouldSubpixelQuantizeFonts", v8, v2, v3, v4, v5, v6, v7);
}

uint64_t CGContextGetShouldUsePlatformNativeGlyphs(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    return (**(*(a1 + 96) + 136) >> 6) & 1;
  }

  handle_invalid_context("CGContextGetShouldUsePlatformNativeGlyphs", a1, a3, a4, a5, a6, a7, a8);
  return 1;
}

void CGContextSetShouldUsePlatformNativeGlyphs(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    if (*(a1 + 16) == 1129601108)
    {
      CGGStateSetShouldUsePlatformNativeGlyphs(*(a1 + 96), a2);
      return;
    }

    v8 = a1;
  }

  else
  {
    v8 = 0;
  }

  handle_invalid_context("CGContextSetShouldUsePlatformNativeGlyphs", v8, a3, a4, a5, a6, a7, a8);
}

uint64_t CGContextGetShouldDrawBitmapRuns(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    return (**(*(a1 + 96) + 136) >> 7) & 1;
  }

  handle_invalid_context("CGContextGetShouldDrawBitmapRuns", a1, a3, a4, a5, a6, a7, a8);
  return 0;
}

uint64_t CGContextGetFontAntialiasingStyle(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    return *(*(*(a1 + 96) + 136) + 48);
  }

  handle_invalid_context("CGContextGetFontAntialiasingStyle", a1, a3, a4, a5, a6, a7, a8);
  return 0;
}

void CGContextSetFontAntialiasingStyle(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    HIDWORD(v10) = a2;
    LODWORD(v10) = a2;
    v9 = v10 >> 7;
    if (v9 <= 9 && ((1 << v9) & 0x30F) != 0)
    {
      v11 = *(a1 + 96);
      if (*(*(v11 + 136) + 48) != a2)
      {
        maybe_copy_text_state(*(a1 + 96));
        *(*(v11 + 136) + 48) = a2;
      }
    }
  }

  else
  {

    handle_invalid_context("CGContextSetFontAntialiasingStyle", a1, a3, a4, a5, a6, a7, a8);
  }
}

uint64_t CGContextGetFontSmoothingStyle(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    return *(*(*(a1 + 96) + 136) + 52);
  }

  handle_invalid_context("CGContextGetFontSmoothingStyle", a1, a3, a4, a5, a6, a7, a8);
  return 48;
}

void CGContextSetFontSmoothingStyle(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    HIDWORD(v9) = a2 - 16;
    LODWORD(v9) = a2 - 16;
    if ((v9 >> 4) <= 6)
    {
      v10 = *(a1 + 96);
      if (*(*(v10 + 136) + 52) != a2)
      {
        maybe_copy_text_state(*(a1 + 96));
        *(*(v10 + 136) + 52) = a2;
      }
    }
  }

  else
  {

    handle_invalid_context("CGContextSetFontSmoothingStyle", a1, a3, a4, a5, a6, a7, a8);
  }
}

double CGContextGetFontSmoothingContrast(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    return *(*(*(a1 + 96) + 136) + 40);
  }

  handle_invalid_context("CGContextGetFontSmoothingContrast", a1, a3, a4, a5, a6, a7, a8);
  return 1.0;
}

void CGContextSetFontSmoothingContrast(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    v11 = *(a1 + 96);
    if (*(*(v11 + 136) + 40) != a2)
    {
      maybe_copy_text_state(*(a1 + 96));
      *(*(v11 + 136) + 40) = a2;
    }
  }

  else
  {

    handle_invalid_context("CGContextSetFontSmoothingContrast", a1, a4, a5, a6, a7, a8, a9);
  }
}

uint64_t CGContextGetFontSmoothingBackgroundColor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    return *(*(*(a1 + 96) + 136) + 64);
  }

  handle_invalid_context("CGContextGetFontSmoothingBackgroundColor", a1, a3, a4, a5, a6, a7, a8);
  return 0;
}

void CGContextSetFontSmoothingBackgroundColor(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    if (*(a1 + 16) == 1129601108)
    {
      CGGStateSetFontSmoothingBackgroundColor(*(a1 + 96), a2);
      return;
    }

    v8 = a1;
  }

  else
  {
    v8 = 0;
  }

  handle_invalid_context("CGContextSetFontSmoothingBackgroundColor", v8, a3, a4, a5, a6, a7, a8);
}

double CGContextGetDeviceClipBoundingBox(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    return get_device_clip_bounding_box(a1);
  }

  handle_invalid_context("CGContextGetDeviceClipBoundingBox", a1, a3, a4, a5, a6, a7, a8);
  return INFINITY;
}

double CGContextGetFlatness(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    return *(*(*(a1 + 96) + 144) + 8);
  }

  handle_invalid_context("CGContextGetFlatness", a1, a3, a4, a5, a6, a7, a8);
  return 0.0;
}

uint64_t CGContextGetFillOverprint(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    return *(*(*(a1 + 96) + 144) + 24);
  }

  handle_invalid_context("CGContextGetFillOverprint", a1, a3, a4, a5, a6, a7, a8);
  return 0;
}

uint64_t CGContextGetStrokeOverprint(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    return *(*(*(a1 + 96) + 144) + 25);
  }

  handle_invalid_context("CGContextGetStrokeOverprint", a1, a3, a4, a5, a6, a7, a8);
  return 0;
}

uint64_t CGContextGetOverprintMode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    return *(*(*(a1 + 96) + 144) + 28);
  }

  handle_invalid_context("CGContextGetOverprintMode", a1, a3, a4, a5, a6, a7, a8);
  return 0;
}

uint64_t CGContextGetBlackGeneration(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    return *(*(*(a1 + 96) + 144) + 32);
  }

  handle_invalid_context("CGContextGetBlackGeneration", a1, a3, a4, a5, a6, a7, a8);
  return 0;
}

uint64_t CGContextGetUndercolorRemoval(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    return *(*(*(a1 + 96) + 144) + 40);
  }

  handle_invalid_context("CGContextGetUndercolorRemoval", a1, a3, a4, a5, a6, a7, a8);
  return 0;
}

uint64_t CGContextGetTransferFunctions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1 || *(a1 + 16) != 1129601108)
  {
    handle_invalid_context("CGContextGetTransferFunctions", a1, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

void CGContextSetTransferFunctions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1 || *(a1 + 16) != 1129601108)
  {
    handle_invalid_context("CGContextSetTransferFunctions", a1, a3, a4, a5, a6, a7, a8);
  }
}

double CGContextGetSmoothness(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    return *(*(*(a1 + 96) + 144) + 16);
  }

  handle_invalid_context("CGContextGetSmoothness", a1, a3, a4, a5, a6, a7, a8);
  return 0.0;
}

uint64_t CGContextGetShouldAntialias(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    return *(*(*(a1 + 96) + 120) + 7) & 1;
  }

  handle_invalid_context("CGContextGetShouldAntialias", a1, a3, a4, a5, a6, a7, a8);
  return 1;
}

uint64_t CGContextGetBlendMode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    v8 = (*(*(*(a1 + 96) + 120) + 4) << 16) >> 24;
    if (v8 <= 0x1B)
    {
      return CGContextGetBlendMode_mode[v8];
    }
  }

  else
  {
    handle_invalid_context("CGContextGetBlendMode", a1, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t CGContextGetImageRenderingIntent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    v8 = *(*(*(a1 + 96) + 120) + 4);
    if (((v8 >> 20) & 0xF) != 0)
    {
      v9 = v8 << 8;
    }

    else
    {
      v9 = v8 << 12;
    }

    return (v9 >> 28);
  }

  else
  {
    handle_invalid_context("CGContextGetImageRenderingIntent", a1, a3, a4, a5, a6, a7, a8);
    return 3;
  }
}

double CGContextGetLineWidthThreshold(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    return *(*(*(a1 + 96) + 128) + 24);
  }

  handle_invalid_context("CGContextGetLineWidthThreshold", a1, a3, a4, a5, a6, a7, a8);
  return 0.0;
}

void CGContextSetLineWidthThreshold(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    v11 = *(a1 + 96);
    if (*(*(v11 + 128) + 24) != a2)
    {
      maybe_copy_stroke_state(*(a1 + 96));
      *(*(v11 + 128) + 24) = a2;
    }
  }

  else
  {

    handle_invalid_context("CGContextSetLineWidthThreshold", a1, a4, a5, a6, a7, a8, a9);
  }
}

double CGContextGetAdjustedLineWidth(CGContext *c, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (c && *(c + 4) == 1129601108)
  {
    v8 = *(c + 12);
    CGContextGetUserSpaceToDeviceSpaceTransform(&v10, c);
    return CGGStateGetAdjustedLineWidth(v8, &v10.a);
  }

  else
  {
    handle_invalid_context("CGContextGetAdjustedLineWidth", c, a3, a4, a5, a6, a7, a8);
    return 0.0;
  }
}

double CGContextGetPatternPhase(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    return *(*(*(a1 + 96) + 120) + 24);
  }

  handle_invalid_context("CGContextGetPatternPhase", a1, a3, a4, a5, a6, a7, a8);
  return 0.0;
}

CGInterpolationQuality CGContextGetInterpolationQuality(CGContextRef c)
{
  if (c && *(c + 4) == 1129601108)
  {
    return *(*(*(c + 12) + 120) + 4);
  }

  handle_invalid_context("CGContextGetInterpolationQuality", c, v1, v2, v3, v4, v5, v6);
  return 0;
}

uint64_t CGContextGetAlphaIsShape(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    return (*(*(*(a1 + 96) + 120) + 7) >> 1) & 1;
  }

  handle_invalid_context("CGContextGetAlphaIsShape", a1, a3, a4, a5, a6, a7, a8);
  return 0;
}

void CGContextSetFontDilation(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    CGGStateSetFontDilation(*(a1 + 96), a2, a3);
  }

  else
  {
    handle_invalid_context("CGContextSetFontDilation", a1, a5, a6, a7, a8, a9, a10);
  }
}

double CGContextGetFontDilation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    return *(*(*(a1 + 96) + 136) + 72);
  }

  handle_invalid_context("CGContextGetFontDilation", a1, a3, a4, a5, a6, a7, a8);
  return 0.0;
}

uint64_t CGContextGetFontSubpixelQuantizationLevel(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    return *(*(*(a1 + 96) + 136) + 88);
  }

  handle_invalid_context("CGContextGetFontSubpixelQuantizationLevel", a1, a3, a4, a5, a6, a7, a8);
  return 0;
}

void CGContextSetFontSubpixelQuantizationLevel(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    v15 = 0;

    goto LABEL_16;
  }

  if (*(a1 + 16) != 1129601108)
  {
    v15 = a1;

LABEL_16:
    handle_invalid_context("CGContextSetFontSubpixelQuantizationLevel", v15, a3, a4, a5, a6, a7, a8);
    return;
  }

  v9 = *(a1 + 96);
  v10 = HIDWORD(a2);
  v11 = a2 & ~(a2 >> 31);
  if (SHIDWORD(a2) >= 128)
  {
    LODWORD(v10) = 128;
  }

  if (v11 >= 128)
  {
    v12 = 128;
  }

  else
  {
    v12 = v11;
  }

  if (a2 >= 0)
  {
    v13 = v10;
  }

  else
  {
    v13 = 0;
  }

  if (*(*(v9 + 136) + 88) != (v12 | (v13 << 32)))
  {
    maybe_copy_text_state(v9);
    v14 = *(v9 + 136);
    *(v14 + 88) = v12;
    *(v14 + 92) = v13;
  }
}

void PDFAnnotationSetRelease(void *a1)
{
  if (a1 && atomic_fetch_add_explicit(a1, 0xFFFFFFFF, memory_order_relaxed) == 1)
  {
    v2 = a1[4];
    if (v2)
    {
      CFRelease(v2);
    }

    free(a1);
  }
}

uint64_t __CGPDFTextStringGetTypeID_block_invoke()
{
  result = pdf_register_cftype(&CGPDFTextStringGetTypeID_class);
  CGPDFTextStringGetTypeID_id = result;
  return result;
}

void *CGPDFTextStringFinalize(uint64_t a1)
{
  for (result = *(a1 + 24); result; result = *(a1 + 24))
  {
    *(a1 + 24) = *result;
    text_block_release(result);
  }

  return result;
}

void text_block_release(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    CFRelease(v3);
  }

  free(a1);
}

CFTypeRef CGPDFTextStringRetain(CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  return cf;
}

void CGPDFTextStringRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t CGPDFTextStringGetLength(uint64_t result)
{
  if (result)
  {
    return *(result + 48);
  }

  return result;
}

void *CGPDFTextStringGetCharacterAtIndex(uint64_t a1, unint64_t a2)
{
  result = find_block(a1, a2);
  if (result)
  {
    return WORD1(result[4 * (a2 - result[1]) + 14]);
  }

  return result;
}

void *find_block(uint64_t a1, unint64_t a2)
{
  result = *(a1 + 40);
  if (result && result[1] <= a2 || (result = *(a1 + 24)) != 0)
  {
    while (result[2] + result[1] <= a2)
    {
      result = *result;
      if (!result)
      {
        return result;
      }
    }

    *(a1 + 40) = result;
  }

  return result;
}

void *CGPDFTextStringGetGlyphAtIndex(uint64_t a1, unint64_t a2)
{
  result = find_block(a1, a2);
  if (result)
  {
    return LOWORD(result[4 * (a2 - result[1]) + 14]);
  }

  return result;
}

CGFloat CGPDFTextStringGetPositionForIndex(uint64_t a1, unint64_t a2, void *a3)
{
  block = find_block(a1, a2);
  if (block)
  {
    v6 = a2 - block[1];
    if (a3)
    {
      *a3 = block[4 * v6 + 13];
      a3[1] = 0;
    }

    v7 = &block[4 * v6 + 11];
  }

  else
  {
    if (a3)
    {
      *a3 = 0;
      a3[1] = 0;
    }

    v7 = &CGPointZero;
  }

  return v7->x;
}

double CGPDFTextStringGetBBoxForIndex(uint64_t a1, unint64_t a2, uint64_t a3)
{
  block = find_block(a1, a2);
  if (block)
  {
    if (a3)
    {
      *a3 = *(block + 1);
    }

    v6 = block[3];
  }

  else
  {
    v6 = 0;
    if (a3)
    {
      *a3 = a2;
      *(a3 + 8) = 0;
    }
  }

  v7 = (v6 + 56);
  if (!v6)
  {
    v7 = &CGAffineTransformIdentity;
  }

  v8 = *&v7->c;
  *&v10.a = *&v7->a;
  *&v10.c = v8;
  *&v10.tx = *&v7->tx;
  v11.origin.x = CGPDFFontGetFontBBox(v6);
  *&result = CGRectApplyAffineTransform(v11, &v10);
  return result;
}

uint64_t CGPDFTextStringGetFontForIndex(uint64_t a1, unint64_t a2, uint64_t a3)
{
  block = find_block(a1, a2);
  if (block)
  {
    if (a3)
    {
      *a3 = *(block + 1);
    }

    return block[3];
  }

  else
  {
    result = 0;
    if (a3)
    {
      *a3 = a2;
      *(a3 + 8) = 0;
    }
  }

  return result;
}

__n128 CGPDFTextStringGetTransformForIndex@<Q0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  block = find_block(a1, a2);
  if (block)
  {
    if (a3)
    {
      *a3 = *(block + 1);
    }

    v8 = (block + 5);
  }

  else
  {
    if (a3)
    {
      *a3 = a2;
      *(a3 + 8) = 0;
    }

    v8 = &CGAffineTransformIdentity;
  }

  v9 = *&v8->c;
  *a4 = *&v8->a;
  *(a4 + 16) = v9;
  result = *&v8->tx;
  *(a4 + 32) = result;
  return result;
}

uint64_t CGPDFTextStringGetColorForIndex(uint64_t a1, unint64_t a2, uint64_t a3)
{
  block = find_block(a1, a2);
  if (block)
  {
    if (a3)
    {
      *a3 = *(block + 1);
    }

    return block[4];
  }

  else
  {
    result = 0;
    if (a3)
    {
      *a3 = a2;
      *(a3 + 8) = 0;
    }
  }

  return result;
}

void *CGPDFTextStringAppendTextLayout(void *result, uint64_t a2, void *a3, __n128 a4)
{
  if (result && a2 && a3)
  {
    v17[0] = a2;
    v17[1] = result;
    if (*(result + 16) == 1)
    {
      return CGPDFTextLayoutDrawGlyphs(a3, draw_glyphs, v17, a4);
    }

    else
    {
      v5 = *a3;
      if (*a3)
      {
        v6 = 0;
        do
        {
          v7 = v5;
          v5 = *v5;
          *v7 = v6;
          v6 = v7;
        }

        while (v5);
        *a3 = v7;
        do
        {
          v8 = v7[1];
          v9 = *(v8 + 40);
          v10 = *(v8 + 128);
          v11 = *(v8 + 136);
          v12 = *(v8 + 8);
          if (*(v8 + 17) == 1)
          {
            v13 = *(v8 + 120);
            v14 = *(v8 + 80);
            v18 = *(v8 + 64);
            v19 = v14;
            v20 = *(v8 + 96);
            draw_text(v17, v9, &v18, v10, v11, v13, 0, v12);
          }

          else
          {
            v15 = *(v8 + 112);
            v16 = *(v8 + 80);
            v18 = *(v8 + 64);
            v19 = v16;
            v20 = *(v8 + 96);
            append_standard_text(v17, v9, &v18, 0, v10, v11, v15, v12);
          }

          v7 = *v7;
        }

        while (v7);
      }

      return text_layout_reset(a3);
    }
  }

  return result;
}

void draw_text(uint64_t a1, void *a2, _OWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3[1];
  v9[0] = *a3;
  v9[1] = v8;
  v9[2] = a3[2];
  if (a6)
  {
    append_cid_text(a1, a2, v9, 0, a6, a4, a5, a8);
  }

  else
  {
    append_standard_text(a1, a2, v9, 0, a4, a5, a7, a8);
  }
}

uint64_t append_standard_text(uint64_t a1, void *a2, double *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = *(a1 + 8);
  result = text_block_create(a8);
  if (result)
  {
    v18 = result;
    v39 = 0;
    *(result + 8) = v16[6];
    *(result + 16) = a8;
    if (a2)
    {
      CFRetain(a2);
    }

    *(v18 + 24) = a2;
    *(v18 + 32) = copy_color();
    v19 = *a1;
    if (*a1)
    {
      v19 = *&v19->a;
    }

    v38 = v16;
    if (!v19)
    {
      v19 = &CGAffineTransformIdentity;
    }

    v20 = *&v19->c;
    v21 = vmlaq_n_f64(vmulq_n_f64(v20, a3[3]), *&v19->a, a3[2]);
    v22 = vaddq_f64(*&v19->tx, vmlaq_n_f64(vmulq_n_f64(v20, a3[5]), *&v19->a, a3[4]));
    *(v18 + 40) = vmlaq_n_f64(vmulq_n_f64(v20, a3[1]), *&v19->a, *a3);
    *(v18 + 56) = v21;
    *(v18 + 72) = v22;
    result = CGPDFFontGetEncoding(a2);
    if (a8)
    {
      v23 = result;
      v24 = 0;
      v25 = 0;
      while (1)
      {
        result = CGPDFEncodingGetUnicodesForIndex(v23, *(a7 + v25), &v39);
        if (v39)
        {
          break;
        }

        v29 = 0;
LABEL_23:
        v34 = v18 + 88 + 32 * v24;
        *(v34 + 26) = v29;
        if (a4)
        {
          v35 = *(a4 + 2 * v25);
        }

        else
        {
          v35 = 0;
        }

        *(v34 + 24) = v35;
        *v34 = *(a5 + 16 * v25);
        *(v34 + 16) = *(a6 + 8 * v25);
        ++v24;
        if (++v25 == a8)
        {
          goto LABEL_27;
        }
      }

      v26 = result;
      v27 = v39 - 1;
      if (v39 == 1)
      {
LABEL_22:
        v29 = *v26;
        goto LABEL_23;
      }

      v28 = v27 + *(v18 + 16);
      *(v18 + 16) = v28;
      if (v28 <= 0x7FFFFFFFFFFFFFDLL)
      {
        result = malloc_type_realloc(v18, 32 * v28 + 88, 0x10200401B0FFA56uLL);
        v18 = result;
        v27 = v39 - 1;
        if (v39 == 1)
        {
LABEL_21:
          v26 += v27;
          goto LABEL_22;
        }
      }

      else
      {
        v18 = 0;
      }

      v30 = 0;
      v31 = 32 * v24;
      v24 += v27;
      do
      {
        v32 = v18 + v31;
        *(v18 + v31 + 114) = v26[v30];
        if (a4)
        {
          v33 = *(a4 + 2 * v25);
        }

        else
        {
          v33 = 0;
        }

        *(v32 + 112) = v33;
        *(v32 + 88) = *(a5 + 16 * v25);
        *(v32 + 104) = 0;
        ++v30;
        v31 += 32;
      }

      while (v27 != v30);
      goto LABEL_21;
    }

LABEL_27:
    v36 = v38 + 4;
    if (v38[3])
    {
      v37 = *v36;
    }

    else
    {
      v37 = v38 + 4;
      v36 = v38 + 3;
    }

    *v37 = v18;
    *v36 = v18;
    v38[6] += *(v18 + 16);
  }

  return result;
}

void append_cid_text(uint64_t a1, void *a2, double *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v53 = a5;
  v55 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 8);
  v16 = text_block_create(a8);
  if (!v16)
  {
    return;
  }

  v17 = v16;
  v16[1] = *(v15 + 48);
  v16[2] = a8;
  if (a2)
  {
    CFRetain(a2);
  }

  v17[3] = a2;
  v17[4] = copy_color();
  v18 = *a1;
  if (*a1)
  {
    v18 = *&v18->a;
  }

  if (!v18)
  {
    v18 = &CGAffineTransformIdentity;
  }

  v19 = *&v18->c;
  v20 = vmlaq_n_f64(vmulq_n_f64(v19, a3[3]), *&v18->a, a3[2]);
  v21 = vaddq_f64(*&v18->tx, vmlaq_n_f64(vmulq_n_f64(v19, a3[5]), *&v18->a, a3[4]));
  *(v17 + 5) = vmlaq_n_f64(vmulq_n_f64(v19, a3[1]), *&v18->a, *a3);
  *(v17 + 7) = v20;
  *(v17 + 9) = v21;
  ROSUnicodeCMap = CGPDFFontGetToUnicodeCMap(a2);
  if (ROSUnicodeCMap)
  {
    v23 = v53;
    goto LABEL_11;
  }

  v23 = v53;
  ROSUnicodeCMap = CGPDFFontGetROSUnicodeCMap(a2);
  if (ROSUnicodeCMap)
  {
LABEL_11:
    v24 = *(*(ROSUnicodeCMap + 16) + 48);
    if (v24)
    {
      v24 = *(v24 + 16);
      if (v24)
      {
        v24 = *(v24 + 40);
      }
    }

    if (v24 <= 2)
    {
      v24 = 2;
    }

    v25 = MEMORY[0x1EEE9AC00](2 * v24, v22);
    v52 = &v50 - v32;
    if (v31 <= 0x7FFFFFFFFFFFFFFELL)
    {
      v33 = &v50 - v32;
    }

    else
    {
      v33 = 0;
    }

    if (v31 - 0x7FFFFFFFFFFFFFFFLL >= 0x8000000000000022)
    {
      v33 = malloc_type_malloc(v25, 0xC389D79uLL);
    }

    if (v33)
    {
      v50 = &v50;
      v51 = v15;
      if (a8)
      {
        v34 = 0;
        v35 = 0;
        do
        {
          v36 = *(*(ROSUnicodeCMap + 16) + 48);
          if (!v36 || (unichars = cmap_bf_set_get_unichars(*(v36 + 16), *(v23 + 2 * v35), v33, v26, v27, v28, v29, v30)) == 0)
          {
            unichars = CGPDFGetUnicharGuessForCID(*(v23 + 2 * v35), v33);
          }

          if (unichars)
          {
            if (unichars == 1)
            {
              v38 = v33;
            }

            else
            {
              v39 = v17[2] + unichars - 1;
              v17[2] = v39;
              if (v39 <= 0x7FFFFFFFFFFFFFDLL)
              {
                v17 = malloc_type_realloc(v17, 32 * v39 + 88, 0x10200401B0FFA56uLL);
              }

              else
              {
                v17 = 0;
              }

              v40 = &v17[4 * v34 + 14] + 1;
              v34 = unichars + v34 - 1;
              v41 = v33;
              v42 = unichars - 1;
              do
              {
                v43 = *v41;
                v41 += 2;
                *v40 = v43;
                if (a4)
                {
                  v44 = *(a4 + 2 * v35);
                }

                else
                {
                  v44 = 0;
                }

                *(v40 - 1) = v44;
                *(v40 - 13) = *(a6 + 16 * v35);
                *(v40 - 5) = 0;
                v40 += 16;
                --v42;
              }

              while (v42);
              v38 = &v33[2 * unichars - 2];
              v23 = v53;
            }

            LOWORD(unichars) = *v38;
          }

          v45 = &v17[4 * v34 + 11];
          *(v45 + 26) = unichars;
          if (a4)
          {
            v46 = *(a4 + 2 * v35);
          }

          else
          {
            v46 = 0;
          }

          *(v45 + 24) = v46;
          *v45 = *(a6 + 16 * v35);
          *(v45 + 16) = *(a7 + 8 * v35);
          ++v34;
          ++v35;
        }

        while (v35 != a8);
      }

      if (v33 != v52)
      {
        free(v33);
      }

      v47 = v51;
      v48 = (v51 + 32);
      if (*(v51 + 24))
      {
        v49 = *v48;
      }

      else
      {
        v49 = (v51 + 32);
        v48 = (v51 + 24);
      }

      *v49 = v17;
      *v48 = v17;
      *(v47 + 48) += v17[2];
    }

    else
    {
      text_block_release(v17);
    }

    return;
  }

  text_block_release(v17);
}

void *text_block_create(uint64_t a1)
{
  v1 = malloc_type_calloc(1uLL, 32 * a1 + 88, 0x10200401B0FFA56uLL);
  __CFSetLastAllocationEventName();
  if (v1)
  {
    *v1 = 0;
  }

  return v1;
}

const void *copy_color()
{
  v0 = copy_color_color;
  if (copy_color_color || (DeviceRGB = CGColorSpaceCreateDeviceRGB(), copy_color_color = CGColorCreate(DeviceRGB, copy_color_components), CGColorSpaceRelease(DeviceRGB), (v0 = copy_color_color) != 0))
  {
    CFRetain(v0);
  }

  return v0;
}

void draw_glyphs(uint64_t a1, void *a2, _OWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a3[1];
  v10[0] = *a3;
  v10[1] = v9;
  v10[2] = a3[2];
  if (a7)
  {
    append_cid_text(a1, a2, v10, a6, a7, a4, a5, a9);
  }

  else
  {
    append_standard_text(a1, a2, v10, a6, a4, a5, a8, a9);
  }
}

void std::vector<std::tuple<StructureElement *,unsigned long,applesauce::CF::ObjectRef<CGPDFDictionary *>>>::__destroy_vector::operator()[abi:fe200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = v4 - 3;
        std::__destroy_at[abi:fe200100]<std::tuple<StructureElement *,unsigned long,applesauce::CF::ObjectRef<CGPDFDictionary *>>,0>(*(v4 - 1));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__destroy_at[abi:fe200100]<std::tuple<StructureElement *,unsigned long,applesauce::CF::ObjectRef<CGPDFDictionary *>>,0>(const void *a1)
{
  if (a1)
  {
    CFRelease(a1);
  }
}

void StructureElement::~StructureElement(StructureElement *this)
{
  v2 = *(this + 11);
  v3 = *(this + 12);
  if (v2 != v3)
  {
    do
    {
      if (*v2)
      {
        StructureElement::~StructureElement(*v2);
        MEMORY[0x1865EE610]();
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = *(this + 11);
  }

  *(this + 12) = v2;
  v4 = *(this + 14);
  v5 = *(this + 15);
  if (v4 != v5)
  {
    do
    {
      v6 = *v4++;
      CGPDFNodeRelease(v6);
    }

    while (v4 != v5);
    v4 = *(this + 14);
  }

  *(this + 15) = v4;
  v7 = *(this + 20);
  v8 = *(this + 21);
  if (v7 != v8)
  {
    do
    {
      CFRelease(*v7++);
    }

    while (v7 != v8);
    v7 = *(this + 20);
  }

  *(this + 21) = v7;
  v9 = *(this + 17);
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = *(this + 18);
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = *(this + 19);
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = *(this + 23);
  if (v12)
  {
    v13 = *(this + 24);
    v14 = *(this + 23);
    if (v13 != v12)
    {
      do
      {
        v15 = *(v13 - 8);
        v13 -= 8;
        std::__destroy_at[abi:fe200100]<applesauce::CF::ObjectRef<CGPDFTaggedNode *>,0>(v15);
      }

      while (v13 != v12);
      v14 = *(this + 23);
    }

    *(this + 24) = v12;
    operator delete(v14);
  }

  v16 = *(this + 20);
  if (v16)
  {
    *(this + 21) = v16;
    operator delete(v16);
  }

  v17 = *(this + 14);
  if (v17)
  {
    *(this + 15) = v17;
    operator delete(v17);
  }

  v18 = *(this + 11);
  if (v18)
  {
    *(this + 12) = v18;
    operator delete(v18);
  }

  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }
}

void std::__destroy_at[abi:fe200100]<applesauce::CF::ObjectRef<CGPDFTaggedNode *>,0>(const void *a1)
{
  if (a1)
  {
    CFRelease(a1);
  }
}

void TaggedParser::AddPage(TaggedParser *this, CGPDFPage *a2)
{
  if (a2)
  {
    v4 = *(*(a2 + 5) + 8);
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 - 1;
  v6 = *this;
  if (*(*this + 256) <= v4 - 1)
  {
    goto LABEL_103;
  }

  v7 = *(v6 + 248);
  v8 = *(v7 + 8 * (v5 >> 6));
  if ((v8 & (1 << v5)) == 0)
  {
    *(v7 + 8 * (v5 >> 6)) = v8 | (1 << v5);
    if (*v6)
    {
      v9 = CGPDFContentStreamCreate(*(a2 + 5));
      v10 = CGPDFOperatorTableCreate();
      if (v10)
      {
        v11 = &off_1EF2377B8;
        v12 = 528;
        do
        {
          CGPDFOperatorTableSetCallback(v10, *(v11 - 1), *v11);
          v11 += 2;
          v12 -= 16;
        }

        while (v12);
      }

      *&info = a2;
      v89 = v10;
      v90 = this;
      v91 = 0;
      BoxRect = CGPDFPageGetBoxRect(a2, kCGPDFCropBox);
      x = BoxRect.origin.x;
      y = BoxRect.origin.y;
      width = BoxRect.size.width;
      height = BoxRect.size.height;
      *(&info + 1) = *&BoxRect.origin.x;
      *&v87 = BoxRect.origin.y;
      *(&v87 + 1) = *&BoxRect.size.width;
      v88 = BoxRect.size.height;
      RotationAngle = CGPDFPageGetRotationAngle(a2);
      if (RotationAngle == 270 || RotationAngle == 90)
      {
        *(&v87 + 1) = height;
        v88 = width;
        v24 = width;
      }

      else
      {
        v24 = height;
        height = width;
      }

      v94 = *&x;
      v95 = *&y;
      v96 = height;
      v97 = v24;
      CGDisplayList = CG::DisplayList::createCGDisplayList(0, &v94, v18, v19, v20, v21, v22, v23);
      cf = CGDisplayListContextCreate(CGDisplayList, v25, v26, v27, v28, v29, v30, v31);
      v32 = CGPDFScannerCreate(v9, v10, &info);
      CGPDFScannerScan(v32);
      if (v32)
      {
        CFRelease(v32);
      }

      if (v10)
      {
        CFRelease(v10);
      }

      if (v9)
      {
        CFRelease(v9);
      }

      if (cf)
      {
        CFRelease(cf);
      }

      if (CGDisplayList)
      {
        CFRelease(CGDisplayList);
      }

      v6 = *this;
    }

    std::mutex::lock((v6 + 32));
    v33 = *this;
    v34 = **this;
    v35 = *(*this + 24);
    if (v34)
    {
      if (v35)
      {
        v37 = v33 + 200;
        v36 = *(v33 + 200);
        v38 = 0xAAAAAAAAAAAAAAABLL * ((*(v37 + 8) - v36) >> 3);
        if (v38 <= v5)
        {
          goto LABEL_103;
        }

        v39 = (v36 + 24 * v5);
        v94 = 0;
        v95 = 0;
        v96 = 0.0;
        v40 = *v39;
        v41 = v39[1];
        *&info = &v94;
        BYTE8(info) = 0;
        if (v41 != v40)
        {
          v42 = 0xAAAAAAAAAAAAAAABLL * ((v41 - v40) >> 3);
          if (v42 < 0xAAAAAAAAAAAAAABLL)
          {
            std::__allocate_at_least[abi:fe200100]<std::allocator<std::tuple<StructureElement *,unsigned long,applesauce::CF::ObjectRef<CGPDFDictionary *>>>>(v42);
          }

          std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
        }

        if (v38 <= v5)
        {
          goto LABEL_103;
        }

        v43 = (v36 + 24 * v5);
        v45 = *v43;
        v44 = v43[1];
        if (v44 != *v43)
        {
          do
          {
            v46 = v44 - 24;
            std::__destroy_at[abi:fe200100]<std::tuple<StructureElement *,unsigned long,applesauce::CF::ObjectRef<CGPDFDictionary *>>,0>(*(v44 - 8));
            v44 = v46;
          }

          while (v46 != v45);
        }

        v43[1] = v45;
        v47 = v94;
        v48 = v95;
        if (v94 != v95)
        {
          while (1)
          {
            info = 0u;
            v87 = 0u;
            LODWORD(v88) = 1065353216;
            v99 = 0;
            value[0] = 0;
            v98 = 0;
            v85[0] = value;
            v85[1] = &v99;
            v85[2] = &v98;
            std::__memberwise_copy_assign[abi:fe200100]<std::tuple<StructureElement *&,unsigned long &,applesauce::CF::ObjectRef<CGPDFDictionary *> &>,std::tuple<StructureElement *,unsigned long,applesauce::CF::ObjectRef<CGPDFDictionary *>>,0ul,1ul,2ul>(v85, v47);
            v49 = *(value[0] + 11);
            if (v99 >= (*(value[0] + 12) - v49) >> 3)
            {
              break;
            }

            if (!*(v49 + 8 * v99))
            {
              TaggedParser::BuildStructureElementFromDictionary();
            }

            if (v98)
            {
              CFRelease(v98);
            }

            std::__hash_table<std::__hash_value_type<CGPDFFont *,std::pair<double,double>>,std::__unordered_map_hasher<CGPDFFont *,std::__hash_value_type<CGPDFFont *,std::pair<double,double>>,std::hash<CGPDFFont *>,std::equal_to<CGPDFFont *>,true>,std::__unordered_map_equal<CGPDFFont *,std::__hash_value_type<CGPDFFont *,std::pair<double,double>>,std::equal_to<CGPDFFont *>,std::hash<CGPDFFont *>,true>,std::allocator<std::__hash_value_type<CGPDFFont *,std::pair<double,double>>>>::~__hash_table(&info);
            v47 = (v47 + 24);
            if (v47 == v48)
            {
              goto LABEL_41;
            }
          }

LABEL_103:
          __break(1u);
          __assert_rtn("CreateStructureRoot", "TaggedParser.mm", 1537, "pageIndex < pageCount");
        }

LABEL_41:
        v50 = *(*this + 200);
        if (0xAAAAAAAAAAAAAAABLL * ((*(*this + 208) - v50) >> 3) <= v5)
        {
          goto LABEL_103;
        }

        if (*(v50 + 24 * v5 + 8) != *(v50 + 24 * v5))
        {
          __assert_rtn("AddPage", "TaggedParser.mm", 828, "_private->objectsToSearch[pageIndex].size() == 0");
        }

        *&info = &v94;
        std::vector<std::tuple<StructureElement *,unsigned long,applesauce::CF::ObjectRef<CGPDFDictionary *>>>::__destroy_vector::operator()[abi:fe200100](&info);
      }

      else
      {
        v85[0] = v4;
        if (TaggedParser::ValidatePageNumber(this, v34, v85))
        {
          value[0] = 0;
          if (CGPDFDictionaryGetDictionary(v34, "RoleMap", value))
          {
            CGPDFDictionaryApplyFunction(value[0], RoleMapCallback, (*this + 152));
          }

          operator new();
        }

        *(*this + 24) = 0;
      }

      v51 = CGPDFPageCopyPageLayoutWithCTLD(a2, 1);
      v52 = v51;
      v94 = v51;
      if (a2)
      {
        v53 = *(*(a2 + 5) + 8);
      }

      else
      {
        v53 = 0;
      }

      v54 = *(*this + 128);
      if (0xAAAAAAAAAAAAAAABLL * ((*(*this + 136) - v54) >> 3) <= v53 - 1)
      {
        goto LABEL_103;
      }

      *&info = v54 + 24 * (v53 - 1);
      *(&info + 1) = v53;
      *&v87 = v51 + 2;
      *(&v87 + 1) = a2;
      v55 = v51[40];
      v56 = v51[41];
      if (v55 != v56 && (v56 - v55) <= v51[17] - v51[16])
      {
        v57 = v51[10];
        if (v51[11] == v57)
        {
          v59 = 0;
          v58 = -1;
        }

        else
        {
          v58 = *(*v57 + 8) + **v57;
          v59 = 1;
        }

        v60 = 0;
        v61 = 0;
        v62 = 0;
        v63 = 0;
        v64 = *v55;
        while (1)
        {
          v65 = v52[13];
          if (v60 >= (v52[14] - v65) >> 1)
          {
            break;
          }

          v66 = *&v55[8 * v63];
          v67 = *(v65 + 2 * v60);
          if (v67 == 32 || v64 != v66 || v63 == v58)
          {
            if (v62 >= 1)
            {
              TaggedParser::addWords(CGPDFPage *)::$_0::operator()(&info, v64, v61, v62);
            }

            v62 = v67 != 32;
            if (v67 == 32)
            {
              v61 = v63 + 1;
            }

            else
            {
              v61 = v63;
            }

            if (v63 == v58)
            {
              v70 = v52[10];
              if (v59 >= (v52[11] - v70) >> 4)
              {
                v58 = -1;
              }

              else
              {
                v58 = *(*(v70 + 16 * v59) + 8) + **(v70 + 16 * v59);
                ++v59;
              }
            }
          }

          else
          {
            ++v62;
          }

          v71 = v52[16];
          if (v63 >= (v52[17] - v71) >> 3)
          {
            goto LABEL_103;
          }

          v60 += *(v71 + 8 * v63++);
          v55 = v52[40];
          v64 = v66;
          if (v63 >= (v52[41] - v55) >> 3)
          {
            goto LABEL_83;
          }
        }

        LODWORD(v66) = v64;
LABEL_83:
        if (v62 >= 1)
        {
          TaggedParser::addWords(CGPDFPage *)::$_0::operator()(&info, v66, v61, v62);
        }
      }

      CFRelease(v52);
      if (!a2)
      {
        goto LABEL_103;
      }

      v72 = *(*(a2 + 5) + 8) - 1;
      v73 = *this;
      v74 = *(*this + 224);
      if (0xCCCCCCCCCCCCCCCDLL * ((*(*this + 232) - v74) >> 3) <= v72)
      {
        goto LABEL_103;
      }

      v76 = v73 + 128;
      v75 = *(v73 + 128);
      if (0xAAAAAAAAAAAAAAABLL * ((*(v76 + 8) - v75) >> 3) <= v72)
      {
        goto LABEL_103;
      }

      v77 = *(v74 + 40 * v72 + 16);
      if (v77)
      {
        v78 = (v75 + 24 * v72 + 8);
        do
        {
          v79 = *v78;
          if (*v78)
          {
            v80 = v77[2];
            v81 = v78;
            do
            {
              if (v79[4] >= v80)
              {
                v81 = v79;
              }

              v79 = v79[v79[4] < v80];
            }

            while (v79);
            if (v81 != v78 && v80 >= v81[4])
            {
              v82 = v81[5];
              v83 = *(v77 + 3);
              v84 = *(v77 + 5);
              *(v82 + 240) = *(v77 + 56);
              *(v82 + 208) = v83;
              *(v82 + 224) = v84;
            }
          }

          v77 = *v77;
        }

        while (v77);
      }
    }

    else if (!v35)
    {
      operator new();
    }

    std::mutex::unlock((v6 + 32));
  }
}

void sub_1841C03EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__hash_table<std::__hash_value_type<CGPDFFont *,std::pair<double,double>>,std::__unordered_map_hasher<CGPDFFont *,std::__hash_value_type<CGPDFFont *,std::pair<double,double>>,std::hash<CGPDFFont *>,std::equal_to<CGPDFFont *>,true>,std::__unordered_map_equal<CGPDFFont *,std::__hash_value_type<CGPDFFont *,std::pair<double,double>>,std::equal_to<CGPDFFont *>,std::hash<CGPDFFont *>,true>,std::allocator<std::__hash_value_type<CGPDFFont *,std::pair<double,double>>>>::~__hash_table(va);
  std::mutex::unlock((v7 + 32));
  _Unwind_Resume(a1);
}

void std::__memberwise_copy_assign[abi:fe200100]<std::tuple<StructureElement *&,unsigned long &,applesauce::CF::ObjectRef<CGPDFDictionary *> &>,std::tuple<StructureElement *,unsigned long,applesauce::CF::ObjectRef<CGPDFDictionary *>>,0ul,1ul,2ul>(uint64_t a1, void *a2)
{
  v2 = a2[1];
  **a1 = *a2;
  v3 = *(a1 + 16);
  **(a1 + 8) = v2;
  v4 = *v3;
  v5 = a2[2];
  *v3 = v5;
  if (v5)
  {
    CFRetain(v5);
  }

  if (v4)
  {
    CFRelease(v4);
  }
}

const void **applesauce::CF::ObjectRef<CGPDFDictionary *>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void TaggedParser::addWords(CGPDFPage *)::$_0::operator()(void *a1, unsigned int a2, uint64_t a3, unint64_t a4)
{
  v4 = *(*a1 + 8);
  if (v4)
  {
    v8 = a2 | (a1[1] << 32);
    v9 = *a1 + 8;
    do
    {
      if (*(v4 + 32) >= v8)
      {
        v9 = v4;
      }

      v4 = *(v4 + 8 * (*(v4 + 32) < v8));
    }

    while (v4);
    if (v9 != *a1 + 8 && v8 >= *(v9 + 32))
    {
      v10 = *(v9 + 40);
      v11 = CGPDFTaggedNodeCreate(a1[3]);
      v12 = v11;
      v14 = v10[24];
      v13 = v10[25];
      if (v14 >= v13)
      {
        v20 = v10[23];
        v21 = (v14 - v20) >> 3;
        v22 = v21 + 1;
        if ((v21 + 1) >> 61)
        {
          std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
        }

        v23 = v13 - v20;
        if (v23 >> 2 > v22)
        {
          v22 = v23 >> 2;
        }

        if (v23 >= 0x7FFFFFFFFFFFFFF8)
        {
          v24 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v24 = v22;
        }

        v30 = v10 + 23;
        if (v24)
        {
          std::__allocate_at_least[abi:fe200100]<std::allocator<applesauce::CF::ObjectRef<CGPath *>>>(v24);
        }

        v26 = 0;
        v27 = (8 * v21);
        *v27 = v12;
        v28 = 8 * v21 + 8;
        v29 = 0;
        std::vector<applesauce::CF::ObjectRef<CGPDFTaggedNode *>>::__swap_out_circular_buffer((v10 + 23), &v26);
        v25 = v10[24];
        std::__split_buffer<applesauce::CF::ObjectRef<CGPDFTaggedNode *>>::~__split_buffer(&v26);
        v10[24] = v25;
        v12 = *(v25 - 8);
        if (v12)
        {
          goto LABEL_10;
        }
      }

      else
      {
        *v14 = v11;
        v10[24] = v14 + 1;
        if (v11)
        {
LABEL_10:
          *(v12 + 104) = 0;
          *(v12 + 16) = 1;
          v15 = a1[2];
          *(v12 + 176) = a1[1];
          PageLayout::GetBoundsForRangeWithinLine(v15, a3, a4, 0, 0);
          *(v12 + 40) = 1;
          *(v12 + 48) = v16;
          *(v12 + 56) = v17;
          *(v12 + 64) = v18;
          *(v12 + 72) = v19;
          *(v12 + 184) = 1;
          *(v12 + 192) = a3;
          *(v12 + 200) = a4;
          *(v12 + 208) = 0;
          return;
        }
      }

      PageLayout::GetBoundsForRangeWithinLine(a1[2], a3, a4, 0, 0);
    }
  }
}

void std::vector<applesauce::CF::ObjectRef<CGPDFTaggedNode *>>::__swap_out_circular_buffer(uint64_t a1, void *a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = a2[1] + *a1 - v5;
  if (v5 != *a1)
  {
    v7 = *a1;
    v8 = (a2[1] + *a1 - v5);
    do
    {
      *v8++ = *v7;
      *v7++ = 0;
    }

    while (v7 != v5);
    do
    {
      v9 = *v4++;
      std::__destroy_at[abi:fe200100]<applesauce::CF::ObjectRef<CGPDFTaggedNode *>,0>(v9);
    }

    while (v4 != v5);
    v4 = *a1;
  }

  a2[1] = v6;
  *a1 = v6;
  *(a1 + 8) = v4;
  a2[1] = v4;
  v10 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v10;
  v11 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v11;
  *a2 = a2[1];
}

uint64_t std::__split_buffer<applesauce::CF::ObjectRef<CGPDFTaggedNode *>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 8);
    *(a1 + 16) = i - 8;
    std::__destroy_at[abi:fe200100]<applesauce::CF::ObjectRef<CGPDFTaggedNode *>,0>(v4);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

const void **applesauce::CF::ObjectRef<CGPDFTaggedNode *>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void TaggedParser::BuildStructureElement(TaggedParser *a1, StructureElement *a2, unint64_t a3, unint64_t a4, void *a5)
{
  v54 = a4;
  v55 = a2;
  v9 = 0x9DDFEA08EB382D69 * ((8 * (a3 & 0x1FFFFFFF) + 8) ^ HIDWORD(a3));
  v10 = 0x9DDFEA08EB382D69 * (HIDWORD(a3) ^ (v9 >> 47) ^ v9);
  v11 = 0x9DDFEA08EB382D69 * (v10 ^ (v10 >> 47));
  v12 = a5[1];
  if (!*&v12)
  {
    goto LABEL_33;
  }

  v13 = vcnt_s8(v12);
  v13.i16[0] = vaddlv_u8(v13);
  if (v13.u32[0] > 1uLL)
  {
    v14 = 0x9DDFEA08EB382D69 * (v10 ^ (v10 >> 47));
    if (v11 >= *&v12)
    {
      v14 = v11 % *&v12;
    }
  }

  else
  {
    v14 = v11 & (*&v12 - 1);
  }

  v15 = *(*a5 + 8 * v14);
  if (v15)
  {
    for (i = *v15; i; i = *i)
    {
      v17 = i[1];
      if (v17 == v11)
      {
        if (i[2] == a3)
        {
          v32 = *a1;
          if (*(*a1 + 96) == 1)
          {
            printf("Hit tagged parsing error: %s\n", "Cycles detected in marked structure element graph");
            v32 = *a1;
          }

          *(v32 + 97) = 1;
          return;
        }
      }

      else
      {
        if (v13.u32[0] > 1uLL)
        {
          if (v17 >= *&v12)
          {
            v17 %= *&v12;
          }
        }

        else
        {
          v17 &= *&v12 - 1;
        }

        if (v17 != v14)
        {
          break;
        }
      }
    }
  }

  if (v13.u32[0] > 1uLL)
  {
    v18 = 0x9DDFEA08EB382D69 * (v10 ^ (v10 >> 47));
    if (v11 >= *&v12)
    {
      v18 = v11 % *&v12;
    }
  }

  else
  {
    v18 = v11 & (*&v12 - 1);
  }

  v19 = *(*a5 + 8 * v18);
  if (!v19 || (v20 = *v19) == 0)
  {
LABEL_33:
    operator new();
  }

  while (1)
  {
    v21 = v20[1];
    if (v21 == v11)
    {
      break;
    }

    if (v13.u32[0] > 1uLL)
    {
      if (v21 >= *&v12)
      {
        v21 %= *&v12;
      }
    }

    else
    {
      v21 &= *&v12 - 1;
    }

    if (v21 != v18)
    {
      goto LABEL_33;
    }

LABEL_32:
    v20 = *v20;
    if (!v20)
    {
      goto LABEL_33;
    }
  }

  if (v20[2] != a3)
  {
    goto LABEL_32;
  }

  if (!a3)
  {
    goto LABEL_48;
  }

  v22 = a4 - 1;
  v23 = *(a3 + 8);
  if (v23 > 7)
  {
    if (v23 == 8)
    {
      v31 = *(a3 + 32);
      value = 0;
      if (CGPDFDictionaryGetName(v31, "Type", &value) && !strcmp(value, "OBJR"))
      {
        v53 = a4;
        TaggedParser::ValidatePageNumber(a1, v31, &v53);
        cf = 0;
        if (CGPDFDictionaryGetDictionary(v31, "Obj", &cf))
        {
          TaggedParser::BuildObjectElement(a2, v53, cf, v46);
        }

        return;
      }

      if (TaggedParser::ValidatePageNumber(a1, v31, &v54))
      {
        TaggedParser::BuildStructureElementFromDictionary(a1, a2, v31, v54, a5, 0xFFFFFFFFLL);
        return;
      }

      v33 = (*(a2 + 12) - *(a2 + 11)) >> 3;
      cf = 0;
      v53 = v33;
      std::vector<CGPDFObject *>::push_back[abi:fe200100](a2 + 88, &cf);
      v34 = v54 - 1;
      v35 = *a1;
      v36 = *(*a1 + 200);
      if (0xAAAAAAAAAAAAAAABLL * ((*(v35 + 208) - v36) >> 3) > v54 - 1)
      {
        if (v31)
        {
          CFRetain(v31);
        }

        v37 = (v36 + 24 * v34);
        cf = v31;
        v38 = v37[1];
        if (v38 >= v37[2])
        {
          v44 = std::vector<std::tuple<StructureElement *,unsigned long,applesauce::CF::ObjectRef<CGPDFDictionary *>>>::__emplace_back_slow_path<StructureElement *&,unsigned long &,applesauce::CF::ObjectRef<CGPDFDictionary *>>(v37, &v55, &v53, &cf);
          v45 = cf;
          v37[1] = v44;
          if (v45)
          {
            CFRelease(v45);
          }
        }

        else
        {
          *v38 = a2;
          v38[1] = v33;
          v38[2] = v31;
          v37[1] = v38 + 3;
        }

        return;
      }

LABEL_100:
      __break(1u);
      return;
    }

    if (v23 != 12)
    {
      goto LABEL_48;
    }

LABEL_45:
    v27 = *(*a1 + 128);
    if (0xAAAAAAAAAAAAAAABLL * ((*(*a1 + 136) - v27) >> 3) > v22)
    {
      v28 = (*(a3 + 32) | (a4 << 32));
      v53 = v28;
      value = &v53;
      std::__tree<std::__value_type<long long,StructureElement *>,std::__map_value_compare<long long,std::__value_type<long long,StructureElement *>,std::less<long long>,true>,std::allocator<std::__value_type<long long,StructureElement *>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long &&>,std::tuple<>>(v27 + 24 * v22, v28)[5] = a2;
      *(a2 + 7) = v28;
      return;
    }

    goto LABEL_100;
  }

  if (v23 == 3)
  {
    goto LABEL_45;
  }

  if (v23 == 7)
  {
    v24 = *(a3 + 32);
    if (!v24)
    {
      return;
    }

    v25 = (*(v24 + 3) - *(v24 + 2)) >> 3;
    if (!v25)
    {
      return;
    }

    v26 = v25 - 1;
    if (v25 == 1)
    {
      value = 0;
      if (CGPDFArrayGetObject(v24, 0, &value))
      {
        TaggedParser::BuildStructureElement(a1, a2);
      }

      return;
    }

    v39 = 0;
    while (1)
    {
      value = 0;
      if (!CGPDFArrayGetObject(v24, v39, &value) || !value)
      {
        break;
      }

      v40 = *(value + 2);
      if (v39)
      {
        v41 = 8;
      }

      else
      {
        v41 = 3;
      }

      v42 = v40 == v41;
      if (v40 == 12)
      {
        v43 = v39 == 0;
      }

      else
      {
        v43 = v42;
      }

      if (++v39 >= v25 || !v43)
      {
        goto LABEL_82;
      }
    }

    v43 = 0;
LABEL_82:
    v47 = 0;
    while (2)
    {
      v53 = 0;
      if (CGPDFArrayGetObject(v24, v47, &v53))
      {
        if (!v53)
        {
          goto LABEL_98;
        }

        v48 = *(v53 + 2);
        switch(v48)
        {
          case 12:
            goto LABEL_88;
          case 8:
            if ((TaggedParser::BuildStructureElement(a1, a2) & 1) == 0)
            {
              return;
            }

            break;
          case 3:
LABEL_88:
            if (!v43)
            {
              TaggedParser::CreateStructureElement(a1, a2);
            }

            v49 = *(*a1 + 128);
            if (0xAAAAAAAAAAAAAAABLL * ((*(*a1 + 136) - v49) >> 3) <= v22)
            {
              goto LABEL_100;
            }

            v50 = (*(v53 + 4) | (a4 << 32));
            cf = v50;
            value = &cf;
            std::__tree<std::__value_type<long long,StructureElement *>,std::__map_value_compare<long long,std::__value_type<long long,StructureElement *>,std::less<long long>,true>,std::allocator<std::__value_type<long long,StructureElement *>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long &&>,std::tuple<>>(v49 + 24 * v22, v50)[5] = a2;
            *(a2 + 7) = v50;
            break;
          default:
LABEL_98:
            v29 = *a1;
            if (*(*a1 + 96) == 1)
            {
              v30 = "Found a non-integer and non-dictionary object in /K array";
LABEL_50:
              printf("Hit tagged parsing error: %s\n", v30);
              v29 = *a1;
            }

            goto LABEL_51;
        }
      }

      if (*(*a1 + 97))
      {
        return;
      }

      if (v26 == v47++)
      {
        return;
      }

      continue;
    }
  }

LABEL_48:
  v29 = *a1;
  if (*(*a1 + 96) == 1)
  {
    v30 = "Malformed marked content structure";
    goto LABEL_50;
  }

LABEL_51:
  *(v29 + 97) = 1;
}

void sub_1841C1924(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  applesauce::CF::ObjectRef<CGPDFDictionary *>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

void *std::__tree<std::__value_type<long long,StructureElement *>,std::__map_value_compare<long long,std::__value_type<long long,StructureElement *>,std::less<long long>,true>,std::allocator<std::__value_type<long long,StructureElement *>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long &&>,std::tuple<>>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = v2[4];
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= a2)
    {
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

BOOL TaggedParser::ValidatePageNumber(TaggedParser *this, CGPDFDictionary *a2, unint64_t *a3)
{
  v11 = "Pg";
  if (!a2)
  {
    return 1;
  }

  v5 = std::__hash_table<std::__hash_value_type<CGPDFObject *,CGPDFObject *>,std::__unordered_map_hasher<CGPDFObject *,std::__hash_value_type<CGPDFObject *,CGPDFObject *>,pdf_name_hash,pdf_name_equal,true>,std::__unordered_map_equal<CGPDFObject *,std::__hash_value_type<CGPDFObject *,CGPDFObject *>,pdf_name_equal,pdf_name_hash,true>,std::allocator<std::__hash_value_type<CGPDFObject *,CGPDFObject *>>>::find<char const*>(a2 + 6, &v11);
  if (!v5)
  {
    return 1;
  }

  v6 = v5[3];
  if (!v6)
  {
    return 1;
  }

  if (*(v6 + 8) != 10)
  {
    return 1;
  }

  PageNumberForPageReference = CGPDFDocumentGetPageNumberForPageReference(*(*this + 16), *(v6 + 16), *(v6 + 24));
  if (PageNumberForPageReference == -1)
  {
    return 1;
  }

  v8 = *a3;
  *a3 = PageNumberForPageReference;
  v9 = v8 - PageNumberForPageReference;
  if (v9 < 0)
  {
    v9 = -v9;
  }

  return v9 < 2;
}

uint64_t TaggedParser::BuildObjectElement(uint64_t this, StructureElement *a2, CGPDFDictionaryRef dict, CGPDFDictionary *a4)
{
  if (this)
  {
    if (dict)
    {
      v6 = this;
      value = 0;
      this = CGPDFDictionaryGetName(dict, "Type", &value);
      if (this)
      {
        this = value;
        if (value)
        {
          this = strcmp(value, "Annot");
          if (!this)
          {
            memset(v9, 0, sizeof(v9));
            this = CGPDFDictionaryGetRect(dict, "Rect", v9);
            if (this)
            {
              __s1 = 0;
              this = CGPDFDictionaryGetName(dict, "Subtype", &__s1);
              if (this)
              {
                if (__s1)
                {
                  this = CGPDFAnnotationCreateWithCGPDFDictionary(dict);
                  if (this)
                  {
                    TaggedParser::CreateStructureElement(v6, a2, this, v7);
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return this;
}

uint64_t std::vector<std::tuple<StructureElement *,unsigned long,applesauce::CF::ObjectRef<CGPDFDictionary *>>>::__emplace_back_slow_path<StructureElement *&,unsigned long &,applesauce::CF::ObjectRef<CGPDFDictionary *>>(void *a1, void *a2, uint64_t *a3, void *a4)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = v4 - *a1;
  v7 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3);
  v8 = v7 + 1;
  if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
  }

  if (0x5555555555555556 * ((a1[2] - v5) >> 3) > v8)
  {
    v8 = 0x5555555555555556 * ((a1[2] - v5) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - v5) >> 3) >= 0x555555555555555)
  {
    v10 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    std::__allocate_at_least[abi:fe200100]<std::allocator<std::tuple<StructureElement *,unsigned long,applesauce::CF::ObjectRef<CGPDFDictionary *>>>>(v10);
  }

  v11 = (8 * (v6 >> 3));
  v12 = *a3;
  *v11 = *a2;
  v11[1] = v12;
  v11[2] = *a4;
  *a4 = 0;
  v13 = v11 - v6;
  if (v5 != v4)
  {
    v14 = v5;
    v15 = v13;
    do
    {
      *v15 = *v14;
      *(v15 + 2) = v14[2];
      v14[2] = 0;
      v14 += 3;
      v15 += 24;
    }

    while (v14 != v4);
    do
    {
      std::__destroy_at[abi:fe200100]<std::tuple<StructureElement *,unsigned long,applesauce::CF::ObjectRef<CGPDFDictionary *>>,0>(v5[2]);
      v5 += 3;
    }

    while (v5 != v4);
  }

  v16 = *a1;
  *a1 = v13;
  *(a1 + 1) = 24 * v7 + 24;
  if (v16)
  {
    operator delete(v16);
  }

  return 24 * v7 + 24;
}

void std::__allocate_at_least[abi:fe200100]<std::allocator<std::tuple<StructureElement *,unsigned long,applesauce::CF::ObjectRef<CGPDFDictionary *>>>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:fe200100]();
}

void std::vector<__CFDictionary const*>::emplace_back<__CFDictionary const* const&>(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = (v7 >> 3) + 1;
    if (v8 >> 61)
    {
      std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
    }

    v9 = v3 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:fe200100]();
    }

    v11 = (8 * (v7 >> 3));
    *v11 = *a2;
    v5 = v11 + 1;
    memcpy(0, v6, v7);
    *a1 = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

void TaggedParser::AddIntAttributeFromSourceDictionary(uint64_t a1, CGPDFDictionaryRef dict, const __CFString *a3)
{
  value = 0;
  CGPDFDictionaryGetDictionary(dict, "A", &value);
  if (value)
  {
    v6 = -2;
    CStringPtr = CFStringGetCStringPtr(a3, 0x600u);
    if (!*(a1 + 136))
    {
      *(a1 + 136) = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    }

    if (CStringPtr)
    {
      if (CGPDFDictionaryGetInteger(value, CStringPtr, &v6))
      {
        TaggedParser::InsertNewAttribute(a1, a3, v6);
      }
    }
  }
}

float64x2_t TaggedParser::SetBoundaryBoxFromSourceDictionary(uint64_t a1, CGPDFDictionaryRef dict)
{
  v15 = *MEMORY[0x1E69E9840];
  value = 0;
  CGPDFDictionaryGetDictionary(dict, "A", &value);
  if (value)
  {
    array = 0;
    CStringPtr = CFStringGetCStringPtr(@"BBox", 0x600u);
    if (!*(a1 + 136))
    {
      *(a1 + 136) = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    }

    if (CStringPtr && CGPDFDictionaryGetArray(value, CStringPtr, &array))
    {
      if (array)
      {
        v6 = *(array + 2);
        v7 = *(array + 3);
        v11 = -2.0;
        v8 = v7 - v6;
        if (v8)
        {
          v9 = 0;
          v10 = v8 >> 3;
          do
          {
            CGPDFArrayGetNumber(array, v9, &v11);
            *(v14 + v9++) = v11;
          }

          while (v10 != v9);
          v5 = v14[0];
          result = v14[1];
        }
      }

      result = vsubq_f64(result, v5);
      *(a1 + 248) = v5;
      *(a1 + 264) = result;
    }
  }

  return result;
}

void TaggedParser::LoadTextProperty(uint64_t a1, CGPDFDictionary *a2, CFStringRef theString)
{
  value = 0;
  CStringPtr = CFStringGetCStringPtr(theString, 0x600u);
  if (CStringPtr && CGPDFDictionaryGetString(a2, CStringPtr, &value))
  {
    if (!*(a1 + 144))
    {
      *(a1 + 144) = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    }

    v7 = CGPDFStringCopyTextString(value);
    if (v7)
    {
      v8 = v7;
      CFDictionarySetValue(*(a1 + 144), theString, v7);
      CFRelease(v8);
    }
  }
}

void TaggedParser::InsertNewAttribute(uint64_t a1, const void *a2, uint64_t a3)
{
  valuePtr = a3;
  v5 = *MEMORY[0x1E695E480];
  if (!*(a1 + 136))
  {
    *(a1 + 136) = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  v6 = CFNumberCreate(v5, kCFNumberIntType, &valuePtr);
  CFDictionarySetValue(*(a1 + 136), a2, v6);
  CFRelease(v6);
}

uint64_t std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__count_unique<std::string>(void *a1, void *a2)
{
  if (a1)
  {
    v3 = a1;
    v4 = 1;
    do
    {
      if ((std::operator<=>[abi:fe200100]<char,std::char_traits<char>,std::allocator<char>>(a2, v3 + 4) & 0x80) == 0)
      {
        if ((std::operator<=>[abi:fe200100]<char,std::char_traits<char>,std::allocator<char>>(v3 + 4, a2) & 0x80) == 0)
        {
          return v4;
        }

        ++v3;
      }

      v3 = *v3;
    }

    while (v3);
  }

  return 0;
}

void *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(uint64_t a1, void *a2, void *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if ((std::operator<=>[abi:fe200100]<char,std::char_traits<char>,std::allocator<char>>(a3, v4 + 4) & 0x80) == 0)
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if ((std::operator<=>[abi:fe200100]<char,std::char_traits<char>,std::allocator<char>>(v7 + 4, a3) & 0x80) == 0)
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

void sub_1841C2EB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  while (1)
  {
    v12 = *(v10 - 9);
    v10 -= 4;
    if (v12 < 0)
    {
      operator delete(*v10);
    }

    if (v10 == &a9)
    {
      MEMORY[0x1865EE610](v9, 0x1020C4062D53EE8);
      _Unwind_Resume(a1);
    }
  }
}

void RoleMapCallback(char *__s, CGPDFObject *a2, void **a3)
{
  if (a2 && *(a2 + 2) == 5)
  {
    v4 = *(a2 + 4);
    std::string::basic_string[abi:fe200100]<0>(__p, __s);
    if (!std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__count_unique<std::string>(a3[1], __p))
    {
      std::string::basic_string[abi:fe200100]<0>(&v6, v4);
      v5 = *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(a3, &v10, __p);
      if (!v5)
      {
        operator new();
      }

      if (*(v5 + 79) < 0)
      {
        operator delete(*(v5 + 56));
      }

      *(v5 + 56) = v6;
      *(v5 + 72) = v7;
    }

    if (v9 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1841C3158(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::string>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:fe200100](&a21);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(a1);
}

void TaggedParser::BeginMarkedContentSequence(TaggedParser *this, CGPDFPage *a2, CGPDFDictionaryRef dict, CGPDFDictionary *a4)
{
  if (!a2)
  {
    puts("Critical error: null page");
  }

  if ((*(*this + 97) & 1) == 0)
  {
    value = 0;
    v7 = CGPDFDictionaryGetName(dict, "Type", &value) && strcmp(value, "OCMD") == 0;
    v28 = -1;
    Integer = CGPDFDictionaryGetInteger(dict, "MCID", &v28);
    v9 = v28 >= 0 && Integer;
    if (a2 && (v10 = *(*(a2 + 5) + 8), v11 = *(*this + 104), 0xAAAAAAAAAAAAAAABLL * ((*(*this + 112) - v11) >> 3) > v10 - 1))
    {
      v12 = (v11 + 24 * (v10 - 1));
      if (v9)
      {
        v13 = v28 | (v10 << 32);
        v14 = v12[1];
        v15 = 1;
      }

      else
      {
        if (v7)
        {
          v15 = 2;
        }

        else
        {
          v15 = 0;
        }

        v14 = v12[1];
        if (v14 == *v12)
        {
          v13 = -1;
        }

        else
        {
          v13 = *(v14 - 1);
        }
      }

      v16 = v12[2];
      if (v14 < v16)
      {
        *v14 = v15;
        *(v14 + 1) = v13;
        v17 = (v14 + 16);
LABEL_33:
        v12[1] = v17;
        if (*(*this + 96) == 1)
        {
          v25 = (v17 - *v12) >> 4;
          if (v25 >= 2)
          {
            v26 = v25 - 1;
            do
            {
              printf("    ");
              --v26;
            }

            while (v26);
          }

          v27 = "marked";
          if (v7)
          {
            v27 = "optional";
          }

          printf("Pushed %s content sequence.", v27);
          if (v9)
          {
            printf(" Page number %d, MCID: %d.");
          }

          else if (v7)
          {
            printf(" Optional content.");
          }

          printf(" Current depth: %d.\n", v25);
        }

        return;
      }

      v18 = *v12;
      v19 = v14 - *v12;
      v20 = v19 >> 4;
      v21 = (v19 >> 4) + 1;
      if (!(v21 >> 60))
      {
        v22 = v16 - v18;
        if (v22 >> 3 > v21)
        {
          v21 = v22 >> 3;
        }

        if (v22 >= 0x7FFFFFFFFFFFFFF0)
        {
          v23 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v23 = v21;
        }

        if (v23)
        {
          if (!(v23 >> 60))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:fe200100]();
        }

        v24 = 16 * v20;
        *v24 = v15;
        *(v24 + 8) = v13;
        v17 = 16 * v20 + 16;
        memcpy(0, v18, v19);
        *v12 = 0;
        v12[1] = v17;
        v12[2] = 0;
        if (v18)
        {
          operator delete(v18);
        }

        goto LABEL_33;
      }
    }

    else
    {
      __break(1u);
    }

    std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
  }
}

void TaggedParser::BeginMarkedContentSequence(TaggedParser *this, CGPDFPage *a2, const char *a3, const char *a4)
{
  if (!a2)
  {
    puts("Critical error: null page");
    v5 = *this;
    if (*(*this + 97))
    {
      return;
    }

    goto LABEL_9;
  }

  v5 = *this;
  if (*(*this + 97))
  {
    return;
  }

  v7 = *(*(a2 + 5) + 16);
  if (!v7)
  {
LABEL_9:
    if (*(v5 + 96) != 1)
    {
      return;
    }

    v10 = "Missing dictionary that backs a given page";
    goto LABEL_17;
  }

  value = 0;
  if (!CGPDFDictionaryGetDictionary(v7, "Resources", &value))
  {
    if (*(*this + 96) != 1)
    {
      return;
    }

    v10 = "Missing Resources dictionary from page dictionary";
    goto LABEL_17;
  }

  dict = 0;
  if (!CGPDFDictionaryGetDictionary(value, "Properties", &dict))
  {
    if (*(*this + 96) != 1)
    {
      return;
    }

    v10 = "Missing Properties dictionary from page resources dictionary";
    goto LABEL_17;
  }

  v11 = 0;
  if (CGPDFDictionaryGetDictionary(dict, a3, &v11))
  {
    TaggedParser::BeginMarkedContentSequence(this, a2, v11, v9);
    return;
  }

  if (*(*this + 96) == 1)
  {
    v10 = "Missing given property name's dictionary from page resources's properties dictionary";
LABEL_17:
    printf("Hit tagged parsing error: %s\n", v10);
  }
}

uint64_t TaggedParser::EndMarkedContentSequence(uint64_t this, CGPDFPage *a2)
{
  if ((*(this + 97) & 1) == 0)
  {
    if (!a2 || (v2 = *(*(a2 + 5) + 8) - 1, v3 = *(this + 104), 0xAAAAAAAAAAAAAAABLL * ((*(this + 112) - v3) >> 3) <= v2))
    {
LABEL_15:
      __break(1u);
      return this;
    }

    v4 = (v3 + 24 * v2);
    v6 = *v4;
    v5 = v4[1];
    v7 = v5 - *v4;
    if (v5 != *v4)
    {
      if (*(this + 96))
      {
        v8 = (v7 >> 4) - 1;
        if ((v7 >> 4) >= 2)
        {
          v9 = (v7 >> 4) - 1;
          do
          {
            printf("    ");
            --v9;
          }

          while (v9);
        }

        this = printf("Popped content sequence. Was depth: %d\n", v8);
        v6 = *v4;
        v5 = v4[1];
      }

      if (v6 != v5)
      {
        v4[1] = v5 - 16;
        return this;
      }

      goto LABEL_15;
    }

    if (*(this + 96))
    {
      return printf("Hit tagged parsing error: %s\n", "Attempted to pop a marked content sequence from an empty stack");
    }
  }

  return this;
}

uint64_t TaggedParser::GetCurrentMCID(uint64_t this, CGPDFPage *a2)
{
  if (a2 && (v2 = *(*(a2 + 5) + 8) - 1, v3 = *(*this + 104), 0xAAAAAAAAAAAAAAABLL * ((*(*this + 112) - v3) >> 3) > v2))
  {
    v4 = &kCGPDFNodeIDNone;
    if ((*(*this + 97) & 1) == 0)
    {
      v6 = (v3 + 24 * v2);
      v5 = v6[1];
      if (v5 != *v6)
      {
        v4 = (v5 - 8);
      }
    }

    return *v4;
  }

  else
  {
    __break(1u);
  }

  return this;
}

void TaggedParser::AddGraphicBounds(TaggedParser *this, CGPDFPage *a2, CGRect a3)
{
  v3 = *this;
  if ((*(*this + 97) & 1) == 0)
  {
    height = a3.size.height;
    width = a3.size.width;
    y = a3.origin.y;
    x = a3.origin.x;
    CurrentMCID = TaggedParser::GetCurrentMCID(this, a2);
    if (CurrentMCID != -1)
    {
      v9 = HIDWORD(CurrentMCID) - 1;
      v10 = *(v3 + 224);
      if (0xCCCCCCCCCCCCCCCDLL * ((*(v3 + 232) - v10) >> 3) > v9)
      {
        v11 = (v10 + 40 * v9);
        v12 = v11[1];
        if (!*&v12)
        {
          goto LABEL_21;
        }

        v13 = vcnt_s8(v12);
        v13.i16[0] = vaddlv_u8(v13);
        if (v13.u32[0] > 1uLL)
        {
          v14 = CurrentMCID;
          if (CurrentMCID >= *&v12)
          {
            v14 = CurrentMCID % *&v12;
          }
        }

        else
        {
          v14 = (*&v12 - 1) & CurrentMCID;
        }

        v15 = *(*v11 + 8 * v14);
        if (!v15 || (v16 = *v15) == 0)
        {
LABEL_21:
          operator new();
        }

        while (1)
        {
          v17 = v16[1];
          if (v17 == CurrentMCID)
          {
            if (v16[2] == CurrentMCID)
            {
              v18.origin.x = x;
              v18.origin.y = y;
              v18.size.width = width;
              v18.size.height = height;
              *(v16 + 3) = CGRectUnion(*(v16 + 3), v18);
              return;
            }
          }

          else
          {
            if (v13.u32[0] > 1uLL)
            {
              if (v17 >= *&v12)
              {
                v17 %= *&v12;
              }
            }

            else
            {
              v17 &= *&v12 - 1;
            }

            if (v17 != v14)
            {
              goto LABEL_21;
            }
          }

          v16 = *v16;
          if (!v16)
          {
            goto LABEL_21;
          }
        }
      }

      __break(1u);
    }
  }
}

uint64_t CreateCGPDFTaggedNodeFromStructureElement(uint64_t result, CGPDFPage *a2)
{
  if (!result)
  {
    return result;
  }

  v3 = result;
  if (!IsStructureElementForPage(result, a2))
  {
    return 0;
  }

  v4 = CGPDFTaggedNodeCreate(a2);
  v5 = v4;
  if (v4)
  {
    *(v4 + 16) = *(v3 + 8);
    if (*(v3 + 40) == 1)
    {
      *(v4 + 104) = 0;
    }

    *(v4 + 24) = *(v3 + 64);
  }

  v6 = *(v3 + 144);
  if (v6)
  {
    Value = CFDictionaryGetValue(v6, @"Alt");
    if (Value)
    {
      CGPDFTaggedNodeSetAltText(v5, Value);
    }

    v8 = CFDictionaryGetValue(*(v3 + 144), @"ActualText");
    if (v8)
    {
      CGPDFTaggedNodeSetActualText(v5, v8);
    }

    v9 = CFDictionaryGetValue(*(v3 + 144), @"T");
    if (v9)
    {
      CGPDFTaggedNodeSetTitleText(v5, v9);
    }

    v10 = CFDictionaryGetValue(*(v3 + 144), @"Lang");
    if (v10)
    {
      CGPDFTaggedNodeSetLanguageText(v5, v10);
    }

    v11 = CFDictionaryGetValue(*(v3 + 144), @"TextDecorationType");
    if (v11)
    {
      CGPDFTaggedNodeSetTextDecorationType(v5, v11);
    }
  }

  else
  {
    v10 = 0;
  }

  v12 = *(v3 + 136);
  if (v12)
  {
    if (CFDictionaryContainsKey(v12, @"RowSpan"))
    {
      v13 = CFDictionaryGetValue(*(v3 + 136), @"RowSpan");
      if (v5)
      {
        *(v5 + 112) = v13;
      }
    }

    if (CFDictionaryContainsKey(*(v3 + 136), @"ColSpan"))
    {
      v14 = CFDictionaryGetValue(*(v3 + 136), @"ColSpan");
      if (v5)
      {
        *(v5 + 120) = v14;
      }
    }
  }

  v15 = *(v3 + 160);
  v16 = *(v3 + 168);
  while (v15 != v16)
  {
    v17 = *v15++;
    CGPDFTaggedNodeAddURL(v5, v17);
  }

  v18 = *(v3 + 88);
  v19 = *(v3 + 96);
  while (v18 != v19)
  {
    CGPDFTaggedNodeFromStructureElement = CreateCGPDFTaggedNodeFromStructureElement(*v18, a2);
    if (CGPDFTaggedNodeFromStructureElement)
    {
      v21 = CGPDFTaggedNodeFromStructureElement;
      if (v10)
      {
        if (!*(CGPDFTaggedNodeFromStructureElement + 152))
        {
          CGPDFTaggedNodeSetLanguageText(CGPDFTaggedNodeFromStructureElement, v10);
        }
      }

      CGPDFTaggedNodeAddTaggedNode(v5, v21);
      CFRelease(v21);
    }

    ++v18;
  }

  v22 = *(v3 + 56);
  if (v22 == -1)
  {
    v23 = 0;
  }

  else
  {
    v23 = HIDWORD(v22);
  }

  if (v5)
  {
    *(v5 + 176) = v23;
  }

  v67 = v23;
  v24 = *(v3 + 112);
  v25 = *(v3 + 120);
  while (v24 != v25)
  {
    v26 = *v24;
    if (*v24)
    {
      v27 = *v24;
      while (v27->n64_u32[0] != 517)
      {
        v27 = v27[1].n64_u64[0];
        if (!v27)
        {
          goto LABEL_72;
        }
      }

      if (v27[13].n64_u64[0])
      {
        v28 = v26->n64_u32[0];
        if (v26->n64_u32[0] == 1)
        {
          v68 = 0;
          v29 = 0;
          v30 = 1;
        }

        else if ((v28 - 257) >= 2)
        {
          if (v28 != 259)
          {
            goto LABEL_72;
          }

          v31 = v26[13].n64_i64[0];
          if (v31)
          {
            v32 = *(v31 + 16);
            if (v32)
            {
              v29 = *(v32 + 24);
              v68 = *(v32 + 32);
            }

            else
            {
              v29 = 0;
              v68 = 0;
            }

            if (CGPDFAnnotationGetType(v31) == 25)
            {
              v30 = 702;
            }

            else
            {
              v30 = 507;
            }
          }

          else
          {
            v68 = 0;
            v29 = 0;
            v30 = 0;
          }

          v28 = 259;
        }

        else
        {
          v68 = 0;
          v29 = 0;
          v30 = 700;
        }

        v33 = CGPDFTaggedNodeCreate(0);
        v34 = v33;
        if (v33)
        {
          *(v33 + 16) = v30;
          v35 = *(v33 + 96);
          if (v35)
          {
            CGPDFNodeRelease(v35);
          }

          *(v34 + 96) = v26;
          ++v26[5].n64_u32[0];
          *(v34 + 176) = v67;
        }

        v36 = CGPDFNodeGetBounds(v26).n64_f64[0];
        v38 = v37;
        v40 = v39;
        v42 = v41;
        Rotation = CGPDFNodeGetRotation(v26);
        v44 = __sincos_stret(Rotation);
        v69.tx = 0.0;
        v69.ty = 0.0;
        v69.a = v44.__cosval;
        v69.b = v44.__sinval;
        v69.c = -v44.__sinval;
        v69.d = v44.__cosval;
        v70.origin.x = v36;
        v70.origin.y = v38;
        v70.size.width = v40;
        v70.size.height = v42;
        v71 = CGRectApplyAffineTransform(v70, &v69);
        if (v34)
        {
          *(v34 + 40) = 1;
          *(v34 + 48) = v71;
          if (v28 == 257)
          {
            *(v34 + 105) = 1;
          }

          *(v34 + 24) = v29;
          *(v34 + 32) = v68;
          CGPDFTaggedNodeAddTaggedNode(v5, v34);
          CFRelease(v34);
        }
      }
    }

LABEL_72:
    ++v24;
  }

  v45 = *(v3 + 184);
  v46 = *(v3 + 192);
  while (v45 != v46)
  {
    v47 = *v45++;
    CGPDFTaggedNodeAddTaggedNode(v5, v47);
  }

  if (v5 && *(v5 + 16) == 700)
  {
    v48 = CGPDFTaggedNodeGetBounds(v5).n128_u64[0];
    v52 = 1;
LABEL_79:
    v72 = CGRectUnion(*&v48, *(v3 + 208));
    *(v5 + 40) = 1;
    *(v5 + 48) = v72;
    if (v52)
    {
      *(v5 + 105) = *(v3 + 240);
    }
  }

  else if (*(v3 + 88) == *(v3 + 96) && *(v3 + 184) == *(v3 + 192))
  {
    v48 = CGPDFTaggedNodeGetBounds(v5).n128_u64[0];
    if (v5)
    {
      v52 = 0;
      goto LABEL_79;
    }
  }

  v53 = *(v3 + 152);
  if (v53)
  {
    Rect = CGPDFAnnotationGetRect(v53);
    y = v55;
    width = v57;
    height = v59;
    RotationAngle = CGPDFPageGetRotationAngle(a2);
    if (RotationAngle)
    {
      v62 = __sincos_stret(RotationAngle * -3.14159265 / 180.0);
      v69.tx = 0.0;
      v69.ty = 0.0;
      v69.a = v62.__cosval;
      v69.b = v62.__sinval;
      v69.c = -v62.__sinval;
      v69.d = v62.__cosval;
      v73.origin.x = Rect;
      v73.origin.y = y;
      v73.size.width = width;
      v73.size.height = height;
      v74 = CGRectApplyAffineTransform(v73, &v69);
      Rect = v74.origin.x;
      y = v74.origin.y;
      width = v74.size.width;
      height = v74.size.height;
    }

    if (v5)
    {
      *(v5 + 40) = 1;
      *(v5 + 48) = Rect;
      *(v5 + 56) = y;
      *(v5 + 64) = width;
      *(v5 + 72) = height;
      goto LABEL_88;
    }

    return 0;
  }

  else
  {
LABEL_88:
    v63 = *(v3 + 248);
    v64 = *(v3 + 256);
    v65 = v63 == INFINITY;
    if (v64 == INFINITY)
    {
      v65 = 1;
    }

    if (v65)
    {
      result = v5;
    }

    else
    {
      result = 0;
    }

    if (!v65 && v5)
    {
      *(v5 + 40) = 1;
      v66 = *(v3 + 264);
      *(v5 + 48) = v63;
      *(v5 + 56) = v64;
      *(v5 + 64) = v66;
      return v5;
    }
  }

  return result;
}

void ___ZN12TaggedParser38InsertLinkAnnotationsIntoStructureTreeEP15CGPDFTaggedNodeP9CGPDFPageR10PageLayout_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (CGPDFAnnotationGetType(a3) != 8)
  {
    return;
  }

  Rect = CGPDFAnnotationGetRect(a3);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  ElementForInserting = FindElementForInserting(*(a1 + 32), Rect, v7, v9, v11);
  if (!ElementForInserting)
  {
    return;
  }

  v14 = ElementForInserting;
  v15 = *(ElementForInserting + 176);
  v38.origin.x = Rect;
  v38.origin.y = v8;
  v38.size.width = v10;
  v38.size.height = v12;
  SelectionForRect = PageLayout::CreateSelectionForRect(*(a1 + 40), v38);
  v17 = SelectionForRect;
  if (!SelectionForRect || (v18 = *(SelectionForRect + 184), v18 == *(SelectionForRect + 192)))
  {
    v20 = 0;
    v21 = 0;
    v19 = 1;
  }

  else
  {
    v19 = 0;
    v20 = *(v18 + 8);
    v21 = *(v18 + 16);
  }

  v22 = CGPDFTaggedNodeCreate(a2);
  v23 = v22;
  if (v22)
  {
    *(v22 + 16) = 506;
    *(v22 + 104) = 0;
    *(v22 + 176) = v15;
    *(v22 + 40) = 1;
    *(v22 + 48) = Rect;
    *(v22 + 56) = v8;
    *(v22 + 64) = v10;
    *(v22 + 72) = v12;
    if ((v19 & 1) == 0)
    {
      *(v22 + 184) = 1;
      *(v22 + 192) = v20;
      *(v22 + 200) = v21;
      *(v22 + 208) = 0;
    }
  }

  v24 = CGPDFTaggedNodeCreate(a2);
  v25 = v24;
  if (v24)
  {
    *(v24 + 16) = 800;
    *(v24 + 176) = v15;
    *(v24 + 104) = 0;
    *(v24 + 40) = 1;
    *(v24 + 48) = Rect;
    *(v24 + 56) = v8;
    *(v24 + 64) = v10;
    *(v24 + 72) = v12;
  }

  v26 = *(a3 + 16);
  if (!v26)
  {
    v27 = 0uLL;
    if (!v24)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v27 = *(v26 + 24);
  if (v24)
  {
LABEL_14:
    *(v24 + 24) = v27;
  }

LABEL_15:
  CGPDFTaggedNodeAddTaggedNode(v23, v24);
  if (v19)
  {
    CGPDFTaggedNodeAddTaggedNode(v14, v23);
  }

  else
  {
    StringRange = CGPDFTaggedNodeGetStringRange(v14);
    v30 = v29;
    v31 = CGPDFSelectionGetStringRange(v17, 0);
    v32 = v31;
    v34 = v33;
    if (v31 <= StringRange)
    {
      CopyWithStringRange = 0;
    }

    else
    {
      CopyWithStringRange = CGPDFTaggedNodeCreateCopyWithStringRange(v14, StringRange, v31 - StringRange);
    }

    if (StringRange + v30 <= v32 + v34)
    {
      v36 = 0;
    }

    else
    {
      v36 = CGPDFTaggedNodeCreateCopyWithStringRange(v14, v32 + v34, StringRange + v30 - (v32 + v34));
    }

    v37 = CGPDFTaggedNodeCreateCopyWithStringRange(v14, v32, v34);
    CGPDFTaggedNodeAddTaggedNode(v23, v37);
    CGPDFTaggedNodeRemoveAllChildren(v14);
    if (CopyWithStringRange)
    {
      CGPDFTaggedNodeAddTaggedNode(v14, CopyWithStringRange);
    }

    CGPDFTaggedNodeAddTaggedNode(v14, v23);
    if (v36)
    {
      CGPDFTaggedNodeAddTaggedNode(v14, v36);
    }

    if (v37)
    {
      CFRelease(v37);
    }

    if (v36)
    {
      CFRelease(v36);
    }

    if (CopyWithStringRange)
    {
      CFRelease(CopyWithStringRange);
    }
  }

  if (v25)
  {
    CFRelease(v25);
  }

  if (v23)
  {
    CFRelease(v23);
  }

  if (v17)
  {
    CFRelease(v17);
  }
}

void sub_1841C4380(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va4, a2);
  va_start(va3, a2);
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v5 = va_arg(va2, const void *);
  va_copy(va3, va2);
  v7 = va_arg(va3, const void *);
  va_copy(va4, va3);
  v9 = va_arg(va4, const void *);
  applesauce::CF::ObjectRef<CGPDFTaggedNode *>::~ObjectRef(va);
  applesauce::CF::ObjectRef<CGPDFTaggedNode *>::~ObjectRef(va1);
  applesauce::CF::ObjectRef<CGPDFTaggedNode *>::~ObjectRef(va2);
  applesauce::CF::ObjectRef<CGPDFTaggedNode *>::~ObjectRef(va3);
  applesauce::CF::ObjectRef<CGPDFSelection *>::~ObjectRef(va4);
  _Unwind_Resume(a1);
}

void ___ZN12TaggedParser39InsertSignatureMarkersIntoStructureTreeEP15CGPDFTaggedNodeP9CGPDFPageR10PageLayout_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  value = 0;
  if (CGPDFDictionaryGetName(v6, "Subtype", &value) && strcmp(value, "Widget"))
  {
    return;
  }

  v32 = 0;
  if (CGPDFDictionaryGetBoolean(v6, "AAPL:isSignatureMarker", &v32) && v32 == 0)
  {
    return;
  }

  Rect = CGPDFAnnotationGetRect(a3);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  ElementForInserting = FindElementForInserting(*(a1 + 32), Rect, v9, v11, v13);
  if (!ElementForInserting)
  {
    return;
  }

  v16 = ElementForInserting;
  v34.origin.x = Rect;
  v34.origin.y = v10;
  v34.size.width = v12;
  v34.size.height = v14;
  SelectionForRect = PageLayout::CreateSelectionForRect(*(a1 + 40), v34);
  v18 = SelectionForRect;
  if (SelectionForRect)
  {
    v19 = *(SelectionForRect + 184) == *(SelectionForRect + 192);
  }

  else
  {
    v19 = 1;
  }

  v20 = CGPDFTaggedNodeCreate(a2);
  v21 = v20;
  if (v20)
  {
    *(v20 + 176) = *(v16 + 176);
    *(v20 + 16) = 800;
    *(v20 + 104) = 0;
    *(v20 + 40) = 1;
    *(v20 + 48) = Rect;
    *(v20 + 56) = v10;
    *(v20 + 64) = v12;
    *(v20 + 72) = v14;
  }

  if (!v6)
  {
    v22 = 0uLL;
    if (!v20)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v22 = *(v6 + 24);
  if (v20)
  {
LABEL_15:
    *(v20 + 24) = v22;
  }

LABEL_16:
  if (v19)
  {
    CGPDFTaggedNodeAddTaggedNode(v16, v20);
  }

  else
  {
    StringRange = CGPDFTaggedNodeGetStringRange(v16);
    v25 = v24;
    v26 = CGPDFSelectionGetStringRange(v18, 0);
    v27 = v26;
    v29 = v28;
    if (v26 <= StringRange)
    {
      CopyWithStringRange = 0;
    }

    else
    {
      CopyWithStringRange = CGPDFTaggedNodeCreateCopyWithStringRange(v16, StringRange, v26 - StringRange);
    }

    if (StringRange + v25 <= v27 + v29)
    {
      v31 = 0;
    }

    else
    {
      v31 = CGPDFTaggedNodeCreateCopyWithStringRange(v16, v27 + v29, StringRange + v25 - (v27 + v29));
    }

    CGPDFTaggedNodeRemoveAllChildren(v16);
    if (CopyWithStringRange)
    {
      CGPDFTaggedNodeAddTaggedNode(v16, CopyWithStringRange);
    }

    CGPDFTaggedNodeAddTaggedNode(v16, v21);
    if (v31)
    {
      CGPDFTaggedNodeAddTaggedNode(v16, v31);
      CFRelease(v31);
    }

    if (CopyWithStringRange)
    {
      CFRelease(CopyWithStringRange);
    }
  }

  if (v21)
  {
    CFRelease(v21);
  }

  if (v18)
  {
    CFRelease(v18);
  }
}