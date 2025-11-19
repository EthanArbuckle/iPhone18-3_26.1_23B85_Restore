BOOL CGFontGetRegistryOrderingSupplement(void *a1, void *a2, void *a3, _DWORD *a4)
{
  cid_info = get_cid_info(a1);
  if (!cid_info)
  {
    return 0;
  }

  v8 = cid_info;
  pthread_mutex_lock(cid_info);
  v9 = *v8[1].__opaque;
  if (a2)
  {
    *a2 = v9;
  }

  if (a3)
  {
    *a3 = *&v8[1].__opaque[8];
  }

  if (a4)
  {
    *a4 = *&v8[1].__opaque[16];
  }

  v10 = v9 != 0;
  pthread_mutex_unlock(v8);
  return v10;
}

pthread_mutex_t *get_cid_info(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = a1 + 12;
  explicit = atomic_load_explicit(a1 + 12, memory_order_acquire);
  if (!explicit)
  {
    v13 = 0;
    v11 = 0;
    v12 = 0;
    explicit = malloc_type_calloc(1uLL, 0x70uLL, 0x1060040AA484A44uLL);
    pthread_mutex_init(explicit, 0);
    v4 = (*(a1[2] + 208))(a1[14], &v12, &v11, &v13);
    v5 = 0;
    v7 = v11;
    v6 = v12;
    v8 = v13;
    if (!v4)
    {
      v6 = 0;
      v7 = 0;
      v8 = 0;
    }

    *explicit[1].__opaque = v6;
    *&explicit[1].__opaque[8] = v7;
    *&explicit[1].__opaque[16] = v8;
    explicit[1].__sig = a1;
    *&explicit[1].__opaque[24] = 0;
    *&explicit[1].__opaque[32] = 0;
    atomic_compare_exchange_strong(v2, &v5, explicit);
    if (v5)
    {
      CGCIDInfoRelease(explicit);
      return v5;
    }
  }

  return explicit;
}

pthread_mutex_t *CGFontGetCIDsForGlyphs(void *a1, unsigned __int16 *a2, uint64_t a3, _WORD *a4)
{
  result = get_cid_info(a1);
  if (result)
  {
    v8 = result;
    if (!a3 || (result = 0, a2) && a4)
    {
      v9 = *&v8[1].__opaque[32];
      if (v9)
      {
        goto LABEL_19;
      }

      if (*&v8[1].__opaque[24])
      {
        v10 = malloc_type_calloc(1uLL, 0x208uLL, 0x1080040036EC52CuLL);
        v11 = 0;
        *v10 = -1;
        do
        {
          v12 = *&v8[1].__opaque[24];
          if (v12)
          {
            if (v12 == -1)
            {
              v13 = v11;
            }

            else
            {
              v14 = atomic_load(&v12[4 * (v11 >> 10) + 4]);
              if (v14)
              {
                v13 = *(v14 + 2 * (v11 & 0x3FF));
              }

              else
              {
                v13 = *v12;
              }
            }
          }

          else
          {
            v13 = -1;
          }

          CGFontIndexMapAddIndex(v10, v13, v11++);
        }

        while (v11 != 0xFFFF);
        v15 = 0;
        atomic_compare_exchange_strong_explicit(&v8[1].__opaque[32], &v15, v10, memory_order_relaxed, memory_order_relaxed);
        if (v15)
        {
          CGFontIndexMapRelease(v10);
        }
      }

      v9 = *&v8[1].__opaque[32];
      if (v9)
      {
LABEL_19:
        CGFontIndexMapGetValues(v9, a2, a3, a4);
        return (a3 != 0);
      }

      else
      {
        sig = v8[1].__sig;
        v17 = *(*(sig + 16) + 272);
        v18 = *(sig + 112);

        return v17(v18, a2, a3, a4);
      }
    }
  }

  return result;
}

uint64_t CGFontGetGlyphsForCIDs(void *a1, unsigned __int16 *a2, uint64_t a3, _WORD *a4)
{
  cid_info = get_cid_info(a1);
  if (!cid_info)
  {
    return 0;
  }

  if (a3)
  {
    v8 = 0;
    if (!a2 || !a4)
    {
      return v8;
    }
  }

  if (*&cid_info[1].__opaque[24])
  {
    CGFontIndexMapGetValues(*&cid_info[1].__opaque[24], a2, a3, a4);
    return a3 != 0;
  }

  sig = cid_info[1].__sig;
  v11 = *(*(sig + 16) + 264);
  v12 = *(sig + 112);

  return v11(v12, a2, a3, a4);
}

uint64_t CGEXRToneMappingGammaGetDefaultOptions()
{
  if (CGEXRToneMappingGammaGetDefaultOptions_predicate != -1)
  {
    dispatch_once(&CGEXRToneMappingGammaGetDefaultOptions_predicate, &__block_literal_global_15336);
  }

  return CGEXRToneMappingGammaGetDefaultOptions_exrToneMappingOptions;
}

void __CGEXRToneMappingGammaGetDefaultOptions_block_invoke()
{
  v8 = *MEMORY[0x1E69E9840];
  *keys = xmmword_1E6E31BC8;
  v7 = *off_1E6E31BD8;
  LODWORD(valuePtr[0]) = 0;
  valuePtr[0] = CFNumberCreate(0, kCFNumberFloatType, valuePtr);
  LODWORD(v4) = 0;
  valuePtr[1] = CFNumberCreate(0, kCFNumberIntType, &v4);
  LODWORD(v4) = 0;
  valuePtr[2] = CFNumberCreate(0, kCFNumberFloatType, &v4);
  LODWORD(v4) = 1084227584;
  valuePtr[3] = CFNumberCreate(0, kCFNumberFloatType, &v4);
  v0 = CFDictionaryCreate(0, keys, valuePtr, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  for (i = 0; i != 4; ++i)
  {
    v2 = valuePtr[i];
    if (v2)
    {
      CFRelease(v2);
    }
  }

  v3 = v0;
  v4 = @"kCGApplyEXRToneMappingGamma";
  CGEXRToneMappingGammaGetDefaultOptions_exrToneMappingOptions = CFDictionaryCreate(*MEMORY[0x1E695E480], &v4, &v3, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFRelease(v0);
}

uint64_t validate_cmyk_bitmap_info(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 40);
  if ((v8 & 0x1F) != 0)
  {
    goto LABEL_2;
  }

  v11 = *(a1 + 80);
  if (v11 == 32)
  {
    if ((v8 & 0x100) != 0)
    {
      v12 = 16;
      goto LABEL_15;
    }

LABEL_2:
    v9 = "Valid parameters for CMYK color space model are:\n\t32  bits per pixel,\t\t 8  bits per component,\t\t kCGImageAlphaNone\n\t64  bits per pixel,\t\t 16 bits per component,\t\t kCGImageAlphaNone\n\t64  bits per pixel,\t\t 16 bits per component,\t\t kCGImageAlphaNone|kCGBitmapFloatComponents\n\t128 bits per pixel,\t\t 32 bits per component,\t\t kCGImageAlphaNone|kCGBitmapFloatComponents\n\t128 bits per pixel,\t\t 32 bits per component,\t\t kCGImageAlphaNone|kCGBitmapFloatComponents|kCGBitmapByteOrder32Little\n\t128 bits per pixel,\t\t 32 bits per component,\t\t kCGImageAlphaNone|kCGBitmapFloatComponents|kCGBitmapByteOrder32Big";
LABEL_3:
    unsupported(a1, v9, a3, a4, a5, a6, a7, a8);
    return 0;
  }

  if (v11 != 16)
  {
    if (v11 == 8)
    {
      v12 = 4;
LABEL_15:
      v14 = *(a1 + 40) & 0x7000;
      if ((v8 & 0x7000) != 0 && v14 != 0x2000 && v14 != 0x4000)
      {
        v9 = "Valid parameters for CMYK color space model are:\n\t32  bits per pixel,\t\t 8  bits per component,\t\t kCGImageAlphaNone\n\t64  bits per pixel,\t\t 16 bits per component,\t\t kCGImageAlphaNone\n\t64  bits per pixel,\t\t 16 bits per component,\t\t kCGImageAlphaNone|kCGBitmapFloatComponents\n\t128 bits per pixel,\t\t 32 bits per component,\t\t kCGImageAlphaNone|kCGBitmapFloatComponents\n\t128 bits per pixel,\t\t 32 bits per component,\t\t kCGImageAlphaNone|kCGBitmapFloatComponents|kCGBitmapByteOrder32Little\n\t128 bits per pixel,\t\t 32 bits per component,\t\t kCGImageAlphaNone|kCGBitmapFloatComponents|kCGBitmapByteOrder32Big\nvalid byte order flags are kCGBitmapByteOrderDefault, kCGBitmapByteOrder32Big, kCGBitmapByteOrder32Little";
        goto LABEL_3;
      }

      goto LABEL_21;
    }

    goto LABEL_2;
  }

  v13 = *(a1 + 40) & 0x7000;
  if ((v8 & 0x100) != 0)
  {
    if (v13 != 4096)
    {
      v9 = "Valid parameters for CMYK color space model are:\n\t32  bits per pixel,\t\t 8  bits per component,\t\t kCGImageAlphaNone\n\t64  bits per pixel,\t\t 16 bits per component,\t\t kCGImageAlphaNone\n\t64  bits per pixel,\t\t 16 bits per component,\t\t kCGImageAlphaNone|kCGBitmapFloatComponents\n\t128 bits per pixel,\t\t 32 bits per component,\t\t kCGImageAlphaNone|kCGBitmapFloatComponents\n\t128 bits per pixel,\t\t 32 bits per component,\t\t kCGImageAlphaNone|kCGBitmapFloatComponents|kCGBitmapByteOrder32Little\n\t128 bits per pixel,\t\t 32 bits per component,\t\t kCGImageAlphaNone|kCGBitmapFloatComponents|kCGBitmapByteOrder32Big\nrequired byte order flag is kCGBitmapByteOrder16Little";
      goto LABEL_3;
    }

    v12 = 8;
  }

  else
  {
    v12 = 8;
    if ((v8 & 0x7000) != 0 && v13 != 4096 && v13 != 12288)
    {
      v9 = "Valid parameters for CMYK color space model are:\n\t32  bits per pixel,\t\t 8  bits per component,\t\t kCGImageAlphaNone\n\t64  bits per pixel,\t\t 16 bits per component,\t\t kCGImageAlphaNone\n\t64  bits per pixel,\t\t 16 bits per component,\t\t kCGImageAlphaNone|kCGBitmapFloatComponents\n\t128 bits per pixel,\t\t 32 bits per component,\t\t kCGImageAlphaNone|kCGBitmapFloatComponents\n\t128 bits per pixel,\t\t 32 bits per component,\t\t kCGImageAlphaNone|kCGBitmapFloatComponents|kCGBitmapByteOrder32Little\n\t128 bits per pixel,\t\t 32 bits per component,\t\t kCGImageAlphaNone|kCGBitmapFloatComponents|kCGBitmapByteOrder32Big\nvalid byte order flags are kCGBitmapByteOrderDefault, kCGBitmapByteOrder16Big, kCGBitmapByteOrder16Little";
      goto LABEL_3;
    }
  }

LABEL_21:
  if (*(a1 + 72) != 8 * v12 || (*(a1 + 88) & (v12 - 1)) != 0 || (v8 & 0xF0000) != 0)
  {
    goto LABEL_2;
  }

  return check_sizes(a1, v11, a3, a4, a5, a6, a7, a8);
}

char *__unsupported_block_invoke()
{
  result = getenv("CGBITMAP_CONTEXT_LOG_ERRORS");
  unsupported_full_log = result != 0;
  return result;
}

uint64_t CGColorSpaceCreateDeviceN(unint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 > 0x10 || !a1 || !a2 || !a3 || !a4 || a4[4] != a1 || *(a3[3] + 48) != a4[6] || CGColorSpaceGetType(a3) - 7 < 3)
  {
    goto LABEL_38;
  }

  v13 = 0;
  do
  {
    if (!*(a2 + 8 * v13))
    {
      goto LABEL_38;
    }

    ++v13;
  }

  while (a1 != v13);
  v14 = malloc_type_calloc(0x78uLL, 1uLL, 0xFA02CBC7uLL);
  if (!v14)
  {
LABEL_38:
    v33 = CGColorSpaceCreateWithState(0, a2, a3, a4, a5, a6, a7, a8);
    goto LABEL_39;
  }

  v15 = v14;
  *v14 = 1;
  v14[4] = 0;
  *(v14 + 10) = 0;
  *(v14 + 12) = CGColorSpaceIgnoresIntent(a3);
  *(v15 + 11) = 0;
  *(v15 + 14) = 0;
  *(v15 + 48) = a1;
  *(v15 + 112) = color_space_state_create_deviceN_deviceN_vtable;
  *(v15 + 24) = 0x400000008;
  *(v15 + 32) = 4;
  *(v15 + 80) = 0;
  *(v15 + 88) = 0;
  *(v15 + 40) = deviceN_create_default_color_components(a1);
  v16 = malloc_type_calloc(0x90uLL, 1uLL, 0xDD0CED2FuLL);
  *(v15 + 96) = v16;
  if (!v16)
  {
LABEL_37:
    free(v15);
    goto LABEL_38;
  }

  v17 = v16;
  v18 = malloc_type_malloc(8 * a1, 0x10040436913F5uLL);
  *v17 = v18;
  if (!v18)
  {
LABEL_36:
    free(*(v15 + 96));
    goto LABEL_37;
  }

  for (i = 0; i != a1; ++i)
  {
    v20 = strlen(*(a2 + 8 * i));
    *(*v17 + i) = malloc_type_malloc(v20 + 1, 0x19A17AEAuLL);
    v21 = *v17;
    if (!*(*v17 + i))
    {
      if (!i)
      {
LABEL_35:
        free(v21);
        goto LABEL_36;
      }

      for (j = 0; j != i; ++j)
      {
        free(*(*v17 + j));
      }

LABEL_34:
      v21 = *v17;
      goto LABEL_35;
    }

    strcpy(*(*v17 + i), *(a2 + 8 * i));
  }

  CFRetain(a3);
  v17[1] = a3;
  CFRetain(a4);
  v17[2] = a4;
  if (!a5)
  {
    v17[3] = 0;
    goto LABEL_30;
  }

  v22 = malloc_type_malloc(8 * a1, 0x2004093837F09uLL);
  v17[3] = v22;
  if (!v22)
  {
    v34 = 0;
    do
    {
      free(*(*v17 + v34++));
    }

    while (a1 != v34);
    goto LABEL_34;
  }

  for (k = 0; k != a1; ++k)
  {
    v24 = *(a5 + 8 * k);
    if (v24)
    {
      CFRetain(*(a5 + 8 * k));
    }

    *(v17[3] + k) = v24;
  }

LABEL_30:
  *(v15 + 64) = deviceN_get_md5(v15);
  *(v15 + 72) = v26;
  v33 = CGColorSpaceCreateWithState(v15, v26, v27, v28, v29, v30, v31, v32);
  if (atomic_fetch_add_explicit(v15, 0xFFFFFFFF, memory_order_relaxed) == 1)
  {
    color_space_state_dealloc(v15);
  }

LABEL_39:
  if (v33)
  {
    *(v33 + 24) = color_space_state_register(*(v33 + 24));
  }

  return v33;
}

void *deviceN_create_default_color_components(uint64_t a1)
{
  v2 = 8 * a1;
  v3 = malloc_type_malloc(8 * a1 + 8, 0x100004000313F17uLL);
  v4 = v3;
  if (v3)
  {
    memset_pattern16(v3, &unk_1844F0670, v2);
    v4[a1] = 0x3FF0000000000000;
  }

  return v4;
}

uint64_t deviceN_get_md5(void *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  *md = 0;
  v21 = 0;
  v2 = malloc_type_malloc(0x5CuLL, 0x100004034A301B9uLL);
  CC_MD5_Init(v2);
  if (v2)
  {
    CC_MD5_Update(v2, a1 + 3, 4u);
    v3 = a1 + 6;
    CC_MD5_Update(v2, a1 + 6, 8u);
  }

  else
  {
    v3 = a1 + 6;
  }

  v4 = a1[12];
  v5 = a1[6];
  if (v5)
  {
    for (i = 0; i < v5; ++i)
    {
      if (v2)
      {
        v7 = strlen(*(*v4 + 8 * i));
        md5_update(v2, *(*v4 + 8 * i), v7);
        v5 = *v3;
      }
    }
  }

  v8 = v4[1];
  if (!v8)
  {
    v10 = 0;
    if (!v2)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v9 = *(v8 + 24);
  if (v9)
  {
    v10 = (v9 + 64);
  }

  else
  {
    v10 = 0;
  }

  if (v2)
  {
LABEL_14:
    CC_MD5_Update(v2, v10, 0x10u);
  }

LABEL_15:
  if (v4[3])
  {
    v11 = *v3;
    if (*v3)
    {
      for (j = 0; j < v11; ++j)
      {
        v13 = *(v4[3] + 8 * j);
        if (v13)
        {
          v14 = *(v13 + 24);
          if (v14)
          {
            v15 = (v14 + 64);
          }

          else
          {
            v15 = 0;
          }

          if (!v2)
          {
            continue;
          }
        }

        else
        {
          v15 = 0;
          if (!v2)
          {
            continue;
          }
        }

        CC_MD5_Update(v2, v15, 0x10u);
        v11 = *v3;
      }
    }
  }

  v16 = v4[2];
  if (v16)
  {
    LODWORD(v16) = *(v16 + 16);
  }

  data = v16;
  if (v2)
  {
    CC_MD5_Update(v2, &data, 4u);
    CC_MD5_Final(md, v2);
    v17 = *md;
  }

  else
  {
    v17 = 0;
  }

  free(v2);
  return v17;
}

void deviceN_finalize(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    free(v2);
  }

  v3 = a1[12];
  if (v3)
  {
    CGColorSpaceRelease(*(v3 + 8));
    v4 = *(v3 + 16);
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = *(v3 + 24);
    if (v5)
    {
      if (a1[6])
      {
        v6 = 0;
        do
        {
          CGColorSpaceRelease(*(*(v3 + 24) + 8 * v6++));
        }

        while (v6 < a1[6]);
        v5 = *(v3 + 24);
      }

      free(v5);
    }

    v7 = *v3;
    if (*v3)
    {
      if (a1[6])
      {
        v8 = 0;
        do
        {
          free(*(*v3 + 8 * v8++));
        }

        while (v8 < a1[6]);
        v7 = *v3;
      }

      free(v7);
    }
  }
}

uint64_t CGColorSpaceGetTintTransform(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 24);
  v9 = *(v8 + 24);
  if (v9 != 8)
  {
    _CGHandleAssert("CGColorSpaceGetTintTransform", 226, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/ColorSpaces/CGColorSpace_DeviceN.c", "s->state->type == kCGColorSpaceDeviceN", "Colorspace must be DeviceN. type = %d", a6, a7, a8, v9);
  }

  return *(*(v8 + 96) + 16);
}

uint64_t CGColorSpaceGetColorants(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 24);
  v9 = *(v8 + 24);
  if (v9 != 8)
  {
    _CGHandleAssert("CGColorSpaceGetColorants", 233, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/ColorSpaces/CGColorSpace_DeviceN.c", "s->state->type == kCGColorSpaceDeviceN", "Colorspace must be DeviceN. type = %d", a6, a7, a8, v9);
  }

  return *(*(v8 + 96) + 24);
}

uint64_t CGColorSpaceGetNames(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 24);
  v9 = *(v8 + 24);
  if (v9 != 8)
  {
    _CGHandleAssert("CGColorSpaceGetNames", 240, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/ColorSpaces/CGColorSpace_DeviceN.c", "s->state->type == kCGColorSpaceDeviceN", "Colorspace must be DeviceN. type = %d", a6, a7, a8, v9);
  }

  return **(v8 + 96);
}

BOOL splitRotationZonesCondition(uint64_t a1, uint64_t a2, double *a3)
{
  v3 = *(a1 + 168);
  v4 = v3 + -360.0;
  if (v3 <= 350.0)
  {
    v4 = *(a1 + 168);
  }

  v5 = *(a2 + 168);
  if (v5 > 350.0)
  {
    v5 = v5 + -360.0;
  }

  if (v4 - *a3 >= 10.0)
  {
    __assert_rtn("splitRotationZonesCondition", "CPZoneMaker.m", 1123, "rotation1 - *minRotation < SAME_ROTATION_ZONE_RANGE");
  }

  v6 = v5 - *a3;
  if (v6 > 10.0)
  {
    *a3 = v5;
  }

  return v6 > 10.0;
}

uint64_t compareByRotation(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 168);
  if (v2 > 350.0)
  {
    v2 = v2 + -360.0;
  }

  v3 = *(*a2 + 168);
  v4 = v3 + -360.0;
  if (v3 <= 350.0)
  {
    v4 = *(*a2 + 168);
  }

  if (v2 < v4)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v2 > v4;
  }
}

uint64_t findZone(CGFloat *a1, void *a2, id *a3)
{
  while (1)
  {
    v3 = a3;
    v4 = a2;
    v5 = a1;
    v6 = __sincos_stret(a1[21] * 0.0174532925);
    v7 = *v5;
    v8 = v5[1];
    v21.size.width = v5[2];
    v21.size.height = v5[3];
    v19.a = v6.__cosval;
    v19.b = v6.__sinval;
    v19.c = -v6.__sinval;
    v19.d = v6.__cosval;
    v19.tx = 0.0;
    v19.ty = 0.0;
    v21.origin.x = v7;
    v21.origin.y = v8;
    v22 = CGRectApplyAffineTransform(v21, &v19);
    v23 = CGRectInset(v22, v22.size.width * 0.1, v22.size.height * 0.3);
    x = v23.origin.x;
    y = v23.origin.y;
    width = v23.size.width;
    height = v23.size.height;
    if (!*v3)
    {
      break;
    }

    result = [*v3 count];
    if (!result)
    {
      return result;
    }

    v14 = result;
    v15 = 0;
    while (1)
    {
      v16 = [*v3 childAtIndex:v15];
      result = [v16 canContain:{x, y, width, height}];
      if (result)
      {
        break;
      }

      v15 = (v15 + 1);
      if (v14 == v15)
      {
        return result;
      }
    }

LABEL_12:
    *v3 = v16;
    a1 = v5;
    a2 = v4;
    a3 = v3;
  }

  result = [v4 count];
  v17 = result;
  if (result)
  {
    v18 = 0;
    while (1)
    {
      v16 = [v4 objectAtIndex:v18];
      result = [v16 canContain:{x, y, width, height}];
      if (result)
      {
        break;
      }

      if (v17 == ++v18)
      {
        return result;
      }
    }

    goto LABEL_12;
  }

  return result;
}

uint64_t continueZone(int a1, CGFloat *a2, uint64_t a3)
{
  v6 = __sincos_stret(a2[21] * 0.0174532925);
  v7 = *a2;
  v8 = a2[1];
  v19.size.width = a2[2];
  v19.size.height = a2[3];
  v18.a = v6.__cosval;
  v18.b = v6.__sinval;
  v18.c = -v6.__sinval;
  v18.d = v6.__cosval;
  v18.tx = 0.0;
  v18.ty = 0.0;
  v19.origin.x = v7;
  v19.origin.y = v8;
  v20 = CGRectApplyAffineTransform(v19, &v18);
  v21 = CGRectInset(v20, v20.size.width * 0.1, v20.size.height * 0.3);
  x = v21.origin.x;
  y = v21.origin.y;
  width = v21.size.width;
  height = v21.size.height;
  v13 = 0;
  if ([*a3 canContain:?])
  {
    v14 = [*a3 count];
    if (!v14)
    {
      return 1;
    }

    v15 = v14;
    v16 = 0;
    while (1)
    {
      v13 = [*a3 childAtIndex:v16];
      if ([v13 canContain:{x, y, width, height}])
      {
        break;
      }

      v16 = (v16 + 1);
      if (v15 == v16)
      {
        return 1;
      }
    }
  }

  result = 0;
  *a3 = v13;
  *(a3 + 8) = a1;
  return result;
}

uint64_t cutBordersCrossingText(CGFloat *a1, void *a2)
{
  v4 = __sincos_stret(a1[21] * 0.0174532925);
  v5 = *a1;
  v6 = a1[1];
  v84.size.width = a1[2];
  v84.size.height = a1[3];
  v82 = a1;
  v83.a = v4.__cosval;
  v83.b = v4.__sinval;
  v83.c = -v4.__sinval;
  v83.d = v4.__cosval;
  v83.tx = 0.0;
  v83.ty = 0.0;
  v84.origin.x = v5;
  v84.origin.y = v6;
  v85 = CGRectApplyAffineTransform(v84, &v83);
  y = v85.origin.y;
  x = v85.origin.x;
  height = v85.size.height;
  width = v85.size.width;
  v7 = [a2 count];
  v8 = v7;
  if (v7)
  {
    v86.size.height = height;
    v86.size.width = width;
    v86.origin.y = y;
    v86.origin.x = x;
    v87 = CGRectInset(v86, width * 0.1, height * 0.3);
    v9 = v87.origin.x;
    v10 = v87.origin.y;
    v11 = v87.size.width;
    v12 = v87.size.height;
    v68 = a2;
    v71 = v87.size.height;
    do
    {
      v13 = v8 - 1;
      v14 = [a2 objectAtIndex:{v8 - 1, v68}];
      [v14 bounds];
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v88.origin.x = v9;
      v88.origin.y = v10;
      v88.size.width = v11;
      v88.size.height = v12;
      v89.origin.x = v16;
      v89.origin.y = v18;
      v89.size.width = v20;
      v89.size.height = v22;
      if (CGRectIntersectsRect(v88, v89))
      {
        v23 = [objc_msgSend(v14 "page")];
        v24 = *(v82 + 16);
        if (v24)
        {
          v25 = v23;
          v26 = 0;
          while (1)
          {
            while (1)
            {
              v27 = (*(v25 + 2224) + 52 * v24);
              v28 = v27[2];
              if (v28 && v26 < v28)
              {
                break;
              }

              v26 = 0;
              v24 = *v27;
              if (!v24)
              {
                goto LABEL_20;
              }
            }

            v30 = v27[v26 + 3];
            if (v30 >= *(v25 + 2152))
            {
              break;
            }

            v31 = *(v25 + 2112) + 216 * v30;
            v32 = *(v31 + 96);
            if (!v32)
            {
              break;
            }

            v33 = *(v31 + 104);
            eoFillb = *(v31 + 104) == 0;
            v35 = __sincos_stret(v82[21] * 0.0174532925);
            v34.f64[0] = v35.__cosval;
            v36.f64[0] = -v35.__sinval;
            v36.f64[1] = v35.__cosval;
            v34.f64[1] = v35.__sinval;
            v69 = v82[1];
            v70 = v36;
            v72 = *v82;
            v73 = vmulq_n_f64(v36, v69);
            v81 = v34;
            v37 = vaddq_f64(vmlaq_n_f64(v73, v34, *v82), 0);
            v34.f64[0] = v37.f64[1];
            a2 = v68;
            if (CGPathContainsPoint(v32, 0, *(&v34 - 8), eoFillb))
            {
              eoFill = v72 + v82[2];
              v38 = vaddq_f64(vmlaq_n_f64(v73, v81, eoFill), 0);
              v39 = v38.y;
              if (CGPathContainsPoint(v32, 0, v38, v33 == 0))
              {
                v40 = vdupq_lane_s64(*&eoFill, 0);
                eoFilla = vmulq_n_f64(v70, v69 + v82[3]);
                v41 = vaddq_f64(vmlaq_f64(eoFilla, v40, v81), 0);
                v42 = v41.y;
                if (CGPathContainsPoint(v32, 0, v41, v33 == 0))
                {
                  ++v26;
                  v43 = vaddq_f64(vmlaq_n_f64(eoFilla, v81, *v82), 0);
                  v44 = v43.y;
                  if (CGPathContainsPoint(v32, 0, v43, v33 == 0))
                  {
                    continue;
                  }
                }
              }
            }

            goto LABEL_58;
          }
        }

LABEL_20:
        v45 = v11;
        v46 = v10;
        v47 = v9;
        v48 = [v14 isHorizontal];
        v49 = v48;
        v83.a = 0.0;
        v83.b = 0.0;
        if (v48)
        {
          v50 = v16;
        }

        else
        {
          v50 = v18;
        }

        if (v48)
        {
          v51 = v20;
        }

        else
        {
          v51 = v22;
        }

        v52 = x;
        if (!v48)
        {
          v52 = y;
        }

        v53 = width;
        if (!v48)
        {
          v53 = height;
        }

        v54 = CGIntervalExclusion(&v83, v50, v51, v52, v53);
        if (fabs(v54) == INFINITY)
        {
          [v14 removeFromArray];
        }

        else
        {
          if (v49)
          {
            v56 = v54;
          }

          else
          {
            v56 = v16;
          }

          if (v49)
          {
            v57 = v18;
          }

          else
          {
            v57 = v54;
          }

          if (v49)
          {
            v58 = v55;
          }

          else
          {
            v58 = v20;
          }

          if (v49)
          {
            v59 = v22;
          }

          else
          {
            v59 = v55;
          }

          [v14 setBounds:{v56, v57, v58, v59}];
          a = v83.a;
          if (fabs(v83.a) != INFINITY)
          {
            v61 = [v14 copy];
            v62 = v61;
            b = v83.b;
            if (v49)
            {
              v64 = a;
            }

            else
            {
              v64 = v16;
            }

            if (v49)
            {
              v65 = v18;
            }

            else
            {
              v65 = a;
            }

            if (v49)
            {
              v66 = v83.b;
            }

            else
            {
              v66 = v20;
            }

            if (v49)
            {
              b = v22;
            }

            [v61 setBounds:{v64, v65, v66, b}];
            [v62 addToArray:a2 atIndex:v8];
          }
        }

        v9 = v47;
        v10 = v46;
        v11 = v45;
        v12 = v71;
      }

LABEL_58:
      --v8;
    }

    while (v13);
  }

  return 1;
}

