BOOL C3DTextureRawDataIsEqual(uint64_t a1, uint64_t a2)
{
  if (a1 == a2 || (v3 = 0, a1) && a2)
  {
    if (*(a1 + 4) == *(a2 + 4) && *(a1 + 24) == *(a2 + 24) && *(a1 + 36) == *(a2 + 36))
    {
      Count = CFArrayGetCount(*(a1 + 40));
      return Count == CFArrayGetCount(*(a2 + 40));
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

double C3DTextureRawDataCopyAttributes(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 11) = *(a2 + 11);
  *(a1 + 16) = *(a2 + 16);
  result = *(a2 + 32);
  *(a1 + 32) = result;
  return result;
}

CGImageRef C3DImageCopyCGImage(uint64_t a1)
{
  v28[1] = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DImageGetURL_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  if (*(a1 + 96) != 3)
  {
    pthread_mutex_lock(&bitmapAccessSharedMutex);
    v11 = *(a1 + 64);
    if (v11)
    {
LABEL_7:
      Image = CGBitmapContextCreateImage(v11);
LABEL_8:
      pthread_mutex_unlock(&bitmapAccessSharedMutex);
      return Image;
    }

    URL = C3DImageGetURL(a1);
    if (URL)
    {
      v24 = 0;
      v14 = C3DImageCopyUSDZEmbeddedData(a1, &v24);
      if (v14)
      {
        v15 = v14;
        v16 = CGImageSourceCreateWithData(v14, 0);
        CFRelease(v15);
        if (v16)
        {
          v27 = *MEMORY[0x277CD3610];
          v28[0] = MEMORY[0x277CBEC38];
          Image = CGImageSourceCreateImageAtIndex(v16, 0, [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1]);
          CFRelease(v16);
          goto LABEL_8;
        }
      }

      if (v24)
      {
        goto LABEL_34;
      }

      v17 = C3DCreateImageSourceWithURL(URL);
      if (v17)
      {
        v18 = v17;
LABEL_19:
        v25 = *MEMORY[0x277CD3610];
        v26 = MEMORY[0x277CBEC38];
        Image = CGImageSourceCreateImageAtIndex(v18, 0, [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1]);
        if (!Image)
        {
          v20 = scn_default_log();
          v21 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
          if (URL)
          {
            if (v21)
            {
              C3DImageCopyCGImage_cold_2(v18, URL, v20);
            }
          }

          else if (v21)
          {
            C3DImageCopyCGImage_cold_3(v18, v20);
          }
        }

        CFRelease(v18);
        goto LABEL_32;
      }

      v23 = SCNFindImageNamedInAppBundle(URL);
      if (v23)
      {
        Image = v23;
        CGImageRetain(v23);
        goto LABEL_8;
      }
    }

    else
    {
      Data = C3DImageGetData(a1);
      if (Data)
      {
        v18 = CGImageSourceCreateWithData(Data, 0);
        if (v18)
        {
          goto LABEL_19;
        }

        v22 = scn_default_log();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          C3DImageCopyCGImage_cold_4();
        }
      }
    }

    if (*(a1 + 96) != 4)
    {
      goto LABEL_33;
    }

    Image = SCNCopyCGImageFromImage(*(a1 + 88));
LABEL_32:
    if (Image)
    {
      goto LABEL_8;
    }

LABEL_33:
    v11 = *(a1 + 64);
    if (v11)
    {
      goto LABEL_7;
    }

LABEL_34:
    Image = 0;
    goto LABEL_8;
  }

  return CGImageRetain(*(a1 + 88));
}

uint64_t C3DImageCreateWithCGImage(CGImage *a1)
{
  v2 = C3DImageCreate();
  if (v2)
  {
    *(v2 + 88) = CGImageRetain(a1);
    *(v2 + 96) = 3;
  }

  return v2;
}

_DWORD *C3DImageCreateVerticalStripCubemapWithImage(uint64_t a1)
{
  v1 = a1;
  if (!C3DImageIsCubeMap(a1))
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      C3DImageCreateVerticalStripCubemapWithImage_cold_1();
    }

    return 0;
  }

  if (v1[30] != 5)
  {
    return 0;
  }

  CFRetain(v1);
  return v1;
}

BOOL C3DImageIsCubeMap(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DImageGetURL_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return (*(a1 + 120) - 3) < 5;
}

uint64_t C3DImageCreateWithClientImage(const void *a1)
{
  v2 = C3DImageCreate();
  if (v2)
  {
    *(v2 + 88) = CFRetain(a1);
    *(v2 + 96) = 4;
  }

  return v2;
}

uint64_t C3DImageCreateWithName(__CFString *a1)
{
  v1 = a1;
  v2 = [objc_msgSend(MEMORY[0x277D02670] defaultUICatalogForBundle:{SCNGetResourceBundle()), "namedTextureWithName:scaleFactor:", a1, 1.0}];
  if (!v2 || (v3 = v2, [v2 size], v15 = v5, v16 = v4, v6 = objc_msgSend(v3, "isOpaque"), v7.f64[0] = v16, v7.f64[1] = v15, (result = C3DImageCreateWithCatalogTextureNameAndSize(v1, v6, COERCE_DOUBLE(vcvt_f32_f64(v7)))) == 0))
  {
    v9 = C3DCopyURLOfResourceNamed(v1);
    if (v9)
    {
      v10 = v9;
      v11 = C3DImageCreateWithURL(v9);
      CFRelease(v10);
      return v11;
    }

    else
    {
      if ([(__CFString *)v1 length]>= 2 && [(__CFString *)v1 characterAtIndex:0]!= 47)
      {
        v12 = SCNHasSpecialResourceBundle();
        v13 = SCNGetResourceBundle();
        if (v12)
        {
          v14 = [v13 bundlePath];
        }

        else
        {
          v14 = [v13 resourcePath];
        }

        v1 = [v14 stringByAppendingPathComponent:v1];
      }

      return C3DImageCreateWithPath(v1);
    }
  }

  return result;
}

uint64_t C3DImageCreateWithCatalogTextureNameAndSize(const void *a1, char a2, double a3)
{
  v6 = C3DImageCreate();
  if (v6)
  {
    *(v6 + 88) = CFRetain(a1);
    *(v6 + 96) = 5;
    v7 = *(v6 + 116);
    *(v6 + 104) = a3;
    *(v6 + 116) = v7 & 0xFE | a2 ^ 1 | 0x1C;
  }

  return v6;
}

CGContextRef C3DCreateSRGBBitmapContextWithSize(double a1, double a2)
{
  v2 = a1;
  v3 = a2;
  v4 = 4 * a1;
  v5 = C3DColorSpaceSRGB();

  return CGBitmapContextCreate(0, v2, v3, 8uLL, v4, v5, 0x4001u);
}

CGContext *C3DCreateCGBitmapContextRefFromCGImageRef(CGImage *a1)
{
  v22 = *MEMORY[0x277D85DE8];
  Width = CGImageGetWidth(a1);
  Height = CGImageGetHeight(a1);
  BitmapInfo = CGImageGetBitmapInfo(a1);
  ColorSpace = CGImageGetColorSpace(a1);
  if (!ColorSpace)
  {
    if ((BitmapInfo & 0x100) == 0)
    {
      C3DWideGamutIsUsed();
      v9 = 1;
      goto LABEL_9;
    }

LABEL_16:
    v11 = 8 * Width;
    v12 = 4353;
    v13 = 16;
    v14 = C3DColorSpaceExtendedLinearSRGB();
LABEL_17:
    v15 = v14;
    goto LABEL_18;
  }

  v6 = ColorSpace;
  BaseColorSpace = CGColorSpaceGetBaseColorSpace(ColorSpace);
  if (BaseColorSpace)
  {
    v6 = BaseColorSpace;
  }

  IsWideGamutRGB = CGColorSpaceIsWideGamutRGB(v6);
  if ((BitmapInfo & 0x100) != 0 || (C3DWideGamutIsUsed() & IsWideGamutRGB) == 1)
  {
    goto LABEL_16;
  }

  v9 = CGColorSpaceGetNumberOfComponents(v6) == 1;
LABEL_9:
  v10 = BitmapInfo & 0x1F;
  if (BitmapInfo & 0x1F) != 0 || !v9 || (C3DWasLinkedBeforeMajorOSYear2016())
  {
    v11 = 4 * Width;
    if (v10)
    {
      v12 = 16385;
    }

    else
    {
      v12 = 16389;
    }

    v13 = 8;
    v14 = C3DColorSpaceSRGB();
    goto LABEL_17;
  }

  v13 = 8;
  v15 = C3DColorSpaceGray();
  v12 = 0;
  v11 = Width;
LABEL_18:
  v16 = CGBitmapContextCreate(0, Width, Height, v13, v11, v15, v12);
  v17 = v16;
  if (v16)
  {
    v23.size.width = Width;
    v23.size.height = Height;
    v23.origin.x = 0.0;
    v23.origin.y = 0.0;
    CGContextDrawImage(v16, v23, a1);
  }

  else
  {
    v18 = scn_default_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138412290;
      v21 = a1;
      _os_log_impl(&dword_21BEF7000, v18, OS_LOG_TYPE_DEFAULT, "Warning: Failed to create bitmap context for CG image %@", &v20, 0xCu);
    }
  }

  return v17;
}

CGContextRef C3DCreateSRGBBitmapContextWithContext(CGContext *a1)
{
  ColorSpace = CGBitmapContextGetColorSpace(a1);
  if (ColorSpace == C3DColorSpaceSRGB())
  {

    return CGContextRetain(a1);
  }

  else
  {
    Width = CGBitmapContextGetWidth(a1);
    Height = CGBitmapContextGetHeight(a1);
    v5 = *MEMORY[0x277CBF348];
    v6 = *(MEMORY[0x277CBF348] + 8);
    v7 = C3DCreateSRGBBitmapContextWithSize(Width, Height);
    Image = CGBitmapContextCreateImage(a1);
    v11.origin.x = v5;
    v11.origin.y = v6;
    v11.size.width = Width;
    v11.size.height = Height;
    CGContextDrawImage(v7, v11, Image);
    CGImageRelease(Image);
    return v7;
  }
}

uint64_t C3DImageCreateWithCGImageAndSize(CGImage *a1, double a2)
{
  v3 = C3DImageCreateWithCGImage(a1);
  __ImageResize(v3, a1, *&a2, *(&a2 + 1));
  *(v3 + 116) |= 8u;
  *(v3 + 104) = a2;
  return v3;
}

void __ImageResize(uint64_t a1, CGImage *a2, unsigned int a3, unsigned int a4)
{
  Size = C3DImageGetSize(a1);
  v9 = a3;
  v10 = a4;
  v11.f32[0] = a3;
  v11.f32[1] = a4;
  v12 = vceq_f32(*&Size, v11);
  if ((vpmin_u32(v12, v12).u32[0] & 0x80000000) == 0)
  {
    if (a2)
    {
      v13 = v9;
      v14 = v10;
      v15 = C3DCreateSRGBBitmapContextWithSize(v9, v10);
      CGContextSetInterpolationQuality(v15, kCGInterpolationHigh);
      v19.origin.x = 0.0;
      v19.origin.y = 0.0;
      v19.size.width = v13;
      v19.size.height = v14;
      CGContextDrawImage(v15, v19, a2);
      pthread_mutex_lock(&bitmapAccessSharedMutex);
      v16 = *(a1 + 64);
      if (v16)
      {
        CFRelease(v16);
      }

      *(a1 + 64) = v15;
      pthread_mutex_unlock(&bitmapAccessSharedMutex);
      if (*(a1 + 96))
      {
        *(a1 + 96) = 0;
        v17 = *(a1 + 88);
        if (v17)
        {
          CFRelease(v17);
          *(a1 + 88) = 0;
        }
      }
    }

    else
    {
      v18 = scn_default_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        __ImageResize_cold_1();
      }
    }
  }
}

uint64_t C3DImageGetCatalogTextureName(uint64_t a1)
{
  if (*(a1 + 96) != 5)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DImageGetCatalogTextureName_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 88);
}

uint64_t C3DImageCopyUSDZEmbeddedData(uint64_t a1, BOOL *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  URL = C3DImageGetURL(a1);
  v4 = [objc_msgSend(URL "query")];
  if (a2)
  {
    *a2 = v4 != 0;
  }

  if (!v4)
  {
    return 0;
  }

  v5 = [objc_msgSend(URL "path")];
  v6 = [objc_msgSend(MEMORY[0x277CCACE0] componentsWithURL:URL resolvingAgainstBaseURL:{0), "queryItems"}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (!v7)
  {
    goto LABEL_19;
  }

  v8 = v7;
  v9 = 0;
  v10 = 0;
  v11 = *v20;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v20 != v11)
      {
        objc_enumerationMutation(v6);
      }

      v13 = *(*(&v19 + 1) + 8 * i);
      if ([objc_msgSend(v13 "name")])
      {
        v10 = [objc_msgSend(v13 "value")];
      }

      else if ([objc_msgSend(v13 "name")])
      {
        v9 = [objc_msgSend(v13 "value")];
      }
    }

    v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  }

  while (v8);
  if (v9 < 1)
  {
LABEL_19:
    v17 = scn_default_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      C3DImageCopyUSDZEmbeddedData_cold_2();
    }

    return 0;
  }

  v14 = [objc_alloc(NSClassFromString(&cfstr_Mdlmemorymappe.isa)) initWithURL:objc_msgSend(MEMORY[0x277CBEBC0] offset:"fileURLWithPath:" length:{v5), v10, v9}];
  v15 = [objc_msgSend(v14 "dataNoCopy")];

  if (!v15)
  {
    v16 = scn_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      C3DImageCopyUSDZEmbeddedData_cold_1();
    }

    goto LABEL_19;
  }

  return v15;
}

uint64_t C3DImageGetData(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DImageGetURL_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  if (*(a1 + 96) == 2)
  {
    return *(a1 + 88);
  }

  else
  {
    return 0;
  }
}

uint64_t C3DImageGetName(uint64_t a1)
{
  v1 = *(a1 + 96);
  if (v1 == 5)
  {
    return *(a1 + 88);
  }

  if (v1 == 1)
  {
    return [*(a1 + 88) lastPathComponent];
  }

  return 0;
}

uint64_t C3DImageCacheBitmap(uint64_t a1)
{
  v69 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DImageGetURL_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  pthread_mutex_lock(&bitmapAccessSharedMutex);
  if (!*(a1 + 64) && *(a1 + 96) != 5 && (*(a1 + 80) & 2) == 0 && !C3DImageGetTextureRawData(a1))
  {
    kdebug_trace();
    v10 = C3DImageCopyCGImage(a1);
    if (*(a1 + 64) && (v11 = scn_default_log(), os_log_type_enabled(v11, OS_LOG_TYPE_FAULT)))
    {
      C3DImageCacheBitmap_cold_2(v11, v12, v13, v14, v15, v16, v17, v18);
      if (!v10)
      {
        goto LABEL_83;
      }
    }

    else if (!v10)
    {
LABEL_83:
      kdebug_trace();
      return pthread_mutex_unlock(&bitmapAccessSharedMutex);
    }

    v19 = C3DCreateCGBitmapContextRefFromCGImageRef(v10);
    *(a1 + 64) = v19;
    if (!v19)
    {
      v37 = scn_default_log();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        C3DImageCacheBitmap_cold_3();
      }

      goto LABEL_82;
    }

    if ((*(a1 + 116) & 4) != 0)
    {
LABEL_66:
      HasAlpha = C3DImageHasAlpha(a1);
      ColorSpace = CGBitmapContextGetColorSpace(*(a1 + 64));
      if (ColorSpace != C3DColorSpaceExtendedLinearSRGB() && ColorSpace != C3DColorSpaceLinearGray() && ColorSpace != C3DColorSpaceLinearSRGB())
      {
        v54 = ColorSpace == C3DColorSpaceLinearDisplayP3() ? 0 : HasAlpha;
        if (v54 == 1 && (C3DImageNeedsUnpremultiply(a1) & 1) == 0)
        {
          if (C3DLinearRenderingIsEnabled())
          {
            v55 = CACurrentMediaTime();
            C3DBitmapFixIncorrectPremultiply(*(a1 + 64));
            v56 = scn_default_log();
            if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
            {
              v57 = *(a1 + 96);
              if (v57 == 5)
              {
                v58 = *(a1 + 88);
              }

              else if (v57 == 1)
              {
                v58 = [*(a1 + 88) lastPathComponent];
              }

              else
              {
                v58 = 0;
              }

              v59 = *(a1 + 104);
              v61 = 138413058;
              v62 = v58;
              v63 = 1024;
              v64 = *&v59;
              v65 = 1024;
              v66 = *(&v59 + 1);
              v67 = 2048;
              v68 = (CACurrentMediaTime() - v55) * 1000.0;
              _os_log_impl(&dword_21BEF7000, v56, OS_LOG_TYPE_INFO, "Info: FixIncorrectPremultiply %@ time %u x %u : %fms", &v61, 0x22u);
            }
          }
        }
      }

LABEL_82:
      CGImageRelease(v10);
      goto LABEL_83;
    }

    v20 = v19;
    AlphaInfo = CGImageGetAlphaInfo(v10);
    v22 = AlphaInfo - 1;
    v24 = AlphaInfo == kCGImageAlphaOnly || v22 < 4;
    if (v22 <= 3)
    {
      Data = CGBitmapContextGetData(v20);
      if (Data)
      {
        v26 = Data;
        Width = CGBitmapContextGetWidth(v20);
        Height = CGBitmapContextGetHeight(v20);
        BitsPerComponent = CGBitmapContextGetBitsPerComponent(v20);
        v30 = (CGBitmapContextGetBitsPerPixel(v20) / BitsPerComponent * BitsPerComponent) >> 3;
        BytesPerRow = CGBitmapContextGetBytesPerRow(v20);
        if (v30 == 4)
        {
          if (CGImageGetBitmapInfo(v10) == 0x2000)
          {
            v32 = 0;
          }

          else
          {
            v32 = 3;
          }

          if (Height)
          {
            v33 = 0;
            v34 = 0;
            while (!Width)
            {
LABEL_31:
              v24 = 0;
              ++v33;
              v34 += BytesPerRow;
              if (v33 == Height)
              {
                goto LABEL_65;
              }
            }

            v35 = v34 + v32;
            v36 = Width;
            while (v26[v35] >= 0xFEu)
            {
              v35 += 4;
              if (!--v36)
              {
                goto LABEL_31;
              }
            }

LABEL_64:
            v24 = 1;
            goto LABEL_65;
          }
        }

        else if ((CGBitmapContextGetBitmapInfo(v20) & 0x100) != 0)
        {
          if (v30 == 8)
          {
            if (Height)
            {
              v42 = 0;
              v43 = (v26 + 6);
              while (1)
              {
                v44 = v43;
                v45 = Width;
                if (Width)
                {
                  break;
                }

LABEL_61:
                v24 = 0;
                ++v42;
                v43 = (v43 + BytesPerRow);
                if (v42 == Height)
                {
                  goto LABEL_65;
                }
              }

              while (1)
              {
                v47 = *v44;
                v44 += 4;
                v46 = v47;
                v48 = (v47 >> 10) & 0x1F;
                v49 = v48 == 31 ? 2139095040 : v48;
                v50 = !v48 || v48 == 31;
                v51 = v50 ? v49 : (v48 << 23) + 939524096;
                if (COERCE_FLOAT(v51 | (v46 << 16) & 0x80000000 | (v46 >> 7) & 7 | (8 * (v46 & 0x3FF)) & 0x1FFF | ((v46 & 0x3FF) << 13)) < 0.999)
                {
                  goto LABEL_64;
                }

                if (!--v45)
                {
                  goto LABEL_61;
                }
              }
            }
          }

          else if (v30 == 16 && Height)
          {
            v38 = 0;
            v39 = (v26 + 12);
            while (1)
            {
              v40 = v39;
              v41 = Width;
              if (Width)
              {
                break;
              }

LABEL_45:
              v24 = 0;
              ++v38;
              v39 = (v39 + BytesPerRow);
              if (v38 == Height)
              {
                goto LABEL_65;
              }
            }

            while (*v40 >= 0.999)
            {
              v40 += 4;
              if (!--v41)
              {
                goto LABEL_45;
              }
            }

            goto LABEL_64;
          }
        }
      }

      v24 = 0;
    }

LABEL_65:
    *(a1 + 116) = *(a1 + 116) & 0xFE | v24 | 4;
    goto LABEL_66;
  }

  return pthread_mutex_unlock(&bitmapAccessSharedMutex);
}

uint64_t C3DImageHasAlpha(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DImageGetURL_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  if (C3DImageIsCubeMap(a1))
  {
    return 0;
  }

  v11 = *(a1 + 116);
  if (*(a1 + 96) != 5 && (*(a1 + 116) & 4) == 0)
  {
    pthread_mutex_lock(&bitmapAccessSharedMutex);
    if ((*(a1 + 80) & 2) != 0 || C3DImageGetTextureRawData(a1))
    {
      if ((*(a1 + 116) & 4) == 0)
      {
        *(a1 + 116) = *(a1 + 116) & 0xFE | *(*(a1 + 72) + 6) & 1 | 4;
      }
    }

    else
    {
      pthread_mutex_unlock(&bitmapAccessSharedMutex);
      pthread_mutex_lock(&bitmapAccessSharedMutex);
      v12 = C3DImageCopyBitmap(a1, 1);
      if (v12)
      {
        CFRelease(v12);
      }
    }

    pthread_mutex_unlock(&bitmapAccessSharedMutex);
    v11 = *(a1 + 116);
  }

  return v11 & 1;
}

uint64_t C3DImageNeedsUnpremultiply(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DImageGetURL_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return (*(a1 + 116) >> 1) & 1;
}

size_t C3DBitmapFixIncorrectPremultiply(CGContext *a1)
{
  Width = CGBitmapContextGetWidth(a1);
  Height = CGBitmapContextGetHeight(a1);
  result = CGBitmapContextGetData(a1);
  if (result)
  {
    v5 = result;
    BitsPerComponent = CGBitmapContextGetBitsPerComponent(a1);
    result = CGBitmapContextGetBitsPerPixel(a1);
    if (((result / BitsPerComponent * BitsPerComponent) & 0xFFFFFFFFFFFFFFF8) == 0x20)
    {
      result = CGBitmapContextGetBytesPerRow(a1);
      if (Height)
      {
        v7 = 0;
        v8 = xmmword_21C280C00;
        v9.i64[0] = 0xFF000000FFLL;
        v9.i64[1] = 0xFF000000FFLL;
        v10 = vdupq_n_s32(0x3E1C096Eu);
        v11 = vdupq_n_s32(0xBF12862E);
        v12 = vdupq_n_s32(0x3F6BC556u);
        v13 = vdupq_n_s32(0xBF66EEDE);
        v14 = vdupq_n_s32(0x3F622C5Fu);
        v15 = vdupq_n_s32(0x3EF653C9u);
        v16 = vdupq_n_s32(0x3D11FA77u);
        v17 = vdupq_n_s32(0x3A5DBC4Du);
        v18 = vdupq_n_s32(0x3D9E8391u);
        v19 = vdupq_n_s32(0x3D25AEE6u);
        v20 = vdupq_n_s32(0xC5D0CBF7);
        v21 = vdupq_n_s32(0x44991F14u);
        v22 = vdupq_n_s32(0xC2C877E1);
        v23 = vdupq_n_s32(0x40D350C9u);
        v24 = vdupq_n_s32(0x3D7A766Bu);
        v25 = vdupq_n_s32(0xB9693F28);
        v26 = vdupq_n_s32(0x34DD5C9Cu);
        v27 = vdupq_n_s32(0xAFC12644);
        v28 = vdupq_n_s32(0xBE3FCBA9);
        v29 = vdupq_n_s32(0x3F259300u);
        v30 = vdupq_n_s32(0xBF7D862E);
        v31 = vdupq_n_s32(0x3F9ACD51u);
        v75 = vdupq_n_s32(0xBC5C6168);
        v76 = vdupq_n_s32(0x3EAB2DE7u);
        v73 = vdupq_n_s32(0xB6DEE3CF);
        v74 = vdupq_n_s32(0x39E887D3u);
        v32 = vdupq_n_s32(0x3D563886u);
        v71 = vdupq_n_s32(0x3B808081u);
        v72 = v10;
        do
        {
          v33 = Width;
          v34 = v5;
          if (Width)
          {
            do
            {
              v35 = v34;
              v37 = vld1q_dup_f32(v35);
              v36 = v35 + 1;
              v39 = vcvtq_f32_u32(vandq_s8(vshlq_u32(v37, v8), v9));
              v38 = vmulq_f32(v39, v71);
              v39.i32[0] = v38.i32[3];
              if (v38.f32[3] <= 0.0)
              {
                v39.f32[0] = 0.0001;
              }

              v40 = vdivq_f32(v38, vdupq_lane_s32(*v39.f32, 0));
              v41 = vmulq_f32(v40, v40);
              v42 = vmlaq_f32(v15, v14, v40);
              v43 = v14;
              v44 = v13;
              v45 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v17, v16, v40), v41, v42), vmulq_f32(v41, v41), vmlaq_f32(vmlaq_f32(v13, v12, v40), v41, vmlaq_f32(v11, v10, v40)));
              v46 = vmulq_f32(v40, v18);
              v47 = vcgeq_f32(v40, v19);
              v47.i32[3] = 0;
              v48 = vmulq_n_f32(vbslq_s8(vcltzq_s32(v47), v45, v46), v39.f32[0]);
              v49 = vmulq_f32(v48, v48);
              v50 = vmulq_f32(v48, v49);
              v50.i32[3] = 0;
              v51 = vmlaq_f32(vmlaq_f32(v23, v22, v48), v49, vmlaq_f32(v21, v20, v48));
              v52 = vmlaq_f32(vmlaq_f32(v27, v26, v48), v49, vmlaq_f32(v25, v24, v48));
              v53 = vmlaq_f32(vmlaq_f32(v31, v30, v48), v49, vmlaq_f32(v29, v28, v48));
              v54 = vmlaq_f32(vmlaq_f32(v73, v74, v48), v49, vmlaq_f32(v75, v76, v48));
              v55 = vmulq_f32(v49, v49);
              v56 = vmlaq_f32(v52, v55, v51);
              v57 = vcgeq_f32(v48, v32);
              v57.i32[3] = 0;
              v58 = vbslq_s8(vcltzq_s32(v57), vmlaq_f32(v54, v55, v53), v56);
              v13 = v44;
              v14 = v43;
              v59 = vrecpeq_f32(v50);
              v60 = vmulq_f32(v59, vrecpsq_f32(v50, v59));
              v10 = v72;
              v61 = vmulq_f32(vmulq_f32(v60, vrecpsq_f32(v50, v60)), v58);
              v62 = vmulq_f32(v48, vdupq_n_s32(0x414EB852u));
              v63 = vcgeq_f32(v48, vdupq_n_s32(0x3B4D2E1Cu));
              v63.i32[3] = 0;
              v64 = vbslq_s8(vcltzq_s32(v63), v61, v62);
              v64.i32[3] = v39.i32[0];
              v62.i64[0] = 0x3F0000003F000000;
              v62.i64[1] = 0x3F0000003F000000;
              v65 = vcvtq_s32_f32(vmlaq_f32(v62, vdupq_n_s32(0x437F0000u), v64));
              v9.i64[0] = 0xFF000000FFLL;
              v9.i64[1] = 0xFF000000FFLL;
              v66 = vandq_s8(v65, v9);
              v67 = v66.i32[1];
              v68 = v66.i32[0];
              *v66.i8 = vshl_u32(*&vextq_s8(v66, v66, 8uLL), 0x1800000010);
              v69 = v66.i32[1];
              v70 = v66.i32[0];
              v8 = xmmword_21C280C00;
              *v34 = v68 | (v67 << 8) | v70 | v69;
              v34 = v36;
              --v33;
            }

            while (v33);
          }

          ++v7;
          v5 = (v5 + result);
        }

        while (v7 != Height);
      }
    }
  }

  return result;
}

CFTypeRef C3DImageCopyBitmap(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DImageGetURL_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  pthread_mutex_lock(&bitmapAccessSharedMutex);
  v12 = *(a1 + 64);
  if (v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = a2 == 0;
  }

  if (!v13)
  {
    C3DImageCacheBitmap(a1);
    v12 = *(a1 + 64);
  }

  if (v12)
  {
    v14 = CFRetain(v12);
  }

  else
  {
    v14 = 0;
  }

  pthread_mutex_unlock(&bitmapAccessSharedMutex);
  return v14;
}

void C3DImageReleaseBitmapCache(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DImageGetURL_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  if (*(a1 + 96))
  {
    pthread_mutex_lock(&bitmapAccessSharedMutex);
    v10 = *(a1 + 64);
    if (v10)
    {
      CFRelease(v10);
      *(a1 + 64) = 0;
      *(a1 + 80) |= 1u;
    }

    pthread_mutex_unlock(&bitmapAccessSharedMutex);
    pthread_mutex_lock(&bitmapAccessSharedMutex);
    if (*(a1 + 72))
    {
      _C3DImageDeleteTextureRawDataIfNeeded(a1);
      *(a1 + 80) |= 2u;
    }

    pthread_mutex_unlock(&bitmapAccessSharedMutex);
  }
}

void _C3DImageDeleteTextureRawDataIfNeeded(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (v1)
  {
    CFRelease(*(v1 + 40));
    free(*(a1 + 72));
    *(a1 + 72) = 0;
  }
}

int32x2_t C3DImageGetTextureSize(uint64_t a1)
{
  *&result = C3DImageGetSize(a1);
  v3 = *(a1 + 120);
  if (v3 <= 4)
  {
    if (v3 == 2 || v3 == 4)
    {
      return vdup_lane_s32(result, 1);
    }
  }

  else
  {
    if (v3 != 5)
    {
      if (v3 == 6)
      {
        v4 = *&result.i32[1] / 3.0;
      }

      else
      {
        if (v3 != 7)
        {
          return result;
        }

        v4 = *&result.i32[1] * 0.25;
      }

      *result.i32 = ceilf(v4);
    }

    return vdup_lane_s32(result, 0);
  }

  return result;
}

uint64_t C3DImageGetDepth(uint64_t a1)
{
  if (*(a1 + 120) != 2)
  {
    return 1;
  }

  v1 = vcvt_u32_f32(vrnda_f32(COERCE_FLOAT32X2_T(C3DImageGetSize(a1))));
  if (v1.i32[0] <= v1.i32[1])
  {
    return v1.i32[1] / v1.i32[0];
  }

  else
  {
    return v1.i32[0] / v1.i32[1];
  }
}