void findLineSegments(void *a1, int *a2, __n128 a3, double a4, double a5)
{
  v7 = a1 + 2;
  v8 = *(a1 + 1);
  v9 = a1 + 4;
  v10 = *(a1 + 4);
  v11 = *(a1 + 5);
  v12 = *a2;
  if ((*a2 - 1) < 3)
  {
    v13 = dword_18439D060[v12] - 1;
    v14 = *(a2 + 1);
    v15 = a1[6];
    v16 = *(a1 + 14);
    *(a1 + 14) = v16 + 1;
    v8 = *(v14 + 16 * v13);
    *(v15 + 16 * v16) = v8;
LABEL_6:
    v18 = *(&v8 + 1);
    a3.n128_f64[0] = vabdd_f64(*&v8, v10);
    a4 = vabdd_f64(*(&v8 + 1), v11);
    a5 = 2.0;
    if (a3.n128_f64[0] > 2.0 || a4 > 2.0)
    {
      v66 = v8;
      v20 = [*a1 copy];
      [v20 makeLineFromVertex:v10 toVertex:{v11, *&v66, v18}];
      v21 = [[CPZoneBorder alloc] initWithGraphicObject:v20];

      v8 = v66;
      if (v21)
      {
        if ([(CPZoneBorder *)v21 isHorizontal])
        {
          v22 = *&v66 - v10;
          if (*&v66 - v10 <= 0.0)
          {
            v23 = v22 < 0.0;
          }

          else
          {
            v23 = 3;
          }

          v24 = 8;
        }

        else
        {
          v22 = v18 - v11;
          if (v18 - v11 <= 0.0)
          {
            if (v22 >= 0.0)
            {
              v23 = 0;
            }

            else
            {
              v23 = 4;
            }
          }

          else
          {
            v23 = 2;
          }

          v24 = 9;
        }

        [(CPZoneBorder *)v21 addToArray:a1[v24], v22];
        v25 = objc_alloc_init(CPZoneBorderNeighbor);
        [(CPZoneBorderNeighbor *)v25 setNeighborShape:*a1];
        [(CPZoneBorderNeighbor *)v25 setShapeSide:v23];
        [(CPZoneBorder *)v21 addNeighbor:v25];

        v8 = v66;
      }
    }

    *v9 = v8;
    goto LABEL_24;
  }

  if (v12 == 4)
  {
    goto LABEL_6;
  }

  if (v12)
  {
    goto LABEL_25;
  }

  v17 = *(a2 + 1);
  *v7 = *v17;
  a3 = *v17;
  *v9 = *v17;
LABEL_24:
  v12 = *a2;
LABEL_25:
  v26 = *(a1 + 2) + 1;
  *(a1 + 2) = v26;
  if ((v12 | 4) != 4 && v26 < *(a1 + 3))
  {
    return;
  }

  v27 = [a1[8] count];
  v28 = [a1[9] count];
  v29 = *(a1 + 14);
  if (v29)
  {
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = a1[6];
    v35 = *v34;
    v36 = v34[1];
    v37 = v29 + 1;
    do
    {
      v38 = v35;
      v39 = v36;
      if (v30 + 1 < v29)
      {
        ++v30;
      }

      else
      {
        v30 = 0;
      }

      v40 = &v34[2 * v30];
      v35 = *v40;
      v36 = v40[1];
      if (v38 == *v40 && v39 == v36)
      {
        v46 = v32;
      }

      else
      {
        v42 = v38 - v35 > 0.0;
        v43 = vabdd_f64(v38, v35);
        v44 = v39 - v36;
        v45 = vabdd_f64(v39, v36);
        LODWORD(v46) = 2 * v42;
        if (v44 > 0.0)
        {
          v47 = 1;
        }

        else
        {
          v47 = 3;
        }

        if (v43 <= v45)
        {
          v46 = v47;
        }

        else
        {
          v46 = v46;
        }

        if (v31)
        {
          v48 = v46 - v32;
          if (v46 - v32 == -3)
          {
            v49 = 1;
          }

          else
          {
            v49 = v46 - v32;
          }

          if (v48 == 3)
          {
            v50 = -1;
          }

          else
          {
            v50 = v49;
          }

          v33 += v50;
        }

        v31 = 1;
      }

      v32 = v46;
      --v37;
    }

    while (v37);
    if ((v33 & 0x80000000) == 0)
    {
      if (v33 <= 3)
      {
        v51 = *(a1 + 20);
        if (v27 > v51)
        {
          v52 = v27 - v51;
          do
          {
            [objc_msgSend(objc_msgSend(a1[8] objectAtIndex:{v51++), "neighborAtIndex:", 0), "setShapeSide:", 0}];
            --v52;
          }

          while (v52);
        }

        v53 = *(a1 + 21);
        if (v28 > v53)
        {
          v54 = v28 - v53;
          do
          {
            [objc_msgSend(objc_msgSend(a1[9] objectAtIndex:{v53++), "neighborAtIndex:", 0), "setShapeSide:", 0}];
            --v54;
          }

          while (v54);
        }
      }

      goto LABEL_79;
    }

    v55 = *(a1 + 20);
    if (v27 > v55)
    {
      v56 = v27 - v55;
      while (1)
      {
        v57 = [objc_msgSend(a1[8] objectAtIndex:{v55), "neighborAtIndex:", 0}];
        v58 = [v57 shapeSide];
        if (v58 == 3)
        {
          break;
        }

        if (v58 == 1)
        {
          v59 = 3;
LABEL_69:
          [v57 setShapeSide:v59];
        }

        ++v55;
        if (!--v56)
        {
          goto LABEL_71;
        }
      }

      v59 = 1;
      goto LABEL_69;
    }

LABEL_71:
    v60 = *(a1 + 21);
    if (v28 > v60)
    {
      v61 = v28 - v60;
      while (1)
      {
        v62 = [objc_msgSend(a1[9] objectAtIndex:{v60), "neighborAtIndex:", 0}];
        v63 = [v62 shapeSide];
        if (v63 == 2)
        {
          break;
        }

        if (v63 == 4)
        {
          v64 = 2;
LABEL_77:
          [v62 setShapeSide:v64];
        }

        ++v60;
        if (!--v61)
        {
          goto LABEL_79;
        }
      }

      v64 = 4;
      goto LABEL_77;
    }
  }

LABEL_79:
  if (*a2)
  {
    v65 = 0;
  }

  else
  {
    *a1[6] = *v7;
    v65 = 1;
  }

  *(a1 + 14) = v65;
  *(a1 + 20) = v27;
  *(a1 + 21) = v28;
}

uint64_t canBeMerged(void *a1)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [a1 zoneGraphicType] == 2 && (objc_msgSend(a1, "lineWidth"), v2 == 0.0))
  {
    return [a1 hasStroke] ^ 1;
  }

  else
  {
    return 0;
  }
}

UInt8 *read_string(__CFReadStream *a1)
{
  *buffer = 0;
  if (!CFReadStreamRead(a1, buffer, 4) || !*buffer)
  {
    return 0;
  }

  v2 = bswap32(*buffer);
  v3 = malloc_type_malloc(v2, 0x3ADB4B1BuLL);
  if (v3)
  {
    CFReadStreamRead(a1, v3, v2);
  }

  return v3;
}

void cmap_release(uint64_t a1)
{
  if (a1 && atomic_fetch_add_explicit(a1, 0xFFFFFFFF, memory_order_relaxed) == 1)
  {
    free(*(a1 + 8));
    free(*(a1 + 16));
    cmap_release(*(a1 + 32));
    cmap_csr_set_release(*(a1 + 48));

    free(a1);
  }
}

char *cmap_set_name(uint64_t a1, char *__s)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    free(v4);
    *(a1 + 40) = 0;
  }

  v5 = strlen(__s);
  result = malloc_type_malloc(v5 + 1, 0xB2120583uLL);
  *(a1 + 8) = result;
  if (result)
  {
    strcpy(result, __s);
    result = strcmp(__s, "Identity-H");
    if (!result || (result = strcmp(__s, "Identity-V"), !result))
    {
      *(a1 + 40) = 1;
    }
  }

  return result;
}

uint64_t cmap_set_ros(uint64_t a1, char *__s, const char *a3, int a4)
{
  v8 = *(a1 + 16);
  if (v8)
  {
    free(v8);
  }

  v9 = strlen(__s);
  v10 = v9 + strlen(a3);
  v11 = malloc_type_malloc(v10 + 35, 0xDC3E2C2uLL);
  *(a1 + 16) = v11;
  return snprintf_l(v11, v10 + 35, 0, "%s-%s-%u", __s, a3, a4);
}

void cmap_set_used_cmap(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 32))
  {
    if (a2 && *(a2 + 8))
    {
      atomic_fetch_add_explicit(a2, 1u, memory_order_relaxed);
      *(a1 + 32) = a2;
      if (!*(a1 + 48))
      {
        v4 = cmap_csr_set_create();
        *(a1 + 48) = v4;
        if (v4)
        {
          v5 = *(a2 + 48);
          if (v5)
          {
            v6 = v4;
            Count = CFArrayGetCount(*(v5 + 8));
            if (Count)
            {
              v8 = Count;
              for (i = 0; i != v8; ++i)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(*(v5 + 8), i);
                cmap_csr_set_add_codespace_range(v6, *ValueAtIndex, *(ValueAtIndex + 1), *(ValueAtIndex + 2));
              }
            }

            v11 = *(v5 + 16);
            if (v11)
            {
              v12 = *(v6 + 16);
              if (!v12)
              {
                operator new();
              }

              v13 = malloc_type_malloc(2 * *(v11 + 40), 0x1000040BDFB0063uLL);
              if (v13)
              {
                v19 = v13;
                if (*v11)
                {
                  v20 = 0;
                  do
                  {
                    unichars = cmap_bf_set_get_unichars(v11, v20, v19, v14, v15, v16, v17, v18);
                    cmap_bf_set_add_range(v12, v20, v20, unichars, v19);
                    ++v20;
                  }

                  while (v20 < *v11);
                }

                free(v19);
              }
            }
          }
        }
      }
    }

    else
    {
      *(a1 + 32) = 0;
    }
  }
}

uint64_t cmap_add_cid_range(uint64_t result, unsigned __int8 a2, unsigned int a3, uint64_t a4, int a5)
{
  if (result)
  {
    v9 = result;
    result = check_dimension(a2, a3, a4);
    if (result)
    {
      result = find_csr(v9, a2, a3, a4);
      if (result)
      {
        v10 = result;
        v11 = *(result + 16);
        if (!v11)
        {
          v12 = *result;
          v13 = v12 > 4 || ((1 << v12) & 0x16) == 0;
          if (v13 || (result = malloc_type_calloc(1uLL, 0x28uLL, 0x10200401AE633E8uLL)) == 0)
          {
            *(v10 + 16) = 0;
            return result;
          }

          v11 = result;
          *result = v12;
          *(result + 32) = 0;
          *(v10 + 16) = result;
        }

        result = add_range(v11, a3 | (a4 << 32), a5);
        *(v11 + 32) = 1;
      }
    }
  }

  return result;
}

uint64_t cmap_add_notdef_range(uint64_t result, unsigned __int8 a2, unsigned int a3, uint64_t a4, int a5)
{
  if (result)
  {
    v9 = result;
    result = check_dimension(a2, a3, a4);
    if (result)
    {
      result = find_csr(v9, a2, a3, a4);
      if (result)
      {
        v10 = result;
        v11 = *(result + 24);
        if (!v11)
        {
          v12 = *result;
          if (v12 > 4 || ((1 << v12) & 0x16) == 0)
          {
            v11 = 0;
          }

          else
          {
            v14 = malloc_type_calloc(1uLL, 0x28uLL, 0x10200401AE633E8uLL);
            v11 = v14;
            if (v14)
            {
              *v14 = v12;
              v14[32] = 0;
            }
          }

          *(v10 + 24) = v11;
        }

        result = add_range(v11, a3 | (a4 << 32), a5);
        *(v11 + 32) = 1;
      }
    }
  }

  return result;
}

unint64_t cmap_convert(uint64_t a1, unsigned __int16 *a2, unint64_t a3, _WORD *a4, unint64_t *a5)
{
  v5 = a3;
  if (*(a1 + 40) != 1)
  {
    if (!a3)
    {
      return 0;
    }

    v115 = a5;
    v116 = a4;
    v9 = *(a1 + 48);
    v111 = *(a1 + 32);
    v124 = 0;
    v123 = 0;
    v117 = 0;
    v118 = v9 + 1;
    v122 = v9;
    v121 = vdupq_n_s64(0x10uLL);
    while (v9)
    {
      v126 = 0;
      v125 = 0;
      Count = CFArrayGetCount(v9[1]);
      v11 = *v9;
      v120 = Count;
      if (!Count)
      {
        goto LABEL_16;
      }

      v12 = *v118 >= v5 ? v5 : *v118;
      if (v12 < v11)
      {
        goto LABEL_16;
      }

      v60 = 0;
      v61 = *v9;
      v112 = v12;
      v113 = *v9;
LABEL_95:
      v62 = 0;
      v114 = v60;
      v119 = vdupq_n_s64((v11 + v60) - 1);
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v9[1], v62);
        v64 = *ValueAtIndex;
        if (v61 == v64)
        {
          v65 = ValueAtIndex;
          if (v61)
          {
            v66 = *(ValueAtIndex + 1);
            v67 = xmmword_18439C700;
            v68 = xmmword_18439C710;
            v69 = xmmword_18439C720;
            v70 = xmmword_18439C730;
            v71 = xmmword_18439C740;
            v72 = xmmword_18439C750;
            v73 = v129;
            v74 = xmmword_18439C760;
            v75 = 15;
            v76 = 8 * v61 - 8;
            v77 = (v61 + 15) & 0x1F0;
            v78 = xmmword_18439C670;
            do
            {
              v79 = vmovn_s64(vcgeq_u64(v119, v78));
              if (vuzp1_s8(vuzp1_s16(v79, *v67.i8), *v67.i8).u8[0])
              {
                *(v73 - 7) = v66 >> v76;
              }

              v80 = v75 - 15;
              if (vuzp1_s8(vuzp1_s16(v79, *&v67), *&v67).i8[1])
              {
                *(v73 - 6) = v66 >> (8 * (v61 + (v80 ^ 0xFE)));
              }

              if (vuzp1_s8(vuzp1_s16(*&v67, vmovn_s64(vcgeq_u64(v119, *&v74))), *&v67).i8[2])
              {
                *(v73 - 5) = v66 >> (8 * (v61 + (v80 ^ 0xFD)));
                *(v73 - 4) = v66 >> (8 * (v61 + (v80 ^ 0xFC)));
              }

              v81 = vmovn_s64(vcgeq_u64(v119, v72));
              if (vuzp1_s8(*&v67, vuzp1_s16(v81, *&v67)).i32[1])
              {
                *(v73 - 3) = v66 >> (8 * (v61 + (v80 ^ 0xFB)));
              }

              if (vuzp1_s8(*&v67, vuzp1_s16(v81, *&v67)).i8[5])
              {
                *(v73 - 2) = v66 >> (8 * (v61 + (v80 ^ 0xFA)));
              }

              if (vuzp1_s8(*&v67, vuzp1_s16(*&v67, vmovn_s64(vcgeq_u64(v119, *&v71)))).i8[6])
              {
                *(v73 - 1) = v66 >> (8 * (v61 + (v80 ^ 0xF9)));
                *v73 = v66 >> (8 * (v61 + (v80 ^ 0xF8)));
              }

              v82 = vmovn_s64(vcgeq_u64(v119, v70));
              if (vuzp1_s8(vuzp1_s16(v82, *v67.i8), *v67.i8).u8[0])
              {
                v73[1] = v66 >> (8 * (v61 + (v80 ^ 0xF7)));
              }

              if (vuzp1_s8(vuzp1_s16(v82, *&v67), *&v67).i8[1])
              {
                v73[2] = v66 >> (8 * (v61 + (v80 ^ 0xF6)));
              }

              if (vuzp1_s8(vuzp1_s16(*&v67, vmovn_s64(vcgeq_u64(v119, *&v69))), *&v67).i8[2])
              {
                v73[3] = v66 >> (8 * (v61 + (v80 ^ 0xF5)));
                v73[4] = v66 >> (8 * (v61 + (v80 ^ 0xF4)));
              }

              v83 = vmovn_s64(vcgeq_u64(v119, v68));
              if (vuzp1_s8(*&v67, vuzp1_s16(v83, *&v67)).i32[1])
              {
                v73[5] = v66 >> (8 * (v61 + (v80 ^ 0xF3)));
              }

              if (vuzp1_s8(*&v67, vuzp1_s16(v83, *&v67)).i8[5])
              {
                v73[6] = v66 >> (8 * (v61 + (v80 ^ 0xF2)));
              }

              if (vuzp1_s8(*&v67, vuzp1_s16(*&v67, vmovn_s64(vcgeq_u64(v119, *&v67)))).i8[6])
              {
                v73[7] = v66 >> (8 * (v61 + (v80 ^ 0xF1)));
                v73[8] = v66 >> (8 * (v61 + (v80 ^ 0xF0)));
              }

              v84 = vdupq_n_s64(0x10uLL);
              v72 = vaddq_s64(v72, v84);
              v74 = vaddq_s64(v74, v84);
              v78 = vaddq_s64(v78, v84);
              v71 = vaddq_s64(v71, v84);
              v70 = vaddq_s64(v70, v84);
              v69 = vaddq_s64(v69, v84);
              v68 = vaddq_s64(v68, v84);
              v67 = vaddq_s64(v67, v84);
              v76 += 0x80;
              v75 += 16;
              v73 += 16;
              v77 -= 16;
            }

            while (v77);
            v85 = xmmword_18439C700;
            v86 = xmmword_18439C710;
            v87 = xmmword_18439C720;
            v88 = xmmword_18439C730;
            v89 = xmmword_18439C740;
            v90 = xmmword_18439C750;
            v91 = xmmword_18439C760;
            v92 = v128;
            v93 = xmmword_18439C670;
            v94 = 15;
            v95 = 8 * v61 - 8;
            v96 = (v61 + 15) & 0x1F0;
            v97 = *(ValueAtIndex + 2);
            do
            {
              v98 = vmovn_s64(vcgeq_u64(v119, v93));
              if (vuzp1_s8(vuzp1_s16(v98, *v85.i8), *v85.i8).u8[0])
              {
                *(v92 - 7) = v97 >> v95;
              }

              v99 = v94 - 15;
              if (vuzp1_s8(vuzp1_s16(v98, *&v85), *&v85).i8[1])
              {
                *(v92 - 6) = v97 >> (8 * (v61 + (v99 ^ 0xFE)));
              }

              if (vuzp1_s8(vuzp1_s16(*&v85, vmovn_s64(vcgeq_u64(v119, *&v91))), *&v85).i8[2])
              {
                *(v92 - 5) = v97 >> (8 * (v61 + (v99 ^ 0xFD)));
                *(v92 - 4) = v97 >> (8 * (v61 + (v99 ^ 0xFC)));
              }

              v100 = vmovn_s64(vcgeq_u64(v119, v90));
              if (vuzp1_s8(*&v85, vuzp1_s16(v100, *&v85)).i32[1])
              {
                *(v92 - 3) = v97 >> (8 * (v61 + (v99 ^ 0xFB)));
              }

              if (vuzp1_s8(*&v85, vuzp1_s16(v100, *&v85)).i8[5])
              {
                *(v92 - 2) = v97 >> (8 * (v61 + (v99 ^ 0xFA)));
              }

              if (vuzp1_s8(*&v85, vuzp1_s16(*&v85, vmovn_s64(vcgeq_u64(v119, *&v89)))).i8[6])
              {
                *(v92 - 1) = v97 >> (8 * (v61 + (v99 ^ 0xF9)));
                *v92 = v97 >> (8 * (v61 + (v99 ^ 0xF8)));
              }

              v101 = vmovn_s64(vcgeq_u64(v119, v88));
              if (vuzp1_s8(vuzp1_s16(v101, *v85.i8), *v85.i8).u8[0])
              {
                v92[1] = v97 >> (8 * (v61 + (v99 ^ 0xF7)));
              }

              if (vuzp1_s8(vuzp1_s16(v101, *&v85), *&v85).i8[1])
              {
                v92[2] = v97 >> (8 * (v61 + (v99 ^ 0xF6)));
              }

              if (vuzp1_s8(vuzp1_s16(*&v85, vmovn_s64(vcgeq_u64(v119, *&v87))), *&v85).i8[2])
              {
                v92[3] = v97 >> (8 * (v61 + (v99 ^ 0xF5)));
                v92[4] = v97 >> (8 * (v61 + (v99 ^ 0xF4)));
              }

              v102 = vmovn_s64(vcgeq_u64(v119, v86));
              if (vuzp1_s8(*&v85, vuzp1_s16(v102, *&v85)).i32[1])
              {
                v92[5] = v97 >> (8 * (v61 + (v99 ^ 0xF3)));
              }

              if (vuzp1_s8(*&v85, vuzp1_s16(v102, *&v85)).i8[5])
              {
                v92[6] = v97 >> (8 * (v61 + (v99 ^ 0xF2)));
              }

              if (vuzp1_s8(*&v85, vuzp1_s16(*&v85, vmovn_s64(vcgeq_u64(v119, *&v85)))).i8[6])
              {
                v92[7] = v97 >> (8 * (v61 + (v99 ^ 0xF1)));
                v92[8] = v97 >> (8 * (v61 + (v99 ^ 0xF0)));
              }

              v103 = vdupq_n_s64(0x10uLL);
              v90 = vaddq_s64(v90, v103);
              v91 = vaddq_s64(v91, v103);
              v93 = vaddq_s64(v93, v103);
              v89 = vaddq_s64(v89, v103);
              v88 = vaddq_s64(v88, v103);
              v87 = vaddq_s64(v87, v103);
              v86 = vaddq_s64(v86, v103);
              v85 = vaddq_s64(v85, v103);
              v95 += 0x80;
              v94 += 16;
              v92 += 16;
              v96 -= 16;
            }

            while (v96);
            v104 = 0;
            while (1)
            {
              v105 = *(a2 + v104);
              if (v105 < v127[v104 + 4] || v105 > v127[v104])
              {
                break;
              }

              if (v61 == ++v104)
              {
                goto LABEL_161;
              }
            }
          }

          else
          {
            v104 = 0;
          }

          if (v104 == v61)
          {
            break;
          }
        }

        ++v62;
        v9 = v122;
        if (v62 == v120)
        {
          v60 = v114 + 1;
          LOBYTE(v11) = v113;
          if (v61++ != v112)
          {
            goto LABEL_95;
          }

          LODWORD(v11) = *v122;
LABEL_16:
          v13 = v5;
          if (v5 >= v11)
          {
            v14 = CFArrayGetCount(v9[1]);
            if (v14)
            {
              v15 = v14;
              v16 = 0;
              v17 = 0;
              v18 = 0;
              do
              {
                v14 = CFArrayGetValueAtIndex(v122[1], v17);
                v19 = *v14;
                if (v5 >= v19)
                {
                  if (*v14)
                  {
                    v20 = (v19 + 15) & 0x1F0;
                    v21 = vdupq_n_s64(v19 - 1);
                    v22 = 8 * v19 - 8;
                    v23 = v129;
                    v24 = *(v14 + 1);
                    v25 = 15;
                    v26 = v22;
                    v27 = v20;
                    v28 = xmmword_18439C670;
                    v29 = xmmword_18439C760;
                    v30 = xmmword_18439C750;
                    v31 = xmmword_18439C740;
                    v32 = xmmword_18439C730;
                    v33 = xmmword_18439C720;
                    v34 = xmmword_18439C710;
                    v35 = xmmword_18439C700;
                    do
                    {
                      v36 = vmovn_s64(vcgeq_u64(v21, v28));
                      if (vuzp1_s8(vuzp1_s16(v36, *v21.i8), *v21.i8).u8[0])
                      {
                        *(v23 - 7) = v24 >> v26;
                      }

                      v37 = v25 - 15;
                      if (vuzp1_s8(vuzp1_s16(v36, *&v21), *&v21).i8[1])
                      {
                        *(v23 - 6) = v24 >> (8 * ((v37 ^ 0xFE) + v19));
                      }

                      if (vuzp1_s8(vuzp1_s16(*&v21, vmovn_s64(vcgeq_u64(v21, *&v29))), *&v21).i8[2])
                      {
                        *(v23 - 5) = v24 >> (8 * ((v37 ^ 0xFD) + v19));
                        *(v23 - 4) = v24 >> (8 * ((v37 ^ 0xFC) + v19));
                      }

                      v38 = vmovn_s64(vcgeq_u64(v21, v30));
                      if (vuzp1_s8(*&v21, vuzp1_s16(v38, *&v21)).i32[1])
                      {
                        *(v23 - 3) = v24 >> (8 * ((v37 ^ 0xFB) + v19));
                      }

                      if (vuzp1_s8(*&v21, vuzp1_s16(v38, *&v21)).i8[5])
                      {
                        *(v23 - 2) = v24 >> (8 * ((v37 ^ 0xFA) + v19));
                      }

                      if (vuzp1_s8(*&v21, vuzp1_s16(*&v21, vmovn_s64(vcgeq_u64(v21, *&v31)))).i8[6])
                      {
                        *(v23 - 1) = v24 >> (8 * ((v37 ^ 0xF9) + v19));
                        *v23 = v24 >> (8 * ((v37 ^ 0xF8) + v19));
                      }

                      v39 = vmovn_s64(vcgeq_u64(v21, v32));
                      if (vuzp1_s8(vuzp1_s16(v39, *v21.i8), *v21.i8).u8[0])
                      {
                        v23[1] = v24 >> (8 * ((v37 ^ 0xF7) + v19));
                      }

                      if (vuzp1_s8(vuzp1_s16(v39, *&v21), *&v21).i8[1])
                      {
                        v23[2] = v24 >> (8 * ((v37 ^ 0xF6) + v19));
                      }

                      if (vuzp1_s8(vuzp1_s16(*&v21, vmovn_s64(vcgeq_u64(v21, *&v33))), *&v21).i8[2])
                      {
                        v23[3] = v24 >> (8 * ((v37 ^ 0xF5) + v19));
                        v23[4] = v24 >> (8 * ((v37 ^ 0xF4) + v19));
                      }

                      v40 = vmovn_s64(vcgeq_u64(v21, v34));
                      if (vuzp1_s8(*&v21, vuzp1_s16(v40, *&v21)).i32[1])
                      {
                        v23[5] = v24 >> (8 * ((v37 ^ 0xF3) + v19));
                      }

                      if (vuzp1_s8(*&v21, vuzp1_s16(v40, *&v21)).i8[5])
                      {
                        v23[6] = v24 >> (8 * ((v37 ^ 0xF2) + v19));
                      }

                      if (vuzp1_s8(*&v21, vuzp1_s16(*&v21, vmovn_s64(vcgeq_u64(v21, *&v35)))).i8[6])
                      {
                        v23[7] = v24 >> (8 * ((v37 ^ 0xF1) + v19));
                        v23[8] = v24 >> (8 * ((v37 ^ 0xF0) + v19));
                      }

                      v30 = vaddq_s64(v30, v121);
                      v29 = vaddq_s64(v29, v121);
                      v28 = vaddq_s64(v28, v121);
                      v31 = vaddq_s64(v31, v121);
                      v32 = vaddq_s64(v32, v121);
                      v26 += 0x80;
                      v33 = vaddq_s64(v33, v121);
                      v25 += 16;
                      v34 = vaddq_s64(v34, v121);
                      v23 += 16;
                      v35 = vaddq_s64(v35, v121);
                      v27 -= 16;
                    }

                    while (v27);
                    v41 = xmmword_18439C700;
                    v42 = xmmword_18439C710;
                    v43 = xmmword_18439C720;
                    v44 = xmmword_18439C730;
                    v45 = xmmword_18439C740;
                    v46 = xmmword_18439C750;
                    v47 = xmmword_18439C760;
                    v48 = xmmword_18439C670;
                    v49 = v128;
                    v50 = 15;
                    v51 = *(v14 + 2);
                    do
                    {
                      v52 = vmovn_s64(vcgeq_u64(v21, v48));
                      if (vuzp1_s8(vuzp1_s16(v52, *v21.i8), *v21.i8).u8[0])
                      {
                        *(v49 - 7) = v51 >> v22;
                      }

                      v53 = v50 - 15;
                      if (vuzp1_s8(vuzp1_s16(v52, *&v21), *&v21).i8[1])
                      {
                        *(v49 - 6) = v51 >> (8 * ((v53 ^ 0xFE) + v19));
                      }

                      if (vuzp1_s8(vuzp1_s16(*&v21, vmovn_s64(vcgeq_u64(v21, *&v47))), *&v21).i8[2])
                      {
                        *(v49 - 5) = v51 >> (8 * ((v53 ^ 0xFD) + v19));
                        *(v49 - 4) = v51 >> (8 * ((v53 ^ 0xFC) + v19));
                      }

                      v54 = vmovn_s64(vcgeq_u64(v21, v46));
                      if (vuzp1_s8(*&v21, vuzp1_s16(v54, *&v21)).i32[1])
                      {
                        *(v49 - 3) = v51 >> (8 * ((v53 ^ 0xFB) + v19));
                      }

                      if (vuzp1_s8(*&v21, vuzp1_s16(v54, *&v21)).i8[5])
                      {
                        *(v49 - 2) = v51 >> (8 * ((v53 ^ 0xFA) + v19));
                      }

                      if (vuzp1_s8(*&v21, vuzp1_s16(*&v21, vmovn_s64(vcgeq_u64(v21, *&v45)))).i8[6])
                      {
                        *(v49 - 1) = v51 >> (8 * ((v53 ^ 0xF9) + v19));
                        *v49 = v51 >> (8 * ((v53 ^ 0xF8) + v19));
                      }

                      v55 = vmovn_s64(vcgeq_u64(v21, v44));
                      if (vuzp1_s8(vuzp1_s16(v55, *v21.i8), *v21.i8).u8[0])
                      {
                        v49[1] = v51 >> (8 * ((v53 ^ 0xF7) + v19));
                      }

                      if (vuzp1_s8(vuzp1_s16(v55, *&v21), *&v21).i8[1])
                      {
                        v49[2] = v51 >> (8 * ((v53 ^ 0xF6) + v19));
                      }

                      if (vuzp1_s8(vuzp1_s16(*&v21, vmovn_s64(vcgeq_u64(v21, *&v43))), *&v21).i8[2])
                      {
                        v49[3] = v51 >> (8 * ((v53 ^ 0xF5) + v19));
                        v49[4] = v51 >> (8 * ((v53 ^ 0xF4) + v19));
                      }

                      v56 = vmovn_s64(vcgeq_u64(v21, v42));
                      if (vuzp1_s8(*&v21, vuzp1_s16(v56, *&v21)).i32[1])
                      {
                        v49[5] = v51 >> (8 * ((v53 ^ 0xF3) + v19));
                      }

                      if (vuzp1_s8(*&v21, vuzp1_s16(v56, *&v21)).i8[5])
                      {
                        v49[6] = v51 >> (8 * ((v53 ^ 0xF2) + v19));
                      }

                      if (vuzp1_s8(*&v21, vuzp1_s16(*&v21, vmovn_s64(vcgeq_u64(v21, *&v41)))).i8[6])
                      {
                        v49[7] = v51 >> (8 * ((v53 ^ 0xF1) + v19));
                        v49[8] = v51 >> (8 * ((v53 ^ 0xF0) + v19));
                      }

                      v57 = vdupq_n_s64(0x10uLL);
                      v46 = vaddq_s64(v46, v57);
                      v47 = vaddq_s64(v47, v57);
                      v48 = vaddq_s64(v48, v57);
                      v45 = vaddq_s64(v45, v57);
                      v44 = vaddq_s64(v44, v57);
                      v43 = vaddq_s64(v43, v57);
                      v42 = vaddq_s64(v42, v57);
                      v41 = vaddq_s64(v41, v57);
                      v22 += 0x80;
                      v50 += 16;
                      v49 += 16;
                      v20 -= 16;
                    }

                    while (v20);
                    while (1)
                    {
                      v58 = *(a2 + v20);
                      if (v58 < v127[v20 + 4] || v58 > v127[v20])
                      {
                        break;
                      }

                      if (v19 == ++v20)
                      {
                        v20 = v19;
                        break;
                      }
                    }
                  }

                  else
                  {
                    v20 = 0;
                  }

                  if (v20 >= v16)
                  {
                    if (v20 != v16)
                    {
                      v16 = v20;
                      goto LABEL_80;
                    }

                    if (!v18 || v19 < *v18)
                    {
                      goto LABEL_80;
                    }
                  }
                }

                v14 = v18;
LABEL_80:
                ++v17;
                v18 = v14;
              }

              while (v17 != v15);
            }

            v59 = v118;
            if (v14)
            {
              v59 = v14;
            }

            v13 = *v59;
            v9 = v122;
          }

LABEL_91:
          v123 = v13;
          goto LABEL_92;
        }
      }

LABEL_161:
      v107 = 0;
      if (v64)
      {
        v108 = 0;
        v109 = v111;
        do
        {
          v107 = *(a2 + v108++) | (v107 << 8);
        }

        while (v61 != v108);
      }

      else
      {
        v109 = v111;
      }

      if (cmap_cid_set_find_matching_range(*(ValueAtIndex + 2), v107, &v125))
      {
        v110 = v107 + v126 - v125;
        goto LABEL_170;
      }

      if (cmap_cid_set_find_matching_range(*(v65 + 3), v107, &v125))
      {
        v110 = v126;
LABEL_170:
        v124 = v110;
LABEL_171:
        v123 = *v65;
      }

      else if (!v109 || cmap_convert(v109, a2, *v65, &v124, &v123) != 1)
      {
        v124 = v107;
        goto LABEL_171;
      }

      v9 = v122;
      if (v116)
      {
        *v116++ = v124;
      }

      else
      {
        v116 = 0;
      }

      v13 = v123;
      if (v115)
      {
        *v115++ = v123;
      }

      else
      {
        v115 = 0;
      }

      ++v117;
LABEL_92:
      a2 = (a2 + v13);
      v5 -= v13;
      if (!v5)
      {
        return v117;
      }
    }

    v13 = v5;
    goto LABEL_91;
  }

  result = a3 >> 1;
  if (a3 >= 2)
  {
    v8 = a3 >> 1;
    do
    {
      *a4++ = bswap32(*a2) >> 16;
      if (a5)
      {
        *a5++ = 2;
      }

      ++a2;
      --v8;
    }

    while (v8);
  }

  return result;
}

void *CGPDFObjectStreamCreate(const void **a1, uint64_t a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    if (CGPDFObjectStreamGetTypeID_onceToken != -1)
    {
      dispatch_once(&CGPDFObjectStreamGetTypeID_onceToken, &__block_literal_global_15647);
    }

    cftype = pdf_create_cftype();
    v2 = cftype;
    if (cftype)
    {
      v13 = 0;
      v14 = 0;
      value = 0;
      v11 = 0;
      *(cftype + 32) = a2;
      v6 = *(a2 + 48);
      if (CGPDFDictionaryGetName(v6, "Type", &value))
      {
        if (!strcmp(value, "ObjStm"))
        {
          if (!CGPDFDictionaryGetInteger(v6, "N", &v14) || v14 < 0)
          {
          }

          else
          {
            v2[2] = v14;
            if (!CGPDFDictionaryGetOffset(v6, "First", &v13) || v13 < 0)
            {
            }

            else
            {
              v2[3] = v13;
              v9 = pdf_object_scanner_create_with_xref(a1, 1);
              v2[5] = v9;
              if (v9)
              {
                v10 = CGPDFStreamCreateFilterChain(a2, &v11);
                if (v10)
                {
                  v7 = v10;
                  if (!v11)
                  {
                    pdf_object_scanner_set_source(v2[5], v10);
                    goto LABEL_11;
                  }

                  CFRelease(v7);
                }
              }

              else
              {
                pdf_error("internal error: failed to create object stream.");
              }
            }
          }
        }

        else
        {
        }
      }

      else
      {
      }

      v7 = v2;
      v2 = 0;
LABEL_11:
      CFRelease(v7);
    }
  }

  return v2;
}

uint64_t __CGPDFObjectStreamGetTypeID_block_invoke()
{
  result = pdf_register_cftype(&CGPDFObjectStreamGetTypeID_class);
  CGPDFObjectStreamGetTypeID_id = result;
  return result;
}

void CGPDFObjectStreamFinalize(uint64_t a1)
{
  if (a1)
  {
    pdf_object_scanner_release(*(a1 + 40));
  }
}

uint64_t CGPDFObjectStreamGetObject(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = 0;
  if (a1 && !a3)
  {
    CGPDFSourceSetPosition(*(*(a1 + 40) + 8), 0, a3, a4, a5, a6, a7, a8);
    if (!*(a1 + 16))
    {
      return 0;
    }

    v18 = 0;
    v19 = 0;
    v20 = 0;
    do
    {
      v21 = *(a1 + 40);
      v40 = 0;
      v38 = 0u;
      v39 = 0u;
      if (pdf_object_scanner_read_object(v21, &v38, v12, v13, v14, v15, v16, v17))
      {
        if (DWORD2(v38) == 12 || DWORD2(v38) == 3)
        {
          v19 = v40;
        }

        else if ((DWORD2(v38) - 5) <= 4)
        {
          pdf_object_release_compound_value(&v38);
        }
      }

      v29 = *(a1 + 40);
      v40 = 0;
      v38 = 0u;
      v39 = 0u;
      if (pdf_object_scanner_read_object(v29, &v38, v22, v23, v24, v25, v26, v27))
      {
        if (DWORD2(v38) == 12 || DWORD2(v38) == 3)
        {
          v18 = v40;
        }

        else if ((DWORD2(v38) - 5) <= 4)
        {
          pdf_object_release_compound_value(&v38);
        }
      }

      v31 = *(a1 + 16);
      if (a2 == v19)
      {
        break;
      }

      ++v20;
    }

    while (v20 < v31);
    if (v20 != v31)
    {
      CGPDFSourceSetPosition(*(*(a1 + 40) + 8), v18 + *(a1 + 24), v12, v13, v14, v15, v16, v17);
      return pdf_object_scanner_read_object(*(a1 + 40), a4, v32, v33, v34, v35, v36, v37);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t CGCFDataCreateWithContentsOfFileAtURL(const __CFURL *a1)
{
  v40 = *MEMORY[0x1E69E9840];
  if (CFURLGetFileSystemRepresentation(a1, 1u, buffer, 1024))
  {
    v1 = open(buffer, 0, 0);
    v34 = v1;
    if (v1 != -1)
    {
      v33 = &v34;
      if (fstat(v1, &v32) != -1)
      {
        st_size = v32.st_size;
        v38 = 0;
        v35 = 0;
        v36 = 5;
        v37 = 2147500032;
        if (!getattrlist(buffer, &v36, &v35, 8uLL, 0) && (WORD2(v35) & 0x1200) == 0x1000 && ((v37 = 0, v38 = 0, v36 = 0x4000000000000005, getattrlist(buffer, &v36, &v35, 8uLL, 1u)) || HIDWORD(v35) != 1))
        {
          v14 = mmap(0, st_size, 1, 16386, v34, 0);
          if (v14 != -1)
          {
            v4 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:v14 length:st_size deallocator:&__block_literal_global_15672];
            goto LABEL_15;
          }

          v23 = __error();
          strerror(*v23);
          CGPostError("Failed to open file (%s): %s", v24, v25, v26, v27, v28, v29, v30, buffer);
        }

        else
        {
          v3 = malloc_type_malloc(st_size, 0x8B6629B0uLL);
          if (v3)
          {
            if (read(v34, v3, st_size) == st_size)
            {
              v4 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:v3 length:st_size deallocator:&__block_literal_global_5_15674];
LABEL_15:
              v13 = v4;
LABEL_19:
              close(v34);
              return v13;
            }

            v15 = __error();
            strerror(*v15);
            CGPostError("Failed to read contents of file (%s): %s", v16, v17, v18, v19, v20, v21, v22, buffer);
          }
        }
      }

      v13 = 0;
      goto LABEL_19;
    }

    v5 = __error();
    strerror(*v5);
    CGPostError("Failed to open file (%s): %s", v6, v7, v8, v9, v10, v11, v12, buffer);
  }

  return 0;
}

void __CGCFDataCreateWithContentsOfFileAtURL_block_invoke(int a1, void *a2, size_t a3)
{
  v3 = a2;
  if (munmap(a2, a3) < 0)
  {
    v4 = __error();
    strerror(*v4);
    CGPostError("Failed to unmap data (%p; 0x%lx): %s", v5, v6, v7, v8, v9, v10, v11, v3);
  }
}

unsigned __int8 *CPPDFStyleListGetStyle(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = *(a1 + 2256);
  if (v3)
  {
    v4 = v2 + 9;
    if (*(v2 + 9) == 1)
    {
      v5 = v2[32];
      v6 = -4;
      while (1)
      {
        if (CGColorEqualToColor(*v3, v5) && CGColorEqualToColor(*(v3 + 2), v2[34]) && *(v3 + 13) == *(v2 + 77) && *(v3 + 4) == *(v2 + 36) && *(v3 + 5) == *(v2 + 37) && v3[48] == *(v2 + 304) && v3[49] == *(v2 + 305) && *(v3 + 7) == *(v2 + 39) && *(v3 + 8) == v2[31])
        {
          v7 = *(v2 + 27);
          v8 = *(v2 + 2);
          *components = *(v2 + 1);
          v30 = v8;
          v31 = *(v2 + 3);
          v9 = *(v2 + 13);
          v26 = *(v2 + 11);
          v27 = v9;
          v28 = *(v2 + 15);
          if (fontSize(components, &v26, v7) == *(v3 + 9) && *(v3 + 10) == v2[47] && *(v3 + 11) == v2[48])
          {
            break;
          }
        }

        if (v6)
        {
          v3 = *(v3 + 13);
          ++v6;
          if (v3)
          {
            continue;
          }
        }

        v3 = malloc_type_malloc(0x70uLL, 0x10A00408C90C9C2uLL);
        *(v3 + 13) = *(a1 + 2256);
        *(a1 + 2256) = v3;
        if (*v4 != 1)
        {
          goto LABEL_26;
        }

        for (i = *v2; i; i = *i)
        {
          *(i + 9) = 1;
        }

        goto LABEL_25;
      }
    }
  }

  else
  {
    v3 = malloc_type_malloc(0x70uLL, 0x10A00408C90C9C2uLL);
    *(v3 + 13) = 0;
    *(a1 + 2256) = v3;
    v4 = v2 + 9;
    if (*(v2 + 9) == 1)
    {
      for (j = *v2; j; j = *j)
      {
        *(j + 9) = 1;
      }

LABEL_25:
      *v4 = 0;
    }

LABEL_26:
    v12 = v2[32];
    if (v12)
    {
      CopyWithAlpha = CGColorCreateCopyWithAlpha(v12, *(v2 + 42));
    }

    else
    {
      *components = xmmword_184564878;
      v30 = unk_184564888;
      DeviceRGB = CGColorSpaceCreateDeviceRGB();
      CopyWithAlpha = CGColorCreate(DeviceRGB, components);
      CGColorSpaceRelease(DeviceRGB);
    }

    *v3 = CopyWithAlpha;
    v15 = v2[33];
    if (v15)
    {
      *(v3 + 1) = v15;
      CFRetain(v15);
    }

    else
    {
      *(v3 + 1) = CGColorSpaceCreateDeviceRGB();
    }

    v16 = v2[34];
    if (v16)
    {
      v17 = CGColorCreateCopyWithAlpha(v16, *(v2 + 43));
    }

    else
    {
      *components = xmmword_184564878;
      v30 = unk_184564888;
      v18 = CGColorSpaceCreateDeviceRGB();
      v17 = CGColorCreate(v18, components);
      CGColorSpaceRelease(v18);
    }

    *(v3 + 2) = v17;
    v19 = v2[35];
    if (v19)
    {
      *(v3 + 3) = v19;
      CFRetain(v19);
    }

    else
    {
      *(v3 + 3) = CGColorSpaceCreateDeviceRGB();
    }

    *(v3 + 2) = *(v2 + 18);
    *(v3 + 24) = *(v2 + 152);
    *(v3 + 13) = *(v2 + 77);
    *(v3 + 7) = v2[39];
    v20 = v2[31];
    *(v3 + 8) = v20;
    if (v20)
    {
      v21 = *(v2 + 27);
      v22 = *(v2 + 2);
      *components = *(v2 + 1);
      v30 = v22;
      v31 = *(v2 + 3);
      v23 = *(v2 + 13);
      v26 = *(v2 + 11);
      v27 = v23;
      v28 = *(v2 + 15);
      v24 = fontSize(components, &v26, v21);
    }

    else
    {
      v24 = 0.0;
    }

    *(v3 + 9) = v24;
    *(v3 + 5) = *(v2 + 47);
    *(v3 + 12) = 0;
  }

  return v3;
}

double fontSize(float64x2_t *a1, double *a2, double a3)
{
  v3 = a1[1];
  v4 = vmlaq_n_f64(vmulq_n_f64(v3, a2[1]), *a1, *a2);
  v5 = vmlaq_n_f64(vmulq_n_f64(v3, a2[3]), *a1, a2[2]);
  return fabs(sqrt(fabs(-v4.f64[1] * v5.f64[0] + v4.f64[0] * v5.f64[1])) * a3);
}

uint64_t flate_has_error(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 113);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

void flate_filter_rewind(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 114) = 0;
    *(a1 + 112) = 0;
    CGPDFSourceRewind(*(a1 + 120), a2, a3, a4, a5, a6, a7, a8);
    if (inflateReset(a1))
    {
      if (*(a1 + 48))
      {
        pdf_error("FlateDecode: rewind error: %s.");
      }

      else
      {
        pdf_error("FlateDecode: rewind error.");
      }

      *(a1 + 113) = 1;
    }
  }
}

__CFString *context_copy_format_description(uint64_t a1)
{
  v52 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 24);
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  v5 = Mutable;
  v6 = "kCGContextTypeUnknown";
  switch(v2)
  {
    case 0:
      goto LABEL_24;
    case 1:
      v6 = "kCGContextTypePDF";
      goto LABEL_24;
    case 2:
      v6 = "kCGContextTypePostScript";
      goto LABEL_24;
    case 3:
      v6 = "kCGContextTypeWindow";
      goto LABEL_24;
    case 4:
      CFStringAppendFormat(Mutable, 0, @"<CGContext %p> (%s)", a1, "kCGContextTypeBitmap");
      if (*(a1 + 16) == 1129601108 && *(a1 + 24) == 4)
      {
        v13 = *(*(a1 + 32) + 32);
      }

      else
      {
        handle_invalid_context("CGBitmapContextGetColorSpace", a1, v7, v8, v9, v10, v11, v12);
        v13 = 0;
      }

      v32 = CFCopyDescription(v13);
      CFStringAppendFormat(v5, 0, @"\n\t<%@>", v32);
      if (*(a1 + 16) == 1129601108 && *(a1 + 24) == 4)
      {
        v19 = *(*(a1 + 32) + 8);
      }

      else
      {
        handle_invalid_context("CGBitmapContextGetWidth", a1, v33, v34, v35, v36, v37, v38);
        v19 = 0;
        if (*(a1 + 16) != 1129601108)
        {
          goto LABEL_43;
        }
      }

      if (*(a1 + 24) == 4)
      {
        v20 = *(*(a1 + 32) + 16);
        goto LABEL_44;
      }

LABEL_43:
      handle_invalid_context("CGBitmapContextGetHeight", a1, v33, v34, v35, v36, v37, v38);
      v20 = 0;
      if (*(a1 + 16) != 1129601108)
      {
        goto LABEL_46;
      }

LABEL_44:
      if (*(a1 + 24) == 4)
      {
        v21 = *(*(a1 + 32) + 80);
        goto LABEL_47;
      }

LABEL_46:
      handle_invalid_context("CGBitmapContextGetBitsPerComponent", a1, v33, v34, v35, v36, v37, v38);
      v21 = 0;
      if (*(a1 + 16) != 1129601108)
      {
        goto LABEL_49;
      }

LABEL_47:
      if (*(a1 + 24) == 4)
      {
        v22 = *(*(a1 + 32) + 72);
        goto LABEL_50;
      }

LABEL_49:
      handle_invalid_context("CGBitmapContextGetBitsPerPixel", a1, v33, v34, v35, v36, v37, v38);
      v22 = 0;
      if (*(a1 + 16) != 1129601108)
      {
        goto LABEL_52;
      }

LABEL_50:
      if (*(a1 + 24) == 4)
      {
        v23 = *(*(a1 + 32) + 88);
        goto LABEL_53;
      }

LABEL_52:
      handle_invalid_context("CGBitmapContextGetBytesPerRow", a1, v33, v34, v35, v36, v37, v38);
      v23 = 0;
      if (*(a1 + 16) != 1129601108)
      {
        goto LABEL_55;
      }

LABEL_53:
      if (*(a1 + 24) == 4)
      {
        v24 = *(*(a1 + 32) + 40);
        goto LABEL_56;
      }

LABEL_55:
      handle_invalid_context("CGBitmapContextGetBitmapInfo", a1, v33, v34, v35, v36, v37, v38);
      v24 = 0;
LABEL_56:
      if (CGColorSpaceGetModel(v13) != kCGColorSpaceModelRGB)
      {
        goto LABEL_71;
      }

      if (*(a1 + 16) == 1129601108)
      {
        v45 = *(*(*(a1 + 96) + 120) + 48);
        if (v45 != 0.0)
        {
          CFStringAppendFormat(v5, 0, @"\n\t\tEDR target headroom = %f", v45, v50);
          goto LABEL_71;
        }
      }

      else
      {
        handle_invalid_context("CGContextGetEDRTargetHeadroom", a1, v39, v40, v41, v42, v43, v44);
      }

      CFStringAppendFormat(v5, 0, @"\n\t\tEDR target headroom not specified (0.0)");
      if (CGOSAppleInternalBuild_predicate != -1)
      {
        dispatch_once(&CGOSAppleInternalBuild_predicate, &__block_literal_global_18682);
      }

      if (CGOSAppleInternalBuild_is_internal == 1 && !CGColorSpaceUsesExtendedRange(v13))
      {
        *__s = 0;
        HeadroomInfo = CGColorSpaceGetHeadroomInfo(v13, __s);
        v47 = "origin unknown";
        if (*__s == 2)
        {
          v47 = "estimated";
        }

        if (*__s == 1)
        {
          v48 = "from color space";
        }

        else
        {
          v48 = v47;
        }

        CFStringAppendFormat(v5, 0, @" [INTERNAL INFO] %f (%s) will be used as target for PQ/HLG", *&HeadroomInfo, v48);
      }

      goto LABEL_71;
    case 5:
      v6 = "kCGContextTypeGL";
      goto LABEL_24;
    case 6:
      v6 = "kCGContextTypeDisplayList";
      goto LABEL_24;
    case 7:
      v6 = "kCGContextTypeKSeparation";
      goto LABEL_24;
    case 8:
      v6 = "kCGContextTypeIOSurface";
      goto LABEL_24;
    case 9:
      v6 = "kCGContextTypeAutomatic";
      goto LABEL_24;
    case 11:
      v6 = "kCGContextTypeCoreAnimationAutomatic";
      goto LABEL_24;
    case 12:
      CFStringAppendFormat(Mutable, 0, @"<CGContext %p> (%s)", a1, "kCGContextTypePDFSoftmask");
      v14 = *(a1 + 40);
      if (!v14 || (v15 = *(v14 + 248)) == 0 || (v16 = v15()) == 0)
      {
        v19 = 0;
        v20 = 0;
        v21 = 0;
        v22 = 0;
        v23 = 0;
        v24 = 0;
        goto LABEL_27;
      }

      v17 = v16;
      v18 = CFCopyDescription(*(v16 + 32));
      CFStringAppendFormat(v5, 0, @"\n\t<%@>", v18);
      v19 = *(v17 + 8);
      v20 = *(v17 + 16);
      v22 = *(v17 + 72);
      v21 = *(v17 + 80);
      v23 = *(v17 + 88);
      v24 = *(v17 + 40);
LABEL_71:
      v49 = v24 & 0x1F;
      if (v49 > 3)
      {
        if ((v24 & 0x1F) > 5)
        {
          if (v49 == 6)
          {
            v26 = "kCGImageAlphaNoneSkipFirst";
            goto LABEL_28;
          }

          if (v49 == 7)
          {
            v26 = "kCGImageAlphaOnly";
            goto LABEL_28;
          }
        }

        else
        {
          if (v49 == 4)
          {
            v26 = "kCGImageAlphaFirst";
            goto LABEL_28;
          }

          if (v49 == 5)
          {
            v26 = "kCGImageAlphaNoneSkipLast";
            goto LABEL_28;
          }
        }
      }

      else
      {
        if ((v24 & 0x1F) <= 1)
        {
          if ((v24 & 0x1F) != 0)
          {
            v26 = "kCGImageAlphaPremultipliedLast";
            goto LABEL_28;
          }

LABEL_27:
          v26 = "kCGImageAlphaNone";
LABEL_28:
          __sprintf_chk(__s, 0, 0x100uLL, "%s | ", v26);
          goto LABEL_29;
        }

        if (v49 == 2)
        {
          v26 = "kCGImageAlphaPremultipliedFirst";
          goto LABEL_28;
        }

        if (v49 == 3)
        {
          v26 = "kCGImageAlphaLast";
          goto LABEL_28;
        }
      }

LABEL_29:
      v27 = (v24 >> 12) & 7;
      if (v27 <= 4)
      {
        v28 = strlen(__s);
        sprintf(&__s[v28], "%s ", off_1E6E31D18[v27]);
      }

      v29 = HIWORD(v24) & 0xF;
      if (v29 <= 4)
      {
        v30 = strlen(__s);
        sprintf(&__s[v30], "%s ", off_1E6E31D40[v29]);
      }

      if ((v24 & 0x100) != 0)
      {
        v31 = strlen(__s);
        sprintf(&__s[v31], "%s ", "| kCGBitmapFloatComponents");
      }

      CFStringAppendFormat(v5, 0, @"\n\t\twidth = %ld, height = %ld, bpc = %ld, bpp = %ld, row bytes = %ld, \n\t\t%s", v19, v20, v21, v22, v23, __s);
      return v5;
    case 13:
      v6 = "kCGContextTypeAdaptiveBitmap";
      goto LABEL_24;
    case 14:
      v6 = "kCGContextTypeCGLayer";
      goto LABEL_24;
    case 15:
      v6 = "kCGContextTypeDisplayListExecution";
      goto LABEL_24;
    case 16:
      v6 = "kCGContextTypePatternExecution";
      goto LABEL_24;
    case 17:
      v6 = "kCGContextTypeShadingExecution";
      goto LABEL_24;
    default:
      v6 = "?? type";
LABEL_24:
      CFStringAppendFormat(Mutable, 0, @"<CGContext %p> (%s)", a1, v6);
      return v5;
  }
}

CFTypeID CGContextGetTypeID(void)
{
  if (_block_invoke_once_15726 != -1)
  {
    dispatch_once(&_block_invoke_once_15726, &__block_literal_global_5_15727);
  }

  return CGContextGetTypeID_type_id;
}

void CGContextRelease(CGContextRef c)
{
  if (c)
  {
    CFRelease(c);
  }
}

CGContextRef CGContextRetain(CGContextRef c)
{
  if (c)
  {
    CFRetain(c);
  }

  return c;
}

uint64_t CGContextGetDelegateInfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    return *(a1 + 32);
  }

  handle_invalid_context("CGContextGetDelegateInfo", a1, a3, a4, a5, a6, a7, a8);
  return 0;
}

uint64_t CG::DisplayList::cfTypeResourceForCFType(CG::DisplayList *this, const void *a2)
{
  if (!a2)
  {
    return 0;
  }

  ++*(this + 100);
  v3 = this + 560;
  v4 = *(this + 70);
  if (!v4)
  {
    goto LABEL_15;
  }

  v5 = this + 560;
  do
  {
    v7 = *(v4 + 4);
    v6 = *(v4 + 5);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      v8 = *(v7 + 16);
      std::__shared_weak_count::__release_shared[abi:fe200100](v6);
    }

    else
    {
      v8 = *(v7 + 16);
    }

    if (v8 >= a2)
    {
      v5 = v4;
    }

    v4 = *&v4[8 * (v8 < a2)];
  }

  while (v4);
  if (v3 == v5)
  {
    goto LABEL_15;
  }

  v9 = *(v5 + 4);
  v10 = *(v5 + 5);
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    if (*(v9 + 16) < a2)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v10);
      goto LABEL_15;
    }

    v13 = *(v5 + 4);
    v12 = *(v5 + 5);
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      v14 = *(v13 + 16);
      std::__shared_weak_count::__release_shared[abi:fe200100](v12);
    }

    else
    {
      v14 = *(v13 + 16);
    }

    std::__shared_weak_count::__release_shared[abi:fe200100](v10);
    if (v14 <= a2)
    {
      return *(v5 + 4);
    }

LABEL_15:
    operator new();
  }

  if (*(v9 + 16) != a2)
  {
    goto LABEL_15;
  }

  return *(v5 + 4);
}

void sub_18427778C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__shared_ptr_pointer<CG::DisplayListResourceCFTypeRef *,std::shared_ptr<CG::DisplayListResourceCFTypeRef>::__shared_ptr_default_delete<CG::DisplayListResourceCFTypeRef,CG::DisplayListResourceCFTypeRef>,std::allocator<CG::DisplayListResourceCFTypeRef>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:fe200100](*(a2 + 8), "NSt3__110shared_ptrIN2CG28DisplayListResourceCFTypeRefEE27__shared_ptr_default_deleteIS2_S2_EE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<CG::DisplayListResourceCFTypeRef *,std::shared_ptr<CG::DisplayListResourceCFTypeRef>::__shared_ptr_default_delete<CG::DisplayListResourceCFTypeRef,CG::DisplayListResourceCFTypeRef>,std::allocator<CG::DisplayListResourceCFTypeRef>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<CG::DisplayListResourceCFTypeRef *,std::shared_ptr<CG::DisplayListResourceCFTypeRef>::__shared_ptr_default_delete<CG::DisplayListResourceCFTypeRef,CG::DisplayListResourceCFTypeRef>,std::allocator<CG::DisplayListResourceCFTypeRef>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1865EE610);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::shared_ptr<CG::DisplayListResourceDisplayList>,void *>>>::operator()[abi:fe200100](char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[3];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void CG::DisplayList::getHash(CG::DisplayList *this)
{
  os_unfair_lock_lock(this + 54);
  v2 = *(this + 168);
  v15 = *(this + 152);
  v16 = v2;
  v17 = *(this + 184);
  v3 = *(this + 26);
  v18 = *(this + 25);
  v4 = *(this + 136);
  v13 = *(this + 120);
  v14 = v4;
  os_unfair_lock_unlock(this + 54);
  v5 = *(this + 85) - *(this + 84);
  if (v3 >= v5 >> 4)
  {
    v6 = v3;
LABEL_7:
    os_unfair_lock_lock(this + 54);
    if (*(this + 26) == v3)
    {
      v10 = v16;
      *(this + 152) = v15;
      *(this + 168) = v10;
      *(this + 184) = v17;
      *(this + 25) = v18;
      *(this + 26) = v6;
      v11 = v14;
      *(this + 120) = v13;
      *(this + 136) = v11;
    }

    os_unfair_lock_unlock(this + 54);
    if (v13 < 0x20)
    {
      v12 = *(&v14 + 1) + 0x27D4EB2F165667C5;
    }

    else
    {
      v12 = 0x9E3779B185EBCA87 * ((0x9E3779B185EBCA87 * ((0x9E3779B185EBCA87 * ((0x9E3779B185EBCA87 * ((__ROR8__(v14, 57) + __ROR8__(*(&v13 + 1), 63) + __ROR8__(*(&v14 + 1), 52) + __ROR8__(v15, 46)) ^ (0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * *(&v13 + 1), 33))) - 0x7A1435883D4D519DLL) ^ (0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * v14, 33))) - 0x7A1435883D4D519DLL) ^ (0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * *(&v14 + 1), 33))) - 0x7A1435883D4D519DLL) ^ (0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * v15, 33))) - 0x7A1435883D4D519DLL;
    }

    XXH64_finalize(v12 + v13, &v15 + 1, v13);
  }

  else
  {
    v6 = v5 >> 4;
    v7 = 16 * v3;
    v8 = v3;
    while (1)
    {
      v9 = *(this + 84);
      if (v8 >= (*(this + 85) - v9) >> 4)
      {
        break;
      }

      (*(**(v9 + v7) + 32))(*(v9 + v7), &v13);
      ++v8;
      v7 += 16;
      if (v6 == v8)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }
}