void C3DImageSetNeedsUnpremultiply(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DImageGetURL_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (a2)
  {
    v12 = 2;
  }

  else
  {
    v12 = 0;
  }

  *(a1 + 116) = *(a1 + 116) & 0xFD | v12;
}

const __CFDictionary *C3DImageGetAttribute(uint64_t a1, void *key)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DImageGetURL_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  return C3DEntityGetAttribute(a1, key);
}

uint64_t C3DImageGetImageType(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DImageGetURL_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 120);
}

void C3DImageSetImageType(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DImageGetURL_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 120) = a2;
}

BOOL C3DImageHasCubeMapComplexLayout(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DImageGetURL_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return (*(a1 + 120) & 0xFFFFFFFC) == 4;
}

void C3DImageChangeImageTypeTo3DIfSuitable(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DImageGetURL_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  if (C3DImageGetImageType(a1) != 2)
  {
    v10 = vcvtq_u64_f64(vcvtq_f64_f32(vrnda_f32(COERCE_FLOAT32X2_T(C3DImageGetSize(a1)))));
    if (v10.i64[1] * v10.i64[0])
    {
      if (!(v10.i64[0] % v10.i64[1]))
      {
        *(a1 + 120) = 2;
      }
    }
  }
}

void _C3DImageChangeImageTypeToCubeMapIfSuitable(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DImageGetURL_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  if (!C3DImageIsCubeMap(a1))
  {
    Size = C3DImageGetSize(a1);
    v11 = vcvtas_u32_f32(*&Size);
    v12 = vcvtas_u32_f32(*(&Size + 1));
    if (*&Size == v11 && *(&Size + 1) == v12)
    {
      if (6 * v12 == v11)
      {
        v14 = 4;
      }

      else
      {
        if (6 * v11 != v12)
        {
          return;
        }

        v14 = 5;
      }

      *(a1 + 120) = v14;
    }
  }
}

void C3DImageEnumerateCubeMapFacePixelBuffers(unsigned int a1, uint64_t a2, uint64_t a3, size_t a4, size_t a5, uint64_t a6, uint64_t a7)
{
  v10 = a2;
  if (a1 == 5)
  {
    v11 = 0;
    v12 = a3 * a2;
    do
    {
      (*(a7 + 16))(a7, v11++, a6);
      a6 += v12;
    }

    while (v11 != 6);
    return;
  }

  v15 = a1;
  v16 = malloc_type_malloc(a4 * a2, 0x100004077774924uLL);
  if (v15 <= 7 && ((1 << v15) & 0xD0) != 0)
  {
    v17 = 0;
    __src = (a6 + a5 * (v10 - 1 + v10) + a3 * (3 * v10 + v10 - 1));
    v32 = a3 * v10;
    v35 = a7;
    v37 = v10;
    v34 = v15;
    while (1)
    {
      v36 = v17;
      if (v15 == 4)
      {
        v19 = 0;
        v18 = v17;
      }

      else if (v15 == 7)
      {
        if (v17 > 2)
        {
          if (v17 == 3)
          {
            v18 = 1;
            v19 = 2;
          }

          else
          {
            if (v17 != 4)
            {
              if (a5)
              {
                if (v10)
                {
                  v23 = 0;
                  v24 = v16;
                  v25 = __src;
                  v33 = v16;
                  do
                  {
                    v26 = v24;
                    v27 = v37;
                    v28 = v25;
                    do
                    {
                      memcpy(v26, v28, a5);
                      v28 -= a5;
                      v26 += a5;
                      --v27;
                    }

                    while (v27);
                    ++v23;
                    v16 = v33;
                    v25 -= a3;
                    v24 += a4;
                  }

                  while (v23 != v37);
                }
              }

              else
              {
                v29 = scn_default_log();
                if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
                {
                  C3DImageEnumerateCubeMapFacePixelBuffers_cold_1(&buf, v39, v29);
                }
              }

              goto LABEL_19;
            }

            v18 = 1;
            v19 = 1;
          }
        }

        else
        {
          v18 = v17 != 1;
          v19 = v17 == 1;
          if (!v17)
          {
            v18 = 2;
            v19 = 1;
          }
        }
      }

      else
      {
        v18 = qword_21C280C28[v17];
        v19 = qword_21C280C58[v17];
      }

      if (v10)
      {
        v20 = (a6 + v18 * a4 + v32 * v19);
        v21 = v16;
        v22 = v37;
        do
        {
          memcpy(v21, v20, a4);
          v21 += a4;
          v20 += a3;
          --v22;
        }

        while (v22);
      }

LABEL_19:
      (*(v35 + 16))(v35, v36, v16);
      v17 = v36 + 1;
      v10 = v37;
      v15 = v34;
      if (v36 == 5)
      {
        goto LABEL_36;
      }
    }
  }

  v30 = scn_default_log();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    C3DImageEnumerateCubeMapFacePixelBuffers_cold_2();
  }

LABEL_36:
  free(v16);
}

void C3DImageEnumerateTexture3DSlicePixelBuffers(int a1, uint64_t a2, uint64_t a3, uint64_t a4, size_t a5, uint64_t a6, char *a7, uint64_t a8)
{
  if (a1 == 2)
  {
    v14 = malloc_type_malloc(a5 * a2, 0x100004077774924uLL);
    if (a3)
    {
      v15 = 0;
      v20 = a6 * a2;
      do
      {
        v16 = a7;
        v17 = v14;
        for (i = a2; i; --i)
        {
          memcpy(v17, v16, a5);
          v17 += a5;
          v16 += a4;
        }

        (*(a8 + 16))(a8, v15++, v14);
        a7 += v20;
      }

      while (v15 != a3);
    }

    free(v14);
  }

  else
  {
    v19 = scn_default_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      C3DImageEnumerateTexture3DSlicePixelBuffers_cold_1();
    }
  }
}

uint64_t C3DImageCopyCachedImageOrCreateIfNeededForSource(void *a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    v5 = scn_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      C3DKeyframedAnimationCopy_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  SharedInstance = C3DResourceCacheGetSharedInstance();
  return C3DResourceCacheCopyResourceOrCreateIfNeededForSource(SharedInstance, a1, 1, a3);
}

uint64_t C3DImageIsValid(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DImageGetURL_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = *(a1 + 116);
  if ((v10 & 0x20) == 0)
  {
    Attribute = C3DImageGetAttribute(a1, @"isAttachment");
    if (Attribute)
    {
      Value = CFBooleanGetValue(Attribute);
      if (*(a1 + 96) == 5 || Value)
      {
        goto LABEL_8;
      }
    }

    else if (*(a1 + 96) == 5)
    {
LABEL_8:
      v13 = *(a1 + 116) | 0x10;
LABEL_11:
      v10 = v13 | 0x20;
      *(a1 + 116) = v10;
      return (v10 >> 4) & 1;
    }

    C3DImageGetSize(a1);
    v13 = *(a1 + 116);
    goto LABEL_11;
  }

  return (v10 >> 4) & 1;
}

_DWORD *C3DImageGetDefault()
{
  result = kDefaultImage;
  if (!kDefaultImage)
  {
    result = C3DMalloc(4uLL);
    if (result)
    {
      *result = -1;
      v1 = CGDataProviderCreateWithData(0, result, 4uLL, 0);
      v2 = C3DColorSpaceLinearSRGB();
      v3 = CGImageCreate(1uLL, 1uLL, 8uLL, 0x20uLL, 4uLL, v2, 0x4001u, v1, 0, 0, kCGRenderingIntentDefault);
      CGDataProviderRelease(v1);
      kDefaultImage = C3DImageCreateWithCGImage(v3);
      CFRelease(v3);
      return kDefaultImage;
    }
  }

  return result;
}

uint64_t C3DImageGetTextureRawDataMipmapLevelCount(uint64_t a1, _BYTE *a2)
{
  result = C3DImageGetTextureRawData(a1);
  if (result)
  {
    v5 = result;
    IsCubeMap = C3DImageIsCubeMap(a1);
    HasCubeMapComplexLayout = C3DImageHasCubeMapComplexLayout(a1);
    v8 = *(v5 + 40);
    if (IsCubeMap && !HasCubeMapComplexLayout)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v8, 0);
      v10 = CFGetTypeID(ValueAtIndex);
      if (v10 != CFArrayGetTypeID())
      {
        result = CFArrayGetCount(*(v5 + 40)) / 6;
        if (!a2)
        {
          return result;
        }

LABEL_7:
        *a2 = 1;
        return result;
      }

      v8 = ValueAtIndex;
    }

    result = CFArrayGetCount(v8);
    if (!a2)
    {
      return result;
    }

    goto LABEL_7;
  }

  return result;
}

unsigned int *C3DImageGetTextureRawDataCompression(uint64_t a1)
{
  result = C3DImageGetTextureRawData(a1);
  if (result)
  {
    return *result;
  }

  return result;
}

id _C3DImageCFFinalize(void *a1)
{
  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterPostNotification(LocalCenter, @"kC3DNotificationImageWillDie", a1, 0, 1u);
  _C3DImageDeleteTextureRawDataIfNeeded(a1);
  v3 = a1[11];
  if (v3)
  {
    CFRelease(v3);
    a1[11] = 0;
  }

  v4 = a1[8];
  if (v4)
  {
    CFRelease(v4);
    a1[8] = 0;
  }

  return C3DEntityCFFinalize(a1);
}

CFStringRef _C3DImageCFCopyDebugDescription(_DWORD *cf)
{
  v2 = cf[24] - 1;
  if (v2 > 3)
  {
    v3 = @"<C3DImage %p src:%p [%fx%f]>";
  }

  else
  {
    v3 = off_2782FCC18[v2];
  }

  v4 = CFGetAllocator(cf);
  return CFStringCreateWithFormat(v4, 0, v3, cf, *(cf + 11), COERCE_FLOAT(*(cf + 13)), COERCE_FLOAT(HIDWORD(*(cf + 13))));
}

uint64_t _C3DImageInitWithPropertyList(uint64_t a1, const __CFDictionary *a2, const __CFDictionary *a3)
{
  if (!a1)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      _C3DGeometryFillLibraryForSerialization_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = C3DEntityInitWithPropertyList(a1, a2);
  if ((v14 & 1) == 0)
  {
    v16 = scn_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      _C3DImageInitWithPropertyList_cold_2();
    }

    return v14;
  }

  Value = CFDictionaryGetValue(a2, @"imageData");
  if (Value)
  {
    *(a1 + 88) = CFRetain(Value);
    *(a1 + 96) = 2;
    C3DImageCacheBitmap(a1);
    return v14;
  }

  v17 = CFDictionaryGetValue(a3, @"kEnclosingFolderURL");
  v18 = CFDictionaryGetValue(a2, @"imageRelativePath");
  v19 = CFDictionaryGetValue(a2, @"distantImageURL");
  *(a1 + 96) = 1;
  Attribute = C3DImageGetAttribute(a1, @"runtimePath");
  if (Attribute)
  {
    v21 = CFURLCreateWithFileSystemPath(0, Attribute, kCFURLPOSIXPathStyle, 0);
    if (v21)
    {
      v22 = v21;
      *(a1 + 88) = C3DIOCopyResolvedImageURL(v21, a3);
      CFRelease(v22);
    }
  }

  v23 = *(a1 + 88);
  if (v23)
  {
LABEL_38:
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = ___C3DImageInitWithPropertyList_block_invoke;
    v35[3] = &__block_descriptor_40_e217_____C3DImage____C3DEntity____CFRuntimeBase_QAQ__v____CFString_____CFString_____CFDictionary_____C3DScene_q___CGContext_____C3DTextureRawData_b1b1_______CFString_____CFURL_____CFData___CGImage__v_iSCCb1b1b1b1b1b1i_8__0l;
    v35[4] = a1;
    SharedInstance = C3DResourceCacheGetSharedInstance();
    IfNeededForSource = C3DResourceCacheCopyResourceOrCreateIfNeededForSource(SharedInstance, v23, 1, v35);
    CFRelease(IfNeededForSource);
    return v14;
  }

  if (v18)
  {
    v24 = CFStringGetLength(v18) >= 1 && CFStringGetCharacterAtIndex(v18, 0) == 47;
    if (!v17 || v24)
    {
      v25 = CFURLCreateWithFileSystemPath(0, v18, kCFURLPOSIXPathStyle, 0);
    }

    else
    {
      v25 = C3DURLCreateCopyAppendingPathComponent(v17, v18);
    }
  }

  else
  {
    if (!v19)
    {
      v26 = 0;
      goto LABEL_29;
    }

    v25 = CFURLCreateWithString(*MEMORY[0x277CBECE8], v19, 0);
  }

  v26 = v25;
  if (v25)
  {
    v27 = C3DIOCopyResolvedImageURL(v25, a3);
    *(a1 + 88) = v27;
    if (v27)
    {
      goto LABEL_32;
    }
  }

  else if (*(a1 + 88))
  {
    goto LABEL_32;
  }

LABEL_29:
  v28 = C3DImageGetAttribute(a1, @"relativePath");
  if (v28)
  {
    v29 = CFURLCreateWithFileSystemPath(0, v28, kCFURLPOSIXPathStyle, 0);
    if (v29)
    {
      v30 = v29;
      *(a1 + 88) = C3DIOCopyResolvedImageURL(v29, a3);
      CFRelease(v30);
    }
  }

LABEL_32:
  v23 = *(a1 + 88);
  if (v26 && !v23)
  {
    *(a1 + 88) = CFRetain(v26);
LABEL_36:
    CFRelease(v26);
    v23 = *(a1 + 88);
    goto LABEL_37;
  }

  if (v26)
  {
    goto LABEL_36;
  }

LABEL_37:
  if (v23)
  {
    goto LABEL_38;
  }

  v34 = scn_default_log();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
  {
    _C3DImageInitWithPropertyList_cold_3();
  }

  return v14;
}

__CFDictionary *_C3DImageCopyPropertyList(void *a1, uint64_t a2, const __CFDictionary *a3)
{
  if (!a1)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      _C3DGeometryFillLibraryForSerialization_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = C3DEntityCopyPropertyList(a1, a2, a3);
  Value = CFDictionaryGetValue(a3, @"kCreatePropertyListShouldKeepReferencesToFilesOption");
  if (Value)
  {
    v16 = CFBooleanGetValue(Value) == 0;
  }

  else
  {
    v16 = 0;
  }

  v17 = CFDictionaryGetValue(a3, @"kSceneSourceSkipImagePathResolution");
  if (!v17)
  {
    v18 = 0;
    if (v16)
    {
      goto LABEL_9;
    }

LABEL_13:
    v22 = CFDictionaryGetValue(a3, @"kC3DIOSerializationExportDelegate");
    v23 = CFDictionaryGetValue(a3, @"SCNSceneExportDestinationURL");
    if (v23)
    {
      if (!v22)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v23 = CFDictionaryGetValue(a3, @"kEnclosingFolderURL");
      if (!v22)
      {
        goto LABEL_23;
      }
    }

    UpdateQueue = C3DParticleManagerGetUpdateQueue();
    if (UpdateQueue)
    {
      v26 = UpdateQueue;
      v27 = @"imageRelativePath";
      goto LABEL_22;
    }

LABEL_23:
    URL = C3DImageGetURL(a1);
    if (!URL)
    {
      return v14;
    }

    v29 = URL;
    v30 = CFURLCopyScheme(URL);
    if (!v30 || (v31 = v30, HasPrefix = CFStringHasPrefix(v30, @"file"), CFRelease(v31), HasPrefix))
    {
      if (v23 == 0 || v18)
      {
        v33 = CFURLCopyFileSystemPath(v29, kCFURLPOSIXPathStyle);
        if (!v33)
        {
          v34 = scn_default_log();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            _C3DImageCopyPropertyList_cold_2();
          }

          return v14;
        }
      }

      else
      {
        v33 = C3DCopyRelativeFromFileURL(v23, v29);
      }

      v35 = v33;
      CFDictionarySetValue(v14, @"imageRelativePath", v33);
      v21 = v35;
      goto LABEL_32;
    }

    v26 = CFURLGetString(v29);
    v27 = @"distantImageURL";
LABEL_22:
    CFDictionarySetValue(v14, v27, v26);
    return v14;
  }

  v18 = CFBooleanGetValue(v17) != 0;
  if (!v16)
  {
    goto LABEL_13;
  }

LABEL_9:
  Data = C3DImageGetData(a1);
  if (Data)
  {
    v20 = Data;
    CFRetain(Data);
LABEL_11:
    CFDictionarySetValue(v14, @"imageData", v20);
    v21 = v20;
LABEL_32:
    CFRelease(v21);
    return v14;
  }

  v24 = C3DImageGetURL(a1);
  if (v24)
  {
    v20 = C3DCreateDataWithContentOfURL(v24, 0);
    if (v20)
    {
      goto LABEL_11;
    }
  }

  return v14;
}

__CFArray *_C3DImageCopyInstanceVariables(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  v3 = *(a1 + 96);
  if (v3 == 1)
  {
    v4 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v41 = 2;
    valuePtr = 5;
    v40 = (a1 + 88);
    v5 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    v6 = CFNumberCreate(0, kCFNumberSInt32Type, &v41);
    v7 = CFNumberCreate(0, kCFNumberLongType, &v40);
    CFDictionarySetValue(v4, @"name", @"url");
    CFDictionarySetValue(v4, @"type", v5);
    CFDictionarySetValue(v4, @"address", v7);
    CFDictionarySetValue(v4, @"semantic", v6);
    CFArrayAppendValue(Mutable, v4);
    CFRelease(v6);
    CFRelease(v4);
    CFRelease(v7);
    CFRelease(v5);
    v3 = *(a1 + 96);
  }

  if (v3 == 2)
  {
    v8 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v41 = 2;
    valuePtr = 5;
    v40 = (a1 + 88);
    v9 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    v10 = CFNumberCreate(0, kCFNumberSInt32Type, &v41);
    v11 = CFNumberCreate(0, kCFNumberLongType, &v40);
    CFDictionarySetValue(v8, @"name", @"data");
    CFDictionarySetValue(v8, @"type", v9);
    CFDictionarySetValue(v8, @"address", v11);
    CFDictionarySetValue(v8, @"semantic", v10);
    CFArrayAppendValue(Mutable, v8);
    CFRelease(v10);
    CFRelease(v8);
    CFRelease(v11);
    CFRelease(v9);
    v3 = *(a1 + 96);
  }

  if (v3 == 3)
  {
    v12 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v41 = 2;
    valuePtr = 5;
    v40 = (a1 + 88);
    v13 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    v14 = CFNumberCreate(0, kCFNumberSInt32Type, &v41);
    v15 = CFNumberCreate(0, kCFNumberLongType, &v40);
    CFDictionarySetValue(v12, @"name", @"cgImage");
    CFDictionarySetValue(v12, @"type", v13);
    CFDictionarySetValue(v12, @"address", v15);
    CFDictionarySetValue(v12, @"semantic", v14);
    CFArrayAppendValue(Mutable, v12);
    CFRelease(v14);
    CFRelease(v12);
    CFRelease(v15);
    CFRelease(v13);
    v3 = *(a1 + 96);
  }

  if (v3 == 4)
  {
    v16 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v41 = 2;
    valuePtr = 5;
    v40 = (a1 + 88);
    v17 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    v18 = CFNumberCreate(0, kCFNumberSInt32Type, &v41);
    v19 = CFNumberCreate(0, kCFNumberLongType, &v40);
    CFDictionarySetValue(v16, @"name", @"clientImage");
    CFDictionarySetValue(v16, @"type", v17);
    CFDictionarySetValue(v16, @"address", v19);
    CFDictionarySetValue(v16, @"semantic", v18);
    CFArrayAppendValue(Mutable, v16);
    CFRelease(v18);
    CFRelease(v16);
    CFRelease(v19);
    CFRelease(v17);
  }

  v20 = MEMORY[0x277CBF138];
  v21 = MEMORY[0x277CBF150];
  v22 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v41 = 2;
  valuePtr = 5;
  v40 = (a1 + 64);
  v23 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v24 = CFNumberCreate(0, kCFNumberSInt32Type, &v41);
  v25 = CFNumberCreate(0, kCFNumberLongType, &v40);
  CFDictionarySetValue(v22, @"name", @"bitmap");
  CFDictionarySetValue(v22, @"type", v23);
  CFDictionarySetValue(v22, @"address", v25);
  CFDictionarySetValue(v22, @"semantic", v24);
  CFArrayAppendValue(Mutable, v22);
  CFRelease(v24);
  CFRelease(v22);
  CFRelease(v25);
  CFRelease(v23);
  v39 = *(a1 + 116) & 1;
  v26 = CFDictionaryCreateMutable(0, 4, v20, v21);
  v41 = 0;
  valuePtr = 3;
  v40 = &v39;
  v27 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v28 = CFNumberCreate(0, kCFNumberSInt32Type, &v41);
  v29 = CFNumberCreate(0, kCFNumberLongType, &v40);
  CFDictionarySetValue(v26, @"name", @"hasAlpha");
  CFDictionarySetValue(v26, @"type", v27);
  CFDictionarySetValue(v26, @"address", v29);
  CFDictionarySetValue(v26, @"semantic", v28);
  CFArrayAppendValue(Mutable, v26);
  CFRelease(v28);
  CFRelease(v26);
  CFRelease(v29);
  CFRelease(v27);
  v30 = CFDictionaryCreateMutable(0, 4, v20, v21);
  v41 = 0;
  valuePtr = 8;
  v40 = (a1 + 104);
  v31 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v32 = CFNumberCreate(0, kCFNumberSInt32Type, &v41);
  v33 = CFNumberCreate(0, kCFNumberLongType, &v40);
  CFDictionarySetValue(v30, @"name", @"size");
  CFDictionarySetValue(v30, @"type", v31);
  CFDictionarySetValue(v30, @"address", v33);
  CFDictionarySetValue(v30, @"semantic", v32);
  CFArrayAppendValue(Mutable, v30);
  CFRelease(v32);
  CFRelease(v30);
  CFRelease(v33);
  CFRelease(v31);
  v34 = CFDictionaryCreateMutable(0, 4, v20, v21);
  v41 = 0;
  valuePtr = 2;
  v40 = (a1 + 120);
  v35 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v36 = CFNumberCreate(0, kCFNumberSInt32Type, &v41);
  v37 = CFNumberCreate(0, kCFNumberLongType, &v40);
  CFDictionarySetValue(v34, @"name", @"type");
  CFDictionarySetValue(v34, @"type", v35);
  CFDictionarySetValue(v34, @"address", v37);
  CFDictionarySetValue(v34, @"semantic", v36);
  CFArrayAppendValue(Mutable, v34);
  CFRelease(v36);
  CFRelease(v34);
  CFRelease(v37);
  CFRelease(v35);
  return Mutable;
}

float srdnoise3(float *a1, float *a2, float *a3, float a4, float a5, float a6, float a7)
{
  v13 = __sincosf_stret(a7);
  v14 = ((a4 + a5) + a6) * 0.333333333;
  v15 = (v14 + a4) - ((v14 + a4) <= 0.0);
  v16 = (v14 + a5) - ((v14 + a5) <= 0.0);
  v17 = (v14 + a6) - ((v14 + a6) <= 0.0);
  v18 = (v15 + v16 + v17) * 0.166666667;
  v19 = a4 - (v15 - v18);
  v20 = a5 - (v16 - v18);
  v21 = a6 - (v17 - v18);
  if (v19 >= v20)
  {
    if (v20 >= v21)
    {
      v25 = 0;
      v27 = 0;
      v23 = 0;
      v26 = 1;
      v22 = 1;
      v24 = 1;
    }

    else
    {
      v26 = 0;
      v23 = 0;
      v27 = v19 < v21;
      v24 = v19 >= v21;
      v25 = 1;
      v22 = 1;
    }
  }

  else if (v20 >= v21)
  {
    v27 = 0;
    v24 = 0;
    v25 = v19 < v21;
    v22 = v19 >= v21;
    v26 = 1;
    v23 = 1;
  }

  else
  {
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 1;
    v26 = 1;
    v27 = 1;
  }

  v28 = (v19 - v24) + 0.166666667;
  v29 = (v20 - v23) + 0.166666667;
  v30 = (v21 - v27) + 0.166666667;
  v31 = ((0.6 - (v19 * v19)) - (v20 * v20)) - (v21 * v21);
  v32 = 0.0;
  v33 = 0.0;
  v34 = 0.0;
  v35 = 0.0;
  v36 = 0.0;
  v37 = 0.0;
  v38 = 0.0;
  v39 = 0.0;
  if (v31 >= 0.0)
  {
    v40 = (&grad3u + 12 * (perm[perm[perm[v17] + v16] + v15] & 0xF));
    v41 = (&grad3v + 12 * (perm[perm[perm[v17] + v16] + v15] & 0xF));
    v33 = (v13.__sinval * *v41) + (v13.__cosval * *v40);
    v34 = (v13.__sinval * v41[1]) + (v13.__cosval * v40[1]);
    v35 = (v13.__sinval * v41[2]) + (v13.__cosval * v40[2]);
    v37 = v31 * v31;
    v38 = v37 * v37;
    v39 = (v37 * v37) * (((v20 * v34) + (v33 * v19)) + (v35 * v21));
    v36 = ((0.6 - (v19 * v19)) - (v20 * v20)) - (v21 * v21);
  }

  v85 = v36;
  v86 = v37;
  v88 = v33;
  v89 = v34;
  v90 = v35;
  v95 = v39;
  v42 = (v19 - v22) + 0.333333334;
  v43 = (v20 - v26) + 0.333333334;
  v44 = (v21 - v25) + 0.333333334;
  v45 = ((0.6 - (v28 * v28)) - (v29 * v29)) - (v30 * v30);
  v46 = 0.0;
  v47 = 0.0;
  v48 = 0.0;
  v49 = 0.0;
  v50 = 0.0;
  v51 = 0.0;
  if (v45 >= 0.0)
  {
    v52 = 3 * (perm[v24 + v15 + perm[v23 + v16 + perm[v27 + v17]]] & 0xF);
    v53 = (&grad3u + 4 * v52);
    v54 = (&grad3v + 4 * v52);
    v32 = (v13.__sinval * *v54) + (v13.__cosval * *v53);
    v46 = (v13.__sinval * v54[1]) + (v13.__cosval * v53[1]);
    v47 = (v13.__sinval * v54[2]) + (v13.__cosval * v53[2]);
    v49 = v45 * v45;
    v50 = v49 * v49;
    v51 = (v49 * v49) * (((v46 * v29) + (v32 * v28)) + (v47 * v30));
    v48 = ((0.6 - (v28 * v28)) - (v29 * v29)) - (v30 * v30);
  }

  v93 = (v19 - v24) + 0.166666667;
  v94 = v51;
  v87 = v32;
  v91 = v30;
  v92 = v29;
  v55 = (v19 + -1.0) + 0.500000001;
  v56 = (v20 + -1.0) + 0.500000001;
  v57 = (v21 + -1.0) + 0.500000001;
  v58 = ((0.6 - (v42 * v42)) - (v43 * v43)) - (v44 * v44);
  v59 = 0.0;
  v60 = 0.0;
  v61 = 0.0;
  v62 = 0.0;
  v63 = 0.0;
  v64 = 0.0;
  v65 = 0.0;
  v66 = 0.0;
  if (v58 >= 0.0)
  {
    v67 = 3 * (perm[v22 + v15 + perm[v26 + v16 + perm[v25 + v17]]] & 0xF);
    v68 = (&grad3u + 4 * v67);
    v69 = (&grad3v + 4 * v67);
    v60 = (v13.__sinval * *v69) + (v13.__cosval * *v68);
    v61 = (v13.__sinval * v69[1]) + (v13.__cosval * v68[1]);
    v62 = (v13.__sinval * v69[2]) + (v13.__cosval * v68[2]);
    v64 = v58 * v58;
    v65 = v64 * v64;
    v66 = (v64 * v64) * (((v61 * v43) + (v60 * v42)) + (v62 * v44));
    v63 = ((0.6 - (v42 * v42)) - (v43 * v43)) - (v44 * v44);
  }

  v70 = ((0.6 - (v55 * v55)) - (v56 * v56)) - (v57 * v57);
  v71 = 0.0;
  v72 = 0.0;
  v73 = 0.0;
  v74 = 0.0;
  v75 = 0.0;
  v76 = 0.0;
  if (v70 >= 0.0)
  {
    v77 = perm[v17 + 1];
    v78 = (&grad3u + 12 * (perm[v15 + 1 + perm[v16 + 1 + v77]] & 0xF));
    v79 = (&grad3v + 12 * (perm[v15 + 1 + perm[v16 + 1 + v77]] & 0xF));
    v59 = (v13.__sinval * *v79) + (v13.__cosval * *v78);
    v71 = (v13.__sinval * v79[1]) + (v13.__cosval * v78[1]);
    v72 = (v13.__sinval * v79[2]) + (v13.__cosval * v78[2]);
    v74 = v70 * v70;
    v75 = v74 * v74;
    v76 = (v74 * v74) * (((v71 * v56) + (v59 * v55)) + (v72 * v57));
    v73 = ((0.6 - (v55 * v55)) - (v56 * v56)) - (v57 * v57);
  }

  if (a1 && a2 && a3)
  {
    v80 = (((v20 * v89) + (v88 * v19)) + (v90 * v21)) * (v85 * v86);
    *a1 = v19 * v80;
    *a2 = v20 * v80;
    *a3 = v21 * v80;
    v81 = (((v46 * v92) + (v87 * v93)) + (v47 * v91)) * (v48 * v49);
    *a1 = *a1 + (v81 * v93);
    *a2 = *a2 + (v81 * v92);
    *a3 = *a3 + (v81 * v91);
    v82 = (((v61 * v43) + (v60 * v42)) + (v62 * v44)) * (v63 * v64);
    *a1 = *a1 + (v82 * v42);
    *a2 = *a2 + (v82 * v43);
    *a3 = *a3 + (v82 * v44);
    v83 = (((v71 * v56) + (v59 * v55)) + (v72 * v57)) * (v73 * v74);
    *a1 = *a1 + (v83 * v55);
    *a2 = *a2 + (v83 * v56);
    *a3 = *a3 + (v83 * v57);
    *a1 = *a1 * -8.0;
    *a2 = *a2 * -8.0;
    *a3 = *a3 * -8.0;
    *a1 = ((((v87 * v50) + (v38 * v88)) + (v65 * v60)) + (v75 * v59)) + *a1;
    *a2 = ((((v46 * v50) + (v38 * v89)) + (v65 * v61)) + (v75 * v71)) + *a2;
    *a3 = ((((v47 * v50) + (v38 * v90)) + (v65 * v62)) + (v75 * v72)) + *a3;
    *a1 = *a1 * 28.0;
    *a2 = *a2 * 28.0;
    *a3 = *a3 * 28.0;
  }

  return (((v95 + v94) + v66) + v76) * 28.0;
}