uint64_t CG::DisplayList::isEqualTo(CG::DisplayList *this, const CG::DisplayList *a2, uint64_t a3)
{
  result = CGRectEqualToRect(*(this + 24), *(a2 + 24));
  if (result)
  {
    v7 = *(this + 84);
    v8 = *(this + 85);
    v9 = *(a2 + 84);
    v10 = *(a2 + 85);
    if (v8 - v7 == v10 - v9)
    {
      while (v7 != v8 && v9 != v10)
      {
        result = (*(**v7 + 24))(*v7, *v9, a3);
        if (!result)
        {
          return result;
        }

        v7 += 16;
        v9 += 16;
      }

      return v7 == v8 && v9 == v10;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<CG::DisplayListResourceDisplayList *,std::shared_ptr<CG::DisplayListResourceDisplayList>::__shared_ptr_default_delete<CG::DisplayListResourceDisplayList,CG::DisplayListResourceDisplayList>,std::allocator<CG::DisplayListResourceDisplayList>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:fe200100](*(a2 + 8), "NSt3__110shared_ptrIN2CG30DisplayListResourceDisplayListEE27__shared_ptr_default_deleteIS2_S2_EE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<CG::DisplayListResourceDisplayList *,std::shared_ptr<CG::DisplayListResourceDisplayList>::__shared_ptr_default_delete<CG::DisplayListResourceDisplayList,CG::DisplayListResourceDisplayList>,std::allocator<CG::DisplayListResourceDisplayList>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1865EE610);
}

const void **applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

BOOL CG::CompareEntryStatePattern::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  __s1[0] = *(a1 + 8);
  __s1[1] = v4;
  __s1[2] = *(a1 + 40);
  v5 = *(a2 + 24);
  v12[0] = *(a2 + 8);
  v12[1] = v5;
  v12[2] = *(a2 + 40);
  v6 = memcmp(__s1, v12, 0x30uLL);
  result = 1;
  if ((v6 & 0x80000000) == 0)
  {
    if (v6)
    {
      return 0;
    }

    v8 = *(a1 + 56);
    v9 = *(a2 + 56);
    if (v8 >= v9)
    {
      if (v8 > v9)
      {
        return 0;
      }

      v10 = *(a1 + 64);
      v11 = *(a2 + 64);
      if (v10 >= v11 && (v10 > v11 || *(a1 + 72) >= *(a2 + 72)))
      {
        return 0;
      }
    }
  }

  return result;
}

void *std::__tree<std::shared_ptr<CG::DisplayListEntryStatePattern const>,CG::CompareEntryStatePattern,std::allocator<std::shared_ptr<CG::DisplayListEntryStatePattern const>>>::__find_equal<std::shared_ptr<CG::DisplayListEntryStatePattern const>>(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    while (1)
    {
      v7 = v4;
      v8 = *a3;
      v9 = a3[1];
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v10 = *(v4 + 32);
      v11 = *(v4 + 40);
      if (!v11)
      {
        break;
      }

      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      v12 = CG::CompareEntryStatePattern::operator()(v8, v10);
      std::__shared_weak_count::__release_shared[abi:fe200100](v11);
      if (v9)
      {
        goto LABEL_6;
      }

LABEL_7:
      if (v12)
      {
        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v13 = v7[4];
        v14 = v7[5];
        if (v14)
        {
          atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v15 = *a3;
        v16 = a3[1];
        if (v16)
        {
          atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
          v17 = CG::CompareEntryStatePattern::operator()(v13, v15);
          std::__shared_weak_count::__release_shared[abi:fe200100](v16);
          if (!v14)
          {
            goto LABEL_15;
          }

LABEL_14:
          std::__shared_weak_count::__release_shared[abi:fe200100](v14);
          goto LABEL_15;
        }

        v17 = CG::CompareEntryStatePattern::operator()(v13, v15);
        if (v14)
        {
          goto LABEL_14;
        }

LABEL_15:
        if (!v17)
        {
          goto LABEL_23;
        }

        v5 = v7 + 1;
        v4 = v7[1];
        if (!v4)
        {
          goto LABEL_23;
        }
      }
    }

    v12 = CG::CompareEntryStatePattern::operator()(v8, v10);
    if (!v9)
    {
      goto LABEL_7;
    }

LABEL_6:
    std::__shared_weak_count::__release_shared[abi:fe200100](v9);
    goto LABEL_7;
  }

  v7 = (a1 + 8);
LABEL_23:
  *a2 = v7;
  return v5;
}

void *std::__tree<std::shared_ptr<CG::DisplayListEntryStateFill const>,CG::CompareEntryStateFill,std::allocator<std::shared_ptr<CG::DisplayListEntryStateFill const>>>::__find_equal<std::shared_ptr<CG::DisplayListEntryStateFill const>>(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    while (1)
    {
      v7 = v4;
      v8 = *a3;
      v9 = a3[1];
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v11 = v7[4];
      v10 = v7[5];
      if (!v10)
      {
        break;
      }

      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      v12 = *(v8 + 8) < *(v11 + 8);
      std::__shared_weak_count::__release_shared[abi:fe200100](v10);
      if (v9)
      {
        goto LABEL_6;
      }

LABEL_7:
      if (v12)
      {
        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v13 = v7[4];
        v14 = v7[5];
        if (v14)
        {
          atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v16 = *a3;
        v15 = a3[1];
        if (v15)
        {
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
          v17 = *(v13 + 8) < *(v16 + 8);
          std::__shared_weak_count::__release_shared[abi:fe200100](v15);
          if (!v14)
          {
            goto LABEL_15;
          }

LABEL_14:
          std::__shared_weak_count::__release_shared[abi:fe200100](v14);
          goto LABEL_15;
        }

        v17 = *(v13 + 8) < *(v16 + 8);
        if (v14)
        {
          goto LABEL_14;
        }

LABEL_15:
        if (!v17)
        {
          goto LABEL_23;
        }

        v5 = v7 + 1;
        v4 = v7[1];
        if (!v4)
        {
          goto LABEL_23;
        }
      }
    }

    v12 = *(v8 + 8) < *(v11 + 8);
    if (!v9)
    {
      goto LABEL_7;
    }

LABEL_6:
    std::__shared_weak_count::__release_shared[abi:fe200100](v9);
    goto LABEL_7;
  }

  v7 = (a1 + 8);
LABEL_23:
  *a2 = v7;
  return v5;
}

void *std::__tree<std::shared_ptr<CG::DisplayListEntryStateDrawing const>,CG::CompareEntryStateDrawing,std::allocator<std::shared_ptr<CG::DisplayListEntryStateDrawing const>>>::__find_equal<std::shared_ptr<CG::DisplayListEntryStateDrawing const>>(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    while (1)
    {
      v7 = v4;
      v8 = *a3;
      v9 = a3[1];
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v10 = *(v4 + 32);
      v11 = *(v4 + 40);
      if (!v11)
      {
        break;
      }

      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      v12 = CG::CompareEntryStateDrawing::operator()(v8, v10);
      std::__shared_weak_count::__release_shared[abi:fe200100](v11);
      if (v9)
      {
        goto LABEL_6;
      }

LABEL_7:
      if (v12)
      {
        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v13 = v7[4];
        v14 = v7[5];
        if (v14)
        {
          atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v15 = *a3;
        v16 = a3[1];
        if (v16)
        {
          atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
          v17 = CG::CompareEntryStateDrawing::operator()(v13, v15);
          std::__shared_weak_count::__release_shared[abi:fe200100](v16);
          if (!v14)
          {
            goto LABEL_15;
          }

LABEL_14:
          std::__shared_weak_count::__release_shared[abi:fe200100](v14);
          goto LABEL_15;
        }

        v17 = CG::CompareEntryStateDrawing::operator()(v13, v15);
        if (v14)
        {
          goto LABEL_14;
        }

LABEL_15:
        if (!v17)
        {
          goto LABEL_23;
        }

        v5 = v7 + 1;
        v4 = v7[1];
        if (!v4)
        {
          goto LABEL_23;
        }
      }
    }

    v12 = CG::CompareEntryStateDrawing::operator()(v8, v10);
    if (!v9)
    {
      goto LABEL_7;
    }

LABEL_6:
    std::__shared_weak_count::__release_shared[abi:fe200100](v9);
    goto LABEL_7;
  }

  v7 = (a1 + 8);
LABEL_23:
  *a2 = v7;
  return v5;
}

void *std::__tree<std::shared_ptr<CG::DisplayListResourceDash>,CG::CompareResourceDash,std::allocator<std::shared_ptr<CG::DisplayListResourceDash>>>::__find_equal<std::shared_ptr<CG::DisplayListResourceDash>>(void *a1, void *a2, void *a3, void *a4, uint64_t *a5)
{
  v9 = a1 + 1;
  if (a1 + 1 == a2)
  {
    goto LABEL_21;
  }

  v11 = *a5;
  v12 = a5[1];
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = a2[4];
  v14 = a2[5];
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = CGDashCompare(*(v11 + 16), *(v13 + 16));
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v14);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v12);
  }

  if (v15 == -1)
  {
LABEL_21:
    if (*a1 == a2)
    {
      v22 = a2;
    }

    else
    {
      v21 = *a2;
      if (*a2)
      {
        do
        {
          v22 = v21;
          v21 = v21[1];
        }

        while (v21);
      }

      else
      {
        v25 = a2;
        do
        {
          v22 = v25[2];
          v26 = *v22 == v25;
          v25 = v22;
        }

        while (v26);
      }

      v27 = v22[4];
      v28 = v22[5];
      if (v28)
      {
        atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v29 = *a5;
      v30 = a5[1];
      if (v30)
      {
        atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v31 = CGDashCompare(*(v27 + 16), *(v29 + 16));
      if (v30)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v30);
      }

      if (v28)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v28);
      }

      if (v31 != -1)
      {
        goto LABEL_40;
      }
    }

    if (*a2)
    {
      *a3 = v22;
      return v22 + 1;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  v16 = a2[4];
  v17 = a2[5];
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = *a5;
  v19 = a5[1];
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v20 = CGDashCompare(*(v16 + 16), *(v18 + 16));
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v19);
  }

  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v17);
  }

  if (v20 != -1)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  a4 = a2 + 1;
  v23 = a2[1];
  if (v23)
  {
    do
    {
      v24 = v23;
      v23 = *v23;
    }

    while (v23);
  }

  else
  {
    v33 = a2;
    do
    {
      v24 = v33[2];
      v26 = *v24 == v33;
      v33 = v24;
    }

    while (!v26);
  }

  if (v24 == v9)
  {
    goto LABEL_65;
  }

  v34 = *a5;
  v35 = a5[1];
  if (v35)
  {
    atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v36 = v24[4];
  v37 = v24[5];
  if (v37)
  {
    atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v38 = CGDashCompare(*(v34 + 16), *(v36 + 16));
  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v37);
  }

  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v35);
  }

  if (v38 == -1)
  {
LABEL_65:
    if (*a4)
    {
      *a3 = v24;
      return v24;
    }

    else
    {
      *a3 = a2;
    }

    return a4;
  }

LABEL_40:

  return std::__tree<std::shared_ptr<CG::DisplayListResourceDash>,CG::CompareResourceDash,std::allocator<std::shared_ptr<CG::DisplayListResourceDash>>>::__find_equal<std::shared_ptr<CG::DisplayListResourceDash>>(a1, a3, a5);
}

void *std::__tree<std::shared_ptr<CG::DisplayListResourceDash>,CG::CompareResourceDash,std::allocator<std::shared_ptr<CG::DisplayListResourceDash>>>::__find_equal<std::shared_ptr<CG::DisplayListResourceDash>>(uint64_t a1, void *a2, uint64_t *a3)
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
        v8 = *a3;
        v9 = a3[1];
        if (v9)
        {
          atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v10 = v7[4];
        v11 = v7[5];
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v12 = CGDashCompare(*(v8 + 16), *(v10 + 16));
        if (v11)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v11);
        }

        if (v9)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v9);
        }

        if (v12 != -1)
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_25;
        }
      }

      v13 = v7[4];
      v14 = v7[5];
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v15 = *a3;
      v16 = a3[1];
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v17 = CGDashCompare(*(v13 + 16), *(v15 + 16));
      if (v16)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v16);
      }

      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v14);
      }

      if (v17 != -1)
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

LABEL_25:
  *a2 = v7;
  return v5;
}

void *std::__tree<std::shared_ptr<CG::DisplayListResourceColorSpace>,CG::CompareResourceColorSpace,std::allocator<std::shared_ptr<CG::DisplayListResourceColorSpace>>>::__find_equal<std::shared_ptr<CG::DisplayListResourceColorSpace>>(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    while (1)
    {
      v7 = v4;
      v8 = *a3;
      v9 = a3[1];
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v11 = v7[4];
      v10 = v7[5];
      if (!v10)
      {
        break;
      }

      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      v12 = *(v8 + 16) < *(v11 + 16);
      std::__shared_weak_count::__release_shared[abi:fe200100](v10);
      if (v9)
      {
        goto LABEL_6;
      }

LABEL_7:
      if (v12)
      {
        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v13 = v7[4];
        v14 = v7[5];
        if (v14)
        {
          atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v16 = *a3;
        v15 = a3[1];
        if (v15)
        {
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
          v17 = *(v13 + 16) < *(v16 + 16);
          std::__shared_weak_count::__release_shared[abi:fe200100](v15);
          if (!v14)
          {
            goto LABEL_15;
          }

LABEL_14:
          std::__shared_weak_count::__release_shared[abi:fe200100](v14);
          goto LABEL_15;
        }

        v17 = *(v13 + 16) < *(v16 + 16);
        if (v14)
        {
          goto LABEL_14;
        }

LABEL_15:
        if (!v17)
        {
          goto LABEL_23;
        }

        v5 = v7 + 1;
        v4 = v7[1];
        if (!v4)
        {
          goto LABEL_23;
        }
      }
    }

    v12 = *(v8 + 16) < *(v11 + 16);
    if (!v9)
    {
      goto LABEL_7;
    }

LABEL_6:
    std::__shared_weak_count::__release_shared[abi:fe200100](v9);
    goto LABEL_7;
  }

  v7 = (a1 + 8);
LABEL_23:
  *a2 = v7;
  return v5;
}

void *std::__tree<std::shared_ptr<CG::DisplayListResourceColor>,CG::CompareResourceColor,std::allocator<std::shared_ptr<CG::DisplayListResourceColor>>>::__find_equal<std::shared_ptr<CG::DisplayListResourceColor>>(uint64_t a1, void *a2, uint64_t a3)
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
        if (CGColorCompare(*(*a3 + 16), *(v4[4] + 16)) != -1)
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

      if (CGColorCompare(*(v7[4] + 16), *(*a3 + 16)) != -1)
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

void *std::__tree<std::shared_ptr<CG::DisplayListResourceClip>,CG::CompareResourceClip,std::allocator<std::shared_ptr<CG::DisplayListResourceClip>>>::__find_equal<std::shared_ptr<CG::DisplayListResourceClip>>(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    while (1)
    {
      v7 = v4;
      v8 = *a3;
      v9 = a3[1];
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v11 = v4[4];
      v10 = v7[5];
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v12 = *(v8 + 16);
      v13 = v12 ? *(v12 + 4) : 0;
      v14 = *(v11 + 16);
      if (!v14)
      {
        break;
      }

      v15 = *(v14 + 4);
      if (v10)
      {
        goto LABEL_11;
      }

LABEL_12:
      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v9);
      }

      if (v13 >= v15)
      {
        v16 = v7[4];
        v17 = v7[5];
        if (v17)
        {
          atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v19 = *a3;
        v18 = a3[1];
        if (v18)
        {
          atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v20 = *(v16 + 16);
        if (v20)
        {
          v21 = *(v20 + 4);
        }

        else
        {
          v21 = 0;
        }

        v22 = *(v19 + 16);
        if (!v22)
        {
          v23 = 0;
          if (!v18)
          {
            goto LABEL_29;
          }

LABEL_28:
          std::__shared_weak_count::__release_shared[abi:fe200100](v18);
          goto LABEL_29;
        }

        v23 = *(v22 + 4);
        if (v18)
        {
          goto LABEL_28;
        }

LABEL_29:
        if (v17)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v17);
        }

        if (v21 >= v23)
        {
          goto LABEL_37;
        }

        v5 = v7 + 1;
        v4 = v7[1];
        if (!v4)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_37;
        }
      }
    }

    v15 = 0;
    if (!v10)
    {
      goto LABEL_12;
    }

LABEL_11:
    std::__shared_weak_count::__release_shared[abi:fe200100](v10);
    goto LABEL_12;
  }

  v7 = (a1 + 8);
LABEL_37:
  *a2 = v7;
  return v5;
}

__CFString *dl_DebugDesc(int32x4_t *a1)
{
  p_size = &CGRectNull.size;
  v3 = &a1[5].u64[1];
  i64 = a1[6].i64;
  if (a1[43].i64[0] == a1[43].i64[1])
  {
    i64 = &CGRectNull.origin.y;
  }

  else
  {
    p_size = &a1[6].u64[1];
  }

  if (a1[43].i64[0] == a1[43].i64[1])
  {
    v3 = &CGRectNull;
    p_height = &CGRectNull.size.height;
  }

  else
  {
    p_height = a1[7].i64;
  }

  v6 = *p_height;
  x = v3->origin.x;
  v8 = *i64;
  width = p_size->width;
  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppendFormat(Mutable, 0, @"CGDisplayList %p. Bounding box: (%g, %g)[%g x %g].", a1, *&x, v8, *&width, v6);
  v12 = "yes";
  if (a1[43].i64[0] != a1[43].i64[1])
  {
    v11 = *&a1[5].i64[1];
    if (*a1[6].i64 != INFINITY && v11 != INFINITY)
    {
      v12 = "no";
    }
  }

  CFStringAppendFormat(Mutable, 0, @" Empty: %s.", v11, v12);
  CFStringAppendFormat(Mutable, 0, @" Flags: 0x%08x.", a1[5].u32[0]);
  v14 = 0;
  v15 = 0;
  do
  {
    v15 += a1[45].i32[v14];
    v14 += 2;
  }

  while (v14 != 28);
  v16 = a1[16].i64[0];
  v17 = a1[17].i64[1];
  v18 = a1[19].i64[0];
  v19 = a1[20].i64[1];
  v20 = a1[22].i64[0];
  v21 = a1[23].i64[1];
  CFStringAppendFormat(Mutable, 0, @"\nResource count: %lu, %lu unique, (%lu bytes).", v15, v17 + v16 + v18 + v19 + v20 + v21 + a1[25].i64[0] + a1[26].i64[1] + a1[28].i64[0] + a1[29].i64[1] + a1[31].i64[0] + a1[32].i64[1] + a1[34].i64[1] + a1[36].i64[1], 56 * (v21 + v16) + 40 * (a1[25].i64[0] + v17) + 32 * (a1[26].i64[1] + v20 + a1[29].i64[1] + a1[31].i64[0]) + 24 * (v19 + v18 + a1[28].i64[0] + a1[32].i64[1] + a1[34].i64[1] + a1[36].i64[1]));
  if (a1[45].i64[0])
  {
    CFStringAppendFormat(Mutable, 0, @" Clip: %lu, %lu unique.", a1[45].i64[0], a1[16].i64[0]);
  }

  if (a1[45].i64[1])
  {
    CFStringAppendFormat(Mutable, 0, @" Color: %lu, %lu unique.", a1[45].i64[1], a1[17].i64[1]);
  }

  if (a1[46].i64[0])
  {
    CFStringAppendFormat(Mutable, 0, @" ColorSpace: %lu, %lu unique.", a1[46].i64[0], a1[19].i64[0]);
  }

  if (a1[46].i64[1])
  {
    CFStringAppendFormat(Mutable, 0, @" Dash: %lu, %lu unique.", a1[46].i64[1], a1[20].i64[1]);
  }

  if (a1[47].i64[0])
  {
    CFStringAppendFormat(Mutable, 0, @" Font: %lu, %lu unique.", a1[47].i64[0], a1[22].i64[0]);
  }

  if (a1[47].i64[1])
  {
    CFStringAppendFormat(Mutable, 0, @" Image: %lu, %lu unique.", a1[47].i64[1], a1[23].i64[1]);
  }

  if (a1[48].i64[0])
  {
    CFStringAppendFormat(Mutable, 0, @" Shading: %lu, %lu unique.", a1[48].i64[0], a1[25].i64[0]);
  }

  if (a1[51].i64[1])
  {
    CFStringAppendFormat(Mutable, 0, @" Gradient: %lu, %lu unique.", a1[51].i64[1], a1[26].i64[1]);
  }

  if (a1[48].i64[1])
  {
    CFStringAppendFormat(Mutable, 0, @" Pattern: %lu, %lu unique.", a1[48].i64[1], a1[28].i64[0]);
  }

  if (a1[49].i64[0])
  {
    CFStringAppendFormat(Mutable, 0, @" Style: %lu, %lu unique.", a1[49].i64[0], a1[29].i64[1]);
  }

  if (a1[49].i64[1])
  {
    CFStringAppendFormat(Mutable, 0, @" SoftMask: %lu, %lu unique.", a1[49].i64[1], a1[31].i64[0]);
  }

  if (a1[50].i64[0])
  {
    CFStringAppendFormat(Mutable, 0, @" Function: %lu, %lu unique.", a1[50].i64[0], a1[32].i64[1]);
  }

  if (a1[50].i64[1])
  {
    CFStringAppendFormat(Mutable, 0, @" DisplayList: %lu, %lu unique.", a1[50].i64[1], a1[34].i64[1]);
  }

  if (a1[51].i64[0])
  {
    CFStringAppendFormat(Mutable, 0, @" CFTypeRef: %lu, %lu unique.", a1[51].i64[0], a1[36].i64[1]);
  }

  CFStringAppendFormat(Mutable, 0, @"\nEntryState count: %lu, %lu unique, (%lu bytes).", vaddvq_s32(vuzp1q_s32(a1[52], a1[53])), a1[39].i64[1] + a1[38].i64[0] + a1[41].i64[0] + a1[42].i64[1], 120 * a1[38].i64[0] + 16 * a1[39].i64[1] + 56 * a1[41].i64[0] + 80 * a1[42].i64[1]);
  if (a1[52].i64[0])
  {
    CFStringAppendFormat(Mutable, 0, @" Drawing: %lu, %lu unique.", a1[52].i64[0], a1[38].i64[0]);
  }

  if (a1[52].i64[1])
  {
    CFStringAppendFormat(Mutable, 0, @" Fill: %lu, %lu unique.", a1[52].i64[1], a1[39].i64[1]);
  }

  if (a1[53].i64[0])
  {
    CFStringAppendFormat(Mutable, 0, @" Stroke: %lu, %lu unique.", a1[53].i64[0], a1[41].i64[0]);
  }

  if (a1[53].i64[1])
  {
    CFStringAppendFormat(Mutable, 0, @" Pattern: %lu, %lu unique.", a1[53].i64[1], a1[42].i64[1]);
  }

  v22 = a1[43].i64[1];
  v23 = a1[43].i64[0];
  v24 = (v22 - v23) >> 4;
  for (i = 0; v23 != v22; i += (*(*v26 + 16))(v26))
  {
    v26 = *v23;
    v23 += 16;
  }

  CFStringAppendFormat(Mutable, 0, @"\nDrawing operations %lu, (%lu bytes):\n", v24, i);
  v27 = a1[43].i64[0];
  v28 = a1[43].i64[1];
  if (v27 != v28)
  {
    for (j = 0; ; ++j)
    {
      v30 = *(*v27 + 8);
      v31 = "Unknown";
      if (v30 <= 8)
      {
        v31 = off_1E6E32178[v30];
      }

      v32 = v30 >> 8;
      v33 = (*(**v27 + 16))(*v27);
      CFStringAppendFormat(Mutable, 0, @"    (%zu) %s, flags = 0x%08x, size = %zu.\n", j, v31, v32, v33);
      if (j == 500)
      {
        break;
      }

      v27 += 2;
      if (v27 == v28)
      {
        return Mutable;
      }
    }

    CFStringAppendFormat(Mutable, 0, @"... %lu more entries ...\n", ((a1[43].i64[1] - a1[43].i64[0]) >> 4) - 500);
  }

  return Mutable;
}

void sub_184278E24(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__shared_ptr_pointer<CG::DisplayListResourceFunction *,std::shared_ptr<CG::DisplayListResourceFunction>::__shared_ptr_default_delete<CG::DisplayListResourceFunction,CG::DisplayListResourceFunction>,std::allocator<CG::DisplayListResourceFunction>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:fe200100](*(a2 + 8), "NSt3__110shared_ptrIN2CG27DisplayListResourceFunctionEE27__shared_ptr_default_deleteIS2_S2_EE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<CG::DisplayListResourceFunction *,std::shared_ptr<CG::DisplayListResourceFunction>::__shared_ptr_default_delete<CG::DisplayListResourceFunction,CG::DisplayListResourceFunction>,std::allocator<CG::DisplayListResourceFunction>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<CG::DisplayListResourceFunction *,std::shared_ptr<CG::DisplayListResourceFunction>::__shared_ptr_default_delete<CG::DisplayListResourceFunction,CG::DisplayListResourceFunction>,std::allocator<CG::DisplayListResourceFunction>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1865EE610);
}

uint64_t std::__shared_ptr_pointer<CG::DisplayListResourceSoftMask *,std::shared_ptr<CG::DisplayListResourceSoftMask>::__shared_ptr_default_delete<CG::DisplayListResourceSoftMask,CG::DisplayListResourceSoftMask>,std::allocator<CG::DisplayListResourceSoftMask>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:fe200100](*(a2 + 8), "NSt3__110shared_ptrIN2CG27DisplayListResourceSoftMaskEE27__shared_ptr_default_deleteIS2_S2_EE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<CG::DisplayListResourceSoftMask *,std::shared_ptr<CG::DisplayListResourceSoftMask>::__shared_ptr_default_delete<CG::DisplayListResourceSoftMask,CG::DisplayListResourceSoftMask>,std::allocator<CG::DisplayListResourceSoftMask>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1865EE610);
}

uint64_t std::__shared_ptr_pointer<CG::DisplayListResourceStyle *,std::shared_ptr<CG::DisplayListResourceStyle>::__shared_ptr_default_delete<CG::DisplayListResourceStyle,CG::DisplayListResourceStyle>,std::allocator<CG::DisplayListResourceStyle>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:fe200100](*(a2 + 8), "NSt3__110shared_ptrIN2CG24DisplayListResourceStyleEE27__shared_ptr_default_deleteIS2_S2_EE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<CG::DisplayListResourceStyle *,std::shared_ptr<CG::DisplayListResourceStyle>::__shared_ptr_default_delete<CG::DisplayListResourceStyle,CG::DisplayListResourceStyle>,std::allocator<CG::DisplayListResourceStyle>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1865EE610);
}

uint64_t CG::DisplayList::patternResourceForPattern(CG::DisplayList *this, CGPattern *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 0;
  }

  ++*(this + 95);
  v3 = this + 424;
  v4 = *(this + 53);
  if (!v4)
  {
    goto LABEL_15;
  }

  v5 = this + 424;
  do
  {
    v7 = *(v4 + 4);
    v6 = *(v4 + 5);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      v8 = *(v7 + 16);
      std::__shared_weak_count::__release_shared[abi:fe200100](v6);
    }

    else
    {
      v8 = *(v7 + 16);
    }

    if (v8 >= a2)
    {
      v5 = v4;
    }

    v4 = *&v4[8 * (v8 < a2)];
  }

  while (v4);
  if (v3 == v5)
  {
    goto LABEL_15;
  }

  v9 = *(v5 + 4);
  v10 = *(v5 + 5);
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    if (*(v9 + 16) < a2)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v10);
      goto LABEL_15;
    }

    v13 = *(v5 + 4);
    v12 = *(v5 + 5);
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      v14 = *(v13 + 16);
      std::__shared_weak_count::__release_shared[abi:fe200100](v12);
    }

    else
    {
      v14 = *(v13 + 16);
    }

    std::__shared_weak_count::__release_shared[abi:fe200100](v10);
    if (v14 <= a2)
    {
      return *(v5 + 4);
    }

LABEL_15:
    operator new();
  }

  if (*(v9 + 16) != a2)
  {
    goto LABEL_15;
  }

  return *(v5 + 4);
}

void sub_18427937C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__shared_ptr_pointer<CG::DisplayListResourcePattern *,std::shared_ptr<CG::DisplayListResourcePattern>::__shared_ptr_default_delete<CG::DisplayListResourcePattern,CG::DisplayListResourcePattern>,std::allocator<CG::DisplayListResourcePattern>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:fe200100](*(a2 + 8), "NSt3__110shared_ptrIN2CG26DisplayListResourcePatternEE27__shared_ptr_default_deleteIS2_S2_EE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<CG::DisplayListResourcePattern *,std::shared_ptr<CG::DisplayListResourcePattern>::__shared_ptr_default_delete<CG::DisplayListResourcePattern,CG::DisplayListResourcePattern>,std::allocator<CG::DisplayListResourcePattern>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<CG::DisplayListResourcePattern *,std::shared_ptr<CG::DisplayListResourcePattern>::__shared_ptr_default_delete<CG::DisplayListResourcePattern,CG::DisplayListResourcePattern>,std::allocator<CG::DisplayListResourcePattern>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1865EE610);
}