id _fillViewsFromCubeMap(void *a1, uint64_t a2, uint64_t a3)
{
  for (i = 0; i != 6; ++i)
  {
    result = [a1 newTextureViewWithPixelFormat:objc_msgSend(a1 textureType:"pixelFormat") levels:2 slices:a2, 1, i, 1];
    *(a3 + 8 * i) = result;
  }

  return result;
}

uint64_t replaceSlice(void *a1, void *a2, unsigned int a3, unsigned int a4, const __CFData *a5, uint64_t a6)
{
  v12 = [a2 width];
  v13 = [a2 height];
  v14 = [a1 pixelFormat];
  BitSize = SCNMTLPixelFormatGetBitSize();
  if ((v14 & 0xFFFFFFFFFFFFFFF8) == 0xA0)
  {
    v16 = 0;
  }

  else
  {
    v16 = (BitSize >> 3) * v12;
  }

  if (a4)
  {
    v17 = a4;
    do
    {
      if (v12 >> 1 <= 1)
      {
        v12 = 1;
      }

      else
      {
        v12 >>= 1;
      }

      if (v13 >> 1 <= 1)
      {
        v13 = 1;
      }

      else
      {
        v13 >>= 1;
      }

      if ((v14 & 0xFFFFFFFFFFFFFFF8) != 0xA0)
      {
        if (a6 && *(a6 + 7))
        {
          v16 = ((v12 + *(a6 + 7) - 1) / *(a6 + 7) * *(a6 + 4)) >> 3;
        }

        else
        {
          v16 = v12 * (BitSize >> 3);
        }
      }

      --v17;
    }

    while (v17);
  }

  memset(v19, 0, 24);
  v19[3] = v12;
  v19[4] = v13;
  v19[5] = 1;
  return [a1 replaceRegion:v19 mipmapLevel:a4 slice:a3 withBytes:CFDataGetBytePtr(a5) bytesPerRow:v16 bytesPerImage:0];
}

unint64_t replaceRegion(void *a1, void *a2, unsigned int a3, CFArrayRef theArray, uint64_t a5)
{
  Count = CFArrayGetCount(theArray);
  v11 = [a2 width];
  v12 = [a2 height];
  v13 = [a1 pixelFormat];
  result = SCNMTLPixelFormatGetBitSize();
  if (Count >= 1)
  {
    v15 = 0;
    v20 = result >> 3;
    v16 = v13 & 0xFFFFFFFFFFFFFFF8;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v15);
      BytePtr = CFDataGetBytePtr(ValueAtIndex);
      if (v16 == 160)
      {
        v19 = 0;
      }

      else if (a5 && *(a5 + 7))
      {
        v19 = ((v11 + *(a5 + 7) - 1) / *(a5 + 7) * *(a5 + 4)) >> 3;
      }

      else
      {
        v19 = v11 * v20;
      }

      memset(v21, 0, 24);
      v21[3] = v11;
      v21[4] = v12;
      v21[5] = 1;
      result = [a1 replaceRegion:v21 mipmapLevel:v15 slice:a3 withBytes:BytePtr bytesPerRow:v19 bytesPerImage:0];
      if (v11 >> 1 <= 1)
      {
        v11 = 1;
      }

      else
      {
        v11 >>= 1;
      }

      if (v12 >> 1 <= 1)
      {
        v12 = 1;
      }

      else
      {
        v12 >>= 1;
      }

      ++v15;
    }

    while (Count != v15);
  }

  return result;
}

void SCNMTLBlitCommandEncoder::copyTextureToTexture(void **a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v10 = [a2 width];
  v11 = [a2 height];
  v12 = [a2 depth];
  v13 = [a2 arrayLength];
  if (([a2 textureType] - 5) >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 6 * v13;
  }

  v15 = [a4 arrayLength];
  if (([a4 textureType] - 5) >= 2)
  {
    v16 = v15;
  }

  else
  {
    v16 = 6 * v15;
  }

  if (v14 != v16 && (v17 = scn_default_log(), os_log_type_enabled(v17, OS_LOG_TYPE_FAULT)))
  {
    SCNMTLBlitCommandEncoder::copyTextureToTexture(v17, v18, v19, v20, v21, v22, v23, v24);
    if (!v14)
    {
      return;
    }
  }

  else if (!v14)
  {
    return;
  }

  for (i = 0; i != v14; ++i)
  {
    v26 = *a1;
    memset(v29, 0, sizeof(v29));
    v28[0] = v10;
    v28[1] = v11;
    v28[2] = v12;
    memset(v27, 0, sizeof(v27));
    [v26 copyFromTexture:a2 sourceSlice:i sourceLevel:a3 sourceOrigin:v29 sourceSize:v28 toTexture:a4 destinationSlice:i destinationLevel:a5 destinationOrigin:v27];
  }
}

unint64_t SCNMTLBlitCommandEncoder::generateMipmapsForTexture(void **a1, void *a2)
{
  result = [a2 mipmapLevelCount];
  if (result >= 2)
  {
    if ([a2 width] > 1 || objc_msgSend(a2, "height") > 1 || (result = objc_msgSend(a2, "depth"), result >= 2))
    {
      v5 = *a1;

      return [v5 generateMipmapsForTexture:a2];
    }
  }

  return result;
}

void SCNMTLBlitCommandEncoder::copyTextureToTexture(void **a1, void *a2, void *a3)
{
  v63 = 0uLL;
  v64 = 0;
  v6 = [a2 width];
  if (v6 != [a3 width])
  {
    v7 = scn_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      SCNMTLBlitCommandEncoder::copyTextureToTexture(v7, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  v15 = [a2 height];
  if (v15 != [a3 height])
  {
    v16 = scn_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      SCNMTLBlitCommandEncoder::copyTextureToTexture(v16, v17, v18, v19, v20, v21, v22, v23);
    }
  }

  v24 = [a2 depth];
  if (v24 != [a3 depth])
  {
    v25 = scn_default_log();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      SCNMTLBlitCommandEncoder::copyTextureToTexture(v25, v26, v27, v28, v29, v30, v31, v32);
    }
  }

  v57 = a1;
  IsCube = SCNMTLTextureTypeIsCube([a2 textureType]);
  v34 = [a2 mipmapLevelCount];
  v35 = [a3 mipmapLevelCount];
  if (v34 >= v35)
  {
    v36 = v35;
  }

  else
  {
    v36 = v34;
  }

  v37 = [a2 arrayLength];
  if (([a2 textureType] - 5) >= 2)
  {
    v38 = v37;
  }

  else
  {
    v38 = 6 * v37;
  }

  v39 = [a3 arrayLength];
  if (([a3 textureType] - 5) >= 2)
  {
    v40 = v39;
  }

  else
  {
    v40 = 6 * v39;
  }

  if (v38 != v40)
  {
    v41 = scn_default_log();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_FAULT))
    {
      SCNMTLBlitCommandEncoder::copyTextureToTexture(v41, v42, v43, v44, v45, v46, v47, v48);
    }
  }

  if (v38)
  {
    v49 = 0;
    v50 = IsCube;
    do
    {
      v51 = [a2 width];
      v52 = [a2 height];
      v53 = [a2 depth];
      if (v36)
      {
        v54 = v53;
        for (i = 0; i != v36; ++i)
        {
          v56 = *v57;
          v61 = v63;
          v62 = v64;
          v60[0] = v51;
          v60[1] = v52;
          v60[2] = v54;
          v58 = v63;
          v59 = v64;
          [v56 copyFromTexture:a2 sourceSlice:v49 sourceLevel:i sourceOrigin:&v61 sourceSize:v60 toTexture:a3 destinationSlice:v49 destinationLevel:i destinationOrigin:&v58];
          v51 >>= 1;
          v52 >>= 1;
          v54 >>= v50;
        }
      }

      ++v49;
    }

    while (v49 != v38);
  }
}

void OUTLINED_FUNCTION_1_7(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void SCNCActionWait::SCNCActionWait(SCNCActionWait *this, SCNCAction *a2)
{
  SCNCAction::SCNCAction(this);
  *v3 = &unk_282DC35F0;
  *(v3 + 24) = a2->var3;
  *(v3 + 56) = a2->var7;
  *(v3 + 40) = *&a2->var5;
  *(v3 + 80) = *&a2->var10;
  *(v3 + 64) = a2->var8;
  *(v3 + 104) = a2->var14;
  *(v3 + 32) = 1;
}

void SCNCActionWait::~SCNCActionWait(SCNCActionWait *this)
{
  SCNCAction::~SCNCAction(this);

  JUMPOUT(0x21CF07610);
}

double __C3DTextureSamplerGetTypeID_block_invoke()
{
  C3DTextureSamplerGetTypeID_typeID = _CFRuntimeRegisterClass();
  result = *&kC3DC3DTextureSamplerContextClassSerializable;
  unk_2817400C0 = kC3DC3DTextureSamplerContextClassSerializable;
  unk_2817400D0 = *off_282DC3768;
  qword_281740078 = _C3DTextureSamplerCopyInstanceVariables;
  return result;
}

uint64_t C3DTextureSamplerCreate()
{
  if (C3DTextureSamplerGetTypeID_onceToken != -1)
  {
    C3DTextureSamplerCreate_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DTextureSamplerGetTypeID_typeID, 80);
  *(Instance + 16) = xmmword_21C281040;
  *(Instance + 32) = 2;
  *(Instance + 64) = 1065353216;
  C3DColor4Make((Instance + 48), 0.0, 0.0, 0.0, 1.0);
  v1 = *(Instance + 64);
  v2 = 1;
  if (v1 <= 128.0)
  {
    v2 = ((v1 * 65536.0 * 0.0078125) << 19) | 1;
  }

  v3 = vshlq_u32(*(Instance + 16), xmmword_21C281050);
  *v3.i8 = vorr_s8(*v3.i8, *&vextq_s8(v3, v3, 8uLL));
  *(Instance + 80) = v3.i32[0] | v3.i32[1] | (*(Instance + 32) << 12) | (*(Instance + 36) << 14) | (*(Instance + 68) << 16) | v2;
  return Instance;
}

_DWORD *C3DTextureSamplerCreateWithPropertyList(const __CFDictionary *a1)
{
  v2 = C3DTextureSamplerCreate();
  Value = CFDictionaryGetValue(a1, @"minificationFilter");
  if (Value)
  {
    v4 = _filterFromString(Value);
  }

  else
  {
    v4 = 1;
  }

  v2[7] = v4;
  v5 = CFDictionaryGetValue(a1, @"magnificationFilter");
  if (v5)
  {
    v6 = _filterFromString(v5);
  }

  else
  {
    v6 = 1;
  }

  v2[8] = v6;
  v7 = CFDictionaryGetValue(a1, @"mipFilter");
  if (v7)
  {
    LODWORD(v7) = _filterFromString(v7);
  }

  v2[8] = v7;
  v8 = CFDictionaryGetValue(a1, @"wrapS");
  if (v8)
  {
    v9 = _wrapModeFromString(v8);
  }

  else
  {
    v9 = 1;
  }

  v2[4] = v9;
  v10 = CFDictionaryGetValue(a1, @"wrapT");
  if (v10)
  {
    v11 = _wrapModeFromString(v10);
  }

  else
  {
    v11 = 1;
  }

  v2[5] = v11;
  v12 = CFDictionaryGetValue(a1, @"wrapP");
  if (v12)
  {
    v13 = _wrapModeFromString(v12);
  }

  else
  {
    v13 = 1;
  }

  v2[6] = v13;
  v14 = CFDictionaryGetValue(a1, @"borderColor");
  if (v14)
  {
    CString = SCNStringGetCString(v14);
    if (CString)
    {
      sscanf(CString, "%f %f %f %f", v2 + 12, v2 + 13, v2 + 14, v2 + 15);
    }
  }

  v16 = CFDictionaryGetValue(a1, @"maxAnisotropy");
  if (v16)
  {
    valuePtr = 0.0;
    CFNumberGetValue(v16, kCFNumberFloatType, &valuePtr);
    C3DTextureSamplerSetAnisotropy(v2, valuePtr);
  }

  return v2;
}

uint64_t _filterFromString(const void *a1)
{
  if (CFEqual(a1, @"linear"))
  {
    return 2;
  }

  else
  {
    return CFEqual(a1, @"nearest") != 0;
  }
}

uint64_t _wrapModeFromString(const void *a1)
{
  if (CFEqual(a1, @"clamp"))
  {
    return 1;
  }

  if (CFEqual(a1, @"repeat"))
  {
    return 2;
  }

  if (CFEqual(a1, @"clampToBorder"))
  {
    return 3;
  }

  return 4;
}

int8x8_t C3DTextureSamplerSetAnisotropy(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DTextureSamplerSetAnisotropy_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 64) = a2;
  if (a2 <= 128.0)
  {
    v12 = ((a2 * 65536.0 * 0.0078125) << 19) | 1;
  }

  else
  {
    v12 = 1;
  }

  v13 = vshlq_u32(*(a1 + 16), xmmword_21C281050);
  result = vorr_s8(*v13.i8, *&vextq_s8(v13, v13, 8uLL));
  *(a1 + 80) = result.i32[0] | result.i32[1] | (*(a1 + 32) << 12) | (*(a1 + 36) << 14) | (*(a1 + 68) << 16) | v12;
  return result;
}

uint64_t C3DTextureSamplerCreateWithOptions(int a1, int a2, int a3, int a4, int a5, int a6)
{
  v12 = C3DTextureSamplerCreate();
  *(v12 + 16) = a4;
  *(v12 + 20) = a5;
  *(v12 + 24) = a6;
  *(v12 + 28) = a1;
  *(v12 + 32) = a2;
  *(v12 + 36) = a3;
  C3DColor4Make((v12 + 48), 0.0, 0.0, 0.0, 1.0);
  v13 = *(v12 + 64);
  v14 = 1;
  if (v13 <= 128.0)
  {
    v14 = ((v13 * 65536.0 * 0.0078125) << 19) | 1;
  }

  v15 = vshlq_u32(*(v12 + 16), xmmword_21C281050);
  *v15.i8 = vorr_s8(*v15.i8, *&vextq_s8(v15, v15, 8uLL));
  *(v12 + 80) = v15.i32[0] | v15.i32[1] | (*(v12 + 32) << 12) | (*(v12 + 36) << 14) | (*(v12 + 68) << 16) | v14;
  return v12;
}

uint64_t C3DTextureSamplerCreateEx(int a1, int a2, int a3, int a4, int a5, int a6, uint64_t a7, uint64_t a8, float a9)
{
  result = C3DTextureSamplerCreate();
  *(result + 16) = a4;
  *(result + 20) = a5;
  *(result + 24) = a6;
  *(result + 28) = a1;
  *(result + 32) = a2;
  *(result + 36) = a3;
  v19 = 1;
  *(result + 48) = a7;
  *(result + 56) = a8;
  *(result + 64) = a9;
  if (a9 <= 128.0)
  {
    v19 = ((a9 * 65536.0 * 0.0078125) << 19) | 1;
  }

  *(result + 80) = (a2 << 12) | (a1 << 10) | (a3 << 14) | (2 * a4) | (16 * a5) | (a6 << 7) | v19 | (*(result + 68) << 16);
  return result;
}

uint64_t C3DTextureSamplerGetWrapModeS(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DTextureSamplerSetAnisotropy_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 16);
}

uint64_t C3DTextureSamplerGetWrapModeT(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DTextureSamplerSetAnisotropy_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 20);
}

uint64_t C3DTextureSamplerGetWrapModeP(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DTextureSamplerSetAnisotropy_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 24);
}

uint64_t C3DTextureSamplerGetMinFilter(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DTextureSamplerSetAnisotropy_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 28);
}

uint64_t C3DTextureSamplerGetMagFilter(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DTextureSamplerSetAnisotropy_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 32);
}

uint64_t C3DTextureSamplerGetMipFilter(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DTextureSamplerSetAnisotropy_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 36);
}

uint64_t C3DTextureSamplerGetComparisonFunc(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DTextureSamplerSetAnisotropy_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 68);
}

uint64_t C3DTextureSamplerGetBorderColor(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DTextureSamplerSetAnisotropy_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return a1 + 48;
}

void C3DTextureSamplerSetBorderColor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DTextureSamplerSetAnisotropy_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  *(a1 + 48) = a2;
  *(a1 + 56) = a3;
}

BOOL C3DTextureSamplerUseMipmaps(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DTextureSamplerSetAnisotropy_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 36) != 0;
}

float C3DTextureSamplerGetAnisotropy(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DTextureSamplerSetAnisotropy_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 64);
}

uint64_t C3DTextureSamplerGetDefault()
{
  if (C3DTextureSamplerGetDefault_onceToken != -1)
  {
    C3DTextureSamplerGetDefault_cold_1();
  }

  return C3DTextureSamplerGetDefault_states;
}

uint64_t __C3DTextureSamplerGetDefault_block_invoke()
{
  result = C3DTextureSamplerCreate();
  C3DTextureSamplerGetDefault_states = result;
  return result;
}

uint64_t C3DTextureSamplerNearest()
{
  if (C3DTextureSamplerNearest_onceToken != -1)
  {
    C3DTextureSamplerNearest_cold_1();
  }

  return C3DTextureSamplerNearest_states;
}

double __C3DTextureSamplerNearest_block_invoke()
{
  v0 = C3DTextureSamplerCreate();
  C3DTextureSamplerNearest_states = v0;
  *&result = 0x100000001;
  *(v0 + 28) = 0x100000001;
  *(v0 + 36) = 0;
  *(v0 + 72) = 2;
  *(v0 + 64) = 1065353216;
  *(v0 + 80) = (2 * *(v0 + 16)) | (16 * *(v0 + 20)) | (*(v0 + 24) << 7) | (*(v0 + 68) << 16) | 0x10001401u;
  return result;
}

uint64_t C3DTextureSamplerBilinearNoAnisotropy()
{
  if (C3DTextureSamplerBilinearNoAnisotropy_onceToken != -1)
  {
    C3DTextureSamplerBilinearNoAnisotropy_cold_1();
  }

  return C3DTextureSamplerBilinearNoAnisotropy_states;
}

uint64_t __C3DTextureSamplerBilinearNoAnisotropy_block_invoke()
{
  result = C3DTextureSamplerCreate();
  C3DTextureSamplerBilinearNoAnisotropy_states = result;
  *(result + 72) = 2;
  *(result + 64) = 1065353216;
  *(result + 80) = (2 * *(result + 16)) | (16 * *(result + 20)) | (*(result + 24) << 7) | (*(result + 28) << 10) | (*(result + 32) << 12) | (*(result + 36) << 14) | (*(result + 68) << 16) | 0x10000001u;
  return result;
}

uint64_t C3DTextureSamplerTrilinearRepeatNoAnisotropy()
{
  if (C3DTextureSamplerTrilinearRepeatNoAnisotropy_onceToken != -1)
  {
    C3DTextureSamplerTrilinearRepeatNoAnisotropy_cold_1();
  }

  return C3DTextureSamplerTrilinearRepeatNoAnisotropy_states;
}

uint64_t C3DTextureSamplerBilinearMipMapClampNoAnisotropy()
{
  if (C3DTextureSamplerBilinearMipMapClampNoAnisotropy_onceToken != -1)
  {
    C3DTextureSamplerBilinearMipMapClampNoAnisotropy_cold_1();
  }

  return C3DTextureSamplerBilinearMipMapClampNoAnisotropy_states;
}

double __C3DTextureSamplerBilinearMipMapClampNoAnisotropy_block_invoke()
{
  v0 = C3DTextureSamplerCreate();
  C3DTextureSamplerBilinearMipMapClampNoAnisotropy_states = v0;
  *(v0 + 32) = 0x100000002;
  *&result = 0x100000001;
  *(v0 + 16) = xmmword_21C281040;
  *(v0 + 72) = 2;
  *(v0 + 64) = 1065353216;
  *(v0 + 80) = (*(v0 + 68) << 16) | 0x10006893;
  return result;
}

uint64_t C3DTextureSamplerDepthCompare()
{
  if (C3DTextureSamplerDepthCompare_onceToken != -1)
  {
    C3DTextureSamplerDepthCompare_cold_1();
  }

  return C3DTextureSamplerDepthCompare_states;
}

double __C3DTextureSamplerDepthCompare_block_invoke()
{
  v0 = C3DTextureSamplerCreate();
  C3DTextureSamplerDepthCompare_states = v0;
  *(v0 + 32) = 2;
  *&result = 0x100000001;
  *(v0 + 16) = xmmword_21C281040;
  *(v0 + 68) = 7;
  *(v0 + 72) = 2;
  *(v0 + 64) = 1065353216;
  *(v0 + 80) = 268904595;
  return result;
}

CFStringRef _C3DTextureSamplerCFCopyFormatDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DTextureSampler>");
}

CFStringRef _C3DTextureSamplerCFCopyDebugDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DTextureSampler>");
}

uint64_t _C3DTextureSamplerInitWithPropertyList(uint64_t a1, const __CFDictionary *a2, uint64_t a3, CFErrorRef *a4)
{
  IsDictionary = C3DCFTypeIsDictionary();
  if (IsDictionary)
  {
    if (!a1 && (v8 = scn_default_log(), os_log_type_enabled(v8, OS_LOG_TYPE_FAULT)))
    {
      _C3DGeometryFillLibraryForSerialization_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
      if (a2)
      {
        goto LABEL_7;
      }
    }

    else if (a2)
    {
      goto LABEL_7;
    }

    v16 = scn_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      _C3DGeometryFinalizeDeserialization_cold_2(v16, v17, v18, v19, v20, v21, v22, v23);
    }

LABEL_7:
    *(a1 + 28) = __DeserializeInt(a2, @"minFilter", a4);
    *(a1 + 32) = __DeserializeInt(a2, @"magFilter", a4);
    *(a1 + 36) = __DeserializeInt(a2, @"mipFilter", a4);
    *(a1 + 16) = __DeserializeInt(a2, @"wrapS", a4);
    *(a1 + 20) = __DeserializeInt(a2, @"wrapT", a4);
    valuePtr = 1.0;
    if (!a2 && (v24 = scn_default_log(), os_log_type_enabled(v24, OS_LOG_TYPE_FAULT)))
    {
      _C3DTextureSamplerInitWithPropertyList_cold_4(v24, v25, v26, v27, v28, v29, v30, v31);
      if (!@"anisotropy")
      {
LABEL_10:
        v32 = scn_default_log();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
        {
          _C3DAnimationManagerGetAnimationNodeForKey_cold_3(v32, v33, v34, v35, v36, v37, v38, v39);
        }
      }
    }

    else if (!@"anisotropy")
    {
      goto LABEL_10;
    }

    Value = CFDictionaryGetValue(a2, @"anisotropy");
    if (Value)
    {
      v41 = CFNumberGetValue(Value, kCFNumberFloatType, &valuePtr);
      if (a4)
      {
        if (!v41 && !*a4)
        {
          *a4 = C3DSceneSourceCreateMalformedDocumentError(0);
        }
      }
    }

    v42 = valuePtr;
    if (valuePtr == 3.4028e38)
    {
      v42 = 1.0;
    }

    *(a1 + 64) = v42;
    v43 = 1;
    if (v42 <= 128.0)
    {
      v43 = ((v42 * 65536.0 * 0.0078125) << 19) | 1;
    }

    v44 = vshlq_u32(*(a1 + 16), xmmword_21C281050);
    *v44.i8 = vorr_s8(*v44.i8, *&vextq_s8(v44, v44, 8uLL));
    *(a1 + 80) = v44.i32[0] | v44.i32[1] | (*(a1 + 32) << 12) | (*(a1 + 36) << 14) | (*(a1 + 68) << 16) | v43;
    return IsDictionary;
  }

  v45 = scn_default_log();
  if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
  {
    _C3DTextureSamplerInitWithPropertyList_cold_1(v45);
  }

  return IsDictionary;
}

CFMutableDictionaryRef _C3DTextureSamplerCopyPropertyList(int *cf)
{
  if (!cf)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      _C3DGeometryFillLibraryForSerialization_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = CFGetAllocator(cf);
  Mutable = CFDictionaryCreateMutable(v10, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v12 = __SerializeInt(Mutable, @"minFilter", cf[7]);
  v13 = __SerializeInt(Mutable, @"magFilter", cf[8]) & v12;
  v14 = __SerializeInt(Mutable, @"mipFilter", cf[9]);
  v15 = v14 & __SerializeInt(Mutable, @"wrapS", cf[4]);
  v16 = __SerializeInt(Mutable, @"wrapT", cf[5]);
  valuePtr = cf[16];
  if (!Mutable)
  {
    v17 = scn_default_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      _C3DTextureSamplerInitWithPropertyList_cold_4(v17, v18, v19, v20, v21, v22, v23, v24);
    }
  }

  v25 = v13 & v15;
  if (!@"anisotropy")
  {
    v26 = scn_default_log();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerGetAnimationNodeForKey_cold_3(v26, v27, v28, v29, v30, v31, v32, v33);
    }
  }

  v34 = v25 & v16;
  v35 = CFGetAllocator(Mutable);
  v36 = CFNumberCreate(v35, kCFNumberFloatType, &valuePtr);
  if (v36)
  {
    v37 = v36;
    CFDictionarySetValue(Mutable, @"anisotropy", v36);
    CFRelease(v37);
    v38 = 1;
  }

  else
  {
    v38 = 0;
  }

  if ((v34 & v38) == 0)
  {
    v39 = scn_default_log();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      _C3DTextureSamplerCopyPropertyList_cold_4(v39);
    }

    CFRelease(Mutable);
    return 0;
  }

  return Mutable;
}

uint64_t __DeserializeInt(CFDictionaryRef theDict, void *key, CFErrorRef *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  valuePtr = 2;
  if (!theDict && (v6 = scn_default_log(), os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    _C3DTextureSamplerInitWithPropertyList_cold_4(v6, v7, v8, v9, v10, v11, v12, v13);
    if (key)
    {
      goto LABEL_6;
    }
  }

  else if (key)
  {
    goto LABEL_6;
  }

  v14 = scn_default_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
  {
    _C3DAnimationManagerGetAnimationNodeForKey_cold_3(v14, v15, v16, v17, v18, v19, v20, v21);
  }

LABEL_6:
  Value = CFDictionaryGetValue(theDict, key);
  if (Value && !CFNumberGetValue(Value, kCFNumberIntType, &valuePtr))
  {
    v24 = scn_default_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v27 = key;
      v28 = 2112;
      v29 = theDict;
      v30 = 1024;
      v31 = 2;
      _os_log_impl(&dword_21BEF7000, v24, OS_LOG_TYPE_DEFAULT, "Warning: While reading a texture sampler: could not read %@ (serializedData: %@), using the default value %d instead", buf, 0x1Cu);
    }

    if (a3 && !*a3)
    {
      *a3 = C3DSceneSourceCreateMalformedDocumentError(0);
    }
  }

  return valuePtr;
}

uint64_t __SerializeInt(void *cf, const void *a2, int a3)
{
  valuePtr = a3;
  if (!cf && (v5 = scn_default_log(), os_log_type_enabled(v5, OS_LOG_TYPE_FAULT)))
  {
    _C3DTextureSamplerInitWithPropertyList_cold_4(v5, v6, v7, v8, v9, v10, v11, v12);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v13 = scn_default_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
  {
    _C3DAnimationManagerGetAnimationNodeForKey_cold_3(v13, v14, v15, v16, v17, v18, v19, v20);
  }

LABEL_6:
  v21 = CFGetAllocator(cf);
  result = CFNumberCreate(v21, kCFNumberIntType, &valuePtr);
  if (result)
  {
    v23 = result;
    CFDictionarySetValue(cf, a2, result);
    CFRelease(v23);
    return 1;
  }

  return result;
}

__CFArray *_C3DTextureSamplerCopyInstanceVariables(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  v3 = MEMORY[0x277CBF138];
  v4 = MEMORY[0x277CBF150];
  v5 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v41 = 0;
  valuePtr = 2;
  v40 = a1 + 16;
  v6 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v7 = CFNumberCreate(0, kCFNumberSInt32Type, &v41);
  v8 = CFNumberCreate(0, kCFNumberLongType, &v40);
  CFDictionarySetValue(v5, @"name", @"wrapS");
  CFDictionarySetValue(v5, @"type", v6);
  CFDictionarySetValue(v5, @"address", v8);
  CFDictionarySetValue(v5, @"semantic", v7);
  CFArrayAppendValue(Mutable, v5);
  CFRelease(v7);
  CFRelease(v5);
  CFRelease(v8);
  CFRelease(v6);
  v9 = CFDictionaryCreateMutable(0, 4, v3, v4);
  v41 = 0;
  valuePtr = 2;
  v40 = a1 + 20;
  v10 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v11 = CFNumberCreate(0, kCFNumberSInt32Type, &v41);
  v12 = CFNumberCreate(0, kCFNumberLongType, &v40);
  CFDictionarySetValue(v9, @"name", @"wrapT");
  CFDictionarySetValue(v9, @"type", v10);
  CFDictionarySetValue(v9, @"address", v12);
  CFDictionarySetValue(v9, @"semantic", v11);
  CFArrayAppendValue(Mutable, v9);
  CFRelease(v11);
  CFRelease(v9);
  CFRelease(v12);
  CFRelease(v10);
  v13 = CFDictionaryCreateMutable(0, 4, v3, MEMORY[0x277CBF150]);
  v41 = 0;
  valuePtr = 2;
  v40 = a1 + 24;
  v14 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v15 = CFNumberCreate(0, kCFNumberSInt32Type, &v41);
  v16 = CFNumberCreate(0, kCFNumberLongType, &v40);
  CFDictionarySetValue(v13, @"name", @"wrapP");
  CFDictionarySetValue(v13, @"type", v14);
  CFDictionarySetValue(v13, @"address", v16);
  CFDictionarySetValue(v13, @"semantic", v15);
  CFArrayAppendValue(Mutable, v13);
  CFRelease(v15);
  CFRelease(v13);
  CFRelease(v16);
  CFRelease(v14);
  v17 = MEMORY[0x277CBF150];
  v18 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v41 = 0;
  valuePtr = 2;
  v40 = a1 + 28;
  v19 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v20 = CFNumberCreate(0, kCFNumberSInt32Type, &v41);
  v21 = CFNumberCreate(0, kCFNumberLongType, &v40);
  CFDictionarySetValue(v18, @"name", @"minFilter");
  CFDictionarySetValue(v18, @"type", v19);
  CFDictionarySetValue(v18, @"address", v21);
  CFDictionarySetValue(v18, @"semantic", v20);
  CFArrayAppendValue(Mutable, v18);
  CFRelease(v20);
  CFRelease(v18);
  CFRelease(v21);
  CFRelease(v19);
  v22 = MEMORY[0x277CBF138];
  v23 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], v17);
  v41 = 0;
  valuePtr = 2;
  v40 = a1 + 32;
  v24 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v25 = CFNumberCreate(0, kCFNumberSInt32Type, &v41);
  v26 = CFNumberCreate(0, kCFNumberLongType, &v40);
  CFDictionarySetValue(v23, @"name", @"magFilter");
  CFDictionarySetValue(v23, @"type", v24);
  CFDictionarySetValue(v23, @"address", v26);
  CFDictionarySetValue(v23, @"semantic", v25);
  CFArrayAppendValue(Mutable, v23);
  CFRelease(v25);
  CFRelease(v23);
  CFRelease(v26);
  CFRelease(v24);
  v27 = CFDictionaryCreateMutable(0, 4, v22, v17);
  v41 = 0;
  valuePtr = 2;
  v40 = a1 + 36;
  v28 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v29 = CFNumberCreate(0, kCFNumberSInt32Type, &v41);
  v30 = CFNumberCreate(0, kCFNumberLongType, &v40);
  CFDictionarySetValue(v27, @"name", @"mipFilter");
  CFDictionarySetValue(v27, @"type", v28);
  CFDictionarySetValue(v27, @"address", v30);
  CFDictionarySetValue(v27, @"semantic", v29);
  CFArrayAppendValue(Mutable, v27);
  CFRelease(v29);
  CFRelease(v27);
  CFRelease(v30);
  CFRelease(v28);
  v31 = CFDictionaryCreateMutable(0, 4, v22, v17);
  v41 = 0;
  valuePtr = 13;
  v40 = a1 + 48;
  v32 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v33 = CFNumberCreate(0, kCFNumberSInt32Type, &v41);
  v34 = CFNumberCreate(0, kCFNumberLongType, &v40);
  CFDictionarySetValue(v31, @"name", @"borderColor");
  CFDictionarySetValue(v31, @"type", v32);
  CFDictionarySetValue(v31, @"address", v34);
  CFDictionarySetValue(v31, @"semantic", v33);
  CFArrayAppendValue(Mutable, v31);
  CFRelease(v33);
  CFRelease(v31);
  CFRelease(v34);
  CFRelease(v32);
  v35 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v41 = 0;
  valuePtr = 1;
  v40 = a1 + 64;
  v36 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v37 = CFNumberCreate(0, kCFNumberSInt32Type, &v41);
  v38 = CFNumberCreate(0, kCFNumberLongType, &v40);
  CFDictionarySetValue(v35, @"name", @"anisotropy");
  CFDictionarySetValue(v35, @"type", v36);
  CFDictionarySetValue(v35, @"address", v38);
  CFDictionarySetValue(v35, @"semantic", v37);
  CFArrayAppendValue(Mutable, v35);
  CFRelease(v37);
  CFRelease(v35);
  CFRelease(v38);
  CFRelease(v36);
  return Mutable;
}