uint64_t CG::DisplayList::gradientResourceForGradient(CG::DisplayList *this, CGGradient *a2)
{
  if (!a2)
  {
    return 0;
  }

  ++*(this + 101);
  v3 = this + 400;
  v4 = *(this + 50);
  if (!v4)
  {
    goto LABEL_15;
  }

  v5 = this + 400;
  do
  {
    v7 = *(v4 + 4);
    v6 = *(v4 + 5);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      v8 = *(v7 + 16);
      std::__shared_weak_count::__release_shared[abi:fe200100](v6);
    }

    else
    {
      v8 = *(v7 + 16);
    }

    if (v8 >= a2)
    {
      v5 = v4;
    }

    v4 = *&v4[8 * (v8 < a2)];
  }

  while (v4);
  if (v3 == v5)
  {
    goto LABEL_15;
  }

  v9 = *(v5 + 4);
  v10 = *(v5 + 5);
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    if (*(v9 + 16) < a2)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v10);
      goto LABEL_15;
    }

    v13 = *(v5 + 4);
    v12 = *(v5 + 5);
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      v14 = *(v13 + 16);
      std::__shared_weak_count::__release_shared[abi:fe200100](v12);
    }

    else
    {
      v14 = *(v13 + 16);
    }

    std::__shared_weak_count::__release_shared[abi:fe200100](v10);
    if (v14 <= a2)
    {
      return *(v5 + 4);
    }

LABEL_15:
    operator new();
  }

  if (*(v9 + 16) != a2)
  {
    goto LABEL_15;
  }

  return *(v5 + 4);
}

void sub_18427972C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__shared_ptr_pointer<CG::DisplayListResourceGradient *,std::shared_ptr<CG::DisplayListResourceGradient>::__shared_ptr_default_delete<CG::DisplayListResourceGradient,CG::DisplayListResourceGradient>,std::allocator<CG::DisplayListResourceGradient>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:fe200100](*(a2 + 8), "NSt3__110shared_ptrIN2CG27DisplayListResourceGradientEE27__shared_ptr_default_deleteIS2_S2_EE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<CG::DisplayListResourceGradient *,std::shared_ptr<CG::DisplayListResourceGradient>::__shared_ptr_default_delete<CG::DisplayListResourceGradient,CG::DisplayListResourceGradient>,std::allocator<CG::DisplayListResourceGradient>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<CG::DisplayListResourceGradient *,std::shared_ptr<CG::DisplayListResourceGradient>::__shared_ptr_default_delete<CG::DisplayListResourceGradient,CG::DisplayListResourceGradient>,std::allocator<CG::DisplayListResourceGradient>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1865EE610);
}

uint64_t std::__shared_ptr_pointer<CG::DisplayListResourceShading *,std::shared_ptr<CG::DisplayListResourceShading>::__shared_ptr_default_delete<CG::DisplayListResourceShading,CG::DisplayListResourceShading>,std::allocator<CG::DisplayListResourceShading>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:fe200100](*(a2 + 8), "NSt3__110shared_ptrIN2CG26DisplayListResourceShadingEE27__shared_ptr_default_deleteIS2_S2_EE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<CG::DisplayListResourceShading *,std::shared_ptr<CG::DisplayListResourceShading>::__shared_ptr_default_delete<CG::DisplayListResourceShading,CG::DisplayListResourceShading>,std::allocator<CG::DisplayListResourceShading>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1865EE610);
}

uint64_t std::__shared_ptr_pointer<CG::DisplayListResourceImage *,std::shared_ptr<CG::DisplayListResourceImage>::__shared_ptr_default_delete<CG::DisplayListResourceImage,CG::DisplayListResourceImage>,std::allocator<CG::DisplayListResourceImage>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:fe200100](*(a2 + 8), "NSt3__110shared_ptrIN2CG24DisplayListResourceImageEE27__shared_ptr_default_deleteIS2_S2_EE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<CG::DisplayListResourceImage *,std::shared_ptr<CG::DisplayListResourceImage>::__shared_ptr_default_delete<CG::DisplayListResourceImage,CG::DisplayListResourceImage>,std::allocator<CG::DisplayListResourceImage>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1865EE610);
}

uint64_t std::__shared_ptr_pointer<CG::DisplayListResourceFont *,std::shared_ptr<CG::DisplayListResourceFont>::__shared_ptr_default_delete<CG::DisplayListResourceFont,CG::DisplayListResourceFont>,std::allocator<CG::DisplayListResourceFont>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:fe200100](*(a2 + 8), "NSt3__110shared_ptrIN2CG23DisplayListResourceFontEE27__shared_ptr_default_deleteIS2_S2_EE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<CG::DisplayListResourceFont *,std::shared_ptr<CG::DisplayListResourceFont>::__shared_ptr_default_delete<CG::DisplayListResourceFont,CG::DisplayListResourceFont>,std::allocator<CG::DisplayListResourceFont>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1865EE610);
}

void sub_1842799D0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__shared_ptr_pointer<CG::DisplayListResourceDash *,std::shared_ptr<CG::DisplayListResourceDash>::__shared_ptr_default_delete<CG::DisplayListResourceDash,CG::DisplayListResourceDash>,std::allocator<CG::DisplayListResourceDash>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:fe200100](*(a2 + 8), "NSt3__110shared_ptrIN2CG23DisplayListResourceDashEE27__shared_ptr_default_deleteIS2_S2_EE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<CG::DisplayListResourceDash *,std::shared_ptr<CG::DisplayListResourceDash>::__shared_ptr_default_delete<CG::DisplayListResourceDash,CG::DisplayListResourceDash>,std::allocator<CG::DisplayListResourceDash>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<CG::DisplayListResourceDash *,std::shared_ptr<CG::DisplayListResourceDash>::__shared_ptr_default_delete<CG::DisplayListResourceDash,CG::DisplayListResourceDash>,std::allocator<CG::DisplayListResourceDash>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1865EE610);
}

uint64_t std::__shared_ptr_pointer<CG::DisplayListResourceColorSpace *,std::shared_ptr<CG::DisplayListResourceColorSpace>::__shared_ptr_default_delete<CG::DisplayListResourceColorSpace,CG::DisplayListResourceColorSpace>,std::allocator<CG::DisplayListResourceColorSpace>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:fe200100](*(a2 + 8), "NSt3__110shared_ptrIN2CG29DisplayListResourceColorSpaceEE27__shared_ptr_default_deleteIS2_S2_EE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<CG::DisplayListResourceColorSpace *,std::shared_ptr<CG::DisplayListResourceColorSpace>::__shared_ptr_default_delete<CG::DisplayListResourceColorSpace,CG::DisplayListResourceColorSpace>,std::allocator<CG::DisplayListResourceColorSpace>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1865EE610);
}

uint64_t std::__shared_ptr_pointer<CG::DisplayListResourceColor *,std::shared_ptr<CG::DisplayListResourceColor>::__shared_ptr_default_delete<CG::DisplayListResourceColor,CG::DisplayListResourceColor>,std::allocator<CG::DisplayListResourceColor>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:fe200100](*(a2 + 8), "NSt3__110shared_ptrIN2CG24DisplayListResourceColorEE27__shared_ptr_default_deleteIS2_S2_EE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<CG::DisplayListResourceColor *,std::shared_ptr<CG::DisplayListResourceColor>::__shared_ptr_default_delete<CG::DisplayListResourceColor,CG::DisplayListResourceColor>,std::allocator<CG::DisplayListResourceColor>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1865EE610);
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::shared_ptr<CG::DisplayListResourceClip>,void *>>>::operator()[abi:fe200100](char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[5];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t std::__shared_ptr_pointer<CG::DisplayListResourceClip *,std::shared_ptr<CG::DisplayListResourceClip>::__shared_ptr_default_delete<CG::DisplayListResourceClip,CG::DisplayListResourceClip>,std::allocator<CG::DisplayListResourceClip>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:fe200100](*(a2 + 8), "NSt3__110shared_ptrIN2CG23DisplayListResourceClipEE27__shared_ptr_default_deleteIS2_S2_EE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<CG::DisplayListResourceClip *,std::shared_ptr<CG::DisplayListResourceClip>::__shared_ptr_default_delete<CG::DisplayListResourceClip,CG::DisplayListResourceClip>,std::allocator<CG::DisplayListResourceClip>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1865EE610);
}

void std::__shared_ptr_emplace<CG::DisplayListShape>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1EF23F988;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1865EE610);
}

uint64_t CGDisplayListGetTypeID()
{
  if (_ZZZ22CGDisplayListGetTypeIDEUb_E4once != -1)
  {
    dispatch_once(&_ZZZ22CGDisplayListGetTypeIDEUb_E4once, &__block_literal_global_171_15843);
  }

  return CGDisplayListGetTypeID::display_list2_type_id;
}

CG::DisplayListShape **std::unique_ptr<CG::DisplayListShape>::~unique_ptr[abi:fe200100](CG::DisplayListShape **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    CG::DisplayListShape::~DisplayListShape(v2);
    MEMORY[0x1865EE610]();
  }

  return a1;
}

uint64_t std::__shared_ptr_pointer<CG::DisplayListShape  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:fe200100](*(a2 + 8), "NSt3__114default_deleteIN2CG16DisplayListShapeEEE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

CG::DisplayListShape *std::__shared_ptr_pointer<CG::DisplayListShape  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    CG::DisplayListShape::~DisplayListShape(result);

    JUMPOUT(0x1865EE610);
  }

  return result;
}

void std::__shared_ptr_pointer<CG::DisplayListShape  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1865EE610);
}

void ___ZN2CG11DisplayList18getContentHeadroomEv_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 32) + 8);
  ContentHeadroom = CGColorGetContentHeadroom(*(a2 + 16));
  if (*(v3 + 24) >= ContentHeadroom)
  {
    ContentHeadroom = *(v3 + 24);
  }

  *(*(*(a1 + 32) + 8) + 24) = ContentHeadroom;
}

uint64_t CG::DisplayList::enumerateColorResourcesWithBlock(uint64_t result, char a2, uint64_t a3)
{
  v5 = result;
  v6 = *(result + 248);
  v7 = (result + 256);
  if (v6 != (result + 256))
  {
    do
    {
      result = (*(a3 + 16))(a3, v6[4]);
      v8 = v6[1];
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = v6[2];
          v10 = *v9 == v6;
          v6 = v9;
        }

        while (!v10);
      }

      v6 = v9;
    }

    while (v9 != v7);
  }

  if (a2)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 0x40000000;
    v11[2] = ___ZNK2CG11DisplayList32enumerateColorResourcesWithBlockEbU13block_pointerFvPKNS_24DisplayListResourceColorEE_block_invoke;
    v11[3] = &unk_1E6E32020;
    v12 = a2;
    v11[4] = a3;
    return CG::DisplayList::enumerateDisplayListEntriesWithBlock(*(v5 + 672), *(v5 + 680), v11);
  }

  return result;
}

void ___ZN2CG11DisplayList18getContentHeadroomEv_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 32) + 8);
  HeadroomInfo = CGImageGetHeadroomInfo(*(a2 + 16), 0);
  if (*(v3 + 24) >= HeadroomInfo)
  {
    HeadroomInfo = *(v3 + 24);
  }

  *(*(*(a1 + 32) + 8) + 24) = HeadroomInfo;
}

uint64_t CG::DisplayList::enumerateImageResourcesWithBlock(uint64_t result, char a2, uint64_t a3)
{
  v5 = result;
  v6 = *(result + 344);
  v7 = (result + 352);
  if (v6 != (result + 352))
  {
    do
    {
      result = (*(a3 + 16))(a3, v6[4]);
      v8 = v6[1];
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = v6[2];
          v10 = *v9 == v6;
          v6 = v9;
        }

        while (!v10);
      }

      v6 = v9;
    }

    while (v9 != v7);
  }

  if (a2)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 0x40000000;
    v11[2] = ___ZNK2CG11DisplayList32enumerateImageResourcesWithBlockEbU13block_pointerFvPKNS_24DisplayListResourceImageEE_block_invoke;
    v11[3] = &unk_1E6E32070;
    v12 = a2;
    v11[4] = a3;
    return CG::DisplayList::enumerateDisplayListEntriesWithBlock(*(v5 + 672), *(v5 + 680), v11);
  }

  return result;
}

void ___ZN2CG11DisplayList18getContentHeadroomEv_block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 32) + 8);
  ContentHeadroom = CGShadingGetContentHeadroom(*(a2 + 16));
  if (*(v3 + 24) >= ContentHeadroom)
  {
    ContentHeadroom = *(v3 + 24);
  }

  *(*(*(a1 + 32) + 8) + 24) = ContentHeadroom;
}

uint64_t CG::DisplayList::enumerateShadingResourcesWithBlock(uint64_t result, char a2, uint64_t a3)
{
  v5 = result;
  v6 = *(result + 368);
  v7 = (result + 376);
  if (v6 != (result + 376))
  {
    do
    {
      result = (*(a3 + 16))(a3, v6[4]);
      v8 = v6[1];
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = v6[2];
          v10 = *v9 == v6;
          v6 = v9;
        }

        while (!v10);
      }

      v6 = v9;
    }

    while (v9 != v7);
  }

  if (a2)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 0x40000000;
    v11[2] = ___ZNK2CG11DisplayList34enumerateShadingResourcesWithBlockEbU13block_pointerFvPKNS_26DisplayListResourceShadingEE_block_invoke;
    v11[3] = &unk_1E6E32098;
    v12 = a2;
    v11[4] = a3;
    return CG::DisplayList::enumerateDisplayListEntriesWithBlock(*(v5 + 672), *(v5 + 680), v11);
  }

  return result;
}

void ___ZN2CG11DisplayList18getContentHeadroomEv_block_invoke_4(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 32) + 8);
  ContentHeadroom = CGGradientGetContentHeadroom(*(a2 + 16));
  if (*(v3 + 24) >= ContentHeadroom)
  {
    ContentHeadroom = *(v3 + 24);
  }

  *(*(*(a1 + 32) + 8) + 24) = ContentHeadroom;
}

uint64_t CG::DisplayList::enumerateGradientResourcesWithBlock(uint64_t result, char a2, uint64_t a3)
{
  v5 = result;
  v6 = *(result + 392);
  v7 = (result + 400);
  if (v6 != (result + 400))
  {
    do
    {
      result = (*(a3 + 16))(a3, v6[4]);
      v8 = v6[1];
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = v6[2];
          v10 = *v9 == v6;
          v6 = v9;
        }

        while (!v10);
      }

      v6 = v9;
    }

    while (v9 != v7);
  }

  if (a2)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 0x40000000;
    v11[2] = ___ZNK2CG11DisplayList35enumerateGradientResourcesWithBlockEbU13block_pointerFvPKNS_27DisplayListResourceGradientEE_block_invoke;
    v11[3] = &unk_1E6E320C0;
    v12 = a2;
    v11[4] = a3;
    return CG::DisplayList::enumerateDisplayListEntriesWithBlock(*(v5 + 672), *(v5 + 680), v11);
  }

  return result;
}

void ___ZN2CG11DisplayList18getContentHeadroomEv_block_invoke_5(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 32) + 8);
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = *(v4 + 24);
  }

  else
  {
    v5 = 0;
  }

  ContentHeadroom = CGColorGetContentHeadroom(v5);
  if (*(v3 + 24) >= ContentHeadroom)
  {
    ContentHeadroom = *(v3 + 24);
  }

  *(*(*(a1 + 32) + 8) + 24) = ContentHeadroom;
}

uint64_t CG::DisplayList::enumerateStyleResourcesWithBlock(uint64_t result, char a2, uint64_t a3)
{
  v5 = result;
  v6 = *(result + 440);
  v7 = (result + 448);
  if (v6 != (result + 448))
  {
    do
    {
      result = (*(a3 + 16))(a3, v6[4]);
      v8 = v6[1];
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = v6[2];
          v10 = *v9 == v6;
          v6 = v9;
        }

        while (!v10);
      }

      v6 = v9;
    }

    while (v9 != v7);
  }

  if (a2)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 0x40000000;
    v11[2] = ___ZNK2CG11DisplayList32enumerateStyleResourcesWithBlockEbU13block_pointerFvPKNS_24DisplayListResourceStyleEE_block_invoke;
    v11[3] = &unk_1E6E32110;
    v12 = a2;
    v11[4] = a3;
    return CG::DisplayList::enumerateDisplayListEntriesWithBlock(*(v5 + 672), *(v5 + 680), v11);
  }

  return result;
}

uint64_t CG::DisplayList::enumerateDisplayListEntriesWithBlock(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    do
    {
      if (*(*v5 + 8) == 7)
      {
        v6 = *(*v5 + 80);
        if (v6)
        {
          if (*(v6 + 16))
          {
            result = (*(a3 + 16))(a3);
          }
        }
      }

      v5 += 16;
    }

    while (v5 != a2);
  }

  return result;
}

const __CFURL *CG::DisplayList::serializeToURL(CG::DisplayList *this, CFURLRef anURL, const __CFDictionary *a3)
{
  v63 = *MEMORY[0x1E69E9840];
  String = CFURLCopyQueryString(anURL, &stru_1EF244DC0);
  if (!String)
  {
    goto LABEL_46;
  }

  CFStringGetCString(String, buffer, 255, 0x8000100u);
  v6 = strstr(buffer, "tmpRelative=");
  v7 = v6 && v6[12] == 121 && v6[13] == 101 && v6[14] == 115;
  v8 = strstr(buffer, "addProcID=");
  if (!v8 || v8[10] != 121 || v8[11] != 101)
  {
    v9 = 0;
    if (!v7)
    {
      goto LABEL_18;
    }

LABEL_13:
    if (CGGetTempDirPath_predicate != -1)
    {
      dispatch_once(&CGGetTempDirPath_predicate, &__block_literal_global_119);
    }

    v10 = CFURLCopyPath(anURL);
    v11 = v10;
    if (v10)
    {
      v12 = *MEMORY[0x1E695E480];
      v13 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%s/%@", &CGGetTempDirPath_tempDirPath, v10);
      CFRelease(v11);
      v14 = CFURLCreateWithFileSystemPath(v12, v13, kCFURLPOSIXPathStyle, 1u);
      if (!v9)
      {
        goto LABEL_45;
      }

      goto LABEL_20;
    }

    goto LABEL_18;
  }

  v9 = v8[12] == 115;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_18:
  if (v9)
  {
    v14 = 0;
LABEL_20:
    if (CG::DisplayList::serializeToURL(__CFURL const*,__CFDictionary const*)::onceToken != -1)
    {
      dispatch_once(&CG::DisplayList::serializeToURL(__CFURL const*,__CFDictionary const*)::onceToken, &__block_literal_global_15976);
    }

    LODWORD(v54[0]) = getpid();
    pthread_mutex_lock(&CG::DisplayList::serializeToURL(__CFURL const*,__CFDictionary const*)::dict_mutex);
    v15 = *(CG::DisplayList::serializeToURL(__CFURL const*,__CFDictionary const*)::sPIDMap + 8);
    if (!v15)
    {
      goto LABEL_29;
    }

    v16 = CG::DisplayList::serializeToURL(__CFURL const*,__CFDictionary const*)::sPIDMap + 8;
    do
    {
      if (*(v15 + 28) >= SLODWORD(v54[0]))
      {
        v16 = v15;
      }

      v15 = *(v15 + 8 * (*(v15 + 28) < SLODWORD(v54[0])));
    }

    while (v15);
    if (v16 != CG::DisplayList::serializeToURL(__CFURL const*,__CFDictionary const*)::sPIDMap + 8 && SLODWORD(v54[0]) >= *(v16 + 28))
    {
      v17 = (*(v16 + 32) + 1);
    }

    else
    {
LABEL_29:
      v17 = 1;
    }

    *buffer = v54;
    *(std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,std::less<int>,true>,std::allocator<std::__value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(CG::DisplayList::serializeToURL(__CFURL const*,__CFDictionary const*)::sPIDMap, v54[0]) + 8) = v17;
    pthread_mutex_unlock(&CG::DisplayList::serializeToURL(__CFURL const*,__CFDictionary const*)::dict_mutex);
    if (v14)
    {
      v18 = v14;
    }

    else
    {
      v18 = anURL;
    }

    v19 = *MEMORY[0x1E695E480];
    v20 = CFURLCreateCopyDeletingPathExtension(*MEMORY[0x1E695E480], v18);
    PathComponent = CFURLCopyLastPathComponent(v20);
    v22 = CFStringCreateWithFormat(v19, 0, @"%@_%d_%d", PathComponent, LODWORD(v54[0]), v17);
    v23 = CFURLCreateCopyDeletingLastPathComponent(v19, v18);
    v24 = CFURLCreateCopyAppendingPathComponent(v19, v23, v22, 1u);
    if (v14)
    {
      CFRelease(v14);
    }

    v14 = CFURLCreateCopyAppendingPathExtension(v19, v24, @"dlist");
    if (v20)
    {
      CFRelease(v20);
    }

    if (PathComponent)
    {
      CFRelease(PathComponent);
    }

    if (v22)
    {
      CFRelease(v22);
    }

    if (v23)
    {
      CFRelease(v23);
    }

    if (v24)
    {
      CFRelease(v24);
    }

LABEL_45:
    if (v14)
    {
      goto LABEL_47;
    }
  }

LABEL_46:
  v14 = CFRetain(anURL);
LABEL_47:
  if (!CFURLGetFileSystemRepresentation(v14, 0, buffer, 1024))
  {
    if (!v14)
    {
      return 0;
    }

LABEL_74:
    CFRelease(v14);
    return 0;
  }

  v25 = strlen(buffer);
  if (v25 && buffer[v25 - 1] != 47)
  {
    strlcat(buffer, "/", 0x401uLL);
  }

  v26 = strchr(&buffer[1], 47);
  if (v26)
  {
    v27 = v26;
    while (1)
    {
      *v27 = 0;
      if (mkdir(buffer, 0x1FFu) == -1 && *__error() != 17)
      {
        break;
      }

      *v27 = 47;
      v27 = strchr(v27 + 1, 47);
      if (!v27)
      {
        goto LABEL_56;
      }
    }

    __error();
    CGPostError("%s: Failed to create directory for path: %s, errno = %d", v46, v47, v48, v49, v50, v51, v52, "CFURLRef CG::DisplayList::serializeToURL(CFURLRef, CFDictionaryRef)");
    if (!v14)
    {
      return 0;
    }

    goto LABEL_74;
  }

LABEL_56:
  v54[0] = &unk_1EF238DC8;
  v54[1] = this;
  v55 = 0;
  if (v14)
  {
    v55 = CFRetain(v14);
  }

  v58 = 0;
  v59 = v60;
  buf = 0;
  v57 = 0;
  v54[0] = &unk_1EF238D68;
  v60[0] = 0;
  v60[1] = 0;
  v61[0] = 0;
  v61[1] = 0;
  v60[2] = v61;
  v28 = xmlBufferCreate();
  buf = v28;
  if (v28)
  {
    v57 = xmlNewTextWriterMemory(v28, 0);
    if (!v57)
    {
      CGPostError("%s: xmlNewTextWriterMemory() returned NULL", v36, v37, v38, v39, v40, v41, v42, "CG::DisplayListXMLSerializer::DisplayListXMLSerializer(const DisplayList *, CFURLRef)");
      xmlBufferFree(buf);
      buf = 0;
    }
  }

  else
  {
    CGPostError("%s: xmlBufferCreate() returned NULL", v29, v30, v31, v32, v33, v34, v35, "CG::DisplayListXMLSerializer::DisplayListXMLSerializer(const DisplayList *, CFURLRef)");
  }

  v43 = CG::DisplayListXMLSerializer::serialize(v54);
  if (v14)
  {
    v44 = v43;
  }

  else
  {
    v44 = 1;
  }

  if (v43)
  {
    v45 = v14;
  }

  else
  {
    v45 = 0;
  }

  if ((v44 & 1) == 0)
  {
    CFRelease(v14);
    v45 = 0;
  }

  CG::DisplayListXMLSerializer::~DisplayListXMLSerializer(v54);
  return v45;
}

void sub_18427AAB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  CG::DisplayListXMLSerializer::~DisplayListXMLSerializer(va);
  _Unwind_Resume(a1);
}

uint64_t CG::DisplayList::enumeratePatternResourcesWithBlock(uint64_t result, char a2, uint64_t a3)
{
  v5 = result;
  v6 = *(result + 416);
  v7 = (result + 424);
  if (v6 != (result + 424))
  {
    do
    {
      result = (*(a3 + 16))(a3, v6[4]);
      v8 = v6[1];
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = v6[2];
          v10 = *v9 == v6;
          v6 = v9;
        }

        while (!v10);
      }

      v6 = v9;
    }

    while (v9 != v7);
  }

  if (a2)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 0x40000000;
    v11[2] = ___ZNK2CG11DisplayList34enumeratePatternResourcesWithBlockEbU13block_pointerFvPKNS_26DisplayListResourcePatternEE_block_invoke;
    v11[3] = &unk_1E6E320E8;
    v12 = a2;
    v11[4] = a3;
    return CG::DisplayList::enumerateDisplayListEntriesWithBlock(*(v5 + 672), *(v5 + 680), v11);
  }

  return result;
}

CGImageRef CG::DisplayList::createImage(CG::DisplayList *this)
{
  v66 = 0;
  v67 = &v66;
  v68 = 0x2000000000;
  v69 = 0;
  v62 = 0;
  v63 = &v62;
  v64 = 0x2000000000;
  v65 = 0;
  v58 = 0;
  v59 = &v58;
  v60 = 0x2000000000;
  v61 = 0;
  v54 = 0;
  v55 = &v54;
  v56 = 0x2000000000;
  v57 = 0;
  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 0x40000000;
  v53[2] = ___ZN2CG11DisplayList11createImageEv_block_invoke;
  v53[3] = &unk_1E6E31E98;
  v53[4] = &v66;
  v53[5] = &v54;
  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 0x40000000;
  v52[2] = ___ZN2CG11DisplayList11createImageEv_block_invoke_2;
  v52[3] = &unk_1E6E31EC0;
  v52[4] = v53;
  CG::DisplayList::enumerateColorSpaceResourcesWithBlock(this, 1, v52);
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 0x40000000;
  v51[2] = ___ZN2CG11DisplayList11createImageEv_block_invoke_3;
  v51[3] = &unk_1E6E31F30;
  v51[5] = &v62;
  v51[6] = &v58;
  v51[4] = v53;
  CG::DisplayList::enumeratePatternResourcesWithBlock(this, 1, v51);
  v47 = 0;
  v48 = &v47;
  v49 = 0x2000000000;
  v50 = 0;
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 0x40000000;
  v46[2] = ___ZN2CG11DisplayList11createImageEv_block_invoke_5;
  v46[3] = &unk_1E6E31F58;
  v46[4] = &v47;
  CG::DisplayList::enumerateImageResourcesWithBlock(this, 1, v46);
  v42 = 0;
  v43 = &v42;
  v44 = 0x2000000000;
  v45 = 0;
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 0x40000000;
  v41[2] = ___ZN2CG11DisplayList11createImageEv_block_invoke_6;
  v41[3] = &unk_1E6E31F80;
  v41[4] = &v42;
  CG::DisplayList::enumerateImageResourcesWithBlock(this, 1, v41);
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 0x40000000;
  v40[2] = ___ZN2CG11DisplayList11createImageEv_block_invoke_7;
  v40[3] = &unk_1E6E31FA8;
  v40[4] = &v42;
  CG::DisplayList::enumerateColorResourcesWithBlock(this, 1, v40);
  if (*(this + 45))
  {
    v3 = v67;
  }

  else
  {
    if (*(v55 + 6) <= 3u && (v59[3] & 1) == 0)
    {
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 0x40000000;
      v39[2] = ___ZN2CG11DisplayList11createImageEv_block_invoke_8;
      v39[3] = &unk_1E6E31FD0;
      v39[4] = &v58;
      CG::DisplayList::enumerateColorResourcesWithBlock(this, 1, v39);
      if ((v59[3] & 1) == 0)
      {
        *(v55 + 6) = 1;
      }
    }

    v3 = v67;
    if (*(v67 + 24) == 1 && (v63[3] & 1) == 0)
    {
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 0x40000000;
      v38[2] = ___ZN2CG11DisplayList11createImageEv_block_invoke_9;
      v38[3] = &unk_1E6E31FF8;
      v38[4] = &v62;
      CG::DisplayList::enumerateColorResourcesWithBlock(this, 1, v38);
      v3 = v67;
      if ((v63[3] & 1) == 0)
      {
        *(v67 + 24) = 0;
      }
    }
  }

  v4 = *(v48 + 6);
  v5 = *(v55 + 6);
  v6 = *(v3 + 24);
  v7 = CG::DisplayList::containsTransparentContent(this, v2);
  v8 = v43[6];
  if (v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = 5;
  }

  if (v5 == 1 && v4 == 1 && v6 == 0)
  {
    v12 = v7;
  }

  else
  {
    v12 = v9;
  }

  v13 = v4 - 2;
  if ((v4 - 2) >= 4)
  {
    v15 = 8;
    v14 = 16;
  }

  else
  {
    v14 = qword_1844F1B68[v13];
    v15 = qword_1844F1B88[v13];
  }

  if (v8 > 1.0)
  {
    v16 = 1;
  }

  else
  {
    v16 = v6;
  }

  if (v16)
  {
    v17 = @"kCGColorSpaceExtendedSRGB";
  }

  else
  {
    v17 = @"kCGColorSpaceSRGB";
  }

  if (v5 == 1)
  {
    v18 = @"kCGColorSpaceGenericGrayGamma2_2";
  }

  else
  {
    v18 = v17;
  }

  v19 = CGColorSpaceCreateWithName(v18);
  v20 = CGColorSpaceUsesExtendedRange(v19);
  if (v20)
  {
    v21 = v14;
  }

  else
  {
    v21 = v15;
  }

  if (v20)
  {
    v22 = 4352;
  }

  else
  {
    v22 = 0;
  }

  v23 = vcvtpd_u64_f64(*(this + 5));
  v24 = vcvtpd_u64_f64(*(this + 6));
  if (v19 && (v25 = *(*(v19 + 3) + 48)) != 0)
  {
    v26 = v25 + 1;
  }

  else
  {
    v26 = 0;
  }

  v27 = CGBitmapContextCreateWithData(0, v23, v24, v21, ((v21 >> 3) * v23 * v26 + 31) & 0xFFFFFFFFFFFFFFE0, v19, v22 | v12, 0, 0);
  if (v27)
  {
    v35 = v27;
    if (v8 > 1.0)
    {
      CGContextSetEDRTargetHeadroom(v27, v28, v29, v30, v31, v32, v33, v34, v8);
    }

    CGDisplayListDrawInContext(*(this + 1), v35, v29, v30, v31, v32, v33, v34);
    Image = CGBitmapContextCreateImage(v35);
    CFRelease(v35);
  }

  else
  {
    Image = 0;
  }

  _Block_object_dispose(&v42, 8);
  _Block_object_dispose(&v47, 8);
  _Block_object_dispose(&v54, 8);
  _Block_object_dispose(&v58, 8);
  _Block_object_dispose(&v62, 8);
  _Block_object_dispose(&v66, 8);
  return Image;
}