uint64_t C3DBezierCurveGeometryGetTypeID()
{
  if (C3DBezierCurveGeometryGetTypeID_onceToken != -1)
  {
    C3DBezierCurveGeometryGetTypeID_cold_1();
  }

  return C3DBezierCurveGeometryGetTypeID_typeID;
}

double __C3DBezierCurveGeometryGetTypeID_block_invoke()
{
  v0 = _CFRuntimeRegisterClass();
  xmmword_28173FBE0 = kC3DC3DBezierCurveGeometryContextClassAnimatable;
  unk_28173FBF8 = kC3DC3DBezierCurveGeometryContextClassBoundingVolumes;
  result = *&kC3DC3DBezierCurveGeometryContextClassSceneLink;
  unk_28173FC08 = kC3DC3DBezierCurveGeometryContextClassSceneLink;
  C3DBezierCurveGeometryGetTypeID_typeID = v0;
  unk_28173FC18 = unk_282DC37D8;
  qword_28173FC28 = qword_282DC37E8;
  qword_28173FC58 = _C3DBezierCurveGeometryCreateCopy;
  return result;
}

uint64_t C3DBezierCurveGeometryCreate()
{
  if (C3DBezierCurveGeometryGetTypeID_onceToken != -1)
  {
    C3DBezierCurveGeometryGetTypeID_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DBezierCurveGeometryGetTypeID_typeID, 288);
  v1 = C3DGeometryInit(Instance);
  *(Instance + 128) = &kC3DBezierCurveGeometryMeshlessGeometryCallBacks;
  Default = C3DMaterialCreateDefault(v1);
  C3DGeometryAppendMaterial(Instance, Default);
  CFRelease(Default);
  v3 = MEMORY[0x277D860B8];
  v4 = *(MEMORY[0x277D860B8] + 16);
  *(Instance + 240) = *MEMORY[0x277D860B8];
  *(Instance + 256) = v4;
  v5 = *(v3 + 48);
  *(Instance + 272) = *(v3 + 32);
  *(Instance + 288) = v5;
  return Instance;
}

void C3DBezierCurveGeometryFinalize(uint64_t a1)
{
  v2 = *(a1 + 216);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 216) = 0;
  }

  v3 = *(a1 + 224);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 224) = 0;
  }
}

void C3DBezierCurveGeometrySetPath(uint64_t a1, CFTypeRef cf)
{
  v3 = *(a1 + 216);
  if (v3 != cf)
  {
    if (v3)
    {
      CFRelease(v3);
      *(a1 + 216) = 0;
    }

    if (cf)
    {
      v5 = CFRetain(cf);
    }

    else
    {
      v5 = 0;
    }

    *(a1 + 216) = v5;
    v6 = C3DBezierCurveCreateWithCGPath(cf);
    v7 = *(a1 + 224);
    if (v7 != v6)
    {
      if (v7)
      {
        CFRelease(v7);
        *(a1 + 224) = 0;
      }

      if (v6)
      {
        v8 = CFRetain(v6);
      }

      else
      {
        v8 = 0;
      }

      *(a1 + 224) = v8;
    }

    CFRelease(v6);
  }
}

__n128 *C3DBezierCurveGeometrySetTransform(__n128 *result, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{
  result[15] = a2;
  result[16] = a3;
  result[17] = a4;
  result[18] = a5;
  return result;
}

id _C3DBezierCurveGeometryCFFinalize(__C3DGeometry *a1)
{
  C3DBezierCurveGeometryFinalize(a1);

  return _C3DGeometryCFFinalize(a1);
}

uint64_t _C3DBezierCurveGeometryGetBoundingBox(float32x4_t *a1, uint64_t a2, float32x4_t *a3, float32x4_t *a4)
{
  v24 = 0;
  v25 = 0;
  C3DBezierCurveGetBoundingBox(a1[14].i64[0], &v25, &v24);
  v7 = a1[15];
  v8 = a1[16];
  v9 = a1[17];
  v10 = a1[18];
  v11 = vmulq_lane_f32(v8, v25, 1);
  v12 = vmlaq_f32(vmlaq_n_f32(v11, v7, v25.f32[0]), 0, v9);
  v13 = vmulq_lane_f32(v8, v24, 1);
  v14 = vmlaq_f32(vmlaq_n_f32(v13, v7, v25.f32[0]), 0, v9);
  v15 = vaddq_f32(v10, vmlaq_f32(vmlaq_n_f32(v11, v7, v24.f32[0]), 0, v9));
  v16 = vaddq_f32(v10, vmlaq_f32(vmlaq_n_f32(v13, v7, v24.f32[0]), 0, v9));
  v15.i32[3] = 0;
  v16.i32[3] = 0;
  v17 = vaddq_f32(v10, v14);
  v18 = vminnmq_f32(v15, v16);
  v17.i32[3] = 0;
  v18.i32[3] = 0;
  v19 = vaddq_f32(v10, v12);
  v20 = vminnmq_f32(v17, v18);
  v19.i32[3] = 0;
  v20.i32[3] = 0;
  v21 = vmaxnmq_f32(v15, v16);
  v21.i32[3] = 0;
  v22 = vmaxnmq_f32(v17, v21);
  v22.i32[3] = 0;
  *a3 = vminnmq_f32(v19, v20);
  *a4 = vmaxnmq_f32(v19, v22);
  return 1;
}

uint64_t _C3DBezierCurveGeometryGetBoundingSphere(float32x4_t *a1, uint64_t a2, _OWORD *a3)
{
  v10.i32[2] = 0;
  v10.i64[0] = 0;
  v9.i32[2] = 0;
  v9.i64[0] = 0;
  _C3DBezierCurveGeometryGetBoundingBox(a1, 0, &v10, &v9);
  v4.i64[0] = 0x3F0000003F000000;
  v4.i64[1] = 0x3F0000003F000000;
  v8 = vmlaq_f32(v10, v4, vsubq_f32(v9, v10));
  v5 = vsubq_f32(v8, v10);
  v6 = vmulq_f32(v5, v5);
  C3DSphereMake(a3, &v8, sqrtf(v6.f32[2] + vaddv_f32(*v6.f32)));
  return 1;
}

uint64_t _C3DBezierCurveGeometryCreateCopy(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      _C3DBezierCurveGeometryCreateCopy_cold_1(v2);
    }
  }

  v3 = C3DBezierCurveGeometryCreate();
  C3DGeometryCopy(a1, v3);
  C3DBezierCurveGeometrySetPath(v3, *(a1 + 216));
  return v3;
}

C3D::DrawNodesPass *C3D::FloorPass::FloorPass(C3D::FloorPass *this, C3D::RenderGraph *a2, C3D::Pass *a3, __C3DNode *a4, char a5, const Parameters *a6, const Parameters *a7)
{
  result = C3D::ScenePass::ScenePass(this, a2, a3, a6, a7);
  *result = &unk_282DC3800;
  *(result + 681) = a4;
  *(result + 5456) = a5;
  return result;
}

C3D::Pass *C3D::FloorPass::setup(C3D::FloorPass *this)
{
  v2 = this + 4096;
  Floor = C3DNodeGetFloor(*(this + 681));
  if (!Floor)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3D::FloorPass::setup(v4);
    }
  }

  *(this + 112) = 1;
  *(this + 296) = 1;
  *(this + 303) = 0;
  *(this + 625) = *(this + 681);
  v2[912] = 0;
  *(this + 628) &= C3DFloorGetReflectionCategoryBitMask(Floor);
  v2[853] = v2[1360];
  *(this + 306) = C3DEngineContextGetViewpointCoordinateSpace(*(this + 2));
  C3D::ScenePass::setup(this);
  v5 = C3D::PassDescriptor::outputAtIndex((this + 32), 0);
  *(v5 + 8) = C3D::Pass::nameWithPrefixAndPointer(this, "SceneKit-floor-color-", *(this + 681));
  *(v5 + 24) = 2;
  C3D::Pass::parentColorDesc(this, &v23);
  *(v5 + 16) = v23;
  *(v5 + 32) = v24;
  LOWORD(v6) = *(v5 + 16);
  *&v7 = v6;
  *(v5 + 16) = (*(Floor + 228) * *&v7);
  LOWORD(v7) = *(v5 + 18);
  *(v5 + 18) = (*(Floor + 228) * v7);
  v8 = *(v5 + 66);
  *(v5 + 48) = 0;
  *(v5 + 56) = 0;
  *(v5 + 66) = v8 & 0xFFBC | 0x42;
  *(v5 + 28) = 115;
  v9 = C3D::PassDescriptor::outputAtIndex((this + 32), 1u);
  C3D::Pass::parentDepthDesc(this, &v23);
  *(v9 + 16) = v23;
  *(v9 + 32) = v24;
  *(v9 + 64) = 2;
  *(v9 + 8) = C3D::Pass::nameWithPrefixAndPointer(this, "SceneKit-floor-depth-", *(this + 681));
  *(v9 + 66) = *(v9 + 66) & 0xFFFC | 2;
  LOWORD(v10) = *(v9 + 16);
  *&v11 = v10;
  *(v9 + 16) = (*(Floor + 228) * *&v11);
  LOWORD(v11) = *(v9 + 18);
  *(v9 + 18) = (*(Floor + 228) * v11);
  if (*(this + 306) != 2 && (v2[920] & 1) == 0)
  {
    EyeCount = C3DEngineContextGetEyeCount(*(this + 2));
    *(this + 121) = 1;
    if (EyeCount)
    {
      v15 = (this + 128);
      v16 = EyeCount;
      v17 = 0;
      do
      {
        LOWORD(v13) = *(v5 + 16);
        LOWORD(v14) = *(v5 + 18);
        v14 = LODWORD(v14);
        *&v18 = v17;
        *(&v18 + 2) = LODWORD(v13);
        *(&v18 + 3) = v14;
        *v15++ = v18;
        v13 = *&v17 + LODWORD(v13);
        *&v17 = v13;
        --v16;
      }

      while (v16);
    }

    *(v5 + 16) *= EyeCount;
    *(v9 + 16) *= EyeCount;
  }

  if (*(Floor + 232) < 2)
  {
    LOBYTE(v19) = 0;
    *(v5 + 31) = 0;
  }

  else
  {
    *(v5 + 24) = 4;
    *(v9 + 24) = 4;
    *(v5 + 31) = *(Floor + 232);
    v19 = *(Floor + 232);
  }

  *(v9 + 31) = v19;
  if (C3DFloorGetReflectionFalloffEnd(Floor) == 0.0)
  {
    *(v9 + 66) |= 8u;
  }

  *(v9 + 28) = 252;
  result = *(this + 680);
  if (result != this)
  {
    v21 = *(v5 + 8);
    v22 = C3D::Pass::descriptor(result);
    result = C3D::PassDescriptor::outputAtIndex(v22, 0);
    *(result + 1) = v21;
  }

  return result;
}

void C3D::FloorPass::_setupPointOfViewMatrices(uint64_t a1, float32x4_t *a2, float32x4_t *a3)
{
  C3D::DrawNodesPass::_setupPointOfViewMatrices(a1, a2, a3);
  v4 = *(a1 + 5448);

  C3DCullingContextSetupMirrorMatrices(a1 + 320, v4);
}

const __CFSet *C3DEngineContextApplyModifiers(uint64_t a1, uint64_t a2)
{
  Stats = C3DEngineContextGetStats(a1);
  result = C3DEnginePipelineGetNodesForKey(a2, @"kDeformerStackKey", 0);
  if (result)
  {
    v6 = result;
    v7 = *(a1 + 1704);
    if (v7)
    {
      [(SCNMTLOpenSubdivComputeEvaluator *)v7 computeEvaluator];
    }

    kdebug_trace();
    v8 = CACurrentMediaTime();
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __C3DEngineContextApplyModifiers_block_invoke;
    v14[3] = &__block_descriptor_40_e10_v16__0r_v8l;
    v14[4] = a1;
    C3DCFSetApplyBlock(v6, v14);
    *(Stats + 144) = *(Stats + 144) + CACurrentMediaTime() - v8;
    v9 = *(a1 + 1704);
    if (v9)
    {
      [(SCNMTLOpenSubdivComputeEvaluator *)v9 computeEvaluator];
    }

    kdebug_trace();
    v10 = *(a1 + 1704);
    if (v10)
    {
      [(SCNMTLOpenSubdivComputeEvaluator *)v10 computeEvaluator];
    }

    kdebug_trace();
    v11 = CACurrentMediaTime();
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __C3DEngineContextApplyModifiers_block_invoke_2;
    v13[3] = &__block_descriptor_40_e10_v16__0r_v8l;
    v13[4] = a1;
    C3DCFSetApplyBlock(v6, v13);
    *(Stats + 136) = *(Stats + 136) + CACurrentMediaTime() - v11;
    v12 = *(a1 + 1704);
    if (v12)
    {
      [(SCNMTLOpenSubdivComputeEvaluator *)v12 computeEvaluator];
    }

    return kdebug_trace();
  }

  return result;
}

uint64_t C3DEngineContextGetStats(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DEngineContextGetStats_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 1696);
}

uint64_t C3DEngineContextGetFrameIndex(uint64_t a1)
{
  result = *(a1 + 1704);
  if (result)
  {
    return [(SCNMTLOpenSubdivComputeEvaluator *)result computeEvaluator];
  }

  return result;
}

void __C3DEngineContextApplyModifiers_block_invoke(uint64_t a1, uint64_t a2)
{
  Morpher = C3DNodeGetMorpher(a2);
  if (Morpher)
  {
    v5 = *(a1 + 32);

    C3DMorpherUpdateIfNeeded(Morpher, a2, v5);
  }
}

uint64_t __C3DEngineContextApplyModifiers_block_invoke_2(uint64_t a1, float32x4_t *a2)
{
  result = C3DNodeGetSkinner(a2);
  if (result)
  {
    v5 = *(a1 + 32);

    return C3DSkinnerUpdateCurrentMesh(result, a2, v5);
  }

  return result;
}

void C3DEngineContextReloadShadersIfNeeded(uint64_t a1)
{
  if (*(a1 + 208) == 1)
  {
    v10 = v1;
    v11 = v2;
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&dword_21BEF7000, v4, OS_LOG_TYPE_INFO, "Info: Reload Shaders", v9, 2u);
    }

    v5 = *(a1 + 152);
    if (v5)
    {
      if (*(a1 + 136))
      {
        C3DResourceManagerRemoveAllPrograms(v5);
      }
    }

    SharedInstance = C3DNotificationCenterGetSharedInstance();
    Scene = C3DEngineContextGetScene(a1);
    C3DNotificationCenterPostNotification(SharedInstance, @"kC3DNotificationEngineContextInvalidatePasses", Scene, 0, 1u);
    [*(a1 + 216) emptyShaderCache];
    v8 = [(SCNMTLRenderContext *)*(a1 + 1704) resourceManager];
    [(SCNMTLResourceManager *)v8 removeAllShaders];
    C3DRenderGraphClearRenderGraphResources(*(a1 + 1728));
    *(a1 + 208) = 0;
  }
}

uint64_t C3DEngineContextRenderScene(__n128 *a1, double a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    v7 = scn_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      C3DEngineContextGetStats_cold_1(v7, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  a1[26].n128_u64[1] = 0x7FF0000000000000;
  FXContext = C3DEngineContextGetFXContext(a1);
  if (FXContext)
  {
    v16 = *(FXContext + 264);
    if (v16)
    {
      [v16 clearCaches];
    }
  }

  a1[28].n128_f64[0] = a2;
  result = C3DEngineContextGetScene(a1);
  if (result)
  {
    v18 = result;
    RendererContextGL = C3DEngineContextGetRendererContextGL(a1);
    if (!RendererContextGL)
    {
      v20 = scn_default_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        C3DEngineContextRenderScene_cold_2(v20, v21, v22, v23, v24, v25, v26, v27);
      }
    }

    ResourceManager = C3DEngineContextGetResourceManager(a1);
    C3DResourceManagerLockVRAMResourceAccess(ResourceManager);
    C3DRendererContextInvalidateCache(RendererContextGL);
    C3DEngineContextReloadShadersIfNeeded(a1);
    v29 = a1[9].n128_u64[0];
    if (v29)
    {
      C3DAuthoringEnvironmentBeginFrame(v29);
    }

    Stats = C3DEngineContextGetStats(a1);
    v31 = CACurrentMediaTime();
    EnginePipeline = C3DSceneGetEnginePipeline(v18);
    if (!EnginePipeline)
    {
      v33 = scn_default_log();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
      {
        C3DEngineContextRenderScene_cold_3(v33, v34, v35, v36, v37, v38, v39, v40);
      }
    }

    v41[0] = EnginePipeline;
    v41[1] = a1;
    v42 = 0u;
    v43 = 0u;
    C3DEnginePipelineApplyNotificationQueue(v41);
    *(Stats + 152) = *(Stats + 152) + CACurrentMediaTime() - v31;
    C3DRendererContextPushGroupMarker(RendererContextGL, "Resource Manager Flush");
    C3DResourceManagerFlush(ResourceManager);
    C3DRendererContextPopGroupMarker();
    C3DEngineContextApplyModifiers(a1, EnginePipeline);
    C3DEngineContextRenderMainTechnique(a1);
    if (a4)
    {
      (*(a4 + 16))(a4);
    }

    C3DRendererContextUnbindTextureUnits(RendererContextGL);
    C3DRendererContextResetToDefaultStates(RendererContextGL);
    C3DRendererContextResetVolatileObjects(RendererContextGL);
    C3DResourceManagerUnlockVRAMResourceAccess(ResourceManager);
    return 1;
  }

  return result;
}

void *C3DEngineContextResetNextFrameTime(uint64_t a1)
{
  *(a1 + 424) = 0x7FF0000000000000;
  result = C3DEngineContextGetFXContext(a1);
  if (result)
  {
    result = result[33];
    if (result)
    {

      return [result clearCaches];
    }
  }

  return result;
}

uint64_t C3DEngineContextGetResourceManager(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DEngineContextGetStats_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 152);
}

void C3DEngineContextSynchronizeDefaultLight(uint64_t a1, float32x4_t *a2)
{
  if (a2)
  {
    v2 = *(a1 + 48);
    if (v2)
    {
      WorldMatrix = C3DNodeGetWorldMatrix(a2);

      C3DNodeSetMatrix(v2, WorldMatrix);
    }
  }
}

uint64_t C3DEngineContextGetEnvironmentCubeMesh(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  result = *(a1 + 400);
  if (!result)
  {
    v18 = xmmword_21C281094;
    v19 = unk_21C2810A4;
    v20 = xmmword_21C2810B4;
    v21 = unk_21C2810C4;
    *bytes = xmmword_21C281074;
    v17 = unk_21C281084;
    *v13 = xmmword_21C2810D4;
    v14 = unk_21C2810E4;
    v15 = 132612;
    v3 = *MEMORY[0x277CBECE8];
    v4 = CFDataCreate(*MEMORY[0x277CBECE8], bytes, 96);
    values = C3DMeshSourceCreate(v4, 0, 8, 3, 1);
    CFRelease(v4);
    v5 = CFDataCreate(v3, v13, 36);
    cf = C3DMeshElementCreate();
    C3DMeshElementInit(cf, 0, 12, v5, 1);
    CFRelease(v5);
    v10 = 0;
    v6 = MEMORY[0x277CBF128];
    v7 = CFArrayCreate(v3, &values, 1, MEMORY[0x277CBF128]);
    v8 = CFArrayCreate(v3, &cf, 1, v6);
    v9 = C3DMeshCreateWithMeshSourcesAndMeshElements(v7, v8, &v10);
    *(a1 + 400) = v9;
    C3DEntitySetName(v9, @"Environment cube");
    CFRelease(v8);
    CFRelease(v7);
    CFRelease(cf);
    return *(a1 + 400);
  }

  return result;
}

void C3DEngineContextRenderBackgroundMap(uint64_t a1, uint64_t a2, float32x4_t *a3)
{
  if (!C3DEffectSlotGetColorIfApplicable(a2))
  {
    RenderContext = C3DEngineContextGetRenderContext(a1);
    if (RenderContext)
    {
      v7 = RenderContext;
      ImageProxy = C3DEffectSlotGetImageProxy(a2);
      if (ImageProxy && (v9 = ImageProxy, C3DImageProxyGetSourceType(ImageProxy) - 4 >= 0xFFFFFFFD))
      {

        [(SCNMTLRenderContext *)v7 renderVideoBackground:v9 engineContext:a1 slot:a2];
      }

      else
      {

        [(SCNMTLRenderContext *)v7 renderBackground:a2 engineContext:a1 passInstance:a3];
      }
    }

    else
    {
      RendererContextGL = C3DEngineContextGetRendererContextGL(a1);
      v11 = C3DEffectSlotGetImageProxy(a2);
      if (v11)
      {
        v12 = v11;
        Default = C3DTextureSamplerGetDefault();
        TextureProxy = C3DImageProxyCreateTextureProxy(v12, Default, a1);
        if (TextureProxy)
        {
          v15 = TextureProxy;
          TextureSampler = C3DEffectSlotGetTextureSampler(a2);
          if (!TextureSampler)
          {
            TextureSampler = C3DTextureSamplerGetDefault();
          }

          C3DTextureProxyRenderInCurrentContext(v15, a1, TextureSampler);

          CFRelease(v15);
        }
      }

      else
      {
        Image = C3DEffectSlotGetImage(a2);
        if (!Image)
        {
          return;
        }

        v18 = Image;
        ResourceManager = C3DEngineContextGetResourceManager(a1);
        v48 = 0u;
        v49 = 0u;
        *value = 0u;
        v47 = 0u;
        ImageType = C3DImageGetImageType(v18);
        if (ImageType - 3 >= 5)
        {
          if (ImageType > 1)
          {
            return;
          }

          QuadMesh = C3DEngineContextGetQuadMesh(a1);
          v22 = *(a1 + 416);
          if (!v22)
          {
            BuiltInProgramWithName = C3DFXGLSLProgramCreateBuiltInProgramWithName(@"C3D-EnvMap2D");
            C3DFXGLSLProgramSetUniformIndex(BuiltInProgramWithName, @"textureSampler0", 0);
            C3DFXGLSLProgramSetUniformIndex(BuiltInProgramWithName, @"u_textureMatrix", 1);
            v22 = *(a1 + 416);
            if (v22 != BuiltInProgramWithName)
            {
              if (v22)
              {
                CFRelease(*(a1 + 416));
                *(a1 + 416) = 0;
              }

              if (BuiltInProgramWithName)
              {
                v22 = CFRetain(BuiltInProgramWithName);
              }

              else
              {
                v22 = 0;
              }

              *(a1 + 416) = v22;
            }

            if (BuiltInProgramWithName)
            {
              CFRelease(BuiltInProgramWithName);
              v22 = *(a1 + 416);
            }
          }

          if (C3DKeyframeControllerHasInterpolationModesPerKey(a2))
          {
            ImageTransform = C3DEffectSlotGetImageTransform(a2);
            v39 = ImageTransform[3];
            v41 = *ImageTransform;
            v40 = ImageTransform[1];
            v48 = ImageTransform[2];
            v49 = v39;
            *value = v41;
            v47 = v40;
          }

          else
          {
            C3DMatrix4x4MakeIdentity(value);
          }
        }

        else
        {
          QuadMesh = C3DEngineContextGetEnvironmentCubeMesh(a1);
          v22 = *(a1 + 408);
          if (!v22)
          {
            v23 = C3DFXGLSLProgramCreateBuiltInProgramWithName(@"C3D-EnvMapCube");
            C3DFXGLSLProgramSetUniformIndex(v23, @"textureSampler0", 0);
            C3DFXGLSLProgramSetUniformIndex(v23, @"u_mvp", 1);
            C3DFXGLSLProgramSetUniformIndex(v23, @"u_zfar", 2);
            v22 = *(a1 + 408);
            if (v22 != v23)
            {
              if (v22)
              {
                CFRelease(*(a1 + 408));
                *(a1 + 408) = 0;
              }

              if (v23)
              {
                v22 = CFRetain(v23);
              }

              else
              {
                v22 = 0;
              }

              *(a1 + 408) = v22;
            }

            if (v23)
            {
              CFRelease(v23);
              v22 = *(a1 + 408);
            }
          }

          memset(&v, 0, sizeof(v));
          C3DMatrix4x4Invert((a1 + 864), &v);
          v44 = v.columns[3];
          memset(v43, 0, sizeof(v43));
          C3DMatrix4x4MakeTranslation(v43, &v44);
          if (C3DKeyframeControllerHasInterpolationModesPerKey(a2))
          {
            v25 = C3DEffectSlotGetImageTransform(a2);
            C3DMatrix4x4Mult(v25, v43, v43);
          }

          C3DMatrix4x4Mult(v43, (a1 + 864), v43);
          C3DMatrix4x4Mult(v43, (a1 + 480), value);
        }

        ProgramResident = C3DResourceManagerMakeProgramResident(ResourceManager, v22, RendererContextGL);
        C3DRendererContextBindProgramObject(RendererContextGL, ProgramResident);
        IsEnabled = C3DRendererContextIsEnabled(RendererContextGL, 2);
        v28 = C3DRendererContextIsEnabled(RendererContextGL, 1);
        C3DRendererContextSetEnable(RendererContextGL, 2, 0);
        C3DRendererContextSetEnable(RendererContextGL, 1, 0);
        UniformLocation = C3DFXGLSLProgramObjectGetUniformLocation(ProgramResident, 0);
        if (UniformLocation == -1)
        {
          Texture = 0;
        }

        else
        {
          v30 = UniformLocation;
          v42 = v28;
          v31 = IsEnabled;
          v32 = QuadMesh;
          v33 = C3DEffectSlotGetTextureSampler(a2);
          if (!v33)
          {
            v33 = C3DTextureSamplerGetDefault();
          }

          Texture = C3DEffectSlotGetTexture(a2);
          if (!Texture)
          {
            Texture = C3DResourceManagerMakeImageResident(ResourceManager, v18, v33, RendererContextGL);
          }

          if (Texture && v33)
          {
            C3DRendererContextBindTexture(RendererContextGL, Texture, v33, 0, 0);
            C3DRendererContextSetIntUniformAtLocation(RendererContextGL, v30, 0);
            C3DFXGLSLProgramObjectSetUniformValueAtIndex(ProgramResident, 0, 0);
          }

          QuadMesh = v32;
          IsEnabled = v31;
          v28 = v42;
        }

        v35 = C3DFXGLSLProgramObjectGetUniformLocation(ProgramResident, 1);
        if (v35 != -1)
        {
          C3DRendererContextSetMatrix4x4UniformAtLocation(RendererContextGL, v35, value, 1);
        }

        v36 = C3DFXGLSLProgramObjectGetUniformLocation(ProgramResident, 2);
        if (v36 != -1)
        {
          v.columns[0].f32[0] = *(a1 + 536) / (*(a1 + 520) + 1.0);
          C3DRendererContextSetFloatUniformAtLocation(RendererContextGL, v36, &v, 1);
        }

        C3DRendererContextBindMesh(RendererContextGL, ResourceManager, QuadMesh);
        ElementAtIndex = C3DMeshGetElementAtIndex(QuadMesh, 0, 1);
        C3DRendererContextBindMeshElement(RendererContextGL, ResourceManager, ElementAtIndex);
        C3DRendererContextRenderResidentMeshElement(RendererContextGL);
        C3DRendererContextSetEnable(RendererContextGL, 2, IsEnabled);
        C3DRendererContextSetEnable(RendererContextGL, 1, v28);
        if (ProgramResident)
        {
          C3DRendererContextUnbindProgramObject(RendererContextGL);
        }

        C3DRendererContextUnbindTexture(RendererContextGL, Texture, 0);
      }
    }
  }
}

uint64_t C3DEngineContextGetRenderContext(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DEngineContextGetScene_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 1704);
}

uint64_t C3DEngineContextGetQuadMesh(uint64_t a1)
{
  if (!*(a1 + 392))
  {
    Plane = C3DMeshCreatePlane(0, 1, 1, 0, 2.0, -2.0, 0.0);
    CopyWithInterleavedSources = C3DMeshCreateCopyWithInterleavedSources(Plane);
    *(a1 + 392) = CopyWithInterleavedSources;
    C3DEntitySetName(CopyWithInterleavedSources, @"Quad");
    if (Plane)
    {
      CFRelease(Plane);
    }
  }

  return *(a1 + 392);
}

void C3DEngineContextRenderNodeTree(uint64_t a1, float32x4_t *a2, const void *a3)
{
  if (!a1 && (v6 = scn_default_log(), os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    C3DEngineContextGetStats_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    if (a3)
    {
      goto LABEL_6;
    }
  }

  else if (a3)
  {
    goto LABEL_6;
  }

  v14 = scn_default_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
  {
    _C3DAnimationManagerGetAnimationPerKeyDictionaryForObject_cold_2(v14, v15, v16, v17, v18, v19, v20, v21);
  }

LABEL_6:
  FXContext = C3DEngineContextGetFXContext(a1);
  v23 = a2->i64[0];
  if (!a2->i64[0])
  {
    v23 = __GetDefaultPass_dummyPass;
    if (!__GetDefaultPass_dummyPass)
    {
      v23 = C3DFXPassCreate();
      __GetDefaultPass_dummyPass = v23;
    }
  }

  EnginePipeline = C3DSceneGetEnginePipeline(*(a1 + 16));
  if (!EnginePipeline)
  {
    v25 = scn_default_log();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      C3DEngineContextRenderScene_cold_3(v25, v26, v27, v28, v29, v30, v31, v32);
    }
  }

  CFRetain(a3);
  v62 = 0;
  v60[0] = EnginePipeline;
  v60[1] = a1;
  v60[2] = a2;
  v60[3] = 0;
  *(&v62 + 2) = C3DFXPassGetIgnoreInifiniteFloor(v23);
  MirrorNode = C3DFXContextGetMirrorNode(FXContext);
  RendererContextGL = C3DEngineContextGetRendererContextGL(a1);
  v34 = RendererContextGL;
  FrontFace = 0;
  v57 = MirrorNode;
  if (MirrorNode)
  {
    if (RendererContextGL)
    {
      FrontFace = C3DRendererContextGetFrontFace(RendererContextGL);
      if (FrontFace)
      {
        C3DRendererContextSetFrontFace(v34, 0);
      }
    }
  }

  v59 = a3;
  v58 = FrontFace;
  if (C3DFXPassGetDrawOnlyShadowCaster(v23) && (PointOfView = C3DFXPassGetPointOfView(v23)) != 0)
  {
    Light = C3DNodeGetLight(PointOfView);
    v38 = 0;
    if (Light && v34)
    {
      v39 = C3DLightGetShadowBias(Light) * 4096.0;
      glEnable(0x8037u);
      glPolygonOffset(1.2, v39);
      v38 = 1;
    }
  }

  else
  {
    v38 = 0;
  }

  v56 = v38;
  v40 = 0;
  v41 = a1 + 480;
  do
  {
    v42 = v41;
    v43 = 6;
    do
    {
      C3DMatrix4x4MakeIdentity(v42);
      v42 += 64;
      --v43;
    }

    while (v43);
    ++v40;
    v41 += 384;
  }

  while (v40 != 3);
  f32 = a2[4 * *(FXContext + 120)].f32;
  v45 = f32[222];
  v46 = f32[223];
  v47 = f32[225];
  *(a1 + 512) = f32[224];
  *(a1 + 528) = v47;
  *(a1 + 480) = v45;
  *(a1 + 496) = v46;
  v48 = a2[4 * *(FXContext + 120)].f32;
  v49 = v48[198];
  v50 = v48[199];
  v51 = v48[201];
  *(a1 + 896) = v48[200];
  *(a1 + 912) = v51;
  *(a1 + 864) = v49;
  *(a1 + 880) = v50;
  if (C3DFXPassGetUsesSceneBackgroundColor(v23))
  {
    Scene = C3DEngineContextGetScene(a1);
    BackgroundEffectSlot = C3DSceneGetBackgroundEffectSlot(Scene, 0);
    if (BackgroundEffectSlot)
    {
      C3DEngineContextRenderBackgroundMap(a1, BackgroundEffectSlot, a2);
    }
  }

  v54 = *(a1 + 1704);
  if (v54)
  {
    [(SCNMTLOpenSubdivComputeEvaluator *)v54 computeEvaluator];
  }

  kdebug_trace();
  C3DEnginePipelineRenderSubTree(v60, v59);
  v55 = *(a1 + 1704);
  if (v55)
  {
    [(SCNMTLOpenSubdivComputeEvaluator *)v55 computeEvaluator];
  }

  kdebug_trace();
  CFRelease(v59);
  if (v34)
  {
    if (v57 && v58)
    {
      C3DRendererContextSetFrontFace(v34, v58);
    }

    if (v56)
    {
      glDisable(0x8037u);
      glPolygonOffset(0.0, 0.0);
    }
  }
}

uint64_t C3DEngineContextGetFXContext(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DEngineContextGetStats_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 160);
}

__n128 C3DEngineContextSetMatrix4x4(uint64_t a1, int a2, uint64_t a3)
{
  v3 = a1 + 384 * a2;
  result = *a3;
  v5 = *(a3 + 16);
  v6 = *(a3 + 48);
  *(v3 + 512) = *(a3 + 32);
  *(v3 + 528) = v6;
  *(v3 + 480) = result;
  *(v3 + 496) = v5;
  return result;
}

void _C3DEngineContextCFFinalize(uint64_t a1)
{
  if (a1)
  {
    C3DRenderGraphDelete(*(a1 + 1728));
    C3DAudioManagerRemoveEngineContext(a1);
    SharedInstance = C3DNotificationCenterGetSharedInstance();
    C3DNotificationCenterRemoveObserver(SharedInstance, a1, @"kC3DNotificationEngineContextInvalidatePasses", 0);
    v3 = *(a1 + 152);
    if (v3)
    {
      v4 = *(a1 + 136);
      if (v4)
      {
        _C3DResourceManagerUninstallRendererContext(v3, v4);
      }
    }

    v5 = *(a1 + 16);
    if (v5)
    {
      C3DSceneUnregisterEngineContext(v5, a1);
    }

    v6 = *(a1 + 144);
    if (v6)
    {
      CFRelease(v6);
      *(a1 + 144) = 0;
    }

    v7 = *(a1 + 160);
    if (v7)
    {
      CFRelease(v7);
      *(a1 + 160) = 0;
    }

    v8 = *(a1 + 136);
    if (v8)
    {
      CFRelease(v8);
      *(a1 + 136) = 0;
    }

    v9 = *(a1 + 152);
    if (v9)
    {
      CFRelease(v9);
      *(a1 + 152) = 0;
    }

    v10 = *(a1 + 16);
    if (v10)
    {
      CFRelease(v10);
      *(a1 + 16) = 0;
    }

    v11 = *(a1 + 24);
    if (v11)
    {
      CFRelease(v11);
      *(a1 + 24) = 0;
    }

    v12 = *(a1 + 32);
    if (v12)
    {
      CFRelease(v12);
      *(a1 + 32) = 0;
    }

    v13 = *(a1 + 40);
    if (v13)
    {
      CFRelease(v13);
      *(a1 + 40) = 0;
    }

    v14 = *(a1 + 376);
    if (v14)
    {
      CFRelease(v14);
      *(a1 + 376) = 0;
    }

    v15 = *(a1 + 48);
    if (v15)
    {
      CFRelease(v15);
      *(a1 + 48) = 0;
    }

    v16 = *(a1 + 392);
    if (v16)
    {
      CFRelease(v16);
      *(a1 + 392) = 0;
    }

    v17 = *(a1 + 1640);
    if (v17)
    {
      CFRelease(v17);
      *(a1 + 1640) = 0;
    }

    v18 = *(a1 + 1704);
    if (v18)
    {
      CFRelease(v18);
      *(a1 + 1704) = 0;
    }

    v19 = *(a1 + 192);
    if (v19)
    {
      CFRelease(v19);
      *(a1 + 192) = 0;
    }

    v20 = *(a1 + 176);
    if (v20)
    {
      CFRelease(v20);
      *(a1 + 176) = 0;
    }

    v21 = *(a1 + 184);
    if (v21)
    {
      CFRelease(v21);
      *(a1 + 184) = 0;
    }

    v22 = *(a1 + 168);
    if (v22)
    {
      CFRelease(v22);
      *(a1 + 168) = 0;
    }

    v23 = 0;
    v24 = a1 + 1648;
    do
    {
      v25 = *(v24 + v23);
      if (v25)
      {
        CFRelease(v25);
        *(v24 + v23) = 0;
      }

      v23 += 8;
    }

    while (v23 != 48);
    *(a1 + 1696) = 0;
  }
}

CFStringRef _C3DEngineContextCFCopyFormatDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DEngineContext>");
}

CFStringRef _C3DEngineContextCFCopyDebugDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DEngineContext>");
}

void __InstallGLContext(uint64_t a1, void *a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DEngineContextGetStats_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = C3DRendererContextCreateWithOptions();
  v13 = *(a1 + 136);
  if (!v13)
  {
    v19 = 0;
    v15 = 0;
    v16 = *(a1 + 144);
    *(a1 + 144) = 0;
    if (!v16)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v14 = CFRetain(v13);
  v15 = v14;
  v16 = *(a1 + 144);
  *(a1 + 144) = 0;
  if (!v14)
  {
    v19 = 0;
    if (!v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    CFRelease(v16);
    goto LABEL_13;
  }

  if (C3DRendererContextGetShowsAuthoringEnvironment(v14) && v16)
  {
    C3DAnimationManagerSetPausedForEditing(v12, 1);
    AuthoringEnvironment = C3DEngineContextGetAuthoringEnvironment(a1, 1);
    C3DAuthoringEnvironmentCopySettings(v16, AuthoringEnvironment);
  }

  ContentScaleFactor = C3DRendererContextGetContentScaleFactor(v15);
  C3DRendererContextSetContentScaleFactor(v12, ContentScaleFactor);
  v19 = 1;
  if (v16)
  {
    goto LABEL_12;
  }

LABEL_13:
  ResourceManagerForContext = C3DResourceManagerRegistryGetResourceManagerForContext(a2, 1);
  v21 = *(a1 + 152);
  if (v21)
  {
    v22 = CFRetain(v21);
  }

  else
  {
    v22 = 0;
  }

  C3DRendererContextSetGLContext(v12, a2);
  v23 = *(a1 + 152);
  if (v23 != ResourceManagerForContext)
  {
    if (v23)
    {
      CFRelease(v23);
      *(a1 + 152) = 0;
    }

    if (ResourceManagerForContext)
    {
      v24 = CFRetain(ResourceManagerForContext);
    }

    else
    {
      v24 = 0;
    }

    *(a1 + 152) = v24;
  }

  v25 = *(a1 + 136);
  if (v25 != v12)
  {
    if (v25)
    {
      CFRelease(v25);
      *(a1 + 136) = 0;
    }

    if (v12)
    {
      v26 = CFRetain(v12);
    }

    else
    {
      v26 = 0;
    }

    *(a1 + 136) = v26;
  }

  *(a1 + 1696) = v12 + 23;
  *(a1 + 1712) = C3DMeshElementGetPrimitiveCount(v12);
  _C3DResourceManagerInstallRendererContext(*(a1 + 152), *(a1 + 136));
  __InstallFXContext(a1);
  if (v22)
  {
    v27 = v19;
  }

  else
  {
    v27 = 0;
  }

  if (v27 == 1)
  {
    _C3DResourceManagerUninstallRendererContext(v22, v15);
  }

  _setupRendererContextWithSceneOptions(a1);
  if (v12)
  {
    CFRelease(v12);
  }

  if (v19)
  {
    CFRelease(v15);
  }

  if (v22)
  {
    CFRelease(v22);
  }
}

uint64_t C3DEngineContextGetAuthoringEnvironment(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DEngineContextGetStats_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 144);
  if (result)
  {
    v13 = 1;
  }

  else
  {
    v13 = a2 == 0;
  }

  if (!v13)
  {
    result = C3DAuthoringEnvironmentCreate(a1);
    *(a1 + 144) = result;
  }

  return result;
}

void _setupRendererContextWithSceneOptions(uint64_t a1)
{
  Scene = C3DEngineContextGetScene(a1);
  RendererContextGL = C3DEngineContextGetRendererContextGL(a1);
  if (Scene)
  {
    v4 = RendererContextGL;
    if (RendererContextGL)
    {
      Attribute = C3DSceneGetAttribute(Scene, @"triggerOptionsForRealtimeViewer");
      if (!Attribute)
      {
        Attribute = *MEMORY[0x277CBED10];
      }

      if (CFEqual(Attribute, *MEMORY[0x277CBED28]))
      {
        v6 = COERCE_DOUBLE(vdup_n_s32(0x44800000u));

        C3DRendererContextSetMaxTextureSize(v4, v6);
      }
    }
  }
}

void C3DEngineContextSetGLContext(uint64_t a1, void *a2)
{
  if (!a1 && (v4 = scn_default_log(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    C3DEngineContextGetScene_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v12 = scn_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    C3DEngineContextSetGLContext_cold_2(v12, v13, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  v20 = *(a1 + 136);
  if (!v20 || *(v20 + 160) != a2)
  {
    __InstallGLContext(a1, a2);
  }
}

uint64_t C3DEngineContextGetGLContext(uint64_t a1)
{
  result = C3DEngineContextGetRendererContextGL(a1);
  if (result)
  {

    return C3DRendererContextGetGLContext(result);
  }

  return result;
}

uint64_t C3DEngineContextGetCoordinatesSystemOptions(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DEngineContextGetScene_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 214);
}

uint64_t C3DEngineContextSetCoordinatesSystemOptions(uint64_t result, __int16 a2, int a3)
{
  if (a3)
  {
    v3 = a2;
  }

  else
  {
    v3 = 0;
  }

  *(result + 214) = *(result + 214) & ~a2 | v3;
  return result;
}

void C3DEngineContextSetScene(uint64_t a1, const void *a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DEngineContextGetScene_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 16) != a2)
  {
    FXContext = C3DEngineContextGetFXContext(a1);
    if (*(a1 + 16))
    {
      C3DEngineContextSetPointOfView(a1, 0);
      if (FXContext)
      {
        C3DFXContextSceneWillChange(FXContext);
      }

      C3DAudioManagerRemoveEngineContext(a1);
      C3DSceneUnregisterEngineContext(*(a1 + 16), a1);
    }

    C3DProgramHashCodeStoreClear(*(a1 + 176));
    C3DSortSystemInvalidate(*(a1 + 184));
    v13 = *(a1 + 16);
    if (v13 != a2)
    {
      if (v13)
      {
        CFRelease(v13);
        *(a1 + 16) = 0;
      }

      if (a2)
      {
        v14 = CFRetain(a2);
      }

      else
      {
        v14 = 0;
      }

      *(a1 + 16) = v14;
    }

    if (a2)
    {
      C3DSceneRegisterEngineContext(a2, a1);
      if (FXContext)
      {
        C3DFXContextSceneDidChange(FXContext, a1);
      }

      C3DAudioManagerRemoveEngineContext(a1);
    }

    C3DEngineContextSetDefaultPointOfView(a1, 0);
    C3DAudioManagerUpdateEngineContext(a1);
  }
}

float C3DEngineContextSetPointOfView(uint64_t a1, float32x4_t *a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DEngineContextGetScene_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = C3DEngineContextSetDefaultPointOfView(a1, 0);
  if (a2)
  {
    Camera = C3DNodeGetCamera(a2);
    if (Camera)
    {
      *(Camera + 312) &= ~1u;
    }
  }

  v14 = *(a1 + 24);
  if (v14 != a2)
  {
    if (v14)
    {
      CFRelease(v14);
      *(a1 + 24) = 0;
    }

    if (a2)
    {
      v15 = CFRetain(a2);
    }

    else
    {
      v15 = 0;
    }

    *(a1 + 24) = v15;
  }

  if (a2)
  {
    v18.i32[2] = 0;
    v18.i64[0] = 0;
    WorldMatrix = C3DNodeGetWorldMatrix(a2);
    C3DMatrix4x4GetScale(WorldMatrix, &v18);
    v17 = vabsq_f32(v18);
    result = 1.0 / fmaxf(fmaxf(v17.f32[0], v17.f32[2]), v17.f32[1]);
    *(a1 + 200) = result;
  }

  return result;
}

float C3DEngineContextSetDefaultPointOfView(uint64_t a1, float32x4_t *cf)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DEngineContextGetScene_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v13 = *(a1 + 40);
  if (v13 != cf)
  {
    if (v13)
    {
      CFRelease(v13);
      *(a1 + 40) = 0;
    }

    if (cf)
    {
      v14 = CFRetain(cf);
    }

    else
    {
      v14 = 0;
    }

    *(a1 + 40) = v14;
  }

  if (cf)
  {
    v17.i32[2] = 0;
    v17.i64[0] = 0;
    WorldMatrix = C3DNodeGetWorldMatrix(cf);
    C3DMatrix4x4GetScale(WorldMatrix, &v17);
    v16 = vabsq_f32(v17);
    result = 1.0 / fmaxf(fmaxf(v16.f32[0], v16.f32[2]), v16.f32[1]);
    *(a1 + 200) = result;
  }

  return result;
}

void C3DEngineContextSetNextFrameTime(uint64_t a1, double a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DEngineContextGetScene_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = *(a1 + 424);
  if (v12 > a2)
  {
    v12 = a2;
  }

  *(a1 + 424) = v12;
}

void C3DEngineContextSetNextFrameTimeToAsap(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DEngineContextGetScene_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = *(a1 + 440);
  if (v10 >= *(a1 + 424))
  {
    v10 = *(a1 + 424);
  }

  *(a1 + 424) = v10;
}

double C3DEngineContextGetNextFrameTime(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DEngineContextGetScene_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 424);
}

uint64_t C3DEngineContextGetProgramHashCodeStore(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DEngineContextGetStats_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 176);
}

uint64_t C3DEngineContextGetSortSystem(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DEngineContextGetStats_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 184);
}

float C3DEngineContextGetPointOfViewScale(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DEngineContextGetScene_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 200);
}

uint64_t C3DEngineContextGetDefaultPointOfView(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DEngineContextGetScene_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 40);
}

float32x4_t *C3DEngineContextGetDefaultLightNode(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DEngineContextGetStats_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = *(a1 + 48);
  if (!v10)
  {
    v10 = C3DNodeCreate();
    v11 = C3DLightCreate();
    if (C3DWasLinkedBeforeMajorOSYear2016())
    {
      v12 = 2;
    }

    else
    {
      v12 = 1;
    }

    C3DLightSetType(v11, v12);
    C3DLightSetCategoryBitMask(v11, 0xDEFA017DEFA017);
    C3DNodeSetLight(v10, v11);
    CFRelease(v11);
    *(a1 + 48) = v10;
  }

  return v10;
}

BOOL C3DEngineContextGetAllowsDefaultLightingEnvironmentFallback(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DEngineContextGetStats_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  Scene = C3DEngineContextGetScene(a1);
  result = 1;
  if (!C3DSceneGetAllowsDefaultLightingEnvironmentFallback(Scene) || C3DWasLinkedBeforeMajorOSYear2018())
  {
    RenderingOptionForKey = C3DEngineContextGetRenderingOptionForKey(a1, @"defaultLight");
    if (!RenderingOptionForKey || !CFEqual(RenderingOptionForKey, *MEMORY[0x277CBED28]))
    {
      return 0;
    }
  }

  return result;
}

const __CFDictionary *C3DEngineContextGetRenderingOptionForKey(uint64_t a1, void *key)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DEngineContextGetScene_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 376);
  if (result)
  {
    return CFDictionaryGetValue(result, key);
  }

  return result;
}

uint64_t C3DEngineContextGetPointOfViewIfAny(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DEngineContextGetScene_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 24);
}

float32x4_t *C3DEngineContextGetPointOfView(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DEngineContextGetScene_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  DefaultPointOfView = *(a1 + 24);
  if (!DefaultPointOfView)
  {
    DefaultPointOfView = C3DEngineContextGetDefaultPointOfView(a1);
    if (!DefaultPointOfView)
    {
      Scene = C3DEngineContextGetScene(a1);
      if (Scene && (v12 = Scene, (RootNode = C3DSceneGetRootNode(Scene)) != 0))
      {
        v14 = C3DNodeCopyNodesWithAttribute(RootNode, @"kCameraKey", 1);
        v15 = v14;
        if (v14 && CFArrayGetCount(v14) >= 1)
        {
          DefaultPointOfView = CFArrayGetValueAtIndex(v15, 0);
          C3DEngineContextSetPointOfView(a1, DefaultPointOfView);
          if (!*(a1 + 24))
          {
            v16 = scn_default_log();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
            {
              C3DEngineContextGetPointOfView_cold_2(v16, v17, v18, v19, v20, v21, v22, v23);
            }
          }

LABEL_21:
          CFRelease(v15);
          return DefaultPointOfView;
        }

        RenderingOptionForKey = C3DEngineContextGetRenderingOptionForKey(a1, @"defaultCamera");
        if (RenderingOptionForKey && !CFEqual(RenderingOptionForKey, *MEMORY[0x277CBED28]))
        {
          DefaultPointOfView = 0;
        }

        else
        {
          DefaultPointOfView = C3DEngineContextGetDefaultPointOfView(a1);
          if (!DefaultPointOfView)
          {
            DefaultPointOfView = C3DCreateDefaultCameraNode(v12, 0);
            if (DefaultPointOfView)
            {
              C3DEngineContextSetDefaultPointOfView(a1, DefaultPointOfView);
              CFRelease(DefaultPointOfView);
            }
          }
        }

        if (v15)
        {
          goto LABEL_21;
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return DefaultPointOfView;
}

CFTypeRef C3DEngineContextSetPointOfCulling(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DEngineContextGetScene_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 32);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 32) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(a1 + 32) = result;
  }

  return result;
}

uint64_t C3DEngineContextGetPointOfCulling(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DEngineContextGetScene_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 32);
}

float32x4_t *C3DEngineContextGetPointOfViewForCulling(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DEngineContextGetScene_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  result = *(a1 + 32);
  if (!result)
  {
    return C3DEngineContextGetPointOfView(a1);
  }

  return result;
}

uint64_t C3DEngineContextGetUserInfo(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DEngineContextGetScene_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 128);
}

uint64_t C3DEngineContextGetStackAllocator(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DEngineContextGetStats_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 168);
}

const __CFDictionary *C3DEngineContextGetBooleanOptionForKey(uint64_t a1, void *key)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DEngineContextGetScene_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 376);
  if (result)
  {
    result = CFDictionaryGetValue(result, key);
    if (result)
    {
      return (CFEqual(result, *MEMORY[0x277CBED28]) != 0);
    }
  }

  return result;
}

uint64_t C3DEngineContextGetClearsOnDraw(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DEngineContextGetScene_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 210);
}

void C3DEngineContextSetForceShaderReload(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DEngineContextGetScene_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 208) = a2 != 0;
}

void C3DEngineContextSetAutoAdjustZRange(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DEngineContextGetScene_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 209) = a2 != 0;
}

uint64_t C3DEngineContextGetAutoAdjustZRange(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DEngineContextGetScene_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 209);
}

void C3DEngineContextSetupWithScene(const void *a1, const void *a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DEngineContextGetScene_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  C3DEngineContextSetScene(a1, a2);
  if (a2)
  {
    if (!C3DSceneGetRootNode(a2))
    {
      v12 = scn_default_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        _C3DAnimationManagerGetAnimationPerKeyDictionaryForObject_cold_2(v12, v13, v14, v15, v16, v17, v18, v19);
      }
    }

    C3DFXInvalidatePasses(a1);
    SharedInstance = C3DNotificationCenterGetSharedInstance();
    C3DNotificationCenterAddObserver(SharedInstance, a1, _C3DEngineContextInvalidatePasses, @"kC3DNotificationEngineContextInvalidatePasses", a2, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  else
  {
    v21 = C3DNotificationCenterGetSharedInstance();
    C3DNotificationCenterRemoveObserver(v21, a1, @"kC3DNotificationEngineContextInvalidatePasses", 0);
  }

  _setupRendererContextWithSceneOptions(a1);
}

void _C3DEngineContextInvalidatePasses(int a1, uint64_t a2, int a3, int a4, CFDictionaryRef theDict)
{
  if (!theDict)
  {
    goto LABEL_5;
  }

  Value = CFDictionaryGetValue(theDict, @"kCameraKey");
  PointOfView = C3DEngineContextGetPointOfView(a2);
  if (PointOfView)
  {
    PointOfView = C3DNodeGetCamera(PointOfView);
  }

  if (Value == PointOfView)
  {
LABEL_5:
    C3DFXInvalidatePasses(a2);
    v8 = *(a2 + 1728);

    C3DRenderGraphInvalidateTechniques(v8);
  }
}

uint64_t C3DEngineContextGetRendererContextProfile(uint64_t a1)
{
  if (*(a1 + 1704))
  {
    v2 = *(a1 + 1704);

    return [(SCNMTLRenderContext *)v2 profile];
  }

  else
  {
    RendererContextGL = C3DEngineContextGetRendererContextGL(a1);
    if (RendererContextGL)
    {

      return C3DRendererContextGetProfile(RendererContextGL);
    }

    else
    {
      return 1;
    }
  }
}

SCNCommonProfileProgramGenerator *C3DEngineContextGetCommonProfileProgramGenerator(uint64_t a1)
{
  result = *(a1 + 216);
  if (!result)
  {
    result = [SCNCommonProfileProgramGenerator generatorWithProfile:C3DEngineContextGetRendererContextProfile(a1) allowingHotReload:0];
    *(a1 + 216) = result;
  }

  return result;
}

uint64_t C3DEngineContextEvaluateProgramWithHashCode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  CommonProfileProgramGenerator = C3DEngineContextGetCommonProfileProgramGenerator(a1);

  return [(SCNCommonProfileProgramGenerator *)CommonProfileProgramGenerator programWithHashCode:a2 engineContext:a1 trackedResource:a3 introspectionDataPtr:a4];
}

void *C3DEngineContextCleanup(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DEngineContextGetStats_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  *(a1 + 216) = 0;
  C3DEngineContextSetPointOfView(a1, 0);
  result = C3DEngineContextGetRendererContextGL(a1);
  if (result)
  {
    result = C3DEngineContextGetFXContext(a1);
    if (result)
    {
      C3DFXContextCleanup(result, a1);
      return C3DEngineContextSetFXContext(a1, 0);
    }
  }

  return result;
}

CFTypeRef C3DEngineContextSetBackgroundTextureProxy(uint64_t a1, CFTypeRef cf)
{
  result = *(a1 + 192);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 192) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(a1 + 192) = result;
  }

  return result;
}

void C3DEngineContextDrawFullScreenQuad(uint64_t a1)
{
  RendererContextGL = C3DEngineContextGetRendererContextGL(a1);
  ResourceManager = C3DEngineContextGetResourceManager(a1);
  QuadMesh = C3DEngineContextGetQuadMesh(a1);
  C3DRendererContextSetEnable(RendererContextGL, 2, 0);
  C3DRendererContextSetEnable(RendererContextGL, 1, 0);
  C3DRendererContextBindMesh(RendererContextGL, ResourceManager, QuadMesh);
  ElementAtIndex = C3DMeshGetElementAtIndex(QuadMesh, 0, 1);
  C3DRendererContextBindMeshElement(RendererContextGL, ResourceManager, ElementAtIndex);
  C3DRendererContextRenderResidentMeshElement(RendererContextGL);
  C3DRendererContextSetEnable(RendererContextGL, 2, 1);

  C3DRendererContextSetEnable(RendererContextGL, 1, 1);
}

uint64_t C3DEngineContextSetMainClearColor(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 224) = a2;
  *(result + 232) = a3;
  return result;
}

__n128 C3DEngineContextGetViewBackgroundColor(uint64_t a1)
{
  v6 = *(a1 + 224);
  Scene = C3DEngineContextGetScene(a1);
  if (Scene && (BackgroundEffectSlot = C3DSceneGetBackgroundEffectSlot(Scene, 0)) != 0 && (ColorIfApplicable = C3DEffectSlotGetColorIfApplicable(BackgroundEffectSlot)) != 0)
  {
    v5 = vmulq_laneq_f32(*ColorIfApplicable, *ColorIfApplicable, 3);
    v5.i32[3] = HIDWORD(*ColorIfApplicable);
    result.n128_u64[0] = vaddq_f32(v5, vmulq_n_f32(v6, 1.0 - v5.f32[3])).u64[0];
  }

  else
  {
    return v6;
  }

  return result;
}

void C3DEngineContextSetupForWarmUp(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DEngineContextGetStats_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 461) = 1;
  *(a1 + 464) = a2;
}

void C3DEngineContextUnSetupForWarmUp(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DEngineContextGetStats_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  *(a1 + 461) = 0;
  *(a1 + 464) = 0;
}

void C3DEngineContextComputeNormalMatrix(float32x4_t *a1@<X0>, _OWORD *a2@<X8>)
{
  a2[2] = 0u;
  a2[3] = 0u;
  *a2 = 0u;
  a2[1] = 0u;
  memset(v3, 0, sizeof(v3));
  C3DMatrix4x4Mult(&a1[78], a1 + 54, v3);
  C3DMatrix4x4ComputeNormalMatrix(v3, a2);
}

void C3DEngineContextSetViewport(__n128 a1, __n128 *a2)
{
  a2[15] = a1;
  if (a2[8].n128_u64[1])
  {
    C3DRendererContextSetViewport(a1);
  }
}

__n128 C3DEngineContextGetViewportAtIndex(uint64_t a1, unsigned int a2)
{
  if (a2 >= 6)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DEngineContextGetViewportAtIndex_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  return *(a1 + 16 * a2 + 240);
}

__n128 C3DEngineContextSetViewportAtIndex(uint64_t a1, unsigned int a2, __n128 result)
{
  if (a2 >= 6)
  {
    v13 = result;
    v5 = scn_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      C3DEngineContextGetViewportAtIndex_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }

    result = v13;
    *(a1 + 16 * a2 + 240) = v13;
  }

  else
  {
    *(a1 + 16 * a2 + 240) = result;
    if (!a2 && *(a1 + 136))
    {

      C3DRendererContextSetViewport(result);
    }
  }

  return result;
}