void sub_18427B1A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose((v39 - 208), 8);
  _Block_object_dispose((v39 - 176), 8);
  _Block_object_dispose((v39 - 144), 8);
  _Block_object_dispose((v39 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZN2CG11DisplayList11createImageEv_block_invoke(uint64_t a1, CGColorSpaceRef a2)
{
  *(*(*(a1 + 32) + 8) + 24) |= CGColorSpaceIsWideGamutRGB(a2);
  result = CGColorSpaceGetProcessColorModel(a2);
  if (result <= 4)
  {
    *(*(*(a1 + 40) + 8) + 24) |= dword_1844F1BA8[result];
  }

  return result;
}

uint64_t CG::DisplayList::enumerateColorSpaceResourcesWithBlock(uint64_t result, char a2, uint64_t a3)
{
  v5 = result;
  v6 = *(result + 272);
  v7 = (result + 280);
  if (v6 != (result + 280))
  {
    do
    {
      result = (*(a3 + 16))(a3, v6[4]);
      v8 = v6[1];
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = v6[2];
          v10 = *v9 == v6;
          v6 = v9;
        }

        while (!v10);
      }

      v6 = v9;
    }

    while (v9 != v7);
  }

  if (a2)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 0x40000000;
    v11[2] = ___ZNK2CG11DisplayList37enumerateColorSpaceResourcesWithBlockEbU13block_pointerFvPKNS_29DisplayListResourceColorSpaceEE_block_invoke;
    v11[3] = &unk_1E6E32048;
    v12 = a2;
    v11[4] = a3;
    return CG::DisplayList::enumerateDisplayListEntriesWithBlock(*(v5 + 672), *(v5 + 680), v11);
  }

  return result;
}

void ___ZN2CG11DisplayList11createImageEv_block_invoke_3(uint64_t a1, uint64_t a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 16);
  if (*(v2 + 185) == 1)
  {
    *keys = xmmword_1E6E31EE0;
    v29 = *off_1E6E31EF0;
    values[0] = *MEMORY[0x1E695E4C0];
    values[1] = values[0];
    values[2] = *MEMORY[0x1E695E4D0];
    values[3] = values[0];
    v4 = CFDictionaryCreate(0, keys, values, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (v4)
    {
      v11 = v4;
      CGDisplayList = CG::DisplayList::createCGDisplayList(v4, &CGRectInfinite, v5, v6, v7, v8, v9, v10);
      if (CGDisplayList)
      {
        v20 = CGDisplayList;
        v21 = CGDisplayListContextCreate(CGDisplayList, v13, v14, v15, v16, v17, v18, v19);
        if (v21)
        {
          v22 = v21;
          v23 = *(v2 + 168);
          if (v23)
          {
            v23(*(v2 + 80), v21);
          }

          CFRelease(v22);
        }

        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 0x40000000;
        v24[2] = ___ZN2CG11DisplayList11createImageEv_block_invoke_4;
        v24[3] = &unk_1E6E31F08;
        v26 = *(a1 + 48);
        v25 = *(a1 + 32);
        CG::DisplayList::enumerateColorResourcesWithBlock(v20 + 16, 1, v24);
        CFRelease(v20);
      }

      CFRelease(v11);
    }
  }
}

uint64_t ___ZN2CG11DisplayList11createImageEv_block_invoke_5(uint64_t a1, uint64_t a2)
{
  result = CGImageGetComponentType(*(a2 + 16));
  if (result)
  {
    result = CGPixelComponentMax(result, *(*(*(a1 + 32) + 8) + 24), v4, v5, v6, v7, v8, v9);
    *(*(*(a1 + 32) + 8) + 24) = result;
  }

  return result;
}

void ___ZN2CG11DisplayList11createImageEv_block_invoke_6(uint64_t a1, uint64_t a2)
{
  HeadroomInfo = CGImageGetHeadroomInfo(*(a2 + 16), 0);
  v4 = *(*(a1 + 32) + 8);
  if (HeadroomInfo <= *(v4 + 24))
  {
    HeadroomInfo = *(v4 + 24);
  }

  *(v4 + 24) = HeadroomInfo;
}

void ___ZN2CG11DisplayList11createImageEv_block_invoke_7(uint64_t a1, uint64_t a2)
{
  ContentHeadroom = CGColorGetContentHeadroom(*(a2 + 16));
  v4 = *(*(a1 + 32) + 8);
  if (ContentHeadroom <= *(v4 + 24))
  {
    ContentHeadroom = *(v4 + 24);
  }

  *(v4 + 24) = ContentHeadroom;
}

const CGFloat *___ZN2CG11DisplayList11createImageEv_block_invoke_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a2 + 16);
  if (v9)
  {
    if ((v9 & 0x8000000000000000) != 0)
    {
      ColorSpace = CGTaggedColorGetColorSpace(*(a2 + 16), a2, a3, a4, a5, a6, a7, a8);
    }

    else
    {
      ColorSpace = *(v9 + 24);
    }
  }

  else
  {
    ColorSpace = 0;
  }

  result = CGColorSpaceGetModel(ColorSpace);
  if (result == 1)
  {
    result = CGColorGetComponents(v9);
    v12 = result[1];
    if (*result != v12 || v12 != result[2])
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
    }
  }

  return result;
}

uint64_t ___ZN2CG11DisplayList11createImageEv_block_invoke_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a2 + 16);
  if (v9)
  {
    if ((v9 & 0x8000000000000000) != 0)
    {
      ColorSpace = CGTaggedColorGetColorSpace(*(a2 + 16), a2, a3, a4, a5, a6, a7, a8);
    }

    else
    {
      ColorSpace = *(v9 + 24);
    }
  }

  else
  {
    ColorSpace = 0;
  }

  result = CGColorSpaceGetModel(ColorSpace);
  if (result == 1)
  {
    result = CGColorSpaceIsWideGamutRGB(ColorSpace);
    if (result)
    {
      result = CGColorIsWideGamut(v9);
      *(*(*(a1 + 32) + 8) + 24) |= result;
    }
  }

  return result;
}

uint64_t ___ZN2CG11DisplayList11createImageEv_block_invoke_4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a2 + 16);
  if (v9)
  {
    if ((v9 & 0x8000000000000000) != 0)
    {
      ColorSpace = CGTaggedColorGetColorSpace(*(a2 + 16), a2, a3, a4, a5, a6, a7, a8);
    }

    else
    {
      ColorSpace = *(v9 + 24);
    }
  }

  else
  {
    ColorSpace = 0;
  }

  if (CGColorSpaceIsWideGamutRGB(ColorSpace))
  {
    *(*(a1[5] + 8) + 24) |= CGColorIsWideGamut(v9);
  }

  if (CGColorSpaceGetModel(ColorSpace) == kCGColorSpaceModelRGB)
  {
    Components = CGColorGetComponents(v9);
    v12 = Components[1];
    if (*Components != v12 || v12 != Components[2])
    {
      *(*(a1[6] + 8) + 24) = 1;
    }
  }

  v13 = *(a1[4] + 16);

  return v13();
}

void CGDisplayListRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t std::__shared_ptr_pointer<CG::DisplayListEntry const*,std::shared_ptr<CG::DisplayListEntry const>::__shared_ptr_default_delete<CG::DisplayListEntry const,CG::DisplayListEntry const>,std::allocator<CG::DisplayListEntry>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:fe200100](*(a2 + 8), "NSt3__110shared_ptrIKN2CG16DisplayListEntryEE27__shared_ptr_default_deleteIS3_S3_EE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<CG::DisplayListEntry const*,std::shared_ptr<CG::DisplayListEntry const>::__shared_ptr_default_delete<CG::DisplayListEntry const,CG::DisplayListEntry const>,std::allocator<CG::DisplayListEntry>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1865EE610);
}

uint64_t std::__shared_ptr_pointer<CG::DisplayListEntryStateDrawing *,std::shared_ptr<CG::DisplayListEntryStateDrawing const>::__shared_ptr_default_delete<CG::DisplayListEntryStateDrawing const,CG::DisplayListEntryStateDrawing>,std::allocator<CG::DisplayListEntryStateDrawing>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:fe200100](*(a2 + 8), "NSt3__110shared_ptrIKN2CG28DisplayListEntryStateDrawingEE27__shared_ptr_default_deleteIS3_S2_EE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<CG::DisplayListEntryStateDrawing *,std::shared_ptr<CG::DisplayListEntryStateDrawing const>::__shared_ptr_default_delete<CG::DisplayListEntryStateDrawing const,CG::DisplayListEntryStateDrawing>,std::allocator<CG::DisplayListEntryStateDrawing>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1865EE610);
}

uint64_t std::__shared_ptr_pointer<CG::DisplayListEntryStateFill *,std::shared_ptr<CG::DisplayListEntryStateFill const>::__shared_ptr_default_delete<CG::DisplayListEntryStateFill const,CG::DisplayListEntryStateFill>,std::allocator<CG::DisplayListEntryStateFill>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:fe200100](*(a2 + 8), "NSt3__110shared_ptrIKN2CG25DisplayListEntryStateFillEE27__shared_ptr_default_deleteIS3_S2_EE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<CG::DisplayListEntryStateFill *,std::shared_ptr<CG::DisplayListEntryStateFill const>::__shared_ptr_default_delete<CG::DisplayListEntryStateFill const,CG::DisplayListEntryStateFill>,std::allocator<CG::DisplayListEntryStateFill>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1865EE610);
}

uint64_t std::__shared_ptr_pointer<CG::DisplayListEntryStateStroke *,std::shared_ptr<CG::DisplayListEntryStateStroke const>::__shared_ptr_default_delete<CG::DisplayListEntryStateStroke const,CG::DisplayListEntryStateStroke>,std::allocator<CG::DisplayListEntryStateStroke>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:fe200100](*(a2 + 8), "NSt3__110shared_ptrIKN2CG27DisplayListEntryStateStrokeEE27__shared_ptr_default_deleteIS3_S2_EE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<CG::DisplayListEntryStateStroke *,std::shared_ptr<CG::DisplayListEntryStateStroke const>::__shared_ptr_default_delete<CG::DisplayListEntryStateStroke const,CG::DisplayListEntryStateStroke>,std::allocator<CG::DisplayListEntryStateStroke>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1865EE610);
}

BOOL CG::CompareEntryStatePattern::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 24);
  __s1[0] = *(a1 + 8);
  __s1[1] = v5;
  __s1[2] = *(a1 + 40);
  v6 = *(a3 + 40);
  v14[0] = *(a3 + 24);
  v14[1] = v6;
  v14[2] = *(a3 + 56);
  v7 = memcmp(__s1, v14, 0x30uLL);
  if (v7 < 0)
  {
    return 1;
  }

  if (v7)
  {
    return 0;
  }

  v9 = *(a1 + 56);
  v10 = *(a2 + 120);
  v11 = *(v10 + 24);
  if (v9 < v11)
  {
    return 1;
  }

  if (v9 > v11)
  {
    return 0;
  }

  v12 = *(a1 + 64);
  v13 = *(v10 + 32);
  if (v12 < v13)
  {
    return 1;
  }

  if (v12 > v13)
  {
    return 0;
  }

  return *(a1 + 72) < *(*(a2 + 144) + 16);
}

uint64_t std::__shared_ptr_pointer<CG::DisplayListEntryStatePattern *,std::shared_ptr<CG::DisplayListEntryStatePattern const>::__shared_ptr_default_delete<CG::DisplayListEntryStatePattern const,CG::DisplayListEntryStatePattern>,std::allocator<CG::DisplayListEntryStatePattern>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:fe200100](*(a2 + 8), "NSt3__110shared_ptrIKN2CG28DisplayListEntryStatePatternEE27__shared_ptr_default_deleteIS3_S2_EE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<CG::DisplayListEntryStatePattern *,std::shared_ptr<CG::DisplayListEntryStatePattern const>::__shared_ptr_default_delete<CG::DisplayListEntryStatePattern const,CG::DisplayListEntryStatePattern>,std::allocator<CG::DisplayListEntryStatePattern>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1865EE610);
}

uint64_t CG::DisplayList::enumerateAllResourcesWithBlock(uint64_t result, char a2, uint64_t a3)
{
  v5 = result;
  v6 = *(result + 224);
  v7 = (result + 232);
  if (v6 != (result + 232))
  {
    do
    {
      result = (*(a3 + 16))(a3, v6[4]);
      v8 = v6[1];
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = v6[2];
          v10 = *v9 == v6;
          v6 = v9;
        }

        while (!v10);
      }

      v6 = v9;
    }

    while (v9 != v7);
  }

  v11 = v5[31];
  if (v11 != v5 + 32)
  {
    do
    {
      result = (*(a3 + 16))(a3, v11[4]);
      v12 = v11[1];
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = v11[2];
          v10 = *v13 == v11;
          v11 = v13;
        }

        while (!v10);
      }

      v11 = v13;
    }

    while (v13 != v5 + 32);
  }

  v14 = v5[34];
  if (v14 != v5 + 35)
  {
    do
    {
      result = (*(a3 + 16))(a3, v14[4]);
      v15 = v14[1];
      if (v15)
      {
        do
        {
          v16 = v15;
          v15 = *v15;
        }

        while (v15);
      }

      else
      {
        do
        {
          v16 = v14[2];
          v10 = *v16 == v14;
          v14 = v16;
        }

        while (!v10);
      }

      v14 = v16;
    }

    while (v16 != v5 + 35);
  }

  v17 = v5[37];
  if (v17 != v5 + 38)
  {
    do
    {
      result = (*(a3 + 16))(a3, v17[4]);
      v18 = v17[1];
      if (v18)
      {
        do
        {
          v19 = v18;
          v18 = *v18;
        }

        while (v18);
      }

      else
      {
        do
        {
          v19 = v17[2];
          v10 = *v19 == v17;
          v17 = v19;
        }

        while (!v10);
      }

      v17 = v19;
    }

    while (v19 != v5 + 38);
  }

  v20 = v5[40];
  if (v20 != v5 + 41)
  {
    do
    {
      result = (*(a3 + 16))(a3, v20[4]);
      v21 = v20[1];
      if (v21)
      {
        do
        {
          v22 = v21;
          v21 = *v21;
        }

        while (v21);
      }

      else
      {
        do
        {
          v22 = v20[2];
          v10 = *v22 == v20;
          v20 = v22;
        }

        while (!v10);
      }

      v20 = v22;
    }

    while (v22 != v5 + 41);
  }

  v23 = v5[43];
  if (v23 != v5 + 44)
  {
    do
    {
      result = (*(a3 + 16))(a3, v23[4]);
      v24 = v23[1];
      if (v24)
      {
        do
        {
          v25 = v24;
          v24 = *v24;
        }

        while (v24);
      }

      else
      {
        do
        {
          v25 = v23[2];
          v10 = *v25 == v23;
          v23 = v25;
        }

        while (!v10);
      }

      v23 = v25;
    }

    while (v25 != v5 + 44);
  }

  v26 = v5[46];
  if (v26 != v5 + 47)
  {
    do
    {
      result = (*(a3 + 16))(a3, v26[4]);
      v27 = v26[1];
      if (v27)
      {
        do
        {
          v28 = v27;
          v27 = *v27;
        }

        while (v27);
      }

      else
      {
        do
        {
          v28 = v26[2];
          v10 = *v28 == v26;
          v26 = v28;
        }

        while (!v10);
      }

      v26 = v28;
    }

    while (v28 != v5 + 47);
  }

  v29 = v5[49];
  if (v29 != v5 + 50)
  {
    do
    {
      result = (*(a3 + 16))(a3, v29[4]);
      v30 = v29[1];
      if (v30)
      {
        do
        {
          v31 = v30;
          v30 = *v30;
        }

        while (v30);
      }

      else
      {
        do
        {
          v31 = v29[2];
          v10 = *v31 == v29;
          v29 = v31;
        }

        while (!v10);
      }

      v29 = v31;
    }

    while (v31 != v5 + 50);
  }

  v32 = v5[52];
  if (v32 != v5 + 53)
  {
    do
    {
      result = (*(a3 + 16))(a3, v32[4]);
      v33 = v32[1];
      if (v33)
      {
        do
        {
          v34 = v33;
          v33 = *v33;
        }

        while (v33);
      }

      else
      {
        do
        {
          v34 = v32[2];
          v10 = *v34 == v32;
          v32 = v34;
        }

        while (!v10);
      }

      v32 = v34;
    }

    while (v34 != v5 + 53);
  }

  v35 = v5[55];
  if (v35 != v5 + 56)
  {
    do
    {
      result = (*(a3 + 16))(a3, v35[4]);
      v36 = v35[1];
      if (v36)
      {
        do
        {
          v37 = v36;
          v36 = *v36;
        }

        while (v36);
      }

      else
      {
        do
        {
          v37 = v35[2];
          v10 = *v37 == v35;
          v35 = v37;
        }

        while (!v10);
      }

      v35 = v37;
    }

    while (v37 != v5 + 56);
  }

  v38 = v5[58];
  if (v38 != v5 + 59)
  {
    do
    {
      result = (*(a3 + 16))(a3, v38[4]);
      v39 = v38[1];
      if (v39)
      {
        do
        {
          v40 = v39;
          v39 = *v39;
        }

        while (v39);
      }

      else
      {
        do
        {
          v40 = v38[2];
          v10 = *v40 == v38;
          v38 = v40;
        }

        while (!v10);
      }

      v38 = v40;
    }

    while (v40 != v5 + 59);
  }

  v41 = v5[61];
  if (v41 != v5 + 62)
  {
    do
    {
      result = (*(a3 + 16))(a3, v41[4]);
      v42 = v41[1];
      if (v42)
      {
        do
        {
          v43 = v42;
          v42 = *v42;
        }

        while (v42);
      }

      else
      {
        do
        {
          v43 = v41[2];
          v10 = *v43 == v41;
          v41 = v43;
        }

        while (!v10);
      }

      v41 = v43;
    }

    while (v43 != v5 + 62);
  }

  for (i = v5[66]; i; i = *i)
  {
    result = (*(a3 + 16))(a3, i[2]);
  }

  v45 = v5[69];
  if (v45 != v5 + 70)
  {
    do
    {
      result = (*(a3 + 16))(a3, v45[4]);
      v46 = v45[1];
      if (v46)
      {
        do
        {
          v47 = v46;
          v46 = *v46;
        }

        while (v46);
      }

      else
      {
        do
        {
          v47 = v45[2];
          v10 = *v47 == v45;
          v45 = v47;
        }

        while (!v10);
      }

      v45 = v47;
    }

    while (v47 != v5 + 70);
  }

  if (a2)
  {
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 0x40000000;
    v48[2] = ___ZNK2CG11DisplayList30enumerateAllResourcesWithBlockEbU13block_pointerFvPKNS_19DisplayListResourceEE_block_invoke;
    v48[3] = &unk_1E6E32138;
    v49 = a2;
    v48[4] = a3;
    return CG::DisplayList::enumerateDisplayListEntriesWithBlock(v5[84], v5[85], v48);
  }

  return result;
}

uint64_t CGDisplayListReset(uint64_t result)
{
  if (result)
  {
    *(result + 80) = 0;
    *(result + 88) = CGRectNull;
    operator new();
  }

  return result;
}

void sub_18427C3B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::unique_ptr<CG::DisplayListShape>::~unique_ptr[abi:fe200100](va);
  _Unwind_Resume(a1);
}

CFTypeRef CGDisplayListRetain(CFTypeRef cf)
{
  if (cf)
  {
    return CFRetain(cf);
  }

  return cf;
}

double *CGDisplayListSetBoundingBox(double *result, double a2, double a3, double a4, double a5)
{
  if (result)
  {
    result[11] = a2;
    result[12] = a3;
    result[13] = a4;
    result[14] = a5;
  }

  return result;
}

CGFloat CGDisplayListGetBoundingBox(uint64_t a1)
{
  v1 = &CGRectNull;
  if (a1 && *(a1 + 688) != *(a1 + 696))
  {
    v1 = (a1 + 88);
  }

  return v1->origin.x;
}

uint64_t CGDisplayListContextDelegateCreate(uint64_t result)
{
  if (result)
  {
    CG::DisplayList::createContextDelegate();
  }

  return result;
}

uint64_t CGDisplayListContainsTransparentContent(uint64_t result, const CGRect *a2)
{
  if (result)
  {
    return CG::DisplayList::containsTransparentContent((result + 16), a2);
  }

  return result;
}

float CGDisplayListGetContentHeadroom(uint64_t a1)
{
  if (!a1)
  {
    return 0.0;
  }

  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 0x40000000;
  v8[2] = ___ZN2CG11DisplayList18getContentHeadroomEv_block_invoke;
  v8[3] = &unk_1E6E31D90;
  v8[4] = &v9;
  CG::DisplayList::enumerateColorResourcesWithBlock(a1 + 16, 1, v8);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 0x40000000;
  v7[2] = ___ZN2CG11DisplayList18getContentHeadroomEv_block_invoke_2;
  v7[3] = &unk_1E6E31DB8;
  v7[4] = &v9;
  CG::DisplayList::enumerateImageResourcesWithBlock(a1 + 16, 1, v7);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = ___ZN2CG11DisplayList18getContentHeadroomEv_block_invoke_3;
  v6[3] = &unk_1E6E31DE0;
  v6[4] = &v9;
  CG::DisplayList::enumerateShadingResourcesWithBlock(a1 + 16, 1, v6);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = ___ZN2CG11DisplayList18getContentHeadroomEv_block_invoke_4;
  v5[3] = &unk_1E6E31E08;
  v5[4] = &v9;
  CG::DisplayList::enumerateGradientResourcesWithBlock(a1 + 16, 1, v5);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZN2CG11DisplayList18getContentHeadroomEv_block_invoke_5;
  v4[3] = &unk_1E6E31E30;
  v4[4] = &v9;
  CG::DisplayList::enumerateStyleResourcesWithBlock(a1 + 16, 1, v4);
  v2 = v10[6];
  _Block_object_dispose(&v9, 8);
  return v2;
}

const __CFURL *CGDisplayListSerializeToURL(uint64_t a1, const __CFURL *a2, const __CFDictionary *a3)
{
  if (a1 && a2)
  {
    return CG::DisplayList::serializeToURL((a1 + 16), a2, a3);
  }

  else
  {
    return 0;
  }
}

uint64_t CGDisplayListCreateWithURL(const void *a1, uint64_t a2, const CGRect *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return 0;
  }

  CGDisplayList = CG::DisplayList::createCGDisplayList(0, &CGRectInfinite, a3, a4, a5, a6, a7, a8);
  v12[0] = 0;
  v12[1] = 0;
  v11[0] = &unk_1EF239990;
  v11[1] = CFRetain(a1);
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v12;
  v13[0] = 0;
  v13[1] = 0;
  v12[2] = v13;
  if ((CG::DisplayListXMLDeserializer::deserializeTo(v11, (CGDisplayList + 16)) & 1) == 0)
  {
    CFRelease(CGDisplayList);
    CGDisplayList = 0;
  }

  CG::DisplayListXMLDeserializer::~DisplayListXMLDeserializer(v11);
  return CGDisplayList;
}

BOOL CGDisplayListDumpToFile(uint64_t a1, char *__s)
{
  v2 = 0;
  v30 = *MEMORY[0x1E69E9840];
  if (!a1 || !__s)
  {
    return v2;
  }

  v5 = strlen(__s);
  if (v5 >= 3 && *__s == 42 && __s[1] == 47)
  {
    v6 = *MEMORY[0x1E695E480];
    v7 = CFURLCreateFromFileSystemRepresentation(*MEMORY[0x1E695E480], __s + 1, v5 - 1, 0);
    if (!v7)
    {
      goto LABEL_13;
    }

    v15 = CFURLGetString(v7);
    v16 = CFStringCreateWithFormat(v6, 0, @"%@%@", v15, @"?tmpRelative=yes&addProcID=yes");
    if (!v16)
    {
      goto LABEL_13;
    }

    v17 = v16;
    v18 = CFURLCreateWithString(v6, v16, 0);
    CFRelease(v17);
  }

  else
  {
    v18 = CFURLCreateFromFileSystemRepresentation(*MEMORY[0x1E695E480], __s, v5, 0);
  }

  if (!v18)
  {
LABEL_13:
    CGPostError("SerializeDisplayList failed to create URL from path: %s", v8, v9, v10, v11, v12, v13, v14, __s);
    return 0;
  }

  v19 = CG::DisplayList::serializeToURL((a1 + 16), v18, v9);
  v2 = v19 != 0;
  if (v19)
  {
    v20 = v19;
    CFURLGetFileSystemRepresentation(v19, 1u, buffer, 1024);
    CFRelease(v20);
    v27 = "succeeded";
  }

  else
  {
    CFURLGetFileSystemRepresentation(v18, 1u, buffer, 1024);
    v27 = "failed";
  }

  CGLog(1, "SerializeDisplayList %s to: %s", v21, v22, v23, v24, v25, v26, v27);
  CFRelease(v18);
  return v2;
}

uint64_t CGDisplayListGetAuxiliaryInfo(uint64_t result)
{
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

CFMutableArrayRef CGDisplayListCopyReferencedPatterns(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], *(a1 + 448), MEMORY[0x1E695E9C0]);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK2CG11DisplayList22copyReferencedPatternsEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_136;
  v4[4] = Mutable;
  CG::DisplayList::enumeratePatternResourcesWithBlock(a1 + 16, 1, v4);
  return Mutable;
}

uint64_t CGDisplayListContextCreateImage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    v11 = 0;
LABEL_10:
    handle_invalid_context("CGDisplayListContextCreateImage", v11, a3, a4, a5, a6, a7, a8);
    return 0;
  }

  if (*(a1 + 16) != 1129601108)
  {
    v11 = a1;
    goto LABEL_10;
  }

  v8 = *(a1 + 40);
  if (!v8)
  {
    return 0;
  }

  v9 = *(v8 + 240);
  if (!v9)
  {
    return 0;
  }

  return v9();
}

uint64_t CGDisplayListGetNumberOfEntries(uint64_t result)
{
  if (result)
  {
    return (*(result + 696) - *(result + 688)) >> 4;
  }

  return result;
}

uint64_t CGDisplayListGetNumberOfEntriesOfType(uint64_t result, int a2)
{
  if (result)
  {
    return *(result + 8 * a2 + 864);
  }

  return result;
}

uint64_t CGDisplayListEnumerateEntriesWithOptions(uint64_t result, char a2, uint64_t a3)
{
  if (result)
  {
    v4 = result;
    if (a2)
    {
      v6 = *(result + 696);
      do
      {
        if (v6 == *(v4 + 688))
        {
          break;
        }

        v9 = 0;
        v7 = *(v6 - 16);
        v6 -= 16;
        result = (*(a3 + 16))(a3, v7, &v9);
      }

      while ((v9 & 1) == 0);
    }

    else
    {
      v5 = *(result + 688);
      if (v5 != *(result + 696))
      {
        do
        {
          v8 = 0;
          result = (*(a3 + 16))(a3, *v5, &v8);
          if (v8 == 1)
          {
            break;
          }

          v5 += 2;
        }

        while (v5 != *(v4 + 696));
      }
    }
  }

  return result;
}

uint64_t CGDisplayListIsEqualToDisplayList(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  result = 0;
  if (a1)
  {
    if (a2)
    {
      return CG::DisplayList::isEqualTo((a1 + 16), (a2 + 16), 0);
    }
  }

  return result;
}

uint64_t CGDisplayListIsEqualToDisplayListWithOptions(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return 1;
  }

  result = 0;
  if (a1)
  {
    if (a2)
    {
      return CG::DisplayList::isEqualTo((a1 + 16), (a2 + 16), a3);
    }
  }

  return result;
}

void CGDisplayListGetHash(uint64_t a1)
{
  if (a1)
  {
    CG::DisplayList::getHash((a1 + 16));
  }
}

CGColorSpaceRef create_CalGray(CGPDFArray *a1)
{
  whitePoint[3] = *MEMORY[0x1E69E9840];
  if (!a1 || *(a1 + 3) - *(a1 + 2) != 16)
  {
    return 0;
  }

  value = 0;
  v7 = 0.0;
  if (!CGPDFArrayGetDictionary(a1, 1uLL, &value))
  {
    return 0;
  }

  if ((get_array(value, "WhitePoint", whitePoint, 3, 0, v1) & 1) == 0)
  {
    return 0;
  }

  if ((get_array(value, "BlackPoint", blackPoint, 3, default_black_point_16171, v2) & 1) == 0)
  {
    return 0;
  }

  Number = CGPDFDictionaryGetNumber(value, "Gamma", &v7);
  v4 = v7;
  if (!Number)
  {
    v4 = 1.0;
  }

  return CGColorSpaceCreateCalibratedGray(whitePoint, blackPoint, v4);
}