const void *C3DEngineContextGetTextureWithName(uint64_t a1, __CFString *a2)
{
  if (*(a1 + 1704))
  {
    v3 = *(a1 + 1728);
    v4 = [(__CFString *)a2 UTF8String];

    return C3DRenderGraphGetTextureNamed(v3, v4);
  }

  else
  {
    FXContext = C3DEngineContextGetFXContext(a1);
    FramebufferRegistry = C3DFXContextGetFramebufferRegistry(FXContext);

    return C3DFramebufferRegistryGetTextureWithName(FramebufferRegistry, a2);
  }
}

void *C3DEngineContextGetTextureForEffectSlot(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  TextureSampler = C3DEffectSlotGetTextureSampler(a2);
  if (!TextureSampler)
  {
    TextureSampler = C3DTextureSamplerGetDefault();
  }

  *a3 = TextureSampler;
  v7 = a1[213];
  if (v7)
  {

    return [(SCNMTLRenderContext *)v7 textureForEffectSlot:a2];
  }

  else
  {
    ImageProxy = C3DEffectSlotGetImageProxy(a2);
    if (!ImageProxy || (result = C3DResourceManagerMakeImageProxyResident(a1[19], ImageProxy, *a3, a1[17], a1)) == 0)
    {
      result = C3DEffectSlotGetImage(a2);
      if (result)
      {
        v10 = result;
        v11 = a1[19];
        v12 = *a3;
        v13 = a1[17];

        return C3DResourceManagerMakeImageResident(v11, v10, v12, v13);
      }
    }
  }

  return result;
}

uint64_t C3DEngineContextInferTextureTypeForImageTypeAndTextureSampler(unsigned int a1)
{
  if (a1 > 7)
  {
    return 0;
  }

  else
  {
    return dword_21C2810F8[a1];
  }
}

uint64_t C3DEngineContextGetCommonProfileConditioners(uint64_t a1)
{
  if (*(a1 + 211))
  {
    v1 = 16;
  }

  else
  {
    v1 = 0;
  }

  v2 = *(a1 + 1704);
  if (v2)
  {
    return v1 | [(SCNMTLRenderContext *)v2 disableLinearRendering];
  }

  return v1;
}

uint64_t C3DEngineContextSetVertexAmplificationEnabled(uint64_t result, char a2)
{
  if ((*(result + 1713) & 0x20) != 0)
  {
    *(result + 372) = a2;
  }

  return result;
}

uint64_t C3DEngineContextGetPreferredMultiVertexOutputStreamGenerator(uint64_t a1)
{
  if (*(a1 + 372))
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

CFTypeRef C3DEngineContextSetRenderPassDescriptorForEye(uint64_t a1, CFTypeRef cf, unsigned int a3)
{
  v3 = a1 + 1648;
  result = *(a1 + 1648 + 8 * a3);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(v3 + 8 * a3) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(v3 + 8 * a3) = result;
  }

  return result;
}

unint64_t C3DEngineContextGetEyeMatrix4x4(uint64_t a1, int a2, unsigned int a3)
{
  if (a3 >= 6)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DEngineContextGetEyeMatrix4x4_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  return a1 + 384 * a2 + (a3 << 6) + 480;
}

__n128 C3DEngineContextSetEyeMatrix4x4(uint64_t a1, int a2, uint64_t a3, unsigned int a4)
{
  if (a4 >= 6)
  {
    v8 = scn_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      C3DEngineContextGetEyeMatrix4x4_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  result = *a3;
  v17 = *(a3 + 16);
  v18 = *(a3 + 48);
  v19 = a1 + 384 * a2 + (a4 << 6);
  *(v19 + 512) = *(a3 + 32);
  *(v19 + 528) = v18;
  *(v19 + 480) = result;
  *(v19 + 496) = v17;
  return result;
}

uint64_t C3DEngineContextRenderWithRenderGraph(uint64_t a1)
{
  v1 = *(a1 + 1728);
  C3DRenderGraphReset(v1);
  C3DLoadBuiltInPasses(v1);
  C3DRenderGraphSetup(v1);
  C3DRenderGraphCompile(v1);

  return C3DRenderGraphExecute(v1);
}

uint64_t C3DEngineContextSetJitteringEnabled(uint64_t result, int a2)
{
  v2 = *(result + 1716);
  if ((v2 & 1) != a2)
  {
    v3 = result;
    *(result + 1716) = v2 & 0xFE | a2;
    if (!*(result + 1704))
    {
      FXContext = C3DEngineContextGetFXContext(result);
      result = *(FXContext + 40);
      if (*(v3 + 1716))
      {
        if (result)
        {
          return result;
        }

        result = C3DFXTechniqueCreateJittering();
      }

      else
      {
        if (!result)
        {
          return result;
        }

        CFRelease(result);
        result = 0;
      }

      *(FXContext + 40) = result;
    }
  }

  return result;
}

void C3DEngineContextSetUpdateMainFramebuffer(uint64_t a1, int a2)
{
  *(a1 + 1724) = a2;
  if (!*(a1 + 1704))
  {
    FXContext = C3DEngineContextGetFXContext(a1);
    if (FXContext)
    {
      v4 = FXContext;
      v5 = *(FXContext + 40);
      if (v5)
      {
        PassCount = C3DFXTechniqueGetPassCount(v5);
        PassAtIndex = C3DFXTechniqueGetPassAtIndex(*(v4 + 40), PassCount - 1);
        if (PassAtIndex)
        {

          C3DFXPassSetUpdatesMainFrameBuffer(PassAtIndex, a2);
        }
      }
    }
  }
}

void C3DEngineContextComputeJitterMatrix(uint64_t a1@<X0>, int a2@<W1>, _OWORD *a3@<X8>)
{
  v6 = *(a1 + 248);
  v5 = *(a1 + 252);
  if (v6 <= 0.0 || v5 <= 0.0)
  {
    v7 = scn_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      C3DEngineContextComputeJitterMatrix_cold_1(v7, v8, v9, v10, v11, v12, v13, v14);
      if (a2)
      {
        goto LABEL_5;
      }

LABEL_30:
      v25 = 0.0;
      v24 = 0.0;
      goto LABEL_31;
    }
  }

  if (!a2)
  {
    goto LABEL_30;
  }

LABEL_5:
  v15 = ((sqrt(a2) + -1.0) * 0.5 + 1.0);
  if (a2 <= 0)
  {
    v16 = -(-a2 & 3);
  }

  else
  {
    v16 = a2 & 3;
  }

  v17 = 4;
  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v18 = v15 + 4;
      v17 = 4 - v15;
    }

    else
    {
      v18 = 4;
      if (v16 == 3)
      {
        v18 = 4 - v15 / 2;
        v17 = v15 + 4;
      }
    }
  }

  else if (v16)
  {
    v18 = 4;
    if (v16 == 1)
    {
      v17 = 4 - v15;
      v18 = 4 - v15;
    }
  }

  else
  {
    v18 = 4 - v15;
    v17 = 4 - v15 / 2;
  }

  v19 = 2 * v15;
  v20 = a2 - (v19 - 1) * (v19 - 1);
  v21 = v20 / 4;
  v22 = v15 + v20 / 8;
  v23 = v15 - ((v21 + 1) >> 1);
  if ((v21 & 1) == 0)
  {
    v23 = v22;
  }

  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v17 += v23;
    }

    else if (v16 == 3)
    {
      v18 += v19 + ~v23;
    }
  }

  else if (v16)
  {
    if (v16 == 1)
    {
      v18 += v23;
    }
  }

  else
  {
    v17 += v19 + ~v23;
  }

  v24 = vcvts_n_f32_s32((v18 + -4.0), 2uLL);
  v25 = vcvts_n_f32_s32((v17 + -4.0), 2uLL);
LABEL_31:
  *&v26 = -v24 / v6;
  *(&v26 + 1) = -v25 / v5;
  v27 = v26;
  *a3 = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  C3DMatrix4x4MakeTranslation(a3, &v27);
}

float32x2_t C3DEngineContextGetTAAJitter(float32x2_t *a1, int a2)
{
  RenderContext = C3DEngineContextGetRenderContext(a1);
  v5 = [(SCNMTLOpenSubdivComputeEvaluator *)RenderContext computeEvaluator]+ a2;
  v6 = v5 & 0xF;
  v8 = -v5;
  v7 = v8 < 0;
  v9 = v8 & 0xF;
  if (v7)
  {
    v10 = v6;
  }

  else
  {
    v10 = -v9;
  }

  v11 = a1[v10 + 217];
  if (a1[31].f32[0] <= 0.0 || a1[31].f32[1] <= 0.0)
  {
    v12 = scn_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      C3DEngineContextGetTAAJitter_cold_1(v12, v13, v14, v15, v16, v17, v18, v19);
    }
  }

  return vdiv_f32(v11, a1[31]);
}

C3D::RenderPass *C3D::OutlinePass::OutlinePass(C3D::OutlinePass *this, C3D::RenderGraph *a2, C3D::Pass *a3)
{
  result = C3D::RenderPass::RenderPass(this, a2, a3);
  *result = &unk_282DC38B0;
  return result;
}

void C3D::OutlinePass::setup(C3D::OutlinePass *this)
{
  C3D::Pass::setInputCount(this, 4u);
  C3D::Pass::setOutputCount(this, 1u);
  *(C3D::PassDescriptor::inputAtIndex((this + 32), 0) + 8) = "COLOR";
  C3D::Pass::parentColorDesc(this, &v20);
  v2 = C3D::PassDescriptor::inputAtIndex((this + 32), 0);
  *(v2 + 16) = v20;
  *(v2 + 32) = v21;
  v3 = C3D::PassDescriptor::inputAtIndex((this + 32), 0);
  *(v3 + 66) = *(v3 + 66) & 0xFFFC | 1;
  v4 = C3D::PassDescriptor::inputAtIndex((this + 32), 0);
  *(v4 + 66) |= 4u;
  *(C3D::PassDescriptor::inputAtIndex((this + 32), 1u) + 8) = "DEPTH";
  *(C3D::PassDescriptor::inputAtIndex((this + 32), 1u) + 64) = 2;
  C3D::Pass::parentDepthDesc(this, &v20);
  v5 = C3D::PassDescriptor::inputAtIndex((this + 32), 1u);
  *(v5 + 16) = v20;
  *(v5 + 32) = v21;
  v6 = C3D::PassDescriptor::inputAtIndex((this + 32), 1u);
  *(v6 + 66) = *(v6 + 66) & 0xFFFC | 1;
  v7 = C3D::PassDescriptor::inputAtIndex((this + 32), 1u);
  *(v7 + 66) |= 4u;
  *(C3D::PassDescriptor::outputAtIndex((this + 32), 0) + 8) = "COLOR_OUTLINE";
  *(C3D::PassDescriptor::outputAtIndex((this + 32), 0) + 65) = 0;
  v8 = *(this + 3);
  *&v20 = this;
  v9 = C3D::RenderGraph::createPass<C3D::PickedObjectPass,C3D::OutlinePass *>(v8, &v20);
  v10 = C3D::PassDescriptor::outputAtIndex((v9 + 32), 0);
  v11 = C3D::PassDescriptor::inputAtIndex((this + 32), 2u);
  *v11 = *v10;
  v12 = v10[4];
  v14 = v10[1];
  v13 = v10[2];
  v11[3] = v10[3];
  v11[4] = v12;
  v11[1] = v14;
  v11[2] = v13;
  v15 = C3D::PassDescriptor::outputAtIndex((v9 + 32), 1u);
  v16 = C3D::PassDescriptor::inputAtIndex((this + 32), 3u);
  *v16 = *v15;
  v17 = v15[4];
  v19 = v15[1];
  v18 = v15[2];
  v16[3] = v15[3];
  v16[4] = v17;
  v16[1] = v19;
  v16[2] = v18;
  C3D::Pass::addDependency(this, v9);
}

C3D::PickedObjectPass *C3D::RenderGraph::createPass<C3D::PickedObjectPass,C3D::OutlinePass *>(uint64_t a1, C3D::Pass **a2)
{
  Aligned = C3DScratchAllocatorAllocateAligned(*(a1 + 16), 5376, 16, 0);
  C3D::PickedObjectPass::PickedObjectPass(Aligned, a1, *a2);
  C3D::RenderGraph::addPass(a1, Aligned);
  if (*(a1 + 209) == 1)
  {
    (*(*Aligned + 8))(Aligned);
  }

  return Aligned;
}

uint64_t C3D::OutlinePass::compile(C3D::OutlinePass *this)
{
  v2 = (*(*this + 64))(this);
  result = C3D::RenderGraphResourceManager::get(*(*(this + 3) + 128), v2);
  *(this + 30) = result;
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t C3D::OutlinePass::execute(C3D::Pass *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = [C3D::SmartPtr<SCNMTLRenderPipeline * C3D:C3D::detail::NSReleaseFct>::operator SCNMTLRenderPipeline *(*(a1 + 30) + 16) :"state" detail:? :?NSRetainFct];
  if (*(v4 + 3376) != v5)
  {
    *(v4 + 3376) = v5;
    [*(v4 + 3392) setRenderPipelineState:v5];
  }

  v6 = *a2;
  v7 = C3D::Pass::inputTextureAtIndex(a1, 2u);
  SCNMTLRenderCommandEncoder::setFragmentTexture(v6, v7, 0);
  v8 = *a2;
  v9 = C3D::Pass::inputTextureAtIndex(a1, 0);
  SCNMTLRenderCommandEncoder::setFragmentTexture(v8, v9, 1uLL);
  v10 = *a2;
  v11 = C3D::Pass::inputTextureAtIndex(a1, 1u);
  SCNMTLRenderCommandEncoder::setFragmentTexture(v10, v11, 2uLL);
  v12 = *a2;
  v13 = C3D::Pass::inputTextureAtIndex(a1, 3u);
  SCNMTLRenderCommandEncoder::setFragmentTexture(v12, v13, 3uLL);
  v14 = *a2;

  return SCNMTLRenderCommandEncoder::drawFullScreenTriangle(v14);
}

void C3D::OutlinePassResource::~OutlinePassResource(C3D::OutlinePassResource *this)
{
  *this = &unk_282DC3920;
  v1 = *(this + 2);
  if (v1)
  {
  }
}

{
  *this = &unk_282DC3920;
  v1 = *(this + 2);
  if (v1)
  {
  }

  JUMPOUT(0x21CF07610);
}

__n128 __copy_helper_block_e16_32c14_ZTS9btVector3(__n128 *a1, __n128 *a2)
{
  result = a2[2];
  a1[2] = result;
  return result;
}

double btC3DDynamicCharacterController::setup(btC3DDynamicCharacterController *this, float a2, float a3, float a4)
{
  v32 = *MEMORY[0x277D85DE8];
  v29[0] = a3;
  v29[1] = a3;
  v5 = a2 * 0.5;
  LODWORD(v6) = 0;
  LODWORD(v7) = 0;
  *(&v7 + 1) = v5 - a3;
  *(&v6 + 1) = a3 - v5;
  v30 = v7;
  v31 = v6;
  *(this + 2) = v5;
  v8 = btAlignedAllocInternal(192, 16);
  btMultiSphereShape::btMultiSphereShape(v8, &v30, v29, 2);
  *(this + 2) = v8;
  v9 = btAlignedAllocInternal(224, 16);
  Identity = btTransform::getIdentity(v9);
  *v9 = &unk_282DC3A70;
  *(v9 + 16) = xmmword_21C27F910;
  *(v9 + 32) = xmmword_21C27F8C0;
  *(v9 + 48) = xmmword_21C27F600;
  *(v9 + 64) = xmmword_21C281140;
  *(v9 + 80) = *Identity;
  *(v9 + 96) = Identity[1];
  *(v9 + 112) = Identity[2];
  *(v9 + 128) = Identity[3];
  *(v9 + 144) = xmmword_21C27F910;
  *(v9 + 160) = xmmword_21C27F8C0;
  *(v9 + 176) = xmmword_21C27F600;
  *(v9 + 192) = xmmword_21C281140;
  *(v9 + 208) = 0;
  v11 = *(this + 2);
  v14 = 1065353216;
  v15 = v9;
  v20 = 0;
  v21 = v11;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = xmmword_21C281150;
  v26 = 1065353216;
  v27 = 0;
  v28 = xmmword_21C281160;
  v16 = xmmword_21C27F910;
  v17 = xmmword_21C27F8C0;
  v18 = xmmword_21C27F600;
  v19 = 0;
  v12 = btAlignedAllocInternal(704, 16);
  btRigidBody::btRigidBody(v12, &v14);
  *(this + 3) = v12;
  *(v12 + 524) = 0;
  result = 0.0;
  *(v12 + 624) = 0u;
  return result;
}

BOOL btC3DGhostIgnoreCharacterBody::needBroadphaseCollision(uint64_t a1, void *a2, uint64_t *a3)
{
  v3 = *(a1 + 8);
  v4 = *a3;
  return (*a2 != v3 || v4 != *(a1 + 16)) && (v4 != v3 || *a2 != *(a1 + 16)) && (a3[2] & a2[1]) != 0 && (a2[2] & a3[1]) != 0;
}

void btC3DDynamicCharacterController::~btC3DDynamicCharacterController(btC3DDynamicCharacterController *this)
{
  btC3DDynamicCharacterController::~btC3DDynamicCharacterController(this);

  JUMPOUT(0x21CF07610);
}

{
  *this = &unk_282DC39C0;
  v2 = *(this + 2);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    (*(*v3 + 16))(v3);
    *(this + 3) = 0;
  }
}

uint64_t btC3DDynamicCharacterController::updateAction(uint64_t a1, uint64_t a2, float a3)
{
  (*(*a1 + 64))(a1);
  v6 = *(*a1 + 72);
  v7.n128_f32[0] = a3;

  return v6(a1, a2, v7);
}

uint64_t btC3DDynamicCharacterController::preStep(float32x4_t *this, btCollisionWorld *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = &this[1].i64[1];
  (*(**(this[1].i64[1] + 536) + 16))(*(this[1].i64[1] + 536), &v23);
  v5 = 0;
  v6.i64[0] = 0x8000000080000000;
  v6.i64[1] = 0x8000000080000000;
  v7 = veorq_s8(v24, v6);
  v8 = vmulq_f32(v7, v7);
  v9 = vmulq_n_f32(v7, 1.0 / sqrtf(vadd_f32(vpadd_f32(*v8.i8, *v8.i8), *&vextq_s8(v8, v8, 8uLL)).f32[0]));
  v10 = vmulq_f32(v25, v25);
  v11 = vmulq_n_f32(v25, 1.0 / sqrtf(vadd_f32(vpadd_f32(*v10.i8, *v10.i8), *&vextq_s8(v10, v10, 8uLL)).f32[0]));
  v12 = v26;
  this[2] = v26;
  this[3] = v12;
  v13 = this + 2;
  v14 = v13[-2].f32[2];
  v15 = vdupq_n_s32(0x3F8CCCCDu);
  v16 = vmulq_f32(vmulq_n_f32(v9, v14), v15);
  v16.i32[3] = 0;
  v13[2] = vaddq_f32(v12, v16);
  v17 = vmulq_f32(vmulq_n_f32(v11, v14), v15);
  v17.i32[3] = 0;
  v13[3] = vaddq_f32(v12, v17);
  v18 = *v4;
  v29 = 0;
  v30 = xmmword_21C281170;
  v31 = 0;
  v32 = 0;
  v33 = 0u;
  v34 = 0u;
  v27 = &unk_282DC3A40;
  v35 = v18;
  v19 = 1;
  do
  {
    v20 = v19;
    *&v28 = 1.0;
    result = (*(*a2 + 64))(a2, &v13[v5], &v13[v5 + 2], &v27);
    v19 = 0;
    v22 = *&v28;
    if (!v29)
    {
      v22 = 1.0;
    }

    v13[4].f32[v5] = v22;
    v5 = 1;
  }

  while ((v20 & 1) != 0);
  return result;
}

void btC3DDynamicCharacterController::playerStep(btC3DDynamicCharacterController *this, btCollisionWorld *a2, float a3)
{
  (*(**(*(this + 3) + 536) + 16))(*(*(this + 3) + 536), &v14);
  v5 = __sincosf_stret(*(this + 36) * 0.5);
  v6 = v5.__sinval / sqrtf(vpadd_f32(0x3F80000000000000, 0x3F80000000000000).f32[0] + 0.0);
  v13.var0.var0[0] = v6 * 0.0;
  v13.var0.var0[1] = v6;
  v13.var0.var0[2] = v6 * 0.0;
  v13.var0.var0[3] = v5.__cosval;
  btMatrix3x3::setRotation(&v14.var0, &v13);
  v12 = *(*(this + 3) + 352);
  v7 = *(this + 38);
  if ((*(*this + 96))(this))
  {
    v8 = vmulq_f32(v12, vdupq_n_s32(0x3E4CCCCDu));
LABEL_5:
    *(*(this + 3) + 352) = v8;
    goto LABEL_6;
  }

  v9 = vmulq_f32(v12, v12);
  v10 = vadd_f32(*&vextq_s8(v9, v9, 8uLL), vpadd_f32(*v9.i8, *v9.i8));
  if (sqrtf(*v10.i32) < *(this + 37))
  {
    *v10.i32 = (v7 * a3) * 0.0;
    v11 = vdupq_lane_s32(v10, 0);
    v11.i32[3] = 0;
    v8 = vaddq_f32(v12, v11);
    goto LABEL_5;
  }

LABEL_6:
  (*(**(*(this + 3) + 536) + 24))(*(*(this + 3) + 536), &v14);
  btRigidBody::setCenterOfMassTransform(*(this + 3), &v14);
}

uint64_t btCollisionWorld::RayResultCallback::needsCollision(void *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = (a1[4] & v2) != 0 && (*(a2 + 16) & a1[3]) != 0;
  return (a1[5] & v2) != 0 || v3;
}

float btC3DDynamicCharacterController::preStep(btCollisionWorld *)::ClosestNotMe::addSingleResult(float32x4_t *a1, uint64_t a2, int a3)
{
  v3 = *a2;
  if (*a2 == a1[8].i64[0])
  {
    return 1.0;
  }

  a1->i32[2] = *(a2 + 32);
  a1[1].i64[0] = v3;
  v4 = *(a2 + 16);
  if (!a3)
  {
    v6 = vmulq_f32(v3[1], v4);
    v7 = vmulq_f32(v4, v3[2]);
    v8 = vmulq_f32(v4, v3[3]);
    v8.i32[3] = 0;
    *v4.f32 = vadd_f32(vpadd_f32(*v6.i8, *v7.i8), vzip1_s32(*&vextq_s8(v6, v6, 8uLL), *&vextq_s8(v7, v7, 8uLL)));
    *&v4.u32[2] = vpadd_f32(vpadd_f32(*v8.i8, *&vextq_s8(v8, v8, 8uLL)), 0);
  }

  a1[6] = v4;
  a1[7] = vaddq_f32(a1[4], vmulq_n_f32(vsubq_f32(a1[5], a1[4]), *(a2 + 32)));
  return *(a2 + 32);
}

float btMatrix3x3::setRotation(btMatrix3x3 *this, float32x4_t *a2)
{
  v2 = vmulq_f32(*a2, *a2);
  v2.i64[0] = vpaddq_f32(v2, v2).u64[0];
  v2.f32[0] = 2.0 / vpadd_f32(*v2.f32, *v2.f32).f32[0];
  v3 = v2.f32[0] * COERCE_FLOAT(*a2);
  v4 = vmuls_lane_f32(v2.f32[0], *a2->f32, 1);
  v2.f32[0] = vmuls_lane_f32(v2.f32[0], *a2, 2);
  v5 = vmuls_lane_f32(v3, *a2, 3);
  v6 = vmuls_lane_f32(v4, *a2, 3);
  v7 = vmuls_lane_f32(v2.f32[0], *a2, 3);
  v8 = v3 * COERCE_FLOAT(*a2);
  v9 = v4 * COERCE_FLOAT(*a2);
  v10 = v2.f32[0] * COERCE_FLOAT(*a2);
  v11 = vmuls_lane_f32(v4, *a2->f32, 1);
  v12 = vmuls_lane_f32(v2.f32[0], *a2->f32, 1);
  v13 = vmuls_lane_f32(v2.f32[0], *a2, 2);
  this->var0[0].var0.var0[0] = 1.0 - (v11 + v13);
  this->var0[0].var0.var0[1] = v9 - v7;
  this->var0[0].var0.var0[2] = v10 + v6;
  this->var0[0].var0.var0[3] = 0.0;
  this->var0[1].var0.var0[0] = v9 + v7;
  this->var0[1].var0.var0[1] = 1.0 - (v8 + v13);
  this->var0[1].var0.var0[2] = v12 - v5;
  this->var0[1].var0.var0[3] = 0.0;
  this->var0[2].var0.var0[0] = v10 - v6;
  this->var0[2].var0.var0[1] = v12 + v5;
  result = 1.0 - (v8 + v11);
  *&this->var0[2].var0.var0[2] = LODWORD(result);
  return result;
}

__int128 *btTransform::getIdentity(btTransform *this)
{
  {
    if (v2)
    {
      Identity = btMatrix3x3::getIdentity(v2);
      v4 = Identity[1];
      btTransform::getIdentity(void)::identityTransform = *Identity;
      *algn_27CDD6750 = v4;
      xmmword_27CDD6760 = Identity[2];
      qword_27CDD6770 = 0;
      unk_27CDD6778 = 0;
    }
  }

  return &btTransform::getIdentity(void)::identityTransform;
}

__int128 *btMatrix3x3::getIdentity(btMatrix3x3 *this)
{
  {
    btMatrix3x3::getIdentity();
  }

  return &btMatrix3x3::getIdentity(void)::identityMatrix;
}

float32x4_t btDefaultMotionState::getWorldTransform(btDefaultMotionState *this, btTransform *a2)
{
  v3 = *(this + 5);
  v2 = *(this + 6);
  v4 = *(this + 7);
  v6 = *(this + 1);
  v5 = *(this + 2);
  v7 = *(this + 3);
  v8 = *(this + 4);
  v9 = vtrn1q_s32(v3, v2);
  v10.i64[0] = vextq_s8(v9, v9, 8uLL).u64[0];
  v10.i64[1] = vextq_s8(v4, v4, 8uLL).u32[0];
  v11.i64[0] = 0x8000000080000000;
  v11.i64[1] = 0x8000000080000000;
  v12 = veorq_s8(*(this + 8), v11);
  v13 = vmulq_f32(v10, v12);
  v13.i32[3] = 0;
  v7.i32[3] = 0;
  v5.i32[3] = 0;
  v6.i32[3] = 0;
  v14 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v6, v3, 2), v5, v2, 2), v7, v4, 2);
  v9.i64[1] = v4.u32[0];
  v15 = vmulq_f32(v9, v12);
  *v16.f32 = vzip2_s32(*v3.f32, *v2.f32);
  *&v16.u32[2] = vzip2_s32(*v4.f32, 0);
  v17 = vmulq_f32(v16, v12);
  *v17.f32 = vadd_f32(vzip1_s32(*&vextq_s8(v15, v15, 8uLL), *&vextq_s8(v17, v17, 8uLL)), vpadd_f32(*v15.i8, *v17.f32));
  v18 = vmulq_f32(v10, v8);
  v18.i32[3] = 0;
  v19 = vmulq_f32(v9, v8);
  v20 = vmulq_f32(v16, v8);
  *v20.f32 = vadd_f32(vzip1_s32(*&vextq_s8(v19, v19, 8uLL), *&vextq_s8(v20, v20, 8uLL)), vpadd_f32(*v19.i8, *v20.f32));
  *&v20.u32[2] = vpadd_f32(vpadd_f32(*v18.i8, *&vextq_s8(v18, v18, 8uLL)), 0);
  *&v17.u32[2] = vpadd_f32(vpadd_f32(*v13.i8, *&vextq_s8(v13, v13, 8uLL)), 0);
  a2->var0.var0[0] = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v6, v3.f32[0]), v5, v2.f32[0]), v7, v4.f32[0]);
  a2->var0.var0[1] = vmlaq_lane_f32(vmlaq_lane_f32(vmulq_lane_f32(v6, *v3.f32, 1), v5, *v2.f32, 1), v7, *v4.f32, 1);
  result = vaddq_f32(v17, v20);
  a2->var0.var0[2] = v14;
  a2->var1 = result;
  return result;
}

__n128 btDefaultMotionState::setWorldTransform(float32x4_t *this, const btTransform *a2)
{
  result = a2->var0.var0[0];
  v3 = a2->var0.var0[1];
  v4 = this[5];
  v5 = this[6];
  v6 = this[7];
  v7 = this[8];
  v8 = a2->var0.var0[2];
  v9 = vmulq_f32(a2->var0.var0[0], v7);
  v10 = vmulq_f32(v3, v7);
  *v9.f32 = vadd_f32(vzip1_s32(*&vextq_s8(v9, v9, 8uLL), *&vextq_s8(v10, v10, 8uLL)), vpadd_f32(*v9.f32, *v10.i8));
  v11 = vmulq_f32(v8, v7);
  v11.i32[3] = 0;
  *&v9.u32[2] = vpadd_f32(vpadd_f32(*v11.i8, *&vextq_s8(v11, v11, 8uLL)), 0);
  v6.i32[3] = 0;
  v12 = vaddq_f32(a2->var1, v9);
  v5.i32[3] = 0;
  v4.i32[3] = 0;
  this[1] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v4, COERCE_FLOAT(*a2->var0.var0)), v5, *a2->var0.var0[0].var0.var0, 1), v6, a2->var0.var0[0], 2);
  this[2] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v4, v3.f32[0]), v5, *v3.f32, 1), v6, v3, 2);
  this[3] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v4, v8.f32[0]), v5, *v8.f32, 1), v6, v8, 2);
  this[4] = v12;
  return result;
}

void *C3DEngineStatsEndFrameAndCopy(int *a1, uint64_t a2, uint64_t a3)
{
  v5 = 0.0;
  v6 = 1.17549435e-38;
  v7 = 3.40282347e38;
  for (i = 88; i != 208; i += 2)
  {
    v9 = *&a1[i];
    if (v7 >= v9)
    {
      v7 = *&a1[i];
    }

    if (v6 < v9)
    {
      v6 = *&a1[i];
    }

    v5 = v5 + v9;
  }

  *(a1 + 42) = v7;
  *(a1 + 43) = v6;
  *(a1 + 41) = v5 / 60.0;
  v47 = a1[2];
  v48 = a1[1];
  v10 = a1[4];
  v11 = a1[6];
  v46 = a1[5];
  v12 = a1[7];
  v50 = *a1;
  v51 = a1[8];
  v13 = a1[9];
  v14 = a1[10];
  v15 = a1[11];
  v16 = a1[12];
  v49 = a1[13];
  v52 = a1[3];
  v53 = a1[14];
  v17 = *(a1 + 15);
  v18 = *(a1 + 19);
  v65 = a1[23];
  v63 = v17;
  v64 = v18;
  v43 = *(a1 + 7);
  v44 = *(a1 + 6);
  v45 = *(a1 + 9);
  v40 = *(a1 + 10);
  v41 = *(a1 + 11);
  v42 = *(a1 + 8);
  v19 = *(a1 + 24);
  v20 = *(a1 + 50);
  v21 = *(a1 + 54);
  v22 = *(a1 + 62);
  v57 = *(a1 + 58);
  v58 = v22;
  v55 = v20;
  v56 = v21;
  v23 = *(a1 + 66);
  v24 = *(a1 + 70);
  v25 = *(a1 + 74);
  v62 = *(a1 + 39);
  v60 = v24;
  v61 = v25;
  v59 = v23;
  result = memcpy(__dst, a1 + 80, sizeof(__dst));
  if (v10 <= 1)
  {
    v27 = 1;
  }

  else
  {
    v27 = v10;
  }

  if (a2)
  {
    v62 = *(a2 + 312);
    v28 = *(a2 + 232);
    v56 = *(a2 + 216);
    v57 = v28;
    v29 = *(a2 + 264);
    v30 = *(a2 + 280);
    v58 = *(a2 + 248);
    v59 = v29;
    v31 = *(a2 + 296);
    v60 = v30;
    v61 = v31;
  }

  if (a3)
  {
    v32 = vdupq_lane_s64(COERCE__INT64(v27), 0);
    v33 = v63;
    *(a3 + 76) = v64;
    *a3 = v50 / v27;
    *(a3 + 4) = v48 / v27;
    *(a3 + 8) = v47 / v27;
    *(a3 + 12) = v52;
    *(a3 + 16) = v10;
    *(a3 + 20) = v46 / v27;
    *(a3 + 24) = v11 / v27;
    *(a3 + 28) = v12 / v27;
    *(a3 + 32) = v51;
    *(a3 + 36) = v13 / v27;
    *(a3 + 40) = v14 / v27;
    *(a3 + 44) = v15 / v27;
    *(a3 + 48) = v16 / v27;
    *(a3 + 52) = v49 / v27;
    *(a3 + 56) = v53 / v27;
    *(a3 + 92) = v65;
    *(a3 + 60) = v33;
    *(a3 + 96) = vdivq_f64(v44, v32);
    *(a3 + 112) = vdivq_f64(v43, v32);
    *(a3 + 128) = vdivq_f64(v42, v32);
    *(a3 + 144) = vdivq_f64(v45, v32);
    *(a3 + 160) = vdivq_f64(v40, v32);
    *(a3 + 176) = vdivq_f64(v41, v32);
    *(a3 + 192) = v19 / v27;
    v34 = v55;
    v35 = v56;
    v36 = v57;
    *(a3 + 248) = v58;
    *(a3 + 232) = v36;
    *(a3 + 216) = v35;
    *(a3 + 200) = v34;
    v37 = v59;
    v38 = v60;
    v39 = v61;
    *(a3 + 312) = v62;
    *(a3 + 280) = v38;
    *(a3 + 296) = v39;
    *(a3 + 264) = v37;
    return memcpy((a3 + 320), __dst, 0x218uLL);
  }

  return result;
}

double C3DEngineStatsResetResourceStats(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DEngineStatsResetResourceStats_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  result = 0.0;
  *(a1 + 216) = 0u;
  v11 = (a1 + 216);
  v11[5] = 0u;
  v11[6] = 0u;
  v11[3] = 0u;
  v11[4] = 0u;
  v11[1] = 0u;
  v11[2] = 0u;
  return result;
}

void C3DEngineStatsMergeResourceStats(uint64_t a1, uint64_t a2)
{
  if (!a1 || !a2)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DEngineStatsMergeResourceStats_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = 216;
  do
  {
    *(a2 + v12) += *(a1 + v12);
    v13 = v12 >= 0x144;
    v12 += 4;
  }

  while (!v13);
}

void C3DEngineStatsReset(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DEngineStatsResetResourceStats_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
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
  *a1 = 0u;
  *(a1 + 840) = CACurrentMediaTime();
}

CFTimeInterval C3DEngineStatsFinish(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DEngineStatsResetResourceStats_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  result = CACurrentMediaTime();
  v11 = result - *(a1 + 848);
  *(a1 + 96) = result - *(a1 + 840);
  *(a1 + 848) = result;
  v12 = *(a1 + 832);
  *(a1 + 8 * v12 + 352) = v11;
  *(a1 + 832) = (v12 + 1) % 0x3Cu;
  ++*(a1 + 16);
  return result;
}

void C3D::DownSampleBloomCoCPass::DownSampleBloomCoCPass(C3D::ComputePass *a1, C3D::RenderGraph *a2, C3D::Pass *a3, uint64_t a4)
{
  C3D::ComputePass::ComputePass(a1, a2, a3);
  *v5 = &unk_282DC3AA0;
  v5[14] = a4;
}

double C3D::DownSampleBloomCoCPass::setup(C3D::DownSampleBloomCoCPass *this)
{
  C3D::Pass::setInputCount(this, 3u);
  C3D::Pass::setOutputCount(this, *(*(this + 14) + 12) + *(*(this + 14) + 10));
  *(C3D::PassDescriptor::inputAtIndex((this + 32), 0) + 64) = 2;
  *(C3D::PassDescriptor::inputAtIndex((this + 32), 1u) + 8) = "COLOR";
  *(C3D::PassDescriptor::inputAtIndex((this + 32), 2u) + 8) = "AverageLuminance";
  v2 = (*(*this + 88))(this);
  v4 = *(this + 14);
  if (*(v4 + 10) == 1)
  {
    v5 = C3D::PassDescriptor::outputAtIndex((this + 32), 0);
    *(v5 + 16) = fmax(((*(v2 + 8) * 0.5) / **(this + 14)), 1.0);
    result = fmax(((*(v2 + 12) * 0.5) / **(this + 14)), 1.0);
    *(v5 + 18) = result;
    *(v5 + 30) = *(*(this + 14) + 24);
    *(v5 + 28) = 115;
    *(v5 + 8) = "Bloom";
    v4 = *(this + 14);
  }

  if (*(v4 + 12) == 1)
  {
    v6 = C3D::PassDescriptor::outputAtIndex((this + 32), *(v4 + 10));
    *(v6 + 16) = fmax(((*(v2 + 8) * 0.5) / **(this + 14)), 1.0);
    result = fmax(((*(v2 + 12) * 0.5) / **(this + 14)), 1.0);
    *(v6 + 18) = result;
    *(v6 + 28) = 115;
    *(v6 + 8) = "DofColorCoC";
  }

  return result;
}

uint64_t C3D::DownSampleBloomCoCPass::compile(C3D::DownSampleBloomCoCPass *this)
{
  RenderContext = C3DEngineContextGetRenderContext(*(this + 2));
  [(SCNMTLRenderContext *)RenderContext resourceManager];
  v3 = (*(*this + 64))(this);
  result = C3D::RenderGraphResourceManager::get(*(*(this + 3) + 128), v3);
  *(this + 15) = result;
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t C3D::DownSampleBloomCoCPass::execute(uint64_t *a1, uint64_t a2)
{
  v3 = *a2;
  ViewportAtIndex = C3DEngineContextGetViewportAtIndex(a1[2], *(a2 + 8));
  v25 = xmmword_21C281190;
  if (C3DEngineContextGetEyeCount(a1[2]) >= 2)
  {
    v24 = vextq_s8(ViewportAtIndex, ViewportAtIndex, 8uLL);
    v22 = vextq_s8(v24, v24, 8uLL).u64[0];
    v26.val[0] = vdiv_f32(vzip1_s32(*v24.i8, v22), vdup_laneq_s32(*(*(*a1 + 88))(a1), 2));
    v26.val[1] = vdiv_f32(vzip2_s32(*v24.i8, v22), vdup_laneq_s32(*(*(*a1 + 88))(a1), 3));
    v4 = &v25;
    vst2_f32(v4, v26);
  }

  v5 = C3D::Pass::inputTextureAtIndex(a1, 0);
  if (v3->_textures[0] != v5)
  {
    v3->_textures[0] = v5;
    v3->_texturesToBind[0] |= 1uLL;
  }

  v6 = C3D::Pass::inputTextureAtIndex(a1, 1u);
  if (v3->_textures[1] != v6)
  {
    v3->_textures[1] = v6;
    v3->_texturesToBind[0] |= 2uLL;
  }

  v7 = a1[14];
  if (*(v7 + 12) == 1)
  {
    v8 = C3D::Pass::outputTextureAtIndex(a1, *(v7 + 10));
    if (v3->_textures[2] != v8)
    {
      v3->_textures[2] = v8;
      v3->_texturesToBind[0] |= 4uLL;
    }
  }

  if (*(a1[14] + 10) == 1)
  {
    v9 = C3D::Pass::outputTextureAtIndex(a1, 0);
    if (v3->_textures[3] != v9)
    {
      v3->_textures[3] = v9;
      v3->_texturesToBind[0] |= 8uLL;
    }
  }

  v10 = a1[14];
  v12 = v10[5];
  v11 = v10[6];
  if (v3->_buffers[0] == v12)
  {
    if (v3->_offsets[0] == v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v3->_buffers[0] = v12;
    v10 = a1[14];
  }

  v3->_offsets[0] = v11;
  v3->_buffersToBind[0] |= 1uLL;
LABEL_17:
  v13 = v10[7];
  if (v3->_buffers[1] == v13)
  {
    if (!v3->_offsets[1])
    {
      goto LABEL_21;
    }
  }

  else
  {
    v3->_buffers[1] = v13;
  }

  v3->_offsets[1] = 0;
  v3->_buffersToBind[0] |= 2uLL;
LABEL_21:
  SCNMTLComputeCommandEncoder::setBytes(v3, &v25, 0x10uLL, 2uLL);
  v14 = a1[14];
  v15 = ((*v14 + -1.0) * 3.0);
  if (*(v14 + 10) == 1)
  {
    v16 = *(v14 + 12);
    v17 = C3D::Pass::outputTextureAtIndex(a1, 0);
    if (v16 == 1)
    {
      v18 = a1[15] + 16 + 8 * v15 + 16;
    }

    else
    {
      v18 = a1[15] + 16 + 8 * v15;
    }
  }

  else
  {
    v17 = C3D::Pass::outputTextureAtIndex(a1, 0);
    v18 = a1[15] + 8 * v15 + 24;
  }

  v19 = C3D::SmartPtr<SCNMTLComputePipeline *,C3D::detail::NSRetainFct,C3D::detail::NSReleaseFct>::operator SCNMTLComputePipeline *(v18);
  v20 = [(SCNMTLOpenSubdivComputeEvaluator *)v19 computeEvaluator];
  return SCNMTLComputeCommandEncoder::dispatchOnTexture2D(v3, v17, v20);
}

void C3D::DownSampleBloomCoCPassResource::~DownSampleBloomCoCPassResource(C3D::DownSampleBloomCoCPassResource *this)
{
  *this = &unk_282DC3B10;
  for (i = 56; i != 8; i -= 8)
  {
    v3 = *(this + i);
    if (v3)
    {
    }
  }
}

{
  *this = &unk_282DC3B10;
  v2 = 56;
  while (1)
  {
    v3 = *(this + v2);
    if (v3)
    {
    }

    v2 -= 8;
    if (v2 == 8)
    {

      JUMPOUT(0x21CF07610);
    }
  }
}

uint64_t _fillInfoFromFormat(uint64_t a1, uint64_t a2, int a3, int a4, int a5)
{
  if (a4 != a3)
  {
    v5 = 0;
    *(a1 + 24) = a4;
    *(a1 + 28) = a5;
    *(a1 + 7) = 257;
    *(a1 + 9) = 1;
    if (a4 <= 36758)
    {
      if (a4 > 35414)
      {
        if (a4 <= 36193)
        {
          if (a4 <= 35900)
          {
            if (a4 <= 35841)
            {
              if (a4 != 35415)
              {
                if (a4 != 35840)
                {
                  if (a4 != 35841)
                  {
                    return v5;
                  }

                  goto LABEL_107;
                }

LABEL_110:
                v20 = 1;
LABEL_115:
                *a1 = v20;
                v14 = 67109696;
                goto LABEL_118;
              }

              goto LABEL_112;
            }

            if (a4 == 35842)
            {
LABEL_112:
              v9 = 1;
              goto LABEL_113;
            }

            if (a4 != 35843)
            {
              if (a4 != 35898)
              {
                return v5;
              }

              goto LABEL_69;
            }

LABEL_106:
            *a1 = 1;
            v14 = 134284352;
LABEL_118:
            *(a1 + 4) = v14;
            v10 = 4;
            goto LABEL_119;
          }

          if (a4 <= 35917)
          {
            if (a4 == 35901)
            {
LABEL_69:
              *(a1 + 6) = 1;
              v13 = 800;
              goto LABEL_176;
            }

            if (a4 != 35907)
            {
              v12 = 35917;
LABEL_54:
              if (a4 != v12)
              {
                return v5;
              }

              v9 = 3;
              goto LABEL_113;
            }

            *(a1 + 6) = 1;
            *(a1 + 4) = 1056;
            v21 = a3 == 32993;
            LODWORD(v5) = 71;
            v22 = 81;
LABEL_198:
            if (v21)
            {
              LODWORD(v5) = v22;
            }

            goto LABEL_263;
          }

          v15 = -35918;
          goto LABEL_82;
        }

        if (a4 <= 36491)
        {
          if ((a4 - 36283) < 2)
          {
            v10 = 4;
            *a1 = 4;
            v11 = 67109184;
          }

          else
          {
            if ((a4 - 36285) >= 2)
            {
              if (a4 != 36194)
              {
                return v5;
              }

              *(a1 + 6) = 0;
              *(a1 + 4) = 784;
              goto LABEL_189;
            }

            v10 = 4;
            *a1 = 4;
            v11 = 67109504;
          }

          goto LABEL_109;
        }

        if (a4 <= 36755)
        {
          if ((a4 - 36492) < 2)
          {
            v10 = 4;
            *a1 = 4;
            v11 = 67175552;
          }

          else
          {
            if ((a4 - 36494) >= 2)
            {
              return v5;
            }

            v10 = 4;
            *a1 = 4;
            v11 = 67109760;
          }

LABEL_109:
          *(a1 + 4) = v11;
LABEL_119:
          *(a1 + 8) = v10;
LABEL_120:
          v5 = 1;
          if (a4 > 36756)
          {
            if (a4 <= 37495)
            {
              if (a4 > 37488)
              {
                if (a4 <= 37491)
                {
                  if (a4 == 37489)
                  {
                    LODWORD(v5) = 172;
                  }

                  else if (a4 == 37490)
                  {
                    LODWORD(v5) = 174;
                  }

                  else
                  {
                    LODWORD(v5) = 176;
                  }
                }

                else if (a4 > 37493)
                {
                  if (a4 == 37494)
                  {
                    LODWORD(v5) = 182;
                  }

                  else
                  {
                    LODWORD(v5) = 183;
                  }
                }

                else if (a4 == 37492)
                {
                  LODWORD(v5) = 180;
                }

                else
                {
                  LODWORD(v5) = 181;
                }
              }

              else if (a4 <= 36760)
              {
                if (a4 == 36757)
                {
                  LODWORD(v5) = 32;
                }

                else
                {
                  if (a4 != 36760)
                  {
                    return v5;
                  }

                  LODWORD(v5) = 22;
                }
              }

              else if (a4 > 36974)
              {
                if (a4 == 36975)
                {
                  LODWORD(v5) = 91;
                }

                else
                {
                  if (a4 != 37488)
                  {
                    return v5;
                  }

                  LODWORD(v5) = 170;
                }
              }

              else if (a4 == 36761)
              {
                LODWORD(v5) = 62;
              }

              else
              {
                if (a4 != 36763)
                {
                  return v5;
                }

                LODWORD(v5) = 112;
              }
            }

            else
            {
              switch(a4)
              {
                case 37808:
                  LODWORD(v5) = 204;
                  goto LABEL_263;
                case 37809:
                  LODWORD(v5) = 205;
                  goto LABEL_263;
                case 37810:
                  LODWORD(v5) = 206;
                  goto LABEL_263;
                case 37811:
                  LODWORD(v5) = 207;
                  goto LABEL_263;
                case 37812:
                  LODWORD(v5) = 208;
                  goto LABEL_263;
                case 37813:
                  LODWORD(v5) = 210;
                  goto LABEL_263;
                case 37814:
                  LODWORD(v5) = 211;
                  goto LABEL_263;
                case 37815:
                  LODWORD(v5) = 212;
                  goto LABEL_263;
                case 37816:
                  LODWORD(v5) = 213;
                  goto LABEL_263;
                case 37817:
                  LODWORD(v5) = 214;
                  goto LABEL_263;
                case 37818:
                  LODWORD(v5) = 215;
                  goto LABEL_263;
                case 37819:
                  LODWORD(v5) = 216;
                  goto LABEL_263;
                case 37820:
                  LODWORD(v5) = 217;
                  goto LABEL_263;
                case 37821:
                  LODWORD(v5) = 218;
                  goto LABEL_263;
                case 37822:
                case 37823:
                case 37824:
                case 37825:
                case 37826:
                case 37827:
                case 37828:
                case 37829:
                case 37830:
                case 37831:
                case 37832:
                case 37833:
                case 37834:
                case 37835:
                case 37836:
                case 37837:
                case 37838:
                case 37839:
                  return v5;
                case 37840:
                  LODWORD(v5) = 186;
                  goto LABEL_263;
                case 37841:
                  LODWORD(v5) = 187;
                  goto LABEL_263;
                case 37842:
                  LODWORD(v5) = 188;
                  goto LABEL_263;
                case 37843:
                  LODWORD(v5) = 189;
                  goto LABEL_263;
                case 37844:
                  LODWORD(v5) = 190;
                  goto LABEL_263;
                case 37845:
                  LODWORD(v5) = 192;
                  goto LABEL_263;
                case 37846:
                  LODWORD(v5) = 193;
                  goto LABEL_263;
                case 37847:
                  LODWORD(v5) = 194;
                  goto LABEL_263;
                case 37848:
                  LODWORD(v5) = 195;
                  goto LABEL_263;
                case 37849:
                  LODWORD(v5) = 196;
                  goto LABEL_263;
                case 37850:
                  LODWORD(v5) = 197;
                  goto LABEL_263;
                case 37851:
                  LODWORD(v5) = 198;
                  goto LABEL_263;
                case 37852:
                  LODWORD(v5) = 199;
                  goto LABEL_263;
                case 37853:
                  LODWORD(v5) = 200;
                  goto LABEL_263;
                default:
                  if (a4 == 37496)
                  {
                    LODWORD(v5) = 178;
                  }

                  else
                  {
                    if (a4 != 37497)
                    {
                      return v5;
                    }

                    LODWORD(v5) = 179;
                  }

                  break;
              }
            }

            goto LABEL_263;
          }

          if (a4 <= 34835)
          {
            v5 = 25;
            switch(a4)
            {
              case 33321:
                LODWORD(v5) = 10;
                goto LABEL_263;
              case 33322:
                LODWORD(v5) = 20;
                goto LABEL_263;
              case 33323:
                LODWORD(v5) = 30;
                goto LABEL_263;
              case 33324:
                LODWORD(v5) = 60;
                goto LABEL_263;
              case 33325:
                goto LABEL_263;
              case 33326:
                goto LABEL_174;
              case 33327:
                goto LABEL_195;
              case 33328:
                goto LABEL_193;
              case 33329:
                LODWORD(v5) = 14;
                goto LABEL_263;
              case 33330:
                LODWORD(v5) = 13;
                goto LABEL_263;
              case 33331:
                LODWORD(v5) = 24;
                goto LABEL_263;
              case 33332:
                LODWORD(v5) = 23;
                goto LABEL_263;
              case 33333:
                LODWORD(v5) = 54;
                goto LABEL_263;
              case 33334:
                LODWORD(v5) = 53;
                goto LABEL_263;
              case 33335:
                LODWORD(v5) = 34;
                goto LABEL_263;
              case 33336:
                LODWORD(v5) = 33;
                goto LABEL_263;
              case 33337:
                LODWORD(v5) = 64;
                goto LABEL_263;
              case 33338:
                LODWORD(v5) = 63;
                goto LABEL_263;
              case 33339:
                LODWORD(v5) = 104;
                goto LABEL_263;
              case 33340:
                LODWORD(v5) = 103;
                goto LABEL_263;
              default:
                if (a4 == 32857)
                {
                  LODWORD(v5) = 90;
                }

                else
                {
                  if (a4 != 32859)
                  {
                    return v5;
                  }

                  LODWORD(v5) = 110;
                }

                break;
            }

            goto LABEL_263;
          }

          if (a4 <= 35897)
          {
            if (a4 > 35414)
            {
              if (a4 <= 35840)
              {
                if (a4 == 35415)
                {
                  LODWORD(v5) = 167;
                }

                else
                {
                  LODWORD(v5) = 162;
                }
              }

              else if (a4 == 35841)
              {
                LODWORD(v5) = 160;
              }

              else if (a4 == 35842)
              {
                LODWORD(v5) = 166;
              }

              else
              {
                LODWORD(v5) = 164;
              }
            }

            else if (a4 == 35412)
            {
              LODWORD(v5) = 161;
            }

            else if (a4 == 35413)
            {
              LODWORD(v5) = 163;
            }

            else
            {
              LODWORD(v5) = 165;
            }

            goto LABEL_263;
          }

          if (a4 > 36213)
          {
            if (a4 > 36231)
            {
              switch(a4)
              {
                case 36232:
                  LODWORD(v5) = 114;
                  break;
                case 36238:
                  LODWORD(v5) = 74;
                  break;
                case 36756:
                  LODWORD(v5) = 12;
                  break;
                default:
                  return v5;
              }
            }

            else
            {
              switch(a4)
              {
                case 36214:
                  LODWORD(v5) = 113;
                  break;
                case 36220:
                  LODWORD(v5) = 73;
                  break;
                case 36226:
                  LODWORD(v5) = 124;
                  break;
                default:
                  return v5;
              }
            }

            goto LABEL_263;
          }

          if (a4 <= 35906)
          {
            if (a4 == 35898)
            {
              LODWORD(v5) = 92;
            }

            else
            {
              if (a4 != 35901)
              {
                return v5;
              }

              LODWORD(v5) = 93;
            }

            goto LABEL_263;
          }

          if (a4 != 36194)
          {
            if (a4 != 36208)
            {
              return v5;
            }

            LODWORD(v5) = 123;
            goto LABEL_263;
          }

LABEL_189:
          LODWORD(v5) = 40;
          goto LABEL_263;
        }

        if (a4 != 36756)
        {
          v7 = 36757;
          goto LABEL_86;
        }

LABEL_111:
        *(a1 + 6) = 0;
        v13 = 264;
        goto LABEL_176;
      }

      if (a4 > 33326)
      {
        if (a4 <= 34835)
        {
          if (a4 <= 33777)
          {
            if (a4 == 33327)
            {
              *(a1 + 6) = 0;
              *(a1 + 4) = 544;
LABEL_195:
              LODWORD(v5) = 65;
              goto LABEL_263;
            }

            if (a4 == 33328)
            {
              *(a1 + 6) = 0;
              *(a1 + 4) = 576;
LABEL_193:
              LODWORD(v5) = 105;
              goto LABEL_263;
            }

            v12 = 33777;
            goto LABEL_54;
          }

          v15 = -33778;
LABEL_82:
          if ((a4 + v15) >= 2)
          {
            return v5;
          }

          v6 = 3;
          goto LABEL_117;
        }

        if (a4 > 35411)
        {
          if (a4 == 35412)
          {
LABEL_107:
            *a1 = 1;
            v14 = 134218560;
            goto LABEL_118;
          }

          if (a4 == 35413)
          {
            goto LABEL_110;
          }

          goto LABEL_106;
        }

        if (a4 == 34836)
        {
          *(a1 + 6) = 1;
          *(a1 + 4) = 1152;
          LODWORD(v5) = 125;
        }

        else
        {
          if (a4 != 34842)
          {
            return v5;
          }

          *(a1 + 6) = 1;
          *(a1 + 4) = 1088;
          LODWORD(v5) = 115;
        }
      }

      else
      {
        if (a4 > 33320)
        {
          if (a4 <= 33323)
          {
            if (a4 == 33321)
            {
              goto LABEL_111;
            }

            if (a4 != 33322)
            {
              v7 = 33323;
LABEL_86:
              if (a4 != v7)
              {
                return v5;
              }

              *(a1 + 6) = 0;
              v13 = 528;
              goto LABEL_176;
            }

LABEL_71:
            *(a1 + 6) = 0;
            v13 = 272;
            goto LABEL_176;
          }

          if (a4 != 33324)
          {
            if (a4 == 33325)
            {
              *(a1 + 6) = 0;
              *(a1 + 4) = 272;
              LODWORD(v5) = 25;
            }

            else
            {
              *(a1 + 6) = 0;
              *(a1 + 4) = 288;
LABEL_174:
              LODWORD(v5) = 55;
            }

            goto LABEL_263;
          }

LABEL_70:
          *(a1 + 6) = 0;
          v13 = 544;
          goto LABEL_176;
        }

        if (a4 > 32855)
        {
          if (a4 == 32856)
          {
            *(a1 + 6) = 1;
            *(a1 + 4) = 1056;
            v21 = a3 == 32993;
            LODWORD(v5) = 70;
            v22 = 80;
            goto LABEL_198;
          }

          if (a4 != 32857)
          {
            if (a4 != 32859)
            {
              return v5;
            }

            goto LABEL_175;
          }

          goto LABEL_62;
        }

        if (a4 == 32854)
        {
          *(a1 + 6) = 1;
          *(a1 + 4) = 1040;
          LODWORD(v5) = 42;
        }

        else
        {
          if (a4 != 32855)
          {
            return v5;
          }

          *(a1 + 6) = 1;
          *(a1 + 4) = 1040;
          LODWORD(v5) = 41;
        }
      }

LABEL_263:
      *(a1 + 36) = v5;
      return 1;
    }

    if (a4 > 37807)
    {
      switch(a4)
      {
        case 37808:
        case 37840:
          v6 = 2;
          goto LABEL_117;
        case 37809:
        case 37841:
          *a1 = 2;
          v14 = 83952768;
          goto LABEL_118;
        case 37810:
        case 37842:
          *a1 = 2;
          v16 = 83952768;
          goto LABEL_100;
        case 37811:
        case 37843:
          *a1 = 2;
          v16 = 100729984;
          goto LABEL_100;
        case 37812:
        case 37844:
          *a1 = 2;
          v17 = 100729984;
          goto LABEL_104;
        case 37813:
        case 37845:
          *a1 = 2;
          v16 = 134284416;
          goto LABEL_100;
        case 37814:
        case 37846:
          *a1 = 2;
          v17 = 134284416;
          goto LABEL_104;
        case 37815:
        case 37847:
          *a1 = 2;
          v18 = 134284416;
          goto LABEL_102;
        case 37816:
        case 37848:
          *a1 = 2;
          v16 = 167838848;
LABEL_100:
          *(a1 + 4) = v16;
          v10 = 5;
          goto LABEL_119;
        case 37817:
        case 37849:
          *a1 = 2;
          v17 = 167838848;
LABEL_104:
          *(a1 + 4) = v17;
          v10 = 6;
          goto LABEL_119;
        case 37818:
        case 37850:
          *a1 = 2;
          v18 = 167838848;
LABEL_102:
          *(a1 + 4) = v18;
          v10 = 8;
          goto LABEL_119;
        case 37819:
        case 37851:
          *a1 = 2;
          v19 = 167838848;
          goto LABEL_98;
        case 37820:
        case 37852:
          *a1 = 2;
          v19 = 201393280;
LABEL_98:
          *(a1 + 4) = v19;
          v10 = 10;
          goto LABEL_119;
        case 37821:
        case 37853:
          *a1 = 2;
          *(a1 + 4) = 201393280;
          v10 = 12;
          goto LABEL_119;
        default:
          return v5;
      }
    }

    if (a4 > 37489)
    {
      v8 = a4 - 116;
      if ((a4 - 37492) > 5)
      {
        if ((a4 - 37490) >= 2)
        {
          return v5;
        }

        *a1 = 5;
        v14 = 67109504;
        goto LABEL_118;
      }

      if (((1 << v8) & 3) != 0)
      {
        v20 = 5;
        goto LABEL_115;
      }

      if (((1 << v8) & 0xC) != 0)
      {
        v9 = 5;
LABEL_113:
        *a1 = v9;
        v14 = 67175488;
        goto LABEL_118;
      }

      v6 = 5;
LABEL_117:
      *a1 = v6;
      v14 = 67175552;
      goto LABEL_118;
    }

    if (a4 <= 36762)
    {
      if (a4 == 36759)
      {
        *(a1 + 6) = 1;
        *(a1 + 4) = 1056;
        LODWORD(v5) = 72;
        goto LABEL_263;
      }

      if (a4 == 36760)
      {
        goto LABEL_71;
      }

      if (a4 != 36761)
      {
        return v5;
      }

      goto LABEL_70;
    }

    if ((a4 - 37488) < 2)
    {
      *a1 = 5;
      v14 = 67109184;
      goto LABEL_118;
    }

    if (a4 == 36763)
    {
LABEL_175:
      *(a1 + 6) = 1;
      v13 = 1088;
      goto LABEL_176;
    }

    if (a4 != 36975)
    {
      return v5;
    }

LABEL_62:
    *(a1 + 6) = 1;
    v13 = 1056;
LABEL_176:
    *(a1 + 4) = v13;
    goto LABEL_120;
  }

  return 0;
}

uint64_t _mayBeKTX(uint64_t a1)
{
  if (C3DImageGetData(a1))
  {
    return 1;
  }

  v3 = copyPathExtension(a1);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v2 = CFEqual(v3, @"ktx") != 0;
  CFRelease(v4);
  return v2;
}

uint64_t _loadKTX(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  kdebug_trace();
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      _applyCIFilter_cold_2(v2);
    }
  }

  Data = C3DImageGetData(a1);
  if (Data)
  {
    v4 = Data;
    CFRetain(Data);
    goto LABEL_6;
  }

  URL = C3DImageGetURL(a1);
  if (URL)
  {
    v4 = C3DCreateDataWithContentOfURL(URL, 0);
    if (v4)
    {
LABEL_6:
      Length = CFDataGetLength(v4);
      if (Length > 0x3F)
      {
        v7 = Length;
        BytePtr = CFDataGetBytePtr(v4);
        if (*BytePtr == 0xBB31312058544BABLL && *(BytePtr + 2) == 169478669)
        {
          v10 = BytePtr;
          if (*(BytePtr + 3) == 67305985)
          {
            _C3DImageDeleteTextureRawDataIfNeeded(a1);
            _C3DImageCreateTextureRawData(a1, 0, 0, COERCE_DOUBLE(vcvt_f32_u32(*(v10 + 36))));
            if (*(v10 + 13) == 6)
            {
              C3DImageSetImageType(a1, 3);
            }

            TextureRawData = C3DImageGetTextureRawData(a1);
            if (_fillInfoFromFormat(TextureRawData, v12, *(v10 + 6), *(v10 + 7), *(v10 + 8)))
            {
              v13 = *TextureRawData;
              if (!*TextureRawData)
              {
                goto LABEL_25;
              }

              if (v13 != 3)
              {
                v14 = v13 != 4;
                if (v13 == 2)
                {
                  v14 = C3DASTCIsSupported();
                  v13 = *TextureRawData;
                }

                if (v13 == 5)
                {
                  v14 = C3DASTCIsSupported();
                }

                if (v14)
                {
LABEL_25:
                  v15 = 0;
                  v16 = *(v10 + 14);
                  v17 = *(v10 + 15) + 64;
                  if (v16 <= 1)
                  {
                    v16 = 1;
                  }

                  v32 = v16;
                  if (*(v10 + 13) <= 1u)
                  {
                    v18 = 1;
                  }

                  else
                  {
                    v18 = *(v10 + 13);
                  }

                  while (v17 <= v7)
                  {
                    v19 = 0;
                    v20 = *&v10[v17];
                    v17 += 4;
                    while (1)
                    {
                      v21 = v17 + v20;
                      if (v17 + v20 > v7)
                      {
                        break;
                      }

                      v22 = CFDataCreate(0, &v10[v17], v20);
                      CFArrayAppendValue(*(TextureRawData + 40), v22);
                      CFRelease(v22);
                      v17 = (v21 + 3) & 0xFFFFFFFFFFFFFFFCLL;
                      if (v18 == ++v19)
                      {
                        goto LABEL_37;
                      }
                    }

                    v23 = scn_default_log();
                    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 67109888;
                      v34 = v19;
                      v35 = 1024;
                      *v36 = v15;
                      *&v36[4] = 2048;
                      *&v36[6] = v21;
                      *&v36[14] = 2048;
                      *&v36[16] = v7;
                      _os_log_error_impl(&dword_21BEF7000, v23, OS_LOG_TYPE_ERROR, "Error: overflow reading slice[%d] / mip[%d] (%zu > %zu)", buf, 0x22u);
                    }

LABEL_37:
                    ++v15;
                    v24 = 1;
                    if (v15 == v32)
                    {
                      goto LABEL_50;
                    }
                  }

                  v31 = scn_default_log();
                  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 67109632;
                    v34 = v15;
                    v35 = 2048;
                    *v36 = v17;
                    *&v36[8] = 2048;
                    *&v36[10] = v7;
                    _os_log_error_impl(&dword_21BEF7000, v31, OS_LOG_TYPE_ERROR, "Error: overflow reading mip[%d] (%zu > %zu)", buf, 0x1Cu);
                  }

                  v24 = 1;
                  goto LABEL_50;
                }
              }

              v28 = scn_default_log();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
              {
                v29 = *TextureRawData;
                *buf = 67109120;
                v34 = v29;
                _os_log_impl(&dword_21BEF7000, v28, OS_LOG_TYPE_DEFAULT, "Warning: Compression type %d not supported", buf, 8u);
              }
            }

            else
            {
              v27 = scn_default_log();
              if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
              {
                _loadKTX_cold_3(v27);
              }
            }

            _C3DImageDeleteTextureRawDataIfNeeded(a1);
          }

          else
          {
            v26 = scn_default_log();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              _loadKTX_cold_2(v26);
            }
          }
        }
      }

      else
      {
        v6 = scn_default_log();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_21BEF7000, v6, OS_LOG_TYPE_DEFAULT, "Warning: KTX file seems too small or is not a KTX", buf, 2u);
        }
      }

      v24 = 0;