CGColorSpaceRef create_CalRGB(CGPDFArray *a1)
{
  whitePoint[3] = *MEMORY[0x1E69E9840];
  if (a1 && *(a1 + 3) - *(a1 + 2) == 16)
  {
    v6 = 0;
    if (CGPDFArrayGetDictionary(a1, 1uLL, &v6))
    {
      if (get_array(v6, "WhitePoint", whitePoint, 3, 0, v1))
      {
        if (get_array(v6, "BlackPoint", blackPoint, 3, default_black_point_16171, v2))
        {
          if (get_array(v6, "Gamma", gamma, 3, &xmmword_184565908, v3))
          {
            if (get_array(v6, "Matrix", matrix, 9, color_space_state_create_calibrated_rgb_default_matrix, v4))
            {
              return CGColorSpaceCreateCalibratedRGB(whitePoint, blackPoint, gamma, matrix);
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

      else
      {
      }
    }

    else
    {
    }
  }

  else
  {
  }

  return 0;
}

CGColorSpaceRef create_Lab(CGPDFArray *a1)
{
  whitePoint[3] = *MEMORY[0x1E69E9840];
  if (a1 && *(a1 + 3) - *(a1 + 2) == 16)
  {
    v5 = 0;
    if (CGPDFArrayGetDictionary(a1, 1uLL, &v5))
    {
      if (get_array(v5, "WhitePoint", whitePoint, 3, 0, v1))
      {
        if (get_array(v5, "BlackPoint", blackPoint, 3, default_black_point_16171, v2))
        {
          if (get_array(v5, "Range", range, 4, &xmmword_184565920, v3))
          {
            return CGColorSpaceCreateLab(whitePoint, blackPoint, range);
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

    else
    {
    }
  }

  else
  {
  }

  return 0;
}

uint64_t create_Separation(CGPDFArray *array)
{
  if (!array || *(array + 3) - *(array + 2) != 32)
  {
    return 0;
  }

  value = 0;
  if (!CGPDFArrayGetName(array, 1uLL, &value))
  {
    return 0;
  }

  v15 = 0;
  v16 = 0;
  if (!CGPDFArrayGetObject(array, 2uLL, &v15))
  {
    return 0;
  }

  v2 = v15;
  if (!v15)
  {
LABEL_18:
    return 0;
  }

  v3 = *(v15 + 2);
  if (v3 != 7)
  {
    if (v3 == 5)
    {
      v16 = *(v15 + 4);
      if (strcmp(v16, "Pattern"))
      {
        goto LABEL_9;
      }

      return 0;
    }

    goto LABEL_18;
  }

  v12 = *(v15 + 4);
  if (!v12 || *(v12 + 3) == *(v12 + 2))
  {
    return 0;
  }

  if (!CGPDFArrayGetName(v12, 0, &v16))
  {
    return 0;
  }

  v13 = v16;
  if (!strcmp(v16, "Separation") || !strcmp(v13, "DeviceN") || !strcmp(v13, "Indexed") || !strcmp(v13, "Pattern"))
  {
    return 0;
  }

  v2 = v15;
LABEL_9:
  v4 = CGPDFCreateColorSpace(v2);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v16 = 0;
  if (CGPDFArrayGetObject(array, 3uLL, &v16))
  {
    Function = CGPDFFunctionCreateFunction(v16);
    DeviceN = CGColorSpaceCreateDeviceN(1uLL, &value, v5, Function, 0, v7, v8, v9);
    if (Function)
    {
      CFRelease(Function);
    }
  }

  else
  {
    DeviceN = 0;
  }

  CGColorSpaceRelease(v5);
  return DeviceN;
}

uint64_t create_DeviceN(CGPDFArray *array)
{
  if (!array || (v2 = *(array + 3) - *(array + 2), ((v2 >> 3) - 6) <= 0xFFFFFFFFFFFFFFFDLL))
  {
    return 0;
  }

  value = 0;
  v22 = 0;
  if (!CGPDFArrayGetArray(array, 1uLL, &value) || !value || (v3 = *(value + 2), v4 = *(value + 3), v5 = v4 - v3, v4 == v3))
  {
    return 0;
  }

  v6 = malloc_type_malloc(v4 - v3, 0x50040EE9192B6uLL);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = 0;
  v9 = v5 >> 3;
  v10 = v6;
  do
  {
    if (!CGPDFArrayGetName(value, v8, v10))
    {
LABEL_27:
      free(v7);
      return 0;
    }

    ++v8;
    ++v10;
  }

  while (v9 != v8);
  if (!CGPDFArrayGetObject(array, 2uLL, &v22) || (v11 = CGPDFCreateColorSpace(v22)) == 0)
  {
    goto LABEL_27;
  }

  v12 = v11;
  if (!CGPDFArrayGetObject(array, 3uLL, &v22))
  {
LABEL_30:
    CGColorSpaceRelease(v12);
    goto LABEL_27;
  }

  Function = CGPDFFunctionCreateFunction(v22);
  v17 = Function;
  if (Function && (*(Function + 4) != v9 || *(*(v12 + 3) + 48) != *(Function + 6)))
  {
    CFRelease(v17);
    goto LABEL_30;
  }

  v20 = 0;
  if (v2 == 40 && !CGPDFArrayGetDictionary(array, 4uLL, &v20))
  {
    CGColorSpaceRelease(v12);
    if (v17)
    {
      CFRelease(v17);
    }

    goto LABEL_27;
  }

  DeviceN = CGColorSpaceCreateDeviceN(v9, v7, v12, v17, 0, v14, v15, v16);
  CGColorSpaceRelease(v12);
  if (v17)
  {
    CFRelease(v17);
  }

  free(v7);
  return DeviceN;
}

CGColorSpaceRef create_Indexed(CGPDFArrayRef array)
{
  if (array && *(array + 3) - *(array + 2) == 32)
  {
    stream = 0;
    value = 0;
    v28 = 0;
    v29 = 0;
    if (CGPDFArrayGetObject(array, 1uLL, &value))
    {
      v2 = CGPDFCreateColorSpace(value);
      if (v2)
      {
        v3 = v2;
        if (CGPDFArrayGetInteger(array, 2uLL, &v28))
        {
          if (v28 < 0)
          {
          }

          else
          {
            if (CGPDFArrayGetStream(array, 3uLL, &stream))
            {
              v4 = v28;
              format = CGPDFDataFormatRaw;
              v5 = CGPDFStreamCopyData(stream, &format);
              if (v5)
              {
                v6 = v5;
                if (format)
                {
                  goto LABEL_10;
                }

                v12 = *(*(v3 + 3) + 48);
                v13 = v12 * (v4 + 1);
                Length = CFDataGetLength(v5);
                if ((v12 | (v4 + 1)) >> 32)
                {
                  v15 = v4 >> 63;
                  v16 = v4 + 1;
                  if (v4 == -1)
                  {
                    ++v15;
                  }

                  v17 = (__PAIR128__(v15, v16) * v12) >> 64;
                  v18 = v16 * v12;
                  if (v17 || v13 < v18)
                  {
LABEL_10:
                    Indexed = 0;
LABEL_11:
                    CFRelease(v6);
LABEL_47:
                    CGColorSpaceRelease(v3);
                    return Indexed;
                  }
                }

                if (Length >= v13)
                {
                  BytePtr = CFDataGetBytePtr(v6);
                  Indexed = CGColorSpaceCreateIndexed(v3, v4, BytePtr);
                  goto LABEL_11;
                }

                v20 = malloc_type_calloc(1uLL, v12 * (v4 + 1), 0x8D32AD0BuLL);
                if (v20)
                {
                  v21 = v20;
                  v22 = CFDataGetBytePtr(v6);
                  v23 = CFDataGetLength(v6);
                  memmove(v21, v22, v23);
                  Indexed = CGColorSpaceCreateIndexed(v3, v4, v21);
                  free(v21);
                  goto LABEL_11;
                }
              }

              Indexed = 0;
              goto LABEL_47;
            }

            if (CGPDFArrayGetString(array, 3uLL, &v29))
            {
              v9 = v29;
              v10 = *(*(v3 + 3) + 48) + *(*(v3 + 3) + 48) * v28;
              if (v29)
              {
                if (*(v29 + 3))
                {
                  decrypt_string(v29);
                }

                v11 = *(v9 + 9);
              }

              else
              {
                v11 = 0;
              }

              if (v11 >= v10)
              {
                v24 = v28;
                v25 = v29;
                if (v29)
                {
                  if (*(v29 + 3))
                  {
                    decrypt_string(v29);
                  }

                  v26 = v25 + 80;
                }

                else
                {
                  v26 = 0;
                }

                Indexed = CGColorSpaceCreateIndexed(v3, v24, v26);
                goto LABEL_47;
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

        CGColorSpaceRelease(v3);
      }

      else
      {
      }
    }

    else
    {
    }
  }

  else
  {
  }

  return 0;
}

CGColorSpaceRef create_Pattern(CGPDFArray *a1)
{
  if (!a1)
  {
    goto LABEL_7;
  }

  v1 = (*(a1 + 3) - *(a1 + 2)) >> 3;
  if (v1 == 2)
  {
    value = 0;
    CGPDFArrayGetObject(a1, 1uLL, &value);
    v4 = CGPDFCreateColorSpace(value);
    if (v4)
    {
      v5 = v4;
      Pattern = CGColorSpaceCreatePattern(v4);
      CGColorSpaceRelease(v5);
      return Pattern;
    }

    return 0;
  }

  if (v1 != 1)
  {
LABEL_7:
    return 0;
  }

  return CGColorSpaceCreatePattern(0);
}

void cg_build_colorspace_destroy(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

CFStringRef CGPDFDictionaryCreateDebugDescription(const __CFString *a1)
{
  v1 = a1;
  if (a1)
  {
    v6 = 0;
    __bufp = 0;
    v2 = open_memstream(&__bufp, &v6);
    if (v2 && (v3 = v2, CGPDFDictionaryPrintWithIndent(v1, v2, 0), fclose(v3), (v4 = __bufp) != 0))
    {
      if (v6)
      {
        v1 = CFStringCreateWithCString(0, __bufp, 0x600u);
        v4 = __bufp;
      }

      else
      {
        v1 = 0;
      }

      free(v4);
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

uint64_t CGPDFDictionaryPrintWithIndent(uint64_t result, FILE *a2, int a3)
{
  if (result)
  {
    v4 = result;
    if (a2)
    {
      v5 = a2;
    }

    else
    {
      v5 = *MEMORY[0x1E69E9848];
    }

    fwrite("<<\n", 3uLL, 1uLL, v5);
    for (i = *(v4 + 64); i; i = *i)
    {
      v7 = i[2];
      v8 = i[3];
      fprintf(v5, "%*s", a3 + 2, "");
      CGPDFObjectPrintWithIndent(v7, v5, 0);
      fputc(32, v5);
      CGPDFObjectPrintWithIndent(v8, v5, (a3 + 2));
      fputc(10, v5);
    }

    return fprintf(v5, "%*s>>", a3, "");
  }

  return result;
}

CFTypeRef CGPDFDictionaryRetain(CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  return cf;
}

void CGPDFDictionaryRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

size_t CGPDFDictionaryGetCount(size_t dict)
{
  if (dict)
  {
    return *(dict + 72);
  }

  return dict;
}

void *CGPDFDictionaryGetUnresolvedObject(uint64_t a1, const char *a2)
{
  result = 0;
  v4 = a2;
  if (a1 && a2)
  {
    result = std::__hash_table<std::__hash_value_type<CGPDFObject *,CGPDFObject *>,std::__unordered_map_hasher<CGPDFObject *,std::__hash_value_type<CGPDFObject *,CGPDFObject *>,pdf_name_hash,pdf_name_equal,true>,std::__unordered_map_equal<CGPDFObject *,std::__hash_value_type<CGPDFObject *,CGPDFObject *>,pdf_name_equal,pdf_name_hash,true>,std::allocator<std::__hash_value_type<CGPDFObject *,CGPDFObject *>>>::find<char const*>((a1 + 48), &v4);
    if (result)
    {
      return result[3];
    }
  }

  return result;
}

BOOL CGPDFDictionaryGetString(CGPDFDictionaryRef dict, const char *key, CGPDFStringRef *value)
{
  if (value)
  {
    *value = 0;
  }

  valuea = 0;
  Object = CGPDFDictionaryGetObject(dict, key, &valuea);
  if (Object)
  {
    if (valuea)
    {
      v5 = *(valuea + 2);
      LOBYTE(Object) = v5 == 6;
      if (v5 == 6 && value != 0)
      {
        *value = *(valuea + 4);
        LOBYTE(Object) = 1;
      }
    }

    else
    {
      LOBYTE(Object) = 0;
    }
  }

  return Object;
}

BOOL CGPDFDictionaryGetStream(CGPDFDictionaryRef dict, const char *key, CGPDFStreamRef *value)
{
  if (value)
  {
    *value = 0;
  }

  valuea = 0;
  Object = CGPDFDictionaryGetObject(dict, key, &valuea);
  if (Object)
  {
    if (valuea)
    {
      v5 = *(valuea + 2);
      LOBYTE(Object) = v5 == 9;
      if (v5 == 9 && value != 0)
      {
        *value = *(valuea + 4);
        LOBYTE(Object) = 1;
      }
    }

    else
    {
      LOBYTE(Object) = 0;
    }
  }

  return Object;
}

double CGPDFDictionaryGetMatrix(CGPDFDictionary *a1, const char *a2, _OWORD *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  Numbers = CGPDFDictionaryGetNumbers(a1, a2, v7, 6);
  if (a3)
  {
    if (Numbers)
    {
      v6 = v7[1];
      *a3 = v7[0];
      a3[1] = v6;
      result = v8[0];
      a3[2] = *v8;
    }
  }

  return result;
}

BOOL CGPDFDictionaryGetBooleans(CGPDFDictionary *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  value = 0;
  array = 0;
  result = CGPDFDictionaryGetArray(a1, a2, &array);
  if (result)
  {
    v7 = array;
    if (array)
    {
      v7 = (*(array + 3) - *(array + 2)) >> 3;
    }

    if (v7 == a4)
    {
      if (a4)
      {
        v8 = 0;
        do
        {
          result = CGPDFArrayGetBoolean(array, v8, &value);
          if (!result)
          {
            break;
          }

          *(a3 + v8++) = value;
        }

        while (a4 != v8);
      }

      else
      {
        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL CGPDFDictionaryGetIntegers(CGPDFDictionary *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  array = 0;
  value = 0;
  result = CGPDFDictionaryGetArray(a1, a2, &array);
  if (result)
  {
    v7 = array;
    if (array)
    {
      v7 = (*(array + 3) - *(array + 2)) >> 3;
    }

    if (v7 == a4)
    {
      if (a4)
      {
        v8 = 0;
        do
        {
          result = CGPDFArrayGetInteger(array, v8, &value);
          if (!result)
          {
            break;
          }

          *(a3 + 8 * v8++) = value;
        }

        while (a4 != v8);
      }

      else
      {
        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t CGPDFDictionaryGetObjectReference(uint64_t result)
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

void CGPDFDictionaryApplyFunction(CGPDFDictionaryRef dict, CGPDFDictionaryApplierFunction function, void *info)
{
  if (dict)
  {
    if (function)
    {
      for (i = *(dict + 8); i; i = *i)
      {
        v8 = i[2];
        v7 = i[3];
        if (v7)
        {
          if (*(v7 + 2) == 10)
          {
            v7 = pdf_xref_resolve(*(dict + 2), *(v7 + 2), *(v7 + 3));
          }
        }

        (function)(*(v8 + 32), v7, info);
      }
    }
  }
}

uint64_t CGPDFDictionaryEnumerateKeysAndValues(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    v4 = (result + 64);
    do
    {
      v4 = *v4;
      if (!v4)
      {
        break;
      }

      v6 = v4[2];
      v5 = v4[3];
      if (v5)
      {
        if (*(v5 + 2) == 10)
        {
          v5 = pdf_xref_resolve(*(v3 + 16), *(v5 + 2), *(v5 + 3));
        }
      }

      result = (*(a2 + 16))(a2, *(v6 + 32), v5);
    }

    while ((result & 1) != 0);
  }

  return result;
}

uint64_t CGPDFDictionaryApplyFunctionRaw(uint64_t result, uint64_t (*a2)(void, void, uint64_t), uint64_t a3)
{
  if (result)
  {
    if (a2)
    {
      for (i = *(result + 64); i; i = *i)
      {
        result = a2(*(i[2] + 32), i[3], a3);
      }
    }
  }

  return result;
}

void *CGPDFDictionaryAddObject(uint64_t a1, const char *a2, __int128 *a3)
{
  v10[0] = a2;
  result = std::__hash_table<std::__hash_value_type<CGPDFObject *,CGPDFObject *>,std::__unordered_map_hasher<CGPDFObject *,std::__hash_value_type<CGPDFObject *,CGPDFObject *>,pdf_name_hash,pdf_name_equal,true>,std::__unordered_map_equal<CGPDFObject *,std::__hash_value_type<CGPDFObject *,CGPDFObject *>,pdf_name_equal,pdf_name_hash,true>,std::allocator<std::__hash_value_type<CGPDFObject *,CGPDFObject *>>>::find<char const*>((a1 + 48), v10);
  if (!result)
  {
    v7 = malloc_type_calloc(1uLL, 0x28uLL, 0x103204077D336DFuLL);
    v7[12] |= 1u;
    *(v7 + 2) = 5;
    *(v7 + 4) = strdup(a2);
    v9 = v7;
    copy = pdf_object_create_copy(a3);
    v10[1] = &v9;
    result = std::__hash_table<std::__hash_value_type<CGPDFObject *,CGPDFObject *>,std::__unordered_map_hasher<CGPDFObject *,std::__hash_value_type<CGPDFObject *,CGPDFObject *>,pdf_name_hash,pdf_name_equal,true>,std::__unordered_map_equal<CGPDFObject *,std::__hash_value_type<CGPDFObject *,CGPDFObject *>,pdf_name_equal,pdf_name_hash,true>,std::allocator<std::__hash_value_type<CGPDFObject *,CGPDFObject *>>>::__emplace_unique_key_args<CGPDFObject *,std::piecewise_construct_t const&,std::tuple<CGPDFObject * const&>,std::tuple<>>((a1 + 48), &v9);
    result[3] = copy;
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<CGPDFObject *,CGPDFObject *>,std::__unordered_map_hasher<CGPDFObject *,std::__hash_value_type<CGPDFObject *,CGPDFObject *>,pdf_name_hash,pdf_name_equal,true>,std::__unordered_map_equal<CGPDFObject *,std::__hash_value_type<CGPDFObject *,CGPDFObject *>,pdf_name_equal,pdf_name_hash,true>,std::allocator<std::__hash_value_type<CGPDFObject *,CGPDFObject *>>>::__emplace_unique_key_args<CGPDFObject *,std::piecewise_construct_t const&,std::tuple<CGPDFObject * const&>,std::tuple<>>(void *a1, uint64_t a2)
{
  v3 = *(*a2 + 32);
  v4 = strlen(v3);
  v5 = std::__string_view_hash<char>::operator()[abi:fe200100](v3, v4);
  v6 = v5;
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_18;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v5;
    if (v5 >= *&v7)
    {
      v10 = v5 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v5;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v6)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= *&v7)
      {
        v13 %= *&v7;
      }
    }

    else
    {
      v13 &= *&v7 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_18;
    }

LABEL_17:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_18;
    }
  }

  if (strcmp(*(v12[2] + 32), v3))
  {
    goto LABEL_17;
  }

  return v12;
}

void *CGPDFDictionarySetObject(uint64_t a1, const char *a2, __int128 *a3)
{
  v13[0] = a2;
  v6 = std::__hash_table<std::__hash_value_type<CGPDFObject *,CGPDFObject *>,std::__unordered_map_hasher<CGPDFObject *,std::__hash_value_type<CGPDFObject *,CGPDFObject *>,pdf_name_hash,pdf_name_equal,true>,std::__unordered_map_equal<CGPDFObject *,std::__hash_value_type<CGPDFObject *,CGPDFObject *>,pdf_name_equal,pdf_name_hash,true>,std::allocator<std::__hash_value_type<CGPDFObject *,CGPDFObject *>>>::find<char const*>((a1 + 48), v13);
  if (v6)
  {
    v7 = v6;
    v8 = v6[3];
    if ((v8[2] - 5) > 4 || (pdf_object_release_compound_value(v8), (v8 = v7[3]) != 0))
    {
      free(v8);
    }

    result = pdf_object_create_copy(a3);
    v7[3] = result;
  }

  else
  {
    v10 = malloc_type_calloc(1uLL, 0x28uLL, 0x103204077D336DFuLL);
    v10[12] |= 1u;
    *(v10 + 2) = 5;
    *(v10 + 4) = strdup(a2);
    v12 = v10;
    copy = pdf_object_create_copy(a3);
    v13[1] = &v12;
    result = std::__hash_table<std::__hash_value_type<CGPDFObject *,CGPDFObject *>,std::__unordered_map_hasher<CGPDFObject *,std::__hash_value_type<CGPDFObject *,CGPDFObject *>,pdf_name_hash,pdf_name_equal,true>,std::__unordered_map_equal<CGPDFObject *,std::__hash_value_type<CGPDFObject *,CGPDFObject *>,pdf_name_equal,pdf_name_hash,true>,std::allocator<std::__hash_value_type<CGPDFObject *,CGPDFObject *>>>::__emplace_unique_key_args<CGPDFObject *,std::piecewise_construct_t const&,std::tuple<CGPDFObject * const&>,std::tuple<>>((a1 + 48), &v12);
    result[3] = copy;
  }

  return result;
}

BOOL CGPDFDictionaryReplaceObject(uint64_t a1, const char *a2, __int128 *a3)
{
  v8 = a2;
  v4 = std::__hash_table<std::__hash_value_type<CGPDFObject *,CGPDFObject *>,std::__unordered_map_hasher<CGPDFObject *,std::__hash_value_type<CGPDFObject *,CGPDFObject *>,pdf_name_hash,pdf_name_equal,true>,std::__unordered_map_equal<CGPDFObject *,std::__hash_value_type<CGPDFObject *,CGPDFObject *>,pdf_name_equal,pdf_name_hash,true>,std::allocator<std::__hash_value_type<CGPDFObject *,CGPDFObject *>>>::find<char const*>((a1 + 48), &v8);
  v5 = v4;
  if (v4)
  {
    v6 = v4[3];
    if ((v6[2] - 5) > 4 || (pdf_object_release_compound_value(v6), (v6 = v5[3]) != 0))
    {
      free(v6);
    }

    v5[3] = pdf_object_create_copy(a3);
  }

  return v5 != 0;
}

void CGPDFDictionaryRemoveObject(void *a1, const char *a2)
{
  v17 = a2;
  v3 = std::__hash_table<std::__hash_value_type<CGPDFObject *,CGPDFObject *>,std::__unordered_map_hasher<CGPDFObject *,std::__hash_value_type<CGPDFObject *,CGPDFObject *>,pdf_name_hash,pdf_name_equal,true>,std::__unordered_map_equal<CGPDFObject *,std::__hash_value_type<CGPDFObject *,CGPDFObject *>,pdf_name_equal,pdf_name_hash,true>,std::allocator<std::__hash_value_type<CGPDFObject *,CGPDFObject *>>>::find<char const*>(a1 + 6, &v17);
  if (v3)
  {
    v4 = v3;
    v5 = v3[2];
    if ((v5[2] - 5) > 4 || (pdf_object_release_compound_value(v5), (v5 = v4[2]) != 0))
    {
      free(v5);
    }

    v6 = v4[3];
    if ((v6[2] - 5) > 4 || (pdf_object_release_compound_value(v6), (v6 = v4[3]) != 0))
    {
      free(v6);
    }

    v7 = a1[7];
    v8 = v4[1];
    v9 = vcnt_s8(v7);
    v9.i16[0] = vaddlv_u8(v9);
    if (v9.u32[0] > 1uLL)
    {
      if (v8 >= *&v7)
      {
        v8 %= *&v7;
      }
    }

    else
    {
      v8 &= *&v7 - 1;
    }

    v10 = a1[6];
    v11 = *(v10 + 8 * v8);
    do
    {
      v12 = v11;
      v11 = *v11;
    }

    while (v11 != v4);
    if (v12 == a1 + 8)
    {
      goto LABEL_26;
    }

    v13 = v12[1];
    if (v9.u32[0] > 1uLL)
    {
      if (v13 >= *&v7)
      {
        v13 %= *&v7;
      }
    }

    else
    {
      v13 &= *&v7 - 1;
    }

    if (v13 != v8)
    {
LABEL_26:
      if (!*v4)
      {
        goto LABEL_27;
      }

      v14 = *(*v4 + 8);
      if (v9.u32[0] > 1uLL)
      {
        if (v14 >= *&v7)
        {
          v14 %= *&v7;
        }
      }

      else
      {
        v14 &= *&v7 - 1;
      }

      if (v14 != v8)
      {
LABEL_27:
        *(v10 + 8 * v8) = 0;
      }
    }

    v15 = *v4;
    if (*v4)
    {
      v16 = *(v15 + 8);
      if (v9.u32[0] > 1uLL)
      {
        if (v16 >= *&v7)
        {
          v16 %= *&v7;
        }
      }

      else
      {
        v16 &= *&v7 - 1;
      }

      if (v16 != v8)
      {
        *(a1[6] + 8 * v16) = v12;
        v15 = *v4;
      }
    }

    *v12 = v15;
    *v4 = 0;
    --a1[9];

    operator delete(v4);
  }
}

void CGPDFDictionaryRemoveAll(void *a1)
{
  for (i = a1[8]; i; i = *i)
  {
    v4 = i[2];
    v3 = i[3];
    if ((v4[2] - 5) <= 4)
    {
      pdf_object_release_compound_value(i[2]);
    }

    free(v4);
    if ((v3[2] - 5) <= 4)
    {
      pdf_object_release_compound_value(v3);
    }

    free(v3);
  }

  if (a1[9])
  {
    v5 = a1[8];
    if (v5)
    {
      do
      {
        v6 = *v5;
        operator delete(v5);
        v5 = v6;
      }

      while (v6);
    }

    a1[8] = 0;
    v7 = a1[7];
    if (v7)
    {
      for (j = 0; j != v7; ++j)
      {
        *(a1[6] + 8 * j) = 0;
      }
    }

    a1[9] = 0;
  }
}

uint64_t CGPDFDictionarySetAssociation(uint64_t result, const void *a2, const char *a3)
{
  if (result)
  {
    v5 = result;
    pthread_mutex_lock((result + 88));
    v6 = *(v5 + 40);
    if (v6)
    {
      *(v5 + 40) = 0;
      CGPDFAssociationRelease(v6);
    }

    v7 = CGPDFAssociationCreate(a2, a3);
    *(v5 + 40) = v7;
    Object = CGPDFAssociationGetObject(v7, a3);
    pthread_mutex_unlock((v5 + 88));
    return Object;
  }

  return result;
}

const void *CGPDFDictionaryCopyAssociation(uint64_t a1, const char *a2)
{
  if (!a1)
  {
    return 0;
  }

  pthread_mutex_lock((a1 + 88));
  Object = CGPDFAssociationGetObject(*(a1 + 40), a2);
  v5 = Object;
  if (Object)
  {
    CFRetain(Object);
  }

  pthread_mutex_unlock((a1 + 88));
  return v5;
}

uint64_t CGColorConverterGetTypeID()
{
  if (CGColorConversionInfoGetTypeID_predicate != -1)
  {
    dispatch_once(&CGColorConversionInfoGetTypeID_predicate, &__block_literal_global_1190);
  }

  return kCGColorConverterRuntimeID;
}

void CGColorConverterRelease(const void *a1)
{
  if (a1)
  {
    v2 = CFGetTypeID(a1);
    if (CGColorConversionInfoGetTypeID_predicate != -1)
    {
      dispatch_once(&CGColorConversionInfoGetTypeID_predicate, &__block_literal_global_1190);
    }

    if (v2 == kCGColorConverterRuntimeID)
    {

      CFRelease(a1);
    }
  }
}

CFTypeRef CGColorConverterRetain(const void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = CFGetTypeID(a1);
  if (CGColorConversionInfoGetTypeID_predicate != -1)
  {
    dispatch_once(&CGColorConversionInfoGetTypeID_predicate, &__block_literal_global_1190);
  }

  if (v2 != kCGColorConverterRuntimeID)
  {
    return 0;
  }

  return CFRetain(a1);
}

uint64_t getMaxLevel(int a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  if (a1)
  {
    v4 = *(a2 + 8);
    if (*a4 < v4)
    {
      *a4 = v4;
    }
  }

  return 1;
}

uint64_t maxInsertionOrder(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 68);
  if (v2 > *a2)
  {
    *a2 = v2;
  }

  return 1;
}

uint64_t CGBlitInternal::CGApplyGainMapHeadRoom<(CGBlitVariant)0>(uint64_t result, uint64_t *a2, double a3, double a4)
{
  v4 = *(result + 8);
  if (v4 >= 2 * a2[1])
  {
    v4 = 2 * a2[1];
  }

  if (v4 >= 2)
  {
    v5 = 0;
    v6.i32[1] = 1081073664;
    v7 = (a3 - a4) / 255.0;
    *&v7 = v7;
    v8 = vdupq_lane_s32(*&v7, 0);
    v8.i32[3] = 0;
    *v6.i32 = a4;
    v9 = vdupq_lane_s32(v6, 0);
    v9.i32[3] = 1.0;
    v10 = *a2;
    v11 = *result;
    v13 = *(result + 16);
    v12 = *(result + 24);
    v14 = a2[3];
    if (v13 >= 2 * a2[2])
    {
      v13 = 2 * a2[2];
    }

    v15 = v13 >> 1;
    v16 = v13 - 1;
    v17 = 2;
    result = 16;
    do
    {
      v18 = 0;
      v19 = v5 | 1;
      v5 = v17;
      if (v19 >= v4)
      {
        v20 = 0;
      }

      else
      {
        v20 = v12;
      }

      v21 = v20 + v11;
      if (v13 >= 0x20)
      {
        v22 = 0;
        v23 = v10;
        v24 = 16;
        do
        {
          v18 = v24;
          v25 = vceqzq_s8(*(v10 + v22));
          v26 = vminvq_u8(v25) & 0x80;
          if (a4 != 1.0 || v26 == 0)
          {
            v28 = vbicq_s8(xmmword_18439CDE0, v25);
            v29 = vaddv_s8(*&vextq_s8(v28, v28, 8uLL));
            v28.i8[0] = vaddv_s8(*v28.i8);
            v30 = v28.i32[0] & 0xFFFF00FF | (v29 << 8);
            v31 = __clz(__rbit32(v30));
            v32 = __clz(v30) - 16;
            if (16 - v32 > v31)
            {
              v33 = v31 + v32 - 16;
              v34 = (v21 + 16 * (v22 + v31));
              v35 = (v11 + 16 * (v22 + v31));
              v36 = (v23 + v31);
              do
              {
                v38 = *v36++;
                v37 = v38;
                if (a4 != 1.0 || v37 != 0)
                {
                  v40 = vmlaq_n_f32(v9, v8, v37);
                  v41 = vcvt_hight_f16_f32(vcvt_f16_f32(vmulq_f32(v40, vcvtq_f32_f16(*v34))), vmulq_f32(v40, vcvt_hight_f32_f16(*v34->i8)));
                  *v35->i8 = vcvt_hight_f16_f32(vcvt_f16_f32(vmulq_f32(v40, vcvtq_f32_f16(*v35))), vmulq_f32(v40, vcvt_hight_f32_f16(*v35->i8)));
                  *v34->i8 = v41;
                }

                v34 += 2;
                v35 += 2;
              }

              while (!__CFADD__(v33++, 1));
            }
          }

          v24 = v18 + 16;
          v22 += 16;
          v23 += 16;
        }

        while (v18 + 16 <= v15);
      }

      v43 = v15 - v18;
      if (v15 > v18)
      {
        v44 = (v21 + 16 * v18);
        v45 = (v10 + v18);
        v46 = (v11 + 16 * v18);
        do
        {
          v48 = *v45++;
          v47 = v48;
          if (a4 != 1.0 || v47 != 0)
          {
            v50 = vmlaq_n_f32(v9, v8, v47);
            v51 = vcvt_hight_f16_f32(vcvt_f16_f32(vmulq_f32(v50, vcvtq_f32_f16(*v44))), vmulq_f32(v50, vcvt_hight_f32_f16(*v44->i8)));
            *v46->i8 = vcvt_hight_f16_f32(vcvt_f16_f32(vmulq_f32(v50, vcvtq_f32_f16(*v46))), vmulq_f32(v50, vcvt_hight_f32_f16(*v46->i8)));
            *v44->i8 = v51;
          }

          v44 += 2;
          v46 += 2;
          --v43;
        }

        while (v43);
      }

      if (v13)
      {
        v52 = *(v10 + v16);
        if (a4 == 1.0 && v52 == 0)
        {
          goto LABEL_42;
        }

        v54 = vmlaq_n_f32(v9, v8, v52);
        v55 = vcvt_f16_f32(vmulq_f32(v54, vcvtq_f32_f16(*(v21 + 8 * v16))));
        *(v11 + 8 * v16) = vcvt_f16_f32(vmulq_f32(v54, vcvtq_f32_f16(*(v11 + 8 * v16))));
        *(v21 + 8 * v16) = v55;
      }

      v11 += 2 * v12;
      v10 += v14;
LABEL_42:
      v17 = v5 + 2;
    }

    while (v5 + 2 <= v4);
  }

  return result;
}

uint64_t CGBlitInternal::CGBufIsConstantValue<(CGBlitVariant)0>(uint64_t a1, const void *a2, float *a3)
{
  v3 = *(a1 + 320);
  v4 = v3 & 0x1F;
  if ((v3 & 0x1F) != 0)
  {
    v5 = *(a1 + 326) + 1;
  }

  else
  {
    v5 = *(a1 + 326);
  }

  if (!v5 || !*(a1 + 32) || !*(a1 + 24))
  {
    return 1;
  }

  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  if (v5 > 4 || v7.u32[0] > 1uLL)
  {
    return 0;
  }

  v9 = *(a1 + 324);
  if (v9 < 8)
  {
    return 0;
  }

  result = 0;
  if (v9 > 0x80)
  {
    return result;
  }

  v7.i32[0] = v9;
  if (vaddlv_u8(vcnt_s8(v7)) > 1u)
  {
    return result;
  }

  v12 = 0;
  v13 = 0;
  v14 = v3 & 0x7000;
  do
  {
    v15 = 1 << v13;
    if (a3[v13] == INFINITY)
    {
      v15 = 0;
    }

    v12 |= v15;
    ++v13;
  }

  while (v5 != v13);
  if (v14 == 0x4000 || v14 == 12288)
  {
    v14 = 0;
  }

  if (!v12)
  {
    return 1;
  }

  v17 = *(a1 + 325);
  v18 = xmmword_18439C980;
  if (v4 <= 6 && ((1 << v4) & 0x54) != 0)
  {
    v18 = xmmword_18439CDF0;
  }

  if (v17 != 16)
  {
    if (v17 != 8)
    {
      return 0;
    }

    if (v14 == 4096)
    {
      v19.i64[0] = 0x404040404040404;
      v19.i64[1] = 0x404040404040404;
    }

    else
    {
      if (v14 != 0x2000)
      {
        goto LABEL_41;
      }

      v19.i64[0] = 0xC0C0C0C0C0C0C0CLL;
      v19.i64[1] = 0xC0C0C0C0C0C0C0CLL;
    }

    v18 = veorq_s8(v18, v19);
LABEL_41:
    v20 = 0;
    if ((v3 & 0x100) == 0)
    {
      goto LABEL_42;
    }

    return 0;
  }

  if ((v3 & 0x100) != 0)
  {
    v20 = 2;
  }

  else
  {
    v20 = 1;
  }

  if (v14 != 4096)
  {
    if (v14 == 0x2000)
    {
      v21.i64[0] = 0x404040404040404;
      v21.i64[1] = 0x404040404040404;
      v18 = veorq_s8(v18, v21);
      goto LABEL_42;
    }

    return 0;
  }

LABEL_42:
  v44 = v18;
  v22.i64[0] = 0x3F0000003FLL;
  v22.i64[1] = 0x3F0000003FLL;
  v46 = vnegq_f32(v22);
  __dst = v46;
  memcpy(&__dst, a2, 4 * v5);
  memcpy(&v46, a3, 4 * v5);
  *&v30 = CGBlitInternal::cgsBufferIsConstantValue_internal::CalculateLimits(v20, v5, vqtbl1q_s8(__dst, v44), vqtbl1q_s8(v46, v44), *v44.i64, v29, v23, v24, v25, v26, v27, v28);
  v45[0] = v30;
  v45[1] = v31;
  v32 = CGBlitInternal::CGBufIsConstantValue<(CGBlitVariant)0>(CGBuf const*,float const*,float const*)::kRowFuncs[v20];
  if (*a1)
  {
    v33 = *(*a1 + 32);
  }

  else
  {
    v33 = 0;
  }

  v35 = *(a1 + 32);
  v34 = *(a1 + 40);
  v36 = (*(a1 + 24) * *(a1 + 324) + 7) >> 3;
  result = (v32)(v33, v36, v45);
  if (result)
  {
    v40 = v35 - 1;
    if (v35 == 1)
    {
      return 1;
    }

    if (!*a1)
    {
      goto LABEL_60;
    }

    v41 = *(*a1 + 32);
    if (!v41)
    {
      goto LABEL_60;
    }

    result = (v32)(v41 + v34 * v40, v36, v45);
    if (!result)
    {
      return result;
    }

    if (!*a1 || (v42 = *(*a1 + 32)) == 0)
    {
LABEL_60:
      _CGHandleAssert("AdvancePtr", 22, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/CGBlit/Functions/CGBufferIsConstantValue.h", "where != NULL", "AdvancePtr called on NULL", v37, v38, v39, v44.i8[0]);
    }

    if (v40 < 2)
    {
      return 1;
    }

    v43 = v35 - 2;
    do
    {
      result = (v32)(v34 + v42, v36, v45);
      if (!result)
      {
        break;
      }

      v42 += v34;
      if (!v42)
      {
        goto LABEL_60;
      }

      --v43;
    }

    while (v43);
  }

  return result;
}

double CGBlitInternal::cgsBufferIsConstantValue_internal::CalculateLimits(unsigned int a1, uint64_t a2, float32x4_t a3, float32x4_t a4, double a5, double a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  LODWORD(a6) = dword_18439D0A0[a1];
  v12 = vmulq_n_f32(vaddq_f32(a3, a4), *&a6);
  v13 = vmulq_n_f32(vsubq_f32(a3, a4), *&a6);
  if (a1 <= 1)
  {
    v14 = vrndmq_f32(v12);
    v12 = vmaxnmq_f32(vminnmq_f32(vbslq_s8(vcgtq_f32(vrndpq_f32(v13), v14), vrndxq_f32(vmulq_n_f32(a3, *&a6)), v14), vdupq_lane_s32(*&a6, 0)), 0);
  }

  if (a1 - 2 >= 2)
  {
    if (a1 == 1)
    {
      *v12.f32 = vmovn_s32(vcvtq_u32_f32(v12));
      v15 = 2;
    }

    else
    {
      v16 = vmovn_s32(vcvtq_s32_f32(v12));
      v12 = vuzp1_s8(v16, v16).u32[0];
      v15 = 1;
    }
  }

  else
  {
    v15 = 4;
  }

  v17 = v15 * a2;
  if ((v17 & (v17 - 1)) != 0)
  {
    _CGHandleAssert("CalculateLimits", 126, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/CGBlit/Functions/CGBufferIsConstantValue.h", "0 == (arithmeticSizeBytes & (arithmeticSizeBytes-1))", "arithmetic size (%lu) is not a power of two", a10, a11, a12, v17);
  }

  *&result = vqtbl1q_s8(v12, vandq_s8(vdupq_n_s8(v17 - 1), xmmword_18439C980)).u64[0];
  return result;
}

BOOL CGBlitInternal::cgsBufferIsConstantValue_internal::TestLimitsRow<float>(float32x4_t *a1, unint64_t a2, float32x4_t *a3, uint8x16_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a2 >= 0x40)
  {
    v9 = *a3;
    v10 = a3[1];
    v11 = 0uLL;
    v12 = 0uLL;
    v13 = 0uLL;
    v14 = 0uLL;
    do
    {
      v16 = a1[2];
      v15 = a1[3];
      v17 = *a1;
      v18 = a1[1];
      a1 += 4;
      v12 = vorrq_s8(vorrq_s8(v12, vcgtq_f32(v18, v9)), vcgtq_f32(v10, v18));
      v11 = vorrq_s8(vorrq_s8(v11, vcgtq_f32(v17, v9)), vcgtq_f32(v10, v17));
      v13 = vorrq_s8(vorrq_s8(v13, vcgtq_f32(v16, v9)), vcgtq_f32(v10, v16));
      v14 = vorrq_s8(vorrq_s8(v14, vcgtq_f32(v15, v9)), vcgtq_f32(v10, v15));
      a2 -= 64;
    }

    while (a2 > 0x3F);
    a4 = vorrq_s8(vorrq_s8(v11, v13), vorrq_s8(v12, v14));
    a4.i8[0] = vmaxvq_u8(a4);
    if (a4.i32[0])
    {
      return 0;
    }
  }

  if (!a2)
  {
    return 1;
  }

  if (a2 >= 0x20)
  {
    v19 = vmovn_s16(vorrq_s8(vuzp1q_s16(vcgtq_f32(*a1, *a3), vcgtq_f32(a1[1], *a3)), vuzp1q_s16(vcgtq_f32(a3[1], *a1), vcgtq_f32(a3[1], a1[1]))));
    a4 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vorr_s8(vzip1_s8(v19, v19), vzip2_s8(v19, v19))), 0x1FuLL));
    a4.i8[0] = vmaxvq_u8(a4);
    if (a4.i32[0])
    {
      return 0;
    }

    a2 -= 32;
    if (!a2)
    {
      return 1;
    }

    a1 += 2;
  }

  if (a2 < 0x10)
  {
    goto LABEL_14;
  }

  a4 = vorrq_s8(vcgtq_f32(*a1, *a3), vcgtq_f32(a3[1], *a1));
  a4.i8[0] = vmaxvq_u8(a4);
  if (a4.i32[0])
  {
    return 0;
  }

  a2 -= 16;
  if (!a2)
  {
    return 1;
  }

  ++a1;
LABEL_14:
  if (a2 >= 8)
  {
    v20 = *a1->f32;
    a1 = (a1 + 8);
    *a4.i8 = vorr_s8(vcgt_f32(*a3[1].f32, v20), vcgt_f32(v20, *a3->f32));
    a4.i8[0] = vmaxvq_u8(a4);
    if (a4.i32[0])
    {
      return 0;
    }

    a2 -= 8;
  }

  if (!a2)
  {
    return 1;
  }

  if (a2 != 4)
  {
    _CGHandleAssert("operator()", 308, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/CGBlit/Functions/CGBufferIsConstantValue.h", "size == vectorSize", "size %lu did not match vectorSize (%lu)", a7, a8, a9, a2);
  }

  v22 = a1->f32[0] < a3[1].f32[0];
  if (a1->f32[0] > a3->f32[0])
  {
    v22 = 1;
  }

  v23 = v22 << 31 >> 31;
  LOBYTE(v23) = vmaxvq_u8(v23);
  return v23 == 0;
}

BOOL CGBlitInternal::cgsBufferIsConstantValue_internal::TestLimitsRow<half>(float16x8_t *a1, unint64_t a2, float32x4_t *a3, uint8x16_t a4, double a5, float32x4_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a2 >= 0x40)
  {
    v11 = 0uLL;
    v12 = 0uLL;
    v13 = *a3;
    v14 = a3[1];
    v15 = 0uLL;
    v16 = 0uLL;
    v17 = 0uLL;
    v18 = 0uLL;
    v19 = 0uLL;
    v20 = 0uLL;
    do
    {
      v21 = a1[2];
      v22 = a1[3];
      v23 = vcvt_hight_f32_f16(v22);
      v24 = vcvtq_f32_f16(*v22.i8);
      v25 = vcvt_hight_f32_f16(v21);
      v26 = vcvtq_f32_f16(*v21.i8);
      v28 = *a1;
      v27 = a1[1];
      a1 += 4;
      v29 = vcvtq_f32_f16(*v28.i8);
      v30 = vcvtq_f32_f16(*v27.i8);
      v31 = vcvt_hight_f32_f16(v27);
      v32 = vcvt_hight_f32_f16(v28);
      v12 = vorrq_s8(vorrq_s8(v12, vcgtq_f32(v32, v13)), vcgtq_f32(v14, v32));
      v16 = vorrq_s8(vorrq_s8(v16, vcgtq_f32(v31, v13)), vcgtq_f32(v14, v31));
      v15 = vorrq_s8(vorrq_s8(v15, vcgtq_f32(v30, v13)), vcgtq_f32(v14, v30));
      v11 = vorrq_s8(vorrq_s8(v11, vcgtq_f32(v29, v13)), vcgtq_f32(v14, v29));
      v17 = vorrq_s8(vorrq_s8(v17, vcgtq_f32(v26, v13)), vcgtq_f32(v14, v26));
      v18 = vorrq_s8(vorrq_s8(v18, vcgtq_f32(v25, v13)), vcgtq_f32(v14, v25));
      v19 = vorrq_s8(vorrq_s8(v19, vcgtq_f32(v24, v13)), vcgtq_f32(v14, v24));
      a2 -= 64;
      v20 = vorrq_s8(vorrq_s8(v20, vcgtq_f32(v23, v13)), vcgtq_f32(v14, v23));
    }

    while (a2 > 0x3F);
    a6 = vorrq_s8(vorrq_s8(v11, v17), vorrq_s8(v15, v19));
    a4 = vorrq_s8(a6, vorrq_s8(vorrq_s8(v12, v18), vorrq_s8(v16, v20)));
    a4.i8[0] = vmaxvq_u8(a4);
    if (a4.i32[0])
    {
      return 0;
    }
  }

  if (!a2)
  {
    return 1;
  }

  if (a2 >= 0x20)
  {
    v33 = a1[1];
    v34 = vcvtq_f32_f16(*a1->i8);
    v35 = vcvt_hight_f32_f16(*a1);
    v36 = vcvtq_f32_f16(*v33.i8);
    a6 = vcvt_hight_f32_f16(v33);
    v37 = vorrq_s8(vuzp1q_s8(vuzp1q_s16(vcgtq_f32(v34, *a3), vcgtq_f32(v35, *a3)), vuzp1q_s16(vcgtq_f32(v36, *a3), vcgtq_f32(a6, *a3))), vuzp1q_s8(vuzp1q_s16(vcgtq_f32(a3[1], v34), vcgtq_f32(a3[1], v35)), vuzp1q_s16(vcgtq_f32(a3[1], v36), vcgtq_f32(a3[1], a6))));
    v38 = vzip1_s8(*v37.i8, *v37.i8);
    a6.i64[0] = vextq_s8(v37, v37, 8uLL).u64[0];
    *v35.f32 = vzip1_s8(*a6.f32, *v37.i8);
    *v37.i8 = vzip2_s8(*v37.i8, *v37.i8);
    *a6.f32 = vzip2_s8(*a6.f32, *v37.i8);
    a4 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vorr_s8(vorr_s8(v38, *v35.f32), vorr_s8(*v37.i8, *a6.f32))), 0x1FuLL));
    a4.i8[0] = vmaxvq_u8(a4);
    if (a4.i32[0])
    {
      return 0;
    }

    a2 -= 32;
    if (!a2)
    {
      return 1;
    }

    a1 += 2;
  }

  if (a2 < 0x10)
  {
    goto LABEL_14;
  }

  v39 = a3[1];
  v40 = vcvtq_f32_f16(*a1->i8);
  v41 = vcvt_hight_f32_f16(*a1);
  v42 = vuzp1q_s16(vcgtq_f32(v40, *a3), vcgtq_f32(v41, *a3));
  a6 = vcgtq_f32(v39, v41);
  *v42.i8 = vmovn_s16(vorrq_s8(v42, vuzp1q_s16(vcgtq_f32(v39, v40), a6)));
  a4 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vorr_s8(vzip1_s8(*v42.i8, *v42.i8), vzip2_s8(*v42.i8, *v42.i8))), 0x1FuLL));
  a4.i8[0] = vmaxvq_u8(a4);
  if (a4.i32[0])
  {
    return 0;
  }

  a2 -= 16;
  if (!a2)
  {
    return 1;
  }

  ++a1;
LABEL_14:
  if (a2 < 8)
  {
    goto LABEL_18;
  }

  a6 = vcvtq_f32_f16(*a1->i8);
  a4 = vorrq_s8(vcgtq_f32(a6, *a3), vcgtq_f32(a3[1], a6));
  a4.i8[0] = vmaxvq_u8(a4);
  if (a4.i32[0])
  {
    return 0;
  }

  a2 -= 8;
  if (!a2)
  {
    return 1;
  }

  a1 = (a1 + 8);
LABEL_18:
  if (a2 >= 4)
  {
    v43 = a1->i32[0];
    a1 = (a1 + 4);
    a6.i32[0] = v43;
    v44 = vcvtq_f32_f16(*a6.f32).u64[0];
    *a4.i8 = vorr_s8(vcgt_f32(v44, *a3->f32), vcgt_f32(*a3[1].f32, v44));
    a4.i8[0] = vmaxvq_u8(a4);
    if (a4.i32[0])
    {
      return 0;
    }

    a2 -= 4;
  }

  if (!a2)
  {
    return 1;
  }

  if (a2 != 2)
  {
    _CGHandleAssert("operator()", 336, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/CGBlit/Functions/CGBufferIsConstantValue.h", "size == 2", "size = %lu", a9, a10, a11, a2);
  }

  _H0 = a1->i16[0];
  __asm { FCVT            S0, H0 }

  v52 = a3->f32[0] < _S0;
  if (a3[1].f32[0] > _S0)
  {
    v52 = 1;
  }

  v53 = v52 << 31 >> 31;
  LOBYTE(v53) = vmaxvq_u8(v53);
  return v53 == 0;
}

BOOL CGBlitInternal::cgsBufferIsConstantValue_internal::TestLimitsRow<unsigned short>(uint16x8_t *a1, unint64_t a2, uint16x8_t *a3, uint8x16_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a2 >= 0x40)
  {
    v9 = *a3;
    v10 = a3[1];
    v11 = 0uLL;
    v12 = 0uLL;
    v13 = 0uLL;
    v14 = 0uLL;
    do
    {
      v16 = a1[2];
      v15 = a1[3];
      v17 = *a1;
      v18 = a1[1];
      a1 += 4;
      v12 = vorrq_s8(vorrq_s8(v12, vcgtq_u16(v18, v9)), vcgtq_u16(v10, v18));
      v11 = vorrq_s8(vorrq_s8(v11, vcgtq_u16(v17, v9)), vcgtq_u16(v10, v17));
      v13 = vorrq_s8(vorrq_s8(v13, vcgtq_u16(v16, v9)), vcgtq_u16(v10, v16));
      v14 = vorrq_s8(vorrq_s8(v14, vcgtq_u16(v15, v9)), vcgtq_u16(v10, v15));
      a2 -= 64;
    }

    while (a2 > 0x3F);
    a4 = vorrq_s8(vorrq_s8(v11, v13), vorrq_s8(v12, v14));
    a4.i8[0] = vmaxvq_u8(a4);
    if (a4.i32[0])
    {
      return 0;
    }
  }

  if (!a2)
  {
    return 1;
  }

  if (a2 >= 0x20)
  {
    a4 = vorrq_s8(vcltzq_s16(vshlq_n_s16(vmovl_u8(vorr_s8(vmovn_s16(vcgtq_u16(*a1, *a3)), vmovn_s16(vcgtq_u16(a3[1], *a1)))), 0xFuLL)), vorrq_s8(vcgtq_u16(a1[1], *a3), vcgtq_u16(a3[1], a1[1])));
    a4.i8[0] = vmaxvq_u8(a4);
    if (a4.i32[0])
    {
      return 0;
    }

    a2 -= 32;
    if (!a2)
    {
      return 1;
    }

    a1 += 2;
  }

  if (a2 < 0x10)
  {
    goto LABEL_14;
  }

  a4 = vorrq_s8(vcgtq_u16(*a1, *a3), vcgtq_u16(a3[1], *a1));
  a4.i8[0] = vmaxvq_u8(a4);
  if (a4.i32[0])
  {
    return 0;
  }

  a2 -= 16;
  if (!a2)
  {
    return 1;
  }

  ++a1;
LABEL_14:
  if (a2 < 8)
  {
    goto LABEL_18;
  }

  *a4.i8 = vorr_s8(vcgt_u16(*a3[1].i8, *a1->i8), vcgt_u16(*a1->i8, *a3->i8));
  a4.i8[0] = vmaxvq_u8(a4);
  if (a4.i32[0])
  {
    return 0;
  }

  a2 -= 8;
  if (!a2)
  {
    return 1;
  }

  a1 = (a1 + 8);
LABEL_18:
  if (a2 >= 4)
  {
    v19 = a3[1];
    v20.i32[0] = a3->u16[0];
    v20.i32[1] = HIWORD(a3->u32[0]);
    v21.i32[0] = v19.u16[0];
    v21.i32[1] = v19.u16[1];
    v22.i32[0] = a1->u16[0];
    v22.i32[1] = a1->u16[1];
    v23 = vorr_s8(vcgt_u32(vand_s8(v21, 0xFFFF0000FFFFLL), v22), vcgt_u32(v22, vand_s8(v20, 0xFFFF0000FFFFLL)));
    HIWORD(v30) = v23.i16[2];
    LOWORD(v30) = v23.i16[0];
    v23.i32[0] = v30;
    v24 = vmovl_u8(v23);
    v24.i8[1] = v24.i8[2];
    v24.i8[2] = v24.i8[4];
    v24.i8[3] = v24.i8[6];
    v24.i8[0] = vmaxvq_u8(v24.u32[0]);
    if (v24.i32[0])
    {
      return 0;
    }

    a1 = (a1 + 4);
    a2 -= 4;
  }

  if (!a2)
  {
    return 1;
  }

  if (a2 != 2)
  {
    _CGHandleAssert("operator()", 308, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/CGBlit/Functions/CGBufferIsConstantValue.h", "size == vectorSize", "size %lu did not match vectorSize (%lu)", a7, a8, a9, a2);
  }

  v26 = a1->u16[0];
  v28 = v26 < *&a3[1] || v26 > a3->u16[0];
  v29 = v28 << 31 >> 31;
  LOBYTE(v29) = vmaxvq_u8(((v28 << 15) >> 15));
  return v29 == 0;
}

BOOL CGBlitInternal::cgsBufferIsConstantValue_internal::TestLimitsRow<unsigned char>(uint8x16_t *a1, unint64_t a2, uint8x16_t *a3, uint8x16_t a4, double a5, uint8x16_t a6)
{
  if (a2 >= 0x40)
  {
    v6 = *a3;
    a6 = a3[1];
    v7 = 0uLL;
    v8 = 0uLL;
    v9 = 0uLL;
    v10 = 0uLL;
    do
    {
      v11 = *a1;
      v12 = a1[1];
      v14 = a1[2];
      v13 = a1[3];
      a1 += 4;
      v9 = vorrq_s8(v9, vorrq_s8(vcgtq_u8(a6, v14), vcgtq_u8(v14, v6)));
      v8 = vorrq_s8(v8, vorrq_s8(vcgtq_u8(a6, v12), vcgtq_u8(v12, v6)));
      v7 = vorrq_s8(v7, vorrq_s8(vcgtq_u8(a6, v11), vcgtq_u8(v11, v6)));
      v10 = vorrq_s8(v10, vorrq_s8(vcgtq_u8(a6, v13), vcgtq_u8(v13, v6)));
      a2 -= 64;
    }

    while (a2 > 0x3F);
    a4 = vorrq_s8(vorrq_s8(v7, v9), vorrq_s8(v8, v10));
    a4.i8[0] = vmaxvq_u8(a4);
    if (a4.i32[0])
    {
      return 0;
    }
  }

  if (!a2)
  {
    return 1;
  }

  if (a2 >= 0x20)
  {
    a6 = a1[1];
    a4 = vorrq_s8(vorrq_s8(vcgtq_u8(*a1, *a3), vcgtq_u8(a3[1], *a1)), vorrq_s8(vcgtq_u8(a6, *a3), vcgtq_u8(a3[1], a6)));
    a4.i8[0] = vmaxvq_u8(a4);
    if (a4.i32[0])
    {
      return 0;
    }

    a2 -= 32;
    if (!a2)
    {
      return 1;
    }

    a1 += 2;
  }

  if (a2 >= 0x10)
  {
    a6 = *a1;
    a4 = vorrq_s8(vcgtq_u8(*a1, *a3), vcgtq_u8(a3[1], *a1));
    a4.i8[0] = vmaxvq_u8(a4);
    if (a4.i32[0])
    {
      return 0;
    }

    a2 -= 16;
    if (!a2)
    {
      return 1;
    }

    ++a1;
  }

  if (a2 >= 8)
  {
    a6.i64[0] = a1->i64[0];
    *a4.i8 = vorr_s8(vcgt_u8(*a1->i8, *a3->i8), vcgt_u8(*a3[1].i8, *a1->i8));
    a4.i8[0] = vmaxvq_u8(a4);
    if (a4.i32[0])
    {
      return 0;
    }

    a2 -= 8;
    if (!a2)
    {
      return 1;
    }

    a1 = (a1 + 8);
  }

  if (a2 < 4)
  {
    goto LABEL_21;
  }

  v15 = *&vzip1_s8(*a3->i8, *a3->i8) & 0xFF00FF00FF00FFLL;
  v16 = a1->i32[0];
  a1 = (a1 + 4);
  a6.i32[0] = v16;
  v17 = vmovl_u8(*a6.i8).u64[0];
  v18 = vorr_s8(vcgt_u16(v17, v15), vcgt_u16((*&vzip1_s8(*a3[1].i8, v15) & 0xFF00FF00FF00FFLL), v17));
  v18.i8[1] = v18.i8[2];
  v18.i8[2] = v18.i8[4];
  v18.i8[3] = v18.i8[6];
  v18.i8[0] = vmaxvq_u8(v18.u32[0]);
  if (v18.i32[0])
  {
    return 0;
  }

  a2 -= 4;
LABEL_21:
  if (!a2)
  {
    return 1;
  }

  if (a2 != 1)
  {
    v19 = *a3;
    v20 = a3[1];
    v26.i32[0] = a3->u8[0];
    v26.i32[1] = HIBYTE(a3->u16[0]);
    v27.i32[0] = v20.u8[0];
    v27.i32[1] = v20.u8[1];
    v28 = vand_s8(v27, 0xFF000000FFLL);
    v27.i32[0] = a1->u8[0];
    v27.i32[1] = a1->u8[1];
    v29 = vorr_s8(vcgt_u32(v27, vand_s8(v26, 0xFF000000FFLL)), vcgt_u32(v28, v27));
    v30 = v29.u8[0];
    BYTE1(v30) = v29.i8[4];
    v29.i8[0] = vmaxvq_u8(v30);
    if (v29.i32[0])
    {
      return 0;
    }

    if (a2 != 2)
    {
      a1 = (a1 + 2);
      goto LABEL_24;
    }

    return 1;
  }

  v19 = *a3;
  v20 = a3[1];
LABEL_24:
  v21 = a1->u8[0];
  v23 = v21 > v19.u8[0] || v21 < v20.u8[0];
  v24 = (v23 << 31 >> 31);
  LOBYTE(v24) = vmaxvq_u8((v23 << 31 >> 31));
  return v24 == 0;
}