LABEL_50:
      CFRelease(v4);
      goto LABEL_51;
    }
  }

  v24 = 0;
LABEL_51:
  kdebug_trace();
  return v24;
}

uint64_t _createKTXDataRepresentation(void *a1, int a2)
{
  v3 = a1;
  v50 = *MEMORY[0x277D85DE8];
  v4 = [a1 width];
  v5 = [v3 height];
  v6 = [v3 depth];
  if ([v3 textureType] == 5)
  {
    v7 = 6;
  }

  else
  {
    v7 = 1;
  }

  if (a2)
  {
    v36 = [v3 mipmapLevelCount];
  }

  else
  {
    v36 = 1;
  }

  if ([v3 storageMode] == 2)
  {
    v33 = v5;
    v34 = v4;
    v8 = objc_alloc_init(MEMORY[0x277CD7058]);
    [v8 setTextureType:{objc_msgSend(v3, "textureType")}];
    [v8 setPixelFormat:objc_msgSend(v3, "pixelFormat")];
    [v8 setWidth:{objc_msgSend(v3, "width")}];
    [v8 setHeight:{objc_msgSend(v3, "height")}];
    [v8 setDepth:{objc_msgSend(v3, "depth")}];
    [v8 setMipmapLevelCount:{objc_msgSend(v3, "mipmapLevelCount")}];
    [v8 setUsage:0];
    v9 = [objc_msgSend(v3 "device")];
    v10 = [objc_msgSend(v3 "device")];
    v11 = [v10 commandBuffer];
    v12 = [v11 blitCommandEncoder];
    if (v36)
    {
      v14 = 0;
      *&v13 = __PAIR64__(v33, v34);
      v15 = v6;
      do
      {
        v16 = 0;
        v17 = v15;
        *v35[0].i8 = v13;
        *&v18 = v13;
        *(&v18 + 1) = SDWORD1(v13);
        v37 = v18;
        do
        {
          v46 = v37;
          *&v47 = v17;
          v39 = 0;
          v40 = 0;
          v41 = 0;
          memset(v45, 0, sizeof(v45));
          [v12 copyFromTexture:v3 sourceSlice:v16 sourceLevel:v14 sourceOrigin:&v39 sourceSize:&v46 toTexture:v9 destinationSlice:v16 destinationLevel:v14 destinationOrigin:v45];
          ++v16;
        }

        while (v7 != v16);
        *(&v13 + 1) = v35[1];
        *&v13 = vshl_u32(v35[0], vcgt_s32(v35[0], 0x100000001));
        v15 = v17 >> (v17 > 1);
        ++v14;
      }

      while (v14 != v36);
    }

    [v12 endEncoding];
    [v11 commit];
    [v11 waitUntilCompleted];

    v3 = v9;
    v5 = v33;
    v4 = v34;
  }

  v48 = 0u;
  v49 = 0u;
  v47 = 0u;
  *&v46 = 0xBB31312058544BABLL;
  *(&v46 + 1) = 0x40302010A1A0A0DLL;
  v19 = [v3 pixelFormat];
  v20 = v19;
  if (v19 > 79)
  {
    switch(v19)
    {
      case 'P':
        v21 = xmmword_21C281210;
        goto LABEL_25;
      case 's':
        v21 = xmmword_21C281240;
        v23 = 8;
        goto LABEL_31;
      case 'Q':
        v21 = xmmword_21C281260;
        goto LABEL_25;
    }

LABEL_26:
    v24 = scn_default_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      _createKTXDataRepresentation_cold_2(v20);
    }

    return 0;
  }

  switch(v19)
  {
    case 10:
      v21 = xmmword_21C281230;
      v22 = 1;
      break;
    case 25:
      v21 = xmmword_21C281220;
      v22 = 2;
      break;
    case 71:
      v21 = xmmword_21C281250;
LABEL_25:
      v23 = 4;
LABEL_31:
      v38 = v23;
      v25 = 6408;
      goto LABEL_32;
    default:
      goto LABEL_26;
  }

  v38 = v22;
  v25 = 6403;
LABEL_32:
  v47 = v21;
  LODWORD(v48) = v25;
  if ([v3 textureType] != 2 && objc_msgSend(v3, "textureType") != 5)
  {
    v32 = scn_default_log();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      _createKTXDataRepresentation_cold_1(v3);
    }

    return 0;
  }

  DWORD1(v48) = [v3 width];
  *(&v48 + 1) = [v3 height];
  LODWORD(v49) = 0;
  *(&v49 + 4) = __PAIR64__(v36, v7);
  v26 = [MEMORY[0x277CBEB28] dataWithCapacity:0];
  [v26 appendBytes:&v46 length:64];
  v27 = malloc_type_malloc(v5 * v4 * v38, 0x100004077774924uLL);
  if (v36)
  {
    v28 = 0;
    v29 = v5;
    do
    {
      LODWORD(v45[0]) = v4 * v38 * v29;
      [v26 appendBytes:v45 length:4];
      for (i = 0; i != v7; ++i)
      {
        v39 = 0;
        v40 = 0;
        v41 = 0;
        v42 = v4;
        v43 = v29;
        v44 = 1;
        [v3 getBytes:v27 bytesPerRow:(v4 * v38) bytesPerImage:LODWORD(v45[0]) fromRegion:&v39 mipmapLevel:v28 slice:i];
        [v26 appendBytes:v27 length:LODWORD(v45[0])];
      }

      LODWORD(v4) = v4 >> (v4 > 1);
      v29 = v29 >> (v29 > 1);
      ++v28;
    }

    while (v28 != v36);
  }

  free(v27);
  return [v26 copy];
}

void OUTLINED_FUNCTION_0_8(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x12u);
}

void _C3DRendererElementFinalize(uint64_t a1)
{
  SharedInstance = C3DNotificationCenterGetSharedInstance();
  C3DNotificationCenterPostNotification(SharedInstance, @"kC3DNotificationRendererElementWillDie", a1, 0, 1u);
  v3 = *(a1 + 32);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 16) = 0;
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 24) = 0;
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    v7 = CFGetTypeID(*(a1 + 48));
    if (v7 == C3DMeshElementGetTypeID() || (v8 = CFGetTypeID(v6), v8 == CFNumberGetTypeID()))
    {
      v9 = *(a1 + 48);
      if (v9)
      {
        CFRelease(v9);
        *(a1 + 48) = 0;
      }
    }
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    CFRelease(v10);
    *(a1 + 40) = 0;
  }
}

void _C3DRendererElementSync(uint64_t a1, char a2)
{
  if ((a2 & 4) != 0)
  {
    v4 = *(a1 + 8);
    if ((*(a1 + 72) & 7) == 5)
    {
      RenderingOrder = 0x80000000;
    }

    else if (v4)
    {
      RenderingOrder = C3DNodeGetRenderingOrder(*(a1 + 8));
    }

    else
    {
      RenderingOrder = 0;
    }

    *(a1 + 64) = RenderingOrder;
    if (v4)
    {
      if (C3DNodeGetCastsShadow(v4))
      {
        v6 = 16;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }

    *(a1 + 72) = *(a1 + 72) & 0xFFEF | v6;
  }

  if ((a2 & 8) != 0)
  {
    if (!a1)
    {
      v7 = scn_default_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        _C3DRendererElementSync_cold_1(v7, v8, v9, v10, v11, v12, v13, v14);
      }
    }

    Material = C3DRendererElementGetMaterial(a1);
    if (Material)
    {
      ShaderModifiers = C3DEntityGetShaderModifiers(Material);
      ModifierFlags = _GetModifierFlags(ShaderModifiers);
    }

    else
    {
      ModifierFlags = 0;
    }

    Geometry = C3DRendererElementGetGeometry(a1);
    if (!Geometry || (v19 = Geometry, v20 = C3DEntityGetShaderModifiers(Geometry), ModifierFlags |= _GetModifierFlags(v20), C3DGeometryUsesDeformerBasedDynamicMesh(v19)) || (Mesh = C3DGeometryGetMesh(v19)) == 0 || (C3DMeshHasNonOpaqueColorSources(Mesh) & 1) == 0)
    {
      if (ModifierFlags)
      {
        v23 = *(a1 + 72);
        goto LABEL_35;
      }

      if ((ModifierFlags & 2) == 0)
      {
        v22 = *(a1 + 8);
        if (!v22)
        {
          goto LABEL_29;
        }

        v23 = *(a1 + 72);
        if ((v23 & 7) == 1)
        {
          goto LABEL_35;
        }

        C3DNodeGetWorldAlpha(v22);
        if (v24 >= 1.0)
        {
LABEL_29:
          v25 = *(a1 + 40);
          if (v25)
          {
            IsOpaque = C3DFXTechniqueIsOpaque(v25);
            goto LABEL_31;
          }

          v23 = *(a1 + 72);
          if ((v23 & 7) != 1)
          {
            v35 = *(a1 + 32);
            if (v35)
            {
              IsOpaque = C3DMaterialIsOpaque(v35);
LABEL_31:
              v23 = *(a1 + 72);
              if ((IsOpaque ^ ((v23 & 8) == 0)))
              {
                goto LABEL_40;
              }

              if ((IsOpaque & 1) == 0)
              {
LABEL_38:
                v27 = 0;
                goto LABEL_39;
              }

LABEL_36:
              v27 = 8;
LABEL_39:
              *(a1 + 72) = v23 & 0xFFF7 | v27;
              SharedInstance = C3DNotificationCenterGetSharedInstance();
              C3DNotificationCenterPostNotification(SharedInstance, @"kC3DNotificationRendererElementWillDie", a1, 0, 1u);
              goto LABEL_40;
            }
          }

LABEL_35:
          if ((v23 & 8) != 0)
          {
            goto LABEL_40;
          }

          goto LABEL_36;
        }
      }
    }

    v23 = *(a1 + 72);
    if ((v23 & 8) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_38;
  }

LABEL_40:
  if ((a2 & 0x10) == 0)
  {
    return;
  }

  v29 = *(a1 + 32);
  if (!v29)
  {
    v32 = (a1 + 72);
    v33 = -65;
LABEL_48:
    *v32 &= v33;
    return;
  }

  CommonProfileIfNoTechnique = C3DMaterialGetCommonProfileIfNoTechnique(v29);
  if (CommonProfileIfNoTechnique)
  {
    v31 = ((C3DEffectCommonProfileGetLightingModel(CommonProfileIfNoTechnique) & 0xFFFFFFFB) != 0) << 6;
  }

  else
  {
    v31 = 0;
  }

  v34 = *(a1 + 72);
  v32 = (a1 + 72);
  *v32 = v34 & 0xFFBF | v31;
  if (!C3DMaterialGetEnableWriteInDepthBuffer(*(v32 - 5)))
  {
    v33 = -17;
    goto LABEL_48;
  }
}

uint64_t C3DRendererElementGetMaterialForRenderPass(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      _C3DRendererElementSync_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if ((*(a1 + 72) & 7) == 1)
  {
    return 0;
  }

  if (!a2)
  {
    return *(a1 + 32);
  }

  Material = C3DFXPassGetMaterial(a2);
  v14 = *(a1 + 72);
  if ((v14 & 0x400) != 0)
  {
    return *(a1 + 32);
  }

  v12 = Material;
  if (!Material || (v14 & 8) == 0 && C3DFXPassGetDrawOnlyShadowCaster(a2))
  {
    return *(a1 + 32);
  }

  return v12;
}

uint64_t C3DRendererElementGetGeometry(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      _C3DRendererElementSync_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  if ((*(a1 + 72) & 5 | 2) == 3)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16);
  }
}

uint64_t C3DRendererElementGetMaterial(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      _C3DRendererElementSync_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 32);
}

uint64_t C3DRendererElementGetMesh(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      _C3DRendererElementSync_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 24);
}

const void *C3DRendererElementGetMeshElement(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      _C3DRendererElementSync_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  result = *(a1 + 48);
  if (result)
  {
    v11 = CFGetTypeID(result);
    if (v11 == C3DMeshElementGetTypeID())
    {
      return *(a1 + 48);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t C3DRendererElementGetRaterizerStates(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      _C3DRendererElementSync_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  result = *(a1 + 32);
  if (result)
  {
    return C3DMeshSourceGetMTLVertexFormat(result);
  }

  return result;
}

uint64_t C3DRendererElementIsHidden(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    return C3DNodeIsHidden(result);
  }

  return result;
}

uint64_t _GetModifierFlags(const __CFArray *a1)
{
  if (a1 && (Count = CFArrayGetCount(a1), Count >= 1))
  {
    v3 = Count;
    v4 = 0;
    v5 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v4);
      v5 |= C3DShaderModifierGetFlags(ValueAtIndex);
      ++v4;
    }

    while (v3 != v4);
  }

  else
  {
    LOWORD(v5) = 0;
  }

  return v5;
}

const void *C3DGeometryOsdGetCPUSubdividedC3DMesh(uint64_t a1)
{
  C3DSubdivInitializeIfNeeded();
  v2 = *(a1 + 160);
  if (!v2)
  {
    Mesh = C3DGeometryGetMesh(a1);
    v2 = Mesh;
    if (*(a1 + 136))
    {
      kdebug_trace();
      if (C3DGeometryInitSubdivTopologyInfoIfNeeded(a1))
      {
        C3DGeometrySubdivTopologyInfoInitCreasesAndCorners((a1 + 136), v2);
        memset(v6, 0, sizeof(v6));
        C3DSubdivInitCPUPrimvarContext(v6, a1 + 136, v2);
        C3DSubdivCreateRefiner(a1 + 136);
      }

      v4 = CFRetain(v2);
    }

    else
    {
      v4 = CFRetain(Mesh);
      v2 = v4;
    }

    *(a1 + 160) = v4;
  }

  return v2;
}

void C3DSubdivCPUPrimvarContext::~C3DSubdivCPUPrimvarContext(C3DSubdivCPUPrimvarContext *this)
{
  v4 = (this + 216);
  std::vector<C3DSubdivCPUPrimvarDataGroup>::__destroy_vector::operator()[abi:nn200100](&v4);
  v4 = (this + 192);
  _ZNSt3__16vectorI23C3DSubdivCPUPrimvarDataIDv4_fENS_9allocatorIS3_EEE16__destroy_vectorclB8nn200100Ev(&v4);
  v4 = (this + 168);
  _ZNSt3__16vectorI23C3DSubdivCPUPrimvarDataIDv4_fENS_9allocatorIS3_EEE16__destroy_vectorclB8nn200100Ev(&v4);
  v4 = (this + 144);
  _ZNSt3__16vectorI23C3DSubdivCPUPrimvarDataIDv4_fENS_9allocatorIS3_EEE16__destroy_vectorclB8nn200100Ev(&v4);
  v4 = (this + 120);
  _ZNSt3__16vectorI23C3DSubdivCPUPrimvarDataIDv4_fENS_9allocatorIS3_EEE16__destroy_vectorclB8nn200100Ev(&v4);
  v4 = (this + 96);
  _ZNSt3__16vectorI23C3DSubdivCPUPrimvarDataIDv4_fENS_9allocatorIS3_EEE16__destroy_vectorclB8nn200100Ev(&v4);
  v4 = (this + 72);
  _ZNSt3__16vectorI23C3DSubdivCPUPrimvarDataIDv4_fENS_9allocatorIS3_EEE16__destroy_vectorclB8nn200100Ev(&v4);
  v4 = (this + 48);
  std::vector<C3DSubdivCPUFVarPrimvarInfo>::__destroy_vector::operator()[abi:nn200100](&v4);
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  v3 = *this;
  if (*this)
  {
    *(this + 1) = v3;
    operator delete(v3);
  }
}

void std::vector<C3DSubdivCPUPrimvarDataGroup>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<C3DSubdivCPUPrimvarDataGroup>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<C3DSubdivCPUPrimvarDataGroup>::clear[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (v3 != *a1)
  {
    do
    {
      v4 = (v3 - 24);
      _ZNSt3__16vectorI23C3DSubdivCPUPrimvarDataIDv4_fENS_9allocatorIS3_EEE16__destroy_vectorclB8nn200100Ev(&v4);
      v4 = (v3 - 48);
      _ZNSt3__16vectorI23C3DSubdivCPUPrimvarDataIDv4_fENS_9allocatorIS3_EEE16__destroy_vectorclB8nn200100Ev(&v4);
      v4 = (v3 - 72);
      _ZNSt3__16vectorI23C3DSubdivCPUPrimvarDataIDv4_fENS_9allocatorIS3_EEE16__destroy_vectorclB8nn200100Ev(&v4);
      v3 -= 72;
    }

    while (v3 != v2);
  }

  a1[1] = v2;
}

void _ZNSt3__16vectorI23C3DSubdivCPUPrimvarDataIDv4_fENS_9allocatorIS3_EEE16__destroy_vectorclB8nn200100Ev(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    _ZNSt3__16vectorI23C3DSubdivCPUPrimvarDataIDv4_fENS_9allocatorIS3_EEE5clearB8nn200100Ev(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void _ZNSt3__16vectorI23C3DSubdivCPUPrimvarDataIDv4_fENS_9allocatorIS3_EEE5clearB8nn200100Ev(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (v3 != *a1)
  {
    do
    {
      v4 = *(v3 - 64);
      if (v4)
      {
        *(v3 - 56) = v4;
        operator delete(v4);
      }

      v5 = *(v3 - 88);
      if (v5)
      {
        *(v3 - 80) = v5;
        operator delete(v5);
      }

      v6 = v3 - 112;
      v7 = *(v3 - 112);
      if (v7)
      {
        *(v3 - 104) = v7;
        operator delete(v7);
      }

      v3 -= 112;
    }

    while (v6 != v2);
  }

  a1[1] = v2;
}

void std::vector<C3DSubdivCPUFVarPrimvarInfo>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<C3DSubdivCPUFVarPrimvarInfo>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<C3DSubdivCPUFVarPrimvarInfo>::clear[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 32)
  {
    v4 = *(i - 24);
    if (v4)
    {
      *(i - 16) = v4;
      operator delete(v4);
    }
  }

  a1[1] = v2;
}

void _C3DRendererElementStateCFFinalize(uint64_t a1)
{
  v2 = *(a1 + 328);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 328) = 0;
  }

  *(a1 + 336) = 0;
}

CFStringRef _C3DRendererElementStateCFCopyFormatDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DRendererElementState>");
}

CFStringRef _C3DRendererElementStateCFCopyDebugDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DRendererElementState>");
}

uint64_t C3DRendererElementStateBeginProcessing(uint64_t a1, uint64_t a2, uint64_t a3)
{
  RendererContextGL = C3DEngineContextGetRendererContextGL(a3);
  C3DRendererElementStateReset(a1, a3);
  Scene = C3DEngineContextGetScene(a3);
  *(a1 + 400) = 0;
  *(a1 + 16) = RendererContextGL;
  *(a1 + 24) = C3DEngineContextGetResourceManager(a3);
  LightingSystem = C3DSceneGetLightingSystem(Scene);
  *(a1 + 32) = a3;
  *(a1 + 40) = LightingSystem;
  *(a1 + 48) = 0;

  return C3DSceneSourcePerformConsistencyCheck(LightingSystem);
}

void C3DRendererElementStateReset(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DEngineContextGetStats_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  RendererContextGL = C3DEngineContextGetRendererContextGL(a2);
  C3DRendererContextUnbindBufferObjects(RendererContextGL);
  __RendererElementStateUnbindLastUsedCommonProfile(a1, 1);
  C3DRendererContextBindProgramObject(RendererContextGL, 0);
  v13 = *(a1 + 328);
  if (v13)
  {
    CFRelease(v13);
    *(a1 + 328) = 0;
  }

  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 400) = 0;
  *(a1 + 412) = -1;
  *(a1 + 424) = -1;
  if (!*(a1 + 404))
  {
    C3DRendererContextSetEnableWriteToDepth(RendererContextGL, 1);
  }

  *(a1 + 404) = -1;
  if (!*(a1 + 408))
  {
    C3DRendererContextSetEnableReadsFromDepth(RendererContextGL, 1);
  }

  *(a1 + 408) = -1;
  *(a1 + 420) = 0;
}

void __RendererElementStateUnbindLastUsedCommonProfile(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 56);
    if (v3)
    {
      C3DRendererContextUnbindCommonProfile(*(a1 + 16), v3, a1 + 64);
      C3DRendererContextUnbindTextureUnits(*(a1 + 16));
      *(a1 + 56) = 0;
    }
  }

  *(a1 + 400) = 0;
}

void C3DRendererElementStateEndProcessing(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1 && (v5 = scn_default_log(), os_log_type_enabled(v5, OS_LOG_TYPE_FAULT)))
  {
    C3DRendererElementStateCreate_cold_2(v5, v6, v7, v8, v9, v10, v11, v12);
    if (a3)
    {
      goto LABEL_6;
    }
  }

  else if (a3)
  {
    goto LABEL_6;
  }

  v13 = scn_default_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
  {
    C3DEngineContextGetStats_cold_1(v13, v14, v15, v16, v17, v18, v19, v20);
  }

LABEL_6:
  RendererContextGL = C3DEngineContextGetRendererContextGL(a3);
  C3DRendererElementStateReset(a1, a3);
  v22 = C3DBlendStatesDefaultReplace();
  C3DRendererContextSetBlendStates(RendererContextGL, v22);
  C3DLightingSystemEndProcessing(*(a1 + 40), a3, v23);
  *(a1 + 48) = 0;
}

uint64_t __getShaderModifierOwner(uint64_t a1, int a2)
{
  if (a2 == 1)
  {
    return C3DRendererElementGetGeometry(a1);
  }

  if (a2)
  {
    return 0;
  }

  return C3DRendererElementGetMaterial(a1);
}

void __UpdateMatrixUniforms(void *a1, uint64_t a2)
{
  memset(&v44, 0, sizeof(v44));
  memset(&v43, 0, sizeof(v43));
  memset(&v42, 0, sizeof(v42));
  v4 = a1[2];
  v5 = a1[4];
  v6 = a1[42];
  Matrix4x4 = C3DEngineContextGetMatrix4x4(v5, 1);
  v8 = C3DEngineContextGetMatrix4x4(v5, 2);
  v9 = v8[3];
  v11 = *v8;
  v10 = v8[1];
  value.columns[2] = v8[2];
  value.columns[3] = v9;
  value.columns[0] = v11;
  value.columns[1] = v10;
  v12 = C3DEngineContextGetMatrix4x4(v5, 0);
  Node = C3DRendererElementGetNode(a2);
  if (Node)
  {
    v14 = Node;
    Skinner = C3DNodeGetSkinner(Node);
    if (Skinner)
    {
      v16 = Skinner;
      EffectiveCalculationMode = C3DSkinnerGetEffectiveCalculationMode(Skinner, *(v14 + 240));
      *v18.i64 = C3DSkinnerAdjustTransformIfUsesNodeTransformCalculationMode(v16, EffectiveCalculationMode, value.columns[0], value.columns[1], value.columns[2], value.columns[3]);
      value.columns[0] = v18;
      value.columns[1] = v19;
      value.columns[2] = v20;
      value.columns[3] = v21;
    }
  }

  UniformLocation = C3DFXGLSLProgramObjectGetUniformLocation(v6, 2);
  if (UniformLocation != -1)
  {
    C3DRendererContextSetMatrix4x4UniformAtLocation(v4, UniformLocation, &value, 1);
  }

  v23 = C3DFXGLSLProgramObjectGetUniformLocation(v6, 3);
  if (v23 != -1)
  {
    v24 = v23;
    C3DMatrix4x4Invert(&value, &v43);
    C3DRendererContextSetMatrix4x4UniformAtLocation(v4, v24, &v43, 1);
  }

  v25 = C3DFXGLSLProgramObjectGetUniformLocation(v6, 4);
  C3DMatrix4x4Mult(&value, Matrix4x4, &v42);
  if (v25 != -1)
  {
    C3DRendererContextSetMatrix4x4UniformAtLocation(v4, v25, &v42, 1);
  }

  v26 = C3DFXGLSLProgramObjectGetUniformLocation(v6, 5);
  if (v26 != -1)
  {
    v27 = v26;
    C3DMatrix4x4Invert(&v42, &v43);
    C3DRendererContextSetMatrix4x4UniformAtLocation(v4, v27, &v43, 1);
  }

  v28 = C3DFXGLSLProgramObjectGetUniformLocation(v6, 7);
  if (v28 != -1)
  {
    v29 = v28;
    C3DMatrix4x4Mult(&v42, v12, &v44);
    C3DRendererContextSetMatrix4x4UniformAtLocation(v4, v29, &v44, 1);
  }

  v30 = C3DFXGLSLProgramObjectGetUniformLocation(v6, 8);
  if (v30 != -1)
  {
    v31 = v30;
    C3DMatrix4x4Mult(&v42, v12, &v44);
    C3DMatrix4x4Invert(&v44, &v43);
    C3DRendererContextSetMatrix4x4UniformAtLocation(v4, v31, &v43, 1);
  }

  v32 = C3DFXGLSLProgramObjectGetUniformLocation(v6, 6);
  if (v32 != -1)
  {
    v33 = v32;
    C3DMatrix4x4ComputeNormalMatrix(&v42, &v43);
    C3DRendererContextSetMatrix4x4UniformAtLocation(v4, v33, &v43, 1);
  }

  v34 = C3DFXGLSLProgramObjectGetUniformLocation(v6, 188);
  if (v34 != -1)
  {
    v35 = v34;
    v36 = C3DMatrix4x4Determinant3x3(&value);
    v37 = v36 > 0.0;
    FXContext = C3DEngineContextGetFXContext(a1[4]);
    if (FXContext)
    {
      v37 = (v36 > 0.0) ^ (C3DFXContextGetMirrorNode(FXContext) != 0);
    }

    v39 = -1.0;
    if (v37)
    {
      v39 = 1.0;
    }

    v = v39;
    C3DRendererContextSetFloatUniformAtLocation(v4, v35, &v, 1);
  }
}

void *__BindValueForSymbol(uint64_t a1, int a2, uint64_t *a3)
{
  v5 = *a3;
  v6 = a3[1];
  v8 = a3[2];
  v7 = a3[3];
  UserInfo = C3DFXProgramDelegateGetUserInfo(v6);
  result = C3DFXProgramDelegateGetCallbacks(v6);
  if (result)
  {
    result = *result;
    if (result)
    {
      v13 = result;
      ProgramID = C3DFXGLSLProgramObjectGetProgramID(v8);
      Node = C3DRendererElementGetNode(v7);

      return v13(v5, a1, ProgramID, (a2 - 1), Node, UserInfo);
    }
  }

  return result;
}